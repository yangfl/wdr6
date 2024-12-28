//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit GR32_Image;

interface

uses
  SysUtils, Classes, GR32, , GR32_Layers, GR32_Image;

type
  TPaintStageEvent = procedure(Sender:TObject; Buffer:TBitmap32; StageNum:Cardinal) of object;;
  _DynArr_115_2 = array of ?;
//elSize = C;
  TPaintStages = class(TObject)
  public
    f4:.2;//f4
  end;
  TBitmapAlign = (baTopLeft, baCenter, baTile, baCustom);
  TScaleMode = (smNormal, smStretch, smScale, smResize, smOptimal, smOptimalScaled);
  TRepaintMode = (rmFull, rmDirect, rmOptimizer);
  TCustomPaintBox32 = class(TCustomControl)
  public
    f210:TBitmap32;//f210
    f214:dword;//f214
    f218:byte;//f218
    f219:byte;//f219
    f21C:TRectList;//f21C
    f220:byte;//f220
    f224:dword;//f224
    f228:byte;//f228
    //f230:?;//f230
    f232:word;//f232
    f234:dword;//f234
    f238:byte;//f238
    //f240:?;//f240
    f242:word;//f242
    f244:dword;//f244
    //f248:?;//f248
    f24A:word;//f24A
    f24C:dword;//f24C
    destructor Destroy; virtual;//00527078
    procedure vC; virtual;//vC//005272B8
    constructor v2C; virtual;//v2C//00526FB0
    procedure v7C; virtual;//v7C//00527260
    //procedure v84(?:?; ?:?; ?:?; ?:?); virtual;//v84//0052770C
    procedure vC8; virtual;//vC8//00527398
    //procedure vCC(?:?); virtual;//vCC//00527830
    //function vD0:?; virtual;//vD0//00527120
    //function vD4:?; virtual;//vD4//005271A0
    procedure vD8; virtual;//vD8//00527168
    procedure vDC; virtual;//vDC//005271B4
    procedure vE0; virtual;//vE0//005271FC
    //procedure vE4(?:?; ?:?); virtual;//vE4//005270D4
    procedure vE8; virtual;//vE8//00527328
    procedure vEC; virtual;//vEC//00527360
    //procedure vF0(?:?); virtual;//vF0//00527228
    procedure vF4; virtual;//vF4//0052727C
    procedure WMPaint(Message:TWMPaint); message WM_PAINT;//0052779C
    //procedure WMEraseBkgnd(?:?); message WM_ERASEBKGND;//00527754
    //procedure WMGetDlgCode(?:?); message WM_GETDLGCODE;//00527770
    //procedure CMMouseEnter(?:?); message CM_MOUSEENTER;//00526F60
    //procedure CMMouseLeave(?:?); message CM_MOUSELEAVE;//00526F88
    //procedure CMInvalidate(?:?); message CM_INVALIDATE;//00526F14
    procedure sub_0048271C; dynamic;//0052757C
    //procedure sub_00485588(?:?; ?:?; ?:?; ?:?); dynamic;//005272D4
  end;
  TImgMouseEvent = procedure(Sender:TObject; Button:TMouseButton; Shift:TShiftState; X:Integer; Y:Integer; Layer:TCustomLayer) of object;;
  TImgMouseMoveEvent = procedure(Sender:TObject; Shift:TShiftState; X:Integer; Y:Integer; Layer:TCustomLayer) of object;;
  TPaintStageHandler = procedure(Dest:TBitmap32; StageNum:Integer) of object;;
  _DynArr_115_7 = array of ?;
//elSize = 8;
  _DynArr_115_8 = array of ?;
//elSize = 4
//varType equivalent: varInteger;
  TCustomImage32 = class(TCustomPaintBox32)
  public
    f250:TBitmap32;//f250
    f254:byte;//f254
    f258:TLayerCollection;//f258
    f25C:Single;//f25C
    f260:Single;//f260
    f264:TPaintStages;//f264
    f268:.7;//f268
    f26C:.8;//f26C
    f270:Single;//f270
    f274:Single;//f274
    f278:byte;//f278
    f27C:dword;//f27C
    //f280:?;//f280
    f282:word;//f282
    f284:dword;//f284
    //f288:?;//f288
    f28A:word;//f28A
    f28C:dword;//f28C
    //f290:?;//f290
    f292:word;//f292
    f294:dword;//f294
    //f298:?;//f298
    f29A:word;//f29A
    f29C:dword;//f29C
    //f2A0:?;//f2A0
    f2A2:word;//f2A2
    f2A4:dword;//f2A4
    //f2A8:?;//f2A8
    f2AA:word;//f2AA
    f2AC:dword;//f2AC
    //f2B0:?;//f2B0
    f2B2:word;//f2B2
    f2B4:dword;//f2B4
    //f2B8:?;//f2B8
    f2BA:word;//f2BA
    f2BC:dword;//f2BC
    //f2C0:?;//f2C0
    //f2D0:?;//f2D0
    f2E8:byte;//f2E8
    f2F4:byte;//f2F4
    destructor Destroy; virtual;//005280F0
    procedure vC; virtual;//vC//00528F30
    constructor v2C; virtual;//v2C//00527FAC
    //function v34(?:?; ?:?):?; virtual;//v34//00527A74
    procedure v7C; virtual;//v7C//00528ED4
    procedure SetRepaintMode(Value:TRepaintMode); virtual;//vCC//00529820
    //function vD4:?; virtual;//vD4//005297F4
    procedure vDC; virtual;//vDC//0052819C
    procedure vE0; virtual;//vE0//00528544
    procedure vEC; virtual;//vEC//005291F4
    procedure vF8; virtual;//vF8//00527908
    //procedure vFC(?:?); virtual;//vFC//005279E8
    procedure v100; virtual;//v100//00528170
    procedure v104; virtual;//v104//005285B8
    procedure v108; virtual;//v108//00528DF4
    //procedure v10C(?:?; ?:?; ?:?; ?:?; ?:?); virtual;//v10C//00529114
    //procedure v110(?:?; ?:?; ?:?; ?:?); virtual;//v110//00529160
    //procedure v114(?:?; ?:?; ?:?; ?:?; ?:?); virtual;//v114//005291A8
    procedure SetScaleMode(Value:TScaleMode); virtual;//v118//005295E8
    procedure v11C; virtual;//v11C//005296AC
    procedure v120; virtual;//v120//005278F4
    procedure v124; virtual;//v124//00527B28
    procedure v128; virtual;//v128//005285E4
    //procedure v12C(?:?; ?:?); virtual;//v12C//0052867C
    //procedure v130(?:?; ?:?); virtual;//v130//00528844
    //procedure v134(?:?; ?:?); virtual;//v134//005286A8
    //procedure v138(?:?; ?:?); virtual;//v138//0052886C
    //procedure v13C(?:?; ?:?); virtual;//v13C//005288AC
    //procedure v140(?:?; ?:?); virtual;//v140//005288E8
    //procedure v144(?:?; ?:?); virtual;//v144//00528A38
    //procedure v148(?:?); virtual;//v148//00528ABC
    //procedure v14C(?:?); virtual;//v14C//00528B90
    //procedure v150(?:?; ?:?); virtual;//v150//00529234
    //procedure v154(?:?; ?:?); virtual;//v154//00529628
    procedure sub_0048271C; dynamic;//005294FC
    //procedure sub_004859D0(?:?; ?:?; ?:?; ?:?); dynamic;//0052908C
    //procedure sub_004858F4(?:?; ?:?; ?:?); dynamic;//00529018
    //procedure sub_00485588(?:?; ?:?; ?:?; ?:?); dynamic;//00528F50
  end;
  TImage32 = class(TCustomImage32)
    procedure SetBitmap(Value:TBitmap32);//00529518
    procedure SetBitmapAlign(Value:TBitmapAlign);//00529544
    //procedure SetScale(Value:Single; ?:?);//00529574
  end;
    //function sub_00526E00(?:TPaintStages):?;//00526E00
    //function sub_00526E90(?:TPaintStages):?;//00526E90
    //function sub_00526EEC(?:TPaintStages; ?:?):?;//00526EEC
    //procedure CMInvalidate(?:?);//00526F14
    //procedure CMMouseEnter(?:?);//00526F60
    //procedure CMMouseLeave(?:?);//00526F88
    constructor sub_00526FB0;//00526FB0
    destructor Destroy;//00527078
    //procedure sub_005270D4(?:?; ?:?);//005270D4
    //function sub_00527120:?;//00527120
    procedure sub_00527168;//00527168
    //function sub_005271A0:?;//005271A0
    procedure sub_005271B4;//005271B4
    procedure sub_005271FC;//005271FC
    //procedure sub_00527228(?:?);//00527228
    procedure sub_00527260;//00527260
    procedure sub_0052727C;//0052727C
    procedure sub_005272B8;//005272B8
    //procedure sub_00485588(?:?; ?:?; ?:?; ?:?);//005272D4
    procedure sub_00527328;//00527328
    procedure sub_00527360;//00527360
    procedure sub_00527398;//00527398
    procedure sub_00527564(?:TCustomPaintBox32);//00527564
    procedure sub_0048271C;//0052757C
    procedure sub_005275A0(?:TCustomPaintBox32);//005275A0
    //procedure sub_0052770C(?:?; ?:?; ?:?; ?:?);//0052770C
    //procedure WMEraseBkgnd(?:?);//00527754
    //procedure WMGetDlgCode(?:?);//00527770
    procedure WMPaint(Message:TWMPaint);//0052779C
    //procedure sub_005277F4(?:?; ?:?; ?:?);//005277F4
    //procedure sub_00527830(?:?);//00527830
    procedure sub_005278F4;//005278F4
    procedure sub_00527908;//00527908
    //procedure sub_005279E8(?:?);//005279E8
    //procedure sub_00527A04(?:?; ?:?; ?:?);//00527A04
    //function sub_00527A74(?:?; ?:?):?;//00527A74
    procedure sub_00527B28;//00527B28
    //procedure sub_00527B68(?:?; ?:?);//00527B68
    //procedure sub_00527B84(?:?; ?:?);//00527B84
    //procedure sub_00527BC4(?:?; ?:?; ?:?);//00527BC4
    //procedure sub_00527D44(?:?; ?:?; ?:?);//00527D44
    //procedure sub_00527EE4(?:?; ?:?);//00527EE4
    //procedure sub_00527F00(?:?; ?:?);//00527F00
    //procedure sub_00527F1C(?:?; ?:?; ?:?; ?:?);//00527F1C
    //procedure sub_00527F6C(?:?; ?:?; ?:?; ?:?);//00527F6C
    constructor sub_00527FAC;//00527FAC
    destructor Destroy;//005280F0
    procedure sub_00528170;//00528170
    procedure sub_0052819C;//0052819C
    procedure sub_00528544;//00528544
    procedure sub_005285B8;//005285B8
    procedure sub_005285E4;//005285E4
    //procedure sub_0052867C(?:?; ?:?);//0052867C
    //procedure sub_005286A8(?:?; ?:?);//005286A8
    //procedure sub_00528844(?:?; ?:?);//00528844
    //procedure sub_0052886C(?:?; ?:?);//0052886C
    //procedure sub_005288AC(?:?; ?:?);//005288AC
    //procedure sub_005288E8(?:?; ?:?);//005288E8
    //procedure sub_00528A38(?:?; ?:?);//00528A38
    //procedure sub_00528ABC(?:?);//00528ABC
    //procedure sub_00528B90(?:?);//00528B90
    procedure sub_00528DF4;//00528DF4
    procedure sub_00528ED4;//00528ED4
    procedure sub_00528EFC(?:TCustomImage32);//00528EFC
    procedure sub_00528F30;//00528F30
    //procedure sub_00485588(?:?; ?:?; ?:?; ?:?);//00528F50
    //procedure sub_004858F4(?:?; ?:?; ?:?);//00529018
    //procedure sub_004859D0(?:?; ?:?; ?:?; ?:?);//0052908C
    //procedure sub_00529114(?:?; ?:?; ?:?; ?:?; ?:?);//00529114
    //procedure sub_00529160(?:?; ?:?; ?:?; ?:?);//00529160
    //procedure sub_005291A8(?:?; ?:?; ?:?; ?:?; ?:?);//005291A8
    procedure sub_005291F4;//005291F4
    //procedure sub_00529234(?:?; ?:?);//00529234
    procedure sub_0048271C;//005294FC
    procedure SetScaleMode(Value:TScaleMode);//005295E8
    //procedure sub_00529628(?:?; ?:?);//00529628
    procedure sub_005296AC;//005296AC
    //function sub_005297F4:?;//005297F4
    procedure SetRepaintMode(Value:TRepaintMode);//00529820

implementation

//00526E00
{*function sub_00526E00(?:TPaintStages):?;
begin
 00526E00    push        ebp
 00526E01    mov         ebp,esp
 00526E03    add         esp,0FFFFFFF0
 00526E06    mov         dword ptr [ebp-4],eax
 00526E09    mov         eax,dword ptr [ebp-4]
 00526E0C    mov         eax,dword ptr [eax+4]
 00526E0F    call        @DynArrayLength
 00526E14    mov         dword ptr [ebp-0C],eax
 00526E17    mov         eax,dword ptr [ebp-0C]
 00526E1A    inc         eax
 00526E1B    push        eax
 00526E1C    mov         eax,dword ptr [ebp-4]
 00526E1F    add         eax,4
 00526E22    mov         ecx,1
 00526E27    mov         edx,dword ptr ds:[525EE4];_DynArr_115_2
 00526E2D    call        @DynArraySetLength
 00526E32    add         esp,4
 00526E35    mov         eax,dword ptr [ebp-0C]
 00526E38    lea         eax,[eax+eax*2]
 00526E3B    mov         edx,dword ptr [ebp-4]
 00526E3E    mov         edx,dword ptr [edx+4]
 00526E41    lea         eax,[edx+eax*4]
 00526E44    mov         dword ptr [ebp-8],eax
 00526E47    mov         eax,dword ptr [ebp-8]
 00526E4A    mov         dword ptr [ebp-10],eax
 00526E4D    mov         eax,dword ptr [ebp-10]
 00526E50    mov         byte ptr [eax],0
 00526E53    mov         eax,dword ptr [ebp-10]
 00526E56    mov         byte ptr [eax+1],1
 00526E5A    mov         eax,dword ptr [ebp-10]
 00526E5D    xor         edx,edx
 00526E5F    mov         dword ptr [eax+4],edx
 00526E62    mov         eax,dword ptr [ebp-10]
 00526E65    xor         edx,edx
 00526E67    mov         dword ptr [eax+8],edx
 00526E6A    mov         eax,dword ptr [ebp-8]
 00526E6D    mov         esp,ebp
 00526E6F    pop         ebp
 00526E70    ret
end;*}

//00526E90
{*function sub_00526E90(?:TPaintStages):?;
begin
 00526E90    push        ebp
 00526E91    mov         ebp,esp
 00526E93    add         esp,0FFFFFFF8
 00526E96    mov         dword ptr [ebp-4],eax
 00526E99    mov         eax,dword ptr [ebp-4]
 00526E9C    mov         eax,dword ptr [eax+4]
 00526E9F    call        @DynArrayLength
 00526EA4    mov         dword ptr [ebp-8],eax
 00526EA7    mov         eax,dword ptr [ebp-8]
 00526EAA    pop         ecx
 00526EAB    pop         ecx
 00526EAC    pop         ebp
 00526EAD    ret
end;*}

//00526EEC
{*function sub_00526EEC(?:TPaintStages; ?:?):?;
begin
 00526EEC    push        ebp
 00526EED    mov         ebp,esp
 00526EEF    add         esp,0FFFFFFF4
 00526EF2    mov         dword ptr [ebp-8],edx
 00526EF5    mov         dword ptr [ebp-4],eax
 00526EF8    mov         eax,dword ptr [ebp-8]
 00526EFB    lea         eax,[eax+eax*2]
 00526EFE    mov         edx,dword ptr [ebp-4]
 00526F01    mov         edx,dword ptr [edx+4]
 00526F04    lea         eax,[edx+eax*4]
 00526F07    mov         dword ptr [ebp-0C],eax
 00526F0A    mov         eax,dword ptr [ebp-0C]
 00526F0D    mov         esp,ebp
 00526F0F    pop         ebp
 00526F10    ret
end;*}

//00526F14
{*procedure TCustomPaintBox32.CMInvalidate(?:?);
begin
 00526F14    push        ebp
 00526F15    mov         ebp,esp
 00526F17    add         esp,0FFFFFFF8
 00526F1A    mov         dword ptr [ebp-8],edx
 00526F1D    mov         dword ptr [ebp-4],eax
 00526F20    mov         eax,dword ptr [ebp-4]
 00526F23    mov         edx,dword ptr [eax]
 00526F25    call        dword ptr [edx+0D0];TCustomPaintBox32.sub_00527120
 00526F2B    test        al,al
>00526F2D    je          00526F51
 00526F2F    mov         eax,dword ptr [ebp-4]
 00526F32    call        TWinControl.HandleAllocated
 00526F37    test        al,al
>00526F39    je          00526F51
 00526F3B    push        0
 00526F3D    push        0
 00526F3F    push        0F
 00526F41    mov         eax,dword ptr [ebp-4]
 00526F44    call        TWinControl.GetHandle
 00526F49    push        eax
 00526F4A    call        user32.PostMessageA
>00526F4F    jmp         00526F5C
 00526F51    mov         edx,dword ptr [ebp-8]
 00526F54    mov         eax,dword ptr [ebp-4]
 00526F57    call        TWinControl.CMInvalidate
 00526F5C    pop         ecx
 00526F5D    pop         ecx
 00526F5E    pop         ebp
 00526F5F    ret
end;*}

//00526F60
{*procedure TCustomPaintBox32.CMMouseEnter(?:?);
begin
 00526F60    push        ebp
 00526F61    mov         ebp,esp
 00526F63    add         esp,0FFFFFFF8
 00526F66    mov         dword ptr [ebp-8],edx
 00526F69    mov         dword ptr [ebp-4],eax
 00526F6C    mov         edx,dword ptr [ebp-8]
 00526F6F    mov         eax,dword ptr [ebp-4]
 00526F72    call        TControl.CMMouseEnter
 00526F77    mov         eax,dword ptr [ebp-4]
 00526F7A    mov         edx,dword ptr [eax]
 00526F7C    call        dword ptr [edx+0E8];TCustomPaintBox32.sub_00527328
 00526F82    pop         ecx
 00526F83    pop         ecx
 00526F84    pop         ebp
 00526F85    ret
end;*}

//00526F88
{*procedure TCustomPaintBox32.CMMouseLeave(?:?);
begin
 00526F88    push        ebp
 00526F89    mov         ebp,esp
 00526F8B    add         esp,0FFFFFFF8
 00526F8E    mov         dword ptr [ebp-8],edx
 00526F91    mov         dword ptr [ebp-4],eax
 00526F94    mov         eax,dword ptr [ebp-4]
 00526F97    mov         edx,dword ptr [eax]
 00526F99    call        dword ptr [edx+0EC];TCustomPaintBox32.sub_00527360
 00526F9F    mov         edx,dword ptr [ebp-8]
 00526FA2    mov         eax,dword ptr [ebp-4]
 00526FA5    call        TControl.CMMouseLeave
 00526FAA    pop         ecx
 00526FAB    pop         ecx
 00526FAC    pop         ebp
 00526FAD    ret
end;*}

//00526FB0
constructor sub_00526FB0;
begin
{*
 00526FB0    push        ebp
 00526FB1    mov         ebp,esp
 00526FB3    add         esp,0FFFFFFF4
 00526FB6    test        dl,dl
>00526FB8    je          00526FC2
 00526FBA    add         esp,0FFFFFFF0
 00526FBD    call        @ClassCreate
 00526FC2    mov         dword ptr [ebp-0C],ecx
 00526FC5    mov         byte ptr [ebp-5],dl
 00526FC8    mov         dword ptr [ebp-4],eax
 00526FCB    mov         ecx,dword ptr [ebp-0C]
 00526FCE    xor         edx,edx
 00526FD0    mov         eax,dword ptr [ebp-4]
 00526FD3    call        0048E4F0
 00526FD8    mov         dl,1
 00526FDA    mov         eax,[0051D7C4];TBitmap32
 00526FDF    call        TBitmap32.Create;TBitmap32.Create
 00526FE4    mov         edx,dword ptr [ebp-4]
 00526FE7    mov         dword ptr [edx+210],eax;TCustomPaintBox32.?f210:TBitmap32
 00526FED    mov         eax,dword ptr [ebp-4]
 00526FF0    mov         dword ptr [eax+214],28;TCustomPaintBox32.?f214:dword
 00526FFA    mov         eax,dword ptr [ebp-4]
 00526FFD    mov         byte ptr [eax+220],1;TCustomPaintBox32.?f220:byte
 00527004    mov         dl,1
 00527006    mov         eax,[00514C1C];TRectList
 0052700B    call        TObject.Create;TRectList.Create
 00527010    mov         edx,dword ptr [ebp-4]
 00527013    mov         dword ptr [edx+21C],eax;TCustomPaintBox32.?f21C:TRectList
 00527019    mov         eax,dword ptr [ebp-4]
 0052701C    mov         eax,dword ptr [eax+21C];TCustomPaintBox32.?f21C:TRectList
 00527022    push        eax
 00527023    mov         eax,dword ptr [ebp-4]
 00527026    mov         ecx,dword ptr [eax+210];TCustomPaintBox32.?f210:TBitmap32
 0052702C    mov         dl,1
 0052702E    mov         eax,[0056D4B0];^gvar_0052397C
 00527033    call        dword ptr [eax+0C]
 00527036    mov         edx,dword ptr [ebp-4]
 00527039    mov         dword ptr [edx+224],eax;TCustomPaintBox32.?f224:dword
 0052703F    mov         edx,0C0
 00527044    mov         eax,dword ptr [ebp-4]
 00527047    call        TToolButton.SetHeight
 0052704C    mov         edx,0C0
 00527051    mov         eax,dword ptr [ebp-4]
 00527054    call        TSplitter.SetWidth
 00527059    mov         eax,dword ptr [ebp-4]
 0052705C    cmp         byte ptr [ebp-5],0
>00527060    je          00527071
 00527062    call        @AfterConstruction
 00527067    pop         dword ptr fs:[0]
 0052706E    add         esp,0C
 00527071    mov         eax,dword ptr [ebp-4]
 00527074    mov         esp,ebp
 00527076    pop         ebp
 00527077    ret
*}
end;

//00527078
destructor TCustomPaintBox32.Destroy;
begin
{*
 00527078    push        ebp
 00527079    mov         ebp,esp
 0052707B    add         esp,0FFFFFFF8
 0052707E    call        @BeforeDestruction
 00527083    mov         byte ptr [ebp-5],dl
 00527086    mov         dword ptr [ebp-4],eax
 00527089    mov         eax,dword ptr [ebp-4]
 0052708C    mov         eax,dword ptr [eax+224]
 00527092    call        TObject.Free
 00527097    mov         eax,dword ptr [ebp-4]
 0052709A    mov         eax,dword ptr [eax+21C]
 005270A0    call        TObject.Free
 005270A5    mov         eax,dword ptr [ebp-4]
 005270A8    mov         eax,dword ptr [eax+210]
 005270AE    call        TObject.Free
 005270B3    mov         dl,byte ptr [ebp-5]
 005270B6    and         dl,0FC
 005270B9    mov         eax,dword ptr [ebp-4]
 005270BC    call        TCustomControl.Destroy
 005270C1    cmp         byte ptr [ebp-5],0
>005270C5    jle         005270CF
 005270C7    mov         eax,dword ptr [ebp-4]
 005270CA    call        @ClassDestroy
 005270CF    pop         ecx
 005270D0    pop         ecx
 005270D1    pop         ebp
 005270D2    ret
*}
end;

//005270D4
{*procedure sub_005270D4(?:?; ?:?);
begin
 005270D4    push        ebp
 005270D5    mov         ebp,esp
 005270D7    add         esp,0FFFFFFF4
 005270DA    push        ebx
 005270DB    mov         dword ptr [ebp-0C],ecx
 005270DE    mov         dword ptr [ebp-8],edx
 005270E1    mov         dword ptr [ebp-4],eax
 005270E4    mov         eax,dword ptr [ebp-4]
 005270E7    mov         eax,dword ptr [eax+224];TCustomPaintBox32.?f224:dword
 005270ED    mov         edx,dword ptr [eax]
 005270EF    call        dword ptr [edx]
 005270F1    test        al,al
>005270F3    je          0052711B
 005270F5    mov         eax,dword ptr [ebp-4]
 005270F8    mov         eax,dword ptr [eax+210];TCustomPaintBox32.?f210:TBitmap32
 005270FE    mov         ecx,dword ptr [eax+30];TBitmap32.?f30:Integer
 00527101    mov         eax,dword ptr [ebp-4]
 00527104    mov         eax,dword ptr [eax+210];TCustomPaintBox32.?f210:TBitmap32
 0052710A    mov         edx,dword ptr [eax+34];TBitmap32.?f34:Single
 0052710D    mov         eax,dword ptr [ebp-4]
 00527110    mov         eax,dword ptr [eax+224];TCustomPaintBox32.?f224:dword
 00527116    mov         ebx,dword ptr [eax]
 00527118    call        dword ptr [ebx+3C]
 0052711B    pop         ebx
 0052711C    mov         esp,ebp
 0052711E    pop         ebp
 0052711F    ret
end;*}

