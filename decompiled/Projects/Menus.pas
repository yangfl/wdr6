//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit Menus;

interface

uses
  SysUtils, Classes, Menus, Graphics, ImgList;

type
  EMenuError = class(Exception)
  end;
  TMenuBreak = (mbNone, mbBreak, mbBarBreak);
  TMenuChangeEvent = procedure(Sender:TObject; Source:TMenuItem; Rebuild:Boolean) of object;;
  TMenuDrawItemEvent = procedure(Sender:TObject; ACanvas:TCanvas; ARect:TRect; Selected:Boolean) of object;;
  TAdvancedMenuDrawItemEvent = procedure(Sender:TObject; ACanvas:TCanvas; ARect:TRect; State:TOwnerDrawState) of object;;
  TMenuMeasureItemEvent = procedure(Sender:TObject; ACanvas:TCanvas; var Width:Integer; var Height:Integer) of object;;
  TMenuItemAutoFlag = (maAutomatic, maManual, maParent);
  TMenuAutoFlag = (maAutomatic, maManual);
  TMenuActionLink = class(TActionLink)
  public
    .......................FClient:TMenuItem;//f18
    //procedure v0(?:?); virtual;//v0//00497EC4
    //function v8:?; virtual;//v8//004981B4
    //procedure v10(?:?; ?:?); virtual;//v10//0049837C
    //function v20:?; virtual;//v20//00497F20
    //function v24:?; virtual;//v24//00497F6C
    //function v28:?; virtual;//v28//00497FB0
    //function v2C:?; virtual;//v2C//00498084
    //function v30:?; virtual;//v30//00497FF4
    //function v38:?; virtual;//v38//00498038
    //function v3C:?; virtual;//v3C//004980D8
    //function v40:?; virtual;//v40//00498120
    //function v44:?; virtual;//v44//0049816C
    //procedure v48(?:?); virtual;//v48//004981F0
    //procedure v4C(?:?); virtual;//v4C//0049821C
    //procedure v50(?:?); virtual;//v50//00498248
    //procedure v54(?:?); virtual;//v54//00498274
    //procedure v5C(?:?); virtual;//v5C//004982A0
    //procedure v68(?:?); virtual;//v68//004982C8
    //procedure v6C(?:?); virtual;//v6C//004982F8
    //procedure v70(?:?); virtual;//v70//00498324
    //procedure v74(?:?); virtual;//v74//00498350
    //function v78:?; virtual;//v78//00497EE8
  end;
  TMenuItem = class(TComponent)
  public
    Caption:String;//f30
    FHandle:HMENU;//f34
    Checked:Boolean;//f38
    Enabled:Boolean;//f39
    Default:Boolean;//f3A
    AutoHotkeys:TMenuItemAutoFlag;//f3B
    AutoLineReduction:TMenuItemAutoFlag;//f3C
    RadioItem:Boolean;//f3D
    Visible:Boolean;//f3E
    GroupIndex:byte;//f3F
    ImageIndex:TImageIndex;//f40
    FActionLink:TMenuActionLink;//f44
    Break:TMenuBreak;//f48
    FBitmap:TBitmap;//f4C
    FCommand:word;//f50
    HelpContext:THelpContext;//f54
    Hint:String;//f58
    FItems:TList;//f5C
    ShortCut:TShortCut;//f60
    FParent:TMenuItem;//f64
    FMerged:TMenuItem;//f68
    FMergedWith:TMenuItem;//f6C
    FMenu:TMenu;//f70
    FStreamedRebuild:Boolean;//f74
    FImageChangeLink:TChangeLink;//f78
    SubMenuImages:TCustomImageList;//f7C
    FOnChange:TMenuChangeEvent;//f80
    f82:word;//f82
    f84:TMenu;//f84
    OnClick:TNotifyEvent;//f88
    f8A:word;//f8A
    f8C:TPopupMenu;//f8C
    OnDrawItem:TMenuDrawItemEvent;//f90
    f92:word;//f92
    f94:dword;//f94
    OnAdvancedDrawItem:TAdvancedMenuDrawItemEvent;//f98
    OnMeasureItem:TMenuMeasureItemEvent;//fA0
    fA2:word;//fA2
    fA4:dword;//fA4
    AutoCheck:Boolean;//fA8
    destructor Destroy; virtual;//0049844C
    //procedure v0(?:?); virtual;//v0//0049B4C4
    procedure DefineProperties(Filer:TFiler); virtual;//v4//00498BCC
    procedure vC; virtual;//vC//0049898C
    //procedure v10(?:?; ?:?); virtual;//v10//0049B560
    constructor Create; virtual;//v2C//004983AC
    procedure AdvancedDrawItem(ACanvas:TCanvas; ARect:TRect; State:TOwnerDrawState; TopLevel:Boolean); virtual;//v30//0049A128
    //procedure v34(?:?; ?:?; ?:?); virtual;//v34//00498E54
    //procedure v38(?:?; ?:?; ?:?); virtual;//v38//0049A30C
    //procedure v3C(?:?); virtual;//v3C//0049ADD0
    procedure v40; virtual;//v40//0049AAAC
    procedure v44; virtual;//v44//0049AC50
    procedure sub_0049A7FC; dynamic;//0049A7FC
    //procedure sub_0049B12C(?:?; ?:?); dynamic;//0049B12C
    procedure sub_0042A774; dynamic;//0049A55C
    procedure sub_0042A81C; dynamic;//0049B008
    //procedure sub_0042A834(?:?); dynamic;//0049B044
    //procedure sub_0042A808(?:?; ?:?); dynamic;//0049A9F8
    //procedure sub_0042A788(?:?; ?:?); dynamic;//0049A9B0
    function GetImageList:TCustomImageList;//0049A25C
    procedure SetBreak(Value:TMenuBreak);//0049A570
    procedure SetCaption(Value:String);//0049A5A0
    procedure SetChecked(Value:Boolean);//0049A64C
    procedure SetEnabled(Value:Boolean);//0049A6C4
    procedure SetGroupIndex(Value:Byte);//0049A768
    //function GetAction:?;//0049A7D0
    procedure SetShortCut(Value:TShortCut);//0049A878
    procedure SetVisible(Value:Boolean);//0049A8AC
    procedure SetImageIndex(Value:TImageIndex);//0049A8DC
    procedure SetDefault(Value:Boolean);//0049AA24
    //function GetBitmap:?;//0049AEA8
    procedure SetAction(Value:TBasicAction);//0049AEEC
    procedure SetBitmap(Value:TBitmap);//0049AF84
    function GetParentMenu:TMenu;//0049B0B0
    procedure SetRadioItem(Value:Boolean);//0049B0E4
    function IsStoredCaption(Value:String):Boolean;//0049B2F0
    function IsStoredChecked(Value:Boolean):Boolean;//0049B324
    function IsStoredEnabled(Value:Boolean):Boolean;//0049B358
    function IsStoredHint(Value:String):Boolean;//0049B38C
    function IsStoredHelpContext(Value:THelpContext):Boolean;//0049B3C0
    function IsStoredImageIndex(Value:TImageIndex):Boolean;//0049B3F4
    function IsStoredShortCut(Value:TShortCut):Boolean;//0049B428
    function IsStoredVisible(Value:Boolean):Boolean;//0049B45C
    function IsStoredOnClick(Value:TNotifyEvent):Boolean;//0049B490
    procedure SetSubMenuImages(Value:TCustomImageList);//0049B5CC
    procedure SetAutoHotkeys(Value:TMenuItemAutoFlag);//0049BE24
    procedure SetAutoLineReduction(Value:TMenuItemAutoFlag);//0049C01C
  end;
  TMenu = class(TComponent)
  public
    FBiDiMode:TBiDiMode;//f30
    Items:TMenuItem;//f34
    FWindowHandle:HWND;//f38
    FMenuImage:String;//f3C
    FOwnerDraw:Boolean;//f40
    FParentBiDiMode:Boolean;//f41
    FImageChangeLink:TChangeLink;//f44
    FImages:TCustomImageList;//f48
    FOnChange:TMenuChangeEvent;//f50
    f52:word;//f52
    f54:dword;//f54
    destructor Destroy; virtual;//0049C1B8
    procedure vC; virtual;//vC//0049CC24
    //procedure v10(?:?; ?:?); virtual;//v10//0049CD14
    constructor v2C; virtual;//v2C//0049C0EC
    //procedure v30(?:?; ?:?); virtual;//v30//0049CBF0
    //function v34:?; virtual;//v34//0049C22C
    //procedure v38(?:?; ?:?; ?:?); virtual;//v38//0049CC44
    //procedure sub_0049C770(?:?); dynamic;//0049C770
    //procedure sub_0042A808(?:?; ?:?); dynamic;//0049C24C
    //procedure sub_0042A788(?:?; ?:?; ?:?); dynamic;//0049C200
    function IsRightToLeft:Boolean;//0049CD50
  end;
  TMainMenu = class(TMenu)
  public
    FOle2Menu:HMENU;//f58
    AutoMerge:Boolean;//f5C
    //function v34:?; virtual;//v34//0049D4BC
    //procedure v38(?:?; ?:?; ?:?); virtual;//v38//0049D3B0
    function IsStoredBiDiMode(Value:TBiDiMode):Boolean;//0049C898
    procedure SetOwnerDraw(Value:Boolean);//0049CAF4
    procedure SetImages(Value:TCustomImageList);//0049CCB0
    procedure SetBiDiMode(Value:TBiDiMode);//0049D200
    procedure SetParentBiDiMode(Value:Boolean);//0049D234
    //function GetAutoHotkeys:?;//0049D2DC
    procedure SetAutoHotkeys(Value:TMenuAutoFlag);//0049D300
    //function GetAutoLineReduction:?;//0049D324
    procedure SetAutoLineReduction(Value:TMenuAutoFlag);//0049D348
    procedure SetAutoMerge(Value:Boolean);//0049D36C
  end;
  TPopupAlignment = (paLeft, paRight, paCenter);
  TTrackButton = (tbRightButton, tbLeftButton);
  TMenuAnimations = (maLeftToRight, maRightToLeft, maTopToBottom, maBottomToTop, maNone);
  TMenuAnimation = set of TMenuAnimations;
  TPopupMenu = class(TMenu)
  public
    FPopupPoint:TPoint;//f58
    Alignment:TPopupAlignment;//f60
    AutoPopup:Boolean;//f61
    FPopupComponent:TComponent;//f64
    TrackButton:TTrackButton;//f68
    MenuAnimation:TMenuAnimation;//f69
    OnPopup:TNotifyEvent;//f70
    f72:word;//f72
    f74:dword;//f74
    destructor Destroy; virtual;//0049DC38
    constructor Create; virtual;//v2C//0049DB9C
    //procedure v3C(?:?); virtual;//v3C//0049DC78
    //procedure v40(?:?; ?:?); virtual;//v40//0049DDAC
    //function GetHelpContext:?;//0049DCA0
    procedure SetHelpContext(Value:THelpContext);//0049DCBC
  end;
  TPopupList = class(TList)
  public
    ....FWindow:HWND;//f10
    //procedure v10(?:?); virtual;//v10//0049D540
  end;
  TMenuItemStack = class(TStack)
  end;
    //function sub_00497834(?:?):?;//00497834
    //function sub_00497878:?;//00497878
    procedure sub_00497884;//00497884
    //function sub_004978AC(?:?; ?:?):?;//004978AC
    //procedure sub_004978FC(?:?; ?:AnsiString);//004978FC
    //procedure sub_0049795C(?:?; ?:?);//0049795C
    //function sub_00497B7C(?:?; ?:AnsiString):?;//00497B7C
    //function sub_00497BF0(?:?):?;//00497BF0
    //function sub_00497D0C:?;//00497D0C
    //function sub_00497D38(?:?; ?:?; ?:?; ?:?):?;//00497D38
    //procedure sub_00497DA4(?:?; ?:TMenuItem; ?:?);//00497DA4
    //procedure sub_00497EC4(?:?);//00497EC4
    //function sub_00497EE8:?;//00497EE8
    //function sub_00497F20:?;//00497F20
    //function sub_00497F6C:?;//00497F6C
    //function sub_00497FB0:?;//00497FB0
    //function sub_00497FF4:?;//00497FF4
    //function sub_00498038:?;//00498038
    //function sub_00498084:?;//00498084
    //function sub_004980D8:?;//004980D8
    //function sub_00498120:?;//00498120
    //function sub_0049816C:?;//0049816C
    //function sub_004981B4:?;//004981B4
    //procedure sub_004981F0(?:?);//004981F0
    //procedure sub_0049821C(?:?);//0049821C
    //procedure sub_00498248(?:?);//00498248
    //procedure sub_00498274(?:?);//00498274
    //procedure sub_004982A0(?:?);//004982A0
    //procedure sub_004982C8(?:?);//004982C8
    //procedure sub_004982F8(?:?);//004982F8
    //procedure sub_00498324(?:?);//00498324
    //procedure sub_00498350(?:?);//00498350
    //procedure sub_0049837C(?:?; ?:?);//0049837C
    constructor Create;//004983AC
    destructor Destroy;//0049844C
    //procedure sub_00498538(?:?; ?:?; ?:?);//00498538
    //function sub_00498818(?:?; ?:?):?;//00498818
    procedure sub_00498844(?:TMenuItem);//00498844
    //procedure sub_00498918(?:TMenuItem; ?:?);//00498918
    procedure sub_0049898C;//0049898C
    procedure sub_004989D8(?:TMenuItem);//004989D8
    //procedure sub_00498AE0(?:TMenuItem; ?:?; ?:?);//00498AE0
    //function sub_00498B60(?:TMenuItem):?;//00498B60
    procedure DefineProperties(Filer:TFiler);//00498BCC
    //procedure sub_00498C20(?:TMenuItem; ?:?; ?:AnsiString; ?:?; ?:?; ?:?; ?:?);//00498C20
    //procedure sub_00498E54(?:?; ?:?; ?:?);//00498E54
    procedure NormalDraw;//00498EA0
    procedure BiDiDraw;//004997D4
    procedure AdvancedDrawItem(ACanvas:TCanvas; ARect:TRect; State:TOwnerDrawState; TopLevel:Boolean);//0049A128
    procedure GetMenuSize;//0049A2C0
    //procedure sub_0049A30C(?:?; ?:?; ?:?);//0049A30C
    procedure sub_0042A774;//0049A55C
    procedure sub_0049A5D8(?:TMenuItem);//0049A5D8
    procedure sub_0049A7FC;//0049A7FC
    //function sub_0049A814(?:TMenuItem):?;//0049A814
    //function sub_0049A840(?:TMenuItem; ?:?):?;//0049A840
    //function sub_0049A90C(?:?):?;//0049A90C
    //procedure sub_0049A940(?:TMenuItem; ?:?);//0049A940
    //procedure sub_0042A788(?:?; ?:?);//0049A9B0
    //procedure sub_0042A808(?:?; ?:?);//0049A9F8
    procedure sub_0049AAAC;//0049AAAC
    //procedure sub_0049AACC(?:TMenuItem; ?:?; ?:?);//0049AACC
    //procedure sub_0049ABBC(?:TMenuItem; ?:?);//0049ABBC
    procedure sub_0049AC50;//0049AC50
    //function sub_0049AD38(?:TMenuItem; ?:TMenuItem):?;//0049AD38
    //procedure sub_0049AD6C(?:?; ?:TMenuItem);//0049AD6C
    procedure sub_0049AD94(?:TMenuItem; ?:TMenuItem);//0049AD94
    //procedure sub_0049ADD0(?:?);//0049ADD0
    //procedure sub_0049AE34(?:?; ?:?; ?:?; ?:?);//0049AE34
    //procedure sub_0049AFC8(?:?);//0049AFC8
    procedure sub_0042A81C;//0049B008
    //procedure sub_0042A834(?:?);//0049B044
    //procedure sub_0049B12C(?:?; ?:?);//0049B12C
    //procedure sub_0049B2C0(?:?; ?:?);//0049B2C0
    //procedure sub_0049B4C4(?:?);//0049B4C4
    //procedure sub_0049B560(?:?; ?:?);//0049B560
    //procedure sub_0049B630(?:?; ?:?);//0049B630
    //function sub_0049B654(?:?):?;//0049B654
    procedure sub_0049B68C(?:TMenuItem);//0049B68C
    //function sub_0049B6AC(?:?; ?:?):?;//0049B6AC
    //procedure sub_0049B6F0(?:?);//0049B6F0
    //procedure sub_0049B780(?:AnsiString; ?:?; ?:?);//0049B780
    //function sub_0049B908(?:TMenuItem; ?:?):?;//0049B908
    //function sub_0049BE54(?:?):?;//0049BE54
    //function sub_0049BE84(?:TMenuItem; ?:?):?;//0049BE84
    //function sub_0049C04C(?:?):?;//0049C04C
    //function sub_0049C09C(?:?):?;//0049C09C
    constructor sub_0049C0EC;//0049C0EC
    destructor Destroy;//0049C1B8
    //procedure sub_0042A788(?:?; ?:?; ?:?);//0049C200
    //function sub_0049C22C:?;//0049C22C
    //procedure sub_0042A808(?:?; ?:?);//0049C24C
    //function sub_0049C278(?:?):?;//0049C278
    procedure sub_0049C2B0(?:TMainMenu);//0049C2B0
    //function sub_0049C2D4(?:?; ?:?):?;//0049C2D4
    //function sub_0049C384(?:TMenu; ?:HMENU; ?:?):?;//0049C384
    //function sub_0049C3C0(?:Pointer; ?:?; ?:?):?;//0049C3C0
    //function sub_0049C458(?:Pointer; ?:?):?;//0049C458
    //function sub_0049C494(?:Pointer; ?:?):?;//0049C494
    //function sub_0049C594(?:?):?;//0049C594
    //function sub_0049C5C0(?:?; ?:?):?;//0049C5C0
    //function sub_0049C5F4(?:TMenuItem; ?:?; ?:?):?;//0049C5F4
    //procedure sub_0049C770(?:?);//0049C770
    procedure sub_0049C8B4(?:TMainMenu);//0049C8B4
    //procedure sub_0049C980(?:?; ?:?);//0049C980
    //function sub_0049CA64(?:TMainMenu):?;//0049CA64
    procedure sub_0049CB20(?:TPopupMenu);//0049CB20
    procedure sub_0049CBA0(?:TMainMenu; ?:HWND);//0049CBA0
    //procedure sub_0049CBF0(?:?; ?:?);//0049CBF0
    procedure sub_0049CC24;//0049CC24
    //procedure sub_0049CC44(?:?; ?:?; ?:?);//0049CC44
    //procedure sub_0049CC8C(?:?; ?:?);//0049CC8C
    //procedure sub_0049CD14(?:?; ?:?);//0049CD14
    //function sub_0049CD80(?:?; ?:LongWord; ?:?; ?:?; ?:?):?;//0049CD80
    //function sub_0049CE14(?:?; ?:LongWord; ?:?; ?:?; ?:?):?;//0049CE14
    //procedure sub_0049CF28(?:Pointer; ?:?);//0049CF28
    //function sub_0049D120(?:?; ?:?; ?:?; ?:?; ?:?; ?:?):?;//0049D120
    procedure sub_0049D260(?:TMenu);//0049D260
    procedure sub_0049D2A0(?:TPopupMenu; ?:TControl);//0049D2A0
    //procedure sub_0049D3B0(?:?; ?:?; ?:?);//0049D3B0
    //procedure sub_0049D418(?:?; ?:?);//0049D418
    //procedure sub_0049D450(?:?; ?:?);//0049D450
    //procedure sub_0049D484(?:?);//0049D484
    //function sub_0049D4BC:?;//0049D4BC
    //procedure sub_0049D540(?:?);//0049D540
    procedure sub_0049DB34(?:TPopupList; ?:TPopupMenu);//0049DB34
    //procedure sub_0049DB6C(?:TPopupList; ?:?);//0049DB6C
    constructor Create;//0049DB9C
    destructor Destroy;//0049DC38
    //procedure sub_0049DC78(?:?);//0049DC78
    procedure sub_0049DCD8(?:TPopupMenu);//0049DCD8
    //function sub_0049DD40(?:TPopupMenu):?;//0049DD40
    //procedure sub_0049DDAC(?:?; ?:?);//0049DDAC
    //procedure sub_0049DE88(?:TMenuItemStack; ?:?);//0049DE88
    //procedure sub_0049DEE0(?:?; ?:TControlCanvas; ?:?; ?:?);//0049DEE0
    //procedure sub_0049DFE4(?:AnsiString; ?:?);//0049DFE4
    //procedure sub_0049E0B8(?:?; ?:?);//0049E0B8
    //function sub_0049E14C(?:String; ?:String):?;//0049E14C
    procedure _NF__590;//0049E1C0

implementation

//00497834
{*function sub_00497834(?:?):?;
begin
 00497834    push        ebp
 00497835    mov         ebp,esp
 00497837    add         esp,0FFFFFFF4
 0049783A    mov         dword ptr [ebp-4],eax
 0049783D    xor         eax,eax
 0049783F    mov         dword ptr [ebp-8],eax
 00497842    mov         eax,dword ptr [ebp-4]
 00497845    call        00481748
 0049784A    mov         dword ptr [ebp-0C],eax
 0049784D    cmp         dword ptr [ebp-0C],0
>00497851    je          00497871
 00497853    push        0
 00497855    mov         edx,dword ptr [ebp-4]
 00497858    xor         ecx,ecx
 0049785A    mov         eax,dword ptr [ebp-0C]
 0049785D    call        00488D4C
 00497862    mov         dword ptr [ebp-8],eax
 00497865    cmp         dword ptr [ebp-8],0
>00497869    jne         00497871
 0049786B    mov         eax,dword ptr [ebp-0C]
 0049786E    mov         dword ptr [ebp-8],eax
 00497871    mov         eax,dword ptr [ebp-8]
 00497874    mov         esp,ebp
 00497876    pop         ebp
 00497877    ret
end;*}

//00497878
{*function sub_00497878:?;
begin
 00497878    push        ebp
 00497879    mov         ebp,esp
 0049787B    mov         eax,dword ptr [esp+8]
 0049787F    pop         ebp
 00497880    ret
end;*}

//00497884
procedure sub_00497884;
begin
{*
 00497884    push        ebp
 00497885    mov         ebp,esp
 00497887    push        ecx
 00497888    mov         dword ptr [ebp-4],eax
 0049788B    push        ebp
 0049788C    call        00497878
 00497891    pop         ecx
 00497892    push        eax
 00497893    mov         ecx,dword ptr [ebp-4]
 00497896    mov         dl,1
 00497898    mov         eax,[00496904];EMenuError
 0049789D    call        Exception.Create;EMenuError.Create
>004978A2    jmp         @RaiseExcept
*}
end;

//004978AC
{*function sub_004978AC(?:?; ?:?):?;
begin
 004978AC    push        ebp
 004978AD    mov         ebp,esp
 004978AF    add         esp,0FFFFFFF8
 004978B2    mov         byte ptr [ebp-3],dl
 004978B5    mov         word ptr [ebp-2],ax
 004978B9    mov         word ptr [ebp-6],0
 004978BF    cmp         byte ptr [ebp-1],0
>004978C3    jne         004978F1
 004978C5    mov         ax,word ptr [ebp-2]
 004978C9    mov         word ptr [ebp-6],ax
 004978CD    test        byte ptr [ebp-3],1
>004978D1    je          004978D9
 004978D3    add         word ptr [ebp-6],2000
 004978D9    test        byte ptr [ebp-3],4
>004978DD    je          004978E5
 004978DF    add         word ptr [ebp-6],4000
 004978E5    test        byte ptr [ebp-3],2
>004978E9    je          004978F1
 004978EB    add         word ptr [ebp-6],8000
 004978F1    mov         ax,word ptr [ebp-6]
 004978F5    pop         ecx
 004978F6    pop         ecx
 004978F7    pop         ebp
 004978F8    ret
end;*}

//004978FC
{*procedure sub_004978FC(?:?; ?:AnsiString);
begin
 004978FC    push        ebp
 004978FD    mov         ebp,esp
 004978FF    add         esp,0FFFFFEF4
 00497905    mov         dword ptr [ebp-8],edx
 00497908    mov         word ptr [ebp-2],ax
 0049790C    mov         eax,dword ptr [ebp-8]
 0049790F    call        @LStrClr
 00497914    push        0
 00497916    xor         eax,eax
 00497918    mov         al,byte ptr [ebp-2]
 0049791B    push        eax
 0049791C    call        user32.MapVirtualKeyA
 00497921    shl         eax,10
 00497924    mov         dword ptr [ebp-0C],eax
 00497927    cmp         dword ptr [ebp-0C],0
>0049792B    je          00497955
 0049792D    push        100
 00497932    lea         eax,[ebp-10C]
 00497938    push        eax
 00497939    mov         eax,dword ptr [ebp-0C]
 0049793C    push        eax
 0049793D    call        user32.GetKeyNameTextA
 00497942    mov         eax,dword ptr [ebp-8]
 00497945    lea         edx,[ebp-10C]
 0049794B    mov         ecx,100
 00497950    call        @LStrFromArray
 00497955    mov         esp,ebp
 00497957    pop         ebp
 00497958    ret
end;*}

//0049795C
{*procedure sub_0049795C(?:?; ?:?);
begin
 0049795C    push        ebp
 0049795D    mov         ebp,esp
 0049795F    add         esp,0FFFFFFF0
 00497962    xor         ecx,ecx
 00497964    mov         dword ptr [ebp-10],ecx
 00497967    mov         dword ptr [ebp-0C],ecx
 0049796A    mov         dword ptr [ebp-8],edx
 0049796D    mov         word ptr [ebp-2],ax
 00497971    xor         eax,eax
 00497973    push        ebp
 00497974    push        497B63
 00497979    push        dword ptr fs:[eax]
 0049797C    mov         dword ptr fs:[eax],esp
 0049797F    xor         eax,eax
 00497981    mov         al,byte ptr [ebp-2]
 00497984    cmp         eax,2D
>00497987    jge         004979B0
 00497989    add         eax,0FFFFFFF8
 0049798C    sub         eax,2
>0049798F    jb          004979F9
 00497991    sub         eax,3
>00497994    je          00497A13
 00497996    sub         eax,0E
>00497999    je          00497A26
 0049799F    add         eax,0FFFFFFFB
 004979A2    sub         eax,9
>004979A5    jb          00497A39
>004979AB    jmp         00497AD1
 004979B0    cmp         eax,41
>004979B3    jge         004979D0
 004979B5    add         eax,0FFFFFFD3
 004979B8    sub         eax,2
>004979BB    jb          00497A56
 004979C1    dec         eax
 004979C2    sub         eax,0A
>004979C5    jb          00497A70
>004979CB    jmp         00497AD1
 004979D0    add         eax,0FFFFFFBF
 004979D3    sub         eax,1A
>004979D6    jb          00497A85
 004979DC    add         eax,0FFFFFFFB
 004979DF    sub         eax,0A
>004979E2    jb          00497A9A
 004979E8    add         eax,0FFFFFFFA
 004979EB    sub         eax,18
>004979EE    jb          00497AAF
>004979F4    jmp         00497AD1
 004979F9    lea         eax,[ebp-0C]
 004979FC    mov         dl,byte ptr [ebp-2]
 004979FF    and         edx,7F
 00497A02    mov         edx,dword ptr [edx*4+56C8C0]
 00497A09    call        @LStrLAsg
>00497A0E    jmp         00497ADD
 00497A13    lea         eax,[ebp-0C]
 00497A16    mov         edx,dword ptr ds:[56C8EC];0x0 gvar_0056C8EC
 00497A1C    call        @LStrLAsg
>00497A21    jmp         00497ADD
 00497A26    lea         eax,[ebp-0C]
 00497A29    mov         edx,dword ptr ds:[56C8E8];0x0 gvar_0056C8E8
 00497A2F    call        @LStrLAsg
>00497A34    jmp         00497ADD
 00497A39    lea         eax,[ebp-0C]
 00497A3C    mov         dl,byte ptr [ebp-2]
 00497A3F    add         dl,4
 00497A42    and         edx,7F
 00497A45    mov         edx,dword ptr [edx*4+56C860]
 00497A4C    call        @LStrLAsg
>00497A51    jmp         00497ADD
 00497A56    lea         eax,[ebp-0C]
 00497A59    mov         dl,byte ptr [ebp-2]
 00497A5C    add         dl,0D
 00497A5F    and         edx,7F
 00497A62    mov         edx,dword ptr [edx*4+56C82C]
 00497A69    call        @LStrLAsg
>00497A6E    jmp         00497ADD
 00497A70    lea         eax,[ebp-0C]
 00497A73    xor         edx,edx
 00497A75    mov         dl,byte ptr [ebp-2]
 00497A78    sub         edx,30
 00497A7B    add         edx,30
 00497A7E    call        @LStrFromChar
>00497A83    jmp         00497ADD
 00497A85    lea         eax,[ebp-0C]
 00497A88    xor         edx,edx
 00497A8A    mov         dl,byte ptr [ebp-2]
 00497A8D    sub         edx,41
 00497A90    add         edx,41
 00497A93    call        @LStrFromChar
>00497A98    jmp         00497ADD
 00497A9A    lea         eax,[ebp-0C]
 00497A9D    xor         edx,edx
 00497A9F    mov         dl,byte ptr [ebp-2]
 00497AA2    sub         edx,60
 00497AA5    add         edx,30
 00497AA8    call        @LStrFromChar
>00497AAD    jmp         00497ADD
 00497AAF    xor         eax,eax
 00497AB1    mov         al,byte ptr [ebp-2]
 00497AB4    sub         eax,6F
 00497AB7    lea         edx,[ebp-10]
 00497ABA    call        IntToStr
 00497ABF    mov         ecx,dword ptr [ebp-10]
 00497AC2    lea         eax,[ebp-0C]
 00497AC5    mov         edx,497B78;'F'
 00497ACA    call        @LStrCat3
>00497ACF    jmp         00497ADD
 00497AD1    lea         edx,[ebp-0C]
 00497AD4    mov         ax,word ptr [ebp-2]
 00497AD8    call        004978FC
 00497ADD    cmp         dword ptr [ebp-0C],0
>00497AE1    je          00497B40
 00497AE3    mov         eax,dword ptr [ebp-8]
 00497AE6    call        @LStrClr
 00497AEB    test        byte ptr [ebp-1],20
>00497AEF    je          00497B02
 00497AF1    mov         eax,dword ptr [ebp-8]
 00497AF4    mov         edx,dword ptr ds:[56C91C];0x0 gvar_0056C91C
 00497AFA    call        @LStrCat
 00497AFF    mov         eax,dword ptr [ebp-8]
 00497B02    test        byte ptr [ebp-1],40
>00497B06    je          00497B19
 00497B08    mov         eax,dword ptr [ebp-8]
 00497B0B    mov         edx,dword ptr ds:[56C920];0x0 gvar_0056C920
 00497B11    call        @LStrCat
 00497B16    mov         eax,dword ptr [ebp-8]
 00497B19    test        byte ptr [ebp-1],80
>00497B1D    je          00497B30
 00497B1F    mov         eax,dword ptr [ebp-8]
 00497B22    mov         edx,dword ptr ds:[56C924];0x0 gvar_0056C924
 00497B28    call        @LStrCat
 00497B2D    mov         eax,dword ptr [ebp-8]
 00497B30    mov         eax,dword ptr [ebp-8]
 00497B33    mov         edx,dword ptr [ebp-0C]
 00497B36    call        @LStrCat
 00497B3B    mov         eax,dword ptr [ebp-8]
>00497B3E    jmp         00497B48
 00497B40    mov         eax,dword ptr [ebp-8]
 00497B43    call        @LStrClr
 00497B48    xor         eax,eax
 00497B4A    pop         edx
 00497B4B    pop         ecx
 00497B4C    pop         ecx
 00497B4D    mov         dword ptr fs:[eax],edx
 00497B50    push        497B6A
 00497B55    lea         eax,[ebp-10]
 00497B58    mov         edx,2
 00497B5D    call        @LStrArrayClr
 00497B62    ret
>00497B63    jmp         @HandleFinally
>00497B68    jmp         00497B55
 00497B6A    mov         esp,ebp
 00497B6C    pop         ebp
 00497B6D    ret
end;*}

//00497B7C
{*function sub_00497B7C(?:?; ?:AnsiString):?;
begin
 00497B7C    push        ebp
 00497B7D    mov         ebp,esp
 00497B7F    add         esp,0FFFFFFF4
 00497B82    push        ebx
 00497B83    mov         dword ptr [ebp-8],edx
 00497B86    mov         dword ptr [ebp-4],eax
 00497B89    mov         byte ptr [ebp-9],0
 00497B8D    mov         eax,dword ptr [ebp-4]
 00497B90    mov         eax,dword ptr [eax]
 00497B92    call        @LStrLen
 00497B97    mov         ebx,eax
 00497B99    mov         eax,dword ptr [ebp-8]
 00497B9C    call        @LStrLen
 00497BA1    cmp         ebx,eax
>00497BA3    jl          00497BE7
 00497BA5    mov         eax,dword ptr [ebp-8]
 00497BA8    call        @LStrLen
 00497BAD    push        eax
 00497BAE    mov         eax,dword ptr [ebp-8]
 00497BB1    call        @LStrToPChar
 00497BB6    push        eax
 00497BB7    mov         eax,dword ptr [ebp-4]
 00497BBA    mov         eax,dword ptr [eax]
 00497BBC    call        @LStrToPChar
 00497BC1    pop         edx
 00497BC2    pop         ecx
 00497BC3    call        0040BFB4
 00497BC8    test        eax,eax
>00497BCA    jne         00497BE7
 00497BCC    mov         byte ptr [ebp-9],1
 00497BD0    mov         eax,dword ptr [ebp-8]
 00497BD3    call        @LStrLen
 00497BD8    mov         ecx,eax
 00497BDA    mov         eax,dword ptr [ebp-4]
 00497BDD    mov         edx,1
 00497BE2    call        @LStrDelete
 00497BE7    mov         al,byte ptr [ebp-9]
 00497BEA    pop         ebx
 00497BEB    mov         esp,ebp
 00497BED    pop         ebp
 00497BEE    ret
end;*}

//00497BF0
{*function sub_00497BF0(?:?):?;
begin
 00497BF0    push        ebp
 00497BF1    mov         ebp,esp
 00497BF3    add         esp,0FFFFFFF0
 00497BF6    xor         edx,edx
 00497BF8    mov         dword ptr [ebp-10],edx
 00497BFB    mov         dword ptr [ebp-4],eax
 00497BFE    mov         eax,dword ptr [ebp-4]
 00497C01    call        @LStrAddRef
 00497C06    xor         eax,eax
 00497C08    push        ebp
 00497C09    push        497CEE
 00497C0E    push        dword ptr fs:[eax]
 00497C11    mov         dword ptr fs:[eax],esp
 00497C14    mov         word ptr [ebp-6],0
 00497C1A    mov         word ptr [ebp-0A],0
 00497C20    push        ebp
 00497C21    lea         eax,[ebp-4]
 00497C24    mov         edx,dword ptr ds:[56C91C];0x0 gvar_0056C91C
 00497C2A    call        00497B7C
 00497C2F    pop         ecx
 00497C30    test        al,al
>00497C32    je          00497C3C
 00497C34    or          word ptr [ebp-0A],2000
>00497C3A    jmp         00497C20
 00497C3C    push        ebp
 00497C3D    lea         eax,[ebp-4]
 00497C40    mov         edx,497D08;'^'
 00497C45    call        00497B7C
 00497C4A    pop         ecx
 00497C4B    test        al,al
>00497C4D    je          00497C57
 00497C4F    or          word ptr [ebp-0A],4000
>00497C55    jmp         00497C20
 00497C57    push        ebp
 00497C58    lea         eax,[ebp-4]
 00497C5B    mov         edx,dword ptr ds:[56C920];0x0 gvar_0056C920
 00497C61    call        00497B7C
 00497C66    pop         ecx
 00497C67    test        al,al
>00497C69    je          00497C73
 00497C6B    or          word ptr [ebp-0A],4000
>00497C71    jmp         00497C20
 00497C73    push        ebp
 00497C74    lea         eax,[ebp-4]
 00497C77    mov         edx,dword ptr ds:[56C924];0x0 gvar_0056C924
 00497C7D    call        00497B7C
 00497C82    pop         ecx
 00497C83    test        al,al
>00497C85    je          00497C8F
 00497C87    or          word ptr [ebp-0A],8000
>00497C8D    jmp         00497C20
 00497C8F    cmp         dword ptr [ebp-4],0
>00497C93    je          00497CD0
 00497C95    mov         word ptr [ebp-8],8
 00497C9B    lea         edx,[ebp-10]
 00497C9E    mov         ax,word ptr [ebp-8]
 00497CA2    call        0049795C
 00497CA7    mov         edx,dword ptr [ebp-10]
 00497CAA    mov         eax,dword ptr [ebp-4]
 00497CAD    call        0040BF44
 00497CB2    test        eax,eax
>00497CB4    jne         00497CC4
 00497CB6    mov         ax,word ptr [ebp-8]
 00497CBA    or          ax,word ptr [ebp-0A]
 00497CBE    mov         word ptr [ebp-6],ax
>00497CC2    jmp         00497CD0
 00497CC4    inc         word ptr [ebp-8]
 00497CC8    cmp         word ptr [ebp-8],256
>00497CCE    jne         00497C9B
 00497CD0    xor         eax,eax
 00497CD2    pop         edx
 00497CD3    pop         ecx
 00497CD4    pop         ecx
 00497CD5    mov         dword ptr fs:[eax],edx
 00497CD8    push        497CF5
 00497CDD    lea         eax,[ebp-10]
 00497CE0    call        @LStrClr
 00497CE5    lea         eax,[ebp-4]
 00497CE8    call        @LStrClr
 00497CED    ret
>00497CEE    jmp         @HandleFinally
>00497CF3    jmp         00497CDD
 00497CF5    mov         ax,word ptr [ebp-6]
 00497CF9    mov         esp,ebp
 00497CFB    pop         ebp
 00497CFC    ret
end;*}

//00497D0C
{*function sub_00497D0C:?;
begin
 00497D0C    push        ebp
 00497D0D    mov         ebp,esp
 00497D0F    push        ecx
 00497D10    mov         eax,[00571E38];0x0 CommandPool:TBits
 00497D15    call        004209E0
 00497D1A    mov         word ptr [ebp-2],ax
 00497D1E    movzx       edx,word ptr [ebp-2]
 00497D22    mov         cl,1
 00497D24    mov         eax,[00571E38];0x0 CommandPool:TBits
 00497D29    call        TBits.SetBit
 00497D2E    mov         ax,word ptr [ebp-2]
 00497D32    pop         ecx
 00497D33    pop         ebp
 00497D34    ret
end;*}

//00497D38
{*function sub_00497D38(?:?; ?:?; ?:?; ?:?):?;
begin
 00497D38    push        ebp
 00497D39    mov         ebp,esp
 00497D3B    add         esp,0FFFFFFEC
 00497D3E    mov         dword ptr [ebp-8],ecx
 00497D41    mov         dword ptr [ebp-14],edx
 00497D44    mov         dword ptr [ebp-10],eax
 00497D47    cmp         dword ptr [ebp-14],0
>00497D4B    je          00497D9C
 00497D4D    mov         byte ptr [ebp-9],0
>00497D51    jmp         00497D87
 00497D53    mov         edx,dword ptr [ebp-10]
 00497D56    mov         edx,dword ptr [edx]
 00497D58    mov         eax,dword ptr [ebp-14]
 00497D5B    call        0049A840
 00497D60    mov         dword ptr [ebp-4],eax
 00497D63    mov         eax,dword ptr [ebp-4]
 00497D66    mov         al,byte ptr [eax+3F]
 00497D69    mov         edx,dword ptr [ebp+8]
 00497D6C    cmp         al,byte ptr [edx-1]
>00497D6F    ja          00497D9C
 00497D71    mov         eax,dword ptr [ebp-4]
 00497D74    mov         edx,dword ptr [ebp+8]
 00497D77    push        dword ptr [edx]
 00497D79    call        dword ptr [ebp-8]
 00497D7C    add         esp,4
 00497D7F    mov         byte ptr [ebp-9],al
 00497D82    mov         eax,dword ptr [ebp-10]
 00497D85    inc         dword ptr [eax]
 00497D87    cmp         byte ptr [ebp-9],0
>00497D8B    jne         00497D9C
 00497D8D    mov         eax,dword ptr [ebp-14]
 00497D90    call        0049A814
 00497D95    mov         edx,dword ptr [ebp-10]
 00497D98    cmp         eax,dword ptr [edx]
>00497D9A    jg          00497D53
 00497D9C    mov         al,byte ptr [ebp-9]
 00497D9F    mov         esp,ebp
 00497DA1    pop         ebp
 00497DA2    ret
end;*}

//00497DA4
{*procedure sub_00497DA4(?:?; ?:TMenuItem; ?:?);
begin
 00497DA4    push        ebp
 00497DA5    mov         ebp,esp
 00497DA7    add         esp,0FFFFFFD8
 00497DAA    mov         dword ptr [ebp-10],ecx
 00497DAD    mov         dword ptr [ebp-0C],edx
 00497DB0    mov         dword ptr [ebp-8],eax
 00497DB3    xor         eax,eax
 00497DB5    mov         dword ptr [ebp-14],eax
 00497DB8    xor         eax,eax
 00497DBA    mov         dword ptr [ebp-18],eax
 00497DBD    xor         eax,eax
 00497DBF    mov         dword ptr [ebp-20],eax
 00497DC2    xor         eax,eax
 00497DC4    mov         dword ptr [ebp-24],eax
 00497DC7    cmp         dword ptr [ebp-0C],0
>00497DCB    je          00497DD8
 00497DCD    mov         eax,dword ptr [ebp-0C]
 00497DD0    call        0049A814
 00497DD5    mov         dword ptr [ebp-20],eax
 00497DD8    cmp         dword ptr [ebp-10],0
>00497DDC    je          00497DE9
 00497DDE    mov         eax,dword ptr [ebp-10]
 00497DE1    call        0049A814
 00497DE6    mov         dword ptr [ebp-24],eax
 00497DE9    mov         byte ptr [ebp-25],0
>00497DED    jmp         00497EA2
 00497DF2    mov         byte ptr [ebp-1],0FF
 00497DF6    mov         byte ptr [ebp-19],0FF
 00497DFA    mov         eax,dword ptr [ebp-14]
 00497DFD    cmp         eax,dword ptr [ebp-20]
>00497E00    jge         00497E13
 00497E02    mov         edx,dword ptr [ebp-14]
 00497E05    mov         eax,dword ptr [ebp-0C]
 00497E08    call        0049A840
 00497E0D    mov         al,byte ptr [eax+3F]
 00497E10    mov         byte ptr [ebp-1],al
 00497E13    mov         eax,dword ptr [ebp-18]
 00497E16    cmp         eax,dword ptr [ebp-24]
>00497E19    jge         00497E2C
 00497E1B    mov         edx,dword ptr [ebp-18]
 00497E1E    mov         eax,dword ptr [ebp-10]
 00497E21    call        0049A840
 00497E26    mov         al,byte ptr [eax+3F]
 00497E29    mov         byte ptr [ebp-19],al
 00497E2C    mov         al,byte ptr [ebp-1]
 00497E2F    cmp         al,byte ptr [ebp-19]
>00497E32    ja          00497E49
 00497E34    push        ebp
 00497E35    lea         eax,[ebp-14]
 00497E38    mov         ecx,dword ptr [ebp-8]
 00497E3B    mov         edx,dword ptr [ebp-0C]
 00497E3E    call        00497D38
 00497E43    pop         ecx
 00497E44    mov         byte ptr [ebp-25],al
>00497E47    jmp         00497E67
 00497E49    mov         al,byte ptr [ebp-19]
 00497E4C    mov         byte ptr [ebp-1],al
 00497E4F    push        ebp
 00497E50    lea         eax,[ebp-18]
 00497E53    mov         ecx,dword ptr [ebp-8]
 00497E56    mov         edx,dword ptr [ebp-10]
 00497E59    call        00497D38
 00497E5E    pop         ecx
 00497E5F    mov         byte ptr [ebp-25],al
>00497E62    jmp         00497E67
 00497E64    inc         dword ptr [ebp-14]
 00497E67    mov         eax,dword ptr [ebp-14]
 00497E6A    cmp         eax,dword ptr [ebp-20]
>00497E6D    jge         00497E87
 00497E6F    mov         edx,dword ptr [ebp-14]
 00497E72    mov         eax,dword ptr [ebp-0C]
 00497E75    call        0049A840
 00497E7A    mov         al,byte ptr [eax+3F]
 00497E7D    cmp         al,byte ptr [ebp-1]
>00497E80    jbe         00497E64
>00497E82    jmp         00497E87
 00497E84    inc         dword ptr [ebp-18]
 00497E87    mov         eax,dword ptr [ebp-18]
 00497E8A    cmp         eax,dword ptr [ebp-24]
>00497E8D    jge         00497EA2
 00497E8F    mov         edx,dword ptr [ebp-18]
 00497E92    mov         eax,dword ptr [ebp-10]
 00497E95    call        0049A840
 00497E9A    mov         al,byte ptr [eax+3F]
 00497E9D    cmp         al,byte ptr [ebp-1]
>00497EA0    jbe         00497E84
 00497EA2    cmp         byte ptr [ebp-25],0
>00497EA6    jne         00497EC0
 00497EA8    mov         eax,dword ptr [ebp-14]
 00497EAB    cmp         eax,dword ptr [ebp-20]
>00497EAE    jl          00497DF2
 00497EB4    mov         eax,dword ptr [ebp-18]
 00497EB7    cmp         eax,dword ptr [ebp-24]
>00497EBA    jl          00497DF2
 00497EC0    mov         esp,ebp
 00497EC2    pop         ebp
 00497EC3    ret
end;*}

//00497EC4
{*procedure sub_00497EC4(?:?);
begin
 00497EC4    push        ebp
 00497EC5    mov         ebp,esp
 00497EC7    add         esp,0FFFFFFF8
 00497ECA    mov         dword ptr [ebp-8],edx
 00497ECD    mov         dword ptr [ebp-4],eax
 00497ED0    mov         eax,dword ptr [ebp-8]
 00497ED3    mov         edx,dword ptr ds:[496C90];TMenuItem
 00497ED9    call        @AsClass
 00497EDE    mov         edx,dword ptr [ebp-4]
 00497EE1    mov         dword ptr [edx+18],eax;TMenuActionLink.........................FClient:TMenuItem
 00497EE4    pop         ecx
 00497EE5    pop         ecx
 00497EE6    pop         ebp
 00497EE7    ret
end;*}

//00497EE8
{*function sub_00497EE8:?;
begin
 00497EE8    push        ebp
 00497EE9    mov         ebp,esp
 00497EEB    add         esp,0FFFFFFF8
 00497EEE    mov         dword ptr [ebp-4],eax
 00497EF1    mov         eax,dword ptr [ebp-4]
 00497EF4    mov         eax,dword ptr [eax+10];TMenuActionLink.FAction:TBasicAction
 00497EF7    mov         edx,dword ptr ds:[492C28];TCustomAction
 00497EFD    call        @AsClass
 00497F02    mov         al,byte ptr [eax+95];TCustomAction.FAutoCheck:Boolean
 00497F08    mov         edx,dword ptr [ebp-4]
 00497F0B    mov         edx,dword ptr [edx+18];TMenuActionLink..........................FClient:TMenuItem
 00497F0E    cmp         al,byte ptr [edx+0A8];TMenuItem.AutoCheck:Boolean
 00497F14    sete        byte ptr [ebp-5]
 00497F18    mov         al,byte ptr [ebp-5]
 00497F1B    pop         ecx
 00497F1C    pop         ecx
 00497F1D    pop         ebp
 00497F1E    ret
end;*}

//00497F20
{*function sub_00497F20:?;
begin
 00497F20    push        ebp
 00497F21    mov         ebp,esp
 00497F23    add         esp,0FFFFFFF8
 00497F26    mov         dword ptr [ebp-4],eax
 00497F29    mov         eax,dword ptr [ebp-4]
 00497F2C    call        004939F8
 00497F31    test        al,al
>00497F33    je          00497F5B
 00497F35    mov         eax,dword ptr [ebp-4]
 00497F38    mov         eax,dword ptr [eax+10];TMenuActionLink.FAction:TBasicAction
 00497F3B    mov         edx,dword ptr ds:[492C28];TCustomAction
 00497F41    call        @AsClass
 00497F46    mov         edx,dword ptr [eax+64];TCustomAction.FCaption:String
 00497F49    mov         eax,dword ptr [ebp-4]
 00497F4C    mov         eax,dword ptr [eax+18];TMenuActionLink...........................FClient:TMenuItem
 00497F4F    mov         eax,dword ptr [eax+30];TMenuItem.Caption:String
 00497F52    call        0049E14C
 00497F57    test        al,al
>00497F59    jne         00497F5F
 00497F5B    xor         eax,eax
>00497F5D    jmp         00497F61
 00497F5F    mov         al,1
 00497F61    mov         byte ptr [ebp-5],al
 00497F64    mov         al,byte ptr [ebp-5]
 00497F67    pop         ecx
 00497F68    pop         ecx
 00497F69    pop         ebp
 00497F6A    ret
end;*}

//00497F6C
{*function sub_00497F6C:?;
begin
 00497F6C    push        ebp
 00497F6D    mov         ebp,esp
 00497F6F    add         esp,0FFFFFFF8
 00497F72    mov         dword ptr [ebp-4],eax
 00497F75    mov         eax,dword ptr [ebp-4]
 00497F78    call        00493A1C
 00497F7D    test        al,al
>00497F7F    je          00497FA0
 00497F81    mov         eax,dword ptr [ebp-4]
 00497F84    mov         eax,dword ptr [eax+10];TMenuActionLink.FAction:TBasicAction
 00497F87    mov         edx,dword ptr ds:[492C28];TCustomAction
 00497F8D    call        @AsClass
 00497F92    mov         al,byte ptr [eax+69];TCustomAction.FChecked:Boolean
 00497F95    mov         edx,dword ptr [ebp-4]
 00497F98    mov         edx,dword ptr [edx+18];TMenuActionLink............................FClient:TMenuItem
 00497F9B    cmp         al,byte ptr [edx+38];TMenuItem.Checked:Boolean
>00497F9E    je          00497FA4
 00497FA0    xor         eax,eax
>00497FA2    jmp         00497FA6
 00497FA4    mov         al,1
 00497FA6    mov         byte ptr [ebp-5],al
 00497FA9    mov         al,byte ptr [ebp-5]
 00497FAC    pop         ecx
 00497FAD    pop         ecx
 00497FAE    pop         ebp
 00497FAF    ret
end;*}

//00497FB0
{*function sub_00497FB0:?;
begin
 00497FB0    push        ebp
 00497FB1    mov         ebp,esp
 00497FB3    add         esp,0FFFFFFF8
 00497FB6    mov         dword ptr [ebp-4],eax
 00497FB9    mov         eax,dword ptr [ebp-4]
 00497FBC    call        00493A40
 00497FC1    test        al,al
>00497FC3    je          00497FE4
 00497FC5    mov         eax,dword ptr [ebp-4]
 00497FC8    mov         eax,dword ptr [eax+10];TMenuActionLink.FAction:TBasicAction
 00497FCB    mov         edx,dword ptr ds:[492C28];TCustomAction
 00497FD1    call        @AsClass
 00497FD6    mov         al,byte ptr [eax+6A];TCustomAction.FEnabled:Boolean
 00497FD9    mov         edx,dword ptr [ebp-4]
 00497FDC    mov         edx,dword ptr [edx+18];TMenuActionLink.............................FClient:TMenuItem
 00497FDF    cmp         al,byte ptr [edx+39];TMenuItem.Enabled:Boolean
>00497FE2    je          00497FE8
 00497FE4    xor         eax,eax
>00497FE6    jmp         00497FEA
 00497FE8    mov         al,1
 00497FEA    mov         byte ptr [ebp-5],al
 00497FED    mov         al,byte ptr [ebp-5]
 00497FF0    pop         ecx
 00497FF1    pop         ecx
 00497FF2    pop         ebp
 00497FF3    ret
end;*}

//00497FF4
{*function sub_00497FF4:?;
begin
 00497FF4    push        ebp
 00497FF5    mov         ebp,esp
 00497FF7    add         esp,0FFFFFFF8
 00497FFA    mov         dword ptr [ebp-4],eax
 00497FFD    mov         eax,dword ptr [ebp-4]
 00498000    call        00493A88
 00498005    test        al,al
>00498007    je          00498028
 00498009    mov         eax,dword ptr [ebp-4]
 0049800C    mov         eax,dword ptr [eax+10];TMenuActionLink.FAction:TBasicAction
 0049800F    mov         edx,dword ptr ds:[492C28];TCustomAction
 00498015    call        @AsClass
 0049801A    mov         eax,dword ptr [eax+74];TCustomAction.FHelpContext:THelpContext
 0049801D    mov         edx,dword ptr [ebp-4]
 00498020    mov         edx,dword ptr [edx+18];TMenuActionLink..............................FClient:TMenuItem
 00498023    cmp         eax,dword ptr [edx+54];TMenuItem.HelpContext:THelpContext
>00498026    je          0049802C
 00498028    xor         eax,eax
>0049802A    jmp         0049802E
 0049802C    mov         al,1
 0049802E    mov         byte ptr [ebp-5],al
 00498031    mov         al,byte ptr [ebp-5]
 00498034    pop         ecx
 00498035    pop         ecx
 00498036    pop         ebp
 00498037    ret
end;*}

//00498038
{*function sub_00498038:?;
begin
 00498038    push        ebp
 00498039    mov         ebp,esp
 0049803B    add         esp,0FFFFFFF8
 0049803E    mov         dword ptr [ebp-4],eax
 00498041    mov         eax,dword ptr [ebp-4]
 00498044    call        00493AD0
 00498049    test        al,al
>0049804B    je          00498071
 0049804D    mov         eax,dword ptr [ebp-4]
 00498050    mov         eax,dword ptr [eax+10];TMenuActionLink.FAction:TBasicAction
 00498053    mov         edx,dword ptr ds:[492C28];TCustomAction
 00498059    call        @AsClass
 0049805E    mov         edx,dword ptr [eax+7C];TCustomAction.FHint:String
 00498061    mov         eax,dword ptr [ebp-4]
 00498064    mov         eax,dword ptr [eax+18];TMenuActionLink...............................FClient:TMenuItem
 00498067    mov         eax,dword ptr [eax+58];TMenuItem.Hint:String
 0049806A    call        @LStrCmp
>0049806F    je          00498075
 00498071    xor         eax,eax
>00498073    jmp         00498077
 00498075    mov         al,1
 00498077    mov         byte ptr [ebp-5],al
 0049807A    mov         al,byte ptr [ebp-5]
 0049807D    pop         ecx
 0049807E    pop         ecx
 0049807F    pop         ebp
 00498080    ret
end;*}

//00498084
{*function sub_00498084:?;
begin
 00498084    push        ebp
 00498085    mov         ebp,esp
 00498087    add         esp,0FFFFFFF8
 0049808A    mov         dword ptr [ebp-4],eax
 0049808D    mov         eax,dword ptr [ebp-4]
 00498090    mov         eax,dword ptr [eax+18];TMenuActionLink................................FClient:TMenuItem
 00498093    cmp         byte ptr [eax+3D],0;TMenuItem.RadioItem:Boolean
>00498097    je          004980C7
 00498099    mov         eax,dword ptr [ebp-4]
 0049809C    call        00493A64
 004980A1    test        al,al
>004980A3    je          004980C7
 004980A5    mov         eax,dword ptr [ebp-4]
 004980A8    mov         eax,dword ptr [eax+10];TMenuActionLink.FAction:TBasicAction
 004980AB    mov         edx,dword ptr ds:[492C28];TCustomAction
 004980B1    call        @AsClass
 004980B6    mov         eax,dword ptr [eax+6C];TCustomAction.FGroupIndex:Integer
 004980B9    mov         edx,dword ptr [ebp-4]
 004980BC    mov         edx,dword ptr [edx+18];TMenuActionLink.................................FClient:TMenuItem
 004980BF    movzx       edx,byte ptr [edx+3F];TMenuItem.GroupIndex:byte
 004980C3    cmp         eax,edx
>004980C5    je          004980CB
 004980C7    xor         eax,eax
>004980C9    jmp         004980CD
 004980CB    mov         al,1
 004980CD    mov         byte ptr [ebp-5],al
 004980D0    mov         al,byte ptr [ebp-5]
 004980D3    pop         ecx
 004980D4    pop         ecx
 004980D5    pop         ebp
 004980D6    ret
end;*}

//004980D8
{*function sub_004980D8:?;
begin
 004980D8    push        ebp
 004980D9    mov         ebp,esp
 004980DB    add         esp,0FFFFFFF8
 004980DE    mov         dword ptr [ebp-4],eax
 004980E1    mov         eax,dword ptr [ebp-4]
 004980E4    call        00493AF4
 004980E9    test        al,al
>004980EB    je          0049810F
 004980ED    mov         eax,dword ptr [ebp-4]
 004980F0    mov         eax,dword ptr [eax+10];TMenuActionLink.FAction:TBasicAction
 004980F3    mov         edx,dword ptr ds:[492C28];TCustomAction
 004980F9    call        @AsClass
 004980FE    mov         eax,dword ptr [eax+80];TCustomAction.FImageIndex:TImageIndex
 00498104    mov         edx,dword ptr [ebp-4]
 00498107    mov         edx,dword ptr [edx+18];TMenuActionLink..................................FClient:TMenuIte...
 0049810A    cmp         eax,dword ptr [edx+40];TMenuItem.ImageIndex:TImageIndex
>0049810D    je          00498113
 0049810F    xor         eax,eax
>00498111    jmp         00498115
 00498113    mov         al,1
 00498115    mov         byte ptr [ebp-5],al
 00498118    mov         al,byte ptr [ebp-5]
 0049811B    pop         ecx
 0049811C    pop         ecx
 0049811D    pop         ebp
 0049811E    ret
end;*}

//00498120
{*function sub_00498120:?;
begin
 00498120    push        ebp
 00498121    mov         ebp,esp
 00498123    add         esp,0FFFFFFF8
 00498126    mov         dword ptr [ebp-4],eax
 00498129    mov         eax,dword ptr [ebp-4]
 0049812C    call        00493B18
 00498131    test        al,al
>00498133    je          00498159
 00498135    mov         eax,dword ptr [ebp-4]
 00498138    mov         eax,dword ptr [eax+10];TMenuActionLink.FAction:TBasicAction
 0049813B    mov         edx,dword ptr ds:[492C28];TCustomAction
 00498141    call        @AsClass
 00498146    mov         ax,word ptr [eax+84];TCustomAction.FShortCut:TShortCut
 0049814D    mov         edx,dword ptr [ebp-4]
 00498150    mov         edx,dword ptr [edx+18];TMenuActionLink...................................FClient:TMenuIt...
 00498153    cmp         ax,word ptr [edx+60];TMenuItem.ShortCut:TShortCut
>00498157    je          0049815D
 00498159    xor         eax,eax
>0049815B    jmp         0049815F
 0049815D    mov         al,1
 0049815F    mov         byte ptr [ebp-5],al
 00498162    mov         al,byte ptr [ebp-5]
 00498165    pop         ecx
 00498166    pop         ecx
 00498167    pop         ebp
 00498168    ret
end;*}

//0049816C
{*function sub_0049816C:?;
begin
 0049816C    push        ebp
 0049816D    mov         ebp,esp
 0049816F    add         esp,0FFFFFFF8
 00498172    mov         dword ptr [ebp-4],eax
 00498175    mov         eax,dword ptr [ebp-4]
 00498178    call        00493B3C
 0049817D    test        al,al
>0049817F    je          004981A3
 00498181    mov         eax,dword ptr [ebp-4]
 00498184    mov         eax,dword ptr [eax+10];TMenuActionLink.FAction:TBasicAction
 00498187    mov         edx,dword ptr ds:[492C28];TCustomAction
 0049818D    call        @AsClass
 00498192    mov         al,byte ptr [eax+86];TCustomAction.FVisible:Boolean
 00498198    mov         edx,dword ptr [ebp-4]
 0049819B    mov         edx,dword ptr [edx+18];TMenuActionLink....................................FClient:TMenuI...
 0049819E    cmp         al,byte ptr [edx+3E];TMenuItem.Visible:Boolean
>004981A1    je          004981A7
 004981A3    xor         eax,eax
>004981A5    jmp         004981A9
 004981A7    mov         al,1
 004981A9    mov         byte ptr [ebp-5],al
 004981AC    mov         al,byte ptr [ebp-5]
 004981AF    pop         ecx
 004981B0    pop         ecx
 004981B1    pop         ebp
 004981B2    ret
end;*}

//004981B4
{*function sub_004981B4:?;
begin
 004981B4    push        ebp
 004981B5    mov         ebp,esp
 004981B7    add         esp,0FFFFFFF8
 004981BA    mov         dword ptr [ebp-4],eax
 004981BD    mov         eax,dword ptr [ebp-4]
 004981C0    call        0042AFA0
 004981C5    test        al,al
>004981C7    je          004981E0
 004981C9    mov         eax,dword ptr [ebp-4]
 004981CC    mov         eax,dword ptr [eax+18];TMenuActionLink.....................................FClient:TMenu...
 004981CF    mov         eax,dword ptr [eax+88];TMenuItem.OnClick:TNotifyEvent
 004981D5    mov         edx,dword ptr [ebp-4]
 004981D8    mov         edx,dword ptr [edx+10];TMenuActionLink.FAction:TBasicAction
 004981DB    cmp         eax,dword ptr [edx+40];TBasicAction.FOnExecute:TNotifyEvent
>004981DE    je          004981E4
 004981E0    xor         eax,eax
>004981E2    jmp         004981E6
 004981E4    mov         al,1
 004981E6    mov         byte ptr [ebp-5],al
 004981E9    mov         al,byte ptr [ebp-5]
 004981EC    pop         ecx
 004981ED    pop         ecx
 004981EE    pop         ebp
 004981EF    ret
end;*}

//004981F0
{*procedure sub_004981F0(?:?);
begin
 004981F0    push        ebp
 004981F1    mov         ebp,esp
 004981F3    add         esp,0FFFFFFF8
 004981F6    mov         byte ptr [ebp-5],dl
 004981F9    mov         dword ptr [ebp-4],eax
 004981FC    mov         eax,dword ptr [ebp-4]
 004981FF    mov         edx,dword ptr [eax]
 00498201    call        dword ptr [edx+78];TMenuActionLink.sub_00497EE8
 00498204    test        al,al
>00498206    je          00498217
 00498208    mov         eax,dword ptr [ebp-4]
 0049820B    mov         eax,dword ptr [eax+18];TMenuActionLink......................................FClient:TMen...
 0049820E    mov         dl,byte ptr [ebp-5]
 00498211    mov         byte ptr [eax+0A8],dl;TMenuItem.AutoCheck:Boolean
 00498217    pop         ecx
 00498218    pop         ecx
 00498219    pop         ebp
 0049821A    ret
end;*}

//0049821C
{*procedure sub_0049821C(?:?);
begin
 0049821C    push        ebp
 0049821D    mov         ebp,esp
 0049821F    add         esp,0FFFFFFF8
 00498222    mov         dword ptr [ebp-8],edx
 00498225    mov         dword ptr [ebp-4],eax
 00498228    mov         eax,dword ptr [ebp-4]
 0049822B    mov         edx,dword ptr [eax]
 0049822D    call        dword ptr [edx+20];TMenuActionLink.sub_00497F20
 00498230    test        al,al
>00498232    je          00498242
 00498234    mov         edx,dword ptr [ebp-8]
 00498237    mov         eax,dword ptr [ebp-4]
 0049823A    mov         eax,dword ptr [eax+18];TMenuActionLink.......................................FClient:TMe...
 0049823D    call        TMenuItem.SetCaption
 00498242    pop         ecx
 00498243    pop         ecx
 00498244    pop         ebp
 00498245    ret
end;*}

//00498248
{*procedure sub_00498248(?:?);
begin
 00498248    push        ebp
 00498249    mov         ebp,esp
 0049824B    add         esp,0FFFFFFF8
 0049824E    mov         byte ptr [ebp-5],dl
 00498251    mov         dword ptr [ebp-4],eax
 00498254    mov         eax,dword ptr [ebp-4]
 00498257    mov         edx,dword ptr [eax]
 00498259    call        dword ptr [edx+24];TMenuActionLink.sub_00497F6C
 0049825C    test        al,al
>0049825E    je          0049826E
 00498260    mov         dl,byte ptr [ebp-5]
 00498263    mov         eax,dword ptr [ebp-4]
 00498266    mov         eax,dword ptr [eax+18];TMenuActionLink........................................FClient:TM...
 00498269    call        TMenuItem.SetChecked
 0049826E    pop         ecx
 0049826F    pop         ecx
 00498270    pop         ebp
 00498271    ret
end;*}

//00498274
{*procedure sub_00498274(?:?);
begin
 00498274    push        ebp
 00498275    mov         ebp,esp
 00498277    add         esp,0FFFFFFF8
 0049827A    mov         byte ptr [ebp-5],dl
 0049827D    mov         dword ptr [ebp-4],eax
 00498280    mov         eax,dword ptr [ebp-4]
 00498283    mov         edx,dword ptr [eax]
 00498285    call        dword ptr [edx+28];TMenuActionLink.sub_00497FB0
 00498288    test        al,al
>0049828A    je          0049829A
 0049828C    mov         dl,byte ptr [ebp-5]
 0049828F    mov         eax,dword ptr [ebp-4]
 00498292    mov         eax,dword ptr [eax+18];TMenuActionLink.........................................FClient:T...
 00498295    call        TMenuItem.SetEnabled
 0049829A    pop         ecx
 0049829B    pop         ecx
 0049829C    pop         ebp
 0049829D    ret
end;*}

//004982A0
{*procedure sub_004982A0(?:?);
begin
 004982A0    push        ebp
 004982A1    mov         ebp,esp
 004982A3    add         esp,0FFFFFFF8
 004982A6    mov         dword ptr [ebp-8],edx
 004982A9    mov         dword ptr [ebp-4],eax
 004982AC    mov         eax,dword ptr [ebp-4]
 004982AF    mov         edx,dword ptr [eax]
 004982B1    call        dword ptr [edx+30];TMenuActionLink.sub_00497FF4
 004982B4    test        al,al
>004982B6    je          004982C4
 004982B8    mov         eax,dword ptr [ebp-4]
 004982BB    mov         eax,dword ptr [eax+18];TMenuActionLink..........................................FClient:...
 004982BE    mov         edx,dword ptr [ebp-8]
 004982C1    mov         dword ptr [eax+54],edx;TMenuItem.HelpContext:THelpContext
 004982C4    pop         ecx
 004982C5    pop         ecx
 004982C6    pop         ebp
 004982C7    ret
end;*}

//004982C8
{*procedure sub_004982C8(?:?);
begin
 004982C8    push        ebp
 004982C9    mov         ebp,esp
 004982CB    add         esp,0FFFFFFF8
 004982CE    mov         dword ptr [ebp-8],edx
 004982D1    mov         dword ptr [ebp-4],eax
 004982D4    mov         eax,dword ptr [ebp-4]
 004982D7    mov         edx,dword ptr [eax]
 004982D9    call        dword ptr [edx+38];TMenuActionLink.sub_00498038
 004982DC    test        al,al
>004982DE    je          004982F1
 004982E0    mov         eax,dword ptr [ebp-4]
 004982E3    mov         eax,dword ptr [eax+18];TMenuActionLink...........................................FClient...
 004982E6    add         eax,58;TMenuItem.Hint:String
 004982E9    mov         edx,dword ptr [ebp-8]
 004982EC    call        @LStrAsg
 004982F1    pop         ecx
 004982F2    pop         ecx
 004982F3    pop         ebp
 004982F4    ret
end;*}

//004982F8
{*procedure sub_004982F8(?:?);
begin
 004982F8    push        ebp
 004982F9    mov         ebp,esp
 004982FB    add         esp,0FFFFFFF8
 004982FE    mov         dword ptr [ebp-8],edx
 00498301    mov         dword ptr [ebp-4],eax
 00498304    mov         eax,dword ptr [ebp-4]
 00498307    mov         edx,dword ptr [eax]
 00498309    call        dword ptr [edx+3C];TMenuActionLink.sub_004980D8
 0049830C    test        al,al
>0049830E    je          0049831E
 00498310    mov         edx,dword ptr [ebp-8]
 00498313    mov         eax,dword ptr [ebp-4]
 00498316    mov         eax,dword ptr [eax+18];TMenuActionLink............................................FClien...
 00498319    call        TMenuItem.SetImageIndex
 0049831E    pop         ecx
 0049831F    pop         ecx
 00498320    pop         ebp
 00498321    ret
end;*}

//00498324
{*procedure sub_00498324(?:?);
begin
 00498324    push        ebp
 00498325    mov         ebp,esp
 00498327    add         esp,0FFFFFFF8
 0049832A    mov         word ptr [ebp-6],dx
 0049832E    mov         dword ptr [ebp-4],eax
 00498331    mov         eax,dword ptr [ebp-4]
 00498334    mov         edx,dword ptr [eax]
 00498336    call        dword ptr [edx+40];TMenuActionLink.sub_00498120
 00498339    test        al,al
>0049833B    je          0049834C
 0049833D    mov         dx,word ptr [ebp-6]
 00498341    mov         eax,dword ptr [ebp-4]
 00498344    mov         eax,dword ptr [eax+18];TMenuActionLink.............................................FClie...
 00498347    call        TMenuItem.SetShortCut
 0049834C    pop         ecx
 0049834D    pop         ecx
 0049834E    pop         ebp
 0049834F    ret
end;*}

//00498350
{*procedure sub_00498350(?:?);
begin
 00498350    push        ebp
 00498351    mov         ebp,esp
 00498353    add         esp,0FFFFFFF8
 00498356    mov         byte ptr [ebp-5],dl
 00498359    mov         dword ptr [ebp-4],eax
 0049835C    mov         eax,dword ptr [ebp-4]
 0049835F    mov         edx,dword ptr [eax]
 00498361    call        dword ptr [edx+44];TMenuActionLink.sub_0049816C
 00498364    test        al,al
>00498366    je          00498376
 00498368    mov         dl,byte ptr [ebp-5]
 0049836B    mov         eax,dword ptr [ebp-4]
 0049836E    mov         eax,dword ptr [eax+18];TMenuActionLink..............................................FCli...
 00498371    call        TMenuItem.SetVisible
 00498376    pop         ecx
 00498377    pop         ecx
 00498378    pop         ebp
 00498379    ret
end;*}

//0049837C
{*procedure sub_0049837C(?:?; ?:?);
begin
 0049837C    push        ebp
 0049837D    mov         ebp,esp
 0049837F    push        ecx
 00498380    mov         dword ptr [ebp-4],eax
 00498383    mov         eax,dword ptr [ebp-4]
 00498386    mov         edx,dword ptr [eax]
 00498388    call        dword ptr [edx+8];TMenuActionLink.sub_004981B4
 0049838B    test        al,al
>0049838D    je          004983A7
 0049838F    mov         eax,dword ptr [ebp-4]
 00498392    mov         eax,dword ptr [eax+18];TMenuActionLink...............................................FCl...
 00498395    mov         edx,dword ptr [ebp+8]
 00498398    mov         dword ptr [eax+88],edx;TMenuItem.OnClick:TNotifyEvent
 0049839E    mov         edx,dword ptr [ebp+0C]
 004983A1    mov         dword ptr [eax+8C],edx;TMenuItem.?f8C:TPopupMenu
 004983A7    pop         ecx
 004983A8    pop         ebp
 004983A9    ret         8
end;*}

//004983AC
constructor TMenuItem.Create;
begin
{*
 004983AC    push        ebp
 004983AD    mov         ebp,esp
 004983AF    add         esp,0FFFFFFF4
 004983B2    test        dl,dl
>004983B4    je          004983BE
 004983B6    add         esp,0FFFFFFF0
 004983B9    call        @ClassCreate
 004983BE    mov         dword ptr [ebp-0C],ecx
 004983C1    mov         byte ptr [ebp-5],dl
 004983C4    mov         dword ptr [ebp-4],eax
 004983C7    mov         ecx,dword ptr [ebp-0C]
 004983CA    xor         edx,edx
 004983CC    mov         eax,dword ptr [ebp-4]
 004983CF    call        0042A1B0
 004983D4    mov         eax,dword ptr [ebp-4]
 004983D7    mov         byte ptr [eax+3E],1;TMenuItem.Visible:Boolean
 004983DB    mov         eax,dword ptr [ebp-4]
 004983DE    mov         byte ptr [eax+39],1;TMenuItem.Enabled:Boolean
 004983E2    mov         eax,dword ptr [ebp-4]
 004983E5    mov         byte ptr [eax+3B],2;TMenuItem.AutoHotkeys:TMenuItemAutoFlag
 004983E9    mov         eax,dword ptr [ebp-4]
 004983EC    mov         byte ptr [eax+3C],2;TMenuItem.AutoLineReduction:TMenuItemAutoFlag
 004983F0    call        00497D0C
 004983F5    mov         edx,dword ptr [ebp-4]
 004983F8    mov         word ptr [edx+50],ax;TMenuItem.FCommand:word
 004983FC    mov         eax,dword ptr [ebp-4]
 004983FF    mov         dword ptr [eax+40],0FFFFFFFF;TMenuItem.ImageIndex:TImageIndex
 00498406    mov         dl,1
 00498408    mov         eax,[00494854];TChangeLink
 0049840D    call        TObject.Create;TChangeLink.Create
 00498412    mov         edx,dword ptr [ebp-4]
 00498415    mov         dword ptr [edx+78],eax;TMenuItem.FImageChangeLink:TChangeLink
 00498418    mov         eax,dword ptr [ebp-4]
 0049841B    mov         eax,dword ptr [eax+78];TMenuItem.FImageChangeLink:TChangeLink
 0049841E    mov         edx,dword ptr [ebp-4]
 00498421    mov         dword ptr [eax+0C],edx;TChangeLink.?fC:TCustomListView
 00498424    mov         dword ptr [eax+8],49B630;TChangeLink.FOnChange:TNotifyEvent sub_0049B630
 0049842B    mov         eax,dword ptr [ebp-4]
 0049842E    cmp         byte ptr [ebp-5],0
>00498432    je          00498443
 00498434    call        @AfterConstruction
 00498439    pop         dword ptr fs:[0]
 00498440    add         esp,0C
 00498443    mov         eax,dword ptr [ebp-4]
 00498446    mov         esp,ebp
 00498448    pop         ebp
 00498449    ret
*}
end;

//0049844C
destructor TMenuItem.Destroy;
begin
{*
 0049844C    push        ebp
 0049844D    mov         ebp,esp
 0049844F    add         esp,0FFFFFFF8
 00498452    call        @BeforeDestruction
 00498457    mov         byte ptr [ebp-5],dl
 0049845A    mov         dword ptr [ebp-4],eax
 0049845D    mov         edx,dword ptr [ebp-4]
 00498460    mov         eax,[00571E30];0x0 ShortCutItems:TMenuItemStack
 00498465    call        0049DE88
 0049846A    mov         eax,dword ptr [ebp-4]
 0049846D    cmp         dword ptr [eax+64],0
>00498471    je          0049849A
 00498473    mov         eax,dword ptr [ebp-4]
 00498476    mov         eax,dword ptr [eax+64]
 00498479    mov         edx,dword ptr [ebp-4]
 0049847C    call        0049AD94
 00498481    mov         eax,dword ptr [ebp-4]
 00498484    xor         edx,edx
 00498486    mov         dword ptr [eax+64],edx
>00498489    jmp         0049849A
 0049848B    xor         edx,edx
 0049848D    mov         eax,dword ptr [ebp-4]
 00498490    call        0049A840
 00498495    call        TObject.Free
 0049849A    mov         eax,dword ptr [ebp-4]
 0049849D    call        0049A814
 004984A2    test        eax,eax
>004984A4    jg          0049848B
 004984A6    mov         eax,dword ptr [ebp-4]
 004984A9    cmp         dword ptr [eax+34],0
>004984AD    je          004984C5
 004984AF    xor         edx,edx
 004984B1    mov         eax,dword ptr [ebp-4]
 004984B4    call        00498918
 004984B9    mov         eax,dword ptr [ebp-4]
 004984BC    mov         eax,dword ptr [eax+34]
 004984BF    push        eax
 004984C0    call        user32.DestroyMenu
 004984C5    mov         eax,dword ptr [ebp-4]
 004984C8    mov         eax,dword ptr [eax+5C]
 004984CB    call        TObject.Free
 004984D0    mov         eax,dword ptr [ebp-4]
 004984D3    add         eax,44
 004984D6    call        FreeAndNil
 004984DB    mov         eax,dword ptr [ebp-4]
 004984DE    add         eax,78
 004984E1    call        FreeAndNil
 004984E6    mov         eax,dword ptr [ebp-4]
 004984E9    cmp         word ptr [eax+50],0
>004984EE    je          00498503
 004984F0    mov         eax,dword ptr [ebp-4]
 004984F3    movzx       edx,word ptr [eax+50]
 004984F7    xor         ecx,ecx
 004984F9    mov         eax,[00571E38];0x0 CommandPool:TBits
 004984FE    call        TBits.SetBit
 00498503    mov         eax,dword ptr [ebp-4]
 00498506    cmp         dword ptr [eax+4C],0
>0049850A    je          00498517
 0049850C    mov         eax,dword ptr [ebp-4]
 0049850F    mov         eax,dword ptr [eax+4C]
 00498512    call        TObject.Free
 00498517    mov         dl,byte ptr [ebp-5]
 0049851A    and         dl,0FC
 0049851D    mov         eax,dword ptr [ebp-4]
 00498520    call        TComponent.Destroy
 00498525    cmp         byte ptr [ebp-5],0
>00498529    jle         00498533
 0049852B    mov         eax,dword ptr [ebp-4]
 0049852E    call        @ClassDestroy
 00498533    pop         ecx
 00498534    pop         ecx
 00498535    pop         ebp
 00498536    ret
*}
end;

//00498538
{*procedure sub_00498538(?:?; ?:?; ?:?);
begin
 00498538    push        ebp
 00498539    mov         ebp,esp
 0049853B    add         esp,0FFFFFFB0
 0049853E    push        ebx
 0049853F    xor         ebx,ebx
 00498541    mov         dword ptr [ebp-50],ebx
 00498544    mov         dword ptr [ebp-10],ebx
 00498547    mov         byte ptr [ebp-9],cl
 0049854A    mov         dword ptr [ebp-8],edx
 0049854D    mov         dword ptr [ebp-4],eax
 00498550    xor         eax,eax
 00498552    push        ebp
 00498553    push        4987F1
 00498558    push        dword ptr fs:[eax]
 0049855B    mov         dword ptr fs:[eax],esp
 0049855E    mov         eax,dword ptr [ebp-4]
 00498561    cmp         byte ptr [eax+3E],0
>00498565    je          004987D3
 0049856B    lea         eax,[ebp-10]
 0049856E    mov         edx,dword ptr [ebp-4]
 00498571    mov         edx,dword ptr [edx+30]
 00498574    call        @LStrLAsg
 00498579    mov         eax,dword ptr [ebp-4]
 0049857C    call        0049A814
 00498581    test        eax,eax
>00498583    jle         00498592
 00498585    mov         eax,dword ptr [ebp-4]
 00498588    call        00498B60
 0049858D    mov         dword ptr [ebp-38],eax
>00498590    jmp         004985F0
 00498592    mov         eax,dword ptr [ebp-4]
 00498595    cmp         word ptr [eax+60],0
>0049859A    je          004985F0
 0049859C    mov         eax,dword ptr [ebp-4]
 0049859F    cmp         dword ptr [eax+64],0
>004985A3    je          004985C9
 004985A5    mov         eax,dword ptr [ebp-4]
 004985A8    mov         eax,dword ptr [eax+64]
 004985AB    cmp         dword ptr [eax+64],0
>004985AF    jne         004985C9
 004985B1    mov         eax,dword ptr [ebp-4]
 004985B4    mov         eax,dword ptr [eax+64]
 004985B7    mov         eax,dword ptr [eax+4]
 004985BA    mov         edx,dword ptr ds:[4971A8];TMainMenu
 004985C0    call        @IsClass
 004985C5    test        al,al
>004985C7    jne         004985F0
 004985C9    push        dword ptr [ebp-10]
 004985CC    push        498808;#9
 004985D1    lea         edx,[ebp-50]
 004985D4    mov         eax,dword ptr [ebp-4]
 004985D7    mov         ax,word ptr [eax+60]
 004985DB    call        0049795C
 004985E0    push        dword ptr [ebp-50]
 004985E3    lea         eax,[ebp-10]
 004985E6    mov         edx,3
 004985EB    call        @LStrCatN
 004985F0    call        kernel32.GetVersion
 004985F5    and         eax,0FF
 004985FA    cmp         ax,4
>004985FE    jb          0049872D
 00498604    mov         dword ptr [ebp-4C],2C
 0049860B    mov         dword ptr [ebp-48],3F
 00498612    mov         eax,dword ptr [ebp-4]
 00498615    call        TMenuItem.GetParentMenu
 0049861A    mov         dword ptr [ebp-1C],eax
 0049861D    cmp         dword ptr [ebp-1C],0
>00498621    je          00498638
 00498623    mov         eax,dword ptr [ebp-1C]
 00498626    cmp         byte ptr [eax+40],0;TMenu.FOwnerDraw:Boolean
>0049862A    jne         00498654
 0049862C    mov         eax,dword ptr [ebp-4]
 0049862F    call        TMenuItem.GetImageList
 00498634    test        eax,eax
>00498636    jne         00498654
 00498638    mov         eax,dword ptr [ebp-4]
 0049863B    cmp         dword ptr [eax+4C],0
>0049863F    je          00498650
 00498641    mov         eax,dword ptr [ebp-4]
 00498644    mov         eax,dword ptr [eax+4C]
 00498647    mov         edx,dword ptr [eax]
 00498649    call        dword ptr [edx+1C]
 0049864C    test        al,al
>0049864E    je          00498654
 00498650    xor         eax,eax
>00498652    jmp         00498656
 00498654    mov         al,1
 00498656    mov         byte ptr [ebp-15],al
 00498659    mov         eax,dword ptr [ebp-4]
 0049865C    mov         eax,dword ptr [eax+30]
 0049865F    mov         edx,498814;'-'
 00498664    call        @LStrCmp
 00498669    sete        al
 0049866C    and         eax,7F
 0049866F    mov         eax,dword ptr [eax*4+56C978]
 00498676    mov         edx,dword ptr [ebp-4]
 00498679    movzx       edx,byte ptr [edx+3D]
 0049867D    mov         edx,dword ptr [edx*4+56C970]
 00498684    mov         ecx,dword ptr [ebp-4]
 00498687    movzx       ecx,byte ptr [ecx+48]
 0049868B    or          edx,dword ptr [ecx*4+56C94C]
 00498692    or          eax,edx
 00498694    xor         edx,edx
 00498696    mov         dl,byte ptr [ebp-9]
 00498699    or          eax,dword ptr [edx*4+56C980]
 004986A0    xor         edx,edx
 004986A2    mov         dl,byte ptr [ebp-15]
 004986A5    or          eax,dword ptr [edx*4+56C988]
 004986AC    mov         dword ptr [ebp-44],eax
 004986AF    mov         eax,dword ptr [ebp-4]
 004986B2    movzx       eax,byte ptr [eax+38]
 004986B6    mov         eax,dword ptr [eax*4+56C958]
 004986BD    mov         edx,dword ptr [ebp-4]
 004986C0    movzx       edx,byte ptr [edx+39]
 004986C4    or          eax,dword ptr [edx*4+56C968]
 004986CB    mov         edx,dword ptr [ebp-4]
 004986CE    movzx       edx,byte ptr [edx+3A]
 004986D2    or          eax,dword ptr [edx*4+56C960]
 004986D9    mov         dword ptr [ebp-40],eax
 004986DC    mov         eax,dword ptr [ebp-4]
 004986DF    movzx       eax,word ptr [eax+50]
 004986E3    mov         dword ptr [ebp-3C],eax
 004986E6    xor         eax,eax
 004986E8    mov         dword ptr [ebp-38],eax
 004986EB    xor         eax,eax
 004986ED    mov         dword ptr [ebp-34],eax
 004986F0    xor         eax,eax
 004986F2    mov         dword ptr [ebp-30],eax
 004986F5    mov         eax,dword ptr [ebp-10]
 004986F8    call        @LStrToPChar
 004986FD    mov         dword ptr [ebp-28],eax
 00498700    mov         eax,dword ptr [ebp-4]
 00498703    call        0049A814
 00498708    test        eax,eax
>0049870A    jle         00498717
 0049870C    mov         eax,dword ptr [ebp-4]
 0049870F    call        00498B60
 00498714    mov         dword ptr [ebp-38],eax
 00498717    lea         eax,[ebp-4C]
 0049871A    push        eax
 0049871B    push        0FF
 0049871D    push        0FF
 0049871F    mov         eax,dword ptr [ebp-8]
 00498722    push        eax
 00498723    call        user32.InsertMenuItemA
>00498728    jmp         004987D3
 0049872D    mov         eax,dword ptr [ebp-4]
 00498730    mov         eax,dword ptr [eax+30]
 00498733    mov         edx,498814;'-'
 00498738    call        @LStrCmp
 0049873D    sete        al
 00498740    and         eax,7F
 00498743    mov         eax,dword ptr [eax*4+56C944]
 0049874A    mov         edx,dword ptr [ebp-4]
 0049874D    movzx       edx,byte ptr [edx+48]
 00498751    mov         edx,dword ptr [edx*4+56C938]
 00498758    mov         ecx,dword ptr [ebp-4]
 0049875B    movzx       ecx,byte ptr [ecx+38]
 0049875F    or          edx,dword ptr [ecx*4+56C928]
 00498766    mov         ecx,dword ptr [ebp-4]
 00498769    movzx       ecx,byte ptr [ecx+39]
 0049876D    or          edx,dword ptr [ecx*4+56C930]
 00498774    or          eax,edx
 00498776    or          eax,400
 0049877B    mov         dword ptr [ebp-14],eax
 0049877E    mov         eax,dword ptr [ebp-4]
 00498781    call        0049A814
 00498786    test        eax,eax
>00498788    jle         004987B3
 0049878A    mov         eax,dword ptr [ebp-4]
 0049878D    mov         eax,dword ptr [eax+30]
 00498790    call        @LStrToPChar
 00498795    push        eax
 00498796    mov         eax,dword ptr [ebp-4]
 00498799    call        00498B60
 0049879E    push        eax
 0049879F    mov         eax,dword ptr [ebp-14]
 004987A2    or          eax,10
 004987A5    push        eax
 004987A6    push        0FF
 004987A8    mov         eax,dword ptr [ebp-8]
 004987AB    push        eax
 004987AC    call        user32.InsertMenuA
>004987B1    jmp         004987D3
 004987B3    mov         eax,dword ptr [ebp-10]
 004987B6    call        @LStrToPChar
 004987BB    push        eax
 004987BC    mov         eax,dword ptr [ebp-4]
 004987BF    movzx       eax,word ptr [eax+50]
 004987C3    push        eax
 004987C4    mov         eax,dword ptr [ebp-14]
 004987C7    push        eax
 004987C8    push        0FF
 004987CA    mov         eax,dword ptr [ebp-8]
 004987CD    push        eax
 004987CE    call        user32.InsertMenuA
 004987D3    xor         eax,eax
 004987D5    pop         edx
 004987D6    pop         ecx
 004987D7    pop         ecx
 004987D8    mov         dword ptr fs:[eax],edx
 004987DB    push        4987F8
 004987E0    lea         eax,[ebp-50]
 004987E3    call        @LStrClr
 004987E8    lea         eax,[ebp-10]
 004987EB    call        @LStrClr
 004987F0    ret
>004987F1    jmp         @HandleFinally
>004987F6    jmp         004987E0
 004987F8    pop         ebx
 004987F9    mov         esp,ebp
 004987FB    pop         ebp
 004987FC    ret
end;*}

//00498818
{*function sub_00498818(?:?; ?:?):?;
begin
 00498818    push        ebp
 00498819    mov         ebp,esp
 0049881B    add         esp,0FFFFFFF8
 0049881E    mov         dword ptr [ebp-4],eax
 00498821    mov         eax,dword ptr [ebp+8]
 00498824    mov         cl,byte ptr [eax-5]
 00498827    mov         eax,dword ptr [ebp+8]
 0049882A    mov         eax,dword ptr [eax-4]
 0049882D    mov         edx,dword ptr [eax+34]
 00498830    mov         eax,dword ptr [ebp-4]
 00498833    call        00498538
 00498838    mov         byte ptr [ebp-5],0
 0049883C    mov         al,byte ptr [ebp-5]
 0049883F    pop         ecx
 00498840    pop         ecx
 00498841    pop         ebp
 00498842    ret
end;*}

//00498844
procedure sub_00498844(?:TMenuItem);
begin
{*
 00498844    push        ebp
 00498845    mov         ebp,esp
 00498847    add         esp,0FFFFFFF8
 0049884A    mov         dword ptr [ebp-4],eax
 0049884D    mov         eax,dword ptr [ebp-4]
 00498850    cmp         dword ptr [eax+70],0
>00498854    je          0049887F
 00498856    mov         eax,dword ptr [ebp-4]
 00498859    mov         eax,dword ptr [eax+70]
 0049885C    mov         edx,dword ptr ds:[4971A8];TMainMenu
 00498862    call        @IsClass
 00498867    test        al,al
>00498869    je          0049887F
 0049886B    xor         edx,edx
 0049886D    mov         eax,dword ptr [ebp-4]
 00498870    call        0049B908
 00498875    xor         edx,edx
 00498877    mov         eax,dword ptr [ebp-4]
 0049887A    call        0049BE84
 0049887F    mov         eax,dword ptr [ebp-4]
 00498882    cmp         dword ptr [eax+70],0
>00498886    je          00498897
 00498888    mov         eax,dword ptr [ebp-4]
 0049888B    mov         eax,dword ptr [eax+70]
 0049888E    call        TMenu.IsRightToLeft
 00498893    test        al,al
>00498895    jne         0049889B
 00498897    xor         eax,eax
>00498899    jmp         0049889D
 0049889B    mov         al,1
 0049889D    mov         byte ptr [ebp-5],al
 004988A0    mov         eax,dword ptr [ebp-4]
 004988A3    mov         edx,dword ptr [eax+68]
 004988A6    mov         eax,498818;sub_00498818
 004988AB    mov         ecx,dword ptr [ebp-4]
 004988AE    call        00497DA4
 004988B3    pop         ecx
 004988B4    pop         ecx
 004988B5    pop         ebp
 004988B6    ret
*}
end;

//00498918
{*procedure sub_00498918(?:TMenuItem; ?:?);
begin
 00498918    push        ebp
 00498919    mov         ebp,esp
 0049891B    add         esp,0FFFFFFF8
 0049891E    mov         dword ptr [ebp-8],edx
 00498921    mov         dword ptr [ebp-4],eax
 00498924    cmp         dword ptr [ebp-8],0
>00498928    je          00498933
 0049892A    mov         eax,dword ptr [ebp-8]
 0049892D    test        byte ptr [eax+1C],8
>00498931    jne         00498986
 00498933    mov         eax,dword ptr [ebp-4]
 00498936    mov         eax,dword ptr [eax+68]
 00498939    cmp         eax,dword ptr [ebp-8]
>0049893C    je          00498986
 0049893E    mov         eax,dword ptr [ebp-4]
 00498941    cmp         dword ptr [eax+68],0
>00498945    je          00498952
 00498947    mov         eax,dword ptr [ebp-4]
 0049894A    mov         eax,dword ptr [eax+68]
 0049894D    xor         edx,edx
 0049894F    mov         dword ptr [eax+6C],edx
 00498952    mov         eax,dword ptr [ebp-8]
 00498955    mov         edx,dword ptr [ebp-4]
 00498958    mov         dword ptr [edx+68],eax
 0049895B    mov         eax,dword ptr [ebp-4]
 0049895E    cmp         dword ptr [eax+68],0
>00498962    je          0049897E
 00498964    mov         eax,dword ptr [ebp-4]
 00498967    mov         eax,dword ptr [eax+68]
 0049896A    mov         edx,dword ptr [ebp-4]
 0049896D    mov         dword ptr [eax+6C],edx
 00498970    mov         edx,dword ptr [ebp-4]
 00498973    mov         eax,dword ptr [ebp-4]
 00498976    mov         eax,dword ptr [eax+68]
 00498979    call        0042A2CC
 0049897E    mov         eax,dword ptr [ebp-4]
 00498981    call        004989D8
 00498986    pop         ecx
 00498987    pop         ecx
 00498988    pop         ebp
 00498989    ret
end;*}

//0049898C
procedure sub_0049898C;
begin
{*
 0049898C    push        ebp
 0049898D    mov         ebp,esp
 0049898F    push        ecx
 00498990    push        esi
 00498991    mov         dword ptr [ebp-4],eax
 00498994    mov         eax,dword ptr [ebp-4]
 00498997    call        0042A86C
 0049899C    mov         eax,dword ptr [ebp-4]
 0049899F    call        TMenuItem.GetAction
 004989A4    test        eax,eax
>004989A6    je          004989C0
 004989A8    mov         eax,dword ptr [ebp-4]
 004989AB    call        TMenuItem.GetAction
 004989B0    mov         edx,eax
 004989B2    mov         cl,1
 004989B4    mov         eax,dword ptr [ebp-4]
 004989B7    mov         si,0FFEF
 004989BB    call        @CallDynaInst;TMenuItem.sub_0049B12C
 004989C0    mov         eax,dword ptr [ebp-4]
 004989C3    cmp         byte ptr [eax+74],0;TMenuItem.FStreamedRebuild:Boolean
>004989C7    je          004989D1
 004989C9    mov         eax,dword ptr [ebp-4]
 004989CC    call        004989D8
 004989D1    pop         esi
 004989D2    pop         ecx
 004989D3    pop         ebp
 004989D4    ret
*}
end;

//004989D8
procedure sub_004989D8(?:TMenuItem);
begin
{*
 004989D8    push        ebp
 004989D9    mov         ebp,esp
 004989DB    add         esp,0FFFFFFF4
 004989DE    mov         dword ptr [ebp-4],eax
 004989E1    mov         eax,dword ptr [ebp-4]
 004989E4    test        byte ptr [eax+1C],8;TMenuItem.FComponentState:TComponentState
>004989E8    jne         00498ADA
 004989EE    mov         eax,dword ptr [ebp-4]
 004989F1    test        byte ptr [eax+1C],2;TMenuItem.FComponentState:TComponentState
>004989F5    je          00498A03
 004989F7    mov         eax,dword ptr [ebp-4]
 004989FA    mov         byte ptr [eax+74],1;TMenuItem.FStreamedRebuild:Boolean
>004989FE    jmp         00498ADA
 00498A03    mov         eax,dword ptr [ebp-4]
 00498A06    cmp         dword ptr [eax+6C],0;TMenuItem.FMergedWith:TMenuItem
>00498A0A    je          00498A1C
 00498A0C    mov         eax,dword ptr [ebp-4]
 00498A0F    mov         eax,dword ptr [eax+6C];TMenuItem.FMergedWith:TMenuItem
 00498A12    call        004989D8
>00498A17    jmp         00498ADA
 00498A1C    mov         eax,dword ptr [ebp-4]
 00498A1F    call        00498B60
 00498A24    push        eax
 00498A25    call        user32.GetMenuItemCount
 00498A2A    mov         dword ptr [ebp-8],eax
 00498A2D    cmp         dword ptr [ebp-8],0
 00498A31    sete        byte ptr [ebp-9]
 00498A35    cmp         dword ptr [ebp-8],0
>00498A39    jle         00498A7C
 00498A3B    push        400
 00498A40    mov         eax,dword ptr [ebp-8]
 00498A43    dec         eax
 00498A44    push        eax
 00498A45    mov         eax,dword ptr [ebp-4]
 00498A48    call        00498B60
 00498A4D    push        eax
 00498A4E    call        user32.GetMenuState
 00498A53    test        al,4
>00498A55    jne         00498A73
 00498A57    push        400
 00498A5C    mov         eax,dword ptr [ebp-8]
 00498A5F    dec         eax
 00498A60    push        eax
 00498A61    mov         eax,dword ptr [ebp-4]
 00498A64    call        00498B60
 00498A69    push        eax
 00498A6A    call        user32.RemoveMenu
 00498A6F    mov         byte ptr [ebp-9],1
 00498A73    dec         dword ptr [ebp-8]
 00498A76    cmp         dword ptr [ebp-8],0
>00498A7A    jg          00498A3B
 00498A7C    cmp         byte ptr [ebp-9],0
>00498A80    je          00498ADA
 00498A82    mov         eax,dword ptr [ebp-4]
 00498A85    cmp         dword ptr [eax+64],0;TMenuItem.FParent:TMenuItem
>00498A89    jne         00498AC8
 00498A8B    mov         eax,dword ptr [ebp-4]
 00498A8E    mov         eax,dword ptr [eax+70];TMenuItem.FMenu:TMenu
 00498A91    mov         edx,dword ptr ds:[4971A8];TMainMenu
 00498A97    call        @IsClass
 00498A9C    test        al,al
>00498A9E    je          00498AC8
 00498AA0    mov         eax,dword ptr [ebp-4]
 00498AA3    call        00498B60
 00498AA8    push        eax
 00498AA9    call        user32.GetMenuItemCount
 00498AAE    test        eax,eax
>00498AB0    jne         00498AC8
 00498AB2    mov         eax,dword ptr [ebp-4]
 00498AB5    mov         eax,dword ptr [eax+34];TMenuItem.FHandle:HMENU
 00498AB8    push        eax
 00498AB9    call        user32.DestroyMenu
 00498ABE    mov         eax,dword ptr [ebp-4]
 00498AC1    xor         edx,edx
 00498AC3    mov         dword ptr [eax+34],edx;TMenuItem.FHandle:HMENU
>00498AC6    jmp         00498AD0
 00498AC8    mov         eax,dword ptr [ebp-4]
 00498ACB    call        00498844
 00498AD0    xor         edx,edx
 00498AD2    mov         eax,dword ptr [ebp-4]
 00498AD5    mov         ecx,dword ptr [eax]
 00498AD7    call        dword ptr [ecx+3C];TMenuItem.sub_0049ADD0
 00498ADA    mov         esp,ebp
 00498ADC    pop         ebp
 00498ADD    ret
*}
end;

//00498AE0
{*procedure sub_00498AE0(?:TMenuItem; ?:?; ?:?);
begin
 00498AE0    push        ebp
 00498AE1    mov         ebp,esp
 00498AE3    add         esp,0FFFFFFEC
 00498AE6    mov         byte ptr [ebp-9],cl
 00498AE9    mov         dword ptr [ebp-8],edx
 00498AEC    mov         dword ptr [ebp-4],eax
 00498AEF    mov         eax,dword ptr [ebp-4]
 00498AF2    call        0049A814
 00498AF7    dec         eax
 00498AF8    test        eax,eax
>00498AFA    jl          00498B5A
 00498AFC    inc         eax
 00498AFD    mov         dword ptr [ebp-14],eax
 00498B00    mov         dword ptr [ebp-10],0
 00498B07    mov         eax,dword ptr [ebp-10]
 00498B0A    cmp         eax,dword ptr [ebp-8]
>00498B0D    jge         00498B2E
 00498B0F    mov         edx,dword ptr [ebp-10]
 00498B12    mov         eax,dword ptr [ebp-4]
 00498B15    call        0049A840
 00498B1A    mov         al,byte ptr [eax+3F]
 00498B1D    cmp         al,byte ptr [ebp-9]
>00498B20    jbe         00498B52
 00498B22    mov         eax,[0056E0BC];^SGroupIndexTooLow:TResStringRec
 00498B27    call        00497884
>00498B2C    jmp         00498B52
 00498B2E    mov         edx,dword ptr [ebp-10]
 00498B31    mov         eax,dword ptr [ebp-4]
 00498B34    call        0049A840
 00498B39    mov         al,byte ptr [eax+3F]
 00498B3C    cmp         al,byte ptr [ebp-9]
>00498B3F    jae         00498B52
 00498B41    mov         edx,dword ptr [ebp-10]
 00498B44    mov         eax,dword ptr [ebp-4]
 00498B47    call        0049A840
 00498B4C    mov         dl,byte ptr [ebp-9]
 00498B4F    mov         byte ptr [eax+3F],dl
 00498B52    inc         dword ptr [ebp-10]
 00498B55    dec         dword ptr [ebp-14]
>00498B58    jne         00498B07
 00498B5A    mov         esp,ebp
 00498B5C    pop         ebp
 00498B5D    ret
end;*}

//00498B60
{*function sub_00498B60(?:TMenuItem):?;
begin
 00498B60    push        ebp
 00498B61    mov         ebp,esp
 00498B63    add         esp,0FFFFFFF8
 00498B66    mov         dword ptr [ebp-4],eax
 00498B69    mov         eax,dword ptr [ebp-4]
 00498B6C    cmp         dword ptr [eax+34],0;TMenuItem.FHandle:HMENU
>00498B70    jne         00498BBA
 00498B72    mov         eax,dword ptr [ebp-4]
 00498B75    mov         eax,dword ptr [eax+4];TMenuItem.FOwner:TComponent
 00498B78    mov         edx,dword ptr ds:[49748C];TPopupMenu
 00498B7E    call        @IsClass
 00498B83    test        al,al
>00498B85    je          00498B94
 00498B87    call        user32.CreatePopupMenu
 00498B8C    mov         edx,dword ptr [ebp-4]
 00498B8F    mov         dword ptr [edx+34],eax;TMenuItem.FHandle:HMENU
>00498B92    jmp         00498B9F
 00498B94    call        user32.CreateMenu
 00498B99    mov         edx,dword ptr [ebp-4]
 00498B9C    mov         dword ptr [edx+34],eax;TMenuItem.FHandle:HMENU
 00498B9F    mov         eax,dword ptr [ebp-4]
 00498BA2    cmp         dword ptr [eax+34],0;TMenuItem.FHandle:HMENU
>00498BA6    jne         00498BB2
 00498BA8    mov         eax,[0056E080];^SOutOfResources:TResStringRec
 00498BAD    call        00497884
 00498BB2    mov         eax,dword ptr [ebp-4]
 00498BB5    call        00498844
 00498BBA    mov         eax,dword ptr [ebp-4]
 00498BBD    mov         eax,dword ptr [eax+34];TMenuItem.FHandle:HMENU
 00498BC0    mov         dword ptr [ebp-8],eax
 00498BC3    mov         eax,dword ptr [ebp-8]
 00498BC6    pop         ecx
 00498BC7    pop         ecx
 00498BC8    pop         ebp
 00498BC9    ret
end;*}

//00498BCC
procedure TMenuItem.DefineProperties(Filer:TFiler);
begin
{*
 00498BCC    push        ebp
 00498BCD    mov         ebp,esp
 00498BCF    add         esp,0FFFFFFF8
 00498BD2    push        ebx
 00498BD3    mov         dword ptr [ebp-8],edx
 00498BD6    mov         dword ptr [ebp-4],eax
 00498BD9    mov         edx,dword ptr [ebp-8]
 00498BDC    mov         eax,dword ptr [ebp-4]
 00498BDF    call        TComponent.DefineProperties
 00498BE4    mov         eax,dword ptr [ebp-4]
 00498BE7    push        eax
 00498BE8    push        4988B8
 00498BED    push        0
 00498BEF    push        0
 00498BF1    xor         ecx,ecx
 00498BF3    mov         edx,498C10;'ShortCutText'
 00498BF8    mov         eax,dword ptr [ebp-8]
 00498BFB    mov         ebx,dword ptr [eax]
 00498BFD    call        dword ptr [ebx+4];@AbstractError
 00498C00    pop         ebx
 00498C01    pop         ecx
 00498C02    pop         ecx
 00498C03    pop         ebp
 00498C04    ret
*}
end;

//00498C20
{*procedure sub_00498C20(?:TMenuItem; ?:?; ?:AnsiString; ?:?; ?:?; ?:?; ?:?);
begin
 00498C20    push        ebp
 00498C21    mov         ebp,esp
 00498C23    add         esp,0FFFFFFDC
 00498C26    push        ebx
 00498C27    push        esi
 00498C28    push        edi
 00498C29    xor         ebx,ebx
 00498C2B    mov         dword ptr [ebp-10],ebx
 00498C2E    mov         dword ptr [ebp-0C],ecx
 00498C31    mov         dword ptr [ebp-8],edx
 00498C34    mov         dword ptr [ebp-4],eax
 00498C37    xor         eax,eax
 00498C39    push        ebp
 00498C3A    push        498E26
 00498C3F    push        dword ptr fs:[eax]
 00498C42    mov         dword ptr fs:[eax],esp
 00498C45    mov         eax,dword ptr [ebp-4]
 00498C48    call        TMenuItem.GetParentMenu
 00498C4D    mov         dword ptr [ebp-14],eax
 00498C50    cmp         dword ptr [ebp-14],0
>00498C54    je          00498C94
 00498C56    mov         eax,dword ptr [ebp-14]
 00498C59    call        TMenu.IsRightToLeft
 00498C5E    test        al,al
>00498C60    je          00498C94
 00498C62    test        byte ptr [ebp+8],0
>00498C66    jne         00498C76
 00498C68    mov         eax,dword ptr [ebp+8]
 00498C6B    and         eax,0FFFFFFFF
 00498C6E    or          eax,2
 00498C71    mov         dword ptr [ebp+8],eax
>00498C74    jmp         00498C8D
 00498C76    mov         eax,dword ptr [ebp+8]
 00498C79    and         eax,2
 00498C7C    cmp         eax,2
>00498C7F    jne         00498C8D
 00498C81    mov         eax,dword ptr [ebp+8]
 00498C84    and         eax,0FFFFFFFD
 00498C87    or          eax,0
 00498C8A    mov         dword ptr [ebp+8],eax
 00498C8D    or          dword ptr [ebp+8],20000
 00498C94    lea         eax,[ebp-10]
 00498C97    mov         edx,dword ptr [ebp-0C]
 00498C9A    call        @LStrLAsg
 00498C9F    test        byte ptr [ebp+9],4
>00498CA3    je          00498CC9
 00498CA5    cmp         dword ptr [ebp-10],0
>00498CA9    je          00498CBC
 00498CAB    mov         eax,dword ptr [ebp-10]
 00498CAE    cmp         byte ptr [eax],26
>00498CB1    jne         00498CC9
 00498CB3    mov         eax,dword ptr [ebp-10]
 00498CB6    cmp         byte ptr [eax+1],0
>00498CBA    jne         00498CC9
 00498CBC    lea         eax,[ebp-10]
 00498CBF    mov         edx,498E40;' '
 00498CC4    call        @LStrCat
 00498CC9    mov         eax,dword ptr [ebp-10]
 00498CCC    mov         edx,498E4C;'-'
 00498CD1    call        @LStrCmp
>00498CD6    jne         00498D0D
 00498CD8    test        byte ptr [ebp+9],4
>00498CDC    jne         00498E10
 00498CE2    mov         eax,dword ptr [ebp+10]
 00498CE5    mov         esi,eax
 00498CE7    lea         edi,[ebp-24]
 00498CEA    movs        dword ptr [edi],dword ptr [esi]
 00498CEB    movs        dword ptr [edi],dword ptr [esi]
 00498CEC    movs        dword ptr [edi],dword ptr [esi]
 00498CED    movs        dword ptr [edi],dword ptr [esi]
 00498CEE    add         dword ptr [ebp-20],4
 00498CF2    push        2
 00498CF4    push        6
 00498CF6    lea         eax,[ebp-24]
 00498CF9    push        eax
 00498CFA    mov         eax,dword ptr [ebp-8]
 00498CFD    call        0042F6A0
 00498D02    push        eax
 00498D03    call        user32.DrawEdge
>00498D08    jmp         00498E10
 00498D0D    mov         eax,dword ptr [ebp-8]
 00498D10    mov         eax,dword ptr [eax+14]
 00498D13    mov         dl,1
 00498D15    call        TBrush.SetStyle
 00498D1A    mov         eax,dword ptr [ebp-4]
 00498D1D    cmp         byte ptr [eax+3A],0
>00498D21    je          00498D41
 00498D23    mov         eax,dword ptr [ebp-8]
 00498D26    mov         eax,dword ptr [eax+0C]
 00498D29    call        TFont.GetStyle
 00498D2E    mov         edx,eax
 00498D30    or          dl,byte ptr ds:[498E50];0x1 gvar_00498E50
 00498D36    mov         eax,dword ptr [ebp-8]
 00498D39    mov         eax,dword ptr [eax+0C]
 00498D3C    call        TFont.SetStyle
 00498D41    mov         eax,dword ptr [ebp-4]
 00498D44    cmp         byte ptr [eax+39],0
>00498D48    jne         00498DE8
 00498D4E    cmp         byte ptr [ebp+0C],0
>00498D52    jne         00498DA6
 00498D54    push        1
 00498D56    push        1
 00498D58    mov         eax,dword ptr [ebp+10]
 00498D5B    push        eax
 00498D5C    call        user32.OffsetRect
 00498D61    mov         eax,dword ptr [ebp-8]
 00498D64    mov         eax,dword ptr [eax+0C]
 00498D67    mov         edx,0FF000014
 00498D6C    call        TFont.SetColor
 00498D71    mov         eax,dword ptr [ebp+8]
 00498D74    push        eax
 00498D75    mov         eax,dword ptr [ebp+10]
 00498D78    push        eax
 00498D79    mov         eax,dword ptr [ebp-10]
 00498D7C    call        @LStrLen
 00498D81    push        eax
 00498D82    mov         eax,dword ptr [ebp-10]
 00498D85    call        @LStrToPChar
 00498D8A    push        eax
 00498D8B    mov         eax,dword ptr [ebp-8]
 00498D8E    call        0042F6A0
 00498D93    push        eax
 00498D94    call        user32.DrawTextA
 00498D99    push        0FF
 00498D9B    push        0FF
 00498D9D    mov         eax,dword ptr [ebp+10]
 00498DA0    push        eax
 00498DA1    call        user32.OffsetRect
 00498DA6    cmp         byte ptr [ebp+0C],0
>00498DAA    je          00498DD8
 00498DAC    mov         eax,0FF00000D
 00498DB1    call        ColorToRGB
 00498DB6    mov         ebx,eax
 00498DB8    mov         eax,0FF000010
 00498DBD    call        ColorToRGB
 00498DC2    cmp         ebx,eax
>00498DC4    jne         00498DD8
 00498DC6    mov         eax,dword ptr [ebp-8]
 00498DC9    mov         eax,dword ptr [eax+0C]
 00498DCC    mov         edx,0FF000014
 00498DD1    call        TFont.SetColor
>00498DD6    jmp         00498DE8
 00498DD8    mov         eax,dword ptr [ebp-8]
 00498DDB    mov         eax,dword ptr [eax+0C]
 00498DDE    mov         edx,0FF000010
 00498DE3    call        TFont.SetColor
 00498DE8    mov         eax,dword ptr [ebp+8]
 00498DEB    push        eax
 00498DEC    mov         eax,dword ptr [ebp+10]
 00498DEF    push        eax
 00498DF0    mov         eax,dword ptr [ebp-10]
 00498DF3    call        @LStrLen
 00498DF8    push        eax
 00498DF9    mov         eax,dword ptr [ebp-10]
 00498DFC    call        @LStrToPChar
 00498E01    push        eax
 00498E02    mov         eax,dword ptr [ebp-8]
 00498E05    call        0042F6A0
 00498E0A    push        eax
 00498E0B    call        user32.DrawTextA
 00498E10    xor         eax,eax
 00498E12    pop         edx
 00498E13    pop         ecx
 00498E14    pop         ecx
 00498E15    mov         dword ptr fs:[eax],edx
 00498E18    push        498E2D
 00498E1D    lea         eax,[ebp-10]
 00498E20    call        @LStrClr
 00498E25    ret
>00498E26    jmp         @HandleFinally
>00498E2B    jmp         00498E1D
 00498E2D    pop         edi
 00498E2E    pop         esi
 00498E2F    pop         ebx
 00498E30    mov         esp,ebp
 00498E32    pop         ebp
 00498E33    ret         0C
end;*}

//00498E54
{*procedure sub_00498E54(?:?; ?:?; ?:?);
begin
 00498E54    push        ebp
 00498E55    mov         ebp,esp
 00498E57    add         esp,0FFFFFFE8
 00498E5A    push        ebx
 00498E5B    push        esi
 00498E5C    push        edi
 00498E5D    mov         esi,ecx
 00498E5F    lea         edi,[ebp-18]
 00498E62    movs        dword ptr [edi],dword ptr [esi]
 00498E63    movs        dword ptr [edi],dword ptr [esi]
 00498E64    movs        dword ptr [edi],dword ptr [esi]
 00498E65    movs        dword ptr [edi],dword ptr [esi]
 00498E66    mov         dword ptr [ebp-8],edx
 00498E69    mov         dword ptr [ebp-4],eax
 00498E6C    mov         eax,dword ptr [ebp-4]
 00498E6F    cmp         word ptr [eax+92],0;TMenuItem.?f92:word
>00498E77    je          00498E96
 00498E79    lea         eax,[ebp-18]
 00498E7C    push        eax
 00498E7D    mov         al,byte ptr [ebp+8]
 00498E80    push        eax
 00498E81    mov         ebx,dword ptr [ebp-4]
 00498E84    mov         ecx,dword ptr [ebp-8]
 00498E87    mov         edx,dword ptr [ebp-4]
 00498E8A    mov         eax,dword ptr [ebx+94];TMenuItem.?f94:dword
 00498E90    call        dword ptr [ebx+90];TMenuItem.OnDrawItem
 00498E96    pop         edi
 00498E97    pop         esi
 00498E98    pop         ebx
 00498E99    mov         esp,ebp
 00498E9B    pop         ebp
 00498E9C    ret         4
end;*}

//00498EA0
procedure NormalDraw;
begin
{*
 00498EA0    push        ebp
 00498EA1    mov         ebp,esp
 00498EA3    push        0
 00498EA5    push        esi
 00498EA6    push        edi
 00498EA7    xor         eax,eax
 00498EA9    push        ebp
 00498EAA    push        4997B5
 00498EAF    push        dword ptr fs:[eax]
 00498EB2    mov         dword ptr fs:[eax],esp
 00498EB5    mov         eax,dword ptr [ebp+8]
 00498EB8    cmp         byte ptr [eax-21],0
>00498EBC    je          00498F37
 00498EBE    mov         eax,dword ptr [ebp+8]
 00498EC1    test        byte ptr [eax+0C],1
>00498EC5    jne         00498ED0
 00498EC7    mov         eax,dword ptr [ebp+8]
 00498ECA    test        byte ptr [eax+0C],40
>00498ECE    je          00498F1B
 00498ED0    call        0046BFC0
 00498ED5    call        0046C0EC
 00498EDA    test        al,al
>00498EDC    je          00498EF3
 00498EDE    mov         eax,dword ptr [ebp+8]
 00498EE1    mov         eax,dword ptr [eax-28]
 00498EE4    mov         eax,dword ptr [eax+14]
 00498EE7    mov         edx,0FF00001D
 00498EEC    call        TBrush.SetColor
>00498EF1    jmp         00498F06
 00498EF3    mov         eax,dword ptr [ebp+8]
 00498EF6    mov         eax,dword ptr [eax-28]
 00498EF9    mov         eax,dword ptr [eax+14]
 00498EFC    mov         edx,0FF00000D
 00498F01    call        TBrush.SetColor
 00498F06    mov         eax,dword ptr [ebp+8]
 00498F09    mov         eax,dword ptr [eax-28]
 00498F0C    mov         eax,dword ptr [eax+0C]
 00498F0F    mov         edx,0FF00000E
 00498F14    call        TFont.SetColor
>00498F19    jmp         00498F37
 00498F1B    mov         eax,dword ptr [ebp+8]
 00498F1E    cmp         byte ptr [eax+8],0
>00498F22    je          00498F37
 00498F24    mov         eax,dword ptr [ebp+8]
 00498F27    mov         eax,dword ptr [eax-28]
 00498F2A    mov         eax,dword ptr [eax+14]
 00498F2D    mov         edx,0FF00001E
 00498F32    call        TBrush.SetColor
 00498F37    mov         eax,dword ptr [ebp+8]
 00498F3A    cmp         byte ptr [eax-29],0
>00498F3E    je          00498F49
 00498F40    mov         eax,dword ptr [ebp+8]
 00498F43    cmp         byte ptr [eax-21],0
>00498F47    je          00498F5A
 00498F49    mov         eax,dword ptr [ebp+8]
 00498F4C    lea         edx,[eax-20]
 00498F4F    mov         eax,dword ptr [ebp+8]
 00498F52    mov         eax,dword ptr [eax-28]
 00498F55    call        0042F030
 00498F5A    mov         eax,dword ptr [ebp+8]
 00498F5D    cmp         dword ptr [eax-30],0
>00498F61    je          00498F6C
 00498F63    mov         eax,dword ptr [ebp+8]
 00498F66    mov         byte ptr [eax-31],0
>00498F6A    jmp         00498F99
 00498F6C    mov         eax,dword ptr [ebp+8]
 00498F6F    mov         eax,dword ptr [eax-30]
 00498F72    mov         edx,dword ptr ds:[49748C];TPopupMenu
 00498F78    call        @IsClass
 00498F7D    test        al,al
>00498F7F    je          00498F92
 00498F81    mov         eax,dword ptr [ebp+8]
 00498F84    mov         eax,dword ptr [eax-30]
 00498F87    mov         al,byte ptr [eax+60]
 00498F8A    mov         edx,dword ptr [ebp+8]
 00498F8D    mov         byte ptr [edx-31],al
>00498F90    jmp         00498F99
 00498F92    mov         eax,dword ptr [ebp+8]
 00498F95    mov         byte ptr [eax-31],0
 00498F99    mov         eax,dword ptr [ebp+8]
 00498F9C    mov         eax,dword ptr [eax-20]
 00498F9F    inc         eax
 00498FA0    mov         edx,dword ptr [ebp+8]
 00498FA3    mov         dword ptr [edx-10],eax
 00498FA6    mov         eax,dword ptr [ebp+8]
 00498FA9    mov         eax,dword ptr [eax-1C]
 00498FAC    inc         eax
 00498FAD    mov         edx,dword ptr [ebp+8]
 00498FB0    mov         dword ptr [edx-0C],eax
 00498FB3    mov         eax,dword ptr [ebp+8]
 00498FB6    mov         eax,dword ptr [eax-38]
 00498FB9    mov         eax,dword ptr [eax+30]
 00498FBC    mov         edx,4997CC;'-'
 00498FC1    call        @LStrCmp
>00498FC6    jne         00498FF7
 00498FC8    mov         eax,dword ptr [ebp+8]
 00498FCB    lea         edx,[eax-20]
 00498FCE    mov         eax,dword ptr [ebp+8]
 00498FD1    mov         eax,dword ptr [eax-28]
 00498FD4    call        0042F030
 00498FD9    mov         eax,dword ptr [ebp+8]
 00498FDC    xor         edx,edx
 00498FDE    mov         dword ptr [eax-10],edx
 00498FE1    mov         eax,dword ptr [ebp+8]
 00498FE4    mov         dword ptr [eax-8],0FFFFFFFC
 00498FEB    mov         eax,dword ptr [ebp+8]
 00498FEE    mov         byte ptr [eax-39],0
>00498FF2    jmp         00499499
 00498FF7    mov         eax,dword ptr [ebp+8]
 00498FFA    cmp         dword ptr [eax-40],0
>00498FFE    je          0049904C
 00499000    mov         eax,dword ptr [ebp+8]
 00499003    mov         eax,dword ptr [eax-38]
 00499006    cmp         dword ptr [eax+40],0FFFFFFFF
>0049900A    jle         00499022
 0049900C    mov         eax,dword ptr [ebp+8]
 0049900F    mov         eax,dword ptr [eax-40]
 00499012    call        00495384
 00499017    mov         edx,dword ptr [ebp+8]
 0049901A    mov         edx,dword ptr [edx-38]
 0049901D    cmp         eax,dword ptr [edx+40]
>00499020    jg          00499050
 00499022    mov         eax,dword ptr [ebp+8]
 00499025    mov         eax,dword ptr [eax-38]
 00499028    cmp         byte ptr [eax+38],0
>0049902C    je          0049904C
 0049902E    mov         eax,dword ptr [ebp+8]
 00499031    mov         eax,dword ptr [eax-38]
 00499034    cmp         dword ptr [eax+4C],0
>00499038    je          00499050
 0049903A    mov         eax,dword ptr [ebp+8]
 0049903D    mov         eax,dword ptr [eax-38]
 00499040    mov         eax,dword ptr [eax+4C]
 00499043    mov         edx,dword ptr [eax]
 00499045    call        dword ptr [edx+1C]
 00499048    test        al,al
>0049904A    jne         00499050
 0049904C    xor         eax,eax
>0049904E    jmp         00499052
 00499050    mov         al,1
 00499052    mov         edx,dword ptr [ebp+8]
 00499055    mov         byte ptr [edx-41],al
 00499058    mov         eax,dword ptr [ebp+8]
 0049905B    cmp         byte ptr [eax-41],0
>0049905F    jne         00499087
 00499061    mov         eax,dword ptr [ebp+8]
 00499064    mov         eax,dword ptr [eax-38]
 00499067    cmp         dword ptr [eax+4C],0
>0049906B    je          0049943C
 00499071    mov         eax,dword ptr [ebp+8]
 00499074    mov         eax,dword ptr [eax-38]
 00499077    mov         eax,dword ptr [eax+4C]
 0049907A    mov         edx,dword ptr [eax]
 0049907C    call        dword ptr [edx+1C]
 0049907F    test        al,al
>00499081    jne         0049943C
 00499087    mov         eax,dword ptr [ebp+8]
 0049908A    mov         byte ptr [eax-39],1
 0049908E    mov         eax,dword ptr [ebp+8]
 00499091    cmp         byte ptr [eax-41],0
>00499095    je          004990C3
 00499097    mov         eax,dword ptr [ebp+8]
 0049909A    mov         eax,dword ptr [eax-10]
 0049909D    mov         edx,dword ptr [ebp+8]
 004990A0    mov         edx,dword ptr [edx-40]
 004990A3    add         eax,dword ptr [edx+34]
 004990A6    mov         edx,dword ptr [ebp+8]
 004990A9    mov         dword ptr [edx-8],eax
 004990AC    mov         eax,dword ptr [ebp+8]
 004990AF    mov         eax,dword ptr [eax-0C]
 004990B2    mov         edx,dword ptr [ebp+8]
 004990B5    mov         edx,dword ptr [edx-40]
 004990B8    add         eax,dword ptr [edx+30]
 004990BB    mov         edx,dword ptr [ebp+8]
 004990BE    mov         dword ptr [edx-4],eax
>004990C1    jmp         004990E1
 004990C3    mov         eax,dword ptr [ebp+8]
 004990C6    mov         eax,dword ptr [eax-10]
 004990C9    add         eax,10
 004990CC    mov         edx,dword ptr [ebp+8]
 004990CF    mov         dword ptr [edx-8],eax
 004990D2    mov         eax,dword ptr [ebp+8]
 004990D5    mov         eax,dword ptr [eax-0C]
 004990D8    add         eax,10
 004990DB    mov         edx,dword ptr [ebp+8]
 004990DE    mov         dword ptr [edx-4],eax
 004990E1    mov         eax,dword ptr [ebp+8]
 004990E4    mov         eax,dword ptr [eax-38]
 004990E7    cmp         byte ptr [eax+38],0
>004990EB    je          004991B1
 004990F1    mov         eax,dword ptr [ebp+8]
 004990F4    cmp         byte ptr [eax-21],0
>004990F8    jne         004991B1
 004990FE    mov         eax,dword ptr [ebp+8]
 00499101    inc         dword ptr [eax-8]
 00499104    mov         eax,dword ptr [ebp+8]
 00499107    inc         dword ptr [eax-4]
 0049910A    mov         eax,dword ptr [ebp+8]
 0049910D    mov         eax,dword ptr [eax-28]
 00499110    mov         eax,dword ptr [eax+14]
 00499113    call        TBrush.GetColor
 00499118    mov         edx,dword ptr [ebp+8]
 0049911B    mov         dword ptr [edx-48],eax
 0049911E    mov         eax,dword ptr [ebp+8]
 00499121    test        byte ptr [eax+0C],1
>00499125    jne         0049916D
 00499127    mov         eax,dword ptr [ebp+8]
 0049912A    mov         eax,dword ptr [eax-28]
 0049912D    mov         eax,dword ptr [eax+14]
 00499130    call        TBrush.GetColor
 00499135    mov         edx,dword ptr [ebp+8]
 00499138    mov         dword ptr [edx-48],eax
 0049913B    mov         edx,0FF000014
 00499140    mov         eax,0FF00000F
 00499145    call        00436FC8
 0049914A    mov         edx,eax
 0049914C    mov         eax,dword ptr [ebp+8]
 0049914F    mov         eax,dword ptr [eax-28]
 00499152    mov         eax,dword ptr [eax+14]
 00499155    call        0042EA6C
 0049915A    mov         eax,dword ptr [ebp+8]
 0049915D    lea         edx,[eax-10]
 00499160    mov         eax,dword ptr [ebp+8]
 00499163    mov         eax,dword ptr [eax-28]
 00499166    call        0042F030
>0049916B    jmp         00499191
 0049916D    mov         eax,dword ptr [ebp+8]
 00499170    mov         eax,dword ptr [eax-28]
 00499173    mov         eax,dword ptr [eax+14]
 00499176    mov         edx,0FF00000F
 0049917B    call        TBrush.SetColor
 00499180    mov         eax,dword ptr [ebp+8]
 00499183    lea         edx,[eax-10]
 00499186    mov         eax,dword ptr [ebp+8]
 00499189    mov         eax,dword ptr [eax-28]
 0049918C    call        0042F030
 00499191    mov         eax,dword ptr [ebp+8]
 00499194    mov         edx,dword ptr [eax-48]
 00499197    mov         eax,dword ptr [ebp+8]
 0049919A    mov         eax,dword ptr [eax-28]
 0049919D    mov         eax,dword ptr [eax+14]
 004991A0    call        TBrush.SetColor
 004991A5    mov         eax,dword ptr [ebp+8]
 004991A8    inc         dword ptr [eax-10]
 004991AB    mov         eax,dword ptr [ebp+8]
 004991AE    inc         dword ptr [eax-0C]
 004991B1    mov         eax,dword ptr [ebp+8]
 004991B4    cmp         byte ptr [eax-41],0
>004991B8    je          00499318
 004991BE    mov         eax,dword ptr [ebp+8]
 004991C1    mov         eax,dword ptr [eax-38]
 004991C4    cmp         dword ptr [eax+40],0FFFFFFFF
>004991C8    jle         00499217
 004991CA    mov         eax,dword ptr [ebp+8]
 004991CD    mov         eax,dword ptr [eax-40]
 004991D0    call        00495384
 004991D5    mov         edx,dword ptr [ebp+8]
 004991D8    mov         edx,dword ptr [edx-38]
 004991DB    cmp         eax,dword ptr [edx+40]
>004991DE    jle         00499217
 004991E0    mov         eax,dword ptr [ebp+8]
 004991E3    mov         eax,dword ptr [eax-0C]
 004991E6    push        eax
 004991E7    mov         eax,dword ptr [ebp+8]
 004991EA    mov         eax,dword ptr [eax-38]
 004991ED    mov         eax,dword ptr [eax+40]
 004991F0    push        eax
 004991F1    mov         eax,dword ptr [ebp+8]
 004991F4    mov         eax,dword ptr [eax-38]
 004991F7    mov         al,byte ptr [eax+39]
 004991FA    push        eax
 004991FB    mov         eax,dword ptr [ebp+8]
 004991FE    mov         ecx,dword ptr [eax-10]
 00499201    mov         eax,dword ptr [ebp+8]
 00499204    mov         edx,dword ptr [eax-28]
 00499207    mov         eax,dword ptr [ebp+8]
 0049920A    mov         eax,dword ptr [eax-40]
 0049920D    call        00495958
>00499212    jmp         00499422
 00499217    mov         dl,1
 00499219    mov         eax,[0042CF48];TBitmap
 0049921E    call        TBitmap.Create
 00499223    mov         edx,dword ptr [ebp+8]
 00499226    mov         dword ptr [edx-4C],eax
 00499229    xor         eax,eax
 0049922B    push        ebp
 0049922C    push        499311
 00499231    push        dword ptr fs:[eax]
 00499234    mov         dword ptr fs:[eax],esp
 00499237    mov         eax,dword ptr [ebp+8]
 0049923A    mov         eax,dword ptr [eax-4C]
 0049923D    mov         dl,1
 0049923F    mov         ecx,dword ptr [eax]
 00499241    call        dword ptr [ecx+3C]
 00499244    push        7FF8
 00499249    push        0
 0049924B    call        user32.LoadBitmapA
 00499250    mov         edx,eax
 00499252    mov         eax,dword ptr [ebp+8]
 00499255    mov         eax,dword ptr [eax-4C]
 00499258    call        TBitmap.SetHandle
 0049925D    mov         eax,dword ptr [ebp+8]
 00499260    mov         eax,dword ptr [eax-28]
 00499263    mov         eax,dword ptr [eax+0C]
 00499266    mov         eax,dword ptr [eax+18]
 00499269    mov         edx,dword ptr [ebp+8]
 0049926C    mov         dword ptr [edx-48],eax
 0049926F    mov         eax,dword ptr [ebp+8]
 00499272    mov         eax,dword ptr [eax-28]
 00499275    mov         eax,dword ptr [eax+0C]
 00499278    mov         edx,0FF000012
 0049927D    call        TFont.SetColor
 00499282    mov         eax,dword ptr [ebp+8]
 00499285    mov         eax,dword ptr [eax-4C]
 00499288    push        eax
 00499289    mov         eax,dword ptr [ebp+8]
 0049928C    mov         eax,dword ptr [eax-4C]
 0049928F    mov         edx,dword ptr [eax]
 00499291    call        dword ptr [edx+20]
 00499294    mov         edx,dword ptr [ebp+8]
 00499297    mov         edx,dword ptr [edx-4]
 0049929A    mov         ecx,dword ptr [ebp+8]
 0049929D    sub         edx,dword ptr [ecx-0C]
 004992A0    sub         edx,eax
 004992A2    sar         edx,1
>004992A4    jns         004992A9
 004992A6    adc         edx,0
 004992A9    mov         eax,dword ptr [ebp+8]
 004992AC    add         edx,dword ptr [eax-0C]
 004992AF    inc         edx
 004992B0    push        edx
 004992B1    mov         eax,dword ptr [ebp+8]
 004992B4    mov         eax,dword ptr [eax-4C]
 004992B7    mov         edx,dword ptr [eax]
 004992B9    call        dword ptr [edx+2C]
 004992BC    mov         edx,dword ptr [ebp+8]
 004992BF    mov         edx,dword ptr [edx-8]
 004992C2    mov         ecx,dword ptr [ebp+8]
 004992C5    sub         edx,dword ptr [ecx-10]
 004992C8    sub         edx,eax
 004992CA    sar         edx,1
>004992CC    jns         004992D1
 004992CE    adc         edx,0
 004992D1    mov         eax,dword ptr [ebp+8]
 004992D4    add         edx,dword ptr [eax-10]
 004992D7    inc         edx
 004992D8    mov         eax,dword ptr [ebp+8]
 004992DB    mov         eax,dword ptr [eax-28]
 004992DE    pop         ecx
 004992DF    call        0042EF28
 004992E4    mov         eax,dword ptr [ebp+8]
 004992E7    mov         edx,dword ptr [eax-48]
 004992EA    mov         eax,dword ptr [ebp+8]
 004992ED    mov         eax,dword ptr [eax-28]
 004992F0    mov         eax,dword ptr [eax+0C]
 004992F3    call        TFont.SetColor
 004992F8    xor         eax,eax
 004992FA    pop         edx
 004992FB    pop         ecx
 004992FC    pop         ecx
 004992FD    mov         dword ptr fs:[eax],edx
 00499300    push        499422
 00499305    mov         eax,dword ptr [ebp+8]
 00499308    mov         eax,dword ptr [eax-4C]
 0049930B    call        TObject.Free
 00499310    ret
>00499311    jmp         @HandleFinally
>00499316    jmp         00499305
 00499318    mov         eax,dword ptr [ebp+8]
 0049931B    mov         edx,dword ptr [ebp+8]
 0049931E    lea         esi,[eax-10]
 00499321    lea         edi,[edx-5C]
 00499324    movs        dword ptr [edi],dword ptr [esi]
 00499325    movs        dword ptr [edi],dword ptr [esi]
 00499326    movs        dword ptr [edi],dword ptr [esi]
 00499327    movs        dword ptr [edi],dword ptr [esi]
 00499328    mov         eax,dword ptr [ebp+8]
 0049932B    mov         eax,dword ptr [eax-38]
 0049932E    mov         eax,dword ptr [eax+4C]
 00499331    mov         edx,dword ptr [eax]
 00499333    call        dword ptr [edx+2C]
 00499336    mov         edx,dword ptr [ebp+8]
 00499339    mov         edx,dword ptr [edx-8]
 0049933C    mov         ecx,dword ptr [ebp+8]
 0049933F    sub         edx,dword ptr [ecx-10]
 00499342    cmp         eax,edx
>00499344    jge         00499390
 00499346    mov         eax,dword ptr [ebp+8]
 00499349    mov         eax,dword ptr [eax-38]
 0049934C    mov         eax,dword ptr [eax+4C]
 0049934F    mov         edx,dword ptr [eax]
 00499351    call        dword ptr [edx+2C]
 00499354    mov         edx,dword ptr [ebp+8]
 00499357    mov         edx,dword ptr [edx-8]
 0049935A    mov         ecx,dword ptr [ebp+8]
 0049935D    sub         edx,dword ptr [ecx-10]
 00499360    sub         edx,eax
 00499362    sar         edx,1
>00499364    jns         00499369
 00499366    adc         edx,0
 00499369    mov         eax,dword ptr [ebp+8]
 0049936C    add         edx,dword ptr [eax-10]
 0049936F    inc         edx
 00499370    mov         eax,dword ptr [ebp+8]
 00499373    mov         dword ptr [eax-10],edx
 00499376    mov         eax,dword ptr [ebp+8]
 00499379    mov         eax,dword ptr [eax-38]
 0049937C    mov         eax,dword ptr [eax+4C]
 0049937F    mov         edx,dword ptr [eax]
 00499381    call        dword ptr [edx+2C]
 00499384    mov         edx,dword ptr [ebp+8]
 00499387    add         eax,dword ptr [edx-10]
 0049938A    mov         edx,dword ptr [ebp+8]
 0049938D    mov         dword ptr [edx-8],eax
 00499390    mov         eax,dword ptr [ebp+8]
 00499393    mov         eax,dword ptr [eax-38]
 00499396    mov         eax,dword ptr [eax+4C]
 00499399    mov         edx,dword ptr [eax]
 0049939B    call        dword ptr [edx+20]
 0049939E    mov         edx,dword ptr [ebp+8]
 004993A1    mov         edx,dword ptr [edx-4]
 004993A4    mov         ecx,dword ptr [ebp+8]
 004993A7    sub         edx,dword ptr [ecx-0C]
 004993AA    cmp         eax,edx
>004993AC    jge         004993F8
 004993AE    mov         eax,dword ptr [ebp+8]
 004993B1    mov         eax,dword ptr [eax-38]
 004993B4    mov         eax,dword ptr [eax+4C]
 004993B7    mov         edx,dword ptr [eax]
 004993B9    call        dword ptr [edx+20]
 004993BC    mov         edx,dword ptr [ebp+8]
 004993BF    mov         edx,dword ptr [edx-4]
 004993C2    mov         ecx,dword ptr [ebp+8]
 004993C5    sub         edx,dword ptr [ecx-0C]
 004993C8    sub         edx,eax
 004993CA    sar         edx,1
>004993CC    jns         004993D1
 004993CE    adc         edx,0
 004993D1    mov         eax,dword ptr [ebp+8]
 004993D4    add         edx,dword ptr [eax-0C]
 004993D7    inc         edx
 004993D8    mov         eax,dword ptr [ebp+8]
 004993DB    mov         dword ptr [eax-0C],edx
 004993DE    mov         eax,dword ptr [ebp+8]
 004993E1    mov         eax,dword ptr [eax-38]
 004993E4    mov         eax,dword ptr [eax+4C]
 004993E7    mov         edx,dword ptr [eax]
 004993E9    call        dword ptr [edx+20]
 004993EC    mov         edx,dword ptr [ebp+8]
 004993EF    add         eax,dword ptr [edx-0C]
 004993F2    mov         edx,dword ptr [ebp+8]
 004993F5    mov         dword ptr [edx-4],eax
 004993F8    mov         eax,dword ptr [ebp+8]
 004993FB    mov         eax,dword ptr [eax-38]
 004993FE    mov         ecx,dword ptr [eax+4C]
 00499401    mov         eax,dword ptr [ebp+8]
 00499404    lea         edx,[eax-10]
 00499407    mov         eax,dword ptr [ebp+8]
 0049940A    mov         eax,dword ptr [eax-28]
 0049940D    call        0042F2BC
 00499412    mov         eax,dword ptr [ebp+8]
 00499415    mov         edx,dword ptr [ebp+8]
 00499418    lea         esi,[eax-5C]
 0049941B    lea         edi,[edx-10]
 0049941E    movs        dword ptr [edi],dword ptr [esi]
 0049941F    movs        dword ptr [edi],dword ptr [esi]
 00499420    movs        dword ptr [edi],dword ptr [esi]
 00499421    movs        dword ptr [edi],dword ptr [esi]
 00499422    mov         eax,dword ptr [ebp+8]
 00499425    mov         eax,dword ptr [eax-38]
 00499428    cmp         byte ptr [eax+38],0
>0049942C    je          00499499
 0049942E    mov         eax,dword ptr [ebp+8]
 00499431    dec         dword ptr [eax-8]
 00499434    mov         eax,dword ptr [ebp+8]
 00499437    dec         dword ptr [eax-4]
>0049943A    jmp         00499499
 0049943C    mov         eax,dword ptr [ebp+8]
 0049943F    cmp         dword ptr [eax-40],0
>00499443    je          0049947A
 00499445    mov         eax,dword ptr [ebp+8]
 00499448    cmp         byte ptr [eax+8],0
>0049944C    jne         0049947A
 0049944E    mov         eax,dword ptr [ebp+8]
 00499451    mov         eax,dword ptr [eax-10]
 00499454    mov         edx,dword ptr [ebp+8]
 00499457    mov         edx,dword ptr [edx-40]
 0049945A    add         eax,dword ptr [edx+34]
 0049945D    mov         edx,dword ptr [ebp+8]
 00499460    mov         dword ptr [edx-8],eax
 00499463    mov         eax,dword ptr [ebp+8]
 00499466    mov         eax,dword ptr [eax-0C]
 00499469    mov         edx,dword ptr [ebp+8]
 0049946C    mov         edx,dword ptr [edx-40]
 0049946F    add         eax,dword ptr [edx+30]
 00499472    mov         edx,dword ptr [ebp+8]
 00499475    mov         dword ptr [edx-4],eax
>00499478    jmp         00499492
 0049947A    mov         eax,dword ptr [ebp+8]
 0049947D    mov         eax,dword ptr [eax-10]
 00499480    mov         edx,dword ptr [ebp+8]
 00499483    mov         dword ptr [edx-8],eax
 00499486    mov         eax,dword ptr [ebp+8]
 00499489    mov         eax,dword ptr [eax-0C]
 0049948C    mov         edx,dword ptr [ebp+8]
 0049948F    mov         dword ptr [edx-4],eax
 00499492    mov         eax,dword ptr [ebp+8]
 00499495    mov         byte ptr [eax-39],0
 00499499    mov         eax,dword ptr [ebp+8]
 0049949C    dec         dword ptr [eax-10]
 0049949F    mov         eax,dword ptr [ebp+8]
 004994A2    dec         dword ptr [eax-0C]
 004994A5    mov         eax,dword ptr [ebp+8]
 004994A8    add         dword ptr [eax-8],2
 004994AC    mov         eax,dword ptr [ebp+8]
 004994AF    add         dword ptr [eax-4],2
 004994B3    mov         eax,dword ptr [ebp+8]
 004994B6    mov         eax,dword ptr [eax-38]
 004994B9    cmp         byte ptr [eax+38],0
>004994BD    jne         004994D1
 004994BF    mov         eax,dword ptr [ebp+8]
 004994C2    cmp         byte ptr [eax-29],0
>004994C6    je          00499506
 004994C8    mov         eax,dword ptr [ebp+8]
 004994CB    cmp         byte ptr [eax-39],0
>004994CF    je          00499506
 004994D1    mov         eax,dword ptr [ebp+8]
 004994D4    cmp         byte ptr [eax-21],0
>004994D8    jne         00499506
 004994DA    push        0F
 004994DC    mov         eax,dword ptr [ebp+8]
 004994DF    mov         eax,dword ptr [eax-38]
 004994E2    movzx       eax,byte ptr [eax+38]
 004994E6    mov         eax,dword ptr [eax*4+56C998]
 004994ED    push        eax
 004994EE    mov         eax,dword ptr [ebp+8]
 004994F1    add         eax,0FFFFFFF0
 004994F4    push        eax
 004994F5    mov         eax,dword ptr [ebp+8]
 004994F8    mov         eax,dword ptr [eax-28]
 004994FB    call        0042F6A0
 00499500    push        eax
 00499501    call        user32.DrawEdge
 00499506    mov         eax,dword ptr [ebp+8]
 00499509    cmp         byte ptr [eax-29],0
>0049950D    je          0049955B
 0049950F    mov         eax,dword ptr [ebp+8]
 00499512    cmp         byte ptr [eax-39],0
>00499516    je          00499525
 00499518    mov         eax,dword ptr [ebp+8]
 0049951B    mov         eax,dword ptr [eax-8]
 0049951E    inc         eax
 0049951F    mov         edx,dword ptr [ebp+8]
 00499522    mov         dword ptr [edx-20],eax
 00499525    mov         eax,dword ptr [ebp+8]
 00499528    cmp         byte ptr [eax-5D],0
>0049952C    je          00499537
 0049952E    mov         eax,dword ptr [ebp+8]
 00499531    cmp         byte ptr [eax+8],0
>00499535    jne         0049954A
 00499537    mov         eax,dword ptr [ebp+8]
 0049953A    mov         eax,dword ptr [eax-28]
 0049953D    mov         eax,dword ptr [eax+14]
 00499540    mov         edx,0FF00000D
 00499545    call        TBrush.SetColor
 0049954A    mov         eax,dword ptr [ebp+8]
 0049954D    lea         edx,[eax-20]
 00499550    mov         eax,dword ptr [ebp+8]
 00499553    mov         eax,dword ptr [eax-28]
 00499556    call        0042F030
 0049955B    mov         eax,dword ptr [ebp+8]
 0049955E    cmp         byte ptr [eax+8],0
>00499562    je          004995DB
 00499564    mov         eax,dword ptr [ebp+8]
 00499567    cmp         byte ptr [eax-5D],0
>0049956B    je          004995DB
 0049956D    mov         eax,dword ptr [ebp+8]
 00499570    cmp         byte ptr [eax-21],0
>00499574    jne         004995DB
 00499576    mov         eax,dword ptr [ebp+8]
 00499579    cmp         byte ptr [eax-29],0
>0049957D    je          0049959D
 0049957F    push        0F
 00499581    push        2
 00499583    mov         eax,dword ptr [ebp+8]
 00499586    add         eax,0FFFFFFE0
 00499589    push        eax
 0049958A    mov         eax,dword ptr [ebp+8]
 0049958D    mov         eax,dword ptr [eax-28]
 00499590    call        0042F6A0
 00499595    push        eax
 00499596    call        user32.DrawEdge
>0049959B    jmp         004995C2
 0049959D    mov         eax,dword ptr [ebp+8]
 004995A0    test        byte ptr [eax+0C],40
>004995A4    je          004995C2
 004995A6    push        0F
 004995A8    push        4
 004995AA    mov         eax,dword ptr [ebp+8]
 004995AD    add         eax,0FFFFFFE0
 004995B0    push        eax
 004995B1    mov         eax,dword ptr [ebp+8]
 004995B4    mov         eax,dword ptr [eax-28]
 004995B7    call        0042F6A0
 004995BC    push        eax
 004995BD    call        user32.DrawEdge
 004995C2    mov         eax,dword ptr [ebp+8]
 004995C5    cmp         byte ptr [eax-29],0
>004995C9    jne         004995DB
 004995CB    push        0FF
 004995CD    push        0
 004995CF    mov         eax,dword ptr [ebp+8]
 004995D2    add         eax,0FFFFFFE0
 004995D5    push        eax
 004995D6    call        user32.OffsetRect
 004995DB    mov         eax,dword ptr [ebp+8]
 004995DE    cmp         byte ptr [eax-29],0
>004995E2    je          004995ED
 004995E4    mov         eax,dword ptr [ebp+8]
 004995E7    cmp         byte ptr [eax-39],0
>004995EB    jne         004995FA
 004995ED    mov         eax,dword ptr [ebp+8]
 004995F0    mov         eax,dword ptr [eax-8]
 004995F3    inc         eax
 004995F4    mov         edx,dword ptr [ebp+8]
 004995F7    mov         dword ptr [edx-20],eax
 004995FA    mov         eax,dword ptr [ebp+8]
 004995FD    add         dword ptr [eax-20],2
 00499601    mov         eax,dword ptr [ebp+8]
 00499604    dec         dword ptr [eax-18]
 00499607    mov         eax,dword ptr [ebp+8]
 0049960A    movzx       eax,byte ptr [eax-31]
 0049960E    mov         ax,word ptr [eax*2+56C990]
 00499616    or          ax,60
 0049961A    movzx       eax,ax
 0049961D    mov         edx,dword ptr [ebp+8]
 00499620    mov         dword ptr [edx-64],eax
 00499623    mov         eax,dword ptr [ebp+8]
 00499626    cmp         byte ptr [eax-65],0
>0049962A    je          0049963F
 0049962C    mov         eax,dword ptr [ebp+8]
 0049962F    test        byte ptr [eax+0D],1
>00499633    je          0049963F
 00499635    mov         eax,dword ptr [ebp+8]
 00499638    or          dword ptr [eax-64],100000
 0049963F    mov         eax,dword ptr [ebp+8]
 00499642    mov         edx,dword ptr [ebp+8]
 00499645    lea         esi,[eax-20]
 00499648    lea         edi,[edx-5C]
 0049964B    movs        dword ptr [edi],dword ptr [esi]
 0049964C    movs        dword ptr [edi],dword ptr [esi]
 0049964D    movs        dword ptr [edi],dword ptr [esi]
 0049964E    movs        dword ptr [edi],dword ptr [esi]
 0049964F    mov         eax,dword ptr [ebp+8]
 00499652    test        byte ptr [eax+0C],20
>00499656    je          0049966C
 00499658    mov         eax,dword ptr [ebp+8]
 0049965B    mov         eax,dword ptr [eax-28]
 0049965E    mov         eax,dword ptr [eax+0C]
 00499661    mov         dl,byte ptr ds:[4997D0]
 00499667    call        TFont.SetStyle
 0049966C    mov         eax,dword ptr [ebp+8]
 0049966F    add         eax,0FFFFFFE0
 00499672    push        eax
 00499673    mov         eax,dword ptr [ebp+8]
 00499676    mov         al,byte ptr [eax-29]
 00499679    push        eax
 0049967A    mov         eax,dword ptr [ebp+8]
 0049967D    mov         eax,dword ptr [eax-64]
 00499680    or          eax,400
 00499685    or          eax,100
 0049968A    push        eax
 0049968B    mov         eax,dword ptr [ebp+8]
 0049968E    mov         eax,dword ptr [eax-38]
 00499691    mov         ecx,dword ptr [eax+30]
 00499694    mov         eax,dword ptr [ebp+8]
 00499697    mov         edx,dword ptr [eax-28]
 0049969A    mov         eax,dword ptr [ebp+8]
 0049969D    mov         eax,dword ptr [eax-38]
 004996A0    call        00498C20
 004996A5    mov         eax,dword ptr [ebp+8]
 004996A8    mov         eax,dword ptr [eax-50]
 004996AB    mov         edx,dword ptr [ebp+8]
 004996AE    sub         eax,dword ptr [edx-58]
 004996B1    mov         edx,dword ptr [ebp+8]
 004996B4    mov         edx,dword ptr [edx-14]
 004996B7    mov         ecx,dword ptr [ebp+8]
 004996BA    sub         edx,dword ptr [ecx-1C]
 004996BD    sub         eax,edx
 004996BF    sar         eax,1
>004996C1    jns         004996C6
 004996C3    adc         eax,0
 004996C6    push        eax
 004996C7    push        0
 004996C9    mov         eax,dword ptr [ebp+8]
 004996CC    add         eax,0FFFFFFE0
 004996CF    push        eax
 004996D0    call        user32.OffsetRect
 004996D5    mov         eax,dword ptr [ebp+8]
 004996D8    cmp         byte ptr [eax+8],0
>004996DC    je          00499709
 004996DE    mov         eax,dword ptr [ebp+8]
 004996E1    cmp         byte ptr [eax-29],0
>004996E5    je          00499709
 004996E7    mov         eax,dword ptr [ebp+8]
 004996EA    cmp         byte ptr [eax-5D],0
>004996EE    je          00499709
 004996F0    mov         eax,dword ptr [ebp+8]
 004996F3    cmp         byte ptr [eax-21],0
>004996F7    jne         00499709
 004996F9    push        0
 004996FB    push        1
 004996FD    mov         eax,dword ptr [ebp+8]
 00499700    add         eax,0FFFFFFE0
 00499703    push        eax
 00499704    call        user32.OffsetRect
 00499709    mov         eax,dword ptr [ebp+8]
 0049970C    add         eax,0FFFFFFE0
 0049970F    push        eax
 00499710    mov         eax,dword ptr [ebp+8]
 00499713    mov         al,byte ptr [eax-29]
 00499716    push        eax
 00499717    mov         eax,dword ptr [ebp+8]
 0049971A    mov         eax,dword ptr [eax-64]
 0049971D    push        eax
 0049971E    mov         eax,dword ptr [ebp+8]
 00499721    mov         eax,dword ptr [eax-38]
 00499724    mov         ecx,dword ptr [eax+30]
 00499727    mov         eax,dword ptr [ebp+8]
 0049972A    mov         edx,dword ptr [eax-28]
 0049972D    mov         eax,dword ptr [ebp+8]
 00499730    mov         eax,dword ptr [eax-38]
 00499733    call        00498C20
 00499738    mov         eax,dword ptr [ebp+8]
 0049973B    mov         eax,dword ptr [eax-38]
 0049973E    cmp         word ptr [eax+60],0
>00499743    je          0049979F
 00499745    mov         eax,dword ptr [ebp+8]
 00499748    cmp         byte ptr [eax+8],0
>0049974C    jne         0049979F
 0049974E    mov         eax,dword ptr [ebp+8]
 00499751    mov         eax,dword ptr [eax-18]
 00499754    mov         edx,dword ptr [ebp+8]
 00499757    mov         dword ptr [edx-20],eax
 0049975A    mov         eax,dword ptr [ebp+8]
 0049975D    mov         eax,dword ptr [eax-54]
 00499760    sub         eax,0A
 00499763    mov         edx,dword ptr [ebp+8]
 00499766    mov         dword ptr [edx-18],eax
 00499769    mov         eax,dword ptr [ebp+8]
 0049976C    add         eax,0FFFFFFE0
 0049976F    push        eax
 00499770    mov         eax,dword ptr [ebp+8]
 00499773    mov         al,byte ptr [eax-29]
 00499776    push        eax
 00499777    push        2
 00499779    lea         edx,[ebp-4]
 0049977C    mov         eax,dword ptr [ebp+8]
 0049977F    mov         eax,dword ptr [eax-38]
 00499782    mov         ax,word ptr [eax+60]
 00499786    call        0049795C
 0049978B    mov         ecx,dword ptr [ebp-4]
 0049978E    mov         eax,dword ptr [ebp+8]
 00499791    mov         edx,dword ptr [eax-28]
 00499794    mov         eax,dword ptr [ebp+8]
 00499797    mov         eax,dword ptr [eax-38]
 0049979A    call        00498C20
 0049979F    xor         eax,eax
 004997A1    pop         edx
 004997A2    pop         ecx
 004997A3    pop         ecx
 004997A4    mov         dword ptr fs:[eax],edx
 004997A7    push        4997BC
 004997AC    lea         eax,[ebp-4]
 004997AF    call        @LStrClr
 004997B4    ret
>004997B5    jmp         @HandleFinally
>004997BA    jmp         004997AC
 004997BC    pop         edi
 004997BD    pop         esi
 004997BE    pop         ecx
 004997BF    pop         ebp
 004997C0    ret
*}
end;

//004997D4
procedure BiDiDraw;
begin
{*
 004997D4    push        ebp
 004997D5    mov         ebp,esp
 004997D7    push        0
 004997D9    push        esi
 004997DA    push        edi
 004997DB    xor         eax,eax
 004997DD    push        ebp
 004997DE    push        49A109
 004997E3    push        dword ptr fs:[eax]
 004997E6    mov         dword ptr fs:[eax],esp
 004997E9    mov         eax,dword ptr [ebp+8]
 004997EC    cmp         byte ptr [eax-21],0
>004997F0    je          0049986B
 004997F2    mov         eax,dword ptr [ebp+8]
 004997F5    test        byte ptr [eax+0C],1
>004997F9    jne         00499804
 004997FB    mov         eax,dword ptr [ebp+8]
 004997FE    test        byte ptr [eax+0C],40
>00499802    je          0049984F
 00499804    call        0046BFC0
 00499809    call        0046C0EC
 0049980E    test        al,al
>00499810    je          00499827
 00499812    mov         eax,dword ptr [ebp+8]
 00499815    mov         eax,dword ptr [eax-28]
 00499818    mov         eax,dword ptr [eax+14]
 0049981B    mov         edx,0FF00001D
 00499820    call        TBrush.SetColor
>00499825    jmp         0049983A
 00499827    mov         eax,dword ptr [ebp+8]
 0049982A    mov         eax,dword ptr [eax-28]
 0049982D    mov         eax,dword ptr [eax+14]
 00499830    mov         edx,0FF00000D
 00499835    call        TBrush.SetColor
 0049983A    mov         eax,dword ptr [ebp+8]
 0049983D    mov         eax,dword ptr [eax-28]
 00499840    mov         eax,dword ptr [eax+0C]
 00499843    mov         edx,0FF00000E
 00499848    call        TFont.SetColor
>0049984D    jmp         0049986B
 0049984F    mov         eax,dword ptr [ebp+8]
 00499852    cmp         byte ptr [eax+8],0
>00499856    je          0049986B
 00499858    mov         eax,dword ptr [ebp+8]
 0049985B    mov         eax,dword ptr [eax-28]
 0049985E    mov         eax,dword ptr [eax+14]
 00499861    mov         edx,0FF00001E
 00499866    call        TBrush.SetColor
 0049986B    mov         eax,dword ptr [ebp+8]
 0049986E    cmp         byte ptr [eax-29],0
>00499872    je          00499889
 00499874    mov         eax,dword ptr [ebp+8]
 00499877    cmp         byte ptr [eax-21],0
>0049987B    je          0049989A
 0049987D    mov         eax,dword ptr [ebp+8]
 00499880    mov         eax,dword ptr [eax-38]
 00499883    cmp         byte ptr [eax+38],0
>00499887    jne         0049989A
 00499889    mov         eax,dword ptr [ebp+8]
 0049988C    lea         edx,[eax-20]
 0049988F    mov         eax,dword ptr [ebp+8]
 00499892    mov         eax,dword ptr [eax-28]
 00499895    call        0042F030
 0049989A    mov         eax,dword ptr [ebp+8]
 0049989D    cmp         dword ptr [eax-30],0
>004998A1    je          004998AC
 004998A3    mov         eax,dword ptr [ebp+8]
 004998A6    mov         byte ptr [eax-31],0
>004998AA    jmp         004998D9
 004998AC    mov         eax,dword ptr [ebp+8]
 004998AF    mov         eax,dword ptr [eax-30]
 004998B2    mov         edx,dword ptr ds:[49748C];TPopupMenu
 004998B8    call        @IsClass
 004998BD    test        al,al
>004998BF    je          004998D2
 004998C1    mov         eax,dword ptr [ebp+8]
 004998C4    mov         eax,dword ptr [eax-30]
 004998C7    mov         al,byte ptr [eax+60]
 004998CA    mov         edx,dword ptr [ebp+8]
 004998CD    mov         byte ptr [edx-31],al
>004998D0    jmp         004998D9
 004998D2    mov         eax,dword ptr [ebp+8]
 004998D5    mov         byte ptr [eax-31],0
 004998D9    mov         eax,dword ptr [ebp+8]
 004998DC    mov         eax,dword ptr [eax-18]
 004998DF    dec         eax
 004998E0    mov         edx,dword ptr [ebp+8]
 004998E3    mov         dword ptr [edx-8],eax
 004998E6    mov         eax,dword ptr [ebp+8]
 004998E9    mov         eax,dword ptr [eax-1C]
 004998EC    inc         eax
 004998ED    mov         edx,dword ptr [ebp+8]
 004998F0    mov         dword ptr [edx-0C],eax
 004998F3    mov         eax,dword ptr [ebp+8]
 004998F6    mov         eax,dword ptr [eax-38]
 004998F9    mov         eax,dword ptr [eax+30]
 004998FC    mov         edx,49A120;'-'
 00499901    call        @LStrCmp
>00499906    jne         0049993C
 00499908    mov         eax,dword ptr [ebp+8]
 0049990B    lea         edx,[eax-20]
 0049990E    mov         eax,dword ptr [ebp+8]
 00499911    mov         eax,dword ptr [eax-28]
 00499914    call        0042F030
 00499919    mov         eax,dword ptr [ebp+8]
 0049991C    mov         eax,dword ptr [eax-8]
 0049991F    add         eax,2
 00499922    mov         edx,dword ptr [ebp+8]
 00499925    mov         dword ptr [edx-10],eax
 00499928    mov         eax,dword ptr [ebp+8]
 0049992B    xor         edx,edx
 0049992D    mov         dword ptr [eax-8],edx
 00499930    mov         eax,dword ptr [ebp+8]
 00499933    mov         byte ptr [eax-39],0
>00499937    jmp         00499DD5
 0049993C    mov         eax,dword ptr [ebp+8]
 0049993F    cmp         dword ptr [eax-40],0
>00499943    je          00499991
 00499945    mov         eax,dword ptr [ebp+8]
 00499948    mov         eax,dword ptr [eax-38]
 0049994B    cmp         dword ptr [eax+40],0FFFFFFFF
>0049994F    jle         00499967
 00499951    mov         eax,dword ptr [ebp+8]
 00499954    mov         eax,dword ptr [eax-40]
 00499957    call        00495384
 0049995C    mov         edx,dword ptr [ebp+8]
 0049995F    mov         edx,dword ptr [edx-38]
 00499962    cmp         eax,dword ptr [edx+40]
>00499965    jg          00499995
 00499967    mov         eax,dword ptr [ebp+8]
 0049996A    mov         eax,dword ptr [eax-38]
 0049996D    cmp         byte ptr [eax+38],0
>00499971    je          00499991
 00499973    mov         eax,dword ptr [ebp+8]
 00499976    mov         eax,dword ptr [eax-38]
 00499979    cmp         dword ptr [eax+4C],0
>0049997D    je          00499995
 0049997F    mov         eax,dword ptr [ebp+8]
 00499982    mov         eax,dword ptr [eax-38]
 00499985    mov         eax,dword ptr [eax+4C]
 00499988    mov         edx,dword ptr [eax]
 0049998A    call        dword ptr [edx+1C]
 0049998D    test        al,al
>0049998F    jne         00499995
 00499991    xor         eax,eax
>00499993    jmp         00499997
 00499995    mov         al,1
 00499997    mov         edx,dword ptr [ebp+8]
 0049999A    mov         byte ptr [edx-41],al
 0049999D    mov         eax,dword ptr [ebp+8]
 004999A0    cmp         byte ptr [eax-41],0
>004999A4    jne         004999CC
 004999A6    mov         eax,dword ptr [ebp+8]
 004999A9    mov         eax,dword ptr [eax-38]
 004999AC    cmp         dword ptr [eax+4C],0
>004999B0    je          00499D78
 004999B6    mov         eax,dword ptr [ebp+8]
 004999B9    mov         eax,dword ptr [eax-38]
 004999BC    mov         eax,dword ptr [eax+4C]
 004999BF    mov         edx,dword ptr [eax]
 004999C1    call        dword ptr [edx+1C]
 004999C4    test        al,al
>004999C6    jne         00499D78
 004999CC    mov         eax,dword ptr [ebp+8]
 004999CF    mov         byte ptr [eax-39],1
 004999D3    mov         eax,dword ptr [ebp+8]
 004999D6    cmp         byte ptr [eax-41],0
>004999DA    je          00499A08
 004999DC    mov         eax,dword ptr [ebp+8]
 004999DF    mov         eax,dword ptr [eax-8]
 004999E2    mov         edx,dword ptr [ebp+8]
 004999E5    mov         edx,dword ptr [edx-40]
 004999E8    sub         eax,dword ptr [edx+34]
 004999EB    mov         edx,dword ptr [ebp+8]
 004999EE    mov         dword ptr [edx-10],eax
 004999F1    mov         eax,dword ptr [ebp+8]
 004999F4    mov         eax,dword ptr [eax-0C]
 004999F7    mov         edx,dword ptr [ebp+8]
 004999FA    mov         edx,dword ptr [edx-40]
 004999FD    add         eax,dword ptr [edx+30]
 00499A00    mov         edx,dword ptr [ebp+8]
 00499A03    mov         dword ptr [edx-4],eax
>00499A06    jmp         00499A26
 00499A08    mov         eax,dword ptr [ebp+8]
 00499A0B    mov         eax,dword ptr [eax-8]
 00499A0E    sub         eax,10
 00499A11    mov         edx,dword ptr [ebp+8]
 00499A14    mov         dword ptr [edx-10],eax
 00499A17    mov         eax,dword ptr [ebp+8]
 00499A1A    mov         eax,dword ptr [eax-0C]
 00499A1D    add         eax,10
 00499A20    mov         edx,dword ptr [ebp+8]
 00499A23    mov         dword ptr [edx-4],eax
 00499A26    mov         eax,dword ptr [ebp+8]
 00499A29    mov         eax,dword ptr [eax-38]
 00499A2C    cmp         byte ptr [eax+38],0
>00499A30    je          00499AE9
 00499A36    mov         eax,dword ptr [ebp+8]
 00499A39    dec         dword ptr [eax-10]
 00499A3C    mov         eax,dword ptr [ebp+8]
 00499A3F    inc         dword ptr [eax-4]
 00499A42    mov         eax,dword ptr [ebp+8]
 00499A45    mov         eax,dword ptr [eax-28]
 00499A48    mov         eax,dword ptr [eax+14]
 00499A4B    call        TBrush.GetColor
 00499A50    mov         edx,dword ptr [ebp+8]
 00499A53    mov         dword ptr [edx-48],eax
 00499A56    mov         eax,dword ptr [ebp+8]
 00499A59    test        byte ptr [eax+0C],1
>00499A5D    jne         00499AA5
 00499A5F    mov         eax,dword ptr [ebp+8]
 00499A62    mov         eax,dword ptr [eax-28]
 00499A65    mov         eax,dword ptr [eax+14]
 00499A68    call        TBrush.GetColor
 00499A6D    mov         edx,dword ptr [ebp+8]
 00499A70    mov         dword ptr [edx-48],eax
 00499A73    mov         edx,0FF000014
 00499A78    mov         eax,0FF00000F
 00499A7D    call        00436FC8
 00499A82    mov         edx,eax
 00499A84    mov         eax,dword ptr [ebp+8]
 00499A87    mov         eax,dword ptr [eax-28]
 00499A8A    mov         eax,dword ptr [eax+14]
 00499A8D    call        0042EA6C
 00499A92    mov         eax,dword ptr [ebp+8]
 00499A95    lea         edx,[eax-10]
 00499A98    mov         eax,dword ptr [ebp+8]
 00499A9B    mov         eax,dword ptr [eax-28]
 00499A9E    call        0042F030
>00499AA3    jmp         00499AC9
 00499AA5    mov         eax,dword ptr [ebp+8]
 00499AA8    mov         eax,dword ptr [eax-28]
 00499AAB    mov         eax,dword ptr [eax+14]
 00499AAE    mov         edx,0FF00000F
 00499AB3    call        TBrush.SetColor
 00499AB8    mov         eax,dword ptr [ebp+8]
 00499ABB    lea         edx,[eax-10]
 00499ABE    mov         eax,dword ptr [ebp+8]
 00499AC1    mov         eax,dword ptr [eax-28]
 00499AC4    call        0042F030
 00499AC9    mov         eax,dword ptr [ebp+8]
 00499ACC    mov         edx,dword ptr [eax-48]
 00499ACF    mov         eax,dword ptr [ebp+8]
 00499AD2    mov         eax,dword ptr [eax-28]
 00499AD5    mov         eax,dword ptr [eax+14]
 00499AD8    call        TBrush.SetColor
 00499ADD    mov         eax,dword ptr [ebp+8]
 00499AE0    dec         dword ptr [eax-8]
 00499AE3    mov         eax,dword ptr [ebp+8]
 00499AE6    inc         dword ptr [eax-0C]
 00499AE9    mov         eax,dword ptr [ebp+8]
 00499AEC    cmp         byte ptr [eax-41],0
>00499AF0    je          00499C50
 00499AF6    mov         eax,dword ptr [ebp+8]
 00499AF9    mov         eax,dword ptr [eax-38]
 00499AFC    cmp         dword ptr [eax+40],0FFFFFFFF
>00499B00    jle         00499B4F
 00499B02    mov         eax,dword ptr [ebp+8]
 00499B05    mov         eax,dword ptr [eax-40]
 00499B08    call        00495384
 00499B0D    mov         edx,dword ptr [ebp+8]
 00499B10    mov         edx,dword ptr [edx-38]
 00499B13    cmp         eax,dword ptr [edx+40]
>00499B16    jle         00499B4F
 00499B18    mov         eax,dword ptr [ebp+8]
 00499B1B    mov         eax,dword ptr [eax-0C]
 00499B1E    push        eax
 00499B1F    mov         eax,dword ptr [ebp+8]
 00499B22    mov         eax,dword ptr [eax-38]
 00499B25    mov         eax,dword ptr [eax+40]
 00499B28    push        eax
 00499B29    mov         eax,dword ptr [ebp+8]
 00499B2C    mov         eax,dword ptr [eax-38]
 00499B2F    mov         al,byte ptr [eax+39]
 00499B32    push        eax
 00499B33    mov         eax,dword ptr [ebp+8]
 00499B36    mov         ecx,dword ptr [eax-10]
 00499B39    mov         eax,dword ptr [ebp+8]
 00499B3C    mov         edx,dword ptr [eax-28]
 00499B3F    mov         eax,dword ptr [ebp+8]
 00499B42    mov         eax,dword ptr [eax-40]
 00499B45    call        00495958
>00499B4A    jmp         00499D5E
 00499B4F    mov         dl,1
 00499B51    mov         eax,[0042CF48];TBitmap
 00499B56    call        TBitmap.Create
 00499B5B    mov         edx,dword ptr [ebp+8]
 00499B5E    mov         dword ptr [edx-4C],eax
 00499B61    xor         eax,eax
 00499B63    push        ebp
 00499B64    push        499C49
 00499B69    push        dword ptr fs:[eax]
 00499B6C    mov         dword ptr fs:[eax],esp
 00499B6F    mov         eax,dword ptr [ebp+8]
 00499B72    mov         eax,dword ptr [eax-4C]
 00499B75    mov         dl,1
 00499B77    mov         ecx,dword ptr [eax]
 00499B79    call        dword ptr [ecx+3C]
 00499B7C    push        7FF8
 00499B81    push        0
 00499B83    call        user32.LoadBitmapA
 00499B88    mov         edx,eax
 00499B8A    mov         eax,dword ptr [ebp+8]
 00499B8D    mov         eax,dword ptr [eax-4C]
 00499B90    call        TBitmap.SetHandle
 00499B95    mov         eax,dword ptr [ebp+8]
 00499B98    mov         eax,dword ptr [eax-28]
 00499B9B    mov         eax,dword ptr [eax+0C]
 00499B9E    mov         eax,dword ptr [eax+18]
 00499BA1    mov         edx,dword ptr [ebp+8]
 00499BA4    mov         dword ptr [edx-48],eax
 00499BA7    mov         eax,dword ptr [ebp+8]
 00499BAA    mov         eax,dword ptr [eax-28]
 00499BAD    mov         eax,dword ptr [eax+0C]
 00499BB0    mov         edx,0FF000012
 00499BB5    call        TFont.SetColor
 00499BBA    mov         eax,dword ptr [ebp+8]
 00499BBD    mov         eax,dword ptr [eax-4C]
 00499BC0    push        eax
 00499BC1    mov         eax,dword ptr [ebp+8]
 00499BC4    mov         eax,dword ptr [eax-4C]
 00499BC7    mov         edx,dword ptr [eax]
 00499BC9    call        dword ptr [edx+20]
 00499BCC    mov         edx,dword ptr [ebp+8]
 00499BCF    mov         edx,dword ptr [edx-4]
 00499BD2    mov         ecx,dword ptr [ebp+8]
 00499BD5    sub         edx,dword ptr [ecx-0C]
 00499BD8    sub         edx,eax
 00499BDA    sar         edx,1
>00499BDC    jns         00499BE1
 00499BDE    adc         edx,0
 00499BE1    mov         eax,dword ptr [ebp+8]
 00499BE4    add         edx,dword ptr [eax-0C]
 00499BE7    inc         edx
 00499BE8    push        edx
 00499BE9    mov         eax,dword ptr [ebp+8]
 00499BEC    mov         eax,dword ptr [eax-4C]
 00499BEF    mov         edx,dword ptr [eax]
 00499BF1    call        dword ptr [edx+2C]
 00499BF4    mov         edx,dword ptr [ebp+8]
 00499BF7    mov         edx,dword ptr [edx-8]
 00499BFA    mov         ecx,dword ptr [ebp+8]
 00499BFD    sub         edx,dword ptr [ecx-10]
 00499C00    sub         edx,eax
 00499C02    sar         edx,1
>00499C04    jns         00499C09
 00499C06    adc         edx,0
 00499C09    mov         eax,dword ptr [ebp+8]
 00499C0C    add         edx,dword ptr [eax-10]
 00499C0F    inc         edx
 00499C10    mov         eax,dword ptr [ebp+8]
 00499C13    mov         eax,dword ptr [eax-28]
 00499C16    pop         ecx
 00499C17    call        0042EF28
 00499C1C    mov         eax,dword ptr [ebp+8]
 00499C1F    mov         edx,dword ptr [eax-48]
 00499C22    mov         eax,dword ptr [ebp+8]
 00499C25    mov         eax,dword ptr [eax-28]
 00499C28    mov         eax,dword ptr [eax+0C]
 00499C2B    call        TFont.SetColor
 00499C30    xor         eax,eax
 00499C32    pop         edx
 00499C33    pop         ecx
 00499C34    pop         ecx
 00499C35    mov         dword ptr fs:[eax],edx
 00499C38    push        499D5E
 00499C3D    mov         eax,dword ptr [ebp+8]
 00499C40    mov         eax,dword ptr [eax-4C]
 00499C43    call        TObject.Free
 00499C48    ret
>00499C49    jmp         @HandleFinally
>00499C4E    jmp         00499C3D
 00499C50    mov         eax,dword ptr [ebp+8]
 00499C53    mov         edx,dword ptr [ebp+8]
 00499C56    lea         esi,[eax-10]
 00499C59    lea         edi,[edx-5C]
 00499C5C    movs        dword ptr [edi],dword ptr [esi]
 00499C5D    movs        dword ptr [edi],dword ptr [esi]
 00499C5E    movs        dword ptr [edi],dword ptr [esi]
 00499C5F    movs        dword ptr [edi],dword ptr [esi]
 00499C60    mov         eax,dword ptr [ebp+8]
 00499C63    mov         eax,dword ptr [eax-38]
 00499C66    mov         eax,dword ptr [eax+4C]
 00499C69    mov         edx,dword ptr [eax]
 00499C6B    call        dword ptr [edx+2C]
 00499C6E    mov         edx,dword ptr [ebp+8]
 00499C71    mov         edx,dword ptr [edx-8]
 00499C74    mov         ecx,dword ptr [ebp+8]
 00499C77    sub         edx,dword ptr [ecx-10]
 00499C7A    cmp         eax,edx
>00499C7C    jge         00499CCC
 00499C7E    mov         eax,dword ptr [ebp+8]
 00499C81    mov         eax,dword ptr [eax-38]
 00499C84    mov         eax,dword ptr [eax+4C]
 00499C87    mov         edx,dword ptr [eax]
 00499C89    call        dword ptr [edx+2C]
 00499C8C    mov         edx,dword ptr [ebp+8]
 00499C8F    mov         edx,dword ptr [edx-8]
 00499C92    mov         ecx,dword ptr [ebp+8]
 00499C95    sub         edx,dword ptr [ecx-10]
 00499C98    sub         edx,eax
 00499C9A    sar         edx,1
>00499C9C    jns         00499CA1
 00499C9E    adc         edx,0
 00499CA1    mov         eax,dword ptr [ebp+8]
 00499CA4    mov         eax,dword ptr [eax-8]
 00499CA7    sub         eax,edx
 00499CA9    inc         eax
 00499CAA    mov         edx,dword ptr [ebp+8]
 00499CAD    mov         dword ptr [edx-8],eax
 00499CB0    mov         eax,dword ptr [ebp+8]
 00499CB3    mov         eax,dword ptr [eax-38]
 00499CB6    mov         eax,dword ptr [eax+4C]
 00499CB9    mov         edx,dword ptr [eax]
 00499CBB    call        dword ptr [edx+2C]
 00499CBE    mov         edx,dword ptr [ebp+8]
 00499CC1    mov         edx,dword ptr [edx-8]
 00499CC4    sub         edx,eax
 00499CC6    mov         eax,dword ptr [ebp+8]
 00499CC9    mov         dword ptr [eax-10],edx
 00499CCC    mov         eax,dword ptr [ebp+8]
 00499CCF    mov         eax,dword ptr [eax-38]
 00499CD2    mov         eax,dword ptr [eax+4C]
 00499CD5    mov         edx,dword ptr [eax]
 00499CD7    call        dword ptr [edx+20]
 00499CDA    mov         edx,dword ptr [ebp+8]
 00499CDD    mov         edx,dword ptr [edx-4]
 00499CE0    mov         ecx,dword ptr [ebp+8]
 00499CE3    sub         edx,dword ptr [ecx-0C]
 00499CE6    cmp         eax,edx
>00499CE8    jge         00499D34
 00499CEA    mov         eax,dword ptr [ebp+8]
 00499CED    mov         eax,dword ptr [eax-38]
 00499CF0    mov         eax,dword ptr [eax+4C]
 00499CF3    mov         edx,dword ptr [eax]
 00499CF5    call        dword ptr [edx+20]
 00499CF8    mov         edx,dword ptr [ebp+8]
 00499CFB    mov         edx,dword ptr [edx-4]
 00499CFE    mov         ecx,dword ptr [ebp+8]
 00499D01    sub         edx,dword ptr [ecx-0C]
 00499D04    sub         edx,eax
 00499D06    sar         edx,1
>00499D08    jns         00499D0D
 00499D0A    adc         edx,0
 00499D0D    mov         eax,dword ptr [ebp+8]
 00499D10    add         edx,dword ptr [eax-0C]
 00499D13    inc         edx
 00499D14    mov         eax,dword ptr [ebp+8]
 00499D17    mov         dword ptr [eax-0C],edx
 00499D1A    mov         eax,dword ptr [ebp+8]
 00499D1D    mov         eax,dword ptr [eax-38]
 00499D20    mov         eax,dword ptr [eax+4C]
 00499D23    mov         edx,dword ptr [eax]
 00499D25    call        dword ptr [edx+20]
 00499D28    mov         edx,dword ptr [ebp+8]
 00499D2B    add         eax,dword ptr [edx-0C]
 00499D2E    mov         edx,dword ptr [ebp+8]
 00499D31    mov         dword ptr [edx-4],eax
 00499D34    mov         eax,dword ptr [ebp+8]
 00499D37    mov         eax,dword ptr [eax-38]
 00499D3A    mov         ecx,dword ptr [eax+4C]
 00499D3D    mov         eax,dword ptr [ebp+8]
 00499D40    lea         edx,[eax-10]
 00499D43    mov         eax,dword ptr [ebp+8]
 00499D46    mov         eax,dword ptr [eax-28]
 00499D49    call        0042F2BC
 00499D4E    mov         eax,dword ptr [ebp+8]
 00499D51    mov         edx,dword ptr [ebp+8]
 00499D54    lea         esi,[eax-5C]
 00499D57    lea         edi,[edx-10]
 00499D5A    movs        dword ptr [edi],dword ptr [esi]
 00499D5B    movs        dword ptr [edi],dword ptr [esi]
 00499D5C    movs        dword ptr [edi],dword ptr [esi]
 00499D5D    movs        dword ptr [edi],dword ptr [esi]
 00499D5E    mov         eax,dword ptr [ebp+8]
 00499D61    mov         eax,dword ptr [eax-38]
 00499D64    cmp         byte ptr [eax+38],0
>00499D68    je          00499DD5
 00499D6A    mov         eax,dword ptr [ebp+8]
 00499D6D    dec         dword ptr [eax-8]
 00499D70    mov         eax,dword ptr [ebp+8]
 00499D73    dec         dword ptr [eax-4]
>00499D76    jmp         00499DD5
 00499D78    mov         eax,dword ptr [ebp+8]
 00499D7B    cmp         dword ptr [eax-40],0
>00499D7F    je          00499DB6
 00499D81    mov         eax,dword ptr [ebp+8]
 00499D84    cmp         byte ptr [eax+8],0
>00499D88    jne         00499DB6
 00499D8A    mov         eax,dword ptr [ebp+8]
 00499D8D    mov         eax,dword ptr [eax-8]
 00499D90    mov         edx,dword ptr [ebp+8]
 00499D93    mov         edx,dword ptr [edx-40]
 00499D96    sub         eax,dword ptr [edx+34]
 00499D99    mov         edx,dword ptr [ebp+8]
 00499D9C    mov         dword ptr [edx-10],eax
 00499D9F    mov         eax,dword ptr [ebp+8]
 00499DA2    mov         eax,dword ptr [eax-0C]
 00499DA5    mov         edx,dword ptr [ebp+8]
 00499DA8    mov         edx,dword ptr [edx-40]
 00499DAB    add         eax,dword ptr [edx+30]
 00499DAE    mov         edx,dword ptr [ebp+8]
 00499DB1    mov         dword ptr [edx-4],eax
>00499DB4    jmp         00499DCE
 00499DB6    mov         eax,dword ptr [ebp+8]
 00499DB9    mov         eax,dword ptr [eax-8]
 00499DBC    mov         edx,dword ptr [ebp+8]
 00499DBF    mov         dword ptr [edx-10],eax
 00499DC2    mov         eax,dword ptr [ebp+8]
 00499DC5    mov         eax,dword ptr [eax-0C]
 00499DC8    mov         edx,dword ptr [ebp+8]
 00499DCB    mov         dword ptr [edx-4],eax
 00499DCE    mov         eax,dword ptr [ebp+8]
 00499DD1    mov         byte ptr [eax-39],0
 00499DD5    mov         eax,dword ptr [ebp+8]
 00499DD8    dec         dword ptr [eax-10]
 00499DDB    mov         eax,dword ptr [ebp+8]
 00499DDE    dec         dword ptr [eax-0C]
 00499DE1    mov         eax,dword ptr [ebp+8]
 00499DE4    add         dword ptr [eax-8],2
 00499DE8    mov         eax,dword ptr [ebp+8]
 00499DEB    add         dword ptr [eax-4],2
 00499DEF    mov         eax,dword ptr [ebp+8]
 00499DF2    mov         eax,dword ptr [eax-38]
 00499DF5    cmp         byte ptr [eax+38],0
>00499DF9    jne         00499E16
 00499DFB    mov         eax,dword ptr [ebp+8]
 00499DFE    cmp         byte ptr [eax-29],0
>00499E02    je          00499E42
 00499E04    mov         eax,dword ptr [ebp+8]
 00499E07    cmp         byte ptr [eax-39],0
>00499E0B    je          00499E42
 00499E0D    mov         eax,dword ptr [ebp+8]
 00499E10    cmp         byte ptr [eax-21],0
>00499E14    jne         00499E42
 00499E16    push        0F
 00499E18    mov         eax,dword ptr [ebp+8]
 00499E1B    mov         eax,dword ptr [eax-38]
 00499E1E    movzx       eax,byte ptr [eax+38]
 00499E22    mov         eax,dword ptr [eax*4+56C998]
 00499E29    push        eax
 00499E2A    mov         eax,dword ptr [ebp+8]
 00499E2D    add         eax,0FFFFFFF0
 00499E30    push        eax
 00499E31    mov         eax,dword ptr [ebp+8]
 00499E34    mov         eax,dword ptr [eax-28]
 00499E37    call        0042F6A0
 00499E3C    push        eax
 00499E3D    call        user32.DrawEdge
 00499E42    mov         eax,dword ptr [ebp+8]
 00499E45    cmp         byte ptr [eax-29],0
>00499E49    je          00499E97
 00499E4B    mov         eax,dword ptr [ebp+8]
 00499E4E    cmp         byte ptr [eax-39],0
>00499E52    je          00499E61
 00499E54    mov         eax,dword ptr [ebp+8]
 00499E57    mov         eax,dword ptr [eax-10]
 00499E5A    dec         eax
 00499E5B    mov         edx,dword ptr [ebp+8]
 00499E5E    mov         dword ptr [edx-18],eax
 00499E61    mov         eax,dword ptr [ebp+8]
 00499E64    cmp         byte ptr [eax-5D],0
>00499E68    je          00499E73
 00499E6A    mov         eax,dword ptr [ebp+8]
 00499E6D    cmp         byte ptr [eax+8],0
>00499E71    jne         00499E86
 00499E73    mov         eax,dword ptr [ebp+8]
 00499E76    mov         eax,dword ptr [eax-28]
 00499E79    mov         eax,dword ptr [eax+14]
 00499E7C    mov         edx,0FF00000D
 00499E81    call        TBrush.SetColor
 00499E86    mov         eax,dword ptr [ebp+8]
 00499E89    lea         edx,[eax-20]
 00499E8C    mov         eax,dword ptr [ebp+8]
 00499E8F    mov         eax,dword ptr [eax-28]
 00499E92    call        0042F030
 00499E97    mov         eax,dword ptr [ebp+8]
 00499E9A    cmp         byte ptr [eax+8],0
>00499E9E    je          00499F17
 00499EA0    mov         eax,dword ptr [ebp+8]
 00499EA3    cmp         byte ptr [eax-5D],0
>00499EA7    je          00499F17
 00499EA9    mov         eax,dword ptr [ebp+8]
 00499EAC    cmp         byte ptr [eax-21],0
>00499EB0    jne         00499F17
 00499EB2    mov         eax,dword ptr [ebp+8]
 00499EB5    cmp         byte ptr [eax-29],0
>00499EB9    je          00499ED9
 00499EBB    push        0F
 00499EBD    push        2
 00499EBF    mov         eax,dword ptr [ebp+8]
 00499EC2    add         eax,0FFFFFFE0
 00499EC5    push        eax
 00499EC6    mov         eax,dword ptr [ebp+8]
 00499EC9    mov         eax,dword ptr [eax-28]
 00499ECC    call        0042F6A0
 00499ED1    push        eax
 00499ED2    call        user32.DrawEdge
>00499ED7    jmp         00499EFE
 00499ED9    mov         eax,dword ptr [ebp+8]
 00499EDC    test        byte ptr [eax+0C],40
>00499EE0    je          00499EFE
 00499EE2    push        0F
 00499EE4    push        4
 00499EE6    mov         eax,dword ptr [ebp+8]
 00499EE9    add         eax,0FFFFFFE0
 00499EEC    push        eax
 00499EED    mov         eax,dword ptr [ebp+8]
 00499EF0    mov         eax,dword ptr [eax-28]
 00499EF3    call        0042F6A0
 00499EF8    push        eax
 00499EF9    call        user32.DrawEdge
 00499EFE    mov         eax,dword ptr [ebp+8]
 00499F01    cmp         byte ptr [eax-29],0
>00499F05    jne         00499F17
 00499F07    push        0FF
 00499F09    push        0
 00499F0B    mov         eax,dword ptr [ebp+8]
 00499F0E    add         eax,0FFFFFFE0
 00499F11    push        eax
 00499F12    call        user32.OffsetRect
 00499F17    mov         eax,dword ptr [ebp+8]
 00499F1A    cmp         byte ptr [eax-29],0
>00499F1E    je          00499F29
 00499F20    mov         eax,dword ptr [ebp+8]
 00499F23    cmp         byte ptr [eax-39],0
>00499F27    jne         00499F36
 00499F29    mov         eax,dword ptr [ebp+8]
 00499F2C    mov         eax,dword ptr [eax-10]
 00499F2F    dec         eax
 00499F30    mov         edx,dword ptr [ebp+8]
 00499F33    mov         dword ptr [edx-18],eax
 00499F36    mov         eax,dword ptr [ebp+8]
 00499F39    add         dword ptr [eax-20],2
 00499F3D    mov         eax,dword ptr [ebp+8]
 00499F40    dec         dword ptr [eax-18]
 00499F43    mov         eax,dword ptr [ebp+8]
 00499F46    movzx       eax,byte ptr [eax-31]
 00499F4A    mov         ax,word ptr [eax*2+56C990]
 00499F52    or          ax,60
 00499F56    movzx       eax,ax
 00499F59    mov         edx,dword ptr [ebp+8]
 00499F5C    mov         dword ptr [edx-64],eax
 00499F5F    mov         eax,dword ptr [ebp+8]
 00499F62    cmp         byte ptr [eax-65],0
>00499F66    je          00499F7B
 00499F68    mov         eax,dword ptr [ebp+8]
 00499F6B    test        byte ptr [eax+0D],1
>00499F6F    je          00499F7B
 00499F71    mov         eax,dword ptr [ebp+8]
 00499F74    or          dword ptr [eax-64],100000
 00499F7B    mov         eax,dword ptr [ebp+8]
 00499F7E    mov         edx,dword ptr [ebp+8]
 00499F81    lea         esi,[eax-20]
 00499F84    lea         edi,[edx-5C]
 00499F87    movs        dword ptr [edi],dword ptr [esi]
 00499F88    movs        dword ptr [edi],dword ptr [esi]
 00499F89    movs        dword ptr [edi],dword ptr [esi]
 00499F8A    movs        dword ptr [edi],dword ptr [esi]
 00499F8B    mov         eax,dword ptr [ebp+8]
 00499F8E    test        byte ptr [eax+0C],20
>00499F92    je          00499FA8
 00499F94    mov         eax,dword ptr [ebp+8]
 00499F97    mov         eax,dword ptr [eax-28]
 00499F9A    mov         eax,dword ptr [eax+0C]
 00499F9D    mov         dl,byte ptr ds:[49A124]
 00499FA3    call        TFont.SetStyle
 00499FA8    mov         eax,dword ptr [ebp+8]
 00499FAB    add         eax,0FFFFFFE0
 00499FAE    push        eax
 00499FAF    mov         eax,dword ptr [ebp+8]
 00499FB2    mov         al,byte ptr [eax-29]
 00499FB5    push        eax
 00499FB6    mov         eax,dword ptr [ebp+8]
 00499FB9    mov         eax,dword ptr [eax-64]
 00499FBC    or          eax,400
 00499FC1    or          eax,100
 00499FC6    push        eax
 00499FC7    mov         eax,dword ptr [ebp+8]
 00499FCA    mov         eax,dword ptr [eax-38]
 00499FCD    mov         ecx,dword ptr [eax+30]
 00499FD0    mov         eax,dword ptr [ebp+8]
 00499FD3    mov         edx,dword ptr [eax-28]
 00499FD6    mov         eax,dword ptr [ebp+8]
 00499FD9    mov         eax,dword ptr [eax-38]
 00499FDC    call        00498C20
 00499FE1    mov         eax,dword ptr [ebp+8]
 00499FE4    mov         eax,dword ptr [eax-5C]
 00499FE7    mov         edx,dword ptr [ebp+8]
 00499FEA    mov         dword ptr [edx-20],eax
 00499FED    mov         eax,dword ptr [ebp+8]
 00499FF0    mov         eax,dword ptr [eax-54]
 00499FF3    mov         edx,dword ptr [ebp+8]
 00499FF6    mov         dword ptr [edx-18],eax
 00499FF9    mov         eax,dword ptr [ebp+8]
 00499FFC    mov         eax,dword ptr [eax-50]
 00499FFF    mov         edx,dword ptr [ebp+8]
 0049A002    sub         eax,dword ptr [edx-58]
 0049A005    mov         edx,dword ptr [ebp+8]
 0049A008    mov         edx,dword ptr [edx-14]
 0049A00B    mov         ecx,dword ptr [ebp+8]
 0049A00E    sub         edx,dword ptr [ecx-1C]
 0049A011    sub         eax,edx
 0049A013    sar         eax,1
>0049A015    jns         0049A01A
 0049A017    adc         eax,0
 0049A01A    push        eax
 0049A01B    push        0
 0049A01D    mov         eax,dword ptr [ebp+8]
 0049A020    add         eax,0FFFFFFE0
 0049A023    push        eax
 0049A024    call        user32.OffsetRect
 0049A029    mov         eax,dword ptr [ebp+8]
 0049A02C    cmp         byte ptr [eax+8],0
>0049A030    je          0049A054
 0049A032    mov         eax,dword ptr [ebp+8]
 0049A035    cmp         byte ptr [eax-29],0
>0049A039    je          0049A054
 0049A03B    mov         eax,dword ptr [ebp+8]
 0049A03E    cmp         byte ptr [eax-5D],0
>0049A042    je          0049A054
 0049A044    push        0
 0049A046    push        1
 0049A048    mov         eax,dword ptr [ebp+8]
 0049A04B    add         eax,0FFFFFFE0
 0049A04E    push        eax
 0049A04F    call        user32.OffsetRect
 0049A054    mov         eax,dword ptr [ebp+8]
 0049A057    add         eax,0FFFFFFE0
 0049A05A    push        eax
 0049A05B    mov         eax,dword ptr [ebp+8]
 0049A05E    mov         al,byte ptr [eax-29]
 0049A061    push        eax
 0049A062    mov         eax,dword ptr [ebp+8]
 0049A065    mov         eax,dword ptr [eax-64]
 0049A068    push        eax
 0049A069    mov         eax,dword ptr [ebp+8]
 0049A06C    mov         eax,dword ptr [eax-38]
 0049A06F    mov         ecx,dword ptr [eax+30]
 0049A072    mov         eax,dword ptr [ebp+8]
 0049A075    mov         edx,dword ptr [eax-28]
 0049A078    mov         eax,dword ptr [ebp+8]
 0049A07B    mov         eax,dword ptr [eax-38]
 0049A07E    call        00498C20
 0049A083    mov         eax,dword ptr [ebp+8]
 0049A086    mov         eax,dword ptr [eax-38]
 0049A089    cmp         word ptr [eax+60],0
>0049A08E    je          0049A0F3
 0049A090    mov         eax,dword ptr [ebp+8]
 0049A093    cmp         byte ptr [eax+8],0
>0049A097    jne         0049A0F3
 0049A099    lea         edx,[ebp-4]
 0049A09C    mov         eax,dword ptr [ebp+8]
 0049A09F    mov         eax,dword ptr [eax-38]
 0049A0A2    mov         ax,word ptr [eax+60]
 0049A0A6    call        0049795C
 0049A0AB    mov         eax,dword ptr [ebp+8]
 0049A0AE    mov         dword ptr [eax-20],0A
 0049A0B5    mov         eax,dword ptr [ebp+8]
 0049A0B8    mov         eax,dword ptr [eax-28]
 0049A0BB    mov         edx,dword ptr [ebp-4]
 0049A0BE    call        0042F43C
 0049A0C3    mov         edx,dword ptr [ebp+8]
 0049A0C6    add         eax,dword ptr [edx-20]
 0049A0C9    mov         edx,dword ptr [ebp+8]
 0049A0CC    mov         dword ptr [edx-18],eax
 0049A0CF    mov         eax,dword ptr [ebp+8]
 0049A0D2    add         eax,0FFFFFFE0
 0049A0D5    push        eax
 0049A0D6    mov         eax,dword ptr [ebp+8]
 0049A0D9    mov         al,byte ptr [eax-29]
 0049A0DC    push        eax
 0049A0DD    push        2
 0049A0DF    mov         eax,dword ptr [ebp+8]
 0049A0E2    mov         edx,dword ptr [eax-28]
 0049A0E5    mov         eax,dword ptr [ebp+8]
 0049A0E8    mov         eax,dword ptr [eax-38]
 0049A0EB    mov         ecx,dword ptr [ebp-4]
 0049A0EE    call        00498C20
 0049A0F3    xor         eax,eax
 0049A0F5    pop         edx
 0049A0F6    pop         ecx
 0049A0F7    pop         ecx
 0049A0F8    mov         dword ptr fs:[eax],edx
 0049A0FB    push        49A110
 0049A100    lea         eax,[ebp-4]
 0049A103    call        @LStrClr
 0049A108    ret
>0049A109    jmp         @HandleFinally
>0049A10E    jmp         0049A100
 0049A110    pop         edi
 0049A111    pop         esi
 0049A112    pop         ecx
 0049A113    pop         ebp
 0049A114    ret
*}
end;

//0049A128
procedure TMenuItem.AdvancedDrawItem(ACanvas:TCanvas; ARect:TRect; State:TOwnerDrawState; TopLevel:Boolean);
begin
{*
 0049A128    push        ebp
 0049A129    mov         ebp,esp
 0049A12B    add         esp,0FFFFFF98
 0049A12E    push        ebx
 0049A12F    push        esi
 0049A130    push        edi
 0049A131    mov         esi,ecx
 0049A133    lea         edi,[ebp-20]
 0049A136    movs        dword ptr [edi],dword ptr [esi]
 0049A137    movs        dword ptr [edi],dword ptr [esi]
 0049A138    movs        dword ptr [edi],dword ptr [esi]
 0049A139    movs        dword ptr [edi],dword ptr [esi]
 0049A13A    mov         dword ptr [ebp-28],edx
 0049A13D    mov         dword ptr [ebp-38],eax
 0049A140    mov         eax,dword ptr [ebp-38]
 0049A143    call        TMenuItem.GetParentMenu
 0049A148    mov         dword ptr [ebp-30],eax
 0049A14B    mov         eax,dword ptr [ebp-38]
 0049A14E    call        TMenuItem.GetImageList
 0049A153    mov         dword ptr [ebp-40],eax
 0049A156    test        byte ptr [ebp+0C],1
 0049A15A    setne       al
 0049A15D    mov         byte ptr [ebp-29],al
 0049A160    mov         eax,[0056E1A4];^gvar_0056B7DC
 0049A165    cmp         dword ptr [eax],4
>0049A168    jg          0049A182
 0049A16A    mov         eax,[0056E1A4];^gvar_0056B7DC
 0049A16F    cmp         dword ptr [eax],4
>0049A172    jne         0049A17E
 0049A174    mov         eax,[0056E45C];^gvar_0056B7E0
 0049A179    cmp         dword ptr [eax],0
>0049A17C    jg          0049A182
 0049A17E    xor         eax,eax
>0049A180    jmp         0049A184
 0049A182    mov         al,1
 0049A184    mov         byte ptr [ebp-5D],al
 0049A187    mov         eax,[0056E1A4];^gvar_0056B7DC
 0049A18C    cmp         dword ptr [eax],4
>0049A18F    jle         0049A19B
 0049A191    mov         eax,[0056E624];^gvar_0056B7D8
 0049A196    cmp         dword ptr [eax],2
>0049A199    je          0049A19F
 0049A19B    xor         eax,eax
>0049A19D    jmp         0049A1A1
 0049A19F    mov         al,1
 0049A1A1    mov         byte ptr [ebp-65],al
 0049A1A4    mov         eax,[0056E1A4];^gvar_0056B7DC
 0049A1A9    cmp         dword ptr [eax],5
>0049A1AC    jl          0049A1B8
 0049A1AE    mov         eax,[0056E45C];^gvar_0056B7E0
 0049A1B3    cmp         dword ptr [eax],1
>0049A1B6    jge         0049A1BC
 0049A1B8    xor         eax,eax
>0049A1BA    jmp         0049A1BE
 0049A1BC    mov         al,1
 0049A1BE    mov         byte ptr [ebp-21],al
 0049A1C1    cmp         dword ptr [ebp-30],0
>0049A1C5    je          0049A22F
 0049A1C7    mov         eax,dword ptr [ebp-30]
 0049A1CA    cmp         byte ptr [eax+40],0
>0049A1CE    jne         0049A1D6
 0049A1D0    cmp         dword ptr [ebp-40],0
>0049A1D4    je          0049A22F
 0049A1D6    mov         eax,dword ptr [ebp-38]
 0049A1D9    cmp         word ptr [eax+9A],0
>0049A1E1    jne         0049A1F0
 0049A1E3    mov         eax,dword ptr [ebp-38]
 0049A1E6    cmp         word ptr [eax+92],0
>0049A1EE    je          0049A22F
 0049A1F0    mov         al,byte ptr [ebp-29]
 0049A1F3    push        eax
 0049A1F4    lea         ecx,[ebp-20]
 0049A1F7    mov         edx,dword ptr [ebp-28]
 0049A1FA    mov         eax,dword ptr [ebp-38]
 0049A1FD    mov         ebx,dword ptr [eax]
 0049A1FF    call        dword ptr [ebx+34]
 0049A202    mov         eax,dword ptr [ebp-38]
 0049A205    cmp         word ptr [eax+9A],0
>0049A20D    je          0049A251
 0049A20F    lea         eax,[ebp-20]
 0049A212    push        eax
 0049A213    mov         ax,word ptr [ebp+0C]
 0049A217    push        eax
 0049A218    mov         ebx,dword ptr [ebp-38]
 0049A21B    mov         ecx,dword ptr [ebp-28]
 0049A21E    mov         edx,dword ptr [ebp-38]
 0049A221    mov         eax,dword ptr [ebx+9C]
 0049A227    call        dword ptr [ebx+98]
>0049A22D    jmp         0049A251
 0049A22F    cmp         dword ptr [ebp-30],0
>0049A233    je          0049A24A
 0049A235    mov         eax,dword ptr [ebp-30]
 0049A238    call        TMenu.IsRightToLeft
 0049A23D    test        al,al
>0049A23F    jne         0049A24A
 0049A241    push        ebp
 0049A242    call        NormalDraw
 0049A247    pop         ecx
>0049A248    jmp         0049A251
 0049A24A    push        ebp
 0049A24B    call        BiDiDraw
 0049A250    pop         ecx
 0049A251    pop         edi
 0049A252    pop         esi
 0049A253    pop         ebx
 0049A254    mov         esp,ebp
 0049A256    pop         ebp
 0049A257    ret         8
*}
end;

//0049A25C
function TMenuItem.GetImageList:TCustomImageList;
begin
{*
 0049A25C    push        ebp
 0049A25D    mov         ebp,esp
 0049A25F    add         esp,0FFFFFFF0
 0049A262    mov         dword ptr [ebp-4],eax
 0049A265    xor         eax,eax
 0049A267    mov         dword ptr [ebp-8],eax
 0049A26A    mov         eax,dword ptr [ebp-4]
 0049A26D    mov         eax,dword ptr [eax+64]
 0049A270    mov         dword ptr [ebp-0C],eax
>0049A273    jmp         0049A27E
 0049A275    mov         eax,dword ptr [ebp-0C]
 0049A278    mov         eax,dword ptr [eax+64]
 0049A27B    mov         dword ptr [ebp-0C],eax
 0049A27E    cmp         dword ptr [ebp-0C],0
>0049A282    je          0049A28D
 0049A284    mov         eax,dword ptr [ebp-0C]
 0049A287    cmp         dword ptr [eax+7C],0
>0049A28B    je          0049A275
 0049A28D    cmp         dword ptr [ebp-0C],0
>0049A291    je          0049A29E
 0049A293    mov         eax,dword ptr [ebp-0C]
 0049A296    mov         eax,dword ptr [eax+7C]
 0049A299    mov         dword ptr [ebp-8],eax
>0049A29C    jmp         0049A2B8
 0049A29E    mov         eax,dword ptr [ebp-4]
 0049A2A1    call        TMenuItem.GetParentMenu
 0049A2A6    mov         dword ptr [ebp-10],eax
 0049A2A9    cmp         dword ptr [ebp-10],0
>0049A2AD    je          0049A2B8
 0049A2AF    mov         eax,dword ptr [ebp-10]
 0049A2B2    mov         eax,dword ptr [eax+48]
 0049A2B5    mov         dword ptr [ebp-8],eax
 0049A2B8    mov         eax,dword ptr [ebp-8]
 0049A2BB    mov         esp,ebp
 0049A2BD    pop         ebp
 0049A2BE    ret
*}
end;

//0049A2C0
procedure GetMenuSize;
begin
{*
 0049A2C0    push        ebp
 0049A2C1    mov         ebp,esp
 0049A2C3    add         esp,0FFFFFEAC
 0049A2C9    mov         dword ptr [ebp-154],154
 0049A2D3    push        0
 0049A2D5    lea         eax,[ebp-154]
 0049A2DB    push        eax
 0049A2DC    push        0
 0049A2DE    push        29
 0049A2E0    call        user32.SystemParametersInfoA
 0049A2E5    test        eax,eax
>0049A2E7    je          0049A305
 0049A2E9    mov         eax,dword ptr [ebp+8]
 0049A2EC    mov         eax,dword ptr [eax-4]
 0049A2EF    mov         edx,dword ptr [ebp-0BC]
 0049A2F5    mov         dword ptr [eax],edx
 0049A2F7    mov         eax,dword ptr [ebp+8]
 0049A2FA    mov         eax,dword ptr [eax+8]
 0049A2FD    mov         edx,dword ptr [ebp-0B8]
 0049A303    mov         dword ptr [eax],edx
 0049A305    mov         esp,ebp
 0049A307    pop         ebp
 0049A308    ret
*}
end;

//0049A30C
{*procedure sub_0049A30C(?:?; ?:?; ?:?);
begin
 0049A30C    push        ebp
 0049A30D    mov         ebp,esp
 0049A30F    add         esp,0FFFFFFC8
 0049A312    push        ebx
 0049A313    push        esi
 0049A314    xor         ebx,ebx
 0049A316    mov         dword ptr [ebp-38],ebx
 0049A319    mov         dword ptr [ebp-24],ebx
 0049A31C    mov         dword ptr [ebp-4],ecx
 0049A31F    mov         dword ptr [ebp-0C],edx
 0049A322    mov         dword ptr [ebp-8],eax
 0049A325    xor         eax,eax
 0049A327    push        ebp
 0049A328    push        49A53E
 0049A32D    push        dword ptr fs:[eax]
 0049A330    mov         dword ptr fs:[eax],esp
 0049A333    mov         eax,dword ptr [ebp-8]
 0049A336    mov         si,0FFF2
 0049A33A    call        @CallDynaInst;TMenuItem.sub_0042A81C
 0049A33F    mov         edx,dword ptr ds:[4971A8];TMainMenu
 0049A345    call        @IsClass
 0049A34A    test        al,al
>0049A34C    je          0049A35B
 0049A34E    mov         byte ptr [ebp-1A],1
 0049A352    push        ebp
 0049A353    call        GetMenuSize
 0049A358    pop         ecx
>0049A359    jmp         0049A35F
 0049A35B    mov         byte ptr [ebp-1A],0
 0049A35F    mov         eax,dword ptr [ebp-8]
 0049A362    call        TMenuItem.GetParentMenu
 0049A367    mov         dword ptr [ebp-18],eax
 0049A36A    mov         eax,dword ptr [ebp-8]
 0049A36D    call        TMenuItem.GetImageList
 0049A372    mov         dword ptr [ebp-14],eax
 0049A375    mov         eax,dword ptr [ebp-8]
 0049A378    mov         eax,dword ptr [eax+30];TMenuItem.Caption:String
 0049A37B    mov         edx,49A558;'-'
 0049A380    call        @LStrCmp
>0049A385    jne         0049A39F
 0049A387    mov         eax,dword ptr [ebp+8]
 0049A38A    mov         dword ptr [eax],5
 0049A390    mov         eax,dword ptr [ebp-4]
 0049A393    mov         dword ptr [eax],0FFFFFFFE
 0049A399    mov         byte ptr [ebp-19],0
>0049A39D    jmp         0049A419
 0049A39F    cmp         dword ptr [ebp-14],0
>0049A3A3    je          0049A3D6
 0049A3A5    mov         eax,dword ptr [ebp-8]
 0049A3A8    cmp         dword ptr [eax+40],0FFFFFFFF;TMenuItem.ImageIndex:TImageIndex
>0049A3AC    jg          0049A3B4
 0049A3AE    cmp         byte ptr [ebp-1A],0
>0049A3B2    jne         0049A3D6
 0049A3B4    mov         eax,dword ptr [ebp-14]
 0049A3B7    mov         eax,dword ptr [eax+34];TCustomImageList.FWidth:Integer
 0049A3BA    mov         edx,dword ptr [ebp-4]
 0049A3BD    mov         dword ptr [edx],eax
 0049A3BF    cmp         byte ptr [ebp-1A],0
>0049A3C3    jne         0049A3D0
 0049A3C5    mov         eax,dword ptr [ebp-14]
 0049A3C8    mov         eax,dword ptr [eax+30];TCustomImageList.FHeight:Integer
 0049A3CB    mov         edx,dword ptr [ebp+8]
 0049A3CE    mov         dword ptr [edx],eax
 0049A3D0    mov         byte ptr [ebp-19],1
>0049A3D4    jmp         0049A419
 0049A3D6    mov         eax,dword ptr [ebp-8]
 0049A3D9    cmp         dword ptr [eax+4C],0;TMenuItem.FBitmap:TBitmap
>0049A3DD    je          0049A40C
 0049A3DF    mov         eax,dword ptr [ebp-8]
 0049A3E2    mov         eax,dword ptr [eax+4C];TMenuItem.FBitmap:TBitmap
 0049A3E5    mov         edx,dword ptr [eax]
 0049A3E7    call        dword ptr [edx+1C];TBitmap.sub_0043494C
 0049A3EA    test        al,al
>0049A3EC    jne         0049A40C
 0049A3EE    mov         eax,dword ptr [ebp-4]
 0049A3F1    mov         dword ptr [eax],10
 0049A3F7    cmp         byte ptr [ebp-1A],0
>0049A3FB    jne         0049A406
 0049A3FD    mov         eax,dword ptr [ebp+8]
 0049A400    mov         dword ptr [eax],10
 0049A406    mov         byte ptr [ebp-19],1
>0049A40A    jmp         0049A419
 0049A40C    mov         eax,dword ptr [ebp-4]
 0049A40F    mov         dword ptr [eax],0FFFFFFF9
 0049A415    mov         byte ptr [ebp-19],0
 0049A419    cmp         byte ptr [ebp-19],0
>0049A41D    je          0049A42B
 0049A41F    cmp         byte ptr [ebp-1A],0
>0049A423    jne         0049A42B
 0049A425    mov         eax,dword ptr [ebp-4]
 0049A428    add         dword ptr [eax],0F
 0049A42B    cmp         byte ptr [ebp-1A],0
>0049A42F    jne         0049A437
 0049A431    mov         eax,dword ptr [ebp+8]
 0049A434    add         dword ptr [eax],3
 0049A437    lea         eax,[ebp-34]
 0049A43A    xor         ecx,ecx
 0049A43C    mov         edx,10
 0049A441    call        @FillChar
 0049A446    cmp         dword ptr [ebp-18],0
>0049A44A    je          0049A452
 0049A44C    mov         byte ptr [ebp-0D],0
>0049A450    jmp         0049A473
 0049A452    mov         eax,dword ptr [ebp-18]
 0049A455    mov         edx,dword ptr ds:[49748C];TPopupMenu
 0049A45B    call        @IsClass
 0049A460    test        al,al
>0049A462    je          0049A46F
 0049A464    mov         eax,dword ptr [ebp-18]
 0049A467    mov         al,byte ptr [eax+60]
 0049A46A    mov         byte ptr [ebp-0D],al
>0049A46D    jmp         0049A473
 0049A46F    mov         byte ptr [ebp-0D],0
 0049A473    mov         eax,dword ptr [ebp-8]
 0049A476    cmp         word ptr [eax+60],0;TMenuItem.ShortCut:TShortCut
>0049A47B    je          0049A49F
 0049A47D    lea         edx,[ebp-38]
 0049A480    mov         eax,dword ptr [ebp-8]
 0049A483    mov         ax,word ptr [eax+60];TMenuItem.ShortCut:TShortCut
 0049A487    call        0049795C
 0049A48C    mov         ecx,dword ptr [ebp-38]
 0049A48F    lea         eax,[ebp-24]
 0049A492    mov         edx,dword ptr [ebp-8]
 0049A495    mov         edx,dword ptr [edx+30];TMenuItem.Caption:String
 0049A498    call        @LStrCat3
>0049A49D    jmp         0049A4AD
 0049A49F    lea         eax,[ebp-24]
 0049A4A2    mov         edx,dword ptr [ebp-8]
 0049A4A5    mov         edx,dword ptr [edx+30];TMenuItem.Caption:String
 0049A4A8    call        @LStrLAsg
 0049A4AD    xor         eax,eax
 0049A4AF    mov         al,byte ptr [ebp-0D]
 0049A4B2    mov         ax,word ptr [eax*2+56C9A0]
 0049A4BA    or          ax,40
 0049A4BE    or          ax,20
 0049A4C2    or          ax,100
 0049A4C6    or          ax,400
 0049A4CA    movzx       eax,ax
 0049A4CD    mov         dword ptr [ebp-20],eax
 0049A4D0    lea         eax,[ebp-34]
 0049A4D3    push        eax
 0049A4D4    push        0
 0049A4D6    mov         eax,dword ptr [ebp-20]
 0049A4D9    push        eax
 0049A4DA    mov         ecx,dword ptr [ebp-24]
 0049A4DD    mov         edx,dword ptr [ebp-0C]
 0049A4E0    mov         eax,dword ptr [ebp-8]
 0049A4E3    call        00498C20
 0049A4E8    mov         eax,dword ptr [ebp-2C]
 0049A4EB    sub         eax,dword ptr [ebp-34]
 0049A4EE    add         eax,7
 0049A4F1    mov         edx,dword ptr [ebp-4]
 0049A4F4    add         dword ptr [edx],eax
 0049A4F6    mov         eax,dword ptr [ebp-8]
 0049A4F9    cmp         word ptr [eax+0A2],0;TMenuItem.?fA2:word
>0049A501    je          0049A520
 0049A503    mov         eax,dword ptr [ebp-4]
 0049A506    push        eax
 0049A507    mov         eax,dword ptr [ebp+8]
 0049A50A    push        eax
 0049A50B    mov         ebx,dword ptr [ebp-8]
 0049A50E    mov         ecx,dword ptr [ebp-0C]
 0049A511    mov         edx,dword ptr [ebp-8]
 0049A514    mov         eax,dword ptr [ebx+0A4];TMenuItem.?fA4:dword
 0049A51A    call        dword ptr [ebx+0A0];TMenuItem.OnMeasureItem
 0049A520    xor         eax,eax
 0049A522    pop         edx
 0049A523    pop         ecx
 0049A524    pop         ecx
 0049A525    mov         dword ptr fs:[eax],edx
 0049A528    push        49A545
 0049A52D    lea         eax,[ebp-38]
 0049A530    call        @LStrClr
 0049A535    lea         eax,[ebp-24]
 0049A538    call        @LStrClr
 0049A53D    ret
>0049A53E    jmp         @HandleFinally
>0049A543    jmp         0049A52D
 0049A545    pop         esi
 0049A546    pop         ebx
 0049A547    mov         esp,ebp
 0049A549    pop         ebp
 0049A54A    ret         4
end;*}

//0049A55C
procedure TMenuItem.sub_0042A774;
begin
{*
 0049A55C    push        ebp
 0049A55D    mov         ebp,esp
 0049A55F    add         esp,0FFFFFFF8
 0049A562    mov         dword ptr [ebp-4],eax
 0049A565    mov         byte ptr [ebp-5],1
 0049A569    mov         al,byte ptr [ebp-5]
 0049A56C    pop         ecx
 0049A56D    pop         ecx
 0049A56E    pop         ebp
 0049A56F    ret
*}
end;

//0049A570
procedure TMenuItem.SetBreak(Value:TMenuBreak);
begin
{*
 0049A570    push        ebp
 0049A571    mov         ebp,esp
 0049A573    add         esp,0FFFFFFF8
 0049A576    mov         byte ptr [ebp-5],dl
 0049A579    mov         dword ptr [ebp-4],eax
 0049A57C    mov         eax,dword ptr [ebp-4]
 0049A57F    mov         al,byte ptr [eax+48];TMenuItem.Break:TMenuBreak
 0049A582    cmp         al,byte ptr [ebp-5]
>0049A585    je          0049A59A
 0049A587    mov         al,byte ptr [ebp-5]
 0049A58A    mov         edx,dword ptr [ebp-4]
 0049A58D    mov         byte ptr [edx+48],al;TMenuItem.Break:TMenuBreak
 0049A590    mov         dl,1
 0049A592    mov         eax,dword ptr [ebp-4]
 0049A595    mov         ecx,dword ptr [eax]
 0049A597    call        dword ptr [ecx+3C];TMenuItem.sub_0049ADD0
 0049A59A    pop         ecx
 0049A59B    pop         ecx
 0049A59C    pop         ebp
 0049A59D    ret
*}
end;

//0049A5A0
procedure TMenuItem.SetCaption(Value:String);
begin
{*
 0049A5A0    push        ebp
 0049A5A1    mov         ebp,esp
 0049A5A3    add         esp,0FFFFFFF8
 0049A5A6    mov         dword ptr [ebp-8],edx
 0049A5A9    mov         dword ptr [ebp-4],eax
 0049A5AC    mov         eax,dword ptr [ebp-4]
 0049A5AF    mov         eax,dword ptr [eax+30];TMenuItem.Caption:String
 0049A5B2    mov         edx,dword ptr [ebp-8]
 0049A5B5    call        @LStrCmp
>0049A5BA    je          0049A5D4
 0049A5BC    mov         eax,dword ptr [ebp-4]
 0049A5BF    add         eax,30;TMenuItem.Caption:String
 0049A5C2    mov         edx,dword ptr [ebp-8]
 0049A5C5    call        @LStrAsg
 0049A5CA    mov         dl,1
 0049A5CC    mov         eax,dword ptr [ebp-4]
 0049A5CF    mov         ecx,dword ptr [eax]
 0049A5D1    call        dword ptr [ecx+3C];TMenuItem.sub_0049ADD0
 0049A5D4    pop         ecx
 0049A5D5    pop         ecx
 0049A5D6    pop         ebp
 0049A5D7    ret
*}
end;

//0049A5D8
procedure sub_0049A5D8(?:TMenuItem);
begin
{*
 0049A5D8    push        ebp
 0049A5D9    mov         ebp,esp
 0049A5DB    add         esp,0FFFFFFF0
 0049A5DE    mov         dword ptr [ebp-4],eax
 0049A5E1    mov         eax,dword ptr [ebp-4]
 0049A5E4    cmp         dword ptr [eax+64],0
>0049A5E8    je          0049A647
 0049A5EA    mov         eax,dword ptr [ebp-4]
 0049A5ED    mov         eax,dword ptr [eax+64]
 0049A5F0    call        0049A814
 0049A5F5    dec         eax
 0049A5F6    test        eax,eax
>0049A5F8    jl          0049A647
 0049A5FA    inc         eax
 0049A5FB    mov         dword ptr [ebp-10],eax
 0049A5FE    mov         dword ptr [ebp-8],0
 0049A605    mov         edx,dword ptr [ebp-8]
 0049A608    mov         eax,dword ptr [ebp-4]
 0049A60B    mov         eax,dword ptr [eax+64]
 0049A60E    call        0049A840
 0049A613    mov         dword ptr [ebp-0C],eax
 0049A616    mov         eax,dword ptr [ebp-0C]
 0049A619    cmp         eax,dword ptr [ebp-4]
>0049A61C    je          0049A63F
 0049A61E    mov         eax,dword ptr [ebp-0C]
 0049A621    cmp         byte ptr [eax+3D],0
>0049A625    je          0049A63F
 0049A627    mov         eax,dword ptr [ebp-0C]
 0049A62A    mov         al,byte ptr [eax+3F]
 0049A62D    mov         edx,dword ptr [ebp-4]
 0049A630    cmp         al,byte ptr [edx+3F]
>0049A633    jne         0049A63F
 0049A635    xor         edx,edx
 0049A637    mov         eax,dword ptr [ebp-0C]
 0049A63A    call        TMenuItem.SetChecked
 0049A63F    inc         dword ptr [ebp-8]
 0049A642    dec         dword ptr [ebp-10]
>0049A645    jne         0049A605
 0049A647    mov         esp,ebp
 0049A649    pop         ebp
 0049A64A    ret
*}
end;

//0049A64C
procedure TMenuItem.SetChecked(Value:Boolean);
begin
{*
 0049A64C    push        ebp
 0049A64D    mov         ebp,esp
 0049A64F    add         esp,0FFFFFFF8
 0049A652    mov         byte ptr [ebp-5],dl
 0049A655    mov         dword ptr [ebp-4],eax
 0049A658    mov         eax,dword ptr [ebp-4]
 0049A65B    mov         al,byte ptr [eax+38];TMenuItem.Checked:Boolean
 0049A65E    cmp         al,byte ptr [ebp-5]
>0049A661    je          0049A6BE
 0049A663    mov         al,byte ptr [ebp-5]
 0049A666    mov         edx,dword ptr [ebp-4]
 0049A669    mov         byte ptr [edx+38],al;TMenuItem.Checked:Boolean
 0049A66C    mov         eax,dword ptr [ebp-4]
 0049A66F    cmp         dword ptr [eax+64],0;TMenuItem.FParent:TMenuItem
>0049A673    je          0049A6A7
 0049A675    mov         eax,dword ptr [ebp-4]
 0049A678    test        byte ptr [eax+1C],2;TMenuItem.FComponentState:TComponentState
>0049A67C    jne         0049A6A7
 0049A67E    xor         eax,eax
 0049A680    mov         al,byte ptr [ebp-5]
 0049A683    mov         eax,dword ptr [eax*4+56C928]
 0049A68A    or          eax,0
 0049A68D    push        eax
 0049A68E    mov         eax,dword ptr [ebp-4]
 0049A691    movzx       eax,word ptr [eax+50];TMenuItem.FCommand:word
 0049A695    push        eax
 0049A696    mov         eax,dword ptr [ebp-4]
 0049A699    mov         eax,dword ptr [eax+64];TMenuItem.FParent:TMenuItem
 0049A69C    call        00498B60
 0049A6A1    push        eax
 0049A6A2    call        user32.CheckMenuItem
 0049A6A7    cmp         byte ptr [ebp-5],0
>0049A6AB    je          0049A6BE
 0049A6AD    mov         eax,dword ptr [ebp-4]
 0049A6B0    cmp         byte ptr [eax+3D],0;TMenuItem.RadioItem:Boolean
>0049A6B4    je          0049A6BE
 0049A6B6    mov         eax,dword ptr [ebp-4]
 0049A6B9    call        0049A5D8
 0049A6BE    pop         ecx
 0049A6BF    pop         ecx
 0049A6C0    pop         ebp
 0049A6C1    ret
*}
end;

//0049A6C4
procedure TMenuItem.SetEnabled(Value:Boolean);
begin
{*
 0049A6C4    push        ebp
 0049A6C5    mov         ebp,esp
 0049A6C7    add         esp,0FFFFFFF8
 0049A6CA    mov         byte ptr [ebp-5],dl
 0049A6CD    mov         dword ptr [ebp-4],eax
 0049A6D0    mov         eax,dword ptr [ebp-4]
 0049A6D3    mov         al,byte ptr [eax+39];TMenuItem.Enabled:Boolean
 0049A6D6    cmp         al,byte ptr [ebp-5]
>0049A6D9    je          0049A764
 0049A6DF    mov         al,byte ptr [ebp-5]
 0049A6E2    mov         edx,dword ptr [ebp-4]
 0049A6E5    mov         byte ptr [edx+39],al;TMenuItem.Enabled:Boolean
 0049A6E8    mov         eax,[0056E624];^gvar_0056B7D8
 0049A6ED    cmp         dword ptr [eax],2
>0049A6F0    jne         0049A6FE
 0049A6F2    mov         eax,dword ptr [ebp-4]
 0049A6F5    call        0049A814
 0049A6FA    test        eax,eax
>0049A6FC    jne         0049A713
 0049A6FE    mov         eax,dword ptr [ebp-4]
 0049A701    cmp         dword ptr [eax+64],0;TMenuItem.FParent:TMenuItem
>0049A705    je          0049A71F
 0049A707    mov         eax,dword ptr [ebp-4]
 0049A70A    mov         eax,dword ptr [eax+64];TMenuItem.FParent:TMenuItem
 0049A70D    cmp         dword ptr [eax+6C],0;TMenuItem.FMergedWith:TMenuItem
>0049A711    je          0049A71F
 0049A713    mov         dl,1
 0049A715    mov         eax,dword ptr [ebp-4]
 0049A718    mov         ecx,dword ptr [eax]
 0049A71A    call        dword ptr [ecx+3C];TMenuItem.sub_0049ADD0
>0049A71D    jmp         0049A764
 0049A71F    mov         eax,dword ptr [ebp-4]
 0049A722    cmp         dword ptr [eax+64],0;TMenuItem.FParent:TMenuItem
>0049A726    je          0049A75A
 0049A728    mov         eax,dword ptr [ebp-4]
 0049A72B    test        byte ptr [eax+1C],2;TMenuItem.FComponentState:TComponentState
>0049A72F    jne         0049A75A
 0049A731    xor         eax,eax
 0049A733    mov         al,byte ptr [ebp-5]
 0049A736    mov         eax,dword ptr [eax*4+56C930]
 0049A73D    or          eax,0
 0049A740    push        eax
 0049A741    mov         eax,dword ptr [ebp-4]
 0049A744    movzx       eax,word ptr [eax+50];TMenuItem.FCommand:word
 0049A748    push        eax
 0049A749    mov         eax,dword ptr [ebp-4]
 0049A74C    mov         eax,dword ptr [eax+64];TMenuItem.FParent:TMenuItem
 0049A74F    call        00498B60
 0049A754    push        eax
 0049A755    call        user32.EnableMenuItem
 0049A75A    xor         edx,edx
 0049A75C    mov         eax,dword ptr [ebp-4]
 0049A75F    mov         ecx,dword ptr [eax]
 0049A761    call        dword ptr [ecx+3C];TMenuItem.sub_0049ADD0
 0049A764    pop         ecx
 0049A765    pop         ecx
 0049A766    pop         ebp
 0049A767    ret
*}
end;

//0049A768
procedure TMenuItem.SetGroupIndex(Value:Byte);
begin
{*
 0049A768    push        ebp
 0049A769    mov         ebp,esp
 0049A76B    add         esp,0FFFFFFF8
 0049A76E    mov         byte ptr [ebp-5],dl
 0049A771    mov         dword ptr [ebp-4],eax
 0049A774    mov         eax,dword ptr [ebp-4]
 0049A777    mov         al,byte ptr [eax+3F];TMenuItem.GroupIndex:byte
 0049A77A    cmp         al,byte ptr [ebp-5]
>0049A77D    je          0049A7C9
 0049A77F    mov         eax,dword ptr [ebp-4]
 0049A782    cmp         dword ptr [eax+64],0;TMenuItem.FParent:TMenuItem
>0049A786    je          0049A7A6
 0049A788    mov         edx,dword ptr [ebp-4]
 0049A78B    mov         eax,dword ptr [ebp-4]
 0049A78E    mov         eax,dword ptr [eax+64];TMenuItem.FParent:TMenuItem
 0049A791    call        0049AD38
 0049A796    mov         edx,eax
 0049A798    mov         cl,byte ptr [ebp-5]
 0049A79B    mov         eax,dword ptr [ebp-4]
 0049A79E    mov         eax,dword ptr [eax+64];TMenuItem.FParent:TMenuItem
 0049A7A1    call        00498AE0
 0049A7A6    mov         al,byte ptr [ebp-5]
 0049A7A9    mov         edx,dword ptr [ebp-4]
 0049A7AC    mov         byte ptr [edx+3F],al;TMenuItem.GroupIndex:byte
 0049A7AF    mov         eax,dword ptr [ebp-4]
 0049A7B2    cmp         byte ptr [eax+38],0;TMenuItem.Checked:Boolean
>0049A7B6    je          0049A7C9
 0049A7B8    mov         eax,dword ptr [ebp-4]
 0049A7BB    cmp         byte ptr [eax+3D],0;TMenuItem.RadioItem:Boolean
>0049A7BF    je          0049A7C9
 0049A7C1    mov         eax,dword ptr [ebp-4]
 0049A7C4    call        0049A5D8
 0049A7C9    pop         ecx
 0049A7CA    pop         ecx
 0049A7CB    pop         ebp
 0049A7CC    ret
*}
end;

//0049A7D0
{*function TMenuItem.GetAction:?;
begin
 0049A7D0    push        ebp
 0049A7D1    mov         ebp,esp
 0049A7D3    add         esp,0FFFFFFF8
 0049A7D6    mov         dword ptr [ebp-4],eax
 0049A7D9    mov         eax,dword ptr [ebp-4]
 0049A7DC    cmp         dword ptr [eax+44],0;TMenuItem.FActionLink:TMenuActionLink
>0049A7E0    je          0049A7F0
 0049A7E2    mov         eax,dword ptr [ebp-4]
 0049A7E5    mov         eax,dword ptr [eax+44];TMenuItem.FActionLink:TMenuActionLink
 0049A7E8    mov         eax,dword ptr [eax+10];TMenuActionLink.FAction:TBasicAction
 0049A7EB    mov         dword ptr [ebp-8],eax
>0049A7EE    jmp         0049A7F5
 0049A7F0    xor         eax,eax
 0049A7F2    mov         dword ptr [ebp-8],eax
 0049A7F5    mov         eax,dword ptr [ebp-8]
 0049A7F8    pop         ecx
 0049A7F9    pop         ecx
 0049A7FA    pop         ebp
 0049A7FB    ret
end;*}

//0049A7FC
procedure TMenuItem.sub_0049A7FC;
begin
{*
 0049A7FC    push        ebp
 0049A7FD    mov         ebp,esp
 0049A7FF    add         esp,0FFFFFFF8
 0049A802    mov         dword ptr [ebp-4],eax
 0049A805    mov         eax,[00496BB8];TMenuActionLink
 0049A80A    mov         dword ptr [ebp-8],eax
 0049A80D    mov         eax,dword ptr [ebp-8]
 0049A810    pop         ecx
 0049A811    pop         ecx
 0049A812    pop         ebp
 0049A813    ret
*}
end;

//0049A814
{*function sub_0049A814(?:TMenuItem):?;
begin
 0049A814    push        ebp
 0049A815    mov         ebp,esp
 0049A817    add         esp,0FFFFFFF8
 0049A81A    mov         dword ptr [ebp-4],eax
 0049A81D    mov         eax,dword ptr [ebp-4]
 0049A820    cmp         dword ptr [eax+5C],0;TMenuItem.FItems:TList
>0049A824    jne         0049A82D
 0049A826    xor         eax,eax
 0049A828    mov         dword ptr [ebp-8],eax
>0049A82B    jmp         0049A839
 0049A82D    mov         eax,dword ptr [ebp-4]
 0049A830    mov         eax,dword ptr [eax+5C];TMenuItem.FItems:TList
 0049A833    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 0049A836    mov         dword ptr [ebp-8],eax
 0049A839    mov         eax,dword ptr [ebp-8]
 0049A83C    pop         ecx
 0049A83D    pop         ecx
 0049A83E    pop         ebp
 0049A83F    ret
end;*}

//0049A840
{*function sub_0049A840(?:TMenuItem; ?:?):?;
begin
 0049A840    push        ebp
 0049A841    mov         ebp,esp
 0049A843    add         esp,0FFFFFFF4
 0049A846    mov         dword ptr [ebp-8],edx
 0049A849    mov         dword ptr [ebp-4],eax
 0049A84C    mov         eax,dword ptr [ebp-4]
 0049A84F    cmp         dword ptr [eax+5C],0;TMenuItem.FItems:TList
>0049A853    jne         0049A85F
 0049A855    mov         eax,[0056E220];^SMenuIndexError:TResStringRec
 0049A85A    call        00497884
 0049A85F    mov         edx,dword ptr [ebp-8]
 0049A862    mov         eax,dword ptr [ebp-4]
 0049A865    mov         eax,dword ptr [eax+5C];TMenuItem.FItems:TList
 0049A868    call        TList.Get
 0049A86D    mov         dword ptr [ebp-0C],eax
 0049A870    mov         eax,dword ptr [ebp-0C]
 0049A873    mov         esp,ebp
 0049A875    pop         ebp
 0049A876    ret
end;*}

//0049A878
procedure TMenuItem.SetShortCut(Value:TShortCut);
begin
{*
 0049A878    push        ebp
 0049A879    mov         ebp,esp
 0049A87B    add         esp,0FFFFFFF8
 0049A87E    mov         word ptr [ebp-6],dx
 0049A882    mov         dword ptr [ebp-4],eax
 0049A885    mov         eax,dword ptr [ebp-4]
 0049A888    mov         ax,word ptr [eax+60];TMenuItem.ShortCut:TShortCut
 0049A88C    cmp         ax,word ptr [ebp-6]
>0049A890    je          0049A8A7
 0049A892    mov         ax,word ptr [ebp-6]
 0049A896    mov         edx,dword ptr [ebp-4]
 0049A899    mov         word ptr [edx+60],ax;TMenuItem.ShortCut:TShortCut
 0049A89D    mov         dl,1
 0049A89F    mov         eax,dword ptr [ebp-4]
 0049A8A2    mov         ecx,dword ptr [eax]
 0049A8A4    call        dword ptr [ecx+3C];TMenuItem.sub_0049ADD0
 0049A8A7    pop         ecx
 0049A8A8    pop         ecx
 0049A8A9    pop         ebp
 0049A8AA    ret
*}
end;

//0049A8AC
procedure TMenuItem.SetVisible(Value:Boolean);
begin
{*
 0049A8AC    push        ebp
 0049A8AD    mov         ebp,esp
 0049A8AF    add         esp,0FFFFFFF8
 0049A8B2    mov         byte ptr [ebp-5],dl
 0049A8B5    mov         dword ptr [ebp-4],eax
 0049A8B8    mov         al,byte ptr [ebp-5]
 0049A8BB    mov         edx,dword ptr [ebp-4]
 0049A8BE    cmp         al,byte ptr [edx+3E];TMenuItem.Visible:Boolean
>0049A8C1    je          0049A8D6
 0049A8C3    mov         al,byte ptr [ebp-5]
 0049A8C6    mov         edx,dword ptr [ebp-4]
 0049A8C9    mov         byte ptr [edx+3E],al;TMenuItem.Visible:Boolean
 0049A8CC    mov         dl,1
 0049A8CE    mov         eax,dword ptr [ebp-4]
 0049A8D1    mov         ecx,dword ptr [eax]
 0049A8D3    call        dword ptr [ecx+3C];TMenuItem.sub_0049ADD0
 0049A8D6    pop         ecx
 0049A8D7    pop         ecx
 0049A8D8    pop         ebp
 0049A8D9    ret
*}
end;

//0049A8DC
procedure TMenuItem.SetImageIndex(Value:TImageIndex);
begin
{*
 0049A8DC    push        ebp
 0049A8DD    mov         ebp,esp
 0049A8DF    add         esp,0FFFFFFF8
 0049A8E2    mov         dword ptr [ebp-8],edx
 0049A8E5    mov         dword ptr [ebp-4],eax
 0049A8E8    mov         eax,dword ptr [ebp-8]
 0049A8EB    mov         edx,dword ptr [ebp-4]
 0049A8EE    cmp         eax,dword ptr [edx+40];TMenuItem.ImageIndex:TImageIndex
>0049A8F1    je          0049A906
 0049A8F3    mov         eax,dword ptr [ebp-8]
 0049A8F6    mov         edx,dword ptr [ebp-4]
 0049A8F9    mov         dword ptr [edx+40],eax;TMenuItem.ImageIndex:TImageIndex
 0049A8FC    mov         dl,1
 0049A8FE    mov         eax,dword ptr [ebp-4]
 0049A901    mov         ecx,dword ptr [eax]
 0049A903    call        dword ptr [ecx+3C];TMenuItem.sub_0049ADD0
 0049A906    pop         ecx
 0049A907    pop         ecx
 0049A908    pop         ebp
 0049A909    ret
*}
end;

//0049A90C
{*function sub_0049A90C(?:?):?;
begin
 0049A90C    push        ebp
 0049A90D    mov         ebp,esp
 0049A90F    add         esp,0FFFFFFF8
 0049A912    mov         dword ptr [ebp-4],eax
 0049A915    mov         dword ptr [ebp-8],0FFFFFFFF
 0049A91C    mov         eax,dword ptr [ebp-4]
 0049A91F    cmp         dword ptr [eax+64],0
>0049A923    je          0049A936
 0049A925    mov         edx,dword ptr [ebp-4]
 0049A928    mov         eax,dword ptr [ebp-4]
 0049A92B    mov         eax,dword ptr [eax+64]
 0049A92E    call        0049AD38
 0049A933    mov         dword ptr [ebp-8],eax
 0049A936    mov         eax,dword ptr [ebp-8]
 0049A939    pop         ecx
 0049A93A    pop         ecx
 0049A93B    pop         ebp
 0049A93C    ret
end;*}

//0049A940
{*procedure sub_0049A940(?:TMenuItem; ?:?);
begin
 0049A940    push        ebp
 0049A941    mov         ebp,esp
 0049A943    add         esp,0FFFFFFF0
 0049A946    mov         dword ptr [ebp-8],edx
 0049A949    mov         dword ptr [ebp-4],eax
 0049A94C    mov         eax,dword ptr [ebp-4]
 0049A94F    cmp         dword ptr [eax+64],0
>0049A953    je          0049A9AC
 0049A955    mov         eax,dword ptr [ebp-4]
 0049A958    mov         eax,dword ptr [eax+64]
 0049A95B    call        0049A814
 0049A960    mov         dword ptr [ebp-10],eax
 0049A963    cmp         dword ptr [ebp-8],0
>0049A967    jge         0049A96E
 0049A969    xor         eax,eax
 0049A96B    mov         dword ptr [ebp-8],eax
 0049A96E    mov         eax,dword ptr [ebp-8]
 0049A971    cmp         eax,dword ptr [ebp-10]
>0049A974    jl          0049A97D
 0049A976    mov         eax,dword ptr [ebp-10]
 0049A979    dec         eax
 0049A97A    mov         dword ptr [ebp-8],eax
 0049A97D    mov         eax,dword ptr [ebp-4]
 0049A980    call        0049A90C
 0049A985    cmp         eax,dword ptr [ebp-8]
>0049A988    je          0049A9AC
 0049A98A    mov         eax,dword ptr [ebp-4]
 0049A98D    mov         eax,dword ptr [eax+64]
 0049A990    mov         dword ptr [ebp-0C],eax
 0049A993    mov         edx,dword ptr [ebp-4]
 0049A996    mov         eax,dword ptr [ebp-0C]
 0049A999    call        0049AD94
 0049A99E    mov         ecx,dword ptr [ebp-4]
 0049A9A1    mov         edx,dword ptr [ebp-8]
 0049A9A4    mov         eax,dword ptr [ebp-0C]
 0049A9A7    call        0049AACC
 0049A9AC    mov         esp,ebp
 0049A9AE    pop         ebp
 0049A9AF    ret
end;*}

//0049A9B0
{*procedure TMenuItem.sub_0042A788(?:?; ?:?);
begin
 0049A9B0    push        ebp
 0049A9B1    mov         ebp,esp
 0049A9B3    add         esp,0FFFFFFF0
 0049A9B6    mov         dword ptr [ebp-10],edx
 0049A9B9    mov         dword ptr [ebp-4],eax
 0049A9BC    mov         eax,dword ptr [ebp-4]
 0049A9BF    call        0049A814
 0049A9C4    dec         eax
 0049A9C5    test        eax,eax
>0049A9C7    jl          0049A9EF
 0049A9C9    inc         eax
 0049A9CA    mov         dword ptr [ebp-0C],eax
 0049A9CD    mov         dword ptr [ebp-8],0
 0049A9D4    mov         edx,dword ptr [ebp-8]
 0049A9D7    mov         eax,dword ptr [ebp-4]
 0049A9DA    call        0049A840
 0049A9DF    mov         edx,eax
 0049A9E1    mov         eax,dword ptr [ebp+0C]
 0049A9E4    call        dword ptr [ebp+8]
 0049A9E7    inc         dword ptr [ebp-8]
 0049A9EA    dec         dword ptr [ebp-0C]
>0049A9ED    jne         0049A9D4
 0049A9EF    mov         esp,ebp
 0049A9F1    pop         ebp
 0049A9F2    ret         8
end;*}

//0049A9F8
{*procedure TMenuItem.sub_0042A808(?:?; ?:?);
begin
 0049A9F8    push        ebp
 0049A9F9    mov         ebp,esp
 0049A9FB    add         esp,0FFFFFFF4
 0049A9FE    mov         dword ptr [ebp-0C],ecx
 0049AA01    mov         dword ptr [ebp-8],edx
 0049AA04    mov         dword ptr [ebp-4],eax
 0049AA07    mov         eax,dword ptr [ebp-8]
 0049AA0A    mov         edx,dword ptr ds:[496C90];TMenuItem
 0049AA10    call        @AsClass
 0049AA15    mov         edx,dword ptr [ebp-0C]
 0049AA18    call        0049A940
 0049AA1D    mov         esp,ebp
 0049AA1F    pop         ebp
 0049AA20    ret
end;*}

//0049AA24
procedure TMenuItem.SetDefault(Value:Boolean);
begin
{*
 0049AA24    push        ebp
 0049AA25    mov         ebp,esp
 0049AA27    add         esp,0FFFFFFF0
 0049AA2A    mov         byte ptr [ebp-5],dl
 0049AA2D    mov         dword ptr [ebp-4],eax
 0049AA30    mov         eax,dword ptr [ebp-4]
 0049AA33    mov         al,byte ptr [eax+3A];TMenuItem.Default:Boolean
 0049AA36    cmp         al,byte ptr [ebp-5]
>0049AA39    je          0049AAA6
 0049AA3B    cmp         byte ptr [ebp-5],0
>0049AA3F    je          0049AA93
 0049AA41    mov         eax,dword ptr [ebp-4]
 0049AA44    cmp         dword ptr [eax+64],0;TMenuItem.FParent:TMenuItem
>0049AA48    je          0049AA93
 0049AA4A    mov         eax,dword ptr [ebp-4]
 0049AA4D    mov         eax,dword ptr [eax+64];TMenuItem.FParent:TMenuItem
 0049AA50    call        0049A814
 0049AA55    dec         eax
 0049AA56    test        eax,eax
>0049AA58    jl          0049AA93
 0049AA5A    inc         eax
 0049AA5B    mov         dword ptr [ebp-10],eax
 0049AA5E    mov         dword ptr [ebp-0C],0
 0049AA65    mov         edx,dword ptr [ebp-0C]
 0049AA68    mov         eax,dword ptr [ebp-4]
 0049AA6B    mov         eax,dword ptr [eax+64];TMenuItem.FParent:TMenuItem
 0049AA6E    call        0049A840
 0049AA73    cmp         byte ptr [eax+3A],0
>0049AA77    je          0049AA8B
 0049AA79    mov         edx,dword ptr [ebp-0C]
 0049AA7C    mov         eax,dword ptr [ebp-4]
 0049AA7F    mov         eax,dword ptr [eax+64];TMenuItem.FParent:TMenuItem
 0049AA82    call        0049A840
 0049AA87    mov         byte ptr [eax+3A],0
 0049AA8B    inc         dword ptr [ebp-0C]
 0049AA8E    dec         dword ptr [ebp-10]
>0049AA91    jne         0049AA65
 0049AA93    mov         al,byte ptr [ebp-5]
 0049AA96    mov         edx,dword ptr [ebp-4]
 0049AA99    mov         byte ptr [edx+3A],al;TMenuItem.Default:Boolean
 0049AA9C    mov         dl,1
 0049AA9E    mov         eax,dword ptr [ebp-4]
 0049AAA1    mov         ecx,dword ptr [eax]
 0049AAA3    call        dword ptr [ecx+3C];TMenuItem.sub_0049ADD0
 0049AAA6    mov         esp,ebp
 0049AAA8    pop         ebp
 0049AAA9    ret
*}
end;

//0049AAAC
procedure sub_0049AAAC;
begin
{*
 0049AAAC    push        ebp
 0049AAAD    mov         ebp,esp
 0049AAAF    push        ecx
 0049AAB0    mov         dword ptr [ebp-4],eax
 0049AAB3    mov         eax,dword ptr [ebp-4]
 0049AAB6    cmp         dword ptr [eax+44],0;TMenuItem.FActionLink:TMenuActionLink
>0049AABA    je          0049AAC7
 0049AABC    mov         eax,dword ptr [ebp-4]
 0049AABF    mov         eax,dword ptr [eax+44];TMenuItem.FActionLink:TMenuActionLink
 0049AAC2    mov         edx,dword ptr [eax]
 0049AAC4    call        dword ptr [edx+1C];TMenuActionLink.sub_0042AFC0
 0049AAC7    pop         ecx
 0049AAC8    pop         ebp
 0049AAC9    ret
*}
end;

//0049AACC
{*procedure sub_0049AACC(?:TMenuItem; ?:?; ?:?);
begin
 0049AACC    push        ebp
 0049AACD    mov         ebp,esp
 0049AACF    add         esp,0FFFFFFF4
 0049AAD2    mov         dword ptr [ebp-0C],ecx
 0049AAD5    mov         dword ptr [ebp-8],edx
 0049AAD8    mov         dword ptr [ebp-4],eax
 0049AADB    mov         eax,dword ptr [ebp-0C]
 0049AADE    cmp         dword ptr [eax+64],0
>0049AAE2    je          0049AAEE
 0049AAE4    mov         eax,[0056E620];^SMenuReinserted:TResStringRec
 0049AAE9    call        00497884
 0049AAEE    mov         eax,dword ptr [ebp-4]
 0049AAF1    cmp         dword ptr [eax+5C],0;TMenuItem.FItems:TList
>0049AAF5    jne         0049AB09
 0049AAF7    mov         dl,1
 0049AAF9    mov         eax,[0041D46C];TList
 0049AAFE    call        TObject.Create;TList.Create
 0049AB03    mov         edx,dword ptr [ebp-4]
 0049AB06    mov         dword ptr [edx+5C],eax;TMenuItem.FItems:TList
 0049AB09    mov         eax,dword ptr [ebp-8]
 0049AB0C    dec         eax
>0049AB0D    js          0049AB52
 0049AB0F    mov         eax,dword ptr [ebp-8]
 0049AB12    dec         eax
 0049AB13    mov         edx,dword ptr [ebp-4]
 0049AB16    mov         edx,dword ptr [edx+5C];TMenuItem.FItems:TList
 0049AB19    cmp         eax,dword ptr [edx+8];TList.FCount:Integer
>0049AB1C    jge         0049AB52
 0049AB1E    mov         edx,dword ptr [ebp-8]
 0049AB21    dec         edx
 0049AB22    mov         eax,dword ptr [ebp-4]
 0049AB25    mov         eax,dword ptr [eax+5C];TMenuItem.FItems:TList
 0049AB28    call        TList.Get
 0049AB2D    mov         al,byte ptr [eax+3F]
 0049AB30    mov         edx,dword ptr [ebp-0C]
 0049AB33    cmp         al,byte ptr [edx+3F]
>0049AB36    jbe         0049AB52
 0049AB38    mov         edx,dword ptr [ebp-8]
 0049AB3B    dec         edx
 0049AB3C    mov         eax,dword ptr [ebp-4]
 0049AB3F    mov         eax,dword ptr [eax+5C];TMenuItem.FItems:TList
 0049AB42    call        TList.Get
 0049AB47    mov         dl,byte ptr [eax+3F]
 0049AB4A    mov         eax,dword ptr [ebp-0C]
 0049AB4D    call        TMenuItem.SetGroupIndex
 0049AB52    mov         eax,dword ptr [ebp-0C]
 0049AB55    mov         cl,byte ptr [eax+3F]
 0049AB58    mov         edx,dword ptr [ebp-8]
 0049AB5B    mov         eax,dword ptr [ebp-4]
 0049AB5E    call        00498AE0
 0049AB63    mov         ecx,dword ptr [ebp-0C]
 0049AB66    mov         edx,dword ptr [ebp-8]
 0049AB69    mov         eax,dword ptr [ebp-4]
 0049AB6C    mov         eax,dword ptr [eax+5C];TMenuItem.FItems:TList
 0049AB6F    call        00420308
 0049AB74    mov         eax,dword ptr [ebp-4]
 0049AB77    mov         edx,dword ptr [ebp-0C]
 0049AB7A    mov         dword ptr [edx+64],eax
 0049AB7D    mov         eax,dword ptr [ebp-4]
 0049AB80    mov         edx,dword ptr [ebp-0C]
 0049AB83    mov         dword ptr [edx+84],eax
 0049AB89    mov         dword ptr [edx+80],49AE34;sub_0049AE34
 0049AB93    mov         eax,dword ptr [ebp-4]
 0049AB96    cmp         dword ptr [eax+34],0;TMenuItem.FHandle:HMENU
>0049AB9A    je          0049ABA4
 0049AB9C    mov         eax,dword ptr [ebp-4]
 0049AB9F    call        004989D8
 0049ABA4    mov         eax,dword ptr [ebp-4]
 0049ABA7    call        0049A814
 0049ABAC    dec         eax
 0049ABAD    sete        dl
 0049ABB0    mov         eax,dword ptr [ebp-4]
 0049ABB3    mov         ecx,dword ptr [eax]
 0049ABB5    call        dword ptr [ecx+3C];TMenuItem.sub_0049ADD0
 0049ABB8    mov         esp,ebp
 0049ABBA    pop         ebp
 0049ABBB    ret
end;*}

//0049ABBC
{*procedure sub_0049ABBC(?:TMenuItem; ?:?);
begin
 0049ABBC    push        ebp
 0049ABBD    mov         ebp,esp
 0049ABBF    add         esp,0FFFFFFF4
 0049ABC2    mov         dword ptr [ebp-8],edx
 0049ABC5    mov         dword ptr [ebp-4],eax
 0049ABC8    cmp         dword ptr [ebp-8],0
>0049ABCC    jl          0049ABE4
 0049ABCE    mov         eax,dword ptr [ebp-4]
 0049ABD1    cmp         dword ptr [eax+5C],0;TMenuItem.FItems:TList
>0049ABD5    je          0049ABE4
 0049ABD7    mov         eax,dword ptr [ebp-4]
 0049ABDA    call        0049A814
 0049ABDF    cmp         eax,dword ptr [ebp-8]
>0049ABE2    jg          0049ABEE
 0049ABE4    mov         eax,[0056E220];^SMenuIndexError:TResStringRec
 0049ABE9    call        00497884
 0049ABEE    mov         edx,dword ptr [ebp-8]
 0049ABF1    mov         eax,dword ptr [ebp-4]
 0049ABF4    mov         eax,dword ptr [eax+5C];TMenuItem.FItems:TList
 0049ABF7    call        TList.Get
 0049ABFC    mov         dword ptr [ebp-0C],eax
 0049ABFF    mov         edx,dword ptr [ebp-8]
 0049AC02    mov         eax,dword ptr [ebp-4]
 0049AC05    mov         eax,dword ptr [eax+5C];TMenuItem.FItems:TList
 0049AC08    call        00420094
 0049AC0D    mov         eax,dword ptr [ebp-0C]
 0049AC10    xor         edx,edx
 0049AC12    mov         dword ptr [eax+64],edx
 0049AC15    mov         eax,dword ptr [ebp-0C]
 0049AC18    xor         edx,edx
 0049AC1A    mov         dword ptr [eax+80],edx
 0049AC20    mov         dword ptr [eax+84],edx
 0049AC26    mov         eax,dword ptr [ebp-4]
 0049AC29    cmp         dword ptr [eax+34],0;TMenuItem.FHandle:HMENU
>0049AC2D    je          0049AC37
 0049AC2F    mov         eax,dword ptr [ebp-4]
 0049AC32    call        004989D8
 0049AC37    mov         eax,dword ptr [ebp-4]
 0049AC3A    call        0049A814
 0049AC3F    test        eax,eax
 0049AC41    sete        dl
 0049AC44    mov         eax,dword ptr [ebp-4]
 0049AC47    mov         ecx,dword ptr [eax]
 0049AC49    call        dword ptr [ecx+3C];TMenuItem.sub_0049ADD0
 0049AC4C    mov         esp,ebp
 0049AC4E    pop         ebp
 0049AC4F    ret
end;*}

//0049AC50
procedure sub_0049AC50;
begin
{*
 0049AC50    push        ebp
 0049AC51    mov         ebp,esp
 0049AC53    push        ecx
 0049AC54    push        ebx
 0049AC55    mov         dword ptr [ebp-4],eax
 0049AC58    mov         eax,dword ptr [ebp-4]
 0049AC5B    cmp         byte ptr [eax+39],0;TMenuItem.Enabled:Boolean
>0049AC5F    je          0049AD33
 0049AC65    mov         eax,dword ptr [ebp-4]
 0049AC68    cmp         dword ptr [eax+44],0;TMenuItem.FActionLink:TMenuActionLink
>0049AC6C    jne         0049AC7A
 0049AC6E    mov         eax,dword ptr [ebp-4]
 0049AC71    cmp         byte ptr [eax+0A8],0;TMenuItem.AutoCheck:Boolean
>0049AC78    jne         0049AC9E
 0049AC7A    mov         eax,dword ptr [ebp-4]
 0049AC7D    cmp         dword ptr [eax+44],0;TMenuItem.FActionLink:TMenuActionLink
>0049AC81    je          0049ACAF
 0049AC83    mov         eax,dword ptr [ebp-4]
 0049AC86    mov         eax,dword ptr [eax+44];TMenuItem.FActionLink:TMenuActionLink
 0049AC89    mov         edx,dword ptr [eax]
 0049AC8B    call        dword ptr [edx+78];TMenuActionLink.sub_00497EE8
 0049AC8E    test        al,al
>0049AC90    jne         0049ACAF
 0049AC92    mov         eax,dword ptr [ebp-4]
 0049AC95    cmp         byte ptr [eax+0A8],0;TMenuItem.AutoCheck:Boolean
>0049AC9C    je          0049ACAF
 0049AC9E    mov         eax,dword ptr [ebp-4]
 0049ACA1    mov         dl,byte ptr [eax+38];TMenuItem.Checked:Boolean
 0049ACA4    xor         dl,1
 0049ACA7    mov         eax,dword ptr [ebp-4]
 0049ACAA    call        TMenuItem.SetChecked
 0049ACAF    mov         eax,dword ptr [ebp-4]
 0049ACB2    cmp         word ptr [eax+8A],0;TMenuItem.?f8A:word
>0049ACBA    je          0049ACF2
 0049ACBC    mov         eax,dword ptr [ebp-4]
 0049ACBF    call        TMenuItem.GetAction
 0049ACC4    test        eax,eax
>0049ACC6    je          0049ACF2
 0049ACC8    mov         eax,dword ptr [ebp-4]
 0049ACCB    call        TMenuItem.GetAction
 0049ACD0    mov         eax,dword ptr [eax+40]
 0049ACD3    mov         edx,dword ptr [ebp-4]
 0049ACD6    cmp         eax,dword ptr [edx+88];TMenuItem.OnClick:TNotifyEvent
>0049ACDC    je          0049ACF2
 0049ACDE    mov         ebx,dword ptr [ebp-4]
 0049ACE1    mov         edx,dword ptr [ebp-4]
 0049ACE4    mov         eax,dword ptr [ebx+8C];TMenuItem.?f8C:TPopupMenu
 0049ACEA    call        dword ptr [ebx+88];TMenuItem.OnClick
>0049ACF0    jmp         0049AD33
 0049ACF2    mov         eax,dword ptr [ebp-4]
 0049ACF5    test        byte ptr [eax+1C],10;TMenuItem.FComponentState:TComponentState
>0049ACF9    jne         0049AD14
 0049ACFB    mov         eax,dword ptr [ebp-4]
 0049ACFE    cmp         dword ptr [eax+44],0;TMenuItem.FActionLink:TMenuActionLink
>0049AD02    je          0049AD14
 0049AD04    mov         edx,dword ptr [ebp-4]
 0049AD07    mov         eax,dword ptr [ebp-4]
 0049AD0A    mov         eax,dword ptr [eax+44];TMenuItem.FActionLink:TMenuActionLink
 0049AD0D    mov         ecx,dword ptr [eax]
 0049AD0F    call        dword ptr [ecx+18];TMenuActionLink.sub_0042AF1C
>0049AD12    jmp         0049AD33
 0049AD14    mov         eax,dword ptr [ebp-4]
 0049AD17    cmp         word ptr [eax+8A],0;TMenuItem.?f8A:word
>0049AD1F    je          0049AD33
 0049AD21    mov         ebx,dword ptr [ebp-4]
 0049AD24    mov         edx,dword ptr [ebp-4]
 0049AD27    mov         eax,dword ptr [ebx+8C];TMenuItem.?f8C:TPopupMenu
 0049AD2D    call        dword ptr [ebx+88];TMenuItem.OnClick
 0049AD33    pop         ebx
 0049AD34    pop         ecx
 0049AD35    pop         ebp
 0049AD36    ret
*}
end;

//0049AD38
{*function sub_0049AD38(?:TMenuItem; ?:TMenuItem):?;
begin
 0049AD38    push        ebp
 0049AD39    mov         ebp,esp
 0049AD3B    add         esp,0FFFFFFF4
 0049AD3E    mov         dword ptr [ebp-8],edx
 0049AD41    mov         dword ptr [ebp-4],eax
 0049AD44    mov         dword ptr [ebp-0C],0FFFFFFFF
 0049AD4B    mov         eax,dword ptr [ebp-4]
 0049AD4E    cmp         dword ptr [eax+5C],0;TMenuItem.FItems:TList
>0049AD52    je          0049AD65
 0049AD54    mov         edx,dword ptr [ebp-8]
 0049AD57    mov         eax,dword ptr [ebp-4]
 0049AD5A    mov         eax,dword ptr [eax+5C];TMenuItem.FItems:TList
 0049AD5D    call        004202BC
 0049AD62    mov         dword ptr [ebp-0C],eax
 0049AD65    mov         eax,dword ptr [ebp-0C]
 0049AD68    mov         esp,ebp
 0049AD6A    pop         ebp
 0049AD6B    ret
end;*}

//0049AD6C
{*procedure sub_0049AD6C(?:?; ?:TMenuItem);
begin
 0049AD6C    push        ebp
 0049AD6D    mov         ebp,esp
 0049AD6F    add         esp,0FFFFFFF8
 0049AD72    mov         dword ptr [ebp-8],edx
 0049AD75    mov         dword ptr [ebp-4],eax
 0049AD78    mov         eax,dword ptr [ebp-4]
 0049AD7B    call        0049A814
 0049AD80    mov         edx,eax
 0049AD82    mov         ecx,dword ptr [ebp-8]
 0049AD85    mov         eax,dword ptr [ebp-4]
 0049AD88    call        0049AACC
 0049AD8D    pop         ecx
 0049AD8E    pop         ecx
 0049AD8F    pop         ebp
 0049AD90    ret
end;*}

//0049AD94
procedure sub_0049AD94(?:TMenuItem; ?:TMenuItem);
begin
{*
 0049AD94    push        ebp
 0049AD95    mov         ebp,esp
 0049AD97    add         esp,0FFFFFFF4
 0049AD9A    mov         dword ptr [ebp-8],edx
 0049AD9D    mov         dword ptr [ebp-4],eax
 0049ADA0    mov         edx,dword ptr [ebp-8]
 0049ADA3    mov         eax,dword ptr [ebp-4]
 0049ADA6    call        0049AD38
 0049ADAB    mov         dword ptr [ebp-0C],eax
 0049ADAE    cmp         dword ptr [ebp-0C],0FFFFFFFF
>0049ADB2    jne         0049ADBE
 0049ADB4    mov         eax,[0056E518];^SMenuNotFound:TResStringRec
 0049ADB9    call        00497884
 0049ADBE    mov         edx,dword ptr [ebp-0C]
 0049ADC1    mov         eax,dword ptr [ebp-4]
 0049ADC4    call        0049ABBC
 0049ADC9    mov         esp,ebp
 0049ADCB    pop         ebp
 0049ADCC    ret
*}
end;

//0049ADD0
{*procedure sub_0049ADD0(?:?);
begin
 0049ADD0    push        ebp
 0049ADD1    mov         ebp,esp
 0049ADD3    add         esp,0FFFFFFF4
 0049ADD6    push        ebx
 0049ADD7    mov         byte ptr [ebp-5],dl
 0049ADDA    mov         dword ptr [ebp-4],eax
 0049ADDD    mov         eax,dword ptr [ebp-4]
 0049ADE0    cmp         dword ptr [eax+64],0;TMenuItem.FParent:TMenuItem
>0049ADE4    jne         0049AE02
 0049ADE6    mov         eax,dword ptr [ebp-4]
 0049ADE9    mov         eax,dword ptr [eax+4];TMenuItem.FOwner:TComponent
 0049ADEC    mov         edx,dword ptr ds:[4970B4];TMenu
 0049ADF2    call        @IsClass
 0049ADF7    test        al,al
>0049ADF9    je          0049AE02
 0049ADFB    xor         eax,eax
 0049ADFD    mov         dword ptr [ebp-0C],eax
>0049AE00    jmp         0049AE08
 0049AE02    mov         eax,dword ptr [ebp-4]
 0049AE05    mov         dword ptr [ebp-0C],eax
 0049AE08    mov         eax,dword ptr [ebp-4]
 0049AE0B    cmp         word ptr [eax+82],0;TMenuItem.?f82:word
>0049AE13    je          0049AE2E
 0049AE15    mov         al,byte ptr [ebp-5]
 0049AE18    push        eax
 0049AE19    mov         ebx,dword ptr [ebp-4]
 0049AE1C    mov         ecx,dword ptr [ebp-0C]
 0049AE1F    mov         edx,dword ptr [ebp-4]
 0049AE22    mov         eax,dword ptr [ebx+84];TMenuItem.?f84:TMenu
 0049AE28    call        dword ptr [ebx+80];TMenuItem.FOnChange
 0049AE2E    pop         ebx
 0049AE2F    mov         esp,ebp
 0049AE31    pop         ebp
 0049AE32    ret
end;*}

//0049AE34
{*procedure sub_0049AE34(?:?; ?:?; ?:?; ?:?);
begin
 0049AE34    push        ebp
 0049AE35    mov         ebp,esp
 0049AE37    add         esp,0FFFFFFF4
 0049AE3A    mov         dword ptr [ebp-8],ecx
 0049AE3D    mov         dword ptr [ebp-0C],edx
 0049AE40    mov         dword ptr [ebp-4],eax
 0049AE43    cmp         byte ptr [ebp+8],0
>0049AE47    je          0049AE63
 0049AE49    mov         eax,dword ptr [ebp-4]
 0049AE4C    cmp         dword ptr [eax+34],0
>0049AE50    jne         0049AE5B
 0049AE52    mov         eax,dword ptr [ebp-4]
 0049AE55    cmp         dword ptr [eax+6C],0
>0049AE59    je          0049AE63
 0049AE5B    mov         eax,dword ptr [ebp-4]
 0049AE5E    call        004989D8
 0049AE63    mov         eax,dword ptr [ebp-4]
 0049AE66    cmp         dword ptr [eax+64],0
>0049AE6A    je          0049AE81
 0049AE6C    push        0
 0049AE6E    mov         ecx,dword ptr [ebp-8]
 0049AE71    mov         edx,dword ptr [ebp-4]
 0049AE74    mov         eax,dword ptr [ebp-4]
 0049AE77    mov         eax,dword ptr [eax+64]
 0049AE7A    call        0049AE34
>0049AE7F    jmp         0049AEA1
 0049AE81    mov         eax,dword ptr [ebp-4]
 0049AE84    mov         eax,dword ptr [eax+4]
 0049AE87    mov         edx,dword ptr ds:[4971A8];TMainMenu
 0049AE8D    call        @IsClass
 0049AE92    test        al,al
>0049AE94    je          0049AEA1
 0049AE96    mov         eax,dword ptr [ebp-4]
 0049AE99    mov         eax,dword ptr [eax+4]
 0049AE9C    call        0049D484
 0049AEA1    mov         esp,ebp
 0049AEA3    pop         ebp
 0049AEA4    ret         4
end;*}

//0049AEA8
{*function TMenuItem.GetBitmap:?;
begin
 0049AEA8    push        ebp
 0049AEA9    mov         ebp,esp
 0049AEAB    add         esp,0FFFFFFF8
 0049AEAE    mov         dword ptr [ebp-4],eax
 0049AEB1    mov         eax,dword ptr [ebp-4]
 0049AEB4    cmp         dword ptr [eax+4C],0;TMenuItem.FBitmap:TBitmap
>0049AEB8    jne         0049AECC
 0049AEBA    mov         dl,1
 0049AEBC    mov         eax,[0042CF48];TBitmap
 0049AEC1    call        TBitmap.Create;TBitmap.Create
 0049AEC6    mov         edx,dword ptr [ebp-4]
 0049AEC9    mov         dword ptr [edx+4C],eax;TMenuItem.FBitmap:TBitmap
 0049AECC    mov         dl,1
 0049AECE    mov         eax,dword ptr [ebp-4]
 0049AED1    mov         eax,dword ptr [eax+4C];TMenuItem.FBitmap:TBitmap
 0049AED4    mov         ecx,dword ptr [eax]
 0049AED6    call        dword ptr [ecx+3C];TBitmap.sub_0043142C
 0049AED9    mov         eax,dword ptr [ebp-4]
 0049AEDC    mov         eax,dword ptr [eax+4C];TMenuItem.FBitmap:TBitmap
 0049AEDF    mov         dword ptr [ebp-8],eax
 0049AEE2    mov         eax,dword ptr [ebp-8]
 0049AEE5    pop         ecx
 0049AEE6    pop         ecx
 0049AEE7    pop         ebp
 0049AEE8    ret
end;*}

//0049AEEC
procedure TMenuItem.SetAction(Value:TBasicAction);
begin
{*
 0049AEEC    push        ebp
 0049AEED    mov         ebp,esp
 0049AEEF    add         esp,0FFFFFFF8
 0049AEF2    push        esi
 0049AEF3    mov         dword ptr [ebp-8],edx
 0049AEF6    mov         dword ptr [ebp-4],eax
 0049AEF9    cmp         dword ptr [ebp-8],0
>0049AEFD    jne         0049AF14
 0049AEFF    mov         eax,dword ptr [ebp-4]
 0049AF02    mov         eax,dword ptr [eax+44];TMenuItem.FActionLink:TMenuActionLink
 0049AF05    call        TObject.Free
 0049AF0A    mov         eax,dword ptr [ebp-4]
 0049AF0D    xor         edx,edx
 0049AF0F    mov         dword ptr [eax+44],edx;TMenuItem.FActionLink:TMenuActionLink
>0049AF12    jmp         0049AF7C
 0049AF14    mov         eax,dword ptr [ebp-4]
 0049AF17    cmp         dword ptr [eax+44],0;TMenuItem.FActionLink:TMenuActionLink
>0049AF1B    jne         0049AF37
 0049AF1D    mov         eax,dword ptr [ebp-4]
 0049AF20    mov         si,0FFEE
 0049AF24    call        @CallDynaInst;TMenuItem.sub_0049A7FC
 0049AF29    mov         ecx,dword ptr [ebp-4]
 0049AF2C    mov         dl,1
 0049AF2E    call        dword ptr [eax+14]
 0049AF31    mov         edx,dword ptr [ebp-4]
 0049AF34    mov         dword ptr [edx+44],eax;TMenuItem.FActionLink:TMenuActionLink
 0049AF37    mov         edx,dword ptr [ebp-8]
 0049AF3A    mov         eax,dword ptr [ebp-4]
 0049AF3D    mov         eax,dword ptr [eax+44];TMenuItem.FActionLink:TMenuActionLink
 0049AF40    mov         ecx,dword ptr [eax]
 0049AF42    call        dword ptr [ecx+0C];TMenuActionLink.sub_0042AF54
 0049AF45    mov         eax,dword ptr [ebp-4]
 0049AF48    mov         eax,dword ptr [eax+44];TMenuItem.FActionLink:TMenuActionLink
 0049AF4B    mov         edx,dword ptr [ebp-4]
 0049AF4E    mov         dword ptr [eax+0C],edx;TMenuActionLink.?fC:TSpeedButton
 0049AF51    mov         dword ptr [eax+8],49B2C0;TMenuActionLink.FOnChange:TNotifyEvent sub_0049B2C0
 0049AF58    mov         eax,dword ptr [ebp-8]
 0049AF5B    test        byte ptr [eax+1C],1;TBasicAction.FComponentState:TComponentState
 0049AF5F    setne       cl
 0049AF62    mov         edx,dword ptr [ebp-8]
 0049AF65    mov         eax,dword ptr [ebp-4]
 0049AF68    mov         si,0FFEF
 0049AF6C    call        @CallDynaInst;TMenuItem.sub_0049B12C
 0049AF71    mov         edx,dword ptr [ebp-4]
 0049AF74    mov         eax,dword ptr [ebp-8]
 0049AF77    call        0042A2CC
 0049AF7C    pop         esi
 0049AF7D    pop         ecx
 0049AF7E    pop         ecx
 0049AF7F    pop         ebp
 0049AF80    ret
*}
end;

//0049AF84
procedure TMenuItem.SetBitmap(Value:TBitmap);
begin
{*
 0049AF84    push        ebp
 0049AF85    mov         ebp,esp
 0049AF87    add         esp,0FFFFFFF8
 0049AF8A    mov         dword ptr [ebp-8],edx
 0049AF8D    mov         dword ptr [ebp-4],eax
 0049AF90    mov         eax,dword ptr [ebp-4]
 0049AF93    cmp         dword ptr [eax+4C],0;TMenuItem.FBitmap:TBitmap
>0049AF97    jne         0049AFAB
 0049AF99    mov         dl,1
 0049AF9B    mov         eax,[0042CF48];TBitmap
 0049AFA0    call        TBitmap.Create;TBitmap.Create
 0049AFA5    mov         edx,dword ptr [ebp-4]
 0049AFA8    mov         dword ptr [edx+4C],eax;TMenuItem.FBitmap:TBitmap
 0049AFAB    mov         edx,dword ptr [ebp-8]
 0049AFAE    mov         eax,dword ptr [ebp-4]
 0049AFB1    mov         eax,dword ptr [eax+4C];TMenuItem.FBitmap:TBitmap
 0049AFB4    mov         ecx,dword ptr [eax]
 0049AFB6    call        dword ptr [ecx+8];TBitmap.sub_00434344
 0049AFB9    mov         dl,1
 0049AFBB    mov         eax,dword ptr [ebp-4]
 0049AFBE    mov         ecx,dword ptr [eax]
 0049AFC0    call        dword ptr [ecx+3C];TMenuItem.sub_0049ADD0
 0049AFC3    pop         ecx
 0049AFC4    pop         ecx
 0049AFC5    pop         ebp
 0049AFC6    ret
*}
end;

//0049AFC8
{*procedure sub_0049AFC8(?:?);
begin
 0049AFC8    push        ebp
 0049AFC9    mov         ebp,esp
 0049AFCB    add         esp,0FFFFFFF4
 0049AFCE    mov         dword ptr [ebp-4],eax
 0049AFD1    mov         eax,dword ptr [ebp-4]
 0049AFD4    call        0049A814
 0049AFD9    dec         eax
 0049AFDA    test        eax,eax
>0049AFDC    jl          0049B001
 0049AFDE    inc         eax
 0049AFDF    mov         dword ptr [ebp-0C],eax
 0049AFE2    mov         dword ptr [ebp-8],0
 0049AFE9    mov         edx,dword ptr [ebp-8]
 0049AFEC    mov         eax,dword ptr [ebp-4]
 0049AFEF    call        0049A840
 0049AFF4    mov         edx,dword ptr [eax]
 0049AFF6    call        dword ptr [edx+40]
 0049AFF9    inc         dword ptr [ebp-8]
 0049AFFC    dec         dword ptr [ebp-0C]
>0049AFFF    jne         0049AFE9
 0049B001    mov         esp,ebp
 0049B003    pop         ebp
 0049B004    ret
end;*}

//0049B008
procedure TMenuItem.sub_0042A81C;
begin
{*
 0049B008    push        ebp
 0049B009    mov         ebp,esp
 0049B00B    add         esp,0FFFFFFF8
 0049B00E    mov         dword ptr [ebp-4],eax
 0049B011    mov         eax,dword ptr [ebp-4]
 0049B014    cmp         dword ptr [eax+64],0;TMenuItem.FParent:TMenuItem
>0049B018    je          0049B034
 0049B01A    mov         eax,dword ptr [ebp-4]
 0049B01D    mov         eax,dword ptr [eax+64];TMenuItem.FParent:TMenuItem
 0049B020    cmp         dword ptr [eax+70],0;TMenuItem.FMenu:TMenu
>0049B024    je          0049B034
 0049B026    mov         eax,dword ptr [ebp-4]
 0049B029    mov         eax,dword ptr [eax+64];TMenuItem.FParent:TMenuItem
 0049B02C    mov         eax,dword ptr [eax+70];TMenuItem.FMenu:TMenu
 0049B02F    mov         dword ptr [ebp-8],eax
>0049B032    jmp         0049B03D
 0049B034    mov         eax,dword ptr [ebp-4]
 0049B037    mov         eax,dword ptr [eax+64];TMenuItem.FParent:TMenuItem
 0049B03A    mov         dword ptr [ebp-8],eax
 0049B03D    mov         eax,dword ptr [ebp-8]
 0049B040    pop         ecx
 0049B041    pop         ecx
 0049B042    pop         ebp
 0049B043    ret
*}
end;

//0049B044
{*procedure TMenuItem.sub_0042A834(?:?);
begin
 0049B044    push        ebp
 0049B045    mov         ebp,esp
 0049B047    add         esp,0FFFFFFF8
 0049B04A    mov         dword ptr [ebp-8],edx
 0049B04D    mov         dword ptr [ebp-4],eax
 0049B050    mov         eax,dword ptr [ebp-4]
 0049B053    cmp         dword ptr [eax+64],0;TMenuItem.FParent:TMenuItem
>0049B057    je          0049B067
 0049B059    mov         edx,dword ptr [ebp-4]
 0049B05C    mov         eax,dword ptr [ebp-4]
 0049B05F    mov         eax,dword ptr [eax+64];TMenuItem.FParent:TMenuItem
 0049B062    call        0049AD94
 0049B067    cmp         dword ptr [ebp-8],0
>0049B06B    je          0049B0AC
 0049B06D    mov         eax,dword ptr [ebp-8]
 0049B070    mov         edx,dword ptr ds:[4970B4];TMenu
 0049B076    call        @IsClass
 0049B07B    test        al,al
>0049B07D    je          0049B08F
 0049B07F    mov         eax,dword ptr [ebp-8]
 0049B082    mov         eax,dword ptr [eax+34]
 0049B085    mov         edx,dword ptr [ebp-4]
 0049B088    call        0049AD6C
>0049B08D    jmp         0049B0AC
 0049B08F    mov         eax,dword ptr [ebp-8]
 0049B092    mov         edx,dword ptr ds:[496C90];TMenuItem
 0049B098    call        @IsClass
 0049B09D    test        al,al
>0049B09F    je          0049B0AC
 0049B0A1    mov         edx,dword ptr [ebp-4]
 0049B0A4    mov         eax,dword ptr [ebp-8]
 0049B0A7    call        0049AD6C
 0049B0AC    pop         ecx
 0049B0AD    pop         ecx
 0049B0AE    pop         ebp
 0049B0AF    ret
end;*}

//0049B0B0
function TMenuItem.GetParentMenu:TMenu;
begin
{*
 0049B0B0    push        ebp
 0049B0B1    mov         ebp,esp
 0049B0B3    add         esp,0FFFFFFF4
 0049B0B6    mov         dword ptr [ebp-4],eax
 0049B0B9    mov         eax,dword ptr [ebp-4]
 0049B0BC    mov         dword ptr [ebp-0C],eax
>0049B0BF    jmp         0049B0CA
 0049B0C1    mov         eax,dword ptr [ebp-0C]
 0049B0C4    mov         eax,dword ptr [eax+64]
 0049B0C7    mov         dword ptr [ebp-0C],eax
 0049B0CA    mov         eax,dword ptr [ebp-0C]
 0049B0CD    cmp         dword ptr [eax+64],0
>0049B0D1    jne         0049B0C1
 0049B0D3    mov         eax,dword ptr [ebp-0C]
 0049B0D6    mov         eax,dword ptr [eax+70]
 0049B0D9    mov         dword ptr [ebp-8],eax
 0049B0DC    mov         eax,dword ptr [ebp-8]
 0049B0DF    mov         esp,ebp
 0049B0E1    pop         ebp
 0049B0E2    ret
*}
end;

//0049B0E4
procedure TMenuItem.SetRadioItem(Value:Boolean);
begin
{*
 0049B0E4    push        ebp
 0049B0E5    mov         ebp,esp
 0049B0E7    add         esp,0FFFFFFF8
 0049B0EA    mov         byte ptr [ebp-5],dl
 0049B0ED    mov         dword ptr [ebp-4],eax
 0049B0F0    mov         eax,dword ptr [ebp-4]
 0049B0F3    mov         al,byte ptr [eax+3D];TMenuItem.RadioItem:Boolean
 0049B0F6    cmp         al,byte ptr [ebp-5]
>0049B0F9    je          0049B128
 0049B0FB    mov         al,byte ptr [ebp-5]
 0049B0FE    mov         edx,dword ptr [ebp-4]
 0049B101    mov         byte ptr [edx+3D],al;TMenuItem.RadioItem:Boolean
 0049B104    mov         eax,dword ptr [ebp-4]
 0049B107    cmp         byte ptr [eax+38],0;TMenuItem.Checked:Boolean
>0049B10B    je          0049B11E
 0049B10D    mov         eax,dword ptr [ebp-4]
 0049B110    cmp         byte ptr [eax+3D],0;TMenuItem.RadioItem:Boolean
>0049B114    je          0049B11E
 0049B116    mov         eax,dword ptr [ebp-4]
 0049B119    call        0049A5D8
 0049B11E    mov         dl,1
 0049B120    mov         eax,dword ptr [ebp-4]
 0049B123    mov         ecx,dword ptr [eax]
 0049B125    call        dword ptr [ecx+3C];TMenuItem.sub_0049ADD0
 0049B128    pop         ecx
 0049B129    pop         ecx
 0049B12A    pop         ebp
 0049B12B    ret
*}
end;

//0049B12C
{*procedure TMenuItem.sub_0049B12C(?:?; ?:?);
begin
 0049B12C    push        ebp
 0049B12D    mov         ebp,esp
 0049B12F    add         esp,0FFFFFFF4
 0049B132    mov         byte ptr [ebp-9],cl
 0049B135    mov         dword ptr [ebp-8],edx
 0049B138    mov         dword ptr [ebp-4],eax
 0049B13B    mov         eax,dword ptr [ebp-8]
 0049B13E    mov         edx,dword ptr ds:[492C28];TCustomAction
 0049B144    call        @IsClass
 0049B149    test        al,al
>0049B14B    je          0049B2BA
 0049B151    cmp         byte ptr [ebp-9],0
>0049B155    je          0049B163
 0049B157    mov         eax,dword ptr [ebp-4]
 0049B15A    cmp         byte ptr [eax+0A8],0;TMenuItem.AutoCheck:Boolean
>0049B161    jne         0049B175
 0049B163    mov         eax,dword ptr [ebp-8]
 0049B166    mov         al,byte ptr [eax+95]
 0049B16C    mov         edx,dword ptr [ebp-4]
 0049B16F    mov         byte ptr [edx+0A8],al;TMenuItem.AutoCheck:Boolean
 0049B175    cmp         byte ptr [ebp-9],0
>0049B179    je          0049B184
 0049B17B    mov         eax,dword ptr [ebp-4]
 0049B17E    cmp         dword ptr [eax+30],0;TMenuItem.Caption:String
>0049B182    jne         0049B192
 0049B184    mov         eax,dword ptr [ebp-8]
 0049B187    mov         edx,dword ptr [eax+64]
 0049B18A    mov         eax,dword ptr [ebp-4]
 0049B18D    call        TMenuItem.SetCaption
 0049B192    cmp         byte ptr [ebp-9],0
>0049B196    je          0049B1A1
 0049B198    mov         eax,dword ptr [ebp-4]
 0049B19B    cmp         byte ptr [eax+38],0;TMenuItem.Checked:Boolean
>0049B19F    jne         0049B1AF
 0049B1A1    mov         eax,dword ptr [ebp-8]
 0049B1A4    mov         dl,byte ptr [eax+69]
 0049B1A7    mov         eax,dword ptr [ebp-4]
 0049B1AA    call        TMenuItem.SetChecked
 0049B1AF    cmp         byte ptr [ebp-9],0
>0049B1B3    je          0049B1BE
 0049B1B5    mov         eax,dword ptr [ebp-4]
 0049B1B8    cmp         byte ptr [eax+39],1;TMenuItem.Enabled:Boolean
>0049B1BC    jne         0049B1CC
 0049B1BE    mov         eax,dword ptr [ebp-8]
 0049B1C1    mov         dl,byte ptr [eax+6A]
 0049B1C4    mov         eax,dword ptr [ebp-4]
 0049B1C7    call        TMenuItem.SetEnabled
 0049B1CC    cmp         byte ptr [ebp-9],0
>0049B1D0    je          0049B1DB
 0049B1D2    mov         eax,dword ptr [ebp-4]
 0049B1D5    cmp         dword ptr [eax+54],0;TMenuItem.HelpContext:THelpContext
>0049B1D9    jne         0049B1E7
 0049B1DB    mov         eax,dword ptr [ebp-8]
 0049B1DE    mov         eax,dword ptr [eax+74]
 0049B1E1    mov         edx,dword ptr [ebp-4]
 0049B1E4    mov         dword ptr [edx+54],eax;TMenuItem.HelpContext:THelpContext
 0049B1E7    cmp         byte ptr [ebp-9],0
>0049B1EB    je          0049B1F6
 0049B1ED    mov         eax,dword ptr [ebp-4]
 0049B1F0    cmp         dword ptr [eax+58],0;TMenuItem.Hint:String
>0049B1F4    jne         0049B207
 0049B1F6    mov         eax,dword ptr [ebp-4]
 0049B1F9    add         eax,58;TMenuItem.Hint:String
 0049B1FC    mov         edx,dword ptr [ebp-8]
 0049B1FF    mov         edx,dword ptr [edx+7C]
 0049B202    call        @LStrAsg
 0049B207    mov         eax,dword ptr [ebp-4]
 0049B20A    cmp         byte ptr [eax+3D],0;TMenuItem.RadioItem:Boolean
>0049B20E    je          0049B22D
 0049B210    cmp         byte ptr [ebp-9],0
>0049B214    je          0049B21F
 0049B216    mov         eax,dword ptr [ebp-4]
 0049B219    cmp         byte ptr [eax+3F],0;TMenuItem.GroupIndex:byte
>0049B21D    jne         0049B22D
 0049B21F    mov         eax,dword ptr [ebp-8]
 0049B222    mov         dl,byte ptr [eax+6C]
 0049B225    mov         eax,dword ptr [ebp-4]
 0049B228    call        TMenuItem.SetGroupIndex
 0049B22D    cmp         byte ptr [ebp-9],0
>0049B231    je          0049B23C
 0049B233    mov         eax,dword ptr [ebp-4]
 0049B236    cmp         dword ptr [eax+40],0FFFFFFFF;TMenuItem.ImageIndex:TImageIndex
>0049B23A    jne         0049B24D
 0049B23C    mov         eax,dword ptr [ebp-8]
 0049B23F    mov         edx,dword ptr [eax+80]
 0049B245    mov         eax,dword ptr [ebp-4]
 0049B248    call        TMenuItem.SetImageIndex
 0049B24D    cmp         byte ptr [ebp-9],0
>0049B251    je          0049B25D
 0049B253    mov         eax,dword ptr [ebp-4]
 0049B256    cmp         word ptr [eax+60],0;TMenuItem.ShortCut:TShortCut
>0049B25B    jne         0049B26F
 0049B25D    mov         eax,dword ptr [ebp-8]
 0049B260    mov         dx,word ptr [eax+84]
 0049B267    mov         eax,dword ptr [ebp-4]
 0049B26A    call        TMenuItem.SetShortCut
 0049B26F    cmp         byte ptr [ebp-9],0
>0049B273    je          0049B27E
 0049B275    mov         eax,dword ptr [ebp-4]
 0049B278    cmp         byte ptr [eax+3E],1;TMenuItem.Visible:Boolean
>0049B27C    jne         0049B28F
 0049B27E    mov         eax,dword ptr [ebp-8]
 0049B281    mov         dl,byte ptr [eax+86]
 0049B287    mov         eax,dword ptr [ebp-4]
 0049B28A    call        TMenuItem.SetVisible
 0049B28F    cmp         byte ptr [ebp-9],0
>0049B293    je          0049B2A2
 0049B295    mov         eax,dword ptr [ebp-4]
 0049B298    cmp         word ptr [eax+8A],0;TMenuItem.?f8A:word
>0049B2A0    jne         0049B2BA
 0049B2A2    mov         eax,dword ptr [ebp-8]
 0049B2A5    mov         edx,dword ptr [ebp-4]
 0049B2A8    mov         ecx,dword ptr [eax+40]
 0049B2AB    mov         dword ptr [edx+88],ecx;TMenuItem.OnClick:TNotifyEvent
 0049B2B1    mov         ecx,dword ptr [eax+44]
 0049B2B4    mov         dword ptr [edx+8C],ecx;TMenuItem.?f8C:TPopupMenu
 0049B2BA    mov         esp,ebp
 0049B2BC    pop         ebp
 0049B2BD    ret
end;*}

//0049B2C0
{*procedure sub_0049B2C0(?:?; ?:?);
begin
 0049B2C0    push        ebp
 0049B2C1    mov         ebp,esp
 0049B2C3    add         esp,0FFFFFFF8
 0049B2C6    push        esi
 0049B2C7    mov         dword ptr [ebp-8],edx
 0049B2CA    mov         dword ptr [ebp-4],eax
 0049B2CD    mov         eax,dword ptr [ebp-4]
 0049B2D0    call        TMenuItem.GetAction
 0049B2D5    cmp         eax,dword ptr [ebp-8]
>0049B2D8    jne         0049B2EB
 0049B2DA    xor         ecx,ecx
 0049B2DC    mov         edx,dword ptr [ebp-8]
 0049B2DF    mov         eax,dword ptr [ebp-4]
 0049B2E2    mov         si,0FFEF
 0049B2E6    call        @CallDynaInst
 0049B2EB    pop         esi
 0049B2EC    pop         ecx
 0049B2ED    pop         ecx
 0049B2EE    pop         ebp
 0049B2EF    ret
end;*}

//0049B2F0
function TMenuItem.IsStoredCaption(Value:String):Boolean;
begin
{*
 0049B2F0    push        ebp
 0049B2F1    mov         ebp,esp
 0049B2F3    add         esp,0FFFFFFF8
 0049B2F6    mov         dword ptr [ebp-4],eax
 0049B2F9    mov         eax,dword ptr [ebp-4]
 0049B2FC    cmp         dword ptr [eax+44],0;TMenuItem.FActionLink:TMenuActionLink
>0049B300    je          0049B315
 0049B302    mov         eax,dword ptr [ebp-4]
 0049B305    mov         eax,dword ptr [eax+44];TMenuItem.FActionLink:TMenuActionLink
 0049B308    mov         edx,dword ptr [eax]
 0049B30A    call        dword ptr [edx+20];TMenuActionLink.sub_00497F20
 0049B30D    test        al,al
>0049B30F    je          0049B315
 0049B311    xor         eax,eax
>0049B313    jmp         0049B317
 0049B315    mov         al,1
 0049B317    mov         byte ptr [ebp-5],al
 0049B31A    mov         al,byte ptr [ebp-5]
 0049B31D    pop         ecx
 0049B31E    pop         ecx
 0049B31F    pop         ebp
 0049B320    ret
*}
end;

//0049B324
function TMenuItem.IsStoredChecked(Value:Boolean):Boolean;
begin
{*
 0049B324    push        ebp
 0049B325    mov         ebp,esp
 0049B327    add         esp,0FFFFFFF8
 0049B32A    mov         dword ptr [ebp-4],eax
 0049B32D    mov         eax,dword ptr [ebp-4]
 0049B330    cmp         dword ptr [eax+44],0;TMenuItem.FActionLink:TMenuActionLink
>0049B334    je          0049B349
 0049B336    mov         eax,dword ptr [ebp-4]
 0049B339    mov         eax,dword ptr [eax+44];TMenuItem.FActionLink:TMenuActionLink
 0049B33C    mov         edx,dword ptr [eax]
 0049B33E    call        dword ptr [edx+24];TMenuActionLink.sub_00497F6C
 0049B341    test        al,al
>0049B343    je          0049B349
 0049B345    xor         eax,eax
>0049B347    jmp         0049B34B
 0049B349    mov         al,1
 0049B34B    mov         byte ptr [ebp-5],al
 0049B34E    mov         al,byte ptr [ebp-5]
 0049B351    pop         ecx
 0049B352    pop         ecx
 0049B353    pop         ebp
 0049B354    ret
*}
end;

//0049B358
function TMenuItem.IsStoredEnabled(Value:Boolean):Boolean;
begin
{*
 0049B358    push        ebp
 0049B359    mov         ebp,esp
 0049B35B    add         esp,0FFFFFFF8
 0049B35E    mov         dword ptr [ebp-4],eax
 0049B361    mov         eax,dword ptr [ebp-4]
 0049B364    cmp         dword ptr [eax+44],0;TMenuItem.FActionLink:TMenuActionLink
>0049B368    je          0049B37D
 0049B36A    mov         eax,dword ptr [ebp-4]
 0049B36D    mov         eax,dword ptr [eax+44];TMenuItem.FActionLink:TMenuActionLink
 0049B370    mov         edx,dword ptr [eax]
 0049B372    call        dword ptr [edx+28];TMenuActionLink.sub_00497FB0
 0049B375    test        al,al
>0049B377    je          0049B37D
 0049B379    xor         eax,eax
>0049B37B    jmp         0049B37F
 0049B37D    mov         al,1
 0049B37F    mov         byte ptr [ebp-5],al
 0049B382    mov         al,byte ptr [ebp-5]
 0049B385    pop         ecx
 0049B386    pop         ecx
 0049B387    pop         ebp
 0049B388    ret
*}
end;

//0049B38C
function TMenuItem.IsStoredHint(Value:String):Boolean;
begin
{*
 0049B38C    push        ebp
 0049B38D    mov         ebp,esp
 0049B38F    add         esp,0FFFFFFF8
 0049B392    mov         dword ptr [ebp-4],eax
 0049B395    mov         eax,dword ptr [ebp-4]
 0049B398    cmp         dword ptr [eax+44],0;TMenuItem.FActionLink:TMenuActionLink
>0049B39C    je          0049B3B1
 0049B39E    mov         eax,dword ptr [ebp-4]
 0049B3A1    mov         eax,dword ptr [eax+44];TMenuItem.FActionLink:TMenuActionLink
 0049B3A4    mov         edx,dword ptr [eax]
 0049B3A6    call        dword ptr [edx+38];TMenuActionLink.sub_00498038
 0049B3A9    test        al,al
>0049B3AB    je          0049B3B1
 0049B3AD    xor         eax,eax
>0049B3AF    jmp         0049B3B3
 0049B3B1    mov         al,1
 0049B3B3    mov         byte ptr [ebp-5],al
 0049B3B6    mov         al,byte ptr [ebp-5]
 0049B3B9    pop         ecx
 0049B3BA    pop         ecx
 0049B3BB    pop         ebp
 0049B3BC    ret
*}
end;

//0049B3C0
function TMenuItem.IsStoredHelpContext(Value:THelpContext):Boolean;
begin
{*
 0049B3C0    push        ebp
 0049B3C1    mov         ebp,esp
 0049B3C3    add         esp,0FFFFFFF8
 0049B3C6    mov         dword ptr [ebp-4],eax
 0049B3C9    mov         eax,dword ptr [ebp-4]
 0049B3CC    cmp         dword ptr [eax+44],0;TMenuItem.FActionLink:TMenuActionLink
>0049B3D0    je          0049B3E5
 0049B3D2    mov         eax,dword ptr [ebp-4]
 0049B3D5    mov         eax,dword ptr [eax+44];TMenuItem.FActionLink:TMenuActionLink
 0049B3D8    mov         edx,dword ptr [eax]
 0049B3DA    call        dword ptr [edx+30];TMenuActionLink.sub_00497FF4
 0049B3DD    test        al,al
>0049B3DF    je          0049B3E5
 0049B3E1    xor         eax,eax
>0049B3E3    jmp         0049B3E7
 0049B3E5    mov         al,1
 0049B3E7    mov         byte ptr [ebp-5],al
 0049B3EA    mov         al,byte ptr [ebp-5]
 0049B3ED    pop         ecx
 0049B3EE    pop         ecx
 0049B3EF    pop         ebp
 0049B3F0    ret
*}
end;

//0049B3F4
function TMenuItem.IsStoredImageIndex(Value:TImageIndex):Boolean;
begin
{*
 0049B3F4    push        ebp
 0049B3F5    mov         ebp,esp
 0049B3F7    add         esp,0FFFFFFF8
 0049B3FA    mov         dword ptr [ebp-4],eax
 0049B3FD    mov         eax,dword ptr [ebp-4]
 0049B400    cmp         dword ptr [eax+44],0;TMenuItem.FActionLink:TMenuActionLink
>0049B404    je          0049B419
 0049B406    mov         eax,dword ptr [ebp-4]
 0049B409    mov         eax,dword ptr [eax+44];TMenuItem.FActionLink:TMenuActionLink
 0049B40C    mov         edx,dword ptr [eax]
 0049B40E    call        dword ptr [edx+3C];TMenuActionLink.sub_004980D8
 0049B411    test        al,al
>0049B413    je          0049B419
 0049B415    xor         eax,eax
>0049B417    jmp         0049B41B
 0049B419    mov         al,1
 0049B41B    mov         byte ptr [ebp-5],al
 0049B41E    mov         al,byte ptr [ebp-5]
 0049B421    pop         ecx
 0049B422    pop         ecx
 0049B423    pop         ebp
 0049B424    ret
*}
end;

//0049B428
function TMenuItem.IsStoredShortCut(Value:TShortCut):Boolean;
begin
{*
 0049B428    push        ebp
 0049B429    mov         ebp,esp
 0049B42B    add         esp,0FFFFFFF8
 0049B42E    mov         dword ptr [ebp-4],eax
 0049B431    mov         eax,dword ptr [ebp-4]
 0049B434    cmp         dword ptr [eax+44],0;TMenuItem.FActionLink:TMenuActionLink
>0049B438    je          0049B44D
 0049B43A    mov         eax,dword ptr [ebp-4]
 0049B43D    mov         eax,dword ptr [eax+44];TMenuItem.FActionLink:TMenuActionLink
 0049B440    mov         edx,dword ptr [eax]
 0049B442    call        dword ptr [edx+40];TMenuActionLink.sub_00498120
 0049B445    test        al,al
>0049B447    je          0049B44D
 0049B449    xor         eax,eax
>0049B44B    jmp         0049B44F
 0049B44D    mov         al,1
 0049B44F    mov         byte ptr [ebp-5],al
 0049B452    mov         al,byte ptr [ebp-5]
 0049B455    pop         ecx
 0049B456    pop         ecx
 0049B457    pop         ebp
 0049B458    ret
*}
end;

//0049B45C
function TMenuItem.IsStoredVisible(Value:Boolean):Boolean;
begin
{*
 0049B45C    push        ebp
 0049B45D    mov         ebp,esp
 0049B45F    add         esp,0FFFFFFF8
 0049B462    mov         dword ptr [ebp-4],eax
 0049B465    mov         eax,dword ptr [ebp-4]
 0049B468    cmp         dword ptr [eax+44],0;TMenuItem.FActionLink:TMenuActionLink
>0049B46C    je          0049B481
 0049B46E    mov         eax,dword ptr [ebp-4]
 0049B471    mov         eax,dword ptr [eax+44];TMenuItem.FActionLink:TMenuActionLink
 0049B474    mov         edx,dword ptr [eax]
 0049B476    call        dword ptr [edx+44];TMenuActionLink.sub_0049816C
 0049B479    test        al,al
>0049B47B    je          0049B481
 0049B47D    xor         eax,eax
>0049B47F    jmp         0049B483
 0049B481    mov         al,1
 0049B483    mov         byte ptr [ebp-5],al
 0049B486    mov         al,byte ptr [ebp-5]
 0049B489    pop         ecx
 0049B48A    pop         ecx
 0049B48B    pop         ebp
 0049B48C    ret
*}
end;

//0049B490
function TMenuItem.IsStoredOnClick(Value:TNotifyEvent):Boolean;
begin
{*
 0049B490    push        ebp
 0049B491    mov         ebp,esp
 0049B493    add         esp,0FFFFFFF8
 0049B496    mov         dword ptr [ebp-4],eax
 0049B499    mov         eax,dword ptr [ebp-4]
 0049B49C    cmp         dword ptr [eax+44],0;TMenuItem.FActionLink:TMenuActionLink
>0049B4A0    je          0049B4B5
 0049B4A2    mov         eax,dword ptr [ebp-4]
 0049B4A5    mov         eax,dword ptr [eax+44];TMenuItem.FActionLink:TMenuActionLink
 0049B4A8    mov         edx,dword ptr [eax]
 0049B4AA    call        dword ptr [edx+8];TMenuActionLink.sub_004981B4
 0049B4AD    test        al,al
>0049B4AF    je          0049B4B5
 0049B4B1    xor         eax,eax
>0049B4B3    jmp         0049B4B7
 0049B4B5    mov         al,1
 0049B4B7    mov         byte ptr [ebp-5],al
 0049B4BA    mov         al,byte ptr [ebp-5]
 0049B4BD    pop         ecx
 0049B4BE    pop         ecx
 0049B4BF    pop         ebp
 0049B4C0    ret
*}
end;

//0049B4C4
{*procedure sub_0049B4C4(?:?);
begin
 0049B4C4    push        ebp
 0049B4C5    mov         ebp,esp
 0049B4C7    add         esp,0FFFFFFF8
 0049B4CA    mov         dword ptr [ebp-8],edx
 0049B4CD    mov         dword ptr [ebp-4],eax
 0049B4D0    mov         eax,dword ptr [ebp-8]
 0049B4D3    mov         edx,dword ptr ds:[492C28];TCustomAction
 0049B4D9    call        @IsClass
 0049B4DE    test        al,al
>0049B4E0    je          0049B54F
 0049B4E2    mov         eax,dword ptr [ebp-4]
 0049B4E5    mov         dl,byte ptr [eax+39];TMenuItem.Enabled:Boolean
 0049B4E8    mov         eax,dword ptr [ebp-8]
 0049B4EB    call        TVirtualListAction.SetEnabled
 0049B4F0    mov         eax,dword ptr [ebp-4]
 0049B4F3    mov         edx,dword ptr [eax+54];TMenuItem.HelpContext:THelpContext
 0049B4F6    mov         eax,dword ptr [ebp-8]
 0049B4F9    mov         ecx,dword ptr [eax]
 0049B4FB    call        dword ptr [ecx+48]
 0049B4FE    mov         eax,dword ptr [ebp-4]
 0049B501    mov         edx,dword ptr [eax+58];TMenuItem.Hint:String
 0049B504    mov         eax,dword ptr [ebp-8]
 0049B507    call        TVirtualListAction.SetHint
 0049B50C    mov         eax,dword ptr [ebp-4]
 0049B50F    mov         edx,dword ptr [eax+40];TMenuItem.ImageIndex:TImageIndex
 0049B512    mov         eax,dword ptr [ebp-8]
 0049B515    call        TFileExit.SetImageIndex
 0049B51A    mov         eax,dword ptr [ebp-4]
 0049B51D    mov         edx,dword ptr [eax+30];TMenuItem.Caption:String
 0049B520    mov         eax,dword ptr [ebp-8]
 0049B523    call        TVirtualListAction.SetCaption
 0049B528    mov         eax,dword ptr [ebp-4]
 0049B52B    mov         dl,byte ptr [eax+3E];TMenuItem.Visible:Boolean
 0049B52E    mov         eax,dword ptr [ebp-8]
 0049B531    call        TVirtualListAction.SetVisible
 0049B536    mov         eax,dword ptr [ebp-4]
 0049B539    push        dword ptr [eax+8C];TMenuItem.?f8C:TPopupMenu
 0049B53F    push        dword ptr [eax+88];TMenuItem.OnClick:TNotifyEvent
 0049B545    mov         eax,dword ptr [ebp-8]
 0049B548    mov         edx,dword ptr [eax]
 0049B54A    call        dword ptr [edx+34]
>0049B54D    jmp         0049B55A
 0049B54F    mov         edx,dword ptr [ebp-8]
 0049B552    mov         eax,dword ptr [ebp-4]
 0049B555    call        00420BD8
 0049B55A    pop         ecx
 0049B55B    pop         ecx
 0049B55C    pop         ebp
 0049B55D    ret
end;*}

//0049B560
{*procedure sub_0049B560(?:?; ?:?);
begin
 0049B560    push        ebp
 0049B561    mov         ebp,esp
 0049B563    add         esp,0FFFFFFF4
 0049B566    mov         byte ptr [ebp-9],cl
 0049B569    mov         dword ptr [ebp-8],edx
 0049B56C    mov         dword ptr [ebp-4],eax
 0049B56F    mov         cl,byte ptr [ebp-9]
 0049B572    mov         edx,dword ptr [ebp-8]
 0049B575    mov         eax,dword ptr [ebp-4]
 0049B578    call        0042A644
 0049B57D    cmp         byte ptr [ebp-9],1
>0049B581    jne         0049B5C8
 0049B583    mov         eax,dword ptr [ebp-4]
 0049B586    call        TMenuItem.GetAction
 0049B58B    cmp         eax,dword ptr [ebp-8]
>0049B58E    jne         0049B59C
 0049B590    xor         edx,edx
 0049B592    mov         eax,dword ptr [ebp-4]
 0049B595    call        TMenuItem.SetAction
>0049B59A    jmp         0049B5C8
 0049B59C    mov         eax,dword ptr [ebp-8]
 0049B59F    mov         edx,dword ptr [ebp-4]
 0049B5A2    cmp         eax,dword ptr [edx+7C];TMenuItem.SubMenuImages:TCustomImageList
>0049B5A5    jne         0049B5B3
 0049B5A7    xor         edx,edx
 0049B5A9    mov         eax,dword ptr [ebp-4]
 0049B5AC    call        TMenuItem.SetSubMenuImages
>0049B5B1    jmp         0049B5C8
 0049B5B3    mov         eax,dword ptr [ebp-8]
 0049B5B6    mov         edx,dword ptr [ebp-4]
 0049B5B9    cmp         eax,dword ptr [edx+68];TMenuItem.FMerged:TMenuItem
>0049B5BC    jne         0049B5C8
 0049B5BE    xor         edx,edx
 0049B5C0    mov         eax,dword ptr [ebp-4]
 0049B5C3    call        00498918
 0049B5C8    mov         esp,ebp
 0049B5CA    pop         ebp
 0049B5CB    ret
end;*}

//0049B5CC
procedure TMenuItem.SetSubMenuImages(Value:TCustomImageList);
begin
{*
 0049B5CC    push        ebp
 0049B5CD    mov         ebp,esp
 0049B5CF    add         esp,0FFFFFFF8
 0049B5D2    mov         dword ptr [ebp-8],edx
 0049B5D5    mov         dword ptr [ebp-4],eax
 0049B5D8    mov         eax,dword ptr [ebp-4]
 0049B5DB    cmp         dword ptr [eax+7C],0;TMenuItem.SubMenuImages:TCustomImageList
>0049B5DF    je          0049B5F2
 0049B5E1    mov         eax,dword ptr [ebp-4]
 0049B5E4    mov         edx,dword ptr [eax+78];TMenuItem.FImageChangeLink:TChangeLink
 0049B5E7    mov         eax,dword ptr [ebp-4]
 0049B5EA    mov         eax,dword ptr [eax+7C];TMenuItem.SubMenuImages:TCustomImageList
 0049B5ED    call        00495F18
 0049B5F2    mov         eax,dword ptr [ebp-8]
 0049B5F5    mov         edx,dword ptr [ebp-4]
 0049B5F8    mov         dword ptr [edx+7C],eax;TMenuItem.SubMenuImages:TCustomImageList
 0049B5FB    mov         eax,dword ptr [ebp-4]
 0049B5FE    cmp         dword ptr [eax+7C],0;TMenuItem.SubMenuImages:TCustomImageList
>0049B602    je          0049B623
 0049B604    mov         eax,dword ptr [ebp-4]
 0049B607    mov         edx,dword ptr [eax+78];TMenuItem.FImageChangeLink:TChangeLink
 0049B60A    mov         eax,dword ptr [ebp-4]
 0049B60D    mov         eax,dword ptr [eax+7C];TMenuItem.SubMenuImages:TCustomImageList
 0049B610    call        00495F80
 0049B615    mov         edx,dword ptr [ebp-4]
 0049B618    mov         eax,dword ptr [ebp-4]
 0049B61B    mov         eax,dword ptr [eax+7C];TMenuItem.SubMenuImages:TCustomImageList
 0049B61E    call        0042A2CC
 0049B623    mov         eax,dword ptr [ebp-4]
 0049B626    call        0049B68C
 0049B62B    pop         ecx
 0049B62C    pop         ecx
 0049B62D    pop         ebp
 0049B62E    ret
*}
end;

//0049B630
{*procedure sub_0049B630(?:?; ?:?);
begin
 0049B630    push        ebp
 0049B631    mov         ebp,esp
 0049B633    add         esp,0FFFFFFF8
 0049B636    mov         dword ptr [ebp-8],edx
 0049B639    mov         dword ptr [ebp-4],eax
 0049B63C    mov         eax,dword ptr [ebp-8]
 0049B63F    mov         edx,dword ptr [ebp-4]
 0049B642    cmp         eax,dword ptr [edx+7C]
>0049B645    jne         0049B64F
 0049B647    mov         eax,dword ptr [ebp-4]
 0049B64A    call        0049B68C
 0049B64F    pop         ecx
 0049B650    pop         ecx
 0049B651    pop         ebp
 0049B652    ret
end;*}

//0049B654
{*function sub_0049B654(?:?):?;
begin
 0049B654    push        ebp
 0049B655    mov         ebp,esp
 0049B657    add         esp,0FFFFFFF8
 0049B65A    mov         dword ptr [ebp-4],eax
 0049B65D    mov         byte ptr [ebp-5],0
 0049B661    mov         eax,49B654;sub_0049B654
 0049B666    mov         ecx,dword ptr [ebp-4]
 0049B669    mov         edx,dword ptr [ebp-4]
 0049B66C    mov         edx,dword ptr [edx+68]
 0049B66F    call        00497DA4
 0049B674    push        1
 0049B676    mov         ecx,dword ptr [ebp-4]
 0049B679    mov         edx,dword ptr [ebp-4]
 0049B67C    mov         eax,dword ptr [ebp-4]
 0049B67F    call        0049AE34
 0049B684    mov         al,byte ptr [ebp-5]
 0049B687    pop         ecx
 0049B688    pop         ecx
 0049B689    pop         ebp
 0049B68A    ret
end;*}

//0049B68C
procedure sub_0049B68C(?:TMenuItem);
begin
{*
 0049B68C    push        ebp
 0049B68D    mov         ebp,esp
 0049B68F    push        ecx
 0049B690    mov         dword ptr [ebp-4],eax
 0049B693    mov         eax,49B654;sub_0049B654
 0049B698    mov         ecx,dword ptr [ebp-4]
 0049B69B    mov         edx,dword ptr [ebp-4]
 0049B69E    mov         edx,dword ptr [edx+68];TMenuItem.FMerged:TMenuItem
 0049B6A1    call        00497DA4
 0049B6A6    pop         ecx
 0049B6A7    pop         ebp
 0049B6A8    ret
*}
end;

//0049B6AC
{*function sub_0049B6AC(?:?; ?:?):?;
begin
 0049B6AC    push        ebp
 0049B6AD    mov         ebp,esp
 0049B6AF    add         esp,0FFFFFFF4
 0049B6B2    mov         dword ptr [ebp-4],eax
 0049B6B5    mov         eax,dword ptr [ebp+8]
 0049B6B8    mov         edx,dword ptr [eax-4]
 0049B6BB    mov         eax,dword ptr [ebp-4]
 0049B6BE    call        00411664
 0049B6C3    mov         dword ptr [ebp-0C],eax
 0049B6C6    cmp         dword ptr [ebp-0C],0
 0049B6CA    setne       byte ptr [ebp-5]
 0049B6CE    cmp         byte ptr [ebp-5],0
>0049B6D2    je          0049B6E7
 0049B6D4    mov         eax,dword ptr [ebp+8]
 0049B6D7    add         eax,0FFFFFFFC
 0049B6DA    mov         ecx,1
 0049B6DF    mov         edx,dword ptr [ebp-0C]
 0049B6E2    call        @LStrDelete
 0049B6E7    mov         al,byte ptr [ebp-5]
 0049B6EA    mov         esp,ebp
 0049B6EC    pop         ebp
 0049B6ED    ret
end;*}

//0049B6F0
{*procedure sub_0049B6F0(?:?);
begin
 0049B6F0    push        ebp
 0049B6F1    mov         ebp,esp
 0049B6F3    add         esp,0FFFFFFF8
 0049B6F6    push        ebx
 0049B6F7    mov         eax,dword ptr [ebp+8]
 0049B6FA    mov         edx,dword ptr [eax-0C]
 0049B6FD    mov         eax,dword ptr [ebp+8]
 0049B700    mov         eax,dword ptr [eax-8]
 0049B703    mov         ecx,dword ptr [eax]
 0049B705    call        dword ptr [ecx+8]
 0049B708    mov         eax,dword ptr [ebp+8]
 0049B70B    mov         eax,dword ptr [eax-0C]
 0049B70E    mov         edx,dword ptr [eax]
 0049B710    call        dword ptr [edx+14]
 0049B713    mov         edx,dword ptr [ebp+8]
 0049B716    mov         dword ptr [edx-10],eax
 0049B719    mov         eax,dword ptr [ebp+8]
 0049B71C    mov         eax,dword ptr [eax-14]
 0049B71F    mov         edx,dword ptr [eax]
 0049B721    call        dword ptr [edx+14]
 0049B724    dec         eax
 0049B725    test        eax,eax
>0049B727    jl          0049B768
 0049B729    inc         eax
 0049B72A    mov         dword ptr [ebp-8],eax
 0049B72D    mov         dword ptr [ebp-4],0
 0049B734    mov         eax,dword ptr [ebp+8]
 0049B737    mov         eax,dword ptr [eax-14]
 0049B73A    mov         edx,dword ptr [ebp-4]
 0049B73D    mov         ecx,dword ptr [eax]
 0049B73F    call        dword ptr [ecx+18]
 0049B742    push        eax
 0049B743    mov         eax,dword ptr [ebp+8]
 0049B746    mov         eax,dword ptr [eax-14]
 0049B749    mov         edx,dword ptr [ebp-4]
 0049B74C    mov         ecx,dword ptr [eax]
 0049B74E    call        dword ptr [ecx+18]
 0049B751    mov         edx,dword ptr [eax+30]
 0049B754    mov         eax,dword ptr [ebp+8]
 0049B757    mov         eax,dword ptr [eax-8]
 0049B75A    pop         ecx
 0049B75B    mov         ebx,dword ptr [eax]
 0049B75D    call        dword ptr [ebx+3C]
 0049B760    inc         dword ptr [ebp-4]
 0049B763    dec         dword ptr [ebp-8]
>0049B766    jne         0049B734
 0049B768    mov         eax,dword ptr [ebp+8]
 0049B76B    add         eax,0FFFFFFE8
 0049B76E    mov         edx,dword ptr [ebp+8]
 0049B771    mov         edx,dword ptr [edx-4]
 0049B774    call        @LStrLAsg
 0049B779    pop         ebx
 0049B77A    pop         ecx
 0049B77B    pop         ecx
 0049B77C    pop         ebp
 0049B77D    ret
end;*}

//0049B780
{*procedure sub_0049B780(?:AnsiString; ?:?; ?:?);
begin
 0049B780    push        ebp
 0049B781    mov         ebp,esp
 0049B783    add         esp,0FFFFFFE0
 0049B786    push        ebx
 0049B787    xor         ebx,ebx
 0049B789    mov         dword ptr [ebp-20],ebx
 0049B78C    mov         dword ptr [ebp-1C],ebx
 0049B78F    mov         dword ptr [ebp-0C],ecx
 0049B792    mov         dword ptr [ebp-8],edx
 0049B795    mov         dword ptr [ebp-4],eax
 0049B798    xor         eax,eax
 0049B79A    push        ebp
 0049B79B    push        49B8CA
 0049B7A0    push        dword ptr fs:[eax]
 0049B7A3    mov         dword ptr fs:[eax],esp
 0049B7A6    mov         byte ptr [ebp-11],0
 0049B7AA    mov         eax,dword ptr [ebp-4]
 0049B7AD    mov         eax,dword ptr [eax]
 0049B7AF    call        @LStrLen
 0049B7B4    test        eax,eax
>0049B7B6    jle         0049B7EC
 0049B7B8    mov         dword ptr [ebp-18],eax
 0049B7BB    mov         dword ptr [ebp-10],1
 0049B7C2    mov         eax,dword ptr [ebp-4]
 0049B7C5    mov         eax,dword ptr [eax]
 0049B7C7    mov         edx,dword ptr [ebp-10]
 0049B7CA    mov         al,byte ptr [eax+edx-1]
 0049B7CE    mov         edx,dword ptr ds:[56E618];^gvar_0056B820
 0049B7D4    and         eax,0FF
 0049B7D9    bt          dword ptr [edx],eax
>0049B7DC    jae         0049B7E4
 0049B7DE    mov         byte ptr [ebp-11],1
>0049B7E2    jmp         0049B7EC
 0049B7E4    inc         dword ptr [ebp-10]
 0049B7E7    dec         dword ptr [ebp-18]
>0049B7EA    jne         0049B7C2
 0049B7EC    cmp         byte ptr [ebp-11],0
>0049B7F0    je          0049B899
 0049B7F6    lea         eax,[ebp-1C]
 0049B7F9    push        eax
 0049B7FA    mov         eax,dword ptr [ebp-4]
 0049B7FD    mov         eax,dword ptr [eax]
 0049B7FF    call        @LStrLen
 0049B804    mov         edx,eax
 0049B806    sub         edx,3
 0049B809    inc         edx
 0049B80A    mov         eax,dword ptr [ebp-4]
 0049B80D    mov         eax,dword ptr [eax]
 0049B80F    mov         ecx,3
 0049B814    call        @LStrCopy
 0049B819    mov         eax,dword ptr [ebp-1C]
 0049B81C    mov         edx,49B8E0;'...'
 0049B821    call        @LStrCmp
>0049B826    jne         0049B873
 0049B828    lea         eax,[ebp-20]
 0049B82B    push        eax
 0049B82C    mov         eax,dword ptr [ebp-4]
 0049B82F    mov         eax,dword ptr [eax]
 0049B831    call        @LStrLen
 0049B836    mov         ecx,eax
 0049B838    sub         ecx,3
 0049B83B    mov         eax,dword ptr [ebp-4]
 0049B83E    mov         eax,dword ptr [eax]
 0049B840    mov         edx,1
 0049B845    call        @LStrCopy
 0049B84A    push        dword ptr [ebp-20]
 0049B84D    push        49B8EC;'('
 0049B852    push        49B8F8;'&'
 0049B857    push        dword ptr [ebp-8]
 0049B85A    push        49B904;')'
 0049B85F    push        49B8E0;'...'
 0049B864    mov         eax,dword ptr [ebp-4]
 0049B867    mov         edx,6
 0049B86C    call        @LStrCatN
>0049B871    jmp         0049B8AF
 0049B873    mov         eax,dword ptr [ebp-4]
 0049B876    push        dword ptr [eax]
 0049B878    push        49B8EC;'('
 0049B87D    push        49B8F8;'&'
 0049B882    push        dword ptr [ebp-8]
 0049B885    push        49B904;')'
 0049B88A    mov         eax,dword ptr [ebp-4]
 0049B88D    mov         edx,5
 0049B892    call        @LStrCatN
>0049B897    jmp         0049B8AF
 0049B899    cmp         dword ptr [ebp-0C],0
>0049B89D    je          0049B8AF
 0049B89F    mov         edx,dword ptr [ebp-4]
 0049B8A2    mov         ecx,dword ptr [ebp-0C]
 0049B8A5    mov         eax,49B8F8;'&'
 0049B8AA    call        @LStrInsert
 0049B8AF    xor         eax,eax
 0049B8B1    pop         edx
 0049B8B2    pop         ecx
 0049B8B3    pop         ecx
 0049B8B4    mov         dword ptr fs:[eax],edx
 0049B8B7    push        49B8D1
 0049B8BC    lea         eax,[ebp-20]
 0049B8BF    mov         edx,2
 0049B8C4    call        @LStrArrayClr
 0049B8C9    ret
>0049B8CA    jmp         @HandleFinally
>0049B8CF    jmp         0049B8BC
 0049B8D1    pop         ebx
 0049B8D2    mov         esp,ebp
 0049B8D4    pop         ebp
 0049B8D5    ret
end;*}

//0049B908
{*function sub_0049B908(?:TMenuItem; ?:?):?;
begin
 0049B908    push        ebp
 0049B909    mov         ebp,esp
 0049B90B    add         esp,0FFFFFFA8
 0049B90E    push        ebx
 0049B90F    xor         ecx,ecx
 0049B911    mov         dword ptr [ebp-58],ecx
 0049B914    mov         dword ptr [ebp-54],ecx
 0049B917    mov         dword ptr [ebp-50],ecx
 0049B91A    mov         dword ptr [ebp-4C],ecx
 0049B91D    mov         dword ptr [ebp-38],ecx
 0049B920    mov         dword ptr [ebp-3C],ecx
 0049B923    mov         dword ptr [ebp-40],ecx
 0049B926    mov         dword ptr [ebp-4],ecx
 0049B929    mov         dword ptr [ebp-18],ecx
 0049B92C    mov         byte ptr [ebp-1D],dl
 0049B92F    mov         dword ptr [ebp-1C],eax
 0049B932    xor         eax,eax
 0049B934    push        ebp
 0049B935    push        49BDFC
 0049B93A    push        dword ptr fs:[eax]
 0049B93D    mov         dword ptr fs:[eax],esp
 0049B940    mov         byte ptr [ebp-1E],0
 0049B944    cmp         byte ptr [ebp-1D],0
>0049B948    jne         0049B967
 0049B94A    mov         eax,dword ptr [ebp-1C]
 0049B94D    test        byte ptr [eax+1C],10
>0049B951    jne         0049BDC4
 0049B957    mov         eax,dword ptr [ebp-1C]
 0049B95A    call        0049C04C
 0049B95F    test        al,al
>0049B961    je          0049BDC4
 0049B967    lea         eax,[ebp-4]
 0049B96A    mov         edx,dword ptr ds:[56C8CC];^gvar_0049780C
 0049B970    call        @LStrLAsg
 0049B975    xor         eax,eax
 0049B977    mov         dword ptr [ebp-0C],eax
 0049B97A    xor         eax,eax
 0049B97C    mov         dword ptr [ebp-14],eax
 0049B97F    xor         eax,eax
 0049B981    mov         dword ptr [ebp-24],eax
 0049B984    xor         eax,eax
 0049B986    mov         dword ptr [ebp-8],eax
 0049B989    xor         eax,eax
 0049B98B    mov         dword ptr [ebp-10],eax
 0049B98E    xor         eax,eax
 0049B990    push        ebp
 0049B991    push        49BDBD
 0049B996    push        dword ptr fs:[eax]
 0049B999    mov         dword ptr fs:[eax],esp
 0049B99C    mov         dl,1
 0049B99E    mov         eax,[0041DB24];TStringList
 0049B9A3    call        TObject.Create;TStringList.Create
 0049B9A8    mov         dword ptr [ebp-0C],eax
 0049B9AB    mov         dl,1
 0049B9AD    mov         eax,[0041DB24];TStringList
 0049B9B2    call        TObject.Create;TStringList.Create
 0049B9B7    mov         dword ptr [ebp-14],eax
 0049B9BA    mov         dl,1
 0049B9BC    mov         eax,[0041DB24];TStringList
 0049B9C1    call        TObject.Create;TStringList.Create
 0049B9C6    mov         dword ptr [ebp-24],eax
 0049B9C9    mov         dl,1
 0049B9CB    mov         eax,[0041DB24];TStringList
 0049B9D0    call        TObject.Create;TStringList.Create
 0049B9D5    mov         dword ptr [ebp-8],eax
 0049B9D8    mov         eax,dword ptr [ebp-1C]
 0049B9DB    call        0049A814
 0049B9E0    dec         eax
 0049B9E1    test        eax,eax
>0049B9E3    jl          0049BB07
 0049B9E9    inc         eax
 0049B9EA    mov         dword ptr [ebp-44],eax
 0049B9ED    mov         dword ptr [ebp-28],0
 0049B9F4    mov         edx,dword ptr [ebp-28]
 0049B9F7    mov         eax,dword ptr [ebp-1C]
 0049B9FA    call        0049A840
 0049B9FF    cmp         byte ptr [eax+3E],0
>0049BA03    je          0049BAFB
 0049BA09    mov         edx,dword ptr [ebp-28]
 0049BA0C    mov         eax,dword ptr [ebp-1C]
 0049BA0F    call        0049A840
 0049BA14    mov         eax,dword ptr [eax+30]
 0049BA17    mov         edx,49BE14;'-'
 0049BA1C    call        @LStrCmp
>0049BA21    je          0049BAFB
 0049BA27    mov         edx,dword ptr [ebp-28]
 0049BA2A    mov         eax,dword ptr [ebp-1C]
 0049BA2D    call        0049A840
 0049BA32    cmp         dword ptr [eax+30],0
>0049BA36    je          0049BAFB
 0049BA3C    mov         edx,dword ptr [ebp-28]
 0049BA3F    mov         eax,dword ptr [ebp-1C]
 0049BA42    call        0049A840
 0049BA47    mov         eax,dword ptr [eax+30]
 0049BA4A    lea         edx,[ebp-4C]
 0049BA4D    call        0049E0B8
 0049BA52    mov         eax,dword ptr [ebp-4C]
 0049BA55    lea         edx,[ebp-38]
 0049BA58    call        0040BCC8
 0049BA5D    cmp         dword ptr [ebp-38],0
>0049BA61    jne         0049BA89
 0049BA63    mov         edx,dword ptr [ebp-28]
 0049BA66    mov         eax,dword ptr [ebp-1C]
 0049BA69    call        0049A840
 0049BA6E    push        eax
 0049BA6F    mov         edx,dword ptr [ebp-28]
 0049BA72    mov         eax,dword ptr [ebp-1C]
 0049BA75    call        0049A840
 0049BA7A    mov         ecx,dword ptr [eax+30]
 0049BA7D    xor         edx,edx
 0049BA7F    mov         eax,dword ptr [ebp-24]
 0049BA82    mov         ebx,dword ptr [eax]
 0049BA84    call        dword ptr [ebx+64];TStringList.sub_00423138
>0049BA87    jmp         0049BAFB
 0049BA89    mov         edx,dword ptr ds:[56C8CC];^gvar_0049780C
 0049BA8F    mov         eax,dword ptr [ebp-38]
 0049BA92    call        00411664
 0049BA97    test        eax,eax
>0049BA99    je          0049BAFB
 0049BA9B    push        ebp
 0049BA9C    mov         eax,dword ptr [ebp-38]
 0049BA9F    call        0049B6AC
 0049BAA4    pop         ecx
 0049BAA5    test        al,al
>0049BAA7    jne         0049BAFB
 0049BAA9    mov         edx,dword ptr [ebp-28]
 0049BAAC    mov         eax,dword ptr [ebp-1C]
 0049BAAF    call        0049A840
 0049BAB4    add         eax,30
 0049BAB7    push        eax
 0049BAB8    mov         edx,dword ptr [ebp-28]
 0049BABB    mov         eax,dword ptr [ebp-1C]
 0049BABE    call        0049A840
 0049BAC3    mov         eax,dword ptr [eax+30]
 0049BAC6    lea         edx,[ebp-50]
 0049BAC9    call        0049DFE4
 0049BACE    mov         edx,dword ptr [ebp-50]
 0049BAD1    pop         eax
 0049BAD2    call        @LStrAsg
 0049BAD7    mov         edx,dword ptr [ebp-28]
 0049BADA    mov         eax,dword ptr [ebp-1C]
 0049BADD    call        0049A840
 0049BAE2    push        eax
 0049BAE3    mov         edx,dword ptr [ebp-28]
 0049BAE6    mov         eax,dword ptr [ebp-1C]
 0049BAE9    call        0049A840
 0049BAEE    mov         ecx,dword ptr [eax+30]
 0049BAF1    xor         edx,edx
 0049BAF3    mov         eax,dword ptr [ebp-24]
 0049BAF6    mov         ebx,dword ptr [eax]
 0049BAF8    call        dword ptr [ebx+64];TStringList.sub_00423138
 0049BAFB    inc         dword ptr [ebp-28]
 0049BAFE    dec         dword ptr [ebp-44]
>0049BB01    jne         0049B9F4
 0049BB07    lea         eax,[ebp-40]
 0049BB0A    mov         edx,dword ptr [ebp-4]
 0049BB0D    call        @LStrLAsg
 0049BB12    mov         eax,dword ptr [ebp-24]
 0049BB15    mov         edx,dword ptr [eax]
 0049BB17    call        dword ptr [edx+14];TStringList.sub_00423008
 0049BB1A    dec         eax
 0049BB1B    test        eax,eax
>0049BB1D    jl          0049BCB4
 0049BB23    inc         eax
 0049BB24    mov         dword ptr [ebp-44],eax
 0049BB27    mov         dword ptr [ebp-2C],0
 0049BB2E    lea         eax,[ebp-4]
 0049BB31    mov         edx,dword ptr [ebp-40]
 0049BB34    call        @LStrLAsg
 0049BB39    mov         edx,dword ptr [ebp-24]
 0049BB3C    mov         eax,dword ptr [ebp-14]
 0049BB3F    mov         ecx,dword ptr [eax]
 0049BB41    call        dword ptr [ecx+8];TStringList.sub_00421BB0
 0049BB44    mov         eax,dword ptr [ebp-0C]
 0049BB47    mov         edx,dword ptr [eax]
 0049BB49    call        dword ptr [edx+44];TStringList.Clear
 0049BB4C    mov         eax,dword ptr [ebp-14]
 0049BB4F    mov         edx,dword ptr [eax]
 0049BB51    call        dword ptr [edx+14];TStringList.sub_00423008
 0049BB54    dec         eax
 0049BB55    cmp         eax,0
>0049BB58    jl          0049BC3A
 0049BB5E    mov         dword ptr [ebp-28],eax
 0049BB61    lea         ecx,[ebp-3C]
 0049BB64    mov         edx,dword ptr [ebp-28]
 0049BB67    mov         eax,dword ptr [ebp-14]
 0049BB6A    mov         ebx,dword ptr [eax]
 0049BB6C    call        dword ptr [ebx+0C];TStringList.sub_00422FA0
 0049BB6F    mov         dword ptr [ebp-30],1
>0049BB76    jmp         0049BC1C
 0049BB7B    mov         eax,dword ptr [ebp-3C]
 0049BB7E    mov         edx,dword ptr [ebp-30]
 0049BB81    mov         al,byte ptr [eax+edx-1]
 0049BB85    mov         edx,dword ptr ds:[56E618];^gvar_0056B820
 0049BB8B    and         eax,0FF
 0049BB90    bt          dword ptr [edx],eax
>0049BB93    jae         0049BB9A
 0049BB95    inc         dword ptr [ebp-30]
>0049BB98    jmp         0049BC19
 0049BB9A    lea         eax,[ebp-54]
 0049BB9D    push        eax
 0049BB9E    mov         ecx,1
 0049BBA3    mov         edx,dword ptr [ebp-30]
 0049BBA6    mov         eax,dword ptr [ebp-3C]
 0049BBA9    call        @LStrCopy
 0049BBAE    mov         eax,dword ptr [ebp-54]
 0049BBB1    lea         edx,[ebp-38]
 0049BBB4    call        0040BCC8
 0049BBB9    push        ebp
 0049BBBA    mov         eax,dword ptr [ebp-38]
 0049BBBD    call        0049B6AC
 0049BBC2    pop         ecx
 0049BBC3    test        al,al
>0049BBC5    je          0049BC19
 0049BBC7    mov         eax,[0056E638];^gvar_0057196C:Integer
 0049BBCC    cmp         byte ptr [eax+0C],0
>0049BBD0    je          0049BBE4
 0049BBD2    push        ebp
 0049BBD3    lea         eax,[ebp-3C]
 0049BBD6    mov         ecx,dword ptr [ebp-30]
 0049BBD9    mov         edx,dword ptr [ebp-38]
 0049BBDC    call        0049B780
 0049BBE1    pop         ecx
>0049BBE2    jmp         0049BBF4
 0049BBE4    lea         edx,[ebp-3C]
 0049BBE7    mov         ecx,dword ptr [ebp-30]
 0049BBEA    mov         eax,49BE20;'&'
 0049BBEF    call        @LStrInsert
 0049BBF4    mov         edx,dword ptr [ebp-28]
 0049BBF7    mov         eax,dword ptr [ebp-14]
 0049BBFA    mov         ecx,dword ptr [eax]
 0049BBFC    call        dword ptr [ecx+18];TStringList.sub_00423024
 0049BBFF    mov         ecx,eax
 0049BC01    mov         edx,dword ptr [ebp-3C]
 0049BC04    mov         eax,dword ptr [ebp-0C]
 0049BC07    mov         ebx,dword ptr [eax]
 0049BC09    call        dword ptr [ebx+3C];TStringList.sub_00422C5C
 0049BC0C    mov         edx,dword ptr [ebp-28]
 0049BC0F    mov         eax,dword ptr [ebp-14]
 0049BC12    mov         ecx,dword ptr [eax]
 0049BC14    call        dword ptr [ecx+48];TStringList.sub_00422D80
>0049BC17    jmp         0049BC2D
 0049BC19    inc         dword ptr [ebp-30]
 0049BC1C    mov         eax,dword ptr [ebp-3C]
 0049BC1F    call        @LStrLen
 0049BC24    cmp         eax,dword ptr [ebp-30]
>0049BC27    jge         0049BB7B
 0049BC2D    dec         dword ptr [ebp-28]
 0049BC30    cmp         dword ptr [ebp-28],0FFFFFFFF
>0049BC34    jne         0049BB61
 0049BC3A    mov         eax,dword ptr [ebp-0C]
 0049BC3D    mov         edx,dword ptr [eax]
 0049BC3F    call        dword ptr [edx+14];TStringList.sub_00423008
 0049BC42    cmp         eax,dword ptr [ebp-10]
>0049BC45    jle         0049BC4E
 0049BC47    push        ebp
 0049BC48    call        0049B6F0
 0049BC4D    pop         ecx
 0049BC4E    mov         eax,dword ptr [ebp-14]
 0049BC51    mov         edx,dword ptr [eax]
 0049BC53    call        dword ptr [edx+14];TStringList.sub_00423008
 0049BC56    test        eax,eax
>0049BC58    jle         0049BCB4
 0049BC5A    mov         eax,dword ptr [ebp-14]
 0049BC5D    mov         edx,dword ptr [eax]
 0049BC5F    call        dword ptr [edx+14];TStringList.sub_00423008
 0049BC62    dec         eax
 0049BC63    test        eax,eax
>0049BC65    jl          0049BCA8
 0049BC67    inc         eax
 0049BC68    mov         dword ptr [ebp-48],eax
 0049BC6B    mov         dword ptr [ebp-28],0
 0049BC72    mov         edx,dword ptr [ebp-28]
 0049BC75    mov         eax,dword ptr [ebp-14]
 0049BC78    mov         ecx,dword ptr [eax]
 0049BC7A    call        dword ptr [ecx+18];TStringList.sub_00423024
 0049BC7D    mov         edx,eax
 0049BC7F    mov         eax,dword ptr [ebp-24]
 0049BC82    mov         ecx,dword ptr [eax]
 0049BC84    call        dword ptr [ecx+5C];TStringList.sub_00422458
 0049BC87    mov         dword ptr [ebp-34],eax
 0049BC8A    mov         eax,dword ptr [ebp-24]
 0049BC8D    mov         edx,dword ptr [eax]
 0049BC8F    call        dword ptr [edx+14];TStringList.sub_00423008
 0049BC92    mov         ecx,eax
 0049BC94    dec         ecx
 0049BC95    mov         edx,dword ptr [ebp-34]
 0049BC98    mov         eax,dword ptr [ebp-24]
 0049BC9B    mov         ebx,dword ptr [eax]
 0049BC9D    call        dword ptr [ebx+70];TStringList.sub_004225E8
 0049BCA0    inc         dword ptr [ebp-28]
 0049BCA3    dec         dword ptr [ebp-48]
>0049BCA6    jne         0049BC72
 0049BCA8    inc         dword ptr [ebp-2C]
 0049BCAB    dec         dword ptr [ebp-44]
>0049BCAE    jne         0049BB2E
 0049BCB4    cmp         dword ptr [ebp-10],0
>0049BCB8    jne         0049BCC1
 0049BCBA    push        ebp
 0049BCBB    call        0049B6F0
 0049BCC0    pop         ecx
 0049BCC1    mov         eax,dword ptr [ebp-8]
 0049BCC4    mov         edx,dword ptr [eax]
 0049BCC6    call        dword ptr [edx+14];TStringList.sub_00423008
 0049BCC9    test        eax,eax
 0049BCCB    setg        byte ptr [ebp-1E]
 0049BCCF    mov         eax,dword ptr [ebp-8]
 0049BCD2    mov         edx,dword ptr [eax]
 0049BCD4    call        dword ptr [edx+14];TStringList.sub_00423008
 0049BCD7    dec         eax
 0049BCD8    test        eax,eax
>0049BCDA    jl          0049BD8F
 0049BCE0    inc         eax
 0049BCE1    mov         dword ptr [ebp-44],eax
 0049BCE4    mov         dword ptr [ebp-28],0
 0049BCEB    lea         ecx,[ebp-3C]
 0049BCEE    mov         edx,dword ptr [ebp-28]
 0049BCF1    mov         eax,dword ptr [ebp-8]
 0049BCF4    mov         ebx,dword ptr [eax]
 0049BCF6    call        dword ptr [ebx+0C];TStringList.sub_00422FA0
 0049BCF9    mov         eax,[0056E638];^gvar_0057196C:Integer
 0049BCFE    cmp         byte ptr [eax+0C],0
>0049BD02    je          0049BD6D
 0049BD04    mov         edx,dword ptr [ebp-3C]
 0049BD07    mov         eax,49BE20;'&'
 0049BD0C    call        00411664
 0049BD11    test        eax,eax
>0049BD13    jne         0049BD6D
 0049BD15    cmp         dword ptr [ebp-18],0
>0049BD19    je          0049BD6D
 0049BD1B    mov         edx,dword ptr [ebp-3C]
 0049BD1E    mov         eax,49BE20;'&'
 0049BD23    call        00411664
 0049BD28    test        eax,eax
>0049BD2A    jne         0049BD6D
 0049BD2C    push        ebp
 0049BD2D    lea         eax,[ebp-58]
 0049BD30    push        eax
 0049BD31    mov         eax,dword ptr [ebp-18]
 0049BD34    call        @LStrLen
 0049BD39    mov         edx,eax
 0049BD3B    mov         ecx,1
 0049BD40    mov         eax,dword ptr [ebp-18]
 0049BD43    call        @LStrCopy
 0049BD48    mov         edx,dword ptr [ebp-58]
 0049BD4B    lea         eax,[ebp-3C]
 0049BD4E    xor         ecx,ecx
 0049BD50    call        0049B780
 0049BD55    pop         ecx
 0049BD56    mov         eax,dword ptr [ebp-18]
 0049BD59    call        @LStrLen
 0049BD5E    mov         edx,eax
 0049BD60    lea         eax,[ebp-18]
 0049BD63    mov         ecx,1
 0049BD68    call        @LStrDelete
 0049BD6D    mov         edx,dword ptr [ebp-28]
 0049BD70    mov         eax,dword ptr [ebp-8]
 0049BD73    mov         ecx,dword ptr [eax]
 0049BD75    call        dword ptr [ecx+18];TStringList.sub_00423024
 0049BD78    add         eax,30
 0049BD7B    mov         edx,dword ptr [ebp-3C]
 0049BD7E    call        @LStrAsg
 0049BD83    inc         dword ptr [ebp-28]
 0049BD86    dec         dword ptr [ebp-44]
>0049BD89    jne         0049BCEB
 0049BD8F    xor         eax,eax
 0049BD91    pop         edx
 0049BD92    pop         ecx
 0049BD93    pop         ecx
 0049BD94    mov         dword ptr fs:[eax],edx
 0049BD97    push        49BDC4
 0049BD9C    mov         eax,dword ptr [ebp-8]
 0049BD9F    call        TObject.Free
 0049BDA4    mov         eax,dword ptr [ebp-24]
 0049BDA7    call        TObject.Free
 0049BDAC    mov         eax,dword ptr [ebp-14]
 0049BDAF    call        TObject.Free
 0049BDB4    mov         eax,dword ptr [ebp-0C]
 0049BDB7    call        TObject.Free
 0049BDBC    ret
>0049BDBD    jmp         @HandleFinally
>0049BDC2    jmp         0049BD9C
 0049BDC4    xor         eax,eax
 0049BDC6    pop         edx
 0049BDC7    pop         ecx
 0049BDC8    pop         ecx
 0049BDC9    mov         dword ptr fs:[eax],edx
 0049BDCC    push        49BE03
 0049BDD1    lea         eax,[ebp-58]
 0049BDD4    mov         edx,4
 0049BDD9    call        @LStrArrayClr
 0049BDDE    lea         eax,[ebp-40]
 0049BDE1    mov         edx,3
 0049BDE6    call        @LStrArrayClr
 0049BDEB    lea         eax,[ebp-18]
 0049BDEE    call        @LStrClr
 0049BDF3    lea         eax,[ebp-4]
 0049BDF6    call        @LStrClr
 0049BDFB    ret
>0049BDFC    jmp         @HandleFinally
>0049BE01    jmp         0049BDD1
 0049BE03    mov         al,byte ptr [ebp-1E]
 0049BE06    pop         ebx
 0049BE07    mov         esp,ebp
 0049BE09    pop         ebp
 0049BE0A    ret
end;*}

//0049BE24
procedure TMenuItem.SetAutoHotkeys(Value:TMenuItemAutoFlag);
begin
{*
 0049BE24    push        ebp
 0049BE25    mov         ebp,esp
 0049BE27    add         esp,0FFFFFFF8
 0049BE2A    mov         byte ptr [ebp-5],dl
 0049BE2D    mov         dword ptr [ebp-4],eax
 0049BE30    mov         al,byte ptr [ebp-5]
 0049BE33    mov         edx,dword ptr [ebp-4]
 0049BE36    cmp         al,byte ptr [edx+3B];TMenuItem.AutoHotkeys:TMenuItemAutoFlag
>0049BE39    je          0049BE4E
 0049BE3B    mov         al,byte ptr [ebp-5]
 0049BE3E    mov         edx,dword ptr [ebp-4]
 0049BE41    mov         byte ptr [edx+3B],al;TMenuItem.AutoHotkeys:TMenuItemAutoFlag
 0049BE44    mov         dl,1
 0049BE46    mov         eax,dword ptr [ebp-4]
 0049BE49    mov         ecx,dword ptr [eax]
 0049BE4B    call        dword ptr [ecx+3C];TMenuItem.sub_0049ADD0
 0049BE4E    pop         ecx
 0049BE4F    pop         ecx
 0049BE50    pop         ebp
 0049BE51    ret
*}
end;

//0049BE54
{*function sub_0049BE54(?:?):?;
begin
 0049BE54    push        ebp
 0049BE55    mov         ebp,esp
 0049BE57    add         esp,0FFFFFFF8
 0049BE5A    mov         dword ptr [ebp-4],eax
 0049BE5D    mov         eax,dword ptr [ebp-4]
 0049BE60    mov         eax,dword ptr [eax+30]
 0049BE63    mov         edx,49BE80;'-'
 0049BE68    call        @LStrCmp
 0049BE6D    sete        byte ptr [ebp-5]
 0049BE71    mov         al,byte ptr [ebp-5]
 0049BE74    pop         ecx
 0049BE75    pop         ecx
 0049BE76    pop         ebp
 0049BE77    ret
end;*}

//0049BE84
{*function sub_0049BE84(?:TMenuItem; ?:?):?;
begin
 0049BE84    push        ebp
 0049BE85    mov         ebp,esp
 0049BE87    add         esp,0FFFFFFE8
 0049BE8A    mov         byte ptr [ebp-5],dl
 0049BE8D    mov         dword ptr [ebp-4],eax
 0049BE90    mov         byte ptr [ebp-6],0
 0049BE94    cmp         byte ptr [ebp-5],0
>0049BE98    jne         0049BEB7
 0049BE9A    mov         eax,dword ptr [ebp-4]
 0049BE9D    test        byte ptr [eax+1C],10
>0049BEA1    jne         0049C014
 0049BEA7    mov         eax,dword ptr [ebp-4]
 0049BEAA    call        0049C09C
 0049BEAF    test        al,al
>0049BEB1    je          0049C014
 0049BEB7    xor         eax,eax
 0049BEB9    mov         dword ptr [ebp-10],eax
 0049BEBC    xor         eax,eax
 0049BEBE    mov         dword ptr [ebp-14],eax
 0049BEC1    mov         eax,dword ptr [ebp-10]
 0049BEC4    push        eax
 0049BEC5    mov         eax,dword ptr [ebp-4]
 0049BEC8    call        0049A814
 0049BECD    dec         eax
 0049BECE    pop         edx
 0049BECF    sub         eax,edx
>0049BED1    jl          0049BF24
 0049BED3    inc         eax
 0049BED4    mov         dword ptr [ebp-18],eax
 0049BED7    mov         dword ptr [ebp-0C],edx
 0049BEDA    mov         edx,dword ptr [ebp-0C]
 0049BEDD    mov         eax,dword ptr [ebp-4]
 0049BEE0    call        0049A840
 0049BEE5    cmp         byte ptr [eax+3E],0
>0049BEE9    je          0049BF1C
 0049BEEB    mov         edx,dword ptr [ebp-0C]
 0049BEEE    mov         eax,dword ptr [ebp-4]
 0049BEF1    call        0049A840
 0049BEF6    call        0049BE54
 0049BEFB    test        al,al
>0049BEFD    je          0049BF14
 0049BEFF    mov         edx,dword ptr [ebp-0C]
 0049BF02    mov         eax,dword ptr [ebp-4]
 0049BF05    call        0049A840
 0049BF0A    mov         byte ptr [eax+3E],0
 0049BF0E    mov         byte ptr [ebp-6],1
>0049BF12    jmp         0049BF1C
 0049BF14    mov         eax,dword ptr [ebp-0C]
 0049BF17    mov         dword ptr [ebp-10],eax
>0049BF1A    jmp         0049BF24
 0049BF1C    inc         dword ptr [ebp-0C]
 0049BF1F    dec         dword ptr [ebp-18]
>0049BF22    jne         0049BEDA
 0049BF24    mov         eax,dword ptr [ebp-10]
 0049BF27    push        eax
 0049BF28    mov         eax,dword ptr [ebp-4]
 0049BF2B    call        0049A814
 0049BF30    dec         eax
 0049BF31    pop         edx
 0049BF32    sub         eax,edx
>0049BF34    jl          0049BFBD
 0049BF3A    inc         eax
 0049BF3B    mov         dword ptr [ebp-18],eax
 0049BF3E    mov         dword ptr [ebp-0C],edx
 0049BF41    mov         edx,dword ptr [ebp-0C]
 0049BF44    mov         eax,dword ptr [ebp-4]
 0049BF47    call        0049A840
 0049BF4C    call        0049BE54
 0049BF51    test        al,al
>0049BF53    je          0049BF7F
 0049BF55    cmp         dword ptr [ebp-14],0
>0049BF59    je          0049BF6F
 0049BF5B    mov         eax,dword ptr [ebp-14]
 0049BF5E    cmp         byte ptr [eax+3E],0
>0049BF62    je          0049BF6F
 0049BF64    mov         eax,dword ptr [ebp-14]
 0049BF67    mov         byte ptr [eax+3E],0
 0049BF6B    mov         byte ptr [ebp-6],1
 0049BF6F    mov         edx,dword ptr [ebp-0C]
 0049BF72    mov         eax,dword ptr [ebp-4]
 0049BF75    call        0049A840
 0049BF7A    mov         dword ptr [ebp-14],eax
>0049BF7D    jmp         0049BFB5
 0049BF7F    mov         edx,dword ptr [ebp-0C]
 0049BF82    mov         eax,dword ptr [ebp-4]
 0049BF85    call        0049A840
 0049BF8A    cmp         byte ptr [eax+3E],0
>0049BF8E    je          0049BFB5
 0049BF90    cmp         dword ptr [ebp-14],0
>0049BF94    je          0049BFAA
 0049BF96    mov         eax,dword ptr [ebp-14]
 0049BF99    cmp         byte ptr [eax+3E],0
>0049BF9D    jne         0049BFAA
 0049BF9F    mov         eax,dword ptr [ebp-14]
 0049BFA2    mov         byte ptr [eax+3E],1
 0049BFA6    mov         byte ptr [ebp-6],1
 0049BFAA    xor         eax,eax
 0049BFAC    mov         dword ptr [ebp-14],eax
 0049BFAF    mov         eax,dword ptr [ebp-0C]
 0049BFB2    mov         dword ptr [ebp-10],eax
 0049BFB5    inc         dword ptr [ebp-0C]
 0049BFB8    dec         dword ptr [ebp-18]
>0049BFBB    jne         0049BF41
 0049BFBD    mov         eax,dword ptr [ebp-4]
 0049BFC0    call        0049A814
 0049BFC5    dec         eax
 0049BFC6    mov         edx,dword ptr [ebp-10]
 0049BFC9    sub         edx,eax
>0049BFCB    jg          0049C014
 0049BFCD    dec         edx
 0049BFCE    mov         dword ptr [ebp-18],edx
 0049BFD1    mov         dword ptr [ebp-0C],eax
 0049BFD4    mov         edx,dword ptr [ebp-0C]
 0049BFD7    mov         eax,dword ptr [ebp-4]
 0049BFDA    call        0049A840
 0049BFDF    cmp         byte ptr [eax+3E],0
>0049BFE3    je          0049C00C
 0049BFE5    mov         edx,dword ptr [ebp-0C]
 0049BFE8    mov         eax,dword ptr [ebp-4]
 0049BFEB    call        0049A840
 0049BFF0    call        0049BE54
 0049BFF5    test        al,al
>0049BFF7    je          0049C014
 0049BFF9    mov         edx,dword ptr [ebp-0C]
 0049BFFC    mov         eax,dword ptr [ebp-4]
 0049BFFF    call        0049A840
 0049C004    mov         byte ptr [eax+3E],0
 0049C008    mov         byte ptr [ebp-6],1
 0049C00C    dec         dword ptr [ebp-0C]
 0049C00F    inc         dword ptr [ebp-18]
>0049C012    jne         0049BFD4
 0049C014    mov         al,byte ptr [ebp-6]
 0049C017    mov         esp,ebp
 0049C019    pop         ebp
 0049C01A    ret
end;*}

//0049C01C
procedure TMenuItem.SetAutoLineReduction(Value:TMenuItemAutoFlag);
begin
{*
 0049C01C    push        ebp
 0049C01D    mov         ebp,esp
 0049C01F    add         esp,0FFFFFFF8
 0049C022    mov         byte ptr [ebp-5],dl
 0049C025    mov         dword ptr [ebp-4],eax
 0049C028    mov         al,byte ptr [ebp-5]
 0049C02B    mov         edx,dword ptr [ebp-4]
 0049C02E    cmp         al,byte ptr [edx+3C];TMenuItem.AutoLineReduction:TMenuItemAutoFlag
>0049C031    je          0049C046
 0049C033    mov         al,byte ptr [ebp-5]
 0049C036    mov         edx,dword ptr [ebp-4]
 0049C039    mov         byte ptr [edx+3C],al;TMenuItem.AutoLineReduction:TMenuItemAutoFlag
 0049C03C    mov         dl,1
 0049C03E    mov         eax,dword ptr [ebp-4]
 0049C041    mov         ecx,dword ptr [eax]
 0049C043    call        dword ptr [ecx+3C];TMenuItem.sub_0049ADD0
 0049C046    pop         ecx
 0049C047    pop         ecx
 0049C048    pop         ebp
 0049C049    ret
*}
end;

//0049C04C
{*function sub_0049C04C(?:?):?;
begin
 0049C04C    push        ebp
 0049C04D    mov         ebp,esp
 0049C04F    add         esp,0FFFFFFF8
 0049C052    mov         dword ptr [ebp-4],eax
 0049C055    mov         eax,dword ptr [ebp-4]
 0049C058    mov         al,byte ptr [eax+3B]
 0049C05B    mov         byte ptr [ebp-6],al
 0049C05E    cmp         byte ptr [ebp-6],2
>0049C062    jne         0049C084
 0049C064    mov         eax,dword ptr [ebp-4]
 0049C067    cmp         dword ptr [eax+64],0
>0049C06B    je          0049C084
 0049C06D    mov         eax,dword ptr [ebp-4]
 0049C070    mov         eax,dword ptr [eax+64]
 0049C073    call        0049C04C
 0049C078    and         eax,7F
 0049C07B    mov         al,byte ptr [eax+56C8D8]
 0049C081    mov         byte ptr [ebp-6],al
 0049C084    xor         eax,eax
 0049C086    mov         al,byte ptr [ebp-6]
 0049C089    mov         al,byte ptr [eax+56C8DC]
 0049C08F    mov         byte ptr [ebp-5],al
 0049C092    mov         al,byte ptr [ebp-5]
 0049C095    pop         ecx
 0049C096    pop         ecx
 0049C097    pop         ebp
 0049C098    ret
end;*}

//0049C09C
{*function sub_0049C09C(?:?):?;
begin
 0049C09C    push        ebp
 0049C09D    mov         ebp,esp
 0049C09F    add         esp,0FFFFFFF8
 0049C0A2    mov         dword ptr [ebp-4],eax
 0049C0A5    mov         eax,dword ptr [ebp-4]
 0049C0A8    mov         al,byte ptr [eax+3C]
 0049C0AB    mov         byte ptr [ebp-6],al
 0049C0AE    cmp         byte ptr [ebp-6],2
>0049C0B2    jne         0049C0D4
 0049C0B4    mov         eax,dword ptr [ebp-4]
 0049C0B7    cmp         dword ptr [eax+64],0
>0049C0BB    je          0049C0D4
 0049C0BD    mov         eax,dword ptr [ebp-4]
 0049C0C0    mov         eax,dword ptr [eax+64]
 0049C0C3    call        0049C09C
 0049C0C8    and         eax,7F
 0049C0CB    mov         al,byte ptr [eax+56C8D8]
 0049C0D1    mov         byte ptr [ebp-6],al
 0049C0D4    xor         eax,eax
 0049C0D6    mov         al,byte ptr [ebp-6]
 0049C0D9    mov         al,byte ptr [eax+56C8DC]
 0049C0DF    mov         byte ptr [ebp-5],al
 0049C0E2    mov         al,byte ptr [ebp-5]
 0049C0E5    pop         ecx
 0049C0E6    pop         ecx
 0049C0E7    pop         ebp
 0049C0E8    ret
end;*}

//0049C0EC
constructor sub_0049C0EC;
begin
{*
 0049C0EC    push        ebp
 0049C0ED    mov         ebp,esp
 0049C0EF    add         esp,0FFFFFFF4
 0049C0F2    test        dl,dl
>0049C0F4    je          0049C0FE
 0049C0F6    add         esp,0FFFFFFF0
 0049C0F9    call        @ClassCreate
 0049C0FE    mov         dword ptr [ebp-0C],ecx
 0049C101    mov         byte ptr [ebp-5],dl
 0049C104    mov         dword ptr [ebp-4],eax
 0049C107    mov         ecx,dword ptr [ebp-4]
 0049C10A    mov         dl,1
 0049C10C    mov         eax,[00496C90];TMenuItem
 0049C111    call        TMenuItem.Create;TMenuItem.Create
 0049C116    mov         edx,dword ptr [ebp-4]
 0049C119    mov         dword ptr [edx+34],eax;TMenu.Items:TMenuItem
 0049C11C    mov         eax,dword ptr [ebp-4]
 0049C11F    mov         eax,dword ptr [eax+34];TMenu.Items:TMenuItem
 0049C122    mov         edx,dword ptr [ebp-4]
 0049C125    mov         dword ptr [eax+84],edx;TMenuItem.?f84:TMenu
 0049C12B    mov         edx,dword ptr [edx]
 0049C12D    mov         edx,dword ptr [edx+38];TMenu.FWindowHandle:HWND
 0049C130    mov         dword ptr [eax+80],edx;TMenuItem.FOnChange:TMenuChangeEvent
 0049C136    mov         eax,dword ptr [ebp-4]
 0049C139    mov         eax,dword ptr [eax+34];TMenu.Items:TMenuItem
 0049C13C    mov         edx,dword ptr [ebp-4]
 0049C13F    mov         dword ptr [eax+70],edx;TMenuItem.FMenu:TMenu
 0049C142    mov         dl,1
 0049C144    mov         eax,[00494854];TChangeLink
 0049C149    call        TObject.Create;TChangeLink.Create
 0049C14E    mov         edx,dword ptr [ebp-4]
 0049C151    mov         dword ptr [edx+44],eax;TMenu.FImageChangeLink:TChangeLink
 0049C154    mov         eax,dword ptr [ebp-4]
 0049C157    mov         eax,dword ptr [eax+44];TMenu.FImageChangeLink:TChangeLink
 0049C15A    mov         edx,dword ptr [ebp-4]
 0049C15D    mov         dword ptr [eax+0C],edx;TChangeLink.?fC:TCustomListView
 0049C160    mov         dword ptr [eax+8],49CC8C;TChangeLink.FOnChange:TNotifyEvent sub_0049CC8C
 0049C167    mov         eax,dword ptr [ebp-4]
 0049C16A    mov         byte ptr [eax+41],1;TMenu.FParentBiDiMode:Boolean
 0049C16E    mov         ecx,dword ptr [ebp-0C]
 0049C171    xor         edx,edx
 0049C173    mov         eax,dword ptr [ebp-4]
 0049C176    call        0042A1B0
 0049C17B    mov         eax,dword ptr [ebp-4]
 0049C17E    mov         eax,dword ptr [eax+34];TMenu.Items:TMenuItem
 0049C181    mov         byte ptr [eax+3B],0;TMenuItem.AutoHotkeys:TMenuItemAutoFlag
 0049C185    mov         eax,dword ptr [ebp-4]
 0049C188    mov         eax,dword ptr [eax+34];TMenu.Items:TMenuItem
 0049C18B    mov         byte ptr [eax+3C],0;TMenuItem.AutoLineReduction:TMenuItemAutoFlag
 0049C18F    mov         eax,dword ptr [ebp-4]
 0049C192    call        0049D260
 0049C197    mov         eax,dword ptr [ebp-4]
 0049C19A    cmp         byte ptr [ebp-5],0
>0049C19E    je          0049C1AF
 0049C1A0    call        @AfterConstruction
 0049C1A5    pop         dword ptr fs:[0]
 0049C1AC    add         esp,0C
 0049C1AF    mov         eax,dword ptr [ebp-4]
 0049C1B2    mov         esp,ebp
 0049C1B4    pop         ebp
 0049C1B5    ret
*}
end;

//0049C1B8
destructor TMenu.Destroy;
begin
{*
 0049C1B8    push        ebp
 0049C1B9    mov         ebp,esp
 0049C1BB    add         esp,0FFFFFFF8
 0049C1BE    call        @BeforeDestruction
 0049C1C3    mov         byte ptr [ebp-5],dl
 0049C1C6    mov         dword ptr [ebp-4],eax
 0049C1C9    mov         eax,dword ptr [ebp-4]
 0049C1CC    mov         eax,dword ptr [eax+34]
 0049C1CF    call        TObject.Free
 0049C1D4    mov         eax,dword ptr [ebp-4]
 0049C1D7    mov         eax,dword ptr [eax+44]
 0049C1DA    call        TObject.Free
 0049C1DF    mov         dl,byte ptr [ebp-5]
 0049C1E2    and         dl,0FC
 0049C1E5    mov         eax,dword ptr [ebp-4]
 0049C1E8    call        TComponent.Destroy
 0049C1ED    cmp         byte ptr [ebp-5],0
>0049C1F1    jle         0049C1FB
 0049C1F3    mov         eax,dword ptr [ebp-4]
 0049C1F6    call        @ClassDestroy
 0049C1FB    pop         ecx
 0049C1FC    pop         ecx
 0049C1FD    pop         ebp
 0049C1FE    ret
*}
end;

//0049C200
{*procedure TMenu.sub_0042A788(?:?; ?:?; ?:?);
begin
 0049C200    push        ebp
 0049C201    mov         ebp,esp
 0049C203    add         esp,0FFFFFFF8
 0049C206    push        esi
 0049C207    mov         dword ptr [ebp-8],edx
 0049C20A    mov         dword ptr [ebp-4],eax
 0049C20D    push        dword ptr [ebp+0C]
 0049C210    push        dword ptr [ebp+8]
 0049C213    mov         edx,dword ptr [ebp-8]
 0049C216    mov         eax,dword ptr [ebp-4]
 0049C219    mov         eax,dword ptr [eax+34];TMenu.Items:TMenuItem
 0049C21C    mov         si,0FFFD
 0049C220    call        @CallDynaInst;TMenuItem.sub_0042A788
 0049C225    pop         esi
 0049C226    pop         ecx
 0049C227    pop         ecx
 0049C228    pop         ebp
 0049C229    ret         8
end;*}

//0049C22C
{*function sub_0049C22C:?;
begin
 0049C22C    push        ebp
 0049C22D    mov         ebp,esp
 0049C22F    add         esp,0FFFFFFF8
 0049C232    mov         dword ptr [ebp-4],eax
 0049C235    mov         eax,dword ptr [ebp-4]
 0049C238    mov         eax,dword ptr [eax+34];TMenu.Items:TMenuItem
 0049C23B    call        00498B60
 0049C240    mov         dword ptr [ebp-8],eax
 0049C243    mov         eax,dword ptr [ebp-8]
 0049C246    pop         ecx
 0049C247    pop         ecx
 0049C248    pop         ebp
 0049C249    ret
end;*}

//0049C24C
{*procedure TMenu.sub_0042A808(?:?; ?:?);
begin
 0049C24C    push        ebp
 0049C24D    mov         ebp,esp
 0049C24F    add         esp,0FFFFFFF4
 0049C252    push        esi
 0049C253    mov         dword ptr [ebp-0C],ecx
 0049C256    mov         dword ptr [ebp-8],edx
 0049C259    mov         dword ptr [ebp-4],eax
 0049C25C    mov         ecx,dword ptr [ebp-0C]
 0049C25F    mov         edx,dword ptr [ebp-8]
 0049C262    mov         eax,dword ptr [ebp-4]
 0049C265    mov         eax,dword ptr [eax+34];TMenu.Items:TMenuItem
 0049C268    mov         si,0FFF9
 0049C26C    call        @CallDynaInst;TMenuItem.sub_0042A808
 0049C271    pop         esi
 0049C272    mov         esp,ebp
 0049C274    pop         ebp
 0049C275    ret
end;*}

//0049C278
{*function sub_0049C278(?:?):?;
begin
 0049C278    push        ebp
 0049C279    mov         ebp,esp
 0049C27B    add         esp,0FFFFFFF8
 0049C27E    mov         dword ptr [ebp-4],eax
 0049C281    mov         byte ptr [ebp-5],0
 0049C285    mov         eax,49C278;sub_0049C278
 0049C28A    mov         ecx,dword ptr [ebp-4]
 0049C28D    mov         edx,dword ptr [ebp-4]
 0049C290    mov         edx,dword ptr [edx+68]
 0049C293    call        00497DA4
 0049C298    push        1
 0049C29A    mov         ecx,dword ptr [ebp-4]
 0049C29D    mov         edx,dword ptr [ebp-4]
 0049C2A0    mov         eax,dword ptr [ebp-4]
 0049C2A3    call        0049AE34
 0049C2A8    mov         al,byte ptr [ebp-5]
 0049C2AB    pop         ecx
 0049C2AC    pop         ecx
 0049C2AD    pop         ebp
 0049C2AE    ret
end;*}

//0049C2B0
procedure sub_0049C2B0(?:TMainMenu);
begin
{*
 0049C2B0    push        ebp
 0049C2B1    mov         ebp,esp
 0049C2B3    push        ecx
 0049C2B4    mov         dword ptr [ebp-4],eax
 0049C2B7    mov         eax,dword ptr [ebp-4]
 0049C2BA    mov         eax,dword ptr [eax+34]
 0049C2BD    mov         edx,dword ptr [eax+68]
 0049C2C0    mov         eax,49C278;sub_0049C278
 0049C2C5    mov         ecx,dword ptr [ebp-4]
 0049C2C8    mov         ecx,dword ptr [ecx+34]
 0049C2CB    call        00497DA4
 0049C2D0    pop         ecx
 0049C2D1    pop         ebp
 0049C2D2    ret
*}
end;

//0049C2D4
{*function sub_0049C2D4(?:?; ?:?):?;
begin
 0049C2D4    push        ebp
 0049C2D5    mov         ebp,esp
 0049C2D7    add         esp,0FFFFFFF0
 0049C2DA    mov         dword ptr [ebp-4],eax
 0049C2DD    mov         byte ptr [ebp-5],0
 0049C2E1    mov         eax,dword ptr [ebp+8]
 0049C2E4    cmp         byte ptr [eax-1],0
>0049C2E8    jne         0049C2FB
 0049C2EA    mov         eax,dword ptr [ebp+8]
 0049C2ED    mov         eax,dword ptr [eax-8]
 0049C2F0    mov         edx,dword ptr [ebp-4]
 0049C2F3    movzx       edx,word ptr [edx+50]
 0049C2F7    cmp         eax,edx
>0049C2F9    je          0049C32C
 0049C2FB    mov         eax,dword ptr [ebp+8]
 0049C2FE    cmp         byte ptr [eax-1],1
>0049C302    jne         0049C312
 0049C304    mov         eax,dword ptr [ebp+8]
 0049C307    mov         eax,dword ptr [eax-8]
 0049C30A    mov         edx,dword ptr [ebp-4]
 0049C30D    cmp         eax,dword ptr [edx+34]
>0049C310    je          0049C32C
 0049C312    mov         eax,dword ptr [ebp+8]
 0049C315    cmp         byte ptr [eax-1],2
>0049C319    jne         0049C33B
 0049C31B    mov         eax,dword ptr [ebp+8]
 0049C31E    mov         eax,dword ptr [eax-8]
 0049C321    mov         edx,dword ptr [ebp-4]
 0049C324    movzx       edx,word ptr [edx+60]
 0049C328    cmp         eax,edx
>0049C32A    jne         0049C33B
 0049C32C    mov         eax,dword ptr [ebp+8]
 0049C32F    mov         edx,dword ptr [ebp-4]
 0049C332    mov         dword ptr [eax-0C],edx
 0049C335    mov         byte ptr [ebp-5],1
>0049C339    jmp         0049C37A
 0049C33B    mov         eax,dword ptr [ebp-4]
 0049C33E    call        0049A814
 0049C343    dec         eax
 0049C344    test        eax,eax
>0049C346    jl          0049C37A
 0049C348    inc         eax
 0049C349    mov         dword ptr [ebp-10],eax
 0049C34C    mov         dword ptr [ebp-0C],0
 0049C353    mov         eax,dword ptr [ebp+8]
 0049C356    push        eax
 0049C357    mov         edx,dword ptr [ebp-0C]
 0049C35A    mov         eax,dword ptr [ebp-4]
 0049C35D    call        0049A840
 0049C362    call        0049C2D4
 0049C367    pop         ecx
 0049C368    test        al,al
>0049C36A    je          0049C372
 0049C36C    mov         byte ptr [ebp-5],1
>0049C370    jmp         0049C37A
 0049C372    inc         dword ptr [ebp-0C]
 0049C375    dec         dword ptr [ebp-10]
>0049C378    jne         0049C353
 0049C37A    mov         al,byte ptr [ebp-5]
 0049C37D    mov         esp,ebp
 0049C37F    pop         ebp
 0049C380    ret
end;*}

//0049C384
{*function sub_0049C384(?:TMenu; ?:HMENU; ?:?):?;
begin
 0049C384    push        ebp
 0049C385    mov         ebp,esp
 0049C387    add         esp,0FFFFFFEC
 0049C38A    mov         byte ptr [ebp-1],cl
 0049C38D    mov         dword ptr [ebp-8],edx
 0049C390    mov         dword ptr [ebp-10],eax
 0049C393    xor         eax,eax
 0049C395    mov         dword ptr [ebp-0C],eax
 0049C398    mov         eax,dword ptr [ebp-10]
 0049C39B    mov         eax,dword ptr [eax+34]
 0049C39E    mov         edx,dword ptr [eax+68]
 0049C3A1    mov         eax,49C2D4;sub_0049C2D4
 0049C3A6    mov         ecx,dword ptr [ebp-10]
 0049C3A9    mov         ecx,dword ptr [ecx+34]
 0049C3AC    call        00497DA4
 0049C3B1    mov         eax,dword ptr [ebp-0C]
 0049C3B4    mov         dword ptr [ebp-14],eax
 0049C3B7    mov         eax,dword ptr [ebp-14]
 0049C3BA    mov         esp,ebp
 0049C3BC    pop         ebp
 0049C3BD    ret
end;*}

//0049C3C0
{*function sub_0049C3C0(?:Pointer; ?:?; ?:?):?;
begin
 0049C3C0    push        ebp
 0049C3C1    mov         ebp,esp
 0049C3C3    add         esp,0FFFFFFE8
 0049C3C6    mov         byte ptr [ebp-9],cl
 0049C3C9    mov         dword ptr [ebp-8],edx
 0049C3CC    mov         dword ptr [ebp-4],eax
 0049C3CF    xor         eax,eax
 0049C3D1    mov         dword ptr [ebp-10],eax
 0049C3D4    mov         byte ptr [ebp-15],1
 0049C3D8    cmp         byte ptr [ebp-9],0
>0049C3DC    je          0049C3E2
 0049C3DE    mov         byte ptr [ebp-15],0
 0049C3E2    cmp         byte ptr [ebp-15],1
>0049C3E6    jne         0049C414
 0049C3E8    mov         eax,dword ptr [ebp-4]
 0049C3EB    mov         edx,dword ptr ds:[49748C];TPopupMenu
 0049C3F1    call        @IsClass
 0049C3F6    test        al,al
>0049C3F8    je          0049C414
 0049C3FA    mov         eax,dword ptr [ebp-4]
 0049C3FD    mov         edx,dword ptr [eax]
 0049C3FF    call        dword ptr [edx+34]
 0049C402    cmp         eax,dword ptr [ebp-8]
>0049C405    jne         0049C414
 0049C407    mov         eax,dword ptr [ebp-4]
 0049C40A    call        TPopupMenu.GetHelpContext
 0049C40F    mov         dword ptr [ebp-10],eax
>0049C412    jmp         0049C44E
 0049C414    mov         cl,byte ptr [ebp-15]
 0049C417    mov         edx,dword ptr [ebp-8]
 0049C41A    mov         eax,dword ptr [ebp-4]
 0049C41D    call        0049C384
 0049C422    mov         dword ptr [ebp-14],eax
>0049C425    jmp         0049C430
 0049C427    mov         eax,dword ptr [ebp-14]
 0049C42A    mov         eax,dword ptr [eax+64]
 0049C42D    mov         dword ptr [ebp-14],eax
 0049C430    cmp         dword ptr [ebp-14],0
>0049C434    je          0049C43F
 0049C436    mov         eax,dword ptr [ebp-14]
 0049C439    cmp         dword ptr [eax+54],0
>0049C43D    je          0049C427
 0049C43F    cmp         dword ptr [ebp-14],0
>0049C443    je          0049C44E
 0049C445    mov         eax,dword ptr [ebp-14]
 0049C448    mov         eax,dword ptr [eax+54]
 0049C44B    mov         dword ptr [ebp-10],eax
 0049C44E    mov         eax,dword ptr [ebp-10]
 0049C451    mov         esp,ebp
 0049C453    pop         ebp
 0049C454    ret
end;*}

//0049C458
{*function sub_0049C458(?:Pointer; ?:?):?;
begin
 0049C458    push        ebp
 0049C459    mov         ebp,esp
 0049C45B    add         esp,0FFFFFFF4
 0049C45E    mov         word ptr [ebp-6],dx
 0049C462    mov         dword ptr [ebp-4],eax
 0049C465    mov         byte ptr [ebp-7],0
 0049C469    movzx       edx,word ptr [ebp-6]
 0049C46D    xor         ecx,ecx
 0049C46F    mov         eax,dword ptr [ebp-4]
 0049C472    call        0049C384
 0049C477    mov         dword ptr [ebp-0C],eax
 0049C47A    cmp         dword ptr [ebp-0C],0
>0049C47E    je          0049C48C
 0049C480    mov         eax,dword ptr [ebp-0C]
 0049C483    mov         edx,dword ptr [eax]
 0049C485    call        dword ptr [edx+44]
 0049C488    mov         byte ptr [ebp-7],1
 0049C48C    mov         al,byte ptr [ebp-7]
 0049C48F    mov         esp,ebp
 0049C491    pop         ebp
 0049C492    ret
end;*}

//0049C494
{*function sub_0049C494(?:Pointer; ?:?):?;
begin
 0049C494    push        ebp
 0049C495    mov         ebp,esp
 0049C497    add         esp,0FFFFFFE8
 0049C49A    mov         dword ptr [ebp-8],edx
 0049C49D    mov         dword ptr [ebp-4],eax
 0049C4A0    mov         byte ptr [ebp-9],0
 0049C4A4    mov         cl,1
 0049C4A6    mov         edx,dword ptr [ebp-8]
 0049C4A9    mov         eax,dword ptr [ebp-4]
 0049C4AC    call        0049C384
 0049C4B1    mov         dword ptr [ebp-10],eax
 0049C4B4    cmp         dword ptr [ebp-10],0
>0049C4B8    je          0049C566
 0049C4BE    mov         eax,dword ptr [ebp-10]
 0049C4C1    test        byte ptr [eax+1C],10
>0049C4C5    jne         0049C4CF
 0049C4C7    mov         eax,dword ptr [ebp-10]
 0049C4CA    call        0049AFC8
 0049C4CF    mov         eax,dword ptr [ebp-10]
 0049C4D2    mov         edx,dword ptr [eax]
 0049C4D4    call        dword ptr [edx+44]
 0049C4D7    xor         edx,edx
 0049C4D9    mov         eax,dword ptr [ebp-10]
 0049C4DC    call        0049B908
 0049C4E1    mov         byte ptr [ebp-11],al
 0049C4E4    xor         edx,edx
 0049C4E6    mov         eax,dword ptr [ebp-10]
 0049C4E9    call        0049BE84
 0049C4EE    or          al,byte ptr [ebp-11]
 0049C4F1    mov         byte ptr [ebp-11],al
 0049C4F4    cmp         byte ptr [ebp-11],0
>0049C4F8    je          0049C502
 0049C4FA    mov         eax,dword ptr [ebp-10]
 0049C4FD    call        004989D8
 0049C502    mov         eax,[0056E3C0];^Application:TApplication
 0049C507    mov         eax,dword ptr [eax]
 0049C509    cmp         dword ptr [eax+44],0;TApplication.FMainForm:TForm
>0049C50D    je          0049C560
 0049C50F    mov         eax,[0056E3C0];^Application:TApplication
 0049C514    mov         eax,dword ptr [eax]
 0049C516    mov         eax,dword ptr [eax+44];TApplication.FMainForm:TForm
 0049C519    mov         dword ptr [ebp-18],eax
 0049C51C    mov         eax,dword ptr [ebp-18]
 0049C51F    cmp         byte ptr [eax+22F],2;TForm.FFormStyle:TFormStyle
>0049C526    jne         0049C560
 0049C528    mov         eax,dword ptr [ebp-18]
 0049C52B    mov         eax,dword ptr [eax+258];TForm.FWindowMenu:TMenuItem
 0049C531    cmp         eax,dword ptr [ebp-10]
>0049C534    jne         0049C560
 0049C536    push        0
 0049C538    push        0
 0049C53A    push        234
 0049C53F    mov         eax,dword ptr [ebp-18]
 0049C542    mov         eax,dword ptr [eax+254];TForm.FClientHandle:HWND
 0049C548    push        eax
 0049C549    call        user32.SendMessageA
 0049C54E    test        eax,eax
>0049C550    je          0049C560
 0049C552    mov         eax,dword ptr [ebp-18]
 0049C555    call        TWinControl.GetHandle
 0049C55A    push        eax
 0049C55B    call        user32.DrawMenuBar
 0049C560    mov         byte ptr [ebp-9],1
>0049C564    jmp         0049C58C
 0049C566    mov         eax,dword ptr [ebp-4]
 0049C569    test        byte ptr [eax+1C],10
>0049C56D    jne         0049C58C
 0049C56F    mov         eax,dword ptr [ebp-4]
 0049C572    mov         edx,dword ptr ds:[49748C];TPopupMenu
 0049C578    call        @IsClass
 0049C57D    test        al,al
>0049C57F    je          0049C58C
 0049C581    mov         eax,dword ptr [ebp-4]
 0049C584    mov         eax,dword ptr [eax+34]
 0049C587    call        0049AFC8
 0049C58C    mov         al,byte ptr [ebp-9]
 0049C58F    mov         esp,ebp
 0049C591    pop         ebp
 0049C592    ret
end;*}

//0049C594
{*function sub_0049C594(?:?):?;
begin
 0049C594    push        ebp
 0049C595    mov         ebp,esp
 0049C597    add         esp,0FFFFFFF8
 0049C59A    mov         dword ptr [ebp-4],eax
 0049C59D    mov         eax,dword ptr [ebp-4]
 0049C5A0    cmp         byte ptr [eax+40],0
>0049C5A4    jne         0049C5B3
 0049C5A6    mov         eax,dword ptr [ebp-4]
 0049C5A9    cmp         dword ptr [eax+48],0
>0049C5AD    jne         0049C5B3
 0049C5AF    xor         eax,eax
>0049C5B1    jmp         0049C5B5
 0049C5B3    mov         al,1
 0049C5B5    mov         byte ptr [ebp-5],al
 0049C5B8    mov         al,byte ptr [ebp-5]
 0049C5BB    pop         ecx
 0049C5BC    pop         ecx
 0049C5BD    pop         ebp
 0049C5BE    ret
end;*}

//0049C5C0
{*function sub_0049C5C0(?:?; ?:?):?;
begin
 0049C5C0    push        ebp
 0049C5C1    mov         ebp,esp
 0049C5C3    add         esp,0FFFFFFF4
 0049C5C6    mov         dword ptr [ebp-8],edx
 0049C5C9    mov         dword ptr [ebp-4],eax
 0049C5CC    mov         eax,dword ptr [ebp-4]
 0049C5CF    mov         dword ptr [ebp-0C],eax
>0049C5D2    jmp         0049C5E0
 0049C5D4    mov         eax,dword ptr [ebp-0C]
 0049C5D7    mov         eax,dword ptr [eax+64]
 0049C5DA    mov         dword ptr [ebp-0C],eax
 0049C5DD    dec         dword ptr [ebp-8]
 0049C5E0    cmp         dword ptr [ebp-8],0
>0049C5E4    jle         0049C5EC
 0049C5E6    cmp         dword ptr [ebp-0C],0
>0049C5EA    jne         0049C5D4
 0049C5EC    mov         eax,dword ptr [ebp-0C]
 0049C5EF    mov         esp,ebp
 0049C5F1    pop         ebp
 0049C5F2    ret
end;*}

//0049C5F4
{*function sub_0049C5F4(?:TMenuItem; ?:?; ?:?):?;
begin
 0049C5F4    push        ebp
 0049C5F5    mov         ebp,esp
 0049C5F7    add         esp,0FFFFFFF0
 0049C5FA    push        ebx
 0049C5FB    push        esi
 0049C5FC    push        edi
 0049C5FD    mov         dword ptr [ebp-8],edx
 0049C600    mov         dword ptr [ebp-4],eax
 0049C603    mov         byte ptr [ebp-9],1
 0049C607    mov         eax,dword ptr [ebp-4]
 0049C60A    mov         eax,dword ptr [eax]
 0049C60C    mov         eax,dword ptr [eax+64]
 0049C60F    mov         dword ptr [ebp-10],eax
 0049C612    cmp         dword ptr [ebp-10],0
>0049C616    je          0049C62C
 0049C618    mov         eax,dword ptr [ebp+8]
 0049C61B    push        eax
 0049C61C    mov         edx,dword ptr [ebp-8]
 0049C61F    inc         edx
 0049C620    lea         eax,[ebp-10]
 0049C623    call        0049C5F4
 0049C628    pop         ecx
 0049C629    mov         byte ptr [ebp-9],al
 0049C62C    mov         al,byte ptr [ebp-9]
 0049C62F    test        al,al
>0049C631    je          0049C766
 0049C637    sub         al,3
>0049C639    je          0049C766
 0049C63F    cmp         byte ptr [ebp-9],2
>0049C643    jne         0049C6D0
 0049C649    mov         eax,dword ptr [ebp+8]
 0049C64C    cmp         dword ptr [eax-4],0
>0049C650    je          0049C665
 0049C652    mov         eax,dword ptr [ebp+8]
 0049C655    mov         eax,dword ptr [eax-4]
 0049C658    mov         ax,word ptr [eax+60]
 0049C65C    mov         edx,dword ptr [ebp+8]
 0049C65F    cmp         ax,word ptr [edx-6]
>0049C663    je          0049C691
 0049C665    mov         eax,dword ptr [ebp+8]
 0049C668    movzx       edx,word ptr [eax-6]
 0049C66C    mov         eax,dword ptr [ebp+8]
 0049C66F    mov         eax,dword ptr [eax-0C]
 0049C672    mov         cl,2
 0049C674    call        0049C384
 0049C679    mov         edx,dword ptr [ebp+8]
 0049C67C    mov         dword ptr [edx-4],eax
 0049C67F    mov         eax,dword ptr [ebp+8]
 0049C682    cmp         dword ptr [eax-4],0
>0049C686    jne         0049C691
 0049C688    mov         byte ptr [ebp-9],3
>0049C68C    jmp         0049C766
 0049C691    mov         eax,dword ptr [ebp+8]
 0049C694    push        eax
 0049C695    mov         eax,dword ptr [ebp+8]
 0049C698    mov         eax,dword ptr [eax-4]
 0049C69B    mov         edx,dword ptr [ebp-8]
 0049C69E    call        0049C5C0
 0049C6A3    pop         ecx
 0049C6A4    mov         edx,dword ptr [ebp-4]
 0049C6A7    mov         dword ptr [edx],eax
 0049C6A9    mov         eax,dword ptr [ebp-4]
 0049C6AC    cmp         dword ptr [eax],0
>0049C6AF    je          0049C766
 0049C6B5    mov         eax,dword ptr [ebp-4]
 0049C6B8    mov         eax,dword ptr [eax]
 0049C6BA    mov         eax,dword ptr [eax+64]
 0049C6BD    cmp         eax,dword ptr [ebp-10]
>0049C6C0    jne         0049C766
 0049C6C6    cmp         dword ptr [ebp-8],0
>0049C6CA    jne         0049C6D0
 0049C6CC    mov         byte ptr [ebp-9],1
 0049C6D0    mov         eax,dword ptr [ebp-4]
 0049C6D3    mov         eax,dword ptr [eax]
 0049C6D5    cmp         byte ptr [eax+39],0
>0049C6D9    je          0049C762
 0049C6DF    xor         eax,eax
 0049C6E1    push        ebp
 0049C6E2    push        49C744
 0049C6E7    push        dword ptr fs:[eax]
 0049C6EA    mov         dword ptr fs:[eax],esp
 0049C6ED    mov         eax,dword ptr [ebp+8]
 0049C6F0    mov         eax,dword ptr [eax-0C]
 0049C6F3    test        byte ptr [eax+1C],10
>0049C6F7    jne         0049C703
 0049C6F9    mov         eax,dword ptr [ebp-4]
 0049C6FC    mov         eax,dword ptr [eax]
 0049C6FE    call        0049AFC8
 0049C703    mov         eax,dword ptr [ebp-4]
 0049C706    mov         eax,dword ptr [eax]
 0049C708    mov         edx,dword ptr [eax]
 0049C70A    call        dword ptr [edx+44]
 0049C70D    mov         eax,dword ptr [ebp+8]
 0049C710    cmp         dword ptr [eax-4],0
>0049C714    je          0049C736
 0049C716    mov         eax,dword ptr [ebp-4]
 0049C719    mov         eax,dword ptr [eax]
 0049C71B    mov         edx,dword ptr [ebp+8]
 0049C71E    cmp         eax,dword ptr [edx-4]
>0049C721    je          0049C73A
 0049C723    mov         eax,dword ptr [ebp+8]
 0049C726    mov         eax,dword ptr [eax-4]
 0049C729    mov         ax,word ptr [eax+60]
 0049C72D    mov         edx,dword ptr [ebp+8]
 0049C730    cmp         ax,word ptr [edx-6]
>0049C734    je          0049C73A
 0049C736    mov         byte ptr [ebp-9],2
 0049C73A    xor         eax,eax
 0049C73C    pop         edx
 0049C73D    pop         ecx
 0049C73E    pop         ecx
 0049C73F    mov         dword ptr fs:[eax],edx
>0049C742    jmp         0049C766
>0049C744    jmp         @HandleAnyException
 0049C749    mov         eax,dword ptr [ebp+8]
 0049C74C    mov         edx,dword ptr [eax-0C]
 0049C74F    mov         eax,[0056E3C0];^Application:TApplication
 0049C754    mov         eax,dword ptr [eax]
 0049C756    call        TApplication.HandleException
 0049C75B    call        @DoneExcept
>0049C760    jmp         0049C766
 0049C762    mov         byte ptr [ebp-9],0
 0049C766    mov         al,byte ptr [ebp-9]
 0049C769    pop         edi
 0049C76A    pop         esi
 0049C76B    pop         ebx
 0049C76C    mov         esp,ebp
 0049C76E    pop         ebp
 0049C76F    ret
end;*}

//0049C770
{*procedure TMenu.sub_0049C770(?:?);
begin
 0049C770    push        ebp
 0049C771    mov         ebp,esp
 0049C773    add         esp,0FFFFFFE8
 0049C776    mov         dword ptr [ebp-10],edx
 0049C779    mov         dword ptr [ebp-0C],eax
 0049C77C    mov         byte ptr [ebp-11],0
 0049C780    mov         eax,dword ptr [ebp-10]
 0049C783    movzx       eax,byte ptr [eax+4]
 0049C787    mov         word ptr [ebp-6],ax
 0049C78B    cmp         word ptr [ebp-6],0
>0049C790    je          0049C891
 0049C796    push        10
 0049C798    call        user32.GetKeyState
 0049C79D    test        ax,ax
>0049C7A0    jge         0049C7A8
 0049C7A2    add         word ptr [ebp-6],2000
 0049C7A8    push        11
 0049C7AA    call        user32.GetKeyState
 0049C7AF    test        ax,ax
>0049C7B2    jge         0049C7BA
 0049C7B4    add         word ptr [ebp-6],4000
 0049C7BA    mov         eax,dword ptr [ebp-10]
 0049C7BD    test        byte ptr [eax+0B],20
>0049C7C1    je          0049C7C9
 0049C7C3    add         word ptr [ebp-6],8000
 0049C7C9    mov         eax,dword ptr [ebp-0C]
 0049C7CC    mov         eax,dword ptr [eax+34];TMenu.Items:TMenuItem
 0049C7CF    mov         dword ptr [ebp-18],eax
 0049C7D2    lea         edx,[ebp-18]
 0049C7D5    mov         eax,[00571E30];0x0 ShortCutItems:TMenuItemStack
 0049C7DA    call        00437798
 0049C7DF    xor         eax,eax
 0049C7E1    push        ebp
 0049C7E2    push        49C875
 0049C7E7    push        dword ptr fs:[eax]
 0049C7EA    mov         dword ptr fs:[eax],esp
 0049C7ED    mov         byte ptr [ebp-12],0
 0049C7F1    movzx       edx,word ptr [ebp-6]
 0049C7F5    mov         cl,2
 0049C7F7    mov         eax,dword ptr [ebp-0C]
 0049C7FA    call        0049C384
 0049C7FF    mov         dword ptr [ebp-4],eax
 0049C802    cmp         dword ptr [ebp-4],0
>0049C806    je          0049C851
 0049C808    lea         edx,[ebp-4]
 0049C80B    mov         eax,[00571E30];0x0 ShortCutItems:TMenuItemStack
 0049C810    call        00437798
 0049C815    xor         eax,eax
 0049C817    push        ebp
 0049C818    push        49C84A
 0049C81D    push        dword ptr fs:[eax]
 0049C820    mov         dword ptr fs:[eax],esp
 0049C823    push        ebp
 0049C824    lea         eax,[ebp-4]
 0049C827    xor         edx,edx
 0049C829    call        0049C5F4
 0049C82E    pop         ecx
 0049C82F    mov         byte ptr [ebp-12],al
 0049C832    xor         eax,eax
 0049C834    pop         edx
 0049C835    pop         ecx
 0049C836    pop         ecx
 0049C837    mov         dword ptr fs:[eax],edx
 0049C83A    push        49C851
 0049C83F    mov         eax,[00571E30];0x0 ShortCutItems:TMenuItemStack
 0049C844    call        0043777C
 0049C849    ret
>0049C84A    jmp         @HandleFinally
>0049C84F    jmp         0049C83F
 0049C851    cmp         dword ptr [ebp-18],0
>0049C855    je          0049C85D
 0049C857    cmp         byte ptr [ebp-12],2
>0049C85B    je          0049C7ED
 0049C85D    xor         eax,eax
 0049C85F    pop         edx
 0049C860    pop         ecx
 0049C861    pop         ecx
 0049C862    mov         dword ptr fs:[eax],edx
 0049C865    push        49C87C
 0049C86A    mov         eax,[00571E30];0x0 ShortCutItems:TMenuItemStack
 0049C86F    call        0043777C
 0049C874    ret
>0049C875    jmp         @HandleFinally
>0049C87A    jmp         0049C86A
 0049C87C    cmp         dword ptr [ebp-4],0
>0049C880    jne         0049C88C
 0049C882    cmp         dword ptr [ebp-18],0
>0049C886    je          0049C88C
 0049C888    xor         eax,eax
>0049C88A    jmp         0049C88E
 0049C88C    mov         al,1
 0049C88E    mov         byte ptr [ebp-11],al
 0049C891    mov         al,byte ptr [ebp-11]
 0049C894    mov         esp,ebp
 0049C896    pop         ebp
 0049C897    ret
end;*}

//0049C898
function TMainMenu.IsStoredBiDiMode(Value:TBiDiMode):Boolean;
begin
{*
 0049C898    push        ebp
 0049C899    mov         ebp,esp
 0049C89B    add         esp,0FFFFFFF8
 0049C89E    mov         dword ptr [ebp-4],eax
 0049C8A1    mov         eax,dword ptr [ebp-4]
 0049C8A4    mov         al,byte ptr [eax+41];TMainMenu.FParentBiDiMode:Boolean
 0049C8A7    xor         al,1
 0049C8A9    mov         byte ptr [ebp-5],al
 0049C8AC    mov         al,byte ptr [ebp-5]
 0049C8AF    pop         ecx
 0049C8B0    pop         ecx
 0049C8B1    pop         ebp
 0049C8B2    ret
*}
end;

//0049C8B4
procedure sub_0049C8B4(?:TMainMenu);
begin
{*
 0049C8B4    push        ebp
 0049C8B5    mov         ebp,esp
 0049C8B7    add         esp,0FFFFFF78
 0049C8BD    mov         dword ptr [ebp-4],eax
 0049C8C0    mov         eax,[0056E638];^gvar_0057196C:Integer
 0049C8C5    cmp         byte ptr [eax+0D],0
>0049C8C9    je          0049C97C
 0049C8CF    mov         eax,dword ptr [ebp-4]
 0049C8D2    cmp         dword ptr [eax+38],0
>0049C8D6    je          0049C97C
 0049C8DC    mov         eax,dword ptr [ebp-4]
 0049C8DF    mov         edx,dword ptr [eax]
 0049C8E1    call        dword ptr [edx+34]
 0049C8E4    mov         dword ptr [ebp-8],eax
 0049C8E7    mov         dword ptr [ebp-38],2C
 0049C8EE    mov         dword ptr [ebp-34],10
 0049C8F5    lea         eax,[ebp-88]
 0049C8FB    mov         dword ptr [ebp-14],eax
 0049C8FE    mov         dword ptr [ebp-10],50
 0049C905    lea         eax,[ebp-38]
 0049C908    push        eax
 0049C909    push        0FF
 0049C90B    push        0
 0049C90D    mov         eax,dword ptr [ebp-8]
 0049C910    push        eax
 0049C911    call        user32.GetMenuItemInfoA
 0049C916    test        eax,eax
>0049C918    je          0049C97C
 0049C91A    mov         eax,dword ptr [ebp-4]
 0049C91D    call        TMenu.IsRightToLeft
 0049C922    mov         edx,dword ptr [ebp-30]
 0049C925    and         edx,6000
 0049C92B    cmp         edx,1
 0049C92E    sbb         edx,edx
 0049C930    inc         edx
 0049C931    cmp         al,dl
>0049C933    je          0049C97C
 0049C935    mov         eax,dword ptr [ebp-4]
 0049C938    call        TMenu.IsRightToLeft
 0049C93D    and         eax,7F
 0049C940    shl         eax,0D
 0049C943    lea         eax,[eax+eax*2]
 0049C946    mov         edx,dword ptr [ebp-30]
 0049C949    and         edx,0FFFF9FFF
 0049C94F    or          eax,edx
 0049C951    mov         dword ptr [ebp-30],eax
 0049C954    mov         dword ptr [ebp-34],10
 0049C95B    lea         eax,[ebp-38]
 0049C95E    push        eax
 0049C95F    push        0FF
 0049C961    push        0
 0049C963    mov         eax,dword ptr [ebp-8]
 0049C966    push        eax
 0049C967    call        user32.SetMenuItemInfoA
 0049C96C    test        eax,eax
>0049C96E    je          0049C97C
 0049C970    mov         eax,dword ptr [ebp-4]
 0049C973    mov         eax,dword ptr [eax+38]
 0049C976    push        eax
 0049C977    call        user32.DrawMenuBar
 0049C97C    mov         esp,ebp
 0049C97E    pop         ebp
 0049C97F    ret
*}
end;

//0049C980
{*procedure sub_0049C980(?:?; ?:?);
begin
 0049C980    push        ebp
 0049C981    mov         ebp,esp
 0049C983    add         esp,0FFFFFFE8
 0049C986    mov         dword ptr [ebp-4],eax
 0049C989    mov         eax,dword ptr [ebp-4]
 0049C98C    push        eax
 0049C98D    call        user32.GetMenuItemCount
 0049C992    mov         dword ptr [ebp-14],eax
 0049C995    mov         eax,dword ptr [ebp+8]
 0049C998    add         eax,0FFFFFE00
 0049C99D    mov         dword ptr [ebp-8],eax
 0049C9A0    mov         eax,dword ptr [ebp+8]
 0049C9A3    add         eax,0FFFFFFFB
 0049C9A6    mov         dword ptr [ebp-0C],eax
 0049C9A9    xor         eax,eax
 0049C9AB    mov         dword ptr [ebp-10],eax
>0049C9AE    jmp         0049CA49
 0049C9B3    mov         eax,dword ptr [ebp-8]
 0049C9B6    push        eax
 0049C9B7    mov         eax,dword ptr [ebp-0C]
 0049C9BA    sub         eax,dword ptr [ebp-8]
 0049C9BD    push        eax
 0049C9BE    push        400
 0049C9C3    mov         eax,dword ptr [ebp+8]
 0049C9C6    mov         eax,dword ptr [eax-204]
 0049C9CC    mov         ecx,dword ptr [ebp-10]
 0049C9CF    mov         edx,dword ptr [ebp-4]
 0049C9D2    call        0049D120
 0049C9D7    mov         eax,dword ptr [ebp-8]
 0049C9DA    call        StrEnd
 0049C9DF    mov         dword ptr [ebp-8],eax
 0049C9E2    push        400
 0049C9E7    mov         eax,dword ptr [ebp-10]
 0049C9EA    push        eax
 0049C9EB    mov         eax,dword ptr [ebp-4]
 0049C9EE    push        eax
 0049C9EF    call        user32.GetMenuState
 0049C9F4    mov         word ptr [ebp-16],ax
 0049C9F8    test        byte ptr [ebp-16],2
>0049C9FC    je          0049CA0D
 0049C9FE    mov         eax,dword ptr [ebp-8]
 0049CA01    mov         byte ptr [eax],24
 0049CA04    inc         dword ptr [ebp-8]
 0049CA07    mov         eax,dword ptr [ebp-8]
 0049CA0A    mov         byte ptr [eax],0
 0049CA0D    test        byte ptr [ebp-16],40
>0049CA11    je          0049CA22
 0049CA13    mov         eax,dword ptr [ebp-8]
 0049CA16    mov         byte ptr [eax],40
 0049CA19    inc         dword ptr [ebp-8]
 0049CA1C    mov         eax,dword ptr [ebp-8]
 0049CA1F    mov         byte ptr [eax],0
 0049CA22    test        byte ptr [ebp-16],1
>0049CA26    je          0049CA37
 0049CA28    mov         eax,dword ptr [ebp-8]
 0049CA2B    mov         byte ptr [eax],23
 0049CA2E    inc         dword ptr [ebp-8]
 0049CA31    mov         eax,dword ptr [ebp-8]
 0049CA34    mov         byte ptr [eax],0
 0049CA37    mov         eax,dword ptr [ebp-8]
 0049CA3A    mov         byte ptr [eax],3B
 0049CA3D    inc         dword ptr [ebp-8]
 0049CA40    mov         eax,dword ptr [ebp-8]
 0049CA43    mov         byte ptr [eax],0
 0049CA46    inc         dword ptr [ebp-10]
 0049CA49    mov         eax,dword ptr [ebp-10]
 0049CA4C    cmp         eax,dword ptr [ebp-14]
>0049CA4F    jge         0049CA5D
 0049CA51    mov         eax,dword ptr [ebp-8]
 0049CA54    cmp         eax,dword ptr [ebp-0C]
>0049CA57    jb          0049C9B3
 0049CA5D    mov         esp,ebp
 0049CA5F    pop         ebp
 0049CA60    ret
end;*}

//0049CA64
{*function sub_0049CA64(?:TMainMenu):?;
begin
 0049CA64    push        ebp
 0049CA65    mov         ebp,esp
 0049CA67    add         esp,0FFFFFDF8
 0049CA6D    mov         dword ptr [ebp-204],eax
 0049CA73    mov         byte ptr [ebp-205],0
 0049CA7A    mov         byte ptr [ebp-200],0
 0049CA81    mov         eax,dword ptr [ebp-204]
 0049CA87    cmp         dword ptr [eax+38],0
>0049CA8B    je          0049CA9F
 0049CA8D    push        ebp
 0049CA8E    mov         eax,dword ptr [ebp-204]
 0049CA94    mov         edx,dword ptr [eax]
 0049CA96    call        dword ptr [edx+34]
 0049CA99    call        0049C980
 0049CA9E    pop         ecx
 0049CA9F    mov         eax,dword ptr [ebp-204]
 0049CAA5    cmp         dword ptr [eax+3C],0
>0049CAA9    je          0049CAC8
 0049CAAB    mov         eax,dword ptr [ebp-204]
 0049CAB1    mov         eax,dword ptr [eax+3C]
 0049CAB4    call        @LStrToPChar
 0049CAB9    lea         edx,[ebp-200]
 0049CABF    call        StrComp
 0049CAC4    test        eax,eax
>0049CAC6    je          0049CAE8
 0049CAC8    mov         byte ptr [ebp-205],1
 0049CACF    mov         eax,dword ptr [ebp-204]
 0049CAD5    add         eax,3C
 0049CAD8    lea         edx,[ebp-200]
 0049CADE    mov         ecx,200
 0049CAE3    call        @LStrFromArray
 0049CAE8    mov         al,byte ptr [ebp-205]
 0049CAEE    mov         esp,ebp
 0049CAF0    pop         ebp
 0049CAF1    ret
end;*}

//0049CAF4
procedure TMainMenu.SetOwnerDraw(Value:Boolean);
begin
{*
 0049CAF4    push        ebp
 0049CAF5    mov         ebp,esp
 0049CAF7    add         esp,0FFFFFFF8
 0049CAFA    mov         byte ptr [ebp-5],dl
 0049CAFD    mov         dword ptr [ebp-4],eax
 0049CB00    mov         al,byte ptr [ebp-5]
 0049CB03    mov         edx,dword ptr [ebp-4]
 0049CB06    cmp         al,byte ptr [edx+40];TMainMenu.FOwnerDraw:Boolean
>0049CB09    je          0049CB1C
 0049CB0B    mov         al,byte ptr [ebp-5]
 0049CB0E    mov         edx,dword ptr [ebp-4]
 0049CB11    mov         byte ptr [edx+40],al;TMainMenu.FOwnerDraw:Boolean
 0049CB14    mov         eax,dword ptr [ebp-4]
 0049CB17    call        0049C2B0
 0049CB1C    pop         ecx
 0049CB1D    pop         ecx
 0049CB1E    pop         ebp
 0049CB1F    ret
*}
end;

//0049CB20
procedure sub_0049CB20(?:TPopupMenu);
begin
{*
 0049CB20    push        ebp
 0049CB21    mov         ebp,esp
 0049CB23    add         esp,0FFFFFFF8
 0049CB26    mov         dword ptr [ebp-4],eax
 0049CB29    mov         eax,[0056E638];^gvar_0057196C:Integer
 0049CB2E    cmp         byte ptr [eax+0D],0
>0049CB32    je          0049CB9C
 0049CB34    mov         eax,dword ptr [ebp-4]
 0049CB37    mov         al,byte ptr [eax+30]
 0049CB3A    mov         byte ptr [ebp-5],al
 0049CB3D    mov         eax,dword ptr [ebp-4]
 0049CB40    mov         al,byte ptr [eax+41]
 0049CB43    mov         byte ptr [ebp-6],al
 0049CB46    xor         eax,eax
 0049CB48    push        ebp
 0049CB49    push        49CB95
 0049CB4E    push        dword ptr fs:[eax]
 0049CB51    mov         dword ptr fs:[eax],esp
 0049CB54    mov         eax,dword ptr [ebp-4]
 0049CB57    cmp         byte ptr [eax+30],0
>0049CB5B    jne         0049CB69
 0049CB5D    mov         dl,1
 0049CB5F    mov         eax,dword ptr [ebp-4]
 0049CB62    call        TMainMenu.SetBiDiMode
>0049CB67    jmp         0049CB73
 0049CB69    xor         edx,edx
 0049CB6B    mov         eax,dword ptr [ebp-4]
 0049CB6E    call        TMainMenu.SetBiDiMode
 0049CB73    xor         eax,eax
 0049CB75    pop         edx
 0049CB76    pop         ecx
 0049CB77    pop         ecx
 0049CB78    mov         dword ptr fs:[eax],edx
 0049CB7B    push        49CB9C
 0049CB80    mov         dl,byte ptr [ebp-5]
 0049CB83    mov         eax,dword ptr [ebp-4]
 0049CB86    call        TMainMenu.SetBiDiMode
 0049CB8B    mov         eax,dword ptr [ebp-4]
 0049CB8E    mov         dl,byte ptr [ebp-6]
 0049CB91    mov         byte ptr [eax+41],dl
 0049CB94    ret
>0049CB95    jmp         @HandleFinally
>0049CB9A    jmp         0049CB80
 0049CB9C    pop         ecx
 0049CB9D    pop         ecx
 0049CB9E    pop         ebp
 0049CB9F    ret
*}
end;

//0049CBA0
procedure sub_0049CBA0(?:TMainMenu; ?:HWND);
begin
{*
 0049CBA0    push        ebp
 0049CBA1    mov         ebp,esp
 0049CBA3    add         esp,0FFFFFFF8
 0049CBA6    mov         dword ptr [ebp-8],edx
 0049CBA9    mov         dword ptr [ebp-4],eax
 0049CBAC    mov         eax,dword ptr [ebp-8]
 0049CBAF    mov         edx,dword ptr [ebp-4]
 0049CBB2    mov         dword ptr [edx+38],eax
 0049CBB5    mov         eax,dword ptr [ebp-4]
 0049CBB8    call        0049CA64
 0049CBBD    mov         eax,[0056E638];^gvar_0057196C:Integer
 0049CBC2    cmp         byte ptr [eax+0D],0
>0049CBC6    je          0049CBE9
 0049CBC8    cmp         dword ptr [ebp-8],0
>0049CBCC    je          0049CBE9
 0049CBCE    mov         eax,dword ptr [ebp-4]
 0049CBD1    cmp         byte ptr [eax+41],0
>0049CBD5    je          0049CBE1
 0049CBD7    mov         eax,dword ptr [ebp-4]
 0049CBDA    call        0049D260
>0049CBDF    jmp         0049CBE9
 0049CBE1    mov         eax,dword ptr [ebp-4]
 0049CBE4    call        0049CB20
 0049CBE9    pop         ecx
 0049CBEA    pop         ecx
 0049CBEB    pop         ebp
 0049CBEC    ret
*}
end;

//0049CBF0
{*procedure sub_0049CBF0(?:?; ?:?);
begin
 0049CBF0    push        ebp
 0049CBF1    mov         ebp,esp
 0049CBF3    add         esp,0FFFFFFF4
 0049CBF6    push        ebx
 0049CBF7    mov         byte ptr [ebp-9],cl
 0049CBFA    mov         dword ptr [ebp-8],edx
 0049CBFD    mov         dword ptr [ebp-4],eax
 0049CC00    mov         eax,dword ptr [ebp-4]
 0049CC03    cmp         word ptr [eax+52],0;TMenu.?f52:word
>0049CC08    je          0049CC1D
 0049CC0A    mov         al,byte ptr [ebp-9]
 0049CC0D    push        eax
 0049CC0E    mov         ebx,dword ptr [ebp-4]
 0049CC11    mov         ecx,dword ptr [ebp-8]
 0049CC14    mov         edx,dword ptr [ebp-4]
 0049CC17    mov         eax,dword ptr [ebx+54];TMenu.?f54:dword
 0049CC1A    call        dword ptr [ebx+50];TMenu.FOnChange
 0049CC1D    pop         ebx
 0049CC1E    mov         esp,ebp
 0049CC20    pop         ebp
 0049CC21    ret
end;*}

//0049CC24
procedure sub_0049CC24;
begin
{*
 0049CC24    push        ebp
 0049CC25    mov         ebp,esp
 0049CC27    push        ecx
 0049CC28    push        ebx
 0049CC29    mov         dword ptr [ebp-4],eax
 0049CC2C    mov         eax,dword ptr [ebp-4]
 0049CC2F    call        0042A86C
 0049CC34    xor         ecx,ecx
 0049CC36    xor         edx,edx
 0049CC38    mov         eax,dword ptr [ebp-4]
 0049CC3B    mov         ebx,dword ptr [eax]
 0049CC3D    call        dword ptr [ebx+30];TMenu.sub_0049CBF0
 0049CC40    pop         ebx
 0049CC41    pop         ecx
 0049CC42    pop         ebp
 0049CC43    ret
*}
end;

//0049CC44
{*procedure sub_0049CC44(?:?; ?:?; ?:?);
begin
 0049CC44    push        ebp
 0049CC45    mov         ebp,esp
 0049CC47    add         esp,0FFFFFFF4
 0049CC4A    push        ebx
 0049CC4B    mov         dword ptr [ebp-8],ecx
 0049CC4E    mov         dword ptr [ebp-0C],edx
 0049CC51    mov         dword ptr [ebp-4],eax
 0049CC54    mov         ax,[0049CC84];0x9 gvar_0049CC84
 0049CC5A    mov         edx,dword ptr [ebp-4]
 0049CC5D    and         ax,word ptr [edx+1C];TMenu.FComponentState:TComponentState
 0049CC61    mov         dx,word ptr ds:[49CC88];0x0 gvar_0049CC88
 0049CC68    cmp         dx,ax
>0049CC6B    jne         0049CC7B
 0049CC6D    mov         cl,byte ptr [ebp+8]
 0049CC70    mov         edx,dword ptr [ebp-8]
 0049CC73    mov         eax,dword ptr [ebp-4]
 0049CC76    mov         ebx,dword ptr [eax]
 0049CC78    call        dword ptr [ebx+30];TMenu.sub_0049CBF0
 0049CC7B    pop         ebx
 0049CC7C    mov         esp,ebp
 0049CC7E    pop         ebp
 0049CC7F    ret         4
end;*}

//0049CC8C
{*procedure sub_0049CC8C(?:?; ?:?);
begin
 0049CC8C    push        ebp
 0049CC8D    mov         ebp,esp
 0049CC8F    add         esp,0FFFFFFF8
 0049CC92    mov         dword ptr [ebp-8],edx
 0049CC95    mov         dword ptr [ebp-4],eax
 0049CC98    mov         eax,dword ptr [ebp-8]
 0049CC9B    mov         edx,dword ptr [ebp-4]
 0049CC9E    cmp         eax,dword ptr [edx+48]
>0049CCA1    jne         0049CCAB
 0049CCA3    mov         eax,dword ptr [ebp-4]
 0049CCA6    call        0049C2B0
 0049CCAB    pop         ecx
 0049CCAC    pop         ecx
 0049CCAD    pop         ebp
 0049CCAE    ret
end;*}

//0049CCB0
procedure TMainMenu.SetImages(Value:TCustomImageList);
begin
{*
 0049CCB0    push        ebp
 0049CCB1    mov         ebp,esp
 0049CCB3    add         esp,0FFFFFFF8
 0049CCB6    mov         dword ptr [ebp-8],edx
 0049CCB9    mov         dword ptr [ebp-4],eax
 0049CCBC    mov         eax,dword ptr [ebp-4]
 0049CCBF    cmp         dword ptr [eax+48],0;TMainMenu.FImages:TCustomImageList
>0049CCC3    je          0049CCD6
 0049CCC5    mov         eax,dword ptr [ebp-4]
 0049CCC8    mov         edx,dword ptr [eax+44];TMainMenu.FImageChangeLink:TChangeLink
 0049CCCB    mov         eax,dword ptr [ebp-4]
 0049CCCE    mov         eax,dword ptr [eax+48];TMainMenu.FImages:TCustomImageList
 0049CCD1    call        00495F18
 0049CCD6    mov         eax,dword ptr [ebp-8]
 0049CCD9    mov         edx,dword ptr [ebp-4]
 0049CCDC    mov         dword ptr [edx+48],eax;TMainMenu.FImages:TCustomImageList
 0049CCDF    mov         eax,dword ptr [ebp-4]
 0049CCE2    cmp         dword ptr [eax+48],0;TMainMenu.FImages:TCustomImageList
>0049CCE6    je          0049CD07
 0049CCE8    mov         eax,dword ptr [ebp-4]
 0049CCEB    mov         edx,dword ptr [eax+44];TMainMenu.FImageChangeLink:TChangeLink
 0049CCEE    mov         eax,dword ptr [ebp-4]
 0049CCF1    mov         eax,dword ptr [eax+48];TMainMenu.FImages:TCustomImageList
 0049CCF4    call        00495F80
 0049CCF9    mov         edx,dword ptr [ebp-4]
 0049CCFC    mov         eax,dword ptr [ebp-4]
 0049CCFF    mov         eax,dword ptr [eax+48];TMainMenu.FImages:TCustomImageList
 0049CD02    call        0042A2CC
 0049CD07    mov         eax,dword ptr [ebp-4]
 0049CD0A    call        0049C2B0
 0049CD0F    pop         ecx
 0049CD10    pop         ecx
 0049CD11    pop         ebp
 0049CD12    ret
*}
end;

//0049CD14
{*procedure sub_0049CD14(?:?; ?:?);
begin
 0049CD14    push        ebp
 0049CD15    mov         ebp,esp
 0049CD17    add         esp,0FFFFFFF4
 0049CD1A    mov         byte ptr [ebp-9],cl
 0049CD1D    mov         dword ptr [ebp-8],edx
 0049CD20    mov         dword ptr [ebp-4],eax
 0049CD23    mov         cl,byte ptr [ebp-9]
 0049CD26    mov         edx,dword ptr [ebp-8]
 0049CD29    mov         eax,dword ptr [ebp-4]
 0049CD2C    call        0042A644
 0049CD31    mov         eax,dword ptr [ebp-8]
 0049CD34    mov         edx,dword ptr [ebp-4]
 0049CD37    cmp         eax,dword ptr [edx+48];TMenu.FImages:TCustomImageList
>0049CD3A    jne         0049CD4C
 0049CD3C    cmp         byte ptr [ebp-9],1
>0049CD40    jne         0049CD4C
 0049CD42    xor         edx,edx
 0049CD44    mov         eax,dword ptr [ebp-4]
 0049CD47    call        TMainMenu.SetImages
 0049CD4C    mov         esp,ebp
 0049CD4E    pop         ebp
 0049CD4F    ret
end;*}

//0049CD50
function TMenu.IsRightToLeft:Boolean;
begin
{*
 0049CD50    push        ebp
 0049CD51    mov         ebp,esp
 0049CD53    add         esp,0FFFFFFF8
 0049CD56    mov         dword ptr [ebp-4],eax
 0049CD59    mov         eax,[0056E638];^gvar_0057196C:Integer
 0049CD5E    cmp         byte ptr [eax+0D],0
>0049CD62    je          0049CD6D
 0049CD64    mov         eax,dword ptr [ebp-4]
 0049CD67    cmp         byte ptr [eax+30],0
>0049CD6B    jne         0049CD71
 0049CD6D    xor         eax,eax
>0049CD6F    jmp         0049CD73
 0049CD71    mov         al,1
 0049CD73    mov         byte ptr [ebp-5],al
 0049CD76    mov         al,byte ptr [ebp-5]
 0049CD79    pop         ecx
 0049CD7A    pop         ecx
 0049CD7B    pop         ebp
 0049CD7C    ret
*}
end;

//0049CD80
{*function sub_0049CD80(?:?; ?:LongWord; ?:?; ?:?; ?:?):?;
begin
 0049CD80    push        ebp
 0049CD81    mov         ebp,esp
 0049CD83    add         esp,0FFFFFFE8
 0049CD86    mov         dword ptr [ebp-0C],ecx
 0049CD89    mov         word ptr [ebp-6],dx
 0049CD8D    mov         dword ptr [ebp-4],eax
 0049CD90    xor         eax,eax
 0049CD92    mov         dword ptr [ebp-14],eax
 0049CD95    test        byte ptr [ebp-6],10
>0049CD99    je          0049CDC0
 0049CD9B    mov         eax,dword ptr [ebp-0C]
 0049CD9E    push        eax
 0049CD9F    mov         eax,dword ptr [ebp-4]
 0049CDA2    push        eax
 0049CDA3    call        user32.GetSubMenu
 0049CDA8    mov         dword ptr [ebp-4],eax
 0049CDAB    mov         eax,dword ptr [ebp+0C]
 0049CDAE    mov         eax,dword ptr [eax-4]
 0049CDB1    mov         cl,1
 0049CDB3    mov         edx,dword ptr [ebp-4]
 0049CDB6    call        0049C384
 0049CDBB    mov         dword ptr [ebp-14],eax
>0049CDBE    jmp         0049CDE9
 0049CDC0    mov         eax,dword ptr [ebp-0C]
 0049CDC3    push        eax
 0049CDC4    mov         eax,dword ptr [ebp-4]
 0049CDC7    push        eax
 0049CDC8    call        user32.GetMenuItemID
 0049CDCD    mov         dword ptr [ebp-18],eax
 0049CDD0    cmp         dword ptr [ebp-18],0FFFFFFFF
>0049CDD4    je          0049CDE9
 0049CDD6    mov         eax,dword ptr [ebp+0C]
 0049CDD9    mov         eax,dword ptr [eax-4]
 0049CDDC    xor         ecx,ecx
 0049CDDE    mov         edx,dword ptr [ebp-18]
 0049CDE1    call        0049C384
 0049CDE6    mov         dword ptr [ebp-14],eax
 0049CDE9    cmp         dword ptr [ebp-14],0
>0049CDED    je          0049CE04
 0049CDEF    xor         eax,eax
 0049CDF1    mov         al,byte ptr [ebp+8]
 0049CDF4    mov         edx,dword ptr [ebp-14]
 0049CDF7    mov         edx,dword ptr [edx+30]
 0049CDFA    call        004A06C8
 0049CDFF    mov         byte ptr [ebp-0D],al
>0049CE02    jmp         0049CE08
 0049CE04    mov         byte ptr [ebp-0D],0
 0049CE08    mov         al,byte ptr [ebp-0D]
 0049CE0B    mov         esp,ebp
 0049CE0D    pop         ebp
 0049CE0E    ret         4
end;*}

//0049CE14
{*function sub_0049CE14(?:?; ?:LongWord; ?:?; ?:?; ?:?):?;
begin
 0049CE14    push        ebp
 0049CE15    mov         ebp,esp
 0049CE17    add         esp,0FFFFFFE0
 0049CE1A    push        ebx
 0049CE1B    xor         ebx,ebx
 0049CE1D    mov         dword ptr [ebp-20],ebx
 0049CE20    mov         dword ptr [ebp-18],ebx
 0049CE23    mov         dword ptr [ebp-1C],ebx
 0049CE26    mov         dword ptr [ebp-0C],ecx
 0049CE29    mov         word ptr [ebp-6],dx
 0049CE2D    mov         dword ptr [ebp-4],eax
 0049CE30    xor         eax,eax
 0049CE32    push        ebp
 0049CE33    push        49CF16
 0049CE38    push        dword ptr fs:[eax]
 0049CE3B    mov         dword ptr fs:[eax],esp
 0049CE3E    test        byte ptr [ebp-6],10
>0049CE42    je          0049CE69
 0049CE44    mov         eax,dword ptr [ebp-0C]
 0049CE47    push        eax
 0049CE48    mov         eax,dword ptr [ebp-4]
 0049CE4B    push        eax
 0049CE4C    call        user32.GetSubMenu
 0049CE51    mov         dword ptr [ebp-4],eax
 0049CE54    mov         eax,dword ptr [ebp+0C]
 0049CE57    mov         eax,dword ptr [eax-4]
 0049CE5A    mov         cl,1
 0049CE5C    mov         edx,dword ptr [ebp-4]
 0049CE5F    call        0049C384
 0049CE64    mov         dword ptr [ebp-14],eax
>0049CE67    jmp         0049CE9D
 0049CE69    mov         eax,dword ptr [ebp+0C]
 0049CE6C    mov         eax,dword ptr [eax-4]
 0049CE6F    mov         cl,1
 0049CE71    mov         edx,dword ptr [ebp-4]
 0049CE74    call        0049C384
 0049CE79    mov         dword ptr [ebp-14],eax
 0049CE7C    cmp         dword ptr [ebp-14],0
>0049CE80    je          0049CE9D
 0049CE82    mov         eax,dword ptr [ebp-14]
 0049CE85    call        0049A814
 0049CE8A    cmp         eax,dword ptr [ebp-0C]
>0049CE8D    jle         0049CE9D
 0049CE8F    mov         edx,dword ptr [ebp-0C]
 0049CE92    mov         eax,dword ptr [ebp-14]
 0049CE95    call        0049A840
 0049CE9A    mov         dword ptr [ebp-14],eax
 0049CE9D    cmp         dword ptr [ebp-14],0
>0049CEA1    je          0049CEF7
 0049CEA3    mov         eax,dword ptr [ebp-14]
 0049CEA6    cmp         dword ptr [eax+30],0
>0049CEAA    je          0049CEF7
 0049CEAC    lea         eax,[ebp-18]
 0049CEAF    mov         dl,byte ptr [ebp+8]
 0049CEB2    call        @LStrFromChar
 0049CEB7    mov         eax,dword ptr [ebp-18]
 0049CEBA    push        eax
 0049CEBB    lea         eax,[ebp-1C]
 0049CEBE    mov         edx,dword ptr [ebp-14]
 0049CEC1    mov         edx,dword ptr [edx+30]
 0049CEC4    mov         dl,byte ptr [edx]
 0049CEC6    call        @LStrFromChar
 0049CECB    mov         eax,dword ptr [ebp-1C]
 0049CECE    pop         edx
 0049CECF    call        0040BF44
 0049CED4    test        eax,eax
>0049CED6    jne         0049CEEC
 0049CED8    lea         edx,[ebp-20]
 0049CEDB    mov         eax,dword ptr [ebp-14]
 0049CEDE    mov         eax,dword ptr [eax+30]
 0049CEE1    call        0049E0B8
 0049CEE6    cmp         dword ptr [ebp-20],0
>0049CEEA    je          0049CEF0
 0049CEEC    xor         eax,eax
>0049CEEE    jmp         0049CEF2
 0049CEF0    mov         al,1
 0049CEF2    mov         byte ptr [ebp-0D],al
>0049CEF5    jmp         0049CEFB
 0049CEF7    mov         byte ptr [ebp-0D],0
 0049CEFB    xor         eax,eax
 0049CEFD    pop         edx
 0049CEFE    pop         ecx
 0049CEFF    pop         ecx
 0049CF00    mov         dword ptr fs:[eax],edx
 0049CF03    push        49CF1D
 0049CF08    lea         eax,[ebp-20]
 0049CF0B    mov         edx,3
 0049CF10    call        @LStrArrayClr
 0049CF15    ret
>0049CF16    jmp         @HandleFinally
>0049CF1B    jmp         0049CF08
 0049CF1D    mov         al,byte ptr [ebp-0D]
 0049CF20    pop         ebx
 0049CF21    mov         esp,ebp
 0049CF23    pop         ebp
 0049CF24    ret         4
end;*}

//0049CF28
{*procedure sub_0049CF28(?:Pointer; ?:?);
begin
 0049CF28    push        ebp
 0049CF29    mov         ebp,esp
 0049CF2B    add         esp,0FFFFFFDC
 0049CF2E    mov         dword ptr [ebp-8],edx
 0049CF31    mov         dword ptr [ebp-4],eax
 0049CF34    mov         eax,dword ptr [ebp-8]
 0049CF37    xor         edx,edx
 0049CF39    mov         dword ptr [eax+0C],edx
 0049CF3C    mov         dword ptr [ebp-14],0FFFFFFFF
 0049CF43    mov         dword ptr [ebp-18],0FFFFFFFF
 0049CF4A    mov         dword ptr [ebp-1C],0FFFFFFFF
 0049CF51    mov         eax,dword ptr [ebp-8]
 0049CF54    mov         eax,dword ptr [eax+8]
 0049CF57    push        eax
 0049CF58    call        user32.GetMenuItemCount
 0049CF5D    mov         dword ptr [ebp-0C],eax
 0049CF60    mov         eax,dword ptr [ebp-0C]
 0049CF63    dec         eax
 0049CF64    test        eax,eax
>0049CF66    jl          0049D00C
 0049CF6C    inc         eax
 0049CF6D    mov         dword ptr [ebp-24],eax
 0049CF70    mov         dword ptr [ebp-10],0
 0049CF77    push        400
 0049CF7C    mov         eax,dword ptr [ebp-10]
 0049CF7F    push        eax
 0049CF80    mov         eax,dword ptr [ebp-8]
 0049CF83    mov         eax,dword ptr [eax+8]
 0049CF86    push        eax
 0049CF87    call        user32.GetMenuState
 0049CF8C    mov         word ptr [ebp-1E],ax
 0049CF90    push        ebp
 0049CF91    mov         eax,dword ptr [ebp-8]
 0049CF94    mov         al,byte ptr [eax+4]
 0049CF97    push        eax
 0049CF98    mov         eax,dword ptr [ebp-8]
 0049CF9B    mov         eax,dword ptr [eax+8]
 0049CF9E    mov         ecx,dword ptr [ebp-10]
 0049CFA1    mov         dx,word ptr [ebp-1E]
 0049CFA5    call        0049CD80
 0049CFAA    pop         ecx
 0049CFAB    test        al,al
>0049CFAD    je          0049D000
 0049CFAF    test        byte ptr [ebp-1E],2
>0049CFB3    je          0049CFC4
 0049CFB5    cmp         dword ptr [ebp-14],0
>0049CFB9    jge         0049D000
 0049CFBB    mov         dword ptr [ebp-14],0FFFFFFFE
>0049CFC2    jmp         0049D000
 0049CFC4    cmp         dword ptr [ebp-14],0
>0049CFC8    jge         0049CFDC
 0049CFCA    mov         eax,dword ptr [ebp-10]
 0049CFCD    mov         dword ptr [ebp-14],eax
 0049CFD0    mov         eax,dword ptr [ebp-8]
 0049CFD3    mov         dword ptr [eax+0C],2
>0049CFDA    jmp         0049CFE6
 0049CFDC    mov         eax,dword ptr [ebp-8]
 0049CFDF    mov         dword ptr [eax+0C],3
 0049CFE6    test        byte ptr [ebp-1E],80
>0049CFEA    je          0049CFF4
 0049CFEC    mov         eax,dword ptr [ebp-10]
 0049CFEF    mov         dword ptr [ebp-18],eax
>0049CFF2    jmp         0049D000
 0049CFF4    cmp         dword ptr [ebp-18],0
>0049CFF8    jl          0049D000
 0049CFFA    mov         eax,dword ptr [ebp-10]
 0049CFFD    mov         dword ptr [ebp-1C],eax
 0049D000    inc         dword ptr [ebp-10]
 0049D003    dec         dword ptr [ebp-24]
>0049D006    jne         0049CF77
 0049D00C    cmp         dword ptr [ebp-14],0FFFFFFFF
>0049D010    jge         0049D021
 0049D012    mov         eax,dword ptr [ebp-8]
 0049D015    mov         dword ptr [eax+0C],10000
>0049D01C    jmp         0049D11B
 0049D021    cmp         dword ptr [ebp-14],0
>0049D025    jge         0049D0D7
 0049D02B    mov         eax,dword ptr [ebp-0C]
 0049D02E    dec         eax
 0049D02F    test        eax,eax
>0049D031    jl          0049D0D7
 0049D037    inc         eax
 0049D038    mov         dword ptr [ebp-24],eax
 0049D03B    mov         dword ptr [ebp-10],0
 0049D042    push        400
 0049D047    mov         eax,dword ptr [ebp-10]
 0049D04A    push        eax
 0049D04B    mov         eax,dword ptr [ebp-8]
 0049D04E    mov         eax,dword ptr [eax+8]
 0049D051    push        eax
 0049D052    call        user32.GetMenuState
 0049D057    mov         word ptr [ebp-1E],ax
 0049D05B    push        ebp
 0049D05C    mov         eax,dword ptr [ebp-8]
 0049D05F    mov         al,byte ptr [eax+4]
 0049D062    push        eax
 0049D063    mov         eax,dword ptr [ebp-8]
 0049D066    mov         eax,dword ptr [eax+8]
 0049D069    mov         ecx,dword ptr [ebp-10]
 0049D06C    mov         dx,word ptr [ebp-1E]
 0049D070    call        0049CE14
 0049D075    pop         ecx
 0049D076    test        al,al
>0049D078    je          0049D0CB
 0049D07A    test        byte ptr [ebp-1E],2
>0049D07E    je          0049D08F
 0049D080    mov         eax,dword ptr [ebp-8]
 0049D083    mov         dword ptr [eax+0C],10000
>0049D08A    jmp         0049D11B
 0049D08F    cmp         dword ptr [ebp-14],0
>0049D093    jge         0049D0A7
 0049D095    mov         eax,dword ptr [ebp-10]
 0049D098    mov         dword ptr [ebp-14],eax
 0049D09B    mov         eax,dword ptr [ebp-8]
 0049D09E    mov         dword ptr [eax+0C],2
>0049D0A5    jmp         0049D0B1
 0049D0A7    mov         eax,dword ptr [ebp-8]
 0049D0AA    mov         dword ptr [eax+0C],3
 0049D0B1    test        byte ptr [ebp-1E],80
>0049D0B5    je          0049D0BF
 0049D0B7    mov         eax,dword ptr [ebp-10]
 0049D0BA    mov         dword ptr [ebp-18],eax
>0049D0BD    jmp         0049D0CB
 0049D0BF    cmp         dword ptr [ebp-18],0
>0049D0C3    jl          0049D0CB
 0049D0C5    mov         eax,dword ptr [ebp-10]
 0049D0C8    mov         dword ptr [ebp-1C],eax
 0049D0CB    inc         dword ptr [ebp-10]
 0049D0CE    dec         dword ptr [ebp-24]
>0049D0D1    jne         0049D042
 0049D0D7    mov         eax,dword ptr [ebp-8]
 0049D0DA    cmp         dword ptr [eax+0C],2
>0049D0DE    jne         0049D0F4
 0049D0E0    mov         eax,dword ptr [ebp-8]
 0049D0E3    mov         eax,dword ptr [eax+0C]
 0049D0E6    shl         eax,10
 0049D0E9    or          eax,dword ptr [ebp-14]
 0049D0EC    mov         edx,dword ptr [ebp-8]
 0049D0EF    mov         dword ptr [edx+0C],eax
>0049D0F2    jmp         0049D11B
 0049D0F4    mov         eax,dword ptr [ebp-8]
 0049D0F7    cmp         dword ptr [eax+0C],3
>0049D0FB    jne         0049D11B
 0049D0FD    cmp         dword ptr [ebp-1C],0
>0049D101    jge         0049D109
 0049D103    mov         eax,dword ptr [ebp-14]
 0049D106    mov         dword ptr [ebp-1C],eax
 0049D109    mov         eax,dword ptr [ebp-8]
 0049D10C    mov         eax,dword ptr [eax+0C]
 0049D10F    shl         eax,10
 0049D112    or          eax,dword ptr [ebp-1C]
 0049D115    mov         edx,dword ptr [ebp-8]
 0049D118    mov         dword ptr [edx+0C],eax
 0049D11B    mov         esp,ebp
 0049D11D    pop         ebp
 0049D11E    ret
end;*}

//0049D120
{*function sub_0049D120(?:?; ?:?; ?:?; ?:?; ?:?; ?:?):?;
begin
 0049D120    push        ebp
 0049D121    mov         ebp,esp
 0049D123    add         esp,0FFFFFFE8
 0049D126    mov         dword ptr [ebp-0C],ecx
 0049D129    mov         dword ptr [ebp-8],edx
 0049D12C    mov         dword ptr [ebp-4],eax
 0049D12F    mov         eax,dword ptr [ebp-4]
 0049D132    call        0049C594
 0049D137    test        al,al
>0049D139    je          0049D1D8
 0049D13F    xor         eax,eax
 0049D141    mov         dword ptr [ebp-14],eax
 0049D144    mov         eax,dword ptr [ebp+8]
 0049D147    push        eax
 0049D148    mov         eax,dword ptr [ebp-0C]
 0049D14B    push        eax
 0049D14C    mov         eax,dword ptr [ebp-8]
 0049D14F    push        eax
 0049D150    call        user32.GetMenuState
 0049D155    mov         word ptr [ebp-16],ax
 0049D159    test        byte ptr [ebp-16],10
>0049D15D    je          0049D181
 0049D15F    mov         eax,dword ptr [ebp-0C]
 0049D162    push        eax
 0049D163    mov         eax,dword ptr [ebp-8]
 0049D166    push        eax
 0049D167    call        user32.GetSubMenu
 0049D16C    mov         dword ptr [ebp-8],eax
 0049D16F    mov         cl,1
 0049D171    mov         edx,dword ptr [ebp-8]
 0049D174    mov         eax,dword ptr [ebp-4]
 0049D177    call        0049C384
 0049D17C    mov         dword ptr [ebp-14],eax
>0049D17F    jmp         0049D1A7
 0049D181    mov         eax,dword ptr [ebp-0C]
 0049D184    push        eax
 0049D185    mov         eax,dword ptr [ebp-8]
 0049D188    push        eax
 0049D189    call        user32.GetMenuItemID
 0049D18E    mov         dword ptr [ebp-0C],eax
 0049D191    cmp         dword ptr [ebp-0C],0FFFFFFFF
>0049D195    je          0049D1A7
 0049D197    xor         ecx,ecx
 0049D199    mov         edx,dword ptr [ebp-0C]
 0049D19C    mov         eax,dword ptr [ebp-4]
 0049D19F    call        0049C384
 0049D1A4    mov         dword ptr [ebp-14],eax
 0049D1A7    cmp         dword ptr [ebp-14],0
>0049D1AB    je          0049D1D1
 0049D1AD    mov         eax,dword ptr [ebp+10]
 0049D1B0    mov         byte ptr [eax],0
 0049D1B3    mov         eax,dword ptr [ebp-14]
 0049D1B6    mov         edx,dword ptr [eax+30]
 0049D1B9    mov         ecx,dword ptr [ebp+0C]
 0049D1BC    mov         eax,dword ptr [ebp+10]
 0049D1BF    call        0040CF18
 0049D1C4    mov         eax,dword ptr [ebp+10]
 0049D1C7    call        StrLen
 0049D1CC    mov         dword ptr [ebp-10],eax
>0049D1CF    jmp         0049D1F4
 0049D1D1    xor         eax,eax
 0049D1D3    mov         dword ptr [ebp-10],eax
>0049D1D6    jmp         0049D1F4
 0049D1D8    mov         eax,dword ptr [ebp+8]
 0049D1DB    push        eax
 0049D1DC    mov         eax,dword ptr [ebp+0C]
 0049D1DF    push        eax
 0049D1E0    mov         eax,dword ptr [ebp+10]
 0049D1E3    push        eax
 0049D1E4    mov         eax,dword ptr [ebp-0C]
 0049D1E7    push        eax
 0049D1E8    mov         eax,dword ptr [ebp-8]
 0049D1EB    push        eax
 0049D1EC    call        user32.GetMenuStringA
 0049D1F1    mov         dword ptr [ebp-10],eax
 0049D1F4    mov         eax,dword ptr [ebp-10]
 0049D1F7    mov         esp,ebp
 0049D1F9    pop         ebp
 0049D1FA    ret         0C
end;*}

//0049D200
procedure TMainMenu.SetBiDiMode(Value:TBiDiMode);
begin
{*
 0049D200    push        ebp
 0049D201    mov         ebp,esp
 0049D203    add         esp,0FFFFFFF8
 0049D206    mov         byte ptr [ebp-5],dl
 0049D209    mov         dword ptr [ebp-4],eax
 0049D20C    mov         eax,dword ptr [ebp-4]
 0049D20F    mov         al,byte ptr [eax+30];TMainMenu.FBiDiMode:TBiDiMode
 0049D212    cmp         al,byte ptr [ebp-5]
>0049D215    je          0049D22F
 0049D217    mov         al,byte ptr [ebp-5]
 0049D21A    mov         edx,dword ptr [ebp-4]
 0049D21D    mov         byte ptr [edx+30],al;TMainMenu.FBiDiMode:TBiDiMode
 0049D220    mov         eax,dword ptr [ebp-4]
 0049D223    mov         byte ptr [eax+41],0;TMainMenu.FParentBiDiMode:Boolean
 0049D227    mov         eax,dword ptr [ebp-4]
 0049D22A    call        0049C8B4
 0049D22F    pop         ecx
 0049D230    pop         ecx
 0049D231    pop         ebp
 0049D232    ret
*}
end;

//0049D234
procedure TMainMenu.SetParentBiDiMode(Value:Boolean);
begin
{*
 0049D234    push        ebp
 0049D235    mov         ebp,esp
 0049D237    add         esp,0FFFFFFF8
 0049D23A    mov         byte ptr [ebp-5],dl
 0049D23D    mov         dword ptr [ebp-4],eax
 0049D240    mov         al,byte ptr [ebp-5]
 0049D243    mov         edx,dword ptr [ebp-4]
 0049D246    cmp         al,byte ptr [edx+41];TMainMenu.FParentBiDiMode:Boolean
>0049D249    je          0049D25C
 0049D24B    mov         al,byte ptr [ebp-5]
 0049D24E    mov         edx,dword ptr [ebp-4]
 0049D251    mov         byte ptr [edx+41],al;TMainMenu.FParentBiDiMode:Boolean
 0049D254    mov         eax,dword ptr [ebp-4]
 0049D257    call        0049D260
 0049D25C    pop         ecx
 0049D25D    pop         ecx
 0049D25E    pop         ebp
 0049D25F    ret
*}
end;

//0049D260
procedure sub_0049D260(?:TMenu);
begin
{*
 0049D260    push        ebp
 0049D261    mov         ebp,esp
 0049D263    add         esp,0FFFFFFF8
 0049D266    mov         dword ptr [ebp-4],eax
 0049D269    mov         eax,dword ptr [ebp-4]
 0049D26C    cmp         byte ptr [eax+41],0;TMenu.FParentBiDiMode:Boolean
>0049D270    je          0049D29B
 0049D272    mov         eax,dword ptr [ebp-4]
 0049D275    mov         eax,dword ptr [eax+38];TMenu.FWindowHandle:HWND
 0049D278    call        0047F79C
 0049D27D    mov         dword ptr [ebp-8],eax
 0049D280    cmp         dword ptr [ebp-8],0
>0049D284    je          0049D29B
 0049D286    mov         eax,dword ptr [ebp-8]
 0049D289    mov         dl,byte ptr [eax+5F]
 0049D28C    mov         eax,dword ptr [ebp-4]
 0049D28F    call        TMainMenu.SetBiDiMode
 0049D294    mov         eax,dword ptr [ebp-4]
 0049D297    mov         byte ptr [eax+41],1;TMenu.FParentBiDiMode:Boolean
 0049D29B    pop         ecx
 0049D29C    pop         ecx
 0049D29D    pop         ebp
 0049D29E    ret
*}
end;

//0049D2A0
procedure sub_0049D2A0(?:TPopupMenu; ?:TControl);
begin
{*
 0049D2A0    push        ebp
 0049D2A1    mov         ebp,esp
 0049D2A3    add         esp,0FFFFFFF8
 0049D2A6    mov         dword ptr [ebp-8],edx
 0049D2A9    mov         dword ptr [ebp-4],eax
 0049D2AC    mov         eax,dword ptr [ebp-4]
 0049D2AF    cmp         byte ptr [eax+41],0;TPopupMenu.FParentBiDiMode:Boolean
>0049D2B3    je          0049D2D5
 0049D2B5    mov         eax,dword ptr [ebp-8]
 0049D2B8    mov         edx,dword ptr ds:[47DF94];TControl
 0049D2BE    call        @AsClass
 0049D2C3    mov         dl,byte ptr [eax+5F];TControl.FBiDiMode:TBiDiMode
 0049D2C6    mov         eax,dword ptr [ebp-4]
 0049D2C9    call        TMainMenu.SetBiDiMode
 0049D2CE    mov         eax,dword ptr [ebp-4]
 0049D2D1    mov         byte ptr [eax+41],1;TPopupMenu.FParentBiDiMode:Boolean
 0049D2D5    pop         ecx
 0049D2D6    pop         ecx
 0049D2D7    pop         ebp
 0049D2D8    ret
*}
end;

//0049D2DC
{*function TMainMenu.GetAutoHotkeys:?;
begin
 0049D2DC    push        ebp
 0049D2DD    mov         ebp,esp
 0049D2DF    add         esp,0FFFFFFF8
 0049D2E2    mov         dword ptr [ebp-4],eax
 0049D2E5    mov         eax,dword ptr [ebp-4]
 0049D2E8    mov         eax,dword ptr [eax+34];TMainMenu.Items:TMenuItem
 0049D2EB    movzx       eax,byte ptr [eax+3B];TMenuItem.AutoHotkeys:TMenuItemAutoFlag
 0049D2EF    mov         al,byte ptr [eax+56C8D4]
 0049D2F5    mov         byte ptr [ebp-5],al
 0049D2F8    mov         al,byte ptr [ebp-5]
 0049D2FB    pop         ecx
 0049D2FC    pop         ecx
 0049D2FD    pop         ebp
 0049D2FE    ret
end;*}

//0049D300
procedure TMainMenu.SetAutoHotkeys(Value:TMenuAutoFlag);
begin
{*
 0049D300    push        ebp
 0049D301    mov         ebp,esp
 0049D303    add         esp,0FFFFFFF8
 0049D306    mov         byte ptr [ebp-5],dl
 0049D309    mov         dword ptr [ebp-4],eax
 0049D30C    xor         eax,eax
 0049D30E    mov         al,byte ptr [ebp-5]
 0049D311    mov         al,byte ptr [eax+56C8D0]
 0049D317    mov         edx,dword ptr [ebp-4]
 0049D31A    mov         edx,dword ptr [edx+34];TMainMenu.Items:TMenuItem
 0049D31D    mov         byte ptr [edx+3B],al;TMenuItem.AutoHotkeys:TMenuItemAutoFlag
 0049D320    pop         ecx
 0049D321    pop         ecx
 0049D322    pop         ebp
 0049D323    ret
*}
end;

//0049D324
{*function TMainMenu.GetAutoLineReduction:?;
begin
 0049D324    push        ebp
 0049D325    mov         ebp,esp
 0049D327    add         esp,0FFFFFFF8
 0049D32A    mov         dword ptr [ebp-4],eax
 0049D32D    mov         eax,dword ptr [ebp-4]
 0049D330    mov         eax,dword ptr [eax+34];TMainMenu.Items:TMenuItem
 0049D333    movzx       eax,byte ptr [eax+3C];TMenuItem.AutoLineReduction:TMenuItemAutoFlag
 0049D337    mov         al,byte ptr [eax+56C8D4]
 0049D33D    mov         byte ptr [ebp-5],al
 0049D340    mov         al,byte ptr [ebp-5]
 0049D343    pop         ecx
 0049D344    pop         ecx
 0049D345    pop         ebp
 0049D346    ret
end;*}

//0049D348
procedure TMainMenu.SetAutoLineReduction(Value:TMenuAutoFlag);
begin
{*
 0049D348    push        ebp
 0049D349    mov         ebp,esp
 0049D34B    add         esp,0FFFFFFF8
 0049D34E    mov         byte ptr [ebp-5],dl
 0049D351    mov         dword ptr [ebp-4],eax
 0049D354    xor         eax,eax
 0049D356    mov         al,byte ptr [ebp-5]
 0049D359    mov         al,byte ptr [eax+56C8D0]
 0049D35F    mov         edx,dword ptr [ebp-4]
 0049D362    mov         edx,dword ptr [edx+34];TMainMenu.Items:TMenuItem
 0049D365    mov         byte ptr [edx+3C],al;TMenuItem.AutoLineReduction:TMenuItemAutoFlag
 0049D368    pop         ecx
 0049D369    pop         ecx
 0049D36A    pop         ebp
 0049D36B    ret
*}
end;

//0049D36C
procedure TMainMenu.SetAutoMerge(Value:Boolean);
begin
{*
 0049D36C    push        ebp
 0049D36D    mov         ebp,esp
 0049D36F    add         esp,0FFFFFFF8
 0049D372    mov         byte ptr [ebp-5],dl
 0049D375    mov         dword ptr [ebp-4],eax
 0049D378    mov         eax,dword ptr [ebp-4]
 0049D37B    mov         al,byte ptr [eax+5C];TMainMenu.AutoMerge:Boolean
 0049D37E    cmp         al,byte ptr [ebp-5]
>0049D381    je          0049D3AA
 0049D383    mov         al,byte ptr [ebp-5]
 0049D386    mov         edx,dword ptr [ebp-4]
 0049D389    mov         byte ptr [edx+5C],al;TMainMenu.AutoMerge:Boolean
 0049D38C    mov         eax,dword ptr [ebp-4]
 0049D38F    cmp         dword ptr [eax+38],0;TMainMenu.FWindowHandle:HWND
>0049D393    je          0049D3AA
 0049D395    push        0
 0049D397    push        0
 0049D399    push        0B015
 0049D39E    mov         eax,dword ptr [ebp-4]
 0049D3A1    mov         eax,dword ptr [eax+38];TMainMenu.FWindowHandle:HWND
 0049D3A4    push        eax
 0049D3A5    call        user32.SendMessageA
 0049D3AA    pop         ecx
 0049D3AB    pop         ecx
 0049D3AC    pop         ebp
 0049D3AD    ret
*}
end;

//0049D3B0
{*procedure sub_0049D3B0(?:?; ?:?; ?:?);
begin
 0049D3B0    push        ebp
 0049D3B1    mov         ebp,esp
 0049D3B3    add         esp,0FFFFFFF0
 0049D3B6    mov         dword ptr [ebp-0C],ecx
 0049D3B9    mov         dword ptr [ebp-8],edx
 0049D3BC    mov         dword ptr [ebp-4],eax
 0049D3BF    mov         eax,dword ptr [ebp-4]
 0049D3C2    cmp         dword ptr [eax+38],0;TMainMenu.FWindowHandle:HWND
>0049D3C6    je          0049D400
 0049D3C8    mov         eax,dword ptr [ebp-4]
 0049D3CB    call        0049CA64
 0049D3D0    mov         byte ptr [ebp-0D],al
 0049D3D3    cmp         dword ptr [ebp-0C],0
>0049D3D7    jne         0049D3EE
 0049D3D9    push        0
 0049D3DB    push        0
 0049D3DD    push        0B015
 0049D3E2    mov         eax,dword ptr [ebp-4]
 0049D3E5    mov         eax,dword ptr [eax+38];TMainMenu.FWindowHandle:HWND
 0049D3E8    push        eax
 0049D3E9    call        user32.SendMessageA
 0049D3EE    cmp         byte ptr [ebp-0D],0
>0049D3F2    je          0049D400
 0049D3F4    mov         eax,dword ptr [ebp-4]
 0049D3F7    mov         eax,dword ptr [eax+38];TMainMenu.FWindowHandle:HWND
 0049D3FA    push        eax
 0049D3FB    call        user32.DrawMenuBar
 0049D400    mov         al,byte ptr [ebp+8]
 0049D403    push        eax
 0049D404    mov         ecx,dword ptr [ebp-0C]
 0049D407    mov         edx,dword ptr [ebp-8]
 0049D40A    mov         eax,dword ptr [ebp-4]
 0049D40D    call        0049CC44
 0049D412    mov         esp,ebp
 0049D414    pop         ebp
 0049D415    ret         4
end;*}

//0049D418
{*procedure sub_0049D418(?:?; ?:?);
begin
 0049D418    push        ebp
 0049D419    mov         ebp,esp
 0049D41B    add         esp,0FFFFFFF8
 0049D41E    mov         dword ptr [ebp-8],edx
 0049D421    mov         dword ptr [ebp-4],eax
 0049D424    cmp         dword ptr [ebp-8],0
>0049D428    je          0049D43D
 0049D42A    mov         eax,dword ptr [ebp-8]
 0049D42D    mov         edx,dword ptr [eax+34]
 0049D430    mov         eax,dword ptr [ebp-4]
 0049D433    mov         eax,dword ptr [eax+34]
 0049D436    call        00498918
>0049D43B    jmp         0049D44A
 0049D43D    xor         edx,edx
 0049D43F    mov         eax,dword ptr [ebp-4]
 0049D442    mov         eax,dword ptr [eax+34]
 0049D445    call        00498918
 0049D44A    pop         ecx
 0049D44B    pop         ecx
 0049D44C    pop         ebp
 0049D44D    ret
end;*}

//0049D450
{*procedure sub_0049D450(?:?; ?:?);
begin
 0049D450    push        ebp
 0049D451    mov         ebp,esp
 0049D453    add         esp,0FFFFFFF8
 0049D456    mov         dword ptr [ebp-8],edx
 0049D459    mov         dword ptr [ebp-4],eax
 0049D45C    cmp         dword ptr [ebp-8],0
>0049D460    je          0049D480
 0049D462    mov         eax,dword ptr [ebp-4]
 0049D465    mov         eax,dword ptr [eax+34]
 0049D468    mov         eax,dword ptr [eax+68]
 0049D46B    mov         edx,dword ptr [ebp-8]
 0049D46E    cmp         eax,dword ptr [edx+34]
>0049D471    jne         0049D480
 0049D473    xor         edx,edx
 0049D475    mov         eax,dword ptr [ebp-4]
 0049D478    mov         eax,dword ptr [eax+34]
 0049D47B    call        00498918
 0049D480    pop         ecx
 0049D481    pop         ecx
 0049D482    pop         ebp
 0049D483    ret
end;*}

//0049D484
{*procedure sub_0049D484(?:?);
begin
 0049D484    push        ebp
 0049D485    mov         ebp,esp
 0049D487    push        ecx
 0049D488    push        ebx
 0049D489    mov         dword ptr [ebp-4],eax
 0049D48C    push        0
 0049D48E    xor         ecx,ecx
 0049D490    xor         edx,edx
 0049D492    mov         eax,dword ptr [ebp-4]
 0049D495    mov         ebx,dword ptr [eax]
 0049D497    call        dword ptr [ebx+38]
 0049D49A    mov         eax,dword ptr [ebp-4]
 0049D49D    cmp         dword ptr [eax+38],0
>0049D4A1    je          0049D4B8
 0049D4A3    push        0
 0049D4A5    push        0
 0049D4A7    push        0B015
 0049D4AC    mov         eax,dword ptr [ebp-4]
 0049D4AF    mov         eax,dword ptr [eax+38]
 0049D4B2    push        eax
 0049D4B3    call        user32.SendMessageA
 0049D4B8    pop         ebx
 0049D4B9    pop         ecx
 0049D4BA    pop         ebp
 0049D4BB    ret
end;*}

//0049D4BC
{*function sub_0049D4BC:?;
begin
 0049D4BC    push        ebp
 0049D4BD    mov         ebp,esp
 0049D4BF    add         esp,0FFFFFFF8
 0049D4C2    mov         dword ptr [ebp-4],eax
 0049D4C5    mov         eax,dword ptr [ebp-4]
 0049D4C8    cmp         dword ptr [eax+58],0;TMainMenu.FOle2Menu:HMENU
>0049D4CC    je          0049D4D9
 0049D4CE    mov         eax,dword ptr [ebp-4]
 0049D4D1    mov         eax,dword ptr [eax+58];TMainMenu.FOle2Menu:HMENU
 0049D4D4    mov         dword ptr [ebp-8],eax
>0049D4D7    jmp         0049D4E4
 0049D4D9    mov         eax,dword ptr [ebp-4]
 0049D4DC    call        0049C22C
 0049D4E1    mov         dword ptr [ebp-8],eax
 0049D4E4    mov         eax,dword ptr [ebp-8]
 0049D4E7    pop         ecx
 0049D4E8    pop         ecx
 0049D4E9    pop         ebp
 0049D4EA    ret
end;*}

//0049D540
{*procedure sub_0049D540(?:?);
begin
 0049D540    push        ebp
 0049D541    mov         ebp,esp
 0049D543    add         esp,0FFFFFFC0
 0049D546    push        ebx
 0049D547    xor         ecx,ecx
 0049D549    mov         dword ptr [ebp-40],ecx
 0049D54C    mov         dword ptr [ebp-8],edx
 0049D54F    mov         dword ptr [ebp-4],eax
 0049D552    xor         eax,eax
 0049D554    push        ebp
 0049D555    push        49DB27
 0049D55A    push        dword ptr fs:[eax]
 0049D55D    mov         dword ptr fs:[eax],esp
 0049D560    mov         eax,dword ptr [ebp-8]
 0049D563    mov         eax,dword ptr [eax]
 0049D565    cmp         eax,111
>0049D56A    jg          0049D58C
>0049D56C    je          0049D5A8
 0049D56E    sub         eax,2B
>0049D571    je          0049D823
 0049D577    dec         eax
>0049D578    je          0049D93E
 0049D57E    sub         eax,27
>0049D581    je          0049D6F9
>0049D587    jmp         0049DAEB
 0049D58C    sub         eax,117
>0049D591    je          0049D5EE
 0049D593    sub         eax,8
>0049D596    je          0049D633
 0049D59C    dec         eax
>0049D59D    je          0049DA8E
>0049D5A3    jmp         0049DAEB
 0049D5A8    mov         eax,dword ptr [ebp-4]
 0049D5AB    mov         eax,dword ptr [eax+8];TPopupList.FCount:Integer
 0049D5AE    dec         eax
 0049D5AF    test        eax,eax
>0049D5B1    jl          0049DAEB
 0049D5B7    inc         eax
 0049D5B8    mov         dword ptr [ebp-2C],eax
 0049D5BB    mov         dword ptr [ebp-0C],0
 0049D5C2    mov         edx,dword ptr [ebp-0C]
 0049D5C5    mov         eax,dword ptr [ebp-4]
 0049D5C8    call        TList.Get
 0049D5CD    mov         edx,dword ptr [ebp-8]
 0049D5D0    mov         dx,word ptr [edx+4]
 0049D5D4    call        0049C458
 0049D5D9    test        al,al
>0049D5DB    jne         0049DB11
 0049D5E1    inc         dword ptr [ebp-0C]
 0049D5E4    dec         dword ptr [ebp-2C]
>0049D5E7    jne         0049D5C2
>0049D5E9    jmp         0049DAEB
 0049D5EE    mov         eax,dword ptr [ebp-4]
 0049D5F1    mov         eax,dword ptr [eax+8];TPopupList.FCount:Integer
 0049D5F4    dec         eax
 0049D5F5    test        eax,eax
>0049D5F7    jl          0049DAEB
 0049D5FD    inc         eax
 0049D5FE    mov         dword ptr [ebp-2C],eax
 0049D601    mov         dword ptr [ebp-0C],0
 0049D608    mov         edx,dword ptr [ebp-0C]
 0049D60B    mov         eax,dword ptr [ebp-4]
 0049D60E    call        TList.Get
 0049D613    mov         edx,dword ptr [ebp-8]
 0049D616    mov         edx,dword ptr [edx+4]
 0049D619    call        0049C494
 0049D61E    test        al,al
>0049D620    jne         0049DB11
 0049D626    inc         dword ptr [ebp-0C]
 0049D629    dec         dword ptr [ebp-2C]
>0049D62C    jne         0049D608
>0049D62E    jmp         0049DAEB
 0049D633    mov         byte ptr [ebp-15],0
 0049D637    mov         eax,dword ptr [ebp-8]
 0049D63A    test        byte ptr [eax+6],10
>0049D63E    je          0049D644
 0049D640    mov         byte ptr [ebp-15],1
 0049D644    mov         eax,dword ptr [ebp-4]
 0049D647    mov         eax,dword ptr [eax+8];TPopupList.FCount:Integer
 0049D64A    dec         eax
 0049D64B    test        eax,eax
>0049D64D    jl          0049D6E6
 0049D653    inc         eax
 0049D654    mov         dword ptr [ebp-2C],eax
 0049D657    mov         dword ptr [ebp-0C],0
 0049D65E    cmp         byte ptr [ebp-15],1
>0049D662    jne         0049D68F
 0049D664    mov         eax,dword ptr [ebp-8]
 0049D667    cmp         dword ptr [eax+8],0
>0049D66B    je          0049D686
 0049D66D    mov         eax,dword ptr [ebp-8]
 0049D670    movzx       eax,word ptr [eax+4]
 0049D674    push        eax
 0049D675    mov         eax,dword ptr [ebp-8]
 0049D678    mov         eax,dword ptr [eax+8]
 0049D67B    push        eax
 0049D67C    call        user32.GetSubMenu
 0049D681    mov         dword ptr [ebp-10],eax
>0049D684    jmp         0049D699
 0049D686    mov         dword ptr [ebp-10],0FFFFFFFF
>0049D68D    jmp         0049D699
 0049D68F    mov         eax,dword ptr [ebp-8]
 0049D692    movzx       eax,word ptr [eax+4]
 0049D696    mov         dword ptr [ebp-10],eax
 0049D699    mov         edx,dword ptr [ebp-0C]
 0049D69C    mov         eax,dword ptr [ebp-4]
 0049D69F    call        TList.Get
 0049D6A4    mov         cl,byte ptr [ebp-15]
 0049D6A7    mov         edx,dword ptr [ebp-10]
 0049D6AA    call        0049C384
 0049D6AF    mov         dword ptr [ebp-14],eax
 0049D6B2    cmp         dword ptr [ebp-14],0
>0049D6B6    je          0049D6DA
 0049D6B8    lea         edx,[ebp-40]
 0049D6BB    mov         eax,dword ptr [ebp-14]
 0049D6BE    mov         eax,dword ptr [eax+58]
 0049D6C1    call        0047FA98
 0049D6C6    mov         edx,dword ptr [ebp-40]
 0049D6C9    mov         eax,[0056E3C0];^Application:TApplication
 0049D6CE    mov         eax,dword ptr [eax]
 0049D6D0    call        004AC264
>0049D6D5    jmp         0049DB11
 0049D6DA    inc         dword ptr [ebp-0C]
 0049D6DD    dec         dword ptr [ebp-2C]
>0049D6E0    jne         0049D65E
 0049D6E6    mov         eax,[0056E3C0];^Application:TApplication
 0049D6EB    mov         eax,dword ptr [eax]
 0049D6ED    xor         edx,edx
 0049D6EF    call        004AC264
>0049D6F4    jmp         0049DAEB
 0049D6F9    mov         eax,dword ptr [ebp-8]
 0049D6FC    mov         eax,dword ptr [eax+8]
 0049D6FF    mov         dword ptr [ebp-30],eax
 0049D702    mov         eax,dword ptr [ebp-4]
 0049D705    mov         eax,dword ptr [eax+8];TPopupList.FCount:Integer
 0049D708    dec         eax
 0049D709    test        eax,eax
>0049D70B    jl          0049DAEB
 0049D711    inc         eax
 0049D712    mov         dword ptr [ebp-2C],eax
 0049D715    mov         dword ptr [ebp-0C],0
 0049D71C    mov         edx,dword ptr [ebp-0C]
 0049D71F    mov         eax,dword ptr [ebp-4]
 0049D722    call        TList.Get
 0049D727    mov         edx,dword ptr [eax]
 0049D729    call        dword ptr [edx+34]
 0049D72C    mov         edx,dword ptr [ebp-30]
 0049D72F    cmp         eax,dword ptr [edx+0C]
>0049D732    jne         0049D747
 0049D734    mov         edx,dword ptr [ebp-0C]
 0049D737    mov         eax,dword ptr [ebp-4]
 0049D73A    call        TList.Get
 0049D73F    mov         eax,dword ptr [eax+34]
 0049D742    mov         dword ptr [ebp-14],eax
>0049D745    jmp         0049D762
 0049D747    mov         edx,dword ptr [ebp-0C]
 0049D74A    mov         eax,dword ptr [ebp-4]
 0049D74D    call        TList.Get
 0049D752    mov         edx,dword ptr [ebp-30]
 0049D755    mov         edx,dword ptr [edx+0C]
 0049D758    mov         cl,1
 0049D75A    call        0049C384
 0049D75F    mov         dword ptr [ebp-14],eax
 0049D762    cmp         dword ptr [ebp-14],0
>0049D766    je          0049D812
 0049D76C    mov         edx,dword ptr [ebp-0C]
 0049D76F    mov         eax,dword ptr [ebp-4]
 0049D772    call        TList.Get
 0049D777    mov         edx,dword ptr [ebp-30]
 0049D77A    mov         edx,dword ptr [edx+8]
 0049D77D    mov         cl,1
 0049D77F    call        0049C3C0
 0049D784    mov         dword ptr [ebp-1C],eax
 0049D787    cmp         dword ptr [ebp-1C],0
>0049D78B    jne         0049D7A8
 0049D78D    mov         edx,dword ptr [ebp-0C]
 0049D790    mov         eax,dword ptr [ebp-4]
 0049D793    call        TList.Get
 0049D798    mov         edx,dword ptr [ebp-30]
 0049D79B    mov         edx,dword ptr [edx+0C]
 0049D79E    xor         ecx,ecx
 0049D7A0    call        0049C3C0
 0049D7A5    mov         dword ptr [ebp-1C],eax
 0049D7A8    mov         eax,[0056E604];^Screen:TScreen
 0049D7AD    mov         eax,dword ptr [eax]
 0049D7AF    cmp         dword ptr [eax+6C],0;TScreen.FActiveForm:TForm
>0049D7B3    je          0049DB11
 0049D7B9    cmp         dword ptr [ebp-1C],0
>0049D7BD    jne         0049D7D2
 0049D7BF    mov         eax,[0056E604];^Screen:TScreen
 0049D7C4    mov         eax,dword ptr [eax]
 0049D7C6    mov         eax,dword ptr [eax+6C];TScreen.FActiveForm:TForm
 0049D7C9    mov         eax,dword ptr [eax+158];TForm.HelpContext:THelpContext
 0049D7CF    mov         dword ptr [ebp-1C],eax
 0049D7D2    mov         eax,[0056E604];^Screen:TScreen
 0049D7D7    mov         eax,dword ptr [eax]
 0049D7D9    mov         eax,dword ptr [eax+6C];TScreen.FActiveForm:TForm
 0049D7DC    test        byte ptr [eax+228],8;TForm.FBorderIcons:TBorderIcons
>0049D7E3    je          0049D7FE
 0049D7E5    mov         eax,[0056E3C0];^Application:TApplication
 0049D7EA    mov         eax,dword ptr [eax]
 0049D7EC    mov         ecx,dword ptr [ebp-1C]
 0049D7EF    mov         edx,8
 0049D7F4    call        004ABEA8
>0049D7F9    jmp         0049DB11
 0049D7FE    mov         eax,[0056E3C0];^Application:TApplication
 0049D803    mov         eax,dword ptr [eax]
 0049D805    mov         edx,dword ptr [ebp-1C]
 0049D808    call        004ABE14
>0049D80D    jmp         0049DB11
 0049D812    inc         dword ptr [ebp-0C]
 0049D815    dec         dword ptr [ebp-2C]
>0049D818    jne         0049D71C
>0049D81E    jmp         0049DAEB
 0049D823    mov         eax,dword ptr [ebp-8]
 0049D826    mov         eax,dword ptr [eax+8]
 0049D829    mov         dword ptr [ebp-34],eax
 0049D82C    mov         eax,dword ptr [ebp-4]
 0049D82F    mov         eax,dword ptr [eax+8];TPopupList.FCount:Integer
 0049D832    dec         eax
 0049D833    test        eax,eax
>0049D835    jl          0049DAEB
 0049D83B    inc         eax
 0049D83C    mov         dword ptr [ebp-2C],eax
 0049D83F    mov         dword ptr [ebp-0C],0
 0049D846    mov         edx,dword ptr [ebp-0C]
 0049D849    mov         eax,dword ptr [ebp-4]
 0049D84C    call        TList.Get
 0049D851    mov         edx,dword ptr [ebp-34]
 0049D854    mov         edx,dword ptr [edx+8]
 0049D857    xor         ecx,ecx
 0049D859    call        0049C384
 0049D85E    mov         dword ptr [ebp-14],eax
 0049D861    cmp         dword ptr [ebp-14],0
>0049D865    je          0049D92D
 0049D86B    mov         dl,1
 0049D86D    mov         eax,[0047D3C4];TControlCanvas
 0049D872    call        TCanvas.Create;TControlCanvas.Create
 0049D877    mov         dword ptr [ebp-20],eax
 0049D87A    xor         eax,eax
 0049D87C    push        ebp
 0049D87D    push        49D926
 0049D882    push        dword ptr fs:[eax]
 0049D885    mov         dword ptr fs:[eax],esp
 0049D888    mov         eax,dword ptr [ebp-34]
 0049D88B    mov         eax,dword ptr [eax+18]
 0049D88E    push        eax
 0049D88F    call        gdi32.SaveDC
 0049D894    mov         dword ptr [ebp-24],eax
 0049D897    xor         eax,eax
 0049D899    push        ebp
 0049D89A    push        49D909
 0049D89F    push        dword ptr fs:[eax]
 0049D8A2    mov         dword ptr fs:[eax],esp
 0049D8A5    mov         eax,dword ptr [ebp-34]
 0049D8A8    mov         edx,dword ptr [eax+18]
 0049D8AB    mov         eax,dword ptr [ebp-20]
 0049D8AE    call        TCanvas.SetHandle
 0049D8B3    mov         eax,[0056E604];^Screen:TScreen
 0049D8B8    mov         eax,dword ptr [eax]
 0049D8BA    mov         edx,dword ptr [eax+88];TScreen.FMenuFont:TFont
 0049D8C0    mov         eax,dword ptr [ebp-20]
 0049D8C3    call        TCanvas.SetFont
 0049D8C8    mov         eax,dword ptr [ebp-34]
 0049D8CB    mov         ax,word ptr [eax+10]
 0049D8CF    push        eax
 0049D8D0    mov         eax,dword ptr [ebp-34]
 0049D8D3    lea         ecx,[eax+1C]
 0049D8D6    mov         edx,dword ptr [ebp-20]
 0049D8D9    mov         eax,dword ptr [ebp-14]
 0049D8DC    call        0049DEE0
 0049D8E1    xor         eax,eax
 0049D8E3    pop         edx
 0049D8E4    pop         ecx
 0049D8E5    pop         ecx
 0049D8E6    mov         dword ptr fs:[eax],edx
 0049D8E9    push        49D910
 0049D8EE    xor         edx,edx
 0049D8F0    mov         eax,dword ptr [ebp-20]
 0049D8F3    call        TCanvas.SetHandle
 0049D8F8    mov         eax,dword ptr [ebp-24]
 0049D8FB    push        eax
 0049D8FC    mov         eax,dword ptr [ebp-34]
 0049D8FF    mov         eax,dword ptr [eax+18]
 0049D902    push        eax
 0049D903    call        gdi32.RestoreDC
 0049D908    ret
>0049D909    jmp         @HandleFinally
>0049D90E    jmp         0049D8EE
 0049D910    xor         eax,eax
 0049D912    pop         edx
 0049D913    pop         ecx
 0049D914    pop         ecx
 0049D915    mov         dword ptr fs:[eax],edx
 0049D918    push        49DB11
 0049D91D    mov         eax,dword ptr [ebp-20]
 0049D920    call        TObject.Free
 0049D925    ret
>0049D926    jmp         @HandleFinally
>0049D92B    jmp         0049D91D
 0049D92D    inc         dword ptr [ebp-0C]
 0049D930    dec         dword ptr [ebp-2C]
>0049D933    jne         0049D846
>0049D939    jmp         0049DAEB
 0049D93E    mov         eax,dword ptr [ebp-8]
 0049D941    mov         eax,dword ptr [eax+8]
 0049D944    mov         dword ptr [ebp-38],eax
 0049D947    mov         eax,dword ptr [ebp-4]
 0049D94A    mov         eax,dword ptr [eax+8];TPopupList.FCount:Integer
 0049D94D    dec         eax
 0049D94E    test        eax,eax
>0049D950    jl          0049DAEB
 0049D956    inc         eax
 0049D957    mov         dword ptr [ebp-2C],eax
 0049D95A    mov         dword ptr [ebp-0C],0
 0049D961    mov         edx,dword ptr [ebp-0C]
 0049D964    mov         eax,dword ptr [ebp-4]
 0049D967    call        TList.Get
 0049D96C    mov         edx,dword ptr [ebp-38]
 0049D96F    mov         edx,dword ptr [edx+8]
 0049D972    xor         ecx,ecx
 0049D974    call        0049C384
 0049D979    mov         dword ptr [ebp-14],eax
 0049D97C    cmp         dword ptr [ebp-14],0
>0049D980    je          0049DA80
 0049D986    mov         eax,dword ptr [ebp-4]
 0049D989    mov         eax,dword ptr [eax+10];TPopupList......FWindow:HWND
 0049D98C    push        eax
 0049D98D    call        user32.GetWindowDC
 0049D992    mov         dword ptr [ebp-28],eax
 0049D995    xor         eax,eax
 0049D997    push        ebp
 0049D998    push        49DA79
 0049D99D    push        dword ptr fs:[eax]
 0049D9A0    mov         dword ptr fs:[eax],esp
 0049D9A3    mov         dl,1
 0049D9A5    mov         eax,[0047D3C4];TControlCanvas
 0049D9AA    call        TCanvas.Create;TControlCanvas.Create
 0049D9AF    mov         dword ptr [ebp-20],eax
 0049D9B2    xor         eax,eax
 0049D9B4    push        ebp
 0049D9B5    push        49DA54
 0049D9BA    push        dword ptr fs:[eax]
 0049D9BD    mov         dword ptr fs:[eax],esp
 0049D9C0    mov         eax,dword ptr [ebp-28]
 0049D9C3    push        eax
 0049D9C4    call        gdi32.SaveDC
 0049D9C9    mov         dword ptr [ebp-24],eax
 0049D9CC    xor         eax,eax
 0049D9CE    push        ebp
 0049D9CF    push        49DA37
 0049D9D4    push        dword ptr fs:[eax]
 0049D9D7    mov         dword ptr fs:[eax],esp
 0049D9DA    mov         edx,dword ptr [ebp-28]
 0049D9DD    mov         eax,dword ptr [ebp-20]
 0049D9E0    call        TCanvas.SetHandle
 0049D9E5    mov         eax,[0056E604];^Screen:TScreen
 0049D9EA    mov         eax,dword ptr [eax]
 0049D9EC    mov         edx,dword ptr [eax+88];TScreen.FMenuFont:TFont
 0049D9F2    mov         eax,dword ptr [ebp-20]
 0049D9F5    call        TCanvas.SetFont
 0049D9FA    mov         eax,dword ptr [ebp-38]
 0049D9FD    add         eax,10
 0049DA00    push        eax
 0049DA01    mov         eax,dword ptr [ebp-38]
 0049DA04    lea         ecx,[eax+0C]
 0049DA07    mov         edx,dword ptr [ebp-20]
 0049DA0A    mov         eax,dword ptr [ebp-14]
 0049DA0D    mov         ebx,dword ptr [eax]
 0049DA0F    call        dword ptr [ebx+38]
 0049DA12    xor         eax,eax
 0049DA14    pop         edx
 0049DA15    pop         ecx
 0049DA16    pop         ecx
 0049DA17    mov         dword ptr fs:[eax],edx
 0049DA1A    push        49DA3E
 0049DA1F    xor         edx,edx
 0049DA21    mov         eax,dword ptr [ebp-20]
 0049DA24    call        TCanvas.SetHandle
 0049DA29    mov         eax,dword ptr [ebp-24]
 0049DA2C    push        eax
 0049DA2D    mov         eax,dword ptr [ebp-28]
 0049DA30    push        eax
 0049DA31    call        gdi32.RestoreDC
 0049DA36    ret
>0049DA37    jmp         @HandleFinally
>0049DA3C    jmp         0049DA1F
 0049DA3E    xor         eax,eax
 0049DA40    pop         edx
 0049DA41    pop         ecx
 0049DA42    pop         ecx
 0049DA43    mov         dword ptr fs:[eax],edx
 0049DA46    push        49DA5B
 0049DA4B    mov         eax,dword ptr [ebp-20]
 0049DA4E    call        TObject.Free
 0049DA53    ret
>0049DA54    jmp         @HandleFinally
>0049DA59    jmp         0049DA4B
 0049DA5B    xor         eax,eax
 0049DA5D    pop         edx
 0049DA5E    pop         ecx
 0049DA5F    pop         ecx
 0049DA60    mov         dword ptr fs:[eax],edx
 0049DA63    push        49DB11
 0049DA68    mov         eax,dword ptr [ebp-28]
 0049DA6B    push        eax
 0049DA6C    mov         eax,dword ptr [ebp-4]
 0049DA6F    mov         eax,dword ptr [eax+10];TPopupList.......FWindow:HWND
 0049DA72    push        eax
 0049DA73    call        user32.ReleaseDC
 0049DA78    ret
>0049DA79    jmp         @HandleFinally
>0049DA7E    jmp         0049DA68
 0049DA80    inc         dword ptr [ebp-0C]
 0049DA83    dec         dword ptr [ebp-2C]
>0049DA86    jne         0049D961
>0049DA8C    jmp         0049DAEB
 0049DA8E    mov         eax,dword ptr [ebp-4]
 0049DA91    mov         eax,dword ptr [eax+8];TPopupList.FCount:Integer
 0049DA94    dec         eax
 0049DA95    test        eax,eax
>0049DA97    jl          0049DAEB
 0049DA99    inc         eax
 0049DA9A    mov         dword ptr [ebp-2C],eax
 0049DA9D    mov         dword ptr [ebp-0C],0
 0049DAA4    mov         edx,dword ptr [ebp-0C]
 0049DAA7    mov         eax,dword ptr [ebp-4]
 0049DAAA    call        TList.Get
 0049DAAF    mov         dword ptr [ebp-3C],eax
 0049DAB2    mov         eax,dword ptr [ebp-3C]
 0049DAB5    mov         edx,dword ptr [eax]
 0049DAB7    call        dword ptr [edx+34]
 0049DABA    mov         edx,dword ptr [ebp-8]
 0049DABD    cmp         eax,dword ptr [edx+8]
>0049DAC0    je          0049DAD6
 0049DAC2    mov         edx,dword ptr [ebp-8]
 0049DAC5    mov         edx,dword ptr [edx+8]
 0049DAC8    mov         cl,1
 0049DACA    mov         eax,dword ptr [ebp-3C]
 0049DACD    call        0049C384
 0049DAD2    test        eax,eax
>0049DAD4    je          0049DAE3
 0049DAD6    mov         edx,dword ptr [ebp-8]
 0049DAD9    mov         eax,dword ptr [ebp-3C]
 0049DADC    call        0049CF28
>0049DAE1    jmp         0049DB11
 0049DAE3    inc         dword ptr [ebp-0C]
 0049DAE6    dec         dword ptr [ebp-2C]
>0049DAE9    jne         0049DAA4
 0049DAEB    mov         eax,dword ptr [ebp-8]
 0049DAEE    mov         eax,dword ptr [eax+8]
 0049DAF1    push        eax
 0049DAF2    mov         eax,dword ptr [ebp-8]
 0049DAF5    mov         eax,dword ptr [eax+4]
 0049DAF8    push        eax
 0049DAF9    mov         eax,dword ptr [ebp-8]
 0049DAFC    mov         eax,dword ptr [eax]
 0049DAFE    push        eax
 0049DAFF    mov         eax,dword ptr [ebp-4]
 0049DB02    mov         eax,dword ptr [eax+10];TPopupList........FWindow:HWND
 0049DB05    push        eax
 0049DB06    call        user32.DefWindowProcA
 0049DB0B    mov         edx,dword ptr [ebp-8]
 0049DB0E    mov         dword ptr [edx+0C],eax
 0049DB11    xor         eax,eax
 0049DB13    pop         edx
 0049DB14    pop         ecx
 0049DB15    pop         ecx
 0049DB16    mov         dword ptr fs:[eax],edx
 0049DB19    push        49DB2E
 0049DB1E    lea         eax,[ebp-40]
 0049DB21    call        @LStrClr
 0049DB26    ret
>0049DB27    jmp         @HandleFinally
>0049DB2C    jmp         0049DB1E
 0049DB2E    pop         ebx
 0049DB2F    mov         esp,ebp
 0049DB31    pop         ebp
 0049DB32    ret
end;*}

//0049DB34
procedure sub_0049DB34(?:TPopupList; ?:TPopupMenu);
begin
{*
 0049DB34    push        ebp
 0049DB35    mov         ebp,esp
 0049DB37    add         esp,0FFFFFFF8
 0049DB3A    mov         dword ptr [ebp-8],edx
 0049DB3D    mov         dword ptr [ebp-4],eax
 0049DB40    mov         eax,dword ptr [ebp-4]
 0049DB43    cmp         dword ptr [eax+8],0
>0049DB47    jne         0049DB5D
 0049DB49    mov         eax,dword ptr [ebp-4]
 0049DB4C    push        eax
 0049DB4D    push        49D4EC
 0049DB52    call        0042BAC0
 0049DB57    mov         edx,dword ptr [ebp-4]
 0049DB5A    mov         dword ptr [edx+10],eax
 0049DB5D    mov         edx,dword ptr [ebp-8]
 0049DB60    mov         eax,dword ptr [ebp-4]
 0049DB63    call        TList.Add
 0049DB68    pop         ecx
 0049DB69    pop         ecx
 0049DB6A    pop         ebp
 0049DB6B    ret
*}
end;

//0049DB6C
{*procedure sub_0049DB6C(?:TPopupList; ?:?);
begin
 0049DB6C    push        ebp
 0049DB6D    mov         ebp,esp
 0049DB6F    add         esp,0FFFFFFF8
 0049DB72    mov         dword ptr [ebp-8],edx
 0049DB75    mov         dword ptr [ebp-4],eax
 0049DB78    mov         edx,dword ptr [ebp-8]
 0049DB7B    mov         eax,dword ptr [ebp-4]
 0049DB7E    call        004204F0
 0049DB83    mov         eax,dword ptr [ebp-4]
 0049DB86    cmp         dword ptr [eax+8],0
>0049DB8A    jne         0049DB97
 0049DB8C    mov         eax,dword ptr [ebp-4]
 0049DB8F    mov         eax,dword ptr [eax+10]
 0049DB92    call        0042BB7C
 0049DB97    pop         ecx
 0049DB98    pop         ecx
 0049DB99    pop         ebp
 0049DB9A    ret
end;*}

//0049DB9C
constructor TPopupMenu.Create;
begin
{*
 0049DB9C    push        ebp
 0049DB9D    mov         ebp,esp
 0049DB9F    add         esp,0FFFFFFF4
 0049DBA2    test        dl,dl
>0049DBA4    je          0049DBAE
 0049DBA6    add         esp,0FFFFFFF0
 0049DBA9    call        @ClassCreate
 0049DBAE    mov         dword ptr [ebp-0C],ecx
 0049DBB1    mov         byte ptr [ebp-5],dl
 0049DBB4    mov         dword ptr [ebp-4],eax
 0049DBB7    mov         ecx,dword ptr [ebp-0C]
 0049DBBA    xor         edx,edx
 0049DBBC    mov         eax,dword ptr [ebp-4]
 0049DBBF    call        0049C0EC
 0049DBC4    mov         eax,dword ptr [ebp-4]
 0049DBC7    mov         dword ptr [eax+58],0FFFFFFFF;TPopupMenu.FPopupPoint:TPoint
 0049DBCE    mov         eax,dword ptr [ebp-4]
 0049DBD1    mov         dword ptr [eax+5C],0FFFFFFFF
 0049DBD8    mov         eax,dword ptr [ebp-4]
 0049DBDB    mov         eax,dword ptr [eax+34];TPopupMenu.Items:TMenuItem
 0049DBDE    mov         edx,dword ptr [ebp-4]
 0049DBE1    mov         dword ptr [eax+8C],edx;TMenuItem.?f8C:TPopupMenu
 0049DBE7    mov         edx,dword ptr [edx]
 0049DBE9    mov         edx,dword ptr [edx+3C];TPopupMenu.FMenuImage:String
 0049DBEC    mov         dword ptr [eax+88],edx;TMenuItem.OnClick:TNotifyEvent
 0049DBF2    mov         eax,[0056E3C0];^Application:TApplication
 0049DBF7    mov         eax,dword ptr [eax]
 0049DBF9    mov         eax,dword ptr [eax+30];TApplication.FHandle:HWND
 0049DBFC    mov         edx,dword ptr [ebp-4]
 0049DBFF    mov         dword ptr [edx+38],eax;TPopupMenu.FWindowHandle:HWND
 0049DC02    mov         eax,dword ptr [ebp-4]
 0049DC05    mov         byte ptr [eax+61],1;TPopupMenu.AutoPopup:Boolean
 0049DC09    mov         edx,dword ptr [ebp-4]
 0049DC0C    mov         eax,[00571E2C];0x0 PopupList:TPopupList
 0049DC11    call        0049DB34
 0049DC16    mov         eax,dword ptr [ebp-4]
 0049DC19    cmp         byte ptr [ebp-5],0
>0049DC1D    je          0049DC2E
 0049DC1F    call        @AfterConstruction
 0049DC24    pop         dword ptr fs:[0]
 0049DC2B    add         esp,0C
 0049DC2E    mov         eax,dword ptr [ebp-4]
 0049DC31    mov         esp,ebp
 0049DC33    pop         ebp
 0049DC34    ret
*}
end;

//0049DC38
destructor TPopupMenu.Destroy;
begin
{*
 0049DC38    push        ebp
 0049DC39    mov         ebp,esp
 0049DC3B    add         esp,0FFFFFFF8
 0049DC3E    call        @BeforeDestruction
 0049DC43    mov         byte ptr [ebp-5],dl
 0049DC46    mov         dword ptr [ebp-4],eax
 0049DC49    mov         edx,dword ptr [ebp-4]
 0049DC4C    mov         eax,[00571E2C];0x0 PopupList:TPopupList
 0049DC51    call        0049DB6C
 0049DC56    mov         dl,byte ptr [ebp-5]
 0049DC59    and         dl,0FC
 0049DC5C    mov         eax,dword ptr [ebp-4]
 0049DC5F    call        TMenu.Destroy
 0049DC64    cmp         byte ptr [ebp-5],0
>0049DC68    jle         0049DC72
 0049DC6A    mov         eax,dword ptr [ebp-4]
 0049DC6D    call        @ClassDestroy
 0049DC72    pop         ecx
 0049DC73    pop         ecx
 0049DC74    pop         ebp
 0049DC75    ret
*}
end;

//0049DC78
{*procedure sub_0049DC78(?:?);
begin
 0049DC78    push        ebp
 0049DC79    mov         ebp,esp
 0049DC7B    add         esp,0FFFFFFF8
 0049DC7E    push        ebx
 0049DC7F    mov         dword ptr [ebp-8],edx
 0049DC82    mov         dword ptr [ebp-4],eax
 0049DC85    mov         eax,dword ptr [ebp-4]
 0049DC88    cmp         word ptr [eax+72],0;TPopupMenu.?f72:word
>0049DC8D    je          0049DC9B
 0049DC8F    mov         ebx,dword ptr [ebp-4]
 0049DC92    mov         edx,dword ptr [ebp-8]
 0049DC95    mov         eax,dword ptr [ebx+74];TPopupMenu.?f74:dword
 0049DC98    call        dword ptr [ebx+70];TPopupMenu.OnPopup
 0049DC9B    pop         ebx
 0049DC9C    pop         ecx
 0049DC9D    pop         ecx
 0049DC9E    pop         ebp
 0049DC9F    ret
end;*}

//0049DCA0
{*function TPopupMenu.GetHelpContext:?;
begin
 0049DCA0    push        ebp
 0049DCA1    mov         ebp,esp
 0049DCA3    add         esp,0FFFFFFF8
 0049DCA6    mov         dword ptr [ebp-4],eax
 0049DCA9    mov         eax,dword ptr [ebp-4]
 0049DCAC    mov         eax,dword ptr [eax+34];TPopupMenu.Items:TMenuItem
 0049DCAF    mov         eax,dword ptr [eax+54];TMenuItem.HelpContext:THelpContext
 0049DCB2    mov         dword ptr [ebp-8],eax
 0049DCB5    mov         eax,dword ptr [ebp-8]
 0049DCB8    pop         ecx
 0049DCB9    pop         ecx
 0049DCBA    pop         ebp
 0049DCBB    ret
end;*}

//0049DCBC
procedure TPopupMenu.SetHelpContext(Value:THelpContext);
begin
{*
 0049DCBC    push        ebp
 0049DCBD    mov         ebp,esp
 0049DCBF    add         esp,0FFFFFFF8
 0049DCC2    mov         dword ptr [ebp-8],edx
 0049DCC5    mov         dword ptr [ebp-4],eax
 0049DCC8    mov         eax,dword ptr [ebp-4]
 0049DCCB    mov         eax,dword ptr [eax+34];TPopupMenu.Items:TMenuItem
 0049DCCE    mov         edx,dword ptr [ebp-8]
 0049DCD1    mov         dword ptr [eax+54],edx;TMenuItem.HelpContext:THelpContext
 0049DCD4    pop         ecx
 0049DCD5    pop         ecx
 0049DCD6    pop         ebp
 0049DCD7    ret
*}
end;

//0049DCD8
procedure sub_0049DCD8(?:TPopupMenu);
begin
{*
 0049DCD8    push        ebp
 0049DCD9    mov         ebp,esp
 0049DCDB    add         esp,0FFFFFFF8
 0049DCDE    mov         dword ptr [ebp-4],eax
 0049DCE1    mov         eax,[0056E638];^gvar_0057196C:Integer
 0049DCE6    cmp         byte ptr [eax+0D],0
>0049DCEA    je          0049DD39
 0049DCEC    mov         eax,dword ptr [ebp-4]
 0049DCEF    cmp         byte ptr [eax+41],0
>0049DCF3    je          0049DD39
 0049DCF5    mov         eax,dword ptr [ebp-4]
 0049DCF8    add         eax,58
 0049DCFB    call        00497834
 0049DD00    mov         dword ptr [ebp-8],eax
 0049DD03    cmp         dword ptr [ebp-8],0
>0049DD07    je          0049DD20
 0049DD09    mov         eax,dword ptr [ebp-8]
 0049DD0C    mov         dl,byte ptr [eax+5F]
 0049DD0F    mov         eax,dword ptr [ebp-4]
 0049DD12    call        TMainMenu.SetBiDiMode
 0049DD17    mov         eax,dword ptr [ebp-4]
 0049DD1A    mov         byte ptr [eax+41],1
>0049DD1E    jmp         0049DD39
 0049DD20    mov         eax,[0056E3C0];^Application:TApplication
 0049DD25    mov         eax,dword ptr [eax]
 0049DD27    mov         dl,byte ptr [eax+34];TApplication.FBiDiMode:TBiDiMode
 0049DD2A    mov         eax,dword ptr [ebp-4]
 0049DD2D    call        TMainMenu.SetBiDiMode
 0049DD32    mov         eax,dword ptr [ebp-4]
 0049DD35    mov         byte ptr [eax+41],1
 0049DD39    pop         ecx
 0049DD3A    pop         ecx
 0049DD3B    pop         ebp
 0049DD3C    ret
*}
end;

//0049DD40
{*function sub_0049DD40(?:TPopupMenu):?;
begin
 0049DD40    push        ebp
 0049DD41    mov         ebp,esp
 0049DD43    add         esp,0FFFFFFF4
 0049DD46    push        esi
 0049DD47    mov         dword ptr [ebp-4],eax
 0049DD4A    mov         byte ptr [ebp-5],0
 0049DD4E    mov         eax,[0056E638];^gvar_0057196C:Integer
 0049DD53    cmp         byte ptr [eax+0D],0
>0049DD57    je          0049DDA3
 0049DD59    mov         eax,dword ptr [ebp-4]
 0049DD5C    cmp         byte ptr [eax+41],0
>0049DD60    je          0049DD98
 0049DD62    mov         eax,dword ptr [ebp-4]
 0049DD65    add         eax,58
 0049DD68    call        00497834
 0049DD6D    mov         dword ptr [ebp-0C],eax
 0049DD70    cmp         dword ptr [ebp-0C],0
>0049DD74    je          0049DD87
 0049DD76    mov         eax,dword ptr [ebp-0C]
 0049DD79    mov         si,0FFC8
 0049DD7D    call        @CallDynaInst
 0049DD82    mov         byte ptr [ebp-5],al
>0049DD85    jmp         0049DDA3
 0049DD87    mov         eax,[0056E3C0];^Application:TApplication
 0049DD8C    mov         eax,dword ptr [eax]
 0049DD8E    call        004AA524
 0049DD93    mov         byte ptr [ebp-5],al
>0049DD96    jmp         0049DDA3
 0049DD98    mov         eax,dword ptr [ebp-4]
 0049DD9B    cmp         byte ptr [eax+30],1
 0049DD9F    sete        byte ptr [ebp-5]
 0049DDA3    mov         al,byte ptr [ebp-5]
 0049DDA6    pop         esi
 0049DDA7    mov         esp,ebp
 0049DDA9    pop         ebp
 0049DDAA    ret
end;*}

//0049DDAC
{*procedure sub_0049DDAC(?:?; ?:?);
begin
 0049DDAC    push        ebp
 0049DDAD    mov         ebp,esp
 0049DDAF    add         esp,0FFFFFFE8
 0049DDB2    mov         dword ptr [ebp-0C],ecx
 0049DDB5    mov         dword ptr [ebp-8],edx
 0049DDB8    mov         dword ptr [ebp-4],eax
 0049DDBB    lea         ecx,[ebp-18]
 0049DDBE    mov         edx,dword ptr [ebp-0C]
 0049DDC1    mov         eax,dword ptr [ebp-8]
 0049DDC4    call        Point
 0049DDC9    mov         eax,dword ptr [ebp-4]
 0049DDCC    mov         edx,dword ptr [ebp-18]
 0049DDCF    mov         dword ptr [eax+58],edx;TPopupMenu.FPopupPoint:TPoint
 0049DDD2    mov         edx,dword ptr [ebp-14]
 0049DDD5    mov         dword ptr [eax+5C],edx
 0049DDD8    mov         eax,dword ptr [ebp-4]
 0049DDDB    call        0049DCD8
 0049DDE0    mov         edx,dword ptr [ebp-4]
 0049DDE3    mov         eax,dword ptr [ebp-4]
 0049DDE6    mov         ecx,dword ptr [eax]
 0049DDE8    call        dword ptr [ecx+3C];TPopupMenu.sub_0049DC78
 0049DDEB    xor         edx,edx
 0049DDED    mov         eax,dword ptr [ebp-4]
 0049DDF0    mov         eax,dword ptr [eax+34];TPopupMenu.Items:TMenuItem
 0049DDF3    call        0049B908
 0049DDF8    xor         edx,edx
 0049DDFA    mov         eax,dword ptr [ebp-4]
 0049DDFD    mov         eax,dword ptr [eax+34];TPopupMenu.Items:TMenuItem
 0049DE00    call        0049BE84
 0049DE05    mov         eax,dword ptr [ebp-4]
 0049DE08    mov         eax,dword ptr [eax+34];TPopupMenu.Items:TMenuItem
 0049DE0B    call        004989D8
 0049DE10    mov         eax,dword ptr [ebp-4]
 0049DE13    call        0049CB20
 0049DE18    mov         eax,dword ptr [ebp-4]
 0049DE1B    call        0049DD40
 0049DE20    and         eax,7F
 0049DE23    lea         eax,[eax+eax*2]
 0049DE26    lea         eax,[eax*2+56C9A8]
 0049DE2D    mov         edx,dword ptr [ebp-4]
 0049DE30    movzx       edx,byte ptr [edx+60];TPopupMenu.Alignment:TPopupAlignment
 0049DE34    mov         ax,word ptr [eax+edx*2]
 0049DE38    mov         edx,dword ptr [ebp-4]
 0049DE3B    movzx       edx,byte ptr [edx+68];TPopupMenu.TrackButton:TTrackButton
 0049DE3F    or          ax,word ptr [edx*2+56C9B4]
 0049DE47    movzx       eax,ax
 0049DE4A    mov         edx,dword ptr [ebp-4]
 0049DE4D    movzx       edx,byte ptr [edx+69];TPopupMenu.MenuAnimation:TMenuAnimation
 0049DE51    shl         edx,0A
 0049DE54    or          eax,edx
 0049DE56    mov         dword ptr [ebp-10],eax
 0049DE59    push        0
 0049DE5B    mov         eax,[00571E2C];0x0 PopupList:TPopupList
 0049DE60    mov         eax,dword ptr [eax+10];TPopupList.........FWindow:HWND
 0049DE63    push        eax
 0049DE64    push        0
 0049DE66    mov         eax,dword ptr [ebp-0C]
 0049DE69    push        eax
 0049DE6A    mov         eax,dword ptr [ebp-8]
 0049DE6D    push        eax
 0049DE6E    mov         eax,dword ptr [ebp-10]
 0049DE71    push        eax
 0049DE72    mov         eax,dword ptr [ebp-4]
 0049DE75    mov         eax,dword ptr [eax+34];TPopupMenu.Items:TMenuItem
 0049DE78    call        00498B60
 0049DE7D    push        eax
 0049DE7E    call        user32.TrackPopupMenu
 0049DE83    mov         esp,ebp
 0049DE85    pop         ebp
 0049DE86    ret
end;*}

//0049DE88
{*procedure sub_0049DE88(?:TMenuItemStack; ?:?);
begin
 0049DE88    push        ebp
 0049DE89    mov         ebp,esp
 0049DE8B    add         esp,0FFFFFFF0
 0049DE8E    mov         dword ptr [ebp-8],edx
 0049DE91    mov         dword ptr [ebp-4],eax
 0049DE94    mov         eax,dword ptr [ebp-4]
 0049DE97    mov         eax,dword ptr [eax+4];TMenuItemStack................FList:TList
 0049DE9A    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 0049DE9D    dec         eax
 0049DE9E    test        eax,eax
>0049DEA0    jl          0049DEDC
 0049DEA2    inc         eax
 0049DEA3    mov         dword ptr [ebp-10],eax
 0049DEA6    mov         dword ptr [ebp-0C],0
 0049DEAD    mov         eax,dword ptr [ebp-4]
 0049DEB0    mov         eax,dword ptr [eax+4];TMenuItemStack.................FList:TList
 0049DEB3    mov         edx,dword ptr [ebp-0C]
 0049DEB6    call        TList.Get
 0049DEBB    mov         eax,dword ptr [eax]
 0049DEBD    cmp         eax,dword ptr [ebp-8]
>0049DEC0    jne         0049DED4
 0049DEC2    mov         eax,dword ptr [ebp-4]
 0049DEC5    mov         eax,dword ptr [eax+4];TMenuItemStack..................FList:TList
 0049DEC8    mov         edx,dword ptr [ebp-0C]
 0049DECB    call        TList.Get
 0049DED0    xor         edx,edx
 0049DED2    mov         dword ptr [eax],edx
 0049DED4    inc         dword ptr [ebp-0C]
 0049DED7    dec         dword ptr [ebp-10]
>0049DEDA    jne         0049DEAD
 0049DEDC    mov         esp,ebp
 0049DEDE    pop         ebp
 0049DEDF    ret
end;*}

//0049DEE0
{*procedure sub_0049DEE0(?:?; ?:TControlCanvas; ?:?; ?:?);
begin
 0049DEE0    push        ebp
 0049DEE1    mov         ebp,esp
 0049DEE3    add         esp,0FFFFFFE4
 0049DEE6    push        ebx
 0049DEE7    push        esi
 0049DEE8    push        edi
 0049DEE9    mov         esi,ecx
 0049DEEB    lea         edi,[ebp-1A]
 0049DEEE    movs        dword ptr [edi],dword ptr [esi]
 0049DEEF    movs        dword ptr [edi],dword ptr [esi]
 0049DEF0    movs        dword ptr [edi],dword ptr [esi]
 0049DEF1    movs        dword ptr [edi],dword ptr [esi]
 0049DEF2    mov         dword ptr [ebp-8],edx
 0049DEF5    mov         dword ptr [ebp-4],eax
 0049DEF8    mov         eax,[0056E1A4];^gvar_0056B7DC
 0049DEFD    cmp         dword ptr [eax],4
>0049DF00    jg          0049DF1A
 0049DF02    mov         eax,[0056E1A4];^gvar_0056B7DC
 0049DF07    cmp         dword ptr [eax],4
>0049DF0A    jne         0049DF16
 0049DF0C    mov         eax,[0056E45C];^gvar_0056B7E0
 0049DF11    cmp         dword ptr [eax],0
>0049DF14    jg          0049DF1A
 0049DF16    xor         eax,eax
>0049DF18    jmp         0049DF1C
 0049DF1A    mov         al,1
 0049DF1C    mov         byte ptr [ebp-0A],al
 0049DF1F    mov         eax,dword ptr [ebp-4]
 0049DF22    mov         si,0FFF2
 0049DF26    call        @CallDynaInst
 0049DF2B    mov         edx,dword ptr ds:[4971A8];TMainMenu
 0049DF31    call        @IsClass
 0049DF36    mov         byte ptr [ebp-9],al
 0049DF39    test        byte ptr [ebp+8],1
>0049DF3D    je          0049DF73
 0049DF3F    cmp         byte ptr [ebp-9],0
>0049DF43    je          0049DF51
 0049DF45    cmp         byte ptr [ebp-9],0
>0049DF49    je          0049DF73
 0049DF4B    cmp         byte ptr [ebp-0A],0
>0049DF4F    jne         0049DF73
 0049DF51    mov         edx,0FF00000D
 0049DF56    mov         eax,dword ptr [ebp-8]
 0049DF59    mov         eax,dword ptr [eax+14];TControlCanvas.Brush:TBrush
 0049DF5C    call        TBrush.SetColor
 0049DF61    mov         edx,0FF00000E
 0049DF66    mov         eax,dword ptr [ebp-8]
 0049DF69    mov         eax,dword ptr [eax+0C];TControlCanvas.Font:TFont
 0049DF6C    call        TFont.SetColor
>0049DF71    jmp         0049DFC1
 0049DF73    cmp         byte ptr [ebp-0A],0
>0049DF77    je          0049DFA1
 0049DF79    test        byte ptr [ebp+8],80
>0049DF7D    je          0049DFA1
 0049DF7F    mov         edx,0FF000004
 0049DF84    mov         eax,dword ptr [ebp-8]
 0049DF87    mov         eax,dword ptr [eax+14];TControlCanvas.Brush:TBrush
 0049DF8A    call        TBrush.SetColor
 0049DF8F    mov         edx,0FF000011
 0049DF94    mov         eax,dword ptr [ebp-8]
 0049DF97    mov         eax,dword ptr [eax+0C];TControlCanvas.Font:TFont
 0049DF9A    call        TFont.SetColor
>0049DF9F    jmp         0049DFC1
 0049DFA1    mov         edx,0FF000004
 0049DFA6    mov         eax,dword ptr [ebp-8]
 0049DFA9    mov         eax,dword ptr [eax+14];TControlCanvas.Brush:TBrush
 0049DFAC    call        TBrush.SetColor
 0049DFB1    mov         edx,0FF000007
 0049DFB6    mov         eax,dword ptr [ebp-8]
 0049DFB9    mov         eax,dword ptr [eax+0C];TControlCanvas.Font:TFont
 0049DFBC    call        TFont.SetColor
 0049DFC1    mov         ax,word ptr [ebp+8]
 0049DFC5    push        eax
 0049DFC6    mov         al,byte ptr [ebp-9]
 0049DFC9    push        eax
 0049DFCA    lea         ecx,[ebp-1A]
 0049DFCD    mov         edx,dword ptr [ebp-8]
 0049DFD0    mov         eax,dword ptr [ebp-4]
 0049DFD3    mov         ebx,dword ptr [eax]
 0049DFD5    call        dword ptr [ebx+30]
 0049DFD8    pop         edi
 0049DFD9    pop         esi
 0049DFDA    pop         ebx
 0049DFDB    mov         esp,ebp
 0049DFDD    pop         ebp
 0049DFDE    ret         4
end;*}

//0049DFE4
{*procedure sub_0049DFE4(?:AnsiString; ?:?);
begin
 0049DFE4    push        ebp
 0049DFE5    mov         ebp,esp
 0049DFE7    add         esp,0FFFFFFF4
 0049DFEA    mov         dword ptr [ebp-8],edx
 0049DFED    mov         dword ptr [ebp-4],eax
 0049DFF0    mov         eax,dword ptr [ebp-8]
 0049DFF3    mov         edx,dword ptr [ebp-4]
 0049DFF6    call        @LStrAsg
 0049DFFB    mov         dword ptr [ebp-0C],1
>0049E002    jmp         0049E09E
 0049E007    mov         eax,dword ptr [ebp-8]
 0049E00A    mov         eax,dword ptr [eax]
 0049E00C    mov         edx,dword ptr [ebp-0C]
 0049E00F    mov         al,byte ptr [eax+edx-1]
 0049E013    mov         edx,dword ptr ds:[56E618];^gvar_0056B820
 0049E019    and         eax,0FF
 0049E01E    bt          dword ptr [edx],eax
>0049E021    jae         0049E028
 0049E023    inc         dword ptr [ebp-0C]
>0049E026    jmp         0049E09B
 0049E028    mov         eax,dword ptr [ebp-8]
 0049E02B    mov         eax,dword ptr [eax]
 0049E02D    mov         edx,dword ptr [ebp-0C]
 0049E030    cmp         byte ptr [eax+edx-1],26
>0049E035    jne         0049E09B
 0049E037    mov         eax,[0056E638];^gvar_0057196C:Integer
 0049E03C    cmp         byte ptr [eax+0C],0
>0049E040    je          0049E08B
 0049E042    cmp         dword ptr [ebp-0C],1
>0049E046    jle         0049E08B
 0049E048    mov         eax,dword ptr [ebp-8]
 0049E04B    mov         eax,dword ptr [eax]
 0049E04D    call        @LStrLen
 0049E052    sub         eax,dword ptr [ebp-0C]
 0049E055    cmp         eax,2
>0049E058    jl          0049E08B
 0049E05A    mov         eax,dword ptr [ebp-8]
 0049E05D    mov         eax,dword ptr [eax]
 0049E05F    mov         edx,dword ptr [ebp-0C]
 0049E062    cmp         byte ptr [eax+edx-2],28
>0049E067    jne         0049E08B
 0049E069    mov         eax,dword ptr [ebp-8]
 0049E06C    mov         eax,dword ptr [eax]
 0049E06E    mov         edx,dword ptr [ebp-0C]
 0049E071    cmp         byte ptr [eax+edx+1],29
>0049E076    jne         0049E08B
 0049E078    mov         edx,dword ptr [ebp-0C]
 0049E07B    dec         edx
 0049E07C    mov         eax,dword ptr [ebp-8]
 0049E07F    mov         ecx,4
 0049E084    call        @LStrDelete
>0049E089    jmp         0049E09B
 0049E08B    mov         eax,dword ptr [ebp-8]
 0049E08E    mov         ecx,1
 0049E093    mov         edx,dword ptr [ebp-0C]
 0049E096    call        @LStrDelete
 0049E09B    inc         dword ptr [ebp-0C]
 0049E09E    mov         eax,dword ptr [ebp-8]
 0049E0A1    mov         eax,dword ptr [eax]
 0049E0A3    call        @LStrLen
 0049E0A8    cmp         eax,dword ptr [ebp-0C]
>0049E0AB    jge         0049E007
 0049E0B1    mov         esp,ebp
 0049E0B3    pop         ebp
 0049E0B4    ret
end;*}

//0049E0B8
{*procedure sub_0049E0B8(?:?; ?:?);
begin
 0049E0B8    push        ebp
 0049E0B9    mov         ebp,esp
 0049E0BB    add         esp,0FFFFFFF0
 0049E0BE    mov         dword ptr [ebp-8],edx
 0049E0C1    mov         dword ptr [ebp-4],eax
 0049E0C4    mov         eax,dword ptr [ebp-8]
 0049E0C7    call        @LStrClr
 0049E0CC    mov         dword ptr [ebp-0C],1
 0049E0D3    mov         eax,dword ptr [ebp-4]
 0049E0D6    call        @LStrLen
 0049E0DB    mov         dword ptr [ebp-10],eax
 0049E0DE    mov         eax,dword ptr [ebp-0C]
 0049E0E1    cmp         eax,dword ptr [ebp-10]
>0049E0E4    jg          0049E148
 0049E0E6    mov         eax,[0056E618];^gvar_0056B820
 0049E0EB    mov         edx,dword ptr [ebp-0C]
 0049E0EE    mov         ecx,dword ptr [ebp-4]
 0049E0F1    mov         dl,byte ptr [ecx+edx-1]
 0049E0F5    and         edx,0FF
 0049E0FB    bt          dword ptr [eax],edx
>0049E0FE    jae         0049E105
 0049E100    inc         dword ptr [ebp-0C]
>0049E103    jmp         0049E13D
 0049E105    mov         eax,dword ptr [ebp-0C]
 0049E108    mov         edx,dword ptr [ebp-4]
 0049E10B    cmp         byte ptr [edx+eax-1],26
>0049E110    jne         0049E13D
 0049E112    mov         eax,dword ptr [ebp-10]
 0049E115    sub         eax,dword ptr [ebp-0C]
 0049E118    dec         eax
>0049E119    jl          0049E13D
 0049E11B    inc         dword ptr [ebp-0C]
 0049E11E    mov         eax,dword ptr [ebp-0C]
 0049E121    mov         edx,dword ptr [ebp-4]
 0049E124    cmp         byte ptr [edx+eax-1],26
>0049E129    je          0049E13D
 0049E12B    mov         eax,dword ptr [ebp-8]
 0049E12E    mov         edx,dword ptr [ebp-0C]
 0049E131    mov         ecx,dword ptr [ebp-4]
 0049E134    mov         dl,byte ptr [ecx+edx-1]
 0049E138    call        @LStrFromChar
 0049E13D    inc         dword ptr [ebp-0C]
 0049E140    mov         eax,dword ptr [ebp-0C]
 0049E143    cmp         eax,dword ptr [ebp-10]
>0049E146    jle         0049E0E6
 0049E148    mov         esp,ebp
 0049E14A    pop         ebp
 0049E14B    ret
end;*}

//0049E14C
{*function sub_0049E14C(?:String; ?:String):?;
begin
 0049E14C    push        ebp
 0049E14D    mov         ebp,esp
 0049E14F    add         esp,0FFFFFFEC
 0049E152    xor         ecx,ecx
 0049E154    mov         dword ptr [ebp-10],ecx
 0049E157    mov         dword ptr [ebp-14],ecx
 0049E15A    mov         dword ptr [ebp-8],edx
 0049E15D    mov         dword ptr [ebp-4],eax
 0049E160    xor         eax,eax
 0049E162    push        ebp
 0049E163    push        49E1AF
 0049E168    push        dword ptr fs:[eax]
 0049E16B    mov         dword ptr fs:[eax],esp
 0049E16E    lea         edx,[ebp-10]
 0049E171    mov         eax,dword ptr [ebp-8]
 0049E174    call        0049DFE4
 0049E179    mov         eax,dword ptr [ebp-10]
 0049E17C    push        eax
 0049E17D    lea         edx,[ebp-14]
 0049E180    mov         eax,dword ptr [ebp-4]
 0049E183    call        0049DFE4
 0049E188    mov         eax,dword ptr [ebp-14]
 0049E18B    pop         edx
 0049E18C    call        0040BF90
 0049E191    mov         byte ptr [ebp-9],al
 0049E194    xor         eax,eax
 0049E196    pop         edx
 0049E197    pop         ecx
 0049E198    pop         ecx
 0049E199    mov         dword ptr fs:[eax],edx
 0049E19C    push        49E1B6
 0049E1A1    lea         eax,[ebp-14]
 0049E1A4    mov         edx,2
 0049E1A9    call        @LStrArrayClr
 0049E1AE    ret
>0049E1AF    jmp         @HandleFinally
>0049E1B4    jmp         0049E1A1
 0049E1B6    mov         al,byte ptr [ebp-9]
 0049E1B9    mov         esp,ebp
 0049E1BB    pop         ebp
 0049E1BC    ret
end;*}

//0049E1C0
procedure _NF__590;
begin
{*
 0049E1C0    adc         al,byte ptr [eax]
 0049E1C2    add         byte ptr [eax],al
 0049E1C4    and         al,0C9
 0049E1C6    push        esi
 0049E1C7    add         ah,bl
 0049E1C9    loopne      0049E221
 0049E1CB    add         byte ptr [eax],ah
 0049E1CD    leave
 0049E1CE    push        esi
 0049E1CF    add         byte ptr [eax+56],ch
 0049E1D3    add         byte ptr [ecx+ecx*8],bl
 0049E1D6    push        esi
 0049E1D7    add         al,bl
 0049E1D9    fist        word ptr [esi]
 0049E1DC    sbb         cl,cl
 0049E1DE    push        esi
 0049E1DF    add         byte ptr [eax],ch
 0049E1E2    push        esi
 0049E1E3    add         byte ptr [ecx+ecx*8],dl
 0049E1E6    push        esi
 0049E1E7    add         ah,dl
 0049E1E9    in          al,56
 0049E1EB    add         byte ptr [eax],dl
 0049E1ED    leave
 0049E1EE    push        esi
 0049E1EF    add         byte ptr [eax+56],al
 0049E1F3    add         byte ptr [ecx+ecx*8],cl
 0049E1F6    push        esi
 0049E1F7    add         byte ptr [eax-1E],ah
 0049E1FA    push        esi
 0049E1FB    add         byte ptr [eax],cl
 0049E1FD    leave
 0049E1FE    push        esi
 0049E1FF    add         byte ptr [ecx-36FBFFAA],ch
 0049E206    push        esi
 0049E207    add         byte ptr [eax+56E5],dl
 0049E20D    leave
 0049E20E    push        esi
 0049E20F    add         byte ptr [ebp-3703FFAA],cl
 0049E216    push        esi
 0049E217    add         byte ptr [ecx+56],al
 0049E21B    add         al,bh
 0049E21D    enter       56,30
 0049E221    in          eax,56
 0049E223    add         ah,dh
 0049E225    enter       56,0DC
 0049E229    in          al,56
 0049E22B    add         al,dh
 0049E22D    enter       56,0FC
 0049E231    in          eax,56
 0049E233    add         ah,ch
 0049E235    enter       56,0BC
 0049E239    in          eax,56
 0049E23B    add         al,ch
 0049E23D    enter       56,5C
 0049E241    loope       0049E299
 0049E243    add         ah,ah
 0049E245    enter       56,7C
 0049E249    loope       0049E2A1;^^gvar_0049780C
 0049E24B    add         al,ah
 0049E24D    enter       56,0DC
 0049E251    loope       0049E2A9
 0049E253    add         byte ptr [ebp-75],dl;{Finalization}
*}
end;

Initialization
//0049E2C4
{*
 0049E2C4    sub         dword ptr ds:[571E34],1
>0049E2CB    jae         0049E348
 0049E2CD    mov         eax,49E1C0;_NF__590
 0049E2D2    call        @InitResStringImports
 0049E2D7    mov         eax,[0047DF94];TControl
 0049E2DC    call        StartClassGroup
 0049E2E1    mov         eax,[0047DF94];TControl
 0049E2E6    call        ActivateClassGroup
 0049E2EB    mov         edx,dword ptr ds:[47DF94];TControl
 0049E2F1    mov         eax,[00496C90];TMenuItem
 0049E2F6    call        GroupDescendentsWith
 0049E2FB    mov         edx,dword ptr ds:[47DF94];TControl
 0049E301    mov         eax,[004970B4];TMenu
 0049E306    call        GroupDescendentsWith
 0049E30B    mov         eax,[00496C90];TMenuItem
 0049E310    call        RegisterClass
 0049E315    mov         dl,1
 0049E317    mov         eax,[0041D528];TBits
 0049E31C    call        TObject.Create
 0049E321    mov         [00571E38],eax;CommandPool:TBits
 0049E326    mov         dl,1
 0049E328    mov         eax,[00497730];TPopupList
 0049E32D    call        TObject.Create
 0049E332    mov         [00571E2C],eax;PopupList:TPopupList
 0049E337    mov         dl,1
 0049E339    mov         eax,[0049779C];TMenuItemStack
 0049E33E    call        TOrderedList.Create
 0049E343    mov         [00571E30],eax;ShortCutItems:TMenuItemStack
 0049E348    ret
*}
Finalization
//0049E254
{*
 0049E254    push        ebp
 0049E255    mov         ebp,esp
 0049E257    xor         eax,eax
 0049E259    push        ebp
 0049E25A    push        49E2B8
 0049E25F    push        dword ptr fs:[eax]
 0049E262    mov         dword ptr fs:[eax],esp
 0049E265    inc         dword ptr ds:[571E34]
>0049E26B    jne         0049E2AA
 0049E26D    mov         eax,[00571E30];ShortCutItems:TMenuItemStack
 0049E272    call        TObject.Free
 0049E277    mov         eax,[00571E2C];PopupList:TPopupList
 0049E27C    call        TObject.Free
 0049E281    mov         eax,[00571E38];CommandPool:TBits
 0049E286    call        TObject.Free
 0049E28B    mov         eax,56C8E0
 0049E290    mov         ecx,12
 0049E295    mov         edx,dword ptr ds:[4010C0];String
 0049E29B    call        @FinalizeArray
 0049E2A0    mov         eax,56C8CC;^gvar_0049780C
 0049E2A5    call        @LStrClr
 0049E2AA    xor         eax,eax
 0049E2AC    pop         edx
 0049E2AD    pop         ecx
 0049E2AE    pop         ecx
 0049E2AF    mov         dword ptr fs:[eax],edx
 0049E2B2    push        49E2BF
 0049E2B7    ret
>0049E2B8    jmp         @HandleFinally
>0049E2BD    jmp         0049E2B7
 0049E2BF    pop         ebp
 0049E2C0    ret
*}
end.