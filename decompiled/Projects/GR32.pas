//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit GR32;

interface

uses
  SysUtils, Classes, GR32_Image, Graphics, GR32;

type
  TArrayOfColor32 = array of ?;
//elSize = 4
//varType equivalent: varInteger;
  TArrayOfInteger = array of ?;
//elSize = 4
//varType equivalent: varInteger;
  TDrawMode = (dmOpaque, dmBlend, dmCustom, dmTransparent);
  TCombineMode = (cmBlend, cmMerge);
  TWrapMode = (wmClamp, wmRepeat, wmMirror);
  TNotifiablePersistent = class(TPersistent)
  public
    .:dword;//f4
    f8:dword;//f8
    fA:word;//fA
    fC:TImage32;//fC
    procedure vC; virtual;//vC//0051E1F4
    procedure v10; virtual;//v10//0051E1E4
    procedure v14; virtual;//v14//0051E220
  end;
  TThreadPersistent = class(TNotifiablePersistent)
  public
    //.:?;//f10
    destructor Destroy; virtual;//0051E300
    constructor Create; virtual;//v18//0051E2BC
  end;
  TCustomMap = class(TThreadPersistent)
  public
    f30:Integer;//f30
    f34:Single;//f34
    //f38:?;//f38
    f3A:word;//f3A
    f3C:TCustomImage32;//f3C
    //procedure v1C(?:?; ?:?; ?:?; ?:?); virtual;//v1C//0051E388
    procedure v20; virtual;//v20//0051E3B0
    //function v24:?; virtual;//v24//0051E3C8
    procedure v28; virtual;//v28//0051E3F4
    //function v2C(?:?; ?:?):?; virtual;//v2C//0051E43C
  end;
  TPixelCombineEvent = procedure(F:TColor32; var B:TColor32; M:TColor32) of object;;
  TAreaChangedEvent = procedure(Sender:TObject; const Area:TRect; const Info:Cardinal) of object;;
  TBitmap32 = class(TCustomMap)
  public
    f40:dword;//f40
    f44:dword;//f44
    DrawMode:TDrawMode;//f79
    CombineMode:TCombineMode;//f7A
    WrapMode:TWrapMode;//f7B
    f7C:TFont;//f7C
    f80:HBITMAP;//f80
    f84:HDC;//f84
    //f88:?;//f88
    MasterAlpha:Cardinal;//fB4
    OuterColor:TColor32;//fB8
    fBC:dword;//fBC
    fC4:TArrayOfColor32;//fC4
    fC8:dword;//fC8
    OnHandleChanged:TNotifyEvent;//fD0
    fD2:word;//fD2
    fD4:dword;//fD4
    OnPixelCombine:TPixelCombineEvent;//fD8
    OnAreaChanged:TAreaChangedEvent;//fE0
    fE2:word;//fE2
    fE4:TCustomPaintBox32;//fE4
    fF0:byte;//fF0
    Resampler:TCustomResampler;//fF4
    fF8:dword;//fF8
    destructor Destroy; virtual;//0051E5E8
    //procedure v0(?:?); virtual;//v0//0051F2F0
    procedure DefineProperties(Filer:TFiler); virtual;//v4//005223DC
    //procedure v8(?:?); virtual;//v8//0051EB98
    procedure vC; virtual;//vC//005230BC
    constructor Create; virtual;//v18//0051E4E0
    //procedure v1C(?:?; ?:?; ?:?; ?:?); virtual;//v1C//0051E6CC
    procedure v20; virtual;//v20//0051EA00
    //function v24:?; virtual;//v24//0051E948
    //procedure v30(?:?); virtual;//v30//0051F144
    //procedure v34(?:?); virtual;//v34//0051F194
    procedure v38; virtual;//v38//0051E684
    //procedure v3C(?:?); virtual;//v3C//00522428
    //procedure v40(?:?); virtual;//v40//005224B4
    //procedure v44(?:?; ?:?); virtual;//v44//00523128
    procedure SetCombineMode(Value:TCombineMode);//005226AC
    procedure SetDrawMode(Value:TDrawMode);//005226D8
    procedure SetWrapMode(Value:TWrapMode);//00522704
    procedure SetMasterAlpha(Value:Cardinal);//00522730
    procedure SetResampler(Value:TCustomResampler);//005232DC
    //procedure GetResamplerClassName(?:?);//00523330
    procedure SetResamplerClassName(Value:String);//00523368
  end;
  TCustomSampler = class(TNotifiablePersistent)
  public
    //function v18(?:?; ?:?):?; virtual;//v18//00523420
    //function v1C(?:?; ?:?):?; virtual;//v1C//00523450
    //function v20(?:?; ?:?):?; virtual;//v20//00523498
    procedure v24; virtual;//v24//005234CC
    procedure v28; virtual;//v28//005234D8
    //function v2C:?; virtual;//v2C//005234E4
    //procedure v30(?:?); virtual;//v30//005234F8
  end;
  TCustomResampler = class(TCustomSampler)
  public
    procedure v34; virtual; abstract;//v34//00403328
    procedure v38; virtual; abstract;//v38//00403328
  end;
    //function sub_0051DBDC(?:TColor):?;//0051DBDC
    //function sub_0051DC10(?:?):?;//0051DC10
    //function sub_0051DC34(?:?):?;//0051DC34
    //procedure sub_0051DC50(?:?; ?:?; ?:dword; ?:?; ?:?);//0051DC50
    //procedure sub_0051DC88(?:?; ?:?; ?:?);//0051DC88
    //procedure sub_0051DDE8(?:?; ?:?; ?:?);//0051DDE8
    //procedure sub_0051DF10(?:?; ?:?; ?:?; ?:?; ?:?);//0051DF10
    //procedure sub_0051DF48(?:?; ?:?);//0051DF48
    //procedure sub_0051DF94(?:?; ?:?);//0051DF94
    //function sub_0051DFD8(?:?; ?:?; ?:?):?;//0051DFD8
    //function sub_0051E0C4(?:?; ?:?):?;//0051E0C4
    //procedure sub_0051E0EC(?:?; ?:?; ?:?);//0051E0EC
    //procedure sub_0051E124(?:?; ?:Integer; ?:Integer);//0051E124
    //function sub_0051E15C(?:?):?;//0051E15C
    //procedure sub_0051E190(?:?);//0051E190
    procedure sub_0051E1E4;//0051E1E4
    procedure sub_0051E1F4;//0051E1F4
    procedure sub_0051E220;//0051E220
    constructor Create;//0051E2BC
    destructor Destroy;//0051E300
    procedure sub_0051E340(?:TBitmap32);//0051E340
    procedure sub_0051E364(?:TBitmap32);//0051E364
    //procedure sub_0051E388(?:?; ?:?; ?:?; ?:?);//0051E388
    procedure sub_0051E3B0;//0051E3B0
    //function sub_0051E3C8:?;//0051E3C8
    procedure sub_0051E3F4;//0051E3F4
    procedure sub_0051E418(?:TBitmap32; ?:Integer);//0051E418
    //function sub_0051E43C(?:?; ?:?):?;//0051E43C
    procedure sub_0051E4BC(?:TBitmap32; ?:Integer);//0051E4BC
    constructor Create;//0051E4E0
    destructor Destroy;//0051E5E8
    procedure sub_0051E684;//0051E684
    //procedure sub_0051E6CC(?:?; ?:?; ?:?; ?:?);//0051E6CC
    //function sub_0051E948:?;//0051E948
    //procedure sub_0051E97C(?:TBitmap32; ?:?);//0051E97C
    procedure sub_0051EA00;//0051EA00
    //procedure sub_0051EA18(?:?; ?:?);//0051EA18
    //procedure sub_0051EB98(?:?);//0051EB98
    //procedure sub_0051F144(?:?);//0051F144
    //procedure sub_0051F194(?:?);//0051F194
    //procedure sub_0051F278(?:TBitmap; ?:?);//0051F278
    //procedure sub_0051F2F0(?:?);//0051F2F0
    //function sub_0051F3B0(?:?):?;//0051F3B0
    //procedure sub_0051F40C(?:?; ?:?);//0051F40C
    procedure sub_0051F424(?:TBitmap32);//0051F424
    //procedure sub_0051F458(?:?; ?:?; ?:?; ?:?);//0051F458
    //function sub_0051F4B4(?:dword; ?:Int64):?;//0051F4B4
    //function sub_0051F4DC(?:dword; ?:?; ?:?):?;//0051F4DC
    //function sub_0051F50C(?:?; ?:?; ?:?):?;//0051F50C
    //function sub_0051F574(?:dword; ?:?; ?:?):?;//0051F574
    //procedure sub_0051F5A4(?:TBitmap32; ?:?; ?:?; ?:?);//0051F5A4
    //procedure sub_0051F5F8(?:TBitmap32; ?:?; ?:?);//0051F5F8
    //procedure sub_0051F650(?:?; ?:?; ?:?; ?:?);//0051F650
    procedure sub_0051F6BC(?:TBitmap32);//0051F6BC
    //procedure sub_0051F6D0(?:TBitmap32; ?:?);//0051F6D0
    //procedure sub_0051F854(?:?; ?:?; ?:?; ?:?);//0051F854
    //procedure sub_0051F8D0(?:?; ?:?; ?:?; ?:?);//0051F8D0
    //procedure sub_0051FAF0(?:?; ?:?; ?:?; ?:?);//0051FAF0
    //procedure sub_0051FFDC(?:?; ?:?; ?:?; ?:?);//0051FFDC
    //function sub_00520024(?:?; ?:?; ?:?):?;//00520024
    //function sub_005200A4(?:?; ?:?; ?:?):?;//005200A4
    //function sub_00520184(?:?; ?:?; ?:?):?;//00520184
    //function sub_005201C0(?:?; ?:?; ?:?):?;//005201C0
    //function sub_005201FC(?:?; ?:?; ?:?):?;//005201FC
    //function sub_0052026C(?:?; ?:?; ?:?):?;//0052026C
    //procedure sub_00520390(?:?; ?:?; ?:?; ?:?; ?:?);//00520390
    //procedure sub_005203D0(?:?; ?:?; ?:?; ?:?; ?:?);//005203D0
    //procedure sub_0052048C(?:?; ?:?; ?:?; ?:?; ?:?);//0052048C
    //procedure sub_005204F8(?:?; ?:?; ?:?; ?:?; ?:?);//005204F8
    //procedure sub_005205B4(?:?; ?:?; ?:?; ?:?; ?:?);//005205B4
    //procedure sub_0052069C(?:?; ?:?; ?:?; ?:?; ?:?);//0052069C
    //procedure sub_00520758(?:?; ?:?; ?:?; ?:?; ?:?);//00520758
    //procedure sub_005207C4(?:?; ?:?; ?:?; ?:?; ?:?);//005207C4
    //procedure sub_00520880(?:TBitmap32; ?:?; ?:Integer; ?:?; ?:?; ?:?; ?:?);//00520880
    //procedure sub_00520D70(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);//00520D70
    //procedure sub_005212A8(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);//005212A8
    //procedure sub_00521448(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);//00521448
    //procedure sub_005216FC(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);//005216FC
    //procedure sub_00521EA4(?:TBitmap32; ?:?; ?:?);//00521EA4
    //procedure sub_00521ED0(?:TBitmap32; ?:?; ?:?);//00521ED0
    //procedure sub_00521F2C(?:?; ?:?; ?:?);//00521F2C
    //procedure sub_00521F88(?:?; ?:?; ?:?);//00521F88
    //procedure sub_00521FB8(?:?; ?:?; ?:?);//00521FB8
    //procedure sub_00522014(?:?; ?:?; ?:?);//00522014
    //procedure sub_0052203C(?:TBitmap32; ?:?; ?:?; ?:?; ?:?; ?:?);//0052203C
    //procedure sub_005220C4(?:?; ?:?; ?:?; ?:?; ?:?; ?:?);//005220C4
    //procedure sub_005221C8(?:?; ?:TMemoryStream);//005221C8
    //function sub_00522228(?:?; ?:?):?;//00522228
    //function sub_00522378(?:?):?;//00522378
    procedure DefineProperties(Filer:TFiler);//005223DC
    //procedure sub_00522428(?:?);//00522428
    //procedure sub_005224B4(?:?);//005224B4
    //procedure sub_0052250C(?:TBitmap32; ?:?);//0052250C
    //procedure sub_0052256C(?:TBitmap32; ?:?);//0052256C
    procedure sub_00522598(?:TBitmap32; ?:TBitmap32);//00522598
    //procedure sub_005225E0(?:?);//005225E0
    //procedure sub_00522764(?:?; ?:AnsiString; ?:?);//00522764
    //procedure sub_0052285C(?:TBitmap32; ?:?; ?:?; ?:?);//0052285C
    //procedure sub_00522934(?:?; ?:TBitmap32; ?:TBitmap32; ?:?; ?:?);//00522934
    //procedure sub_00522A4C(?:?; ?:TBitmap32; ?:?);//00522A4C
    //procedure sub_00522AB8(?:?; ?:?);//00522AB8
    //procedure sub_00522C30(?:TBitmap32; ?:?; ?:?; ?:?; ?:?; ?:?);//00522C30
    //procedure sub_00522F30(?:TBitmap32; ?:?);//00522F30
    //procedure sub_00522F68(?:TBitmap32; ?:?);//00522F68
    procedure sub_00523018(?:TBitmap32);//00523018
    //procedure sub_0052303C(?:dword; ?:?; ?:?);//0052303C
    procedure sub_00523088(?:dword);//00523088
    procedure sub_005230BC;//005230BC
    //procedure sub_00523128(?:?; ?:?);//00523128
    //function sub_0052318C(?:?; ?:?; ?:?; ?:?):?;//0052318C
    //procedure sub_0052321C(?:?; ?:?; ?:?; ?:?);//0052321C
    procedure sub_00523294;//00523294
    //function sub_00523420(?:?; ?:?):?;//00523420
    //function sub_00523450(?:?; ?:?):?;//00523450
    //function sub_00523498(?:?; ?:?):?;//00523498
    procedure sub_005234CC;//005234CC
    procedure sub_005234D8;//005234D8
    //function sub_005234E4:?;//005234E4
    //procedure sub_005234F8(?:?);//005234F8

implementation

//0051DBDC
{*function sub_0051DBDC(?:TColor):?;
begin
 0051DBDC    push        ebp
 0051DBDD    mov         ebp,esp
 0051DBDF    add         esp,0FFFFFFF8
 0051DBE2    mov         dword ptr [ebp-4],eax
 0051DBE5    cmp         dword ptr [ebp-4],0
>0051DBE9    jge         0051DBFC
 0051DBEB    mov         eax,dword ptr [ebp-4]
 0051DBEE    and         eax,0FF
 0051DBF3    push        eax
 0051DBF4    call        user32.GetSysColor
 0051DBF9    mov         dword ptr [ebp-4],eax
 0051DBFC    mov         eax,dword ptr [ebp-4]
 0051DBFF    bswap       eax
 0051DC01    mov         al,0FF
 0051DC03    ror         eax,8
 0051DC06    mov         dword ptr [ebp-8],eax
 0051DC09    mov         eax,dword ptr [ebp-8]
 0051DC0C    pop         ecx
 0051DC0D    pop         ecx
 0051DC0E    pop         ebp
 0051DC0F    ret
end;*}

//0051DC10
{*function sub_0051DC10(?:?):?;
begin
 0051DC10    push        ebp
 0051DC11    mov         ebp,esp
 0051DC13    push        ecx
 0051DC14    fld         dword ptr [ebp+8]
 0051DC17    fmul        dword ptr ds:[51DC30];65536:Single
 0051DC1D    call        @ROUND
 0051DC22    mov         dword ptr [ebp-4],eax
 0051DC25    mov         eax,dword ptr [ebp-4]
 0051DC28    pop         ecx
 0051DC29    pop         ebp
 0051DC2A    ret         4
end;*}

//0051DC34
{*function sub_0051DC34(?:?):?;
begin
 0051DC34    push        ebp
 0051DC35    mov         ebp,esp
 0051DC37    add         esp,0FFFFFFF8
 0051DC3A    mov         dword ptr [ebp-4],eax
 0051DC3D    mov         eax,dword ptr [ebp-4]
 0051DC40    shl         eax,10
 0051DC43    mov         dword ptr [ebp-8],eax
 0051DC46    mov         eax,dword ptr [ebp-8]
 0051DC49    pop         ecx
 0051DC4A    pop         ecx
 0051DC4B    pop         ebp
 0051DC4C    ret
end;*}

//0051DC50
{*procedure sub_0051DC50(?:?; ?:?; ?:dword; ?:?; ?:?);
begin
 0051DC50    push        ebp
 0051DC51    mov         ebp,esp
 0051DC53    add         esp,0FFFFFFF4
 0051DC56    mov         dword ptr [ebp-0C],ecx
 0051DC59    mov         dword ptr [ebp-8],edx
 0051DC5C    mov         dword ptr [ebp-4],eax
 0051DC5F    mov         eax,dword ptr [ebp+8]
 0051DC62    mov         edx,dword ptr [ebp-4]
 0051DC65    mov         dword ptr [eax],edx
 0051DC67    mov         eax,dword ptr [ebp+8]
 0051DC6A    mov         edx,dword ptr [ebp-8]
 0051DC6D    mov         dword ptr [eax+4],edx
 0051DC70    mov         eax,dword ptr [ebp+8]
 0051DC73    mov         edx,dword ptr [ebp-0C]
 0051DC76    mov         dword ptr [eax+8],edx
 0051DC79    mov         eax,dword ptr [ebp+8]
 0051DC7C    mov         edx,dword ptr [ebp+0C]
 0051DC7F    mov         dword ptr [eax+0C],edx
 0051DC82    mov         esp,ebp
 0051DC84    pop         ebp
 0051DC85    ret         8
end;*}

//0051DC88
{*procedure sub_0051DC88(?:?; ?:?; ?:?);
begin
 0051DC88    push        ebp
 0051DC89    mov         ebp,esp
 0051DC8B    add         esp,0FFFFFFF4
 0051DC8E    mov         dword ptr [ebp-0C],ecx
 0051DC91    mov         byte ptr [ebp-5],dl
 0051DC94    mov         dword ptr [ebp-4],eax
 0051DC97    mov         al,byte ptr [ebp-5]
 0051DC9A    sub         al,1
>0051DC9C    jb          0051DCAD
>0051DC9E    je          0051DD86
 0051DCA4    dec         al
>0051DCA6    je          0051DCF4
>0051DCA8    jmp         0051DDE4
 0051DCAD    mov         eax,dword ptr [ebp-4]
 0051DCB0    fld         dword ptr [eax]
 0051DCB2    call        @ROUND
 0051DCB7    mov         edx,dword ptr [ebp-0C]
 0051DCBA    mov         dword ptr [edx],eax
 0051DCBC    mov         eax,dword ptr [ebp-4]
 0051DCBF    fld         dword ptr [eax+4]
 0051DCC2    call        @ROUND
 0051DCC7    mov         edx,dword ptr [ebp-0C]
 0051DCCA    mov         dword ptr [edx+4],eax
 0051DCCD    mov         eax,dword ptr [ebp-4]
 0051DCD0    fld         dword ptr [eax+8]
 0051DCD3    call        @ROUND
 0051DCD8    mov         edx,dword ptr [ebp-0C]
 0051DCDB    mov         dword ptr [edx+8],eax
 0051DCDE    mov         eax,dword ptr [ebp-4]
 0051DCE1    fld         dword ptr [eax+0C]
 0051DCE4    call        @ROUND
 0051DCE9    mov         edx,dword ptr [ebp-0C]
 0051DCEC    mov         dword ptr [edx+0C],eax
>0051DCEF    jmp         0051DDE4
 0051DCF4    mov         eax,dword ptr [ebp-4]
 0051DCF7    fld         dword ptr [eax]
 0051DCF9    add         esp,0FFFFFFF4
 0051DCFC    fstp        tbyte ptr [esp]
 0051DCFF    wait
 0051DD00    call        0043723C
 0051DD05    mov         edx,dword ptr [ebp-0C]
 0051DD08    mov         dword ptr [edx],eax
 0051DD0A    mov         eax,dword ptr [ebp-4]
 0051DD0D    fld         dword ptr [eax+4]
 0051DD10    add         esp,0FFFFFFF4
 0051DD13    fstp        tbyte ptr [esp]
 0051DD16    wait
 0051DD17    call        0043723C
 0051DD1C    mov         edx,dword ptr [ebp-0C]
 0051DD1F    mov         dword ptr [edx+4],eax
 0051DD22    mov         eax,dword ptr [ebp-4]
 0051DD25    fld         dword ptr [eax+8]
 0051DD28    add         esp,0FFFFFFF4
 0051DD2B    fstp        tbyte ptr [esp]
 0051DD2E    wait
 0051DD2F    call        0043723C
 0051DD34    mov         edx,dword ptr [ebp-0C]
 0051DD37    mov         dword ptr [edx+8],eax
 0051DD3A    mov         eax,dword ptr [ebp-4]
 0051DD3D    fld         dword ptr [eax+0C]
 0051DD40    add         esp,0FFFFFFF4
 0051DD43    fstp        tbyte ptr [esp]
 0051DD46    wait
 0051DD47    call        0043723C
 0051DD4C    mov         edx,dword ptr [ebp-0C]
 0051DD4F    mov         dword ptr [edx+0C],eax
 0051DD52    mov         eax,dword ptr [ebp-0C]
 0051DD55    mov         eax,dword ptr [eax+8]
 0051DD58    mov         edx,dword ptr [ebp-0C]
 0051DD5B    cmp         eax,dword ptr [edx]
>0051DD5D    jge         0051DD6A
 0051DD5F    mov         eax,dword ptr [ebp-0C]
 0051DD62    mov         eax,dword ptr [eax]
 0051DD64    mov         edx,dword ptr [ebp-0C]
 0051DD67    mov         dword ptr [edx+8],eax
 0051DD6A    mov         eax,dword ptr [ebp-0C]
 0051DD6D    mov         eax,dword ptr [eax+0C]
 0051DD70    mov         edx,dword ptr [ebp-0C]
 0051DD73    cmp         eax,dword ptr [edx+4]
>0051DD76    jge         0051DDE4
 0051DD78    mov         eax,dword ptr [ebp-0C]
 0051DD7B    mov         eax,dword ptr [eax+4]
 0051DD7E    mov         edx,dword ptr [ebp-0C]
 0051DD81    mov         dword ptr [edx+0C],eax
>0051DD84    jmp         0051DDE4
 0051DD86    mov         eax,dword ptr [ebp-4]
 0051DD89    fld         dword ptr [eax]
 0051DD8B    add         esp,0FFFFFFF4
 0051DD8E    fstp        tbyte ptr [esp]
 0051DD91    wait
 0051DD92    call        00437270
 0051DD97    mov         edx,dword ptr [ebp-0C]
 0051DD9A    mov         dword ptr [edx],eax
 0051DD9C    mov         eax,dword ptr [ebp-4]
 0051DD9F    fld         dword ptr [eax+4]
 0051DDA2    add         esp,0FFFFFFF4
 0051DDA5    fstp        tbyte ptr [esp]
 0051DDA8    wait
 0051DDA9    call        00437270
 0051DDAE    mov         edx,dword ptr [ebp-0C]
 0051DDB1    mov         dword ptr [edx+4],eax
 0051DDB4    mov         eax,dword ptr [ebp-4]
 0051DDB7    fld         dword ptr [eax+8]
 0051DDBA    add         esp,0FFFFFFF4
 0051DDBD    fstp        tbyte ptr [esp]
 0051DDC0    wait
 0051DDC1    call        0043723C
 0051DDC6    mov         edx,dword ptr [ebp-0C]
 0051DDC9    mov         dword ptr [edx+8],eax
 0051DDCC    mov         eax,dword ptr [ebp-4]
 0051DDCF    fld         dword ptr [eax+0C]
 0051DDD2    add         esp,0FFFFFFF4
 0051DDD5    fstp        tbyte ptr [esp]
 0051DDD8    wait
 0051DDD9    call        0043723C
 0051DDDE    mov         edx,dword ptr [ebp-0C]
 0051DDE1    mov         dword ptr [edx+0C],eax
 0051DDE4    mov         esp,ebp
 0051DDE6    pop         ebp
 0051DDE7    ret
end;*}

//0051DDE8
{*procedure sub_0051DDE8(?:?; ?:?; ?:?);
begin
 0051DDE8    push        ebp
 0051DDE9    mov         ebp,esp
 0051DDEB    add         esp,0FFFFFFF4
 0051DDEE    mov         dword ptr [ebp-0C],ecx
 0051DDF1    mov         byte ptr [ebp-5],dl
 0051DDF4    mov         dword ptr [ebp-4],eax
 0051DDF7    mov         al,byte ptr [ebp-5]
 0051DDFA    sub         al,1
>0051DDFC    jb          0051DE0D
>0051DDFE    je          0051DECA
 0051DE04    dec         al
>0051DE06    je          0051DE54
>0051DE08    jmp         0051DF0C
 0051DE0D    mov         eax,dword ptr [ebp-4]
 0051DE10    mov         eax,dword ptr [eax]
 0051DE12    call        00513268
 0051DE17    mov         edx,dword ptr [ebp-0C]
 0051DE1A    mov         dword ptr [edx],eax
 0051DE1C    mov         eax,dword ptr [ebp-4]
 0051DE1F    mov         eax,dword ptr [eax+4]
 0051DE22    call        00513268
 0051DE27    mov         edx,dword ptr [ebp-0C]
 0051DE2A    mov         dword ptr [edx+4],eax
 0051DE2D    mov         eax,dword ptr [ebp-4]
 0051DE30    mov         eax,dword ptr [eax+8]
 0051DE33    call        00513268
 0051DE38    mov         edx,dword ptr [ebp-0C]
 0051DE3B    mov         dword ptr [edx+8],eax
 0051DE3E    mov         eax,dword ptr [ebp-4]
 0051DE41    mov         eax,dword ptr [eax+0C]
 0051DE44    call        00513268
 0051DE49    mov         edx,dword ptr [ebp-0C]
 0051DE4C    mov         dword ptr [edx+0C],eax
>0051DE4F    jmp         0051DF0C
 0051DE54    mov         eax,dword ptr [ebp-4]
 0051DE57    mov         eax,dword ptr [eax]
 0051DE59    call        0051325C
 0051DE5E    mov         edx,dword ptr [ebp-0C]
 0051DE61    mov         dword ptr [edx],eax
 0051DE63    mov         eax,dword ptr [ebp-4]
 0051DE66    mov         eax,dword ptr [eax+4]
 0051DE69    call        0051325C
 0051DE6E    mov         edx,dword ptr [ebp-0C]
 0051DE71    mov         dword ptr [edx+4],eax
 0051DE74    mov         eax,dword ptr [ebp-4]
 0051DE77    mov         eax,dword ptr [eax+8]
 0051DE7A    call        00513258
 0051DE7F    mov         edx,dword ptr [ebp-0C]
 0051DE82    mov         dword ptr [edx+8],eax
 0051DE85    mov         eax,dword ptr [ebp-4]
 0051DE88    mov         eax,dword ptr [eax+0C]
 0051DE8B    call        00513258
 0051DE90    mov         edx,dword ptr [ebp-0C]
 0051DE93    mov         dword ptr [edx+0C],eax
 0051DE96    mov         eax,dword ptr [ebp-0C]
 0051DE99    mov         eax,dword ptr [eax+8]
 0051DE9C    mov         edx,dword ptr [ebp-0C]
 0051DE9F    cmp         eax,dword ptr [edx]
>0051DEA1    jge         0051DEAE
 0051DEA3    mov         eax,dword ptr [ebp-0C]
 0051DEA6    mov         eax,dword ptr [eax]
 0051DEA8    mov         edx,dword ptr [ebp-0C]
 0051DEAB    mov         dword ptr [edx+8],eax
 0051DEAE    mov         eax,dword ptr [ebp-0C]
 0051DEB1    mov         eax,dword ptr [eax+0C]
 0051DEB4    mov         edx,dword ptr [ebp-0C]
 0051DEB7    cmp         eax,dword ptr [edx+4]
>0051DEBA    jge         0051DF0C
 0051DEBC    mov         eax,dword ptr [ebp-0C]
 0051DEBF    mov         eax,dword ptr [eax+4]
 0051DEC2    mov         edx,dword ptr [ebp-0C]
 0051DEC5    mov         dword ptr [edx+0C],eax
>0051DEC8    jmp         0051DF0C
 0051DECA    mov         eax,dword ptr [ebp-4]
 0051DECD    mov         eax,dword ptr [eax]
 0051DECF    call        00513258
 0051DED4    mov         edx,dword ptr [ebp-0C]
 0051DED7    mov         dword ptr [edx],eax
 0051DED9    mov         eax,dword ptr [ebp-4]
 0051DEDC    mov         eax,dword ptr [eax+4]
 0051DEDF    call        00513258
 0051DEE4    mov         edx,dword ptr [ebp-0C]
 0051DEE7    mov         dword ptr [edx+4],eax
 0051DEEA    mov         eax,dword ptr [ebp-4]
 0051DEED    mov         eax,dword ptr [eax+8]
 0051DEF0    call        0051325C
 0051DEF5    mov         edx,dword ptr [ebp-0C]
 0051DEF8    mov         dword ptr [edx+8],eax
 0051DEFB    mov         eax,dword ptr [ebp-4]
 0051DEFE    mov         eax,dword ptr [eax+0C]
 0051DF01    call        0051325C
 0051DF06    mov         edx,dword ptr [ebp-0C]
 0051DF09    mov         dword ptr [edx+0C],eax
 0051DF0C    mov         esp,ebp
 0051DF0E    pop         ebp
 0051DF0F    ret
end;*}

//0051DF10
{*procedure sub_0051DF10(?:?; ?:?; ?:?; ?:?; ?:?);
begin
 0051DF10    push        ebp
 0051DF11    mov         ebp,esp
 0051DF13    add         esp,0FFFFFFF4
 0051DF16    mov         dword ptr [ebp-0C],ecx
 0051DF19    mov         dword ptr [ebp-8],edx
 0051DF1C    mov         dword ptr [ebp-4],eax
 0051DF1F    mov         eax,dword ptr [ebp+8]
 0051DF22    mov         edx,dword ptr [ebp-4]
 0051DF25    mov         dword ptr [eax],edx
 0051DF27    mov         eax,dword ptr [ebp+8]
 0051DF2A    mov         edx,dword ptr [ebp-8]
 0051DF2D    mov         dword ptr [eax+4],edx
 0051DF30    mov         eax,dword ptr [ebp+8]
 0051DF33    mov         edx,dword ptr [ebp-0C]
 0051DF36    mov         dword ptr [eax+8],edx
 0051DF39    mov         eax,dword ptr [ebp+8]
 0051DF3C    mov         edx,dword ptr [ebp+0C]
 0051DF3F    mov         dword ptr [eax+0C],edx
 0051DF42    mov         esp,ebp
 0051DF44    pop         ebp
 0051DF45    ret         8
end;*}

//0051DF48
{*procedure sub_0051DF48(?:?; ?:?);
begin
 0051DF48    push        ebp
 0051DF49    mov         ebp,esp
 0051DF4B    add         esp,0FFFFFFF8
 0051DF4E    mov         dword ptr [ebp-8],edx
 0051DF51    mov         dword ptr [ebp-4],eax
 0051DF54    mov         eax,dword ptr [ebp-4]
 0051DF57    mov         eax,dword ptr [eax]
 0051DF59    shl         eax,10
 0051DF5C    mov         edx,dword ptr [ebp-8]
 0051DF5F    mov         dword ptr [edx],eax
 0051DF61    mov         eax,dword ptr [ebp-4]
 0051DF64    mov         eax,dword ptr [eax+4]
 0051DF67    shl         eax,10
 0051DF6A    mov         edx,dword ptr [ebp-8]
 0051DF6D    mov         dword ptr [edx+4],eax
 0051DF70    mov         eax,dword ptr [ebp-4]
 0051DF73    mov         eax,dword ptr [eax+8]
 0051DF76    shl         eax,10
 0051DF79    mov         edx,dword ptr [ebp-8]
 0051DF7C    mov         dword ptr [edx+8],eax
 0051DF7F    mov         eax,dword ptr [ebp-4]
 0051DF82    mov         eax,dword ptr [eax+0C]
 0051DF85    shl         eax,10
 0051DF88    mov         edx,dword ptr [ebp-8]
 0051DF8B    mov         dword ptr [edx+0C],eax
 0051DF8E    pop         ecx
 0051DF8F    pop         ecx
 0051DF90    pop         ebp
 0051DF91    ret
end;*}

//0051DF94
{*procedure sub_0051DF94(?:?; ?:?);
begin
 0051DF94    push        ebp
 0051DF95    mov         ebp,esp
 0051DF97    add         esp,0FFFFFFF8
 0051DF9A    mov         dword ptr [ebp-8],edx
 0051DF9D    mov         dword ptr [ebp-4],eax
 0051DFA0    mov         eax,dword ptr [ebp-4]
 0051DFA3    fild        dword ptr [eax]
 0051DFA5    mov         eax,dword ptr [ebp-8]
 0051DFA8    fstp        dword ptr [eax]
 0051DFAA    wait
 0051DFAB    mov         eax,dword ptr [ebp-4]
 0051DFAE    fild        dword ptr [eax+4]
 0051DFB1    mov         eax,dword ptr [ebp-8]
 0051DFB4    fstp        dword ptr [eax+4]
 0051DFB7    wait
 0051DFB8    mov         eax,dword ptr [ebp-4]
 0051DFBB    fild        dword ptr [eax+8]
 0051DFBE    mov         eax,dword ptr [ebp-8]
 0051DFC1    fstp        dword ptr [eax+8]
 0051DFC4    wait
 0051DFC5    mov         eax,dword ptr [ebp-4]
 0051DFC8    fild        dword ptr [eax+0C]
 0051DFCB    mov         eax,dword ptr [ebp-8]
 0051DFCE    fstp        dword ptr [eax+0C]
 0051DFD1    wait
 0051DFD2    pop         ecx
 0051DFD3    pop         ecx
 0051DFD4    pop         ebp
 0051DFD5    ret
end;*}

//0051DFD8
{*function sub_0051DFD8(?:?; ?:?; ?:?):?;
begin
 0051DFD8    push        ebp
 0051DFD9    mov         ebp,esp
 0051DFDB    add         esp,0FFFFFFF0
 0051DFDE    push        esi
 0051DFDF    push        edi
 0051DFE0    mov         dword ptr [ebp-0C],ecx
 0051DFE3    mov         dword ptr [ebp-8],edx
 0051DFE6    mov         dword ptr [ebp-4],eax
 0051DFE9    mov         eax,dword ptr [ebp-8]
 0051DFEC    mov         eax,dword ptr [eax]
 0051DFEE    mov         edx,dword ptr [ebp-0C]
 0051DFF1    cmp         eax,dword ptr [edx]
>0051DFF3    jl          0051E001
 0051DFF5    mov         eax,dword ptr [ebp-8]
 0051DFF8    mov         eax,dword ptr [eax]
 0051DFFA    mov         edx,dword ptr [ebp-4]
 0051DFFD    mov         dword ptr [edx],eax
>0051DFFF    jmp         0051E00B
 0051E001    mov         eax,dword ptr [ebp-0C]
 0051E004    mov         eax,dword ptr [eax]
 0051E006    mov         edx,dword ptr [ebp-4]
 0051E009    mov         dword ptr [edx],eax
 0051E00B    mov         eax,dword ptr [ebp-8]
 0051E00E    mov         eax,dword ptr [eax+8]
 0051E011    mov         edx,dword ptr [ebp-0C]
 0051E014    cmp         eax,dword ptr [edx+8]
>0051E017    jg          0051E027
 0051E019    mov         eax,dword ptr [ebp-8]
 0051E01C    mov         eax,dword ptr [eax+8]
 0051E01F    mov         edx,dword ptr [ebp-4]
 0051E022    mov         dword ptr [edx+8],eax
>0051E025    jmp         0051E033
 0051E027    mov         eax,dword ptr [ebp-0C]
 0051E02A    mov         eax,dword ptr [eax+8]
 0051E02D    mov         edx,dword ptr [ebp-4]
 0051E030    mov         dword ptr [edx+8],eax
 0051E033    mov         eax,dword ptr [ebp-8]
 0051E036    mov         eax,dword ptr [eax+4]
 0051E039    mov         edx,dword ptr [ebp-0C]
 0051E03C    cmp         eax,dword ptr [edx+4]
>0051E03F    jl          0051E04F
 0051E041    mov         eax,dword ptr [ebp-8]
 0051E044    mov         eax,dword ptr [eax+4]
 0051E047    mov         edx,dword ptr [ebp-4]
 0051E04A    mov         dword ptr [edx+4],eax
>0051E04D    jmp         0051E05B
 0051E04F    mov         eax,dword ptr [ebp-0C]
 0051E052    mov         eax,dword ptr [eax+4]
 0051E055    mov         edx,dword ptr [ebp-4]
 0051E058    mov         dword ptr [edx+4],eax
 0051E05B    mov         eax,dword ptr [ebp-8]
 0051E05E    mov         eax,dword ptr [eax+0C]
 0051E061    mov         edx,dword ptr [ebp-0C]
 0051E064    cmp         eax,dword ptr [edx+0C]
>0051E067    jg          0051E077
 0051E069    mov         eax,dword ptr [ebp-8]
 0051E06C    mov         eax,dword ptr [eax+0C]
 0051E06F    mov         edx,dword ptr [ebp-4]
 0051E072    mov         dword ptr [edx+0C],eax
>0051E075    jmp         0051E083
 0051E077    mov         eax,dword ptr [ebp-0C]
 0051E07A    mov         eax,dword ptr [eax+0C]
 0051E07D    mov         edx,dword ptr [ebp-4]
 0051E080    mov         dword ptr [edx+0C],eax
 0051E083    mov         eax,dword ptr [ebp-4]
 0051E086    mov         eax,dword ptr [eax+8]
 0051E089    mov         edx,dword ptr [ebp-4]
 0051E08C    cmp         eax,dword ptr [edx]
>0051E08E    jl          0051E09E
 0051E090    mov         eax,dword ptr [ebp-4]
 0051E093    mov         eax,dword ptr [eax+0C]
 0051E096    mov         edx,dword ptr [ebp-4]
 0051E099    cmp         eax,dword ptr [edx+4]
>0051E09C    jge         0051E0A2
 0051E09E    xor         eax,eax
>0051E0A0    jmp         0051E0A4
 0051E0A2    mov         al,1
 0051E0A4    mov         byte ptr [ebp-0D],al
 0051E0A7    cmp         byte ptr [ebp-0D],0
>0051E0AB    jne         0051E0BB
 0051E0AD    mov         eax,dword ptr [ebp-4]
 0051E0B0    mov         edi,eax
 0051E0B2    mov         esi,56D4A0
 0051E0B7    movs        dword ptr [edi],dword ptr [esi]
 0051E0B8    movs        dword ptr [edi],dword ptr [esi]
 0051E0B9    movs        dword ptr [edi],dword ptr [esi]
 0051E0BA    movs        dword ptr [edi],dword ptr [esi]
 0051E0BB    mov         al,byte ptr [ebp-0D]
 0051E0BE    pop         edi
 0051E0BF    pop         esi
 0051E0C0    mov         esp,ebp
 0051E0C2    pop         ebp
 0051E0C3    ret
end;*}

//0051E0C4
{*function sub_0051E0C4(?:?; ?:?):?;
begin
 0051E0C4    push        ebp
 0051E0C5    mov         ebp,esp
 0051E0C7    add         esp,0FFFFFFF4
 0051E0CA    mov         dword ptr [ebp-8],edx
 0051E0CD    mov         dword ptr [ebp-4],eax
 0051E0D0    mov         edx,dword ptr [ebp-8]
 0051E0D3    mov         eax,dword ptr [ebp-4]
 0051E0D6    mov         ecx,10
 0051E0DB    call        CompareMem
 0051E0E0    mov         byte ptr [ebp-9],al
 0051E0E3    mov         al,byte ptr [ebp-9]
 0051E0E6    mov         esp,ebp
 0051E0E8    pop         ebp
 0051E0E9    ret
end;*}

//0051E0EC
{*procedure sub_0051E0EC(?:?; ?:?; ?:?);
begin
 0051E0EC    push        ebp
 0051E0ED    mov         ebp,esp
 0051E0EF    add         esp,0FFFFFFF4
 0051E0F2    mov         dword ptr [ebp-0C],ecx
 0051E0F5    mov         dword ptr [ebp-8],edx
 0051E0F8    mov         dword ptr [ebp-4],eax
 0051E0FB    mov         eax,dword ptr [ebp-4]
 0051E0FE    mov         edx,dword ptr [ebp-8]
 0051E101    sub         dword ptr [eax],edx
 0051E103    mov         eax,dword ptr [ebp-4]
 0051E106    mov         edx,dword ptr [ebp-0C]
 0051E109    sub         dword ptr [eax+4],edx
 0051E10C    mov         eax,dword ptr [ebp-4]
 0051E10F    mov         edx,dword ptr [ebp-8]
 0051E112    add         dword ptr [eax+8],edx
 0051E115    mov         eax,dword ptr [ebp-4]
 0051E118    mov         edx,dword ptr [ebp-0C]
 0051E11B    add         dword ptr [eax+0C],edx
 0051E11E    mov         esp,ebp
 0051E120    pop         ebp
 0051E121    ret
end;*}

//0051E124
{*procedure sub_0051E124(?:?; ?:Integer; ?:Integer);
begin
 0051E124    push        ebp
 0051E125    mov         ebp,esp
 0051E127    add         esp,0FFFFFFF4
 0051E12A    mov         dword ptr [ebp-0C],ecx
 0051E12D    mov         dword ptr [ebp-8],edx
 0051E130    mov         dword ptr [ebp-4],eax
 0051E133    mov         eax,dword ptr [ebp-4]
 0051E136    mov         edx,dword ptr [ebp-8]
 0051E139    add         dword ptr [eax],edx
 0051E13B    mov         eax,dword ptr [ebp-4]
 0051E13E    mov         edx,dword ptr [ebp-0C]
 0051E141    add         dword ptr [eax+4],edx
 0051E144    mov         eax,dword ptr [ebp-4]
 0051E147    mov         edx,dword ptr [ebp-8]
 0051E14A    add         dword ptr [eax+8],edx
 0051E14D    mov         eax,dword ptr [ebp-4]
 0051E150    mov         edx,dword ptr [ebp-0C]
 0051E153    add         dword ptr [eax+0C],edx
 0051E156    mov         esp,ebp
 0051E158    pop         ebp
 0051E159    ret
end;*}

//0051E15C
{*function sub_0051E15C(?:?):?;
begin
 0051E15C    push        ebp
 0051E15D    mov         ebp,esp
 0051E15F    add         esp,0FFFFFFF8
 0051E162    mov         dword ptr [ebp-4],eax
 0051E165    mov         eax,dword ptr [ebp-4]
 0051E168    mov         eax,dword ptr [eax+8]
 0051E16B    mov         edx,dword ptr [ebp-4]
 0051E16E    cmp         eax,dword ptr [edx]
>0051E170    jle         0051E184
 0051E172    mov         eax,dword ptr [ebp-4]
 0051E175    mov         eax,dword ptr [eax+0C]
 0051E178    mov         edx,dword ptr [ebp-4]
 0051E17B    cmp         eax,dword ptr [edx+4]
>0051E17E    jle         0051E184
 0051E180    xor         eax,eax
>0051E182    jmp         0051E186
 0051E184    mov         al,1
 0051E186    mov         byte ptr [ebp-5],al
 0051E189    mov         al,byte ptr [ebp-5]
 0051E18C    pop         ecx
 0051E18D    pop         ecx
 0051E18E    pop         ebp
 0051E18F    ret
end;*}

//0051E190
{*procedure sub_0051E190(?:?);
begin
 0051E190    push        ebp
 0051E191    mov         ebp,esp
 0051E193    push        ecx
 0051E194    xor         eax,eax
 0051E196    mov         dword ptr [ebp-4],eax
 0051E199    fild        dword ptr [ebp-4]
 0051E19C    fdiv        dword ptr ds:[51E1E0];255:Single
 0051E1A2    add         esp,0FFFFFFF4
 0051E1A5    fstp        tbyte ptr [esp]
 0051E1A8    wait
 0051E1A9    fld         dword ptr [ebp+8]
 0051E1AC    add         esp,0FFFFFFF4
 0051E1AF    fstp        tbyte ptr [esp]
 0051E1B2    wait
 0051E1B3    call        004372A4
 0051E1B8    fmul        dword ptr ds:[51E1E0];255:Single
 0051E1BE    call        @ROUND
 0051E1C3    mov         edx,dword ptr [ebp-4]
 0051E1C6    mov         byte ptr [edx+597AA8],al;gvar_00597AA8
 0051E1CC    inc         dword ptr [ebp-4]
 0051E1CF    cmp         dword ptr [ebp-4],100
>0051E1D6    jne         0051E199
 0051E1D8    pop         ecx
 0051E1D9    pop         ebp
 0051E1DA    ret         4
end;*}

//0051E1E4
procedure sub_0051E1E4;
begin
{*
 0051E1E4    push        ebp
 0051E1E5    mov         ebp,esp
 0051E1E7    push        ecx
 0051E1E8    mov         dword ptr [ebp-4],eax
 0051E1EB    mov         eax,dword ptr [ebp-4]
 0051E1EE    inc         dword ptr [eax+4];TNotifiablePersistent..:dword
 0051E1F1    pop         ecx
 0051E1F2    pop         ebp
 0051E1F3    ret
*}
end;

//0051E1F4
procedure sub_0051E1F4;
begin
{*
 0051E1F4    push        ebp
 0051E1F5    mov         ebp,esp
 0051E1F7    push        ecx
 0051E1F8    push        ebx
 0051E1F9    mov         dword ptr [ebp-4],eax
 0051E1FC    mov         eax,dword ptr [ebp-4]
 0051E1FF    cmp         dword ptr [eax+4],0;TNotifiablePersistent..:dword
>0051E203    jne         0051E21B
 0051E205    mov         eax,dword ptr [ebp-4]
 0051E208    cmp         word ptr [eax+0A],0;TNotifiablePersistent.?fA:word
>0051E20D    je          0051E21B
 0051E20F    mov         ebx,dword ptr [ebp-4]
 0051E212    mov         edx,dword ptr [ebp-4]
 0051E215    mov         eax,dword ptr [ebx+0C];TNotifiablePersistent.?fC:TImage32
 0051E218    call        dword ptr [ebx+8]
 0051E21B    pop         ebx
 0051E21C    pop         ecx
 0051E21D    pop         ebp
 0051E21E    ret
*}
end;

//0051E220
procedure sub_0051E220;
begin
{*
 0051E220    push        ebp
 0051E221    mov         ebp,esp
 0051E223    push        ecx
 0051E224    mov         dword ptr [ebp-4],eax
 0051E227    mov         eax,dword ptr [ebp-4]
 0051E22A    cmp         dword ptr [eax+4],0;TNotifiablePersistent..:dword
>0051E22E    jg          0051E244
 0051E230    mov         ecx,5F6
 0051E235    mov         edx,51E258;'c:\program files\delphi7se\Components\G32\GR32.pas'
 0051E23A    mov         eax,51E294;'Unpaired TThreadPersistent.EndUpdate'
 0051E23F    call        @Assert
 0051E244    mov         eax,dword ptr [ebp-4]
 0051E247    dec         dword ptr [eax+4];TNotifiablePersistent..:dword
 0051E24A    pop         ecx
 0051E24B    pop         ebp
 0051E24C    ret
*}
end;

//0051E2BC
constructor TIntegerMap.Create;
begin
{*
 0051E2BC    push        ebp
 0051E2BD    mov         ebp,esp
 0051E2BF    add         esp,0FFFFFFF8
 0051E2C2    test        dl,dl
>0051E2C4    je          0051E2CE
 0051E2C6    add         esp,0FFFFFFF0
 0051E2C9    call        @ClassCreate
 0051E2CE    mov         byte ptr [ebp-5],dl
 0051E2D1    mov         dword ptr [ebp-4],eax
 0051E2D4    mov         eax,dword ptr [ebp-4]
 0051E2D7    add         eax,10;TThreadPersistent...:?
 0051E2DA    push        eax
 0051E2DB    call        kernel32.InitializeCriticalSection
 0051E2E0    mov         eax,dword ptr [ebp-4]
 0051E2E3    cmp         byte ptr [ebp-5],0
>0051E2E7    je          0051E2F8
 0051E2E9    call        @AfterConstruction
 0051E2EE    pop         dword ptr fs:[0]
 0051E2F5    add         esp,0C
 0051E2F8    mov         eax,dword ptr [ebp-4]
 0051E2FB    pop         ecx
 0051E2FC    pop         ecx
 0051E2FD    pop         ebp
 0051E2FE    ret
*}
end;

//0051E300
destructor TThreadPersistent.Destroy;
begin
{*
 0051E300    push        ebp
 0051E301    mov         ebp,esp
 0051E303    add         esp,0FFFFFFF8
 0051E306    call        @BeforeDestruction
 0051E30B    mov         byte ptr [ebp-5],dl
 0051E30E    mov         dword ptr [ebp-4],eax
 0051E311    mov         eax,dword ptr [ebp-4]
 0051E314    add         eax,10
 0051E317    push        eax
 0051E318    call        kernel32.DeleteCriticalSection
 0051E31D    mov         dl,byte ptr [ebp-5]
 0051E320    and         dl,0FC
 0051E323    mov         eax,dword ptr [ebp-4]
 0051E326    call        TPersistent.Destroy
 0051E32B    cmp         byte ptr [ebp-5],0
>0051E32F    jle         0051E339
 0051E331    mov         eax,dword ptr [ebp-4]
 0051E334    call        @ClassDestroy
 0051E339    pop         ecx
 0051E33A    pop         ecx
 0051E33B    pop         ebp
 0051E33C    ret
*}
end;

//0051E340
procedure sub_0051E340(?:TBitmap32);
begin
{*
 0051E340    push        ebp
 0051E341    mov         ebp,esp
 0051E343    push        ecx
 0051E344    mov         dword ptr [ebp-4],eax
 0051E347    mov         eax,dword ptr [ebp-4]
 0051E34A    add         eax,28
 0051E34D    push        eax
 0051E34E    call        kernel32.InterlockedIncrement
 0051E353    mov         eax,dword ptr [ebp-4]
 0051E356    add         eax,10
 0051E359    push        eax
 0051E35A    call        kernel32.EnterCriticalSection
 0051E35F    pop         ecx
 0051E360    pop         ebp
 0051E361    ret
*}
end;

//0051E364
procedure sub_0051E364(?:TBitmap32);
begin
{*
 0051E364    push        ebp
 0051E365    mov         ebp,esp
 0051E367    push        ecx
 0051E368    mov         dword ptr [ebp-4],eax
 0051E36B    mov         eax,dword ptr [ebp-4]
 0051E36E    add         eax,10
 0051E371    push        eax
 0051E372    call        kernel32.LeaveCriticalSection
 0051E377    mov         eax,dword ptr [ebp-4]
 0051E37A    add         eax,28
 0051E37D    push        eax
 0051E37E    call        kernel32.InterlockedDecrement
 0051E383    pop         ecx
 0051E384    pop         ebp
 0051E385    ret
*}
end;

//0051E388
{*procedure sub_0051E388(?:?; ?:?; ?:?; ?:?);
begin
 0051E388    push        ebp
 0051E389    mov         ebp,esp
 0051E38B    add         esp,0FFFFFFF4
 0051E38E    mov         dword ptr [ebp-0C],ecx
 0051E391    mov         dword ptr [ebp-8],edx
 0051E394    mov         dword ptr [ebp-4],eax
 0051E397    mov         eax,dword ptr [ebp-8]
 0051E39A    mov         edx,dword ptr [ebp+0C]
 0051E39D    mov         dword ptr [eax],edx
 0051E39F    mov         eax,dword ptr [ebp-0C]
 0051E3A2    mov         edx,dword ptr [ebp+8]
 0051E3A5    mov         dword ptr [eax],edx
 0051E3A7    mov         esp,ebp
 0051E3A9    pop         ebp
 0051E3AA    ret         8
end;*}

//0051E3B0
procedure sub_0051E3B0;
begin
{*
 0051E3B0    push        ebp
 0051E3B1    mov         ebp,esp
 0051E3B3    push        ecx
 0051E3B4    push        ebx
 0051E3B5    mov         dword ptr [ebp-4],eax
 0051E3B8    xor         ecx,ecx
 0051E3BA    xor         edx,edx
 0051E3BC    mov         eax,dword ptr [ebp-4]
 0051E3BF    mov         ebx,dword ptr [eax]
 0051E3C1    call        dword ptr [ebx+2C];TCustomMap.sub_0051E43C
 0051E3C4    pop         ebx
 0051E3C5    pop         ecx
 0051E3C6    pop         ebp
 0051E3C7    ret
*}
end;

//0051E3C8
{*function sub_0051E3C8:?;
begin
 0051E3C8    push        ebp
 0051E3C9    mov         ebp,esp
 0051E3CB    add         esp,0FFFFFFF8
 0051E3CE    mov         dword ptr [ebp-4],eax
 0051E3D1    mov         eax,dword ptr [ebp-4]
 0051E3D4    cmp         dword ptr [eax+34],0;TCustomMap.?f34:Single
>0051E3D8    je          0051E3E7
 0051E3DA    mov         eax,dword ptr [ebp-4]
 0051E3DD    cmp         dword ptr [eax+30],0;TCustomMap.?f30:Integer
>0051E3E1    je          0051E3E7
 0051E3E3    xor         eax,eax
>0051E3E5    jmp         0051E3E9
 0051E3E7    mov         al,1
 0051E3E9    mov         byte ptr [ebp-5],al
 0051E3EC    mov         al,byte ptr [ebp-5]
 0051E3EF    pop         ecx
 0051E3F0    pop         ecx
 0051E3F1    pop         ebp
 0051E3F2    ret
end;*}

//0051E3F4
procedure sub_0051E3F4;
begin
{*
 0051E3F4    push        ebp
 0051E3F5    mov         ebp,esp
 0051E3F7    push        ecx
 0051E3F8    push        ebx
 0051E3F9    mov         dword ptr [ebp-4],eax
 0051E3FC    mov         eax,dword ptr [ebp-4]
 0051E3FF    cmp         word ptr [eax+3A],0;TCustomMap.?f3A:word
>0051E404    je          0051E412
 0051E406    mov         ebx,dword ptr [ebp-4]
 0051E409    mov         edx,dword ptr [ebp-4]
 0051E40C    mov         eax,dword ptr [ebx+3C];TCustomMap.?f3C:TCustomImage32
 0051E40F    call        dword ptr [ebx+38]
 0051E412    pop         ebx
 0051E413    pop         ecx
 0051E414    pop         ebp
 0051E415    ret
*}
end;

//0051E418
procedure sub_0051E418(?:TBitmap32; ?:Integer);
begin
{*
 0051E418    push        ebp
 0051E419    mov         ebp,esp
 0051E41B    add         esp,0FFFFFFF8
 0051E41E    push        ebx
 0051E41F    mov         dword ptr [ebp-8],edx
 0051E422    mov         dword ptr [ebp-4],eax
 0051E425    mov         ecx,dword ptr [ebp-8]
 0051E428    mov         eax,dword ptr [ebp-4]
 0051E42B    mov         edx,dword ptr [eax+34]
 0051E42E    mov         eax,dword ptr [ebp-4]
 0051E431    mov         ebx,dword ptr [eax]
 0051E433    call        dword ptr [ebx+2C]
 0051E436    pop         ebx
 0051E437    pop         ecx
 0051E438    pop         ecx
 0051E439    pop         ebp
 0051E43A    ret
*}
end;

//0051E43C
{*function sub_0051E43C(?:?; ?:?):?;
begin
 0051E43C    push        ebp
 0051E43D    mov         ebp,esp
 0051E43F    add         esp,0FFFFFFF0
 0051E442    push        ebx
 0051E443    mov         dword ptr [ebp-0C],ecx
 0051E446    mov         dword ptr [ebp-8],edx
 0051E449    mov         dword ptr [ebp-4],eax
 0051E44C    cmp         dword ptr [ebp-8],0
>0051E450    jge         0051E457
 0051E452    xor         eax,eax
 0051E454    mov         dword ptr [ebp-8],eax
 0051E457    cmp         dword ptr [ebp-0C],0
>0051E45B    jge         0051E462
 0051E45D    xor         eax,eax
 0051E45F    mov         dword ptr [ebp-0C],eax
 0051E462    mov         eax,dword ptr [ebp-8]
 0051E465    mov         edx,dword ptr [ebp-4]
 0051E468    cmp         eax,dword ptr [edx+34];TCustomMap.?f34:Single
>0051E46B    jne         0051E47C
 0051E46D    mov         eax,dword ptr [ebp-0C]
 0051E470    mov         edx,dword ptr [ebp-4]
 0051E473    cmp         eax,dword ptr [edx+30];TCustomMap.?f30:Integer
>0051E476    jne         0051E47C
 0051E478    xor         eax,eax
>0051E47A    jmp         0051E47E
 0051E47C    mov         al,1
 0051E47E    mov         byte ptr [ebp-0D],al
 0051E481    cmp         byte ptr [ebp-0D],0
>0051E485    je          0051E4B3
 0051E487    mov         eax,dword ptr [ebp-8]
 0051E48A    push        eax
 0051E48B    mov         eax,dword ptr [ebp-0C]
 0051E48E    push        eax
 0051E48F    mov         eax,dword ptr [ebp-4]
 0051E492    lea         ecx,[eax+30];TCustomMap.?f30:Integer
 0051E495    mov         eax,dword ptr [ebp-4]
 0051E498    lea         edx,[eax+34];TCustomMap.?f34:Single
 0051E49B    mov         eax,dword ptr [ebp-4]
 0051E49E    mov         ebx,dword ptr [eax]
 0051E4A0    call        dword ptr [ebx+1C];TCustomMap.sub_0051E388
 0051E4A3    mov         eax,dword ptr [ebp-4]
 0051E4A6    mov         edx,dword ptr [eax]
 0051E4A8    call        dword ptr [edx+0C];TCustomMap.sub_0051E1F4
 0051E4AB    mov         eax,dword ptr [ebp-4]
 0051E4AE    mov         edx,dword ptr [eax]
 0051E4B0    call        dword ptr [edx+28];TCustomMap.sub_0051E3F4
 0051E4B3    mov         al,byte ptr [ebp-0D]
 0051E4B6    pop         ebx
 0051E4B7    mov         esp,ebp
 0051E4B9    pop         ebp
 0051E4BA    ret
end;*}

//0051E4BC
procedure sub_0051E4BC(?:TBitmap32; ?:Integer);
begin
{*
 0051E4BC    push        ebp
 0051E4BD    mov         ebp,esp
 0051E4BF    add         esp,0FFFFFFF8
 0051E4C2    push        ebx
 0051E4C3    mov         dword ptr [ebp-8],edx
 0051E4C6    mov         dword ptr [ebp-4],eax
 0051E4C9    mov         eax,dword ptr [ebp-4]
 0051E4CC    mov         ecx,dword ptr [eax+30]
 0051E4CF    mov         edx,dword ptr [ebp-8]
 0051E4D2    mov         eax,dword ptr [ebp-4]
 0051E4D5    mov         ebx,dword ptr [eax]
 0051E4D7    call        dword ptr [ebx+2C]
 0051E4DA    pop         ebx
 0051E4DB    pop         ecx
 0051E4DC    pop         ecx
 0051E4DD    pop         ebp
 0051E4DE    ret
*}
end;

//0051E4E0
constructor TBitmap32.Create;
begin
{*
 0051E4E0    push        ebp
 0051E4E1    mov         ebp,esp
 0051E4E3    add         esp,0FFFFFFF4
 0051E4E6    test        dl,dl
>0051E4E8    je          0051E4F2
 0051E4EA    add         esp,0FFFFFFF0
 0051E4ED    call        @ClassCreate
 0051E4F2    mov         byte ptr [ebp-5],dl
 0051E4F5    mov         dword ptr [ebp-4],eax
 0051E4F8    xor         edx,edx
 0051E4FA    mov         eax,dword ptr [ebp-4]
 0051E4FD    call        TIntegerMap.Create
 0051E502    mov         eax,dword ptr [ebp-4]
 0051E505    add         eax,88;TBitmap32.?f88:?
 0051E50A    xor         ecx,ecx
 0051E50C    mov         edx,2C
 0051E511    call        @FillChar
 0051E516    mov         eax,dword ptr [ebp-4]
 0051E519    add         eax,88;TBitmap32.?f88:?
 0051E51E    mov         dword ptr [ebp-0C],eax
 0051E521    mov         eax,dword ptr [ebp-0C]
 0051E524    mov         dword ptr [eax],28
 0051E52A    mov         eax,dword ptr [ebp-0C]
 0051E52D    mov         word ptr [eax+0C],1
 0051E533    mov         eax,dword ptr [ebp-0C]
 0051E536    mov         word ptr [eax+0E],20
 0051E53C    mov         eax,dword ptr [ebp-0C]
 0051E53F    xor         edx,edx
 0051E541    mov         dword ptr [eax+10],edx
 0051E544    mov         eax,dword ptr [ebp-4]
 0051E547    xor         edx,edx
 0051E549    mov         dword ptr [eax+0B8],edx;TBitmap32.OuterColor:TColor32
 0051E54F    mov         dl,1
 0051E551    mov         eax,[0042C4F8];TFont
 0051E556    call        TFont.Create;TFont.Create
 0051E55B    mov         edx,dword ptr [ebp-4]
 0051E55E    mov         dword ptr [edx+7C],eax;TBitmap32.?f7C:TFont
 0051E561    mov         eax,dword ptr [ebp-4]
 0051E564    mov         eax,dword ptr [eax+7C];TBitmap32.?f7C:TFont
 0051E567    mov         edx,dword ptr [ebp-4]
 0051E56A    mov         dword ptr [eax+0C],edx;TFont.?fC:TCustomListView
 0051E56D    mov         dword ptr [eax+8],522598;TFont.FOnChange:TNotifyEvent sub_00522598
 0051E574    mov         eax,dword ptr [ebp-4]
 0051E577    add         eax,10;TBitmap32....:?
 0051E57A    mov         edx,dword ptr [ebp-4]
 0051E57D    mov         edx,dword ptr [edx+7C];TBitmap32.?f7C:TFont
 0051E580    mov         dword ptr [edx+14],eax;TFont.FOwnerLock:PRTLCriticalSection
 0051E583    mov         eax,dword ptr [ebp-4]
 0051E586    mov         dword ptr [eax+0B4],0FF;TBitmap32.MasterAlpha:Cardinal
 0051E590    mov         eax,dword ptr [ebp-4]
 0051E593    mov         dword ptr [eax+0BC],0FFFFFFFF;TBitmap32.?fBC:dword
 0051E59D    mov         eax,dword ptr [ebp-4]
 0051E5A0    mov         dword ptr [eax+0C8],3F800000;TBitmap32.?fC8:dword
 0051E5AA    mov         eax,dword ptr [ebp-4]
 0051E5AD    mov         byte ptr [eax+7A],0;TBitmap32.CombineMode:TCombineMode
 0051E5B1    mov         ecx,dword ptr [ebp-4]
 0051E5B4    mov         dl,1
 0051E5B6    mov         eax,[00516634];TNearestResampler
 0051E5BB    call        TNearestResampler.Create;TNearestResampler.Create
 0051E5C0    mov         edx,dword ptr [ebp-4]
 0051E5C3    mov         dword ptr [edx+0F4],eax;TBitmap32.Resampler:TCustomResampler
 0051E5C9    mov         eax,dword ptr [ebp-4]
 0051E5CC    cmp         byte ptr [ebp-5],0
>0051E5D0    je          0051E5E1
 0051E5D2    call        @AfterConstruction
 0051E5D7    pop         dword ptr fs:[0]
 0051E5DE    add         esp,0C
 0051E5E1    mov         eax,dword ptr [ebp-4]
 0051E5E4    mov         esp,ebp
 0051E5E6    pop         ebp
 0051E5E7    ret
*}
end;

//0051E5E8
destructor TBitmap32.Destroy;
begin
{*
 0051E5E8    push        ebp
 0051E5E9    mov         ebp,esp
 0051E5EB    add         esp,0FFFFFFF8
 0051E5EE    push        ebx
 0051E5EF    call        @BeforeDestruction
 0051E5F4    mov         byte ptr [ebp-5],dl
 0051E5F7    mov         dword ptr [ebp-4],eax
 0051E5FA    mov         eax,dword ptr [ebp-4]
 0051E5FD    mov         edx,dword ptr [eax]
 0051E5FF    call        dword ptr [edx+10]
 0051E602    mov         eax,dword ptr [ebp-4]
 0051E605    call        0051E340
 0051E60A    xor         eax,eax
 0051E60C    push        ebp
 0051E60D    push        51E65B
 0051E612    push        dword ptr fs:[eax]
 0051E615    mov         dword ptr fs:[eax],esp
 0051E618    mov         eax,dword ptr [ebp-4]
 0051E61B    call        0051F424
 0051E620    xor         ecx,ecx
 0051E622    xor         edx,edx
 0051E624    mov         eax,dword ptr [ebp-4]
 0051E627    mov         ebx,dword ptr [eax]
 0051E629    call        dword ptr [ebx+2C]
 0051E62C    mov         eax,dword ptr [ebp-4]
 0051E62F    mov         eax,dword ptr [eax+7C]
 0051E632    call        TObject.Free
 0051E637    mov         eax,dword ptr [ebp-4]
 0051E63A    mov         eax,dword ptr [eax+0F4]
 0051E640    call        TObject.Free
 0051E645    xor         eax,eax
 0051E647    pop         edx
 0051E648    pop         ecx
 0051E649    pop         ecx
 0051E64A    mov         dword ptr fs:[eax],edx
 0051E64D    push        51E662
 0051E652    mov         eax,dword ptr [ebp-4]
 0051E655    call        0051E364
 0051E65A    ret
>0051E65B    jmp         @HandleFinally
>0051E660    jmp         0051E652
 0051E662    mov         dl,byte ptr [ebp-5]
 0051E665    and         dl,0FC
 0051E668    mov         eax,dword ptr [ebp-4]
 0051E66B    call        TThreadPersistent.Destroy
 0051E670    cmp         byte ptr [ebp-5],0
>0051E674    jle         0051E67E
 0051E676    mov         eax,dword ptr [ebp-4]
 0051E679    call        @ClassDestroy
 0051E67E    pop         ebx
 0051E67F    pop         ecx
 0051E680    pop         ecx
 0051E681    pop         ebp
 0051E682    ret
*}
end;

//0051E684
procedure sub_0051E684;
begin
{*
 0051E684    push        ebp
 0051E685    mov         ebp,esp
 0051E687    push        ecx
 0051E688    push        ebx
 0051E689    mov         dword ptr [ebp-4],eax
 0051E68C    mov         eax,dword ptr [ebp-4]
 0051E68F    cmp         dword ptr [eax+44],0;TBitmap32.?f44:dword
>0051E693    je          0051E6A9
 0051E695    mov         eax,dword ptr [ebp-4]
 0051E698    mov         edx,dword ptr [eax+84];TBitmap32.?f84:HDC
 0051E69E    mov         eax,dword ptr [ebp-4]
 0051E6A1    mov         eax,dword ptr [eax+44];TBitmap32.?f44:dword
 0051E6A4    call        TCanvas.SetHandle
 0051E6A9    mov         eax,dword ptr [ebp-4]
 0051E6AC    cmp         word ptr [eax+0D2],0;TBitmap32.?fD2:word
>0051E6B4    je          0051E6C8
 0051E6B6    mov         ebx,dword ptr [ebp-4]
 0051E6B9    mov         edx,dword ptr [ebp-4]
 0051E6BC    mov         eax,dword ptr [ebx+0D4];TBitmap32.?fD4:dword
 0051E6C2    call        dword ptr [ebx+0D0];TBitmap32.OnHandleChanged
 0051E6C8    pop         ebx
 0051E6C9    pop         ecx
 0051E6CA    pop         ebp
 0051E6CB    ret
*}
end;

//0051E6CC
{*procedure sub_0051E6CC(?:?; ?:?; ?:?; ?:?);
begin
 0051E6CC    push        ebp
 0051E6CD    mov         ebp,esp
 0051E6CF    add         esp,0FFFFFFF0
 0051E6D2    mov         dword ptr [ebp-0C],ecx
 0051E6D5    mov         dword ptr [ebp-8],edx
 0051E6D8    mov         dword ptr [ebp-4],eax
 0051E6DB    xor         eax,eax
 0051E6DD    push        ebp
 0051E6DE    push        51E8C7
 0051E6E3    push        dword ptr fs:[eax]
 0051E6E6    mov         dword ptr fs:[eax],esp
 0051E6E9    mov         edx,dword ptr [ebp-4]
 0051E6EC    mov         eax,dword ptr [ebp-4]
 0051E6EF    call        00522598
 0051E6F4    mov         eax,dword ptr [ebp-4]
 0051E6F7    call        0051F424
 0051E6FC    mov         eax,dword ptr [ebp-4]
 0051E6FF    cmp         dword ptr [eax+84],0;TBitmap32.?f84:HDC
>0051E706    je          0051E717
 0051E708    mov         eax,dword ptr [ebp-4]
 0051E70B    mov         eax,dword ptr [eax+84];TBitmap32.?f84:HDC
 0051E711    push        eax
 0051E712    call        gdi32.DeleteDC
 0051E717    mov         eax,dword ptr [ebp-4]
 0051E71A    xor         edx,edx
 0051E71C    mov         dword ptr [eax+84],edx;TBitmap32.?f84:HDC
 0051E722    mov         eax,dword ptr [ebp-4]
 0051E725    cmp         dword ptr [eax+80],0;TBitmap32.?f80:HBITMAP
>0051E72C    je          0051E73D
 0051E72E    mov         eax,dword ptr [ebp-4]
 0051E731    mov         eax,dword ptr [eax+80];TBitmap32.?f80:HBITMAP
 0051E737    push        eax
 0051E738    call        gdi32.DeleteObject
 0051E73D    mov         eax,dword ptr [ebp-4]
 0051E740    xor         edx,edx
 0051E742    mov         dword ptr [eax+80],edx;TBitmap32.?f80:HBITMAP
 0051E748    mov         eax,dword ptr [ebp-4]
 0051E74B    xor         edx,edx
 0051E74D    mov         dword ptr [eax+40],edx;TBitmap32.?f40:dword
 0051E750    mov         eax,dword ptr [ebp-8]
 0051E753    xor         edx,edx
 0051E755    mov         dword ptr [eax],edx
 0051E757    mov         eax,dword ptr [ebp-0C]
 0051E75A    xor         edx,edx
 0051E75C    mov         dword ptr [eax],edx
 0051E75E    cmp         dword ptr [ebp+0C],0
>0051E762    jle         0051E899
 0051E768    cmp         dword ptr [ebp+8],0
>0051E76C    jle         0051E899
 0051E772    mov         eax,dword ptr [ebp-4]
 0051E775    add         eax,88;TBitmap32.?f88:?
 0051E77A    mov         dword ptr [ebp-10],eax
 0051E77D    mov         eax,dword ptr [ebp-10]
 0051E780    mov         edx,dword ptr [ebp+0C]
 0051E783    mov         dword ptr [eax+4],edx
 0051E786    mov         eax,dword ptr [ebp+8]
 0051E789    neg         eax
 0051E78B    mov         edx,dword ptr [ebp-10]
 0051E78E    mov         dword ptr [edx+8],eax
 0051E791    push        0
 0051E793    push        0
 0051E795    mov         eax,dword ptr [ebp-4]
 0051E798    add         eax,40;TBitmap32.?f40:dword
 0051E79B    push        eax
 0051E79C    push        0
 0051E79E    mov         eax,dword ptr [ebp-4]
 0051E7A1    add         eax,88;TBitmap32.?f88:?
 0051E7A6    push        eax
 0051E7A7    push        0
 0051E7A9    call        gdi32.CreateDIBSection
 0051E7AE    mov         edx,dword ptr [ebp-4]
 0051E7B1    mov         dword ptr [edx+80],eax;TBitmap32.?f80:HBITMAP
 0051E7B7    mov         eax,dword ptr [ebp-4]
 0051E7BA    cmp         dword ptr [eax+40],0;TBitmap32.?f40:dword
>0051E7BE    jne         0051E7D6
 0051E7C0    mov         ecx,51E8DC;'Can't allocate the DIB handle'
 0051E7C5    mov         dl,1
 0051E7C7    mov         eax,[0040B004];Exception
 0051E7CC    call        Exception.Create;Exception.Create
 0051E7D1    call        @RaiseExcept
 0051E7D6    push        0
 0051E7D8    call        gdi32.CreateCompatibleDC
 0051E7DD    mov         edx,dword ptr [ebp-4]
 0051E7E0    mov         dword ptr [edx+84],eax;TBitmap32.?f84:HDC
 0051E7E6    mov         eax,dword ptr [ebp-4]
 0051E7E9    cmp         dword ptr [eax+84],0;TBitmap32.?f84:HDC
>0051E7F0    jne         0051E82A
 0051E7F2    mov         eax,dword ptr [ebp-4]
 0051E7F5    mov         eax,dword ptr [eax+80];TBitmap32.?f80:HBITMAP
 0051E7FB    push        eax
 0051E7FC    call        gdi32.DeleteObject
 0051E801    mov         eax,dword ptr [ebp-4]
 0051E804    xor         edx,edx
 0051E806    mov         dword ptr [eax+80],edx;TBitmap32.?f80:HBITMAP
 0051E80C    mov         eax,dword ptr [ebp-4]
 0051E80F    xor         edx,edx
 0051E811    mov         dword ptr [eax+40],edx;TBitmap32.?f40:dword
 0051E814    mov         ecx,51E904;'Can't create compatible DC'
 0051E819    mov         dl,1
 0051E81B    mov         eax,[0040B004];Exception
 0051E820    call        Exception.Create;Exception.Create
 0051E825    call        @RaiseExcept
 0051E82A    mov         eax,dword ptr [ebp-4]
 0051E82D    mov         eax,dword ptr [eax+80];TBitmap32.?f80:HBITMAP
 0051E833    push        eax
 0051E834    mov         eax,dword ptr [ebp-4]
 0051E837    mov         eax,dword ptr [eax+84];TBitmap32.?f84:HDC
 0051E83D    push        eax
 0051E83E    call        gdi32.SelectObject
 0051E843    test        eax,eax
>0051E845    jne         0051E899
 0051E847    mov         eax,dword ptr [ebp-4]
 0051E84A    mov         eax,dword ptr [eax+84];TBitmap32.?f84:HDC
 0051E850    push        eax
 0051E851    call        gdi32.DeleteDC
 0051E856    mov         eax,dword ptr [ebp-4]
 0051E859    mov         eax,dword ptr [eax+80];TBitmap32.?f80:HBITMAP
 0051E85F    push        eax
 0051E860    call        gdi32.DeleteObject
 0051E865    mov         eax,dword ptr [ebp-4]
 0051E868    xor         edx,edx
 0051E86A    mov         dword ptr [eax+84],edx;TBitmap32.?f84:HDC
 0051E870    mov         eax,dword ptr [ebp-4]
 0051E873    xor         edx,edx
 0051E875    mov         dword ptr [eax+80],edx;TBitmap32.?f80:HBITMAP
 0051E87B    mov         eax,dword ptr [ebp-4]
 0051E87E    xor         edx,edx
 0051E880    mov         dword ptr [eax+40],edx;TBitmap32.?f40:dword
 0051E883    mov         ecx,51E928;'Can't select an object into DC'
 0051E888    mov         dl,1
 0051E88A    mov         eax,[0040B004];Exception
 0051E88F    call        Exception.Create;Exception.Create
 0051E894    call        @RaiseExcept
 0051E899    mov         eax,dword ptr [ebp-8]
 0051E89C    mov         edx,dword ptr [ebp+0C]
 0051E89F    mov         dword ptr [eax],edx
 0051E8A1    mov         eax,dword ptr [ebp-0C]
 0051E8A4    mov         edx,dword ptr [ebp+8]
 0051E8A7    mov         dword ptr [eax],edx
 0051E8A9    mov         eax,dword ptr [ebp-4]
 0051E8AC    call        00523018
 0051E8B1    xor         eax,eax
 0051E8B3    pop         edx
 0051E8B4    pop         ecx
 0051E8B5    pop         ecx
 0051E8B6    mov         dword ptr fs:[eax],edx
 0051E8B9    push        51E8CE
 0051E8BE    mov         eax,dword ptr [ebp-4]
 0051E8C1    mov         edx,dword ptr [eax]
 0051E8C3    call        dword ptr [edx+38];TBitmap32.sub_0051E684
 0051E8C6    ret
>0051E8C7    jmp         @HandleFinally
>0051E8CC    jmp         0051E8BE
 0051E8CE    mov         esp,ebp
 0051E8D0    pop         ebp
 0051E8D1    ret         8
end;*}

//0051E948
{*function sub_0051E948:?;
begin
 0051E948    push        ebp
 0051E949    mov         ebp,esp
 0051E94B    add         esp,0FFFFFFF8
 0051E94E    mov         dword ptr [ebp-4],eax
 0051E951    mov         eax,dword ptr [ebp-4]
 0051E954    cmp         dword ptr [eax+80],0;TBitmap32.?f80:HBITMAP
>0051E95B    je          0051E96D
 0051E95D    mov         eax,dword ptr [ebp-4]
 0051E960    call        0051E3C8
 0051E965    test        al,al
>0051E967    jne         0051E96D
 0051E969    xor         eax,eax
>0051E96B    jmp         0051E96F
 0051E96D    mov         al,1
 0051E96F    mov         byte ptr [ebp-5],al
 0051E972    mov         al,byte ptr [ebp-5]
 0051E975    pop         ecx
 0051E976    pop         ecx
 0051E977    pop         ebp
 0051E978    ret
end;*}

//0051E97C
{*procedure sub_0051E97C(?:TBitmap32; ?:?);
begin
 0051E97C    push        ebp
 0051E97D    mov         ebp,esp
 0051E97F    add         esp,0FFFFFFF8
 0051E982    push        ebx
 0051E983    mov         dword ptr [ebp-8],edx
 0051E986    mov         dword ptr [ebp-4],eax
 0051E989    mov         eax,dword ptr [ebp-4]
 0051E98C    mov         edx,dword ptr [eax]
 0051E98E    call        dword ptr [edx+24]
 0051E991    test        al,al
>0051E993    jne         0051E9FA
 0051E995    mov         eax,dword ptr [ebp-4]
 0051E998    cmp         byte ptr [eax+0F0],0
>0051E99F    jne         0051E9F2
 0051E9A1    mov         eax,dword ptr [ebp-4]
 0051E9A4    cmp         byte ptr [eax+78],0
>0051E9A8    je          0051E9D2
 0051E9AA    mov         eax,dword ptr [ebp-4]
 0051E9AD    mov         eax,dword ptr [eax+50]
 0051E9B0    push        eax
 0051E9B1    mov         eax,dword ptr [ebp-4]
 0051E9B4    mov         eax,dword ptr [eax+54]
 0051E9B7    push        eax
 0051E9B8    mov         eax,dword ptr [ebp-8]
 0051E9BB    push        eax
 0051E9BC    mov         eax,dword ptr [ebp-4]
 0051E9BF    mov         ecx,dword ptr [eax+4C]
 0051E9C2    mov         eax,dword ptr [ebp-4]
 0051E9C5    mov         edx,dword ptr [eax+48]
 0051E9C8    mov         eax,dword ptr [ebp-4]
 0051E9CB    call        0052203C
>0051E9D0    jmp         0051E9F2
 0051E9D2    mov         ebx,dword ptr ds:[56E100];^gvar_005779AC
 0051E9D8    mov         ebx,dword ptr [ebx]
 0051E9DA    mov         eax,dword ptr [ebp-4]
 0051E9DD    mov         edx,dword ptr [eax+34]
 0051E9E0    mov         eax,dword ptr [ebp-4]
 0051E9E3    imul        edx,dword ptr [eax+30]
 0051E9E7    mov         eax,dword ptr [ebp-4]
 0051E9EA    mov         eax,dword ptr [eax+40]
 0051E9ED    mov         ecx,dword ptr [ebp-8]
 0051E9F0    call        ebx
 0051E9F2    mov         eax,dword ptr [ebp-4]
 0051E9F5    mov         edx,dword ptr [eax]
 0051E9F7    call        dword ptr [edx+0C]
 0051E9FA    pop         ebx
 0051E9FB    pop         ecx
 0051E9FC    pop         ecx
 0051E9FD    pop         ebp
 0051E9FE    ret
end;*}

//0051EA00
procedure sub_0051EA00;
begin
{*
 0051EA00    push        ebp
 0051EA01    mov         ebp,esp
 0051EA03    push        ecx
 0051EA04    push        ebx
 0051EA05    mov         dword ptr [ebp-4],eax
 0051EA08    xor         ecx,ecx
 0051EA0A    xor         edx,edx
 0051EA0C    mov         eax,dword ptr [ebp-4]
 0051EA0F    mov         ebx,dword ptr [eax]
 0051EA11    call        dword ptr [ebx+2C];TBitmap32.sub_0051E43C
 0051EA14    pop         ebx
 0051EA15    pop         ecx
 0051EA16    pop         ebp
 0051EA17    ret
*}
end;

//0051EA18
{*procedure sub_0051EA18(?:?; ?:?);
begin
 0051EA18    push        ebp
 0051EA19    mov         ebp,esp
 0051EA1B    add         esp,0FFFFFFF0
 0051EA1E    push        ebx
 0051EA1F    mov         dword ptr [ebp-4],eax
 0051EA22    mov         eax,dword ptr [ebp-4]
 0051EA25    mov         edx,dword ptr [eax]
 0051EA27    call        dword ptr [edx+20]
 0051EA2A    push        eax
 0051EA2B    mov         eax,dword ptr [ebp-4]
 0051EA2E    mov         edx,dword ptr [eax]
 0051EA30    call        dword ptr [edx+2C]
 0051EA33    mov         edx,eax
 0051EA35    mov         eax,dword ptr [ebp+8]
 0051EA38    mov         eax,dword ptr [eax-4]
 0051EA3B    pop         ecx
 0051EA3C    mov         ebx,dword ptr [eax]
 0051EA3E    call        dword ptr [ebx+2C]
 0051EA41    mov         eax,dword ptr [ebp+8]
 0051EA44    mov         eax,dword ptr [eax-4]
 0051EA47    mov         edx,dword ptr [eax]
 0051EA49    call        dword ptr [edx+24]
 0051EA4C    test        al,al
>0051EA4E    jne         0051EB93
 0051EA54    mov         eax,dword ptr [ebp-4]
 0051EA57    call        0043498C
 0051EA5C    call        TCanvas.Lock
 0051EA61    xor         eax,eax
 0051EA63    push        ebp
 0051EA64    push        51EACB
 0051EA69    push        dword ptr fs:[eax]
 0051EA6C    mov         dword ptr fs:[eax],esp
 0051EA6F    push        0CC0020
 0051EA74    push        0
 0051EA76    push        0
 0051EA78    mov         eax,dword ptr [ebp-4]
 0051EA7B    call        0043498C
 0051EA80    call        0042F6A0
 0051EA85    push        eax
 0051EA86    mov         eax,dword ptr [ebp+8]
 0051EA89    mov         eax,dword ptr [eax-4]
 0051EA8C    mov         eax,dword ptr [eax+30]
 0051EA8F    push        eax
 0051EA90    mov         eax,dword ptr [ebp+8]
 0051EA93    mov         eax,dword ptr [eax-4]
 0051EA96    mov         eax,dword ptr [eax+34]
 0051EA99    push        eax
 0051EA9A    push        0
 0051EA9C    push        0
 0051EA9E    mov         eax,dword ptr [ebp+8]
 0051EAA1    mov         eax,dword ptr [eax-4]
 0051EAA4    mov         eax,dword ptr [eax+84]
 0051EAAA    push        eax
 0051EAAB    call        gdi32.BitBlt
 0051EAB0    xor         eax,eax
 0051EAB2    pop         edx
 0051EAB3    pop         ecx
 0051EAB4    pop         ecx
 0051EAB5    mov         dword ptr fs:[eax],edx
 0051EAB8    push        51EAD2
 0051EABD    mov         eax,dword ptr [ebp-4]
 0051EAC0    call        0043498C
 0051EAC5    call        TCanvas.Unlock
 0051EACA    ret
>0051EACB    jmp         @HandleFinally
>0051EAD0    jmp         0051EABD
 0051EAD2    mov         eax,dword ptr [ebp-4]
 0051EAD5    call        00434B34
 0051EADA    cmp         al,7
>0051EADC    je          0051EAE9
 0051EADE    mov         eax,dword ptr [ebp+8]
 0051EAE1    mov         eax,dword ptr [eax-4]
 0051EAE4    call        0051F6BC
 0051EAE9    mov         eax,dword ptr [ebp-4]
 0051EAEC    mov         edx,dword ptr [eax]
 0051EAEE    call        dword ptr [edx+28]
 0051EAF1    test        al,al
>0051EAF3    je          0051EB7A
 0051EAF9    mov         eax,dword ptr [ebp-4]
 0051EAFC    call        00434C88
 0051EB01    call        0051DBDC
 0051EB06    and         eax,0FFFFFF
 0051EB0B    mov         dword ptr [ebp-8],eax
 0051EB0E    mov         eax,dword ptr [ebp+8]
 0051EB11    mov         eax,dword ptr [eax-4]
 0051EB14    mov         eax,dword ptr [eax+40]
 0051EB17    mov         edx,dword ptr [ebp+8]
 0051EB1A    mov         dword ptr [edx-8],eax
 0051EB1D    mov         eax,dword ptr [ebp+8]
 0051EB20    mov         eax,dword ptr [eax-4]
 0051EB23    mov         eax,dword ptr [eax+34]
 0051EB26    mov         edx,dword ptr [ebp+8]
 0051EB29    mov         edx,dword ptr [edx-4]
 0051EB2C    imul        dword ptr [edx+30]
 0051EB2F    dec         eax
 0051EB30    test        eax,eax
>0051EB32    jl          0051EB7A
 0051EB34    inc         eax
 0051EB35    mov         dword ptr [ebp-10],eax
 0051EB38    mov         dword ptr [ebp-0C],0
 0051EB3F    mov         eax,dword ptr [ebp+8]
 0051EB42    mov         eax,dword ptr [eax-8]
 0051EB45    mov         eax,dword ptr [eax]
 0051EB47    and         eax,0FFFFFF
 0051EB4C    mov         edx,dword ptr [ebp+8]
 0051EB4F    mov         dword ptr [edx-0C],eax
 0051EB52    mov         eax,dword ptr [ebp+8]
 0051EB55    mov         eax,dword ptr [eax-0C]
 0051EB58    cmp         eax,dword ptr [ebp-8]
>0051EB5B    jne         0051EB6B
 0051EB5D    mov         eax,dword ptr [ebp+8]
 0051EB60    mov         eax,dword ptr [eax-0C]
 0051EB63    mov         edx,dword ptr [ebp+8]
 0051EB66    mov         edx,dword ptr [edx-8]
 0051EB69    mov         dword ptr [edx],eax
 0051EB6B    mov         eax,dword ptr [ebp+8]
 0051EB6E    add         dword ptr [eax-8],4
 0051EB72    inc         dword ptr [ebp-0C]
 0051EB75    dec         dword ptr [ebp-10]
>0051EB78    jne         0051EB3F
 0051EB7A    mov         eax,dword ptr [ebp-4]
 0051EB7D    call        0043498C
 0051EB82    mov         edx,dword ptr [eax+0C]
 0051EB85    mov         eax,dword ptr [ebp+8]
 0051EB88    mov         eax,dword ptr [eax-4]
 0051EB8B    mov         eax,dword ptr [eax+7C]
 0051EB8E    mov         ecx,dword ptr [eax]
 0051EB90    call        dword ptr [ecx+8]
 0051EB93    pop         ebx
 0051EB94    mov         esp,ebp
 0051EB96    pop         ebp
 0051EB97    ret
end;*}

//0051EB98
{*procedure sub_0051EB98(?:?);
begin
 0051EB98    push        ebp
 0051EB99    mov         ebp,esp
 0051EB9B    add         esp,0FFFFFFC4
 0051EB9E    push        ebx
 0051EB9F    mov         dword ptr [ebp-10],edx
 0051EBA2    mov         dword ptr [ebp-4],eax
 0051EBA5    mov         eax,dword ptr [ebp-4]
 0051EBA8    mov         edx,dword ptr [eax]
 0051EBAA    call        dword ptr [edx+10];TBitmap32.sub_0051E1E4
 0051EBAD    xor         eax,eax
 0051EBAF    push        ebp
 0051EBB0    push        51F135
 0051EBB5    push        dword ptr fs:[eax]
 0051EBB8    mov         dword ptr fs:[eax],esp
 0051EBBB    cmp         dword ptr [ebp-10],0
>0051EBBF    jne         0051EBD7
 0051EBC1    xor         ecx,ecx
 0051EBC3    xor         edx,edx
 0051EBC5    mov         eax,dword ptr [ebp-4]
 0051EBC8    mov         ebx,dword ptr [eax]
 0051EBCA    call        dword ptr [ebx+2C];TBitmap32.sub_0051E43C
 0051EBCD    call        @TryFinallyExit
>0051EBD2    jmp         0051F13C
 0051EBD7    mov         eax,dword ptr [ebp-10]
 0051EBDA    mov         edx,dword ptr ds:[51D7C4];TBitmap32
 0051EBE0    call        @IsClass
 0051EBE5    test        al,al
>0051EBE7    je          0051EC1A
 0051EBE9    mov         eax,dword ptr [ebp-10]
 0051EBEC    mov         edx,dword ptr ds:[51D7C4];TBitmap32
 0051EBF2    call        @AsClass
 0051EBF7    mov         dword ptr [ebp-28],eax
 0051EBFA    mov         edx,dword ptr [ebp-4]
 0051EBFD    mov         eax,dword ptr [ebp-28]
 0051EC00    mov         ecx,dword ptr [eax]
 0051EC02    call        dword ptr [ecx+30];TBitmap32.sub_0051F144
 0051EC05    mov         edx,dword ptr [ebp-4]
 0051EC08    mov         eax,dword ptr [ebp-28]
 0051EC0B    mov         ecx,dword ptr [eax]
 0051EC0D    call        dword ptr [ecx+34];TBitmap32.sub_0051F194
 0051EC10    call        @TryFinallyExit
>0051EC15    jmp         0051F13C
 0051EC1A    mov         eax,dword ptr [ebp-10]
 0051EC1D    mov         edx,dword ptr ds:[42CF48];TBitmap
 0051EC23    call        @IsClass
 0051EC28    test        al,al
>0051EC2A    je          0051EC40
 0051EC2C    push        ebp
 0051EC2D    mov         eax,dword ptr [ebp-10]
 0051EC30    call        0051EA18
 0051EC35    pop         ecx
 0051EC36    call        @TryFinallyExit
>0051EC3B    jmp         0051F13C
 0051EC40    mov         eax,dword ptr [ebp-10]
 0051EC43    mov         edx,dword ptr ds:[42CB48];TGraphic
 0051EC49    call        @IsClass
 0051EC4E    test        al,al
>0051EC50    je          0051ED03
 0051EC56    mov         eax,dword ptr [ebp-10]
 0051EC59    mov         edx,dword ptr [eax]
 0051EC5B    call        dword ptr [edx+20]
 0051EC5E    push        eax
 0051EC5F    mov         eax,dword ptr [ebp-10]
 0051EC62    mov         edx,dword ptr [eax]
 0051EC64    call        dword ptr [edx+2C]
 0051EC67    mov         edx,eax
 0051EC69    mov         eax,dword ptr [ebp-4]
 0051EC6C    pop         ecx
 0051EC6D    mov         ebx,dword ptr [eax]
 0051EC6F    call        dword ptr [ebx+2C];TBitmap32.sub_0051E43C
 0051EC72    mov         eax,dword ptr [ebp-4]
 0051EC75    mov         edx,dword ptr [eax]
 0051EC77    call        dword ptr [edx+24];TBitmap32.sub_0051E948
 0051EC7A    test        al,al
>0051EC7C    je          0051EC88
 0051EC7E    call        @TryFinallyExit
>0051EC83    jmp         0051F13C
 0051EC88    mov         dl,1
 0051EC8A    mov         eax,[0042C8EC];TCanvas
 0051EC8F    call        TCanvas.Create;TCanvas.Create
 0051EC94    mov         dword ptr [ebp-14],eax
 0051EC97    xor         eax,eax
 0051EC99    push        ebp
 0051EC9A    push        51ECFC
 0051EC9F    push        dword ptr fs:[eax]
 0051ECA2    mov         dword ptr fs:[eax],esp
 0051ECA5    mov         eax,dword ptr [ebp-4]
 0051ECA8    mov         edx,dword ptr [eax+84];TBitmap32.?f84:HDC
 0051ECAE    mov         eax,dword ptr [ebp-14]
 0051ECB1    call        TCanvas.SetHandle
 0051ECB6    mov         eax,dword ptr [ebp-4]
 0051ECB9    mov         eax,dword ptr [eax+30];TBitmap32.?f30:Integer
 0051ECBC    push        eax
 0051ECBD    lea         eax,[ebp-3C]
 0051ECC0    push        eax
 0051ECC1    mov         eax,dword ptr [ebp-4]
 0051ECC4    mov         ecx,dword ptr [eax+34];TBitmap32.?f34:Single
 0051ECC7    xor         edx,edx
 0051ECC9    xor         eax,eax
 0051ECCB    call        0051DC50
 0051ECD0    lea         ecx,[ebp-3C]
 0051ECD3    mov         edx,dword ptr [ebp-14]
 0051ECD6    mov         eax,dword ptr [ebp-10]
 0051ECD9    mov         ebx,dword ptr [eax]
 0051ECDB    call        dword ptr [ebx+14]
 0051ECDE    mov         eax,dword ptr [ebp-4]
 0051ECE1    call        0051F6BC
 0051ECE6    xor         eax,eax
 0051ECE8    pop         edx
 0051ECE9    pop         ecx
 0051ECEA    pop         ecx
 0051ECEB    mov         dword ptr fs:[eax],edx
 0051ECEE    push        51F117
 0051ECF3    mov         eax,dword ptr [ebp-14]
 0051ECF6    call        TObject.Free
 0051ECFB    ret
>0051ECFC    jmp         @HandleFinally
>0051ED01    jmp         0051ECF3
 0051ED03    mov         eax,dword ptr [ebp-10]
 0051ED06    mov         edx,dword ptr ds:[42CC9C];TPicture
 0051ED0C    call        @IsClass
 0051ED11    test        al,al
>0051ED13    je          0051EFF5
 0051ED19    mov         eax,dword ptr [ebp-10]
 0051ED1C    mov         eax,dword ptr [eax+0C]
 0051ED1F    mov         edx,dword ptr ds:[42CF48];TBitmap
 0051ED25    call        @IsClass
 0051ED2A    test        al,al
>0051ED2C    je          0051ED40
 0051ED2E    push        ebp
 0051ED2F    mov         eax,dword ptr [ebp-10]
 0051ED32    mov         eax,dword ptr [eax+0C]
 0051ED35    call        0051EA18
 0051ED3A    pop         ecx
>0051ED3B    jmp         0051EFEB
 0051ED40    mov         eax,dword ptr [ebp-10]
 0051ED43    mov         eax,dword ptr [eax+0C]
 0051ED46    mov         edx,dword ptr ds:[42D08C];TIcon
 0051ED4C    call        @IsClass
 0051ED51    test        al,al
>0051ED53    jne         0051ED6E
 0051ED55    mov         eax,dword ptr [ebp-10]
 0051ED58    mov         eax,dword ptr [eax+0C]
 0051ED5B    mov         edx,dword ptr ds:[42CE08];TMetafile
 0051ED61    call        @IsClass
 0051ED66    test        al,al
>0051ED68    je          0051EF2F
 0051ED6E    mov         eax,dword ptr [ebp-10]
 0051ED71    mov         eax,dword ptr [eax+0C]
 0051ED74    mov         edx,dword ptr [eax]
 0051ED76    call        dword ptr [edx+20]
 0051ED79    push        eax
 0051ED7A    mov         eax,dword ptr [ebp-10]
 0051ED7D    mov         eax,dword ptr [eax+0C]
 0051ED80    mov         edx,dword ptr [eax]
 0051ED82    call        dword ptr [edx+2C]
 0051ED85    mov         edx,eax
 0051ED87    mov         eax,dword ptr [ebp-4]
 0051ED8A    pop         ecx
 0051ED8B    mov         ebx,dword ptr [eax]
 0051ED8D    call        dword ptr [ebx+2C];TBitmap32.sub_0051E43C
 0051ED90    mov         eax,dword ptr [ebp-4]
 0051ED93    mov         edx,dword ptr [eax]
 0051ED95    call        dword ptr [edx+24];TBitmap32.sub_0051E948
 0051ED98    test        al,al
>0051ED9A    je          0051EDA6
 0051ED9C    call        @TryFinallyExit
>0051EDA1    jmp         0051F13C
 0051EDA6    mov         dl,1
 0051EDA8    mov         eax,[0051D7C4];TBitmap32
 0051EDAD    call        TBitmap32.Create;TBitmap32.Create
 0051EDB2    mov         dword ptr [ebp-1C],eax
 0051EDB5    mov         dl,1
 0051EDB7    mov         eax,[0042C8EC];TCanvas
 0051EDBC    call        TCanvas.Create;TCanvas.Create
 0051EDC1    mov         dword ptr [ebp-14],eax
 0051EDC4    xor         eax,eax
 0051EDC6    push        ebp
 0051EDC7    push        51EF28
 0051EDCC    push        dword ptr fs:[eax]
 0051EDCF    mov         dword ptr fs:[eax],esp
 0051EDD2    or          edx,0FFFFFFFF
 0051EDD5    mov         eax,dword ptr [ebp-4]
 0051EDD8    call        0051E97C
 0051EDDD    mov         eax,dword ptr [ebp-4]
 0051EDE0    mov         edx,dword ptr [eax+84];TBitmap32.?f84:HDC
 0051EDE6    mov         eax,dword ptr [ebp-14]
 0051EDE9    call        TCanvas.SetHandle
 0051EDEE    mov         eax,dword ptr [ebp-10]
 0051EDF1    call        004321E0
 0051EDF6    push        eax
 0051EDF7    lea         eax,[ebp-3C]
 0051EDFA    push        eax
 0051EDFB    mov         eax,dword ptr [ebp-10]
 0051EDFE    call        004321B4
 0051EE03    mov         ecx,eax
 0051EE05    xor         edx,edx
 0051EE07    xor         eax,eax
 0051EE09    call        0051DC50
 0051EE0E    lea         ecx,[ebp-3C]
 0051EE11    mov         eax,dword ptr [ebp-10]
 0051EE14    mov         eax,dword ptr [eax+0C]
 0051EE17    mov         edx,dword ptr [ebp-14]
 0051EE1A    mov         ebx,dword ptr [eax]
 0051EE1C    call        dword ptr [ebx+14]
 0051EE1F    mov         eax,dword ptr [ebp-10]
 0051EE22    mov         eax,dword ptr [eax+0C]
 0051EE25    mov         edx,dword ptr [eax]
 0051EE27    call        dword ptr [edx+20]
 0051EE2A    push        eax
 0051EE2B    mov         eax,dword ptr [ebp-10]
 0051EE2E    mov         eax,dword ptr [eax+0C]
 0051EE31    mov         edx,dword ptr [eax]
 0051EE33    call        dword ptr [edx+2C]
 0051EE36    mov         edx,eax
 0051EE38    mov         eax,dword ptr [ebp-1C]
 0051EE3B    pop         ecx
 0051EE3C    mov         ebx,dword ptr [eax]
 0051EE3E    call        dword ptr [ebx+2C];TBitmap32.sub_0051E43C
 0051EE41    mov         edx,0FFFF0000
 0051EE46    mov         eax,dword ptr [ebp-1C]
 0051EE49    call        0051E97C
 0051EE4E    mov         eax,dword ptr [ebp-1C]
 0051EE51    mov         edx,dword ptr [eax+84];TBitmap32.?f84:HDC
 0051EE57    mov         eax,dword ptr [ebp-14]
 0051EE5A    call        TCanvas.SetHandle
 0051EE5F    mov         eax,dword ptr [ebp-10]
 0051EE62    call        004321E0
 0051EE67    push        eax
 0051EE68    lea         eax,[ebp-3C]
 0051EE6B    push        eax
 0051EE6C    mov         eax,dword ptr [ebp-10]
 0051EE6F    call        004321B4
 0051EE74    mov         ecx,eax
 0051EE76    xor         edx,edx
 0051EE78    xor         eax,eax
 0051EE7A    call        0051DC50
 0051EE7F    lea         ecx,[ebp-3C]
 0051EE82    mov         eax,dword ptr [ebp-10]
 0051EE85    mov         eax,dword ptr [eax+0C]
 0051EE88    mov         edx,dword ptr [ebp-14]
 0051EE8B    mov         ebx,dword ptr [eax]
 0051EE8D    call        dword ptr [ebx+14]
 0051EE90    mov         eax,dword ptr [ebp-4]
 0051EE93    mov         eax,dword ptr [eax+40];TBitmap32.?f40:dword
 0051EE96    mov         dword ptr [ebp-8],eax
 0051EE99    mov         eax,dword ptr [ebp-1C]
 0051EE9C    mov         eax,dword ptr [eax+40];TBitmap32.?f40:dword
 0051EE9F    mov         dword ptr [ebp-24],eax
 0051EEA2    mov         eax,dword ptr [ebp-10]
 0051EEA5    call        004321B4
 0051EEAA    mov         ebx,eax
 0051EEAC    mov         eax,dword ptr [ebp-10]
 0051EEAF    call        004321E0
 0051EEB4    imul        ebx,eax
 0051EEB7    dec         ebx
 0051EEB8    test        ebx,ebx
>0051EEBA    jl          0051EF0A
 0051EEBC    inc         ebx
 0051EEBD    mov         dword ptr [ebp-2C],ebx
 0051EEC0    mov         dword ptr [ebp-20],0
 0051EEC7    mov         eax,dword ptr [ebp-8]
 0051EECA    mov         eax,dword ptr [eax]
 0051EECC    and         eax,0FFFFFF
 0051EED1    mov         dword ptr [ebp-0C],eax
 0051EED4    mov         eax,dword ptr [ebp-24]
 0051EED7    mov         eax,dword ptr [eax]
 0051EED9    and         eax,0FFFFFF
 0051EEDE    cmp         eax,dword ptr [ebp-0C]
>0051EEE1    jne         0051EEF2
 0051EEE3    mov         eax,dword ptr [ebp-0C]
 0051EEE6    or          eax,0FF000000
 0051EEEB    mov         edx,dword ptr [ebp-8]
 0051EEEE    mov         dword ptr [edx],eax
>0051EEF0    jmp         0051EEFA
 0051EEF2    mov         eax,dword ptr [ebp-8]
 0051EEF5    mov         edx,dword ptr [ebp-0C]
 0051EEF8    mov         dword ptr [eax],edx
 0051EEFA    add         dword ptr [ebp-24],4
 0051EEFE    add         dword ptr [ebp-8],4
 0051EF02    inc         dword ptr [ebp-20]
 0051EF05    dec         dword ptr [ebp-2C]
>0051EF08    jne         0051EEC7
 0051EF0A    xor         eax,eax
 0051EF0C    pop         edx
 0051EF0D    pop         ecx
 0051EF0E    pop         ecx
 0051EF0F    mov         dword ptr fs:[eax],edx
 0051EF12    push        51EFEB
 0051EF17    mov         eax,dword ptr [ebp-1C]
 0051EF1A    call        TObject.Free
 0051EF1F    mov         eax,dword ptr [ebp-14]
 0051EF22    call        TObject.Free
 0051EF27    ret
>0051EF28    jmp         @HandleFinally
>0051EF2D    jmp         0051EF17
 0051EF2F    mov         eax,dword ptr [ebp-10]
 0051EF32    mov         eax,dword ptr [eax+0C]
 0051EF35    mov         edx,dword ptr [eax]
 0051EF37    call        dword ptr [edx+20]
 0051EF3A    push        eax
 0051EF3B    mov         eax,dword ptr [ebp-10]
 0051EF3E    mov         eax,dword ptr [eax+0C]
 0051EF41    mov         edx,dword ptr [eax]
 0051EF43    call        dword ptr [edx+2C]
 0051EF46    mov         edx,eax
 0051EF48    mov         eax,dword ptr [ebp-4]
 0051EF4B    pop         ecx
 0051EF4C    mov         ebx,dword ptr [eax]
 0051EF4E    call        dword ptr [ebx+2C];TBitmap32.sub_0051E43C
 0051EF51    mov         eax,dword ptr [ebp-4]
 0051EF54    mov         edx,dword ptr [eax]
 0051EF56    call        dword ptr [edx+24];TBitmap32.sub_0051E948
 0051EF59    test        al,al
>0051EF5B    je          0051EF67
 0051EF5D    call        @TryFinallyExit
>0051EF62    jmp         0051F13C
 0051EF67    mov         dl,1
 0051EF69    mov         eax,[0042C8EC];TCanvas
 0051EF6E    call        TCanvas.Create;TCanvas.Create
 0051EF73    mov         dword ptr [ebp-14],eax
 0051EF76    xor         eax,eax
 0051EF78    push        ebp
 0051EF79    push        51EFE4
 0051EF7E    push        dword ptr fs:[eax]
 0051EF81    mov         dword ptr fs:[eax],esp
 0051EF84    mov         eax,dword ptr [ebp-4]
 0051EF87    mov         edx,dword ptr [eax+84];TBitmap32.?f84:HDC
 0051EF8D    mov         eax,dword ptr [ebp-14]
 0051EF90    call        TCanvas.SetHandle
 0051EF95    mov         eax,dword ptr [ebp-10]
 0051EF98    call        004321E0
 0051EF9D    push        eax
 0051EF9E    lea         eax,[ebp-3C]
 0051EFA1    push        eax
 0051EFA2    mov         eax,dword ptr [ebp-10]
 0051EFA5    call        004321B4
 0051EFAA    mov         ecx,eax
 0051EFAC    xor         edx,edx
 0051EFAE    xor         eax,eax
 0051EFB0    call        0051DC50
 0051EFB5    lea         ecx,[ebp-3C]
 0051EFB8    mov         eax,dword ptr [ebp-10]
 0051EFBB    mov         eax,dword ptr [eax+0C]
 0051EFBE    mov         edx,dword ptr [ebp-14]
 0051EFC1    mov         ebx,dword ptr [eax]
 0051EFC3    call        dword ptr [ebx+14]
 0051EFC6    mov         eax,dword ptr [ebp-4]
 0051EFC9    call        0051F6BC
 0051EFCE    xor         eax,eax
 0051EFD0    pop         edx
 0051EFD1    pop         ecx
 0051EFD2    pop         ecx
 0051EFD3    mov         dword ptr fs:[eax],edx
 0051EFD6    push        51EFEB
 0051EFDB    mov         eax,dword ptr [ebp-14]
 0051EFDE    call        TObject.Free
 0051EFE3    ret
>0051EFE4    jmp         @HandleFinally
>0051EFE9    jmp         0051EFDB
 0051EFEB    call        @TryFinallyExit
>0051EFF0    jmp         0051F13C
 0051EFF5    mov         eax,dword ptr [ebp-10]
 0051EFF8    mov         edx,dword ptr ds:[445FA4];TClipboard
 0051EFFE    call        @IsClass
 0051F003    test        al,al
>0051F005    je          0051F10C
 0051F00B    mov         dl,1
 0051F00D    mov         eax,[0042CC9C];TPicture
 0051F012    call        TPicture.Create;TPicture.Create
 0051F017    mov         dword ptr [ebp-18],eax
 0051F01A    xor         eax,eax
 0051F01C    push        ebp
 0051F01D    push        51F0FE
 0051F022    push        dword ptr fs:[eax]
 0051F025    mov         dword ptr fs:[eax],esp
 0051F028    mov         edx,dword ptr [ebp-10]
 0051F02B    mov         eax,dword ptr [ebp-18]
 0051F02E    mov         ecx,dword ptr [eax]
 0051F030    call        dword ptr [ecx+8];TPicture.sub_00431E44
 0051F033    mov         eax,dword ptr [ebp-18]
 0051F036    call        004321E0
 0051F03B    push        eax
 0051F03C    mov         eax,dword ptr [ebp-18]
 0051F03F    call        004321B4
 0051F044    mov         edx,eax
 0051F046    mov         eax,dword ptr [ebp-4]
 0051F049    pop         ecx
 0051F04A    mov         ebx,dword ptr [eax]
 0051F04C    call        dword ptr [ebx+2C];TBitmap32.sub_0051E43C
 0051F04F    mov         eax,dword ptr [ebp-4]
 0051F052    mov         edx,dword ptr [eax]
 0051F054    call        dword ptr [edx+24];TBitmap32.sub_0051E948
 0051F057    test        al,al
>0051F059    je          0051F06A
 0051F05B    call        @TryFinallyExit
 0051F060    call        @TryFinallyExit
>0051F065    jmp         0051F13C
 0051F06A    mov         dl,1
 0051F06C    mov         eax,[0042C8EC];TCanvas
 0051F071    call        TCanvas.Create;TCanvas.Create
 0051F076    mov         dword ptr [ebp-14],eax
 0051F079    xor         eax,eax
 0051F07B    push        ebp
 0051F07C    push        51F0E1
 0051F081    push        dword ptr fs:[eax]
 0051F084    mov         dword ptr fs:[eax],esp
 0051F087    mov         eax,dword ptr [ebp-4]
 0051F08A    mov         edx,dword ptr [eax+84];TBitmap32.?f84:HDC
 0051F090    mov         eax,dword ptr [ebp-14]
 0051F093    call        TCanvas.SetHandle
 0051F098    mov         eax,dword ptr [ebp-4]
 0051F09B    mov         eax,dword ptr [eax+30];TBitmap32.?f30:Integer
 0051F09E    push        eax
 0051F09F    lea         eax,[ebp-3C]
 0051F0A2    push        eax
 0051F0A3    mov         eax,dword ptr [ebp-4]
 0051F0A6    mov         ecx,dword ptr [eax+34];TBitmap32.?f34:Single
 0051F0A9    xor         edx,edx
 0051F0AB    xor         eax,eax
 0051F0AD    call        0051DC50
 0051F0B2    lea         ecx,[ebp-3C]
 0051F0B5    mov         eax,dword ptr [ebp-18]
 0051F0B8    mov         eax,dword ptr [eax+0C];TPicture.FGraphic:TGraphic
 0051F0BB    mov         edx,dword ptr [ebp-14]
 0051F0BE    mov         ebx,dword ptr [eax]
 0051F0C0    call        dword ptr [ebx+14];@AbstractError
 0051F0C3    mov         eax,dword ptr [ebp-4]
 0051F0C6    call        0051F6BC
 0051F0CB    xor         eax,eax
 0051F0CD    pop         edx
 0051F0CE    pop         ecx
 0051F0CF    pop         ecx
 0051F0D0    mov         dword ptr fs:[eax],edx
 0051F0D3    push        51F0E8
 0051F0D8    mov         eax,dword ptr [ebp-14]
 0051F0DB    call        TObject.Free
 0051F0E0    ret
>0051F0E1    jmp         @HandleFinally
>0051F0E6    jmp         0051F0D8
 0051F0E8    xor         eax,eax
 0051F0EA    pop         edx
 0051F0EB    pop         ecx
 0051F0EC    pop         ecx
 0051F0ED    mov         dword ptr fs:[eax],edx
 0051F0F0    push        51F105
 0051F0F5    mov         eax,dword ptr [ebp-18]
 0051F0F8    call        TObject.Free
 0051F0FD    ret
>0051F0FE    jmp         @HandleFinally
>0051F103    jmp         0051F0F5
 0051F105    call        @TryFinallyExit
>0051F10A    jmp         0051F13C
 0051F10C    mov         edx,dword ptr [ebp-10]
 0051F10F    mov         eax,dword ptr [ebp-4]
 0051F112    call        00420AD4
 0051F117    xor         eax,eax
 0051F119    pop         edx
 0051F11A    pop         ecx
 0051F11B    pop         ecx
 0051F11C    mov         dword ptr fs:[eax],edx
 0051F11F    push        51F13C
 0051F124    mov         eax,dword ptr [ebp-4]
 0051F127    mov         edx,dword ptr [eax]
 0051F129    call        dword ptr [edx+14];TBitmap32.sub_0051E220
 0051F12C    mov         eax,dword ptr [ebp-4]
 0051F12F    mov         edx,dword ptr [eax]
 0051F131    call        dword ptr [edx+0C];TBitmap32.sub_005230BC
 0051F134    ret
>0051F135    jmp         @HandleFinally
>0051F13A    jmp         0051F124
 0051F13C    pop         ebx
 0051F13D    mov         esp,ebp
 0051F13F    pop         ebp
 0051F140    ret
end;*}

//0051F144
{*procedure sub_0051F144(?:?);
begin
 0051F144    push        ebp
 0051F145    mov         ebp,esp
 0051F147    add         esp,0FFFFFFF8
 0051F14A    push        ebx
 0051F14B    mov         dword ptr [ebp-8],edx
 0051F14E    mov         dword ptr [ebp-4],eax
 0051F151    mov         eax,dword ptr [ebp-4]
 0051F154    mov         ecx,dword ptr [eax+30];TBitmap32.?f30:Integer
 0051F157    mov         eax,dword ptr [ebp-4]
 0051F15A    mov         edx,dword ptr [eax+34];TBitmap32.?f34:Single
 0051F15D    mov         eax,dword ptr [ebp-8]
 0051F160    mov         ebx,dword ptr [eax]
 0051F162    call        dword ptr [ebx+2C]
 0051F165    mov         eax,dword ptr [ebp-4]
 0051F168    mov         edx,dword ptr [eax]
 0051F16A    call        dword ptr [edx+24];TBitmap32.sub_0051E948
 0051F16D    test        al,al
>0051F16F    jne         0051F18F
 0051F171    mov         eax,dword ptr [ebp-4]
 0051F174    mov         ecx,dword ptr [eax+34];TBitmap32.?f34:Single
 0051F177    mov         eax,dword ptr [ebp-4]
 0051F17A    imul        ecx,dword ptr [eax+30];TBitmap32.?f30:Integer
 0051F17E    mov         eax,dword ptr [ebp-8]
 0051F181    mov         edx,dword ptr [eax+40]
 0051F184    mov         eax,dword ptr [ebp-4]
 0051F187    mov         eax,dword ptr [eax+40];TBitmap32.?f40:dword
 0051F18A    call        00513030
 0051F18F    pop         ebx
 0051F190    pop         ecx
 0051F191    pop         ecx
 0051F192    pop         ebp
 0051F193    ret
end;*}

//0051F194
{*procedure sub_0051F194(?:?);
begin
 0051F194    push        ebp
 0051F195    mov         ebp,esp
 0051F197    add         esp,0FFFFFFF4
 0051F19A    xor         ecx,ecx
 0051F19C    mov         dword ptr [ebp-0C],ecx
 0051F19F    mov         dword ptr [ebp-8],edx
 0051F1A2    mov         dword ptr [ebp-4],eax
 0051F1A5    xor         eax,eax
 0051F1A7    push        ebp
 0051F1A8    push        51F26C
 0051F1AD    push        dword ptr fs:[eax]
 0051F1B0    mov         dword ptr fs:[eax],esp
 0051F1B3    mov         eax,dword ptr [ebp-4]
 0051F1B6    mov         dl,byte ptr [eax+79];TBitmap32.DrawMode:TDrawMode
 0051F1B9    mov         eax,dword ptr [ebp-8]
 0051F1BC    call        TBitmap32.SetDrawMode
 0051F1C1    mov         eax,dword ptr [ebp-4]
 0051F1C4    mov         dl,byte ptr [eax+7A];TBitmap32.CombineMode:TCombineMode
 0051F1C7    mov         eax,dword ptr [ebp-8]
 0051F1CA    call        TBitmap32.SetCombineMode
 0051F1CF    mov         eax,dword ptr [ebp-4]
 0051F1D2    mov         dl,byte ptr [eax+7B];TBitmap32.WrapMode:TWrapMode
 0051F1D5    mov         eax,dword ptr [ebp-8]
 0051F1D8    call        TBitmap32.SetWrapMode
 0051F1DD    mov         eax,dword ptr [ebp-4]
 0051F1E0    mov         edx,dword ptr [eax+0B4];TBitmap32.MasterAlpha:Cardinal
 0051F1E6    mov         eax,dword ptr [ebp-8]
 0051F1E9    call        TBitmap32.SetMasterAlpha
 0051F1EE    mov         eax,dword ptr [ebp-4]
 0051F1F1    mov         eax,dword ptr [eax+0B8];TBitmap32.OuterColor:TColor32
 0051F1F7    mov         edx,dword ptr [ebp-8]
 0051F1FA    mov         dword ptr [edx+0B8],eax
 0051F200    lea         edx,[ebp-0C]
 0051F203    mov         eax,dword ptr [ebp-4]
 0051F206    call        TBitmap32.GetResamplerClassName
 0051F20B    mov         edx,dword ptr [ebp-0C]
 0051F20E    mov         eax,dword ptr [ebp-8]
 0051F211    call        TBitmap32.SetResamplerClassName
 0051F216    mov         eax,dword ptr [ebp-8]
 0051F219    cmp         dword ptr [eax+0F4],0
>0051F220    je          0051F245
 0051F222    mov         eax,dword ptr [ebp-4]
 0051F225    cmp         dword ptr [eax+0F4],0;TBitmap32.Resampler:TCustomResampler
>0051F22C    je          0051F245
 0051F22E    mov         eax,dword ptr [ebp-4]
 0051F231    mov         edx,dword ptr [eax+0F4];TBitmap32.Resampler:TCustomResampler
 0051F237    mov         eax,dword ptr [ebp-8]
 0051F23A    mov         eax,dword ptr [eax+0F4]
 0051F240    mov         ecx,dword ptr [eax]
 0051F242    call        dword ptr [ecx+8]
 0051F245    mov         eax,dword ptr [ebp-4]
 0051F248    mov         edx,dword ptr [eax+7C];TBitmap32.?f7C:TFont
 0051F24B    mov         eax,dword ptr [ebp-8]
 0051F24E    mov         eax,dword ptr [eax+7C]
 0051F251    mov         ecx,dword ptr [eax]
 0051F253    call        dword ptr [ecx+8]
 0051F256    xor         eax,eax
 0051F258    pop         edx
 0051F259    pop         ecx
 0051F25A    pop         ecx
 0051F25B    mov         dword ptr fs:[eax],edx
 0051F25E    push        51F273
 0051F263    lea         eax,[ebp-0C]
 0051F266    call        @LStrClr
 0051F26B    ret
>0051F26C    jmp         @HandleFinally
>0051F271    jmp         0051F263
 0051F273    mov         esp,ebp
 0051F275    pop         ebp
 0051F276    ret
end;*}

//0051F278
{*procedure sub_0051F278(?:TBitmap; ?:?);
begin
 0051F278    push        ebp
 0051F279    mov         ebp,esp
 0051F27B    push        ecx
 0051F27C    mov         dword ptr [ebp-4],eax
 0051F27F    xor         edx,edx
 0051F281    mov         eax,dword ptr [ebp-4]
 0051F284    mov         ecx,dword ptr [eax]
 0051F286    call        dword ptr [ecx+6C]
 0051F289    mov         dl,7
 0051F28B    mov         eax,dword ptr [ebp-4]
 0051F28E    call        00435E00
 0051F293    mov         eax,dword ptr [ebp-4]
 0051F296    call        0043498C
 0051F29B    mov         eax,dword ptr [eax+0C]
 0051F29E    mov         edx,dword ptr [ebp+8]
 0051F2A1    mov         edx,dword ptr [edx-4]
 0051F2A4    mov         edx,dword ptr [edx+7C]
 0051F2A7    mov         ecx,dword ptr [eax]
 0051F2A9    call        dword ptr [ecx+8]
 0051F2AC    mov         eax,dword ptr [ebp+8]
 0051F2AF    mov         eax,dword ptr [eax-4]
 0051F2B2    mov         edx,dword ptr [eax+34]
 0051F2B5    mov         eax,dword ptr [ebp-4]
 0051F2B8    mov         ecx,dword ptr [eax]
 0051F2BA    call        dword ptr [ecx+40]
 0051F2BD    mov         eax,dword ptr [ebp+8]
 0051F2C0    mov         eax,dword ptr [eax-4]
 0051F2C3    mov         edx,dword ptr [eax+30]
 0051F2C6    mov         eax,dword ptr [ebp-4]
 0051F2C9    mov         ecx,dword ptr [eax]
 0051F2CB    call        dword ptr [ecx+34]
 0051F2CE    push        0
 0051F2D0    mov         eax,dword ptr [ebp-4]
 0051F2D3    call        0043498C
 0051F2D8    call        0042F6A0
 0051F2DD    mov         edx,eax
 0051F2DF    mov         eax,dword ptr [ebp+8]
 0051F2E2    mov         eax,dword ptr [eax-4]
 0051F2E5    xor         ecx,ecx
 0051F2E7    call        0051F650
 0051F2EC    pop         ecx
 0051F2ED    pop         ebp
 0051F2EE    ret
end;*}

//0051F2F0
{*procedure sub_0051F2F0(?:?);
begin
 0051F2F0    push        ebp
 0051F2F1    mov         ebp,esp
 0051F2F3    add         esp,0FFFFFFF4
 0051F2F6    mov         dword ptr [ebp-8],edx
 0051F2F9    mov         dword ptr [ebp-4],eax
 0051F2FC    mov         eax,dword ptr [ebp-8]
 0051F2FF    mov         edx,dword ptr ds:[42CC9C];TPicture
 0051F305    call        @IsClass
 0051F30A    test        al,al
>0051F30C    je          0051F322
 0051F30E    push        ebp
 0051F30F    mov         eax,dword ptr [ebp-8]
 0051F312    call        00431BA8
 0051F317    call        0051F278
 0051F31C    pop         ecx
>0051F31D    jmp         0051F3AC
 0051F322    mov         eax,dword ptr [ebp-8]
 0051F325    mov         edx,dword ptr ds:[42CF48];TBitmap
 0051F32B    call        @IsClass
 0051F330    test        al,al
>0051F332    je          0051F340
 0051F334    push        ebp
 0051F335    mov         eax,dword ptr [ebp-8]
 0051F338    call        0051F278
 0051F33D    pop         ecx
>0051F33E    jmp         0051F3AC
 0051F340    mov         eax,dword ptr [ebp-8]
 0051F343    mov         edx,dword ptr ds:[445FA4];TClipboard
 0051F349    call        @IsClass
 0051F34E    test        al,al
>0051F350    je          0051F3A1
 0051F352    mov         dl,1
 0051F354    mov         eax,[0042CF48];TBitmap
 0051F359    call        TBitmap.Create;TBitmap.Create
 0051F35E    mov         dword ptr [ebp-0C],eax
 0051F361    xor         eax,eax
 0051F363    push        ebp
 0051F364    push        51F39A
 0051F369    push        dword ptr fs:[eax]
 0051F36C    mov         dword ptr fs:[eax],esp
 0051F36F    push        ebp
 0051F370    mov         eax,dword ptr [ebp-0C]
 0051F373    call        0051F278
 0051F378    pop         ecx
 0051F379    mov         edx,dword ptr [ebp-0C]
 0051F37C    mov         eax,dword ptr [ebp-8]
 0051F37F    mov         ecx,dword ptr [eax]
 0051F381    call        dword ptr [ecx+8]
 0051F384    xor         eax,eax
 0051F386    pop         edx
 0051F387    pop         ecx
 0051F388    pop         ecx
 0051F389    mov         dword ptr fs:[eax],edx
 0051F38C    push        51F3AC
 0051F391    mov         eax,dword ptr [ebp-0C]
 0051F394    call        TObject.Free
 0051F399    ret
>0051F39A    jmp         @HandleFinally
>0051F39F    jmp         0051F391
 0051F3A1    mov         edx,dword ptr [ebp-8]
 0051F3A4    mov         eax,dword ptr [ebp-4]
 0051F3A7    call        00420BD8
 0051F3AC    mov         esp,ebp
 0051F3AE    pop         ebp
 0051F3AF    ret
end;*}

//0051F3B0
{*function sub_0051F3B0(?:?):?;
begin
 0051F3B0    push        ebp
 0051F3B1    mov         ebp,esp
 0051F3B3    add         esp,0FFFFFFF8
 0051F3B6    mov         dword ptr [ebp-4],eax
 0051F3B9    mov         eax,dword ptr [ebp-4]
 0051F3BC    cmp         dword ptr [eax+44],0
>0051F3C0    jne         0051F3FB
 0051F3C2    mov         dl,1
 0051F3C4    mov         eax,[0042C8EC];TCanvas
 0051F3C9    call        TCanvas.Create;TCanvas.Create
 0051F3CE    mov         edx,dword ptr [ebp-4]
 0051F3D1    mov         dword ptr [edx+44],eax
 0051F3D4    mov         eax,dword ptr [ebp-4]
 0051F3D7    mov         edx,dword ptr [eax+84]
 0051F3DD    mov         eax,dword ptr [ebp-4]
 0051F3E0    mov         eax,dword ptr [eax+44]
 0051F3E3    call        TCanvas.SetHandle
 0051F3E8    mov         eax,dword ptr [ebp-4]
 0051F3EB    mov         eax,dword ptr [eax+44]
 0051F3EE    mov         edx,dword ptr [ebp-4]
 0051F3F1    mov         dword ptr [eax+2C],edx
 0051F3F4    mov         dword ptr [eax+28],51F40C;sub_0051F40C
 0051F3FB    mov         eax,dword ptr [ebp-4]
 0051F3FE    mov         eax,dword ptr [eax+44]
 0051F401    mov         dword ptr [ebp-8],eax
 0051F404    mov         eax,dword ptr [ebp-8]
 0051F407    pop         ecx
 0051F408    pop         ecx
 0051F409    pop         ebp
 0051F40A    ret
end;*}

//0051F40C
{*procedure sub_0051F40C(?:?; ?:?);
begin
 0051F40C    push        ebp
 0051F40D    mov         ebp,esp
 0051F40F    add         esp,0FFFFFFF8
 0051F412    mov         dword ptr [ebp-8],edx
 0051F415    mov         dword ptr [ebp-4],eax
 0051F418    mov         eax,dword ptr [ebp-4]
 0051F41B    mov         edx,dword ptr [eax]
 0051F41D    call        dword ptr [edx+0C]
 0051F420    pop         ecx
 0051F421    pop         ecx
 0051F422    pop         ebp
 0051F423    ret
end;*}

//0051F424
procedure sub_0051F424(?:TBitmap32);
begin
{*
 0051F424    push        ebp
 0051F425    mov         ebp,esp
 0051F427    push        ecx
 0051F428    mov         dword ptr [ebp-4],eax
 0051F42B    mov         eax,dword ptr [ebp-4]
 0051F42E    cmp         dword ptr [eax+44],0;TBitmap32.?f44:dword
>0051F432    je          0051F454
 0051F434    xor         edx,edx
 0051F436    mov         eax,dword ptr [ebp-4]
 0051F439    mov         eax,dword ptr [eax+44];TBitmap32.?f44:dword
 0051F43C    call        TCanvas.SetHandle
 0051F441    mov         eax,dword ptr [ebp-4]
 0051F444    mov         eax,dword ptr [eax+44];TBitmap32.?f44:dword
 0051F447    call        TObject.Free
 0051F44C    mov         eax,dword ptr [ebp-4]
 0051F44F    xor         edx,edx
 0051F451    mov         dword ptr [eax+44],edx;TBitmap32.?f44:dword
 0051F454    pop         ecx
 0051F455    pop         ebp
 0051F456    ret
*}
end;

//0051F458
{*procedure sub_0051F458(?:?; ?:?; ?:?; ?:?);
begin
 0051F458    push        ebp
 0051F459    mov         ebp,esp
 0051F45B    add         esp,0FFFFFFF4
 0051F45E    mov         dword ptr [ebp-0C],ecx
 0051F461    mov         dword ptr [ebp-8],edx
 0051F464    mov         dword ptr [ebp-4],eax
 0051F467    mov         eax,dword ptr [ebp-8]
 0051F46A    mov         edx,dword ptr [ebp-4]
 0051F46D    cmp         eax,dword ptr [edx+48]
>0051F470    jl          0051F4AB
 0051F472    mov         eax,dword ptr [ebp-8]
 0051F475    mov         edx,dword ptr [ebp-4]
 0051F478    cmp         eax,dword ptr [edx+50]
>0051F47B    jge         0051F4AB
 0051F47D    mov         eax,dword ptr [ebp-0C]
 0051F480    mov         edx,dword ptr [ebp-4]
 0051F483    cmp         eax,dword ptr [edx+4C]
>0051F486    jl          0051F4AB
 0051F488    mov         eax,dword ptr [ebp-0C]
 0051F48B    mov         edx,dword ptr [ebp-4]
 0051F48E    cmp         eax,dword ptr [edx+54]
>0051F491    jge         0051F4AB
 0051F493    mov         eax,dword ptr [ebp-0C]
 0051F496    mov         edx,dword ptr [ebp-4]
 0051F499    imul        dword ptr [edx+34]
 0051F49C    add         eax,dword ptr [ebp-8]
 0051F49F    mov         edx,dword ptr [ebp-4]
 0051F4A2    mov         edx,dword ptr [edx+40]
 0051F4A5    mov         ecx,dword ptr [ebp+8]
 0051F4A8    mov         dword ptr [edx+eax*4],ecx
 0051F4AB    mov         esp,ebp
 0051F4AD    pop         ebp
 0051F4AE    ret         4
end;*}

//0051F4B4
{*function sub_0051F4B4(?:dword; ?:Int64):?;
begin
 0051F4B4    push        ebp
 0051F4B5    mov         ebp,esp
 0051F4B7    add         esp,0FFFFFFF4
 0051F4BA    mov         dword ptr [ebp-8],edx
 0051F4BD    mov         dword ptr [ebp-4],eax
 0051F4C0    mov         eax,dword ptr [ebp-8]
 0051F4C3    mov         edx,dword ptr [ebp-4]
 0051F4C6    imul        dword ptr [edx+34]
 0051F4C9    mov         edx,dword ptr [ebp-4]
 0051F4CC    mov         edx,dword ptr [edx+40]
 0051F4CF    lea         eax,[edx+eax*4]
 0051F4D2    mov         dword ptr [ebp-0C],eax
 0051F4D5    mov         eax,dword ptr [ebp-0C]
 0051F4D8    mov         esp,ebp
 0051F4DA    pop         ebp
 0051F4DB    ret
end;*}

//0051F4DC
{*function sub_0051F4DC(?:dword; ?:?; ?:?):?;
begin
 0051F4DC    push        ebp
 0051F4DD    mov         ebp,esp
 0051F4DF    add         esp,0FFFFFFF0
 0051F4E2    mov         dword ptr [ebp-0C],ecx
 0051F4E5    mov         dword ptr [ebp-8],edx
 0051F4E8    mov         dword ptr [ebp-4],eax
 0051F4EB    mov         eax,dword ptr [ebp-0C]
 0051F4EE    mov         edx,dword ptr [ebp-4]
 0051F4F1    imul        dword ptr [edx+34]
 0051F4F4    add         eax,dword ptr [ebp-8]
 0051F4F7    mov         edx,dword ptr [ebp-4]
 0051F4FA    mov         edx,dword ptr [edx+40]
 0051F4FD    mov         eax,dword ptr [edx+eax*4]
 0051F500    mov         dword ptr [ebp-10],eax
 0051F503    mov         eax,dword ptr [ebp-10]
 0051F506    mov         esp,ebp
 0051F508    pop         ebp
 0051F509    ret
end;*}

//0051F50C
{*function sub_0051F50C(?:?; ?:?; ?:?):?;
begin
 0051F50C    push        ebp
 0051F50D    mov         ebp,esp
 0051F50F    add         esp,0FFFFFFF0
 0051F512    mov         dword ptr [ebp-0C],ecx
 0051F515    mov         dword ptr [ebp-8],edx
 0051F518    mov         dword ptr [ebp-4],eax
 0051F51B    mov         eax,dword ptr [ebp-8]
 0051F51E    mov         edx,dword ptr [ebp-4]
 0051F521    cmp         eax,dword ptr [edx+48]
>0051F524    jl          0051F561
 0051F526    mov         eax,dword ptr [ebp-8]
 0051F529    mov         edx,dword ptr [ebp-4]
 0051F52C    cmp         eax,dword ptr [edx+50]
>0051F52F    jge         0051F561
 0051F531    mov         eax,dword ptr [ebp-0C]
 0051F534    mov         edx,dword ptr [ebp-4]
 0051F537    cmp         eax,dword ptr [edx+4C]
>0051F53A    jl          0051F561
 0051F53C    mov         eax,dword ptr [ebp-0C]
 0051F53F    mov         edx,dword ptr [ebp-4]
 0051F542    cmp         eax,dword ptr [edx+54]
>0051F545    jge         0051F561
 0051F547    mov         eax,dword ptr [ebp-0C]
 0051F54A    mov         edx,dword ptr [ebp-4]
 0051F54D    imul        dword ptr [edx+34]
 0051F550    add         eax,dword ptr [ebp-8]
 0051F553    mov         edx,dword ptr [ebp-4]
 0051F556    mov         edx,dword ptr [edx+40]
 0051F559    mov         eax,dword ptr [edx+eax*4]
 0051F55C    mov         dword ptr [ebp-10],eax
>0051F55F    jmp         0051F56D
 0051F561    mov         eax,dword ptr [ebp-4]
 0051F564    mov         eax,dword ptr [eax+0B8]
 0051F56A    mov         dword ptr [ebp-10],eax
 0051F56D    mov         eax,dword ptr [ebp-10]
 0051F570    mov         esp,ebp
 0051F572    pop         ebp
 0051F573    ret
end;*}

//0051F574
{*function sub_0051F574(?:dword; ?:?; ?:?):?;
begin
 0051F574    push        ebp
 0051F575    mov         ebp,esp
 0051F577    add         esp,0FFFFFFF0
 0051F57A    mov         dword ptr [ebp-0C],ecx
 0051F57D    mov         dword ptr [ebp-8],edx
 0051F580    mov         dword ptr [ebp-4],eax
 0051F583    mov         eax,dword ptr [ebp-0C]
 0051F586    mov         edx,dword ptr [ebp-4]
 0051F589    imul        dword ptr [edx+34]
 0051F58C    add         eax,dword ptr [ebp-8]
 0051F58F    mov         edx,dword ptr [ebp-4]
 0051F592    mov         edx,dword ptr [edx+40]
 0051F595    lea         eax,[edx+eax*4]
 0051F598    mov         dword ptr [ebp-10],eax
 0051F59B    mov         eax,dword ptr [ebp-10]
 0051F59E    mov         esp,ebp
 0051F5A0    pop         ebp
 0051F5A1    ret
end;*}

//0051F5A4
{*procedure sub_0051F5A4(?:TBitmap32; ?:?; ?:?; ?:?);
begin
 0051F5A4    push        ebp
 0051F5A5    mov         ebp,esp
 0051F5A7    add         esp,0FFFFFFE4
 0051F5AA    mov         dword ptr [ebp-0C],ecx
 0051F5AD    mov         dword ptr [ebp-8],edx
 0051F5B0    mov         dword ptr [ebp-4],eax
 0051F5B3    mov         eax,dword ptr [ebp-8]
 0051F5B6    add         eax,48
 0051F5B9    push        eax
 0051F5BA    mov         eax,dword ptr [ebp-4]
 0051F5BD    push        eax
 0051F5BE    lea         edx,[ebp-1C]
 0051F5C1    mov         eax,dword ptr [ebp-4]
 0051F5C4    call        00522F30
 0051F5C9    lea         eax,[ebp-1C]
 0051F5CC    push        eax
 0051F5CD    mov         eax,dword ptr [ebp-4]
 0051F5D0    mov         al,byte ptr [eax+79]
 0051F5D3    push        eax
 0051F5D4    mov         eax,dword ptr [ebp-4]
 0051F5D7    push        dword ptr [eax+0DC]
 0051F5DD    push        dword ptr [eax+0D8]
 0051F5E3    mov         ecx,dword ptr [ebp+8]
 0051F5E6    mov         edx,dword ptr [ebp-0C]
 0051F5E9    mov         eax,dword ptr [ebp-8]
 0051F5EC    call        00517118
 0051F5F1    mov         esp,ebp
 0051F5F3    pop         ebp
 0051F5F4    ret         4
end;*}

//0051F5F8
{*procedure sub_0051F5F8(?:TBitmap32; ?:?; ?:?);
begin
 0051F5F8    push        ebp
 0051F5F9    mov         ebp,esp
 0051F5FB    add         esp,0FFFFFFE4
 0051F5FE    mov         dword ptr [ebp-0C],ecx
 0051F601    mov         dword ptr [ebp-8],edx
 0051F604    mov         dword ptr [ebp-4],eax
 0051F607    mov         eax,dword ptr [ebp-4]
 0051F60A    push        eax
 0051F60B    lea         edx,[ebp-1C]
 0051F60E    mov         eax,dword ptr [ebp-4]
 0051F611    call        00522F30
 0051F616    lea         eax,[ebp-1C]
 0051F619    push        eax
 0051F61A    mov         eax,dword ptr [ebp-4]
 0051F61D    mov         eax,dword ptr [eax+0F4]
 0051F623    push        eax
 0051F624    mov         eax,dword ptr [ebp-4]
 0051F627    mov         al,byte ptr [eax+79]
 0051F62A    push        eax
 0051F62B    mov         eax,dword ptr [ebp-4]
 0051F62E    push        dword ptr [eax+0DC]
 0051F634    push        dword ptr [eax+0D8]
 0051F63A    mov         edx,dword ptr [ebp-0C]
 0051F63D    mov         eax,dword ptr [ebp-8]
 0051F640    lea         ecx,[eax+48]
 0051F643    mov         eax,dword ptr [ebp-8]
 0051F646    call        00519668
 0051F64B    mov         esp,ebp
 0051F64D    pop         ebp
 0051F64E    ret
end;*}

//0051F650
{*procedure sub_0051F650(?:?; ?:?; ?:?; ?:?);
begin
 0051F650    push        ebp
 0051F651    mov         ebp,esp
 0051F653    add         esp,0FFFFFFF4
 0051F656    mov         dword ptr [ebp-0C],ecx
 0051F659    mov         dword ptr [ebp-8],edx
 0051F65C    mov         dword ptr [ebp-4],eax
 0051F65F    mov         eax,dword ptr [ebp-4]
 0051F662    mov         edx,dword ptr [eax]
 0051F664    call        dword ptr [edx+24]
 0051F667    test        al,al
>0051F669    jne         0051F6B3
 0051F66B    push        0CC0020
 0051F670    push        0
 0051F672    mov         eax,dword ptr [ebp-4]
 0051F675    add         eax,88
 0051F67A    push        eax
 0051F67B    mov         eax,dword ptr [ebp-4]
 0051F67E    mov         eax,dword ptr [eax+40]
 0051F681    push        eax
 0051F682    mov         eax,dword ptr [ebp-4]
 0051F685    mov         eax,dword ptr [eax+30]
 0051F688    push        eax
 0051F689    mov         eax,dword ptr [ebp-4]
 0051F68C    mov         eax,dword ptr [eax+34]
 0051F68F    push        eax
 0051F690    push        0
 0051F692    push        0
 0051F694    mov         eax,dword ptr [ebp-4]
 0051F697    mov         eax,dword ptr [eax+30]
 0051F69A    push        eax
 0051F69B    mov         eax,dword ptr [ebp-4]
 0051F69E    mov         eax,dword ptr [eax+34]
 0051F6A1    push        eax
 0051F6A2    mov         eax,dword ptr [ebp+8]
 0051F6A5    push        eax
 0051F6A6    mov         eax,dword ptr [ebp-0C]
 0051F6A9    push        eax
 0051F6AA    mov         eax,dword ptr [ebp-8]
 0051F6AD    push        eax
 0051F6AE    call        gdi32.StretchDIBits
 0051F6B3    mov         esp,ebp
 0051F6B5    pop         ebp
 0051F6B6    ret         4
end;*}

//0051F6BC
procedure sub_0051F6BC(?:TBitmap32);
begin
{*
 0051F6BC    push        ebp
 0051F6BD    mov         ebp,esp
 0051F6BF    push        ecx
 0051F6C0    mov         dword ptr [ebp-4],eax
 0051F6C3    mov         dl,0FF
 0051F6C5    mov         eax,dword ptr [ebp-4]
 0051F6C8    call        0051F6D0
 0051F6CD    pop         ecx
 0051F6CE    pop         ebp
 0051F6CF    ret
*}
end;

//0051F6D0
{*procedure sub_0051F6D0(?:TBitmap32; ?:?);
begin
 0051F6D0    push        ebp
 0051F6D1    mov         ebp,esp
 0051F6D3    add         esp,0FFFFFFF0
 0051F6D6    mov         byte ptr [ebp-5],dl
 0051F6D9    mov         dword ptr [ebp-4],eax
 0051F6DC    mov         eax,dword ptr [ebp-4]
 0051F6DF    cmp         byte ptr [eax+0F0],0;TBitmap32.?fF0:byte
>0051F6E6    jne         0051F846
 0051F6EC    mov         eax,dword ptr [ebp-4]
 0051F6EF    mov         eax,dword ptr [eax+40];TBitmap32.?f40:dword
 0051F6F2    mov         dword ptr [ebp-10],eax
 0051F6F5    add         dword ptr [ebp-10],3
 0051F6F9    mov         eax,dword ptr [ebp-4]
 0051F6FC    mov         eax,dword ptr [eax+34];TBitmap32.?f34:Single
 0051F6FF    mov         edx,dword ptr [ebp-4]
 0051F702    imul        dword ptr [edx+30];TBitmap32.?f30:Integer
 0051F705    mov         dword ptr [ebp-0C],eax
 0051F708    cmp         dword ptr [ebp-0C],10
>0051F70C    jle         0051F827
 0051F712    mov         eax,dword ptr [ebp-0C]
 0051F715    shl         eax,2
 0051F718    sub         eax,40
 0051F71B    mov         dword ptr [ebp-0C],eax
 0051F71E    mov         eax,dword ptr [ebp-0C]
 0051F721    add         dword ptr [ebp-10],eax
 0051F724    neg         dword ptr [ebp-0C]
 0051F727    mov         al,byte ptr [ebp-5]
 0051F72A    mov         edx,dword ptr [ebp-0C]
 0051F72D    mov         ecx,dword ptr [ebp-10]
 0051F730    mov         byte ptr [ecx+edx],al
 0051F733    mov         al,byte ptr [ebp-5]
 0051F736    mov         edx,dword ptr [ebp-0C]
 0051F739    mov         ecx,dword ptr [ebp-10]
 0051F73C    mov         byte ptr [ecx+edx+4],al
 0051F740    mov         al,byte ptr [ebp-5]
 0051F743    mov         edx,dword ptr [ebp-0C]
 0051F746    mov         ecx,dword ptr [ebp-10]
 0051F749    mov         byte ptr [ecx+edx+8],al
 0051F74D    mov         al,byte ptr [ebp-5]
 0051F750    mov         edx,dword ptr [ebp-0C]
 0051F753    mov         ecx,dword ptr [ebp-10]
 0051F756    mov         byte ptr [ecx+edx+0C],al
 0051F75A    mov         al,byte ptr [ebp-5]
 0051F75D    mov         edx,dword ptr [ebp-0C]
 0051F760    mov         ecx,dword ptr [ebp-10]
 0051F763    mov         byte ptr [ecx+edx+10],al
 0051F767    mov         al,byte ptr [ebp-5]
 0051F76A    mov         edx,dword ptr [ebp-0C]
 0051F76D    mov         ecx,dword ptr [ebp-10]
 0051F770    mov         byte ptr [ecx+edx+14],al
 0051F774    mov         al,byte ptr [ebp-5]
 0051F777    mov         edx,dword ptr [ebp-0C]
 0051F77A    mov         ecx,dword ptr [ebp-10]
 0051F77D    mov         byte ptr [ecx+edx+18],al
 0051F781    mov         al,byte ptr [ebp-5]
 0051F784    mov         edx,dword ptr [ebp-0C]
 0051F787    mov         ecx,dword ptr [ebp-10]
 0051F78A    mov         byte ptr [ecx+edx+1C],al
 0051F78E    mov         al,byte ptr [ebp-5]
 0051F791    mov         edx,dword ptr [ebp-0C]
 0051F794    mov         ecx,dword ptr [ebp-10]
 0051F797    mov         byte ptr [ecx+edx+20],al
 0051F79B    mov         al,byte ptr [ebp-5]
 0051F79E    mov         edx,dword ptr [ebp-0C]
 0051F7A1    mov         ecx,dword ptr [ebp-10]
 0051F7A4    mov         byte ptr [ecx+edx+24],al
 0051F7A8    mov         al,byte ptr [ebp-5]
 0051F7AB    mov         edx,dword ptr [ebp-0C]
 0051F7AE    mov         ecx,dword ptr [ebp-10]
 0051F7B1    mov         byte ptr [ecx+edx+28],al
 0051F7B5    mov         al,byte ptr [ebp-5]
 0051F7B8    mov         edx,dword ptr [ebp-0C]
 0051F7BB    mov         ecx,dword ptr [ebp-10]
 0051F7BE    mov         byte ptr [ecx+edx+2C],al
 0051F7C2    mov         al,byte ptr [ebp-5]
 0051F7C5    mov         edx,dword ptr [ebp-0C]
 0051F7C8    mov         ecx,dword ptr [ebp-10]
 0051F7CB    mov         byte ptr [ecx+edx+30],al
 0051F7CF    mov         al,byte ptr [ebp-5]
 0051F7D2    mov         edx,dword ptr [ebp-0C]
 0051F7D5    mov         ecx,dword ptr [ebp-10]
 0051F7D8    mov         byte ptr [ecx+edx+34],al
 0051F7DC    mov         al,byte ptr [ebp-5]
 0051F7DF    mov         edx,dword ptr [ebp-0C]
 0051F7E2    mov         ecx,dword ptr [ebp-10]
 0051F7E5    mov         byte ptr [ecx+edx+38],al
 0051F7E9    mov         al,byte ptr [ebp-5]
 0051F7EC    mov         edx,dword ptr [ebp-0C]
 0051F7EF    mov         ecx,dword ptr [ebp-10]
 0051F7F2    mov         byte ptr [ecx+edx+3C],al
 0051F7F6    add         dword ptr [ebp-0C],40
 0051F7FA    cmp         dword ptr [ebp-0C],0
>0051F7FE    jle         0051F727
 0051F804    sub         dword ptr [ebp-0C],40
 0051F808    cmp         dword ptr [ebp-0C],0
>0051F80C    jge         0051F846
 0051F80E    mov         al,byte ptr [ebp-5]
 0051F811    mov         edx,dword ptr [ebp-0C]
 0051F814    mov         ecx,dword ptr [ebp-10]
 0051F817    mov         byte ptr [ecx+edx+40],al
 0051F81B    add         dword ptr [ebp-0C],4
 0051F81F    cmp         dword ptr [ebp-0C],0
>0051F823    jl          0051F80E
>0051F825    jmp         0051F846
 0051F827    dec         dword ptr [ebp-0C]
 0051F82A    cmp         dword ptr [ebp-0C],0
>0051F82E    jl          0051F846
 0051F830    mov         al,byte ptr [ebp-5]
 0051F833    mov         edx,dword ptr [ebp-0C]
 0051F836    mov         ecx,dword ptr [ebp-10]
 0051F839    mov         byte ptr [ecx+edx],al
 0051F83C    sub         dword ptr [ebp-0C],4
 0051F840    cmp         dword ptr [ebp-0C],0
>0051F844    jge         0051F830
 0051F846    mov         eax,dword ptr [ebp-4]
 0051F849    mov         edx,dword ptr [eax]
 0051F84B    call        dword ptr [edx+0C];TBitmap32.sub_005230BC
 0051F84E    mov         esp,ebp
 0051F850    pop         ebp
 0051F851    ret
end;*}

//0051F854
{*procedure sub_0051F854(?:?; ?:?; ?:?; ?:?);
begin
 0051F854    push        ebp
 0051F855    mov         ebp,esp
 0051F857    add         esp,0FFFFFFF4
 0051F85A    push        ebx
 0051F85B    mov         dword ptr [ebp-0C],ecx
 0051F85E    mov         dword ptr [ebp-8],edx
 0051F861    mov         dword ptr [ebp-4],eax
 0051F864    mov         eax,dword ptr [ebp-8]
 0051F867    mov         edx,dword ptr [ebp-4]
 0051F86A    cmp         eax,dword ptr [edx+48]
>0051F86D    jl          0051F8C6
 0051F86F    mov         eax,dword ptr [ebp-8]
 0051F872    mov         edx,dword ptr [ebp-4]
 0051F875    cmp         eax,dword ptr [edx+50]
>0051F878    jge         0051F8C6
 0051F87A    mov         eax,dword ptr [ebp-0C]
 0051F87D    mov         edx,dword ptr [ebp-4]
 0051F880    cmp         eax,dword ptr [edx+4C]
>0051F883    jl          0051F8C6
 0051F885    mov         eax,dword ptr [ebp-0C]
 0051F888    mov         edx,dword ptr [ebp-4]
 0051F88B    cmp         eax,dword ptr [edx+54]
>0051F88E    jge         0051F8C6
 0051F890    mov         eax,dword ptr [ebp-4]
 0051F893    movzx       eax,byte ptr [eax+7A]
 0051F897    mov         edx,dword ptr ds:[56E27C];^gvar_00577A00
 0051F89D    mov         ebx,dword ptr [edx+eax*4]
 0051F8A0    mov         eax,dword ptr [ebp-0C]
 0051F8A3    mov         edx,dword ptr [ebp-4]
 0051F8A6    imul        dword ptr [edx+34]
 0051F8A9    add         eax,dword ptr [ebp-8]
 0051F8AC    mov         edx,dword ptr [ebp-4]
 0051F8AF    mov         edx,dword ptr [edx+40]
 0051F8B2    lea         edx,[edx+eax*4]
 0051F8B5    mov         eax,dword ptr [ebp+8]
 0051F8B8    call        ebx
 0051F8BA    mov         eax,[0056E564];^gvar_005779B8
 0051F8BF    cmp         byte ptr [eax],0
>0051F8C2    je          0051F8C6
 0051F8C4    emms
 0051F8C6    pop         ebx
 0051F8C7    mov         esp,ebp
 0051F8C9    pop         ebp
 0051F8CA    ret         4
end;*}

//0051F8D0
{*procedure sub_0051F8D0(?:?; ?:?; ?:?; ?:?);
begin
 0051F8D0    push        ebp
 0051F8D1    mov         ebp,esp
 0051F8D3    add         esp,0FFFFFFDC
 0051F8D6    push        ebx
 0051F8D7    mov         dword ptr [ebp-8],ecx
 0051F8DA    mov         dword ptr [ebp-4],edx
 0051F8DD    mov         dword ptr [ebp-0C],eax
 0051F8E0    mov         eax,dword ptr [ebp-4]
 0051F8E3    and         eax,0FF
 0051F8E8    mov         dword ptr [ebp-10],eax
 0051F8EB    mov         eax,dword ptr [ebp-8]
 0051F8EE    and         eax,0FF
 0051F8F3    mov         dword ptr [ebp-14],eax
 0051F8F6    sar         dword ptr [ebp-4],8
 0051F8FA    sar         dword ptr [ebp-8],8
 0051F8FE    mov         eax,dword ptr [ebp-0C]
 0051F901    mov         eax,dword ptr [eax+34]
 0051F904    imul        dword ptr [ebp-8]
 0051F907    add         eax,dword ptr [ebp-4]
 0051F90A    mov         edx,dword ptr [ebp-0C]
 0051F90D    mov         edx,dword ptr [edx+40]
 0051F910    lea         eax,[edx+eax*4]
 0051F913    mov         dword ptr [ebp-20],eax
 0051F916    mov         eax,dword ptr [ebp-0C]
 0051F919    cmp         byte ptr [eax+7A],0
>0051F91D    jne         0051F9F1
 0051F923    mov         eax,dword ptr [ebp+8]
 0051F926    shr         eax,18
 0051F929    mov         dword ptr [ebp-24],eax
 0051F92C    mov         eax,dword ptr [ebp-10]
 0051F92F    xor         eax,0FF
 0051F934    movzx       eax,byte ptr [eax+597AA8];gvar_00597AA8
 0051F93B    imul        dword ptr [ebp-24]
 0051F93E    mov         dword ptr [ebp-18],eax
 0051F941    mov         eax,dword ptr [ebp-14]
 0051F944    xor         eax,0FF
 0051F949    movzx       eax,byte ptr [eax+597AA8];gvar_00597AA8
 0051F950    mov         dword ptr [ebp-1C],eax
 0051F953    mov         eax,dword ptr [ebp-10]
 0051F956    movzx       eax,byte ptr [eax+597AA8];gvar_00597AA8
 0051F95D    imul        dword ptr [ebp-24]
 0051F960    mov         dword ptr [ebp-10],eax
 0051F963    mov         eax,dword ptr [ebp-14]
 0051F966    movzx       eax,byte ptr [eax+597AA8];gvar_00597AA8
 0051F96D    mov         dword ptr [ebp-14],eax
 0051F970    mov         ebx,dword ptr ds:[56E26C];^gvar_005779C0
 0051F976    mov         ebx,dword ptr [ebx]
 0051F978    mov         ecx,dword ptr [ebp-18]
 0051F97B    imul        ecx,dword ptr [ebp-1C]
 0051F97F    shr         ecx,10
 0051F982    mov         edx,dword ptr [ebp-20]
 0051F985    mov         eax,dword ptr [ebp+8]
 0051F988    call        ebx
 0051F98A    add         dword ptr [ebp-20],4
 0051F98E    mov         ebx,dword ptr ds:[56E26C];^gvar_005779C0
 0051F994    mov         ebx,dword ptr [ebx]
 0051F996    mov         ecx,dword ptr [ebp-10]
 0051F999    imul        ecx,dword ptr [ebp-1C]
 0051F99D    shr         ecx,10
 0051F9A0    mov         edx,dword ptr [ebp-20]
 0051F9A3    mov         eax,dword ptr [ebp+8]
 0051F9A6    call        ebx
 0051F9A8    mov         eax,dword ptr [ebp-0C]
 0051F9AB    mov         eax,dword ptr [eax+34]
 0051F9AE    shl         eax,2
 0051F9B1    add         dword ptr [ebp-20],eax
 0051F9B4    mov         ebx,dword ptr ds:[56E26C];^gvar_005779C0
 0051F9BA    mov         ebx,dword ptr [ebx]
 0051F9BC    mov         ecx,dword ptr [ebp-10]
 0051F9BF    imul        ecx,dword ptr [ebp-14]
 0051F9C3    shr         ecx,10
 0051F9C6    mov         edx,dword ptr [ebp-20]
 0051F9C9    mov         eax,dword ptr [ebp+8]
 0051F9CC    call        ebx
 0051F9CE    sub         dword ptr [ebp-20],4
 0051F9D2    mov         ebx,dword ptr ds:[56E26C];^gvar_005779C0
 0051F9D8    mov         ebx,dword ptr [ebx]
 0051F9DA    mov         ecx,dword ptr [ebp-18]
 0051F9DD    imul        ecx,dword ptr [ebp-14]
 0051F9E1    shr         ecx,10
 0051F9E4    mov         edx,dword ptr [ebp-20]
 0051F9E7    mov         eax,dword ptr [ebp+8]
 0051F9EA    call        ebx
>0051F9EC    jmp         0051FAE7
 0051F9F1    mov         eax,dword ptr [ebp-10]
 0051F9F4    xor         eax,0FF
 0051F9F9    movzx       eax,byte ptr [eax+597AA8];gvar_00597AA8
 0051FA00    mov         dword ptr [ebp-18],eax
 0051FA03    mov         eax,dword ptr [ebp-14]
 0051FA06    xor         eax,0FF
 0051FA0B    movzx       eax,byte ptr [eax+597AA8];gvar_00597AA8
 0051FA12    mov         dword ptr [ebp-1C],eax
 0051FA15    mov         eax,dword ptr [ebp-10]
 0051FA18    movzx       eax,byte ptr [eax+597AA8];gvar_00597AA8
 0051FA1F    mov         dword ptr [ebp-10],eax
 0051FA22    mov         eax,dword ptr [ebp-14]
 0051FA25    movzx       eax,byte ptr [eax+597AA8];gvar_00597AA8
 0051FA2C    mov         dword ptr [ebp-14],eax
 0051FA2F    mov         ebx,dword ptr ds:[56DFFC];^gvar_005779E0
 0051FA35    mov         ebx,dword ptr [ebx]
 0051FA37    mov         eax,dword ptr [ebp-20]
 0051FA3A    mov         edx,dword ptr [eax]
 0051FA3C    mov         eax,dword ptr [ebp+8]
 0051FA3F    call        ebx
 0051FA41    mov         ebx,dword ptr ds:[56E26C];^gvar_005779C0
 0051FA47    mov         ebx,dword ptr [ebx]
 0051FA49    mov         ecx,dword ptr [ebp-18]
 0051FA4C    imul        ecx,dword ptr [ebp-1C]
 0051FA50    shr         ecx,8
 0051FA53    mov         edx,dword ptr [ebp-20]
 0051FA56    call        ebx
 0051FA58    add         dword ptr [ebp-20],4
 0051FA5C    mov         ebx,dword ptr ds:[56DFFC];^gvar_005779E0
 0051FA62    mov         ebx,dword ptr [ebx]
 0051FA64    mov         eax,dword ptr [ebp-20]
 0051FA67    mov         edx,dword ptr [eax]
 0051FA69    mov         eax,dword ptr [ebp+8]
 0051FA6C    call        ebx
 0051FA6E    mov         ebx,dword ptr ds:[56E26C];^gvar_005779C0
 0051FA74    mov         ebx,dword ptr [ebx]
 0051FA76    mov         ecx,dword ptr [ebp-10]
 0051FA79    imul        ecx,dword ptr [ebp-1C]
 0051FA7D    shr         ecx,8
 0051FA80    mov         edx,dword ptr [ebp-20]
 0051FA83    call        ebx
 0051FA85    mov         eax,dword ptr [ebp-0C]
 0051FA88    mov         eax,dword ptr [eax+34]
 0051FA8B    shl         eax,2
 0051FA8E    add         dword ptr [ebp-20],eax
 0051FA91    mov         ebx,dword ptr ds:[56DFFC];^gvar_005779E0
 0051FA97    mov         ebx,dword ptr [ebx]
 0051FA99    mov         eax,dword ptr [ebp-20]
 0051FA9C    mov         edx,dword ptr [eax]
 0051FA9E    mov         eax,dword ptr [ebp+8]
 0051FAA1    call        ebx
 0051FAA3    mov         ebx,dword ptr ds:[56E26C];^gvar_005779C0
 0051FAA9    mov         ebx,dword ptr [ebx]
 0051FAAB    mov         ecx,dword ptr [ebp-10]
 0051FAAE    imul        ecx,dword ptr [ebp-14]
 0051FAB2    shr         ecx,8
 0051FAB5    mov         edx,dword ptr [ebp-20]
 0051FAB8    call        ebx
 0051FABA    sub         dword ptr [ebp-20],4
 0051FABE    mov         ebx,dword ptr ds:[56DFFC];^gvar_005779E0
 0051FAC4    mov         ebx,dword ptr [ebx]
 0051FAC6    mov         eax,dword ptr [ebp-20]
 0051FAC9    mov         edx,dword ptr [eax]
 0051FACB    mov         eax,dword ptr [ebp+8]
 0051FACE    call        ebx
 0051FAD0    mov         ebx,dword ptr ds:[56E26C];^gvar_005779C0
 0051FAD6    mov         ebx,dword ptr [ebx]
 0051FAD8    mov         ecx,dword ptr [ebp-18]
 0051FADB    imul        ecx,dword ptr [ebp-14]
 0051FADF    shr         ecx,8
 0051FAE2    mov         edx,dword ptr [ebp-20]
 0051FAE5    call        ebx
 0051FAE7    pop         ebx
 0051FAE8    mov         esp,ebp
 0051FAEA    pop         ebp
 0051FAEB    ret         4
end;*}

//0051FAF0
{*procedure sub_0051FAF0(?:?; ?:?; ?:?; ?:?);
begin
 0051FAF0    push        ebp
 0051FAF1    mov         ebp,esp
 0051FAF3    add         esp,0FFFFFFD4
 0051FAF6    push        ebx
 0051FAF7    mov         dword ptr [ebp-8],ecx
 0051FAFA    mov         dword ptr [ebp-4],edx
 0051FAFD    mov         dword ptr [ebp-0C],eax
 0051FB00    mov         eax,dword ptr [ebp-0C]
 0051FB03    mov         eax,dword ptr [eax+68]
 0051FB06    sub         eax,100
 0051FB0B    cmp         eax,dword ptr [ebp-4]
>0051FB0E    jg          0051FFD5
 0051FB14    mov         eax,dword ptr [ebp-4]
 0051FB17    mov         edx,dword ptr [ebp-0C]
 0051FB1A    cmp         eax,dword ptr [edx+70]
>0051FB1D    jge         0051FFD5
 0051FB23    mov         eax,dword ptr [ebp-0C]
 0051FB26    mov         eax,dword ptr [eax+6C]
 0051FB29    sub         eax,100
 0051FB2E    cmp         eax,dword ptr [ebp-8]
>0051FB31    jg          0051FFD5
 0051FB37    mov         eax,dword ptr [ebp-8]
 0051FB3A    mov         edx,dword ptr [ebp-0C]
 0051FB3D    cmp         eax,dword ptr [edx+74]
>0051FB40    jge         0051FFD5
 0051FB46    mov         eax,dword ptr [ebp-4]
 0051FB49    and         eax,0FF
 0051FB4E    mov         dword ptr [ebp-10],eax
 0051FB51    mov         eax,dword ptr [ebp-8]
 0051FB54    and         eax,0FF
 0051FB59    mov         dword ptr [ebp-14],eax
 0051FB5C    sar         dword ptr [ebp-4],8
 0051FB60    sar         dword ptr [ebp-8],8
 0051FB64    mov         eax,dword ptr [ebp-8]
 0051FB67    mov         edx,dword ptr [ebp-0C]
 0051FB6A    imul        dword ptr [edx+34]
 0051FB6D    add         eax,dword ptr [ebp-4]
 0051FB70    mov         edx,dword ptr [ebp-0C]
 0051FB73    mov         edx,dword ptr [edx+40]
 0051FB76    lea         eax,[edx+eax*4]
 0051FB79    mov         dword ptr [ebp-20],eax
 0051FB7C    mov         eax,dword ptr [ebp-0C]
 0051FB7F    cmp         byte ptr [eax+7A],0
>0051FB83    jne         0051FD81
 0051FB89    mov         eax,dword ptr [ebp+8]
 0051FB8C    shr         eax,18
 0051FB8F    mov         dword ptr [ebp-24],eax
 0051FB92    mov         eax,dword ptr [ebp-10]
 0051FB95    xor         eax,0FF
 0051FB9A    movzx       eax,byte ptr [eax+597AA8];gvar_00597AA8
 0051FBA1    imul        dword ptr [ebp-24]
 0051FBA4    mov         dword ptr [ebp-18],eax
 0051FBA7    mov         eax,dword ptr [ebp-14]
 0051FBAA    xor         eax,0FF
 0051FBAF    movzx       eax,byte ptr [eax+597AA8];gvar_00597AA8
 0051FBB6    mov         dword ptr [ebp-1C],eax
 0051FBB9    mov         eax,dword ptr [ebp-10]
 0051FBBC    movzx       eax,byte ptr [eax+597AA8];gvar_00597AA8
 0051FBC3    imul        dword ptr [ebp-24]
 0051FBC6    mov         dword ptr [ebp-10],eax
 0051FBC9    mov         eax,dword ptr [ebp-14]
 0051FBCC    movzx       eax,byte ptr [eax+597AA8];gvar_00597AA8
 0051FBD3    mov         dword ptr [ebp-14],eax
 0051FBD6    mov         eax,dword ptr [ebp-4]
 0051FBD9    mov         edx,dword ptr [ebp-0C]
 0051FBDC    cmp         eax,dword ptr [edx+48]
>0051FBDF    jl          0051FC95
 0051FBE5    mov         eax,dword ptr [ebp-8]
 0051FBE8    mov         edx,dword ptr [ebp-0C]
 0051FBEB    cmp         eax,dword ptr [edx+4C]
>0051FBEE    jl          0051FC95
 0051FBF4    mov         eax,dword ptr [ebp-0C]
 0051FBF7    mov         eax,dword ptr [eax+50]
 0051FBFA    dec         eax
 0051FBFB    cmp         eax,dword ptr [ebp-4]
>0051FBFE    jle         0051FC95
 0051FC04    mov         eax,dword ptr [ebp-0C]
 0051FC07    mov         eax,dword ptr [eax+54]
 0051FC0A    dec         eax
 0051FC0B    cmp         eax,dword ptr [ebp-8]
>0051FC0E    jle         0051FC95
 0051FC14    mov         ebx,dword ptr ds:[56E26C];^gvar_005779C0
 0051FC1A    mov         ebx,dword ptr [ebx]
 0051FC1C    mov         ecx,dword ptr [ebp-18]
 0051FC1F    imul        ecx,dword ptr [ebp-1C]
 0051FC23    shr         ecx,10
 0051FC26    mov         edx,dword ptr [ebp-20]
 0051FC29    mov         eax,dword ptr [ebp+8]
 0051FC2C    call        ebx
 0051FC2E    add         dword ptr [ebp-20],4
 0051FC32    mov         ebx,dword ptr ds:[56E26C];^gvar_005779C0
 0051FC38    mov         ebx,dword ptr [ebx]
 0051FC3A    mov         ecx,dword ptr [ebp-10]
 0051FC3D    imul        ecx,dword ptr [ebp-1C]
 0051FC41    shr         ecx,10
 0051FC44    mov         edx,dword ptr [ebp-20]
 0051FC47    mov         eax,dword ptr [ebp+8]
 0051FC4A    call        ebx
 0051FC4C    mov         eax,dword ptr [ebp-0C]
 0051FC4F    mov         eax,dword ptr [eax+34]
 0051FC52    shl         eax,2
 0051FC55    add         dword ptr [ebp-20],eax
 0051FC58    mov         ebx,dword ptr ds:[56E26C];^gvar_005779C0
 0051FC5E    mov         ebx,dword ptr [ebx]
 0051FC60    mov         ecx,dword ptr [ebp-10]
 0051FC63    imul        ecx,dword ptr [ebp-14]
 0051FC67    shr         ecx,10
 0051FC6A    mov         edx,dword ptr [ebp-20]
 0051FC6D    mov         eax,dword ptr [ebp+8]
 0051FC70    call        ebx
 0051FC72    sub         dword ptr [ebp-20],4
 0051FC76    mov         ebx,dword ptr ds:[56E26C];^gvar_005779C0
 0051FC7C    mov         ebx,dword ptr [ebx]
 0051FC7E    mov         ecx,dword ptr [ebp-18]
 0051FC81    imul        ecx,dword ptr [ebp-14]
 0051FC85    shr         ecx,10
 0051FC88    mov         edx,dword ptr [ebp-20]
 0051FC8B    mov         eax,dword ptr [ebp+8]
 0051FC8E    call        ebx
>0051FC90    jmp         0051FFD5
 0051FC95    mov         eax,dword ptr [ebp-0C]
 0051FC98    add         eax,48
 0051FC9B    mov         dword ptr [ebp-28],eax
 0051FC9E    mov         eax,dword ptr [ebp-28]
 0051FCA1    mov         eax,dword ptr [eax]
 0051FCA3    cmp         eax,dword ptr [ebp-4]
>0051FCA6    jg          0051FCCD
 0051FCA8    mov         eax,dword ptr [ebp-28]
 0051FCAB    mov         eax,dword ptr [eax+4]
 0051FCAE    cmp         eax,dword ptr [ebp-8]
>0051FCB1    jg          0051FCCD
 0051FCB3    mov         ebx,dword ptr ds:[56E26C];^gvar_005779C0
 0051FCB9    mov         ebx,dword ptr [ebx]
 0051FCBB    mov         ecx,dword ptr [ebp-18]
 0051FCBE    imul        ecx,dword ptr [ebp-1C]
 0051FCC2    shr         ecx,10
 0051FCC5    mov         edx,dword ptr [ebp-20]
 0051FCC8    mov         eax,dword ptr [ebp+8]
 0051FCCB    call        ebx
 0051FCCD    add         dword ptr [ebp-20],4
 0051FCD1    mov         eax,dword ptr [ebp-28]
 0051FCD4    mov         eax,dword ptr [eax+8]
 0051FCD7    dec         eax
 0051FCD8    cmp         eax,dword ptr [ebp-4]
>0051FCDB    jle         0051FD02
 0051FCDD    mov         eax,dword ptr [ebp-28]
 0051FCE0    mov         eax,dword ptr [eax+4]
 0051FCE3    cmp         eax,dword ptr [ebp-8]
>0051FCE6    jg          0051FD02
 0051FCE8    mov         ebx,dword ptr ds:[56E26C];^gvar_005779C0
 0051FCEE    mov         ebx,dword ptr [ebx]
 0051FCF0    mov         ecx,dword ptr [ebp-10]
 0051FCF3    imul        ecx,dword ptr [ebp-1C]
 0051FCF7    shr         ecx,10
 0051FCFA    mov         edx,dword ptr [ebp-20]
 0051FCFD    mov         eax,dword ptr [ebp+8]
 0051FD00    call        ebx
 0051FD02    mov         eax,dword ptr [ebp-0C]
 0051FD05    mov         eax,dword ptr [eax+34]
 0051FD08    shl         eax,2
 0051FD0B    add         dword ptr [ebp-20],eax
 0051FD0E    mov         eax,dword ptr [ebp-28]
 0051FD11    mov         eax,dword ptr [eax+8]
 0051FD14    dec         eax
 0051FD15    cmp         eax,dword ptr [ebp-4]
>0051FD18    jle         0051FD40
 0051FD1A    mov         eax,dword ptr [ebp-28]
 0051FD1D    mov         eax,dword ptr [eax+0C]
 0051FD20    dec         eax
 0051FD21    cmp         eax,dword ptr [ebp-8]
>0051FD24    jle         0051FD40
 0051FD26    mov         ebx,dword ptr ds:[56E26C];^gvar_005779C0
 0051FD2C    mov         ebx,dword ptr [ebx]
 0051FD2E    mov         ecx,dword ptr [ebp-10]
 0051FD31    imul        ecx,dword ptr [ebp-14]
 0051FD35    shr         ecx,10
 0051FD38    mov         edx,dword ptr [ebp-20]
 0051FD3B    mov         eax,dword ptr [ebp+8]
 0051FD3E    call        ebx
 0051FD40    sub         dword ptr [ebp-20],4
 0051FD44    mov         eax,dword ptr [ebp-28]
 0051FD47    mov         eax,dword ptr [eax]
 0051FD49    cmp         eax,dword ptr [ebp-4]
>0051FD4C    jg          0051FFD5
 0051FD52    mov         eax,dword ptr [ebp-28]
 0051FD55    mov         eax,dword ptr [eax+0C]
 0051FD58    dec         eax
 0051FD59    cmp         eax,dword ptr [ebp-8]
>0051FD5C    jle         0051FFD5
 0051FD62    mov         ebx,dword ptr ds:[56E26C];^gvar_005779C0
 0051FD68    mov         ebx,dword ptr [ebx]
 0051FD6A    mov         ecx,dword ptr [ebp-18]
 0051FD6D    imul        ecx,dword ptr [ebp-14]
 0051FD71    shr         ecx,10
 0051FD74    mov         edx,dword ptr [ebp-20]
 0051FD77    mov         eax,dword ptr [ebp+8]
 0051FD7A    call        ebx
>0051FD7C    jmp         0051FFD5
 0051FD81    mov         eax,dword ptr [ebp-10]
 0051FD84    xor         eax,0FF
 0051FD89    movzx       eax,byte ptr [eax+597AA8];gvar_00597AA8
 0051FD90    mov         dword ptr [ebp-18],eax
 0051FD93    mov         eax,dword ptr [ebp-14]
 0051FD96    xor         eax,0FF
 0051FD9B    movzx       eax,byte ptr [eax+597AA8];gvar_00597AA8
 0051FDA2    mov         dword ptr [ebp-1C],eax
 0051FDA5    mov         eax,dword ptr [ebp-10]
 0051FDA8    movzx       eax,byte ptr [eax+597AA8];gvar_00597AA8
 0051FDAF    mov         dword ptr [ebp-10],eax
 0051FDB2    mov         eax,dword ptr [ebp-14]
 0051FDB5    movzx       eax,byte ptr [eax+597AA8];gvar_00597AA8
 0051FDBC    mov         dword ptr [ebp-14],eax
 0051FDBF    mov         eax,dword ptr [ebp-4]
 0051FDC2    mov         edx,dword ptr [ebp-0C]
 0051FDC5    cmp         eax,dword ptr [edx+48]
>0051FDC8    jl          0051FEBA
 0051FDCE    mov         eax,dword ptr [ebp-8]
 0051FDD1    mov         edx,dword ptr [ebp-0C]
 0051FDD4    cmp         eax,dword ptr [edx+4C]
>0051FDD7    jl          0051FEBA
 0051FDDD    mov         eax,dword ptr [ebp-0C]
 0051FDE0    mov         eax,dword ptr [eax+50]
 0051FDE3    dec         eax
 0051FDE4    cmp         eax,dword ptr [ebp-4]
>0051FDE7    jle         0051FEBA
 0051FDED    mov         eax,dword ptr [ebp-0C]
 0051FDF0    mov         eax,dword ptr [eax+54]
 0051FDF3    dec         eax
 0051FDF4    cmp         eax,dword ptr [ebp-8]
>0051FDF7    jle         0051FEBA
 0051FDFD    mov         ebx,dword ptr ds:[56DFFC];^gvar_005779E0
 0051FE03    mov         ebx,dword ptr [ebx]
 0051FE05    mov         eax,dword ptr [ebp-20]
 0051FE08    mov         edx,dword ptr [eax]
 0051FE0A    mov         eax,dword ptr [ebp+8]
 0051FE0D    call        ebx
 0051FE0F    mov         ebx,dword ptr ds:[56E26C];^gvar_005779C0
 0051FE15    mov         ebx,dword ptr [ebx]
 0051FE17    mov         ecx,dword ptr [ebp-18]
 0051FE1A    imul        ecx,dword ptr [ebp-1C]
 0051FE1E    shr         ecx,8
 0051FE21    mov         edx,dword ptr [ebp-20]
 0051FE24    call        ebx
 0051FE26    add         dword ptr [ebp-20],4
 0051FE2A    mov         ebx,dword ptr ds:[56DFFC];^gvar_005779E0
 0051FE30    mov         ebx,dword ptr [ebx]
 0051FE32    mov         eax,dword ptr [ebp-20]
 0051FE35    mov         edx,dword ptr [eax]
 0051FE37    mov         eax,dword ptr [ebp+8]
 0051FE3A    call        ebx
 0051FE3C    mov         ebx,dword ptr ds:[56E26C];^gvar_005779C0
 0051FE42    mov         ebx,dword ptr [ebx]
 0051FE44    mov         ecx,dword ptr [ebp-10]
 0051FE47    imul        ecx,dword ptr [ebp-1C]
 0051FE4B    shr         ecx,8
 0051FE4E    mov         edx,dword ptr [ebp-20]
 0051FE51    call        ebx
 0051FE53    mov         eax,dword ptr [ebp-0C]
 0051FE56    mov         eax,dword ptr [eax+34]
 0051FE59    shl         eax,2
 0051FE5C    add         dword ptr [ebp-20],eax
 0051FE5F    mov         ebx,dword ptr ds:[56DFFC];^gvar_005779E0
 0051FE65    mov         ebx,dword ptr [ebx]
 0051FE67    mov         eax,dword ptr [ebp-20]
 0051FE6A    mov         edx,dword ptr [eax]
 0051FE6C    mov         eax,dword ptr [ebp+8]
 0051FE6F    call        ebx
 0051FE71    mov         ebx,dword ptr ds:[56E26C];^gvar_005779C0
 0051FE77    mov         ebx,dword ptr [ebx]
 0051FE79    mov         ecx,dword ptr [ebp-10]
 0051FE7C    imul        ecx,dword ptr [ebp-14]
 0051FE80    shr         ecx,8
 0051FE83    mov         edx,dword ptr [ebp-20]
 0051FE86    call        ebx
 0051FE88    sub         dword ptr [ebp-20],4
 0051FE8C    mov         ebx,dword ptr ds:[56DFFC];^gvar_005779E0
 0051FE92    mov         ebx,dword ptr [ebx]
 0051FE94    mov         eax,dword ptr [ebp-20]
 0051FE97    mov         edx,dword ptr [eax]
 0051FE99    mov         eax,dword ptr [ebp+8]
 0051FE9C    call        ebx
 0051FE9E    mov         ebx,dword ptr ds:[56E26C];^gvar_005779C0
 0051FEA4    mov         ebx,dword ptr [ebx]
 0051FEA6    mov         ecx,dword ptr [ebp-18]
 0051FEA9    imul        ecx,dword ptr [ebp-14]
 0051FEAD    shr         ecx,8
 0051FEB0    mov         edx,dword ptr [ebp-20]
 0051FEB3    call        ebx
>0051FEB5    jmp         0051FFD5
 0051FEBA    mov         eax,dword ptr [ebp-0C]
 0051FEBD    add         eax,48
 0051FEC0    mov         dword ptr [ebp-2C],eax
 0051FEC3    mov         eax,dword ptr [ebp-2C]
 0051FEC6    mov         eax,dword ptr [eax]
 0051FEC8    cmp         eax,dword ptr [ebp-4]
>0051FECB    jg          0051FF01
 0051FECD    mov         eax,dword ptr [ebp-2C]
 0051FED0    mov         eax,dword ptr [eax+4]
 0051FED3    cmp         eax,dword ptr [ebp-8]
>0051FED6    jg          0051FF01
 0051FED8    mov         ebx,dword ptr ds:[56DFFC];^gvar_005779E0
 0051FEDE    mov         ebx,dword ptr [ebx]
 0051FEE0    mov         eax,dword ptr [ebp-20]
 0051FEE3    mov         edx,dword ptr [eax]
 0051FEE5    mov         eax,dword ptr [ebp+8]
 0051FEE8    call        ebx
 0051FEEA    mov         ebx,dword ptr ds:[56E26C];^gvar_005779C0
 0051FEF0    mov         ebx,dword ptr [ebx]
 0051FEF2    mov         ecx,dword ptr [ebp-18]
 0051FEF5    imul        ecx,dword ptr [ebp-1C]
 0051FEF9    shr         ecx,8
 0051FEFC    mov         edx,dword ptr [ebp-20]
 0051FEFF    call        ebx
 0051FF01    add         dword ptr [ebp-20],4
 0051FF05    mov         eax,dword ptr [ebp-2C]
 0051FF08    mov         eax,dword ptr [eax+8]
 0051FF0B    dec         eax
 0051FF0C    cmp         eax,dword ptr [ebp-4]
>0051FF0F    jle         0051FF45
 0051FF11    mov         eax,dword ptr [ebp-2C]
 0051FF14    mov         eax,dword ptr [eax+4]
 0051FF17    cmp         eax,dword ptr [ebp-8]
>0051FF1A    jg          0051FF45
 0051FF1C    mov         ebx,dword ptr ds:[56DFFC];^gvar_005779E0
 0051FF22    mov         ebx,dword ptr [ebx]
 0051FF24    mov         eax,dword ptr [ebp-20]
 0051FF27    mov         edx,dword ptr [eax]
 0051FF29    mov         eax,dword ptr [ebp+8]
 0051FF2C    call        ebx
 0051FF2E    mov         ebx,dword ptr ds:[56E26C];^gvar_005779C0
 0051FF34    mov         ebx,dword ptr [ebx]
 0051FF36    mov         ecx,dword ptr [ebp-10]
 0051FF39    imul        ecx,dword ptr [ebp-1C]
 0051FF3D    shr         ecx,8
 0051FF40    mov         edx,dword ptr [ebp-20]
 0051FF43    call        ebx
 0051FF45    mov         eax,dword ptr [ebp-0C]
 0051FF48    mov         eax,dword ptr [eax+34]
 0051FF4B    shl         eax,2
 0051FF4E    add         dword ptr [ebp-20],eax
 0051FF51    mov         eax,dword ptr [ebp-2C]
 0051FF54    mov         eax,dword ptr [eax+8]
 0051FF57    dec         eax
 0051FF58    cmp         eax,dword ptr [ebp-4]
>0051FF5B    jle         0051FF92
 0051FF5D    mov         eax,dword ptr [ebp-2C]
 0051FF60    mov         eax,dword ptr [eax+0C]
 0051FF63    dec         eax
 0051FF64    cmp         eax,dword ptr [ebp-8]
>0051FF67    jle         0051FF92
 0051FF69    mov         ebx,dword ptr ds:[56DFFC];^gvar_005779E0
 0051FF6F    mov         ebx,dword ptr [ebx]
 0051FF71    mov         eax,dword ptr [ebp-20]
 0051FF74    mov         edx,dword ptr [eax]
 0051FF76    mov         eax,dword ptr [ebp+8]
 0051FF79    call        ebx
 0051FF7B    mov         ebx,dword ptr ds:[56E26C];^gvar_005779C0
 0051FF81    mov         ebx,dword ptr [ebx]
 0051FF83    mov         ecx,dword ptr [ebp-10]
 0051FF86    imul        ecx,dword ptr [ebp-14]
 0051FF8A    shr         ecx,8
 0051FF8D    mov         edx,dword ptr [ebp-20]
 0051FF90    call        ebx
 0051FF92    sub         dword ptr [ebp-20],4
 0051FF96    mov         eax,dword ptr [ebp-2C]
 0051FF99    mov         eax,dword ptr [eax]
 0051FF9B    cmp         eax,dword ptr [ebp-4]
>0051FF9E    jg          0051FFD5
 0051FFA0    mov         eax,dword ptr [ebp-2C]
 0051FFA3    mov         eax,dword ptr [eax+0C]
 0051FFA6    dec         eax
 0051FFA7    cmp         eax,dword ptr [ebp-8]
>0051FFAA    jle         0051FFD5
 0051FFAC    mov         ebx,dword ptr ds:[56DFFC];^gvar_005779E0
 0051FFB2    mov         ebx,dword ptr [ebx]
 0051FFB4    mov         eax,dword ptr [ebp-20]
 0051FFB7    mov         edx,dword ptr [eax]
 0051FFB9    mov         eax,dword ptr [ebp+8]
 0051FFBC    call        ebx
 0051FFBE    mov         ebx,dword ptr ds:[56E26C];^gvar_005779C0
 0051FFC4    mov         ebx,dword ptr [ebx]
 0051FFC6    mov         ecx,dword ptr [ebp-18]
 0051FFC9    imul        ecx,dword ptr [ebp-14]
 0051FFCD    shr         ecx,8
 0051FFD0    mov         edx,dword ptr [ebp-20]
 0051FFD3    call        ebx
 0051FFD5    pop         ebx
 0051FFD6    mov         esp,ebp
 0051FFD8    pop         ebp
 0051FFD9    ret         4
end;*}

//0051FFDC
{*procedure sub_0051FFDC(?:?; ?:?; ?:?; ?:?);
begin
 0051FFDC    push        ebp
 0051FFDD    mov         ebp,esp
 0051FFDF    add         esp,0FFFFFFF8
 0051FFE2    mov         dword ptr [ebp-8],edx
 0051FFE5    mov         dword ptr [ebp-4],eax
 0051FFE8    mov         eax,dword ptr [ebp-8]
 0051FFEB    push        eax
 0051FFEC    fld         dword ptr [ebp+8]
 0051FFEF    fmul        dword ptr ds:[520020];256:Single
 0051FFF5    call        @ROUND
 0051FFFA    push        eax
 0051FFFB    fld         dword ptr [ebp+0C]
 0051FFFE    fmul        dword ptr ds:[520020];256:Single
 00520004    call        @ROUND
 00520009    mov         edx,eax
 0052000B    mov         eax,dword ptr [ebp-4]
 0052000E    pop         ecx
 0052000F    call        0051FAF0
 00520014    call        00513ACC
 00520019    pop         ecx
 0052001A    pop         ecx
 0052001B    pop         ebp
 0052001C    ret         8
end;*}

//00520024
{*function sub_00520024(?:?; ?:?; ?:?):?;
begin
 00520024    push        ebp
 00520025    mov         ebp,esp
 00520027    add         esp,0FFFFFFEC
 0052002A    mov         dword ptr [ebp-0C],ecx
 0052002D    mov         dword ptr [ebp-8],edx
 00520030    mov         dword ptr [ebp-4],eax
 00520033    mov         eax,dword ptr [ebp-8]
 00520036    shr         eax,8
 00520039    mov         edx,dword ptr [ebp-0C]
 0052003C    shr         edx,8
 0052003F    mov         ecx,dword ptr [ebp-4]
 00520042    imul        edx,dword ptr [ecx+34]
 00520046    add         eax,edx
 00520048    mov         dword ptr [ebp-14],eax
 0052004B    mov         eax,dword ptr [ebp-14]
 0052004E    mov         edx,dword ptr [ebp-4]
 00520051    add         eax,dword ptr [edx+34]
 00520054    mov         edx,dword ptr [ebp-4]
 00520057    mov         edx,dword ptr [edx+40]
 0052005A    lea         eax,[edx+eax*4]
 0052005D    push        eax
 0052005E    mov         eax,dword ptr [ebp-4]
 00520061    mov         eax,dword ptr [eax+40]
 00520064    mov         edx,dword ptr [ebp-14]
 00520067    lea         ecx,[eax+edx*4]
 0052006A    mov         eax,dword ptr [ebp-0C]
 0052006D    and         eax,0FF
 00520072    xor         eax,0FF
 00520077    xor         edx,edx
 00520079    mov         dl,byte ptr [eax+597AA8];gvar_00597AA8
 0052007F    mov         eax,dword ptr [ebp-8]
 00520082    and         eax,0FF
 00520087    xor         eax,0FF
 0052008C    movzx       eax,byte ptr [eax+597AA8];gvar_00597AA8
 00520093    call        dword ptr ds:[597BA8]
 00520099    mov         dword ptr [ebp-10],eax
 0052009C    mov         eax,dword ptr [ebp-10]
 0052009F    mov         esp,ebp
 005200A1    pop         ebp
 005200A2    ret
end;*}

//005200A4
{*function sub_005200A4(?:?; ?:?; ?:?):?;
begin
 005200A4    push        ebp
 005200A5    mov         ebp,esp
 005200A7    add         esp,0FFFFFFE8
 005200AA    mov         dword ptr [ebp-0C],ecx
 005200AD    mov         dword ptr [ebp-8],edx
 005200B0    mov         dword ptr [ebp-4],eax
 005200B3    mov         eax,dword ptr [ebp-8]
 005200B6    mov         edx,dword ptr [ebp-4]
 005200B9    cmp         eax,dword ptr [edx+68]
>005200BC    jl          00520170
 005200C2    mov         eax,dword ptr [ebp-0C]
 005200C5    mov         edx,dword ptr [ebp-4]
 005200C8    cmp         eax,dword ptr [edx+6C]
>005200CB    jl          00520170
 005200D1    mov         eax,dword ptr [ebp-4]
 005200D4    mov         eax,dword ptr [eax+50]
 005200D7    dec         eax
 005200D8    shl         eax,8
 005200DB    mov         dword ptr [ebp-14],eax
 005200DE    mov         eax,dword ptr [ebp-4]
 005200E1    mov         eax,dword ptr [eax+54]
 005200E4    dec         eax
 005200E5    shl         eax,8
 005200E8    mov         dword ptr [ebp-18],eax
 005200EB    mov         eax,dword ptr [ebp-8]
 005200EE    cmp         eax,dword ptr [ebp-14]
>005200F1    jge         0052010E
 005200F3    mov         eax,dword ptr [ebp-0C]
 005200F6    cmp         eax,dword ptr [ebp-18]
>005200F9    jge         0052010E
 005200FB    mov         ecx,dword ptr [ebp-0C]
 005200FE    mov         edx,dword ptr [ebp-8]
 00520101    mov         eax,dword ptr [ebp-4]
 00520104    call        00520024
 00520109    mov         dword ptr [ebp-10],eax
>0052010C    jmp         0052017C
 0052010E    mov         eax,dword ptr [ebp-8]
 00520111    cmp         eax,dword ptr [ebp-14]
>00520114    jne         00520138
 00520116    mov         eax,dword ptr [ebp-0C]
 00520119    cmp         eax,dword ptr [ebp-18]
>0052011C    jg          00520138
 0052011E    mov         ecx,dword ptr [ebp-0C]
 00520121    shr         ecx,8
 00520124    mov         eax,dword ptr [ebp-4]
 00520127    mov         edx,dword ptr [eax+50]
 0052012A    dec         edx
 0052012B    mov         eax,dword ptr [ebp-4]
 0052012E    call        0051F4DC
 00520133    mov         dword ptr [ebp-10],eax
>00520136    jmp         0052017C
 00520138    mov         eax,dword ptr [ebp-8]
 0052013B    cmp         eax,dword ptr [ebp-14]
>0052013E    jg          00520162
 00520140    mov         eax,dword ptr [ebp-0C]
 00520143    cmp         eax,dword ptr [ebp-18]
>00520146    jne         00520162
 00520148    mov         eax,dword ptr [ebp-4]
 0052014B    mov         ecx,dword ptr [eax+54]
 0052014E    dec         ecx
 0052014F    mov         edx,dword ptr [ebp-8]
 00520152    shr         edx,8
 00520155    mov         eax,dword ptr [ebp-4]
 00520158    call        0051F4DC
 0052015D    mov         dword ptr [ebp-10],eax
>00520160    jmp         0052017C
 00520162    mov         eax,dword ptr [ebp-4]
 00520165    mov         eax,dword ptr [eax+0B8]
 0052016B    mov         dword ptr [ebp-10],eax
>0052016E    jmp         0052017C
 00520170    mov         eax,dword ptr [ebp-4]
 00520173    mov         eax,dword ptr [eax+0B8]
 00520179    mov         dword ptr [ebp-10],eax
 0052017C    mov         eax,dword ptr [ebp-10]
 0052017F    mov         esp,ebp
 00520181    pop         ebp
 00520182    ret
end;*}

//00520184
{*function sub_00520184(?:?; ?:?; ?:?):?;
begin
 00520184    push        ebp
 00520185    mov         ebp,esp
 00520187    add         esp,0FFFFFFF0
 0052018A    mov         dword ptr [ebp-8],ecx
 0052018D    mov         dword ptr [ebp-4],edx
 00520190    mov         dword ptr [ebp-0C],eax
 00520193    add         dword ptr [ebp-4],7F
 00520197    add         dword ptr [ebp-8],7F
 0052019B    sar         dword ptr [ebp-4],8
 0052019F    sar         dword ptr [ebp-8],8
 005201A3    mov         ecx,dword ptr [ebp-8]
 005201A6    mov         edx,dword ptr [ebp-4]
 005201A9    mov         eax,dword ptr [ebp-0C]
 005201AC    call        00520024
 005201B1    mov         dword ptr [ebp-10],eax
 005201B4    call        00513ACC
 005201B9    mov         eax,dword ptr [ebp-10]
 005201BC    mov         esp,ebp
 005201BE    pop         ebp
 005201BF    ret
end;*}

//005201C0
{*function sub_005201C0(?:?; ?:?; ?:?):?;
begin
 005201C0    push        ebp
 005201C1    mov         ebp,esp
 005201C3    add         esp,0FFFFFFF0
 005201C6    mov         dword ptr [ebp-8],ecx
 005201C9    mov         dword ptr [ebp-4],edx
 005201CC    mov         dword ptr [ebp-0C],eax
 005201CF    add         dword ptr [ebp-4],7F
 005201D3    add         dword ptr [ebp-8],7F
 005201D7    sar         dword ptr [ebp-4],8
 005201DB    sar         dword ptr [ebp-8],8
 005201DF    mov         ecx,dword ptr [ebp-8]
 005201E2    mov         edx,dword ptr [ebp-4]
 005201E5    mov         eax,dword ptr [ebp-0C]
 005201E8    call        005200A4
 005201ED    mov         dword ptr [ebp-10],eax
 005201F0    call        00513ACC
 005201F5    mov         eax,dword ptr [ebp-10]
 005201F8    mov         esp,ebp
 005201FA    pop         ebp
 005201FB    ret
end;*}

//005201FC
{*function sub_005201FC(?:?; ?:?; ?:?):?;
begin
 005201FC    push        ebp
 005201FD    mov         ebp,esp
 005201FF    add         esp,0FFFFFFE8
 00520202    push        ebx
 00520203    mov         dword ptr [ebp-0C],ecx
 00520206    mov         dword ptr [ebp-8],edx
 00520209    mov         dword ptr [ebp-4],eax
 0052020C    mov         eax,dword ptr [ebp-4]
 0052020F    movzx       eax,byte ptr [eax+7B]
 00520213    mov         edx,dword ptr ds:[56E3B8];^gvar_0056D47C
 00520219    mov         eax,dword ptr [edx+eax*4]
 0052021C    mov         dword ptr [ebp-14],eax
 0052021F    mov         eax,dword ptr [ebp-4]
 00520222    add         eax,48
 00520225    mov         dword ptr [ebp-18],eax
 00520228    mov         eax,dword ptr [ebp-18]
 0052022B    mov         ecx,dword ptr [eax+0C]
 0052022E    dec         ecx
 0052022F    mov         eax,dword ptr [ebp-18]
 00520232    mov         edx,dword ptr [eax+4]
 00520235    mov         eax,dword ptr [ebp-0C]
 00520238    call        dword ptr [ebp-14]
 0052023B    mov         ebx,eax
 0052023D    mov         eax,dword ptr [ebp-4]
 00520240    imul        ebx,dword ptr [eax+34]
 00520244    mov         eax,dword ptr [ebp-18]
 00520247    mov         ecx,dword ptr [eax+8]
 0052024A    dec         ecx
 0052024B    mov         eax,dword ptr [ebp-18]
 0052024E    mov         edx,dword ptr [eax]
 00520250    mov         eax,dword ptr [ebp-8]
 00520253    call        dword ptr [ebp-14]
 00520256    add         ebx,eax
 00520258    mov         eax,dword ptr [ebp-4]
 0052025B    mov         eax,dword ptr [eax+40]
 0052025E    mov         eax,dword ptr [eax+ebx*4]
 00520261    mov         dword ptr [ebp-10],eax
 00520264    mov         eax,dword ptr [ebp-10]
 00520267    pop         ebx
 00520268    mov         esp,ebp
 0052026A    pop         ebp
 0052026B    ret
end;*}

//0052026C
{*function sub_0052026C(?:?; ?:?; ?:?):?;
begin
 0052026C    push        ebp
 0052026D    mov         ebp,esp
 0052026F    add         esp,0FFFFFFD4
 00520272    push        ebx
 00520273    mov         dword ptr [ebp-8],ecx
 00520276    mov         dword ptr [ebp-4],edx
 00520279    mov         dword ptr [ebp-0C],eax
 0052027C    mov         eax,dword ptr [ebp-0C]
 0052027F    movzx       eax,byte ptr [eax+7B]
 00520283    mov         edx,dword ptr ds:[56E3B8];^gvar_0056D47C
 00520289    mov         eax,dword ptr [edx+eax*4]
 0052028C    mov         dword ptr [ebp-14],eax
 0052028F    movsx       eax,word ptr [ebp-2]
 00520293    mov         dword ptr [ebp-1C],eax
 00520296    movsx       eax,word ptr [ebp-6]
 0052029A    mov         dword ptr [ebp-24],eax
 0052029D    mov         eax,dword ptr [ebp-0C]
 005202A0    add         eax,48
 005202A3    mov         dword ptr [ebp-2C],eax
 005202A6    mov         eax,dword ptr [ebp-2C]
 005202A9    mov         eax,dword ptr [eax+8]
 005202AC    dec         eax
 005202AD    mov         dword ptr [ebp-28],eax
 005202B0    mov         eax,dword ptr [ebp-2C]
 005202B3    mov         edx,dword ptr [eax]
 005202B5    mov         ecx,dword ptr [ebp-28]
 005202B8    mov         eax,dword ptr [ebp-1C]
 005202BB    call        dword ptr [ebp-14]
 005202BE    mov         dword ptr [ebp-18],eax
 005202C1    mov         eax,dword ptr [ebp-2C]
 005202C4    mov         edx,dword ptr [eax]
 005202C6    mov         eax,dword ptr [ebp-1C]
 005202C9    inc         eax
 005202CA    mov         ecx,dword ptr [ebp-28]
 005202CD    call        dword ptr [ebp-14]
 005202D0    mov         dword ptr [ebp-1C],eax
 005202D3    mov         eax,dword ptr [ebp-2C]
 005202D6    mov         eax,dword ptr [eax+0C]
 005202D9    dec         eax
 005202DA    mov         dword ptr [ebp-28],eax
 005202DD    mov         eax,dword ptr [ebp-2C]
 005202E0    mov         edx,dword ptr [eax+4]
 005202E3    mov         ecx,dword ptr [ebp-28]
 005202E6    mov         eax,dword ptr [ebp-24]
 005202E9    call        dword ptr [ebp-14]
 005202EC    mov         edx,dword ptr [ebp-0C]
 005202EF    imul        dword ptr [edx+34]
 005202F2    mov         dword ptr [ebp-20],eax
 005202F5    mov         eax,dword ptr [ebp-2C]
 005202F8    mov         edx,dword ptr [eax+4]
 005202FB    mov         eax,dword ptr [ebp-24]
 005202FE    inc         eax
 005202FF    mov         ecx,dword ptr [ebp-28]
 00520302    call        dword ptr [ebp-14]
 00520305    mov         edx,dword ptr [ebp-0C]
 00520308    imul        dword ptr [edx+34]
 0052030B    mov         dword ptr [ebp-24],eax
 0052030E    xor         eax,eax
 00520310    mov         al,byte ptr [ebp-3]
 00520313    mov         dword ptr [ebp-28],eax
 00520316    mov         eax,dword ptr [ebp-18]
 00520319    add         eax,dword ptr [ebp-20]
 0052031C    mov         edx,dword ptr [ebp-0C]
 0052031F    mov         edx,dword ptr [edx+40]
 00520322    mov         edx,dword ptr [edx+eax*4]
 00520325    mov         eax,dword ptr [ebp-1C]
 00520328    add         eax,dword ptr [ebp-20]
 0052032B    mov         ecx,dword ptr [ebp-0C]
 0052032E    mov         ecx,dword ptr [ecx+40]
 00520331    mov         eax,dword ptr [ecx+eax*4]
 00520334    mov         ebx,dword ptr ds:[56E648];^gvar_005779BC
 0052033A    mov         ebx,dword ptr [ebx]
 0052033C    mov         ecx,dword ptr [ebp-28]
 0052033F    call        ebx
 00520341    push        eax
 00520342    mov         eax,dword ptr [ebp-18]
 00520345    add         eax,dword ptr [ebp-24]
 00520348    mov         edx,dword ptr [ebp-0C]
 0052034B    mov         edx,dword ptr [edx+40]
 0052034E    mov         edx,dword ptr [edx+eax*4]
 00520351    mov         eax,dword ptr [ebp-1C]
 00520354    add         eax,dword ptr [ebp-24]
 00520357    mov         ecx,dword ptr [ebp-0C]
 0052035A    mov         ecx,dword ptr [ecx+40]
 0052035D    mov         eax,dword ptr [ecx+eax*4]
 00520360    mov         ebx,dword ptr ds:[56E648];^gvar_005779BC
 00520366    mov         ebx,dword ptr [ebx]
 00520368    mov         ecx,dword ptr [ebp-28]
 0052036B    call        ebx
 0052036D    xor         ecx,ecx
 0052036F    mov         cl,byte ptr [ebp-7]
 00520372    mov         ebx,dword ptr ds:[56E648];^gvar_005779BC
 00520378    mov         ebx,dword ptr [ebx]
 0052037A    pop         edx
 0052037B    call        ebx
 0052037D    mov         dword ptr [ebp-10],eax
 00520380    call        00513ACC
 00520385    mov         eax,dword ptr [ebp-10]
 00520388    pop         ebx
 00520389    mov         esp,ebp
 0052038B    pop         ebp
 0052038C    ret
end;*}

//00520390
{*procedure sub_00520390(?:?; ?:?; ?:?; ?:?; ?:?);
begin
 00520390    push        ebp
 00520391    mov         ebp,esp
 00520393    add         esp,0FFFFFFF4
 00520396    push        ebx
 00520397    mov         dword ptr [ebp-0C],ecx
 0052039A    mov         dword ptr [ebp-8],edx
 0052039D    mov         dword ptr [ebp-4],eax
 005203A0    mov         eax,dword ptr [ebp-0C]
 005203A3    mov         edx,dword ptr [ebp-4]
 005203A6    imul        dword ptr [edx+34]
 005203A9    add         eax,dword ptr [ebp-8]
 005203AC    mov         edx,dword ptr [ebp-4]
 005203AF    mov         edx,dword ptr [edx+40]
 005203B2    lea         eax,[edx+eax*4]
 005203B5    mov         ebx,dword ptr ds:[56E100];^gvar_005779AC
 005203BB    mov         ebx,dword ptr [ebx]
 005203BD    mov         edx,dword ptr [ebp+0C]
 005203C0    sub         edx,dword ptr [ebp-8]
 005203C3    inc         edx
 005203C4    mov         ecx,dword ptr [ebp+8]
 005203C7    call        ebx
 005203C9    pop         ebx
 005203CA    mov         esp,ebp
 005203CC    pop         ebp
 005203CD    ret         8
end;*}

//005203D0
{*procedure sub_005203D0(?:?; ?:?; ?:?; ?:?; ?:?);
begin
 005203D0    push        ebp
 005203D1    mov         ebp,esp
 005203D3    add         esp,0FFFFFFE4
 005203D6    push        ebx
 005203D7    mov         dword ptr [ebp-0C],ecx
 005203DA    mov         dword ptr [ebp-8],edx
 005203DD    mov         dword ptr [ebp-4],eax
 005203E0    mov         eax,dword ptr [ebp-4]
 005203E3    cmp         byte ptr [eax+0F0],0
>005203EA    je          00520415
 005203EC    mov         eax,dword ptr [ebp-0C]
 005203EF    inc         eax
 005203F0    push        eax
 005203F1    lea         eax,[ebp-1C]
 005203F4    push        eax
 005203F5    mov         ecx,dword ptr [ebp+0C]
 005203F8    mov         edx,dword ptr [ebp-0C]
 005203FB    mov         eax,dword ptr [ebp-8]
 005203FE    call        0051DC50
 00520403    lea         edx,[ebp-1C]
 00520406    mov         ecx,80000000
 0052040B    mov         eax,dword ptr [ebp-4]
 0052040E    mov         ebx,dword ptr [eax]
 00520410    call        dword ptr [ebx+44]
>00520413    jmp         00520484
 00520415    mov         eax,dword ptr [ebp-0C]
 00520418    mov         edx,dword ptr [ebp-4]
 0052041B    cmp         eax,dword ptr [edx+4C]
>0052041E    jl          00520484
 00520420    mov         eax,dword ptr [ebp-0C]
 00520423    mov         edx,dword ptr [ebp-4]
 00520426    cmp         eax,dword ptr [edx+54]
>00520429    jge         00520484
 0052042B    mov         eax,dword ptr [ebp-4]
 0052042E    mov         eax,dword ptr [eax+50]
 00520431    push        eax
 00520432    lea         edx,[ebp+0C]
 00520435    lea         eax,[ebp-8]
 00520438    mov         ecx,dword ptr [ebp-4]
 0052043B    mov         ecx,dword ptr [ecx+48]
 0052043E    call        00513058
 00520443    test        al,al
>00520445    je          00520484
 00520447    mov         eax,dword ptr [ebp+0C]
 0052044A    push        eax
 0052044B    mov         eax,dword ptr [ebp+8]
 0052044E    push        eax
 0052044F    mov         ecx,dword ptr [ebp-0C]
 00520452    mov         edx,dword ptr [ebp-8]
 00520455    mov         eax,dword ptr [ebp-4]
 00520458    call        00520390
 0052045D    mov         eax,dword ptr [ebp-0C]
 00520460    inc         eax
 00520461    push        eax
 00520462    lea         eax,[ebp-1C]
 00520465    push        eax
 00520466    mov         ecx,dword ptr [ebp+0C]
 00520469    mov         edx,dword ptr [ebp-0C]
 0052046C    mov         eax,dword ptr [ebp-8]
 0052046F    call        0051DC50
 00520474    lea         edx,[ebp-1C]
 00520477    mov         ecx,80000000
 0052047C    mov         eax,dword ptr [ebp-4]
 0052047F    mov         ebx,dword ptr [eax]
 00520481    call        dword ptr [ebx+44]
 00520484    pop         ebx
 00520485    mov         esp,ebp
 00520487    pop         ebp
 00520488    ret         8
end;*}

//0052048C
{*procedure sub_0052048C(?:?; ?:?; ?:?; ?:?; ?:?);
begin
 0052048C    push        ebp
 0052048D    mov         ebp,esp
 0052048F    add         esp,0FFFFFFE4
 00520492    mov         dword ptr [ebp-0C],ecx
 00520495    mov         dword ptr [ebp-8],edx
 00520498    mov         dword ptr [ebp-4],eax
 0052049B    mov         eax,dword ptr [ebp+0C]
 0052049E    cmp         eax,dword ptr [ebp-8]
>005204A1    jl          005204F2
 005204A3    mov         ecx,dword ptr [ebp-0C]
 005204A6    mov         edx,dword ptr [ebp-8]
 005204A9    mov         eax,dword ptr [ebp-4]
 005204AC    call        0051F574
 005204B1    mov         dword ptr [ebp-14],eax
 005204B4    mov         eax,dword ptr [ebp-4]
 005204B7    movzx       eax,byte ptr [eax+7A]
 005204BB    mov         edx,dword ptr ds:[56E27C];^gvar_00577A00
 005204C1    mov         eax,dword ptr [edx+eax*4]
 005204C4    mov         dword ptr [ebp-18],eax
 005204C7    mov         eax,dword ptr [ebp-8]
 005204CA    mov         edx,dword ptr [ebp+0C]
 005204CD    sub         edx,eax
>005204CF    jl          005204ED
 005204D1    inc         edx
 005204D2    mov         dword ptr [ebp-1C],edx
 005204D5    mov         dword ptr [ebp-10],eax
 005204D8    mov         edx,dword ptr [ebp-14]
 005204DB    mov         eax,dword ptr [ebp+8]
 005204DE    call        dword ptr [ebp-18]
 005204E1    add         dword ptr [ebp-14],4
 005204E5    inc         dword ptr [ebp-10]
 005204E8    dec         dword ptr [ebp-1C]
>005204EB    jne         005204D8
 005204ED    call        00513ACC
 005204F2    mov         esp,ebp
 005204F4    pop         ebp
 005204F5    ret         8
end;*}

//005204F8
{*procedure sub_005204F8(?:?; ?:?; ?:?; ?:?; ?:?);
begin
 005204F8    push        ebp
 005204F9    mov         ebp,esp
 005204FB    add         esp,0FFFFFFE4
 005204FE    push        ebx
 005204FF    mov         dword ptr [ebp-0C],ecx
 00520502    mov         dword ptr [ebp-8],edx
 00520505    mov         dword ptr [ebp-4],eax
 00520508    mov         eax,dword ptr [ebp-4]
 0052050B    cmp         byte ptr [eax+0F0],0
>00520512    je          0052053D
 00520514    mov         eax,dword ptr [ebp-0C]
 00520517    inc         eax
 00520518    push        eax
 00520519    lea         eax,[ebp-1C]
 0052051C    push        eax
 0052051D    mov         ecx,dword ptr [ebp+0C]
 00520520    mov         edx,dword ptr [ebp-0C]
 00520523    mov         eax,dword ptr [ebp-8]
 00520526    call        0051DC50
 0052052B    lea         edx,[ebp-1C]
 0052052E    mov         ecx,80000000
 00520533    mov         eax,dword ptr [ebp-4]
 00520536    mov         ebx,dword ptr [eax]
 00520538    call        dword ptr [ebx+44]
>0052053B    jmp         005205AC
 0052053D    mov         eax,dword ptr [ebp-0C]
 00520540    mov         edx,dword ptr [ebp-4]
 00520543    cmp         eax,dword ptr [edx+4C]
>00520546    jl          005205AC
 00520548    mov         eax,dword ptr [ebp-0C]
 0052054B    mov         edx,dword ptr [ebp-4]
 0052054E    cmp         eax,dword ptr [edx+54]
>00520551    jge         005205AC
 00520553    mov         eax,dword ptr [ebp-4]
 00520556    mov         eax,dword ptr [eax+50]
 00520559    push        eax
 0052055A    lea         edx,[ebp+0C]
 0052055D    lea         eax,[ebp-8]
 00520560    mov         ecx,dword ptr [ebp-4]
 00520563    mov         ecx,dword ptr [ecx+48]
 00520566    call        00513058
 0052056B    test        al,al
>0052056D    je          005205AC
 0052056F    mov         eax,dword ptr [ebp+0C]
 00520572    push        eax
 00520573    mov         eax,dword ptr [ebp+8]
 00520576    push        eax
 00520577    mov         ecx,dword ptr [ebp-0C]
 0052057A    mov         edx,dword ptr [ebp-8]
 0052057D    mov         eax,dword ptr [ebp-4]
 00520580    call        0052048C
 00520585    mov         eax,dword ptr [ebp-0C]
 00520588    inc         eax
 00520589    push        eax
 0052058A    lea         eax,[ebp-1C]
 0052058D    push        eax
 0052058E    mov         ecx,dword ptr [ebp+0C]
 00520591    mov         edx,dword ptr [ebp-0C]
 00520594    mov         eax,dword ptr [ebp-8]
 00520597    call        0051DC50
 0052059C    lea         edx,[ebp-1C]
 0052059F    mov         ecx,80000000
 005205A4    mov         eax,dword ptr [ebp-4]
 005205A7    mov         ebx,dword ptr [eax]
 005205A9    call        dword ptr [ebx+44]
 005205AC    pop         ebx
 005205AD    mov         esp,ebp
 005205AF    pop         ebp
 005205B0    ret         8
end;*}

//005205B4
{*procedure sub_005205B4(?:?; ?:?; ?:?; ?:?; ?:?);
begin
 005205B4    push        ebp
 005205B5    mov         ebp,esp
 005205B7    add         esp,0FFFFFFE0
 005205BA    mov         dword ptr [ebp-0C],ecx
 005205BD    mov         dword ptr [ebp-8],edx
 005205C0    mov         dword ptr [ebp-4],eax
 005205C3    mov         eax,dword ptr [ebp+0C]
 005205C6    cmp         eax,dword ptr [ebp-0C]
>005205C9    jl          00520696
 005205CF    mov         ecx,dword ptr [ebp-0C]
 005205D2    mov         edx,dword ptr [ebp-8]
 005205D5    mov         eax,dword ptr [ebp-4]
 005205D8    call        0051F574
 005205DD    mov         dword ptr [ebp-1C],eax
 005205E0    mov         eax,dword ptr [ebp+0C]
 005205E3    sub         eax,dword ptr [ebp-0C]
 005205E6    inc         eax
 005205E7    mov         dword ptr [ebp-10],eax
 005205EA    mov         eax,dword ptr [ebp-10]
 005205ED    shr         eax,2
 005205F0    mov         dword ptr [ebp-14],eax
 005205F3    mov         eax,dword ptr [ebp-10]
 005205F6    and         eax,3
 005205F9    mov         dword ptr [ebp-18],eax
 005205FC    mov         eax,dword ptr [ebp-14]
 005205FF    dec         eax
 00520600    test        eax,eax
>00520602    jl          00520667
 00520604    inc         eax
 00520605    mov         dword ptr [ebp-20],eax
 00520608    mov         dword ptr [ebp-10],0
 0052060F    mov         eax,dword ptr [ebp+8]
 00520612    mov         edx,dword ptr [ebp-1C]
 00520615    mov         dword ptr [edx],eax
 00520617    mov         eax,dword ptr [ebp-4]
 0052061A    mov         eax,dword ptr [eax+34]
 0052061D    shl         eax,2
 00520620    add         dword ptr [ebp-1C],eax
 00520623    mov         eax,dword ptr [ebp+8]
 00520626    mov         edx,dword ptr [ebp-1C]
 00520629    mov         dword ptr [edx],eax
 0052062B    mov         eax,dword ptr [ebp-4]
 0052062E    mov         eax,dword ptr [eax+34]
 00520631    shl         eax,2
 00520634    add         dword ptr [ebp-1C],eax
 00520637    mov         eax,dword ptr [ebp+8]
 0052063A    mov         edx,dword ptr [ebp-1C]
 0052063D    mov         dword ptr [edx],eax
 0052063F    mov         eax,dword ptr [ebp-4]
 00520642    mov         eax,dword ptr [eax+34]
 00520645    shl         eax,2
 00520648    add         dword ptr [ebp-1C],eax
 0052064B    mov         eax,dword ptr [ebp+8]
 0052064E    mov         edx,dword ptr [ebp-1C]
 00520651    mov         dword ptr [edx],eax
 00520653    mov         eax,dword ptr [ebp-4]
 00520656    mov         eax,dword ptr [eax+34]
 00520659    shl         eax,2
 0052065C    add         dword ptr [ebp-1C],eax
 0052065F    inc         dword ptr [ebp-10]
 00520662    dec         dword ptr [ebp-20]
>00520665    jne         0052060F
 00520667    mov         eax,dword ptr [ebp-18]
 0052066A    dec         eax
 0052066B    test        eax,eax
>0052066D    jl          00520696
 0052066F    inc         eax
 00520670    mov         dword ptr [ebp-20],eax
 00520673    mov         dword ptr [ebp-10],0
 0052067A    mov         eax,dword ptr [ebp+8]
 0052067D    mov         edx,dword ptr [ebp-1C]
 00520680    mov         dword ptr [edx],eax
 00520682    mov         eax,dword ptr [ebp-4]
 00520685    mov         eax,dword ptr [eax+34]
 00520688    shl         eax,2
 0052068B    add         dword ptr [ebp-1C],eax
 0052068E    inc         dword ptr [ebp-10]
 00520691    dec         dword ptr [ebp-20]
>00520694    jne         0052067A
 00520696    mov         esp,ebp
 00520698    pop         ebp
 00520699    ret         8
end;*}

//0052069C
{*procedure sub_0052069C(?:?; ?:?; ?:?; ?:?; ?:?);
begin
 0052069C    push        ebp
 0052069D    mov         ebp,esp
 0052069F    add         esp,0FFFFFFE4
 005206A2    push        ebx
 005206A3    mov         dword ptr [ebp-0C],ecx
 005206A6    mov         dword ptr [ebp-8],edx
 005206A9    mov         dword ptr [ebp-4],eax
 005206AC    mov         eax,dword ptr [ebp-4]
 005206AF    cmp         byte ptr [eax+0F0],0
>005206B6    je          005206E1
 005206B8    mov         eax,dword ptr [ebp+0C]
 005206BB    push        eax
 005206BC    lea         eax,[ebp-1C]
 005206BF    push        eax
 005206C0    mov         ecx,dword ptr [ebp-8]
 005206C3    inc         ecx
 005206C4    mov         edx,dword ptr [ebp-0C]
 005206C7    mov         eax,dword ptr [ebp-8]
 005206CA    call        0051DC50
 005206CF    lea         edx,[ebp-1C]
 005206D2    mov         ecx,80000000
 005206D7    mov         eax,dword ptr [ebp-4]
 005206DA    mov         ebx,dword ptr [eax]
 005206DC    call        dword ptr [ebx+44]
>005206DF    jmp         00520750
 005206E1    mov         eax,dword ptr [ebp-8]
 005206E4    mov         edx,dword ptr [ebp-4]
 005206E7    cmp         eax,dword ptr [edx+48]
>005206EA    jl          00520750
 005206EC    mov         eax,dword ptr [ebp-8]
 005206EF    mov         edx,dword ptr [ebp-4]
 005206F2    cmp         eax,dword ptr [edx+50]
>005206F5    jge         00520750
 005206F7    mov         eax,dword ptr [ebp-4]
 005206FA    mov         eax,dword ptr [eax+54]
 005206FD    push        eax
 005206FE    lea         edx,[ebp+0C]
 00520701    lea         eax,[ebp-0C]
 00520704    mov         ecx,dword ptr [ebp-4]
 00520707    mov         ecx,dword ptr [ecx+4C]
 0052070A    call        00513058
 0052070F    test        al,al
>00520711    je          00520750
 00520713    mov         eax,dword ptr [ebp+0C]
 00520716    push        eax
 00520717    mov         eax,dword ptr [ebp+8]
 0052071A    push        eax
 0052071B    mov         ecx,dword ptr [ebp-0C]
 0052071E    mov         edx,dword ptr [ebp-8]
 00520721    mov         eax,dword ptr [ebp-4]
 00520724    call        005205B4
 00520729    mov         eax,dword ptr [ebp+0C]
 0052072C    push        eax
 0052072D    lea         eax,[ebp-1C]
 00520730    push        eax
 00520731    mov         ecx,dword ptr [ebp-8]
 00520734    inc         ecx
 00520735    mov         edx,dword ptr [ebp-0C]
 00520738    mov         eax,dword ptr [ebp-8]
 0052073B    call        0051DC50
 00520740    lea         edx,[ebp-1C]
 00520743    mov         ecx,80000000
 00520748    mov         eax,dword ptr [ebp-4]
 0052074B    mov         ebx,dword ptr [eax]
 0052074D    call        dword ptr [ebx+44]
 00520750    pop         ebx
 00520751    mov         esp,ebp
 00520753    pop         ebp
 00520754    ret         8
end;*}

//00520758
{*procedure sub_00520758(?:?; ?:?; ?:?; ?:?; ?:?);
begin
 00520758    push        ebp
 00520759    mov         ebp,esp
 0052075B    add         esp,0FFFFFFE4
 0052075E    mov         dword ptr [ebp-0C],ecx
 00520761    mov         dword ptr [ebp-8],edx
 00520764    mov         dword ptr [ebp-4],eax
 00520767    mov         ecx,dword ptr [ebp-0C]
 0052076A    mov         edx,dword ptr [ebp-8]
 0052076D    mov         eax,dword ptr [ebp-4]
 00520770    call        0051F574
 00520775    mov         dword ptr [ebp-14],eax
 00520778    mov         eax,dword ptr [ebp-4]
 0052077B    movzx       eax,byte ptr [eax+7A]
 0052077F    mov         edx,dword ptr ds:[56E27C];^gvar_00577A00
 00520785    mov         eax,dword ptr [edx+eax*4]
 00520788    mov         dword ptr [ebp-18],eax
 0052078B    mov         eax,dword ptr [ebp-0C]
 0052078E    mov         edx,dword ptr [ebp+0C]
 00520791    sub         edx,eax
>00520793    jl          005207B9
 00520795    inc         edx
 00520796    mov         dword ptr [ebp-1C],edx
 00520799    mov         dword ptr [ebp-10],eax
 0052079C    mov         edx,dword ptr [ebp-14]
 0052079F    mov         eax,dword ptr [ebp+8]
 005207A2    call        dword ptr [ebp-18]
 005207A5    mov         eax,dword ptr [ebp-4]
 005207A8    mov         eax,dword ptr [eax+34]
 005207AB    shl         eax,2
 005207AE    add         dword ptr [ebp-14],eax
 005207B1    inc         dword ptr [ebp-10]
 005207B4    dec         dword ptr [ebp-1C]
>005207B7    jne         0052079C
 005207B9    call        00513ACC
 005207BE    mov         esp,ebp
 005207C0    pop         ebp
 005207C1    ret         8
end;*}

//005207C4
{*procedure sub_005207C4(?:?; ?:?; ?:?; ?:?; ?:?);
begin
 005207C4    push        ebp
 005207C5    mov         ebp,esp
 005207C7    add         esp,0FFFFFFE4
 005207CA    push        ebx
 005207CB    mov         dword ptr [ebp-0C],ecx
 005207CE    mov         dword ptr [ebp-8],edx
 005207D1    mov         dword ptr [ebp-4],eax
 005207D4    mov         eax,dword ptr [ebp-4]
 005207D7    cmp         byte ptr [eax+0F0],0
>005207DE    je          00520809
 005207E0    mov         eax,dword ptr [ebp+0C]
 005207E3    push        eax
 005207E4    lea         eax,[ebp-1C]
 005207E7    push        eax
 005207E8    mov         ecx,dword ptr [ebp-8]
 005207EB    inc         ecx
 005207EC    mov         edx,dword ptr [ebp-0C]
 005207EF    mov         eax,dword ptr [ebp-8]
 005207F2    call        0051DC50
 005207F7    lea         edx,[ebp-1C]
 005207FA    mov         ecx,80000000
 005207FF    mov         eax,dword ptr [ebp-4]
 00520802    mov         ebx,dword ptr [eax]
 00520804    call        dword ptr [ebx+44]
>00520807    jmp         00520878
 00520809    mov         eax,dword ptr [ebp-8]
 0052080C    mov         edx,dword ptr [ebp-4]
 0052080F    cmp         eax,dword ptr [edx+48]
>00520812    jl          00520878
 00520814    mov         eax,dword ptr [ebp-8]
 00520817    mov         edx,dword ptr [ebp-4]
 0052081A    cmp         eax,dword ptr [edx+50]
>0052081D    jge         00520878
 0052081F    mov         eax,dword ptr [ebp-4]
 00520822    mov         eax,dword ptr [eax+54]
 00520825    push        eax
 00520826    lea         edx,[ebp+0C]
 00520829    lea         eax,[ebp-0C]
 0052082C    mov         ecx,dword ptr [ebp-4]
 0052082F    mov         ecx,dword ptr [ecx+4C]
 00520832    call        00513058
 00520837    test        al,al
>00520839    je          00520878
 0052083B    mov         eax,dword ptr [ebp+0C]
 0052083E    push        eax
 0052083F    mov         eax,dword ptr [ebp+8]
 00520842    push        eax
 00520843    mov         ecx,dword ptr [ebp-0C]
 00520846    mov         edx,dword ptr [ebp-8]
 00520849    mov         eax,dword ptr [ebp-4]
 0052084C    call        00520758
 00520851    mov         eax,dword ptr [ebp+0C]
 00520854    push        eax
 00520855    lea         eax,[ebp-1C]
 00520858    push        eax
 00520859    mov         ecx,dword ptr [ebp-8]
 0052085C    inc         ecx
 0052085D    mov         edx,dword ptr [ebp-0C]
 00520860    mov         eax,dword ptr [ebp-8]
 00520863    call        0051DC50
 00520868    lea         edx,[ebp-1C]
 0052086B    mov         ecx,80000000
 00520870    mov         eax,dword ptr [ebp-4]
 00520873    mov         ebx,dword ptr [eax]
 00520875    call        dword ptr [ebx+44]
 00520878    pop         ebx
 00520879    mov         esp,ebp
 0052087B    pop         ebp
 0052087C    ret         8
end;*}

//00520880
{*procedure sub_00520880(?:TBitmap32; ?:?; ?:Integer; ?:?; ?:?; ?:?; ?:?);
begin
 00520880    push        ebp
 00520881    mov         ebp,esp
 00520883    add         esp,0FFFFFF90
 00520886    push        ebx
 00520887    mov         dword ptr [ebp-0C],ecx
 0052088A    mov         dword ptr [ebp-8],edx
 0052088D    mov         dword ptr [ebp-4],eax
 00520890    mov         eax,dword ptr [ebp+10]
 00520893    push        eax
 00520894    lea         eax,[ebp-70]
 00520897    push        eax
 00520898    mov         ecx,dword ptr [ebp+14]
 0052089B    mov         edx,dword ptr [ebp-0C]
 0052089E    mov         eax,dword ptr [ebp-8]
 005208A1    call        0051DC50
 005208A6    mov         eax,dword ptr [ebp-4]
 005208A9    cmp         byte ptr [eax+0F0],0
>005208B0    jne         00520D58
 005208B6    mov         eax,dword ptr [ebp+14]
 005208B9    sub         eax,dword ptr [ebp-8]
 005208BC    mov         dword ptr [ebp-34],eax
 005208BF    mov         eax,dword ptr [ebp+10]
 005208C2    sub         eax,dword ptr [ebp-0C]
 005208C5    mov         dword ptr [ebp-38],eax
 005208C8    cmp         dword ptr [ebp-34],0
>005208CC    jne         0052092F
 005208CE    cmp         dword ptr [ebp-38],0
>005208D2    jle         005208ED
 005208D4    mov         eax,dword ptr [ebp+10]
 005208D7    dec         eax
 005208D8    push        eax
 005208D9    mov         eax,dword ptr [ebp+0C]
 005208DC    push        eax
 005208DD    mov         ecx,dword ptr [ebp-0C]
 005208E0    mov         edx,dword ptr [ebp-8]
 005208E3    mov         eax,dword ptr [ebp-4]
 005208E6    call        0052069C
>005208EB    jmp         0052090A
 005208ED    cmp         dword ptr [ebp-38],0
>005208F1    jge         0052090A
 005208F3    mov         eax,dword ptr [ebp-0C]
 005208F6    push        eax
 005208F7    mov         eax,dword ptr [ebp+0C]
 005208FA    push        eax
 005208FB    mov         ecx,dword ptr [ebp+10]
 005208FE    inc         ecx
 005208FF    mov         edx,dword ptr [ebp-8]
 00520902    mov         eax,dword ptr [ebp-4]
 00520905    call        0052069C
 0052090A    cmp         byte ptr [ebp+8],0
>0052090E    je          00520922
 00520910    mov         eax,dword ptr [ebp+0C]
 00520913    push        eax
 00520914    mov         ecx,dword ptr [ebp+10]
 00520917    mov         edx,dword ptr [ebp+14]
 0052091A    mov         eax,dword ptr [ebp-4]
 0052091D    call        0051F458
 00520922    mov         eax,dword ptr [ebp-4]
 00520925    mov         edx,dword ptr [eax]
 00520927    call        dword ptr [edx+0C]
>0052092A    jmp         00520D68
 0052092F    cmp         dword ptr [ebp-38],0
>00520933    jne         00520996
 00520935    cmp         dword ptr [ebp-34],0
>00520939    jle         00520954
 0052093B    mov         eax,dword ptr [ebp+14]
 0052093E    dec         eax
 0052093F    push        eax
 00520940    mov         eax,dword ptr [ebp+0C]
 00520943    push        eax
 00520944    mov         ecx,dword ptr [ebp-0C]
 00520947    mov         edx,dword ptr [ebp-8]
 0052094A    mov         eax,dword ptr [ebp-4]
 0052094D    call        005203D0
>00520952    jmp         00520971
 00520954    cmp         dword ptr [ebp-34],0
>00520958    jge         00520971
 0052095A    mov         eax,dword ptr [ebp-8]
 0052095D    push        eax
 0052095E    mov         eax,dword ptr [ebp+0C]
 00520961    push        eax
 00520962    mov         edx,dword ptr [ebp+14]
 00520965    inc         edx
 00520966    mov         ecx,dword ptr [ebp-0C]
 00520969    mov         eax,dword ptr [ebp-4]
 0052096C    call        005203D0
 00520971    cmp         byte ptr [ebp+8],0
>00520975    je          00520989
 00520977    mov         eax,dword ptr [ebp+0C]
 0052097A    push        eax
 0052097B    mov         ecx,dword ptr [ebp+10]
 0052097E    mov         edx,dword ptr [ebp+14]
 00520981    mov         eax,dword ptr [ebp-4]
 00520984    call        0051F458
 00520989    mov         eax,dword ptr [ebp-4]
 0052098C    mov         edx,dword ptr [eax]
 0052098E    call        dword ptr [edx+0C]
>00520991    jmp         00520D68
 00520996    mov         eax,dword ptr [ebp-4]
 00520999    mov         eax,dword ptr [eax+48]
 0052099C    mov         dword ptr [ebp-18],eax
 0052099F    mov         eax,dword ptr [ebp-4]
 005209A2    mov         eax,dword ptr [eax+50]
 005209A5    dec         eax
 005209A6    mov         dword ptr [ebp-1C],eax
 005209A9    mov         eax,dword ptr [ebp-4]
 005209AC    mov         eax,dword ptr [eax+4C]
 005209AF    mov         dword ptr [ebp-20],eax
 005209B2    mov         eax,dword ptr [ebp-4]
 005209B5    mov         eax,dword ptr [eax+54]
 005209B8    dec         eax
 005209B9    mov         dword ptr [ebp-24],eax
 005209BC    cmp         dword ptr [ebp-34],0
>005209C0    jle         005209E3
 005209C2    mov         eax,dword ptr [ebp-8]
 005209C5    cmp         eax,dword ptr [ebp-1C]
>005209C8    jg          00520D68
 005209CE    mov         eax,dword ptr [ebp+14]
 005209D1    cmp         eax,dword ptr [ebp-18]
>005209D4    jl          00520D68
 005209DA    mov         dword ptr [ebp-2C],1
>005209E1    jmp         00520A1C
 005209E3    mov         eax,dword ptr [ebp+14]
 005209E6    cmp         eax,dword ptr [ebp-1C]
>005209E9    jg          00520D68
 005209EF    mov         eax,dword ptr [ebp-8]
 005209F2    cmp         eax,dword ptr [ebp-18]
>005209F5    jl          00520D68
 005209FB    mov         dword ptr [ebp-2C],0FFFFFFFF
 00520A02    neg         dword ptr [ebp-8]
 00520A05    neg         dword ptr [ebp+14]
 00520A08    neg         dword ptr [ebp-34]
 00520A0B    neg         dword ptr [ebp-18]
 00520A0E    neg         dword ptr [ebp-1C]
 00520A11    lea         edx,[ebp-1C]
 00520A14    lea         eax,[ebp-18]
 00520A17    call        00513044
 00520A1C    cmp         dword ptr [ebp-38],0
>00520A20    jle         00520A43
 00520A22    mov         eax,dword ptr [ebp-0C]
 00520A25    cmp         eax,dword ptr [ebp-24]
>00520A28    jg          00520D68
 00520A2E    mov         eax,dword ptr [ebp+10]
 00520A31    cmp         eax,dword ptr [ebp-20]
>00520A34    jl          00520D68
 00520A3A    mov         dword ptr [ebp-30],1
>00520A41    jmp         00520A7C
 00520A43    mov         eax,dword ptr [ebp+10]
 00520A46    cmp         eax,dword ptr [ebp-24]
>00520A49    jg          00520D68
 00520A4F    mov         eax,dword ptr [ebp-0C]
 00520A52    cmp         eax,dword ptr [ebp-20]
>00520A55    jl          00520D68
 00520A5B    mov         dword ptr [ebp-30],0FFFFFFFF
 00520A62    neg         dword ptr [ebp-0C]
 00520A65    neg         dword ptr [ebp+10]
 00520A68    neg         dword ptr [ebp-38]
 00520A6B    neg         dword ptr [ebp-20]
 00520A6E    neg         dword ptr [ebp-24]
 00520A71    lea         edx,[ebp-24]
 00520A74    lea         eax,[ebp-20]
 00520A77    call        00513044
 00520A7C    mov         eax,dword ptr [ebp-34]
 00520A7F    cmp         eax,dword ptr [ebp-38]
>00520A82    jge         00520ACC
 00520A84    mov         byte ptr [ebp-59],1
 00520A88    lea         edx,[ebp-0C]
 00520A8B    lea         eax,[ebp-8]
 00520A8E    call        00513044
 00520A93    lea         edx,[ebp+10]
 00520A96    lea         eax,[ebp+14]
 00520A99    call        00513044
 00520A9E    lea         edx,[ebp-38]
 00520AA1    lea         eax,[ebp-34]
 00520AA4    call        00513044
 00520AA9    lea         edx,[ebp-20]
 00520AAC    lea         eax,[ebp-18]
 00520AAF    call        00513044
 00520AB4    lea         edx,[ebp-24]
 00520AB7    lea         eax,[ebp-1C]
 00520ABA    call        00513044
 00520ABF    lea         edx,[ebp-30]
 00520AC2    lea         eax,[ebp-2C]
 00520AC5    call        00513044
>00520ACA    jmp         00520AD0
 00520ACC    mov         byte ptr [ebp-59],0
 00520AD0    mov         eax,dword ptr [ebp-34]
 00520AD3    add         eax,eax
 00520AD5    mov         dword ptr [ebp-10],eax
 00520AD8    mov         eax,dword ptr [ebp-38]
 00520ADB    add         eax,eax
 00520ADD    mov         dword ptr [ebp-14],eax
 00520AE0    mov         eax,dword ptr [ebp-8]
 00520AE3    mov         dword ptr [ebp-3C],eax
 00520AE6    mov         eax,dword ptr [ebp-0C]
 00520AE9    mov         dword ptr [ebp-40],eax
 00520AEC    mov         eax,dword ptr [ebp-14]
 00520AEF    sub         eax,dword ptr [ebp-34]
 00520AF2    mov         dword ptr [ebp-4C],eax
 00520AF5    mov         eax,dword ptr [ebp+14]
 00520AF8    mov         dword ptr [ebp-48],eax
 00520AFB    mov         byte ptr [ebp-5A],1
 00520AFF    mov         eax,dword ptr [ebp-0C]
 00520B02    cmp         eax,dword ptr [ebp-20]
>00520B05    jge         00520B90
 00520B0B    mov         eax,dword ptr [ebp-20]
 00520B0E    sub         eax,dword ptr [ebp-0C]
 00520B11    cdq
 00520B12    push        edx
 00520B13    push        eax
 00520B14    mov         eax,dword ptr [ebp-10]
 00520B17    cdq
 00520B18    call        @_llmul
 00520B1D    push        edx
 00520B1E    push        eax
 00520B1F    mov         eax,dword ptr [ebp-34]
 00520B22    cdq
 00520B23    sub         dword ptr [esp],eax
 00520B26    sbb         dword ptr [esp+4],edx
 00520B2A    pop         eax
 00520B2B    pop         edx
 00520B2C    mov         dword ptr [ebp-58],eax
 00520B2F    mov         dword ptr [ebp-54],edx
 00520B32    mov         eax,dword ptr [ebp-14]
 00520B35    cdq
 00520B36    push        edx
 00520B37    push        eax
 00520B38    mov         eax,dword ptr [ebp-58]
 00520B3B    mov         edx,dword ptr [ebp-54]
 00520B3E    call        @_lldiv
 00520B43    add         dword ptr [ebp-3C],eax
 00520B46    mov         eax,dword ptr [ebp-14]
 00520B49    cdq
 00520B4A    push        edx
 00520B4B    push        eax
 00520B4C    mov         eax,dword ptr [ebp-58]
 00520B4F    mov         edx,dword ptr [ebp-54]
 00520B52    call        @_llmod
 00520B57    mov         dword ptr [ebp-44],eax
 00520B5A    mov         eax,dword ptr [ebp-3C]
 00520B5D    cmp         eax,dword ptr [ebp-1C]
>00520B60    jg          00520D68
 00520B66    mov         eax,dword ptr [ebp-3C]
 00520B69    cmp         eax,dword ptr [ebp-18]
>00520B6C    jl          00520B90
 00520B6E    mov         eax,dword ptr [ebp-20]
 00520B71    mov         dword ptr [ebp-40],eax
 00520B74    mov         eax,dword ptr [ebp-44]
 00520B77    add         eax,dword ptr [ebp-34]
 00520B7A    sub         dword ptr [ebp-4C],eax
 00520B7D    cmp         dword ptr [ebp-44],0
>00520B81    jle         00520B8C
 00520B83    inc         dword ptr [ebp-3C]
 00520B86    mov         eax,dword ptr [ebp-14]
 00520B89    add         dword ptr [ebp-4C],eax
 00520B8C    mov         byte ptr [ebp-5A],0
 00520B90    cmp         byte ptr [ebp-5A],0
>00520B94    je          00520C1F
 00520B9A    mov         eax,dword ptr [ebp-8]
 00520B9D    cmp         eax,dword ptr [ebp-18]
>00520BA0    jge         00520C1F
 00520BA2    mov         eax,dword ptr [ebp-18]
 00520BA5    sub         eax,dword ptr [ebp-8]
 00520BA8    cdq
 00520BA9    push        edx
 00520BAA    push        eax
 00520BAB    mov         eax,dword ptr [ebp-14]
 00520BAE    cdq
 00520BAF    call        @_llmul
 00520BB4    mov         dword ptr [ebp-58],eax
 00520BB7    mov         dword ptr [ebp-54],edx
 00520BBA    mov         eax,dword ptr [ebp-10]
 00520BBD    cdq
 00520BBE    push        edx
 00520BBF    push        eax
 00520BC0    mov         eax,dword ptr [ebp-58]
 00520BC3    mov         edx,dword ptr [ebp-54]
 00520BC6    call        @_lldiv
 00520BCB    add         dword ptr [ebp-40],eax
 00520BCE    mov         eax,dword ptr [ebp-10]
 00520BD1    cdq
 00520BD2    push        edx
 00520BD3    push        eax
 00520BD4    mov         eax,dword ptr [ebp-58]
 00520BD7    mov         edx,dword ptr [ebp-54]
 00520BDA    call        @_llmod
 00520BDF    mov         dword ptr [ebp-44],eax
 00520BE2    mov         eax,dword ptr [ebp-40]
 00520BE5    cmp         eax,dword ptr [ebp-24]
>00520BE8    jg          00520D68
 00520BEE    mov         eax,dword ptr [ebp-40]
 00520BF1    cmp         eax,dword ptr [ebp-24]
>00520BF4    jne         00520C02
 00520BF6    mov         eax,dword ptr [ebp-44]
 00520BF9    cmp         eax,dword ptr [ebp-34]
>00520BFC    jge         00520D68
 00520C02    mov         eax,dword ptr [ebp-18]
 00520C05    mov         dword ptr [ebp-3C],eax
 00520C08    mov         eax,dword ptr [ebp-44]
 00520C0B    add         dword ptr [ebp-4C],eax
 00520C0E    mov         eax,dword ptr [ebp-44]
 00520C11    cmp         eax,dword ptr [ebp-34]
>00520C14    jl          00520C1F
 00520C16    inc         dword ptr [ebp-40]
 00520C19    mov         eax,dword ptr [ebp-10]
 00520C1C    sub         dword ptr [ebp-4C],eax
 00520C1F    mov         byte ptr [ebp-5A],0
 00520C23    mov         eax,dword ptr [ebp+10]
 00520C26    cmp         eax,dword ptr [ebp-24]
>00520C29    jle         00520C76
 00520C2B    mov         eax,dword ptr [ebp-24]
 00520C2E    sub         eax,dword ptr [ebp-0C]
 00520C31    imul        dword ptr [ebp-10]
 00520C34    add         eax,dword ptr [ebp-34]
 00520C37    cdq
 00520C38    mov         dword ptr [ebp-58],eax
 00520C3B    mov         dword ptr [ebp-54],edx
 00520C3E    mov         eax,dword ptr [ebp-14]
 00520C41    cdq
 00520C42    push        edx
 00520C43    push        eax
 00520C44    mov         eax,dword ptr [ebp-58]
 00520C47    mov         edx,dword ptr [ebp-54]
 00520C4A    call        @_lldiv
 00520C4F    add         eax,dword ptr [ebp-8]
 00520C52    mov         dword ptr [ebp-48],eax
 00520C55    mov         eax,dword ptr [ebp-14]
 00520C58    cdq
 00520C59    push        edx
 00520C5A    push        eax
 00520C5B    mov         eax,dword ptr [ebp-58]
 00520C5E    mov         edx,dword ptr [ebp-54]
 00520C61    call        @_llmod
 00520C66    mov         dword ptr [ebp-44],eax
 00520C69    cmp         dword ptr [ebp-44],0
>00520C6D    jne         00520C72
 00520C6F    dec         dword ptr [ebp-48]
 00520C72    mov         byte ptr [ebp-5A],1
 00520C76    mov         eax,dword ptr [ebp-48]
 00520C79    cmp         eax,dword ptr [ebp-1C]
>00520C7C    jle         00520C88
 00520C7E    mov         eax,dword ptr [ebp-1C]
 00520C81    mov         dword ptr [ebp-48],eax
 00520C84    mov         byte ptr [ebp-5A],1
 00520C88    inc         dword ptr [ebp-48]
 00520C8B    cmp         dword ptr [ebp-30],0FFFFFFFF
>00520C8F    jne         00520C94
 00520C91    neg         dword ptr [ebp-40]
 00520C94    cmp         dword ptr [ebp-2C],0FFFFFFFF
>00520C98    jne         00520CA0
 00520C9A    neg         dword ptr [ebp-3C]
 00520C9D    neg         dword ptr [ebp-48]
 00520CA0    mov         eax,dword ptr [ebp-14]
 00520CA3    sub         dword ptr [ebp-10],eax
 00520CA6    cmp         byte ptr [ebp-59],0
>00520CAA    je          00520CD2
 00520CAC    mov         eax,dword ptr [ebp-2C]
 00520CAF    mov         edx,dword ptr [ebp-4]
 00520CB2    imul        dword ptr [edx+34]
 00520CB5    mov         dword ptr [ebp-28],eax
 00520CB8    mov         eax,dword ptr [ebp-3C]
 00520CBB    mov         edx,dword ptr [ebp-4]
 00520CBE    imul        dword ptr [edx+34]
 00520CC1    add         eax,dword ptr [ebp-40]
 00520CC4    mov         edx,dword ptr [ebp-4]
 00520CC7    mov         edx,dword ptr [edx+40]
 00520CCA    lea         eax,[edx+eax*4]
 00520CCD    mov         dword ptr [ebp-60],eax
>00520CD0    jmp         00520CFC
 00520CD2    mov         eax,dword ptr [ebp-2C]
 00520CD5    mov         dword ptr [ebp-28],eax
 00520CD8    mov         eax,dword ptr [ebp-30]
 00520CDB    mov         edx,dword ptr [ebp-4]
 00520CDE    imul        dword ptr [edx+34]
 00520CE1    mov         dword ptr [ebp-30],eax
 00520CE4    mov         eax,dword ptr [ebp-40]
 00520CE7    mov         edx,dword ptr [ebp-4]
 00520CEA    imul        dword ptr [edx+34]
 00520CED    add         eax,dword ptr [ebp-3C]
 00520CF0    mov         edx,dword ptr [ebp-4]
 00520CF3    mov         edx,dword ptr [edx+40]
 00520CF6    lea         eax,[edx+eax*4]
 00520CF9    mov         dword ptr [ebp-60],eax
 00520CFC    mov         al,byte ptr [ebp+8]
 00520CFF    or          al,byte ptr [ebp-5A]
>00520D02    jne         00520D14
 00520D04    mov         eax,dword ptr [ebp-3C]
 00520D07    cmp         eax,dword ptr [ebp-48]
>00520D0A    jge         00520D11
 00520D0C    dec         dword ptr [ebp-48]
>00520D0F    jmp         00520D14
 00520D11    inc         dword ptr [ebp-48]
 00520D14    mov         eax,dword ptr [ebp-3C]
 00520D17    cmp         eax,dword ptr [ebp-48]
>00520D1A    je          00520D58
 00520D1C    mov         eax,dword ptr [ebp-2C]
 00520D1F    add         dword ptr [ebp-3C],eax
 00520D22    mov         eax,dword ptr [ebp-60]
 00520D25    mov         edx,dword ptr [ebp+0C]
 00520D28    mov         dword ptr [eax],edx
 00520D2A    mov         eax,dword ptr [ebp-28]
 00520D2D    shl         eax,2
 00520D30    add         dword ptr [ebp-60],eax
 00520D33    cmp         dword ptr [ebp-4C],0
>00520D37    jl          00520D4A
 00520D39    mov         eax,dword ptr [ebp-30]
 00520D3C    shl         eax,2
 00520D3F    add         dword ptr [ebp-60],eax
 00520D42    mov         eax,dword ptr [ebp-10]
 00520D45    sub         dword ptr [ebp-4C],eax
>00520D48    jmp         00520D50
 00520D4A    mov         eax,dword ptr [ebp-14]
 00520D4D    add         dword ptr [ebp-4C],eax
 00520D50    mov         eax,dword ptr [ebp-3C]
 00520D53    cmp         eax,dword ptr [ebp-48]
>00520D56    jne         00520D1C
 00520D58    lea         edx,[ebp-70]
 00520D5B    mov         ecx,40000002
 00520D60    mov         eax,dword ptr [ebp-4]
 00520D63    mov         ebx,dword ptr [eax]
 00520D65    call        dword ptr [ebx+44]
 00520D68    pop         ebx
 00520D69    mov         esp,ebp
 00520D6B    pop         ebp
 00520D6C    ret         10
end;*}

//00520D70
{*procedure sub_00520D70(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
begin
 00520D70    push        ebp
 00520D71    mov         ebp,esp
 00520D73    add         esp,0FFFFFF8C
 00520D76    push        ebx
 00520D77    mov         dword ptr [ebp-0C],ecx
 00520D7A    mov         dword ptr [ebp-8],edx
 00520D7D    mov         dword ptr [ebp-4],eax
 00520D80    mov         eax,dword ptr [ebp+10]
 00520D83    push        eax
 00520D84    lea         eax,[ebp-74]
 00520D87    push        eax
 00520D88    mov         ecx,dword ptr [ebp+14]
 00520D8B    mov         edx,dword ptr [ebp-0C]
 00520D8E    mov         eax,dword ptr [ebp-8]
 00520D91    call        0051DC50
 00520D96    mov         eax,dword ptr [ebp-4]
 00520D99    cmp         byte ptr [eax+0F0],0
>00520DA0    jne         00521291
 00520DA6    mov         eax,dword ptr [ebp+14]
 00520DA9    sub         eax,dword ptr [ebp-8]
 00520DAC    mov         dword ptr [ebp-2C],eax
 00520DAF    mov         eax,dword ptr [ebp+10]
 00520DB2    sub         eax,dword ptr [ebp-0C]
 00520DB5    mov         dword ptr [ebp-30],eax
 00520DB8    cmp         dword ptr [ebp-2C],0
>00520DBC    jne         00520E1B
 00520DBE    cmp         dword ptr [ebp-30],0
>00520DC2    jle         00520DDD
 00520DC4    mov         eax,dword ptr [ebp+10]
 00520DC7    dec         eax
 00520DC8    push        eax
 00520DC9    mov         eax,dword ptr [ebp+0C]
 00520DCC    push        eax
 00520DCD    mov         ecx,dword ptr [ebp-0C]
 00520DD0    mov         edx,dword ptr [ebp-8]
 00520DD3    mov         eax,dword ptr [ebp-4]
 00520DD6    call        005207C4
>00520DDB    jmp         00520DFA
 00520DDD    cmp         dword ptr [ebp-30],0
>00520DE1    jge         00520DFA
 00520DE3    mov         eax,dword ptr [ebp-0C]
 00520DE6    push        eax
 00520DE7    mov         eax,dword ptr [ebp+0C]
 00520DEA    push        eax
 00520DEB    mov         ecx,dword ptr [ebp+10]
 00520DEE    inc         ecx
 00520DEF    mov         edx,dword ptr [ebp-8]
 00520DF2    mov         eax,dword ptr [ebp-4]
 00520DF5    call        005207C4
 00520DFA    cmp         byte ptr [ebp+8],0
>00520DFE    je          005212A1
 00520E04    mov         eax,dword ptr [ebp+0C]
 00520E07    push        eax
 00520E08    mov         ecx,dword ptr [ebp+10]
 00520E0B    mov         edx,dword ptr [ebp+14]
 00520E0E    mov         eax,dword ptr [ebp-4]
 00520E11    call        0051F854
>00520E16    jmp         005212A1
 00520E1B    cmp         dword ptr [ebp-30],0
>00520E1F    jne         00520E7E
 00520E21    cmp         dword ptr [ebp-2C],0
>00520E25    jle         00520E40
 00520E27    mov         eax,dword ptr [ebp+14]
 00520E2A    dec         eax
 00520E2B    push        eax
 00520E2C    mov         eax,dword ptr [ebp+0C]
 00520E2F    push        eax
 00520E30    mov         ecx,dword ptr [ebp-0C]
 00520E33    mov         edx,dword ptr [ebp-8]
 00520E36    mov         eax,dword ptr [ebp-4]
 00520E39    call        005204F8
>00520E3E    jmp         00520E5D
 00520E40    cmp         dword ptr [ebp-2C],0
>00520E44    jge         00520E5D
 00520E46    mov         eax,dword ptr [ebp-8]
 00520E49    push        eax
 00520E4A    mov         eax,dword ptr [ebp+0C]
 00520E4D    push        eax
 00520E4E    mov         edx,dword ptr [ebp+14]
 00520E51    inc         edx
 00520E52    mov         ecx,dword ptr [ebp-0C]
 00520E55    mov         eax,dword ptr [ebp-4]
 00520E58    call        005204F8
 00520E5D    cmp         byte ptr [ebp+8],0
>00520E61    je          005212A1
 00520E67    mov         eax,dword ptr [ebp+0C]
 00520E6A    push        eax
 00520E6B    mov         ecx,dword ptr [ebp+10]
 00520E6E    mov         edx,dword ptr [ebp+14]
 00520E71    mov         eax,dword ptr [ebp-4]
 00520E74    call        0051F854
>00520E79    jmp         005212A1
 00520E7E    mov         eax,dword ptr [ebp-4]
 00520E81    mov         eax,dword ptr [eax+48]
 00520E84    mov         dword ptr [ebp-10],eax
 00520E87    mov         eax,dword ptr [ebp-4]
 00520E8A    mov         eax,dword ptr [eax+50]
 00520E8D    dec         eax
 00520E8E    mov         dword ptr [ebp-14],eax
 00520E91    mov         eax,dword ptr [ebp-4]
 00520E94    mov         eax,dword ptr [eax+4C]
 00520E97    mov         dword ptr [ebp-18],eax
 00520E9A    mov         eax,dword ptr [ebp-4]
 00520E9D    mov         eax,dword ptr [eax+54]
 00520EA0    dec         eax
 00520EA1    mov         dword ptr [ebp-1C],eax
 00520EA4    cmp         dword ptr [ebp-2C],0
>00520EA8    jle         00520ECB
 00520EAA    mov         eax,dword ptr [ebp-8]
 00520EAD    cmp         eax,dword ptr [ebp-14]
>00520EB0    jg          005212A1
 00520EB6    mov         eax,dword ptr [ebp+14]
 00520EB9    cmp         eax,dword ptr [ebp-10]
>00520EBC    jl          005212A1
 00520EC2    mov         dword ptr [ebp-24],1
>00520EC9    jmp         00520F04
 00520ECB    mov         eax,dword ptr [ebp+14]
 00520ECE    cmp         eax,dword ptr [ebp-14]
>00520ED1    jg          005212A1
 00520ED7    mov         eax,dword ptr [ebp-8]
 00520EDA    cmp         eax,dword ptr [ebp-10]
>00520EDD    jl          005212A1
 00520EE3    mov         dword ptr [ebp-24],0FFFFFFFF
 00520EEA    neg         dword ptr [ebp-8]
 00520EED    neg         dword ptr [ebp+14]
 00520EF0    neg         dword ptr [ebp-2C]
 00520EF3    neg         dword ptr [ebp-10]
 00520EF6    neg         dword ptr [ebp-14]
 00520EF9    lea         edx,[ebp-14]
 00520EFC    lea         eax,[ebp-10]
 00520EFF    call        00513044
 00520F04    cmp         dword ptr [ebp-30],0
>00520F08    jle         00520F2B
 00520F0A    mov         eax,dword ptr [ebp-0C]
 00520F0D    cmp         eax,dword ptr [ebp-1C]
>00520F10    jg          005212A1
 00520F16    mov         eax,dword ptr [ebp+10]
 00520F19    cmp         eax,dword ptr [ebp-18]
>00520F1C    jl          005212A1
 00520F22    mov         dword ptr [ebp-28],1
>00520F29    jmp         00520F64
 00520F2B    mov         eax,dword ptr [ebp+10]
 00520F2E    cmp         eax,dword ptr [ebp-1C]
>00520F31    jg          005212A1
 00520F37    mov         eax,dword ptr [ebp-0C]
 00520F3A    cmp         eax,dword ptr [ebp-18]
>00520F3D    jl          005212A1
 00520F43    mov         dword ptr [ebp-28],0FFFFFFFF
 00520F4A    neg         dword ptr [ebp-0C]
 00520F4D    neg         dword ptr [ebp+10]
 00520F50    neg         dword ptr [ebp-30]
 00520F53    neg         dword ptr [ebp-18]
 00520F56    neg         dword ptr [ebp-1C]
 00520F59    lea         edx,[ebp-1C]
 00520F5C    lea         eax,[ebp-18]
 00520F5F    call        00513044
 00520F64    mov         eax,dword ptr [ebp-2C]
 00520F67    cmp         eax,dword ptr [ebp-30]
>00520F6A    jge         00520FB4
 00520F6C    mov         byte ptr [ebp-59],1
 00520F70    lea         edx,[ebp-0C]
 00520F73    lea         eax,[ebp-8]
 00520F76    call        00513044
 00520F7B    lea         edx,[ebp+10]
 00520F7E    lea         eax,[ebp+14]
 00520F81    call        00513044
 00520F86    lea         edx,[ebp-30]
 00520F89    lea         eax,[ebp-2C]
 00520F8C    call        00513044
 00520F91    lea         edx,[ebp-18]
 00520F94    lea         eax,[ebp-10]
 00520F97    call        00513044
 00520F9C    lea         edx,[ebp-1C]
 00520F9F    lea         eax,[ebp-14]
 00520FA2    call        00513044
 00520FA7    lea         edx,[ebp-28]
 00520FAA    lea         eax,[ebp-24]
 00520FAD    call        00513044
>00520FB2    jmp         00520FB8
 00520FB4    mov         byte ptr [ebp-59],0
 00520FB8    mov         eax,dword ptr [ebp-2C]
 00520FBB    add         eax,eax
 00520FBD    mov         dword ptr [ebp-3C],eax
 00520FC0    mov         eax,dword ptr [ebp-30]
 00520FC3    add         eax,eax
 00520FC5    mov         dword ptr [ebp-40],eax
 00520FC8    mov         eax,dword ptr [ebp-8]
 00520FCB    mov         dword ptr [ebp-34],eax
 00520FCE    mov         eax,dword ptr [ebp-0C]
 00520FD1    mov         dword ptr [ebp-38],eax
 00520FD4    mov         eax,dword ptr [ebp-40]
 00520FD7    sub         eax,dword ptr [ebp-2C]
 00520FDA    mov         dword ptr [ebp-4C],eax
 00520FDD    mov         eax,dword ptr [ebp+14]
 00520FE0    mov         dword ptr [ebp-48],eax
 00520FE3    mov         byte ptr [ebp-5A],1
 00520FE7    mov         eax,dword ptr [ebp-0C]
 00520FEA    cmp         eax,dword ptr [ebp-18]
>00520FED    jge         00521078
 00520FF3    mov         eax,dword ptr [ebp-18]
 00520FF6    sub         eax,dword ptr [ebp-0C]
 00520FF9    cdq
 00520FFA    push        edx
 00520FFB    push        eax
 00520FFC    mov         eax,dword ptr [ebp-3C]
 00520FFF    cdq
 00521000    call        @_llmul
 00521005    push        edx
 00521006    push        eax
 00521007    mov         eax,dword ptr [ebp-2C]
 0052100A    cdq
 0052100B    sub         dword ptr [esp],eax
 0052100E    sbb         dword ptr [esp+4],edx
 00521012    pop         eax
 00521013    pop         edx
 00521014    mov         dword ptr [ebp-58],eax
 00521017    mov         dword ptr [ebp-54],edx
 0052101A    mov         eax,dword ptr [ebp-40]
 0052101D    cdq
 0052101E    push        edx
 0052101F    push        eax
 00521020    mov         eax,dword ptr [ebp-58]
 00521023    mov         edx,dword ptr [ebp-54]
 00521026    call        @_lldiv
 0052102B    add         dword ptr [ebp-34],eax
 0052102E    mov         eax,dword ptr [ebp-40]
 00521031    cdq
 00521032    push        edx
 00521033    push        eax
 00521034    mov         eax,dword ptr [ebp-58]
 00521037    mov         edx,dword ptr [ebp-54]
 0052103A    call        @_llmod
 0052103F    mov         dword ptr [ebp-44],eax
 00521042    mov         eax,dword ptr [ebp-34]
 00521045    cmp         eax,dword ptr [ebp-14]
>00521048    jg          005212A1
 0052104E    mov         eax,dword ptr [ebp-34]
 00521051    cmp         eax,dword ptr [ebp-10]
>00521054    jl          00521078
 00521056    mov         eax,dword ptr [ebp-18]
 00521059    mov         dword ptr [ebp-38],eax
 0052105C    mov         eax,dword ptr [ebp-44]
 0052105F    add         eax,dword ptr [ebp-2C]
 00521062    sub         dword ptr [ebp-4C],eax
 00521065    cmp         dword ptr [ebp-44],0
>00521069    jle         00521074
 0052106B    inc         dword ptr [ebp-34]
 0052106E    mov         eax,dword ptr [ebp-40]
 00521071    add         dword ptr [ebp-4C],eax
 00521074    mov         byte ptr [ebp-5A],0
 00521078    cmp         byte ptr [ebp-5A],0
>0052107C    je          00521107
 00521082    mov         eax,dword ptr [ebp-8]
 00521085    cmp         eax,dword ptr [ebp-10]
>00521088    jge         00521107
 0052108A    mov         eax,dword ptr [ebp-10]
 0052108D    sub         eax,dword ptr [ebp-8]
 00521090    cdq
 00521091    push        edx
 00521092    push        eax
 00521093    mov         eax,dword ptr [ebp-40]
 00521096    cdq
 00521097    call        @_llmul
 0052109C    mov         dword ptr [ebp-58],eax
 0052109F    mov         dword ptr [ebp-54],edx
 005210A2    mov         eax,dword ptr [ebp-3C]
 005210A5    cdq
 005210A6    push        edx
 005210A7    push        eax
 005210A8    mov         eax,dword ptr [ebp-58]
 005210AB    mov         edx,dword ptr [ebp-54]
 005210AE    call        @_lldiv
 005210B3    add         dword ptr [ebp-38],eax
 005210B6    mov         eax,dword ptr [ebp-3C]
 005210B9    cdq
 005210BA    push        edx
 005210BB    push        eax
 005210BC    mov         eax,dword ptr [ebp-58]
 005210BF    mov         edx,dword ptr [ebp-54]
 005210C2    call        @_llmod
 005210C7    mov         dword ptr [ebp-44],eax
 005210CA    mov         eax,dword ptr [ebp-38]
 005210CD    cmp         eax,dword ptr [ebp-1C]
>005210D0    jg          005212A1
 005210D6    mov         eax,dword ptr [ebp-38]
 005210D9    cmp         eax,dword ptr [ebp-1C]
>005210DC    jne         005210EA
 005210DE    mov         eax,dword ptr [ebp-44]
 005210E1    cmp         eax,dword ptr [ebp-2C]
>005210E4    jge         005212A1
 005210EA    mov         eax,dword ptr [ebp-10]
 005210ED    mov         dword ptr [ebp-34],eax
 005210F0    mov         eax,dword ptr [ebp-44]
 005210F3    add         dword ptr [ebp-4C],eax
 005210F6    mov         eax,dword ptr [ebp-44]
 005210F9    cmp         eax,dword ptr [ebp-2C]
>005210FC    jl          00521107
 005210FE    inc         dword ptr [ebp-38]
 00521101    mov         eax,dword ptr [ebp-3C]
 00521104    sub         dword ptr [ebp-4C],eax
 00521107    mov         byte ptr [ebp-5A],0
 0052110B    mov         eax,dword ptr [ebp+10]
 0052110E    cmp         eax,dword ptr [ebp-1C]
>00521111    jle         00521173
 00521113    mov         eax,dword ptr [ebp-1C]
 00521116    sub         eax,dword ptr [ebp-0C]
 00521119    cdq
 0052111A    push        edx
 0052111B    push        eax
 0052111C    mov         eax,dword ptr [ebp-3C]
 0052111F    cdq
 00521120    call        @_llmul
 00521125    push        edx
 00521126    push        eax
 00521127    mov         eax,dword ptr [ebp-2C]
 0052112A    cdq
 0052112B    add         eax,dword ptr [esp]
 0052112E    adc         edx,dword ptr [esp+4]
 00521132    add         esp,8
 00521135    mov         dword ptr [ebp-58],eax
 00521138    mov         dword ptr [ebp-54],edx
 0052113B    mov         eax,dword ptr [ebp-40]
 0052113E    cdq
 0052113F    push        edx
 00521140    push        eax
 00521141    mov         eax,dword ptr [ebp-58]
 00521144    mov         edx,dword ptr [ebp-54]
 00521147    call        @_lldiv
 0052114C    add         eax,dword ptr [ebp-8]
 0052114F    mov         dword ptr [ebp-48],eax
 00521152    mov         eax,dword ptr [ebp-40]
 00521155    cdq
 00521156    push        edx
 00521157    push        eax
 00521158    mov         eax,dword ptr [ebp-58]
 0052115B    mov         edx,dword ptr [ebp-54]
 0052115E    call        @_llmod
 00521163    mov         dword ptr [ebp-44],eax
 00521166    cmp         dword ptr [ebp-44],0
>0052116A    jne         0052116F
 0052116C    dec         dword ptr [ebp-48]
 0052116F    mov         byte ptr [ebp-5A],1
 00521173    mov         eax,dword ptr [ebp-48]
 00521176    cmp         eax,dword ptr [ebp-14]
>00521179    jle         00521185
 0052117B    mov         eax,dword ptr [ebp-14]
 0052117E    mov         dword ptr [ebp-48],eax
 00521181    mov         byte ptr [ebp-5A],1
 00521185    inc         dword ptr [ebp-48]
 00521188    cmp         dword ptr [ebp-28],0FFFFFFFF
>0052118C    jne         00521191
 0052118E    neg         dword ptr [ebp-38]
 00521191    cmp         dword ptr [ebp-24],0FFFFFFFF
>00521195    jne         0052119D
 00521197    neg         dword ptr [ebp-34]
 0052119A    neg         dword ptr [ebp-48]
 0052119D    mov         eax,dword ptr [ebp-40]
 005211A0    sub         dword ptr [ebp-3C],eax
 005211A3    cmp         byte ptr [ebp-59],0
>005211A7    je          005211CF
 005211A9    mov         eax,dword ptr [ebp-4]
 005211AC    mov         eax,dword ptr [eax+34]
 005211AF    imul        dword ptr [ebp-24]
 005211B2    mov         dword ptr [ebp-20],eax
 005211B5    mov         eax,dword ptr [ebp-4]
 005211B8    mov         eax,dword ptr [eax+34]
 005211BB    imul        dword ptr [ebp-34]
 005211BE    add         eax,dword ptr [ebp-38]
 005211C1    mov         edx,dword ptr [ebp-4]
 005211C4    mov         edx,dword ptr [edx+40]
 005211C7    lea         eax,[edx+eax*4]
 005211CA    mov         dword ptr [ebp-60],eax
>005211CD    jmp         005211F9
 005211CF    mov         eax,dword ptr [ebp-24]
 005211D2    mov         dword ptr [ebp-20],eax
 005211D5    mov         eax,dword ptr [ebp-4]
 005211D8    mov         eax,dword ptr [eax+34]
 005211DB    imul        dword ptr [ebp-28]
 005211DE    mov         dword ptr [ebp-28],eax
 005211E1    mov         eax,dword ptr [ebp-4]
 005211E4    mov         eax,dword ptr [eax+34]
 005211E7    imul        dword ptr [ebp-38]
 005211EA    add         eax,dword ptr [ebp-34]
 005211ED    mov         edx,dword ptr [ebp-4]
 005211F0    mov         edx,dword ptr [edx+40]
 005211F3    lea         eax,[edx+eax*4]
 005211F6    mov         dword ptr [ebp-60],eax
 005211F9    mov         al,byte ptr [ebp+8]
 005211FC    or          al,byte ptr [ebp-5A]
>005211FF    jne         00521211
 00521201    mov         eax,dword ptr [ebp-34]
 00521204    cmp         eax,dword ptr [ebp-48]
>00521207    jge         0052120E
 00521209    dec         dword ptr [ebp-48]
>0052120C    jmp         00521211
 0052120E    inc         dword ptr [ebp-48]
 00521211    xor         eax,eax
 00521213    push        ebp
 00521214    push        52128A
 00521219    push        dword ptr fs:[eax]
 0052121C    mov         dword ptr fs:[eax],esp
 0052121F    mov         eax,dword ptr [ebp-4]
 00521222    movzx       eax,byte ptr [eax+7A]
 00521226    mov         edx,dword ptr ds:[56E27C];^gvar_00577A00
 0052122C    mov         eax,dword ptr [edx+eax*4]
 0052122F    mov         dword ptr [ebp-64],eax
 00521232    mov         eax,dword ptr [ebp-34]
 00521235    cmp         eax,dword ptr [ebp-48]
>00521238    je          00521277
 0052123A    mov         eax,dword ptr [ebp-24]
 0052123D    add         dword ptr [ebp-34],eax
 00521240    mov         edx,dword ptr [ebp-60]
 00521243    mov         eax,dword ptr [ebp+0C]
 00521246    call        dword ptr [ebp-64]
 00521249    mov         eax,dword ptr [ebp-20]
 0052124C    shl         eax,2
 0052124F    add         dword ptr [ebp-60],eax
 00521252    cmp         dword ptr [ebp-4C],0
>00521256    jl          00521269
 00521258    mov         eax,dword ptr [ebp-28]
 0052125B    shl         eax,2
 0052125E    add         dword ptr [ebp-60],eax
 00521261    mov         eax,dword ptr [ebp-3C]
 00521264    sub         dword ptr [ebp-4C],eax
>00521267    jmp         0052126F
 00521269    mov         eax,dword ptr [ebp-40]
 0052126C    add         dword ptr [ebp-4C],eax
 0052126F    mov         eax,dword ptr [ebp-34]
 00521272    cmp         eax,dword ptr [ebp-48]
>00521275    jne         0052123A
 00521277    xor         eax,eax
 00521279    pop         edx
 0052127A    pop         ecx
 0052127B    pop         ecx
 0052127C    mov         dword ptr fs:[eax],edx
 0052127F    push        521291
 00521284    call        00513ACC
 00521289    ret
>0052128A    jmp         @HandleFinally
>0052128F    jmp         00521284
 00521291    lea         edx,[ebp-74]
 00521294    mov         ecx,40000002
 00521299    mov         eax,dword ptr [ebp-4]
 0052129C    mov         ebx,dword ptr [eax]
 0052129E    call        dword ptr [ebx+44]
 005212A1    pop         ebx
 005212A2    mov         esp,ebp
 005212A4    pop         ebp
 005212A5    ret         10
end;*}

//005212A8
{*procedure sub_005212A8(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
begin
 005212A8    push        ebp
 005212A9    mov         ebp,esp
 005212AB    add         esp,0FFFFFFB4
 005212AE    push        ebx
 005212AF    mov         dword ptr [ebp-0C],ecx
 005212B2    mov         dword ptr [ebp-8],edx
 005212B5    mov         dword ptr [ebp-4],eax
 005212B8    mov         eax,dword ptr [ebp+10]
 005212BB    push        eax
 005212BC    lea         eax,[ebp-3C]
 005212BF    push        eax
 005212C0    mov         ecx,dword ptr [ebp+14]
 005212C3    mov         edx,dword ptr [ebp-0C]
 005212C6    mov         eax,dword ptr [ebp-8]
 005212C9    call        0051DF10
 005212CE    xor         eax,eax
 005212D0    push        ebp
 005212D1    push        521435
 005212D6    push        dword ptr fs:[eax]
 005212D9    mov         dword ptr fs:[eax],esp
 005212DC    mov         eax,dword ptr [ebp+14]
 005212DF    sub         eax,dword ptr [ebp-8]
 005212E2    mov         dword ptr [ebp-18],eax
 005212E5    mov         eax,dword ptr [ebp+10]
 005212E8    sub         eax,dword ptr [ebp-0C]
 005212EB    mov         dword ptr [ebp-1C],eax
 005212EE    add         dword ptr [ebp-8],7F
 005212F2    add         dword ptr [ebp-0C],7F
 005212F6    add         dword ptr [ebp+14],7F
 005212FA    add         dword ptr [ebp+10],7F
 005212FE    fild        dword ptr [ebp-18]
 00521301    add         esp,0FFFFFFFC
 00521304    fstp        dword ptr [esp]
 00521307    wait
 00521308    fild        dword ptr [ebp-1C]
 0052130B    add         esp,0FFFFFFFC
 0052130E    fstp        dword ptr [esp]
 00521311    wait
 00521312    call        0051328C
 00521317    call        @ROUND
 0052131C    mov         dword ptr [ebp-20],eax
 0052131F    cmp         byte ptr [ebp+8],0
>00521323    je          0052132C
 00521325    add         dword ptr [ebp-20],10000
 0052132C    cmp         dword ptr [ebp-20],100
>00521333    jge         0052133F
 00521335    call        @TryFinallyExit
>0052133A    jmp         0052143C
 0052133F    mov         eax,dword ptr [ebp-20]
 00521342    shr         eax,10
 00521345    mov         dword ptr [ebp-10],eax
 00521348    cmp         dword ptr [ebp-10],0
>0052134C    jle         005213B6
 0052134E    fild        dword ptr [ebp-20]
 00521351    fdivr       dword ptr ds:[521444];65536:Single
 00521357    fstp        dword ptr [ebp-28]
 0052135A    wait
 0052135B    fild        dword ptr [ebp-18]
 0052135E    fmul        dword ptr [ebp-28]
 00521361    call        @ROUND
 00521366    mov         dword ptr [ebp-18],eax
 00521369    fild        dword ptr [ebp-1C]
 0052136C    fmul        dword ptr [ebp-28]
 0052136F    call        @ROUND
 00521374    mov         dword ptr [ebp-1C],eax
 00521377    mov         eax,dword ptr [ebp-10]
 0052137A    dec         eax
 0052137B    test        eax,eax
>0052137D    jl          005213B6
 0052137F    inc         eax
 00521380    mov         dword ptr [ebp-2C],eax
 00521383    mov         dword ptr [ebp-14],0
 0052138A    mov         eax,dword ptr [ebp+0C]
 0052138D    push        eax
 0052138E    mov         ecx,dword ptr [ebp-0C]
 00521391    shr         ecx,8
 00521394    mov         edx,dword ptr [ebp-8]
 00521397    shr         edx,8
 0052139A    mov         eax,dword ptr [ebp-4]
 0052139D    call        0051F8D0
 005213A2    mov         eax,dword ptr [ebp-18]
 005213A5    add         dword ptr [ebp-8],eax
 005213A8    mov         eax,dword ptr [ebp-1C]
 005213AB    add         dword ptr [ebp-0C],eax
 005213AE    inc         dword ptr [ebp-14]
 005213B1    dec         dword ptr [ebp-2C]
>005213B4    jne         0052138A
 005213B6    mov         eax,dword ptr [ebp+0C]
 005213B9    shr         eax,18
 005213BC    mov         dword ptr [ebp-24],eax
 005213BF    mov         eax,dword ptr [ebp-10]
 005213C2    shl         eax,10
 005213C5    sub         dword ptr [ebp-20],eax
 005213C8    mov         eax,dword ptr [ebp-24]
 005213CB    imul        dword ptr [ebp-20]
 005213CE    shl         eax,8
 005213D1    and         eax,0FF000000
 005213D6    mov         dword ptr [ebp-24],eax
 005213D9    mov         eax,dword ptr [ebp+0C]
 005213DC    and         eax,0FFFFFF
 005213E1    add         eax,dword ptr [ebp-24]
 005213E4    push        eax
 005213E5    mov         ecx,dword ptr [ebp-0C]
 005213E8    add         ecx,dword ptr [ebp+10]
 005213EB    sub         ecx,dword ptr [ebp-1C]
 005213EE    shr         ecx,9
 005213F1    mov         edx,dword ptr [ebp-8]
 005213F4    add         edx,dword ptr [ebp+14]
 005213F7    sub         edx,dword ptr [ebp-18]
 005213FA    shr         edx,9
 005213FD    mov         eax,dword ptr [ebp-4]
 00521400    call        0051F8D0
 00521405    xor         eax,eax
 00521407    pop         edx
 00521408    pop         ecx
 00521409    pop         ecx
 0052140A    mov         dword ptr fs:[eax],edx
 0052140D    push        52143C
 00521412    call        00513ACC
 00521417    lea         ecx,[ebp-4C]
 0052141A    lea         eax,[ebp-3C]
 0052141D    xor         edx,edx
 0052141F    call        0051DDE8
 00521424    lea         edx,[ebp-4C]
 00521427    mov         ecx,40000002
 0052142C    mov         eax,dword ptr [ebp-4]
 0052142F    mov         ebx,dword ptr [eax]
 00521431    call        dword ptr [ebx+44]
 00521434    ret
>00521435    jmp         @HandleFinally
>0052143A    jmp         00521412
 0052143C    pop         ebx
 0052143D    mov         esp,ebp
 0052143F    pop         ebp
 00521440    ret         10
end;*}

//00521448
{*procedure sub_00521448(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
begin
 00521448    push        ebp
 00521449    mov         ebp,esp
 0052144B    add         esp,0FFFFFFAC
 0052144E    push        ebx
 0052144F    mov         dword ptr [ebp-0C],ecx
 00521452    mov         dword ptr [ebp-8],edx
 00521455    mov         dword ptr [ebp-4],eax
 00521458    mov         eax,dword ptr [ebp+10]
 0052145B    push        eax
 0052145C    lea         eax,[ebp-44]
 0052145F    push        eax
 00521460    mov         ecx,dword ptr [ebp+14]
 00521463    mov         edx,dword ptr [ebp-0C]
 00521466    mov         eax,dword ptr [ebp-8]
 00521469    call        0051DF10
 0052146E    mov         eax,dword ptr [ebp-4]
 00521471    cmp         byte ptr [eax+0F0],0
>00521478    jne         005216D2
 0052147E    mov         eax,dword ptr [ebp+14]
 00521481    mov         dword ptr [ebp-18],eax
 00521484    mov         eax,dword ptr [ebp+10]
 00521487    mov         dword ptr [ebp-1C],eax
 0052148A    lea         eax,[ebp+10]
 0052148D    push        eax
 0052148E    mov         eax,dword ptr [ebp-4]
 00521491    mov         eax,dword ptr [eax+58]
 00521494    sub         eax,10000
 00521499    push        eax
 0052149A    mov         eax,dword ptr [ebp-4]
 0052149D    mov         eax,dword ptr [eax+5C]
 005214A0    sub         eax,10000
 005214A5    push        eax
 005214A6    mov         eax,dword ptr [ebp-4]
 005214A9    mov         eax,dword ptr [eax+60]
 005214AC    push        eax
 005214AD    mov         eax,dword ptr [ebp-4]
 005214B0    mov         eax,dword ptr [eax+64]
 005214B3    push        eax
 005214B4    lea         ecx,[ebp+14]
 005214B7    lea         edx,[ebp-0C]
 005214BA    lea         eax,[ebp-8]
 005214BD    call        0051D164
 005214C2    test        al,al
>005214C4    je          005216EF
 005214CA    mov         eax,dword ptr [ebp-18]
 005214CD    cmp         eax,dword ptr [ebp+14]
>005214D0    jne         005214DA
 005214D2    mov         eax,dword ptr [ebp-1C]
 005214D5    cmp         eax,dword ptr [ebp+10]
>005214D8    je          005214DE
 005214DA    mov         byte ptr [ebp+8],1
 005214DE    mov         eax,dword ptr [ebp-4]
 005214E1    mov         eax,dword ptr [eax+58]
 005214E4    cmp         eax,dword ptr [ebp-8]
>005214E7    jge         00521571
 005214ED    mov         eax,dword ptr [ebp-4]
 005214F0    mov         eax,dword ptr [eax+60]
 005214F3    sub         eax,20000
 005214F8    cmp         eax,dword ptr [ebp-8]
>005214FB    jle         00521571
 005214FD    mov         eax,dword ptr [ebp-4]
 00521500    mov         eax,dword ptr [eax+5C]
 00521503    cmp         eax,dword ptr [ebp-0C]
>00521506    jge         00521571
 00521508    mov         eax,dword ptr [ebp-4]
 0052150B    mov         eax,dword ptr [eax+64]
 0052150E    sub         eax,20000
 00521513    cmp         eax,dword ptr [ebp-0C]
>00521516    jle         00521571
 00521518    mov         eax,dword ptr [ebp-4]
 0052151B    mov         eax,dword ptr [eax+58]
 0052151E    cmp         eax,dword ptr [ebp+14]
>00521521    jge         00521571
 00521523    mov         eax,dword ptr [ebp-4]
 00521526    mov         eax,dword ptr [eax+60]
 00521529    sub         eax,20000
 0052152E    cmp         eax,dword ptr [ebp+14]
>00521531    jle         00521571
 00521533    mov         eax,dword ptr [ebp-4]
 00521536    mov         eax,dword ptr [eax+5C]
 00521539    cmp         eax,dword ptr [ebp+10]
>0052153C    jge         00521571
 0052153E    mov         eax,dword ptr [ebp-4]
 00521541    mov         eax,dword ptr [eax+64]
 00521544    sub         eax,20000
 00521549    cmp         eax,dword ptr [ebp+10]
>0052154C    jle         00521571
 0052154E    mov         eax,dword ptr [ebp+14]
 00521551    push        eax
 00521552    mov         eax,dword ptr [ebp+10]
 00521555    push        eax
 00521556    mov         eax,dword ptr [ebp+0C]
 00521559    push        eax
 0052155A    mov         al,byte ptr [ebp+8]
 0052155D    push        eax
 0052155E    mov         ecx,dword ptr [ebp-0C]
 00521561    mov         edx,dword ptr [ebp-8]
 00521564    mov         eax,dword ptr [ebp-4]
 00521567    call        005212A8
>0052156C    jmp         005216EF
 00521571    xor         eax,eax
 00521573    push        ebp
 00521574    push        5216CB
 00521579    push        dword ptr fs:[eax]
 0052157C    mov         dword ptr fs:[eax],esp
 0052157F    mov         eax,dword ptr [ebp+14]
 00521582    sub         eax,dword ptr [ebp-8]
 00521585    mov         dword ptr [ebp-20],eax
 00521588    mov         eax,dword ptr [ebp+10]
 0052158B    sub         eax,dword ptr [ebp-0C]
 0052158E    mov         dword ptr [ebp-24],eax
 00521591    add         dword ptr [ebp-8],7F
 00521595    add         dword ptr [ebp-0C],7F
 00521599    add         dword ptr [ebp+14],7F
 0052159D    add         dword ptr [ebp+10],7F
 005215A1    fild        dword ptr [ebp-20]
 005215A4    add         esp,0FFFFFFFC
 005215A7    fstp        dword ptr [esp]
 005215AA    wait
 005215AB    fild        dword ptr [ebp-24]
 005215AE    add         esp,0FFFFFFFC
 005215B1    fstp        dword ptr [esp]
 005215B4    wait
 005215B5    call        0051328C
 005215BA    call        @ROUND
 005215BF    mov         dword ptr [ebp-28],eax
 005215C2    cmp         byte ptr [ebp+8],0
>005215C6    je          005215CF
 005215C8    add         dword ptr [ebp-28],10000
 005215CF    cmp         dword ptr [ebp-28],100
>005215D6    jge         005215E2
 005215D8    call        @TryFinallyExit
>005215DD    jmp         005216EF
 005215E2    mov         eax,dword ptr [ebp-28]
 005215E5    shr         eax,10
 005215E8    mov         dword ptr [ebp-10],eax
 005215EB    cmp         dword ptr [ebp-10],0
>005215EF    jle         00521661
 005215F1    fild        dword ptr [ebp-28]
 005215F4    fdivr       dword ptr ds:[5216F8];65536:Single
 005215FA    fstp        dword ptr [ebp-30]
 005215FD    wait
 005215FE    fild        dword ptr [ebp-20]
 00521601    fmul        dword ptr [ebp-30]
 00521604    call        @ROUND
 00521609    mov         dword ptr [ebp-20],eax
 0052160C    fild        dword ptr [ebp-24]
 0052160F    fmul        dword ptr [ebp-30]
 00521612    call        @ROUND
 00521617    mov         dword ptr [ebp-24],eax
 0052161A    mov         eax,dword ptr [ebp-10]
 0052161D    dec         eax
 0052161E    test        eax,eax
>00521620    jl          00521661
 00521622    inc         eax
 00521623    mov         dword ptr [ebp-34],eax
 00521626    mov         dword ptr [ebp-14],0
 0052162D    mov         eax,dword ptr [ebp+0C]
 00521630    push        eax
 00521631    mov         eax,dword ptr [ebp-0C]
 00521634    call        005131F0
 00521639    push        eax
 0052163A    mov         eax,dword ptr [ebp-8]
 0052163D    call        005131F0
 00521642    mov         edx,eax
 00521644    mov         eax,dword ptr [ebp-4]
 00521647    pop         ecx
 00521648    call        0051FAF0
 0052164D    mov         eax,dword ptr [ebp-20]
 00521650    add         dword ptr [ebp-8],eax
 00521653    mov         eax,dword ptr [ebp-24]
 00521656    add         dword ptr [ebp-0C],eax
 00521659    inc         dword ptr [ebp-14]
 0052165C    dec         dword ptr [ebp-34]
>0052165F    jne         0052162D
 00521661    mov         eax,dword ptr [ebp+0C]
 00521664    shr         eax,18
 00521667    mov         dword ptr [ebp-2C],eax
 0052166A    mov         eax,dword ptr [ebp-10]
 0052166D    shl         eax,10
 00521670    sub         dword ptr [ebp-28],eax
 00521673    mov         eax,dword ptr [ebp-2C]
 00521676    imul        dword ptr [ebp-28]
 00521679    shl         eax,8
 0052167C    and         eax,0FF000000
 00521681    mov         dword ptr [ebp-2C],eax
 00521684    mov         eax,dword ptr [ebp+0C]
 00521687    and         eax,0FFFFFF
 0052168C    add         eax,dword ptr [ebp-2C]
 0052168F    push        eax
 00521690    mov         eax,dword ptr [ebp-0C]
 00521693    add         eax,dword ptr [ebp+10]
 00521696    sub         eax,dword ptr [ebp-24]
 00521699    call        005131F4
 0052169E    push        eax
 0052169F    mov         eax,dword ptr [ebp-8]
 005216A2    add         eax,dword ptr [ebp+14]
 005216A5    sub         eax,dword ptr [ebp-20]
 005216A8    call        005131F4
 005216AD    mov         edx,eax
 005216AF    mov         eax,dword ptr [ebp-4]
 005216B2    pop         ecx
 005216B3    call        0051FAF0
 005216B8    xor         eax,eax
 005216BA    pop         edx
 005216BB    pop         ecx
 005216BC    pop         ecx
 005216BD    mov         dword ptr fs:[eax],edx
 005216C0    push        5216D2
 005216C5    call        00513ACC
 005216CA    ret
>005216CB    jmp         @HandleFinally
>005216D0    jmp         005216C5
 005216D2    lea         ecx,[ebp-54]
 005216D5    lea         eax,[ebp-44]
 005216D8    xor         edx,edx
 005216DA    call        0051DDE8
 005216DF    lea         edx,[ebp-54]
 005216E2    mov         ecx,40000002
 005216E7    mov         eax,dword ptr [ebp-4]
 005216EA    mov         ebx,dword ptr [eax]
 005216EC    call        dword ptr [ebx+44]
 005216EF    pop         ebx
 005216F0    mov         esp,ebp
 005216F2    pop         ebp
 005216F3    ret         10
end;*}

//005216FC
{*procedure sub_005216FC(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
begin
 005216FC    push        ebp
 005216FD    mov         ebp,esp
 005216FF    add         esp,0FFFFFF8C
 00521702    push        ebx
 00521703    mov         dword ptr [ebp-0C],ecx
 00521706    mov         dword ptr [ebp-8],edx
 00521709    mov         dword ptr [ebp-4],eax
 0052170C    mov         eax,dword ptr [ebp+10]
 0052170F    push        eax
 00521710    lea         eax,[ebp-74]
 00521713    push        eax
 00521714    mov         ecx,dword ptr [ebp+14]
 00521717    mov         edx,dword ptr [ebp-0C]
 0052171A    mov         eax,dword ptr [ebp-8]
 0052171D    call        0051DC50
 00521722    mov         eax,dword ptr [ebp-4]
 00521725    cmp         byte ptr [eax+0F0],0
>0052172C    jne         00521E8C
 00521732    mov         eax,dword ptr [ebp-4]
 00521735    mov         eax,dword ptr [eax+50]
 00521738    mov         edx,dword ptr [ebp-4]
 0052173B    sub         eax,dword ptr [edx+48]
>0052173E    je          00521E9C
 00521744    mov         eax,dword ptr [ebp-4]
 00521747    mov         eax,dword ptr [eax+54]
 0052174A    mov         edx,dword ptr [ebp-4]
 0052174D    sub         eax,dword ptr [edx+4C]
>00521750    je          00521E9C
 00521756    mov         eax,dword ptr [ebp+14]
 00521759    sub         eax,dword ptr [ebp-8]
 0052175C    mov         dword ptr [ebp-2C],eax
 0052175F    mov         eax,dword ptr [ebp+10]
 00521762    sub         eax,dword ptr [ebp-0C]
 00521765    mov         dword ptr [ebp-30],eax
 00521768    mov         eax,dword ptr [ebp-2C]
 0052176B    cdq
 0052176C    xor         eax,edx
 0052176E    sub         eax,edx
 00521770    mov         ecx,eax
 00521772    mov         eax,dword ptr [ebp-30]
 00521775    cdq
 00521776    xor         eax,edx
 00521778    sub         eax,edx
 0052177A    cmp         ecx,eax
>0052177C    jne         005217A1
 0052177E    mov         eax,dword ptr [ebp+14]
 00521781    push        eax
 00521782    mov         eax,dword ptr [ebp+10]
 00521785    push        eax
 00521786    mov         eax,dword ptr [ebp+0C]
 00521789    push        eax
 0052178A    mov         al,byte ptr [ebp+8]
 0052178D    push        eax
 0052178E    mov         ecx,dword ptr [ebp-0C]
 00521791    mov         edx,dword ptr [ebp-8]
 00521794    mov         eax,dword ptr [ebp-4]
 00521797    call        00520D70
>0052179C    jmp         00521E9C
 005217A1    cmp         dword ptr [ebp-2C],0
>005217A5    jne         00521804
 005217A7    cmp         dword ptr [ebp-30],0
>005217AB    jle         005217C6
 005217AD    mov         eax,dword ptr [ebp+10]
 005217B0    dec         eax
 005217B1    push        eax
 005217B2    mov         eax,dword ptr [ebp+0C]
 005217B5    push        eax
 005217B6    mov         ecx,dword ptr [ebp-0C]
 005217B9    mov         edx,dword ptr [ebp-8]
 005217BC    mov         eax,dword ptr [ebp-4]
 005217BF    call        005207C4
>005217C4    jmp         005217E3
 005217C6    cmp         dword ptr [ebp-30],0
>005217CA    jge         005217E3
 005217CC    mov         eax,dword ptr [ebp-0C]
 005217CF    push        eax
 005217D0    mov         eax,dword ptr [ebp+0C]
 005217D3    push        eax
 005217D4    mov         ecx,dword ptr [ebp+10]
 005217D7    inc         ecx
 005217D8    mov         edx,dword ptr [ebp-8]
 005217DB    mov         eax,dword ptr [ebp-4]
 005217DE    call        005207C4
 005217E3    cmp         byte ptr [ebp+8],0
>005217E7    je          00521E9C
 005217ED    mov         eax,dword ptr [ebp+0C]
 005217F0    push        eax
 005217F1    mov         ecx,dword ptr [ebp+10]
 005217F4    mov         edx,dword ptr [ebp+14]
 005217F7    mov         eax,dword ptr [ebp-4]
 005217FA    call        0051F854
>005217FF    jmp         00521E9C
 00521804    cmp         dword ptr [ebp-30],0
>00521808    jne         00521867
 0052180A    cmp         dword ptr [ebp-2C],0
>0052180E    jle         00521829
 00521810    mov         eax,dword ptr [ebp+14]
 00521813    dec         eax
 00521814    push        eax
 00521815    mov         eax,dword ptr [ebp+0C]
 00521818    push        eax
 00521819    mov         ecx,dword ptr [ebp-0C]
 0052181C    mov         edx,dword ptr [ebp-8]
 0052181F    mov         eax,dword ptr [ebp-4]
 00521822    call        005204F8
>00521827    jmp         00521846
 00521829    cmp         dword ptr [ebp-2C],0
>0052182D    jge         00521846
 0052182F    mov         eax,dword ptr [ebp-8]
 00521832    push        eax
 00521833    mov         eax,dword ptr [ebp+0C]
 00521836    push        eax
 00521837    mov         edx,dword ptr [ebp+14]
 0052183A    inc         edx
 0052183B    mov         ecx,dword ptr [ebp-0C]
 0052183E    mov         eax,dword ptr [ebp-4]
 00521841    call        005204F8
 00521846    cmp         byte ptr [ebp+8],0
>0052184A    je          00521E9C
 00521850    mov         eax,dword ptr [ebp+0C]
 00521853    push        eax
 00521854    mov         ecx,dword ptr [ebp+10]
 00521857    mov         edx,dword ptr [ebp+14]
 0052185A    mov         eax,dword ptr [ebp-4]
 0052185D    call        0051F854
>00521862    jmp         00521E9C
 00521867    mov         eax,dword ptr [ebp-4]
 0052186A    mov         eax,dword ptr [eax+48]
 0052186D    mov         dword ptr [ebp-10],eax
 00521870    mov         eax,dword ptr [ebp-4]
 00521873    mov         eax,dword ptr [eax+50]
 00521876    dec         eax
 00521877    mov         dword ptr [ebp-14],eax
 0052187A    mov         eax,dword ptr [ebp-4]
 0052187D    mov         eax,dword ptr [eax+4C]
 00521880    mov         dword ptr [ebp-18],eax
 00521883    mov         eax,dword ptr [ebp-4]
 00521886    mov         eax,dword ptr [eax+54]
 00521889    dec         eax
 0052188A    mov         dword ptr [ebp-1C],eax
 0052188D    cmp         dword ptr [ebp-2C],0
>00521891    jle         005218B4
 00521893    mov         eax,dword ptr [ebp-8]
 00521896    cmp         eax,dword ptr [ebp-14]
>00521899    jg          00521E9C
 0052189F    mov         eax,dword ptr [ebp+14]
 005218A2    cmp         eax,dword ptr [ebp-10]
>005218A5    jl          00521E9C
 005218AB    mov         dword ptr [ebp-24],1
>005218B2    jmp         005218ED
 005218B4    mov         eax,dword ptr [ebp+14]
 005218B7    cmp         eax,dword ptr [ebp-14]
>005218BA    jg          00521E9C
 005218C0    mov         eax,dword ptr [ebp-8]
 005218C3    cmp         eax,dword ptr [ebp-10]
>005218C6    jl          00521E9C
 005218CC    mov         dword ptr [ebp-24],0FFFFFFFF
 005218D3    neg         dword ptr [ebp-8]
 005218D6    neg         dword ptr [ebp+14]
 005218D9    neg         dword ptr [ebp-2C]
 005218DC    neg         dword ptr [ebp-10]
 005218DF    neg         dword ptr [ebp-14]
 005218E2    lea         edx,[ebp-14]
 005218E5    lea         eax,[ebp-10]
 005218E8    call        00513044
 005218ED    cmp         dword ptr [ebp-30],0
>005218F1    jle         00521914
 005218F3    mov         eax,dword ptr [ebp-0C]
 005218F6    cmp         eax,dword ptr [ebp-1C]
>005218F9    jg          00521E9C
 005218FF    mov         eax,dword ptr [ebp+10]
 00521902    cmp         eax,dword ptr [ebp-18]
>00521905    jl          00521E9C
 0052190B    mov         dword ptr [ebp-28],1
>00521912    jmp         0052194D
 00521914    mov         eax,dword ptr [ebp+10]
 00521917    cmp         eax,dword ptr [ebp-1C]
>0052191A    jg          00521E9C
 00521920    mov         eax,dword ptr [ebp-0C]
 00521923    cmp         eax,dword ptr [ebp-18]
>00521926    jl          00521E9C
 0052192C    mov         dword ptr [ebp-28],0FFFFFFFF
 00521933    neg         dword ptr [ebp-0C]
 00521936    neg         dword ptr [ebp+10]
 00521939    neg         dword ptr [ebp-30]
 0052193C    neg         dword ptr [ebp-18]
 0052193F    neg         dword ptr [ebp-1C]
 00521942    lea         edx,[ebp-1C]
 00521945    lea         eax,[ebp-18]
 00521948    call        00513044
 0052194D    mov         eax,dword ptr [ebp-2C]
 00521950    cmp         eax,dword ptr [ebp-30]
>00521953    jge         005219AB
 00521955    lea         edx,[ebp-0C]
 00521958    lea         eax,[ebp-8]
 0052195B    call        00513044
 00521960    lea         edx,[ebp+10]
 00521963    lea         eax,[ebp+14]
 00521966    call        00513044
 0052196B    lea         edx,[ebp-30]
 0052196E    lea         eax,[ebp-2C]
 00521971    call        00513044
 00521976    lea         edx,[ebp-18]
 00521979    lea         eax,[ebp-10]
 0052197C    call        00513044
 00521981    lea         edx,[ebp-1C]
 00521984    lea         eax,[ebp-14]
 00521987    call        00513044
 0052198C    lea         edx,[ebp-28]
 0052198F    lea         eax,[ebp-24]
 00521992    call        00513044
 00521997    lea         eax,[ebp-38]
 0052199A    mov         dword ptr [ebp-4C],eax
 0052199D    lea         eax,[ebp-34]
 005219A0    mov         dword ptr [ebp-50],eax
 005219A3    mov         eax,dword ptr [ebp-28]
 005219A6    mov         dword ptr [ebp-20],eax
>005219A9    jmp         005219C3
 005219AB    lea         eax,[ebp-34]
 005219AE    mov         dword ptr [ebp-4C],eax
 005219B1    lea         eax,[ebp-38]
 005219B4    mov         dword ptr [ebp-50],eax
 005219B7    mov         eax,dword ptr [ebp-4]
 005219BA    mov         eax,dword ptr [eax+34]
 005219BD    imul        dword ptr [ebp-28]
 005219C0    mov         dword ptr [ebp-20],eax
 005219C3    xor         eax,eax
 005219C5    mov         dword ptr [ebp-3C],eax
 005219C8    mov         eax,dword ptr [ebp-30]
 005219CB    shl         eax,10
 005219CE    cdq
 005219CF    idiv        eax,dword ptr [ebp-2C]
 005219D2    mov         word ptr [ebp-54],ax
 005219D6    mov         word ptr [ebp-52],0
 005219DC    mov         eax,dword ptr [ebp-8]
 005219DF    mov         dword ptr [ebp-34],eax
 005219E2    mov         eax,dword ptr [ebp-0C]
 005219E5    mov         dword ptr [ebp-38],eax
 005219E8    mov         byte ptr [ebp-45],1
 005219EC    mov         byte ptr [ebp-46],0
 005219F0    mov         eax,dword ptr [ebp-4]
 005219F3    movzx       eax,byte ptr [eax+7A]
 005219F7    mov         edx,dword ptr ds:[56E360];^gvar_00577A10
 005219FD    mov         eax,dword ptr [edx+eax*4]
 00521A00    mov         dword ptr [ebp-64],eax
 00521A03    mov         eax,dword ptr [ebp-0C]
 00521A06    cmp         eax,dword ptr [ebp-18]
>00521A09    jge         00521BE0
 00521A0F    mov         eax,dword ptr [ebp-18]
 00521A12    sub         eax,dword ptr [ebp-0C]
 00521A15    shl         eax,10
 00521A18    mov         dword ptr [ebp-44],eax
 00521A1B    mov         eax,dword ptr [ebp-44]
 00521A1E    sub         eax,10000
 00521A23    mov         dword ptr [ebp-3C],eax
 00521A26    movzx       eax,word ptr [ebp-54]
 00521A2A    push        eax
 00521A2B    mov         eax,dword ptr [ebp-44]
 00521A2E    pop         edx
 00521A2F    mov         ecx,edx
 00521A31    cdq
 00521A32    idiv        eax,ecx
 00521A34    test        edx,edx
>00521A36    jle         00521A4C
 00521A38    movzx       eax,word ptr [ebp-54]
 00521A3C    push        eax
 00521A3D    mov         eax,dword ptr [ebp-44]
 00521A40    pop         edx
 00521A41    mov         ecx,edx
 00521A43    cdq
 00521A44    idiv        eax,ecx
 00521A46    inc         eax
 00521A47    mov         dword ptr [ebp-44],eax
>00521A4A    jmp         00521A5D
 00521A4C    movzx       eax,word ptr [ebp-54]
 00521A50    push        eax
 00521A51    mov         eax,dword ptr [ebp-44]
 00521A54    pop         edx
 00521A55    mov         ecx,edx
 00521A57    cdq
 00521A58    idiv        eax,ecx
 00521A5A    mov         dword ptr [ebp-44],eax
 00521A5D    mov         edx,dword ptr [ebp+14]
 00521A60    inc         edx
 00521A61    mov         eax,dword ptr [ebp-34]
 00521A64    add         eax,dword ptr [ebp-44]
 00521A67    call        004373CC
 00521A6C    mov         dword ptr [ebp-34],eax
 00521A6F    mov         ax,word ptr [ebp-44]
 00521A73    imul        word ptr [ebp-54]
 00521A77    mov         word ptr [ebp-52],ax
 00521A7B    movzx       eax,word ptr [ebp-54]
 00521A7F    push        eax
 00521A80    mov         eax,dword ptr [ebp-3C]
 00521A83    pop         edx
 00521A84    mov         ecx,edx
 00521A86    cdq
 00521A87    idiv        eax,ecx
 00521A89    test        edx,edx
>00521A8B    jle         00521AA1
 00521A8D    movzx       eax,word ptr [ebp-54]
 00521A91    push        eax
 00521A92    mov         eax,dword ptr [ebp-3C]
 00521A95    pop         edx
 00521A96    mov         ecx,edx
 00521A98    cdq
 00521A99    idiv        eax,ecx
 00521A9B    inc         eax
 00521A9C    mov         dword ptr [ebp-3C],eax
>00521A9F    jmp         00521AB2
 00521AA1    movzx       eax,word ptr [ebp-54]
 00521AA5    push        eax
 00521AA6    mov         eax,dword ptr [ebp-3C]
 00521AA9    pop         edx
 00521AAA    mov         ecx,edx
 00521AAC    cdq
 00521AAD    idiv        eax,ecx
 00521AAF    mov         dword ptr [ebp-3C],eax
 00521AB2    mov         eax,dword ptr [ebp-3C]
 00521AB5    sub         dword ptr [ebp-44],eax
 00521AB8    mov         eax,dword ptr [ebp-34]
 00521ABB    cmp         eax,dword ptr [ebp-14]
>00521ABE    jle         00521AD3
 00521AC0    mov         eax,dword ptr [ebp-14]
 00521AC3    add         eax,dword ptr [ebp-44]
 00521AC6    cmp         eax,dword ptr [ebp-34]
>00521AC9    jl          00521E9C
 00521ACF    mov         byte ptr [ebp-46],1
 00521AD3    mov         eax,dword ptr [ebp-34]
 00521AD6    cmp         eax,dword ptr [ebp-10]
 00521AD9    setge       al
 00521ADC    or          al,byte ptr [ebp-46]
>00521ADF    je          00521BE0
 00521AE5    mov         eax,dword ptr [ebp-18]
 00521AE8    mov         dword ptr [ebp-38],eax
 00521AEB    mov         eax,dword ptr [ebp-34]
 00521AEE    mov         dword ptr [ebp-3C],eax
 00521AF1    mov         ax,word ptr [ebp-52]
 00521AF5    sub         ax,word ptr [ebp-54]
 00521AF9    mov         word ptr [ebp-56],ax
 00521AFD    mov         eax,dword ptr [ebp-34]
 00521B00    sub         eax,dword ptr [ebp-44]
 00521B03    mov         ecx,dword ptr [ebp-14]
 00521B06    mov         edx,dword ptr [ebp-10]
 00521B09    call        005130BC
 00521B0E    mov         dword ptr [ebp-40],eax
 00521B11    cmp         byte ptr [ebp-46],0
>00521B15    je          00521B2F
 00521B17    mov         ax,word ptr [ebp-34]
 00521B1B    sub         ax,word ptr [ebp-14]
 00521B1F    dec         eax
 00521B20    imul        word ptr [ebp-54]
 00521B24    sub         word ptr [ebp-56],ax
 00521B28    mov         eax,dword ptr [ebp-14]
 00521B2B    inc         eax
 00521B2C    mov         dword ptr [ebp-34],eax
 00521B2F    cmp         dword ptr [ebp-28],0FFFFFFFF
>00521B33    jne         00521B38
 00521B35    neg         dword ptr [ebp-38]
 00521B38    cmp         dword ptr [ebp-24],0FFFFFFFF
>00521B3C    jne         00521B44
 00521B3E    neg         dword ptr [ebp-34]
 00521B41    neg         dword ptr [ebp-40]
 00521B44    xor         eax,eax
 00521B46    push        ebp
 00521B47    push        521BB3
 00521B4C    push        dword ptr fs:[eax]
 00521B4F    mov         dword ptr fs:[eax],esp
 00521B52    mov         eax,dword ptr [ebp-34]
 00521B55    cmp         eax,dword ptr [ebp-40]
>00521B58    je          00521BA0
 00521B5A    mov         eax,dword ptr [ebp-24]
 00521B5D    neg         eax
 00521B5F    add         dword ptr [ebp-34],eax
 00521B62    mov         eax,dword ptr [ebp-50]
 00521B65    mov         eax,dword ptr [eax]
 00521B67    mov         edx,dword ptr [ebp-4]
 00521B6A    imul        dword ptr [edx+34]
 00521B6D    mov         edx,dword ptr [ebp-4C]
 00521B70    add         eax,dword ptr [edx]
 00521B72    mov         edx,dword ptr [ebp-4]
 00521B75    mov         edx,dword ptr [edx+40]
 00521B78    lea         edx,[edx+eax*4]
 00521B7B    movzx       eax,word ptr [ebp-56]
 00521B7F    shr         eax,8
 00521B82    xor         ecx,ecx
 00521B84    mov         cl,byte ptr [eax+597AA8];gvar_00597AA8
 00521B8A    mov         eax,dword ptr [ebp+0C]
 00521B8D    call        dword ptr [ebp-64]
 00521B90    mov         ax,word ptr [ebp-54]
 00521B94    sub         word ptr [ebp-56],ax
 00521B98    mov         eax,dword ptr [ebp-34]
 00521B9B    cmp         eax,dword ptr [ebp-40]
>00521B9E    jne         00521B5A
 00521BA0    xor         eax,eax
 00521BA2    pop         edx
 00521BA3    pop         ecx
 00521BA4    pop         ecx
 00521BA5    mov         dword ptr fs:[eax],edx
 00521BA8    push        521BBA
 00521BAD    call        00513ACC
 00521BB2    ret
>00521BB3    jmp         @HandleFinally
>00521BB8    jmp         00521BAD
 00521BBA    cmp         byte ptr [ebp-46],0
>00521BBE    je          00521BCD
 00521BC0    mov         eax,dword ptr [ebp-4]
 00521BC3    mov         edx,dword ptr [eax]
 00521BC5    call        dword ptr [edx+0C]
>00521BC8    jmp         00521E9C
 00521BCD    cmp         dword ptr [ebp-28],0FFFFFFFF
>00521BD1    jne         00521BD6
 00521BD3    neg         dword ptr [ebp-38]
 00521BD6    mov         eax,dword ptr [ebp-3C]
 00521BD9    mov         dword ptr [ebp-34],eax
 00521BDC    mov         byte ptr [ebp-45],0
 00521BE0    cmp         byte ptr [ebp-45],0
>00521BE4    je          00521C35
 00521BE6    mov         eax,dword ptr [ebp-8]
 00521BE9    cmp         eax,dword ptr [ebp-10]
>00521BEC    jge         00521C35
 00521BEE    mov         eax,dword ptr [ebp-10]
 00521BF1    sub         eax,dword ptr [ebp-8]
 00521BF4    movzx       edx,word ptr [ebp-54]
 00521BF8    imul        edx
 00521BFA    mov         dword ptr [ebp-44],eax
 00521BFD    mov         eax,dword ptr [ebp-44]
 00521C00    test        eax,eax
>00521C02    jns         00521C09
 00521C04    add         eax,0FFFF
 00521C09    sar         eax,10
 00521C0C    add         dword ptr [ebp-38],eax
 00521C0F    mov         ax,word ptr [ebp-44]
 00521C13    mov         word ptr [ebp-52],ax
 00521C17    mov         eax,dword ptr [ebp-10]
 00521C1A    mov         dword ptr [ebp-34],eax
 00521C1D    mov         eax,dword ptr [ebp-38]
 00521C20    cmp         eax,dword ptr [ebp-1C]
>00521C23    jg          00521E9C
 00521C29    mov         eax,dword ptr [ebp-38]
 00521C2C    cmp         eax,dword ptr [ebp-1C]
>00521C2F    jne         00521C35
 00521C31    mov         byte ptr [ebp-46],1
 00521C35    mov         eax,dword ptr [ebp+14]
 00521C38    mov         dword ptr [ebp-40],eax
 00521C3B    mov         byte ptr [ebp-47],0
 00521C3F    mov         byte ptr [ebp-45],0
 00521C43    mov         eax,dword ptr [ebp+10]
 00521C46    cmp         eax,dword ptr [ebp-1C]
>00521C49    jle         00521CEA
 00521C4F    mov         eax,dword ptr [ebp-1C]
 00521C52    sub         eax,dword ptr [ebp-0C]
 00521C55    shl         eax,10
 00521C58    mov         dword ptr [ebp-44],eax
 00521C5B    movzx       eax,word ptr [ebp-54]
 00521C5F    push        eax
 00521C60    mov         eax,dword ptr [ebp-44]
 00521C63    pop         edx
 00521C64    mov         ecx,edx
 00521C66    cdq
 00521C67    idiv        eax,ecx
 00521C69    add         eax,dword ptr [ebp-8]
 00521C6C    mov         dword ptr [ebp-40],eax
 00521C6F    movzx       eax,word ptr [ebp-54]
 00521C73    push        eax
 00521C74    mov         eax,dword ptr [ebp-44]
 00521C77    pop         edx
 00521C78    mov         ecx,edx
 00521C7A    cdq
 00521C7B    idiv        eax,ecx
 00521C7D    test        edx,edx
>00521C7F    jg          00521C84
 00521C81    dec         dword ptr [ebp-40]
 00521C84    mov         eax,dword ptr [ebp-40]
 00521C87    cmp         eax,dword ptr [ebp-14]
>00521C8A    jge         00521CE6
 00521C8C    mov         eax,dword ptr [ebp-44]
 00521C8F    add         eax,10000
 00521C94    mov         dword ptr [ebp-3C],eax
 00521C97    movzx       eax,word ptr [ebp-54]
 00521C9B    push        eax
 00521C9C    mov         eax,dword ptr [ebp-3C]
 00521C9F    pop         edx
 00521CA0    mov         ecx,edx
 00521CA2    cdq
 00521CA3    idiv        eax,ecx
 00521CA5    test        edx,edx
>00521CA7    jle         00521CC0
 00521CA9    movzx       eax,word ptr [ebp-54]
 00521CAD    push        eax
 00521CAE    mov         eax,dword ptr [ebp-3C]
 00521CB1    pop         edx
 00521CB2    mov         ecx,edx
 00521CB4    cdq
 00521CB5    idiv        eax,ecx
 00521CB7    add         eax,dword ptr [ebp-8]
 00521CBA    inc         eax
 00521CBB    mov         dword ptr [ebp-3C],eax
>00521CBE    jmp         00521CD4
 00521CC0    movzx       eax,word ptr [ebp-54]
 00521CC4    push        eax
 00521CC5    mov         eax,dword ptr [ebp-3C]
 00521CC8    pop         edx
 00521CC9    mov         ecx,edx
 00521CCB    cdq
 00521CCC    idiv        eax,ecx
 00521CCE    add         eax,dword ptr [ebp-8]
 00521CD1    mov         dword ptr [ebp-3C],eax
 00521CD4    mov         eax,dword ptr [ebp-3C]
 00521CD7    cmp         eax,dword ptr [ebp-14]
>00521CDA    jle         00521CE2
 00521CDC    mov         eax,dword ptr [ebp-14]
 00521CDF    mov         dword ptr [ebp-3C],eax
 00521CE2    mov         byte ptr [ebp-45],1
 00521CE6    mov         byte ptr [ebp-47],1
 00521CEA    mov         eax,dword ptr [ebp-40]
 00521CED    cmp         eax,dword ptr [ebp-14]
>00521CF0    jle         00521CFC
 00521CF2    mov         eax,dword ptr [ebp-14]
 00521CF5    mov         dword ptr [ebp-40],eax
 00521CF8    mov         byte ptr [ebp-47],1
 00521CFC    inc         dword ptr [ebp-40]
 00521CFF    cmp         dword ptr [ebp-28],0FFFFFFFF
>00521D03    jne         00521D08
 00521D05    neg         dword ptr [ebp-38]
 00521D08    cmp         dword ptr [ebp-24],0FFFFFFFF
>00521D0C    jne         00521D17
 00521D0E    neg         dword ptr [ebp-34]
 00521D11    neg         dword ptr [ebp-40]
 00521D14    neg         dword ptr [ebp-3C]
 00521D17    cmp         byte ptr [ebp-46],0
>00521D1B    jne         00521E0D
 00521D21    xor         eax,eax
 00521D23    push        ebp
 00521D24    push        521E06
 00521D29    push        dword ptr fs:[eax]
 00521D2C    mov         dword ptr fs:[eax],esp
 00521D2F    mov         al,byte ptr [ebp+8]
 00521D32    or          al,byte ptr [ebp-47]
>00521D35    jne         00521D55
 00521D37    cmp         byte ptr [ebp-45],0
>00521D3B    jne         00521D55
 00521D3D    mov         eax,dword ptr [ebp-34]
 00521D40    cmp         eax,dword ptr [ebp-40]
>00521D43    jge         00521D4A
 00521D45    dec         dword ptr [ebp-40]
>00521D48    jmp         00521D55
 00521D4A    mov         eax,dword ptr [ebp-34]
 00521D4D    cmp         eax,dword ptr [ebp-40]
>00521D50    jle         00521D55
 00521D52    inc         dword ptr [ebp-40]
 00521D55    mov         eax,dword ptr [ebp-34]
 00521D58    cmp         eax,dword ptr [ebp-40]
>00521D5B    je          00521DF3
 00521D61    movzx       eax,word ptr [ebp-52]
 00521D65    shr         eax,8
 00521D68    mov         byte ptr [ebp-59],al
 00521D6B    mov         eax,dword ptr [ebp-50]
 00521D6E    mov         eax,dword ptr [eax]
 00521D70    mov         edx,dword ptr [ebp-4]
 00521D73    imul        dword ptr [edx+34]
 00521D76    mov         edx,dword ptr [ebp-4C]
 00521D79    add         eax,dword ptr [edx]
 00521D7B    mov         edx,dword ptr [ebp-4]
 00521D7E    mov         edx,dword ptr [edx+40]
 00521D81    lea         eax,[edx+eax*4]
 00521D84    mov         dword ptr [ebp-60],eax
 00521D87    mov         al,byte ptr [ebp-59]
 00521D8A    xor         al,0FF
 00521D8C    and         eax,0FF
 00521D91    xor         ecx,ecx
 00521D93    mov         cl,byte ptr [eax+597AA8];gvar_00597AA8
 00521D99    mov         edx,dword ptr [ebp-60]
 00521D9C    mov         eax,dword ptr [ebp+0C]
 00521D9F    call        dword ptr [ebp-64]
 00521DA2    mov         eax,dword ptr [ebp-20]
 00521DA5    shl         eax,2
 00521DA8    add         dword ptr [ebp-60],eax
 00521DAB    xor         eax,eax
 00521DAD    mov         al,byte ptr [ebp-59]
 00521DB0    xor         ecx,ecx
 00521DB2    mov         cl,byte ptr [eax+597AA8];gvar_00597AA8
 00521DB8    mov         edx,dword ptr [ebp-60]
 00521DBB    mov         eax,dword ptr [ebp+0C]
 00521DBE    call        dword ptr [ebp-64]
 00521DC1    mov         ax,word ptr [ebp-52]
 00521DC5    mov         word ptr [ebp-58],ax
 00521DC9    mov         ax,word ptr [ebp-54]
 00521DCD    add         word ptr [ebp-52],ax
 00521DD1    mov         ax,word ptr [ebp-52]
 00521DD5    cmp         ax,word ptr [ebp-58]
>00521DD9    ja          00521DE1
 00521DDB    mov         eax,dword ptr [ebp-28]
 00521DDE    add         dword ptr [ebp-38],eax
 00521DE1    mov         eax,dword ptr [ebp-24]
 00521DE4    add         dword ptr [ebp-34],eax
 00521DE7    mov         eax,dword ptr [ebp-34]
 00521DEA    cmp         eax,dword ptr [ebp-40]
>00521DED    jne         00521D61
 00521DF3    xor         eax,eax
 00521DF5    pop         edx
 00521DF6    pop         ecx
 00521DF7    pop         ecx
 00521DF8    mov         dword ptr fs:[eax],edx
 00521DFB    push        521E0D
 00521E00    call        00513ACC
 00521E05    ret
>00521E06    jmp         @HandleFinally
>00521E0B    jmp         00521E00
 00521E0D    cmp         byte ptr [ebp-45],0
>00521E11    je          00521E8C
 00521E13    xor         eax,eax
 00521E15    push        ebp
 00521E16    push        521E85
 00521E1B    push        dword ptr fs:[eax]
 00521E1E    mov         dword ptr fs:[eax],esp
 00521E21    mov         eax,dword ptr [ebp-34]
 00521E24    cmp         eax,dword ptr [ebp-3C]
>00521E27    je          00521E72
 00521E29    mov         eax,dword ptr [ebp-50]
 00521E2C    mov         eax,dword ptr [eax]
 00521E2E    mov         edx,dword ptr [ebp-4]
 00521E31    imul        dword ptr [edx+34]
 00521E34    mov         edx,dword ptr [ebp-4C]
 00521E37    add         eax,dword ptr [edx]
 00521E39    mov         edx,dword ptr [ebp-4]
 00521E3C    mov         edx,dword ptr [edx+40]
 00521E3F    lea         edx,[edx+eax*4]
 00521E42    movzx       eax,word ptr [ebp-52]
 00521E46    shr         eax,8
 00521E49    xor         eax,0FF
 00521E4E    xor         ecx,ecx
 00521E50    mov         cl,byte ptr [eax+597AA8];gvar_00597AA8
 00521E56    mov         eax,dword ptr [ebp+0C]
 00521E59    call        dword ptr [ebp-64]
 00521E5C    mov         ax,word ptr [ebp-54]
 00521E60    add         word ptr [ebp-52],ax
 00521E64    mov         eax,dword ptr [ebp-24]
 00521E67    add         dword ptr [ebp-34],eax
 00521E6A    mov         eax,dword ptr [ebp-34]
 00521E6D    cmp         eax,dword ptr [ebp-3C]
>00521E70    jne         00521E29
 00521E72    xor         eax,eax
 00521E74    pop         edx
 00521E75    pop         ecx
 00521E76    pop         ecx
 00521E77    mov         dword ptr fs:[eax],edx
 00521E7A    push        521E8C
 00521E7F    call        00513ACC
 00521E84    ret
>00521E85    jmp         @HandleFinally
>00521E8A    jmp         00521E7F
 00521E8C    lea         edx,[ebp-74]
 00521E8F    mov         ecx,40000002
 00521E94    mov         eax,dword ptr [ebp-4]
 00521E97    mov         ebx,dword ptr [eax]
 00521E99    call        dword ptr [ebx+44]
 00521E9C    pop         ebx
 00521E9D    mov         esp,ebp
 00521E9F    pop         ebp
 00521EA0    ret         10
end;*}

//00521EA4
{*procedure sub_00521EA4(?:TBitmap32; ?:?; ?:?);
begin
 00521EA4    push        ebp
 00521EA5    mov         ebp,esp
 00521EA7    add         esp,0FFFFFFF4
 00521EAA    mov         dword ptr [ebp-0C],ecx
 00521EAD    mov         dword ptr [ebp-8],edx
 00521EB0    mov         dword ptr [ebp-4],eax
 00521EB3    mov         eax,dword ptr [ebp-8]
 00521EB6    mov         edx,dword ptr [ebp-4]
 00521EB9    mov         dword ptr [edx+0FC],eax
 00521EBF    mov         eax,dword ptr [ebp-0C]
 00521EC2    mov         edx,dword ptr [ebp-4]
 00521EC5    mov         dword ptr [edx+100],eax
 00521ECB    mov         esp,ebp
 00521ECD    pop         ebp
 00521ECE    ret
end;*}

//00521ED0
{*procedure sub_00521ED0(?:TBitmap32; ?:?; ?:?);
begin
 00521ED0    push        ebp
 00521ED1    mov         ebp,esp
 00521ED3    add         esp,0FFFFFFF4
 00521ED6    mov         dword ptr [ebp-0C],ecx
 00521ED9    mov         dword ptr [ebp-8],edx
 00521EDC    mov         dword ptr [ebp-4],eax
 00521EDF    mov         eax,dword ptr [ebp-8]
 00521EE2    push        eax
 00521EE3    mov         eax,dword ptr [ebp-0C]
 00521EE6    push        eax
 00521EE7    mov         eax,dword ptr [ebp-4]
 00521EEA    mov         eax,dword ptr [eax+0BC]
 00521EF0    push        eax
 00521EF1    push        0
 00521EF3    mov         eax,dword ptr [ebp-4]
 00521EF6    mov         ecx,dword ptr [eax+100]
 00521EFC    mov         eax,dword ptr [ebp-4]
 00521EFF    mov         edx,dword ptr [eax+0FC]
 00521F05    mov         eax,dword ptr [ebp-4]
 00521F08    call        00520880
 00521F0D    mov         eax,dword ptr [ebp-8]
 00521F10    mov         edx,dword ptr [ebp-4]
 00521F13    mov         dword ptr [edx+0FC],eax
 00521F19    mov         eax,dword ptr [ebp-0C]
 00521F1C    mov         edx,dword ptr [ebp-4]
 00521F1F    mov         dword ptr [edx+100],eax
 00521F25    mov         esp,ebp
 00521F27    pop         ebp
 00521F28    ret
end;*}

//00521F2C
{*procedure sub_00521F2C(?:?; ?:?; ?:?);
begin
 00521F2C    push        ebp
 00521F2D    mov         ebp,esp
 00521F2F    add         esp,0FFFFFFF4
 00521F32    mov         dword ptr [ebp-0C],ecx
 00521F35    mov         dword ptr [ebp-8],edx
 00521F38    mov         dword ptr [ebp-4],eax
 00521F3B    mov         eax,dword ptr [ebp-8]
 00521F3E    push        eax
 00521F3F    mov         eax,dword ptr [ebp-0C]
 00521F42    push        eax
 00521F43    mov         eax,dword ptr [ebp-4]
 00521F46    mov         eax,dword ptr [eax+0BC]
 00521F4C    push        eax
 00521F4D    push        0
 00521F4F    mov         eax,dword ptr [ebp-4]
 00521F52    mov         ecx,dword ptr [eax+100]
 00521F58    mov         eax,dword ptr [ebp-4]
 00521F5B    mov         edx,dword ptr [eax+0FC]
 00521F61    mov         eax,dword ptr [ebp-4]
 00521F64    call        005216FC
 00521F69    mov         eax,dword ptr [ebp-8]
 00521F6C    mov         edx,dword ptr [ebp-4]
 00521F6F    mov         dword ptr [edx+0FC],eax
 00521F75    mov         eax,dword ptr [ebp-0C]
 00521F78    mov         edx,dword ptr [ebp-4]
 00521F7B    mov         dword ptr [edx+100],eax
 00521F81    mov         esp,ebp
 00521F83    pop         ebp
 00521F84    ret
end;*}

//00521F88
{*procedure sub_00521F88(?:?; ?:?; ?:?);
begin
 00521F88    push        ebp
 00521F89    mov         ebp,esp
 00521F8B    push        ecx
 00521F8C    mov         dword ptr [ebp-4],eax
 00521F8F    push        dword ptr [ebp+0C]
 00521F92    call        0051DC10
 00521F97    mov         edx,dword ptr [ebp-4]
 00521F9A    mov         dword ptr [edx+104],eax
 00521FA0    push        dword ptr [ebp+8]
 00521FA3    call        0051DC10
 00521FA8    mov         edx,dword ptr [ebp-4]
 00521FAB    mov         dword ptr [edx+108],eax
 00521FB1    pop         ecx
 00521FB2    pop         ebp
 00521FB3    ret         8
end;*}

//00521FB8
{*procedure sub_00521FB8(?:?; ?:?; ?:?);
begin
 00521FB8    push        ebp
 00521FB9    mov         ebp,esp
 00521FBB    add         esp,0FFFFFFF4
 00521FBE    mov         dword ptr [ebp-0C],ecx
 00521FC1    mov         dword ptr [ebp-8],edx
 00521FC4    mov         dword ptr [ebp-4],eax
 00521FC7    mov         eax,dword ptr [ebp-8]
 00521FCA    push        eax
 00521FCB    mov         eax,dword ptr [ebp-0C]
 00521FCE    push        eax
 00521FCF    mov         eax,dword ptr [ebp-4]
 00521FD2    mov         eax,dword ptr [eax+0BC]
 00521FD8    push        eax
 00521FD9    push        0
 00521FDB    mov         eax,dword ptr [ebp-4]
 00521FDE    mov         ecx,dword ptr [eax+108]
 00521FE4    mov         eax,dword ptr [ebp-4]
 00521FE7    mov         edx,dword ptr [eax+104]
 00521FED    mov         eax,dword ptr [ebp-4]
 00521FF0    call        00521448
 00521FF5    mov         eax,dword ptr [ebp-8]
 00521FF8    mov         edx,dword ptr [ebp-4]
 00521FFB    mov         dword ptr [edx+104],eax
 00522001    mov         eax,dword ptr [ebp-0C]
 00522004    mov         edx,dword ptr [ebp-4]
 00522007    mov         dword ptr [edx+108],eax
 0052200D    mov         esp,ebp
 0052200F    pop         ebp
 00522010    ret
end;*}

//00522014
{*procedure sub_00522014(?:?; ?:?; ?:?);
begin
 00522014    push        ebp
 00522015    mov         ebp,esp
 00522017    push        ecx
 00522018    mov         dword ptr [ebp-4],eax
 0052201B    push        dword ptr [ebp+8]
 0052201E    call        0051DC10
 00522023    push        eax
 00522024    push        dword ptr [ebp+0C]
 00522027    call        0051DC10
 0052202C    mov         edx,eax
 0052202E    mov         eax,dword ptr [ebp-4]
 00522031    pop         ecx
 00522032    call        00521FB8
 00522037    pop         ecx
 00522038    pop         ebp
 00522039    ret         8
end;*}

//0052203C
{*procedure sub_0052203C(?:TBitmap32; ?:?; ?:?; ?:?; ?:?; ?:?);
begin
 0052203C    push        ebp
 0052203D    mov         ebp,esp
 0052203F    add         esp,0FFFFFFD8
 00522042    push        ebx
 00522043    mov         dword ptr [ebp-0C],ecx
 00522046    mov         dword ptr [ebp-8],edx
 00522049    mov         dword ptr [ebp-4],eax
 0052204C    mov         eax,dword ptr [ebp-0C]
 0052204F    mov         edx,dword ptr [ebp+0C]
 00522052    dec         edx
 00522053    sub         edx,eax
>00522055    jl          00522097
 00522057    inc         edx
 00522058    mov         dword ptr [ebp-18],edx
 0052205B    mov         dword ptr [ebp-10],eax
 0052205E    mov         eax,dword ptr [ebp-10]
 00522061    mov         edx,dword ptr [ebp-4]
 00522064    imul        dword ptr [edx+34]
 00522067    mov         edx,dword ptr [ebp-4]
 0052206A    mov         edx,dword ptr [edx+40]
 0052206D    lea         eax,[edx+eax*4]
 00522070    mov         dword ptr [ebp-14],eax
 00522073    mov         eax,dword ptr [ebp-14]
 00522076    mov         edx,dword ptr [ebp-8]
 00522079    lea         eax,[eax+edx*4]
 0052207C    mov         ebx,dword ptr ds:[56E100];^gvar_005779AC
 00522082    mov         ebx,dword ptr [ebx]
 00522084    mov         edx,dword ptr [ebp+10]
 00522087    sub         edx,dword ptr [ebp-8]
 0052208A    mov         ecx,dword ptr [ebp+8]
 0052208D    call        ebx
 0052208F    inc         dword ptr [ebp-10]
 00522092    dec         dword ptr [ebp-18]
>00522095    jne         0052205E
 00522097    mov         eax,dword ptr [ebp+0C]
 0052209A    push        eax
 0052209B    lea         eax,[ebp-28]
 0052209E    push        eax
 0052209F    mov         ecx,dword ptr [ebp+10]
 005220A2    mov         edx,dword ptr [ebp-0C]
 005220A5    mov         eax,dword ptr [ebp-8]
 005220A8    call        0051DC50
 005220AD    lea         edx,[ebp-28]
 005220B0    mov         ecx,80000000
 005220B5    mov         eax,dword ptr [ebp-4]
 005220B8    mov         ebx,dword ptr [eax]
 005220BA    call        dword ptr [ebx+44]
 005220BD    pop         ebx
 005220BE    mov         esp,ebp
 005220C0    pop         ebp
 005220C1    ret         0C
end;*}

//005220C4
{*procedure sub_005220C4(?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
begin
 005220C4    push        ebp
 005220C5    mov         ebp,esp
 005220C7    add         esp,0FFFFFFE4
 005220CA    push        ebx
 005220CB    mov         dword ptr [ebp-0C],ecx
 005220CE    mov         dword ptr [ebp-8],edx
 005220D1    mov         dword ptr [ebp-4],eax
 005220D4    mov         eax,dword ptr [ebp-4]
 005220D7    cmp         byte ptr [eax+0F0],0
>005220DE    jne         0052219A
 005220E4    mov         eax,dword ptr [ebp+10]
 005220E7    cmp         eax,dword ptr [ebp-8]
>005220EA    jle         0052219A
 005220F0    mov         eax,dword ptr [ebp+0C]
 005220F3    cmp         eax,dword ptr [ebp-0C]
>005220F6    jle         0052219A
 005220FC    mov         eax,dword ptr [ebp-8]
 005220FF    mov         edx,dword ptr [ebp-4]
 00522102    cmp         eax,dword ptr [edx+50]
>00522105    jge         0052219A
 0052210B    mov         eax,dword ptr [ebp-0C]
 0052210E    mov         edx,dword ptr [ebp-4]
 00522111    cmp         eax,dword ptr [edx+54]
>00522114    jge         0052219A
 0052211A    mov         eax,dword ptr [ebp+10]
 0052211D    mov         edx,dword ptr [ebp-4]
 00522120    cmp         eax,dword ptr [edx+48]
>00522123    jle         0052219A
 00522125    mov         eax,dword ptr [ebp+0C]
 00522128    mov         edx,dword ptr [ebp-4]
 0052212B    cmp         eax,dword ptr [edx+4C]
>0052212E    jle         0052219A
 00522130    mov         eax,dword ptr [ebp-8]
 00522133    mov         edx,dword ptr [ebp-4]
 00522136    cmp         eax,dword ptr [edx+48]
>00522139    jge         00522144
 0052213B    mov         eax,dword ptr [ebp-4]
 0052213E    mov         eax,dword ptr [eax+48]
 00522141    mov         dword ptr [ebp-8],eax
 00522144    mov         eax,dword ptr [ebp-0C]
 00522147    mov         edx,dword ptr [ebp-4]
 0052214A    cmp         eax,dword ptr [edx+4C]
>0052214D    jge         00522158
 0052214F    mov         eax,dword ptr [ebp-4]
 00522152    mov         eax,dword ptr [eax+4C]
 00522155    mov         dword ptr [ebp-0C],eax
 00522158    mov         eax,dword ptr [ebp+10]
 0052215B    mov         edx,dword ptr [ebp-4]
 0052215E    cmp         eax,dword ptr [edx+50]
>00522161    jle         0052216C
 00522163    mov         eax,dword ptr [ebp-4]
 00522166    mov         eax,dword ptr [eax+50]
 00522169    mov         dword ptr [ebp+10],eax
 0052216C    mov         eax,dword ptr [ebp+0C]
 0052216F    mov         edx,dword ptr [ebp-4]
 00522172    cmp         eax,dword ptr [edx+54]
>00522175    jle         00522180
 00522177    mov         eax,dword ptr [ebp-4]
 0052217A    mov         eax,dword ptr [eax+54]
 0052217D    mov         dword ptr [ebp+0C],eax
 00522180    mov         eax,dword ptr [ebp+10]
 00522183    push        eax
 00522184    mov         eax,dword ptr [ebp+0C]
 00522187    push        eax
 00522188    mov         eax,dword ptr [ebp+8]
 0052218B    push        eax
 0052218C    mov         ecx,dword ptr [ebp-0C]
 0052218F    mov         edx,dword ptr [ebp-8]
 00522192    mov         eax,dword ptr [ebp-4]
 00522195    call        0052203C
 0052219A    mov         eax,dword ptr [ebp+0C]
 0052219D    push        eax
 0052219E    lea         eax,[ebp-1C]
 005221A1    push        eax
 005221A2    mov         ecx,dword ptr [ebp+10]
 005221A5    mov         edx,dword ptr [ebp-0C]
 005221A8    mov         eax,dword ptr [ebp-8]
 005221AB    call        0051DC50
 005221B0    lea         edx,[ebp-1C]
 005221B3    mov         ecx,80000000
 005221B8    mov         eax,dword ptr [ebp-4]
 005221BB    mov         ebx,dword ptr [eax]
 005221BD    call        dword ptr [ebx+44]
 005221C0    pop         ebx
 005221C1    mov         esp,ebp
 005221C3    pop         ebp
 005221C4    ret         0C
end;*}

//005221C8
{*procedure sub_005221C8(?:?; ?:TMemoryStream);
begin
 005221C8    push        ebp
 005221C9    mov         ebp,esp
 005221CB    add         esp,0FFFFFFF4
 005221CE    mov         dword ptr [ebp-8],edx
 005221D1    mov         dword ptr [ebp-4],eax
 005221D4    mov         dl,1
 005221D6    mov         eax,[0042CF48];TBitmap
 005221DB    call        TBitmap.Create;TBitmap.Create
 005221E0    mov         dword ptr [ebp-0C],eax
 005221E3    xor         eax,eax
 005221E5    push        ebp
 005221E6    push        52221D
 005221EB    push        dword ptr fs:[eax]
 005221EE    mov         dword ptr fs:[eax],esp
 005221F1    mov         edx,dword ptr [ebp-4]
 005221F4    mov         eax,dword ptr [ebp-0C]
 005221F7    mov         ecx,dword ptr [eax]
 005221F9    call        dword ptr [ecx+8];TBitmap.sub_00434344
 005221FC    mov         edx,dword ptr [ebp-8]
 005221FF    mov         eax,dword ptr [ebp-0C]
 00522202    mov         ecx,dword ptr [eax]
 00522204    call        dword ptr [ecx+58];TBitmap.sub_00436424
 00522207    xor         eax,eax
 00522209    pop         edx
 0052220A    pop         ecx
 0052220B    pop         ecx
 0052220C    mov         dword ptr fs:[eax],edx
 0052220F    push        522224
 00522214    mov         eax,dword ptr [ebp-0C]
 00522217    call        TObject.Free
 0052221C    ret
>0052221D    jmp         @HandleFinally
>00522222    jmp         00522214
 00522224    mov         esp,ebp
 00522226    pop         ebp
 00522227    ret
end;*}

//00522228
{*function sub_00522228(?:?; ?:?):?;
begin
 00522228    push        ebp
 00522229    mov         ebp,esp
 0052222B    add         esp,0FFFFFFEC
 0052222E    push        ebx
 0052222F    mov         dword ptr [ebp-8],edx
 00522232    mov         dword ptr [ebp-4],eax
 00522235    cmp         dword ptr [ebp-8],0
>00522239    je          00522251
 0052223B    mov         eax,dword ptr [ebp-4]
 0052223E    call        TObject.ClassType
 00522243    mov         ebx,eax
 00522245    mov         eax,dword ptr [ebp-8]
 00522248    call        TObject.ClassType
 0052224D    cmp         ebx,eax
>0052224F    je          00522255
 00522251    xor         eax,eax
>00522253    jmp         00522257
 00522255    mov         al,1
 00522257    mov         byte ptr [ebp-9],al
 0052225A    mov         eax,dword ptr [ebp-4]
 0052225D    mov         edx,dword ptr [eax]
 0052225F    call        dword ptr [edx+24]
 00522262    test        al,al
>00522264    jne         00522272
 00522266    mov         eax,dword ptr [ebp-8]
 00522269    mov         edx,dword ptr [eax]
 0052226B    call        dword ptr [edx+24]
 0052226E    test        al,al
>00522270    je          00522298
 00522272    mov         eax,dword ptr [ebp-4]
 00522275    mov         edx,dword ptr [eax]
 00522277    call        dword ptr [edx+24]
 0052227A    test        al,al
>0052227C    je          0052228A
 0052227E    mov         eax,dword ptr [ebp-8]
 00522281    mov         edx,dword ptr [eax]
 00522283    call        dword ptr [edx+24]
 00522286    test        al,al
>00522288    jne         0052228E
 0052228A    xor         eax,eax
>0052228C    jmp         00522290
 0052228E    mov         al,1
 00522290    mov         byte ptr [ebp-9],al
>00522293    jmp         00522370
 00522298    cmp         byte ptr [ebp-9],0
>0052229C    je          00522370
 005222A2    mov         dl,1
 005222A4    mov         eax,[0041DE14];TMemoryStream
 005222A9    call        TObject.Create;TMemoryStream.Create
 005222AE    mov         dword ptr [ebp-10],eax
 005222B1    xor         eax,eax
 005222B3    push        ebp
 005222B4    push        522369
 005222B9    push        dword ptr fs:[eax]
 005222BC    mov         dword ptr fs:[eax],esp
 005222BF    mov         edx,dword ptr [ebp-10]
 005222C2    mov         eax,dword ptr [ebp-4]
 005222C5    call        005221C8
 005222CA    mov         dl,1
 005222CC    mov         eax,[0041DE14];TMemoryStream
 005222D1    call        TObject.Create;TMemoryStream.Create
 005222D6    mov         dword ptr [ebp-14],eax
 005222D9    xor         eax,eax
 005222DB    push        ebp
 005222DC    push        52234C
 005222E1    push        dword ptr fs:[eax]
 005222E4    mov         dword ptr fs:[eax],esp
 005222E7    mov         edx,dword ptr [ebp-14]
 005222EA    mov         eax,dword ptr [ebp-8]
 005222ED    call        005221C8
 005222F2    mov         eax,dword ptr [ebp-10]
 005222F5    mov         edx,dword ptr [eax]
 005222F7    call        dword ptr [edx];TMemoryStream.sub_004235A0
 005222F9    push        edx
 005222FA    push        eax
 005222FB    mov         eax,dword ptr [ebp-14]
 005222FE    mov         edx,dword ptr [eax]
 00522300    call        dword ptr [edx];TMemoryStream.sub_004235A0
 00522302    cmp         edx,dword ptr [esp+4]
>00522306    jne         0052230B
 00522308    cmp         eax,dword ptr [esp]
 0052230B    pop         edx
 0052230C    pop         eax
>0052230D    jne         0052232D
 0052230F    mov         eax,dword ptr [ebp-10]
 00522312    mov         edx,dword ptr [eax]
 00522314    call        dword ptr [edx];TMemoryStream.sub_004235A0
 00522316    mov         ecx,eax
 00522318    mov         eax,dword ptr [ebp-14]
 0052231B    mov         edx,dword ptr [eax+4];TMemoryStream.FMemory:Pointer
 0052231E    mov         eax,dword ptr [ebp-10]
 00522321    mov         eax,dword ptr [eax+4];TMemoryStream.FMemory:Pointer
 00522324    call        CompareMem
 00522329    test        al,al
>0052232B    jne         00522331
 0052232D    xor         eax,eax
>0052232F    jmp         00522333
 00522331    mov         al,1
 00522333    mov         byte ptr [ebp-9],al
 00522336    xor         eax,eax
 00522338    pop         edx
 00522339    pop         ecx
 0052233A    pop         ecx
 0052233B    mov         dword ptr fs:[eax],edx
 0052233E    push        522353
 00522343    mov         eax,dword ptr [ebp-14]
 00522346    call        TObject.Free
 0052234B    ret
>0052234C    jmp         @HandleFinally
>00522351    jmp         00522343
 00522353    xor         eax,eax
 00522355    pop         edx
 00522356    pop         ecx
 00522357    pop         ecx
 00522358    mov         dword ptr fs:[eax],edx
 0052235B    push        522370
 00522360    mov         eax,dword ptr [ebp-10]
 00522363    call        TObject.Free
 00522368    ret
>00522369    jmp         @HandleFinally
>0052236E    jmp         00522360
 00522370    mov         al,byte ptr [ebp-9]
 00522373    pop         ebx
 00522374    mov         esp,ebp
 00522376    pop         ebp
 00522377    ret
end;*}

//00522378
{*function sub_00522378(?:?):?;
begin
 00522378    push        ebp
 00522379    mov         ebp,esp
 0052237B    push        ecx
 0052237C    mov         eax,dword ptr [ebp+8]
 0052237F    mov         eax,dword ptr [eax-4]
 00522382    cmp         dword ptr [eax+20],0
>00522386    je          005223C3
 00522388    mov         eax,dword ptr [ebp+8]
 0052238B    mov         eax,dword ptr [eax-4]
 0052238E    mov         eax,dword ptr [eax+20]
 00522391    mov         edx,dword ptr ds:[51D7C4];TBitmap32
 00522397    call        @IsClass
 0052239C    test        al,al
>0052239E    je          005223BC
 005223A0    mov         eax,dword ptr [ebp+8]
 005223A3    mov         eax,dword ptr [eax-4]
 005223A6    mov         edx,dword ptr [eax+20]
 005223A9    mov         eax,dword ptr [ebp+8]
 005223AC    mov         eax,dword ptr [eax-8]
 005223AF    call        00522228
 005223B4    test        al,al
>005223B6    je          005223BC
 005223B8    xor         eax,eax
>005223BA    jmp         005223BE
 005223BC    mov         al,1
 005223BE    mov         byte ptr [ebp-1],al
>005223C1    jmp         005223D3
 005223C3    mov         eax,dword ptr [ebp+8]
 005223C6    mov         eax,dword ptr [eax-8]
 005223C9    mov         edx,dword ptr [eax]
 005223CB    call        dword ptr [edx+24]
 005223CE    xor         al,1
 005223D0    mov         byte ptr [ebp-1],al
 005223D3    mov         al,byte ptr [ebp-1]
 005223D6    pop         ecx
 005223D7    pop         ebp
 005223D8    ret
end;*}

//005223DC
procedure TBitmap32.DefineProperties(Filer:TFiler);
begin
{*
 005223DC    push        ebp
 005223DD    mov         ebp,esp
 005223DF    add         esp,0FFFFFFF8
 005223E2    push        ebx
 005223E3    mov         dword ptr [ebp-4],edx
 005223E6    mov         dword ptr [ebp-8],eax
 005223E9    mov         eax,dword ptr [ebp-8]
 005223EC    push        eax
 005223ED    mov         eax,dword ptr [eax]
 005223EF    mov         eax,dword ptr [eax+3C];TBitmap32.?f3C:TCustomImage32
 005223F2    push        eax
 005223F3    mov         eax,dword ptr [ebp-8]
 005223F6    push        eax
 005223F7    mov         eax,dword ptr [eax]
 005223F9    mov         eax,dword ptr [eax+40];TBitmap32.?f40:dword
 005223FC    push        eax
 005223FD    push        ebp
 005223FE    call        00522378
 00522403    pop         ecx
 00522404    mov         ecx,eax
 00522406    mov         edx,522420;'Data'
 0052240B    mov         eax,dword ptr [ebp-4]
 0052240E    mov         ebx,dword ptr [eax]
 00522410    call        dword ptr [ebx+8];@AbstractError
 00522413    pop         ebx
 00522414    pop         ecx
 00522415    pop         ecx
 00522416    pop         ebp
 00522417    ret
*}
end;

//00522428
{*procedure sub_00522428(?:?);
begin
 00522428    push        ebp
 00522429    mov         ebp,esp
 0052242B    add         esp,0FFFFFFF0
 0052242E    push        ebx
 0052242F    mov         dword ptr [ebp-8],edx
 00522432    mov         dword ptr [ebp-4],eax
 00522435    xor         eax,eax
 00522437    push        ebp
 00522438    push        5224A6
 0052243D    push        dword ptr fs:[eax]
 00522440    mov         dword ptr fs:[eax],esp
 00522443    lea         edx,[ebp-0C]
 00522446    mov         ecx,4
 0052244B    mov         eax,dword ptr [ebp-8]
 0052244E    call        TStream.ReadBuffer
 00522453    lea         edx,[ebp-10]
 00522456    mov         ecx,4
 0052245B    mov         eax,dword ptr [ebp-8]
 0052245E    call        TStream.ReadBuffer
 00522463    mov         ecx,dword ptr [ebp-10]
 00522466    mov         edx,dword ptr [ebp-0C]
 00522469    mov         eax,dword ptr [ebp-4]
 0052246C    mov         ebx,dword ptr [eax]
 0052246E    call        dword ptr [ebx+2C];TBitmap32.sub_0051E43C
 00522471    mov         eax,dword ptr [ebp-4]
 00522474    mov         eax,dword ptr [eax+34];TBitmap32.?f34:Single
 00522477    mov         edx,dword ptr [ebp-4]
 0052247A    imul        dword ptr [edx+30];TBitmap32.?f30:Integer
 0052247D    mov         ecx,eax
 0052247F    shl         ecx,2
 00522482    mov         eax,dword ptr [ebp-4]
 00522485    mov         edx,dword ptr [eax+40];TBitmap32.?f40:dword
 00522488    mov         eax,dword ptr [ebp-8]
 0052248B    call        TStream.ReadBuffer
 00522490    xor         eax,eax
 00522492    pop         edx
 00522493    pop         ecx
 00522494    pop         ecx
 00522495    mov         dword ptr fs:[eax],edx
 00522498    push        5224AD
 0052249D    mov         eax,dword ptr [ebp-4]
 005224A0    mov         edx,dword ptr [eax]
 005224A2    call        dword ptr [edx+0C];TBitmap32.sub_005230BC
 005224A5    ret
>005224A6    jmp         @HandleFinally
>005224AB    jmp         0052249D
 005224AD    pop         ebx
 005224AE    mov         esp,ebp
 005224B0    pop         ebp
 005224B1    ret
end;*}

//005224B4
{*procedure sub_005224B4(?:?);
begin
 005224B4    push        ebp
 005224B5    mov         ebp,esp
 005224B7    add         esp,0FFFFFFF8
 005224BA    mov         dword ptr [ebp-8],edx
 005224BD    mov         dword ptr [ebp-4],eax
 005224C0    mov         eax,dword ptr [ebp-4]
 005224C3    lea         edx,[eax+34];TBitmap32.?f34:Single
 005224C6    mov         ecx,4
 005224CB    mov         eax,dword ptr [ebp-8]
 005224CE    call        TStream.WriteBuffer
 005224D3    mov         eax,dword ptr [ebp-4]
 005224D6    lea         edx,[eax+30];TBitmap32.?f30:Integer
 005224D9    mov         ecx,4
 005224DE    mov         eax,dword ptr [ebp-8]
 005224E1    call        TStream.WriteBuffer
 005224E6    mov         eax,dword ptr [ebp-4]
 005224E9    mov         eax,dword ptr [eax+34];TBitmap32.?f34:Single
 005224EC    mov         edx,dword ptr [ebp-4]
 005224EF    imul        dword ptr [edx+30];TBitmap32.?f30:Integer
 005224F2    mov         ecx,eax
 005224F4    shl         ecx,2
 005224F7    mov         eax,dword ptr [ebp-4]
 005224FA    mov         edx,dword ptr [eax+40];TBitmap32.?f40:dword
 005224FD    mov         eax,dword ptr [ebp-8]
 00522500    call        TStream.WriteBuffer
 00522505    pop         ecx
 00522506    pop         ecx
 00522507    pop         ebp
 00522508    ret
end;*}

//0052250C
{*procedure sub_0052250C(?:TBitmap32; ?:?);
begin
 0052250C    push        ebp
 0052250D    mov         ebp,esp
 0052250F    add         esp,0FFFFFFF4
 00522512    mov         dword ptr [ebp-8],edx
 00522515    mov         dword ptr [ebp-4],eax
 00522518    mov         dl,1
 0052251A    mov         eax,[0042CF48];TBitmap
 0052251F    call        TBitmap.Create;TBitmap.Create
 00522524    mov         dword ptr [ebp-0C],eax
 00522527    xor         eax,eax
 00522529    push        ebp
 0052252A    push        522561
 0052252F    push        dword ptr fs:[eax]
 00522532    mov         dword ptr fs:[eax],esp
 00522535    mov         edx,dword ptr [ebp-4]
 00522538    mov         eax,dword ptr [ebp-0C]
 0052253B    mov         ecx,dword ptr [eax]
 0052253D    call        dword ptr [ecx+8];TBitmap.sub_00434344
 00522540    mov         edx,dword ptr [ebp-8]
 00522543    mov         eax,dword ptr [ebp-0C]
 00522546    mov         ecx,dword ptr [eax]
 00522548    call        dword ptr [ecx+50];TBitmap.sub_004313BC
 0052254B    xor         eax,eax
 0052254D    pop         edx
 0052254E    pop         ecx
 0052254F    pop         ecx
 00522550    mov         dword ptr fs:[eax],edx
 00522553    push        522568
 00522558    mov         eax,dword ptr [ebp-0C]
 0052255B    call        TObject.Free
 00522560    ret
>00522561    jmp         @HandleFinally
>00522566    jmp         00522558
 00522568    mov         esp,ebp
 0052256A    pop         ebp
 0052256B    ret
end;*}

//0052256C
{*procedure sub_0052256C(?:TBitmap32; ?:?);
begin
 0052256C    push        ebp
 0052256D    mov         ebp,esp
 0052256F    add         esp,0FFFFFFF8
 00522572    mov         dword ptr [ebp-8],edx
 00522575    mov         dword ptr [ebp-4],eax
 00522578    mov         edx,dword ptr [ebp-8]
 0052257B    mov         eax,dword ptr [ebp-4]
 0052257E    mov         eax,dword ptr [eax+7C]
 00522581    mov         ecx,dword ptr [eax]
 00522583    call        dword ptr [ecx+8]
 00522586    mov         edx,dword ptr [ebp-4]
 00522589    mov         eax,dword ptr [ebp-4]
 0052258C    call        00522598
 00522591    pop         ecx
 00522592    pop         ecx
 00522593    pop         ebp
 00522594    ret
end;*}

//00522598
procedure sub_00522598(?:TBitmap32; ?:TBitmap32);
begin
{*
 00522598    push        ebp
 00522599    mov         ebp,esp
 0052259B    add         esp,0FFFFFFF8
 0052259E    mov         dword ptr [ebp-8],edx
 005225A1    mov         dword ptr [ebp-4],eax
 005225A4    mov         eax,dword ptr [ebp-4]
 005225A7    cmp         dword ptr [eax+0F8],0;TBitmap32.?fF8:dword
>005225AE    je          005225DC
 005225B0    mov         eax,dword ptr [ebp-4]
 005225B3    cmp         dword ptr [eax+84],0;TBitmap32.?f84:HDC
>005225BA    je          005225D1
 005225BC    mov         eax,[00597BB0];0x0 gvar_00597BB0:HGDIOBJ
 005225C1    push        eax
 005225C2    mov         eax,dword ptr [ebp-4]
 005225C5    mov         eax,dword ptr [eax+84];TBitmap32.?f84:HDC
 005225CB    push        eax
 005225CC    call        gdi32.SelectObject
 005225D1    mov         eax,dword ptr [ebp-4]
 005225D4    xor         edx,edx
 005225D6    mov         dword ptr [eax+0F8],edx;TBitmap32.?fF8:dword
 005225DC    pop         ecx
 005225DD    pop         ecx
 005225DE    pop         ebp
 005225DF    ret
*}
end;

//005225E0
{*procedure sub_005225E0(?:?);
begin
 005225E0    push        ebp
 005225E1    mov         ebp,esp
 005225E3    push        ecx
 005225E4    mov         dword ptr [ebp-4],eax
 005225E7    mov         eax,dword ptr [ebp-4]
 005225EA    cmp         dword ptr [eax+0F8],0
>005225F1    jne         00522660
 005225F3    mov         eax,dword ptr [ebp-4]
 005225F6    cmp         dword ptr [eax+84],0
>005225FD    je          00522660
 005225FF    mov         eax,dword ptr [ebp-4]
 00522602    mov         eax,dword ptr [eax+7C]
 00522605    call        0042E12C
 0052260A    push        eax
 0052260B    mov         eax,dword ptr [ebp-4]
 0052260E    mov         eax,dword ptr [eax+84]
 00522614    push        eax
 00522615    call        gdi32.SelectObject
 0052261A    mov         eax,dword ptr [ebp-4]
 0052261D    mov         eax,dword ptr [eax+7C]
 00522620    mov         eax,dword ptr [eax+18]
 00522623    call        ColorToRGB
 00522628    push        eax
 00522629    mov         eax,dword ptr [ebp-4]
 0052262C    mov         eax,dword ptr [eax+84]
 00522632    push        eax
 00522633    call        gdi32.SetTextColor
 00522638    push        1
 0052263A    mov         eax,dword ptr [ebp-4]
 0052263D    mov         eax,dword ptr [eax+84]
 00522643    push        eax
 00522644    call        gdi32.SetBkMode
 00522649    mov         eax,dword ptr [ebp-4]
 0052264C    mov         eax,dword ptr [eax+7C]
 0052264F    call        0042E12C
 00522654    mov         edx,dword ptr [ebp-4]
 00522657    mov         dword ptr [edx+0F8],eax
 0052265D    pop         ecx
 0052265E    pop         ebp
 0052265F    ret
 00522660    mov         eax,dword ptr [ebp-4]
 00522663    mov         eax,dword ptr [eax+0F8]
 00522669    push        eax
 0052266A    mov         eax,dword ptr [ebp-4]
 0052266D    mov         eax,dword ptr [eax+84]
 00522673    push        eax
 00522674    call        gdi32.SelectObject
 00522679    mov         eax,dword ptr [ebp-4]
 0052267C    mov         eax,dword ptr [eax+7C]
 0052267F    mov         eax,dword ptr [eax+18]
 00522682    call        ColorToRGB
 00522687    push        eax
 00522688    mov         eax,dword ptr [ebp-4]
 0052268B    mov         eax,dword ptr [eax+84]
 00522691    push        eax
 00522692    call        gdi32.SetTextColor
 00522697    push        1
 00522699    mov         eax,dword ptr [ebp-4]
 0052269C    mov         eax,dword ptr [eax+84]
 005226A2    push        eax
 005226A3    call        gdi32.SetBkMode
 005226A8    pop         ecx
 005226A9    pop         ebp
 005226AA    ret
end;*}

//005226AC
procedure TBitmap32.SetCombineMode(Value:TCombineMode);
begin
{*
 005226AC    push        ebp
 005226AD    mov         ebp,esp
 005226AF    add         esp,0FFFFFFF8
 005226B2    mov         byte ptr [ebp-5],dl
 005226B5    mov         dword ptr [ebp-4],eax
 005226B8    mov         eax,dword ptr [ebp-4]
 005226BB    mov         al,byte ptr [eax+7A];TBitmap32.CombineMode:TCombineMode
 005226BE    cmp         al,byte ptr [ebp-5]
>005226C1    je          005226D4
 005226C3    mov         al,byte ptr [ebp-5]
 005226C6    mov         edx,dword ptr [ebp-4]
 005226C9    mov         byte ptr [edx+7A],al;TBitmap32.CombineMode:TCombineMode
 005226CC    mov         eax,dword ptr [ebp-4]
 005226CF    mov         edx,dword ptr [eax]
 005226D1    call        dword ptr [edx+0C];TBitmap32.sub_005230BC
 005226D4    pop         ecx
 005226D5    pop         ecx
 005226D6    pop         ebp
 005226D7    ret
*}
end;

//005226D8
procedure TBitmap32.SetDrawMode(Value:TDrawMode);
begin
{*
 005226D8    push        ebp
 005226D9    mov         ebp,esp
 005226DB    add         esp,0FFFFFFF8
 005226DE    mov         byte ptr [ebp-5],dl
 005226E1    mov         dword ptr [ebp-4],eax
 005226E4    mov         eax,dword ptr [ebp-4]
 005226E7    mov         al,byte ptr [eax+79];TBitmap32.DrawMode:TDrawMode
 005226EA    cmp         al,byte ptr [ebp-5]
>005226ED    je          00522700
 005226EF    mov         al,byte ptr [ebp-5]
 005226F2    mov         edx,dword ptr [ebp-4]
 005226F5    mov         byte ptr [edx+79],al;TBitmap32.DrawMode:TDrawMode
 005226F8    mov         eax,dword ptr [ebp-4]
 005226FB    mov         edx,dword ptr [eax]
 005226FD    call        dword ptr [edx+0C];TBitmap32.sub_005230BC
 00522700    pop         ecx
 00522701    pop         ecx
 00522702    pop         ebp
 00522703    ret
*}
end;

//00522704
procedure TBitmap32.SetWrapMode(Value:TWrapMode);
begin
{*
 00522704    push        ebp
 00522705    mov         ebp,esp
 00522707    add         esp,0FFFFFFF8
 0052270A    mov         byte ptr [ebp-5],dl
 0052270D    mov         dword ptr [ebp-4],eax
 00522710    mov         eax,dword ptr [ebp-4]
 00522713    mov         al,byte ptr [eax+7B];TBitmap32.WrapMode:TWrapMode
 00522716    cmp         al,byte ptr [ebp-5]
>00522719    je          0052272C
 0052271B    mov         al,byte ptr [ebp-5]
 0052271E    mov         edx,dword ptr [ebp-4]
 00522721    mov         byte ptr [edx+7B],al;TBitmap32.WrapMode:TWrapMode
 00522724    mov         eax,dword ptr [ebp-4]
 00522727    mov         edx,dword ptr [eax]
 00522729    call        dword ptr [edx+0C];TBitmap32.sub_005230BC
 0052272C    pop         ecx
 0052272D    pop         ecx
 0052272E    pop         ebp
 0052272F    ret
*}
end;

//00522730
procedure TBitmap32.SetMasterAlpha(Value:Cardinal);
begin
{*
 00522730    push        ebp
 00522731    mov         ebp,esp
 00522733    add         esp,0FFFFFFF8
 00522736    mov         dword ptr [ebp-8],edx
 00522739    mov         dword ptr [ebp-4],eax
 0052273C    mov         eax,dword ptr [ebp-4]
 0052273F    mov         eax,dword ptr [eax+0B4];TBitmap32.MasterAlpha:Cardinal
 00522745    cmp         eax,dword ptr [ebp-8]
>00522748    je          0052275E
 0052274A    mov         eax,dword ptr [ebp-8]
 0052274D    mov         edx,dword ptr [ebp-4]
 00522750    mov         dword ptr [edx+0B4],eax;TBitmap32.MasterAlpha:Cardinal
 00522756    mov         eax,dword ptr [ebp-4]
 00522759    mov         edx,dword ptr [eax]
 0052275B    call        dword ptr [edx+0C];TBitmap32.sub_005230BC
 0052275E    pop         ecx
 0052275F    pop         ecx
 00522760    pop         ebp
 00522761    ret
*}
end;

//00522764
{*procedure sub_00522764(?:?; ?:AnsiString; ?:?);
begin
 00522764    push        ebp
 00522765    mov         ebp,esp
 00522767    add         esp,0FFFFFFEC
 0052276A    mov         dword ptr [ebp-0C],ecx
 0052276D    mov         dword ptr [ebp-8],edx
 00522770    mov         dword ptr [ebp-4],eax
 00522773    mov         eax,dword ptr [ebp-4]
 00522776    call        005225E0
 0052277B    mov         eax,dword ptr [ebp-0C]
 0052277E    xor         edx,edx
 00522780    mov         dword ptr [eax],edx
 00522782    mov         eax,dword ptr [ebp-0C]
 00522785    xor         edx,edx
 00522787    mov         dword ptr [eax+4],edx
 0052278A    mov         eax,dword ptr [ebp-4]
 0052278D    cmp         dword ptr [eax+84],0
>00522794    je          005227C0
 00522796    mov         eax,dword ptr [ebp-0C]
 00522799    push        eax
 0052279A    mov         eax,dword ptr [ebp-8]
 0052279D    call        @LStrLen
 005227A2    push        eax
 005227A3    mov         eax,dword ptr [ebp-8]
 005227A6    call        @LStrToPChar
 005227AB    push        eax
 005227AC    mov         eax,dword ptr [ebp-4]
 005227AF    mov         eax,dword ptr [eax+84]
 005227B5    push        eax
 005227B6    call        gdi32.GetTextExtentPoint32A
>005227BB    jmp         00522857
 005227C0    mov         eax,[00597BB4];0x0 gvar_00597BB4:TBitmap
 005227C5    call        0043498C
 005227CA    call        TCanvas.Lock
 005227CF    xor         eax,eax
 005227D1    push        ebp
 005227D2    push        522850
 005227D7    push        dword ptr fs:[eax]
 005227DA    mov         dword ptr fs:[eax],esp
 005227DD    mov         eax,[00597BB4];0x0 gvar_00597BB4:TBitmap
 005227E2    call        0043498C
 005227E7    call        0042F6A0
 005227EC    mov         dword ptr [ebp-10],eax
 005227EF    mov         eax,dword ptr [ebp-4]
 005227F2    mov         eax,dword ptr [eax+7C]
 005227F5    call        0042E12C
 005227FA    push        eax
 005227FB    mov         eax,dword ptr [ebp-10]
 005227FE    push        eax
 005227FF    call        gdi32.SelectObject
 00522804    mov         dword ptr [ebp-14],eax
 00522807    mov         eax,dword ptr [ebp-0C]
 0052280A    push        eax
 0052280B    mov         eax,dword ptr [ebp-8]
 0052280E    call        @LStrLen
 00522813    push        eax
 00522814    mov         eax,dword ptr [ebp-8]
 00522817    call        @LStrToPChar
 0052281C    push        eax
 0052281D    mov         eax,dword ptr [ebp-10]
 00522820    push        eax
 00522821    call        gdi32.GetTextExtentPoint32A
 00522826    mov         eax,dword ptr [ebp-14]
 00522829    push        eax
 0052282A    mov         eax,dword ptr [ebp-10]
 0052282D    push        eax
 0052282E    call        gdi32.SelectObject
 00522833    xor         eax,eax
 00522835    pop         edx
 00522836    pop         ecx
 00522837    pop         ecx
 00522838    mov         dword ptr fs:[eax],edx
 0052283B    push        522857
 00522840    mov         eax,[00597BB4];0x0 gvar_00597BB4:TBitmap
 00522845    call        0043498C
 0052284A    call        TCanvas.Unlock
 0052284F    ret
>00522850    jmp         @HandleFinally
>00522855    jmp         00522840
 00522857    mov         esp,ebp
 00522859    pop         ebp
 0052285A    ret
end;*}

//0052285C
{*procedure sub_0052285C(?:TBitmap32; ?:?; ?:?; ?:?);
begin
 0052285C    push        ebp
 0052285D    mov         ebp,esp
 0052285F    add         esp,0FFFFFFDC
 00522862    push        ebx
 00522863    mov         dword ptr [ebp-0C],ecx
 00522866    mov         dword ptr [ebp-8],edx
 00522869    mov         dword ptr [ebp-4],eax
 0052286C    mov         eax,dword ptr [ebp-4]
 0052286F    call        005225E0
 00522874    mov         eax,dword ptr [ebp-4]
 00522877    cmp         byte ptr [eax+0F0],0
>0052287E    jne         005228EE
 00522880    mov         eax,dword ptr [ebp-4]
 00522883    cmp         byte ptr [eax+78],0
>00522887    je          005228BF
 00522889    push        0
 0052288B    mov         eax,dword ptr [ebp+8]
 0052288E    call        @LStrLen
 00522893    push        eax
 00522894    mov         eax,dword ptr [ebp+8]
 00522897    call        @LStrToPChar
 0052289C    push        eax
 0052289D    mov         eax,dword ptr [ebp-4]
 005228A0    add         eax,48
 005228A3    push        eax
 005228A4    push        4
 005228A6    mov         eax,dword ptr [ebp-0C]
 005228A9    push        eax
 005228AA    mov         eax,dword ptr [ebp-8]
 005228AD    push        eax
 005228AE    mov         eax,dword ptr [ebp-4]
 005228B1    mov         eax,dword ptr [eax+84]
 005228B7    push        eax
 005228B8    call        gdi32.ExtTextOutA
>005228BD    jmp         005228EE
 005228BF    push        0
 005228C1    mov         eax,dword ptr [ebp+8]
 005228C4    call        @LStrLen
 005228C9    push        eax
 005228CA    mov         eax,dword ptr [ebp+8]
 005228CD    call        @LStrToPChar
 005228D2    push        eax
 005228D3    push        0
 005228D5    push        0
 005228D7    mov         eax,dword ptr [ebp-0C]
 005228DA    push        eax
 005228DB    mov         eax,dword ptr [ebp-8]
 005228DE    push        eax
 005228DF    mov         eax,dword ptr [ebp-4]
 005228E2    mov         eax,dword ptr [eax+84]
 005228E8    push        eax
 005228E9    call        gdi32.ExtTextOutA
 005228EE    lea         ecx,[ebp-14]
 005228F1    mov         edx,dword ptr [ebp+8]
 005228F4    mov         eax,dword ptr [ebp-4]
 005228F7    call        00522764
 005228FC    mov         eax,dword ptr [ebp-0C]
 005228FF    add         eax,dword ptr [ebp-10]
 00522902    inc         eax
 00522903    push        eax
 00522904    lea         eax,[ebp-24]
 00522907    push        eax
 00522908    mov         ecx,dword ptr [ebp-8]
 0052290B    add         ecx,dword ptr [ebp-14]
 0052290E    inc         ecx
 0052290F    mov         edx,dword ptr [ebp-0C]
 00522912    mov         eax,dword ptr [ebp-8]
 00522915    call        0051DC50
 0052291A    lea         edx,[ebp-24]
 0052291D    mov         ecx,80000000
 00522922    mov         eax,dword ptr [ebp-4]
 00522925    mov         ebx,dword ptr [eax]
 00522927    call        dword ptr [ebx+44]
 0052292A    pop         ebx
 0052292B    mov         esp,ebp
 0052292D    pop         ebp
 0052292E    ret         4
end;*}

//00522934
{*procedure sub_00522934(?:?; ?:TBitmap32; ?:TBitmap32; ?:?; ?:?);
begin
 00522934    push        ebp
 00522935    mov         ebp,esp
 00522937    add         esp,0FFFFFFBC
 0052293A    mov         dword ptr [ebp-0C],ecx
 0052293D    mov         dword ptr [ebp-8],edx
 00522940    mov         dword ptr [ebp-4],eax
 00522943    mov         ecx,dword ptr [ebp+0C]
 00522946    mov         eax,1
 0052294B    shl         eax,cl
 0052294D    dec         eax
 0052294E    mov         dword ptr [ebp-28],eax
 00522951    xor         ecx,ecx
 00522953    xor         edx,edx
 00522955    mov         eax,dword ptr [ebp-8]
 00522958    call        0051F574
 0052295D    mov         dword ptr [ebp-34],eax
 00522960    mov         eax,dword ptr [ebp-8]
 00522963    mov         eax,dword ptr [eax+30]
 00522966    dec         eax
 00522967    test        eax,eax
>00522969    jl          00522A43
 0052296F    inc         eax
 00522970    mov         dword ptr [ebp-38],eax
 00522973    mov         dword ptr [ebp-14],0
 0052297A    mov         ecx,dword ptr [ebp+0C]
 0052297D    mov         eax,dword ptr [ebp-14]
 00522980    shl         eax,cl
 00522982    mov         dword ptr [ebp-1C],eax
 00522985    mov         eax,dword ptr [ebp-8]
 00522988    mov         eax,dword ptr [eax+34]
 0052298B    dec         eax
 0052298C    test        eax,eax
>0052298E    jl          00522A37
 00522994    inc         eax
 00522995    mov         dword ptr [ebp-3C],eax
 00522998    mov         dword ptr [ebp-10],0
 0052299F    mov         ecx,dword ptr [ebp+0C]
 005229A2    mov         eax,dword ptr [ebp-10]
 005229A5    shl         eax,cl
 005229A7    mov         dword ptr [ebp-18],eax
 005229AA    xor         eax,eax
 005229AC    mov         dword ptr [ebp-2C],eax
 005229AF    mov         eax,dword ptr [ebp-1C]
 005229B2    mov         edx,dword ptr [ebp-1C]
 005229B5    add         edx,dword ptr [ebp-28]
 005229B8    sub         edx,eax
>005229BA    jl          00522A09
 005229BC    inc         edx
 005229BD    mov         dword ptr [ebp-40],edx
 005229C0    mov         dword ptr [ebp-24],eax
 005229C3    mov         ecx,dword ptr [ebp-24]
 005229C6    mov         edx,dword ptr [ebp-18]
 005229C9    mov         eax,dword ptr [ebp-0C]
 005229CC    call        0051F574
 005229D1    mov         dword ptr [ebp-30],eax
 005229D4    mov         eax,dword ptr [ebp-18]
 005229D7    mov         edx,dword ptr [ebp-18]
 005229DA    add         edx,dword ptr [ebp-28]
 005229DD    sub         edx,eax
>005229DF    jl          00522A01
 005229E1    inc         edx
 005229E2    mov         dword ptr [ebp-44],edx
 005229E5    mov         dword ptr [ebp-20],eax
 005229E8    mov         eax,dword ptr [ebp-30]
 005229EB    mov         eax,dword ptr [eax]
 005229ED    and         eax,0FF
 005229F2    add         dword ptr [ebp-2C],eax
 005229F5    add         dword ptr [ebp-30],4
 005229F9    inc         dword ptr [ebp-20]
 005229FC    dec         dword ptr [ebp-44]
>005229FF    jne         005229E8
 00522A01    inc         dword ptr [ebp-24]
 00522A04    dec         dword ptr [ebp-40]
>00522A07    jne         005229C3
 00522A09    mov         ecx,dword ptr [ebp+0C]
 00522A0C    mov         eax,dword ptr [ebp-2C]
 00522A0F    shr         eax,cl
 00522A11    mov         ecx,dword ptr [ebp+0C]
 00522A14    shr         eax,cl
 00522A16    mov         dword ptr [ebp-2C],eax
 00522A19    mov         eax,dword ptr [ebp-2C]
 00522A1C    shl         eax,18
 00522A1F    add         eax,dword ptr [ebp+8]
 00522A22    mov         edx,dword ptr [ebp-34]
 00522A25    mov         dword ptr [edx],eax
 00522A27    add         dword ptr [ebp-34],4
 00522A2B    inc         dword ptr [ebp-10]
 00522A2E    dec         dword ptr [ebp-3C]
>00522A31    jne         0052299F
 00522A37    inc         dword ptr [ebp-14]
 00522A3A    dec         dword ptr [ebp-38]
>00522A3D    jne         0052297A
 00522A43    mov         esp,ebp
 00522A45    pop         ebp
 00522A46    ret         8
end;*}

//00522A4C
{*procedure sub_00522A4C(?:?; ?:TBitmap32; ?:?);
begin
 00522A4C    push        ebp
 00522A4D    mov         ebp,esp
 00522A4F    add         esp,0FFFFFFE4
 00522A52    mov         dword ptr [ebp-0C],ecx
 00522A55    mov         dword ptr [ebp-8],edx
 00522A58    mov         dword ptr [ebp-4],eax
 00522A5B    mov         eax,dword ptr [ebp-8]
 00522A5E    mov         eax,dword ptr [eax+40]
 00522A61    mov         dword ptr [ebp-14],eax
 00522A64    mov         eax,dword ptr [ebp-8]
 00522A67    mov         eax,dword ptr [eax+34]
 00522A6A    mov         edx,dword ptr [ebp-8]
 00522A6D    imul        dword ptr [edx+30]
 00522A70    dec         eax
 00522A71    test        eax,eax
>00522A73    jl          00522AB3
 00522A75    inc         eax
 00522A76    mov         dword ptr [ebp-1C],eax
 00522A79    mov         dword ptr [ebp-10],0
 00522A80    mov         eax,dword ptr [ebp-14]
 00522A83    mov         eax,dword ptr [eax]
 00522A85    mov         dword ptr [ebp-18],eax
 00522A88    cmp         dword ptr [ebp-18],0
>00522A8C    je          00522AA7
 00522A8E    mov         eax,dword ptr [ebp-14]
 00522A91    mov         eax,dword ptr [eax]
 00522A93    shl         eax,18
 00522A96    mov         dword ptr [ebp-18],eax
 00522A99    mov         eax,dword ptr [ebp-0C]
 00522A9C    add         dword ptr [ebp-18],eax
 00522A9F    mov         eax,dword ptr [ebp-18]
 00522AA2    mov         edx,dword ptr [ebp-14]
 00522AA5    mov         dword ptr [edx],eax
 00522AA7    add         dword ptr [ebp-14],4
 00522AAB    inc         dword ptr [ebp-10]
 00522AAE    dec         dword ptr [ebp-1C]
>00522AB1    jne         00522A80
 00522AB3    mov         esp,ebp
 00522AB5    pop         ebp
 00522AB6    ret
end;*}

//00522AB8
{*procedure sub_00522AB8(?:?; ?:?);
begin
 00522AB8    push        ebp
 00522AB9    mov         ebp,esp
 00522ABB    add         esp,0FFFFFFB0
 00522ABE    xor         ecx,ecx
 00522AC0    mov         dword ptr [ebp-50],ecx
 00522AC3    mov         dword ptr [ebp-4C],ecx
 00522AC6    mov         dword ptr [ebp-48],ecx
 00522AC9    mov         dword ptr [ebp-8],edx
 00522ACC    mov         dword ptr [ebp-4],eax
 00522ACF    xor         eax,eax
 00522AD1    push        ebp
 00522AD2    push        522C13
 00522AD7    push        dword ptr fs:[eax]
 00522ADA    mov         dword ptr fs:[eax],esp
 00522ADD    mov         eax,dword ptr [ebp-4]
 00522AE0    call        TFont.GetHeight
 00522AE5    mov         dword ptr [ebp-44],eax
 00522AE8    xor         eax,eax
 00522AEA    mov         dword ptr [ebp-40],eax
 00522AED    xor         eax,eax
 00522AEF    mov         dword ptr [ebp-3C],eax
 00522AF2    xor         eax,eax
 00522AF4    mov         dword ptr [ebp-38],eax
 00522AF7    mov         eax,dword ptr [ebp-4]
 00522AFA    call        TFont.GetStyle
 00522AFF    test        al,1
>00522B01    je          00522B0C
 00522B03    mov         dword ptr [ebp-34],2BC
>00522B0A    jmp         00522B13
 00522B0C    mov         dword ptr [ebp-34],190
 00522B13    mov         eax,dword ptr [ebp-4]
 00522B16    call        TFont.GetStyle
 00522B1B    test        al,2
 00522B1D    setne       al
 00522B20    mov         byte ptr [ebp-30],al
 00522B23    mov         eax,dword ptr [ebp-4]
 00522B26    call        TFont.GetStyle
 00522B2B    test        al,4
 00522B2D    setne       al
 00522B30    mov         byte ptr [ebp-2F],al
 00522B33    mov         eax,dword ptr [ebp-4]
 00522B36    call        TFont.GetStyle
 00522B3B    test        al,8
 00522B3D    setne       al
 00522B40    mov         byte ptr [ebp-2E],al
 00522B43    mov         eax,dword ptr [ebp-4]
 00522B46    call        TFont.GetCharset
 00522B4B    mov         byte ptr [ebp-2D],al
 00522B4E    lea         edx,[ebp-48]
 00522B51    mov         eax,dword ptr [ebp-4]
 00522B54    call        TFont.GetName
 00522B59    mov         eax,dword ptr [ebp-48]
 00522B5C    mov         edx,522C28;'Default'
 00522B61    call        0040BF44
 00522B66    test        eax,eax
>00522B68    jne         00522B88
 00522B6A    lea         eax,[ebp-4C]
 00522B6D    mov         edx,dword ptr ds:[56E630];^gvar_0056BD6C
 00522B73    add         edx,0B
 00522B76    call        @LStrFromString
 00522B7B    mov         edx,dword ptr [ebp-4C]
 00522B7E    lea         eax,[ebp-28]
 00522B81    call        0040CEE4
>00522B86    jmp         00522B9E
 00522B88    lea         edx,[ebp-50]
 00522B8B    mov         eax,dword ptr [ebp-4]
 00522B8E    call        TFont.GetName
 00522B93    mov         edx,dword ptr [ebp-50]
 00522B96    lea         eax,[ebp-28]
 00522B99    call        0040CEE4
 00522B9E    mov         al,byte ptr [ebp-8]
 00522BA1    mov         byte ptr [ebp-2A],al
 00522BA4    cmp         dword ptr [ebp-38],0
>00522BA8    je          00522BB0
 00522BAA    mov         byte ptr [ebp-2C],7
>00522BAE    jmp         00522BB4
 00522BB0    mov         byte ptr [ebp-2C],0
 00522BB4    mov         byte ptr [ebp-2B],0
 00522BB8    mov         eax,dword ptr [ebp-4]
 00522BBB    call        TFont.GetPitch
 00522BC0    dec         al
>00522BC2    je          00522BCA
 00522BC4    dec         al
>00522BC6    je          00522BD0
>00522BC8    jmp         00522BD6
 00522BCA    mov         byte ptr [ebp-29],2
>00522BCE    jmp         00522BDA
 00522BD0    mov         byte ptr [ebp-29],1
>00522BD4    jmp         00522BDA
 00522BD6    mov         byte ptr [ebp-29],0
 00522BDA    lea         eax,[ebp-44]
 00522BDD    push        eax
 00522BDE    call        gdi32.CreateFontIndirectA
 00522BE3    mov         edx,eax
 00522BE5    mov         eax,dword ptr [ebp-4]
 00522BE8    call        0042E2DC
 00522BED    xor         eax,eax
 00522BEF    pop         edx
 00522BF0    pop         ecx
 00522BF1    pop         ecx
 00522BF2    mov         dword ptr fs:[eax],edx
 00522BF5    push        522C1A
 00522BFA    lea         eax,[ebp-50]
 00522BFD    call        @LStrClr
 00522C02    lea         eax,[ebp-4C]
 00522C05    call        @LStrClr
 00522C0A    lea         eax,[ebp-48]
 00522C0D    call        @LStrClr
 00522C12    ret
>00522C13    jmp         @HandleFinally
>00522C18    jmp         00522BFA
 00522C1A    mov         esp,ebp
 00522C1C    pop         ebp
 00522C1D    ret
end;*}

//00522C30
{*procedure sub_00522C30(?:TBitmap32; ?:?; ?:?; ?:?; ?:?; ?:?);
begin
 00522C30    push        ebp
 00522C31    mov         ebp,esp
 00522C33    add         esp,0FFFFFFD8
 00522C36    push        ebx
 00522C37    xor         ebx,ebx
 00522C39    mov         dword ptr [ebp-28],ebx
 00522C3C    mov         dword ptr [ebp-0C],ecx
 00522C3F    mov         dword ptr [ebp-8],edx
 00522C42    mov         dword ptr [ebp-4],eax
 00522C45    xor         eax,eax
 00522C47    push        ebp
 00522C48    push        522F16
 00522C4D    push        dword ptr fs:[eax]
 00522C50    mov         dword ptr fs:[eax],esp
 00522C53    mov         eax,dword ptr [ebp-4]
 00522C56    mov         edx,dword ptr [eax]
 00522C58    call        dword ptr [edx+24]
 00522C5B    test        al,al
>00522C5D    jne         00522F00
 00522C63    mov         eax,dword ptr [ebp+8]
 00522C66    shr         eax,18
 00522C69    mov         dword ptr [ebp-20],eax
 00522C6C    and         dword ptr [ebp+8],0FFFFFF
 00522C73    mov         ecx,4
 00522C78    or          edx,0FFFFFFFF
 00522C7B    mov         eax,dword ptr [ebp+0C]
 00522C7E    call        005130B0
 00522C83    mov         dword ptr [ebp+0C],eax
 00522C86    lea         eax,[ebp-28]
 00522C89    mov         ecx,522F2C;' '
 00522C8E    mov         edx,dword ptr [ebp+10]
 00522C91    call        @LStrCat3
 00522C96    cmp         dword ptr [ebp+0C],0FFFFFFFF
>00522C9A    jle         00522CAE
 00522C9C    mov         eax,dword ptr [ebp-4]
 00522C9F    mov         eax,dword ptr [eax+7C]
 00522CA2    mov         edx,3
 00522CA7    call        00522AB8
>00522CAC    jmp         00522CBE
 00522CAE    mov         eax,dword ptr [ebp-4]
 00522CB1    mov         eax,dword ptr [eax+7C]
 00522CB4    mov         edx,4
 00522CB9    call        00522AB8
 00522CBE    mov         dl,1
 00522CC0    mov         eax,[0051D7C4];TBitmap32
 00522CC5    call        TBitmap32.Create;TBitmap32.Create
 00522CCA    mov         dword ptr [ebp-10],eax
 00522CCD    xor         eax,eax
 00522CCF    push        ebp
 00522CD0    push        522EEC
 00522CD5    push        dword ptr fs:[eax]
 00522CD8    mov         dword ptr fs:[eax],esp
 00522CDB    cmp         dword ptr [ebp+0C],0
>00522CDF    jne         00522D56
 00522CE1    mov         ecx,dword ptr [ebp+8]
 00522CE4    mov         edx,dword ptr [ebp-10]
 00522CE7    mov         eax,dword ptr [ebp-4]
 00522CEA    call        00522A4C
 00522CEF    lea         ecx,[ebp-1C]
 00522CF2    mov         edx,dword ptr [ebp-28]
 00522CF5    mov         eax,dword ptr [ebp-4]
 00522CF8    call        00522764
 00522CFD    mov         ecx,dword ptr [ebp-18]
 00522D00    mov         edx,dword ptr [ebp-1C]
 00522D03    mov         eax,dword ptr [ebp-10]
 00522D06    mov         ebx,dword ptr [eax]
 00522D08    call        dword ptr [ebx+2C];TBitmap32.sub_0051E43C
 00522D0B    mov         eax,dword ptr [ebp-4]
 00522D0E    mov         edx,dword ptr [eax+7C]
 00522D11    mov         eax,dword ptr [ebp-10]
 00522D14    call        0052256C
 00522D19    xor         edx,edx
 00522D1B    mov         eax,dword ptr [ebp-10]
 00522D1E    call        0051E97C
 00522D23    mov         eax,dword ptr [ebp-10]
 00522D26    mov         eax,dword ptr [eax+7C];TBitmap32.?f7C:TFont
 00522D29    mov         edx,0FFFFFF
 00522D2E    call        TFont.SetColor
 00522D33    mov         eax,dword ptr [ebp+10]
 00522D36    push        eax
 00522D37    xor         ecx,ecx
 00522D39    xor         edx,edx
 00522D3B    mov         eax,dword ptr [ebp-10]
 00522D3E    call        0052285C
 00522D43    mov         ecx,dword ptr [ebp+8]
 00522D46    mov         edx,dword ptr [ebp-10]
 00522D49    mov         eax,dword ptr [ebp-4]
 00522D4C    call        00522A4C
>00522D51    jmp         00522EA1
 00522D56    mov         eax,[00597BB4];0x0 gvar_00597BB4:TBitmap
 00522D5B    call        0043498C
 00522D60    mov         dword ptr [ebp-24],eax
 00522D63    mov         eax,dword ptr [ebp-24]
 00522D66    call        TCanvas.Lock
 00522D6B    xor         eax,eax
 00522D6D    push        ebp
 00522D6E    push        522E9A
 00522D73    push        dword ptr fs:[eax]
 00522D76    mov         dword ptr fs:[eax],esp
 00522D79    mov         eax,dword ptr [ebp-4]
 00522D7C    mov         edx,dword ptr [eax+7C]
 00522D7F    mov         eax,dword ptr [ebp-24]
 00522D82    call        TCanvas.SetFont
 00522D87    mov         eax,dword ptr [ebp-4]
 00522D8A    mov         eax,dword ptr [eax+7C]
 00522D8D    call        TFont.GetSize
 00522D92    mov         edx,eax
 00522D94    mov         ecx,dword ptr [ebp+0C]
 00522D97    shl         edx,cl
 00522D99    mov         eax,dword ptr [ebp-24]
 00522D9C    mov         eax,dword ptr [eax+0C]
 00522D9F    call        TFont.SetSize
 00522DA4    lea         ecx,[ebp-1C]
 00522DA7    mov         edx,dword ptr [ebp-28]
 00522DAA    mov         eax,dword ptr [ebp-24]
 00522DAD    call        0042F3E4
 00522DB2    mov         ecx,dword ptr [ebp+0C]
 00522DB5    mov         eax,dword ptr [ebp-1C]
 00522DB8    shr         eax,cl
 00522DBA    inc         eax
 00522DBB    mov         ecx,dword ptr [ebp+0C]
 00522DBE    shl         eax,cl
 00522DC0    mov         dword ptr [ebp-1C],eax
 00522DC3    mov         ecx,dword ptr [ebp+0C]
 00522DC6    mov         eax,dword ptr [ebp-18]
 00522DC9    shr         eax,cl
 00522DCB    inc         eax
 00522DCC    mov         ecx,dword ptr [ebp+0C]
 00522DCF    shl         eax,cl
 00522DD1    mov         dword ptr [ebp-18],eax
 00522DD4    mov         dl,1
 00522DD6    mov         eax,[0051D7C4];TBitmap32
 00522DDB    call        TBitmap32.Create;TBitmap32.Create
 00522DE0    mov         dword ptr [ebp-14],eax
 00522DE3    xor         eax,eax
 00522DE5    push        ebp
 00522DE6    push        522E7D
 00522DEB    push        dword ptr fs:[eax]
 00522DEE    mov         dword ptr fs:[eax],esp
 00522DF1    mov         ecx,dword ptr [ebp-18]
 00522DF4    mov         edx,dword ptr [ebp-1C]
 00522DF7    mov         eax,dword ptr [ebp-14]
 00522DFA    mov         ebx,dword ptr [eax]
 00522DFC    call        dword ptr [ebx+2C];TBitmap32.sub_0051E43C
 00522DFF    xor         edx,edx
 00522E01    mov         eax,dword ptr [ebp-14]
 00522E04    call        0051E97C
 00522E09    mov         eax,dword ptr [ebp-24]
 00522E0C    mov         edx,dword ptr [eax+0C]
 00522E0F    mov         eax,dword ptr [ebp-14]
 00522E12    call        0052256C
 00522E17    mov         eax,dword ptr [ebp-14]
 00522E1A    mov         eax,dword ptr [eax+7C];TBitmap32.?f7C:TFont
 00522E1D    mov         edx,0FFFFFF
 00522E22    call        TFont.SetColor
 00522E27    mov         eax,dword ptr [ebp+10]
 00522E2A    push        eax
 00522E2B    xor         ecx,ecx
 00522E2D    xor         edx,edx
 00522E2F    mov         eax,dword ptr [ebp-14]
 00522E32    call        0052285C
 00522E37    mov         ecx,dword ptr [ebp+0C]
 00522E3A    mov         eax,dword ptr [ebp-18]
 00522E3D    shr         eax,cl
 00522E3F    push        eax
 00522E40    mov         ecx,dword ptr [ebp+0C]
 00522E43    mov         edx,dword ptr [ebp-1C]
 00522E46    shr         edx,cl
 00522E48    mov         eax,dword ptr [ebp-10]
 00522E4B    pop         ecx
 00522E4C    mov         ebx,dword ptr [eax]
 00522E4E    call        dword ptr [ebx+2C];TBitmap32.sub_0051E43C
 00522E51    mov         eax,dword ptr [ebp+0C]
 00522E54    push        eax
 00522E55    mov         eax,dword ptr [ebp+8]
 00522E58    push        eax
 00522E59    mov         ecx,dword ptr [ebp-14]
 00522E5C    mov         edx,dword ptr [ebp-10]
 00522E5F    mov         eax,dword ptr [ebp-4]
 00522E62    call        00522934
 00522E67    xor         eax,eax
 00522E69    pop         edx
 00522E6A    pop         ecx
 00522E6B    pop         ecx
 00522E6C    mov         dword ptr fs:[eax],edx
 00522E6F    push        522E84
 00522E74    mov         eax,dword ptr [ebp-14]
 00522E77    call        TObject.Free
 00522E7C    ret
>00522E7D    jmp         @HandleFinally
>00522E82    jmp         00522E74
 00522E84    xor         eax,eax
 00522E86    pop         edx
 00522E87    pop         ecx
 00522E88    pop         ecx
 00522E89    mov         dword ptr fs:[eax],edx
 00522E8C    push        522EA1
 00522E91    mov         eax,dword ptr [ebp-24]
 00522E94    call        TCanvas.Unlock
 00522E99    ret
>00522E9A    jmp         @HandleFinally
>00522E9F    jmp         00522E91
 00522EA1    mov         dl,1
 00522EA3    mov         eax,dword ptr [ebp-10]
 00522EA6    call        TBitmap32.SetDrawMode
 00522EAB    mov         edx,dword ptr [ebp-20]
 00522EAE    mov         eax,dword ptr [ebp-10]
 00522EB1    call        TBitmap32.SetMasterAlpha
 00522EB6    mov         eax,dword ptr [ebp-4]
 00522EB9    mov         dl,byte ptr [eax+7A]
 00522EBC    mov         eax,dword ptr [ebp-10]
 00522EBF    call        TBitmap32.SetCombineMode
 00522EC4    mov         eax,dword ptr [ebp-0C]
 00522EC7    push        eax
 00522EC8    mov         ecx,dword ptr [ebp-8]
 00522ECB    mov         edx,dword ptr [ebp-4]
 00522ECE    mov         eax,dword ptr [ebp-10]
 00522ED1    call        0051F5A4
 00522ED6    xor         eax,eax
 00522ED8    pop         edx
 00522ED9    pop         ecx
 00522EDA    pop         ecx
 00522EDB    mov         dword ptr fs:[eax],edx
 00522EDE    push        522EF3
 00522EE3    mov         eax,dword ptr [ebp-10]
 00522EE6    call        TObject.Free
 00522EEB    ret
>00522EEC    jmp         @HandleFinally
>00522EF1    jmp         00522EE3
 00522EF3    mov         eax,dword ptr [ebp-4]
 00522EF6    mov         eax,dword ptr [eax+7C]
 00522EF9    xor         edx,edx
 00522EFB    call        00522AB8
 00522F00    xor         eax,eax
 00522F02    pop         edx
 00522F03    pop         ecx
 00522F04    pop         ecx
 00522F05    mov         dword ptr fs:[eax],edx
 00522F08    push        522F1D
 00522F0D    lea         eax,[ebp-28]
 00522F10    call        @LStrClr
 00522F15    ret
>00522F16    jmp         @HandleFinally
>00522F1B    jmp         00522F0D
 00522F1D    pop         ebx
 00522F1E    mov         esp,ebp
 00522F20    pop         ebp
 00522F21    ret         0C
end;*}

//00522F30
{*procedure sub_00522F30(?:TBitmap32; ?:?);
begin
 00522F30    push        ebp
 00522F31    mov         ebp,esp
 00522F33    add         esp,0FFFFFFF8
 00522F36    mov         dword ptr [ebp-8],edx
 00522F39    mov         dword ptr [ebp-4],eax
 00522F3C    mov         eax,dword ptr [ebp-8]
 00522F3F    xor         edx,edx
 00522F41    mov         dword ptr [eax],edx
 00522F43    mov         eax,dword ptr [ebp-8]
 00522F46    xor         edx,edx
 00522F48    mov         dword ptr [eax+4],edx
 00522F4B    mov         eax,dword ptr [ebp-8]
 00522F4E    mov         edx,dword ptr [ebp-4]
 00522F51    mov         edx,dword ptr [edx+34]
 00522F54    mov         dword ptr [eax+8],edx
 00522F57    mov         eax,dword ptr [ebp-8]
 00522F5A    mov         edx,dword ptr [ebp-4]
 00522F5D    mov         edx,dword ptr [edx+30]
 00522F60    mov         dword ptr [eax+0C],edx
 00522F63    pop         ecx
 00522F64    pop         ecx
 00522F65    pop         ebp
 00522F66    ret
end;*}

//00522F68
{*procedure sub_00522F68(?:TBitmap32; ?:?);
begin
 00522F68    push        ebp
 00522F69    mov         ebp,esp
 00522F6B    add         esp,0FFFFFFE4
 00522F6E    push        esi
 00522F6F    push        edi
 00522F70    mov         dword ptr [ebp-8],edx
 00522F73    mov         dword ptr [ebp-4],eax
 00522F76    lea         edx,[ebp-1C]
 00522F79    mov         eax,dword ptr [ebp-4]
 00522F7C    call        00522F30
 00522F81    lea         ecx,[ebp-1C]
 00522F84    mov         edx,dword ptr [ebp-8]
 00522F87    mov         eax,dword ptr [ebp-4]
 00522F8A    add         eax,48
 00522F8D    call        0051DFD8
 00522F92    lea         edx,[ebp-1C]
 00522F95    mov         eax,dword ptr [ebp-4]
 00522F98    add         eax,48
 00522F9B    call        0051DF48
 00522FA0    mov         eax,dword ptr [ebp-4]
 00522FA3    lea         esi,[ebp-1C]
 00522FA6    lea         edi,[eax+58]
 00522FA9    movs        dword ptr [edi],dword ptr [esi]
 00522FAA    movs        dword ptr [edi],dword ptr [esi]
 00522FAB    movs        dword ptr [edi],dword ptr [esi]
 00522FAC    movs        dword ptr [edi],dword ptr [esi]
 00522FAD    mov         eax,dword ptr [ebp-4]
 00522FB0    add         eax,48
 00522FB3    mov         dword ptr [ebp-0C],eax
 00522FB6    mov         eax,dword ptr [ebp-0C]
 00522FB9    mov         eax,dword ptr [eax+0C]
 00522FBC    shl         eax,8
 00522FBF    push        eax
 00522FC0    lea         eax,[ebp-1C]
 00522FC3    push        eax
 00522FC4    mov         eax,dword ptr [ebp-0C]
 00522FC7    mov         ecx,dword ptr [eax+8]
 00522FCA    shl         ecx,8
 00522FCD    mov         eax,dword ptr [ebp-0C]
 00522FD0    mov         edx,dword ptr [eax+4]
 00522FD3    shl         edx,8
 00522FD6    mov         eax,dword ptr [ebp-0C]
 00522FD9    mov         eax,dword ptr [eax]
 00522FDB    shl         eax,8
 00522FDE    call        0041E714
 00522FE3    mov         eax,dword ptr [ebp-4]
 00522FE6    lea         esi,[ebp-1C]
 00522FE9    lea         edi,[eax+68]
 00522FEC    movs        dword ptr [edi],dword ptr [esi]
 00522FED    movs        dword ptr [edi],dword ptr [esi]
 00522FEE    movs        dword ptr [edi],dword ptr [esi]
 00522FEF    movs        dword ptr [edi],dword ptr [esi]
 00522FF0    lea         edx,[ebp-1C]
 00522FF3    mov         eax,dword ptr [ebp-4]
 00522FF6    call        00522F30
 00522FFB    lea         edx,[ebp-1C]
 00522FFE    mov         eax,dword ptr [ebp-4]
 00523001    add         eax,48
 00523004    call        0051E0C4
 00523009    xor         al,1
 0052300B    mov         edx,dword ptr [ebp-4]
 0052300E    mov         byte ptr [edx+78],al
 00523011    pop         edi
 00523012    pop         esi
 00523013    mov         esp,ebp
 00523015    pop         ebp
 00523016    ret
end;*}

//00523018
procedure sub_00523018(?:TBitmap32);
begin
{*
 00523018    push        ebp
 00523019    mov         ebp,esp
 0052301B    add         esp,0FFFFFFEC
 0052301E    mov         dword ptr [ebp-4],eax
 00523021    lea         edx,[ebp-14]
 00523024    mov         eax,dword ptr [ebp-4]
 00523027    call        00522F30
 0052302C    lea         edx,[ebp-14]
 0052302F    mov         eax,dword ptr [ebp-4]
 00523032    call        00522F68
 00523037    mov         esp,ebp
 00523039    pop         ebp
 0052303A    ret
*}
end;

//0052303C
{*procedure sub_0052303C(?:dword; ?:?; ?:?);
begin
 0052303C    push        ebp
 0052303D    mov         ebp,esp
 0052303F    push        ecx
 00523040    mov         dword ptr [ebp-4],eax
 00523043    mov         eax,dword ptr [ebp-4]
 00523046    mov         byte ptr [eax+0F0],1
 0052304D    mov         eax,dword ptr [ebp-4]
 00523050    mov         edx,dword ptr [ebp-4]
 00523053    mov         ecx,dword ptr [edx+0E0]
 00523059    mov         dword ptr [eax+0E8],ecx
 0052305F    mov         ecx,dword ptr [edx+0E4]
 00523065    mov         dword ptr [eax+0EC],ecx
 0052306B    mov         eax,dword ptr [ebp-4]
 0052306E    mov         edx,dword ptr [ebp+8]
 00523071    mov         dword ptr [eax+0E0],edx
 00523077    mov         edx,dword ptr [ebp+0C]
 0052307A    mov         dword ptr [eax+0E4],edx
 00523080    pop         ecx
 00523081    pop         ebp
 00523082    ret         8
end;*}

//00523088
procedure sub_00523088(?:dword);
begin
{*
 00523088    push        ebp
 00523089    mov         ebp,esp
 0052308B    push        ecx
 0052308C    mov         dword ptr [ebp-4],eax
 0052308F    mov         eax,dword ptr [ebp-4]
 00523092    mov         byte ptr [eax+0F0],0
 00523099    mov         eax,dword ptr [ebp-4]
 0052309C    mov         edx,dword ptr [ebp-4]
 0052309F    mov         ecx,dword ptr [edx+0E8]
 005230A5    mov         dword ptr [eax+0E0],ecx
 005230AB    mov         ecx,dword ptr [edx+0EC]
 005230B1    mov         dword ptr [eax+0E4],ecx
 005230B7    pop         ecx
 005230B8    pop         ebp
 005230B9    ret
*}
end;

//005230BC
procedure sub_005230BC;
begin
{*
 005230BC    push        ebp
 005230BD    mov         ebp,esp
 005230BF    add         esp,0FFFFFFEC
 005230C2    push        ebx
 005230C3    mov         dword ptr [ebp-4],eax
 005230C6    mov         eax,dword ptr [ebp-4]
 005230C9    cmp         dword ptr [eax+4],0;TBitmap32..:dword
>005230CD    je          005230DB
 005230CF    mov         eax,dword ptr [ebp-4]
 005230D2    cmp         byte ptr [eax+0F0],0;TBitmap32.?fF0:byte
>005230D9    je          0052310D
 005230DB    mov         eax,dword ptr [ebp-4]
 005230DE    cmp         word ptr [eax+0E2],0;TBitmap32.?fE2:word
>005230E6    je          0052310D
 005230E8    push        80000000
 005230ED    lea         edx,[ebp-14]
 005230F0    mov         eax,dword ptr [ebp-4]
 005230F3    call        00522F30
 005230F8    lea         ecx,[ebp-14]
 005230FB    mov         ebx,dword ptr [ebp-4]
 005230FE    mov         edx,dword ptr [ebp-4]
 00523101    mov         eax,dword ptr [ebx+0E4];TBitmap32.?fE4:TCustomPaintBox32
 00523107    call        dword ptr [ebx+0E0];TBitmap32.OnAreaChanged
 0052310D    mov         eax,dword ptr [ebp-4]
 00523110    cmp         byte ptr [eax+0F0],0;TBitmap32.?fF0:byte
>00523117    jne         00523121
 00523119    mov         eax,dword ptr [ebp-4]
 0052311C    call        0051E1F4
 00523121    pop         ebx
 00523122    mov         esp,ebp
 00523124    pop         ebp
 00523125    ret
*}
end;

//00523128
{*procedure sub_00523128(?:?; ?:?);
begin
 00523128    push        ebp
 00523129    mov         ebp,esp
 0052312B    add         esp,0FFFFFFF4
 0052312E    push        ebx
 0052312F    mov         dword ptr [ebp-0C],ecx
 00523132    mov         dword ptr [ebp-8],edx
 00523135    mov         dword ptr [ebp-4],eax
 00523138    mov         eax,dword ptr [ebp-4]
 0052313B    cmp         dword ptr [eax+4],0;TBitmap32..:dword
>0052313F    je          0052314D
 00523141    mov         eax,dword ptr [ebp-4]
 00523144    cmp         byte ptr [eax+0F0],0;TBitmap32.?fF0:byte
>0052314B    je          00523173
 0052314D    mov         eax,dword ptr [ebp-4]
 00523150    cmp         word ptr [eax+0E2],0;TBitmap32.?fE2:word
>00523158    je          00523173
 0052315A    mov         eax,dword ptr [ebp-0C]
 0052315D    push        eax
 0052315E    mov         ecx,dword ptr [ebp-8]
 00523161    mov         ebx,dword ptr [ebp-4]
 00523164    mov         edx,dword ptr [ebp-4]
 00523167    mov         eax,dword ptr [ebx+0E4];TBitmap32.?fE4:TCustomPaintBox32
 0052316D    call        dword ptr [ebx+0E0];TBitmap32.OnAreaChanged
 00523173    mov         eax,dword ptr [ebp-4]
 00523176    cmp         byte ptr [eax+0F0],0;TBitmap32.?fF0:byte
>0052317D    jne         00523187
 0052317F    mov         eax,dword ptr [ebp-4]
 00523182    call        0051E1F4
 00523187    pop         ebx
 00523188    mov         esp,ebp
 0052318A    pop         ebp
 0052318B    ret
end;*}

//0052318C
{*function sub_0052318C(?:?; ?:?; ?:?; ?:?):?;
begin
 0052318C    push        ebp
 0052318D    mov         ebp,esp
 0052318F    add         esp,0FFFFFFE8
 00523192    push        ebx
 00523193    mov         dword ptr [ebp-0C],ecx
 00523196    mov         dword ptr [ebp-8],edx
 00523199    mov         dword ptr [ebp-4],eax
 0052319C    cmp         dword ptr [ebp-4],0FF
>005231A3    jbe         005231AC
 005231A5    mov         dword ptr [ebp-4],0FF
 005231AC    cmp         dword ptr [ebp-8],0FF
>005231B3    jbe         005231BC
 005231B5    mov         dword ptr [ebp-8],0FF
 005231BC    mov         eax,dword ptr [ebp-0C]
 005231BF    mov         eax,dword ptr [eax]
 005231C1    mov         dword ptr [ebp-14],eax
 005231C4    add         dword ptr [ebp-0C],4
 005231C8    mov         eax,dword ptr [ebp+8]
 005231CB    mov         eax,dword ptr [eax]
 005231CD    mov         dword ptr [ebp-18],eax
 005231D0    add         dword ptr [ebp+8],4
 005231D4    mov         ebx,dword ptr ds:[56E648];^gvar_005779BC
 005231DA    mov         ebx,dword ptr [ebx]
 005231DC    mov         eax,dword ptr [ebp+8]
 005231DF    mov         edx,dword ptr [eax]
 005231E1    mov         ecx,dword ptr [ebp-4]
 005231E4    mov         eax,dword ptr [ebp-18]
 005231E7    call        ebx
 005231E9    push        eax
 005231EA    mov         ebx,dword ptr ds:[56E648];^gvar_005779BC
 005231F0    mov         ebx,dword ptr [ebx]
 005231F2    mov         ecx,dword ptr [ebp-4]
 005231F5    mov         eax,dword ptr [ebp-0C]
 005231F8    mov         edx,dword ptr [eax]
 005231FA    mov         eax,dword ptr [ebp-14]
 005231FD    call        ebx
 005231FF    mov         ebx,dword ptr ds:[56E648];^gvar_005779BC
 00523205    mov         ebx,dword ptr [ebx]
 00523207    mov         ecx,dword ptr [ebp-8]
 0052320A    pop         edx
 0052320B    call        ebx
 0052320D    mov         dword ptr [ebp-10],eax
 00523210    mov         eax,dword ptr [ebp-10]
 00523213    pop         ebx
 00523214    mov         esp,ebp
 00523216    pop         ebp
 00523217    ret         4
end;*}

//0052321C
{*procedure sub_0052321C(?:?; ?:?; ?:?; ?:?);
begin
 0052321C    push        ebp
 0052321D    mov         ebp,esp
 0052321F    movq        mm1,mmword ptr [ecx]
 00523222    mov         ecx,dword ptr [ebp+8]
 00523225    movq        mm3,mmword ptr [ecx]
 00523228    movq        mm2,mm1
 0052322B    movq        mm4,mm3
 0052322E    psrlq       mm1,20
 00523232    psrlq       mm3,20
 00523236    movd        mm5,eax
 00523239    punpcklbd   mm5,mm5
 0052323C    punpcklbq   mm5,mm5
 0052323F    pxor        mm0,mm0
 00523242    punpcklbw   mm1,mm0
 00523245    punpcklbw   mm2,mm0
 00523248    psubw       mm2,mm1
 0052324B    pmull       mm2,mm5
 0052324E    psllw       mm1,8
 00523252    paddw       mm2,mm1
 00523255    psrlw       mm2,8
 00523259    punpcklbw   mm3,mm0
 0052325C    punpcklbw   mm4,mm0
 0052325F    psubw       mm4,mm3
 00523262    pmull       mm4,mm5
 00523265    psllw       mm3,8
 00523269    paddw       mm4,mm3
 0052326C    psrlw       mm4,8
 00523270    movd        mm5,edx
 00523273    punpcklbd   mm5,mm5
 00523276    punpcklbq   mm5,mm5
 00523279    psubw       mm2,mm4
 0052327C    pmull       mm2,mm5
 0052327F    psllw       mm4,8
 00523283    paddw       mm2,mm4
 00523286    psrlw       mm2,8
 0052328A    packuswb    mm2,mm0
 0052328D    movd        mm0,mm2
 00523290    pop         ebp
 00523291    ret         4
end;*}

//00523294
procedure sub_00523294;
begin
{*
 00523294    push        ebp
 00523295    mov         ebp,esp
 00523297    push        ecx
 00523298    call        00512A54
 0052329D    mov         byte ptr [ebp-1],al
 005232A0    call        00512A7C
 005232A5    mov         byte ptr [ebp-2],al
 005232A8    cmp         byte ptr [ebp-2],0
>005232AC    je          005232BB
 005232AE    mov         dword ptr ds:[597BA8],52321C
 005232B8    pop         ecx
 005232B9    pop         ebp
 005232BA    ret
 005232BB    cmp         byte ptr [ebp-1],0
>005232BF    je          005232CD
 005232C1    mov         dword ptr ds:[597BA8],52321C
>005232CB    jmp         005232D7
 005232CD    mov         dword ptr ds:[597BA8],52318C
 005232D7    pop         ecx
 005232D8    pop         ebp
 005232D9    ret
*}
end;

//005232DC
procedure TBitmap32.SetResampler(Value:TCustomResampler);
begin
{*
 005232DC    push        ebp
 005232DD    mov         ebp,esp
 005232DF    add         esp,0FFFFFFF8
 005232E2    mov         dword ptr [ebp-8],edx
 005232E5    mov         dword ptr [ebp-4],eax
 005232E8    cmp         dword ptr [ebp-8],0
>005232EC    je          0052332A
 005232EE    mov         eax,dword ptr [ebp-4]
 005232F1    mov         eax,dword ptr [eax+0F4];TBitmap32.Resampler:TCustomResampler
 005232F7    cmp         eax,dword ptr [ebp-8]
>005232FA    je          0052332A
 005232FC    mov         eax,dword ptr [ebp-4]
 005232FF    cmp         dword ptr [eax+0F4],0;TBitmap32.Resampler:TCustomResampler
>00523306    je          00523316
 00523308    mov         eax,dword ptr [ebp-4]
 0052330B    mov         eax,dword ptr [eax+0F4];TBitmap32.Resampler:TCustomResampler
 00523311    call        TObject.Free
 00523316    mov         eax,dword ptr [ebp-8]
 00523319    mov         edx,dword ptr [ebp-4]
 0052331C    mov         dword ptr [edx+0F4],eax;TBitmap32.Resampler:TCustomResampler
 00523322    mov         eax,dword ptr [ebp-4]
 00523325    mov         edx,dword ptr [eax]
 00523327    call        dword ptr [edx+0C];TBitmap32.sub_005230BC
 0052332A    pop         ecx
 0052332B    pop         ecx
 0052332C    pop         ebp
 0052332D    ret
*}
end;

//00523330
{*procedure TBitmap32.GetResamplerClassName(?:?);
begin
 00523330    push        ebp
 00523331    mov         ebp,esp
 00523333    add         esp,0FFFFFEF8
 00523339    mov         dword ptr [ebp-8],edx
 0052333C    mov         dword ptr [ebp-4],eax
 0052333F    lea         edx,[ebp-108]
 00523345    mov         eax,dword ptr [ebp-4]
 00523348    mov         eax,dword ptr [eax+0F4];TBitmap32.Resampler:TCustomResampler
 0052334E    mov         eax,dword ptr [eax]
 00523350    call        TObject.ClassName
 00523355    lea         edx,[ebp-108]
 0052335B    mov         eax,dword ptr [ebp-8]
 0052335E    call        @LStrFromString
 00523363    mov         esp,ebp
 00523365    pop         ebp
 00523366    ret
end;*}

//00523368
procedure TBitmap32.SetResamplerClassName(Value:String);
begin
{*
 00523368    push        ebp
 00523369    mov         ebp,esp
 0052336B    add         esp,0FFFFFEF0
 00523371    xor         ecx,ecx
 00523373    mov         dword ptr [ebp-10],ecx
 00523376    mov         dword ptr [ebp-8],edx
 00523379    mov         dword ptr [ebp-4],eax
 0052337C    mov         eax,dword ptr [ebp-8]
 0052337F    call        @LStrAddRef
 00523384    xor         eax,eax
 00523386    push        ebp
 00523387    push        523414
 0052338C    push        dword ptr fs:[eax]
 0052338F    mov         dword ptr fs:[eax],esp
 00523392    cmp         dword ptr [ebp-8],0
>00523396    je          005233F6
 00523398    lea         edx,[ebp-110]
 0052339E    mov         eax,dword ptr [ebp-4]
 005233A1    mov         eax,dword ptr [eax+0F4];TBitmap32.Resampler:TCustomResampler
 005233A7    mov         eax,dword ptr [eax]
 005233A9    call        TObject.ClassName
 005233AE    lea         edx,[ebp-110]
 005233B4    lea         eax,[ebp-10]
 005233B7    call        @LStrFromString
 005233BC    mov         eax,dword ptr [ebp-10]
 005233BF    mov         edx,dword ptr [ebp-8]
 005233C2    call        @LStrCmp
>005233C7    je          005233F6
 005233C9    mov         eax,[0056E450];^gvar_00597A6C:TClassList
 005233CE    cmp         dword ptr [eax],0
>005233D1    je          005233F6
 005233D3    mov         eax,[0056E450];^gvar_00597A6C:TClassList
 005233D8    mov         eax,dword ptr [eax]
 005233DA    mov         edx,dword ptr [ebp-8]
 005233DD    call        005155F8
 005233E2    mov         dword ptr [ebp-0C],eax
 005233E5    cmp         dword ptr [ebp-0C],0
>005233E9    je          005233F6
 005233EB    mov         ecx,dword ptr [ebp-4]
 005233EE    mov         dl,1
 005233F0    mov         eax,dword ptr [ebp-0C]
 005233F3    call        dword ptr [eax+40]
 005233F6    xor         eax,eax
 005233F8    pop         edx
 005233F9    pop         ecx
 005233FA    pop         ecx
 005233FB    mov         dword ptr fs:[eax],edx
 005233FE    push        52341B
 00523403    lea         eax,[ebp-10]
 00523406    call        @LStrClr
 0052340B    lea         eax,[ebp-8]
 0052340E    call        @LStrClr
 00523413    ret
>00523414    jmp         @HandleFinally
>00523419    jmp         00523403
 0052341B    mov         esp,ebp
 0052341D    pop         ebp
 0052341E    ret
*}
end;

//00523420
{*function sub_00523420(?:?; ?:?):?;
begin
 00523420    push        ebp
 00523421    mov         ebp,esp
 00523423    add         esp,0FFFFFFF0
 00523426    push        ebx
 00523427    mov         dword ptr [ebp-0C],ecx
 0052342A    mov         dword ptr [ebp-8],edx
 0052342D    mov         dword ptr [ebp-4],eax
 00523430    mov         ecx,dword ptr [ebp-0C]
 00523433    shl         ecx,10
 00523436    mov         edx,dword ptr [ebp-8]
 00523439    shl         edx,10
 0052343C    mov         eax,dword ptr [ebp-4]
 0052343F    mov         ebx,dword ptr [eax]
 00523441    call        dword ptr [ebx+1C];TCustomSampler.sub_00523450
 00523444    mov         dword ptr [ebp-10],eax
 00523447    mov         eax,dword ptr [ebp-10]
 0052344A    pop         ebx
 0052344B    mov         esp,ebp
 0052344D    pop         ebp
 0052344E    ret
end;*}

//00523450
{*function sub_00523450(?:?; ?:?):?;
begin
 00523450    push        ebp
 00523451    mov         ebp,esp
 00523453    add         esp,0FFFFFFF0
 00523456    mov         dword ptr [ebp-0C],ecx
 00523459    mov         dword ptr [ebp-8],edx
 0052345C    mov         dword ptr [ebp-4],eax
 0052345F    fild        dword ptr [ebp-8]
 00523462    fmul        dword ptr ds:[523494];1.52587890625E-5:Single
 00523468    add         esp,0FFFFFFFC
 0052346B    fstp        dword ptr [esp]
 0052346E    wait
 0052346F    fild        dword ptr [ebp-0C]
 00523472    fmul        dword ptr ds:[523494];1.52587890625E-5:Single
 00523478    add         esp,0FFFFFFFC
 0052347B    fstp        dword ptr [esp]
 0052347E    wait
 0052347F    mov         eax,dword ptr [ebp-4]
 00523482    mov         edx,dword ptr [eax]
 00523484    call        dword ptr [edx+20];TCustomSampler.sub_00523498
 00523487    mov         dword ptr [ebp-10],eax
 0052348A    mov         eax,dword ptr [ebp-10]
 0052348D    mov         esp,ebp
 0052348F    pop         ebp
 00523490    ret
end;*}

//00523498
{*function sub_00523498(?:?; ?:?):?;
begin
 00523498    push        ebp
 00523499    mov         ebp,esp
 0052349B    add         esp,0FFFFFFF8
 0052349E    push        ebx
 0052349F    mov         dword ptr [ebp-4],eax
 005234A2    push        dword ptr [ebp+8]
 005234A5    call        0051DC10
 005234AA    push        eax
 005234AB    push        dword ptr [ebp+0C]
 005234AE    call        0051DC10
 005234B3    mov         edx,eax
 005234B5    mov         eax,dword ptr [ebp-4]
 005234B8    pop         ecx
 005234B9    mov         ebx,dword ptr [eax]
 005234BB    call        dword ptr [ebx+1C];TCustomSampler.sub_00523450
 005234BE    mov         dword ptr [ebp-8],eax
 005234C1    mov         eax,dword ptr [ebp-8]
 005234C4    pop         ebx
 005234C5    pop         ecx
 005234C6    pop         ecx
 005234C7    pop         ebp
 005234C8    ret         8
end;*}

//005234CC
procedure sub_005234CC;
begin
{*
 005234CC    push        ebp
 005234CD    mov         ebp,esp
 005234CF    push        ecx
 005234D0    mov         dword ptr [ebp-4],eax
 005234D3    pop         ecx
 005234D4    pop         ebp
 005234D5    ret
*}
end;

//005234D8
procedure sub_005234D8;
begin
{*
 005234D8    push        ebp
 005234D9    mov         ebp,esp
 005234DB    push        ecx
 005234DC    mov         dword ptr [ebp-4],eax
 005234DF    pop         ecx
 005234E0    pop         ebp
 005234E1    ret
*}
end;

//005234E4
{*function sub_005234E4:?;
begin
 005234E4    push        ebp
 005234E5    mov         ebp,esp
 005234E7    add         esp,0FFFFFFF8
 005234EA    mov         dword ptr [ebp-4],eax
 005234ED    mov         byte ptr [ebp-5],0
 005234F1    mov         al,byte ptr [ebp-5]
 005234F4    pop         ecx
 005234F5    pop         ecx
 005234F6    pop         ebp
 005234F7    ret
end;*}

//005234F8
{*procedure sub_005234F8(?:?);
begin
 005234F8    push        ebp
 005234F9    mov         ebp,esp
 005234FB    add         esp,0FFFFFFF8
 005234FE    mov         dword ptr [ebp-8],edx
 00523501    mov         dword ptr [ebp-4],eax
 00523504    push        7FFFFFFF
 00523509    mov         eax,dword ptr [ebp-8]
 0052350C    push        eax
 0052350D    mov         ecx,7FFFFFFF
 00523512    mov         edx,80000000
 00523517    mov         eax,80000000
 0052351C    call        0041E714
 00523521    pop         ecx
 00523522    pop         ecx
 00523523    pop         ebp
 00523524    ret
end;*}

Initialization
//00523564
{*
 00523564    sub         dword ptr ds:[597BAC],1
>0052356B    jae         005235B7
 0052356D    call        00523294
 00523572    push        3F333333
 00523577    call        0051E190
 0052357C    push        0D
 0052357E    call        gdi32.GetStockObject
 00523583    mov         [00597BB0],eax;gvar_00597BB0:HGDIOBJ
 00523588    mov         dl,1
 0052358A    mov         eax,[0042CF48];TBitmap
 0052358F    call        TBitmap.Create;TBitmap.Create
 00523594    mov         [00597BB4],eax;gvar_00597BB4:TBitmap
 00523599    mov         edx,8
 0052359E    mov         eax,[00597BB4];0x0 gvar_00597BB4:TBitmap
 005235A3    mov         ecx,dword ptr [eax]
 005235A5    call        dword ptr [ecx+40];TBitmap.sub_00435FF8
 005235A8    mov         edx,8
 005235AD    mov         eax,[00597BB4];0x0 gvar_00597BB4:TBitmap
 005235B2    mov         ecx,dword ptr [eax]
 005235B4    call        dword ptr [ecx+34];TBitmap.sub_00435BD8
 005235B7    ret
*}
Finalization
//00523528
{*
 00523528    push        ebp
 00523529    mov         ebp,esp
 0052352B    xor         eax,eax
 0052352D    push        ebp
 0052352E    push        523559
 00523533    push        dword ptr fs:[eax]
 00523536    mov         dword ptr fs:[eax],esp
 00523539    inc         dword ptr ds:[597BAC]
>0052353F    jne         0052354B
 00523541    mov         eax,[00597BB4];0x0 gvar_00597BB4:TBitmap
 00523546    call        TObject.Free
 0052354B    xor         eax,eax
 0052354D    pop         edx
 0052354E    pop         ecx
 0052354F    pop         ecx
 00523550    mov         dword ptr fs:[eax],edx
 00523553    push        523560
 00523558    ret
>00523559    jmp         @HandleFinally
>0052355E    jmp         00523558
 00523560    pop         ebp
 00523561    ret
*}
end.