//00527120
{*function sub_00527120:?;
begin
 00527120    push        ebp
 00527121    mov         ebp,esp
 00527123    add         esp,0FFFFFFF8
 00527126    mov         dword ptr [ebp-4],eax
 00527129    mov         eax,dword ptr [ebp-4]
 0052712C    mov         eax,dword ptr [eax+224];TCustomPaintBox32.?f224:dword
 00527132    mov         edx,dword ptr [eax]
 00527134    call        dword ptr [edx]
 00527136    test        al,al
>00527138    je          00527158
 0052713A    mov         eax,dword ptr [ebp-4]
 0052713D    cmp         byte ptr [eax+220],0;TCustomPaintBox32.?f220:byte
>00527144    jne         00527158
 00527146    mov         eax,dword ptr [ebp-4]
 00527149    mov         eax,dword ptr [eax+224];TCustomPaintBox32.?f224:dword
 0052714F    mov         edx,dword ptr [eax]
 00527151    call        dword ptr [edx+2C]
 00527154    test        al,al
>00527156    jne         0052715C
 00527158    xor         eax,eax
>0052715A    jmp         0052715E
 0052715C    mov         al,1
 0052715E    mov         byte ptr [ebp-5],al
 00527161    mov         al,byte ptr [ebp-5]
 00527164    pop         ecx
 00527165    pop         ecx
 00527166    pop         ebp
 00527167    ret
end;*}

//00527168
procedure sub_00527168;
begin
{*
 00527168    push        ebp
 00527169    mov         ebp,esp
 0052716B    push        ecx
 0052716C    mov         dword ptr [ebp-4],eax
 0052716F    mov         eax,dword ptr [ebp-4]
 00527172    mov         eax,dword ptr [eax+224];TCustomPaintBox32.?f224:dword
 00527178    mov         edx,dword ptr [eax]
 0052717A    call        dword ptr [edx]
 0052717C    test        al,al
>0052717E    je          0052719A
 00527180    mov         eax,dword ptr [ebp-4]
 00527183    cmp         byte ptr [eax+220],0;TCustomPaintBox32.?f220:byte
>0052718A    jne         0052719A
 0052718C    mov         eax,dword ptr [ebp-4]
 0052718F    mov         eax,dword ptr [eax+224];TCustomPaintBox32.?f224:dword
 00527195    mov         edx,dword ptr [eax]
 00527197    call        dword ptr [edx+30]
 0052719A    pop         ecx
 0052719B    pop         ebp
 0052719C    ret
*}
end;

//005271A0
{*function sub_005271A0:?;
begin
 005271A0    push        ebp
 005271A1    mov         ebp,esp
 005271A3    add         esp,0FFFFFFF8
 005271A6    mov         dword ptr [ebp-4],eax
 005271A9    mov         byte ptr [ebp-5],1
 005271AD    mov         al,byte ptr [ebp-5]
 005271B0    pop         ecx
 005271B1    pop         ecx
 005271B2    pop         ebp
 005271B3    ret
end;*}

//005271B4
procedure sub_005271B4;
begin
{*
 005271B4    push        ebp
 005271B5    mov         ebp,esp
 005271B7    push        ecx
 005271B8    mov         dword ptr [ebp-4],eax
 005271BB    mov         eax,dword ptr [ebp-4]
 005271BE    cmp         byte ptr [eax+220],0;TCustomPaintBox32.?f220:byte
>005271C5    je          005271E1
 005271C7    mov         eax,dword ptr [ebp-4]
 005271CA    mov         byte ptr [eax+220],0;TCustomPaintBox32.?f220:byte
 005271D1    mov         eax,dword ptr [ebp-4]
 005271D4    mov         eax,dword ptr [eax+21C];TCustomPaintBox32.?f21C:TRectList
 005271DA    mov         edx,dword ptr [eax]
 005271DC    call        dword ptr [edx+4];TRectList.sub_0051540C
>005271DF    jmp         005271EC
 005271E1    mov         eax,dword ptr [ebp-4]
 005271E4    mov         edx,dword ptr [eax]
 005271E6    call        dword ptr [edx+0D8];TCustomPaintBox32.sub_00527168
 005271EC    mov         eax,dword ptr [ebp-4]
 005271EF    mov         byte ptr [eax+218],1;TCustomPaintBox32.?f218:byte
 005271F6    pop         ecx
 005271F7    pop         ebp
 005271F8    ret
*}
end;

//005271FC
procedure sub_005271FC;
begin
{*
 005271FC    push        ebp
 005271FD    mov         ebp,esp
 005271FF    push        ecx
 00527200    push        ebx
 00527201    mov         dword ptr [ebp-4],eax
 00527204    mov         eax,dword ptr [ebp-4]
 00527207    cmp         word ptr [eax+232],0;TCustomPaintBox32.?f232:word
>0052720F    je          00527223
 00527211    mov         ebx,dword ptr [ebp-4]
 00527214    mov         edx,dword ptr [ebp-4]
 00527217    mov         eax,dword ptr [ebx+234];TCustomPaintBox32.?f234:dword
 0052721D    call        dword ptr [ebx+230]
 00527223    pop         ebx
 00527224    pop         ecx
 00527225    pop         ebp
 00527226    ret
*}
end;

//00527228
{*procedure sub_00527228(?:?);
begin
 00527228    push        ebp
 00527229    mov         ebp,esp
 0052722B    add         esp,0FFFFFFF8
 0052722E    mov         dword ptr [ebp-8],edx
 00527231    mov         dword ptr [ebp-4],eax
 00527234    mov         eax,dword ptr [ebp-8]
 00527237    xor         edx,edx
 00527239    mov         dword ptr [eax],edx
 0052723B    mov         eax,dword ptr [ebp-8]
 0052723E    xor         edx,edx
 00527240    mov         dword ptr [eax+4],edx
 00527243    mov         eax,dword ptr [ebp-8]
 00527246    mov         edx,dword ptr [ebp-4]
 00527249    mov         edx,dword ptr [edx+48];TCustomPaintBox32.Width:Integer
 0052724C    mov         dword ptr [eax+8],edx
 0052724F    mov         eax,dword ptr [ebp-8]
 00527252    mov         edx,dword ptr [ebp-4]
 00527255    mov         edx,dword ptr [edx+4C];TCustomPaintBox32.Height:Integer
 00527258    mov         dword ptr [eax+0C],edx
 0052725B    pop         ecx
 0052725C    pop         ecx
 0052725D    pop         ebp
 0052725E    ret
end;*}

//00527260
procedure sub_00527260;
begin
{*
 00527260    push        ebp
 00527261    mov         ebp,esp
 00527263    push        ecx
 00527264    mov         dword ptr [ebp-4],eax
 00527267    mov         eax,dword ptr [ebp-4]
 0052726A    mov         byte ptr [eax+218],0;TCustomPaintBox32.?f218:byte
 00527271    mov         eax,dword ptr [ebp-4]
 00527274    call        0048BE68
 00527279    pop         ecx
 0052727A    pop         ebp
 0052727B    ret
*}
end;

//0052727C
procedure sub_0052727C;
begin
{*
 0052727C    push        ebp
 0052727D    mov         ebp,esp
 0052727F    push        ecx
 00527280    mov         dword ptr [ebp-4],eax
 00527283    mov         eax,dword ptr [ebp-4]
 00527286    mov         eax,dword ptr [eax+224];TCustomPaintBox32.?f224:dword
 0052728C    mov         edx,dword ptr [eax]
 0052728E    call        dword ptr [edx]
 00527290    test        al,al
>00527292    je          005272A2
 00527294    mov         eax,dword ptr [ebp-4]
 00527297    mov         eax,dword ptr [eax+224];TCustomPaintBox32.?f224:dword
 0052729D    mov         edx,dword ptr [eax]
 0052729F    call        dword ptr [edx+28]
 005272A2    mov         eax,dword ptr [ebp-4]
 005272A5    mov         byte ptr [eax+220],1;TCustomPaintBox32.?f220:byte
 005272AC    mov         eax,dword ptr [ebp-4]
 005272AF    mov         edx,dword ptr [eax]
 005272B1    call        dword ptr [edx+7C];TCustomPaintBox32.sub_00527260
 005272B4    pop         ecx
 005272B5    pop         ebp
 005272B6    ret
*}
end;

//005272B8
procedure sub_005272B8;
begin
{*
 005272B8    push        ebp
 005272B9    mov         ebp,esp
 005272BB    push        ecx
 005272BC    mov         dword ptr [ebp-4],eax
 005272BF    mov         eax,dword ptr [ebp-4]
 005272C2    mov         byte ptr [eax+218],0;TCustomPaintBox32.?f218:byte
 005272C9    mov         eax,dword ptr [ebp-4]
 005272CC    call        004864B8
 005272D1    pop         ecx
 005272D2    pop         ebp
 005272D3    ret
*}
end;

//005272D4
{*procedure TCustomPaintBox32.sub_00485588(?:?; ?:?; ?:?; ?:?);
begin
 005272D4    push        ebp
 005272D5    mov         ebp,esp
 005272D7    add         esp,0FFFFFFF8
 005272DA    push        esi
 005272DB    mov         byte ptr [ebp-6],cl
 005272DE    mov         byte ptr [ebp-5],dl
 005272E1    mov         dword ptr [ebp-4],eax
 005272E4    mov         eax,dword ptr [ebp-4]
 005272E7    test        byte ptr [eax+228],2;TCustomPaintBox32.?f228:byte
>005272EE    je          0052730B
 005272F0    mov         eax,dword ptr [ebp-4]
 005272F3    mov         si,0FFB8
 005272F7    call        @CallDynaInst;TWinControl.sub_0048BFC8
 005272FC    test        al,al
>005272FE    je          0052730B
 00527300    mov         eax,dword ptr [ebp-4]
 00527303    mov         edx,dword ptr [eax]
 00527305    call        dword ptr [edx+0C4];TCustomPaintBox32.sub_0048C028
 0052730B    mov         eax,dword ptr [ebp+0C]
 0052730E    push        eax
 0052730F    mov         eax,dword ptr [ebp+8]
 00527312    push        eax
 00527313    mov         cl,byte ptr [ebp-6]
 00527316    mov         dl,byte ptr [ebp-5]
 00527319    mov         eax,dword ptr [ebp-4]
 0052731C    call        TControl.sub_00485588
 00527321    pop         esi
 00527322    pop         ecx
 00527323    pop         ecx
 00527324    pop         ebp
 00527325    ret         8
end;*}

//00527328
procedure sub_00527328;
begin
{*
 00527328    push        ebp
 00527329    mov         ebp,esp
 0052732B    push        ecx
 0052732C    push        ebx
 0052732D    mov         dword ptr [ebp-4],eax
 00527330    mov         eax,dword ptr [ebp-4]
 00527333    mov         byte ptr [eax+238],1;TCustomPaintBox32.?f238:byte
 0052733A    mov         eax,dword ptr [ebp-4]
 0052733D    cmp         word ptr [eax+242],0;TCustomPaintBox32.?f242:word
>00527345    je          00527359
 00527347    mov         ebx,dword ptr [ebp-4]
 0052734A    mov         edx,dword ptr [ebp-4]
 0052734D    mov         eax,dword ptr [ebx+244];TCustomPaintBox32.?f244:dword
 00527353    call        dword ptr [ebx+240]
 00527359    pop         ebx
 0052735A    pop         ecx
 0052735B    pop         ebp
 0052735C    ret
*}
end;

//00527360
procedure sub_00527360;
begin
{*
 00527360    push        ebp
 00527361    mov         ebp,esp
 00527363    push        ecx
 00527364    push        ebx
 00527365    mov         dword ptr [ebp-4],eax
 00527368    mov         eax,dword ptr [ebp-4]
 0052736B    mov         byte ptr [eax+238],0;TCustomPaintBox32.?f238:byte
 00527372    mov         eax,dword ptr [ebp-4]
 00527375    cmp         word ptr [eax+24A],0;TCustomPaintBox32.?f24A:word
>0052737D    je          00527391
 0052737F    mov         ebx,dword ptr [ebp-4]
 00527382    mov         edx,dword ptr [ebp-4]
 00527385    mov         eax,dword ptr [ebx+24C];TCustomPaintBox32.?f24C:dword
 0052738B    call        dword ptr [ebx+248]
 00527391    pop         ebx
 00527392    pop         ecx
 00527393    pop         ebp
 00527394    ret
*}
end;

//00527398
procedure sub_00527398;
begin
{*
 00527398    push        ebp
 00527399    mov         ebp,esp
 0052739B    add         esp,0FFFFFFDC
 0052739E    mov         dword ptr [ebp-4],eax
 005273A1    mov         eax,dword ptr [ebp-4]
 005273A4    mov         eax,dword ptr [eax+224];TCustomPaintBox32.?f224:dword
 005273AA    mov         edx,dword ptr [eax]
 005273AC    call        dword ptr [edx]
 005273AE    test        al,al
>005273B0    je          005273C0
 005273B2    mov         eax,dword ptr [ebp-4]
 005273B5    mov         eax,dword ptr [eax+224];TCustomPaintBox32.?f224:dword
 005273BB    mov         edx,dword ptr [eax]
 005273BD    call        dword ptr [edx+18]
 005273C0    mov         eax,dword ptr [ebp-4]
 005273C3    cmp         byte ptr [eax+218],0;TCustomPaintBox32.?f218:byte
>005273CA    jne         005273D7
 005273CC    mov         eax,dword ptr [ebp-4]
 005273CF    mov         edx,dword ptr [eax]
 005273D1    call        dword ptr [edx+0DC];TCustomPaintBox32.sub_005271B4
 005273D7    mov         eax,dword ptr [ebp-4]
 005273DA    mov         eax,dword ptr [eax+210];TCustomPaintBox32.?f210:TBitmap32
 005273E0    call        0051E340
 005273E5    mov         eax,dword ptr [ebp-4]
 005273E8    mov         eax,dword ptr [eax+208];TCustomPaintBox32..................................................
 005273EE    mov         dword ptr [ebp-0C],eax
 005273F1    xor         eax,eax
 005273F3    push        ebp
 005273F4    push        52751D
 005273F9    push        dword ptr fs:[eax]
 005273FC    mov         dword ptr fs:[eax],esp
 005273FF    mov         eax,dword ptr [ebp-4]
 00527402    mov         eax,dword ptr [eax+21C];TCustomPaintBox32.?f21C:TRectList
 00527408    cmp         dword ptr [eax+8],0;TRectList.?f8:dword
>0052740C    jle         005274AC
 00527412    mov         eax,dword ptr [ebp-4]
 00527415    mov         eax,dword ptr [eax+21C];TCustomPaintBox32.?f21C:TRectList
 0052741B    mov         eax,dword ptr [eax+8];TRectList.?f8:dword
 0052741E    dec         eax
 0052741F    test        eax,eax
>00527421    jl          00527501
 00527427    inc         eax
 00527428    mov         dword ptr [ebp-10],eax
 0052742B    mov         dword ptr [ebp-8],0
 00527432    mov         eax,dword ptr [ebp-4]
 00527435    mov         eax,dword ptr [eax+21C];TCustomPaintBox32.?f21C:TRectList
 0052743B    mov         edx,dword ptr [ebp-8]
 0052743E    call        00515480
 00527443    mov         dword ptr [ebp-14],eax
 00527446    push        0CC0020
 0052744B    mov         eax,dword ptr [ebp-14]
 0052744E    mov         eax,dword ptr [eax+4]
 00527451    push        eax
 00527452    mov         eax,dword ptr [ebp-14]
 00527455    mov         eax,dword ptr [eax]
 00527457    push        eax
 00527458    mov         eax,dword ptr [ebp-4]
 0052745B    mov         eax,dword ptr [eax+210];TCustomPaintBox32.?f210:TBitmap32
 00527461    mov         eax,dword ptr [eax+84];TBitmap32.?f84:HDC
 00527467    push        eax
 00527468    mov         eax,dword ptr [ebp-14]
 0052746B    mov         eax,dword ptr [eax+0C]
 0052746E    mov         edx,dword ptr [ebp-14]
 00527471    sub         eax,dword ptr [edx+4]
 00527474    push        eax
 00527475    mov         eax,dword ptr [ebp-14]
 00527478    mov         eax,dword ptr [eax+8]
 0052747B    mov         edx,dword ptr [ebp-14]
 0052747E    sub         eax,dword ptr [edx]
 00527480    push        eax
 00527481    mov         eax,dword ptr [ebp-14]
 00527484    mov         eax,dword ptr [eax+4]
 00527487    push        eax
 00527488    mov         eax,dword ptr [ebp-14]
 0052748B    mov         eax,dword ptr [eax]
 0052748D    push        eax
 0052748E    mov         eax,dword ptr [ebp-4]
 00527491    mov         eax,dword ptr [eax+208];TCustomPaintBox32..................................................
 00527497    call        0042F6A0
 0052749C    push        eax
 0052749D    call        gdi32.BitBlt
 005274A2    inc         dword ptr [ebp-8]
 005274A5    dec         dword ptr [ebp-10]
>005274A8    jne         00527432
>005274AA    jmp         00527501
 005274AC    lea         edx,[ebp-24]
 005274AF    mov         eax,dword ptr [ebp-4]
 005274B2    mov         ecx,dword ptr [eax]
 005274B4    call        dword ptr [ecx+0F0];TCustomPaintBox32.sub_00527228
 005274BA    push        0CC0020
 005274BF    mov         eax,dword ptr [ebp-20]
 005274C2    push        eax
 005274C3    mov         eax,dword ptr [ebp-24]
 005274C6    push        eax
 005274C7    mov         eax,dword ptr [ebp-4]
 005274CA    mov         eax,dword ptr [eax+210];TCustomPaintBox32.?f210:TBitmap32
 005274D0    mov         eax,dword ptr [eax+84];TBitmap32.?f84:HDC
 005274D6    push        eax
 005274D7    mov         eax,dword ptr [ebp-18]
 005274DA    sub         eax,dword ptr [ebp-20]
 005274DD    push        eax
 005274DE    mov         eax,dword ptr [ebp-1C]
 005274E1    sub         eax,dword ptr [ebp-24]
 005274E4    push        eax
 005274E5    mov         eax,dword ptr [ebp-20]
 005274E8    push        eax
 005274E9    mov         eax,dword ptr [ebp-24]
 005274EC    push        eax
 005274ED    mov         eax,dword ptr [ebp-4]
 005274F0    mov         eax,dword ptr [eax+208];TCustomPaintBox32..................................................
 005274F6    call        0042F6A0
 005274FB    push        eax
 005274FC    call        gdi32.BitBlt
 00527501    xor         eax,eax
 00527503    pop         edx
 00527504    pop         ecx
 00527505    pop         ecx
 00527506    mov         dword ptr fs:[eax],edx
 00527509    push        527524
 0052750E    mov         eax,dword ptr [ebp-4]
 00527511    mov         eax,dword ptr [eax+210];TCustomPaintBox32.?f210:TBitmap32
 00527517    call        0051E364
 0052751C    ret
>0052751D    jmp         @HandleFinally
>00527522    jmp         0052750E
 00527524    mov         eax,dword ptr [ebp-4]
 00527527    mov         edx,dword ptr [eax]
 00527529    call        dword ptr [edx+0E0];TCustomPaintBox32.sub_005271FC
 0052752F    mov         eax,dword ptr [ebp-4]
 00527532    mov         eax,dword ptr [eax+224];TCustomPaintBox32.?f224:dword
 00527538    mov         edx,dword ptr [eax]
 0052753A    call        dword ptr [edx]
 0052753C    test        al,al
>0052753E    je          0052754E
 00527540    mov         eax,dword ptr [ebp-4]
 00527543    mov         eax,dword ptr [eax+224];TCustomPaintBox32.?f224:dword
 00527549    mov         edx,dword ptr [eax]
 0052754B    call        dword ptr [edx+1C]
 0052754E    mov         eax,dword ptr [ebp-4]
 00527551    call        00527564
 00527556    mov         eax,dword ptr [ebp-4]
 00527559    mov         byte ptr [eax+220],0;TCustomPaintBox32.?f220:byte
 00527560    mov         esp,ebp
 00527562    pop         ebp
 00527563    ret
*}
end;

//00527564
procedure sub_00527564(?:TCustomPaintBox32);
begin
{*
 00527564    push        ebp
 00527565    mov         ebp,esp
 00527567    push        ecx
 00527568    mov         dword ptr [ebp-4],eax
 0052756B    mov         eax,dword ptr [ebp-4]
 0052756E    mov         eax,dword ptr [eax+21C];TCustomPaintBox32.?f21C:TRectList
 00527574    mov         edx,dword ptr [eax]
 00527576    call        dword ptr [edx+4];TRectList.sub_0051540C
 00527579    pop         ecx
 0052757A    pop         ebp
 0052757B    ret
*}
end;

//0052757C
procedure TCustomPaintBox32.sub_0048271C;
begin
{*
 0052757C    push        ebp
 0052757D    mov         ebp,esp
 0052757F    push        ecx
 00527580    mov         dword ptr [ebp-4],eax
 00527583    mov         eax,dword ptr [ebp-4]
 00527586    call        005275A0
 0052758B    mov         eax,dword ptr [ebp-4]
 0052758E    mov         byte ptr [eax+218],0;TCustomPaintBox32.?f218:byte
 00527595    mov         eax,dword ptr [ebp-4]
 00527598    call        TControl.sub_0048271C
 0052759D    pop         ecx
 0052759E    pop         ebp
 0052759F    ret
*}
end;

//005275A0
procedure sub_005275A0(?:TCustomPaintBox32);
begin
{*
 005275A0    push        ebp
 005275A1    mov         ebp,esp
 005275A3    add         esp,0FFFFFFD4
 005275A6    push        ebx
 005275A7    mov         dword ptr [ebp-4],eax
 005275AA    lea         edx,[ebp-2C]
 005275AD    mov         eax,dword ptr [ebp-4]
 005275B0    mov         ecx,dword ptr [eax]
 005275B2    call        dword ptr [ecx+0F0];TCustomPaintBox32.sub_00527228
 005275B8    mov         eax,dword ptr [ebp-24]
 005275BB    sub         eax,dword ptr [ebp-2C]
 005275BE    mov         dword ptr [ebp-8],eax
 005275C1    mov         eax,dword ptr [ebp-20]
 005275C4    sub         eax,dword ptr [ebp-28]
 005275C7    mov         dword ptr [ebp-0C],eax
 005275CA    cmp         dword ptr [ebp-8],0
>005275CE    jge         005275D5
 005275D0    xor         eax,eax
 005275D2    mov         dword ptr [ebp-8],eax
 005275D5    cmp         dword ptr [ebp-0C],0
>005275D9    jge         005275E0
 005275DB    xor         eax,eax
 005275DD    mov         dword ptr [ebp-0C],eax
 005275E0    mov         eax,dword ptr [ebp-4]
 005275E3    mov         eax,dword ptr [eax+210];TCustomPaintBox32.?f210:TBitmap32
 005275E9    mov         eax,dword ptr [eax+34];TBitmap32.?f34:Single
 005275EC    mov         dword ptr [ebp-10],eax
 005275EF    mov         eax,dword ptr [ebp-8]
 005275F2    cmp         eax,dword ptr [ebp-10]
>005275F5    jle         00527608
 005275F7    mov         eax,dword ptr [ebp-8]
 005275FA    mov         edx,dword ptr [ebp-4]
 005275FD    add         eax,dword ptr [edx+214];TCustomPaintBox32.?f214:dword
 00527603    mov         dword ptr [ebp-10],eax
>00527606    jmp         0052761F
 00527608    mov         eax,dword ptr [ebp-10]
 0052760B    mov         edx,dword ptr [ebp-4]
 0052760E    sub         eax,dword ptr [edx+214]
 00527614    cmp         eax,dword ptr [ebp-8]
>00527617    jle         0052761F
 00527619    mov         eax,dword ptr [ebp-8]
 0052761C    mov         dword ptr [ebp-10],eax
 0052761F    cmp         dword ptr [ebp-10],1
>00527623    jge         0052762C
 00527625    mov         dword ptr [ebp-10],1
 0052762C    mov         eax,dword ptr [ebp-4]
 0052762F    mov         eax,dword ptr [eax+210];TCustomPaintBox32.?f210:TBitmap32
 00527635    mov         eax,dword ptr [eax+30];TBitmap32.?f30:Integer
 00527638    mov         dword ptr [ebp-14],eax
 0052763B    mov         eax,dword ptr [ebp-0C]
 0052763E    cmp         eax,dword ptr [ebp-14]
>00527641    jle         00527654
 00527643    mov         eax,dword ptr [ebp-0C]
 00527646    mov         edx,dword ptr [ebp-4]
 00527649    add         eax,dword ptr [edx+214];TCustomPaintBox32.?f214:dword
 0052764F    mov         dword ptr [ebp-14],eax
>00527652    jmp         0052766B
 00527654    mov         eax,dword ptr [ebp-14]
 00527657    mov         edx,dword ptr [ebp-4]
 0052765A    sub         eax,dword ptr [edx+214]
 00527660    cmp         eax,dword ptr [ebp-0C]
>00527663    jle         0052766B
 00527665    mov         eax,dword ptr [ebp-0C]
 00527668    mov         dword ptr [ebp-14],eax
 0052766B    cmp         dword ptr [ebp-14],1
>0052766F    jge         00527678
 00527671    mov         dword ptr [ebp-14],1
 00527678    mov         eax,dword ptr [ebp-4]
 0052767B    mov         eax,dword ptr [eax+210];TCustomPaintBox32.?f210:TBitmap32
 00527681    mov         eax,dword ptr [eax+34];TBitmap32.?f34:Single
 00527684    cmp         eax,dword ptr [ebp-10]
>00527687    jne         0052769A
 00527689    mov         eax,dword ptr [ebp-4]
 0052768C    mov         eax,dword ptr [eax+210];TCustomPaintBox32.?f210:TBitmap32
 00527692    mov         eax,dword ptr [eax+30];TBitmap32.?f30:Integer
 00527695    cmp         eax,dword ptr [ebp-14]
>00527698    je          00527704
 0052769A    mov         eax,dword ptr [ebp-4]
 0052769D    mov         eax,dword ptr [eax+210];TCustomPaintBox32.?f210:TBitmap32
 005276A3    call        0051E340
 005276A8    mov         eax,dword ptr [ebp-4]
 005276AB    mov         eax,dword ptr [eax+210];TCustomPaintBox32.?f210:TBitmap32
 005276B1    mov         eax,dword ptr [eax+34];TBitmap32.?f34:Single
 005276B4    mov         dword ptr [ebp-18],eax
 005276B7    mov         eax,dword ptr [ebp-4]
 005276BA    mov         eax,dword ptr [eax+210];TCustomPaintBox32.?f210:TBitmap32
 005276C0    mov         eax,dword ptr [eax+30];TBitmap32.?f30:Integer
 005276C3    mov         dword ptr [ebp-1C],eax
 005276C6    mov         ecx,dword ptr [ebp-14]
 005276C9    mov         edx,dword ptr [ebp-10]
 005276CC    mov         eax,dword ptr [ebp-4]
 005276CF    mov         eax,dword ptr [eax+210];TCustomPaintBox32.?f210:TBitmap32
 005276D5    mov         ebx,dword ptr [eax]
 005276D7    call        dword ptr [ebx+2C];TBitmap32.sub_0051E43C
 005276DA    mov         eax,dword ptr [ebp-4]
 005276DD    mov         eax,dword ptr [eax+210];TCustomPaintBox32.?f210:TBitmap32
 005276E3    call        0051E364
 005276E8    mov         ecx,dword ptr [ebp-1C]
 005276EB    mov         edx,dword ptr [ebp-18]
 005276EE    mov         eax,dword ptr [ebp-4]
 005276F1    mov         ebx,dword ptr [eax]
 005276F3    call        dword ptr [ebx+0E4];TCustomPaintBox32.sub_005270D4
 005276F9    mov         eax,dword ptr [ebp-4]
 005276FC    mov         edx,dword ptr [eax]
 005276FE    call        dword ptr [edx+0F4];TCustomPaintBox32.sub_0052727C
 00527704    pop         ebx
 00527705    mov         esp,ebp
 00527707    pop         ebp
 00527708    ret
*}
end;

