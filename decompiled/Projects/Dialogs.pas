//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit Dialogs;

interface

uses
  SysUtils, Classes, StdCtrls;

type
  TCommonDialog = class(TComponent)
  public
    Ctl3D:Boolean;//f30
    FDefWndProc:Pointer;//f34
    HelpContext:THelpContext;//f38
    FHandle:HWND;//f3C
    FObjectInstance:Pointer;//f40
    FTemplate:PChar;//f44
    OnClose:TNotifyEvent;//f48
    f4A:word;//f4A
    f4C:dword;//f4C
    OnShow:TNotifyEvent;//f50
    f52:word;//f52
    f54:dword;//f54
    procedure DefaultHandler(var Message:void ); virtual;//0043DBE0
    destructor Destroy; virtual;//0043DB54
    constructor v2C; virtual;//v2C//0043DAF0
    //procedure v30(?:?); virtual;//v30//0043DC88
    //function v34(?:?):?; virtual;//v34//0043DB9C
    //function v38(?:?; ?:?):?; virtual;//v38//0043DD1C
    procedure Execute; virtual; abstract;//v3C//00403328
    //procedure WMDestroy(?:?); message WM_DESTROY;//0043DCA4
    //procedure WMNCDestroy(?:?); message WM_NCDESTROY;//0043DCF8
    //procedure WMInitDialog(?:?); message WM_INITDIALOG;//0043DCD0
    procedure sub_0043DE18; dynamic;//0043DE18
    procedure sub_0043DDF4; dynamic;//0043DDF4
  end;
  TOpenOption = (ofReadOnly, ofOverwritePrompt, ofHideReadOnly, ofNoChangeDir, ofShowHelp, ofNoValidate, ofAllowMultiSelect, ofExtensionDifferent, ofPathMustExist, ofFileMustExist, ofCreatePrompt, ofShareAware, ofNoReadOnlyReturn, ofNoTestFileCreate, ofNoNetworkButton, ofNoLongNames, ofOldStyleDialog, ofNoDereferenceLinks, ofEnableIncludeNotify, ofEnableSizing, ofDontAddToRecent, ofForceShowHidden);
  TOpenOptions = set of TOpenOption;
  TOpenOptionEx = (ofExNoPlacesBar);
  TOpenOptionsEx = set of TOpenOptionEx;
  TOFNotifyEx = TOFNotifyEx = record//size=18
f10:IShellFolder;//f10
end;;
  TIncludeItemEvent = procedure(const OFN:TOFNotifyEx; var Include:Boolean) of object;;
  TOpenDialog = class(TCommonDialog)
  public
    FHistoryList:TStrings;//f58
    Options:TOpenOptions;//f5C
    f5E:byte;//f5E
    Filter:String;//f60
    FilterIndex:Integer;//f64
    FCurrentFilterIndex:Integer;//f68
    InitialDir:String;//f6C
    Title:String;//f70
    DefaultExt:String;//f74
    FileName:TFileName;//f78
    FFiles:TStrings;//f7C
    FFileEditStyle:TFileEditStyle;//f80
    OnSelectionChange:TNotifyEvent;//f88
    f8A:word;//f8A
    f8C:dword;//f8C
    OnFolderChange:TNotifyEvent;//f90
    f92:word;//f92
    f94:dword;//f94
    OnTypeChange:TNotifyEvent;//f98
    f9A:word;//f9A
    f9C:dword;//f9C
    OnCanClose:TCloseQueryEvent;//fA0
    fA2:word;//fA2
    fA4:dword;//fA4
    OnIncludeItem:TIncludeItemEvent;//fA8
    fAA:word;//fAA
    fAC:dword;//fAC
    OptionsEx:TOpenOptionsEx;//fB0
    destructor Destroy; virtual;//0043DF6C
    procedure DefineProperties(Filer:TFiler); virtual;//v4//0043E248
    constructor v2C; virtual;//v2C//0043DEC8
    //procedure v30(?:?); virtual;//v30//0043DFF0
    //function Execute:?; virtual;//v3C//0043E9DC
    //procedure v40(?:?); virtual;//v40//0043E860
    //procedure sub_0043EA04(?:?; ?:?); dynamic;//0043EA04
    procedure sub_0043E1D0; dynamic;//0043E1D0
    procedure sub_0043E1A4; dynamic;//0043E1A4
    procedure sub_0043E178; dynamic;//0043E178
    procedure sub_0043E140; dynamic;//0043E140
    //procedure GetFileName(?:?);//0043E8D8
    //function GetFilterIndex:?;//0043E940
    procedure SetInitialDir(Value:AnsiString);//0043E970
  end;
  TSaveDialog = class(TOpenDialog)
  published
    //function Execute:?;//0043EA3C
  public
    //function Execute:?; virtual;//v3C//0043EA3C
  end;
  TMessageForm = class(TForm)
  public
    ..Message:TLabel;//f2F8
    constructor Create;//0043EC4C
  end;
    procedure sub_0043D9B8(?:Longint);//0043D9B8
    //function sub_0043DA80(?:?; ?:?; ?:?; ?:?):?;//0043DA80
    constructor sub_0043DAF0;//0043DAF0
    destructor Destroy;//0043DB54
    //function sub_0043DB9C(?:?):?;//0043DB9C
    procedure DefaultHandler(var Message:void );//0043DBE0
    //procedure sub_0043DC88(?:?);//0043DC88
    //procedure WMDestroy(?:?);//0043DCA4
    //procedure WMInitDialog(?:?);//0043DCD0
    //procedure WMNCDestroy(?:?);//0043DCF8
    //function sub_0043DD1C(?:?; ?:?):?;//0043DD1C
    procedure sub_0043DDF4;//0043DDF4
    procedure sub_0043DE18;//0043DE18
    //function sub_0043DE3C(?:?; ?:?; ?:?; ?:?):?;//0043DE3C
    constructor sub_0043DEC8;//0043DEC8
    destructor Destroy;//0043DF6C
    //function sub_0043DFB4(?:TOpenDialog; ?:?):?;//0043DFB4
    //procedure sub_0043DFF0(?:?);//0043DFF0
    procedure sub_0043E140;//0043E140
    procedure sub_0043E178;//0043E178
    procedure sub_0043E1A4;//0043E1A4
    procedure sub_0043E1D0;//0043E1D0
    procedure DefineProperties(Filer:TFiler);//0043E248
    //procedure sub_0043E29C(?:?; ?:?);//0043E29C
    //function sub_0043E30C(?:TOpenDialog; ?:BOOL):?;//0043E30C
    //function sub_0043E644(?:?; ?:AnsiString; ?:?):?;//0043E644
    //procedure sub_0043E69C(?:?; ?:?);//0043E69C
    //procedure sub_0043E7A0(?:?; ?:Byte);//0043E7A0
    //procedure sub_0043E860(?:?);//0043E860
    //function Execute:?;//0043E9DC
    //procedure sub_0043EA04(?:?; ?:?);//0043EA04
    //procedure sub_0043EA64(?:?; ?:?);//0043EA64
    //procedure sub_0043ECD0(?:?; ?:?);//0043ECD0
    //function sub_0043F170(?:?; ?:?; ?:?):?;//0043F170
    //function sub_0043F788(?:AnsiString; ?:?; ?:?; ?:?):?;//0043F788
    //function sub_0043F7C0(?:?; ?:?; ?:?; ?:?; ?:?; ?:?):?;//0043F7C0
    //function sub_0043F7FC(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?):?;//0043F7FC
    procedure sub_0043F8B4(?:AnsiString; ?:AnsiString; ?:AnsiString);//0043F8B4
    //procedure sub_0043F8CC(?:?; ?:?; ?:?);//0043F8CC
    procedure sub_0043F900;//0043F900
    procedure _NF__533;//0043F998

implementation

//0043D9B8
procedure sub_0043D9B8(?:Longint);
begin
{*
 0043D9B8    push        ebp
 0043D9B9    mov         ebp,esp
 0043D9BB    add         esp,0FFFFFFE8
 0043D9BE    push        ebx
 0043D9BF    mov         dword ptr [ebp-4],eax
 0043D9C2    lea         eax,[ebp-18]
 0043D9C5    push        eax
 0043D9C6    mov         eax,dword ptr [ebp-4]
 0043D9C9    push        eax
 0043D9CA    call        user32.GetWindowRect
 0043D9CF    mov         eax,[0056E3C0];^Application:TApplication
 0043D9D4    mov         eax,dword ptr [eax]
 0043D9D6    cmp         dword ptr [eax+44],0;TApplication.FMainForm:TForm
>0043D9DA    je          0043DA11
 0043D9DC    mov         eax,[0056E604];^Screen:TScreen
 0043D9E1    mov         eax,dword ptr [eax]
 0043D9E3    cmp         dword ptr [eax+6C],0;TScreen.FActiveForm:TForm
>0043D9E7    je          0043D9FD
 0043D9E9    mov         eax,[0056E604];^Screen:TScreen
 0043D9EE    mov         eax,dword ptr [eax]
 0043D9F0    mov         eax,dword ptr [eax+6C];TScreen.FActiveForm:TForm
 0043D9F3    call        004A3FD0
 0043D9F8    mov         dword ptr [ebp-8],eax
>0043D9FB    jmp         0043DA22
 0043D9FD    mov         eax,[0056E3C0];^Application:TApplication
 0043DA02    mov         eax,dword ptr [eax]
 0043DA04    mov         eax,dword ptr [eax+44];TApplication.FMainForm:TForm
 0043DA07    call        004A3FD0
 0043DA0C    mov         dword ptr [ebp-8],eax
>0043DA0F    jmp         0043DA22
 0043DA11    mov         eax,[0056E604];^Screen:TScreen
 0043DA16    mov         eax,dword ptr [eax]
 0043DA18    xor         edx,edx
 0043DA1A    call        004A8934
 0043DA1F    mov         dword ptr [ebp-8],eax
 0043DA22    push        15
 0043DA24    push        0
 0043DA26    push        0
 0043DA28    mov         eax,dword ptr [ebp-8]
 0043DA2B    call        004A8508
 0043DA30    mov         ebx,eax
 0043DA32    mov         eax,dword ptr [ebp-8]
 0043DA35    call        004A84E4
 0043DA3A    sub         eax,dword ptr [ebp-0C]
 0043DA3D    add         eax,dword ptr [ebp-14]
 0043DA40    mov         ecx,3
 0043DA45    cdq
 0043DA46    idiv        eax,ecx
 0043DA48    add         ebx,eax
 0043DA4A    push        ebx
 0043DA4B    mov         eax,dword ptr [ebp-8]
 0043DA4E    call        004A84C0
 0043DA53    mov         ebx,eax
 0043DA55    mov         eax,dword ptr [ebp-8]
 0043DA58    call        004A852C
 0043DA5D    sub         eax,dword ptr [ebp-10]
 0043DA60    add         eax,dword ptr [ebp-18]
 0043DA63    sar         eax,1
>0043DA65    jns         0043DA6A
 0043DA67    adc         eax,0
 0043DA6A    add         ebx,eax
 0043DA6C    push        ebx
 0043DA6D    push        0
 0043DA6F    mov         eax,dword ptr [ebp-4]
 0043DA72    push        eax
 0043DA73    call        user32.SetWindowPos
 0043DA78    pop         ebx
 0043DA79    mov         esp,ebp
 0043DA7B    pop         ebp
 0043DA7C    ret
*}
end;

//0043DA80
{*function sub_0043DA80(?:?; ?:?; ?:?; ?:?):?;
begin
 0043DA80    push        ebp
 0043DA81    mov         ebp,esp
 0043DA83    push        ecx
 0043DA84    xor         eax,eax
 0043DA86    mov         dword ptr [ebp-4],eax
 0043DA89    cmp         dword ptr [ebp+0C],110
>0043DA90    jne         0043DAE7
 0043DA92    mov         eax,dword ptr [ebp+8]
 0043DA95    call        0043D9B8
 0043DA9A    mov         eax,[0056C0B0];0x0 gvar_0056C0B0:TCommonDialog
 0043DA9F    mov         edx,dword ptr [ebp+8]
 0043DAA2    mov         dword ptr [eax+3C],edx
 0043DAA5    mov         eax,[0056C0B0];0x0 gvar_0056C0B0:TCommonDialog
 0043DAAA    mov         eax,dword ptr [eax+40]
 0043DAAD    push        eax
 0043DAAE    push        0FC
 0043DAB0    mov         eax,dword ptr [ebp+8]
 0043DAB3    push        eax
 0043DAB4    call        user32.SetWindowLongA
 0043DAB9    mov         edx,dword ptr ds:[56C0B0];0x0 gvar_0056C0B0:TCommonDialog
 0043DABF    mov         dword ptr [edx+34],eax
 0043DAC2    mov         eax,dword ptr [ebp+14]
 0043DAC5    push        eax
 0043DAC6    mov         eax,dword ptr [ebp+10]
 0043DAC9    push        eax
 0043DACA    mov         eax,dword ptr [ebp+0C]
 0043DACD    push        eax
 0043DACE    mov         eax,dword ptr [ebp+8]
 0043DAD1    push        eax
 0043DAD2    mov         eax,[0056C0B0];0x0 gvar_0056C0B0:TCommonDialog
 0043DAD7    mov         eax,dword ptr [eax+40]
 0043DADA    push        eax
 0043DADB    call        user32.CallWindowProcA
 0043DAE0    xor         eax,eax
 0043DAE2    mov         [0056C0B0],eax;gvar_0056C0B0:TCommonDialog
 0043DAE7    mov         eax,dword ptr [ebp-4]
 0043DAEA    pop         ecx
 0043DAEB    pop         ebp
 0043DAEC    ret         10
end;*}

//0043DAF0
constructor sub_0043DAF0;
begin
{*
 0043DAF0    push        ebp
 0043DAF1    mov         ebp,esp
 0043DAF3    add         esp,0FFFFFFF4
 0043DAF6    test        dl,dl
>0043DAF8    je          0043DB02
 0043DAFA    add         esp,0FFFFFFF0
 0043DAFD    call        @ClassCreate
 0043DB02    mov         dword ptr [ebp-0C],ecx
 0043DB05    mov         byte ptr [ebp-5],dl
 0043DB08    mov         dword ptr [ebp-4],eax
 0043DB0B    mov         ecx,dword ptr [ebp-0C]
 0043DB0E    xor         edx,edx
 0043DB10    mov         eax,dword ptr [ebp-4]
 0043DB13    call        0042A1B0
 0043DB18    mov         eax,dword ptr [ebp-4]
 0043DB1B    mov         byte ptr [eax+30],1;TCommonDialog.Ctl3D:Boolean
 0043DB1F    mov         eax,dword ptr [ebp-4]
 0043DB22    push        eax
 0043DB23    push        43DC34
 0043DB28    call        0042B9AC
 0043DB2D    mov         edx,dword ptr [ebp-4]
 0043DB30    mov         dword ptr [edx+40],eax;TCommonDialog.FObjectInstance:Pointer
 0043DB33    mov         eax,dword ptr [ebp-4]
 0043DB36    cmp         byte ptr [ebp-5],0
>0043DB3A    je          0043DB4B
 0043DB3C    call        @AfterConstruction
 0043DB41    pop         dword ptr fs:[0]
 0043DB48    add         esp,0C
 0043DB4B    mov         eax,dword ptr [ebp-4]
 0043DB4E    mov         esp,ebp
 0043DB50    pop         ebp
 0043DB51    ret
*}
end;

//0043DB54
destructor TCommonDialog.Destroy;
begin
{*
 0043DB54    push        ebp
 0043DB55    mov         ebp,esp
 0043DB57    add         esp,0FFFFFFF8
 0043DB5A    call        @BeforeDestruction
 0043DB5F    mov         byte ptr [ebp-5],dl
 0043DB62    mov         dword ptr [ebp-4],eax
 0043DB65    mov         eax,dword ptr [ebp-4]
 0043DB68    cmp         dword ptr [eax+40],0
>0043DB6C    je          0043DB79
 0043DB6E    mov         eax,dword ptr [ebp-4]
 0043DB71    mov         eax,dword ptr [eax+40]
 0043DB74    call        0042BA8C
 0043DB79    mov         dl,byte ptr [ebp-5]
 0043DB7C    and         dl,0FC
 0043DB7F    mov         eax,dword ptr [ebp-4]
 0043DB82    call        TComponent.Destroy
 0043DB87    cmp         byte ptr [ebp-5],0
>0043DB8B    jle         0043DB95
 0043DB8D    mov         eax,dword ptr [ebp-4]
 0043DB90    call        @ClassDestroy
 0043DB95    pop         ecx
 0043DB96    pop         ecx
 0043DB97    pop         ebp
 0043DB98    ret
*}
end;

