//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit Forms;

interface

uses
  SysUtils, Classes, Forms, Controls, Graphics, Menus;

type
  TScrollBarStyle = (ssRegular, ssFlat, ssHotTrack);
  TControlScrollBar = class(TPersistent)
  public
    FControl:TScrollingWinControl;//f4
    Increment:TScrollBarInc;//f8
    FPageIncrement:TScrollBarInc;//fA
    Position:Integer;//fC
    Range:Integer;//f10
    FCalcRange:Integer;//f14
    FKind:TScrollBarKind;//f18
    Margin:word;//f1A
    Visible:Boolean;//f1C
    Tracking:Boolean;//f1D
    FScaled:Boolean;//f1E
    Smooth:Boolean;//f1F
    FDelay:Integer;//f20
    ButtonSize:Integer;//f24
    Color:TColor;//f28
    ParentColor:Boolean;//f2C
    Size:Integer;//f30
    Style:TScrollBarStyle;//f34
    ThumbSize:Integer;//f38
    FPageDiv:Integer;//f3C
    FLineDiv:Integer;//f40
    FUpdateNeeded:Boolean;//f44
    //procedure v8(?:?); virtual;//v8//004A08E0
    //constructor Create(?:?);//004A080C
    function IsStoredIncrement(Value:TScrollBarInc):Boolean;//004A08C4
    procedure ChangeBiDiPosition;//004A0948
    function NeedsScrollBarVisible:Boolean;//004A0CF0
    procedure SetButtonSize(Value:Integer);//004A10B4
    procedure SetColor(Value:TColor);//004A1120
    procedure SetParentColor(Value:Boolean);//004A1160
    procedure SetPosition(Value:Integer);//004A1198
    procedure SetSize(Value:Integer);//004A12C8
    procedure SetStyle(Value:TScrollBarStyle);//004A1334
    procedure SetThumbSize(Value:Integer);//004A136C
    procedure SetRange(Value:Integer);//004A13DC
    function IsStoredRange(Value:Integer):Boolean;//004A140C
    procedure SetVisible(Value:Boolean);//004A1430
    procedure Update(ControlSB:Boolean; AssumeSB:Boolean);//004A15A0
  end;
  TWindowState = (wsNormal, wsMinimized, wsMaximized);
  TScrollingWinControl = class(TWinControl)
  public
    HorzScrollBar:TControlScrollBar;//f208
    VertScrollBar:TControlScrollBar;//f20C
    FAutoScroll:Boolean;//f210
    FAutoRangeCount:Integer;//f214
    FUpdatingScrollBars:Boolean;//f218
    destructor Destroy; virtual;//004A1774
    constructor v2C; virtual;//v2C//004A16D8
    //procedure v8C(?:?); virtual;//v8C//004A202C
    procedure AlignControls(AControl:TControl; var Rect:TRect); virtual;//v90//004A1830
    //procedure v98(?:?); virtual;//v98//004A17C4
    procedure CreateWnd; virtual;//vA0//004A17E8
    //function vC8:?; virtual;//vC8//004A185C
    //procedure vCC(?:?); virtual;//vCC//004A1BA4
    //procedure vD0(?:?); virtual;//vD0//004A1EA0
    //procedure WMSize(?:?); message WM_SIZE;//004A1EB0
    //procedure WMHScroll(?:?); message WM_HSCROLL;//004A1F9C
    //procedure WMVScroll(?:?); message WM_VSCROLL;//004A1FE4
    procedure CMBiDiModeChanged(var Message:TMessage); message CM_BIDIMODECHANGED;//004A20B4
    procedure sub_004878D0; dynamic;//004A1898
    //procedure sub_00483238(?:?; ?:?); dynamic;//004A1E70
    procedure SetHorzScrollBar(Value:TControlScrollBar);//004A1A64
    procedure SetVertScrollBar(Value:TControlScrollBar);//004A1A88
    procedure UpdateScrollBars;//004A1AAC
  end;
  TFormBorderStyle = (bsNone, bsSingle, bsSizeable, bsDialog, bsToolWindow, bsSizeToolWin);
  TBorderStyle = (bsNone, bsSingle);
  TFormStyle = (fsNormal, fsMDIChild, fsMDIForm, fsStayOnTop);
  TBorderIcon = (biSystemMenu, biMinimize, biMaximize, biHelp);
  TBorderIcons = set of TBorderIcon;
  TPosition = (poDesigned, poDefault, poDefaultPosOnly, poDefaultSizeOnly, poScreenCenter, poDesktopCenter, poMainFormCenter, poOwnerFormCenter);
  TDefaultMonitor = (dmDesktop, dmPrimary, dmMainForm, dmActiveForm);
  TPrintScale = (poNone, poProportional, poPrintToFit);
  TCloseAction = (caNone, caHide, caFree, caMinimize);
  TCloseEvent = procedure(Sender:TObject; var Action:TCloseAction) of object;;
  TCloseQueryEvent = procedure(Sender:TObject; var CanClose:Boolean) of object;;
  TShortCutEvent = procedure(var Msg:TWMKey; var Handled:Boolean) of object;;
  THelpEvent = function(Command:Word; Data:Integer; var CallHelp:Boolean):Boolean of object;;
  TCustomForm = class(TScrollingWinControl)
  public
    FActiveControl:TWinControl;//f220
    FFocusedControl:TWinControl;//f224
    FBorderIcons:TBorderIcons;//f228
    FBorderStyle:TFormBorderStyle;//f229
    FSizeChanging:Boolean;//f22A
    FWindowState:TWindowState;//f22B
    FShowAction:TShowAction;//f22C
    FKeyPreview:Boolean;//f22D
    FActive:Boolean;//f22E
    FFormStyle:TFormStyle;//f22F
    FPosition:TPosition;//f230
    FDefaultMonitor:TDefaultMonitor;//f231
    FTileMode:TTileMode;//f232
    FDropTarget:Boolean;//f233
    FOldCreateOrder:Boolean;//f234
    FPrintScale:TPrintScale;//f235
    FCanvas:TControlCanvas;//f238
    FHelpFile:String;//f23C
    FIcon:TIcon;//f240
    FInCMParentBiDiModeChanged:Boolean;//f244
    FMenu:TMainMenu;//f248
    FModalResult:TModalResult;//f24C
    FDesigner:IDesignerHook;//f250
    FClientHandle:HWND;//f254
    FWindowMenu:TMenuItem;//f258
    FPixelsPerInch:Integer;//f25C
    FObjectMenuItem:TMenuItem;//f260
    FOleForm:IOleForm;//f264
    FClientWidth:Integer;//f268
    FClientHeight:Integer;//f26C
    FTextHeight:Integer;//f270
    FDefClientProc:TFarProc;//f274
    FClientInstance:TFarProc;//f278
    FActiveOleControl:TWinControl;//f27C
    FSavedBorderStyle:TFormBorderStyle;//f280
    FOnActivate:TNotifyEvent;//f288
    f28A:word;//f28A
    f28C:dword;//f28C
    FOnClose:TCloseEvent;//f290
    f292:word;//f292
    f294:dword;//f294
    FOnCloseQuery:TCloseQueryEvent;//f298
    f29A:word;//f29A
    f29C:dword;//f29C
    FOnDeactivate:TNotifyEvent;//f2A0
    f2A2:word;//f2A2
    f2A4:dword;//f2A4
    FOnHelp:THelpEvent;//f2A8
    f2AA:word;//f2AA
    f2AC:dword;//f2AC
    FOnHide:TNotifyEvent;//f2B0
    f2B2:word;//f2B2
    f2B4:dword;//f2B4
    FOnPaint:TNotifyEvent;//f2B8
    f2BA:word;//f2BA
    f2BC:dword;//f2BC
    FOnShortCut:TShortCutEvent;//f2C0
    f2C2:word;//f2C2
    f2C4:dword;//f2C4
    FOnShow:TNotifyEvent;//f2C8
    f2CA:word;//f2CA
    f2CC:dword;//f2CC
    FOnCreate:TNotifyEvent;//f2D0
    FOnDestroy:TNotifyEvent;//f2D8
    FAlphaBlend:Boolean;//f2E0
    FAlphaBlendValue:byte;//f2E1
    FScreenSnap:Boolean;//f2E2
    FSnapBuffer:Integer;//f2E4
    FTransparentColor:Boolean;//f2E8
    FTransparentColorValue:TColor;//f2EC
    FActionLists:TList;//f2F0
    FFormState:TFormState;//f2F4
    procedure AfterConstruction; virtual;//004A22D4
    procedure BeforeDestruction; virtual;//004A24E8
    procedure DefaultHandler(var Message:void ); virtual;//004A5200
    destructor Destroy; virtual;//004A2568
    procedure DefineProperties(Filer:TFiler); virtual;//v4//004A2B8C
    procedure vC; virtual;//vC//004A2728
    //procedure v10(?:?; ?:?); virtual;//v10//004A2780
    //procedure v14(?:?); virtual;//v14//004A28E8
    //procedure v20(?:?; ?:?; ?:?); virtual;//v20//004A339C
    //function v28(?:?; ?:?):?; virtual;//v28//004A7CD4
    constructor Create; virtual;//v2C//004A2144
    //procedure v44(?:?); virtual;//v44//004A2F78
    //function v54:?; virtual;//v54//004A30A0
    //procedure v68(?:?); virtual;//v68//004A334C
    procedure SetParentBiDiMode(Value:Boolean); virtual;//v6C//004A317C
    //procedure v74(?:?); virtual;//v74//004A33EC
    procedure AlignControls(AControl:TControl; var Rect:TRect); virtual;//v90//004A3AF8
    //procedure v98(?:?); virtual;//v98//004A4C10
    //procedure v9C(?:?); virtual;//v9C//004A5044
    procedure CreateWnd; virtual;//vA0//004A4ED4
    procedure DestroyWindowHandle; virtual;//vAC//004A51B0
    //procedure vB8(?:?); virtual;//vB8//004A5AC8
    procedure vC4; virtual;//vC4//004A746C
    //procedure vD0(?:?); virtual;//vD0//004A61FC
    procedure DoCreate; virtual;//vD4//004A264C
    procedure DoDestroy; virtual;//vD8//004A26C8
    procedure vDC; virtual;//vDC//004A7884
    constructor Create; virtual;//vE0//004A231C
    //function vE4:?; virtual;//vE4//004A7324
    //function vE8(?:?):?; virtual;//vE8//004A5404
    //function vEC:?; virtual;//vEC//004A7518
    //function vF0(?:?; ?:?):?; virtual;//vF0//004A3330
    //procedure WMDestroy(?:?); message WM_DESTROY;//004A5FA4
    //procedure WMActivate(?:?); message WM_ACTIVATE;//004A61C4
    procedure WMPaint(Message:TWMPaint); message WM_PAINT;//004A5C30
    //procedure WMClose(?:?); message WM_CLOSE;//004A6250
    //procedure WMQueryEndSession(?:?); message WM_QUERYENDSESSION;//004A6268
    //procedure WMEraseBkgnd(?:?); message WM_ERASEBKGND;//004A5D3C
    //procedure WMShowWindow(?:?); message WM_SHOWWINDOW;//004A63E0
    //procedure WMSettingChange(?:?); message WM_SETTINGCHANGE;//004A7944
    //procedure WMGetMinMaxInfo(?:?); message WM_GETMINMAXINFO;//004A67F4
    //procedure WMEraseBkgnd(?:?); message WM_ICONERASEBKGND;//004A5CCC
    //procedure WMNextDlgCtl(?:?); message WM_NEXTDLGCTL;//004A650C
    //procedure WMQueryDragIcon(?:?); message WM_QUERYDRAGICON;//004A5D80
    //procedure WMWindowPosChangingMsg(?:?); message WM_WINDOWPOSCHANGING;//004A6904
    //procedure WMHelp(?:?); message WM_HELP;//004A6670
    //procedure WMNCCreate(?:?); message WM_NCCREATE;//004A5EB8
    //procedure WMNCLButtonDown(?:?); message WM_NCLBUTTONDOWN;//004A5EF4
    //procedure WMCommand(?:?); message WM_COMMAND;//004A6018
    //procedure WMSysCommand(?:?); message WM_SYSCOMMAND;//004A6320
    //procedure WMInitMenuPopup(?:?); message WM_INITMENUPOPUP;//004A6064
    //procedure WMMenuSelect(?:?); message WM_MENUSELECT;//004A60E4
    //procedure WMMenuChar(?:?); message WM_MENUCHAR;//004A6094
    //procedure WMEnterMenuLoop(?:?); message WM_ENTERMENULOOP;//004A6554
    //procedure WMMDIActivate(?:?); message WM_MDIACTIVATE;//004A649C
    //procedure CMActivate(?:?); message CM_ACTIVATE;//004A69D8
    //procedure CMDeactivate(?:?); message CM_DEACTIVATE;//004A6A0C
    //procedure CMDialogKey(?:?); message CM_DIALOGKEY;//004A6A40
    //procedure CMParentFontChanged(?:?); message CM_PARENTFONTCHANGED;//004A71A8
    //procedure CMColorChanged(?:?); message CM_COLORCHANGED;//004A46B8
    //procedure CMFontChanged(?:?); message CM_FONTCHANGED;//004A4788
    //procedure CMCtl3DChanged(?:?); message CM_CTL3DCHANGED;//004A4724
    //procedure CMTextChanged(?:?); message CM_TEXTCHANGED;//004A712C
    //procedure CMMenuChanged(?:?); message CM_MENUCHANGED;//004A47C4
    //procedure CMAppSysCommand(?:?); message CM_APPSYSCOMMAND;//004A62A0
    //procedure CMShowingChanged(?:?); message CM_SHOWINGCHANGED;//004A6B0C
    //procedure CMIconChanged(?:?); message CM_ICONCHANGED;//004A70E8
    //procedure CMRelease(?:?); message CM_RELEASE;//004A7114
    //procedure CMUIActivate(?:?); message CM_UIACTIVATE;//004A718C
    procedure CMBiDiModeChanged(Message:TMessage); message CM_BIDIMODECHANGED;//004A3B94
    //procedure CMParentBiDiModeChanged(?:?); message CM_PARENTBIDIMODECHANGED;//004A3C48
    //procedure CMActionUpdate(?:?); message CM_ACTIONUPDATE;//004A7B78
    //procedure CMActionExecute(?:?); message CM_ACTIONEXECUTE;//004A7A48
    //procedure CMDockNotification(?:?); message CM_DOCKNOTIFICATION;//004A7228
    //procedure sub_004A7C48(?:?); dynamic;//004A7C48
    procedure sub_004A5A68; dynamic;//004A5A68
    procedure sub_004A7D74; dynamic;//004A7D74
    procedure sub_004A2F4C; dynamic;//004A2F4C
    procedure sub_004A2F20; dynamic;//004A2F20
    //procedure sub_004A2EEC(?:?); dynamic;//004A2EEC
    procedure sub_004A5A24; dynamic;//004A5A24
    procedure sub_004A5724; dynamic;//004A5724
    procedure sub_004A59E0; dynamic;//004A59E0
    //procedure sub_00483F2C(?:?); dynamic;//004A7D24
    //procedure sub_00482C8C(?:?; ?:?); dynamic;//004A3D74
    procedure sub_0048513C; dynamic;//004A32BC
    procedure sub_004826F8; dynamic;//004A7918
    //procedure sub_0048251C(?:?); dynamic;//004A5B88
    //procedure sub_00482DC8(?:?; ?:?); dynamic;//004A3DE0
    //procedure sub_00483238(?:?; ?:?); dynamic;//004A2D2C
    procedure sub_004841BC; dynamic;//004A2D20
    //procedure sub_0042A808(?:?; ?:?); dynamic;//004A30E0
    //procedure sub_0042A788(?:?; ?:?; ?:?); dynamic;//004A302C
    procedure SetVisible(Value:Boolean);//004A325C
    procedure ClientWndProc(var Message:TMessage);//004A3918
    function GetMDIChildCount:Integer;//004A3EA8
    procedure MergeMenu(MergeState:Boolean);//004A5898
    procedure CloseModal;//004A73A4
    procedure Release;//004A74F4
  end;
  TForm = class(TCustomForm)
    procedure SetAutoScroll(Value:Boolean);//004A1A08
    function IsStoredClientHeight(Value:Integer):Boolean;//004A2E40
    function IsStoredHeight(Value:Integer):Boolean;//004A2E60
    function IsStoredAutoScroll(Value:Boolean):Boolean;//004A2EA4
    procedure SetClientWidth(Value:Integer);//004A31BC
    procedure SetClientHeight(Value:Integer);//004A320C
    procedure SetBorderIcons(Value:TBorderIcons);//004A3CDC
    procedure SetBorderStyle(Value:TFormBorderStyle);//004A3D18
    procedure SetIcon(Value:TIcon);//004A4110
    function IsStoredActiveControl(Value:TPersistent):Boolean;//004A4134
    function IsStoredIcon(Value:TIcon):Boolean;//004A4150
    procedure SetFormStyle(Value:TFormStyle);//004A4188
    procedure SetObjectMenuItem(Value:TMenuItem);//004A42F4
    procedure SetWindowMenu(Value:TMenuItem);//004A432C
    procedure SetMenu(Value:TMainMenu);//004A4370
    //function GetPixelsPerInch:?;//004A45A0
    procedure SetPixelsPerInch(Value:Integer);//004A45D0
    procedure SetPosition(Value:TPosition);//004A461C
    //function GetScaled:?;//004A4658
    procedure SetScaled(Value:Boolean);//004A4678
    procedure SetWindowState(Value:TWindowState);//004A47F0
    procedure SetActiveControl(Value:TWinControl);//004A5290
    procedure SetAlphaBlend(Value:Boolean);//004A7E94
    procedure SetAlphaBlendValue(Value:Byte);//004A7EC8
    procedure SetTransparentColorValue(Value:TColor);//004A7EFC
    procedure SetTransparentColor(Value:Boolean);//004A7F30
  end;
  TCustomDockForm = class(TCustomForm)
  public
    procedure vC; virtual;//vC//004A8148
    constructor v2C; virtual;//v2C//004A7FA8
    //procedure WMNCHitTest(?:?); message WM_NCHITTEST;//004A81DC
    //procedure WMNCLButtonDown(?:?); message WM_NCLBUTTONDOWN;//004A8214
    //procedure CMVisibleChanged(?:?); message CM_VISIBLECHANGED;//004A8464
    //procedure CMControlLIstChange(?:?); message CM_CONTROLLISTCHANGE;//004A82D0
    //procedure CMUndockClient(?:?); message CM_UNDOCKCLIENT;//004A843C
    //procedure sub_004A8340(?:?); dynamic;//004A8340
    //procedure sub_0048A478(?:?; ?:?; ?:?; ?:?); dynamic;//004A81A8
    //procedure sub_0048A208(?:?); dynamic;//004A8118
    //procedure sub_0048A1E8(?:?; ?:?); dynamic;//004A8020
  end;
  TMonitor = class(TObject)
  public
    FHandle:HMONITOR;//f4
    FMonitorNum:Integer;//f8
  end;
  TScreen = class(TComponent)
  public
    FFonts:TStrings;//f30
    FImes:TStrings;//f34
    FDefaultIme:String;//f38
    FDefaultKbLayout:HKL;//f3C
    FPixelsPerInch:Integer;//f40
    FCursor:TCursor;//f44
    FCursorCount:Integer;//f48
    FForms:TList;//f4C
    FCustomForms:TList;//f50
    FDataModules:TList;//f54
    FMonitors:TList;//f58
    FCursorList:PCursorRec;//f5C
    FDefaultCursor:HCURSOR;//f60
    FActiveControl:TWinControl;//f64
    FActiveCustomForm:TCustomForm;//f68
    FActiveForm:TForm;//f6C
    FLastActiveControl:TWinControl;//f70
    FLastActiveCustomForm:TCustomForm;//f74
    FFocusedForm:TCustomForm;//f78
    FSaveFocusedList:TList;//f7C
    FHintFont:TFont;//f80
    FIconFont:TFont;//f84
    FMenuFont:TFont;//f88
    FAlignLevel:Word;//f8C
    FControlState:TControlState;//f8E
    FOnActiveControlChange:TNotifyEvent;//f90
    f92:word;//f92
    f94:dword;//f94
    FOnActiveFormChange:TNotifyEvent;//f98
    f9A:word;//f9A
    f9C:dword;//f9C
    destructor Destroy; virtual;//004A876C
    constructor v2C; virtual;//v2C//004A85C8
    procedure RemoveForm(AForm:TCustomForm);//004A8AD8
    procedure AlignForms(AForm:TCustomForm; var Rect:TRect);//004A9770
  end;
  THintInfo = THintInfo = record//size=40
f38:String;//f38
end;;
  TApplication = class(TComponent)
  public
    FHandle:HWND;//f30
    FBiDiMode:TBiDiMode;//f34
    FBiDiKeyboard:String;//f38
    FNonBiDiKeyboard:String;//f3C
    FObjectInstance:Pointer;//f40
    FMainForm:TForm;//f44
    FMouseControl:TControl;//f48
    FHelpSystem:IHelpSystem;//f4C
    FHelpFile:String;//f50
    FHint:String;//f54
    FHintActive:Boolean;//f58
    FUpdateFormatSettings:Boolean;//f59
    FUpdateMetricSettings:Boolean;//f5A
    FShowMainForm:Boolean;//f5B
    FHintColor:TColor;//f5C
    FHintControl:TControl;//f60
    FHintCursorRect:TRect;//f64
    FHintHidePause:Integer;//f74
    FHintPause:Integer;//f78
    FHintShortCuts:Boolean;//f7C
    FHintShortPause:Integer;//f80
    FHintWindow:THintWindow;//f84
    FShowHint:Boolean;//f88
    FTimerMode:TTimerMode;//f89
    FTimerHandle:Word;//f8A
    FTitle:String;//f8C
    FTopMostList:TList;//f90
    FTopMostLevel:Integer;//f94
    FIcon:TIcon;//f98
    FTerminate:Boolean;//f9C
    FActive:Boolean;//f9D
    FAllowTesting:Boolean;//f9E
    FTestLib:THandle;//fA0
    FHandleCreated:Boolean;//fA4
    FRunning:Boolean;//fA5
    FWindowHooks:TList;//fA8
    FWindowList:Pointer;//fAC
    FDialogHandle:HWND;//fB0
    FAutoDragDocking:Boolean;//fB4
    FModalLevel:Integer;//fB8
    FOnActionExecute:TActionEvent;//fC0
    fC2:word;//fC2
    fC4:dword;//fC4
    FOnActionUpdate:TActionEvent;//fC8
    fCA:word;//fCA
    fCC:dword;//fCC
    FOnException:TExceptionEvent;//fD0
    FOnMessage:TMessageEvent;//fD8
    FOnModalBegin:TNotifyEvent;//fE0
    fE2:word;//fE2
    fE4:dword;//fE4
    FOnModalEnd:TNotifyEvent;//fE8
    fEA:word;//fEA
    fEC:dword;//fEC
    FOnHelp:THelpEvent;//fF0
    fF2:word;//fF2
    fF4:dword;//fF4
    FOnHint:TNotifyEvent;//fF8
    fFA:word;//fFA
    fFC:dword;//fFC
    FOnIdle:TIdleEvent;//f100
    f102:word;//f102
    f104:dword;//f104
    FOnDeactivate:TNotifyEvent;//f108
    f10A:word;//f10A
    f10C:dword;//f10C
    FOnActivate:TNotifyEvent;//f110
    f112:word;//f112
    f114:dword;//f114
    FOnMinimize:TNotifyEvent;//f118
    f11A:word;//f11A
    f11C:dword;//f11C
    FOnRestore:TNotifyEvent;//f120
    f122:word;//f122
    f124:dword;//f124
    FOnShortCut:TShortCutEvent;//f128
    f12A:word;//f12A
    f12C:dword;//f12C
    FOnShowHint:TShowHintEvent;//f130
    f132:word;//f132
    f134:dword;//f134
    FOnSettingChange:TSettingChangeEvent;//f138
    destructor Destroy; virtual;//004A9E90
    constructor v2C; virtual;//v2C//004A9C3C
    procedure HandleException(Sender:TObject);//004AB854
    procedure HintTimerExpired;//004AC614
  end;
    //function sub_004A0100:?;//004A0100
    //procedure sub_004A0114(?:?);//004A0114
    procedure ShowMDIClientEdge(ClientHandle:THandle; ShowEdge:Boolean);//004A0128
    procedure DoneApplication;//004A0194
    //function sub_004A0240(?:HWND):?;//004A0240
    procedure sub_004A02F8(?:Pointer);//004A02F8
    //function sub_004A03C4(?:HWND):?;//004A03C4
    //function sub_004A0418(?:HWND; ?:?):?;//004A0418
    //function sub_004A0480:?;//004A0480
    function FindGlobalComponent(const Name:AnsiString):TComponent;//004A04B4
    //function sub_004A055C(?:?; ?:?):?;//004A055C
    //procedure sub_004A0578(?:?);//004A0578
    //function sub_004A058C(?:?):?;//004A058C
    //function sub_004A05E8(?:?):?;//004A05E8
    //function sub_004A0630(?:?):?;//004A0630
    //function sub_004A069C:?;//004A069C
    //function sub_004A06C8(?:?; ?:?):?;//004A06C8
    //function sub_004A0740(?:TControl):?;//004A0740
    //function sub_004A0784(?:TControl):?;//004A0784
    //procedure sub_004A08E0(?:?);//004A08E0
    //procedure sub_004A0990(?:?; ?:?);//004A0990
    //procedure sub_004A0A14(?:?; ?:?);//004A0A14
    procedure sub_004A0A90(?:TControlScrollBar);//004A0A90
    //function sub_004A0B48(?:TControlScrollBar):?;//004A0B48
    //function sub_004A0B9C(?:?; ?:?):?;//004A0B9C
    //function sub_004A0BE0(?:?; ?:?; ?:?):?;//004A0BE0
    //function sub_004A0C6C(?:?; ?:?; ?:?):?;//004A0C6C
    //function sub_004A0D18(?:?):?;//004A0D18
    //procedure sub_004A0D84(?:TControlScrollBar; ?:?);//004A0D84
    procedure sub_004A13A4(?:TControlScrollBar; ?:Integer);//004A13A4
    //procedure sub_004A1454(?:?; ?:?);//004A1454
    constructor sub_004A16D8;//004A16D8
    destructor Destroy;//004A1774
    //procedure sub_004A17C4(?:?);//004A17C4
    procedure CreateWnd;//004A17E8
    procedure AlignControls(AControl:TControl; var Rect:TRect);//004A1830
    //function sub_004A185C:?;//004A185C
    procedure sub_004878D0;//004A1898
    procedure sub_004A19D4(?:TScrollingWinControl);//004A19D4
    //procedure sub_004A1BA4(?:?);//004A1BA4
    //procedure sub_004A1BD8(?:TScrollingWinControl; ?:?);//004A1BD8
    //procedure sub_004A1D80(?:TScrollingWinControl; ?:?; ?:Integer);//004A1D80
    //procedure sub_00483238(?:?; ?:?);//004A1E70
    //procedure sub_004A1EA0(?:?);//004A1EA0
    //procedure WMSize(?:?);//004A1EB0
    //procedure WMHScroll(?:?);//004A1F9C
    //procedure WMVScroll(?:?);//004A1FE4
    //procedure sub_004A202C(?:?);//004A202C
    procedure CMBiDiModeChanged(var Message:TMessage);//004A20B4
    constructor Create;//004A2144
    procedure AfterConstruction;//004A22D4
    constructor Create;//004A231C
    procedure BeforeDestruction;//004A24E8
    destructor Destroy;//004A2568
    procedure DoCreate;//004A264C
    procedure DoDestroy;//004A26C8
    procedure sub_004A2728;//004A2728
    //procedure sub_004A2780(?:?; ?:?);//004A2780
    //procedure sub_004A28E8(?:?);//004A28E8
    procedure DefineProperties(Filer:TFiler);//004A2B8C
    //function sub_004A2CEC(?:TCustomForm):?;//004A2CEC
    procedure sub_004841BC;//004A2D20
    //procedure sub_00483238(?:?; ?:?);//004A2D2C
    //procedure sub_004A2DD4(?:TCustomForm; ?:?);//004A2DD4
    //procedure sub_004A2EEC(?:?);//004A2EEC
    procedure sub_004A2F20;//004A2F20
    procedure sub_004A2F4C;//004A2F4C
    //procedure sub_004A2F78(?:?);//004A2F78
    //procedure sub_0042A788(?:?; ?:?; ?:?);//004A302C
    //function sub_004A30A0:?;//004A30A0
    //procedure sub_0042A808(?:?; ?:?);//004A30E0
    procedure SetParentBiDiMode(Value:Boolean);//004A317C
    procedure sub_0048513C;//004A32BC
    //function sub_004A3330(?:?; ?:?):?;//004A3330
    //procedure sub_004A334C(?:?);//004A334C
    //procedure sub_004A339C(?:?; ?:?; ?:?);//004A339C
    //procedure sub_004A33EC(?:?);//004A33EC
    procedure Default;//004A3878
    function MaximizedChildren:Boolean;//004A38C4
    procedure AlignControls(AControl:TControl; var Rect:TRect);//004A3AF8
    procedure CMBiDiModeChanged(Message:TMessage);//004A3B94
    //procedure CMParentBiDiModeChanged(?:?);//004A3C48
    //procedure sub_00482C8C(?:?; ?:?);//004A3D74
    //procedure sub_00482DC8(?:?; ?:?);//004A3DE0
    //function sub_004A3E58(?:TWinControl):?;//004A3E58
    //function sub_004A3F10(?:TCustomForm; ?:?):?;//004A3F10
    //function sub_004A3F88(?:?; ?:?):?;//004A3F88
    //function sub_004A3FD0(?:TCustomForm):?;//004A3FD0
    //function sub_004A40F4(?:TCustomForm):?;//004A40F4
    procedure sub_004A423C(?:TCustomForm);//004A423C
    //procedure CMColorChanged(?:?);//004A46B8
    //function sub_004A46F8(?:TCustomForm):?;//004A46F8
    //procedure CMCtl3DChanged(?:?);//004A4724
    //procedure CMFontChanged(?:?);//004A4788
    //procedure CMMenuChanged(?:?);//004A47C4
    procedure sub_004A484C(?:TCustomForm);//004A484C
    //procedure sub_004A4C10(?:?);//004A4C10
    procedure CreateWnd;//004A4ED4
    //procedure sub_004A5044(?:?);//004A5044
    procedure DestroyWindowHandle;//004A51B0
    procedure DefaultHandler(var Message:void );//004A5200
    //procedure sub_004A5370(?:?; ?:?; ?:?);//004A5370
    //procedure sub_004A53CC(?:?; ?:TWinControl);//004A53CC
    //function sub_004A5404(?:?):?;//004A5404
    procedure sub_004A5724;//004A5724
    procedure sub_004A5730(?:TCustomForm);//004A5730
    //procedure sub_004A57A0(?:TCustomForm; ?:?);//004A57A0
    //procedure sub_004A582C(?:TWinControl; ?:?);//004A582C
    //procedure sub_004A597C(?:?; ?:TWinControl; ?:?);//004A597C
    procedure sub_004A59E0;//004A59E0
    procedure sub_004A5A24;//004A5A24
    procedure sub_004A5A68;//004A5A68
    //function sub_004A5A94(?:TCustomForm):?;//004A5A94
    //procedure sub_004A5AC8(?:?);//004A5AC8
    //procedure sub_0048251C(?:?);//004A5B88
    procedure WMPaint(Message:TWMPaint);//004A5C30
    //procedure WMEraseBkgnd(?:?);//004A5CCC
    //procedure WMEraseBkgnd(?:?);//004A5D3C
    //procedure WMQueryDragIcon(?:?);//004A5D80
    //procedure sub_004A5DA0(?:?);//004A5DA0
    //procedure WMNCCreate(?:?);//004A5EB8
    //procedure WMNCLButtonDown(?:?);//004A5EF4
    //procedure WMDestroy(?:?);//004A5FA4
    //procedure WMCommand(?:?);//004A6018
    //procedure WMInitMenuPopup(?:?);//004A6064
    //procedure WMMenuChar(?:?);//004A6094
    //procedure WMMenuSelect(?:?);//004A60E4
    //procedure WMActivate(?:?);//004A61C4
    //procedure sub_004A61FC(?:?);//004A61FC
    //procedure WMClose(?:?);//004A6250
    //procedure WMQueryEndSession(?:?);//004A6268
    //procedure CMAppSysCommand(?:?);//004A62A0
    //procedure WMSysCommand(?:?);//004A6320
    //procedure WMShowWindow(?:?);//004A63E0
    //procedure WMMDIActivate(?:?);//004A649C
    //procedure WMNextDlgCtl(?:?);//004A650C
    //procedure WMEnterMenuLoop(?:?);//004A6554
    //function sub_004A657C(?:TMenu; ?:?):?;//004A657C
    //function sub_004A65D0(?:?):?;//004A65D0
    //procedure sub_004A6620(?:?; ?:?; ?:?; ?:?);//004A6620
    //procedure WMHelp(?:?);//004A6670
    //procedure WMGetMinMaxInfo(?:?);//004A67F4
    //procedure sub_004A68C8(?:?; ?:?; ?:Integer; ?:?);//004A68C8
    //procedure WMWindowPosChangingMsg(?:?);//004A6904
    //procedure CMActivate(?:?);//004A69D8
    //procedure CMDeactivate(?:?);//004A6A0C
    //procedure CMDialogKey(?:?);//004A6A40
    //procedure CMShowingChanged(?:?);//004A6B0C
    //procedure CMIconChanged(?:?);//004A70E8
    //procedure CMRelease(?:?);//004A7114
    //procedure CMTextChanged(?:?);//004A712C
    //procedure CMUIActivate(?:?);//004A718C
    //procedure CMParentFontChanged(?:?);//004A71A8
    //procedure CMDockNotification(?:?);//004A7228
    procedure sub_004A7264(?:TCustomForm);//004A7264
    //function sub_004A7324:?;//004A7324
    procedure sub_004A743C(?:TCustomForm);//004A743C
    procedure sub_004A7450(?:TCustomForm);//004A7450
    procedure sub_004A746C;//004A746C
    //function sub_004A7518:?;//004A7518
    //procedure sub_004A7804(?:TCustomForm; ?:?);//004A7804
    procedure sub_004A7884;//004A7884
    procedure sub_004826F8;//004A7918
    //procedure WMSettingChange(?:?);//004A7944
    //function sub_004A7978(?:TWinControl; ?:?):?;//004A7978
    //function sub_004A79B4(?:TCustomForm; ?:?):?;//004A79B4
    //procedure CMActionExecute(?:?);//004A7A48
    //function sub_004A7AA8(?:TWinControl; ?:?):?;//004A7AA8
    //function sub_004A7AE4(?:TCustomForm; ?:?):?;//004A7AE4
    //procedure CMActionUpdate(?:?);//004A7B78
    //function sub_004A7BD8(?:?):?;//004A7BD8
    //procedure sub_004A7C48(?:?);//004A7C48
    //function sub_004A7CD4(?:?; ?:?):?;//004A7CD4
    //procedure sub_00483F2C(?:?);//004A7D24
    procedure sub_004A7D74;//004A7D74
    procedure sub_004A7D98(?:TCustomForm);//004A7D98
    //procedure sub_004A7F64(?:TCustomForm; ?:?);//004A7F64
    constructor sub_004A7FA8;//004A7FA8
    //procedure sub_0048A1E8(?:?; ?:?);//004A8020
    //procedure sub_0048A208(?:?);//004A8118
    procedure sub_004A8148;//004A8148
    //procedure sub_0048A478(?:?; ?:?; ?:?; ?:?);//004A81A8
    //procedure WMNCHitTest(?:?);//004A81DC
    //procedure WMNCLButtonDown(?:?);//004A8214
    //procedure CMControlLIstChange(?:?);//004A82D0
    //procedure sub_004A8340(?:?);//004A8340
    //procedure CMUndockClient(?:?);//004A843C
    //procedure CMVisibleChanged(?:?);//004A8464
    //function sub_004A84C0(?:?):?;//004A84C0
    //function sub_004A84E4(?:?):?;//004A84E4
    //function sub_004A8508(?:?):?;//004A8508
    //function sub_004A852C(?:?):?;//004A852C
    //procedure sub_004A8550(?:?; ?:?);//004A8550
    //procedure sub_004A858C(?:?; ?:TPoint);//004A858C
    constructor sub_004A85C8;//004A85C8
    destructor Destroy;//004A876C
    //function sub_004A8874(?:TScreen):?;//004A8874
    //function sub_004A8894(?:TScreen):?;//004A8894
    //function sub_004A88B4(?:TScreen):?;//004A88B4
    //function sub_004A88D4(?:TScreen):?;//004A88D4
    //function sub_004A88F4(?:TScreen):?;//004A88F4
    //function sub_004A8914(?:TScreen):?;//004A8914
    //function sub_004A8934(?:TScreen; ?:?):?;//004A8934
    //function sub_004A8958(?:TScreen):?;//004A8958
    //function sub_004A8990(?:TScreen; ?:?):?;//004A8990
    //function sub_004A89B4(?:TScreen):?;//004A89B4
    //function sub_004A89D0(?:TScreen; ?:?):?;//004A89D0
    //function sub_004A89F4(?:TScreen):?;//004A89F4
    procedure sub_004A8A10(?:TScreen);//004A8A10
    procedure sub_004A8A90(?:TScreen; ?:TCustomForm);//004A8A90
    //procedure sub_004A8B38(?:?; ?:?);//004A8B38
    //procedure sub_004A8B58(?:?; ?:?);//004A8B58
    procedure sub_004A8B78(?:TScreen);//004A8B78
    //procedure sub_004A8BEC(?:?);//004A8BEC
    //function sub_004A8C80(?:TScreen; ?:?):?;//004A8C80
    //procedure sub_004A8CDC(?:TScreen; ?:?; ?:HICON);//004A8CDC
    //function sub_004A8D24(?:TScreen):?;//004A8D24
    //procedure sub_004A8F44(?:TScreen; ?:?);//004A8F44
    //procedure sub_004A8F6C(?:?; ?:?);//004A8F6C
    //function sub_004A8FC8(?:?; ?:?):?;//004A8FC8
    //function sub_004A8FEC(?:?):?;//004A8FEC
    //function sub_004A9008(?:TScreen; ?:TCursor):?;//004A9008
    procedure sub_004A9064(?:TScreen; ?:TCursor);//004A9064
    procedure sub_004A9120(?:TScreen);//004A9120
    procedure sub_004A9288(?:TScreen);//004A9288
    procedure sub_004A929C(?:TScreen);//004A929C
    //procedure sub_004A92D4(?:?);//004A92D4
    //function sub_004A92E8(?:?; ?:Pointer; ?:?):?;//004A92E8
    //procedure sub_004A937C(?:Pointer; ?:?; ?:?);//004A937C
    //procedure sub_004A9580(?:?; ?:?);//004A9580
    //function sub_004A96FC(?:?):?;//004A96FC
    procedure sub_004A97F8(?:TScreen; ?:TCustomForm);//004A97F8
    procedure sub_004A9880(?:TScreen);//004A9880
    //procedure sub_004A9898(?:TControl; ?:?);//004A9898
    //function sub_004A98E8(?:?):?;//004A98E8
    procedure HintTimerProc(Wnd:HWND; Msg:Longint; TimerID:Longint; SysTime:Longint); stdcall;//004A9930
    //function sub_004A99E4(?:?; ?:?; ?:?):?;//004A99E4
    procedure sub_004A9A28;//004A9A28
    procedure UnhookHintHooks;//004A9AA4
    //function sub_004A9B00:?;//004A9B00
    //procedure sub_004A9B38(?:?);//004A9B38
    //procedure sub_004A9B68(?:HWND; ?:?);//004A9B68
    //function sub_004A9BA8(?:TScreen; ?:?; ?:?):?;//004A9BA8
    //function sub_004A9BEC(?:TScreen; ?:TPoint; ?:?):?;//004A9BEC
    constructor _NF__A5A;//004A9C2C
    constructor sub_004A9C3C;//004A9C3C
    destructor Destroy;//004A9E90
    procedure sub_004A9FF0(?:TApplication);//004A9FF0
    //procedure sub_004AA1CC(?:TApplication; ?:?);//004AA1CC
    //procedure sub_004AA2F0(?:?; ?:?);//004AA2F0
    procedure sub_004AA3C0(?:TApplication);//004AA3C0
    procedure sub_004AA400(?:TApplication);//004AA400
    procedure sub_004AA440(?:TApplication);//004AA440
    procedure sub_004AA454(?:TApplication);//004AA454
    procedure sub_004AA468(?:TApplication);//004AA468
    //function sub_004AA4F4(?:?):?;//004AA4F4
    //function sub_004AA524(?:TApplication):?;//004AA524
    //function sub_004AA554(?:TApplication; ?:?):?;//004AA554
    //procedure sub_004AA5C4(?:TApplication; ?:?);//004AA5C4
    procedure Default;//004AA644
    //procedure sub_004AA680(?:?);//004AA680
    //procedure sub_004AA6CC(?:TApplication; ?:?);//004AA6CC
    //function sub_004AAE0C(?:TApplication):?;//004AAE0C
    procedure sub_004AAE44(?:TApplication);//004AAE44
    procedure sub_004AAF30(?:TApplication);//004AAF30
    procedure sub_004AB074(?:TApplication);//004AB074
    //procedure sub_004AB0D0(?:TApplication; ?:?);//004AB0D0
    procedure sub_004AB12C(?:TApplication; ?:AnsiString);//004AB12C
    //function sub_004AB1D0(?:?; ?:?):?;//004AB1D0
    //function sub_004AB210(?:TApplication; ?:?):?;//004AB210
    //function sub_004AB27C(?:TApplication; ?:?):?;//004AB27C
    //function sub_004AB390(?:TApplication; ?:?):?;//004AB390
    //function sub_004AB3D4(?:TApplication; ?:?):?;//004AB3D4
    //function sub_004AB454(?:TApplication; ?:?):?;//004AB454
    procedure sub_004AB51C(?:TApplication);//004AB51C
    procedure sub_004AB538(?:TApplication);//004AB538
    //procedure sub_004AB560(?:TApplication; ?:?; ?:?);//004AB560
    //procedure sub_004AB5D8(?:TApplication; ?:?; ?:?);//004AB5D8
    //procedure sub_004AB688(?:?);//004AB688
    //procedure sub_004AB6A8(?:?; ?:?; ?:?);//004AB6A8
    //procedure sub_004AB73C(?:?);//004AB73C
    procedure sub_004AB838(?:TApplication);//004AB838
    //function sub_004AB8F4(?:?; ?:PChar; ?:?; ?:?):?;//004AB8F4
    procedure sub_004ABA5C(?:TApplication; ?:Exception);//004ABA5C
    //function sub_004ABB38(?:TApplication; ?:?; ?:THelpContext):?;//004ABB38
    //function sub_004ABCEC(?:?; ?:PChar; ?:?):?;//004ABCEC
    //function sub_004ABD7C(?:TApplication; ?:?):?;//004ABD7C
    //function sub_004ABE14(?:TApplication; ?:THelpContext):?;//004ABE14
    //function sub_004ABEA8(?:TApplication; ?:?; ?:THelpContext):?;//004ABEA8
    procedure sub_004ABED0(?:TApplication; ?:Boolean);//004ABED0
    procedure sub_004ABF4C(?:TApplication);//004ABF4C
    //function sub_004ABFC8(?:TApplication):?;//004ABFC8
    //procedure sub_004AC074(?:TApplication; ?:?);//004AC074
    //procedure sub_004AC198(?:TApplication; ?:?);//004AC198
    //procedure sub_004AC1E8(?:?; ?:?);//004AC1E8
    //procedure sub_004AC264(?:TApplication; ?:?);//004AC264
    //procedure sub_004AC310(?:?; ?:?);//004AC310
    procedure sub_004AC370(?:TApplication);//004AC370
    //function sub_004AC410(?:TApplication):?;//004AC410
    //procedure sub_004AC44C(?:TApplication; ?:Integer; ?:?);//004AC44C
    procedure sub_004AC4A4(?:TApplication);//004AC4A4
    //procedure sub_004AC4DC(?:TApplication; ?:TControl; ?:?);//004AC4DC
    procedure sub_004AC658(?:TApplication);//004AC658
    procedure sub_004AC6B0(?:TApplication);//004AC6B0
    //function sub_004AC6E8(?:?; ?:Integer):?;//004AC6E8
    //function sub_004AC6FC:?;//004AC6FC
    //procedure sub_004AC880(?:?; ?:?);//004AC880
    //function sub_004AC8E8(?:AnsiString; ?:?):?;//004AC8E8
    //procedure sub_004AC9C0(?:TApplication; ?:?);//004AC9C0
    //procedure sub_004ACD94(?:TApplication; ?:?);//004ACD94
    //function sub_004ACDE4(?:TApplication; ?:?; ?:?):?;//004ACDE4
    //function sub_004ACE90(?:TApplication; ?:TContainedAction):?;//004ACE90
    //function sub_004ACECC(?:TApplication; ?:TContainedAction):?;//004ACECC
    procedure sub_004ACF08;//004ACF08
    //procedure sub_004ACF60(?:?; ?:?);//004ACF60
    procedure sub_004ACF84(?:TApplication);//004ACF84
    //procedure sub_004ACFA0(?:?);//004ACFA0
    procedure _NF__BA6;//004ACFB8

implementation

//004A0100
{*function sub_004A0100:?;
begin
 004A0100    push        ebp
 004A0101    mov         ebp,esp
 004A0103    push        ecx
 004A0104    mov         eax,[0056C9C4];0x0 gvar_0056C9C4
 004A0109    mov         dword ptr [ebp-4],eax
 004A010C    mov         eax,dword ptr [ebp-4]
 004A010F    pop         ecx
 004A0110    pop         ebp
 004A0111    ret
end;*}

//004A0114
{*procedure sub_004A0114(?:?);
begin
 004A0114    push        ebp
 004A0115    mov         ebp,esp
 004A0117    push        ecx
 004A0118    mov         dword ptr [ebp-4],eax
 004A011B    mov         eax,dword ptr [ebp-4]
 004A011E    mov         [0056C9C4],eax;gvar_0056C9C4
 004A0123    pop         ecx
 004A0124    pop         ebp
 004A0125    ret
end;*}

//004A0128
procedure ShowMDIClientEdge(ClientHandle:THandle; ShowEdge:Boolean);
begin
{*
 004A0128    push        ebp
 004A0129    mov         ebp,esp
 004A012B    add         esp,0FFFFFFF4
 004A012E    mov         byte ptr [ebp-5],dl
 004A0131    mov         dword ptr [ebp-4],eax
 004A0134    cmp         dword ptr [ebp-4],0
>004A0138    je          004A018E
 004A013A    push        0EC
 004A013C    mov         eax,dword ptr [ebp-4]
 004A013F    push        eax
 004A0140    call        user32.GetWindowLongA
 004A0145    mov         dword ptr [ebp-0C],eax
 004A0148    cmp         byte ptr [ebp-5],0
>004A014C    je          004A015D
 004A014E    test        byte ptr [ebp-0B],2
>004A0152    jne         004A018E
 004A0154    or          dword ptr [ebp-0C],200
>004A015B    jmp         004A016A
 004A015D    test        byte ptr [ebp-0B],2
>004A0161    je          004A018E
 004A0163    and         dword ptr [ebp-0C],0FFFFFDFF
 004A016A    mov         eax,dword ptr [ebp-0C]
 004A016D    push        eax
 004A016E    push        0EC
 004A0170    mov         eax,dword ptr [ebp-4]
 004A0173    push        eax
 004A0174    call        user32.SetWindowLongA
 004A0179    push        37
 004A017B    push        0
 004A017D    push        0
 004A017F    push        0
 004A0181    push        0
 004A0183    push        0
 004A0185    mov         eax,dword ptr [ebp-4]
 004A0188    push        eax
 004A0189    call        user32.SetWindowPos
 004A018E    mov         esp,ebp
 004A0190    pop         ebp
 004A0191    ret
*}
end;

//004A0194
procedure DoneApplication;
begin
{*
 004A0194    mov         eax,[00571E3C];Application:TApplication
 004A0199    cmp         dword ptr [eax+30],0
>004A019D    je          004A01AF
 004A019F    push        0
 004A01A1    mov         eax,[00571E3C];Application:TApplication
 004A01A6    mov         eax,dword ptr [eax+30]
 004A01A9    push        eax
 004A01AA    call        user32.ShowOwnedPopups
 004A01AF    xor         edx,edx
 004A01B1    mov         eax,[00571E3C];Application:TApplication
 004A01B6    call        004ABED0
 004A01BB    mov         eax,[00571E3C];Application:TApplication
 004A01C0    call        0042A578
 004A01C5    mov         eax,[00571E3C];Application:TApplication
 004A01CA    call        0042A508
 004A01CF    ret
*}
end;

//004A0240
{*function sub_004A0240(?:HWND):?;
begin
 004A0240    push        ebp
 004A0241    mov         ebp,esp
 004A0243    add         esp,0FFFFFFF0
 004A0246    push        ebx
 004A0247    push        esi
 004A0248    push        edi
 004A0249    mov         dword ptr [ebp-4],eax
 004A024C    xor         eax,eax
 004A024E    mov         dword ptr [ebp-8],eax
 004A0251    mov         eax,[0056C9C8];0x0 gvar_0056C9C8
 004A0256    mov         dword ptr [ebp-0C],eax
 004A0259    mov         eax,[0056C9D4];0x0 gvar_0056C9D4
 004A025E    mov         dword ptr [ebp-10],eax
 004A0261    mov         eax,dword ptr [ebp-4]
 004A0264    mov         [0056C9C8],eax;gvar_0056C9C8
 004A0269    xor         eax,eax
 004A026B    mov         [0056C9D4],eax;gvar_0056C9D4
 004A0270    xor         eax,eax
 004A0272    push        ebp
 004A0273    push        4A02E7
 004A0278    push        dword ptr fs:[eax]
 004A027B    mov         dword ptr fs:[eax],esp
 004A027E    xor         eax,eax
 004A0280    push        ebp
 004A0281    push        4A02B0
 004A0286    push        dword ptr fs:[eax]
 004A0289    mov         dword ptr fs:[eax],esp
 004A028C    push        0
 004A028E    push        4A01D0
 004A0293    call        kernel32.GetCurrentThreadId
 004A0298    push        eax
 004A0299    call        user32.EnumThreadWindows
 004A029E    mov         eax,[0056C9D4];0x0 gvar_0056C9D4
 004A02A3    mov         dword ptr [ebp-8],eax
 004A02A6    xor         eax,eax
 004A02A8    pop         edx
 004A02A9    pop         ecx
 004A02AA    pop         ecx
 004A02AB    mov         dword ptr fs:[eax],edx
>004A02AE    jmp         004A02C9
>004A02B0    jmp         @HandleAnyException
 004A02B5    mov         eax,[0056C9D4];0x0 gvar_0056C9D4
 004A02BA    call        004A02F8
 004A02BF    call        @RaiseAgain
 004A02C4    call        @DoneExcept
 004A02C9    xor         eax,eax
 004A02CB    pop         edx
 004A02CC    pop         ecx
 004A02CD    pop         ecx
 004A02CE    mov         dword ptr fs:[eax],edx
 004A02D1    push        4A02EE
 004A02D6    mov         eax,dword ptr [ebp-10]
 004A02D9    mov         [0056C9D4],eax;gvar_0056C9D4
 004A02DE    mov         eax,dword ptr [ebp-0C]
 004A02E1    mov         [0056C9C8],eax;gvar_0056C9C8
 004A02E6    ret
>004A02E7    jmp         @HandleFinally
>004A02EC    jmp         004A02D6
 004A02EE    mov         eax,dword ptr [ebp-8]
 004A02F1    pop         edi
 004A02F2    pop         esi
 004A02F3    pop         ebx
 004A02F4    mov         esp,ebp
 004A02F6    pop         ebp
 004A02F7    ret
end;*}

//004A02F8
procedure sub_004A02F8(?:Pointer);
begin
{*
 004A02F8    push        ebp
 004A02F9    mov         ebp,esp
 004A02FB    add         esp,0FFFFFFF8
 004A02FE    mov         dword ptr [ebp-4],eax
 004A0301    cmp         dword ptr [ebp-4],0
>004A0305    je          004A0346
 004A0307    mov         eax,dword ptr [ebp-4]
 004A030A    mov         dword ptr [ebp-8],eax
 004A030D    mov         eax,dword ptr [ebp-8]
 004A0310    mov         eax,dword ptr [eax+4]
 004A0313    push        eax
 004A0314    call        user32.IsWindow
 004A0319    test        eax,eax
>004A031B    je          004A032B
 004A031D    push        0FF
 004A031F    mov         eax,dword ptr [ebp-8]
 004A0322    mov         eax,dword ptr [eax+4]
 004A0325    push        eax
 004A0326    call        user32.EnableWindow
 004A032B    mov         eax,dword ptr [ebp-8]
 004A032E    mov         eax,dword ptr [eax]
 004A0330    mov         dword ptr [ebp-4],eax
 004A0333    mov         edx,8
 004A0338    mov         eax,dword ptr [ebp-8]
 004A033B    call        @FreeMem
 004A0340    cmp         dword ptr [ebp-4],0
>004A0344    jne         004A0307
 004A0346    pop         ecx
 004A0347    pop         ecx
 004A0348    pop         ebp
 004A0349    ret
*}
end;

//004A03C4
{*function sub_004A03C4(?:HWND):?;
begin
 004A03C4    push        ebp
 004A03C5    mov         ebp,esp
 004A03C7    add         esp,0FFFFFFF8
 004A03CA    mov         dword ptr [ebp-4],eax
 004A03CD    mov         eax,dword ptr [ebp-4]
 004A03D0    mov         [0056C9C8],eax;gvar_0056C9C8
 004A03D5    xor         eax,eax
 004A03D7    mov         [0056C9CC],eax;gvar_0056C9CC
 004A03DC    xor         eax,eax
 004A03DE    mov         [0056C9D0],eax;gvar_0056C9D0
 004A03E3    push        0
 004A03E5    push        4A034C
 004A03EA    call        kernel32.GetCurrentThreadId
 004A03EF    push        eax
 004A03F0    call        user32.EnumThreadWindows
 004A03F5    cmp         dword ptr ds:[56C9CC],0;gvar_0056C9CC
>004A03FC    je          004A0408
 004A03FE    mov         eax,[0056C9CC];0x0 gvar_0056C9CC
 004A0403    mov         dword ptr [ebp-8],eax
>004A0406    jmp         004A0410
 004A0408    mov         eax,[0056C9D0];0x0 gvar_0056C9D0
 004A040D    mov         dword ptr [ebp-8],eax
 004A0410    mov         eax,dword ptr [ebp-8]
 004A0413    pop         ecx
 004A0414    pop         ecx
 004A0415    pop         ebp
 004A0416    ret
end;*}

//004A0418
{*function sub_004A0418(?:HWND; ?:?):?;
begin
 004A0418    push        ebp
 004A0419    mov         ebp,esp
 004A041B    add         esp,0FFFFFFF4
 004A041E    mov         word ptr [ebp-6],dx
 004A0422    mov         dword ptr [ebp-4],eax
 004A0425    mov         eax,[0056C9C4];0x0 gvar_0056C9C4
 004A042A    mov         dword ptr [ebp-0C],eax
 004A042D    push        0
 004A042F    push        0
 004A0431    movzx       eax,word ptr [ebp-6]
 004A0435    push        eax
 004A0436    mov         eax,dword ptr [ebp-4]
 004A0439    push        eax
 004A043A    call        user32.SendMessageA
 004A043F    mov         eax,[0056C9C4];0x0 gvar_0056C9C4
 004A0444    cmp         eax,dword ptr [ebp-0C]
 004A0447    sete        byte ptr [ebp-7]
 004A044B    mov         al,byte ptr [ebp-7]
 004A044E    mov         esp,ebp
 004A0450    pop         ebp
 004A0451    ret
end;*}

//004A0480
{*function sub_004A0480:?;
begin
 004A0480    push        ebp
 004A0481    mov         ebp,esp
 004A0483    add         esp,0FFFFFFF4
 004A0486    call        user32.GetActiveWindow
 004A048B    mov         dword ptr [ebp-0C],eax
 004A048E    mov         byte ptr [ebp-8],0
 004A0492    lea         eax,[ebp-0C]
 004A0495    push        eax
 004A0496    push        4A0454
 004A049B    call        kernel32.GetCurrentThreadId
 004A04A0    push        eax
 004A04A1    call        user32.EnumThreadWindows
 004A04A6    mov         al,byte ptr [ebp-8]
 004A04A9    mov         byte ptr [ebp-1],al
 004A04AC    mov         al,byte ptr [ebp-1]
 004A04AF    mov         esp,ebp
 004A04B1    pop         ebp
 004A04B2    ret
end;*}

//004A04B4
function FindGlobalComponent(const Name:AnsiString):TComponent;
begin
{*
 004A04B4    push        ebp
 004A04B5    mov         ebp,esp
 004A04B7    add         esp,0FFFFFFF0
 004A04BA    mov         dword ptr [ebp-4],eax
 004A04BD    mov         eax,[00571E40];Screen:TScreen
 004A04C2    call        004A89B4
 004A04C7    dec         eax
 004A04C8    test        eax,eax
>004A04CA    jl          004A050A
 004A04CC    inc         eax
 004A04CD    mov         dword ptr [ebp-10],eax
 004A04D0    mov         dword ptr [ebp-0C],0
 004A04D7    mov         edx,dword ptr [ebp-0C]
 004A04DA    mov         eax,[00571E40];Screen:TScreen
 004A04DF    call        004A8990
 004A04E4    mov         dword ptr [ebp-8],eax
 004A04E7    mov         eax,dword ptr [ebp-8]
 004A04EA    test        byte ptr [eax+1D],2
>004A04EE    jne         004A0502
 004A04F0    mov         eax,dword ptr [ebp-8]
 004A04F3    mov         edx,dword ptr [eax+8]
 004A04F6    mov         eax,dword ptr [ebp-4]
 004A04F9    call        CompareText
 004A04FE    test        eax,eax
>004A0500    je          004A0553
 004A0502    inc         dword ptr [ebp-0C]
 004A0505    dec         dword ptr [ebp-10]
>004A0508    jne         004A04D7
 004A050A    mov         eax,[00571E40];Screen:TScreen
 004A050F    call        004A8FEC
 004A0514    dec         eax
 004A0515    test        eax,eax
>004A0517    jl          004A054E
 004A0519    inc         eax
 004A051A    mov         dword ptr [ebp-10],eax
 004A051D    mov         dword ptr [ebp-0C],0
 004A0524    mov         edx,dword ptr [ebp-0C]
 004A0527    mov         eax,[00571E40];Screen:TScreen
 004A052C    call        004A8FC8
 004A0531    mov         dword ptr [ebp-8],eax
 004A0534    mov         eax,dword ptr [ebp-8]
 004A0537    mov         edx,dword ptr [eax+8]
 004A053A    mov         eax,dword ptr [ebp-4]
 004A053D    call        CompareText
 004A0542    test        eax,eax
>004A0544    je          004A0553
 004A0546    inc         dword ptr [ebp-0C]
 004A0549    dec         dword ptr [ebp-10]
>004A054C    jne         004A0524
 004A054E    xor         eax,eax
 004A0550    mov         dword ptr [ebp-8],eax
 004A0553    mov         eax,dword ptr [ebp-8]
 004A0556    mov         esp,ebp
 004A0558    pop         ebp
 004A0559    ret
*}
end;

//004A055C
{*function sub_004A055C(?:?; ?:?):?;
begin
 004A055C    push        ebp
 004A055D    mov         ebp,esp
 004A055F    push        ecx
 004A0560    push        dword ptr [ebp+0C]
 004A0563    push        dword ptr [ebp+8]
 004A0566    call        0042B9AC
 004A056B    mov         dword ptr [ebp-4],eax
 004A056E    mov         eax,dword ptr [ebp-4]
 004A0571    pop         ecx
 004A0572    pop         ebp
 004A0573    ret         8
end;*}

//004A0578
{*procedure sub_004A0578(?:?);
begin
 004A0578    push        ebp
 004A0579    mov         ebp,esp
 004A057B    push        ecx
 004A057C    mov         dword ptr [ebp-4],eax
 004A057F    mov         eax,dword ptr [ebp-4]
 004A0582    call        0042BA8C
 004A0587    pop         ecx
 004A0588    pop         ebp
 004A0589    ret
end;*}

//004A058C
{*function sub_004A058C(?:?):?;
begin
 004A058C    push        ebp
 004A058D    mov         ebp,esp
 004A058F    push        ecx
 004A0590    mov         word ptr [ebp-2],ax
 004A0594    mov         al,[004A05E4];0x0 gvar_004A05E4
 004A0599    mov         byte ptr [ebp-3],al
 004A059C    test        byte ptr [ebp-2],4
>004A05A0    je          004A05A6
 004A05A2    or          byte ptr [ebp-3],1
 004A05A6    test        byte ptr [ebp-2],8
>004A05AA    je          004A05B0
 004A05AC    or          byte ptr [ebp-3],4
 004A05B0    test        byte ptr [ebp-2],1
>004A05B4    je          004A05BA
 004A05B6    or          byte ptr [ebp-3],8
 004A05BA    test        byte ptr [ebp-2],2
>004A05BE    je          004A05C4
 004A05C0    or          byte ptr [ebp-3],10
 004A05C4    test        byte ptr [ebp-2],10
>004A05C8    je          004A05CE
 004A05CA    or          byte ptr [ebp-3],20
 004A05CE    push        12
 004A05D0    call        user32.GetKeyState
 004A05D5    test        ax,ax
>004A05D8    jge         004A05DE
 004A05DA    or          byte ptr [ebp-3],2
 004A05DE    mov         al,byte ptr [ebp-3]
 004A05E1    pop         ecx
 004A05E2    pop         ebp
 004A05E3    ret
end;*}

//004A05E8
{*function sub_004A05E8(?:?):?;
begin
 004A05E8    push        ebp
 004A05E9    mov         ebp,esp
 004A05EB    add         esp,0FFFFFFF8
 004A05EE    mov         dword ptr [ebp-4],eax
 004A05F1    mov         al,[004A062C];0x0 gvar_004A062C
 004A05F6    mov         byte ptr [ebp-5],al
 004A05F9    push        10
 004A05FB    call        user32.GetKeyState
 004A0600    test        ax,ax
>004A0603    jge         004A0609
 004A0605    or          byte ptr [ebp-5],1
 004A0609    push        11
 004A060B    call        user32.GetKeyState
 004A0610    test        ax,ax
>004A0613    jge         004A0619
 004A0615    or          byte ptr [ebp-5],4
 004A0619    test        byte ptr [ebp-1],20
>004A061D    je          004A0623
 004A061F    or          byte ptr [ebp-5],2
 004A0623    mov         al,byte ptr [ebp-5]
 004A0626    pop         ecx
 004A0627    pop         ecx
 004A0628    pop         ebp
 004A0629    ret
end;*}

//004A0630
{*function sub_004A0630(?:?):?;
begin
 004A0630    push        ebp
 004A0631    mov         ebp,esp
 004A0633    add         esp,0FFFFFFF8
 004A0636    mov         dword ptr [ebp-4],eax
 004A0639    mov         al,[004A0698];0x0 gvar_004A0698
 004A063E    mov         byte ptr [ebp-5],al
 004A0641    mov         eax,dword ptr [ebp-4]
 004A0644    test        byte ptr [eax+10],80
>004A0648    je          004A064E
 004A064A    or          byte ptr [ebp-5],1
 004A064E    mov         eax,dword ptr [ebp-4]
 004A0651    test        byte ptr [eax+11],80
>004A0655    je          004A065B
 004A0657    or          byte ptr [ebp-5],4
 004A065B    mov         eax,dword ptr [ebp-4]
 004A065E    test        byte ptr [eax+12],80
>004A0662    je          004A0668
 004A0664    or          byte ptr [ebp-5],2
 004A0668    mov         eax,dword ptr [ebp-4]
 004A066B    test        byte ptr [eax+1],80
>004A066F    je          004A0675
 004A0671    or          byte ptr [ebp-5],8
 004A0675    mov         eax,dword ptr [ebp-4]
 004A0678    test        byte ptr [eax+2],80
>004A067C    je          004A0682
 004A067E    or          byte ptr [ebp-5],10
 004A0682    mov         eax,dword ptr [ebp-4]
 004A0685    test        byte ptr [eax+4],80
>004A0689    je          004A068F
 004A068B    or          byte ptr [ebp-5],20
 004A068F    mov         al,byte ptr [ebp-5]
 004A0692    pop         ecx
 004A0693    pop         ecx
 004A0694    pop         ebp
 004A0695    ret
end;*}

//004A069C
{*function sub_004A069C:?;
begin
 004A069C    push        ebp
 004A069D    mov         ebp,esp
 004A069F    add         esp,0FFFFFEFC
 004A06A5    lea         eax,[ebp-101]
 004A06AB    push        eax
 004A06AC    call        user32.GetKeyboardState
 004A06B1    lea         eax,[ebp-101]
 004A06B7    call        004A0630
 004A06BC    mov         byte ptr [ebp-1],al
 004A06BF    mov         al,byte ptr [ebp-1]
 004A06C2    mov         esp,ebp
 004A06C4    pop         ebp
 004A06C5    ret
end;*}

//004A06C8
{*function sub_004A06C8(?:?; ?:?):?;
begin
 004A06C8    push        ebp
 004A06C9    mov         ebp,esp
 004A06CB    add         esp,0FFFFFFEC
 004A06CE    xor         ecx,ecx
 004A06D0    mov         dword ptr [ebp-10],ecx
 004A06D3    mov         dword ptr [ebp-14],ecx
 004A06D6    mov         dword ptr [ebp-8],edx
 004A06D9    mov         word ptr [ebp-2],ax
 004A06DD    xor         eax,eax
 004A06DF    push        ebp
 004A06E0    push        4A072F
 004A06E5    push        dword ptr fs:[eax]
 004A06E8    mov         dword ptr fs:[eax],esp
 004A06EB    lea         edx,[ebp-10]
 004A06EE    mov         eax,dword ptr [ebp-8]
 004A06F1    call        0049E0B8
 004A06F6    mov         eax,dword ptr [ebp-10]
 004A06F9    push        eax
 004A06FA    lea         eax,[ebp-14]
 004A06FD    mov         dl,byte ptr [ebp-2]
 004A0700    call        @LStrFromChar
 004A0705    mov         eax,dword ptr [ebp-14]
 004A0708    pop         edx
 004A0709    call        CompareText
 004A070E    test        eax,eax
 004A0710    sete        byte ptr [ebp-9]
 004A0714    xor         eax,eax
 004A0716    pop         edx
 004A0717    pop         ecx
 004A0718    pop         ecx
 004A0719    mov         dword ptr fs:[eax],edx
 004A071C    push        4A0736
 004A0721    lea         eax,[ebp-14]
 004A0724    mov         edx,2
 004A0729    call        @LStrArrayClr
 004A072E    ret
>004A072F    jmp         @HandleFinally
>004A0734    jmp         004A0721
 004A0736    mov         al,byte ptr [ebp-9]
 004A0739    mov         esp,ebp
 004A073B    pop         ebp
 004A073C    ret
end;*}

//004A0740
{*function sub_004A0740(?:TControl):?;
begin
 004A0740    push        ebp
 004A0741    mov         ebp,esp
 004A0743    add         esp,0FFFFFFF8
 004A0746    mov         dword ptr [ebp-4],eax
>004A0749    jmp         004A0754
 004A074B    mov         eax,dword ptr [ebp-4]
 004A074E    mov         eax,dword ptr [eax+30];TControl.FParent:TWinControl
 004A0751    mov         dword ptr [ebp-4],eax
 004A0754    mov         eax,dword ptr [ebp-4]
 004A0757    cmp         dword ptr [eax+30],0;TWinControl.FParent:TWinControl
>004A075B    jne         004A074B
 004A075D    mov         eax,dword ptr [ebp-4]
 004A0760    mov         edx,dword ptr ds:[49EC6C];TCustomForm
 004A0766    call        @IsClass
 004A076B    test        al,al
>004A076D    je          004A0777
 004A076F    mov         eax,dword ptr [ebp-4]
 004A0772    mov         dword ptr [ebp-8],eax
>004A0775    jmp         004A077C
 004A0777    xor         eax,eax
 004A0779    mov         dword ptr [ebp-8],eax
 004A077C    mov         eax,dword ptr [ebp-8]
 004A077F    pop         ecx
 004A0780    pop         ecx
 004A0781    pop         ebp
 004A0782    ret
end;*}

//004A0784
{*function sub_004A0784(?:TControl):?;
begin
 004A0784    push        ebp
 004A0785    mov         ebp,esp
 004A0787    add         esp,0FFFFFFEC
 004A078A    xor         edx,edx
 004A078C    mov         dword ptr [ebp-14],edx
 004A078F    mov         dword ptr [ebp-4],eax
 004A0792    xor         eax,eax
 004A0794    push        ebp
 004A0795    push        4A07FB
 004A079A    push        dword ptr fs:[eax]
 004A079D    mov         dword ptr fs:[eax],esp
 004A07A0    mov         eax,dword ptr [ebp-4]
 004A07A3    call        004A0740
 004A07A8    mov         dword ptr [ebp-8],eax
 004A07AB    cmp         dword ptr [ebp-8],0
>004A07AF    jne         004A07E5
 004A07B1    mov         eax,dword ptr [ebp-4]
 004A07B4    mov         eax,dword ptr [eax+8];TControl.Name:TComponentName
 004A07B7    mov         dword ptr [ebp-10],eax
 004A07BA    mov         byte ptr [ebp-0C],0B
 004A07BE    lea         eax,[ebp-10]
 004A07C1    push        eax
 004A07C2    push        0
 004A07C4    lea         edx,[ebp-14]
 004A07C7    mov         eax,[0056E43C];^SParentRequired:TResStringRec
 004A07CC    call        LoadResString
 004A07D1    mov         ecx,dword ptr [ebp-14]
 004A07D4    mov         dl,1
 004A07D6    mov         eax,[0041D40C];EInvalidOperation
 004A07DB    call        Exception.CreateFmt;EInvalidOperation.Create
 004A07E0    call        @RaiseExcept
 004A07E5    xor         eax,eax
 004A07E7    pop         edx
 004A07E8    pop         ecx
 004A07E9    pop         ecx
 004A07EA    mov         dword ptr fs:[eax],edx
 004A07ED    push        4A0802
 004A07F2    lea         eax,[ebp-14]
 004A07F5    call        @LStrClr
 004A07FA    ret
>004A07FB    jmp         @HandleFinally
>004A0800    jmp         004A07F2
 004A0802    mov         eax,dword ptr [ebp-8]
 004A0805    mov         esp,ebp
 004A0807    pop         ebp
 004A0808    ret
end;*}

//004A080C
{*constructor TControlScrollBar.Create(?:?);
begin
 004A080C    push        ebp
 004A080D    mov         ebp,esp
 004A080F    add         esp,0FFFFFFF4
 004A0812    test        dl,dl
>004A0814    je          004A081E
 004A0816    add         esp,0FFFFFFF0
 004A0819    call        @ClassCreate
 004A081E    mov         dword ptr [ebp-0C],ecx
 004A0821    mov         byte ptr [ebp-5],dl
 004A0824    mov         dword ptr [ebp-4],eax
 004A0827    xor         edx,edx
 004A0829    mov         eax,dword ptr [ebp-4]
 004A082C    call        TObject.Create
 004A0831    mov         eax,dword ptr [ebp-4]
 004A0834    mov         edx,dword ptr [ebp-0C]
 004A0837    mov         dword ptr [eax+4],edx
 004A083A    mov         eax,dword ptr [ebp-4]
 004A083D    mov         dl,byte ptr [ebp+8]
 004A0840    mov         byte ptr [eax+18],dl
 004A0843    mov         eax,dword ptr [ebp-4]
 004A0846    mov         word ptr [eax+0A],50
 004A084C    mov         eax,dword ptr [ebp-4]
 004A084F    movzx       eax,word ptr [eax+0A]
 004A0853    mov         ecx,0A
 004A0858    xor         edx,edx
 004A085A    div         eax,ecx
 004A085C    mov         edx,dword ptr [ebp-4]
 004A085F    mov         word ptr [edx+8],ax
 004A0863    mov         eax,dword ptr [ebp-4]
 004A0866    mov         byte ptr [eax+1C],1
 004A086A    mov         eax,dword ptr [ebp-4]
 004A086D    mov         dword ptr [eax+20],0A
 004A0874    mov         eax,dword ptr [ebp-4]
 004A0877    mov         dword ptr [eax+40],4
 004A087E    mov         eax,dword ptr [ebp-4]
 004A0881    mov         dword ptr [eax+3C],0C
 004A0888    mov         eax,dword ptr [ebp-4]
 004A088B    mov         dword ptr [eax+28],0FF000014
 004A0892    mov         eax,dword ptr [ebp-4]
 004A0895    mov         byte ptr [eax+2C],1
 004A0899    mov         eax,dword ptr [ebp-4]
 004A089C    mov         byte ptr [eax+44],1
 004A08A0    mov         eax,dword ptr [ebp-4]
 004A08A3    cmp         byte ptr [ebp-5],0
>004A08A7    je          004A08B8
 004A08A9    call        @AfterConstruction
 004A08AE    pop         dword ptr fs:[0]
 004A08B5    add         esp,0C
 004A08B8    mov         eax,dword ptr [ebp-4]
 004A08BB    mov         esp,ebp
 004A08BD    pop         ebp
 004A08BE    ret         4
end;*}

//004A08C4
function TControlScrollBar.IsStoredIncrement(Value:TScrollBarInc):Boolean;
begin
{*
 004A08C4    push        ebp
 004A08C5    mov         ebp,esp
 004A08C7    add         esp,0FFFFFFF8
 004A08CA    mov         dword ptr [ebp-4],eax
 004A08CD    mov         eax,dword ptr [ebp-4]
 004A08D0    mov         al,byte ptr [eax+1F];TControlScrollBar.Smooth:Boolean
 004A08D3    xor         al,1
 004A08D5    mov         byte ptr [ebp-5],al
 004A08D8    mov         al,byte ptr [ebp-5]
 004A08DB    pop         ecx
 004A08DC    pop         ecx
 004A08DD    pop         ebp
 004A08DE    ret
*}
end;

//004A08E0
{*procedure sub_004A08E0(?:?);
begin
 004A08E0    push        ebp
 004A08E1    mov         ebp,esp
 004A08E3    add         esp,0FFFFFFF8
 004A08E6    mov         dword ptr [ebp-8],edx
 004A08E9    mov         dword ptr [ebp-4],eax
 004A08EC    mov         eax,dword ptr [ebp-8]
 004A08EF    mov         edx,dword ptr ds:[49E3AC];TControlScrollBar
 004A08F5    call        @IsClass
 004A08FA    test        al,al
>004A08FC    je          004A0938
 004A08FE    mov         eax,dword ptr [ebp-8]
 004A0901    mov         dl,byte ptr [eax+1C]
 004A0904    mov         eax,dword ptr [ebp-4]
 004A0907    call        TControlScrollBar.SetVisible
 004A090C    mov         eax,dword ptr [ebp-8]
 004A090F    mov         edx,dword ptr [eax+10]
 004A0912    mov         eax,dword ptr [ebp-4]
 004A0915    call        TControlScrollBar.SetRange
 004A091A    mov         eax,dword ptr [ebp-8]
 004A091D    mov         edx,dword ptr [eax+0C]
 004A0920    mov         eax,dword ptr [ebp-4]
 004A0923    call        TControlScrollBar.SetPosition
 004A0928    mov         eax,dword ptr [ebp-8]
 004A092B    mov         ax,word ptr [eax+8]
 004A092F    mov         edx,dword ptr [ebp-4]
 004A0932    mov         word ptr [edx+8],ax;TControlScrollBar.Increment:TScrollBarInc
>004A0936    jmp         004A0943
 004A0938    mov         edx,dword ptr [ebp-8]
 004A093B    mov         eax,dword ptr [ebp-4]
 004A093E    call        00420AD4
 004A0943    pop         ecx
 004A0944    pop         ecx
 004A0945    pop         ebp
 004A0946    ret
end;*}

//004A0948
procedure TControlScrollBar.ChangeBiDiPosition;
begin
{*
 004A0948    push        ebp
 004A0949    mov         ebp,esp
 004A094B    push        ecx
 004A094C    mov         dword ptr [ebp-4],eax
 004A094F    mov         eax,dword ptr [ebp-4]
 004A0952    cmp         byte ptr [eax+18],0
>004A0956    jne         004A098D
 004A0958    mov         eax,dword ptr [ebp-4]
 004A095B    call        004A0B48
 004A0960    test        al,al
>004A0962    je          004A098D
 004A0964    mov         eax,dword ptr [ebp-4]
 004A0967    mov         eax,dword ptr [eax+4]
 004A096A    call        0048418C
 004A096F    test        al,al
>004A0971    jne         004A097F
 004A0973    xor         edx,edx
 004A0975    mov         eax,dword ptr [ebp-4]
 004A0978    call        TControlScrollBar.SetPosition
>004A097D    jmp         004A098D
 004A097F    mov         eax,dword ptr [ebp-4]
 004A0982    mov         edx,dword ptr [eax+10]
 004A0985    mov         eax,dword ptr [ebp-4]
 004A0988    call        TControlScrollBar.SetPosition
 004A098D    pop         ecx
 004A098E    pop         ebp
 004A098F    ret
*}
end;

//004A0990
{*procedure sub_004A0990(?:?; ?:?);
begin
 004A0990    push        ebp
 004A0991    mov         ebp,esp
 004A0993    push        ecx
 004A0994    mov         dword ptr [ebp-4],eax
 004A0997    mov         eax,dword ptr [ebp-4]
 004A099A    cmp         byte ptr [eax+57],0
>004A099E    je          004A0A06
 004A09A0    mov         eax,dword ptr [ebp-4]
 004A09A3    mov         al,byte ptr [eax+5B]
 004A09A6    sub         al,1
>004A09A8    jb          004A09B4
 004A09AA    sub         al,2
>004A09AC    je          004A09B4
 004A09AE    dec         al
>004A09B0    je          004A09FA
>004A09B2    jmp         004A0A06
 004A09B4    mov         eax,dword ptr [ebp-4]
 004A09B7    cmp         byte ptr [eax+5B],3
>004A09BB    je          004A09D2
 004A09BD    mov         al,[004A0A0C];0x5 gvar_004A0A0C
 004A09C2    mov         edx,dword ptr [ebp-4]
 004A09C5    and         al,byte ptr [edx+61]
 004A09C8    mov         dl,byte ptr ds:[4A0A10];0x1 gvar_004A0A10
 004A09CE    cmp         dl,al
>004A09D0    jne         004A0A06
 004A09D2    mov         eax,dword ptr [ebp+8]
 004A09D5    mov         eax,dword ptr [eax-8]
 004A09D8    mov         edx,dword ptr [eax+0C]
 004A09DB    mov         eax,dword ptr [ebp-4]
 004A09DE    add         edx,dword ptr [eax+40]
 004A09E1    mov         eax,dword ptr [ebp-4]
 004A09E4    add         edx,dword ptr [eax+48]
 004A09E7    mov         eax,dword ptr [ebp+8]
 004A09EA    mov         eax,dword ptr [eax-4]
 004A09ED    call        00437470
 004A09F2    mov         edx,dword ptr [ebp+8]
 004A09F5    mov         dword ptr [edx-4],eax
>004A09F8    jmp         004A0A06
 004A09FA    mov         eax,dword ptr [ebp+8]
 004A09FD    mov         edx,dword ptr [ebp-4]
 004A0A00    mov         edx,dword ptr [edx+48]
 004A0A03    add         dword ptr [eax-0C],edx
 004A0A06    pop         ecx
 004A0A07    pop         ebp
 004A0A08    ret
end;*}

//004A0A14
{*procedure sub_004A0A14(?:?; ?:?);
begin
 004A0A14    push        ebp
 004A0A15    mov         ebp,esp
 004A0A17    push        ecx
 004A0A18    mov         dword ptr [ebp-4],eax
 004A0A1B    mov         eax,dword ptr [ebp-4]
 004A0A1E    cmp         byte ptr [eax+57],0
>004A0A22    je          004A0A84
 004A0A24    mov         eax,dword ptr [ebp-4]
 004A0A27    mov         al,byte ptr [eax+5B]
 004A0A2A    sub         al,2
>004A0A2C    jb          004A0A32
>004A0A2E    je          004A0A78
>004A0A30    jmp         004A0A84
 004A0A32    mov         eax,dword ptr [ebp-4]
 004A0A35    cmp         byte ptr [eax+5B],1
>004A0A39    je          004A0A50
 004A0A3B    mov         al,[004A0A88];0xA gvar_004A0A88
 004A0A40    mov         edx,dword ptr [ebp-4]
 004A0A43    and         al,byte ptr [edx+61]
 004A0A46    mov         dl,byte ptr ds:[4A0A8C];0x2 gvar_004A0A8C
 004A0A4C    cmp         dl,al
>004A0A4E    jne         004A0A84
 004A0A50    mov         eax,dword ptr [ebp+8]
 004A0A53    mov         eax,dword ptr [eax-8]
 004A0A56    mov         edx,dword ptr [eax+0C]
 004A0A59    mov         eax,dword ptr [ebp-4]
 004A0A5C    add         edx,dword ptr [eax+44]
 004A0A5F    mov         eax,dword ptr [ebp-4]
 004A0A62    add         edx,dword ptr [eax+4C]
 004A0A65    mov         eax,dword ptr [ebp+8]
 004A0A68    mov         eax,dword ptr [eax-4]
 004A0A6B    call        00437470
 004A0A70    mov         edx,dword ptr [ebp+8]
 004A0A73    mov         dword ptr [edx-4],eax
>004A0A76    jmp         004A0A84
 004A0A78    mov         eax,dword ptr [ebp+8]
 004A0A7B    mov         edx,dword ptr [ebp-4]
 004A0A7E    mov         edx,dword ptr [edx+4C]
 004A0A81    add         dword ptr [eax-0C],edx
 004A0A84    pop         ecx
 004A0A85    pop         ebp
 004A0A86    ret
end;*}

//004A0A90
procedure sub_004A0A90(?:TControlScrollBar);
begin
{*
 004A0A90    push        ebp
 004A0A91    mov         ebp,esp
 004A0A93    add         esp,0FFFFFFEC
 004A0A96    mov         dword ptr [ebp-8],eax
 004A0A99    mov         eax,dword ptr [ebp-8]
 004A0A9C    mov         eax,dword ptr [eax+4]
 004A0A9F    cmp         byte ptr [eax+210],0
>004A0AA6    je          004A0B43
 004A0AAC    mov         eax,dword ptr [ebp-8]
 004A0AAF    mov         eax,dword ptr [eax+4]
 004A0AB2    mov         edx,dword ptr [eax]
 004A0AB4    call        dword ptr [edx+0C8]
 004A0ABA    test        al,al
>004A0ABC    je          004A0B39
 004A0ABE    xor         eax,eax
 004A0AC0    mov         dword ptr [ebp-4],eax
 004A0AC3    xor         eax,eax
 004A0AC5    mov         dword ptr [ebp-0C],eax
 004A0AC8    mov         eax,dword ptr [ebp-8]
 004A0ACB    mov         eax,dword ptr [eax+4]
 004A0ACE    call        00487E38
 004A0AD3    dec         eax
 004A0AD4    test        eax,eax
>004A0AD6    jl          004A0B20
 004A0AD8    inc         eax
 004A0AD9    mov         dword ptr [ebp-14],eax
 004A0ADC    mov         dword ptr [ebp-10],0
 004A0AE3    mov         eax,dword ptr [ebp-8]
 004A0AE6    cmp         byte ptr [eax+18],0
>004A0AEA    jne         004A0B03
 004A0AEC    push        ebp
 004A0AED    mov         eax,dword ptr [ebp-8]
 004A0AF0    mov         eax,dword ptr [eax+4]
 004A0AF3    mov         edx,dword ptr [ebp-10]
 004A0AF6    call        00487DCC
 004A0AFB    call        004A0990
 004A0B00    pop         ecx
>004A0B01    jmp         004A0B18
 004A0B03    push        ebp
 004A0B04    mov         eax,dword ptr [ebp-8]
 004A0B07    mov         eax,dword ptr [eax+4]
 004A0B0A    mov         edx,dword ptr [ebp-10]
 004A0B0D    call        00487DCC
 004A0B12    call        004A0A14
 004A0B17    pop         ecx
 004A0B18    inc         dword ptr [ebp-10]
 004A0B1B    dec         dword ptr [ebp-14]
>004A0B1E    jne         004A0AE3
 004A0B20    mov         edx,dword ptr [ebp-4]
 004A0B23    add         edx,dword ptr [ebp-0C]
 004A0B26    mov         eax,dword ptr [ebp-8]
 004A0B29    movzx       eax,word ptr [eax+1A]
 004A0B2D    add         edx,eax
 004A0B2F    mov         eax,dword ptr [ebp-8]
 004A0B32    call        004A13A4
>004A0B37    jmp         004A0B43
 004A0B39    xor         edx,edx
 004A0B3B    mov         eax,dword ptr [ebp-8]
 004A0B3E    call        004A13A4
 004A0B43    mov         esp,ebp
 004A0B45    pop         ebp
 004A0B46    ret
*}
end;

//004A0B48
{*function sub_004A0B48(?:TControlScrollBar):?;
begin
 004A0B48    push        ebp
 004A0B49    mov         ebp,esp
 004A0B4B    add         esp,0FFFFFFF4
 004A0B4E    mov         dword ptr [ebp-4],eax
 004A0B51    mov         dword ptr [ebp-0C],100000
 004A0B58    mov         eax,dword ptr [ebp-4]
 004A0B5B    cmp         byte ptr [eax+18],1
>004A0B5F    jne         004A0B68
 004A0B61    mov         dword ptr [ebp-0C],200000
 004A0B68    mov         eax,dword ptr [ebp-4]
 004A0B6B    cmp         byte ptr [eax+1C],0
>004A0B6F    je          004A0B89
 004A0B71    push        0F0
 004A0B73    mov         eax,dword ptr [ebp-4]
 004A0B76    mov         eax,dword ptr [eax+4]
 004A0B79    call        TWinControl.GetHandle
 004A0B7E    push        eax
 004A0B7F    call        user32.GetWindowLongA
 004A0B84    and         eax,dword ptr [ebp-0C]
>004A0B87    jne         004A0B8D
 004A0B89    xor         eax,eax
>004A0B8B    jmp         004A0B8F
 004A0B8D    mov         al,1
 004A0B8F    mov         byte ptr [ebp-5],al
 004A0B92    mov         al,byte ptr [ebp-5]
 004A0B95    mov         esp,ebp
 004A0B97    pop         ebp
 004A0B98    ret
end;*}

//004A0B9C
{*function sub_004A0B9C(?:?; ?:?):?;
begin
 004A0B9C    push        ebp
 004A0B9D    mov         ebp,esp
 004A0B9F    add         esp,0FFFFFFF8
 004A0BA2    mov         word ptr [ebp-2],ax
 004A0BA6    mov         dword ptr [ebp-8],100000
 004A0BAD    cmp         word ptr [ebp-2],1
>004A0BB2    jne         004A0BBB
 004A0BB4    mov         dword ptr [ebp-8],200000
 004A0BBB    push        0F0
 004A0BBD    mov         eax,dword ptr [ebp+8]
 004A0BC0    mov         eax,dword ptr [eax-4]
 004A0BC3    mov         eax,dword ptr [eax+4]
 004A0BC6    call        TWinControl.GetHandle
 004A0BCB    push        eax
 004A0BCC    call        user32.GetWindowLongA
 004A0BD1    and         eax,dword ptr [ebp-8]
 004A0BD4    setne       byte ptr [ebp-3]
 004A0BD8    mov         al,byte ptr [ebp-3]
 004A0BDB    pop         ecx
 004A0BDC    pop         ecx
 004A0BDD    pop         ebp
 004A0BDE    ret
end;*}

//004A0BE0
{*function sub_004A0BE0(?:?; ?:?; ?:?):?;
begin
 004A0BE0    push        ebp
 004A0BE1    mov         ebp,esp
 004A0BE3    add         esp,0FFFFFFF8
 004A0BE6    mov         word ptr [ebp-4],dx
 004A0BEA    mov         word ptr [ebp-2],ax
 004A0BEE    xor         eax,eax
 004A0BF0    mov         dword ptr [ebp-8],eax
 004A0BF3    mov         eax,dword ptr [ebp+8]
 004A0BF6    cmp         byte ptr [eax-5],0
>004A0BFA    jne         004A0C64
 004A0BFC    mov         eax,dword ptr [ebp+8]
 004A0BFF    cmp         byte ptr [eax-6],0
>004A0C03    je          004A0C32
 004A0C05    mov         eax,dword ptr [ebp+8]
 004A0C08    push        eax
 004A0C09    mov         ax,word ptr [ebp-2]
 004A0C0D    call        004A0B9C
 004A0C12    pop         ecx
 004A0C13    test        al,al
>004A0C15    jne         004A0C32
 004A0C17    movzx       eax,word ptr [ebp-4]
 004A0C1B    push        eax
 004A0C1C    mov         eax,[0056E1C0];^gvar_00571B2C
 004A0C21    mov         eax,dword ptr [eax]
 004A0C23    call        eax
 004A0C25    mov         edx,dword ptr [ebp+8]
 004A0C28    sub         eax,dword ptr [edx-0C]
 004A0C2B    neg         eax
 004A0C2D    mov         dword ptr [ebp-8],eax
>004A0C30    jmp         004A0C64
 004A0C32    mov         eax,dword ptr [ebp+8]
 004A0C35    cmp         byte ptr [eax-6],0
>004A0C39    jne         004A0C64
 004A0C3B    mov         eax,dword ptr [ebp+8]
 004A0C3E    push        eax
 004A0C3F    mov         ax,word ptr [ebp-2]
 004A0C43    call        004A0B9C
 004A0C48    pop         ecx
 004A0C49    test        al,al
>004A0C4B    je          004A0C64
 004A0C4D    movzx       eax,word ptr [ebp-4]
 004A0C51    push        eax
 004A0C52    mov         eax,[0056E1C0];^gvar_00571B2C
 004A0C57    mov         eax,dword ptr [eax]
 004A0C59    call        eax
 004A0C5B    mov         edx,dword ptr [ebp+8]
 004A0C5E    sub         eax,dword ptr [edx-0C]
 004A0C61    mov         dword ptr [ebp-8],eax
 004A0C64    mov         eax,dword ptr [ebp-8]
 004A0C67    pop         ecx
 004A0C68    pop         ecx
 004A0C69    pop         ebp
 004A0C6A    ret
end;*}

//004A0C6C
{*function sub_004A0C6C(?:?; ?:?; ?:?):?;
begin
 004A0C6C    push        ebp
 004A0C6D    mov         ebp,esp
 004A0C6F    add         esp,0FFFFFFF0
 004A0C72    push        ebx
 004A0C73    mov         byte ptr [ebp-6],cl
 004A0C76    mov         byte ptr [ebp-5],dl
 004A0C79    mov         dword ptr [ebp-4],eax
 004A0C7C    push        0F0
 004A0C7E    mov         eax,dword ptr [ebp-4]
 004A0C81    mov         eax,dword ptr [eax+4]
 004A0C84    call        TWinControl.GetHandle
 004A0C89    push        eax
 004A0C8A    call        user32.GetWindowLongA
 004A0C8F    test        eax,840000
 004A0C94    setne       al
 004A0C97    and         eax,7F
 004A0C9A    mov         dword ptr [ebp-0C],eax
 004A0C9D    mov         eax,dword ptr [ebp-4]
 004A0CA0    cmp         byte ptr [eax+18],1
>004A0CA4    jne         004A0CC7
 004A0CA6    push        ebp
 004A0CA7    mov         dx,15
 004A0CAB    xor         eax,eax
 004A0CAD    call        004A0BE0
 004A0CB2    pop         ecx
 004A0CB3    mov         ebx,eax
 004A0CB5    mov         eax,dword ptr [ebp-4]
 004A0CB8    mov         eax,dword ptr [eax+4]
 004A0CBB    call        TControl.GetClientHeight
 004A0CC0    add         ebx,eax
 004A0CC2    mov         dword ptr [ebp-10],ebx
>004A0CC5    jmp         004A0CE8
 004A0CC7    push        ebp
 004A0CC8    mov         dx,14
 004A0CCC    mov         ax,1
 004A0CD0    call        004A0BE0
 004A0CD5    pop         ecx
 004A0CD6    mov         ebx,eax
 004A0CD8    mov         eax,dword ptr [ebp-4]
 004A0CDB    mov         eax,dword ptr [eax+4]
 004A0CDE    call        TControl.GetClientWidth
 004A0CE3    add         ebx,eax
 004A0CE5    mov         dword ptr [ebp-10],ebx
 004A0CE8    mov         eax,dword ptr [ebp-10]
 004A0CEB    pop         ebx
 004A0CEC    mov         esp,ebp
 004A0CEE    pop         ebp
 004A0CEF    ret
end;*}

//004A0CF0
function TControlScrollBar.NeedsScrollBarVisible:Boolean;
begin
{*
 004A0CF0    push        ebp
 004A0CF1    mov         ebp,esp
 004A0CF3    add         esp,0FFFFFFF8
 004A0CF6    mov         dword ptr [ebp-4],eax
 004A0CF9    xor         ecx,ecx
 004A0CFB    xor         edx,edx
 004A0CFD    mov         eax,dword ptr [ebp-4]
 004A0D00    call        004A0C6C
 004A0D05    mov         edx,dword ptr [ebp-4]
 004A0D08    cmp         eax,dword ptr [edx+10]
 004A0D0B    setl        byte ptr [ebp-5]
 004A0D0F    mov         al,byte ptr [ebp-5]
 004A0D12    pop         ecx
 004A0D13    pop         ecx
 004A0D14    pop         ebp
 004A0D15    ret
*}
end;

//004A0D18
{*function sub_004A0D18(?:?):?;
begin
 004A0D18    push        ebp
 004A0D19    mov         ebp,esp
 004A0D1B    add         esp,0FFFFFFDC
 004A0D1E    mov         dword ptr [ebp-24],1C
 004A0D25    mov         dword ptr [ebp-20],10
 004A0D2C    xor         eax,eax
 004A0D2E    mov         dword ptr [ebp-8],eax
 004A0D31    mov         eax,dword ptr [ebp+8]
 004A0D34    mov         eax,dword ptr [eax-4]
 004A0D37    cmp         byte ptr [eax+18],1
>004A0D3B    jne         004A0D44
 004A0D3D    mov         dword ptr [ebp-8],1
 004A0D44    mov         eax,dword ptr [ebp+8]
 004A0D47    mov         eax,dword ptr [eax-8]
 004A0D4A    movsx       eax,word ptr [eax+6]
 004A0D4E    mov         dword ptr [ebp-4],eax
 004A0D51    lea         eax,[ebp-24]
 004A0D54    push        eax
 004A0D55    mov         eax,dword ptr [ebp-8]
 004A0D58    push        eax
 004A0D59    mov         eax,dword ptr [ebp+8]
 004A0D5C    mov         eax,dword ptr [eax-4]
 004A0D5F    mov         eax,dword ptr [eax+4]
 004A0D62    call        TWinControl.GetHandle
 004A0D67    push        eax
 004A0D68    mov         eax,[0056E030];^gvar_00571B80:LongBool
 004A0D6D    mov         eax,dword ptr [eax]
 004A0D6F    call        eax
 004A0D71    test        eax,eax
>004A0D73    je          004A0D7B
 004A0D75    mov         eax,dword ptr [ebp-0C]
 004A0D78    mov         dword ptr [ebp-4],eax
 004A0D7B    mov         eax,dword ptr [ebp-4]
 004A0D7E    mov         esp,ebp
 004A0D80    pop         ebp
 004A0D81    ret
end;*}

//004A0D84
{*procedure sub_004A0D84(?:TControlScrollBar; ?:?);
begin
 004A0D84    push        ebp
 004A0D85    mov         ebp,esp
 004A0D87    add         esp,0FFFFFFE0
 004A0D8A    mov         dword ptr [ebp-8],edx
 004A0D8D    mov         dword ptr [ebp-4],eax
 004A0D90    mov         eax,dword ptr [ebp-4]
 004A0D93    cmp         byte ptr [eax+1F],0
>004A0D97    je          004A0F7C
 004A0D9D    mov         eax,dword ptr [ebp-8]
 004A0DA0    mov         ax,word ptr [eax+4]
 004A0DA4    sub         ax,4
>004A0DA8    jae         004A0F7C
 004A0DAE    mov         eax,dword ptr [ebp-8]
 004A0DB1    mov         ax,word ptr [eax+4]
 004A0DB5    sub         ax,2
>004A0DB9    jb          004A0DC3
 004A0DBB    sub         ax,2
>004A0DBF    jb          004A0DF4
>004A0DC1    jmp         004A0E2D
 004A0DC3    mov         eax,dword ptr [ebp-4]
 004A0DC6    movzx       eax,word ptr [eax+8]
 004A0DCA    mov         edx,dword ptr [ebp-4]
 004A0DCD    mov         ecx,dword ptr [edx+40]
 004A0DD0    cdq
 004A0DD1    idiv        eax,ecx
 004A0DD3    mov         dword ptr [ebp-0C],eax
 004A0DD6    mov         eax,dword ptr [ebp-4]
 004A0DD9    movzx       eax,word ptr [eax+8]
 004A0DDD    mov         edx,dword ptr [ebp-4]
 004A0DE0    mov         ecx,dword ptr [edx+40]
 004A0DE3    cdq
 004A0DE4    idiv        eax,ecx
 004A0DE6    mov         dword ptr [ebp-10],edx
 004A0DE9    mov         eax,dword ptr [ebp-4]
 004A0DEC    mov         eax,dword ptr [eax+40]
 004A0DEF    mov         dword ptr [ebp-14],eax
>004A0DF2    jmp         004A0E3C
 004A0DF4    mov         eax,dword ptr [ebp-4]
 004A0DF7    movzx       eax,word ptr [eax+0A]
 004A0DFB    mov         dword ptr [ebp-0C],eax
 004A0DFE    mov         eax,dword ptr [ebp-4]
 004A0E01    push        dword ptr [eax+3C]
 004A0E04    mov         eax,dword ptr [ebp-0C]
 004A0E07    pop         edx
 004A0E08    mov         ecx,edx
 004A0E0A    cdq
 004A0E0B    idiv        eax,ecx
 004A0E0D    mov         dword ptr [ebp-10],edx
 004A0E10    mov         eax,dword ptr [ebp-4]
 004A0E13    push        dword ptr [eax+3C]
 004A0E16    mov         eax,dword ptr [ebp-0C]
 004A0E19    pop         edx
 004A0E1A    mov         ecx,edx
 004A0E1C    cdq
 004A0E1D    idiv        eax,ecx
 004A0E1F    mov         dword ptr [ebp-0C],eax
 004A0E22    mov         eax,dword ptr [ebp-4]
 004A0E25    mov         eax,dword ptr [eax+3C]
 004A0E28    mov         dword ptr [ebp-14],eax
>004A0E2B    jmp         004A0E3C
 004A0E2D    xor         eax,eax
 004A0E2F    mov         dword ptr [ebp-14],eax
 004A0E32    xor         eax,eax
 004A0E34    mov         dword ptr [ebp-0C],eax
 004A0E37    xor         eax,eax
 004A0E39    mov         dword ptr [ebp-10],eax
 004A0E3C    xor         eax,eax
 004A0E3E    mov         dword ptr [ebp-18],eax
 004A0E41    cmp         dword ptr [ebp-14],0
>004A0E45    jle         004A0EFC
 004A0E4B    call        004084B8
 004A0E50    mov         dword ptr [ebp-1C],eax
 004A0E53    mov         eax,dword ptr [ebp-1C]
 004A0E56    sub         eax,dword ptr [ebp-18]
 004A0E59    mov         dword ptr [ebp-20],eax
 004A0E5C    mov         eax,dword ptr [ebp-4]
 004A0E5F    mov         eax,dword ptr [eax+20]
 004A0E62    cmp         eax,dword ptr [ebp-20]
>004A0E65    jle         004A0E76
 004A0E67    mov         eax,dword ptr [ebp-4]
 004A0E6A    mov         eax,dword ptr [eax+20]
 004A0E6D    sub         eax,dword ptr [ebp-20]
 004A0E70    push        eax
 004A0E71    call        kernel32.Sleep
 004A0E76    mov         eax,dword ptr [ebp-1C]
 004A0E79    mov         dword ptr [ebp-18],eax
 004A0E7C    mov         eax,dword ptr [ebp-8]
 004A0E7F    mov         ax,word ptr [eax+4]
 004A0E83    sub         ax,1
>004A0E87    jb          004A0E97
>004A0E89    je          004A0EAA
 004A0E8B    dec         ax
>004A0E8E    je          004A0EBD
 004A0E90    dec         ax
>004A0E93    je          004A0ED0
>004A0E95    jmp         004A0EE1
 004A0E97    mov         eax,dword ptr [ebp-4]
 004A0E9A    mov         edx,dword ptr [eax+0C]
 004A0E9D    sub         edx,dword ptr [ebp-0C]
 004A0EA0    mov         eax,dword ptr [ebp-4]
 004A0EA3    call        TControlScrollBar.SetPosition
>004A0EA8    jmp         004A0EE1
 004A0EAA    mov         eax,dword ptr [ebp-4]
 004A0EAD    mov         edx,dword ptr [eax+0C]
 004A0EB0    add         edx,dword ptr [ebp-0C]
 004A0EB3    mov         eax,dword ptr [ebp-4]
 004A0EB6    call        TControlScrollBar.SetPosition
>004A0EBB    jmp         004A0EE1
 004A0EBD    mov         eax,dword ptr [ebp-4]
 004A0EC0    mov         edx,dword ptr [eax+0C]
 004A0EC3    sub         edx,dword ptr [ebp-0C]
 004A0EC6    mov         eax,dword ptr [ebp-4]
 004A0EC9    call        TControlScrollBar.SetPosition
>004A0ECE    jmp         004A0EE1
 004A0ED0    mov         eax,dword ptr [ebp-4]
 004A0ED3    mov         edx,dword ptr [eax+0C]
 004A0ED6    add         edx,dword ptr [ebp-0C]
 004A0ED9    mov         eax,dword ptr [ebp-4]
 004A0EDC    call        TControlScrollBar.SetPosition
 004A0EE1    mov         eax,dword ptr [ebp-4]
 004A0EE4    mov         eax,dword ptr [eax+4]
 004A0EE7    mov         edx,dword ptr [eax]
 004A0EE9    call        dword ptr [edx+88]
 004A0EEF    dec         dword ptr [ebp-14]
 004A0EF2    cmp         dword ptr [ebp-14],0
>004A0EF6    jg          004A0E4B
 004A0EFC    cmp         dword ptr [ebp-10],0
>004A0F00    jle         004A10B0
 004A0F06    mov         eax,dword ptr [ebp-8]
 004A0F09    mov         ax,word ptr [eax+4]
 004A0F0D    sub         ax,1
>004A0F11    jb          004A0F24
>004A0F13    je          004A0F3A
 004A0F15    dec         ax
>004A0F18    je          004A0F50
 004A0F1A    dec         ax
>004A0F1D    je          004A0F66
>004A0F1F    jmp         004A10B0
 004A0F24    mov         eax,dword ptr [ebp-4]
 004A0F27    mov         edx,dword ptr [eax+0C]
 004A0F2A    sub         edx,dword ptr [ebp-10]
 004A0F2D    mov         eax,dword ptr [ebp-4]
 004A0F30    call        TControlScrollBar.SetPosition
>004A0F35    jmp         004A10B0
 004A0F3A    mov         eax,dword ptr [ebp-4]
 004A0F3D    mov         edx,dword ptr [eax+0C]
 004A0F40    add         edx,dword ptr [ebp-10]
 004A0F43    mov         eax,dword ptr [ebp-4]
 004A0F46    call        TControlScrollBar.SetPosition
>004A0F4B    jmp         004A10B0
 004A0F50    mov         eax,dword ptr [ebp-4]
 004A0F53    mov         edx,dword ptr [eax+0C]
 004A0F56    sub         edx,dword ptr [ebp-10]
 004A0F59    mov         eax,dword ptr [ebp-4]
 004A0F5C    call        TControlScrollBar.SetPosition
>004A0F61    jmp         004A10B0
 004A0F66    mov         eax,dword ptr [ebp-4]
 004A0F69    mov         edx,dword ptr [eax+0C]
 004A0F6C    add         edx,dword ptr [ebp-10]
 004A0F6F    mov         eax,dword ptr [ebp-4]
 004A0F72    call        TControlScrollBar.SetPosition
>004A0F77    jmp         004A10B0
 004A0F7C    mov         eax,dword ptr [ebp-8]
 004A0F7F    movsx       eax,word ptr [eax+4]
 004A0F83    cmp         eax,7
>004A0F86    ja          004A10B0
 004A0F8C    jmp         dword ptr [eax*4+4A0F93]
 004A0F8C    dd          004A0FB3
 004A0F8C    dd          004A0FCF
 004A0F8C    dd          004A0FEB
 004A0F8C    dd          004A100C
 004A0F8C    dd          004A102D
 004A0F8C    dd          004A105D
 004A0F8C    dd          004A1096
 004A0F8C    dd          004A10A2
 004A0FB3    mov         eax,dword ptr [ebp-4]
 004A0FB6    mov         edx,dword ptr [eax+0C]
 004A0FB9    mov         eax,dword ptr [ebp-4]
 004A0FBC    movzx       eax,word ptr [eax+8]
 004A0FC0    sub         edx,eax
 004A0FC2    mov         eax,dword ptr [ebp-4]
 004A0FC5    call        TControlScrollBar.SetPosition
>004A0FCA    jmp         004A10B0
 004A0FCF    mov         eax,dword ptr [ebp-4]
 004A0FD2    mov         edx,dword ptr [eax+0C]
 004A0FD5    mov         eax,dword ptr [ebp-4]
 004A0FD8    movzx       eax,word ptr [eax+8]
 004A0FDC    add         edx,eax
 004A0FDE    mov         eax,dword ptr [ebp-4]
 004A0FE1    call        TControlScrollBar.SetPosition
>004A0FE6    jmp         004A10B0
 004A0FEB    xor         ecx,ecx
 004A0FED    mov         dl,1
 004A0FEF    mov         eax,dword ptr [ebp-4]
 004A0FF2    call        004A0C6C
 004A0FF7    mov         edx,dword ptr [ebp-4]
 004A0FFA    mov         edx,dword ptr [edx+0C]
 004A0FFD    sub         edx,eax
 004A0FFF    mov         eax,dword ptr [ebp-4]
 004A1002    call        TControlScrollBar.SetPosition
>004A1007    jmp         004A10B0
 004A100C    xor         ecx,ecx
 004A100E    mov         dl,1
 004A1010    mov         eax,dword ptr [ebp-4]
 004A1013    call        004A0C6C
 004A1018    mov         edx,eax
 004A101A    mov         eax,dword ptr [ebp-4]
 004A101D    add         edx,dword ptr [eax+0C]
 004A1020    mov         eax,dword ptr [ebp-4]
 004A1023    call        TControlScrollBar.SetPosition
>004A1028    jmp         004A10B0
 004A102D    mov         eax,dword ptr [ebp-4]
 004A1030    cmp         dword ptr [eax+14],7FFF
>004A1037    jle         004A104C
 004A1039    push        ebp
 004A103A    call        004A0D18
 004A103F    pop         ecx
 004A1040    mov         edx,eax
 004A1042    mov         eax,dword ptr [ebp-4]
 004A1045    call        TControlScrollBar.SetPosition
>004A104A    jmp         004A10B0
 004A104C    mov         edx,dword ptr [ebp-8]
 004A104F    movsx       edx,word ptr [edx+6]
 004A1053    mov         eax,dword ptr [ebp-4]
 004A1056    call        TControlScrollBar.SetPosition
>004A105B    jmp         004A10B0
 004A105D    mov         eax,dword ptr [ebp-4]
 004A1060    cmp         byte ptr [eax+1D],0
>004A1064    je          004A10B0
 004A1066    mov         eax,dword ptr [ebp-4]
 004A1069    cmp         dword ptr [eax+14],7FFF
>004A1070    jle         004A1085
 004A1072    push        ebp
 004A1073    call        004A0D18
 004A1078    pop         ecx
 004A1079    mov         edx,eax
 004A107B    mov         eax,dword ptr [ebp-4]
 004A107E    call        TControlScrollBar.SetPosition
>004A1083    jmp         004A10B0
 004A1085    mov         edx,dword ptr [ebp-8]
 004A1088    movsx       edx,word ptr [edx+6]
 004A108C    mov         eax,dword ptr [ebp-4]
 004A108F    call        TControlScrollBar.SetPosition
>004A1094    jmp         004A10B0
 004A1096    xor         edx,edx
 004A1098    mov         eax,dword ptr [ebp-4]
 004A109B    call        TControlScrollBar.SetPosition
>004A10A0    jmp         004A10B0
 004A10A2    mov         eax,dword ptr [ebp-4]
 004A10A5    mov         edx,dword ptr [eax+14]
 004A10A8    mov         eax,dword ptr [ebp-4]
 004A10AB    call        TControlScrollBar.SetPosition
 004A10B0    mov         esp,ebp
 004A10B2    pop         ebp
 004A10B3    ret
end;*}

//004A10B4
procedure TControlScrollBar.SetButtonSize(Value:Integer);
begin
{*
 004A10B4    push        ebp
 004A10B5    mov         ebp,esp
 004A10B7    add         esp,0FFFFFFF4
 004A10BA    mov         dword ptr [ebp-8],edx
 004A10BD    mov         dword ptr [ebp-4],eax
 004A10C0    mov         eax,dword ptr [ebp-8]
 004A10C3    mov         edx,dword ptr [ebp-4]
 004A10C6    cmp         eax,dword ptr [edx+24];TControlScrollBar.ButtonSize:Integer
>004A10C9    je          004A111B
 004A10CB    mov         eax,dword ptr [ebp-8]
 004A10CE    mov         dword ptr [ebp-0C],eax
 004A10D1    cmp         dword ptr [ebp-0C],0
>004A10D5    jne         004A10F2
 004A10D7    mov         eax,dword ptr [ebp-4]
 004A10DA    movzx       eax,byte ptr [eax+18];TControlScrollBar.FKind:TScrollBarKind
 004A10DE    mov         eax,dword ptr [eax*4+56C9D8]
 004A10E5    push        eax
 004A10E6    mov         eax,[0056E1C0];^gvar_00571B2C
 004A10EB    mov         eax,dword ptr [eax]
 004A10ED    call        eax
 004A10EF    mov         dword ptr [ebp-8],eax
 004A10F2    mov         eax,dword ptr [ebp-8]
 004A10F5    mov         edx,dword ptr [ebp-4]
 004A10F8    mov         dword ptr [edx+24],eax;TControlScrollBar.ButtonSize:Integer
 004A10FB    mov         eax,dword ptr [ebp-4]
 004A10FE    mov         byte ptr [eax+44],1;TControlScrollBar.FUpdateNeeded:Boolean
 004A1102    mov         eax,dword ptr [ebp-4]
 004A1105    mov         eax,dword ptr [eax+4];TControlScrollBar.FControl:TScrollingWinControl
 004A1108    call        TScrollingWinControl.UpdateScrollBars
 004A110D    cmp         dword ptr [ebp-0C],0
>004A1111    jne         004A111B
 004A1113    mov         eax,dword ptr [ebp-4]
 004A1116    xor         edx,edx
 004A1118    mov         dword ptr [eax+24],edx;TControlScrollBar.ButtonSize:Integer
 004A111B    mov         esp,ebp
 004A111D    pop         ebp
 004A111E    ret
*}
end;

//004A1120
procedure TControlScrollBar.SetColor(Value:TColor);
begin
{*
 004A1120    push        ebp
 004A1121    mov         ebp,esp
 004A1123    add         esp,0FFFFFFF8
 004A1126    mov         dword ptr [ebp-8],edx
 004A1129    mov         dword ptr [ebp-4],eax
 004A112C    mov         eax,dword ptr [ebp-8]
 004A112F    mov         edx,dword ptr [ebp-4]
 004A1132    cmp         eax,dword ptr [edx+28];TControlScrollBar.Color:TColor
>004A1135    je          004A1159
 004A1137    mov         eax,dword ptr [ebp-8]
 004A113A    mov         edx,dword ptr [ebp-4]
 004A113D    mov         dword ptr [edx+28],eax;TControlScrollBar.Color:TColor
 004A1140    mov         eax,dword ptr [ebp-4]
 004A1143    mov         byte ptr [eax+2C],0;TControlScrollBar.ParentColor:Boolean
 004A1147    mov         eax,dword ptr [ebp-4]
 004A114A    mov         byte ptr [eax+44],1;TControlScrollBar.FUpdateNeeded:Boolean
 004A114E    mov         eax,dword ptr [ebp-4]
 004A1151    mov         eax,dword ptr [eax+4];TControlScrollBar.FControl:TScrollingWinControl
 004A1154    call        TScrollingWinControl.UpdateScrollBars
 004A1159    pop         ecx
 004A115A    pop         ecx
 004A115B    pop         ebp
 004A115C    ret
*}
end;

//004A1160
procedure TControlScrollBar.SetParentColor(Value:Boolean);
begin
{*
 004A1160    push        ebp
 004A1161    mov         ebp,esp
 004A1163    add         esp,0FFFFFFF8
 004A1166    mov         byte ptr [ebp-5],dl
 004A1169    mov         dword ptr [ebp-4],eax
 004A116C    mov         eax,dword ptr [ebp-4]
 004A116F    mov         al,byte ptr [eax+2C];TControlScrollBar.ParentColor:Boolean
 004A1172    cmp         al,byte ptr [ebp-5]
>004A1175    je          004A1193
 004A1177    mov         al,byte ptr [ebp-5]
 004A117A    mov         edx,dword ptr [ebp-4]
 004A117D    mov         byte ptr [edx+2C],al;TControlScrollBar.ParentColor:Boolean
 004A1180    cmp         byte ptr [ebp-5],0
>004A1184    je          004A1193
 004A1186    mov         edx,0FF000014
 004A118B    mov         eax,dword ptr [ebp-4]
 004A118E    call        TControlScrollBar.SetColor
 004A1193    pop         ecx
 004A1194    pop         ecx
 004A1195    pop         ebp
 004A1196    ret
*}
end;

//004A1198
procedure TControlScrollBar.SetPosition(Value:Integer);
begin
{*
 004A1198    push        ebp
 004A1199    mov         ebp,esp
 004A119B    add         esp,0FFFFFFEC
 004A119E    mov         dword ptr [ebp-8],edx
 004A11A1    mov         dword ptr [ebp-4],eax
 004A11A4    mov         eax,dword ptr [ebp-4]
 004A11A7    mov         eax,dword ptr [eax+4];TControlScrollBar.FControl:TScrollingWinControl
 004A11AA    test        byte ptr [eax+1C],2;TScrollingWinControl.FComponentState:TComponentState
>004A11AE    je          004A11BE
 004A11B0    mov         eax,dword ptr [ebp-8]
 004A11B3    mov         edx,dword ptr [ebp-4]
 004A11B6    mov         dword ptr [edx+0C],eax;TControlScrollBar.Position:Integer
>004A11B9    jmp         004A12C3
 004A11BE    mov         eax,dword ptr [ebp-8]
 004A11C1    mov         edx,dword ptr [ebp-4]
 004A11C4    cmp         eax,dword ptr [edx+14];TControlScrollBar.FCalcRange:Integer
>004A11C7    jle         004A11D4
 004A11C9    mov         eax,dword ptr [ebp-4]
 004A11CC    mov         eax,dword ptr [eax+14];TControlScrollBar.FCalcRange:Integer
 004A11CF    mov         dword ptr [ebp-8],eax
>004A11D2    jmp         004A11DF
 004A11D4    cmp         dword ptr [ebp-8],0
>004A11D8    jge         004A11DF
 004A11DA    xor         eax,eax
 004A11DC    mov         dword ptr [ebp-8],eax
 004A11DF    mov         eax,dword ptr [ebp-4]
 004A11E2    cmp         byte ptr [eax+18],0;TControlScrollBar.FKind:TScrollBarKind
>004A11E6    jne         004A11F0
 004A11E8    mov         word ptr [ebp-0A],0
>004A11EE    jmp         004A11F6
 004A11F0    mov         word ptr [ebp-0A],1
 004A11F6    mov         eax,dword ptr [ebp-8]
 004A11F9    mov         edx,dword ptr [ebp-4]
 004A11FC    cmp         eax,dword ptr [edx+0C];TControlScrollBar.Position:Integer
>004A11FF    je          004A127E
 004A1201    mov         eax,dword ptr [ebp-4]
 004A1204    mov         eax,dword ptr [eax+0C];TControlScrollBar.Position:Integer
 004A1207    mov         dword ptr [ebp-14],eax
 004A120A    mov         eax,dword ptr [ebp-8]
 004A120D    mov         edx,dword ptr [ebp-4]
 004A1210    mov         dword ptr [edx+0C],eax;TControlScrollBar.Position:Integer
 004A1213    mov         eax,dword ptr [ebp-4]
 004A1216    cmp         byte ptr [eax+18],0;TControlScrollBar.FKind:TScrollBarKind
>004A121A    jne         004A1231
 004A121C    mov         edx,dword ptr [ebp-14]
 004A121F    sub         edx,dword ptr [ebp-8]
 004A1222    xor         ecx,ecx
 004A1224    mov         eax,dword ptr [ebp-4]
 004A1227    mov         eax,dword ptr [eax+4];TControlScrollBar.FControl:TScrollingWinControl
 004A122A    call        0048BAC0
>004A122F    jmp         004A1244
 004A1231    mov         ecx,dword ptr [ebp-14]
 004A1234    sub         ecx,dword ptr [ebp-8]
 004A1237    xor         edx,edx
 004A1239    mov         eax,dword ptr [ebp-4]
 004A123C    mov         eax,dword ptr [eax+4];TControlScrollBar.FControl:TScrollingWinControl
 004A123F    call        0048BAC0
 004A1244    mov         eax,dword ptr [ebp-4]
 004A1247    mov         eax,dword ptr [eax+4];TControlScrollBar.FControl:TScrollingWinControl
 004A124A    test        byte ptr [eax+1C],10;TScrollingWinControl.FComponentState:TComponentState
>004A124E    je          004A127E
 004A1250    mov         eax,dword ptr [ebp-4]
 004A1253    mov         eax,dword ptr [eax+4];TControlScrollBar.FControl:TScrollingWinControl
 004A1256    call        004A0740
 004A125B    mov         dword ptr [ebp-10],eax
 004A125E    cmp         dword ptr [ebp-10],0
>004A1262    je          004A127E
 004A1264    mov         eax,dword ptr [ebp-10]
 004A1267    cmp         dword ptr [eax+250],0
>004A126E    je          004A127E
 004A1270    mov         eax,dword ptr [ebp-10]
 004A1273    mov         eax,dword ptr [eax+250]
 004A1279    mov         edx,dword ptr [eax]
 004A127B    call        dword ptr [edx+0C]
 004A127E    movzx       eax,word ptr [ebp-0A]
 004A1282    push        eax
 004A1283    mov         eax,dword ptr [ebp-4]
 004A1286    mov         eax,dword ptr [eax+4];TControlScrollBar.FControl:TScrollingWinControl
 004A1289    call        TWinControl.GetHandle
 004A128E    push        eax
 004A128F    mov         eax,[0056E250];^gvar_00571B84:Integer
 004A1294    mov         eax,dword ptr [eax]
 004A1296    call        eax
 004A1298    mov         edx,dword ptr [ebp-4]
 004A129B    cmp         eax,dword ptr [edx+0C];TControlScrollBar.Position:Integer
>004A129E    je          004A12C3
 004A12A0    push        0FF
 004A12A2    mov         eax,dword ptr [ebp-4]
 004A12A5    mov         eax,dword ptr [eax+0C];TControlScrollBar.Position:Integer
 004A12A8    push        eax
 004A12A9    movzx       eax,word ptr [ebp-0A]
 004A12AD    push        eax
 004A12AE    mov         eax,dword ptr [ebp-4]
 004A12B1    mov         eax,dword ptr [eax+4];TControlScrollBar.FControl:TScrollingWinControl
 004A12B4    call        TWinControl.GetHandle
 004A12B9    push        eax
 004A12BA    mov         eax,[0056E5DC];^gvar_00571B88:Integer
 004A12BF    mov         eax,dword ptr [eax]
 004A12C1    call        eax
 004A12C3    mov         esp,ebp
 004A12C5    pop         ebp
 004A12C6    ret
*}
end;

//004A12C8
procedure TControlScrollBar.SetSize(Value:Integer);
begin
{*
 004A12C8    push        ebp
 004A12C9    mov         ebp,esp
 004A12CB    add         esp,0FFFFFFF4
 004A12CE    mov         dword ptr [ebp-8],edx
 004A12D1    mov         dword ptr [ebp-4],eax
 004A12D4    mov         eax,dword ptr [ebp-8]
 004A12D7    mov         edx,dword ptr [ebp-4]
 004A12DA    cmp         eax,dword ptr [edx+30];TControlScrollBar.Size:Integer
>004A12DD    je          004A132F
 004A12DF    mov         eax,dword ptr [ebp-8]
 004A12E2    mov         dword ptr [ebp-0C],eax
 004A12E5    cmp         dword ptr [ebp-0C],0
>004A12E9    jne         004A1306
 004A12EB    mov         eax,dword ptr [ebp-4]
 004A12EE    movzx       eax,byte ptr [eax+18];TControlScrollBar.FKind:TScrollBarKind
 004A12F2    mov         eax,dword ptr [eax*4+56C9E0]
 004A12F9    push        eax
 004A12FA    mov         eax,[0056E1C0];^gvar_00571B2C
 004A12FF    mov         eax,dword ptr [eax]
 004A1301    call        eax
 004A1303    mov         dword ptr [ebp-8],eax
 004A1306    mov         eax,dword ptr [ebp-8]
 004A1309    mov         edx,dword ptr [ebp-4]
 004A130C    mov         dword ptr [edx+30],eax;TControlScrollBar.Size:Integer
 004A130F    mov         eax,dword ptr [ebp-4]
 004A1312    mov         byte ptr [eax+44],1;TControlScrollBar.FUpdateNeeded:Boolean
 004A1316    mov         eax,dword ptr [ebp-4]
 004A1319    mov         eax,dword ptr [eax+4];TControlScrollBar.FControl:TScrollingWinControl
 004A131C    call        TScrollingWinControl.UpdateScrollBars
 004A1321    cmp         dword ptr [ebp-0C],0
>004A1325    jne         004A132F
 004A1327    mov         eax,dword ptr [ebp-4]
 004A132A    xor         edx,edx
 004A132C    mov         dword ptr [eax+30],edx;TControlScrollBar.Size:Integer
 004A132F    mov         esp,ebp
 004A1331    pop         ebp
 004A1332    ret
*}
end;

//004A1334
procedure TControlScrollBar.SetStyle(Value:TScrollBarStyle);
begin
{*
 004A1334    push        ebp
 004A1335    mov         ebp,esp
 004A1337    add         esp,0FFFFFFF8
 004A133A    mov         byte ptr [ebp-5],dl
 004A133D    mov         dword ptr [ebp-4],eax
 004A1340    mov         eax,dword ptr [ebp-4]
 004A1343    mov         al,byte ptr [eax+34];TControlScrollBar.Style:TScrollBarStyle
 004A1346    cmp         al,byte ptr [ebp-5]
>004A1349    je          004A1366
 004A134B    mov         al,byte ptr [ebp-5]
 004A134E    mov         edx,dword ptr [ebp-4]
 004A1351    mov         byte ptr [edx+34],al;TControlScrollBar.Style:TScrollBarStyle
 004A1354    mov         eax,dword ptr [ebp-4]
 004A1357    mov         byte ptr [eax+44],1;TControlScrollBar.FUpdateNeeded:Boolean
 004A135B    mov         eax,dword ptr [ebp-4]
 004A135E    mov         eax,dword ptr [eax+4];TControlScrollBar.FControl:TScrollingWinControl
 004A1361    call        TScrollingWinControl.UpdateScrollBars
 004A1366    pop         ecx
 004A1367    pop         ecx
 004A1368    pop         ebp
 004A1369    ret
*}
end;

//004A136C
procedure TControlScrollBar.SetThumbSize(Value:Integer);
begin
{*
 004A136C    push        ebp
 004A136D    mov         ebp,esp
 004A136F    add         esp,0FFFFFFF8
 004A1372    mov         dword ptr [ebp-8],edx
 004A1375    mov         dword ptr [ebp-4],eax
 004A1378    mov         eax,dword ptr [ebp-8]
 004A137B    mov         edx,dword ptr [ebp-4]
 004A137E    cmp         eax,dword ptr [edx+38];TControlScrollBar.ThumbSize:Integer
>004A1381    je          004A139E
 004A1383    mov         eax,dword ptr [ebp-8]
 004A1386    mov         edx,dword ptr [ebp-4]
 004A1389    mov         dword ptr [edx+38],eax;TControlScrollBar.ThumbSize:Integer
 004A138C    mov         eax,dword ptr [ebp-4]
 004A138F    mov         byte ptr [eax+44],1;TControlScrollBar.FUpdateNeeded:Boolean
 004A1393    mov         eax,dword ptr [ebp-4]
 004A1396    mov         eax,dword ptr [eax+4];TControlScrollBar.FControl:TScrollingWinControl
 004A1399    call        TScrollingWinControl.UpdateScrollBars
 004A139E    pop         ecx
 004A139F    pop         ecx
 004A13A0    pop         ebp
 004A13A1    ret
*}
end;

//004A13A4
procedure sub_004A13A4(?:TControlScrollBar; ?:Integer);
begin
{*
 004A13A4    push        ebp
 004A13A5    mov         ebp,esp
 004A13A7    add         esp,0FFFFFFF8
 004A13AA    mov         dword ptr [ebp-8],edx
 004A13AD    mov         dword ptr [ebp-4],eax
 004A13B0    mov         eax,dword ptr [ebp-8]
 004A13B3    mov         edx,dword ptr [ebp-4]
 004A13B6    mov         dword ptr [edx+10],eax
 004A13B9    mov         eax,dword ptr [ebp-4]
 004A13BC    cmp         dword ptr [eax+10],0
>004A13C0    jge         004A13CA
 004A13C2    mov         eax,dword ptr [ebp-4]
 004A13C5    xor         edx,edx
 004A13C7    mov         dword ptr [eax+10],edx
 004A13CA    mov         eax,dword ptr [ebp-4]
 004A13CD    mov         eax,dword ptr [eax+4]
 004A13D0    call        TScrollingWinControl.UpdateScrollBars
 004A13D5    pop         ecx
 004A13D6    pop         ecx
 004A13D7    pop         ebp
 004A13D8    ret
*}
end;

//004A13DC
procedure TControlScrollBar.SetRange(Value:Integer);
begin
{*
 004A13DC    push        ebp
 004A13DD    mov         ebp,esp
 004A13DF    add         esp,0FFFFFFF8
 004A13E2    mov         dword ptr [ebp-8],edx
 004A13E5    mov         dword ptr [ebp-4],eax
 004A13E8    mov         eax,dword ptr [ebp-4]
 004A13EB    mov         eax,dword ptr [eax+4];TControlScrollBar.FControl:TScrollingWinControl
 004A13EE    mov         byte ptr [eax+210],0;TScrollingWinControl.FAutoScroll:Boolean
 004A13F5    mov         eax,dword ptr [ebp-4]
 004A13F8    mov         byte ptr [eax+1E],1;TControlScrollBar.FScaled:Boolean
 004A13FC    mov         edx,dword ptr [ebp-8]
 004A13FF    mov         eax,dword ptr [ebp-4]
 004A1402    call        004A13A4
 004A1407    pop         ecx
 004A1408    pop         ecx
 004A1409    pop         ebp
 004A140A    ret
*}
end;

//004A140C
function TControlScrollBar.IsStoredRange(Value:Integer):Boolean;
begin
{*
 004A140C    push        ebp
 004A140D    mov         ebp,esp
 004A140F    add         esp,0FFFFFFF8
 004A1412    mov         dword ptr [ebp-4],eax
 004A1415    mov         eax,dword ptr [ebp-4]
 004A1418    mov         eax,dword ptr [eax+4];TControlScrollBar.FControl:TScrollingWinControl
 004A141B    mov         al,byte ptr [eax+210];TScrollingWinControl.FAutoScroll:Boolean
 004A1421    xor         al,1
 004A1423    mov         byte ptr [ebp-5],al
 004A1426    mov         al,byte ptr [ebp-5]
 004A1429    pop         ecx
 004A142A    pop         ecx
 004A142B    pop         ebp
 004A142C    ret
*}
end;

//004A1430
procedure TControlScrollBar.SetVisible(Value:Boolean);
begin
{*
 004A1430    push        ebp
 004A1431    mov         ebp,esp
 004A1433    add         esp,0FFFFFFF8
 004A1436    mov         byte ptr [ebp-5],dl
 004A1439    mov         dword ptr [ebp-4],eax
 004A143C    mov         al,byte ptr [ebp-5]
 004A143F    mov         edx,dword ptr [ebp-4]
 004A1442    mov         byte ptr [edx+1C],al;TControlScrollBar.Visible:Boolean
 004A1445    mov         eax,dword ptr [ebp-4]
 004A1448    mov         eax,dword ptr [eax+4];TControlScrollBar.FControl:TScrollingWinControl
 004A144B    call        TScrollingWinControl.UpdateScrollBars
 004A1450    pop         ecx
 004A1451    pop         ecx
 004A1452    pop         ebp
 004A1453    ret
*}
end;

//004A1454
{*procedure sub_004A1454(?:?; ?:?);
begin
 004A1454    push        ebp
 004A1455    mov         ebp,esp
 004A1457    push        ecx
 004A1458    mov         byte ptr [ebp-1],al
 004A145B    cmp         byte ptr [ebp-1],1
 004A145F    cmc
 004A1460    sbb         eax,eax
 004A1462    push        eax
 004A1463    mov         eax,dword ptr [ebp+8]
 004A1466    mov         eax,dword ptr [eax-4]
 004A1469    movzx       eax,byte ptr [eax+34]
 004A146D    mov         eax,dword ptr [eax*4+56CA10]
 004A1474    push        eax
 004A1475    mov         eax,dword ptr [ebp+8]
 004A1478    mov         eax,dword ptr [eax-4]
 004A147B    movzx       eax,byte ptr [eax+18]
 004A147F    lea         eax,[eax+eax*4]
 004A1482    mov         eax,dword ptr [eax*4+56C9E8]
 004A1489    push        eax
 004A148A    mov         eax,dword ptr [ebp+8]
 004A148D    mov         eax,dword ptr [eax-4]
 004A1490    mov         eax,dword ptr [eax+4]
 004A1493    call        TWinControl.GetHandle
 004A1498    push        eax
 004A1499    call        0043B0D8
 004A149E    mov         eax,dword ptr [ebp+8]
 004A14A1    mov         eax,dword ptr [eax-4]
 004A14A4    cmp         dword ptr [eax+24],0
>004A14A8    jle         004A14DF
 004A14AA    push        0
 004A14AC    mov         eax,dword ptr [ebp+8]
 004A14AF    mov         eax,dword ptr [eax-4]
 004A14B2    mov         eax,dword ptr [eax+24]
 004A14B5    push        eax
 004A14B6    mov         eax,dword ptr [ebp+8]
 004A14B9    mov         eax,dword ptr [eax-4]
 004A14BC    movzx       eax,byte ptr [eax+18]
 004A14C0    lea         eax,[eax+eax*4]
 004A14C3    mov         eax,dword ptr [eax*4+56C9EC]
 004A14CA    push        eax
 004A14CB    mov         eax,dword ptr [ebp+8]
 004A14CE    mov         eax,dword ptr [eax-4]
 004A14D1    mov         eax,dword ptr [eax+4]
 004A14D4    call        TWinControl.GetHandle
 004A14D9    push        eax
 004A14DA    call        0043B0D8
 004A14DF    mov         eax,dword ptr [ebp+8]
 004A14E2    mov         eax,dword ptr [eax-4]
 004A14E5    cmp         dword ptr [eax+38],0
>004A14E9    jle         004A1520
 004A14EB    push        0
 004A14ED    mov         eax,dword ptr [ebp+8]
 004A14F0    mov         eax,dword ptr [eax-4]
 004A14F3    mov         eax,dword ptr [eax+38]
 004A14F6    push        eax
 004A14F7    mov         eax,dword ptr [ebp+8]
 004A14FA    mov         eax,dword ptr [eax-4]
 004A14FD    movzx       eax,byte ptr [eax+18]
 004A1501    lea         eax,[eax+eax*4]
 004A1504    mov         eax,dword ptr [eax*4+56C9F0]
 004A150B    push        eax
 004A150C    mov         eax,dword ptr [ebp+8]
 004A150F    mov         eax,dword ptr [eax-4]
 004A1512    mov         eax,dword ptr [eax+4]
 004A1515    call        TWinControl.GetHandle
 004A151A    push        eax
 004A151B    call        0043B0D8
 004A1520    mov         eax,dword ptr [ebp+8]
 004A1523    mov         eax,dword ptr [eax-4]
 004A1526    cmp         dword ptr [eax+30],0
>004A152A    jle         004A1561
 004A152C    push        0
 004A152E    mov         eax,dword ptr [ebp+8]
 004A1531    mov         eax,dword ptr [eax-4]
 004A1534    mov         eax,dword ptr [eax+30]
 004A1537    push        eax
 004A1538    mov         eax,dword ptr [ebp+8]
 004A153B    mov         eax,dword ptr [eax-4]
 004A153E    movzx       eax,byte ptr [eax+18]
 004A1542    lea         eax,[eax+eax*4]
 004A1545    mov         eax,dword ptr [eax*4+56C9F4]
 004A154C    push        eax
 004A154D    mov         eax,dword ptr [ebp+8]
 004A1550    mov         eax,dword ptr [eax-4]
 004A1553    mov         eax,dword ptr [eax+4]
 004A1556    call        TWinControl.GetHandle
 004A155B    push        eax
 004A155C    call        0043B0D8
 004A1561    push        0
 004A1563    mov         eax,dword ptr [ebp+8]
 004A1566    mov         eax,dword ptr [eax-4]
 004A1569    mov         eax,dword ptr [eax+28]
 004A156C    call        ColorToRGB
 004A1571    push        eax
 004A1572    mov         eax,dword ptr [ebp+8]
 004A1575    mov         eax,dword ptr [eax-4]
 004A1578    movzx       eax,byte ptr [eax+18]
 004A157C    lea         eax,[eax+eax*4]
 004A157F    mov         eax,dword ptr [eax*4+56C9F8]
 004A1586    push        eax
 004A1587    mov         eax,dword ptr [ebp+8]
 004A158A    mov         eax,dword ptr [eax-4]
 004A158D    mov         eax,dword ptr [eax+4]
 004A1590    call        TWinControl.GetHandle
 004A1595    push        eax
 004A1596    call        0043B0D8
 004A159B    pop         ecx
 004A159C    pop         ebp
 004A159D    ret
end;*}

//004A15A0
procedure TControlScrollBar.Update(ControlSB:Boolean; AssumeSB:Boolean);
begin
{*
 004A15A0    push        ebp
 004A15A1    mov         ebp,esp
 004A15A3    add         esp,0FFFFFFDC
 004A15A6    mov         byte ptr [ebp-6],cl
 004A15A9    mov         byte ptr [ebp-5],dl
 004A15AC    mov         dword ptr [ebp-4],eax
 004A15AF    mov         eax,dword ptr [ebp-4]
 004A15B2    xor         edx,edx
 004A15B4    mov         dword ptr [eax+14],edx
 004A15B7    mov         word ptr [ebp-8],0
 004A15BD    mov         eax,dword ptr [ebp-4]
 004A15C0    cmp         byte ptr [eax+18],1
>004A15C4    jne         004A15CC
 004A15C6    mov         word ptr [ebp-8],1
 004A15CC    mov         eax,dword ptr [ebp-4]
 004A15CF    cmp         byte ptr [eax+1C],0
>004A15D3    je          004A1602
 004A15D5    mov         cl,byte ptr [ebp-6]
 004A15D8    mov         dl,byte ptr [ebp-5]
 004A15DB    mov         eax,dword ptr [ebp-4]
 004A15DE    call        004A0C6C
 004A15E3    mov         edx,dword ptr [ebp-4]
 004A15E6    mov         edx,dword ptr [edx+10]
 004A15E9    sub         edx,eax
 004A15EB    mov         eax,dword ptr [ebp-4]
 004A15EE    mov         dword ptr [eax+14],edx
 004A15F1    mov         eax,dword ptr [ebp-4]
 004A15F4    cmp         dword ptr [eax+14],0
>004A15F8    jge         004A1602
 004A15FA    mov         eax,dword ptr [ebp-4]
 004A15FD    xor         edx,edx
 004A15FF    mov         dword ptr [eax+14],edx
 004A1602    mov         dword ptr [ebp-24],1C
 004A1609    mov         dword ptr [ebp-20],17
 004A1610    xor         eax,eax
 004A1612    mov         dword ptr [ebp-1C],eax
 004A1615    mov         eax,dword ptr [ebp-4]
 004A1618    cmp         dword ptr [eax+14],0
>004A161C    jle         004A1629
 004A161E    mov         eax,dword ptr [ebp-4]
 004A1621    mov         eax,dword ptr [eax+10]
 004A1624    mov         dword ptr [ebp-18],eax
>004A1627    jmp         004A162E
 004A1629    xor         eax,eax
 004A162B    mov         dword ptr [ebp-18],eax
 004A162E    mov         cl,byte ptr [ebp-6]
 004A1631    mov         dl,byte ptr [ebp-5]
 004A1634    mov         eax,dword ptr [ebp-4]
 004A1637    call        004A0C6C
 004A163C    inc         eax
 004A163D    mov         dword ptr [ebp-14],eax
 004A1640    mov         eax,dword ptr [ebp-4]
 004A1643    mov         eax,dword ptr [eax+0C]
 004A1646    mov         dword ptr [ebp-10],eax
 004A1649    mov         eax,dword ptr [ebp-4]
 004A164C    mov         eax,dword ptr [eax+0C]
 004A164F    mov         dword ptr [ebp-0C],eax
 004A1652    push        ebp
 004A1653    mov         eax,dword ptr [ebp-4]
 004A1656    mov         al,byte ptr [eax+44]
 004A1659    call        004A1454
 004A165E    pop         ecx
 004A165F    mov         eax,dword ptr [ebp-4]
 004A1662    mov         byte ptr [eax+44],0
 004A1666    push        0FF
 004A1668    lea         eax,[ebp-24]
 004A166B    push        eax
 004A166C    movzx       eax,word ptr [ebp-8]
 004A1670    push        eax
 004A1671    mov         eax,dword ptr [ebp-4]
 004A1674    mov         eax,dword ptr [eax+4]
 004A1677    call        TWinControl.GetHandle
 004A167C    push        eax
 004A167D    mov         eax,[0056E3A0];^gvar_00571B8C:Integer
 004A1682    mov         eax,dword ptr [eax]
 004A1684    call        eax
 004A1686    mov         eax,dword ptr [ebp-4]
 004A1689    mov         edx,dword ptr [eax+0C]
 004A168C    mov         eax,dword ptr [ebp-4]
 004A168F    call        TControlScrollBar.SetPosition
 004A1694    xor         ecx,ecx
 004A1696    mov         dl,1
 004A1698    mov         eax,dword ptr [ebp-4]
 004A169B    call        004A0C6C
 004A16A0    lea         eax,[eax+eax*8]
 004A16A3    mov         ecx,0A
 004A16A8    cdq
 004A16A9    idiv        eax,ecx
 004A16AB    mov         edx,dword ptr [ebp-4]
 004A16AE    mov         word ptr [edx+0A],ax
 004A16B2    mov         eax,dword ptr [ebp-4]
 004A16B5    cmp         byte ptr [eax+1F],0
>004A16B9    je          004A16D2
 004A16BB    mov         eax,dword ptr [ebp-4]
 004A16BE    movzx       eax,word ptr [eax+0A]
 004A16C2    mov         ecx,0A
 004A16C7    xor         edx,edx
 004A16C9    div         eax,ecx
 004A16CB    mov         edx,dword ptr [ebp-4]
 004A16CE    mov         word ptr [edx+8],ax
 004A16D2    mov         esp,ebp
 004A16D4    pop         ebp
 004A16D5    ret
*}
end;

//004A16D8
constructor sub_004A16D8;
begin
{*
 004A16D8    push        ebp
 004A16D9    mov         ebp,esp
 004A16DB    add         esp,0FFFFFFF4
 004A16DE    test        dl,dl
>004A16E0    je          004A16EA
 004A16E2    add         esp,0FFFFFFF0
 004A16E5    call        @ClassCreate
 004A16EA    mov         dword ptr [ebp-0C],ecx
 004A16ED    mov         byte ptr [ebp-5],dl
 004A16F0    mov         dword ptr [ebp-4],eax
 004A16F3    mov         ecx,dword ptr [ebp-0C]
 004A16F6    xor         edx,edx
 004A16F8    mov         eax,dword ptr [ebp-4]
 004A16FB    call        00486BAC
 004A1700    mov         eax,dword ptr [ebp-4]
 004A1703    mov         eax,dword ptr [eax+50];TScrollingWinControl.FControlStyle:TControlStyle
 004A1706    or          eax,dword ptr ds:[4A1770];0x20000 gvar_004A1770
 004A170C    mov         edx,dword ptr [ebp-4]
 004A170F    mov         dword ptr [edx+50],eax;TScrollingWinControl.FControlStyle:TControlStyle
 004A1712    push        0
 004A1714    mov         ecx,dword ptr [ebp-4]
 004A1717    mov         dl,1
 004A1719    mov         eax,[0049E3AC];TControlScrollBar
 004A171E    call        TControlScrollBar.Create;TControlScrollBar.Create
 004A1723    mov         edx,dword ptr [ebp-4]
 004A1726    mov         dword ptr [edx+208],eax;TScrollingWinControl.HorzScrollBar:TControlScrollBar
 004A172C    push        1
 004A172E    mov         ecx,dword ptr [ebp-4]
 004A1731    mov         dl,1
 004A1733    mov         eax,[0049E3AC];TControlScrollBar
 004A1738    call        TControlScrollBar.Create;TControlScrollBar.Create
 004A173D    mov         edx,dword ptr [ebp-4]
 004A1740    mov         dword ptr [edx+20C],eax;TScrollingWinControl.VertScrollBar:TControlScrollBar
 004A1746    mov         eax,dword ptr [ebp-4]
 004A1749    mov         byte ptr [eax+210],1;TScrollingWinControl.FAutoScroll:Boolean
 004A1750    mov         eax,dword ptr [ebp-4]
 004A1753    cmp         byte ptr [ebp-5],0
>004A1757    je          004A1768
 004A1759    call        @AfterConstruction
 004A175E    pop         dword ptr fs:[0]
 004A1765    add         esp,0C
 004A1768    mov         eax,dword ptr [ebp-4]
 004A176B    mov         esp,ebp
 004A176D    pop         ebp
 004A176E    ret
*}
end;

//004A1774
destructor TScrollingWinControl.Destroy;
begin
{*
 004A1774    push        ebp
 004A1775    mov         ebp,esp
 004A1777    add         esp,0FFFFFFF8
 004A177A    call        @BeforeDestruction
 004A177F    mov         byte ptr [ebp-5],dl
 004A1782    mov         dword ptr [ebp-4],eax
 004A1785    mov         eax,dword ptr [ebp-4]
 004A1788    mov         eax,dword ptr [eax+208]
 004A178E    call        TObject.Free
 004A1793    mov         eax,dword ptr [ebp-4]
 004A1796    mov         eax,dword ptr [eax+20C]
 004A179C    call        TObject.Free
 004A17A1    mov         dl,byte ptr [ebp-5]
 004A17A4    and         dl,0FC
 004A17A7    mov         eax,dword ptr [ebp-4]
 004A17AA    call        TWinControl.Destroy
 004A17AF    cmp         byte ptr [ebp-5],0
>004A17B3    jle         004A17BD
 004A17B5    mov         eax,dword ptr [ebp-4]
 004A17B8    call        @ClassDestroy
 004A17BD    pop         ecx
 004A17BE    pop         ecx
 004A17BF    pop         ebp
 004A17C0    ret
*}
end;

//004A17C4
{*procedure sub_004A17C4(?:?);
begin
 004A17C4    push        ebp
 004A17C5    mov         ebp,esp
 004A17C7    add         esp,0FFFFFFF8
 004A17CA    mov         dword ptr [ebp-8],edx
 004A17CD    mov         dword ptr [ebp-4],eax
 004A17D0    mov         edx,dword ptr [ebp-8]
 004A17D3    mov         eax,dword ptr [ebp-4]
 004A17D6    call        00488034
 004A17DB    mov         eax,dword ptr [ebp-8]
 004A17DE    and         dword ptr [eax+24],0FFFFFFFC
 004A17E2    pop         ecx
 004A17E3    pop         ecx
 004A17E4    pop         ebp
 004A17E5    ret
end;*}

//004A17E8
procedure TScrollingWinControl.CreateWnd;
begin
{*
 004A17E8    push        ebp
 004A17E9    mov         ebp,esp
 004A17EB    push        ecx
 004A17EC    mov         dword ptr [ebp-4],eax
 004A17EF    mov         eax,dword ptr [ebp-4]
 004A17F2    call        TWinControl.CreateWnd
 004A17F7    mov         eax,[0056E638];^gvar_0057196C:Integer
 004A17FC    cmp         byte ptr [eax+0D],0
>004A1800    jne         004A1823
 004A1802    mov         edx,1
 004A1807    mov         eax,5
 004A180C    call        00410F7C
 004A1811    test        al,al
>004A1813    jne         004A1823
 004A1815    mov         eax,dword ptr [ebp-4]
 004A1818    call        TWinControl.GetHandle
 004A181D    push        eax
 004A181E    call        0043B114
 004A1823    mov         eax,dword ptr [ebp-4]
 004A1826    call        TScrollingWinControl.UpdateScrollBars
 004A182B    pop         ecx
 004A182C    pop         ebp
 004A182D    ret
*}
end;

//004A1830
procedure TScrollingWinControl.AlignControls(AControl:TControl; var Rect:TRect);
begin
{*
 004A1830    push        ebp
 004A1831    mov         ebp,esp
 004A1833    add         esp,0FFFFFFF4
 004A1836    mov         dword ptr [ebp-0C],ecx
 004A1839    mov         dword ptr [ebp-8],edx
 004A183C    mov         dword ptr [ebp-4],eax
 004A183F    mov         eax,dword ptr [ebp-4]
 004A1842    call        004A19D4
 004A1847    mov         ecx,dword ptr [ebp-0C]
 004A184A    mov         edx,dword ptr [ebp-8]
 004A184D    mov         eax,dword ptr [ebp-4]
 004A1850    call        TWinControl.AlignControls
 004A1855    mov         esp,ebp
 004A1857    pop         ebp
 004A1858    ret
*}
end;

//004A185C
{*function sub_004A185C:?;
begin
 004A185C    push        ebp
 004A185D    mov         ebp,esp
 004A185F    add         esp,0FFFFFFF8
 004A1862    mov         dword ptr [ebp-4],eax
 004A1865    mov         eax,dword ptr [ebp-4]
 004A1868    cmp         byte ptr [eax+5C],0;TScrollingWinControl.FAutoSize:Boolean
>004A186C    jne         004A1886
 004A186E    mov         eax,dword ptr [ebp-4]
 004A1871    cmp         byte ptr [eax+1A8],0;TScrollingWinControl.FDockSite:Boolean
>004A1878    je          004A188A
 004A187A    mov         eax,dword ptr [ebp-4]
 004A187D    cmp         byte ptr [eax+1A7],0;TScrollingWinControl.FUseDockManager:Boolean
>004A1884    je          004A188A
 004A1886    xor         eax,eax
>004A1888    jmp         004A188C
 004A188A    mov         al,1
 004A188C    mov         byte ptr [ebp-5],al
 004A188F    mov         al,byte ptr [ebp-5]
 004A1892    pop         ecx
 004A1893    pop         ecx
 004A1894    pop         ebp
 004A1895    ret
end;*}

//004A1898
procedure TScrollingWinControl.sub_004878D0;
begin
{*
 004A1898    push        ebp
 004A1899    mov         ebp,esp
 004A189B    add         esp,0FFFFFFE0
 004A189E    mov         dword ptr [ebp-4],eax
 004A18A1    mov         dl,1
 004A18A3    mov         eax,[0041D46C];TList
 004A18A8    call        TObject.Create;TList.Create
 004A18AD    mov         dword ptr [ebp-14],eax
 004A18B0    xor         eax,eax
 004A18B2    push        ebp
 004A18B3    push        4A19C9
 004A18B8    push        dword ptr fs:[eax]
 004A18BB    mov         dword ptr fs:[eax],esp
 004A18BE    mov         eax,dword ptr [ebp-4]
 004A18C1    call        TControl.GetClientWidth
 004A18C6    mov         dword ptr [ebp-0C],eax
 004A18C9    mov         eax,dword ptr [ebp-4]
 004A18CC    mov         eax,dword ptr [eax+208];TScrollingWinControl.HorzScrollBar:TControlScrollBar
 004A18D2    mov         dword ptr [ebp-18],eax
 004A18D5    mov         eax,dword ptr [ebp-18]
 004A18D8    call        004A0B48
 004A18DD    test        al,al
>004A18DF    je          004A18EC
 004A18E1    mov         eax,dword ptr [ebp-18]
 004A18E4    mov         eax,dword ptr [eax+10];TControlScrollBar.Range:Integer
 004A18E7    cmp         eax,dword ptr [ebp-0C]
>004A18EA    jg          004A18F0
 004A18EC    xor         eax,eax
>004A18EE    jmp         004A18F2
 004A18F0    mov         al,1
 004A18F2    mov         byte ptr [ebp-0D],al
 004A18F5    cmp         byte ptr [ebp-0D],0
>004A18F9    je          004A190E
 004A18FB    mov         eax,dword ptr [ebp-18]
 004A18FE    mov         eax,dword ptr [eax+10];TControlScrollBar.Range:Integer
 004A1901    mov         dword ptr [ebp-0C],eax
 004A1904    xor         edx,edx
 004A1906    mov         eax,dword ptr [ebp-18]
 004A1909    call        TControlScrollBar.SetPosition
 004A190E    mov         eax,dword ptr [ebp-4]
 004A1911    call        00487E38
 004A1916    dec         eax
 004A1917    test        eax,eax
>004A1919    jl          004A1968
 004A191B    inc         eax
 004A191C    mov         dword ptr [ebp-1C],eax
 004A191F    mov         dword ptr [ebp-8],0
 004A1926    mov         edx,dword ptr [ebp-8]
 004A1929    mov         eax,dword ptr [ebp-4]
 004A192C    call        00487DCC
 004A1931    mov         dword ptr [ebp-20],eax
 004A1934    mov         edx,dword ptr [ebp-8]
 004A1937    mov         eax,dword ptr [ebp-4]
 004A193A    call        00487DCC
 004A193F    mov         edx,eax
 004A1941    mov         eax,dword ptr [ebp-14]
 004A1944    call        TList.Add
 004A1949    mov         eax,dword ptr [ebp-20]
 004A194C    mov         edx,dword ptr [ebp-0C]
 004A194F    sub         edx,dword ptr [eax+48]
 004A1952    mov         eax,dword ptr [ebp-20]
 004A1955    sub         edx,dword ptr [eax+40]
 004A1958    mov         eax,dword ptr [ebp-20]
 004A195B    call        TControl.SetLeft
 004A1960    inc         dword ptr [ebp-8]
 004A1963    dec         dword ptr [ebp-1C]
>004A1966    jne         004A1926
 004A1968    mov         eax,dword ptr [ebp-14]
 004A196B    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 004A196E    dec         eax
 004A196F    test        eax,eax
>004A1971    jl          004A199F
 004A1973    inc         eax
 004A1974    mov         dword ptr [ebp-1C],eax
 004A1977    mov         dword ptr [ebp-8],0
 004A197E    push        0
 004A1980    mov         edx,dword ptr [ebp-8]
 004A1983    mov         eax,dword ptr [ebp-14]
 004A1986    call        TList.Get
 004A198B    xor         ecx,ecx
 004A198D    mov         edx,0B03E
 004A1992    call        00484FFC
 004A1997    inc         dword ptr [ebp-8]
 004A199A    dec         dword ptr [ebp-1C]
>004A199D    jne         004A197E
 004A199F    cmp         byte ptr [ebp-0D],0
>004A19A3    je          004A19B3
 004A19A5    mov         eax,dword ptr [ebp-4]
 004A19A8    mov         eax,dword ptr [eax+208];TScrollingWinControl.HorzScrollBar:TControlScrollBar
 004A19AE    call        TControlScrollBar.ChangeBiDiPosition
 004A19B3    xor         eax,eax
 004A19B5    pop         edx
 004A19B6    pop         ecx
 004A19B7    pop         ecx
 004A19B8    mov         dword ptr fs:[eax],edx
 004A19BB    push        4A19D0
 004A19C0    mov         eax,dword ptr [ebp-14]
 004A19C3    call        TObject.Free
 004A19C8    ret
>004A19C9    jmp         @HandleFinally
>004A19CE    jmp         004A19C0
 004A19D0    mov         esp,ebp
 004A19D2    pop         ebp
 004A19D3    ret
*}
end;

//004A19D4
procedure sub_004A19D4(?:TScrollingWinControl);
begin
{*
 004A19D4    push        ebp
 004A19D5    mov         ebp,esp
 004A19D7    push        ecx
 004A19D8    mov         dword ptr [ebp-4],eax
 004A19DB    mov         eax,dword ptr [ebp-4]
 004A19DE    cmp         dword ptr [eax+214],0;TScrollingWinControl.FAutoRangeCount:Integer
>004A19E5    jg          004A1A03
 004A19E7    mov         eax,dword ptr [ebp-4]
 004A19EA    mov         eax,dword ptr [eax+208];TScrollingWinControl.HorzScrollBar:TControlScrollBar
 004A19F0    call        004A0A90
 004A19F5    mov         eax,dword ptr [ebp-4]
 004A19F8    mov         eax,dword ptr [eax+20C];TScrollingWinControl.VertScrollBar:TControlScrollBar
 004A19FE    call        004A0A90
 004A1A03    pop         ecx
 004A1A04    pop         ebp
 004A1A05    ret
*}
end;

//004A1A08
procedure TForm.SetAutoScroll(Value:Boolean);
begin
{*
 004A1A08    push        ebp
 004A1A09    mov         ebp,esp
 004A1A0B    add         esp,0FFFFFFF8
 004A1A0E    mov         byte ptr [ebp-5],dl
 004A1A11    mov         dword ptr [ebp-4],eax
 004A1A14    mov         eax,dword ptr [ebp-4]
 004A1A17    mov         al,byte ptr [eax+210];TForm.FAutoScroll:Boolean
 004A1A1D    cmp         al,byte ptr [ebp-5]
>004A1A20    je          004A1A5E
 004A1A22    mov         al,byte ptr [ebp-5]
 004A1A25    mov         edx,dword ptr [ebp-4]
 004A1A28    mov         byte ptr [edx+210],al;TForm.FAutoScroll:Boolean
 004A1A2E    cmp         byte ptr [ebp-5],0
>004A1A32    je          004A1A3E
 004A1A34    mov         eax,dword ptr [ebp-4]
 004A1A37    call        004A19D4
>004A1A3C    jmp         004A1A5E
 004A1A3E    xor         edx,edx
 004A1A40    mov         eax,dword ptr [ebp-4]
 004A1A43    mov         eax,dword ptr [eax+208];TForm.HorzScrollBar:TControlScrollBar
 004A1A49    call        TControlScrollBar.SetRange
 004A1A4E    xor         edx,edx
 004A1A50    mov         eax,dword ptr [ebp-4]
 004A1A53    mov         eax,dword ptr [eax+20C];TForm.VertScrollBar:TControlScrollBar
 004A1A59    call        TControlScrollBar.SetRange
 004A1A5E    pop         ecx
 004A1A5F    pop         ecx
 004A1A60    pop         ebp
 004A1A61    ret
*}
end;

//004A1A64
procedure TScrollingWinControl.SetHorzScrollBar(Value:TControlScrollBar);
begin
{*
 004A1A64    push        ebp
 004A1A65    mov         ebp,esp
 004A1A67    add         esp,0FFFFFFF8
 004A1A6A    mov         dword ptr [ebp-8],edx
 004A1A6D    mov         dword ptr [ebp-4],eax
 004A1A70    mov         edx,dword ptr [ebp-8]
 004A1A73    mov         eax,dword ptr [ebp-4]
 004A1A76    mov         eax,dword ptr [eax+208];TScrollingWinControl.HorzScrollBar:TControlScrollBar
 004A1A7C    mov         ecx,dword ptr [eax]
 004A1A7E    call        dword ptr [ecx+8];TControlScrollBar.sub_004A08E0
 004A1A81    pop         ecx
 004A1A82    pop         ecx
 004A1A83    pop         ebp
 004A1A84    ret
*}
end;

//004A1A88
procedure TScrollingWinControl.SetVertScrollBar(Value:TControlScrollBar);
begin
{*
 004A1A88    push        ebp
 004A1A89    mov         ebp,esp
 004A1A8B    add         esp,0FFFFFFF8
 004A1A8E    mov         dword ptr [ebp-8],edx
 004A1A91    mov         dword ptr [ebp-4],eax
 004A1A94    mov         edx,dword ptr [ebp-8]
 004A1A97    mov         eax,dword ptr [ebp-4]
 004A1A9A    mov         eax,dword ptr [eax+20C];TScrollingWinControl.VertScrollBar:TControlScrollBar
 004A1AA0    mov         ecx,dword ptr [eax]
 004A1AA2    call        dword ptr [ecx+8];TControlScrollBar.sub_004A08E0
 004A1AA5    pop         ecx
 004A1AA6    pop         ecx
 004A1AA7    pop         ebp
 004A1AA8    ret
*}
end;

//004A1AAC
procedure TScrollingWinControl.UpdateScrollBars;
begin
{*
 004A1AAC    push        ebp
 004A1AAD    mov         ebp,esp
 004A1AAF    push        ecx
 004A1AB0    mov         dword ptr [ebp-4],eax
 004A1AB3    mov         eax,dword ptr [ebp-4]
 004A1AB6    cmp         byte ptr [eax+218],0
>004A1ABD    jne         004A1B9E
 004A1AC3    mov         eax,dword ptr [ebp-4]
 004A1AC6    call        TWinControl.HandleAllocated
 004A1ACB    test        al,al
>004A1ACD    je          004A1B9E
 004A1AD3    xor         eax,eax
 004A1AD5    push        ebp
 004A1AD6    push        4A1B97
 004A1ADB    push        dword ptr fs:[eax]
 004A1ADE    mov         dword ptr fs:[eax],esp
 004A1AE1    mov         eax,dword ptr [ebp-4]
 004A1AE4    mov         byte ptr [eax+218],1
 004A1AEB    mov         eax,dword ptr [ebp-4]
 004A1AEE    mov         eax,dword ptr [eax+20C]
 004A1AF4    call        TControlScrollBar.NeedsScrollBarVisible
 004A1AF9    test        al,al
>004A1AFB    je          004A1B23
 004A1AFD    mov         eax,dword ptr [ebp-4]
 004A1B00    mov         eax,dword ptr [eax+208]
 004A1B06    mov         cl,1
 004A1B08    xor         edx,edx
 004A1B0A    call        TControlScrollBar.Update
 004A1B0F    mov         eax,dword ptr [ebp-4]
 004A1B12    mov         eax,dword ptr [eax+20C]
 004A1B18    xor         ecx,ecx
 004A1B1A    mov         dl,1
 004A1B1C    call        TControlScrollBar.Update
>004A1B21    jmp         004A1B7F
 004A1B23    mov         eax,dword ptr [ebp-4]
 004A1B26    mov         eax,dword ptr [eax+208]
 004A1B2C    call        TControlScrollBar.NeedsScrollBarVisible
 004A1B31    test        al,al
>004A1B33    je          004A1B5B
 004A1B35    mov         eax,dword ptr [ebp-4]
 004A1B38    mov         eax,dword ptr [eax+20C]
 004A1B3E    mov         cl,1
 004A1B40    xor         edx,edx
 004A1B42    call        TControlScrollBar.Update
 004A1B47    mov         eax,dword ptr [ebp-4]
 004A1B4A    mov         eax,dword ptr [eax+208]
 004A1B50    xor         ecx,ecx
 004A1B52    mov         dl,1
 004A1B54    call        TControlScrollBar.Update
>004A1B59    jmp         004A1B7F
 004A1B5B    mov         eax,dword ptr [ebp-4]
 004A1B5E    mov         eax,dword ptr [eax+20C]
 004A1B64    xor         ecx,ecx
 004A1B66    xor         edx,edx
 004A1B68    call        TControlScrollBar.Update
 004A1B6D    mov         eax,dword ptr [ebp-4]
 004A1B70    mov         eax,dword ptr [eax+208]
 004A1B76    xor         ecx,ecx
 004A1B78    mov         dl,1
 004A1B7A    call        TControlScrollBar.Update
 004A1B7F    xor         eax,eax
 004A1B81    pop         edx
 004A1B82    pop         ecx
 004A1B83    pop         ecx
 004A1B84    mov         dword ptr fs:[eax],edx
 004A1B87    push        4A1B9E
 004A1B8C    mov         eax,dword ptr [ebp-4]
 004A1B8F    mov         byte ptr [eax+218],0
 004A1B96    ret
>004A1B97    jmp         @HandleFinally
>004A1B9C    jmp         004A1B8C
 004A1B9E    pop         ecx
 004A1B9F    pop         ebp
 004A1BA0    ret
*}
end;

//004A1BA4
{*procedure sub_004A1BA4(?:?);
begin
 004A1BA4    push        ebp
 004A1BA5    mov         ebp,esp
 004A1BA7    add         esp,0FFFFFFF8
 004A1BAA    mov         dword ptr [ebp-8],edx
 004A1BAD    mov         dword ptr [ebp-4],eax
 004A1BB0    cmp         dword ptr [ebp-8],0
>004A1BB4    je          004A1BD3
 004A1BB6    mov         eax,dword ptr [ebp-8]
 004A1BB9    test        byte ptr [eax+1C],1
>004A1BBD    jne         004A1BD3
 004A1BBF    mov         eax,dword ptr [ebp-4]
 004A1BC2    test        byte ptr [eax+1C],1;TScrollingWinControl.FComponentState:TComponentState
>004A1BC6    jne         004A1BD3
 004A1BC8    mov         edx,dword ptr [ebp-8]
 004A1BCB    mov         eax,dword ptr [ebp-4]
 004A1BCE    call        004A1BD8
 004A1BD3    pop         ecx
 004A1BD4    pop         ecx
 004A1BD5    pop         ebp
 004A1BD6    ret
end;*}

//004A1BD8
{*procedure sub_004A1BD8(?:TScrollingWinControl; ?:?);
begin
 004A1BD8    push        ebp
 004A1BD9    mov         ebp,esp
 004A1BDB    add         esp,0FFFFFFC8
 004A1BDE    mov         dword ptr [ebp-8],edx
 004A1BE1    mov         dword ptr [ebp-4],eax
 004A1BE4    cmp         dword ptr [ebp-8],0
>004A1BE8    je          004A1D7B
 004A1BEE    lea         edx,[ebp-28]
 004A1BF1    mov         eax,dword ptr [ebp-8]
 004A1BF4    mov         ecx,dword ptr [eax]
 004A1BF6    call        dword ptr [ecx+44]
 004A1BF9    mov         eax,dword ptr [ebp-4]
 004A1BFC    mov         eax,dword ptr [eax+208];TScrollingWinControl.HorzScrollBar:TControlScrollBar
 004A1C02    movzx       eax,word ptr [eax+1A];TControlScrollBar.Margin:word
 004A1C06    sub         dword ptr [ebp-28],eax
 004A1C09    mov         eax,dword ptr [ebp-4]
 004A1C0C    mov         eax,dword ptr [eax+208];TScrollingWinControl.HorzScrollBar:TControlScrollBar
 004A1C12    movzx       eax,word ptr [eax+1A];TControlScrollBar.Margin:word
 004A1C16    add         dword ptr [ebp-20],eax
 004A1C19    mov         eax,dword ptr [ebp-4]
 004A1C1C    mov         eax,dword ptr [eax+20C];TScrollingWinControl.VertScrollBar:TControlScrollBar
 004A1C22    movzx       eax,word ptr [eax+1A];TControlScrollBar.Margin:word
 004A1C26    sub         dword ptr [ebp-24],eax
 004A1C29    mov         eax,dword ptr [ebp-4]
 004A1C2C    mov         eax,dword ptr [eax+20C];TScrollingWinControl.VertScrollBar:TControlScrollBar
 004A1C32    movzx       eax,word ptr [eax+1A];TControlScrollBar.Margin:word
 004A1C36    add         dword ptr [ebp-1C],eax
 004A1C39    lea         ecx,[ebp-38]
 004A1C3C    lea         edx,[ebp-28]
 004A1C3F    mov         eax,dword ptr [ebp-8]
 004A1C42    call        TControl.ClientToScreen
 004A1C47    lea         edx,[ebp-38]
 004A1C4A    lea         ecx,[ebp-30]
 004A1C4D    mov         eax,dword ptr [ebp-4]
 004A1C50    call        TControl.ScreenToClient
 004A1C55    mov         eax,dword ptr [ebp-30]
 004A1C58    mov         dword ptr [ebp-28],eax
 004A1C5B    mov         eax,dword ptr [ebp-2C]
 004A1C5E    mov         dword ptr [ebp-24],eax
 004A1C61    lea         ecx,[ebp-38]
 004A1C64    lea         edx,[ebp-20]
 004A1C67    mov         eax,dword ptr [ebp-8]
 004A1C6A    call        TControl.ClientToScreen
 004A1C6F    lea         edx,[ebp-38]
 004A1C72    lea         ecx,[ebp-30]
 004A1C75    mov         eax,dword ptr [ebp-4]
 004A1C78    call        TControl.ScreenToClient
 004A1C7D    mov         eax,dword ptr [ebp-30]
 004A1C80    mov         dword ptr [ebp-20],eax
 004A1C83    mov         eax,dword ptr [ebp-2C]
 004A1C86    mov         dword ptr [ebp-1C],eax
 004A1C89    cmp         dword ptr [ebp-28],0
>004A1C8D    jge         004A1CAE
 004A1C8F    mov         eax,dword ptr [ebp-4]
 004A1C92    mov         eax,dword ptr [eax+208];TScrollingWinControl.HorzScrollBar:TControlScrollBar
 004A1C98    mov         dword ptr [ebp-0C],eax
 004A1C9B    mov         eax,dword ptr [ebp-0C]
 004A1C9E    mov         edx,dword ptr [eax+0C];TControlScrollBar.Position:Integer
 004A1CA1    add         edx,dword ptr [ebp-28]
 004A1CA4    mov         eax,dword ptr [ebp-0C]
 004A1CA7    call        TControlScrollBar.SetPosition
>004A1CAC    jmp         004A1D02
 004A1CAE    mov         eax,dword ptr [ebp-4]
 004A1CB1    call        TControl.GetClientWidth
 004A1CB6    cmp         eax,dword ptr [ebp-20]
>004A1CB9    jge         004A1D02
 004A1CBB    mov         eax,dword ptr [ebp-4]
 004A1CBE    call        TControl.GetClientWidth
 004A1CC3    mov         edx,dword ptr [ebp-20]
 004A1CC6    sub         edx,dword ptr [ebp-28]
 004A1CC9    cmp         eax,edx
>004A1CCB    jge         004A1CDB
 004A1CCD    mov         eax,dword ptr [ebp-4]
 004A1CD0    call        TControl.GetClientWidth
 004A1CD5    add         eax,dword ptr [ebp-28]
 004A1CD8    mov         dword ptr [ebp-20],eax
 004A1CDB    mov         eax,dword ptr [ebp-4]
 004A1CDE    mov         eax,dword ptr [eax+208];TScrollingWinControl.HorzScrollBar:TControlScrollBar
 004A1CE4    mov         dword ptr [ebp-10],eax
 004A1CE7    mov         eax,dword ptr [ebp-4]
 004A1CEA    call        TControl.GetClientWidth
 004A1CEF    mov         edx,dword ptr [ebp-10]
 004A1CF2    mov         edx,dword ptr [edx+0C];TControlScrollBar.Position:Integer
 004A1CF5    add         edx,dword ptr [ebp-20]
 004A1CF8    sub         edx,eax
 004A1CFA    mov         eax,dword ptr [ebp-10]
 004A1CFD    call        TControlScrollBar.SetPosition
 004A1D02    cmp         dword ptr [ebp-24],0
>004A1D06    jge         004A1D27
 004A1D08    mov         eax,dword ptr [ebp-4]
 004A1D0B    mov         eax,dword ptr [eax+20C];TScrollingWinControl.VertScrollBar:TControlScrollBar
 004A1D11    mov         dword ptr [ebp-14],eax
 004A1D14    mov         eax,dword ptr [ebp-14]
 004A1D17    mov         edx,dword ptr [eax+0C];TControlScrollBar.Position:Integer
 004A1D1A    add         edx,dword ptr [ebp-24]
 004A1D1D    mov         eax,dword ptr [ebp-14]
 004A1D20    call        TControlScrollBar.SetPosition
>004A1D25    jmp         004A1D7B
 004A1D27    mov         eax,dword ptr [ebp-4]
 004A1D2A    call        TControl.GetClientHeight
 004A1D2F    cmp         eax,dword ptr [ebp-1C]
>004A1D32    jge         004A1D7B
 004A1D34    mov         eax,dword ptr [ebp-4]
 004A1D37    call        TControl.GetClientHeight
 004A1D3C    mov         edx,dword ptr [ebp-1C]
 004A1D3F    sub         edx,dword ptr [ebp-24]
 004A1D42    cmp         eax,edx
>004A1D44    jge         004A1D54
 004A1D46    mov         eax,dword ptr [ebp-4]
 004A1D49    call        TControl.GetClientHeight
 004A1D4E    add         eax,dword ptr [ebp-24]
 004A1D51    mov         dword ptr [ebp-1C],eax
 004A1D54    mov         eax,dword ptr [ebp-4]
 004A1D57    mov         eax,dword ptr [eax+20C];TScrollingWinControl.VertScrollBar:TControlScrollBar
 004A1D5D    mov         dword ptr [ebp-18],eax
 004A1D60    mov         eax,dword ptr [ebp-4]
 004A1D63    call        TControl.GetClientHeight
 004A1D68    mov         edx,dword ptr [ebp-18]
 004A1D6B    mov         edx,dword ptr [edx+0C];TControlScrollBar.Position:Integer
 004A1D6E    add         edx,dword ptr [ebp-1C]
 004A1D71    sub         edx,eax
 004A1D73    mov         eax,dword ptr [ebp-18]
 004A1D76    call        TControlScrollBar.SetPosition
 004A1D7B    mov         esp,ebp
 004A1D7D    pop         ebp
 004A1D7E    ret
end;*}

//004A1D80
{*procedure sub_004A1D80(?:TScrollingWinControl; ?:?; ?:Integer);
begin
 004A1D80    push        ebp
 004A1D81    mov         ebp,esp
 004A1D83    add         esp,0FFFFFFEC
 004A1D86    mov         dword ptr [ebp-0C],ecx
 004A1D89    mov         dword ptr [ebp-8],edx
 004A1D8C    mov         dword ptr [ebp-4],eax
 004A1D8F    mov         eax,dword ptr [ebp-8]
 004A1D92    cmp         eax,dword ptr [ebp-0C]
>004A1D95    je          004A1E50
 004A1D9B    mov         eax,dword ptr [ebp-4]
 004A1D9E    test        byte ptr [eax+1C],1
>004A1DA2    jne         004A1DBE
 004A1DA4    mov         eax,dword ptr [ebp-4]
 004A1DA7    mov         eax,dword ptr [eax+208]
 004A1DAD    mov         byte ptr [eax+1E],1
 004A1DB1    mov         eax,dword ptr [ebp-4]
 004A1DB4    mov         eax,dword ptr [eax+20C]
 004A1DBA    mov         byte ptr [eax+1E],1
 004A1DBE    xor         edx,edx
 004A1DC0    mov         eax,dword ptr [ebp-4]
 004A1DC3    mov         eax,dword ptr [eax+208]
 004A1DC9    call        TControlScrollBar.SetPosition
 004A1DCE    xor         edx,edx
 004A1DD0    mov         eax,dword ptr [ebp-4]
 004A1DD3    mov         eax,dword ptr [eax+20C]
 004A1DD9    call        TControlScrollBar.SetPosition
 004A1DDE    mov         eax,dword ptr [ebp-4]
 004A1DE1    cmp         byte ptr [eax+210],0
>004A1DE8    jne         004A1E50
 004A1DEA    mov         eax,dword ptr [ebp-4]
 004A1DED    mov         eax,dword ptr [eax+208]
 004A1DF3    mov         dword ptr [ebp-10],eax
 004A1DF6    mov         eax,dword ptr [ebp-10]
 004A1DF9    cmp         byte ptr [eax+1E],0
>004A1DFD    je          004A1E1D
 004A1DFF    mov         eax,dword ptr [ebp-0C]
 004A1E02    push        eax
 004A1E03    mov         eax,dword ptr [ebp-8]
 004A1E06    push        eax
 004A1E07    mov         eax,dword ptr [ebp-10]
 004A1E0A    mov         eax,dword ptr [eax+10]
 004A1E0D    push        eax
 004A1E0E    call        kernel32.MulDiv
 004A1E13    mov         edx,eax
 004A1E15    mov         eax,dword ptr [ebp-10]
 004A1E18    call        TControlScrollBar.SetRange
 004A1E1D    mov         eax,dword ptr [ebp-4]
 004A1E20    mov         eax,dword ptr [eax+20C]
 004A1E26    mov         dword ptr [ebp-14],eax
 004A1E29    mov         eax,dword ptr [ebp-14]
 004A1E2C    cmp         byte ptr [eax+1E],0
>004A1E30    je          004A1E50
 004A1E32    mov         eax,dword ptr [ebp-0C]
 004A1E35    push        eax
 004A1E36    mov         eax,dword ptr [ebp-8]
 004A1E39    push        eax
 004A1E3A    mov         eax,dword ptr [ebp-14]
 004A1E3D    mov         eax,dword ptr [eax+10]
 004A1E40    push        eax
 004A1E41    call        kernel32.MulDiv
 004A1E46    mov         edx,eax
 004A1E48    mov         eax,dword ptr [ebp-14]
 004A1E4B    call        TControlScrollBar.SetRange
 004A1E50    mov         eax,dword ptr [ebp-4]
 004A1E53    mov         eax,dword ptr [eax+208]
 004A1E59    mov         byte ptr [eax+1E],0
 004A1E5D    mov         eax,dword ptr [ebp-4]
 004A1E60    mov         eax,dword ptr [eax+20C]
 004A1E66    mov         byte ptr [eax+1E],0
 004A1E6A    mov         esp,ebp
 004A1E6C    pop         ebp
 004A1E6D    ret
end;*}

//004A1E70
{*procedure TScrollingWinControl.sub_00483238(?:?; ?:?);
begin
 004A1E70    push        ebp
 004A1E71    mov         ebp,esp
 004A1E73    add         esp,0FFFFFFF4
 004A1E76    mov         dword ptr [ebp-0C],ecx
 004A1E79    mov         dword ptr [ebp-8],edx
 004A1E7C    mov         dword ptr [ebp-4],eax
 004A1E7F    mov         ecx,dword ptr [ebp-0C]
 004A1E82    mov         edx,dword ptr [ebp-8]
 004A1E85    mov         eax,dword ptr [ebp-4]
 004A1E88    call        004A1D80
 004A1E8D    mov         ecx,dword ptr [ebp-0C]
 004A1E90    mov         edx,dword ptr [ebp-8]
 004A1E93    mov         eax,dword ptr [ebp-4]
 004A1E96    call        TWinControl.sub_00483238
 004A1E9B    mov         esp,ebp
 004A1E9D    pop         ebp
 004A1E9E    ret
end;*}

//004A1EA0
{*procedure sub_004A1EA0(?:?);
begin
 004A1EA0    push        ebp
 004A1EA1    mov         ebp,esp
 004A1EA3    add         esp,0FFFFFFF8
 004A1EA6    mov         byte ptr [ebp-5],dl
 004A1EA9    mov         dword ptr [ebp-4],eax
 004A1EAC    pop         ecx
 004A1EAD    pop         ecx
 004A1EAE    pop         ebp
 004A1EAF    ret
end;*}

//004A1EB0
{*procedure TScrollingWinControl.WMSize(?:?);
begin
 004A1EB0    push        ebp
 004A1EB1    mov         ebp,esp
 004A1EB3    add         esp,0FFFFFFF4
 004A1EB6    mov         dword ptr [ebp-8],edx
 004A1EB9    mov         dword ptr [ebp-4],eax
 004A1EBC    mov         eax,dword ptr [ebp-4]
 004A1EBF    inc         dword ptr [eax+214];TScrollingWinControl.FAutoRangeCount:Integer
 004A1EC5    xor         eax,eax
 004A1EC7    push        ebp
 004A1EC8    push        4A1F29
 004A1ECD    push        dword ptr fs:[eax]
 004A1ED0    mov         dword ptr fs:[eax],esp
 004A1ED3    mov         edx,dword ptr [ebp-8]
 004A1ED6    mov         eax,dword ptr [ebp-4]
 004A1ED9    call        TWinControl.WMSize
 004A1EDE    mov         byte ptr [ebp-9],0
 004A1EE2    mov         eax,dword ptr [ebp-8]
 004A1EE5    mov         eax,dword ptr [eax+4]
 004A1EE8    sub         eax,1
>004A1EEB    jb          004A1EF4
>004A1EED    je          004A1EFA
 004A1EEF    dec         eax
>004A1EF0    je          004A1F00
>004A1EF2    jmp         004A1F04
 004A1EF4    mov         byte ptr [ebp-9],0
>004A1EF8    jmp         004A1F04
 004A1EFA    mov         byte ptr [ebp-9],1
>004A1EFE    jmp         004A1F04
 004A1F00    mov         byte ptr [ebp-9],2
 004A1F04    mov         dl,byte ptr [ebp-9]
 004A1F07    mov         eax,dword ptr [ebp-4]
 004A1F0A    mov         ecx,dword ptr [eax]
 004A1F0C    call        dword ptr [ecx+0D0];TScrollingWinControl.sub_004A1EA0
 004A1F12    xor         eax,eax
 004A1F14    pop         edx
 004A1F15    pop         ecx
 004A1F16    pop         ecx
 004A1F17    mov         dword ptr fs:[eax],edx
 004A1F1A    push        4A1F30
 004A1F1F    mov         eax,dword ptr [ebp-4]
 004A1F22    dec         dword ptr [eax+214];TScrollingWinControl.FAutoRangeCount:Integer
 004A1F28    ret
>004A1F29    jmp         @HandleFinally
>004A1F2E    jmp         004A1F1F
 004A1F30    mov         eax,dword ptr [ebp-4]
 004A1F33    mov         byte ptr [eax+218],1;TScrollingWinControl.FUpdatingScrollBars:Boolean
 004A1F3A    xor         eax,eax
 004A1F3C    push        ebp
 004A1F3D    push        4A1F68
 004A1F42    push        dword ptr fs:[eax]
 004A1F45    mov         dword ptr fs:[eax],esp
 004A1F48    mov         eax,dword ptr [ebp-4]
 004A1F4B    call        004A19D4
 004A1F50    xor         eax,eax
 004A1F52    pop         edx
 004A1F53    pop         ecx
 004A1F54    pop         ecx
 004A1F55    mov         dword ptr fs:[eax],edx
 004A1F58    push        4A1F6F
 004A1F5D    mov         eax,dword ptr [ebp-4]
 004A1F60    mov         byte ptr [eax+218],0;TScrollingWinControl.FUpdatingScrollBars:Boolean
 004A1F67    ret
>004A1F68    jmp         @HandleFinally
>004A1F6D    jmp         004A1F5D
 004A1F6F    mov         eax,dword ptr [ebp-4]
 004A1F72    mov         eax,dword ptr [eax+208];TScrollingWinControl.HorzScrollBar:TControlScrollBar
 004A1F78    cmp         byte ptr [eax+1C],0;TControlScrollBar.Visible:Boolean
>004A1F7C    jne         004A1F8D
 004A1F7E    mov         eax,dword ptr [ebp-4]
 004A1F81    mov         eax,dword ptr [eax+20C];TScrollingWinControl.VertScrollBar:TControlScrollBar
 004A1F87    cmp         byte ptr [eax+1C],0;TControlScrollBar.Visible:Boolean
>004A1F8B    je          004A1F95
 004A1F8D    mov         eax,dword ptr [ebp-4]
 004A1F90    call        TScrollingWinControl.UpdateScrollBars
 004A1F95    mov         esp,ebp
 004A1F97    pop         ebp
 004A1F98    ret
end;*}

//004A1F9C
{*procedure TScrollingWinControl.WMHScroll(?:?);
begin
 004A1F9C    push        ebp
 004A1F9D    mov         ebp,esp
 004A1F9F    add         esp,0FFFFFFF8
 004A1FA2    mov         dword ptr [ebp-8],edx
 004A1FA5    mov         dword ptr [ebp-4],eax
 004A1FA8    mov         eax,dword ptr [ebp-8]
 004A1FAB    cmp         dword ptr [eax+8],0
>004A1FAF    jne         004A1FD3
 004A1FB1    mov         eax,dword ptr [ebp-4]
 004A1FB4    mov         eax,dword ptr [eax+208];TScrollingWinControl.HorzScrollBar:TControlScrollBar
 004A1FBA    cmp         byte ptr [eax+1C],0;TControlScrollBar.Visible:Boolean
>004A1FBE    je          004A1FD3
 004A1FC0    mov         edx,dword ptr [ebp-8]
 004A1FC3    mov         eax,dword ptr [ebp-4]
 004A1FC6    mov         eax,dword ptr [eax+208];TScrollingWinControl.HorzScrollBar:TControlScrollBar
 004A1FCC    call        004A0D84
>004A1FD1    jmp         004A1FDE
 004A1FD3    mov         edx,dword ptr [ebp-8]
 004A1FD6    mov         eax,dword ptr [ebp-4]
 004A1FD9    call        TWinControl.WMHScroll
 004A1FDE    pop         ecx
 004A1FDF    pop         ecx
 004A1FE0    pop         ebp
 004A1FE1    ret
end;*}

//004A1FE4
{*procedure TScrollingWinControl.WMVScroll(?:?);
begin
 004A1FE4    push        ebp
 004A1FE5    mov         ebp,esp
 004A1FE7    add         esp,0FFFFFFF8
 004A1FEA    mov         dword ptr [ebp-8],edx
 004A1FED    mov         dword ptr [ebp-4],eax
 004A1FF0    mov         eax,dword ptr [ebp-8]
 004A1FF3    cmp         dword ptr [eax+8],0
>004A1FF7    jne         004A201B
 004A1FF9    mov         eax,dword ptr [ebp-4]
 004A1FFC    mov         eax,dword ptr [eax+20C];TScrollingWinControl.VertScrollBar:TControlScrollBar
 004A2002    cmp         byte ptr [eax+1C],0;TControlScrollBar.Visible:Boolean
>004A2006    je          004A201B
 004A2008    mov         edx,dword ptr [ebp-8]
 004A200B    mov         eax,dword ptr [ebp-4]
 004A200E    mov         eax,dword ptr [eax+20C];TScrollingWinControl.VertScrollBar:TControlScrollBar
 004A2014    call        004A0D84
>004A2019    jmp         004A2026
 004A201B    mov         edx,dword ptr [ebp-8]
 004A201E    mov         eax,dword ptr [ebp-4]
 004A2021    call        TWinControl.WMVScroll
 004A2026    pop         ecx
 004A2027    pop         ecx
 004A2028    pop         ebp
 004A2029    ret
end;*}

//004A202C
{*procedure sub_004A202C(?:?);
begin
 004A202C    push        ebp
 004A202D    mov         ebp,esp
 004A202F    add         esp,0FFFFFFE8
 004A2032    push        esi
 004A2033    push        edi
 004A2034    mov         dword ptr [ebp-8],edx
 004A2037    mov         dword ptr [ebp-4],eax
 004A203A    mov         eax,dword ptr [ebp-4]
 004A203D    call        TControl.GetClientHeight
 004A2042    mov         edx,dword ptr [ebp-4]
 004A2045    mov         edx,dword ptr [edx+20C];TScrollingWinControl.VertScrollBar:TControlScrollBar
 004A204B    mov         edx,dword ptr [edx+10];TControlScrollBar.Range:Integer
 004A204E    call        00437470
 004A2053    push        eax
 004A2054    lea         eax,[ebp-18]
 004A2057    push        eax
 004A2058    mov         eax,dword ptr [ebp-4]
 004A205B    call        TControl.GetClientWidth
 004A2060    mov         edx,eax
 004A2062    mov         eax,dword ptr [ebp-4]
 004A2065    mov         eax,dword ptr [eax+208];TScrollingWinControl.HorzScrollBar:TControlScrollBar
 004A206B    mov         eax,dword ptr [eax+10];TControlScrollBar.Range:Integer
 004A206E    call        00437470
 004A2073    mov         ecx,eax
 004A2075    mov         eax,dword ptr [ebp-4]
 004A2078    mov         eax,dword ptr [eax+20C];TScrollingWinControl.VertScrollBar:TControlScrollBar
 004A207E    mov         edx,dword ptr [eax+0C];TControlScrollBar.Position:Integer
 004A2081    neg         edx
 004A2083    mov         eax,dword ptr [ebp-4]
 004A2086    mov         eax,dword ptr [eax+208];TScrollingWinControl.HorzScrollBar:TControlScrollBar
 004A208C    mov         eax,dword ptr [eax+0C];TControlScrollBar.Position:Integer
 004A208F    neg         eax
 004A2091    call        0041E740
 004A2096    mov         eax,dword ptr [ebp-8]
 004A2099    lea         esi,[ebp-18]
 004A209C    mov         edi,eax
 004A209E    movs        dword ptr [edi],dword ptr [esi]
 004A209F    movs        dword ptr [edi],dword ptr [esi]
 004A20A0    movs        dword ptr [edi],dword ptr [esi]
 004A20A1    movs        dword ptr [edi],dword ptr [esi]
 004A20A2    mov         edx,dword ptr [ebp-8]
 004A20A5    mov         eax,dword ptr [ebp-4]
 004A20A8    call        00486FB0
 004A20AD    pop         edi
 004A20AE    pop         esi
 004A20AF    mov         esp,ebp
 004A20B1    pop         ebp
 004A20B2    ret
end;*}

//004A20B4
procedure TScrollingWinControl.CMBiDiModeChanged(var Message:TMessage);
begin
{*
 004A20B4    push        ebp
 004A20B5    mov         ebp,esp
 004A20B7    add         esp,0FFFFFFF4
 004A20BA    mov         dword ptr [ebp-8],edx
 004A20BD    mov         dword ptr [ebp-4],eax
 004A20C0    mov         eax,dword ptr [ebp-8]
 004A20C3    mov         eax,dword ptr [eax+4]
 004A20C6    mov         dword ptr [ebp-0C],eax
 004A20C9    xor         eax,eax
 004A20CB    push        ebp
 004A20CC    push        4A2115
 004A20D1    push        dword ptr fs:[eax]
 004A20D4    mov         dword ptr fs:[eax],esp
 004A20D7    mov         eax,dword ptr [ebp-4]
 004A20DA    mov         edx,dword ptr ds:[56B0C4];gvar_0056B0C4
 004A20E0    call        @IsClass
 004A20E5    test        al,al
>004A20E7    jne         004A20F3
 004A20E9    mov         eax,dword ptr [ebp-8]
 004A20EC    mov         dword ptr [eax+4],1
 004A20F3    mov         edx,dword ptr [ebp-8]
 004A20F6    mov         eax,dword ptr [ebp-4]
 004A20F9    call        TWinControl.CMBiDiModeChanged
 004A20FE    xor         eax,eax
 004A2100    pop         edx
 004A2101    pop         ecx
 004A2102    pop         ecx
 004A2103    mov         dword ptr fs:[eax],edx
 004A2106    push        4A211C
 004A210B    mov         eax,dword ptr [ebp-8]
 004A210E    mov         edx,dword ptr [ebp-0C]
 004A2111    mov         dword ptr [eax+4],edx
 004A2114    ret
>004A2115    jmp         @HandleFinally
>004A211A    jmp         004A210B
 004A211C    mov         eax,dword ptr [ebp-4]
 004A211F    call        TWinControl.HandleAllocated
 004A2124    test        al,al
>004A2126    je          004A213E
 004A2128    mov         eax,dword ptr [ebp-4]
 004A212B    mov         eax,dword ptr [eax+208]
 004A2131    call        TControlScrollBar.ChangeBiDiPosition
 004A2136    mov         eax,dword ptr [ebp-4]
 004A2139    call        TScrollingWinControl.UpdateScrollBars
 004A213E    mov         esp,ebp
 004A2140    pop         ebp
 004A2141    ret
*}
end;

//004A2144
constructor TfmProgress.Create;
begin
{*
 004A2144    push        ebp
 004A2145    mov         ebp,esp
 004A2147    add         esp,0FFFFFEE8
 004A214D    push        ebx
 004A214E    xor         ebx,ebx
 004A2150    mov         dword ptr [ebp-118],ebx
 004A2156    test        dl,dl
>004A2158    je          004A2162
 004A215A    add         esp,0FFFFFFF0
 004A215D    call        @ClassCreate
 004A2162    mov         dword ptr [ebp-0C],ecx
 004A2165    mov         byte ptr [ebp-5],dl
 004A2168    mov         dword ptr [ebp-4],eax
 004A216B    xor         eax,eax
 004A216D    push        ebp
 004A216E    push        4A22AA
 004A2173    push        dword ptr fs:[eax]
 004A2176    mov         dword ptr fs:[eax],esp
 004A2179    mov         eax,[0056E5F4];^GlobalNameSpace:IReadWriteSync
 004A217E    mov         eax,dword ptr [eax]
 004A2180    mov         edx,dword ptr [eax]
 004A2182    call        dword ptr [edx+14]
 004A2185    xor         eax,eax
 004A2187    push        ebp
 004A2188    push        4A228A
 004A218D    push        dword ptr fs:[eax]
 004A2190    mov         dword ptr fs:[eax],esp
 004A2193    push        0
 004A2195    mov         ecx,dword ptr [ebp-0C]
 004A2198    xor         edx,edx
 004A219A    mov         eax,dword ptr [ebp-4]
 004A219D    mov         ebx,dword ptr [eax]
 004A219F    call        dword ptr [ebx+0E0];TCustomForm.sub_004A231C
 004A21A5    mov         eax,dword ptr [ebp-4]
 004A21A8    call        TObject.ClassType
 004A21AD    cmp         eax,dword ptr ds:[49EF70];TForm
>004A21B3    je          004A2270
 004A21B9    mov         eax,dword ptr [ebp-4]
 004A21BC    test        byte ptr [eax+1C],10;TCustomForm.FComponentState:TComponentState
>004A21C0    jne         004A2270
 004A21C6    mov         eax,dword ptr [ebp-4]
 004A21C9    or          byte ptr [eax+2F4],1;TCustomForm.FFormState:TFormState
 004A21D0    xor         eax,eax
 004A21D2    push        ebp
 004A21D3    push        4A2252
 004A21D8    push        dword ptr fs:[eax]
 004A21DB    mov         dword ptr fs:[eax],esp
 004A21DE    mov         edx,dword ptr ds:[49EF70];TForm
 004A21E4    mov         eax,dword ptr [ebp-4]
 004A21E7    call        InitInheritedComponent
 004A21EC    test        al,al
>004A21EE    jne         004A223A
 004A21F0    lea         edx,[ebp-114]
 004A21F6    mov         eax,dword ptr [ebp-4]
 004A21F9    mov         eax,dword ptr [eax]
 004A21FB    call        TObject.ClassName
 004A2200    lea         eax,[ebp-114]
 004A2206    mov         dword ptr [ebp-14],eax
 004A2209    mov         byte ptr [ebp-10],4
 004A220D    lea         eax,[ebp-14]
 004A2210    push        eax
 004A2211    push        0
 004A2213    lea         edx,[ebp-118]
 004A2219    mov         eax,[0056E294];^SResNotFound:TResStringRec
 004A221E    call        LoadResString
 004A2223    mov         ecx,dword ptr [ebp-118]
 004A2229    mov         dl,1
 004A222B    mov         eax,[0041D1E8];EResNotFound
 004A2230    call        Exception.CreateFmt;EResNotFound.Create
 004A2235    call        @RaiseExcept
 004A223A    xor         eax,eax
 004A223C    pop         edx
 004A223D    pop         ecx
 004A223E    pop         ecx
 004A223F    mov         dword ptr fs:[eax],edx
 004A2242    push        4A2259
 004A2247    mov         eax,dword ptr [ebp-4]
 004A224A    and         byte ptr [eax+2F4],0FE;TCustomForm.FFormState:TFormState
 004A2251    ret
>004A2252    jmp         @HandleFinally
>004A2257    jmp         004A2247
 004A2259    mov         eax,dword ptr [ebp-4]
 004A225C    cmp         byte ptr [eax+234],0;TCustomForm.FOldCreateOrder:Boolean
>004A2263    je          004A2270
 004A2265    mov         eax,dword ptr [ebp-4]
 004A2268    mov         edx,dword ptr [eax]
 004A226A    call        dword ptr [edx+0D4];TCustomForm.DoCreate
 004A2270    xor         eax,eax
 004A2272    pop         edx
 004A2273    pop         ecx
 004A2274    pop         ecx
 004A2275    mov         dword ptr fs:[eax],edx
 004A2278    push        4A2291
 004A227D    mov         eax,[0056E5F4];^GlobalNameSpace:IReadWriteSync
 004A2282    mov         eax,dword ptr [eax]
 004A2284    mov         edx,dword ptr [eax]
 004A2286    call        dword ptr [edx+18]
 004A2289    ret
>004A228A    jmp         @HandleFinally
>004A228F    jmp         004A227D
 004A2291    xor         eax,eax
 004A2293    pop         edx
 004A2294    pop         ecx
 004A2295    pop         ecx
 004A2296    mov         dword ptr fs:[eax],edx
 004A2299    push        4A22B1
 004A229E    lea         eax,[ebp-118]
 004A22A4    call        @LStrClr
 004A22A9    ret
>004A22AA    jmp         @HandleFinally
>004A22AF    jmp         004A229E
 004A22B1    mov         eax,dword ptr [ebp-4]
 004A22B4    cmp         byte ptr [ebp-5],0
>004A22B8    je          004A22C9
 004A22BA    call        @AfterConstruction
 004A22BF    pop         dword ptr fs:[0]
 004A22C6    add         esp,0C
 004A22C9    mov         eax,dword ptr [ebp-4]
 004A22CC    pop         ebx
 004A22CD    mov         esp,ebp
 004A22CF    pop         ebp
 004A22D0    ret
*}
end;

//004A22D4
procedure TCustomForm.AfterConstruction;
begin
{*
 004A22D4    push        ebp
 004A22D5    mov         ebp,esp
 004A22D7    push        ecx
 004A22D8    push        esi
 004A22D9    mov         dword ptr [ebp-4],eax
 004A22DC    mov         eax,dword ptr [ebp-4]
 004A22DF    cmp         byte ptr [eax+234],0
>004A22E6    jne         004A22F3
 004A22E8    mov         eax,dword ptr [ebp-4]
 004A22EB    mov         edx,dword ptr [eax]
 004A22ED    call        dword ptr [edx+0D4]
 004A22F3    mov         eax,dword ptr [ebp-4]
 004A22F6    test        byte ptr [eax+2F4],20;{@CallDynaInst}
>004A22FD    je          004A2315
 004A22FF    mov         eax,dword ptr [ebp-4]
 004A2302    mov         si,0FFB3
 004A2306    call        @CallDynaInst
 004A230B    mov         eax,dword ptr [ebp-4]
 004A230E    and         byte ptr [eax+2F4],0DF
 004A2315    pop         esi
 004A2316    pop         ecx
 004A2317    pop         ebp
 004A2318    ret
*}
end;

//004A231C
constructor TFormatSelDialog.Create;
begin
{*
 004A231C    push        ebp
 004A231D    mov         ebp,esp
 004A231F    add         esp,0FFFFFFF4
 004A2322    test        dl,dl
>004A2324    je          004A232E
 004A2326    add         esp,0FFFFFFF0
 004A2329    call        @ClassCreate
 004A232E    mov         dword ptr [ebp-0C],ecx
 004A2331    mov         byte ptr [ebp-5],dl
 004A2334    mov         dword ptr [ebp-4],eax
 004A2337    mov         ecx,dword ptr [ebp-0C]
 004A233A    xor         edx,edx
 004A233C    mov         eax,dword ptr [ebp-4]
 004A233F    call        004A16D8
 004A2344    mov         eax,dword ptr [ebp-4]
 004A2347    mov         edx,dword ptr ds:[4A24E0];0xAB gvar_004A24E0
 004A234D    mov         dword ptr [eax+50],edx;TCustomForm.FControlStyle:TControlStyle
 004A2350    xor         edx,edx
 004A2352    mov         eax,dword ptr [ebp-4]
 004A2355    call        TControl.SetLeft
 004A235A    xor         edx,edx
 004A235C    mov         eax,dword ptr [ebp-4]
 004A235F    call        TControl.SetTop
 004A2364    mov         edx,140
 004A2369    mov         eax,dword ptr [ebp-4]
 004A236C    call        TSplitter.SetWidth
 004A2371    mov         edx,0F0
 004A2376    mov         eax,dword ptr [ebp-4]
 004A2379    call        TToolButton.SetHeight
 004A237E    mov         dl,1
 004A2380    mov         eax,[0042D08C];TIcon
 004A2385    call        TIcon.Create;TIcon.Create
 004A238A    mov         edx,dword ptr [ebp-4]
 004A238D    mov         dword ptr [edx+240],eax;TCustomForm.FIcon:TIcon
 004A2393    push        31
 004A2395    mov         eax,[0056E1C0];^gvar_00571B2C
 004A239A    mov         eax,dword ptr [eax]
 004A239C    call        eax
 004A239E    mov         edx,eax
 004A23A0    mov         eax,dword ptr [ebp-4]
 004A23A3    mov         eax,dword ptr [eax+240];TCustomForm.FIcon:TIcon
 004A23A9    mov         ecx,dword ptr [eax]
 004A23AB    call        dword ptr [ecx+40];TIcon.sub_00436A90
 004A23AE    push        32
 004A23B0    mov         eax,[0056E1C0];^gvar_00571B2C
 004A23B5    mov         eax,dword ptr [eax]
 004A23B7    call        eax
 004A23B9    mov         edx,eax
 004A23BB    mov         eax,dword ptr [ebp-4]
 004A23BE    mov         eax,dword ptr [eax+240];TCustomForm.FIcon:TIcon
 004A23C4    mov         ecx,dword ptr [eax]
 004A23C6    call        dword ptr [ecx+34];TIcon.sub_00436A4C
 004A23C9    mov         eax,dword ptr [ebp-4]
 004A23CC    mov         eax,dword ptr [eax+240];TCustomForm.FIcon:TIcon
 004A23D2    mov         edx,dword ptr [ebp-4]
 004A23D5    mov         dword ptr [eax+14],edx;TIcon.?f14:TCoolBand
 004A23D8    mov         dword ptr [eax+10],4A2DD4;TIcon.FOnChange:TNotifyEvent sub_004A2DD4
 004A23DF    mov         dl,1
 004A23E1    mov         eax,[0047D3C4];TControlCanvas
 004A23E6    call        TCanvas.Create;TControlCanvas.Create
 004A23EB    mov         edx,dword ptr [ebp-4]
 004A23EE    mov         dword ptr [edx+238],eax;TCustomForm.FCanvas:TControlCanvas
 004A23F4    mov         eax,dword ptr [ebp-4]
 004A23F7    mov         eax,dword ptr [eax+238];TCustomForm.FCanvas:TControlCanvas
 004A23FD    mov         edx,dword ptr [ebp-4]
 004A2400    call        00481B3C
 004A2405    mov         eax,dword ptr [ebp-4]
 004A2408    mov         dl,byte ptr ds:[4A24E4];0x7 gvar_004A24E4
 004A240E    mov         byte ptr [eax+228],dl;TCustomForm.FBorderIcons:TBorderIcons
 004A2414    mov         eax,dword ptr [ebp-4]
 004A2417    mov         byte ptr [eax+229],2;TCustomForm.FBorderStyle:TFormBorderStyle
 004A241E    mov         eax,dword ptr [ebp-4]
 004A2421    mov         byte ptr [eax+22B],0;TCustomForm.FWindowState:TWindowState
 004A2428    mov         eax,dword ptr [ebp-4]
 004A242B    mov         byte ptr [eax+231],3;TCustomForm.FDefaultMonitor:TDefaultMonitor
 004A2432    mov         eax,dword ptr [ebp-4]
 004A2435    mov         byte ptr [eax+244],0;TCustomForm.FInCMParentBiDiModeChanged:Boolean
 004A243C    mov         eax,[00571E40];0x0 Screen:TScreen
 004A2441    mov         eax,dword ptr [eax+40];TScreen.FPixelsPerInch:Integer
 004A2444    mov         edx,dword ptr [ebp-4]
 004A2447    mov         dword ptr [edx+25C],eax;TCustomForm.FPixelsPerInch:Integer
 004A244D    mov         eax,dword ptr [ebp-4]
 004A2450    mov         byte ptr [eax+235],1;TCustomForm.FPrintScale:TPrintScale
 004A2457    mov         eax,dword ptr [ebp-4]
 004A245A    call        TObject.ClassType
 004A245F    mov         edx,dword ptr [ebp-4]
 004A2462    mov         dword ptr [edx+0B8],eax;TCustomForm.FFloatingDockSiteClass:TWinControlClass
 004A2468    mov         eax,dword ptr [ebp-4]
 004A246B    mov         byte ptr [eax+2E1],0FF;TCustomForm.FAlphaBlendValue:byte
 004A2472    mov         eax,dword ptr [ebp-4]
 004A2475    xor         edx,edx
 004A2477    mov         dword ptr [eax+2EC],edx;TCustomForm.FTransparentColorValue:TColor
 004A247D    xor         edx,edx
 004A247F    mov         eax,dword ptr [ebp-4]
 004A2482    call        TCustomForm.SetVisible
 004A2487    xor         edx,edx
 004A2489    mov         eax,dword ptr [ebp-4]
 004A248C    call        TPanel.SetParentColor
 004A2491    xor         edx,edx
 004A2493    mov         eax,dword ptr [ebp-4]
 004A2496    call        TPanel.SetParentFont
 004A249B    mov         dl,1
 004A249D    mov         eax,dword ptr [ebp-4]
 004A24A0    call        TPanel.SetCtl3D
 004A24A5    mov         edx,dword ptr [ebp-4]
 004A24A8    mov         eax,[00571E40];0x0 Screen:TScreen
 004A24AD    call        004A8A90
 004A24B2    mov         eax,dword ptr [ebp-4]
 004A24B5    mov         dword ptr [eax+2E4],0A;TCustomForm.FSnapBuffer:Integer
 004A24BF    mov         eax,dword ptr [ebp-4]
 004A24C2    cmp         byte ptr [ebp-5],0
>004A24C6    je          004A24D7
 004A24C8    call        @AfterConstruction
 004A24CD    pop         dword ptr fs:[0]
 004A24D4    add         esp,0C
 004A24D7    mov         eax,dword ptr [ebp-4]
 004A24DA    mov         esp,ebp
 004A24DC    pop         ebp
 004A24DD    ret         4
*}
end;

//004A24E8
procedure TCustomForm.BeforeDestruction;
begin
{*
 004A24E8    push        ebp
 004A24E9    mov         ebp,esp
 004A24EB    push        ecx
 004A24EC    mov         dword ptr [ebp-4],eax
 004A24EF    mov         eax,[0056E5F4];^GlobalNameSpace:IReadWriteSync
 004A24F4    mov         eax,dword ptr [eax]
 004A24F6    mov         edx,dword ptr [eax]
 004A24F8    call        dword ptr [edx+14]
 004A24FB    mov         eax,dword ptr [ebp-4]
 004A24FE    call        0042A578
 004A2503    mov         eax,[00571E40];Screen:TScreen
 004A2508    mov         eax,dword ptr [eax+7C];{TList.Remove}
 004A250B    mov         edx,dword ptr [ebp-4]
 004A250E    call        004204F0
 004A2513    xor         edx,edx
 004A2515    mov         eax,dword ptr [ebp-4]
 004A2518    call        RemoveFixupReferences
 004A251D    mov         eax,dword ptr [ebp-4]
 004A2520    cmp         dword ptr [eax+264],0
>004A2527    je          004A2537
 004A2529    mov         eax,dword ptr [ebp-4]
 004A252C    mov         eax,dword ptr [eax+264]
 004A2532    mov         edx,dword ptr [eax]
 004A2534    call        dword ptr [edx+0C]
 004A2537    mov         eax,dword ptr [ebp-4]
 004A253A    cmp         byte ptr [eax+22F],1
>004A2541    je          004A254B
 004A2543    mov         eax,dword ptr [ebp-4]
 004A2546    call        004A743C
 004A254B    mov         eax,dword ptr [ebp-4]
 004A254E    cmp         byte ptr [eax+234],0
>004A2555    jne         004A2562
 004A2557    mov         eax,dword ptr [ebp-4]
 004A255A    mov         edx,dword ptr [eax]
 004A255C    call        dword ptr [edx+0D8]
 004A2562    pop         ecx
 004A2563    pop         ebp
 004A2564    ret
*}
end;

//004A2568
destructor TCustomForm.Destroy;
begin
{*
 004A2568    push        ebp
 004A2569    mov         ebp,esp
 004A256B    add         esp,0FFFFFFF8
 004A256E    call        @BeforeDestruction
 004A2573    mov         byte ptr [ebp-5],dl
 004A2576    mov         dword ptr [ebp-4],eax
 004A2579    mov         eax,dword ptr [ebp-4]
 004A257C    test        byte ptr [eax+1C],8
>004A2580    jne         004A258E
 004A2582    mov         eax,[0056E5F4];^GlobalNameSpace:IReadWriteSync
 004A2587    mov         eax,dword ptr [eax]
 004A2589    mov         edx,dword ptr [eax]
 004A258B    call        dword ptr [edx+14]
 004A258E    xor         eax,eax
 004A2590    push        ebp
 004A2591    push        4A2632
 004A2596    push        dword ptr fs:[eax]
 004A2599    mov         dword ptr fs:[eax],esp
 004A259C    mov         eax,dword ptr [ebp-4]
 004A259F    cmp         byte ptr [eax+234],0
>004A25A6    je          004A25B3
 004A25A8    mov         eax,dword ptr [ebp-4]
 004A25AB    mov         edx,dword ptr [eax]
 004A25AD    call        dword ptr [edx+0D8]
 004A25B3    xor         edx,edx
 004A25B5    mov         eax,dword ptr [ebp-4]
 004A25B8    call        TCustomForm.MergeMenu
 004A25BD    mov         eax,dword ptr [ebp-4]
 004A25C0    call        TWinControl.HandleAllocated
 004A25C5    test        al,al
>004A25C7    je          004A25D4
 004A25C9    mov         eax,dword ptr [ebp-4]
 004A25CC    mov         edx,dword ptr [eax]
 004A25CE    call        dword ptr [edx+0AC]
 004A25D4    mov         edx,dword ptr [ebp-4]
 004A25D7    mov         eax,[00571E40];Screen:TScreen
 004A25DC    call        TScreen.RemoveForm
 004A25E1    mov         eax,dword ptr [ebp-4]
 004A25E4    mov         eax,dword ptr [eax+238]
 004A25EA    call        TObject.Free
 004A25EF    mov         eax,dword ptr [ebp-4]
 004A25F2    mov         eax,dword ptr [eax+240]
 004A25F8    call        TObject.Free
 004A25FD    mov         eax,dword ptr [ebp-4]
 004A2600    add         eax,2F0
 004A2605    call        FreeAndNil
 004A260A    mov         dl,byte ptr [ebp-5]
 004A260D    and         dl,0FC
 004A2610    mov         eax,dword ptr [ebp-4]
 004A2613    call        TScrollingWinControl.Destroy
 004A2618    xor         eax,eax
 004A261A    pop         edx
 004A261B    pop         ecx
 004A261C    pop         ecx
 004A261D    mov         dword ptr fs:[eax],edx
 004A2620    push        4A2639
 004A2625    mov         eax,[0056E5F4];^GlobalNameSpace:IReadWriteSync
 004A262A    mov         eax,dword ptr [eax]
 004A262C    mov         edx,dword ptr [eax]
 004A262E    call        dword ptr [edx+18]
 004A2631    ret
>004A2632    jmp         @HandleFinally
>004A2637    jmp         004A2625
 004A2639    cmp         byte ptr [ebp-5],0
>004A263D    jle         004A2647
 004A263F    mov         eax,dword ptr [ebp-4]
 004A2642    call        @ClassDestroy
 004A2647    pop         ecx
 004A2648    pop         ecx
 004A2649    pop         ebp
 004A264A    ret
*}
end;

//004A264C
procedure TCustomForm.DoCreate;
begin
{*
 004A264C    push        ebp
 004A264D    mov         ebp,esp
 004A264F    push        ecx
 004A2650    push        ebx
 004A2651    push        esi
 004A2652    push        edi
 004A2653    mov         dword ptr [ebp-4],eax
 004A2656    mov         eax,dword ptr [ebp-4]
 004A2659    cmp         word ptr [eax+2D2],0
>004A2661    je          004A26AC
 004A2663    xor         eax,eax
 004A2665    push        ebp
 004A2666    push        4A268D
 004A266B    push        dword ptr fs:[eax]
 004A266E    mov         dword ptr fs:[eax],esp
 004A2671    mov         ebx,dword ptr [ebp-4]
 004A2674    mov         edx,dword ptr [ebp-4]
 004A2677    mov         eax,dword ptr [ebx+2D4]
 004A267D    call        dword ptr [ebx+2D0]
 004A2683    xor         eax,eax
 004A2685    pop         edx
 004A2686    pop         ecx
 004A2687    pop         ecx
 004A2688    mov         dword ptr fs:[eax],edx
>004A268B    jmp         004A26AC
>004A268D    jmp         @HandleAnyException
 004A2692    mov         eax,dword ptr [ebp-4]
 004A2695    mov         si,0FFAD
 004A2699    call        @CallDynaInst
 004A269E    test        al,al
>004A26A0    jne         004A26A7
 004A26A2    call        @RaiseAgain
 004A26A7    call        @DoneExcept
 004A26AC    mov         eax,dword ptr [ebp-4]
 004A26AF    test        byte ptr [eax+2F4],2
>004A26B6    je          004A26C2
 004A26B8    mov         dl,1
 004A26BA    mov         eax,dword ptr [ebp-4]
 004A26BD    call        TCustomForm.SetVisible
 004A26C2    pop         edi
 004A26C3    pop         esi
 004A26C4    pop         ebx
 004A26C5    pop         ecx
 004A26C6    pop         ebp
 004A26C7    ret
*}
end;

//004A26C8
procedure TCustomForm.DoDestroy;
begin
{*
 004A26C8    push        ebp
 004A26C9    mov         ebp,esp
 004A26CB    push        ecx
 004A26CC    push        ebx
 004A26CD    push        esi
 004A26CE    push        edi
 004A26CF    mov         dword ptr [ebp-4],eax
 004A26D2    mov         eax,dword ptr [ebp-4]
 004A26D5    cmp         word ptr [eax+2DA],0
>004A26DD    je          004A2720
 004A26DF    xor         eax,eax
 004A26E1    push        ebp
 004A26E2    push        4A2709
 004A26E7    push        dword ptr fs:[eax]
 004A26EA    mov         dword ptr fs:[eax],esp
 004A26ED    mov         ebx,dword ptr [ebp-4]
 004A26F0    mov         edx,dword ptr [ebp-4]
 004A26F3    mov         eax,dword ptr [ebx+2DC]
 004A26F9    call        dword ptr [ebx+2D8]
 004A26FF    xor         eax,eax
 004A2701    pop         edx
 004A2702    pop         ecx
 004A2703    pop         ecx
 004A2704    mov         dword ptr fs:[eax],edx
>004A2707    jmp         004A2720
>004A2709    jmp         @HandleAnyException
 004A270E    mov         edx,dword ptr [ebp-4]
 004A2711    mov         eax,[00571E3C];Application:TApplication
 004A2716    call        TApplication.HandleException
 004A271B    call        @DoneExcept
 004A2720    pop         edi
 004A2721    pop         esi
 004A2722    pop         ebx
 004A2723    pop         ecx
 004A2724    pop         ebp
 004A2725    ret
*}
end;

//004A2728
procedure sub_004A2728;
begin
{*
 004A2728    push        ebp
 004A2729    mov         ebp,esp
 004A272B    add         esp,0FFFFFFF8
 004A272E    push        esi
 004A272F    mov         dword ptr [ebp-4],eax
 004A2732    mov         eax,dword ptr [ebp-4]
 004A2735    call        004864B8
 004A273A    mov         eax,dword ptr [ebp-4]
 004A273D    cmp         dword ptr [eax+220],0;TCustomForm.FActiveControl:TWinControl
>004A2744    je          004A2778
 004A2746    mov         eax,dword ptr [ebp-4]
 004A2749    mov         eax,dword ptr [eax+220];TCustomForm.FActiveControl:TWinControl
 004A274F    mov         dword ptr [ebp-8],eax
 004A2752    mov         eax,dword ptr [ebp-4]
 004A2755    xor         edx,edx
 004A2757    mov         dword ptr [eax+220],edx;TCustomForm.FActiveControl:TWinControl
 004A275D    mov         eax,dword ptr [ebp-8]
 004A2760    mov         si,0FFB8
 004A2764    call        @CallDynaInst;TWinControl.sub_0048BFC8
 004A2769    test        al,al
>004A276B    je          004A2778
 004A276D    mov         edx,dword ptr [ebp-8]
 004A2770    mov         eax,dword ptr [ebp-4]
 004A2773    call        TForm.SetActiveControl
 004A2778    pop         esi
 004A2779    pop         ecx
 004A277A    pop         ecx
 004A277B    pop         ebp
 004A277C    ret
*}
end;

//004A2780
{*procedure sub_004A2780(?:?; ?:?);
begin
 004A2780    push        ebp
 004A2781    mov         ebp,esp
 004A2783    add         esp,0FFFFFFF4
 004A2786    push        ebx
 004A2787    mov         byte ptr [ebp-9],cl
 004A278A    mov         dword ptr [ebp-8],edx
 004A278D    mov         dword ptr [ebp-4],eax
 004A2790    mov         cl,byte ptr [ebp-9]
 004A2793    mov         edx,dword ptr [ebp-8]
 004A2796    mov         eax,dword ptr [ebp-4]
 004A2799    call        004827F4
 004A279E    mov         al,byte ptr [ebp-9]
 004A27A1    sub         al,1
>004A27A3    jb          004A27B0
>004A27A5    je          004A2848
>004A27AB    jmp         004A28C1
 004A27B0    mov         eax,dword ptr [ebp-8]
 004A27B3    mov         edx,dword ptr ds:[492868];TCustomActionList
 004A27B9    call        @IsClass
 004A27BE    test        al,al
>004A27C0    je          004A27F9
 004A27C2    mov         eax,dword ptr [ebp-4]
 004A27C5    cmp         dword ptr [eax+2F0],0;TCustomForm.FActionLists:TList
>004A27CC    jne         004A27E3
 004A27CE    mov         dl,1
 004A27D0    mov         eax,[0041D46C];TList
 004A27D5    call        TObject.Create;TList.Create
 004A27DA    mov         edx,dword ptr [ebp-4]
 004A27DD    mov         dword ptr [edx+2F0],eax;TCustomForm.FActionLists:TList
 004A27E3    mov         edx,dword ptr [ebp-8]
 004A27E6    mov         eax,dword ptr [ebp-4]
 004A27E9    mov         eax,dword ptr [eax+2F0];TCustomForm.FActionLists:TList
 004A27EF    call        TList.Add
>004A27F4    jmp         004A28C1
 004A27F9    mov         eax,dword ptr [ebp-4]
 004A27FC    test        byte ptr [eax+1C],1;TCustomForm.FComponentState:TComponentState
>004A2800    jne         004A28C1
 004A2806    mov         eax,dword ptr [ebp-4]
 004A2809    cmp         dword ptr [eax+248],0;TCustomForm.FMenu:TMainMenu
>004A2810    jne         004A28C1
 004A2816    mov         eax,dword ptr [ebp-8]
 004A2819    mov         eax,dword ptr [eax+4]
 004A281C    cmp         eax,dword ptr [ebp-4]
>004A281F    jne         004A28C1
 004A2825    mov         eax,dword ptr [ebp-8]
 004A2828    mov         edx,dword ptr ds:[4971A8];TMainMenu
 004A282E    call        @IsClass
 004A2833    test        al,al
>004A2835    je          004A28C1
 004A283B    mov         edx,dword ptr [ebp-8]
 004A283E    mov         eax,dword ptr [ebp-4]
 004A2841    call        TForm.SetMenu
>004A2846    jmp         004A28C1
 004A2848    mov         eax,dword ptr [ebp-4]
 004A284B    cmp         dword ptr [eax+2F0],0;TCustomForm.FActionLists:TList
>004A2852    je          004A2879
 004A2854    mov         eax,dword ptr [ebp-8]
 004A2857    mov         edx,dword ptr ds:[492868];TCustomActionList
 004A285D    call        @IsClass
 004A2862    test        al,al
>004A2864    je          004A2879
 004A2866    mov         edx,dword ptr [ebp-8]
 004A2869    mov         eax,dword ptr [ebp-4]
 004A286C    mov         eax,dword ptr [eax+2F0];TCustomForm.FActionLists:TList
 004A2872    call        004204F0
>004A2877    jmp         004A28C1
 004A2879    mov         eax,dword ptr [ebp-4]
 004A287C    mov         eax,dword ptr [eax+248];TCustomForm.FMenu:TMainMenu
 004A2882    cmp         eax,dword ptr [ebp-8]
>004A2885    jne         004A2891
 004A2887    xor         edx,edx
 004A2889    mov         eax,dword ptr [ebp-4]
 004A288C    call        TForm.SetMenu
 004A2891    mov         eax,dword ptr [ebp-4]
 004A2894    mov         eax,dword ptr [eax+258];TCustomForm.FWindowMenu:TMenuItem
 004A289A    cmp         eax,dword ptr [ebp-8]
>004A289D    jne         004A28A9
 004A289F    xor         edx,edx
 004A28A1    mov         eax,dword ptr [ebp-4]
 004A28A4    call        TForm.SetWindowMenu
 004A28A9    mov         eax,dword ptr [ebp-4]
 004A28AC    mov         eax,dword ptr [eax+260];TCustomForm.FObjectMenuItem:TMenuItem
 004A28B2    cmp         eax,dword ptr [ebp-8]
>004A28B5    jne         004A28C1
 004A28B7    xor         edx,edx
 004A28B9    mov         eax,dword ptr [ebp-4]
 004A28BC    call        TForm.SetObjectMenuItem
 004A28C1    mov         eax,dword ptr [ebp-4]
 004A28C4    cmp         dword ptr [eax+250],0;TCustomForm.FDesigner:IDesignerHook
>004A28CB    je          004A28E1
 004A28CD    mov         cl,byte ptr [ebp-9]
 004A28D0    mov         edx,dword ptr [ebp-8]
 004A28D3    mov         eax,dword ptr [ebp-4]
 004A28D6    mov         eax,dword ptr [eax+250];TCustomForm.FDesigner:IDesignerHook
 004A28DC    mov         ebx,dword ptr [eax]
 004A28DE    call        dword ptr [ebx+10]
 004A28E1    pop         ebx
 004A28E2    mov         esp,ebp
 004A28E4    pop         ebp
 004A28E5    ret
end;*}

//004A28E8
{*procedure sub_004A28E8(?:?);
begin
 004A28E8    push        ebp
 004A28E9    mov         ebp,esp
 004A28EB    add         esp,0FFFFFFF0
 004A28EE    mov         dword ptr [ebp-8],edx
 004A28F1    mov         dword ptr [ebp-4],eax
 004A28F4    mov         eax,dword ptr [ebp-4]
 004A28F7    call        TWinControl.DisableAlign
 004A28FC    xor         eax,eax
 004A28FE    push        ebp
 004A28FF    push        4A2B7D
 004A2904    push        dword ptr fs:[eax]
 004A2907    mov         dword ptr fs:[eax],esp
 004A290A    mov         eax,dword ptr [ebp-4]
 004A290D    xor         edx,edx
 004A290F    mov         dword ptr [eax+268],edx;TCustomForm.FClientWidth:Integer
 004A2915    mov         eax,dword ptr [ebp-4]
 004A2918    xor         edx,edx
 004A291A    mov         dword ptr [eax+26C],edx;TCustomForm.FClientHeight:Integer
 004A2920    mov         eax,dword ptr [ebp-4]
 004A2923    xor         edx,edx
 004A2925    mov         dword ptr [eax+270],edx;TCustomForm.FTextHeight:Integer
 004A292B    mov         byte ptr [ebp-0D],0
 004A292F    mov         eax,dword ptr [ebp-4]
 004A2932    mov         eax,dword ptr [eax]
 004A2934    call        TObject.ClassParent
 004A2939    cmp         eax,dword ptr ds:[49EF70];TForm
>004A293F    jne         004A2951
 004A2941    mov         al,[0056F665];0x0 gvar_0056F665
 004A2946    xor         al,1
 004A2948    mov         edx,dword ptr [ebp-4]
 004A294B    mov         byte ptr [edx+234],al;TCustomForm.FOldCreateOrder:Boolean
 004A2951    mov         edx,dword ptr [ebp-8]
 004A2954    mov         eax,dword ptr [ebp-4]
 004A2957    call        00486F38
 004A295C    mov         eax,dword ptr [ebp-4]
 004A295F    cmp         dword ptr [eax+25C],0;TCustomForm.FPixelsPerInch:Integer
>004A2966    je          004A2AE3
 004A296C    mov         eax,dword ptr [ebp-4]
 004A296F    cmp         dword ptr [eax+270],0;TCustomForm.FTextHeight:Integer
>004A2976    jle         004A2AE3
 004A297C    mov         eax,dword ptr [ebp-4]
 004A297F    test        byte ptr [eax+98],10;TCustomForm.FScalingFlags:TScalingFlags
>004A2986    je          004A29CD
 004A2988    mov         eax,dword ptr [ebp-4]
 004A298B    mov         eax,dword ptr [eax+25C];TCustomForm.FPixelsPerInch:Integer
 004A2991    mov         edx,dword ptr ds:[571E40];0x0 Screen:TScreen
 004A2997    cmp         eax,dword ptr [edx+40];TScreen.FPixelsPerInch:Integer
>004A299A    je          004A29CD
 004A299C    mov         eax,dword ptr [ebp-4]
 004A299F    mov         eax,dword ptr [eax+25C];TCustomForm.FPixelsPerInch:Integer
 004A29A5    push        eax
 004A29A6    mov         eax,[00571E40];0x0 Screen:TScreen
 004A29AB    mov         eax,dword ptr [eax+40];TScreen.FPixelsPerInch:Integer
 004A29AE    push        eax
 004A29AF    mov         eax,dword ptr [ebp-4]
 004A29B2    mov         eax,dword ptr [eax+68];TCustomForm.FFont:TFont
 004A29B5    call        TFont.GetHeight
 004A29BA    push        eax
 004A29BB    call        kernel32.MulDiv
 004A29C0    mov         edx,eax
 004A29C2    mov         eax,dword ptr [ebp-4]
 004A29C5    mov         eax,dword ptr [eax+68];TCustomForm.FFont:TFont
 004A29C8    call        TFont.SetHeight
 004A29CD    mov         eax,[00571E40];0x0 Screen:TScreen
 004A29D2    mov         eax,dword ptr [eax+40];TScreen.FPixelsPerInch:Integer
 004A29D5    mov         edx,dword ptr [ebp-4]
 004A29D8    mov         dword ptr [edx+25C],eax;TCustomForm.FPixelsPerInch:Integer
 004A29DE    mov         eax,dword ptr [ebp-4]
 004A29E1    call        004A2CEC
 004A29E6    mov         dword ptr [ebp-0C],eax
 004A29E9    mov         eax,dword ptr [ebp-4]
 004A29EC    mov         eax,dword ptr [eax+270];TCustomForm.FTextHeight:Integer
 004A29F2    cmp         eax,dword ptr [ebp-0C]
>004A29F5    je          004A2AE3
 004A29FB    mov         byte ptr [ebp-0D],1
 004A29FF    mov         eax,dword ptr [ebp-4]
 004A2A02    mov         ecx,dword ptr [eax+270];TCustomForm.FTextHeight:Integer
 004A2A08    mov         edx,dword ptr [ebp-0C]
 004A2A0B    mov         eax,dword ptr [ebp-4]
 004A2A0E    call        004A1D80
 004A2A13    mov         eax,dword ptr [ebp-4]
 004A2A16    mov         ecx,dword ptr [eax+270];TCustomForm.FTextHeight:Integer
 004A2A1C    mov         edx,dword ptr [ebp-0C]
 004A2A1F    mov         eax,dword ptr [ebp-4]
 004A2A22    call        0048B9B0
 004A2A27    mov         eax,dword ptr [ebp-4]
 004A2A2A    test        byte ptr [eax+98],4;TCustomForm.FScalingFlags:TScalingFlags
>004A2A31    je          004A2A59
 004A2A33    mov         eax,dword ptr [ebp-4]
 004A2A36    mov         eax,dword ptr [eax+270];TCustomForm.FTextHeight:Integer
 004A2A3C    push        eax
 004A2A3D    mov         eax,dword ptr [ebp-0C]
 004A2A40    push        eax
 004A2A41    mov         eax,dword ptr [ebp-4]
 004A2A44    mov         eax,dword ptr [eax+268];TCustomForm.FClientWidth:Integer
 004A2A4A    push        eax
 004A2A4B    call        kernel32.MulDiv
 004A2A50    mov         edx,dword ptr [ebp-4]
 004A2A53    mov         dword ptr [edx+268],eax;TCustomForm.FClientWidth:Integer
 004A2A59    mov         eax,dword ptr [ebp-4]
 004A2A5C    test        byte ptr [eax+98],8;TCustomForm.FScalingFlags:TScalingFlags
>004A2A63    je          004A2A8B
 004A2A65    mov         eax,dword ptr [ebp-4]
 004A2A68    mov         eax,dword ptr [eax+270];TCustomForm.FTextHeight:Integer
 004A2A6E    push        eax
 004A2A6F    mov         eax,dword ptr [ebp-0C]
 004A2A72    push        eax
 004A2A73    mov         eax,dword ptr [ebp-4]
 004A2A76    mov         eax,dword ptr [eax+26C];TCustomForm.FClientHeight:Integer
 004A2A7C    push        eax
 004A2A7D    call        kernel32.MulDiv
 004A2A82    mov         edx,dword ptr [ebp-4]
 004A2A85    mov         dword ptr [edx+26C],eax;TCustomForm.FClientHeight:Integer
 004A2A8B    mov         eax,dword ptr [ebp-4]
 004A2A8E    test        byte ptr [eax+98],20;TCustomForm.FScalingFlags:TScalingFlags
>004A2A95    je          004A2AE3
 004A2A97    mov         eax,dword ptr [ebp-4]
 004A2A9A    mov         eax,dword ptr [eax+270];TCustomForm.FTextHeight:Integer
 004A2AA0    push        eax
 004A2AA1    mov         eax,dword ptr [ebp-0C]
 004A2AA4    push        eax
 004A2AA5    mov         eax,dword ptr [ebp-4]
 004A2AA8    mov         eax,dword ptr [eax+1FA];TCustomForm.FDesignSize:TPoint
 004A2AAE    push        eax
 004A2AAF    call        kernel32.MulDiv
 004A2AB4    mov         edx,dword ptr [ebp-4]
 004A2AB7    mov         dword ptr [edx+1FA],eax;TCustomForm.FDesignSize:TPoint
 004A2ABD    mov         eax,dword ptr [ebp-4]
 004A2AC0    mov         eax,dword ptr [eax+270];TCustomForm.FTextHeight:Integer
 004A2AC6    push        eax
 004A2AC7    mov         eax,dword ptr [ebp-0C]
 004A2ACA    push        eax
 004A2ACB    mov         eax,dword ptr [ebp-4]
 004A2ACE    mov         eax,dword ptr [eax+1FE]
 004A2AD4    push        eax
 004A2AD5    call        kernel32.MulDiv
 004A2ADA    mov         edx,dword ptr [ebp-4]
 004A2ADD    mov         dword ptr [edx+1FE],eax
 004A2AE3    mov         eax,dword ptr [ebp-4]
 004A2AE6    cmp         dword ptr [eax+268],0;TCustomForm.FClientWidth:Integer
>004A2AED    jle         004A2B00
 004A2AEF    mov         eax,dword ptr [ebp-4]
 004A2AF2    mov         edx,dword ptr [eax+268];TCustomForm.FClientWidth:Integer
 004A2AF8    mov         eax,dword ptr [ebp-4]
 004A2AFB    call        00482FB8
 004A2B00    mov         eax,dword ptr [ebp-4]
 004A2B03    cmp         dword ptr [eax+26C],0;TCustomForm.FClientHeight:Integer
>004A2B0A    jle         004A2B1D
 004A2B0C    mov         eax,dword ptr [ebp-4]
 004A2B0F    mov         edx,dword ptr [eax+26C];TCustomForm.FClientHeight:Integer
 004A2B15    mov         eax,dword ptr [ebp-4]
 004A2B18    call        0048300C
 004A2B1D    mov         eax,dword ptr [ebp-4]
 004A2B20    mov         dl,byte ptr ds:[4A2B88];0x0 gvar_004A2B88
 004A2B26    mov         byte ptr [eax+98],dl;TCustomForm.FScalingFlags:TScalingFlags
 004A2B2C    cmp         byte ptr [ebp-0D],0
>004A2B30    jne         004A2B56
 004A2B32    mov         ecx,1
 004A2B37    mov         edx,1
 004A2B3C    mov         eax,dword ptr [ebp-4]
 004A2B3F    call        004A1D80
 004A2B44    mov         ecx,1
 004A2B49    mov         edx,1
 004A2B4E    mov         eax,dword ptr [ebp-4]
 004A2B51    call        0048B9B0
 004A2B56    push        0
 004A2B58    xor         ecx,ecx
 004A2B5A    mov         edx,0B03D
 004A2B5F    mov         eax,dword ptr [ebp-4]
 004A2B62    call        00484FFC
 004A2B67    xor         eax,eax
 004A2B69    pop         edx
 004A2B6A    pop         ecx
 004A2B6B    pop         ecx
 004A2B6C    mov         dword ptr fs:[eax],edx
 004A2B6F    push        4A2B84
 004A2B74    mov         eax,dword ptr [ebp-4]
 004A2B77    call        TWinControl.EnableAlign
 004A2B7C    ret
>004A2B7D    jmp         @HandleFinally
>004A2B82    jmp         004A2B74
 004A2B84    mov         esp,ebp
 004A2B86    pop         ebp
 004A2B87    ret
end;*}

//004A2B8C
procedure TCustomForm.DefineProperties(Filer:TFiler);
begin
{*
 004A2B8C    push        ebp
 004A2B8D    mov         ebp,esp
 004A2B8F    add         esp,0FFFFFFF8
 004A2B92    push        ebx
 004A2B93    mov         dword ptr [ebp-8],edx
 004A2B96    mov         dword ptr [ebp-4],eax
 004A2B99    mov         edx,dword ptr [ebp-8]
 004A2B9C    mov         eax,dword ptr [ebp-4]
 004A2B9F    call        TWinControl.DefineProperties
 004A2BA4    push        0
 004A2BA6    push        0
 004A2BA8    mov         eax,dword ptr [ebp-4]
 004A2BAB    push        eax
 004A2BAC    push        4A2CC8
 004A2BB1    mov         eax,dword ptr [ebp-4]
 004A2BB4    mov         cl,byte ptr [eax+5E];TCustomForm.FIsControl:Boolean
 004A2BB7    xor         cl,1
 004A2BBA    mov         edx,4A2C18;'PixelsPerInch'
 004A2BBF    mov         eax,dword ptr [ebp-8]
 004A2BC2    mov         ebx,dword ptr [eax]
 004A2BC4    call        dword ptr [ebx+4];@AbstractError
 004A2BC7    mov         eax,dword ptr [ebp-4]
 004A2BCA    push        eax
 004A2BCB    push        4A2C80
 004A2BD0    mov         eax,dword ptr [ebp-4]
 004A2BD3    push        eax
 004A2BD4    push        4A2CA4
 004A2BD9    mov         eax,dword ptr [ebp-4]
 004A2BDC    mov         cl,byte ptr [eax+5E];TCustomForm.FIsControl:Boolean
 004A2BDF    xor         cl,1
 004A2BE2    mov         edx,4A2C30;'TextHeight'
 004A2BE7    mov         eax,dword ptr [ebp-8]
 004A2BEA    mov         ebx,dword ptr [eax]
 004A2BEC    call        dword ptr [ebx+4];@AbstractError
 004A2BEF    mov         eax,dword ptr [ebp-4]
 004A2BF2    push        eax
 004A2BF3    push        4A2C58
 004A2BF8    push        0
 004A2BFA    push        0
 004A2BFC    xor         ecx,ecx
 004A2BFE    mov         edx,4A2C44;'IgnoreFontProperty'
 004A2C03    mov         eax,dword ptr [ebp-8]
 004A2C06    mov         ebx,dword ptr [eax]
 004A2C08    call        dword ptr [ebx+4];@AbstractError
 004A2C0B    pop         ebx
 004A2C0C    pop         ecx
 004A2C0D    pop         ecx
 004A2C0E    pop         ebp
 004A2C0F    ret
*}
end;

//004A2CEC
{*function sub_004A2CEC(?:TCustomForm):?;
begin
 004A2CEC    push        ebp
 004A2CED    mov         ebp,esp
 004A2CEF    add         esp,0FFFFFFF8
 004A2CF2    mov         dword ptr [ebp-4],eax
 004A2CF5    mov         eax,dword ptr [ebp-4]
 004A2CF8    call        004A40F4
 004A2CFD    mov         edx,4A2D1C;'0'
 004A2D02    call        0042F464
 004A2D07    mov         dword ptr [ebp-8],eax
 004A2D0A    mov         eax,dword ptr [ebp-8]
 004A2D0D    pop         ecx
 004A2D0E    pop         ecx
 004A2D0F    pop         ebp
 004A2D10    ret
end;*}

//004A2D20
procedure TCustomForm.sub_004841BC;
begin
{*
 004A2D20    push        ebp
 004A2D21    mov         ebp,esp
 004A2D23    push        ecx
 004A2D24    mov         dword ptr [ebp-4],eax
 004A2D27    pop         ecx
 004A2D28    pop         ebp
 004A2D29    ret
*}
end;

//004A2D2C
{*procedure TCustomForm.sub_00483238(?:?; ?:?);
begin
 004A2D2C    push        ebp
 004A2D2D    mov         ebp,esp
 004A2D2F    add         esp,0FFFFFFF0
 004A2D32    mov         dword ptr [ebp-0C],ecx
 004A2D35    mov         dword ptr [ebp-8],edx
 004A2D38    mov         dword ptr [ebp-4],eax
 004A2D3B    mov         ecx,dword ptr [ebp-0C]
 004A2D3E    mov         edx,dword ptr [ebp-8]
 004A2D41    mov         eax,dword ptr [ebp-4]
 004A2D44    call        004A1D80
 004A2D49    mov         ecx,dword ptr [ebp-0C]
 004A2D4C    mov         edx,dword ptr [ebp-8]
 004A2D4F    mov         eax,dword ptr [ebp-4]
 004A2D52    call        0048B9B0
 004A2D57    mov         eax,dword ptr [ebp-4]
 004A2D5A    call        TForm.IsStoredClientHeight
 004A2D5F    test        al,al
>004A2D61    je          004A2DA9
 004A2D63    mov         eax,dword ptr [ebp-4]
 004A2D66    call        TControl.GetClientHeight
 004A2D6B    mov         dword ptr [ebp-10],eax
 004A2D6E    mov         eax,dword ptr [ebp-0C]
 004A2D71    push        eax
 004A2D72    mov         eax,dword ptr [ebp-8]
 004A2D75    push        eax
 004A2D76    mov         eax,dword ptr [ebp-4]
 004A2D79    call        TControl.GetClientWidth
 004A2D7E    push        eax
 004A2D7F    call        kernel32.MulDiv
 004A2D84    mov         edx,eax
 004A2D86    mov         eax,dword ptr [ebp-4]
 004A2D89    call        TForm.SetClientWidth
 004A2D8E    mov         eax,dword ptr [ebp-0C]
 004A2D91    push        eax
 004A2D92    mov         eax,dword ptr [ebp-8]
 004A2D95    push        eax
 004A2D96    mov         eax,dword ptr [ebp-10]
 004A2D99    push        eax
 004A2D9A    call        kernel32.MulDiv
 004A2D9F    mov         edx,eax
 004A2DA1    mov         eax,dword ptr [ebp-4]
 004A2DA4    call        TForm.SetClientHeight
 004A2DA9    mov         eax,dword ptr [ebp-0C]
 004A2DAC    push        eax
 004A2DAD    mov         eax,dword ptr [ebp-8]
 004A2DB0    push        eax
 004A2DB1    mov         eax,dword ptr [ebp-4]
 004A2DB4    mov         eax,dword ptr [eax+68];TCustomForm.FFont:TFont
 004A2DB7    call        TFont.GetSize
 004A2DBC    push        eax
 004A2DBD    call        kernel32.MulDiv
 004A2DC2    mov         edx,eax
 004A2DC4    mov         eax,dword ptr [ebp-4]
 004A2DC7    mov         eax,dword ptr [eax+68];TCustomForm.FFont:TFont
 004A2DCA    call        TFont.SetSize
 004A2DCF    mov         esp,ebp
 004A2DD1    pop         ebp
 004A2DD2    ret
end;*}

//004A2DD4
{*procedure sub_004A2DD4(?:TCustomForm; ?:?);
begin
 004A2DD4    push        ebp
 004A2DD5    mov         ebp,esp
 004A2DD7    add         esp,0FFFFFFF8
 004A2DDA    mov         dword ptr [ebp-8],edx
 004A2DDD    mov         dword ptr [ebp-4],eax
 004A2DE0    mov         eax,[0056E264];^NewStyleControls:Boolean
 004A2DE5    cmp         byte ptr [eax],0
>004A2DE8    je          004A2E22
 004A2DEA    mov         eax,dword ptr [ebp-4]
 004A2DED    call        TWinControl.HandleAllocated
 004A2DF2    test        al,al
>004A2DF4    je          004A2E3C
 004A2DF6    mov         eax,dword ptr [ebp-4]
 004A2DF9    cmp         byte ptr [eax+229],3
>004A2E00    je          004A2E3C
 004A2E02    mov         eax,dword ptr [ebp-4]
 004A2E05    call        004A5A94
 004A2E0A    push        eax
 004A2E0B    push        1
 004A2E0D    push        80
 004A2E12    mov         eax,dword ptr [ebp-4]
 004A2E15    call        TWinControl.GetHandle
 004A2E1A    push        eax
 004A2E1B    call        user32.SendMessageA
>004A2E20    jmp         004A2E3C
 004A2E22    mov         eax,dword ptr [ebp-4]
 004A2E25    call        TWinControl.GetHandle
 004A2E2A    push        eax
 004A2E2B    call        user32.IsIconic
 004A2E30    test        eax,eax
>004A2E32    je          004A2E3C
 004A2E34    mov         eax,dword ptr [ebp-4]
 004A2E37    mov         edx,dword ptr [eax]
 004A2E39    call        dword ptr [edx+7C]
 004A2E3C    pop         ecx
 004A2E3D    pop         ecx
 004A2E3E    pop         ebp
 004A2E3F    ret
end;*}

//004A2E40
function TForm.IsStoredClientHeight(Value:Integer):Boolean;
begin
{*
 004A2E40    push        ebp
 004A2E41    mov         ebp,esp
 004A2E43    add         esp,0FFFFFFF8
 004A2E46    mov         dword ptr [ebp-4],eax
 004A2E49    mov         eax,dword ptr [ebp-4]
 004A2E4C    call        TForm.IsStoredHeight
 004A2E51    xor         al,1
 004A2E53    mov         byte ptr [ebp-5],al
 004A2E56    mov         al,byte ptr [ebp-5]
 004A2E59    pop         ecx
 004A2E5A    pop         ecx
 004A2E5B    pop         ebp
 004A2E5C    ret
*}
end;

//004A2E60
function TForm.IsStoredHeight(Value:Integer):Boolean;
begin
{*
 004A2E60    push        ebp
 004A2E61    mov         ebp,esp
 004A2E63    add         esp,0FFFFFFF8
 004A2E66    mov         dword ptr [ebp-4],eax
 004A2E69    mov         eax,dword ptr [ebp-4]
 004A2E6C    cmp         byte ptr [eax+210],0;TForm.FAutoScroll:Boolean
>004A2E73    jne         004A2E97
 004A2E75    mov         eax,dword ptr [ebp-4]
 004A2E78    mov         eax,dword ptr [eax+208];TForm.HorzScrollBar:TControlScrollBar
 004A2E7E    cmp         dword ptr [eax+10],0;TControlScrollBar.Range:Integer
>004A2E82    jne         004A2E97
 004A2E84    mov         eax,dword ptr [ebp-4]
 004A2E87    mov         eax,dword ptr [eax+20C];TForm.VertScrollBar:TControlScrollBar
 004A2E8D    cmp         dword ptr [eax+10],0;TControlScrollBar.Range:Integer
>004A2E91    jne         004A2E97
 004A2E93    xor         eax,eax
>004A2E95    jmp         004A2E99
 004A2E97    mov         al,1
 004A2E99    mov         byte ptr [ebp-5],al
 004A2E9C    mov         al,byte ptr [ebp-5]
 004A2E9F    pop         ecx
 004A2EA0    pop         ecx
 004A2EA1    pop         ebp
 004A2EA2    ret
*}
end;

//004A2EA4
function TForm.IsStoredAutoScroll(Value:Boolean):Boolean;
begin
{*
 004A2EA4    push        ebp
 004A2EA5    mov         ebp,esp
 004A2EA7    add         esp,0FFFFFFF8
 004A2EAA    mov         dword ptr [ebp-4],eax
 004A2EAD    mov         eax,dword ptr [ebp-4]
 004A2EB0    call        TForm.IsStoredActiveControl
 004A2EB5    test        al,al
>004A2EB7    je          004A2EDB
 004A2EB9    mov         eax,dword ptr [ebp-4]
 004A2EBC    mov         al,byte ptr [eax+229];TForm.FBorderStyle:TFormBorderStyle
 004A2EC2    sub         al,2
>004A2EC4    je          004A2ECE
 004A2EC6    sub         al,3
>004A2EC8    je          004A2ECE
 004A2ECA    xor         eax,eax
>004A2ECC    jmp         004A2ED0
 004A2ECE    mov         al,1
 004A2ED0    mov         edx,dword ptr [ebp-4]
 004A2ED3    cmp         al,byte ptr [edx+210];TForm.FAutoScroll:Boolean
>004A2ED9    jne         004A2EDF
 004A2EDB    xor         eax,eax
>004A2EDD    jmp         004A2EE1
 004A2EDF    mov         al,1
 004A2EE1    mov         byte ptr [ebp-5],al
 004A2EE4    mov         al,byte ptr [ebp-5]
 004A2EE7    pop         ecx
 004A2EE8    pop         ecx
 004A2EE9    pop         ebp
 004A2EEA    ret
*}
end;

//004A2EEC
{*procedure TCustomForm.sub_004A2EEC(?:?);
begin
 004A2EEC    push        ebp
 004A2EED    mov         ebp,esp
 004A2EEF    add         esp,0FFFFFFF8
 004A2EF2    push        ebx
 004A2EF3    mov         dword ptr [ebp-8],edx
 004A2EF6    mov         dword ptr [ebp-4],eax
 004A2EF9    mov         eax,dword ptr [ebp-4]
 004A2EFC    cmp         word ptr [eax+292],0;TCustomForm.?f292:word
>004A2F04    je          004A2F1B
 004A2F06    mov         ecx,dword ptr [ebp-8]
 004A2F09    mov         ebx,dword ptr [ebp-4]
 004A2F0C    mov         edx,dword ptr [ebp-4]
 004A2F0F    mov         eax,dword ptr [ebx+294];TCustomForm.?f294:dword
 004A2F15    call        dword ptr [ebx+290];TCustomForm.FOnClose
 004A2F1B    pop         ebx
 004A2F1C    pop         ecx
 004A2F1D    pop         ecx
 004A2F1E    pop         ebp
 004A2F1F    ret
end;*}

//004A2F20
procedure TCustomForm.sub_004A2F20;
begin
{*
 004A2F20    push        ebp
 004A2F21    mov         ebp,esp
 004A2F23    push        ecx
 004A2F24    push        ebx
 004A2F25    mov         dword ptr [ebp-4],eax
 004A2F28    mov         eax,dword ptr [ebp-4]
 004A2F2B    cmp         word ptr [eax+2B2],0;TCustomForm.?f2B2:word
>004A2F33    je          004A2F47
 004A2F35    mov         ebx,dword ptr [ebp-4]
 004A2F38    mov         edx,dword ptr [ebp-4]
 004A2F3B    mov         eax,dword ptr [ebx+2B4];TCustomForm.?f2B4:dword
 004A2F41    call        dword ptr [ebx+2B0];TCustomForm.FOnHide
 004A2F47    pop         ebx
 004A2F48    pop         ecx
 004A2F49    pop         ebp
 004A2F4A    ret
*}
end;

//004A2F4C
procedure TCustomForm.sub_004A2F4C;
begin
{*
 004A2F4C    push        ebp
 004A2F4D    mov         ebp,esp
 004A2F4F    push        ecx
 004A2F50    push        ebx
 004A2F51    mov         dword ptr [ebp-4],eax
 004A2F54    mov         eax,dword ptr [ebp-4]
 004A2F57    cmp         word ptr [eax+2CA],0;TCustomForm.?f2CA:word
>004A2F5F    je          004A2F73
 004A2F61    mov         ebx,dword ptr [ebp-4]
 004A2F64    mov         edx,dword ptr [ebp-4]
 004A2F67    mov         eax,dword ptr [ebx+2CC];TCustomForm.?f2CC:dword
 004A2F6D    call        dword ptr [ebx+2C8];TCustomForm.FOnShow
 004A2F73    pop         ebx
 004A2F74    pop         ecx
 004A2F75    pop         ebp
 004A2F76    ret
*}
end;

//004A2F78
{*procedure sub_004A2F78(?:?);
begin
 004A2F78    push        ebp
 004A2F79    mov         ebp,esp
 004A2F7B    add         esp,0FFFFFFF8
 004A2F7E    mov         dword ptr [ebp-8],edx
 004A2F81    mov         dword ptr [ebp-4],eax
 004A2F84    mov         eax,dword ptr [ebp-4]
 004A2F87    call        TWinControl.GetHandle
 004A2F8C    push        eax
 004A2F8D    call        user32.IsIconic
 004A2F92    test        eax,eax
>004A2F94    je          004A301C
 004A2F9A    push        0
 004A2F9C    push        0
 004A2F9E    push        0
 004A2FA0    push        0
 004A2FA2    mov         eax,dword ptr [ebp-8]
 004A2FA5    push        eax
 004A2FA6    call        user32.SetRect
 004A2FAB    push        0EC
 004A2FAD    mov         eax,dword ptr [ebp-4]
 004A2FB0    call        TWinControl.GetHandle
 004A2FB5    push        eax
 004A2FB6    call        user32.GetWindowLongA
 004A2FBB    push        eax
 004A2FBC    mov         eax,dword ptr [ebp-4]
 004A2FBF    cmp         dword ptr [eax+248],0;TCustomForm.FMenu:TMainMenu
 004A2FC6    setne       al
 004A2FC9    neg         al
 004A2FCB    sbb         eax,eax
 004A2FCD    push        eax
 004A2FCE    push        0F0
 004A2FD0    mov         eax,dword ptr [ebp-4]
 004A2FD3    call        TWinControl.GetHandle
 004A2FD8    push        eax
 004A2FD9    call        user32.GetWindowLongA
 004A2FDE    push        eax
 004A2FDF    mov         eax,dword ptr [ebp-8]
 004A2FE2    push        eax
 004A2FE3    call        user32.AdjustWindowRectEx
 004A2FE8    mov         eax,dword ptr [ebp-8]
 004A2FEB    mov         edx,dword ptr [ebp-4]
 004A2FEE    mov         edx,dword ptr [edx+4C];TCustomForm.Height:Integer
 004A2FF1    sub         edx,dword ptr [eax+0C]
 004A2FF4    mov         eax,dword ptr [ebp-8]
 004A2FF7    add         edx,dword ptr [eax+4]
 004A2FFA    push        edx
 004A2FFB    mov         eax,dword ptr [ebp-8]
 004A2FFE    mov         edx,dword ptr [ebp-4]
 004A3001    mov         edx,dword ptr [edx+48];TCustomForm.Width:Integer
 004A3004    sub         edx,dword ptr [eax+8]
 004A3007    mov         eax,dword ptr [ebp-8]
 004A300A    add         edx,dword ptr [eax]
 004A300C    push        edx
 004A300D    push        0
 004A300F    push        0
 004A3011    mov         eax,dword ptr [ebp-8]
 004A3014    push        eax
 004A3015    call        user32.SetRect
>004A301A    jmp         004A3027
 004A301C    mov         edx,dword ptr [ebp-8]
 004A301F    mov         eax,dword ptr [ebp-4]
 004A3022    call        0048C23C
 004A3027    pop         ecx
 004A3028    pop         ecx
 004A3029    pop         ebp
 004A302A    ret
end;*}

//004A302C
{*procedure TCustomForm.sub_0042A788(?:?; ?:?; ?:?);
begin
 004A302C    push        ebp
 004A302D    mov         ebp,esp
 004A302F    add         esp,0FFFFFFEC
 004A3032    push        esi
 004A3033    mov         dword ptr [ebp-8],edx
 004A3036    mov         dword ptr [ebp-4],eax
 004A3039    push        dword ptr [ebp+0C]
 004A303C    push        dword ptr [ebp+8]
 004A303F    mov         edx,dword ptr [ebp-8]
 004A3042    mov         eax,dword ptr [ebp-4]
 004A3045    call        TWinControl.sub_0042A788
 004A304A    mov         eax,dword ptr [ebp-8]
 004A304D    cmp         eax,dword ptr [ebp-4]
>004A3050    jne         004A3099
 004A3052    mov         eax,dword ptr [ebp-4]
 004A3055    call        0042AB10
 004A305A    dec         eax
 004A305B    test        eax,eax
>004A305D    jl          004A3099
 004A305F    inc         eax
 004A3060    mov         dword ptr [ebp-14],eax
 004A3063    mov         dword ptr [ebp-0C],0
 004A306A    mov         edx,dword ptr [ebp-0C]
 004A306D    mov         eax,dword ptr [ebp-4]
 004A3070    call        0042AAD0
 004A3075    mov         dword ptr [ebp-10],eax
 004A3078    mov         eax,dword ptr [ebp-10]
 004A307B    mov         si,0FFF1
 004A307F    call        @CallDynaInst
 004A3084    test        al,al
>004A3086    jne         004A3091
 004A3088    mov         edx,dword ptr [ebp-10]
 004A308B    mov         eax,dword ptr [ebp+0C]
 004A308E    call        dword ptr [ebp+8]
 004A3091    inc         dword ptr [ebp-0C]
 004A3094    dec         dword ptr [ebp-14]
>004A3097    jne         004A306A
 004A3099    pop         esi
 004A309A    mov         esp,ebp
 004A309C    pop         ebp
 004A309D    ret         8
end;*}

//004A30A0
{*function sub_004A30A0:?;
begin
 004A30A0    push        ebp
 004A30A1    mov         ebp,esp
 004A30A3    add         esp,0FFFFFFF8
 004A30A6    push        ebx
 004A30A7    mov         dword ptr [ebp-4],eax
 004A30AA    mov         eax,dword ptr [ebp-4]
 004A30AD    cmp         dword ptr [eax+0A0],0;TCustomForm.FHostDockSite:TWinControl
>004A30B4    jne         004A30CC
 004A30B6    mov         eax,dword ptr [ebp-4]
 004A30B9    mov         edx,dword ptr [eax]
 004A30BB    call        dword ptr [edx+58];TCustomForm.sub_00486720
 004A30BE    mov         ebx,eax
 004A30C0    mov         eax,dword ptr [ebp-4]
 004A30C3    call        TObject.ClassType
 004A30C8    cmp         ebx,eax
>004A30CA    je          004A30D0
 004A30CC    xor         eax,eax
>004A30CE    jmp         004A30D2
 004A30D0    mov         al,1
 004A30D2    mov         byte ptr [ebp-5],al
 004A30D5    mov         al,byte ptr [ebp-5]
 004A30D8    pop         ebx
 004A30D9    pop         ecx
 004A30DA    pop         ecx
 004A30DB    pop         ebp
 004A30DC    ret
end;*}

//004A30E0
{*procedure TCustomForm.sub_0042A808(?:?; ?:?);
begin
 004A30E0    push        ebp
 004A30E1    mov         ebp,esp
 004A30E3    add         esp,0FFFFFFE8
 004A30E6    push        esi
 004A30E7    mov         dword ptr [ebp-0C],ecx
 004A30EA    mov         dword ptr [ebp-8],edx
 004A30ED    mov         dword ptr [ebp-4],eax
 004A30F0    mov         eax,dword ptr [ebp-8]
 004A30F3    mov         edx,dword ptr ds:[47DF94];TControl
 004A30F9    call        @IsClass
 004A30FE    test        al,al
>004A3100    je          004A3112
 004A3102    mov         ecx,dword ptr [ebp-0C]
 004A3105    mov         edx,dword ptr [ebp-8]
 004A3108    mov         eax,dword ptr [ebp-4]
 004A310B    call        TWinControl.sub_0042A808
>004A3110    jmp         004A3174
 004A3112    mov         eax,dword ptr [ebp-4]
 004A3115    call        00487E38
 004A311A    sub         dword ptr [ebp-0C],eax
 004A311D    mov         dword ptr [ebp-14],0FFFFFFFF
 004A3124    mov         eax,dword ptr [ebp-4]
 004A3127    call        0042AB10
 004A312C    dec         eax
 004A312D    test        eax,eax
>004A312F    jl          004A3174
 004A3131    inc         eax
 004A3132    mov         dword ptr [ebp-18],eax
 004A3135    mov         dword ptr [ebp-10],0
 004A313C    mov         edx,dword ptr [ebp-10]
 004A313F    mov         eax,dword ptr [ebp-4]
 004A3142    call        0042AAD0
 004A3147    mov         si,0FFF1
 004A314B    call        @CallDynaInst
 004A3150    test        al,al
>004A3152    jne         004A316C
 004A3154    inc         dword ptr [ebp-14]
 004A3157    mov         eax,dword ptr [ebp-14]
 004A315A    cmp         eax,dword ptr [ebp-0C]
>004A315D    jne         004A316C
 004A315F    mov         edx,dword ptr [ebp-10]
 004A3162    mov         eax,dword ptr [ebp-8]
 004A3165    call        0042AB3C
>004A316A    jmp         004A3174
 004A316C    inc         dword ptr [ebp-10]
 004A316F    dec         dword ptr [ebp-18]
>004A3172    jne         004A313C
 004A3174    pop         esi
 004A3175    mov         esp,ebp
 004A3177    pop         ebp
 004A3178    ret
end;*}

//004A317C
procedure TForm.SetParentBiDiMode(Value:Boolean);
begin
{*
 004A317C    push        ebp
 004A317D    mov         ebp,esp
 004A317F    add         esp,0FFFFFFF8
 004A3182    mov         byte ptr [ebp-5],dl
 004A3185    mov         dword ptr [ebp-4],eax
 004A3188    mov         eax,dword ptr [ebp-4]
 004A318B    mov         al,byte ptr [eax+60];TForm.FParentBiDiMode:Boolean
 004A318E    cmp         al,byte ptr [ebp-5]
>004A3191    je          004A31B8
 004A3193    mov         dl,byte ptr [ebp-5]
 004A3196    mov         eax,dword ptr [ebp-4]
 004A3199    call        TPanel.SetParentBiDiMode
 004A319E    mov         eax,dword ptr [ebp-4]
 004A31A1    cmp         dword ptr [eax+30],0;TForm.FParent:TWinControl
>004A31A5    jne         004A31B8
 004A31A7    push        0
 004A31A9    xor         ecx,ecx
 004A31AB    mov         edx,0B03D
 004A31B0    mov         eax,dword ptr [ebp-4]
 004A31B3    call        00484FFC
 004A31B8    pop         ecx
 004A31B9    pop         ecx
 004A31BA    pop         ebp
 004A31BB    ret
*}
end;

//004A31BC
procedure TForm.SetClientWidth(Value:Integer);
begin
{*
 004A31BC    push        ebp
 004A31BD    mov         ebp,esp
 004A31BF    add         esp,0FFFFFFF8
 004A31C2    mov         dword ptr [ebp-8],edx
 004A31C5    mov         dword ptr [ebp-4],eax
 004A31C8    mov         eax,dword ptr [ebp-4]
 004A31CB    test        byte ptr [eax+54],8;TForm.FControlState:TControlState
>004A31CF    je          004A31F6
 004A31D1    mov         eax,dword ptr [ebp-8]
 004A31D4    mov         edx,dword ptr [ebp-4]
 004A31D7    mov         dword ptr [edx+268],eax;TForm.FClientWidth:Integer
 004A31DD    mov         al,[004A3208];0x4 gvar_004A3208
 004A31E2    mov         edx,dword ptr [ebp-4]
 004A31E5    or          al,byte ptr [edx+98];TForm.FScalingFlags:TScalingFlags
 004A31EB    mov         edx,dword ptr [ebp-4]
 004A31EE    mov         byte ptr [edx+98],al;TForm.FScalingFlags:TScalingFlags
>004A31F4    jmp         004A3201
 004A31F6    mov         edx,dword ptr [ebp-8]
 004A31F9    mov         eax,dword ptr [ebp-4]
 004A31FC    call        00482FB8
 004A3201    pop         ecx
 004A3202    pop         ecx
 004A3203    pop         ebp
 004A3204    ret
*}
end;

//004A320C
procedure TForm.SetClientHeight(Value:Integer);
begin
{*
 004A320C    push        ebp
 004A320D    mov         ebp,esp
 004A320F    add         esp,0FFFFFFF8
 004A3212    mov         dword ptr [ebp-8],edx
 004A3215    mov         dword ptr [ebp-4],eax
 004A3218    mov         eax,dword ptr [ebp-4]
 004A321B    test        byte ptr [eax+54],8;TForm.FControlState:TControlState
>004A321F    je          004A3246
 004A3221    mov         eax,dword ptr [ebp-8]
 004A3224    mov         edx,dword ptr [ebp-4]
 004A3227    mov         dword ptr [edx+26C],eax;TForm.FClientHeight:Integer
 004A322D    mov         al,[004A3258];0x8 gvar_004A3258
 004A3232    mov         edx,dword ptr [ebp-4]
 004A3235    or          al,byte ptr [edx+98];TForm.FScalingFlags:TScalingFlags
 004A323B    mov         edx,dword ptr [ebp-4]
 004A323E    mov         byte ptr [edx+98],al;TForm.FScalingFlags:TScalingFlags
>004A3244    jmp         004A3251
 004A3246    mov         edx,dword ptr [ebp-8]
 004A3249    mov         eax,dword ptr [ebp-4]
 004A324C    call        0048300C
 004A3251    pop         ecx
 004A3252    pop         ecx
 004A3253    pop         ebp
 004A3254    ret
*}
end;

//004A325C
procedure TCustomForm.SetVisible(Value:Boolean);
begin
{*
 004A325C    push        ebp
 004A325D    mov         ebp,esp
 004A325F    add         esp,0FFFFFFF8
 004A3262    mov         byte ptr [ebp-5],dl
 004A3265    mov         dword ptr [ebp-4],eax
 004A3268    mov         eax,dword ptr [ebp-4]
 004A326B    test        byte ptr [eax+2F4],1
>004A3272    je          004A3292
 004A3274    cmp         byte ptr [ebp-5],0
>004A3278    je          004A3286
 004A327A    mov         eax,dword ptr [ebp-4]
 004A327D    or          byte ptr [eax+2F4],2
>004A3284    jmp         004A32B6
 004A3286    mov         eax,dword ptr [ebp-4]
 004A3289    and         byte ptr [eax+2F4],0FD
>004A3290    jmp         004A32B6
 004A3292    cmp         byte ptr [ebp-5],0
>004A3296    je          004A32AB
 004A3298    mov         eax,dword ptr [ebp-4]
 004A329B    mov         al,byte ptr [eax+57]
 004A329E    cmp         al,byte ptr [ebp-5]
>004A32A1    je          004A32AB
 004A32A3    mov         eax,dword ptr [ebp-4]
 004A32A6    call        004A484C
 004A32AB    mov         dl,byte ptr [ebp-5]
 004A32AE    mov         eax,dword ptr [ebp-4]
 004A32B1    call        TImage.SetVisible
 004A32B6    pop         ecx
 004A32B7    pop         ecx
 004A32B8    pop         ebp
 004A32B9    ret
*}
end;

//004A32BC
procedure TCustomForm.sub_0048513C;
begin
{*
 004A32BC    push        ebp
 004A32BD    mov         ebp,esp
 004A32BF    add         esp,0FFFFFFF8
 004A32C2    xor         edx,edx
 004A32C4    mov         dword ptr [ebp-8],edx
 004A32C7    mov         dword ptr [ebp-4],eax
 004A32CA    xor         eax,eax
 004A32CC    push        ebp
 004A32CD    push        4A3324
 004A32D2    push        dword ptr fs:[eax]
 004A32D5    mov         dword ptr fs:[eax],esp
 004A32D8    mov         eax,dword ptr [ebp-4]
 004A32DB    cmp         byte ptr [eax+22F],1;TCustomForm.FFormStyle:TFormStyle
>004A32E2    jne         004A330E
 004A32E4    mov         eax,dword ptr [ebp-4]
 004A32E7    cmp         byte ptr [eax+57],0;TCustomForm.FVisible:Boolean
>004A32EB    je          004A330E
 004A32ED    lea         edx,[ebp-8]
 004A32F0    mov         eax,[0056E050];^SMDIChildNotVisible:TResStringRec
 004A32F5    call        LoadResString
 004A32FA    mov         ecx,dword ptr [ebp-8]
 004A32FD    mov         dl,1
 004A32FF    mov         eax,[0041D40C];EInvalidOperation
 004A3304    call        Exception.Create;EInvalidOperation.Create
 004A3309    call        @RaiseExcept
 004A330E    xor         eax,eax
 004A3310    pop         edx
 004A3311    pop         ecx
 004A3312    pop         ecx
 004A3313    mov         dword ptr fs:[eax],edx
 004A3316    push        4A332B
 004A331B    lea         eax,[ebp-8]
 004A331E    call        @LStrClr
 004A3323    ret
>004A3324    jmp         @HandleFinally
>004A3329    jmp         004A331B
 004A332B    pop         ecx
 004A332C    pop         ecx
 004A332D    pop         ebp
 004A332E    ret
*}
end;

//004A3330
{*function sub_004A3330(?:?; ?:?):?;
begin
 004A3330    push        ebp
 004A3331    mov         ebp,esp
 004A3333    add         esp,0FFFFFFF0
 004A3336    mov         dword ptr [ebp-10],ecx
 004A3339    mov         dword ptr [ebp-0C],edx
 004A333C    mov         dword ptr [ebp-4],eax
 004A333F    mov         byte ptr [ebp-5],0
 004A3343    mov         al,byte ptr [ebp-5]
 004A3346    mov         esp,ebp
 004A3348    pop         ebp
 004A3349    ret
end;*}

//004A334C
{*procedure sub_004A334C(?:?);
begin
 004A334C    push        ebp
 004A334D    mov         ebp,esp
 004A334F    add         esp,0FFFFFFF8
 004A3352    mov         dword ptr [ebp-8],edx
 004A3355    mov         dword ptr [ebp-4],eax
 004A3358    mov         eax,dword ptr [ebp-4]
 004A335B    mov         eax,dword ptr [eax+30];TCustomForm.FParent:TWinControl
 004A335E    cmp         eax,dword ptr [ebp-8]
>004A3361    je          004A3398
 004A3363    mov         eax,dword ptr [ebp-8]
 004A3366    cmp         eax,dword ptr [ebp-4]
>004A3369    je          004A3398
 004A336B    mov         eax,dword ptr [ebp-4]
 004A336E    cmp         dword ptr [eax+30],0;TCustomForm.FParent:TWinControl
>004A3372    jne         004A337C
 004A3374    mov         eax,dword ptr [ebp-4]
 004A3377    call        004888E4
 004A337C    mov         edx,dword ptr [ebp-8]
 004A337F    mov         eax,dword ptr [ebp-4]
 004A3382    call        0048359C
 004A3387    mov         eax,dword ptr [ebp-4]
 004A338A    cmp         dword ptr [eax+30],0;TCustomForm.FParent:TWinControl
>004A338E    jne         004A3398
 004A3390    mov         eax,dword ptr [ebp-4]
 004A3393    call        00488ADC
 004A3398    pop         ecx
 004A3399    pop         ecx
 004A339A    pop         ebp
 004A339B    ret
end;*}

//004A339C
{*procedure sub_004A339C(?:?; ?:?; ?:?);
begin
 004A339C    push        ebp
 004A339D    mov         ebp,esp
 004A339F    add         esp,0FFFFFFF4
 004A33A2    push        ebx
 004A33A3    mov         dword ptr [ebp-0C],ecx
 004A33A6    mov         dword ptr [ebp-8],edx
 004A33A9    mov         dword ptr [ebp-4],eax
 004A33AC    mov         eax,dword ptr [ebp+8]
 004A33AF    push        eax
 004A33B0    mov         ecx,dword ptr [ebp-0C]
 004A33B3    mov         edx,dword ptr [ebp-8]
 004A33B6    mov         eax,dword ptr [ebp-4]
 004A33B9    call        0042A8C4
 004A33BE    mov         eax,dword ptr [ebp-4]
 004A33C1    cmp         dword ptr [eax+250],0;TCustomForm.FDesigner:IDesignerHook
>004A33C8    je          004A33E2
 004A33CA    mov         eax,dword ptr [ebp+8]
 004A33CD    push        eax
 004A33CE    mov         ecx,dword ptr [ebp-0C]
 004A33D1    mov         edx,dword ptr [ebp-8]
 004A33D4    mov         eax,dword ptr [ebp-4]
 004A33D7    mov         eax,dword ptr [eax+250];TCustomForm.FDesigner:IDesignerHook
 004A33DD    mov         ebx,dword ptr [eax]
 004A33DF    call        dword ptr [ebx+2C]
 004A33E2    pop         ebx
 004A33E3    mov         esp,ebp
 004A33E5    pop         ebp
 004A33E6    ret         4
end;*}

//004A33EC
{*procedure sub_004A33EC(?:?);
begin
 004A33EC    push        ebp
 004A33ED    mov         ebp,esp
 004A33EF    add         esp,0FFFFFFD4
 004A33F2    push        ebx
 004A33F3    push        esi
 004A33F4    mov         dword ptr [ebp-8],edx
 004A33F7    mov         dword ptr [ebp-4],eax
 004A33FA    mov         eax,dword ptr [ebp-8]
 004A33FD    mov         eax,dword ptr [eax]
 004A33FF    cmp         eax,46
>004A3402    jg          004A3427
>004A3404    je          004A3518
 004A340A    add         eax,0FFFFFFFA
 004A340D    sub         eax,3
>004A3410    jb          004A343E
 004A3412    sub         eax,22
>004A3415    je          004A359F
 004A341B    dec         eax
>004A341C    je          004A36A7
>004A3422    jmp         004A37EB
 004A3427    sub         eax,0B01A
>004A342C    je          004A34F7
 004A3432    dec         eax
>004A3433    je          004A34D6
>004A3439    jmp         004A37EB
 004A343E    cmp         byte ptr ds:[56C9C0],0;gvar_0056C9C0
>004A3445    je          004A3869
 004A344B    mov         eax,dword ptr [ebp-8]
 004A344E    cmp         dword ptr [eax],7
>004A3451    jne         004A385E
 004A3457    mov         eax,dword ptr [ebp-4]
 004A345A    test        byte ptr [eax+1C],10;TCustomForm.FComponentState:TComponentState
>004A345E    jne         004A385E
 004A3464    xor         eax,eax
 004A3466    mov         dword ptr [ebp-0C],eax
 004A3469    mov         eax,dword ptr [ebp-4]
 004A346C    cmp         byte ptr [eax+22F],2;TCustomForm.FFormStyle:TFormStyle
>004A3473    jne         004A3493
 004A3475    mov         eax,dword ptr [ebp-4]
 004A3478    call        004A3E58
 004A347D    test        eax,eax
>004A347F    je          004A34BE
 004A3481    mov         eax,dword ptr [ebp-4]
 004A3484    call        004A3E58
 004A3489    call        TWinControl.GetHandle
 004A348E    mov         dword ptr [ebp-0C],eax
>004A3491    jmp         004A34BE
 004A3493    mov         eax,dword ptr [ebp-4]
 004A3496    cmp         dword ptr [eax+220],0;TCustomForm.FActiveControl:TWinControl
>004A349D    je          004A34BE
 004A349F    mov         eax,dword ptr [ebp-4]
 004A34A2    mov         eax,dword ptr [eax+220];TCustomForm.FActiveControl:TWinControl
 004A34A8    cmp         eax,dword ptr [ebp-4]
>004A34AB    je          004A34BE
 004A34AD    mov         eax,dword ptr [ebp-4]
 004A34B0    mov         eax,dword ptr [eax+220];TCustomForm.FActiveControl:TWinControl
 004A34B6    call        TWinControl.GetHandle
 004A34BB    mov         dword ptr [ebp-0C],eax
 004A34BE    cmp         dword ptr [ebp-0C],0
>004A34C2    je          004A385E
 004A34C8    mov         eax,dword ptr [ebp-0C]
 004A34CB    push        eax
 004A34CC    call        user32.SetFocus
>004A34D1    jmp         004A3869
 004A34D6    mov         eax,dword ptr [ebp-4]
 004A34D9    cmp         dword ptr [eax+0A0],0;TCustomForm.FHostDockSite:TWinControl
>004A34E0    je          004A385E
 004A34E6    mov         eax,dword ptr [ebp-4]
 004A34E9    mov         si,0FFB1
 004A34ED    call        @CallDynaInst;TCustomForm.sub_004A5A24
>004A34F2    jmp         004A385E
 004A34F7    mov         eax,dword ptr [ebp-4]
 004A34FA    cmp         dword ptr [eax+0A0],0;TCustomForm.FHostDockSite:TWinControl
>004A3501    je          004A385E
 004A3507    mov         eax,dword ptr [ebp-4]
 004A350A    mov         si,0FFB3
 004A350E    call        @CallDynaInst;TCustomForm.sub_004A59E0
>004A3513    jmp         004A385E
 004A3518    mov         eax,dword ptr [ebp-4]
 004A351B    mov         ax,word ptr [eax+1C];TCustomForm.FComponentState:TComponentState
 004A351F    and         ax,word ptr ds:[4A3870];0x11 gvar_004A3870
 004A3526    mov         dx,word ptr ds:[4A3874];0x1 gvar_004A3874
 004A352D    cmp         dx,ax
>004A3530    jne         004A385E
 004A3536    mov         eax,dword ptr [ebp-4]
 004A3539    mov         al,byte ptr [eax+230];TCustomForm.FPosition:TPosition
 004A353F    dec         eax
 004A3540    sub         al,2
>004A3542    jae         004A3560
 004A3544    mov         eax,dword ptr [ebp-4]
 004A3547    cmp         byte ptr [eax+22B],2;TCustomForm.FWindowState:TWindowState
>004A354E    je          004A3560
 004A3550    mov         eax,dword ptr [ebp-8]
 004A3553    mov         eax,dword ptr [eax+8]
 004A3556    mov         dword ptr [ebp-20],eax
 004A3559    mov         eax,dword ptr [ebp-20]
 004A355C    or          dword ptr [eax+18],2
 004A3560    mov         eax,dword ptr [ebp-4]
 004A3563    mov         al,byte ptr [eax+230];TCustomForm.FPosition:TPosition
 004A3569    sub         al,1
>004A356B    je          004A3575
 004A356D    sub         al,2
>004A356F    jne         004A385E
 004A3575    mov         eax,dword ptr [ebp-4]
 004A3578    mov         al,byte ptr [eax+229];TCustomForm.FBorderStyle:TFormBorderStyle
 004A357E    sub         al,2
>004A3580    je          004A358A
 004A3582    sub         al,3
>004A3584    jne         004A385E
 004A358A    mov         eax,dword ptr [ebp-8]
 004A358D    mov         eax,dword ptr [eax+8]
 004A3590    mov         dword ptr [ebp-24],eax
 004A3593    mov         eax,dword ptr [ebp-24]
 004A3596    or          dword ptr [eax+18],1
>004A359A    jmp         004A385E
 004A359F    mov         eax,dword ptr [ebp-8]
 004A35A2    mov         eax,dword ptr [eax+8]
 004A35A5    mov         dword ptr [ebp-28],eax
 004A35A8    mov         eax,dword ptr [ebp-28]
 004A35AB    cmp         dword ptr [eax],1
>004A35AE    jne         004A385E
 004A35B4    mov         eax,dword ptr [ebp-4]
 004A35B7    cmp         dword ptr [eax+248],0;TCustomForm.FMenu:TMainMenu
>004A35BE    je          004A385E
 004A35C4    mov         eax,dword ptr [ebp-28]
 004A35C7    mov         edx,dword ptr [eax+8]
 004A35CA    mov         eax,dword ptr [ebp-4]
 004A35CD    mov         eax,dword ptr [eax+248];TCustomForm.FMenu:TMainMenu
 004A35D3    xor         ecx,ecx
 004A35D5    call        0049C384
 004A35DA    mov         dword ptr [ebp-14],eax
 004A35DD    cmp         dword ptr [ebp-14],0
>004A35E1    je          004A385E
 004A35E7    mov         dl,1
 004A35E9    mov         eax,[0047D3C4];TControlCanvas
 004A35EE    call        TCanvas.Create;TControlCanvas.Create
 004A35F3    mov         dword ptr [ebp-18],eax
 004A35F6    xor         eax,eax
 004A35F8    push        ebp
 004A35F9    push        4A36A0
 004A35FE    push        dword ptr fs:[eax]
 004A3601    mov         dword ptr fs:[eax],esp
 004A3604    mov         eax,dword ptr [ebp-28]
 004A3607    mov         eax,dword ptr [eax+18]
 004A360A    push        eax
 004A360B    call        gdi32.SaveDC
 004A3610    mov         dword ptr [ebp-10],eax
 004A3613    xor         eax,eax
 004A3615    push        ebp
 004A3616    push        4A3683
 004A361B    push        dword ptr fs:[eax]
 004A361E    mov         dword ptr fs:[eax],esp
 004A3621    mov         eax,dword ptr [ebp-28]
 004A3624    mov         edx,dword ptr [eax+18]
 004A3627    mov         eax,dword ptr [ebp-18]
 004A362A    call        TCanvas.SetHandle
 004A362F    mov         eax,[00571E40];0x0 Screen:TScreen
 004A3634    mov         edx,dword ptr [eax+88];TScreen.FMenuFont:TFont
 004A363A    mov         eax,dword ptr [ebp-18]
 004A363D    call        TCanvas.SetFont
 004A3642    mov         eax,dword ptr [ebp-28]
 004A3645    mov         ax,word ptr [eax+10]
 004A3649    push        eax
 004A364A    mov         eax,dword ptr [ebp-28]
 004A364D    lea         ecx,[eax+1C]
 004A3650    mov         edx,dword ptr [ebp-18]
 004A3653    mov         eax,dword ptr [ebp-14]
 004A3656    call        0049DEE0
 004A365B    xor         eax,eax
 004A365D    pop         edx
 004A365E    pop         ecx
 004A365F    pop         ecx
 004A3660    mov         dword ptr fs:[eax],edx
 004A3663    push        4A368A
 004A3668    xor         edx,edx
 004A366A    mov         eax,dword ptr [ebp-18]
 004A366D    call        TCanvas.SetHandle
 004A3672    mov         eax,dword ptr [ebp-10]
 004A3675    push        eax
 004A3676    mov         eax,dword ptr [ebp-28]
 004A3679    mov         eax,dword ptr [eax+18]
 004A367C    push        eax
 004A367D    call        gdi32.RestoreDC
 004A3682    ret
>004A3683    jmp         @HandleFinally
>004A3688    jmp         004A3668
 004A368A    xor         eax,eax
 004A368C    pop         edx
 004A368D    pop         ecx
 004A368E    pop         ecx
 004A368F    mov         dword ptr fs:[eax],edx
 004A3692    push        4A3869
 004A3697    mov         eax,dword ptr [ebp-18]
 004A369A    call        TObject.Free
 004A369F    ret
>004A36A0    jmp         @HandleFinally
>004A36A5    jmp         004A3697
 004A36A7    mov         eax,dword ptr [ebp-8]
 004A36AA    mov         eax,dword ptr [eax+8]
 004A36AD    mov         dword ptr [ebp-2C],eax
 004A36B0    mov         eax,dword ptr [ebp-2C]
 004A36B3    cmp         dword ptr [eax],1
>004A36B6    jne         004A385E
 004A36BC    mov         eax,dword ptr [ebp-4]
 004A36BF    cmp         dword ptr [eax+248],0;TCustomForm.FMenu:TMainMenu
>004A36C6    je          004A385E
 004A36CC    mov         eax,dword ptr [ebp-2C]
 004A36CF    mov         edx,dword ptr [eax+8]
 004A36D2    mov         eax,dword ptr [ebp-4]
 004A36D5    mov         eax,dword ptr [eax+248];TCustomForm.FMenu:TMainMenu
 004A36DB    xor         ecx,ecx
 004A36DD    call        0049C384
 004A36E2    mov         dword ptr [ebp-14],eax
 004A36E5    cmp         dword ptr [ebp-14],0
>004A36E9    je          004A385E
 004A36EF    mov         eax,dword ptr [ebp-4]
 004A36F2    call        TWinControl.GetHandle
 004A36F7    push        eax
 004A36F8    call        user32.GetWindowDC
 004A36FD    mov         dword ptr [ebp-1C],eax
 004A3700    xor         eax,eax
 004A3702    push        ebp
 004A3703    push        4A37E4
 004A3708    push        dword ptr fs:[eax]
 004A370B    mov         dword ptr fs:[eax],esp
 004A370E    mov         dl,1
 004A3710    mov         eax,[0047D3C4];TControlCanvas
 004A3715    call        TCanvas.Create;TControlCanvas.Create
 004A371A    mov         dword ptr [ebp-18],eax
 004A371D    xor         eax,eax
 004A371F    push        ebp
 004A3720    push        4A37BD
 004A3725    push        dword ptr fs:[eax]
 004A3728    mov         dword ptr fs:[eax],esp
 004A372B    mov         eax,dword ptr [ebp-1C]
 004A372E    push        eax
 004A372F    call        gdi32.SaveDC
 004A3734    mov         dword ptr [ebp-10],eax
 004A3737    xor         eax,eax
 004A3739    push        ebp
 004A373A    push        4A37A0
 004A373F    push        dword ptr fs:[eax]
 004A3742    mov         dword ptr fs:[eax],esp
 004A3745    mov         edx,dword ptr [ebp-1C]
 004A3748    mov         eax,dword ptr [ebp-18]
 004A374B    call        TCanvas.SetHandle
 004A3750    mov         eax,[00571E40];0x0 Screen:TScreen
 004A3755    mov         edx,dword ptr [eax+88];TScreen.FMenuFont:TFont
 004A375B    mov         eax,dword ptr [ebp-18]
 004A375E    call        TCanvas.SetFont
 004A3763    mov         eax,dword ptr [ebp-2C]
 004A3766    add         eax,10
 004A3769    push        eax
 004A376A    mov         eax,dword ptr [ebp-2C]
 004A376D    lea         ecx,[eax+0C]
 004A3770    mov         edx,dword ptr [ebp-18]
 004A3773    mov         eax,dword ptr [ebp-14]
 004A3776    mov         ebx,dword ptr [eax]
 004A3778    call        dword ptr [ebx+38]
 004A377B    xor         eax,eax
 004A377D    pop         edx
 004A377E    pop         ecx
 004A377F    pop         ecx
 004A3780    mov         dword ptr fs:[eax],edx
 004A3783    push        4A37A7
 004A3788    xor         edx,edx
 004A378A    mov         eax,dword ptr [ebp-18]
 004A378D    call        TCanvas.SetHandle
 004A3792    mov         eax,dword ptr [ebp-10]
 004A3795    push        eax
 004A3796    mov         eax,dword ptr [ebp-1C]
 004A3799    push        eax
 004A379A    call        gdi32.RestoreDC
 004A379F    ret
>004A37A0    jmp         @HandleFinally
>004A37A5    jmp         004A3788
 004A37A7    xor         eax,eax
 004A37A9    pop         edx
 004A37AA    pop         ecx
 004A37AB    pop         ecx
 004A37AC    mov         dword ptr fs:[eax],edx
 004A37AF    push        4A37C4
 004A37B4    mov         eax,dword ptr [ebp-18]
 004A37B7    call        TObject.Free
 004A37BC    ret
>004A37BD    jmp         @HandleFinally
>004A37C2    jmp         004A37B4
 004A37C4    xor         eax,eax
 004A37C6    pop         edx
 004A37C7    pop         ecx
 004A37C8    pop         ecx
 004A37C9    mov         dword ptr fs:[eax],edx
 004A37CC    push        4A3869
 004A37D1    mov         eax,dword ptr [ebp-1C]
 004A37D4    push        eax
 004A37D5    mov         eax,dword ptr [ebp-4]
 004A37D8    call        TWinControl.GetHandle
 004A37DD    push        eax
 004A37DE    call        user32.ReleaseDC
 004A37E3    ret
>004A37E4    jmp         @HandleFinally
>004A37E9    jmp         004A37D1
 004A37EB    mov         eax,dword ptr [ebp-8]
 004A37EE    mov         eax,dword ptr [eax]
 004A37F0    cmp         eax,dword ptr ds:[571E48];0x0 gvar_00571E48:LongWord
>004A37F6    jne         004A385E
 004A37F8    push        0
 004A37FA    xor         ecx,ecx
 004A37FC    mov         edx,0B025
 004A3801    mov         eax,dword ptr [ebp-4]
 004A3804    call        00484FFC
 004A3809    push        0
 004A380B    xor         ecx,ecx
 004A380D    mov         edx,0B024
 004A3812    mov         eax,dword ptr [ebp-4]
 004A3815    call        00484FFC
 004A381A    push        0
 004A381C    xor         ecx,ecx
 004A381E    mov         edx,0B035
 004A3823    mov         eax,dword ptr [ebp-4]
 004A3826    call        00484FFC
 004A382B    push        0
 004A382D    xor         ecx,ecx
 004A382F    mov         edx,0B009
 004A3834    mov         eax,dword ptr [ebp-4]
 004A3837    call        00484FFC
 004A383C    push        0
 004A383E    xor         ecx,ecx
 004A3840    mov         edx,0B008
 004A3845    mov         eax,dword ptr [ebp-4]
 004A3848    call        00484FFC
 004A384D    push        0
 004A384F    xor         ecx,ecx
 004A3851    mov         edx,0B03D
 004A3856    mov         eax,dword ptr [ebp-4]
 004A3859    call        00484FFC
 004A385E    mov         edx,dword ptr [ebp-8]
 004A3861    mov         eax,dword ptr [ebp-4]
 004A3864    call        00488EC8
 004A3869    pop         esi
 004A386A    pop         ebx
 004A386B    mov         esp,ebp
 004A386D    pop         ebp
 004A386E    ret
end;*}

//004A3878
procedure Default;
begin
{*
 004A3878    push        ebp
 004A3879    mov         ebp,esp
 004A387B    mov         eax,dword ptr [ebp+8]
 004A387E    mov         eax,dword ptr [eax-8]
 004A3881    mov         eax,dword ptr [eax+8]
 004A3884    push        eax
 004A3885    mov         eax,dword ptr [ebp+8]
 004A3888    mov         eax,dword ptr [eax-8]
 004A388B    mov         eax,dword ptr [eax+4]
 004A388E    push        eax
 004A388F    mov         eax,dword ptr [ebp+8]
 004A3892    mov         eax,dword ptr [eax-8]
 004A3895    mov         eax,dword ptr [eax]
 004A3897    push        eax
 004A3898    mov         eax,dword ptr [ebp+8]
 004A389B    mov         eax,dword ptr [eax-4]
 004A389E    mov         eax,dword ptr [eax+254]
 004A38A4    push        eax
 004A38A5    mov         eax,dword ptr [ebp+8]
 004A38A8    mov         eax,dword ptr [eax-4]
 004A38AB    mov         eax,dword ptr [eax+274]
 004A38B1    push        eax
 004A38B2    call        user32.CallWindowProcA
 004A38B7    mov         edx,dword ptr [ebp+8]
 004A38BA    mov         edx,dword ptr [edx-8]
 004A38BD    mov         dword ptr [edx+0C],eax
 004A38C0    pop         ebp
 004A38C1    ret
*}
end;

//004A38C4
function MaximizedChildren:Boolean;
begin
{*
 004A38C4    push        ebp
 004A38C5    mov         ebp,esp
 004A38C7    add         esp,0FFFFFFF4
 004A38CA    mov         eax,dword ptr [ebp+8]
 004A38CD    mov         eax,dword ptr [eax-4]
 004A38D0    call        TCustomForm.GetMDIChildCount
 004A38D5    dec         eax
 004A38D6    test        eax,eax
>004A38D8    jl          004A390A
 004A38DA    inc         eax
 004A38DB    mov         dword ptr [ebp-0C],eax
 004A38DE    mov         dword ptr [ebp-8],0
 004A38E5    mov         eax,dword ptr [ebp+8]
 004A38E8    mov         eax,dword ptr [eax-4]
 004A38EB    mov         edx,dword ptr [ebp-8]
 004A38EE    call        004A3F10
 004A38F3    cmp         byte ptr [eax+22B],2
>004A38FA    jne         004A3902
 004A38FC    mov         byte ptr [ebp-1],1
>004A3900    jmp         004A390E
 004A3902    inc         dword ptr [ebp-8]
 004A3905    dec         dword ptr [ebp-0C]
>004A3908    jne         004A38E5
 004A390A    mov         byte ptr [ebp-1],0
 004A390E    mov         al,byte ptr [ebp-1]
 004A3911    mov         esp,ebp
 004A3913    pop         ebp
 004A3914    ret
*}
end;

//004A3918
procedure TCustomForm.ClientWndProc(var Message:TMessage);
begin
{*
 004A3918    push        ebp
 004A3919    mov         ebp,esp
 004A391B    add         esp,0FFFFFF8C
 004A391E    mov         dword ptr [ebp-8],edx
 004A3921    mov         dword ptr [ebp-4],eax
 004A3924    mov         eax,dword ptr [ebp-8]
 004A3927    mov         eax,dword ptr [eax]
 004A3929    sub         eax,0F
>004A392C    je          004A3A36
 004A3932    sub         eax,5
>004A3935    je          004A396C
 004A3937    sub         eax,2B
>004A393A    je          004A39EF
 004A3940    sub         eax,45
>004A3943    jne         004A3AED
 004A3949    push        ebp
 004A394A    call        Default
 004A394F    pop         ecx
 004A3950    mov         eax,dword ptr [ebp-8]
 004A3953    cmp         dword ptr [eax+0C],1
>004A3957    jne         004A3AF4
 004A395D    mov         eax,dword ptr [ebp-8]
 004A3960    mov         dword ptr [eax+0C],0FFFFFFFF
>004A3967    jmp         004A3AF4
 004A396C    mov         eax,dword ptr [ebp-4]
 004A396F    mov         eax,dword ptr [eax+170]
 004A3975    call        TBrush.GetHandle
 004A397A    push        eax
 004A397B    lea         edx,[ebp-6C]
 004A397E    mov         eax,dword ptr [ebp-4]
 004A3981    mov         ecx,dword ptr [eax]
 004A3983    call        dword ptr [ecx+44]
 004A3986    lea         eax,[ebp-6C]
 004A3989    push        eax
 004A398A    mov         eax,dword ptr [ebp-8]
 004A398D    mov         eax,dword ptr [eax+4]
 004A3990    push        eax
 004A3991    call        user32.FillRect
 004A3996    mov         eax,dword ptr [ebp-4]
 004A3999    cmp         byte ptr [eax+22F],2
>004A39A0    jne         004A39E0
 004A39A2    mov         eax,dword ptr [ebp-4]
 004A39A5    cmp         dword ptr [eax+254],0
>004A39AC    je          004A39E0
 004A39AE    lea         eax,[ebp-5C]
 004A39B1    push        eax
 004A39B2    mov         eax,dword ptr [ebp-4]
 004A39B5    mov         eax,dword ptr [eax+254]
 004A39BB    push        eax
 004A39BC    call        user32.GetClientRect
 004A39C1    mov         eax,dword ptr [ebp-4]
 004A39C4    mov         eax,dword ptr [eax+170]
 004A39CA    call        TBrush.GetHandle
 004A39CF    push        eax
 004A39D0    lea         eax,[ebp-5C]
 004A39D3    push        eax
 004A39D4    mov         eax,dword ptr [ebp-8]
 004A39D7    mov         eax,dword ptr [eax+4]
 004A39DA    push        eax
 004A39DB    call        user32.FillRect
 004A39E0    mov         eax,dword ptr [ebp-8]
 004A39E3    mov         dword ptr [eax+0C],1
>004A39EA    jmp         004A3AF4
 004A39EF    push        ebp
 004A39F0    call        Default
 004A39F5    pop         ecx
 004A39F6    mov         eax,dword ptr [ebp-4]
 004A39F9    cmp         byte ptr [eax+22F],2
>004A3A00    jne         004A3AF4
 004A3A06    mov         eax,dword ptr [ebp-4]
 004A3A09    call        TCustomForm.GetMDIChildCount
 004A3A0E    test        eax,eax
>004A3A10    je          004A3A21
 004A3A12    push        ebp
 004A3A13    call        MaximizedChildren
 004A3A18    pop         ecx
 004A3A19    test        al,al
>004A3A1B    je          004A3A21
 004A3A1D    xor         edx,edx
>004A3A1F    jmp         004A3A23
 004A3A21    mov         dl,1
 004A3A23    mov         eax,dword ptr [ebp-4]
 004A3A26    mov         eax,dword ptr [eax+254]
 004A3A2C    call        ShowMDIClientEdge
>004A3A31    jmp         004A3AF4
 004A3A36    mov         eax,dword ptr [ebp-8]
 004A3A39    mov         eax,dword ptr [eax+4]
 004A3A3C    mov         dword ptr [ebp-0C],eax
 004A3A3F    cmp         dword ptr [ebp-0C],0
>004A3A43    jne         004A3A5E
 004A3A45    lea         eax,[ebp-4C]
 004A3A48    push        eax
 004A3A49    mov         eax,dword ptr [ebp-4]
 004A3A4C    mov         eax,dword ptr [eax+254]
 004A3A52    push        eax
 004A3A53    call        user32.BeginPaint
 004A3A58    mov         edx,dword ptr [ebp-8]
 004A3A5B    mov         dword ptr [edx+4],eax
 004A3A5E    xor         eax,eax
 004A3A60    push        ebp
 004A3A61    push        4A3AE6
 004A3A66    push        dword ptr fs:[eax]
 004A3A69    mov         dword ptr fs:[eax],esp
 004A3A6C    cmp         dword ptr [ebp-0C],0
>004A3A70    jne         004A3AB4
 004A3A72    lea         eax,[ebp-5C]
 004A3A75    push        eax
 004A3A76    mov         eax,dword ptr [ebp-4]
 004A3A79    mov         eax,dword ptr [eax+254]
 004A3A7F    push        eax
 004A3A80    call        user32.GetWindowRect
 004A3A85    lea         ecx,[ebp-74]
 004A3A88    lea         edx,[ebp-5C]
 004A3A8B    mov         eax,dword ptr [ebp-4]
 004A3A8E    call        TControl.ScreenToClient
 004A3A93    mov         eax,dword ptr [ebp-74]
 004A3A96    mov         dword ptr [ebp-5C],eax
 004A3A99    mov         eax,dword ptr [ebp-70]
 004A3A9C    mov         dword ptr [ebp-58],eax
 004A3A9F    mov         ecx,dword ptr [ebp-58]
 004A3AA2    neg         ecx
 004A3AA4    mov         edx,dword ptr [ebp-5C]
 004A3AA7    neg         edx
 004A3AA9    mov         eax,dword ptr [ebp-8]
 004A3AAC    mov         eax,dword ptr [eax+4]
 004A3AAF    call        MoveWindowOrg
 004A3AB4    mov         edx,dword ptr [ebp-8]
 004A3AB7    mov         eax,dword ptr [ebp-4]
 004A3ABA    call        TWinControl.PaintHandler
 004A3ABF    xor         eax,eax
 004A3AC1    pop         edx
 004A3AC2    pop         ecx
 004A3AC3    pop         ecx
 004A3AC4    mov         dword ptr fs:[eax],edx
 004A3AC7    push        4A3AF4
 004A3ACC    cmp         dword ptr [ebp-0C],0
>004A3AD0    jne         004A3AE5
 004A3AD2    lea         eax,[ebp-4C]
 004A3AD5    push        eax
 004A3AD6    mov         eax,dword ptr [ebp-4]
 004A3AD9    mov         eax,dword ptr [eax+254]
 004A3ADF    push        eax
 004A3AE0    call        user32.EndPaint
 004A3AE5    ret
>004A3AE6    jmp         @HandleFinally
>004A3AEB    jmp         004A3ACC
 004A3AED    push        ebp
 004A3AEE    call        Default
 004A3AF3    pop         ecx
 004A3AF4    mov         esp,ebp
 004A3AF6    pop         ebp
 004A3AF7    ret
*}
end;

//004A3AF8
procedure TCustomForm.AlignControls(AControl:TControl; var Rect:TRect);
begin
{*
 004A3AF8    push        ebp
 004A3AF9    mov         ebp,esp
 004A3AFB    add         esp,0FFFFFFE4
 004A3AFE    mov         dword ptr [ebp-0C],ecx
 004A3B01    mov         dword ptr [ebp-8],edx
 004A3B04    mov         dword ptr [ebp-4],eax
 004A3B07    mov         ecx,dword ptr [ebp-0C]
 004A3B0A    mov         edx,dword ptr [ebp-8]
 004A3B0D    mov         eax,dword ptr [ebp-4]
 004A3B10    call        TScrollingWinControl.AlignControls
 004A3B15    mov         eax,dword ptr [ebp-4]
 004A3B18    cmp         dword ptr [eax+254],0;TCustomForm.FClientHandle:HWND
>004A3B1F    je          004A3B90
 004A3B21    push        14
 004A3B23    mov         eax,dword ptr [ebp-0C]
 004A3B26    mov         eax,dword ptr [eax+0C]
 004A3B29    mov         edx,dword ptr [ebp-0C]
 004A3B2C    sub         eax,dword ptr [edx+4]
 004A3B2F    push        eax
 004A3B30    mov         eax,dword ptr [ebp-0C]
 004A3B33    mov         eax,dword ptr [eax+8];TRect.Right:Longint
 004A3B36    mov         edx,dword ptr [ebp-0C]
 004A3B39    sub         eax,dword ptr [edx]
 004A3B3B    push        eax
 004A3B3C    mov         eax,dword ptr [ebp-0C]
 004A3B3F    mov         eax,dword ptr [eax+4];TRect.Top:Longint
 004A3B42    push        eax
 004A3B43    mov         eax,dword ptr [ebp-0C]
 004A3B46    mov         eax,dword ptr [eax]
 004A3B48    push        eax
 004A3B49    push        1
 004A3B4B    mov         eax,dword ptr [ebp-4]
 004A3B4E    mov         eax,dword ptr [eax+254];TCustomForm.FClientHandle:HWND
 004A3B54    push        eax
 004A3B55    call        user32.SetWindowPos
 004A3B5A    mov         eax,dword ptr [ebp-4]
 004A3B5D    cmp         byte ptr [eax+22F],2;TCustomForm.FFormStyle:TFormStyle
>004A3B64    jne         004A3B90
 004A3B66    lea         eax,[ebp-1C]
 004A3B69    push        eax
 004A3B6A    mov         eax,dword ptr [ebp-4]
 004A3B6D    mov         eax,dword ptr [eax+254];TCustomForm.FClientHandle:HWND
 004A3B73    push        eax
 004A3B74    call        user32.GetClientRect
 004A3B79    test        eax,eax
>004A3B7B    je          004A3B90
 004A3B7D    push        0FF
 004A3B7F    push        0
 004A3B81    mov         eax,dword ptr [ebp-4]
 004A3B84    mov         eax,dword ptr [eax+254];TCustomForm.FClientHandle:HWND
 004A3B8A    push        eax
 004A3B8B    call        user32.InvalidateRect
 004A3B90    mov         esp,ebp
 004A3B92    pop         ebp
 004A3B93    ret
*}
end;

//004A3B94
procedure TCustomForm.CMBiDiModeChanged(Message:TMessage);
begin
{*
 004A3B94    push        ebp
 004A3B95    mov         ebp,esp
 004A3B97    add         esp,0FFFFFFEC
 004A3B9A    mov         dword ptr [ebp-8],edx
 004A3B9D    mov         dword ptr [ebp-4],eax
 004A3BA0    mov         edx,dword ptr [ebp-8]
 004A3BA3    mov         eax,dword ptr [ebp-4]
 004A3BA6    call        TScrollingWinControl.CMBiDiModeChanged
 004A3BAB    mov         eax,dword ptr [ebp-4]
 004A3BAE    call        TWinControl.HandleAllocated
 004A3BB3    test        al,al
>004A3BB5    je          004A3BF8
 004A3BB7    push        0EC
 004A3BB9    mov         eax,dword ptr [ebp-4]
 004A3BBC    call        TWinControl.GetHandle
 004A3BC1    push        eax
 004A3BC2    call        user32.GetWindowLongA
 004A3BC7    and         eax,0FFFFEFFF
 004A3BCC    and         eax,0FFFFDFFF
 004A3BD1    and         eax,0FFFFBFFF
 004A3BD6    mov         dword ptr [ebp-0C],eax
 004A3BD9    lea         edx,[ebp-0C]
 004A3BDC    mov         eax,dword ptr [ebp-4]
 004A3BDF    call        00487FB4
 004A3BE4    mov         eax,dword ptr [ebp-0C]
 004A3BE7    push        eax
 004A3BE8    push        0EC
 004A3BEA    mov         eax,dword ptr [ebp-4]
 004A3BED    call        TWinControl.GetHandle
 004A3BF2    push        eax
 004A3BF3    call        user32.SetWindowLongA
 004A3BF8    mov         eax,dword ptr [ebp-4]
 004A3BFB    call        0042AB10
 004A3C00    dec         eax
 004A3C01    test        eax,eax
>004A3C03    jl          004A3C42
 004A3C05    inc         eax
 004A3C06    mov         dword ptr [ebp-14],eax
 004A3C09    mov         dword ptr [ebp-10],0
 004A3C10    mov         edx,dword ptr [ebp-10]
 004A3C13    mov         eax,dword ptr [ebp-4]
 004A3C16    call        0042AAD0
 004A3C1B    mov         edx,dword ptr ds:[4970B4];TMenu
 004A3C21    call        @IsClass
 004A3C26    test        al,al
>004A3C28    je          004A3C3A
 004A3C2A    mov         edx,dword ptr [ebp-10]
 004A3C2D    mov         eax,dword ptr [ebp-4]
 004A3C30    call        0042AAD0
 004A3C35    call        0049D260
 004A3C3A    inc         dword ptr [ebp-10]
 004A3C3D    dec         dword ptr [ebp-14]
>004A3C40    jne         004A3C10
 004A3C42    mov         esp,ebp
 004A3C44    pop         ebp
 004A3C45    ret
*}
end;

//004A3C48
{*procedure TCustomForm.CMParentBiDiModeChanged(?:?);
begin
 004A3C48    push        ebp
 004A3C49    mov         ebp,esp
 004A3C4B    add         esp,0FFFFFFF8
 004A3C4E    mov         dword ptr [ebp-8],edx
 004A3C51    mov         dword ptr [ebp-4],eax
 004A3C54    mov         eax,dword ptr [ebp-4]
 004A3C57    cmp         byte ptr [eax+244],0;TCustomForm.FInCMParentBiDiModeChanged:Boolean
>004A3C5E    jne         004A3CD6
 004A3C60    mov         eax,dword ptr [ebp-4]
 004A3C63    mov         byte ptr [eax+244],1;TCustomForm.FInCMParentBiDiModeChanged:Boolean
 004A3C6A    xor         eax,eax
 004A3C6C    push        ebp
 004A3C6D    push        4A3CCF
 004A3C72    push        dword ptr fs:[eax]
 004A3C75    mov         dword ptr fs:[eax],esp
 004A3C78    mov         eax,dword ptr [ebp-4]
 004A3C7B    cmp         byte ptr [eax+60],0;TCustomForm.FParentBiDiMode:Boolean
>004A3C7F    je          004A3CB7
 004A3C81    mov         eax,dword ptr [ebp-4]
 004A3C84    cmp         dword ptr [eax+30],0;TCustomForm.FParent:TWinControl
>004A3C88    jne         004A3C9C
 004A3C8A    mov         eax,[00571E3C];0x0 Application:TApplication
 004A3C8F    mov         dl,byte ptr [eax+34];TApplication.FBiDiMode:TBiDiMode
 004A3C92    mov         eax,dword ptr [ebp-4]
 004A3C95    mov         ecx,dword ptr [eax]
 004A3C97    call        dword ptr [ecx+70];TPanel.SetBiDiMode
>004A3C9A    jmp         004A3CAD
 004A3C9C    mov         eax,dword ptr [ebp-4]
 004A3C9F    mov         eax,dword ptr [eax+30];TCustomForm.FParent:TWinControl
 004A3CA2    mov         dl,byte ptr [eax+5F];TWinControl.FBiDiMode:TBiDiMode
 004A3CA5    mov         eax,dword ptr [ebp-4]
 004A3CA8    mov         ecx,dword ptr [eax]
 004A3CAA    call        dword ptr [ecx+70];TPanel.SetBiDiMode
 004A3CAD    mov         dl,1
 004A3CAF    mov         eax,dword ptr [ebp-4]
 004A3CB2    mov         ecx,dword ptr [eax]
 004A3CB4    call        dword ptr [ecx+6C];TForm.SetParentBiDiMode
 004A3CB7    xor         eax,eax
 004A3CB9    pop         edx
 004A3CBA    pop         ecx
 004A3CBB    pop         ecx
 004A3CBC    mov         dword ptr fs:[eax],edx
 004A3CBF    push        4A3CD6
 004A3CC4    mov         eax,dword ptr [ebp-4]
 004A3CC7    mov         byte ptr [eax+244],0;TCustomForm.FInCMParentBiDiModeChanged:Boolean
 004A3CCE    ret
>004A3CCF    jmp         @HandleFinally
>004A3CD4    jmp         004A3CC4
 004A3CD6    pop         ecx
 004A3CD7    pop         ecx
 004A3CD8    pop         ebp
 004A3CD9    ret
end;*}

//004A3CDC
procedure TForm.SetBorderIcons(Value:TBorderIcons);
begin
{*
 004A3CDC    push        ebp
 004A3CDD    mov         ebp,esp
 004A3CDF    add         esp,0FFFFFFF8
 004A3CE2    mov         byte ptr [ebp-5],dl
 004A3CE5    mov         dword ptr [ebp-4],eax
 004A3CE8    mov         al,byte ptr [ebp-5]
 004A3CEB    mov         edx,dword ptr [ebp-4]
 004A3CEE    cmp         al,byte ptr [edx+228];TForm.FBorderIcons:TBorderIcons
>004A3CF4    je          004A3D13
 004A3CF6    mov         al,byte ptr [ebp-5]
 004A3CF9    mov         edx,dword ptr [ebp-4]
 004A3CFC    mov         byte ptr [edx+228],al;TForm.FBorderIcons:TBorderIcons
 004A3D02    mov         eax,dword ptr [ebp-4]
 004A3D05    test        byte ptr [eax+1C],10;TForm.FComponentState:TComponentState
>004A3D09    jne         004A3D13
 004A3D0B    mov         eax,dword ptr [ebp-4]
 004A3D0E    call        TWinControl.RecreateWnd
 004A3D13    pop         ecx
 004A3D14    pop         ecx
 004A3D15    pop         ebp
 004A3D16    ret
*}
end;

//004A3D18
procedure TForm.SetBorderStyle(Value:TFormBorderStyle);
begin
{*
 004A3D18    push        ebp
 004A3D19    mov         ebp,esp
 004A3D1B    add         esp,0FFFFFFF8
 004A3D1E    mov         byte ptr [ebp-5],dl
 004A3D21    mov         dword ptr [ebp-4],eax
 004A3D24    mov         eax,dword ptr [ebp-4]
 004A3D27    mov         al,byte ptr [eax+229];TForm.FBorderStyle:TFormBorderStyle
 004A3D2D    cmp         al,byte ptr [ebp-5]
>004A3D30    je          004A3D6E
 004A3D32    mov         al,byte ptr [ebp-5]
 004A3D35    mov         edx,dword ptr [ebp-4]
 004A3D38    mov         byte ptr [edx+229],al;TForm.FBorderStyle:TFormBorderStyle
 004A3D3E    mov         eax,dword ptr [ebp-4]
 004A3D41    mov         al,byte ptr [eax+229];TForm.FBorderStyle:TFormBorderStyle
 004A3D47    sub         al,2
>004A3D49    je          004A3D53
 004A3D4B    sub         al,3
>004A3D4D    je          004A3D53
 004A3D4F    xor         edx,edx
>004A3D51    jmp         004A3D55
 004A3D53    mov         dl,1
 004A3D55    mov         eax,dword ptr [ebp-4]
 004A3D58    call        TForm.SetAutoScroll
 004A3D5D    mov         eax,dword ptr [ebp-4]
 004A3D60    test        byte ptr [eax+1C],10;TForm.FComponentState:TComponentState
>004A3D64    jne         004A3D6E
 004A3D66    mov         eax,dword ptr [ebp-4]
 004A3D69    call        TWinControl.RecreateWnd
 004A3D6E    pop         ecx
 004A3D6F    pop         ecx
 004A3D70    pop         ebp
 004A3D71    ret
*}
end;

//004A3D74
{*procedure TCustomForm.sub_00482C8C(?:?; ?:?);
begin
 004A3D74    push        ebp
 004A3D75    mov         ebp,esp
 004A3D77    add         esp,0FFFFFFE0
 004A3D7A    push        esi
 004A3D7B    push        edi
 004A3D7C    mov         esi,ecx
 004A3D7E    lea         edi,[ebp-20]
 004A3D81    movs        dword ptr [edi],dword ptr [esi]
 004A3D82    movs        dword ptr [edi],dword ptr [esi]
 004A3D83    movs        dword ptr [edi],dword ptr [esi]
 004A3D84    movs        dword ptr [edi],dword ptr [esi]
 004A3D85    mov         dword ptr [ebp-8],edx
 004A3D88    mov         dword ptr [ebp-4],eax
 004A3D8B    mov         eax,dword ptr [ebp-4]
 004A3D8E    mov         eax,dword ptr [eax+30];TCustomForm.FParent:TWinControl
 004A3D91    mov         dword ptr [ebp-10],eax
 004A3D94    mov         eax,dword ptr [ebp-4]
 004A3D97    mov         eax,dword ptr [eax+0A0];TCustomForm.FHostDockSite:TWinControl
 004A3D9D    mov         dword ptr [ebp-0C],eax
 004A3DA0    lea         ecx,[ebp-20]
 004A3DA3    mov         edx,dword ptr [ebp-8]
 004A3DA6    mov         eax,dword ptr [ebp-4]
 004A3DA9    call        TControl.sub_00482C8C
 004A3DAE    mov         eax,dword ptr [ebp-4]
 004A3DB1    cmp         dword ptr [eax+30],0;TCustomForm.FParent:TWinControl
>004A3DB5    je          004A3DD8
 004A3DB7    mov         eax,dword ptr [ebp-4]
 004A3DBA    mov         eax,dword ptr [eax+30];TCustomForm.FParent:TWinControl
 004A3DBD    cmp         eax,dword ptr [ebp-10]
>004A3DC0    jne         004A3DD8
 004A3DC2    mov         eax,dword ptr [ebp-0C]
 004A3DC5    mov         edx,dword ptr [ebp-4]
 004A3DC8    cmp         eax,dword ptr [edx+0A0];TCustomForm.FHostDockSite:TWinControl
>004A3DCE    je          004A3DD8
 004A3DD0    mov         eax,dword ptr [ebp-4]
 004A3DD3    call        TWinControl.RecreateWnd
 004A3DD8    pop         edi
 004A3DD9    pop         esi
 004A3DDA    mov         esp,ebp
 004A3DDC    pop         ebp
 004A3DDD    ret
end;*}

//004A3DE0
{*procedure TCustomForm.sub_00482DC8(?:?; ?:?);
begin
 004A3DE0    push        ebp
 004A3DE1    mov         ebp,esp
 004A3DE3    add         esp,0FFFFFFF4
 004A3DE6    mov         dword ptr [ebp-0C],ecx
 004A3DE9    mov         dword ptr [ebp-8],edx
 004A3DEC    mov         dword ptr [ebp-4],eax
 004A3DEF    mov         eax,dword ptr [ebp-8]
 004A3DF2    mov         edx,dword ptr [ebp-4]
 004A3DF5    cmp         eax,dword ptr [edx+0A0];TCustomForm.FHostDockSite:TWinControl
>004A3DFB    je          004A3E45
 004A3DFD    cmp         dword ptr [ebp-8],0
>004A3E01    je          004A3E0F
 004A3E03    mov         eax,dword ptr [ebp-4]
 004A3E06    mov         edx,dword ptr [eax]
 004A3E08    call        dword ptr [edx+54];TCustomForm.sub_004A30A0
 004A3E0B    test        al,al
>004A3E0D    je          004A3E45
 004A3E0F    cmp         dword ptr [ebp-8],0
>004A3E13    jne         004A3E29
 004A3E15    mov         eax,dword ptr [ebp-4]
 004A3E18    mov         al,byte ptr [eax+280];TCustomForm.FSavedBorderStyle:TFormBorderStyle
 004A3E1E    mov         edx,dword ptr [ebp-4]
 004A3E21    mov         byte ptr [edx+229],al;TCustomForm.FBorderStyle:TFormBorderStyle
>004A3E27    jmp         004A3E45
 004A3E29    mov         eax,dword ptr [ebp-4]
 004A3E2C    mov         al,byte ptr [eax+229];TCustomForm.FBorderStyle:TFormBorderStyle
 004A3E32    mov         edx,dword ptr [ebp-4]
 004A3E35    mov         byte ptr [edx+280],al;TCustomForm.FSavedBorderStyle:TFormBorderStyle
 004A3E3B    mov         eax,dword ptr [ebp-4]
 004A3E3E    mov         byte ptr [eax+229],0;TCustomForm.FBorderStyle:TFormBorderStyle
 004A3E45    mov         ecx,dword ptr [ebp-0C]
 004A3E48    mov         edx,dword ptr [ebp-8]
 004A3E4B    mov         eax,dword ptr [ebp-4]
 004A3E4E    call        TControl.sub_00482DC8
 004A3E53    mov         esp,ebp
 004A3E55    pop         ebp
 004A3E56    ret
end;*}

//004A3E58
{*function sub_004A3E58(?:TWinControl):?;
begin
 004A3E58    push        ebp
 004A3E59    mov         ebp,esp
 004A3E5B    add         esp,0FFFFFFF8
 004A3E5E    mov         dword ptr [ebp-4],eax
 004A3E61    xor         eax,eax
 004A3E63    mov         dword ptr [ebp-8],eax
 004A3E66    mov         eax,dword ptr [ebp-4]
 004A3E69    cmp         byte ptr [eax+22F],2;TCustomForm.FFormStyle:TFormStyle
>004A3E70    jne         004A3E9E
 004A3E72    mov         eax,dword ptr [ebp-4]
 004A3E75    cmp         dword ptr [eax+254],0;TCustomForm.FClientHandle:HWND
>004A3E7C    je          004A3E9E
 004A3E7E    push        0
 004A3E80    push        0
 004A3E82    push        229
 004A3E87    mov         eax,dword ptr [ebp-4]
 004A3E8A    mov         eax,dword ptr [eax+254];TCustomForm.FClientHandle:HWND
 004A3E90    push        eax
 004A3E91    call        user32.SendMessageA
 004A3E96    call        0047F79C
 004A3E9B    mov         dword ptr [ebp-8],eax
 004A3E9E    mov         eax,dword ptr [ebp-8]
 004A3EA1    pop         ecx
 004A3EA2    pop         ecx
 004A3EA3    pop         ebp
 004A3EA4    ret
end;*}

//004A3EA8
function TCustomForm.GetMDIChildCount:Integer;
begin
{*
 004A3EA8    push        ebp
 004A3EA9    mov         ebp,esp
 004A3EAB    add         esp,0FFFFFFF0
 004A3EAE    mov         dword ptr [ebp-4],eax
 004A3EB1    xor         eax,eax
 004A3EB3    mov         dword ptr [ebp-8],eax
 004A3EB6    mov         eax,dword ptr [ebp-4]
 004A3EB9    cmp         byte ptr [eax+22F],2
>004A3EC0    jne         004A3F09
 004A3EC2    mov         eax,dword ptr [ebp-4]
 004A3EC5    cmp         dword ptr [eax+254],0
>004A3ECC    je          004A3F09
 004A3ECE    mov         eax,[00571E40];Screen:TScreen
 004A3ED3    call        004A89B4
 004A3ED8    dec         eax
 004A3ED9    test        eax,eax
>004A3EDB    jl          004A3F09
 004A3EDD    inc         eax
 004A3EDE    mov         dword ptr [ebp-10],eax
 004A3EE1    mov         dword ptr [ebp-0C],0
 004A3EE8    mov         edx,dword ptr [ebp-0C]
 004A3EEB    mov         eax,[00571E40];Screen:TScreen
 004A3EF0    call        004A8990
 004A3EF5    cmp         byte ptr [eax+22F],1
>004A3EFC    jne         004A3F01
 004A3EFE    inc         dword ptr [ebp-8]
 004A3F01    inc         dword ptr [ebp-0C]
 004A3F04    dec         dword ptr [ebp-10]
>004A3F07    jne         004A3EE8
 004A3F09    mov         eax,dword ptr [ebp-8]
 004A3F0C    mov         esp,ebp
 004A3F0E    pop         ebp
 004A3F0F    ret
*}
end;

//004A3F10
{*function sub_004A3F10(?:TCustomForm; ?:?):?;
begin
 004A3F10    push        ebp
 004A3F11    mov         ebp,esp
 004A3F13    add         esp,0FFFFFFEC
 004A3F16    mov         dword ptr [ebp-8],edx
 004A3F19    mov         dword ptr [ebp-4],eax
 004A3F1C    mov         eax,dword ptr [ebp-4]
 004A3F1F    cmp         byte ptr [eax+22F],2
>004A3F26    jne         004A3F7B
 004A3F28    mov         eax,dword ptr [ebp-4]
 004A3F2B    cmp         dword ptr [eax+254],0
>004A3F32    je          004A3F7B
 004A3F34    mov         eax,[00571E40];0x0 Screen:TScreen
 004A3F39    call        004A89B4
 004A3F3E    dec         eax
 004A3F3F    test        eax,eax
>004A3F41    jl          004A3F7B
 004A3F43    inc         eax
 004A3F44    mov         dword ptr [ebp-14],eax
 004A3F47    mov         dword ptr [ebp-10],0
 004A3F4E    mov         edx,dword ptr [ebp-10]
 004A3F51    mov         eax,[00571E40];0x0 Screen:TScreen
 004A3F56    call        004A8990
 004A3F5B    mov         dword ptr [ebp-0C],eax
 004A3F5E    mov         eax,dword ptr [ebp-0C]
 004A3F61    cmp         byte ptr [eax+22F],1
>004A3F68    jne         004A3F73
 004A3F6A    dec         dword ptr [ebp-8]
 004A3F6D    cmp         dword ptr [ebp-8],0
>004A3F71    jl          004A3F80
 004A3F73    inc         dword ptr [ebp-10]
 004A3F76    dec         dword ptr [ebp-14]
>004A3F79    jne         004A3F4E
 004A3F7B    xor         eax,eax
 004A3F7D    mov         dword ptr [ebp-0C],eax
 004A3F80    mov         eax,dword ptr [ebp-0C]
 004A3F83    mov         esp,ebp
 004A3F85    pop         ebp
 004A3F86    ret
end;*}

//004A3F88
{*function sub_004A3F88(?:?; ?:?):?;
begin
 004A3F88    push        ebp
 004A3F89    mov         ebp,esp
 004A3F8B    add         esp,0FFFFFFF4
 004A3F8E    mov         eax,dword ptr [ebp+14]
 004A3F91    mov         dword ptr [ebp-8],eax
 004A3F94    mov         dl,1
 004A3F96    mov         eax,[0049FEE8];TMonitor
 004A3F9B    call        TObject.Create;TMonitor.Create
 004A3FA0    mov         dword ptr [ebp-0C],eax
 004A3FA3    mov         eax,dword ptr [ebp+8]
 004A3FA6    mov         edx,dword ptr [ebp-0C]
 004A3FA9    mov         dword ptr [edx+4],eax;TMonitor.FHandle:HMONITOR
 004A3FAC    mov         eax,dword ptr [ebp-8]
 004A3FAF    mov         eax,dword ptr [eax+8]
 004A3FB2    mov         edx,dword ptr [ebp-0C]
 004A3FB5    mov         dword ptr [edx+8],eax;TMonitor.FMonitorNum:Integer
 004A3FB8    mov         edx,dword ptr [ebp-0C]
 004A3FBB    mov         eax,dword ptr [ebp-8]
 004A3FBE    call        TList.Add
 004A3FC3    mov         byte ptr [ebp-1],1
 004A3FC7    mov         al,byte ptr [ebp-1]
 004A3FCA    mov         esp,ebp
 004A3FCC    pop         ebp
 004A3FCD    ret         10
end;*}

//004A3FD0
{*function sub_004A3FD0(?:TCustomForm):?;
begin
 004A3FD0    push        ebp
 004A3FD1    mov         ebp,esp
 004A3FD3    add         esp,0FFFFFFEC
 004A3FD6    mov         dword ptr [ebp-4],eax
 004A3FD9    xor         eax,eax
 004A3FDB    mov         dword ptr [ebp-8],eax
 004A3FDE    push        2
 004A3FE0    mov         eax,dword ptr [ebp-4]
 004A3FE3    call        TWinControl.GetHandle
 004A3FE8    push        eax
 004A3FE9    mov         eax,[0056E28C];^gvar_00571B30
 004A3FEE    mov         eax,dword ptr [eax]
 004A3FF0    call        eax
 004A3FF2    mov         dword ptr [ebp-0C],eax
 004A3FF5    mov         eax,[00571E40];0x0 Screen:TScreen
 004A3FFA    call        004A8958
 004A3FFF    dec         eax
 004A4000    test        eax,eax
>004A4002    jl          004A4041
 004A4004    inc         eax
 004A4005    mov         dword ptr [ebp-14],eax
 004A4008    mov         dword ptr [ebp-10],0
 004A400F    mov         edx,dword ptr [ebp-10]
 004A4012    mov         eax,[00571E40];0x0 Screen:TScreen
 004A4017    call        004A8934
 004A401C    mov         eax,dword ptr [eax+4]
 004A401F    cmp         eax,dword ptr [ebp-0C]
>004A4022    jne         004A4039
 004A4024    mov         edx,dword ptr [ebp-10]
 004A4027    mov         eax,[00571E40];0x0 Screen:TScreen
 004A402C    call        004A8934
 004A4031    mov         dword ptr [ebp-8],eax
>004A4034    jmp         004A40EA
 004A4039    inc         dword ptr [ebp-10]
 004A403C    dec         dword ptr [ebp-14]
>004A403F    jne         004A400F
 004A4041    mov         eax,[00571E40];0x0 Screen:TScreen
 004A4046    call        004A8958
 004A404B    dec         eax
 004A404C    test        eax,eax
>004A404E    jl          004A4078
 004A4050    inc         eax
 004A4051    mov         dword ptr [ebp-14],eax
 004A4054    mov         dword ptr [ebp-10],0
 004A405B    mov         eax,[00571E40];0x0 Screen:TScreen
 004A4060    mov         eax,dword ptr [eax+58];TScreen.FMonitors:TList
 004A4063    mov         edx,dword ptr [ebp-10]
 004A4066    call        TList.Get
 004A406B    call        TObject.Free
 004A4070    inc         dword ptr [ebp-10]
 004A4073    dec         dword ptr [ebp-14]
>004A4076    jne         004A405B
 004A4078    mov         eax,[00571E40];0x0 Screen:TScreen
 004A407D    mov         eax,dword ptr [eax+58];TScreen.FMonitors:TList
 004A4080    mov         edx,dword ptr [eax]
 004A4082    call        dword ptr [edx+8];TList.sub_00420074
 004A4085    mov         eax,[00571E40];0x0 Screen:TScreen
 004A408A    mov         eax,dword ptr [eax+58];TScreen.FMonitors:TList
 004A408D    push        eax
 004A408E    mov         eax,4A3F88;sub_004A3F88
 004A4093    push        eax
 004A4094    push        0
 004A4096    push        0
 004A4098    mov         eax,[0056E30C];^gvar_00571B48
 004A409D    mov         eax,dword ptr [eax]
 004A409F    call        eax
 004A40A1    mov         eax,[00571E40];0x0 Screen:TScreen
 004A40A6    call        004A8958
 004A40AB    dec         eax
 004A40AC    test        eax,eax
>004A40AE    jl          004A40EA
 004A40B0    inc         eax
 004A40B1    mov         dword ptr [ebp-14],eax
 004A40B4    mov         dword ptr [ebp-10],0
 004A40BB    mov         edx,dword ptr [ebp-10]
 004A40BE    mov         eax,[00571E40];0x0 Screen:TScreen
 004A40C3    call        004A8934
 004A40C8    mov         eax,dword ptr [eax+4]
 004A40CB    cmp         eax,dword ptr [ebp-0C]
>004A40CE    jne         004A40E2
 004A40D0    mov         edx,dword ptr [ebp-10]
 004A40D3    mov         eax,[00571E40];0x0 Screen:TScreen
 004A40D8    call        004A8934
 004A40DD    mov         dword ptr [ebp-8],eax
>004A40E0    jmp         004A40EA
 004A40E2    inc         dword ptr [ebp-10]
 004A40E5    dec         dword ptr [ebp-14]
>004A40E8    jne         004A40BB
 004A40EA    mov         eax,dword ptr [ebp-8]
 004A40ED    mov         esp,ebp
 004A40EF    pop         ebp
 004A40F0    ret
end;*}

//004A40F4
{*function sub_004A40F4(?:TCustomForm):?;
begin
 004A40F4    push        ebp
 004A40F5    mov         ebp,esp
 004A40F7    add         esp,0FFFFFFF8
 004A40FA    mov         dword ptr [ebp-4],eax
 004A40FD    mov         eax,dword ptr [ebp-4]
 004A4100    mov         eax,dword ptr [eax+238];TCustomForm.FCanvas:TControlCanvas
 004A4106    mov         dword ptr [ebp-8],eax
 004A4109    mov         eax,dword ptr [ebp-8]
 004A410C    pop         ecx
 004A410D    pop         ecx
 004A410E    pop         ebp
 004A410F    ret
end;*}

//004A4110
procedure TForm.SetIcon(Value:TIcon);
begin
{*
 004A4110    push        ebp
 004A4111    mov         ebp,esp
 004A4113    add         esp,0FFFFFFF8
 004A4116    mov         dword ptr [ebp-8],edx
 004A4119    mov         dword ptr [ebp-4],eax
 004A411C    mov         edx,dword ptr [ebp-8]
 004A411F    mov         eax,dword ptr [ebp-4]
 004A4122    mov         eax,dword ptr [eax+240];TForm.FIcon:TIcon
 004A4128    mov         ecx,dword ptr [eax]
 004A412A    call        dword ptr [ecx+8];TIcon.sub_00436608
 004A412D    pop         ecx
 004A412E    pop         ecx
 004A412F    pop         ebp
 004A4130    ret
*}
end;

//004A4134
function TForm.IsStoredActiveControl(Value:TPersistent):Boolean;
begin
{*
 004A4134    push        ebp
 004A4135    mov         ebp,esp
 004A4137    add         esp,0FFFFFFF8
 004A413A    mov         dword ptr [ebp-4],eax
 004A413D    mov         eax,dword ptr [ebp-4]
 004A4140    mov         al,byte ptr [eax+5E];TForm.FIsControl:Boolean
 004A4143    xor         al,1
 004A4145    mov         byte ptr [ebp-5],al
 004A4148    mov         al,byte ptr [ebp-5]
 004A414B    pop         ecx
 004A414C    pop         ecx
 004A414D    pop         ebp
 004A414E    ret
*}
end;

//004A4150
function TForm.IsStoredIcon(Value:TIcon):Boolean;
begin
{*
 004A4150    push        ebp
 004A4151    mov         ebp,esp
 004A4153    add         esp,0FFFFFFF8
 004A4156    mov         dword ptr [ebp-4],eax
 004A4159    mov         eax,dword ptr [ebp-4]
 004A415C    call        TForm.IsStoredActiveControl
 004A4161    test        al,al
>004A4163    je          004A4177
 004A4165    mov         eax,dword ptr [ebp-4]
 004A4168    mov         eax,dword ptr [eax+240];TForm.FIcon:TIcon
 004A416E    call        00436708
 004A4173    test        eax,eax
>004A4175    jne         004A417B
 004A4177    xor         eax,eax
>004A4179    jmp         004A417D
 004A417B    mov         al,1
 004A417D    mov         byte ptr [ebp-5],al
 004A4180    mov         al,byte ptr [ebp-5]
 004A4183    pop         ecx
 004A4184    pop         ecx
 004A4185    pop         ebp
 004A4186    ret
*}
end;

//004A4188
procedure TForm.SetFormStyle(Value:TFormStyle);
begin
{*
 004A4188    push        ebp
 004A4189    mov         ebp,esp
 004A418B    add         esp,0FFFFFFF8
 004A418E    mov         byte ptr [ebp-5],dl
 004A4191    mov         dword ptr [ebp-4],eax
 004A4194    mov         eax,dword ptr [ebp-4]
 004A4197    mov         al,byte ptr [eax+22F];TForm.FFormStyle:TFormStyle
 004A419D    cmp         al,byte ptr [ebp-5]
>004A41A0    je          004A4236
 004A41A6    cmp         byte ptr [ebp-5],1
>004A41AA    jne         004A41C2
 004A41AC    mov         eax,dword ptr [ebp-4]
 004A41AF    cmp         byte ptr [eax+230],0;TForm.FPosition:TPosition
>004A41B6    jne         004A41C2
 004A41B8    mov         dl,1
 004A41BA    mov         eax,dword ptr [ebp-4]
 004A41BD    call        TForm.SetPosition
 004A41C2    mov         eax,dword ptr [ebp-4]
 004A41C5    test        byte ptr [eax+1C],10;TForm.FComponentState:TComponentState
>004A41C9    jne         004A41D3
 004A41CB    mov         eax,dword ptr [ebp-4]
 004A41CE    call        004888E4
 004A41D3    mov         eax,dword ptr [ebp-4]
 004A41D6    mov         al,byte ptr [eax+22F];TForm.FFormStyle:TFormStyle
 004A41DC    mov         byte ptr [ebp-6],al
 004A41DF    mov         al,byte ptr [ebp-5]
 004A41E2    mov         edx,dword ptr [ebp-4]
 004A41E5    mov         byte ptr [edx+22F],al;TForm.FFormStyle:TFormStyle
 004A41EB    cmp         byte ptr [ebp-5],2
>004A41EF    je          004A41F7
 004A41F1    cmp         byte ptr [ebp-6],2
>004A41F5    jne         004A4215
 004A41F7    mov         eax,dword ptr [ebp-4]
 004A41FA    cmp         byte ptr [eax+1A5],0;TForm.FCtl3D:Boolean
>004A4201    jne         004A4215
 004A4203    mov         eax,dword ptr [ebp-4]
 004A4206    call        004A46F8
 004A420B    mov         edx,eax
 004A420D    mov         eax,dword ptr [ebp-4]
 004A4210    call        TPanel.SetColor
 004A4215    mov         eax,dword ptr [ebp-4]
 004A4218    test        byte ptr [eax+1C],10;TForm.FComponentState:TComponentState
>004A421C    jne         004A4226
 004A421E    mov         eax,dword ptr [ebp-4]
 004A4221    call        00488ADC
 004A4226    cmp         byte ptr [ebp-5],1
>004A422A    jne         004A4236
 004A422C    mov         dl,1
 004A422E    mov         eax,dword ptr [ebp-4]
 004A4231    call        TCustomForm.SetVisible
 004A4236    pop         ecx
 004A4237    pop         ecx
 004A4238    pop         ebp
 004A4239    ret
*}
end;

//004A423C
procedure sub_004A423C(?:TCustomForm);
begin
{*
 004A423C    push        ebp
 004A423D    mov         ebp,esp
 004A423F    add         esp,0FFFFFFF0
 004A4242    mov         dword ptr [ebp-4],eax
 004A4245    mov         eax,dword ptr [ebp-4]
 004A4248    cmp         byte ptr [eax+22F],2
>004A424F    jne         004A42EE
 004A4255    mov         eax,dword ptr [ebp-4]
 004A4258    cmp         dword ptr [eax+254],0
>004A425F    je          004A42EE
 004A4265    xor         eax,eax
 004A4267    mov         dword ptr [ebp-8],eax
 004A426A    mov         eax,dword ptr [ebp-4]
 004A426D    cmp         dword ptr [eax+248],0
>004A4274    je          004A4287
 004A4276    mov         eax,dword ptr [ebp-4]
 004A4279    mov         eax,dword ptr [eax+248]
 004A427F    mov         edx,dword ptr [eax]
 004A4281    call        dword ptr [edx+34]
 004A4284    mov         dword ptr [ebp-8],eax
 004A4287    xor         eax,eax
 004A4289    mov         dword ptr [ebp-0C],eax
 004A428C    mov         eax,dword ptr [ebp-4]
 004A428F    cmp         dword ptr [eax+258],0
>004A4296    je          004A42A9
 004A4298    mov         eax,dword ptr [ebp-4]
 004A429B    mov         eax,dword ptr [eax+258]
 004A42A1    call        00498B60
 004A42A6    mov         dword ptr [ebp-0C],eax
 004A42A9    mov         eax,dword ptr [ebp-4]
 004A42AC    call        TWinControl.GetHandle
 004A42B1    push        eax
 004A42B2    call        user32.GetMenu
 004A42B7    cmp         eax,dword ptr [ebp-8]
 004A42BA    setne       byte ptr [ebp-0D]
 004A42BE    mov         eax,dword ptr [ebp-0C]
 004A42C1    push        eax
 004A42C2    mov         eax,dword ptr [ebp-8]
 004A42C5    push        eax
 004A42C6    push        230
 004A42CB    mov         eax,dword ptr [ebp-4]
 004A42CE    mov         eax,dword ptr [eax+254]
 004A42D4    push        eax
 004A42D5    call        user32.SendMessageA
 004A42DA    cmp         byte ptr [ebp-0D],0
>004A42DE    je          004A42EE
 004A42E0    mov         eax,dword ptr [ebp-4]
 004A42E3    call        TWinControl.GetHandle
 004A42E8    push        eax
 004A42E9    call        user32.DrawMenuBar
 004A42EE    mov         esp,ebp
 004A42F0    pop         ebp
 004A42F1    ret
*}
end;

//004A42F4
procedure TForm.SetObjectMenuItem(Value:TMenuItem);
begin
{*
 004A42F4    push        ebp
 004A42F5    mov         ebp,esp
 004A42F7    add         esp,0FFFFFFF8
 004A42FA    mov         dword ptr [ebp-8],edx
 004A42FD    mov         dword ptr [ebp-4],eax
 004A4300    mov         eax,dword ptr [ebp-8]
 004A4303    mov         edx,dword ptr [ebp-4]
 004A4306    mov         dword ptr [edx+260],eax;TForm.FObjectMenuItem:TMenuItem
 004A430C    cmp         dword ptr [ebp-8],0
>004A4310    je          004A4327
 004A4312    mov         edx,dword ptr [ebp-4]
 004A4315    mov         eax,dword ptr [ebp-8]
 004A4318    call        0042A2CC
 004A431D    xor         edx,edx
 004A431F    mov         eax,dword ptr [ebp-8]
 004A4322    call        TMenuItem.SetEnabled
 004A4327    pop         ecx
 004A4328    pop         ecx
 004A4329    pop         ebp
 004A432A    ret
*}
end;

//004A432C
procedure TForm.SetWindowMenu(Value:TMenuItem);
begin
{*
 004A432C    push        ebp
 004A432D    mov         ebp,esp
 004A432F    add         esp,0FFFFFFF8
 004A4332    mov         dword ptr [ebp-8],edx
 004A4335    mov         dword ptr [ebp-4],eax
 004A4338    mov         eax,dword ptr [ebp-4]
 004A433B    mov         eax,dword ptr [eax+258];TForm.FWindowMenu:TMenuItem
 004A4341    cmp         eax,dword ptr [ebp-8]
>004A4344    je          004A436B
 004A4346    mov         eax,dword ptr [ebp-8]
 004A4349    mov         edx,dword ptr [ebp-4]
 004A434C    mov         dword ptr [edx+258],eax;TForm.FWindowMenu:TMenuItem
 004A4352    cmp         dword ptr [ebp-8],0
>004A4356    je          004A4363
 004A4358    mov         edx,dword ptr [ebp-4]
 004A435B    mov         eax,dword ptr [ebp-8]
 004A435E    call        0042A2CC
 004A4363    mov         eax,dword ptr [ebp-4]
 004A4366    call        004A423C
 004A436B    pop         ecx
 004A436C    pop         ecx
 004A436D    pop         ebp
 004A436E    ret
*}
end;

//004A4370
procedure TForm.SetMenu(Value:TMainMenu);
begin
{*
 004A4370    push        ebp
 004A4371    mov         ebp,esp
 004A4373    add         esp,0FFFFFFE4
 004A4376    push        ebx
 004A4377    xor         ecx,ecx
 004A4379    mov         dword ptr [ebp-1C],ecx
 004A437C    mov         dword ptr [ebp-8],edx
 004A437F    mov         dword ptr [ebp-4],eax
 004A4382    xor         eax,eax
 004A4384    push        ebp
 004A4385    push        4A4594
 004A438A    push        dword ptr fs:[eax]
 004A438D    mov         dword ptr fs:[eax],esp
 004A4390    cmp         dword ptr [ebp-8],0
>004A4394    je          004A441A
 004A439A    mov         eax,[00571E40];0x0 Screen:TScreen
 004A439F    call        004A89B4
 004A43A4    dec         eax
 004A43A5    test        eax,eax
>004A43A7    jl          004A441A
 004A43A9    inc         eax
 004A43AA    mov         dword ptr [ebp-10],eax
 004A43AD    mov         dword ptr [ebp-0C],0
 004A43B4    mov         edx,dword ptr [ebp-0C]
 004A43B7    mov         eax,[00571E40];0x0 Screen:TScreen
 004A43BC    call        004A8990
 004A43C1    mov         eax,dword ptr [eax+248]
 004A43C7    cmp         eax,dword ptr [ebp-8]
>004A43CA    jne         004A4412
 004A43CC    mov         edx,dword ptr [ebp-0C]
 004A43CF    mov         eax,[00571E40];0x0 Screen:TScreen
 004A43D4    call        004A8990
 004A43D9    cmp         eax,dword ptr [ebp-4]
>004A43DC    je          004A4412
 004A43DE    mov         eax,dword ptr [ebp-8]
 004A43E1    mov         eax,dword ptr [eax+8];TMainMenu.Name:TComponentName
 004A43E4    mov         dword ptr [ebp-18],eax
 004A43E7    mov         byte ptr [ebp-14],0B
 004A43EB    lea         eax,[ebp-18]
 004A43EE    push        eax
 004A43EF    push        0
 004A43F1    lea         edx,[ebp-1C]
 004A43F4    mov         eax,[0056E130];^SDuplicateMenus:TResStringRec
 004A43F9    call        LoadResString
 004A43FE    mov         ecx,dword ptr [ebp-1C]
 004A4401    mov         dl,1
 004A4403    mov         eax,[0041D40C];EInvalidOperation
 004A4408    call        Exception.CreateFmt;EInvalidOperation.Create
 004A440D    call        @RaiseExcept
 004A4412    inc         dword ptr [ebp-0C]
 004A4415    dec         dword ptr [ebp-10]
>004A4418    jne         004A43B4
 004A441A    mov         eax,dword ptr [ebp-4]
 004A441D    cmp         dword ptr [eax+248],0;TForm.FMenu:TMainMenu
>004A4424    je          004A4436
 004A4426    xor         edx,edx
 004A4428    mov         eax,dword ptr [ebp-4]
 004A442B    mov         eax,dword ptr [eax+248];TForm.FMenu:TMainMenu
 004A4431    call        0049CBA0
 004A4436    mov         eax,dword ptr [ebp-4]
 004A4439    test        byte ptr [eax+1C],8;TForm.FComponentState:TComponentState
>004A443D    jne         004A444E
 004A443F    cmp         dword ptr [ebp-8],0
>004A4443    je          004A4453
 004A4445    mov         eax,dword ptr [ebp-8]
 004A4448    test        byte ptr [eax+1C],8;TMainMenu.FComponentState:TComponentState
>004A444C    je          004A4453
 004A444E    xor         eax,eax
 004A4450    mov         dword ptr [ebp-8],eax
 004A4453    mov         eax,dword ptr [ebp-8]
 004A4456    mov         edx,dword ptr [ebp-4]
 004A4459    mov         dword ptr [edx+248],eax;TForm.FMenu:TMainMenu
 004A445F    cmp         dword ptr [ebp-8],0
>004A4463    je          004A4470
 004A4465    mov         edx,dword ptr [ebp-4]
 004A4468    mov         eax,dword ptr [ebp-8]
 004A446B    call        0042A2CC
 004A4470    cmp         dword ptr [ebp-8],0
>004A4474    je          004A4544
 004A447A    mov         eax,dword ptr [ebp-4]
 004A447D    test        byte ptr [eax+1C],10;TForm.FComponentState:TComponentState
>004A4481    jne         004A4493
 004A4483    mov         eax,dword ptr [ebp-4]
 004A4486    cmp         byte ptr [eax+229],3;TForm.FBorderStyle:TFormBorderStyle
>004A448D    je          004A4544
 004A4493    mov         eax,dword ptr [ebp-4]
 004A4496    mov         eax,dword ptr [eax+248];TForm.FMenu:TMainMenu
 004A449C    cmp         byte ptr [eax+5C],0;TMainMenu.AutoMerge:Boolean
>004A44A0    jne         004A44AE
 004A44A2    mov         eax,dword ptr [ebp-4]
 004A44A5    cmp         byte ptr [eax+22F],1;TForm.FFormStyle:TFormStyle
>004A44AC    jne         004A44B7
 004A44AE    mov         eax,dword ptr [ebp-4]
 004A44B1    test        byte ptr [eax+1C],10;TForm.FComponentState:TComponentState
>004A44B5    je          004A451A
 004A44B7    mov         eax,dword ptr [ebp-4]
 004A44BA    call        TWinControl.HandleAllocated
 004A44BF    test        al,al
>004A44C1    je          004A4560
 004A44C7    mov         eax,dword ptr [ebp-4]
 004A44CA    mov         eax,dword ptr [eax+248];TForm.FMenu:TMainMenu
 004A44D0    mov         edx,dword ptr [eax]
 004A44D2    call        dword ptr [edx+34];TMainMenu.sub_0049D4BC
 004A44D5    mov         ebx,eax
 004A44D7    mov         eax,dword ptr [ebp-4]
 004A44DA    call        TWinControl.GetHandle
 004A44DF    push        eax
 004A44E0    call        user32.GetMenu
 004A44E5    cmp         ebx,eax
>004A44E7    je          004A4506
 004A44E9    mov         eax,dword ptr [ebp-4]
 004A44EC    mov         eax,dword ptr [eax+248];TForm.FMenu:TMainMenu
 004A44F2    mov         edx,dword ptr [eax]
 004A44F4    call        dword ptr [edx+34];TMainMenu.sub_0049D4BC
 004A44F7    push        eax
 004A44F8    mov         eax,dword ptr [ebp-4]
 004A44FB    call        TWinControl.GetHandle
 004A4500    push        eax
 004A4501    call        user32.SetMenu
 004A4506    mov         eax,dword ptr [ebp-4]
 004A4509    call        TWinControl.GetHandle
 004A450E    mov         edx,eax
 004A4510    mov         eax,dword ptr [ebp-8]
 004A4513    call        0049CBA0
>004A4518    jmp         004A4560
 004A451A    mov         eax,dword ptr [ebp-4]
 004A451D    cmp         byte ptr [eax+22F],1;TForm.FFormStyle:TFormStyle
>004A4524    je          004A4560
 004A4526    mov         eax,dword ptr [ebp-4]
 004A4529    call        TWinControl.HandleAllocated
 004A452E    test        al,al
>004A4530    je          004A4560
 004A4532    push        0
 004A4534    mov         eax,dword ptr [ebp-4]
 004A4537    call        TWinControl.GetHandle
 004A453C    push        eax
 004A453D    call        user32.SetMenu
>004A4542    jmp         004A4560
 004A4544    mov         eax,dword ptr [ebp-4]
 004A4547    call        TWinControl.HandleAllocated
 004A454C    test        al,al
>004A454E    je          004A4560
 004A4550    push        0
 004A4552    mov         eax,dword ptr [ebp-4]
 004A4555    call        TWinControl.GetHandle
 004A455A    push        eax
 004A455B    call        user32.SetMenu
 004A4560    mov         eax,dword ptr [ebp-4]
 004A4563    cmp         byte ptr [eax+22E],0;TForm.FActive:Boolean
>004A456A    je          004A4576
 004A456C    mov         dl,1
 004A456E    mov         eax,dword ptr [ebp-4]
 004A4571    call        TCustomForm.MergeMenu
 004A4576    mov         eax,dword ptr [ebp-4]
 004A4579    call        004A423C
 004A457E    xor         eax,eax
 004A4580    pop         edx
 004A4581    pop         ecx
 004A4582    pop         ecx
 004A4583    mov         dword ptr fs:[eax],edx
 004A4586    push        4A459B
 004A458B    lea         eax,[ebp-1C]
 004A458E    call        @LStrClr
 004A4593    ret
>004A4594    jmp         @HandleFinally
>004A4599    jmp         004A458B
 004A459B    pop         ebx
 004A459C    mov         esp,ebp
 004A459E    pop         ebp
 004A459F    ret
*}
end;

//004A45A0
{*function TForm.GetPixelsPerInch:?;
begin
 004A45A0    push        ebp
 004A45A1    mov         ebp,esp
 004A45A3    add         esp,0FFFFFFF8
 004A45A6    mov         dword ptr [ebp-4],eax
 004A45A9    mov         eax,dword ptr [ebp-4]
 004A45AC    mov         eax,dword ptr [eax+25C];TForm.FPixelsPerInch:Integer
 004A45B2    mov         dword ptr [ebp-8],eax
 004A45B5    cmp         dword ptr [ebp-8],0
>004A45B9    jne         004A45C6
 004A45BB    mov         eax,[00571E40];0x0 Screen:TScreen
 004A45C0    mov         eax,dword ptr [eax+40];TScreen.FPixelsPerInch:Integer
 004A45C3    mov         dword ptr [ebp-8],eax
 004A45C6    mov         eax,dword ptr [ebp-8]
 004A45C9    pop         ecx
 004A45CA    pop         ecx
 004A45CB    pop         ebp
 004A45CC    ret
end;*}

//004A45D0
procedure TForm.SetPixelsPerInch(Value:Integer);
begin
{*
 004A45D0    push        ebp
 004A45D1    mov         ebp,esp
 004A45D3    add         esp,0FFFFFFF8
 004A45D6    mov         dword ptr [ebp-8],edx
 004A45D9    mov         dword ptr [ebp-4],eax
 004A45DC    mov         eax,dword ptr [ebp-4]
 004A45DF    call        TForm.GetPixelsPerInch
 004A45E4    cmp         eax,dword ptr [ebp-8]
>004A45E7    je          004A4616
 004A45E9    cmp         dword ptr [ebp-8],0
>004A45ED    je          004A45F5
 004A45EF    cmp         dword ptr [ebp-8],24
>004A45F3    jl          004A4616
 004A45F5    mov         eax,dword ptr [ebp-4]
 004A45F8    test        byte ptr [eax+1C],1;TForm.FComponentState:TComponentState
>004A45FC    je          004A460A
 004A45FE    mov         eax,dword ptr [ebp-4]
 004A4601    cmp         dword ptr [eax+25C],0;TForm.FPixelsPerInch:Integer
>004A4608    je          004A4616
 004A460A    mov         eax,dword ptr [ebp-8]
 004A460D    mov         edx,dword ptr [ebp-4]
 004A4610    mov         dword ptr [edx+25C],eax;TForm.FPixelsPerInch:Integer
 004A4616    pop         ecx
 004A4617    pop         ecx
 004A4618    pop         ebp
 004A4619    ret
*}
end;

//004A461C
procedure TForm.SetPosition(Value:TPosition);
begin
{*
 004A461C    push        ebp
 004A461D    mov         ebp,esp
 004A461F    add         esp,0FFFFFFF8
 004A4622    mov         byte ptr [ebp-5],dl
 004A4625    mov         dword ptr [ebp-4],eax
 004A4628    mov         eax,dword ptr [ebp-4]
 004A462B    mov         al,byte ptr [eax+230];TForm.FPosition:TPosition
 004A4631    cmp         al,byte ptr [ebp-5]
>004A4634    je          004A4653
 004A4636    mov         al,byte ptr [ebp-5]
 004A4639    mov         edx,dword ptr [ebp-4]
 004A463C    mov         byte ptr [edx+230],al;TForm.FPosition:TPosition
 004A4642    mov         eax,dword ptr [ebp-4]
 004A4645    test        byte ptr [eax+1C],10;TForm.FComponentState:TComponentState
>004A4649    jne         004A4653
 004A464B    mov         eax,dword ptr [ebp-4]
 004A464E    call        TWinControl.RecreateWnd
 004A4653    pop         ecx
 004A4654    pop         ecx
 004A4655    pop         ebp
 004A4656    ret
*}
end;

//004A4658
{*function TForm.GetScaled:?;
begin
 004A4658    push        ebp
 004A4659    mov         ebp,esp
 004A465B    add         esp,0FFFFFFF8
 004A465E    mov         dword ptr [ebp-4],eax
 004A4661    mov         eax,dword ptr [ebp-4]
 004A4664    cmp         dword ptr [eax+25C],0;TForm.FPixelsPerInch:Integer
 004A466B    setne       byte ptr [ebp-5]
 004A466F    mov         al,byte ptr [ebp-5]
 004A4672    pop         ecx
 004A4673    pop         ecx
 004A4674    pop         ebp
 004A4675    ret
end;*}

//004A4678
procedure TForm.SetScaled(Value:Boolean);
begin
{*
 004A4678    push        ebp
 004A4679    mov         ebp,esp
 004A467B    add         esp,0FFFFFFF8
 004A467E    mov         byte ptr [ebp-5],dl
 004A4681    mov         dword ptr [ebp-4],eax
 004A4684    mov         eax,dword ptr [ebp-4]
 004A4687    call        TForm.GetScaled
 004A468C    cmp         al,byte ptr [ebp-5]
>004A468F    je          004A46B3
 004A4691    mov         eax,dword ptr [ebp-4]
 004A4694    xor         edx,edx
 004A4696    mov         dword ptr [eax+25C],edx;TForm.FPixelsPerInch:Integer
 004A469C    cmp         byte ptr [ebp-5],0
>004A46A0    je          004A46B3
 004A46A2    mov         eax,[00571E40];0x0 Screen:TScreen
 004A46A7    mov         eax,dword ptr [eax+40];TScreen.FPixelsPerInch:Integer
 004A46AA    mov         edx,dword ptr [ebp-4]
 004A46AD    mov         dword ptr [edx+25C],eax;TForm.FPixelsPerInch:Integer
 004A46B3    pop         ecx
 004A46B4    pop         ecx
 004A46B5    pop         ebp
 004A46B6    ret
*}
end;

//004A46B8
{*procedure TCustomForm.CMColorChanged(?:?);
begin
 004A46B8    push        ebp
 004A46B9    mov         ebp,esp
 004A46BB    add         esp,0FFFFFFF8
 004A46BE    mov         dword ptr [ebp-8],edx
 004A46C1    mov         dword ptr [ebp-4],eax
 004A46C4    mov         edx,dword ptr [ebp-8]
 004A46C7    mov         eax,dword ptr [ebp-4]
 004A46CA    call        TWinControl.CMColorChanged
 004A46CF    mov         eax,dword ptr [ebp-4]
 004A46D2    cmp         dword ptr [eax+238],0;TCustomForm.FCanvas:TControlCanvas
>004A46D9    je          004A46F2
 004A46DB    mov         eax,dword ptr [ebp-4]
 004A46DE    mov         eax,dword ptr [eax+238];TCustomForm.FCanvas:TControlCanvas
 004A46E4    mov         eax,dword ptr [eax+14];TControlCanvas.Brush:TBrush
 004A46E7    mov         edx,dword ptr [ebp-4]
 004A46EA    mov         edx,dword ptr [edx+70];TCustomForm.FColor:TColor
 004A46ED    call        TBrush.SetColor
 004A46F2    pop         ecx
 004A46F3    pop         ecx
 004A46F4    pop         ebp
 004A46F5    ret
end;*}

//004A46F8
{*function sub_004A46F8(?:TCustomForm):?;
begin
 004A46F8    push        ebp
 004A46F9    mov         ebp,esp
 004A46FB    add         esp,0FFFFFFF8
 004A46FE    mov         dword ptr [ebp-4],eax
 004A4701    mov         dword ptr [ebp-8],0FF000005
 004A4708    mov         eax,dword ptr [ebp-4]
 004A470B    cmp         byte ptr [eax+22F],2;TForm.FFormStyle:TFormStyle
>004A4712    jne         004A471B
 004A4714    mov         dword ptr [ebp-8],0FF00000C
 004A471B    mov         eax,dword ptr [ebp-8]
 004A471E    pop         ecx
 004A471F    pop         ecx
 004A4720    pop         ebp
 004A4721    ret
end;*}

//004A4724
{*procedure TCustomForm.CMCtl3DChanged(?:?);
begin
 004A4724    push        ebp
 004A4725    mov         ebp,esp
 004A4727    add         esp,0FFFFFFF8
 004A472A    mov         dword ptr [ebp-8],edx
 004A472D    mov         dword ptr [ebp-4],eax
 004A4730    mov         edx,dword ptr [ebp-8]
 004A4733    mov         eax,dword ptr [ebp-4]
 004A4736    call        TWinControl.CMCtl3DChanged
 004A473B    mov         eax,dword ptr [ebp-4]
 004A473E    cmp         byte ptr [eax+1A5],0;TCustomForm.FCtl3D:Boolean
>004A4745    je          004A4766
 004A4747    mov         eax,dword ptr [ebp-4]
 004A474A    call        004A46F8
 004A474F    mov         edx,dword ptr [ebp-4]
 004A4752    cmp         eax,dword ptr [edx+70];TCustomForm.FColor:TColor
>004A4755    jne         004A4784
 004A4757    mov         edx,0FF00000F
 004A475C    mov         eax,dword ptr [ebp-4]
 004A475F    call        TPanel.SetColor
>004A4764    jmp         004A4784
 004A4766    mov         eax,dword ptr [ebp-4]
 004A4769    cmp         dword ptr [eax+70],0FF00000F;TCustomForm.FColor:TColor
>004A4770    jne         004A4784
 004A4772    mov         eax,dword ptr [ebp-4]
 004A4775    call        004A46F8
 004A477A    mov         edx,eax
 004A477C    mov         eax,dword ptr [ebp-4]
 004A477F    call        TPanel.SetColor
 004A4784    pop         ecx
 004A4785    pop         ecx
 004A4786    pop         ebp
 004A4787    ret
end;*}

//004A4788
{*procedure TCustomForm.CMFontChanged(?:?);
begin
 004A4788    push        ebp
 004A4789    mov         ebp,esp
 004A478B    add         esp,0FFFFFFF8
 004A478E    mov         dword ptr [ebp-8],edx
 004A4791    mov         dword ptr [ebp-4],eax
 004A4794    mov         edx,dword ptr [ebp-8]
 004A4797    mov         eax,dword ptr [ebp-4]
 004A479A    call        TWinControl.CMFontChanged
 004A479F    mov         eax,dword ptr [ebp-4]
 004A47A2    cmp         dword ptr [eax+238],0;TCustomForm.FCanvas:TControlCanvas
>004A47A9    je          004A47BF
 004A47AB    mov         eax,dword ptr [ebp-4]
 004A47AE    mov         edx,dword ptr [eax+68];TCustomForm.FFont:TFont
 004A47B1    mov         eax,dword ptr [ebp-4]
 004A47B4    mov         eax,dword ptr [eax+238];TCustomForm.FCanvas:TControlCanvas
 004A47BA    call        TCanvas.SetFont
 004A47BF    pop         ecx
 004A47C0    pop         ecx
 004A47C1    pop         ebp
 004A47C2    ret
end;*}

//004A47C4
{*procedure TCustomForm.CMMenuChanged(?:?);
begin
 004A47C4    push        ebp
 004A47C5    mov         ebp,esp
 004A47C7    add         esp,0FFFFFFF8
 004A47CA    mov         dword ptr [ebp-8],edx
 004A47CD    mov         dword ptr [ebp-4],eax
 004A47D0    mov         eax,dword ptr [ebp-4]
 004A47D3    call        004A423C
 004A47D8    mov         eax,dword ptr [ebp-4]
 004A47DB    mov         edx,dword ptr [eax+248];TCustomForm.FMenu:TMainMenu
 004A47E1    mov         eax,dword ptr [ebp-4]
 004A47E4    call        TForm.SetMenu
 004A47E9    pop         ecx
 004A47EA    pop         ecx
 004A47EB    pop         ebp
 004A47EC    ret
end;*}

//004A47F0
procedure TForm.SetWindowState(Value:TWindowState);
begin
{*
 004A47F0    push        ebp
 004A47F1    mov         ebp,esp
 004A47F3    add         esp,0FFFFFFF8
 004A47F6    mov         byte ptr [ebp-5],dl
 004A47F9    mov         dword ptr [ebp-4],eax
 004A47FC    mov         eax,dword ptr [ebp-4]
 004A47FF    mov         al,byte ptr [eax+22B];TForm.FWindowState:TWindowState
 004A4805    cmp         al,byte ptr [ebp-5]
>004A4808    je          004A4846
 004A480A    mov         al,byte ptr [ebp-5]
 004A480D    mov         edx,dword ptr [ebp-4]
 004A4810    mov         byte ptr [edx+22B],al;TForm.FWindowState:TWindowState
 004A4816    mov         eax,dword ptr [ebp-4]
 004A4819    test        byte ptr [eax+1C],10;TForm.FComponentState:TComponentState
>004A481D    jne         004A4846
 004A481F    mov         eax,dword ptr [ebp-4]
 004A4822    cmp         byte ptr [eax+1A6],0;TForm.FShowing:Boolean
>004A4829    je          004A4846
 004A482B    xor         eax,eax
 004A482D    mov         al,byte ptr [ebp-5]
 004A4830    mov         eax,dword ptr [eax*4+56CA1C]
 004A4837    push        eax
 004A4838    mov         eax,dword ptr [ebp-4]
 004A483B    call        TWinControl.GetHandle
 004A4840    push        eax
 004A4841    call        user32.ShowWindow
 004A4846    pop         ecx
 004A4847    pop         ecx
 004A4848    pop         ebp
 004A4849    ret
*}
end;

//004A484C
procedure sub_004A484C(?:TCustomForm);
begin
{*
 004A484C    push        ebp
 004A484D    mov         ebp,esp
 004A484F    add         esp,0FFFFFFDC
 004A4852    push        ebx
 004A4853    mov         dword ptr [ebp-4],eax
 004A4856    mov         eax,dword ptr [ebp-4]
 004A4859    cmp         byte ptr [eax+231],0
>004A4860    je          004A4C0A
 004A4866    mov         eax,[00571E3C];0x0 Application:TApplication
 004A486B    cmp         dword ptr [eax+44],0;TApplication.FMainForm:TForm
>004A486F    je          004A4C0A
 004A4875    xor         eax,eax
 004A4877    mov         dword ptr [ebp-8],eax
 004A487A    mov         eax,dword ptr [ebp-4]
 004A487D    cmp         byte ptr [eax+231],2
>004A4884    jne         004A489B
 004A4886    mov         eax,[00571E3C];0x0 Application:TApplication
 004A488B    mov         eax,dword ptr [eax+44];TApplication.FMainForm:TForm
 004A488E    call        004A3FD0
 004A4893    mov         eax,dword ptr [eax+4]
 004A4896    mov         dword ptr [ebp-8],eax
>004A4899    jmp         004A48E5
 004A489B    mov         eax,dword ptr [ebp-4]
 004A489E    cmp         byte ptr [eax+231],3
>004A48A5    jne         004A48C7
 004A48A7    mov         eax,[00571E40];0x0 Screen:TScreen
 004A48AC    cmp         dword ptr [eax+68],0;TScreen.FActiveCustomForm:TCustomForm
>004A48B0    je          004A48C7
 004A48B2    mov         eax,[00571E40];0x0 Screen:TScreen
 004A48B7    mov         eax,dword ptr [eax+68];TScreen.FActiveCustomForm:TCustomForm
 004A48BA    call        004A3FD0
 004A48BF    mov         eax,dword ptr [eax+4]
 004A48C2    mov         dword ptr [ebp-8],eax
>004A48C5    jmp         004A48E5
 004A48C7    mov         eax,dword ptr [ebp-4]
 004A48CA    cmp         byte ptr [eax+231],1
>004A48D1    jne         004A48E5
 004A48D3    xor         edx,edx
 004A48D5    mov         eax,[00571E40];0x0 Screen:TScreen
 004A48DA    call        004A8934
 004A48DF    mov         eax,dword ptr [eax+4]
 004A48E2    mov         dword ptr [ebp-8],eax
 004A48E5    mov         eax,dword ptr [ebp-4]
 004A48E8    call        004A3FD0
 004A48ED    mov         eax,dword ptr [eax+4]
 004A48F0    mov         dword ptr [ebp-0C],eax
 004A48F3    mov         eax,[00571E40];0x0 Screen:TScreen
 004A48F8    call        004A8958
 004A48FD    dec         eax
 004A48FE    test        eax,eax
>004A4900    jl          004A4C0A
 004A4906    inc         eax
 004A4907    mov         dword ptr [ebp-20],eax
 004A490A    mov         dword ptr [ebp-10],0
 004A4911    mov         edx,dword ptr [ebp-10]
 004A4914    mov         eax,[00571E40];0x0 Screen:TScreen
 004A4919    call        004A8934
 004A491E    mov         eax,dword ptr [eax+4]
 004A4921    cmp         eax,dword ptr [ebp-8]
>004A4924    jne         004A4BFE
 004A492A    mov         eax,dword ptr [ebp-8]
 004A492D    cmp         eax,dword ptr [ebp-0C]
>004A4930    je          004A4BFE
 004A4936    mov         eax,[00571E40];0x0 Screen:TScreen
 004A493B    call        004A8958
 004A4940    dec         eax
 004A4941    test        eax,eax
>004A4943    jl          004A4BFE
 004A4949    inc         eax
 004A494A    mov         dword ptr [ebp-24],eax
 004A494D    mov         dword ptr [ebp-14],0
 004A4954    mov         edx,dword ptr [ebp-14]
 004A4957    mov         eax,[00571E40];0x0 Screen:TScreen
 004A495C    call        004A8934
 004A4961    mov         eax,dword ptr [eax+4]
 004A4964    cmp         eax,dword ptr [ebp-0C]
>004A4967    jne         004A4BF2
 004A496D    mov         eax,dword ptr [ebp-4]
 004A4970    cmp         byte ptr [eax+230],4
>004A4977    jne         004A4A09
 004A497D    mov         eax,dword ptr [ebp-4]
 004A4980    mov         eax,dword ptr [eax+48]
 004A4983    push        eax
 004A4984    mov         eax,dword ptr [ebp-4]
 004A4987    mov         eax,dword ptr [eax+4C]
 004A498A    push        eax
 004A498B    mov         edx,dword ptr [ebp-10]
 004A498E    mov         eax,[00571E40];0x0 Screen:TScreen
 004A4993    call        004A8934
 004A4998    call        004A8508
 004A499D    mov         ebx,eax
 004A499F    mov         edx,dword ptr [ebp-10]
 004A49A2    mov         eax,[00571E40];0x0 Screen:TScreen
 004A49A7    call        004A8934
 004A49AC    call        004A84E4
 004A49B1    mov         edx,dword ptr [ebp-4]
 004A49B4    sub         eax,dword ptr [edx+4C]
 004A49B7    sar         eax,1
>004A49B9    jns         004A49BE
 004A49BB    adc         eax,0
 004A49BE    add         ebx,eax
 004A49C0    push        ebx
 004A49C1    mov         edx,dword ptr [ebp-10]
 004A49C4    mov         eax,[00571E40];0x0 Screen:TScreen
 004A49C9    call        004A8934
 004A49CE    call        004A84C0
 004A49D3    mov         ebx,eax
 004A49D5    mov         edx,dword ptr [ebp-10]
 004A49D8    mov         eax,[00571E40];0x0 Screen:TScreen
 004A49DD    call        004A8934
 004A49E2    call        004A852C
 004A49E7    mov         edx,dword ptr [ebp-4]
 004A49EA    sub         eax,dword ptr [edx+48]
 004A49ED    sar         eax,1
>004A49EF    jns         004A49F4
 004A49F1    adc         eax,0
 004A49F4    add         ebx,eax
 004A49F6    mov         edx,ebx
 004A49F8    mov         eax,dword ptr [ebp-4]
 004A49FB    pop         ecx
 004A49FC    mov         ebx,dword ptr [eax]
 004A49FE    call        dword ptr [ebx+84]
>004A4A04    jmp         004A4BF2
 004A4A09    mov         eax,dword ptr [ebp-4]
 004A4A0C    cmp         byte ptr [eax+230],6
>004A4A13    jne         004A4AA5
 004A4A19    mov         eax,dword ptr [ebp-4]
 004A4A1C    mov         eax,dword ptr [eax+48]
 004A4A1F    push        eax
 004A4A20    mov         eax,dword ptr [ebp-4]
 004A4A23    mov         eax,dword ptr [eax+4C]
 004A4A26    push        eax
 004A4A27    mov         edx,dword ptr [ebp-10]
 004A4A2A    mov         eax,[00571E40];0x0 Screen:TScreen
 004A4A2F    call        004A8934
 004A4A34    call        004A8508
 004A4A39    mov         ebx,eax
 004A4A3B    mov         edx,dword ptr [ebp-10]
 004A4A3E    mov         eax,[00571E40];0x0 Screen:TScreen
 004A4A43    call        004A8934
 004A4A48    call        004A84E4
 004A4A4D    mov         edx,dword ptr [ebp-4]
 004A4A50    sub         eax,dword ptr [edx+4C]
 004A4A53    sar         eax,1
>004A4A55    jns         004A4A5A
 004A4A57    adc         eax,0
 004A4A5A    add         ebx,eax
 004A4A5C    push        ebx
 004A4A5D    mov         edx,dword ptr [ebp-10]
 004A4A60    mov         eax,[00571E40];0x0 Screen:TScreen
 004A4A65    call        004A8934
 004A4A6A    call        004A84C0
 004A4A6F    mov         ebx,eax
 004A4A71    mov         edx,dword ptr [ebp-10]
 004A4A74    mov         eax,[00571E40];0x0 Screen:TScreen
 004A4A79    call        004A8934
 004A4A7E    call        004A852C
 004A4A83    mov         edx,dword ptr [ebp-4]
 004A4A86    sub         eax,dword ptr [edx+48]
 004A4A89    sar         eax,1
>004A4A8B    jns         004A4A90
 004A4A8D    adc         eax,0
 004A4A90    add         ebx,eax
 004A4A92    mov         edx,ebx
 004A4A94    mov         eax,dword ptr [ebp-4]
 004A4A97    pop         ecx
 004A4A98    mov         ebx,dword ptr [eax]
 004A4A9A    call        dword ptr [ebx+84]
>004A4AA0    jmp         004A4BF2
 004A4AA5    mov         edx,dword ptr [ebp-10]
 004A4AA8    mov         eax,[00571E40];0x0 Screen:TScreen
 004A4AAD    call        004A8934
 004A4AB2    call        004A84C0
 004A4AB7    mov         ebx,eax
 004A4AB9    mov         eax,dword ptr [ebp-4]
 004A4ABC    add         ebx,dword ptr [eax+40]
 004A4ABF    mov         edx,dword ptr [ebp-14]
 004A4AC2    mov         eax,[00571E40];0x0 Screen:TScreen
 004A4AC7    call        004A8934
 004A4ACC    call        004A84C0
 004A4AD1    sub         ebx,eax
 004A4AD3    mov         dword ptr [ebp-18],ebx
 004A4AD6    mov         edx,dword ptr [ebp-10]
 004A4AD9    mov         eax,[00571E40];0x0 Screen:TScreen
 004A4ADE    call        004A8934
 004A4AE3    call        004A84C0
 004A4AE8    mov         ebx,eax
 004A4AEA    mov         edx,dword ptr [ebp-10]
 004A4AED    mov         eax,[00571E40];0x0 Screen:TScreen
 004A4AF2    call        004A8934
 004A4AF7    call        004A852C
 004A4AFC    add         ebx,eax
 004A4AFE    mov         eax,dword ptr [ebp-18]
 004A4B01    mov         edx,dword ptr [ebp-4]
 004A4B04    add         eax,dword ptr [edx+48]
 004A4B07    cmp         ebx,eax
>004A4B09    jge         004A4B3C
 004A4B0B    mov         edx,dword ptr [ebp-10]
 004A4B0E    mov         eax,[00571E40];0x0 Screen:TScreen
 004A4B13    call        004A8934
 004A4B18    call        004A84C0
 004A4B1D    mov         ebx,eax
 004A4B1F    mov         edx,dword ptr [ebp-10]
 004A4B22    mov         eax,[00571E40];0x0 Screen:TScreen
 004A4B27    call        004A8934
 004A4B2C    call        004A852C
 004A4B31    add         ebx,eax
 004A4B33    mov         eax,dword ptr [ebp-4]
 004A4B36    sub         ebx,dword ptr [eax+48]
 004A4B39    mov         dword ptr [ebp-18],ebx
 004A4B3C    mov         edx,dword ptr [ebp-10]
 004A4B3F    mov         eax,[00571E40];0x0 Screen:TScreen
 004A4B44    call        004A8934
 004A4B49    call        004A8508
 004A4B4E    mov         ebx,eax
 004A4B50    mov         eax,dword ptr [ebp-4]
 004A4B53    add         ebx,dword ptr [eax+44]
 004A4B56    mov         edx,dword ptr [ebp-14]
 004A4B59    mov         eax,[00571E40];0x0 Screen:TScreen
 004A4B5E    call        004A8934
 004A4B63    call        004A8508
 004A4B68    sub         ebx,eax
 004A4B6A    mov         dword ptr [ebp-1C],ebx
 004A4B6D    mov         edx,dword ptr [ebp-10]
 004A4B70    mov         eax,[00571E40];0x0 Screen:TScreen
 004A4B75    call        004A8934
 004A4B7A    call        004A8508
 004A4B7F    mov         ebx,eax
 004A4B81    mov         edx,dword ptr [ebp-10]
 004A4B84    mov         eax,[00571E40];0x0 Screen:TScreen
 004A4B89    call        004A8934
 004A4B8E    call        004A84E4
 004A4B93    add         ebx,eax
 004A4B95    mov         eax,dword ptr [ebp-1C]
 004A4B98    mov         edx,dword ptr [ebp-4]
 004A4B9B    add         eax,dword ptr [edx+4C]
 004A4B9E    cmp         ebx,eax
>004A4BA0    jge         004A4BD3
 004A4BA2    mov         edx,dword ptr [ebp-10]
 004A4BA5    mov         eax,[00571E40];0x0 Screen:TScreen
 004A4BAA    call        004A8934
 004A4BAF    call        004A8508
 004A4BB4    mov         ebx,eax
 004A4BB6    mov         edx,dword ptr [ebp-10]
 004A4BB9    mov         eax,[00571E40];0x0 Screen:TScreen
 004A4BBE    call        004A8934
 004A4BC3    call        004A84E4
 004A4BC8    add         ebx,eax
 004A4BCA    mov         eax,dword ptr [ebp-4]
 004A4BCD    sub         ebx,dword ptr [eax+4C]
 004A4BD0    mov         dword ptr [ebp-1C],ebx
 004A4BD3    mov         eax,dword ptr [ebp-4]
 004A4BD6    mov         eax,dword ptr [eax+48]
 004A4BD9    push        eax
 004A4BDA    mov         eax,dword ptr [ebp-4]
 004A4BDD    mov         eax,dword ptr [eax+4C]
 004A4BE0    push        eax
 004A4BE1    mov         ecx,dword ptr [ebp-1C]
 004A4BE4    mov         edx,dword ptr [ebp-18]
 004A4BE7    mov         eax,dword ptr [ebp-4]
 004A4BEA    mov         ebx,dword ptr [eax]
 004A4BEC    call        dword ptr [ebx+84]
 004A4BF2    inc         dword ptr [ebp-14]
 004A4BF5    dec         dword ptr [ebp-24]
>004A4BF8    jne         004A4954
 004A4BFE    inc         dword ptr [ebp-10]
 004A4C01    dec         dword ptr [ebp-20]
>004A4C04    jne         004A4911
 004A4C0A    pop         ebx
 004A4C0B    mov         esp,ebp
 004A4C0D    pop         ebp
 004A4C0E    ret
*}
end;

//004A4C10
{*procedure sub_004A4C10(?:?);
begin
 004A4C10    push        ebp
 004A4C11    mov         ebp,esp
 004A4C13    add         esp,0FFFFFFF4
 004A4C16    mov         dword ptr [ebp-8],edx
 004A4C19    mov         dword ptr [ebp-4],eax
 004A4C1C    mov         edx,dword ptr [ebp-8]
 004A4C1F    mov         eax,dword ptr [ebp-4]
 004A4C22    call        004A17C4
 004A4C27    mov         edx,dword ptr [ebp-8]
 004A4C2A    mov         eax,dword ptr [ebp-4]
 004A4C2D    call        004A7F64
 004A4C32    mov         eax,dword ptr [ebp-4]
 004A4C35    cmp         dword ptr [eax+30],0;TCustomForm.FParent:TWinControl
>004A4C39    jne         004A4C5F
 004A4C3B    mov         eax,dword ptr [ebp-4]
 004A4C3E    cmp         dword ptr [eax+190],0;TCustomForm.FParentWindow:HWND
>004A4C45    jne         004A4C5F
 004A4C47    mov         eax,[00571E3C];0x0 Application:TApplication
 004A4C4C    mov         eax,dword ptr [eax+30];TApplication.FHandle:HWND
 004A4C4F    mov         edx,dword ptr [ebp-8]
 004A4C52    mov         dword ptr [edx+1C],eax
 004A4C55    mov         eax,dword ptr [ebp-8]
 004A4C58    and         dword ptr [eax+4],0BFFCFFFF
 004A4C5F    mov         eax,dword ptr [ebp-8]
 004A4C62    mov         dword ptr [eax+24],8
 004A4C69    mov         eax,dword ptr [ebp-4]
 004A4C6C    test        byte ptr [eax+1C],10;TCustomForm.FComponentState:TComponentState
>004A4C70    je          004A4C8A
 004A4C72    mov         eax,dword ptr [ebp-4]
 004A4C75    cmp         dword ptr [eax+30],0;TCustomForm.FParent:TWinControl
>004A4C79    jne         004A4C8A
 004A4C7B    mov         eax,dword ptr [ebp-8]
 004A4C7E    or          dword ptr [eax+4],0CF0000
>004A4C85    jmp         004A4EC4
 004A4C8A    mov         eax,dword ptr [ebp-4]
 004A4C8D    mov         al,byte ptr [eax+230];TCustomForm.FPosition:TPosition
 004A4C93    dec         eax
 004A4C94    sub         al,2
>004A4C96    jae         004A4CAC
 004A4C98    mov         eax,dword ptr [ebp-8]
 004A4C9B    mov         dword ptr [eax+0C],80000000
 004A4CA2    mov         eax,dword ptr [ebp-8]
 004A4CA5    mov         dword ptr [eax+10],80000000
 004A4CAC    mov         eax,dword ptr [ebp-4]
 004A4CAF    mov         al,byte ptr [eax+228];TCustomForm.FBorderIcons:TBorderIcons
 004A4CB5    mov         byte ptr [ebp-9],al
 004A4CB8    mov         eax,dword ptr [ebp-4]
 004A4CBB    mov         al,byte ptr [eax+229];TCustomForm.FBorderStyle:TFormBorderStyle
 004A4CC1    mov         byte ptr [ebp-0A],al
 004A4CC4    mov         eax,dword ptr [ebp-4]
 004A4CC7    cmp         byte ptr [eax+22F],1;TCustomForm.FFormStyle:TFormStyle
>004A4CCE    jne         004A4CDF
 004A4CD0    mov         al,byte ptr [ebp-0A]
 004A4CD3    test        al,al
>004A4CD5    je          004A4CDB
 004A4CD7    sub         al,3
>004A4CD9    jne         004A4CDF
 004A4CDB    mov         byte ptr [ebp-0A],2
 004A4CDF    xor         eax,eax
 004A4CE1    mov         al,byte ptr [ebp-0A]
 004A4CE4    cmp         eax,5
>004A4CE7    ja          004A4DDB
 004A4CED    jmp         dword ptr [eax*4+4A4CF4]
 004A4CED    dd          004A4D0C
 004A4CED    dd          004A4D38
 004A4CED    dd          004A4D47
 004A4CED    dd          004A4D78
 004A4CED    dd          004A4D38
 004A4CED    dd          004A4D47
 004A4D0C    mov         eax,dword ptr [ebp-4]
 004A4D0F    cmp         dword ptr [eax+30],0;TCustomForm.FParent:TWinControl
>004A4D13    jne         004A4D2B
 004A4D15    mov         eax,dword ptr [ebp-4]
 004A4D18    cmp         dword ptr [eax+190],0;TCustomForm.FParentWindow:HWND
>004A4D1F    jne         004A4D2B
 004A4D21    mov         eax,dword ptr [ebp-8]
 004A4D24    or          dword ptr [eax+4],80000000
 004A4D2B    mov         al,[004A4EC8];0x0 gvar_004A4EC8
 004A4D30    mov         byte ptr [ebp-9],al
>004A4D33    jmp         004A4DDB
 004A4D38    mov         eax,dword ptr [ebp-8]
 004A4D3B    or          dword ptr [eax+4],0C00000
>004A4D42    jmp         004A4DDB
 004A4D47    mov         eax,dword ptr [ebp-8]
 004A4D4A    or          dword ptr [eax+4],0C40000
 004A4D51    mov         eax,dword ptr [ebp-4]
 004A4D54    mov         al,byte ptr [eax+230];TCustomForm.FPosition:TPosition
 004A4D5A    sub         al,1
>004A4D5C    je          004A4D62
 004A4D5E    sub         al,2
>004A4D60    jne         004A4DDB
 004A4D62    mov         eax,dword ptr [ebp-8]
 004A4D65    mov         dword ptr [eax+14],80000000
 004A4D6C    mov         eax,dword ptr [ebp-8]
 004A4D6F    mov         dword ptr [eax+18],80000000
>004A4D76    jmp         004A4DDB
 004A4D78    mov         eax,dword ptr [ebp-8]
 004A4D7B    mov         eax,dword ptr [eax+4]
 004A4D7E    or          eax,80000000
 004A4D83    or          eax,0C00000
 004A4D88    mov         edx,dword ptr [ebp-8]
 004A4D8B    mov         dword ptr [edx+4],eax
 004A4D8E    mov         eax,dword ptr [ebp-8]
 004A4D91    mov         dword ptr [eax+8],101
 004A4D98    mov         edx,dword ptr [ebp-8]
 004A4D9B    add         edx,8
 004A4D9E    mov         eax,dword ptr [ebp-4]
 004A4DA1    call        00487FB4
 004A4DA6    mov         eax,[0056E264];^NewStyleControls:Boolean
 004A4DAB    cmp         byte ptr [eax],0
>004A4DAE    jne         004A4DC6
 004A4DB0    mov         eax,dword ptr [ebp-8]
 004A4DB3    mov         eax,dword ptr [eax+4]
 004A4DB6    or          eax,400000
 004A4DBB    or          eax,80
 004A4DC0    mov         edx,dword ptr [ebp-8]
 004A4DC3    mov         dword ptr [edx+4],eax
 004A4DC6    mov         al,[004A4ECC];0x9 gvar_004A4ECC
 004A4DCB    and         al,byte ptr [ebp-9]
 004A4DCE    mov         byte ptr [ebp-9],al
 004A4DD1    mov         eax,dword ptr [ebp-8]
 004A4DD4    mov         dword ptr [eax+24],2808
 004A4DDB    mov         al,byte ptr [ebp-0A]
 004A4DDE    add         al,0FC
 004A4DE0    sub         al,2
>004A4DE2    jae         004A4E07
 004A4DE4    mov         eax,dword ptr [ebp-8]
 004A4DE7    mov         dword ptr [eax+8],80
 004A4DEE    mov         edx,dword ptr [ebp-8]
 004A4DF1    add         edx,8
 004A4DF4    mov         eax,dword ptr [ebp-4]
 004A4DF7    call        00487FB4
 004A4DFC    mov         al,[004A4ED0];0x1 gvar_004A4ED0
 004A4E01    and         al,byte ptr [ebp-9]
 004A4E04    mov         byte ptr [ebp-9],al
 004A4E07    mov         al,byte ptr [ebp-0A]
 004A4E0A    sub         al,3
>004A4E0C    jae         004A4E70
 004A4E0E    mov         eax,dword ptr [ebp-4]
 004A4E11    cmp         byte ptr [eax+22F],1;TCustomForm.FFormStyle:TFormStyle
>004A4E18    jne         004A4E20
 004A4E1A    test        byte ptr [ebp-9],1
>004A4E1E    je          004A4E40
 004A4E20    test        byte ptr [ebp-9],2
>004A4E24    je          004A4E30
 004A4E26    mov         eax,dword ptr [ebp-8]
 004A4E29    or          dword ptr [eax+4],20000
 004A4E30    test        byte ptr [ebp-9],4
>004A4E34    je          004A4E40
 004A4E36    mov         eax,dword ptr [ebp-8]
 004A4E39    or          dword ptr [eax+4],10000
 004A4E40    mov         eax,dword ptr [ebp-4]
 004A4E43    cmp         byte ptr [eax+22B],1;TCustomForm.FWindowState:TWindowState
>004A4E4A    jne         004A4E58
 004A4E4C    mov         eax,dword ptr [ebp-8]
 004A4E4F    or          dword ptr [eax+4],20000000
>004A4E56    jmp         004A4E7A
 004A4E58    mov         eax,dword ptr [ebp-4]
 004A4E5B    cmp         byte ptr [eax+22B],2;TCustomForm.FWindowState:TWindowState
>004A4E62    jne         004A4E7A
 004A4E64    mov         eax,dword ptr [ebp-8]
 004A4E67    or          dword ptr [eax+4],1000000
>004A4E6E    jmp         004A4E7A
 004A4E70    mov         eax,dword ptr [ebp-4]
 004A4E73    mov         byte ptr [eax+22B],0;TCustomForm.FWindowState:TWindowState
 004A4E7A    test        byte ptr [ebp-9],1
>004A4E7E    je          004A4E8A
 004A4E80    mov         eax,dword ptr [ebp-8]
 004A4E83    or          dword ptr [eax+4],80000
 004A4E8A    test        byte ptr [ebp-9],8
>004A4E8E    je          004A4E9A
 004A4E90    mov         eax,dword ptr [ebp-8]
 004A4E93    or          dword ptr [eax+8],400
 004A4E9A    mov         eax,dword ptr [ebp-4]
 004A4E9D    test        byte ptr [eax+1D],2;TCustomForm.?f1D:byte
>004A4EA1    je          004A4EAD
 004A4EA3    mov         eax,dword ptr [ebp-8]
 004A4EA6    and         dword ptr [eax+4],0FF3FFFFF
 004A4EAD    mov         eax,dword ptr [ebp-4]
 004A4EB0    cmp         byte ptr [eax+22F],1;TCustomForm.FFormStyle:TFormStyle
>004A4EB7    jne         004A4EC4
 004A4EB9    mov         eax,407EF4;user32.DefMDIChildProcA:Longint
 004A4EBE    mov         edx,dword ptr [ebp-8]
 004A4EC1    mov         dword ptr [edx+28],eax
 004A4EC4    mov         esp,ebp
 004A4EC6    pop         ebp
 004A4EC7    ret
end;*}

//004A4ED4
procedure TCustomForm.CreateWnd;
begin
{*
 004A4ED4    push        ebp
 004A4ED5    mov         ebp,esp
 004A4ED7    add         esp,0FFFFFFF4
 004A4EDA    mov         dword ptr [ebp-4],eax
 004A4EDD    mov         eax,dword ptr [ebp-4]
 004A4EE0    call        TScrollingWinControl.CreateWnd
 004A4EE5    mov         eax,[0056E264];^NewStyleControls:Boolean
 004A4EEA    cmp         byte ptr [eax],0
>004A4EED    je          004A4F32
 004A4EEF    mov         eax,dword ptr [ebp-4]
 004A4EF2    cmp         byte ptr [eax+229],3;TCustomForm.FBorderStyle:TFormBorderStyle
>004A4EF9    je          004A4F1B
 004A4EFB    mov         eax,dword ptr [ebp-4]
 004A4EFE    call        004A5A94
 004A4F03    push        eax
 004A4F04    push        1
 004A4F06    push        80
 004A4F0B    mov         eax,dword ptr [ebp-4]
 004A4F0E    call        TWinControl.GetHandle
 004A4F13    push        eax
 004A4F14    call        user32.SendMessageA
>004A4F19    jmp         004A4F32
 004A4F1B    push        0
 004A4F1D    push        1
 004A4F1F    push        80
 004A4F24    mov         eax,dword ptr [ebp-4]
 004A4F27    call        TWinControl.GetHandle
 004A4F2C    push        eax
 004A4F2D    call        user32.SendMessageA
 004A4F32    mov         eax,dword ptr [ebp-4]
 004A4F35    test        byte ptr [eax+1C],10;TCustomForm.FComponentState:TComponentState
>004A4F39    jne         004A5034
 004A4F3F    mov         eax,dword ptr [ebp-4]
 004A4F42    mov         al,byte ptr [eax+22F];TCustomForm.FFormStyle:TFormStyle
 004A4F48    sub         al,2
>004A4F4A    je          004A4F59
 004A4F4C    dec         al
>004A4F4E    je          004A501A
>004A4F54    jmp         004A5034
 004A4F59    mov         dword ptr [ebp-8],0FF00
 004A4F60    xor         eax,eax
 004A4F62    mov         dword ptr [ebp-0C],eax
 004A4F65    mov         eax,dword ptr [ebp-4]
 004A4F68    cmp         dword ptr [eax+258],0;TCustomForm.FWindowMenu:TMenuItem
>004A4F6F    je          004A4F82
 004A4F71    mov         eax,dword ptr [ebp-4]
 004A4F74    mov         eax,dword ptr [eax+258];TCustomForm.FWindowMenu:TMenuItem
 004A4F7A    call        00498B60
 004A4F7F    mov         dword ptr [ebp-0C],eax
 004A4F82    push        56330001
 004A4F87    push        0
 004A4F89    push        0
 004A4F8B    mov         eax,dword ptr [ebp-4]
 004A4F8E    call        TControl.GetClientWidth
 004A4F93    push        eax
 004A4F94    mov         eax,dword ptr [ebp-4]
 004A4F97    call        TControl.GetClientHeight
 004A4F9C    push        eax
 004A4F9D    mov         eax,dword ptr [ebp-4]
 004A4FA0    call        TWinControl.GetHandle
 004A4FA5    push        eax
 004A4FA6    push        0
 004A4FA8    mov         eax,[0056F668];0x0 HInstance:LongWord
 004A4FAD    push        eax
 004A4FAE    lea         eax,[ebp-0C]
 004A4FB1    push        eax
 004A4FB2    mov         edx,4A5038
 004A4FB7    xor         ecx,ecx
 004A4FB9    mov         eax,200
 004A4FBE    call        004086E4
 004A4FC3    mov         edx,dword ptr [ebp-4]
 004A4FC6    mov         dword ptr [edx+254],eax;TCustomForm.FClientHandle:HWND
 004A4FCC    mov         eax,dword ptr [ebp-4]
 004A4FCF    push        eax
 004A4FD0    push        4A3918;TCustomForm.ClientWndProc
 004A4FD5    call        0042B9AC
 004A4FDA    mov         edx,dword ptr [ebp-4]
 004A4FDD    mov         dword ptr [edx+278],eax;TCustomForm.FClientInstance:TFarProc
 004A4FE3    push        0FC
 004A4FE5    mov         eax,dword ptr [ebp-4]
 004A4FE8    mov         eax,dword ptr [eax+254];TCustomForm.FClientHandle:HWND
 004A4FEE    push        eax
 004A4FEF    call        user32.GetWindowLongA
 004A4FF4    mov         edx,dword ptr [ebp-4]
 004A4FF7    mov         dword ptr [edx+274],eax;TCustomForm.FDefClientProc:TFarProc
 004A4FFD    mov         eax,dword ptr [ebp-4]
 004A5000    mov         eax,dword ptr [eax+278];TCustomForm.FClientInstance:TFarProc
 004A5006    push        eax
 004A5007    push        0FC
 004A5009    mov         eax,dword ptr [ebp-4]
 004A500C    mov         eax,dword ptr [eax+254];TCustomForm.FClientHandle:HWND
 004A5012    push        eax
 004A5013    call        user32.SetWindowLongA
>004A5018    jmp         004A5034
 004A501A    push        13
 004A501C    push        0
 004A501E    push        0
 004A5020    push        0
 004A5022    push        0
 004A5024    push        0FF
 004A5026    mov         eax,dword ptr [ebp-4]
 004A5029    call        TWinControl.GetHandle
 004A502E    push        eax
 004A502F    call        user32.SetWindowPos
 004A5034    mov         esp,ebp
 004A5036    pop         ebp
 004A5037    ret
*}
end;

//004A5044
{*procedure sub_004A5044(?:?);
begin
 004A5044    push        ebp
 004A5045    mov         ebp,esp
 004A5047    add         esp,0FFFFFF44
 004A504D    push        esi
 004A504E    push        edi
 004A504F    xor         ecx,ecx
 004A5051    mov         dword ptr [ebp-0BC],ecx
 004A5057    mov         dword ptr [ebp-8],edx
 004A505A    mov         dword ptr [ebp-4],eax
 004A505D    xor         eax,eax
 004A505F    push        ebp
 004A5060    push        4A51A3
 004A5065    push        dword ptr fs:[eax]
 004A5068    mov         dword ptr fs:[eax],esp
 004A506B    mov         eax,dword ptr [ebp-4]
 004A506E    cmp         byte ptr [eax+22F],1;TCustomForm.FFormStyle:TFormStyle
>004A5075    jne         004A514E
 004A507B    mov         eax,dword ptr [ebp-4]
 004A507E    test        byte ptr [eax+1C],10;TCustomForm.FComponentState:TComponentState
>004A5082    jne         004A514E
 004A5088    mov         eax,[00571E3C];0x0 Application:TApplication
 004A508D    cmp         dword ptr [eax+44],0;TApplication.FMainForm:TForm
>004A5091    je          004A50A4
 004A5093    mov         eax,[00571E3C];0x0 Application:TApplication
 004A5098    mov         eax,dword ptr [eax+44];TApplication.FMainForm:TForm
 004A509B    cmp         dword ptr [eax+254],0;TForm.FClientHandle:HWND
>004A50A2    jne         004A50CB
 004A50A4    lea         edx,[ebp-0BC]
 004A50AA    mov         eax,[0056E4F0];^SNoMDIForm:TResStringRec
 004A50AF    call        LoadResString
 004A50B4    mov         ecx,dword ptr [ebp-0BC]
 004A50BA    mov         dl,1
 004A50BC    mov         eax,[0041D40C];EInvalidOperation
 004A50C1    call        Exception.Create;EInvalidOperation.Create
 004A50C6    call        @RaiseExcept
 004A50CB    mov         eax,dword ptr [ebp-8]
 004A50CE    add         eax,4C
 004A50D1    mov         dword ptr [ebp-2C],eax
 004A50D4    mov         eax,dword ptr [ebp-8]
 004A50D7    mov         eax,dword ptr [eax]
 004A50D9    mov         dword ptr [ebp-28],eax
 004A50DC    mov         eax,[0056F668];0x0 HInstance:LongWord
 004A50E1    mov         dword ptr [ebp-24],eax
 004A50E4    mov         eax,dword ptr [ebp-8]
 004A50E7    mov         eax,dword ptr [eax+0C]
 004A50EA    mov         dword ptr [ebp-20],eax
 004A50ED    mov         eax,dword ptr [ebp-8]
 004A50F0    mov         eax,dword ptr [eax+10]
 004A50F3    mov         dword ptr [ebp-1C],eax
 004A50F6    mov         eax,dword ptr [ebp-8]
 004A50F9    mov         eax,dword ptr [eax+14]
 004A50FC    mov         dword ptr [ebp-18],eax
 004A50FF    mov         eax,dword ptr [ebp-8]
 004A5102    mov         eax,dword ptr [eax+18]
 004A5105    mov         dword ptr [ebp-14],eax
 004A5108    mov         eax,dword ptr [ebp-8]
 004A510B    mov         eax,dword ptr [eax+4]
 004A510E    mov         dword ptr [ebp-10],eax
 004A5111    mov         eax,dword ptr [ebp-8]
 004A5114    mov         eax,dword ptr [eax+20]
 004A5117    mov         dword ptr [ebp-0C],eax
 004A511A    lea         eax,[ebp-2C]
 004A511D    push        eax
 004A511E    push        0
 004A5120    push        220
 004A5125    mov         eax,[00571E3C];0x0 Application:TApplication
 004A512A    mov         eax,dword ptr [eax+44];TApplication.FMainForm:TForm
 004A512D    mov         eax,dword ptr [eax+254];TForm.FClientHandle:HWND
 004A5133    push        eax
 004A5134    call        user32.SendMessageA
 004A5139    mov         edx,dword ptr [ebp-4]
 004A513C    mov         dword ptr [edx+180],eax;TCustomForm.FHandle:HWND
 004A5142    mov         eax,dword ptr [ebp-4]
 004A5145    or          byte ptr [eax+2F4],10;TCustomForm.FFormState:TFormState
>004A514C    jmp         004A5182
 004A514E    mov         eax,dword ptr [ebp-8]
 004A5151    mov         esi,eax
 004A5153    lea         edi,[ebp-0B8]
 004A5159    mov         ecx,23
 004A515E    rep movs    dword ptr [edi],dword ptr [esi]
 004A5160    and         dword ptr [ebp-0B0],0FFF7FFFF
 004A516A    lea         edx,[ebp-0B8]
 004A5170    mov         eax,dword ptr [ebp-4]
 004A5173    call        004883D8
 004A5178    mov         eax,dword ptr [ebp-4]
 004A517B    and         byte ptr [eax+2F4],0EF;TCustomForm.FFormState:TFormState
 004A5182    mov         eax,dword ptr [ebp-4]
 004A5185    call        004A7D98
 004A518A    xor         eax,eax
 004A518C    pop         edx
 004A518D    pop         ecx
 004A518E    pop         ecx
 004A518F    mov         dword ptr fs:[eax],edx
 004A5192    push        4A51AA
 004A5197    lea         eax,[ebp-0BC]
 004A519D    call        @LStrClr
 004A51A2    ret
>004A51A3    jmp         @HandleFinally
>004A51A8    jmp         004A5197
 004A51AA    pop         edi
 004A51AB    pop         esi
 004A51AC    mov         esp,ebp
 004A51AE    pop         ebp
 004A51AF    ret
end;*}

//004A51B0
procedure TCustomForm.DestroyWindowHandle;
begin
{*
 004A51B0    push        ebp
 004A51B1    mov         ebp,esp
 004A51B3    push        ecx
 004A51B4    mov         dword ptr [ebp-4],eax
 004A51B7    mov         eax,dword ptr [ebp-4]
 004A51BA    test        byte ptr [eax+2F4],10;TCustomForm.FFormState:TFormState
>004A51C1    je          004A51E9
 004A51C3    push        0
 004A51C5    mov         eax,dword ptr [ebp-4]
 004A51C8    call        TWinControl.GetHandle
 004A51CD    push        eax
 004A51CE    push        221
 004A51D3    mov         eax,[00571E3C];0x0 Application:TApplication
 004A51D8    mov         eax,dword ptr [eax+44];TApplication.FMainForm:TForm
 004A51DB    mov         eax,dword ptr [eax+254];TForm.FClientHandle:HWND
 004A51E1    push        eax
 004A51E2    call        user32.SendMessageA
>004A51E7    jmp         004A51F1
 004A51E9    mov         eax,dword ptr [ebp-4]
 004A51EC    call        TWinControl.DestroyWindowHandle
 004A51F1    mov         eax,dword ptr [ebp-4]
 004A51F4    xor         edx,edx
 004A51F6    mov         dword ptr [eax+254],edx;TCustomForm.FClientHandle:HWND
 004A51FC    pop         ecx
 004A51FD    pop         ebp
 004A51FE    ret
*}
end;

//004A5200
procedure TCustomForm.DefaultHandler(var Message:void );
begin
{*
 004A5200    push        ebp
 004A5201    mov         ebp,esp
 004A5203    add         esp,0FFFFFFF8
 004A5206    mov         dword ptr [ebp-8],edx
 004A5209    mov         dword ptr [ebp-4],eax
 004A520C    mov         eax,dword ptr [ebp-4]
 004A520F    cmp         dword ptr [eax+254],0
>004A5216    je          004A527E
 004A5218    mov         eax,dword ptr [ebp-8]
 004A521B    cmp         dword ptr [eax],5
>004A521E    jne         004A524A
 004A5220    mov         eax,dword ptr [ebp-8];{TWinControl.GetHandle}
 004A5223    mov         eax,dword ptr [eax+8]
 004A5226    push        eax
 004A5227    mov         eax,dword ptr [ebp-8];{DefWindowProc}
 004A522A    mov         eax,dword ptr [eax+4]
 004A522D    push        eax
 004A522E    mov         eax,dword ptr [ebp-8]
 004A5231    mov         eax,dword ptr [eax]
 004A5233    push        eax
 004A5234    mov         eax,dword ptr [ebp-4]
 004A5237    call        TWinControl.GetHandle
 004A523C    push        eax
 004A523D    call        user32.DefWindowProcA
 004A5242    mov         edx,dword ptr [ebp-8]
 004A5245    mov         dword ptr [edx+0C],eax;{TWinControl.GetHandle}
>004A5248    jmp         004A5289
 004A524A    mov         eax,dword ptr [ebp-8];{DefFrameProc}
 004A524D    mov         eax,dword ptr [eax+8]
 004A5250    push        eax
 004A5251    mov         eax,dword ptr [ebp-8]
 004A5254    mov         eax,dword ptr [eax+4]
 004A5257    push        eax
 004A5258    mov         eax,dword ptr [ebp-8]
 004A525B    mov         eax,dword ptr [eax]
 004A525D    push        eax
 004A525E    mov         eax,dword ptr [ebp-4]
 004A5261    mov         eax,dword ptr [eax+254]
 004A5267    push        eax
 004A5268    mov         eax,dword ptr [ebp-4]
 004A526B    call        TWinControl.GetHandle
 004A5270    push        eax
 004A5271    call        user32.DefFrameProcA
 004A5276    mov         edx,dword ptr [ebp-8]
 004A5279    mov         dword ptr [edx+0C],eax
>004A527C    jmp         004A5289
 004A527E    mov         edx,dword ptr [ebp-8]
 004A5281    mov         eax,dword ptr [ebp-4]
 004A5284    call        TWinControl.DefaultHandler
 004A5289    pop         ecx
 004A528A    pop         ecx
 004A528B    pop         ebp
 004A528C    ret
*}
end;

//004A5290
procedure TForm.SetActiveControl(Value:TWinControl);
begin
{*
 004A5290    push        ebp
 004A5291    mov         ebp,esp
 004A5293    add         esp,0FFFFFFF4
 004A5296    push        esi
 004A5297    xor         ecx,ecx
 004A5299    mov         dword ptr [ebp-0C],ecx
 004A529C    mov         dword ptr [ebp-8],edx
 004A529F    mov         dword ptr [ebp-4],eax
 004A52A2    xor         eax,eax
 004A52A4    push        ebp
 004A52A5    push        4A5362
 004A52AA    push        dword ptr fs:[eax]
 004A52AD    mov         dword ptr fs:[eax],esp
 004A52B0    mov         eax,dword ptr [ebp-4]
 004A52B3    mov         eax,dword ptr [eax+220];TForm.FActiveControl:TWinControl
 004A52B9    cmp         eax,dword ptr [ebp-8]
>004A52BC    je          004A534C
 004A52C2    cmp         dword ptr [ebp-8],0
>004A52C6    je          004A5317
 004A52C8    mov         eax,dword ptr [ebp-8]
 004A52CB    cmp         eax,dword ptr [ebp-4]
>004A52CE    je          004A52F6
 004A52D0    mov         eax,dword ptr [ebp-8]
 004A52D3    call        004A0740
 004A52D8    cmp         eax,dword ptr [ebp-4]
>004A52DB    jne         004A52F6
 004A52DD    mov         eax,dword ptr [ebp-4]
 004A52E0    test        byte ptr [eax+1C],1;TForm.FComponentState:TComponentState
>004A52E4    jne         004A5317
 004A52E6    mov         eax,dword ptr [ebp-8]
 004A52E9    mov         si,0FFB8
 004A52ED    call        @CallDynaInst;TWinControl.sub_0048BFC8
 004A52F2    test        al,al
>004A52F4    jne         004A5317
 004A52F6    lea         edx,[ebp-0C]
 004A52F9    mov         eax,[0056E51C];^SCannotFocus:TResStringRec
 004A52FE    call        LoadResString
 004A5303    mov         ecx,dword ptr [ebp-0C]
 004A5306    mov         dl,1
 004A5308    mov         eax,[0041D40C];EInvalidOperation
 004A530D    call        Exception.Create;EInvalidOperation.Create
 004A5312    call        @RaiseExcept
 004A5317    mov         eax,dword ptr [ebp-8]
 004A531A    mov         edx,dword ptr [ebp-4]
 004A531D    mov         dword ptr [edx+220],eax;TForm.FActiveControl:TWinControl
 004A5323    mov         eax,dword ptr [ebp-4]
 004A5326    test        byte ptr [eax+1C],1;TForm.FComponentState:TComponentState
>004A532A    jne         004A534C
 004A532C    mov         eax,dword ptr [ebp-4]
 004A532F    cmp         byte ptr [eax+22E],0;TForm.FActive:Boolean
>004A5336    je          004A5340
 004A5338    mov         eax,dword ptr [ebp-4]
 004A533B    call        004A5730
 004A5340    mov         eax,dword ptr [ebp-4]
 004A5343    mov         si,0FFB2
 004A5347    call        @CallDynaInst;TCustomForm.sub_004A5724
 004A534C    xor         eax,eax
 004A534E    pop         edx
 004A534F    pop         ecx
 004A5350    pop         ecx
 004A5351    mov         dword ptr fs:[eax],edx
 004A5354    push        4A5369
 004A5359    lea         eax,[ebp-0C]
 004A535C    call        @LStrClr
 004A5361    ret
>004A5362    jmp         @HandleFinally
>004A5367    jmp         004A5359
 004A5369    pop         esi
 004A536A    mov         esp,ebp
 004A536C    pop         ebp
 004A536D    ret
*}
end;

//004A5370
{*procedure sub_004A5370(?:?; ?:?; ?:?);
begin
 004A5370    push        ebp
 004A5371    mov         ebp,esp
 004A5373    add         esp,0FFFFFFF4
 004A5376    mov         byte ptr [ebp-9],cl
 004A5379    mov         dword ptr [ebp-8],edx
 004A537C    mov         dword ptr [ebp-4],eax
 004A537F    cmp         byte ptr [ebp-9],0
>004A5383    je          004A53A9
 004A5385    mov         eax,dword ptr [ebp-4]
 004A5388    mov         edx,dword ptr [eax+224]
 004A538E    mov         eax,dword ptr [ebp-8]
 004A5391    call        00487B2C
 004A5396    test        al,al
>004A5398    je          004A53A9
 004A539A    mov         eax,dword ptr [ebp-8]
 004A539D    mov         eax,dword ptr [eax+30]
 004A53A0    mov         edx,dword ptr [ebp-4]
 004A53A3    mov         dword ptr [edx+224],eax
 004A53A9    mov         eax,dword ptr [ebp-4]
 004A53AC    mov         edx,dword ptr [eax+220]
 004A53B2    mov         eax,dword ptr [ebp-8]
 004A53B5    call        00487B2C
 004A53BA    test        al,al
>004A53BC    je          004A53C8
 004A53BE    xor         edx,edx
 004A53C0    mov         eax,dword ptr [ebp-4]
 004A53C3    call        TForm.SetActiveControl
 004A53C8    mov         esp,ebp
 004A53CA    pop         ebp
 004A53CB    ret
end;*}

//004A53CC
{*procedure sub_004A53CC(?:?; ?:TWinControl);
begin
 004A53CC    push        ebp
 004A53CD    mov         ebp,esp
 004A53CF    add         esp,0FFFFFFF4
 004A53D2    mov         dword ptr [ebp-8],edx
 004A53D5    mov         dword ptr [ebp-4],eax
 004A53D8    mov         eax,dword ptr [ebp-4]
 004A53DB    mov         al,byte ptr [eax+22E]
 004A53E1    mov         byte ptr [ebp-9],al
 004A53E4    mov         edx,dword ptr [ebp-8]
 004A53E7    mov         eax,dword ptr [ebp-4]
 004A53EA    call        TForm.SetActiveControl
 004A53EF    cmp         byte ptr [ebp-9],0
>004A53F3    jne         004A5400
 004A53F5    mov         eax,dword ptr [ebp-4]
 004A53F8    mov         edx,dword ptr [eax]
 004A53FA    call        dword ptr [edx+0C4]
 004A5400    mov         esp,ebp
 004A5402    pop         ebp
 004A5403    ret
end;*}

//004A5404
{*function sub_004A5404(?:?):?;
begin
 004A5404    push        ebp
 004A5405    mov         ebp,esp
 004A5407    add         esp,0FFFFFFEC
 004A540A    mov         dword ptr [ebp-8],edx
 004A540D    mov         dword ptr [ebp-4],eax
 004A5410    mov         byte ptr [ebp-9],0
 004A5414    inc         dword ptr ds:[56C9C4];gvar_0056C9C4
 004A541A    mov         eax,dword ptr [ebp-4]
 004A541D    cmp         dword ptr [eax+250],0;TCustomForm.FDesigner:IDesignerHook
>004A5424    jne         004A5447
 004A5426    mov         eax,dword ptr [ebp-8]
 004A5429    cmp         eax,dword ptr [ebp-4]
>004A542C    je          004A543C
 004A542E    mov         eax,dword ptr [ebp-4]
 004A5431    mov         edx,dword ptr [ebp-8]
 004A5434    mov         dword ptr [eax+220],edx;TCustomForm.FActiveControl:TWinControl
>004A543A    jmp         004A5447
 004A543C    mov         eax,dword ptr [ebp-4]
 004A543F    xor         edx,edx
 004A5441    mov         dword ptr [eax+220],edx;TCustomForm.FActiveControl:TWinControl
 004A5447    mov         eax,[00571E40];0x0 Screen:TScreen
 004A544C    mov         edx,dword ptr [ebp-8]
 004A544F    mov         dword ptr [eax+64],edx;TScreen.FActiveControl:TWinControl
 004A5452    mov         eax,[00571E40];0x0 Screen:TScreen
 004A5457    mov         edx,dword ptr [ebp-4]
 004A545A    mov         dword ptr [eax+68],edx;TScreen.FActiveCustomForm:TCustomForm
 004A545D    mov         eax,[00571E40];0x0 Screen:TScreen
 004A5462    mov         eax,dword ptr [eax+50];TScreen.FCustomForms:TList
 004A5465    mov         edx,dword ptr [ebp-4]
 004A5468    call        004204F0
 004A546D    mov         eax,[00571E40];0x0 Screen:TScreen
 004A5472    mov         eax,dword ptr [eax+50];TScreen.FCustomForms:TList
 004A5475    mov         ecx,dword ptr [ebp-4]
 004A5478    xor         edx,edx
 004A547A    call        00420308
 004A547F    mov         eax,dword ptr [ebp-4]
 004A5482    mov         edx,dword ptr ds:[49EF70];TForm
 004A5488    call        @IsClass
 004A548D    test        al,al
>004A548F    je          004A54C0
 004A5491    mov         eax,[00571E40];0x0 Screen:TScreen
 004A5496    mov         edx,dword ptr [ebp-4]
 004A5499    mov         dword ptr [eax+6C],edx;TScreen.FActiveForm:TForm
 004A549C    mov         eax,[00571E40];0x0 Screen:TScreen
 004A54A1    mov         eax,dword ptr [eax+4C];TScreen.FForms:TList
 004A54A4    mov         edx,dword ptr [ebp-4]
 004A54A7    call        004204F0
 004A54AC    mov         eax,[00571E40];0x0 Screen:TScreen
 004A54B1    mov         eax,dword ptr [eax+4C];TScreen.FForms:TList
 004A54B4    mov         ecx,dword ptr [ebp-4]
 004A54B7    xor         edx,edx
 004A54B9    call        00420308
>004A54BE    jmp         004A54CA
 004A54C0    mov         eax,[00571E40];0x0 Screen:TScreen
 004A54C5    xor         edx,edx
 004A54C7    mov         dword ptr [eax+6C],edx;TScreen.FActiveForm:TForm
 004A54CA    mov         eax,dword ptr [ebp-8]
 004A54CD    test        byte ptr [eax+54],20
>004A54D1    jne         004A5716
 004A54D7    mov         eax,dword ptr [ebp-8]
 004A54DA    mov         ax,word ptr [eax+54]
 004A54DE    or          ax,word ptr ds:[4A5720];0x20 gvar_004A5720
 004A54E5    mov         edx,dword ptr [ebp-8]
 004A54E8    mov         word ptr [edx+54],ax
 004A54EC    xor         eax,eax
 004A54EE    push        ebp
 004A54EF    push        4A5701
 004A54F4    push        dword ptr fs:[eax]
 004A54F7    mov         dword ptr fs:[eax],esp
 004A54FA    mov         eax,[00571E40];0x0 Screen:TScreen
 004A54FF    mov         eax,dword ptr [eax+78];TScreen.FFocusedForm:TCustomForm
 004A5502    cmp         eax,dword ptr [ebp-4]
>004A5505    je          004A5570
 004A5507    mov         eax,[00571E40];0x0 Screen:TScreen
 004A550C    cmp         dword ptr [eax+78],0;TScreen.FFocusedForm:TCustomForm
>004A5510    je          004A5546
 004A5512    mov         eax,[00571E40];0x0 Screen:TScreen
 004A5517    mov         eax,dword ptr [eax+78];TScreen.FFocusedForm:TCustomForm
 004A551A    call        TWinControl.GetHandle
 004A551F    mov         dword ptr [ebp-10],eax
 004A5522    mov         eax,[00571E40];0x0 Screen:TScreen
 004A5527    xor         edx,edx
 004A5529    mov         dword ptr [eax+78],edx;TScreen.FFocusedForm:TCustomForm
 004A552C    mov         dx,0B001
 004A5530    mov         eax,dword ptr [ebp-10]
 004A5533    call        004A0418
 004A5538    test        al,al
>004A553A    jne         004A5546
 004A553C    call        @TryFinallyExit
>004A5541    jmp         004A5716
 004A5546    mov         eax,[00571E40];0x0 Screen:TScreen
 004A554B    mov         edx,dword ptr [ebp-4]
 004A554E    mov         dword ptr [eax+78],edx;TScreen.FFocusedForm:TCustomForm
 004A5551    mov         eax,dword ptr [ebp-4]
 004A5554    call        TWinControl.GetHandle
 004A5559    mov         dx,0B000
 004A555D    call        004A0418
 004A5562    test        al,al
>004A5564    jne         004A5570
 004A5566    call        @TryFinallyExit
>004A556B    jmp         004A5716
 004A5570    mov         eax,dword ptr [ebp-4]
 004A5573    cmp         dword ptr [eax+224],0;TCustomForm.FFocusedControl:TWinControl
>004A557A    jne         004A5588
 004A557C    mov         eax,dword ptr [ebp-4]
 004A557F    mov         edx,dword ptr [ebp-4]
 004A5582    mov         dword ptr [eax+224],edx;TCustomForm.FFocusedControl:TWinControl
 004A5588    mov         eax,dword ptr [ebp-4]
 004A558B    mov         eax,dword ptr [eax+224];TCustomForm.FFocusedControl:TWinControl
 004A5591    cmp         eax,dword ptr [ebp-8]
>004A5594    je          004A56DC
>004A559A    jmp         004A55DC
 004A559C    mov         eax,dword ptr [ebp-4]
 004A559F    mov         eax,dword ptr [eax+224];TCustomForm.FFocusedControl:TWinControl
 004A55A5    call        TWinControl.GetHandle
 004A55AA    mov         dword ptr [ebp-10],eax
 004A55AD    mov         eax,dword ptr [ebp-4]
 004A55B0    mov         eax,dword ptr [eax+224];TCustomForm.FFocusedControl:TWinControl
 004A55B6    mov         eax,dword ptr [eax+30];TWinControl.FParent:TWinControl
 004A55B9    mov         edx,dword ptr [ebp-4]
 004A55BC    mov         dword ptr [edx+224],eax;TCustomForm.FFocusedControl:TWinControl
 004A55C2    mov         dx,0B01B
 004A55C6    mov         eax,dword ptr [ebp-10]
 004A55C9    call        004A0418
 004A55CE    test        al,al
>004A55D0    jne         004A55DC
 004A55D2    call        @TryFinallyExit
>004A55D7    jmp         004A5716
 004A55DC    mov         eax,dword ptr [ebp-4]
 004A55DF    cmp         dword ptr [eax+224],0;TCustomForm.FFocusedControl:TWinControl
>004A55E6    je          004A564C
 004A55E8    mov         eax,dword ptr [ebp-4]
 004A55EB    mov         eax,dword ptr [eax+224];TCustomForm.FFocusedControl:TWinControl
 004A55F1    mov         edx,dword ptr [ebp-8]
 004A55F4    call        00487B2C
 004A55F9    test        al,al
>004A55FB    je          004A559C
>004A55FD    jmp         004A564C
 004A55FF    mov         eax,dword ptr [ebp-8]
 004A5602    mov         dword ptr [ebp-14],eax
>004A5605    jmp         004A5610
 004A5607    mov         eax,dword ptr [ebp-14]
 004A560A    mov         eax,dword ptr [eax+30]
 004A560D    mov         dword ptr [ebp-14],eax
 004A5610    mov         eax,dword ptr [ebp-14]
 004A5613    mov         eax,dword ptr [eax+30]
 004A5616    mov         edx,dword ptr [ebp-4]
 004A5619    cmp         eax,dword ptr [edx+224];TCustomForm.FFocusedControl:TWinControl
>004A561F    jne         004A5607
 004A5621    mov         eax,dword ptr [ebp-4]
 004A5624    mov         edx,dword ptr [ebp-14]
 004A5627    mov         dword ptr [eax+224],edx;TCustomForm.FFocusedControl:TWinControl
 004A562D    mov         eax,dword ptr [ebp-14]
 004A5630    call        TWinControl.GetHandle
 004A5635    mov         dx,0B01A
 004A5639    call        004A0418
 004A563E    test        al,al
>004A5640    jne         004A564C
 004A5642    call        @TryFinallyExit
>004A5647    jmp         004A5716
 004A564C    mov         eax,dword ptr [ebp-4]
 004A564F    mov         eax,dword ptr [eax+224];TCustomForm.FFocusedControl:TWinControl
 004A5655    cmp         eax,dword ptr [ebp-8]
>004A5658    jne         004A55FF
 004A565A    mov         eax,dword ptr [ebp-8]
 004A565D    mov         eax,dword ptr [eax+30]
 004A5660    mov         dword ptr [ebp-14],eax
 004A5663    cmp         dword ptr [ebp-14],0
>004A5667    je          004A5698
 004A5669    mov         eax,dword ptr [ebp-14]
 004A566C    mov         edx,dword ptr ds:[49E648];TScrollingWinControl
 004A5672    call        @IsClass
 004A5677    test        al,al
>004A5679    je          004A5689
 004A567B    mov         edx,dword ptr [ebp-8]
 004A567E    mov         eax,dword ptr [ebp-14]
 004A5681    mov         ecx,dword ptr [eax]
 004A5683    call        dword ptr [ecx+0CC]
 004A5689    mov         eax,dword ptr [ebp-14]
 004A568C    mov         eax,dword ptr [eax+30]
 004A568F    mov         dword ptr [ebp-14],eax
 004A5692    cmp         dword ptr [ebp-14],0
>004A5696    jne         004A5669
 004A5698    mov         eax,dword ptr [ebp-8]
 004A569B    push        eax
 004A569C    xor         ecx,ecx
 004A569E    mov         edx,0B007
 004A56A3    mov         eax,dword ptr [ebp-4]
 004A56A6    call        00484FFC
 004A56AB    mov         eax,dword ptr [ebp-4]
 004A56AE    cmp         dword ptr [eax+27C],0;TCustomForm.FActiveOleControl:TWinControl
>004A56B5    je          004A56DC
 004A56B7    mov         eax,dword ptr [ebp-4]
 004A56BA    mov         eax,dword ptr [eax+27C];TCustomForm.FActiveOleControl:TWinControl
 004A56C0    cmp         eax,dword ptr [ebp-8]
>004A56C3    je          004A56DC
 004A56C5    push        0
 004A56C7    mov         eax,dword ptr [ebp-4]
 004A56CA    mov         eax,dword ptr [eax+27C];TCustomForm.FActiveOleControl:TWinControl
 004A56D0    xor         ecx,ecx
 004A56D2    mov         edx,0B02A
 004A56D7    call        00484FFC
 004A56DC    xor         eax,eax
 004A56DE    pop         edx
 004A56DF    pop         ecx
 004A56E0    pop         ecx
 004A56E1    mov         dword ptr fs:[eax],edx
 004A56E4    push        4A5708
 004A56E9    mov         eax,dword ptr [ebp-8]
 004A56EC    mov         dx,word ptr ds:[4A5720];0x20 gvar_004A5720
 004A56F3    not         edx
 004A56F5    and         dx,word ptr [eax+54]
 004A56F9    mov         eax,dword ptr [ebp-8]
 004A56FC    mov         word ptr [eax+54],dx
 004A5700    ret
>004A5701    jmp         @HandleFinally
>004A5706    jmp         004A56E9
 004A5708    mov         eax,[00571E40];0x0 Screen:TScreen
 004A570D    call        004A8A10
 004A5712    mov         byte ptr [ebp-9],1
 004A5716    mov         al,byte ptr [ebp-9]
 004A5719    mov         esp,ebp
 004A571B    pop         ebp
 004A571C    ret
end;*}

//004A5724
procedure TCustomForm.sub_004A5724;
begin
{*
 004A5724    push        ebp
 004A5725    mov         ebp,esp
 004A5727    push        ecx
 004A5728    mov         dword ptr [ebp-4],eax
 004A572B    pop         ecx
 004A572C    pop         ebp
 004A572D    ret
*}
end;

//004A5730
procedure sub_004A5730(?:TCustomForm);
begin
{*
 004A5730    push        ebp
 004A5731    mov         ebp,esp
 004A5733    add         esp,0FFFFFFF8
 004A5736    push        ebx
 004A5737    mov         dword ptr [ebp-4],eax
 004A573A    mov         eax,dword ptr [ebp-4]
 004A573D    cmp         dword ptr [eax+220],0;TForm.FActiveControl:TWinControl
>004A5744    je          004A5760
 004A5746    mov         eax,dword ptr [ebp-4]
 004A5749    cmp         dword ptr [eax+250],0;TForm.FDesigner:IDesignerHook
>004A5750    jne         004A5760
 004A5752    mov         eax,dword ptr [ebp-4]
 004A5755    mov         eax,dword ptr [eax+220];TForm.FActiveControl:TWinControl
 004A575B    mov         dword ptr [ebp-8],eax
>004A575E    jmp         004A5766
 004A5760    mov         eax,dword ptr [ebp-4]
 004A5763    mov         dword ptr [ebp-8],eax
 004A5766    mov         eax,dword ptr [ebp-8]
 004A5769    call        TWinControl.GetHandle
 004A576E    push        eax
 004A576F    call        user32.SetFocus
 004A5774    mov         eax,dword ptr [ebp-8]
 004A5777    call        TWinControl.GetHandle
 004A577C    mov         ebx,eax
 004A577E    call        user32.GetFocus
 004A5783    cmp         ebx,eax
>004A5785    jne         004A5798
 004A5787    push        0
 004A5789    xor         ecx,ecx
 004A578B    mov         edx,0B029
 004A5790    mov         eax,dword ptr [ebp-8]
 004A5793    call        00484FFC
 004A5798    pop         ebx
 004A5799    pop         ecx
 004A579A    pop         ecx
 004A579B    pop         ebp
 004A579C    ret
*}
end;

//004A57A0
{*procedure sub_004A57A0(?:TCustomForm; ?:?);
begin
 004A57A0    push        ebp
 004A57A1    mov         ebp,esp
 004A57A3    add         esp,0FFFFFFF8
 004A57A6    mov         byte ptr [ebp-5],dl
 004A57A9    mov         dword ptr [ebp-4],eax
 004A57AC    mov         al,byte ptr [ebp-5]
 004A57AF    mov         edx,dword ptr [ebp-4]
 004A57B2    mov         byte ptr [edx+22E],al
 004A57B8    mov         eax,dword ptr [ebp-4]
 004A57BB    cmp         dword ptr [eax+27C],0
>004A57C2    je          004A57DE
 004A57C4    push        0
 004A57C6    xor         ecx,ecx
 004A57C8    mov         cl,byte ptr [ebp-5]
 004A57CB    mov         edx,0B02B
 004A57D0    mov         eax,dword ptr [ebp-4]
 004A57D3    mov         eax,dword ptr [eax+27C]
 004A57D9    call        00484FFC
 004A57DE    cmp         byte ptr [ebp-5],0
>004A57E2    je          004A5825
 004A57E4    mov         eax,dword ptr [ebp-4]
 004A57E7    cmp         dword ptr [eax+220],0
>004A57EE    jne         004A5813
 004A57F0    mov         eax,dword ptr [ebp-4]
 004A57F3    test        byte ptr [eax+1C],10
>004A57F7    jne         004A5813
 004A57F9    push        1
 004A57FB    push        0
 004A57FD    mov         cl,1
 004A57FF    xor         edx,edx
 004A5801    mov         eax,dword ptr [ebp-4]
 004A5804    call        0048C724
 004A5809    mov         edx,eax
 004A580B    mov         eax,dword ptr [ebp-4]
 004A580E    call        TForm.SetActiveControl
 004A5813    mov         dl,1
 004A5815    mov         eax,dword ptr [ebp-4]
 004A5818    call        TCustomForm.MergeMenu
 004A581D    mov         eax,dword ptr [ebp-4]
 004A5820    call        004A5730
 004A5825    pop         ecx
 004A5826    pop         ecx
 004A5827    pop         ebp
 004A5828    ret
end;*}

//004A582C
{*procedure sub_004A582C(?:TWinControl; ?:?);
begin
 004A582C    push        ebp
 004A582D    mov         ebp,esp
 004A582F    add         esp,0FFFFFFF8
 004A5832    mov         dword ptr [ebp-8],edx
 004A5835    mov         dword ptr [ebp-4],eax
 004A5838    mov         eax,dword ptr [ebp-4]
 004A583B    cmp         byte ptr [eax+22E],0;TToolBar.?f22E:byte
>004A5842    je          004A5869
 004A5844    mov         eax,dword ptr [ebp-4]
 004A5847    cmp         dword ptr [eax+220],0;TToolBar.FCanvas:TCanvas
>004A584E    je          004A5869
 004A5850    mov         eax,dword ptr [ebp-8]
 004A5853    push        eax
 004A5854    xor         ecx,ecx
 004A5856    mov         edx,0B004
 004A585B    mov         eax,dword ptr [ebp-4]
 004A585E    mov         eax,dword ptr [eax+220];TToolBar.FCanvas:TCanvas
 004A5864    call        00484FFC
 004A5869    mov         eax,dword ptr [ebp-4]
 004A586C    cmp         byte ptr [eax+22F],2;TToolBar.?f22F:byte
>004A5873    jne         004A5891
 004A5875    mov         eax,dword ptr [ebp-4]
 004A5878    call        004A3E58
 004A587D    test        eax,eax
>004A587F    je          004A5891
 004A5881    mov         eax,dword ptr [ebp-4]
 004A5884    call        004A3E58
 004A5889    mov         edx,dword ptr [ebp-8]
 004A588C    call        004A582C
 004A5891    pop         ecx
 004A5892    pop         ecx
 004A5893    pop         ebp
 004A5894    ret
end;*}

//004A5898
procedure TCustomForm.MergeMenu(MergeState:Boolean);
begin
{*
 004A5898    push        ebp
 004A5899    mov         ebp,esp
 004A589B    add         esp,0FFFFFFF0
 004A589E    mov         byte ptr [ebp-5],dl
 004A58A1    mov         dword ptr [ebp-4],eax
 004A58A4    mov         eax,dword ptr [ebp-4]
 004A58A7    test        byte ptr [eax+2F4],8
>004A58AE    jne         004A5976
 004A58B4    mov         eax,[00571E3C];Application:TApplication
 004A58B9    cmp         dword ptr [eax+44],0
>004A58BD    je          004A5976
 004A58C3    mov         eax,[00571E3C];Application:TApplication
 004A58C8    mov         eax,dword ptr [eax+44]
 004A58CB    cmp         dword ptr [eax+248],0
>004A58D2    je          004A5976
 004A58D8    mov         eax,[00571E3C];Application:TApplication
 004A58DD    mov         eax,dword ptr [eax+44]
 004A58E0    cmp         eax,dword ptr [ebp-4]
>004A58E3    je          004A5976
 004A58E9    mov         eax,dword ptr [ebp-4]
 004A58EC    cmp         byte ptr [eax+22F],1
>004A58F3    je          004A5906
 004A58F5    mov         eax,[00571E3C];Application:TApplication
 004A58FA    mov         eax,dword ptr [eax+44]
 004A58FD    cmp         byte ptr [eax+22F],2
>004A5904    je          004A5976
 004A5906    xor         eax,eax
 004A5908    mov         dword ptr [ebp-0C],eax
 004A590B    mov         eax,dword ptr [ebp-4]
 004A590E    test        byte ptr [eax+1C],10
>004A5912    jne         004A5947
 004A5914    mov         eax,dword ptr [ebp-4]
 004A5917    cmp         dword ptr [eax+248],0
>004A591E    je          004A5947
 004A5920    mov         eax,dword ptr [ebp-4]
 004A5923    mov         eax,dword ptr [eax+248]
 004A5929    cmp         byte ptr [eax+5C],0
>004A592D    jne         004A593B
 004A592F    mov         eax,dword ptr [ebp-4]
 004A5932    cmp         byte ptr [eax+22F],1
>004A5939    jne         004A5947
 004A593B    mov         eax,dword ptr [ebp-4]
 004A593E    mov         eax,dword ptr [eax+248]
 004A5944    mov         dword ptr [ebp-0C],eax
 004A5947    mov         eax,[00571E3C];Application:TApplication
 004A594C    mov         eax,dword ptr [eax+44]
 004A594F    mov         eax,dword ptr [eax+248]
 004A5955    mov         dword ptr [ebp-10],eax
 004A5958    cmp         byte ptr [ebp-5],0
>004A595C    je          004A596B
 004A595E    mov         edx,dword ptr [ebp-0C]
 004A5961    mov         eax,dword ptr [ebp-10]
 004A5964    call        0049D418
>004A5969    jmp         004A5976
 004A596B    mov         edx,dword ptr [ebp-0C]
 004A596E    mov         eax,dword ptr [ebp-10]
 004A5971    call        0049D450
 004A5976    mov         esp,ebp
 004A5978    pop         ebp
 004A5979    ret
*}
end;

//004A597C
{*procedure sub_004A597C(?:?; ?:TWinControl; ?:?);
begin
 004A597C    push        ebp
 004A597D    mov         ebp,esp
 004A597F    add         esp,0FFFFFFF4
 004A5982    mov         dword ptr [ebp-0C],ecx
 004A5985    mov         dword ptr [ebp-8],edx
 004A5988    mov         dword ptr [ebp-4],eax
 004A598B    cmp         dword ptr [ebp-8],0
>004A598F    je          004A59DB
>004A5991    jmp         004A599C
 004A5993    mov         eax,dword ptr [ebp-8]
 004A5996    mov         eax,dword ptr [eax+30]
 004A5999    mov         dword ptr [ebp-8],eax
 004A599C    mov         eax,dword ptr [ebp-8]
 004A599F    cmp         dword ptr [eax+30],0
>004A59A3    je          004A59B7
 004A59A5    mov         eax,dword ptr [ebp-8]
 004A59A8    mov         edx,dword ptr ds:[49EC6C];TCustomForm
 004A59AE    call        @IsClass
 004A59B3    test        al,al
>004A59B5    je          004A5993
 004A59B7    cmp         dword ptr [ebp-8],0
>004A59BB    je          004A59DB
 004A59BD    mov         eax,dword ptr [ebp-8]
 004A59C0    cmp         eax,dword ptr [ebp-0C]
>004A59C3    je          004A59DB
 004A59C5    push        0
 004A59C7    push        0
 004A59C9    mov         eax,dword ptr [ebp-4]
 004A59CC    push        eax
 004A59CD    mov         eax,dword ptr [ebp-8]
 004A59D0    call        TWinControl.GetHandle
 004A59D5    push        eax
 004A59D6    call        user32.SendMessageA
 004A59DB    mov         esp,ebp
 004A59DD    pop         ebp
 004A59DE    ret
end;*}

//004A59E0
procedure TCustomForm.sub_004A59E0;
begin
{*
 004A59E0    push        ebp
 004A59E1    mov         ebp,esp
 004A59E3    push        ecx
 004A59E4    push        ebx
 004A59E5    mov         dword ptr [ebp-4],eax
 004A59E8    mov         ecx,dword ptr [ebp-4]
 004A59EB    mov         eax,dword ptr [ebp-4]
 004A59EE    mov         edx,dword ptr [eax+220];TCustomForm.FActiveControl:TWinControl
 004A59F4    mov         eax,0B000
 004A59F9    call        004A597C
 004A59FE    mov         eax,dword ptr [ebp-4]
 004A5A01    cmp         word ptr [eax+28A],0;TCustomForm.?f28A:word
>004A5A09    je          004A5A1D
 004A5A0B    mov         ebx,dword ptr [ebp-4]
 004A5A0E    mov         edx,dword ptr [ebp-4]
 004A5A11    mov         eax,dword ptr [ebx+28C];TCustomForm.?f28C:dword
 004A5A17    call        dword ptr [ebx+288];TCustomForm.FOnActivate
 004A5A1D    pop         ebx
 004A5A1E    pop         ecx
 004A5A1F    pop         ebp
 004A5A20    ret
*}
end;

//004A5A24
procedure TCustomForm.sub_004A5A24;
begin
{*
 004A5A24    push        ebp
 004A5A25    mov         ebp,esp
 004A5A27    push        ecx
 004A5A28    push        ebx
 004A5A29    mov         dword ptr [ebp-4],eax
 004A5A2C    mov         ecx,dword ptr [ebp-4]
 004A5A2F    mov         eax,dword ptr [ebp-4]
 004A5A32    mov         edx,dword ptr [eax+220];TCustomForm.FActiveControl:TWinControl
 004A5A38    mov         eax,0B001
 004A5A3D    call        004A597C
 004A5A42    mov         eax,dword ptr [ebp-4]
 004A5A45    cmp         word ptr [eax+2A2],0;TCustomForm.?f2A2:word
>004A5A4D    je          004A5A61
 004A5A4F    mov         ebx,dword ptr [ebp-4]
 004A5A52    mov         edx,dword ptr [ebp-4]
 004A5A55    mov         eax,dword ptr [ebx+2A4];TCustomForm.?f2A4:dword
 004A5A5B    call        dword ptr [ebx+2A0];TCustomForm.FOnDeactivate
 004A5A61    pop         ebx
 004A5A62    pop         ecx
 004A5A63    pop         ebp
 004A5A64    ret
*}
end;

//004A5A68
procedure TCustomForm.sub_004A5A68;
begin
{*
 004A5A68    push        ebp
 004A5A69    mov         ebp,esp
 004A5A6B    push        ecx
 004A5A6C    push        ebx
 004A5A6D    mov         dword ptr [ebp-4],eax
 004A5A70    mov         eax,dword ptr [ebp-4]
 004A5A73    cmp         word ptr [eax+2BA],0;TCustomForm.?f2BA:word
>004A5A7B    je          004A5A8F
 004A5A7D    mov         ebx,dword ptr [ebp-4]
 004A5A80    mov         edx,dword ptr [ebp-4]
 004A5A83    mov         eax,dword ptr [ebx+2BC];TCustomForm.?f2BC:dword
 004A5A89    call        dword ptr [ebx+2B8];TCustomForm.FOnPaint
 004A5A8F    pop         ebx
 004A5A90    pop         ecx
 004A5A91    pop         ebp
 004A5A92    ret
*}
end;

//004A5A94
{*function sub_004A5A94(?:TCustomForm):?;
begin
 004A5A94    push        ebp
 004A5A95    mov         ebp,esp
 004A5A97    add         esp,0FFFFFFF8
 004A5A9A    mov         dword ptr [ebp-4],eax
 004A5A9D    mov         eax,dword ptr [ebp-4]
 004A5AA0    mov         eax,dword ptr [eax+240];TCustomForm.FIcon:TIcon
 004A5AA6    call        00436708
 004A5AAB    mov         dword ptr [ebp-8],eax
 004A5AAE    cmp         dword ptr [ebp-8],0
>004A5AB2    jne         004A5AC1
 004A5AB4    mov         eax,[00571E3C];0x0 Application:TApplication
 004A5AB9    call        004AAE0C
 004A5ABE    mov         dword ptr [ebp-8],eax
 004A5AC1    mov         eax,dword ptr [ebp-8]
 004A5AC4    pop         ecx
 004A5AC5    pop         ecx
 004A5AC6    pop         ebp
 004A5AC7    ret
end;*}

//004A5AC8
{*procedure sub_004A5AC8(?:?);
begin
 004A5AC8    push        ebp
 004A5AC9    mov         ebp,esp
 004A5ACB    add         esp,0FFFFFFF8
 004A5ACE    push        esi
 004A5ACF    mov         dword ptr [ebp-8],edx
 004A5AD2    mov         dword ptr [ebp-4],eax
 004A5AD5    mov         eax,dword ptr [ebp-4]
 004A5AD8    mov         eax,dword ptr [eax+238];TCustomForm.FCanvas:TControlCanvas
 004A5ADE    call        TCanvas.Lock
 004A5AE3    xor         eax,eax
 004A5AE5    push        ebp
 004A5AE6    push        4A5B79
 004A5AEB    push        dword ptr fs:[eax]
 004A5AEE    mov         dword ptr fs:[eax],esp
 004A5AF1    mov         eax,dword ptr [ebp-4]
 004A5AF4    mov         eax,dword ptr [eax+238];TCustomForm.FCanvas:TControlCanvas
 004A5AFA    mov         edx,dword ptr [ebp-8]
 004A5AFD    call        TCanvas.SetHandle
 004A5B02    xor         eax,eax
 004A5B04    push        ebp
 004A5B05    push        4A5B56
 004A5B0A    push        dword ptr fs:[eax]
 004A5B0D    mov         dword ptr fs:[eax],esp
 004A5B10    mov         eax,dword ptr [ebp-4]
 004A5B13    cmp         dword ptr [eax+250],0;TCustomForm.FDesigner:IDesignerHook
>004A5B1A    je          004A5B2C
 004A5B1C    mov         eax,dword ptr [ebp-4]
 004A5B1F    mov         eax,dword ptr [eax+250];TCustomForm.FDesigner:IDesignerHook
 004A5B25    mov         edx,dword ptr [eax]
 004A5B27    call        dword ptr [edx+28]
>004A5B2A    jmp         004A5B38
 004A5B2C    mov         eax,dword ptr [ebp-4]
 004A5B2F    mov         si,0FFAC
 004A5B33    call        @CallDynaInst;TCustomForm.sub_004A5A68
 004A5B38    xor         eax,eax
 004A5B3A    pop         edx
 004A5B3B    pop         ecx
 004A5B3C    pop         ecx
 004A5B3D    mov         dword ptr fs:[eax],edx
 004A5B40    push        4A5B5D
 004A5B45    mov         eax,dword ptr [ebp-4]
 004A5B48    mov         eax,dword ptr [eax+238];TCustomForm.FCanvas:TControlCanvas
 004A5B4E    xor         edx,edx
 004A5B50    call        TCanvas.SetHandle
 004A5B55    ret
>004A5B56    jmp         @HandleFinally
>004A5B5B    jmp         004A5B45
 004A5B5D    xor         eax,eax
 004A5B5F    pop         edx
 004A5B60    pop         ecx
 004A5B61    pop         ecx
 004A5B62    mov         dword ptr fs:[eax],edx
 004A5B65    push        4A5B80
 004A5B6A    mov         eax,dword ptr [ebp-4]
 004A5B6D    mov         eax,dword ptr [eax+238];TCustomForm.FCanvas:TControlCanvas
 004A5B73    call        TCanvas.Unlock
 004A5B78    ret
>004A5B79    jmp         @HandleFinally
>004A5B7E    jmp         004A5B6A
 004A5B80    pop         esi
 004A5B81    pop         ecx
 004A5B82    pop         ecx
 004A5B83    pop         ebp
 004A5B84    ret
end;*}

//004A5B88
{*procedure TCustomForm.sub_0048251C(?:?);
begin
 004A5B88    push        ebp
 004A5B89    mov         ebp,esp
 004A5B8B    add         esp,0FFFFFFE8
 004A5B8E    push        esi
 004A5B8F    mov         byte ptr [ebp-5],dl
 004A5B92    mov         dword ptr [ebp-4],eax
 004A5B95    mov         byte ptr [ebp-6],0
 004A5B99    mov         eax,dword ptr [ebp-4]
 004A5B9C    call        004A3E58
 004A5BA1    mov         dword ptr [ebp-10],eax
 004A5BA4    cmp         dword ptr [ebp-10],0
>004A5BA8    je          004A5BBC
 004A5BAA    mov         dl,byte ptr [ebp-5]
 004A5BAD    mov         eax,dword ptr [ebp-10]
 004A5BB0    mov         si,0FFD1
 004A5BB4    call        @CallDynaInst
 004A5BB9    mov         byte ptr [ebp-6],al
 004A5BBC    mov         eax,dword ptr [ebp-4]
 004A5BBF    call        TCustomForm.GetMDIChildCount
 004A5BC4    dec         eax
 004A5BC5    test        eax,eax
>004A5BC7    jl          004A5C0F
 004A5BC9    inc         eax
 004A5BCA    mov         dword ptr [ebp-18],eax
 004A5BCD    mov         dword ptr [ebp-0C],0
 004A5BD4    mov         al,byte ptr [ebp-5]
 004A5BD7    and         al,byte ptr [ebp-6]
>004A5BDA    jne         004A5C25
 004A5BDC    mov         edx,dword ptr [ebp-0C]
 004A5BDF    mov         eax,dword ptr [ebp-4]
 004A5BE2    call        004A3F10
 004A5BE7    mov         dword ptr [ebp-14],eax
 004A5BEA    mov         eax,dword ptr [ebp-10]
 004A5BED    cmp         eax,dword ptr [ebp-14]
>004A5BF0    je          004A5C07
 004A5BF2    mov         dl,byte ptr [ebp-5]
 004A5BF5    mov         eax,dword ptr [ebp-14]
 004A5BF8    mov         si,0FFD1
 004A5BFC    call        @CallDynaInst
 004A5C01    or          al,byte ptr [ebp-6]
 004A5C04    mov         byte ptr [ebp-6],al
 004A5C07    inc         dword ptr [ebp-0C]
 004A5C0A    dec         dword ptr [ebp-18]
>004A5C0D    jne         004A5BD4
 004A5C0F    mov         al,byte ptr [ebp-5]
 004A5C12    and         al,byte ptr [ebp-6]
>004A5C15    jne         004A5C25
 004A5C17    mov         dl,byte ptr [ebp-5]
 004A5C1A    mov         eax,dword ptr [ebp-4]
 004A5C1D    call        TWinControl.sub_0048251C
 004A5C22    mov         byte ptr [ebp-6],al
 004A5C25    mov         al,byte ptr [ebp-6]
 004A5C28    pop         esi
 004A5C29    mov         esp,ebp
 004A5C2B    pop         ebp
 004A5C2C    ret
end;*}

//004A5C30
procedure TCustomForm.WMPaint(Message:TWMPaint);
begin
{*
 004A5C30    push        ebp
 004A5C31    mov         ebp,esp
 004A5C33    add         esp,0FFFFFFB4
 004A5C36    mov         dword ptr [ebp-8],edx
 004A5C39    mov         dword ptr [ebp-4],eax
 004A5C3C    mov         eax,dword ptr [ebp-4]
 004A5C3F    call        TWinControl.GetHandle
 004A5C44    push        eax
 004A5C45    call        user32.IsIconic
 004A5C4A    test        eax,eax
>004A5C4C    jne         004A5C85
 004A5C4E    mov         ax,[004A5CC8];0x100 gvar_004A5CC8
 004A5C54    mov         edx,dword ptr [ebp-4]
 004A5C57    or          ax,word ptr [edx+54];TCustomForm.FControlState:TControlState
 004A5C5B    mov         edx,dword ptr [ebp-4]
 004A5C5E    mov         word ptr [edx+54],ax;TCustomForm.FControlState:TControlState
 004A5C62    mov         edx,dword ptr [ebp-8]
 004A5C65    mov         eax,dword ptr [ebp-4]
 004A5C68    call        TWinControl.WMPaint
 004A5C6D    mov         ax,[004A5CC8];0x100 gvar_004A5CC8
 004A5C73    mov         edx,dword ptr [ebp-4]
 004A5C76    not         eax
 004A5C78    and         ax,word ptr [edx+54];TCustomForm.FControlState:TControlState
 004A5C7C    mov         edx,dword ptr [ebp-4]
 004A5C7F    mov         word ptr [edx+54],ax;TCustomForm.FControlState:TControlState
>004A5C83    jmp         004A5CC2
 004A5C85    lea         eax,[ebp-4C]
 004A5C88    push        eax
 004A5C89    mov         eax,dword ptr [ebp-4]
 004A5C8C    call        TWinControl.GetHandle
 004A5C91    push        eax
 004A5C92    call        user32.BeginPaint
 004A5C97    mov         dword ptr [ebp-0C],eax
 004A5C9A    mov         eax,dword ptr [ebp-4]
 004A5C9D    call        004A5A94
 004A5CA2    push        eax
 004A5CA3    push        0
 004A5CA5    push        0
 004A5CA7    mov         eax,dword ptr [ebp-0C]
 004A5CAA    push        eax
 004A5CAB    call        user32.DrawIcon
 004A5CB0    lea         eax,[ebp-4C]
 004A5CB3    push        eax
 004A5CB4    mov         eax,dword ptr [ebp-4]
 004A5CB7    call        TWinControl.GetHandle
 004A5CBC    push        eax
 004A5CBD    call        user32.EndPaint
 004A5CC2    mov         esp,ebp
 004A5CC4    pop         ebp
 004A5CC5    ret
*}
end;

//004A5CCC
{*procedure TCustomForm.WMEraseBkgnd(?:?);
begin
 004A5CCC    push        ebp
 004A5CCD    mov         ebp,esp
 004A5CCF    add         esp,0FFFFFFE8
 004A5CD2    mov         dword ptr [ebp-8],edx
 004A5CD5    mov         dword ptr [ebp-4],eax
 004A5CD8    mov         eax,dword ptr [ebp-4]
 004A5CDB    cmp         byte ptr [eax+22F],1;TCustomForm.FFormStyle:TFormStyle
>004A5CE2    jne         004A5D35
 004A5CE4    mov         eax,dword ptr [ebp-4]
 004A5CE7    cmp         byte ptr [eax+22F],1;TCustomForm.FFormStyle:TFormStyle
>004A5CEE    jne         004A5D2A
 004A5CF0    mov         eax,dword ptr [ebp-4]
 004A5CF3    test        byte ptr [eax+1C],10;TCustomForm.FComponentState:TComponentState
>004A5CF7    jne         004A5D2A
 004A5CF9    mov         eax,[00571E3C];0x0 Application:TApplication
 004A5CFE    mov         eax,dword ptr [eax+44];TApplication.FMainForm:TForm
 004A5D01    mov         eax,dword ptr [eax+170];TForm.FBrush:TBrush
 004A5D07    call        TBrush.GetHandle
 004A5D0C    push        eax
 004A5D0D    lea         edx,[ebp-18]
 004A5D10    mov         eax,dword ptr [ebp-4]
 004A5D13    mov         ecx,dword ptr [eax]
 004A5D15    call        dword ptr [ecx+44];TCustomForm.sub_004A2F78
 004A5D18    lea         eax,[ebp-18]
 004A5D1B    push        eax
 004A5D1C    mov         eax,dword ptr [ebp-8]
 004A5D1F    mov         eax,dword ptr [eax+4]
 004A5D22    push        eax
 004A5D23    call        user32.FillRect
>004A5D28    jmp         004A5D35
 004A5D2A    mov         edx,dword ptr [ebp-8]
 004A5D2D    mov         eax,dword ptr [ebp-4]
 004A5D30    mov         ecx,dword ptr [eax]
 004A5D32    call        dword ptr [ecx-10];TCustomForm.DefaultHandler
 004A5D35    mov         esp,ebp
 004A5D37    pop         ebp
 004A5D38    ret
end;*}

//004A5D3C
{*procedure TCustomForm.WMEraseBkgnd(?:?);
begin
 004A5D3C    push        ebp
 004A5D3D    mov         ebp,esp
 004A5D3F    add         esp,0FFFFFFF8
 004A5D42    mov         dword ptr [ebp-8],edx
 004A5D45    mov         dword ptr [ebp-4],eax
 004A5D48    mov         eax,dword ptr [ebp-4]
 004A5D4B    call        TWinControl.GetHandle
 004A5D50    push        eax
 004A5D51    call        user32.IsIconic
 004A5D56    test        eax,eax
>004A5D58    jne         004A5D67
 004A5D5A    mov         edx,dword ptr [ebp-8]
 004A5D5D    mov         eax,dword ptr [ebp-4]
 004A5D60    call        TWinControl.WMEraseBkgnd
>004A5D65    jmp         004A5D7B
 004A5D67    mov         eax,dword ptr [ebp-8]
 004A5D6A    mov         dword ptr [eax],27
 004A5D70    mov         edx,dword ptr [ebp-8]
 004A5D73    mov         eax,dword ptr [ebp-4]
 004A5D76    mov         ecx,dword ptr [eax]
 004A5D78    call        dword ptr [ecx-10];TCustomForm.DefaultHandler
 004A5D7B    pop         ecx
 004A5D7C    pop         ecx
 004A5D7D    pop         ebp
 004A5D7E    ret
end;*}

//004A5D80
{*procedure TCustomForm.WMQueryDragIcon(?:?);
begin
 004A5D80    push        ebp
 004A5D81    mov         ebp,esp
 004A5D83    add         esp,0FFFFFFF8
 004A5D86    mov         dword ptr [ebp-8],edx
 004A5D89    mov         dword ptr [ebp-4],eax
 004A5D8C    mov         eax,dword ptr [ebp-4]
 004A5D8F    call        004A5A94
 004A5D94    mov         edx,dword ptr [ebp-8]
 004A5D97    mov         dword ptr [edx+0C],eax
 004A5D9A    pop         ecx
 004A5D9B    pop         ecx
 004A5D9C    pop         ebp
 004A5D9D    ret
end;*}

//004A5DA0
{*procedure sub_004A5DA0(?:?);
begin
 004A5DA0    push        ebp
 004A5DA1    mov         ebp,esp
 004A5DA3    push        ecx
 004A5DA4    mov         eax,dword ptr [ebp+8]
 004A5DA7    mov         eax,dword ptr [eax-4]
 004A5DAA    cmp         byte ptr [eax+229],0
>004A5DB1    je          004A5EB2
 004A5DB7    mov         eax,dword ptr [ebp+8]
 004A5DBA    mov         eax,dword ptr [eax-4]
 004A5DBD    test        byte ptr [eax+228],1
>004A5DC4    je          004A5EB2
 004A5DCA    mov         eax,dword ptr [ebp+8]
 004A5DCD    mov         eax,dword ptr [eax-4]
 004A5DD0    cmp         byte ptr [eax+22F],1
>004A5DD7    je          004A5EB2
 004A5DDD    push        0
 004A5DDF    mov         eax,dword ptr [ebp+8]
 004A5DE2    mov         eax,dword ptr [eax-4]
 004A5DE5    call        TWinControl.GetHandle
 004A5DEA    push        eax
 004A5DEB    call        user32.GetSystemMenu
 004A5DF0    mov         dword ptr [ebp-4],eax
 004A5DF3    mov         eax,dword ptr [ebp+8]
 004A5DF6    mov         eax,dword ptr [eax-4]
 004A5DF9    cmp         byte ptr [eax+229],3
>004A5E00    jne         004A5E74
 004A5E02    push        0
 004A5E04    push        0F130
 004A5E09    mov         eax,dword ptr [ebp-4]
 004A5E0C    push        eax
 004A5E0D    call        user32.DeleteMenu
 004A5E12    push        400
 004A5E17    push        7
 004A5E19    mov         eax,dword ptr [ebp-4]
 004A5E1C    push        eax
 004A5E1D    call        user32.DeleteMenu
 004A5E22    push        400
 004A5E27    push        5
 004A5E29    mov         eax,dword ptr [ebp-4]
 004A5E2C    push        eax
 004A5E2D    call        user32.DeleteMenu
 004A5E32    push        0
 004A5E34    push        0F030
 004A5E39    mov         eax,dword ptr [ebp-4]
 004A5E3C    push        eax
 004A5E3D    call        user32.DeleteMenu
 004A5E42    push        0
 004A5E44    push        0F020
 004A5E49    mov         eax,dword ptr [ebp-4]
 004A5E4C    push        eax
 004A5E4D    call        user32.DeleteMenu
 004A5E52    push        0
 004A5E54    push        0F000
 004A5E59    mov         eax,dword ptr [ebp-4]
 004A5E5C    push        eax
 004A5E5D    call        user32.DeleteMenu
 004A5E62    push        0
 004A5E64    push        0F120
 004A5E69    mov         eax,dword ptr [ebp-4]
 004A5E6C    push        eax
 004A5E6D    call        user32.DeleteMenu
>004A5E72    jmp         004A5EB2
 004A5E74    mov         eax,dword ptr [ebp+8]
 004A5E77    mov         eax,dword ptr [eax-4]
 004A5E7A    test        byte ptr [eax+228],2
>004A5E81    jne         004A5E93
 004A5E83    push        1
 004A5E85    push        0F020
 004A5E8A    mov         eax,dword ptr [ebp-4]
 004A5E8D    push        eax
 004A5E8E    call        user32.EnableMenuItem
 004A5E93    mov         eax,dword ptr [ebp+8]
 004A5E96    mov         eax,dword ptr [eax-4]
 004A5E99    test        byte ptr [eax+228],4
>004A5EA0    jne         004A5EB2
 004A5EA2    push        1
 004A5EA4    push        0F030
 004A5EA9    mov         eax,dword ptr [ebp-4]
 004A5EAC    push        eax
 004A5EAD    call        user32.EnableMenuItem
 004A5EB2    pop         ecx
 004A5EB3    pop         ebp
 004A5EB4    ret
end;*}

//004A5EB8
{*procedure TCustomForm.WMNCCreate(?:?);
begin
 004A5EB8    push        ebp
 004A5EB9    mov         ebp,esp
 004A5EBB    add         esp,0FFFFFFF8
 004A5EBE    mov         dword ptr [ebp-8],edx
 004A5EC1    mov         dword ptr [ebp-4],eax
 004A5EC4    mov         edx,dword ptr [ebp-8]
 004A5EC7    mov         eax,dword ptr [ebp-4]
 004A5ECA    mov         ecx,dword ptr [eax]
 004A5ECC    call        dword ptr [ecx-10];TCustomForm.DefaultHandler
 004A5ECF    mov         eax,dword ptr [ebp-4]
 004A5ED2    mov         edx,dword ptr [eax+248];TCustomForm.FMenu:TMainMenu
 004A5ED8    mov         eax,dword ptr [ebp-4]
 004A5EDB    call        TForm.SetMenu
 004A5EE0    mov         eax,dword ptr [ebp-4]
 004A5EE3    test        byte ptr [eax+1C],10;TCustomForm.FComponentState:TComponentState
>004A5EE7    jne         004A5EF0
 004A5EE9    push        ebp
 004A5EEA    call        004A5DA0
 004A5EEF    pop         ecx
 004A5EF0    pop         ecx
 004A5EF1    pop         ecx
 004A5EF2    pop         ebp
 004A5EF3    ret
end;*}

//004A5EF4
{*procedure TCustomForm.WMNCLButtonDown(?:?);
begin
 004A5EF4    push        ebp
 004A5EF5    mov         ebp,esp
 004A5EF7    add         esp,0FFFFFFF8
 004A5EFA    mov         dword ptr [ebp-8],edx
 004A5EFD    mov         dword ptr [ebp-4],eax
 004A5F00    mov         eax,dword ptr [ebp-8]
 004A5F03    cmp         dword ptr [eax+4],2
>004A5F07    jne         004A5F95
 004A5F0D    mov         eax,dword ptr [ebp-4]
 004A5F10    cmp         byte ptr [eax+9B],1;TCustomForm.FDragKind:TDragKind
>004A5F17    jne         004A5F95
 004A5F19    mov         eax,dword ptr [ebp-4]
 004A5F1C    test        byte ptr [eax+1C],10;TCustomForm.FComponentState:TComponentState
>004A5F20    jne         004A5F95
 004A5F22    mov         eax,dword ptr [ebp-4]
 004A5F25    call        TWinControl.GetHandle
 004A5F2A    push        eax
 004A5F2B    call        user32.IsIconic
 004A5F30    test        eax,eax
>004A5F32    jne         004A5F95
 004A5F34    push        7
 004A5F36    push        0
 004A5F38    push        0
 004A5F3A    push        0
 004A5F3C    push        0
 004A5F3E    push        0
 004A5F40    mov         eax,dword ptr [ebp-4]
 004A5F43    call        TWinControl.GetHandle
 004A5F48    push        eax
 004A5F49    call        user32.SetWindowPos
 004A5F4E    mov         eax,dword ptr [ebp-8]
 004A5F51    mov         eax,dword ptr [eax+8]
 004A5F54    push        eax
 004A5F55    mov         eax,dword ptr [ebp-8]
 004A5F58    mov         eax,dword ptr [eax+4]
 004A5F5B    push        eax
 004A5F5C    push        0A2
 004A5F61    mov         eax,dword ptr [ebp-4]
 004A5F64    call        TWinControl.GetHandle
 004A5F69    push        eax
 004A5F6A    call        user32.PostMessageA
 004A5F6F    mov         eax,dword ptr [ebp-4]
 004A5F72    cmp         byte ptr [eax+22E],0;TCustomForm.FActive:Boolean
>004A5F79    je          004A5FA0
 004A5F7B    mov         eax,dword ptr [ebp-4]
 004A5F7E    mov         edx,dword ptr [eax]
 004A5F80    call        dword ptr [edx+54];TCustomForm.sub_004A30A0
 004A5F83    mov         edx,eax
 004A5F85    xor         dl,1
 004A5F88    or          ecx,0FFFFFFFF
 004A5F8B    mov         eax,dword ptr [ebp-4]
 004A5F8E    call        004841E0
>004A5F93    jmp         004A5FA0
 004A5F95    mov         edx,dword ptr [ebp-8]
 004A5F98    mov         eax,dword ptr [ebp-4]
 004A5F9B    call        TControl.WMNCLButtonDown
 004A5FA0    pop         ecx
 004A5FA1    pop         ecx
 004A5FA2    pop         ebp
 004A5FA3    ret
end;*}

//004A5FA4
{*procedure TCustomForm.WMDestroy(?:?);
begin
 004A5FA4    push        ebp
 004A5FA5    mov         ebp,esp
 004A5FA7    add         esp,0FFFFFFF8
 004A5FAA    mov         dword ptr [ebp-8],edx
 004A5FAD    mov         dword ptr [ebp-4],eax
 004A5FB0    mov         eax,[0056E264];^NewStyleControls:Boolean
 004A5FB5    cmp         byte ptr [eax],0
>004A5FB8    je          004A5FD1
 004A5FBA    push        0
 004A5FBC    push        1
 004A5FBE    push        80
 004A5FC3    mov         eax,dword ptr [ebp-4]
 004A5FC6    call        TWinControl.GetHandle
 004A5FCB    push        eax
 004A5FCC    call        user32.SendMessageA
 004A5FD1    mov         eax,dword ptr [ebp-4]
 004A5FD4    cmp         dword ptr [eax+248],0;TCustomForm.FMenu:TMainMenu
>004A5FDB    je          004A6009
 004A5FDD    mov         eax,dword ptr [ebp-4]
 004A5FE0    cmp         byte ptr [eax+22F],1;TCustomForm.FFormStyle:TFormStyle
>004A5FE7    je          004A6009
 004A5FE9    push        0
 004A5FEB    mov         eax,dword ptr [ebp-4]
 004A5FEE    call        TWinControl.GetHandle
 004A5FF3    push        eax
 004A5FF4    call        user32.SetMenu
 004A5FF9    xor         edx,edx
 004A5FFB    mov         eax,dword ptr [ebp-4]
 004A5FFE    mov         eax,dword ptr [eax+248];TCustomForm.FMenu:TMainMenu
 004A6004    call        0049CBA0
 004A6009    mov         edx,dword ptr [ebp-8]
 004A600C    mov         eax,dword ptr [ebp-4]
 004A600F    call        TWinControl.WMDestroy
 004A6014    pop         ecx
 004A6015    pop         ecx
 004A6016    pop         ebp
 004A6017    ret
end;*}

//004A6018
{*procedure TCustomForm.WMCommand(?:?);
begin
 004A6018    push        ebp
 004A6019    mov         ebp,esp
 004A601B    add         esp,0FFFFFFF8
 004A601E    mov         dword ptr [ebp-8],edx
 004A6021    mov         dword ptr [ebp-4],eax
 004A6024    mov         eax,dword ptr [ebp-8]
 004A6027    cmp         dword ptr [eax+8],0
>004A602B    jne         004A6052
 004A602D    mov         eax,dword ptr [ebp-4]
 004A6030    cmp         dword ptr [eax+248],0;TCustomForm.FMenu:TMainMenu
>004A6037    je          004A6052
 004A6039    mov         edx,dword ptr [ebp-8]
 004A603C    mov         dx,word ptr [edx+4]
 004A6040    mov         eax,dword ptr [ebp-4]
 004A6043    mov         eax,dword ptr [eax+248];TCustomForm.FMenu:TMainMenu
 004A6049    call        0049C458
 004A604E    test        al,al
>004A6050    jne         004A605D
 004A6052    mov         edx,dword ptr [ebp-8]
 004A6055    mov         eax,dword ptr [ebp-4]
 004A6058    call        TWinControl.WMCommand
 004A605D    pop         ecx
 004A605E    pop         ecx
 004A605F    pop         ebp
 004A6060    ret
end;*}

//004A6064
{*procedure TCustomForm.WMInitMenuPopup(?:?);
begin
 004A6064    push        ebp
 004A6065    mov         ebp,esp
 004A6067    add         esp,0FFFFFFF8
 004A606A    mov         dword ptr [ebp-8],edx
 004A606D    mov         dword ptr [ebp-4],eax
 004A6070    mov         eax,dword ptr [ebp-4]
 004A6073    cmp         dword ptr [eax+248],0;TCustomForm.FMenu:TMainMenu
>004A607A    je          004A6090
 004A607C    mov         edx,dword ptr [ebp-8]
 004A607F    mov         edx,dword ptr [edx+4]
 004A6082    mov         eax,dword ptr [ebp-4]
 004A6085    mov         eax,dword ptr [eax+248];TCustomForm.FMenu:TMainMenu
 004A608B    call        0049C494
 004A6090    pop         ecx
 004A6091    pop         ecx
 004A6092    pop         ebp
 004A6093    ret
end;*}

//004A6094
{*procedure TCustomForm.WMMenuChar(?:?);
begin
 004A6094    push        ebp
 004A6095    mov         ebp,esp
 004A6097    add         esp,0FFFFFFF8
 004A609A    mov         dword ptr [ebp-8],edx
 004A609D    mov         dword ptr [ebp-4],eax
 004A60A0    mov         eax,dword ptr [ebp-4]
 004A60A3    cmp         dword ptr [eax+248],0;TCustomForm.FMenu:TMainMenu
>004A60AA    je          004A60D3
 004A60AC    mov         edx,dword ptr [ebp-8]
 004A60AF    mov         eax,dword ptr [ebp-4]
 004A60B2    mov         eax,dword ptr [eax+248];TCustomForm.FMenu:TMainMenu
 004A60B8    call        0049CF28
 004A60BD    mov         eax,dword ptr [ebp-8]
 004A60C0    cmp         dword ptr [eax+0C],0
>004A60C4    jne         004A60DE
 004A60C6    mov         edx,dword ptr [ebp-8]
 004A60C9    mov         eax,dword ptr [ebp-4]
 004A60CC    mov         ecx,dword ptr [eax]
 004A60CE    call        dword ptr [ecx-10];TCustomForm.DefaultHandler
>004A60D1    jmp         004A60DE
 004A60D3    mov         edx,dword ptr [ebp-8]
 004A60D6    mov         eax,dword ptr [ebp-4]
 004A60D9    mov         ecx,dword ptr [eax]
 004A60DB    call        dword ptr [ecx-10];TCustomForm.DefaultHandler
 004A60DE    pop         ecx
 004A60DF    pop         ecx
 004A60E0    pop         ebp
 004A60E1    ret
end;*}

//004A60E4
{*procedure TCustomForm.WMMenuSelect(?:?);
begin
 004A60E4    push        ebp
 004A60E5    mov         ebp,esp
 004A60E7    add         esp,0FFFFFFE8
 004A60EA    xor         ecx,ecx
 004A60EC    mov         dword ptr [ebp-18],ecx
 004A60EF    mov         dword ptr [ebp-8],edx
 004A60F2    mov         dword ptr [ebp-4],eax
 004A60F5    xor         eax,eax
 004A60F7    push        ebp
 004A60F8    push        4A61B7
 004A60FD    push        dword ptr fs:[eax]
 004A6100    mov         dword ptr fs:[eax],esp
 004A6103    mov         eax,dword ptr [ebp-4]
 004A6106    cmp         dword ptr [eax+248],0;TCustomForm.FMenu:TMainMenu
>004A610D    je          004A61A1
 004A6113    xor         eax,eax
 004A6115    mov         dword ptr [ebp-0C],eax
 004A6118    mov         eax,dword ptr [ebp-8]
 004A611B    cmp         word ptr [eax+6],0FFFF
>004A6121    jne         004A612D
 004A6123    mov         eax,dword ptr [ebp-8]
 004A6126    cmp         word ptr [eax+4],0
>004A612B    je          004A6172
 004A612D    mov         byte ptr [ebp-11],0
 004A6131    mov         eax,dword ptr [ebp-8]
 004A6134    movzx       eax,word ptr [eax+4]
 004A6138    mov         dword ptr [ebp-10],eax
 004A613B    mov         eax,dword ptr [ebp-8]
 004A613E    test        byte ptr [eax+6],10
>004A6142    je          004A615B
 004A6144    mov         byte ptr [ebp-11],1
 004A6148    mov         eax,dword ptr [ebp-10]
 004A614B    push        eax
 004A614C    mov         eax,dword ptr [ebp-8]
 004A614F    mov         eax,dword ptr [eax+8]
 004A6152    push        eax
 004A6153    call        user32.GetSubMenu
 004A6158    mov         dword ptr [ebp-10],eax
 004A615B    mov         cl,byte ptr [ebp-11]
 004A615E    mov         edx,dword ptr [ebp-10]
 004A6161    mov         eax,dword ptr [ebp-4]
 004A6164    mov         eax,dword ptr [eax+248];TCustomForm.FMenu:TMainMenu
 004A616A    call        0049C384
 004A616F    mov         dword ptr [ebp-0C],eax
 004A6172    cmp         dword ptr [ebp-0C],0
>004A6176    je          004A6195
 004A6178    lea         edx,[ebp-18]
 004A617B    mov         eax,dword ptr [ebp-0C]
 004A617E    mov         eax,dword ptr [eax+58]
 004A6181    call        0047FA98
 004A6186    mov         edx,dword ptr [ebp-18]
 004A6189    mov         eax,[00571E3C];0x0 Application:TApplication
 004A618E    call        004AC264
>004A6193    jmp         004A61A1
 004A6195    xor         edx,edx
 004A6197    mov         eax,[00571E3C];0x0 Application:TApplication
 004A619C    call        004AC264
 004A61A1    xor         eax,eax
 004A61A3    pop         edx
 004A61A4    pop         ecx
 004A61A5    pop         ecx
 004A61A6    mov         dword ptr fs:[eax],edx
 004A61A9    push        4A61BE
 004A61AE    lea         eax,[ebp-18]
 004A61B1    call        @LStrClr
 004A61B6    ret
>004A61B7    jmp         @HandleFinally
>004A61BC    jmp         004A61AE
 004A61BE    mov         esp,ebp
 004A61C0    pop         ebp
 004A61C1    ret
end;*}

//004A61C4
{*procedure TCustomForm.WMActivate(?:?);
begin
 004A61C4    push        ebp
 004A61C5    mov         ebp,esp
 004A61C7    add         esp,0FFFFFFF8
 004A61CA    mov         dword ptr [ebp-8],edx
 004A61CD    mov         dword ptr [ebp-4],eax
 004A61D0    mov         eax,dword ptr [ebp-4]
 004A61D3    cmp         byte ptr [eax+22F],2;TCustomForm.FFormStyle:TFormStyle
>004A61DA    jne         004A61E5
 004A61DC    mov         eax,dword ptr [ebp-4]
 004A61DF    test        byte ptr [eax+1C],10;TCustomForm.FComponentState:TComponentState
>004A61E3    je          004A61F8
 004A61E5    mov         eax,dword ptr [ebp-8]
 004A61E8    cmp         word ptr [eax+4],0
 004A61ED    setne       dl
 004A61F0    mov         eax,dword ptr [ebp-4]
 004A61F3    call        004A57A0
 004A61F8    pop         ecx
 004A61F9    pop         ecx
 004A61FA    pop         ebp
 004A61FB    ret
end;*}

//004A61FC
{*procedure sub_004A61FC(?:?);
begin
 004A61FC    push        ebp
 004A61FD    mov         ebp,esp
 004A61FF    add         esp,0FFFFFFF8
 004A6202    push        esi
 004A6203    mov         byte ptr [ebp-5],dl
 004A6206    mov         dword ptr [ebp-4],eax
 004A6209    mov         eax,dword ptr [ebp-4]
 004A620C    test        byte ptr [eax+1C],10;TCustomForm.FComponentState:TComponentState
>004A6210    jne         004A621E
 004A6212    mov         al,byte ptr [ebp-5]
 004A6215    mov         edx,dword ptr [ebp-4]
 004A6218    mov         byte ptr [edx+22B],al;TCustomForm.FWindowState:TWindowState
 004A621E    cmp         byte ptr [ebp-5],1
>004A6222    je          004A6230
 004A6224    mov         eax,dword ptr [ebp-4]
 004A6227    mov         si,0FFD0
 004A622B    call        @CallDynaInst;TCustomForm.sub_004826F8
 004A6230    mov         eax,dword ptr [ebp-4]
 004A6233    cmp         dword ptr [eax+264],0;TCustomForm.FOleForm:IOleForm
>004A623A    je          004A624A
 004A623C    mov         eax,dword ptr [ebp-4]
 004A623F    mov         eax,dword ptr [eax+264];TCustomForm.FOleForm:IOleForm
 004A6245    mov         edx,dword ptr [eax]
 004A6247    call        dword ptr [edx+10]
 004A624A    pop         esi
 004A624B    pop         ecx
 004A624C    pop         ecx
 004A624D    pop         ebp
 004A624E    ret
end;*}

//004A6250
{*procedure TCustomForm.WMClose(?:?);
begin
 004A6250    push        ebp
 004A6251    mov         ebp,esp
 004A6253    add         esp,0FFFFFFF8
 004A6256    mov         dword ptr [ebp-8],edx
 004A6259    mov         dword ptr [ebp-4],eax
 004A625C    mov         eax,dword ptr [ebp-4]
 004A625F    call        004A7264
 004A6264    pop         ecx
 004A6265    pop         ecx
 004A6266    pop         ebp
 004A6267    ret
end;*}

//004A6268
{*procedure TCustomForm.WMQueryEndSession(?:?);
begin
 004A6268    push        ebp
 004A6269    mov         ebp,esp
 004A626B    add         esp,0FFFFFFF8
 004A626E    mov         dword ptr [ebp-8],edx
 004A6271    mov         dword ptr [ebp-4],eax
 004A6274    mov         eax,dword ptr [ebp-4]
 004A6277    mov         edx,dword ptr [eax]
 004A6279    call        dword ptr [edx+0E4];TCustomForm.sub_004A7324
 004A627F    test        al,al
>004A6281    je          004A628C
 004A6283    call        00412194
 004A6288    test        al,al
>004A628A    jne         004A6290
 004A628C    xor         eax,eax
>004A628E    jmp         004A6292
 004A6290    mov         al,1
 004A6292    and         eax,7F
 004A6295    mov         edx,dword ptr [ebp-8]
 004A6298    mov         dword ptr [edx+0C],eax
 004A629B    pop         ecx
 004A629C    pop         ecx
 004A629D    pop         ebp
 004A629E    ret
end;*}

//004A62A0
{*procedure TCustomForm.CMAppSysCommand(?:?);
begin
 004A62A0    push        ebp
 004A62A1    mov         ebp,esp
 004A62A3    add         esp,0FFFFFFF4
 004A62A6    mov         dword ptr [ebp-8],edx
 004A62A9    mov         dword ptr [ebp-4],eax
 004A62AC    mov         eax,dword ptr [ebp-8]
 004A62AF    xor         edx,edx
 004A62B1    mov         dword ptr [eax+0C],edx
 004A62B4    mov         eax,dword ptr [ebp-4]
 004A62B7    test        byte ptr [eax+1C],10;TCustomForm.FComponentState:TComponentState
>004A62BB    jne         004A62E4
 004A62BD    mov         eax,dword ptr [ebp-4]
 004A62C0    cmp         byte ptr [eax+22F],1;TCustomForm.FFormStyle:TFormStyle
>004A62C7    je          004A62E4
 004A62C9    mov         eax,dword ptr [ebp-4]
 004A62CC    cmp         dword ptr [eax+248],0;TCustomForm.FMenu:TMainMenu
>004A62D3    je          004A62E4
 004A62D5    mov         eax,dword ptr [ebp-4]
 004A62D8    mov         eax,dword ptr [eax+248];TCustomForm.FMenu:TMainMenu
 004A62DE    cmp         byte ptr [eax+5C],0;TMainMenu.AutoMerge:Boolean
>004A62E2    je          004A631C
 004A62E4    mov         eax,dword ptr [ebp-8]
 004A62E7    mov         eax,dword ptr [eax+8]
 004A62EA    mov         dword ptr [ebp-0C],eax
 004A62ED    xor         edx,edx
 004A62EF    mov         eax,dword ptr [ebp-4]
 004A62F2    call        004A582C
 004A62F7    mov         eax,dword ptr [ebp-0C]
 004A62FA    movzx       ecx,word ptr [eax+8]
 004A62FE    mov         eax,dword ptr [ebp-0C]
 004A6301    mov         edx,dword ptr [eax+4]
 004A6304    mov         eax,0B017
 004A6309    call        0047F80C
 004A630E    test        eax,eax
>004A6310    je          004A631C
 004A6312    mov         eax,dword ptr [ebp-8]
 004A6315    mov         dword ptr [eax+0C],1
 004A631C    mov         esp,ebp
 004A631E    pop         ebp
 004A631F    ret
end;*}

//004A6320
{*procedure TCustomForm.WMSysCommand(?:?);
begin
 004A6320    push        ebp
 004A6321    mov         ebp,esp
 004A6323    add         esp,0FFFFFFF8
 004A6326    push        esi
 004A6327    mov         dword ptr [ebp-8],edx
 004A632A    mov         dword ptr [ebp-4],eax
 004A632D    mov         eax,dword ptr [ebp-8]
 004A6330    mov         eax,dword ptr [eax+4]
 004A6333    and         eax,0FFF0
 004A6338    cmp         eax,0F020
>004A633D    jne         004A635B
 004A633F    mov         eax,[00571E3C];0x0 Application:TApplication
 004A6344    mov         eax,dword ptr [eax+44];TApplication.FMainForm:TForm
 004A6347    cmp         eax,dword ptr [ebp-4]
>004A634A    jne         004A635B
 004A634C    mov         edx,dword ptr [ebp-8]
 004A634F    mov         eax,[00571E3C];0x0 Application:TApplication
 004A6354    call        004AA6CC
>004A6359    jmp         004A6396
 004A635B    mov         eax,dword ptr [ebp-8]
 004A635E    mov         eax,dword ptr [eax+4]
 004A6361    and         eax,0FFF0
 004A6366    cmp         eax,0F010
>004A636B    jne         004A638B
 004A636D    mov         eax,dword ptr [ebp-4]
 004A6370    test        byte ptr [eax+1C],10;TCustomForm.FComponentState:TComponentState
>004A6374    jne         004A638B
 004A6376    mov         eax,dword ptr [ebp-4]
 004A6379    cmp         byte ptr [eax+5B],0;TCustomForm.FAlign:TAlign
>004A637D    je          004A638B
 004A637F    mov         eax,dword ptr [ebp-4]
 004A6382    cmp         byte ptr [eax+22B],1;TCustomForm.FWindowState:TWindowState
>004A6389    jne         004A6396
 004A638B    mov         edx,dword ptr [ebp-8]
 004A638E    mov         eax,dword ptr [ebp-4]
 004A6391    call        TWinControl.WMSysCommand
 004A6396    mov         eax,dword ptr [ebp-8]
 004A6399    mov         eax,dword ptr [eax+4]
 004A639C    and         eax,0FFF0
 004A63A1    cmp         eax,0F020
>004A63A6    je          004A63BA
 004A63A8    mov         eax,dword ptr [ebp-8]
 004A63AB    mov         eax,dword ptr [eax+4]
 004A63AE    and         eax,0FFF0
 004A63B3    cmp         eax,0F120
>004A63B8    jne         004A63D8
 004A63BA    mov         eax,dword ptr [ebp-4]
 004A63BD    test        byte ptr [eax+1C],10;TCustomForm.FComponentState:TComponentState
>004A63C1    jne         004A63D8
 004A63C3    mov         eax,dword ptr [ebp-4]
 004A63C6    cmp         byte ptr [eax+5B],0;TCustomForm.FAlign:TAlign
>004A63CA    je          004A63D8
 004A63CC    mov         eax,dword ptr [ebp-4]
 004A63CF    mov         si,0FFD0
 004A63D3    call        @CallDynaInst;TCustomForm.sub_004826F8
 004A63D8    pop         esi
 004A63D9    pop         ecx
 004A63DA    pop         ecx
 004A63DB    pop         ebp
 004A63DC    ret
end;*}

//004A63E0
{*procedure TCustomForm.WMShowWindow(?:?);
begin
 004A63E0    push        ebp
 004A63E1    mov         ebp,esp
 004A63E3    add         esp,0FFFFFFF8
 004A63E6    mov         dword ptr [ebp-8],edx
 004A63E9    mov         dword ptr [ebp-4],eax
 004A63EC    mov         eax,dword ptr [ebp-8]
 004A63EF    mov         eax,dword ptr [eax+8]
 004A63F2    dec         eax
>004A63F3    je          004A63FF
 004A63F5    sub         eax,2
>004A63F8    je          004A6452
>004A63FA    jmp         004A648A
 004A63FF    mov         eax,dword ptr [ebp-4]
 004A6402    call        TWinControl.GetHandle
 004A6407    push        eax
 004A6408    call        user32.IsIconic
 004A640D    test        eax,eax
>004A640F    je          004A641D
 004A6411    mov         eax,dword ptr [ebp-4]
 004A6414    mov         byte ptr [eax+22C],2;TCustomForm.FShowAction:TShowAction
>004A641B    jmp         004A6445
 004A641D    mov         eax,dword ptr [ebp-4]
 004A6420    call        TWinControl.GetHandle
 004A6425    push        eax
 004A6426    call        user32.IsZoomed
 004A642B    test        eax,eax
>004A642D    je          004A643B
 004A642F    mov         eax,dword ptr [ebp-4]
 004A6432    mov         byte ptr [eax+22C],3;TCustomForm.FShowAction:TShowAction
>004A6439    jmp         004A6445
 004A643B    mov         eax,dword ptr [ebp-4]
 004A643E    mov         byte ptr [eax+22C],1;TCustomForm.FShowAction:TShowAction
 004A6445    mov         edx,dword ptr [ebp-8]
 004A6448    mov         eax,dword ptr [ebp-4]
 004A644B    mov         ecx,dword ptr [eax]
 004A644D    call        dword ptr [ecx-10];TCustomForm.DefaultHandler
>004A6450    jmp         004A6495
 004A6452    mov         eax,dword ptr [ebp-4]
 004A6455    cmp         byte ptr [eax+22C],0;TCustomForm.FShowAction:TShowAction
>004A645C    je          004A6495
 004A645E    mov         eax,dword ptr [ebp-4]
 004A6461    movzx       eax,byte ptr [eax+22C];TCustomForm.FShowAction:TShowAction
 004A6468    mov         eax,dword ptr [eax*4+56CA24]
 004A646F    push        eax
 004A6470    mov         eax,dword ptr [ebp-4]
 004A6473    call        TWinControl.GetHandle
 004A6478    push        eax
 004A6479    call        user32.ShowWindow
 004A647E    mov         eax,dword ptr [ebp-4]
 004A6481    mov         byte ptr [eax+22C],0;TCustomForm.FShowAction:TShowAction
>004A6488    jmp         004A6495
 004A648A    mov         edx,dword ptr [ebp-8]
 004A648D    mov         eax,dword ptr [ebp-4]
 004A6490    mov         ecx,dword ptr [eax]
 004A6492    call        dword ptr [ecx-10];TCustomForm.DefaultHandler
 004A6495    pop         ecx
 004A6496    pop         ecx
 004A6497    pop         ebp
 004A6498    ret
end;*}

//004A649C
{*procedure TCustomForm.WMMDIActivate(?:?);
begin
 004A649C    push        ebp
 004A649D    mov         ebp,esp
 004A649F    add         esp,0FFFFFFF4
 004A64A2    push        esi
 004A64A3    mov         dword ptr [ebp-8],edx
 004A64A6    mov         dword ptr [ebp-4],eax
 004A64A9    mov         edx,dword ptr [ebp-8]
 004A64AC    mov         eax,dword ptr [ebp-4]
 004A64AF    mov         ecx,dword ptr [eax]
 004A64B1    call        dword ptr [ecx-10];TCustomForm.DefaultHandler
 004A64B4    mov         eax,dword ptr [ebp-4]
 004A64B7    cmp         byte ptr [eax+22F],1;TCustomForm.FFormStyle:TFormStyle
>004A64BE    jne         004A6504
 004A64C0    mov         eax,dword ptr [ebp-4]
 004A64C3    call        TWinControl.GetHandle
 004A64C8    mov         edx,dword ptr [ebp-8]
 004A64CB    cmp         eax,dword ptr [edx+8]
 004A64CE    sete        byte ptr [ebp-9]
 004A64D2    mov         dl,byte ptr [ebp-9]
 004A64D5    mov         eax,dword ptr [ebp-4]
 004A64D8    call        004A57A0
 004A64DD    cmp         byte ptr [ebp-9],0
>004A64E1    je          004A6504
 004A64E3    mov         eax,[00571E3C];0x0 Application:TApplication
 004A64E8    mov         eax,dword ptr [eax+44];TApplication.FMainForm:TForm
 004A64EB    test        byte ptr [eax+54],4;TForm.FControlState:TControlState
>004A64EF    je          004A6504
 004A64F1    mov         eax,[00571E3C];0x0 Application:TApplication
 004A64F6    mov         eax,dword ptr [eax+44];TApplication.FMainForm:TForm
 004A64F9    mov         dl,1
 004A64FB    mov         si,0FFD1
 004A64FF    call        @CallDynaInst;TCustomForm.sub_0048251C
 004A6504    pop         esi
 004A6505    mov         esp,ebp
 004A6507    pop         ebp
 004A6508    ret
end;*}

//004A650C
{*procedure TCustomForm.WMNextDlgCtl(?:?);
begin
 004A650C    push        ebp
 004A650D    mov         ebp,esp
 004A650F    add         esp,0FFFFFFF8
 004A6512    mov         dword ptr [ebp-8],edx
 004A6515    mov         dword ptr [ebp-4],eax
 004A6518    mov         eax,dword ptr [ebp-8]
 004A651B    cmp         word ptr [eax+8],0
>004A6520    je          004A6530
 004A6522    mov         eax,dword ptr [ebp-8]
 004A6525    mov         eax,dword ptr [eax+4]
 004A6528    push        eax
 004A6529    call        user32.SetFocus
>004A652E    jmp         004A6550
 004A6530    push        1
 004A6532    mov         ecx,dword ptr [ebp-8]
 004A6535    mov         ecx,dword ptr [ecx+4]
 004A6538    cmp         ecx,1
 004A653B    sbb         ecx,ecx
 004A653D    neg         ecx
 004A653F    mov         eax,dword ptr [ebp-4]
 004A6542    mov         edx,dword ptr [eax+220];TCustomForm.FActiveControl:TWinControl
 004A6548    mov         eax,dword ptr [ebp-4]
 004A654B    call        0048C850
 004A6550    pop         ecx
 004A6551    pop         ecx
 004A6552    pop         ebp
 004A6553    ret
end;*}

//004A6554
{*procedure TCustomForm.WMEnterMenuLoop(?:?);
begin
 004A6554    push        ebp
 004A6555    mov         ebp,esp
 004A6557    add         esp,0FFFFFFF8
 004A655A    mov         dword ptr [ebp-8],edx
 004A655D    mov         dword ptr [ebp-4],eax
 004A6560    xor         edx,edx
 004A6562    mov         eax,dword ptr [ebp-4]
 004A6565    call        004A582C
 004A656A    mov         edx,dword ptr [ebp-8]
 004A656D    mov         eax,dword ptr [ebp-4]
 004A6570    mov         ecx,dword ptr [eax]
 004A6572    call        dword ptr [ecx-10];TCustomForm.DefaultHandler
 004A6575    pop         ecx
 004A6576    pop         ecx
 004A6577    pop         ebp
 004A6578    ret
end;*}

//004A657C
{*function sub_004A657C(?:TMenu; ?:?):?;
begin
 004A657C    push        ebp
 004A657D    mov         ebp,esp
 004A657F    add         esp,0FFFFFFF8
 004A6582    mov         dword ptr [ebp-4],eax
 004A6585    xor         eax,eax
 004A6587    mov         dword ptr [ebp-8],eax
 004A658A    cmp         dword ptr [ebp-4],0
>004A658E    je          004A65C8
 004A6590    mov         eax,dword ptr [ebp+8]
 004A6593    mov         eax,dword ptr [eax-4]
 004A6596    mov         eax,dword ptr [eax+8]
 004A6599    mov         edx,dword ptr [eax+8]
 004A659C    mov         cl,1
 004A659E    mov         eax,dword ptr [ebp-4]
 004A65A1    call        0049C3C0
 004A65A6    mov         dword ptr [ebp-8],eax
 004A65A9    cmp         dword ptr [ebp-8],0
>004A65AD    jne         004A65C8
 004A65AF    mov         eax,dword ptr [ebp+8]
 004A65B2    mov         eax,dword ptr [eax-4]
 004A65B5    mov         eax,dword ptr [eax+8]
 004A65B8    mov         edx,dword ptr [eax+0C]
 004A65BB    xor         ecx,ecx
 004A65BD    mov         eax,dword ptr [ebp-4]
 004A65C0    call        0049C3C0
 004A65C5    mov         dword ptr [ebp-8],eax
 004A65C8    mov         eax,dword ptr [ebp-8]
 004A65CB    pop         ecx
 004A65CC    pop         ecx
 004A65CD    pop         ebp
 004A65CE    ret
end;*}

//004A65D0
{*function sub_004A65D0(?:?):?;
begin
 004A65D0    push        ebp
 004A65D1    mov         ebp,esp
 004A65D3    add         esp,0FFFFFFF8
 004A65D6    mov         dword ptr [ebp-4],eax
 004A65D9    mov         byte ptr [ebp-5],0
 004A65DD    mov         eax,dword ptr [ebp-4]
 004A65E0    cmp         byte ptr [eax+150],1
>004A65E7    jne         004A65FB
 004A65E9    mov         eax,dword ptr [ebp-4]
 004A65EC    cmp         dword ptr [eax+158],0
>004A65F3    je          004A65FB
 004A65F5    mov         byte ptr [ebp-5],1
>004A65F9    jmp         004A6617
 004A65FB    mov         eax,dword ptr [ebp-4]
 004A65FE    cmp         byte ptr [eax+150],0
>004A6605    jne         004A6617
 004A6607    mov         eax,dword ptr [ebp-4]
 004A660A    cmp         dword ptr [eax+154],0
>004A6611    je          004A6617
 004A6613    mov         byte ptr [ebp-5],1
 004A6617    mov         al,byte ptr [ebp-5]
 004A661A    pop         ecx
 004A661B    pop         ecx
 004A661C    pop         ebp
 004A661D    ret
end;*}

//004A6620
{*procedure sub_004A6620(?:?; ?:?; ?:?; ?:?);
begin
 004A6620    push        ebp
 004A6621    mov         ebp,esp
 004A6623    add         esp,0FFFFFFF4
 004A6626    mov         dword ptr [ebp-0C],ecx
 004A6629    mov         dword ptr [ebp-8],edx
 004A662C    mov         dword ptr [ebp-4],eax
 004A662F    mov         eax,dword ptr [ebp-4]
 004A6632    cmp         byte ptr [eax+150],1
>004A6639    jne         004A6651
 004A663B    mov         eax,dword ptr [ebp-8]
 004A663E    mov         byte ptr [eax],1
 004A6641    mov         eax,dword ptr [ebp-0C]
 004A6644    mov         edx,dword ptr [ebp-4]
 004A6647    mov         edx,dword ptr [edx+158]
 004A664D    mov         dword ptr [eax],edx
>004A664F    jmp         004A6668
 004A6651    mov         eax,dword ptr [ebp-8]
 004A6654    mov         byte ptr [eax],0
 004A6657    mov         eax,dword ptr [ebp+8]
 004A665A    mov         edx,dword ptr [ebp-4]
 004A665D    mov         edx,dword ptr [edx+154]
 004A6663    call        @LStrAsg
 004A6668    mov         esp,ebp
 004A666A    pop         ebp
 004A666B    ret         4
end;*}

//004A6670
{*procedure TCustomForm.WMHelp(?:?);
begin
 004A6670    push        ebp
 004A6671    mov         ebp,esp
 004A6673    add         esp,0FFFFFFD0
 004A6676    xor         ecx,ecx
 004A6678    mov         dword ptr [ebp-18],ecx
 004A667B    mov         dword ptr [ebp-4],edx
 004A667E    mov         dword ptr [ebp-8],eax
 004A6681    xor         eax,eax
 004A6683    push        ebp
 004A6684    push        4A67E8
 004A6689    push        dword ptr fs:[eax]
 004A668C    mov         dword ptr fs:[eax],esp
 004A668F    mov         eax,dword ptr [ebp-8]
 004A6692    test        byte ptr [eax+1C],10;TCustomForm.FComponentState:TComponentState
>004A6696    jne         004A67D2
 004A669C    mov         eax,dword ptr [ebp-4]
 004A669F    mov         eax,dword ptr [eax+8]
 004A66A2    mov         dword ptr [ebp-20],eax
 004A66A5    mov         eax,dword ptr [ebp-20]
 004A66A8    cmp         dword ptr [eax+4],1
>004A66AC    jne         004A6720
 004A66AE    mov         eax,dword ptr [ebp-20]
 004A66B1    mov         eax,dword ptr [eax+0C]
 004A66B4    call        0047F79C
 004A66B9    mov         dword ptr [ebp-0C],eax
>004A66BC    jmp         004A66C7
 004A66BE    mov         eax,dword ptr [ebp-0C]
 004A66C1    mov         eax,dword ptr [eax+30]
 004A66C4    mov         dword ptr [ebp-0C],eax
 004A66C7    cmp         dword ptr [ebp-0C],0
>004A66CB    je          004A66DB
 004A66CD    push        ebp
 004A66CE    mov         eax,dword ptr [ebp-0C]
 004A66D1    call        004A65D0
 004A66D6    pop         ecx
 004A66D7    test        al,al
>004A66D9    je          004A66BE
 004A66DB    cmp         dword ptr [ebp-0C],0
>004A66DF    je          004A67D2
 004A66E5    push        ebp
 004A66E6    lea         eax,[ebp-18]
 004A66E9    push        eax
 004A66EA    lea         ecx,[ebp-10]
 004A66ED    lea         edx,[ebp-11]
 004A66F0    mov         eax,dword ptr [ebp-0C]
 004A66F3    call        004A6620
 004A66F8    pop         ecx
 004A66F9    lea         ecx,[ebp-30]
 004A66FC    xor         edx,edx
 004A66FE    xor         eax,eax
 004A6700    call        Point
 004A6705    lea         edx,[ebp-30]
 004A6708    lea         ecx,[ebp-28]
 004A670B    mov         eax,dword ptr [ebp-0C]
 004A670E    call        TControl.ClientToScreen
 004A6713    lea         eax,[ebp-28]
 004A6716    call        00408664
 004A671B    mov         dword ptr [ebp-1C],eax
>004A671E    jmp         004A6772
 004A6720    mov         byte ptr [ebp-11],1
 004A6724    push        ebp
 004A6725    mov         eax,dword ptr [ebp-8]
 004A6728    mov         eax,dword ptr [eax+248];TCustomForm.FMenu:TMainMenu
 004A672E    call        004A657C
 004A6733    pop         ecx
 004A6734    mov         dword ptr [ebp-10],eax
 004A6737    cmp         dword ptr [ebp-10],0
>004A673B    jne         004A674D
 004A673D    push        ebp
 004A673E    mov         eax,dword ptr [ebp-8]
 004A6741    mov         eax,dword ptr [eax+7C];TCustomForm.FPopupMenu:TPopupMenu
 004A6744    call        004A657C
 004A6749    pop         ecx
 004A674A    mov         dword ptr [ebp-10],eax
 004A674D    lea         ecx,[ebp-30]
 004A6750    xor         edx,edx
 004A6752    xor         eax,eax
 004A6754    call        Point
 004A6759    lea         edx,[ebp-30]
 004A675C    lea         ecx,[ebp-28]
 004A675F    mov         eax,dword ptr [ebp-8]
 004A6762    call        TControl.ClientToScreen
 004A6767    lea         eax,[ebp-28]
 004A676A    call        00408664
 004A676F    mov         dword ptr [ebp-1C],eax
 004A6772    mov         eax,dword ptr [ebp-8]
 004A6775    test        byte ptr [eax+228],8;TCustomForm.FBorderIcons:TBorderIcons
>004A677C    je          004A67AA
 004A677E    cmp         byte ptr [ebp-11],1
>004A6782    jne         004A67AA
 004A6784    mov         ecx,dword ptr [ebp-1C]
 004A6787    mov         edx,0D
 004A678C    mov         eax,[00571E3C];0x0 Application:TApplication
 004A6791    call        004ABEA8
 004A6796    mov         ecx,dword ptr [ebp-10]
 004A6799    mov         edx,8
 004A679E    mov         eax,[00571E3C];0x0 Application:TApplication
 004A67A3    call        004ABEA8
>004A67A8    jmp         004A67D2
 004A67AA    cmp         byte ptr [ebp-11],1
>004A67AE    jne         004A67BF
 004A67B0    mov         edx,dword ptr [ebp-10]
 004A67B3    mov         eax,[00571E3C];0x0 Application:TApplication
 004A67B8    call        004ABE14
>004A67BD    jmp         004A67D2
 004A67BF    cmp         byte ptr [ebp-11],0
>004A67C3    jne         004A67D2
 004A67C5    mov         edx,dword ptr [ebp-18]
 004A67C8    mov         eax,[00571E3C];0x0 Application:TApplication
 004A67CD    call        004ABD7C
 004A67D2    xor         eax,eax
 004A67D4    pop         edx
 004A67D5    pop         ecx
 004A67D6    pop         ecx
 004A67D7    mov         dword ptr fs:[eax],edx
 004A67DA    push        4A67EF
 004A67DF    lea         eax,[ebp-18]
 004A67E2    call        @LStrClr
 004A67E7    ret
>004A67E8    jmp         @HandleFinally
>004A67ED    jmp         004A67DF
 004A67EF    mov         esp,ebp
 004A67F1    pop         ebp
 004A67F2    ret
end;*}

//004A67F4
{*procedure TCustomForm.WMGetMinMaxInfo(?:?);
begin
 004A67F4    push        ebp
 004A67F5    mov         ebp,esp
 004A67F7    add         esp,0FFFFFFE8
 004A67FA    push        ebx
 004A67FB    mov         dword ptr [ebp-8],edx
 004A67FE    mov         dword ptr [ebp-4],eax
 004A6801    mov         eax,dword ptr [ebp-4]
 004A6804    test        byte ptr [eax+1C],2;TCustomForm.FComponentState:TComponentState
>004A6808    jne         004A68B6
 004A680E    mov         eax,dword ptr [ebp-4]
 004A6811    cmp         byte ptr [eax+22A],0;TCustomForm.FSizeChanging:Boolean
>004A6818    je          004A68B6
 004A681E    mov         eax,dword ptr [ebp-8]
 004A6821    mov         eax,dword ptr [eax+8]
 004A6824    mov         dword ptr [ebp-0C],eax
 004A6827    mov         eax,dword ptr [ebp-4]
 004A682A    mov         eax,dword ptr [eax+74];TCustomForm.FConstraints:TSizeConstraints
 004A682D    mov         dword ptr [ebp-10],eax
 004A6830    mov         eax,dword ptr [ebp-0C]
 004A6833    add         eax,18
 004A6836    mov         dword ptr [ebp-14],eax
 004A6839    mov         eax,dword ptr [ebp-10]
 004A683C    cmp         dword ptr [eax+14],0;TSizeConstraints.MinWidth:TConstraintSize
>004A6840    jbe         004A684D
 004A6842    mov         eax,dword ptr [ebp-14]
 004A6845    mov         edx,dword ptr [ebp-10]
 004A6848    mov         edx,dword ptr [edx+14];TSizeConstraints.MinWidth:TConstraintSize
 004A684B    mov         dword ptr [eax],edx
 004A684D    mov         eax,dword ptr [ebp-10]
 004A6850    cmp         dword ptr [eax+10],0;TSizeConstraints.MinHeight:TConstraintSize
>004A6854    jbe         004A6862
 004A6856    mov         eax,dword ptr [ebp-14]
 004A6859    mov         edx,dword ptr [ebp-10]
 004A685C    mov         edx,dword ptr [edx+10];TSizeConstraints.MinHeight:TConstraintSize
 004A685F    mov         dword ptr [eax+4],edx
 004A6862    mov         eax,dword ptr [ebp-0C]
 004A6865    add         eax,20
 004A6868    mov         dword ptr [ebp-18],eax
 004A686B    mov         eax,dword ptr [ebp-10]
 004A686E    cmp         dword ptr [eax+0C],0;TSizeConstraints.MaxWidth:TConstraintSize
>004A6872    jbe         004A687F
 004A6874    mov         eax,dword ptr [ebp-18]
 004A6877    mov         edx,dword ptr [ebp-10]
 004A687A    mov         edx,dword ptr [edx+0C];TSizeConstraints.MaxWidth:TConstraintSize
 004A687D    mov         dword ptr [eax],edx
 004A687F    mov         eax,dword ptr [ebp-10]
 004A6882    cmp         dword ptr [eax+8],0;TSizeConstraints.MaxHeight:TConstraintSize
>004A6886    jbe         004A6894
 004A6888    mov         eax,dword ptr [ebp-18]
 004A688B    mov         edx,dword ptr [ebp-10]
 004A688E    mov         edx,dword ptr [edx+8];TSizeConstraints.MaxHeight:TConstraintSize
 004A6891    mov         dword ptr [eax+4],edx
 004A6894    mov         eax,dword ptr [ebp-0C]
 004A6897    add         eax,20
 004A689A    push        eax
 004A689B    mov         eax,dword ptr [ebp-0C]
 004A689E    add         eax,24
 004A68A1    push        eax
 004A68A2    mov         eax,dword ptr [ebp-0C]
 004A68A5    lea         ecx,[eax+1C]
 004A68A8    mov         eax,dword ptr [ebp-0C]
 004A68AB    lea         edx,[eax+18]
 004A68AE    mov         eax,dword ptr [ebp-4]
 004A68B1    mov         ebx,dword ptr [eax]
 004A68B3    call        dword ptr [ebx+38];TCustomForm.sub_0048CEBC
 004A68B6    mov         edx,dword ptr [ebp-8]
 004A68B9    mov         eax,dword ptr [ebp-4]
 004A68BC    mov         ecx,dword ptr [eax]
 004A68BE    call        dword ptr [ecx-10];TCustomForm.DefaultHandler
 004A68C1    pop         ebx
 004A68C2    mov         esp,ebp
 004A68C4    pop         ebp
 004A68C5    ret
end;*}

//004A68C8
{*procedure sub_004A68C8(?:?; ?:?; ?:Integer; ?:?);
begin
 004A68C8    push        ebp
 004A68C9    mov         ebp,esp
 004A68CB    add         esp,0FFFFFFF4
 004A68CE    mov         dword ptr [ebp-0C],ecx
 004A68D1    mov         dword ptr [ebp-8],edx
 004A68D4    mov         dword ptr [ebp-4],eax
 004A68D7    mov         eax,dword ptr [ebp-4]
 004A68DA    mov         eax,dword ptr [eax]
 004A68DC    add         eax,dword ptr [ebp-0C]
 004A68DF    sub         eax,dword ptr [ebp-8]
 004A68E2    cdq
 004A68E3    xor         eax,edx
 004A68E5    sub         eax,edx
 004A68E7    mov         edx,dword ptr [ebp+8]
 004A68EA    mov         edx,dword ptr [edx-4]
 004A68ED    cmp         eax,dword ptr [edx+2E4]
>004A68F3    jge         004A6900
 004A68F5    mov         eax,dword ptr [ebp-8]
 004A68F8    sub         eax,dword ptr [ebp-0C]
 004A68FB    mov         edx,dword ptr [ebp-4]
 004A68FE    mov         dword ptr [edx],eax
 004A6900    mov         esp,ebp
 004A6902    pop         ebp
 004A6903    ret
end;*}

//004A6904
{*procedure TCustomForm.WMWindowPosChangingMsg(?:?);
begin
 004A6904    push        ebp
 004A6905    mov         ebp,esp
 004A6907    add         esp,0FFFFFFD4
 004A690A    mov         dword ptr [ebp-8],edx
 004A690D    mov         dword ptr [ebp-4],eax
 004A6910    mov         eax,dword ptr [ebp-4]
 004A6913    cmp         byte ptr [eax+2E2],0;TCustomForm.FScreenSnap:Boolean
>004A691A    je          004A69C7
 004A6920    mov         eax,dword ptr [ebp-8]
 004A6923    mov         eax,dword ptr [eax+8]
 004A6926    cmp         dword ptr [eax+8],0
>004A692A    jne         004A693C
 004A692C    mov         eax,dword ptr [ebp-8]
 004A692F    mov         eax,dword ptr [eax+8]
 004A6932    cmp         dword ptr [eax+0C],0
>004A6936    je          004A69C7
 004A693C    mov         eax,dword ptr [ebp-8]
 004A693F    mov         eax,dword ptr [eax+8]
 004A6942    mov         dword ptr [ebp-0C],eax
 004A6945    mov         eax,dword ptr [ebp-4]
 004A6948    call        004A3FD0
 004A694D    lea         edx,[ebp-1C]
 004A6950    call        004A858C
 004A6955    push        ebp
 004A6956    mov         eax,dword ptr [ebp-4]
 004A6959    call        004A3FD0
 004A695E    lea         edx,[ebp-2C]
 004A6961    call        004A858C
 004A6966    mov         ecx,dword ptr [ebp-2C]
 004A6969    mov         eax,dword ptr [ebp-0C]
 004A696C    add         eax,8
 004A696F    mov         edx,dword ptr [ebp-1C]
 004A6972    call        004A68C8
 004A6977    pop         ecx
 004A6978    push        ebp
 004A6979    mov         eax,dword ptr [ebp-4]
 004A697C    call        004A3FD0
 004A6981    lea         edx,[ebp-2C]
 004A6984    call        004A858C
 004A6989    mov         ecx,dword ptr [ebp-28]
 004A698C    mov         eax,dword ptr [ebp-0C]
 004A698F    add         eax,0C
 004A6992    mov         edx,dword ptr [ebp-18]
 004A6995    call        004A68C8
 004A699A    pop         ecx
 004A699B    push        ebp
 004A699C    mov         eax,dword ptr [ebp-4]
 004A699F    mov         ecx,dword ptr [eax+48];TCustomForm.Width:Integer
 004A69A2    mov         eax,dword ptr [ebp-0C]
 004A69A5    add         eax,8
 004A69A8    mov         edx,dword ptr [ebp-14]
 004A69AB    call        004A68C8
 004A69B0    pop         ecx
 004A69B1    push        ebp
 004A69B2    mov         eax,dword ptr [ebp-4]
 004A69B5    mov         ecx,dword ptr [eax+4C];TCustomForm.Height:Integer
 004A69B8    mov         eax,dword ptr [ebp-0C]
 004A69BB    add         eax,0C
 004A69BE    mov         edx,dword ptr [ebp-10]
 004A69C1    call        004A68C8
 004A69C6    pop         ecx
 004A69C7    mov         edx,dword ptr [ebp-8]
 004A69CA    mov         eax,dword ptr [ebp-4]
 004A69CD    call        TWinControl.WMWindowPosChangingMsg
 004A69D2    mov         esp,ebp
 004A69D4    pop         ebp
 004A69D5    ret
end;*}

//004A69D8
{*procedure TCustomForm.CMActivate(?:?);
begin
 004A69D8    push        ebp
 004A69D9    mov         ebp,esp
 004A69DB    add         esp,0FFFFFFF8
 004A69DE    push        esi
 004A69DF    mov         dword ptr [ebp-8],edx
 004A69E2    mov         dword ptr [ebp-4],eax
 004A69E5    mov         eax,dword ptr [ebp-4]
 004A69E8    test        byte ptr [eax+1C],2;TCustomForm.FComponentState:TComponentState
>004A69EC    jne         004A69FC
 004A69EE    mov         eax,dword ptr [ebp-4]
 004A69F1    mov         si,0FFB3
 004A69F5    call        @CallDynaInst;TCustomForm.sub_004A59E0
>004A69FA    jmp         004A6A06
 004A69FC    mov         eax,dword ptr [ebp-4]
 004A69FF    or          byte ptr [eax+2F4],20;TCustomForm.FFormState:TFormState
 004A6A06    pop         esi
 004A6A07    pop         ecx
 004A6A08    pop         ecx
 004A6A09    pop         ebp
 004A6A0A    ret
end;*}

//004A6A0C
{*procedure TCustomForm.CMDeactivate(?:?);
begin
 004A6A0C    push        ebp
 004A6A0D    mov         ebp,esp
 004A6A0F    add         esp,0FFFFFFF8
 004A6A12    push        esi
 004A6A13    mov         dword ptr [ebp-8],edx
 004A6A16    mov         dword ptr [ebp-4],eax
 004A6A19    mov         eax,dword ptr [ebp-4]
 004A6A1C    test        byte ptr [eax+1C],2;TCustomForm.FComponentState:TComponentState
>004A6A20    jne         004A6A30
 004A6A22    mov         eax,dword ptr [ebp-4]
 004A6A25    mov         si,0FFB1
 004A6A29    call        @CallDynaInst;TCustomForm.sub_004A5A24
>004A6A2E    jmp         004A6A3A
 004A6A30    mov         eax,dword ptr [ebp-4]
 004A6A33    and         byte ptr [eax+2F4],0DF;TCustomForm.FFormState:TFormState
 004A6A3A    pop         esi
 004A6A3B    pop         ecx
 004A6A3C    pop         ecx
 004A6A3D    pop         ebp
 004A6A3E    ret
end;*}

//004A6A40
{*procedure TCustomForm.CMDialogKey(?:?);
begin
 004A6A40    push        ebp
 004A6A41    mov         ebp,esp
 004A6A43    add         esp,0FFFFFFF8
 004A6A46    mov         dword ptr [ebp-8],edx
 004A6A49    mov         dword ptr [ebp-4],eax
 004A6A4C    push        12
 004A6A4E    call        user32.GetKeyState
 004A6A53    test        ax,ax
>004A6A56    jl          004A6AFD
 004A6A5C    mov         eax,dword ptr [ebp-8]
 004A6A5F    mov         ax,word ptr [eax+4]
 004A6A63    sub         ax,9
>004A6A67    je          004A6A77
 004A6A69    add         eax,0FFFFFFE4
 004A6A6C    sub         ax,4
>004A6A70    jb          004A6AAF
>004A6A72    jmp         004A6AFD
 004A6A77    push        11
 004A6A79    call        user32.GetKeyState
 004A6A7E    test        ax,ax
>004A6A81    jl          004A6AFD
 004A6A83    push        1
 004A6A85    push        10
 004A6A87    call        user32.GetKeyState
 004A6A8C    test        ax,ax
 004A6A8F    setge       cl
 004A6A92    mov         eax,dword ptr [ebp-4]
 004A6A95    mov         edx,dword ptr [eax+220];TCustomForm.FActiveControl:TWinControl
 004A6A9B    mov         eax,dword ptr [ebp-4]
 004A6A9E    call        0048C850
 004A6AA3    mov         eax,dword ptr [ebp-8]
 004A6AA6    mov         dword ptr [eax+0C],1
>004A6AAD    jmp         004A6B08
 004A6AAF    mov         eax,dword ptr [ebp-4]
 004A6AB2    cmp         dword ptr [eax+220],0;TCustomForm.FActiveControl:TWinControl
>004A6AB9    je          004A6B08
 004A6ABB    push        0
 004A6ABD    mov         eax,dword ptr [ebp-8]
 004A6AC0    cmp         word ptr [eax+4],27
>004A6AC5    je          004A6AD5
 004A6AC7    mov         eax,dword ptr [ebp-8]
 004A6ACA    cmp         word ptr [eax+4],28
>004A6ACF    je          004A6AD5
 004A6AD1    xor         ecx,ecx
>004A6AD3    jmp         004A6AD7
 004A6AD5    mov         cl,1
 004A6AD7    mov         eax,dword ptr [ebp-4]
 004A6ADA    mov         eax,dword ptr [eax+220];TCustomForm.FActiveControl:TWinControl
 004A6AE0    mov         eax,dword ptr [eax+30];TWinControl.FParent:TWinControl
 004A6AE3    mov         edx,dword ptr [ebp-4]
 004A6AE6    mov         edx,dword ptr [edx+220];TCustomForm.FActiveControl:TWinControl
 004A6AEC    call        0048C850
 004A6AF1    mov         eax,dword ptr [ebp-8]
 004A6AF4    mov         dword ptr [eax+0C],1
>004A6AFB    jmp         004A6B08
 004A6AFD    mov         edx,dword ptr [ebp-8]
 004A6B00    mov         eax,dword ptr [ebp-4]
 004A6B03    call        TWinControl.CMDialogKey
 004A6B08    pop         ecx
 004A6B09    pop         ecx
 004A6B0A    pop         ebp
 004A6B0B    ret
end;*}

//004A6B0C
{*procedure TCustomForm.CMShowingChanged(?:?);
begin
 004A6B0C    push        ebp
 004A6B0D    mov         ebp,esp
 004A6B0F    add         esp,0FFFFFFE4
 004A6B12    push        ebx
 004A6B13    push        esi
 004A6B14    push        edi
 004A6B15    xor         ecx,ecx
 004A6B17    mov         dword ptr [ebp-1C],ecx
 004A6B1A    mov         dword ptr [ebp-18],edx
 004A6B1D    mov         dword ptr [ebp-4],eax
 004A6B20    xor         eax,eax
 004A6B22    push        ebp
 004A6B23    push        4A70D8
 004A6B28    push        dword ptr fs:[eax]
 004A6B2B    mov         dword ptr fs:[eax],esp
 004A6B2E    mov         eax,dword ptr [ebp-4]
 004A6B31    test        byte ptr [eax+1C],10;TCustomForm.FComponentState:TComponentState
>004A6B35    jne         004A6B64
 004A6B37    mov         eax,dword ptr [ebp-4]
 004A6B3A    test        byte ptr [eax+2F4],4;TCustomForm.FFormState:TFormState
>004A6B41    je          004A6B64
 004A6B43    lea         edx,[ebp-1C]
 004A6B46    mov         eax,[0056E61C];^SVisibleChanged:TResStringRec
 004A6B4B    call        LoadResString
 004A6B50    mov         ecx,dword ptr [ebp-1C]
 004A6B53    mov         dl,1
 004A6B55    mov         eax,[0041D40C];EInvalidOperation
 004A6B5A    call        Exception.Create;EInvalidOperation.Create
 004A6B5F    call        @RaiseExcept
 004A6B64    mov         eax,[00571E3C];0x0 Application:TApplication
 004A6B69    call        004AC370
 004A6B6E    mov         eax,dword ptr [ebp-4]
 004A6B71    or          byte ptr [eax+2F4],4;TCustomForm.FFormState:TFormState
 004A6B78    xor         eax,eax
 004A6B7A    push        ebp
 004A6B7B    push        4A70BB
 004A6B80    push        dword ptr fs:[eax]
 004A6B83    mov         dword ptr fs:[eax],esp
 004A6B86    mov         eax,dword ptr [ebp-4]
 004A6B89    test        byte ptr [eax+1C],10;TCustomForm.FComponentState:TComponentState
>004A6B8D    jne         004A70A3
 004A6B93    mov         eax,dword ptr [ebp-4]
 004A6B96    cmp         byte ptr [eax+1A6],0;TCustomForm.FShowing:Boolean
>004A6B9D    je          004A6F95
 004A6BA3    xor         eax,eax
 004A6BA5    push        ebp
 004A6BA6    push        4A6BC7
 004A6BAB    push        dword ptr fs:[eax]
 004A6BAE    mov         dword ptr fs:[eax],esp
 004A6BB1    mov         eax,dword ptr [ebp-4]
 004A6BB4    mov         si,0FFAE
 004A6BB8    call        @CallDynaInst;TCustomForm.sub_004A2F4C
 004A6BBD    xor         eax,eax
 004A6BBF    pop         edx
 004A6BC0    pop         ecx
 004A6BC1    pop         ecx
 004A6BC2    mov         dword ptr fs:[eax],edx
>004A6BC5    jmp         004A6BDE
>004A6BC7    jmp         @HandleAnyException
 004A6BCC    mov         edx,dword ptr [ebp-4]
 004A6BCF    mov         eax,[00571E3C];0x0 Application:TApplication
 004A6BD4    call        TApplication.HandleException
 004A6BD9    call        @DoneExcept
 004A6BDE    mov         eax,dword ptr [ebp-4]
 004A6BE1    cmp         byte ptr [eax+230],4;TCustomForm.FPosition:TPosition
>004A6BE8    je          004A6C0A
 004A6BEA    mov         eax,dword ptr [ebp-4]
 004A6BED    cmp         byte ptr [eax+230],6;TCustomForm.FPosition:TPosition
>004A6BF4    jne         004A6CD5
 004A6BFA    mov         eax,dword ptr [ebp-4]
 004A6BFD    cmp         byte ptr [eax+22F],1;TCustomForm.FFormStyle:TFormStyle
>004A6C04    jne         004A6CD5
 004A6C0A    mov         eax,dword ptr [ebp-4]
 004A6C0D    cmp         byte ptr [eax+22F],1;TCustomForm.FFormStyle:TFormStyle
>004A6C14    jne         004A6C52
 004A6C16    mov         eax,[00571E3C];0x0 Application:TApplication
 004A6C1B    mov         eax,dword ptr [eax+44];TApplication.FMainForm:TForm
 004A6C1E    call        TControl.GetClientWidth
 004A6C23    mov         edx,dword ptr [ebp-4]
 004A6C26    sub         eax,dword ptr [edx+48]
 004A6C29    sar         eax,1
>004A6C2B    jns         004A6C30
 004A6C2D    adc         eax,0
 004A6C30    mov         dword ptr [ebp-8],eax
 004A6C33    mov         eax,[00571E3C];0x0 Application:TApplication
 004A6C38    mov         eax,dword ptr [eax+44];TApplication.FMainForm:TForm
 004A6C3B    call        TControl.GetClientHeight
 004A6C40    mov         edx,dword ptr [ebp-4]
 004A6C43    sub         eax,dword ptr [edx+4C]
 004A6C46    sar         eax,1
>004A6C48    jns         004A6C4D
 004A6C4A    adc         eax,0
 004A6C4D    mov         dword ptr [ebp-0C],eax
>004A6C50    jmp         004A6C86
 004A6C52    mov         eax,[00571E40];0x0 Screen:TScreen
 004A6C57    call        004A8894
 004A6C5C    mov         edx,dword ptr [ebp-4]
 004A6C5F    sub         eax,dword ptr [edx+48]
 004A6C62    sar         eax,1
>004A6C64    jns         004A6C69
 004A6C66    adc         eax,0
 004A6C69    mov         dword ptr [ebp-8],eax
 004A6C6C    mov         eax,[00571E40];0x0 Screen:TScreen
 004A6C71    call        004A8874
 004A6C76    mov         edx,dword ptr [ebp-4]
 004A6C79    sub         eax,dword ptr [edx+4C]
 004A6C7C    sar         eax,1
>004A6C7E    jns         004A6C83
 004A6C80    adc         eax,0
 004A6C83    mov         dword ptr [ebp-0C],eax
 004A6C86    cmp         dword ptr [ebp-8],0
>004A6C8A    jge         004A6C91
 004A6C8C    xor         eax,eax
 004A6C8E    mov         dword ptr [ebp-8],eax
 004A6C91    cmp         dword ptr [ebp-0C],0
>004A6C95    jge         004A6C9C
 004A6C97    xor         eax,eax
 004A6C99    mov         dword ptr [ebp-0C],eax
 004A6C9C    mov         eax,dword ptr [ebp-4]
 004A6C9F    mov         eax,dword ptr [eax+48];TCustomForm.Width:Integer
 004A6CA2    push        eax
 004A6CA3    mov         eax,dword ptr [ebp-4]
 004A6CA6    mov         eax,dword ptr [eax+4C];TCustomForm.Height:Integer
 004A6CA9    push        eax
 004A6CAA    mov         ecx,dword ptr [ebp-0C]
 004A6CAD    mov         edx,dword ptr [ebp-8]
 004A6CB0    mov         eax,dword ptr [ebp-4]
 004A6CB3    mov         ebx,dword ptr [eax]
 004A6CB5    call        dword ptr [ebx+84];TCustomForm.sub_0048B89C
 004A6CBB    mov         eax,dword ptr [ebp-4]
 004A6CBE    cmp         byte ptr [eax+57],0;TCustomForm.FVisible:Boolean
>004A6CC2    je          004A6EA1
 004A6CC8    mov         eax,dword ptr [ebp-4]
 004A6CCB    call        004A484C
>004A6CD0    jmp         004A6EA1
 004A6CD5    mov         eax,dword ptr [ebp-4]
 004A6CD8    mov         al,byte ptr [eax+230];TCustomForm.FPosition:TPosition
 004A6CDE    add         al,0FA
 004A6CE0    sub         al,2
>004A6CE2    jae         004A6DE0
 004A6CE8    mov         eax,[00571E3C];0x0 Application:TApplication
 004A6CED    mov         eax,dword ptr [eax+44];TApplication.FMainForm:TForm
 004A6CF0    mov         dword ptr [ebp-14],eax
 004A6CF3    mov         eax,dword ptr [ebp-4]
 004A6CF6    cmp         byte ptr [eax+230],7;TCustomForm.FPosition:TPosition
>004A6CFD    jne         004A6D1D
 004A6CFF    mov         eax,dword ptr [ebp-4]
 004A6D02    mov         eax,dword ptr [eax+4];TCustomForm.FOwner:TComponent
 004A6D05    mov         edx,dword ptr ds:[49EC6C];TCustomForm
 004A6D0B    call        @IsClass
 004A6D10    test        al,al
>004A6D12    je          004A6D1D
 004A6D14    mov         eax,dword ptr [ebp-4]
 004A6D17    mov         eax,dword ptr [eax+4];TCustomForm.FOwner:TComponent
 004A6D1A    mov         dword ptr [ebp-14],eax
 004A6D1D    cmp         dword ptr [ebp-14],0
>004A6D21    je          004A6D5D
 004A6D23    mov         eax,dword ptr [ebp-14]
 004A6D26    mov         eax,dword ptr [eax+48]
 004A6D29    mov         edx,dword ptr [ebp-4]
 004A6D2C    sub         eax,dword ptr [edx+48]
 004A6D2F    sar         eax,1
>004A6D31    jns         004A6D36
 004A6D33    adc         eax,0
 004A6D36    mov         edx,dword ptr [ebp-14]
 004A6D39    add         eax,dword ptr [edx+40]
 004A6D3C    mov         dword ptr [ebp-8],eax
 004A6D3F    mov         eax,dword ptr [ebp-14]
 004A6D42    mov         eax,dword ptr [eax+4C]
 004A6D45    mov         edx,dword ptr [ebp-4]
 004A6D48    sub         eax,dword ptr [edx+4C]
 004A6D4B    sar         eax,1
>004A6D4D    jns         004A6D52
 004A6D4F    adc         eax,0
 004A6D52    mov         edx,dword ptr [ebp-14]
 004A6D55    add         eax,dword ptr [edx+44]
 004A6D58    mov         dword ptr [ebp-0C],eax
>004A6D5B    jmp         004A6D91
 004A6D5D    mov         eax,[00571E40];0x0 Screen:TScreen
 004A6D62    call        004A8894
 004A6D67    mov         edx,dword ptr [ebp-4]
 004A6D6A    sub         eax,dword ptr [edx+48]
 004A6D6D    sar         eax,1
>004A6D6F    jns         004A6D74
 004A6D71    adc         eax,0
 004A6D74    mov         dword ptr [ebp-8],eax
 004A6D77    mov         eax,[00571E40];0x0 Screen:TScreen
 004A6D7C    call        004A8874
 004A6D81    mov         edx,dword ptr [ebp-4]
 004A6D84    sub         eax,dword ptr [edx+4C]
 004A6D87    sar         eax,1
>004A6D89    jns         004A6D8E
 004A6D8B    adc         eax,0
 004A6D8E    mov         dword ptr [ebp-0C],eax
 004A6D91    cmp         dword ptr [ebp-8],0
>004A6D95    jge         004A6D9C
 004A6D97    xor         eax,eax
 004A6D99    mov         dword ptr [ebp-8],eax
 004A6D9C    cmp         dword ptr [ebp-0C],0
>004A6DA0    jge         004A6DA7
 004A6DA2    xor         eax,eax
 004A6DA4    mov         dword ptr [ebp-0C],eax
 004A6DA7    mov         eax,dword ptr [ebp-4]
 004A6DAA    mov         eax,dword ptr [eax+48];TCustomForm.Width:Integer
 004A6DAD    push        eax
 004A6DAE    mov         eax,dword ptr [ebp-4]
 004A6DB1    mov         eax,dword ptr [eax+4C];TCustomForm.Height:Integer
 004A6DB4    push        eax
 004A6DB5    mov         ecx,dword ptr [ebp-0C]
 004A6DB8    mov         edx,dword ptr [ebp-8]
 004A6DBB    mov         eax,dword ptr [ebp-4]
 004A6DBE    mov         ebx,dword ptr [eax]
 004A6DC0    call        dword ptr [ebx+84];TCustomForm.sub_0048B89C
 004A6DC6    mov         eax,dword ptr [ebp-4]
 004A6DC9    cmp         byte ptr [eax+57],0;TCustomForm.FVisible:Boolean
>004A6DCD    je          004A6EA1
 004A6DD3    mov         eax,dword ptr [ebp-4]
 004A6DD6    call        004A484C
>004A6DDB    jmp         004A6EA1
 004A6DE0    mov         eax,dword ptr [ebp-4]
 004A6DE3    cmp         byte ptr [eax+230],5;TCustomForm.FPosition:TPosition
>004A6DEA    jne         004A6EA1
 004A6DF0    mov         eax,dword ptr [ebp-4]
 004A6DF3    cmp         byte ptr [eax+22F],1;TCustomForm.FFormStyle:TFormStyle
>004A6DFA    jne         004A6E38
 004A6DFC    mov         eax,[00571E3C];0x0 Application:TApplication
 004A6E01    mov         eax,dword ptr [eax+44];TApplication.FMainForm:TForm
 004A6E04    call        TControl.GetClientWidth
 004A6E09    mov         edx,dword ptr [ebp-4]
 004A6E0C    sub         eax,dword ptr [edx+48]
 004A6E0F    sar         eax,1
>004A6E11    jns         004A6E16
 004A6E13    adc         eax,0
 004A6E16    mov         dword ptr [ebp-8],eax
 004A6E19    mov         eax,[00571E3C];0x0 Application:TApplication
 004A6E1E    mov         eax,dword ptr [eax+44];TApplication.FMainForm:TForm
 004A6E21    call        TControl.GetClientHeight
 004A6E26    mov         edx,dword ptr [ebp-4]
 004A6E29    sub         eax,dword ptr [edx+4C]
 004A6E2C    sar         eax,1
>004A6E2E    jns         004A6E33
 004A6E30    adc         eax,0
 004A6E33    mov         dword ptr [ebp-0C],eax
>004A6E36    jmp         004A6E6C
 004A6E38    mov         eax,[00571E40];0x0 Screen:TScreen
 004A6E3D    call        004A8914
 004A6E42    mov         edx,dword ptr [ebp-4]
 004A6E45    sub         eax,dword ptr [edx+48]
 004A6E48    sar         eax,1
>004A6E4A    jns         004A6E4F
 004A6E4C    adc         eax,0
 004A6E4F    mov         dword ptr [ebp-8],eax
 004A6E52    mov         eax,[00571E40];0x0 Screen:TScreen
 004A6E57    call        004A88F4
 004A6E5C    mov         edx,dword ptr [ebp-4]
 004A6E5F    sub         eax,dword ptr [edx+4C]
 004A6E62    sar         eax,1
>004A6E64    jns         004A6E69
 004A6E66    adc         eax,0
 004A6E69    mov         dword ptr [ebp-0C],eax
 004A6E6C    cmp         dword ptr [ebp-8],0
>004A6E70    jge         004A6E77
 004A6E72    xor         eax,eax
 004A6E74    mov         dword ptr [ebp-8],eax
 004A6E77    cmp         dword ptr [ebp-0C],0
>004A6E7B    jge         004A6E82
 004A6E7D    xor         eax,eax
 004A6E7F    mov         dword ptr [ebp-0C],eax
 004A6E82    mov         eax,dword ptr [ebp-4]
 004A6E85    mov         eax,dword ptr [eax+48];TCustomForm.Width:Integer
 004A6E88    push        eax
 004A6E89    mov         eax,dword ptr [ebp-4]
 004A6E8C    mov         eax,dword ptr [eax+4C];TCustomForm.Height:Integer
 004A6E8F    push        eax
 004A6E90    mov         ecx,dword ptr [ebp-0C]
 004A6E93    mov         edx,dword ptr [ebp-8]
 004A6E96    mov         eax,dword ptr [ebp-4]
 004A6E99    mov         ebx,dword ptr [eax]
 004A6E9B    call        dword ptr [ebx+84];TCustomForm.sub_0048B89C
 004A6EA1    mov         eax,dword ptr [ebp-4]
 004A6EA4    mov         byte ptr [eax+230],0;TCustomForm.FPosition:TPosition
 004A6EAB    mov         eax,dword ptr [ebp-4]
 004A6EAE    cmp         byte ptr [eax+22F],1;TCustomForm.FFormStyle:TFormStyle
>004A6EB5    jne         004A6F70
 004A6EBB    mov         eax,dword ptr [ebp-4]
 004A6EBE    cmp         byte ptr [eax+22B],2;TCustomForm.FWindowState:TWindowState
>004A6EC5    jne         004A6EFD
 004A6EC7    push        0
 004A6EC9    mov         eax,dword ptr [ebp-4]
 004A6ECC    call        TWinControl.GetHandle
 004A6ED1    push        eax
 004A6ED2    push        223
 004A6ED7    mov         eax,[00571E3C];0x0 Application:TApplication
 004A6EDC    mov         eax,dword ptr [eax+44];TApplication.FMainForm:TForm
 004A6EDF    mov         eax,dword ptr [eax+254];TForm.FClientHandle:HWND
 004A6EE5    push        eax
 004A6EE6    call        user32.SendMessageA
 004A6EEB    push        3
 004A6EED    mov         eax,dword ptr [ebp-4]
 004A6EF0    call        TWinControl.GetHandle
 004A6EF5    push        eax
 004A6EF6    call        user32.ShowWindow
>004A6EFB    jmp         004A6F4E
 004A6EFD    mov         eax,dword ptr [ebp-4]
 004A6F00    movzx       eax,byte ptr [eax+22B];TCustomForm.FWindowState:TWindowState
 004A6F07    mov         eax,dword ptr [eax*4+56CA34]
 004A6F0E    push        eax
 004A6F0F    mov         eax,dword ptr [ebp-4]
 004A6F12    call        TWinControl.GetHandle
 004A6F17    push        eax
 004A6F18    call        user32.ShowWindow
 004A6F1D    mov         eax,dword ptr [ebp-4]
 004A6F20    mov         eax,dword ptr [eax+48];TCustomForm.Width:Integer
 004A6F23    mov         edx,dword ptr [ebp-4]
 004A6F26    mov         edx,dword ptr [edx+4C];TCustomForm.Height:Integer
 004A6F29    shl         edx,10
 004A6F2C    or          eax,edx
 004A6F2E    push        eax
 004A6F2F    push        0
 004A6F31    push        5
 004A6F33    mov         eax,dword ptr [ebp-4]
 004A6F36    call        TWinControl.GetHandle
 004A6F3B    push        eax
 004A6F3C    push        407EF4;user32.DefMDIChildProcA:Longint
 004A6F41    call        user32.CallWindowProcA
 004A6F46    mov         eax,dword ptr [ebp-4]
 004A6F49    call        00483BE4
 004A6F4E    push        0
 004A6F50    push        0
 004A6F52    push        234
 004A6F57    mov         eax,[00571E3C];0x0 Application:TApplication
 004A6F5C    mov         eax,dword ptr [eax+44];TApplication.FMainForm:TForm
 004A6F5F    mov         eax,dword ptr [eax+254];TForm.FClientHandle:HWND
 004A6F65    push        eax
 004A6F66    call        user32.SendMessageA
>004A6F6B    jmp         004A70A3
 004A6F70    mov         eax,dword ptr [ebp-4]
 004A6F73    movzx       eax,byte ptr [eax+22B];TCustomForm.FWindowState:TWindowState
 004A6F7A    mov         eax,dword ptr [eax*4+56CA34]
 004A6F81    push        eax
 004A6F82    mov         eax,dword ptr [ebp-4]
 004A6F85    call        TWinControl.GetHandle
 004A6F8A    push        eax
 004A6F8B    call        user32.ShowWindow
>004A6F90    jmp         004A70A3
 004A6F95    xor         eax,eax
 004A6F97    push        ebp
 004A6F98    push        4A6FB9
 004A6F9D    push        dword ptr fs:[eax]
 004A6FA0    mov         dword ptr fs:[eax],esp
 004A6FA3    mov         eax,dword ptr [ebp-4]
 004A6FA6    mov         si,0FFAF
 004A6FAA    call        @CallDynaInst;TCustomForm.sub_004A2F20
 004A6FAF    xor         eax,eax
 004A6FB1    pop         edx
 004A6FB2    pop         ecx
 004A6FB3    pop         ecx
 004A6FB4    mov         dword ptr fs:[eax],edx
>004A6FB7    jmp         004A6FD0
>004A6FB9    jmp         @HandleAnyException
 004A6FBE    mov         edx,dword ptr [ebp-4]
 004A6FC1    mov         eax,[00571E3C];0x0 Application:TApplication
 004A6FC6    call        TApplication.HandleException
 004A6FCB    call        @DoneExcept
 004A6FD0    mov         eax,[00571E40];0x0 Screen:TScreen
 004A6FD5    mov         eax,dword ptr [eax+6C];TScreen.FActiveForm:TForm
 004A6FD8    cmp         eax,dword ptr [ebp-4]
>004A6FDB    jne         004A6FE7
 004A6FDD    xor         edx,edx
 004A6FDF    mov         eax,dword ptr [ebp-4]
 004A6FE2    call        TCustomForm.MergeMenu
 004A6FE7    mov         eax,dword ptr [ebp-4]
 004A6FEA    cmp         byte ptr [eax+22F],1;TCustomForm.FFormStyle:TFormStyle
>004A6FF1    jne         004A7000
 004A6FF3    mov         eax,dword ptr [ebp-4]
 004A6FF6    call        004888E4
>004A6FFB    jmp         004A70A3
 004A7000    mov         eax,dword ptr [ebp-4]
 004A7003    test        byte ptr [eax+2F4],8;TCustomForm.FFormState:TFormState
>004A700A    je          004A702B
 004A700C    push        97
 004A7011    push        0
 004A7013    push        0
 004A7015    push        0
 004A7017    push        0
 004A7019    push        0
 004A701B    mov         eax,dword ptr [ebp-4]
 004A701E    call        TWinControl.GetHandle
 004A7023    push        eax
 004A7024    call        user32.SetWindowPos
>004A7029    jmp         004A70A3
 004A702B    xor         eax,eax
 004A702D    mov         dword ptr [ebp-10],eax
 004A7030    mov         eax,dword ptr [ebp-4]
 004A7033    call        TWinControl.GetHandle
 004A7038    mov         ebx,eax
 004A703A    call        user32.GetActiveWindow
 004A703F    cmp         ebx,eax
>004A7041    jne         004A7065
 004A7043    mov         eax,dword ptr [ebp-4]
 004A7046    call        TWinControl.GetHandle
 004A704B    push        eax
 004A704C    call        user32.IsIconic
 004A7051    test        eax,eax
>004A7053    jne         004A7065
 004A7055    mov         eax,dword ptr [ebp-4]
 004A7058    call        TWinControl.GetHandle
 004A705D    call        004A03C4
 004A7062    mov         dword ptr [ebp-10],eax
 004A7065    cmp         dword ptr [ebp-10],0
>004A7069    je          004A7093
 004A706B    push        97
 004A7070    push        0
 004A7072    push        0
 004A7074    push        0
 004A7076    push        0
 004A7078    push        0
 004A707A    mov         eax,dword ptr [ebp-4]
 004A707D    call        TWinControl.GetHandle
 004A7082    push        eax
 004A7083    call        user32.SetWindowPos
 004A7088    mov         eax,dword ptr [ebp-10]
 004A708B    push        eax
 004A708C    call        user32.SetActiveWindow
>004A7091    jmp         004A70A3
 004A7093    push        0
 004A7095    mov         eax,dword ptr [ebp-4]
 004A7098    call        TWinControl.GetHandle
 004A709D    push        eax
 004A709E    call        user32.ShowWindow
 004A70A3    xor         eax,eax
 004A70A5    pop         edx
 004A70A6    pop         ecx
 004A70A7    pop         ecx
 004A70A8    mov         dword ptr fs:[eax],edx
 004A70AB    push        4A70C2
 004A70B0    mov         eax,dword ptr [ebp-4]
 004A70B3    and         byte ptr [eax+2F4],0FB;TCustomForm.FFormState:TFormState
 004A70BA    ret
>004A70BB    jmp         @HandleFinally
>004A70C0    jmp         004A70B0
 004A70C2    xor         eax,eax
 004A70C4    pop         edx
 004A70C5    pop         ecx
 004A70C6    pop         ecx
 004A70C7    mov         dword ptr fs:[eax],edx
 004A70CA    push        4A70DF
 004A70CF    lea         eax,[ebp-1C]
 004A70D2    call        @LStrClr
 004A70D7    ret
>004A70D8    jmp         @HandleFinally
>004A70DD    jmp         004A70CF
 004A70DF    pop         edi
 004A70E0    pop         esi
 004A70E1    pop         ebx
 004A70E2    mov         esp,ebp
 004A70E4    pop         ebp
 004A70E5    ret
end;*}

//004A70E8
{*procedure TCustomForm.CMIconChanged(?:?);
begin
 004A70E8    push        ebp
 004A70E9    mov         ebp,esp
 004A70EB    add         esp,0FFFFFFF8
 004A70EE    mov         dword ptr [ebp-8],edx
 004A70F1    mov         dword ptr [ebp-4],eax
 004A70F4    mov         eax,dword ptr [ebp-4]
 004A70F7    mov         eax,dword ptr [eax+240];TCustomForm.FIcon:TIcon
 004A70FD    call        00436708
 004A7102    test        eax,eax
>004A7104    jne         004A7110
 004A7106    xor         edx,edx
 004A7108    mov         eax,dword ptr [ebp-4]
 004A710B    call        004A2DD4
 004A7110    pop         ecx
 004A7111    pop         ecx
 004A7112    pop         ebp
 004A7113    ret
end;*}

//004A7114
{*procedure TCustomForm.CMRelease(?:?);
begin
 004A7114    push        ebp
 004A7115    mov         ebp,esp
 004A7117    add         esp,0FFFFFFF8
 004A711A    mov         dword ptr [ebp-8],edx
 004A711D    mov         dword ptr [ebp-4],eax
 004A7120    mov         eax,dword ptr [ebp-4]
 004A7123    call        TObject.Free
 004A7128    pop         ecx
 004A7129    pop         ecx
 004A712A    pop         ebp
 004A712B    ret
end;*}

//004A712C
{*procedure TCustomForm.CMTextChanged(?:?);
begin
 004A712C    push        ebp
 004A712D    mov         ebp,esp
 004A712F    add         esp,0FFFFFFF8
 004A7132    mov         dword ptr [ebp-8],edx
 004A7135    mov         dword ptr [ebp-4],eax
 004A7138    mov         edx,dword ptr [ebp-8]
 004A713B    mov         eax,dword ptr [ebp-4]
 004A713E    mov         ecx,dword ptr [eax]
 004A7140    call        dword ptr [ecx-10];TCustomForm.DefaultHandler
 004A7143    mov         eax,dword ptr [ebp-4]
 004A7146    cmp         byte ptr [eax+22F],1;TCustomForm.FFormStyle:TFormStyle
>004A714D    jne         004A7188
 004A714F    mov         eax,[00571E3C];0x0 Application:TApplication
 004A7154    cmp         dword ptr [eax+44],0;TApplication.FMainForm:TForm
>004A7158    je          004A7188
 004A715A    mov         eax,[00571E3C];0x0 Application:TApplication
 004A715F    mov         eax,dword ptr [eax+44];TApplication.FMainForm:TForm
 004A7162    cmp         dword ptr [eax+254],0;TForm.FClientHandle:HWND
>004A7169    je          004A7188
 004A716B    push        0
 004A716D    push        0
 004A716F    push        234
 004A7174    mov         eax,[00571E3C];0x0 Application:TApplication
 004A7179    mov         eax,dword ptr [eax+44];TApplication.FMainForm:TForm
 004A717C    mov         eax,dword ptr [eax+254];TForm.FClientHandle:HWND
 004A7182    push        eax
 004A7183    call        user32.SendMessageA
 004A7188    pop         ecx
 004A7189    pop         ecx
 004A718A    pop         ebp
 004A718B    ret
end;*}

//004A718C
{*procedure TCustomForm.CMUIActivate(?:?);
begin
 004A718C    push        ebp
 004A718D    mov         ebp,esp
 004A718F    add         esp,0FFFFFFF8
 004A7192    mov         dword ptr [ebp-8],edx
 004A7195    mov         dword ptr [ebp-4],eax
 004A7198    mov         edx,dword ptr [ebp-8]
 004A719B    mov         eax,dword ptr [ebp-4]
 004A719E    mov         ecx,dword ptr [eax]
 004A71A0    call        dword ptr [ecx-10];TCustomForm.DefaultHandler
 004A71A3    pop         ecx
 004A71A4    pop         ecx
 004A71A5    pop         ebp
 004A71A6    ret
end;*}

//004A71A8
{*procedure TCustomForm.CMParentFontChanged(?:?);
begin
 004A71A8    push        ebp
 004A71A9    mov         ebp,esp
 004A71AB    add         esp,0FFFFFFF4
 004A71AE    mov         dword ptr [ebp-8],edx
 004A71B1    mov         dword ptr [ebp-4],eax
 004A71B4    mov         eax,dword ptr [ebp-4]
 004A71B7    cmp         byte ptr [eax+59],0;TCustomForm.FParentFont:Boolean
>004A71BB    je          004A7221
 004A71BD    mov         eax,dword ptr [ebp-8]
 004A71C0    cmp         dword ptr [eax+4],0
>004A71C4    je          004A71D9
 004A71C6    mov         edx,dword ptr [ebp-8]
 004A71C9    mov         edx,dword ptr [edx+8]
 004A71CC    mov         eax,dword ptr [ebp-4]
 004A71CF    mov         eax,dword ptr [eax+68];TCustomForm.FFont:TFont
 004A71D2    mov         ecx,dword ptr [eax]
 004A71D4    call        dword ptr [ecx+8];TFont.sub_0042DF9C
>004A71D7    jmp         004A7221
 004A71D9    mov         dl,1
 004A71DB    mov         eax,[0042C4F8];TFont
 004A71E0    call        TFont.Create;TFont.Create
 004A71E5    mov         dword ptr [ebp-0C],eax
 004A71E8    xor         eax,eax
 004A71EA    push        ebp
 004A71EB    push        4A721A
 004A71F0    push        dword ptr fs:[eax]
 004A71F3    mov         dword ptr fs:[eax],esp
 004A71F6    mov         eax,dword ptr [ebp-4]
 004A71F9    mov         eax,dword ptr [eax+68];TCustomForm.FFont:TFont
 004A71FC    mov         edx,dword ptr [ebp-0C]
 004A71FF    mov         ecx,dword ptr [eax]
 004A7201    call        dword ptr [ecx+8];TFont.sub_0042DF9C
 004A7204    xor         eax,eax
 004A7206    pop         edx
 004A7207    pop         ecx
 004A7208    pop         ecx
 004A7209    mov         dword ptr fs:[eax],edx
 004A720C    push        4A7221
 004A7211    mov         eax,dword ptr [ebp-0C]
 004A7214    call        TObject.Free
 004A7219    ret
>004A721A    jmp         @HandleFinally
>004A721F    jmp         004A7211
 004A7221    mov         esp,ebp
 004A7223    pop         ebp
 004A7224    ret
end;*}

//004A7228
{*procedure TCustomForm.CMDockNotification(?:?);
begin
 004A7228    push        ebp
 004A7229    mov         ebp,esp
 004A722B    add         esp,0FFFFFFF8
 004A722E    push        esi
 004A722F    mov         dword ptr [ebp-8],edx
 004A7232    mov         dword ptr [ebp-4],eax
 004A7235    mov         edx,dword ptr [ebp-8]
 004A7238    mov         eax,dword ptr [ebp-4]
 004A723B    mov         si,0FFAB
 004A723F    call        @CallDynaInst;TCustomForm.sub_004A7C48
 004A7244    test        al,al
>004A7246    je          004A7254
 004A7248    mov         eax,dword ptr [ebp-8]
 004A724B    mov         dword ptr [eax+0C],1
>004A7252    jmp         004A725C
 004A7254    mov         eax,dword ptr [ebp-8]
 004A7257    xor         edx,edx
 004A7259    mov         dword ptr [eax+0C],edx
 004A725C    pop         esi
 004A725D    pop         ecx
 004A725E    pop         ecx
 004A725F    pop         ebp
 004A7260    ret
end;*}

//004A7264
procedure sub_004A7264(?:TCustomForm);
begin
{*
 004A7264    push        ebp
 004A7265    mov         ebp,esp
 004A7267    add         esp,0FFFFFFF8
 004A726A    push        esi
 004A726B    mov         dword ptr [ebp-4],eax
 004A726E    mov         eax,dword ptr [ebp-4]
 004A7271    test        byte ptr [eax+2F4],8;TCustomForm.FFormState:TFormState
>004A7278    je          004A728C
 004A727A    mov         eax,dword ptr [ebp-4]
 004A727D    mov         dword ptr [eax+24C],2;TCustomForm.FModalResult:TModalResult
>004A7287    jmp         004A731F
 004A728C    mov         eax,dword ptr [ebp-4]
 004A728F    mov         edx,dword ptr [eax]
 004A7291    call        dword ptr [edx+0E4];TCustomForm.sub_004A7324
 004A7297    test        al,al
>004A7299    je          004A731F
 004A729F    mov         eax,dword ptr [ebp-4]
 004A72A2    cmp         byte ptr [eax+22F],1;TCustomForm.FFormStyle:TFormStyle
>004A72A9    jne         004A72C3
 004A72AB    mov         eax,dword ptr [ebp-4]
 004A72AE    test        byte ptr [eax+228],2;TCustomForm.FBorderIcons:TBorderIcons
>004A72B5    je          004A72BD
 004A72B7    mov         byte ptr [ebp-5],3
>004A72BB    jmp         004A72C7
 004A72BD    mov         byte ptr [ebp-5],0
>004A72C1    jmp         004A72C7
 004A72C3    mov         byte ptr [ebp-5],1
 004A72C7    lea         edx,[ebp-5]
 004A72CA    mov         eax,dword ptr [ebp-4]
 004A72CD    mov         si,0FFB0
 004A72D1    call        @CallDynaInst;TCustomForm.sub_004A2EEC
 004A72D6    cmp         byte ptr [ebp-5],0
>004A72DA    je          004A731F
 004A72DC    mov         eax,[00571E3C];0x0 Application:TApplication
 004A72E1    mov         eax,dword ptr [eax+44];TApplication.FMainForm:TForm
 004A72E4    cmp         eax,dword ptr [ebp-4]
>004A72E7    jne         004A72F5
 004A72E9    mov         eax,[00571E3C];0x0 Application:TApplication
 004A72EE    call        004AB838
>004A72F3    jmp         004A731F
 004A72F5    cmp         byte ptr [ebp-5],1
>004A72F9    jne         004A7305
 004A72FB    mov         eax,dword ptr [ebp-4]
 004A72FE    call        004A743C
>004A7303    jmp         004A731F
 004A7305    cmp         byte ptr [ebp-5],3
>004A7309    jne         004A7317
 004A730B    mov         dl,1
 004A730D    mov         eax,dword ptr [ebp-4]
 004A7310    call        TForm.SetWindowState
>004A7315    jmp         004A731F
 004A7317    mov         eax,dword ptr [ebp-4]
 004A731A    call        TCustomForm.Release
 004A731F    pop         esi
 004A7320    pop         ecx
 004A7321    pop         ecx
 004A7322    pop         ebp
 004A7323    ret
*}
end;

//004A7324
{*function sub_004A7324:?;
begin
 004A7324    push        ebp
 004A7325    mov         ebp,esp
 004A7327    add         esp,0FFFFFFF0
 004A732A    push        ebx
 004A732B    mov         dword ptr [ebp-4],eax
 004A732E    mov         eax,dword ptr [ebp-4]
 004A7331    cmp         byte ptr [eax+22F],2;TCustomForm.FFormStyle:TFormStyle
>004A7338    jne         004A7375
 004A733A    mov         byte ptr [ebp-5],0
 004A733E    mov         eax,dword ptr [ebp-4]
 004A7341    call        TCustomForm.GetMDIChildCount
 004A7346    dec         eax
 004A7347    test        eax,eax
>004A7349    jl          004A7375
 004A734B    inc         eax
 004A734C    mov         dword ptr [ebp-10],eax
 004A734F    mov         dword ptr [ebp-0C],0
 004A7356    mov         edx,dword ptr [ebp-0C]
 004A7359    mov         eax,dword ptr [ebp-4]
 004A735C    call        004A3F10
 004A7361    mov         edx,dword ptr [eax]
 004A7363    call        dword ptr [edx+0E4]
 004A7369    test        al,al
>004A736B    je          004A739B
 004A736D    inc         dword ptr [ebp-0C]
 004A7370    dec         dword ptr [ebp-10]
>004A7373    jne         004A7356
 004A7375    mov         byte ptr [ebp-5],1
 004A7379    mov         eax,dword ptr [ebp-4]
 004A737C    cmp         word ptr [eax+29A],0;TCustomForm.?f29A:word
>004A7384    je          004A739B
 004A7386    lea         ecx,[ebp-5]
 004A7389    mov         ebx,dword ptr [ebp-4]
 004A738C    mov         edx,dword ptr [ebp-4]
 004A738F    mov         eax,dword ptr [ebx+29C];TCustomForm.?f29C:dword
 004A7395    call        dword ptr [ebx+298];TCustomForm.FOnCloseQuery
 004A739B    mov         al,byte ptr [ebp-5]
 004A739E    pop         ebx
 004A739F    mov         esp,ebp
 004A73A1    pop         ebp
 004A73A2    ret
end;*}

//004A73A4
procedure TCustomForm.CloseModal;
begin
{*
 004A73A4    push        ebp
 004A73A5    mov         ebp,esp
 004A73A7    add         esp,0FFFFFFF8
 004A73AA    push        ebx
 004A73AB    push        esi
 004A73AC    push        edi
 004A73AD    mov         dword ptr [ebp-4],eax
 004A73B0    xor         eax,eax
 004A73B2    push        ebp
 004A73B3    push        4A7410
 004A73B8    push        dword ptr fs:[eax]
 004A73BB    mov         dword ptr fs:[eax],esp
 004A73BE    mov         byte ptr [ebp-5],0
 004A73C2    mov         eax,dword ptr [ebp-4]
 004A73C5    mov         edx,dword ptr [eax]
 004A73C7    call        dword ptr [edx+0E4]
 004A73CD    test        al,al
>004A73CF    je          004A73E4
 004A73D1    mov         byte ptr [ebp-5],1
 004A73D5    lea         edx,[ebp-5]
 004A73D8    mov         eax,dword ptr [ebp-4]
 004A73DB    mov         si,0FFB0
 004A73DF    call        @CallDynaInst
 004A73E4    mov         al,byte ptr [ebp-5]
 004A73E7    sub         al,1
>004A73E9    jb          004A73F1
 004A73EB    dec         al
>004A73ED    je          004A73FE
>004A73EF    jmp         004A7406
 004A73F1    mov         eax,dword ptr [ebp-4]
 004A73F4    xor         edx,edx
 004A73F6    mov         dword ptr [eax+24C],edx
>004A73FC    jmp         004A7406
 004A73FE    mov         eax,dword ptr [ebp-4]
 004A7401    call        TCustomForm.Release
 004A7406    xor         eax,eax
 004A7408    pop         edx
 004A7409    pop         ecx
 004A740A    pop         ecx
 004A740B    mov         dword ptr fs:[eax],edx
>004A740E    jmp         004A7432
>004A7410    jmp         @HandleAnyException
 004A7415    mov         eax,dword ptr [ebp-4]
 004A7418    xor         edx,edx
 004A741A    mov         dword ptr [eax+24C],edx
 004A7420    mov         edx,dword ptr [ebp-4]
 004A7423    mov         eax,[00571E3C];Application:TApplication
 004A7428    call        TApplication.HandleException
 004A742D    call        @DoneExcept
 004A7432    pop         edi
 004A7433    pop         esi
 004A7434    pop         ebx
 004A7435    pop         ecx
 004A7436    pop         ecx
 004A7437    pop         ebp
 004A7438    ret
*}
end;

//004A743C
procedure sub_004A743C(?:TCustomForm);
begin
{*
 004A743C    push        ebp
 004A743D    mov         ebp,esp
 004A743F    push        ecx
 004A7440    mov         dword ptr [ebp-4],eax
 004A7443    xor         edx,edx
 004A7445    mov         eax,dword ptr [ebp-4]
 004A7448    call        TCustomForm.SetVisible
 004A744D    pop         ecx
 004A744E    pop         ebp
 004A744F    ret
*}
end;

//004A7450
procedure sub_004A7450(?:TCustomForm);
begin
{*
 004A7450    push        ebp
 004A7451    mov         ebp,esp
 004A7453    push        ecx
 004A7454    mov         dword ptr [ebp-4],eax
 004A7457    mov         dl,1
 004A7459    mov         eax,dword ptr [ebp-4]
 004A745C    call        TCustomForm.SetVisible
 004A7461    mov         eax,dword ptr [ebp-4]
 004A7464    call        00483BE4
 004A7469    pop         ecx
 004A746A    pop         ebp
 004A746B    ret
*}
end;

//004A746C
procedure sub_004A746C;
begin
{*
 004A746C    push        ebp
 004A746D    mov         ebp,esp
 004A746F    add         esp,0FFFFFFF8
 004A7472    xor         edx,edx
 004A7474    mov         dword ptr [ebp-8],edx
 004A7477    mov         dword ptr [ebp-4],eax
 004A747A    xor         eax,eax
 004A747C    push        ebp
 004A747D    push        4A74E8
 004A7482    push        dword ptr fs:[eax]
 004A7485    mov         dword ptr fs:[eax],esp
 004A7488    mov         eax,dword ptr [ebp-4]
 004A748B    cmp         byte ptr [eax+22E],0;TCustomForm.FActive:Boolean
>004A7492    jne         004A74D2
 004A7494    mov         eax,dword ptr [ebp-4]
 004A7497    cmp         byte ptr [eax+57],0;TCustomForm.FVisible:Boolean
>004A749B    je          004A74A9
 004A749D    mov         eax,dword ptr [ebp-4]
 004A74A0    mov         edx,dword ptr [eax]
 004A74A2    call        dword ptr [edx+50];TImage.GetEnabled
 004A74A5    test        al,al
>004A74A7    jne         004A74CA
 004A74A9    lea         edx,[ebp-8]
 004A74AC    mov         eax,[0056E51C];^SCannotFocus:TResStringRec
 004A74B1    call        LoadResString
 004A74B6    mov         ecx,dword ptr [ebp-8]
 004A74B9    mov         dl,1
 004A74BB    mov         eax,[0041D40C];EInvalidOperation
 004A74C0    call        Exception.Create;EInvalidOperation.Create
 004A74C5    call        @RaiseExcept
 004A74CA    mov         eax,dword ptr [ebp-4]
 004A74CD    call        004A5730
 004A74D2    xor         eax,eax
 004A74D4    pop         edx
 004A74D5    pop         ecx
 004A74D6    pop         ecx
 004A74D7    mov         dword ptr fs:[eax],edx
 004A74DA    push        4A74EF
 004A74DF    lea         eax,[ebp-8]
 004A74E2    call        @LStrClr
 004A74E7    ret
>004A74E8    jmp         @HandleFinally
>004A74ED    jmp         004A74DF
 004A74EF    pop         ecx
 004A74F0    pop         ecx
 004A74F1    pop         ebp
 004A74F2    ret
*}
end;

//004A74F4
procedure TCustomForm.Release;
begin
{*
 004A74F4    push        ebp
 004A74F5    mov         ebp,esp
 004A74F7    push        ecx
 004A74F8    mov         dword ptr [ebp-4],eax
 004A74FB    push        0
 004A74FD    push        0
 004A74FF    push        0B021
 004A7504    mov         eax,dword ptr [ebp-4]
 004A7507    call        TWinControl.GetHandle
 004A750C    push        eax
 004A750D    call        user32.PostMessageA
 004A7512    pop         ecx
 004A7513    pop         ebp
 004A7514    ret
*}
end;

//004A7518
{*function sub_004A7518:?;
begin
 004A7518    push        ebp
 004A7519    mov         ebp,esp
 004A751B    add         esp,0FFFFFFE0
 004A751E    push        ebx
 004A751F    xor         edx,edx
 004A7521    mov         dword ptr [ebp-20],edx
 004A7524    mov         dword ptr [ebp-4],eax
 004A7527    xor         eax,eax
 004A7529    push        ebp
 004A752A    push        4A77F2
 004A752F    push        dword ptr fs:[eax]
 004A7532    mov         dword ptr fs:[eax],esp
 004A7535    call        CancelDrag
 004A753A    mov         eax,dword ptr [ebp-4]
 004A753D    cmp         byte ptr [eax+57],0;TCustomForm.FVisible:Boolean
>004A7541    jne         004A7567
 004A7543    mov         eax,dword ptr [ebp-4]
 004A7546    mov         edx,dword ptr [eax]
 004A7548    call        dword ptr [edx+50];TImage.GetEnabled
 004A754B    test        al,al
>004A754D    je          004A7567
 004A754F    mov         eax,dword ptr [ebp-4]
 004A7552    test        byte ptr [eax+2F4],8;TCustomForm.FFormState:TFormState
>004A7559    jne         004A7567
 004A755B    mov         eax,dword ptr [ebp-4]
 004A755E    cmp         byte ptr [eax+22F],1;TCustomForm.FFormStyle:TFormStyle
>004A7565    jne         004A7588
 004A7567    lea         edx,[ebp-20]
 004A756A    mov         eax,[0056E290];^SCannotShowModal:TResStringRec
 004A756F    call        LoadResString
 004A7574    mov         ecx,dword ptr [ebp-20]
 004A7577    mov         dl,1
 004A7579    mov         eax,[0041D40C];EInvalidOperation
 004A757E    call        Exception.Create;EInvalidOperation.Create
 004A7583    call        @RaiseExcept
 004A7588    call        user32.GetCapture
 004A758D    test        eax,eax
>004A758F    je          004A75A2
 004A7591    push        0
 004A7593    push        0
 004A7595    push        1F
 004A7597    call        user32.GetCapture
 004A759C    push        eax
 004A759D    call        user32.SendMessageA
 004A75A2    call        user32.ReleaseCapture
 004A75A7    mov         eax,[00571E3C];0x0 Application:TApplication
 004A75AC    call        004AA3C0
 004A75B1    xor         eax,eax
 004A75B3    push        ebp
 004A75B4    push        4A77D5
 004A75B9    push        dword ptr fs:[eax]
 004A75BC    mov         dword ptr fs:[eax],esp
 004A75BF    mov         eax,dword ptr [ebp-4]
 004A75C2    or          byte ptr [eax+2F4],8;TCustomForm.FFormState:TFormState
 004A75C9    call        user32.GetActiveWindow
 004A75CE    mov         dword ptr [ebp-1C],eax
 004A75D1    mov         eax,[0056C9C4];0x0 gvar_0056C9C4
 004A75D6    mov         dword ptr [ebp-10],eax
 004A75D9    mov         eax,[00571E40];0x0 Screen:TScreen
 004A75DE    mov         ecx,dword ptr [eax+78];TScreen.FFocusedForm:TCustomForm
 004A75E1    mov         eax,[00571E40];0x0 Screen:TScreen
 004A75E6    mov         eax,dword ptr [eax+7C];TScreen.FSaveFocusedList:TList
 004A75E9    xor         edx,edx
 004A75EB    call        00420308
 004A75F0    mov         eax,[00571E40];0x0 Screen:TScreen
 004A75F5    mov         edx,dword ptr [ebp-4]
 004A75F8    mov         dword ptr [eax+78],edx;TScreen.FFocusedForm:TCustomForm
 004A75FB    mov         eax,[00571E40];0x0 Screen:TScreen
 004A7600    mov         ax,word ptr [eax+44];TScreen.FCursor:TCursor
 004A7604    mov         word ptr [ebp-12],ax
 004A7608    xor         edx,edx
 004A760A    mov         eax,[00571E40];0x0 Screen:TScreen
 004A760F    call        004A9064
 004A7614    mov         eax,[00571E40];0x0 Screen:TScreen
 004A7619    mov         eax,dword ptr [eax+48];TScreen.FCursorCount:Integer
 004A761C    mov         dword ptr [ebp-18],eax
 004A761F    xor         eax,eax
 004A7621    call        004A0240
 004A7626    mov         dword ptr [ebp-0C],eax
 004A7629    xor         eax,eax
 004A762B    push        ebp
 004A762C    push        4A77B3
 004A7631    push        dword ptr fs:[eax]
 004A7634    mov         dword ptr fs:[eax],esp
 004A7637    mov         eax,dword ptr [ebp-4]
 004A763A    call        004A7450
 004A763F    xor         eax,eax
 004A7641    push        ebp
 004A7642    push        4A7707
 004A7647    push        dword ptr fs:[eax]
 004A764A    mov         dword ptr fs:[eax],esp
 004A764D    push        0
 004A764F    push        0
 004A7651    push        0B000
 004A7656    mov         eax,dword ptr [ebp-4]
 004A7659    call        TWinControl.GetHandle
 004A765E    push        eax
 004A765F    call        user32.SendMessageA
 004A7664    mov         eax,dword ptr [ebp-4]
 004A7667    xor         edx,edx
 004A7669    mov         dword ptr [eax+24C],edx;TCustomForm.FModalResult:TModalResult
 004A766F    mov         eax,[00571E3C];0x0 Application:TApplication
 004A7674    call        004AB538
 004A7679    mov         eax,[00571E3C];0x0 Application:TApplication
 004A767E    cmp         byte ptr [eax+9C],0;TApplication.FTerminate:Boolean
>004A7685    je          004A7696
 004A7687    mov         eax,dword ptr [ebp-4]
 004A768A    mov         dword ptr [eax+24C],2;TCustomForm.FModalResult:TModalResult
>004A7694    jmp         004A76AA
 004A7696    mov         eax,dword ptr [ebp-4]
 004A7699    cmp         dword ptr [eax+24C],0;TCustomForm.FModalResult:TModalResult
>004A76A0    je          004A76AA
 004A76A2    mov         eax,dword ptr [ebp-4]
 004A76A5    call        TCustomForm.CloseModal
 004A76AA    mov         eax,dword ptr [ebp-4]
 004A76AD    cmp         dword ptr [eax+24C],0;TCustomForm.FModalResult:TModalResult
>004A76B4    je          004A766F
 004A76B6    mov         eax,dword ptr [ebp-4]
 004A76B9    mov         eax,dword ptr [eax+24C];TCustomForm.FModalResult:TModalResult
 004A76BF    mov         dword ptr [ebp-8],eax
 004A76C2    push        0
 004A76C4    push        0
 004A76C6    push        0B001
 004A76CB    mov         eax,dword ptr [ebp-4]
 004A76CE    call        TWinControl.GetHandle
 004A76D3    push        eax
 004A76D4    call        user32.SendMessageA
 004A76D9    mov         eax,dword ptr [ebp-4]
 004A76DC    call        TWinControl.GetHandle
 004A76E1    mov         ebx,eax
 004A76E3    call        user32.GetActiveWindow
 004A76E8    cmp         ebx,eax
>004A76EA    je          004A76F1
 004A76EC    xor         eax,eax
 004A76EE    mov         dword ptr [ebp-1C],eax
 004A76F1    xor         eax,eax
 004A76F3    pop         edx
 004A76F4    pop         ecx
 004A76F5    pop         ecx
 004A76F6    mov         dword ptr fs:[eax],edx
 004A76F9    push        4A770E
 004A76FE    mov         eax,dword ptr [ebp-4]
 004A7701    call        004A743C
 004A7706    ret
>004A7707    jmp         @HandleFinally
>004A770C    jmp         004A76FE
 004A770E    xor         eax,eax
 004A7710    pop         edx
 004A7711    pop         ecx
 004A7712    pop         ecx
 004A7713    mov         dword ptr fs:[eax],edx
 004A7716    push        4A77BD
 004A771B    mov         eax,[00571E40];0x0 Screen:TScreen
 004A7720    mov         eax,dword ptr [eax+48];TScreen.FCursorCount:Integer
 004A7723    cmp         eax,dword ptr [ebp-18]
>004A7726    jne         004A7738
 004A7728    mov         dx,word ptr [ebp-12]
 004A772C    mov         eax,[00571E40];0x0 Screen:TScreen
 004A7731    call        004A9064
>004A7736    jmp         004A7744
 004A7738    xor         edx,edx
 004A773A    mov         eax,[00571E40];0x0 Screen:TScreen
 004A773F    call        004A9064
 004A7744    mov         eax,dword ptr [ebp-0C]
 004A7747    call        004A02F8
 004A774C    mov         eax,[00571E40];0x0 Screen:TScreen
 004A7751    mov         eax,dword ptr [eax+7C];TScreen.FSaveFocusedList:TList
 004A7754    cmp         dword ptr [eax+8],0;TList.FCount:Integer
>004A7758    jle         004A7787
 004A775A    mov         eax,[00571E40];0x0 Screen:TScreen
 004A775F    mov         eax,dword ptr [eax+7C];TScreen.FSaveFocusedList:TList
 004A7762    call        004201FC
 004A7767    mov         edx,dword ptr ds:[571E40];0x0 Screen:TScreen
 004A776D    mov         dword ptr [edx+78],eax;TScreen.FFocusedForm:TCustomForm
 004A7770    mov         eax,[00571E40];0x0 Screen:TScreen
 004A7775    mov         edx,dword ptr [eax+78];TScreen.FFocusedForm:TCustomForm
 004A7778    mov         eax,[00571E40];0x0 Screen:TScreen
 004A777D    mov         eax,dword ptr [eax+7C];TScreen.FSaveFocusedList:TList
 004A7780    call        004204F0
>004A7785    jmp         004A7791
 004A7787    mov         eax,[00571E40];0x0 Screen:TScreen
 004A778C    xor         edx,edx
 004A778E    mov         dword ptr [eax+78],edx;TScreen.FFocusedForm:TCustomForm
 004A7791    cmp         dword ptr [ebp-1C],0
>004A7795    je          004A77A0
 004A7797    mov         eax,dword ptr [ebp-1C]
 004A779A    push        eax
 004A779B    call        user32.SetActiveWindow
 004A77A0    mov         eax,dword ptr [ebp-10]
 004A77A3    mov         [0056C9C4],eax;gvar_0056C9C4
 004A77A8    mov         eax,dword ptr [ebp-4]
 004A77AB    and         byte ptr [eax+2F4],0F7;TCustomForm.FFormState:TFormState
 004A77B2    ret
>004A77B3    jmp         @HandleFinally
>004A77B8    jmp         004A771B
 004A77BD    xor         eax,eax
 004A77BF    pop         edx
 004A77C0    pop         ecx
 004A77C1    pop         ecx
 004A77C2    mov         dword ptr fs:[eax],edx
 004A77C5    push        4A77DC
 004A77CA    mov         eax,[00571E3C];0x0 Application:TApplication
 004A77CF    call        004AA400
 004A77D4    ret
>004A77D5    jmp         @HandleFinally
>004A77DA    jmp         004A77CA
 004A77DC    xor         eax,eax
 004A77DE    pop         edx
 004A77DF    pop         ecx
 004A77E0    pop         ecx
 004A77E1    mov         dword ptr fs:[eax],edx
 004A77E4    push        4A77F9
 004A77E9    lea         eax,[ebp-20]
 004A77EC    call        @LStrClr
 004A77F1    ret
>004A77F2    jmp         @HandleFinally
>004A77F7    jmp         004A77E9
 004A77F9    mov         eax,dword ptr [ebp-8]
 004A77FC    pop         ebx
 004A77FD    mov         esp,ebp
 004A77FF    pop         ebp
 004A7800    ret
end;*}

//004A7804
{*procedure sub_004A7804(?:TCustomForm; ?:?);
begin
 004A7804    push        ebp
 004A7805    mov         ebp,esp
 004A7807    add         esp,0FFFFFFF0
 004A780A    mov         dword ptr [ebp-4],eax
 004A780D    mov         eax,dword ptr [ebp-4]
 004A7810    cmp         byte ptr [eax+1A6],0
>004A7817    je          004A7880
 004A7819    mov         eax,dword ptr [ebp-4]
 004A781C    call        00487E38
 004A7821    dec         eax
 004A7822    test        eax,eax
>004A7824    jl          004A7880
 004A7826    inc         eax
 004A7827    mov         dword ptr [ebp-10],eax
 004A782A    mov         dword ptr [ebp-8],0
 004A7831    mov         edx,dword ptr [ebp-8]
 004A7834    mov         eax,dword ptr [ebp-4]
 004A7837    call        00487DCC
 004A783C    mov         dword ptr [ebp-0C],eax
 004A783F    mov         eax,dword ptr [ebp-0C]
 004A7842    test        byte ptr [eax+51],80
>004A7846    je          004A7859
 004A7848    mov         eax,dword ptr [ebp-0C]
 004A784B    cmp         byte ptr [eax+57],0
>004A784F    je          004A7859
 004A7851    mov         eax,dword ptr [ebp-0C]
 004A7854    mov         edx,dword ptr [eax]
 004A7856    call        dword ptr [edx+78]
 004A7859    mov         eax,dword ptr [ebp-0C]
 004A785C    mov         edx,dword ptr ds:[47E678];TWinControl
 004A7862    call        @IsClass
 004A7867    test        al,al
>004A7869    je          004A7878
 004A786B    mov         eax,dword ptr [ebp+8]
 004A786E    push        eax
 004A786F    mov         eax,dword ptr [ebp-0C]
 004A7872    call        004A7804
 004A7877    pop         ecx
 004A7878    inc         dword ptr [ebp-8]
 004A787B    dec         dword ptr [ebp-10]
>004A787E    jne         004A7831
 004A7880    mov         esp,ebp
 004A7882    pop         ebp
 004A7883    ret
end;*}

//004A7884
procedure sub_004A7884;
begin
{*
 004A7884    push        ebp
 004A7885    mov         ebp,esp
 004A7887    add         esp,0FFFFFFF0
 004A788A    mov         dword ptr [ebp-4],eax
 004A788D    mov         eax,dword ptr [ebp-4]
 004A7890    test        byte ptr [eax+1C],10;TCustomForm.FComponentState:TComponentState
>004A7894    jne         004A7911
 004A7896    mov         eax,dword ptr [ebp-4]
 004A7899    cmp         byte ptr [eax+1A6],0;TCustomForm.FShowing:Boolean
>004A78A0    je          004A7911
 004A78A2    mov         eax,dword ptr [ebp-4]
 004A78A5    mov         edx,dword ptr [eax]
 004A78A7    call        dword ptr [edx+78];TCustomForm.sub_004867F8
 004A78AA    mov         eax,dword ptr [ebp-4]
 004A78AD    cmp         dword ptr [eax+248],0;TCustomForm.FMenu:TMainMenu
>004A78B4    je          004A7907
 004A78B6    mov         eax,dword ptr [ebp-4]
 004A78B9    mov         eax,dword ptr [eax+248];TCustomForm.FMenu:TMainMenu
 004A78BF    mov         eax,dword ptr [eax+34];TMainMenu.Items:TMenuItem
 004A78C2    call        0049A814
 004A78C7    dec         eax
 004A78C8    test        eax,eax
>004A78CA    jl          004A7907
 004A78CC    inc         eax
 004A78CD    mov         dword ptr [ebp-0C],eax
 004A78D0    mov         dword ptr [ebp-8],0
 004A78D7    mov         eax,dword ptr [ebp-4]
 004A78DA    mov         eax,dword ptr [eax+248];TCustomForm.FMenu:TMainMenu
 004A78E0    mov         eax,dword ptr [eax+34];TMainMenu.Items:TMenuItem
 004A78E3    mov         edx,dword ptr [ebp-8]
 004A78E6    call        0049A840
 004A78EB    mov         dword ptr [ebp-10],eax
 004A78EE    mov         eax,dword ptr [ebp-10]
 004A78F1    cmp         byte ptr [eax+3E],0
>004A78F5    je          004A78FF
 004A78F7    mov         eax,dword ptr [ebp-10]
 004A78FA    mov         edx,dword ptr [eax]
 004A78FC    call        dword ptr [edx+40]
 004A78FF    inc         dword ptr [ebp-8]
 004A7902    dec         dword ptr [ebp-0C]
>004A7905    jne         004A78D7
 004A7907    push        ebp
 004A7908    mov         eax,dword ptr [ebp-4]
 004A790B    call        004A7804
 004A7910    pop         ecx
 004A7911    mov         esp,ebp
 004A7913    pop         ebp
 004A7914    ret
*}
end;

//004A7918
procedure TCustomForm.sub_004826F8;
begin
{*
 004A7918    push        ebp
 004A7919    mov         ebp,esp
 004A791B    push        ecx
 004A791C    mov         dword ptr [ebp-4],eax
 004A791F    mov         eax,dword ptr [ebp-4]
 004A7922    cmp         dword ptr [eax+30],0;TCustomForm.FParent:TWinControl
>004A7926    jne         004A7938
 004A7928    mov         edx,dword ptr [ebp-4]
 004A792B    mov         eax,[00571E40];0x0 Screen:TScreen
 004A7930    call        004A97F8
 004A7935    pop         ecx
 004A7936    pop         ebp
 004A7937    ret
 004A7938    mov         eax,dword ptr [ebp-4]
 004A793B    call        TControl.sub_004826F8
 004A7940    pop         ecx
 004A7941    pop         ebp
 004A7942    ret
*}
end;

//004A7944
{*procedure TCustomForm.WMSettingChange(?:?);
begin
 004A7944    push        ebp
 004A7945    mov         ebp,esp
 004A7947    add         esp,0FFFFFFF8
 004A794A    push        esi
 004A794B    mov         dword ptr [ebp-8],edx
 004A794E    mov         dword ptr [ebp-4],eax
 004A7951    mov         edx,dword ptr [ebp-8]
 004A7954    mov         eax,dword ptr [ebp-4]
 004A7957    call        TWinControl.WMSettingChange
 004A795C    mov         eax,dword ptr [ebp-8]
 004A795F    cmp         dword ptr [eax+4],2F
>004A7963    jne         004A7971
 004A7965    mov         eax,dword ptr [ebp-4]
 004A7968    mov         si,0FFD0
 004A796C    call        @CallDynaInst;TCustomForm.sub_004826F8
 004A7971    pop         esi
 004A7972    pop         ecx
 004A7973    pop         ecx
 004A7974    pop         ebp
 004A7975    ret
end;*}

//004A7978
{*function sub_004A7978(?:TWinControl; ?:?):?;
begin
 004A7978    push        ebp
 004A7979    mov         ebp,esp
 004A797B    add         esp,0FFFFFFF8
 004A797E    push        esi
 004A797F    mov         dword ptr [ebp-4],eax
 004A7982    cmp         dword ptr [ebp-4],0
>004A7986    je          004A79A1
 004A7988    mov         eax,dword ptr [ebp+8]
 004A798B    mov         edx,dword ptr [eax-4]
 004A798E    mov         edx,dword ptr [edx+8]
 004A7991    mov         eax,dword ptr [ebp-4]
 004A7994    mov         si,0FFF3
 004A7998    call        @CallDynaInst
 004A799D    test        al,al
>004A799F    jne         004A79A5
 004A79A1    xor         eax,eax
>004A79A3    jmp         004A79A7
 004A79A5    mov         al,1
 004A79A7    mov         byte ptr [ebp-5],al
 004A79AA    mov         al,byte ptr [ebp-5]
 004A79AD    pop         esi
 004A79AE    pop         ecx
 004A79AF    pop         ecx
 004A79B0    pop         ebp
 004A79B1    ret
end;*}

//004A79B4
{*function sub_004A79B4(?:TCustomForm; ?:?):?;
begin
 004A79B4    push        ebp
 004A79B5    mov         ebp,esp
 004A79B7    add         esp,0FFFFFFEC
 004A79BA    mov         dword ptr [ebp-4],eax
 004A79BD    mov         eax,dword ptr [ebp-4]
 004A79C0    cmp         byte ptr [eax+1A6],0
>004A79C7    je          004A7A3A
 004A79C9    mov         eax,dword ptr [ebp-4]
 004A79CC    call        00487E38
 004A79D1    dec         eax
 004A79D2    test        eax,eax
>004A79D4    jl          004A7A3A
 004A79D6    inc         eax
 004A79D7    mov         dword ptr [ebp-14],eax
 004A79DA    mov         dword ptr [ebp-0C],0
 004A79E1    mov         edx,dword ptr [ebp-0C]
 004A79E4    mov         eax,dword ptr [ebp-4]
 004A79E7    call        00487DCC
 004A79EC    mov         dword ptr [ebp-10],eax
 004A79EF    mov         eax,dword ptr [ebp-10]
 004A79F2    cmp         byte ptr [eax+57],0
>004A79F6    je          004A7A09
 004A79F8    mov         eax,dword ptr [ebp+8]
 004A79FB    push        eax
 004A79FC    mov         eax,dword ptr [ebp-10]
 004A79FF    call        004A7978
 004A7A04    pop         ecx
 004A7A05    test        al,al
>004A7A07    jne         004A7A2C
 004A7A09    mov         eax,dword ptr [ebp-10]
 004A7A0C    mov         edx,dword ptr ds:[47E678];TWinControl
 004A7A12    call        @IsClass
 004A7A17    test        al,al
>004A7A19    je          004A7A32
 004A7A1B    mov         eax,dword ptr [ebp+8]
 004A7A1E    push        eax
 004A7A1F    mov         eax,dword ptr [ebp-10]
 004A7A22    call        004A79B4
 004A7A27    pop         ecx
 004A7A28    test        al,al
>004A7A2A    je          004A7A32
 004A7A2C    mov         byte ptr [ebp-5],1
>004A7A30    jmp         004A7A3E
 004A7A32    inc         dword ptr [ebp-0C]
 004A7A35    dec         dword ptr [ebp-14]
>004A7A38    jne         004A79E1
 004A7A3A    mov         byte ptr [ebp-5],0
 004A7A3E    mov         al,byte ptr [ebp-5]
 004A7A41    mov         esp,ebp
 004A7A43    pop         ebp
 004A7A44    ret
end;*}

//004A7A48
{*procedure TCustomForm.CMActionExecute(?:?);
begin
 004A7A48    push        ebp
 004A7A49    mov         ebp,esp
 004A7A4B    add         esp,0FFFFFFF8
 004A7A4E    mov         dword ptr [ebp-4],edx
 004A7A51    mov         dword ptr [ebp-8],eax
 004A7A54    mov         eax,dword ptr [ebp-8]
 004A7A57    test        byte ptr [eax+1C],10;TCustomForm.FComponentState:TComponentState
>004A7A5B    jne         004A7AA3
 004A7A5D    mov         eax,dword ptr [ebp-8]
 004A7A60    cmp         byte ptr [eax+1A6],0;TCustomForm.FShowing:Boolean
>004A7A67    je          004A7AA3
 004A7A69    push        ebp
 004A7A6A    mov         eax,dword ptr [ebp-8]
 004A7A6D    mov         eax,dword ptr [eax+220];TCustomForm.FActiveControl:TWinControl
 004A7A73    call        004A7978
 004A7A78    pop         ecx
 004A7A79    test        al,al
>004A7A7B    jne         004A7A99
 004A7A7D    push        ebp
 004A7A7E    mov         eax,dword ptr [ebp-8]
 004A7A81    call        004A7978
 004A7A86    pop         ecx
 004A7A87    test        al,al
>004A7A89    jne         004A7A99
 004A7A8B    push        ebp
 004A7A8C    mov         eax,dword ptr [ebp-8]
 004A7A8F    call        004A79B4
 004A7A94    pop         ecx
 004A7A95    test        al,al
>004A7A97    je          004A7AA3
 004A7A99    mov         eax,dword ptr [ebp-4]
 004A7A9C    mov         dword ptr [eax+0C],1
 004A7AA3    pop         ecx
 004A7AA4    pop         ecx
 004A7AA5    pop         ebp
 004A7AA6    ret
end;*}

//004A7AA8
{*function sub_004A7AA8(?:TWinControl; ?:?):?;
begin
 004A7AA8    push        ebp
 004A7AA9    mov         ebp,esp
 004A7AAB    add         esp,0FFFFFFF8
 004A7AAE    push        esi
 004A7AAF    mov         dword ptr [ebp-4],eax
 004A7AB2    cmp         dword ptr [ebp-4],0
>004A7AB6    je          004A7AD1
 004A7AB8    mov         eax,dword ptr [ebp+8]
 004A7ABB    mov         edx,dword ptr [eax-4]
 004A7ABE    mov         edx,dword ptr [edx+8]
 004A7AC1    mov         eax,dword ptr [ebp-4]
 004A7AC4    mov         si,0FFF0
 004A7AC8    call        @CallDynaInst
 004A7ACD    test        al,al
>004A7ACF    jne         004A7AD5
 004A7AD1    xor         eax,eax
>004A7AD3    jmp         004A7AD7
 004A7AD5    mov         al,1
 004A7AD7    mov         byte ptr [ebp-5],al
 004A7ADA    mov         al,byte ptr [ebp-5]
 004A7ADD    pop         esi
 004A7ADE    pop         ecx
 004A7ADF    pop         ecx
 004A7AE0    pop         ebp
 004A7AE1    ret
end;*}

//004A7AE4
{*function sub_004A7AE4(?:TCustomForm; ?:?):?;
begin
 004A7AE4    push        ebp
 004A7AE5    mov         ebp,esp
 004A7AE7    add         esp,0FFFFFFEC
 004A7AEA    mov         dword ptr [ebp-4],eax
 004A7AED    mov         eax,dword ptr [ebp-4]
 004A7AF0    cmp         byte ptr [eax+1A6],0
>004A7AF7    je          004A7B6A
 004A7AF9    mov         eax,dword ptr [ebp-4]
 004A7AFC    call        00487E38
 004A7B01    dec         eax
 004A7B02    test        eax,eax
>004A7B04    jl          004A7B6A
 004A7B06    inc         eax
 004A7B07    mov         dword ptr [ebp-14],eax
 004A7B0A    mov         dword ptr [ebp-0C],0
 004A7B11    mov         edx,dword ptr [ebp-0C]
 004A7B14    mov         eax,dword ptr [ebp-4]
 004A7B17    call        00487DCC
 004A7B1C    mov         dword ptr [ebp-10],eax
 004A7B1F    mov         eax,dword ptr [ebp-10]
 004A7B22    cmp         byte ptr [eax+57],0
>004A7B26    je          004A7B39
 004A7B28    mov         eax,dword ptr [ebp+8]
 004A7B2B    push        eax
 004A7B2C    mov         eax,dword ptr [ebp-10]
 004A7B2F    call        004A7AA8
 004A7B34    pop         ecx
 004A7B35    test        al,al
>004A7B37    jne         004A7B5C
 004A7B39    mov         eax,dword ptr [ebp-10]
 004A7B3C    mov         edx,dword ptr ds:[47E678];TWinControl
 004A7B42    call        @IsClass
 004A7B47    test        al,al
>004A7B49    je          004A7B62
 004A7B4B    mov         eax,dword ptr [ebp+8]
 004A7B4E    push        eax
 004A7B4F    mov         eax,dword ptr [ebp-10]
 004A7B52    call        004A7AE4
 004A7B57    pop         ecx
 004A7B58    test        al,al
>004A7B5A    je          004A7B62
 004A7B5C    mov         byte ptr [ebp-5],1
>004A7B60    jmp         004A7B6E
 004A7B62    inc         dword ptr [ebp-0C]
 004A7B65    dec         dword ptr [ebp-14]
>004A7B68    jne         004A7B11
 004A7B6A    mov         byte ptr [ebp-5],0
 004A7B6E    mov         al,byte ptr [ebp-5]
 004A7B71    mov         esp,ebp
 004A7B73    pop         ebp
 004A7B74    ret
end;*}

//004A7B78
{*procedure TCustomForm.CMActionUpdate(?:?);
begin
 004A7B78    push        ebp
 004A7B79    mov         ebp,esp
 004A7B7B    add         esp,0FFFFFFF8
 004A7B7E    mov         dword ptr [ebp-4],edx
 004A7B81    mov         dword ptr [ebp-8],eax
 004A7B84    mov         eax,dword ptr [ebp-8]
 004A7B87    test        byte ptr [eax+1C],10;TCustomForm.FComponentState:TComponentState
>004A7B8B    jne         004A7BD3
 004A7B8D    mov         eax,dword ptr [ebp-8]
 004A7B90    cmp         byte ptr [eax+1A6],0;TCustomForm.FShowing:Boolean
>004A7B97    je          004A7BD3
 004A7B99    push        ebp
 004A7B9A    mov         eax,dword ptr [ebp-8]
 004A7B9D    mov         eax,dword ptr [eax+220];TCustomForm.FActiveControl:TWinControl
 004A7BA3    call        004A7AA8
 004A7BA8    pop         ecx
 004A7BA9    test        al,al
>004A7BAB    jne         004A7BC9
 004A7BAD    push        ebp
 004A7BAE    mov         eax,dword ptr [ebp-8]
 004A7BB1    call        004A7AA8
 004A7BB6    pop         ecx
 004A7BB7    test        al,al
>004A7BB9    jne         004A7BC9
 004A7BBB    push        ebp
 004A7BBC    mov         eax,dword ptr [ebp-8]
 004A7BBF    call        004A7AE4
 004A7BC4    pop         ecx
 004A7BC5    test        al,al
>004A7BC7    je          004A7BD3
 004A7BC9    mov         eax,dword ptr [ebp-4]
 004A7BCC    mov         dword ptr [eax+0C],1
 004A7BD3    pop         ecx
 004A7BD4    pop         ecx
 004A7BD5    pop         ebp
 004A7BD6    ret
end;*}

//004A7BD8
{*function sub_004A7BD8(?:?):?;
begin
 004A7BD8    push        ebp
 004A7BD9    mov         ebp,esp
 004A7BDB    add         esp,0FFFFFFF4
 004A7BDE    mov         eax,dword ptr [ebp+8]
 004A7BE1    mov         eax,dword ptr [eax-4]
 004A7BE4    cmp         dword ptr [eax+2F0],0
>004A7BEB    je          004A7C3D
 004A7BED    mov         eax,dword ptr [ebp+8]
 004A7BF0    mov         eax,dword ptr [eax-4]
 004A7BF3    mov         eax,dword ptr [eax+2F0]
 004A7BF9    mov         eax,dword ptr [eax+8]
 004A7BFC    dec         eax
 004A7BFD    test        eax,eax
>004A7BFF    jl          004A7C3D
 004A7C01    inc         eax
 004A7C02    mov         dword ptr [ebp-0C],eax
 004A7C05    mov         dword ptr [ebp-8],0
 004A7C0C    mov         eax,dword ptr [ebp+8]
 004A7C0F    mov         eax,dword ptr [eax-4]
 004A7C12    mov         eax,dword ptr [eax+2F0]
 004A7C18    mov         edx,dword ptr [ebp-8]
 004A7C1B    call        TList.Get
 004A7C20    mov         edx,dword ptr [ebp+8]
 004A7C23    mov         edx,dword ptr [edx-8]
 004A7C26    call        004937E4
 004A7C2B    test        al,al
>004A7C2D    je          004A7C35
 004A7C2F    mov         byte ptr [ebp-1],1
>004A7C33    jmp         004A7C41
 004A7C35    inc         dword ptr [ebp-8]
 004A7C38    dec         dword ptr [ebp-0C]
>004A7C3B    jne         004A7C0C
 004A7C3D    mov         byte ptr [ebp-1],0
 004A7C41    mov         al,byte ptr [ebp-1]
 004A7C44    mov         esp,ebp
 004A7C46    pop         ebp
 004A7C47    ret
end;*}

//004A7C48
{*procedure TCustomForm.sub_004A7C48(?:?);
begin
 004A7C48    push        ebp
 004A7C49    mov         ebp,esp
 004A7C4B    add         esp,0FFFFFFF4
 004A7C4E    push        ebx
 004A7C4F    push        esi
 004A7C50    mov         dword ptr [ebp-8],edx
 004A7C53    mov         dword ptr [ebp-4],eax
 004A7C56    mov         byte ptr [ebp-9],0
 004A7C5A    mov         eax,dword ptr [ebp-4]
 004A7C5D    cmp         word ptr [eax+2C2],0;TCustomForm.?f2C2:word
>004A7C65    je          004A7C7C
 004A7C67    lea         ecx,[ebp-9]
 004A7C6A    mov         edx,dword ptr [ebp-8]
 004A7C6D    mov         ebx,dword ptr [ebp-4]
 004A7C70    mov         eax,dword ptr [ebx+2C4];TCustomForm.?f2C4:dword
 004A7C76    call        dword ptr [ebx+2C0];TCustomForm.FOnShortCut
 004A7C7C    cmp         byte ptr [ebp-9],0
>004A7C80    jne         004A7CC5
 004A7C82    mov         eax,dword ptr [ebp-4]
 004A7C85    cmp         dword ptr [eax+248],0;TCustomForm.FMenu:TMainMenu
>004A7C8C    je          004A7CB6
 004A7C8E    mov         eax,dword ptr [ebp-4]
 004A7C91    mov         eax,dword ptr [eax+248];TCustomForm.FMenu:TMainMenu
 004A7C97    cmp         dword ptr [eax+38],0;TMainMenu.FWindowHandle:HWND
>004A7C9B    je          004A7CB6
 004A7C9D    mov         edx,dword ptr [ebp-8]
 004A7CA0    mov         eax,dword ptr [ebp-4]
 004A7CA3    mov         eax,dword ptr [eax+248];TCustomForm.FMenu:TMainMenu
 004A7CA9    mov         si,0FFEF
 004A7CAD    call        @CallDynaInst;TMenu.sub_0049C770
 004A7CB2    test        al,al
>004A7CB4    jne         004A7CC5
 004A7CB6    push        ebp
 004A7CB7    call        004A7BD8
 004A7CBC    pop         ecx
 004A7CBD    test        al,al
>004A7CBF    jne         004A7CC5
 004A7CC1    xor         eax,eax
>004A7CC3    jmp         004A7CC7
 004A7CC5    mov         al,1
 004A7CC7    mov         byte ptr [ebp-9],al
 004A7CCA    mov         al,byte ptr [ebp-9]
 004A7CCD    pop         esi
 004A7CCE    pop         ebx
 004A7CCF    mov         esp,ebp
 004A7CD1    pop         ebp
 004A7CD2    ret
end;*}

//004A7CD4
{*function sub_004A7CD4(?:?; ?:?):?;
begin
 004A7CD4    push        ebp
 004A7CD5    mov         ebp,esp
 004A7CD7    push        ecx
 004A7CD8    mov         eax,dword ptr [ebp+8]
 004A7CDB    cmp         dword ptr [eax+250],0
>004A7CE2    je          004A7CFE
 004A7CE4    mov         eax,dword ptr [ebp+10]
 004A7CE7    push        eax
 004A7CE8    mov         eax,dword ptr [ebp+0C]
 004A7CEB    push        eax
 004A7CEC    mov         eax,dword ptr [ebp+8]
 004A7CEF    mov         eax,dword ptr [eax+250]
 004A7CF5    push        eax
 004A7CF6    mov         eax,dword ptr [eax]
 004A7CF8    call        dword ptr [eax]
 004A7CFA    test        eax,eax
>004A7CFC    je          004A7D14
 004A7CFE    mov         eax,dword ptr [ebp+10]
 004A7D01    push        eax
 004A7D02    mov         eax,dword ptr [ebp+0C]
 004A7D05    push        eax
 004A7D06    mov         eax,dword ptr [ebp+8]
 004A7D09    push        eax
 004A7D0A    call        0042AD84
 004A7D0F    mov         dword ptr [ebp-4],eax
>004A7D12    jmp         004A7D19
 004A7D14    xor         eax,eax
 004A7D16    mov         dword ptr [ebp-4],eax
 004A7D19    mov         eax,dword ptr [ebp-4]
 004A7D1C    pop         ecx
 004A7D1D    pop         ebp
 004A7D1E    ret         0C
end;*}

//004A7D24
{*procedure TCustomForm.sub_00483F2C(?:?);
begin
 004A7D24    push        ebp
 004A7D25    mov         ebp,esp
 004A7D27    add         esp,0FFFFFFF8
 004A7D2A    mov         dword ptr [ebp-8],edx
 004A7D2D    mov         dword ptr [ebp-4],eax
 004A7D30    mov         eax,dword ptr [ebp-4]
 004A7D33    cmp         dword ptr [eax+224],0;TCustomForm.FFocusedControl:TWinControl
>004A7D3A    je          004A7D64
 004A7D3C    mov         eax,dword ptr [ebp-8]
 004A7D3F    mov         eax,dword ptr [eax+8]
 004A7D42    push        eax
 004A7D43    mov         ecx,dword ptr [ebp-8]
 004A7D46    mov         ecx,dword ptr [ecx+4]
 004A7D49    mov         edx,0B043
 004A7D4E    mov         eax,dword ptr [ebp-4]
 004A7D51    mov         eax,dword ptr [eax+224];TCustomForm.FFocusedControl:TWinControl
 004A7D57    call        00484FFC
 004A7D5C    mov         edx,dword ptr [ebp-8]
 004A7D5F    mov         dword ptr [edx+0C],eax
>004A7D62    jmp         004A7D6F
 004A7D64    mov         edx,dword ptr [ebp-8]
 004A7D67    mov         eax,dword ptr [ebp-4]
 004A7D6A    call        TControl.sub_00483F2C
 004A7D6F    pop         ecx
 004A7D70    pop         ecx
 004A7D71    pop         ebp
 004A7D72    ret
end;*}

//004A7D74
procedure TCustomForm.sub_004A7D74;
begin
{*
 004A7D74    push        ebp
 004A7D75    mov         ebp,esp
 004A7D77    add         esp,0FFFFFFF8
 004A7D7A    mov         dword ptr [ebp-4],eax
 004A7D7D    mov         edx,dword ptr [ebp-4]
 004A7D80    mov         eax,[00571E3C];0x0 Application:TApplication
 004A7D85    call        TApplication.HandleException
 004A7D8A    mov         byte ptr [ebp-5],1
 004A7D8E    mov         al,byte ptr [ebp-5]
 004A7D91    pop         ecx
 004A7D92    pop         ecx
 004A7D93    pop         ebp
 004A7D94    ret
*}
end;

//004A7D98
procedure sub_004A7D98(?:TCustomForm);
begin
{*
 004A7D98    push        ebp
 004A7D99    mov         ebp,esp
 004A7D9B    add         esp,0FFFFFFF8
 004A7D9E    mov         dword ptr [ebp-4],eax
 004A7DA1    mov         eax,dword ptr [ebp-4]
 004A7DA4    test        byte ptr [eax+1C],10;TCustomForm.FComponentState:TComponentState
>004A7DA8    jne         004A7E8D
 004A7DAE    cmp         dword ptr ds:[56C9BC],0;gvar_0056C9BC:Pointer
>004A7DB5    je          004A7E8D
 004A7DBB    mov         eax,dword ptr [ebp-4]
 004A7DBE    call        TWinControl.HandleAllocated
 004A7DC3    test        al,al
>004A7DC5    je          004A7E8D
 004A7DCB    push        0EC
 004A7DCD    mov         eax,dword ptr [ebp-4]
 004A7DD0    call        TWinControl.GetHandle
 004A7DD5    push        eax
 004A7DD6    call        user32.GetWindowLongA
 004A7DDB    mov         dword ptr [ebp-8],eax
 004A7DDE    mov         eax,dword ptr [ebp-4]
 004A7DE1    cmp         byte ptr [eax+2E0],0;TCustomForm.FAlphaBlend:Boolean
>004A7DE8    jne         004A7DF6
 004A7DEA    mov         eax,dword ptr [ebp-4]
 004A7DED    cmp         byte ptr [eax+2E8],0;TCustomForm.FTransparentColor:Boolean
>004A7DF4    je          004A7E5D
 004A7DF6    test        byte ptr [ebp-6],8
>004A7DFA    jne         004A7E15
 004A7DFC    mov         eax,dword ptr [ebp-8]
 004A7DFF    or          eax,80000
 004A7E04    push        eax
 004A7E05    push        0EC
 004A7E07    mov         eax,dword ptr [ebp-4]
 004A7E0A    call        TWinControl.GetHandle
 004A7E0F    push        eax
 004A7E10    call        user32.SetWindowLongA
 004A7E15    mov         eax,dword ptr [ebp-4]
 004A7E18    movzx       eax,byte ptr [eax+2E0];TCustomForm.FAlphaBlend:Boolean
 004A7E1F    mov         eax,dword ptr [eax*4+56CA40]
 004A7E26    mov         edx,dword ptr [ebp-4]
 004A7E29    movzx       edx,byte ptr [edx+2E8];TCustomForm.FTransparentColor:Boolean
 004A7E30    or          eax,dword ptr [edx*4+56CA48]
 004A7E37    push        eax
 004A7E38    mov         eax,dword ptr [ebp-4]
 004A7E3B    mov         al,byte ptr [eax+2E1];TCustomForm.FAlphaBlendValue:byte
 004A7E41    push        eax
 004A7E42    mov         eax,dword ptr [ebp-4]
 004A7E45    mov         eax,dword ptr [eax+2EC];TCustomForm.FTransparentColorValue:TColor
 004A7E4B    push        eax
 004A7E4C    mov         eax,dword ptr [ebp-4]
 004A7E4F    call        TWinControl.GetHandle
 004A7E54    push        eax
 004A7E55    call        dword ptr ds:[56C9BC]
>004A7E5B    jmp         004A7E8D
 004A7E5D    mov         eax,dword ptr [ebp-8]
 004A7E60    and         eax,0FFF7FFFF
 004A7E65    push        eax
 004A7E66    push        0EC
 004A7E68    mov         eax,dword ptr [ebp-4]
 004A7E6B    call        TWinControl.GetHandle
 004A7E70    push        eax
 004A7E71    call        user32.SetWindowLongA
 004A7E76    push        485
 004A7E7B    push        0
 004A7E7D    push        0
 004A7E7F    mov         eax,dword ptr [ebp-4]
 004A7E82    call        TWinControl.GetHandle
 004A7E87    push        eax
 004A7E88    call        user32.RedrawWindow
 004A7E8D    pop         ecx
 004A7E8E    pop         ecx
 004A7E8F    pop         ebp
 004A7E90    ret
*}
end;

//004A7E94
procedure TForm.SetAlphaBlend(Value:Boolean);
begin
{*
 004A7E94    push        ebp
 004A7E95    mov         ebp,esp
 004A7E97    add         esp,0FFFFFFF8
 004A7E9A    mov         byte ptr [ebp-5],dl
 004A7E9D    mov         dword ptr [ebp-4],eax
 004A7EA0    mov         eax,dword ptr [ebp-4]
 004A7EA3    mov         al,byte ptr [eax+2E0];TForm.FAlphaBlend:Boolean
 004A7EA9    cmp         al,byte ptr [ebp-5]
>004A7EAC    je          004A7EC2
 004A7EAE    mov         al,byte ptr [ebp-5]
 004A7EB1    mov         edx,dword ptr [ebp-4]
 004A7EB4    mov         byte ptr [edx+2E0],al;TForm.FAlphaBlend:Boolean
 004A7EBA    mov         eax,dword ptr [ebp-4]
 004A7EBD    call        004A7D98
 004A7EC2    pop         ecx
 004A7EC3    pop         ecx
 004A7EC4    pop         ebp
 004A7EC5    ret
*}
end;

//004A7EC8
procedure TForm.SetAlphaBlendValue(Value:Byte);
begin
{*
 004A7EC8    push        ebp
 004A7EC9    mov         ebp,esp
 004A7ECB    add         esp,0FFFFFFF8
 004A7ECE    mov         byte ptr [ebp-5],dl
 004A7ED1    mov         dword ptr [ebp-4],eax
 004A7ED4    mov         eax,dword ptr [ebp-4]
 004A7ED7    mov         al,byte ptr [eax+2E1];TForm.FAlphaBlendValue:byte
 004A7EDD    cmp         al,byte ptr [ebp-5]
>004A7EE0    je          004A7EF6
 004A7EE2    mov         al,byte ptr [ebp-5]
 004A7EE5    mov         edx,dword ptr [ebp-4]
 004A7EE8    mov         byte ptr [edx+2E1],al;TForm.FAlphaBlendValue:byte
 004A7EEE    mov         eax,dword ptr [ebp-4]
 004A7EF1    call        004A7D98
 004A7EF6    pop         ecx
 004A7EF7    pop         ecx
 004A7EF8    pop         ebp
 004A7EF9    ret
*}
end;

//004A7EFC
procedure TForm.SetTransparentColorValue(Value:TColor);
begin
{*
 004A7EFC    push        ebp
 004A7EFD    mov         ebp,esp
 004A7EFF    add         esp,0FFFFFFF8
 004A7F02    mov         dword ptr [ebp-8],edx
 004A7F05    mov         dword ptr [ebp-4],eax
 004A7F08    mov         eax,dword ptr [ebp-4]
 004A7F0B    mov         eax,dword ptr [eax+2EC];TForm.FTransparentColorValue:TColor
 004A7F11    cmp         eax,dword ptr [ebp-8]
>004A7F14    je          004A7F2A
 004A7F16    mov         eax,dword ptr [ebp-8]
 004A7F19    mov         edx,dword ptr [ebp-4]
 004A7F1C    mov         dword ptr [edx+2EC],eax;TForm.FTransparentColorValue:TColor
 004A7F22    mov         eax,dword ptr [ebp-4]
 004A7F25    call        004A7D98
 004A7F2A    pop         ecx
 004A7F2B    pop         ecx
 004A7F2C    pop         ebp
 004A7F2D    ret
*}
end;

//004A7F30
procedure TForm.SetTransparentColor(Value:Boolean);
begin
{*
 004A7F30    push        ebp
 004A7F31    mov         ebp,esp
 004A7F33    add         esp,0FFFFFFF8
 004A7F36    mov         byte ptr [ebp-5],dl
 004A7F39    mov         dword ptr [ebp-4],eax
 004A7F3C    mov         eax,dword ptr [ebp-4]
 004A7F3F    mov         al,byte ptr [eax+2E8];TForm.FTransparentColor:Boolean
 004A7F45    cmp         al,byte ptr [ebp-5]
>004A7F48    je          004A7F5E
 004A7F4A    mov         al,byte ptr [ebp-5]
 004A7F4D    mov         edx,dword ptr [ebp-4]
 004A7F50    mov         byte ptr [edx+2E8],al;TForm.FTransparentColor:Boolean
 004A7F56    mov         eax,dword ptr [ebp-4]
 004A7F59    call        004A7D98
 004A7F5E    pop         ecx
 004A7F5F    pop         ecx
 004A7F60    pop         ebp
 004A7F61    ret
*}
end;

//004A7F64
{*procedure sub_004A7F64(?:TCustomForm; ?:?);
begin
 004A7F64    push        ebp
 004A7F65    mov         ebp,esp
 004A7F67    add         esp,0FFFFFFF8
 004A7F6A    mov         dword ptr [ebp-8],edx
 004A7F6D    mov         dword ptr [ebp-4],eax
 004A7F70    mov         eax,dword ptr [ebp-4]
 004A7F73    test        byte ptr [eax+1C],10;TCustomForm.FComponentState:TComponentState
>004A7F77    jne         004A7FA4
 004A7F79    cmp         dword ptr ds:[56C9BC],0;gvar_0056C9BC:Pointer
>004A7F80    je          004A7FA4
 004A7F82    mov         eax,dword ptr [ebp-4]
 004A7F85    cmp         byte ptr [eax+2E0],0;TCustomForm.FAlphaBlend:Boolean
>004A7F8C    jne         004A7F9A
 004A7F8E    mov         eax,dword ptr [ebp-4]
 004A7F91    cmp         byte ptr [eax+2E8],0;TCustomForm.FTransparentColor:Boolean
>004A7F98    je          004A7FA4
 004A7F9A    mov         eax,dword ptr [ebp-8]
 004A7F9D    or          dword ptr [eax+8],80000
 004A7FA4    pop         ecx
 004A7FA5    pop         ecx
 004A7FA6    pop         ebp
 004A7FA7    ret
end;*}

//004A7FA8
constructor sub_004A7FA8;
begin
{*
 004A7FA8    push        ebp
 004A7FA9    mov         ebp,esp
 004A7FAB    add         esp,0FFFFFFF4
 004A7FAE    push        ebx
 004A7FAF    test        dl,dl
>004A7FB1    je          004A7FBB
 004A7FB3    add         esp,0FFFFFFF0
 004A7FB6    call        @ClassCreate
 004A7FBB    mov         dword ptr [ebp-0C],ecx
 004A7FBE    mov         byte ptr [ebp-5],dl
 004A7FC1    mov         dword ptr [ebp-4],eax
 004A7FC4    push        0
 004A7FC6    mov         ecx,dword ptr [ebp-0C]
 004A7FC9    xor         edx,edx
 004A7FCB    mov         eax,dword ptr [ebp-4]
 004A7FCE    mov         ebx,dword ptr [eax]
 004A7FD0    call        dword ptr [ebx+0E0];TCustomDockForm.sub_004A231C
 004A7FD6    xor         edx,edx
 004A7FD8    mov         eax,dword ptr [ebp-4]
 004A7FDB    call        TForm.SetAutoScroll
 004A7FE0    mov         dl,5
 004A7FE2    mov         eax,dword ptr [ebp-4]
 004A7FE5    call        TForm.SetBorderStyle
 004A7FEA    mov         dl,1
 004A7FEC    mov         eax,dword ptr [ebp-4]
 004A7FEF    call        TPanel.SetDockSite
 004A7FF4    mov         dl,3
 004A7FF6    mov         eax,dword ptr [ebp-4]
 004A7FF9    call        TForm.SetFormStyle
 004A7FFE    mov         eax,dword ptr [ebp-4]
 004A8001    cmp         byte ptr [ebp-5],0
>004A8005    je          004A8016
 004A8007    call        @AfterConstruction
 004A800C    pop         dword ptr fs:[0]
 004A8013    add         esp,0C
 004A8016    mov         eax,dword ptr [ebp-4]
 004A8019    pop         ebx
 004A801A    mov         esp,ebp
 004A801C    pop         ebp
 004A801D    ret
*}
end;

//004A8020
{*procedure TCustomDockForm.sub_0048A1E8(?:?; ?:?);
begin
 004A8020    push        ebp
 004A8021    mov         ebp,esp
 004A8023    add         esp,0FFFFFFE8
 004A8026    push        ebx
 004A8027    xor         ebx,ebx
 004A8029    mov         dword ptr [ebp-10],ebx
 004A802C    mov         dword ptr [ebp-0C],ecx
 004A802F    mov         dword ptr [ebp-8],edx
 004A8032    mov         dword ptr [ebp-4],eax
 004A8035    xor         eax,eax
 004A8037    push        ebp
 004A8038    push        4A8109
 004A803D    push        dword ptr fs:[eax]
 004A8040    mov         dword ptr fs:[eax],esp
 004A8043    mov         eax,dword ptr [ebp-4]
 004A8046    call        0048A408
 004A804B    dec         eax
>004A804C    jne         004A80C8
 004A804E    mov         eax,dword ptr [ebp-8]
 004A8051    call        00483694
 004A8056    mov         ecx,eax
 004A8058    inc         ecx
 004A8059    lea         eax,[ebp-10]
 004A805C    xor         edx,edx
 004A805E    call        @LStrFromPCharLen
 004A8063    mov         eax,dword ptr [ebp-10]
 004A8066    call        @LStrLen
 004A806B    push        eax
 004A806C    mov         eax,dword ptr [ebp-10]
 004A806F    call        @LStrToPChar
 004A8074    mov         edx,eax
 004A8076    mov         eax,dword ptr [ebp-8]
 004A8079    pop         ecx
 004A807A    call        004836B8
 004A807F    mov         eax,dword ptr [ebp-10]
 004A8082    call        @LStrLen
 004A8087    test        eax,eax
>004A8089    jle         004A80BD
 004A808B    mov         dword ptr [ebp-18],eax
 004A808E    mov         dword ptr [ebp-14],1
 004A8095    mov         eax,dword ptr [ebp-10]
 004A8098    mov         edx,dword ptr [ebp-14]
 004A809B    mov         al,byte ptr [eax+edx-1]
 004A809F    sub         al,0A
>004A80A1    je          004A80A7
 004A80A3    sub         al,3
>004A80A5    jne         004A80B5
 004A80A7    mov         edx,dword ptr [ebp-14]
 004A80AA    dec         edx
 004A80AB    lea         eax,[ebp-10]
 004A80AE    call        @LStrSetLength
>004A80B3    jmp         004A80BD
 004A80B5    inc         dword ptr [ebp-14]
 004A80B8    dec         dword ptr [ebp-18]
>004A80BB    jne         004A8095
 004A80BD    mov         edx,dword ptr [ebp-10]
 004A80C0    mov         eax,dword ptr [ebp-4]
 004A80C3    call        TPanel.SetCaption
 004A80C8    mov         ecx,dword ptr [ebp-0C]
 004A80CB    mov         edx,dword ptr [ebp-8]
 004A80CE    mov         eax,dword ptr [ebp-4]
 004A80D1    call        TWinControl.sub_0048A1E8
 004A80D6    mov         dl,5
 004A80D8    mov         eax,dword ptr [ebp-8]
 004A80DB    call        TImage.SetAlign
 004A80E0    mov         eax,dword ptr [ebp-4]
 004A80E3    test        byte ptr [eax+1C],1;TCustomDockForm.FComponentState:TComponentState
>004A80E7    jne         004A80F3
 004A80E9    mov         dl,1
 004A80EB    mov         eax,dword ptr [ebp-4]
 004A80EE    call        TCustomForm.SetVisible
 004A80F3    xor         eax,eax
 004A80F5    pop         edx
 004A80F6    pop         ecx
 004A80F7    pop         ecx
 004A80F8    mov         dword ptr fs:[eax],edx
 004A80FB    push        4A8110
 004A8100    lea         eax,[ebp-10]
 004A8103    call        @LStrClr
 004A8108    ret
>004A8109    jmp         @HandleFinally
>004A810E    jmp         004A8100
 004A8110    pop         ebx
 004A8111    mov         esp,ebp
 004A8113    pop         ebp
 004A8114    ret
end;*}

//004A8118
{*procedure TCustomDockForm.sub_0048A208(?:?);
begin
 004A8118    push        ebp
 004A8119    mov         ebp,esp
 004A811B    add         esp,0FFFFFFF8
 004A811E    mov         dword ptr [ebp-8],edx
 004A8121    mov         dword ptr [ebp-4],eax
 004A8124    mov         edx,dword ptr [ebp-8]
 004A8127    mov         eax,dword ptr [ebp-4]
 004A812A    call        TWinControl.sub_0048A208
 004A812F    mov         eax,dword ptr [ebp-4]
 004A8132    call        0048A408
 004A8137    test        eax,eax
>004A8139    jne         004A8143
 004A813B    mov         eax,dword ptr [ebp-4]
 004A813E    call        TCustomForm.Release
 004A8143    pop         ecx
 004A8144    pop         ecx
 004A8145    pop         ebp
 004A8146    ret
end;*}

//004A8148
procedure sub_004A8148;
begin
{*
 004A8148    push        ebp
 004A8149    mov         ebp,esp
 004A814B    add         esp,0FFFFFFE4
 004A814E    push        esi
 004A814F    mov         dword ptr [ebp-4],eax
 004A8152    mov         eax,dword ptr [ebp-4]
 004A8155    call        00487E38
 004A815A    dec         eax
 004A815B    test        eax,eax
>004A815D    jl          004A8199
 004A815F    inc         eax
 004A8160    mov         dword ptr [ebp-0C],eax
 004A8163    mov         dword ptr [ebp-8],0
 004A816A    lea         edx,[ebp-1C]
 004A816D    mov         eax,dword ptr [ebp-4]
 004A8170    mov         ecx,dword ptr [eax]
 004A8172    call        dword ptr [ecx+44];TCustomDockForm.sub_004A2F78
 004A8175    lea         eax,[ebp-1C]
 004A8178    push        eax
 004A8179    mov         edx,dword ptr [ebp-8]
 004A817C    mov         eax,dword ptr [ebp-4]
 004A817F    call        00487DCC
 004A8184    mov         edx,dword ptr [ebp-4]
 004A8187    pop         ecx
 004A8188    mov         si,0FFCC
 004A818C    call        @CallDynaInst
 004A8191    inc         dword ptr [ebp-8]
 004A8194    dec         dword ptr [ebp-0C]
>004A8197    jne         004A816A
 004A8199    mov         eax,dword ptr [ebp-4]
 004A819C    call        004A2728
 004A81A1    pop         esi
 004A81A2    mov         esp,ebp
 004A81A4    pop         ebp
 004A81A5    ret
*}
end;

//004A81A8
{*procedure TCustomDockForm.sub_0048A478(?:?; ?:?; ?:?; ?:?);
begin
 004A81A8    push        ebp
 004A81A9    mov         ebp,esp
 004A81AB    add         esp,0FFFFFFEC
 004A81AE    push        esi
 004A81AF    push        edi
 004A81B0    mov         esi,dword ptr [ebp+0C]
 004A81B3    lea         edi,[ebp-14]
 004A81B6    movs        dword ptr [edi],dword ptr [esi]
 004A81B7    movs        dword ptr [edi],dword ptr [esi]
 004A81B8    mov         dword ptr [ebp-0C],ecx
 004A81BB    mov         dword ptr [ebp-8],edx
 004A81BE    mov         dword ptr [ebp-4],eax
 004A81C1    mov         eax,dword ptr [ebp-4]
 004A81C4    call        0048A408
 004A81C9    test        eax,eax
 004A81CB    mov         eax,dword ptr [ebp+8]
 004A81CE    sete        byte ptr [eax]
 004A81D1    pop         edi
 004A81D2    pop         esi
 004A81D3    mov         esp,ebp
 004A81D5    pop         ebp
 004A81D6    ret         8
end;*}

//004A81DC
{*procedure TCustomDockForm.WMNCHitTest(?:?);
begin
 004A81DC    push        ebp
 004A81DD    mov         ebp,esp
 004A81DF    add         esp,0FFFFFFF8
 004A81E2    mov         dword ptr [ebp-8],edx
 004A81E5    mov         dword ptr [ebp-4],eax
 004A81E8    mov         edx,dword ptr [ebp-8]
 004A81EB    mov         eax,dword ptr [ebp-4]
 004A81EE    call        TWinControl.WMNCHitTest
 004A81F3    mov         eax,dword ptr [ebp-4]
 004A81F6    test        byte ptr [eax+1C],10;TCustomDockForm.FComponentState:TComponentState
>004A81FA    jne         004A820F
 004A81FC    mov         eax,dword ptr [ebp-8]
 004A81FF    cmp         dword ptr [eax+0C],1
>004A8203    jne         004A820F
 004A8205    mov         eax,dword ptr [ebp-8]
 004A8208    mov         dword ptr [eax+0C],2
 004A820F    pop         ecx
 004A8210    pop         ecx
 004A8211    pop         ebp
 004A8212    ret
end;*}

//004A8214
{*procedure TCustomDockForm.WMNCLButtonDown(?:?);
begin
 004A8214    push        ebp
 004A8215    mov         ebp,esp
 004A8217    add         esp,0FFFFFFF8
 004A821A    mov         dword ptr [ebp-8],edx
 004A821D    mov         dword ptr [ebp-4],eax
 004A8220    mov         eax,dword ptr [ebp-8]
 004A8223    cmp         dword ptr [eax+4],2
>004A8227    jne         004A82C1
 004A822D    mov         eax,dword ptr [ebp-4]
 004A8230    cmp         byte ptr [eax+9B],1;TCustomDockForm.FDragKind:TDragKind
>004A8237    je          004A82C1
 004A823D    mov         eax,dword ptr [ebp-4]
 004A8240    test        byte ptr [eax+1C],10;TCustomDockForm.FComponentState:TComponentState
>004A8244    jne         004A82C1
 004A8246    mov         eax,dword ptr [ebp-4]
 004A8249    call        TWinControl.GetHandle
 004A824E    push        eax
 004A824F    call        user32.IsIconic
 004A8254    test        eax,eax
>004A8256    jne         004A82C1
 004A8258    mov         eax,dword ptr [ebp-4]
 004A825B    call        0048A408
 004A8260    test        eax,eax
>004A8262    jle         004A82C1
 004A8264    push        7
 004A8266    push        0
 004A8268    push        0
 004A826A    push        0
 004A826C    push        0
 004A826E    push        0
 004A8270    mov         eax,dword ptr [ebp-4]
 004A8273    call        TWinControl.GetHandle
 004A8278    push        eax
 004A8279    call        user32.SetWindowPos
 004A827E    mov         eax,dword ptr [ebp-8]
 004A8281    mov         eax,dword ptr [eax+8]
 004A8284    push        eax
 004A8285    mov         eax,dword ptr [ebp-8]
 004A8288    mov         eax,dword ptr [eax+4]
 004A828B    push        eax
 004A828C    push        0A2
 004A8291    mov         eax,dword ptr [ebp-4]
 004A8294    call        TWinControl.GetHandle
 004A8299    push        eax
 004A829A    call        user32.PostMessageA
 004A829F    mov         eax,dword ptr [ebp-4]
 004A82A2    cmp         byte ptr [eax+22E],0;TCustomDockForm.FActive:Boolean
>004A82A9    je          004A82CC
 004A82AB    xor         edx,edx
 004A82AD    mov         eax,dword ptr [ebp-4]
 004A82B0    call        0048A43C
 004A82B5    or          ecx,0FFFFFFFF
 004A82B8    mov         dl,1
 004A82BA    call        004841E0
>004A82BF    jmp         004A82CC
 004A82C1    mov         edx,dword ptr [ebp-8]
 004A82C4    mov         eax,dword ptr [ebp-4]
 004A82C7    call        TCustomForm.WMNCLButtonDown
 004A82CC    pop         ecx
 004A82CD    pop         ecx
 004A82CE    pop         ebp
 004A82CF    ret
end;*}

//004A82D0
{*procedure TCustomDockForm.CMControlLIstChange(?:?);
begin
 004A82D0    push        ebp
 004A82D1    mov         ebp,esp
 004A82D3    add         esp,0FFFFFFE8
 004A82D6    push        esi
 004A82D7    mov         dword ptr [ebp-8],edx
 004A82DA    mov         dword ptr [ebp-4],eax
 004A82DD    mov         edx,dword ptr [ebp-8]
 004A82E0    mov         eax,dword ptr [ebp-4]
 004A82E3    call        TWinControl.CMControlLIstChange
 004A82E8    mov         eax,dword ptr [ebp-8]
 004A82EB    cmp         dword ptr [eax+8],0
>004A82EF    jne         004A833B
 004A82F1    mov         eax,dword ptr [ebp-8]
 004A82F4    mov         eax,dword ptr [eax+4]
 004A82F7    push        eax
 004A82F8    xor         ecx,ecx
 004A82FA    mov         edx,0B039
 004A82FF    mov         eax,dword ptr [ebp-4]
 004A8302    call        00484FFC
 004A8307    mov         eax,dword ptr [ebp-8]
 004A830A    mov         eax,dword ptr [eax+4]
 004A830D    mov         eax,dword ptr [eax+0A0]
 004A8313    cmp         eax,dword ptr [ebp-4]
>004A8316    jne         004A833B
 004A8318    lea         edx,[ebp-18]
 004A831B    mov         eax,dword ptr [ebp-8]
 004A831E    mov         eax,dword ptr [eax+4]
 004A8321    call        00482ECC
 004A8326    lea         ecx,[ebp-18]
 004A8329    mov         eax,dword ptr [ebp-8]
 004A832C    mov         eax,dword ptr [eax+4]
 004A832F    or          edx,0FFFFFFFF
 004A8332    mov         si,0FFCC
 004A8336    call        @CallDynaInst
 004A833B    pop         esi
 004A833C    mov         esp,ebp
 004A833E    pop         ebp
 004A833F    ret
end;*}

//004A8340
{*procedure TCustomDockForm.sub_004A8340(?:?);
begin
 004A8340    push        ebp
 004A8341    mov         ebp,esp
 004A8343    add         esp,0FFFFFFEC
 004A8346    xor         ecx,ecx
 004A8348    mov         dword ptr [ebp-0C],ecx
 004A834B    mov         dword ptr [ebp-8],edx
 004A834E    mov         dword ptr [ebp-4],eax
 004A8351    xor         eax,eax
 004A8353    push        ebp
 004A8354    push        4A842E
 004A8359    push        dword ptr fs:[eax]
 004A835C    mov         dword ptr fs:[eax],esp
 004A835F    mov         edx,dword ptr [ebp-8]
 004A8362    mov         eax,dword ptr [ebp-4]
 004A8365    mov         ecx,dword ptr [eax]
 004A8367    call        dword ptr [ecx-10];TCustomForm.DefaultHandler
 004A836A    mov         eax,dword ptr [ebp-8]
 004A836D    mov         eax,dword ptr [eax+8]
 004A8370    mov         eax,dword ptr [eax]
 004A8372    sub         eax,0C
>004A8375    je          004A8398
 004A8377    sub         eax,0AFFF
>004A837C    jne         004A8418
 004A8382    mov         eax,dword ptr [ebp-8]
 004A8385    mov         eax,dword ptr [eax+4]
 004A8388    mov         dl,byte ptr [eax+57]
 004A838B    mov         eax,dword ptr [ebp-4]
 004A838E    call        TCustomForm.SetVisible
>004A8393    jmp         004A8418
 004A8398    mov         eax,dword ptr [ebp-8]
 004A839B    mov         eax,dword ptr [eax+4]
 004A839E    call        00483694
 004A83A3    mov         ecx,eax
 004A83A5    inc         ecx
 004A83A6    lea         eax,[ebp-0C]
 004A83A9    xor         edx,edx
 004A83AB    call        @LStrFromPCharLen
 004A83B0    mov         eax,dword ptr [ebp-0C]
 004A83B3    call        @LStrLen
 004A83B8    push        eax
 004A83B9    mov         eax,dword ptr [ebp-0C]
 004A83BC    call        @LStrToPChar
 004A83C1    mov         edx,eax
 004A83C3    mov         eax,dword ptr [ebp-8]
 004A83C6    mov         eax,dword ptr [eax+4]
 004A83C9    pop         ecx
 004A83CA    call        004836B8
 004A83CF    mov         eax,dword ptr [ebp-0C]
 004A83D2    call        @LStrLen
 004A83D7    test        eax,eax
>004A83D9    jle         004A840D
 004A83DB    mov         dword ptr [ebp-14],eax
 004A83DE    mov         dword ptr [ebp-10],1
 004A83E5    mov         eax,dword ptr [ebp-0C]
 004A83E8    mov         edx,dword ptr [ebp-10]
 004A83EB    mov         al,byte ptr [eax+edx-1]
 004A83EF    sub         al,0A
>004A83F1    je          004A83F7
 004A83F3    sub         al,3
>004A83F5    jne         004A8405
 004A83F7    mov         edx,dword ptr [ebp-10]
 004A83FA    dec         edx
 004A83FB    lea         eax,[ebp-0C]
 004A83FE    call        @LStrSetLength
>004A8403    jmp         004A840D
 004A8405    inc         dword ptr [ebp-10]
 004A8408    dec         dword ptr [ebp-14]
>004A840B    jne         004A83E5
 004A840D    mov         edx,dword ptr [ebp-0C]
 004A8410    mov         eax,dword ptr [ebp-4]
 004A8413    call        TPanel.SetCaption
 004A8418    xor         eax,eax
 004A841A    pop         edx
 004A841B    pop         ecx
 004A841C    pop         ecx
 004A841D    mov         dword ptr fs:[eax],edx
 004A8420    push        4A8435
 004A8425    lea         eax,[ebp-0C]
 004A8428    call        @LStrClr
 004A842D    ret
>004A842E    jmp         @HandleFinally
>004A8433    jmp         004A8425
 004A8435    mov         esp,ebp
 004A8437    pop         ebp
 004A8438    ret
end;*}

//004A843C
{*procedure TCustomDockForm.CMUndockClient(?:?);
begin
 004A843C    push        ebp
 004A843D    mov         ebp,esp
 004A843F    add         esp,0FFFFFFF8
 004A8442    mov         dword ptr [ebp-8],edx
 004A8445    mov         dword ptr [ebp-4],eax
 004A8448    mov         edx,dword ptr [ebp-8]
 004A844B    mov         eax,dword ptr [ebp-4]
 004A844E    call        TWinControl.CMUndockClient
 004A8453    mov         eax,dword ptr [ebp-8]
 004A8456    mov         eax,dword ptr [eax+8]
 004A8459    xor         edx,edx
 004A845B    call        TImage.SetAlign
 004A8460    pop         ecx
 004A8461    pop         ecx
 004A8462    pop         ebp
 004A8463    ret
end;*}

//004A8464
{*procedure TCustomDockForm.CMVisibleChanged(?:?);
begin
 004A8464    push        ebp
 004A8465    mov         ebp,esp
 004A8467    add         esp,0FFFFFFF0
 004A846A    mov         dword ptr [ebp-8],edx
 004A846D    mov         dword ptr [ebp-4],eax
 004A8470    mov         edx,dword ptr [ebp-8]
 004A8473    mov         eax,dword ptr [ebp-4]
 004A8476    call        TWinControl.CMVisibleChanged
 004A847B    mov         eax,dword ptr [ebp-4]
 004A847E    test        byte ptr [eax+1C],8;TCustomDockForm.FComponentState:TComponentState
>004A8482    jne         004A84BA
 004A8484    mov         eax,dword ptr [ebp-4]
 004A8487    call        0048A408
 004A848C    dec         eax
 004A848D    test        eax,eax
>004A848F    jl          004A84BA
 004A8491    inc         eax
 004A8492    mov         dword ptr [ebp-10],eax
 004A8495    mov         dword ptr [ebp-0C],0
 004A849C    mov         edx,dword ptr [ebp-0C]
 004A849F    mov         eax,dword ptr [ebp-4]
 004A84A2    call        0048A43C
 004A84A7    mov         edx,dword ptr [ebp-4]
 004A84AA    mov         dl,byte ptr [edx+57];TCustomDockForm.FVisible:Boolean
 004A84AD    call        TImage.SetVisible
 004A84B2    inc         dword ptr [ebp-0C]
 004A84B5    dec         dword ptr [ebp-10]
>004A84B8    jne         004A849C
 004A84BA    mov         esp,ebp
 004A84BC    pop         ebp
 004A84BD    ret
end;*}

//004A84C0
{*function sub_004A84C0(?:?):?;
begin
 004A84C0    push        ebp
 004A84C1    mov         ebp,esp
 004A84C3    add         esp,0FFFFFFE8
 004A84C6    mov         dword ptr [ebp-4],eax
 004A84C9    lea         edx,[ebp-18]
 004A84CC    mov         eax,dword ptr [ebp-4]
 004A84CF    call        004A8550
 004A84D4    mov         eax,dword ptr [ebp-18]
 004A84D7    mov         dword ptr [ebp-8],eax
 004A84DA    mov         eax,dword ptr [ebp-8]
 004A84DD    mov         esp,ebp
 004A84DF    pop         ebp
 004A84E0    ret
end;*}

//004A84E4
{*function sub_004A84E4(?:?):?;
begin
 004A84E4    push        ebp
 004A84E5    mov         ebp,esp
 004A84E7    add         esp,0FFFFFFE8
 004A84EA    mov         dword ptr [ebp-4],eax
 004A84ED    lea         edx,[ebp-18]
 004A84F0    mov         eax,dword ptr [ebp-4]
 004A84F3    call        004A8550
 004A84F8    mov         eax,dword ptr [ebp-0C]
 004A84FB    sub         eax,dword ptr [ebp-14]
 004A84FE    mov         dword ptr [ebp-8],eax
 004A8501    mov         eax,dword ptr [ebp-8]
 004A8504    mov         esp,ebp
 004A8506    pop         ebp
 004A8507    ret
end;*}

//004A8508
{*function sub_004A8508(?:?):?;
begin
 004A8508    push        ebp
 004A8509    mov         ebp,esp
 004A850B    add         esp,0FFFFFFE8
 004A850E    mov         dword ptr [ebp-4],eax
 004A8511    lea         edx,[ebp-18]
 004A8514    mov         eax,dword ptr [ebp-4]
 004A8517    call        004A8550
 004A851C    mov         eax,dword ptr [ebp-14]
 004A851F    mov         dword ptr [ebp-8],eax
 004A8522    mov         eax,dword ptr [ebp-8]
 004A8525    mov         esp,ebp
 004A8527    pop         ebp
 004A8528    ret
end;*}

//004A852C
{*function sub_004A852C(?:?):?;
begin
 004A852C    push        ebp
 004A852D    mov         ebp,esp
 004A852F    add         esp,0FFFFFFE8
 004A8532    mov         dword ptr [ebp-4],eax
 004A8535    lea         edx,[ebp-18]
 004A8538    mov         eax,dword ptr [ebp-4]
 004A853B    call        004A8550
 004A8540    mov         eax,dword ptr [ebp-10]
 004A8543    sub         eax,dword ptr [ebp-18]
 004A8546    mov         dword ptr [ebp-8],eax
 004A8549    mov         eax,dword ptr [ebp-8]
 004A854C    mov         esp,ebp
 004A854E    pop         ebp
 004A854F    ret
end;*}

//004A8550
{*procedure sub_004A8550(?:?; ?:?);
begin
 004A8550    push        ebp
 004A8551    mov         ebp,esp
 004A8553    add         esp,0FFFFFFD0
 004A8556    push        esi
 004A8557    push        edi
 004A8558    mov         dword ptr [ebp-8],edx
 004A855B    mov         dword ptr [ebp-4],eax
 004A855E    mov         dword ptr [ebp-30],28
 004A8565    lea         eax,[ebp-30]
 004A8568    push        eax
 004A8569    mov         eax,dword ptr [ebp-4]
 004A856C    mov         eax,dword ptr [eax+4]
 004A856F    push        eax
 004A8570    mov         eax,[0056E194];^gvar_00571B3C
 004A8575    mov         eax,dword ptr [eax]
 004A8577    call        eax
 004A8579    mov         eax,dword ptr [ebp-8]
 004A857C    mov         edi,eax
 004A857E    lea         esi,[ebp-2C]
 004A8581    movs        dword ptr [edi],dword ptr [esi]
 004A8582    movs        dword ptr [edi],dword ptr [esi]
 004A8583    movs        dword ptr [edi],dword ptr [esi]
 004A8584    movs        dword ptr [edi],dword ptr [esi]
 004A8585    pop         edi
 004A8586    pop         esi
 004A8587    mov         esp,ebp
 004A8589    pop         ebp
 004A858A    ret
end;*}

//004A858C
{*procedure sub_004A858C(?:?; ?:TPoint);
begin
 004A858C    push        ebp
 004A858D    mov         ebp,esp
 004A858F    add         esp,0FFFFFFD0
 004A8592    push        esi
 004A8593    push        edi
 004A8594    mov         dword ptr [ebp-8],edx
 004A8597    mov         dword ptr [ebp-4],eax
 004A859A    mov         dword ptr [ebp-30],28
 004A85A1    lea         eax,[ebp-30]
 004A85A4    push        eax
 004A85A5    mov         eax,dword ptr [ebp-4]
 004A85A8    mov         eax,dword ptr [eax+4]
 004A85AB    push        eax
 004A85AC    mov         eax,[0056E194];^gvar_00571B3C
 004A85B1    mov         eax,dword ptr [eax]
 004A85B3    call        eax
 004A85B5    mov         eax,dword ptr [ebp-8]
 004A85B8    mov         edi,eax
 004A85BA    lea         esi,[ebp-1C]
 004A85BD    movs        dword ptr [edi],dword ptr [esi]
 004A85BE    movs        dword ptr [edi],dword ptr [esi]
 004A85BF    movs        dword ptr [edi],dword ptr [esi]
 004A85C0    movs        dword ptr [edi],dword ptr [esi]
 004A85C1    pop         edi
 004A85C2    pop         esi
 004A85C3    mov         esp,ebp
 004A85C5    pop         ebp
 004A85C6    ret
end;*}

//004A85C8
constructor sub_004A85C8;
begin
{*
 004A85C8    push        ebp
 004A85C9    mov         ebp,esp
 004A85CB    add         esp,0FFFFFFF0
 004A85CE    test        dl,dl
>004A85D0    je          004A85DA
 004A85D2    add         esp,0FFFFFFF0
 004A85D5    call        @ClassCreate
 004A85DA    mov         dword ptr [ebp-0C],ecx
 004A85DD    mov         byte ptr [ebp-5],dl
 004A85E0    mov         dword ptr [ebp-4],eax
 004A85E3    mov         ecx,dword ptr [ebp-0C]
 004A85E6    xor         edx,edx
 004A85E8    mov         eax,dword ptr [ebp-4]
 004A85EB    call        0042A1B0
 004A85F0    mov         eax,[0056E108];^gvar_0056BC88
 004A85F5    mov         edx,dword ptr [ebp-4]
 004A85F8    mov         dword ptr [eax+4],edx
 004A85FB    mov         dword ptr [eax],4A8B38;sub_004A8B38
 004A8601    mov         eax,[0056E118];^gvar_0056BC90
 004A8606    mov         edx,dword ptr [ebp-4]
 004A8609    mov         dword ptr [eax+4],edx
 004A860C    mov         dword ptr [eax],4A8B58;sub_004A8B58
 004A8612    mov         eax,dword ptr [ebp-4]
 004A8615    call        004A8B78
 004A861A    push        0
 004A861C    call        user32.GetKeyboardLayout
 004A8621    mov         edx,dword ptr [ebp-4]
 004A8624    mov         dword ptr [edx+3C],eax;TScreen.FDefaultKbLayout:HKL
 004A8627    mov         dl,1
 004A8629    mov         eax,[0041D46C];TList
 004A862E    call        TObject.Create;TList.Create
 004A8633    mov         edx,dword ptr [ebp-4]
 004A8636    mov         dword ptr [edx+4C],eax;TScreen.FForms:TList
 004A8639    mov         dl,1
 004A863B    mov         eax,[0041D46C];TList
 004A8640    call        TObject.Create;TList.Create
 004A8645    mov         edx,dword ptr [ebp-4]
 004A8648    mov         dword ptr [edx+50],eax;TScreen.FCustomForms:TList
 004A864B    mov         dl,1
 004A864D    mov         eax,[0041D46C];TList
 004A8652    call        TObject.Create;TList.Create
 004A8657    mov         edx,dword ptr [ebp-4]
 004A865A    mov         dword ptr [edx+54],eax;TScreen.FDataModules:TList
 004A865D    mov         dl,1
 004A865F    mov         eax,[0041D46C];TList
 004A8664    call        TObject.Create;TList.Create
 004A8669    mov         edx,dword ptr [ebp-4]
 004A866C    mov         dword ptr [edx+58],eax;TScreen.FMonitors:TList
 004A866F    mov         dl,1
 004A8671    mov         eax,[0041D46C];TList
 004A8676    call        TObject.Create;TList.Create
 004A867B    mov         edx,dword ptr [ebp-4]
 004A867E    mov         dword ptr [edx+7C],eax;TScreen.FSaveFocusedList:TList
 004A8681    push        0
 004A8683    call        user32.GetDC
 004A8688    mov         dword ptr [ebp-10],eax
 004A868B    push        5A
 004A868D    mov         eax,dword ptr [ebp-10]
 004A8690    push        eax
 004A8691    call        gdi32.GetDeviceCaps
 004A8696    mov         edx,dword ptr [ebp-4]
 004A8699    mov         dword ptr [edx+40],eax;TScreen.FPixelsPerInch:Integer
 004A869C    mov         eax,dword ptr [ebp-10]
 004A869F    push        eax
 004A86A0    push        0
 004A86A2    call        user32.ReleaseDC
 004A86A7    mov         eax,dword ptr [ebp-4]
 004A86AA    mov         eax,dword ptr [eax+58];TScreen.FMonitors:TList
 004A86AD    push        eax
 004A86AE    mov         eax,4A3F88;sub_004A3F88
 004A86B3    push        eax
 004A86B4    push        0
 004A86B6    push        0
 004A86B8    mov         eax,[0056E30C];^gvar_00571B48
 004A86BD    mov         eax,dword ptr [eax]
 004A86BF    call        eax
 004A86C1    mov         dl,1
 004A86C3    mov         eax,[0042C4F8];TFont
 004A86C8    call        TFont.Create;TFont.Create
 004A86CD    mov         edx,dword ptr [ebp-4]
 004A86D0    mov         dword ptr [edx+84],eax;TScreen.FIconFont:TFont
 004A86D6    mov         dl,1
 004A86D8    mov         eax,[0042C4F8];TFont
 004A86DD    call        TFont.Create;TFont.Create
 004A86E2    mov         edx,dword ptr [ebp-4]
 004A86E5    mov         dword ptr [edx+88],eax;TScreen.FMenuFont:TFont
 004A86EB    mov         dl,1
 004A86ED    mov         eax,[0042C4F8];TFont
 004A86F2    call        TFont.Create;TFont.Create
 004A86F7    mov         edx,dword ptr [ebp-4]
 004A86FA    mov         dword ptr [edx+80],eax;TScreen.FHintFont:TFont
 004A8700    mov         eax,dword ptr [ebp-4]
 004A8703    call        004A9120
 004A8708    mov         eax,dword ptr [ebp-4]
 004A870B    mov         eax,dword ptr [eax+84];TScreen.FIconFont:TFont
 004A8711    mov         edx,dword ptr [ebp-4]
 004A8714    mov         dword ptr [eax+0C],edx;TFont.?fC:TCustomListView
 004A8717    mov         dword ptr [eax+8],4A8F6C;TFont.FOnChange:TNotifyEvent sub_004A8F6C
 004A871E    mov         eax,dword ptr [ebp-4]
 004A8721    mov         eax,dword ptr [eax+88];TScreen.FMenuFont:TFont
 004A8727    mov         edx,dword ptr [ebp-4]
 004A872A    mov         dword ptr [eax+0C],edx;TFont.?fC:TCustomListView
 004A872D    mov         dword ptr [eax+8],4A8F6C;TFont.FOnChange:TNotifyEvent sub_004A8F6C
 004A8734    mov         eax,dword ptr [ebp-4]
 004A8737    mov         eax,dword ptr [eax+80];TScreen.FHintFont:TFont
 004A873D    mov         edx,dword ptr [ebp-4]
 004A8740    mov         dword ptr [eax+0C],edx;TFont.?fC:TCustomListView
 004A8743    mov         dword ptr [eax+8],4A8F6C;TFont.FOnChange:TNotifyEvent sub_004A8F6C
 004A874A    mov         eax,dword ptr [ebp-4]
 004A874D    cmp         byte ptr [ebp-5],0
>004A8751    je          004A8762
 004A8753    call        @AfterConstruction
 004A8758    pop         dword ptr fs:[0]
 004A875F    add         esp,0C
 004A8762    mov         eax,dword ptr [ebp-4]
 004A8765    mov         esp,ebp
 004A8767    pop         ebp
 004A8768    ret
*}
end;

//004A876C
destructor TScreen.Destroy;
begin
{*
 004A876C    push        ebp
 004A876D    mov         ebp,esp
 004A876F    add         esp,0FFFFFFF0
 004A8772    call        @BeforeDestruction
 004A8777    mov         byte ptr [ebp-5],dl
 004A877A    mov         dword ptr [ebp-4],eax
 004A877D    mov         eax,dword ptr [ebp-4]
 004A8780    mov         eax,dword ptr [eax+80]
 004A8786    call        TObject.Free
 004A878B    mov         eax,dword ptr [ebp-4]
 004A878E    mov         eax,dword ptr [eax+88]
 004A8794    call        TObject.Free
 004A8799    mov         eax,dword ptr [ebp-4]
 004A879C    mov         eax,dword ptr [eax+84]
 004A87A2    call        TObject.Free
 004A87A7    mov         eax,dword ptr [ebp-4]
 004A87AA    mov         eax,dword ptr [eax+54]
 004A87AD    call        TObject.Free
 004A87B2    mov         eax,dword ptr [ebp-4]
 004A87B5    mov         eax,dword ptr [eax+50]
 004A87B8    call        TObject.Free
 004A87BD    mov         eax,dword ptr [ebp-4]
 004A87C0    mov         eax,dword ptr [eax+4C]
 004A87C3    call        TObject.Free
 004A87C8    mov         eax,dword ptr [ebp-4]
 004A87CB    mov         eax,dword ptr [eax+30]
 004A87CE    call        TObject.Free
 004A87D3    mov         eax,dword ptr [ebp-4]
 004A87D6    mov         eax,dword ptr [eax+34]
 004A87D9    call        TObject.Free
 004A87DE    mov         eax,dword ptr [ebp-4]
 004A87E1    mov         eax,dword ptr [eax+7C]
 004A87E4    call        TObject.Free
 004A87E9    mov         eax,dword ptr [ebp-4]
 004A87EC    cmp         dword ptr [eax+58],0
>004A87F0    je          004A8826
 004A87F2    mov         eax,dword ptr [ebp-4]
 004A87F5    mov         eax,dword ptr [eax+58]
 004A87F8    mov         eax,dword ptr [eax+8]
 004A87FB    dec         eax
 004A87FC    test        eax,eax
>004A87FE    jl          004A8826
 004A8800    inc         eax
 004A8801    mov         dword ptr [ebp-10],eax
 004A8804    mov         dword ptr [ebp-0C],0
 004A880B    mov         eax,dword ptr [ebp-4]
 004A880E    mov         eax,dword ptr [eax+58]
 004A8811    mov         edx,dword ptr [ebp-0C]
 004A8814    call        TList.Get
 004A8819    call        TObject.Free
 004A881E    inc         dword ptr [ebp-0C]
 004A8821    dec         dword ptr [ebp-10]
>004A8824    jne         004A880B
 004A8826    mov         eax,dword ptr [ebp-4]
 004A8829    mov         eax,dword ptr [eax+58]
 004A882C    call        TObject.Free
 004A8831    mov         eax,dword ptr [ebp-4]
 004A8834    call        004A8BEC
 004A8839    mov         eax,[0056E108];^gvar_0056BC88
 004A883E    xor         edx,edx
 004A8840    mov         dword ptr [eax],edx
 004A8842    mov         dword ptr [eax+4],edx
 004A8845    mov         eax,[0056E118];^gvar_0056BC90
 004A884A    xor         edx,edx
 004A884C    mov         dword ptr [eax],edx
 004A884E    mov         dword ptr [eax+4],edx
 004A8851    mov         dl,byte ptr [ebp-5]
 004A8854    and         dl,0FC
 004A8857    mov         eax,dword ptr [ebp-4]
 004A885A    call        TComponent.Destroy
 004A885F    cmp         byte ptr [ebp-5],0
>004A8863    jle         004A886D
 004A8865    mov         eax,dword ptr [ebp-4]
 004A8868    call        @ClassDestroy
 004A886D    mov         esp,ebp
 004A886F    pop         ebp
 004A8870    ret
*}
end;

//004A8874
{*function sub_004A8874(?:TScreen):?;
begin
 004A8874    push        ebp
 004A8875    mov         ebp,esp
 004A8877    add         esp,0FFFFFFF8
 004A887A    mov         dword ptr [ebp-4],eax
 004A887D    push        1
 004A887F    mov         eax,[0056E1C0];^gvar_00571B2C
 004A8884    mov         eax,dword ptr [eax]
 004A8886    call        eax
 004A8888    mov         dword ptr [ebp-8],eax
 004A888B    mov         eax,dword ptr [ebp-8]
 004A888E    pop         ecx
 004A888F    pop         ecx
 004A8890    pop         ebp
 004A8891    ret
end;*}

//004A8894
{*function sub_004A8894(?:TScreen):?;
begin
 004A8894    push        ebp
 004A8895    mov         ebp,esp
 004A8897    add         esp,0FFFFFFF8
 004A889A    mov         dword ptr [ebp-4],eax
 004A889D    push        0
 004A889F    mov         eax,[0056E1C0];^gvar_00571B2C
 004A88A4    mov         eax,dword ptr [eax]
 004A88A6    call        eax
 004A88A8    mov         dword ptr [ebp-8],eax
 004A88AB    mov         eax,dword ptr [ebp-8]
 004A88AE    pop         ecx
 004A88AF    pop         ecx
 004A88B0    pop         ebp
 004A88B1    ret
end;*}

//004A88B4
{*function sub_004A88B4(?:TScreen):?;
begin
 004A88B4    push        ebp
 004A88B5    mov         ebp,esp
 004A88B7    add         esp,0FFFFFFF8
 004A88BA    mov         dword ptr [ebp-4],eax
 004A88BD    push        4D
 004A88BF    mov         eax,[0056E1C0];^gvar_00571B2C
 004A88C4    mov         eax,dword ptr [eax]
 004A88C6    call        eax
 004A88C8    mov         dword ptr [ebp-8],eax
 004A88CB    mov         eax,dword ptr [ebp-8]
 004A88CE    pop         ecx
 004A88CF    pop         ecx
 004A88D0    pop         ebp
 004A88D1    ret
end;*}

//004A88D4
{*function sub_004A88D4(?:TScreen):?;
begin
 004A88D4    push        ebp
 004A88D5    mov         ebp,esp
 004A88D7    add         esp,0FFFFFFF8
 004A88DA    mov         dword ptr [ebp-4],eax
 004A88DD    push        4C
 004A88DF    mov         eax,[0056E1C0];^gvar_00571B2C
 004A88E4    mov         eax,dword ptr [eax]
 004A88E6    call        eax
 004A88E8    mov         dword ptr [ebp-8],eax
 004A88EB    mov         eax,dword ptr [ebp-8]
 004A88EE    pop         ecx
 004A88EF    pop         ecx
 004A88F0    pop         ebp
 004A88F1    ret
end;*}

//004A88F4
{*function sub_004A88F4(?:TScreen):?;
begin
 004A88F4    push        ebp
 004A88F5    mov         ebp,esp
 004A88F7    add         esp,0FFFFFFF8
 004A88FA    mov         dword ptr [ebp-4],eax
 004A88FD    push        4F
 004A88FF    mov         eax,[0056E1C0];^gvar_00571B2C
 004A8904    mov         eax,dword ptr [eax]
 004A8906    call        eax
 004A8908    mov         dword ptr [ebp-8],eax
 004A890B    mov         eax,dword ptr [ebp-8]
 004A890E    pop         ecx
 004A890F    pop         ecx
 004A8910    pop         ebp
 004A8911    ret
end;*}

//004A8914
{*function sub_004A8914(?:TScreen):?;
begin
 004A8914    push        ebp
 004A8915    mov         ebp,esp
 004A8917    add         esp,0FFFFFFF8
 004A891A    mov         dword ptr [ebp-4],eax
 004A891D    push        4E
 004A891F    mov         eax,[0056E1C0];^gvar_00571B2C
 004A8924    mov         eax,dword ptr [eax]
 004A8926    call        eax
 004A8928    mov         dword ptr [ebp-8],eax
 004A892B    mov         eax,dword ptr [ebp-8]
 004A892E    pop         ecx
 004A892F    pop         ecx
 004A8930    pop         ebp
 004A8931    ret
end;*}

//004A8934
{*function sub_004A8934(?:TScreen; ?:?):?;
begin
 004A8934    push        ebp
 004A8935    mov         ebp,esp
 004A8937    add         esp,0FFFFFFF4
 004A893A    mov         dword ptr [ebp-8],edx
 004A893D    mov         dword ptr [ebp-4],eax
 004A8940    mov         edx,dword ptr [ebp-8]
 004A8943    mov         eax,dword ptr [ebp-4]
 004A8946    mov         eax,dword ptr [eax+58];TScreen.FMonitors:TList
 004A8949    call        TList.Get
 004A894E    mov         dword ptr [ebp-0C],eax
 004A8951    mov         eax,dword ptr [ebp-0C]
 004A8954    mov         esp,ebp
 004A8956    pop         ebp
 004A8957    ret
end;*}

//004A8958
{*function sub_004A8958(?:TScreen):?;
begin
 004A8958    push        ebp
 004A8959    mov         ebp,esp
 004A895B    add         esp,0FFFFFFF8
 004A895E    mov         dword ptr [ebp-4],eax
 004A8961    mov         eax,dword ptr [ebp-4]
 004A8964    mov         eax,dword ptr [eax+58];TScreen.FMonitors:TList
 004A8967    cmp         dword ptr [eax+8],0;TList.FCount:Integer
>004A896B    jne         004A897D
 004A896D    push        50
 004A896F    mov         eax,[0056E1C0];^gvar_00571B2C
 004A8974    mov         eax,dword ptr [eax]
 004A8976    call        eax
 004A8978    mov         dword ptr [ebp-8],eax
>004A897B    jmp         004A8989
 004A897D    mov         eax,dword ptr [ebp-4]
 004A8980    mov         eax,dword ptr [eax+58];TScreen.FMonitors:TList
 004A8983    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 004A8986    mov         dword ptr [ebp-8],eax
 004A8989    mov         eax,dword ptr [ebp-8]
 004A898C    pop         ecx
 004A898D    pop         ecx
 004A898E    pop         ebp
 004A898F    ret
end;*}

//004A8990
{*function sub_004A8990(?:TScreen; ?:?):?;
begin
 004A8990    push        ebp
 004A8991    mov         ebp,esp
 004A8993    add         esp,0FFFFFFF4
 004A8996    mov         dword ptr [ebp-8],edx
 004A8999    mov         dword ptr [ebp-4],eax
 004A899C    mov         edx,dword ptr [ebp-8]
 004A899F    mov         eax,dword ptr [ebp-4]
 004A89A2    mov         eax,dword ptr [eax+4C];TScreen.FForms:TList
 004A89A5    call        TList.Get
 004A89AA    mov         dword ptr [ebp-0C],eax
 004A89AD    mov         eax,dword ptr [ebp-0C]
 004A89B0    mov         esp,ebp
 004A89B2    pop         ebp
 004A89B3    ret
end;*}

//004A89B4
{*function sub_004A89B4(?:TScreen):?;
begin
 004A89B4    push        ebp
 004A89B5    mov         ebp,esp
 004A89B7    add         esp,0FFFFFFF8
 004A89BA    mov         dword ptr [ebp-4],eax
 004A89BD    mov         eax,dword ptr [ebp-4]
 004A89C0    mov         eax,dword ptr [eax+4C];TScreen.FForms:TList
 004A89C3    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 004A89C6    mov         dword ptr [ebp-8],eax
 004A89C9    mov         eax,dword ptr [ebp-8]
 004A89CC    pop         ecx
 004A89CD    pop         ecx
 004A89CE    pop         ebp
 004A89CF    ret
end;*}

//004A89D0
{*function sub_004A89D0(?:TScreen; ?:?):?;
begin
 004A89D0    push        ebp
 004A89D1    mov         ebp,esp
 004A89D3    add         esp,0FFFFFFF4
 004A89D6    mov         dword ptr [ebp-8],edx
 004A89D9    mov         dword ptr [ebp-4],eax
 004A89DC    mov         edx,dword ptr [ebp-8]
 004A89DF    mov         eax,dword ptr [ebp-4]
 004A89E2    mov         eax,dword ptr [eax+50]
 004A89E5    call        TList.Get
 004A89EA    mov         dword ptr [ebp-0C],eax
 004A89ED    mov         eax,dword ptr [ebp-0C]
 004A89F0    mov         esp,ebp
 004A89F2    pop         ebp
 004A89F3    ret
end;*}

//004A89F4
{*function sub_004A89F4(?:TScreen):?;
begin
 004A89F4    push        ebp
 004A89F5    mov         ebp,esp
 004A89F7    add         esp,0FFFFFFF8
 004A89FA    mov         dword ptr [ebp-4],eax
 004A89FD    mov         eax,dword ptr [ebp-4]
 004A8A00    mov         eax,dword ptr [eax+50]
 004A8A03    mov         eax,dword ptr [eax+8]
 004A8A06    mov         dword ptr [ebp-8],eax
 004A8A09    mov         eax,dword ptr [ebp-8]
 004A8A0C    pop         ecx
 004A8A0D    pop         ecx
 004A8A0E    pop         ebp
 004A8A0F    ret
end;*}

//004A8A10
procedure sub_004A8A10(?:TScreen);
begin
{*
 004A8A10    push        ebp
 004A8A11    mov         ebp,esp
 004A8A13    push        ecx
 004A8A14    push        ebx
 004A8A15    mov         dword ptr [ebp-4],eax
 004A8A18    mov         eax,dword ptr [ebp-4]
 004A8A1B    mov         eax,dword ptr [eax+74];TScreen.FLastActiveCustomForm:TCustomForm
 004A8A1E    mov         edx,dword ptr [ebp-4]
 004A8A21    cmp         eax,dword ptr [edx+68];TScreen.FActiveCustomForm:TCustomForm
>004A8A24    je          004A8A51
 004A8A26    mov         eax,dword ptr [ebp-4]
 004A8A29    mov         eax,dword ptr [eax+68];TScreen.FActiveCustomForm:TCustomForm
 004A8A2C    mov         edx,dword ptr [ebp-4]
 004A8A2F    mov         dword ptr [edx+74],eax;TScreen.FLastActiveCustomForm:TCustomForm
 004A8A32    mov         eax,dword ptr [ebp-4]
 004A8A35    cmp         word ptr [eax+9A],0;TScreen.?f9A:word
>004A8A3D    je          004A8A51
 004A8A3F    mov         ebx,dword ptr [ebp-4]
 004A8A42    mov         edx,dword ptr [ebp-4]
 004A8A45    mov         eax,dword ptr [ebx+9C];TScreen.?f9C:dword
 004A8A4B    call        dword ptr [ebx+98];TScreen.FOnActiveFormChange
 004A8A51    mov         eax,dword ptr [ebp-4]
 004A8A54    mov         eax,dword ptr [eax+70];TScreen.FLastActiveControl:TWinControl
 004A8A57    mov         edx,dword ptr [ebp-4]
 004A8A5A    cmp         eax,dword ptr [edx+64];TScreen.FActiveControl:TWinControl
>004A8A5D    je          004A8A8A
 004A8A5F    mov         eax,dword ptr [ebp-4]
 004A8A62    mov         eax,dword ptr [eax+64];TScreen.FActiveControl:TWinControl
 004A8A65    mov         edx,dword ptr [ebp-4]
 004A8A68    mov         dword ptr [edx+70],eax;TScreen.FLastActiveControl:TWinControl
 004A8A6B    mov         eax,dword ptr [ebp-4]
 004A8A6E    cmp         word ptr [eax+92],0;TScreen.?f92:word
>004A8A76    je          004A8A8A
 004A8A78    mov         ebx,dword ptr [ebp-4]
 004A8A7B    mov         edx,dword ptr [ebp-4]
 004A8A7E    mov         eax,dword ptr [ebx+94];TScreen.?f94:dword
 004A8A84    call        dword ptr [ebx+90];TScreen.FOnActiveControlChange
 004A8A8A    pop         ebx
 004A8A8B    pop         ecx
 004A8A8C    pop         ebp
 004A8A8D    ret
*}
end;

//004A8A90
procedure sub_004A8A90(?:TScreen; ?:TCustomForm);
begin
{*
 004A8A90    push        ebp
 004A8A91    mov         ebp,esp
 004A8A93    add         esp,0FFFFFFF8
 004A8A96    mov         dword ptr [ebp-8],edx
 004A8A99    mov         dword ptr [ebp-4],eax
 004A8A9C    mov         edx,dword ptr [ebp-8]
 004A8A9F    mov         eax,dword ptr [ebp-4]
 004A8AA2    mov         eax,dword ptr [eax+50];TScreen.FCustomForms:TList
 004A8AA5    call        TList.Add
 004A8AAA    mov         eax,dword ptr [ebp-8]
 004A8AAD    mov         edx,dword ptr ds:[49EF70];TForm
 004A8AB3    call        @IsClass
 004A8AB8    test        al,al
>004A8ABA    je          004A8AD4
 004A8ABC    mov         edx,dword ptr [ebp-8]
 004A8ABF    mov         eax,dword ptr [ebp-4]
 004A8AC2    mov         eax,dword ptr [eax+4C];TScreen.FForms:TList
 004A8AC5    call        TList.Add
 004A8ACA    mov         eax,[00571E3C];0x0 Application:TApplication
 004A8ACF    call        004AC370
 004A8AD4    pop         ecx
 004A8AD5    pop         ecx
 004A8AD6    pop         ebp
 004A8AD7    ret
*}
end;

//004A8AD8
procedure TScreen.RemoveForm(AForm:TCustomForm);
begin
{*
 004A8AD8    push        ebp
 004A8AD9    mov         ebp,esp
 004A8ADB    add         esp,0FFFFFFF8
 004A8ADE    mov         dword ptr [ebp-8],edx
 004A8AE1    mov         dword ptr [ebp-4],eax
 004A8AE4    mov         edx,dword ptr [ebp-8]
 004A8AE7    mov         eax,dword ptr [ebp-4]
 004A8AEA    mov         eax,dword ptr [eax+50]
 004A8AED    call        004204F0
 004A8AF2    mov         edx,dword ptr [ebp-8]
 004A8AF5    mov         eax,dword ptr [ebp-4]
 004A8AF8    mov         eax,dword ptr [eax+4C]
 004A8AFB    call        004204F0
 004A8B00    mov         eax,[00571E3C];Application:TApplication
 004A8B05    call        004AC370
 004A8B0A    mov         eax,dword ptr [ebp-4]
 004A8B0D    mov         eax,dword ptr [eax+50]
 004A8B10    cmp         dword ptr [eax+8],0
>004A8B14    jne         004A8B34
 004A8B16    mov         eax,[00571E3C];Application:TApplication
 004A8B1B    cmp         dword ptr [eax+84],0
>004A8B22    je          004A8B34
 004A8B24    mov         eax,[00571E3C];Application:TApplication
 004A8B29    mov         eax,dword ptr [eax+84]
 004A8B2F    call        0048DC8C
 004A8B34    pop         ecx
 004A8B35    pop         ecx
 004A8B36    pop         ebp
 004A8B37    ret
*}
end;

//004A8B38
{*procedure sub_004A8B38(?:?; ?:?);
begin
 004A8B38    push        ebp
 004A8B39    mov         ebp,esp
 004A8B3B    add         esp,0FFFFFFF8
 004A8B3E    mov         dword ptr [ebp-8],edx
 004A8B41    mov         dword ptr [ebp-4],eax
 004A8B44    mov         edx,dword ptr [ebp-8]
 004A8B47    mov         eax,dword ptr [ebp-4]
 004A8B4A    mov         eax,dword ptr [eax+54]
 004A8B4D    call        TList.Add
 004A8B52    pop         ecx
 004A8B53    pop         ecx
 004A8B54    pop         ebp
 004A8B55    ret
end;*}

//004A8B58
{*procedure sub_004A8B58(?:?; ?:?);
begin
 004A8B58    push        ebp
 004A8B59    mov         ebp,esp
 004A8B5B    add         esp,0FFFFFFF8
 004A8B5E    mov         dword ptr [ebp-8],edx
 004A8B61    mov         dword ptr [ebp-4],eax
 004A8B64    mov         edx,dword ptr [ebp-8]
 004A8B67    mov         eax,dword ptr [ebp-4]
 004A8B6A    mov         eax,dword ptr [eax+54]
 004A8B6D    call        004204F0
 004A8B72    pop         ecx
 004A8B73    pop         ecx
 004A8B74    pop         ebp
 004A8B75    ret
end;*}

//004A8B78
procedure sub_004A8B78(?:TScreen);
begin
{*
 004A8B78    push        ebp
 004A8B79    mov         ebp,esp
 004A8B7B    add         esp,0FFFFFFF4
 004A8B7E    mov         dword ptr [ebp-4],eax
 004A8B81    push        7F00
 004A8B86    push        0
 004A8B88    call        user32.LoadCursorA
 004A8B8D    mov         edx,dword ptr [ebp-4]
 004A8B90    mov         dword ptr [edx+60],eax;TScreen.FDefaultCursor:HCURSOR
 004A8B93    mov         dword ptr [ebp-8],0FFFFFFEA
 004A8B9A    cmp         dword ptr [ebp-8],0FFFFFFEF
>004A8B9E    jl          004A8BA6
 004A8BA0    cmp         dword ptr [ebp-8],0FFFFFFF4
>004A8BA4    jle         004A8BAC
 004A8BA6    cmp         dword ptr [ebp-8],0FFFFFFEB
>004A8BAA    jne         004A8BB6
 004A8BAC    mov         eax,[0056F668];0x0 HInstance:LongWord
 004A8BB1    mov         dword ptr [ebp-0C],eax
>004A8BB4    jmp         004A8BBB
 004A8BB6    xor         eax,eax
 004A8BB8    mov         dword ptr [ebp-0C],eax
 004A8BBB    mov         eax,dword ptr [ebp-8]
 004A8BBE    mov         eax,dword ptr [eax*4+56CAA8]
 004A8BC5    push        eax
 004A8BC6    mov         eax,dword ptr [ebp-0C]
 004A8BC9    push        eax
 004A8BCA    call        user32.LoadCursorA
 004A8BCF    mov         ecx,eax
 004A8BD1    mov         edx,dword ptr [ebp-8]
 004A8BD4    mov         eax,dword ptr [ebp-4]
 004A8BD7    call        004A8CDC
 004A8BDC    inc         dword ptr [ebp-8]
 004A8BDF    cmp         dword ptr [ebp-8],0FFFFFFFF
>004A8BE3    jne         004A8B9A
 004A8BE5    mov         esp,ebp
 004A8BE7    pop         ebp
 004A8BE8    ret
*}
end;

//004A8BEC
{*procedure sub_004A8BEC(?:?);
begin
 004A8BEC    push        ebp
 004A8BED    mov         ebp,esp
 004A8BEF    add         esp,0FFFFFFF0
 004A8BF2    mov         dword ptr [ebp-4],eax
 004A8BF5    mov         eax,dword ptr [ebp-4]
 004A8BF8    mov         eax,dword ptr [eax+5C]
 004A8BFB    mov         dword ptr [ebp-8],eax
 004A8BFE    cmp         dword ptr [ebp-8],0
>004A8C02    je          004A8C55
 004A8C04    mov         eax,dword ptr [ebp-8]
 004A8C07    cmp         dword ptr [eax+4],0FFFFFFEF
>004A8C0B    jl          004A8C16
 004A8C0D    mov         eax,dword ptr [ebp-8]
 004A8C10    cmp         dword ptr [eax+4],0FFFFFFF4
>004A8C14    jle         004A8C28
 004A8C16    mov         eax,dword ptr [ebp-8]
 004A8C19    cmp         dword ptr [eax+4],0FFFFFFEB
>004A8C1D    je          004A8C28
 004A8C1F    mov         eax,dword ptr [ebp-8]
 004A8C22    cmp         dword ptr [eax+4],0
>004A8C26    jle         004A8C34
 004A8C28    mov         eax,dword ptr [ebp-8]
 004A8C2B    mov         eax,dword ptr [eax+8]
 004A8C2E    push        eax
 004A8C2F    call        user32.DestroyCursor
 004A8C34    mov         eax,dword ptr [ebp-8]
 004A8C37    mov         eax,dword ptr [eax]
 004A8C39    mov         dword ptr [ebp-0C],eax
 004A8C3C    mov         edx,0C
 004A8C41    mov         eax,dword ptr [ebp-8]
 004A8C44    call        @FreeMem
 004A8C49    mov         eax,dword ptr [ebp-0C]
 004A8C4C    mov         dword ptr [ebp-8],eax
 004A8C4F    cmp         dword ptr [ebp-8],0
>004A8C53    jne         004A8C04
 004A8C55    push        7F00
 004A8C5A    push        0
 004A8C5C    call        user32.LoadCursorA
 004A8C61    mov         dword ptr [ebp-10],eax
 004A8C64    mov         eax,dword ptr [ebp-10]
 004A8C67    mov         edx,dword ptr [ebp-4]
 004A8C6A    cmp         eax,dword ptr [edx+60]
>004A8C6D    je          004A8C7B
 004A8C6F    mov         eax,dword ptr [ebp-4]
 004A8C72    mov         eax,dword ptr [eax+60]
 004A8C75    push        eax
 004A8C76    call        user32.DestroyCursor
 004A8C7B    mov         esp,ebp
 004A8C7D    pop         ebp
 004A8C7E    ret
end;*}

//004A8C80
{*function sub_004A8C80(?:TScreen; ?:?):?;
begin
 004A8C80    push        ebp
 004A8C81    mov         ebp,esp
 004A8C83    add         esp,0FFFFFFEC
 004A8C86    mov         dword ptr [ebp-8],edx
 004A8C89    mov         dword ptr [ebp-4],eax
 004A8C8C    xor         eax,eax
 004A8C8E    mov         dword ptr [ebp-0C],eax
 004A8C91    mov         eax,dword ptr [ebp-4]
 004A8C94    call        004A8958
 004A8C99    dec         eax
 004A8C9A    test        eax,eax
>004A8C9C    jl          004A8CD4
 004A8C9E    inc         eax
 004A8C9F    mov         dword ptr [ebp-14],eax
 004A8CA2    mov         dword ptr [ebp-10],0
 004A8CA9    mov         edx,dword ptr [ebp-10]
 004A8CAC    mov         eax,dword ptr [ebp-4]
 004A8CAF    call        004A8934
 004A8CB4    mov         eax,dword ptr [eax+4]
 004A8CB7    cmp         eax,dword ptr [ebp-8]
>004A8CBA    jne         004A8CCC
 004A8CBC    mov         edx,dword ptr [ebp-10]
 004A8CBF    mov         eax,dword ptr [ebp-4]
 004A8CC2    call        004A8934
 004A8CC7    mov         dword ptr [ebp-0C],eax
>004A8CCA    jmp         004A8CD4
 004A8CCC    inc         dword ptr [ebp-10]
 004A8CCF    dec         dword ptr [ebp-14]
>004A8CD2    jne         004A8CA9
 004A8CD4    mov         eax,dword ptr [ebp-0C]
 004A8CD7    mov         esp,ebp
 004A8CD9    pop         ebp
 004A8CDA    ret
end;*}

//004A8CDC
{*procedure sub_004A8CDC(?:TScreen; ?:?; ?:HICON);
begin
 004A8CDC    push        ebp
 004A8CDD    mov         ebp,esp
 004A8CDF    add         esp,0FFFFFFF0
 004A8CE2    mov         dword ptr [ebp-0C],ecx
 004A8CE5    mov         dword ptr [ebp-8],edx
 004A8CE8    mov         dword ptr [ebp-4],eax
 004A8CEB    mov         eax,0C
 004A8CF0    call        @GetMem
 004A8CF5    mov         dword ptr [ebp-10],eax
 004A8CF8    mov         eax,dword ptr [ebp-4]
 004A8CFB    mov         eax,dword ptr [eax+5C];TScreen.FCursorList:PCursorRec
 004A8CFE    mov         edx,dword ptr [ebp-10]
 004A8D01    mov         dword ptr [edx],eax
 004A8D03    mov         eax,dword ptr [ebp-8]
 004A8D06    mov         edx,dword ptr [ebp-10]
 004A8D09    mov         dword ptr [edx+4],eax
 004A8D0C    mov         eax,dword ptr [ebp-0C]
 004A8D0F    mov         edx,dword ptr [ebp-10]
 004A8D12    mov         dword ptr [edx+8],eax
 004A8D15    mov         eax,dword ptr [ebp-10]
 004A8D18    mov         edx,dword ptr [ebp-4]
 004A8D1B    mov         dword ptr [edx+5C],eax;TScreen.FCursorList:PCursorRec
 004A8D1E    mov         esp,ebp
 004A8D20    pop         ebp
 004A8D21    ret
end;*}

//004A8D24
{*function sub_004A8D24(?:TScreen):?;
begin
 004A8D24    push        ebp
 004A8D25    mov         ebp,esp
 004A8D27    add         esp,0FFFFFD98
 004A8D2D    push        ebx
 004A8D2E    xor         edx,edx
 004A8D30    mov         dword ptr [ebp-268],edx
 004A8D36    mov         dword ptr [ebp-4],eax
 004A8D39    xor         eax,eax
 004A8D3B    push        ebp
 004A8D3C    push        4A8EEF
 004A8D41    push        dword ptr fs:[eax]
 004A8D44    mov         dword ptr fs:[eax],esp
 004A8D47    mov         eax,dword ptr [ebp-4]
 004A8D4A    cmp         dword ptr [eax+34],0;TScreen.FImes:TStrings
>004A8D4E    jne         004A8ECD
 004A8D54    mov         dl,1
 004A8D56    mov         eax,[0041DB24];TStringList
 004A8D5B    call        TObject.Create;TStringList.Create
 004A8D60    mov         edx,dword ptr [ebp-4]
 004A8D63    mov         dword ptr [edx+34],eax;TScreen.FImes:TStrings
 004A8D66    mov         eax,dword ptr [ebp-4]
 004A8D69    add         eax,38;TScreen.FDefaultIme:String
 004A8D6C    call        @LStrClr
 004A8D71    lea         eax,[ebp-11C]
 004A8D77    push        eax
 004A8D78    push        40
 004A8D7A    call        user32.GetKeyboardLayoutList
 004A8D7F    mov         dword ptr [ebp-0C],eax
 004A8D82    mov         eax,dword ptr [ebp-0C]
 004A8D85    dec         eax
 004A8D86    test        eax,eax
>004A8D88    jl          004A8EB6
 004A8D8E    inc         eax
 004A8D8F    mov         dword ptr [ebp-1C],eax
 004A8D92    mov         dword ptr [ebp-10],0
 004A8D99    mov         eax,dword ptr [ebp-10]
 004A8D9C    mov         eax,dword ptr [ebp+eax*4-11C]
 004A8DA3    call        00492304
 004A8DA8    test        al,al
>004A8DAA    je          004A8EAA
 004A8DB0    lea         eax,[ebp-18]
 004A8DB3    push        eax
 004A8DB4    push        20019
 004A8DB9    push        0
 004A8DBB    push        0
 004A8DBD    mov         eax,dword ptr [ebp-10]
 004A8DC0    mov         eax,dword ptr [ebp+eax*4-11C]
 004A8DC7    mov         dword ptr [ebp-264],eax
 004A8DCD    mov         byte ptr [ebp-260],0
 004A8DD4    lea         ecx,[ebp-264]
 004A8DDA    mov         edx,4A8F00
 004A8DDF    lea         eax,[ebp-25C]
 004A8DE5    call        0040D57C
 004A8DEA    push        eax
 004A8DEB    push        80000002
 004A8DF0    call        advapi32.RegOpenKeyExA
 004A8DF5    test        eax,eax
>004A8DF7    jne         004A8EAA
 004A8DFD    xor         eax,eax
 004A8DFF    push        ebp
 004A8E00    push        4A8EA3
 004A8E05    push        dword ptr fs:[eax]
 004A8E08    mov         dword ptr fs:[eax],esp
 004A8E0B    mov         dword ptr [ebp-14],100
 004A8E12    lea         eax,[ebp-14]
 004A8E15    push        eax
 004A8E16    lea         eax,[ebp-21C]
 004A8E1C    push        eax
 004A8E1D    push        0
 004A8E1F    push        0
 004A8E21    push        4A8F38;'layout text'
 004A8E26    mov         eax,dword ptr [ebp-18]
 004A8E29    push        eax
 004A8E2A    call        advapi32.RegQueryValueExA
 004A8E2F    test        eax,eax
>004A8E31    jne         004A8E8C
 004A8E33    lea         eax,[ebp-268]
 004A8E39    lea         edx,[ebp-21C]
 004A8E3F    mov         ecx,100
 004A8E44    call        @LStrFromArray
 004A8E49    mov         edx,dword ptr [ebp-268]
 004A8E4F    mov         eax,dword ptr [ebp-10]
 004A8E52    mov         ecx,dword ptr [ebp+eax*4-11C]
 004A8E59    mov         eax,dword ptr [ebp-4]
 004A8E5C    mov         eax,dword ptr [eax+34];TScreen.FImes:TStrings
 004A8E5F    mov         ebx,dword ptr [eax]
 004A8E61    call        dword ptr [ebx+3C];TStrings.sub_00421ABC
 004A8E64    mov         eax,dword ptr [ebp-10]
 004A8E67    mov         eax,dword ptr [ebp+eax*4-11C]
 004A8E6E    mov         edx,dword ptr [ebp-4]
 004A8E71    cmp         eax,dword ptr [edx+3C];TScreen.FDefaultKbLayout:HKL
>004A8E74    jne         004A8E8C
 004A8E76    mov         eax,dword ptr [ebp-4]
 004A8E79    add         eax,38;TScreen.FDefaultIme:String
 004A8E7C    lea         edx,[ebp-21C]
 004A8E82    mov         ecx,100
 004A8E87    call        @LStrFromArray
 004A8E8C    xor         eax,eax
 004A8E8E    pop         edx
 004A8E8F    pop         ecx
 004A8E90    pop         ecx
 004A8E91    mov         dword ptr fs:[eax],edx
 004A8E94    push        4A8EAA
 004A8E99    mov         eax,dword ptr [ebp-18]
 004A8E9C    push        eax
 004A8E9D    call        advapi32.RegCloseKey
 004A8EA2    ret
>004A8EA3    jmp         @HandleFinally
>004A8EA8    jmp         004A8E99
 004A8EAA    inc         dword ptr [ebp-10]
 004A8EAD    dec         dword ptr [ebp-1C]
>004A8EB0    jne         004A8D99
 004A8EB6    mov         eax,dword ptr [ebp-4]
 004A8EB9    mov         eax,dword ptr [eax+34];TScreen.FImes:TStrings
 004A8EBC    mov         byte ptr [eax+1D],0
 004A8EC0    mov         eax,dword ptr [ebp-4]
 004A8EC3    mov         eax,dword ptr [eax+34];TScreen.FImes:TStrings
 004A8EC6    mov         dl,1
 004A8EC8    call        0042340C
 004A8ECD    mov         eax,dword ptr [ebp-4]
 004A8ED0    mov         eax,dword ptr [eax+34];TScreen.FImes:TStrings
 004A8ED3    mov         dword ptr [ebp-8],eax
 004A8ED6    xor         eax,eax
 004A8ED8    pop         edx
 004A8ED9    pop         ecx
 004A8EDA    pop         ecx
 004A8EDB    mov         dword ptr fs:[eax],edx
 004A8EDE    push        4A8EF6
 004A8EE3    lea         eax,[ebp-268]
 004A8EE9    call        @LStrClr
 004A8EEE    ret
>004A8EEF    jmp         @HandleFinally
>004A8EF4    jmp         004A8EE3
 004A8EF6    mov         eax,dword ptr [ebp-8]
 004A8EF9    pop         ebx
 004A8EFA    mov         esp,ebp
 004A8EFC    pop         ebp
 004A8EFD    ret
end;*}

//004A8F44
{*procedure sub_004A8F44(?:TScreen; ?:?);
begin
 004A8F44    push        ebp
 004A8F45    mov         ebp,esp
 004A8F47    add         esp,0FFFFFFF8
 004A8F4A    mov         dword ptr [ebp-8],edx
 004A8F4D    mov         dword ptr [ebp-4],eax
 004A8F50    mov         eax,dword ptr [ebp-4]
 004A8F53    call        004A8D24
 004A8F58    mov         eax,dword ptr [ebp-8]
 004A8F5B    mov         edx,dword ptr [ebp-4]
 004A8F5E    mov         edx,dword ptr [edx+38];TScreen.FDefaultIme:String
 004A8F61    call        @LStrAsg
 004A8F66    pop         ecx
 004A8F67    pop         ecx
 004A8F68    pop         ebp
 004A8F69    ret
end;*}

//004A8F6C
{*procedure sub_004A8F6C(?:?; ?:?);
begin
 004A8F6C    push        ebp
 004A8F6D    mov         ebp,esp
 004A8F6F    add         esp,0FFFFFFF8
 004A8F72    mov         dword ptr [ebp-8],edx
 004A8F75    mov         dword ptr [ebp-4],eax
 004A8F78    mov         dx,0B035
 004A8F7C    mov         eax,[00571E3C];0x0 Application:TApplication
 004A8F81    call        004AC198
 004A8F86    mov         eax,dword ptr [ebp-8]
 004A8F89    mov         edx,dword ptr [ebp-4]
 004A8F8C    cmp         eax,dword ptr [edx+80]
>004A8F92    jne         004A8FC3
 004A8F94    cmp         dword ptr ds:[571E3C],0;Application:TApplication
>004A8F9B    je          004A8FC3
 004A8F9D    mov         eax,[00571E3C];0x0 Application:TApplication
 004A8FA2    cmp         byte ptr [eax+88],0;TApplication.FShowHint:Boolean
>004A8FA9    je          004A8FC3
 004A8FAB    xor         edx,edx
 004A8FAD    mov         eax,[00571E3C];0x0 Application:TApplication
 004A8FB2    call        004ABED0
 004A8FB7    mov         dl,1
 004A8FB9    mov         eax,[00571E3C];0x0 Application:TApplication
 004A8FBE    call        004ABED0
 004A8FC3    pop         ecx
 004A8FC4    pop         ecx
 004A8FC5    pop         ebp
 004A8FC6    ret
end;*}

//004A8FC8
{*function sub_004A8FC8(?:?; ?:?):?;
begin
 004A8FC8    push        ebp
 004A8FC9    mov         ebp,esp
 004A8FCB    add         esp,0FFFFFFF4
 004A8FCE    mov         dword ptr [ebp-8],edx
 004A8FD1    mov         dword ptr [ebp-4],eax
 004A8FD4    mov         edx,dword ptr [ebp-8]
 004A8FD7    mov         eax,dword ptr [ebp-4]
 004A8FDA    mov         eax,dword ptr [eax+54]
 004A8FDD    call        TList.Get
 004A8FE2    mov         dword ptr [ebp-0C],eax
 004A8FE5    mov         eax,dword ptr [ebp-0C]
 004A8FE8    mov         esp,ebp
 004A8FEA    pop         ebp
 004A8FEB    ret
end;*}

//004A8FEC
{*function sub_004A8FEC(?:?):?;
begin
 004A8FEC    push        ebp
 004A8FED    mov         ebp,esp
 004A8FEF    add         esp,0FFFFFFF8
 004A8FF2    mov         dword ptr [ebp-4],eax
 004A8FF5    mov         eax,dword ptr [ebp-4]
 004A8FF8    mov         eax,dword ptr [eax+54]
 004A8FFB    mov         eax,dword ptr [eax+8]
 004A8FFE    mov         dword ptr [ebp-8],eax
 004A9001    mov         eax,dword ptr [ebp-8]
 004A9004    pop         ecx
 004A9005    pop         ecx
 004A9006    pop         ebp
 004A9007    ret
end;*}

//004A9008
{*function sub_004A9008(?:TScreen; ?:TCursor):?;
begin
 004A9008    push        ebp
 004A9009    mov         ebp,esp
 004A900B    add         esp,0FFFFFFF0
 004A900E    mov         dword ptr [ebp-8],edx
 004A9011    mov         dword ptr [ebp-4],eax
 004A9014    xor         eax,eax
 004A9016    mov         dword ptr [ebp-0C],eax
 004A9019    cmp         dword ptr [ebp-8],0FFFFFFFF
>004A901D    je          004A905D
 004A901F    mov         eax,dword ptr [ebp-4]
 004A9022    mov         eax,dword ptr [eax+5C];TScreen.FCursorList:PCursorRec
 004A9025    mov         dword ptr [ebp-10],eax
>004A9028    jmp         004A9032
 004A902A    mov         eax,dword ptr [ebp-10]
 004A902D    mov         eax,dword ptr [eax]
 004A902F    mov         dword ptr [ebp-10],eax
 004A9032    cmp         dword ptr [ebp-10],0
>004A9036    je          004A9043
 004A9038    mov         eax,dword ptr [ebp-10]
 004A903B    mov         eax,dword ptr [eax+4]
 004A903E    cmp         eax,dword ptr [ebp-8]
>004A9041    jne         004A902A
 004A9043    cmp         dword ptr [ebp-10],0
>004A9047    jne         004A9054
 004A9049    mov         eax,dword ptr [ebp-4]
 004A904C    mov         eax,dword ptr [eax+60];TScreen.FDefaultCursor:HCURSOR
 004A904F    mov         dword ptr [ebp-0C],eax
>004A9052    jmp         004A905D
 004A9054    mov         eax,dword ptr [ebp-10]
 004A9057    mov         eax,dword ptr [eax+8]
 004A905A    mov         dword ptr [ebp-0C],eax
 004A905D    mov         eax,dword ptr [ebp-0C]
 004A9060    mov         esp,ebp
 004A9062    pop         ebp
 004A9063    ret
end;*}

//004A9064
procedure sub_004A9064(?:TScreen; ?:TCursor);
begin
{*
 004A9064    push        ebp
 004A9065    mov         ebp,esp
 004A9067    add         esp,0FFFFFFE8
 004A906A    push        ebx
 004A906B    mov         word ptr [ebp-6],dx
 004A906F    mov         dword ptr [ebp-4],eax
 004A9072    mov         ax,word ptr [ebp-6]
 004A9076    mov         edx,dword ptr [ebp-4]
 004A9079    cmp         ax,word ptr [edx+44];TScreen.FCursor:TCursor
>004A907D    je          004A9115
 004A9083    mov         ax,word ptr [ebp-6]
 004A9087    mov         edx,dword ptr [ebp-4]
 004A908A    mov         word ptr [edx+44],ax;TScreen.FCursor:TCursor
 004A908E    cmp         word ptr [ebp-6],0
>004A9093    jne         004A9103
 004A9095    lea         eax,[ebp-0E]
 004A9098    push        eax
 004A9099    call        user32.GetCursorPos
 004A909E    push        dword ptr [ebp-0A]
 004A90A1    push        dword ptr [ebp-0E]
 004A90A4    call        user32.WindowFromPoint
 004A90A9    mov         dword ptr [ebp-14],eax
 004A90AC    cmp         dword ptr [ebp-14],0
>004A90B0    je          004A9103
 004A90B2    push        0
 004A90B4    mov         eax,dword ptr [ebp-14]
 004A90B7    push        eax
 004A90B8    call        user32.GetWindowThreadProcessId
 004A90BD    mov         ebx,eax
 004A90BF    call        kernel32.GetCurrentThreadId
 004A90C4    cmp         ebx,eax
>004A90C6    jne         004A9103
 004A90C8    lea         eax,[ebp-0E]
 004A90CB    call        00408664
 004A90D0    push        eax
 004A90D1    push        0
 004A90D3    push        84
 004A90D8    mov         eax,dword ptr [ebp-14]
 004A90DB    push        eax
 004A90DC    call        user32.SendMessageA
 004A90E1    mov         dword ptr [ebp-18],eax
 004A90E4    mov         dx,200
 004A90E8    mov         ax,word ptr [ebp-18]
 004A90EC    call        0040845C
 004A90F1    push        eax
 004A90F2    mov         eax,dword ptr [ebp-14]
 004A90F5    push        eax
 004A90F6    push        20
 004A90F8    mov         eax,dword ptr [ebp-14]
 004A90FB    push        eax
 004A90FC    call        user32.SendMessageA
>004A9101    jmp         004A911B
 004A9103    movsx       edx,word ptr [ebp-6]
 004A9107    mov         eax,dword ptr [ebp-4]
 004A910A    call        004A9008
 004A910F    push        eax
 004A9110    call        user32.SetCursor
 004A9115    mov         eax,dword ptr [ebp-4]
 004A9118    inc         dword ptr [eax+48];TScreen.FCursorCount:Integer
 004A911B    pop         ebx
 004A911C    mov         esp,ebp
 004A911E    pop         ebp
 004A911F    ret
*}
end;

//004A9120
procedure sub_004A9120(?:TScreen);
begin
{*
 004A9120    push        ebp
 004A9121    mov         ebp,esp
 004A9123    add         esp,0FFFFFE68
 004A9129    mov         dword ptr [ebp-4],eax
 004A912C    mov         byte ptr [ebp-5],0
 004A9130    cmp         dword ptr ds:[571E3C],0;Application:TApplication
>004A9137    je          004A9147
 004A9139    mov         eax,[00571E3C];0x0 Application:TApplication
 004A913E    mov         al,byte ptr [eax+88];TApplication.FShowHint:Boolean
 004A9144    mov         byte ptr [ebp-5],al
 004A9147    xor         eax,eax
 004A9149    push        ebp
 004A914A    push        4A927D
 004A914F    push        dword ptr fs:[eax]
 004A9152    mov         dword ptr fs:[eax],esp
 004A9155    cmp         dword ptr ds:[571E3C],0;Application:TApplication
>004A915C    je          004A916A
 004A915E    xor         edx,edx
 004A9160    mov         eax,[00571E3C];0x0 Application:TApplication
 004A9165    call        004ABED0
 004A916A    push        0
 004A916C    lea         eax,[ebp-41]
 004A916F    push        eax
 004A9170    push        3C
 004A9172    push        1F
 004A9174    call        user32.SystemParametersInfoA
 004A9179    test        eax,eax
>004A917B    je          004A9198
 004A917D    lea         eax,[ebp-41]
 004A9180    push        eax
 004A9181    call        gdi32.CreateFontIndirectA
 004A9186    mov         edx,eax
 004A9188    mov         eax,dword ptr [ebp-4]
 004A918B    mov         eax,dword ptr [eax+84];TScreen.FIconFont:TFont
 004A9191    call        0042E2DC
>004A9196    jmp         004A91AF
 004A9198    push        0D
 004A919A    call        gdi32.GetStockObject
 004A919F    mov         edx,eax
 004A91A1    mov         eax,dword ptr [ebp-4]
 004A91A4    mov         eax,dword ptr [eax+84];TScreen.FIconFont:TFont
 004A91AA    call        0042E2DC
 004A91AF    mov         dword ptr [ebp-195],154
 004A91B9    push        0
 004A91BB    lea         eax,[ebp-195]
 004A91C1    push        eax
 004A91C2    push        0
 004A91C4    push        29
 004A91C6    call        user32.SystemParametersInfoA
 004A91CB    test        eax,eax
>004A91CD    je          004A9209
 004A91CF    lea         eax,[ebp-0B9]
 004A91D5    push        eax
 004A91D6    call        gdi32.CreateFontIndirectA
 004A91DB    mov         edx,eax
 004A91DD    mov         eax,dword ptr [ebp-4]
 004A91E0    mov         eax,dword ptr [eax+80];TScreen.FHintFont:TFont
 004A91E6    call        0042E2DC
 004A91EB    lea         eax,[ebp-0F5]
 004A91F1    push        eax
 004A91F2    call        gdi32.CreateFontIndirectA
 004A91F7    mov         edx,eax
 004A91F9    mov         eax,dword ptr [ebp-4]
 004A91FC    mov         eax,dword ptr [eax+88];TScreen.FMenuFont:TFont
 004A9202    call        0042E2DC
>004A9207    jmp         004A9233
 004A9209    mov         eax,dword ptr [ebp-4]
 004A920C    mov         eax,dword ptr [eax+80];TScreen.FHintFont:TFont
 004A9212    mov         edx,8
 004A9217    call        TFont.SetSize
 004A921C    push        0D
 004A921E    call        gdi32.GetStockObject
 004A9223    mov         edx,eax
 004A9225    mov         eax,dword ptr [ebp-4]
 004A9228    mov         eax,dword ptr [eax+88];TScreen.FMenuFont:TFont
 004A922E    call        0042E2DC
 004A9233    mov         eax,dword ptr [ebp-4]
 004A9236    mov         eax,dword ptr [eax+80];TScreen.FHintFont:TFont
 004A923C    mov         edx,0FF000017
 004A9241    call        TFont.SetColor
 004A9246    mov         eax,dword ptr [ebp-4]
 004A9249    mov         eax,dword ptr [eax+88];TScreen.FMenuFont:TFont
 004A924F    mov         edx,0FF000007
 004A9254    call        TFont.SetColor
 004A9259    xor         eax,eax
 004A925B    pop         edx
 004A925C    pop         ecx
 004A925D    pop         ecx
 004A925E    mov         dword ptr fs:[eax],edx
 004A9261    push        4A9284
 004A9266    cmp         dword ptr ds:[571E3C],0;Application:TApplication
>004A926D    je          004A927C
 004A926F    mov         dl,byte ptr [ebp-5]
 004A9272    mov         eax,[00571E3C];0x0 Application:TApplication
 004A9277    call        004ABED0
 004A927C    ret
>004A927D    jmp         @HandleFinally
>004A9282    jmp         004A9266
 004A9284    mov         esp,ebp
 004A9286    pop         ebp
 004A9287    ret
*}
end;

//004A9288
procedure sub_004A9288(?:TScreen);
begin
{*
 004A9288    push        ebp
 004A9289    mov         ebp,esp
 004A928B    push        ecx
 004A928C    mov         dword ptr [ebp-4],eax
 004A928F    mov         eax,dword ptr [ebp-4]
 004A9292    inc         word ptr [eax+8C]
 004A9299    pop         ecx
 004A929A    pop         ebp
 004A929B    ret
*}
end;

//004A929C
procedure sub_004A929C(?:TScreen);
begin
{*
 004A929C    push        ebp
 004A929D    mov         ebp,esp
 004A929F    push        ecx
 004A92A0    mov         dword ptr [ebp-4],eax
 004A92A3    mov         eax,dword ptr [ebp-4]
 004A92A6    dec         word ptr [eax+8C]
 004A92AD    mov         eax,dword ptr [ebp-4]
 004A92B0    cmp         word ptr [eax+8C],0
>004A92B8    jne         004A92CE
 004A92BA    mov         eax,dword ptr [ebp-4]
 004A92BD    test        byte ptr [eax+8E],10
>004A92C4    je          004A92CE
 004A92C6    mov         eax,dword ptr [ebp-4]
 004A92C9    call        004A92D4
 004A92CE    pop         ecx
 004A92CF    pop         ebp
 004A92D0    ret
*}
end;

//004A92D4
{*procedure sub_004A92D4(?:?);
begin
 004A92D4    push        ebp
 004A92D5    mov         ebp,esp
 004A92D7    push        ecx
 004A92D8    mov         dword ptr [ebp-4],eax
 004A92DB    xor         edx,edx
 004A92DD    mov         eax,dword ptr [ebp-4]
 004A92E0    call        004A97F8
 004A92E5    pop         ecx
 004A92E6    pop         ebp
 004A92E7    ret
end;*}

//004A92E8
{*function sub_004A92E8(?:?; ?:Pointer; ?:?):?;
begin
 004A92E8    push        ebp
 004A92E9    mov         ebp,esp
 004A92EB    add         esp,0FFFFFFF4
 004A92EE    mov         byte ptr [ebp-9],cl
 004A92F1    mov         dword ptr [ebp-8],edx
 004A92F4    mov         dword ptr [ebp-4],eax
 004A92F7    mov         byte ptr [ebp-0A],0
 004A92FB    mov         al,byte ptr [ebp-9]
 004A92FE    dec         al
>004A9300    je          004A9310
 004A9302    dec         al
>004A9304    je          004A9322
 004A9306    dec         al
>004A9308    je          004A9342
 004A930A    dec         al
>004A930C    je          004A9354
>004A930E    jmp         004A9372
 004A9310    mov         eax,dword ptr [ebp-8]
 004A9313    mov         eax,dword ptr [eax+44]
 004A9316    mov         edx,dword ptr [ebp-4]
 004A9319    cmp         eax,dword ptr [edx+44]
 004A931C    setg        byte ptr [ebp-0A]
>004A9320    jmp         004A9372
 004A9322    mov         eax,dword ptr [ebp-8]
 004A9325    mov         eax,dword ptr [eax+44]
 004A9328    mov         edx,dword ptr [ebp-8]
 004A932B    add         eax,dword ptr [edx+4C]
 004A932E    mov         edx,dword ptr [ebp-4]
 004A9331    mov         edx,dword ptr [edx+44]
 004A9334    mov         ecx,dword ptr [ebp-4]
 004A9337    add         edx,dword ptr [ecx+4C]
 004A933A    cmp         eax,edx
 004A933C    setl        byte ptr [ebp-0A]
>004A9340    jmp         004A9372
 004A9342    mov         eax,dword ptr [ebp-8]
 004A9345    mov         eax,dword ptr [eax+40]
 004A9348    mov         edx,dword ptr [ebp-4]
 004A934B    cmp         eax,dword ptr [edx+40]
 004A934E    setg        byte ptr [ebp-0A]
>004A9352    jmp         004A9372
 004A9354    mov         eax,dword ptr [ebp-8]
 004A9357    mov         eax,dword ptr [eax+40]
 004A935A    mov         edx,dword ptr [ebp-8]
 004A935D    add         eax,dword ptr [edx+48]
 004A9360    mov         edx,dword ptr [ebp-4]
 004A9363    mov         edx,dword ptr [edx+40]
 004A9366    mov         ecx,dword ptr [ebp-4]
 004A9369    add         edx,dword ptr [ecx+48]
 004A936C    cmp         eax,edx
 004A936E    setl        byte ptr [ebp-0A]
 004A9372    mov         al,byte ptr [ebp-0A]
 004A9375    mov         esp,ebp
 004A9377    pop         ebp
 004A9378    ret
end;*}

//004A937C
{*procedure sub_004A937C(?:Pointer; ?:?; ?:?);
begin
 004A937C    push        ebp
 004A937D    mov         ebp,esp
 004A937F    add         esp,0FFFFFFE8
 004A9382    push        ebx
 004A9383    mov         byte ptr [ebp-5],dl
 004A9386    mov         dword ptr [ebp-4],eax
 004A9389    mov         eax,dword ptr [ebp+8]
 004A938C    mov         eax,dword ptr [eax-4]
 004A938F    mov         eax,dword ptr [eax+8]
 004A9392    mov         edx,dword ptr [ebp+8]
 004A9395    mov         edx,dword ptr [edx-4]
 004A9398    sub         eax,dword ptr [edx]
 004A939A    mov         dword ptr [ebp-14],eax
 004A939D    cmp         dword ptr [ebp-14],0
>004A93A1    jl          004A93AC
 004A93A3    mov         al,byte ptr [ebp-5]
 004A93A6    add         al,0FD
 004A93A8    sub         al,2
>004A93AA    jae         004A93B5
 004A93AC    mov         eax,dword ptr [ebp-4]
 004A93AF    mov         eax,dword ptr [eax+48]
 004A93B2    mov         dword ptr [ebp-14],eax
 004A93B5    mov         eax,dword ptr [ebp+8]
 004A93B8    mov         eax,dword ptr [eax-4]
 004A93BB    mov         eax,dword ptr [eax+0C]
 004A93BE    mov         edx,dword ptr [ebp+8]
 004A93C1    mov         edx,dword ptr [edx-4]
 004A93C4    sub         eax,dword ptr [edx+4]
 004A93C7    mov         dword ptr [ebp-18],eax
 004A93CA    cmp         dword ptr [ebp-18],0
>004A93CE    jl          004A93D8
 004A93D0    mov         al,byte ptr [ebp-5]
 004A93D3    dec         eax
 004A93D4    sub         al,2
>004A93D6    jae         004A93E1
 004A93D8    mov         eax,dword ptr [ebp-4]
 004A93DB    mov         eax,dword ptr [eax+4C]
 004A93DE    mov         dword ptr [ebp-18],eax
 004A93E1    cmp         byte ptr [ebp-5],1
>004A93E5    jne         004A9415
 004A93E7    mov         eax,dword ptr [ebp-4]
 004A93EA    cmp         byte ptr [eax+22B],2
>004A93F1    jne         004A9415
 004A93F3    mov         eax,dword ptr [ebp-4]
 004A93F6    mov         eax,dword ptr [eax+40]
 004A93F9    mov         dword ptr [ebp-0C],eax
 004A93FC    mov         eax,dword ptr [ebp-4]
 004A93FF    mov         eax,dword ptr [eax+44]
 004A9402    mov         dword ptr [ebp-10],eax
 004A9405    push        3D
 004A9407    mov         eax,[0056E1C0];^gvar_00571B2C
 004A940C    mov         eax,dword ptr [eax]
 004A940E    call        eax
 004A9410    mov         dword ptr [ebp-14],eax
>004A9413    jmp         004A942C
 004A9415    mov         eax,dword ptr [ebp+8]
 004A9418    mov         eax,dword ptr [eax-4]
 004A941B    mov         eax,dword ptr [eax]
 004A941D    mov         dword ptr [ebp-0C],eax
 004A9420    mov         eax,dword ptr [ebp+8]
 004A9423    mov         eax,dword ptr [eax-4]
 004A9426    mov         eax,dword ptr [eax+4]
 004A9429    mov         dword ptr [ebp-10],eax
 004A942C    mov         al,byte ptr [ebp-5]
 004A942F    dec         al
>004A9431    je          004A9441
 004A9433    dec         al
>004A9435    je          004A944F
 004A9437    dec         al
>004A9439    je          004A9469
 004A943B    dec         al
>004A943D    je          004A9476
>004A943F    jmp         004A948E
 004A9441    mov         eax,dword ptr [ebp+8]
 004A9444    mov         eax,dword ptr [eax-4]
 004A9447    mov         edx,dword ptr [ebp-18]
 004A944A    add         dword ptr [eax+4],edx
>004A944D    jmp         004A948E
 004A944F    mov         eax,dword ptr [ebp+8]
 004A9452    mov         eax,dword ptr [eax-4]
 004A9455    mov         edx,dword ptr [ebp-18]
 004A9458    sub         dword ptr [eax+0C],edx
 004A945B    mov         eax,dword ptr [ebp+8]
 004A945E    mov         eax,dword ptr [eax-4]
 004A9461    mov         eax,dword ptr [eax+0C]
 004A9464    mov         dword ptr [ebp-10],eax
>004A9467    jmp         004A948E
 004A9469    mov         eax,dword ptr [ebp+8]
 004A946C    mov         eax,dword ptr [eax-4]
 004A946F    mov         edx,dword ptr [ebp-14]
 004A9472    add         dword ptr [eax],edx
>004A9474    jmp         004A948E
 004A9476    mov         eax,dword ptr [ebp+8]
 004A9479    mov         eax,dword ptr [eax-4]
 004A947C    mov         edx,dword ptr [ebp-14]
 004A947F    sub         dword ptr [eax+8],edx
 004A9482    mov         eax,dword ptr [ebp+8]
 004A9485    mov         eax,dword ptr [eax-4]
 004A9488    mov         eax,dword ptr [eax+8]
 004A948B    mov         dword ptr [ebp-0C],eax
 004A948E    mov         eax,dword ptr [ebp-14]
 004A9491    push        eax
 004A9492    mov         eax,dword ptr [ebp-18]
 004A9495    push        eax
 004A9496    mov         ecx,dword ptr [ebp-10]
 004A9499    mov         edx,dword ptr [ebp-0C]
 004A949C    mov         eax,dword ptr [ebp-4]
 004A949F    mov         ebx,dword ptr [eax]
 004A94A1    call        dword ptr [ebx+84]
 004A94A7    mov         eax,dword ptr [ebp-4]
 004A94AA    cmp         byte ptr [eax+22B],2
>004A94B1    jne         004A94BF
 004A94B3    mov         eax,dword ptr [ebp-0C]
 004A94B6    sub         dword ptr [ebp-14],eax
 004A94B9    mov         eax,dword ptr [ebp-10]
 004A94BC    sub         dword ptr [ebp-18],eax
 004A94BF    mov         eax,dword ptr [ebp-4]
 004A94C2    mov         eax,dword ptr [eax+48]
 004A94C5    cmp         eax,dword ptr [ebp-14]
>004A94C8    jne         004A94D9
 004A94CA    mov         eax,dword ptr [ebp-4]
 004A94CD    mov         eax,dword ptr [eax+4C]
 004A94D0    cmp         eax,dword ptr [ebp-18]
>004A94D3    je          004A9579
 004A94D9    xor         eax,eax
 004A94DB    mov         al,byte ptr [ebp-5]
 004A94DE    cmp         eax,5
>004A94E1    ja          004A9579
 004A94E7    jmp         dword ptr [eax*4+4A94EE]
 004A94E7    dd          004A9579
 004A94E7    dd          004A9506
 004A94E7    dd          004A951A
 004A94E7    dd          004A952E
 004A94E7    dd          004A9541
 004A94E7    dd          004A9555
 004A9506    mov         eax,dword ptr [ebp-18]
 004A9509    mov         edx,dword ptr [ebp-4]
 004A950C    sub         eax,dword ptr [edx+4C]
 004A950F    mov         edx,dword ptr [ebp+8]
 004A9512    mov         edx,dword ptr [edx-4]
 004A9515    sub         dword ptr [edx+4],eax
>004A9518    jmp         004A9579
 004A951A    mov         eax,dword ptr [ebp-18]
 004A951D    mov         edx,dword ptr [ebp-4]
 004A9520    sub         eax,dword ptr [edx+4C]
 004A9523    mov         edx,dword ptr [ebp+8]
 004A9526    mov         edx,dword ptr [edx-4]
 004A9529    add         dword ptr [edx+0C],eax
>004A952C    jmp         004A9579
 004A952E    mov         eax,dword ptr [ebp-14]
 004A9531    mov         edx,dword ptr [ebp-4]
 004A9534    sub         eax,dword ptr [edx+48]
 004A9537    mov         edx,dword ptr [ebp+8]
 004A953A    mov         edx,dword ptr [edx-4]
 004A953D    sub         dword ptr [edx],eax
>004A953F    jmp         004A9579
 004A9541    mov         eax,dword ptr [ebp-14]
 004A9544    mov         edx,dword ptr [ebp-4]
 004A9547    sub         eax,dword ptr [edx+48]
 004A954A    mov         edx,dword ptr [ebp+8]
 004A954D    mov         edx,dword ptr [edx-4]
 004A9550    add         dword ptr [edx+8],eax
>004A9553    jmp         004A9579
 004A9555    mov         eax,dword ptr [ebp-14]
 004A9558    mov         edx,dword ptr [ebp-4]
 004A955B    sub         eax,dword ptr [edx+48]
 004A955E    mov         edx,dword ptr [ebp+8]
 004A9561    mov         edx,dword ptr [edx-4]
 004A9564    add         dword ptr [edx+8],eax
 004A9567    mov         eax,dword ptr [ebp-18]
 004A956A    mov         edx,dword ptr [ebp-4]
 004A956D    sub         eax,dword ptr [edx+4C]
 004A9570    mov         edx,dword ptr [ebp+8]
 004A9573    mov         edx,dword ptr [edx-4]
 004A9576    add         dword ptr [edx+0C],eax
 004A9579    pop         ebx
 004A957A    mov         esp,ebp
 004A957C    pop         ebp
 004A957D    ret
end;*}

//004A9580
{*procedure sub_004A9580(?:?; ?:?);
begin
 004A9580    push        ebp
 004A9581    mov         ebp,esp
 004A9583    add         esp,0FFFFFFEC
 004A9586    mov         byte ptr [ebp-1],al
 004A9589    mov         eax,dword ptr [ebp+8]
 004A958C    mov         eax,dword ptr [eax-8]
 004A958F    mov         edx,dword ptr [eax]
 004A9591    call        dword ptr [edx+8]
 004A9594    mov         eax,dword ptr [ebp+8]
 004A9597    cmp         dword ptr [eax-0C],0
>004A959B    je          004A95EF
 004A959D    mov         eax,dword ptr [ebp+8]
 004A95A0    mov         eax,dword ptr [eax-0C]
 004A95A3    cmp         dword ptr [eax+30],0
>004A95A7    jne         004A95EF
 004A95A9    mov         eax,dword ptr [ebp+8]
 004A95AC    mov         eax,dword ptr [eax-0C]
 004A95AF    test        byte ptr [eax+1C],10
>004A95B3    jne         004A95EF
 004A95B5    mov         eax,dword ptr [ebp+8]
 004A95B8    mov         eax,dword ptr [eax-0C]
 004A95BB    cmp         byte ptr [eax+57],0
>004A95BF    je          004A95EF
 004A95C1    mov         eax,dword ptr [ebp+8]
 004A95C4    mov         eax,dword ptr [eax-0C]
 004A95C7    mov         al,byte ptr [eax+5B]
 004A95CA    cmp         al,byte ptr [ebp-1]
>004A95CD    jne         004A95EF
 004A95CF    mov         eax,dword ptr [ebp+8]
 004A95D2    mov         eax,dword ptr [eax-0C]
 004A95D5    cmp         byte ptr [eax+22B],1
>004A95DC    je          004A95EF
 004A95DE    mov         eax,dword ptr [ebp+8]
 004A95E1    mov         edx,dword ptr [eax-0C]
 004A95E4    mov         eax,dword ptr [ebp+8]
 004A95E7    mov         eax,dword ptr [eax-8]
 004A95EA    call        TList.Add
 004A95EF    mov         eax,dword ptr [ebp+8]
 004A95F2    mov         eax,dword ptr [eax-10]
 004A95F5    call        004A89F4
 004A95FA    dec         eax
 004A95FB    test        eax,eax
>004A95FD    jl          004A96B9
 004A9603    inc         eax
 004A9604    mov         dword ptr [ebp-14],eax
 004A9607    mov         dword ptr [ebp-8],0
 004A960E    mov         eax,dword ptr [ebp+8]
 004A9611    mov         eax,dword ptr [eax-10]
 004A9614    mov         edx,dword ptr [ebp-8]
 004A9617    call        004A89D0
 004A961C    mov         dword ptr [ebp-10],eax
 004A961F    mov         eax,dword ptr [ebp-10]
 004A9622    cmp         dword ptr [eax+30],0
>004A9626    jne         004A96AD
 004A962C    mov         eax,dword ptr [ebp-10]
 004A962F    mov         al,byte ptr [eax+5B]
 004A9632    cmp         al,byte ptr [ebp-1]
>004A9635    jne         004A96AD
 004A9637    mov         eax,dword ptr [ebp-10]
 004A963A    test        byte ptr [eax+1C],10
>004A963E    jne         004A96AD
 004A9640    mov         eax,dword ptr [ebp-10]
 004A9643    cmp         byte ptr [eax+57],0
>004A9647    je          004A96AD
 004A9649    mov         eax,dword ptr [ebp-10]
 004A964C    cmp         byte ptr [eax+22B],1
>004A9653    je          004A96AD
 004A9655    mov         eax,dword ptr [ebp+8]
 004A9658    mov         eax,dword ptr [eax-0C]
 004A965B    cmp         eax,dword ptr [ebp-10]
>004A965E    je          004A96AD
 004A9660    xor         eax,eax
 004A9662    mov         dword ptr [ebp-0C],eax
>004A9665    jmp         004A966A
 004A9667    inc         dword ptr [ebp-0C]
 004A966A    mov         eax,dword ptr [ebp+8]
 004A966D    mov         eax,dword ptr [eax-8]
 004A9670    mov         eax,dword ptr [eax+8]
 004A9673    cmp         eax,dword ptr [ebp-0C]
>004A9676    jle         004A969C
 004A9678    mov         eax,dword ptr [ebp+8]
 004A967B    push        eax
 004A967C    mov         eax,dword ptr [ebp+8]
 004A967F    mov         eax,dword ptr [eax-8]
 004A9682    mov         edx,dword ptr [ebp-0C]
 004A9685    call        TList.Get
 004A968A    mov         edx,eax
 004A968C    mov         cl,byte ptr [ebp-1]
 004A968F    mov         eax,dword ptr [ebp-10]
 004A9692    call        004A92E8
 004A9697    pop         ecx
 004A9698    test        al,al
>004A969A    je          004A9667
 004A969C    mov         eax,dword ptr [ebp+8]
 004A969F    mov         eax,dword ptr [eax-8]
 004A96A2    mov         ecx,dword ptr [ebp-10]
 004A96A5    mov         edx,dword ptr [ebp-0C]
 004A96A8    call        00420308
 004A96AD    inc         dword ptr [ebp-8]
 004A96B0    dec         dword ptr [ebp-14]
>004A96B3    jne         004A960E
 004A96B9    mov         eax,dword ptr [ebp+8]
 004A96BC    mov         eax,dword ptr [eax-8]
 004A96BF    mov         eax,dword ptr [eax+8]
 004A96C2    dec         eax
 004A96C3    test        eax,eax
>004A96C5    jl          004A96F5
 004A96C7    inc         eax
 004A96C8    mov         dword ptr [ebp-14],eax
 004A96CB    mov         dword ptr [ebp-8],0
 004A96D2    mov         eax,dword ptr [ebp+8]
 004A96D5    push        eax
 004A96D6    mov         eax,dword ptr [ebp+8]
 004A96D9    mov         eax,dword ptr [eax-8]
 004A96DC    mov         edx,dword ptr [ebp-8]
 004A96DF    call        TList.Get
 004A96E4    mov         dl,byte ptr [ebp-1]
 004A96E7    call        004A937C
 004A96EC    pop         ecx
 004A96ED    inc         dword ptr [ebp-8]
 004A96F0    dec         dword ptr [ebp-14]
>004A96F3    jne         004A96D2
 004A96F5    mov         esp,ebp
 004A96F7    pop         ebp
 004A96F8    ret
end;*}

//004A96FC
{*function sub_004A96FC(?:?):?;
begin
 004A96FC    push        ebp
 004A96FD    mov         ebp,esp
 004A96FF    add         esp,0FFFFFFF4
 004A9702    mov         byte ptr [ebp-1],1
 004A9706    mov         eax,dword ptr [ebp+8]
 004A9709    mov         eax,dword ptr [eax-10]
 004A970C    call        004A89F4
 004A9711    dec         eax
 004A9712    cmp         eax,0
>004A9715    jl          004A9764
 004A9717    mov         dword ptr [ebp-8],eax
 004A971A    mov         eax,dword ptr [ebp+8]
 004A971D    mov         eax,dword ptr [eax-10]
 004A9720    mov         edx,dword ptr [ebp-8]
 004A9723    call        004A89D0
 004A9728    mov         dword ptr [ebp-0C],eax
 004A972B    mov         eax,dword ptr [ebp-0C]
 004A972E    cmp         dword ptr [eax+30],0
>004A9732    jne         004A975B
 004A9734    mov         eax,dword ptr [ebp-0C]
 004A9737    test        byte ptr [eax+1C],10
>004A973B    jne         004A975B
 004A973D    mov         eax,dword ptr [ebp-0C]
 004A9740    cmp         byte ptr [eax+5B],0
>004A9744    je          004A975B
 004A9746    mov         eax,dword ptr [ebp-0C]
 004A9749    cmp         byte ptr [eax+57],0
>004A974D    je          004A975B
 004A974F    mov         eax,dword ptr [ebp-0C]
 004A9752    cmp         byte ptr [eax+22B],1
>004A9759    jne         004A9768
 004A975B    dec         dword ptr [ebp-8]
 004A975E    cmp         dword ptr [ebp-8],0FFFFFFFF
>004A9762    jne         004A971A
 004A9764    mov         byte ptr [ebp-1],0
 004A9768    mov         al,byte ptr [ebp-1]
 004A976B    mov         esp,ebp
 004A976D    pop         ebp
 004A976E    ret
end;*}

//004A9770
procedure TScreen.AlignForms(AForm:TCustomForm; var Rect:TRect);
begin
{*
 004A9770    push        ebp
 004A9771    mov         ebp,esp
 004A9773    add         esp,0FFFFFFF0
 004A9776    mov         dword ptr [ebp-4],ecx
 004A9779    mov         dword ptr [ebp-0C],edx
 004A977C    mov         dword ptr [ebp-10],eax
 004A977F    push        ebp
 004A9780    call        004A96FC
 004A9785    pop         ecx
 004A9786    test        al,al
>004A9788    je          004A97F1
 004A978A    mov         dl,1
 004A978C    mov         eax,[0041D46C];TList
 004A9791    call        TObject.Create
 004A9796    mov         dword ptr [ebp-8],eax
 004A9799    xor         eax,eax
 004A979B    push        ebp
 004A979C    push        4A97EA
 004A97A1    push        dword ptr fs:[eax]
 004A97A4    mov         dword ptr fs:[eax],esp
 004A97A7    push        ebp
 004A97A8    mov         al,1
 004A97AA    call        004A9580
 004A97AF    pop         ecx
 004A97B0    push        ebp
 004A97B1    mov         al,2
 004A97B3    call        004A9580
 004A97B8    pop         ecx
 004A97B9    push        ebp
 004A97BA    mov         al,3
 004A97BC    call        004A9580
 004A97C1    pop         ecx
 004A97C2    push        ebp
 004A97C3    mov         al,4
 004A97C5    call        004A9580
 004A97CA    pop         ecx
 004A97CB    push        ebp
 004A97CC    mov         al,5
 004A97CE    call        004A9580
 004A97D3    pop         ecx
 004A97D4    xor         eax,eax
 004A97D6    pop         edx
 004A97D7    pop         ecx
 004A97D8    pop         ecx
 004A97D9    mov         dword ptr fs:[eax],edx
 004A97DC    push        4A97F1
 004A97E1    mov         eax,dword ptr [ebp-8]
 004A97E4    call        TObject.Free
 004A97E9    ret
>004A97EA    jmp         @HandleFinally
>004A97EF    jmp         004A97E1
 004A97F1    mov         esp,ebp
 004A97F3    pop         ebp
 004A97F4    ret
*}
end;

//004A97F8
procedure sub_004A97F8(?:TScreen; ?:TCustomForm);
begin
{*
 004A97F8    push        ebp
 004A97F9    mov         ebp,esp
 004A97FB    add         esp,0FFFFFFE8
 004A97FE    mov         dword ptr [ebp-8],edx
 004A9801    mov         dword ptr [ebp-4],eax
 004A9804    mov         eax,dword ptr [ebp-4]
 004A9807    cmp         word ptr [eax+8C],0;TScreen.FAlignLevel:Word
>004A980F    je          004A981E
 004A9811    mov         eax,dword ptr [ebp-4]
 004A9814    or          word ptr [eax+8E],10;TScreen.FControlState:TControlState
>004A981C    jmp         004A9879
 004A981E    mov         eax,dword ptr [ebp-4]
 004A9821    call        004A9288
 004A9826    xor         eax,eax
 004A9828    push        ebp
 004A9829    push        4A9872
 004A982E    push        dword ptr fs:[eax]
 004A9831    mov         dword ptr fs:[eax],esp
 004A9834    push        0
 004A9836    lea         eax,[ebp-18]
 004A9839    push        eax
 004A983A    push        0
 004A983C    push        30
 004A983E    call        user32.SystemParametersInfoA
 004A9843    lea         ecx,[ebp-18]
 004A9846    mov         edx,dword ptr [ebp-8]
 004A9849    mov         eax,dword ptr [ebp-4]
 004A984C    call        TScreen.AlignForms
 004A9851    xor         eax,eax
 004A9853    pop         edx
 004A9854    pop         ecx
 004A9855    pop         ecx
 004A9856    mov         dword ptr fs:[eax],edx
 004A9859    push        4A9879
 004A985E    mov         eax,dword ptr [ebp-4]
 004A9861    and         word ptr [eax+8E],0FFFFFFEF;TScreen.FControlState:TControlState
 004A9869    mov         eax,dword ptr [ebp-4]
 004A986C    call        004A929C
 004A9871    ret
>004A9872    jmp         @HandleFinally
>004A9877    jmp         004A985E
 004A9879    mov         esp,ebp
 004A987B    pop         ebp
 004A987C    ret
*}
end;

//004A9880
procedure sub_004A9880(?:TScreen);
begin
{*
 004A9880    push        ebp
 004A9881    mov         ebp,esp
 004A9883    push        ecx
 004A9884    mov         dword ptr [ebp-4],eax
 004A9887    mov         eax,dword ptr [ebp-4]
 004A988A    add         eax,30
 004A988D    call        FreeAndNil
 004A9892    pop         ecx
 004A9893    pop         ebp
 004A9894    ret
*}
end;

//004A9898
{*procedure sub_004A9898(?:TControl; ?:?);
begin
 004A9898    push        ebp
 004A9899    mov         ebp,esp
 004A989B    add         esp,0FFFFFFF8
 004A989E    mov         dword ptr [ebp-8],edx
 004A98A1    mov         dword ptr [ebp-4],eax
 004A98A4    cmp         dword ptr [ebp-4],0
>004A98A8    je          004A98DA
 004A98AA    mov         eax,dword ptr [ebp-4]
 004A98AD    cmp         dword ptr [eax+80],0
>004A98B4    jne         004A98C1
 004A98B6    mov         eax,dword ptr [ebp-4]
 004A98B9    mov         eax,dword ptr [eax+30]
 004A98BC    mov         dword ptr [ebp-4],eax
>004A98BF    jmp         004A98D4
 004A98C1    mov         eax,dword ptr [ebp-8]
 004A98C4    mov         edx,dword ptr [ebp-4]
 004A98C7    mov         edx,dword ptr [edx+80]
 004A98CD    call        @LStrAsg
>004A98D2    jmp         004A98E2
 004A98D4    cmp         dword ptr [ebp-4],0
>004A98D8    jne         004A98AA
 004A98DA    mov         eax,dword ptr [ebp-8]
 004A98DD    call        @LStrClr
 004A98E2    pop         ecx
 004A98E3    pop         ecx
 004A98E4    pop         ebp
 004A98E5    ret
end;*}

//004A98E8
{*function sub_004A98E8(?:?):?;
begin
 004A98E8    push        ebp
 004A98E9    mov         ebp,esp
 004A98EB    add         esp,0FFFFFFF8
 004A98EE    mov         dword ptr [ebp-4],eax
 004A98F1    mov         eax,dword ptr [ebp-4]
 004A98F4    mov         dword ptr [ebp-8],eax
>004A98F7    jmp         004A9902
 004A98F9    mov         eax,dword ptr [ebp-8]
 004A98FC    mov         eax,dword ptr [eax+30]
 004A98FF    mov         dword ptr [ebp-8],eax
 004A9902    cmp         dword ptr [ebp-8],0
>004A9906    je          004A9914
 004A9908    mov         eax,dword ptr [ebp-8]
 004A990B    cmp         byte ptr [eax+99],0
>004A9912    je          004A98F9
 004A9914    cmp         dword ptr [ebp-8],0
>004A9918    je          004A9928
 004A991A    mov         eax,dword ptr [ebp-8]
 004A991D    test        byte ptr [eax+1C],10
>004A9921    je          004A9928
 004A9923    xor         eax,eax
 004A9925    mov         dword ptr [ebp-8],eax
 004A9928    mov         eax,dword ptr [ebp-8]
 004A992B    pop         ecx
 004A992C    pop         ecx
 004A992D    pop         ebp
 004A992E    ret
end;*}

//004A9930
procedure HintTimerProc(Wnd:HWND; Msg:Longint; TimerID:Longint; SysTime:Longint); stdcall;
begin
{*
 004A9930    push        ebp
 004A9931    mov         ebp,esp
 004A9933    push        ebx
 004A9934    push        esi
 004A9935    push        edi
 004A9936    cmp         dword ptr ds:[571E3C],0;Application:TApplication
>004A993D    je          004A997B
 004A993F    xor         eax,eax
 004A9941    push        ebp
 004A9942    push        4A9961
 004A9947    push        dword ptr fs:[eax]
 004A994A    mov         dword ptr fs:[eax],esp
 004A994D    mov         eax,[00571E3C];Application:TApplication
 004A9952    call        TApplication.HintTimerExpired
 004A9957    xor         eax,eax
 004A9959    pop         edx
 004A995A    pop         ecx
 004A995B    pop         ecx
 004A995C    mov         dword ptr fs:[eax],edx
>004A995F    jmp         004A997B
>004A9961    jmp         @HandleAnyException
 004A9966    mov         edx,dword ptr ds:[571E3C];Application:TApplication
 004A996C    mov         eax,[00571E3C];Application:TApplication
 004A9971    call        TApplication.HandleException
 004A9976    call        @DoneExcept
 004A997B    pop         edi
 004A997C    pop         esi
 004A997D    pop         ebx
 004A997E    pop         ebp
 004A997F    ret         10
*}
end;

//004A99E4
{*function sub_004A99E4(?:?; ?:?; ?:?):?;
begin
 004A99E4    push        ebp
 004A99E5    mov         ebp,esp
 004A99E7    push        ecx
 004A99E8    mov         eax,dword ptr [ebp+10]
 004A99EB    push        eax
 004A99EC    mov         eax,dword ptr [ebp+0C]
 004A99EF    push        eax
 004A99F0    mov         eax,dword ptr [ebp+8]
 004A99F3    push        eax
 004A99F4    mov         eax,[00571E54];0x0 HintHook:HHOOK
 004A99F9    push        eax
 004A99FA    call        user32.CallNextHookEx
 004A99FF    mov         dword ptr [ebp-4],eax
 004A9A02    cmp         dword ptr [ebp+8],0
>004A9A06    jl          004A9A1E
 004A9A08    cmp         dword ptr ds:[571E3C],0;Application:TApplication
>004A9A0F    je          004A9A1E
 004A9A11    mov         edx,dword ptr [ebp+10]
 004A9A14    mov         eax,[00571E3C];0x0 Application:TApplication
 004A9A19    call        004AB390
 004A9A1E    mov         eax,dword ptr [ebp-4]
 004A9A21    pop         ecx
 004A9A22    pop         ebp
 004A9A23    ret         0C
end;*}

//004A9A28
procedure sub_004A9A28;
begin
{*
 004A9A28    push        ebp
 004A9A29    mov         ebp,esp
 004A9A2B    push        ecx
 004A9A2C    mov         eax,[00571E3C];0x0 Application:TApplication
 004A9A31    cmp         byte ptr [eax+0A5],0;TApplication.FRunning:Boolean
>004A9A38    jne         004A9A9F
 004A9A3A    cmp         dword ptr ds:[571E54],0;HintHook:HHOOK
>004A9A41    jne         004A9A5D
 004A9A43    call        kernel32.GetCurrentThreadId
 004A9A48    push        eax
 004A9A49    push        0
 004A9A4B    mov         eax,4A99E4;sub_004A99E4
 004A9A50    push        eax
 004A9A51    push        3
 004A9A53    call        user32.SetWindowsHookExA
 004A9A58    mov         [00571E54],eax;HintHook:HHOOK
 004A9A5D    cmp         dword ptr ds:[571E50],0;HintDoneEvent:THandle
>004A9A64    jne         004A9A78
 004A9A66    push        0
 004A9A68    push        0
 004A9A6A    push        0
 004A9A6C    push        0
 004A9A6E    call        kernel32.CreateEventA
 004A9A73    mov         [00571E50],eax;HintDoneEvent:THandle
 004A9A78    cmp         dword ptr ds:[571E58],0;HintThread:THandle
>004A9A7F    jne         004A9A9F
 004A9A81    lea         eax,[ebp-4]
 004A9A84    push        eax
 004A9A85    push        0
 004A9A87    push        0
 004A9A89    push        4A9984
 004A9A8E    push        3E8
 004A9A93    push        0
 004A9A95    call        kernel32.CreateThread
 004A9A9A    mov         [00571E58],eax;HintThread:THandle
 004A9A9F    pop         ecx
 004A9AA0    pop         ebp
 004A9AA1    ret
*}
end;

//004A9AA4
procedure UnhookHintHooks;
begin
{*
 004A9AA4    cmp         dword ptr ds:[571E54],0;HintHook:HHOOK
>004A9AAB    je          004A9AB8
 004A9AAD    mov         eax,[00571E54];HintHook:HHOOK
 004A9AB2    push        eax
 004A9AB3    call        user32.UnhookWindowsHookEx
 004A9AB8    xor         eax,eax
 004A9ABA    mov         [00571E54],eax;HintHook:HHOOK
 004A9ABF    cmp         dword ptr ds:[571E58],0;HintThread:THandle
>004A9AC6    je          004A9AFF
 004A9AC8    mov         eax,[00571E50];HintDoneEvent:THandle
 004A9ACD    push        eax
 004A9ACE    call        kernel32.SetEvent
 004A9AD3    call        kernel32.GetCurrentThreadId
 004A9AD8    cmp         eax,dword ptr ds:[571E4C];HintThreadID:DWORD
>004A9ADE    je          004A9AED
 004A9AE0    push        0FF
 004A9AE2    mov         eax,[00571E58];HintThread:THandle
 004A9AE7    push        eax
 004A9AE8    call        kernel32.WaitForSingleObject
 004A9AED    mov         eax,[00571E58];HintThread:THandle
 004A9AF2    push        eax
 004A9AF3    call        kernel32.CloseHandle
 004A9AF8    xor         eax,eax
 004A9AFA    mov         [00571E58],eax;HintThread:THandle
 004A9AFF    ret
*}
end;

//004A9B00
{*function sub_004A9B00:?;
begin
 004A9B00    push        ebp
 004A9B01    mov         ebp,esp
 004A9B03    add         esp,0FFFFFFF4
 004A9B06    mov         dword ptr [ebp-9],8
 004A9B0D    push        0
 004A9B0F    lea         eax,[ebp-9]
 004A9B12    push        eax
 004A9B13    push        8
 004A9B15    push        48
 004A9B17    call        user32.SystemParametersInfoA
 004A9B1C    test        eax,eax
>004A9B1E    je          004A9B2A
 004A9B20    cmp         dword ptr [ebp-5],0
 004A9B24    setne       byte ptr [ebp-1]
>004A9B28    jmp         004A9B2E
 004A9B2A    mov         byte ptr [ebp-1],0
 004A9B2E    mov         al,byte ptr [ebp-1]
 004A9B31    mov         esp,ebp
 004A9B33    pop         ebp
 004A9B34    ret
end;*}

//004A9B38
{*procedure sub_004A9B38(?:?);
begin
 004A9B38    push        ebp
 004A9B39    mov         ebp,esp
 004A9B3B    add         esp,0FFFFFFF4
 004A9B3E    mov         byte ptr [ebp-1],al
 004A9B41    mov         dword ptr [ebp-9],8
 004A9B48    cmp         byte ptr [ebp-1],1
 004A9B4C    cmc
 004A9B4D    sbb         eax,eax
 004A9B4F    mov         dword ptr [ebp-5],eax
 004A9B52    push        0
 004A9B54    lea         eax,[ebp-9]
 004A9B57    push        eax
 004A9B58    push        8
 004A9B5A    push        49
 004A9B5C    call        user32.SystemParametersInfoA
 004A9B61    mov         esp,ebp
 004A9B63    pop         ebp
 004A9B64    ret
end;*}

//004A9B68
{*procedure sub_004A9B68(?:HWND; ?:?);
begin
 004A9B68    push        ebp
 004A9B69    mov         ebp,esp
 004A9B6B    add         esp,0FFFFFFF4
 004A9B6E    mov         dword ptr [ebp-8],edx
 004A9B71    mov         dword ptr [ebp-4],eax
 004A9B74    call        004A9B00
 004A9B79    mov         byte ptr [ebp-9],al
 004A9B7C    cmp         byte ptr [ebp-9],0
>004A9B80    je          004A9B89
 004A9B82    xor         eax,eax
 004A9B84    call        004A9B38
 004A9B89    mov         eax,dword ptr [ebp-8]
 004A9B8C    push        eax
 004A9B8D    mov         eax,dword ptr [ebp-4]
 004A9B90    push        eax
 004A9B91    call        user32.ShowWindow
 004A9B96    cmp         byte ptr [ebp-9],0
>004A9B9A    je          004A9BA3
 004A9B9C    mov         al,1
 004A9B9E    call        004A9B38
 004A9BA3    mov         esp,ebp
 004A9BA5    pop         ebp
 004A9BA6    ret
end;*}

//004A9BA8
{*function sub_004A9BA8(?:TScreen; ?:?; ?:?):?;
begin
 004A9BA8    push        ebp
 004A9BA9    mov         ebp,esp
 004A9BAB    add         esp,0FFFFFFF0
 004A9BAE    mov         byte ptr [ebp-9],cl
 004A9BB1    mov         dword ptr [ebp-8],edx
 004A9BB4    mov         dword ptr [ebp-4],eax
 004A9BB7    xor         eax,eax
 004A9BB9    mov         al,byte ptr [ebp-9]
 004A9BBC    mov         eax,dword ptr [eax*4+56CAA4]
 004A9BC3    push        eax
 004A9BC4    mov         eax,dword ptr [ebp-8]
 004A9BC7    push        dword ptr [eax+4]
 004A9BCA    push        dword ptr [eax]
 004A9BCC    mov         eax,[0056E4D0];^gvar_00571B38
 004A9BD1    mov         eax,dword ptr [eax]
 004A9BD3    call        eax
 004A9BD5    mov         edx,eax
 004A9BD7    mov         eax,dword ptr [ebp-4]
 004A9BDA    call        004A8C80
 004A9BDF    mov         dword ptr [ebp-10],eax
 004A9BE2    mov         eax,dword ptr [ebp-10]
 004A9BE5    mov         esp,ebp
 004A9BE7    pop         ebp
 004A9BE8    ret
end;*}

//004A9BEC
{*function sub_004A9BEC(?:TScreen; ?:TPoint; ?:?):?;
begin
 004A9BEC    push        ebp
 004A9BED    mov         ebp,esp
 004A9BEF    add         esp,0FFFFFFF0
 004A9BF2    mov         byte ptr [ebp-9],cl
 004A9BF5    mov         dword ptr [ebp-8],edx
 004A9BF8    mov         dword ptr [ebp-4],eax
 004A9BFB    xor         eax,eax
 004A9BFD    mov         al,byte ptr [ebp-9]
 004A9C00    mov         eax,dword ptr [eax*4+56CAA4]
 004A9C07    push        eax
 004A9C08    mov         eax,dword ptr [ebp-8]
 004A9C0B    push        eax
 004A9C0C    mov         eax,[0056DFE8];^gvar_00571B34
 004A9C11    mov         eax,dword ptr [eax]
 004A9C13    call        eax
 004A9C15    mov         edx,eax
 004A9C17    mov         eax,dword ptr [ebp-4]
 004A9C1A    call        004A8C80
 004A9C1F    mov         dword ptr [ebp-10],eax
 004A9C22    mov         eax,dword ptr [ebp-10]
 004A9C25    mov         esp,ebp
 004A9C27    pop         ebp
 004A9C28    ret
end;*}

//004A9C2C
constructor _NF__A5A;
begin
{*
 004A9C2C    push        esp
 004A9C2D    inc         ecx
>004A9C2E    jo          004A9CA0
 004A9C30    ins         byte ptr [edi],dl
 004A9C31    imul        esp,dword ptr [ebx+61],6E6F6974
 004A9C38    add         byte ptr [eax],al
 004A9C3A    add         byte ptr [eax],al
 004A9C3C    push        ebp
 004A9C3D    mov         ebp,esp
 004A9C3F    add         esp,0FFFFFEF0
 004A9C45    test        dl,dl
>004A9C47    je          004A9C51
 004A9C49    add         esp,0FFFFFFF0
 004A9C4C    call        @ClassCreate
 004A9C51    mov         dword ptr [ebp-0C],ecx
 004A9C54    mov         byte ptr [ebp-5],dl
 004A9C57    mov         dword ptr [ebp-4],eax
 004A9C5A    mov         ecx,dword ptr [ebp-0C]
 004A9C5D    xor         edx,edx
 004A9C5F    mov         eax,dword ptr [ebp-4]
 004A9C62    call        0042A1B0
 004A9C67    mov         eax,[0056E2EC];^gvar_0056BC98
 004A9C6C    cmp         word ptr [eax+2],0
>004A9C71    jne         004A9C84
 004A9C73    mov         eax,[0056E2EC];^gvar_0056BC98
 004A9C78    mov         edx,dword ptr [ebp-4]
 004A9C7B    mov         dword ptr [eax+4],edx
 004A9C7E    mov         dword ptr [eax],4AB854;TApplication.HandleException
 004A9C84    mov         eax,[0056E404];^gvar_0056BCA0
 004A9C89    cmp         word ptr [eax+2],0
>004A9C8E    jne         004A9CA1
 004A9C90    mov         eax,[0056E404];^gvar_0056BCA0
 004A9C95    mov         edx,dword ptr [ebp-4]
 004A9C98    mov         dword ptr [eax+4],edx
 004A9C9B    mov         dword ptr [eax],4ABA5C;sub_004ABA5C
 004A9CA1    mov         eax,dword ptr [ebp-4]
 004A9CA4    mov         byte ptr [eax+34],0;TApplication.FBiDiMode:TBiDiMode
 004A9CA8    mov         dl,1
 004A9CAA    mov         eax,[0041D46C];TList
 004A9CAF    call        TObject.Create;TList.Create
 004A9CB4    mov         edx,dword ptr [ebp-4]
 004A9CB7    mov         dword ptr [edx+90],eax;TApplication.FTopMostList:TList
 004A9CBD    mov         dl,1
 004A9CBF    mov         eax,[0041D46C];TList
 004A9CC4    call        TObject.Create;TList.Create
 004A9CC9    mov         edx,dword ptr [ebp-4]
 004A9CCC    mov         dword ptr [edx+0A8],eax;TApplication.FWindowHooks:TList
 004A9CD2    mov         eax,dword ptr [ebp-4]
 004A9CD5    xor         edx,edx
 004A9CD7    mov         dword ptr [eax+60],edx;TApplication.FHintControl:TControl
 004A9CDA    mov         eax,dword ptr [ebp-4]
 004A9CDD    xor         edx,edx
 004A9CDF    mov         dword ptr [eax+84],edx;TApplication.FHintWindow:THintWindow
 004A9CE5    mov         eax,dword ptr [ebp-4]
 004A9CE8    mov         dword ptr [eax+5C],0FF000018;TApplication.FHintColor:TColor
 004A9CEF    mov         eax,dword ptr [ebp-4]
 004A9CF2    mov         dword ptr [eax+78],1F4;TApplication.FHintPause:Integer
 004A9CF9    mov         eax,dword ptr [ebp-4]
 004A9CFC    mov         byte ptr [eax+7C],1;TApplication.FHintShortCuts:Boolean
 004A9D00    mov         eax,dword ptr [ebp-4]
 004A9D03    xor         edx,edx
 004A9D05    mov         dword ptr [eax+80],edx;TApplication.FHintShortPause:Integer
 004A9D0B    mov         eax,dword ptr [ebp-4]
 004A9D0E    mov         dword ptr [eax+74],9C4;TApplication.FHintHidePause:Integer
 004A9D15    mov         eax,dword ptr [ebp-4]
 004A9D18    mov         byte ptr [eax+88],0;TApplication.FShowHint:Boolean
 004A9D1F    mov         eax,dword ptr [ebp-4]
 004A9D22    mov         byte ptr [eax+9D],1;TApplication.FActive:Boolean
 004A9D29    mov         eax,dword ptr [ebp-4]
 004A9D2C    mov         byte ptr [eax+0B4],1;TApplication.FAutoDragDocking:Boolean
 004A9D33    mov         dl,1
 004A9D35    mov         eax,[0042D08C];TIcon
 004A9D3A    call        TIcon.Create;TIcon.Create
 004A9D3F    mov         edx,dword ptr [ebp-4]
 004A9D42    mov         dword ptr [edx+98],eax;TApplication.FIcon:TIcon
 004A9D48    push        4A9E84;'MAINICON'
 004A9D4D    mov         eax,[0056E19C];^MainInstance:Cardinal
 004A9D52    mov         eax,dword ptr [eax]
 004A9D54    push        eax
 004A9D55    call        user32.LoadIconA
 004A9D5A    mov         edx,eax
 004A9D5C    mov         eax,dword ptr [ebp-4]
 004A9D5F    mov         eax,dword ptr [eax+98];TApplication.FIcon:TIcon
 004A9D65    call        00436A24
 004A9D6A    mov         eax,dword ptr [ebp-4]
 004A9D6D    mov         eax,dword ptr [eax+98];TApplication.FIcon:TIcon
 004A9D73    mov         edx,dword ptr [ebp-4]
 004A9D76    mov         dword ptr [eax+14],edx;TIcon.?f14:TCoolBand
 004A9D79    mov         dword ptr [eax+10],4AC1E8;TIcon.FOnChange:TNotifyEvent sub_004AC1E8
 004A9D80    push        100
 004A9D85    lea         eax,[ebp-110]
 004A9D8B    push        eax
 004A9D8C    mov         eax,[0056E19C];^MainInstance:Cardinal
 004A9D91    mov         eax,dword ptr [eax]
 004A9D93    push        eax
 004A9D94    call        kernel32.GetModuleFileNameA
 004A9D99    lea         eax,[ebp-110]
 004A9D9F    push        eax
 004A9DA0    lea         eax,[ebp-110]
 004A9DA6    push        eax
 004A9DA7    call        user32.OemToCharA
 004A9DAC    lea         eax,[ebp-110]
 004A9DB2    mov         dl,5C
 004A9DB4    call        0041185C
 004A9DB9    mov         dword ptr [ebp-10],eax
 004A9DBC    cmp         dword ptr [ebp-10],0
>004A9DC0    je          004A9DD1
 004A9DC2    mov         edx,dword ptr [ebp-10]
 004A9DC5    inc         edx
 004A9DC6    lea         eax,[ebp-110]
 004A9DCC    call        StrCopy
 004A9DD1    lea         eax,[ebp-110]
 004A9DD7    mov         dl,2E
 004A9DD9    call        004118AC
 004A9DDE    mov         dword ptr [ebp-10],eax
 004A9DE1    cmp         dword ptr [ebp-10],0
>004A9DE5    je          004A9DED
 004A9DE7    mov         eax,dword ptr [ebp-10]
 004A9DEA    mov         byte ptr [eax],0
 004A9DED    lea         eax,[ebp-110]
 004A9DF3    push        eax
 004A9DF4    call        user32.CharNextA
 004A9DF9    push        eax
 004A9DFA    call        user32.CharLowerA
 004A9DFF    mov         eax,dword ptr [ebp-4]
 004A9E02    add         eax,8C;TApplication.FTitle:String
 004A9E07    lea         edx,[ebp-110]
 004A9E0D    mov         ecx,100
 004A9E12    call        @LStrFromArray
 004A9E17    mov         eax,[0056DFD0];^IsLibrary:Boolean
 004A9E1C    cmp         byte ptr [eax],0
>004A9E1F    jne         004A9E29
 004A9E21    mov         eax,dword ptr [ebp-4]
 004A9E24    call        004A9FF0
 004A9E29    mov         eax,dword ptr [ebp-4]
 004A9E2C    mov         byte ptr [eax+59],1;TApplication.FUpdateFormatSettings:Boolean
 004A9E30    mov         eax,dword ptr [ebp-4]
 004A9E33    mov         byte ptr [eax+5A],1;TApplication.FUpdateMetricSettings:Boolean
 004A9E37    mov         eax,dword ptr [ebp-4]
 004A9E3A    mov         byte ptr [eax+5B],1;TApplication.FShowMainForm:Boolean
 004A9E3E    mov         eax,dword ptr [ebp-4]
 004A9E41    mov         byte ptr [eax+9E],1;TApplication.FAllowTesting:Boolean
 004A9E48    mov         eax,dword ptr [ebp-4]
 004A9E4B    xor         edx,edx
 004A9E4D    mov         dword ptr [eax+0A0],edx;TApplication.FTestLib:THandle
 004A9E53    mov         eax,dword ptr [ebp-4]
 004A9E56    call        004AC410
 004A9E5B    mov         eax,dword ptr [ebp-4]
 004A9E5E    call        004ACF84
 004A9E63    mov         eax,dword ptr [ebp-4]
 004A9E66    cmp         byte ptr [ebp-5],0
>004A9E6A    je          004A9E7B
 004A9E6C    call        @AfterConstruction
 004A9E71    pop         dword ptr fs:[0]
 004A9E78    add         esp,0C
 004A9E7B    mov         eax,dword ptr [ebp-4]
 004A9E7E    mov         esp,ebp
 004A9E80    pop         ebp
 004A9E81    ret
*}
end;

//004A9C3C
constructor sub_004A9C3C;
begin
{*
 004A9C3C    push        ebp
 004A9C3D    mov         ebp,esp
 004A9C3F    add         esp,0FFFFFEF0
 004A9C45    test        dl,dl
>004A9C47    je          004A9C51
 004A9C49    add         esp,0FFFFFFF0
 004A9C4C    call        @ClassCreate
 004A9C51    mov         dword ptr [ebp-0C],ecx
 004A9C54    mov         byte ptr [ebp-5],dl
 004A9C57    mov         dword ptr [ebp-4],eax
 004A9C5A    mov         ecx,dword ptr [ebp-0C]
 004A9C5D    xor         edx,edx
 004A9C5F    mov         eax,dword ptr [ebp-4]
 004A9C62    call        0042A1B0
 004A9C67    mov         eax,[0056E2EC];^gvar_0056BC98
 004A9C6C    cmp         word ptr [eax+2],0
>004A9C71    jne         004A9C84
 004A9C73    mov         eax,[0056E2EC];^gvar_0056BC98
 004A9C78    mov         edx,dword ptr [ebp-4]
 004A9C7B    mov         dword ptr [eax+4],edx
 004A9C7E    mov         dword ptr [eax],4AB854;TApplication.HandleException
 004A9C84    mov         eax,[0056E404];^gvar_0056BCA0
 004A9C89    cmp         word ptr [eax+2],0
>004A9C8E    jne         004A9CA1
 004A9C90    mov         eax,[0056E404];^gvar_0056BCA0
 004A9C95    mov         edx,dword ptr [ebp-4]
 004A9C98    mov         dword ptr [eax+4],edx
 004A9C9B    mov         dword ptr [eax],4ABA5C;sub_004ABA5C
 004A9CA1    mov         eax,dword ptr [ebp-4]
 004A9CA4    mov         byte ptr [eax+34],0;TApplication.FBiDiMode:TBiDiMode
 004A9CA8    mov         dl,1
 004A9CAA    mov         eax,[0041D46C];TList
 004A9CAF    call        TObject.Create;TList.Create
 004A9CB4    mov         edx,dword ptr [ebp-4]
 004A9CB7    mov         dword ptr [edx+90],eax;TApplication.FTopMostList:TList
 004A9CBD    mov         dl,1
 004A9CBF    mov         eax,[0041D46C];TList
 004A9CC4    call        TObject.Create;TList.Create
 004A9CC9    mov         edx,dword ptr [ebp-4]
 004A9CCC    mov         dword ptr [edx+0A8],eax;TApplication.FWindowHooks:TList
 004A9CD2    mov         eax,dword ptr [ebp-4]
 004A9CD5    xor         edx,edx
 004A9CD7    mov         dword ptr [eax+60],edx;TApplication.FHintControl:TControl
 004A9CDA    mov         eax,dword ptr [ebp-4]
 004A9CDD    xor         edx,edx
 004A9CDF    mov         dword ptr [eax+84],edx;TApplication.FHintWindow:THintWindow
 004A9CE5    mov         eax,dword ptr [ebp-4]
 004A9CE8    mov         dword ptr [eax+5C],0FF000018;TApplication.FHintColor:TColor
 004A9CEF    mov         eax,dword ptr [ebp-4]
 004A9CF2    mov         dword ptr [eax+78],1F4;TApplication.FHintPause:Integer
 004A9CF9    mov         eax,dword ptr [ebp-4]
 004A9CFC    mov         byte ptr [eax+7C],1;TApplication.FHintShortCuts:Boolean
 004A9D00    mov         eax,dword ptr [ebp-4]
 004A9D03    xor         edx,edx
 004A9D05    mov         dword ptr [eax+80],edx;TApplication.FHintShortPause:Integer
 004A9D0B    mov         eax,dword ptr [ebp-4]
 004A9D0E    mov         dword ptr [eax+74],9C4;TApplication.FHintHidePause:Integer
 004A9D15    mov         eax,dword ptr [ebp-4]
 004A9D18    mov         byte ptr [eax+88],0;TApplication.FShowHint:Boolean
 004A9D1F    mov         eax,dword ptr [ebp-4]
 004A9D22    mov         byte ptr [eax+9D],1;TApplication.FActive:Boolean
 004A9D29    mov         eax,dword ptr [ebp-4]
 004A9D2C    mov         byte ptr [eax+0B4],1;TApplication.FAutoDragDocking:Boolean
 004A9D33    mov         dl,1
 004A9D35    mov         eax,[0042D08C];TIcon
 004A9D3A    call        TIcon.Create;TIcon.Create
 004A9D3F    mov         edx,dword ptr [ebp-4]
 004A9D42    mov         dword ptr [edx+98],eax;TApplication.FIcon:TIcon
 004A9D48    push        4A9E84;'MAINICON'
 004A9D4D    mov         eax,[0056E19C];^MainInstance:Cardinal
 004A9D52    mov         eax,dword ptr [eax]
 004A9D54    push        eax
 004A9D55    call        user32.LoadIconA
 004A9D5A    mov         edx,eax
 004A9D5C    mov         eax,dword ptr [ebp-4]
 004A9D5F    mov         eax,dword ptr [eax+98];TApplication.FIcon:TIcon
 004A9D65    call        00436A24
 004A9D6A    mov         eax,dword ptr [ebp-4]
 004A9D6D    mov         eax,dword ptr [eax+98];TApplication.FIcon:TIcon
 004A9D73    mov         edx,dword ptr [ebp-4]
 004A9D76    mov         dword ptr [eax+14],edx;TIcon.?f14:TCoolBand
 004A9D79    mov         dword ptr [eax+10],4AC1E8;TIcon.FOnChange:TNotifyEvent sub_004AC1E8
 004A9D80    push        100
 004A9D85    lea         eax,[ebp-110]
 004A9D8B    push        eax
 004A9D8C    mov         eax,[0056E19C];^MainInstance:Cardinal
 004A9D91    mov         eax,dword ptr [eax]
 004A9D93    push        eax
 004A9D94    call        kernel32.GetModuleFileNameA
 004A9D99    lea         eax,[ebp-110]
 004A9D9F    push        eax
 004A9DA0    lea         eax,[ebp-110]
 004A9DA6    push        eax
 004A9DA7    call        user32.OemToCharA
 004A9DAC    lea         eax,[ebp-110]
 004A9DB2    mov         dl,5C
 004A9DB4    call        0041185C
 004A9DB9    mov         dword ptr [ebp-10],eax
 004A9DBC    cmp         dword ptr [ebp-10],0
>004A9DC0    je          004A9DD1
 004A9DC2    mov         edx,dword ptr [ebp-10]
 004A9DC5    inc         edx
 004A9DC6    lea         eax,[ebp-110]
 004A9DCC    call        StrCopy
 004A9DD1    lea         eax,[ebp-110]
 004A9DD7    mov         dl,2E
 004A9DD9    call        004118AC
 004A9DDE    mov         dword ptr [ebp-10],eax
 004A9DE1    cmp         dword ptr [ebp-10],0
>004A9DE5    je          004A9DED
 004A9DE7    mov         eax,dword ptr [ebp-10]
 004A9DEA    mov         byte ptr [eax],0
 004A9DED    lea         eax,[ebp-110]
 004A9DF3    push        eax
 004A9DF4    call        user32.CharNextA
 004A9DF9    push        eax
 004A9DFA    call        user32.CharLowerA
 004A9DFF    mov         eax,dword ptr [ebp-4]
 004A9E02    add         eax,8C;TApplication.FTitle:String
 004A9E07    lea         edx,[ebp-110]
 004A9E0D    mov         ecx,100
 004A9E12    call        @LStrFromArray
 004A9E17    mov         eax,[0056DFD0];^IsLibrary:Boolean
 004A9E1C    cmp         byte ptr [eax],0
>004A9E1F    jne         004A9E29
 004A9E21    mov         eax,dword ptr [ebp-4]
 004A9E24    call        004A9FF0
 004A9E29    mov         eax,dword ptr [ebp-4]
 004A9E2C    mov         byte ptr [eax+59],1;TApplication.FUpdateFormatSettings:Boolean
 004A9E30    mov         eax,dword ptr [ebp-4]
 004A9E33    mov         byte ptr [eax+5A],1;TApplication.FUpdateMetricSettings:Boolean
 004A9E37    mov         eax,dword ptr [ebp-4]
 004A9E3A    mov         byte ptr [eax+5B],1;TApplication.FShowMainForm:Boolean
 004A9E3E    mov         eax,dword ptr [ebp-4]
 004A9E41    mov         byte ptr [eax+9E],1;TApplication.FAllowTesting:Boolean
 004A9E48    mov         eax,dword ptr [ebp-4]
 004A9E4B    xor         edx,edx
 004A9E4D    mov         dword ptr [eax+0A0],edx;TApplication.FTestLib:THandle
 004A9E53    mov         eax,dword ptr [ebp-4]
 004A9E56    call        004AC410
 004A9E5B    mov         eax,dword ptr [ebp-4]
 004A9E5E    call        004ACF84
 004A9E63    mov         eax,dword ptr [ebp-4]
 004A9E66    cmp         byte ptr [ebp-5],0
>004A9E6A    je          004A9E7B
 004A9E6C    call        @AfterConstruction
 004A9E71    pop         dword ptr fs:[0]
 004A9E78    add         esp,0C
 004A9E7B    mov         eax,dword ptr [ebp-4]
 004A9E7E    mov         esp,ebp
 004A9E80    pop         ebp
 004A9E81    ret
*}
end;

//004A9E90
destructor TApplication.Destroy;
begin
{*
 004A9E90    push        ebp
 004A9E91    mov         ebp,esp
 004A9E93    add         esp,0FFFFFFE8
 004A9E96    call        @BeforeDestruction
 004A9E9B    mov         byte ptr [ebp-5],dl
 004A9E9E    mov         dword ptr [ebp-4],eax
 004A9EA1    mov         eax,dword ptr [ebp-4]
 004A9EA4    call        004ACFA0
 004A9EA9    mov         eax,dword ptr [ebp-4]
 004A9EAC    mov         dword ptr [ebp-0C],eax
 004A9EAF    mov         dword ptr [ebp-10],4AB854;TApplication.HandleException
 004A9EB6    mov         eax,[0056E2EC];^gvar_0056BC98
 004A9EBB    mov         eax,dword ptr [eax]
 004A9EBD    cmp         eax,dword ptr [ebp-10]
>004A9EC0    jne         004A9ECE
 004A9EC2    mov         eax,[0056E2EC];^gvar_0056BC98
 004A9EC7    xor         edx,edx
 004A9EC9    mov         dword ptr [eax],edx
 004A9ECB    mov         dword ptr [eax+4],edx
 004A9ECE    mov         eax,dword ptr [ebp-4]
 004A9ED1    mov         dword ptr [ebp-14],eax
 004A9ED4    mov         dword ptr [ebp-18],4ABA5C;sub_004ABA5C
 004A9EDB    mov         eax,[0056E404];^gvar_0056BCA0
 004A9EE0    mov         eax,dword ptr [eax]
 004A9EE2    cmp         eax,dword ptr [ebp-18]
>004A9EE5    jne         004A9EF3
 004A9EE7    mov         eax,[0056E404];^gvar_0056BCA0
 004A9EEC    xor         edx,edx
 004A9EEE    mov         dword ptr [eax],edx
 004A9EF0    mov         dword ptr [eax+4],edx
 004A9EF3    mov         eax,dword ptr [ebp-4]
 004A9EF6    cmp         dword ptr [eax+0A0],0
>004A9EFD    je          004A9F0E
 004A9EFF    mov         eax,dword ptr [ebp-4]
 004A9F02    mov         eax,dword ptr [eax+0A0]
 004A9F08    push        eax
 004A9F09    call        kernel32.FreeLibrary
 004A9F0E    mov         eax,dword ptr [ebp-4]
 004A9F11    mov         byte ptr [eax+9D],0
 004A9F18    mov         eax,dword ptr [ebp-4]
 004A9F1B    call        004AC6B0
 004A9F20    xor         edx,edx
 004A9F22    mov         eax,dword ptr [ebp-4]
 004A9F25    call        004ABED0
 004A9F2A    mov         dl,byte ptr [ebp-5]
 004A9F2D    and         dl,0FC
 004A9F30    mov         eax,dword ptr [ebp-4]
 004A9F33    call        TComponent.Destroy
 004A9F38    mov         eax,dword ptr [ebp-4]
 004A9F3B    push        eax
 004A9F3C    push        4AA554;sub_004AA554
 004A9F41    mov         eax,dword ptr [ebp-4]
 004A9F44    call        004AB5D8
 004A9F49    mov         eax,dword ptr [ebp-4]
 004A9F4C    cmp         dword ptr [eax+30],0
>004A9F50    je          004A9F89
 004A9F52    mov         eax,dword ptr [ebp-4]
 004A9F55    cmp         byte ptr [eax+0A4],0
>004A9F5C    je          004A9F89
 004A9F5E    mov         eax,[0056E264];^NewStyleControls:Boolean
 004A9F63    cmp         byte ptr [eax],0
>004A9F66    je          004A9F7D
 004A9F68    push        0
 004A9F6A    push        1
 004A9F6C    push        80
 004A9F71    mov         eax,dword ptr [ebp-4]
 004A9F74    mov         eax,dword ptr [eax+30]
 004A9F77    push        eax
 004A9F78    call        user32.SendMessageA
 004A9F7D    mov         eax,dword ptr [ebp-4]
 004A9F80    mov         eax,dword ptr [eax+30]
 004A9F83    push        eax
 004A9F84    call        user32.DestroyWindow
 004A9F89    mov         eax,dword ptr [ebp-4]
 004A9F8C    cmp         dword ptr [eax+4C],0
>004A9F90    je          004A9F9D
 004A9F92    mov         eax,dword ptr [ebp-4]
 004A9F95    add         eax,4C
 004A9F98    call        @IntfClear
 004A9F9D    mov         eax,dword ptr [ebp-4]
 004A9FA0    cmp         dword ptr [eax+40],0
>004A9FA4    je          004A9FB1
 004A9FA6    mov         eax,dword ptr [ebp-4]
 004A9FA9    mov         eax,dword ptr [eax+40]
 004A9FAC    call        0042BA8C
 004A9FB1    mov         eax,dword ptr [ebp-4]
 004A9FB4    mov         eax,dword ptr [eax+0A8]
 004A9FBA    call        TObject.Free
 004A9FBF    mov         eax,dword ptr [ebp-4]
 004A9FC2    mov         eax,dword ptr [eax+90]
 004A9FC8    call        TObject.Free
 004A9FCD    mov         eax,dword ptr [ebp-4]
 004A9FD0    mov         eax,dword ptr [eax+98]
 004A9FD6    call        TObject.Free
 004A9FDB    cmp         byte ptr [ebp-5],0
>004A9FDF    jle         004A9FE9
 004A9FE1    mov         eax,dword ptr [ebp-4]
 004A9FE4    call        @ClassDestroy
 004A9FE9    mov         esp,ebp
 004A9FEB    pop         ebp
 004A9FEC    ret
*}
end;

//004A9FF0
procedure sub_004A9FF0(?:TApplication);
begin
{*
 004A9FF0    push        ebp
 004A9FF1    mov         ebp,esp
 004A9FF3    add         esp,0FFFFFFCC
 004A9FF6    xor         edx,edx
 004A9FF8    mov         dword ptr [ebp-34],edx
 004A9FFB    mov         dword ptr [ebp-4],eax
 004A9FFE    xor         eax,eax
 004AA000    push        ebp
 004AA001    push        4AA1C0
 004AA006    push        dword ptr fs:[eax]
 004AA009    mov         dword ptr fs:[eax],esp
 004AA00C    mov         eax,dword ptr [ebp-4]
 004AA00F    cmp         byte ptr [eax+0A4],0;TApplication.FHandleCreated:Boolean
>004AA016    jne         004AA1AA
 004AA01C    mov         eax,[0056E480];^IsConsole:Boolean
 004AA021    cmp         byte ptr [eax],0
>004AA024    jne         004AA1AA
 004AA02A    mov         eax,dword ptr [ebp-4]
 004AA02D    push        eax
 004AA02E    push        4AA6CC;sub_004AA6CC
 004AA033    call        0042B9AC
 004AA038    mov         edx,dword ptr [ebp-4]
 004AA03B    mov         dword ptr [edx+40],eax;TApplication.FObjectInstance:Pointer
 004AA03E    mov         eax,407EFC;user32.DefWindowProcA:Longint
 004AA043    mov         [0056CAB4],eax;^user32.DefWindowProcA:Longint
 004AA048    lea         eax,[ebp-30]
 004AA04B    push        eax
 004AA04C    mov         eax,[0056CAD4];^_NF__A5A
 004AA051    push        eax
 004AA052    mov         eax,[0056F668];0x0 HInstance:LongWord
 004AA057    push        eax
 004AA058    call        user32.GetClassInfoA
 004AA05D    test        eax,eax
>004AA05F    jne         004AA09B
 004AA061    mov         eax,[0056F668];0x0 HInstance:LongWord
 004AA066    mov         [0056CAC0],eax;gvar_0056CAC0:LongWord
 004AA06B    push        56CAB0
 004AA070    call        user32.RegisterClassA
 004AA075    test        ax,ax
>004AA078    jne         004AA09B
 004AA07A    lea         edx,[ebp-34]
 004AA07D    mov         eax,[0056E0AC];^SWindowClass:TResStringRec
 004AA082    call        LoadResString
 004AA087    mov         ecx,dword ptr [ebp-34]
 004AA08A    mov         dl,1
 004AA08C    mov         eax,[0041D3B0];EOutOfResources
 004AA091    call        Exception.Create;EOutOfResources.Create
 004AA096    call        @RaiseExcept
 004AA09B    push        0
 004AA09D    mov         eax,[0056E1C0];^gvar_00571B2C
 004AA0A2    mov         eax,dword ptr [eax]
 004AA0A4    call        eax
 004AA0A6    sar         eax,1
>004AA0A8    jns         004AA0AD
 004AA0AA    adc         eax,0
 004AA0AD    push        eax
 004AA0AE    push        1
 004AA0B0    mov         eax,[0056E1C0];^gvar_00571B2C
 004AA0B5    mov         eax,dword ptr [eax]
 004AA0B7    call        eax
 004AA0B9    sar         eax,1
>004AA0BB    jns         004AA0C0
 004AA0BD    adc         eax,0
 004AA0C0    push        eax
 004AA0C1    push        0
 004AA0C3    push        0
 004AA0C5    push        0
 004AA0C7    push        0
 004AA0C9    mov         eax,[0056F668];0x0 HInstance:LongWord
 004AA0CE    push        eax
 004AA0CF    push        0
 004AA0D1    mov         eax,dword ptr [ebp-4]
 004AA0D4    mov         eax,dword ptr [eax+8C];TApplication.FTitle:String
 004AA0DA    call        @LStrToPChar
 004AA0DF    mov         edx,eax
 004AA0E1    mov         ecx,84CA0000
 004AA0E6    mov         eax,[0056CAD4];^_NF__A5A
 004AA0EB    call        00408748
 004AA0F0    mov         edx,dword ptr [ebp-4]
 004AA0F3    mov         dword ptr [edx+30],eax;TApplication.FHandle:HWND
 004AA0F6    mov         eax,dword ptr [ebp-4]
 004AA0F9    add         eax,8C;TApplication.FTitle:String
 004AA0FE    call        @LStrClr
 004AA103    mov         eax,dword ptr [ebp-4]
 004AA106    mov         byte ptr [eax+0A4],1;TApplication.FHandleCreated:Boolean
 004AA10D    mov         eax,dword ptr [ebp-4]
 004AA110    mov         eax,dword ptr [eax+40];TApplication.FObjectInstance:Pointer
 004AA113    push        eax
 004AA114    push        0FC
 004AA116    mov         eax,dword ptr [ebp-4]
 004AA119    mov         eax,dword ptr [eax+30];TApplication.FHandle:HWND
 004AA11C    push        eax
 004AA11D    call        user32.SetWindowLongA
 004AA122    mov         eax,[0056E264];^NewStyleControls:Boolean
 004AA127    cmp         byte ptr [eax],0
>004AA12A    je          004AA15F
 004AA12C    mov         eax,dword ptr [ebp-4]
 004AA12F    call        004AAE0C
 004AA134    push        eax
 004AA135    push        1
 004AA137    push        80
 004AA13C    mov         eax,dword ptr [ebp-4]
 004AA13F    mov         eax,dword ptr [eax+30];TApplication.FHandle:HWND
 004AA142    push        eax
 004AA143    call        user32.SendMessageA
 004AA148    mov         eax,dword ptr [ebp-4]
 004AA14B    call        004AAE0C
 004AA150    push        eax
 004AA151    push        0F2
 004AA153    mov         eax,dword ptr [ebp-4]
 004AA156    mov         eax,dword ptr [eax+30];TApplication.FHandle:HWND
 004AA159    push        eax
 004AA15A    call        user32.SetClassLongA
 004AA15F    push        0
 004AA161    mov         eax,dword ptr [ebp-4]
 004AA164    mov         eax,dword ptr [eax+30];TApplication.FHandle:HWND
 004AA167    push        eax
 004AA168    call        user32.GetSystemMenu
 004AA16D    mov         dword ptr [ebp-8],eax
 004AA170    push        0
 004AA172    push        0F030
 004AA177    mov         eax,dword ptr [ebp-8]
 004AA17A    push        eax
 004AA17B    call        user32.DeleteMenu
 004AA180    push        0
 004AA182    push        0F000
 004AA187    mov         eax,dword ptr [ebp-8]
 004AA18A    push        eax
 004AA18B    call        user32.DeleteMenu
 004AA190    mov         eax,[0056E264];^NewStyleControls:Boolean
 004AA195    cmp         byte ptr [eax],0
>004AA198    je          004AA1AA
 004AA19A    push        0
 004AA19C    push        0F010
 004AA1A1    mov         eax,dword ptr [ebp-8]
 004AA1A4    push        eax
 004AA1A5    call        user32.DeleteMenu
 004AA1AA    xor         eax,eax
 004AA1AC    pop         edx
 004AA1AD    pop         ecx
 004AA1AE    pop         ecx
 004AA1AF    mov         dword ptr fs:[eax],edx
 004AA1B2    push        4AA1C7
 004AA1B7    lea         eax,[ebp-34]
 004AA1BA    call        @LStrClr
 004AA1BF    ret
>004AA1C0    jmp         @HandleFinally
>004AA1C5    jmp         004AA1B7
 004AA1C7    mov         esp,ebp
 004AA1C9    pop         ebp
 004AA1CA    ret
*}
end;

//004AA1CC
{*procedure sub_004AA1CC(?:TApplication; ?:?);
begin
 004AA1CC    push        ebp
 004AA1CD    mov         ebp,esp
 004AA1CF    add         esp,0FFFFFFF8
 004AA1D2    mov         dword ptr [ebp-8],edx
 004AA1D5    mov         dword ptr [ebp-4],eax
 004AA1D8    mov         eax,dword ptr [ebp-4]
 004AA1DB    mov         eax,dword ptr [eax+44];TApplication.FMainForm:TForm
 004AA1DE    cmp         eax,dword ptr [ebp-8]
>004AA1E1    jne         004AA1EB
 004AA1E3    mov         eax,dword ptr [ebp-4]
 004AA1E6    xor         edx,edx
 004AA1E8    mov         dword ptr [eax+44],edx;TApplication.FMainForm:TForm
 004AA1EB    mov         eax,dword ptr [ebp-4]
 004AA1EE    mov         eax,dword ptr [eax+48];TApplication.FMouseControl:TControl
 004AA1F1    cmp         eax,dword ptr [ebp-8]
>004AA1F4    jne         004AA1FE
 004AA1F6    mov         eax,dword ptr [ebp-4]
 004AA1F9    xor         edx,edx
 004AA1FB    mov         dword ptr [eax+48],edx;TApplication.FMouseControl:TControl
 004AA1FE    mov         eax,[00571E40];0x0 Screen:TScreen
 004AA203    mov         eax,dword ptr [eax+64];TScreen.FActiveControl:TWinControl
 004AA206    cmp         eax,dword ptr [ebp-8]
>004AA209    jne         004AA215
 004AA20B    mov         eax,[00571E40];0x0 Screen:TScreen
 004AA210    xor         edx,edx
 004AA212    mov         dword ptr [eax+64],edx;TScreen.FActiveControl:TWinControl
 004AA215    mov         eax,[00571E40];0x0 Screen:TScreen
 004AA21A    mov         eax,dword ptr [eax+68];TScreen.FActiveCustomForm:TCustomForm
 004AA21D    cmp         eax,dword ptr [ebp-8]
>004AA220    jne         004AA236
 004AA222    mov         eax,[00571E40];0x0 Screen:TScreen
 004AA227    xor         edx,edx
 004AA229    mov         dword ptr [eax+68],edx;TScreen.FActiveCustomForm:TCustomForm
 004AA22C    mov         eax,[00571E40];0x0 Screen:TScreen
 004AA231    xor         edx,edx
 004AA233    mov         dword ptr [eax+6C],edx;TScreen.FActiveForm:TForm
 004AA236    mov         eax,[00571E40];0x0 Screen:TScreen
 004AA23B    mov         eax,dword ptr [eax+78];TScreen.FFocusedForm:TCustomForm
 004AA23E    cmp         eax,dword ptr [ebp-8]
>004AA241    jne         004AA24D
 004AA243    mov         eax,[00571E40];0x0 Screen:TScreen
 004AA248    xor         edx,edx
 004AA24A    mov         dword ptr [eax+78],edx;TScreen.FFocusedForm:TCustomForm
 004AA24D    mov         eax,dword ptr [ebp-4]
 004AA250    mov         eax,dword ptr [eax+60];TApplication.FHintControl:TControl
 004AA253    cmp         eax,dword ptr [ebp-8]
>004AA256    jne         004AA260
 004AA258    mov         eax,dword ptr [ebp-4]
 004AA25B    xor         edx,edx
 004AA25D    mov         dword ptr [eax+60],edx;TApplication.FHintControl:TControl
 004AA260    mov         eax,[00571E40];0x0 Screen:TScreen
 004AA265    call        004A8A10
 004AA26A    pop         ecx
 004AA26B    pop         ecx
 004AA26C    pop         ebp
 004AA26D    ret
end;*}

//004AA2F0
{*procedure sub_004AA2F0(?:?; ?:?);
begin
 004AA2F0    push        ebp
 004AA2F1    mov         ebp,esp
 004AA2F3    add         esp,0FFFFFFEC
 004AA2F6    mov         byte ptr [ebp-5],dl
 004AA2F9    mov         dword ptr [ebp-4],eax
 004AA2FC    mov         eax,[00571E3C];0x0 Application:TApplication
 004AA301    cmp         dword ptr [eax+30],0;TApplication.FHandle:HWND
>004AA305    je          004AA3BA
 004AA30B    mov         eax,dword ptr [ebp-4]
 004AA30E    cmp         dword ptr [eax+94],0
>004AA315    jne         004AA3B1
 004AA31B    mov         eax,dword ptr [ebp-4]
 004AA31E    mov         eax,dword ptr [eax+30]
 004AA321    mov         dword ptr [ebp-14],eax
 004AA324    mov         al,byte ptr [ebp-5]
 004AA327    mov         byte ptr [ebp-10],al
 004AA32A    lea         eax,[ebp-14]
 004AA32D    push        eax
 004AA32E    push        4AA270
 004AA333    call        user32.EnumWindows
 004AA338    mov         eax,dword ptr [ebp-4]
 004AA33B    mov         eax,dword ptr [eax+90]
 004AA341    cmp         dword ptr [eax+8],0
>004AA345    je          004AA3B1
 004AA347    push        3
 004AA349    mov         eax,dword ptr [ebp-14]
 004AA34C    push        eax
 004AA34D    call        user32.GetWindow
 004AA352    mov         dword ptr [ebp-14],eax
 004AA355    push        0EC
 004AA357    mov         eax,dword ptr [ebp-14]
 004AA35A    push        eax
 004AA35B    call        user32.GetWindowLongA
 004AA360    test        al,8
>004AA362    je          004AA36B
 004AA364    mov         dword ptr [ebp-14],0FFFFFFFE
 004AA36B    mov         eax,dword ptr [ebp-4]
 004AA36E    mov         eax,dword ptr [eax+90]
 004AA374    mov         eax,dword ptr [eax+8]
 004AA377    dec         eax
 004AA378    cmp         eax,0
>004AA37B    jl          004AA3B1
 004AA37D    mov         dword ptr [ebp-0C],eax
 004AA380    push        213
 004AA385    push        0
 004AA387    push        0
 004AA389    push        0
 004AA38B    push        0
 004AA38D    mov         eax,dword ptr [ebp-14]
 004AA390    push        eax
 004AA391    mov         edx,dword ptr [ebp-0C]
 004AA394    mov         eax,dword ptr [ebp-4]
 004AA397    mov         eax,dword ptr [eax+90]
 004AA39D    call        TList.Get
 004AA3A2    push        eax
 004AA3A3    call        user32.SetWindowPos
 004AA3A8    dec         dword ptr [ebp-0C]
 004AA3AB    cmp         dword ptr [ebp-0C],0FFFFFFFF
>004AA3AF    jne         004AA380
 004AA3B1    mov         eax,dword ptr [ebp-4]
 004AA3B4    inc         dword ptr [eax+94]
 004AA3BA    mov         esp,ebp
 004AA3BC    pop         ebp
 004AA3BD    ret
end;*}

//004AA3C0
procedure sub_004AA3C0(?:TApplication);
begin
{*
 004AA3C0    push        ebp
 004AA3C1    mov         ebp,esp
 004AA3C3    push        ecx
 004AA3C4    push        ebx
 004AA3C5    mov         dword ptr [ebp-4],eax
 004AA3C8    mov         eax,dword ptr [ebp-4]
 004AA3CB    inc         dword ptr [eax+0B8];TApplication.FModalLevel:Integer
 004AA3D1    mov         eax,dword ptr [ebp-4]
 004AA3D4    cmp         dword ptr [eax+0B8],1;TApplication.FModalLevel:Integer
>004AA3DB    jne         004AA3FC
 004AA3DD    mov         eax,dword ptr [ebp-4]
 004AA3E0    cmp         word ptr [eax+0E2],0;TApplication.?fE2:word
>004AA3E8    je          004AA3FC
 004AA3EA    mov         ebx,dword ptr [ebp-4]
 004AA3ED    mov         edx,dword ptr [ebp-4]
 004AA3F0    mov         eax,dword ptr [ebx+0E4];TApplication.?fE4:dword
 004AA3F6    call        dword ptr [ebx+0E0];TApplication.FOnModalBegin
 004AA3FC    pop         ebx
 004AA3FD    pop         ecx
 004AA3FE    pop         ebp
 004AA3FF    ret
*}
end;

//004AA400
procedure sub_004AA400(?:TApplication);
begin
{*
 004AA400    push        ebp
 004AA401    mov         ebp,esp
 004AA403    push        ecx
 004AA404    push        ebx
 004AA405    mov         dword ptr [ebp-4],eax
 004AA408    mov         eax,dword ptr [ebp-4]
 004AA40B    dec         dword ptr [eax+0B8];TApplication.FModalLevel:Integer
 004AA411    mov         eax,dword ptr [ebp-4]
 004AA414    cmp         dword ptr [eax+0B8],0;TApplication.FModalLevel:Integer
>004AA41B    jne         004AA43C
 004AA41D    mov         eax,dword ptr [ebp-4]
 004AA420    cmp         word ptr [eax+0EA],0;TApplication.?fEA:word
>004AA428    je          004AA43C
 004AA42A    mov         ebx,dword ptr [ebp-4]
 004AA42D    mov         edx,dword ptr [ebp-4]
 004AA430    mov         eax,dword ptr [ebx+0EC];TApplication.?fEC:dword
 004AA436    call        dword ptr [ebx+0E8];TApplication.FOnModalEnd
 004AA43C    pop         ebx
 004AA43D    pop         ecx
 004AA43E    pop         ebp
 004AA43F    ret
*}
end;

//004AA440
procedure sub_004AA440(?:TApplication);
begin
{*
 004AA440    push        ebp
 004AA441    mov         ebp,esp
 004AA443    push        ecx
 004AA444    mov         dword ptr [ebp-4],eax
 004AA447    xor         edx,edx
 004AA449    mov         eax,dword ptr [ebp-4]
 004AA44C    call        004AA2F0
 004AA451    pop         ecx
 004AA452    pop         ebp
 004AA453    ret
*}
end;

//004AA454
procedure sub_004AA454(?:TApplication);
begin
{*
 004AA454    push        ebp
 004AA455    mov         ebp,esp
 004AA457    push        ecx
 004AA458    mov         dword ptr [ebp-4],eax
 004AA45B    mov         dl,1
 004AA45D    mov         eax,dword ptr [ebp-4]
 004AA460    call        004AA2F0
 004AA465    pop         ecx
 004AA466    pop         ebp
 004AA467    ret
*}
end;

//004AA468
procedure sub_004AA468(?:TApplication);
begin
{*
 004AA468    push        ebp
 004AA469    mov         ebp,esp
 004AA46B    add         esp,0FFFFFFF8
 004AA46E    mov         dword ptr [ebp-4],eax
 004AA471    mov         eax,[00571E3C];0x0 Application:TApplication
 004AA476    cmp         dword ptr [eax+30],0;TApplication.FHandle:HWND
>004AA47A    je          004AA4EF
 004AA47C    mov         eax,dword ptr [ebp-4]
 004AA47F    cmp         dword ptr [eax+94],0
>004AA486    jle         004AA4EF
 004AA488    mov         eax,dword ptr [ebp-4]
 004AA48B    dec         dword ptr [eax+94]
 004AA491    mov         eax,dword ptr [ebp-4]
 004AA494    cmp         dword ptr [eax+94],0
>004AA49B    jne         004AA4EF
 004AA49D    mov         eax,dword ptr [ebp-4]
 004AA4A0    mov         eax,dword ptr [eax+90]
 004AA4A6    mov         eax,dword ptr [eax+8]
 004AA4A9    dec         eax
 004AA4AA    cmp         eax,0
>004AA4AD    jl          004AA4E1
 004AA4AF    mov         dword ptr [ebp-8],eax
 004AA4B2    push        213
 004AA4B7    push        0
 004AA4B9    push        0
 004AA4BB    push        0
 004AA4BD    push        0
 004AA4BF    push        0FF
 004AA4C1    mov         edx,dword ptr [ebp-8]
 004AA4C4    mov         eax,dword ptr [ebp-4]
 004AA4C7    mov         eax,dword ptr [eax+90]
 004AA4CD    call        TList.Get
 004AA4D2    push        eax
 004AA4D3    call        user32.SetWindowPos
 004AA4D8    dec         dword ptr [ebp-8]
 004AA4DB    cmp         dword ptr [ebp-8],0FFFFFFFF
>004AA4DF    jne         004AA4B2
 004AA4E1    mov         eax,dword ptr [ebp-4]
 004AA4E4    mov         eax,dword ptr [eax+90]
 004AA4EA    mov         edx,dword ptr [eax]
 004AA4EC    call        dword ptr [edx+8]
 004AA4EF    pop         ecx
 004AA4F0    pop         ecx
 004AA4F1    pop         ebp
 004AA4F2    ret
*}
end;

//004AA4F4
{*function sub_004AA4F4(?:?):?;
begin
 004AA4F4    push        ebp
 004AA4F5    mov         ebp,esp
 004AA4F7    add         esp,0FFFFFFF8
 004AA4FA    mov         dword ptr [ebp-4],eax
 004AA4FD    mov         eax,[0056E638];^gvar_0057196C:Integer
 004AA502    cmp         byte ptr [eax+0D],0
>004AA506    je          004AA511
 004AA508    mov         eax,dword ptr [ebp-4]
 004AA50B    cmp         byte ptr [eax+34],0
>004AA50F    jne         004AA515
 004AA511    xor         eax,eax
>004AA513    jmp         004AA517
 004AA515    mov         al,1
 004AA517    mov         byte ptr [ebp-5],al
 004AA51A    mov         al,byte ptr [ebp-5]
 004AA51D    pop         ecx
 004AA51E    pop         ecx
 004AA51F    pop         ebp
 004AA520    ret
end;*}

//004AA524
{*function sub_004AA524(?:TApplication):?;
begin
 004AA524    push        ebp
 004AA525    mov         ebp,esp
 004AA527    add         esp,0FFFFFFF8
 004AA52A    mov         dword ptr [ebp-4],eax
 004AA52D    mov         eax,[0056E638];^gvar_0057196C:Integer
 004AA532    cmp         byte ptr [eax+0D],0
>004AA536    je          004AA541
 004AA538    mov         eax,dword ptr [ebp-4]
 004AA53B    cmp         byte ptr [eax+34],1;TApplication.FBiDiMode:TBiDiMode
>004AA53F    je          004AA545
 004AA541    xor         eax,eax
>004AA543    jmp         004AA547
 004AA545    mov         al,1
 004AA547    mov         byte ptr [ebp-5],al
 004AA54A    mov         al,byte ptr [ebp-5]
 004AA54D    pop         ecx
 004AA54E    pop         ecx
 004AA54F    pop         ebp
 004AA550    ret
end;*}

//004AA554
{*function sub_004AA554(?:TApplication; ?:?):?;
begin
 004AA554    push        ebp
 004AA555    mov         ebp,esp
 004AA557    add         esp,0FFFFFFF4
 004AA55A    mov         dword ptr [ebp-8],edx
 004AA55D    mov         dword ptr [ebp-4],eax
 004AA560    mov         byte ptr [ebp-9],0
 004AA564    mov         eax,dword ptr [ebp-8]
 004AA567    mov         eax,dword ptr [eax]
 004AA569    cmp         eax,dword ptr ds:[571E48];0x0 gvar_00571E48:LongWord
>004AA56F    je          004AA579
 004AA571    mov         eax,dword ptr [ebp-8]
 004AA574    cmp         dword ptr [eax],1A
>004AA577    jne         004AA5BB
 004AA579    mov         eax,dword ptr [ebp-4]
 004AA57C    cmp         byte ptr [eax+59],0
>004AA580    je          004AA591
 004AA582    push        400
 004AA587    call        kernel32.SetThreadLocale
 004AA58C    call        00411BCC
 004AA591    mov         eax,dword ptr [ebp-4]
 004AA594    cmp         byte ptr [eax+5A],0
>004AA598    je          004AA5A4
 004AA59A    mov         eax,[00571E40];0x0 Screen:TScreen
 004AA59F    call        004A9120
 004AA5A4    mov         eax,dword ptr [ebp-8]
 004AA5A7    mov         eax,dword ptr [eax]
 004AA5A9    cmp         eax,dword ptr ds:[571E48];0x0 gvar_00571E48:LongWord
>004AA5AF    jne         004AA5BB
 004AA5B1    mov         eax,[00571E40];0x0 Screen:TScreen
 004AA5B6    call        004A9880
 004AA5BB    mov         al,byte ptr [ebp-9]
 004AA5BE    mov         esp,ebp
 004AA5C0    pop         ebp
 004AA5C1    ret
end;*}

//004AA5C4
{*procedure sub_004AA5C4(?:TApplication; ?:?);
begin
 004AA5C4    push        ebp
 004AA5C5    mov         ebp,esp
 004AA5C7    add         esp,0FFFFFFF4
 004AA5CA    push        ebx
 004AA5CB    xor         ecx,ecx
 004AA5CD    mov         dword ptr [ebp-0C],ecx
 004AA5D0    mov         dword ptr [ebp-8],edx
 004AA5D3    mov         dword ptr [ebp-4],eax
 004AA5D6    xor         eax,eax
 004AA5D8    push        ebp
 004AA5D9    push        4AA638
 004AA5DE    push        dword ptr fs:[eax]
 004AA5E1    mov         dword ptr fs:[eax],esp
 004AA5E4    mov         eax,dword ptr [ebp-4]
 004AA5E7    cmp         word ptr [eax+13A],0
>004AA5EF    je          004AA622
 004AA5F1    lea         eax,[ebp-0C]
 004AA5F4    mov         edx,dword ptr [ebp-8]
 004AA5F7    mov         edx,dword ptr [edx+8]
 004AA5FA    call        @LStrFromPChar
 004AA5FF    mov         eax,dword ptr [ebp-0C]
 004AA602    push        eax
 004AA603    mov         eax,dword ptr [ebp-8]
 004AA606    add         eax,0C
 004AA609    push        eax
 004AA60A    mov         ecx,dword ptr [ebp-8]
 004AA60D    mov         ecx,dword ptr [ecx+4]
 004AA610    mov         ebx,dword ptr [ebp-4]
 004AA613    mov         edx,dword ptr [ebp-4]
 004AA616    mov         eax,dword ptr [ebx+13C]
 004AA61C    call        dword ptr [ebx+138]
 004AA622    xor         eax,eax
 004AA624    pop         edx
 004AA625    pop         ecx
 004AA626    pop         ecx
 004AA627    mov         dword ptr fs:[eax],edx
 004AA62A    push        4AA63F
 004AA62F    lea         eax,[ebp-0C]
 004AA632    call        @LStrClr
 004AA637    ret
>004AA638    jmp         @HandleFinally
>004AA63D    jmp         004AA62F
 004AA63F    pop         ebx
 004AA640    mov         esp,ebp
 004AA642    pop         ebp
 004AA643    ret
end;*}

//004AA644
procedure Default;
begin
{*
 004AA644    push        ebp
 004AA645    mov         ebp,esp
 004AA647    mov         eax,dword ptr [ebp+8]
 004AA64A    mov         eax,dword ptr [eax-8]
 004AA64D    mov         eax,dword ptr [eax+8]
 004AA650    push        eax
 004AA651    mov         eax,dword ptr [ebp+8]
 004AA654    mov         eax,dword ptr [eax-8]
 004AA657    mov         eax,dword ptr [eax+4]
 004AA65A    push        eax
 004AA65B    mov         eax,dword ptr [ebp+8]
 004AA65E    mov         eax,dword ptr [eax-8]
 004AA661    mov         eax,dword ptr [eax]
 004AA663    push        eax
 004AA664    mov         eax,dword ptr [ebp+8]
 004AA667    mov         eax,dword ptr [eax-4]
 004AA66A    mov         eax,dword ptr [eax+30]
 004AA66D    push        eax
 004AA66E    call        user32.DefWindowProcA
 004AA673    mov         edx,dword ptr [ebp+8]
 004AA676    mov         edx,dword ptr [edx-8]
 004AA679    mov         dword ptr [edx+0C],eax
 004AA67C    pop         ebp
 004AA67D    ret
*}
end;

//004AA680
{*procedure sub_004AA680(?:?);
begin
 004AA680    push        ebp
 004AA681    mov         ebp,esp
 004AA683    add         esp,0FFFFFFBC
 004AA686    lea         eax,[ebp-44]
 004AA689    push        eax
 004AA68A    mov         eax,dword ptr [ebp+8]
 004AA68D    mov         eax,dword ptr [eax-4]
 004AA690    mov         eax,dword ptr [eax+30]
 004AA693    push        eax
 004AA694    call        user32.BeginPaint
 004AA699    mov         dword ptr [ebp-4],eax
 004AA69C    mov         eax,dword ptr [ebp+8]
 004AA69F    mov         eax,dword ptr [eax-4]
 004AA6A2    call        004AAE0C
 004AA6A7    push        eax
 004AA6A8    push        0
 004AA6AA    push        0
 004AA6AC    mov         eax,dword ptr [ebp-4]
 004AA6AF    push        eax
 004AA6B0    call        user32.DrawIcon
 004AA6B5    lea         eax,[ebp-44]
 004AA6B8    push        eax
 004AA6B9    mov         eax,dword ptr [ebp+8]
 004AA6BC    mov         eax,dword ptr [eax-4]
 004AA6BF    mov         eax,dword ptr [eax+30]
 004AA6C2    push        eax
 004AA6C3    call        user32.EndPaint
 004AA6C8    mov         esp,ebp
 004AA6CA    pop         ebp
 004AA6CB    ret
end;*}

//004AA6CC
{*procedure sub_004AA6CC(?:TApplication; ?:?);
begin
 004AA6CC    push        ebp
 004AA6CD    mov         ebp,esp
 004AA6CF    add         esp,0FFFFFFE0
 004AA6D2    push        ebx
 004AA6D3    push        esi
 004AA6D4    push        edi
 004AA6D5    mov         dword ptr [ebp-8],edx
 004AA6D8    mov         dword ptr [ebp-4],eax
 004AA6DB    xor         eax,eax
 004AA6DD    push        ebp
 004AA6DE    push        4AADC3
 004AA6E3    push        dword ptr fs:[eax]
 004AA6E6    mov         dword ptr fs:[eax],esp
 004AA6E9    mov         eax,dword ptr [ebp-8]
 004AA6EC    xor         edx,edx
 004AA6EE    mov         dword ptr [eax+0C],edx
 004AA6F1    mov         eax,dword ptr [ebp-4]
 004AA6F4    mov         eax,dword ptr [eax+0A8];TApplication.FWindowHooks:TList
 004AA6FA    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 004AA6FD    dec         eax
 004AA6FE    test        eax,eax
>004AA700    jl          004AA741
 004AA702    inc         eax
 004AA703    mov         dword ptr [ebp-1C],eax
 004AA706    mov         dword ptr [ebp-0C],0
 004AA70D    mov         eax,dword ptr [ebp-4]
 004AA710    mov         eax,dword ptr [eax+0A8];TApplication.FWindowHooks:TList
 004AA716    mov         edx,dword ptr [ebp-0C]
 004AA719    call        TList.Get
 004AA71E    mov         ebx,eax
 004AA720    mov         edx,dword ptr [ebp-8]
 004AA723    mov         eax,dword ptr [ebx+4]
 004AA726    call        dword ptr [ebx]
 004AA728    test        al,al
>004AA72A    je          004AA739
 004AA72C    xor         eax,eax
 004AA72E    pop         edx
 004AA72F    pop         ecx
 004AA730    pop         ecx
 004AA731    mov         dword ptr fs:[eax],edx
>004AA734    jmp         004AADD8
 004AA739    inc         dword ptr [ebp-0C]
 004AA73C    dec         dword ptr [ebp-1C]
>004AA73F    jne         004AA70D
 004AA741    mov         edx,dword ptr [ebp-8]
 004AA744    mov         eax,dword ptr [ebp-4]
 004AA747    call        004AA554
 004AA74C    mov         eax,dword ptr [ebp-8]
 004AA74F    mov         eax,dword ptr [eax]
 004AA751    cmp         eax,53
>004AA754    jg          004AA808
>004AA75A    je          004AACD8
 004AA760    cmp         eax,16
>004AA763    jg          004AA7CF
>004AA765    je          004AAA7C
 004AA76B    cmp         eax,14
>004AA76E    ja          004AADB2
 004AA774    jmp         dword ptr [eax*4+4AA77B]
 004AA774    dd          004AADA9
 004AA774    dd          004AADB2
 004AA774    dd          004AADB2
 004AA774    dd          004AADB2
 004AA774    dd          004AADB2
 004AA774    dd          004AADB2
 004AA774    dd          004AADB2
 004AA774    dd          004AA94E
 004AA774    dd          004AADB2
 004AA774    dd          004AADB2
 004AA774    dd          004AA9D6
 004AA774    dd          004AADB2
 004AA774    dd          004AADB2
 004AA774    dd          004AADB2
 004AA774    dd          004AADB2
 004AA774    dd          004AA8FE
 004AA774    dd          004AA8E1
 004AA774    dd          004AADB2
 004AA774    dd          004AADB2
 004AA774    dd          004AADB2
 004AA774    dd          004AA926
 004AA7CF    cmp         eax,1D
>004AA7D2    jg          004AA7F1
>004AA7D4    je          004AAD7C
 004AA7DA    sub         eax,1A
>004AA7DD    je          004AAD56
 004AA7E3    sub         eax,2
>004AA7E6    je          004AA96F
>004AA7EC    jmp         004AADB2
 004AA7F1    sub         eax,37
>004AA7F4    je          004AA93B
 004AA7FA    sub         eax,13
>004AA7FD    je          004AAA93
>004AA803    jmp         004AADB2
 004AA808    cmp         eax,0B017
>004AA80D    jg          004AA85E
>004AA80F    je          004AAB99
 004AA815    cmp         eax,0B000
>004AA81A    jg          004AA845
>004AA81C    je          004AAC41
 004AA822    sub         eax,112
>004AA827    je          004AA8A0
 004AA829    add         eax,0FFFFFFE0
 004AA82C    sub         eax,7
>004AA82F    jb          004AAA4C
 004AA835    sub         eax,1E1
>004AA83A    je          004AAD8F
>004AA840    jmp         004AADB2
 004AA845    sub         eax,0B001
>004AA84A    je          004AAC69
 004AA850    sub         eax,15
>004AA853    je          004AAB77
>004AA859    jmp         004AADB2
 004AA85E    cmp         eax,0B020
>004AA863    jg          004AA884
>004AA865    je          004AACF2
 004AA86B    sub         eax,0B01A
>004AA870    je          004AAC91
 004AA876    sub         eax,5
>004AA879    je          004AACD8
>004AA87F    jmp         004AADB2
 004AA884    sub         eax,0B031
>004AA889    je          004AAD2B
 004AA88F    add         eax,0FFFFFFF2
 004AA892    sub         eax,2
>004AA895    jb          004AAB56
>004AA89B    jmp         004AADB2
 004AA8A0    mov         eax,dword ptr [ebp-8]
 004AA8A3    mov         eax,dword ptr [eax+4]
 004AA8A6    and         eax,0FFF0
 004AA8AB    sub         eax,0F020
>004AA8B0    je          004AA8BB
 004AA8B2    sub         eax,100
>004AA8B7    je          004AA8C8
>004AA8B9    jmp         004AA8D5
 004AA8BB    mov         eax,dword ptr [ebp-4]
 004AA8BE    call        004AAE44
>004AA8C3    jmp         004AADB9
 004AA8C8    mov         eax,dword ptr [ebp-4]
 004AA8CB    call        004AAF30
>004AA8D0    jmp         004AADB9
 004AA8D5    push        ebp
 004AA8D6    call        Default
 004AA8DB    pop         ecx
>004AA8DC    jmp         004AADB9
 004AA8E1    mov         eax,dword ptr [ebp-4]
 004AA8E4    cmp         dword ptr [eax+44],0;TApplication.FMainForm:TForm
>004AA8E8    je          004AADB9
 004AA8EE    mov         eax,dword ptr [ebp-4]
 004AA8F1    mov         eax,dword ptr [eax+44];TApplication.FMainForm:TForm
 004AA8F4    call        004A7264
>004AA8F9    jmp         004AADB9
 004AA8FE    mov         eax,dword ptr [ebp-4]
 004AA901    mov         eax,dword ptr [eax+30];TApplication.FHandle:HWND
 004AA904    push        eax
 004AA905    call        user32.IsIconic
 004AA90A    test        eax,eax
>004AA90C    je          004AA91A
 004AA90E    push        ebp
 004AA90F    call        004AA680
 004AA914    pop         ecx
>004AA915    jmp         004AADB9
 004AA91A    push        ebp
 004AA91B    call        Default
 004AA920    pop         ecx
>004AA921    jmp         004AADB9
 004AA926    mov         eax,dword ptr [ebp-8]
 004AA929    mov         dword ptr [eax],27
 004AA92F    push        ebp
 004AA930    call        Default
 004AA935    pop         ecx
>004AA936    jmp         004AADB9
 004AA93B    mov         eax,dword ptr [ebp-4]
 004AA93E    call        004AAE0C
 004AA943    mov         edx,dword ptr [ebp-8]
 004AA946    mov         dword ptr [edx+0C],eax
>004AA949    jmp         004AADB9
 004AA94E    push        0
 004AA950    push        0
 004AA952    push        0B01A
 004AA957    mov         eax,dword ptr [ebp-4]
 004AA95A    mov         eax,dword ptr [eax+30];TApplication.FHandle:HWND
 004AA95D    push        eax
 004AA95E    call        user32.PostMessageA
 004AA963    push        ebp
 004AA964    call        Default
 004AA969    pop         ecx
>004AA96A    jmp         004AADB9
 004AA96F    push        ebp
 004AA970    call        Default
 004AA975    pop         ecx
 004AA976    mov         eax,dword ptr [ebp-8]
 004AA979    cmp         dword ptr [eax+4],1
 004AA97D    sbb         eax,eax
 004AA97F    inc         eax
 004AA980    mov         edx,dword ptr [ebp-4]
 004AA983    mov         byte ptr [edx+9D],al;TApplication.FActive:Boolean
 004AA989    mov         eax,dword ptr [ebp-8]
 004AA98C    cmp         dword ptr [eax+4],0
>004AA990    je          004AA9B4
 004AA992    mov         eax,dword ptr [ebp-4]
 004AA995    call        004AA468
 004AA99A    push        0
 004AA99C    push        0
 004AA99E    push        0B000
 004AA9A3    mov         eax,dword ptr [ebp-4]
 004AA9A6    mov         eax,dword ptr [eax+30];TApplication.FHandle:HWND
 004AA9A9    push        eax
 004AA9AA    call        user32.PostMessageA
>004AA9AF    jmp         004AADB9
 004AA9B4    mov         eax,dword ptr [ebp-4]
 004AA9B7    call        004AA440
 004AA9BC    push        0
 004AA9BE    push        0
 004AA9C0    push        0B001
 004AA9C5    mov         eax,dword ptr [ebp-4]
 004AA9C8    mov         eax,dword ptr [eax+30];TApplication.FHandle:HWND
 004AA9CB    push        eax
 004AA9CC    call        user32.PostMessageA
>004AA9D1    jmp         004AADB9
 004AA9D6    mov         eax,dword ptr [ebp-8]
 004AA9D9    cmp         dword ptr [eax+4],0
>004AA9DD    je          004AAA18
 004AA9DF    mov         eax,dword ptr [ebp-4]
 004AA9E2    call        004AA468
 004AA9E7    mov         eax,dword ptr [ebp-4]
 004AA9EA    cmp         dword ptr [eax+0AC],0;TApplication.FWindowList:Pointer
>004AA9F1    je          004AAA0C
 004AA9F3    mov         eax,dword ptr [ebp-4]
 004AA9F6    mov         eax,dword ptr [eax+0AC];TApplication.FWindowList:Pointer
 004AA9FC    call        004A02F8
 004AAA01    mov         eax,dword ptr [ebp-4]
 004AAA04    xor         edx,edx
 004AAA06    mov         dword ptr [eax+0AC],edx;TApplication.FWindowList:Pointer
 004AAA0C    push        ebp
 004AAA0D    call        Default
 004AAA12    pop         ecx
>004AAA13    jmp         004AADB9
 004AAA18    push        ebp
 004AAA19    call        Default
 004AAA1E    pop         ecx
 004AAA1F    mov         eax,dword ptr [ebp-4]
 004AAA22    cmp         dword ptr [eax+0AC],0;TApplication.FWindowList:Pointer
>004AAA29    jne         004AAA3F
 004AAA2B    mov         eax,dword ptr [ebp-4]
 004AAA2E    mov         eax,dword ptr [eax+30];TApplication.FHandle:HWND
 004AAA31    call        004A0240
 004AAA36    mov         edx,dword ptr [ebp-4]
 004AAA39    mov         dword ptr [edx+0AC],eax;TApplication.FWindowList:Pointer
 004AAA3F    mov         eax,dword ptr [ebp-4]
 004AAA42    call        004AA454
>004AAA47    jmp         004AADB9
 004AAA4C    mov         eax,dword ptr [ebp-8]
 004AAA4F    mov         eax,dword ptr [eax+8]
 004AAA52    push        eax
 004AAA53    mov         eax,dword ptr [ebp-8]
 004AAA56    mov         eax,dword ptr [eax+4]
 004AAA59    push        eax
 004AAA5A    mov         eax,dword ptr [ebp-8]
 004AAA5D    mov         eax,dword ptr [eax]
 004AAA5F    add         eax,0BC00
 004AAA64    push        eax
 004AAA65    mov         eax,dword ptr [ebp-8]
 004AAA68    mov         eax,dword ptr [eax+8]
 004AAA6B    push        eax
 004AAA6C    call        user32.SendMessageA
 004AAA71    mov         edx,dword ptr [ebp-8]
 004AAA74    mov         dword ptr [edx+0C],eax
>004AAA77    jmp         004AADB9
 004AAA7C    mov         eax,dword ptr [ebp-8]
 004AAA7F    cmp         dword ptr [eax+4],0
>004AAA83    je          004AADB9
 004AAA89    call        @Halt0
>004AAA8E    jmp         004AADB9
 004AAA93    mov         eax,dword ptr [ebp-8]
 004AAA96    mov         eax,dword ptr [eax+8]
 004AAA99    cmp         dword ptr [eax],0DE534454
>004AAA9F    jne         004AADB9
 004AAAA5    mov         eax,dword ptr [ebp-4]
 004AAAA8    cmp         byte ptr [eax+9E],0;TApplication.FAllowTesting:Boolean
>004AAAAF    je          004AADB9
 004AAAB5    mov         eax,dword ptr [ebp-4]
 004AAAB8    cmp         dword ptr [eax+0A0],0;TApplication.FTestLib:THandle
>004AAABF    jne         004AAB49
 004AAAC5    mov         edx,8000
 004AAACA    mov         eax,4AADE8;'vcltest3.dll'
 004AAACF    call        00412938
 004AAAD4    mov         edx,dword ptr [ebp-4]
 004AAAD7    mov         dword ptr [edx+0A0],eax;TApplication.FTestLib:THandle
 004AAADD    mov         eax,dword ptr [ebp-4]
 004AAAE0    cmp         dword ptr [eax+0A0],0;TApplication.FTestLib:THandle
>004AAAE7    je          004AAB2E
 004AAAE9    mov         eax,dword ptr [ebp-8]
 004AAAEC    xor         edx,edx
 004AAAEE    mov         dword ptr [eax+0C],edx
 004AAAF1    push        4AADF8;'RegisterAutomation'
 004AAAF6    mov         eax,dword ptr [ebp-4]
 004AAAF9    mov         eax,dword ptr [eax+0A0];TApplication.FTestLib:THandle
 004AAAFF    push        eax
 004AAB00    call        kernel32.GetProcAddress
 004AAB05    mov         dword ptr [ebp-18],eax
 004AAB08    cmp         dword ptr [ebp-18],0
>004AAB0C    je          004AADB9
 004AAB12    mov         eax,dword ptr [ebp-8]
 004AAB15    mov         eax,dword ptr [eax+8]
 004AAB18    mov         eax,dword ptr [eax+8]
 004AAB1B    push        eax
 004AAB1C    mov         eax,dword ptr [ebp-8]
 004AAB1F    mov         eax,dword ptr [eax+8]
 004AAB22    mov         eax,dword ptr [eax+4]
 004AAB25    push        eax
 004AAB26    call        dword ptr [ebp-18]
>004AAB29    jmp         004AADB9
 004AAB2E    call        kernel32.GetLastError
 004AAB33    mov         edx,dword ptr [ebp-8]
 004AAB36    mov         dword ptr [edx+0C],eax
 004AAB39    mov         eax,dword ptr [ebp-4]
 004AAB3C    xor         edx,edx
 004AAB3E    mov         dword ptr [eax+0A0],edx;TApplication.FTestLib:THandle
>004AAB44    jmp         004AADB9
 004AAB49    mov         eax,dword ptr [ebp-8]
 004AAB4C    xor         edx,edx
 004AAB4E    mov         dword ptr [eax+0C],edx
>004AAB51    jmp         004AADB9
 004AAB56    mov         ecx,dword ptr [ebp-8]
 004AAB59    mov         ecx,dword ptr [ecx+8]
 004AAB5C    mov         edx,dword ptr [ebp-8]
 004AAB5F    mov         edx,dword ptr [edx]
 004AAB61    mov         eax,dword ptr [ebp-4]
 004AAB64    call        004ACDE4
 004AAB69    and         eax,7F
 004AAB6C    mov         edx,dword ptr [ebp-8]
 004AAB6F    mov         dword ptr [edx+0C],eax
>004AAB72    jmp         004AADB9
 004AAB77    mov         edx,dword ptr [ebp-8]
 004AAB7A    mov         eax,dword ptr [ebp-4]
 004AAB7D    call        004AB3D4
 004AAB82    test        al,al
>004AAB84    je          004AADB9
 004AAB8A    mov         eax,dword ptr [ebp-8]
 004AAB8D    mov         dword ptr [eax+0C],1
>004AAB94    jmp         004AADB9
 004AAB99    mov         eax,dword ptr [ebp-4]
 004AAB9C    cmp         dword ptr [eax+44],0;TApplication.FMainForm:TForm
>004AABA0    je          004AADB9
 004AABA6    mov         eax,dword ptr [ebp-4]
 004AABA9    mov         eax,dword ptr [eax+44];TApplication.FMainForm:TForm
 004AABAC    mov         dword ptr [ebp-20],eax
 004AABAF    mov         eax,dword ptr [ebp-20]
 004AABB2    call        TWinControl.GetHandle
 004AABB7    test        eax,eax
>004AABB9    je          004AADB9
 004AABBF    mov         eax,dword ptr [ebp-20]
 004AABC2    call        TWinControl.GetHandle
 004AABC7    push        eax
 004AABC8    call        user32.IsWindowEnabled
 004AABCD    test        eax,eax
>004AABCF    je          004AADB9
 004AABD5    mov         eax,dword ptr [ebp-20]
 004AABD8    call        TWinControl.GetHandle
 004AABDD    push        eax
 004AABDE    call        user32.IsWindowVisible
 004AABE3    test        eax,eax
>004AABE5    je          004AADB9
 004AABEB    mov         byte ptr ds:[56C9C0],0;gvar_0056C9C0
 004AABF2    call        user32.GetFocus
 004AABF7    mov         dword ptr [ebp-10],eax
 004AABFA    mov         eax,dword ptr [ebp-20]
 004AABFD    call        TWinControl.GetHandle
 004AAC02    push        eax
 004AAC03    call        user32.SetFocus
 004AAC08    mov         eax,dword ptr [ebp-8]
 004AAC0B    mov         eax,dword ptr [eax+8]
 004AAC0E    push        eax
 004AAC0F    mov         ecx,dword ptr [ebp-8]
 004AAC12    mov         ecx,dword ptr [ecx+4]
 004AAC15    mov         edx,112
 004AAC1A    mov         eax,dword ptr [ebp-20]
 004AAC1D    call        00484FFC
 004AAC22    mov         eax,dword ptr [ebp-10]
 004AAC25    push        eax
 004AAC26    call        user32.SetFocus
 004AAC2B    mov         byte ptr ds:[56C9C0],1;gvar_0056C9C0
 004AAC32    mov         eax,dword ptr [ebp-8]
 004AAC35    mov         dword ptr [eax+0C],1
>004AAC3C    jmp         004AADB9
 004AAC41    mov         eax,dword ptr [ebp-4]
 004AAC44    cmp         word ptr [eax+112],0;TApplication.?f112:word
>004AAC4C    je          004AADB9
 004AAC52    mov         ebx,dword ptr [ebp-4]
 004AAC55    mov         edx,dword ptr [ebp-4]
 004AAC58    mov         eax,dword ptr [ebx+114];TApplication.?f114:dword
 004AAC5E    call        dword ptr [ebx+110];TApplication.FOnActivate
>004AAC64    jmp         004AADB9
 004AAC69    mov         eax,dword ptr [ebp-4]
 004AAC6C    cmp         word ptr [eax+10A],0;TApplication.?f10A:word
>004AAC74    je          004AADB9
 004AAC7A    mov         ebx,dword ptr [ebp-4]
 004AAC7D    mov         edx,dword ptr [ebp-4]
 004AAC80    mov         eax,dword ptr [ebx+10C];TApplication.?f10C:dword
 004AAC86    call        dword ptr [ebx+108];TApplication.FOnDeactivate
>004AAC8C    jmp         004AADB9
 004AAC91    mov         eax,dword ptr [ebp-4]
 004AAC94    mov         eax,dword ptr [eax+30];TApplication.FHandle:HWND
 004AAC97    push        eax
 004AAC98    call        user32.IsIconic
 004AAC9D    test        eax,eax
>004AAC9F    jne         004AADB9
 004AACA5    call        user32.GetFocus
 004AACAA    mov         edx,dword ptr [ebp-4]
 004AACAD    cmp         eax,dword ptr [edx+30];TApplication.FHandle:HWND
>004AACB0    jne         004AADB9
 004AACB6    xor         eax,eax
 004AACB8    call        004A03C4
 004AACBD    mov         dword ptr [ebp-14],eax
 004AACC0    cmp         dword ptr [ebp-14],0
>004AACC4    je          004AADB9
 004AACCA    mov         eax,dword ptr [ebp-14]
 004AACCD    push        eax
 004AACCE    call        user32.SetFocus
>004AACD3    jmp         004AADB9
 004AACD8    mov         ecx,dword ptr [ebp-8]
 004AACDB    mov         ecx,dword ptr [ecx+8]
 004AACDE    mov         edx,dword ptr [ebp-8]
 004AACE1    mov         dx,word ptr [edx+4]
 004AACE5    mov         eax,dword ptr [ebp-4]
 004AACE8    call        004ABB38
>004AACED    jmp         004AADB9
 004AACF2    mov         eax,dword ptr [ebp-8]
 004AACF5    cmp         dword ptr [eax+4],0
>004AACF9    jne         004AAD13
 004AACFB    mov         eax,dword ptr [ebp-8]
 004AACFE    mov         eax,dword ptr [eax+8]
 004AAD01    push        dword ptr [eax+4]
 004AAD04    push        dword ptr [eax]
 004AAD06    mov         eax,dword ptr [ebp-4]
 004AAD09    call        004AB560
>004AAD0E    jmp         004AADB9
 004AAD13    mov         eax,dword ptr [ebp-8]
 004AAD16    mov         eax,dword ptr [eax+8]
 004AAD19    push        dword ptr [eax+4]
 004AAD1C    push        dword ptr [eax]
 004AAD1E    mov         eax,dword ptr [ebp-4]
 004AAD21    call        004AB5D8
>004AAD26    jmp         004AADB9
 004AAD2B    mov         eax,dword ptr [ebp-8]
 004AAD2E    cmp         dword ptr [eax+4],1
>004AAD32    jne         004AAD45
 004AAD34    mov         eax,dword ptr [ebp-4]
 004AAD37    mov         eax,dword ptr [eax+0B0];TApplication.FDialogHandle:HWND
 004AAD3D    mov         edx,dword ptr [ebp-8]
 004AAD40    mov         dword ptr [edx+0C],eax
>004AAD43    jmp         004AADB9
 004AAD45    mov         eax,dword ptr [ebp-8]
 004AAD48    mov         eax,dword ptr [eax+8]
 004AAD4B    mov         edx,dword ptr [ebp-4]
 004AAD4E    mov         dword ptr [edx+0B0],eax;TApplication.FDialogHandle:HWND
>004AAD54    jmp         004AADB9
 004AAD56    mov         edx,dword ptr [ebp-8]
 004AAD59    mov         edx,dword ptr [edx+4]
 004AAD5C    mov         eax,[0056E5B4];^Mouse:TMouse
 004AAD61    mov         eax,dword ptr [eax]
 004AAD63    call        00491EDC
 004AAD68    mov         edx,dword ptr [ebp-8]
 004AAD6B    mov         eax,dword ptr [ebp-4]
 004AAD6E    call        004AA5C4
 004AAD73    push        ebp
 004AAD74    call        Default
 004AAD79    pop         ecx
>004AAD7A    jmp         004AADB9
 004AAD7C    mov         eax,[00571E40];0x0 Screen:TScreen
 004AAD81    call        004A9880
 004AAD86    push        ebp
 004AAD87    call        Default
 004AAD8C    pop         ecx
>004AAD8D    jmp         004AADB9
 004AAD8F    call        0046BFC0
 004AAD94    call        0046C0EC
 004AAD99    test        al,al
>004AAD9B    je          004AADB9
 004AAD9D    call        0046BFC0
 004AADA2    call        0046C194
>004AADA7    jmp         004AADB9
 004AADA9    xor         eax,eax
 004AADAB    call        0042A00C
>004AADB0    jmp         004AADB9
 004AADB2    push        ebp
 004AADB3    call        Default
 004AADB8    pop         ecx
 004AADB9    xor         eax,eax
 004AADBB    pop         edx
 004AADBC    pop         ecx
 004AADBD    pop         ecx
 004AADBE    mov         dword ptr fs:[eax],edx
>004AADC1    jmp         004AADD8
>004AADC3    jmp         @HandleAnyException
 004AADC8    mov         edx,dword ptr [ebp-4]
 004AADCB    mov         eax,dword ptr [ebp-4]
 004AADCE    call        TApplication.HandleException
 004AADD3    call        @DoneExcept
 004AADD8    pop         edi
 004AADD9    pop         esi
 004AADDA    pop         ebx
 004AADDB    mov         esp,ebp
 004AADDD    pop         ebp
 004AADDE    ret
end;*}

//004AAE0C
{*function sub_004AAE0C(?:TApplication):?;
begin
 004AAE0C    push        ebp
 004AAE0D    mov         ebp,esp
 004AAE0F    add         esp,0FFFFFFF8
 004AAE12    mov         dword ptr [ebp-4],eax
 004AAE15    mov         eax,dword ptr [ebp-4]
 004AAE18    mov         eax,dword ptr [eax+98];TApplication.FIcon:TIcon
 004AAE1E    call        00436708
 004AAE23    mov         dword ptr [ebp-8],eax
 004AAE26    cmp         dword ptr [ebp-8],0
>004AAE2A    jne         004AAE3B
 004AAE2C    push        7F00
 004AAE31    push        0
 004AAE33    call        user32.LoadIconA
 004AAE38    mov         dword ptr [ebp-8],eax
 004AAE3B    mov         eax,dword ptr [ebp-8]
 004AAE3E    pop         ecx
 004AAE3F    pop         ecx
 004AAE40    pop         ebp
 004AAE41    ret
end;*}

//004AAE44
procedure sub_004AAE44(?:TApplication);
begin
{*
 004AAE44    push        ebp
 004AAE45    mov         ebp,esp
 004AAE47    push        ecx
 004AAE48    push        ebx
 004AAE49    mov         dword ptr [ebp-4],eax
 004AAE4C    mov         eax,dword ptr [ebp-4]
 004AAE4F    mov         eax,dword ptr [eax+30];TApplication.FHandle:HWND
 004AAE52    push        eax
 004AAE53    call        user32.IsIconic
 004AAE58    test        eax,eax
>004AAE5A    jne         004AAF2A
 004AAE60    mov         eax,dword ptr [ebp-4]
 004AAE63    call        004AA440
 004AAE68    mov         eax,dword ptr [ebp-4]
 004AAE6B    mov         eax,dword ptr [eax+30];TApplication.FHandle:HWND
 004AAE6E    push        eax
 004AAE6F    call        user32.SetActiveWindow
 004AAE74    mov         eax,dword ptr [ebp-4]
 004AAE77    cmp         dword ptr [eax+44],0;TApplication.FMainForm:TForm
>004AAE7B    je          004AAEFB
 004AAE7D    mov         eax,dword ptr [ebp-4]
 004AAE80    cmp         byte ptr [eax+5B],0;TApplication.FShowMainForm:Boolean
>004AAE84    jne         004AAE92
 004AAE86    mov         eax,dword ptr [ebp-4]
 004AAE89    mov         eax,dword ptr [eax+44];TApplication.FMainForm:TForm
 004AAE8C    cmp         byte ptr [eax+57],0;TForm.FVisible:Boolean
>004AAE90    je          004AAEFB
 004AAE92    mov         eax,dword ptr [ebp-4]
 004AAE95    mov         eax,dword ptr [eax+44];TApplication.FMainForm:TForm
 004AAE98    call        TWinControl.GetHandle
 004AAE9D    push        eax
 004AAE9E    call        user32.IsWindowEnabled
 004AAEA3    test        eax,eax
>004AAEA5    je          004AAEFB
 004AAEA7    push        40
 004AAEA9    push        0
 004AAEAB    mov         eax,dword ptr [ebp-4]
 004AAEAE    mov         eax,dword ptr [eax+44];TApplication.FMainForm:TForm
 004AAEB1    mov         eax,dword ptr [eax+48];TForm.Width:Integer
 004AAEB4    push        eax
 004AAEB5    mov         eax,dword ptr [ebp-4]
 004AAEB8    mov         eax,dword ptr [eax+44];TApplication.FMainForm:TForm
 004AAEBB    mov         eax,dword ptr [eax+44];TForm.Top:Integer
 004AAEBE    push        eax
 004AAEBF    mov         eax,dword ptr [ebp-4]
 004AAEC2    mov         eax,dword ptr [eax+44];TApplication.FMainForm:TForm
 004AAEC5    mov         eax,dword ptr [eax+40];TForm.Left:Integer
 004AAEC8    push        eax
 004AAEC9    mov         eax,dword ptr [ebp-4]
 004AAECC    mov         eax,dword ptr [eax+44];TApplication.FMainForm:TForm
 004AAECF    call        TWinControl.GetHandle
 004AAED4    push        eax
 004AAED5    mov         eax,dword ptr [ebp-4]
 004AAED8    mov         eax,dword ptr [eax+30];TApplication.FHandle:HWND
 004AAEDB    push        eax
 004AAEDC    call        user32.SetWindowPos
 004AAEE1    push        0
 004AAEE3    push        0F020
 004AAEE8    push        112
 004AAEED    mov         eax,dword ptr [ebp-4]
 004AAEF0    mov         eax,dword ptr [eax+30];TApplication.FHandle:HWND
 004AAEF3    push        eax
 004AAEF4    call        user32.DefWindowProcA
>004AAEF9    jmp         004AAF0B
 004AAEFB    mov         edx,6
 004AAF00    mov         eax,dword ptr [ebp-4]
 004AAF03    mov         eax,dword ptr [eax+30];TApplication.FHandle:HWND
 004AAF06    call        004A9B68
 004AAF0B    mov         eax,dword ptr [ebp-4]
 004AAF0E    cmp         word ptr [eax+11A],0;TApplication.?f11A:word
>004AAF16    je          004AAF2A
 004AAF18    mov         ebx,dword ptr [ebp-4]
 004AAF1B    mov         edx,dword ptr [ebp-4]
 004AAF1E    mov         eax,dword ptr [ebx+11C];TApplication.?f11C:dword
 004AAF24    call        dword ptr [ebx+118];TApplication.FOnMinimize
 004AAF2A    pop         ebx
 004AAF2B    pop         ecx
 004AAF2C    pop         ebp
 004AAF2D    ret
*}
end;

//004AAF30
procedure sub_004AAF30(?:TApplication);
begin
{*
 004AAF30    push        ebp
 004AAF31    mov         ebp,esp
 004AAF33    push        ecx
 004AAF34    push        ebx
 004AAF35    mov         dword ptr [ebp-4],eax
 004AAF38    mov         eax,dword ptr [ebp-4]
 004AAF3B    mov         eax,dword ptr [eax+30];TApplication.FHandle:HWND
 004AAF3E    push        eax
 004AAF3F    call        user32.IsIconic
 004AAF44    test        eax,eax
>004AAF46    je          004AB070
 004AAF4C    mov         eax,dword ptr [ebp-4]
 004AAF4F    mov         eax,dword ptr [eax+30];TApplication.FHandle:HWND
 004AAF52    push        eax
 004AAF53    call        user32.SetActiveWindow
 004AAF58    mov         eax,dword ptr [ebp-4]
 004AAF5B    cmp         dword ptr [eax+44],0;TApplication.FMainForm:TForm
>004AAF5F    je          004AAFA5
 004AAF61    mov         eax,dword ptr [ebp-4]
 004AAF64    cmp         byte ptr [eax+5B],0;TApplication.FShowMainForm:Boolean
>004AAF68    jne         004AAF76
 004AAF6A    mov         eax,dword ptr [ebp-4]
 004AAF6D    mov         eax,dword ptr [eax+44];TApplication.FMainForm:TForm
 004AAF70    cmp         byte ptr [eax+57],0;TForm.FVisible:Boolean
>004AAF74    je          004AAFA5
 004AAF76    mov         eax,dword ptr [ebp-4]
 004AAF79    mov         eax,dword ptr [eax+44];TApplication.FMainForm:TForm
 004AAF7C    call        TWinControl.GetHandle
 004AAF81    push        eax
 004AAF82    call        user32.IsWindowEnabled
 004AAF87    test        eax,eax
>004AAF89    je          004AAFA5
 004AAF8B    push        0
 004AAF8D    push        0F120
 004AAF92    push        112
 004AAF97    mov         eax,dword ptr [ebp-4]
 004AAF9A    mov         eax,dword ptr [eax+30];TApplication.FHandle:HWND
 004AAF9D    push        eax
 004AAF9E    call        user32.DefWindowProcA
>004AAFA3    jmp         004AAFB5
 004AAFA5    mov         edx,9
 004AAFAA    mov         eax,dword ptr [ebp-4]
 004AAFAD    mov         eax,dword ptr [eax+30];TApplication.FHandle:HWND
 004AAFB0    call        004A9B68
 004AAFB5    push        40
 004AAFB7    push        0
 004AAFB9    push        0
 004AAFBB    push        1
 004AAFBD    mov         eax,[0056E1C0];^gvar_00571B2C
 004AAFC2    mov         eax,dword ptr [eax]
 004AAFC4    call        eax
 004AAFC6    sar         eax,1
>004AAFC8    jns         004AAFCD
 004AAFCA    adc         eax,0
 004AAFCD    push        eax
 004AAFCE    push        0
 004AAFD0    mov         eax,[0056E1C0];^gvar_00571B2C
 004AAFD5    mov         eax,dword ptr [eax]
 004AAFD7    call        eax
 004AAFD9    sar         eax,1
>004AAFDB    jns         004AAFE0
 004AAFDD    adc         eax,0
 004AAFE0    push        eax
 004AAFE1    push        0
 004AAFE3    mov         eax,dword ptr [ebp-4]
 004AAFE6    mov         eax,dword ptr [eax+30];TApplication.FHandle:HWND
 004AAFE9    push        eax
 004AAFEA    call        user32.SetWindowPos
 004AAFEF    mov         eax,dword ptr [ebp-4]
 004AAFF2    cmp         dword ptr [eax+44],0;TApplication.FMainForm:TForm
>004AAFF6    je          004AB02B
 004AAFF8    mov         eax,dword ptr [ebp-4]
 004AAFFB    mov         eax,dword ptr [eax+44];TApplication.FMainForm:TForm
 004AAFFE    cmp         byte ptr [eax+22B],1;TForm.FWindowState:TWindowState
>004AB005    jne         004AB02B
 004AB007    mov         eax,dword ptr [ebp-4]
 004AB00A    mov         eax,dword ptr [eax+44];TApplication.FMainForm:TForm
 004AB00D    cmp         byte ptr [eax+57],0;TForm.FVisible:Boolean
>004AB011    jne         004AB02B
 004AB013    xor         edx,edx
 004AB015    mov         eax,dword ptr [ebp-4]
 004AB018    mov         eax,dword ptr [eax+44];TApplication.FMainForm:TForm
 004AB01B    call        TForm.SetWindowState
 004AB020    mov         eax,dword ptr [ebp-4]
 004AB023    mov         eax,dword ptr [eax+44];TApplication.FMainForm:TForm
 004AB026    call        004A7450
 004AB02B    mov         eax,dword ptr [ebp-4]
 004AB02E    call        004AA468
 004AB033    mov         eax,[00571E40];0x0 Screen:TScreen
 004AB038    cmp         dword ptr [eax+64],0;TScreen.FActiveControl:TWinControl
>004AB03C    je          004AB051
 004AB03E    mov         eax,[00571E40];0x0 Screen:TScreen
 004AB043    mov         eax,dword ptr [eax+64];TScreen.FActiveControl:TWinControl
 004AB046    call        TWinControl.GetHandle
 004AB04B    push        eax
 004AB04C    call        user32.SetFocus
 004AB051    mov         eax,dword ptr [ebp-4]
 004AB054    cmp         word ptr [eax+122],0;TApplication.?f122:word
>004AB05C    je          004AB070
 004AB05E    mov         ebx,dword ptr [ebp-4]
 004AB061    mov         edx,dword ptr [ebp-4]
 004AB064    mov         eax,dword ptr [ebx+124];TApplication.?f124:dword
 004AB06A    call        dword ptr [ebx+120];TApplication.FOnRestore
 004AB070    pop         ebx
 004AB071    pop         ecx
 004AB072    pop         ebp
 004AB073    ret
*}
end;

//004AB074
procedure sub_004AB074(?:TApplication);
begin
{*
 004AB074    push        ebp
 004AB075    mov         ebp,esp
 004AB077    add         esp,0FFFFFFF8
 004AB07A    mov         dword ptr [ebp-4],eax
 004AB07D    mov         eax,dword ptr [ebp-4]
 004AB080    cmp         dword ptr [eax+30],0;TApplication.FHandle:HWND
>004AB084    je          004AB0C9
 004AB086    mov         eax,dword ptr [ebp-4]
 004AB089    mov         eax,dword ptr [eax+30];TApplication.FHandle:HWND
 004AB08C    push        eax
 004AB08D    call        user32.GetLastActivePopup
 004AB092    mov         dword ptr [ebp-8],eax
 004AB095    cmp         dword ptr [ebp-8],0
>004AB099    je          004AB0C9
 004AB09B    mov         eax,dword ptr [ebp-8]
 004AB09E    mov         edx,dword ptr [ebp-4]
 004AB0A1    cmp         eax,dword ptr [edx+30];TApplication.FHandle:HWND
>004AB0A4    je          004AB0C9
 004AB0A6    mov         eax,dword ptr [ebp-8]
 004AB0A9    push        eax
 004AB0AA    call        user32.IsWindowVisible
 004AB0AF    test        eax,eax
>004AB0B1    je          004AB0C9
 004AB0B3    mov         eax,dword ptr [ebp-8]
 004AB0B6    push        eax
 004AB0B7    call        user32.IsWindowEnabled
 004AB0BC    test        eax,eax
>004AB0BE    je          004AB0C9
 004AB0C0    mov         eax,dword ptr [ebp-8]
 004AB0C3    push        eax
 004AB0C4    call        user32.SetForegroundWindow
 004AB0C9    pop         ecx
 004AB0CA    pop         ecx
 004AB0CB    pop         ebp
 004AB0CC    ret
*}
end;

//004AB0D0
{*procedure sub_004AB0D0(?:TApplication; ?:?);
begin
 004AB0D0    push        ebp
 004AB0D1    mov         ebp,esp
 004AB0D3    add         esp,0FFFFFEF8
 004AB0D9    mov         dword ptr [ebp-8],edx
 004AB0DC    mov         dword ptr [ebp-4],eax
 004AB0DF    mov         eax,dword ptr [ebp-4]
 004AB0E2    cmp         byte ptr [eax+0A4],0;TApplication.FHandleCreated:Boolean
>004AB0E9    je          004AB115
 004AB0EB    push        100
 004AB0F0    lea         eax,[ebp-108]
 004AB0F6    push        eax
 004AB0F7    mov         eax,dword ptr [ebp-4]
 004AB0FA    mov         eax,dword ptr [eax+30];TApplication.FHandle:HWND
 004AB0FD    push        eax
 004AB0FE    call        user32.GetWindowTextA
 004AB103    mov         ecx,eax
 004AB105    lea         edx,[ebp-108]
 004AB10B    mov         eax,dword ptr [ebp-8]
 004AB10E    call        @LStrFromPCharLen
>004AB113    jmp         004AB126
 004AB115    mov         eax,dword ptr [ebp-8]
 004AB118    mov         edx,dword ptr [ebp-4]
 004AB11B    mov         edx,dword ptr [edx+8C];TApplication.FTitle:String
 004AB121    call        @LStrAsg
 004AB126    mov         esp,ebp
 004AB128    pop         ebp
 004AB129    ret
end;*}

//004AB12C
procedure sub_004AB12C(?:TApplication; ?:AnsiString);
begin
{*
 004AB12C    push        ebp
 004AB12D    mov         ebp,esp
 004AB12F    add         esp,0FFFFFFF4
 004AB132    xor         ecx,ecx
 004AB134    mov         dword ptr [ebp-0C],ecx
 004AB137    mov         dword ptr [ebp-8],edx
 004AB13A    mov         dword ptr [ebp-4],eax
 004AB13D    xor         eax,eax
 004AB13F    push        ebp
 004AB140    push        4AB1C5
 004AB145    push        dword ptr fs:[eax]
 004AB148    mov         dword ptr fs:[eax],esp
 004AB14B    mov         eax,dword ptr [ebp-4]
 004AB14E    cmp         byte ptr [eax+0A4],0
>004AB155    je          004AB19F
 004AB157    lea         edx,[ebp-0C]
 004AB15A    mov         eax,dword ptr [ebp-4]
 004AB15D    call        004AB0D0
 004AB162    mov         eax,dword ptr [ebp-0C]
 004AB165    mov         edx,dword ptr [ebp-8]
 004AB168    call        @LStrCmp
>004AB16D    jne         004AB17B
 004AB16F    mov         eax,dword ptr [ebp-4]
 004AB172    cmp         dword ptr [eax+8C],0
>004AB179    je          004AB1AF
 004AB17B    mov         eax,dword ptr [ebp-8]
 004AB17E    call        @LStrToPChar
 004AB183    push        eax
 004AB184    mov         eax,dword ptr [ebp-4]
 004AB187    mov         eax,dword ptr [eax+30]
 004AB18A    push        eax
 004AB18B    call        user32.SetWindowTextA
 004AB190    mov         eax,dword ptr [ebp-4]
 004AB193    add         eax,8C
 004AB198    call        @LStrClr
>004AB19D    jmp         004AB1AF
 004AB19F    mov         eax,dword ptr [ebp-4]
 004AB1A2    add         eax,8C
 004AB1A7    mov         edx,dword ptr [ebp-8]
 004AB1AA    call        @LStrAsg
 004AB1AF    xor         eax,eax
 004AB1B1    pop         edx
 004AB1B2    pop         ecx
 004AB1B3    pop         ecx
 004AB1B4    mov         dword ptr fs:[eax],edx
 004AB1B7    push        4AB1CC
 004AB1BC    lea         eax,[ebp-0C]
 004AB1BF    call        @LStrClr
 004AB1C4    ret
>004AB1C5    jmp         @HandleFinally
>004AB1CA    jmp         004AB1BC
 004AB1CC    mov         esp,ebp
 004AB1CE    pop         ebp
 004AB1CF    ret
*}
end;

//004AB1D0
{*function sub_004AB1D0(?:?; ?:?):?;
begin
 004AB1D0    push        ebp
 004AB1D1    mov         ebp,esp
 004AB1D3    add         esp,0FFFFFFF4
 004AB1D6    mov         dword ptr [ebp-8],edx
 004AB1D9    mov         dword ptr [ebp-4],eax
 004AB1DC    mov         byte ptr [ebp-9],0
 004AB1E0    mov         eax,dword ptr [ebp-4]
 004AB1E3    cmp         dword ptr [eax+0B0],0
>004AB1EA    je          004AB208
 004AB1EC    mov         eax,dword ptr [ebp-8]
 004AB1EF    push        eax
 004AB1F0    mov         eax,dword ptr [ebp-4]
 004AB1F3    mov         eax,dword ptr [eax+0B0]
 004AB1F9    push        eax
 004AB1FA    call        user32.IsDialogMessage
 004AB1FF    cmp         eax,1
 004AB202    sbb         eax,eax
 004AB204    inc         eax
 004AB205    mov         byte ptr [ebp-9],al
 004AB208    mov         al,byte ptr [ebp-9]
 004AB20B    mov         esp,ebp
 004AB20D    pop         ebp
 004AB20E    ret
end;*}

//004AB210
{*function sub_004AB210(?:TApplication; ?:?):?;
begin
 004AB210    push        ebp
 004AB211    mov         ebp,esp
 004AB213    add         esp,0FFFFFFF4
 004AB216    mov         dword ptr [ebp-8],edx
 004AB219    mov         dword ptr [ebp-4],eax
 004AB21C    mov         byte ptr [ebp-9],0
 004AB220    mov         eax,dword ptr [ebp-4]
 004AB223    cmp         dword ptr [eax+44],0
>004AB227    je          004AB273
 004AB229    mov         eax,dword ptr [ebp-4]
 004AB22C    mov         eax,dword ptr [eax+44]
 004AB22F    cmp         byte ptr [eax+22F],2
>004AB236    jne         004AB273
 004AB238    mov         eax,[00571E40];0x0 Screen:TScreen
 004AB23D    cmp         dword ptr [eax+6C],0;TScreen.FActiveForm:TForm
>004AB241    je          004AB273
 004AB243    mov         eax,[00571E40];0x0 Screen:TScreen
 004AB248    mov         eax,dword ptr [eax+6C];TScreen.FActiveForm:TForm
 004AB24B    cmp         byte ptr [eax+22F],1;TForm.FFormStyle:TFormStyle
>004AB252    jne         004AB273
 004AB254    mov         eax,dword ptr [ebp-8]
 004AB257    push        eax
 004AB258    mov         eax,dword ptr [ebp-4]
 004AB25B    mov         eax,dword ptr [eax+44]
 004AB25E    mov         eax,dword ptr [eax+254]
 004AB264    push        eax
 004AB265    call        user32.TranslateMDISysAccel
 004AB26A    cmp         eax,1
 004AB26D    sbb         eax,eax
 004AB26F    inc         eax
 004AB270    mov         byte ptr [ebp-9],al
 004AB273    mov         al,byte ptr [ebp-9]
 004AB276    mov         esp,ebp
 004AB278    pop         ebp
 004AB279    ret
end;*}

//004AB27C
{*function sub_004AB27C(?:TApplication; ?:?):?;
begin
 004AB27C    push        ebp
 004AB27D    mov         ebp,esp
 004AB27F    add         esp,0FFFFFFF0
 004AB282    mov         dword ptr [ebp-8],edx
 004AB285    mov         dword ptr [ebp-4],eax
 004AB288    mov         byte ptr [ebp-9],0
 004AB28C    mov         eax,dword ptr [ebp-8]
 004AB28F    cmp         dword ptr [eax+4],100
>004AB296    jb          004AB387
 004AB29C    mov         eax,dword ptr [ebp-8]
 004AB29F    cmp         dword ptr [eax+4],108
>004AB2A6    ja          004AB387
 004AB2AC    call        user32.GetCapture
 004AB2B1    mov         dword ptr [ebp-10],eax
 004AB2B4    cmp         dword ptr [ebp-10],0
>004AB2B8    jne         004AB349
 004AB2BE    mov         eax,dword ptr [ebp-8]
 004AB2C1    mov         eax,dword ptr [eax]
 004AB2C3    mov         dword ptr [ebp-10],eax
 004AB2C6    mov         eax,dword ptr [ebp-4]
 004AB2C9    cmp         dword ptr [eax+44],0
>004AB2CD    je          004AB2FC
 004AB2CF    mov         eax,dword ptr [ebp-4]
 004AB2D2    mov         eax,dword ptr [eax+44]
 004AB2D5    mov         eax,dword ptr [eax+254]
 004AB2DB    cmp         eax,dword ptr [ebp-10]
>004AB2DE    jne         004AB2FC
 004AB2E0    mov         eax,dword ptr [ebp-4]
 004AB2E3    mov         eax,dword ptr [eax+44]
 004AB2E6    call        TWinControl.GetHandle
 004AB2EB    mov         dword ptr [ebp-10],eax
>004AB2EE    jmp         004AB31C
 004AB2F0    mov         eax,dword ptr [ebp-10]
 004AB2F3    push        eax
 004AB2F4    call        user32.GetParent
 004AB2F9    mov         dword ptr [ebp-10],eax
 004AB2FC    mov         eax,dword ptr [ebp-10]
 004AB2FF    call        0047F79C
 004AB304    test        eax,eax
>004AB306    jne         004AB30E
 004AB308    cmp         dword ptr [ebp-10],0
>004AB30C    jne         004AB2F0
 004AB30E    cmp         dword ptr [ebp-10],0
>004AB312    jne         004AB31C
 004AB314    mov         eax,dword ptr [ebp-8]
 004AB317    mov         eax,dword ptr [eax]
 004AB319    mov         dword ptr [ebp-10],eax
 004AB31C    mov         eax,dword ptr [ebp-8]
 004AB31F    mov         eax,dword ptr [eax+0C]
 004AB322    push        eax
 004AB323    mov         eax,dword ptr [ebp-8]
 004AB326    mov         eax,dword ptr [eax+8]
 004AB329    push        eax
 004AB32A    mov         eax,dword ptr [ebp-8]
 004AB32D    mov         eax,dword ptr [eax+4]
 004AB330    add         eax,0BC00
 004AB335    push        eax
 004AB336    mov         eax,dword ptr [ebp-10]
 004AB339    push        eax
 004AB33A    call        user32.SendMessageA
 004AB33F    test        eax,eax
>004AB341    je          004AB387
 004AB343    mov         byte ptr [ebp-9],1
>004AB347    jmp         004AB387
 004AB349    push        0FA
 004AB34B    mov         eax,dword ptr [ebp-10]
 004AB34E    push        eax
 004AB34F    call        user32.GetWindowLongA
 004AB354    cmp         eax,dword ptr ds:[56F668];0x0 HInstance:LongWord
>004AB35A    jne         004AB387
 004AB35C    mov         eax,dword ptr [ebp-8]
 004AB35F    mov         eax,dword ptr [eax+0C]
 004AB362    push        eax
 004AB363    mov         eax,dword ptr [ebp-8]
 004AB366    mov         eax,dword ptr [eax+8]
 004AB369    push        eax
 004AB36A    mov         eax,dword ptr [ebp-8]
 004AB36D    mov         eax,dword ptr [eax+4]
 004AB370    add         eax,0BC00
 004AB375    push        eax
 004AB376    mov         eax,dword ptr [ebp-10]
 004AB379    push        eax
 004AB37A    call        user32.SendMessageA
 004AB37F    test        eax,eax
>004AB381    je          004AB387
 004AB383    mov         byte ptr [ebp-9],1
 004AB387    mov         al,byte ptr [ebp-9]
 004AB38A    mov         esp,ebp
 004AB38C    pop         ebp
 004AB38D    ret
end;*}

//004AB390
{*function sub_004AB390(?:TApplication; ?:?):?;
begin
 004AB390    push        ebp
 004AB391    mov         ebp,esp
 004AB393    add         esp,0FFFFFFF4
 004AB396    mov         dword ptr [ebp-8],edx
 004AB399    mov         dword ptr [ebp-4],eax
 004AB39C    mov         byte ptr [ebp-9],0
 004AB3A0    mov         eax,dword ptr [ebp-4]
 004AB3A3    cmp         dword ptr [eax+84],0;TApplication.FHintWindow:THintWindow
>004AB3AA    je          004AB3CC
 004AB3AC    mov         edx,dword ptr [ebp-8]
 004AB3AF    mov         eax,dword ptr [ebp-4]
 004AB3B2    mov         eax,dword ptr [eax+84];TApplication.FHintWindow:THintWindow
 004AB3B8    mov         ecx,dword ptr [eax]
 004AB3BA    call        dword ptr [ecx+0DC];THintWindow.sub_0048DBF8
 004AB3C0    test        al,al
>004AB3C2    je          004AB3CC
 004AB3C4    mov         eax,dword ptr [ebp-4]
 004AB3C7    call        004AC6B0
 004AB3CC    mov         al,byte ptr [ebp-9]
 004AB3CF    mov         esp,ebp
 004AB3D1    pop         ebp
 004AB3D2    ret
end;*}

//004AB3D4
{*function sub_004AB3D4(?:TApplication; ?:?):?;
begin
 004AB3D4    push        ebp
 004AB3D5    mov         ebp,esp
 004AB3D7    add         esp,0FFFFFFF4
 004AB3DA    push        ebx
 004AB3DB    push        esi
 004AB3DC    mov         dword ptr [ebp-8],edx
 004AB3DF    mov         dword ptr [ebp-4],eax
 004AB3E2    mov         byte ptr [ebp-9],0
 004AB3E6    mov         eax,dword ptr [ebp-4]
 004AB3E9    cmp         word ptr [eax+12A],0;TApplication.?f12A:word
>004AB3F1    je          004AB408
 004AB3F3    lea         ecx,[ebp-9]
 004AB3F6    mov         edx,dword ptr [ebp-8]
 004AB3F9    mov         ebx,dword ptr [ebp-4]
 004AB3FC    mov         eax,dword ptr [ebx+12C];TApplication.?f12C:dword
 004AB402    call        dword ptr [ebx+128];TApplication.FOnShortCut
 004AB408    cmp         byte ptr [ebp-9],0
>004AB40C    jne         004AB446
 004AB40E    mov         eax,dword ptr [ebp-4]
 004AB411    cmp         dword ptr [eax+44],0;TApplication.FMainForm:TForm
>004AB415    je          004AB442
 004AB417    mov         eax,dword ptr [ebp-4]
 004AB41A    mov         eax,dword ptr [eax+44];TApplication.FMainForm:TForm
 004AB41D    call        TWinControl.GetHandle
 004AB422    push        eax
 004AB423    call        user32.IsWindowEnabled
 004AB428    test        eax,eax
>004AB42A    je          004AB442
 004AB42C    mov         edx,dword ptr [ebp-8]
 004AB42F    mov         eax,dword ptr [ebp-4]
 004AB432    mov         eax,dword ptr [eax+44];TApplication.FMainForm:TForm
 004AB435    mov         si,0FFAB
 004AB439    call        @CallDynaInst;TCustomForm.sub_004A7C48
 004AB43E    test        al,al
>004AB440    jne         004AB446
 004AB442    xor         eax,eax
>004AB444    jmp         004AB448
 004AB446    mov         al,1
 004AB448    mov         byte ptr [ebp-9],al
 004AB44B    mov         al,byte ptr [ebp-9]
 004AB44E    pop         esi
 004AB44F    pop         ebx
 004AB450    mov         esp,ebp
 004AB452    pop         ebp
 004AB453    ret
end;*}

//004AB454
{*function sub_004AB454(?:TApplication; ?:?):?;
begin
 004AB454    push        ebp
 004AB455    mov         ebp,esp
 004AB457    add         esp,0FFFFFFF4
 004AB45A    push        ebx
 004AB45B    mov         dword ptr [ebp-8],edx
 004AB45E    mov         dword ptr [ebp-4],eax
 004AB461    mov         byte ptr [ebp-9],0
 004AB465    push        1
 004AB467    push        0
 004AB469    push        0
 004AB46B    push        0
 004AB46D    mov         eax,dword ptr [ebp-8]
 004AB470    push        eax
 004AB471    call        user32.PeekMessageA
 004AB476    test        eax,eax
>004AB478    je          004AB511
 004AB47E    mov         byte ptr [ebp-9],1
 004AB482    mov         eax,dword ptr [ebp-8]
 004AB485    cmp         dword ptr [eax+4],12
>004AB489    je          004AB507
 004AB48B    mov         byte ptr [ebp-0A],0
 004AB48F    mov         eax,dword ptr [ebp-4]
 004AB492    cmp         word ptr [eax+0DA],0
>004AB49A    je          004AB4B1
 004AB49C    lea         ecx,[ebp-0A]
 004AB49F    mov         edx,dword ptr [ebp-8]
 004AB4A2    mov         ebx,dword ptr [ebp-4]
 004AB4A5    mov         eax,dword ptr [ebx+0DC]
 004AB4AB    call        dword ptr [ebx+0D8]
 004AB4B1    mov         edx,dword ptr [ebp-8]
 004AB4B4    mov         eax,dword ptr [ebp-4]
 004AB4B7    call        004AB390
 004AB4BC    test        al,al
>004AB4BE    jne         004AB511
 004AB4C0    cmp         byte ptr [ebp-0A],0
>004AB4C4    jne         004AB511
 004AB4C6    mov         edx,dword ptr [ebp-8]
 004AB4C9    mov         eax,dword ptr [ebp-4]
 004AB4CC    call        004AB210
 004AB4D1    test        al,al
>004AB4D3    jne         004AB511
 004AB4D5    mov         edx,dword ptr [ebp-8]
 004AB4D8    mov         eax,dword ptr [ebp-4]
 004AB4DB    call        004AB27C
 004AB4E0    test        al,al
>004AB4E2    jne         004AB511
 004AB4E4    mov         edx,dword ptr [ebp-8]
 004AB4E7    mov         eax,dword ptr [ebp-4]
 004AB4EA    call        004AB1D0
 004AB4EF    test        al,al
>004AB4F1    jne         004AB511
 004AB4F3    mov         eax,dword ptr [ebp-8]
 004AB4F6    push        eax
 004AB4F7    call        user32.TranslateMessage
 004AB4FC    mov         eax,dword ptr [ebp-8]
 004AB4FF    push        eax
 004AB500    call        user32.DispatchMessageA
>004AB505    jmp         004AB511
 004AB507    mov         eax,dword ptr [ebp-4]
 004AB50A    mov         byte ptr [eax+9C],1
 004AB511    mov         al,byte ptr [ebp-9]
 004AB514    pop         ebx
 004AB515    mov         esp,ebp
 004AB517    pop         ebp
 004AB518    ret
end;*}

//004AB51C
procedure sub_004AB51C(?:TApplication);
begin
{*
 004AB51C    push        ebp
 004AB51D    mov         ebp,esp
 004AB51F    add         esp,0FFFFFFE0
 004AB522    mov         dword ptr [ebp-4],eax
 004AB525    lea         edx,[ebp-20]
 004AB528    mov         eax,dword ptr [ebp-4]
 004AB52B    call        004AB454
 004AB530    test        al,al
>004AB532    jne         004AB525
 004AB534    mov         esp,ebp
 004AB536    pop         ebp
 004AB537    ret
*}
end;

//004AB538
procedure sub_004AB538(?:TApplication);
begin
{*
 004AB538    push        ebp
 004AB539    mov         ebp,esp
 004AB53B    add         esp,0FFFFFFE0
 004AB53E    mov         dword ptr [ebp-4],eax
 004AB541    lea         edx,[ebp-20]
 004AB544    mov         eax,dword ptr [ebp-4]
 004AB547    call        004AB454
 004AB54C    test        al,al
>004AB54E    jne         004AB55B
 004AB550    lea         edx,[ebp-20]
 004AB553    mov         eax,dword ptr [ebp-4]
 004AB556    call        004AC074
 004AB55B    mov         esp,ebp
 004AB55D    pop         ebp
 004AB55E    ret
*}
end;

//004AB560
{*procedure sub_004AB560(?:TApplication; ?:?; ?:?);
begin
 004AB560    push        ebp
 004AB561    mov         ebp,esp
 004AB563    add         esp,0FFFFFFF8
 004AB566    mov         dword ptr [ebp-4],eax
 004AB569    mov         eax,dword ptr [ebp-4]
 004AB56C    cmp         byte ptr [eax+0A4],0;TApplication.FHandleCreated:Boolean
>004AB573    jne         004AB597
 004AB575    mov         eax,dword ptr [ebp-4]
 004AB578    cmp         dword ptr [eax+30],0;TApplication.FHandle:HWND
>004AB57C    je          004AB5D1
 004AB57E    lea         eax,[ebp+8]
 004AB581    push        eax
 004AB582    push        0
 004AB584    push        0B020
 004AB589    mov         eax,dword ptr [ebp-4]
 004AB58C    mov         eax,dword ptr [eax+30];TApplication.FHandle:HWND
 004AB58F    push        eax
 004AB590    call        user32.SendMessageA
>004AB595    jmp         004AB5D1
 004AB597    mov         eax,dword ptr [ebp-4]
 004AB59A    mov         eax,dword ptr [eax+0A8];TApplication.FWindowHooks:TList
 004AB5A0    call        004201D0
 004AB5A5    mov         eax,8
 004AB5AA    call        @GetMem
 004AB5AF    mov         dword ptr [ebp-8],eax
 004AB5B2    mov         eax,dword ptr [ebp-8]
 004AB5B5    mov         edx,dword ptr [ebp+8]
 004AB5B8    mov         dword ptr [eax],edx
 004AB5BA    mov         edx,dword ptr [ebp+0C]
 004AB5BD    mov         dword ptr [eax+4],edx
 004AB5C0    mov         edx,dword ptr [ebp-8]
 004AB5C3    mov         eax,dword ptr [ebp-4]
 004AB5C6    mov         eax,dword ptr [eax+0A8];TApplication.FWindowHooks:TList
 004AB5CC    call        TList.Add
 004AB5D1    pop         ecx
 004AB5D2    pop         ecx
 004AB5D3    pop         ebp
 004AB5D4    ret         8
end;*}

//004AB5D8
{*procedure sub_004AB5D8(?:TApplication; ?:?; ?:?);
begin
 004AB5D8    push        ebp
 004AB5D9    mov         ebp,esp
 004AB5DB    add         esp,0FFFFFFF0
 004AB5DE    mov         dword ptr [ebp-4],eax
 004AB5E1    mov         eax,dword ptr [ebp-4]
 004AB5E4    cmp         byte ptr [eax+0A4],0;TApplication.FHandleCreated:Boolean
>004AB5EB    jne         004AB613
 004AB5ED    mov         eax,dword ptr [ebp-4]
 004AB5F0    cmp         dword ptr [eax+30],0;TApplication.FHandle:HWND
>004AB5F4    je          004AB680
 004AB5FA    lea         eax,[ebp+8]
 004AB5FD    push        eax
 004AB5FE    push        1
 004AB600    push        0B020
 004AB605    mov         eax,dword ptr [ebp-4]
 004AB608    mov         eax,dword ptr [eax+30];TApplication.FHandle:HWND
 004AB60B    push        eax
 004AB60C    call        user32.SendMessageA
>004AB611    jmp         004AB680
 004AB613    mov         eax,dword ptr [ebp-4]
 004AB616    mov         eax,dword ptr [eax+0A8];TApplication.FWindowHooks:TList
 004AB61C    mov         eax,dword ptr [eax+8];TList.FCount:Integer
 004AB61F    dec         eax
 004AB620    test        eax,eax
>004AB622    jl          004AB680
 004AB624    inc         eax
 004AB625    mov         dword ptr [ebp-10],eax
 004AB628    mov         dword ptr [ebp-8],0
 004AB62F    mov         edx,dword ptr [ebp-8]
 004AB632    mov         eax,dword ptr [ebp-4]
 004AB635    mov         eax,dword ptr [eax+0A8];TApplication.FWindowHooks:TList
 004AB63B    call        TList.Get
 004AB640    mov         dword ptr [ebp-0C],eax
 004AB643    mov         eax,dword ptr [ebp-0C]
 004AB646    mov         eax,dword ptr [eax]
 004AB648    cmp         eax,dword ptr [ebp+8]
>004AB64B    jne         004AB678
 004AB64D    mov         eax,dword ptr [ebp-0C]
 004AB650    mov         eax,dword ptr [eax+4]
 004AB653    cmp         eax,dword ptr [ebp+0C]
>004AB656    jne         004AB678
 004AB658    mov         edx,8
 004AB65D    mov         eax,dword ptr [ebp-0C]
 004AB660    call        @FreeMem
 004AB665    mov         edx,dword ptr [ebp-8]
 004AB668    mov         eax,dword ptr [ebp-4]
 004AB66B    mov         eax,dword ptr [eax+0A8];TApplication.FWindowHooks:TList
 004AB671    call        00420094
>004AB676    jmp         004AB680
 004AB678    inc         dword ptr [ebp-8]
 004AB67B    dec         dword ptr [ebp-10]
>004AB67E    jne         004AB62F
 004AB680    mov         esp,ebp
 004AB682    pop         ebp
 004AB683    ret         8
end;*}

//004AB688
{*procedure sub_004AB688(?:?);
begin
 004AB688    push        ebp
 004AB689    mov         ebp,esp
 004AB68B    push        ecx
 004AB68C    push        ebx
 004AB68D    mov         dword ptr [ebp-4],eax
 004AB690    mov         eax,[0056E2B8];^gvar_0056F044
 004AB695    cmp         dword ptr [eax],0
>004AB698    je          004AB6A4
 004AB69A    mov         ebx,dword ptr ds:[56E2B8];^gvar_0056F044
 004AB6A0    mov         ebx,dword ptr [ebx]
 004AB6A2    call        ebx
 004AB6A4    pop         ebx
 004AB6A5    pop         ecx
 004AB6A6    pop         ebp
 004AB6A7    ret
end;*}

//004AB6A8
{*procedure sub_004AB6A8(?:?; ?:?; ?:?);
begin
 004AB6A8    push        ebp
 004AB6A9    mov         ebp,esp
 004AB6AB    add         esp,0FFFFFFF0
 004AB6AE    push        ebx
 004AB6AF    push        esi
 004AB6B0    push        edi
 004AB6B1    mov         dword ptr [ebp-0C],ecx
 004AB6B4    mov         dword ptr [ebp-8],edx
 004AB6B7    mov         dword ptr [ebp-4],eax
 004AB6BA    mov         eax,dword ptr [ebp-8]
 004AB6BD    call        dword ptr [eax-0C]
 004AB6C0    mov         dword ptr [ebp-10],eax
 004AB6C3    mov         eax,dword ptr [ebp-0C]
 004AB6C6    mov         edx,dword ptr [ebp-10]
 004AB6C9    mov         dword ptr [eax],edx
 004AB6CB    xor         eax,eax
 004AB6CD    push        ebp
 004AB6CE    push        4AB6F1
 004AB6D3    push        dword ptr fs:[eax]
 004AB6D6    mov         dword ptr fs:[eax],esp
 004AB6D9    mov         ecx,dword ptr [ebp-4]
 004AB6DC    or          edx,0FFFFFFFF
 004AB6DF    mov         eax,dword ptr [ebp-10]
 004AB6E2    mov         ebx,dword ptr [eax]
 004AB6E4    call        dword ptr [ebx+2C]
 004AB6E7    xor         eax,eax
 004AB6E9    pop         edx
 004AB6EA    pop         ecx
 004AB6EB    pop         ecx
 004AB6EC    mov         dword ptr fs:[eax],edx
>004AB6EF    jmp         004AB707
>004AB6F1    jmp         @HandleAnyException
 004AB6F6    mov         eax,dword ptr [ebp-0C]
 004AB6F9    xor         edx,edx
 004AB6FB    mov         dword ptr [eax],edx
 004AB6FD    call        @RaiseAgain
 004AB702    call        @DoneExcept
 004AB707    mov         eax,dword ptr [ebp-4]
 004AB70A    cmp         dword ptr [eax+44],0
>004AB70E    jne         004AB733
 004AB710    mov         eax,dword ptr [ebp-10]
 004AB713    mov         edx,dword ptr ds:[49EF70];TForm
 004AB719    call        @IsClass
 004AB71E    test        al,al
>004AB720    je          004AB733
 004AB722    mov         eax,dword ptr [ebp-10]
 004AB725    call        0048C0B0
 004AB72A    mov         eax,dword ptr [ebp-4]
 004AB72D    mov         edx,dword ptr [ebp-10]
 004AB730    mov         dword ptr [eax+44],edx
 004AB733    pop         edi
 004AB734    pop         esi
 004AB735    pop         ebx
 004AB736    mov         esp,ebp
 004AB738    pop         ebp
 004AB739    ret
end;*}

//004AB73C
{*procedure sub_004AB73C(?:?);
begin
 004AB73C    push        ebp
 004AB73D    mov         ebp,esp
 004AB73F    push        ecx
 004AB740    push        ebx
 004AB741    push        esi
 004AB742    push        edi
 004AB743    mov         dword ptr [ebp-4],eax
 004AB746    mov         eax,dword ptr [ebp-4]
 004AB749    mov         byte ptr [eax+0A5],1
 004AB750    xor         eax,eax
 004AB752    push        ebp
 004AB753    push        4AB82A
 004AB758    push        dword ptr fs:[eax]
 004AB75B    mov         dword ptr fs:[eax],esp
 004AB75E    mov         eax,4A0194;DoneApplication
 004AB763    call        0040BC78
 004AB768    mov         eax,dword ptr [ebp-4]
 004AB76B    cmp         dword ptr [eax+44],0
>004AB76F    je          004AB812
 004AB775    mov         eax,[0056E36C];^CmdShow:Integer
 004AB77A    mov         eax,dword ptr [eax]
 004AB77C    sub         eax,3
>004AB77F    je          004AB795
 004AB781    sub         eax,4
>004AB784    jne         004AB7A2
 004AB786    mov         eax,dword ptr [ebp-4]
 004AB789    mov         eax,dword ptr [eax+44]
 004AB78C    mov         byte ptr [eax+22B],1
>004AB793    jmp         004AB7A2
 004AB795    mov         eax,dword ptr [ebp-4]
 004AB798    mov         eax,dword ptr [eax+44]
 004AB79B    mov         dl,2
 004AB79D    call        TForm.SetWindowState
 004AB7A2    mov         eax,dword ptr [ebp-4]
 004AB7A5    cmp         byte ptr [eax+5B],0
>004AB7A9    je          004AB7D1
 004AB7AB    mov         eax,dword ptr [ebp-4]
 004AB7AE    mov         eax,dword ptr [eax+44]
 004AB7B1    cmp         byte ptr [eax+22B],1
>004AB7B8    jne         004AB7C4
 004AB7BA    mov         eax,dword ptr [ebp-4]
 004AB7BD    call        004AAE44
>004AB7C2    jmp         004AB7D1
 004AB7C4    mov         eax,dword ptr [ebp-4]
 004AB7C7    mov         eax,dword ptr [eax+44]
 004AB7CA    mov         dl,1
 004AB7CC    call        TCustomForm.SetVisible
 004AB7D1    xor         eax,eax
 004AB7D3    push        ebp
 004AB7D4    push        4AB7F1
 004AB7D9    push        dword ptr fs:[eax]
 004AB7DC    mov         dword ptr fs:[eax],esp
 004AB7DF    mov         eax,dword ptr [ebp-4]
 004AB7E2    call        004AB538
 004AB7E7    xor         eax,eax
 004AB7E9    pop         edx
 004AB7EA    pop         ecx
 004AB7EB    pop         ecx
 004AB7EC    mov         dword ptr fs:[eax],edx
>004AB7EF    jmp         004AB806
>004AB7F1    jmp         @HandleAnyException
 004AB7F6    mov         edx,dword ptr [ebp-4]
 004AB7F9    mov         eax,dword ptr [ebp-4]
 004AB7FC    call        TApplication.HandleException
 004AB801    call        @DoneExcept
 004AB806    mov         eax,dword ptr [ebp-4]
 004AB809    cmp         byte ptr [eax+9C],0
>004AB810    je          004AB7D1
 004AB812    xor         eax,eax
 004AB814    pop         edx
 004AB815    pop         ecx
 004AB816    pop         ecx
 004AB817    mov         dword ptr fs:[eax],edx
 004AB81A    push        4AB831
 004AB81F    mov         eax,dword ptr [ebp-4]
 004AB822    mov         byte ptr [eax+0A5],0
 004AB829    ret
>004AB82A    jmp         @HandleFinally
>004AB82F    jmp         004AB81F
 004AB831    pop         edi
 004AB832    pop         esi
 004AB833    pop         ebx
 004AB834    pop         ecx
 004AB835    pop         ebp
 004AB836    ret
end;*}

//004AB838
procedure sub_004AB838(?:TApplication);
begin
{*
 004AB838    push        ebp
 004AB839    mov         ebp,esp
 004AB83B    push        ecx
 004AB83C    mov         dword ptr [ebp-4],eax
 004AB83F    call        00412194
 004AB844    test        al,al
>004AB846    je          004AB84F
 004AB848    push        0
 004AB84A    call        user32.PostQuitMessage
 004AB84F    pop         ecx
 004AB850    pop         ebp
 004AB851    ret
*}
end;

//004AB854
procedure TApplication.HandleException(Sender:TObject);
begin
{*
 004AB854    push        ebp
 004AB855    mov         ebp,esp
 004AB857    add         esp,0FFFFFFF8
 004AB85A    push        ebx
 004AB85B    mov         dword ptr [ebp-8],edx
 004AB85E    mov         dword ptr [ebp-4],eax
 004AB861    call        user32.GetCapture
 004AB866    test        eax,eax
>004AB868    je          004AB87B
 004AB86A    push        0
 004AB86C    push        0
 004AB86E    push        1F
 004AB870    call        user32.GetCapture
 004AB875    push        eax
 004AB876    call        user32.SendMessageA
 004AB87B    call        ExceptObject
 004AB880    mov         edx,dword ptr ds:[40B004];Exception
 004AB886    call        @IsClass
 004AB88B    test        al,al
>004AB88D    je          004AB8DC
 004AB88F    call        ExceptObject
 004AB894    mov         edx,dword ptr ds:[56B0C4];gvar_0056B0C4
 004AB89A    call        @IsClass
 004AB89F    test        al,al
>004AB8A1    jne         004AB8ED
 004AB8A3    mov         eax,dword ptr [ebp-4]
 004AB8A6    cmp         word ptr [eax+0D2],0
>004AB8AE    je          004AB8CB
 004AB8B0    call        ExceptObject
 004AB8B5    mov         ecx,eax
 004AB8B7    mov         ebx,dword ptr [ebp-4]
 004AB8BA    mov         edx,dword ptr [ebp-8]
 004AB8BD    mov         eax,dword ptr [ebx+0D4]
 004AB8C3    call        dword ptr [ebx+0D0]
>004AB8C9    jmp         004AB8ED
 004AB8CB    call        ExceptObject
 004AB8D0    mov         edx,eax
 004AB8D2    mov         eax,dword ptr [ebp-4]
 004AB8D5    call        004ABA5C
>004AB8DA    jmp         004AB8ED
 004AB8DC    call        00402F04
 004AB8E1    push        eax
 004AB8E2    call        ExceptObject
 004AB8E7    pop         edx
 004AB8E8    call        004104C4
 004AB8ED    pop         ebx
 004AB8EE    pop         ecx
 004AB8EF    pop         ecx
 004AB8F0    pop         ebp
 004AB8F1    ret
*}
end;

//004AB8F4
{*function sub_004AB8F4(?:?; ?:PChar; ?:?; ?:?):?;
begin
 004AB8F4    push        ebp
 004AB8F5    mov         ebp,esp
 004AB8F7    add         esp,0FFFFFFA4
 004AB8FA    mov         dword ptr [ebp-0C],ecx
 004AB8FD    mov         dword ptr [ebp-8],edx
 004AB900    mov         dword ptr [ebp-4],eax
 004AB903    call        user32.GetActiveWindow
 004AB908    mov         dword ptr [ebp-14],eax
 004AB90B    push        2
 004AB90D    mov         eax,dword ptr [ebp-14]
 004AB910    push        eax
 004AB911    mov         eax,[0056E28C];^gvar_00571B30
 004AB916    mov         eax,dword ptr [eax]
 004AB918    call        eax
 004AB91A    mov         dword ptr [ebp-1C],eax
 004AB91D    push        2
 004AB91F    mov         eax,dword ptr [ebp-4]
 004AB922    mov         eax,dword ptr [eax+30]
 004AB925    push        eax
 004AB926    mov         eax,[0056E28C];^gvar_00571B30
 004AB92B    mov         eax,dword ptr [eax]
 004AB92D    call        eax
 004AB92F    mov         dword ptr [ebp-20],eax
 004AB932    mov         eax,dword ptr [ebp-1C]
 004AB935    cmp         eax,dword ptr [ebp-20]
>004AB938    je          004AB998
 004AB93A    mov         dword ptr [ebp-4C],28
 004AB941    lea         eax,[ebp-4C]
 004AB944    push        eax
 004AB945    mov         eax,dword ptr [ebp-1C]
 004AB948    push        eax
 004AB949    mov         eax,[0056E194];^gvar_00571B3C
 004AB94E    mov         eax,dword ptr [eax]
 004AB950    call        eax
 004AB952    lea         eax,[ebp-5C]
 004AB955    push        eax
 004AB956    mov         eax,dword ptr [ebp-4]
 004AB959    mov         eax,dword ptr [eax+30]
 004AB95C    push        eax
 004AB95D    call        user32.GetWindowRect
 004AB962    push        1D
 004AB964    push        0
 004AB966    push        0
 004AB968    mov         eax,dword ptr [ebp-3C]
 004AB96B    sub         eax,dword ptr [ebp-44]
 004AB96E    sar         eax,1
>004AB970    jns         004AB975
 004AB972    adc         eax,0
 004AB975    add         eax,dword ptr [ebp-44]
 004AB978    push        eax
 004AB979    mov         eax,dword ptr [ebp-40]
 004AB97C    sub         eax,dword ptr [ebp-48]
 004AB97F    sar         eax,1
>004AB981    jns         004AB986
 004AB983    adc         eax,0
 004AB986    add         eax,dword ptr [ebp-48]
 004AB989    push        eax
 004AB98A    push        0
 004AB98C    mov         eax,dword ptr [ebp-4]
 004AB98F    mov         eax,dword ptr [eax+30]
 004AB992    push        eax
 004AB993    call        user32.SetWindowPos
 004AB998    xor         eax,eax
 004AB99A    call        004A0240
 004AB99F    mov         dword ptr [ebp-18],eax
 004AB9A2    call        004A0100
 004AB9A7    mov         dword ptr [ebp-24],eax
 004AB9AA    mov         eax,dword ptr [ebp-4]
 004AB9AD    call        004AA4F4
 004AB9B2    test        al,al
>004AB9B4    je          004AB9BD
 004AB9B6    or          dword ptr [ebp+8],100000
 004AB9BD    xor         eax,eax
 004AB9BF    push        ebp
 004AB9C0    push        4ABA4B
 004AB9C5    push        dword ptr fs:[eax]
 004AB9C8    mov         dword ptr fs:[eax],esp
 004AB9CB    mov         eax,dword ptr [ebp+8]
 004AB9CE    push        eax
 004AB9CF    mov         eax,dword ptr [ebp-0C]
 004AB9D2    push        eax
 004AB9D3    mov         eax,dword ptr [ebp-8]
 004AB9D6    push        eax
 004AB9D7    mov         eax,dword ptr [ebp-4]
 004AB9DA    mov         eax,dword ptr [eax+30]
 004AB9DD    push        eax
 004AB9DE    call        user32.MessageBoxA
 004AB9E3    mov         dword ptr [ebp-10],eax
 004AB9E6    xor         eax,eax
 004AB9E8    pop         edx
 004AB9E9    pop         ecx
 004AB9EA    pop         ecx
 004AB9EB    mov         dword ptr fs:[eax],edx
 004AB9EE    push        4ABA52
 004AB9F3    mov         eax,dword ptr [ebp-1C]
 004AB9F6    cmp         eax,dword ptr [ebp-20]
>004AB9F9    je          004ABA31
 004AB9FB    push        1D
 004AB9FD    push        0
 004AB9FF    push        0
 004ABA01    mov         eax,dword ptr [ebp-50]
 004ABA04    sub         eax,dword ptr [ebp-58]
 004ABA07    sar         eax,1
>004ABA09    jns         004ABA0E
 004ABA0B    adc         eax,0
 004ABA0E    add         eax,dword ptr [ebp-58]
 004ABA11    push        eax
 004ABA12    mov         eax,dword ptr [ebp-54]
 004ABA15    sub         eax,dword ptr [ebp-5C]
 004ABA18    sar         eax,1
>004ABA1A    jns         004ABA1F
 004ABA1C    adc         eax,0
 004ABA1F    add         eax,dword ptr [ebp-5C]
 004ABA22    push        eax
 004ABA23    push        0
 004ABA25    mov         eax,dword ptr [ebp-4]
 004ABA28    mov         eax,dword ptr [eax+30]
 004ABA2B    push        eax
 004ABA2C    call        user32.SetWindowPos
 004ABA31    mov         eax,dword ptr [ebp-18]
 004ABA34    call        004A02F8
 004ABA39    mov         eax,dword ptr [ebp-14]
 004ABA3C    push        eax
 004ABA3D    call        user32.SetActiveWindow
 004ABA42    mov         eax,dword ptr [ebp-24]
 004ABA45    call        004A0114
 004ABA4A    ret
>004ABA4B    jmp         @HandleFinally
>004ABA50    jmp         004AB9F3
 004ABA52    mov         eax,dword ptr [ebp-10]
 004ABA55    mov         esp,ebp
 004ABA57    pop         ebp
 004ABA58    ret         4
end;*}

//004ABA5C
procedure sub_004ABA5C(?:TApplication; ?:Exception);
begin
{*
 004ABA5C    push        ebp
 004ABA5D    mov         ebp,esp
 004ABA5F    add         esp,0FFFFFEF0
 004ABA65    xor         ecx,ecx
 004ABA67    mov         dword ptr [ebp-110],ecx
 004ABA6D    mov         dword ptr [ebp-0C],ecx
 004ABA70    mov         dword ptr [ebp-8],edx
 004ABA73    mov         dword ptr [ebp-4],eax
 004ABA76    xor         eax,eax
 004ABA78    push        ebp
 004ABA79    push        4ABB1C
 004ABA7E    push        dword ptr fs:[eax]
 004ABA81    mov         dword ptr fs:[eax],esp
 004ABA84    lea         eax,[ebp-0C]
 004ABA87    mov         edx,dword ptr [ebp-8]
 004ABA8A    mov         edx,dword ptr [edx+4]
 004ABA8D    call        @LStrLAsg
 004ABA92    cmp         dword ptr [ebp-0C],0
>004ABA96    je          004ABACC
 004ABA98    mov         eax,dword ptr [ebp-0C]
 004ABA9B    call        0040CB00
 004ABAA0    mov         edx,eax
 004ABAA2    lea         eax,[ebp-10C]
 004ABAA8    call        @_CToPasStr
 004ABAAD    lea         eax,[ebp-10C]
 004ABAB3    mov         edx,4ABB28;'.'
 004ABAB8    call        @PStrCmp
>004ABABD    jbe         004ABACC
 004ABABF    lea         eax,[ebp-0C]
 004ABAC2    mov         edx,4ABB34;'.'
 004ABAC7    call        @LStrCat
 004ABACC    push        10
 004ABACE    lea         edx,[ebp-110]
 004ABAD4    mov         eax,dword ptr [ebp-4]
 004ABAD7    call        004AB0D0
 004ABADC    mov         eax,dword ptr [ebp-110]
 004ABAE2    call        @LStrToPChar
 004ABAE7    push        eax
 004ABAE8    mov         eax,dword ptr [ebp-0C]
 004ABAEB    call        @LStrToPChar
 004ABAF0    mov         edx,eax
 004ABAF2    mov         eax,dword ptr [ebp-4]
 004ABAF5    pop         ecx
 004ABAF6    call        004AB8F4
 004ABAFB    xor         eax,eax
 004ABAFD    pop         edx
 004ABAFE    pop         ecx
 004ABAFF    pop         ecx
 004ABB00    mov         dword ptr fs:[eax],edx
 004ABB03    push        4ABB23
 004ABB08    lea         eax,[ebp-110]
 004ABB0E    call        @LStrClr
 004ABB13    lea         eax,[ebp-0C]
 004ABB16    call        @LStrClr
 004ABB1B    ret
>004ABB1C    jmp         @HandleFinally
>004ABB21    jmp         004ABB08
 004ABB23    mov         esp,ebp
 004ABB25    pop         ebp
 004ABB26    ret
*}
end;

//004ABB38
{*function sub_004ABB38(?:TApplication; ?:?; ?:THelpContext):?;
begin
 004ABB38    push        ebp
 004ABB39    mov         ebp,esp
 004ABB3B    add         esp,0FFFFFFE8
 004ABB3E    push        ebx
 004ABB3F    mov         dword ptr [ebp-0C],ecx
 004ABB42    mov         word ptr [ebp-6],dx
 004ABB46    mov         dword ptr [ebp-4],eax
 004ABB49    mov         byte ptr [ebp-0D],0
 004ABB4D    mov         byte ptr [ebp-0E],1
 004ABB51    mov         eax,[00571E40];0x0 Screen:TScreen
 004ABB56    mov         eax,dword ptr [eax+68];TScreen.FActiveCustomForm:TCustomForm
 004ABB59    mov         dword ptr [ebp-18],eax
 004ABB5C    cmp         dword ptr [ebp-18],0
>004ABB60    je          004ABB8E
 004ABB62    mov         eax,dword ptr [ebp-18]
 004ABB65    cmp         word ptr [eax+2AA],0;TCustomForm.?f2AA:word
>004ABB6D    je          004ABB8E
 004ABB6F    lea         eax,[ebp-0E]
 004ABB72    push        eax
 004ABB73    mov         ebx,dword ptr [ebp-18]
 004ABB76    mov         ecx,dword ptr [ebp-0C]
 004ABB79    mov         dx,word ptr [ebp-6]
 004ABB7D    mov         eax,dword ptr [ebx+2AC];TCustomForm.?f2AC:dword
 004ABB83    call        dword ptr [ebx+2A8];TCustomForm.FOnHelp
 004ABB89    mov         byte ptr [ebp-0D],al
>004ABB8C    jmp         004ABBB8
 004ABB8E    mov         eax,dword ptr [ebp-4]
 004ABB91    cmp         word ptr [eax+0F2],0;TApplication.?fF2:word
>004ABB99    je          004ABBB8
 004ABB9B    lea         eax,[ebp-0E]
 004ABB9E    push        eax
 004ABB9F    mov         ebx,dword ptr [ebp-4]
 004ABBA2    mov         ecx,dword ptr [ebp-0C]
 004ABBA5    mov         dx,word ptr [ebp-6]
 004ABBA9    mov         eax,dword ptr [ebx+0F4];TApplication.?fF4:dword
 004ABBAF    call        dword ptr [ebx+0F0];TApplication.FOnHelp
 004ABBB5    mov         byte ptr [ebp-0D],al
 004ABBB8    cmp         dword ptr [ebp-18],0
>004ABBBC    je          004ABBF2
 004ABBBE    mov         eax,dword ptr [ebp-18]
 004ABBC1    test        byte ptr [eax+1C],10;TCustomForm.FComponentState:TComponentState
>004ABBC5    je          004ABBCB
 004ABBC7    mov         byte ptr [ebp-0E],0
 004ABBCB    mov         eax,dword ptr [ebp-18]
 004ABBCE    call        TPanel.GetTabOrder
 004ABBD3    cmp         ax,0FFFFFFFF
>004ABBD7    jne         004ABBF2
 004ABBD9    mov         eax,dword ptr [ebp-18]
 004ABBDC    cmp         byte ptr [eax+57],0;TCustomForm.FVisible:Boolean
>004ABBE0    jne         004ABBF2
 004ABBE2    mov         eax,dword ptr [ebp-18]
 004ABBE5    cmp         dword ptr [eax+220],0;TCustomForm.FActiveControl:TWinControl
>004ABBEC    jne         004ABBF2
 004ABBEE    mov         byte ptr [ebp-0E],0
 004ABBF2    cmp         byte ptr [ebp-0E],0
>004ABBF6    je          004ABCE1
 004ABBFC    cmp         byte ptr [ebp-0D],0
>004ABC00    jne         004ABCE1
 004ABC06    cmp         dword ptr [ebp-18],0
>004ABC0A    je          004ABC64
 004ABC0C    mov         eax,dword ptr [ebp-18]
 004ABC0F    call        TWinControl.HandleAllocated
 004ABC14    test        al,al
>004ABC16    je          004ABC64
 004ABC18    mov         eax,dword ptr [ebp-18]
 004ABC1B    cmp         dword ptr [eax+23C],0;TCustomForm.FHelpFile:String
>004ABC22    je          004ABC64
 004ABC24    mov         eax,dword ptr [ebp-18]
 004ABC27    call        TWinControl.GetHandle
 004ABC2C    mov         dword ptr [ebp-14],eax
 004ABC2F    mov         eax,dword ptr [ebp-4]
 004ABC32    call        004AC410
 004ABC37    test        al,al
>004ABC39    je          004ABCE1
 004ABC3F    mov         ax,word ptr [ebp-6]
 004ABC43    push        eax
 004ABC44    mov         eax,dword ptr [ebp-0C]
 004ABC47    push        eax
 004ABC48    mov         eax,dword ptr [ebp-18]
 004ABC4B    mov         ecx,dword ptr [eax+23C];TCustomForm.FHelpFile:String
 004ABC51    mov         edx,dword ptr [ebp-14]
 004ABC54    mov         eax,dword ptr [ebp-4]
 004ABC57    mov         eax,dword ptr [eax+4C];TApplication.FHelpSystem:IHelpSystem
 004ABC5A    mov         ebx,dword ptr [eax]
 004ABC5C    call        dword ptr [ebx+20]
 004ABC5F    mov         byte ptr [ebp-0D],al
>004ABC62    jmp         004ABCE1
 004ABC64    mov         eax,dword ptr [ebp-4]
 004ABC67    cmp         dword ptr [eax+50],0;TApplication.FHelpFile:String
>004ABC6B    je          004ABCBB
 004ABC6D    mov         eax,dword ptr [ebp-4]
 004ABC70    mov         eax,dword ptr [eax+30];TApplication.FHandle:HWND
 004ABC73    mov         dword ptr [ebp-14],eax
 004ABC76    mov         eax,dword ptr [ebp-4]
 004ABC79    cmp         dword ptr [eax+44],0;TApplication.FMainForm:TForm
>004ABC7D    je          004ABC8D
 004ABC7F    mov         eax,dword ptr [ebp-4]
 004ABC82    mov         eax,dword ptr [eax+44];TApplication.FMainForm:TForm
 004ABC85    call        TWinControl.GetHandle
 004ABC8A    mov         dword ptr [ebp-14],eax
 004ABC8D    mov         eax,dword ptr [ebp-4]
 004ABC90    call        004AC410
 004ABC95    test        al,al
>004ABC97    je          004ABCE1
 004ABC99    mov         ax,word ptr [ebp-6]
 004ABC9D    push        eax
 004ABC9E    mov         eax,dword ptr [ebp-0C]
 004ABCA1    push        eax
 004ABCA2    mov         eax,dword ptr [ebp-4]
 004ABCA5    mov         ecx,dword ptr [eax+50];TApplication.FHelpFile:String
 004ABCA8    mov         edx,dword ptr [ebp-14]
 004ABCAB    mov         eax,dword ptr [ebp-4]
 004ABCAE    mov         eax,dword ptr [eax+4C];TApplication.FHelpSystem:IHelpSystem
 004ABCB1    mov         ebx,dword ptr [eax]
 004ABCB3    call        dword ptr [ebx+20]
 004ABCB6    mov         byte ptr [ebp-0D],al
>004ABCB9    jmp         004ABCE1
 004ABCBB    mov         eax,dword ptr [ebp-4]
 004ABCBE    cmp         byte ptr [eax+0A4],0;TApplication.FHandleCreated:Boolean
>004ABCC5    jne         004ABCE1
 004ABCC7    mov         eax,dword ptr [ebp-0C]
 004ABCCA    push        eax
 004ABCCB    movzx       eax,word ptr [ebp-6]
 004ABCCF    push        eax
 004ABCD0    push        0B01F
 004ABCD5    mov         eax,dword ptr [ebp-4]
 004ABCD8    mov         eax,dword ptr [eax+30];TApplication.FHandle:HWND
 004ABCDB    push        eax
 004ABCDC    call        user32.PostMessageA
 004ABCE1    mov         al,byte ptr [ebp-0D]
 004ABCE4    pop         ebx
 004ABCE5    mov         esp,ebp
 004ABCE7    pop         ebp
 004ABCE8    ret
end;*}

//004ABCEC
{*function sub_004ABCEC(?:?; ?:PChar; ?:?):?;
begin
 004ABCEC    push        ebp
 004ABCED    mov         ebp,esp
 004ABCEF    add         esp,0FFFFFFEC
 004ABCF2    push        ebx
 004ABCF3    mov         dword ptr [ebp-0C],ecx
 004ABCF6    mov         dword ptr [ebp-8],edx
 004ABCF9    mov         word ptr [ebp-2],ax
 004ABCFD    mov         byte ptr [ebp-0D],0
 004ABD01    mov         eax,dword ptr [ebp-0C]
 004ABD04    mov         byte ptr [eax],1
 004ABD07    mov         eax,[00571E40];0x0 Screen:TScreen
 004ABD0C    mov         eax,dword ptr [eax+68];TScreen.FActiveCustomForm:TCustomForm
 004ABD0F    mov         dword ptr [ebp-14],eax
 004ABD12    cmp         dword ptr [ebp-14],0
>004ABD16    je          004ABD44
 004ABD18    mov         eax,dword ptr [ebp-14]
 004ABD1B    cmp         word ptr [eax+2AA],0;TCustomForm.?f2AA:word
>004ABD23    je          004ABD44
 004ABD25    mov         eax,dword ptr [ebp-0C]
 004ABD28    push        eax
 004ABD29    mov         ebx,dword ptr [ebp-14]
 004ABD2C    mov         ecx,dword ptr [ebp-8]
 004ABD2F    mov         dx,word ptr [ebp-2]
 004ABD33    mov         eax,dword ptr [ebx+2AC];TCustomForm.?f2AC:dword
 004ABD39    call        dword ptr [ebx+2A8];TCustomForm.FOnHelp
 004ABD3F    mov         byte ptr [ebp-0D],al
>004ABD42    jmp         004ABD73
 004ABD44    mov         eax,[00571E3C];0x0 Application:TApplication
 004ABD49    cmp         word ptr [eax+0F2],0;TApplication.?fF2:word
>004ABD51    je          004ABD73
 004ABD53    mov         eax,dword ptr [ebp-0C]
 004ABD56    push        eax
 004ABD57    mov         ebx,dword ptr ds:[571E3C];0x0 Application:TApplication
 004ABD5D    mov         ecx,dword ptr [ebp-8]
 004ABD60    mov         dx,word ptr [ebp-2]
 004ABD64    mov         eax,dword ptr [ebx+0F4];TApplication.?fF4:dword
 004ABD6A    call        dword ptr [ebx+0F0];TApplication.FOnHelp
 004ABD70    mov         byte ptr [ebp-0D],al
 004ABD73    mov         al,byte ptr [ebp-0D]
 004ABD76    pop         ebx
 004ABD77    mov         esp,ebp
 004ABD79    pop         ebp
 004ABD7A    ret
end;*}

//004ABD7C
{*function sub_004ABD7C(?:TApplication; ?:?):?;
begin
 004ABD7C    push        ebp
 004ABD7D    mov         ebp,esp
 004ABD7F    add         esp,0FFFFFFF0
 004ABD82    push        ebx
 004ABD83    xor         ecx,ecx
 004ABD85    mov         dword ptr [ebp-10],ecx
 004ABD88    mov         dword ptr [ebp-8],edx
 004ABD8B    mov         dword ptr [ebp-4],eax
 004ABD8E    xor         eax,eax
 004ABD90    push        ebp
 004ABD91    push        4ABE05
 004ABD96    push        dword ptr fs:[eax]
 004ABD99    mov         dword ptr fs:[eax],esp
 004ABD9C    mov         eax,dword ptr [ebp-8]
 004ABD9F    call        @LStrToPChar
 004ABDA4    mov         edx,eax
 004ABDA6    lea         ecx,[ebp-0A]
 004ABDA9    mov         ax,102
 004ABDAD    call        004ABCEC
 004ABDB2    mov         byte ptr [ebp-9],al
 004ABDB5    cmp         byte ptr [ebp-0A],0
>004ABDB9    je          004ABDEF
 004ABDBB    cmp         byte ptr [ebp-9],0
>004ABDBF    jne         004ABDEF
 004ABDC1    mov         eax,dword ptr [ebp-4]
 004ABDC4    call        004AC410
 004ABDC9    test        al,al
>004ABDCB    je          004ABDEB
 004ABDCD    lea         edx,[ebp-10]
 004ABDD0    mov         eax,dword ptr [ebp-4]
 004ABDD3    call        004ACD94
 004ABDD8    mov         ecx,dword ptr [ebp-10]
 004ABDDB    mov         edx,dword ptr [ebp-8]
 004ABDDE    mov         eax,dword ptr [ebp-4]
 004ABDE1    mov         eax,dword ptr [eax+4C];TApplication.FHelpSystem:IHelpSystem
 004ABDE4    mov         ebx,dword ptr [eax]
 004ABDE6    call        dword ptr [ebx+0C]
>004ABDE9    jmp         004ABDEF
 004ABDEB    mov         byte ptr [ebp-9],0
 004ABDEF    xor         eax,eax
 004ABDF1    pop         edx
 004ABDF2    pop         ecx
 004ABDF3    pop         ecx
 004ABDF4    mov         dword ptr fs:[eax],edx
 004ABDF7    push        4ABE0C
 004ABDFC    lea         eax,[ebp-10]
 004ABDFF    call        @LStrClr
 004ABE04    ret
>004ABE05    jmp         @HandleFinally
>004ABE0A    jmp         004ABDFC
 004ABE0C    mov         al,byte ptr [ebp-9]
 004ABE0F    pop         ebx
 004ABE10    mov         esp,ebp
 004ABE12    pop         ebp
 004ABE13    ret
end;*}

//004ABE14
{*function sub_004ABE14(?:TApplication; ?:THelpContext):?;
begin
 004ABE14    push        ebp
 004ABE15    mov         ebp,esp
 004ABE17    add         esp,0FFFFFFF0
 004ABE1A    push        ebx
 004ABE1B    xor         ecx,ecx
 004ABE1D    mov         dword ptr [ebp-10],ecx
 004ABE20    mov         dword ptr [ebp-8],edx
 004ABE23    mov         dword ptr [ebp-4],eax
 004ABE26    xor         eax,eax
 004ABE28    push        ebp
 004ABE29    push        4ABE96
 004ABE2E    push        dword ptr fs:[eax]
 004ABE31    mov         dword ptr fs:[eax],esp
 004ABE34    lea         ecx,[ebp-0A]
 004ABE37    mov         edx,dword ptr [ebp-8]
 004ABE3A    mov         ax,1
 004ABE3E    call        004ABCEC
 004ABE43    mov         byte ptr [ebp-9],al
 004ABE46    cmp         byte ptr [ebp-0A],0
>004ABE4A    je          004ABE80
 004ABE4C    cmp         byte ptr [ebp-9],0
>004ABE50    jne         004ABE80
 004ABE52    mov         eax,dword ptr [ebp-4]
 004ABE55    call        004AC410
 004ABE5A    test        al,al
>004ABE5C    je          004ABE7C
 004ABE5E    lea         edx,[ebp-10]
 004ABE61    mov         eax,dword ptr [ebp-4]
 004ABE64    call        004ACD94
 004ABE69    mov         ecx,dword ptr [ebp-10]
 004ABE6C    mov         edx,dword ptr [ebp-8]
 004ABE6F    mov         eax,dword ptr [ebp-4]
 004ABE72    mov         eax,dword ptr [eax+4C];TApplication.FHelpSystem:IHelpSystem
 004ABE75    mov         ebx,dword ptr [eax]
 004ABE77    call        dword ptr [ebx+10]
>004ABE7A    jmp         004ABE80
 004ABE7C    mov         byte ptr [ebp-9],0
 004ABE80    xor         eax,eax
 004ABE82    pop         edx
 004ABE83    pop         ecx
 004ABE84    pop         ecx
 004ABE85    mov         dword ptr fs:[eax],edx
 004ABE88    push        4ABE9D
 004ABE8D    lea         eax,[ebp-10]
 004ABE90    call        @LStrClr
 004ABE95    ret
>004ABE96    jmp         @HandleFinally
>004ABE9B    jmp         004ABE8D
 004ABE9D    mov         al,byte ptr [ebp-9]
 004ABEA0    pop         ebx
 004ABEA1    mov         esp,ebp
 004ABEA3    pop         ebp
 004ABEA4    ret
end;*}

//004ABEA8
{*function sub_004ABEA8(?:TApplication; ?:?; ?:THelpContext):?;
begin
 004ABEA8    push        ebp
 004ABEA9    mov         ebp,esp
 004ABEAB    add         esp,0FFFFFFF0
 004ABEAE    mov         dword ptr [ebp-0C],ecx
 004ABEB1    mov         dword ptr [ebp-8],edx
 004ABEB4    mov         dword ptr [ebp-4],eax
 004ABEB7    mov         ecx,dword ptr [ebp-0C]
 004ABEBA    mov         dx,word ptr [ebp-8]
 004ABEBE    mov         eax,dword ptr [ebp-4]
 004ABEC1    call        004ABB38
 004ABEC6    mov         byte ptr [ebp-0D],al
 004ABEC9    mov         al,byte ptr [ebp-0D]
 004ABECC    mov         esp,ebp
 004ABECE    pop         ebp
 004ABECF    ret
end;*}

//004ABED0
procedure sub_004ABED0(?:TApplication; ?:Boolean);
begin
{*
 004ABED0    push        ebp
 004ABED1    mov         ebp,esp
 004ABED3    add         esp,0FFFFFFF8
 004ABED6    mov         byte ptr [ebp-5],dl
 004ABED9    mov         dword ptr [ebp-4],eax
 004ABEDC    mov         eax,dword ptr [ebp-4]
 004ABEDF    mov         al,byte ptr [eax+88];TApplication.FShowHint:Boolean
 004ABEE5    cmp         al,byte ptr [ebp-5]
>004ABEE8    je          004ABF47
 004ABEEA    mov         al,byte ptr [ebp-5]
 004ABEED    mov         edx,dword ptr [ebp-4]
 004ABEF0    mov         byte ptr [edx+88],al;TApplication.FShowHint:Boolean
 004ABEF6    mov         eax,dword ptr [ebp-4]
 004ABEF9    cmp         byte ptr [eax+88],0;TApplication.FShowHint:Boolean
>004ABF00    je          004ABF2E
 004ABF02    mov         ecx,dword ptr [ebp-4]
 004ABF05    mov         dl,1
 004ABF07    mov         eax,[0056C9B8];^gvar_0047ED1C
 004ABF0C    call        dword ptr [eax+2C]
 004ABF0F    mov         edx,dword ptr [ebp-4]
 004ABF12    mov         dword ptr [edx+84],eax;TApplication.FHintWindow:THintWindow
 004ABF18    mov         eax,dword ptr [ebp-4]
 004ABF1B    mov         edx,dword ptr [eax+5C];TApplication.FHintColor:TColor
 004ABF1E    mov         eax,dword ptr [ebp-4]
 004ABF21    mov         eax,dword ptr [eax+84];TApplication.FHintWindow:THintWindow
 004ABF27    call        TPanel.SetColor
>004ABF2C    jmp         004ABF47
 004ABF2E    mov         eax,dword ptr [ebp-4]
 004ABF31    mov         eax,dword ptr [eax+84];TApplication.FHintWindow:THintWindow
 004ABF37    call        TObject.Free
 004ABF3C    mov         eax,dword ptr [ebp-4]
 004ABF3F    xor         edx,edx
 004ABF41    mov         dword ptr [eax+84],edx;TApplication.FHintWindow:THintWindow
 004ABF47    pop         ecx
 004ABF48    pop         ecx
 004ABF49    pop         ebp
 004ABF4A    ret
*}
end;

//004ABF4C
procedure sub_004ABF4C(?:TApplication);
begin
{*
 004ABF4C    push        ebp
 004ABF4D    mov         ebp,esp
 004ABF4F    add         esp,0FFFFFFF0
 004ABF52    mov         dword ptr [ebp-4],eax
 004ABF55    mov         eax,[00571E40];0x0 Screen:TScreen
 004ABF5A    call        004A89F4
 004ABF5F    dec         eax
 004ABF60    test        eax,eax
>004ABF62    jl          004ABFC2
 004ABF64    inc         eax
 004ABF65    mov         dword ptr [ebp-0C],eax
 004ABF68    mov         dword ptr [ebp-8],0
 004ABF6F    mov         edx,dword ptr [ebp-8]
 004ABF72    mov         eax,[00571E40];0x0 Screen:TScreen
 004ABF77    call        004A89D0
 004ABF7C    mov         dword ptr [ebp-10],eax
 004ABF7F    mov         eax,dword ptr [ebp-10]
 004ABF82    call        TWinControl.HandleAllocated
 004ABF87    test        al,al
>004ABF89    je          004ABFBA
 004ABF8B    mov         eax,dword ptr [ebp-10]
 004ABF8E    call        TWinControl.GetHandle
 004ABF93    push        eax
 004ABF94    call        user32.IsWindowVisible
 004ABF99    test        eax,eax
>004ABF9B    je          004ABFBA
 004ABF9D    mov         eax,dword ptr [ebp-10]
 004ABFA0    call        TWinControl.GetHandle
 004ABFA5    push        eax
 004ABFA6    call        user32.IsWindowEnabled
 004ABFAB    test        eax,eax
>004ABFAD    je          004ABFBA
 004ABFAF    mov         eax,dword ptr [ebp-10]
 004ABFB2    mov         edx,dword ptr [eax]
 004ABFB4    call        dword ptr [edx+0DC]
 004ABFBA    inc         dword ptr [ebp-8]
 004ABFBD    dec         dword ptr [ebp-0C]
>004ABFC0    jne         004ABF6F
 004ABFC2    mov         esp,ebp
 004ABFC4    pop         ebp
 004ABFC5    ret
*}
end;

//004ABFC8
{*function sub_004ABFC8(?:TApplication):?;
begin
 004ABFC8    push        ebp
 004ABFC9    mov         ebp,esp
 004ABFCB    add         esp,0FFFFFFEC
 004ABFCE    mov         dword ptr [ebp-4],eax
 004ABFD1    lea         eax,[ebp-14]
 004ABFD4    push        eax
 004ABFD5    call        user32.GetCursorPos
 004ABFDA    lea         eax,[ebp-14]
 004ABFDD    mov         dl,1
 004ABFDF    call        00481798
 004ABFE4    mov         dword ptr [ebp-8],eax
 004ABFE7    call        0047FB54
 004ABFEC    mov         dword ptr [ebp-0C],eax
 004ABFEF    mov         eax,dword ptr [ebp-4]
 004ABFF2    mov         eax,dword ptr [eax+48]
 004ABFF5    cmp         eax,dword ptr [ebp-8]
>004ABFF8    je          004AC06B
 004ABFFA    mov         eax,dword ptr [ebp-4]
 004ABFFD    cmp         dword ptr [eax+48],0
>004AC001    je          004AC009
 004AC003    cmp         dword ptr [ebp-0C],0
>004AC007    je          004AC01A
 004AC009    cmp         dword ptr [ebp-0C],0
>004AC00D    je          004AC02E
 004AC00F    mov         eax,dword ptr [ebp-4]
 004AC012    mov         eax,dword ptr [eax+48]
 004AC015    cmp         eax,dword ptr [ebp-0C]
>004AC018    jne         004AC02E
 004AC01A    push        0
 004AC01C    xor         ecx,ecx
 004AC01E    mov         edx,0B014
 004AC023    mov         eax,dword ptr [ebp-4]
 004AC026    mov         eax,dword ptr [eax+48]
 004AC029    call        00484FFC
 004AC02E    mov         eax,dword ptr [ebp-8]
 004AC031    mov         edx,dword ptr [ebp-4]
 004AC034    mov         dword ptr [edx+48],eax
 004AC037    mov         eax,dword ptr [ebp-4]
 004AC03A    cmp         dword ptr [eax+48],0
>004AC03E    je          004AC046
 004AC040    cmp         dword ptr [ebp-0C],0
>004AC044    je          004AC057
 004AC046    cmp         dword ptr [ebp-0C],0
>004AC04A    je          004AC06B
 004AC04C    mov         eax,dword ptr [ebp-4]
 004AC04F    mov         eax,dword ptr [eax+48]
 004AC052    cmp         eax,dword ptr [ebp-0C]
>004AC055    jne         004AC06B
 004AC057    push        0
 004AC059    xor         ecx,ecx
 004AC05B    mov         edx,0B013
 004AC060    mov         eax,dword ptr [ebp-4]
 004AC063    mov         eax,dword ptr [eax+48]
 004AC066    call        00484FFC
 004AC06B    mov         eax,dword ptr [ebp-8]
 004AC06E    mov         esp,ebp
 004AC070    pop         ebp
 004AC071    ret
end;*}

//004AC074
{*procedure sub_004AC074(?:TApplication; ?:?);
begin
 004AC074    push        ebp
 004AC075    mov         ebp,esp
 004AC077    add         esp,0FFFFFFE8
 004AC07A    push        ebx
 004AC07B    push        esi
 004AC07C    push        edi
 004AC07D    xor         ecx,ecx
 004AC07F    mov         dword ptr [ebp-14],ecx
 004AC082    mov         dword ptr [ebp-18],ecx
 004AC085    mov         dword ptr [ebp-10],edx
 004AC088    mov         dword ptr [ebp-4],eax
 004AC08B    xor         eax,eax
 004AC08D    push        ebp
 004AC08E    push        4AC189
 004AC093    push        dword ptr fs:[eax]
 004AC096    mov         dword ptr fs:[eax],esp
 004AC099    mov         eax,dword ptr [ebp-4]
 004AC09C    call        004ABFC8
 004AC0A1    mov         dword ptr [ebp-8],eax
 004AC0A4    mov         eax,dword ptr [ebp-4]
 004AC0A7    cmp         byte ptr [eax+88],0;TApplication.FShowHint:Boolean
>004AC0AE    je          004AC0C1
 004AC0B0    mov         eax,dword ptr [ebp-4]
 004AC0B3    cmp         dword ptr [eax+48],0;TApplication.FMouseControl:TControl
>004AC0B7    jne         004AC0C1
 004AC0B9    mov         eax,dword ptr [ebp-4]
 004AC0BC    call        004AC6B0
 004AC0C1    lea         edx,[ebp-18]
 004AC0C4    mov         eax,dword ptr [ebp-8]
 004AC0C7    call        004A9898
 004AC0CC    mov         eax,dword ptr [ebp-18]
 004AC0CF    lea         edx,[ebp-14]
 004AC0D2    call        0047FA98
 004AC0D7    mov         edx,dword ptr [ebp-14]
 004AC0DA    mov         eax,[00571E3C];0x0 Application:TApplication
 004AC0DF    call        004AC264
 004AC0E4    mov         byte ptr [ebp-9],1
 004AC0E8    xor         eax,eax
 004AC0EA    push        ebp
 004AC0EB    push        4AC130
 004AC0F0    push        dword ptr fs:[eax]
 004AC0F3    mov         dword ptr fs:[eax],esp
 004AC0F6    mov         eax,dword ptr [ebp-4]
 004AC0F9    cmp         word ptr [eax+102],0;TApplication.?f102:word
>004AC101    je          004AC118
 004AC103    lea         ecx,[ebp-9]
 004AC106    mov         ebx,dword ptr [ebp-4]
 004AC109    mov         edx,dword ptr [ebp-4]
 004AC10C    mov         eax,dword ptr [ebx+104];TApplication.?f104:dword
 004AC112    call        dword ptr [ebx+100];TApplication.FOnIdle
 004AC118    cmp         byte ptr [ebp-9],0
>004AC11C    je          004AC126
 004AC11E    mov         eax,dword ptr [ebp-4]
 004AC121    call        004ABF4C
 004AC126    xor         eax,eax
 004AC128    pop         edx
 004AC129    pop         ecx
 004AC12A    pop         ecx
 004AC12B    mov         dword ptr fs:[eax],edx
>004AC12E    jmp         004AC145
>004AC130    jmp         @HandleAnyException
 004AC135    mov         edx,dword ptr [ebp-4]
 004AC138    mov         eax,dword ptr [ebp-4]
 004AC13B    call        TApplication.HandleException
 004AC140    call        @DoneExcept
 004AC145    call        kernel32.GetCurrentThreadId
 004AC14A    mov         edx,dword ptr ds:[56E634];^MainThreadID:Cardinal
 004AC150    cmp         eax,dword ptr [edx]
>004AC152    jne         004AC163
 004AC154    xor         eax,eax
 004AC156    call        0042A00C
 004AC15B    test        al,al
>004AC15D    je          004AC163
 004AC15F    mov         byte ptr [ebp-9],0
 004AC163    cmp         byte ptr [ebp-9],0
>004AC167    je          004AC16E
 004AC169    call        user32.WaitMessage
 004AC16E    xor         eax,eax
 004AC170    pop         edx
 004AC171    pop         ecx
 004AC172    pop         ecx
 004AC173    mov         dword ptr fs:[eax],edx
 004AC176    push        4AC190
 004AC17B    lea         eax,[ebp-18]
 004AC17E    mov         edx,2
 004AC183    call        @LStrArrayClr
 004AC188    ret
>004AC189    jmp         @HandleFinally
>004AC18E    jmp         004AC17B
 004AC190    pop         edi
 004AC191    pop         esi
 004AC192    pop         ebx
 004AC193    mov         esp,ebp
 004AC195    pop         ebp
 004AC196    ret
end;*}

//004AC198
{*procedure sub_004AC198(?:TApplication; ?:?);
begin
 004AC198    push        ebp
 004AC199    mov         ebp,esp
 004AC19B    add         esp,0FFFFFFF0
 004AC19E    mov         word ptr [ebp-6],dx
 004AC1A2    mov         dword ptr [ebp-4],eax
 004AC1A5    mov         eax,[00571E40];0x0 Screen:TScreen
 004AC1AA    call        004A89B4
 004AC1AF    dec         eax
 004AC1B0    test        eax,eax
>004AC1B2    jl          004AC1E1
 004AC1B4    inc         eax
 004AC1B5    mov         dword ptr [ebp-10],eax
 004AC1B8    mov         dword ptr [ebp-0C],0
 004AC1BF    push        0
 004AC1C1    mov         edx,dword ptr [ebp-0C]
 004AC1C4    mov         eax,[00571E40];0x0 Screen:TScreen
 004AC1C9    call        004A8990
 004AC1CE    movzx       edx,word ptr [ebp-6]
 004AC1D2    xor         ecx,ecx
 004AC1D4    call        00484FFC
 004AC1D9    inc         dword ptr [ebp-0C]
 004AC1DC    dec         dword ptr [ebp-10]
>004AC1DF    jne         004AC1BF
 004AC1E1    mov         esp,ebp
 004AC1E3    pop         ebp
 004AC1E4    ret
end;*}

//004AC1E8
{*procedure sub_004AC1E8(?:?; ?:?);
begin
 004AC1E8    push        ebp
 004AC1E9    mov         ebp,esp
 004AC1EB    add         esp,0FFFFFFF8
 004AC1EE    mov         dword ptr [ebp-8],edx
 004AC1F1    mov         dword ptr [ebp-4],eax
 004AC1F4    mov         eax,[0056E264];^NewStyleControls:Boolean
 004AC1F9    cmp         byte ptr [eax],0
>004AC1FC    je          004AC233
 004AC1FE    mov         eax,dword ptr [ebp-4]
 004AC201    call        004AAE0C
 004AC206    push        eax
 004AC207    push        1
 004AC209    push        80
 004AC20E    mov         eax,dword ptr [ebp-4]
 004AC211    mov         eax,dword ptr [eax+30]
 004AC214    push        eax
 004AC215    call        user32.SendMessageA
 004AC21A    mov         eax,dword ptr [ebp-4]
 004AC21D    call        004AAE0C
 004AC222    push        eax
 004AC223    push        0F2
 004AC225    mov         eax,dword ptr [ebp-4]
 004AC228    mov         eax,dword ptr [eax+30]
 004AC22B    push        eax
 004AC22C    call        user32.SetClassLongA
>004AC231    jmp         004AC253
 004AC233    mov         eax,dword ptr [ebp-4]
 004AC236    mov         eax,dword ptr [eax+30]
 004AC239    push        eax
 004AC23A    call        user32.IsIconic
 004AC23F    test        eax,eax
>004AC241    je          004AC253
 004AC243    push        0FF
 004AC245    push        0
 004AC247    mov         eax,dword ptr [ebp-4]
 004AC24A    mov         eax,dword ptr [eax+30]
 004AC24D    push        eax
 004AC24E    call        user32.InvalidateRect
 004AC253    mov         dx,0B01D
 004AC257    mov         eax,dword ptr [ebp-4]
 004AC25A    call        004AC198
 004AC25F    pop         ecx
 004AC260    pop         ecx
 004AC261    pop         ebp
 004AC262    ret
end;*}

//004AC264
{*procedure sub_004AC264(?:TApplication; ?:?);
begin
 004AC264    push        ebp
 004AC265    mov         ebp,esp
 004AC267    add         esp,0FFFFFFF4
 004AC26A    push        ebx
 004AC26B    push        esi
 004AC26C    mov         dword ptr [ebp-8],edx
 004AC26F    mov         dword ptr [ebp-4],eax
 004AC272    mov         eax,dword ptr [ebp-4]
 004AC275    mov         eax,dword ptr [eax+54];TApplication.FHint:String
 004AC278    mov         edx,dword ptr [ebp-8]
 004AC27B    call        @LStrCmp
>004AC280    je          004AC309
 004AC286    mov         eax,dword ptr [ebp-4]
 004AC289    add         eax,54;TApplication.FHint:String
 004AC28C    mov         edx,dword ptr [ebp-8]
 004AC28F    call        @LStrAsg
 004AC294    mov         eax,dword ptr [ebp-4]
 004AC297    cmp         word ptr [eax+0FA],0;TApplication.?fFA:word
>004AC29F    je          004AC2B5
 004AC2A1    mov         ebx,dword ptr [ebp-4]
 004AC2A4    mov         edx,dword ptr [ebp-4]
 004AC2A7    mov         eax,dword ptr [ebx+0FC];TApplication.?fFC:dword
 004AC2AD    call        dword ptr [ebx+0F8];TApplication.FOnHint
>004AC2B3    jmp         004AC309
 004AC2B5    mov         ecx,dword ptr [ebp-4]
 004AC2B8    mov         dl,1
 004AC2BA    mov         eax,[0047B4A4];THintAction
 004AC2BF    call        THintAction.Create;THintAction.Create
 004AC2C4    mov         dword ptr [ebp-0C],eax
 004AC2C7    mov         edx,dword ptr [ebp-8]
 004AC2CA    mov         eax,dword ptr [ebp-0C]
 004AC2CD    call        TVirtualListAction.SetHint
 004AC2D2    xor         eax,eax
 004AC2D4    push        ebp
 004AC2D5    push        4AC302
 004AC2DA    push        dword ptr fs:[eax]
 004AC2DD    mov         dword ptr fs:[eax],esp
 004AC2E0    mov         eax,dword ptr [ebp-0C]
 004AC2E3    mov         si,0FFEF
 004AC2E7    call        @CallDynaInst;TCustomAction.sub_0042B128
 004AC2EC    xor         eax,eax
 004AC2EE    pop         edx
 004AC2EF    pop         ecx
 004AC2F0    pop         ecx
 004AC2F1    mov         dword ptr fs:[eax],edx
 004AC2F4    push        4AC309
 004AC2F9    mov         eax,dword ptr [ebp-0C]
 004AC2FC    call        TObject.Free
 004AC301    ret
>004AC302    jmp         @HandleFinally
>004AC307    jmp         004AC2F9
 004AC309    pop         esi
 004AC30A    pop         ebx
 004AC30B    mov         esp,ebp
 004AC30D    pop         ebp
 004AC30E    ret
end;*}

//004AC310
{*procedure sub_004AC310(?:?; ?:?);
begin
 004AC310    push        ebp
 004AC311    mov         ebp,esp
 004AC313    push        ecx
 004AC314    mov         byte ptr [ebp-1],al
 004AC317    mov         eax,dword ptr [ebp+8]
 004AC31A    mov         eax,dword ptr [eax-4]
 004AC31D    mov         eax,dword ptr [eax+30]
 004AC320    push        eax
 004AC321    call        user32.IsWindowVisible
 004AC326    cmp         eax,1
 004AC329    sbb         eax,eax
 004AC32B    inc         eax
 004AC32C    cmp         al,byte ptr ds:[56CAD8];0x0 gvar_0056CAD8
>004AC332    jne         004AC36D
 004AC334    mov         al,[0056CAD8];0x0 gvar_0056CAD8
 004AC339    cmp         al,byte ptr [ebp-1]
>004AC33C    je          004AC36D
 004AC33E    xor         eax,eax
 004AC340    mov         al,byte ptr [ebp-1]
 004AC343    movzx       eax,word ptr [eax*2+56CADC]
 004AC34B    push        eax
 004AC34C    push        0
 004AC34E    push        0
 004AC350    push        0
 004AC352    push        0
 004AC354    push        0
 004AC356    mov         eax,dword ptr [ebp+8]
 004AC359    mov         eax,dword ptr [eax-4]
 004AC35C    mov         eax,dword ptr [eax+30]
 004AC35F    push        eax
 004AC360    call        user32.SetWindowPos
 004AC365    mov         al,byte ptr [ebp-1]
 004AC368    mov         [0056CAD8],al;gvar_0056CAD8
 004AC36D    pop         ecx
 004AC36E    pop         ebp
 004AC36F    ret
end;*}

//004AC370
procedure sub_004AC370(?:TApplication);
begin
{*
 004AC370    push        ebp
 004AC371    mov         ebp,esp
 004AC373    add         esp,0FFFFFFF0
 004AC376    mov         dword ptr [ebp-4],eax
 004AC379    mov         eax,dword ptr [ebp-4]
 004AC37C    cmp         dword ptr [eax+30],0;TApplication.FHandle:HWND
>004AC380    je          004AC409
 004AC386    mov         eax,[00571E40];0x0 Screen:TScreen
 004AC38B    call        004A89B4
 004AC390    dec         eax
 004AC391    test        eax,eax
>004AC393    jl          004AC400
 004AC395    inc         eax
 004AC396    mov         dword ptr [ebp-10],eax
 004AC399    mov         dword ptr [ebp-8],0
 004AC3A0    mov         edx,dword ptr [ebp-8]
 004AC3A3    mov         eax,[00571E40];0x0 Screen:TScreen
 004AC3A8    call        004A8990
 004AC3AD    mov         dword ptr [ebp-0C],eax
 004AC3B0    mov         eax,dword ptr [ebp-0C]
 004AC3B3    cmp         byte ptr [eax+57],0
>004AC3B7    je          004AC3F8
 004AC3B9    mov         eax,dword ptr [ebp-0C]
 004AC3BC    cmp         dword ptr [eax+190],0
>004AC3C3    je          004AC3ED
 004AC3C5    mov         eax,dword ptr [ebp-0C]
 004AC3C8    call        TWinControl.HandleAllocated
 004AC3CD    test        al,al
>004AC3CF    jne         004AC3ED
 004AC3D1    mov         eax,dword ptr [ebp-0C]
 004AC3D4    mov         eax,dword ptr [eax+190]
 004AC3DA    push        eax
 004AC3DB    mov         eax,dword ptr [ebp-0C]
 004AC3DE    call        TWinControl.GetHandle
 004AC3E3    push        eax
 004AC3E4    call        user32.IsChild
 004AC3E9    test        eax,eax
>004AC3EB    jne         004AC3F8
 004AC3ED    push        ebp
 004AC3EE    mov         al,1
 004AC3F0    call        004AC310
 004AC3F5    pop         ecx
>004AC3F6    jmp         004AC409
 004AC3F8    inc         dword ptr [ebp-8]
 004AC3FB    dec         dword ptr [ebp-10]
>004AC3FE    jne         004AC3A0
 004AC400    push        ebp
 004AC401    xor         eax,eax
 004AC403    call        004AC310
 004AC408    pop         ecx
 004AC409    mov         esp,ebp
 004AC40B    pop         ebp
 004AC40C    ret
*}
end;

//004AC410
{*function sub_004AC410(?:TApplication):?;
begin
 004AC410    push        ebp
 004AC411    mov         ebp,esp
 004AC413    add         esp,0FFFFFFF8
 004AC416    mov         dword ptr [ebp-4],eax
 004AC419    mov         byte ptr [ebp-5],0
 004AC41D    mov         eax,dword ptr [ebp-4]
 004AC420    cmp         dword ptr [eax+4C],0;TApplication.FHelpSystem:IHelpSystem
>004AC424    jne         004AC436
 004AC426    mov         eax,dword ptr [ebp-4]
 004AC429    add         eax,4C;TApplication.FHelpSystem:IHelpSystem
 004AC42C    call        @IntfClear
 004AC431    call        00439008
 004AC436    mov         eax,dword ptr [ebp-4]
 004AC439    cmp         dword ptr [eax+4C],0;TApplication.FHelpSystem:IHelpSystem
>004AC43D    je          004AC443
 004AC43F    mov         byte ptr [ebp-5],1
 004AC443    mov         al,byte ptr [ebp-5]
 004AC446    pop         ecx
 004AC447    pop         ecx
 004AC448    pop         ebp
 004AC449    ret
end;*}

//004AC44C
{*procedure sub_004AC44C(?:TApplication; ?:Integer; ?:?);
begin
 004AC44C    push        ebp
 004AC44D    mov         ebp,esp
 004AC44F    add         esp,0FFFFFFF4
 004AC452    mov         byte ptr [ebp-9],cl
 004AC455    mov         dword ptr [ebp-8],edx
 004AC458    mov         dword ptr [ebp-4],eax
 004AC45B    mov         eax,dword ptr [ebp-4]
 004AC45E    call        004AC4A4
 004AC463    push        4A9930;HintTimerProc
 004AC468    mov         eax,dword ptr [ebp-8]
 004AC46B    push        eax
 004AC46C    push        0
 004AC46E    push        0
 004AC470    call        user32.SetTimer
 004AC475    mov         edx,dword ptr [ebp-4]
 004AC478    mov         word ptr [edx+8A],ax
 004AC47F    mov         al,byte ptr [ebp-9]
 004AC482    mov         edx,dword ptr [ebp-4]
 004AC485    mov         byte ptr [edx+89],al
 004AC48B    mov         eax,dword ptr [ebp-4]
 004AC48E    cmp         word ptr [eax+8A],0
>004AC496    jne         004AC4A0
 004AC498    mov         eax,dword ptr [ebp-4]
 004AC49B    call        004AC6B0
 004AC4A0    mov         esp,ebp
 004AC4A2    pop         ebp
 004AC4A3    ret
end;*}

//004AC4A4
procedure sub_004AC4A4(?:TApplication);
begin
{*
 004AC4A4    push        ebp
 004AC4A5    mov         ebp,esp
 004AC4A7    push        ecx
 004AC4A8    mov         dword ptr [ebp-4],eax
 004AC4AB    mov         eax,dword ptr [ebp-4]
 004AC4AE    cmp         word ptr [eax+8A],0
>004AC4B6    je          004AC4D6
 004AC4B8    mov         eax,dword ptr [ebp-4]
 004AC4BB    movzx       eax,word ptr [eax+8A]
 004AC4C2    push        eax
 004AC4C3    push        0
 004AC4C5    call        user32.KillTimer
 004AC4CA    mov         eax,dword ptr [ebp-4]
 004AC4CD    mov         word ptr [eax+8A],0
 004AC4D6    pop         ecx
 004AC4D7    pop         ebp
 004AC4D8    ret
*}
end;

//004AC4DC
{*procedure sub_004AC4DC(?:TApplication; ?:TControl; ?:?);
begin
 004AC4DC    push        ebp
 004AC4DD    mov         ebp,esp
 004AC4DF    add         esp,0FFFFFFD0
 004AC4E2    mov         dword ptr [ebp-0C],ecx
 004AC4E5    mov         dword ptr [ebp-8],edx
 004AC4E8    mov         dword ptr [ebp-4],eax
 004AC4EB    lea         edx,[ebp-30]
 004AC4EE    mov         eax,dword ptr [ebp-0C]
 004AC4F1    mov         eax,dword ptr [eax+8]
 004AC4F4    call        00408640
 004AC4F9    lea         edx,[ebp-30]
 004AC4FC    lea         ecx,[ebp-28]
 004AC4FF    mov         eax,dword ptr [ebp-8]
 004AC502    call        TControl.ClientToScreen
 004AC507    lea         eax,[ebp-28]
 004AC50A    mov         dl,1
 004AC50C    call        00481798
 004AC511    call        004A98E8
 004AC516    mov         dword ptr [ebp-10],eax
 004AC519    cmp         dword ptr [ebp-10],0
>004AC51D    je          004AC52B
 004AC51F    mov         eax,dword ptr [ebp-10]
 004AC522    cmp         byte ptr [eax+99],0
>004AC529    jne         004AC538
 004AC52B    mov         eax,dword ptr [ebp-4]
 004AC52E    call        004AC6B0
>004AC533    jmp         004AC610
 004AC538    mov         eax,dword ptr [ebp-10]
 004AC53B    mov         edx,dword ptr [ebp-4]
 004AC53E    cmp         eax,dword ptr [edx+60];TApplication.FHintControl:TControl
>004AC541    jne         004AC579
 004AC543    lea         edx,[ebp-30]
 004AC546    mov         eax,dword ptr [ebp-0C]
 004AC549    mov         eax,dword ptr [eax+8]
 004AC54C    call        00408640
 004AC551    lea         edx,[ebp-30]
 004AC554    lea         ecx,[ebp-28]
 004AC557    mov         eax,dword ptr [ebp-8]
 004AC55A    call        TControl.ClientToScreen
 004AC55F    push        dword ptr [ebp-24]
 004AC562    push        dword ptr [ebp-28]
 004AC565    mov         eax,dword ptr [ebp-4]
 004AC568    add         eax,64;TApplication.FHintCursorRect:TRect
 004AC56B    push        eax
 004AC56C    call        user32.PtInRect
 004AC571    test        eax,eax
>004AC573    jne         004AC610
 004AC579    mov         eax,dword ptr [ebp-4]
 004AC57C    mov         al,byte ptr [eax+58];TApplication.FHintActive:Boolean
 004AC57F    mov         byte ptr [ebp-15],al
 004AC582    cmp         byte ptr [ebp-15],0
>004AC586    je          004AC596
 004AC588    mov         eax,dword ptr [ebp-4]
 004AC58B    mov         eax,dword ptr [eax+80];TApplication.FHintShortPause:Integer
 004AC591    mov         dword ptr [ebp-14],eax
>004AC594    jmp         004AC59F
 004AC596    mov         eax,dword ptr [ebp-4]
 004AC599    mov         eax,dword ptr [eax+78];TApplication.FHintPause:Integer
 004AC59C    mov         dword ptr [ebp-14],eax
 004AC59F    lea         eax,[ebp-14]
 004AC5A2    push        eax
 004AC5A3    xor         ecx,ecx
 004AC5A5    mov         cl,byte ptr [ebp-15]
 004AC5A8    mov         edx,0B041
 004AC5AD    mov         eax,dword ptr [ebp-10]
 004AC5B0    call        00484FFC
 004AC5B5    cmp         byte ptr [ebp-15],0
>004AC5B9    je          004AC5E9
 004AC5BB    cmp         dword ptr [ebp-14],0
>004AC5BF    jne         004AC5E9
 004AC5C1    mov         al,byte ptr [ebp-15]
 004AC5C4    mov         edx,dword ptr [ebp-4]
 004AC5C7    mov         byte ptr [edx+58],al;TApplication.FHintActive:Boolean
 004AC5CA    mov         eax,dword ptr [ebp-10]
 004AC5CD    mov         edx,dword ptr [ebp-4]
 004AC5D0    mov         dword ptr [edx+60],eax;TApplication.FHintControl:TControl
 004AC5D3    lea         eax,[ebp-1D]
 004AC5D6    push        eax
 004AC5D7    call        user32.GetCursorPos
 004AC5DC    lea         edx,[ebp-1D]
 004AC5DF    mov         eax,dword ptr [ebp-4]
 004AC5E2    call        004AC9C0
>004AC5E7    jmp         004AC610
 004AC5E9    mov         eax,dword ptr [ebp-4]
 004AC5EC    call        004AC6B0
 004AC5F1    mov         al,byte ptr [ebp-15]
 004AC5F4    mov         edx,dword ptr [ebp-4]
 004AC5F7    mov         byte ptr [edx+58],al;TApplication.FHintActive:Boolean
 004AC5FA    mov         eax,dword ptr [ebp-10]
 004AC5FD    mov         edx,dword ptr [ebp-4]
 004AC600    mov         dword ptr [edx+60],eax;TApplication.FHintControl:TControl
 004AC603    xor         ecx,ecx
 004AC605    mov         edx,dword ptr [ebp-14]
 004AC608    mov         eax,dword ptr [ebp-4]
 004AC60B    call        004AC44C
 004AC610    mov         esp,ebp
 004AC612    pop         ebp
 004AC613    ret
end;*}

//004AC614
procedure TApplication.HintTimerExpired;
begin
{*
 004AC614    push        ebp
 004AC615    mov         ebp,esp
 004AC617    add         esp,0FFFFFFF4
 004AC61A    mov         dword ptr [ebp-4],eax
 004AC61D    mov         eax,dword ptr [ebp-4]
 004AC620    call        004AC4A4
 004AC625    mov         eax,dword ptr [ebp-4]
 004AC628    mov         al,byte ptr [eax+89]
 004AC62E    sub         al,1
>004AC630    jb          004AC63E
>004AC632    jne         004AC652
 004AC634    mov         eax,dword ptr [ebp-4]
 004AC637    call        004AC658
>004AC63C    jmp         004AC652
 004AC63E    lea         eax,[ebp-0C]
 004AC641    push        eax
 004AC642    call        user32.GetCursorPos
 004AC647    lea         edx,[ebp-0C]
 004AC64A    mov         eax,dword ptr [ebp-4]
 004AC64D    call        004AC9C0
 004AC652    mov         esp,ebp
 004AC654    pop         ebp
 004AC655    ret
*}
end;

//004AC658
procedure sub_004AC658(?:TApplication);
begin
{*
 004AC658    push        ebp
 004AC659    mov         ebp,esp
 004AC65B    push        ecx
 004AC65C    mov         dword ptr [ebp-4],eax
 004AC65F    mov         eax,dword ptr [ebp-4]
 004AC662    cmp         dword ptr [eax+84],0
>004AC669    je          004AC6AB
 004AC66B    mov         eax,dword ptr [ebp-4]
 004AC66E    mov         eax,dword ptr [eax+84]
 004AC674    call        TWinControl.HandleAllocated
 004AC679    test        al,al
>004AC67B    je          004AC6AB
 004AC67D    mov         eax,dword ptr [ebp-4]
 004AC680    mov         eax,dword ptr [eax+84]
 004AC686    call        TWinControl.GetHandle
 004AC68B    push        eax
 004AC68C    call        user32.IsWindowVisible
 004AC691    test        eax,eax
>004AC693    je          004AC6AB
 004AC695    push        0
 004AC697    mov         eax,dword ptr [ebp-4]
 004AC69A    mov         eax,dword ptr [eax+84]
 004AC6A0    call        TWinControl.GetHandle
 004AC6A5    push        eax
 004AC6A6    call        user32.ShowWindow
 004AC6AB    pop         ecx
 004AC6AC    pop         ebp
 004AC6AD    ret
*}
end;

//004AC6B0
procedure sub_004AC6B0(?:TApplication);
begin
{*
 004AC6B0    push        ebp
 004AC6B1    mov         ebp,esp
 004AC6B3    push        ecx
 004AC6B4    mov         dword ptr [ebp-4],eax
 004AC6B7    mov         eax,dword ptr [ebp-4]
 004AC6BA    cmp         dword ptr [eax+60],0;TApplication.FHintControl:TControl
>004AC6BE    je          004AC6E4
 004AC6C0    mov         eax,dword ptr [ebp-4]
 004AC6C3    call        004AC658
 004AC6C8    mov         eax,dword ptr [ebp-4]
 004AC6CB    xor         edx,edx
 004AC6CD    mov         dword ptr [eax+60],edx;TApplication.FHintControl:TControl
 004AC6D0    mov         eax,dword ptr [ebp-4]
 004AC6D3    mov         byte ptr [eax+58],0;TApplication.FHintActive:Boolean
 004AC6D7    call        UnhookHintHooks
 004AC6DC    mov         eax,dword ptr [ebp-4]
 004AC6DF    call        004AC4A4
 004AC6E4    pop         ecx
 004AC6E5    pop         ebp
 004AC6E6    ret
*}
end;

//004AC6E8
{*function sub_004AC6E8(?:?; ?:Integer):?;
begin
 004AC6E8    push        ebp
 004AC6E9    mov         ebp,esp
 004AC6EB    push        ecx
 004AC6EC    mov         ecx,edx
 004AC6EE    mov         edx,edi
 004AC6F0    mov         edi,eax
 004AC6F2    pop         eax
 004AC6F3    repe scas   byte ptr [edi]
 004AC6F5    mov         eax,ecx
 004AC6F7    mov         edi,edx
 004AC6F9    pop         ebp
 004AC6FA    ret
end;*}

//004AC6FC
{*function sub_004AC6FC:?;
begin
 004AC6FC    push        ebp
 004AC6FD    mov         ebp,esp
 004AC6FF    add         esp,0FFFFFFCC
 004AC702    push        0E
 004AC704    mov         eax,[0056E1C0];^gvar_00571B2C
 004AC709    mov         eax,dword ptr [eax]
 004AC70B    call        eax
 004AC70D    mov         dword ptr [ebp-4],eax
 004AC710    lea         eax,[ebp-34]
 004AC713    push        eax
 004AC714    call        user32.GetCursor
 004AC719    push        eax
 004AC71A    call        user32.GetIconInfo
 004AC71F    test        eax,eax
>004AC721    je          004AC877
 004AC727    xor         eax,eax
 004AC729    push        ebp
 004AC72A    push        4AC870
 004AC72F    push        dword ptr fs:[eax]
 004AC732    mov         dword ptr fs:[eax],esp
 004AC735    lea         ecx,[ebp-0C]
 004AC738    lea         edx,[ebp-8]
 004AC73B    mov         eax,dword ptr [ebp-28]
 004AC73E    call        00430D10
 004AC743    mov         eax,dword ptr [ebp-8]
 004AC746    add         eax,dword ptr [ebp-0C]
 004AC749    call        0040BC0C
 004AC74E    mov         dword ptr [ebp-14],eax
 004AC751    xor         eax,eax
 004AC753    push        ebp
 004AC754    push        4AC83D
 004AC759    push        dword ptr fs:[eax]
 004AC75C    mov         dword ptr fs:[eax],esp
 004AC75F    mov         eax,dword ptr [ebp-14]
 004AC762    add         eax,dword ptr [ebp-8]
 004AC765    mov         dword ptr [ebp-18],eax
 004AC768    mov         eax,dword ptr [ebp-18]
 004AC76B    push        eax
 004AC76C    mov         ecx,dword ptr [ebp-14]
 004AC76F    xor         edx,edx
 004AC771    mov         eax,dword ptr [ebp-28]
 004AC774    call        00430DF4
 004AC779    test        al,al
>004AC77B    je          004AC821
 004AC781    mov         eax,dword ptr [ebp-14]
 004AC784    cmp         word ptr [eax+0E],1
>004AC789    jne         004AC821
 004AC78F    mov         eax,dword ptr [ebp-14]
 004AC792    mov         dword ptr [ebp-20],eax
 004AC795    mov         eax,dword ptr [ebp-20]
 004AC798    mov         eax,dword ptr [eax+4]
 004AC79B    mov         edx,dword ptr [ebp-20]
 004AC79E    movzx       edx,word ptr [edx+0E]
 004AC7A2    imul        edx
 004AC7A4    add         eax,1F
 004AC7A7    and         eax,0FFFFFFE0
 004AC7AA    test        eax,eax
>004AC7AC    jns         004AC7B1
 004AC7AE    add         eax,7
 004AC7B1    sar         eax,3
 004AC7B4    mov         dword ptr [ebp-1C],eax
 004AC7B7    mov         eax,dword ptr [ebp-20]
 004AC7BA    mov         eax,dword ptr [eax+4]
 004AC7BD    imul        dword ptr [ebp-1C]
 004AC7C0    mov         dword ptr [ebp-10],eax
 004AC7C3    mov         eax,dword ptr [ebp-18]
 004AC7C6    add         eax,dword ptr [ebp-0C]
 004AC7C9    sub         eax,dword ptr [ebp-10]
 004AC7CC    mov         dword ptr [ebp-18],eax
 004AC7CF    push        ebp
 004AC7D0    mov         ecx,0FF
 004AC7D5    mov         edx,dword ptr [ebp-10]
 004AC7D8    mov         eax,dword ptr [ebp-18]
 004AC7DB    call        004AC6E8
 004AC7E0    pop         ecx
 004AC7E1    mov         dword ptr [ebp-4],eax
 004AC7E4    cmp         dword ptr [ebp-4],0
>004AC7E8    jne         004AC811
 004AC7EA    mov         eax,dword ptr [ebp-20]
 004AC7ED    mov         eax,dword ptr [eax+8]
 004AC7F0    mov         edx,dword ptr [ebp-20]
 004AC7F3    mov         edx,dword ptr [edx+4]
 004AC7F6    add         edx,edx
 004AC7F8    cmp         eax,edx
>004AC7FA    jl          004AC811
 004AC7FC    push        ebp
 004AC7FD    mov         eax,dword ptr [ebp-18]
 004AC800    sub         eax,dword ptr [ebp-10]
 004AC803    xor         ecx,ecx
 004AC805    mov         edx,dword ptr [ebp-10]
 004AC808    call        004AC6E8
 004AC80D    pop         ecx
 004AC80E    mov         dword ptr [ebp-4],eax
 004AC811    mov         eax,dword ptr [ebp-4]
 004AC814    cdq
 004AC815    idiv        eax,dword ptr [ebp-1C]
 004AC818    mov         dword ptr [ebp-4],eax
 004AC81B    mov         eax,dword ptr [ebp-2C]
 004AC81E    sub         dword ptr [ebp-4],eax
 004AC821    xor         eax,eax
 004AC823    pop         edx
 004AC824    pop         ecx
 004AC825    pop         ecx
 004AC826    mov         dword ptr fs:[eax],edx
 004AC829    push        4AC844
 004AC82E    mov         edx,dword ptr [ebp-8]
 004AC831    add         edx,dword ptr [ebp-0C]
 004AC834    mov         eax,dword ptr [ebp-14]
 004AC837    call        @FreeMem
 004AC83C    ret
>004AC83D    jmp         @HandleFinally
>004AC842    jmp         004AC82E
 004AC844    xor         eax,eax
 004AC846    pop         edx
 004AC847    pop         ecx
 004AC848    pop         ecx
 004AC849    mov         dword ptr fs:[eax],edx
 004AC84C    push        4AC877
 004AC851    cmp         dword ptr [ebp-24],0
>004AC855    je          004AC860
 004AC857    mov         eax,dword ptr [ebp-24]
 004AC85A    push        eax
 004AC85B    call        gdi32.DeleteObject
 004AC860    cmp         dword ptr [ebp-28],0
>004AC864    je          004AC86F
 004AC866    mov         eax,dword ptr [ebp-28]
 004AC869    push        eax
 004AC86A    call        gdi32.DeleteObject
 004AC86F    ret
>004AC870    jmp         @HandleFinally
>004AC875    jmp         004AC851
 004AC877    mov         eax,dword ptr [ebp-4]
 004AC87A    mov         esp,ebp
 004AC87C    pop         ebp
 004AC87D    ret
end;*}

//004AC880
{*procedure sub_004AC880(?:?; ?:?);
begin
 004AC880    push        ebp
 004AC881    mov         ebp,esp
 004AC883    push        ecx
 004AC884    mov         dword ptr [ebp-4],eax
 004AC887    cmp         dword ptr [ebp-4],0
>004AC88B    jne         004AC895
 004AC88D    mov         eax,[0056C9B8];^gvar_0047ED1C
 004AC892    mov         dword ptr [ebp-4],eax
 004AC895    mov         eax,dword ptr [ebp+8]
 004AC898    mov         eax,dword ptr [eax-4]
 004AC89B    cmp         dword ptr [eax+84],0
>004AC8A2    je          004AC8BA
 004AC8A4    mov         eax,dword ptr [ebp+8]
 004AC8A7    mov         eax,dword ptr [eax-4]
 004AC8AA    mov         eax,dword ptr [eax+84]
 004AC8B0    call        TObject.ClassType
 004AC8B5    cmp         eax,dword ptr [ebp-4]
>004AC8B8    je          004AC8E5
 004AC8BA    mov         eax,dword ptr [ebp+8]
 004AC8BD    mov         eax,dword ptr [eax-4]
 004AC8C0    mov         eax,dword ptr [eax+84]
 004AC8C6    call        TObject.Free
 004AC8CB    mov         eax,dword ptr [ebp+8]
 004AC8CE    mov         ecx,dword ptr [eax-4]
 004AC8D1    mov         dl,1
 004AC8D3    mov         eax,dword ptr [ebp-4]
 004AC8D6    call        dword ptr [eax+2C]
 004AC8D9    mov         edx,dword ptr [ebp+8]
 004AC8DC    mov         edx,dword ptr [edx-4]
 004AC8DF    mov         dword ptr [edx+84],eax
 004AC8E5    pop         ecx
 004AC8E6    pop         ebp
 004AC8E7    ret
end;*}

//004AC8E8
{*function sub_004AC8E8(?:AnsiString; ?:?):?;
begin
 004AC8E8    push        ebp
 004AC8E9    mov         ebp,esp
 004AC8EB    add         esp,0FFFFFFE8
 004AC8EE    xor         edx,edx
 004AC8F0    mov         dword ptr [ebp-18],edx
 004AC8F3    mov         dword ptr [ebp-4],eax
 004AC8F6    xor         eax,eax
 004AC8F8    push        ebp
 004AC8F9    push        4AC9AF
 004AC8FE    push        dword ptr fs:[eax]
 004AC901    mov         dword ptr fs:[eax],esp
 004AC904    xor         eax,eax
 004AC906    mov         dword ptr [ebp-8],eax
 004AC909    mov         eax,dword ptr [ebp-4]
 004AC90C    mov         dword ptr [ebp-10],eax
 004AC90F    cmp         dword ptr [ebp-10],0
>004AC913    je          004AC999
>004AC919    jmp         004AC991
 004AC91B    mov         eax,dword ptr [ebp-10]
 004AC91E    mov         dword ptr [ebp-14],eax
>004AC921    jmp         004AC92E
 004AC923    mov         eax,dword ptr [ebp-10]
 004AC926    call        0041145C
 004AC92B    mov         dword ptr [ebp-10],eax
 004AC92E    mov         eax,dword ptr [ebp-10]
 004AC931    mov         al,byte ptr [eax]
 004AC933    test        al,al
>004AC935    je          004AC93F
 004AC937    sub         al,0A
>004AC939    je          004AC93F
 004AC93B    sub         al,3
>004AC93D    jne         004AC923
 004AC93F    mov         ecx,dword ptr [ebp-10]
 004AC942    sub         ecx,dword ptr [ebp-14]
 004AC945    lea         eax,[ebp-18]
 004AC948    mov         edx,dword ptr [ebp-14]
 004AC94B    call        @LStrFromPCharLen
 004AC950    mov         eax,dword ptr [ebp+8]
 004AC953    mov         eax,dword ptr [eax-4]
 004AC956    mov         eax,dword ptr [eax+84]
 004AC95C    mov         eax,dword ptr [eax+208]
 004AC962    mov         edx,dword ptr [ebp-18]
 004AC965    call        0042F43C
 004AC96A    mov         dword ptr [ebp-0C],eax
 004AC96D    mov         eax,dword ptr [ebp-0C]
 004AC970    cmp         eax,dword ptr [ebp-8]
>004AC973    jle         004AC97B
 004AC975    mov         eax,dword ptr [ebp-0C]
 004AC978    mov         dword ptr [ebp-8],eax
 004AC97B    mov         eax,dword ptr [ebp-10]
 004AC97E    cmp         byte ptr [eax],0D
>004AC981    jne         004AC986
 004AC983    inc         dword ptr [ebp-10]
 004AC986    mov         eax,dword ptr [ebp-10]
 004AC989    cmp         byte ptr [eax],0A
>004AC98C    jne         004AC991
 004AC98E    inc         dword ptr [ebp-10]
 004AC991    mov         eax,dword ptr [ebp-10]
 004AC994    cmp         byte ptr [eax],0
>004AC997    jne         004AC91B
 004AC999    xor         eax,eax
 004AC99B    pop         edx
 004AC99C    pop         ecx
 004AC99D    pop         ecx
 004AC99E    mov         dword ptr fs:[eax],edx
 004AC9A1    push        4AC9B6
 004AC9A6    lea         eax,[ebp-18]
 004AC9A9    call        @LStrClr
 004AC9AE    ret
>004AC9AF    jmp         @HandleFinally
>004AC9B4    jmp         004AC9A6
 004AC9B6    mov         eax,dword ptr [ebp-8]
 004AC9B9    mov         esp,ebp
 004AC9BB    pop         ebp
 004AC9BC    ret
end;*}

//004AC9C0
{*procedure sub_004AC9C0(?:TApplication; ?:?);
begin
 004AC9C0    push        ebp
 004AC9C1    mov         ebp,esp
 004AC9C3    add         esp,0FFFFFF6C
 004AC9C9    push        ebx
 004AC9CA    push        esi
 004AC9CB    push        edi
 004AC9CC    xor         ecx,ecx
 004AC9CE    mov         dword ptr [ebp-90],ecx
 004AC9D4    mov         dword ptr [ebp-94],ecx
 004AC9DA    mov         esi,edx
 004AC9DC    lea         edi,[ebp-0C]
 004AC9DF    movs        dword ptr [edi],dword ptr [esi]
 004AC9E0    movs        dword ptr [edi],dword ptr [esi]
 004AC9E1    mov         dword ptr [ebp-4],eax
 004AC9E4    lea         eax,[ebp-64]
 004AC9E7    mov         edx,dword ptr ds:[49FFF8];THintInfo
 004AC9ED    call        @AddRefRecord
 004AC9F2    xor         eax,eax
 004AC9F4    push        ebp
 004AC9F5    push        4ACD85
 004AC9FA    push        dword ptr fs:[eax]
 004AC9FD    mov         dword ptr fs:[eax],esp
 004ACA00    mov         eax,dword ptr [ebp-4]
 004ACA03    mov         byte ptr [eax+58],0;TApplication.FHintActive:Boolean
 004ACA07    mov         eax,dword ptr [ebp-4]
 004ACA0A    cmp         byte ptr [eax+88],0;TApplication.FShowHint:Boolean
>004ACA11    je          004ACD3C
 004ACA17    mov         eax,dword ptr [ebp-4]
 004ACA1A    cmp         dword ptr [eax+60],0;TApplication.FHintControl:TControl
>004ACA1E    je          004ACD3C
 004ACA24    call        004A0480
 004ACA29    test        al,al
>004ACA2B    je          004ACD3C
 004ACA31    lea         eax,[ebp-0C]
 004ACA34    mov         dl,1
 004ACA36    call        00481798
 004ACA3B    call        004A98E8
 004ACA40    mov         edx,dword ptr [ebp-4]
 004ACA43    cmp         eax,dword ptr [edx+60];TApplication.FHintControl:TControl
>004ACA46    jne         004ACD3C
 004ACA4C    mov         eax,dword ptr [ebp-4]
 004ACA4F    mov         eax,dword ptr [eax+60];TApplication.FHintControl:TControl
 004ACA52    mov         dword ptr [ebp-64],eax
 004ACA55    mov         eax,dword ptr [ebp-0C]
 004ACA58    mov         dword ptr [ebp-5C],eax
 004ACA5B    mov         eax,dword ptr [ebp-8]
 004ACA5E    mov         dword ptr [ebp-58],eax
 004ACA61    push        ebp
 004ACA62    call        004AC6FC
 004ACA67    pop         ecx
 004ACA68    add         dword ptr [ebp-58],eax
 004ACA6B    mov         eax,[00571E40];0x0 Screen:TScreen
 004ACA70    call        004A8894
 004ACA75    mov         dword ptr [ebp-54],eax
 004ACA78    mov         eax,dword ptr [ebp-4]
 004ACA7B    mov         eax,dword ptr [eax+5C];TApplication.FHintColor:TColor
 004ACA7E    mov         dword ptr [ebp-50],eax
 004ACA81    lea         edx,[ebp-84]
 004ACA87    mov         eax,dword ptr [ebp-4]
 004ACA8A    mov         eax,dword ptr [eax+60];TApplication.FHintControl:TControl
 004ACA8D    call        00482ECC
 004ACA92    lea         esi,[ebp-84]
 004ACA98    lea         edi,[ebp-4C]
 004ACA9B    movs        dword ptr [edi],dword ptr [esi]
 004ACA9C    movs        dword ptr [edi],dword ptr [esi]
 004ACA9D    movs        dword ptr [edi],dword ptr [esi]
 004ACA9E    movs        dword ptr [edi],dword ptr [esi]
 004ACA9F    lea         edx,[ebp-14]
 004ACAA2    mov         eax,dword ptr [ebp-4]
 004ACAA5    mov         eax,dword ptr [eax+60];TApplication.FHintControl:TControl
 004ACAA8    mov         ecx,dword ptr [eax]
 004ACAAA    call        dword ptr [ecx+40];TControl.sub_0048303C
 004ACAAD    xor         eax,eax
 004ACAAF    mov         dword ptr [ebp-1C],eax
 004ACAB2    xor         eax,eax
 004ACAB4    mov         dword ptr [ebp-18],eax
 004ACAB7    mov         eax,dword ptr [ebp-4]
 004ACABA    mov         eax,dword ptr [eax+60];TApplication.FHintControl:TControl
 004ACABD    cmp         dword ptr [eax+30],0;TControl.FParent:TWinControl
>004ACAC1    je          004ACAD6
 004ACAC3    lea         edx,[ebp-1C]
 004ACAC6    mov         eax,dword ptr [ebp-4]
 004ACAC9    mov         eax,dword ptr [eax+60];TApplication.FHintControl:TControl
 004ACACC    mov         eax,dword ptr [eax+30];TControl.FParent:TWinControl
 004ACACF    mov         ecx,dword ptr [eax]
 004ACAD1    call        dword ptr [ecx+40];TWinControl.sub_0048C208
>004ACAD4    jmp         004ACB10
 004ACAD6    mov         eax,dword ptr [ebp-4]
 004ACAD9    mov         eax,dword ptr [eax+60];TApplication.FHintControl:TControl
 004ACADC    mov         edx,dword ptr ds:[47E678];TWinControl
 004ACAE2    call        @IsClass
 004ACAE7    test        al,al
>004ACAE9    je          004ACB10
 004ACAEB    mov         eax,dword ptr [ebp-4]
 004ACAEE    mov         eax,dword ptr [eax+60];TApplication.FHintControl:TControl
 004ACAF1    cmp         dword ptr [eax+190],0
>004ACAF8    je          004ACB10
 004ACAFA    lea         eax,[ebp-1C]
 004ACAFD    push        eax
 004ACAFE    mov         eax,dword ptr [ebp-4]
 004ACB01    mov         eax,dword ptr [eax+60];TApplication.FHintControl:TControl
 004ACB04    mov         eax,dword ptr [eax+190]
 004ACB0A    push        eax
 004ACB0B    call        user32.ClientToScreen
 004ACB10    mov         eax,dword ptr [ebp-18]
 004ACB13    sub         eax,dword ptr [ebp-10]
 004ACB16    push        eax
 004ACB17    mov         eax,dword ptr [ebp-1C]
 004ACB1A    sub         eax,dword ptr [ebp-14]
 004ACB1D    push        eax
 004ACB1E    lea         eax,[ebp-4C]
 004ACB21    push        eax
 004ACB22    call        user32.OffsetRect
 004ACB27    lea         ecx,[ebp-8C]
 004ACB2D    lea         edx,[ebp-0C]
 004ACB30    mov         eax,dword ptr [ebp-4]
 004ACB33    mov         eax,dword ptr [eax+60];TApplication.FHintControl:TControl
 004ACB36    call        TControl.ScreenToClient
 004ACB3B    mov         eax,dword ptr [ebp-8C]
 004ACB41    mov         dword ptr [ebp-3C],eax
 004ACB44    mov         eax,dword ptr [ebp-88]
 004ACB4A    mov         dword ptr [ebp-38],eax
 004ACB4D    lea         edx,[ebp-94]
 004ACB53    mov         eax,dword ptr [ebp-4]
 004ACB56    mov         eax,dword ptr [eax+60];TApplication.FHintControl:TControl
 004ACB59    call        004A9898
 004ACB5E    mov         eax,dword ptr [ebp-94]
 004ACB64    lea         edx,[ebp-90]
 004ACB6A    call        0047FA44
 004ACB6F    mov         edx,dword ptr [ebp-90]
 004ACB75    lea         eax,[ebp-2C]
 004ACB78    call        @LStrLAsg
 004ACB7D    xor         eax,eax
 004ACB7F    mov         dword ptr [ebp-34],eax
 004ACB82    mov         eax,dword ptr [ebp-4]
 004ACB85    mov         eax,dword ptr [eax+74];TApplication.FHintHidePause:Integer
 004ACB88    mov         dword ptr [ebp-30],eax
 004ACB8B    mov         eax,[0056C9B8];^gvar_0047ED1C
 004ACB90    mov         dword ptr [ebp-60],eax
 004ACB93    xor         eax,eax
 004ACB95    mov         dword ptr [ebp-28],eax
 004ACB98    lea         eax,[ebp-64]
 004ACB9B    push        eax
 004ACB9C    mov         eax,dword ptr [ebp-4]
 004ACB9F    mov         eax,dword ptr [eax+60];TApplication.FHintControl:TControl
 004ACBA2    xor         ecx,ecx
 004ACBA4    mov         edx,0B030
 004ACBA9    call        00484FFC
 004ACBAE    test        eax,eax
 004ACBB0    sete        byte ptr [ebp-1D]
 004ACBB4    cmp         byte ptr [ebp-1D],0
>004ACBB8    je          004ACBE0
 004ACBBA    mov         eax,dword ptr [ebp-4]
 004ACBBD    cmp         word ptr [eax+132],0;TApplication.?f132:word
>004ACBC5    je          004ACBE0
 004ACBC7    lea         eax,[ebp-64]
 004ACBCA    push        eax
 004ACBCB    lea         ecx,[ebp-1D]
 004ACBCE    lea         edx,[ebp-2C]
 004ACBD1    mov         ebx,dword ptr [ebp-4]
 004ACBD4    mov         eax,dword ptr [ebx+134];TApplication.?f134:dword
 004ACBDA    call        dword ptr [ebx+130];TApplication.FOnShowHint
 004ACBE0    cmp         byte ptr [ebp-1D],0
>004ACBE4    je          004ACBEF
 004ACBE6    mov         eax,dword ptr [ebp-4]
 004ACBE9    cmp         dword ptr [eax+60],0;TApplication.FHintControl:TControl
>004ACBED    jne         004ACBF3
 004ACBEF    xor         eax,eax
>004ACBF1    jmp         004ACBF5
 004ACBF3    mov         al,1
 004ACBF5    mov         edx,dword ptr [ebp-4]
 004ACBF8    mov         byte ptr [edx+58],al;TApplication.FHintActive:Boolean
 004ACBFB    mov         eax,dword ptr [ebp-4]
 004ACBFE    cmp         byte ptr [eax+58],0;TApplication.FHintActive:Boolean
>004ACC02    je          004ACD3C
 004ACC08    cmp         dword ptr [ebp-2C],0
>004ACC0C    je          004ACD3C
 004ACC12    push        ebp
 004ACC13    mov         eax,dword ptr [ebp-60]
 004ACC16    call        004AC880
 004ACC1B    pop         ecx
 004ACC1C    mov         eax,dword ptr [ebp-4]
 004ACC1F    mov         eax,dword ptr [eax+60];TApplication.FHintControl:TControl
 004ACC22    mov         dl,byte ptr [eax+5F];TControl.FBiDiMode:TBiDiMode
 004ACC25    mov         eax,dword ptr [ebp-4]
 004ACC28    mov         eax,dword ptr [eax+84];TApplication.FHintWindow:THintWindow
 004ACC2E    mov         ecx,dword ptr [eax]
 004ACC30    call        dword ptr [ecx+70];TPanel.SetBiDiMode
 004ACC33    mov         eax,dword ptr [ebp-28]
 004ACC36    push        eax
 004ACC37    lea         eax,[ebp-74]
 004ACC3A    push        eax
 004ACC3B    mov         eax,dword ptr [ebp-4]
 004ACC3E    mov         eax,dword ptr [eax+84];TApplication.FHintWindow:THintWindow
 004ACC44    mov         ecx,dword ptr [ebp-2C]
 004ACC47    mov         edx,dword ptr [ebp-54]
 004ACC4A    mov         ebx,dword ptr [eax]
 004ACC4C    call        dword ptr [ebx+0D8];THintWindow.sub_0048DFA0
 004ACC52    mov         eax,dword ptr [ebp-58]
 004ACC55    push        eax
 004ACC56    mov         eax,dword ptr [ebp-5C]
 004ACC59    push        eax
 004ACC5A    lea         eax,[ebp-74]
 004ACC5D    push        eax
 004ACC5E    call        user32.OffsetRect
 004ACC63    mov         eax,dword ptr [ebp-4]
 004ACC66    mov         eax,dword ptr [eax+84];TApplication.FHintWindow:THintWindow
 004ACC6C    mov         si,0FFC8
 004ACC70    call        @CallDynaInst;TControl.sub_0048415C
 004ACC75    test        al,al
>004ACC77    je          004ACC95
 004ACC79    push        ebp
 004ACC7A    mov         eax,dword ptr [ebp-2C]
 004ACC7D    call        004AC8E8
 004ACC82    pop         ecx
 004ACC83    add         eax,5
 004ACC86    mov         dword ptr [ebp-24],eax
 004ACC89    mov         eax,dword ptr [ebp-24]
 004ACC8C    sub         dword ptr [ebp-74],eax
 004ACC8F    mov         eax,dword ptr [ebp-24]
 004ACC92    sub         dword ptr [ebp-6C],eax
 004ACC95    lea         ecx,[ebp-8C]
 004ACC9B    lea         edx,[ebp-4C]
 004ACC9E    mov         eax,dword ptr [ebp-4]
 004ACCA1    mov         eax,dword ptr [eax+60];TApplication.FHintControl:TControl
 004ACCA4    call        TControl.ClientToScreen
 004ACCA9    mov         eax,dword ptr [ebp-4]
 004ACCAC    mov         edx,dword ptr [ebp-8C]
 004ACCB2    mov         dword ptr [eax+64],edx;TApplication.FHintCursorRect:TRect
 004ACCB5    mov         edx,dword ptr [ebp-88]
 004ACCBB    mov         dword ptr [eax+68],edx;TApplication.FHintCursorRect.Top:Longint
 004ACCBE    lea         ecx,[ebp-8C]
 004ACCC4    lea         edx,[ebp-44]
 004ACCC7    mov         eax,dword ptr [ebp-4]
 004ACCCA    mov         eax,dword ptr [eax+60];TApplication.FHintControl:TControl
 004ACCCD    call        TControl.ClientToScreen
 004ACCD2    mov         eax,dword ptr [ebp-4]
 004ACCD5    mov         edx,dword ptr [ebp-8C]
 004ACCDB    mov         dword ptr [eax+6C],edx;TApplication.FHintCursorRect.Right:Longint
 004ACCDE    mov         edx,dword ptr [ebp-88]
 004ACCE4    mov         dword ptr [eax+70],edx
 004ACCE7    mov         eax,dword ptr [ebp-4]
 004ACCEA    mov         eax,dword ptr [eax+84];TApplication.FHintWindow:THintWindow
 004ACCF0    mov         edx,dword ptr [ebp-50]
 004ACCF3    call        TPanel.SetColor
 004ACCF8    mov         eax,dword ptr [ebp-28]
 004ACCFB    push        eax
 004ACCFC    mov         eax,dword ptr [ebp-4]
 004ACCFF    mov         eax,dword ptr [eax+84];TApplication.FHintWindow:THintWindow
 004ACD05    mov         ecx,dword ptr [ebp-2C]
 004ACD08    lea         edx,[ebp-74]
 004ACD0B    mov         ebx,dword ptr [eax]
 004ACD0D    call        dword ptr [ebx+0D4];THintWindow.sub_0048DF6C
 004ACD13    call        004A9A28
 004ACD18    cmp         dword ptr [ebp-34],0
>004ACD1C    jle         004ACD2D
 004ACD1E    xor         ecx,ecx
 004ACD20    mov         edx,dword ptr [ebp-34]
 004ACD23    mov         eax,dword ptr [ebp-4]
 004ACD26    call        004AC44C
>004ACD2B    jmp         004ACD59
 004ACD2D    mov         cl,1
 004ACD2F    mov         edx,dword ptr [ebp-30]
 004ACD32    mov         eax,dword ptr [ebp-4]
 004ACD35    call        004AC44C
>004ACD3A    jmp         004ACD59
 004ACD3C    cmp         dword ptr [ebp-34],0
>004ACD40    jle         004ACD51
 004ACD42    xor         ecx,ecx
 004ACD44    mov         edx,dword ptr [ebp-34]
 004ACD47    mov         eax,dword ptr [ebp-4]
 004ACD4A    call        004AC44C
>004ACD4F    jmp         004ACD59
 004ACD51    mov         eax,dword ptr [ebp-4]
 004ACD54    call        004AC6B0
 004ACD59    xor         eax,eax
 004ACD5B    pop         edx
 004ACD5C    pop         ecx
 004ACD5D    pop         ecx
 004ACD5E    mov         dword ptr fs:[eax],edx
 004ACD61    push        4ACD8C
 004ACD66    lea         eax,[ebp-94]
 004ACD6C    mov         edx,2
 004ACD71    call        @LStrArrayClr
 004ACD76    lea         eax,[ebp-64]
 004ACD79    mov         edx,dword ptr ds:[49FFF8];THintInfo
 004ACD7F    call        @FinalizeRecord
 004ACD84    ret
>004ACD85    jmp         @HandleFinally
>004ACD8A    jmp         004ACD66
 004ACD8C    pop         edi
 004ACD8D    pop         esi
 004ACD8E    pop         ebx
 004ACD8F    mov         esp,ebp
 004ACD91    pop         ebp
 004ACD92    ret
end;*}

//004ACD94
{*procedure sub_004ACD94(?:TApplication; ?:?);
begin
 004ACD94    push        ebp
 004ACD95    mov         ebp,esp
 004ACD97    add         esp,0FFFFFFF4
 004ACD9A    mov         dword ptr [ebp-8],edx
 004ACD9D    mov         dword ptr [ebp-4],eax
 004ACDA0    mov         eax,[00571E40];0x0 Screen:TScreen
 004ACDA5    mov         eax,dword ptr [eax+68];TScreen.FActiveCustomForm:TCustomForm
 004ACDA8    mov         dword ptr [ebp-0C],eax
 004ACDAB    cmp         dword ptr [ebp-0C],0
>004ACDAF    je          004ACDD0
 004ACDB1    mov         eax,dword ptr [ebp-0C]
 004ACDB4    cmp         dword ptr [eax+23C],0;TCustomForm.FHelpFile:String
>004ACDBB    je          004ACDD0
 004ACDBD    mov         eax,dword ptr [ebp-8]
 004ACDC0    mov         edx,dword ptr [ebp-0C]
 004ACDC3    mov         edx,dword ptr [edx+23C];TCustomForm.FHelpFile:String
 004ACDC9    call        @LStrAsg
>004ACDCE    jmp         004ACDDE
 004ACDD0    mov         eax,dword ptr [ebp-8]
 004ACDD3    mov         edx,dword ptr [ebp-4]
 004ACDD6    mov         edx,dword ptr [edx+50];TApplication.FHelpFile:String
 004ACDD9    call        @LStrAsg
 004ACDDE    mov         esp,ebp
 004ACDE0    pop         ebp
 004ACDE1    ret
end;*}

//004ACDE4
{*function sub_004ACDE4(?:TApplication; ?:?; ?:?):?;
begin
 004ACDE4    push        ebp
 004ACDE5    mov         ebp,esp
 004ACDE7    add         esp,0FFFFFFEC
 004ACDEA    mov         dword ptr [ebp-0C],ecx
 004ACDED    mov         dword ptr [ebp-8],edx
 004ACDF0    mov         dword ptr [ebp-4],eax
 004ACDF3    mov         eax,[00571E40];0x0 Screen:TScreen
 004ACDF8    mov         eax,dword ptr [eax+6C];TScreen.FActiveForm:TForm
 004ACDFB    mov         dword ptr [ebp-14],eax
 004ACDFE    cmp         dword ptr [ebp-14],0
>004ACE02    je          004ACE18
 004ACE04    mov         eax,dword ptr [ebp-0C]
 004ACE07    push        eax
 004ACE08    xor         ecx,ecx
 004ACE0A    mov         edx,dword ptr [ebp-8]
 004ACE0D    mov         eax,dword ptr [ebp-14]
 004ACE10    call        00484FFC
 004ACE15    dec         eax
>004ACE16    je          004ACE47
 004ACE18    mov         eax,dword ptr [ebp-4]
 004ACE1B    mov         eax,dword ptr [eax+44];TApplication.FMainForm:TForm
 004ACE1E    cmp         eax,dword ptr [ebp-14]
>004ACE21    je          004ACE43
 004ACE23    mov         eax,dword ptr [ebp-4]
 004ACE26    cmp         dword ptr [eax+44],0;TApplication.FMainForm:TForm
>004ACE2A    je          004ACE43
 004ACE2C    mov         eax,dword ptr [ebp-0C]
 004ACE2F    push        eax
 004ACE30    xor         ecx,ecx
 004ACE32    mov         edx,dword ptr [ebp-8]
 004ACE35    mov         eax,dword ptr [ebp-4]
 004ACE38    mov         eax,dword ptr [eax+44];TApplication.FMainForm:TForm
 004ACE3B    call        00484FFC
 004ACE40    dec         eax
>004ACE41    je          004ACE47
 004ACE43    xor         eax,eax
>004ACE45    jmp         004ACE49
 004ACE47    mov         al,1
 004ACE49    mov         byte ptr [ebp-0D],al
 004ACE4C    cmp         byte ptr [ebp-0D],0
>004ACE50    jne         004ACE89
 004ACE52    mov         eax,dword ptr [ebp-0C]
 004ACE55    mov         edx,dword ptr ds:[492C28];TCustomAction
 004ACE5B    call        @IsClass
 004ACE60    test        al,al
>004ACE62    je          004ACE89
 004ACE64    mov         eax,dword ptr [ebp-0C]
 004ACE67    cmp         byte ptr [eax+6A],0
>004ACE6B    je          004ACE89
 004ACE6D    mov         eax,dword ptr [ebp-0C]
 004ACE70    cmp         byte ptr [eax+60],0
>004ACE74    je          004ACE89
 004ACE76    mov         eax,dword ptr [ebp-0C]
 004ACE79    cmp         word ptr [eax+42],0
 004ACE7E    setne       dl
 004ACE81    mov         eax,dword ptr [ebp-0C]
 004ACE84    call        TVirtualListAction.SetEnabled
 004ACE89    mov         al,byte ptr [ebp-0D]
 004ACE8C    mov         esp,ebp
 004ACE8E    pop         ebp
 004ACE8F    ret
end;*}

//004ACE90
{*function sub_004ACE90(?:TApplication; ?:TContainedAction):?;
begin
 004ACE90    push        ebp
 004ACE91    mov         ebp,esp
 004ACE93    add         esp,0FFFFFFF4
 004ACE96    push        ebx
 004ACE97    mov         dword ptr [ebp-8],edx
 004ACE9A    mov         dword ptr [ebp-4],eax
 004ACE9D    mov         byte ptr [ebp-9],0
 004ACEA1    mov         eax,dword ptr [ebp-4]
 004ACEA4    cmp         word ptr [eax+0C2],0;TApplication.?fC2:word
>004ACEAC    je          004ACEC3
 004ACEAE    lea         ecx,[ebp-9]
 004ACEB1    mov         ebx,dword ptr [ebp-4]
 004ACEB4    mov         edx,dword ptr [ebp-8]
 004ACEB7    mov         eax,dword ptr [ebx+0C4];TApplication.?fC4:dword
 004ACEBD    call        dword ptr [ebx+0C0];TApplication.FOnActionExecute
 004ACEC3    mov         al,byte ptr [ebp-9]
 004ACEC6    pop         ebx
 004ACEC7    mov         esp,ebp
 004ACEC9    pop         ebp
 004ACECA    ret
end;*}

//004ACECC
{*function sub_004ACECC(?:TApplication; ?:TContainedAction):?;
begin
 004ACECC    push        ebp
 004ACECD    mov         ebp,esp
 004ACECF    add         esp,0FFFFFFF4
 004ACED2    push        ebx
 004ACED3    mov         dword ptr [ebp-8],edx
 004ACED6    mov         dword ptr [ebp-4],eax
 004ACED9    mov         byte ptr [ebp-9],0
 004ACEDD    mov         eax,dword ptr [ebp-4]
 004ACEE0    cmp         word ptr [eax+0CA],0;TApplication.?fCA:word
>004ACEE8    je          004ACEFF
 004ACEEA    lea         ecx,[ebp-9]
 004ACEED    mov         ebx,dword ptr [ebp-4]
 004ACEF0    mov         edx,dword ptr [ebp-8]
 004ACEF3    mov         eax,dword ptr [ebx+0CC];TApplication.?fCC:dword
 004ACEF9    call        dword ptr [ebx+0C8];TApplication.FOnActionUpdate
 004ACEFF    mov         al,byte ptr [ebp-9]
 004ACF02    pop         ebx
 004ACF03    mov         esp,ebp
 004ACF05    pop         ebp
 004ACF06    ret
end;*}

//004ACF08
procedure sub_004ACF08;
begin
{*
 004ACF08    push        ebp
 004ACF09    mov         ebp,esp
 004ACF0B    push        ecx
 004ACF0C    push        4ACF38;'User32.dll'
 004ACF11    call        kernel32.GetModuleHandleA
 004ACF16    mov         dword ptr [ebp-4],eax
 004ACF19    cmp         dword ptr [ebp-4],0
>004ACF1D    je          004ACF32
 004ACF1F    push        4ACF44;'SetLayeredWindowAttributes'
 004ACF24    mov         eax,dword ptr [ebp-4]
 004ACF27    push        eax
 004ACF28    call        kernel32.GetProcAddress
 004ACF2D    mov         [0056C9BC],eax;gvar_0056C9BC:Pointer
 004ACF32    pop         ecx
 004ACF33    pop         ebp
 004ACF34    ret
*}
end;

//004ACF60
{*procedure sub_004ACF60(?:?; ?:?);
begin
 004ACF60    push        ebp
 004ACF61    mov         ebp,esp
 004ACF63    add         esp,0FFFFFFF8
 004ACF66    mov         dword ptr [ebp-8],edx
 004ACF69    mov         dword ptr [ebp-4],eax
 004ACF6C    push        0
 004ACF6E    push        0
 004ACF70    push        0
 004ACF72    mov         eax,dword ptr [ebp-4]
 004ACF75    mov         eax,dword ptr [eax+30]
 004ACF78    push        eax
 004ACF79    call        user32.PostMessageA
 004ACF7E    pop         ecx
 004ACF7F    pop         ecx
 004ACF80    pop         ebp
 004ACF81    ret
end;*}

//004ACF84
procedure sub_004ACF84(?:TApplication);
begin
{*
 004ACF84    push        ebp
 004ACF85    mov         ebp,esp
 004ACF87    push        ecx
 004ACF88    mov         dword ptr [ebp-4],eax
 004ACF8B    mov         eax,[0056E5AC];^gvar_0056BCA8
 004ACF90    mov         edx,dword ptr [ebp-4]
 004ACF93    mov         dword ptr [eax+4],edx
 004ACF96    mov         dword ptr [eax],4ACF60;sub_004ACF60
 004ACF9C    pop         ecx
 004ACF9D    pop         ebp
 004ACF9E    ret
*}
end;

//004ACFA0
{*procedure sub_004ACFA0(?:?);
begin
 004ACFA0    push        ebp
 004ACFA1    mov         ebp,esp
 004ACFA3    push        ecx
 004ACFA4    mov         dword ptr [ebp-4],eax
 004ACFA7    mov         eax,[0056E5AC];^gvar_0056BCA8
 004ACFAC    xor         edx,edx
 004ACFAE    mov         dword ptr [eax],edx
 004ACFB0    mov         dword ptr [eax+4],edx
 004ACFB3    pop         ecx
 004ACFB4    pop         ebp
 004ACFB5    ret
end;*}

//004ACFB8
procedure _NF__BA6;
begin
{*
 004ACFB8    add         dword ptr [eax],eax
 004ACFBA    add         byte ptr [eax],al
 004ACFBC    mov         eax,0D00056C9
 004ACFC1    in          al,dl
 004ACFC2    inc         edi
 004ACFC3    add         byte ptr [eax],al
 004ACFC5    add         byte ptr [eax],al
 004ACFC7    add         byte ptr [ebp-75],dl;{Finalization}
*}
end;

Initialization
//004AD024
{*
 004AD024    sub         dword ptr ds:[571E44],1
>004AD02B    jae         004AD055
 004AD02D    mov         eax,4ACFB8;_NF__BA6
 004AD032    call        @InitImports
 004AD037    call        004ACF08
 004AD03C    push        4AD058;'TaskbarCreated'
 004AD041    call        user32.RegisterClipboardFormatA
 004AD046    mov         [00571E48],eax;gvar_00571E48:LongWord
 004AD04B    mov         eax,4A04B4;FindGlobalComponent:TComponent
 004AD050    call        0041FA24
 004AD055    ret
*}
Finalization
//004ACFC8
{*
 004ACFC8    push        ebp
 004ACFC9    mov         ebp,esp
 004ACFCB    xor         eax,eax
 004ACFCD    push        ebp
 004ACFCE    push        4AD01B
 004ACFD3    push        dword ptr fs:[eax]
 004ACFD6    mov         dword ptr fs:[eax],esp
 004ACFD9    inc         dword ptr ds:[571E44]
>004ACFDF    jne         004AD00D
 004ACFE1    cmp         dword ptr ds:[571E3C],0;Application:TApplication
>004ACFE8    je          004ACFEF
 004ACFEA    call        DoneApplication
 004ACFEF    cmp         dword ptr ds:[571E50],0;HintDoneEvent:THandle
>004ACFF6    je          004AD003
 004ACFF8    mov         eax,[00571E50];HintDoneEvent:THandle
 004ACFFD    push        eax
 004ACFFE    call        kernel32.CloseHandle
 004AD003    mov         eax,4A04B4;FindGlobalComponent:TComponent
 004AD008    call        UnregisterFindGlobalComponentProc
 004AD00D    xor         eax,eax
 004AD00F    pop         edx
 004AD010    pop         ecx
 004AD011    pop         ecx
 004AD012    mov         dword ptr fs:[eax],edx
 004AD015    push        4AD022
 004AD01A    ret
>004AD01B    jmp         @HandleFinally
>004AD020    jmp         004AD01A
 004AD022    pop         ebp
 004AD023    ret
*}
end.