//0052770C
{*procedure sub_0052770C(?:?; ?:?; ?:?; ?:?);
begin
 0052770C    push        ebp
 0052770D    mov         ebp,esp
 0052770F    add         esp,0FFFFFFF4
 00527712    mov         dword ptr [ebp-0C],ecx
 00527715    mov         dword ptr [ebp-8],edx
 00527718    mov         dword ptr [ebp-4],eax
 0052771B    mov         eax,dword ptr [ebp+0C]
 0052771E    push        eax
 0052771F    mov         eax,dword ptr [ebp+8]
 00527722    push        eax
 00527723    mov         ecx,dword ptr [ebp-0C]
 00527726    mov         edx,dword ptr [ebp-8]
 00527729    mov         eax,dword ptr [ebp-4]
 0052772C    call        0048B89C
 00527731    mov         eax,dword ptr [ebp-4]
 00527734    test        byte ptr [eax+1C],10;TCustomPaintBox32.FComponentState:TComponentState
>00527738    je          00527742
 0052773A    mov         eax,dword ptr [ebp-4]
 0052773D    call        005275A0
 00527742    mov         eax,dword ptr [ebp-4]
 00527745    mov         byte ptr [eax+218],0;TCustomPaintBox32.?f218:byte
 0052774C    mov         esp,ebp
 0052774E    pop         ebp
 0052774F    ret         8
end;*}

//00527754
{*procedure TCustomPaintBox32.WMEraseBkgnd(?:?);
begin
 00527754    push        ebp
 00527755    mov         ebp,esp
 00527757    add         esp,0FFFFFFF8
 0052775A    mov         dword ptr [ebp-8],edx
 0052775D    mov         dword ptr [ebp-4],eax
 00527760    mov         eax,dword ptr [ebp-8]
 00527763    mov         dword ptr [eax+0C],1
 0052776A    pop         ecx
 0052776B    pop         ecx
 0052776C    pop         ebp
 0052776D    ret
end;*}

//00527770
{*procedure TCustomPaintBox32.WMGetDlgCode(?:?);
begin
 00527770    push        ebp
 00527771    mov         ebp,esp
 00527773    add         esp,0FFFFFFF8
 00527776    mov         dword ptr [ebp-8],edx
 00527779    mov         dword ptr [ebp-4],eax
 0052777C    mov         eax,dword ptr [ebp-4]
 0052777F    test        byte ptr [eax+228],1;TCustomPaintBox32.?f228:byte
>00527786    je          00527791
 00527788    mov         eax,dword ptr [ebp-8]
 0052778B    or          dword ptr [eax+0C],1
>0052778F    jmp         00527798
 00527791    mov         eax,dword ptr [ebp-8]
 00527794    and         dword ptr [eax+0C],0FFFFFFFE
 00527798    pop         ecx
 00527799    pop         ecx
 0052779A    pop         ebp
 0052779B    ret
end;*}

//0052779C
procedure TCustomPaintBox32.WMPaint(Message:TWMPaint);
begin
{*
 0052779C    push        ebp
 0052779D    mov         ebp,esp
 0052779F    add         esp,0FFFFFFF8
 005277A2    mov         dword ptr [ebp-8],edx
 005277A5    mov         dword ptr [ebp-4],eax
 005277A8    mov         eax,dword ptr [ebp-4]
 005277AB    mov         edx,dword ptr [eax]
 005277AD    call        dword ptr [edx+0D0];TCustomPaintBox32.sub_00527120
 005277B3    test        al,al
>005277B5    je          005277E5
 005277B7    mov         eax,dword ptr [ebp-4]
 005277BA    mov         edx,dword ptr [eax]
 005277BC    call        dword ptr [edx+0D4];TCustomPaintBox32.sub_005271A0
 005277C2    test        al,al
>005277C4    je          005277D3
 005277C6    mov         eax,dword ptr [ebp-4]
 005277C9    mov         edx,dword ptr [eax]
 005277CB    call        dword ptr [edx+0C8];TCustomPaintBox32.sub_00527398
>005277D1    jmp         005277E5
 005277D3    push        0
 005277D5    push        0
 005277D7    mov         eax,dword ptr [ebp-4]
 005277DA    call        TWinControl.GetHandle
 005277DF    push        eax
 005277E0    call        user32.InvalidateRect
 005277E5    mov         edx,dword ptr [ebp-8]
 005277E8    mov         eax,dword ptr [ebp-4]
 005277EB    call        TCustomControl.WMPaint
 005277F0    pop         ecx
 005277F1    pop         ecx
 005277F2    pop         ebp
 005277F3    ret
*}
end;

//005277F4
{*procedure sub_005277F4(?:?; ?:?; ?:?);
begin
 005277F4    push        ebp
 005277F5    mov         ebp,esp
 005277F7    add         esp,0FFFFFFF4
 005277FA    mov         dword ptr [ebp-8],ecx
 005277FD    mov         dword ptr [ebp-0C],edx
 00527800    mov         dword ptr [ebp-4],eax
 00527803    mov         edx,dword ptr [ebp-8]
 00527806    mov         eax,dword ptr [ebp-4]
 00527809    mov         eax,dword ptr [eax+21C]
 0052780F    call        005153BC
 00527814    mov         eax,dword ptr [ebp-4]
 00527817    test        byte ptr [eax+55],1
>0052781B    jne         00527828
 0052781D    mov         eax,dword ptr [ebp-4]
 00527820    mov         edx,dword ptr [eax]
 00527822    call        dword ptr [edx+80]
 00527828    mov         esp,ebp
 0052782A    pop         ebp
 0052782B    ret         4
end;*}

//00527830
{*procedure sub_00527830(?:?);
begin
 00527830    push        ebp
 00527831    mov         ebp,esp
 00527833    add         esp,0FFFFFFF8
 00527836    mov         byte ptr [ebp-5],dl
 00527839    mov         dword ptr [ebp-4],eax
 0052783C    mov         eax,dword ptr [ebp-4]
 0052783F    cmp         dword ptr [eax+224],0;TCustomPaintBox32.?f224:dword
>00527846    je          005278ED
 0052784C    cmp         byte ptr [ebp-5],2
>00527850    jne         00527889
 00527852    mov         eax,dword ptr [ebp-4]
 00527855    mov         edx,dword ptr ds:[5263CC];TCustomImage32
 0052785B    call        @IsClass
 00527860    test        al,al
>00527862    jne         00527889
 00527864    mov         eax,dword ptr [ebp-4]
 00527867    mov         eax,dword ptr [eax+210];TCustomPaintBox32.?f210:TBitmap32
 0052786D    mov         edx,dword ptr [ebp-4]
 00527870    mov         edx,dword ptr [edx+224];TCustomPaintBox32.?f224:dword
 00527876    mov         dword ptr [eax+0E4],edx;TBitmap32.?fE4:TCustomPaintBox32
 0052787C    mov         edx,dword ptr [edx]
 0052787E    mov         edx,dword ptr [edx+34]
 00527881    mov         dword ptr [eax+0E0],edx;TBitmap32.OnAreaChanged:TAreaChangedEvent
>00527887    jmp         005278C4
 00527889    cmp         byte ptr [ebp-5],1
>0052788D    jne         005278AD
 0052788F    mov         eax,dword ptr [ebp-4]
 00527892    mov         eax,dword ptr [eax+210];TCustomPaintBox32.?f210:TBitmap32
 00527898    mov         edx,dword ptr [ebp-4]
 0052789B    mov         dword ptr [eax+0E4],edx;TBitmap32.?fE4:TCustomPaintBox32
 005278A1    mov         dword ptr [eax+0E0],5277F4;TBitmap32.OnAreaChanged:TAreaChangedEvent sub_005277F4
>005278AB    jmp         005278C4
 005278AD    mov         eax,dword ptr [ebp-4]
 005278B0    mov         eax,dword ptr [eax+210];TCustomPaintBox32.?f210:TBitmap32
 005278B6    xor         edx,edx
 005278B8    mov         dword ptr [eax+0E0],edx;TBitmap32.OnAreaChanged:TAreaChangedEvent
 005278BE    mov         dword ptr [eax+0E4],edx;TBitmap32.?fE4:TCustomPaintBox32
 005278C4    cmp         byte ptr [ebp-5],2
 005278C8    sete        dl
 005278CB    mov         eax,dword ptr [ebp-4]
 005278CE    mov         eax,dword ptr [eax+224];TCustomPaintBox32.?f224:dword
 005278D4    mov         ecx,dword ptr [eax]
 005278D6    call        dword ptr [ecx+4]
 005278D9    mov         al,byte ptr [ebp-5]
 005278DC    mov         edx,dword ptr [ebp-4]
 005278DF    mov         byte ptr [edx+219],al;TCustomPaintBox32.?f219:byte
 005278E5    mov         eax,dword ptr [ebp-4]
 005278E8    mov         edx,dword ptr [eax]
 005278EA    call        dword ptr [edx+7C];TCustomPaintBox32.sub_00527260
 005278ED    pop         ecx
 005278EE    pop         ecx
 005278EF    pop         ebp
 005278F0    ret
end;*}

//005278F4
procedure sub_005278F4;
begin
{*
 005278F4    push        ebp
 005278F5    mov         ebp,esp
 005278F7    push        ecx
 005278F8    mov         dword ptr [ebp-4],eax
 005278FB    mov         eax,dword ptr [ebp-4]
 005278FE    inc         dword ptr [eax+27C];TCustomImage32.?f27C:dword
 00527904    pop         ecx
 00527905    pop         ebp
 00527906    ret
*}
end;

//00527908
procedure sub_00527908;
begin
{*
 00527908    push        ebp
 00527909    mov         ebp,esp
 0052790B    add         esp,0FFFFFFF4
 0052790E    push        ebx
 0052790F    mov         dword ptr [ebp-4],eax
 00527912    mov         eax,dword ptr [ebp-4]
 00527915    cmp         byte ptr [eax+5C],0;TCustomImage32.FAutoSize:Boolean
>00527919    je          005279A5
 0052791F    mov         eax,dword ptr [ebp-4]
 00527922    mov         eax,dword ptr [eax+250];TCustomImage32.?f250:TBitmap32
 00527928    mov         eax,dword ptr [eax+34]
 0052792B    mov         dword ptr [ebp-8],eax
 0052792E    mov         eax,dword ptr [ebp-4]
 00527931    mov         eax,dword ptr [eax+250];TCustomImage32.?f250:TBitmap32
 00527937    mov         eax,dword ptr [eax+30]
 0052793A    mov         dword ptr [ebp-0C],eax
 0052793D    mov         eax,dword ptr [ebp-4]
 00527940    cmp         byte ptr [eax+278],2;TCustomImage32.?f278:byte
>00527947    jne         00527971
 00527949    fild        dword ptr [ebp-8]
 0052794C    mov         eax,dword ptr [ebp-4]
 0052794F    fmul        dword ptr [eax+270];TCustomImage32.?f270:Single
 00527955    call        @ROUND
 0052795A    mov         dword ptr [ebp-8],eax
 0052795D    fild        dword ptr [ebp-0C]
 00527960    mov         eax,dword ptr [ebp-4]
 00527963    fmul        dword ptr [eax+270];TCustomImage32.?f270:Single
 00527969    call        @ROUND
 0052796E    mov         dword ptr [ebp-0C],eax
 00527971    mov         eax,dword ptr [ebp-4]
 00527974    cmp         byte ptr [eax+5C],0;TCustomImage32.FAutoSize:Boolean
>00527978    je          005279A5
 0052797A    cmp         dword ptr [ebp-8],0
>0052797E    jle         005279A5
 00527980    cmp         dword ptr [ebp-0C],0
>00527984    jle         005279A5
 00527986    mov         eax,dword ptr [ebp-8]
 00527989    push        eax
 0052798A    mov         eax,dword ptr [ebp-0C]
 0052798D    push        eax
 0052798E    mov         eax,dword ptr [ebp-4]
 00527991    mov         ecx,dword ptr [eax+44];TCustomImage32.Top:Integer
 00527994    mov         eax,dword ptr [ebp-4]
 00527997    mov         edx,dword ptr [eax+40];TCustomImage32.Left:Integer
 0052799A    mov         eax,dword ptr [ebp-4]
 0052799D    mov         ebx,dword ptr [eax]
 0052799F    call        dword ptr [ebx+84];TCustomImage32.sub_0052770C
 005279A5    mov         eax,dword ptr [ebp-4]
 005279A8    cmp         dword ptr [eax+27C],0;TCustomImage32.?f27C:dword
>005279AF    je          005279D0
 005279B1    mov         eax,dword ptr [ebp-4]
 005279B4    cmp         word ptr [eax+282],0;TCustomImage32.?f282:word
>005279BC    je          005279D0
 005279BE    mov         ebx,dword ptr [ebp-4]
 005279C1    mov         edx,dword ptr [ebp-4]
 005279C4    mov         eax,dword ptr [ebx+284];TCustomImage32.?f284:dword
 005279CA    call        dword ptr [ebx+280]
 005279D0    mov         eax,dword ptr [ebp-4]
 005279D3    call        00528EFC
 005279D8    mov         eax,dword ptr [ebp-4]
 005279DB    mov         edx,dword ptr [eax]
 005279DD    call        dword ptr [edx+0F4];TCustomImage32.sub_0052727C
 005279E3    pop         ebx
 005279E4    mov         esp,ebp
 005279E6    pop         ebp
 005279E7    ret
*}
end;

//005279E8
{*procedure sub_005279E8(?:?);
begin
 005279E8    push        ebp
 005279E9    mov         ebp,esp
 005279EB    add         esp,0FFFFFFF8
 005279EE    mov         dword ptr [ebp-8],edx
 005279F1    mov         dword ptr [ebp-4],eax
 005279F4    mov         eax,dword ptr [ebp-4]
 005279F7    mov         edx,dword ptr [eax]
 005279F9    call        dword ptr [edx+124];TCustomImage32.sub_00527B28
 005279FF    pop         ecx
 00527A00    pop         ecx
 00527A01    pop         ebp
 00527A02    ret
end;*}

//00527A04
{*procedure sub_00527A04(?:?; ?:?; ?:?);
begin
 00527A04    push        ebp
 00527A05    mov         ebp,esp
 00527A07    add         esp,0FFFFFFF0
 00527A0A    mov         dword ptr [ebp-0C],ecx
 00527A0D    mov         dword ptr [ebp-8],edx
 00527A10    mov         dword ptr [ebp-4],eax
 00527A13    mov         eax,dword ptr [ebp-4]
 00527A16    mov         edx,dword ptr [eax]
 00527A18    call        dword ptr [edx+11C]
 00527A1E    mov         eax,dword ptr [ebp-4]
 00527A21    add         eax,2D0
 00527A26    mov         dword ptr [ebp-10],eax
 00527A29    mov         eax,dword ptr [ebp-8]
 00527A2C    mov         eax,dword ptr [eax]
 00527A2E    mov         edx,dword ptr [ebp-10]
 00527A31    imul        dword ptr [edx]
 00527A33    test        eax,eax
>00527A35    jns         00527A3C
 00527A37    add         eax,0FFFF
 00527A3C    sar         eax,10
 00527A3F    mov         edx,dword ptr [ebp-10]
 00527A42    add         eax,dword ptr [edx+8]
 00527A45    mov         edx,dword ptr [ebp-0C]
 00527A48    mov         dword ptr [edx],eax
 00527A4A    mov         eax,dword ptr [ebp-8]
 00527A4D    mov         eax,dword ptr [eax+4]
 00527A50    mov         edx,dword ptr [ebp-10]
 00527A53    imul        dword ptr [edx+4]
 00527A56    test        eax,eax
>00527A58    jns         00527A5F
 00527A5A    add         eax,0FFFF
 00527A5F    sar         eax,10
 00527A62    mov         edx,dword ptr [ebp-10]
 00527A65    add         eax,dword ptr [edx+0C]
 00527A68    mov         edx,dword ptr [ebp-0C]
 00527A6B    mov         dword ptr [edx+4],eax
 00527A6E    mov         esp,ebp
 00527A70    pop         ebp
 00527A71    ret
end;*}

//00527A74
{*function sub_00527A74(?:?; ?:?):?;
begin
 00527A74    push        ebp
 00527A75    mov         ebp,esp
 00527A77    add         esp,0FFFFFFE8
 00527A7A    mov         dword ptr [ebp-0C],ecx
 00527A7D    mov         dword ptr [ebp-8],edx
 00527A80    mov         dword ptr [ebp-4],eax
 00527A83    mov         eax,dword ptr [ebp-4]
 00527A86    call        00528EFC
 00527A8B    mov         byte ptr [ebp-0D],1
 00527A8F    mov         eax,dword ptr [ebp-4]
 00527A92    mov         eax,dword ptr [eax+250];TCustomImage32.?f250:TBitmap32
 00527A98    mov         eax,dword ptr [eax+34]
 00527A9B    mov         dword ptr [ebp-14],eax
 00527A9E    mov         eax,dword ptr [ebp-4]
 00527AA1    mov         eax,dword ptr [eax+250];TCustomImage32.?f250:TBitmap32
 00527AA7    mov         eax,dword ptr [eax+30]
 00527AAA    mov         dword ptr [ebp-18],eax
 00527AAD    mov         eax,dword ptr [ebp-4]
 00527AB0    cmp         byte ptr [eax+278],2;TCustomImage32.?f278:byte
>00527AB7    jne         00527AE1
 00527AB9    fild        dword ptr [ebp-14]
 00527ABC    mov         eax,dword ptr [ebp-4]
 00527ABF    fmul        dword ptr [eax+270];TCustomImage32.?f270:Single
 00527AC5    call        @ROUND
 00527ACA    mov         dword ptr [ebp-14],eax
 00527ACD    fild        dword ptr [ebp-18]
 00527AD0    mov         eax,dword ptr [ebp-4]
 00527AD3    fmul        dword ptr [eax+270];TCustomImage32.?f270:Single
 00527AD9    call        @ROUND
 00527ADE    mov         dword ptr [ebp-18],eax
 00527AE1    mov         eax,dword ptr [ebp-4]
 00527AE4    test        byte ptr [eax+1C],10;TCustomImage32.FComponentState:TComponentState
>00527AE8    je          00527AF6
 00527AEA    cmp         dword ptr [ebp-14],0
>00527AEE    jle         00527B20
 00527AF0    cmp         dword ptr [ebp-18],0
>00527AF4    jle         00527B20
 00527AF6    mov         eax,dword ptr [ebp-4]
 00527AF9    mov         al,byte ptr [eax+5B];TCustomImage32.FAlign:TAlign
 00527AFC    test        al,al
>00527AFE    je          00527B06
 00527B00    add         al,0FD
 00527B02    sub         al,2
>00527B04    jae         00527B0E
 00527B06    mov         eax,dword ptr [ebp-8]
 00527B09    mov         edx,dword ptr [ebp-14]
 00527B0C    mov         dword ptr [eax],edx
 00527B0E    mov         eax,dword ptr [ebp-4]
 00527B11    mov         al,byte ptr [eax+5B];TCustomImage32.FAlign:TAlign
 00527B14    sub         al,3
>00527B16    jae         00527B20
 00527B18    mov         eax,dword ptr [ebp-0C]
 00527B1B    mov         edx,dword ptr [ebp-18]
 00527B1E    mov         dword ptr [eax],edx
 00527B20    mov         al,byte ptr [ebp-0D]
 00527B23    mov         esp,ebp
 00527B25    pop         ebp
 00527B26    ret
end;*}

//00527B28
procedure sub_00527B28;
begin
{*
 00527B28    push        ebp
 00527B29    mov         ebp,esp
 00527B2B    push        ecx
 00527B2C    push        ebx
 00527B2D    mov         dword ptr [ebp-4],eax
 00527B30    mov         eax,dword ptr [ebp-4]
 00527B33    cmp         dword ptr [eax+27C],0;TCustomImage32.?f27C:dword
>00527B3A    jne         00527B63
 00527B3C    mov         eax,dword ptr [ebp-4]
 00527B3F    mov         edx,dword ptr [eax]
 00527B41    call        dword ptr [edx+7C];TCustomImage32.sub_00528ED4
 00527B44    mov         eax,dword ptr [ebp-4]
 00527B47    cmp         word ptr [eax+28A],0;TCustomImage32.?f28A:word
>00527B4F    je          00527B63
 00527B51    mov         ebx,dword ptr [ebp-4]
 00527B54    mov         edx,dword ptr [ebp-4]
 00527B57    mov         eax,dword ptr [ebx+28C];TCustomImage32.?f28C:dword
 00527B5D    call        dword ptr [ebx+288]
 00527B63    pop         ebx
 00527B64    pop         ecx
 00527B65    pop         ebp
 00527B66    ret
*}
end;

//00527B68
{*procedure sub_00527B68(?:?; ?:?);
begin
 00527B68    push        ebp
 00527B69    mov         ebp,esp
 00527B6B    add         esp,0FFFFFFF8
 00527B6E    mov         dword ptr [ebp-8],edx
 00527B71    mov         dword ptr [ebp-4],eax
 00527B74    mov         eax,dword ptr [ebp-4]
 00527B77    mov         edx,dword ptr [eax]
 00527B79    call        dword ptr [edx+0F8]
 00527B7F    pop         ecx
 00527B80    pop         ecx
 00527B81    pop         ebp
 00527B82    ret
end;*}

//00527B84
{*procedure sub_00527B84(?:?; ?:?);
begin
 00527B84    push        ebp
 00527B85    mov         ebp,esp
 00527B87    add         esp,0FFFFFFE8
 00527B8A    mov         dword ptr [ebp-8],edx
 00527B8D    mov         dword ptr [ebp-4],eax
 00527B90    mov         eax,dword ptr [ebp-4]
 00527B93    mov         eax,dword ptr [eax+224]
 00527B99    mov         edx,dword ptr [eax]
 00527B9B    call        dword ptr [edx+28]
 00527B9E    lea         edx,[ebp-18]
 00527BA1    mov         eax,dword ptr [ebp-4]
 00527BA4    mov         eax,dword ptr [eax+250]
 00527BAA    call        00522F30
 00527BAF    lea         edx,[ebp-18]
 00527BB2    mov         eax,dword ptr [ebp-4]
 00527BB5    mov         ecx,dword ptr [eax]
 00527BB7    call        dword ptr [ecx+0FC]
 00527BBD    mov         esp,ebp
 00527BBF    pop         ebp
 00527BC0    ret
end;*}