//0043DB9C
{*function sub_0043DB9C(?:?):?;
begin
 0043DB9C    push        ebp
 0043DB9D    mov         ebp,esp
 0043DB9F    add         esp,0FFFFFFF4
 0043DBA2    mov         dword ptr [ebp-8],edx
 0043DBA5    mov         dword ptr [ebp-4],eax
 0043DBA8    mov         byte ptr [ebp-9],0
 0043DBAC    mov         eax,dword ptr [ebp-8]
 0043DBAF    mov         eax,dword ptr [eax]
 0043DBB1    cmp         eax,dword ptr ds:[571CA0];0x0 gvar_00571CA0:LongWord
>0043DBB7    jne         0043DBD8
 0043DBB9    mov         eax,dword ptr [ebp-4]
 0043DBBC    cmp         dword ptr [eax+38],0;TCommonDialog.HelpContext:THelpContext
>0043DBC0    je          0043DBD8
 0043DBC2    mov         eax,[0056E3C0];^Application:TApplication
 0043DBC7    mov         eax,dword ptr [eax]
 0043DBC9    mov         edx,dword ptr [ebp-4]
 0043DBCC    mov         edx,dword ptr [edx+38];TCommonDialog.HelpContext:THelpContext
 0043DBCF    call        004ABE14
 0043DBD4    mov         byte ptr [ebp-9],1
 0043DBD8    mov         al,byte ptr [ebp-9]
 0043DBDB    mov         esp,ebp
 0043DBDD    pop         ebp
 0043DBDE    ret
end;*}

//0043DBE0
procedure TCommonDialog.DefaultHandler(var Message:void );
begin
{*
 0043DBE0    push        ebp
 0043DBE1    mov         ebp,esp
 0043DBE3    add         esp,0FFFFFFF8
 0043DBE6    mov         dword ptr [ebp-8],edx
 0043DBE9    mov         dword ptr [ebp-4],eax
 0043DBEC    mov         eax,dword ptr [ebp-4]
 0043DBEF    cmp         dword ptr [eax+3C],0
>0043DBF3    je          0043DC24
 0043DBF5    mov         eax,dword ptr [ebp-8]
 0043DBF8    mov         eax,dword ptr [eax+8]
 0043DBFB    push        eax
 0043DBFC    mov         eax,dword ptr [ebp-8]
 0043DBFF    mov         eax,dword ptr [eax+4]
 0043DC02    push        eax
 0043DC03    mov         eax,dword ptr [ebp-8]
 0043DC06    mov         eax,dword ptr [eax]
 0043DC08    push        eax
 0043DC09    mov         eax,dword ptr [ebp-4]
 0043DC0C    mov         eax,dword ptr [eax+3C];{TObject.DefaultHandler}
 0043DC0F    push        eax
 0043DC10    mov         eax,dword ptr [ebp-4]
 0043DC13    mov         eax,dword ptr [eax+34]
 0043DC16    push        eax
 0043DC17    call        user32.CallWindowProcA
 0043DC1C    mov         edx,dword ptr [ebp-8]
 0043DC1F    mov         dword ptr [edx+0C],eax
>0043DC22    jmp         0043DC2F
 0043DC24    mov         edx,dword ptr [ebp-8]
 0043DC27    mov         eax,dword ptr [ebp-4]
 0043DC2A    call        TCustomVariantType.DefaultHandler
 0043DC2F    pop         ecx
 0043DC30    pop         ecx
 0043DC31    pop         ebp
 0043DC32    ret
*}
end;

//0043DC88
{*procedure sub_0043DC88(?:?);
begin
 0043DC88    push        ebp
 0043DC89    mov         ebp,esp
 0043DC8B    add         esp,0FFFFFFF8
 0043DC8E    mov         dword ptr [ebp-8],edx
 0043DC91    mov         dword ptr [ebp-4],eax
 0043DC94    mov         edx,dword ptr [ebp-8]
 0043DC97    mov         eax,dword ptr [ebp-4]
 0043DC9A    mov         ecx,dword ptr [eax]
 0043DC9C    call        dword ptr [ecx-14];TObject.Dispatch
 0043DC9F    pop         ecx
 0043DCA0    pop         ecx
 0043DCA1    pop         ebp
 0043DCA2    ret
end;*}

//0043DCA4
{*procedure TCommonDialog.WMDestroy(?:?);
begin
 0043DCA4    push        ebp
 0043DCA5    mov         ebp,esp
 0043DCA7    add         esp,0FFFFFFF8
 0043DCAA    push        esi
 0043DCAB    mov         dword ptr [ebp-8],edx
 0043DCAE    mov         dword ptr [ebp-4],eax
 0043DCB1    mov         edx,dword ptr [ebp-8]
 0043DCB4    mov         eax,dword ptr [ebp-4]
 0043DCB7    mov         ecx,dword ptr [eax]
 0043DCB9    call        dword ptr [ecx-10];TCommonDialog.DefaultHandler
 0043DCBC    mov         eax,dword ptr [ebp-4]
 0043DCBF    mov         si,0FFEF
 0043DCC3    call        @CallDynaInst;TCommonDialog.sub_0043DDF4
 0043DCC8    pop         esi
 0043DCC9    pop         ecx
 0043DCCA    pop         ecx
 0043DCCB    pop         ebp
 0043DCCC    ret
end;*}

//0043DCD0
{*procedure TCommonDialog.WMInitDialog(?:?);
begin
 0043DCD0    push        ebp
 0043DCD1    mov         ebp,esp
 0043DCD3    add         esp,0FFFFFFF8
 0043DCD6    push        esi
 0043DCD7    mov         dword ptr [ebp-8],edx
 0043DCDA    mov         dword ptr [ebp-4],eax
 0043DCDD    mov         eax,dword ptr [ebp-4]
 0043DCE0    mov         si,0FFEE
 0043DCE4    call        @CallDynaInst;TCommonDialog.sub_0043DE18
 0043DCE9    mov         eax,dword ptr [ebp-8]
 0043DCEC    xor         edx,edx
 0043DCEE    mov         dword ptr [eax+0C],edx
 0043DCF1    pop         esi
 0043DCF2    pop         ecx
 0043DCF3    pop         ecx
 0043DCF4    pop         ebp
 0043DCF5    ret
end;*}

//0043DCF8
{*procedure TCommonDialog.WMNCDestroy(?:?);
begin
 0043DCF8    push        ebp
 0043DCF9    mov         ebp,esp
 0043DCFB    add         esp,0FFFFFFF8
 0043DCFE    mov         dword ptr [ebp-8],edx
 0043DD01    mov         dword ptr [ebp-4],eax
 0043DD04    mov         edx,dword ptr [ebp-8]
 0043DD07    mov         eax,dword ptr [ebp-4]
 0043DD0A    mov         ecx,dword ptr [eax]
 0043DD0C    call        dword ptr [ecx-10];TCommonDialog.DefaultHandler
 0043DD0F    mov         eax,dword ptr [ebp-4]
 0043DD12    xor         edx,edx
 0043DD14    mov         dword ptr [eax+3C],edx;TCommonDialog.FHandle:HWND
 0043DD17    pop         ecx
 0043DD18    pop         ecx
 0043DD19    pop         ebp
 0043DD1A    ret
end;*}

//0043DD1C
{*function sub_0043DD1C(?:?; ?:?):?;
begin
 0043DD1C    push        ebp
 0043DD1D    mov         ebp,esp
 0043DD1F    add         esp,0FFFFFFE0
 0043DD22    mov         dword ptr [ebp-10],ecx
 0043DD25    mov         dword ptr [ebp-0C],edx
 0043DD28    mov         dword ptr [ebp-8],eax
 0043DD2B    call        user32.GetActiveWindow
 0043DD30    mov         dword ptr [ebp-18],eax
 0043DD33    xor         eax,eax
 0043DD35    call        004A0240
 0043DD3A    mov         dword ptr [ebp-1C],eax
 0043DD3D    call        004A0100
 0043DD42    mov         dword ptr [ebp-20],eax
 0043DD45    xor         eax,eax
 0043DD47    push        ebp
 0043DD48    push        43DDE3
 0043DD4D    push        dword ptr fs:[eax]
 0043DD50    mov         dword ptr fs:[eax],esp
 0043DD53    mov         eax,dword ptr [ebp-8]
 0043DD56    push        eax
 0043DD57    mov         eax,dword ptr [eax]
 0043DD59    mov         eax,dword ptr [eax+34];TCommonDialog.FDefWndProc:Pointer
 0043DD5C    push        eax
 0043DD5D    mov         eax,[0056E3C0];^Application:TApplication
 0043DD62    mov         eax,dword ptr [eax]
 0043DD64    call        004AB560
 0043DD69    fnstcw      word ptr [ebp-2]
 0043DD6C    xor         eax,eax
 0043DD6E    push        ebp
 0043DD6F    push        43DDB5
 0043DD74    push        dword ptr fs:[eax]
 0043DD77    mov         dword ptr fs:[eax],esp
 0043DD7A    mov         eax,dword ptr [ebp-8]
 0043DD7D    mov         [0056C0B0],eax;gvar_0056C0B0:TCommonDialog
 0043DD82    mov         eax,dword ptr [ebp-10]
 0043DD85    push        eax
 0043DD86    call        dword ptr [ebp-0C]
 0043DD89    mov         dword ptr [ebp-14],eax
 0043DD8C    xor         eax,eax
 0043DD8E    pop         edx
 0043DD8F    pop         ecx
 0043DD90    pop         ecx
 0043DD91    mov         dword ptr fs:[eax],edx
 0043DD94    push        43DDBC
 0043DD99    fnclex
 0043DD9B    fldcw       word ptr [ebp-2]
 0043DD9E    mov         eax,dword ptr [ebp-8]
 0043DDA1    push        eax
 0043DDA2    mov         eax,dword ptr [eax]
 0043DDA4    mov         eax,dword ptr [eax+34];TCommonDialog.FDefWndProc:Pointer
 0043DDA7    push        eax
 0043DDA8    mov         eax,[0056E3C0];^Application:TApplication
 0043DDAD    mov         eax,dword ptr [eax]
 0043DDAF    call        004AB5D8
 0043DDB4    ret
>0043DDB5    jmp         @HandleFinally
>0043DDBA    jmp         0043DD99
 0043DDBC    xor         eax,eax
 0043DDBE    pop         edx
 0043DDBF    pop         ecx
 0043DDC0    pop         ecx
 0043DDC1    mov         dword ptr fs:[eax],edx
 0043DDC4    push        43DDEA
 0043DDC9    mov         eax,dword ptr [ebp-1C]
 0043DDCC    call        004A02F8
 0043DDD1    mov         eax,dword ptr [ebp-18]
 0043DDD4    push        eax
 0043DDD5    call        user32.SetActiveWindow
 0043DDDA    mov         eax,dword ptr [ebp-20]
 0043DDDD    call        004A0114
 0043DDE2    ret
>0043DDE3    jmp         @HandleFinally
>0043DDE8    jmp         0043DDC9
 0043DDEA    mov         eax,dword ptr [ebp-14]
 0043DDED    mov         esp,ebp
 0043DDEF    pop         ebp
 0043DDF0    ret
end;*}

//0043DDF4
procedure TCommonDialog.sub_0043DDF4;
begin
{*
 0043DDF4    push        ebp
 0043DDF5    mov         ebp,esp
 0043DDF7    push        ecx
 0043DDF8    push        ebx
 0043DDF9    mov         dword ptr [ebp-4],eax
 0043DDFC    mov         eax,dword ptr [ebp-4]
 0043DDFF    cmp         word ptr [eax+4A],0;TCommonDialog.?f4A:word
>0043DE04    je          0043DE12
 0043DE06    mov         ebx,dword ptr [ebp-4]
 0043DE09    mov         edx,dword ptr [ebp-4]
 0043DE0C    mov         eax,dword ptr [ebx+4C];TCommonDialog.?f4C:dword
 0043DE0F    call        dword ptr [ebx+48];TCommonDialog.OnClose
 0043DE12    pop         ebx
 0043DE13    pop         ecx
 0043DE14    pop         ebp
 0043DE15    ret
*}
end;

//0043DE18
procedure TCommonDialog.sub_0043DE18;
begin
{*
 0043DE18    push        ebp
 0043DE19    mov         ebp,esp
 0043DE1B    push        ecx
 0043DE1C    push        ebx
 0043DE1D    mov         dword ptr [ebp-4],eax
 0043DE20    mov         eax,dword ptr [ebp-4]
 0043DE23    cmp         word ptr [eax+52],0;TCommonDialog.?f52:word
>0043DE28    je          0043DE36
 0043DE2A    mov         ebx,dword ptr [ebp-4]
 0043DE2D    mov         edx,dword ptr [ebp-4]
 0043DE30    mov         eax,dword ptr [ebx+54];TCommonDialog.?f54:dword
 0043DE33    call        dword ptr [ebx+50];TCommonDialog.OnShow
 0043DE36    pop         ebx
 0043DE37    pop         ecx
 0043DE38    pop         ebp
 0043DE39    ret
*}
end;

//0043DE3C
{*function sub_0043DE3C(?:?; ?:?; ?:?; ?:?):?;
begin
 0043DE3C    push        ebp
 0043DE3D    mov         ebp,esp
 0043DE3F    push        ecx
 0043DE40    xor         eax,eax
 0043DE42    mov         dword ptr [ebp-4],eax
 0043DE45    cmp         dword ptr [ebp+0C],110
>0043DE4C    jne         0043DE9D
 0043DE4E    mov         eax,[0056C0B0];0x0 gvar_0056C0B0:TCommonDialog
 0043DE53    mov         edx,dword ptr [ebp+8]
 0043DE56    mov         dword ptr [eax+3C],edx;TCommonDialog.FHandle:HWND
 0043DE59    mov         eax,[0056C0B0];0x0 gvar_0056C0B0:TCommonDialog
 0043DE5E    mov         eax,dword ptr [eax+40];TCommonDialog.FObjectInstance:Pointer
 0043DE61    push        eax
 0043DE62    push        0FC
 0043DE64    mov         eax,dword ptr [ebp+8]
 0043DE67    push        eax
 0043DE68    call        user32.SetWindowLongA
 0043DE6D    mov         edx,dword ptr ds:[56C0B0];0x0 gvar_0056C0B0:TCommonDialog
 0043DE73    mov         dword ptr [edx+34],eax;TCommonDialog.FDefWndProc:Pointer
 0043DE76    mov         eax,dword ptr [ebp+14]
 0043DE79    push        eax
 0043DE7A    mov         eax,dword ptr [ebp+10]
 0043DE7D    push        eax
 0043DE7E    mov         eax,dword ptr [ebp+0C]
 0043DE81    push        eax
 0043DE82    mov         eax,dword ptr [ebp+8]
 0043DE85    push        eax
 0043DE86    mov         eax,[0056C0B0];0x0 gvar_0056C0B0:TCommonDialog
 0043DE8B    mov         eax,dword ptr [eax+40];TCommonDialog.FObjectInstance:Pointer
 0043DE8E    push        eax
 0043DE8F    call        user32.CallWindowProcA
 0043DE94    xor         eax,eax
 0043DE96    mov         [0056C0B0],eax;gvar_0056C0B0:TCommonDialog
>0043DE9B    jmp         0043DEBF
 0043DE9D    cmp         dword ptr [ebp+0C],4E
>0043DEA1    jne         0043DEBF
 0043DEA3    mov         eax,dword ptr [ebp+14]
 0043DEA6    cmp         dword ptr [eax+8],0FFFFFDA7
>0043DEAD    jne         0043DEBF
 0043DEAF    push        0F8
 0043DEB1    mov         eax,dword ptr [ebp+8]
 0043DEB4    push        eax
 0043DEB5    call        user32.GetWindowLongA
 0043DEBA    call        0043D9B8
 0043DEBF    mov         eax,dword ptr [ebp-4]
 0043DEC2    pop         ecx
 0043DEC3    pop         ebp
 0043DEC4    ret         10
end;*}