//00527BC4
{*procedure sub_00527BC4(?:?; ?:?; ?:?);
begin
 00527BC4    push        ebp
 00527BC5    mov         ebp,esp
 00527BC7    add         esp,0FFFFFFAC
 00527BCA    push        ebx
 00527BCB    push        esi
 00527BCC    push        edi
 00527BCD    mov         dword ptr [ebp-0C],ecx
 00527BD0    mov         dword ptr [ebp-8],edx
 00527BD3    mov         dword ptr [ebp-4],eax
 00527BD6    mov         eax,dword ptr [ebp-8]
 00527BD9    mov         edx,dword ptr [ebp-4]
 00527BDC    cmp         eax,dword ptr [edx+250]
>00527BE2    jne         00527D2B
 00527BE8    mov         eax,dword ptr [ebp-0C]
 00527BEB    mov         esi,eax
 00527BED    lea         edi,[ebp-3C]
 00527BF0    movs        dword ptr [edi],dword ptr [esi]
 00527BF1    movs        dword ptr [edi],dword ptr [esi]
 00527BF2    movs        dword ptr [edi],dword ptr [esi]
 00527BF3    movs        dword ptr [edi],dword ptr [esi]
 00527BF4    mov         eax,dword ptr [ebp-4]
 00527BF7    mov         eax,dword ptr [eax+250]
 00527BFD    mov         eax,dword ptr [eax+0F4]
 00527C03    mov         edx,dword ptr [eax]
 00527C05    call        dword ptr [edx+34]
 00527C08    call        @TRUNC
 00527C0D    inc         eax
 00527C0E    mov         dword ptr [ebp-10],eax
 00527C11    lea         eax,[ebp-3C]
 00527C14    mov         ecx,dword ptr [ebp-10]
 00527C17    mov         edx,dword ptr [ebp-10]
 00527C1A    call        00523694
 00527C1F    lea         ecx,[ebp-54]
 00527C22    lea         edx,[ebp-3C]
 00527C25    mov         eax,dword ptr [ebp-4]
 00527C28    call        00527A04
 00527C2D    mov         eax,dword ptr [ebp-54]
 00527C30    mov         dword ptr [ebp-3C],eax
 00527C33    mov         eax,dword ptr [ebp-50]
 00527C36    mov         dword ptr [ebp-38],eax
 00527C39    lea         ecx,[ebp-54]
 00527C3C    lea         edx,[ebp-34]
 00527C3F    mov         eax,dword ptr [ebp-4]
 00527C42    call        00527A04
 00527C47    mov         eax,dword ptr [ebp-54]
 00527C4A    mov         dword ptr [ebp-34],eax
 00527C4D    mov         eax,dword ptr [ebp-50]
 00527C50    mov         dword ptr [ebp-30],eax
 00527C53    mov         eax,dword ptr [ebp-4]
 00527C56    cmp         byte ptr [eax+254],2
>00527C5D    je          00527C7D
 00527C5F    push        80000000
 00527C64    lea         ecx,[ebp-3C]
 00527C67    mov         edx,dword ptr [ebp-4]
 00527C6A    mov         eax,dword ptr [ebp-4]
 00527C6D    mov         eax,dword ptr [eax+224]
 00527C73    mov         ebx,dword ptr [eax]
 00527C75    call        dword ptr [ebx+34]
>00527C78    jmp         00527D2B
 00527C7D    mov         eax,dword ptr [ebp-4]
 00527C80    add         eax,2C0
 00527C85    mov         dword ptr [ebp-24],eax
 00527C88    mov         eax,dword ptr [ebp-4]
 00527C8B    mov         eax,dword ptr [eax+210]
 00527C91    mov         eax,dword ptr [eax+34]
 00527C94    mov         edx,dword ptr [ebp-24]
 00527C97    mov         ecx,dword ptr [edx+8]
 00527C9A    cdq
 00527C9B    idiv        eax,ecx
 00527C9D    mov         dword ptr [ebp-14],eax
 00527CA0    mov         eax,dword ptr [ebp-4]
 00527CA3    mov         eax,dword ptr [eax+210]
 00527CA9    mov         eax,dword ptr [eax+30]
 00527CAC    mov         edx,dword ptr [ebp-24]
 00527CAF    mov         ecx,dword ptr [edx+0C]
 00527CB2    cdq
 00527CB3    idiv        eax,ecx
 00527CB5    mov         dword ptr [ebp-18],eax
 00527CB8    mov         eax,dword ptr [ebp-18]
 00527CBB    test        eax,eax
>00527CBD    jl          00527D2B
 00527CBF    inc         eax
 00527CC0    mov         dword ptr [ebp-28],eax
 00527CC3    mov         dword ptr [ebp-20],0
 00527CCA    mov         eax,dword ptr [ebp-14]
 00527CCD    test        eax,eax
>00527CCF    jl          00527D23
 00527CD1    inc         eax
 00527CD2    mov         dword ptr [ebp-2C],eax
 00527CD5    mov         dword ptr [ebp-1C],0
 00527CDC    lea         esi,[ebp-3C]
 00527CDF    lea         edi,[ebp-4C]
 00527CE2    movs        dword ptr [edi],dword ptr [esi]
 00527CE3    movs        dword ptr [edi],dword ptr [esi]
 00527CE4    movs        dword ptr [edi],dword ptr [esi]
 00527CE5    movs        dword ptr [edi],dword ptr [esi]
 00527CE6    mov         eax,dword ptr [ebp-24]
 00527CE9    mov         ecx,dword ptr [eax+0C]
 00527CEC    imul        ecx,dword ptr [ebp-20]
 00527CF0    mov         eax,dword ptr [ebp-24]
 00527CF3    mov         edx,dword ptr [eax+8]
 00527CF6    imul        edx,dword ptr [ebp-1C]
 00527CFA    lea         eax,[ebp-4C]
 00527CFD    call        0051E124
 00527D02    push        80000000
 00527D07    lea         ecx,[ebp-4C]
 00527D0A    mov         edx,dword ptr [ebp-4]
 00527D0D    mov         eax,dword ptr [ebp-4]
 00527D10    mov         eax,dword ptr [eax+224]
 00527D16    mov         ebx,dword ptr [eax]
 00527D18    call        dword ptr [ebx+34]
 00527D1B    inc         dword ptr [ebp-1C]
 00527D1E    dec         dword ptr [ebp-2C]
>00527D21    jne         00527CDC
 00527D23    inc         dword ptr [ebp-20]
 00527D26    dec         dword ptr [ebp-28]
>00527D29    jne         00527CCA
 00527D2B    mov         edx,dword ptr [ebp-0C]
 00527D2E    mov         eax,dword ptr [ebp-4]
 00527D31    mov         ecx,dword ptr [eax]
 00527D33    call        dword ptr [ecx+0FC]
 00527D39    pop         edi
 00527D3A    pop         esi
 00527D3B    pop         ebx
 00527D3C    mov         esp,ebp
 00527D3E    pop         ebp
 00527D3F    ret         4
end;*}

//00527D44
{*procedure sub_00527D44(?:?; ?:?; ?:?);
begin
 00527D44    push        ebp
 00527D45    mov         ebp,esp
 00527D47    add         esp,0FFFFFFAC
 00527D4A    push        ebx
 00527D4B    push        esi
 00527D4C    push        edi
 00527D4D    mov         dword ptr [ebp-0C],ecx
 00527D50    mov         dword ptr [ebp-8],edx
 00527D53    mov         dword ptr [ebp-4],eax
 00527D56    mov         eax,dword ptr [ebp-8]
 00527D59    mov         edx,dword ptr [ebp-4]
 00527D5C    cmp         eax,dword ptr [edx+250]
>00527D62    jne         00527E9B
 00527D68    mov         eax,dword ptr [ebp-0C]
 00527D6B    mov         esi,eax
 00527D6D    lea         edi,[ebp-3C]
 00527D70    movs        dword ptr [edi],dword ptr [esi]
 00527D71    movs        dword ptr [edi],dword ptr [esi]
 00527D72    movs        dword ptr [edi],dword ptr [esi]
 00527D73    movs        dword ptr [edi],dword ptr [esi]
 00527D74    mov         eax,dword ptr [ebp-4]
 00527D77    mov         eax,dword ptr [eax+250]
 00527D7D    mov         eax,dword ptr [eax+0F4]
 00527D83    mov         edx,dword ptr [eax]
 00527D85    call        dword ptr [edx+34]
 00527D88    call        @TRUNC
 00527D8D    inc         eax
 00527D8E    mov         dword ptr [ebp-10],eax
 00527D91    lea         eax,[ebp-3C]
 00527D94    mov         ecx,dword ptr [ebp-10]
 00527D97    mov         edx,dword ptr [ebp-10]
 00527D9A    call        00523694
 00527D9F    lea         ecx,[ebp-54]
 00527DA2    lea         edx,[ebp-3C]
 00527DA5    mov         eax,dword ptr [ebp-4]
 00527DA8    call        00527A04
 00527DAD    mov         eax,dword ptr [ebp-54]
 00527DB0    mov         dword ptr [ebp-3C],eax
 00527DB3    mov         eax,dword ptr [ebp-50]
 00527DB6    mov         dword ptr [ebp-38],eax
 00527DB9    lea         ecx,[ebp-54]
 00527DBC    lea         edx,[ebp-34]
 00527DBF    mov         eax,dword ptr [ebp-4]
 00527DC2    call        00527A04
 00527DC7    mov         eax,dword ptr [ebp-54]
 00527DCA    mov         dword ptr [ebp-34],eax
 00527DCD    mov         eax,dword ptr [ebp-50]
 00527DD0    mov         dword ptr [ebp-30],eax
 00527DD3    mov         eax,dword ptr [ebp-4]
 00527DD6    cmp         byte ptr [eax+254],2
>00527DDD    je          00527DF5
 00527DDF    lea         edx,[ebp-3C]
 00527DE2    mov         eax,dword ptr [ebp-4]
 00527DE5    mov         eax,dword ptr [eax+21C]
 00527DEB    call        005153BC
>00527DF0    jmp         00527E9B
 00527DF5    mov         eax,dword ptr [ebp-4]
 00527DF8    add         eax,2C0
 00527DFD    mov         dword ptr [ebp-24],eax
 00527E00    mov         eax,dword ptr [ebp-4]
 00527E03    mov         eax,dword ptr [eax+210]
 00527E09    mov         eax,dword ptr [eax+34]
 00527E0C    mov         edx,dword ptr [ebp-24]
 00527E0F    mov         ecx,dword ptr [edx+8]
 00527E12    cdq
 00527E13    idiv        eax,ecx
 00527E15    mov         dword ptr [ebp-14],eax
 00527E18    mov         eax,dword ptr [ebp-4]
 00527E1B    mov         eax,dword ptr [eax+210]
 00527E21    mov         eax,dword ptr [eax+30]
 00527E24    mov         edx,dword ptr [ebp-24]
 00527E27    mov         ecx,dword ptr [edx+0C]
 00527E2A    cdq
 00527E2B    idiv        eax,ecx
 00527E2D    mov         dword ptr [ebp-18],eax
 00527E30    mov         eax,dword ptr [ebp-18]
 00527E33    test        eax,eax
>00527E35    jl          00527E9B
 00527E37    inc         eax
 00527E38    mov         dword ptr [ebp-28],eax
 00527E3B    mov         dword ptr [ebp-20],0
 00527E42    mov         eax,dword ptr [ebp-14]
 00527E45    test        eax,eax
>00527E47    jl          00527E93
 00527E49    inc         eax
 00527E4A    mov         dword ptr [ebp-2C],eax
 00527E4D    mov         dword ptr [ebp-1C],0
 00527E54    lea         esi,[ebp-3C]
 00527E57    lea         edi,[ebp-4C]
 00527E5A    movs        dword ptr [edi],dword ptr [esi]
 00527E5B    movs        dword ptr [edi],dword ptr [esi]
 00527E5C    movs        dword ptr [edi],dword ptr [esi]
 00527E5D    movs        dword ptr [edi],dword ptr [esi]
 00527E5E    mov         eax,dword ptr [ebp-24]
 00527E61    mov         ecx,dword ptr [eax+0C]
 00527E64    imul        ecx,dword ptr [ebp-20]
 00527E68    mov         eax,dword ptr [ebp-24]
 00527E6B    mov         edx,dword ptr [eax+8]
 00527E6E    imul        edx,dword ptr [ebp-1C]
 00527E72    lea         eax,[ebp-4C]
 00527E75    call        0051E124
 00527E7A    lea         edx,[ebp-4C]
 00527E7D    mov         eax,dword ptr [ebp-4]
 00527E80    mov         eax,dword ptr [eax+21C]
 00527E86    call        005153BC
 00527E8B    inc         dword ptr [ebp-1C]
 00527E8E    dec         dword ptr [ebp-2C]
>00527E91    jne         00527E54
 00527E93    inc         dword ptr [ebp-20]
 00527E96    dec         dword ptr [ebp-28]
>00527E99    jne         00527E42
 00527E9B    mov         eax,dword ptr [ebp-4]
 00527E9E    cmp         dword ptr [eax+27C],0
>00527EA5    jne         00527EDA
 00527EA7    mov         eax,dword ptr [ebp-4]
 00527EAA    test        byte ptr [eax+55],1
>00527EAE    jne         00527EBB
 00527EB0    mov         eax,dword ptr [ebp-4]
 00527EB3    mov         edx,dword ptr [eax]
 00527EB5    call        dword ptr [edx+80]
 00527EBB    mov         eax,dword ptr [ebp-4]
 00527EBE    cmp         word ptr [eax+28A],0
>00527EC6    je          00527EDA
 00527EC8    mov         ebx,dword ptr [ebp-4]
 00527ECB    mov         edx,dword ptr [ebp-4]
 00527ECE    mov         eax,dword ptr [ebx+28C]
 00527ED4    call        dword ptr [ebx+288]
 00527EDA    pop         edi
 00527EDB    pop         esi
 00527EDC    pop         ebx
 00527EDD    mov         esp,ebp
 00527EDF    pop         ebp
 00527EE0    ret         4
end;*}

//00527EE4
{*procedure sub_00527EE4(?:?; ?:?);
begin
 00527EE4    push        ebp
 00527EE5    mov         ebp,esp
 00527EE7    add         esp,0FFFFFFF8
 00527EEA    mov         dword ptr [ebp-8],edx
 00527EED    mov         dword ptr [ebp-4],eax
 00527EF0    mov         eax,dword ptr [ebp-4]
 00527EF3    mov         edx,dword ptr [eax]
 00527EF5    call        dword ptr [edx+124]
 00527EFB    pop         ecx
 00527EFC    pop         ecx
 00527EFD    pop         ebp
 00527EFE    ret
end;*}

//00527F00
{*procedure sub_00527F00(?:?; ?:?);
begin
 00527F00    push        ebp
 00527F01    mov         ebp,esp
 00527F03    add         esp,0FFFFFFF8
 00527F06    mov         dword ptr [ebp-8],edx
 00527F09    mov         dword ptr [ebp-4],eax
 00527F0C    mov         eax,dword ptr [ebp-4]
 00527F0F    mov         edx,dword ptr [eax]
 00527F11    call        dword ptr [edx+0C8]
 00527F17    pop         ecx
 00527F18    pop         ecx
 00527F19    pop         ebp
 00527F1A    ret
end;*}

//00527F1C
{*procedure sub_00527F1C(?:?; ?:?; ?:?; ?:?);
begin
 00527F1C    push        ebp
 00527F1D    mov         ebp,esp
 00527F1F    add         esp,0FFFFFFF4
 00527F22    mov         dword ptr [ebp-8],ecx
 00527F25    mov         dword ptr [ebp-0C],edx
 00527F28    mov         dword ptr [ebp-4],eax
 00527F2B    mov         eax,dword ptr [ebp-4]
 00527F2E    mov         edx,dword ptr [eax]
 00527F30    call        dword ptr [edx+11C]
 00527F36    mov         eax,dword ptr [ebp-4]
 00527F39    fild        dword ptr [eax+2D0]
 00527F3F    fdiv        dword ptr ds:[527F68];65536:Single
 00527F45    mov         eax,dword ptr [ebp-8]
 00527F48    fstp        dword ptr [eax]
 00527F4A    wait
 00527F4B    mov         eax,dword ptr [ebp-4]
 00527F4E    fild        dword ptr [eax+2D4]
 00527F54    fdiv        dword ptr ds:[527F68];65536:Single
 00527F5A    mov         eax,dword ptr [ebp+8]
 00527F5D    fstp        dword ptr [eax]
 00527F5F    wait
 00527F60    mov         esp,ebp
 00527F62    pop         ebp
 00527F63    ret         4
end;*}

//00527F6C
{*procedure sub_00527F6C(?:?; ?:?; ?:?; ?:?);
begin
 00527F6C    push        ebp
 00527F6D    mov         ebp,esp
 00527F6F    add         esp,0FFFFFFF4
 00527F72    mov         dword ptr [ebp-8],ecx
 00527F75    mov         dword ptr [ebp-0C],edx
 00527F78    mov         dword ptr [ebp-4],eax
 00527F7B    mov         eax,dword ptr [ebp-4]
 00527F7E    mov         edx,dword ptr [eax]
 00527F80    call        dword ptr [edx+11C]
 00527F86    mov         eax,dword ptr [ebp-4]
 00527F89    fild        dword ptr [eax+2D8]
 00527F8F    mov         eax,dword ptr [ebp-8]
 00527F92    fstp        dword ptr [eax]
 00527F94    wait
 00527F95    mov         eax,dword ptr [ebp-4]
 00527F98    fild        dword ptr [eax+2DC]
 00527F9E    mov         eax,dword ptr [ebp+8]
 00527FA1    fstp        dword ptr [eax]
 00527FA3    wait
 00527FA4    mov         esp,ebp
 00527FA6    pop         ebp
 00527FA7    ret         4
end;*}

//00527FAC
constructor sub_00527FAC;
begin
{*
 00527FAC    push        ebp
 00527FAD    mov         ebp,esp
 00527FAF    add         esp,0FFFFFFF0
 00527FB2    test        dl,dl
>00527FB4    je          00527FBE
 00527FB6    add         esp,0FFFFFFF0
 00527FB9    call        @ClassCreate
 00527FBE    mov         dword ptr [ebp-0C],ecx
 00527FC1    mov         byte ptr [ebp-5],dl
 00527FC4    mov         dword ptr [ebp-4],eax
 00527FC7    mov         ecx,dword ptr [ebp-0C]
 00527FCA    xor         edx,edx
 00527FCC    mov         eax,dword ptr [ebp-4]
 00527FCF    call        00526FB0
 00527FD4    mov         eax,dword ptr [ebp-4]
 00527FD7    mov         edx,dword ptr ds:[5280EC];0x8CB gvar_005280EC
 00527FDD    mov         dword ptr [eax+50],edx;TCustomImage32.FControlStyle:TControlStyle
 00527FE0    mov         dl,1
 00527FE2    mov         eax,[0051D7C4];TBitmap32
 00527FE7    call        TBitmap32.Create;TBitmap32.Create
 00527FEC    mov         edx,dword ptr [ebp-4]
 00527FEF    mov         dword ptr [edx+250],eax;TCustomImage32.?f250:TBitmap32
 00527FF5    mov         eax,dword ptr [ebp-4]
 00527FF8    mov         eax,dword ptr [eax+250];TCustomImage32.?f250:TBitmap32
 00527FFE    mov         edx,dword ptr [ebp-4]
 00528001    mov         dword ptr [eax+3C],edx;TBitmap32.?f3C:TCustomImage32
 00528004    mov         dword ptr [eax+38],527B68;TBitmap32.?f38:? sub_00527B68
 0052800B    mov         ecx,dword ptr [ebp-4]
 0052800E    mov         dl,1
 00528010    mov         eax,[00529928];TLayerCollection
 00528015    call        TLayerCollection.Create;TLayerCollection.Create
 0052801A    mov         edx,dword ptr [ebp-4]
 0052801D    mov         dword ptr [edx+258],eax;TCustomImage32.?f258:TLayerCollection
 00528023    mov         eax,dword ptr [ebp-4]
 00528026    mov         eax,dword ptr [eax+258];TCustomImage32.?f258:TLayerCollection
 0052802C    mov         dword ptr [ebp-10],eax
 0052802F    mov         eax,dword ptr [ebp-4]
 00528032    mov         edx,dword ptr [ebp-10]
 00528035    mov         dword ptr [edx+24],eax;TLayerCollection.?f24:TCustomImage32
 00528038    mov         dword ptr [edx+20],527EE4;TLayerCollection.?f20:dword sub_00527EE4
 0052803F    mov         eax,dword ptr [ebp-4]
 00528042    mov         edx,dword ptr [ebp-10]
 00528045    mov         dword ptr [edx+2C],eax;TLayerCollection.?f2C:TCustomImage32
 00528048    mov         dword ptr [edx+28],527F00;TLayerCollection.?f28:dword sub_00527F00
 0052804F    mov         eax,dword ptr [ebp-4]
 00528052    mov         edx,dword ptr [ebp-10]
 00528055    mov         dword ptr [edx+4C],eax;TLayerCollection.?f4C:TCustomImage32
 00528058    mov         dword ptr [edx+48],527F1C;TLayerCollection.?f48:dword sub_00527F1C
 0052805F    mov         eax,dword ptr [ebp-4]
 00528062    mov         edx,dword ptr [ebp-10]
 00528065    mov         dword ptr [edx+54],eax;TLayerCollection.?f54:TCustomImage32
 00528068    mov         dword ptr [edx+50],527F6C;TLayerCollection.?f50:dword sub_00527F6C
 0052806F    mov         eax,dword ptr [ebp-4]
 00528072    mov         edx,dword ptr [eax+258];TCustomImage32.?f258:TLayerCollection
 00528078    mov         eax,dword ptr [ebp-4]
 0052807B    mov         eax,dword ptr [eax+224];TCustomImage32.?f224:dword
 00528081    mov         ecx,dword ptr [eax]
 00528083    call        dword ptr [ecx+10]
 00528086    xor         edx,edx
 00528088    mov         eax,dword ptr [ebp-4]
 0052808B    mov         ecx,dword ptr [eax]
 0052808D    call        dword ptr [ecx+0CC];TImage32.SetRepaintMode
 00528093    mov         dl,1
 00528095    mov         eax,[00525F08];TPaintStages
 0052809A    call        TObject.Create;TPaintStages.Create
 0052809F    mov         edx,dword ptr [ebp-4]
 005280A2    mov         dword ptr [edx+264],eax;TCustomImage32.?f264:TPaintStages
 005280A8    mov         eax,dword ptr [ebp-4]
 005280AB    mov         dword ptr [eax+270],3F800000;TCustomImage32.?f270:Single
 005280B5    mov         eax,dword ptr [ebp-4]
 005280B8    mov         dword ptr [eax+274],3F800000;TCustomImage32.?f274:Single
 005280C2    mov         eax,dword ptr [ebp-4]
 005280C5    mov         edx,dword ptr [eax]
 005280C7    call        dword ptr [edx+108];TCustomImage32.sub_00528DF4
 005280CD    mov         eax,dword ptr [ebp-4]
 005280D0    cmp         byte ptr [ebp-5],0
>005280D4    je          005280E5
 005280D6    call        @AfterConstruction
 005280DB    pop         dword ptr fs:[0]
 005280E2    add         esp,0C
 005280E5    mov         eax,dword ptr [ebp-4]
 005280E8    mov         esp,ebp
 005280EA    pop         ebp
 005280EB    ret
*}
end;

//005280F0
destructor TCustomImage32.Destroy;
begin
{*
 005280F0    push        ebp
 005280F1    mov         ebp,esp
 005280F3    add         esp,0FFFFFFF8
 005280F6    call        @BeforeDestruction
 005280FB    mov         byte ptr [ebp-5],dl
 005280FE    mov         dword ptr [ebp-4],eax
 00528101    mov         eax,dword ptr [ebp-4]
 00528104    mov         edx,dword ptr [eax]
 00528106    call        dword ptr [edx+120]
 0052810C    mov         eax,dword ptr [ebp-4]
 0052810F    mov         eax,dword ptr [eax+264]
 00528115    call        TObject.Free
 0052811A    mov         eax,dword ptr [ebp-4]
 0052811D    mov         edx,dword ptr [eax+258]
 00528123    mov         eax,dword ptr [ebp-4]
 00528126    mov         eax,dword ptr [eax+224]
 0052812C    mov         ecx,dword ptr [eax]
 0052812E    call        dword ptr [ecx+14]
 00528131    mov         eax,dword ptr [ebp-4]
 00528134    mov         eax,dword ptr [eax+258]
 0052813A    call        TObject.Free
 0052813F    mov         eax,dword ptr [ebp-4]
 00528142    mov         eax,dword ptr [eax+250]
 00528148    call        TObject.Free
 0052814D    mov         dl,byte ptr [ebp-5]
 00528150    and         dl,0FC
 00528153    mov         eax,dword ptr [ebp-4]
 00528156    call        TCustomPaintBox32.Destroy
 0052815B    cmp         byte ptr [ebp-5],0
>0052815F    jle         00528169
 00528161    mov         eax,dword ptr [ebp-4]
 00528164    call        @ClassDestroy
 00528169    pop         ecx
 0052816A    pop         ecx
 0052816B    pop         ebp
 0052816C    ret
*}
end;

//00528170
procedure sub_00528170;
begin
{*
 00528170    push        ebp
 00528171    mov         ebp,esp
 00528173    push        ecx
 00528174    push        ebx
 00528175    mov         dword ptr [ebp-4],eax
 00528178    mov         eax,dword ptr [ebp-4]
 0052817B    cmp         word ptr [eax+292],0;TCustomImage32.?f292:word
>00528183    je          00528197
 00528185    mov         ebx,dword ptr [ebp-4]
 00528188    mov         edx,dword ptr [ebp-4]
 0052818B    mov         eax,dword ptr [ebx+294];TCustomImage32.?f294:dword
 00528191    call        dword ptr [ebx+290]
 00528197    pop         ebx
 00528198    pop         ecx
 00528199    pop         ebp
 0052819A    ret
*}
end;

//0052819C
procedure sub_0052819C;
begin
{*
 0052819C    push        ebp
 0052819D    mov         ebp,esp
 0052819F    add         esp,0FFFFFFD0
 005281A2    push        ebx
 005281A3    mov         dword ptr [ebp-4],eax
 005281A6    mov         eax,dword ptr [ebp-4]
 005281A9    mov         eax,dword ptr [eax+224];TCustomImage32.?f224:dword
 005281AF    mov         edx,dword ptr [eax]
 005281B1    call        dword ptr [edx]
 005281B3    test        al,al
>005281B5    je          005281C5
 005281B7    mov         eax,dword ptr [ebp-4]
 005281BA    mov         eax,dword ptr [eax+224];TCustomImage32.?f224:dword
 005281C0    mov         edx,dword ptr [eax]
 005281C2    call        dword ptr [edx+20]
 005281C5    mov         eax,dword ptr [ebp-4]
 005281C8    mov         edx,dword ptr [eax]
 005281CA    call        dword ptr [edx+11C];TCustomImage32.sub_005296AC
 005281D0    mov         eax,dword ptr [ebp-4]
 005281D3    mov         eax,dword ptr [eax+264];TCustomImage32.?f264:TPaintStages
 005281D9    call        00526E90
 005281DE    push        eax
 005281DF    mov         eax,dword ptr [ebp-4]
 005281E2    add         eax,268;TCustomImage32.?f268:.7
 005281E7    mov         ecx,1
 005281EC    mov         edx,dword ptr ds:[526384];_DynArr_115_7
 005281F2    call        @DynArraySetLength
 005281F7    add         esp,4
 005281FA    mov         eax,dword ptr [ebp-4]
 005281FD    mov         eax,dword ptr [eax+264];TCustomImage32.?f264:TPaintStages
 00528203    call        00526E90
 00528208    push        eax
 00528209    mov         eax,dword ptr [ebp-4]
 0052820C    add         eax,26C;TCustomImage32.?f26C:.8
 00528211    mov         ecx,1
 00528216    mov         edx,dword ptr ds:[5263A8];_DynArr_115_8
 0052821C    call        @DynArraySetLength
 00528221    add         esp,4
 00528224    xor         eax,eax
 00528226    mov         dword ptr [ebp-8],eax
 00528229    mov         eax,dword ptr [ebp-4]
 0052822C    test        byte ptr [eax+1C],10;TCustomImage32.FComponentState:TComponentState
 00528230    setne       al
 00528233    mov         byte ptr [ebp-11],al
 00528236    mov         al,byte ptr [ebp-11]
 00528239    xor         al,1
 0052823B    mov         byte ptr [ebp-12],al
 0052823E    mov         eax,dword ptr [ebp-4]
 00528241    mov         eax,dword ptr [eax+264];TCustomImage32.?f264:TPaintStages
 00528247    call        00526E90
 0052824C    dec         eax
 0052824D    test        eax,eax
>0052824F    jl          005283D0
 00528255    inc         eax
 00528256    mov         dword ptr [ebp-18],eax
 00528259    mov         dword ptr [ebp-0C],0
 00528260    mov         edx,dword ptr [ebp-0C]
 00528263    mov         eax,dword ptr [ebp-4]
 00528266    mov         eax,dword ptr [eax+264];TCustomImage32.?f264:TPaintStages
 0052826C    call        00526EEC
 00528271    mov         dword ptr [ebp-1C],eax
 00528274    mov         eax,dword ptr [ebp-1C]
 00528277    mov         al,byte ptr [eax]
 00528279    and         al,byte ptr [ebp-11]
>0052827C    jne         0052828D
 0052827E    mov         eax,dword ptr [ebp-1C]
 00528281    mov         al,byte ptr [eax+1]
 00528284    and         al,byte ptr [ebp-12]
>00528287    je          005283C4
 0052828D    mov         eax,dword ptr [ebp-4]
 00528290    mov         eax,dword ptr [eax+26C];TCustomImage32.?f26C:.8
 00528296    mov         edx,dword ptr [ebp-8]
 00528299    mov         ecx,dword ptr [ebp-0C]
 0052829C    mov         dword ptr [eax+edx*4],ecx
 0052829F    mov         eax,dword ptr [ebp-1C]
 005282A2    mov         eax,dword ptr [eax+4]
 005282A5    cmp         eax,7
>005282A8    ja          005283BE
 005282AE    jmp         dword ptr [eax*4+5282B5]
 005282AE    dd          005283BE
 005282AE    dd          005282D5
 005282AE    dd          005282F8
 005282AE    dd          0052831B
 005282AE    dd          0052833E
 005282AE    dd          0052835E
 005282AE    dd          0052837E
 005282AE    dd          0052839E
 005282D5    mov         eax,dword ptr [ebp-4]
 005282D8    mov         eax,dword ptr [eax+268];TCustomImage32.?f268:.7
 005282DE    mov         edx,dword ptr [ebp-8]
 005282E1    mov         ecx,dword ptr [ebp-4]
 005282E4    mov         dword ptr [eax+edx*8+4],ecx
 005282E8    mov         ecx,dword ptr [ecx]
 005282EA    mov         ecx,dword ptr [ecx+13C]
 005282F0    mov         dword ptr [eax+edx*8],ecx
>005282F3    jmp         005283C1
 005282F8    mov         eax,dword ptr [ebp-4]
 005282FB    mov         eax,dword ptr [eax+268];TCustomImage32.?f268:.7
 00528301    mov         edx,dword ptr [ebp-8]
 00528304    mov         ecx,dword ptr [ebp-4]
 00528307    mov         dword ptr [eax+edx*8+4],ecx
 0052830B    mov         ecx,dword ptr [ecx]
 0052830D    mov         ecx,dword ptr [ecx+130]
 00528313    mov         dword ptr [eax+edx*8],ecx
>00528316    jmp         005283C1
 0052831B    mov         eax,dword ptr [ebp-4]
 0052831E    mov         eax,dword ptr [eax+268];TCustomImage32.?f268:.7
 00528324    mov         edx,dword ptr [ebp-8]
 00528327    mov         ecx,dword ptr [ebp-4]
 0052832A    mov         dword ptr [eax+edx*8+4],ecx
 0052832E    mov         ecx,dword ptr [ecx]
 00528330    mov         ecx,dword ptr [ecx+134]
 00528336    mov         dword ptr [eax+edx*8],ecx
>00528339    jmp         005283C1
 0052833E    mov         eax,dword ptr [ebp-4]
 00528341    mov         eax,dword ptr [eax+268];TCustomImage32.?f268:.7
 00528347    mov         edx,dword ptr [ebp-8]
 0052834A    mov         ecx,dword ptr [ebp-4]
 0052834D    mov         dword ptr [eax+edx*8+4],ecx
 00528351    mov         ecx,dword ptr [ecx]
 00528353    mov         ecx,dword ptr [ecx+140]
 00528359    mov         dword ptr [eax+edx*8],ecx
>0052835C    jmp         005283C1
 0052835E    mov         eax,dword ptr [ebp-4]
 00528361    mov         eax,dword ptr [eax+268];TCustomImage32.?f268:.7
 00528367    mov         edx,dword ptr [ebp-8]
 0052836A    mov         ecx,dword ptr [ebp-4]
 0052836D    mov         dword ptr [eax+edx*8+4],ecx
 00528371    mov         ecx,dword ptr [ecx]
 00528373    mov         ecx,dword ptr [ecx+144]
 00528379    mov         dword ptr [eax+edx*8],ecx
>0052837C    jmp         005283C1
 0052837E    mov         eax,dword ptr [ebp-4]
 00528381    mov         eax,dword ptr [eax+268];TCustomImage32.?f268:.7
 00528387    mov         edx,dword ptr [ebp-8]
 0052838A    mov         ecx,dword ptr [ebp-4]
 0052838D    mov         dword ptr [eax+edx*8+4],ecx
 00528391    mov         ecx,dword ptr [ecx]
 00528393    mov         ecx,dword ptr [ecx+138]
 00528399    mov         dword ptr [eax+edx*8],ecx
>0052839C    jmp         005283C1
 0052839E    mov         eax,dword ptr [ebp-4]
 005283A1    mov         eax,dword ptr [eax+268];TCustomImage32.?f268:.7
 005283A7    mov         edx,dword ptr [ebp-8]
 005283AA    mov         ecx,dword ptr [ebp-4]
 005283AD    mov         dword ptr [eax+edx*8+4],ecx
 005283B1    mov         ecx,dword ptr [ecx]
 005283B3    mov         ecx,dword ptr [ecx+12C]
 005283B9    mov         dword ptr [eax+edx*8],ecx
>005283BC    jmp         005283C1
 005283BE    dec         dword ptr [ebp-8]
 005283C1    inc         dword ptr [ebp-8]
 005283C4    inc         dword ptr [ebp-0C]
 005283C7    dec         dword ptr [ebp-18]
>005283CA    jne         00528260
 005283D0    mov         eax,dword ptr [ebp-4]
 005283D3    mov         eax,dword ptr [eax+210];TCustomImage32.?f210:TBitmap32
 005283D9    mov         edx,dword ptr [eax]
 005283DB    call        dword ptr [edx+10];TBitmap32.sub_0051E1E4
 005283DE    mov         eax,dword ptr [ebp-4]
 005283E1    mov         eax,dword ptr [eax+21C];TCustomImage32.?f21C:TRectList
 005283E7    cmp         dword ptr [eax+8],0;TRectList.?f8:dword
>005283EB    jne         0052845C
 005283ED    lea         edx,[ebp-30]
 005283F0    mov         eax,dword ptr [ebp-4]
 005283F3    mov         ecx,dword ptr [eax]
 005283F5    call        dword ptr [ecx+0F0];TCustomImage32.sub_00527228
 005283FB    lea         edx,[ebp-30]
 005283FE    mov         eax,dword ptr [ebp-4]
 00528401    mov         eax,dword ptr [eax+210];TCustomImage32.?f210:TBitmap32
 00528407    call        00522F68
 0052840C    mov         eax,dword ptr [ebp-8]
 0052840F    dec         eax
 00528410    test        eax,eax
>00528412    jl          00528507
 00528418    inc         eax
 00528419    mov         dword ptr [ebp-18],eax
 0052841C    mov         dword ptr [ebp-0C],0
 00528423    mov         eax,dword ptr [ebp-4]
 00528426    mov         eax,dword ptr [eax+268];TCustomImage32.?f268:.7
 0052842C    mov         edx,dword ptr [ebp-0C]
 0052842F    lea         ebx,[eax+edx*8]
 00528432    mov         eax,dword ptr [ebp-4]
 00528435    mov         eax,dword ptr [eax+26C];TCustomImage32.?f26C:.8
 0052843B    mov         edx,dword ptr [ebp-0C]
 0052843E    mov         ecx,dword ptr [eax+edx*4]
 00528441    mov         eax,dword ptr [ebp-4]
 00528444    mov         edx,dword ptr [eax+210];TCustomImage32.?f210:TBitmap32
 0052844A    mov         eax,dword ptr [ebx+4]
 0052844D    call        dword ptr [ebx]
 0052844F    inc         dword ptr [ebp-0C]
 00528452    dec         dword ptr [ebp-18]
>00528455    jne         00528423
>00528457    jmp         00528507
 0052845C    mov         eax,dword ptr [ebp-4]
 0052845F    mov         eax,dword ptr [eax+21C];TCustomImage32.?f21C:TRectList
 00528465    mov         eax,dword ptr [eax+8];TRectList.?f8:dword
 00528468    dec         eax
 00528469    test        eax,eax
>0052846B    jl          005284E8
 0052846D    inc         eax
 0052846E    mov         dword ptr [ebp-18],eax
 00528471    mov         dword ptr [ebp-10],0
 00528478    mov         edx,dword ptr [ebp-10]
 0052847B    mov         eax,dword ptr [ebp-4]
 0052847E    mov         eax,dword ptr [eax+21C];TCustomImage32.?f21C:TRectList
 00528484    call        00515480
 00528489    mov         edx,eax
 0052848B    mov         eax,dword ptr [ebp-4]
 0052848E    mov         eax,dword ptr [eax+210];TCustomImage32.?f210:TBitmap32
 00528494    call        00522F68
 00528499    mov         eax,dword ptr [ebp-8]
 0052849C    dec         eax
 0052849D    test        eax,eax
>0052849F    jl          005284E0
 005284A1    inc         eax
 005284A2    mov         dword ptr [ebp-20],eax
 005284A5    mov         dword ptr [ebp-0C],0
 005284AC    mov         eax,dword ptr [ebp-4]
 005284AF    mov         eax,dword ptr [eax+268];TCustomImage32.?f268:.7
 005284B5    mov         edx,dword ptr [ebp-0C]
 005284B8    lea         ebx,[eax+edx*8]
 005284BB    mov         eax,dword ptr [ebp-4]
 005284BE    mov         eax,dword ptr [eax+26C];TCustomImage32.?f26C:.8
 005284C4    mov         edx,dword ptr [ebp-0C]
 005284C7    mov         ecx,dword ptr [eax+edx*4]
 005284CA    mov         eax,dword ptr [ebp-4]
 005284CD    mov         edx,dword ptr [eax+210];TCustomImage32.?f210:TBitmap32
 005284D3    mov         eax,dword ptr [ebx+4]
 005284D6    call        dword ptr [ebx]
 005284D8    inc         dword ptr [ebp-0C]
 005284DB    dec         dword ptr [ebp-20]
>005284DE    jne         005284AC
 005284E0    inc         dword ptr [ebp-10]
 005284E3    dec         dword ptr [ebp-18]
>005284E6    jne         00528478
 005284E8    lea         edx,[ebp-30]
 005284EB    mov         eax,dword ptr [ebp-4]
 005284EE    mov         ecx,dword ptr [eax]
 005284F0    call        dword ptr [ecx+0F0];TCustomImage32.sub_00527228
 005284F6    lea         edx,[ebp-30]
 005284F9    mov         eax,dword ptr [ebp-4]
 005284FC    mov         eax,dword ptr [eax+210];TCustomImage32.?f210:TBitmap32
 00528502    call        00522F68
 00528507    mov         eax,dword ptr [ebp-4]
 0052850A    mov         eax,dword ptr [eax+210];TCustomImage32.?f210:TBitmap32
 00528510    mov         edx,dword ptr [eax]
 00528512    call        dword ptr [edx+14];TBitmap32.sub_0051E220
 00528515    mov         eax,dword ptr [ebp-4]
 00528518    mov         eax,dword ptr [eax+224];TCustomImage32.?f224:dword
 0052851E    mov         edx,dword ptr [eax]
 00528520    call        dword ptr [edx]
 00528522    test        al,al
>00528524    je          00528534
 00528526    mov         eax,dword ptr [ebp-4]
 00528529    mov         eax,dword ptr [eax+224];TCustomImage32.?f224:dword
 0052852F    mov         edx,dword ptr [eax]
 00528531    call        dword ptr [edx+24]
 00528534    mov         eax,dword ptr [ebp-4]
 00528537    mov         byte ptr [eax+218],1;TCustomImage32.?f218:byte
 0052853E    pop         ebx
 0052853F    mov         esp,ebp
 00528541    pop         ebp
 00528542    ret
*}
end;

//00528544
procedure sub_00528544;
begin
{*
 00528544    push        ebp
 00528545    mov         ebp,esp
 00528547    add         esp,0FFFFFFF4
 0052854A    mov         dword ptr [ebp-4],eax
 0052854D    mov         eax,dword ptr [ebp-4]
 00528550    mov         eax,dword ptr [eax+258];TCustomImage32.?f258:TLayerCollection
 00528556    call        00529E80
 0052855B    dec         eax
 0052855C    test        eax,eax
>0052855E    jl          005285A9
 00528560    inc         eax
 00528561    mov         dword ptr [ebp-0C],eax
 00528564    mov         dword ptr [ebp-8],0
 0052856B    mov         edx,dword ptr [ebp-8]
 0052856E    mov         eax,dword ptr [ebp-4]
 00528571    mov         eax,dword ptr [eax+258];TCustomImage32.?f258:TLayerCollection
 00528577    call        00529E9C
 0052857C    test        byte ptr [eax+23],40
>00528580    je          005285A1
 00528582    mov         edx,dword ptr [ebp-8]
 00528585    mov         eax,dword ptr [ebp-4]
 00528588    mov         eax,dword ptr [eax+258];TCustomImage32.?f258:TLayerCollection
 0052858E    call        00529E9C
 00528593    mov         edx,dword ptr [ebp-4]
 00528596    mov         edx,dword ptr [edx+208];TCustomImage32.....................................................
 0052859C    mov         ecx,dword ptr [eax]
 0052859E    call        dword ptr [ecx+30]
 005285A1    inc         dword ptr [ebp-8]
 005285A4    dec         dword ptr [ebp-0C]
>005285A7    jne         0052856B
 005285A9    mov         eax,dword ptr [ebp-4]
 005285AC    call        005271FC
 005285B1    mov         esp,ebp
 005285B3    pop         ebp
 005285B4    ret
*}
end;

//005285B8
procedure sub_005285B8;
begin
{*
 005285B8    push        ebp
 005285B9    mov         ebp,esp
 005285BB    push        ecx
 005285BC    push        ebx
 005285BD    mov         dword ptr [ebp-4],eax
 005285C0    mov         eax,dword ptr [ebp-4]
 005285C3    cmp         word ptr [eax+2BA],0;TCustomImage32.?f2BA:word
>005285CB    je          005285DF
 005285CD    mov         ebx,dword ptr [ebp-4]
 005285D0    mov         edx,dword ptr [ebp-4]
 005285D3    mov         eax,dword ptr [ebx+2BC];TCustomImage32.?f2BC:dword
 005285D9    call        dword ptr [ebx+2B8]
 005285DF    pop         ebx
 005285E0    pop         ecx
 005285E1    pop         ebp
 005285E2    ret
*}
end;

//005285E4
procedure sub_005285E4;
begin
{*
 005285E4    push        ebp
 005285E5    mov         ebp,esp
 005285E7    push        ecx
 005285E8    mov         dword ptr [ebp-4],eax
 005285EB    mov         eax,dword ptr [ebp-4]
 005285EE    dec         dword ptr [eax+27C];TCustomImage32.?f27C:dword
 005285F4    mov         eax,dword ptr [ebp-4]
 005285F7    cmp         dword ptr [eax+27C],0;TCustomImage32.?f27C:dword
>005285FE    jge         00528614
 00528600    mov         ecx,5AC
 00528605    mov         edx,528620;'c:\program files\delphi7se\Components\G32\GR32_Image.pas'
 0052860A    mov         eax,528664;'Unpaired EndUpdate call'
 0052860F    call        @Assert
 00528614    pop         ecx
 00528615    pop         ebp
 00528616    ret
*}
end;

//0052867C
{*procedure sub_0052867C(?:?; ?:?);
begin
 0052867C    push        ebp
 0052867D    mov         ebp,esp
 0052867F    add         esp,0FFFFFFF4
 00528682    mov         dword ptr [ebp-0C],ecx
 00528685    mov         dword ptr [ebp-8],edx
 00528688    mov         dword ptr [ebp-4],eax
 0052868B    mov         eax,dword ptr [ebp-8]
 0052868E    call        0051F3B0
 00528693    mov         edx,dword ptr [ebp-4]
 00528696    add         edx,2C0;TCustomImage32.?f2C0:?
 0052869C    call        0042EFEC
 005286A1    mov         esp,ebp
 005286A3    pop         ebp
 005286A4    ret
end;*}

//005286A8
{*procedure sub_005286A8(?:?; ?:?);
begin
 005286A8    push        ebp
 005286A9    mov         ebp,esp
 005286AB    add         esp,0FFFFFFE0
 005286AE    mov         dword ptr [ebp-20],ecx
 005286B1    mov         dword ptr [ebp-8],edx
 005286B4    mov         dword ptr [ebp-4],eax
 005286B7    mov         eax,dword ptr [ebp-4]
 005286BA    mov         eax,dword ptr [eax+70];TCustomImage32.FColor:TColor
 005286BD    call        0051DBDC
 005286C2    mov         dword ptr [ebp-0C],eax
 005286C5    mov         eax,dword ptr [ebp-4]
 005286C8    mov         eax,dword ptr [eax+21C];TCustomImage32.?f21C:TRectList
 005286CE    cmp         dword ptr [eax+8],0;TRectList.?f8:dword
>005286D2    jle         0052873A
 005286D4    mov         eax,dword ptr [ebp-4]
 005286D7    mov         eax,dword ptr [eax+21C];TCustomImage32.?f21C:TRectList
 005286DD    mov         eax,dword ptr [eax+8];TRectList.?f8:dword
 005286E0    dec         eax
 005286E1    test        eax,eax
>005286E3    jl          0052883E
 005286E9    inc         eax
 005286EA    mov         dword ptr [ebp-14],eax
 005286ED    mov         dword ptr [ebp-10],0
 005286F4    mov         edx,dword ptr [ebp-10]
 005286F7    mov         eax,dword ptr [ebp-4]
 005286FA    mov         eax,dword ptr [eax+21C];TCustomImage32.?f21C:TRectList
 00528700    call        00515480
 00528705    mov         dword ptr [ebp-18],eax
 00528708    mov         eax,dword ptr [ebp-18]
 0052870B    mov         eax,dword ptr [eax+8]
 0052870E    push        eax
 0052870F    mov         eax,dword ptr [ebp-18]
 00528712    mov         eax,dword ptr [eax+0C]
 00528715    push        eax
 00528716    mov         eax,dword ptr [ebp-0C]
 00528719    push        eax
 0052871A    mov         eax,dword ptr [ebp-18]
 0052871D    mov         ecx,dword ptr [eax+4]
 00528720    mov         eax,dword ptr [ebp-18]
 00528723    mov         edx,dword ptr [eax]
 00528725    mov         eax,dword ptr [ebp-8]
 00528728    call        005220C4
 0052872D    inc         dword ptr [ebp-10]
 00528730    dec         dword ptr [ebp-14]
>00528733    jne         005286F4
>00528735    jmp         0052883E
 0052873A    mov         eax,dword ptr [ebp-4]
 0052873D    mov         eax,dword ptr [eax+250];TCustomImage32.?f250:TBitmap32
 00528743    mov         edx,dword ptr [eax]
 00528745    call        dword ptr [edx+24];TBitmap32.sub_0051E948
 00528748    test        al,al
>0052874A    jne         0052875B
 0052874C    mov         eax,dword ptr [ebp-4]
 0052874F    mov         eax,dword ptr [eax+250];TCustomImage32.?f250:TBitmap32
 00528755    cmp         byte ptr [eax+79],0;TBitmap32.DrawMode:TDrawMode
>00528759    je          0052876B
 0052875B    mov         edx,dword ptr [ebp-0C]
 0052875E    mov         eax,dword ptr [ebp-8]
 00528761    call        0051E97C
>00528766    jmp         0052883E
 0052876B    mov         eax,dword ptr [ebp-4]
 0052876E    add         eax,2C0;TCustomImage32.?f2C0:?
 00528773    mov         dword ptr [ebp-1C],eax
 00528776    mov         eax,dword ptr [ebp-1C]
 00528779    cmp         dword ptr [eax],0
>0052877C    jg          005287B7
 0052877E    mov         eax,dword ptr [ebp-1C]
 00528781    mov         eax,dword ptr [eax+8]
 00528784    mov         edx,dword ptr [ebp-4]
 00528787    cmp         eax,dword ptr [edx+48];TCustomImage32.Width:Integer
>0052878A    jl          005287B7
 0052878C    mov         eax,dword ptr [ebp-1C]
 0052878F    cmp         dword ptr [eax+4],0
>00528793    jg          005287B7
 00528795    mov         eax,dword ptr [ebp-1C]
 00528798    mov         eax,dword ptr [eax+0C]
 0052879B    mov         edx,dword ptr [ebp-4]
 0052879E    cmp         eax,dword ptr [edx+4C];TCustomImage32.Height:Integer
>005287A1    jge         0052883E
 005287A7    mov         eax,dword ptr [ebp-4]
 005287AA    cmp         byte ptr [eax+254],2;TCustomImage32.?f254:byte
>005287B1    je          0052883E
 005287B7    mov         eax,dword ptr [ebp-4]
 005287BA    mov         eax,dword ptr [eax+48];TCustomImage32.Width:Integer
 005287BD    push        eax
 005287BE    mov         eax,dword ptr [ebp-1C]
 005287C1    mov         eax,dword ptr [eax+4]
 005287C4    push        eax
 005287C5    mov         eax,dword ptr [ebp-0C]
 005287C8    push        eax
 005287C9    xor         ecx,ecx
 005287CB    xor         edx,edx
 005287CD    mov         eax,dword ptr [ebp-8]
 005287D0    call        005220C4
 005287D5    mov         eax,dword ptr [ebp-4]
 005287D8    mov         eax,dword ptr [eax+48];TCustomImage32.Width:Integer
 005287DB    push        eax
 005287DC    mov         eax,dword ptr [ebp-4]
 005287DF    mov         eax,dword ptr [eax+4C];TCustomImage32.Height:Integer
 005287E2    push        eax
 005287E3    mov         eax,dword ptr [ebp-0C]
 005287E6    push        eax
 005287E7    mov         eax,dword ptr [ebp-1C]
 005287EA    mov         ecx,dword ptr [eax+0C]
 005287ED    xor         edx,edx
 005287EF    mov         eax,dword ptr [ebp-8]
 005287F2    call        005220C4
 005287F7    mov         eax,dword ptr [ebp-1C]
 005287FA    mov         eax,dword ptr [eax]
 005287FC    push        eax
 005287FD    mov         eax,dword ptr [ebp-1C]
 00528800    mov         eax,dword ptr [eax+0C]
 00528803    push        eax
 00528804    mov         eax,dword ptr [ebp-0C]
 00528807    push        eax
 00528808    mov         eax,dword ptr [ebp-1C]
 0052880B    mov         ecx,dword ptr [eax+4]
 0052880E    xor         edx,edx
 00528810    mov         eax,dword ptr [ebp-8]
 00528813    call        005220C4
 00528818    mov         eax,dword ptr [ebp-4]
 0052881B    mov         eax,dword ptr [eax+48];TCustomImage32.Width:Integer
 0052881E    push        eax
 0052881F    mov         eax,dword ptr [ebp-1C]
 00528822    mov         eax,dword ptr [eax+0C]
 00528825    push        eax
 00528826    mov         eax,dword ptr [ebp-0C]
 00528829    push        eax
 0052882A    mov         eax,dword ptr [ebp-1C]
 0052882D    mov         ecx,dword ptr [eax+4]
 00528830    mov         eax,dword ptr [ebp-1C]
 00528833    mov         edx,dword ptr [eax+8]
 00528836    mov         eax,dword ptr [ebp-8]
 00528839    call        005220C4
 0052883E    mov         esp,ebp
 00528840    pop         ebp
 00528841    ret
end;*}