//0043DEC8
constructor sub_0043DEC8;
begin
{*
 0043DEC8    push        ebp
 0043DEC9    mov         ebp,esp
 0043DECB    add         esp,0FFFFFFF4
 0043DECE    test        dl,dl
>0043DED0    je          0043DEDA
 0043DED2    add         esp,0FFFFFFF0
 0043DED5    call        @ClassCreate
 0043DEDA    mov         dword ptr [ebp-0C],ecx
 0043DEDD    mov         byte ptr [ebp-5],dl
 0043DEE0    mov         dword ptr [ebp-4],eax
 0043DEE3    mov         ecx,dword ptr [ebp-0C]
 0043DEE6    xor         edx,edx
 0043DEE8    mov         eax,dword ptr [ebp-4]
 0043DEEB    call        0043DAF0
 0043DEF0    mov         dl,1
 0043DEF2    mov         eax,[0041DB24];TStringList
 0043DEF7    call        TObject.Create;TStringList.Create
 0043DEFC    mov         edx,dword ptr [ebp-4]
 0043DEFF    mov         dword ptr [edx+58],eax;TOpenDialog.FHistoryList:TStrings
 0043DF02    mov         eax,dword ptr [ebp-4]
 0043DF05    mov         edx,dword ptr ds:[43DF64];0x80004 gvar_0043DF64
 0043DF0B    mov         dword ptr [eax+5C],edx;TOpenDialog.Options:TOpenOptions
 0043DF0E    mov         eax,dword ptr [ebp-4]
 0043DF11    mov         dl,byte ptr ds:[43DF68];0x0 gvar_0043DF68
 0043DF17    mov         byte ptr [eax+0B0],dl;TOpenDialog.OptionsEx:TOpenOptionsEx
 0043DF1D    mov         dl,1
 0043DF1F    mov         eax,[0041DB24];TStringList
 0043DF24    call        TObject.Create;TStringList.Create
 0043DF29    mov         edx,dword ptr [ebp-4]
 0043DF2C    mov         dword ptr [edx+7C],eax;TOpenDialog.FFiles:TStrings
 0043DF2F    mov         eax,dword ptr [ebp-4]
 0043DF32    mov         dword ptr [eax+64],1;TOpenDialog.FilterIndex:Integer
 0043DF39    mov         eax,dword ptr [ebp-4]
 0043DF3C    mov         byte ptr [eax+80],0;TOpenDialog.FFileEditStyle:TFileEditStyle
 0043DF43    mov         eax,dword ptr [ebp-4]
 0043DF46    cmp         byte ptr [ebp-5],0
>0043DF4A    je          0043DF5B
 0043DF4C    call        @AfterConstruction
 0043DF51    pop         dword ptr fs:[0]
 0043DF58    add         esp,0C
 0043DF5B    mov         eax,dword ptr [ebp-4]
 0043DF5E    mov         esp,ebp
 0043DF60    pop         ebp
 0043DF61    ret
*}
end;

//0043DF6C
destructor TOpenDialog.Destroy;
begin
{*
 0043DF6C    push        ebp
 0043DF6D    mov         ebp,esp
 0043DF6F    add         esp,0FFFFFFF8
 0043DF72    call        @BeforeDestruction
 0043DF77    mov         byte ptr [ebp-5],dl
 0043DF7A    mov         dword ptr [ebp-4],eax
 0043DF7D    mov         eax,dword ptr [ebp-4]
 0043DF80    mov         eax,dword ptr [eax+7C]
 0043DF83    call        TObject.Free
 0043DF88    mov         eax,dword ptr [ebp-4]
 0043DF8B    mov         eax,dword ptr [eax+58]
 0043DF8E    call        TObject.Free
 0043DF93    mov         dl,byte ptr [ebp-5]
 0043DF96    and         dl,0FC
 0043DF99    mov         eax,dword ptr [ebp-4]
 0043DF9C    call        TCommonDialog.Destroy
 0043DFA1    cmp         byte ptr [ebp-5],0
>0043DFA5    jle         0043DFAF
 0043DFA7    mov         eax,dword ptr [ebp-4]
 0043DFAA    call        @ClassDestroy
 0043DFAF    pop         ecx
 0043DFB0    pop         ecx
 0043DFB1    pop         ebp
 0043DFB2    ret
*}
end;

//0043DFB4
{*function sub_0043DFB4(?:TOpenDialog; ?:?):?;
begin
 0043DFB4    push        ebp
 0043DFB5    mov         ebp,esp
 0043DFB7    add         esp,0FFFFFFF4
 0043DFBA    push        esi
 0043DFBB    mov         dword ptr [ebp-8],edx
 0043DFBE    mov         dword ptr [ebp-4],eax
 0043DFC1    mov         edx,dword ptr [ebp-8]
 0043DFC4    mov         eax,dword ptr [ebp-4]
 0043DFC7    call        0043E7A0
 0043DFCC    mov         eax,dword ptr [ebp-4]
 0043DFCF    mov         si,0FFED
 0043DFD3    call        @CallDynaInst
 0043DFD8    mov         byte ptr [ebp-9],al
 0043DFDB    mov         eax,dword ptr [ebp-4]
 0043DFDE    mov         eax,dword ptr [eax+7C]
 0043DFE1    mov         edx,dword ptr [eax]
 0043DFE3    call        dword ptr [edx+44]
 0043DFE6    mov         al,byte ptr [ebp-9]
 0043DFE9    pop         esi
 0043DFEA    mov         esp,ebp
 0043DFEC    pop         ebp
 0043DFED    ret
end;*}

//0043DFF0
{*procedure sub_0043DFF0(?:?);
begin
 0043DFF0    push        ebp
 0043DFF1    mov         ebp,esp
 0043DFF3    add         esp,0FFFFFFF0
 0043DFF6    push        esi
 0043DFF7    mov         dword ptr [ebp-8],edx
 0043DFFA    mov         dword ptr [ebp-4],eax
 0043DFFD    mov         eax,dword ptr [ebp-8]
 0043E000    xor         edx,edx
 0043E002    mov         dword ptr [eax+0C],edx
 0043E005    mov         eax,dword ptr [ebp-8]
 0043E008    cmp         dword ptr [eax],110
>0043E00E    jne         0043E01D
 0043E010    mov         eax,dword ptr [ebp-4]
 0043E013    test        byte ptr [eax+5E],1;TOpenDialog.?f5E:byte
>0043E017    je          0043E139
 0043E01D    mov         eax,dword ptr [ebp-8]
 0043E020    cmp         dword ptr [eax],4E
>0043E023    jne         0043E12E
 0043E029    mov         eax,dword ptr [ebp-8]
 0043E02C    mov         eax,dword ptr [eax+8]
 0043E02F    mov         eax,dword ptr [eax+8]
 0043E032    add         eax,260
 0043E037    cmp         eax,7
>0043E03A    ja          0043E12E
 0043E040    jmp         dword ptr [eax*4+43E047]
 0043E040    dd          0043E0FF
 0043E040    dd          0043E0CE
 0043E040    dd          0043E067
 0043E040    dd          0043E12E
 0043E040    dd          0043E12E
 0043E040    dd          0043E0C0
 0043E040    dd          0043E0B2
 0043E040    dd          0043E0A4
 0043E067    mov         eax,dword ptr [ebp-8]
 0043E06A    mov         eax,dword ptr [eax+8]
 0043E06D    mov         edx,dword ptr [eax+0C]
 0043E070    mov         eax,dword ptr [ebp-4]
 0043E073    call        0043DFB4
 0043E078    test        al,al
>0043E07A    jne         0043E12E
 0043E080    mov         eax,dword ptr [ebp-8]
 0043E083    mov         dword ptr [eax+0C],1
 0043E08A    mov         eax,dword ptr [ebp-8]
 0043E08D    mov         eax,dword ptr [eax+0C]
 0043E090    push        eax
 0043E091    push        0
 0043E093    mov         eax,dword ptr [ebp-4]
 0043E096    mov         eax,dword ptr [eax+3C];TOpenDialog.FHandle:HWND
 0043E099    push        eax
 0043E09A    call        user32.SetWindowLongA
>0043E09F    jmp         0043E139
 0043E0A4    mov         eax,dword ptr [ebp-4]
 0043E0A7    mov         si,0FFEE
 0043E0AB    call        @CallDynaInst;TCommonDialog.sub_0043DE18
>0043E0B0    jmp         0043E12E
 0043E0B2    mov         eax,dword ptr [ebp-4]
 0043E0B5    mov         si,0FFEC
 0043E0B9    call        @CallDynaInst;TOpenDialog.sub_0043E178
>0043E0BE    jmp         0043E12E
 0043E0C0    mov         eax,dword ptr [ebp-4]
 0043E0C3    mov         si,0FFEB
 0043E0C7    call        @CallDynaInst;TOpenDialog.sub_0043E1A4
>0043E0CC    jmp         0043E12E
 0043E0CE    mov         eax,dword ptr [ebp-8]
 0043E0D1    mov         eax,dword ptr [eax+8]
 0043E0D4    mov         eax,dword ptr [eax+0C]
 0043E0D7    mov         eax,dword ptr [eax+18]
 0043E0DA    mov         dword ptr [ebp-0C],eax
 0043E0DD    mov         eax,dword ptr [ebp-0C]
 0043E0E0    mov         edx,dword ptr [ebp-4]
 0043E0E3    cmp         eax,dword ptr [edx+68];TOpenDialog.FCurrentFilterIndex:Integer
>0043E0E6    je          0043E12E
 0043E0E8    mov         eax,dword ptr [ebp-0C]
 0043E0EB    mov         edx,dword ptr [ebp-4]
 0043E0EE    mov         dword ptr [edx+68],eax;TOpenDialog.FCurrentFilterIndex:Integer
 0043E0F1    mov         eax,dword ptr [ebp-4]
 0043E0F4    mov         si,0FFEA
 0043E0F8    call        @CallDynaInst;TOpenDialog.sub_0043E1D0
>0043E0FD    jmp         0043E12E
 0043E0FF    mov         eax,dword ptr [ebp-8]
 0043E102    cmp         dword ptr [eax+8],0
>0043E106    je          0043E12E
 0043E108    mov         byte ptr [ebp-0D],1
 0043E10C    lea         ecx,[ebp-0D]
 0043E10F    mov         eax,dword ptr [ebp-8]
 0043E112    mov         eax,dword ptr [eax+8]
 0043E115    mov         edx,eax
 0043E117    mov         eax,dword ptr [ebp-4]
 0043E11A    mov         si,0FFE9
 0043E11E    call        @CallDynaInst;TOpenDialog.sub_0043EA04
 0043E123    xor         eax,eax
 0043E125    mov         al,byte ptr [ebp-0D]
 0043E128    mov         edx,dword ptr [ebp-8]
 0043E12B    mov         dword ptr [edx+0C],eax
 0043E12E    mov         edx,dword ptr [ebp-8]
 0043E131    mov         eax,dword ptr [ebp-4]
 0043E134    call        0043DC88
 0043E139    pop         esi
 0043E13A    mov         esp,ebp
 0043E13C    pop         ebp
 0043E13D    ret
end;*}

//0043E140
procedure TOpenDialog.sub_0043E140;
begin
{*
 0043E140    push        ebp
 0043E141    mov         ebp,esp
 0043E143    add         esp,0FFFFFFF8
 0043E146    push        ebx
 0043E147    mov         dword ptr [ebp-4],eax
 0043E14A    mov         byte ptr [ebp-5],1
 0043E14E    mov         eax,dword ptr [ebp-4]
 0043E151    cmp         word ptr [eax+0A2],0;TOpenDialog.?fA2:word
>0043E159    je          0043E170
 0043E15B    lea         ecx,[ebp-5]
 0043E15E    mov         ebx,dword ptr [ebp-4]
 0043E161    mov         edx,dword ptr [ebp-4]
 0043E164    mov         eax,dword ptr [ebx+0A4];TOpenDialog.?fA4:dword
 0043E16A    call        dword ptr [ebx+0A0];TOpenDialog.OnCanClose
 0043E170    mov         al,byte ptr [ebp-5]
 0043E173    pop         ebx
 0043E174    pop         ecx
 0043E175    pop         ecx
 0043E176    pop         ebp
 0043E177    ret
*}
end;

//0043E178
procedure TOpenDialog.sub_0043E178;
begin
{*
 0043E178    push        ebp
 0043E179    mov         ebp,esp
 0043E17B    push        ecx
 0043E17C    push        ebx
 0043E17D    mov         dword ptr [ebp-4],eax
 0043E180    mov         eax,dword ptr [ebp-4]
 0043E183    cmp         word ptr [eax+8A],0;TOpenDialog.?f8A:word
>0043E18B    je          0043E19F
 0043E18D    mov         ebx,dword ptr [ebp-4]
 0043E190    mov         edx,dword ptr [ebp-4]
 0043E193    mov         eax,dword ptr [ebx+8C];TOpenDialog.?f8C:dword
 0043E199    call        dword ptr [ebx+88];TOpenDialog.OnSelectionChange
 0043E19F    pop         ebx
 0043E1A0    pop         ecx
 0043E1A1    pop         ebp
 0043E1A2    ret
*}
end;

//0043E1A4
procedure TOpenDialog.sub_0043E1A4;
begin
{*
 0043E1A4    push        ebp
 0043E1A5    mov         ebp,esp
 0043E1A7    push        ecx
 0043E1A8    push        ebx
 0043E1A9    mov         dword ptr [ebp-4],eax
 0043E1AC    mov         eax,dword ptr [ebp-4]
 0043E1AF    cmp         word ptr [eax+92],0;TOpenDialog.?f92:word
>0043E1B7    je          0043E1CB
 0043E1B9    mov         ebx,dword ptr [ebp-4]
 0043E1BC    mov         edx,dword ptr [ebp-4]
 0043E1BF    mov         eax,dword ptr [ebx+94];TOpenDialog.?f94:dword
 0043E1C5    call        dword ptr [ebx+90];TOpenDialog.OnFolderChange
 0043E1CB    pop         ebx
 0043E1CC    pop         ecx
 0043E1CD    pop         ebp
 0043E1CE    ret
*}
end;

//0043E1D0
procedure TOpenDialog.sub_0043E1D0;
begin
{*
 0043E1D0    push        ebp
 0043E1D1    mov         ebp,esp
 0043E1D3    push        ecx
 0043E1D4    push        ebx
 0043E1D5    mov         dword ptr [ebp-4],eax
 0043E1D8    mov         eax,dword ptr [ebp-4]
 0043E1DB    cmp         word ptr [eax+9A],0;TOpenDialog.?f9A:word
>0043E1E3    je          0043E1F7
 0043E1E5    mov         ebx,dword ptr [ebp-4]
 0043E1E8    mov         edx,dword ptr [ebp-4]
 0043E1EB    mov         eax,dword ptr [ebx+9C];TOpenDialog.?f9C:dword
 0043E1F1    call        dword ptr [ebx+98];TOpenDialog.OnTypeChange
 0043E1F7    pop         ebx
 0043E1F8    pop         ecx
 0043E1F9    pop         ebp
 0043E1FA    ret
*}
end;

//0043E248
procedure TOpenDialog.DefineProperties(Filer:TFiler);
begin
{*
 0043E248    push        ebp
 0043E249    mov         ebp,esp
 0043E24B    add         esp,0FFFFFFF8
 0043E24E    push        ebx
 0043E24F    mov         dword ptr [ebp-8],edx
 0043E252    mov         dword ptr [ebp-4],eax
 0043E255    mov         edx,dword ptr [ebp-8]
 0043E258    mov         eax,dword ptr [ebp-4]
 0043E25B    call        TComponent.DefineProperties
 0043E260    mov         eax,dword ptr [ebp-4]
 0043E263    push        eax
 0043E264    push        43E1FC
 0043E269    push        0
 0043E26B    push        0
 0043E26D    xor         ecx,ecx
 0043E26F    mov         edx,43E28C;'FileEditStyle'
 0043E274    mov         eax,dword ptr [ebp-8]
 0043E277    mov         ebx,dword ptr [eax]
 0043E279    call        dword ptr [ebx+4];@AbstractError
 0043E27C    pop         ebx
 0043E27D    pop         ecx
 0043E27E    pop         ecx
 0043E27F    pop         ebp
 0043E280    ret
*}
end;