//00528844
{*procedure sub_00528844(?:?; ?:?);
begin
 00528844    push        ebp
 00528845    mov         ebp,esp
 00528847    add         esp,0FFFFFFF4
 0052884A    mov         dword ptr [ebp-0C],ecx
 0052884D    mov         dword ptr [ebp-8],edx
 00528850    mov         dword ptr [ebp-4],eax
 00528853    mov         eax,dword ptr [ebp-4]
 00528856    mov         eax,dword ptr [eax+70];TCustomImage32.FColor:TColor
 00528859    call        0051DBDC
 0052885E    mov         edx,eax
 00528860    mov         eax,dword ptr [ebp-8]
 00528863    call        0051E97C
 00528868    mov         esp,ebp
 0052886A    pop         ebp
 0052886B    ret
end;*}

//0052886C
{*procedure sub_0052886C(?:?; ?:?);
begin
 0052886C    push        ebp
 0052886D    mov         ebp,esp
 0052886F    add         esp,0FFFFFFE4
 00528872    mov         dword ptr [ebp-0C],ecx
 00528875    mov         dword ptr [ebp-8],edx
 00528878    mov         dword ptr [ebp-4],eax
 0052887B    mov         eax,dword ptr [ebp-4]
 0052887E    mov         eax,dword ptr [eax+4C];TCustomImage32.Height:Integer
 00528881    push        eax
 00528882    lea         eax,[ebp-1C]
 00528885    push        eax
 00528886    mov         eax,dword ptr [ebp-4]
 00528889    mov         ecx,dword ptr [eax+48];TCustomImage32.Width:Integer
 0052888C    xor         edx,edx
 0052888E    xor         eax,eax
 00528890    call        0041E714
 00528895    lea         eax,[ebp-1C]
 00528898    push        eax
 00528899    mov         eax,dword ptr [ebp-8]
 0052889C    mov         eax,dword ptr [eax+84]
 005288A2    push        eax
 005288A3    call        user32.DrawFocusRect
 005288A8    mov         esp,ebp
 005288AA    pop         ebp
 005288AB    ret
end;*}

//005288AC
{*procedure sub_005288AC(?:?; ?:?);
begin
 005288AC    push        ebp
 005288AD    mov         ebp,esp
 005288AF    add         esp,0FFFFFFF4
 005288B2    push        ebx
 005288B3    mov         dword ptr [ebp-0C],ecx
 005288B6    mov         dword ptr [ebp-8],edx
 005288B9    mov         dword ptr [ebp-4],eax
 005288BC    mov         eax,dword ptr [ebp-4]
 005288BF    cmp         word ptr [eax+2B2],0;TCustomImage32.?f2B2:word
>005288C7    je          005288E2
 005288C9    mov         eax,dword ptr [ebp-0C]
 005288CC    push        eax
 005288CD    mov         ebx,dword ptr [ebp-4]
 005288D0    mov         ecx,dword ptr [ebp-8]
 005288D3    mov         edx,dword ptr [ebp-4]
 005288D6    mov         eax,dword ptr [ebx+2B4];TCustomImage32.?f2B4:dword
 005288DC    call        dword ptr [ebx+2B0]
 005288E2    pop         ebx
 005288E3    mov         esp,ebp
 005288E5    pop         ebp
 005288E6    ret
end;*}

//005288E8
{*procedure sub_005288E8(?:?; ?:?);
begin
 005288E8    push        ebp
 005288E9    mov         ebp,esp
 005288EB    add         esp,0FFFFFFC8
 005288EE    push        esi
 005288EF    push        edi
 005288F0    mov         dword ptr [ebp-28],ecx
 005288F3    mov         dword ptr [ebp-8],edx
 005288F6    mov         dword ptr [ebp-4],eax
 005288F9    mov         eax,dword ptr [ebp-4]
 005288FC    mov         eax,dword ptr [eax+250];TCustomImage32.?f250:TBitmap32
 00528902    mov         edx,dword ptr [eax]
 00528904    call        dword ptr [edx+24];TBitmap32.sub_0051E948
 00528907    test        al,al
>00528909    jne         00528A31
 0052890F    mov         eax,dword ptr [ebp-4]
 00528912    add         eax,2C0;TCustomImage32.?f2C0:?
 00528917    call        0051E15C
 0052891C    test        al,al
>0052891E    jne         00528A31
 00528924    mov         eax,dword ptr [ebp-4]
 00528927    mov         eax,dword ptr [eax+250];TCustomImage32.?f250:TBitmap32
 0052892D    call        0051E340
 00528932    xor         eax,eax
 00528934    push        ebp
 00528935    push        528A2A
 0052893A    push        dword ptr fs:[eax]
 0052893D    mov         dword ptr fs:[eax],esp
 00528940    mov         eax,dword ptr [ebp-4]
 00528943    cmp         byte ptr [eax+254],2;TCustomImage32.?f254:byte
>0052894A    je          0052896B
 0052894C    mov         eax,dword ptr [ebp-4]
 0052894F    lea         ecx,[eax+2C0];TCustomImage32.?f2C0:?
 00528955    mov         eax,dword ptr [ebp-4]
 00528958    mov         eax,dword ptr [eax+250];TCustomImage32.?f250:TBitmap32
 0052895E    mov         edx,dword ptr [ebp-8]
 00528961    call        0051F5F8
>00528966    jmp         00528A0E
 0052896B    mov         eax,dword ptr [ebp-4]
 0052896E    add         eax,2C0;TCustomImage32.?f2C0:?
 00528973    mov         dword ptr [ebp-1C],eax
 00528976    mov         eax,dword ptr [ebp-8]
 00528979    mov         eax,dword ptr [eax+34]
 0052897C    mov         edx,dword ptr [ebp-1C]
 0052897F    mov         ecx,dword ptr [edx+8]
 00528982    cdq
 00528983    idiv        eax,ecx
 00528985    mov         dword ptr [ebp-14],eax
 00528988    mov         eax,dword ptr [ebp-8]
 0052898B    mov         eax,dword ptr [eax+30]
 0052898E    mov         edx,dword ptr [ebp-1C]
 00528991    mov         ecx,dword ptr [edx+0C]
 00528994    cdq
 00528995    idiv        eax,ecx
 00528997    mov         dword ptr [ebp-18],eax
 0052899A    mov         eax,dword ptr [ebp-18]
 0052899D    test        eax,eax
>0052899F    jl          00528A0E
 005289A1    inc         eax
 005289A2    mov         dword ptr [ebp-20],eax
 005289A5    mov         dword ptr [ebp-10],0
 005289AC    mov         eax,dword ptr [ebp-14]
 005289AF    test        eax,eax
>005289B1    jl          00528A06
 005289B3    inc         eax
 005289B4    mov         dword ptr [ebp-24],eax
 005289B7    mov         dword ptr [ebp-0C],0
 005289BE    mov         eax,dword ptr [ebp-4]
 005289C1    lea         esi,[eax+2C0];TCustomImage32.?f2C0:?
 005289C7    lea         edi,[ebp-38]
 005289CA    movs        dword ptr [edi],dword ptr [esi]
 005289CB    movs        dword ptr [edi],dword ptr [esi]
 005289CC    movs        dword ptr [edi],dword ptr [esi]
 005289CD    movs        dword ptr [edi],dword ptr [esi]
 005289CE    mov         eax,dword ptr [ebp-1C]
 005289D1    mov         ecx,dword ptr [eax+0C]
 005289D4    imul        ecx,dword ptr [ebp-10]
 005289D8    mov         eax,dword ptr [ebp-1C]
 005289DB    mov         edx,dword ptr [eax+8]
 005289DE    imul        edx,dword ptr [ebp-0C]
 005289E2    lea         eax,[ebp-38]
 005289E5    call        0051E124
 005289EA    lea         ecx,[ebp-38]
 005289ED    mov         eax,dword ptr [ebp-4]
 005289F0    mov         eax,dword ptr [eax+250];TCustomImage32.?f250:TBitmap32
 005289F6    mov         edx,dword ptr [ebp-8]
 005289F9    call        0051F5F8
 005289FE    inc         dword ptr [ebp-0C]
 00528A01    dec         dword ptr [ebp-24]
>00528A04    jne         005289BE
 00528A06    inc         dword ptr [ebp-10]
 00528A09    dec         dword ptr [ebp-20]
>00528A0C    jne         005289AC
 00528A0E    xor         eax,eax
 00528A10    pop         edx
 00528A11    pop         ecx
 00528A12    pop         ecx
 00528A13    mov         dword ptr fs:[eax],edx
 00528A16    push        528A31
 00528A1B    mov         eax,dword ptr [ebp-4]
 00528A1E    mov         eax,dword ptr [eax+250];TCustomImage32.?f250:TBitmap32
 00528A24    call        0051E364
 00528A29    ret
>00528A2A    jmp         @HandleFinally
>00528A2F    jmp         00528A1B
 00528A31    pop         edi
 00528A32    pop         esi
 00528A33    mov         esp,ebp
 00528A35    pop         ebp
 00528A36    ret
end;*}

//00528A38
{*procedure sub_00528A38(?:?; ?:?);
begin
 00528A38    push        ebp
 00528A39    mov         ebp,esp
 00528A3B    add         esp,0FFFFFFE8
 00528A3E    mov         dword ptr [ebp-0C],ecx
 00528A41    mov         dword ptr [ebp-8],edx
 00528A44    mov         dword ptr [ebp-4],eax
 00528A47    mov         eax,dword ptr [ebp-4]
 00528A4A    mov         eax,dword ptr [eax+264];TCustomImage32.?f264:TPaintStages
 00528A50    mov         edx,dword ptr [ebp-0C]
 00528A53    call        00526EEC
 00528A58    mov         eax,dword ptr [eax+8]
 00528A5B    mov         dword ptr [ebp-14],eax
 00528A5E    mov         eax,dword ptr [ebp-4]
 00528A61    mov         eax,dword ptr [eax+258];TCustomImage32.?f258:TLayerCollection
 00528A67    call        00529E80
 00528A6C    dec         eax
 00528A6D    test        eax,eax
>00528A6F    jl          00528AB6
 00528A71    inc         eax
 00528A72    mov         dword ptr [ebp-18],eax
 00528A75    mov         dword ptr [ebp-10],0
 00528A7C    mov         eax,dword ptr [ebp-4]
 00528A7F    mov         eax,dword ptr [eax+258];TCustomImage32.?f258:TLayerCollection
 00528A85    mov         edx,dword ptr [ebp-10]
 00528A88    call        00529E9C
 00528A8D    mov         eax,dword ptr [eax+20]
 00528A90    and         eax,dword ptr [ebp-14]
>00528A93    je          00528AAE
 00528A95    mov         eax,dword ptr [ebp-4]
 00528A98    mov         eax,dword ptr [eax+258];TCustomImage32.?f258:TLayerCollection
 00528A9E    mov         edx,dword ptr [ebp-10]
 00528AA1    call        00529E9C
 00528AA6    mov         edx,dword ptr [ebp-8]
 00528AA9    call        0052A4B4
 00528AAE    inc         dword ptr [ebp-10]
 00528AB1    dec         dword ptr [ebp-18]
>00528AB4    jne         00528A7C
 00528AB6    mov         esp,ebp
 00528AB8    pop         ebp
 00528AB9    ret
end;*}

//00528ABC
{*procedure sub_00528ABC(?:?);
begin
 00528ABC    push        ebp
 00528ABD    mov         ebp,esp
 00528ABF    add         esp,0FFFFFFF0
 00528AC2    mov         dword ptr [ebp-8],edx
 00528AC5    mov         dword ptr [ebp-4],eax
 00528AC8    mov         eax,dword ptr [ebp-4]
 00528ACB    mov         eax,dword ptr [eax+250];TCustomImage32.?f250:TBitmap32
 00528AD1    mov         edx,dword ptr [eax]
 00528AD3    call        dword ptr [edx+24];TBitmap32.sub_0051E948
 00528AD6    test        al,al
>00528AD8    je          00528AFE
 00528ADA    mov         eax,dword ptr [ebp-8]
 00528ADD    xor         edx,edx
 00528ADF    mov         dword ptr [eax],edx
 00528AE1    mov         eax,dword ptr [ebp-8]
 00528AE4    xor         edx,edx
 00528AE6    mov         dword ptr [eax+8],edx
 00528AE9    mov         eax,dword ptr [ebp-8]
 00528AEC    xor         edx,edx
 00528AEE    mov         dword ptr [eax+4],edx
 00528AF1    mov         eax,dword ptr [ebp-8]
 00528AF4    xor         edx,edx
 00528AF6    mov         dword ptr [eax+0C],edx
>00528AF9    jmp         00528B8A
 00528AFE    lea         edx,[ebp-10]
 00528B01    mov         eax,dword ptr [ebp-4]
 00528B04    mov         ecx,dword ptr [eax]
 00528B06    call        dword ptr [ecx+14C];TCustomImage32.sub_00528B90
 00528B0C    mov         eax,dword ptr [ebp-0C]
 00528B0F    push        eax
 00528B10    mov         eax,dword ptr [ebp-8]
 00528B13    push        eax
 00528B14    mov         ecx,dword ptr [ebp-10]
 00528B17    xor         edx,edx
 00528B19    xor         eax,eax
 00528B1B    call        0041E714
 00528B20    mov         eax,dword ptr [ebp-4]
 00528B23    cmp         byte ptr [eax+254],1;TCustomImage32.?f254:byte
>00528B2A    jne         00528B56
 00528B2C    mov         eax,dword ptr [ebp-4]
 00528B2F    mov         ecx,dword ptr [eax+4C];TCustomImage32.Height:Integer
 00528B32    sub         ecx,dword ptr [ebp-0C]
 00528B35    sar         ecx,1
>00528B37    jns         00528B3C
 00528B39    adc         ecx,0
 00528B3C    mov         eax,dword ptr [ebp-4]
 00528B3F    mov         edx,dword ptr [eax+48];TCustomImage32.Width:Integer
 00528B42    sub         edx,dword ptr [ebp-10]
 00528B45    sar         edx,1
>00528B47    jns         00528B4C
 00528B49    adc         edx,0
 00528B4C    mov         eax,dword ptr [ebp-8]
 00528B4F    call        0051E124
>00528B54    jmp         00528B8A
 00528B56    mov         eax,dword ptr [ebp-4]
 00528B59    cmp         byte ptr [eax+254],3;TCustomImage32.?f254:byte
>00528B60    jne         00528B8A
 00528B62    mov         eax,dword ptr [ebp-4]
 00528B65    fld         dword ptr [eax+260];TCustomImage32.?f260:Single
 00528B6B    call        @ROUND
 00528B70    push        eax
 00528B71    mov         eax,dword ptr [ebp-4]
 00528B74    fld         dword ptr [eax+25C];TCustomImage32.?f25C:Single
 00528B7A    call        @ROUND
 00528B7F    mov         edx,eax
 00528B81    mov         eax,dword ptr [ebp-8]
 00528B84    pop         ecx
 00528B85    call        0051E124
 00528B8A    mov         esp,ebp
 00528B8C    pop         ebp
 00528B8D    ret
end;*}

//00528B90
{*procedure sub_00528B90(?:?);
begin
 00528B90    push        ebp
 00528B91    mov         ebp,esp
 00528B93    add         esp,0FFFFFFD4
 00528B96    mov         dword ptr [ebp-8],edx
 00528B99    mov         dword ptr [ebp-4],eax
 00528B9C    mov         eax,dword ptr [ebp-4]
 00528B9F    mov         eax,dword ptr [eax+250];TCustomImage32.?f250:TBitmap32
 00528BA5    mov         edx,dword ptr [eax]
 00528BA7    call        dword ptr [edx+24];TBitmap32.sub_0051E948
 00528BAA    test        al,al
>00528BAC    jne         00528BC0
 00528BAE    mov         eax,dword ptr [ebp-4]
 00528BB1    cmp         dword ptr [eax+48],0;TCustomImage32.Width:Integer
>00528BB5    je          00528BC0
 00528BB7    mov         eax,dword ptr [ebp-4]
 00528BBA    cmp         dword ptr [eax+4C],0;TCustomImage32.Height:Integer
>00528BBE    jne         00528BD4
 00528BC0    mov         eax,dword ptr [ebp-8]
 00528BC3    xor         edx,edx
 00528BC5    mov         dword ptr [eax],edx
 00528BC7    mov         eax,dword ptr [ebp-8]
 00528BCA    xor         edx,edx
 00528BCC    mov         dword ptr [eax+4],edx
>00528BCF    jmp         00528DEE
 00528BD4    lea         edx,[ebp-2C]
 00528BD7    mov         eax,dword ptr [ebp-4]
 00528BDA    mov         ecx,dword ptr [eax]
 00528BDC    call        dword ptr [ecx+0F0];TCustomImage32.sub_00527228
 00528BE2    mov         eax,dword ptr [ebp-24]
 00528BE5    sub         eax,dword ptr [ebp-2C]
 00528BE8    mov         dword ptr [ebp-10],eax
 00528BEB    mov         eax,dword ptr [ebp-20]
 00528BEE    sub         eax,dword ptr [ebp-28]
 00528BF1    mov         dword ptr [ebp-14],eax
 00528BF4    mov         eax,dword ptr [ebp-4]
 00528BF7    mov         al,byte ptr [eax+278];TCustomImage32.?f278:byte
 00528BFD    sub         al,4
>00528BFF    je          00528C0A
 00528C01    dec         al
>00528C03    je          00528C3B
>00528C05    jmp         00528CAD
 00528C0A    mov         eax,dword ptr [ebp-4]
 00528C0D    mov         eax,dword ptr [eax+250];TCustomImage32.?f250:TBitmap32
 00528C13    mov         eax,dword ptr [eax+34];TBitmap32.?f34:Single
 00528C16    cmp         eax,dword ptr [ebp-10]
>00528C19    jg          00528C2C
 00528C1B    mov         eax,dword ptr [ebp-4]
 00528C1E    mov         eax,dword ptr [eax+250];TCustomImage32.?f250:TBitmap32
 00528C24    mov         eax,dword ptr [eax+30];TBitmap32.?f30:Integer
 00528C27    cmp         eax,dword ptr [ebp-14]
>00528C2A    jle         00528C35
 00528C2C    mov         byte ptr [ebp-9],3
>00528C30    jmp         00528CB9
 00528C35    mov         byte ptr [ebp-9],0
>00528C39    jmp         00528CB9
 00528C3B    mov         eax,dword ptr [ebp-4]
 00528C3E    mov         eax,dword ptr [eax+250];TCustomImage32.?f250:TBitmap32
 00528C44    fild        dword ptr [eax+34];TBitmap32.?f34:Single
 00528C47    mov         eax,dword ptr [ebp-4]
 00528C4A    fmul        dword ptr [eax+270];TCustomImage32.?f270:Single
 00528C50    call        @ROUND
 00528C55    push        edx
 00528C56    push        eax
 00528C57    mov         eax,dword ptr [ebp-10]
 00528C5A    cdq
 00528C5B    cmp         edx,dword ptr [esp+4]
>00528C5F    jne         00528C6A
 00528C61    cmp         eax,dword ptr [esp]
 00528C64    pop         edx
 00528C65    pop         eax
>00528C66    jb          00528CA1
>00528C68    jmp         00528C6E
 00528C6A    pop         edx
 00528C6B    pop         eax
>00528C6C    jl          00528CA1
 00528C6E    mov         eax,dword ptr [ebp-4]
 00528C71    mov         eax,dword ptr [eax+250];TCustomImage32.?f250:TBitmap32
 00528C77    fild        dword ptr [eax+30];TBitmap32.?f30:Integer
 00528C7A    mov         eax,dword ptr [ebp-4]
 00528C7D    fmul        dword ptr [eax+274];TCustomImage32.?f274:Single
 00528C83    call        @ROUND
 00528C88    push        edx
 00528C89    push        eax
 00528C8A    mov         eax,dword ptr [ebp-14]
 00528C8D    cdq
 00528C8E    cmp         edx,dword ptr [esp+4]
>00528C92    jne         00528C9D
 00528C94    cmp         eax,dword ptr [esp]
 00528C97    pop         edx
 00528C98    pop         eax
>00528C99    jae         00528CA7
>00528C9B    jmp         00528CA1
 00528C9D    pop         edx
 00528C9E    pop         eax
>00528C9F    jge         00528CA7
 00528CA1    mov         byte ptr [ebp-9],3
>00528CA5    jmp         00528CB9
 00528CA7    mov         byte ptr [ebp-9],2
>00528CAB    jmp         00528CB9
 00528CAD    mov         eax,dword ptr [ebp-4]
 00528CB0    mov         al,byte ptr [eax+278];TCustomImage32.?f278:byte
 00528CB6    mov         byte ptr [ebp-9],al
 00528CB9    mov         al,byte ptr [ebp-9]
 00528CBC    sub         al,1
>00528CBE    jb          00528CCB
>00528CC0    je          00528CF3
 00528CC2    sub         al,2
>00528CC4    je          00528D09
>00528CC6    jmp         00528D8F
 00528CCB    mov         eax,dword ptr [ebp-4]
 00528CCE    mov         eax,dword ptr [eax+250];TCustomImage32.?f250:TBitmap32
 00528CD4    mov         eax,dword ptr [eax+34];TBitmap32.?f34:Single
 00528CD7    mov         edx,dword ptr [ebp-8]
 00528CDA    mov         dword ptr [edx],eax
 00528CDC    mov         eax,dword ptr [ebp-4]
 00528CDF    mov         eax,dword ptr [eax+250];TCustomImage32.?f250:TBitmap32
 00528CE5    mov         eax,dword ptr [eax+30];TBitmap32.?f30:Integer
 00528CE8    mov         edx,dword ptr [ebp-8]
 00528CEB    mov         dword ptr [edx+4],eax
>00528CEE    jmp         00528DCE
 00528CF3    mov         eax,dword ptr [ebp-8]
 00528CF6    mov         edx,dword ptr [ebp-10]
 00528CF9    mov         dword ptr [eax],edx
 00528CFB    mov         eax,dword ptr [ebp-8]
 00528CFE    mov         edx,dword ptr [ebp-14]
 00528D01    mov         dword ptr [eax+4],edx
>00528D04    jmp         00528DCE
 00528D09    mov         eax,dword ptr [ebp-4]
 00528D0C    mov         eax,dword ptr [eax+250];TCustomImage32.?f250:TBitmap32
 00528D12    mov         eax,dword ptr [eax+34];TBitmap32.?f34:Single
 00528D15    mov         edx,dword ptr [ebp-8]
 00528D18    mov         dword ptr [edx],eax
 00528D1A    mov         eax,dword ptr [ebp-4]
 00528D1D    mov         eax,dword ptr [eax+250];TCustomImage32.?f250:TBitmap32
 00528D23    mov         eax,dword ptr [eax+30];TBitmap32.?f30:Integer
 00528D26    mov         edx,dword ptr [ebp-8]
 00528D29    mov         dword ptr [edx+4],eax
 00528D2C    fild        dword ptr [ebp-10]
 00528D2F    mov         eax,dword ptr [ebp-8]
 00528D32    fild        dword ptr [eax]
 00528D34    fdivp       st(1),st
 00528D36    fstp        dword ptr [ebp-18]
 00528D39    wait
 00528D3A    fild        dword ptr [ebp-14]
 00528D3D    mov         eax,dword ptr [ebp-8]
 00528D40    fild        dword ptr [eax+4]
 00528D43    fdivp       st(1),st
 00528D45    fstp        dword ptr [ebp-1C]
 00528D48    wait
 00528D49    fld         dword ptr [ebp-18]
 00528D4C    fcomp       dword ptr [ebp-1C]
 00528D4F    fnstsw      al
 00528D51    sahf
>00528D52    jb          00528D71
 00528D54    mov         eax,dword ptr [ebp-8]
 00528D57    fild        dword ptr [eax]
 00528D59    fmul        dword ptr [ebp-1C]
 00528D5C    call        @ROUND
 00528D61    mov         edx,dword ptr [ebp-8]
 00528D64    mov         dword ptr [edx],eax
 00528D66    mov         eax,dword ptr [ebp-8]
 00528D69    mov         edx,dword ptr [ebp-14]
 00528D6C    mov         dword ptr [eax+4],edx
>00528D6F    jmp         00528DCE
 00528D71    mov         eax,dword ptr [ebp-8]
 00528D74    mov         edx,dword ptr [ebp-10]
 00528D77    mov         dword ptr [eax],edx
 00528D79    mov         eax,dword ptr [ebp-8]
 00528D7C    fild        dword ptr [eax+4]
 00528D7F    fmul        dword ptr [ebp-18]
 00528D82    call        @ROUND
 00528D87    mov         edx,dword ptr [ebp-8]
 00528D8A    mov         dword ptr [edx+4],eax
>00528D8D    jmp         00528DCE
 00528D8F    mov         eax,dword ptr [ebp-4]
 00528D92    mov         eax,dword ptr [eax+250];TCustomImage32.?f250:TBitmap32
 00528D98    fild        dword ptr [eax+34];TBitmap32.?f34:Single
 00528D9B    mov         eax,dword ptr [ebp-4]
 00528D9E    fmul        dword ptr [eax+270];TCustomImage32.?f270:Single
 00528DA4    call        @ROUND
 00528DA9    mov         edx,dword ptr [ebp-8]
 00528DAC    mov         dword ptr [edx],eax
 00528DAE    mov         eax,dword ptr [ebp-4]
 00528DB1    mov         eax,dword ptr [eax+250];TCustomImage32.?f250:TBitmap32
 00528DB7    fild        dword ptr [eax+30];TBitmap32.?f30:Integer
 00528DBA    mov         eax,dword ptr [ebp-4]
 00528DBD    fmul        dword ptr [eax+274];TCustomImage32.?f274:Single
 00528DC3    call        @ROUND
 00528DC8    mov         edx,dword ptr [ebp-8]
 00528DCB    mov         dword ptr [edx+4],eax
 00528DCE    mov         eax,dword ptr [ebp-8]
 00528DD1    cmp         dword ptr [eax],0
>00528DD4    jg          00528DDD
 00528DD6    mov         eax,dword ptr [ebp-8]
 00528DD9    xor         edx,edx
 00528DDB    mov         dword ptr [eax],edx
 00528DDD    mov         eax,dword ptr [ebp-8]
 00528DE0    cmp         dword ptr [eax+4],0
>00528DE4    jg          00528DEE
 00528DE6    mov         eax,dword ptr [ebp-8]
 00528DE9    xor         edx,edx
 00528DEB    mov         dword ptr [eax+4],edx
 00528DEE    mov         esp,ebp
 00528DF0    pop         ebp
 00528DF1    ret
end;*}

//00528DF4
procedure sub_00528DF4;
begin
{*
 00528DF4    push        ebp
 00528DF5    mov         ebp,esp
 00528DF7    add         esp,0FFFFFFE8
 00528DFA    mov         dword ptr [ebp-4],eax
 00528DFD    mov         eax,dword ptr [ebp-4]
 00528E00    mov         eax,dword ptr [eax+264];TCustomImage32.?f264:TPaintStages
 00528E06    call        00526E00
 00528E0B    mov         dword ptr [ebp-8],eax
 00528E0E    mov         eax,dword ptr [ebp-8]
 00528E11    mov         byte ptr [eax],1
 00528E14    mov         eax,dword ptr [ebp-8]
 00528E17    mov         byte ptr [eax+1],1
 00528E1B    mov         eax,dword ptr [ebp-8]
 00528E1E    mov         dword ptr [eax+4],3
 00528E25    mov         eax,dword ptr [ebp-4]
 00528E28    mov         eax,dword ptr [eax+264];TCustomImage32.?f264:TPaintStages
 00528E2E    call        00526E00
 00528E33    mov         dword ptr [ebp-0C],eax
 00528E36    mov         eax,dword ptr [ebp-0C]
 00528E39    mov         byte ptr [eax],1
 00528E3C    mov         eax,dword ptr [ebp-0C]
 00528E3F    mov         byte ptr [eax+1],0
 00528E43    mov         eax,dword ptr [ebp-0C]
 00528E46    mov         dword ptr [eax+4],6
 00528E4D    mov         eax,dword ptr [ebp-4]
 00528E50    mov         eax,dword ptr [eax+264];TCustomImage32.?f264:TPaintStages
 00528E56    call        00526E00
 00528E5B    mov         dword ptr [ebp-10],eax
 00528E5E    mov         eax,dword ptr [ebp-10]
 00528E61    mov         byte ptr [eax],1
 00528E64    mov         eax,dword ptr [ebp-10]
 00528E67    mov         byte ptr [eax+1],1
 00528E6B    mov         eax,dword ptr [ebp-10]
 00528E6E    mov         dword ptr [eax+4],4
 00528E75    mov         eax,dword ptr [ebp-4]
 00528E78    mov         eax,dword ptr [eax+264];TCustomImage32.?f264:TPaintStages
 00528E7E    call        00526E00
 00528E83    mov         dword ptr [ebp-14],eax
 00528E86    mov         eax,dword ptr [ebp-14]
 00528E89    mov         byte ptr [eax],1
 00528E8C    mov         eax,dword ptr [ebp-14]
 00528E8F    mov         byte ptr [eax+1],0
 00528E93    mov         eax,dword ptr [ebp-14]
 00528E96    mov         dword ptr [eax+4],7
 00528E9D    mov         eax,dword ptr [ebp-4]
 00528EA0    mov         eax,dword ptr [eax+264];TCustomImage32.?f264:TPaintStages
 00528EA6    call        00526E00
 00528EAB    mov         dword ptr [ebp-18],eax
 00528EAE    mov         eax,dword ptr [ebp-18]
 00528EB1    mov         byte ptr [eax],1
 00528EB4    mov         eax,dword ptr [ebp-18]
 00528EB7    mov         byte ptr [eax+1],1
 00528EBB    mov         eax,dword ptr [ebp-18]
 00528EBE    mov         dword ptr [eax+4],5
 00528EC5    mov         eax,dword ptr [ebp-18]
 00528EC8    mov         dword ptr [eax+8],80000000
 00528ECF    mov         esp,ebp
 00528ED1    pop         ebp
 00528ED2    ret
*}
end;

//00528ED4
procedure sub_00528ED4;
begin
{*
 00528ED4    push        ebp
 00528ED5    mov         ebp,esp
 00528ED7    push        ecx
 00528ED8    mov         dword ptr [ebp-4],eax
 00528EDB    mov         eax,dword ptr [ebp-4]
 00528EDE    mov         byte ptr [eax+218],0;TCustomImage32.?f218:byte
 00528EE5    mov         eax,dword ptr [ebp-4]
 00528EE8    mov         byte ptr [eax+2E8],0;TCustomImage32.?f2E8:byte
 00528EEF    mov         eax,dword ptr [ebp-4]
 00528EF2    call        00527260
 00528EF7    pop         ecx
 00528EF8    pop         ebp
 00528EF9    ret
*}
end;

//00528EFC
procedure sub_00528EFC(?:TCustomImage32);
begin
{*
 00528EFC    push        ebp
 00528EFD    mov         ebp,esp
 00528EFF    push        ecx
 00528F00    mov         dword ptr [ebp-4],eax
 00528F03    mov         eax,dword ptr [ebp-4]
 00528F06    mov         eax,dword ptr [eax+224];TCustomImage32.?f224:dword
 00528F0C    mov         edx,dword ptr [eax]
 00528F0E    call        dword ptr [edx]
 00528F10    test        al,al
>00528F12    je          00528F22
 00528F14    mov         eax,dword ptr [ebp-4]
 00528F17    mov         eax,dword ptr [eax+224];TCustomImage32.?f224:dword
 00528F1D    mov         edx,dword ptr [eax]
 00528F1F    call        dword ptr [edx+28]
 00528F22    mov         eax,dword ptr [ebp-4]
 00528F25    mov         byte ptr [eax+2E8],0;TCustomImage32.?f2E8:byte
 00528F2C    pop         ecx
 00528F2D    pop         ebp
 00528F2E    ret
*}
end;

//00528F30
procedure sub_00528F30;
begin
{*
 00528F30    push        ebp
 00528F31    mov         ebp,esp
 00528F33    push        ecx
 00528F34    mov         dword ptr [ebp-4],eax
 00528F37    mov         eax,dword ptr [ebp-4]
 00528F3A    call        005272B8
 00528F3F    mov         eax,dword ptr [ebp-4]
 00528F42    mov         edx,dword ptr [eax]
 00528F44    call        dword ptr [edx+100];TCustomImage32.sub_00528170
 00528F4A    pop         ecx
 00528F4B    pop         ebp
 00528F4C    ret
*}
end;

//00528F50
{*procedure TCustomImage32.sub_00485588(?:?; ?:?; ?:?; ?:?);
begin
 00528F50    push        ebp
 00528F51    mov         ebp,esp
 00528F53    add         esp,0FFFFFFF4
 00528F56    push        ebx
 00528F57    push        esi
 00528F58    mov         byte ptr [ebp-6],cl
 00528F5B    mov         byte ptr [ebp-5],dl
 00528F5E    mov         dword ptr [ebp-4],eax
 00528F61    mov         eax,dword ptr [ebp+0C]
 00528F64    push        eax
 00528F65    mov         eax,dword ptr [ebp+8]
 00528F68    push        eax
 00528F69    mov         cl,byte ptr [ebp-6]
 00528F6C    mov         dl,byte ptr [ebp-5]
 00528F6F    mov         eax,dword ptr [ebp-4]
 00528F72    call        TCustomPaintBox32.sub_00485588
 00528F77    mov         eax,dword ptr [ebp-4]
 00528F7A    cmp         byte ptr [eax+1A4],0;TCustomImage32.FTabStop:Boolean
>00528F81    je          00528F9E
 00528F83    mov         eax,dword ptr [ebp-4]
 00528F86    mov         si,0FFB8
 00528F8A    call        @CallDynaInst;TWinControl.sub_0048BFC8
 00528F8F    test        al,al
>00528F91    je          00528F9E
 00528F93    mov         eax,dword ptr [ebp-4]
 00528F96    mov         edx,dword ptr [eax]
 00528F98    call        dword ptr [edx+0C4];TCustomImage32.sub_0048C028
 00528F9E    mov         eax,dword ptr [ebp-4]
 00528FA1    mov         eax,dword ptr [eax+258];TCustomImage32.?f258:TLayerCollection
 00528FA7    cmp         byte ptr [eax+8],0;TLayerCollection.?f8:byte
>00528FAB    je          00528FCE
 00528FAD    mov         eax,dword ptr [ebp+0C]
 00528FB0    push        eax
 00528FB1    mov         eax,dword ptr [ebp+8]
 00528FB4    push        eax
 00528FB5    mov         cl,byte ptr [ebp-6]
 00528FB8    mov         dl,byte ptr [ebp-5]
 00528FBB    mov         eax,dword ptr [ebp-4]
 00528FBE    mov         eax,dword ptr [eax+258];TCustomImage32.?f258:TLayerCollection
 00528FC4    call        00529F4C
 00528FC9    mov         dword ptr [ebp-0C],eax
>00528FCC    jmp         00528FD3
 00528FCE    xor         eax,eax
 00528FD0    mov         dword ptr [ebp-0C],eax
 00528FD3    cmp         byte ptr [ebp-5],0
>00528FD7    je          00528FE8
 00528FD9    mov         eax,dword ptr [ebp-4]
 00528FDC    mov         eax,dword ptr [eax+258];TCustomImage32.?f258:TLayerCollection
 00528FE2    cmp         dword ptr [eax+0C],0;TLayerCollection.?fC:dword
>00528FE6    je          00528FF2
 00528FE8    mov         dl,1
 00528FEA    mov         eax,dword ptr [ebp-4]
 00528FED    call        00483BB0
 00528FF2    mov         eax,dword ptr [ebp+0C]
 00528FF5    push        eax
 00528FF6    mov         eax,dword ptr [ebp+8]
 00528FF9    push        eax
 00528FFA    mov         eax,dword ptr [ebp-0C]
 00528FFD    push        eax
 00528FFE    mov         cl,byte ptr [ebp-6]
 00529001    mov         dl,byte ptr [ebp-5]
 00529004    mov         eax,dword ptr [ebp-4]
 00529007    mov         ebx,dword ptr [eax]
 00529009    call        dword ptr [ebx+10C];TCustomImage32.sub_00529114
 0052900F    pop         esi
 00529010    pop         ebx
 00529011    mov         esp,ebp
 00529013    pop         ebp
 00529014    ret         8
end;*}

//00529018
{*procedure TCustomImage32.sub_004858F4(?:?; ?:?; ?:?);
begin
 00529018    push        ebp
 00529019    mov         ebp,esp
 0052901B    add         esp,0FFFFFFF0
 0052901E    push        ebx
 0052901F    mov         dword ptr [ebp-0C],ecx
 00529022    mov         byte ptr [ebp-5],dl
 00529025    mov         dword ptr [ebp-4],eax
 00529028    mov         eax,dword ptr [ebp+8]
 0052902B    push        eax
 0052902C    mov         ecx,dword ptr [ebp-0C]
 0052902F    mov         dl,byte ptr [ebp-5]
 00529032    mov         eax,dword ptr [ebp-4]
 00529035    call        TControl.sub_004858F4
 0052903A    mov         eax,dword ptr [ebp-4]
 0052903D    mov         eax,dword ptr [eax+258];TCustomImage32.?f258:TLayerCollection
 00529043    cmp         byte ptr [eax+8],0;TLayerCollection.?f8:byte
>00529047    je          00529066
 00529049    mov         eax,dword ptr [ebp+8]
 0052904C    push        eax
 0052904D    mov         ecx,dword ptr [ebp-0C]
 00529050    mov         dl,byte ptr [ebp-5]
 00529053    mov         eax,dword ptr [ebp-4]
 00529056    mov         eax,dword ptr [eax+258];TCustomImage32.?f258:TLayerCollection
 0052905C    call        00529FF4
 00529061    mov         dword ptr [ebp-10],eax
>00529064    jmp         0052906B
 00529066    xor         eax,eax
 00529068    mov         dword ptr [ebp-10],eax
 0052906B    mov         eax,dword ptr [ebp+8]
 0052906E    push        eax
 0052906F    mov         eax,dword ptr [ebp-10]
 00529072    push        eax
 00529073    mov         ecx,dword ptr [ebp-0C]
 00529076    mov         dl,byte ptr [ebp-5]
 00529079    mov         eax,dword ptr [ebp-4]
 0052907C    mov         ebx,dword ptr [eax]
 0052907E    call        dword ptr [ebx+110];TCustomImage32.sub_00529160
 00529084    pop         ebx
 00529085    mov         esp,ebp
 00529087    pop         ebp
 00529088    ret         4
end;*}

//0052908C
{*procedure TCustomImage32.sub_004859D0(?:?; ?:?; ?:?; ?:?);
begin
 0052908C    push        ebp
 0052908D    mov         ebp,esp
 0052908F    add         esp,0FFFFFFF4
 00529092    push        ebx
 00529093    mov         byte ptr [ebp-6],cl
 00529096    mov         byte ptr [ebp-5],dl
 00529099    mov         dword ptr [ebp-4],eax
 0052909C    mov         eax,dword ptr [ebp-4]
 0052909F    mov         eax,dword ptr [eax+258];TCustomImage32.?f258:TLayerCollection
 005290A5    cmp         byte ptr [eax+8],0;TLayerCollection.?f8:byte
>005290A9    je          005290CC
 005290AB    mov         eax,dword ptr [ebp+0C]
 005290AE    push        eax
 005290AF    mov         eax,dword ptr [ebp+8]
 005290B2    push        eax
 005290B3    mov         cl,byte ptr [ebp-6]
 005290B6    mov         dl,byte ptr [ebp-5]
 005290B9    mov         eax,dword ptr [ebp-4]
 005290BC    mov         eax,dword ptr [eax+258];TCustomImage32.?f258:TLayerCollection
 005290C2    call        0052A078
 005290C7    mov         dword ptr [ebp-0C],eax
>005290CA    jmp         005290D1
 005290CC    xor         eax,eax
 005290CE    mov         dword ptr [ebp-0C],eax
 005290D1    cmp         byte ptr [ebp-5],0
>005290D5    jne         005290F0
 005290D7    mov         eax,dword ptr [ebp-4]
 005290DA    mov         eax,dword ptr [eax+258];TCustomImage32.?f258:TLayerCollection
 005290E0    cmp         dword ptr [eax+0C],0;TLayerCollection.?fC:dword
>005290E4    jne         005290F0
 005290E6    xor         edx,edx
 005290E8    mov         eax,dword ptr [ebp-4]
 005290EB    call        00483BB0
 005290F0    mov         eax,dword ptr [ebp+0C]
 005290F3    push        eax
 005290F4    mov         eax,dword ptr [ebp+8]
 005290F7    push        eax
 005290F8    mov         eax,dword ptr [ebp-0C]
 005290FB    push        eax
 005290FC    mov         cl,byte ptr [ebp-6]
 005290FF    mov         dl,byte ptr [ebp-5]
 00529102    mov         eax,dword ptr [ebp-4]
 00529105    mov         ebx,dword ptr [eax]
 00529107    call        dword ptr [ebx+114];TCustomImage32.sub_005291A8
 0052910D    pop         ebx
 0052910E    mov         esp,ebp
 00529110    pop         ebp
 00529111    ret         8
end;*}

//00529114
{*procedure sub_00529114(?:?; ?:?; ?:?; ?:?; ?:?);
begin
 00529114    push        ebp
 00529115    mov         ebp,esp
 00529117    add         esp,0FFFFFFF8
 0052911A    push        ebx
 0052911B    mov         byte ptr [ebp-6],cl
 0052911E    mov         byte ptr [ebp-5],dl
 00529121    mov         dword ptr [ebp-4],eax
 00529124    mov         eax,dword ptr [ebp-4]
 00529127    cmp         word ptr [eax+29A],0;TCustomImage32.?f29A:word
>0052912F    je          00529156
 00529131    mov         al,byte ptr [ebp-6]
 00529134    push        eax
 00529135    mov         eax,dword ptr [ebp+10]
 00529138    push        eax
 00529139    mov         eax,dword ptr [ebp+0C]
 0052913C    push        eax
 0052913D    mov         eax,dword ptr [ebp+8]
 00529140    push        eax
 00529141    mov         ebx,dword ptr [ebp-4]
 00529144    mov         cl,byte ptr [ebp-5]
 00529147    mov         edx,dword ptr [ebp-4]
 0052914A    mov         eax,dword ptr [ebx+29C];TCustomImage32.?f29C:dword
 00529150    call        dword ptr [ebx+298]
 00529156    pop         ebx
 00529157    pop         ecx
 00529158    pop         ecx
 00529159    pop         ebp
 0052915A    ret         0C
end;*}

//00529160
{*procedure sub_00529160(?:?; ?:?; ?:?; ?:?);
begin
 00529160    push        ebp
 00529161    mov         ebp,esp
 00529163    add         esp,0FFFFFFF4
 00529166    push        ebx
 00529167    mov         dword ptr [ebp-0C],ecx
 0052916A    mov         byte ptr [ebp-5],dl
 0052916D    mov         dword ptr [ebp-4],eax
 00529170    mov         eax,dword ptr [ebp-4]
 00529173    cmp         word ptr [eax+2A2],0;TCustomImage32.?f2A2:word
>0052917B    je          0052919E
 0052917D    mov         eax,dword ptr [ebp-0C]
 00529180    push        eax
 00529181    mov         eax,dword ptr [ebp+0C]
 00529184    push        eax
 00529185    mov         eax,dword ptr [ebp+8]
 00529188    push        eax
 00529189    mov         ebx,dword ptr [ebp-4]
 0052918C    mov         cl,byte ptr [ebp-5]
 0052918F    mov         edx,dword ptr [ebp-4]
 00529192    mov         eax,dword ptr [ebx+2A4];TCustomImage32.?f2A4:dword
 00529198    call        dword ptr [ebx+2A0]
 0052919E    pop         ebx
 0052919F    mov         esp,ebp
 005291A1    pop         ebp
 005291A2    ret         8
end;*}

//005291A8
{*procedure sub_005291A8(?:?; ?:?; ?:?; ?:?; ?:?);
begin
 005291A8    push        ebp
 005291A9    mov         ebp,esp
 005291AB    add         esp,0FFFFFFF8
 005291AE    push        ebx
 005291AF    mov         byte ptr [ebp-6],cl
 005291B2    mov         byte ptr [ebp-5],dl
 005291B5    mov         dword ptr [ebp-4],eax
 005291B8    mov         eax,dword ptr [ebp-4]
 005291BB    cmp         word ptr [eax+2AA],0;TCustomImage32.?f2AA:word
>005291C3    je          005291EA
 005291C5    mov         al,byte ptr [ebp-6]
 005291C8    push        eax
 005291C9    mov         eax,dword ptr [ebp+10]
 005291CC    push        eax
 005291CD    mov         eax,dword ptr [ebp+0C]
 005291D0    push        eax
 005291D1    mov         eax,dword ptr [ebp+8]
 005291D4    push        eax
 005291D5    mov         ebx,dword ptr [ebp-4]
 005291D8    mov         cl,byte ptr [ebp-5]
 005291DB    mov         edx,dword ptr [ebp-4]
 005291DE    mov         eax,dword ptr [ebx+2AC];TCustomImage32.?f2AC:dword
 005291E4    call        dword ptr [ebx+2A8]
 005291EA    pop         ebx
 005291EB    pop         ecx
 005291EC    pop         ecx
 005291ED    pop         ebp
 005291EE    ret         0C
end;*}

//005291F4
procedure sub_005291F4;
begin
{*
 005291F4    push        ebp
 005291F5    mov         ebp,esp
 005291F7    push        ecx
 005291F8    mov         dword ptr [ebp-4],eax
 005291FB    mov         eax,dword ptr [ebp-4]
 005291FE    mov         eax,dword ptr [eax+258];TCustomImage32.?f258:TLayerCollection
 00529204    cmp         byte ptr [eax+8],0;TLayerCollection.?f8:byte
>00529208    je          00529227
 0052920A    mov         eax,dword ptr [ebp-4]
 0052920D    mov         eax,dword ptr [eax+258];TCustomImage32.?f258:TLayerCollection
 00529213    cmp         dword ptr [eax+0C],0;TLayerCollection.?fC:dword
>00529217    jne         00529227
 00529219    mov         eax,[0056E604];^Screen:TScreen
 0052921E    mov         eax,dword ptr [eax]
 00529220    xor         edx,edx
 00529222    call        004A9064
 00529227    mov         eax,dword ptr [ebp-4]
 0052922A    call        00527360
 0052922F    pop         ecx
 00529230    pop         ebp
 00529231    ret
*}
end;