//0043E29C
{*procedure sub_0043E29C(?:?; ?:?);
begin
 0043E29C    push        ebp
 0043E29D    mov         ebp,esp
 0043E29F    add         esp,0FFFFFFF4
 0043E2A2    mov         dword ptr [ebp-8],edx
 0043E2A5    mov         dword ptr [ebp-4],eax
 0043E2A8    mov         eax,dword ptr [ebp-8]
 0043E2AB    call        @LStrClr
 0043E2B0    cmp         dword ptr [ebp-4],0
>0043E2B4    je          0043E2FC
 0043E2B6    mov         eax,dword ptr [ebp-8]
 0043E2B9    mov         ecx,43E308;#0
 0043E2BE    mov         edx,dword ptr [ebp-4]
 0043E2C1    call        @LStrCat3
 0043E2C6    mov         eax,dword ptr [ebp-8]
 0043E2C9    mov         eax,dword ptr [eax]
 0043E2CB    call        @LStrToPChar
 0043E2D0    mov         dl,7C
 0043E2D2    call        004118AC
 0043E2D7    mov         dword ptr [ebp-0C],eax
 0043E2DA    cmp         dword ptr [ebp-0C],0
>0043E2DE    je          0043E2FC
 0043E2E0    mov         eax,dword ptr [ebp-0C]
 0043E2E3    mov         byte ptr [eax],0
 0043E2E6    inc         dword ptr [ebp-0C]
 0043E2E9    mov         dl,7C
 0043E2EB    mov         eax,dword ptr [ebp-0C]
 0043E2EE    call        004118AC
 0043E2F3    mov         dword ptr [ebp-0C],eax
 0043E2F6    cmp         dword ptr [ebp-0C],0
>0043E2FA    jne         0043E2E0
 0043E2FC    mov         esp,ebp
 0043E2FE    pop         ebp
 0043E2FF    ret
end;*}

//0043E30C
{*function sub_0043E30C(?:TOpenDialog; ?:BOOL):?;
begin
 0043E30C    push        ebp
 0043E30D    mov         ebp,esp
 0043E30F    add         esp,0FFFFFF88
 0043E312    push        ebx
 0043E313    xor         ecx,ecx
 0043E315    mov         dword ptr [ebp-78],ecx
 0043E318    mov         dword ptr [ebp-14],ecx
 0043E31B    mov         dword ptr [ebp-18],ecx
 0043E31E    mov         dword ptr [ebp-1C],ecx
 0043E321    mov         dword ptr [ebp-8],edx
 0043E324    mov         dword ptr [ebp-4],eax
 0043E327    xor         eax,eax
 0043E329    push        ebp
 0043E32A    push        43E630
 0043E32F    push        dword ptr fs:[eax]
 0043E332    mov         dword ptr fs:[eax],esp
 0043E335    mov         eax,dword ptr [ebp-4]
 0043E338    mov         eax,dword ptr [eax+7C]
 0043E33B    mov         edx,dword ptr [eax]
 0043E33D    call        dword ptr [edx+44]
 0043E340    lea         eax,[ebp-74]
 0043E343    xor         ecx,ecx
 0043E345    mov         edx,58
 0043E34A    call        @FillChar
 0043E34F    mov         eax,[0056E1A4];^gvar_0056B7DC
 0043E354    cmp         dword ptr [eax],5
>0043E357    jl          0043E363
 0043E359    mov         eax,[0056E624];^gvar_0056B7D8
 0043E35E    cmp         dword ptr [eax],2
>0043E361    je          0043E381
 0043E363    mov         eax,[0056E624];^gvar_0056B7D8
 0043E368    cmp         dword ptr [eax],1
>0043E36B    jne         0043E38A
 0043E36D    mov         eax,[0056E1A4];^gvar_0056B7DC
 0043E372    cmp         dword ptr [eax],4
>0043E375    jl          0043E38A
 0043E377    mov         eax,[0056E45C];^gvar_0056B7E0
 0043E37C    cmp         dword ptr [eax],5A
>0043E37F    jl          0043E38A
 0043E381    mov         dword ptr [ebp-74],58
>0043E388    jmp         0043E391
 0043E38A    mov         dword ptr [ebp-74],4C
 0043E391    mov         eax,[0056F668];0x0 HInstance:LongWord
 0043E396    mov         dword ptr [ebp-6C],eax
 0043E399    push        ebp
 0043E39A    lea         edx,[ebp-78]
 0043E39D    mov         eax,dword ptr [ebp-4]
 0043E3A0    mov         eax,dword ptr [eax+60]
 0043E3A3    call        0043E29C
 0043E3A8    pop         ecx
 0043E3A9    mov         edx,dword ptr [ebp-78]
 0043E3AC    lea         eax,[ebp-14]
 0043E3AF    call        @LStrLAsg
 0043E3B4    mov         eax,dword ptr [ebp-14]
 0043E3B7    call        @LStrToPChar
 0043E3BC    mov         dword ptr [ebp-68],eax
 0043E3BF    mov         eax,dword ptr [ebp-4]
 0043E3C2    mov         eax,dword ptr [eax+64]
 0043E3C5    mov         dword ptr [ebp-5C],eax
 0043E3C8    mov         eax,dword ptr [ebp-4]
 0043E3CB    mov         eax,dword ptr [eax+64]
 0043E3CE    mov         edx,dword ptr [ebp-4]
 0043E3D1    mov         dword ptr [edx+68],eax
 0043E3D4    mov         eax,dword ptr [ebp-4]
 0043E3D7    test        byte ptr [eax+5C],40
>0043E3DB    je          0043E3E6
 0043E3DD    mov         dword ptr [ebp-54],0FFEF
>0043E3E4    jmp         0043E3ED
 0043E3E6    mov         dword ptr [ebp-54],104
 0043E3ED    mov         edx,dword ptr [ebp-54]
 0043E3F0    add         edx,2
 0043E3F3    lea         eax,[ebp-18]
 0043E3F6    call        @LStrSetLength
 0043E3FB    mov         eax,dword ptr [ebp-18]
 0043E3FE    call        @LStrToPChar
 0043E403    mov         dword ptr [ebp-58],eax
 0043E406    mov         edx,dword ptr [ebp-54]
 0043E409    add         edx,2
 0043E40C    mov         eax,dword ptr [ebp-58]
 0043E40F    xor         ecx,ecx
 0043E411    call        @FillChar
 0043E416    mov         eax,dword ptr [ebp-4]
 0043E419    mov         eax,dword ptr [eax+78]
 0043E41C    call        @LStrToPChar
 0043E421    mov         edx,eax
 0043E423    mov         ecx,dword ptr [ebp-54]
 0043E426    mov         eax,dword ptr [ebp-58]
 0043E429    call        StrLCopy
 0043E42E    mov         eax,dword ptr [ebp-4]
 0043E431    cmp         dword ptr [eax+6C],0
>0043E435    jne         0043E44A
 0043E437    cmp         byte ptr ds:[56C0AC],0;gvar_0056C0AC
>0043E43E    je          0043E44A
 0043E440    mov         eax,43E640
 0043E445    mov         dword ptr [ebp-48],eax
>0043E448    jmp         0043E458
 0043E44A    mov         eax,dword ptr [ebp-4]
 0043E44D    mov         eax,dword ptr [eax+6C]
 0043E450    call        @LStrToPChar
 0043E455    mov         dword ptr [ebp-48],eax
 0043E458    mov         eax,dword ptr [ebp-4]
 0043E45B    mov         eax,dword ptr [eax+70]
 0043E45E    call        @LStrToPChar
 0043E463    mov         dword ptr [ebp-44],eax
 0043E466    mov         dword ptr [ebp-40],20
 0043E46D    xor         eax,eax
 0043E46F    mov         dword ptr [ebp-20],eax
 0043E472    mov         byte ptr [ebp-0D],0
 0043E476    mov         al,byte ptr [ebp-0D]
 0043E479    mov         edx,dword ptr [ebp-4]
 0043E47C    cmp         al,1F
>0043E47E    ja          0043E487
 0043E480    and         eax,7F
 0043E483    bt          dword ptr [edx+5C],eax
>0043E487    jae         0043E498
 0043E489    xor         eax,eax
 0043E48B    mov         al,byte ptr [ebp-0D]
 0043E48E    mov         eax,dword ptr [eax*4+56C0B8]
 0043E495    or          dword ptr [ebp-40],eax
 0043E498    inc         byte ptr [ebp-0D]
 0043E49B    cmp         byte ptr [ebp-0D],16
>0043E49F    jne         0043E476
 0043E4A1    mov         eax,[0056E264];^NewStyleControls:Boolean
 0043E4A6    cmp         byte ptr [eax],0
>0043E4A9    je          0043E518
 0043E4AB    xor         dword ptr [ebp-40],80000
 0043E4B2    mov         eax,[0056E1A4];^gvar_0056B7DC
 0043E4B7    cmp         dword ptr [eax],5
>0043E4BA    jl          0043E4C6
 0043E4BC    mov         eax,[0056E624];^gvar_0056B7D8
 0043E4C1    cmp         dword ptr [eax],2
>0043E4C4    je          0043E4E4
 0043E4C6    mov         eax,[0056E624];^gvar_0056B7D8
 0043E4CB    cmp         dword ptr [eax],1
>0043E4CE    jne         0043E51F
 0043E4D0    mov         eax,[0056E1A4];^gvar_0056B7DC
 0043E4D5    cmp         dword ptr [eax],4
>0043E4D8    jl          0043E51F
 0043E4DA    mov         eax,[0056E45C];^gvar_0056B7E0
 0043E4DF    cmp         dword ptr [eax],5A
>0043E4E2    jl          0043E51F
 0043E4E4    mov         byte ptr [ebp-0E],0
 0043E4E8    mov         al,byte ptr [ebp-0E]
 0043E4EB    mov         edx,dword ptr [ebp-4]
 0043E4EE    cmp         al,7
>0043E4F0    ja          0043E4FC
 0043E4F2    and         eax,7F
 0043E4F5    bt          dword ptr [edx+0B0],eax
>0043E4FC    jae         0043E50D
 0043E4FE    xor         eax,eax
 0043E500    mov         al,byte ptr [ebp-0E]
 0043E503    mov         eax,dword ptr [eax*4+56C110]
 0043E50A    or          dword ptr [ebp-20],eax
 0043E50D    inc         byte ptr [ebp-0E]
 0043E510    cmp         byte ptr [ebp-0E],1
>0043E514    jne         0043E4E8
>0043E516    jmp         0043E51F
 0043E518    and         dword ptr [ebp-40],0FFF7FFFF
 0043E51F    lea         eax,[ebp-1C]
 0043E522    mov         edx,dword ptr [ebp-4]
 0043E525    mov         edx,dword ptr [edx+74]
 0043E528    call        @LStrLAsg
 0043E52D    cmp         dword ptr [ebp-1C],0
>0043E531    jne         0043E559
 0043E533    test        byte ptr [ebp-3E],8
>0043E537    jne         0043E559
 0043E539    lea         edx,[ebp-1C]
 0043E53C    mov         eax,dword ptr [ebp-4]
 0043E53F    mov         eax,dword ptr [eax+78]
 0043E542    call        0040CCE0
 0043E547    lea         eax,[ebp-1C]
 0043E54A    mov         ecx,1
 0043E54F    mov         edx,1
 0043E554    call        @LStrDelete
 0043E559    cmp         dword ptr [ebp-1C],0
>0043E55D    je          0043E56A
 0043E55F    mov         eax,dword ptr [ebp-1C]
 0043E562    call        @LStrToPChar
 0043E567    mov         dword ptr [ebp-38],eax
 0043E56A    mov         eax,dword ptr [ebp-4]
 0043E56D    test        byte ptr [eax+5E],1
>0043E571    jne         0043E57D
 0043E573    mov         eax,[0056E264];^NewStyleControls:Boolean
 0043E578    cmp         byte ptr [eax],0
>0043E57B    jne         0043E586
 0043E57D    mov         dword ptr [ebp-30],43DA80;sub_0043DA80
>0043E584    jmp         0043E58D
 0043E586    mov         dword ptr [ebp-30],43DE3C;sub_0043DE3C
 0043E58D    mov         eax,dword ptr [ebp-4]
 0043E590    cmp         dword ptr [eax+44],0
>0043E594    je          0043E5A3
 0043E596    or          dword ptr [ebp-40],40
 0043E59A    mov         eax,dword ptr [ebp-4]
 0043E59D    mov         eax,dword ptr [eax+44]
 0043E5A0    mov         dword ptr [ebp-2C],eax
 0043E5A3    mov         eax,[0056E3C0];^Application:TApplication
 0043E5A8    mov         eax,dword ptr [eax]
 0043E5AA    mov         eax,dword ptr [eax+30];TApplication.FHandle:HWND
 0043E5AD    mov         dword ptr [ebp-70],eax
 0043E5B0    lea         ecx,[ebp-74]
 0043E5B3    mov         edx,dword ptr [ebp-8]
 0043E5B6    mov         eax,dword ptr [ebp-4]
 0043E5B9    mov         ebx,dword ptr [eax]
 0043E5BB    call        dword ptr [ebx+38]
 0043E5BE    mov         dword ptr [ebp-0C],eax
 0043E5C1    cmp         dword ptr [ebp-0C],0
>0043E5C5    je          0043E60D
 0043E5C7    lea         edx,[ebp-74]
 0043E5CA    mov         eax,dword ptr [ebp-4]
 0043E5CD    call        0043E7A0
 0043E5D2    test        byte ptr [ebp-3F],4
>0043E5D6    je          0043E5E4
 0043E5D8    mov         eax,dword ptr [ebp-4]
 0043E5DB    or          dword ptr [eax+5C],80
>0043E5E2    jmp         0043E5EE
 0043E5E4    mov         eax,dword ptr [ebp-4]
 0043E5E7    and         dword ptr [eax+5C],0FFFFFF7F
 0043E5EE    test        byte ptr [ebp-40],1
>0043E5F2    je          0043E5FD
 0043E5F4    mov         eax,dword ptr [ebp-4]
 0043E5F7    or          dword ptr [eax+5C],1
>0043E5FB    jmp         0043E604
 0043E5FD    mov         eax,dword ptr [ebp-4]
 0043E600    and         dword ptr [eax+5C],0FFFFFFFE
 0043E604    mov         eax,dword ptr [ebp-5C]
 0043E607    mov         edx,dword ptr [ebp-4]
 0043E60A    mov         dword ptr [edx+64],eax
 0043E60D    xor         eax,eax
 0043E60F    pop         edx
 0043E610    pop         ecx
 0043E611    pop         ecx
 0043E612    mov         dword ptr fs:[eax],edx
 0043E615    push        43E637
 0043E61A    lea         eax,[ebp-78]
 0043E61D    call        @LStrClr
 0043E622    lea         eax,[ebp-1C]
 0043E625    mov         edx,3
 0043E62A    call        @LStrArrayClr
 0043E62F    ret
>0043E630    jmp         @HandleFinally
>0043E635    jmp         0043E61A
 0043E637    mov         eax,dword ptr [ebp-0C]
 0043E63A    pop         ebx
 0043E63B    mov         esp,ebp
 0043E63D    pop         ebp
 0043E63E    ret
end;*}

//0043E644
{*function sub_0043E644(?:?; ?:AnsiString; ?:?):?;
begin
 0043E644    push        ebp
 0043E645    mov         ebp,esp
 0043E647    add         esp,0FFFFFFF4
 0043E64A    mov         dword ptr [ebp-8],edx
 0043E64D    mov         dword ptr [ebp-4],eax
 0043E650    mov         eax,dword ptr [ebp+8]
 0043E653    mov         dl,byte ptr [eax-1]
 0043E656    mov         eax,dword ptr [ebp-4]
 0043E659    call        004118AC
 0043E65E    mov         dword ptr [ebp-0C],eax
 0043E661    cmp         dword ptr [ebp-0C],0
>0043E665    jne         0043E67F
 0043E667    mov         eax,dword ptr [ebp-8]
 0043E66A    mov         edx,dword ptr [ebp-4]
 0043E66D    call        @LStrFromPChar
 0043E672    mov         eax,dword ptr [ebp-4]
 0043E675    call        StrEnd
 0043E67A    mov         dword ptr [ebp-0C],eax
>0043E67D    jmp         0043E693
 0043E67F    mov         ecx,dword ptr [ebp-0C]
 0043E682    sub         ecx,dword ptr [ebp-4]
 0043E685    mov         eax,dword ptr [ebp-8]
 0043E688    mov         edx,dword ptr [ebp-4]
 0043E68B    call        @LStrFromPCharLen
 0043E690    inc         dword ptr [ebp-0C]
 0043E693    mov         eax,dword ptr [ebp-0C]
 0043E696    mov         esp,ebp
 0043E698    pop         ebp
 0043E699    ret
end;*}

//0043E69C
{*procedure sub_0043E69C(?:?; ?:?);
begin
 0043E69C    push        ebp
 0043E69D    mov         ebp,esp
 0043E69F    push        0
 0043E6A1    push        0
 0043E6A3    push        0
 0043E6A5    mov         dword ptr [ebp-4],eax
 0043E6A8    xor         eax,eax
 0043E6AA    push        ebp
 0043E6AB    push        43E789
 0043E6B0    push        dword ptr fs:[eax]
 0043E6B3    mov         dword ptr fs:[eax],esp
 0043E6B6    mov         eax,dword ptr [ebp+8]
 0043E6B9    push        eax
 0043E6BA    lea         edx,[ebp-8]
 0043E6BD    mov         eax,dword ptr [ebp-4]
 0043E6C0    call        0043E644
 0043E6C5    pop         ecx
 0043E6C6    mov         dword ptr [ebp-4],eax
 0043E6C9    mov         eax,dword ptr [ebp+8]
 0043E6CC    push        eax
 0043E6CD    lea         edx,[ebp-0C]
 0043E6D0    mov         eax,dword ptr [ebp-4]
 0043E6D3    call        0043E644
 0043E6D8    pop         ecx
 0043E6D9    mov         dword ptr [ebp-4],eax
 0043E6DC    cmp         dword ptr [ebp-0C],0
>0043E6E0    jne         0043E6F5
 0043E6E2    mov         eax,dword ptr [ebp+8]
 0043E6E5    mov         eax,dword ptr [eax-8]
 0043E6E8    mov         eax,dword ptr [eax+7C]
 0043E6EB    mov         edx,dword ptr [ebp-8]
 0043E6EE    mov         ecx,dword ptr [eax]
 0043E6F0    call        dword ptr [ecx+38]
>0043E6F3    jmp         0043E76E
 0043E6F5    mov         eax,dword ptr [ebp-8]
 0043E6F8    call        0040CB00
 0043E6FD    cmp         byte ptr [eax],5C
>0043E700    je          0043E70F
 0043E702    lea         eax,[ebp-8]
 0043E705    mov         edx,43E79C;'\'
 0043E70A    call        @LStrCat
 0043E70F    mov         eax,dword ptr [ebp-0C]
 0043E712    cmp         byte ptr [eax],5C
>0043E715    je          0043E744
 0043E717    mov         eax,dword ptr [ebp-0C]
 0043E71A    call        @LStrLen
 0043E71F    cmp         eax,3
>0043E722    jle         0043E736
 0043E724    mov         eax,dword ptr [ebp-0C]
 0043E727    cmp         byte ptr [eax+1],3A
>0043E72B    jne         0043E736
 0043E72D    mov         eax,dword ptr [ebp-0C]
 0043E730    cmp         byte ptr [eax+2],5C
>0043E734    je          0043E744
 0043E736    lea         eax,[ebp-0C]
 0043E739    mov         ecx,dword ptr [ebp-0C]
 0043E73C    mov         edx,dword ptr [ebp-8]
 0043E73F    call        @LStrCat3
 0043E744    mov         eax,dword ptr [ebp+8]
 0043E747    mov         eax,dword ptr [eax-8]
 0043E74A    mov         eax,dword ptr [eax+7C]
 0043E74D    mov         edx,dword ptr [ebp-0C]
 0043E750    mov         ecx,dword ptr [eax]
 0043E752    call        dword ptr [ecx+38]
 0043E755    mov         eax,dword ptr [ebp+8]
 0043E758    push        eax
 0043E759    lea         edx,[ebp-0C]
 0043E75C    mov         eax,dword ptr [ebp-4]
 0043E75F    call        0043E644
 0043E764    pop         ecx
 0043E765    mov         dword ptr [ebp-4],eax
 0043E768    cmp         dword ptr [ebp-0C],0
>0043E76C    jne         0043E70F
 0043E76E    xor         eax,eax
 0043E770    pop         edx
 0043E771    pop         ecx
 0043E772    pop         ecx
 0043E773    mov         dword ptr fs:[eax],edx
 0043E776    push        43E790
 0043E77B    lea         eax,[ebp-0C]
 0043E77E    mov         edx,2
 0043E783    call        @LStrArrayClr
 0043E788    ret
>0043E789    jmp         @HandleFinally
>0043E78E    jmp         0043E77B
 0043E790    mov         esp,ebp
 0043E792    pop         ebp
 0043E793    ret
end;*}

//0043E7A0
{*procedure sub_0043E7A0(?:?; ?:Byte);
begin
 0043E7A0    push        ebp
 0043E7A1    mov         ebp,esp
 0043E7A3    add         esp,0FFFFFFF0
 0043E7A6    push        ebx
 0043E7A7    xor         ecx,ecx
 0043E7A9    mov         dword ptr [ebp-10],ecx
 0043E7AC    mov         dword ptr [ebp-0C],edx
 0043E7AF    mov         dword ptr [ebp-8],eax
 0043E7B2    xor         eax,eax
 0043E7B4    push        ebp
 0043E7B5    push        43E854
 0043E7BA    push        dword ptr fs:[eax]
 0043E7BD    mov         dword ptr fs:[eax],esp
 0043E7C0    mov         byte ptr [ebp-1],0
 0043E7C4    mov         eax,dword ptr [ebp-8]
 0043E7C7    test        byte ptr [eax+5C],40
>0043E7CB    je          0043E7E4
 0043E7CD    mov         eax,dword ptr [ebp-8]
 0043E7D0    test        byte ptr [eax+5E],1
>0043E7D4    jne         0043E7E0
 0043E7D6    mov         eax,[0056E264];^NewStyleControls:Boolean
 0043E7DB    cmp         byte ptr [eax],0
>0043E7DE    jne         0043E7E4
 0043E7E0    mov         byte ptr [ebp-1],20
 0043E7E4    mov         eax,dword ptr [ebp-8]
 0043E7E7    test        byte ptr [eax+5C],40
>0043E7EB    je          0043E81A
 0043E7ED    push        ebp
 0043E7EE    mov         eax,dword ptr [ebp-0C]
 0043E7F1    mov         eax,dword ptr [eax+1C]
 0043E7F4    call        0043E69C
 0043E7F9    pop         ecx
 0043E7FA    lea         ecx,[ebp-10]
 0043E7FD    mov         eax,dword ptr [ebp-8]
 0043E800    mov         eax,dword ptr [eax+7C]
 0043E803    xor         edx,edx
 0043E805    mov         ebx,dword ptr [eax]
 0043E807    call        dword ptr [ebx+0C]
 0043E80A    mov         edx,dword ptr [ebp-10]
 0043E80D    mov         eax,dword ptr [ebp-8]
 0043E810    add         eax,78
 0043E813    call        @LStrAsg
>0043E818    jmp         0043E83E
 0043E81A    push        ebp
 0043E81B    mov         eax,dword ptr [ebp-8]
 0043E81E    lea         edx,[eax+78]
 0043E821    mov         eax,dword ptr [ebp-0C]
 0043E824    mov         eax,dword ptr [eax+1C]
 0043E827    call        0043E644
 0043E82C    pop         ecx
 0043E82D    mov         eax,dword ptr [ebp-8]
 0043E830    mov         edx,dword ptr [eax+78]
 0043E833    mov         eax,dword ptr [ebp-8]
 0043E836    mov         eax,dword ptr [eax+7C]
 0043E839    mov         ecx,dword ptr [eax]
 0043E83B    call        dword ptr [ecx+38]
 0043E83E    xor         eax,eax
 0043E840    pop         edx
 0043E841    pop         ecx
 0043E842    pop         ecx
 0043E843    mov         dword ptr fs:[eax],edx
 0043E846    push        43E85B
 0043E84B    lea         eax,[ebp-10]
 0043E84E    call        @LStrClr
 0043E853    ret
>0043E854    jmp         @HandleFinally
>0043E859    jmp         0043E84B
 0043E85B    pop         ebx
 0043E85C    mov         esp,ebp
 0043E85E    pop         ebp
 0043E85F    ret
end;*}

//0043E860
{*procedure sub_0043E860(?:?);
begin
 0043E860    push        ebp
 0043E861    mov         ebp,esp
 0043E863    add         esp,0FFFFFFF8
 0043E866    mov         dword ptr [ebp-8],edx
 0043E869    mov         dword ptr [ebp-4],eax
 0043E86C    mov         eax,dword ptr [ebp-4]
 0043E86F    cmp         dword ptr [eax+3C],0;TOpenDialog.FHandle:HWND
>0043E873    je          0043E8C1
 0043E875    mov         eax,dword ptr [ebp-4]
 0043E878    test        byte ptr [eax+5E],1;TOpenDialog.?f5E:byte
>0043E87C    jne         0043E8AF
 0043E87E    mov         eax,dword ptr [ebp-8]
 0043E881    push        eax
 0043E882    push        45F
 0043E887    mov         eax,dword ptr [ebp-4]
 0043E88A    mov         eax,dword ptr [eax+3C];TOpenDialog.FHandle:HWND
 0043E88D    push        eax
 0043E88E    call        user32.GetDlgItem
 0043E893    push        eax
 0043E894    call        user32.GetWindowRect
 0043E899    push        2
 0043E89B    mov         eax,dword ptr [ebp-8]
 0043E89E    push        eax
 0043E89F    mov         eax,dword ptr [ebp-4]
 0043E8A2    mov         eax,dword ptr [eax+3C];TOpenDialog.FHandle:HWND
 0043E8A5    push        eax
 0043E8A6    push        0
 0043E8A8    call        user32.MapWindowPoints
>0043E8AD    jmp         0043E8D2
 0043E8AF    mov         eax,dword ptr [ebp-8]
 0043E8B2    push        eax
 0043E8B3    mov         eax,dword ptr [ebp-4]
 0043E8B6    mov         eax,dword ptr [eax+3C];TOpenDialog.FHandle:HWND
 0043E8B9    push        eax
 0043E8BA    call        user32.GetClientRect
>0043E8BF    jmp         0043E8D2
 0043E8C1    push        0
 0043E8C3    mov         eax,dword ptr [ebp-8]
 0043E8C6    push        eax
 0043E8C7    xor         ecx,ecx
 0043E8C9    xor         edx,edx
 0043E8CB    xor         eax,eax
 0043E8CD    call        0041E714
 0043E8D2    pop         ecx
 0043E8D3    pop         ecx
 0043E8D4    pop         ebp
 0043E8D5    ret
end;*}

//0043E8D8
{*procedure TOpenDialog.GetFileName(?:?);
begin
 0043E8D8    push        ebp
 0043E8D9    mov         ebp,esp
 0043E8DB    add         esp,0FFFFFEF0
 0043E8E1    mov         dword ptr [ebp-8],edx
 0043E8E4    mov         dword ptr [ebp-4],eax
 0043E8E7    mov         eax,[0056E264];^NewStyleControls:Boolean
 0043E8EC    cmp         byte ptr [eax],0
>0043E8EF    je          0043E92D
 0043E8F1    mov         eax,dword ptr [ebp-4]
 0043E8F4    cmp         dword ptr [eax+3C],0;TOpenDialog.FHandle:HWND
>0043E8F8    je          0043E92D
 0043E8FA    lea         eax,[ebp-10D]
 0043E900    push        eax
 0043E901    push        105
 0043E906    push        465
 0043E90B    mov         eax,dword ptr [ebp-4]
 0043E90E    mov         eax,dword ptr [eax+3C];TOpenDialog.FHandle:HWND
 0043E911    push        eax
 0043E912    call        user32.GetParent
 0043E917    push        eax
 0043E918    call        user32.SendMessageA
 0043E91D    mov         edx,dword ptr [ebp-8]
 0043E920    lea         eax,[ebp-10D]
 0043E926    call        0040D07C
>0043E92B    jmp         0043E93B
 0043E92D    mov         eax,dword ptr [ebp-8]
 0043E930    mov         edx,dword ptr [ebp-4]
 0043E933    mov         edx,dword ptr [edx+78];TOpenDialog.FileName:TFileName
 0043E936    call        @LStrAsg
 0043E93B    mov         esp,ebp
 0043E93D    pop         ebp
 0043E93E    ret
end;*}

//0043E940
{*function TOpenDialog.GetFilterIndex:?;
begin
 0043E940    push        ebp
 0043E941    mov         ebp,esp
 0043E943    add         esp,0FFFFFFF8
 0043E946    mov         dword ptr [ebp-4],eax
 0043E949    mov         eax,dword ptr [ebp-4]
 0043E94C    cmp         dword ptr [eax+3C],0;TOpenDialog.FHandle:HWND
>0043E950    je          0043E95D
 0043E952    mov         eax,dword ptr [ebp-4]
 0043E955    mov         eax,dword ptr [eax+68];TOpenDialog.FCurrentFilterIndex:Integer
 0043E958    mov         dword ptr [ebp-8],eax
>0043E95B    jmp         0043E966
 0043E95D    mov         eax,dword ptr [ebp-4]
 0043E960    mov         eax,dword ptr [eax+64];TOpenDialog.FilterIndex:Integer
 0043E963    mov         dword ptr [ebp-8],eax
 0043E966    mov         eax,dword ptr [ebp-8]
 0043E969    pop         ecx
 0043E96A    pop         ecx
 0043E96B    pop         ebp
 0043E96C    ret
end;*}

//0043E970
procedure TOpenDialog.SetInitialDir(Value:AnsiString);
begin
{*
 0043E970    push        ebp
 0043E971    mov         ebp,esp
 0043E973    add         esp,0FFFFFFF4
 0043E976    mov         dword ptr [ebp-8],edx
 0043E979    mov         dword ptr [ebp-4],eax
 0043E97C    mov         eax,dword ptr [ebp-8]
 0043E97F    call        @LStrLen
 0043E984    mov         dword ptr [ebp-0C],eax
 0043E987    cmp         dword ptr [ebp-0C],1
>0043E98B    jle         0043E9B4
 0043E98D    mov         edx,dword ptr [ebp-0C]
 0043E990    mov         eax,dword ptr [ebp-8]
 0043E993    call        0041151C
 0043E998    test        al,al
>0043E99A    je          0043E9B4
 0043E99C    mov         ecx,dword ptr [ebp-0C]
 0043E99F    dec         ecx
 0043E9A0    mov         edx,dword ptr [ebp-8]
 0043E9A3    mov         eax,43E9D8;':'
 0043E9A8    call        00411568
 0043E9AD    test        al,al
>0043E9AF    jne         0043E9B4
 0043E9B1    dec         dword ptr [ebp-0C]
 0043E9B4    mov         eax,dword ptr [ebp-4]
 0043E9B7    add         eax,6C;TOpenDialog.InitialDir:String
 0043E9BA    push        eax
 0043E9BB    mov         ecx,dword ptr [ebp-0C]
 0043E9BE    mov         edx,1
 0043E9C3    mov         eax,dword ptr [ebp-8]
 0043E9C6    call        @LStrCopy
 0043E9CB    mov         esp,ebp
 0043E9CD    pop         ebp
 0043E9CE    ret
*}
end;