//00529234
{*procedure sub_00529234(?:?; ?:?);
begin
 00529234    push        ebp
 00529235    mov         ebp,esp
 00529237    add         esp,0FFFFFFD0
 0052923A    push        ebx
 0052923B    push        esi
 0052923C    push        edi
 0052923D    mov         esi,ecx
 0052923F    lea         edi,[ebp-30]
 00529242    movs        dword ptr [edi],dword ptr [esi]
 00529243    movs        dword ptr [edi],dword ptr [esi]
 00529244    movs        dword ptr [edi],dword ptr [esi]
 00529245    movs        dword ptr [edi],dword ptr [esi]
 00529246    mov         dword ptr [ebp-8],edx
 00529249    mov         dword ptr [ebp-4],eax
 0052924C    mov         eax,dword ptr [ebp-4]
 0052924F    mov         al,byte ptr [eax+219];TCustomImage32.?f219:byte
 00529255    mov         byte ptr [ebp-9],al
 00529258    xor         edx,edx
 0052925A    mov         eax,dword ptr [ebp-4]
 0052925D    mov         ecx,dword ptr [eax]
 0052925F    call        dword ptr [ecx+0CC];TImage32.SetRepaintMode
 00529265    mov         eax,dword ptr [ebp-4]
 00529268    lea         edi,[eax+2C0];TCustomImage32.?f2C0:?
 0052926E    lea         esi,[ebp-30]
 00529271    movs        dword ptr [edi],dword ptr [esi]
 00529272    movs        dword ptr [edi],dword ptr [esi]
 00529273    movs        dword ptr [edi],dword ptr [esi]
 00529274    movs        dword ptr [edi],dword ptr [esi]
 00529275    mov         eax,dword ptr [ebp-4]
 00529278    add         eax,2C0;TCustomImage32.?f2C0:?
 0052927D    mov         dword ptr [ebp-14],eax
 00529280    mov         eax,dword ptr [ebp-4]
 00529283    add         eax,2D0;TCustomImage32.?f2D0:?
 00529288    mov         dword ptr [ebp-18],eax
 0052928B    mov         eax,dword ptr [ebp-14]
 0052928E    mov         eax,dword ptr [eax+8]
 00529291    mov         edx,dword ptr [ebp-14]
 00529294    sub         eax,dword ptr [edx]
 00529296    test        eax,eax
>00529298    jle         005292BC
 0052929A    mov         eax,dword ptr [ebp-14]
 0052929D    mov         eax,dword ptr [eax+0C]
 005292A0    mov         edx,dword ptr [ebp-14]
 005292A3    sub         eax,dword ptr [edx+4]
 005292A6    test        eax,eax
>005292A8    jle         005292BC
 005292AA    mov         eax,dword ptr [ebp-4]
 005292AD    mov         eax,dword ptr [eax+250];TCustomImage32.?f250:TBitmap32
 005292B3    mov         edx,dword ptr [eax]
 005292B5    call        dword ptr [edx+24];TBitmap32.sub_0051E948
 005292B8    test        al,al
>005292BA    je          005292D6
 005292BC    mov         eax,dword ptr [ebp-4]
 005292BF    lea         edi,[eax+2D0];TCustomImage32.?f2D0:?
 005292C5    mov         esi,56D4B4
 005292CA    mov         ecx,6
 005292CF    rep movs    dword ptr [edi],dword ptr [esi]
>005292D1    jmp         00529392
 005292D6    mov         eax,dword ptr [ebp-14]
 005292D9    mov         eax,dword ptr [eax]
 005292DB    mov         edx,dword ptr [ebp-18]
 005292DE    mov         dword ptr [edx+8],eax
 005292E1    mov         eax,dword ptr [ebp-14]
 005292E4    mov         eax,dword ptr [eax+4]
 005292E7    mov         edx,dword ptr [ebp-18]
 005292EA    mov         dword ptr [edx+0C],eax
 005292ED    mov         eax,dword ptr [ebp-4]
 005292F0    mov         eax,dword ptr [eax+250];TCustomImage32.?f250:TBitmap32
 005292F6    mov         eax,dword ptr [eax+34];TBitmap32.?f34:Single
 005292F9    push        eax
 005292FA    push        10000
 005292FF    mov         eax,dword ptr [ebp-14]
 00529302    mov         eax,dword ptr [eax+8]
 00529305    mov         edx,dword ptr [ebp-14]
 00529308    sub         eax,dword ptr [edx]
 0052930A    push        eax
 0052930B    call        kernel32.MulDiv
 00529310    mov         edx,dword ptr [ebp-18]
 00529313    mov         dword ptr [edx],eax
 00529315    mov         eax,dword ptr [ebp-4]
 00529318    mov         eax,dword ptr [eax+250];TCustomImage32.?f250:TBitmap32
 0052931E    mov         eax,dword ptr [eax+30];TBitmap32.?f30:Integer
 00529321    push        eax
 00529322    push        10000
 00529327    mov         eax,dword ptr [ebp-14]
 0052932A    mov         eax,dword ptr [eax+0C]
 0052932D    mov         edx,dword ptr [ebp-14]
 00529330    sub         eax,dword ptr [edx+4]
 00529333    push        eax
 00529334    call        kernel32.MulDiv
 00529339    mov         edx,dword ptr [ebp-18]
 0052933C    mov         dword ptr [edx+4],eax
 0052933F    mov         eax,dword ptr [ebp-14]
 00529342    mov         eax,dword ptr [eax+8]
 00529345    mov         edx,dword ptr [ebp-14]
 00529348    sub         eax,dword ptr [edx]
 0052934A    push        eax
 0052934B    push        10000
 00529350    mov         eax,dword ptr [ebp-4]
 00529353    mov         eax,dword ptr [eax+250];TCustomImage32.?f250:TBitmap32
 00529359    mov         eax,dword ptr [eax+34];TBitmap32.?f34:Single
 0052935C    push        eax
 0052935D    call        kernel32.MulDiv
 00529362    mov         edx,dword ptr [ebp-18]
 00529365    mov         dword ptr [edx+10],eax
 00529368    mov         eax,dword ptr [ebp-14]
 0052936B    mov         eax,dword ptr [eax+0C]
 0052936E    mov         edx,dword ptr [ebp-14]
 00529371    sub         eax,dword ptr [edx+4]
 00529374    push        eax
 00529375    push        10000
 0052937A    mov         eax,dword ptr [ebp-4]
 0052937D    mov         eax,dword ptr [eax+250];TCustomImage32.?f250:TBitmap32
 00529383    mov         eax,dword ptr [eax+30];TBitmap32.?f30:Integer
 00529386    push        eax
 00529387    call        kernel32.MulDiv
 0052938C    mov         edx,dword ptr [ebp-18]
 0052938F    mov         dword ptr [edx+14],eax
 00529392    mov         eax,dword ptr [ebp-4]
 00529395    mov         byte ptr [eax+2E8],1;TCustomImage32.?f2E8:byte
 0052939C    mov         eax,dword ptr [ebp-4]
 0052939F    mov         byte ptr [eax+2F4],1;TCustomImage32.?f2F4:byte
 005293A6    xor         eax,eax
 005293A8    push        ebp
 005293A9    push        5294D4
 005293AE    push        dword ptr fs:[eax]
 005293B1    mov         dword ptr fs:[eax],esp
 005293B4    mov         eax,dword ptr [ebp-4]
 005293B7    mov         eax,dword ptr [eax+264];TCustomImage32.?f264:TPaintStages
 005293BD    call        00526E90
 005293C2    dec         eax
 005293C3    test        eax,eax
>005293C5    jl          005294BC
 005293CB    inc         eax
 005293CC    mov         dword ptr [ebp-1C],eax
 005293CF    mov         dword ptr [ebp-10],0
 005293D6    mov         eax,dword ptr [ebp-4]
 005293D9    mov         eax,dword ptr [eax+264];TCustomImage32.?f264:TPaintStages
 005293DF    mov         edx,dword ptr [ebp-10]
 005293E2    call        00526EEC
 005293E7    mov         dword ptr [ebp-20],eax
 005293EA    mov         eax,dword ptr [ebp-20]
 005293ED    cmp         byte ptr [eax+1],0
>005293F1    je          005294B0
 005293F7    mov         eax,dword ptr [ebp-20]
 005293FA    mov         eax,dword ptr [eax+4]
 005293FD    cmp         eax,7
>00529400    ja          005294B0
 00529406    jmp         dword ptr [eax*4+52940D]
 00529406    dd          005294B0
 00529406    dd          0052942D
 00529406    dd          00529440
 00529406    dd          00529453
 00529406    dd          00529466
 00529406    dd          00529479
 00529406    dd          0052948C
 00529406    dd          0052949F
 0052942D    mov         ecx,dword ptr [ebp-10]
 00529430    mov         edx,dword ptr [ebp-8]
 00529433    mov         eax,dword ptr [ebp-4]
 00529436    mov         ebx,dword ptr [eax]
 00529438    call        dword ptr [ebx+13C];TCustomImage32.sub_005288AC
>0052943E    jmp         005294B0
 00529440    mov         ecx,dword ptr [ebp-10]
 00529443    mov         edx,dword ptr [ebp-8]
 00529446    mov         eax,dword ptr [ebp-4]
 00529449    mov         ebx,dword ptr [eax]
 0052944B    call        dword ptr [ebx+130];TCustomImage32.sub_00528844
>00529451    jmp         005294B0
 00529453    mov         ecx,dword ptr [ebp-10]
 00529456    mov         edx,dword ptr [ebp-8]
 00529459    mov         eax,dword ptr [ebp-4]
 0052945C    mov         ebx,dword ptr [eax]
 0052945E    call        dword ptr [ebx+134];TCustomImage32.sub_005286A8
>00529464    jmp         005294B0
 00529466    mov         ecx,dword ptr [ebp-10]
 00529469    mov         edx,dword ptr [ebp-8]
 0052946C    mov         eax,dword ptr [ebp-4]
 0052946F    mov         ebx,dword ptr [eax]
 00529471    call        dword ptr [ebx+140];TCustomImage32.sub_005288E8
>00529477    jmp         005294B0
 00529479    mov         ecx,dword ptr [ebp-10]
 0052947C    mov         edx,dword ptr [ebp-8]
 0052947F    mov         eax,dword ptr [ebp-4]
 00529482    mov         ebx,dword ptr [eax]
 00529484    call        dword ptr [ebx+144];TCustomImage32.sub_00528A38
>0052948A    jmp         005294B0
 0052948C    mov         ecx,dword ptr [ebp-10]
 0052948F    mov         edx,dword ptr [ebp-8]
 00529492    mov         eax,dword ptr [ebp-4]
 00529495    mov         ebx,dword ptr [eax]
 00529497    call        dword ptr [ebx+138];TCustomImage32.sub_0052886C
>0052949D    jmp         005294B0
 0052949F    mov         ecx,dword ptr [ebp-10]
 005294A2    mov         edx,dword ptr [ebp-8]
 005294A5    mov         eax,dword ptr [ebp-4]
 005294A8    mov         ebx,dword ptr [eax]
 005294AA    call        dword ptr [ebx+12C];TCustomImage32.sub_0052867C
 005294B0    inc         dword ptr [ebp-10]
 005294B3    dec         dword ptr [ebp-1C]
>005294B6    jne         005293D6
 005294BC    xor         eax,eax
 005294BE    pop         edx
 005294BF    pop         ecx
 005294C0    pop         ecx
 005294C1    mov         dword ptr fs:[eax],edx
 005294C4    push        5294DB
 005294C9    mov         eax,dword ptr [ebp-4]
 005294CC    mov         byte ptr [eax+2F4],0;TCustomImage32.?f2F4:byte
 005294D3    ret
>005294D4    jmp         @HandleFinally
>005294D9    jmp         005294C9
 005294DB    mov         eax,dword ptr [ebp-4]
 005294DE    mov         byte ptr [eax+2E8],0;TCustomImage32.?f2E8:byte
 005294E5    mov         dl,byte ptr [ebp-9]
 005294E8    mov         eax,dword ptr [ebp-4]
 005294EB    mov         ecx,dword ptr [eax]
 005294ED    call        dword ptr [ecx+0CC];TImage32.SetRepaintMode
 005294F3    pop         edi
 005294F4    pop         esi
 005294F5    pop         ebx
 005294F6    mov         esp,ebp
 005294F8    pop         ebp
 005294F9    ret
end;*}

//005294FC
procedure TCustomImage32.sub_0048271C;
begin
{*
 005294FC    push        ebp
 005294FD    mov         ebp,esp
 005294FF    push        ecx
 00529500    mov         dword ptr [ebp-4],eax
 00529503    mov         eax,dword ptr [ebp-4]
 00529506    call        00528EFC
 0052950B    mov         eax,dword ptr [ebp-4]
 0052950E    call        TCustomPaintBox32.sub_0048271C
 00529513    pop         ecx
 00529514    pop         ebp
 00529515    ret
*}
end;

//00529518
procedure TImage32.SetBitmap(Value:TBitmap32);
begin
{*
 00529518    push        ebp
 00529519    mov         ebp,esp
 0052951B    add         esp,0FFFFFFF8
 0052951E    mov         dword ptr [ebp-8],edx
 00529521    mov         dword ptr [ebp-4],eax
 00529524    mov         eax,dword ptr [ebp-4]
 00529527    call        00528EFC
 0052952C    mov         edx,dword ptr [ebp-8]
 0052952F    mov         eax,dword ptr [ebp-4]
 00529532    mov         eax,dword ptr [eax+250];TImage32.?f250:TBitmap32
 00529538    mov         ecx,dword ptr [eax]
 0052953A    call        dword ptr [ecx+8];TBitmap32.sub_0051EB98
 0052953D    pop         ecx
 0052953E    pop         ecx
 0052953F    pop         ebp
 00529540    ret
*}
end;

//00529544
procedure TImage32.SetBitmapAlign(Value:TBitmapAlign);
begin
{*
 00529544    push        ebp
 00529545    mov         ebp,esp
 00529547    add         esp,0FFFFFFF8
 0052954A    mov         byte ptr [ebp-5],dl
 0052954D    mov         dword ptr [ebp-4],eax
 00529550    mov         eax,dword ptr [ebp-4]
 00529553    call        00528EFC
 00529558    mov         al,byte ptr [ebp-5]
 0052955B    mov         edx,dword ptr [ebp-4]
 0052955E    mov         byte ptr [edx+254],al;TImage32.?f254:byte
 00529564    mov         eax,dword ptr [ebp-4]
 00529567    mov         edx,dword ptr [eax]
 00529569    call        dword ptr [edx+124];TImage32.sub_00527B28
 0052956F    pop         ecx
 00529570    pop         ecx
 00529571    pop         ebp
 00529572    ret
*}
end;

//00529574
{*procedure TImage32.SetScale(Value:Single; ?:?);
begin
 00529574    push        ebp
 00529575    mov         ebp,esp
 00529577    push        ecx
 00529578    mov         dword ptr [ebp-4],eax
 0052957B    fld         tbyte ptr ds:[5295DC];0.001:Extended
 00529581    fcomp       dword ptr [ebp+8]
 00529584    fnstsw      al
 00529586    sahf
>00529587    jbe         00529590
 00529589    mov         dword ptr [ebp+8],3A83126F
 00529590    fld         dword ptr [ebp+8]
 00529593    mov         eax,dword ptr [ebp-4]
 00529596    fcomp       dword ptr [eax+270];TImage32.?f270:Single
 0052959C    fnstsw      al
 0052959E    sahf
>0052959F    je          005295D7
 005295A1    mov         eax,dword ptr [ebp-4]
 005295A4    call        00528EFC
 005295A9    mov         eax,dword ptr [ebp+8]
 005295AC    mov         edx,dword ptr [ebp-4]
 005295AF    mov         dword ptr [edx+270],eax;TImage32.?f270:Single
 005295B5    mov         eax,dword ptr [ebp+8]
 005295B8    mov         edx,dword ptr [ebp-4]
 005295BB    mov         dword ptr [edx+274],eax;TImage32.?f274:Single
 005295C1    mov         eax,dword ptr [ebp-4]
 005295C4    mov         edx,dword ptr [eax]
 005295C6    call        dword ptr [edx+104];TImage32.sub_005285B8
 005295CC    mov         eax,dword ptr [ebp-4]
 005295CF    mov         edx,dword ptr [eax]
 005295D1    call        dword ptr [edx+124];TImage32.sub_00527B28
 005295D7    pop         ecx
 005295D8    pop         ebp
 005295D9    ret         4
end;*}

//005295E8
procedure TImage32.SetScaleMode(Value:TScaleMode);
begin
{*
 005295E8    push        ebp
 005295E9    mov         ebp,esp
 005295EB    add         esp,0FFFFFFF8
 005295EE    mov         byte ptr [ebp-5],dl
 005295F1    mov         dword ptr [ebp-4],eax
 005295F4    mov         al,byte ptr [ebp-5]
 005295F7    mov         edx,dword ptr [ebp-4]
 005295FA    cmp         al,byte ptr [edx+278];TImage32.?f278:byte
>00529600    je          00529621
 00529602    mov         eax,dword ptr [ebp-4]
 00529605    call        00528EFC
 0052960A    mov         al,byte ptr [ebp-5]
 0052960D    mov         edx,dword ptr [ebp-4]
 00529610    mov         byte ptr [edx+278],al;TImage32.?f278:byte
 00529616    mov         eax,dword ptr [ebp-4]
 00529619    mov         edx,dword ptr [eax]
 0052961B    call        dword ptr [edx+124];TImage32.sub_00527B28
 00529621    pop         ecx
 00529622    pop         ecx
 00529623    pop         ebp
 00529624    ret
*}
end;

//00529628
{*procedure sub_00529628(?:?; ?:?);
begin
 00529628    push        ebp
 00529629    mov         ebp,esp
 0052962B    add         esp,0FFFFFFE4
 0052962E    push        ebx
 0052962F    mov         dword ptr [ebp-0C],ecx
 00529632    mov         byte ptr [ebp-5],dl
 00529635    mov         dword ptr [ebp-4],eax
 00529638    mov         eax,dword ptr [ebp-4]
 0052963B    mov         eax,dword ptr [eax+250];TCustomImage32.?f250:TBitmap32
 00529641    mov         edx,dword ptr [eax]
 00529643    call        dword ptr [edx+10];TBitmap32.sub_0051E1E4
 00529646    lea         edx,[ebp-1C]
 00529649    mov         eax,dword ptr [ebp-4]
 0052964C    mov         ecx,dword ptr [eax]
 0052964E    call        dword ptr [ecx+0F0];TCustomImage32.sub_00527228
 00529654    mov         ecx,dword ptr [ebp-10]
 00529657    sub         ecx,dword ptr [ebp-18]
 0052965A    mov         edx,dword ptr [ebp-14]
 0052965D    sub         edx,dword ptr [ebp-1C]
 00529660    mov         eax,dword ptr [ebp-4]
 00529663    mov         eax,dword ptr [eax+250];TCustomImage32.?f250:TBitmap32
 00529669    mov         ebx,dword ptr [eax]
 0052966B    call        dword ptr [ebx+2C];TBitmap32.sub_0051E43C
 0052966E    cmp         byte ptr [ebp-5],0
>00529672    je          00529685
 00529674    mov         edx,dword ptr [ebp-0C]
 00529677    mov         eax,dword ptr [ebp-4]
 0052967A    mov         eax,dword ptr [eax+250];TCustomImage32.?f250:TBitmap32
 00529680    call        0051E97C
 00529685    mov         eax,dword ptr [ebp-4]
 00529688    mov         eax,dword ptr [eax+250];TCustomImage32.?f250:TBitmap32
 0052968E    mov         edx,dword ptr [eax]
 00529690    call        dword ptr [edx+14];TBitmap32.sub_0051E220
 00529693    mov         eax,dword ptr [ebp-4]
 00529696    call        00528EFC
 0052969B    mov         eax,dword ptr [ebp-4]
 0052969E    mov         edx,dword ptr [eax]
 005296A0    call        dword ptr [edx+124];TCustomImage32.sub_00527B28
 005296A6    pop         ebx
 005296A7    mov         esp,ebp
 005296A9    pop         ebp
 005296AA    ret
end;*}

//005296AC
procedure sub_005296AC;
begin
{*
 005296AC    push        ebp
 005296AD    mov         ebp,esp
 005296AF    add         esp,0FFFFFFE4
 005296B2    push        esi
 005296B3    push        edi
 005296B4    mov         dword ptr [ebp-4],eax
 005296B7    mov         eax,dword ptr [ebp-4]
 005296BA    cmp         byte ptr [eax+2E8],0;TCustomImage32.?f2E8:byte
>005296C1    jne         005297ED
 005296C7    lea         edx,[ebp-1C]
 005296CA    mov         eax,dword ptr [ebp-4]
 005296CD    mov         ecx,dword ptr [eax]
 005296CF    call        dword ptr [ecx+148];TCustomImage32.sub_00528ABC
 005296D5    mov         eax,dword ptr [ebp-4]
 005296D8    lea         esi,[ebp-1C]
 005296DB    lea         edi,[eax+2C0];TCustomImage32.?f2C0:?
 005296E1    movs        dword ptr [edi],dword ptr [esi]
 005296E2    movs        dword ptr [edi],dword ptr [esi]
 005296E3    movs        dword ptr [edi],dword ptr [esi]
 005296E4    movs        dword ptr [edi],dword ptr [esi]
 005296E5    mov         eax,dword ptr [ebp-4]
 005296E8    add         eax,2C0;TCustomImage32.?f2C0:?
 005296ED    mov         dword ptr [ebp-8],eax
 005296F0    mov         eax,dword ptr [ebp-4]
 005296F3    add         eax,2D0;TCustomImage32.?f2D0:?
 005296F8    mov         dword ptr [ebp-0C],eax
 005296FB    mov         eax,dword ptr [ebp-4]
 005296FE    mov         eax,dword ptr [eax+250];TCustomImage32.?f250:TBitmap32
 00529704    mov         edx,dword ptr [eax]
 00529706    call        dword ptr [edx+24];TBitmap32.sub_0051E948
 00529709    test        al,al
>0052970B    je          00529727
 0052970D    mov         eax,dword ptr [ebp-4]
 00529710    mov         esi,56D4B4
 00529715    lea         edi,[eax+2D0];TCustomImage32.?f2D0:?
 0052971B    mov         ecx,6
 00529720    rep movs    dword ptr [edi],dword ptr [esi]
>00529722    jmp         005297E3
 00529727    mov         eax,dword ptr [ebp-0C]
 0052972A    mov         edx,dword ptr [ebp-8]
 0052972D    mov         edx,dword ptr [edx]
 0052972F    mov         dword ptr [eax+8],edx
 00529732    mov         eax,dword ptr [ebp-0C]
 00529735    mov         edx,dword ptr [ebp-8]
 00529738    mov         edx,dword ptr [edx+4]
 0052973B    mov         dword ptr [eax+0C],edx
 0052973E    mov         eax,dword ptr [ebp-4]
 00529741    mov         eax,dword ptr [eax+250];TCustomImage32.?f250:TBitmap32
 00529747    mov         eax,dword ptr [eax+34];TBitmap32.?f34:Single
 0052974A    push        eax
 0052974B    push        10000
 00529750    mov         eax,dword ptr [ebp-8]
 00529753    mov         eax,dword ptr [eax+8]
 00529756    mov         edx,dword ptr [ebp-8]
 00529759    sub         eax,dword ptr [edx]
 0052975B    push        eax
 0052975C    call        kernel32.MulDiv
 00529761    mov         edx,dword ptr [ebp-0C]
 00529764    mov         dword ptr [edx],eax
 00529766    mov         eax,dword ptr [ebp-4]
 00529769    mov         eax,dword ptr [eax+250];TCustomImage32.?f250:TBitmap32
 0052976F    mov         eax,dword ptr [eax+30];TBitmap32.?f30:Integer
 00529772    push        eax
 00529773    push        10000
 00529778    mov         eax,dword ptr [ebp-8]
 0052977B    mov         eax,dword ptr [eax+0C]
 0052977E    mov         edx,dword ptr [ebp-8]
 00529781    sub         eax,dword ptr [edx+4]
 00529784    push        eax
 00529785    call        kernel32.MulDiv
 0052978A    mov         edx,dword ptr [ebp-0C]
 0052978D    mov         dword ptr [edx+4],eax
 00529790    mov         eax,dword ptr [ebp-8]
 00529793    mov         eax,dword ptr [eax+8]
 00529796    mov         edx,dword ptr [ebp-8]
 00529799    sub         eax,dword ptr [edx]
 0052979B    push        eax
 0052979C    push        10000
 005297A1    mov         eax,dword ptr [ebp-4]
 005297A4    mov         eax,dword ptr [eax+250];TCustomImage32.?f250:TBitmap32
 005297AA    mov         eax,dword ptr [eax+34];TBitmap32.?f34:Single
 005297AD    push        eax
 005297AE    call        kernel32.MulDiv
 005297B3    mov         edx,dword ptr [ebp-0C]
 005297B6    mov         dword ptr [edx+10],eax
 005297B9    mov         eax,dword ptr [ebp-8]
 005297BC    mov         eax,dword ptr [eax+0C]
 005297BF    mov         edx,dword ptr [ebp-8]
 005297C2    sub         eax,dword ptr [edx+4]
 005297C5    push        eax
 005297C6    push        10000
 005297CB    mov         eax,dword ptr [ebp-4]
 005297CE    mov         eax,dword ptr [eax+250];TCustomImage32.?f250:TBitmap32
 005297D4    mov         eax,dword ptr [eax+30];TBitmap32.?f30:Integer
 005297D7    push        eax
 005297D8    call        kernel32.MulDiv
 005297DD    mov         edx,dword ptr [ebp-0C]
 005297E0    mov         dword ptr [edx+14],eax
 005297E3    mov         eax,dword ptr [ebp-4]
 005297E6    mov         byte ptr [eax+2E8],1;TCustomImage32.?f2E8:byte
 005297ED    pop         edi
 005297EE    pop         esi
 005297EF    mov         esp,ebp
 005297F1    pop         ebp
 005297F2    ret
*}
end;

//005297F4
{*function sub_005297F4:?;
begin
 005297F4    push        ebp
 005297F5    mov         ebp,esp
 005297F7    add         esp,0FFFFFFF8
 005297FA    mov         dword ptr [ebp-4],eax
 005297FD    mov         eax,dword ptr [ebp-4]
 00529800    mov         edx,dword ptr [eax]
 00529802    call        dword ptr [edx+0D8];TCustomImage32.sub_00527168
 00529808    mov         eax,dword ptr [ebp-4]
 0052980B    mov         eax,dword ptr [eax+21C];TCustomImage32.?f21C:TRectList
 00529811    cmp         dword ptr [eax+8],0;TRectList.?f8:dword
 00529815    setg        byte ptr [ebp-5]
 00529819    mov         al,byte ptr [ebp-5]
 0052981C    pop         ecx
 0052981D    pop         ecx
 0052981E    pop         ebp
 0052981F    ret
end;*}

//00529820
procedure TImage32.SetRepaintMode(Value:TRepaintMode);
begin
{*
 00529820    push        ebp
 00529821    mov         ebp,esp
 00529823    add         esp,0FFFFFFF8
 00529826    mov         byte ptr [ebp-5],dl
 00529829    mov         dword ptr [ebp-4],eax
 0052982C    mov         dl,byte ptr [ebp-5]
 0052982F    mov         eax,dword ptr [ebp-4]
 00529832    call        00527830
 00529837    mov         al,byte ptr [ebp-5]
 0052983A    dec         al
>0052983C    je          00529871
 0052983E    dec         al
>00529840    jne         005298A0
 00529842    mov         eax,dword ptr [ebp-4]
 00529845    mov         eax,dword ptr [eax+250];TImage32.?f250:TBitmap32
 0052984B    mov         edx,dword ptr [ebp-4]
 0052984E    mov         dword ptr [eax+0E4],edx;TBitmap32.?fE4:TCustomPaintBox32
 00529854    mov         dword ptr [eax+0E0],527BC4;TBitmap32.OnAreaChanged:TAreaChangedEvent sub_00527BC4
 0052985E    mov         eax,dword ptr [ebp-4]
 00529861    mov         eax,dword ptr [eax+250];TImage32.?f250:TBitmap32
 00529867    xor         edx,edx
 00529869    mov         dword ptr [eax+8],edx;TBitmap32.?f8:dword
 0052986C    mov         dword ptr [eax+0C],edx;TBitmap32.?fC:TImage32
>0052986F    jmp         005298CD
 00529871    mov         eax,dword ptr [ebp-4]
 00529874    mov         eax,dword ptr [eax+250];TImage32.?f250:TBitmap32
 0052987A    mov         edx,dword ptr [ebp-4]
 0052987D    mov         dword ptr [eax+0E4],edx;TBitmap32.?fE4:TCustomPaintBox32
 00529883    mov         dword ptr [eax+0E0],527D44;TBitmap32.OnAreaChanged:TAreaChangedEvent sub_00527D44
 0052988D    mov         eax,dword ptr [ebp-4]
 00529890    mov         eax,dword ptr [eax+250];TImage32.?f250:TBitmap32
 00529896    xor         edx,edx
 00529898    mov         dword ptr [eax+8],edx;TBitmap32.?f8:dword
 0052989B    mov         dword ptr [eax+0C],edx;TBitmap32.?fC:TImage32
>0052989E    jmp         005298CD
 005298A0    mov         eax,dword ptr [ebp-4]
 005298A3    mov         eax,dword ptr [eax+250];TImage32.?f250:TBitmap32
 005298A9    xor         edx,edx
 005298AB    mov         dword ptr [eax+0E0],edx;TBitmap32.OnAreaChanged:TAreaChangedEvent
 005298B1    mov         dword ptr [eax+0E4],edx;TBitmap32.?fE4:TCustomPaintBox32
 005298B7    mov         eax,dword ptr [ebp-4]
 005298BA    mov         eax,dword ptr [eax+250];TImage32.?f250:TBitmap32
 005298C0    mov         edx,dword ptr [ebp-4]
 005298C3    mov         dword ptr [eax+0C],edx;TBitmap32.?fC:TImage32
 005298C6    mov         dword ptr [eax+8],527B84;TBitmap32.?f8:dword sub_00527B84
 005298CD    pop         ecx
 005298CE    pop         ecx
 005298CF    pop         ebp
 005298D0    ret
*}
end;

Initialization
//00529914
{*
 00529914    sub         dword ptr ds:[597BCC],1
>0052991B    jae         00529927
 0052991D    mov         eax,529904
 00529922    call        @InitImports
 00529927    ret
*}
Finalization
end.