//0043E9DC
{*function TOpenDialog.Execute:?;
begin
 0043E9DC    push        ebp
 0043E9DD    mov         ebp,esp
 0043E9DF    add         esp,0FFFFFFF8
 0043E9E2    mov         dword ptr [ebp-4],eax
 0043E9E5    mov         edx,43D198;comdlg32.GetOpenFileNameA:BOOL
 0043E9EA    mov         eax,dword ptr [ebp-4]
 0043E9ED    call        0043E30C
 0043E9F2    cmp         eax,1
 0043E9F5    sbb         eax,eax
 0043E9F7    inc         eax
 0043E9F8    mov         byte ptr [ebp-5],al
 0043E9FB    mov         al,byte ptr [ebp-5]
 0043E9FE    pop         ecx
 0043E9FF    pop         ecx
 0043EA00    pop         ebp
 0043EA01    ret
end;*}

//0043EA04
{*procedure TOpenDialog.sub_0043EA04(?:?; ?:?);
begin
 0043EA04    push        ebp
 0043EA05    mov         ebp,esp
 0043EA07    add         esp,0FFFFFFF4
 0043EA0A    push        ebx
 0043EA0B    mov         dword ptr [ebp-0C],ecx
 0043EA0E    mov         dword ptr [ebp-8],edx
 0043EA11    mov         dword ptr [ebp-4],eax
 0043EA14    mov         eax,dword ptr [ebp-4]
 0043EA17    cmp         word ptr [eax+0AA],0;TOpenDialog.?fAA:word
>0043EA1F    je          0043EA36
 0043EA21    mov         ecx,dword ptr [ebp-0C]
 0043EA24    mov         edx,dword ptr [ebp-8]
 0043EA27    mov         ebx,dword ptr [ebp-4]
 0043EA2A    mov         eax,dword ptr [ebx+0AC];TOpenDialog.?fAC:dword
 0043EA30    call        dword ptr [ebx+0A8];TOpenDialog.OnIncludeItem
 0043EA36    pop         ebx
 0043EA37    mov         esp,ebp
 0043EA39    pop         ebp
 0043EA3A    ret
end;*}

//0043EA3C
{*function TSaveDialog.Execute:?;
begin
 0043EA3C    push        ebp
 0043EA3D    mov         ebp,esp
 0043EA3F    add         esp,0FFFFFFF8
 0043EA42    mov         dword ptr [ebp-4],eax
 0043EA45    mov         edx,43D1A0;comdlg32.GetSaveFileNameA:BOOL
 0043EA4A    mov         eax,dword ptr [ebp-4]
 0043EA4D    call        0043E30C
 0043EA52    cmp         eax,1
 0043EA55    sbb         eax,eax
 0043EA57    inc         eax
 0043EA58    mov         byte ptr [ebp-5],al
 0043EA5B    mov         al,byte ptr [ebp-5]
 0043EA5E    pop         ecx
 0043EA5F    pop         ecx
 0043EA60    pop         ebp
 0043EA61    ret
end;*}

//0043EA64
{*procedure sub_0043EA64(?:?; ?:?);
begin
 0043EA64    push        ebp
 0043EA65    mov         ebp,esp
 0043EA67    add         esp,0FFFFFFC0
 0043EA6A    mov         dword ptr [ebp-8],edx
 0043EA6D    mov         dword ptr [ebp-4],eax
 0043EA70    xor         eax,eax
 0043EA72    mov         dword ptr [ebp-0C],eax
 0043EA75    mov         eax,dword ptr [ebp-0C]
 0043EA78    add         eax,41
 0043EA7B    mov         edx,dword ptr [ebp-0C]
 0043EA7E    mov         byte ptr [ebp+edx-40],al
 0043EA82    inc         dword ptr [ebp-0C]
 0043EA85    cmp         dword ptr [ebp-0C],1A
>0043EA89    jne         0043EA75
 0043EA8B    xor         eax,eax
 0043EA8D    mov         dword ptr [ebp-0C],eax
 0043EA90    mov         eax,dword ptr [ebp-0C]
 0043EA93    add         eax,61
 0043EA96    mov         edx,dword ptr [ebp-0C]
 0043EA99    mov         byte ptr [ebp+edx-26],al
 0043EA9D    inc         dword ptr [ebp-0C]
 0043EAA0    cmp         dword ptr [ebp-0C],1A
>0043EAA4    jne         0043EA90
 0043EAA6    mov         eax,dword ptr [ebp-8]
 0043EAA9    push        eax
 0043EAAA    push        34
 0043EAAC    lea         eax,[ebp-40]
 0043EAAF    push        eax
 0043EAB0    mov         eax,dword ptr [ebp-4]
 0043EAB3    call        0042F6A0
 0043EAB8    push        eax
 0043EAB9    call        gdi32.GetTextExtentPointA
 0043EABE    mov         eax,dword ptr [ebp-8]
 0043EAC1    mov         eax,dword ptr [eax]
 0043EAC3    mov         ecx,34
 0043EAC8    cdq
 0043EAC9    idiv        eax,ecx
 0043EACB    mov         edx,dword ptr [ebp-8]
 0043EACE    mov         dword ptr [edx],eax
 0043EAD0    mov         esp,ebp
 0043EAD2    pop         ebp
 0043EAD3    ret
end;*}

//0043EC4C
constructor TMessageForm.Create;
begin
{*
 0043EC4C    push        ebp
 0043EC4D    mov         ebp,esp
 0043EC4F    add         esp,0FFFFFEA0
 0043EC55    test        dl,dl
>0043EC57    je          0043EC61
 0043EC59    add         esp,0FFFFFFF0
 0043EC5C    call        @ClassCreate
 0043EC61    mov         dword ptr [ebp-0C],ecx
 0043EC64    mov         byte ptr [ebp-5],dl
 0043EC67    mov         dword ptr [ebp-4],eax
 0043EC6A    push        0
 0043EC6C    mov         ecx,dword ptr [ebp-0C]
 0043EC6F    xor         edx,edx
 0043EC71    mov         eax,dword ptr [ebp-4]
 0043EC74    call        TFormatSelDialog.Create
 0043EC79    mov         dword ptr [ebp-160],154
 0043EC83    push        0
 0043EC85    lea         eax,[ebp-160]
 0043EC8B    push        eax
 0043EC8C    push        0
 0043EC8E    push        29
 0043EC90    call        user32.SystemParametersInfoA
 0043EC95    test        eax,eax
>0043EC97    je          0043ECAF
 0043EC99    lea         eax,[ebp-48]
 0043EC9C    push        eax
 0043EC9D    call        gdi32.CreateFontIndirectA
 0043ECA2    mov         edx,eax
 0043ECA4    mov         eax,dword ptr [ebp-4]
 0043ECA7    mov         eax,dword ptr [eax+68]
 0043ECAA    call        0042E2DC
 0043ECAF    mov         eax,dword ptr [ebp-4]
 0043ECB2    cmp         byte ptr [ebp-5],0
>0043ECB6    je          0043ECC7
 0043ECB8    call        @AfterConstruction
 0043ECBD    pop         dword ptr fs:[0]
 0043ECC4    add         esp,0C
 0043ECC7    mov         eax,dword ptr [ebp-4]
 0043ECCA    mov         esp,ebp
 0043ECCC    pop         ebp
 0043ECCD    ret
*}
end;

//0043ECD0
{*procedure sub_0043ECD0(?:?; ?:?);
begin
 0043ECD0    push        ebp
 0043ECD1    mov         ebp,esp
 0043ECD3    add         esp,0FFFFFFF8
 0043ECD6    mov         dword ptr [ebp-8],edx
 0043ECD9    mov         dword ptr [ebp-4],eax
 0043ECDC    mov         eax,[0056E3C0];^Application:TApplication
 0043ECE1    mov         eax,dword ptr [eax]
 0043ECE3    mov         edx,dword ptr [ebp-4]
 0043ECE6    mov         edx,dword ptr [edx+158]
 0043ECEC    call        004ABE14
 0043ECF1    pop         ecx
 0043ECF2    pop         ecx
 0043ECF3    pop         ebp
 0043ECF4    ret
end;*}

//0043F170
{*function sub_0043F170(?:?; ?:?; ?:?):?;
begin
 0043F170    push        ebp
 0043F171    mov         ebp,esp
 0043F173    add         esp,0FFFFFF84
 0043F176    push        ebx
 0043F177    push        esi
 0043F178    xor         ebx,ebx
 0043F17A    mov         dword ptr [ebp-7C],ebx
 0043F17D    mov         dword ptr [ebp-78],ebx
 0043F180    mov         dword ptr [ebp-74],ebx
 0043F183    mov         dword ptr [ebp-70],ebx
 0043F186    mov         word ptr [ebp-7],cx
 0043F18A    mov         byte ptr [ebp-5],dl
 0043F18D    mov         dword ptr [ebp-4],eax
 0043F190    xor         eax,eax
 0043F192    push        ebp
 0043F193    push        43F756
 0043F198    push        dword ptr fs:[eax]
 0043F19B    mov         dword ptr fs:[eax],esp
 0043F19E    mov         ecx,dword ptr ds:[56E3C0];^Application:TApplication
 0043F1A4    mov         ecx,dword ptr [ecx]
 0043F1A6    mov         dl,1
 0043F1A8    mov         eax,[0043EAD4];TMessageForm
 0043F1AD    call        TMessageForm.Create;TMessageForm.Create
 0043F1B2    mov         dword ptr [ebp-0C],eax
 0043F1B5    mov         eax,[0056E3C0];^Application:TApplication
 0043F1BA    mov         eax,dword ptr [eax]
 0043F1BC    mov         dl,byte ptr [eax+34];TApplication.FBiDiMode:TBiDiMode
 0043F1BF    mov         eax,dword ptr [ebp-0C]
 0043F1C2    mov         ecx,dword ptr [eax]
 0043F1C4    call        dword ptr [ecx+70];TPanel.SetBiDiMode
 0043F1C7    mov         dl,3
 0043F1C9    mov         eax,dword ptr [ebp-0C]
 0043F1CC    call        TForm.SetBorderStyle
 0043F1D1    mov         eax,dword ptr [ebp-0C]
 0043F1D4    call        004A40F4
 0043F1D9    mov         edx,dword ptr [ebp-0C]
 0043F1DC    mov         edx,dword ptr [edx+68];TMessageForm.FFont:TFont
 0043F1DF    call        TCanvas.SetFont
 0043F1E4    mov         eax,dword ptr [ebp-0C]
 0043F1E7    mov         byte ptr [eax+22D],1;TMessageForm.FKeyPreview:Boolean
 0043F1EE    mov         eax,dword ptr [ebp-0C]
 0043F1F1    mov         edx,dword ptr [ebp-0C]
 0043F1F4    mov         dword ptr [eax+1DC],edx;TMessageForm.?f1DC:TMessageForm
 0043F1FA    mov         dword ptr [eax+1D8],43ECF8;TMessageForm.FOnKeyDown:TKeyEvent
 0043F204    mov         eax,dword ptr [ebp-0C]
 0043F207    call        004A40F4
 0043F20C    lea         edx,[ebp-14]
 0043F20F    call        0043EA64
 0043F214    push        4
 0043F216    mov         eax,dword ptr [ebp-14]
 0043F219    push        eax
 0043F21A    push        8
 0043F21C    call        kernel32.MulDiv
 0043F221    mov         dword ptr [ebp-18],eax
 0043F224    push        8
 0043F226    mov         eax,dword ptr [ebp-10]
 0043F229    push        eax
 0043F22A    push        8
 0043F22C    call        kernel32.MulDiv
 0043F231    mov         dword ptr [ebp-1C],eax
 0043F234    push        4
 0043F236    mov         eax,dword ptr [ebp-14]
 0043F239    push        eax
 0043F23A    push        0A
 0043F23C    call        kernel32.MulDiv
 0043F241    mov         dword ptr [ebp-20],eax
 0043F244    push        8
 0043F246    mov         eax,dword ptr [ebp-10]
 0043F249    push        eax
 0043F24A    push        0A
 0043F24C    call        kernel32.MulDiv
 0043F251    mov         dword ptr [ebp-24],eax
 0043F254    push        4
 0043F256    mov         eax,dword ptr [ebp-14]
 0043F259    push        eax
 0043F25A    push        32
 0043F25C    call        kernel32.MulDiv
 0043F261    mov         dword ptr [ebp-28],eax
 0043F264    mov         byte ptr [ebp-49],0
 0043F268    mov         al,byte ptr [ebp-49]
 0043F26B    cmp         al,0F
>0043F26D    ja          0043F276
 0043F26F    and         eax,7F
 0043F272    bt          dword ptr [ebp-7],eax
>0043F276    jae         0043F315
 0043F27C    xor         eax,eax
 0043F27E    mov         al,byte ptr [ebp-49]
 0043F281    cmp         dword ptr [eax*4+571CA8],0
>0043F289    jne         0043F2F5
 0043F28B    push        0
 0043F28D    lea         eax,[ebp-6C]
 0043F290    push        eax
 0043F291    xor         ecx,ecx
 0043F293    xor         edx,edx
 0043F295    xor         eax,eax
 0043F297    call        0041E714
 0043F29C    mov         eax,dword ptr [ebp-0C]
 0043F29F    call        004867CC
 0043F2A4    or          eax,420
 0043F2A9    push        eax
 0043F2AA    lea         eax,[ebp-6C]
 0043F2AD    push        eax
 0043F2AE    push        0FF
 0043F2B0    lea         edx,[ebp-70]
 0043F2B3    xor         eax,eax
 0043F2B5    mov         al,byte ptr [ebp-49]
 0043F2B8    mov         eax,dword ptr [eax*4+56C168];^SMsgDlgYes:TResStringRec
 0043F2BF    call        LoadResString
 0043F2C4    mov         eax,dword ptr [ebp-70]
 0043F2C7    call        @LStrToPChar
 0043F2CC    push        eax
 0043F2CD    mov         eax,dword ptr [ebp-0C]
 0043F2D0    call        004A40F4
 0043F2D5    call        0042F6A0
 0043F2DA    push        eax
 0043F2DB    call        user32.DrawTextA
 0043F2E0    mov         eax,dword ptr [ebp-64]
 0043F2E3    sub         eax,dword ptr [ebp-6C]
 0043F2E6    add         eax,8
 0043F2E9    xor         edx,edx
 0043F2EB    mov         dl,byte ptr [ebp-49]
 0043F2EE    mov         dword ptr [edx*4+571CA8],eax
 0043F2F5    xor         eax,eax
 0043F2F7    mov         al,byte ptr [ebp-49]
 0043F2FA    mov         eax,dword ptr [eax*4+571CA8]
 0043F301    cmp         eax,dword ptr [ebp-28]
>0043F304    jle         0043F315
 0043F306    xor         eax,eax
 0043F308    mov         al,byte ptr [ebp-49]
 0043F30B    mov         eax,dword ptr [eax*4+571CA8]
 0043F312    mov         dword ptr [ebp-28],eax
 0043F315    inc         byte ptr [ebp-49]
 0043F318    cmp         byte ptr [ebp-49],0B
>0043F31C    jne         0043F268
 0043F322    push        8
 0043F324    mov         eax,dword ptr [ebp-10]
 0043F327    push        eax
 0043F328    push        0E
 0043F32A    call        kernel32.MulDiv
 0043F32F    mov         dword ptr [ebp-2C],eax
 0043F332    push        4
 0043F334    mov         eax,dword ptr [ebp-14]
 0043F337    push        eax
 0043F338    push        4
 0043F33A    call        kernel32.MulDiv
 0043F33F    mov         dword ptr [ebp-30],eax
 0043F342    push        0
 0043F344    mov         eax,[0056E604];^Screen:TScreen
 0043F349    mov         eax,dword ptr [eax]
 0043F34B    call        004A8894
 0043F350    sar         eax,1
>0043F352    jns         0043F357
 0043F354    adc         eax,0
 0043F357    push        eax
 0043F358    push        0
 0043F35A    push        0
 0043F35C    lea         eax,[ebp-6C]
 0043F35F    push        eax
 0043F360    call        user32.SetRect
 0043F365    mov         eax,dword ptr [ebp-0C]
 0043F368    call        004867CC
 0043F36D    or          eax,450
 0043F372    push        eax
 0043F373    lea         eax,[ebp-6C]
 0043F376    push        eax
 0043F377    mov         eax,dword ptr [ebp-4]
 0043F37A    call        @LStrLen
 0043F37F    inc         eax
 0043F380    push        eax
 0043F381    mov         eax,dword ptr [ebp-4]
 0043F384    call        @LStrToPChar
 0043F389    push        eax
 0043F38A    mov         eax,dword ptr [ebp-0C]
 0043F38D    call        004A40F4
 0043F392    call        0042F6A0
 0043F397    push        eax
 0043F398    call        user32.DrawTextA
 0043F39D    xor         eax,eax
 0043F39F    mov         al,byte ptr [ebp-5]
 0043F3A2    mov         eax,dword ptr [eax*4+56C128]
 0043F3A9    mov         dword ptr [ebp-50],eax
 0043F3AC    mov         eax,dword ptr [ebp-64]
 0043F3AF    mov         dword ptr [ebp-3C],eax
 0043F3B2    mov         eax,dword ptr [ebp-60]
 0043F3B5    mov         dword ptr [ebp-40],eax
 0043F3B8    cmp         dword ptr [ebp-50],0
>0043F3BC    je          0043F3D4
 0043F3BE    mov         eax,dword ptr [ebp-20]
 0043F3C1    add         eax,20
 0043F3C4    add         dword ptr [ebp-3C],eax
 0043F3C7    cmp         dword ptr [ebp-40],20
>0043F3CB    jge         0043F3D4
 0043F3CD    mov         dword ptr [ebp-40],20
 0043F3D4    xor         eax,eax
 0043F3D6    mov         dword ptr [ebp-34],eax
 0043F3D9    mov         byte ptr [ebp-49],0
 0043F3DD    mov         al,byte ptr [ebp-49]
 0043F3E0    cmp         al,0F
>0043F3E2    ja          0043F3EB
 0043F3E4    and         eax,7F
 0043F3E7    bt          dword ptr [ebp-7],eax
>0043F3EB    jae         0043F3F0
 0043F3ED    inc         dword ptr [ebp-34]
 0043F3F0    inc         byte ptr [ebp-49]
 0043F3F3    cmp         byte ptr [ebp-49],0B
>0043F3F7    jne         0043F3DD
 0043F3F9    xor         eax,eax
 0043F3FB    mov         dword ptr [ebp-38],eax
 0043F3FE    cmp         dword ptr [ebp-34],0
>0043F402    je          0043F417
 0043F404    mov         eax,dword ptr [ebp-28]
 0043F407    imul        dword ptr [ebp-34]
 0043F40A    mov         edx,dword ptr [ebp-34]
 0043F40D    dec         edx
 0043F40E    imul        edx,dword ptr [ebp-30]
 0043F412    add         eax,edx
 0043F414    mov         dword ptr [ebp-38],eax
 0043F417    mov         edx,dword ptr [ebp-38]
 0043F41A    mov         eax,dword ptr [ebp-3C]
 0043F41D    call        00437470
 0043F422    mov         edx,eax
 0043F424    mov         eax,dword ptr [ebp-18]
 0043F427    add         eax,eax
 0043F429    add         edx,eax
 0043F42B    mov         eax,dword ptr [ebp-0C]
 0043F42E    call        TForm.SetClientWidth
 0043F433    mov         edx,dword ptr [ebp-40]
 0043F436    add         edx,dword ptr [ebp-2C]
 0043F439    add         edx,dword ptr [ebp-24]
 0043F43C    mov         eax,dword ptr [ebp-1C]
 0043F43F    add         eax,eax
 0043F441    add         edx,eax
 0043F443    mov         eax,dword ptr [ebp-0C]
 0043F446    call        TForm.SetClientHeight
 0043F44B    mov         eax,[0056E604];^Screen:TScreen
 0043F450    mov         eax,dword ptr [eax]
 0043F452    call        004A8894
 0043F457    mov         edx,eax
 0043F459    sar         edx,1
>0043F45B    jns         0043F460
 0043F45D    adc         edx,0
 0043F460    mov         eax,dword ptr [ebp-0C]
 0043F463    mov         eax,dword ptr [eax+48];TMessageForm.Width:Integer
 0043F466    sar         eax,1
>0043F468    jns         0043F46D
 0043F46A    adc         eax,0
 0043F46D    sub         edx,eax
 0043F46F    mov         eax,dword ptr [ebp-0C]
 0043F472    call        TControl.SetLeft
 0043F477    mov         eax,[0056E604];^Screen:TScreen
 0043F47C    mov         eax,dword ptr [eax]
 0043F47E    call        004A8874
 0043F483    mov         edx,eax
 0043F485    sar         edx,1
>0043F487    jns         0043F48C
 0043F489    adc         edx,0
 0043F48C    mov         eax,dword ptr [ebp-0C]
 0043F48F    mov         eax,dword ptr [eax+4C];TMessageForm.Height:Integer
 0043F492    sar         eax,1
>0043F494    jns         0043F499
 0043F496    adc         eax,0
 0043F499    sub         edx,eax
 0043F49B    mov         eax,dword ptr [ebp-0C]
 0043F49E    call        TControl.SetTop
 0043F4A3    cmp         byte ptr [ebp-5],4
>0043F4A7    je          0043F4CA
 0043F4A9    lea         edx,[ebp-74]
 0043F4AC    xor         eax,eax
 0043F4AE    mov         al,byte ptr [ebp-5]
 0043F4B1    mov         eax,dword ptr [eax*4+56C114];^SMsgDlgWarning:TResStringRec
 0043F4B8    call        LoadResString
 0043F4BD    mov         edx,dword ptr [ebp-74]
 0043F4C0    mov         eax,dword ptr [ebp-0C]
 0043F4C3    call        TPanel.SetCaption
>0043F4C8    jmp         0043F4E4
 0043F4CA    lea         edx,[ebp-78]
 0043F4CD    mov         eax,[0056E3C0];^Application:TApplication
 0043F4D2    mov         eax,dword ptr [eax]
 0043F4D4    call        004AB0D0
 0043F4D9    mov         edx,dword ptr [ebp-78]
 0043F4DC    mov         eax,dword ptr [ebp-0C]
 0043F4DF    call        TPanel.SetCaption
 0043F4E4    cmp         dword ptr [ebp-50],0
>0043F4E8    je          0043F549
 0043F4EA    mov         ecx,dword ptr [ebp-0C]
 0043F4ED    mov         dl,1
 0043F4EF    mov         eax,[0043FAF0];TImage
 0043F4F4    call        TImage.Create;TImage.Create
 0043F4F9    mov         dword ptr [ebp-54],eax
 0043F4FC    mov         edx,43F770;'Image'
 0043F501    mov         eax,dword ptr [ebp-54]
 0043F504    mov         ecx,dword ptr [eax]
 0043F506    call        dword ptr [ecx+18];TImage.sub_00483488
 0043F509    mov         edx,dword ptr [ebp-0C]
 0043F50C    mov         eax,dword ptr [ebp-54]
 0043F50F    mov         ecx,dword ptr [eax]
 0043F511    call        dword ptr [ecx+68];TImage.sub_0048359C
 0043F514    mov         eax,dword ptr [ebp-50]
 0043F517    push        eax
 0043F518    push        0
 0043F51A    call        user32.LoadIconA
 0043F51F    push        eax
 0043F520    mov         eax,dword ptr [ebp-54]
 0043F523    mov         eax,dword ptr [eax+168];TImage.Picture:TPicture
 0043F529    call        00431BD0
 0043F52E    pop         edx
 0043F52F    call        00436A24
 0043F534    push        20
 0043F536    push        20
 0043F538    mov         ecx,dword ptr [ebp-1C]
 0043F53B    mov         edx,dword ptr [ebp-18]
 0043F53E    mov         eax,dword ptr [ebp-54]
 0043F541    mov         ebx,dword ptr [eax]
 0043F543    call        dword ptr [ebx+84];TImage.sub_00482930
 0043F549    mov         ecx,dword ptr [ebp-0C]
 0043F54C    mov         dl,1
 0043F54E    mov         eax,[0046D838];TLabel
 0043F553    call        TLabel.Create;TLabel.Create
 0043F558    mov         edx,dword ptr [ebp-0C]
 0043F55B    mov         dword ptr [edx+2F8],eax;TMessageForm....Message:TLabel
 0043F561    mov         eax,dword ptr [ebp-0C]
 0043F564    mov         eax,dword ptr [eax+2F8];TMessageForm.....Message:TLabel
 0043F56A    mov         dword ptr [ebp-58],eax
 0043F56D    mov         edx,43F780;'Message'
 0043F572    mov         eax,dword ptr [ebp-58]
 0043F575    mov         ecx,dword ptr [eax]
 0043F577    call        dword ptr [ecx+18];TLabel.sub_00483488
 0043F57A    mov         edx,dword ptr [ebp-0C]
 0043F57D    mov         eax,dword ptr [ebp-58]
 0043F580    mov         ecx,dword ptr [eax]
 0043F582    call        dword ptr [ecx+68];TLabel.sub_0048359C
 0043F585    mov         dl,1
 0043F587    mov         eax,dword ptr [ebp-58]
 0043F58A    call        TBoundLabel.SetWordWrap
 0043F58F    mov         edx,dword ptr [ebp-4]
 0043F592    mov         eax,dword ptr [ebp-58]
 0043F595    call        TPanel.SetCaption
 0043F59A    lea         edx,[ebp-6C]
 0043F59D    mov         eax,dword ptr [ebp-58]
 0043F5A0    call        00482F18
 0043F5A5    mov         eax,dword ptr [ebp-0C]
 0043F5A8    mov         dl,byte ptr [eax+5F];TMessageForm.FBiDiMode:TBiDiMode
 0043F5AB    mov         eax,dword ptr [ebp-58]
 0043F5AE    mov         ecx,dword ptr [eax]
 0043F5B0    call        dword ptr [ecx+70];TPanel.SetBiDiMode
 0043F5B3    mov         eax,dword ptr [ebp-3C]
 0043F5B6    sub         eax,dword ptr [ebp-64]
 0043F5B9    add         eax,dword ptr [ebp-18]
 0043F5BC    mov         dword ptr [ebp-48],eax
 0043F5BF    mov         eax,dword ptr [ebp-58]
 0043F5C2    mov         si,0FFC8
 0043F5C6    call        @CallDynaInst;TControl.sub_0048415C
 0043F5CB    test        al,al
>0043F5CD    je          0043F5E3
 0043F5CF    mov         eax,dword ptr [ebp-0C]
 0043F5D2    call        TControl.GetClientWidth
 0043F5D7    sub         eax,dword ptr [ebp-48]
 0043F5DA    mov         edx,dword ptr [ebp-58]
 0043F5DD    sub         eax,dword ptr [edx+48]
 0043F5E0    mov         dword ptr [ebp-48],eax
 0043F5E3    mov         eax,dword ptr [ebp-64]
 0043F5E6    push        eax
 0043F5E7    mov         eax,dword ptr [ebp-60]
 0043F5EA    push        eax
 0043F5EB    mov         ecx,dword ptr [ebp-1C]
 0043F5EE    mov         edx,dword ptr [ebp-48]
 0043F5F1    mov         eax,dword ptr [ebp-58]
 0043F5F4    mov         ebx,dword ptr [eax]
 0043F5F6    call        dword ptr [ebx+84];TLabel.sub_00482930
 0043F5FC    test        byte ptr [ebp-7],4
>0043F600    je          0043F608
 0043F602    mov         byte ptr [ebp-4A],2
>0043F606    jmp         0043F618
 0043F608    test        byte ptr [ebp-7],1
>0043F60C    je          0043F614
 0043F60E    mov         byte ptr [ebp-4A],0
>0043F612    jmp         0043F618
 0043F614    mov         byte ptr [ebp-4A],5
 0043F618    test        byte ptr [ebp-7],8
>0043F61C    je          0043F624
 0043F61E    mov         byte ptr [ebp-4B],3
>0043F622    jmp         0043F634
 0043F624    test        byte ptr [ebp-7],2
>0043F628    je          0043F630
 0043F62A    mov         byte ptr [ebp-4B],1
>0043F62E    jmp         0043F634
 0043F630    mov         byte ptr [ebp-4B],2
 0043F634    mov         eax,dword ptr [ebp-0C]
 0043F637    call        TControl.GetClientWidth
 0043F63C    sub         eax,dword ptr [ebp-38]
 0043F63F    sar         eax,1
>0043F641    jns         0043F646
 0043F643    adc         eax,0
 0043F646    mov         dword ptr [ebp-44],eax
 0043F649    mov         byte ptr [ebp-49],0
 0043F64D    mov         al,byte ptr [ebp-49]
 0043F650    cmp         al,0F
>0043F652    ja          0043F65B
 0043F654    and         eax,7F
 0043F657    bt          dword ptr [ebp-7],eax
>0043F65B    jae         0043F72E
 0043F661    mov         ecx,dword ptr [ebp-0C]
 0043F664    mov         dl,1
 0043F666    mov         eax,[0046FDD8];TButton
 0043F66B    call        TButton.Create;TButton.Create
 0043F670    mov         dword ptr [ebp-5C],eax
 0043F673    xor         eax,eax
 0043F675    mov         al,byte ptr [ebp-49]
 0043F678    mov         edx,dword ptr [eax*4+56C13C]
 0043F67F    mov         eax,dword ptr [ebp-5C]
 0043F682    mov         ecx,dword ptr [eax]
 0043F684    call        dword ptr [ecx+18];TButton.sub_00483488
 0043F687    mov         edx,dword ptr [ebp-0C]
 0043F68A    mov         eax,dword ptr [ebp-5C]
 0043F68D    mov         ecx,dword ptr [eax]
 0043F68F    call        dword ptr [ecx+68];TButton.sub_0048359C
 0043F692    lea         edx,[ebp-7C]
 0043F695    xor         eax,eax
 0043F697    mov         al,byte ptr [ebp-49]
 0043F69A    mov         eax,dword ptr [eax*4+56C168];^SMsgDlgYes:TResStringRec
 0043F6A1    call        LoadResString
 0043F6A6    mov         edx,dword ptr [ebp-7C]
 0043F6A9    mov         eax,dword ptr [ebp-5C]
 0043F6AC    call        TPanel.SetCaption
 0043F6B1    xor         eax,eax
 0043F6B3    mov         al,byte ptr [ebp-49]
 0043F6B6    mov         eax,dword ptr [eax*4+56C194]
 0043F6BD    mov         edx,dword ptr [ebp-5C]
 0043F6C0    mov         dword ptr [edx+214],eax;TButton.ModalResult:TModalResult
 0043F6C6    mov         al,byte ptr [ebp-49]
 0043F6C9    cmp         al,byte ptr [ebp-4A]
>0043F6CC    jne         0043F6D8
 0043F6CE    mov         dl,1
 0043F6D0    mov         eax,dword ptr [ebp-5C]
 0043F6D3    call        TButton.SetDefault
 0043F6D8    mov         al,byte ptr [ebp-49]
 0043F6DB    cmp         al,byte ptr [ebp-4B]
>0043F6DE    jne         0043F6EA
 0043F6E0    mov         eax,dword ptr [ebp-5C]
 0043F6E3    mov         byte ptr [eax+211],1;TButton.Cancel:Boolean
 0043F6EA    mov         eax,dword ptr [ebp-28]
 0043F6ED    push        eax
 0043F6EE    mov         eax,dword ptr [ebp-2C]
 0043F6F1    push        eax
 0043F6F2    mov         ecx,dword ptr [ebp-40]
 0043F6F5    add         ecx,dword ptr [ebp-1C]
 0043F6F8    add         ecx,dword ptr [ebp-24]
 0043F6FB    mov         edx,dword ptr [ebp-44]
 0043F6FE    mov         eax,dword ptr [ebp-5C]
 0043F701    mov         ebx,dword ptr [eax]
 0043F703    call        dword ptr [ebx+84];TButton.sub_0048B89C
 0043F709    mov         eax,dword ptr [ebp-28]
 0043F70C    add         eax,dword ptr [ebp-30]
 0043F70F    add         dword ptr [ebp-44],eax
 0043F712    cmp         byte ptr [ebp-49],0A
>0043F716    jne         0043F72E
 0043F718    mov         eax,dword ptr [ebp-5C]
 0043F71B    mov         edx,dword ptr [ebp-0C]
 0043F71E    mov         dword ptr [eax+124],edx;TButton.?f124:TMessageForm
 0043F724    mov         dword ptr [eax+120],43ECD0;TButton.FOnClick:TNotifyEvent sub_0043ECD0
 0043F72E    inc         byte ptr [ebp-49]
 0043F731    cmp         byte ptr [ebp-49],0B
>0043F735    jne         0043F64D
 0043F73B    xor         eax,eax
 0043F73D    pop         edx
 0043F73E    pop         ecx
 0043F73F    pop         ecx
 0043F740    mov         dword ptr fs:[eax],edx
 0043F743    push        43F75D
 0043F748    lea         eax,[ebp-7C]
 0043F74B    mov         edx,4
 0043F750    call        @LStrArrayClr
 0043F755    ret
>0043F756    jmp         @HandleFinally
>0043F75B    jmp         0043F748
 0043F75D    mov         eax,dword ptr [ebp-0C]
 0043F760    pop         esi
 0043F761    pop         ebx
 0043F762    mov         esp,ebp
 0043F764    pop         ebp
 0043F765    ret
end;*}

//0043F788
{*function sub_0043F788(?:AnsiString; ?:?; ?:?; ?:?):?;
begin
 0043F788    push        ebp
 0043F789    mov         ebp,esp
 0043F78B    add         esp,0FFFFFFF4
 0043F78E    mov         word ptr [ebp-7],cx
 0043F792    mov         byte ptr [ebp-5],dl
 0043F795    mov         dword ptr [ebp-4],eax
 0043F798    mov         eax,dword ptr [ebp+8]
 0043F79B    push        eax
 0043F79C    push        0FF
 0043F79E    push        0FF
 0043F7A0    push        0
 0043F7A2    mov         cx,word ptr [ebp-7]
 0043F7A6    mov         dl,byte ptr [ebp-5]
 0043F7A9    mov         eax,dword ptr [ebp-4]
 0043F7AC    call        0043F7FC
 0043F7B1    mov         dword ptr [ebp-0C],eax
 0043F7B4    mov         eax,dword ptr [ebp-0C]
 0043F7B7    mov         esp,ebp
 0043F7B9    pop         ebp
 0043F7BA    ret         4
end;*}

//0043F7C0
{*function sub_0043F7C0(?:?; ?:?; ?:?; ?:?; ?:?; ?:?):?;
begin
 0043F7C0    push        ebp
 0043F7C1    mov         ebp,esp
 0043F7C3    add         esp,0FFFFFFF4
 0043F7C6    mov         word ptr [ebp-7],cx
 0043F7CA    mov         byte ptr [ebp-5],dl
 0043F7CD    mov         dword ptr [ebp-4],eax
 0043F7D0    mov         eax,dword ptr [ebp+10]
 0043F7D3    push        eax
 0043F7D4    mov         eax,dword ptr [ebp+0C]
 0043F7D7    push        eax
 0043F7D8    mov         eax,dword ptr [ebp+8]
 0043F7DB    push        eax
 0043F7DC    push        0
 0043F7DE    mov         cx,word ptr [ebp-7]
 0043F7E2    mov         dl,byte ptr [ebp-5]
 0043F7E5    mov         eax,dword ptr [ebp-4]
 0043F7E8    call        0043F7FC
 0043F7ED    mov         dword ptr [ebp-0C],eax
 0043F7F0    mov         eax,dword ptr [ebp-0C]
 0043F7F3    mov         esp,ebp
 0043F7F5    pop         ebp
 0043F7F6    ret         0C
end;*}

//0043F7FC
{*function sub_0043F7FC(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?):?;
begin
 0043F7FC    push        ebp
 0043F7FD    mov         ebp,esp
 0043F7FF    add         esp,0FFFFFFF0
 0043F802    mov         word ptr [ebp-7],cx
 0043F806    mov         byte ptr [ebp-5],dl
 0043F809    mov         dword ptr [ebp-4],eax
 0043F80C    mov         cx,word ptr [ebp-7]
 0043F810    mov         dl,byte ptr [ebp-5]
 0043F813    mov         eax,dword ptr [ebp-4]
 0043F816    call        0043F170
 0043F81B    mov         dword ptr [ebp-10],eax
 0043F81E    xor         eax,eax
 0043F820    push        ebp
 0043F821    push        43F8A3
 0043F826    push        dword ptr fs:[eax]
 0043F829    mov         dword ptr fs:[eax],esp
 0043F82C    mov         edx,dword ptr [ebp+14]
 0043F82F    mov         eax,dword ptr [ebp-10]
 0043F832    call        TControl.SetHelpContext
 0043F837    mov         eax,dword ptr [ebp-10]
 0043F83A    add         eax,23C
 0043F83F    mov         edx,dword ptr [ebp+8]
 0043F842    call        @LStrAsg
 0043F847    cmp         dword ptr [ebp+10],0
>0043F84B    jl          0043F858
 0043F84D    mov         edx,dword ptr [ebp+10]
 0043F850    mov         eax,dword ptr [ebp-10]
 0043F853    call        TControl.SetLeft
 0043F858    cmp         dword ptr [ebp+0C],0
>0043F85C    jl          0043F869
 0043F85E    mov         edx,dword ptr [ebp+0C]
 0043F861    mov         eax,dword ptr [ebp-10]
 0043F864    call        TControl.SetTop
 0043F869    cmp         dword ptr [ebp+0C],0
>0043F86D    jge         0043F87F
 0043F86F    cmp         dword ptr [ebp+10],0
>0043F873    jge         0043F87F
 0043F875    mov         dl,4
 0043F877    mov         eax,dword ptr [ebp-10]
 0043F87A    call        TForm.SetPosition
 0043F87F    mov         eax,dword ptr [ebp-10]
 0043F882    mov         edx,dword ptr [eax]
 0043F884    call        dword ptr [edx+0EC]
 0043F88A    mov         dword ptr [ebp-0C],eax
 0043F88D    xor         eax,eax
 0043F88F    pop         edx
 0043F890    pop         ecx
 0043F891    pop         ecx
 0043F892    mov         dword ptr fs:[eax],edx
 0043F895    push        43F8AA
 0043F89A    mov         eax,dword ptr [ebp-10]
 0043F89D    call        TObject.Free
 0043F8A2    ret
>0043F8A3    jmp         @HandleFinally
>0043F8A8    jmp         0043F89A
 0043F8AA    mov         eax,dword ptr [ebp-0C]
 0043F8AD    mov         esp,ebp
 0043F8AF    pop         ebp
 0043F8B0    ret         10
end;*}

//0043F8B4
procedure sub_0043F8B4(?:AnsiString; ?:AnsiString; ?:AnsiString);
begin
{*
 0043F8B4    push        ebp
 0043F8B5    mov         ebp,esp
 0043F8B7    push        ecx
 0043F8B8    mov         dword ptr [ebp-4],eax
 0043F8BB    or          ecx,0FFFFFFFF
 0043F8BE    or          edx,0FFFFFFFF
 0043F8C1    mov         eax,dword ptr [ebp-4]
 0043F8C4    call        0043F8CC
 0043F8C9    pop         ecx
 0043F8CA    pop         ebp
 0043F8CB    ret
*}
end;

//0043F8CC
{*procedure sub_0043F8CC(?:?; ?:?; ?:?);
begin
 0043F8CC    push        ebp
 0043F8CD    mov         ebp,esp
 0043F8CF    add         esp,0FFFFFFF4
 0043F8D2    mov         dword ptr [ebp-0C],ecx
 0043F8D5    mov         dword ptr [ebp-8],edx
 0043F8D8    mov         dword ptr [ebp-4],eax
 0043F8DB    push        0
 0043F8DD    mov         eax,dword ptr [ebp-8]
 0043F8E0    push        eax
 0043F8E1    mov         eax,dword ptr [ebp-0C]
 0043F8E4    push        eax
 0043F8E5    mov         cx,word ptr ds:[43F8FC];0x4 gvar_0043F8FC
 0043F8EC    mov         dl,4
 0043F8EE    mov         eax,dword ptr [ebp-4]
 0043F8F1    call        0043F7C0
 0043F8F6    mov         esp,ebp
 0043F8F8    pop         ebp
 0043F8F9    ret
end;*}

//0043F900
procedure sub_0043F900;
begin
{*
 0043F900    push        ebp
 0043F901    mov         ebp,esp
 0043F903    add         esp,0FFFFFFD0
 0043F906    push        43F960;'commdlg_help'
 0043F90B    call        user32.RegisterClipboardFormatA
 0043F910    mov         [00571CA0],eax;gvar_00571CA0:LongWord
 0043F915    push        43F970;'commdlg_FindReplace'
 0043F91A    call        user32.RegisterClipboardFormatA
 0043F91F    mov         [00571CA4],eax;gvar_00571CA4:LongWord
 0043F924    push        1
 0043F926    mov         eax,[0056F668];0x0 HInstance:LongWord
 0043F92B    mov         dword ptr [ebp-30],eax
 0043F92E    mov         byte ptr [ebp-2C],0
 0043F932    call        kernel32.GetCurrentThreadId
 0043F937    mov         dword ptr [ebp-28],eax
 0043F93A    mov         byte ptr [ebp-24],0
 0043F93E    lea         ecx,[ebp-30]
 0043F941    mov         edx,43F984
 0043F946    lea         eax,[ebp-20]
 0043F949    call        0040D57C
 0043F94E    push        eax
 0043F94F    call        kernel32.GlobalAddAtomA
 0043F954    mov         [0056C0B4],ax;gvar_0056C0B4:Word
 0043F95A    mov         esp,ebp
 0043F95C    pop         ebp
 0043F95D    ret
*}
end;

//0043F998
procedure _NF__533;
begin
{*
 0043F998    sldt        word ptr [eax]
 0043F99B    add         byte ptr [eax+0C0056C1],dl
 0043F9A1    loopne      0043F9F9
 0043F9A3    add         byte ptr [eax],al
 0043F9A5    add         byte ptr [eax],al
 0043F9A7    add         byte ptr [ecx+eax*8-1C97FFAA],cl
 0043F9AE    push        esi
 0043F9AF    add         byte ptr [eax],al
 0043F9B1    add         byte ptr [eax],al
 0043F9B3    add         byte ptr [eax-3BFFA93F],cl
 0043F9B9    fist        word ptr [esi]
 0043F9BC    add         byte ptr [eax],al
 0043F9BE    add         byte ptr [eax],al
 0043F9C0    test        cl,al
 0043F9C2    push        esi
 0043F9C3    add         byte ptr [eax],bh
 0043F9C5    in          eax,56
 0043F9C7    add         byte ptr [eax],al
 0043F9C9    add         byte ptr [eax],al
 0043F9CB    add         byte ptr [eax-7BFFA93F],al
 0043F9D1    jecxz       0043FA29
 0043F9D3    add         byte ptr [eax],al
 0043F9D5    add         byte ptr [eax],al
 0043F9D7    add         byte ptr [ecx+eax*8+56],bh
 0043F9DB    add         ah,bh
 0043F9DD    loop        0043FA35
 0043F9DF    add         byte ptr [eax],al
 0043F9E1    add         byte ptr [eax],al
 0043F9E3    add         byte ptr [eax-3F],bh
 0043F9E6    push        esi
 0043F9E7    add         byte ptr [eax-1C],dh
 0043F9EA    push        esi
 0043F9EB    add         byte ptr [eax],al
 0043F9ED    add         byte ptr [eax],al
 0043F9EF    add         byte ptr [ecx+eax*8+56],dh
 0043F9F3    add         al,dh
 0043F9F5    loope       0043FA4D
 0043F9F7    add         byte ptr [eax],al
 0043F9F9    add         byte ptr [eax],al
 0043F9FB    add         byte ptr [eax-3F],dh
 0043F9FE    push        esi
 0043F9FF    add         byte ptr [ebx],bl
 0043FA02    push        esi
 0043FA03    add         byte ptr [eax],al
 0043FA05    add         byte ptr [eax],al
 0043FA07    add         byte ptr [ecx+eax*8+56],ch
 0043FA0B    add         byte ptr [eax],bl
 0043FA0D    loop        0043FA65
 0043FA0F    add         byte ptr [eax],al
 0043FA11    add         byte ptr [eax],al
 0043FA13    add         byte ptr [eax-3F],ch
 0043FA16    push        esi
 0043FA17    add         al,ah
 0043FA19    in          eax,56
 0043FA1B    add         byte ptr [eax],al
 0043FA1D    add         byte ptr [eax],al
 0043FA1F    add         byte ptr [eax],ah
 0043FA21    rcl         dword ptr [esi],78
 0043FA25    loopne      0043FA7D
 0043FA27    add         byte ptr [eax],al
 0043FA29    add         byte ptr [eax],al
 0043FA2B    add         byte ptr [ecx+eax*8],bl
 0043FA2E    push        esi
 0043FA2F    add         byte ptr ds:[56],al
 0043FA36    add         byte ptr [eax],al
 0043FA38    sbb         cl,al
 0043FA3A    push        esi
 0043FA3B    add         byte ptr [ebp+56],ch
 0043FA3F    add         byte ptr [eax],al
 0043FA41    add         byte ptr [eax],al
 0043FA43    add         byte ptr [ecx+eax*8],dl
 0043FA46    push        esi
 0043FA47    add         byte ptr [eax-1E],bh
 0043FA4A    push        esi
 0043FA4B    add         byte ptr [eax],al
 0043FA4D    add         byte ptr [eax],al
 0043FA4F    add         byte ptr [ebp-75],dl;{Finalization}
*}
end;

Initialization
//0043FAAC
{*
 0043FAAC    push        ebp
 0043FAAD    mov         ebp,esp
 0043FAAF    sub         dword ptr ds:[571C9C],1
>0043FAB6    jae         0043FAEB
 0043FAB8    mov         eax,43F998;_NF__533
 0043FABD    call        @InitImports
 0043FAC2    call        0043F900
 0043FAC7    mov         eax,[0047DF94];TControl
 0043FACC    call        StartClassGroup
 0043FAD1    mov         eax,[0047DF94];TControl
 0043FAD6    call        ActivateClassGroup
 0043FADB    mov         edx,dword ptr ds:[47DF94];TControl
 0043FAE1    mov         eax,[0043D218];TCommonDialog
 0043FAE6    call        GroupDescendentsWith
 0043FAEB    pop         ebp
 0043FAEC    ret
*}
Finalization
//0043FA50
{*
 0043FA50    push        ebp
 0043FA51    mov         ebp,esp
 0043FA53    xor         eax,eax
 0043FA55    push        ebp
 0043FA56    push        43FAA2
 0043FA5B    push        dword ptr fs:[eax]
 0043FA5E    mov         dword ptr fs:[eax],esp
 0043FA61    inc         dword ptr ds:[571C9C]
>0043FA67    jne         0043FA94
 0043FA69    cmp         word ptr ds:[56C0B4],0;gvar_0056C0B4:Word
>0043FA71    je          0043FA7F
 0043FA73    mov         ax,[0056C0B4];gvar_0056C0B4:Word
 0043FA79    push        eax
 0043FA7A    call        kernel32.GlobalDeleteAtom
 0043FA7F    mov         eax,56C13C
 0043FA84    mov         ecx,0B
 0043FA89    mov         edx,dword ptr ds:[4010C0];String
 0043FA8F    call        @FinalizeArray
 0043FA94    xor         eax,eax
 0043FA96    pop         edx
 0043FA97    pop         ecx
 0043FA98    pop         ecx
 0043FA99    mov         dword ptr fs:[eax],edx
 0043FA9C    push        43FAA9
 0043FAA1    ret
>0043FAA2    jmp         @HandleFinally
>0043FAA7    jmp         0043FAA1
 0043FAA9    pop         ebp
 0043FAAA    ret
*}
end.