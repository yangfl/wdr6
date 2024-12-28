//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit ActnMenus;

interface

uses
  SysUtils, Classes, ActnMenus, ActnMan, Controls, Forms, ExtCtrls, ShadowWnd, ActnList;

type
  TMenuStack = class(TStack)
  public
    FMenu:TCustomActionMenuBar;//f8
    constructor Create;//004B2728
  end;
  TActionBarStyleEx = class(TActionBarStyle)
  published
    procedure GetScrollBtnClass;//004B1648
    procedure GetAddRemoveItemClass;//004B1640
    procedure GetPopupClass;//004B1638
  end;
  TCustomActionMenuBar = class(TCustomActionDockBar)
  public
    FAnimatePopups:Boolean;//f288
    FAnimationStyle:TAnimationStyle;//f289
    FCancelMenu:Boolean;//f28A
    FDelayItem:TCustomActionControl;//f28C
    FDragItem:TCustomActionControl;//f290
    FExpandable:Boolean;//f294
    FExpanded:Boolean;//f295
    FInMenuLoop:Boolean;//f296
    FItemKeyed:Boolean;//f297
    FMouseControl:TControl;//f298
    FMousePos:TPoint;//f29C
    FParentForm:TCustomForm;//f2A4
    FParentMenu:TCustomActionMenuBar;//f2A8
    FParentControl:TCustomActionControl;//f2AC
    FPopupStack:TMenuStack;//f2B0
    FOnPopup:TMenuPopupEvent;//f2B8
    f2BA:word;//f2BA
    f2BC:dword;//f2BC
    FExpandDelay:Integer;//f2C0
    FRootMenu:TCustomActionMenuBar;//f2C4
    FDefaultFont:Boolean;//f2C8
    FOnGetPopupClass:TGetPopupClassEvent;//f2D0
    f2D2:word;//f2D2
    f2D4:dword;//f2D4
    FAnimateDuration:Integer;//f2D8
    FOnEnterMenuLoop:TNotifyEvent;//f2E0
    FOnExitMenuLoop:TExitMenuEvent;//f2E8
    FUseSystemFont:Boolean;//f2F0
    FSelectedItem:TActionClientItem;//f2F4
    FCachedMenu:TCustomActionPopupMenu;//f2F8
    FChildMenu:TCustomActionMenuBar;//f2FC
    FExpandTimer:TTimer;//f300
    FPopupTimer:TTimer;//f304
    destructor Destroy; virtual;//004B2D1C
    procedure vC; virtual;//vC//004B5750
    //procedure v10(?:?; ?:?); virtual;//v10//004B52F0
    constructor v2C; virtual;//v2C//004B2C68
    //procedure v68(?:?); virtual;//v68//004B4B9C
    //procedure v74(?:?); virtual;//v74//004B4CEC
    //function vD4(?:?):?; virtual;//vD4//004B3338
    //function v104:?; virtual;//v104//004B3EB0
    //procedure v130(?:?); virtual;//v130//004B4A24
    //procedure v138(?:?); virtual;//v138//004B4B14
    procedure v144; virtual;//v144//004B5788
    //function v148:?; virtual;//v148//004B5704
    //function v14C(?:?; ?:?):?; virtual;//v14C//004B33C0
    //function v150(?:?):?; virtual;//v150//004B37D4
    //function v154(?:?):?; virtual;//v154//004B39C8
    procedure v158; virtual;//v158//004B3C78
    //procedure v15C(?:?); virtual;//v15C//004B3D08
    //procedure v160(?:?); virtual;//v160//004B372C
    //procedure v164(?:?); virtual;//v164//004B3D3C
    //function v168:?; virtual;//v168//004B3FD8
    procedure v16C; virtual;//v16C//004B40A4
    //function v170:?; virtual;//v170//004B424C
    //function v174:?; virtual;//v174//004B4454
    //procedure v178(?:?); virtual;//v178//004B4304
    procedure v17C; virtual;//v17C//004B31B8
    procedure TrackMenu; virtual;//v180//004B4BC8
    //procedure WMMouseActivate(?:?); message WM_MOUSEACTIVATE;//004B5078
    //procedure WMKeyDown(?:?); message WM_KEYDOWN;//004B4D20
    //procedure WMSysKeyDown(?:?); message WM_SYSKEYDOWN;//004B50AC
    //procedure CMFontChanged(?:?); message CM_FONTCHANGED;//004B52B4
    //procedure sub_004B3294(?:?); dynamic;//004B3294
    //procedure sub_004B32F4(?:?); dynamic;//004B32F4
    //procedure sub_004B32D8(?:?); dynamic;//004B32D8
    procedure sub_004B3790; dynamic;//004B3790
    procedure Animate(Show:Boolean);//004B3070
  end;
  TCustomMenuExpandBtn = class(TCustomUtilityButton)
  public
    constructor v2C; virtual;//v2C//004B580C
    //procedure vAC(?:?); virtual;//vAC//004B58D0
    //procedure vE4(?:?; ?:?); virtual;//vE4//004B595C
    //procedure sub_004842E0(?:?; ?:?; ?:?; ?:?; ?:?); dynamic;//004B58B4
  end;
  TCustomActionPopupMenu = class(TCustomActionMenuBar)
  public
    FBShadow:TShadowWindow;//f308
    FExpandBtn:TCustomMenuExpandBtn;//f30C
    FRShadow:TShadowWindow;//f310
    FShadow:Boolean;//f314
    destructor Destroy; virtual;//004B5AE0
    //procedure v10(?:?; ?:?); virtual;//v10//004B6DAC
    constructor v2C; virtual;//v2C//004B59CC
    //function v34(?:?; ?:?):?; virtual;//v34//004B6C6C
    //procedure v44(?:?); virtual;//v44//004B6C24
    //procedure v98(?:?); virtual;//v98//004B5E4C
    //function vD4(?:?):?; virtual;//vD4//004B5D8C
    procedure vD8; virtual;//vD8//004B5E0C
    procedure v118; virtual;//v118//004B6E40
    //procedure v12C(?:?); virtual;//v12C//004B6D70
    //procedure v134(?:?); virtual;//v134//004B6638
    //procedure v160(?:?); virtual;//v160//004B5ED8
    //procedure v164(?:?); virtual;//v164//004B5EFC
    procedure v17C; virtual;//v17C//004B6BCC
    //procedure v184(?:?); virtual;//v184//004B5B44
    procedure v188; virtual;//v188//004B6CA8
    //function v18C:?; virtual;//v18C//004B6C54
    procedure v190; virtual;//v190//004B6D3C
    //procedure v194(?:?; ?:?); virtual;//v194//004B6178
    //procedure WMKeyDown(?:?); message WM_KEYDOWN;//004B665C
    //procedure sub_004B6980(?:?); dynamic;//004B6980
    //procedure sub_0048D780(?:?); dynamic;//004B69AC
    //procedure CMVisibleChanged(?:?); message CM_VISIBLECHANGED;//004B5D50
    //procedure CMMouseLeave(?:?); message CM_MOUSELEAVE;//004B5CF4
    procedure sub_0048513C; dynamic;//004B6A6C
    //procedure sub_00484E9C(?:?); dynamic;//004B5EC0
    procedure Popup(X:Integer; Y:Integer);//004B60B4
  end;
  TCustomizeActionToolBar = class(TCustomActionPopupMenu)
  public
    FActionBar:TCustomActionToolBar;//f318
    FAddlItem:TActionClientItem;//f31C
    FResetAction:TCustomAction;//f320
    FResetItem:TActionClientItem;//f324
    destructor Destroy; virtual;//004B6FD4
    constructor v2C; virtual;//v2C//004B6F6C
    //function v34(?:?; ?:?):?; virtual;//v34//004B7014
    procedure vD0; virtual;//vD0//004B7060
    //function v108(?:?):?; virtual;//v108//004B7088
    //function v114:?; virtual;//v114//004B70D4
    //procedure v124(?:?); virtual;//v124//004B74E0
    //function v150(?:?):?; virtual;//v150//004B719C
    //function v170:?; virtual;//v170//004B7398
    //function v198:?; virtual;//v198//004B7740
    //procedure v19C(?:?; ?:?; ?:?); virtual;//v19C//004B7318
    //procedure sub_004B706C(?:?); dynamic;//004B706C
  end;
  TCustomMDIMenuButton = class(TSpeedButton)
  public
    .....FButtonStyle:TMDIButtonStyle;//f188
    procedure v8C; virtual;//v8C//004B7790
  end;
  TCustomActionMainMenuBar = class(TCustomActionMenuBar)
  public
    FMDIActions:TActionList;//f308
    FMDIActivate:Boolean;//f30C
    FInActive:Boolean;//f30D
    FShadows:Boolean;//f30E
    FWindowMenu:String;//f310
    FMinimizeBtn:TCustomMDIMenuButton;//f314
    FRestoreBtn:TCustomMDIMenuButton;//f318
    FCloseBtn:TCustomMDIMenuButton;//f31C
    FMDISeparator:TActionClientItem;//f320
    FWindowMenuItem:TActionClientItem;//f324
    destructor Destroy; virtual;//004B7914
    //procedure v10(?:?; ?:?); virtual;//v10//004B7EC0
    constructor v2C; virtual;//v2C//004B7804
    //procedure vA8(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?); virtual;//vA8//004B8564
    //function vD4(?:?):?; virtual;//vD4//004B7B28
    procedure vD8; virtual;//vD8//004B8610
    //procedure v130(?:?); virtual;//v130//004B7DFC
    procedure v158; virtual;//v158//004B7BF8
    //function v170:?; virtual;//v170//004B7E94
    //procedure v178(?:?); virtual;//v178//004B7D34
    procedure v17C; virtual;//v17C//004B7970
    procedure TrackMenu; virtual;//v180//004B883C
    //procedure WMNCHitTest(?:?); message WM_NCHITTEST;//004B7D00
    //procedure WMKeyDown(?:?); message WM_KEYDOWN;//004B798C
    //procedure WMSysKeyDown(?:?); message WM_SYSKEYDOWN;//004B8774
    //procedure WMSysKeyUp(?:?); message WM_SYSKEYUP;//004B87A4
    //procedure WMSysCommand(?:?); message WM_SYSCOMMAND;//004B8648
    //procedure CMEnabledChanged(?:?); message CM_ENABLEDCHANGED;//004B7E64
    //procedure CMWinIniChange(?:?); message CM_WININICHANGE;//004B7DB8
    procedure sub_0048BFC8; dynamic;//004B7B14
    //procedure sub_00484E9C(?:?); dynamic;//004B7B74
    procedure RefreshMDIMenu;//004B8040
  end;
  TCustomMenuItem = class(TCustomActionControl)
  public
    FEdges:TMenuEdges;//f1A8
    FMenu:TCustomActionMenuBar;//f1AC
    FMouseSelected:Boolean;//f1B0
    FShortCutBounds:TRect;//f1B1
    FCYMenu:Integer;//f1C4
    FNoPrefix:String;//f1C8
    destructor Destroy; virtual;//004B8950
    constructor v2C; virtual;//v2C//004B8894
    procedure v8C; virtual;//v8C//004B8AD8
    procedure v90; virtual;//v90//004B9334
    //procedure v94(?:?; ?:?; ?:?); virtual;//v94//004B962C
    //procedure vB0(?:?; ?:?; ?:?); virtual;//vB0//004B94DC
    //procedure vB4(?:TRect; ?:?; ?:?; ?:?; ?:?); virtual;//vB4//004B93A8
    procedure vCC; virtual;//vCC//004B95DC
    //procedure vD8(?:?); virtual;//vD8//004B8EE8
    procedure vDC; virtual;//vDC//004B9168
    procedure vE0; virtual;//vE0//004B8C64
    //procedure vE4(?:?); virtual;//vE4//004B9398
    procedure vE8; virtual;//vE8//004B89BC
    procedure vEC; virtual;//vEC//004B8B48
    //procedure CMTextChanged(?:?); message CM_TEXTCHANGED;//004B8E6C
    //procedure CMMouseEnter(?:?); message CM_MOUSEENTER;//004B8D9C
    //procedure sub_00484338(?:?; ?:?; ?:?); dynamic;//004B8FB0
    //procedure sub_004859D0(?:?; ?:?; ?:?; ?:?); dynamic;//004B9874
    //procedure sub_004842E0(?:?; ?:?; ?:?; ?:?; ?:?); dynamic;//004B9030
    procedure sub_004854CC; dynamic;//004B8C2C
  end;
  TCustomMenuButton = class(TCustomButtonControl)
  public
    FCloseMenu:Boolean;//f1B0
    FDoClick:Boolean;//f1B1
    destructor Destroy; virtual;//004B9984
    constructor v2C; virtual;//v2C//004B9930
    procedure v8C; virtual;//v8C//004B9FB0
    //procedure v94(?:?; ?:?; ?:?); virtual;//v94//004B9B8C
    //procedure vB0(?:?; ?:?; ?:?); virtual;//vB0//004B9D08
    procedure vE0; virtual;//vE0//004B9E64
    //procedure CMDialogChar(?:?); message CM_DIALOGCHAR;//004B9FF8
    //procedure CMMouseEnter(?:?); message CM_MOUSEENTER;//004B9AF8
    //procedure sub_004859D0(?:?; ?:?; ?:?; ?:?); dynamic;//004B9F58
    //procedure sub_00485588(?:?; ?:?; ?:?; ?:?); dynamic;//004B9E84
    //procedure sub_004842E0(?:?; ?:?; ?:?; ?:?; ?:?); dynamic;//004B9C18
    procedure sub_004854CC; dynamic;//004B9A1C
    procedure sub_004841BC; dynamic;//004B99F0
  end;
  TCustomAddRemoveItem = class(TCustomMenuItem)
  public
    //procedure v64(?:?); virtual;//v64//004B6F50
    procedure vDC; virtual;//vDC//004B6E90
    //procedure sub_004859D0(?:?; ?:?; ?:?; ?:?); dynamic;//004B6F1C
  end;
  TMenuList = class(TList)
  public
    //procedure v4(?:?; ?:?); virtual;//v4//004B2BF0
  end;
  TInternalMDIAction = class(TWindowAction)
  public
    FClientItem:TActionClientItem;//fA8
    FMenu:TCustomActionMainMenuBar;//fAC
    FMDIAction:TMDIAction;//fB0
    destructor Destroy; virtual;//004B29D0
    //function v38(?:?):?; virtual;//v38//004B2ACC
    //procedure v3C(?:?); virtual;//v3C//004B2AE4
    //procedure v40(?:?); virtual;//v40//004B2A1C
  end;
    //function sub_004B2778(?:TMenuStack; ?:?):?;//004B2778
    //function sub_004B279C(?:TMenuStack):?;//004B279C
    //function sub_004B27B8(?:TMenuStack):?;//004B27B8
    procedure sub_004B2864(?:TMenuStack; ?:TCustomActionMenuBar);//004B2864
    destructor Destroy;//004B29D0
    //procedure sub_004B2A1C(?:?);//004B2A1C
    //function sub_004B2ACC(?:?):?;//004B2ACC
    //procedure sub_004B2AE4(?:?);//004B2AE4
    //function sub_004B2B00(?:?; ?:?; ?:?):?;//004B2B00
    procedure sub_004B2B70(?:TCustomActionMenuBar);//004B2B70
    //procedure sub_004B2BB8(?:?);//004B2BB8
    //procedure sub_004B2BF0(?:?; ?:?);//004B2BF0
    constructor sub_004B2C68;//004B2C68
    destructor Destroy;//004B2D1C
    procedure DefaultSystemAnimation;//004B2D80
    procedure DoAnimation(Style:TAnimationStyle);//004B2EC4
    procedure sub_004B3120(?:TCustomActionMenuBar);//004B3120
    procedure sub_004B3158(?:TCustomActionMenuBar);//004B3158
    procedure sub_004B31B8;//004B31B8
    //procedure sub_004B3294(?:?);//004B3294
    //procedure sub_004B32D8(?:?);//004B32D8
    //procedure sub_004B32F4(?:?);//004B32F4
    //function sub_004B3338(?:?):?;//004B3338
    //function sub_004B33C0(?:?; ?:?):?;//004B33C0
    procedure sub_004B3650(?:TCustomActionMenuBar; ?:TCustomMenuItem);//004B3650
    //procedure sub_004B372C(?:?);//004B372C
    procedure sub_004B3790;//004B3790
    //function sub_004B37D4(?:?):?;//004B37D4
    //function sub_004B39C8(?:?):?;//004B39C8
    //function sub_004B3A60(?:TCustomActionMenuBar; ?:?):?;//004B3A60
    procedure sub_004B3C78;//004B3C78
    //procedure sub_004B3D08(?:?);//004B3D08
    //procedure sub_004B3D3C(?:?);//004B3D3C
    //function sub_004B3EB0:?;//004B3EB0
    //function sub_004B3F00(?:TCustomActionMenuBar; ?:?):?;//004B3F00
    //function sub_004B3FD8:?;//004B3FD8
    //function sub_004B4028(?:TCustomActionMenuBar):?;//004B4028
    procedure sub_004B40A4;//004B40A4
    //function sub_004B424C:?;//004B424C
    //procedure sub_004B4304(?:?);//004B4304
    //function sub_004B4454:?;//004B4454
    //function sub_004B4770(?:?; ?:?; ?:?):?;//004B4770
    //procedure sub_004B4858(?:?);//004B4858
    //procedure sub_004B48E4(?:TCustomActionMenuBar; ?:?);//004B48E4
    //procedure sub_004B4A00(?:TCustomActionMenuBar; ?:?);//004B4A00
    //procedure sub_004B4A24(?:?);//004B4A24
    //procedure sub_004B4A5C(?:?; ?:?);//004B4A5C
    //procedure sub_004B4B14(?:?);//004B4B14
    //procedure sub_004B4B9C(?:?);//004B4B9C
    procedure TrackMenu;//004B4BC8
    //procedure sub_004B4CEC(?:?);//004B4CEC
    //procedure WMKeyDown(?:?);//004B4D20
    //procedure WMMouseActivate(?:?);//004B5078
    //procedure WMSysKeyDown(?:?);//004B50AC
    //function sub_004B5150(?:?):?;//004B5150
    //procedure CMFontChanged(?:?);//004B52B4
    //procedure sub_004B52F0(?:?; ?:?);//004B52F0
    //function sub_004B5364(?:TCustomActionMenuBar):?;//004B5364
    procedure sub_004B5474(?:TCustomActionMenuBar);//004B5474
    //procedure sub_004B54F4(?:TCustomActionMenuBar; ?:?);//004B54F4
    //function sub_004B5654(?:TCustomActionMenuBar; ?:?):?;//004B5654
    procedure sub_004B56E8(?:TCustomActionMenuBar);//004B56E8
    //function sub_004B5704:?;//004B5704
    procedure sub_004B5750;//004B5750
    procedure sub_004B5788;//004B5788
    //procedure sub_004B57A8(?:TCustomActionMenuBar; ?:?);//004B57A8
    constructor sub_004B580C;//004B580C
    //procedure sub_004842E0(?:?; ?:?; ?:?; ?:?; ?:?);//004B58B4
    //procedure sub_004B58D0(?:?);//004B58D0
    //procedure sub_004B595C(?:?; ?:?);//004B595C
    //function sub_004B59A4(?:TCustomMenuExpandBtn):?;//004B59A4
    constructor sub_004B59CC;//004B59CC
    destructor Destroy;//004B5AE0
    //procedure sub_004B5B44(?:?);//004B5B44
    //procedure CMMouseLeave(?:?);//004B5CF4
    //procedure CMVisibleChanged(?:?);//004B5D50
    //function sub_004B5D8C(?:?):?;//004B5D8C
    procedure sub_004B5E0C;//004B5E0C
    //procedure sub_004B5E4C(?:?);//004B5E4C
    //procedure sub_00484E9C(?:?);//004B5EC0
    //procedure sub_004B5ED8(?:?);//004B5ED8
    //procedure sub_004B5EFC(?:?);//004B5EFC
    //procedure sub_004B6068(?:?; ?:?);//004B6068
    //function sub_004B6150(?:TPoint; ?:?):?;//004B6150
    //procedure sub_004B6178(?:?; ?:?);//004B6178
    procedure sub_004B6558(?:TCustomActionPopupMenu);//004B6558
    //procedure sub_004B6638(?:?);//004B6638
    //procedure WMKeyDown(?:?);//004B665C
    //procedure sub_004B6980(?:?);//004B6980
    //procedure sub_0048D780(?:?);//004B69AC
    procedure sub_0048513C;//004B6A6C
    procedure sub_004B6BCC;//004B6BCC
    //procedure sub_004B6C24(?:?);//004B6C24
    //function sub_004B6C54:?;//004B6C54
    //function sub_004B6C6C(?:?; ?:?):?;//004B6C6C
    procedure sub_004B6CA8;//004B6CA8
    procedure sub_004B6D3C;//004B6D3C
    //procedure sub_004B6D70(?:?);//004B6D70
    //procedure sub_004B6DAC(?:?; ?:?);//004B6DAC
    //procedure sub_004B6E0C(?:TCustomActionPopupMenu; ?:?);//004B6E0C
    procedure sub_004B6E40;//004B6E40
    procedure sub_004B6E90;//004B6E90
    //procedure sub_004859D0(?:?; ?:?; ?:?; ?:?);//004B6F1C
    //procedure sub_004B6F50(?:?);//004B6F50
    constructor sub_004B6F6C;//004B6F6C
    destructor Destroy;//004B6FD4
    //function sub_004B7014(?:?; ?:?):?;//004B7014
    procedure sub_004B7060;//004B7060
    //procedure sub_004B706C(?:?);//004B706C
    //function sub_004B7088(?:?):?;//004B7088
    //function sub_004B70D4:?;//004B70D4
    //function sub_004B7110(?:?; ?:?):?;//004B7110
    //function sub_004B719C(?:?):?;//004B719C
    //procedure sub_004B7318(?:?; ?:?; ?:?);//004B7318
    //function sub_004B7398:?;//004B7398
    //procedure sub_004B73E0(?:?);//004B73E0
    //procedure sub_004B741C(?:?; ?:?; ?:?);//004B741C
    //procedure sub_004B74E0(?:?);//004B74E0
    //function sub_004B7740:?;//004B7740
    procedure sub_004B7790;//004B7790
    constructor sub_004B7804;//004B7804
    destructor Destroy;//004B7914
    procedure sub_004B7970;//004B7970
    //procedure WMKeyDown(?:?);//004B798C
    procedure sub_0048BFC8;//004B7B14
    //function sub_004B7B28(?:?):?;//004B7B28
    //procedure sub_00484E9C(?:?);//004B7B74
    procedure sub_004B7BF8;//004B7BF8
    //procedure sub_004B7C34(?:?);//004B7C34
    //procedure WMNCHitTest(?:?);//004B7D00
    //procedure sub_004B7D34(?:?);//004B7D34
    //procedure CMWinIniChange(?:?);//004B7DB8
    //procedure sub_004B7DFC(?:?);//004B7DFC
    //procedure sub_004B7E30(?:TCustomActionMainMenuBar; ?:?);//004B7E30
    //procedure CMEnabledChanged(?:?);//004B7E64
    //function sub_004B7E94:?;//004B7E94
    //procedure sub_004B7EC0(?:?; ?:?);//004B7EC0
    procedure sub_004B7F74(?:TCustomActionMainMenuBar);//004B7F74
    //function sub_004B7FBC(?:?; ?:?):?;//004B7FBC
    //function sub_004B826C(?:?; ?:?):?;//004B826C
    //procedure sub_004B8484(?:?; ?:?);//004B8484
    //procedure sub_004B8530(?:?);//004B8530
    //procedure sub_004B8564(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);//004B8564
    procedure sub_004B8610;//004B8610
    //procedure WMSysCommand(?:?);//004B8648
    //procedure WMSysKeyDown(?:?);//004B8774
    //procedure WMSysKeyUp(?:?);//004B87A4
    //function sub_004B87D4(?:?; ?:?):?;//004B87D4
    procedure TrackMenu;//004B883C
    constructor sub_004B8894;//004B8894
    destructor Destroy;//004B8950
    procedure sub_004B89BC;//004B89BC
    procedure sub_004B8AD8;//004B8AD8
    procedure sub_004B8B48;//004B8B48
    procedure sub_004854CC;//004B8C2C
    procedure sub_004B8C64;//004B8C64
    //procedure sub_004B8CD4(?:TCustomMenuItem; ?:?);//004B8CD4
    //procedure CMMouseEnter(?:?);//004B8D9C
    //procedure CMTextChanged(?:?);//004B8E6C
    //procedure sub_004B8EE8(?:?);//004B8EE8
    //procedure sub_00484338(?:?; ?:?; ?:?);//004B8FB0
    //procedure sub_004842E0(?:?; ?:?; ?:?; ?:?; ?:?);//004B9030
    procedure sub_004B9168;//004B9168
    procedure sub_004B9334;//004B9334
    //procedure sub_004B9398(?:?);//004B9398
    //procedure sub_004B93A8(?:TRect; ?:?; ?:?; ?:?; ?:?);//004B93A8
    //procedure sub_004B94DC(?:?; ?:?; ?:?);//004B94DC
    procedure sub_004B95DC;//004B95DC
    //procedure sub_004B962C(?:?; ?:?; ?:?);//004B962C
    //procedure sub_004859D0(?:?; ?:?; ?:?; ?:?);//004B9874
    constructor sub_004B9930;//004B9930
    destructor Destroy;//004B9984
    procedure sub_004841BC;//004B99F0
    procedure sub_004854CC;//004B9A1C
    //procedure CMMouseEnter(?:?);//004B9AF8
    //procedure sub_004B9B8C(?:?; ?:?; ?:?);//004B9B8C
    //procedure sub_004842E0(?:?; ?:?; ?:?; ?:?; ?:?);//004B9C18
    //procedure sub_004B9D08(?:?; ?:?; ?:?);//004B9D08
    //function sub_004B9E3C(?:TCustomMenuButton):?;//004B9E3C
    procedure sub_004B9E64;//004B9E64
    //procedure sub_00485588(?:?; ?:?; ?:?; ?:?);//004B9E84
    //procedure sub_004859D0(?:?; ?:?; ?:?; ?:?);//004B9F58
    procedure sub_004B9FB0;//004B9FB0
    //procedure CMDialogChar(?:?);//004B9FF8
    procedure RegisterActnBarStyle(AStyle:TActionBarStyleEx);//004BA008
    procedure UnRegisterActnBarStyle(AStyle:TActionBarStyleEx);//004BA0A4

implementation

//004B1638
procedure TActionBarStyleEx.GetPopupClass;
begin
{*
>004B1638    jmp         @AbstractError
*}
end;

//004B1640
procedure TActionBarStyleEx.GetAddRemoveItemClass;
begin
{*
>004B1640    jmp         @AbstractError
*}
end;

//004B1648
procedure TActionBarStyleEx.GetScrollBtnClass;
begin
{*
>004B1648    jmp         @AbstractError
*}
end;

//004B2728
constructor TMenuStack.Create;
begin
{*
 004B2728    push        ebp
 004B2729    mov         ebp,esp
 004B272B    add         esp,0FFFFFFF4
 004B272E    test        dl,dl
>004B2730    je          004B273A
 004B2732    add         esp,0FFFFFFF0
 004B2735    call        @ClassCreate
 004B273A    mov         dword ptr [ebp-0C],ecx
 004B273D    mov         byte ptr [ebp-5],dl
 004B2740    mov         dword ptr [ebp-4],eax
 004B2743    xor         edx,edx
 004B2745    mov         eax,dword ptr [ebp-4]
 004B2748    call        TOrderedList.Create
 004B274D    mov         eax,dword ptr [ebp-4]
 004B2750    mov         edx,dword ptr [ebp-0C]
 004B2753    mov         dword ptr [eax+8],edx
 004B2756    mov         eax,dword ptr [ebp-4]
 004B2759    cmp         byte ptr [ebp-5],0
>004B275D    je          004B276E
 004B275F    call        @AfterConstruction
 004B2764    pop         dword ptr fs:[0]
 004B276B    add         esp,0C
 004B276E    mov         eax,dword ptr [ebp-4]
 004B2771    mov         esp,ebp
 004B2773    pop         ebp
 004B2774    ret
*}
end;

//004B2778
{*function sub_004B2778(?:TMenuStack; ?:?):?;
begin
 004B2778    push        ebp
 004B2779    mov         ebp,esp
 004B277B    add         esp,0FFFFFFF4
 004B277E    mov         dword ptr [ebp-8],edx
 004B2781    mov         dword ptr [ebp-4],eax
 004B2784    mov         edx,dword ptr [ebp-8]
 004B2787    mov         eax,dword ptr [ebp-4]
 004B278A    mov         eax,dword ptr [eax+4]
 004B278D    call        TList.Get
 004B2792    mov         dword ptr [ebp-0C],eax
 004B2795    mov         eax,dword ptr [ebp-0C]
 004B2798    mov         esp,ebp
 004B279A    pop         ebp
 004B279B    ret
end;*}

//004B279C
{*function sub_004B279C(?:TMenuStack):?;
begin
 004B279C    push        ebp
 004B279D    mov         ebp,esp
 004B279F    add         esp,0FFFFFFF8
 004B27A2    mov         dword ptr [ebp-4],eax
 004B27A5    mov         eax,dword ptr [ebp-4]
 004B27A8    call        00437868
 004B27AD    mov         dword ptr [ebp-8],eax
 004B27B0    mov         eax,dword ptr [ebp-8]
 004B27B3    pop         ecx
 004B27B4    pop         ecx
 004B27B5    pop         ebp
 004B27B6    ret
end;*}

//004B27B8
{*function sub_004B27B8(?:TMenuStack):?;
begin
 004B27B8    push        ebp
 004B27B9    mov         ebp,esp
 004B27BB    add         esp,0FFFFFFF8
 004B27BE    mov         dword ptr [ebp-4],eax
 004B27C1    mov         eax,dword ptr [ebp-4]
 004B27C4    mov         edx,dword ptr [eax]
 004B27C6    call        dword ptr [edx+4]
 004B27C9    mov         dword ptr [ebp-8],eax
 004B27CC    mov         eax,dword ptr [ebp-4]
 004B27CF    mov         eax,dword ptr [eax+8]
 004B27D2    test        byte ptr [eax+1C],10
>004B27D6    je          004B27E2
 004B27D8    lea         eax,[ebp-8]
 004B27DB    call        FreeAndNil
>004B27E0    jmp         004B285D
 004B27E2    mov         eax,dword ptr [ebp-8]
 004B27E5    cmp         dword ptr [eax+210],0
>004B27EC    je          004B285D
 004B27EE    mov         eax,dword ptr [ebp-8]
 004B27F1    mov         eax,dword ptr [eax+210]
 004B27F7    xor         edx,edx
 004B27F9    mov         dword ptr [eax+18],edx
 004B27FC    mov         eax,dword ptr [ebp-8]
 004B27FF    xor         edx,edx
 004B2801    mov         dword ptr [eax+2FC],edx
 004B2807    xor         edx,edx
 004B2809    mov         eax,dword ptr [ebp-8]
 004B280C    mov         ecx,dword ptr [eax]
 004B280E    call        dword ptr [ecx+124]
 004B2814    mov         eax,dword ptr [ebp-4]
 004B2817    call        004377BC
 004B281C    dec         eax
>004B281D    jne         004B2855
 004B281F    mov         eax,dword ptr [ebp-4]
 004B2822    mov         eax,dword ptr [eax+8]
 004B2825    mov         edx,dword ptr ds:[4B1A20];TCustomActionPopupMenu
 004B282B    call        @IsClass
 004B2830    test        al,al
>004B2832    jne         004B2855
 004B2834    mov         eax,dword ptr [ebp-4]
 004B2837    call        004B279C
 004B283C    add         eax,2F8
 004B2841    push        eax
 004B2842    mov         eax,dword ptr [ebp-8]
 004B2845    mov         edx,dword ptr ds:[4B1A20];TCustomActionPopupMenu
 004B284B    call        @AsClass
 004B2850    pop         edx
 004B2851    mov         dword ptr [edx],eax
>004B2853    jmp         004B285D
 004B2855    lea         eax,[ebp-8]
 004B2858    call        FreeAndNil
 004B285D    mov         eax,dword ptr [ebp-8]
 004B2860    pop         ecx
 004B2861    pop         ecx
 004B2862    pop         ebp
 004B2863    ret
end;*}

//004B2864
procedure sub_004B2864(?:TMenuStack; ?:TCustomActionMenuBar);
begin
{*
 004B2864    push        ebp
 004B2865    mov         ebp,esp
 004B2867    add         esp,0FFFFFFF8
 004B286A    mov         dword ptr [ebp-8],edx
 004B286D    mov         dword ptr [ebp-4],eax
 004B2870    mov         edx,dword ptr [ebp-8]
 004B2873    mov         eax,dword ptr [ebp-4]
 004B2876    mov         ecx,dword ptr [eax]
 004B2878    call        dword ptr [ecx]
 004B287A    pop         ecx
 004B287B    pop         ecx
 004B287C    pop         ebp
 004B287D    ret
*}
end;

//004B29D0
destructor TInternalMDIAction.Destroy;
begin
{*
 004B29D0    push        ebp
 004B29D1    mov         ebp,esp
 004B29D3    add         esp,0FFFFFFF8
 004B29D6    call        @BeforeDestruction
 004B29DB    mov         byte ptr [ebp-5],dl
 004B29DE    mov         dword ptr [ebp-4],eax
 004B29E1    mov         eax,dword ptr [ebp-4]
 004B29E4    cmp         dword ptr [eax+0A8],0
>004B29EB    je          004B29FB
 004B29ED    mov         eax,dword ptr [ebp-4]
 004B29F0    mov         eax,dword ptr [eax+0A8]
 004B29F6    call        TObject.Free
 004B29FB    mov         dl,byte ptr [ebp-5]
 004B29FE    and         dl,0FC
 004B2A01    mov         eax,dword ptr [ebp-4]
 004B2A04    call        TCustomAction.Destroy
 004B2A09    cmp         byte ptr [ebp-5],0
>004B2A0D    jle         004B2A17
 004B2A0F    mov         eax,dword ptr [ebp-4]
 004B2A12    call        @ClassDestroy
 004B2A17    pop         ecx
 004B2A18    pop         ecx
 004B2A19    pop         ebp
 004B2A1A    ret
*}
end;

//004B2A1C
{*procedure sub_004B2A1C(?:?);
begin
 004B2A1C    push        ebp
 004B2A1D    mov         ebp,esp
 004B2A1F    add         esp,0FFFFFFF8
 004B2A22    mov         dword ptr [ebp-8],edx
 004B2A25    mov         dword ptr [ebp-4],eax
 004B2A28    mov         eax,dword ptr [ebp-4]
 004B2A2B    mov         al,byte ptr [eax+0B0];TInternalMDIAction.FMDIAction:TMDIAction
 004B2A31    sub         al,1
>004B2A33    jb          004B2A44
>004B2A35    je          004B2A76
 004B2A37    dec         al
>004B2A39    je          004B2A86
 004B2A3B    dec         al
>004B2A3D    je          004B2AB8
>004B2A3F    jmp         004B2AC6
 004B2A44    push        0
 004B2A46    mov         eax,dword ptr [ebp-4]
 004B2A49    mov         eax,dword ptr [eax+0A0];TInternalMDIAction....................FForm:TCustomForm
 004B2A4F    call        TWinControl.GetHandle
 004B2A54    push        eax
 004B2A55    push        222
 004B2A5A    mov         eax,dword ptr [ebp-4]
 004B2A5D    mov         eax,dword ptr [eax+0A0];TInternalMDIAction.....................FForm:TCustomForm
 004B2A63    call        TWinControl.GetHandle
 004B2A68    push        eax
 004B2A69    call        user32.GetParent
 004B2A6E    push        eax
 004B2A6F    call        user32.SendMessageA
>004B2A74    jmp         004B2AC6
 004B2A76    mov         eax,dword ptr [ebp-4]
 004B2A79    mov         eax,dword ptr [eax+0A0];TInternalMDIAction......................FForm:TCustomForm
 004B2A7F    call        004A7264
>004B2A84    jmp         004B2AC6
 004B2A86    push        0
 004B2A88    mov         eax,dword ptr [ebp-4]
 004B2A8B    mov         eax,dword ptr [eax+0A0];TInternalMDIAction.......................FForm:TCustomForm
 004B2A91    call        TWinControl.GetHandle
 004B2A96    push        eax
 004B2A97    push        223
 004B2A9C    mov         eax,dword ptr [ebp-4]
 004B2A9F    mov         eax,dword ptr [eax+0A0];TInternalMDIAction........................FForm:TCustomForm
 004B2AA5    call        TWinControl.GetHandle
 004B2AAA    push        eax
 004B2AAB    call        user32.GetParent
 004B2AB0    push        eax
 004B2AB1    call        user32.SendMessageA
>004B2AB6    jmp         004B2AC6
 004B2AB8    mov         eax,dword ptr [ebp-4]
 004B2ABB    mov         eax,dword ptr [eax+0A0];TInternalMDIAction.........................FForm:TCustomForm
 004B2AC1    call        004A7264
 004B2AC6    pop         ecx
 004B2AC7    pop         ecx
 004B2AC8    pop         ebp
 004B2AC9    ret
end;*}

//004B2ACC
{*function sub_004B2ACC(?:?):?;
begin
 004B2ACC    push        ebp
 004B2ACD    mov         ebp,esp
 004B2ACF    add         esp,0FFFFFFF4
 004B2AD2    mov         dword ptr [ebp-0C],edx
 004B2AD5    mov         dword ptr [ebp-4],eax
 004B2AD8    mov         byte ptr [ebp-5],1
 004B2ADC    mov         al,byte ptr [ebp-5]
 004B2ADF    mov         esp,ebp
 004B2AE1    pop         ebp
 004B2AE2    ret
end;*}

//004B2AE4
{*procedure sub_004B2AE4(?:?);
begin
 004B2AE4    push        ebp
 004B2AE5    mov         ebp,esp
 004B2AE7    add         esp,0FFFFFFF8
 004B2AEA    mov         dword ptr [ebp-8],edx
 004B2AED    mov         dword ptr [ebp-4],eax
 004B2AF0    mov         dl,1
 004B2AF2    mov         eax,dword ptr [ebp-4]
 004B2AF5    call        TVirtualListAction.SetEnabled
 004B2AFA    pop         ecx
 004B2AFB    pop         ecx
 004B2AFC    pop         ebp
 004B2AFD    ret
end;*}

//004B2B00
{*function sub_004B2B00(?:?; ?:?; ?:?):?;
begin
 004B2B00    push        ebp
 004B2B01    mov         ebp,esp
 004B2B03    push        ecx
 004B2B04    cmp         dword ptr [ebp+8],0
>004B2B08    jne         004B2B4E
 004B2B0A    mov         eax,dword ptr [ebp+10]
 004B2B0D    mov         eax,dword ptr [eax+8]
 004B2B10    sub         eax,6
>004B2B13    je          004B2B1C
 004B2B15    sub         eax,14
>004B2B18    je          004B2B3F
>004B2B1A    jmp         004B2B4E
 004B2B1C    mov         eax,[00571E80];0x0 gvar_00571E80:TCustomActionMenuBar
 004B2B21    mov         edx,dword ptr ds:[4B1A20];TCustomActionPopupMenu
 004B2B27    call        @IsClass
 004B2B2C    test        al,al
>004B2B2E    je          004B2B4E
 004B2B30    mov         eax,[00571E80];0x0 gvar_00571E80:TCustomActionMenuBar
 004B2B35    mov         edx,dword ptr [eax]
 004B2B37    call        dword ptr [edx+17C]
>004B2B3D    jmp         004B2B4E
 004B2B3F    cmp         dword ptr ds:[571E70],0;gvar_00571E70
>004B2B46    je          004B2B4E
 004B2B48    call        dword ptr ds:[571E70]
 004B2B4E    mov         eax,dword ptr [ebp+10]
 004B2B51    push        eax
 004B2B52    mov         eax,dword ptr [ebp+0C]
 004B2B55    push        eax
 004B2B56    mov         eax,dword ptr [ebp+8]
 004B2B59    push        eax
 004B2B5A    mov         eax,[00571E78];0x0 gvar_00571E78:HHOOK
 004B2B5F    push        eax
 004B2B60    call        user32.CallNextHookEx
 004B2B65    mov         dword ptr [ebp-4],eax
 004B2B68    mov         eax,dword ptr [ebp-4]
 004B2B6B    pop         ecx
 004B2B6C    pop         ebp
 004B2B6D    ret         0C
end;*}

//004B2B70
procedure sub_004B2B70(?:TCustomActionMenuBar);
begin
{*
 004B2B70    push        ebp
 004B2B71    mov         ebp,esp
 004B2B73    push        ecx
 004B2B74    mov         dword ptr [ebp-4],eax
 004B2B77    cmp         dword ptr ds:[571E7C],0;gvar_00571E7C:TMenuList
>004B2B7E    jne         004B2B91
 004B2B80    mov         dl,1
 004B2B82    mov         eax,[004B2880];TMenuList
 004B2B87    call        TObject.Create;TMenuList.Create
 004B2B8C    mov         [00571E7C],eax;gvar_00571E7C:TMenuList
 004B2B91    cmp         dword ptr [ebp-4],0
>004B2B95    je          004B2BB4
 004B2B97    mov         edx,dword ptr [ebp-4]
 004B2B9A    mov         eax,[00571E7C];0x0 gvar_00571E7C:TMenuList
 004B2B9F    call        004202BC
 004B2BA4    inc         eax
>004B2BA5    jne         004B2BB4
 004B2BA7    mov         edx,dword ptr [ebp-4]
 004B2BAA    mov         eax,[00571E7C];0x0 gvar_00571E7C:TMenuList
 004B2BAF    call        TList.Add
 004B2BB4    pop         ecx
 004B2BB5    pop         ebp
 004B2BB6    ret
*}
end;

//004B2BB8
{*procedure sub_004B2BB8(?:?);
begin
 004B2BB8    push        ebp
 004B2BB9    mov         ebp,esp
 004B2BBB    push        ecx
 004B2BBC    mov         dword ptr [ebp-4],eax
 004B2BBF    cmp         dword ptr ds:[571E7C],0;gvar_00571E7C:TMenuList
>004B2BC6    je          004B2BEA
 004B2BC8    mov         edx,dword ptr [ebp-4]
 004B2BCB    mov         eax,[00571E7C];0x0 gvar_00571E7C:TMenuList
 004B2BD0    call        004204F0
 004B2BD5    mov         eax,[00571E7C];0x0 gvar_00571E7C:TMenuList
 004B2BDA    cmp         dword ptr [eax+8],0;TMenuList.FCount:Integer
>004B2BDE    jne         004B2BEA
 004B2BE0    mov         eax,571E7C;gvar_00571E7C:TMenuList
 004B2BE5    call        FreeAndNil
 004B2BEA    pop         ecx
 004B2BEB    pop         ebp
 004B2BEC    ret
end;*}

//004B2BF0
{*procedure sub_004B2BF0(?:?; ?:?);
begin
 004B2BF0    push        ebp
 004B2BF1    mov         ebp,esp
 004B2BF3    add         esp,0FFFFFFF4
 004B2BF6    mov         byte ptr [ebp-9],cl
 004B2BF9    mov         dword ptr [ebp-8],edx
 004B2BFC    mov         dword ptr [ebp-4],eax
 004B2BFF    cmp         byte ptr [ebp-9],0
>004B2C03    jne         004B2C2A
 004B2C05    mov         eax,dword ptr [ebp-4]
 004B2C08    cmp         dword ptr [eax+8],1;TMenuList.FCount:Integer
>004B2C0C    jne         004B2C2A
 004B2C0E    call        kernel32.GetCurrentThreadId
 004B2C13    push        eax
 004B2C14    push        0
 004B2C16    mov         eax,4B2B00;sub_004B2B00
 004B2C1B    push        eax
 004B2C1C    push        4
 004B2C1E    call        user32.SetWindowsHookExA
 004B2C23    mov         [00571E78],eax;gvar_00571E78:HHOOK
>004B2C28    jmp         004B2C54
 004B2C2A    cmp         byte ptr [ebp-9],2
>004B2C2E    jne         004B2C54
 004B2C30    mov         eax,dword ptr [ebp-4]
 004B2C33    cmp         dword ptr [eax+8],0;TMenuList.FCount:Integer
>004B2C37    jne         004B2C54
 004B2C39    cmp         dword ptr ds:[571E78],0;gvar_00571E78:HHOOK
>004B2C40    je          004B2C54
 004B2C42    mov         eax,[00571E78];0x0 gvar_00571E78:HHOOK
 004B2C47    push        eax
 004B2C48    call        user32.UnhookWindowsHookEx
 004B2C4D    xor         eax,eax
 004B2C4F    mov         [00571E78],eax;gvar_00571E78:HHOOK
 004B2C54    mov         cl,byte ptr [ebp-9]
 004B2C57    mov         edx,dword ptr [ebp-8]
 004B2C5A    mov         eax,dword ptr [ebp-4]
 004B2C5D    call        00420628
 004B2C62    mov         esp,ebp
 004B2C64    pop         ebp
 004B2C65    ret
end;*}

//004B2C68
constructor sub_004B2C68;
begin
{*
 004B2C68    push        ebp
 004B2C69    mov         ebp,esp
 004B2C6B    add         esp,0FFFFFFF4
 004B2C6E    test        dl,dl
>004B2C70    je          004B2C7A
 004B2C72    add         esp,0FFFFFFF0
 004B2C75    call        @ClassCreate
 004B2C7A    mov         dword ptr [ebp-0C],ecx
 004B2C7D    mov         byte ptr [ebp-5],dl
 004B2C80    mov         dword ptr [ebp-4],eax
 004B2C83    mov         ecx,dword ptr [ebp-0C]
 004B2C86    xor         edx,edx
 004B2C88    mov         eax,dword ptr [ebp-4]
 004B2C8B    call        004B11D0
 004B2C90    mov         eax,dword ptr [ebp-4]
 004B2C93    mov         byte ptr [eax+289],1;TCustomActionMenuBar.FAnimationStyle:TAnimationStyle
 004B2C9A    xor         edx,edx
 004B2C9C    mov         eax,dword ptr [ebp-4]
 004B2C9F    call        TToolBar.SetEdgeOuter
 004B2CA4    mov         eax,dword ptr [ebp-4]
 004B2CA7    mov         dword ptr [eax+2C0],0FA0;TCustomActionMenuBar.FExpandDelay:Integer
 004B2CB1    mov         eax,dword ptr [ebp-4]
 004B2CB4    mov         byte ptr [eax+2C8],1;TCustomActionMenuBar.FDefaultFont:Boolean
 004B2CBB    mov         eax,dword ptr [ebp-4]
 004B2CBE    mov         byte ptr [eax+288],1;TCustomActionMenuBar.FAnimatePopups:Boolean
 004B2CC5    mov         eax,dword ptr [ebp-4]
 004B2CC8    call        004B2B70
 004B2CCD    mov         eax,dword ptr [ebp-4]
 004B2CD0    mov         dword ptr [eax+2D8],96;TCustomActionMenuBar.FAnimateDuration:Integer
 004B2CDA    mov         eax,dword ptr [ebp-4]
 004B2CDD    mov         byte ptr [eax+2F0],1;TCustomActionMenuBar.FUseSystemFont:Boolean
 004B2CE4    mov         eax,[0056E604];^Screen:TScreen
 004B2CE9    mov         eax,dword ptr [eax]
 004B2CEB    mov         edx,dword ptr [eax+88];TScreen.FMenuFont:TFont
 004B2CF1    mov         eax,dword ptr [ebp-4]
 004B2CF4    mov         eax,dword ptr [eax+68];TCustomActionMenuBar.FFont:TFont
 004B2CF7    mov         ecx,dword ptr [eax]
 004B2CF9    call        dword ptr [ecx+8];TFont.sub_0042DF9C
 004B2CFC    mov         eax,dword ptr [ebp-4]
 004B2CFF    cmp         byte ptr [ebp-5],0
>004B2D03    je          004B2D14
 004B2D05    call        @AfterConstruction
 004B2D0A    pop         dword ptr fs:[0]
 004B2D11    add         esp,0C
 004B2D14    mov         eax,dword ptr [ebp-4]
 004B2D17    mov         esp,ebp
 004B2D19    pop         ebp
 004B2D1A    ret
*}
end;

//004B2D1C
destructor TCustomActionMenuBar.Destroy;
begin
{*
 004B2D1C    push        ebp
 004B2D1D    mov         ebp,esp
 004B2D1F    add         esp,0FFFFFFF8
 004B2D22    call        @BeforeDestruction
 004B2D27    mov         byte ptr [ebp-5],dl
 004B2D2A    mov         dword ptr [ebp-4],eax
 004B2D2D    mov         eax,dword ptr [ebp-4]
 004B2D30    call        004B2BB8
 004B2D35    mov         eax,dword ptr [ebp-4]
 004B2D38    cmp         dword ptr [eax+2A8],0
>004B2D3F    je          004B2D52
 004B2D41    mov         eax,dword ptr [ebp-4]
 004B2D44    mov         eax,dword ptr [eax+2A8]
 004B2D4A    xor         edx,edx
 004B2D4C    mov         dword ptr [eax+2FC],edx
 004B2D52    mov         eax,dword ptr [ebp-4]
 004B2D55    add         eax,2F8
 004B2D5A    call        FreeAndNil
 004B2D5F    mov         dl,byte ptr [ebp-5]
 004B2D62    and         dl,0FC
 004B2D65    mov         eax,dword ptr [ebp-4]
 004B2D68    call        TCustomActionBar.Destroy
 004B2D6D    cmp         byte ptr [ebp-5],0
>004B2D71    jle         004B2D7B
 004B2D73    mov         eax,dword ptr [ebp-4]
 004B2D76    call        @ClassDestroy
 004B2D7B    pop         ecx
 004B2D7C    pop         ecx
 004B2D7D    pop         ebp
 004B2D7E    ret
*}
end;

//004B2D80
procedure DefaultSystemAnimation;
begin
{*
 004B2D80    push        ebp
 004B2D81    mov         ebp,esp
 004B2D83    add         esp,0FFFFFFE8
 004B2D86    push        0
 004B2D88    mov         eax,dword ptr [ebp+8]
 004B2D8B    add         eax,0FFFFFFFC
 004B2D8E    push        eax
 004B2D8F    push        0
 004B2D91    push        1002
 004B2D96    call        user32.SystemParametersInfoA
 004B2D9B    mov         eax,[0056E3A8];^gvar_0056C770
 004B2DA0    cmp         dword ptr [eax],0
>004B2DA3    je          004B2EC0
 004B2DA9    mov         eax,dword ptr [ebp+8]
 004B2DAC    mov         eax,dword ptr [eax-8]
 004B2DAF    mov         eax,dword ptr [eax+2A8]
 004B2DB5    cmp         byte ptr [eax+288],0
>004B2DBC    jne         004B2DCB
 004B2DBE    mov         eax,dword ptr [ebp+8]
 004B2DC1    cmp         byte ptr [eax-9],0
>004B2DC5    jne         004B2EC0
 004B2DCB    mov         eax,dword ptr [ebp+8]
 004B2DCE    cmp         dword ptr [eax-4],0
>004B2DD2    je          004B2EC0
 004B2DD8    push        0
 004B2DDA    mov         eax,dword ptr [ebp+8]
 004B2DDD    add         eax,0FFFFFFFC
 004B2DE0    push        eax
 004B2DE1    push        0
 004B2DE3    push        1012
 004B2DE8    call        user32.SystemParametersInfoA
 004B2DED    mov         eax,dword ptr [ebp+8]
 004B2DF0    cmp         dword ptr [eax-4],0
>004B2DF4    je          004B2E31
 004B2DF6    mov         eax,dword ptr [ebp+8]
 004B2DF9    movzx       eax,byte ptr [eax-9]
 004B2DFD    mov         eax,dword ptr [eax*4+56CB54]
 004B2E04    or          eax,80000
 004B2E09    push        eax
 004B2E0A    mov         eax,dword ptr [ebp+8]
 004B2E0D    mov         eax,dword ptr [eax-8]
 004B2E10    mov         eax,dword ptr [eax+2D8]
 004B2E16    push        eax
 004B2E17    mov         eax,dword ptr [ebp+8]
 004B2E1A    mov         eax,dword ptr [eax-8]
 004B2E1D    call        TWinControl.GetHandle
 004B2E22    push        eax
 004B2E23    mov         eax,[0056E3A8];^gvar_0056C770
 004B2E28    mov         eax,dword ptr [eax]
 004B2E2A    call        eax
>004B2E2C    jmp         004B2EC0
 004B2E31    lea         edx,[ebp-18]
 004B2E34    mov         eax,dword ptr [ebp+8]
 004B2E37    mov         eax,dword ptr [eax-8]
 004B2E3A    mov         eax,dword ptr [eax+2AC]
 004B2E40    call        00482ECC
 004B2E45    lea         edx,[ebp-18]
 004B2E48    lea         ecx,[ebp-8]
 004B2E4B    mov         eax,dword ptr [ebp+8]
 004B2E4E    mov         eax,dword ptr [eax-8]
 004B2E51    mov         eax,dword ptr [eax+2AC]
 004B2E57    mov         eax,dword ptr [eax+30]
 004B2E5A    call        TControl.ClientToScreen
 004B2E5F    mov         eax,dword ptr [ebp+8]
 004B2E62    mov         edx,dword ptr [ebp-8]
 004B2E65    mov         dword ptr [eax-11],edx
 004B2E68    mov         edx,dword ptr [ebp-4]
 004B2E6B    mov         dword ptr [eax-0D],edx
 004B2E6E    mov         eax,dword ptr [ebp+8]
 004B2E71    mov         eax,dword ptr [eax-8]
 004B2E74    mov         eax,dword ptr [eax+44]
 004B2E77    mov         edx,dword ptr [ebp+8]
 004B2E7A    mov         edx,dword ptr [edx-0D]
 004B2E7D    sub         edx,5
 004B2E80    cmp         eax,edx
 004B2E82    setl        al
 004B2E85    and         eax,7F
 004B2E88    mov         eax,dword ptr [eax*4+56CB5C]
 004B2E8F    mov         edx,dword ptr [ebp+8]
 004B2E92    movzx       edx,byte ptr [edx-9]
 004B2E96    or          eax,dword ptr [edx*4+56CB54]
 004B2E9D    push        eax
 004B2E9E    mov         eax,dword ptr [ebp+8]
 004B2EA1    mov         eax,dword ptr [eax-8]
 004B2EA4    mov         eax,dword ptr [eax+2D8]
 004B2EAA    push        eax
 004B2EAB    mov         eax,dword ptr [ebp+8]
 004B2EAE    mov         eax,dword ptr [eax-8]
 004B2EB1    call        TWinControl.GetHandle
 004B2EB6    push        eax
 004B2EB7    mov         eax,[0056E3A8];^gvar_0056C770
 004B2EBC    mov         eax,dword ptr [eax]
 004B2EBE    call        eax
 004B2EC0    mov         esp,ebp
 004B2EC2    pop         ebp
 004B2EC3    ret
*}
end;

//004B2EC4
procedure DoAnimation(Style:TAnimationStyle);
begin
{*
 004B2EC4    push        ebp
 004B2EC5    mov         ebp,esp
 004B2EC7    add         esp,0FFFFFFD8
 004B2ECA    push        esi
 004B2ECB    push        edi
 004B2ECC    mov         esi,eax
 004B2ECE    lea         edi,[ebp-8]
 004B2ED1    movs        dword ptr [edi],dword ptr [esi]
 004B2ED2    movs        dword ptr [edi],dword ptr [esi]
 004B2ED3    mov         eax,[0056E3A8];^gvar_0056C770
 004B2ED8    cmp         dword ptr [eax],0
>004B2EDB    je          004B2EF2
 004B2EDD    mov         eax,dword ptr [ebp+8]
 004B2EE0    mov         eax,dword ptr [eax-8]
 004B2EE3    mov         eax,dword ptr [eax+2A8]
 004B2EE9    cmp         byte ptr [eax+288],0
>004B2EF0    jne         004B2EFF
 004B2EF2    mov         eax,dword ptr [ebp+8]
 004B2EF5    cmp         byte ptr [eax-9],0
>004B2EF9    jne         004B3069
 004B2EFF    lea         ecx,[ebp-18]
 004B2F02    mov         eax,dword ptr [ebp+8]
 004B2F05    mov         eax,dword ptr [eax-8]
 004B2F08    mov         eax,dword ptr [eax+2AC]
 004B2F0E    mov         edx,dword ptr [eax+44]
 004B2F11    mov         eax,dword ptr [ebp+8]
 004B2F14    mov         eax,dword ptr [eax-8]
 004B2F17    mov         eax,dword ptr [eax+2AC]
 004B2F1D    mov         eax,dword ptr [eax+40]
 004B2F20    call        Point
 004B2F25    lea         edx,[ebp-18]
 004B2F28    lea         ecx,[ebp-10]
 004B2F2B    mov         eax,dword ptr [ebp+8]
 004B2F2E    mov         eax,dword ptr [eax-8]
 004B2F31    mov         eax,dword ptr [eax+2AC]
 004B2F37    call        TControl.ClientToScreen
 004B2F3C    mov         eax,dword ptr [ebp+8]
 004B2F3F    mov         edx,dword ptr [ebp-10]
 004B2F42    mov         dword ptr [eax-11],edx
 004B2F45    mov         edx,dword ptr [ebp-0C]
 004B2F48    mov         dword ptr [eax-0D],edx
 004B2F4B    mov         eax,dword ptr [ebp+8]
 004B2F4E    mov         eax,dword ptr [eax-8]
 004B2F51    cmp         byte ptr [eax+289],3
>004B2F58    jne         004B2F67
 004B2F5A    mov         eax,dword ptr [ebp+8]
 004B2F5D    cmp         byte ptr [eax-9],0
>004B2F61    je          004B3069
 004B2F67    mov         eax,dword ptr [ebp+8]
 004B2F6A    mov         eax,dword ptr [eax-8]
 004B2F6D    mov         eax,dword ptr [eax+2AC]
 004B2F73    mov         edx,dword ptr ds:[4B2248];TCustomMenuItem
 004B2F79    call        @IsClass
 004B2F7E    test        al,al
>004B2F80    je          004B2FDD
 004B2F82    mov         eax,dword ptr [ebp+8]
 004B2F85    mov         eax,dword ptr [eax-8]
 004B2F88    mov         eax,dword ptr [eax+2AC]
 004B2F8E    mov         edx,dword ptr [eax+44]
 004B2F91    mov         eax,dword ptr [ebp+8]
 004B2F94    mov         eax,dword ptr [eax-8]
 004B2F97    mov         eax,dword ptr [eax+2AC]
 004B2F9D    mov         eax,dword ptr [eax+30]
 004B2FA0    add         edx,dword ptr [eax+44]
 004B2FA3    mov         eax,dword ptr [ebp+8]
 004B2FA6    mov         eax,dword ptr [eax-8]
 004B2FA9    mov         eax,dword ptr [eax+2AC]
 004B2FAF    mov         eax,dword ptr [eax+40]
 004B2FB2    mov         ecx,dword ptr [ebp+8]
 004B2FB5    mov         ecx,dword ptr [ecx-8]
 004B2FB8    mov         ecx,dword ptr [ecx+2AC]
 004B2FBE    mov         ecx,dword ptr [ecx+30]
 004B2FC1    add         eax,dword ptr [ecx+40]
 004B2FC4    lea         ecx,[ebp-10]
 004B2FC7    call        Point
 004B2FCC    mov         eax,dword ptr [ebp+8]
 004B2FCF    mov         edx,dword ptr [ebp-10]
 004B2FD2    mov         dword ptr [eax-11],edx
 004B2FD5    mov         edx,dword ptr [ebp-0C]
 004B2FD8    mov         dword ptr [eax-0D],edx
>004B2FDB    jmp         004B301A
 004B2FDD    lea         edx,[ebp-28]
 004B2FE0    mov         eax,dword ptr [ebp+8]
 004B2FE3    mov         eax,dword ptr [eax-8]
 004B2FE6    mov         eax,dword ptr [eax+2AC]
 004B2FEC    call        00482ECC
 004B2FF1    lea         edx,[ebp-28]
 004B2FF4    lea         ecx,[ebp-10]
 004B2FF7    mov         eax,dword ptr [ebp+8]
 004B2FFA    mov         eax,dword ptr [eax-8]
 004B2FFD    mov         eax,dword ptr [eax+2AC]
 004B3003    mov         eax,dword ptr [eax+30]
 004B3006    call        TControl.ClientToScreen
 004B300B    mov         eax,dword ptr [ebp+8]
 004B300E    mov         edx,dword ptr [ebp-10]
 004B3011    mov         dword ptr [eax-11],edx
 004B3014    mov         edx,dword ptr [ebp-0C]
 004B3017    mov         dword ptr [eax-0D],edx
 004B301A    mov         eax,dword ptr [ebp+8]
 004B301D    mov         eax,dword ptr [eax-0D]
 004B3020    mov         edx,dword ptr [ebp+8]
 004B3023    mov         edx,dword ptr [edx-8]
 004B3026    mov         edx,dword ptr [edx+44]
 004B3029    add         edx,2
 004B302C    cmp         eax,edx
 004B302E    setg        al
 004B3031    and         eax,7F
 004B3034    mov         eax,dword ptr [ebp+eax*4-8]
 004B3038    mov         edx,dword ptr [ebp+8]
 004B303B    movzx       edx,byte ptr [edx-9]
 004B303F    or          eax,dword ptr [edx*4+56CB54]
 004B3046    push        eax
 004B3047    mov         eax,dword ptr [ebp+8]
 004B304A    mov         eax,dword ptr [eax-8]
 004B304D    mov         eax,dword ptr [eax+2D8]
 004B3053    push        eax
 004B3054    mov         eax,dword ptr [ebp+8]
 004B3057    mov         eax,dword ptr [eax-8]
 004B305A    call        TWinControl.GetHandle
 004B305F    push        eax
 004B3060    mov         eax,[0056E3A8];^gvar_0056C770
 004B3065    mov         eax,dword ptr [eax]
 004B3067    call        eax
 004B3069    pop         edi
 004B306A    pop         esi
 004B306B    mov         esp,ebp
 004B306D    pop         ebp
 004B306E    ret
*}
end;

//004B3070
procedure TCustomActionMenuBar.Animate(Show:Boolean);
begin
{*
 004B3070    push        ebp
 004B3071    mov         ebp,esp
 004B3073    add         esp,0FFFFFFEC
 004B3076    mov         byte ptr [ebp-9],dl
 004B3079    mov         dword ptr [ebp-8],eax
 004B307C    mov         eax,dword ptr [ebp-8]
 004B307F    mov         edx,dword ptr [eax]
 004B3081    call        dword ptr [edx+104]
 004B3087    test        al,al
>004B3089    jne         004B311B
 004B308F    mov         eax,dword ptr [ebp-8]
 004B3092    mov         eax,dword ptr [eax+2C4]
 004B3098    cmp         byte ptr [eax+297],0
>004B309F    jne         004B311B
 004B30A1    mov         eax,dword ptr [ebp-8]
 004B30A4    mov         al,byte ptr [eax+289]
 004B30AA    dec         al
>004B30AC    je          004B30BC
 004B30AE    dec         al
>004B30B0    je          004B30C5
 004B30B2    dec         al
>004B30B4    je          004B30D3
 004B30B6    dec         al
>004B30B8    je          004B310F
>004B30BA    jmp         004B311B
 004B30BC    push        ebp
 004B30BD    call        DefaultSystemAnimation
 004B30C2    pop         ecx
>004B30C3    jmp         004B311B
 004B30C5    push        ebp
 004B30C6    mov         eax,56CB5C
 004B30CB    call        DoAnimation
 004B30D0    pop         ecx
>004B30D1    jmp         004B311B
 004B30D3    mov         eax,dword ptr [ebp-8]
 004B30D6    cmp         dword ptr [eax+2D8],64
>004B30DD    jle         004B3101
 004B30DF    mov         eax,dword ptr [ebp-8]
 004B30E2    sub         dword ptr [eax+2D8],64
 004B30E9    push        ebp
 004B30EA    mov         eax,56CB64
 004B30EF    call        DoAnimation
 004B30F4    pop         ecx
 004B30F5    mov         eax,dword ptr [ebp-8]
 004B30F8    add         dword ptr [eax+2D8],64
>004B30FF    jmp         004B311B
 004B3101    push        ebp
 004B3102    mov         eax,56CB64
 004B3107    call        DoAnimation
 004B310C    pop         ecx
>004B310D    jmp         004B311B
 004B310F    push        ebp
 004B3110    mov         eax,56CB6C
 004B3115    call        DoAnimation
 004B311A    pop         ecx
 004B311B    mov         esp,ebp
 004B311D    pop         ebp
 004B311E    ret
*}
end;

//004B3120
procedure sub_004B3120(?:TCustomActionMenuBar);
begin
{*
 004B3120    push        ebp
 004B3121    mov         ebp,esp
 004B3123    push        ecx
 004B3124    mov         dword ptr [ebp-4],eax
 004B3127    mov         eax,dword ptr [ebp-4]
 004B312A    mov         eax,dword ptr [eax+2B0]
 004B3130    call        004B279C
 004B3135    cmp         byte ptr [eax+296],0
>004B313C    jne         004B3154
 004B313E    mov         eax,dword ptr [ebp-4]
 004B3141    mov         eax,dword ptr [eax+2B0]
 004B3147    call        004B279C
 004B314C    mov         edx,dword ptr [eax]
 004B314E    call        dword ptr [edx+17C]
 004B3154    pop         ecx
 004B3155    pop         ebp
 004B3156    ret
*}
end;

//004B3158
procedure sub_004B3158(?:TCustomActionMenuBar);
begin
{*
 004B3158    push        ebp
 004B3159    mov         ebp,esp
 004B315B    add         esp,0FFFFFFF4
 004B315E    mov         dword ptr [ebp-4],eax
 004B3161    mov         eax,dword ptr [ebp-4]
 004B3164    cmp         byte ptr [eax+296],0
>004B316B    je          004B31B4
 004B316D    mov         eax,dword ptr [ebp-4]
 004B3170    cmp         dword ptr [eax+2B0],0
>004B3177    je          004B31B4
 004B3179    mov         eax,dword ptr [ebp-4]
 004B317C    mov         eax,dword ptr [eax+2B0]
 004B3182    call        004377BC
 004B3187    dec         eax
 004B3188    test        eax,eax
>004B318A    jle         004B31B4
 004B318C    mov         dword ptr [ebp-0C],eax
 004B318F    mov         dword ptr [ebp-8],1
 004B3196    mov         eax,dword ptr [ebp-4]
 004B3199    mov         eax,dword ptr [eax+2B0]
 004B319F    call        004B279C
 004B31A4    mov         edx,dword ptr [eax]
 004B31A6    call        dword ptr [edx+17C]
 004B31AC    inc         dword ptr [ebp-8]
 004B31AF    dec         dword ptr [ebp-0C]
>004B31B2    jne         004B3196
 004B31B4    mov         esp,ebp
 004B31B6    pop         ebp
 004B31B7    ret
*}
end;

//004B31B8
procedure sub_004B31B8;
begin
{*
 004B31B8    push        ebp
 004B31B9    mov         ebp,esp
 004B31BB    push        ecx
 004B31BC    mov         dword ptr [ebp-4],eax
 004B31BF    mov         eax,dword ptr [ebp-4]
 004B31C2    cmp         dword ptr [eax+2C4],0;TCustomActionMenuBar.FRootMenu:TCustomActionMenuBar
>004B31C9    je          004B31EC
 004B31CB    mov         eax,dword ptr [ebp-4]
 004B31CE    mov         eax,dword ptr [eax+2C4];TCustomActionMenuBar.FRootMenu:TCustomActionMenuBar
 004B31D4    xor         edx,edx
 004B31D6    mov         dword ptr [eax+28C],edx;TCustomActionMenuBar.FDelayItem:TCustomActionControl
 004B31DC    xor         edx,edx
 004B31DE    mov         eax,dword ptr [ebp-4]
 004B31E1    mov         eax,dword ptr [eax+2C4];TCustomActionMenuBar.FRootMenu:TCustomActionMenuBar
 004B31E7    call        004B57A8
 004B31EC    mov         eax,dword ptr [ebp-4]
 004B31EF    cmp         dword ptr [eax+2A8],0;TCustomActionMenuBar.FParentMenu:TCustomActionMenuBar
>004B31F6    je          004B3208
 004B31F8    mov         eax,dword ptr [ebp-4]
 004B31FB    mov         eax,dword ptr [eax+2A8];TCustomActionMenuBar.FParentMenu:TCustomActionMenuBar
 004B3201    mov         byte ptr [eax+288],0;TCustomActionMenuBar.FAnimatePopups:Boolean
 004B3208    mov         eax,dword ptr [ebp-4]
 004B320B    mov         byte ptr [eax+296],0;TCustomActionMenuBar.FInMenuLoop:Boolean
 004B3212    mov         eax,dword ptr [ebp-4]
 004B3215    cmp         dword ptr [eax+2C4],0;TCustomActionMenuBar.FRootMenu:TCustomActionMenuBar
>004B321C    je          004B3290
 004B321E    mov         eax,dword ptr [ebp-4]
 004B3221    mov         eax,dword ptr [eax+2C4];TCustomActionMenuBar.FRootMenu:TCustomActionMenuBar
 004B3227    cmp         dword ptr [eax+2B0],0;TCustomActionMenuBar.FPopupStack:TMenuStack
>004B322E    je          004B3290
 004B3230    mov         eax,dword ptr [ebp-4]
 004B3233    mov         eax,dword ptr [eax+2C4];TCustomActionMenuBar.FRootMenu:TCustomActionMenuBar
 004B3239    mov         eax,dword ptr [eax+2B0];TCustomActionMenuBar.FPopupStack:TMenuStack
 004B323F    call        004B279C
 004B3244    mov         edx,dword ptr [ebp-4]
 004B3247    cmp         eax,dword ptr [edx+2C4];TCustomActionMenuBar.FRootMenu:TCustomActionMenuBar
>004B324D    jne         004B327C
 004B324F    mov         eax,dword ptr [ebp-4]
 004B3252    mov         byte ptr [eax+296],0;TCustomActionMenuBar.FInMenuLoop:Boolean
 004B3259    mov         eax,dword ptr [ebp-4]
 004B325C    call        004B4028
 004B3261    test        eax,eax
>004B3263    je          004B3290
 004B3265    mov         eax,dword ptr [ebp-4]
 004B3268    call        004B4028
 004B326D    mov         eax,dword ptr [eax+40]
 004B3270    xor         edx,edx
 004B3272    mov         ecx,dword ptr [eax]
 004B3274    call        dword ptr [ecx+0D8]
>004B327A    jmp         004B3290
 004B327C    mov         eax,dword ptr [ebp-4]
 004B327F    mov         eax,dword ptr [eax+2C4];TCustomActionMenuBar.FRootMenu:TCustomActionMenuBar
 004B3285    mov         eax,dword ptr [eax+2B0];TCustomActionMenuBar.FPopupStack:TMenuStack
 004B328B    call        004B27B8
 004B3290    pop         ecx
 004B3291    pop         ebp
 004B3292    ret
*}
end;

//004B3294
{*procedure TCustomActionMenuBar.sub_004B3294(?:?);
begin
 004B3294    push        ebp
 004B3295    mov         ebp,esp
 004B3297    add         esp,0FFFFFFF8
 004B329A    mov         dword ptr [ebp-8],edx
 004B329D    mov         dword ptr [ebp-4],eax
 004B32A0    mov         eax,dword ptr [ebp-4]
 004B32A3    cmp         byte ptr [eax+296],0;TCustomActionMenuBar.FInMenuLoop:Boolean
>004B32AA    jne         004B32D4
 004B32AC    mov         eax,dword ptr [ebp-8]
 004B32AF    mov         eax,dword ptr [eax+8]
 004B32B2    push        eax
 004B32B3    push        0
 004B32B5    mov         eax,dword ptr [ebp-8]
 004B32B8    mov         eax,dword ptr [eax]
 004B32BA    push        eax
 004B32BB    mov         eax,dword ptr [ebp-4]
 004B32BE    call        TWinControl.GetHandle
 004B32C3    push        eax
 004B32C4    call        user32.PostMessageA
 004B32C9    mov         eax,dword ptr [ebp-4]
 004B32CC    mov         edx,dword ptr [eax]
 004B32CE    call        dword ptr [edx+180];TCustomActionMenuBar.TrackMenu
 004B32D4    pop         ecx
 004B32D5    pop         ecx
 004B32D6    pop         ebp
 004B32D7    ret
end;*}

//004B32D8
{*procedure TCustomActionMenuBar.sub_004B32D8(?:?);
begin
 004B32D8    push        ebp
 004B32D9    mov         ebp,esp
 004B32DB    add         esp,0FFFFFFF8
 004B32DE    mov         dword ptr [ebp-8],edx
 004B32E1    mov         dword ptr [ebp-4],eax
 004B32E4    mov         eax,dword ptr [ebp-4]
 004B32E7    mov         edx,dword ptr [eax]
 004B32E9    call        dword ptr [edx+180];TCustomActionMenuBar.TrackMenu
 004B32EF    pop         ecx
 004B32F0    pop         ecx
 004B32F1    pop         ebp
 004B32F2    ret
end;*}

//004B32F4
{*procedure TCustomActionMenuBar.sub_004B32F4(?:?);
begin
 004B32F4    push        ebp
 004B32F5    mov         ebp,esp
 004B32F7    add         esp,0FFFFFFF8
 004B32FA    mov         dword ptr [ebp-8],edx
 004B32FD    mov         dword ptr [ebp-4],eax
 004B3300    mov         eax,dword ptr [ebp-4]
 004B3303    cmp         byte ptr [eax+296],0;TCustomActionMenuBar.FInMenuLoop:Boolean
>004B330A    jne         004B3334
 004B330C    mov         eax,dword ptr [ebp-8]
 004B330F    mov         eax,dword ptr [eax+8]
 004B3312    push        eax
 004B3313    push        0
 004B3315    mov         eax,dword ptr [ebp-8]
 004B3318    mov         eax,dword ptr [eax]
 004B331A    push        eax
 004B331B    mov         eax,dword ptr [ebp-4]
 004B331E    call        TWinControl.GetHandle
 004B3323    push        eax
 004B3324    call        user32.PostMessageA
 004B3329    mov         eax,dword ptr [ebp-4]
 004B332C    mov         edx,dword ptr [eax]
 004B332E    call        dword ptr [edx+180];TCustomActionMenuBar.TrackMenu
 004B3334    pop         ecx
 004B3335    pop         ecx
 004B3336    pop         ebp
 004B3337    ret
end;*}

//004B3338
{*function sub_004B3338(?:?):?;
begin
 004B3338    push        ebp
 004B3339    mov         ebp,esp
 004B333B    add         esp,0FFFFFFF4
 004B333E    mov         dword ptr [ebp-8],edx
 004B3341    mov         dword ptr [ebp-4],eax
 004B3344    mov         edx,dword ptr [ebp-8]
 004B3347    mov         eax,dword ptr [ebp-4]
 004B334A    call        004C1888
 004B334F    mov         dword ptr [ebp-0C],eax
 004B3352    xor         edx,edx
 004B3354    mov         eax,dword ptr [ebp-0C]
 004B3357    call        TImage.SetShowHint
 004B335C    mov         dl,1
 004B335E    mov         eax,dword ptr [ebp-8]
 004B3361    call        TActionClientItem.SetShowCaption
 004B3366    mov         eax,dword ptr [ebp-0C]
 004B3369    mov         edx,dword ptr [eax]
 004B336B    call        dword ptr [edx+0C8]
 004B3371    test        al,al
>004B3373    jne         004B33B8
 004B3375    mov         eax,dword ptr [ebp-0C]
 004B3378    mov         edx,dword ptr [eax]
 004B337A    call        dword ptr [edx+50]
 004B337D    test        al,al
>004B337F    je          004B33AA
 004B3381    mov         eax,dword ptr [ebp-8]
 004B3384    call        TActionClientItem.GetAction
 004B3389    test        eax,eax
>004B338B    jne         004B33AE
 004B338D    mov         eax,dword ptr [ebp-8]
 004B3390    call        004BE56C
 004B3395    test        al,al
>004B3397    je          004B33AA
 004B3399    mov         eax,dword ptr [ebp-8]
 004B339C    call        TActionClient.GetItems
 004B33A1    call        004BF6A4
 004B33A6    test        eax,eax
>004B33A8    jg          004B33AE
 004B33AA    xor         edx,edx
>004B33AC    jmp         004B33B0
 004B33AE    mov         dl,1
 004B33B0    mov         eax,dword ptr [ebp-0C]
 004B33B3    mov         ecx,dword ptr [eax]
 004B33B5    call        dword ptr [ecx+64]
 004B33B8    mov         eax,dword ptr [ebp-0C]
 004B33BB    mov         esp,ebp
 004B33BD    pop         ebp
 004B33BE    ret
end;*}

//004B33C0
{*function sub_004B33C0(?:?; ?:?):?;
begin
 004B33C0    push        ebp
 004B33C1    mov         ebp,esp
 004B33C3    add         esp,0FFFFFFEC
 004B33C6    mov         dword ptr [ebp-0C],ecx
 004B33C9    mov         dword ptr [ebp-8],edx
 004B33CC    mov         dword ptr [ebp-4],eax
 004B33CF    xor         eax,eax
 004B33D1    mov         dword ptr [ebp-10],eax
 004B33D4    mov         eax,dword ptr [ebp-4]
 004B33D7    cmp         byte ptr [eax+296],0;TCustomActionMenuBar.FInMenuLoop:Boolean
>004B33DE    je          004B3647
 004B33E4    cmp         dword ptr [ebp-8],0
>004B33E8    je          004B3647
 004B33EE    cmp         dword ptr [ebp-0C],0
>004B33F2    je          004B3647
 004B33F8    mov         eax,dword ptr [ebp-4]
 004B33FB    mov         eax,dword ptr [eax+2B0];TCustomActionMenuBar.FPopupStack:TMenuStack
 004B3401    call        004377BC
 004B3406    test        eax,eax
>004B3408    je          004B3647
 004B340E    mov         eax,dword ptr [ebp-4]
 004B3411    mov         eax,dword ptr [eax+2B0];TCustomActionMenuBar.FPopupStack:TMenuStack
 004B3417    call        004B279C
 004B341C    mov         eax,dword ptr [eax+2AC]
 004B3422    cmp         eax,dword ptr [ebp-0C]
>004B3425    je          004B3647
 004B342B    mov         eax,dword ptr [ebp-0C]
 004B342E    cmp         dword ptr [eax+16C],0
>004B3435    je          004B3647
 004B343B    mov         eax,dword ptr [ebp-0C]
 004B343E    mov         eax,dword ptr [eax+16C]
 004B3444    call        TActionClient.GetItems
 004B3449    call        004BF6A4
 004B344E    test        eax,eax
>004B3450    je          004B3647
 004B3456    mov         edx,dword ptr [ebp-0C]
 004B3459    mov         eax,dword ptr [ebp-4]
 004B345C    mov         ecx,dword ptr [eax]
 004B345E    call        dword ptr [ecx+15C];TCustomActionMenuBar.sub_004B3D08
 004B3464    mov         eax,dword ptr [ebp-4]
 004B3467    xor         edx,edx
 004B3469    mov         dword ptr [eax+28C],edx;TCustomActionMenuBar.FDelayItem:TCustomActionControl
 004B346F    mov         eax,dword ptr [ebp-4]
 004B3472    mov         edx,dword ptr [eax]
 004B3474    call        dword ptr [edx+170];TCustomActionMenuBar.sub_004B424C
 004B347A    mov         dword ptr [ebp-10],eax
 004B347D    mov         eax,dword ptr [ebp-10]
 004B3480    call        TWinControl.DisableAlign
 004B3485    xor         eax,eax
 004B3487    push        ebp
 004B3488    push        4B35F2
 004B348D    push        dword ptr fs:[eax]
 004B3490    mov         dword ptr fs:[eax],esp
 004B3493    mov         eax,dword ptr [ebp-4]
 004B3496    call        004C4A40
 004B349B    mov         edx,eax
 004B349D    mov         eax,dword ptr [ebp-10]
 004B34A0    mov         ecx,dword ptr [eax]
 004B34A2    call        dword ptr [ecx+12C]
 004B34A8    mov         eax,dword ptr [ebp-4]
 004B34AB    mov         edx,dword ptr [eax+70];TCustomActionMenuBar.FColor:TColor
 004B34AE    mov         eax,dword ptr [ebp-10]
 004B34B1    call        TPanel.SetColor
 004B34B6    mov         eax,dword ptr [ebp-4]
 004B34B9    mov         eax,dword ptr [eax+2C4];TCustomActionMenuBar.FRootMenu:TCustomActionMenuBar
 004B34BF    mov         edx,dword ptr [ebp-10]
 004B34C2    mov         dword ptr [edx+2C4],eax
 004B34C8    mov         eax,dword ptr [ebp-4]
 004B34CB    mov         al,byte ptr [eax+224];TCustomActionMenuBar.FDesignable:Boolean
 004B34D1    mov         edx,dword ptr [ebp-10]
 004B34D4    mov         byte ptr [edx+224],al
 004B34DA    mov         eax,dword ptr [ebp-0C]
 004B34DD    mov         eax,dword ptr [eax+16C]
 004B34E3    mov         edx,dword ptr [ebp-10]
 004B34E6    mov         dword ptr [eax+18],edx
 004B34E9    mov         eax,dword ptr [ebp-4]
 004B34EC    mov         edx,dword ptr [eax+68];TCustomActionMenuBar.FFont:TFont
 004B34EF    mov         eax,dword ptr [ebp-10]
 004B34F2    mov         eax,dword ptr [eax+68]
 004B34F5    mov         ecx,dword ptr [eax]
 004B34F7    call        dword ptr [ecx+8]
 004B34FA    mov         edx,dword ptr [ebp-8]
 004B34FD    mov         eax,dword ptr [ebp-10]
 004B3500    call        004B4A5C
 004B3505    mov         eax,dword ptr [ebp-10]
 004B3508    mov         byte ptr [eax+296],1
 004B350F    mov         eax,dword ptr [ebp-10]
 004B3512    mov         edx,dword ptr [ebp-0C]
 004B3515    mov         dword ptr [eax+2AC],edx
 004B351B    mov         eax,dword ptr [ebp-0C]
 004B351E    mov         eax,dword ptr [eax+16C]
 004B3524    mov         al,byte ptr [eax+30]
 004B3527    mov         byte ptr [ebp-11],al
 004B352A    mov         eax,dword ptr [ebp-0C]
 004B352D    mov         edx,dword ptr [eax+16C]
 004B3533    mov         eax,dword ptr [ebp-10]
 004B3536    mov         ecx,dword ptr [eax]
 004B3538    call        dword ptr [ecx+124]
 004B353E    mov         eax,dword ptr [ebp-0C]
 004B3541    mov         eax,dword ptr [eax+16C]
 004B3547    mov         dl,byte ptr [ebp-11]
 004B354A    mov         ecx,dword ptr [eax]
 004B354C    call        dword ptr [ecx+2C]
 004B354F    mov         eax,dword ptr [ebp-4]
 004B3552    cmp         byte ptr [eax+295],0;TCustomActionMenuBar.FExpanded:Boolean
>004B3559    jne         004B358E
 004B355B    mov         eax,dword ptr [ebp-4]
 004B355E    mov         edx,dword ptr [eax]
 004B3560    call        dword ptr [edx+104];TCustomActionMenuBar.sub_004B3EB0
 004B3566    test        al,al
>004B3568    jne         004B358E
 004B356A    mov         eax,dword ptr [ebp-10]
 004B356D    call        004C28DC
 004B3572    test        eax,eax
>004B3574    je          004B358E
 004B3576    mov         eax,dword ptr [ebp-0C]
 004B3579    mov         eax,dword ptr [eax+16C]
 004B357F    call        TActionClient.GetItems
 004B3584    cmp         byte ptr [eax+2A],0
>004B3588    je          004B358E
 004B358A    xor         eax,eax
>004B358C    jmp         004B3590
 004B358E    mov         al,1
 004B3590    mov         edx,dword ptr [ebp-10]
 004B3593    mov         byte ptr [edx+295],al
 004B3599    mov         eax,dword ptr [ebp-10]
 004B359C    cmp         byte ptr [eax+295],0
>004B35A3    je          004B35B2
 004B35A5    xor         edx,edx
 004B35A7    mov         eax,dword ptr [ebp-10]
 004B35AA    mov         ecx,dword ptr [eax]
 004B35AC    call        dword ptr [ecx+164]
 004B35B2    mov         eax,[0056E3C0];^Application:TApplication
 004B35B7    mov         eax,dword ptr [eax]
 004B35B9    mov         edx,dword ptr [eax+30];TApplication.FHandle:HWND
 004B35BC    mov         eax,dword ptr [ebp-10]
 004B35BF    call        00488B38
 004B35C4    mov         eax,dword ptr [ebp-8]
 004B35C7    mov         edx,dword ptr [eax]
 004B35C9    call        dword ptr [edx+104]
 004B35CF    mov         edx,eax
 004B35D1    mov         eax,dword ptr [ebp-10]
 004B35D4    mov         ecx,dword ptr [eax]
 004B35D6    call        dword ptr [ecx+130]
 004B35DC    xor         eax,eax
 004B35DE    pop         edx
 004B35DF    pop         ecx
 004B35E0    pop         ecx
 004B35E1    mov         dword ptr fs:[eax],edx
 004B35E4    push        4B35F9
 004B35E9    mov         eax,dword ptr [ebp-10]
 004B35EC    call        TWinControl.EnableAlign
 004B35F1    ret
>004B35F2    jmp         @HandleFinally
>004B35F7    jmp         004B35E9
 004B35F9    mov         eax,dword ptr [ebp-10]
 004B35FC    call        00483F9C
 004B3601    mov         eax,dword ptr [ebp-0C]
 004B3604    mov         edx,dword ptr ds:[4B23F8];TCustomMenuButton
 004B360A    call        @IsClass
 004B360F    test        al,al
>004B3611    je          004B361B
 004B3613    mov         eax,dword ptr [ebp-0C]
 004B3616    mov         edx,dword ptr [eax]
 004B3618    call        dword ptr [edx+7C]
 004B361B    mov         eax,dword ptr [ebp-10]
 004B361E    cmp         byte ptr [eax+294],0
>004B3625    je          004B3633
 004B3627    mov         eax,dword ptr [ebp-10]
 004B362A    cmp         byte ptr [eax+295],0
>004B3631    je          004B3637
 004B3633    xor         edx,edx
>004B3635    jmp         004B3639
 004B3637    mov         dl,1
 004B3639    mov         eax,dword ptr [ebp-4]
 004B363C    mov         eax,dword ptr [eax+300];TCustomActionMenuBar.FExpandTimer:TTimer
 004B3642    call        TTimer.SetEnabled
 004B3647    mov         eax,dword ptr [ebp-10]
 004B364A    mov         esp,ebp
 004B364C    pop         ebp
 004B364D    ret
end;*}

//004B3650
procedure sub_004B3650(?:TCustomActionMenuBar; ?:TCustomMenuItem);
begin
{*
 004B3650    push        ebp
 004B3651    mov         ebp,esp
 004B3653    add         esp,0FFFFFFF8
 004B3656    push        ebx
 004B3657    mov         dword ptr [ebp-8],edx
 004B365A    mov         dword ptr [ebp-4],eax
 004B365D    mov         eax,dword ptr [ebp-8]
 004B3660    mov         edx,dword ptr ds:[4B2248];TCustomMenuItem
 004B3666    call        @IsClass
 004B366B    test        al,al
>004B366D    je          004B3683
 004B366F    mov         eax,dword ptr [ebp-4]
 004B3672    mov         eax,dword ptr [eax+2C4]
 004B3678    mov         edx,dword ptr [ebp-8]
 004B367B    mov         dword ptr [eax+28C],edx
>004B3681    jmp         004B368E
 004B3683    mov         eax,dword ptr [ebp-4]
 004B3686    xor         edx,edx
 004B3688    mov         dword ptr [eax+28C],edx
 004B368E    mov         eax,dword ptr [ebp-4]
 004B3691    mov         eax,dword ptr [eax+2C4]
 004B3697    mov         eax,dword ptr [eax+304]
 004B369D    mov         dl,1
 004B369F    call        TTimer.SetEnabled
 004B36A4    mov         eax,dword ptr [ebp-4]
 004B36A7    mov         eax,dword ptr [eax+2C4]
 004B36AD    mov         eax,dword ptr [eax+2B0]
 004B36B3    call        004B279C
 004B36B8    cmp         byte ptr [eax+294],0
>004B36BF    je          004B3727
 004B36C1    mov         eax,dword ptr [ebp-4]
 004B36C4    mov         eax,dword ptr [eax+2C4]
 004B36CA    mov         eax,dword ptr [eax+300]
 004B36D0    xor         edx,edx
 004B36D2    call        TTimer.SetEnabled
 004B36D7    mov         eax,dword ptr [ebp-4]
 004B36DA    call        004B4028
 004B36DF    mov         ebx,eax
 004B36E1    mov         eax,dword ptr [ebp-4]
 004B36E4    call        004C28DC
 004B36E9    cmp         ebx,eax
>004B36EB    je          004B3703
 004B36ED    mov         eax,dword ptr [ebp-4]
 004B36F0    mov         eax,dword ptr [eax+2C4]
 004B36F6    mov         eax,dword ptr [eax+300]
 004B36FC    mov         dword ptr [eax+0C],1
 004B3703    mov         eax,dword ptr [ebp-4]
 004B3706    mov         edx,dword ptr [eax]
 004B3708    call        dword ptr [edx+104]
 004B370E    mov         edx,eax
 004B3710    xor         dl,1
 004B3713    mov         eax,dword ptr [ebp-4]
 004B3716    mov         eax,dword ptr [eax+2C4]
 004B371C    mov         eax,dword ptr [eax+300]
 004B3722    call        TTimer.SetEnabled
 004B3727    pop         ebx
 004B3728    pop         ecx
 004B3729    pop         ecx
 004B372A    pop         ebp
 004B372B    ret
*}
end;

//004B372C
{*procedure sub_004B372C(?:?);
begin
 004B372C    push        ebp
 004B372D    mov         ebp,esp
 004B372F    add         esp,0FFFFFFF8
 004B3732    mov         dword ptr [ebp-8],edx
 004B3735    mov         dword ptr [ebp-4],eax
 004B3738    cmp         dword ptr [ebp-8],0
>004B373C    je          004B377E
 004B373E    mov         eax,dword ptr [ebp-4]
 004B3741    test        byte ptr [eax+1C],10;TCustomActionMenuBar.FComponentState:TComponentState
>004B3745    jne         004B377E
 004B3747    mov         eax,dword ptr [ebp-4]
 004B374A    mov         edx,dword ptr [eax]
 004B374C    call        dword ptr [edx+104];TCustomActionMenuBar.sub_004B3EB0
 004B3752    test        al,al
>004B3754    jne         004B377E
 004B3756    push        2
 004B3758    push        0
 004B375A    call        winmm.sndPlaySoundA
 004B375F    push        13
 004B3761    push        4B3784;'MenuCommand'
 004B3766    call        winmm.sndPlaySoundA
 004B376B    mov         eax,dword ptr [ebp-4]
 004B376E    mov         eax,dword ptr [eax+2F4];TCustomActionMenuBar.FSelectedItem:TActionClientItem
 004B3774    mov         eax,dword ptr [eax+38];TActionClientItem.FActionLink:TActionClientLink
 004B3777    xor         edx,edx
 004B3779    mov         ecx,dword ptr [eax]
 004B377B    call        dword ptr [ecx+18];TActionClientLink.sub_0042AF1C
 004B377E    pop         ecx
 004B377F    pop         ecx
 004B3780    pop         ebp
 004B3781    ret
end;*}

//004B3790
procedure TCustomActionMenuBar.sub_004B3790;
begin
{*
 004B3790    push        ebp
 004B3791    mov         ebp,esp
 004B3793    add         esp,0FFFFFFF8
 004B3796    push        ebx
 004B3797    mov         dword ptr [ebp-4],eax
 004B379A    mov         eax,dword ptr [ebp-4]
 004B379D    mov         edx,dword ptr [eax]
 004B379F    call        dword ptr [edx+168];TCustomActionMenuBar.sub_004B3FD8
 004B37A5    mov         dword ptr [ebp-8],eax
 004B37A8    mov         eax,dword ptr [ebp-4]
 004B37AB    cmp         word ptr [eax+2D2],0;TCustomActionMenuBar.?f2D2:word
>004B37B3    je          004B37CA
 004B37B5    lea         ecx,[ebp-8]
 004B37B8    mov         ebx,dword ptr [ebp-4]
 004B37BB    mov         edx,dword ptr [ebp-4]
 004B37BE    mov         eax,dword ptr [ebx+2D4];TCustomActionMenuBar.?f2D4:dword
 004B37C4    call        dword ptr [ebx+2D0];TCustomActionMenuBar.FOnGetPopupClass
 004B37CA    mov         eax,dword ptr [ebp-8]
 004B37CD    pop         ebx
 004B37CE    pop         ecx
 004B37CF    pop         ecx
 004B37D0    pop         ebp
 004B37D1    ret
*}
end;

//004B37D4
{*function sub_004B37D4(?:?):?;
begin
 004B37D4    push        ebp
 004B37D5    mov         ebp,esp
 004B37D7    add         esp,0FFFFFFE8
 004B37DA    push        ebx
 004B37DB    mov         dword ptr [ebp-8],edx
 004B37DE    mov         dword ptr [ebp-4],eax
 004B37E1    xor         eax,eax
 004B37E3    mov         dword ptr [ebp-0C],eax
 004B37E6    mov         eax,dword ptr [ebp-8]
 004B37E9    mov         eax,dword ptr [eax+4]
 004B37EC    cmp         eax,dword ptr [ebp-4]
>004B37EF    jne         004B381E
 004B37F1    mov         eax,dword ptr [ebp-8]
 004B37F4    mov         edx,dword ptr ds:[4B23F8];TCustomMenuButton
 004B37FA    call        @IsClass
 004B37FF    test        al,al
>004B3801    je          004B3813
 004B3803    mov         eax,dword ptr [ebp-4]
 004B3806    call        004B3158
 004B380B    mov         eax,dword ptr [ebp-8]
 004B380E    mov         edx,dword ptr [eax]
 004B3810    call        dword ptr [edx+7C]
 004B3813    mov         eax,dword ptr [ebp-4]
 004B3816    xor         edx,edx
 004B3818    mov         dword ptr [eax+28C],edx;TCustomActionMenuBar.FDelayItem:TCustomActionControl
 004B381E    mov         eax,dword ptr [ebp-8]
 004B3821    mov         eax,dword ptr [eax+16C]
 004B3827    call        004BE56C
 004B382C    test        al,al
>004B382E    je          004B3929
 004B3834    mov         eax,dword ptr [ebp-4]
 004B3837    cmp         dword ptr [eax+28C],0;TCustomActionMenuBar.FDelayItem:TCustomActionControl
>004B383E    je          004B387D
>004B3840    jmp         004B3856
 004B3842    mov         eax,dword ptr [ebp-4]
 004B3845    mov         eax,dword ptr [eax+2C4];TCustomActionMenuBar.FRootMenu:TCustomActionMenuBar
 004B384B    mov         eax,dword ptr [eax+2B0];TCustomActionMenuBar.FPopupStack:TMenuStack
 004B3851    call        004B27B8
 004B3856    mov         eax,dword ptr [ebp-4]
 004B3859    mov         eax,dword ptr [eax+2B0];TCustomActionMenuBar.FPopupStack:TMenuStack
 004B385F    call        004B279C
 004B3864    mov         edx,dword ptr [ebp-4]
 004B3867    mov         edx,dword ptr [edx+28C];TCustomActionMenuBar.FDelayItem:TCustomActionControl
 004B386D    cmp         eax,dword ptr [edx+30];TCustomActionControl.FParent:TWinControl
>004B3870    jne         004B3842
 004B3872    mov         eax,dword ptr [ebp-4]
 004B3875    xor         edx,edx
 004B3877    mov         dword ptr [eax+28C],edx;TCustomActionMenuBar.FDelayItem:TCustomActionControl
 004B387D    mov         eax,dword ptr [ebp-8]
 004B3880    cmp         byte ptr [eax+57],0
>004B3884    jne         004B389E
 004B3886    mov         eax,dword ptr [ebp-4]
 004B3889    mov         eax,dword ptr [eax+2B0];TCustomActionMenuBar.FPopupStack:TMenuStack
 004B388F    call        004B279C
 004B3894    mov         dl,1
 004B3896    mov         ecx,dword ptr [eax]
 004B3898    call        dword ptr [ecx+164]
 004B389E    mov         eax,dword ptr [ebp-4]
 004B38A1    mov         eax,dword ptr [eax+2C4];TCustomActionMenuBar.FRootMenu:TCustomActionMenuBar
 004B38A7    call        004B56E8
 004B38AC    mov         eax,dword ptr [ebp-8]
 004B38AF    mov         edx,dword ptr ds:[4B23F8];TCustomMenuButton
 004B38B5    call        @IsClass
 004B38BA    test        al,al
>004B38BC    je          004B38FC
 004B38BE    mov         eax,dword ptr [ebp-4]
 004B38C1    mov         eax,dword ptr [eax+2B0];TCustomActionMenuBar.FPopupStack:TMenuStack
 004B38C7    call        004377BC
 004B38CC    cmp         eax,2
>004B38CF    jne         004B38FC
>004B38D1    jmp         004B38E9
 004B38D3    mov         eax,dword ptr [ebp-4]
 004B38D6    mov         eax,dword ptr [eax+2B0];TCustomActionMenuBar.FPopupStack:TMenuStack
 004B38DC    call        004B279C
 004B38E1    mov         edx,dword ptr [eax]
 004B38E3    call        dword ptr [edx+17C]
 004B38E9    mov         eax,dword ptr [ebp-4]
 004B38EC    mov         eax,dword ptr [eax+2B0];TCustomActionMenuBar.FPopupStack:TMenuStack
 004B38F2    call        004377BC
 004B38F7    cmp         eax,2
>004B38FA    jg          004B38D3
 004B38FC    mov         eax,dword ptr [ebp-4]
 004B38FF    mov         eax,dword ptr [eax+2B0];TCustomActionMenuBar.FPopupStack:TMenuStack
 004B3905    call        004B279C
 004B390A    mov         edx,eax
 004B390C    mov         ecx,dword ptr [ebp-8]
 004B390F    mov         eax,dword ptr [ebp-4]
 004B3912    mov         ebx,dword ptr [eax]
 004B3914    call        dword ptr [ebx+14C];TCustomActionMenuBar.sub_004B33C0
 004B391A    mov         eax,dword ptr [ebp-4]
 004B391D    mov         byte ptr [eax+288],0;TCustomActionMenuBar.FAnimatePopups:Boolean
>004B3924    jmp         004B39BF
 004B3929    mov         eax,dword ptr [ebp-8]
 004B392C    mov         eax,dword ptr [eax+16C]
 004B3932    mov         dword ptr [ebp-0C],eax
 004B3935    mov         eax,dword ptr [ebp-4]
 004B3938    mov         edx,dword ptr [eax]
 004B393A    call        dword ptr [edx+104];TCustomActionMenuBar.sub_004B3EB0
 004B3940    test        al,al
>004B3942    jne         004B39BF
 004B3944    push        0
 004B3946    lea         eax,[ebp-10]
 004B3949    push        eax
 004B394A    push        0
 004B394C    push        1014
 004B3951    call        user32.SystemParametersInfoA
 004B3956    mov         eax,dword ptr [ebp-4]
 004B3959    mov         eax,dword ptr [eax+2B0];TCustomActionMenuBar.FPopupStack:TMenuStack
 004B395F    call        004377BC
 004B3964    dec         eax
>004B3965    jle         004B39AC
 004B3967    cmp         dword ptr [ebp-10],0
>004B396B    je          004B39AC
 004B396D    mov         eax,dword ptr [ebp-4]
 004B3970    mov         eax,dword ptr [eax+2B0];TCustomActionMenuBar.FPopupStack:TMenuStack
 004B3976    call        004377BC
 004B397B    sub         eax,2
 004B397E    test        eax,eax
>004B3980    jle         004B39AC
 004B3982    mov         dword ptr [ebp-18],eax
 004B3985    mov         dword ptr [ebp-14],1
 004B398C    mov         edx,dword ptr [ebp-14]
 004B398F    mov         eax,dword ptr [ebp-4]
 004B3992    mov         eax,dword ptr [eax+2B0];TCustomActionMenuBar.FPopupStack:TMenuStack
 004B3998    call        004B2778
 004B399D    xor         edx,edx
 004B399F    call        TImage.SetVisible
 004B39A4    inc         dword ptr [ebp-14]
 004B39A7    dec         dword ptr [ebp-18]
>004B39AA    jne         004B398C
 004B39AC    mov         eax,dword ptr [ebp-4]
 004B39AF    call        004B3158
 004B39B4    mov         eax,dword ptr [ebp-4]
 004B39B7    mov         edx,dword ptr [eax]
 004B39B9    call        dword ptr [edx+17C];TCustomActionMenuBar.sub_004B31B8
 004B39BF    mov         eax,dword ptr [ebp-0C]
 004B39C2    pop         ebx
 004B39C3    mov         esp,ebp
 004B39C5    pop         ebp
 004B39C6    ret
end;*}

//004B39C8
{*function sub_004B39C8(?:?):?;
begin
 004B39C8    push        ebp
 004B39C9    mov         ebp,esp
 004B39CB    add         esp,0FFFFFFF0
 004B39CE    mov         dword ptr [ebp-8],edx
 004B39D1    mov         dword ptr [ebp-4],eax
 004B39D4    mov         eax,dword ptr [ebp-4]
 004B39D7    mov         byte ptr [eax+297],1;TCustomActionMenuBar.FItemKeyed:Boolean
 004B39DE    xor         eax,eax
 004B39E0    push        ebp
 004B39E1    push        4B3A50
 004B39E6    push        dword ptr fs:[eax]
 004B39E9    mov         dword ptr fs:[eax],esp
 004B39EC    mov         edx,dword ptr [ebp-8]
 004B39EF    mov         eax,dword ptr [ebp-4]
 004B39F2    mov         ecx,dword ptr [eax]
 004B39F4    call        dword ptr [ecx+150];TCustomActionMenuBar.sub_004B37D4
 004B39FA    mov         dword ptr [ebp-0C],eax
 004B39FD    cmp         dword ptr [ebp-0C],0
>004B3A01    jne         004B3A38
 004B3A03    mov         eax,dword ptr [ebp-4]
 004B3A06    mov         eax,dword ptr [eax+2B0];TCustomActionMenuBar.FPopupStack:TMenuStack
 004B3A0C    call        004B279C
 004B3A11    call        004C28DC
 004B3A16    mov         dword ptr [ebp-10],eax
 004B3A19    cmp         dword ptr [ebp-10],0
>004B3A1D    je          004B3A38
 004B3A1F    mov         eax,dword ptr [ebp-10]
 004B3A22    cmp         dword ptr [eax+40],0
>004B3A26    je          004B3A38
 004B3A28    mov         eax,dword ptr [ebp-10]
 004B3A2B    mov         eax,dword ptr [eax+40]
 004B3A2E    mov         dl,1
 004B3A30    mov         ecx,dword ptr [eax]
 004B3A32    call        dword ptr [ecx+0D8]
 004B3A38    xor         eax,eax
 004B3A3A    pop         edx
 004B3A3B    pop         ecx
 004B3A3C    pop         ecx
 004B3A3D    mov         dword ptr fs:[eax],edx
 004B3A40    push        4B3A57
 004B3A45    mov         eax,dword ptr [ebp-4]
 004B3A48    mov         byte ptr [eax+297],0;TCustomActionMenuBar.FItemKeyed:Boolean
 004B3A4F    ret
>004B3A50    jmp         @HandleFinally
>004B3A55    jmp         004B3A45
 004B3A57    mov         eax,dword ptr [ebp-0C]
 004B3A5A    mov         esp,ebp
 004B3A5C    pop         ebp
 004B3A5D    ret
end;*}

//004B3A60
{*function sub_004B3A60(?:TCustomActionMenuBar; ?:?):?;
begin
 004B3A60    push        ebp
 004B3A61    mov         ebp,esp
 004B3A63    add         esp,0FFFFFFF4
 004B3A66    push        ebx
 004B3A67    mov         dword ptr [ebp-8],edx
 004B3A6A    mov         dword ptr [ebp-4],eax
 004B3A6D    mov         eax,dword ptr [ebp-4]
 004B3A70    mov         edx,dword ptr [eax]
 004B3A72    call        dword ptr [edx+104]
 004B3A78    test        al,al
>004B3A7A    je          004B3A8C
 004B3A7C    mov         eax,[0056E5B4];^Mouse:TMouse
 004B3A81    mov         eax,dword ptr [eax]
 004B3A83    call        00491DE4
 004B3A88    test        al,al
>004B3A8A    je          004B3A90
 004B3A8C    xor         eax,eax
>004B3A8E    jmp         004B3A92
 004B3A90    mov         al,1
 004B3A92    mov         byte ptr [ebp-9],al
 004B3A95    cmp         byte ptr [ebp-9],0
>004B3A99    je          004B3B55
 004B3A9F    mov         eax,dword ptr [ebp-4]
 004B3AA2    cmp         dword ptr [eax+290],0
>004B3AA9    jne         004B3ABF
 004B3AAB    mov         eax,[0056E5B4];^Mouse:TMouse
 004B3AB0    mov         eax,dword ptr [eax]
 004B3AB2    call        00491DE4
 004B3AB7    test        al,al
>004B3AB9    jne         004B3ABF
 004B3ABB    xor         eax,eax
>004B3ABD    jmp         004B3AC1
 004B3ABF    mov         al,1
 004B3AC1    mov         byte ptr [ebp-9],al
 004B3AC4    cmp         byte ptr [ebp-9],0
>004B3AC8    je          004B3ADA
 004B3ACA    mov         eax,dword ptr [ebp-8]
 004B3ACD    cmp         dword ptr [eax+4],202
 004B3AD4    setne       byte ptr [ebp-9]
>004B3AD8    jmp         004B3B55
 004B3ADA    mov         eax,dword ptr [ebp-4]
 004B3ADD    cmp         dword ptr [eax+2A4],0
>004B3AE4    je          004B3AFF
 004B3AE6    mov         eax,dword ptr [ebp-4]
 004B3AE9    mov         eax,dword ptr [eax+2A4]
 004B3AEF    call        TWinControl.GetHandle
 004B3AF4    mov         ebx,eax
 004B3AF6    call        user32.GetForegroundWindow
 004B3AFB    cmp         ebx,eax
>004B3AFD    jne         004B3B03
 004B3AFF    xor         eax,eax
>004B3B01    jmp         004B3B05
 004B3B03    mov         al,1
 004B3B05    mov         byte ptr [ebp-9],al
 004B3B08    mov         eax,dword ptr [ebp-4]
 004B3B0B    test        byte ptr [eax+1C],10
>004B3B0F    je          004B3B2E
 004B3B11    cmp         byte ptr [ebp-9],0
>004B3B15    je          004B3B23
 004B3B17    mov         eax,dword ptr [ebp-8]
 004B3B1A    cmp         dword ptr [eax+4],0B403
>004B3B21    jne         004B3B27
 004B3B23    xor         eax,eax
>004B3B25    jmp         004B3B29
 004B3B27    mov         al,1
 004B3B29    mov         byte ptr [ebp-9],al
>004B3B2C    jmp         004B3B55
 004B3B2E    mov         eax,dword ptr [ebp-4]
 004B3B31    cmp         dword ptr [eax+2C4],0
>004B3B38    je          004B3B4C
 004B3B3A    mov         eax,dword ptr [ebp-4]
 004B3B3D    mov         eax,dword ptr [eax+2C4]
 004B3B43    cmp         byte ptr [eax+296],0
>004B3B4A    je          004B3B50
 004B3B4C    xor         eax,eax
>004B3B4E    jmp         004B3B52
 004B3B50    mov         al,1
 004B3B52    mov         byte ptr [ebp-9],al
 004B3B55    mov         al,byte ptr [ebp-9]
 004B3B58    pop         ebx
 004B3B59    mov         esp,ebp
 004B3B5B    pop         ebp
 004B3B5C    ret
end;*}

//004B3C78
procedure sub_004B3C78;
begin
{*
 004B3C78    push        ebp
 004B3C79    mov         ebp,esp
 004B3C7B    push        ecx
 004B3C7C    mov         dword ptr [ebp-4],eax
 004B3C7F    mov         eax,dword ptr [ebp-4]
 004B3C82    mov         edx,dword ptr [eax]
 004B3C84    call        dword ptr [edx+17C];TCustomActionMenuBar.sub_004B31B8
 004B3C8A    xor         edx,edx
 004B3C8C    mov         eax,dword ptr [ebp-4]
 004B3C8F    call        004B57A8
 004B3C94    mov         eax,dword ptr [ebp-4]
 004B3C97    add         eax,2F8;TCustomActionMenuBar.FCachedMenu:TCustomActionPopupMenu
 004B3C9C    call        FreeAndNil
 004B3CA1    xor         eax,eax
 004B3CA3    mov         [00571E80],eax;gvar_00571E80:TCustomActionMenuBar
 004B3CA8    mov         eax,dword ptr [ebp-4]
 004B3CAB    cmp         byte ptr [eax+224],0;TCustomActionMenuBar.FDesignable:Boolean
>004B3CB2    je          004B3CCC
 004B3CB4    mov         eax,[0056E068];^gvar_0056CB8C
 004B3CB9    cmp         dword ptr [eax],0
>004B3CBC    je          004B3CCC
 004B3CBE    mov         eax,[0056E068];^gvar_0056CB8C
 004B3CC3    mov         eax,dword ptr [eax]
 004B3CC5    xor         edx,edx
 004B3CC7    mov         ecx,dword ptr [eax]
 004B3CC9    call        dword ptr [ecx+18]
 004B3CCC    mov         eax,dword ptr [ebp-4]
 004B3CCF    mov         byte ptr [eax+288],1;TCustomActionMenuBar.FAnimatePopups:Boolean
 004B3CD6    push        0
 004B3CD8    call        user32.ShowCaret
 004B3CDD    mov         eax,dword ptr [ebp-4]
 004B3CE0    add         eax,304;TCustomActionMenuBar.FPopupTimer:TTimer
 004B3CE5    call        FreeAndNil
 004B3CEA    mov         eax,dword ptr [ebp-4]
 004B3CED    add         eax,2B0;TCustomActionMenuBar.FPopupStack:TMenuStack
 004B3CF2    call        FreeAndNil
 004B3CF7    mov         eax,dword ptr [ebp-4]
 004B3CFA    add         eax,300;TCustomActionMenuBar.FExpandTimer:TTimer
 004B3CFF    call        FreeAndNil
 004B3D04    pop         ecx
 004B3D05    pop         ebp
 004B3D06    ret
*}
end;

//004B3D08
{*procedure sub_004B3D08(?:?);
begin
 004B3D08    push        ebp
 004B3D09    mov         ebp,esp
 004B3D0B    add         esp,0FFFFFFF8
 004B3D0E    push        ebx
 004B3D0F    mov         dword ptr [ebp-8],edx
 004B3D12    mov         dword ptr [ebp-4],eax
 004B3D15    mov         eax,dword ptr [ebp-4]
 004B3D18    cmp         word ptr [eax+2BA],0;TCustomActionMenuBar.?f2BA:word
>004B3D20    je          004B3D37
 004B3D22    mov         ebx,dword ptr [ebp-4]
 004B3D25    mov         ecx,dword ptr [ebp-8]
 004B3D28    mov         edx,dword ptr [ebp-4]
 004B3D2B    mov         eax,dword ptr [ebx+2BC];TCustomActionMenuBar.?f2BC:dword
 004B3D31    call        dword ptr [ebx+2B8];TCustomActionMenuBar.FOnPopup
 004B3D37    pop         ebx
 004B3D38    pop         ecx
 004B3D39    pop         ecx
 004B3D3A    pop         ebp
 004B3D3B    ret
end;*}

//004B3D3C
{*procedure sub_004B3D3C(?:?);
begin
 004B3D3C    push        ebp
 004B3D3D    mov         ebp,esp
 004B3D3F    add         esp,0FFFFFFF0
 004B3D42    push        esi
 004B3D43    mov         byte ptr [ebp-5],dl
 004B3D46    mov         dword ptr [ebp-4],eax
 004B3D49    mov         eax,dword ptr [ebp-4]
 004B3D4C    mov         byte ptr [eax+295],1;TCustomActionMenuBar.FExpanded:Boolean
 004B3D53    cmp         byte ptr [ebp-5],0
>004B3D57    je          004B3D6B
 004B3D59    mov         eax,dword ptr [ebp-4]
 004B3D5C    mov         eax,dword ptr [eax+2C4];TCustomActionMenuBar.FRootMenu:TCustomActionMenuBar
 004B3D62    mov         dl,byte ptr [ebp-5]
 004B3D65    mov         byte ptr [eax+295],dl;TCustomActionMenuBar.FExpanded:Boolean
 004B3D6B    mov         eax,dword ptr [ebp-4]
 004B3D6E    mov         byte ptr [eax+294],0;TCustomActionMenuBar.FExpandable:Boolean
 004B3D75    mov         eax,dword ptr [ebp-4]
 004B3D78    call        004C2F3C
 004B3D7D    test        al,al
>004B3D7F    je          004B3E16
 004B3D85    mov         eax,dword ptr [ebp-4]
 004B3D88    call        TWinControl.DisableAlign
 004B3D8D    xor         eax,eax
 004B3D8F    push        ebp
 004B3D90    push        4B3E0F
 004B3D95    push        dword ptr fs:[eax]
 004B3D98    mov         dword ptr fs:[eax],esp
 004B3D9B    mov         eax,dword ptr [ebp-4]
 004B3D9E    call        004C2EE8
 004B3DA3    call        0042158C
 004B3DA8    dec         eax
 004B3DA9    test        eax,eax
>004B3DAB    jl          004B3DED
 004B3DAD    inc         eax
 004B3DAE    mov         dword ptr [ebp-10],eax
 004B3DB1    mov         dword ptr [ebp-0C],0
 004B3DB8    mov         eax,dword ptr [ebp-4]
 004B3DBB    call        004C2EE8
 004B3DC0    mov         edx,dword ptr [ebp-0C]
 004B3DC3    call        004BF258
 004B3DC8    mov         al,byte ptr [eax+30]
 004B3DCB    push        eax
 004B3DCC    mov         eax,dword ptr [ebp-4]
 004B3DCF    call        004C2EE8
 004B3DD4    mov         edx,dword ptr [ebp-0C]
 004B3DD7    call        004BF258
 004B3DDC    mov         eax,dword ptr [eax+40]
 004B3DDF    pop         edx
 004B3DE0    call        TImage.SetVisible
 004B3DE5    inc         dword ptr [ebp-0C]
 004B3DE8    dec         dword ptr [ebp-10]
>004B3DEB    jne         004B3DB8
 004B3DED    mov         eax,dword ptr [ebp-4]
 004B3DF0    mov         si,0FFD0
 004B3DF4    call        @CallDynaInst;TControl.sub_004826F8
 004B3DF9    xor         eax,eax
 004B3DFB    pop         edx
 004B3DFC    pop         ecx
 004B3DFD    pop         ecx
 004B3DFE    mov         dword ptr fs:[eax],edx
 004B3E01    push        4B3E16
 004B3E06    mov         eax,dword ptr [ebp-4]
 004B3E09    call        TWinControl.EnableAlign
 004B3E0E    ret
>004B3E0F    jmp         @HandleFinally
>004B3E14    jmp         004B3E06
 004B3E16    pop         esi
 004B3E17    mov         esp,ebp
 004B3E19    pop         ebp
 004B3E1A    ret
end;*}

//004B3EB0
{*function sub_004B3EB0:?;
begin
 004B3EB0    push        ebp
 004B3EB1    mov         ebp,esp
 004B3EB3    add         esp,0FFFFFFF8
 004B3EB6    mov         dword ptr [ebp-4],eax
 004B3EB9    mov         eax,dword ptr [ebp-4]
 004B3EBC    call        004C3B84
 004B3EC1    mov         byte ptr [ebp-5],al
 004B3EC4    cmp         byte ptr [ebp-5],0
>004B3EC8    jne         004B3EF8
 004B3ECA    mov         eax,dword ptr [ebp-4]
 004B3ECD    cmp         dword ptr [eax+2A8],0;TCustomActionMenuBar.FParentMenu:TCustomActionMenuBar
>004B3ED4    je          004B3EF8
 004B3ED6    mov         eax,dword ptr [ebp-4]
 004B3ED9    mov         eax,dword ptr [eax+2A8];TCustomActionMenuBar.FParentMenu:TCustomActionMenuBar
 004B3EDF    cmp         eax,dword ptr [ebp-4]
>004B3EE2    je          004B3EF8
 004B3EE4    mov         eax,dword ptr [ebp-4]
 004B3EE7    mov         eax,dword ptr [eax+2A8];TCustomActionMenuBar.FParentMenu:TCustomActionMenuBar
 004B3EED    mov         edx,dword ptr [eax]
 004B3EEF    call        dword ptr [edx+104];TCustomActionMenuBar.sub_004B3EB0
 004B3EF5    mov         byte ptr [ebp-5],al
 004B3EF8    mov         al,byte ptr [ebp-5]
 004B3EFB    pop         ecx
 004B3EFC    pop         ecx
 004B3EFD    pop         ebp
 004B3EFE    ret
end;*}

//004B3F00
{*function sub_004B3F00(?:TCustomActionMenuBar; ?:?):?;
begin
 004B3F00    push        ebp
 004B3F01    mov         ebp,esp
 004B3F03    add         esp,0FFFFFFC4
 004B3F06    push        ebx
 004B3F07    push        esi
 004B3F08    push        edi
 004B3F09    mov         esi,edx
 004B3F0B    lea         edi,[ebp-34]
 004B3F0E    mov         ecx,7
 004B3F13    rep movs    dword ptr [edi],dword ptr [esi]
 004B3F15    mov         dword ptr [ebp-4],eax
 004B3F18    xor         eax,eax
 004B3F1A    mov         dword ptr [ebp-8],eax
 004B3F1D    xor         eax,eax
 004B3F1F    mov         dword ptr [ebp-10],eax
 004B3F22    mov         eax,dword ptr [ebp-4]
 004B3F25    mov         eax,dword ptr [eax+2C4]
 004B3F2B    mov         dword ptr [ebp-14],eax
 004B3F2E    cmp         dword ptr [ebp-14],0
>004B3F32    je          004B3FCB
 004B3F38    mov         eax,dword ptr [ebp-14]
 004B3F3B    mov         eax,dword ptr [eax+2B0]
 004B3F41    call        004377BC
 004B3F46    dec         eax
 004B3F47    cmp         eax,0
>004B3F4A    jl          004B3FB3
 004B3F4C    mov         dword ptr [ebp-0C],eax
 004B3F4F    push        dword ptr [ebp-1C]
 004B3F52    push        dword ptr [ebp-20]
 004B3F55    call        user32.WindowFromPoint
 004B3F5A    mov         ebx,eax
 004B3F5C    mov         edx,dword ptr [ebp-0C]
 004B3F5F    mov         eax,dword ptr [ebp-14]
 004B3F62    mov         eax,dword ptr [eax+2B0]
 004B3F68    call        004B2778
 004B3F6D    call        TWinControl.GetHandle
 004B3F72    cmp         ebx,eax
>004B3F74    jne         004B3FAA
 004B3F76    mov         edx,dword ptr [ebp-0C]
 004B3F79    mov         eax,dword ptr [ebp-14]
 004B3F7C    mov         eax,dword ptr [eax+2B0]
 004B3F82    call        004B2778
 004B3F87    mov         dword ptr [ebp-18],eax
 004B3F8A    push        0
 004B3F8C    lea         ecx,[ebp-3C]
 004B3F8F    lea         edx,[ebp-20]
 004B3F92    mov         eax,dword ptr [ebp-18]
 004B3F95    call        TControl.ScreenToClient
 004B3F9A    lea         edx,[ebp-3C]
 004B3F9D    mov         cl,1
 004B3F9F    mov         eax,dword ptr [ebp-18]
 004B3FA2    call        00488D4C
 004B3FA7    mov         dword ptr [ebp-10],eax
 004B3FAA    dec         dword ptr [ebp-0C]
 004B3FAD    cmp         dword ptr [ebp-0C],0FFFFFFFF
>004B3FB1    jne         004B3F4F
 004B3FB3    mov         eax,dword ptr [ebp-10]
 004B3FB6    mov         edx,dword ptr ds:[4BB9B8];TCustomActionControl
 004B3FBC    call        @IsClass
 004B3FC1    test        al,al
>004B3FC3    je          004B3FCB
 004B3FC5    mov         eax,dword ptr [ebp-10]
 004B3FC8    mov         dword ptr [ebp-8],eax
 004B3FCB    mov         eax,dword ptr [ebp-8]
 004B3FCE    pop         edi
 004B3FCF    pop         esi
 004B3FD0    pop         ebx
 004B3FD1    mov         esp,ebp
 004B3FD3    pop         ebp
 004B3FD4    ret
end;*}

//004B3FD8
{*function sub_004B3FD8:?;
begin
 004B3FD8    push        ebp
 004B3FD9    mov         ebp,esp
 004B3FDB    add         esp,0FFFFFFF8
 004B3FDE    mov         dword ptr [ebp-4],eax
 004B3FE1    mov         eax,dword ptr [ebp-4]
 004B3FE4    mov         edx,dword ptr [eax]
 004B3FE6    call        dword ptr [edx+148];TCustomActionMenuBar.sub_004B5704
 004B3FEC    test        eax,eax
>004B3FEE    je          004B4008
 004B3FF0    mov         eax,dword ptr [ebp-4]
 004B3FF3    mov         edx,dword ptr [eax]
 004B3FF5    call        dword ptr [edx+148];TCustomActionMenuBar.sub_004B5704
 004B3FFB    mov         edx,dword ptr [ebp-4]
 004B3FFE    mov         ecx,dword ptr [eax]
 004B4000    call        dword ptr [ecx+0C]
 004B4003    mov         dword ptr [ebp-8],eax
>004B4006    jmp         004B4021
 004B4008    mov         eax,[0056E1C8];^ActionBarStyles:TActionBarStyleList
 004B400D    mov         eax,dword ptr [eax]
 004B400F    xor         edx,edx
 004B4011    call        004C7318
 004B4016    mov         edx,dword ptr [ebp-4]
 004B4019    mov         ecx,dword ptr [eax]
 004B401B    call        dword ptr [ecx+0C]
 004B401E    mov         dword ptr [ebp-8],eax
 004B4021    mov         eax,dword ptr [ebp-8]
 004B4024    pop         ecx
 004B4025    pop         ecx
 004B4026    pop         ebp
 004B4027    ret
end;*}

//004B4028
{*function sub_004B4028(?:TCustomActionMenuBar):?;
begin
 004B4028    push        ebp
 004B4029    mov         ebp,esp
 004B402B    add         esp,0FFFFFFF0
 004B402E    mov         dword ptr [ebp-4],eax
 004B4031    xor         eax,eax
 004B4033    mov         dword ptr [ebp-8],eax
 004B4036    mov         eax,dword ptr [ebp-4]
 004B4039    mov         edx,dword ptr [eax]
 004B403B    call        dword ptr [edx+114];TCustomActionMenuBar.sub_004C2FA8
 004B4041    dec         eax
 004B4042    test        eax,eax
>004B4044    jl          004B409B
 004B4046    inc         eax
 004B4047    mov         dword ptr [ebp-10],eax
 004B404A    mov         dword ptr [ebp-0C],0
 004B4051    mov         edx,dword ptr [ebp-0C]
 004B4054    mov         eax,dword ptr [ebp-4]
 004B4057    mov         ecx,dword ptr [eax]
 004B4059    call        dword ptr [ecx+108];TCustomActionMenuBar.sub_004C2DB0
 004B405F    test        eax,eax
>004B4061    je          004B4093
 004B4063    mov         edx,dword ptr [ebp-0C]
 004B4066    mov         eax,dword ptr [ebp-4]
 004B4069    mov         ecx,dword ptr [eax]
 004B406B    call        dword ptr [ecx+108];TCustomActionMenuBar.sub_004C2DB0
 004B4071    cmp         byte ptr [eax+18A],0
>004B4078    je          004B4093
 004B407A    mov         edx,dword ptr [ebp-0C]
 004B407D    mov         eax,dword ptr [ebp-4]
 004B4080    mov         ecx,dword ptr [eax]
 004B4082    call        dword ptr [ecx+108];TCustomActionMenuBar.sub_004C2DB0
 004B4088    mov         eax,dword ptr [eax+16C]
 004B408E    mov         dword ptr [ebp-8],eax
>004B4091    jmp         004B409B
 004B4093    inc         dword ptr [ebp-0C]
 004B4096    dec         dword ptr [ebp-10]
>004B4099    jne         004B4051
 004B409B    mov         eax,dword ptr [ebp-8]
 004B409E    mov         esp,ebp
 004B40A0    pop         ebp
 004B40A1    ret
end;*}

//004B40A4
procedure sub_004B40A4;
begin
{*
 004B40A4    push        ebp
 004B40A5    mov         ebp,esp
 004B40A7    add         esp,0FFFFFFE8
 004B40AA    mov         dword ptr [ebp-4],eax
 004B40AD    lea         edx,[ebp-18]
 004B40B0    mov         eax,[0056E5B4];^Mouse:TMouse
 004B40B5    mov         eax,dword ptr [eax]
 004B40B7    call        00491DC4
 004B40BC    mov         eax,dword ptr [ebp-4]
 004B40BF    mov         edx,dword ptr [ebp-18]
 004B40C2    mov         dword ptr [eax+29C],edx;TCustomActionMenuBar.FMousePos:TPoint
 004B40C8    mov         edx,dword ptr [ebp-14]
 004B40CB    mov         dword ptr [eax+2A0],edx
 004B40D1    mov         eax,dword ptr [ebp-4]
 004B40D4    xor         edx,edx
 004B40D6    mov         dword ptr [eax+2F4],edx;TCustomActionMenuBar.FSelectedItem:TActionClientItem
 004B40DC    mov         eax,dword ptr [ebp-4]
 004B40DF    mov         byte ptr [eax+295],0;TCustomActionMenuBar.FExpanded:Boolean
 004B40E6    mov         eax,dword ptr [ebp-4]
 004B40E9    xor         edx,edx
 004B40EB    mov         dword ptr [eax+28C],edx;TCustomActionMenuBar.FDelayItem:TCustomActionControl
 004B40F1    mov         eax,dword ptr [ebp-4]
 004B40F4    test        byte ptr [eax+1C],10;TCustomActionMenuBar.FComponentState:TComponentState
>004B40F8    je          004B4103
 004B40FA    mov         dword ptr [ebp-8],1
>004B4101    jmp         004B411B
 004B4103    push        0
 004B4105    lea         eax,[ebp-8]
 004B4108    push        eax
 004B4109    push        0
 004B410B    push        6A
 004B410D    call        user32.SystemParametersInfoA
 004B4112    cmp         dword ptr [ebp-8],0
>004B4116    jne         004B411B
 004B4118    inc         dword ptr [ebp-8]
 004B411B    mov         eax,dword ptr [ebp-4]
 004B411E    test        byte ptr [eax+1C],10;TCustomActionMenuBar.FComponentState:TComponentState
>004B4122    jne         004B4140
 004B4124    mov         eax,dword ptr [ebp-4]
 004B4127    call        004A0740
 004B412C    mov         dword ptr [ebp-0C],eax
 004B412F    cmp         dword ptr [ebp-0C],0
>004B4133    je          004B4140
 004B4135    mov         eax,dword ptr [ebp-0C]
 004B4138    mov         edx,dword ptr [eax]
 004B413A    call        dword ptr [edx+0C4]
 004B4140    xor         ecx,ecx
 004B4142    mov         dl,1
 004B4144    mov         eax,[00440074];TTimer
 004B4149    call        TTimer.Create;TTimer.Create
 004B414E    mov         edx,dword ptr [ebp-4]
 004B4151    mov         dword ptr [edx+304],eax;TCustomActionMenuBar.FPopupTimer:TTimer
 004B4157    mov         eax,dword ptr [ebp-4]
 004B415A    push        eax
 004B415B    push        4B3B60
 004B4160    mov         eax,dword ptr [ebp-4]
 004B4163    mov         eax,dword ptr [eax+304];TCustomActionMenuBar.FPopupTimer:TTimer
 004B4169    call        TTimer.SetOnTimer
 004B416E    mov         edx,dword ptr [ebp-8]
 004B4171    mov         eax,dword ptr [ebp-4]
 004B4174    mov         eax,dword ptr [eax+304];TCustomActionMenuBar.FPopupTimer:TTimer
 004B417A    call        TTimer.SetInterval
 004B417F    xor         edx,edx
 004B4181    mov         eax,dword ptr [ebp-4]
 004B4184    mov         eax,dword ptr [eax+304];TCustomActionMenuBar.FPopupTimer:TTimer
 004B418A    call        TTimer.SetEnabled
 004B418F    mov         ecx,dword ptr [ebp-4]
 004B4192    mov         dl,1
 004B4194    mov         eax,[004B14E4];TMenuStack
 004B4199    call        TMenuStack.Create;TMenuStack.Create
 004B419E    mov         edx,dword ptr [ebp-4]
 004B41A1    mov         dword ptr [edx+2B0],eax;TCustomActionMenuBar.FPopupStack:TMenuStack
 004B41A7    mov         edx,dword ptr [ebp-4]
 004B41AA    mov         eax,dword ptr [ebp-4]
 004B41AD    mov         eax,dword ptr [eax+2B0];TCustomActionMenuBar.FPopupStack:TMenuStack
 004B41B3    call        004B2864
 004B41B8    xor         ecx,ecx
 004B41BA    mov         dl,1
 004B41BC    mov         eax,[00440074];TTimer
 004B41C1    call        TTimer.Create;TTimer.Create
 004B41C6    mov         edx,dword ptr [ebp-4]
 004B41C9    mov         dword ptr [edx+300],eax;TCustomActionMenuBar.FExpandTimer:TTimer
 004B41CF    mov         eax,dword ptr [ebp-4]
 004B41D2    mov         eax,dword ptr [eax+300];TCustomActionMenuBar.FExpandTimer:TTimer
 004B41D8    mov         dword ptr [ebp-10],eax
 004B41DB    xor         edx,edx
 004B41DD    mov         eax,dword ptr [ebp-10]
 004B41E0    call        TTimer.SetEnabled
 004B41E5    mov         eax,dword ptr [ebp-4]
 004B41E8    mov         edx,dword ptr [eax+2C0];TCustomActionMenuBar.FExpandDelay:Integer
 004B41EE    mov         eax,dword ptr [ebp-10]
 004B41F1    call        TTimer.SetInterval
 004B41F6    mov         eax,dword ptr [ebp-4]
 004B41F9    push        eax
 004B41FA    push        4B3E1C
 004B41FF    mov         eax,dword ptr [ebp-10]
 004B4202    call        TTimer.SetOnTimer
 004B4207    mov         eax,dword ptr [ebp-4]
 004B420A    mov         byte ptr [eax+296],1;TCustomActionMenuBar.FInMenuLoop:Boolean
 004B4211    push        0
 004B4213    call        user32.HideCaret
 004B4218    mov         eax,dword ptr [ebp-4]
 004B421B    mov         [00571E80],eax;gvar_00571E80:TCustomActionMenuBar
 004B4220    mov         eax,dword ptr [ebp-4]
 004B4223    cmp         byte ptr [eax+224],0;TCustomActionMenuBar.FDesignable:Boolean
>004B422A    je          004B4248
 004B422C    mov         eax,[0056E068];^gvar_0056CB8C
 004B4231    cmp         dword ptr [eax],0
>004B4234    je          004B4248
 004B4236    mov         eax,[0056E068];^gvar_0056CB8C
 004B423B    mov         eax,dword ptr [eax]
 004B423D    mov         edx,dword ptr ds:[571E80];0x0 gvar_00571E80:TCustomActionMenuBar
 004B4243    mov         ecx,dword ptr [eax]
 004B4245    call        dword ptr [ecx+18]
 004B4248    mov         esp,ebp
 004B424A    pop         ebp
 004B424B    ret
*}
end;

//004B424C
{*function sub_004B424C:?;
begin
 004B424C    push        ebp
 004B424D    mov         ebp,esp
 004B424F    add         esp,0FFFFFFF8
 004B4252    push        ebx
 004B4253    push        esi
 004B4254    mov         dword ptr [ebp-4],eax
 004B4257    xor         eax,eax
 004B4259    mov         dword ptr [ebp-8],eax
 004B425C    mov         eax,dword ptr [ebp-4]
 004B425F    mov         eax,dword ptr [eax+2C4];TCustomActionMenuBar.FRootMenu:TCustomActionMenuBar
 004B4265    mov         eax,dword ptr [eax+2B0];TCustomActionMenuBar.FPopupStack:TMenuStack
 004B426B    call        004B279C
 004B4270    cmp         dword ptr [eax+2F8],0
>004B4277    je          004B42CD
 004B4279    mov         eax,dword ptr [ebp-4]
 004B427C    mov         eax,dword ptr [eax+2C4];TCustomActionMenuBar.FRootMenu:TCustomActionMenuBar
 004B4282    mov         eax,dword ptr [eax+2B0];TCustomActionMenuBar.FPopupStack:TMenuStack
 004B4288    call        004B279C
 004B428D    mov         eax,dword ptr [eax+2F8]
 004B4293    mov         dword ptr [ebp-8],eax
 004B4296    mov         eax,dword ptr [ebp-8]
 004B4299    add         eax,30C
 004B429E    call        FreeAndNil
 004B42A3    mov         eax,dword ptr [ebp-8]
 004B42A6    mov         byte ptr [eax+294],0
 004B42AD    mov         eax,dword ptr [ebp-8]
 004B42B0    mov         byte ptr [eax+295],0
 004B42B7    push        96
 004B42BC    push        32
 004B42BE    xor         ecx,ecx
 004B42C0    xor         edx,edx
 004B42C2    mov         eax,dword ptr [ebp-8]
 004B42C5    mov         ebx,dword ptr [eax]
 004B42C7    call        dword ptr [ebx+84]
 004B42CD    cmp         dword ptr [ebp-8],0
>004B42D1    jne         004B42EA
 004B42D3    mov         eax,dword ptr [ebp-4]
 004B42D6    mov         si,0FFB2
 004B42DA    call        @CallDynaInst;TCustomActionMenuBar.sub_004B3790
 004B42DF    mov         ecx,dword ptr [ebp-4]
 004B42E2    mov         dl,1
 004B42E4    call        dword ptr [eax+2C]
 004B42E7    mov         dword ptr [ebp-8],eax
 004B42EA    mov         edx,dword ptr [ebp-8]
 004B42ED    mov         eax,dword ptr [ebp-4]
 004B42F0    mov         eax,dword ptr [eax+2B0];TCustomActionMenuBar.FPopupStack:TMenuStack
 004B42F6    call        004B2864
 004B42FB    mov         eax,dword ptr [ebp-8]
 004B42FE    pop         esi
 004B42FF    pop         ebx
 004B4300    pop         ecx
 004B4301    pop         ecx
 004B4302    pop         ebp
 004B4303    ret
end;*}

//004B4304
{*procedure sub_004B4304(?:?);
begin
 004B4304    push        ebp
 004B4305    mov         ebp,esp
 004B4307    add         esp,0FFFFFFE4
 004B430A    push        ebx
 004B430B    mov         dword ptr [ebp-8],edx
 004B430E    mov         dword ptr [ebp-4],eax
 004B4311    mov         edx,dword ptr [ebp-8]
 004B4314    mov         eax,dword ptr [ebp-4]
 004B4317    call        004B3F00
 004B431C    mov         dword ptr [ebp-0C],eax
 004B431F    cmp         dword ptr [ebp-0C],0
>004B4323    jne         004B4444
 004B4329    mov         eax,dword ptr [ebp-8]
 004B432C    mov         eax,dword ptr [eax+4]
 004B432F    sub         eax,200
>004B4334    je          004B4358
 004B4336    dec         eax
>004B4337    je          004B4412
 004B433D    add         eax,0FFFFFFFE
 004B4340    sub         eax,2
>004B4343    jb          004B4412
 004B4349    dec         eax
 004B434A    sub         eax,2
>004B434D    jb          004B4412
>004B4353    jmp         004B4444
 004B4358    mov         eax,[0056E5B4];^Mouse:TMouse
 004B435D    mov         eax,dword ptr [eax]
 004B435F    call        00491DE4
 004B4364    test        al,al
>004B4366    je          004B4444
 004B436C    mov         eax,dword ptr [ebp-8]
 004B436F    push        dword ptr [eax+18]
 004B4372    push        dword ptr [eax+14]
 004B4375    call        user32.WindowFromPoint
 004B437A    mov         ebx,eax
 004B437C    mov         eax,dword ptr [ebp-4]
 004B437F    mov         eax,dword ptr [eax+2C4];TCustomActionMenuBar.FRootMenu:TCustomActionMenuBar
 004B4385    mov         eax,dword ptr [eax+2B0];TCustomActionMenuBar.FPopupStack:TMenuStack
 004B438B    call        004B279C
 004B4390    call        TWinControl.GetHandle
 004B4395    cmp         ebx,eax
>004B4397    je          004B4444
 004B439D    mov         eax,dword ptr [ebp-4]
 004B43A0    call        004A0740
 004B43A5    mov         dword ptr [ebp-14],eax
 004B43A8    cmp         dword ptr [ebp-14],0
>004B43AC    je          004B4444
 004B43B2    push        1
 004B43B4    lea         ecx,[ebp-1C]
 004B43B7    mov         edx,dword ptr [ebp-8]
 004B43BA    add         edx,14
 004B43BD    mov         eax,dword ptr [ebp-4]
 004B43C0    call        TControl.ScreenToClient
 004B43C5    lea         edx,[ebp-1C]
 004B43C8    xor         ecx,ecx
 004B43CA    mov         eax,dword ptr [ebp-14]
 004B43CD    call        00488D4C
 004B43D2    mov         dword ptr [ebp-10],eax
 004B43D5    cmp         dword ptr [ebp-10],0
>004B43D9    je          004B4444
 004B43DB    mov         eax,dword ptr [ebp-10]
 004B43DE    mov         edx,dword ptr ds:[4BB79C];TCustomActionBar
 004B43E4    call        @IsClass
 004B43E9    test        al,al
>004B43EB    jne         004B43FF
 004B43ED    mov         eax,dword ptr [ebp-10]
 004B43F0    mov         edx,dword ptr ds:[4BB9B8];TCustomActionControl
 004B43F6    call        @IsClass
 004B43FB    test        al,al
>004B43FD    je          004B4444
 004B43FF    mov         eax,dword ptr [ebp-4]
 004B4402    mov         eax,dword ptr [eax+2C4];TCustomActionMenuBar.FRootMenu:TCustomActionMenuBar
 004B4408    mov         edx,dword ptr [eax]
 004B440A    call        dword ptr [edx+17C];TCustomActionMenuBar.sub_004B31B8
>004B4410    jmp         004B4444
 004B4412    mov         eax,dword ptr [ebp-4]
 004B4415    test        byte ptr [eax+1C],10;TCustomActionMenuBar.FComponentState:TComponentState
>004B4419    jne         004B4433
 004B441B    mov         eax,dword ptr [ebp-4]
 004B441E    mov         eax,dword ptr [eax+2C4];TCustomActionMenuBar.FRootMenu:TCustomActionMenuBar
 004B4424    mov         edx,dword ptr ds:[4B1A20];TCustomActionPopupMenu
 004B442A    call        @IsClass
 004B442F    test        al,al
>004B4431    je          004B4444
 004B4433    mov         eax,dword ptr [ebp-4]
 004B4436    mov         eax,dword ptr [eax+2C4];TCustomActionMenuBar.FRootMenu:TCustomActionMenuBar
 004B443C    mov         edx,dword ptr [eax]
 004B443E    call        dword ptr [edx+17C];TCustomActionMenuBar.sub_004B31B8
 004B4444    mov         eax,dword ptr [ebp-8]
 004B4447    push        eax
 004B4448    call        user32.DispatchMessageA
 004B444D    pop         ebx
 004B444E    mov         esp,ebp
 004B4450    pop         ebp
 004B4451    ret
end;*}

//004B4454
{*function sub_004B4454:?;
begin
 004B4454    push        ebp
 004B4455    mov         ebp,esp
 004B4457    add         esp,0FFFFFFD8
 004B445A    mov         dword ptr [ebp-4],eax
 004B445D    xor         eax,eax
 004B445F    mov         dword ptr [ebp-8],eax
 004B4462    mov         eax,dword ptr [ebp-4]
 004B4465    cmp         byte ptr [eax+296],0;TCustomActionMenuBar.FInMenuLoop:Boolean
>004B446C    jne         004B4768
 004B4472    mov         eax,dword ptr [ebp-4]
 004B4475    mov         edx,dword ptr [eax]
 004B4477    call        dword ptr [edx+16C];TCustomActionMenuBar.sub_004B40A4
 004B447D    xor         eax,eax
 004B447F    push        ebp
 004B4480    push        4B4761
 004B4485    push        dword ptr fs:[eax]
 004B4488    mov         dword ptr fs:[eax],esp
 004B448B    push        1
 004B448D    push        0
 004B448F    push        0
 004B4491    push        0
 004B4493    lea         eax,[ebp-28]
 004B4496    push        eax
 004B4497    call        user32.PeekMessageA
 004B449C    test        eax,eax
>004B449E    je          004B472D
 004B44A4    cmp         dword ptr [ebp-24],7B
>004B44A8    jne         004B44C6
 004B44AA    mov         eax,dword ptr [ebp-4]
 004B44AD    mov         eax,dword ptr [eax+2C4];TCustomActionMenuBar.FRootMenu:TCustomActionMenuBar
 004B44B3    mov         edx,dword ptr ds:[4B1A20];TCustomActionPopupMenu
 004B44B9    call        @IsClass
 004B44BE    test        al,al
>004B44C0    jne         004B4738
 004B44C6    mov         eax,dword ptr [ebp-4]
 004B44C9    test        byte ptr [eax+1C],10;TCustomActionMenuBar.FComponentState:TComponentState
>004B44CD    je          004B44E6
 004B44CF    lea         edx,[ebp-28]
 004B44D2    mov         eax,[0056E3C0];^Application:TApplication
 004B44D7    mov         eax,dword ptr [eax]
 004B44D9    call        004AB27C
 004B44DE    test        al,al
>004B44E0    jne         004B4738
 004B44E6    lea         edx,[ebp-28]
 004B44E9    mov         eax,dword ptr [ebp-4]
 004B44EC    call        004B3A60
 004B44F1    test        al,al
>004B44F3    je          004B450C
 004B44F5    lea         eax,[ebp-28]
 004B44F8    push        eax
 004B44F9    call        user32.TranslateMessage
 004B44FE    lea         eax,[ebp-28]
 004B4501    push        eax
 004B4502    call        user32.DispatchMessageA
>004B4507    jmp         004B4738
 004B450C    mov         eax,dword ptr [ebp-24]
 004B450F    cmp         eax,200
>004B4514    jge         004B4544
 004B4516    cmp         eax,0A4
>004B451B    jg          004B4530
>004B451D    je          004B4582
 004B451F    sub         eax,10
>004B4522    je          004B4582
 004B4524    sub         eax,91
>004B4529    je          004B4582
>004B452B    jmp         004B4711
 004B4530    sub         eax,0A7
>004B4535    je          004B4582
 004B4537    add         eax,0FFFFFFA7
 004B453A    sub         eax,9
>004B453D    jb          004B45A9
>004B453F    jmp         004B4711
 004B4544    cmp         eax,0B402
>004B4549    jg          004B456B
>004B454B    je          004B46D2
 004B4551    add         eax,0FFFFFE00
 004B4556    sub         eax,0B
>004B4559    jb          004B46C2
 004B455F    sub         eax,0AE16
>004B4564    je          004B4582
>004B4566    jmp         004B4711
 004B456B    sub         eax,0B403
>004B4570    je          004B46F8
 004B4576    dec         eax
>004B4577    je          004B46DF
>004B457D    jmp         004B4711
 004B4582    mov         eax,dword ptr [ebp-4]
 004B4585    mov         edx,dword ptr [eax]
 004B4587    call        dword ptr [edx+17C];TCustomActionMenuBar.sub_004B31B8
 004B458D    mov         eax,dword ptr [ebp-4]
 004B4590    mov         eax,dword ptr [eax+2C4];TCustomActionMenuBar.FRootMenu:TCustomActionMenuBar
 004B4596    call        004B56E8
 004B459B    lea         eax,[ebp-28]
 004B459E    push        eax
 004B459F    call        user32.DispatchMessageA
>004B45A4    jmp         004B4723
 004B45A9    cmp         dword ptr [ebp-20],70
>004B45AD    jne         004B4659
 004B45B3    mov         eax,dword ptr [ebp-4]
 004B45B6    mov         eax,dword ptr [eax+2B0];TCustomActionMenuBar.FPopupStack:TMenuStack
 004B45BC    call        004B279C
 004B45C1    call        004B4028
 004B45C6    test        eax,eax
>004B45C8    je          004B4659
 004B45CE    mov         eax,dword ptr [ebp-4]
 004B45D1    mov         eax,dword ptr [eax+2B0];TCustomActionMenuBar.FPopupStack:TMenuStack
 004B45D7    call        004B279C
 004B45DC    call        004B4028
 004B45E1    mov         eax,dword ptr [eax+64]
 004B45E4    mov         dword ptr [ebp-0C],eax
 004B45E7    mov         eax,[0056E604];^Screen:TScreen
 004B45EC    mov         eax,dword ptr [eax]
 004B45EE    cmp         dword ptr [eax+6C],0;TScreen.FActiveForm:TForm
>004B45F2    jne         004B45FE
 004B45F4    call        @TryFinallyExit
>004B45F9    jmp         004B4768
 004B45FE    cmp         dword ptr [ebp-0C],0
>004B4602    jne         004B4617
 004B4604    mov         eax,[0056E604];^Screen:TScreen
 004B4609    mov         eax,dword ptr [eax]
 004B460B    mov         eax,dword ptr [eax+6C];TScreen.FActiveForm:TForm
 004B460E    mov         eax,dword ptr [eax+158];TForm.HelpContext:THelpContext
 004B4614    mov         dword ptr [ebp-0C],eax
 004B4617    mov         eax,[0056E604];^Screen:TScreen
 004B461C    mov         eax,dword ptr [eax]
 004B461E    mov         eax,dword ptr [eax+6C];TScreen.FActiveForm:TForm
 004B4621    test        byte ptr [eax+228],8;TForm.FBorderIcons:TBorderIcons
>004B4628    je          004B4640
 004B462A    mov         eax,[0056E3C0];^Application:TApplication
 004B462F    mov         eax,dword ptr [eax]
 004B4631    mov         ecx,dword ptr [ebp-0C]
 004B4634    mov         edx,8
 004B4639    call        004ABEA8
>004B463E    jmp         004B464F
 004B4640    mov         eax,[0056E3C0];^Application:TApplication
 004B4645    mov         eax,dword ptr [eax]
 004B4647    mov         edx,dword ptr [ebp-0C]
 004B464A    call        004ABE14
 004B464F    call        @TryFinallyExit
>004B4654    jmp         004B4768
 004B4659    mov         eax,dword ptr [ebp-4]
 004B465C    cmp         byte ptr [eax+248],0;TCustomActionMenuBar.FPersistentHotKeys:Boolean
>004B4663    jne         004B4672
 004B4665    mov         dl,1
 004B4667    mov         eax,dword ptr [ebp-4]
 004B466A    mov         ecx,dword ptr [eax]
 004B466C    call        dword ptr [ecx+138];TCustomActionMenuBar.sub_004B4B14
 004B4672    cmp         dword ptr [ebp-24],104
>004B4679    jne         004B46AA
 004B467B    cmp         dword ptr [ebp-20],12
>004B467F    jne         004B46AA
 004B4681    mov         eax,dword ptr [ebp-4]
 004B4684    mov         edx,dword ptr [eax]
 004B4686    call        dword ptr [edx+17C];TCustomActionMenuBar.sub_004B31B8
 004B468C    mov         eax,dword ptr [ebp-4]
 004B468F    mov         byte ptr [eax+28A],1;TCustomActionMenuBar.FCancelMenu:Boolean
 004B4696    lea         eax,[ebp-28]
 004B4699    push        eax
 004B469A    call        user32.TranslateMessage
 004B469F    lea         eax,[ebp-28]
 004B46A2    push        eax
 004B46A3    call        user32.DispatchMessageA
>004B46A8    jmp         004B4723
 004B46AA    mov         eax,dword ptr [ebp-4]
 004B46AD    mov         eax,dword ptr [eax+2B0];TCustomActionMenuBar.FPopupStack:TMenuStack
 004B46B3    call        004B279C
 004B46B8    lea         edx,[ebp-24]
 004B46BB    mov         ecx,dword ptr [eax]
 004B46BD    call        dword ptr [ecx-14]
>004B46C0    jmp         004B4723
 004B46C2    lea         edx,[ebp-28]
 004B46C5    mov         eax,dword ptr [ebp-4]
 004B46C8    mov         ecx,dword ptr [eax]
 004B46CA    call        dword ptr [ecx+178];TCustomActionMenuBar.sub_004B4304
>004B46D0    jmp         004B4723
 004B46D2    mov         edx,dword ptr [ebp-1C]
 004B46D5    mov         eax,dword ptr [ebp-4]
 004B46D8    call        004B3650
>004B46DD    jmp         004B4723
 004B46DF    mov         edx,dword ptr [ebp-1C]
 004B46E2    mov         eax,dword ptr [ebp-4]
 004B46E5    mov         ecx,dword ptr [eax]
 004B46E7    call        dword ptr [ecx+154];TCustomActionMenuBar.sub_004B39C8
 004B46ED    mov         edx,dword ptr [ebp-4]
 004B46F0    mov         dword ptr [edx+2F4],eax;TCustomActionMenuBar.FSelectedItem:TActionClientItem
>004B46F6    jmp         004B4723
 004B46F8    mov         edx,dword ptr [ebp-1C]
 004B46FB    mov         eax,dword ptr [ebp-4]
 004B46FE    mov         ecx,dword ptr [eax]
 004B4700    call        dword ptr [ecx+150];TCustomActionMenuBar.sub_004B37D4
 004B4706    mov         edx,dword ptr [ebp-4]
 004B4709    mov         dword ptr [edx+2F4],eax;TCustomActionMenuBar.FSelectedItem:TActionClientItem
>004B470F    jmp         004B4723
 004B4711    lea         eax,[ebp-28]
 004B4714    push        eax
 004B4715    call        user32.TranslateMessage
 004B471A    lea         eax,[ebp-28]
 004B471D    push        eax
 004B471E    call        user32.DispatchMessageA
 004B4723    mov         eax,dword ptr [ebp-4]
 004B4726    call        004B3120
>004B472B    jmp         004B4738
 004B472D    lea         edx,[ebp-28]
 004B4730    mov         eax,dword ptr [ebp-4]
 004B4733    call        004B54F4
 004B4738    mov         eax,dword ptr [ebp-4]
 004B473B    cmp         byte ptr [eax+296],0;TCustomActionMenuBar.FInMenuLoop:Boolean
>004B4742    jne         004B448B
 004B4748    xor         eax,eax
 004B474A    pop         edx
 004B474B    pop         ecx
 004B474C    pop         ecx
 004B474D    mov         dword ptr fs:[eax],edx
 004B4750    push        4B4768
 004B4755    mov         eax,dword ptr [ebp-4]
 004B4758    mov         edx,dword ptr [eax]
 004B475A    call        dword ptr [edx+158];TCustomActionMenuBar.sub_004B3C78
 004B4760    ret
>004B4761    jmp         @HandleFinally
>004B4766    jmp         004B4755
 004B4768    mov         eax,dword ptr [ebp-8]
 004B476B    mov         esp,ebp
 004B476D    pop         ebp
 004B476E    ret
end;*}

//004B4770
{*function sub_004B4770(?:?; ?:?; ?:?):?;
begin
 004B4770    push        ebp
 004B4771    mov         ebp,esp
 004B4773    add         esp,0FFFFFFF4
 004B4776    push        ebx
 004B4777    mov         dword ptr [ebp-8],edx
 004B477A    mov         byte ptr [ebp-1],al
 004B477D    mov         byte ptr [ebp-0A],1
 004B4781    mov         eax,dword ptr [ebp+8]
 004B4784    mov         eax,dword ptr [eax-4]
 004B4787    call        004B4028
 004B478C    mov         edx,dword ptr [ebp-8]
 004B478F    mov         dword ptr [edx],eax
>004B4791    jmp         004B4839
 004B4796    cmp         byte ptr [ebp-1],0
>004B479A    je          004B47B8
 004B479C    mov         edx,dword ptr [ebp-8]
 004B479F    mov         edx,dword ptr [edx]
 004B47A1    mov         eax,dword ptr [ebp+8]
 004B47A4    mov         eax,dword ptr [eax-4]
 004B47A7    mov         cl,1
 004B47A9    mov         ebx,dword ptr [eax]
 004B47AB    call        dword ptr [ebx+0F0]
 004B47B1    mov         edx,dword ptr [ebp-8]
 004B47B4    mov         dword ptr [edx],eax
>004B47B6    jmp         004B47D2
 004B47B8    mov         edx,dword ptr [ebp-8]
 004B47BB    mov         edx,dword ptr [edx]
 004B47BD    mov         eax,dword ptr [ebp+8]
 004B47C0    mov         eax,dword ptr [eax-4]
 004B47C3    mov         cl,1
 004B47C5    mov         ebx,dword ptr [eax]
 004B47C7    call        dword ptr [ebx+0F4]
 004B47CD    mov         edx,dword ptr [ebp-8]
 004B47D0    mov         dword ptr [edx],eax
 004B47D2    mov         eax,dword ptr [ebp-8]
 004B47D5    cmp         dword ptr [eax],0
>004B47D8    je          004B482F
 004B47DA    mov         eax,dword ptr [ebp-8]
 004B47DD    mov         eax,dword ptr [eax]
 004B47DF    cmp         dword ptr [eax+40],0
>004B47E3    je          004B482F
 004B47E5    mov         eax,dword ptr [ebp+8]
 004B47E8    mov         eax,dword ptr [eax-4]
 004B47EB    test        byte ptr [eax+1C],10
>004B47EF    jne         004B4843
 004B47F1    mov         eax,dword ptr [ebp+8]
 004B47F4    mov         eax,dword ptr [eax-4]
 004B47F7    mov         edx,dword ptr [eax]
 004B47F9    call        dword ptr [edx+104]
 004B47FF    test        al,al
>004B4801    je          004B4816
 004B4803    mov         eax,dword ptr [ebp-8]
 004B4806    mov         eax,dword ptr [eax]
 004B4808    mov         eax,dword ptr [eax+40]
 004B480B    mov         edx,dword ptr [eax]
 004B480D    call        dword ptr [edx+50]
 004B4810    test        al,al
>004B4812    jne         004B4843
>004B4814    jmp         004B482F
 004B4816    mov         eax,dword ptr [ebp-8]
 004B4819    mov         eax,dword ptr [eax]
 004B481B    cmp         byte ptr [eax+50],0
>004B481F    jne         004B482F
 004B4821    mov         eax,dword ptr [ebp-8]
 004B4824    mov         eax,dword ptr [eax]
 004B4826    mov         eax,dword ptr [eax+40]
 004B4829    cmp         byte ptr [eax+57],0
>004B482D    jne         004B4843
 004B482F    mov         eax,dword ptr [ebp-8]
 004B4832    cmp         dword ptr [eax],0
 004B4835    setne       byte ptr [ebp-0A]
 004B4839    cmp         byte ptr [ebp-0A],0
>004B483D    jne         004B4796
 004B4843    mov         eax,dword ptr [ebp-8]
 004B4846    cmp         dword ptr [eax],0
 004B4849    setne       byte ptr [ebp-9]
 004B484D    mov         al,byte ptr [ebp-9]
 004B4850    pop         ebx
 004B4851    mov         esp,ebp
 004B4853    pop         ebp
 004B4854    ret
end;*}

//004B4858
{*procedure sub_004B4858(?:?);
begin
 004B4858    push        ebp
 004B4859    mov         ebp,esp
 004B485B    add         esp,0FFFFFFEC
 004B485E    xor         edx,edx
 004B4860    mov         dword ptr [ebp-10],edx
 004B4863    mov         dword ptr [ebp-14],edx
 004B4866    mov         dword ptr [ebp-4],eax
 004B4869    xor         eax,eax
 004B486B    push        ebp
 004B486C    push        4B48D7
 004B4871    push        dword ptr fs:[eax]
 004B4874    mov         dword ptr fs:[eax],esp
 004B4877    mov         eax,dword ptr [ebp-4]
 004B487A    test        byte ptr [eax+31],2
>004B487E    jne         004B48BC
 004B4880    lea         edx,[ebp-10]
 004B4883    mov         eax,dword ptr [ebp-4]
 004B4886    call        TActionClientItem.GetCaption
 004B488B    mov         eax,dword ptr [ebp-10]
 004B488E    mov         dword ptr [ebp-0C],eax
 004B4891    mov         byte ptr [ebp-8],0B
 004B4895    lea         eax,[ebp-0C]
 004B4898    push        eax
 004B4899    push        0
 004B489B    lea         edx,[ebp-14]
 004B489E    mov         eax,[0056E5CC];^SMoveNotAllowed:TResStringRec
 004B48A3    call        LoadResString
 004B48A8    mov         ecx,dword ptr [ebp-14]
 004B48AB    mov         dl,1
 004B48AD    mov         eax,[0040B004];Exception
 004B48B2    call        Exception.CreateFmt;Exception.Create
 004B48B7    call        @RaiseExcept
 004B48BC    xor         eax,eax
 004B48BE    pop         edx
 004B48BF    pop         ecx
 004B48C0    pop         ecx
 004B48C1    mov         dword ptr fs:[eax],edx
 004B48C4    push        4B48DE
 004B48C9    lea         eax,[ebp-14]
 004B48CC    mov         edx,2
 004B48D1    call        @LStrArrayClr
 004B48D6    ret
>004B48D7    jmp         @HandleFinally
>004B48DC    jmp         004B48C9
 004B48DE    mov         esp,ebp
 004B48E0    pop         ebp
 004B48E1    ret
end;*}

//004B48E4
{*procedure sub_004B48E4(?:TCustomActionMenuBar; ?:?);
begin
 004B48E4    push        ebp
 004B48E5    mov         ebp,esp
 004B48E7    add         esp,0FFFFFFF4
 004B48EA    mov         byte ptr [ebp-5],dl
 004B48ED    mov         dword ptr [ebp-4],eax
 004B48F0    push        ebp
 004B48F1    lea         edx,[ebp-0C]
 004B48F4    mov         al,byte ptr [ebp-5]
 004B48F7    call        004B4770
 004B48FC    pop         ecx
 004B48FD    test        al,al
>004B48FF    je          004B49F6
 004B4905    mov         eax,dword ptr [ebp-4]
 004B4908    mov         eax,dword ptr [eax+2C4]
 004B490E    mov         eax,dword ptr [eax+2B0]
 004B4914    call        004B279C
 004B4919    cmp         eax,dword ptr [ebp-4]
>004B491C    jne         004B4990
 004B491E    mov         eax,dword ptr [ebp-4]
 004B4921    mov         edx,dword ptr [eax]
 004B4923    call        dword ptr [edx+104]
 004B4929    test        al,al
>004B492B    je          004B4980
 004B492D    call        004A069C
 004B4932    mov         dl,byte ptr ds:[4B49FC];0x4 gvar_004B49FC
 004B4938    cmp         dl,al
>004B493A    jne         004B4980
 004B493C    cmp         dword ptr [ebp-0C],0
>004B4940    je          004B4980
 004B4942    mov         eax,dword ptr [ebp-4]
 004B4945    call        004B4028
 004B494A    test        eax,eax
>004B494C    je          004B4980
 004B494E    push        ebp
 004B494F    mov         eax,dword ptr [ebp-4]
 004B4952    call        004B4028
 004B4957    call        004B4858
 004B495C    pop         ecx
 004B495D    push        ebp
 004B495E    mov         eax,dword ptr [ebp-0C]
 004B4961    call        004B4858
 004B4966    pop         ecx
 004B4967    mov         eax,dword ptr [ebp-0C]
 004B496A    call        TCollectionItem.GetIndex
 004B496F    push        eax
 004B4970    mov         eax,dword ptr [ebp-4]
 004B4973    call        004B4028
 004B4978    pop         edx
 004B4979    mov         ecx,dword ptr [eax]
 004B497B    call        dword ptr [ecx+14]
>004B497E    jmp         004B49F6
 004B4980    mov         eax,dword ptr [ebp-0C]
 004B4983    mov         edx,dword ptr [eax+40]
 004B4986    mov         eax,dword ptr [ebp-4]
 004B4989    call        004B4A00
>004B498E    jmp         004B49F6
 004B4990    mov         eax,dword ptr [ebp-0C]
 004B4993    mov         eax,dword ptr [eax+40]
 004B4996    mov         eax,dword ptr [eax+30]
 004B4999    cmp         eax,dword ptr [ebp-4]
>004B499C    jne         004B49E8
 004B499E    mov         eax,dword ptr [ebp-0C]
 004B49A1    call        TActionClientItem.GetAction
 004B49A6    test        eax,eax
>004B49A8    je          004B49E8
 004B49AA    mov         eax,dword ptr [ebp-4]
 004B49AD    mov         eax,dword ptr [eax+2C4]
 004B49B3    mov         eax,dword ptr [eax+2B0]
 004B49B9    call        004B279C
 004B49BE    mov         byte ptr [eax+296],0
 004B49C5    mov         eax,dword ptr [ebp-4]
 004B49C8    mov         eax,dword ptr [eax+2C4]
 004B49CE    xor         edx,edx
 004B49D0    mov         dword ptr [eax+28C],edx
 004B49D6    mov         eax,dword ptr [ebp-0C]
 004B49D9    mov         eax,dword ptr [eax+40]
 004B49DC    mov         dl,1
 004B49DE    mov         ecx,dword ptr [eax]
 004B49E0    call        dword ptr [ecx+0D8]
>004B49E6    jmp         004B49F6
 004B49E8    mov         eax,dword ptr [ebp-0C]
 004B49EB    mov         eax,dword ptr [eax+40]
 004B49EE    mov         edx,dword ptr [eax]
 004B49F0    call        dword ptr [edx+0E0]
 004B49F6    mov         esp,ebp
 004B49F8    pop         ebp
 004B49F9    ret
end;*}

//004B4A00
{*procedure sub_004B4A00(?:TCustomActionMenuBar; ?:?);
begin
 004B4A00    push        ebp
 004B4A01    mov         ebp,esp
 004B4A03    add         esp,0FFFFFFF8
 004B4A06    mov         dword ptr [ebp-8],edx
 004B4A09    mov         dword ptr [ebp-4],eax
 004B4A0C    cmp         dword ptr [ebp-8],0
>004B4A10    je          004B4A1F
 004B4A12    mov         dl,1
 004B4A14    mov         eax,dword ptr [ebp-8]
 004B4A17    mov         ecx,dword ptr [eax]
 004B4A19    call        dword ptr [ecx+0D8]
 004B4A1F    pop         ecx
 004B4A20    pop         ecx
 004B4A21    pop         ebp
 004B4A22    ret
end;*}

//004B4A24
{*procedure sub_004B4A24(?:?);
begin
 004B4A24    push        ebp
 004B4A25    mov         ebp,esp
 004B4A27    add         esp,0FFFFFFF8
 004B4A2A    mov         byte ptr [ebp-5],dl
 004B4A2D    mov         dword ptr [ebp-4],eax
 004B4A30    mov         eax,dword ptr [ebp-4]
 004B4A33    mov         edx,dword ptr [eax]
 004B4A35    call        dword ptr [edx+104];TCustomActionMenuBar.sub_004B3EB0
 004B4A3B    cmp         al,byte ptr [ebp-5]
>004B4A3E    je          004B4A4B
 004B4A40    mov         eax,dword ptr [ebp-4]
 004B4A43    mov         edx,dword ptr [eax]
 004B4A45    call        dword ptr [edx+17C];TCustomActionMenuBar.sub_004B31B8
 004B4A4B    mov         dl,byte ptr [ebp-5]
 004B4A4E    mov         eax,dword ptr [ebp-4]
 004B4A51    call        004C324C
 004B4A56    pop         ecx
 004B4A57    pop         ecx
 004B4A58    pop         ebp
 004B4A59    ret
end;*}

//004B4A5C
{*procedure sub_004B4A5C(?:?; ?:?);
begin
 004B4A5C    push        ebp
 004B4A5D    mov         ebp,esp
 004B4A5F    add         esp,0FFFFFFF8
 004B4A62    mov         dword ptr [ebp-8],edx
 004B4A65    mov         dword ptr [ebp-4],eax
 004B4A68    mov         eax,dword ptr [ebp-4]
 004B4A6B    mov         eax,dword ptr [eax+2A8]
 004B4A71    cmp         eax,dword ptr [ebp-8]
>004B4A74    je          004B4B0D
 004B4A7A    mov         eax,dword ptr [ebp-8]
 004B4A7D    mov         edx,dword ptr [ebp-4]
 004B4A80    mov         dword ptr [edx+2A8],eax
 004B4A86    mov         eax,dword ptr [ebp-4]
 004B4A89    cmp         dword ptr [eax+2A8],0
>004B4A90    je          004B4B0D
 004B4A92    mov         eax,dword ptr [ebp-4]
 004B4A95    mov         eax,dword ptr [eax+2A8]
 004B4A9B    mov         edx,dword ptr [ebp-4]
 004B4A9E    mov         dword ptr [eax+2FC],edx
 004B4AA4    mov         eax,dword ptr [ebp-4]
 004B4AA7    mov         eax,dword ptr [eax+2A8]
 004B4AAD    mov         dl,byte ptr [eax+248]
 004B4AB3    mov         eax,dword ptr [ebp-4]
 004B4AB6    mov         ecx,dword ptr [eax]
 004B4AB8    call        dword ptr [ecx+138]
 004B4ABE    mov         eax,dword ptr [ebp-4]
 004B4AC1    mov         eax,dword ptr [eax+2A8]
 004B4AC7    cmp         word ptr [eax+23A],0
>004B4ACF    je          004B4AF5
 004B4AD1    mov         eax,dword ptr [ebp-4]
 004B4AD4    mov         eax,dword ptr [eax+2A8]
 004B4ADA    mov         edx,dword ptr [ebp-4]
 004B4ADD    mov         ecx,dword ptr [eax+238]
 004B4AE3    mov         dword ptr [edx+238],ecx
 004B4AE9    mov         ecx,dword ptr [eax+23C]
 004B4AEF    mov         dword ptr [edx+23C],ecx
 004B4AF5    mov         eax,dword ptr [ebp-4]
 004B4AF8    mov         eax,dword ptr [eax+2A8]
 004B4AFE    mov         al,byte ptr [eax+289]
 004B4B04    mov         edx,dword ptr [ebp-4]
 004B4B07    mov         byte ptr [edx+289],al
 004B4B0D    pop         ecx
 004B4B0E    pop         ecx
 004B4B0F    pop         ebp
 004B4B10    ret
end;*}

//004B4B14
{*procedure sub_004B4B14(?:?);
begin
 004B4B14    push        ebp
 004B4B15    mov         ebp,esp
 004B4B17    add         esp,0FFFFFFEC
 004B4B1A    mov         byte ptr [ebp-5],dl
 004B4B1D    mov         dword ptr [ebp-4],eax
 004B4B20    mov         al,byte ptr [ebp-5]
 004B4B23    mov         edx,dword ptr [ebp-4]
 004B4B26    cmp         al,byte ptr [edx+248];TCustomActionMenuBar.FPersistentHotKeys:Boolean
 004B4B2C    setne       al
 004B4B2F    and         al,byte ptr [ebp-5]
 004B4B32    mov         byte ptr [ebp-0D],al
 004B4B35    mov         dl,byte ptr [ebp-5]
 004B4B38    mov         eax,dword ptr [ebp-4]
 004B4B3B    call        004C3678
 004B4B40    cmp         byte ptr [ebp-0D],0
>004B4B44    je          004B4B96
 004B4B46    mov         eax,dword ptr [ebp-4]
 004B4B49    cmp         dword ptr [eax+2B0],0;TCustomActionMenuBar.FPopupStack:TMenuStack
>004B4B50    je          004B4B96
 004B4B52    mov         eax,dword ptr [ebp-4]
 004B4B55    mov         eax,dword ptr [eax+2B0];TCustomActionMenuBar.FPopupStack:TMenuStack
 004B4B5B    call        004377BC
 004B4B60    dec         eax
 004B4B61    test        eax,eax
>004B4B63    jl          004B4B96
 004B4B65    inc         eax
 004B4B66    mov         dword ptr [ebp-14],eax
 004B4B69    mov         dword ptr [ebp-0C],0
 004B4B70    mov         eax,dword ptr [ebp-4]
 004B4B73    mov         eax,dword ptr [eax+2B0];TCustomActionMenuBar.FPopupStack:TMenuStack
 004B4B79    mov         eax,dword ptr [eax+4];TMenuStack...................FList:TList
 004B4B7C    mov         edx,dword ptr [ebp-0C]
 004B4B7F    call        TList.Get
 004B4B84    mov         dl,1
 004B4B86    mov         ecx,dword ptr [eax]
 004B4B88    call        dword ptr [ecx+138]
 004B4B8E    inc         dword ptr [ebp-0C]
 004B4B91    dec         dword ptr [ebp-14]
>004B4B94    jne         004B4B70
 004B4B96    mov         esp,ebp
 004B4B98    pop         ebp
 004B4B99    ret
end;*}

//004B4B9C
{*procedure sub_004B4B9C(?:?);
begin
 004B4B9C    push        ebp
 004B4B9D    mov         ebp,esp
 004B4B9F    add         esp,0FFFFFFF8
 004B4BA2    mov         dword ptr [ebp-8],edx
 004B4BA5    mov         dword ptr [ebp-4],eax
 004B4BA8    mov         edx,dword ptr [ebp-8]
 004B4BAB    mov         eax,dword ptr [ebp-4]
 004B4BAE    call        0048359C
 004B4BB3    mov         eax,dword ptr [ebp-4]
 004B4BB6    call        004A0740
 004B4BBB    mov         edx,dword ptr [ebp-4]
 004B4BBE    mov         dword ptr [edx+2A4],eax;TCustomActionMenuBar.FParentForm:TCustomForm
 004B4BC4    pop         ecx
 004B4BC5    pop         ecx
 004B4BC6    pop         ebp
 004B4BC7    ret
end;*}

//004B4BC8
procedure TCustomActionMenuBar.TrackMenu;
begin
{*
 004B4BC8    push        ebp
 004B4BC9    mov         ebp,esp
 004B4BCB    add         esp,0FFFFFFF8
 004B4BCE    push        ebx
 004B4BCF    mov         dword ptr [ebp-4],eax
 004B4BD2    mov         eax,dword ptr [ebp-4]
 004B4BD5    cmp         byte ptr [eax+296],0
>004B4BDC    jne         004B4CE5
 004B4BE2    mov         eax,dword ptr [ebp-4]
 004B4BE5    mov         edx,dword ptr [ebp-4]
 004B4BE8    mov         dword ptr [eax+2C4],edx
 004B4BEE    mov         byte ptr [ebp-5],1
 004B4BF2    mov         eax,dword ptr [ebp-4]
 004B4BF5    cmp         word ptr [eax+2E2],0
>004B4BFD    je          004B4C11
 004B4BFF    mov         ebx,dword ptr [ebp-4]
 004B4C02    mov         edx,dword ptr [ebp-4]
 004B4C05    mov         eax,dword ptr [ebx+2E4]
 004B4C0B    call        dword ptr [ebx+2E0]
 004B4C11    xor         eax,eax
 004B4C13    push        ebp
 004B4C14    push        4B4CDE
 004B4C19    push        dword ptr fs:[eax]
 004B4C1C    mov         dword ptr fs:[eax],esp
 004B4C1F    mov         eax,dword ptr [ebp-4]
 004B4C22    mov         edx,dword ptr [eax]
 004B4C24    call        dword ptr [edx+174]
 004B4C2A    mov         eax,dword ptr [ebp-4]
 004B4C2D    cmp         dword ptr [eax+2F4],0
>004B4C34    je          004B4C5A
 004B4C36    mov         eax,dword ptr [ebp-4]
 004B4C39    cmp         dword ptr [eax+2F4],0
>004B4C40    je          004B4C56
 004B4C42    mov         eax,dword ptr [ebp-4]
 004B4C45    mov         eax,dword ptr [eax+2F4]
 004B4C4B    call        TActionClientItem.GetAction
 004B4C50    cmp         byte ptr [eax+6A],0
>004B4C54    je          004B4C5A
 004B4C56    xor         eax,eax
>004B4C58    jmp         004B4C5C
 004B4C5A    mov         al,1
 004B4C5C    mov         byte ptr [ebp-5],al
 004B4C5F    mov         eax,dword ptr [ebp-4]
 004B4C62    mov         edx,dword ptr [eax]
 004B4C64    call        dword ptr [edx+104]
 004B4C6A    test        al,al
>004B4C6C    jne         004B4CAE
 004B4C6E    mov         eax,dword ptr [ebp-4]
 004B4C71    cmp         dword ptr [eax+2F4],0
>004B4C78    je          004B4CAE
 004B4C7A    mov         eax,dword ptr [ebp-4]
 004B4C7D    mov         eax,dword ptr [eax+2F4]
 004B4C83    call        004C045C
 004B4C88    mov         eax,dword ptr [ebp-4]
 004B4C8B    mov         edx,dword ptr [eax]
 004B4C8D    call        dword ptr [edx+88]
 004B4C93    mov         eax,dword ptr [ebp-4]
 004B4C96    mov         eax,dword ptr [eax+2F4]
 004B4C9C    call        TActionClientItem.GetAction
 004B4CA1    mov         edx,eax
 004B4CA3    mov         eax,dword ptr [ebp-4]
 004B4CA6    mov         ecx,dword ptr [eax]
 004B4CA8    call        dword ptr [ecx+160]
 004B4CAE    xor         eax,eax
 004B4CB0    pop         edx
 004B4CB1    pop         ecx
 004B4CB2    pop         ecx
 004B4CB3    mov         dword ptr fs:[eax],edx
 004B4CB6    push        4B4CE5
 004B4CBB    mov         eax,dword ptr [ebp-4]
 004B4CBE    cmp         word ptr [eax+2EA],0
>004B4CC6    je          004B4CDD
 004B4CC8    mov         ebx,dword ptr [ebp-4]
 004B4CCB    mov         cl,byte ptr [ebp-5]
 004B4CCE    mov         edx,dword ptr [ebp-4]
 004B4CD1    mov         eax,dword ptr [ebx+2EC]
 004B4CD7    call        dword ptr [ebx+2E8]
 004B4CDD    ret
>004B4CDE    jmp         @HandleFinally
>004B4CE3    jmp         004B4CBB
 004B4CE5    pop         ebx
 004B4CE6    pop         ecx
 004B4CE7    pop         ecx
 004B4CE8    pop         ebp
 004B4CE9    ret
*}
end;

//004B4CEC
{*procedure sub_004B4CEC(?:?);
begin
 004B4CEC    push        ebp
 004B4CED    mov         ebp,esp
 004B4CEF    add         esp,0FFFFFFF8
 004B4CF2    mov         dword ptr [ebp-8],edx
 004B4CF5    mov         dword ptr [ebp-4],eax
 004B4CF8    mov         eax,dword ptr [ebp-8]
 004B4CFB    mov         eax,dword ptr [eax]
 004B4CFD    sub         eax,84
>004B4D02    jne         004B4D0E
 004B4D04    mov         eax,dword ptr [ebp-8]
 004B4D07    mov         dword ptr [eax+0C],1
 004B4D0E    mov         edx,dword ptr [ebp-8]
 004B4D11    mov         eax,dword ptr [ebp-4]
 004B4D14    call        00488EC8
 004B4D19    pop         ecx
 004B4D1A    pop         ecx
 004B4D1B    pop         ebp
 004B4D1C    ret
end;*}

//004B4D20
{*procedure TCustomActionMenuBar.WMKeyDown(?:?);
begin
 004B4D20    push        ebp
 004B4D21    mov         ebp,esp
 004B4D23    add         esp,0FFFFFFD8
 004B4D26    push        ebx
 004B4D27    xor         ecx,ecx
 004B4D29    mov         dword ptr [ebp-18],ecx
 004B4D2C    mov         dword ptr [ebp-24],ecx
 004B4D2F    mov         dword ptr [ebp-28],ecx
 004B4D32    mov         dword ptr [ebp-14],ecx
 004B4D35    mov         dword ptr [ebp-8],edx
 004B4D38    mov         dword ptr [ebp-4],eax
 004B4D3B    xor         eax,eax
 004B4D3D    push        ebp
 004B4D3E    push        4B5066
 004B4D43    push        dword ptr fs:[eax]
 004B4D46    mov         dword ptr fs:[eax],esp
 004B4D49    mov         edx,dword ptr [ebp-8]
 004B4D4C    mov         eax,dword ptr [ebp-4]
 004B4D4F    call        TWinControl.WMKeyDown
 004B4D54    mov         eax,dword ptr [ebp-4]
 004B4D57    cmp         byte ptr [eax+296],0;TCustomActionMenuBar.FInMenuLoop:Boolean
>004B4D5E    je          004B503E
 004B4D64    mov         eax,dword ptr [ebp-4]
 004B4D67    cmp         dword ptr [eax+2C4],0;TCustomActionMenuBar.FRootMenu:TCustomActionMenuBar
>004B4D6E    je          004B4DC3
 004B4D70    mov         eax,dword ptr [ebp-8]
 004B4D73    mov         ax,word ptr [eax+4]
 004B4D77    add         al,0D0
 004B4D79    sub         al,0A
>004B4D7B    jb          004B4D83
 004B4D7D    add         al,0F9
 004B4D7F    sub         al,1A
>004B4D81    jae         004B4DC3
 004B4D83    call        004A069C
 004B4D88    test        al,4
>004B4D8A    jne         004B4DC3
 004B4D8C    mov         eax,dword ptr [ebp-4]
 004B4D8F    mov         eax,dword ptr [eax+2C4];TCustomActionMenuBar.FRootMenu:TCustomActionMenuBar
 004B4D95    mov         eax,dword ptr [eax+2B0];TCustomActionMenuBar.FPopupStack:TMenuStack
 004B4D9B    call        004B279C
 004B4DA0    mov         edx,dword ptr [ebp-8]
 004B4DA3    mov         dx,word ptr [edx+4]
 004B4DA7    call        004C2670
 004B4DAC    mov         dword ptr [ebp-0C],eax
 004B4DAF    cmp         dword ptr [ebp-0C],0
>004B4DB3    je          004B4DC3
 004B4DB5    mov         eax,dword ptr [ebp-0C]
 004B4DB8    mov         eax,dword ptr [eax+40]
 004B4DBB    mov         edx,dword ptr [eax]
 004B4DBD    call        dword ptr [edx+0E0]
 004B4DC3    mov         eax,dword ptr [ebp-8]
 004B4DC6    movzx       eax,word ptr [eax+4]
 004B4DCA    add         eax,0FFFFFFF3
 004B4DCD    cmp         eax,21
>004B4DD0    ja          004B503E
 004B4DD6    mov         al,byte ptr [eax+4B4DE3]
 004B4DDC    jmp         dword ptr [eax*4+4B4E05]
 004B4DDC    db          5
 004B4DDC    db          0
 004B4DDC    db          0
 004B4DDC    db          0
 004B4DDC    db          0
 004B4DDC    db          0
 004B4DDC    db          0
 004B4DDC    db          0
 004B4DDC    db          0
 004B4DDC    db          0
 004B4DDC    db          0
 004B4DDC    db          0
 004B4DDC    db          0
 004B4DDC    db          0
 004B4DDC    db          6
 004B4DDC    db          0
 004B4DDC    db          0
 004B4DDC    db          0
 004B4DDC    db          0
 004B4DDC    db          0
 004B4DDC    db          0
 004B4DDC    db          0
 004B4DDC    db          4
 004B4DDC    db          3
 004B4DDC    db          0
 004B4DDC    db          1
 004B4DDC    db          0
 004B4DDC    db          2
 004B4DDC    db          0
 004B4DDC    db          0
 004B4DDC    db          0
 004B4DDC    db          0
 004B4DDC    db          0
 004B4DDC    db          7
 004B4DDC    dd          004B503E
 004B4DDC    dd          004B4E25
 004B4DDC    dd          004B4E34
 004B4DDC    dd          004B4E43
 004B4DDC    dd          004B4E5B
 004B4DDC    dd          004B4E73
 004B4DDC    dd          004B4E9B
 004B4DDC    dd          004B4EEC
 004B4E25    xor         edx,edx
 004B4E27    mov         eax,dword ptr [ebp-4]
 004B4E2A    call        004B48E4
>004B4E2F    jmp         004B503E
 004B4E34    mov         dl,1
 004B4E36    mov         eax,dword ptr [ebp-4]
 004B4E39    call        004B48E4
>004B4E3E    jmp         004B503E
 004B4E43    mov         eax,dword ptr [ebp-4]
 004B4E46    call        004C28DC
 004B4E4B    mov         edx,dword ptr [eax+40]
 004B4E4E    mov         eax,dword ptr [ebp-4]
 004B4E51    call        004B4A00
>004B4E56    jmp         004B503E
 004B4E5B    mov         eax,dword ptr [ebp-4]
 004B4E5E    call        004C2880
 004B4E63    mov         edx,dword ptr [eax+40]
 004B4E66    mov         eax,dword ptr [ebp-4]
 004B4E69    call        004B4A00
>004B4E6E    jmp         004B503E
 004B4E73    mov         eax,dword ptr [ebp-4]
 004B4E76    call        004B4028
 004B4E7B    test        eax,eax
>004B4E7D    je          004B503E
 004B4E83    mov         eax,dword ptr [ebp-4]
 004B4E86    call        004B4028
 004B4E8B    mov         eax,dword ptr [eax+40]
 004B4E8E    mov         edx,dword ptr [eax]
 004B4E90    call        dword ptr [edx+0E0]
>004B4E96    jmp         004B503E
 004B4E9B    mov         eax,dword ptr [ebp-4]
 004B4E9E    mov         edx,dword ptr [eax]
 004B4EA0    call        dword ptr [edx+104];TCustomActionMenuBar.sub_004B3EB0
 004B4EA6    test        al,al
>004B4EA8    je          004B4EC2
 004B4EAA    mov         eax,dword ptr [ebp-4]
 004B4EAD    cmp         dword ptr [eax+290],0;TCustomActionMenuBar.FDragItem:TCustomActionControl
>004B4EB4    je          004B4EC2
 004B4EB6    xor         eax,eax
 004B4EB8    call        DragDone
>004B4EBD    jmp         004B503E
 004B4EC2    mov         eax,[0056E5B4];^Mouse:TMouse
 004B4EC7    mov         eax,dword ptr [eax]
 004B4EC9    call        00491DE4
 004B4ECE    test        al,al
>004B4ED0    je          004B4EDC
 004B4ED2    call        CancelDrag
>004B4ED7    jmp         004B503E
 004B4EDC    mov         eax,dword ptr [ebp-4]
 004B4EDF    mov         edx,dword ptr [eax]
 004B4EE1    call        dword ptr [edx+17C];TCustomActionMenuBar.sub_004B31B8
>004B4EE7    jmp         004B503E
 004B4EEC    mov         eax,dword ptr [ebp-4]
 004B4EEF    mov         edx,dword ptr [eax]
 004B4EF1    call        dword ptr [edx+104];TCustomActionMenuBar.sub_004B3EB0
 004B4EF7    test        al,al
>004B4EF9    je          004B503E
 004B4EFF    mov         eax,dword ptr [ebp-4]
 004B4F02    call        004B4028
 004B4F07    test        eax,eax
>004B4F09    je          004B503E
 004B4F0F    mov         eax,dword ptr [ebp-4]
 004B4F12    call        004B4028
 004B4F17    mov         dword ptr [ebp-0C],eax
 004B4F1A    mov         eax,dword ptr [ebp-0C]
 004B4F1D    test        byte ptr [eax+31],4
>004B4F21    jne         004B4F44
 004B4F23    lea         edx,[ebp-14]
 004B4F26    mov         eax,[0056E0A8];^SDeleteNotAllowed:TResStringRec
 004B4F2B    call        LoadResString
 004B4F30    mov         ecx,dword ptr [ebp-14]
 004B4F33    mov         dl,1
 004B4F35    mov         eax,[0040B004];Exception
 004B4F3A    call        Exception.Create;Exception.Create
 004B4F3F    call        @RaiseExcept
 004B4F44    mov         eax,dword ptr [ebp-0C]
 004B4F47    call        004BE56C
 004B4F4C    test        al,al
>004B4F4E    je          004B4F9F
 004B4F50    push        0
 004B4F52    lea         eax,[ebp-18]
 004B4F55    push        eax
 004B4F56    lea         edx,[ebp-24]
 004B4F59    mov         eax,dword ptr [ebp-0C]
 004B4F5C    call        TActionClientItem.GetCaption
 004B4F61    mov         eax,dword ptr [ebp-24]
 004B4F64    mov         dword ptr [ebp-20],eax
 004B4F67    mov         byte ptr [ebp-1C],0B
 004B4F6B    lea         eax,[ebp-20]
 004B4F6E    push        eax
 004B4F6F    lea         edx,[ebp-28]
 004B4F72    mov         eax,[0056E4F4];^SDeleteItemWithSubItems:TResStringRec
 004B4F77    call        LoadResString
 004B4F7C    mov         eax,dword ptr [ebp-28]
 004B4F7F    xor         ecx,ecx
 004B4F81    pop         edx
 004B4F82    call        0040D630
 004B4F87    mov         eax,dword ptr [ebp-18]
 004B4F8A    mov         cx,word ptr ds:[4B5074];0xC gvar_004B5074
 004B4F91    mov         dl,3
 004B4F93    call        0043F788
 004B4F98    dec         eax
>004B4F99    jne         004B503E
 004B4F9F    mov         eax,dword ptr [ebp-0C]
 004B4FA2    call        TCollectionItem.GetIndex
 004B4FA7    mov         dword ptr [ebp-10],eax
 004B4FAA    mov         eax,dword ptr [ebp-4]
 004B4FAD    mov         edx,dword ptr [eax]
 004B4FAF    call        dword ptr [edx+114];TCustomActionMenuBar.sub_004C2FA8
 004B4FB5    dec         eax
 004B4FB6    cmp         eax,dword ptr [ebp-10]
>004B4FB9    jne         004B4FD0
 004B4FBB    xor         ecx,ecx
 004B4FBD    mov         edx,dword ptr [ebp-0C]
 004B4FC0    mov         eax,dword ptr [ebp-4]
 004B4FC3    mov         ebx,dword ptr [eax]
 004B4FC5    call        dword ptr [ebx+0F4];TCustomActionMenuBar.sub_004C2D1C
 004B4FCB    mov         dword ptr [ebp-0C],eax
>004B4FCE    jmp         004B4FE3
 004B4FD0    xor         ecx,ecx
 004B4FD2    mov         edx,dword ptr [ebp-0C]
 004B4FD5    mov         eax,dword ptr [ebp-4]
 004B4FD8    mov         ebx,dword ptr [eax]
 004B4FDA    call        dword ptr [ebx+0F0];TCustomActionMenuBar.sub_004C2C78
 004B4FE0    mov         dword ptr [ebp-0C],eax
 004B4FE3    mov         eax,dword ptr [ebp-4]
 004B4FE6    mov         eax,dword ptr [eax+210];TCustomActionMenuBar.FActionClient:TActionClient
 004B4FEC    call        TActionClient.GetItems
 004B4FF1    mov         edx,dword ptr [ebp-10]
 004B4FF4    call        00421924
 004B4FF9    cmp         dword ptr [ebp-0C],0
>004B4FFD    je          004B5011
 004B4FFF    mov         eax,dword ptr [ebp-0C]
 004B5002    mov         eax,dword ptr [eax+40]
 004B5005    mov         dl,1
 004B5007    mov         ecx,dword ptr [eax]
 004B5009    call        dword ptr [ecx+0D8]
>004B500F    jmp         004B5036
 004B5011    mov         eax,dword ptr [ebp-4]
 004B5014    mov         eax,dword ptr [eax+2AC];TCustomActionMenuBar.FParentControl:TCustomActionControl
 004B501A    push        eax
 004B501B    push        0
 004B501D    push        0B402
 004B5022    mov         eax,dword ptr [ebp-4]
 004B5025    mov         eax,dword ptr [eax+2C4];TCustomActionMenuBar.FRootMenu:TCustomActionMenuBar
 004B502B    call        TWinControl.GetHandle
 004B5030    push        eax
 004B5031    call        user32.PostMessageA
 004B5036    mov         eax,dword ptr [ebp-4]
 004B5039    call        004BBF24
 004B503E    xor         eax,eax
 004B5040    pop         edx
 004B5041    pop         ecx
 004B5042    pop         ecx
 004B5043    mov         dword ptr fs:[eax],edx
 004B5046    push        4B506D
 004B504B    lea         eax,[ebp-28]
 004B504E    mov         edx,2
 004B5053    call        @LStrArrayClr
 004B5058    lea         eax,[ebp-18]
 004B505B    mov         edx,2
 004B5060    call        @LStrArrayClr
 004B5065    ret
>004B5066    jmp         @HandleFinally
>004B506B    jmp         004B504B
 004B506D    pop         ebx
 004B506E    mov         esp,ebp
 004B5070    pop         ebp
 004B5071    ret
end;*}

//004B5078
{*procedure TCustomActionMenuBar.WMMouseActivate(?:?);
begin
 004B5078    push        ebp
 004B5079    mov         ebp,esp
 004B507B    add         esp,0FFFFFFF8
 004B507E    mov         dword ptr [ebp-8],edx
 004B5081    mov         dword ptr [ebp-4],eax
 004B5084    mov         edx,dword ptr [ebp-8]
 004B5087    mov         eax,dword ptr [ebp-4]
 004B508A    mov         ecx,dword ptr [eax]
 004B508C    call        dword ptr [ecx-10];TWinControl.DefaultHandler
 004B508F    mov         eax,dword ptr [ebp-4]
 004B5092    cmp         byte ptr [eax+296],0;TCustomActionMenuBar.FInMenuLoop:Boolean
>004B5099    je          004B50A5
 004B509B    mov         eax,dword ptr [ebp-8]
 004B509E    mov         dword ptr [eax+0C],3
 004B50A5    pop         ecx
 004B50A6    pop         ecx
 004B50A7    pop         ebp
 004B50A8    ret
end;*}

//004B50AC
{*procedure TCustomActionMenuBar.WMSysKeyDown(?:?);
begin
 004B50AC    push        ebp
 004B50AD    mov         ebp,esp
 004B50AF    add         esp,0FFFFFFF4
 004B50B2    mov         dword ptr [ebp-8],edx
 004B50B5    mov         dword ptr [ebp-4],eax
 004B50B8    mov         edx,dword ptr [ebp-8]
 004B50BB    mov         eax,dword ptr [ebp-4]
 004B50BE    call        TWinControl.WMSysKeyDown
 004B50C3    mov         eax,dword ptr [ebp-4]
 004B50C6    cmp         byte ptr [eax+296],0;TCustomActionMenuBar.FInMenuLoop:Boolean
>004B50CD    je          004B5149
 004B50CF    mov         eax,dword ptr [ebp-4]
 004B50D2    cmp         dword ptr [eax+2C4],0;TCustomActionMenuBar.FRootMenu:TCustomActionMenuBar
>004B50D9    je          004B512E
 004B50DB    mov         eax,dword ptr [ebp-8]
 004B50DE    mov         ax,word ptr [eax+4]
 004B50E2    add         al,0D0
 004B50E4    sub         al,0A
>004B50E6    jb          004B50EE
 004B50E8    add         al,0F9
 004B50EA    sub         al,1A
>004B50EC    jae         004B512E
 004B50EE    mov         eax,dword ptr [ebp-4]
 004B50F1    mov         eax,dword ptr [eax+2C4];TCustomActionMenuBar.FRootMenu:TCustomActionMenuBar
 004B50F7    mov         eax,dword ptr [eax+2B0];TCustomActionMenuBar.FPopupStack:TMenuStack
 004B50FD    call        004B279C
 004B5102    mov         edx,dword ptr [ebp-8]
 004B5105    mov         dx,word ptr [edx+4]
 004B5109    call        004C2670
 004B510E    mov         dword ptr [ebp-0C],eax
 004B5111    cmp         dword ptr [ebp-0C],0
>004B5115    je          004B512E
 004B5117    mov         eax,dword ptr [ebp-0C]
 004B511A    cmp         dword ptr [eax+40],0
>004B511E    je          004B512E
 004B5120    mov         eax,dword ptr [ebp-0C]
 004B5123    mov         eax,dword ptr [eax+40]
 004B5126    mov         edx,dword ptr [eax]
 004B5128    call        dword ptr [edx+0E0]
 004B512E    mov         eax,dword ptr [ebp-8]
 004B5131    cmp         word ptr [eax+4],12
>004B5136    jne         004B5149
 004B5138    mov         eax,dword ptr [ebp-4]
 004B513B    mov         eax,dword ptr [eax+2C4];TCustomActionMenuBar.FRootMenu:TCustomActionMenuBar
 004B5141    mov         edx,dword ptr [eax]
 004B5143    call        dword ptr [edx+17C];TCustomActionMenuBar.sub_004B31B8
 004B5149    mov         esp,ebp
 004B514B    pop         ebp
 004B514C    ret
end;*}

//004B5150
{*function sub_004B5150(?:?):?;
begin
 004B5150    push        ebp
 004B5151    mov         ebp,esp
 004B5153    push        0
 004B5155    push        0
 004B5157    push        0
 004B5159    push        ebx
 004B515A    xor         eax,eax
 004B515C    push        ebp
 004B515D    push        4B52A3
 004B5162    push        dword ptr fs:[eax]
 004B5165    mov         dword ptr fs:[eax],esp
 004B5168    lea         edx,[ebp-8]
 004B516B    mov         eax,dword ptr [ebp+8]
 004B516E    mov         eax,dword ptr [eax-4]
 004B5171    mov         eax,dword ptr [eax+68]
 004B5174    call        TFont.GetName
 004B5179    mov         eax,dword ptr [ebp-8]
 004B517C    push        eax
 004B517D    lea         edx,[ebp-0C]
 004B5180    mov         eax,[0056E604];^Screen:TScreen
 004B5185    mov         eax,dword ptr [eax]
 004B5187    mov         eax,dword ptr [eax+88];TScreen.FMenuFont:TFont
 004B518D    call        TFont.GetName
 004B5192    mov         edx,dword ptr [ebp-0C]
 004B5195    pop         eax
 004B5196    call        @LStrCmp
>004B519B    jne         004B527F
 004B51A1    mov         eax,[0056E604];^Screen:TScreen
 004B51A6    mov         eax,dword ptr [eax]
 004B51A8    mov         eax,dword ptr [eax+88];TScreen.FMenuFont:TFont
 004B51AE    call        TFont.GetStyle
 004B51B3    mov         ebx,eax
 004B51B5    mov         eax,dword ptr [ebp+8]
 004B51B8    mov         eax,dword ptr [eax-4]
 004B51BB    mov         eax,dword ptr [eax+68]
 004B51BE    call        TFont.GetStyle
 004B51C3    cmp         bl,al
>004B51C5    jne         004B527F
 004B51CB    mov         eax,dword ptr [ebp+8]
 004B51CE    mov         eax,dword ptr [eax-4]
 004B51D1    mov         eax,dword ptr [eax+68]
 004B51D4    mov         eax,dword ptr [eax+18]
 004B51D7    mov         edx,dword ptr ds:[56E604];^Screen:TScreen
 004B51DD    mov         edx,dword ptr [edx]
 004B51DF    mov         edx,dword ptr [edx+88];TScreen.FMenuFont:TFont
 004B51E5    cmp         eax,dword ptr [edx+18];TFont.Color:TColor
>004B51E8    jne         004B527F
 004B51EE    mov         eax,dword ptr [ebp+8]
 004B51F1    mov         eax,dword ptr [eax-4]
 004B51F4    mov         eax,dword ptr [eax+68]
 004B51F7    call        TFont.GetPitch
 004B51FC    mov         ebx,eax
 004B51FE    mov         eax,[0056E604];^Screen:TScreen
 004B5203    mov         eax,dword ptr [eax]
 004B5205    mov         eax,dword ptr [eax+88];TScreen.FMenuFont:TFont
 004B520B    call        TFont.GetPitch
 004B5210    cmp         bl,al
>004B5212    jne         004B527F
 004B5214    mov         eax,dword ptr [ebp+8]
 004B5217    mov         eax,dword ptr [eax-4]
 004B521A    mov         eax,dword ptr [eax+68]
 004B521D    mov         eax,dword ptr [eax+1C]
 004B5220    mov         edx,dword ptr ds:[56E604];^Screen:TScreen
 004B5226    mov         edx,dword ptr [edx]
 004B5228    mov         edx,dword ptr [edx+88];TScreen.FMenuFont:TFont
 004B522E    cmp         eax,dword ptr [edx+1C];TFont.FPixelsPerInch:Integer
>004B5231    jne         004B527F
 004B5233    mov         eax,dword ptr [ebp+8]
 004B5236    mov         eax,dword ptr [eax-4]
 004B5239    mov         eax,dword ptr [eax+68]
 004B523C    call        TFont.GetHeight
 004B5241    mov         ebx,eax
 004B5243    mov         eax,[0056E604];^Screen:TScreen
 004B5248    mov         eax,dword ptr [eax]
 004B524A    mov         eax,dword ptr [eax+88];TScreen.FMenuFont:TFont
 004B5250    call        TFont.GetHeight
 004B5255    cmp         ebx,eax
>004B5257    jne         004B527F
 004B5259    mov         eax,dword ptr [ebp+8]
 004B525C    mov         eax,dword ptr [eax-4]
 004B525F    mov         eax,dword ptr [eax+68]
 004B5262    call        TFont.GetSize
 004B5267    mov         ebx,eax
 004B5269    mov         eax,[0056E604];^Screen:TScreen
 004B526E    mov         eax,dword ptr [eax]
 004B5270    mov         eax,dword ptr [eax+88];TScreen.FMenuFont:TFont
 004B5276    call        TFont.GetSize
 004B527B    cmp         ebx,eax
>004B527D    je          004B5283
 004B527F    xor         eax,eax
>004B5281    jmp         004B5285
 004B5283    mov         al,1
 004B5285    mov         byte ptr [ebp-1],al
 004B5288    xor         eax,eax
 004B528A    pop         edx
 004B528B    pop         ecx
 004B528C    pop         ecx
 004B528D    mov         dword ptr fs:[eax],edx
 004B5290    push        4B52AA
 004B5295    lea         eax,[ebp-0C]
 004B5298    mov         edx,2
 004B529D    call        @LStrArrayClr
 004B52A2    ret
>004B52A3    jmp         @HandleFinally
>004B52A8    jmp         004B5295
 004B52AA    mov         al,byte ptr [ebp-1]
 004B52AD    pop         ebx
 004B52AE    mov         esp,ebp
 004B52B0    pop         ebp
 004B52B1    ret
end;*}

//004B52B4
{*procedure TCustomActionMenuBar.CMFontChanged(?:?);
begin
 004B52B4    push        ebp
 004B52B5    mov         ebp,esp
 004B52B7    add         esp,0FFFFFFF8
 004B52BA    push        esi
 004B52BB    mov         dword ptr [ebp-8],edx
 004B52BE    mov         dword ptr [ebp-4],eax
 004B52C1    mov         edx,dword ptr [ebp-8]
 004B52C4    mov         eax,dword ptr [ebp-4]
 004B52C7    call        TWinControl.CMFontChanged
 004B52CC    push        ebp
 004B52CD    call        004B5150
 004B52D2    pop         ecx
 004B52D3    mov         edx,dword ptr [ebp-4]
 004B52D6    mov         byte ptr [edx+2F0],al;TCustomActionMenuBar.FUseSystemFont:Boolean
 004B52DC    mov         eax,dword ptr [ebp-4]
 004B52DF    mov         si,0FFEE
 004B52E3    call        @CallDynaInst;TWinControl.sub_0048673C
 004B52E8    pop         esi
 004B52E9    pop         ecx
 004B52EA    pop         ecx
 004B52EB    pop         ebp
 004B52EC    ret
end;*}

//004B52F0
{*procedure sub_004B52F0(?:?; ?:?);
begin
 004B52F0    push        ebp
 004B52F1    mov         ebp,esp
 004B52F3    add         esp,0FFFFFFF4
 004B52F6    mov         byte ptr [ebp-9],cl
 004B52F9    mov         dword ptr [ebp-8],edx
 004B52FC    mov         dword ptr [ebp-4],eax
 004B52FF    mov         cl,byte ptr [ebp-9]
 004B5302    mov         edx,dword ptr [ebp-8]
 004B5305    mov         eax,dword ptr [ebp-4]
 004B5308    call        004C3044
 004B530D    cmp         byte ptr [ebp-9],1
>004B5311    jne         004B535F
 004B5313    mov         eax,dword ptr [ebp-8]
 004B5316    mov         edx,dword ptr ds:[4BB9B8];TCustomActionControl
 004B531C    call        @IsClass
 004B5321    test        al,al
>004B5323    je          004B535F
 004B5325    mov         eax,dword ptr [ebp-8]
 004B5328    mov         eax,dword ptr [eax+16C]
 004B532E    mov         edx,dword ptr [ebp-4]
 004B5331    cmp         eax,dword ptr [edx+2F4];TCustomActionMenuBar.FSelectedItem:TActionClientItem
>004B5337    jne         004B5346
 004B5339    mov         eax,dword ptr [ebp-4]
 004B533C    xor         edx,edx
 004B533E    mov         dword ptr [eax+2F4],edx;TCustomActionMenuBar.FSelectedItem:TActionClientItem
>004B5344    jmp         004B535F
 004B5346    mov         eax,dword ptr [ebp-8]
 004B5349    mov         edx,dword ptr [ebp-4]
 004B534C    cmp         eax,dword ptr [edx+298];TCustomActionMenuBar.FMouseControl:TControl
>004B5352    jne         004B535F
 004B5354    mov         eax,dword ptr [ebp-4]
 004B5357    xor         edx,edx
 004B5359    mov         dword ptr [eax+298],edx;TCustomActionMenuBar.FMouseControl:TControl
 004B535F    mov         esp,ebp
 004B5361    pop         ebp
 004B5362    ret
end;*}

//004B5364
{*function sub_004B5364(?:TCustomActionMenuBar):?;
begin
 004B5364    push        ebp
 004B5365    mov         ebp,esp
 004B5367    add         esp,0FFFFFFE4
 004B536A    mov         dword ptr [ebp-4],eax
 004B536D    lea         eax,[ebp-14]
 004B5370    push        eax
 004B5371    call        user32.GetCursorPos
 004B5376    lea         eax,[ebp-14]
 004B5379    mov         dl,1
 004B537B    call        00481798
 004B5380    mov         dword ptr [ebp-8],eax
 004B5383    call        0047FB54
 004B5388    mov         dword ptr [ebp-0C],eax
 004B538B    mov         eax,dword ptr [ebp-4]
 004B538E    mov         eax,dword ptr [eax+298]
 004B5394    cmp         eax,dword ptr [ebp-8]
>004B5397    je          004B546D
 004B539D    lea         edx,[ebp-1C]
 004B53A0    mov         eax,[0056E5B4];^Mouse:TMouse
 004B53A5    mov         eax,dword ptr [eax]
 004B53A7    call        00491DC4
 004B53AC    lea         edx,[ebp-1C]
 004B53AF    mov         eax,dword ptr [ebp-4]
 004B53B2    add         eax,29C
 004B53B7    call        0041E6DC
 004B53BC    test        al,al
>004B53BE    jne         004B546D
 004B53C4    lea         edx,[ebp-1C]
 004B53C7    mov         eax,[0056E5B4];^Mouse:TMouse
 004B53CC    mov         eax,dword ptr [eax]
 004B53CE    call        00491DC4
 004B53D3    mov         eax,dword ptr [ebp-4]
 004B53D6    mov         edx,dword ptr [ebp-1C]
 004B53D9    mov         dword ptr [eax+29C],edx
 004B53DF    mov         edx,dword ptr [ebp-18]
 004B53E2    mov         dword ptr [eax+2A0],edx
 004B53E8    mov         eax,dword ptr [ebp-4]
 004B53EB    cmp         dword ptr [eax+298],0
>004B53F2    je          004B53FA
 004B53F4    cmp         dword ptr [ebp-0C],0
>004B53F8    je          004B540E
 004B53FA    cmp         dword ptr [ebp-0C],0
>004B53FE    je          004B5425
 004B5400    mov         eax,dword ptr [ebp-4]
 004B5403    mov         eax,dword ptr [eax+298]
 004B5409    cmp         eax,dword ptr [ebp-0C]
>004B540C    jne         004B5425
 004B540E    push        0
 004B5410    xor         ecx,ecx
 004B5412    mov         edx,0B014
 004B5417    mov         eax,dword ptr [ebp-4]
 004B541A    mov         eax,dword ptr [eax+298]
 004B5420    call        00484FFC
 004B5425    mov         edx,dword ptr [ebp-8]
 004B5428    mov         eax,dword ptr [ebp-4]
 004B542B    call        004B57A8
 004B5430    mov         eax,dword ptr [ebp-4]
 004B5433    cmp         dword ptr [eax+298],0
>004B543A    je          004B5442
 004B543C    cmp         dword ptr [ebp-0C],0
>004B5440    je          004B5456
 004B5442    cmp         dword ptr [ebp-0C],0
>004B5446    je          004B546D
 004B5448    mov         eax,dword ptr [ebp-4]
 004B544B    mov         eax,dword ptr [eax+298]
 004B5451    cmp         eax,dword ptr [ebp-0C]
>004B5454    jne         004B546D
 004B5456    push        0
 004B5458    xor         ecx,ecx
 004B545A    mov         edx,0B013
 004B545F    mov         eax,dword ptr [ebp-4]
 004B5462    mov         eax,dword ptr [eax+298]
 004B5468    call        00484FFC
 004B546D    mov         eax,dword ptr [ebp-8]
 004B5470    mov         esp,ebp
 004B5472    pop         ebp
 004B5473    ret
end;*}

//004B5474
procedure sub_004B5474(?:TCustomActionMenuBar);
begin
{*
 004B5474    push        ebp
 004B5475    mov         ebp,esp
 004B5477    add         esp,0FFFFFFF0
 004B547A    mov         dword ptr [ebp-4],eax
 004B547D    mov         eax,[0056E604];^Screen:TScreen
 004B5482    mov         eax,dword ptr [eax]
 004B5484    call        004A89F4
 004B5489    dec         eax
 004B548A    test        eax,eax
>004B548C    jl          004B54EE
 004B548E    inc         eax
 004B548F    mov         dword ptr [ebp-0C],eax
 004B5492    mov         dword ptr [ebp-8],0
 004B5499    mov         eax,[0056E604];^Screen:TScreen
 004B549E    mov         eax,dword ptr [eax]
 004B54A0    mov         edx,dword ptr [ebp-8]
 004B54A3    call        004A89D0
 004B54A8    mov         dword ptr [ebp-10],eax
 004B54AB    mov         eax,dword ptr [ebp-10]
 004B54AE    call        TWinControl.HandleAllocated
 004B54B3    test        al,al
>004B54B5    je          004B54E6
 004B54B7    mov         eax,dword ptr [ebp-10]
 004B54BA    call        TWinControl.GetHandle
 004B54BF    push        eax
 004B54C0    call        user32.IsWindowVisible
 004B54C5    test        eax,eax
>004B54C7    je          004B54E6
 004B54C9    mov         eax,dword ptr [ebp-10]
 004B54CC    call        TWinControl.GetHandle
 004B54D1    push        eax
 004B54D2    call        user32.IsWindowEnabled
 004B54D7    test        eax,eax
>004B54D9    je          004B54E6
 004B54DB    mov         eax,dword ptr [ebp-10]
 004B54DE    mov         edx,dword ptr [eax]
 004B54E0    call        dword ptr [edx+0DC]
 004B54E6    inc         dword ptr [ebp-8]
 004B54E9    dec         dword ptr [ebp-0C]
>004B54EC    jne         004B5499
 004B54EE    mov         esp,ebp
 004B54F0    pop         ebp
 004B54F1    ret
*}
end;

//004B54F4
{*procedure sub_004B54F4(?:TCustomActionMenuBar; ?:?);
begin
 004B54F4    push        ebp
 004B54F5    mov         ebp,esp
 004B54F7    add         esp,0FFFFFFF0
 004B54FA    push        ebx
 004B54FB    push        esi
 004B54FC    push        edi
 004B54FD    xor         ecx,ecx
 004B54FF    mov         dword ptr [ebp-10],ecx
 004B5502    mov         dword ptr [ebp-0C],edx
 004B5505    mov         dword ptr [ebp-4],eax
 004B5508    xor         eax,eax
 004B550A    push        ebp
 004B550B    push        4B5645
 004B5510    push        dword ptr fs:[eax]
 004B5513    mov         dword ptr fs:[eax],esp
 004B5516    mov         eax,dword ptr [ebp-4]
 004B5519    call        004B5364
 004B551E    mov         eax,[0056E3C0];^Application:TApplication
 004B5523    mov         eax,dword ptr [eax]
 004B5525    cmp         byte ptr [eax+88],0;TApplication.FShowHint:Boolean
>004B552C    je          004B5546
 004B552E    mov         eax,dword ptr [ebp-4]
 004B5531    cmp         dword ptr [eax+298],0;TCustomActionMenuBar.FMouseControl:TControl
>004B5538    jne         004B5546
 004B553A    mov         eax,[0056E3C0];^Application:TApplication
 004B553F    mov         eax,dword ptr [eax]
 004B5541    call        004AC6B0
 004B5546    mov         eax,dword ptr [ebp-4]
 004B5549    call        004B4028
 004B554E    test        eax,eax
>004B5550    je          004B558C
 004B5552    mov         eax,dword ptr [ebp-4]
 004B5555    call        004B4028
 004B555A    call        TActionClientItem.GetAction
 004B555F    test        eax,eax
>004B5561    je          004B558C
 004B5563    mov         eax,dword ptr [ebp-4]
 004B5566    call        004B4028
 004B556B    call        TActionClientItem.GetAction
 004B5570    mov         eax,dword ptr [eax+7C]
 004B5573    lea         edx,[ebp-10]
 004B5576    call        0047FA98
 004B557B    mov         edx,dword ptr [ebp-10]
 004B557E    mov         eax,[0056E3C0];^Application:TApplication
 004B5583    mov         eax,dword ptr [eax]
 004B5585    call        004AC264
>004B558A    jmp         004B5598
 004B558C    mov         eax,[0056E3C0];^Application:TApplication
 004B5591    mov         eax,dword ptr [eax]
 004B5593    call        004AC6B0
 004B5598    mov         byte ptr [ebp-5],1
 004B559C    xor         eax,eax
 004B559E    push        ebp
 004B559F    push        4B55ED
 004B55A4    push        dword ptr fs:[eax]
 004B55A7    mov         dword ptr fs:[eax],esp
 004B55AA    mov         eax,[0056E3C0];^Application:TApplication
 004B55AF    mov         eax,dword ptr [eax]
 004B55B1    cmp         word ptr [eax+102],0;TApplication.?f102:word
>004B55B9    je          004B55D5
 004B55BB    mov         ebx,dword ptr ds:[56E3C0];^Application:TApplication
 004B55C1    mov         ebx,dword ptr [ebx]
 004B55C3    lea         ecx,[ebp-5]
 004B55C6    mov         edx,dword ptr [ebp-4]
 004B55C9    mov         eax,dword ptr [ebx+104];TApplication.?f104:dword
 004B55CF    call        dword ptr [ebx+100]
 004B55D5    cmp         byte ptr [ebp-5],0
>004B55D9    je          004B55E3
 004B55DB    mov         eax,dword ptr [ebp-4]
 004B55DE    call        004B5474
 004B55E3    xor         eax,eax
 004B55E5    pop         edx
 004B55E6    pop         ecx
 004B55E7    pop         ecx
 004B55E8    mov         dword ptr fs:[eax],edx
>004B55EB    jmp         004B5606
>004B55ED    jmp         @HandleAnyException
 004B55F2    mov         eax,[0056E3C0];^Application:TApplication
 004B55F7    mov         eax,dword ptr [eax]
 004B55F9    mov         edx,dword ptr [ebp-4]
 004B55FC    call        TApplication.HandleException
 004B5601    call        @DoneExcept
 004B5606    call        kernel32.GetCurrentThreadId
 004B560B    mov         edx,dword ptr ds:[56E634];^MainThreadID:Cardinal
 004B5611    cmp         eax,dword ptr [edx]
>004B5613    jne         004B5624
 004B5615    xor         eax,eax
 004B5617    call        0042A00C
 004B561C    test        al,al
>004B561E    je          004B5624
 004B5620    mov         byte ptr [ebp-5],0
 004B5624    cmp         byte ptr [ebp-5],0
>004B5628    je          004B562F
 004B562A    call        user32.WaitMessage
 004B562F    xor         eax,eax
 004B5631    pop         edx
 004B5632    pop         ecx
 004B5633    pop         ecx
 004B5634    mov         dword ptr fs:[eax],edx
 004B5637    push        4B564C
 004B563C    lea         eax,[ebp-10]
 004B563F    call        @LStrClr
 004B5644    ret
>004B5645    jmp         @HandleFinally
>004B564A    jmp         004B563C
 004B564C    pop         edi
 004B564D    pop         esi
 004B564E    pop         ebx
 004B564F    mov         esp,ebp
 004B5651    pop         ebp
 004B5652    ret
end;*}

//004B5654
{*function sub_004B5654(?:TCustomActionMenuBar; ?:?):?;
begin
 004B5654    push        ebp
 004B5655    mov         ebp,esp
 004B5657    add         esp,0FFFFFFF0
 004B565A    mov         dword ptr [ebp-8],edx
 004B565D    mov         dword ptr [ebp-4],eax
 004B5660    mov         eax,[0056E3C0];^Application:TApplication
 004B5665    mov         eax,dword ptr [eax]
 004B5667    mov         dword ptr [ebp-10],eax
 004B566A    mov         byte ptr [ebp-9],0
 004B566E    push        1
 004B5670    push        0
 004B5672    push        0
 004B5674    push        0
 004B5676    mov         eax,dword ptr [ebp-8]
 004B5679    push        eax
 004B567A    call        user32.PeekMessageA
 004B567F    test        eax,eax
>004B5681    je          004B56DE
 004B5683    mov         byte ptr [ebp-9],1
 004B5687    mov         eax,dword ptr [ebp-8]
 004B568A    cmp         dword ptr [eax+4],12
>004B568E    je          004B56DE
 004B5690    mov         edx,dword ptr [ebp-8]
 004B5693    mov         eax,dword ptr [ebp-10]
 004B5696    call        004AB390
 004B569B    test        al,al
>004B569D    jne         004B56DE
 004B569F    mov         edx,dword ptr [ebp-8]
 004B56A2    mov         eax,dword ptr [ebp-10]
 004B56A5    call        004AB210
 004B56AA    test        al,al
>004B56AC    jne         004B56DE
 004B56AE    mov         eax,dword ptr [ebp-8]
 004B56B1    cmp         dword ptr [eax+4],100
>004B56B8    jb          004B56CC
 004B56BA    mov         eax,dword ptr [ebp-8]
 004B56BD    cmp         dword ptr [eax+4],108
>004B56C4    ja          004B56CC
 004B56C6    mov         byte ptr [ebp-9],0
>004B56CA    jmp         004B56DE
 004B56CC    mov         eax,dword ptr [ebp-8]
 004B56CF    push        eax
 004B56D0    call        user32.TranslateMessage
 004B56D5    mov         eax,dword ptr [ebp-8]
 004B56D8    push        eax
 004B56D9    call        user32.DispatchMessageA
 004B56DE    mov         al,byte ptr [ebp-9]
 004B56E1    mov         esp,ebp
 004B56E3    pop         ebp
 004B56E4    ret
end;*}

//004B56E8
procedure sub_004B56E8(?:TCustomActionMenuBar);
begin
{*
 004B56E8    push        ebp
 004B56E9    mov         ebp,esp
 004B56EB    add         esp,0FFFFFFE0
 004B56EE    mov         dword ptr [ebp-4],eax
 004B56F1    lea         edx,[ebp-20]
 004B56F4    mov         eax,dword ptr [ebp-4]
 004B56F7    call        004B5654
 004B56FC    test        al,al
>004B56FE    jne         004B56F1
 004B5700    mov         esp,ebp
 004B5702    pop         ebp
 004B5703    ret
*}
end;

//004B5704
{*function sub_004B5704:?;
begin
 004B5704    push        ebp
 004B5705    mov         ebp,esp
 004B5707    add         esp,0FFFFFFF8
 004B570A    mov         dword ptr [ebp-4],eax
 004B570D    mov         eax,dword ptr [ebp-4]
 004B5710    cmp         dword ptr [eax+2C4],0;TCustomActionMenuBar.FRootMenu:TCustomActionMenuBar
>004B5717    je          004B573D
 004B5719    mov         eax,dword ptr [ebp-4]
 004B571C    mov         edx,dword ptr [ebp-4]
 004B571F    cmp         eax,dword ptr [edx+2C4];TCustomActionMenuBar.FRootMenu:TCustomActionMenuBar
>004B5725    je          004B573D
 004B5727    mov         eax,dword ptr [ebp-4]
 004B572A    mov         eax,dword ptr [eax+2C4];TCustomActionMenuBar.FRootMenu:TCustomActionMenuBar
 004B5730    mov         edx,dword ptr [eax]
 004B5732    call        dword ptr [edx+148];TCustomActionMenuBar.sub_004B5704
 004B5738    mov         dword ptr [ebp-8],eax
>004B573B    jmp         004B5748
 004B573D    mov         eax,dword ptr [ebp-4]
 004B5740    call        004C4B1C
 004B5745    mov         dword ptr [ebp-8],eax
 004B5748    mov         eax,dword ptr [ebp-8]
 004B574B    pop         ecx
 004B574C    pop         ecx
 004B574D    pop         ebp
 004B574E    ret
end;*}

//004B5750
procedure sub_004B5750;
begin
{*
 004B5750    push        ebp
 004B5751    mov         ebp,esp
 004B5753    push        ecx
 004B5754    mov         dword ptr [ebp-4],eax
 004B5757    mov         eax,dword ptr [ebp-4]
 004B575A    call        004B1418
 004B575F    mov         eax,dword ptr [ebp-4]
 004B5762    cmp         byte ptr [eax+2F0],0;TCustomActionMenuBar.FUseSystemFont:Boolean
>004B5769    je          004B5783
 004B576B    mov         eax,[0056E604];^Screen:TScreen
 004B5770    mov         eax,dword ptr [eax]
 004B5772    mov         edx,dword ptr [eax+88];TScreen.FMenuFont:TFont
 004B5778    mov         eax,dword ptr [ebp-4]
 004B577B    mov         eax,dword ptr [eax+68];TCustomActionMenuBar.FFont:TFont
 004B577E    mov         ecx,dword ptr [eax]
 004B5780    call        dword ptr [ecx+8];TFont.sub_0042DF9C
 004B5783    pop         ecx
 004B5784    pop         ebp
 004B5785    ret
*}
end;

//004B5788
procedure sub_004B5788;
begin
{*
 004B5788    push        ebp
 004B5789    mov         ebp,esp
 004B578B    push        ecx
 004B578C    mov         dword ptr [ebp-4],eax
 004B578F    mov         eax,dword ptr [ebp-4]
 004B5792    add         eax,2F8;TCustomActionMenuBar.FCachedMenu:TCustomActionPopupMenu
 004B5797    call        FreeAndNil
 004B579C    mov         eax,dword ptr [ebp-4]
 004B579F    call        004C3FE8
 004B57A4    pop         ecx
 004B57A5    pop         ebp
 004B57A6    ret
*}
end;

//004B57A8
{*procedure sub_004B57A8(?:TCustomActionMenuBar; ?:?);
begin
 004B57A8    push        ebp
 004B57A9    mov         ebp,esp
 004B57AB    add         esp,0FFFFFFF8
 004B57AE    mov         dword ptr [ebp-8],edx
 004B57B1    mov         dword ptr [ebp-4],eax
 004B57B4    mov         eax,dword ptr [ebp-8]
 004B57B7    mov         edx,dword ptr [ebp-4]
 004B57BA    cmp         eax,dword ptr [edx+298];TCustomActionMenuBar.FMouseControl:TControl
>004B57C0    je          004B5808
 004B57C2    mov         eax,dword ptr [ebp-4]
 004B57C5    cmp         dword ptr [eax+298],0;TCustomActionMenuBar.FMouseControl:TControl
>004B57CC    je          004B57DF
 004B57CE    mov         edx,dword ptr [ebp-4]
 004B57D1    mov         eax,dword ptr [ebp-4]
 004B57D4    mov         eax,dword ptr [eax+298];TCustomActionMenuBar.FMouseControl:TControl
 004B57DA    call        0042A61C
 004B57DF    mov         eax,dword ptr [ebp-8]
 004B57E2    mov         edx,dword ptr [ebp-4]
 004B57E5    mov         dword ptr [edx+298],eax;TCustomActionMenuBar.FMouseControl:TControl
 004B57EB    mov         eax,dword ptr [ebp-4]
 004B57EE    cmp         dword ptr [eax+298],0;TCustomActionMenuBar.FMouseControl:TControl
>004B57F5    je          004B5808
 004B57F7    mov         edx,dword ptr [ebp-4]
 004B57FA    mov         eax,dword ptr [ebp-4]
 004B57FD    mov         eax,dword ptr [eax+298];TCustomActionMenuBar.FMouseControl:TControl
 004B5803    call        0042A2CC
 004B5808    pop         ecx
 004B5809    pop         ecx
 004B580A    pop         ebp
 004B580B    ret
end;*}

//004B580C
constructor sub_004B580C;
begin
{*
 004B580C    push        ebp
 004B580D    mov         ebp,esp
 004B580F    add         esp,0FFFFFFF4
 004B5812    test        dl,dl
>004B5814    je          004B581E
 004B5816    add         esp,0FFFFFFF0
 004B5819    call        @ClassCreate
 004B581E    mov         dword ptr [ebp-0C],ecx
 004B5821    mov         byte ptr [ebp-5],dl
 004B5824    mov         dword ptr [ebp-4],eax
 004B5827    mov         ecx,dword ptr [ebp-0C]
 004B582A    xor         edx,edx
 004B582C    mov         eax,dword ptr [ebp-4]
 004B582F    call        004B0334
 004B5834    mov         dl,6
 004B5836    mov         eax,dword ptr [ebp-4]
 004B5839    call        TImage.SetAlign
 004B583E    mov         eax,dword ptr [ebp-4]
 004B5841    mov         byte ptr [eax+1CC],1;TCustomMenuExpandBtn.FAutoScroll:Boolean
 004B5848    mov         edx,2
 004B584D    mov         eax,dword ptr [ebp-4]
 004B5850    call        004B0698
 004B5855    mov         eax,dword ptr [ebp-4]
 004B5858    lea         edx,[eax+80];TCustomMenuExpandBtn.Hint:String
 004B585E    mov         eax,[0056E188];^SExpand:TResStringRec
 004B5863    call        LoadResString
 004B5868    mov         dl,1
 004B586A    mov         eax,dword ptr [ebp-4]
 004B586D    call        004B06CC
 004B5872    mov         dl,3
 004B5874    mov         eax,dword ptr [ebp-4]
 004B5877    call        004B0700
 004B587C    mov         eax,dword ptr [ebp-4]
 004B587F    mov         eax,dword ptr [eax+50];TCustomMenuExpandBtn.FControlStyle:TControlStyle
 004B5882    or          eax,dword ptr ds:[4B58B0];0x400 gvar_004B58B0
 004B5888    mov         edx,dword ptr [ebp-4]
 004B588B    mov         dword ptr [edx+50],eax;TCustomMenuExpandBtn.FControlStyle:TControlStyle
 004B588E    mov         eax,dword ptr [ebp-4]
 004B5891    cmp         byte ptr [ebp-5],0
>004B5895    je          004B58A6
 004B5897    call        @AfterConstruction
 004B589C    pop         dword ptr fs:[0]
 004B58A3    add         esp,0C
 004B58A6    mov         eax,dword ptr [ebp-4]
 004B58A9    mov         esp,ebp
 004B58AB    pop         ebp
 004B58AC    ret
*}
end;

//004B58B4
{*procedure TCustomMenuExpandBtn.sub_004842E0(?:?; ?:?; ?:?; ?:?; ?:?);
begin
 004B58B4    push        ebp
 004B58B5    mov         ebp,esp
 004B58B7    add         esp,0FFFFFFF4
 004B58BA    mov         dword ptr [ebp-0C],ecx
 004B58BD    mov         dword ptr [ebp-8],edx
 004B58C0    mov         dword ptr [ebp-4],eax
 004B58C3    mov         eax,dword ptr [ebp+8]
 004B58C6    mov         byte ptr [eax],0
 004B58C9    mov         esp,ebp
 004B58CB    pop         ebp
 004B58CC    ret         0C
end;*}

//004B58D0
{*procedure sub_004B58D0(?:?);
begin
 004B58D0    push        ebp
 004B58D1    mov         ebp,esp
 004B58D3    add         esp,0FFFFFFF8
 004B58D6    mov         dword ptr [ebp-8],edx
 004B58D9    mov         dword ptr [ebp-4],eax
 004B58DC    push        1
 004B58DE    push        0
 004B58E0    mov         eax,dword ptr [ebp-8]
 004B58E3    push        eax
 004B58E4    call        user32.OffsetRect
 004B58E9    push        0FC
 004B58EB    push        0FE
 004B58ED    mov         eax,dword ptr [ebp-8]
 004B58F0    push        eax
 004B58F1    call        user32.InflateRect
 004B58F6    mov         eax,dword ptr [ebp-4]
 004B58F9    cmp         byte ptr [eax+1AB],0;TCustomMenuExpandBtn.FMouseInControl:Boolean
>004B5900    je          004B5929
 004B5902    mov         eax,dword ptr [ebp-4]
 004B5905    call        004B59A4
 004B590A    call        004C4A40
 004B590F    call        TXPColorMap.GetUnusedColor
 004B5914    mov         edx,eax
 004B5916    mov         eax,dword ptr [ebp-4]
 004B5919    mov         eax,dword ptr [eax+160];TCustomMenuExpandBtn...............................................
 004B591F    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 004B5922    call        TBrush.SetColor
>004B5927    jmp         004B594A
 004B5929    mov         eax,dword ptr [ebp-4]
 004B592C    call        004B59A4
 004B5931    call        004C4A40
 004B5936    mov         edx,dword ptr [eax+40]
 004B5939    mov         eax,dword ptr [ebp-4]
 004B593C    mov         eax,dword ptr [eax+160];TCustomMenuExpandBtn...............................................
 004B5942    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 004B5945    call        TBrush.SetColor
 004B594A    mov         edx,dword ptr [ebp-8]
 004B594D    mov         eax,dword ptr [ebp-4]
 004B5950    call        004AFC50
 004B5955    pop         ecx
 004B5956    pop         ecx
 004B5957    pop         ebp
 004B5958    ret
end;*}

//004B595C
{*procedure sub_004B595C(?:?; ?:?);
begin
 004B595C    push        ebp
 004B595D    mov         ebp,esp
 004B595F    add         esp,0FFFFFFE8
 004B5962    push        esi
 004B5963    push        edi
 004B5964    mov         esi,edx
 004B5966    lea         edi,[ebp-15]
 004B5969    movs        dword ptr [edi],dword ptr [esi]
 004B596A    movs        dword ptr [edi],dword ptr [esi]
 004B596B    movs        dword ptr [edi],dword ptr [esi]
 004B596C    movs        dword ptr [edi],dword ptr [esi]
 004B596D    mov         byte ptr [ebp-5],cl
 004B5970    mov         dword ptr [ebp-4],eax
 004B5973    push        1
 004B5975    push        0
 004B5977    lea         eax,[ebp-15]
 004B597A    push        eax
 004B597B    call        user32.OffsetRect
 004B5980    push        0FC
 004B5982    push        0FE
 004B5984    lea         eax,[ebp-15]
 004B5987    push        eax
 004B5988    call        user32.InflateRect
 004B598D    mov         cl,byte ptr [ebp-5]
 004B5990    lea         edx,[ebp-15]
 004B5993    mov         eax,dword ptr [ebp-4]
 004B5996    call        004AFCCC
 004B599B    pop         edi
 004B599C    pop         esi
 004B599D    mov         esp,ebp
 004B599F    pop         ebp
 004B59A0    ret
end;*}

//004B59A4
{*function sub_004B59A4(?:TCustomMenuExpandBtn):?;
begin
 004B59A4    push        ebp
 004B59A5    mov         ebp,esp
 004B59A7    add         esp,0FFFFFFF8
 004B59AA    mov         dword ptr [ebp-4],eax
 004B59AD    mov         eax,dword ptr [ebp-4]
 004B59B0    call        004C6C1C
 004B59B5    mov         edx,dword ptr ds:[4B1650];TCustomActionMenuBar
 004B59BB    call        @AsClass
 004B59C0    mov         dword ptr [ebp-8],eax
 004B59C3    mov         eax,dword ptr [ebp-8]
 004B59C6    pop         ecx
 004B59C7    pop         ecx
 004B59C8    pop         ebp
 004B59C9    ret
end;*}

//004B59CC
constructor sub_004B59CC;
begin
{*
 004B59CC    push        ebp
 004B59CD    mov         ebp,esp
 004B59CF    add         esp,0FFFFFFF0
 004B59D2    test        dl,dl
>004B59D4    je          004B59DE
 004B59D6    add         esp,0FFFFFFF0
 004B59D9    call        @ClassCreate
 004B59DE    mov         dword ptr [ebp-0C],ecx
 004B59E1    mov         byte ptr [ebp-5],dl
 004B59E4    mov         dword ptr [ebp-4],eax
 004B59E7    mov         ecx,dword ptr [ebp-0C]
 004B59EA    xor         edx,edx
 004B59EC    mov         eax,dword ptr [ebp-4]
 004B59EF    call        004B2C68
 004B59F4    mov         eax,dword ptr [ebp-4]
 004B59F7    mov         eax,dword ptr [eax+50];TCustomActionPopupMenu.FControlStyle:TControlStyle
 004B59FA    or          eax,dword ptr ds:[4B5AD8];0x400 gvar_004B5AD8
 004B5A00    mov         edx,dword ptr [ebp-4]
 004B5A03    mov         dword ptr [edx+50],eax;TCustomActionPopupMenu.FControlStyle:TControlStyle
 004B5A06    xor         edx,edx
 004B5A08    mov         eax,dword ptr [ebp-4]
 004B5A0B    call        TImage.SetVisible
 004B5A10    xor         edx,edx
 004B5A12    mov         eax,dword ptr [ebp-4]
 004B5A15    call        TImage.SetAlign
 004B5A1A    mov         dl,2
 004B5A1C    mov         eax,dword ptr [ebp-4]
 004B5A1F    mov         ecx,dword ptr [eax]
 004B5A21    call        dword ptr [ecx+134];TCustomActionPopupMenu.sub_004B6638
 004B5A27    xor         edx,edx
 004B5A29    mov         eax,dword ptr [ebp-4]
 004B5A2C    call        TStatusBar.SetBorderWidth
 004B5A31    mov         dl,byte ptr ds:[4B5ADC];0xF gvar_004B5ADC
 004B5A37    mov         eax,dword ptr [ebp-4]
 004B5A3A    call        TToolBar.SetEdgeBorders
 004B5A3F    mov         dl,1
 004B5A41    mov         eax,dword ptr [ebp-4]
 004B5A44    call        TToolBar.SetEdgeInner
 004B5A49    mov         dl,1
 004B5A4B    mov         eax,dword ptr [ebp-4]
 004B5A4E    call        TToolBar.SetEdgeOuter
 004B5A53    xor         edx,edx
 004B5A55    mov         eax,dword ptr [ebp-4]
 004B5A58    call        004C3C04
 004B5A5D    xor         edx,edx
 004B5A5F    mov         eax,dword ptr [ebp-4]
 004B5A62    call        004C3BC4
 004B5A67    mov         dl,1
 004B5A69    mov         eax,dword ptr [ebp-4]
 004B5A6C    mov         ecx,dword ptr [eax]
 004B5A6E    call        dword ptr [ecx+5C];TImage.SetAutoSize
 004B5A71    mov         eax,dword ptr [ebp-0C]
 004B5A74    mov         edx,dword ptr ds:[4BB79C];TCustomActionBar
 004B5A7A    call        @IsClass
 004B5A7F    test        al,al
>004B5A81    je          004B5A94
 004B5A83    mov         eax,dword ptr [ebp-0C]
 004B5A86    mov         edx,dword ptr [eax+214]
 004B5A8C    mov         eax,dword ptr [ebp-4]
 004B5A8F    call        004C3608
 004B5A94    push        0
 004B5A96    lea         eax,[ebp-10]
 004B5A99    push        eax
 004B5A9A    push        0
 004B5A9C    push        1024
 004B5AA1    call        user32.SystemParametersInfoA
 004B5AA6    test        eax,eax
>004B5AA8    je          004B5AB9
 004B5AAA    cmp         dword ptr [ebp-10],1
 004B5AAE    sbb         edx,edx
 004B5AB0    inc         edx
 004B5AB1    mov         eax,dword ptr [ebp-4]
 004B5AB4    call        004B6E0C
 004B5AB9    mov         eax,dword ptr [ebp-4]
 004B5ABC    cmp         byte ptr [ebp-5],0
>004B5AC0    je          004B5AD1
 004B5AC2    call        @AfterConstruction
 004B5AC7    pop         dword ptr fs:[0]
 004B5ACE    add         esp,0C
 004B5AD1    mov         eax,dword ptr [ebp-4]
 004B5AD4    mov         esp,ebp
 004B5AD6    pop         ebp
 004B5AD7    ret
*}
end;

//004B5AE0
destructor TCustomActionPopupMenu.Destroy;
begin
{*
 004B5AE0    push        ebp
 004B5AE1    mov         ebp,esp
 004B5AE3    add         esp,0FFFFFFF8
 004B5AE6    call        @BeforeDestruction
 004B5AEB    mov         byte ptr [ebp-5],dl
 004B5AEE    mov         dword ptr [ebp-4],eax
 004B5AF1    mov         eax,dword ptr [ebp-4]
 004B5AF4    cmp         dword ptr [eax+210],0
>004B5AFB    je          004B5B0B
 004B5AFD    mov         eax,dword ptr [ebp-4]
 004B5B00    mov         eax,dword ptr [eax+210]
 004B5B06    xor         edx,edx
 004B5B08    mov         dword ptr [eax+18],edx
 004B5B0B    xor         edx,edx
 004B5B0D    mov         eax,dword ptr [ebp-4]
 004B5B10    call        TImage.SetVisible
 004B5B15    mov         eax,dword ptr [ebp-4]
 004B5B18    add         eax,30C
 004B5B1D    call        FreeAndNil
 004B5B22    mov         dl,byte ptr [ebp-5]
 004B5B25    and         dl,0FC
 004B5B28    mov         eax,dword ptr [ebp-4]
 004B5B2B    call        TCustomActionMenuBar.Destroy
 004B5B30    cmp         byte ptr [ebp-5],0
>004B5B34    jle         004B5B3E
 004B5B36    mov         eax,dword ptr [ebp-4]
 004B5B39    call        @ClassDestroy
 004B5B3E    pop         ecx
 004B5B3F    pop         ecx
 004B5B40    pop         ebp
 004B5B41    ret
*}
end;

//004B5B44
{*procedure sub_004B5B44(?:?);
begin
 004B5B44    push        ebp
 004B5B45    mov         ebp,esp
 004B5B47    add         esp,0FFFFFFE4
 004B5B4A    mov         dword ptr [ebp-8],edx
 004B5B4D    mov         dword ptr [ebp-4],eax
 004B5B50    cmp         dword ptr [ebp-8],0
>004B5B54    je          004B5CE2
 004B5B5A    mov         eax,dword ptr [ebp-8]
 004B5B5D    cmp         dword ptr [eax+16C],0
>004B5B64    je          004B5CE2
 004B5B6A    mov         eax,dword ptr [ebp-8]
 004B5B6D    mov         edx,dword ptr [eax+16C]
 004B5B73    mov         eax,dword ptr [ebp-4]
 004B5B76    call        004C38CC
 004B5B7B    mov         dword ptr [ebp-0C],eax
 004B5B7E    mov         eax,dword ptr [ebp-8]
 004B5B81    mov         edx,dword ptr [eax+16C]
 004B5B87    mov         eax,dword ptr [ebp-4]
 004B5B8A    call        004C2C20
 004B5B8F    mov         dword ptr [ebp-10],eax
 004B5B92    mov         eax,dword ptr [ebp-8]
 004B5B95    mov         eax,dword ptr [eax+16C]
 004B5B9B    call        004C0C60
 004B5BA0    test        al,al
>004B5BA2    je          004B5C3E
 004B5BA8    mov         al,[004B5CE8];0x0 gvar_004B5CE8
 004B5BAD    mov         byte ptr [ebp-11],al
 004B5BB0    mov         eax,dword ptr [ebp-4]
 004B5BB3    cmp         byte ptr [eax+295],0;TCustomActionPopupMenu.FExpanded:Boolean
>004B5BBA    je          004B5BEF
 004B5BBC    cmp         dword ptr [ebp-0C],0
>004B5BC0    je          004B5BCE
 004B5BC2    mov         eax,dword ptr [ebp-0C]
 004B5BC5    call        004C0C60
 004B5BCA    test        al,al
>004B5BCC    jne         004B5BEF
 004B5BCE    mov         eax,dword ptr [ebp-4]
 004B5BD1    mov         edx,dword ptr [eax]
 004B5BD3    call        dword ptr [edx+140];TCustomActionPopupMenu.sub_004C273C
 004B5BD9    mov         edx,dword ptr [ebp-8]
 004B5BDC    cmp         eax,dword ptr [edx+16C]
>004B5BE2    je          004B5BEF
 004B5BE4    mov         al,[004B5CEC];0x2 gvar_004B5CEC
 004B5BE9    or          al,byte ptr [ebp-11]
 004B5BEC    mov         byte ptr [ebp-11],al
 004B5BEF    mov         eax,dword ptr [ebp-4]
 004B5BF2    cmp         byte ptr [eax+295],0;TCustomActionPopupMenu.FExpanded:Boolean
>004B5BF9    je          004B5C2E
 004B5BFB    cmp         dword ptr [ebp-10],0
>004B5BFF    je          004B5C0D
 004B5C01    mov         eax,dword ptr [ebp-10]
 004B5C04    call        004C0C60
 004B5C09    test        al,al
>004B5C0B    jne         004B5C2E
 004B5C0D    mov         eax,dword ptr [ebp-4]
 004B5C10    mov         edx,dword ptr [eax]
 004B5C12    call        dword ptr [edx+0EC];TCustomActionPopupMenu.sub_004C2830
 004B5C18    mov         edx,dword ptr [ebp-8]
 004B5C1B    cmp         eax,dword ptr [edx+16C]
>004B5C21    je          004B5C2E
 004B5C23    mov         al,[004B5CF0];0x8 gvar_004B5CF0
 004B5C28    or          al,byte ptr [ebp-11]
 004B5C2B    mov         byte ptr [ebp-11],al
 004B5C2E    mov         dl,byte ptr [ebp-11]
 004B5C31    mov         eax,dword ptr [ebp-8]
 004B5C34    call        004B8CD4
>004B5C39    jmp         004B5CE2
 004B5C3E    cmp         dword ptr [ebp-0C],0
>004B5C42    je          004B5C90
 004B5C44    mov         eax,dword ptr [ebp-0C]
 004B5C47    call        004C0C60
 004B5C4C    test        al,al
>004B5C4E    je          004B5C90
 004B5C50    mov         eax,dword ptr [ebp-0C]
 004B5C53    mov         eax,dword ptr [eax+40]
 004B5C56    mov         edx,dword ptr ds:[4B2248];TCustomMenuItem
 004B5C5C    call        @IsClass
 004B5C61    test        al,al
>004B5C63    je          004B5C90
 004B5C65    mov         eax,dword ptr [ebp-0C]
 004B5C68    mov         eax,dword ptr [eax+40]
 004B5C6B    mov         edx,dword ptr ds:[4B2248];TCustomMenuItem
 004B5C71    call        @AsClass
 004B5C76    mov         dword ptr [ebp-18],eax
 004B5C79    mov         eax,dword ptr [ebp-18]
 004B5C7C    mov         dl,byte ptr [eax+1A8];TCustomMenuItem.FEdges:TMenuEdges
 004B5C82    or          dl,byte ptr ds:[4B5CF0];0x8 gvar_004B5CF0
 004B5C88    mov         eax,dword ptr [ebp-18]
 004B5C8B    call        004B8CD4
 004B5C90    cmp         dword ptr [ebp-10],0
>004B5C94    je          004B5CE2
 004B5C96    mov         eax,dword ptr [ebp-10]
 004B5C99    call        004C0C60
 004B5C9E    test        al,al
>004B5CA0    je          004B5CE2
 004B5CA2    mov         eax,dword ptr [ebp-10]
 004B5CA5    mov         eax,dword ptr [eax+40]
 004B5CA8    mov         edx,dword ptr ds:[4B2248];TCustomMenuItem
 004B5CAE    call        @IsClass
 004B5CB3    test        al,al
>004B5CB5    je          004B5CE2
 004B5CB7    mov         eax,dword ptr [ebp-10]
 004B5CBA    mov         eax,dword ptr [eax+40]
 004B5CBD    mov         edx,dword ptr ds:[4B2248];TCustomMenuItem
 004B5CC3    call        @AsClass
 004B5CC8    mov         dword ptr [ebp-1C],eax
 004B5CCB    mov         eax,dword ptr [ebp-1C]
 004B5CCE    mov         dl,byte ptr [eax+1A8];TCustomMenuItem.FEdges:TMenuEdges
 004B5CD4    or          dl,byte ptr ds:[4B5CEC];0x2 gvar_004B5CEC
 004B5CDA    mov         eax,dword ptr [ebp-1C]
 004B5CDD    call        004B8CD4
 004B5CE2    mov         esp,ebp
 004B5CE4    pop         ebp
 004B5CE5    ret
end;*}

//004B5CF4
{*procedure TCustomActionPopupMenu.CMMouseLeave(?:?);
begin
 004B5CF4    push        ebp
 004B5CF5    mov         ebp,esp
 004B5CF7    add         esp,0FFFFFFF8
 004B5CFA    mov         dword ptr [ebp-8],edx
 004B5CFD    mov         dword ptr [ebp-4],eax
 004B5D00    mov         edx,dword ptr [ebp-8]
 004B5D03    mov         eax,dword ptr [ebp-4]
 004B5D06    call        TCustomActionBar.CMMouseLeave
 004B5D0B    mov         eax,dword ptr [ebp-4]
 004B5D0E    mov         edx,dword ptr [eax]
 004B5D10    call        dword ptr [edx+104];TCustomActionPopupMenu.sub_004B3EB0
 004B5D16    test        al,al
>004B5D18    jne         004B5D49
 004B5D1A    mov         eax,dword ptr [ebp-4]
 004B5D1D    call        004B4028
 004B5D22    test        eax,eax
>004B5D24    je          004B5D49
 004B5D26    mov         eax,dword ptr [ebp-4]
 004B5D29    call        004B4028
 004B5D2E    cmp         dword ptr [eax+18],0
>004B5D32    jne         004B5D49
 004B5D34    mov         eax,dword ptr [ebp-4]
 004B5D37    call        004B4028
 004B5D3C    mov         eax,dword ptr [eax+40]
 004B5D3F    xor         edx,edx
 004B5D41    mov         ecx,dword ptr [eax]
 004B5D43    call        dword ptr [ecx+0D8]
 004B5D49    pop         ecx
 004B5D4A    pop         ecx
 004B5D4B    pop         ebp
 004B5D4C    ret
end;*}

//004B5D50
{*procedure TCustomActionPopupMenu.CMVisibleChanged(?:?);
begin
 004B5D50    push        ebp
 004B5D51    mov         ebp,esp
 004B5D53    add         esp,0FFFFFFF8
 004B5D56    mov         dword ptr [ebp-8],edx
 004B5D59    mov         dword ptr [ebp-4],eax
 004B5D5C    mov         eax,dword ptr [ebp-4]
 004B5D5F    cmp         byte ptr [eax+57],0;TCustomActionPopupMenu.FVisible:Boolean
>004B5D63    je          004B5D72
 004B5D65    mov         eax,dword ptr [ebp-4]
 004B5D68    mov         edx,dword ptr [eax]
 004B5D6A    call        dword ptr [edx+188];TCustomActionPopupMenu.sub_004B6CA8
>004B5D70    jmp         004B5D7D
 004B5D72    mov         eax,dword ptr [ebp-4]
 004B5D75    mov         edx,dword ptr [eax]
 004B5D77    call        dword ptr [edx+190];TCustomActionPopupMenu.sub_004B6D3C
 004B5D7D    mov         edx,dword ptr [ebp-8]
 004B5D80    mov         eax,dword ptr [ebp-4]
 004B5D83    call        TWinControl.CMVisibleChanged
 004B5D88    pop         ecx
 004B5D89    pop         ecx
 004B5D8A    pop         ebp
 004B5D8B    ret
end;*}

//004B5D8C
{*function sub_004B5D8C(?:?):?;
begin
 004B5D8C    push        ebp
 004B5D8D    mov         ebp,esp
 004B5D8F    add         esp,0FFFFFFF4
 004B5D92    mov         dword ptr [ebp-8],edx
 004B5D95    mov         dword ptr [ebp-4],eax
 004B5D98    mov         edx,dword ptr [ebp-8]
 004B5D9B    mov         eax,dword ptr [ebp-4]
 004B5D9E    call        004B3338
 004B5DA3    mov         dword ptr [ebp-0C],eax
 004B5DA6    mov         eax,dword ptr [ebp-0C]
 004B5DA9    mov         edx,dword ptr ds:[4B2248];TCustomMenuItem
 004B5DAF    call        @IsClass
 004B5DB4    test        al,al
>004B5DB6    je          004B5DD3
 004B5DB8    mov         eax,dword ptr [ebp-0C]
 004B5DBB    mov         edx,dword ptr ds:[4B2248];TCustomMenuItem
 004B5DC1    call        @AsClass
 004B5DC6    mov         edx,eax
 004B5DC8    mov         eax,dword ptr [ebp-4]
 004B5DCB    mov         ecx,dword ptr [eax]
 004B5DCD    call        dword ptr [ecx+184];TCustomActionPopupMenu.sub_004B5B44
 004B5DD3    mov         eax,dword ptr [ebp-4]
 004B5DD6    cmp         byte ptr [eax+295],0;TCustomActionPopupMenu.FExpanded:Boolean
>004B5DDD    jne         004B5E05
 004B5DDF    mov         eax,dword ptr [ebp-0C]
 004B5DE2    mov         eax,dword ptr [eax+16C]
 004B5DE8    call        004C0C60
 004B5DED    test        al,al
>004B5DEF    je          004B5E05
 004B5DF1    mov         eax,dword ptr [ebp-4]
 004B5DF4    mov         byte ptr [eax+294],1;TCustomActionPopupMenu.FExpandable:Boolean
 004B5DFB    xor         edx,edx
 004B5DFD    mov         eax,dword ptr [ebp-0C]
 004B5E00    call        TImage.SetVisible
 004B5E05    mov         eax,dword ptr [ebp-0C]
 004B5E08    mov         esp,ebp
 004B5E0A    pop         ebp
 004B5E0B    ret
end;*}

//004B5E0C
procedure sub_004B5E0C;
begin
{*
 004B5E0C    push        ebp
 004B5E0D    mov         ebp,esp
 004B5E0F    push        ecx
 004B5E10    mov         dword ptr [ebp-4],eax
 004B5E13    mov         eax,dword ptr [ebp-4]
 004B5E16    call        004C1994
 004B5E1B    mov         eax,dword ptr [ebp-4]
 004B5E1E    cmp         byte ptr [eax+295],0;TCustomActionPopupMenu.FExpanded:Boolean
>004B5E25    jne         004B5E47
 004B5E27    mov         eax,dword ptr [ebp-4]
 004B5E2A    cmp         byte ptr [eax+294],0;TCustomActionPopupMenu.FExpandable:Boolean
>004B5E31    je          004B5E47
 004B5E33    mov         eax,dword ptr [ebp-4]
 004B5E36    call        004C28DC
 004B5E3B    test        eax,eax
>004B5E3D    je          004B5E47
 004B5E3F    mov         eax,dword ptr [ebp-4]
 004B5E42    call        004B6558
 004B5E47    pop         ecx
 004B5E48    pop         ebp
 004B5E49    ret
*}
end;

//004B5E4C
{*procedure sub_004B5E4C(?:?);
begin
 004B5E4C    push        ebp
 004B5E4D    mov         ebp,esp
 004B5E4F    add         esp,0FFFFFFF8
 004B5E52    mov         dword ptr [ebp-8],edx
 004B5E55    mov         dword ptr [ebp-4],eax
 004B5E58    mov         edx,dword ptr [ebp-8]
 004B5E5B    mov         eax,dword ptr [ebp-4]
 004B5E5E    call        00488034
 004B5E63    mov         eax,dword ptr [ebp-4]
 004B5E66    mov         eax,dword ptr [eax+30];TCustomActionPopupMenu.FParent:TWinControl
 004B5E69    mov         edx,dword ptr ds:[49EC6C];TCustomForm
 004B5E6F    call        @IsClass
 004B5E74    test        al,al
>004B5E76    jne         004B5E9B
 004B5E78    mov         eax,dword ptr [ebp-8]
 004B5E7B    mov         eax,dword ptr [eax+4]
 004B5E7E    and         eax,0BFFFFFFF
 004B5E83    or          eax,80000000
 004B5E88    or          eax,4000000
 004B5E8D    or          eax,2000000
 004B5E92    or          eax,0
 004B5E95    mov         edx,dword ptr [ebp-8]
 004B5E98    mov         dword ptr [edx+4],eax
 004B5E9B    mov         eax,dword ptr [ebp-8]
 004B5E9E    mov         dword ptr [eax+24],809
 004B5EA5    mov         eax,dword ptr [ebp-4]
 004B5EA8    mov         edx,dword ptr [eax]
 004B5EAA    call        dword ptr [edx+104];TCustomActionPopupMenu.sub_004B3EB0
 004B5EB0    test        al,al
>004B5EB2    jne         004B5EBB
 004B5EB4    mov         eax,dword ptr [ebp-8]
 004B5EB7    or          dword ptr [eax+8],8
 004B5EBB    pop         ecx
 004B5EBC    pop         ecx
 004B5EBD    pop         ebp
 004B5EBE    ret
end;*}

//004B5EC0
{*procedure TCustomActionPopupMenu.sub_00484E9C(?:?);
begin
 004B5EC0    push        ebp
 004B5EC1    mov         ebp,esp
 004B5EC3    add         esp,0FFFFFFF4
 004B5EC6    mov         dword ptr [ebp-0C],edx
 004B5EC9    mov         dword ptr [ebp-4],eax
 004B5ECC    mov         byte ptr [ebp-5],1
 004B5ED0    mov         al,byte ptr [ebp-5]
 004B5ED3    mov         esp,ebp
 004B5ED5    pop         ebp
 004B5ED6    ret
end;*}

//004B5ED8
{*procedure sub_004B5ED8(?:?);
begin
 004B5ED8    push        ebp
 004B5ED9    mov         ebp,esp
 004B5EDB    add         esp,0FFFFFFF8
 004B5EDE    mov         dword ptr [ebp-8],edx
 004B5EE1    mov         dword ptr [ebp-4],eax
 004B5EE4    mov         eax,dword ptr [ebp-4]
 004B5EE7    call        00483F88
 004B5EEC    mov         edx,dword ptr [ebp-8]
 004B5EEF    mov         eax,dword ptr [ebp-4]
 004B5EF2    call        004B372C
 004B5EF7    pop         ecx
 004B5EF8    pop         ecx
 004B5EF9    pop         ebp
 004B5EFA    ret
end;*}

//004B5EFC
{*procedure sub_004B5EFC(?:?);
begin
 004B5EFC    push        ebp
 004B5EFD    mov         ebp,esp
 004B5EFF    add         esp,0FFFFFFF0
 004B5F02    push        ebx
 004B5F03    mov         byte ptr [ebp-5],dl
 004B5F06    mov         dword ptr [ebp-4],eax
 004B5F09    mov         eax,dword ptr [ebp-4]
 004B5F0C    mov         byte ptr [eax+295],1;TCustomActionPopupMenu.FExpanded:Boolean
 004B5F13    mov         eax,dword ptr [ebp-4]
 004B5F16    call        TWinControl.DisableAlign
 004B5F1B    xor         eax,eax
 004B5F1D    push        ebp
 004B5F1E    push        4B6059
 004B5F23    push        dword ptr fs:[eax]
 004B5F26    mov         dword ptr fs:[eax],esp
 004B5F29    mov         eax,dword ptr [ebp-4]
 004B5F2C    cmp         dword ptr [eax+30C],0;TCustomActionPopupMenu.FExpandBtn:TCustomMenuExpandBtn
>004B5F33    je          004B5F45
 004B5F35    mov         eax,dword ptr [ebp-4]
 004B5F38    mov         eax,dword ptr [eax+30C];TCustomActionPopupMenu.FExpandBtn:TCustomMenuExpandBtn
 004B5F3E    xor         edx,edx
 004B5F40    call        TImage.SetVisible
 004B5F45    mov         eax,dword ptr [ebp-4]
 004B5F48    mov         edx,dword ptr [eax]
 004B5F4A    call        dword ptr [edx+190];TCustomActionPopupMenu.sub_004B6D3C
 004B5F50    mov         dl,byte ptr [ebp-5]
 004B5F53    mov         eax,dword ptr [ebp-4]
 004B5F56    call        004B3D3C
 004B5F5B    mov         eax,dword ptr [ebp-4]
 004B5F5E    call        004C2EE8
 004B5F63    call        0042158C
 004B5F68    dec         eax
 004B5F69    test        eax,eax
>004B5F6B    jl          004B5FF5
 004B5F71    inc         eax
 004B5F72    mov         dword ptr [ebp-10],eax
 004B5F75    mov         dword ptr [ebp-0C],0
 004B5F7C    mov         eax,dword ptr [ebp-4]
 004B5F7F    call        004C2EE8
 004B5F84    mov         edx,dword ptr [ebp-0C]
 004B5F87    call        004BF258
 004B5F8C    cmp         byte ptr [eax+30],0
>004B5F90    je          004B5FED
 004B5F92    mov         eax,dword ptr [ebp-4]
 004B5F95    call        004C2EE8
 004B5F9A    mov         edx,dword ptr [ebp-0C]
 004B5F9D    call        004BF258
 004B5FA2    mov         eax,dword ptr [eax+40]
 004B5FA5    mov         edx,dword ptr ds:[4B2248];TCustomMenuItem
 004B5FAB    call        @IsClass
 004B5FB0    test        al,al
>004B5FB2    je          004B5FED
 004B5FB4    mov         eax,dword ptr [ebp-4]
 004B5FB7    call        004C2EE8
 004B5FBC    mov         edx,dword ptr [ebp-0C]
 004B5FBF    call        004BF258
 004B5FC4    mov         edx,dword ptr [eax+40]
 004B5FC7    mov         eax,dword ptr [ebp-4]
 004B5FCA    mov         ecx,dword ptr [eax]
 004B5FCC    call        dword ptr [ecx+184];TCustomActionPopupMenu.sub_004B5B44
 004B5FD2    mov         eax,dword ptr [ebp-4]
 004B5FD5    call        004C2EE8
 004B5FDA    mov         edx,dword ptr [ebp-0C]
 004B5FDD    call        004BF258
 004B5FE2    mov         eax,dword ptr [eax+40]
 004B5FE5    mov         edx,dword ptr [eax]
 004B5FE7    call        dword ptr [edx+0DC]
 004B5FED    inc         dword ptr [ebp-0C]
 004B5FF0    dec         dword ptr [ebp-10]
>004B5FF3    jne         004B5F7C
 004B5FF5    xor         eax,eax
 004B5FF7    pop         edx
 004B5FF8    pop         ecx
 004B5FF9    pop         ecx
 004B5FFA    mov         dword ptr fs:[eax],edx
 004B5FFD    push        4B6060
 004B6002    mov         eax,dword ptr [ebp-4]
 004B6005    call        TWinControl.EnableAlign
 004B600A    mov         eax,dword ptr [ebp-4]
 004B600D    cmp         dword ptr [eax+2AC],0;TCustomActionPopupMenu.FParentControl:TCustomActionControl
>004B6014    je          004B6036
 004B6016    mov         eax,dword ptr [ebp-4]
 004B6019    mov         ecx,dword ptr [eax+2AC];TCustomActionPopupMenu.FParentControl:TCustomActionControl
 004B601F    mov         eax,dword ptr [ebp-4]
 004B6022    mov         eax,dword ptr [eax+2AC];TCustomActionPopupMenu.FParentControl:TCustomActionControl
 004B6028    mov         edx,dword ptr [eax+4];TCustomActionControl.FOwner:TComponent
 004B602B    mov         eax,dword ptr [ebp-4]
 004B602E    mov         ebx,dword ptr [eax]
 004B6030    call        dword ptr [ebx+194];TCustomActionPopupMenu.sub_004B6178
 004B6036    push        0
 004B6038    push        1
 004B603A    push        85
 004B603F    mov         eax,dword ptr [ebp-4]
 004B6042    call        TWinControl.GetHandle
 004B6047    push        eax
 004B6048    call        user32.SendMessageA
 004B604D    mov         eax,dword ptr [ebp-4]
 004B6050    mov         edx,dword ptr [eax]
 004B6052    call        dword ptr [edx+188];TCustomActionPopupMenu.sub_004B6CA8
 004B6058    ret
>004B6059    jmp         @HandleFinally
>004B605E    jmp         004B6002
 004B6060    pop         ebx
 004B6061    mov         esp,ebp
 004B6063    pop         ebp
 004B6064    ret
end;*}

//004B6068
{*procedure sub_004B6068(?:?; ?:?);
begin
 004B6068    push        ebp
 004B6069    mov         ebp,esp
 004B606B    add         esp,0FFFFFFF8
 004B606E    mov         dword ptr [ebp-8],edx
 004B6071    mov         dword ptr [ebp-4],eax
>004B6074    jmp         004B608A
 004B6076    mov         eax,dword ptr [ebp-4]
 004B6079    mov         eax,dword ptr [eax+2C4]
 004B607F    mov         eax,dword ptr [eax+2B0]
 004B6085    call        004B27B8
 004B608A    mov         eax,dword ptr [ebp-4]
 004B608D    mov         eax,dword ptr [eax+2C4]
 004B6093    mov         eax,dword ptr [eax+2B0]
 004B6099    call        004B279C
 004B609E    cmp         eax,dword ptr [ebp-4]
>004B60A1    jne         004B6076
 004B60A3    mov         dl,1
 004B60A5    mov         eax,dword ptr [ebp-4]
 004B60A8    mov         ecx,dword ptr [eax]
 004B60AA    call        dword ptr [ecx+164]
 004B60B0    pop         ecx
 004B60B1    pop         ecx
 004B60B2    pop         ebp
 004B60B3    ret
end;*}

//004B60B4
procedure TCustomActionPopupMenu.Popup(X:Integer; Y:Integer);
begin
{*
 004B60B4    push        ebp
 004B60B5    mov         ebp,esp
 004B60B7    add         esp,0FFFFFFF4
 004B60BA    push        ebx
 004B60BB    mov         dword ptr [ebp-0C],ecx
 004B60BE    mov         dword ptr [ebp-8],edx
 004B60C1    mov         dword ptr [ebp-4],eax
 004B60C4    mov         eax,dword ptr [ebp-4]
 004B60C7    mov         edx,dword ptr [eax]
 004B60C9    call        dword ptr [edx+114]
 004B60CF    test        eax,eax
>004B60D1    je          004B614B
 004B60D3    mov         eax,[0056E3C0];^Application:TApplication
 004B60D8    mov         eax,dword ptr [eax]
 004B60DA    mov         edx,dword ptr [eax+30]
 004B60DD    mov         eax,dword ptr [ebp-4]
 004B60E0    call        00488B38
 004B60E5    mov         eax,dword ptr [ebp-4]
 004B60E8    mov         edx,dword ptr [ebp-4]
 004B60EB    mov         dword ptr [edx+2C4],eax
 004B60F1    mov         eax,dword ptr [ebp-4]
 004B60F4    call        004C28DC
 004B60F9    test        eax,eax
>004B60FB    jne         004B610A
 004B60FD    xor         edx,edx
 004B60FF    mov         eax,dword ptr [ebp-4]
 004B6102    mov         ecx,dword ptr [eax]
 004B6104    call        dword ptr [ecx+164]
 004B610A    mov         eax,dword ptr [ebp-4]
 004B610D    mov         eax,dword ptr [eax+48]
 004B6110    push        eax
 004B6111    mov         eax,dword ptr [ebp-4]
 004B6114    mov         eax,dword ptr [eax+4C]
 004B6117    push        eax
 004B6118    mov         ecx,dword ptr [ebp-0C]
 004B611B    mov         edx,dword ptr [ebp-8]
 004B611E    mov         eax,dword ptr [ebp-4]
 004B6121    mov         ebx,dword ptr [eax]
 004B6123    call        dword ptr [ebx+84]
 004B6129    mov         dl,1
 004B612B    mov         eax,dword ptr [ebp-4]
 004B612E    mov         ecx,dword ptr [eax]
 004B6130    call        dword ptr [ecx+138]
 004B6136    mov         dl,1
 004B6138    mov         eax,dword ptr [ebp-4]
 004B613B    call        TImage.SetVisible
 004B6140    mov         eax,dword ptr [ebp-4]
 004B6143    mov         edx,dword ptr [eax]
 004B6145    call        dword ptr [edx+180]
 004B614B    pop         ebx
 004B614C    mov         esp,ebp
 004B614E    pop         ebp
 004B614F    ret
*}
end;

//004B6150
{*function sub_004B6150(?:TPoint; ?:?):?;
begin
 004B6150    push        ebp
 004B6151    mov         ebp,esp
 004B6153    add         esp,0FFFFFFF4
 004B6156    mov         dword ptr [ebp-8],edx
 004B6159    mov         dword ptr [ebp-4],eax
 004B615C    mov         eax,dword ptr [ebp-8]
 004B615F    mov         dword ptr [ebp-0C],eax
 004B6162    cmp         dword ptr [ebp-4],0
>004B6166    jle         004B616E
 004B6168    mov         eax,dword ptr [ebp-4]
 004B616B    add         dword ptr [ebp-0C],eax
 004B616E    mov         eax,dword ptr [ebp-0C]
 004B6171    mov         esp,ebp
 004B6173    pop         ebp
 004B6174    ret
end;*}

//004B6178
{*procedure sub_004B6178(?:?; ?:?);
begin
 004B6178    push        ebp
 004B6179    mov         ebp,esp
 004B617B    add         esp,0FFFFFFAC
 004B617E    push        ebx
 004B617F    mov         dword ptr [ebp-0C],ecx
 004B6182    mov         dword ptr [ebp-8],edx
 004B6185    mov         dword ptr [ebp-4],eax
 004B6188    cmp         dword ptr [ebp-8],0
>004B618C    je          004B6198
 004B618E    cmp         dword ptr [ebp-0C],0
>004B6192    jne         004B62BD
 004B6198    lea         ecx,[ebp-34]
 004B619B    mov         eax,dword ptr [ebp-4]
 004B619E    mov         edx,dword ptr [eax+44];TCustomActionPopupMenu.Top:Integer
 004B61A1    mov         eax,dword ptr [ebp-4]
 004B61A4    mov         eax,dword ptr [eax+40];TCustomActionPopupMenu.Left:Integer
 004B61A7    call        Point
 004B61AC    lea         edx,[ebp-34]
 004B61AF    mov         eax,[0056E604];^Screen:TScreen
 004B61B4    mov         eax,dword ptr [eax]
 004B61B6    xor         ecx,ecx
 004B61B8    call        004A9BA8
 004B61BD    mov         dword ptr [ebp-1C],eax
 004B61C0    mov         eax,dword ptr [ebp-4]
 004B61C3    mov         eax,dword ptr [eax+40];TCustomActionPopupMenu.Left:Integer
 004B61C6    mov         dword ptr [ebp-14],eax
 004B61C9    mov         eax,dword ptr [ebp-4]
 004B61CC    mov         eax,dword ptr [eax+44];TCustomActionPopupMenu.Top:Integer
 004B61CF    mov         dword ptr [ebp-10],eax
 004B61D2    mov         eax,dword ptr [ebp-1C]
 004B61D5    call        004A84C0
 004B61DA    mov         ebx,eax
 004B61DC    mov         eax,dword ptr [ebp-1C]
 004B61DF    call        004A852C
 004B61E4    add         ebx,eax
 004B61E6    mov         eax,dword ptr [ebp-4]
 004B61E9    mov         eax,dword ptr [eax+40];TCustomActionPopupMenu.Left:Integer
 004B61EC    mov         edx,dword ptr [ebp-4]
 004B61EF    add         eax,dword ptr [edx+48];TCustomActionPopupMenu.Width:Integer
 004B61F2    cmp         ebx,eax
>004B61F4    jge         004B6213
 004B61F6    mov         eax,dword ptr [ebp-1C]
 004B61F9    call        004A84C0
 004B61FE    mov         ebx,eax
 004B6200    mov         eax,dword ptr [ebp-1C]
 004B6203    call        004A852C
 004B6208    add         ebx,eax
 004B620A    mov         eax,dword ptr [ebp-4]
 004B620D    sub         ebx,dword ptr [eax+48]
 004B6210    mov         dword ptr [ebp-14],ebx
 004B6213    mov         eax,dword ptr [ebp-1C]
 004B6216    call        004A84C0
 004B621B    mov         edx,dword ptr [ebp-4]
 004B621E    cmp         eax,dword ptr [edx+40];TCustomActionPopupMenu.Left:Integer
>004B6221    jle         004B622E
 004B6223    mov         eax,dword ptr [ebp-1C]
 004B6226    call        004A84C0
 004B622B    mov         dword ptr [ebp-14],eax
 004B622E    lea         edx,[ebp-44]
 004B6231    mov         eax,dword ptr [ebp-1C]
 004B6234    call        004A858C
 004B6239    mov         ebx,dword ptr [ebp-40]
 004B623C    lea         edx,[ebp-54]
 004B623F    mov         eax,dword ptr [ebp-1C]
 004B6242    call        004A858C
 004B6247    add         ebx,dword ptr [ebp-48]
 004B624A    mov         eax,dword ptr [ebp-4]
 004B624D    mov         eax,dword ptr [eax+44];TCustomActionPopupMenu.Top:Integer
 004B6250    mov         edx,dword ptr [ebp-4]
 004B6253    add         eax,dword ptr [edx+4C];TCustomActionPopupMenu.Height:Integer
 004B6256    cmp         ebx,eax
>004B6258    jge         004B6269
 004B625A    mov         eax,dword ptr [ebp-4]
 004B625D    mov         eax,dword ptr [eax+44];TCustomActionPopupMenu.Top:Integer
 004B6260    mov         edx,dword ptr [ebp-4]
 004B6263    sub         eax,dword ptr [edx+4C]
 004B6266    mov         dword ptr [ebp-10],eax
 004B6269    lea         edx,[ebp-44]
 004B626C    mov         eax,dword ptr [ebp-1C]
 004B626F    call        004A858C
 004B6274    mov         eax,dword ptr [ebp-40]
 004B6277    mov         edx,dword ptr [ebp-4]
 004B627A    cmp         eax,dword ptr [edx+44];TCustomActionPopupMenu.Top:Integer
>004B627D    jle         004B6290
 004B627F    lea         edx,[ebp-44]
 004B6282    mov         eax,dword ptr [ebp-1C]
 004B6285    call        004A858C
 004B628A    mov         eax,dword ptr [ebp-40]
 004B628D    mov         dword ptr [ebp-10],eax
 004B6290    lea         edx,[ebp-44]
 004B6293    mov         eax,dword ptr [ebp-1C]
 004B6296    call        004A858C
 004B629B    mov         eax,dword ptr [ebp-40]
 004B629E    cmp         eax,dword ptr [ebp-10]
>004B62A1    jle         004B6533
 004B62A7    lea         edx,[ebp-44]
 004B62AA    mov         eax,dword ptr [ebp-1C]
 004B62AD    call        004A858C
 004B62B2    mov         eax,dword ptr [ebp-40]
 004B62B5    mov         dword ptr [ebp-10],eax
>004B62B8    jmp         004B6533
 004B62BD    mov         eax,dword ptr [ebp-8]
 004B62C0    mov         al,byte ptr [eax+227]
 004B62C6    sub         al,1
>004B62C8    jb          004B62CE
>004B62CA    je          004B62F9
>004B62CC    jmp         004B632F
 004B62CE    mov         eax,dword ptr [ebp-0C]
 004B62D1    mov         edx,dword ptr [eax+44]
 004B62D4    mov         eax,dword ptr [ebp-0C]
 004B62D7    add         edx,dword ptr [eax+4C]
 004B62DA    lea         ecx,[ebp-34]
 004B62DD    mov         eax,dword ptr [ebp-0C]
 004B62E0    mov         eax,dword ptr [eax+40]
 004B62E3    inc         eax
 004B62E4    call        Point
 004B62E9    lea         edx,[ebp-34]
 004B62EC    lea         ecx,[ebp-14]
 004B62EF    mov         eax,dword ptr [ebp-8]
 004B62F2    call        TControl.ClientToScreen
>004B62F7    jmp         004B6354
 004B62F9    mov         eax,dword ptr [ebp-0C]
 004B62FC    mov         edx,dword ptr [eax+44]
 004B62FF    mov         eax,dword ptr [ebp-0C]
 004B6302    add         edx,dword ptr [eax+4C]
 004B6305    mov         eax,dword ptr [ebp-0C]
 004B6308    mov         eax,dword ptr [eax+40]
 004B630B    mov         ecx,dword ptr [ebp-4]
 004B630E    sub         eax,dword ptr [ecx+48]
 004B6311    mov         ecx,dword ptr [ebp-0C]
 004B6314    add         eax,dword ptr [ecx+48]
 004B6317    lea         ecx,[ebp-34]
 004B631A    call        Point
 004B631F    lea         edx,[ebp-34]
 004B6322    lea         ecx,[ebp-14]
 004B6325    mov         eax,dword ptr [ebp-8]
 004B6328    call        TControl.ClientToScreen
>004B632D    jmp         004B6354
 004B632F    lea         edx,[ebp-44]
 004B6332    mov         eax,dword ptr [ebp-0C]
 004B6335    call        00482ECC
 004B633A    lea         edx,[ebp-44]
 004B633D    lea         ecx,[ebp-14]
 004B6340    mov         eax,dword ptr [ebp-0C]
 004B6343    mov         eax,dword ptr [eax+30]
 004B6346    call        TControl.ClientToScreen
 004B634B    mov         eax,dword ptr [ebp-0C]
 004B634E    mov         eax,dword ptr [eax+48]
 004B6351    add         dword ptr [ebp-14],eax
 004B6354    mov         dword ptr [ebp-18],0FFFFFFFF
 004B635B    push        0
 004B635D    lea         eax,[ebp-18]
 004B6360    push        eax
 004B6361    push        0
 004B6363    push        1B
 004B6365    call        user32.SystemParametersInfoA
 004B636A    lea         edx,[ebp-44]
 004B636D    mov         eax,dword ptr [ebp-0C]
 004B6370    call        00482ECC
 004B6375    lea         edx,[ebp-44]
 004B6378    lea         ecx,[ebp-34]
 004B637B    mov         eax,dword ptr [ebp-0C]
 004B637E    mov         eax,dword ptr [eax+30]
 004B6381    call        TControl.ClientToScreen
 004B6386    mov         eax,dword ptr [ebp-34]
 004B6389    mov         dword ptr [ebp-2C],eax
 004B638C    mov         eax,dword ptr [ebp-30]
 004B638F    mov         dword ptr [ebp-28],eax
 004B6392    lea         edx,[ebp-44]
 004B6395    mov         eax,dword ptr [ebp-0C]
 004B6398    call        00482ECC
 004B639D    lea         edx,[ebp-3C]
 004B63A0    lea         ecx,[ebp-34]
 004B63A3    mov         eax,dword ptr [ebp-0C]
 004B63A6    mov         eax,dword ptr [eax+30]
 004B63A9    call        TControl.ClientToScreen
 004B63AE    mov         eax,dword ptr [ebp-34]
 004B63B1    mov         dword ptr [ebp-24],eax
 004B63B4    mov         eax,dword ptr [ebp-30]
 004B63B7    mov         dword ptr [ebp-20],eax
 004B63BA    lea         edx,[ebp-2C]
 004B63BD    mov         eax,[0056E604];^Screen:TScreen
 004B63C2    mov         eax,dword ptr [eax]
 004B63C4    xor         ecx,ecx
 004B63C6    call        004A9BEC
 004B63CB    mov         dword ptr [ebp-1C],eax
 004B63CE    mov         eax,dword ptr [ebp-1C]
 004B63D1    call        004A84C0
 004B63D6    cmp         eax,dword ptr [ebp-14]
>004B63D9    jle         004B63E6
 004B63DB    mov         eax,dword ptr [ebp-1C]
 004B63DE    call        004A84C0
 004B63E3    mov         dword ptr [ebp-14],eax
 004B63E6    push        ebp
 004B63E7    lea         edx,[ebp-44]
 004B63EA    mov         eax,dword ptr [ebp-1C]
 004B63ED    call        004A858C
 004B63F2    mov         eax,dword ptr [ebp-3C]
 004B63F5    push        eax
 004B63F6    lea         edx,[ebp-54]
 004B63F9    mov         eax,dword ptr [ebp-1C]
 004B63FC    call        004A858C
 004B6401    mov         eax,dword ptr [ebp-54]
 004B6404    pop         edx
 004B6405    call        004B6150
 004B640A    pop         ecx
 004B640B    mov         edx,dword ptr [ebp-14]
 004B640E    mov         ecx,dword ptr [ebp-4]
 004B6411    add         edx,dword ptr [ecx+48]
 004B6414    cmp         eax,edx
>004B6416    jge         004B64A3
 004B641C    push        ebp
 004B641D    lea         edx,[ebp-44]
 004B6420    mov         eax,dword ptr [ebp-1C]
 004B6423    call        004A858C
 004B6428    mov         eax,dword ptr [ebp-3C]
 004B642B    push        eax
 004B642C    lea         edx,[ebp-54]
 004B642F    mov         eax,dword ptr [ebp-1C]
 004B6432    call        004A858C
 004B6437    mov         eax,dword ptr [ebp-54]
 004B643A    pop         edx
 004B643B    call        004B6150
 004B6440    pop         ecx
 004B6441    mov         edx,dword ptr [ebp-4]
 004B6444    sub         eax,dword ptr [edx+48]
 004B6447    mov         dword ptr [ebp-14],eax
 004B644A    mov         eax,dword ptr [ebp-0C]
 004B644D    mov         edx,dword ptr ds:[4B2248];TCustomMenuItem
 004B6453    call        @IsClass
 004B6458    test        al,al
>004B645A    je          004B64A3
 004B645C    lea         edx,[ebp-44]
 004B645F    mov         eax,dword ptr [ebp-1C]
 004B6462    call        004A858C
 004B6467    mov         ebx,dword ptr [ebp-44]
 004B646A    lea         edx,[ebp-54]
 004B646D    mov         eax,dword ptr [ebp-1C]
 004B6470    call        004A858C
 004B6475    add         ebx,dword ptr [ebp-4C]
 004B6478    mov         eax,dword ptr [ebp-8]
 004B647B    sub         ebx,dword ptr [eax+40]
 004B647E    mov         eax,dword ptr [ebp-8]
 004B6481    add         ebx,dword ptr [eax+48]
 004B6484    mov         eax,dword ptr [ebp-14]
 004B6487    mov         edx,dword ptr [ebp-4]
 004B648A    add         eax,dword ptr [edx+48];TCustomActionPopupMenu.Width:Integer
 004B648D    cmp         ebx,eax
>004B648F    jge         004B64A3
 004B6491    mov         eax,dword ptr [ebp-8]
 004B6494    mov         eax,dword ptr [eax+40]
 004B6497    mov         edx,dword ptr [ebp-4]
 004B649A    sub         eax,dword ptr [edx+48]
 004B649D    add         eax,2
 004B64A0    mov         dword ptr [ebp-14],eax
 004B64A3    lea         edx,[ebp-44]
 004B64A6    mov         eax,dword ptr [ebp-1C]
 004B64A9    call        004A858C
 004B64AE    mov         eax,dword ptr [ebp-38]
 004B64B1    mov         edx,dword ptr [ebp-4]
 004B64B4    cmp         eax,dword ptr [edx+4C];TCustomActionPopupMenu.Height:Integer
>004B64B7    jge         004B64C6
 004B64B9    mov         eax,dword ptr [ebp-1C]
 004B64BC    call        004A8508
 004B64C1    mov         dword ptr [ebp-10],eax
>004B64C4    jmp         004B6533
 004B64C6    push        ebp
 004B64C7    lea         edx,[ebp-44]
 004B64CA    mov         eax,dword ptr [ebp-1C]
 004B64CD    call        004A858C
 004B64D2    mov         eax,dword ptr [ebp-38]
 004B64D5    push        eax
 004B64D6    lea         edx,[ebp-54]
 004B64D9    mov         eax,dword ptr [ebp-1C]
 004B64DC    call        004A858C
 004B64E1    mov         eax,dword ptr [ebp-50]
 004B64E4    pop         edx
 004B64E5    call        004B6150
 004B64EA    pop         ecx
 004B64EB    mov         edx,dword ptr [ebp-10]
 004B64EE    mov         ecx,dword ptr [ebp-4]
 004B64F1    add         edx,dword ptr [ecx+4C]
 004B64F4    cmp         eax,edx
>004B64F6    jge         004B6533
 004B64F8    mov         eax,dword ptr [ebp-0C]
 004B64FB    mov         edx,dword ptr ds:[4B23F8];TCustomMenuButton
 004B6501    call        @IsClass
 004B6506    test        al,al
>004B6508    je          004B651E
 004B650A    mov         eax,dword ptr [ebp-0C]
 004B650D    mov         edx,dword ptr [ebp-10]
 004B6510    sub         edx,dword ptr [eax+4C]
 004B6513    mov         eax,dword ptr [ebp-4]
 004B6516    sub         edx,dword ptr [eax+4C]
 004B6519    mov         dword ptr [ebp-10],edx
>004B651C    jmp         004B6533
 004B651E    mov         eax,dword ptr [ebp-10]
 004B6521    mov         edx,dword ptr [ebp-4]
 004B6524    sub         eax,dword ptr [edx+4C]
 004B6527    mov         edx,dword ptr [ebp-0C]
 004B652A    add         eax,dword ptr [edx+4C]
 004B652D    add         eax,3
 004B6530    mov         dword ptr [ebp-10],eax
 004B6533    mov         eax,dword ptr [ebp-4]
 004B6536    mov         eax,dword ptr [eax+48];TCustomActionPopupMenu.Width:Integer
 004B6539    push        eax
 004B653A    mov         eax,dword ptr [ebp-4]
 004B653D    mov         eax,dword ptr [eax+4C];TCustomActionPopupMenu.Height:Integer
 004B6540    push        eax
 004B6541    mov         ecx,dword ptr [ebp-10]
 004B6544    mov         edx,dword ptr [ebp-14]
 004B6547    mov         eax,dword ptr [ebp-4]
 004B654A    mov         ebx,dword ptr [eax]
 004B654C    call        dword ptr [ebx+84];TCustomActionPopupMenu.sub_004C4058
 004B6552    pop         ebx
 004B6553    mov         esp,ebp
 004B6555    pop         ebp
 004B6556    ret
end;*}

//004B6558
procedure sub_004B6558(?:TCustomActionPopupMenu);
begin
{*
 004B6558    push        ebp
 004B6559    mov         ebp,esp
 004B655B    add         esp,0FFFFFFF8
 004B655E    mov         dword ptr [ebp-4],eax
 004B6561    mov         eax,dword ptr [ebp-4]
 004B6564    cmp         dword ptr [eax+30C],0;TCustomActionPopupMenu.FExpandBtn:TCustomMenuExpandBtn
>004B656B    jne         004B6634
 004B6571    mov         eax,dword ptr [ebp-4]
 004B6574    mov         edx,dword ptr [eax]
 004B6576    call        dword ptr [edx+18C];TCustomActionPopupMenu.sub_004B6C54
 004B657C    mov         ecx,dword ptr [ebp-4]
 004B657F    mov         dl,1
 004B6581    call        dword ptr [eax+2C]
 004B6584    mov         edx,dword ptr [ebp-4]
 004B6587    mov         dword ptr [edx+30C],eax;TCustomActionPopupMenu.FExpandBtn:TCustomMenuExpandBtn
 004B658D    mov         eax,dword ptr [ebp-4]
 004B6590    mov         eax,dword ptr [eax+30C];TCustomActionPopupMenu.FExpandBtn:TCustomMenuExpandBtn
 004B6596    mov         dword ptr [ebp-8],eax
 004B6599    mov         dl,6
 004B659B    mov         eax,dword ptr [ebp-8]
 004B659E    call        TImage.SetAlign
 004B65A3    mov         eax,dword ptr [ebp-8]
 004B65A6    mov         byte ptr [eax+1CC],1;TCustomMenuExpandBtn.FAutoScroll:Boolean
 004B65AD    mov         edx,dword ptr [ebp-4]
 004B65B0    mov         eax,dword ptr [ebp-8]
 004B65B3    mov         ecx,dword ptr [eax]
 004B65B5    call        dword ptr [ecx+68];TCustomMenuExpandBtn.sub_0048359C
 004B65B8    mov         edx,2
 004B65BD    mov         eax,dword ptr [ebp-8]
 004B65C0    call        004B0698
 004B65C5    mov         eax,dword ptr [ebp-8]
 004B65C8    lea         edx,[eax+80];TCustomMenuExpandBtn.Hint:String
 004B65CE    mov         eax,[0056E188];^SExpand:TResStringRec
 004B65D3    call        LoadResString
 004B65D8    mov         dl,1
 004B65DA    mov         eax,dword ptr [ebp-8]
 004B65DD    call        004B06CC
 004B65E2    mov         dl,3
 004B65E4    mov         eax,dword ptr [ebp-8]
 004B65E7    call        004B0700
 004B65EC    mov         eax,dword ptr [ebp-4]
 004B65EF    mov         eax,dword ptr [eax+210];TCustomActionPopupMenu.FActionClient:TActionClient
 004B65F5    call        004BE6B4
 004B65FA    test        al,al
>004B65FC    je          004B6610
 004B65FE    mov         eax,dword ptr [ebp-4]
 004B6601    mov         eax,dword ptr [eax+210];TCustomActionPopupMenu.FActionClient:TActionClient
 004B6607    mov         al,byte ptr [eax+14];TActionClient.BackgroundLayout:TBackgroundLayout
 004B660A    add         al,0FD
 004B660C    sub         al,2
>004B660E    jae         004B6614
 004B6610    xor         edx,edx
>004B6612    jmp         004B6616
 004B6614    mov         dl,1
 004B6616    mov         eax,dword ptr [ebp-8]
 004B6619    call        004C5FF4
 004B661E    mov         eax,dword ptr [ebp-4]
 004B6621    mov         edx,dword ptr [ebp-8]
 004B6624    mov         dword ptr [edx+1C4],eax;TCustomMenuExpandBtn.?f1C4:TCustomActionPopupMenu
 004B662A    mov         dword ptr [edx+1C0],4B6068;TCustomMenuExpandBtn.FOnClick:TNotifyEvent sub_004B6068
 004B6634    pop         ecx
 004B6635    pop         ecx
 004B6636    pop         ebp
 004B6637    ret
*}
end;

//004B6638
{*procedure sub_004B6638(?:?);
begin
 004B6638    push        ebp
 004B6639    mov         ebp,esp
 004B663B    add         esp,0FFFFFFF8
 004B663E    mov         byte ptr [ebp-5],dl
 004B6641    mov         dword ptr [ebp-4],eax
 004B6644    mov         al,byte ptr [ebp-5]
 004B6647    add         al,0FE
 004B6649    sub         al,2
>004B664B    jae         004B6658
 004B664D    mov         dl,byte ptr [ebp-5]
 004B6650    mov         eax,dword ptr [ebp-4]
 004B6653    call        004C3528
 004B6658    pop         ecx
 004B6659    pop         ecx
 004B665A    pop         ebp
 004B665B    ret
end;*}

//004B665C
{*procedure TCustomActionPopupMenu.WMKeyDown(?:?);
begin
 004B665C    push        ebp
 004B665D    mov         ebp,esp
 004B665F    add         esp,0FFFFFFF0
 004B6662    push        ebx
 004B6663    push        esi
 004B6664    mov         dword ptr [ebp-8],edx
 004B6667    mov         dword ptr [ebp-4],eax
 004B666A    mov         eax,dword ptr [ebp-8]
 004B666D    movzx       eax,word ptr [eax+4]
 004B6671    cmp         eax,28
>004B6674    jg          004B6693
>004B6676    je          004B6892
 004B667C    sub         eax,25
>004B667F    je          004B6716
 004B6685    sub         eax,2
>004B6688    je          004B6770
>004B668E    jmp         004B6962
 004B6693    sub         eax,2D
>004B6696    je          004B68FA
 004B669C    sub         eax,40
>004B669F    jne         004B6962
 004B66A5    mov         eax,dword ptr [ebp-4]
 004B66A8    mov         edx,dword ptr [eax]
 004B66AA    call        dword ptr [edx+104];TCustomActionPopupMenu.sub_004B3EB0
 004B66B0    test        al,al
>004B66B2    je          004B6962
 004B66B8    mov         eax,dword ptr [ebp-4]
 004B66BB    call        004B4028
 004B66C0    test        eax,eax
>004B66C2    je          004B6962
 004B66C8    mov         eax,dword ptr [ebp-4]
 004B66CB    call        004B4028
 004B66D0    call        TCollectionItem.GetIndex
 004B66D5    push        eax
 004B66D6    mov         eax,dword ptr [ebp-4]
 004B66D9    call        004C2EE8
 004B66DE    pop         edx
 004B66DF    call        004217D8
 004B66E4    mov         dword ptr [ebp-0C],eax
 004B66E7    mov         edx,4B697C;'-'
 004B66EC    mov         eax,dword ptr [ebp-0C]
 004B66EF    call        TActionClientItem.SetCaption
 004B66F4    mov         eax,dword ptr [ebp-0C]
 004B66F7    mov         eax,dword ptr [eax+40]
 004B66FA    mov         dl,1
 004B66FC    call        TImage.SetVisible
 004B6701    mov         eax,dword ptr [ebp-0C]
 004B6704    mov         eax,dword ptr [eax+40]
 004B6707    mov         dl,1
 004B6709    mov         ecx,dword ptr [eax]
 004B670B    call        dword ptr [ecx+0D8]
>004B6711    jmp         004B6962
 004B6716    mov         eax,dword ptr [ebp-4]
 004B6719    cmp         dword ptr [eax+2FC],0;TCustomActionPopupMenu.FChildMenu:TCustomActionMenuBar
>004B6720    je          004B674A
 004B6722    mov         eax,dword ptr [ebp-4]
 004B6725    mov         eax,dword ptr [eax+2FC];TCustomActionPopupMenu.FChildMenu:TCustomActionMenuBar
 004B672B    mov         byte ptr [eax+296],0;TCustomActionMenuBar.FInMenuLoop:Boolean
 004B6732    mov         eax,dword ptr [ebp-4]
 004B6735    xor         edx,edx
 004B6737    mov         dword ptr [eax+2FC],edx;TCustomActionPopupMenu.FChildMenu:TCustomActionMenuBar
 004B673D    mov         eax,dword ptr [ebp-8]
 004B6740    xor         edx,edx
 004B6742    mov         dword ptr [eax+0C],edx
>004B6745    jmp         004B6962
 004B674A    mov         eax,dword ptr [ebp-4]
 004B674D    cmp         dword ptr [eax+2A8],0;TCustomActionPopupMenu.FParentMenu:TCustomActionMenuBar
>004B6754    je          004B6962
 004B675A    mov         edx,dword ptr [ebp-8]
 004B675D    mov         eax,dword ptr [ebp-4]
 004B6760    mov         eax,dword ptr [eax+2A8];TCustomActionPopupMenu.FParentMenu:TCustomActionMenuBar
 004B6766    mov         ecx,dword ptr [eax]
 004B6768    call        dword ptr [ecx-14];TObject.Dispatch
>004B676B    jmp         004B6962
 004B6770    mov         eax,dword ptr [ebp-4]
 004B6773    call        004B4028
 004B6778    test        eax,eax
>004B677A    je          004B686A
 004B6780    mov         eax,dword ptr [ebp-4]
 004B6783    mov         edx,dword ptr [eax]
 004B6785    call        dword ptr [edx+104];TCustomActionPopupMenu.sub_004B3EB0
 004B678B    test        al,al
>004B678D    je          004B67EA
 004B678F    mov         eax,dword ptr [ebp-4]
 004B6792    call        004B4028
 004B6797    call        004BE56C
 004B679C    test        al,al
>004B679E    jne         004B67EA
 004B67A0    mov         eax,dword ptr [ebp-4]
 004B67A3    call        004B4028
 004B67A8    cmp         byte ptr [eax+50],0
>004B67AC    jne         004B67EA
 004B67AE    mov         eax,dword ptr [ebp-4]
 004B67B1    call        004B4028
 004B67B6    call        TActionClientItem.GetAction
 004B67BB    test        eax,eax
>004B67BD    jne         004B67EA
 004B67BF    call        004A069C
 004B67C4    test        al,4
>004B67C6    je          004B67EA
 004B67C8    mov         eax,dword ptr [ebp-4]
 004B67CB    call        004B4028
 004B67D0    call        TActionClient.GetItems
 004B67D5    call        004BF124
 004B67DA    mov         eax,dword ptr [ebp-4]
 004B67DD    call        004B4028
 004B67E2    mov         eax,dword ptr [eax+40]
 004B67E5    mov         edx,dword ptr [eax]
 004B67E7    call        dword ptr [edx+7C]
 004B67EA    mov         eax,dword ptr [ebp-4]
 004B67ED    call        004B4028
 004B67F2    call        004BE56C
 004B67F7    test        al,al
>004B67F9    je          004B6844
 004B67FB    mov         eax,dword ptr [ebp-4]
 004B67FE    call        004B4028
 004B6803    cmp         dword ptr [eax+18],0
>004B6807    jne         004B6844
 004B6809    mov         eax,dword ptr [ebp-4]
 004B680C    call        004B4028
 004B6811    mov         eax,dword ptr [eax+40]
 004B6814    mov         edx,dword ptr [eax]
 004B6816    call        dword ptr [edx+50]
 004B6819    test        al,al
>004B681B    jne         004B682C
 004B681D    mov         eax,dword ptr [ebp-4]
 004B6820    mov         edx,dword ptr [eax]
 004B6822    call        dword ptr [edx+104];TCustomActionPopupMenu.sub_004B3EB0
 004B6828    test        al,al
>004B682A    je          004B6844
 004B682C    mov         eax,dword ptr [ebp-4]
 004B682F    call        004B4028
 004B6834    mov         eax,dword ptr [eax+40]
 004B6837    mov         edx,dword ptr [eax]
 004B6839    call        dword ptr [edx+0E0]
>004B683F    jmp         004B6962
 004B6844    mov         eax,dword ptr [ebp-4]
 004B6847    cmp         dword ptr [eax+2B0],0;TCustomActionPopupMenu.FPopupStack:TMenuStack
>004B684E    jne         004B6962
 004B6854    mov         edx,dword ptr [ebp-8]
 004B6857    mov         eax,dword ptr [ebp-4]
 004B685A    mov         eax,dword ptr [eax+2C4];TCustomActionPopupMenu.FRootMenu:TCustomActionMenuBar
 004B6860    mov         ecx,dword ptr [eax]
 004B6862    call        dword ptr [ecx-14];TObject.Dispatch
>004B6865    jmp         004B6962
 004B686A    mov         eax,dword ptr [ebp-4]
 004B686D    mov         eax,dword ptr [eax+2C4];TCustomActionPopupMenu.FRootMenu:TCustomActionMenuBar
 004B6873    cmp         eax,dword ptr [ebp-4]
>004B6876    je          004B6962
 004B687C    mov         edx,dword ptr [ebp-8]
 004B687F    mov         eax,dword ptr [ebp-4]
 004B6882    mov         eax,dword ptr [eax+2C4];TCustomActionPopupMenu.FRootMenu:TCustomActionMenuBar
 004B6888    mov         ecx,dword ptr [eax]
 004B688A    call        dword ptr [ecx-14];TObject.Dispatch
>004B688D    jmp         004B6962
 004B6892    mov         eax,dword ptr [ebp-8]
 004B6895    cmp         word ptr [eax+4],28
>004B689A    jne         004B6962
 004B68A0    mov         eax,dword ptr [ebp-4]
 004B68A3    cmp         byte ptr [eax+294],0;TCustomActionPopupMenu.FExpandable:Boolean
>004B68AA    je          004B6962
 004B68B0    mov         eax,dword ptr [ebp-4]
 004B68B3    call        004B4028
 004B68B8    mov         ebx,eax
 004B68BA    mov         eax,dword ptr [ebp-4]
 004B68BD    call        004C2880
 004B68C2    cmp         ebx,eax
>004B68C4    je          004B68D3
 004B68C6    call        004A069C
 004B68CB    test        al,4
>004B68CD    je          004B6962
 004B68D3    mov         eax,dword ptr [ebp-4]
 004B68D6    mov         eax,dword ptr [eax+30C];TCustomActionPopupMenu.FExpandBtn:TCustomMenuExpandBtn
 004B68DC    mov         si,0FFEB
 004B68E0    call        @CallDynaInst;TCustomUtilityButton.sub_004854CC
 004B68E5    mov         eax,dword ptr [ebp-4]
 004B68E8    call        004C28DC
 004B68ED    mov         edx,dword ptr [eax+40]
 004B68F0    mov         eax,dword ptr [ebp-4]
 004B68F3    call        004B4A00
>004B68F8    jmp         004B696D
 004B68FA    mov         eax,dword ptr [ebp-4]
 004B68FD    test        byte ptr [eax+1C],10;TCustomActionPopupMenu.FComponentState:TComponentState
>004B6901    je          004B696D
 004B6903    mov         eax,dword ptr [ebp-4]
 004B6906    call        004B4028
 004B690B    test        eax,eax
>004B690D    je          004B696D
 004B690F    mov         eax,dword ptr [ebp-4]
 004B6912    call        004B4028
 004B6917    mov         dword ptr [ebp-0C],eax
 004B691A    mov         eax,dword ptr [ebp-0C]
 004B691D    call        TCollectionItem.GetIndex
 004B6922    mov         dword ptr [ebp-10],eax
 004B6925    call        004A069C
 004B692A    test        al,1
>004B692C    je          004B6931
 004B692E    inc         dword ptr [ebp-10]
 004B6931    mov         eax,dword ptr [ebp-4]
 004B6934    mov         eax,dword ptr [eax+210];TCustomActionPopupMenu.FActionClient:TActionClient
 004B693A    call        TActionClient.GetItems
 004B693F    mov         edx,dword ptr [ebp-10]
 004B6942    call        004217D8
 004B6947    mov         dword ptr [ebp-0C],eax
 004B694A    mov         eax,dword ptr [ebp-0C]
 004B694D    mov         eax,dword ptr [eax+40]
 004B6950    mov         dl,1
 004B6952    mov         ecx,dword ptr [eax]
 004B6954    call        dword ptr [ecx+0D8]
 004B695A    mov         eax,dword ptr [ebp-4]
 004B695D    call        004BBF24
 004B6962    mov         edx,dword ptr [ebp-8]
 004B6965    mov         eax,dword ptr [ebp-4]
 004B6968    call        TCustomActionMenuBar.WMKeyDown
 004B696D    pop         esi
 004B696E    pop         ebx
 004B696F    mov         esp,ebp
 004B6971    pop         ebp
 004B6972    ret
end;*}

//004B6980
{*procedure TCustomActionPopupMenu.sub_004B6980(?:?);
begin
 004B6980    push        ebp
 004B6981    mov         ebp,esp
 004B6983    add         esp,0FFFFFFF8
 004B6986    mov         dword ptr [ebp-8],edx
 004B6989    mov         dword ptr [ebp-4],eax
 004B698C    mov         edx,dword ptr [ebp-8]
 004B698F    mov         eax,dword ptr [ebp-4]
 004B6992    mov         ecx,dword ptr [eax]
 004B6994    call        dword ptr [ecx-10];TWinControl.DefaultHandler
 004B6997    mov         edx,dword ptr [ebp-8]
 004B699A    mov         edx,dword ptr [edx+4]
 004B699D    mov         eax,dword ptr [ebp-4]
 004B69A0    mov         ecx,dword ptr [eax]
 004B69A2    call        dword ptr [ecx+0C8];TCustomActionPopupMenu.sub_004C42F4
 004B69A8    pop         ecx
 004B69A9    pop         ecx
 004B69AA    pop         ebp
 004B69AB    ret
end;*}

//004B69AC
{*procedure TCustomActionPopupMenu.sub_0048D780(?:?);
begin
 004B69AC    push        ebp
 004B69AD    mov         ebp,esp
 004B69AF    add         esp,0FFFFFFE4
 004B69B2    mov         dword ptr [ebp-8],edx
 004B69B5    mov         dword ptr [ebp-4],eax
 004B69B8    mov         edx,dword ptr [ebp-8]
 004B69BB    mov         eax,dword ptr [ebp-4]
 004B69BE    call        TWinControl.sub_0048D780
 004B69C3    mov         eax,dword ptr [ebp-4]
 004B69C6    mov         eax,dword ptr [eax+21C];TCustomActionPopupMenu.FCanvas:TCanvas
 004B69CC    call        0042F6A0
 004B69D1    mov         dword ptr [ebp-0C],eax
 004B69D4    xor         eax,eax
 004B69D6    push        ebp
 004B69D7    push        4B6A5F
 004B69DC    push        dword ptr fs:[eax]
 004B69DF    mov         dword ptr fs:[eax],esp
 004B69E2    mov         edx,dword ptr [ebp-8]
 004B69E5    mov         edx,dword ptr [edx+4]
 004B69E8    mov         eax,dword ptr [ebp-4]
 004B69EB    mov         eax,dword ptr [eax+21C];TCustomActionPopupMenu.FCanvas:TCanvas
 004B69F1    call        TCanvas.SetHandle
 004B69F6    mov         eax,dword ptr [ebp-4]
 004B69F9    call        004C4A40
 004B69FE    mov         edx,dword ptr [eax+40]
 004B6A01    mov         eax,dword ptr [ebp-4]
 004B6A04    mov         eax,dword ptr [eax+21C];TCustomActionPopupMenu.FCanvas:TCanvas
 004B6A0A    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 004B6A0D    call        TBrush.SetColor
 004B6A12    lea         edx,[ebp-1C]
 004B6A15    mov         eax,dword ptr [ebp-4]
 004B6A18    call        00482ECC
 004B6A1D    lea         edx,[ebp-1C]
 004B6A20    mov         eax,dword ptr [ebp-4]
 004B6A23    mov         eax,dword ptr [eax+21C];TCustomActionPopupMenu.FCanvas:TCanvas
 004B6A29    call        0042F030
 004B6A2E    push        0
 004B6A30    mov         edx,dword ptr [ebp-8]
 004B6A33    mov         edx,dword ptr [edx+4]
 004B6A36    xor         ecx,ecx
 004B6A38    mov         eax,dword ptr [ebp-4]
 004B6A3B    call        004896B4
 004B6A40    xor         eax,eax
 004B6A42    pop         edx
 004B6A43    pop         ecx
 004B6A44    pop         ecx
 004B6A45    mov         dword ptr fs:[eax],edx
 004B6A48    push        4B6A66
 004B6A4D    mov         eax,dword ptr [ebp-4]
 004B6A50    mov         eax,dword ptr [eax+21C];TCustomActionPopupMenu.FCanvas:TCanvas
 004B6A56    mov         edx,dword ptr [ebp-0C]
 004B6A59    call        TCanvas.SetHandle
 004B6A5E    ret
>004B6A5F    jmp         @HandleFinally
>004B6A64    jmp         004B6A4D
 004B6A66    mov         esp,ebp
 004B6A68    pop         ebp
 004B6A69    ret
end;*}

//004B6A6C
procedure TCustomActionPopupMenu.sub_0048513C;
begin
{*
 004B6A6C    push        ebp
 004B6A6D    mov         ebp,esp
 004B6A6F    add         esp,0FFFFFFF0
 004B6A72    push        ebx
 004B6A73    push        esi
 004B6A74    mov         dword ptr [ebp-4],eax
 004B6A77    mov         eax,dword ptr [ebp-4]
 004B6A7A    call        TCustomActionBar.sub_0048513C
 004B6A7F    mov         eax,dword ptr [ebp-4]
 004B6A82    cmp         byte ptr [eax+57],0;TCustomActionPopupMenu.FVisible:Boolean
>004B6A86    jne         004B6BB7
 004B6A8C    mov         eax,dword ptr [ebp-4]
 004B6A8F    call        004C28DC
 004B6A94    mov         dword ptr [ebp-8],eax
 004B6A97    cmp         dword ptr [ebp-8],0
>004B6A9B    je          004B6AB3
 004B6A9D    mov         eax,dword ptr [ebp-8]
 004B6AA0    cmp         byte ptr [eax+50],0
>004B6AA4    je          004B6AB3
 004B6AA6    xor         edx,edx
 004B6AA8    mov         eax,dword ptr [ebp-8]
 004B6AAB    mov         eax,dword ptr [eax+40]
 004B6AAE    call        TImage.SetVisible
 004B6AB3    mov         eax,dword ptr [ebp-4]
 004B6AB6    call        004C2880
 004B6ABB    mov         dword ptr [ebp-8],eax
 004B6ABE    cmp         dword ptr [ebp-8],0
>004B6AC2    je          004B6ADA
 004B6AC4    mov         eax,dword ptr [ebp-8]
 004B6AC7    cmp         byte ptr [eax+50],0
>004B6ACB    je          004B6ADA
 004B6ACD    xor         edx,edx
 004B6ACF    mov         eax,dword ptr [ebp-8]
 004B6AD2    mov         eax,dword ptr [eax+40]
 004B6AD5    call        TImage.SetVisible
 004B6ADA    mov         eax,dword ptr [ebp-4]
 004B6ADD    mov         edx,dword ptr [eax]
 004B6ADF    call        dword ptr [edx+104];TCustomActionPopupMenu.sub_004B3EB0
 004B6AE5    test        al,al
>004B6AE7    jne         004B6B3A
 004B6AE9    mov         eax,dword ptr [ebp-4]
 004B6AEC    mov         edx,dword ptr [eax]
 004B6AEE    call        dword ptr [edx+114];TCustomActionPopupMenu.sub_004C2FA8
 004B6AF4    dec         eax
 004B6AF5    test        eax,eax
>004B6AF7    jl          004B6B3A
 004B6AF9    inc         eax
 004B6AFA    mov         dword ptr [ebp-10],eax
 004B6AFD    mov         dword ptr [ebp-0C],0
 004B6B04    mov         eax,dword ptr [ebp-4]
 004B6B07    call        004C2EE8
 004B6B0C    mov         edx,dword ptr [ebp-0C]
 004B6B0F    call        004BF258
 004B6B14    cmp         dword ptr [eax+38],0
>004B6B18    je          004B6B32
 004B6B1A    mov         eax,dword ptr [ebp-4]
 004B6B1D    call        004C2EE8
 004B6B22    mov         edx,dword ptr [ebp-0C]
 004B6B25    call        004BF258
 004B6B2A    mov         eax,dword ptr [eax+38]
 004B6B2D    mov         edx,dword ptr [eax]
 004B6B2F    call        dword ptr [edx+1C]
 004B6B32    inc         dword ptr [ebp-0C]
 004B6B35    dec         dword ptr [ebp-10]
>004B6B38    jne         004B6B04
 004B6B3A    mov         eax,dword ptr [ebp-4]
 004B6B3D    cmp         dword ptr [eax+210],0;TCustomActionPopupMenu.FActionClient:TActionClient
>004B6B44    je          004B6BB7
 004B6B46    mov         eax,dword ptr [ebp-4]
 004B6B49    call        0048C0B0
 004B6B4E    mov         eax,dword ptr [ebp-4]
 004B6B51    mov         si,0FFEE
 004B6B55    call        @CallDynaInst;TWinControl.sub_0048673C
 004B6B5A    mov         eax,dword ptr [ebp-4]
 004B6B5D    mov         ecx,dword ptr [eax+2AC];TCustomActionPopupMenu.FParentControl:TCustomActionControl
 004B6B63    mov         eax,dword ptr [ebp-4]
 004B6B66    mov         edx,dword ptr [eax+2A8];TCustomActionPopupMenu.FParentMenu:TCustomActionMenuBar
 004B6B6C    mov         eax,dword ptr [ebp-4]
 004B6B6F    mov         ebx,dword ptr [eax]
 004B6B71    call        dword ptr [ebx+194];TCustomActionPopupMenu.sub_004B6178
 004B6B77    mov         eax,dword ptr [ebp-4]
 004B6B7A    cmp         dword ptr [eax+2A8],0;TCustomActionPopupMenu.FParentMenu:TCustomActionMenuBar
>004B6B81    je          004B6B8D
 004B6B83    mov         dl,1
 004B6B85    mov         eax,dword ptr [ebp-4]
 004B6B88    call        TCustomActionMenuBar.Animate
 004B6B8D    mov         eax,dword ptr [ebp-4]
 004B6B90    test        byte ptr [eax+1C],10;TCustomActionPopupMenu.FComponentState:TComponentState
>004B6B94    jne         004B6BB7
 004B6B96    mov         eax,dword ptr [ebp-4]
 004B6B99    cmp         dword ptr [eax+2C4],0;TCustomActionPopupMenu.FRootMenu:TCustomActionMenuBar
>004B6BA0    je          004B6BB7
 004B6BA2    push        2
 004B6BA4    push        0
 004B6BA6    call        winmm.sndPlaySoundA
 004B6BAB    push        13
 004B6BAD    push        4B6BC0;'MenuPopup'
 004B6BB2    call        winmm.sndPlaySoundA
 004B6BB7    pop         esi
 004B6BB8    pop         ebx
 004B6BB9    mov         esp,ebp
 004B6BBB    pop         ebp
 004B6BBC    ret
*}
end;

//004B6BCC
procedure sub_004B6BCC;
begin
{*
 004B6BCC    push        ebp
 004B6BCD    mov         ebp,esp
 004B6BCF    add         esp,0FFFFFFF4
 004B6BD2    mov         dword ptr [ebp-4],eax
 004B6BD5    xor         edx,edx
 004B6BD7    mov         eax,dword ptr [ebp-4]
 004B6BDA    call        TImage.SetVisible
 004B6BDF    mov         eax,dword ptr [ebp-4]
 004B6BE2    cmp         dword ptr [eax+2C4],0;TCustomActionPopupMenu.FRootMenu:TCustomActionMenuBar
>004B6BE9    je          004B6C15
 004B6BEB    lea         edx,[ebp-0C]
 004B6BEE    mov         eax,[0056E5B4];^Mouse:TMouse
 004B6BF3    mov         eax,dword ptr [eax]
 004B6BF5    call        00491DC4
 004B6BFA    mov         eax,dword ptr [ebp-4]
 004B6BFD    mov         eax,dword ptr [eax+2C4];TCustomActionPopupMenu.FRootMenu:TCustomActionMenuBar
 004B6C03    mov         edx,dword ptr [ebp-0C]
 004B6C06    mov         dword ptr [eax+29C],edx;TCustomActionMenuBar.FMousePos:TPoint
 004B6C0C    mov         edx,dword ptr [ebp-8]
 004B6C0F    mov         dword ptr [eax+2A0],edx
 004B6C15    mov         eax,dword ptr [ebp-4]
 004B6C18    call        004B31B8
 004B6C1D    mov         esp,ebp
 004B6C1F    pop         ebp
 004B6C20    ret
*}
end;

//004B6C24
{*procedure sub_004B6C24(?:?);
begin
 004B6C24    push        ebp
 004B6C25    mov         ebp,esp
 004B6C27    add         esp,0FFFFFFF8
 004B6C2A    mov         dword ptr [ebp-8],edx
 004B6C2D    mov         dword ptr [ebp-4],eax
 004B6C30    mov         edx,dword ptr [ebp-8]
 004B6C33    mov         eax,dword ptr [ebp-4]
 004B6C36    call        0048C23C
 004B6C3B    xor         edx,edx
 004B6C3D    mov         eax,dword ptr [ebp-4]
 004B6C40    mov         ecx,dword ptr [eax]
 004B6C42    call        dword ptr [ecx+0F8];TCustomActionPopupMenu.sub_004C2DF8
 004B6C48    mov         edx,dword ptr [ebp-8]
 004B6C4B    add         dword ptr [edx],eax
 004B6C4D    pop         ecx
 004B6C4E    pop         ecx
 004B6C4F    pop         ebp
 004B6C50    ret
end;*}

//004B6C54
{*function sub_004B6C54:?;
begin
 004B6C54    push        ebp
 004B6C55    mov         ebp,esp
 004B6C57    add         esp,0FFFFFFF8
 004B6C5A    mov         dword ptr [ebp-4],eax
 004B6C5D    mov         eax,[004B1898];TCustomMenuExpandBtn
 004B6C62    mov         dword ptr [ebp-8],eax
 004B6C65    mov         eax,dword ptr [ebp-8]
 004B6C68    pop         ecx
 004B6C69    pop         ecx
 004B6C6A    pop         ebp
 004B6C6B    ret
end;*}

//004B6C6C
{*function sub_004B6C6C(?:?; ?:?):?;
begin
 004B6C6C    push        ebp
 004B6C6D    mov         ebp,esp
 004B6C6F    add         esp,0FFFFFFF0
 004B6C72    mov         dword ptr [ebp-0C],ecx
 004B6C75    mov         dword ptr [ebp-8],edx
 004B6C78    mov         dword ptr [ebp-4],eax
 004B6C7B    mov         ecx,dword ptr [ebp-0C]
 004B6C7E    mov         edx,dword ptr [ebp-8]
 004B6C81    mov         eax,dword ptr [ebp-4]
 004B6C84    call        0048CFAC
 004B6C89    mov         byte ptr [ebp-0D],al
 004B6C8C    mov         dl,1
 004B6C8E    mov         eax,dword ptr [ebp-4]
 004B6C91    mov         ecx,dword ptr [eax]
 004B6C93    call        dword ptr [ecx+0F8];TCustomActionPopupMenu.sub_004C2DF8
 004B6C99    mov         edx,dword ptr [ebp-8]
 004B6C9C    add         dword ptr [edx],eax
 004B6C9E    mov         al,byte ptr [ebp-0D]
 004B6CA1    mov         esp,ebp
 004B6CA3    pop         ebp
 004B6CA4    ret
end;*}

//004B6CA8
procedure sub_004B6CA8;
begin
{*
 004B6CA8    push        ebp
 004B6CA9    mov         ebp,esp
 004B6CAB    push        ecx
 004B6CAC    mov         dword ptr [ebp-4],eax
 004B6CAF    mov         eax,dword ptr [ebp-4]
 004B6CB2    cmp         byte ptr [eax+314],0;TCustomActionPopupMenu.FShadow:Boolean
>004B6CB9    je          004B6D38
 004B6CBB    mov         eax,dword ptr [ebp-4]
 004B6CBE    mov         edx,dword ptr [eax]
 004B6CC0    call        dword ptr [edx+104];TCustomActionPopupMenu.sub_004B3EB0
 004B6CC6    test        al,al
>004B6CC8    jne         004B6D38
 004B6CCA    mov         eax,dword ptr [ebp-4]
 004B6CCD    cmp         dword ptr [eax+310],0;TCustomActionPopupMenu.FRShadow:TShadowWindow
>004B6CD4    jne         004B6D0A
 004B6CD6    push        0
 004B6CD8    mov         ecx,dword ptr [ebp-4]
 004B6CDB    mov         dl,1
 004B6CDD    mov         eax,[004ADEF4];TShadowWindow
 004B6CE2    call        TShadowWindow.Create;TShadowWindow.Create
 004B6CE7    mov         edx,dword ptr [ebp-4]
 004B6CEA    mov         dword ptr [edx+310],eax;TCustomActionPopupMenu.FRShadow:TShadowWindow
 004B6CF0    push        1
 004B6CF2    mov         ecx,dword ptr [ebp-4]
 004B6CF5    mov         dl,1
 004B6CF7    mov         eax,[004ADEF4];TShadowWindow
 004B6CFC    call        TShadowWindow.Create;TShadowWindow.Create
 004B6D01    mov         edx,dword ptr [ebp-4]
 004B6D04    mov         dword ptr [edx+308],eax;TCustomActionPopupMenu.FBShadow:TShadowWindow
 004B6D0A    mov         eax,dword ptr [ebp-4]
 004B6D0D    cmp         dword ptr [eax+310],0;TCustomActionPopupMenu.FRShadow:TShadowWindow
>004B6D14    je          004B6D38
 004B6D16    mov         edx,dword ptr [ebp-4]
 004B6D19    mov         eax,dword ptr [ebp-4]
 004B6D1C    mov         eax,dword ptr [eax+310];TCustomActionPopupMenu.FRShadow:TShadowWindow
 004B6D22    call        004AE290
 004B6D27    mov         edx,dword ptr [ebp-4]
 004B6D2A    mov         eax,dword ptr [ebp-4]
 004B6D2D    mov         eax,dword ptr [eax+308];TCustomActionPopupMenu.FBShadow:TShadowWindow
 004B6D33    call        004AE290
 004B6D38    pop         ecx
 004B6D39    pop         ebp
 004B6D3A    ret
*}
end;

//004B6D3C
procedure sub_004B6D3C;
begin
{*
 004B6D3C    push        ebp
 004B6D3D    mov         ebp,esp
 004B6D3F    push        ecx
 004B6D40    mov         dword ptr [ebp-4],eax
 004B6D43    mov         eax,dword ptr [ebp-4]
 004B6D46    cmp         dword ptr [eax+310],0;TCustomActionPopupMenu.FRShadow:TShadowWindow
>004B6D4D    je          004B6D6B
 004B6D4F    mov         eax,dword ptr [ebp-4]
 004B6D52    mov         eax,dword ptr [eax+310];TCustomActionPopupMenu.FRShadow:TShadowWindow
 004B6D58    call        00483F88
 004B6D5D    mov         eax,dword ptr [ebp-4]
 004B6D60    mov         eax,dword ptr [eax+308];TCustomActionPopupMenu.FBShadow:TShadowWindow
 004B6D66    call        00483F88
 004B6D6B    pop         ecx
 004B6D6C    pop         ebp
 004B6D6D    ret
*}
end;

//004B6D70
{*procedure sub_004B6D70(?:?);
begin
 004B6D70    push        ebp
 004B6D71    mov         ebp,esp
 004B6D73    add         esp,0FFFFFFF8
 004B6D76    mov         dword ptr [ebp-8],edx
 004B6D79    mov         dword ptr [ebp-4],eax
 004B6D7C    mov         edx,dword ptr [ebp-8]
 004B6D7F    mov         eax,dword ptr [ebp-4]
 004B6D82    call        004C4180
 004B6D87    mov         eax,dword ptr [ebp-4]
 004B6D8A    call        004C4A40
 004B6D8F    test        eax,eax
>004B6D91    je          004B6DA6
 004B6D93    mov         eax,dword ptr [ebp-4]
 004B6D96    call        004C4A40
 004B6D9B    mov         edx,dword ptr [eax+74]
 004B6D9E    mov         eax,dword ptr [ebp-4]
 004B6DA1    call        TPanel.SetColor
 004B6DA6    pop         ecx
 004B6DA7    pop         ecx
 004B6DA8    pop         ebp
 004B6DA9    ret
end;*}

//004B6DAC
{*procedure sub_004B6DAC(?:?; ?:?);
begin
 004B6DAC    push        ebp
 004B6DAD    mov         ebp,esp
 004B6DAF    add         esp,0FFFFFFF0
 004B6DB2    mov         byte ptr [ebp-9],cl
 004B6DB5    mov         dword ptr [ebp-8],edx
 004B6DB8    mov         dword ptr [ebp-4],eax
 004B6DBB    mov         cl,byte ptr [ebp-9]
 004B6DBE    mov         edx,dword ptr [ebp-8]
 004B6DC1    mov         eax,dword ptr [ebp-4]
 004B6DC4    call        004B52F0
 004B6DC9    mov         eax,dword ptr [ebp-4]
 004B6DCC    test        byte ptr [eax+1C],8;TCustomActionPopupMenu.FComponentState:TComponentState
>004B6DD0    jne         004B6E05
 004B6DD2    cmp         byte ptr [ebp-9],1
>004B6DD6    jne         004B6E05
 004B6DD8    mov         eax,dword ptr [ebp-8]
 004B6DDB    mov         edx,dword ptr ds:[47DF94];TControl
 004B6DE1    call        @IsClass
 004B6DE6    test        al,al
>004B6DE8    je          004B6E05
 004B6DEA    mov         eax,dword ptr [ebp-8]
 004B6DED    mov         edx,dword ptr ds:[47DF94];TControl
 004B6DF3    call        @AsClass
 004B6DF8    mov         dword ptr [ebp-10],eax
 004B6DFB    xor         edx,edx
 004B6DFD    mov         eax,dword ptr [ebp-10]
 004B6E00    call        TImage.SetVisible
 004B6E05    mov         esp,ebp
 004B6E07    pop         ebp
 004B6E08    ret
end;*}

//004B6E0C
{*procedure sub_004B6E0C(?:TCustomActionPopupMenu; ?:?);
begin
 004B6E0C    push        ebp
 004B6E0D    mov         ebp,esp
 004B6E0F    add         esp,0FFFFFFF8
 004B6E12    mov         byte ptr [ebp-5],dl
 004B6E15    mov         dword ptr [ebp-4],eax
 004B6E18    mov         eax,dword ptr [ebp-4]
 004B6E1B    mov         al,byte ptr [eax+314];TCustomActionPopupMenu.FShadow:Boolean
 004B6E21    cmp         al,byte ptr [ebp-5]
>004B6E24    je          004B6E3A
 004B6E26    mov         al,byte ptr [ebp-5]
 004B6E29    mov         edx,dword ptr [ebp-4]
 004B6E2C    mov         byte ptr [edx+314],al;TCustomActionPopupMenu.FShadow:Boolean
 004B6E32    mov         eax,dword ptr [ebp-4]
 004B6E35    call        TWinControl.RecreateWnd
 004B6E3A    pop         ecx
 004B6E3B    pop         ecx
 004B6E3C    pop         ebp
 004B6E3D    ret
end;*}

//004B6E40
procedure sub_004B6E40;
begin
{*
 004B6E40    push        ebp
 004B6E41    mov         ebp,esp
 004B6E43    add         esp,0FFFFFFEC
 004B6E46    mov         dword ptr [ebp-4],eax
 004B6E49    mov         eax,dword ptr [ebp-4]
 004B6E4C    call        004C225C
 004B6E51    mov         eax,dword ptr [ebp-4]
 004B6E54    call        004C4A40
 004B6E59    mov         edx,dword ptr [eax+74]
 004B6E5C    mov         eax,dword ptr [ebp-4]
 004B6E5F    mov         eax,dword ptr [eax+21C];TCustomActionPopupMenu.FCanvas:TCanvas
 004B6E65    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 004B6E68    call        TBrush.SetColor
 004B6E6D    lea         edx,[ebp-14]
 004B6E70    mov         eax,dword ptr [ebp-4]
 004B6E73    mov         ecx,dword ptr [eax]
 004B6E75    call        dword ptr [ecx+44];TCustomActionPopupMenu.sub_004B6C24
 004B6E78    lea         edx,[ebp-14]
 004B6E7B    mov         eax,dword ptr [ebp-4]
 004B6E7E    mov         eax,dword ptr [eax+21C];TCustomActionPopupMenu.FCanvas:TCanvas
 004B6E84    call        0042F030
 004B6E89    mov         esp,ebp
 004B6E8B    pop         ebp
 004B6E8C    ret
*}
end;

//004B6E90
procedure sub_004B6E90;
begin
{*
 004B6E90    push        ebp
 004B6E91    mov         ebp,esp
 004B6E93    add         esp,0FFFFFFE4
 004B6E96    push        esi
 004B6E97    push        edi
 004B6E98    mov         dword ptr [ebp-4],eax
 004B6E9B    mov         eax,dword ptr [ebp-4]
 004B6E9E    call        004B9168
 004B6EA3    mov         eax,dword ptr [ebp-4]
 004B6EA6    mov         edx,dword ptr [eax+48];TCustomAddRemoveItem.Width:Integer
 004B6EA9    add         edx,12
 004B6EAC    mov         eax,dword ptr [ebp-4]
 004B6EAF    call        TSplitter.SetWidth
 004B6EB4    lea         ecx,[ebp-1C]
 004B6EB7    mov         eax,dword ptr [ebp-4]
 004B6EBA    mov         eax,dword ptr [eax+172];TCustomAddRemoveItem.FGlyphPos:TPoint
 004B6EC0    add         eax,12
 004B6EC3    mov         edx,dword ptr [ebp-4]
 004B6EC6    mov         edx,dword ptr [edx+176]
 004B6ECC    call        Point
 004B6ED1    mov         eax,dword ptr [ebp-4]
 004B6ED4    mov         edx,dword ptr [ebp-1C]
 004B6ED7    mov         dword ptr [eax+172],edx;TCustomAddRemoveItem.FGlyphPos:TPoint
 004B6EDD    mov         edx,dword ptr [ebp-18]
 004B6EE0    mov         dword ptr [eax+176],edx
 004B6EE6    mov         eax,dword ptr [ebp-4]
 004B6EE9    lea         esi,[eax+190];TCustomAddRemoveItem.FTextBounds:TRect
 004B6EEF    lea         edi,[ebp-14]
 004B6EF2    movs        dword ptr [edi],dword ptr [esi]
 004B6EF3    movs        dword ptr [edi],dword ptr [esi]
 004B6EF4    movs        dword ptr [edi],dword ptr [esi]
 004B6EF5    movs        dword ptr [edi],dword ptr [esi]
 004B6EF6    push        0
 004B6EF8    push        12
 004B6EFA    lea         eax,[ebp-14]
 004B6EFD    push        eax
 004B6EFE    call        user32.OffsetRect
 004B6F03    mov         eax,dword ptr [ebp-4]
 004B6F06    lea         esi,[ebp-14]
 004B6F09    lea         edi,[eax+190];TCustomAddRemoveItem.FTextBounds:TRect
 004B6F0F    movs        dword ptr [edi],dword ptr [esi]
 004B6F10    movs        dword ptr [edi],dword ptr [esi]
 004B6F11    movs        dword ptr [edi],dword ptr [esi]
 004B6F12    movs        dword ptr [edi],dword ptr [esi]
 004B6F13    pop         edi
 004B6F14    pop         esi
 004B6F15    mov         esp,ebp
 004B6F17    pop         ebp
 004B6F18    ret
*}
end;

//004B6F1C
{*procedure TCustomAddRemoveItem.sub_004859D0(?:?; ?:?; ?:?; ?:?);
begin
 004B6F1C    push        ebp
 004B6F1D    mov         ebp,esp
 004B6F1F    add         esp,0FFFFFFF8
 004B6F22    mov         byte ptr [ebp-6],cl
 004B6F25    mov         byte ptr [ebp-5],dl
 004B6F28    mov         dword ptr [ebp-4],eax
 004B6F2B    mov         eax,dword ptr [ebp+0C]
 004B6F2E    push        eax
 004B6F2F    mov         eax,dword ptr [ebp+8]
 004B6F32    push        eax
 004B6F33    mov         cl,byte ptr [ebp-6]
 004B6F36    mov         dl,byte ptr [ebp-5]
 004B6F39    mov         eax,dword ptr [ebp-4]
 004B6F3C    call        TCustomMenuItem.sub_004859D0
 004B6F41    mov         eax,dword ptr [ebp-4]
 004B6F44    mov         edx,dword ptr [eax]
 004B6F46    call        dword ptr [edx+7C];TCustomAddRemoveItem.sub_00483F08
 004B6F49    pop         ecx
 004B6F4A    pop         ecx
 004B6F4B    pop         ebp
 004B6F4C    ret         8
end;*}

//004B6F50
{*procedure sub_004B6F50(?:?);
begin
 004B6F50    push        ebp
 004B6F51    mov         ebp,esp
 004B6F53    add         esp,0FFFFFFF8
 004B6F56    mov         byte ptr [ebp-5],dl
 004B6F59    mov         dword ptr [ebp-4],eax
 004B6F5C    mov         dl,1
 004B6F5E    mov         eax,dword ptr [ebp-4]
 004B6F61    call        TImage.SetEnabled
 004B6F66    pop         ecx
 004B6F67    pop         ecx
 004B6F68    pop         ebp
 004B6F69    ret
end;*}

//004B6F6C
constructor sub_004B6F6C;
begin
{*
 004B6F6C    push        ebp
 004B6F6D    mov         ebp,esp
 004B6F6F    add         esp,0FFFFFFF4
 004B6F72    test        dl,dl
>004B6F74    je          004B6F7E
 004B6F76    add         esp,0FFFFFFF0
 004B6F79    call        @ClassCreate
 004B6F7E    mov         dword ptr [ebp-0C],ecx
 004B6F81    mov         byte ptr [ebp-5],dl
 004B6F84    mov         dword ptr [ebp-4],eax
 004B6F87    mov         ecx,dword ptr [ebp-0C]
 004B6F8A    xor         edx,edx
 004B6F8C    mov         eax,dword ptr [ebp-4]
 004B6F8F    call        004B59CC
 004B6F94    mov         eax,dword ptr [ebp-0C]
 004B6F97    mov         edx,dword ptr ds:[56B0C4];0x0 gvar_0056B0C4
 004B6F9D    call        @IsClass
 004B6FA2    test        al,al
>004B6FA4    je          004B6FB2
 004B6FA6    mov         eax,dword ptr [ebp-4]
 004B6FA9    mov         edx,dword ptr [ebp-0C]
 004B6FAC    mov         dword ptr [eax+318],edx;TCustomizeActionToolBar.FActionBar:TCustomActionToolBar
 004B6FB2    mov         eax,dword ptr [ebp-4]
 004B6FB5    cmp         byte ptr [ebp-5],0
>004B6FB9    je          004B6FCA
 004B6FBB    call        @AfterConstruction
 004B6FC0    pop         dword ptr fs:[0]
 004B6FC7    add         esp,0C
 004B6FCA    mov         eax,dword ptr [ebp-4]
 004B6FCD    mov         esp,ebp
 004B6FCF    pop         ebp
 004B6FD0    ret
*}
end;

//004B6FD4
destructor TCustomizeActionToolBar.Destroy;
begin
{*
 004B6FD4    push        ebp
 004B6FD5    mov         ebp,esp
 004B6FD7    add         esp,0FFFFFFF8
 004B6FDA    call        @BeforeDestruction
 004B6FDF    mov         byte ptr [ebp-5],dl
 004B6FE2    mov         dword ptr [ebp-4],eax
 004B6FE5    mov         eax,dword ptr [ebp-4]
 004B6FE8    mov         eax,dword ptr [eax+320]
 004B6FEE    call        TObject.Free
 004B6FF3    mov         dl,byte ptr [ebp-5]
 004B6FF6    and         dl,0FC
 004B6FF9    mov         eax,dword ptr [ebp-4]
 004B6FFC    call        TCustomActionPopupMenu.Destroy
 004B7001    cmp         byte ptr [ebp-5],0
>004B7005    jle         004B700F
 004B7007    mov         eax,dword ptr [ebp-4]
 004B700A    call        @ClassDestroy
 004B700F    pop         ecx
 004B7010    pop         ecx
 004B7011    pop         ebp
 004B7012    ret
*}
end;

//004B7014
{*function sub_004B7014(?:?; ?:?):?;
begin
 004B7014    push        ebp
 004B7015    mov         ebp,esp
 004B7017    add         esp,0FFFFFFF0
 004B701A    mov         dword ptr [ebp-0C],ecx
 004B701D    mov         dword ptr [ebp-8],edx
 004B7020    mov         dword ptr [ebp-4],eax
 004B7023    mov         ecx,dword ptr [ebp-0C]
 004B7026    mov         edx,dword ptr [ebp-8]
 004B7029    mov         eax,dword ptr [ebp-4]
 004B702C    call        004B6C6C
 004B7031    mov         byte ptr [ebp-0D],al
 004B7034    mov         eax,dword ptr [ebp-4]
 004B7037    cmp         dword ptr [eax+2B0],0;TCustomizeActionToolBar.FPopupStack:TMenuStack
>004B703E    je          004B7056
 004B7040    mov         eax,dword ptr [ebp-4]
 004B7043    mov         eax,dword ptr [eax+2B0];TCustomizeActionToolBar.FPopupStack:TMenuStack
 004B7049    call        004377BC
 004B704E    test        eax,eax
>004B7050    jle         004B7056
 004B7052    mov         byte ptr [ebp-0D],0
 004B7056    mov         al,byte ptr [ebp-0D]
 004B7059    mov         esp,ebp
 004B705B    pop         ebp
 004B705C    ret
end;*}

//004B7060
procedure sub_004B7060;
begin
{*
 004B7060    push        ebp
 004B7061    mov         ebp,esp
 004B7063    push        ecx
 004B7064    mov         dword ptr [ebp-4],eax
 004B7067    pop         ecx
 004B7068    pop         ebp
 004B7069    ret
*}
end;

//004B706C
{*procedure TCustomizeActionToolBar.sub_004B706C(?:?);
begin
 004B706C    push        ebp
 004B706D    mov         ebp,esp
 004B706F    add         esp,0FFFFFFF8
 004B7072    mov         dword ptr [ebp-8],edx
 004B7075    mov         dword ptr [ebp-4],eax
 004B7078    mov         eax,dword ptr [ebp-4]
 004B707B    mov         edx,dword ptr [eax]
 004B707D    call        dword ptr [edx+17C];TCustomizeActionToolBar.sub_004B6BCC
 004B7083    pop         ecx
 004B7084    pop         ecx
 004B7085    pop         ebp
 004B7086    ret
end;*}

//004B7088
{*function sub_004B7088(?:?):?;
begin
 004B7088    push        ebp
 004B7089    mov         ebp,esp
 004B708B    add         esp,0FFFFFFF4
 004B708E    mov         dword ptr [ebp-8],edx
 004B7091    mov         dword ptr [ebp-4],eax
 004B7094    cmp         dword ptr [ebp-8],0
>004B7098    jl          004B70C8
 004B709A    mov         eax,dword ptr [ebp-4]
 004B709D    mov         edx,dword ptr [eax]
 004B709F    call        dword ptr [edx+114];TCustomizeActionToolBar.sub_004B70D4
 004B70A5    cmp         eax,dword ptr [ebp-8]
>004B70A8    jle         004B70C8
 004B70AA    mov         eax,dword ptr [ebp-4]
 004B70AD    mov         eax,dword ptr [eax+210];TCustomizeActionToolBar.FActionClient:TActionClient
 004B70B3    call        TActionClient.GetItems
 004B70B8    mov         edx,dword ptr [ebp-8]
 004B70BB    call        004BF258
 004B70C0    mov         eax,dword ptr [eax+40]
 004B70C3    mov         dword ptr [ebp-0C],eax
>004B70C6    jmp         004B70CD
 004B70C8    xor         eax,eax
 004B70CA    mov         dword ptr [ebp-0C],eax
 004B70CD    mov         eax,dword ptr [ebp-0C]
 004B70D0    mov         esp,ebp
 004B70D2    pop         ebp
 004B70D3    ret
end;*}

//004B70D4
{*function sub_004B70D4:?;
begin
 004B70D4    push        ebp
 004B70D5    mov         ebp,esp
 004B70D7    add         esp,0FFFFFFF8
 004B70DA    mov         dword ptr [ebp-4],eax
 004B70DD    mov         eax,dword ptr [ebp-4]
 004B70E0    cmp         dword ptr [eax+210],0;TCustomizeActionToolBar.FActionClient:TActionClient
>004B70E7    je          004B7101
 004B70E9    mov         eax,dword ptr [ebp-4]
 004B70EC    mov         eax,dword ptr [eax+210];TCustomizeActionToolBar.FActionClient:TActionClient
 004B70F2    call        TActionClient.GetItems
 004B70F7    call        0042158C
 004B70FC    mov         dword ptr [ebp-8],eax
>004B70FF    jmp         004B7106
 004B7101    xor         eax,eax
 004B7103    mov         dword ptr [ebp-8],eax
 004B7106    mov         eax,dword ptr [ebp-8]
 004B7109    pop         ecx
 004B710A    pop         ecx
 004B710B    pop         ebp
 004B710C    ret
end;*}

//004B7110
{*function sub_004B7110(?:?; ?:?):?;
begin
 004B7110    push        ebp
 004B7111    mov         ebp,esp
 004B7113    add         esp,0FFFFFFEC
 004B7116    push        ebx
 004B7117    mov         dword ptr [ebp-4],eax
 004B711A    xor         eax,eax
 004B711C    mov         dword ptr [ebp-8],eax
 004B711F    mov         eax,dword ptr [ebp+8]
 004B7122    mov         eax,dword ptr [eax-4]
 004B7125    mov         eax,dword ptr [eax+2C4]
 004B712B    mov         eax,dword ptr [eax+2AC]
 004B7131    call        004C6C1C
 004B7136    mov         eax,dword ptr [eax+210]
 004B713C    call        TActionClient.GetItems
 004B7141    mov         dword ptr [ebp-10],eax
 004B7144    mov         eax,dword ptr [ebp-10]
 004B7147    call        0042158C
 004B714C    dec         eax
 004B714D    test        eax,eax
>004B714F    jl          004B7192
 004B7151    inc         eax
 004B7152    mov         dword ptr [ebp-14],eax
 004B7155    mov         dword ptr [ebp-0C],0
 004B715C    mov         edx,dword ptr [ebp-0C]
 004B715F    mov         eax,dword ptr [ebp-10]
 004B7162    call        004BF258
 004B7167    call        TActionClientItem.GetAction
 004B716C    mov         ebx,eax
 004B716E    mov         eax,dword ptr [ebp-4]
 004B7171    call        TActionClientItem.GetAction
 004B7176    cmp         ebx,eax
>004B7178    jne         004B718A
 004B717A    mov         edx,dword ptr [ebp-0C]
 004B717D    mov         eax,dword ptr [ebp-10]
 004B7180    call        004BF258
 004B7185    mov         dword ptr [ebp-8],eax
>004B7188    jmp         004B7192
 004B718A    inc         dword ptr [ebp-0C]
 004B718D    dec         dword ptr [ebp-14]
>004B7190    jne         004B715C
 004B7192    mov         eax,dword ptr [ebp-8]
 004B7195    pop         ebx
 004B7196    mov         esp,ebp
 004B7198    pop         ebp
 004B7199    ret
end;*}

//004B719C
{*function sub_004B719C(?:?):?;
begin
 004B719C    push        ebp
 004B719D    mov         ebp,esp
 004B719F    add         esp,0FFFFFFEC
 004B71A2    push        ebx
 004B71A3    mov         dword ptr [ebp-8],edx
 004B71A6    mov         dword ptr [ebp-4],eax
 004B71A9    mov         eax,dword ptr [ebp-8]
 004B71AC    mov         edx,dword ptr [eax]
 004B71AE    call        dword ptr [edx+0C8]
 004B71B4    test        al,al
>004B71B6    jne         004B72B6
 004B71BC    mov         eax,dword ptr [ebp-4]
 004B71BF    mov         edx,dword ptr [eax]
 004B71C1    call        dword ptr [edx+198];TCustomizeActionToolBar.sub_004B7740
 004B71C7    mov         edx,eax
 004B71C9    mov         eax,dword ptr [ebp-8]
 004B71CC    call        @IsClass
 004B71D1    test        al,al
>004B71D3    je          004B72B6
 004B71D9    push        ebp
 004B71DA    mov         eax,dword ptr [ebp-8]
 004B71DD    mov         eax,dword ptr [eax+16C]
 004B71E3    call        004B7110
 004B71E8    pop         ecx
 004B71E9    mov         dword ptr [ebp-10],eax
 004B71EC    cmp         dword ptr [ebp-10],0
>004B71F0    je          004B721B
 004B71F2    mov         eax,dword ptr [ebp-10]
 004B71F5    mov         dl,byte ptr [eax+30]
 004B71F8    xor         dl,1
 004B71FB    mov         eax,dword ptr [ebp-10]
 004B71FE    mov         ecx,dword ptr [eax]
 004B7200    call        dword ptr [ecx+2C]
 004B7203    mov         eax,dword ptr [ebp-10]
 004B7206    cmp         byte ptr [eax+30],0
>004B720A    jne         004B726A
 004B720C    mov         eax,dword ptr [ebp-10]
 004B720F    mov         eax,dword ptr [eax+40]
 004B7212    xor         edx,edx
 004B7214    call        TImage.SetVisible
>004B7219    jmp         004B726A
 004B721B    mov         eax,dword ptr [ebp-8]
 004B721E    mov         eax,dword ptr [eax+16C]
 004B7224    call        TCollectionItem.GetIndex
 004B7229    push        eax
 004B722A    mov         eax,dword ptr [ebp-4]
 004B722D    mov         eax,dword ptr [eax+2C4];TCustomizeActionToolBar.FRootMenu:TCustomActionMenuBar
 004B7233    mov         eax,dword ptr [eax+2AC];TCustomActionMenuBar.FParentControl:TCustomActionControl
 004B7239    call        004C6C1C
 004B723E    mov         eax,dword ptr [eax+210]
 004B7244    call        TActionClient.GetItems
 004B7249    pop         edx
 004B724A    call        004217D8
 004B724F    mov         dword ptr [ebp-10],eax
 004B7252    mov         eax,dword ptr [ebp-8]
 004B7255    mov         eax,dword ptr [eax+16C]
 004B725B    call        TActionClientItem.GetAction
 004B7260    mov         edx,eax
 004B7262    mov         eax,dword ptr [ebp-10]
 004B7265    call        TActionClientItem.SetAction
 004B726A    mov         eax,dword ptr [ebp-4]
 004B726D    mov         eax,dword ptr [eax+318];TCustomizeActionToolBar.FActionBar:TCustomActionToolBar
 004B7273    call        004878BC
 004B7278    mov         eax,dword ptr [ebp-4]
 004B727B    mov         eax,dword ptr [eax+318];TCustomizeActionToolBar.FActionBar:TCustomActionToolBar
 004B7281    mov         dword ptr [ebp-14],eax
 004B7284    mov         eax,dword ptr [ebp-14]
 004B7287    mov         eax,dword ptr [eax+48]
 004B728A    push        eax
 004B728B    mov         eax,dword ptr [ebp-14]
 004B728E    mov         eax,dword ptr [eax+4C]
 004B7291    push        eax
 004B7292    mov         eax,dword ptr [ebp-4]
 004B7295    mov         eax,dword ptr [eax+318];TCustomizeActionToolBar.FActionBar:TCustomActionToolBar
 004B729B    mov         edx,dword ptr [ebp-14]
 004B729E    mov         ecx,dword ptr [edx+44]
 004B72A1    mov         edx,dword ptr [ebp-14]
 004B72A4    mov         edx,dword ptr [edx+40]
 004B72A7    mov         ebx,dword ptr [eax]
 004B72A9    call        dword ptr [ebx+84]
 004B72AF    xor         eax,eax
 004B72B1    mov         dword ptr [ebp-0C],eax
>004B72B4    jmp         004B730E
 004B72B6    mov         eax,dword ptr [ebp-4]
 004B72B9    mov         eax,dword ptr [eax+324];TCustomizeActionToolBar.FResetItem:TActionClientItem
 004B72BF    mov         edx,dword ptr [ebp-8]
 004B72C2    cmp         eax,dword ptr [edx+16C]
>004B72C8    jne         004B7300
 004B72CA    mov         eax,dword ptr [ebp-4]
 004B72CD    mov         edx,dword ptr [eax]
 004B72CF    call        dword ptr [edx+17C];TCustomizeActionToolBar.sub_004B6BCC
 004B72D5    mov         eax,dword ptr [ebp-8]
 004B72D8    mov         eax,dword ptr [eax+16C]
 004B72DE    mov         dword ptr [ebp-0C],eax
 004B72E1    push        0
 004B72E3    push        0
 004B72E5    push        0B409
 004B72EA    mov         eax,dword ptr [ebp-4]
 004B72ED    mov         eax,dword ptr [eax+318];TCustomizeActionToolBar.FActionBar:TCustomActionToolBar
 004B72F3    call        TWinControl.GetHandle
 004B72F8    push        eax
 004B72F9    call        user32.PostMessageA
>004B72FE    jmp         004B730E
 004B7300    mov         edx,dword ptr [ebp-8]
 004B7303    mov         eax,dword ptr [ebp-4]
 004B7306    call        004B37D4
 004B730B    mov         dword ptr [ebp-0C],eax
 004B730E    mov         eax,dword ptr [ebp-0C]
 004B7311    pop         ebx
 004B7312    mov         esp,ebp
 004B7314    pop         ebp
 004B7315    ret
end;*}

//004B7318
{*procedure sub_004B7318(?:?; ?:?; ?:?);
begin
 004B7318    push        ebp
 004B7319    mov         ebp,esp
 004B731B    add         esp,0FFFFFFF0
 004B731E    mov         dword ptr [ebp-8],ecx
 004B7321    mov         dword ptr [ebp-10],edx
 004B7324    mov         dword ptr [ebp-4],eax
 004B7327    mov         eax,dword ptr [ebp-8]
 004B732A    mov         edx,dword ptr ds:[4BB220];TActionClientItem
 004B7330    call        @IsClass
 004B7335    test        al,al
>004B7337    je          004B738F
 004B7339    mov         eax,dword ptr [ebp-8]
 004B733C    mov         edx,dword ptr ds:[4BB220];TActionClientItem
 004B7342    call        @AsClass
 004B7347    mov         dword ptr [ebp-0C],eax
 004B734A    mov         eax,dword ptr [ebp-0C]
 004B734D    call        004BE5A0
 004B7352    mov         edx,dword ptr [ebp-4]
 004B7355    cmp         eax,dword ptr [edx+31C];TCustomizeActionToolBar.FAddlItem:TActionClientItem
>004B735B    jne         004B736F
 004B735D    mov         eax,dword ptr [ebp-4]
 004B7360    mov         edx,dword ptr [eax]
 004B7362    call        dword ptr [edx+198];TCustomizeActionToolBar.sub_004B7740
 004B7368    mov         edx,dword ptr [ebp+8]
 004B736B    mov         dword ptr [edx],eax
>004B736D    jmp         004B738F
 004B736F    mov         eax,dword ptr [ebp-8]
 004B7372    mov         edx,dword ptr ds:[4BB220];TActionClientItem
 004B7378    call        @AsClass
 004B737D    mov         edx,eax
 004B737F    mov         eax,dword ptr [ebp-4]
 004B7382    mov         ecx,dword ptr [eax]
 004B7384    call        dword ptr [ecx+110];TCustomizeActionToolBar.sub_004C2EB8
 004B738A    mov         edx,dword ptr [ebp+8]
 004B738D    mov         dword ptr [edx],eax
 004B738F    mov         esp,ebp
 004B7391    pop         ebp
 004B7392    ret         4
end;*}

//004B7398
{*function sub_004B7398:?;
begin
 004B7398    push        ebp
 004B7399    mov         ebp,esp
 004B739B    add         esp,0FFFFFFF8
 004B739E    mov         dword ptr [ebp-4],eax
 004B73A1    mov         eax,dword ptr [ebp-4]
 004B73A4    call        004B424C
 004B73A9    mov         dword ptr [ebp-8],eax
 004B73AC    mov         eax,dword ptr [ebp-8]
 004B73AF    mov         edx,dword ptr [ebp-4]
 004B73B2    mov         dword ptr [eax+23C],edx
 004B73B8    mov         edx,dword ptr [edx]
 004B73BA    mov         edx,dword ptr [edx+19C];TCustomizeActionToolBar.FWinControls:TList
 004B73C0    mov         dword ptr [eax+238],edx
 004B73C6    mov         eax,dword ptr [ebp-4]
 004B73C9    mov         dl,byte ptr [eax+314];TCustomizeActionToolBar.FShadow:Boolean
 004B73CF    mov         eax,dword ptr [ebp-8]
 004B73D2    call        004B6E0C
 004B73D7    mov         eax,dword ptr [ebp-8]
 004B73DA    pop         ecx
 004B73DB    pop         ecx
 004B73DC    pop         ebp
 004B73DD    ret
end;*}

//004B73E0
{*procedure sub_004B73E0(?:?);
begin
 004B73E0    push        ebp
 004B73E1    mov         ebp,esp
 004B73E3    add         esp,0FFFFFFF8
 004B73E6    mov         dword ptr [ebp-4],eax
 004B73E9    mov         eax,dword ptr [ebp-4]
 004B73EC    call        004BF124
 004B73F1    mov         dword ptr [ebp-8],eax
 004B73F4    mov         edx,4B7418;'-'
 004B73F9    mov         eax,dword ptr [ebp-8]
 004B73FC    call        TActionClientItem.SetCaption
 004B7401    or          edx,0FFFFFFFF
 004B7404    mov         eax,dword ptr [ebp-8]
 004B7407    call        TActionClientItem.SetUsageCount
 004B740C    pop         ecx
 004B740D    pop         ecx
 004B740E    pop         ebp
 004B740F    ret
end;*}

//004B741C
{*procedure sub_004B741C(?:?; ?:?; ?:?);
begin
 004B741C    push        ebp
 004B741D    mov         ebp,esp
 004B741F    add         esp,0FFFFFFDC
 004B7422    push        ebx
 004B7423    mov         dword ptr [ebp-0C],ecx
 004B7426    mov         dword ptr [ebp-8],edx
 004B7429    mov         dword ptr [ebp-4],eax
 004B742C    mov         eax,dword ptr [ebp-0C]
 004B742F    test        eax,eax
>004B7431    jl          004B74D9
 004B7437    inc         eax
 004B7438    mov         dword ptr [ebp-20],eax
 004B743B    mov         dword ptr [ebp-10],0
 004B7442    mov         byte ptr [ebp-15],0
 004B7446    mov         eax,dword ptr [ebp-4]
 004B7449    call        0042158C
 004B744E    dec         eax
 004B744F    test        eax,eax
>004B7451    jl          004B7492
 004B7453    inc         eax
 004B7454    mov         dword ptr [ebp-24],eax
 004B7457    mov         dword ptr [ebp-14],0
 004B745E    mov         edx,dword ptr [ebp-14]
 004B7461    mov         eax,dword ptr [ebp-4]
 004B7464    call        004BF258
 004B7469    call        TActionClientItem.GetAction
 004B746E    mov         ebx,eax
 004B7470    mov         edx,dword ptr [ebp-10]
 004B7473    mov         eax,dword ptr [ebp-8]
 004B7476    call        004BF258
 004B747B    call        TActionClientItem.GetAction
 004B7480    cmp         ebx,eax
>004B7482    jne         004B748A
 004B7484    mov         byte ptr [ebp-15],1
>004B7488    jmp         004B7492
 004B748A    inc         dword ptr [ebp-14]
 004B748D    dec         dword ptr [ebp-24]
>004B7490    jne         004B745E
 004B7492    cmp         byte ptr [ebp-15],0
>004B7496    jne         004B74CD
 004B7498    mov         eax,dword ptr [ebp-4]
 004B749B    call        004BF124
 004B74A0    mov         dword ptr [ebp-1C],eax
 004B74A3    mov         edx,dword ptr [ebp-10]
 004B74A6    mov         eax,dword ptr [ebp-8]
 004B74A9    call        004BF258
 004B74AE    mov         edx,eax
 004B74B0    mov         eax,dword ptr [ebp-1C]
 004B74B3    mov         ecx,dword ptr [eax]
 004B74B5    call        dword ptr [ecx+8]
 004B74B8    xor         edx,edx
 004B74BA    mov         eax,dword ptr [ebp-1C]
 004B74BD    call        TActionClient.SetItems
 004B74C2    or          edx,0FFFFFFFF
 004B74C5    mov         eax,dword ptr [ebp-1C]
 004B74C8    call        TActionClientItem.SetUsageCount
 004B74CD    inc         dword ptr [ebp-10]
 004B74D0    dec         dword ptr [ebp-20]
>004B74D3    jne         004B7442
 004B74D9    pop         ebx
 004B74DA    mov         esp,ebp
 004B74DC    pop         ebp
 004B74DD    ret
end;*}

//004B74E0
{*procedure sub_004B74E0(?:?);
begin
 004B74E0    push        ebp
 004B74E1    mov         ebp,esp
 004B74E3    add         esp,0FFFFFFDC
 004B74E6    xor         ecx,ecx
 004B74E8    mov         dword ptr [ebp-24],ecx
 004B74EB    mov         dword ptr [ebp-20],ecx
 004B74EE    mov         dword ptr [ebp-8],edx
 004B74F1    mov         dword ptr [ebp-4],eax
 004B74F4    xor         eax,eax
 004B74F6    push        ebp
 004B74F7    push        4B7734
 004B74FC    push        dword ptr fs:[eax]
 004B74FF    mov         dword ptr fs:[eax],esp
 004B7502    cmp         dword ptr [ebp-8],0
>004B7506    je          004B76FC
 004B750C    mov         eax,dword ptr [ebp-4]
 004B750F    cmp         dword ptr [eax+318],0;TCustomizeActionToolBar.FActionBar:TCustomActionToolBar
>004B7516    je          004B76FC
 004B751C    xor         eax,eax
 004B751E    mov         dword ptr [ebp-0C],eax
 004B7521    mov         eax,dword ptr [ebp-4]
 004B7524    mov         eax,dword ptr [eax+318];TCustomizeActionToolBar.FActionBar:TCustomActionToolBar
 004B752A    mov         eax,dword ptr [eax+214]
 004B7530    cmp         dword ptr [eax+88],0
>004B7537    je          004B756C
 004B7539    mov         eax,dword ptr [ebp-4]
 004B753C    mov         eax,dword ptr [eax+318];TCustomizeActionToolBar.FActionBar:TCustomActionToolBar
 004B7542    mov         dword ptr [ebp-10],eax
 004B7545    mov         eax,dword ptr [ebp-10]
 004B7548    mov         eax,dword ptr [eax+210]
 004B754E    call        TCollectionItem.GetIndex
 004B7553    mov         edx,eax
 004B7555    mov         eax,dword ptr [ebp-10]
 004B7558    mov         eax,dword ptr [eax+214]
 004B755E    mov         eax,dword ptr [eax+88]
 004B7564    call        004214D8
 004B7569    mov         dword ptr [ebp-0C],eax
 004B756C    cmp         dword ptr [ebp-0C],0
>004B7570    je          004B76FC
 004B7576    mov         eax,dword ptr [ebp-8]
 004B7579    call        TActionClient.GetItems
 004B757E    call        0042158C
 004B7583    test        eax,eax
>004B7585    jle         004B7596
 004B7587    push        ebp
 004B7588    mov         eax,dword ptr [ebp-8]
 004B758B    call        TActionClient.GetItems
 004B7590    call        004B73E0
 004B7595    pop         ecx
 004B7596    mov         eax,dword ptr [ebp-8]
 004B7599    call        TActionClient.GetItems
 004B759E    call        004BF124
 004B75A3    mov         edx,dword ptr [ebp-4]
 004B75A6    mov         dword ptr [edx+31C],eax;TCustomizeActionToolBar.FAddlItem:TActionClientItem
 004B75AC    lea         edx,[ebp-20]
 004B75AF    mov         eax,[0056E3DC];^SAddRemoveButtons:TResStringRec
 004B75B4    call        LoadResString
 004B75B9    mov         edx,dword ptr [ebp-20]
 004B75BC    mov         eax,dword ptr [ebp-4]
 004B75BF    mov         eax,dword ptr [eax+31C];TCustomizeActionToolBar.FAddlItem:TActionClientItem
 004B75C5    call        TActionClientItem.SetCaption
 004B75CA    push        ebp
 004B75CB    mov         eax,dword ptr [ebp-0C]
 004B75CE    call        TActionClient.GetItems
 004B75D3    call        0042158C
 004B75D8    dec         eax
 004B75D9    push        eax
 004B75DA    mov         eax,dword ptr [ebp-0C]
 004B75DD    call        TActionClient.GetItems
 004B75E2    push        eax
 004B75E3    mov         eax,dword ptr [ebp-4]
 004B75E6    mov         eax,dword ptr [eax+31C];TCustomizeActionToolBar.FAddlItem:TActionClientItem
 004B75EC    call        TActionClient.GetItems
 004B75F1    pop         edx
 004B75F2    pop         ecx
 004B75F3    call        004B741C
 004B75F8    pop         ecx
 004B75F9    mov         eax,dword ptr [ebp-4]
 004B75FC    mov         eax,dword ptr [eax+2C4];TCustomizeActionToolBar.FRootMenu:TCustomActionMenuBar
 004B7602    mov         eax,dword ptr [eax+2AC];TCustomActionMenuBar.FParentControl:TCustomActionControl
 004B7608    call        004C6C1C
 004B760D    mov         eax,dword ptr [eax+210]
 004B7613    mov         dword ptr [ebp-14],eax
 004B7616    push        ebp
 004B7617    mov         eax,dword ptr [ebp-14]
 004B761A    call        TActionClient.GetItems
 004B761F    call        0042158C
 004B7624    sub         eax,2
 004B7627    push        eax
 004B7628    mov         eax,dword ptr [ebp-14]
 004B762B    call        TActionClient.GetItems
 004B7630    push        eax
 004B7631    mov         eax,dword ptr [ebp-4]
 004B7634    mov         eax,dword ptr [eax+31C];TCustomizeActionToolBar.FAddlItem:TActionClientItem
 004B763A    call        TActionClient.GetItems
 004B763F    pop         edx
 004B7640    pop         ecx
 004B7641    call        004B741C
 004B7646    pop         ecx
 004B7647    mov         eax,dword ptr [ebp-0C]
 004B764A    call        TActionClient.GetItems
 004B764F    call        0042158C
 004B7654    test        eax,eax
>004B7656    jle         004B76FC
 004B765C    mov         ecx,dword ptr [ebp-4]
 004B765F    mov         dl,1
 004B7661    mov         eax,[00492C28];TCustomAction
 004B7666    call        TCustomAction.Create;TCustomAction.Create
 004B766B    mov         edx,dword ptr [ebp-4]
 004B766E    mov         dword ptr [edx+320],eax;TCustomizeActionToolBar.FResetAction:TCustomAction
 004B7674    mov         eax,dword ptr [ebp-4]
 004B7677    mov         eax,dword ptr [eax+320];TCustomizeActionToolBar.FResetAction:TCustomAction
 004B767D    mov         dword ptr [ebp-18],eax
 004B7680    lea         edx,[ebp-24]
 004B7683    mov         eax,[0056E4C8];^SResetActionToolBar:TResStringRec
 004B7688    call        LoadResString
 004B768D    mov         edx,dword ptr [ebp-24]
 004B7690    mov         eax,dword ptr [ebp-18]
 004B7693    call        TVirtualListAction.SetCaption
 004B7698    mov         eax,dword ptr [ebp-4]
 004B769B    mov         eax,dword ptr [eax+31C];TCustomizeActionToolBar.FAddlItem:TActionClientItem
 004B76A1    call        TActionClient.GetItems
 004B76A6    call        0042158C
 004B76AB    test        eax,eax
>004B76AD    jle         004B76BE
 004B76AF    push        ebp
 004B76B0    mov         eax,dword ptr [ebp-8]
 004B76B3    call        TActionClient.GetItems
 004B76B8    call        004B73E0
 004B76BD    pop         ecx
 004B76BE    mov         eax,dword ptr [ebp-8]
 004B76C1    call        TActionClient.GetItems
 004B76C6    call        004BF124
 004B76CB    mov         edx,dword ptr [ebp-4]
 004B76CE    mov         dword ptr [edx+324],eax;TCustomizeActionToolBar.FResetItem:TActionClientItem
 004B76D4    mov         eax,dword ptr [ebp-4]
 004B76D7    mov         eax,dword ptr [eax+324];TCustomizeActionToolBar.FResetItem:TActionClientItem
 004B76DD    mov         dword ptr [ebp-1C],eax
 004B76E0    mov         eax,dword ptr [ebp-4]
 004B76E3    mov         edx,dword ptr [eax+320];TCustomizeActionToolBar.FResetAction:TCustomAction
 004B76E9    mov         eax,dword ptr [ebp-1C]
 004B76EC    call        TActionClientItem.SetAction
 004B76F1    or          edx,0FFFFFFFF
 004B76F4    mov         eax,dword ptr [ebp-1C]
 004B76F7    call        TActionClientItem.SetUsageCount
 004B76FC    mov         edx,dword ptr [ebp-8]
 004B76FF    mov         eax,dword ptr [ebp-4]
 004B7702    call        004C319C
 004B7707    mov         eax,dword ptr [ebp-4]
 004B770A    mov         eax,dword ptr [eax+210];TCustomizeActionToolBar.FActionClient:TActionClient
 004B7710    call        TActionClient.GetItems
 004B7715    mov         byte ptr [eax+24],0
 004B7719    xor         eax,eax
 004B771B    pop         edx
 004B771C    pop         ecx
 004B771D    pop         ecx
 004B771E    mov         dword ptr fs:[eax],edx
 004B7721    push        4B773B
 004B7726    lea         eax,[ebp-24]
 004B7729    mov         edx,2
 004B772E    call        @LStrArrayClr
 004B7733    ret
>004B7734    jmp         @HandleFinally
>004B7739    jmp         004B7726
 004B773B    mov         esp,ebp
 004B773D    pop         ebp
 004B773E    ret
end;*}

//004B7740
{*function sub_004B7740:?;
begin
 004B7740    push        ebp
 004B7741    mov         ebp,esp
 004B7743    add         esp,0FFFFFFF8
 004B7746    mov         dword ptr [ebp-4],eax
 004B7749    mov         eax,dword ptr [ebp-4]
 004B774C    mov         edx,dword ptr [eax]
 004B774E    call        dword ptr [edx+148];TCustomizeActionToolBar.sub_004B5704
 004B7754    test        eax,eax
>004B7756    jne         004B7770
 004B7758    mov         eax,dword ptr [ebp-4]
 004B775B    mov         edx,dword ptr [eax]
 004B775D    call        dword ptr [edx+148];TCustomizeActionToolBar.sub_004B5704
 004B7763    mov         edx,dword ptr [ebp-4]
 004B7766    mov         ecx,dword ptr [eax]
 004B7768    call        dword ptr [ecx+10]
 004B776B    mov         dword ptr [ebp-8],eax
>004B776E    jmp         004B7789
 004B7770    mov         eax,[0056E1C8];^ActionBarStyles:TActionBarStyleList
 004B7775    mov         eax,dword ptr [eax]
 004B7777    xor         edx,edx
 004B7779    call        004C7318
 004B777E    mov         edx,dword ptr [ebp-4]
 004B7781    mov         ecx,dword ptr [eax]
 004B7783    call        dword ptr [ecx+10]
 004B7786    mov         dword ptr [ebp-8],eax
 004B7789    mov         eax,dword ptr [ebp-8]
 004B778C    pop         ecx
 004B778D    pop         ecx
 004B778E    pop         ebp
 004B778F    ret
end;*}

//004B7790
procedure sub_004B7790;
begin
{*
 004B7790    push        ebp
 004B7791    mov         ebp,esp
 004B7793    add         esp,0FFFFFFEC
 004B7796    mov         dword ptr [ebp-4],eax
 004B7799    mov         eax,dword ptr [ebp-4]
 004B779C    movzx       eax,byte ptr [eax+181];TCustomMDIMenuButton.FMouseInControl:Boolean
 004B77A3    mov         ax,word ptr [eax*2+56CB7C]
 004B77AB    mov         edx,dword ptr [ebp-4]
 004B77AE    movzx       edx,byte ptr [edx+188];TCustomMDIMenuButton.......FButtonStyle:TMDIButtonStyle
 004B77B5    or          ax,word ptr [edx*2+56CB74]
 004B77BD    mov         edx,dword ptr [ebp-4]
 004B77C0    cmp         byte ptr [edx+182],2;TCustomMDIMenuButton.FState:TButtonState
 004B77C7    sete        dl
 004B77CA    and         edx,7F
 004B77CD    or          ax,word ptr [edx*2+56CB80]
 004B77D5    movzx       eax,ax
 004B77D8    push        eax
 004B77D9    push        1
 004B77DB    lea         edx,[ebp-14]
 004B77DE    mov         eax,dword ptr [ebp-4]
 004B77E1    mov         ecx,dword ptr [eax]
 004B77E3    call        dword ptr [ecx+44];TCustomMDIMenuButton.sub_00482F5C
 004B77E6    lea         eax,[ebp-14]
 004B77E9    push        eax
 004B77EA    mov         eax,dword ptr [ebp-4]
 004B77ED    mov         eax,dword ptr [eax+160];TCustomMDIMenuButton...............................................
 004B77F3    call        0042F6A0
 004B77F8    push        eax
 004B77F9    call        user32.DrawFrameControl
 004B77FE    mov         esp,ebp
 004B7800    pop         ebp
 004B7801    ret
*}
end;

//004B7804
constructor sub_004B7804;
begin
{*
 004B7804    push        ebp
 004B7805    mov         ebp,esp
 004B7807    add         esp,0FFFFFFE8
 004B780A    test        dl,dl
>004B780C    je          004B7816
 004B780E    add         esp,0FFFFFFF0
 004B7811    call        @ClassCreate
 004B7816    mov         dword ptr [ebp-0C],ecx
 004B7819    mov         byte ptr [ebp-5],dl
 004B781C    mov         dword ptr [ebp-4],eax
 004B781F    mov         ecx,dword ptr [ebp-0C]
 004B7822    xor         edx,edx
 004B7824    mov         eax,dword ptr [ebp-4]
 004B7827    call        004B2C68
 004B782C    mov         eax,dword ptr [ebp-4]
 004B782F    mov         eax,dword ptr [eax+50];TCustomActionMainMenuBar.FControlStyle:TControlStyle
 004B7832    or          eax,dword ptr ds:[4B7910];0x10000 gvar_004B7910
 004B7838    mov         edx,dword ptr [ebp-4]
 004B783B    mov         dword ptr [edx+50],eax;TCustomActionMainMenuBar.FControlStyle:TControlStyle
 004B783E    mov         dl,byte ptr ds:[4B7910];0x0 gvar_004B7910
 004B7844    mov         eax,dword ptr [ebp-4]
 004B7847    call        TToolBar.SetEdgeBorders
 004B784C    mov         dl,1
 004B784E    mov         eax,dword ptr [ebp-4]
 004B7851    call        TToolBar.SetEdgeInner
 004B7856    mov         dl,2
 004B7858    mov         eax,dword ptr [ebp-4]
 004B785B    call        TToolBar.SetEdgeOuter
 004B7860    push        0
 004B7862    lea         eax,[ebp-10]
 004B7865    push        eax
 004B7866    push        0
 004B7868    push        100A
 004B786D    call        user32.SystemParametersInfoA
 004B7872    mov         dl,1
 004B7874    mov         eax,dword ptr [ebp-4]
 004B7877    call        TImage.SetAlign
 004B787C    cmp         dword ptr [ebp-10],1
 004B7880    sbb         edx,edx
 004B7882    inc         edx
 004B7883    mov         eax,dword ptr [ebp-4]
 004B7886    mov         ecx,dword ptr [eax]
 004B7888    call        dword ptr [ecx+138];TCustomActionMainMenuBar.sub_004B4B14
 004B788E    mov         eax,dword ptr [ebp-4]
 004B7891    mov         byte ptr [eax+218],0;TCustomActionMainMenuBar.FAllowHiding:Boolean
 004B7898    mov         edx,1
 004B789D    mov         eax,dword ptr [ebp-4]
 004B78A0    call        004C3BC4
 004B78A5    mov         edx,1D
 004B78AA    mov         eax,dword ptr [ebp-4]
 004B78AD    call        TToolButton.SetHeight
 004B78B2    xor         edx,edx
 004B78B4    mov         eax,dword ptr [ebp-4]
 004B78B7    call        TPanel.SetTabStop
 004B78BC    mov         eax,dword ptr [ebp-4]
 004B78BF    mov         byte ptr [eax+30E],1;TCustomActionMainMenuBar.FShadows:Boolean
 004B78C6    mov         eax,dword ptr [ebp-4]
 004B78C9    mov         dword ptr [ebp-14],eax
 004B78CC    mov         dword ptr [ebp-18],4B87D4;sub_004B87D4
 004B78D3    lea         eax,[ebp-18]
 004B78D6    push        eax
 004B78D7    push        0
 004B78D9    push        0B020
 004B78DE    mov         eax,[0056E3C0];^Application:TApplication
 004B78E3    mov         eax,dword ptr [eax]
 004B78E5    mov         eax,dword ptr [eax+30];TApplication.FHandle:HWND
 004B78E8    push        eax
 004B78E9    call        user32.SendMessageA
 004B78EE    mov         eax,dword ptr [ebp-4]
 004B78F1    cmp         byte ptr [ebp-5],0
>004B78F5    je          004B7906
 004B78F7    call        @AfterConstruction
 004B78FC    pop         dword ptr fs:[0]
 004B7903    add         esp,0C
 004B7906    mov         eax,dword ptr [ebp-4]
 004B7909    mov         esp,ebp
 004B790B    pop         ebp
 004B790C    ret
*}
end;

//004B7914
destructor TCustomActionMainMenuBar.Destroy;
begin
{*
 004B7914    push        ebp
 004B7915    mov         ebp,esp
 004B7917    add         esp,0FFFFFFF0
 004B791A    call        @BeforeDestruction
 004B791F    mov         byte ptr [ebp-5],dl
 004B7922    mov         dword ptr [ebp-4],eax
 004B7925    mov         eax,dword ptr [ebp-4]
 004B7928    mov         dword ptr [ebp-0C],eax
 004B792B    mov         dword ptr [ebp-10],4B87D4;sub_004B87D4
 004B7932    lea         eax,[ebp-10]
 004B7935    push        eax
 004B7936    push        1
 004B7938    push        0B020
 004B793D    mov         eax,[0056E3C0];^Application:TApplication
 004B7942    mov         eax,dword ptr [eax]
 004B7944    mov         eax,dword ptr [eax+30];TApplication.FHandle:HWND
 004B7947    push        eax
 004B7948    call        user32.SendMessageA
 004B794D    mov         dl,byte ptr [ebp-5]
 004B7950    and         dl,0FC
 004B7953    mov         eax,dword ptr [ebp-4]
 004B7956    call        TCustomActionMenuBar.Destroy
 004B795B    cmp         byte ptr [ebp-5],0
>004B795F    jle         004B7969
 004B7961    mov         eax,dword ptr [ebp-4]
 004B7964    call        @ClassDestroy
 004B7969    mov         esp,ebp
 004B796B    pop         ebp
 004B796C    ret
*}
end;

//004B7970
procedure sub_004B7970;
begin
{*
 004B7970    push        ebp
 004B7971    mov         ebp,esp
 004B7973    push        ecx
 004B7974    mov         dword ptr [ebp-4],eax
 004B7977    mov         eax,dword ptr [ebp-4]
 004B797A    call        004B3158
 004B797F    mov         eax,dword ptr [ebp-4]
 004B7982    call        004B31B8
 004B7987    pop         ecx
 004B7988    pop         ebp
 004B7989    ret
*}
end;

//004B798C
{*procedure TCustomActionMainMenuBar.WMKeyDown(?:?);
begin
 004B798C    push        ebp
 004B798D    mov         ebp,esp
 004B798F    add         esp,0FFFFFFF4
 004B7992    push        ebx
 004B7993    mov         dword ptr [ebp-8],edx
 004B7996    mov         dword ptr [ebp-4],eax
 004B7999    mov         eax,dword ptr [ebp-4]
 004B799C    mov         al,byte ptr [eax+227];TCustomActionMainMenuBar.FOrientation:TBarOrientation
 004B79A2    sub         al,2
>004B79A4    jb          004B79B3
 004B79A6    sub         al,2
>004B79A8    jb          004B7AB3
>004B79AE    jmp         004B7B02
 004B79B3    mov         eax,dword ptr [ebp-8]
 004B79B6    mov         ax,word ptr [eax+4]
 004B79BA    sub         ax,25
>004B79BE    je          004B79EE
 004B79C0    dec         ax
>004B79C3    je          004B7A08
 004B79C5    dec         ax
>004B79C8    je          004B79D4
 004B79CA    dec         ax
>004B79CD    je          004B7A08
>004B79CF    jmp         004B7B02
 004B79D4    mov         eax,dword ptr [ebp-4]
 004B79D7    cmp         byte ptr [eax+227],0;TCustomActionMainMenuBar.FOrientation:TBarOrientation
 004B79DE    sete        dl
 004B79E1    mov         eax,dword ptr [ebp-4]
 004B79E4    call        004B48E4
>004B79E9    jmp         004B7B02
 004B79EE    mov         eax,dword ptr [ebp-4]
 004B79F1    cmp         byte ptr [eax+227],0;TCustomActionMainMenuBar.FOrientation:TBarOrientation
 004B79F8    setne       dl
 004B79FB    mov         eax,dword ptr [ebp-4]
 004B79FE    call        004B48E4
>004B7A03    jmp         004B7B02
 004B7A08    mov         eax,dword ptr [ebp-4]
 004B7A0B    call        004B4028
 004B7A10    test        eax,eax
>004B7A12    je          004B7B02
 004B7A18    mov         eax,dword ptr [ebp-4]
 004B7A1B    mov         edx,dword ptr [eax]
 004B7A1D    call        dword ptr [edx+104];TCustomActionMainMenuBar.sub_004B3EB0
 004B7A23    test        al,al
>004B7A25    je          004B7A5F
 004B7A27    mov         eax,dword ptr [ebp-4]
 004B7A2A    call        004B4028
 004B7A2F    call        004BE56C
 004B7A34    test        al,al
>004B7A36    jne         004B7A5F
 004B7A38    call        004A069C
 004B7A3D    test        al,4
>004B7A3F    je          004B7B0D
 004B7A45    mov         eax,dword ptr [ebp-4]
 004B7A48    call        004B4028
 004B7A4D    call        TActionClient.GetItems
 004B7A52    call        004BF124
 004B7A57    mov         eax,dword ptr [ebp-4]
 004B7A5A    call        004BBF24
 004B7A5F    mov         eax,dword ptr [ebp-4]
 004B7A62    call        004B4028
 004B7A67    call        004BE56C
 004B7A6C    test        al,al
>004B7A6E    je          004B7B02
 004B7A74    mov         eax,dword ptr [ebp-4]
 004B7A77    call        004B4028
 004B7A7C    mov         ecx,dword ptr [eax+40]
 004B7A7F    mov         edx,dword ptr [ebp-4]
 004B7A82    mov         eax,dword ptr [ebp-4]
 004B7A85    mov         ebx,dword ptr [eax]
 004B7A87    call        dword ptr [ebx+14C];TCustomActionMainMenuBar.sub_004B33C0
 004B7A8D    mov         dword ptr [ebp-0C],eax
 004B7A90    mov         eax,dword ptr [ebp-0C]
 004B7A93    mov         edx,dword ptr [eax]
 004B7A95    call        dword ptr [edx+140]
 004B7A9B    mov         eax,dword ptr [eax+40]
 004B7A9E    mov         dl,1
 004B7AA0    mov         ecx,dword ptr [eax]
 004B7AA2    call        dword ptr [ecx+0D8]
 004B7AA8    mov         eax,dword ptr [ebp-8]
 004B7AAB    mov         word ptr [eax+4],0
>004B7AB1    jmp         004B7B0D
 004B7AB3    mov         eax,dword ptr [ebp-8]
 004B7AB6    mov         ax,word ptr [eax+4]
 004B7ABA    sub         ax,25
>004B7ABE    je          004B7AF8
 004B7AC0    sub         ax,2
>004B7AC4    jne         004B7B02
 004B7AC6    mov         eax,dword ptr [ebp-4]
 004B7AC9    call        004B4028
 004B7ACE    test        eax,eax
>004B7AD0    je          004B7B02
 004B7AD2    mov         eax,dword ptr [ebp-4]
 004B7AD5    call        004B4028
 004B7ADA    call        004BE56C
 004B7ADF    test        al,al
>004B7AE1    je          004B7B02
 004B7AE3    mov         eax,dword ptr [ebp-4]
 004B7AE6    call        004B4028
 004B7AEB    mov         eax,dword ptr [eax+40]
 004B7AEE    mov         edx,dword ptr [eax]
 004B7AF0    call        dword ptr [edx+0E0]
>004B7AF6    jmp         004B7B02
 004B7AF8    mov         dl,1
 004B7AFA    mov         eax,dword ptr [ebp-4]
 004B7AFD    call        004B48E4
 004B7B02    mov         edx,dword ptr [ebp-8]
 004B7B05    mov         eax,dword ptr [ebp-4]
 004B7B08    call        TCustomActionMenuBar.WMKeyDown
 004B7B0D    pop         ebx
 004B7B0E    mov         esp,ebp
 004B7B10    pop         ebp
 004B7B11    ret
end;*}

//004B7B14
procedure TCustomActionMainMenuBar.sub_0048BFC8;
begin
{*
 004B7B14    push        ebp
 004B7B15    mov         ebp,esp
 004B7B17    add         esp,0FFFFFFF8
 004B7B1A    mov         dword ptr [ebp-4],eax
 004B7B1D    mov         byte ptr [ebp-5],0
 004B7B21    mov         al,byte ptr [ebp-5]
 004B7B24    pop         ecx
 004B7B25    pop         ecx
 004B7B26    pop         ebp
 004B7B27    ret
*}
end;

//004B7B28
{*function sub_004B7B28(?:?):?;
begin
 004B7B28    push        ebp
 004B7B29    mov         ebp,esp
 004B7B2B    add         esp,0FFFFFFF0
 004B7B2E    mov         dword ptr [ebp-8],edx
 004B7B31    mov         dword ptr [ebp-4],eax
 004B7B34    mov         edx,dword ptr [ebp-8]
 004B7B37    mov         eax,dword ptr [ebp-4]
 004B7B3A    call        004B3338
 004B7B3F    mov         dword ptr [ebp-0C],eax
 004B7B42    mov         edx,dword ptr [ebp-8]
 004B7B45    mov         eax,dword ptr [ebp-4]
 004B7B48    mov         ecx,dword ptr [eax]
 004B7B4A    call        dword ptr [ecx+110];TCustomActionMainMenuBar.sub_004C2EB8
 004B7B50    mov         edx,eax
 004B7B52    mov         eax,dword ptr [ebp-0C]
 004B7B55    call        @AsClass
 004B7B5A    mov         dword ptr [ebp-10],eax
 004B7B5D    mov         edx,2
 004B7B62    mov         eax,dword ptr [ebp-10]
 004B7B65    call        004C6404
 004B7B6A    mov         eax,dword ptr [ebp-0C]
 004B7B6D    mov         esp,ebp
 004B7B6F    pop         ebp
 004B7B70    ret
end;*}

//004B7B74
{*procedure TCustomActionMainMenuBar.sub_00484E9C(?:?);
begin
 004B7B74    push        ebp
 004B7B75    mov         ebp,esp
 004B7B77    add         esp,0FFFFFFF4
 004B7B7A    mov         dword ptr [ebp-8],edx
 004B7B7D    mov         dword ptr [ebp-4],eax
 004B7B80    mov         edx,dword ptr [ebp-8]
 004B7B83    mov         eax,dword ptr [ebp-4]
 004B7B86    call        TCustomActionBar.sub_00484E9C
 004B7B8B    mov         byte ptr [ebp-9],al
 004B7B8E    cmp         byte ptr [ebp-9],0
>004B7B92    jne         004B7BF1
 004B7B94    mov         eax,dword ptr [ebp-8]
 004B7B97    cmp         dword ptr [eax],100
>004B7B9D    jne         004B7BF1
 004B7B9F    mov         eax,dword ptr [ebp-8]
 004B7BA2    mov         eax,dword ptr [eax+4]
 004B7BA5    sub         eax,1B
>004B7BA8    je          004B7BB2
 004B7BAA    add         eax,0FFFFFFF6
 004B7BAD    sub         eax,4
>004B7BB0    jae         004B7BF1
 004B7BB2    mov         eax,dword ptr [ebp-8]
 004B7BB5    cmp         dword ptr [eax+4],1B
>004B7BB9    jne         004B7BED
 004B7BBB    mov         eax,dword ptr [ebp-4]
 004B7BBE    cmp         byte ptr [eax+296],0;TCustomActionMainMenuBar.FInMenuLoop:Boolean
>004B7BC5    je          004B7BED
 004B7BC7    mov         eax,dword ptr [ebp-4]
 004B7BCA    mov         edx,dword ptr [eax]
 004B7BCC    call        dword ptr [edx+17C];TCustomActionMainMenuBar.sub_004B7970
 004B7BD2    mov         eax,dword ptr [ebp-4]
 004B7BD5    cmp         byte ptr [eax+224],0;TCustomActionMainMenuBar.FDesignable:Boolean
>004B7BDC    je          004B7BED
 004B7BDE    mov         eax,[0056E068];^gvar_0056CB8C
 004B7BE3    mov         eax,dword ptr [eax]
 004B7BE5    mov         edx,dword ptr [ebp-4]
 004B7BE8    mov         ecx,dword ptr [eax]
 004B7BEA    call        dword ptr [ecx+20]
 004B7BED    mov         byte ptr [ebp-9],1
 004B7BF1    mov         al,byte ptr [ebp-9]
 004B7BF4    mov         esp,ebp
 004B7BF6    pop         ebp
 004B7BF7    ret
end;*}

//004B7BF8
procedure sub_004B7BF8;
begin
{*
 004B7BF8    push        ebp
 004B7BF9    mov         ebp,esp
 004B7BFB    add         esp,0FFFFFFF8
 004B7BFE    mov         dword ptr [ebp-4],eax
 004B7C01    mov         eax,dword ptr [ebp-4]
 004B7C04    call        004B3C78
 004B7C09    push        0
 004B7C0B    lea         eax,[ebp-8]
 004B7C0E    push        eax
 004B7C0F    push        0
 004B7C11    push        100A
 004B7C16    call        user32.SystemParametersInfoA
 004B7C1B    cmp         dword ptr [ebp-8],0
>004B7C1F    jne         004B7C2E
 004B7C21    xor         edx,edx
 004B7C23    mov         eax,dword ptr [ebp-4]
 004B7C26    mov         ecx,dword ptr [eax]
 004B7C28    call        dword ptr [ecx+138];TCustomActionMainMenuBar.sub_004B4B14
 004B7C2E    pop         ecx
 004B7C2F    pop         ecx
 004B7C30    pop         ebp
 004B7C31    ret
*}
end;

//004B7C34
{*procedure sub_004B7C34(?:?);
begin
 004B7C34    push        ebp
 004B7C35    mov         ebp,esp
 004B7C37    add         esp,0FFFFFFEC
 004B7C3A    mov         dword ptr [ebp-4],eax
 004B7C3D    mov         eax,dword ptr [ebp-4]
 004B7C40    cmp         byte ptr [eax+30C],0
>004B7C47    jne         004B7CFB
 004B7C4D    mov         eax,dword ptr [ebp-4]
 004B7C50    mov         eax,dword ptr [eax+2A4]
 004B7C56    mov         dword ptr [ebp-8],eax
 004B7C59    cmp         dword ptr [ebp-8],0
>004B7C5D    je          004B7CFB
 004B7C63    mov         eax,dword ptr [ebp-4]
 004B7C66    mov         byte ptr [eax+30C],1
 004B7C6D    xor         eax,eax
 004B7C6F    push        ebp
 004B7C70    push        4B7CF4
 004B7C75    push        dword ptr fs:[eax]
 004B7C78    mov         dword ptr fs:[eax],esp
 004B7C7B    mov         byte ptr [ebp-0D],0
 004B7C7F    mov         eax,dword ptr [ebp-8]
 004B7C82    call        TCustomForm.GetMDIChildCount
 004B7C87    dec         eax
 004B7C88    test        eax,eax
>004B7C8A    jl          004B7CCE
 004B7C8C    inc         eax
 004B7C8D    mov         dword ptr [ebp-14],eax
 004B7C90    mov         dword ptr [ebp-0C],0
 004B7C97    mov         edx,dword ptr [ebp-0C]
 004B7C9A    mov         eax,dword ptr [ebp-8]
 004B7C9D    call        004A3F10
 004B7CA2    cmp         byte ptr [eax+22B],2
>004B7CA9    jne         004B7CC6
 004B7CAB    mov         byte ptr [ebp-0D],1
 004B7CAF    mov         edx,dword ptr [ebp-0C]
 004B7CB2    mov         eax,dword ptr [ebp-8]
 004B7CB5    call        004A3F10
 004B7CBA    mov         edx,eax
 004B7CBC    mov         eax,dword ptr [ebp-4]
 004B7CBF    call        004B8484
>004B7CC4    jmp         004B7CCE
 004B7CC6    inc         dword ptr [ebp-0C]
 004B7CC9    dec         dword ptr [ebp-14]
>004B7CCC    jne         004B7C97
 004B7CCE    cmp         byte ptr [ebp-0D],0
>004B7CD2    jne         004B7CDC
 004B7CD4    mov         eax,dword ptr [ebp-4]
 004B7CD7    call        004B8530
 004B7CDC    xor         eax,eax
 004B7CDE    pop         edx
 004B7CDF    pop         ecx
 004B7CE0    pop         ecx
 004B7CE1    mov         dword ptr fs:[eax],edx
 004B7CE4    push        4B7CFB
 004B7CE9    mov         eax,dword ptr [ebp-4]
 004B7CEC    mov         byte ptr [eax+30C],0
 004B7CF3    ret
>004B7CF4    jmp         @HandleFinally
>004B7CF9    jmp         004B7CE9
 004B7CFB    mov         esp,ebp
 004B7CFD    pop         ebp
 004B7CFE    ret
end;*}

//004B7D00
{*procedure TCustomActionMainMenuBar.WMNCHitTest(?:?);
begin
 004B7D00    push        ebp
 004B7D01    mov         ebp,esp
 004B7D03    add         esp,0FFFFFFF8
 004B7D06    mov         dword ptr [ebp-8],edx
 004B7D09    mov         dword ptr [ebp-4],eax
 004B7D0C    mov         edx,dword ptr [ebp-8]
 004B7D0F    mov         eax,dword ptr [ebp-4]
 004B7D12    call        TWinControl.WMNCHitTest
 004B7D17    mov         eax,dword ptr [ebp-4]
 004B7D1A    mov         edx,dword ptr [eax]
 004B7D1C    call        dword ptr [edx+104];TCustomActionMainMenuBar.sub_004B3EB0
 004B7D22    test        al,al
>004B7D24    je          004B7D30
 004B7D26    mov         eax,dword ptr [ebp-8]
 004B7D29    mov         dword ptr [eax+0C],1
 004B7D30    pop         ecx
 004B7D31    pop         ecx
 004B7D32    pop         ebp
 004B7D33    ret
end;*}

//004B7D34
{*procedure sub_004B7D34(?:?);
begin
 004B7D34    push        ebp
 004B7D35    mov         ebp,esp
 004B7D37    add         esp,0FFFFFFF4
 004B7D3A    push        esi
 004B7D3B    mov         dword ptr [ebp-8],edx
 004B7D3E    mov         dword ptr [ebp-4],eax
 004B7D41    mov         edx,dword ptr [ebp-8]
 004B7D44    mov         eax,dword ptr [ebp-4]
 004B7D47    call        004B4304
 004B7D4C    mov         eax,dword ptr [ebp-8]
 004B7D4F    mov         eax,dword ptr [eax+4]
 004B7D52    sub         eax,201
>004B7D57    je          004B7D5E
 004B7D59    sub         eax,3
>004B7D5C    jne         004B7DB1
 004B7D5E    mov         edx,dword ptr [ebp-8]
 004B7D61    mov         eax,dword ptr [ebp-4]
 004B7D64    call        004B3F00
 004B7D69    mov         dword ptr [ebp-0C],eax
 004B7D6C    cmp         dword ptr [ebp-0C],0
>004B7D70    je          004B7D97
 004B7D72    mov         eax,dword ptr [ebp-0C]
 004B7D75    mov         eax,dword ptr [eax+4]
 004B7D78    cmp         eax,dword ptr [ebp-4]
>004B7D7B    jne         004B7DB1
 004B7D7D    mov         eax,dword ptr [ebp-0C]
 004B7D80    cmp         byte ptr [eax+18A],0
>004B7D87    je          004B7DB1
 004B7D89    mov         eax,dword ptr [ebp-0C]
 004B7D8C    mov         si,0FFEB
 004B7D90    call        @CallDynaInst
>004B7D95    jmp         004B7DB1
 004B7D97    mov         eax,dword ptr [ebp-4]
 004B7D9A    mov         edx,dword ptr [eax]
 004B7D9C    call        dword ptr [edx+104];TCustomActionMainMenuBar.sub_004B3EB0
 004B7DA2    test        al,al
>004B7DA4    jne         004B7DB1
 004B7DA6    mov         eax,dword ptr [ebp-4]
 004B7DA9    mov         edx,dword ptr [eax]
 004B7DAB    call        dword ptr [edx+17C];TCustomActionMainMenuBar.sub_004B7970
 004B7DB1    pop         esi
 004B7DB2    mov         esp,ebp
 004B7DB4    pop         ebp
 004B7DB5    ret
end;*}

//004B7DB8
{*procedure TCustomActionMainMenuBar.CMWinIniChange(?:?);
begin
 004B7DB8    push        ebp
 004B7DB9    mov         ebp,esp
 004B7DBB    add         esp,0FFFFFFF8
 004B7DBE    push        esi
 004B7DBF    mov         dword ptr [ebp-8],edx
 004B7DC2    mov         dword ptr [ebp-4],eax
 004B7DC5    mov         edx,dword ptr [ebp-8]
 004B7DC8    mov         eax,dword ptr [ebp-4]
 004B7DCB    call        TCustomActionBar.CMWinIniChange
 004B7DD0    mov         eax,dword ptr [ebp-4]
 004B7DD3    mov         si,0FFD0
 004B7DD7    call        @CallDynaInst;TControl.sub_004826F8
 004B7DDC    mov         eax,[0056E604];^Screen:TScreen
 004B7DE1    mov         eax,dword ptr [eax]
 004B7DE3    mov         edx,dword ptr [eax+88];TScreen.FMenuFont:TFont
 004B7DE9    mov         eax,dword ptr [ebp-4]
 004B7DEC    mov         eax,dword ptr [eax+68];TCustomActionMainMenuBar.FFont:TFont
 004B7DEF    mov         ecx,dword ptr [eax]
 004B7DF1    call        dword ptr [ecx+8];TFont.sub_0042DF9C
 004B7DF4    pop         esi
 004B7DF5    pop         ecx
 004B7DF6    pop         ecx
 004B7DF7    pop         ebp
 004B7DF8    ret
end;*}

//004B7DFC
{*procedure sub_004B7DFC(?:?);
begin
 004B7DFC    push        ebp
 004B7DFD    mov         ebp,esp
 004B7DFF    add         esp,0FFFFFFF8
 004B7E02    mov         byte ptr [ebp-5],dl
 004B7E05    mov         dword ptr [ebp-4],eax
 004B7E08    mov         eax,dword ptr [ebp-4]
 004B7E0B    mov         edx,dword ptr [eax]
 004B7E0D    call        dword ptr [edx+104];TCustomActionMainMenuBar.sub_004B3EB0
 004B7E13    cmp         al,byte ptr [ebp-5]
>004B7E16    je          004B7E20
 004B7E18    mov         eax,dword ptr [ebp-4]
 004B7E1B    call        004B3158
 004B7E20    mov         dl,byte ptr [ebp-5]
 004B7E23    mov         eax,dword ptr [ebp-4]
 004B7E26    call        004B4A24
 004B7E2B    pop         ecx
 004B7E2C    pop         ecx
 004B7E2D    pop         ebp
 004B7E2E    ret
end;*}

//004B7E30
{*procedure sub_004B7E30(?:TCustomActionMainMenuBar; ?:?);
begin
 004B7E30    push        ebp
 004B7E31    mov         ebp,esp
 004B7E33    add         esp,0FFFFFFF8
 004B7E36    mov         byte ptr [ebp-5],dl
 004B7E39    mov         dword ptr [ebp-4],eax
 004B7E3C    mov         eax,dword ptr [ebp-4]
 004B7E3F    mov         al,byte ptr [eax+30D]
 004B7E45    cmp         al,byte ptr [ebp-5]
>004B7E48    je          004B7E5E
 004B7E4A    mov         al,byte ptr [ebp-5]
 004B7E4D    mov         edx,dword ptr [ebp-4]
 004B7E50    mov         byte ptr [edx+30D],al
 004B7E56    mov         eax,dword ptr [ebp-4]
 004B7E59    mov         edx,dword ptr [eax]
 004B7E5B    call        dword ptr [edx+7C]
 004B7E5E    pop         ecx
 004B7E5F    pop         ecx
 004B7E60    pop         ebp
 004B7E61    ret
end;*}

//004B7E64
{*procedure TCustomActionMainMenuBar.CMEnabledChanged(?:?);
begin
 004B7E64    push        ebp
 004B7E65    mov         ebp,esp
 004B7E67    add         esp,0FFFFFFF8
 004B7E6A    mov         dword ptr [ebp-8],edx
 004B7E6D    mov         dword ptr [ebp-4],eax
 004B7E70    mov         edx,dword ptr [ebp-8]
 004B7E73    mov         eax,dword ptr [ebp-4]
 004B7E76    call        TCustomActionBar.CMEnabledChanged
 004B7E7B    mov         eax,dword ptr [ebp-4]
 004B7E7E    mov         edx,dword ptr [eax]
 004B7E80    call        dword ptr [edx+50];TImage.GetEnabled
 004B7E83    mov         edx,eax
 004B7E85    xor         dl,1
 004B7E88    mov         eax,dword ptr [ebp-4]
 004B7E8B    call        004B7E30
 004B7E90    pop         ecx
 004B7E91    pop         ecx
 004B7E92    pop         ebp
 004B7E93    ret
end;*}

//004B7E94
{*function sub_004B7E94:?;
begin
 004B7E94    push        ebp
 004B7E95    mov         ebp,esp
 004B7E97    add         esp,0FFFFFFF8
 004B7E9A    mov         dword ptr [ebp-4],eax
 004B7E9D    mov         eax,dword ptr [ebp-4]
 004B7EA0    call        004B424C
 004B7EA5    mov         dword ptr [ebp-8],eax
 004B7EA8    mov         eax,dword ptr [ebp-4]
 004B7EAB    mov         dl,byte ptr [eax+30E];TCustomActionMainMenuBar.FShadows:Boolean
 004B7EB1    mov         eax,dword ptr [ebp-8]
 004B7EB4    call        004B6E0C
 004B7EB9    mov         eax,dword ptr [ebp-8]
 004B7EBC    pop         ecx
 004B7EBD    pop         ecx
 004B7EBE    pop         ebp
 004B7EBF    ret
end;*}

//004B7EC0
{*procedure sub_004B7EC0(?:?; ?:?);
begin
 004B7EC0    push        ebp
 004B7EC1    mov         ebp,esp
 004B7EC3    add         esp,0FFFFFFF0
 004B7EC6    push        ebx
 004B7EC7    xor         ebx,ebx
 004B7EC9    mov         dword ptr [ebp-10],ebx
 004B7ECC    mov         byte ptr [ebp-9],cl
 004B7ECF    mov         dword ptr [ebp-8],edx
 004B7ED2    mov         dword ptr [ebp-4],eax
 004B7ED5    xor         eax,eax
 004B7ED7    push        ebp
 004B7ED8    push        4B7F67
 004B7EDD    push        dword ptr fs:[eax]
 004B7EE0    mov         dword ptr fs:[eax],esp
 004B7EE3    mov         cl,byte ptr [ebp-9]
 004B7EE6    mov         edx,dword ptr [ebp-8]
 004B7EE9    mov         eax,dword ptr [ebp-4]
 004B7EEC    call        004B52F0
 004B7EF1    cmp         byte ptr [ebp-9],1
>004B7EF5    jne         004B7F51
 004B7EF7    mov         eax,dword ptr [ebp-8]
 004B7EFA    mov         edx,dword ptr ds:[4AEE98];TCustomButtonControl
 004B7F00    call        @IsClass
 004B7F05    test        al,al
>004B7F07    je          004B7F51
 004B7F09    mov         eax,dword ptr [ebp-8]
 004B7F0C    cmp         dword ptr [eax+16C],0
>004B7F13    je          004B7F51
 004B7F15    lea         edx,[ebp-10]
 004B7F18    mov         eax,dword ptr [ebp-8]
 004B7F1B    mov         eax,dword ptr [eax+16C]
 004B7F21    call        TActionClientItem.GetCaption
 004B7F26    mov         eax,dword ptr [ebp-10]
 004B7F29    mov         edx,dword ptr [ebp-4]
 004B7F2C    mov         edx,dword ptr [edx+310];TCustomActionMainMenuBar.FWindowMenu:String
 004B7F32    call        @LStrCmp
>004B7F37    jne         004B7F51
 004B7F39    mov         eax,dword ptr [ebp-4]
 004B7F3C    add         eax,310;TCustomActionMainMenuBar.FWindowMenu:String
 004B7F41    call        @LStrClr
 004B7F46    mov         eax,dword ptr [ebp-4]
 004B7F49    xor         edx,edx
 004B7F4B    mov         dword ptr [eax+324],edx;TCustomActionMainMenuBar.FWindowMenuItem:TActionClientItem
 004B7F51    xor         eax,eax
 004B7F53    pop         edx
 004B7F54    pop         ecx
 004B7F55    pop         ecx
 004B7F56    mov         dword ptr fs:[eax],edx
 004B7F59    push        4B7F6E
 004B7F5E    lea         eax,[ebp-10]
 004B7F61    call        @LStrClr
 004B7F66    ret
>004B7F67    jmp         @HandleFinally
>004B7F6C    jmp         004B7F5E
 004B7F6E    pop         ebx
 004B7F6F    mov         esp,ebp
 004B7F71    pop         ebp
 004B7F72    ret
end;*}

//004B7F74
procedure sub_004B7F74(?:TCustomActionMainMenuBar);
begin
{*
 004B7F74    push        ebp
 004B7F75    mov         ebp,esp
 004B7F77    add         esp,0FFFFFFF8
 004B7F7A    mov         dword ptr [ebp-4],eax
 004B7F7D    mov         eax,dword ptr [ebp-4]
 004B7F80    cmp         dword ptr [eax+210],0
>004B7F87    je          004B7FB5
 004B7F89    mov         eax,dword ptr [ebp-4]
 004B7F8C    mov         edx,dword ptr [eax+310]
 004B7F92    mov         eax,dword ptr [ebp-4]
 004B7F95    call        004C278C
 004B7F9A    mov         dword ptr [ebp-8],eax
 004B7F9D    cmp         dword ptr [ebp-8],0
>004B7FA1    je          004B7FB5
 004B7FA3    mov         eax,dword ptr [ebp-8]
 004B7FA6    mov         eax,dword ptr [eax+16C]
 004B7FAC    mov         edx,dword ptr [ebp-4]
 004B7FAF    mov         dword ptr [edx+324],eax
 004B7FB5    pop         ecx
 004B7FB6    pop         ecx
 004B7FB7    pop         ebp
 004B7FB8    ret
*}
end;

//004B7FBC
{*function sub_004B7FBC(?:?; ?:?):?;
begin
 004B7FBC    push        ebp
 004B7FBD    mov         ebp,esp
 004B7FBF    add         esp,0FFFFFFF0
 004B7FC2    mov         dword ptr [ebp-4],eax
 004B7FC5    xor         eax,eax
 004B7FC7    mov         dword ptr [ebp-8],eax
 004B7FCA    mov         eax,dword ptr [ebp+8]
 004B7FCD    mov         eax,dword ptr [eax-4]
 004B7FD0    mov         eax,dword ptr [eax+308]
 004B7FD6    call        004935F4
 004B7FDB    dec         eax
 004B7FDC    test        eax,eax
>004B7FDE    jl          004B8036
 004B7FE0    inc         eax
 004B7FE1    mov         dword ptr [ebp-10],eax
 004B7FE4    mov         dword ptr [ebp-0C],0
 004B7FEB    mov         eax,dword ptr [ebp+8]
 004B7FEE    mov         eax,dword ptr [eax-4]
 004B7FF1    mov         eax,dword ptr [eax+308]
 004B7FF7    mov         edx,dword ptr [ebp-0C]
 004B7FFA    call        004935D0
 004B7FFF    mov         eax,dword ptr [eax+0A0]
 004B8005    cmp         eax,dword ptr [ebp-4]
>004B8008    jne         004B802E
 004B800A    mov         eax,dword ptr [ebp+8]
 004B800D    mov         eax,dword ptr [eax-4]
 004B8010    mov         eax,dword ptr [eax+308]
 004B8016    mov         edx,dword ptr [ebp-0C]
 004B8019    call        004935D0
 004B801E    mov         edx,dword ptr ds:[4B28E8];TInternalMDIAction
 004B8024    call        @AsClass
 004B8029    mov         dword ptr [ebp-8],eax
>004B802C    jmp         004B8036
 004B802E    inc         dword ptr [ebp-0C]
 004B8031    dec         dword ptr [ebp-10]
>004B8034    jne         004B7FEB
 004B8036    mov         eax,dword ptr [ebp-8]
 004B8039    mov         esp,ebp
 004B803B    pop         ebp
 004B803C    ret
end;*}

//004B8040
procedure TCustomActionMainMenuBar.RefreshMDIMenu;
begin
{*
 004B8040    push        ebp
 004B8041    mov         ebp,esp
 004B8043    add         esp,0FFFFFFE4
 004B8046    xor         edx,edx
 004B8048    mov         dword ptr [ebp-1C],edx
 004B804B    mov         dword ptr [ebp-18],edx
 004B804E    mov         dword ptr [ebp-4],eax
 004B8051    xor         eax,eax
 004B8053    push        ebp
 004B8054    push        4B8253
 004B8059    push        dword ptr fs:[eax]
 004B805C    mov         dword ptr fs:[eax],esp
 004B805F    mov         eax,dword ptr [ebp-4]
 004B8062    mov         eax,dword ptr [eax+2A4]
 004B8068    cmp         byte ptr [eax+22F],2
>004B806F    jne         004B8238
 004B8075    mov         eax,dword ptr [ebp-4]
 004B8078    mov         edx,dword ptr [eax]
 004B807A    call        dword ptr [edx+104]
 004B8080    test        al,al
>004B8082    jne         004B8238
 004B8088    mov         eax,dword ptr [ebp-4]
 004B808B    cmp         dword ptr [eax+324],0
>004B8092    je          004B8238
 004B8098    mov         eax,dword ptr [ebp-4]
 004B809B    call        004B7C34
 004B80A0    mov         eax,dword ptr [ebp-4]
 004B80A3    cmp         dword ptr [eax+308],0
>004B80AA    jne         004B80F3
 004B80AC    mov         ecx,dword ptr [ebp-4]
 004B80AF    mov         dl,1
 004B80B1    mov         eax,[00492944];TActionList
 004B80B6    call        00493448
 004B80BB    mov         edx,dword ptr [ebp-4]
 004B80BE    mov         dword ptr [edx+308],eax
 004B80C4    mov         eax,dword ptr [ebp-4]
 004B80C7    mov         eax,dword ptr [eax+324]
 004B80CD    call        TActionClient.GetItems
 004B80D2    call        004BF124
 004B80D7    mov         edx,dword ptr [ebp-4]
 004B80DA    mov         dword ptr [edx+320],eax
 004B80E0    mov         eax,dword ptr [ebp-4]
 004B80E3    mov         eax,dword ptr [eax+320]
 004B80E9    mov         edx,4B8268;'-'
 004B80EE    call        TActionClientItem.SetCaption
 004B80F3    mov         eax,dword ptr [ebp-4]
 004B80F6    mov         eax,dword ptr [eax+2A4]
 004B80FC    mov         dword ptr [ebp-8],eax
 004B80FF    mov         eax,dword ptr [ebp-8]
 004B8102    call        TCustomForm.GetMDIChildCount
 004B8107    test        eax,eax
>004B8109    jne         004B8118
 004B810B    mov         eax,dword ptr [ebp-4]
 004B810E    add         eax,320
 004B8113    call        FreeAndNil
 004B8118    mov         eax,dword ptr [ebp-8]
 004B811B    call        TCustomForm.GetMDIChildCount
 004B8120    dec         eax
 004B8121    test        eax,eax
>004B8123    jl          004B8238
 004B8129    inc         eax
 004B812A    mov         dword ptr [ebp-14],eax
 004B812D    mov         dword ptr [ebp-0C],0
 004B8134    push        ebp
 004B8135    mov         edx,dword ptr [ebp-0C]
 004B8138    mov         eax,dword ptr [ebp-8]
 004B813B    call        004A3F10
 004B8140    call        004B7FBC
 004B8145    pop         ecx
 004B8146    mov         dword ptr [ebp-10],eax
 004B8149    cmp         dword ptr [ebp-10],0
>004B814D    je          004B8172
 004B814F    mov         edx,dword ptr [ebp-0C]
 004B8152    mov         eax,dword ptr [ebp-8]
 004B8155    call        004A3F10
 004B815A    lea         edx,[ebp-18]
 004B815D    call        TPanel.GetCaption
 004B8162    mov         edx,dword ptr [ebp-18]
 004B8165    mov         eax,dword ptr [ebp-10]
 004B8168    call        TVirtualListAction.SetCaption
>004B816D    jmp         004B821C
 004B8172    mov         eax,dword ptr [ebp-4]
 004B8175    mov         ecx,dword ptr [eax+308]
 004B817B    mov         dl,1
 004B817D    mov         eax,[004B28E8];TInternalMDIAction
 004B8182    call        TInternalMDIAction.Create
 004B8187    mov         dword ptr [ebp-10],eax
 004B818A    mov         eax,dword ptr [ebp-10]
 004B818D    mov         byte ptr [eax+0B0],0
 004B8194    mov         eax,dword ptr [ebp-4]
 004B8197    mov         edx,dword ptr [eax+308]
 004B819D    mov         eax,dword ptr [ebp-10]
 004B81A0    call        004932F4
 004B81A5    mov         edx,dword ptr [ebp-8]
 004B81A8    mov         eax,dword ptr [ebp-10]
 004B81AB    call        TAction.SetGroupIndex
 004B81B0    mov         edx,dword ptr [ebp-0C]
 004B81B3    mov         eax,dword ptr [ebp-8]
 004B81B6    call        004A3F10
 004B81BB    mov         edx,eax
 004B81BD    mov         eax,dword ptr [ebp-10]
 004B81C0    call        0047BEF4
 004B81C5    mov         edx,dword ptr [ebp-0C]
 004B81C8    mov         eax,dword ptr [ebp-8]
 004B81CB    call        004A3F10
 004B81D0    lea         edx,[ebp-1C]
 004B81D3    call        TPanel.GetCaption
 004B81D8    mov         edx,dword ptr [ebp-1C]
 004B81DB    mov         eax,dword ptr [ebp-10]
 004B81DE    call        TVirtualListAction.SetCaption
 004B81E3    mov         eax,dword ptr [ebp-4]
 004B81E6    mov         eax,dword ptr [eax+324]
 004B81EC    call        TActionClient.GetItems
 004B81F1    call        004BF124
 004B81F6    mov         edx,dword ptr [ebp-10]
 004B81F9    mov         dword ptr [edx+0A8],eax
 004B81FF    mov         eax,dword ptr [ebp-4]
 004B8202    mov         edx,dword ptr [ebp-10]
 004B8205    mov         dword ptr [edx+0AC],eax
 004B820B    mov         edx,dword ptr [ebp-10]
 004B820E    mov         eax,dword ptr [ebp-10]
 004B8211    mov         eax,dword ptr [eax+0A8]
 004B8217    call        TActionClientItem.SetAction
 004B821C    cmp         dword ptr [ebp-0C],0
>004B8220    jne         004B822C
 004B8222    mov         dl,1
 004B8224    mov         eax,dword ptr [ebp-10]
 004B8227    call        TAction.SetChecked
 004B822C    inc         dword ptr [ebp-0C]
 004B822F    dec         dword ptr [ebp-14]
>004B8232    jne         004B8134
 004B8238    xor         eax,eax
 004B823A    pop         edx
 004B823B    pop         ecx
 004B823C    pop         ecx
 004B823D    mov         dword ptr fs:[eax],edx
 004B8240    push        4B825A
 004B8245    lea         eax,[ebp-1C]
 004B8248    mov         edx,2
 004B824D    call        @LStrArrayClr
 004B8252    ret
>004B8253    jmp         @HandleFinally
>004B8258    jmp         004B8245
 004B825A    mov         esp,ebp
 004B825C    pop         ebp
 004B825D    ret
*}
end;

//004B826C
{*function sub_004B826C(?:?; ?:?):?;
begin
 004B826C    push        ebp
 004B826D    mov         ebp,esp
 004B826F    add         esp,0FFFFFFF4
 004B8272    mov         byte ptr [ebp-1],al
 004B8275    mov         eax,dword ptr [ebp+8]
 004B8278    mov         ecx,dword ptr [eax-4]
 004B827B    mov         dl,1
 004B827D    mov         eax,[004B1EBC];TCustomMDIMenuButton
 004B8282    call        TCustomMDIMenuButton.Create;TCustomMDIMenuButton.Create
 004B8287    mov         dword ptr [ebp-8],eax
 004B828A    mov         eax,dword ptr [ebp+8]
 004B828D    mov         edx,dword ptr [eax-4]
 004B8290    mov         eax,dword ptr [ebp-8]
 004B8293    mov         ecx,dword ptr [eax]
 004B8295    call        dword ptr [ecx+68];TCustomMDIMenuButton.sub_0048359C
 004B8298    mov         dl,1
 004B829A    mov         eax,dword ptr [ebp-8]
 004B829D    call        TImage.SetVisible
 004B82A2    mov         eax,dword ptr [ebp+8]
 004B82A5    mov         eax,dword ptr [eax-4]
 004B82A8    mov         edx,dword ptr [eax+254]
 004B82AE    inc         edx
 004B82AF    mov         eax,dword ptr [ebp-8]
 004B82B2    call        TControl.SetTop
 004B82B7    push        36
 004B82B9    call        user32.GetSystemMetrics
 004B82BE    mov         edx,eax
 004B82C0    mov         eax,dword ptr [ebp-8]
 004B82C3    call        TSplitter.SetWidth
 004B82C8    push        37
 004B82CA    call        user32.GetSystemMetrics
 004B82CF    mov         edx,eax
 004B82D1    mov         eax,dword ptr [ebp-8]
 004B82D4    call        TToolButton.SetHeight
 004B82D9    mov         eax,dword ptr [ebp-8]
 004B82DC    mov         dl,byte ptr [ebp-1]
 004B82DF    mov         byte ptr [eax+188],dl;TCustomMDIMenuButton........FButtonStyle:TMDIButtonStyle
 004B82E5    mov         eax,dword ptr [ebp+8]
 004B82E8    mov         ecx,dword ptr [eax-4]
 004B82EB    mov         dl,1
 004B82ED    mov         eax,[004B28E8];TInternalMDIAction
 004B82F2    call        TInternalMDIAction.Create;TInternalMDIAction.Create
 004B82F7    mov         edx,eax
 004B82F9    mov         eax,dword ptr [ebp-8]
 004B82FC    call        TSpeedButton.SetAction
 004B8301    mov         eax,dword ptr [ebp+8]
 004B8304    mov         eax,dword ptr [eax-4]
 004B8307    mov         al,byte ptr [eax+227]
 004B830D    sub         al,1
>004B830F    jb          004B831C
>004B8311    je          004B83C3
>004B8317    jmp         004B8429
 004B831C    mov         dl,byte ptr ds:[4B8480];0x6 gvar_004B8480
 004B8322    mov         eax,dword ptr [ebp-8]
 004B8325    call        TImage.SetAnchors
 004B832A    mov         eax,dword ptr [ebp-8]
 004B832D    mov         al,byte ptr [eax+188];TCustomMDIMenuButton.........FButtonStyle:TMDIButtonStyle
 004B8333    sub         al,1
>004B8335    jb          004B8342
>004B8337    je          004B8370
 004B8339    dec         al
>004B833B    je          004B839D
>004B833D    jmp         004B8429
 004B8342    mov         eax,dword ptr [ebp+8]
 004B8345    mov         eax,dword ptr [eax-4]
 004B8348    mov         edx,dword ptr [eax+48]
 004B834B    mov         eax,dword ptr [ebp-8]
 004B834E    mov         eax,dword ptr [eax+48];TCustomMDIMenuButton.Width:Integer
 004B8351    lea         eax,[eax+eax*2]
 004B8354    sub         edx,eax
 004B8356    mov         eax,dword ptr [ebp+8]
 004B8359    mov         eax,dword ptr [eax-4]
 004B835C    sub         edx,dword ptr [eax+254]
 004B8362    dec         edx
 004B8363    mov         eax,dword ptr [ebp-8]
 004B8366    call        TControl.SetLeft
>004B836B    jmp         004B8429
 004B8370    mov         eax,dword ptr [ebp+8]
 004B8373    mov         eax,dword ptr [eax-4]
 004B8376    mov         edx,dword ptr [eax+48]
 004B8379    mov         eax,dword ptr [ebp-8]
 004B837C    mov         eax,dword ptr [eax+48];TCustomMDIMenuButton.Width:Integer
 004B837F    add         eax,eax
 004B8381    sub         edx,eax
 004B8383    mov         eax,dword ptr [ebp+8]
 004B8386    mov         eax,dword ptr [eax-4]
 004B8389    sub         edx,dword ptr [eax+254]
 004B838F    dec         edx
 004B8390    mov         eax,dword ptr [ebp-8]
 004B8393    call        TControl.SetLeft
>004B8398    jmp         004B8429
 004B839D    mov         eax,dword ptr [ebp+8]
 004B83A0    mov         eax,dword ptr [eax-4]
 004B83A3    mov         edx,dword ptr [eax+48]
 004B83A6    mov         eax,dword ptr [ebp-8]
 004B83A9    sub         edx,dword ptr [eax+48]
 004B83AC    mov         eax,dword ptr [ebp+8]
 004B83AF    mov         eax,dword ptr [eax-4]
 004B83B2    sub         edx,dword ptr [eax+254]
 004B83B8    dec         edx
 004B83B9    mov         eax,dword ptr [ebp-8]
 004B83BC    call        TControl.SetLeft
>004B83C1    jmp         004B8429
 004B83C3    mov         eax,dword ptr [ebp-8]
 004B83C6    mov         al,byte ptr [eax+188];TCustomMDIMenuButton..........FButtonStyle:TMDIButtonStyle
 004B83CC    sub         al,1
>004B83CE    jb          004B83D8
>004B83D0    je          004B83F7
 004B83D2    dec         al
>004B83D4    je          004B8414
>004B83D6    jmp         004B8429
 004B83D8    mov         eax,dword ptr [ebp-8]
 004B83DB    mov         edx,dword ptr [eax+48];TCustomMDIMenuButton.Width:Integer
 004B83DE    add         edx,edx
 004B83E0    mov         eax,dword ptr [ebp+8]
 004B83E3    mov         eax,dword ptr [eax-4]
 004B83E6    add         edx,dword ptr [eax+254]
 004B83EC    inc         edx
 004B83ED    mov         eax,dword ptr [ebp-8]
 004B83F0    call        TControl.SetLeft
>004B83F5    jmp         004B8429
 004B83F7    mov         eax,dword ptr [ebp-8]
 004B83FA    mov         edx,dword ptr [eax+48];TCustomMDIMenuButton.Width:Integer
 004B83FD    mov         eax,dword ptr [ebp+8]
 004B8400    mov         eax,dword ptr [eax-4]
 004B8403    add         edx,dword ptr [eax+254]
 004B8409    inc         edx
 004B840A    mov         eax,dword ptr [ebp-8]
 004B840D    call        TControl.SetLeft
>004B8412    jmp         004B8429
 004B8414    mov         eax,dword ptr [ebp+8]
 004B8417    mov         eax,dword ptr [eax-4]
 004B841A    mov         edx,dword ptr [eax+254]
 004B8420    inc         edx
 004B8421    mov         eax,dword ptr [ebp-8]
 004B8424    call        TControl.SetLeft
 004B8429    mov         eax,dword ptr [ebp-8]
 004B842C    mov         edx,dword ptr [eax]
 004B842E    call        dword ptr [edx+3C];TSpeedButton.GetAction
 004B8431    mov         edx,dword ptr ds:[4B28E8];TInternalMDIAction
 004B8437    call        @AsClass
 004B843C    mov         dword ptr [ebp-0C],eax
 004B843F    mov         eax,dword ptr [ebp-8]
 004B8442    mov         al,byte ptr [eax+188];TCustomMDIMenuButton...........FButtonStyle:TMDIButtonStyle
 004B8448    sub         al,1
>004B844A    jb          004B8454
>004B844C    je          004B8460
 004B844E    dec         al
>004B8450    je          004B846C
>004B8452    jmp         004B8476
 004B8454    mov         eax,dword ptr [ebp-0C]
 004B8457    mov         byte ptr [eax+0B0],3;TInternalMDIAction.FMDIAction:TMDIAction
>004B845E    jmp         004B8476
 004B8460    mov         eax,dword ptr [ebp-0C]
 004B8463    mov         byte ptr [eax+0B0],2;TInternalMDIAction.FMDIAction:TMDIAction
>004B846A    jmp         004B8476
 004B846C    mov         eax,dword ptr [ebp-0C]
 004B846F    mov         byte ptr [eax+0B0],1;TInternalMDIAction.FMDIAction:TMDIAction
 004B8476    mov         eax,dword ptr [ebp-8]
 004B8479    mov         esp,ebp
 004B847B    pop         ebp
 004B847C    ret
end;*}

//004B8484
{*procedure sub_004B8484(?:?; ?:?);
begin
 004B8484    push        ebp
 004B8485    mov         ebp,esp
 004B8487    add         esp,0FFFFFFF8
 004B848A    mov         dword ptr [ebp-8],edx
 004B848D    mov         dword ptr [ebp-4],eax
 004B8490    mov         eax,dword ptr [ebp-8]
 004B8493    test        byte ptr [eax+1C],8
>004B8497    jne         004B8529
 004B849D    mov         eax,dword ptr [ebp-4]
 004B84A0    cmp         dword ptr [eax+318],0
>004B84A7    jne         004B84DF
 004B84A9    push        ebp
 004B84AA    xor         eax,eax
 004B84AC    call        004B826C
 004B84B1    pop         ecx
 004B84B2    mov         edx,dword ptr [ebp-4]
 004B84B5    mov         dword ptr [edx+314],eax
 004B84BB    push        ebp
 004B84BC    mov         al,1
 004B84BE    call        004B826C
 004B84C3    pop         ecx
 004B84C4    mov         edx,dword ptr [ebp-4]
 004B84C7    mov         dword ptr [edx+318],eax
 004B84CD    push        ebp
 004B84CE    mov         al,2
 004B84D0    call        004B826C
 004B84D5    pop         ecx
 004B84D6    mov         edx,dword ptr [ebp-4]
 004B84D9    mov         dword ptr [edx+31C],eax
 004B84DF    mov         eax,dword ptr [ebp-4]
 004B84E2    mov         eax,dword ptr [eax+314]
 004B84E8    mov         edx,dword ptr [eax]
 004B84EA    call        dword ptr [edx+3C]
 004B84ED    mov         edx,dword ptr [ebp-8]
 004B84F0    call        0047BEF4
 004B84F5    mov         eax,dword ptr [ebp-4]
 004B84F8    mov         eax,dword ptr [eax+318]
 004B84FE    mov         edx,dword ptr [eax]
 004B8500    call        dword ptr [edx+3C]
 004B8503    mov         edx,dword ptr [ebp-8]
 004B8506    call        0047BEF4
 004B850B    mov         eax,dword ptr [ebp-4]
 004B850E    mov         eax,dword ptr [eax+31C]
 004B8514    mov         edx,dword ptr [eax]
 004B8516    call        dword ptr [edx+3C]
 004B8519    mov         edx,dword ptr [ebp-8]
 004B851C    call        0047BEF4
 004B8521    mov         eax,dword ptr [ebp-4]
 004B8524    mov         edx,dword ptr [eax]
 004B8526    call        dword ptr [edx+7C]
 004B8529    pop         ecx
 004B852A    pop         ecx
 004B852B    pop         ebp
 004B852C    ret
end;*}

//004B8530
{*procedure sub_004B8530(?:?);
begin
 004B8530    push        ebp
 004B8531    mov         ebp,esp
 004B8533    push        ecx
 004B8534    mov         dword ptr [ebp-4],eax
 004B8537    mov         eax,dword ptr [ebp-4]
 004B853A    add         eax,314
 004B853F    call        FreeAndNil
 004B8544    mov         eax,dword ptr [ebp-4]
 004B8547    add         eax,318
 004B854C    call        FreeAndNil
 004B8551    mov         eax,dword ptr [ebp-4]
 004B8554    add         eax,31C
 004B8559    call        FreeAndNil
 004B855E    pop         ecx
 004B855F    pop         ebp
 004B8560    ret
end;*}

//004B8564
{*procedure sub_004B8564(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
begin
 004B8564    push        ebp
 004B8565    mov         ebp,esp
 004B8567    add         esp,0FFFFFFD4
 004B856A    push        esi
 004B856B    push        edi
 004B856C    mov         esi,dword ptr [ebp+8]
 004B856F    lea         edi,[ebp-1C]
 004B8572    movs        dword ptr [edi],dword ptr [esi]
 004B8573    movs        dword ptr [edi],dword ptr [esi]
 004B8574    movs        dword ptr [edi],dword ptr [esi]
 004B8575    movs        dword ptr [edi],dword ptr [esi]
 004B8576    mov         dword ptr [ebp-0C],ecx
 004B8579    mov         dword ptr [ebp-8],edx
 004B857C    mov         dword ptr [ebp-4],eax
 004B857F    mov         eax,dword ptr [ebp-4]
 004B8582    cmp         dword ptr [eax+314],0;TCustomActionMainMenuBar.FMinimizeBtn:TCustomMDIMenuButton
>004B8589    je          004B85E3
 004B858B    mov         eax,dword ptr [ebp+0C]
 004B858E    mov         eax,dword ptr [eax+8]
 004B8591    mov         edx,dword ptr [ebp-4]
 004B8594    mov         edx,dword ptr [edx+314];TCustomActionMainMenuBar.FMinimizeBtn:TCustomMDIMenuButton
 004B859A    cmp         eax,dword ptr [edx+40];TCustomMDIMenuButton.Left:Integer
>004B859D    jle         004B85E3
 004B859F    mov         eax,dword ptr [ebp-4]
 004B85A2    mov         al,byte ptr [eax+227];TCustomActionMainMenuBar.FOrientation:TBarOrientation
 004B85A8    sub         al,1
>004B85AA    jb          004B85B0
>004B85AC    je          004B85C7
>004B85AE    jmp         004B85E3
 004B85B0    mov         eax,dword ptr [ebp-4]
 004B85B3    mov         eax,dword ptr [eax+314];TCustomActionMainMenuBar.FMinimizeBtn:TCustomMDIMenuButton
 004B85B9    mov         eax,dword ptr [eax+40];TCustomMDIMenuButton.Left:Integer
 004B85BC    sub         eax,2
 004B85BF    mov         edx,dword ptr [ebp+0C]
 004B85C2    mov         dword ptr [edx+8],eax
>004B85C5    jmp         004B85E3
 004B85C7    lea         edx,[ebp-2C]
 004B85CA    mov         eax,dword ptr [ebp-4]
 004B85CD    mov         eax,dword ptr [eax+314];TCustomActionMainMenuBar.FMinimizeBtn:TCustomMDIMenuButton
 004B85D3    call        00482ECC
 004B85D8    mov         eax,dword ptr [ebp-24]
 004B85DB    add         eax,2
 004B85DE    mov         edx,dword ptr [ebp+0C]
 004B85E1    mov         dword ptr [edx],eax
 004B85E3    mov         eax,dword ptr [ebp+18]
 004B85E6    push        eax
 004B85E7    mov         eax,dword ptr [ebp+14]
 004B85EA    push        eax
 004B85EB    mov         eax,dword ptr [ebp+10]
 004B85EE    push        eax
 004B85EF    mov         eax,dword ptr [ebp+0C]
 004B85F2    push        eax
 004B85F3    lea         eax,[ebp-1C]
 004B85F6    push        eax
 004B85F7    mov         ecx,dword ptr [ebp-0C]
 004B85FA    mov         edx,dword ptr [ebp-8]
 004B85FD    mov         eax,dword ptr [ebp-4]
 004B8600    call        004C1C60
 004B8605    pop         edi
 004B8606    pop         esi
 004B8607    mov         esp,ebp
 004B8609    pop         ebp
 004B860A    ret         14
end;*}

//004B8610
procedure sub_004B8610;
begin
{*
 004B8610    push        ebp
 004B8611    mov         ebp,esp
 004B8613    push        ecx
 004B8614    mov         dword ptr [ebp-4],eax
 004B8617    mov         eax,dword ptr [ebp-4]
 004B861A    call        004C1994
 004B861F    mov         eax,dword ptr [ebp-4]
 004B8622    cmp         dword ptr [eax+210],0;TCustomActionMainMenuBar.FActionClient:TActionClient
>004B8629    je          004B8645
 004B862B    mov         eax,dword ptr [ebp-4]
 004B862E    mov         eax,dword ptr [eax+310];TCustomActionMainMenuBar.FWindowMenu:String
 004B8634    call        @LStrLen
 004B8639    test        eax,eax
>004B863B    jle         004B8645
 004B863D    mov         eax,dword ptr [ebp-4]
 004B8640    call        004B7F74
 004B8645    pop         ecx
 004B8646    pop         ebp
 004B8647    ret
*}
end;

//004B8648
{*procedure TCustomActionMainMenuBar.WMSysCommand(?:?);
begin
 004B8648    push        ebp
 004B8649    mov         ebp,esp
 004B864B    add         esp,0FFFFFFF4
 004B864E    mov         dword ptr [ebp-8],edx
 004B8651    mov         dword ptr [ebp-4],eax
 004B8654    mov         eax,dword ptr [ebp-4]
 004B8657    cmp         byte ptr [eax+296],0;TCustomActionMainMenuBar.FInMenuLoop:Boolean
>004B865E    jne         004B8770
 004B8664    mov         eax,dword ptr [ebp-4]
 004B8667    mov         edx,dword ptr [eax]
 004B8669    call        dword ptr [edx+50];TImage.GetEnabled
 004B866C    test        al,al
>004B866E    je          004B8770
 004B8674    mov         eax,dword ptr [ebp-4]
 004B8677    cmp         byte ptr [eax+1A6],0;TCustomActionMainMenuBar.FShowing:Boolean
>004B867E    je          004B8770
 004B8684    mov         eax,dword ptr [ebp-8]
 004B8687    mov         eax,dword ptr [eax+4]
 004B868A    and         eax,0FFF0
 004B868F    cmp         eax,0F100
>004B8694    jne         004B8770
 004B869A    mov         eax,dword ptr [ebp-8]
 004B869D    cmp         word ptr [eax+8],20
>004B86A2    je          004B8770
 004B86A8    mov         eax,dword ptr [ebp-8]
 004B86AB    cmp         word ptr [eax+8],2D
>004B86B0    je          004B8770
 004B86B6    call        user32.GetCapture
 004B86BB    test        eax,eax
>004B86BD    jne         004B8770
 004B86C3    mov         eax,dword ptr [ebp-8]
 004B86C6    cmp         word ptr [eax+8],0
>004B86CB    je          004B86FF
 004B86CD    mov         edx,dword ptr [ebp-8]
 004B86D0    mov         dx,word ptr [edx+8]
 004B86D4    mov         eax,dword ptr [ebp-4]
 004B86D7    call        004C2670
 004B86DC    mov         dword ptr [ebp-0C],eax
 004B86DF    cmp         dword ptr [ebp-0C],0
>004B86E3    je          004B8739
 004B86E5    mov         eax,dword ptr [ebp-0C]
 004B86E8    mov         eax,dword ptr [eax+40]
 004B86EB    mov         edx,dword ptr [eax]
 004B86ED    call        dword ptr [edx+0E0]
 004B86F3    mov         eax,dword ptr [ebp-8]
 004B86F6    mov         dword ptr [eax+0C],1
>004B86FD    jmp         004B8770
 004B86FF    mov         eax,dword ptr [ebp-4]
 004B8702    cmp         byte ptr [eax+28A],0;TCustomActionMainMenuBar.FCancelMenu:Boolean
>004B8709    jne         004B8739
 004B870B    mov         eax,dword ptr [ebp-4]
 004B870E    call        004C28DC
 004B8713    mov         dword ptr [ebp-0C],eax
 004B8716    mov         dl,1
 004B8718    mov         eax,dword ptr [ebp-4]
 004B871B    mov         ecx,dword ptr [eax]
 004B871D    call        dword ptr [ecx+138];TCustomActionMainMenuBar.sub_004B4B14
 004B8723    cmp         dword ptr [ebp-0C],0
>004B8727    je          004B8739
 004B8729    mov         eax,dword ptr [ebp-0C]
 004B872C    mov         eax,dword ptr [eax+40]
 004B872F    mov         dl,1
 004B8731    mov         ecx,dword ptr [eax]
 004B8733    call        dword ptr [ecx+0D8]
 004B8739    mov         eax,dword ptr [ebp-4]
 004B873C    cmp         byte ptr [eax+28A],0;TCustomActionMainMenuBar.FCancelMenu:Boolean
>004B8743    jne         004B875C
 004B8745    push        0
 004B8747    push        0
 004B8749    push        0B410
 004B874E    mov         eax,dword ptr [ebp-4]
 004B8751    call        TWinControl.GetHandle
 004B8756    push        eax
 004B8757    call        user32.PostMessageA
 004B875C    mov         eax,dword ptr [ebp-4]
 004B875F    mov         byte ptr [eax+28A],0;TCustomActionMainMenuBar.FCancelMenu:Boolean
 004B8766    mov         eax,dword ptr [ebp-8]
 004B8769    mov         dword ptr [eax+0C],1
 004B8770    mov         esp,ebp
 004B8772    pop         ebp
 004B8773    ret
end;*}

//004B8774
{*procedure TCustomActionMainMenuBar.WMSysKeyDown(?:?);
begin
 004B8774    push        ebp
 004B8775    mov         ebp,esp
 004B8777    add         esp,0FFFFFFF8
 004B877A    mov         dword ptr [ebp-8],edx
 004B877D    mov         dword ptr [ebp-4],eax
 004B8780    mov         eax,dword ptr [ebp-8]
 004B8783    cmp         word ptr [eax+4],12
 004B8788    sete        al
 004B878B    mov         edx,dword ptr [ebp-4]
 004B878E    mov         byte ptr [edx+28A],al;TCustomActionMainMenuBar.FCancelMenu:Boolean
 004B8794    mov         edx,dword ptr [ebp-8]
 004B8797    mov         eax,dword ptr [ebp-4]
 004B879A    call        TCustomActionMenuBar.WMSysKeyDown
 004B879F    pop         ecx
 004B87A0    pop         ecx
 004B87A1    pop         ebp
 004B87A2    ret
end;*}

//004B87A4
{*procedure TCustomActionMainMenuBar.WMSysKeyUp(?:?);
begin
 004B87A4    push        ebp
 004B87A5    mov         ebp,esp
 004B87A7    add         esp,0FFFFFFF8
 004B87AA    mov         dword ptr [ebp-8],edx
 004B87AD    mov         dword ptr [ebp-4],eax
 004B87B0    mov         eax,dword ptr [ebp-8]
 004B87B3    cmp         word ptr [eax+4],12
 004B87B8    sete        al
 004B87BB    mov         edx,dword ptr [ebp-4]
 004B87BE    mov         byte ptr [edx+28A],al;TCustomActionMainMenuBar.FCancelMenu:Boolean
 004B87C4    mov         edx,dword ptr [ebp-8]
 004B87C7    mov         eax,dword ptr [ebp-4]
 004B87CA    call        TWinControl.WMSysKeyUp
 004B87CF    pop         ecx
 004B87D0    pop         ecx
 004B87D1    pop         ebp
 004B87D2    ret
end;*}

//004B87D4
{*function sub_004B87D4(?:?; ?:?):?;
begin
 004B87D4    push        ebp
 004B87D5    mov         ebp,esp
 004B87D7    add         esp,0FFFFFFF4
 004B87DA    mov         dword ptr [ebp-8],edx
 004B87DD    mov         dword ptr [ebp-4],eax
 004B87E0    mov         eax,dword ptr [ebp-8]
 004B87E3    mov         eax,dword ptr [eax]
 004B87E5    add         eax,0FFFF5000
 004B87EA    sub         eax,2
>004B87ED    jae         004B8830
 004B87EF    mov         eax,dword ptr [ebp-4]
 004B87F2    cmp         byte ptr [eax+296],0
>004B87F9    je          004B8806
 004B87FB    mov         eax,dword ptr [ebp-4]
 004B87FE    mov         edx,dword ptr [eax]
 004B8800    call        dword ptr [edx+17C]
 004B8806    mov         eax,dword ptr [ebp-4]
 004B8809    cmp         byte ptr [eax+224],0
>004B8810    je          004B881C
 004B8812    mov         eax,[0056E068];^gvar_0056CB8C
 004B8817    cmp         dword ptr [eax],0
>004B881A    jne         004B8830
 004B881C    mov         eax,dword ptr [ebp-8]
 004B881F    cmp         dword ptr [eax],0B001
 004B8825    sete        dl
 004B8828    mov         eax,dword ptr [ebp-4]
 004B882B    call        004B7E30
 004B8830    mov         byte ptr [ebp-9],0
 004B8834    mov         al,byte ptr [ebp-9]
 004B8837    mov         esp,ebp
 004B8839    pop         ebp
 004B883A    ret
end;*}

//004B883C
procedure TCustomActionMainMenuBar.TrackMenu;
begin
{*
 004B883C    push        ebp
 004B883D    mov         ebp,esp
 004B883F    push        ecx
 004B8840    mov         dword ptr [ebp-4],eax
 004B8843    mov         eax,dword ptr [ebp-4]
 004B8846    call        TCustomActionMainMenuBar.RefreshMDIMenu
 004B884B    xor         eax,eax
 004B884D    push        ebp
 004B884E    push        4B8889
 004B8853    push        dword ptr fs:[eax]
 004B8856    mov         dword ptr fs:[eax],esp
 004B8859    mov         eax,dword ptr [ebp-4]
 004B885C    call        TCustomActionMenuBar.TrackMenu
 004B8861    xor         eax,eax
 004B8863    pop         edx
 004B8864    pop         ecx
 004B8865    pop         ecx
 004B8866    mov         dword ptr fs:[eax],edx
 004B8869    push        4B8890
 004B886E    mov         eax,dword ptr [ebp-4]
 004B8871    add         eax,308
 004B8876    call        FreeAndNil
 004B887B    mov         eax,dword ptr [ebp-4]
 004B887E    add         eax,320
 004B8883    call        FreeAndNil
 004B8888    ret
>004B8889    jmp         @HandleFinally
>004B888E    jmp         004B886E
 004B8890    pop         ecx
 004B8891    pop         ebp
 004B8892    ret
*}
end;

//004B8894
constructor sub_004B8894;
begin
{*
 004B8894    push        ebp
 004B8895    mov         ebp,esp
 004B8897    add         esp,0FFFFFFE4
 004B889A    test        dl,dl
>004B889C    je          004B88A6
 004B889E    add         esp,0FFFFFFF0
 004B88A1    call        @ClassCreate
 004B88A6    mov         dword ptr [ebp-0C],ecx
 004B88A9    mov         byte ptr [ebp-5],dl
 004B88AC    mov         dword ptr [ebp-4],eax
 004B88AF    mov         ecx,dword ptr [ebp-0C]
 004B88B2    xor         edx,edx
 004B88B4    mov         eax,dword ptr [ebp-4]
 004B88B7    call        004C4B70
 004B88BC    mov         eax,dword ptr [ebp-4]
 004B88BF    mov         edx,dword ptr ds:[4B894C];0x2 gvar_004B894C
 004B88C5    not         edx
 004B88C7    and         edx,dword ptr [eax+50];TCustomMenuItem.FControlStyle:TControlStyle
 004B88CA    mov         eax,dword ptr [ebp-4]
 004B88CD    mov         dword ptr [eax+50],edx;TCustomMenuItem.FControlStyle:TControlStyle
 004B88D0    push        0
 004B88D2    lea         eax,[ebp-1C]
 004B88D5    push        eax
 004B88D6    mov         ecx,0A
 004B88DB    xor         edx,edx
 004B88DD    mov         eax,2
 004B88E2    call        0041E714
 004B88E7    lea         edx,[ebp-1C]
 004B88EA    mov         eax,dword ptr [ebp-4]
 004B88ED    call        004C6394
 004B88F2    mov         edx,0A
 004B88F7    mov         eax,dword ptr [ebp-4]
 004B88FA    call        004C6404
 004B88FF    mov         eax,dword ptr [ebp-0C]
 004B8902    mov         edx,dword ptr ds:[4B1650];TCustomActionMenuBar
 004B8908    call        @IsClass
 004B890D    test        al,al
>004B890F    je          004B891D
 004B8911    mov         eax,dword ptr [ebp-4]
 004B8914    mov         edx,dword ptr [ebp-0C]
 004B8917    mov         dword ptr [eax+1AC],edx;TCustomMenuItem.FMenu:TCustomActionMenuBar
 004B891D    push        0F
 004B891F    call        user32.GetSystemMetrics
 004B8924    mov         edx,dword ptr [ebp-4]
 004B8927    mov         dword ptr [edx+1C4],eax;TCustomMenuItem.FCYMenu:Integer
 004B892D    mov         eax,dword ptr [ebp-4]
 004B8930    cmp         byte ptr [ebp-5],0
>004B8934    je          004B8945
 004B8936    call        @AfterConstruction
 004B893B    pop         dword ptr fs:[0]
 004B8942    add         esp,0C
 004B8945    mov         eax,dword ptr [ebp-4]
 004B8948    mov         esp,ebp
 004B894A    pop         ebp
 004B894B    ret
*}
end;

//004B8950
destructor TCustomMenuItem.Destroy;
begin
{*
 004B8950    push        ebp
 004B8951    mov         ebp,esp
 004B8953    add         esp,0FFFFFFF8
 004B8956    call        @BeforeDestruction
 004B895B    mov         byte ptr [ebp-5],dl
 004B895E    mov         dword ptr [ebp-4],eax
 004B8961    mov         eax,dword ptr [ebp-4]
 004B8964    cmp         dword ptr [eax+16C],0
>004B896B    je          004B899C
 004B896D    mov         eax,dword ptr [ebp-4]
 004B8970    mov         eax,dword ptr [eax+16C]
 004B8976    mov         eax,dword ptr [eax+18]
 004B8979    mov         edx,dword ptr ds:[4B1650];TCustomActionMenuBar
 004B897F    call        @IsClass
 004B8984    test        al,al
>004B8986    je          004B899C
 004B8988    mov         eax,dword ptr [ebp-4]
 004B898B    mov         eax,dword ptr [eax+16C]
 004B8991    mov         eax,dword ptr [eax+18]
 004B8994    mov         edx,dword ptr [eax]
 004B8996    call        dword ptr [edx+17C]
 004B899C    mov         dl,byte ptr [ebp-5]
 004B899F    and         dl,0FC
 004B89A2    mov         eax,dword ptr [ebp-4]
 004B89A5    call        TCustomActionControl.Destroy
 004B89AA    cmp         byte ptr [ebp-5],0
>004B89AE    jle         004B89B8
 004B89B0    mov         eax,dword ptr [ebp-4]
 004B89B3    call        @ClassDestroy
 004B89B8    pop         ecx
 004B89B9    pop         ecx
 004B89BA    pop         ebp
 004B89BB    ret
*}
end;

//004B89BC
procedure sub_004B89BC;
begin
{*
 004B89BC    push        ebp
 004B89BD    mov         ebp,esp
 004B89BF    add         esp,0FFFFFFF0
 004B89C2    mov         dword ptr [ebp-4],eax
 004B89C5    mov         eax,dword ptr [ebp-4]
 004B89C8    cmp         dword ptr [eax+16C],0;TCustomMenuItem.FActionClient:TActionClientItem
>004B89CF    je          004B8AD2
 004B89D5    mov         eax,dword ptr [ebp-4]
 004B89D8    mov         eax,dword ptr [eax+16C];TCustomMenuItem.FActionClient:TActionClientItem
 004B89DE    call        004BE56C
 004B89E3    test        al,al
>004B89E5    je          004B8AD2
 004B89EB    mov         eax,dword ptr [ebp-4]
 004B89EE    mov         eax,dword ptr [eax+16C];TCustomMenuItem.FActionClient:TActionClientItem
 004B89F4    call        TActionClient.GetItems
 004B89F9    call        004BF6A4
 004B89FE    test        eax,eax
>004B8A00    je          004B8AD2
 004B8A06    mov         eax,dword ptr [ebp-4]
 004B8A09    mov         eax,dword ptr [eax+160];TCustomMenuItem....................................................
 004B8A0F    mov         dword ptr [ebp-8],eax
 004B8A12    mov         eax,dword ptr [ebp-4]
 004B8A15    cmp         byte ptr [eax+18A],0;TCustomMenuItem.FSelected:Boolean
>004B8A1C    je          004B8A3B
 004B8A1E    mov         eax,dword ptr [ebp-4]
 004B8A21    call        004C6C1C
 004B8A26    call        004C4A40
 004B8A2B    mov         edx,dword ptr [eax+64]
 004B8A2E    mov         eax,dword ptr [ebp-8]
 004B8A31    mov         eax,dword ptr [eax+10];TCanvas.Pen:TPen
 004B8A34    call        TPen.SetColor
>004B8A39    jmp         004B8A56
 004B8A3B    mov         eax,dword ptr [ebp-4]
 004B8A3E    call        004C6C1C
 004B8A43    call        004C4A40
 004B8A48    mov         edx,dword ptr [eax+50]
 004B8A4B    mov         eax,dword ptr [ebp-8]
 004B8A4E    mov         eax,dword ptr [eax+10];TCanvas.Pen:TPen
 004B8A51    call        TPen.SetColor
 004B8A56    mov         eax,dword ptr [ebp-8]
 004B8A59    mov         eax,dword ptr [eax+10];TCanvas.Pen:TPen
 004B8A5C    call        TPen.GetColor
 004B8A61    mov         edx,eax
 004B8A63    mov         eax,dword ptr [ebp-8]
 004B8A66    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 004B8A69    call        TBrush.SetColor
 004B8A6E    mov         eax,dword ptr [ebp-4]
 004B8A71    cmp         byte ptr [eax+18A],0;TCustomMenuItem.FSelected:Boolean
>004B8A78    je          004B8A9C
 004B8A7A    mov         eax,dword ptr [ebp-4]
 004B8A7D    mov         eax,dword ptr [eax+1AC];TCustomMenuItem.FMenu:TCustomActionMenuBar
 004B8A83    call        004C4A40
 004B8A88    mov         edx,dword ptr [eax+64]
 004B8A8B    mov         eax,dword ptr [ebp-4]
 004B8A8E    mov         eax,dword ptr [eax+160];TCustomMenuItem....................................................
 004B8A94    mov         eax,dword ptr [eax+10];TCanvas.Pen:TPen
 004B8A97    call        TPen.SetColor
 004B8A9C    push        3
 004B8A9E    lea         ecx,[ebp-10]
 004B8AA1    mov         eax,dword ptr [ebp-4]
 004B8AA4    mov         edx,dword ptr [eax+4C];TCustomMenuItem.Height:Integer
 004B8AA7    sar         edx,1
>004B8AA9    jns         004B8AAE
 004B8AAB    adc         edx,0
 004B8AAE    sub         edx,3
 004B8AB1    mov         eax,dword ptr [ebp-4]
 004B8AB4    mov         eax,dword ptr [eax+48];TCustomMenuItem.Width:Integer
 004B8AB7    sub         eax,0B
 004B8ABA    call        Point
 004B8ABF    lea         ecx,[ebp-10]
 004B8AC2    mov         dl,1
 004B8AC4    mov         eax,dword ptr [ebp-4]
 004B8AC7    mov         eax,dword ptr [eax+160];TCustomMenuItem....................................................
 004B8ACD    call        004AD904
 004B8AD2    mov         esp,ebp
 004B8AD4    pop         ebp
 004B8AD5    ret
*}
end;

//004B8AD8
procedure sub_004B8AD8;
begin
{*
 004B8AD8    push        ebp
 004B8AD9    mov         ebp,esp
 004B8ADB    push        ecx
 004B8ADC    mov         dword ptr [ebp-4],eax
 004B8ADF    mov         eax,dword ptr [ebp-4]
 004B8AE2    call        004C5BA8
 004B8AE7    mov         eax,dword ptr [ebp-4]
 004B8AEA    mov         eax,dword ptr [eax+16C];TCustomMenuItem.FActionClient:TActionClientItem
 004B8AF0    call        004BE56C
 004B8AF5    test        al,al
>004B8AF7    je          004B8B04
 004B8AF9    mov         eax,dword ptr [ebp-4]
 004B8AFC    mov         edx,dword ptr [eax]
 004B8AFE    call        dword ptr [edx+0E8];TCustomMenuItem.sub_004B89BC
 004B8B04    mov         eax,dword ptr [ebp-4]
 004B8B07    call        004C6C1C
 004B8B0C    mov         edx,dword ptr [eax]
 004B8B0E    call        dword ptr [edx+104]
 004B8B14    test        al,al
>004B8B16    je          004B8B38
 004B8B18    mov         eax,dword ptr [ebp-4]
 004B8B1B    call        004C6C1C
 004B8B20    mov         edx,dword ptr [eax]
 004B8B22    call        dword ptr [edx+104]
 004B8B28    test        al,al
>004B8B2A    je          004B8B43
 004B8B2C    mov         eax,dword ptr [ebp-4]
 004B8B2F    cmp         byte ptr [eax+18A],0;TCustomMenuItem.FSelected:Boolean
>004B8B36    jne         004B8B43
 004B8B38    mov         eax,dword ptr [ebp-4]
 004B8B3B    mov         edx,dword ptr [eax]
 004B8B3D    call        dword ptr [edx+0EC];TCustomMenuItem.sub_004B8B48
 004B8B43    pop         ecx
 004B8B44    pop         ebp
 004B8B45    ret
*}
end;

//004B8B48
procedure sub_004B8B48;
begin
{*
 004B8B48    push        ebp
 004B8B49    mov         ebp,esp
 004B8B4B    add         esp,0FFFFFFEC
 004B8B4E    mov         dword ptr [ebp-4],eax
 004B8B51    lea         edx,[ebp-14]
 004B8B54    mov         eax,dword ptr [ebp-4]
 004B8B57    mov         ecx,dword ptr [eax]
 004B8B59    call        dword ptr [ecx+44];TCustomMenuItem.sub_00482F5C
 004B8B5C    mov         eax,dword ptr [ebp-4]
 004B8B5F    test        byte ptr [eax+1A8],2;TCustomMenuItem.FEdges:TMenuEdges
>004B8B66    je          004B8BB1
 004B8B68    mov         eax,dword ptr [ebp-4]
 004B8B6B    call        004C6C1C
 004B8B70    call        004C4A40
 004B8B75    mov         edx,dword ptr [eax+58]
 004B8B78    mov         eax,dword ptr [ebp-4]
 004B8B7B    mov         eax,dword ptr [eax+160];TCustomMenuItem....................................................
 004B8B81    mov         eax,dword ptr [eax+10];TCanvas.Pen:TPen
 004B8B84    call        TPen.SetColor
 004B8B89    mov         ecx,dword ptr [ebp-10]
 004B8B8C    mov         edx,dword ptr [ebp-14]
 004B8B8F    mov         eax,dword ptr [ebp-4]
 004B8B92    mov         eax,dword ptr [eax+160];TCustomMenuItem....................................................
 004B8B98    call        0042F14C
 004B8B9D    mov         ecx,dword ptr [ebp-10]
 004B8BA0    mov         edx,dword ptr [ebp-0C]
 004B8BA3    mov         eax,dword ptr [ebp-4]
 004B8BA6    mov         eax,dword ptr [eax+160];TCustomMenuItem....................................................
 004B8BAC    call        0042F0D0
 004B8BB1    mov         eax,dword ptr [ebp-4]
 004B8BB4    test        byte ptr [eax+1A8],8;TCustomMenuItem.FEdges:TMenuEdges
>004B8BBB    je          004B8C0C
 004B8BBD    mov         eax,dword ptr [ebp-4]
 004B8BC0    call        004C6C1C
 004B8BC5    call        004C4A40
 004B8BCA    call        TXPColorMap.GetUnusedColor
 004B8BCF    mov         edx,eax
 004B8BD1    mov         eax,dword ptr [ebp-4]
 004B8BD4    mov         eax,dword ptr [eax+160];TCustomMenuItem....................................................
 004B8BDA    mov         eax,dword ptr [eax+10];TCanvas.Pen:TPen
 004B8BDD    call        TPen.SetColor
 004B8BE2    mov         ecx,dword ptr [ebp-8]
 004B8BE5    dec         ecx
 004B8BE6    mov         edx,dword ptr [ebp-14]
 004B8BE9    mov         eax,dword ptr [ebp-4]
 004B8BEC    mov         eax,dword ptr [eax+160];TCustomMenuItem....................................................
 004B8BF2    call        0042F14C
 004B8BF7    mov         ecx,dword ptr [ebp-8]
 004B8BFA    dec         ecx
 004B8BFB    mov         edx,dword ptr [ebp-0C]
 004B8BFE    mov         eax,dword ptr [ebp-4]
 004B8C01    mov         eax,dword ptr [eax+160];TCustomMenuItem....................................................
 004B8C07    call        0042F0D0
 004B8C0C    mov         eax,dword ptr [ebp-4]
 004B8C0F    test        byte ptr [eax+1A8],4;TCustomMenuItem.FEdges:TMenuEdges
>004B8C16    je          004B8C27
 004B8C18    mov         eax,dword ptr [ebp-4]
 004B8C1B    test        byte ptr [eax+1A8],2;TCustomMenuItem.FEdges:TMenuEdges
>004B8C22    je          004B8C27
 004B8C24    inc         dword ptr [ebp-10]
 004B8C27    mov         esp,ebp
 004B8C29    pop         ebp
 004B8C2A    ret
*}
end;

//004B8C2C
procedure TCustomMenuItem.sub_004854CC;
begin
{*
 004B8C2C    push        ebp
 004B8C2D    mov         ebp,esp
 004B8C2F    add         esp,0FFFFFFF8
 004B8C32    mov         dword ptr [ebp-4],eax
 004B8C35    mov         eax,dword ptr [ebp-4]
 004B8C38    mov         eax,dword ptr [eax+1AC];TCustomMenuItem.FMenu:TCustomActionMenuBar
 004B8C3E    mov         eax,dword ptr [eax+2C4];TCustomActionMenuBar.FRootMenu:TCustomActionMenuBar
 004B8C44    mov         eax,dword ptr [eax+2A4];TCustomActionMenuBar.FParentForm:TCustomForm
 004B8C4A    mov         dword ptr [ebp-8],eax
 004B8C4D    cmp         dword ptr [ebp-8],0
>004B8C51    je          004B8C5E
 004B8C53    mov         eax,dword ptr [ebp-8]
 004B8C56    mov         edx,dword ptr [eax]
 004B8C58    call        dword ptr [edx+0C4];TCustomForm.sub_004A746C
 004B8C5E    pop         ecx
 004B8C5F    pop         ecx
 004B8C60    pop         ebp
 004B8C61    ret
*}
end;

//004B8C64
procedure sub_004B8C64;
begin
{*
 004B8C64    push        ebp
 004B8C65    mov         ebp,esp
 004B8C67    add         esp,0FFFFFFF8
 004B8C6A    mov         dword ptr [ebp-4],eax
 004B8C6D    mov         dl,1
 004B8C6F    mov         eax,dword ptr [ebp-4]
 004B8C72    mov         ecx,dword ptr [eax]
 004B8C74    call        dword ptr [ecx+0D8];TCustomMenuItem.sub_004B8EE8
 004B8C7A    mov         eax,dword ptr [ebp-4]
 004B8C7D    mov         byte ptr [eax+1B0],0;TCustomMenuItem.FMouseSelected:Boolean
 004B8C84    mov         eax,dword ptr [ebp-4]
 004B8C87    mov         edx,dword ptr [eax]
 004B8C89    call        dword ptr [edx+3C];TCustomMenuItem.sub_004C6BC4
 004B8C8C    mov         edx,dword ptr ds:[492C28];TCustomAction
 004B8C92    call        @IsClass
 004B8C97    test        al,al
>004B8C99    je          004B8CC5
 004B8C9B    mov         eax,dword ptr [ebp-4]
 004B8C9E    mov         edx,dword ptr [eax]
 004B8CA0    call        dword ptr [edx+3C];TCustomMenuItem.sub_004C6BC4
 004B8CA3    mov         dword ptr [ebp-8],eax
 004B8CA6    mov         eax,dword ptr [ebp-8]
 004B8CA9    cmp         dword ptr [eax+6C],0
>004B8CAD    jle         004B8CC5
 004B8CAF    mov         eax,dword ptr [ebp-8]
 004B8CB2    cmp         byte ptr [eax+95],0
>004B8CB9    jne         004B8CC5
 004B8CBB    mov         dl,1
 004B8CBD    mov         eax,dword ptr [ebp-8]
 004B8CC0    call        TAction.SetChecked
 004B8CC5    mov         eax,dword ptr [ebp-4]
 004B8CC8    call        004C64C8
 004B8CCD    pop         ecx
 004B8CCE    pop         ecx
 004B8CCF    pop         ebp
 004B8CD0    ret
*}
end;

//004B8CD4
{*procedure sub_004B8CD4(?:TCustomMenuItem; ?:?);
begin
 004B8CD4    push        ebp
 004B8CD5    mov         ebp,esp
 004B8CD7    add         esp,0FFFFFFF0
 004B8CDA    mov         byte ptr [ebp-5],dl
 004B8CDD    mov         dword ptr [ebp-4],eax
 004B8CE0    mov         al,byte ptr [ebp-5]
 004B8CE3    mov         edx,dword ptr [ebp-4]
 004B8CE6    cmp         al,byte ptr [edx+1A8];TCustomMenuItem.FEdges:TMenuEdges
>004B8CEC    je          004B8D96
 004B8CF2    mov         eax,dword ptr [ebp-4]
 004B8CF5    mov         eax,dword ptr [eax+4C];TCustomMenuItem.Height:Integer
 004B8CF8    mov         dword ptr [ebp-0C],eax
 004B8CFB    test        byte ptr [ebp-5],2
>004B8CFF    je          004B8D12
 004B8D01    mov         eax,dword ptr [ebp-4]
 004B8D04    test        byte ptr [eax+1A8],2;TCustomMenuItem.FEdges:TMenuEdges
>004B8D0B    jne         004B8D12
 004B8D0D    inc         dword ptr [ebp-0C]
>004B8D10    jmp         004B8D27
 004B8D12    test        byte ptr [ebp-5],2
>004B8D16    jne         004B8D27
 004B8D18    mov         eax,dword ptr [ebp-4]
 004B8D1B    test        byte ptr [eax+1A8],2;TCustomMenuItem.FEdges:TMenuEdges
>004B8D22    je          004B8D27
 004B8D24    dec         dword ptr [ebp-0C]
 004B8D27    test        byte ptr [ebp-5],8
>004B8D2B    je          004B8D3E
 004B8D2D    mov         eax,dword ptr [ebp-4]
 004B8D30    test        byte ptr [eax+1A8],8;TCustomMenuItem.FEdges:TMenuEdges
>004B8D37    jne         004B8D3E
 004B8D39    inc         dword ptr [ebp-0C]
>004B8D3C    jmp         004B8D53
 004B8D3E    test        byte ptr [ebp-5],8
>004B8D42    jne         004B8D53
 004B8D44    mov         eax,dword ptr [ebp-4]
 004B8D47    test        byte ptr [eax+1A8],8;TCustomMenuItem.FEdges:TMenuEdges
>004B8D4E    je          004B8D53
 004B8D50    dec         dword ptr [ebp-0C]
 004B8D53    mov         eax,dword ptr [ebp-4]
 004B8D56    call        004C6C1C
 004B8D5B    call        004C2880
 004B8D60    mov         dword ptr [ebp-10],eax
 004B8D63    cmp         dword ptr [ebp-10],0
>004B8D67    je          004B8D77
 004B8D69    mov         eax,dword ptr [ebp-10]
 004B8D6C    mov         eax,dword ptr [eax+40]
 004B8D6F    cmp         eax,dword ptr [ebp-4]
>004B8D72    jne         004B8D77
 004B8D74    inc         dword ptr [ebp-0C]
 004B8D77    mov         al,byte ptr [ebp-5]
 004B8D7A    mov         edx,dword ptr [ebp-4]
 004B8D7D    mov         byte ptr [edx+1A8],al;TCustomMenuItem.FEdges:TMenuEdges
 004B8D83    mov         edx,dword ptr [ebp-0C]
 004B8D86    mov         eax,dword ptr [ebp-4]
 004B8D89    call        TToolButton.SetHeight
 004B8D8E    mov         eax,dword ptr [ebp-4]
 004B8D91    mov         edx,dword ptr [eax]
 004B8D93    call        dword ptr [edx+7C];TCustomMenuItem.sub_00483F08
 004B8D96    mov         esp,ebp
 004B8D98    pop         ebp
 004B8D99    ret
end;*}

//004B8D9C
{*procedure TCustomMenuItem.CMMouseEnter(?:?);
begin
 004B8D9C    push        ebp
 004B8D9D    mov         ebp,esp
 004B8D9F    add         esp,0FFFFFFF4
 004B8DA2    mov         dword ptr [ebp-8],edx
 004B8DA5    mov         dword ptr [ebp-4],eax
 004B8DA8    mov         edx,dword ptr [ebp-8]
 004B8DAB    mov         eax,dword ptr [ebp-4]
 004B8DAE    call        TControl.CMMouseEnter
 004B8DB3    mov         eax,dword ptr [ebp-4]
 004B8DB6    cmp         byte ptr [eax+5D],1;TCustomMenuItem.FDragMode:TDragMode
>004B8DBA    je          004B8E68
 004B8DC0    mov         eax,dword ptr [ebp-4]
 004B8DC3    cmp         dword ptr [eax+16C],0;TCustomMenuItem.FActionClient:TActionClientItem
>004B8DCA    je          004B8DDF
 004B8DCC    mov         eax,dword ptr [ebp-4]
 004B8DCF    mov         eax,dword ptr [eax+16C];TCustomMenuItem.FActionClient:TActionClientItem
 004B8DD5    cmp         dword ptr [eax+18],0;TActionClientItem.FChildActionBar:TCustomActionBar
>004B8DD9    jne         004B8E68
 004B8DDF    mov         eax,dword ptr [ebp-4]
 004B8DE2    test        byte ptr [eax+1C],10;TCustomMenuItem.FComponentState:TComponentState
>004B8DE6    je          004B8DF7
 004B8DE8    mov         dl,1
 004B8DEA    mov         eax,dword ptr [ebp-4]
 004B8DED    mov         ecx,dword ptr [eax]
 004B8DEF    call        dword ptr [ecx+0D8];TCustomMenuItem.sub_004B8EE8
>004B8DF5    jmp         004B8E68
 004B8DF7    mov         eax,dword ptr [ebp-4]
 004B8DFA    mov         edx,dword ptr [eax]
 004B8DFC    call        dword ptr [edx+0C8];TCustomMenuItem.sub_004C6AA0
 004B8E02    test        al,al
>004B8E04    jne         004B8E68
 004B8E06    mov         eax,dword ptr [ebp-4]
 004B8E09    mov         edx,dword ptr [eax]
 004B8E0B    call        dword ptr [edx+50];TImage.GetEnabled
 004B8E0E    test        al,al
>004B8E10    je          004B8E3F
 004B8E12    mov         dl,1
 004B8E14    mov         eax,dword ptr [ebp-4]
 004B8E17    mov         ecx,dword ptr [eax]
 004B8E19    call        dword ptr [ecx+0D8];TCustomMenuItem.sub_004B8EE8
 004B8E1F    mov         eax,dword ptr [ebp-4]
 004B8E22    call        004C6C1C
 004B8E27    mov         edx,dword ptr [eax]
 004B8E29    call        dword ptr [edx+104]
 004B8E2F    test        al,al
>004B8E31    jne         004B8E68
 004B8E33    mov         eax,dword ptr [ebp-4]
 004B8E36    mov         byte ptr [eax+1B0],1;TCustomMenuItem.FMouseSelected:Boolean
>004B8E3D    jmp         004B8E68
 004B8E3F    mov         eax,dword ptr [ebp-4]
 004B8E42    cmp         dword ptr [eax+1AC],0;TCustomMenuItem.FMenu:TCustomActionMenuBar
>004B8E49    je          004B8E68
 004B8E4B    mov         eax,dword ptr [ebp-4]
 004B8E4E    mov         eax,dword ptr [eax+1AC];TCustomMenuItem.FMenu:TCustomActionMenuBar
 004B8E54    mov         dword ptr [ebp-0C],eax
 004B8E57    mov         eax,dword ptr [ebp-0C]
 004B8E5A    mov         eax,dword ptr [eax+2C4];TCustomActionMenuBar.FRootMenu:TCustomActionMenuBar
 004B8E60    xor         edx,edx
 004B8E62    mov         dword ptr [eax+28C],edx;TCustomActionMenuBar.FDelayItem:TCustomActionControl
 004B8E68    mov         esp,ebp
 004B8E6A    pop         ebp
 004B8E6B    ret
end;*}

//004B8E6C
{*procedure TCustomMenuItem.CMTextChanged(?:?);
begin
 004B8E6C    push        ebp
 004B8E6D    mov         ebp,esp
 004B8E6F    add         esp,0FFFFFFF0
 004B8E72    xor         ecx,ecx
 004B8E74    mov         dword ptr [ebp-0C],ecx
 004B8E77    mov         dword ptr [ebp-10],ecx
 004B8E7A    mov         dword ptr [ebp-8],edx
 004B8E7D    mov         dword ptr [ebp-4],eax
 004B8E80    xor         eax,eax
 004B8E82    push        ebp
 004B8E83    push        4B8EDD
 004B8E88    push        dword ptr fs:[eax]
 004B8E8B    mov         dword ptr fs:[eax],esp
 004B8E8E    mov         edx,dword ptr [ebp-8]
 004B8E91    mov         eax,dword ptr [ebp-4]
 004B8E94    call        TCustomActionControl.CMTextChanged
 004B8E99    lea         edx,[ebp-10]
 004B8E9C    mov         eax,dword ptr [ebp-4]
 004B8E9F    call        TPanel.GetCaption
 004B8EA4    mov         eax,dword ptr [ebp-10]
 004B8EA7    lea         edx,[ebp-0C]
 004B8EAA    call        0049DFE4
 004B8EAF    mov         edx,dword ptr [ebp-0C]
 004B8EB2    mov         eax,dword ptr [ebp-4]
 004B8EB5    add         eax,1C8;TCustomMenuItem.FNoPrefix:String
 004B8EBA    call        @LStrAsg
 004B8EBF    xor         eax,eax
 004B8EC1    pop         edx
 004B8EC2    pop         ecx
 004B8EC3    pop         ecx
 004B8EC4    mov         dword ptr fs:[eax],edx
 004B8EC7    push        4B8EE4
 004B8ECC    lea         eax,[ebp-10]
 004B8ECF    call        @LStrClr
 004B8ED4    lea         eax,[ebp-0C]
 004B8ED7    call        @LStrClr
 004B8EDC    ret
>004B8EDD    jmp         @HandleFinally
>004B8EE2    jmp         004B8ECC
 004B8EE4    mov         esp,ebp
 004B8EE6    pop         ebp
 004B8EE7    ret
end;*}

//004B8EE8
{*procedure sub_004B8EE8(?:?);
begin
 004B8EE8    push        ebp
 004B8EE9    mov         ebp,esp
 004B8EEB    add         esp,0FFFFFFF4
 004B8EEE    xor         ecx,ecx
 004B8EF0    mov         dword ptr [ebp-0C],ecx
 004B8EF3    mov         byte ptr [ebp-5],dl
 004B8EF6    mov         dword ptr [ebp-4],eax
 004B8EF9    xor         eax,eax
 004B8EFB    push        ebp
 004B8EFC    push        4B8FA3
 004B8F01    push        dword ptr fs:[eax]
 004B8F04    mov         dword ptr fs:[eax],esp
 004B8F07    cmp         byte ptr [ebp-5],0
>004B8F0B    jne         004B8F17
 004B8F0D    mov         eax,dword ptr [ebp-4]
 004B8F10    mov         byte ptr [eax+1B0],0;TCustomMenuItem.FMouseSelected:Boolean
 004B8F17    mov         dl,byte ptr [ebp-5]
 004B8F1A    mov         eax,dword ptr [ebp-4]
 004B8F1D    call        004C62B8
 004B8F22    mov         eax,dword ptr [ebp-4]
 004B8F25    cmp         dword ptr [eax+1AC],0;TCustomMenuItem.FMenu:TCustomActionMenuBar
>004B8F2C    je          004B8F3F
 004B8F2E    mov         edx,dword ptr [ebp-4]
 004B8F31    mov         eax,dword ptr [ebp-4]
 004B8F34    mov         eax,dword ptr [eax+1AC];TCustomMenuItem.FMenu:TCustomActionMenuBar
 004B8F3A    call        004B3650
 004B8F3F    cmp         byte ptr [ebp-5],0
>004B8F43    je          004B8F8D
 004B8F45    mov         eax,dword ptr [ebp-4]
 004B8F48    mov         eax,dword ptr [eax+16C];TCustomMenuItem.FActionClient:TActionClientItem
 004B8F4E    call        TActionClientItem.GetAction
 004B8F53    test        eax,eax
>004B8F55    je          004B8F81
 004B8F57    mov         eax,dword ptr [ebp-4]
 004B8F5A    mov         eax,dword ptr [eax+16C];TCustomMenuItem.FActionClient:TActionClientItem
 004B8F60    call        TActionClientItem.GetAction
 004B8F65    mov         eax,dword ptr [eax+7C]
 004B8F68    lea         edx,[ebp-0C]
 004B8F6B    call        0047FA98
 004B8F70    mov         edx,dword ptr [ebp-0C]
 004B8F73    mov         eax,[0056E3C0];^Application:TApplication
 004B8F78    mov         eax,dword ptr [eax]
 004B8F7A    call        004AC264
>004B8F7F    jmp         004B8F8D
 004B8F81    mov         eax,[0056E3C0];^Application:TApplication
 004B8F86    mov         eax,dword ptr [eax]
 004B8F88    call        004AC6B0
 004B8F8D    xor         eax,eax
 004B8F8F    pop         edx
 004B8F90    pop         ecx
 004B8F91    pop         ecx
 004B8F92    mov         dword ptr fs:[eax],edx
 004B8F95    push        4B8FAA
 004B8F9A    lea         eax,[ebp-0C]
 004B8F9D    call        @LStrClr
 004B8FA2    ret
>004B8FA3    jmp         @HandleFinally
>004B8FA8    jmp         004B8F9A
 004B8FAA    mov         esp,ebp
 004B8FAC    pop         ebp
 004B8FAD    ret
end;*}

//004B8FB0
{*procedure TCustomMenuItem.sub_00484338(?:?; ?:?; ?:?);
begin
 004B8FB0    push        ebp
 004B8FB1    mov         ebp,esp
 004B8FB3    add         esp,0FFFFFFF0
 004B8FB6    mov         dword ptr [ebp-0C],ecx
 004B8FB9    mov         dword ptr [ebp-8],edx
 004B8FBC    mov         dword ptr [ebp-4],eax
 004B8FBF    mov         eax,dword ptr [ebp+8]
 004B8FC2    push        eax
 004B8FC3    mov         ecx,dword ptr [ebp-0C]
 004B8FC6    mov         edx,dword ptr [ebp-8]
 004B8FC9    mov         eax,dword ptr [ebp-4]
 004B8FCC    call        TCustomActionControl.sub_00484338
 004B8FD1    mov         eax,dword ptr [ebp-4]
 004B8FD4    call        004C6C1C
 004B8FD9    mov         edx,dword ptr ds:[4B1650];TCustomActionMenuBar
 004B8FDF    call        @IsClass
 004B8FE4    test        al,al
>004B8FE6    je          004B9029
 004B8FE8    mov         eax,dword ptr [ebp-4]
 004B8FEB    call        004C6C1C
 004B8FF0    mov         edx,dword ptr ds:[4B1650];TCustomActionMenuBar
 004B8FF6    call        @AsClass
 004B8FFB    mov         dword ptr [ebp-10],eax
 004B8FFE    mov         eax,dword ptr [ebp-10]
 004B9001    cmp         dword ptr [eax+2C4],0;TCustomActionMenuBar.FRootMenu:TCustomActionMenuBar
>004B9008    je          004B9029
 004B900A    mov         eax,dword ptr [ebp-10]
 004B900D    mov         eax,dword ptr [eax+2C4];TCustomActionMenuBar.FRootMenu:TCustomActionMenuBar
 004B9013    cmp         dword ptr [eax+30],0;TCustomActionMenuBar.FParent:TWinControl
>004B9017    je          004B9029
 004B9019    mov         eax,[0056E3C0];^Application:TApplication
 004B901E    mov         eax,dword ptr [eax]
 004B9020    mov         eax,dword ptr [eax+30];TApplication.FHandle:HWND
 004B9023    push        eax
 004B9024    call        user32.SetFocus
 004B9029    mov         esp,ebp
 004B902B    pop         ebp
 004B902C    ret         4
end;*}

//004B9030
{*procedure TCustomMenuItem.sub_004842E0(?:?; ?:?; ?:?; ?:?; ?:?);
begin
 004B9030    push        ebp
 004B9031    mov         ebp,esp
 004B9033    add         esp,0FFFFFFEC
 004B9036    mov         dword ptr [ebp-0C],ecx
 004B9039    mov         dword ptr [ebp-8],edx
 004B903C    mov         dword ptr [ebp-4],eax
 004B903F    mov         eax,dword ptr [ebp-8]
 004B9042    mov         edx,dword ptr ds:[4BB63C];TActionItemDragObject
 004B9048    call        @IsClass
 004B904D    test        al,al
>004B904F    je          004B9109
 004B9055    mov         eax,dword ptr [ebp-8]
 004B9058    mov         edx,dword ptr ds:[4BB63C];TActionItemDragObject
 004B905E    call        @AsClass
 004B9063    mov         dword ptr [ebp-10],eax
 004B9066    mov         eax,dword ptr [ebp-10]
 004B9069    mov         eax,dword ptr [eax+40];TActionItemDragObject....................FClientItem:TActionClien...
 004B906C    mov         edx,dword ptr [ebp-4]
 004B906F    cmp         eax,dword ptr [edx+16C];TCustomMenuItem.FActionClient:TActionClientItem
>004B9075    jne         004B90B7
 004B9077    mov         eax,dword ptr [ebp-4]
 004B907A    mov         eax,dword ptr [eax+16C];TCustomMenuItem.FActionClient:TActionClientItem
 004B9080    mov         eax,dword ptr [eax+18];TActionClientItem.FChildActionBar:TCustomActionBar
 004B9083    mov         edx,dword ptr ds:[4B1650];TCustomActionMenuBar
 004B9089    call        @IsClass
 004B908E    test        al,al
>004B9090    je          004B90B7
 004B9092    mov         eax,dword ptr [ebp-4]
 004B9095    mov         eax,dword ptr [eax+16C];TCustomMenuItem.FActionClient:TActionClientItem
 004B909B    mov         eax,dword ptr [eax+18];TActionClientItem.FChildActionBar:TCustomActionBar
 004B909E    mov         edx,dword ptr ds:[4B1650];TCustomActionMenuBar
 004B90A4    call        @AsClass
 004B90A9    mov         dword ptr [ebp-14],eax
 004B90AC    mov         eax,dword ptr [ebp-14]
 004B90AF    mov         edx,dword ptr [eax]
 004B90B1    call        dword ptr [edx+17C];TCustomActionMenuBar.sub_004B31B8
 004B90B7    mov         eax,dword ptr [ebp-4]
 004B90BA    mov         eax,dword ptr [eax+1AC];TCustomMenuItem.FMenu:TCustomActionMenuBar
 004B90C0    mov         eax,dword ptr [eax+2C4];TCustomActionMenuBar.FRootMenu:TCustomActionMenuBar
 004B90C6    cmp         dword ptr [eax+28C],0;TCustomActionMenuBar.FDelayItem:TCustomActionControl
>004B90CD    je          004B9109
 004B90CF    mov         eax,dword ptr [ebp-4]
 004B90D2    mov         eax,dword ptr [eax+1AC];TCustomMenuItem.FMenu:TCustomActionMenuBar
 004B90D8    mov         eax,dword ptr [eax+2C4];TCustomActionMenuBar.FRootMenu:TCustomActionMenuBar
 004B90DE    mov         eax,dword ptr [eax+28C];TCustomActionMenuBar.FDelayItem:TCustomActionControl
 004B90E4    mov         eax,dword ptr [eax+16C];TCustomActionControl.FActionClient:TActionClientItem
 004B90EA    mov         edx,dword ptr [ebp-10]
 004B90ED    cmp         eax,dword ptr [edx+40];TActionItemDragObject.....................FClientItem:TActionClie...
>004B90F0    jne         004B9109
 004B90F2    mov         eax,dword ptr [ebp-4]
 004B90F5    mov         eax,dword ptr [eax+1AC];TCustomMenuItem.FMenu:TCustomActionMenuBar
 004B90FB    mov         eax,dword ptr [eax+2C4];TCustomActionMenuBar.FRootMenu:TCustomActionMenuBar
 004B9101    xor         edx,edx
 004B9103    mov         dword ptr [eax+28C],edx;TCustomActionMenuBar.FDelayItem:TCustomActionControl
 004B9109    mov         eax,dword ptr [ebp+10]
 004B910C    push        eax
 004B910D    mov         al,byte ptr [ebp+0C]
 004B9110    push        eax
 004B9111    mov         eax,dword ptr [ebp+8]
 004B9114    push        eax
 004B9115    mov         ecx,dword ptr [ebp-0C]
 004B9118    mov         edx,dword ptr [ebp-8]
 004B911B    mov         eax,dword ptr [ebp-4]
 004B911E    call        TCustomActionControl.sub_004842E0
 004B9123    mov         eax,dword ptr [ebp+8]
 004B9126    cmp         byte ptr [eax],0
>004B9129    je          004B9160
 004B912B    mov         eax,dword ptr [ebp-4]
 004B912E    call        004C6C1C
 004B9133    mov         edx,dword ptr ds:[4B1650];TCustomActionMenuBar
 004B9139    call        @IsClass
 004B913E    test        al,al
>004B9140    je          004B9160
 004B9142    mov         eax,dword ptr [ebp-4]
 004B9145    call        004C6C1C
 004B914A    cmp         byte ptr [eax+296],0
>004B9151    je          004B9160
 004B9153    mov         dl,1
 004B9155    mov         eax,dword ptr [ebp-4]
 004B9158    mov         ecx,dword ptr [eax]
 004B915A    call        dword ptr [ecx+0D8];TCustomMenuItem.sub_004B8EE8
 004B9160    mov         esp,ebp
 004B9162    pop         ebp
 004B9163    ret         0C
end;*}

//004B9168
procedure sub_004B9168;
begin
{*
 004B9168    push        ebp
 004B9169    mov         ebp,esp
 004B916B    add         esp,0FFFFFFC8
 004B916E    push        ebx
 004B916F    push        esi
 004B9170    push        edi
 004B9171    mov         dword ptr [ebp-4],eax
 004B9174    mov         eax,dword ptr [ebp-4]
 004B9177    call        004C6D68
 004B917C    lea         edx,[ebp-14]
 004B917F    mov         eax,dword ptr [ebp-4]
 004B9182    mov         ecx,dword ptr [eax]
 004B9184    call        dword ptr [ecx+0BC];TCustomMenuItem.sub_004C6058
 004B918A    mov         eax,dword ptr [ebp-4]
 004B918D    mov         eax,dword ptr [eax+1C4];TCustomMenuItem.FCYMenu:Integer
 004B9193    mov         dword ptr [ebp-0C],eax
 004B9196    mov         eax,dword ptr [ebp-4]
 004B9199    mov         edx,dword ptr [eax]
 004B919B    call        dword ptr [edx+0C8];TCustomMenuItem.sub_004C6AA0
 004B91A1    test        al,al
>004B91A3    je          004B91BD
 004B91A5    mov         eax,dword ptr [ebp-4]
 004B91A8    mov         eax,dword ptr [eax+1C4];TCustomMenuItem.FCYMenu:Integer
 004B91AE    mov         ecx,3
 004B91B3    cdq
 004B91B4    idiv        eax,ecx
 004B91B6    add         eax,eax
 004B91B8    mov         dword ptr [ebp-0C],eax
>004B91BB    jmp         004B91CC
 004B91BD    cmp         dword ptr [ebp-10],10
>004B91C1    jle         004B91CC
 004B91C3    mov         eax,dword ptr [ebp-10]
 004B91C6    add         eax,4
 004B91C9    mov         dword ptr [ebp-0C],eax
 004B91CC    mov         eax,dword ptr [ebp-4]
 004B91CF    cmp         dword ptr [eax+16C],0;TCustomMenuItem.FActionClient:TActionClientItem
>004B91D6    je          004B932C
 004B91DC    cmp         dword ptr [ebp-14],10
>004B91E0    jg          004B91EB
 004B91E2    mov         dword ptr [ebp-18],18
>004B91E9    jmp         004B91F4
 004B91EB    mov         eax,dword ptr [ebp-14]
 004B91EE    add         eax,6
 004B91F1    mov         dword ptr [ebp-18],eax
 004B91F4    mov         eax,dword ptr [ebp-4]
 004B91F7    lea         esi,[eax+190];TCustomMenuItem.FTextBounds:TRect
 004B91FD    lea         edi,[ebp-28]
 004B9200    movs        dword ptr [edi],dword ptr [esi]
 004B9201    movs        dword ptr [edi],dword ptr [esi]
 004B9202    movs        dword ptr [edi],dword ptr [esi]
 004B9203    movs        dword ptr [edi],dword ptr [esi]
 004B9204    mov         eax,dword ptr [ebp-0C]
 004B9207    sar         eax,1
>004B9209    jns         004B920E
 004B920B    adc         eax,0
 004B920E    mov         edx,dword ptr [ebp-4]
 004B9211    mov         edx,dword ptr [edx+19C]
 004B9217    sar         edx,1
>004B9219    jns         004B921E
 004B921B    adc         edx,0
 004B921E    sub         eax,edx
 004B9220    dec         eax
 004B9221    push        eax
 004B9222    mov         eax,18
 004B9227    mov         edx,dword ptr [ebp-4]
 004B922A    sub         eax,dword ptr [edx+190]
 004B9230    push        eax
 004B9231    lea         eax,[ebp-28]
 004B9234    push        eax
 004B9235    call        user32.OffsetRect
 004B923A    mov         eax,dword ptr [ebp-4]
 004B923D    lea         esi,[ebp-28]
 004B9240    lea         edi,[eax+190];TCustomMenuItem.FTextBounds:TRect
 004B9246    movs        dword ptr [edi],dword ptr [esi]
 004B9247    movs        dword ptr [edi],dword ptr [esi]
 004B9248    movs        dword ptr [edi],dword ptr [esi]
 004B9249    movs        dword ptr [edi],dword ptr [esi]
 004B924A    push        0
 004B924C    lea         eax,[ebp-38]
 004B924F    push        eax
 004B9250    xor         ecx,ecx
 004B9252    xor         edx,edx
 004B9254    xor         eax,eax
 004B9256    call        0041E714
 004B925B    mov         eax,dword ptr [ebp-4]
 004B925E    lea         esi,[ebp-38]
 004B9261    lea         edi,[eax+1B1];TCustomMenuItem.FShortCutBounds:TRect
 004B9267    movs        dword ptr [edi],dword ptr [esi]
 004B9268    movs        dword ptr [edi],dword ptr [esi]
 004B9269    movs        dword ptr [edi],dword ptr [esi]
 004B926A    movs        dword ptr [edi],dword ptr [esi]
 004B926B    mov         eax,dword ptr [ebp-4]
 004B926E    mov         eax,dword ptr [eax+16C];TCustomMenuItem.FActionClient:TActionClientItem
 004B9274    cmp         word ptr [eax+48],0;TActionClientItem.ShortCut:TShortCut
>004B9279    je          004B92F8
 004B927B    push        400
 004B9280    mov         eax,dword ptr [ebp-4]
 004B9283    add         eax,1B1;TCustomMenuItem.FShortCutBounds:TRect
 004B9288    push        eax
 004B9289    push        0FF
 004B928B    mov         eax,dword ptr [ebp-4]
 004B928E    mov         eax,dword ptr [eax+16C];TCustomMenuItem.FActionClient:TActionClientItem
 004B9294    mov         eax,dword ptr [eax+54];TActionClientItem.FShortCutText:String
 004B9297    call        @LStrToPChar
 004B929C    push        eax
 004B929D    mov         eax,dword ptr [ebp-4]
 004B92A0    mov         eax,dword ptr [eax+160];TCustomMenuItem....................................................
 004B92A6    call        0042F6A0
 004B92AB    push        eax
 004B92AC    call        user32.DrawTextA
 004B92B1    mov         eax,dword ptr [ebp-4]
 004B92B4    mov         eax,dword ptr [eax+194];TCustomMenuItem.FTextBounds.Top:Longint
 004B92BA    mov         edx,dword ptr [ebp-4]
 004B92BD    mov         dword ptr [edx+1B5],eax;TCustomMenuItem.FShortCutBounds.Top:Longint
 004B92C3    mov         eax,dword ptr [ebp-4]
 004B92C6    mov         eax,dword ptr [eax+19C]
 004B92CC    mov         edx,dword ptr [ebp-4]
 004B92CF    mov         dword ptr [edx+1BD],eax
 004B92D5    mov         eax,dword ptr [ebp-4]
 004B92D8    mov         eax,dword ptr [eax+198];TCustomMenuItem.FTextBounds.Right:Longint
 004B92DE    mov         edx,dword ptr [ebp-4]
 004B92E1    add         eax,dword ptr [edx+1B9];TCustomMenuItem.FShortCutBounds.Right:Longint
 004B92E7    add         eax,dword ptr [ebp-18]
 004B92EA    mov         edx,dword ptr [ebp-4]
 004B92ED    add         eax,dword ptr [edx+18C];TCustomMenuItem.FSpacing:Integer
 004B92F3    mov         dword ptr [ebp-8],eax
>004B92F6    jmp         004B930D
 004B92F8    mov         eax,dword ptr [ebp-4]
 004B92FB    mov         eax,dword ptr [eax+198];TCustomMenuItem.FTextBounds.Right:Longint
 004B9301    mov         edx,dword ptr [ebp-4]
 004B9304    add         eax,dword ptr [edx+190];TCustomMenuItem.FTextBounds:TRect
 004B930A    mov         dword ptr [ebp-8],eax
 004B930D    mov         eax,dword ptr [ebp-8]
 004B9310    push        eax
 004B9311    mov         eax,dword ptr [ebp-0C]
 004B9314    push        eax
 004B9315    mov         eax,dword ptr [ebp-4]
 004B9318    mov         ecx,dword ptr [eax+44];TCustomMenuItem.Top:Integer
 004B931B    mov         eax,dword ptr [ebp-4]
 004B931E    mov         edx,dword ptr [eax+40];TCustomMenuItem.Left:Integer
 004B9321    mov         eax,dword ptr [ebp-4]
 004B9324    mov         ebx,dword ptr [eax]
 004B9326    call        dword ptr [ebx+84];TCustomMenuItem.sub_00482930
 004B932C    pop         edi
 004B932D    pop         esi
 004B932E    pop         ebx
 004B932F    mov         esp,ebp
 004B9331    pop         ebp
 004B9332    ret
*}
end;

//004B9334
procedure sub_004B9334;
begin
{*
 004B9334    push        ebp
 004B9335    mov         ebp,esp
 004B9337    add         esp,0FFFFFFEC
 004B933A    mov         dword ptr [ebp-4],eax
 004B933D    mov         eax,dword ptr [ebp-4]
 004B9340    call        004C4DCC
 004B9345    lea         edx,[ebp-14]
 004B9348    mov         eax,dword ptr [ebp-4]
 004B934B    mov         ecx,dword ptr [eax]
 004B934D    call        dword ptr [ecx+0BC];TCustomMenuItem.sub_004C6058
 004B9353    mov         eax,dword ptr [ebp-10]
 004B9356    sar         eax,1
>004B9358    jns         004B935D
 004B935A    adc         eax,0
 004B935D    mov         edx,dword ptr [ebp-4]
 004B9360    mov         edx,dword ptr [edx+4C];TCustomMenuItem.Height:Integer
 004B9363    sar         edx,1
>004B9365    jns         004B936A
 004B9367    adc         edx,0
 004B936A    sub         edx,eax
 004B936C    inc         edx
 004B936D    lea         ecx,[ebp-0C]
 004B9370    mov         eax,dword ptr [ebp-4]
 004B9373    mov         eax,dword ptr [eax+17A];TCustomMenuItem.FMargins:TRect
 004B9379    call        Point
 004B937E    mov         eax,dword ptr [ebp-4]
 004B9381    mov         edx,dword ptr [ebp-0C]
 004B9384    mov         dword ptr [eax+172],edx;TCustomMenuItem.FGlyphPos:TPoint
 004B938A    mov         edx,dword ptr [ebp-8]
 004B938D    mov         dword ptr [eax+176],edx
 004B9393    mov         esp,ebp
 004B9395    pop         ebp
 004B9396    ret
*}
end;

//004B9398
{*procedure sub_004B9398(?:?);
begin
 004B9398    push        ebp
 004B9399    mov         ebp,esp
 004B939B    add         esp,0FFFFFFF8
 004B939E    mov         byte ptr [ebp-5],dl
 004B93A1    mov         dword ptr [ebp-4],eax
 004B93A4    pop         ecx
 004B93A5    pop         ecx
 004B93A6    pop         ebp
 004B93A7    ret
end;*}

//004B93A8
{*procedure sub_004B93A8(?:TRect; ?:?; ?:?; ?:?; ?:?);
begin
 004B93A8    push        ebp
 004B93A9    mov         ebp,esp
 004B93AB    add         esp,0FFFFFFD8
 004B93AE    push        esi
 004B93AF    push        edi
 004B93B0    mov         esi,edx
 004B93B2    lea         edi,[ebp-18]
 004B93B5    movs        dword ptr [edi],dword ptr [esi]
 004B93B6    movs        dword ptr [edi],dword ptr [esi]
 004B93B7    movs        dword ptr [edi],dword ptr [esi]
 004B93B8    movs        dword ptr [edi],dword ptr [esi]
 004B93B9    mov         dword ptr [ebp-8],ecx
 004B93BC    mov         dword ptr [ebp-4],eax
 004B93BF    mov         eax,dword ptr [ebp+10]
 004B93C2    call        @LStrAddRef
 004B93C7    xor         eax,eax
 004B93C9    push        ebp
 004B93CA    push        4B94CB
 004B93CF    push        dword ptr fs:[eax]
 004B93D2    mov         dword ptr fs:[eax],esp
 004B93D5    mov         eax,dword ptr [ebp-4]
 004B93D8    mov         eax,dword ptr [eax+30];TCustomMenuItem.FParent:TWinControl
 004B93DB    mov         edx,dword ptr ds:[4BB79C];TCustomActionBar
 004B93E1    call        @IsClass
 004B93E6    test        al,al
>004B93E8    je          004B940C
 004B93EA    mov         eax,dword ptr [ebp-4]
 004B93ED    call        004C6C1C
 004B93F2    cmp         byte ptr [eax+248],0
>004B93F9    jne         004B940C
 004B93FB    lea         eax,[ebp+10]
 004B93FE    mov         edx,dword ptr [ebp-4]
 004B9401    mov         edx,dword ptr [edx+1C8];TCustomMenuItem.FNoPrefix:String
 004B9407    call        @LStrLAsg
 004B940C    mov         eax,dword ptr [ebp-4]
 004B940F    cmp         byte ptr [eax+18A],0;TCustomMenuItem.FSelected:Boolean
>004B9416    je          004B942B
 004B9418    mov         eax,dword ptr [ebp-4]
 004B941B    call        004C6C1C
 004B9420    call        004C4A40
 004B9425    mov         eax,dword ptr [eax+54]
 004B9428    mov         dword ptr [ebp+8],eax
 004B942B    mov         eax,dword ptr [ebp+10]
 004B942E    push        eax
 004B942F    mov         eax,dword ptr [ebp+0C]
 004B9432    push        eax
 004B9433    mov         eax,dword ptr [ebp+8]
 004B9436    push        eax
 004B9437    mov         ecx,dword ptr [ebp-8]
 004B943A    lea         edx,[ebp-18]
 004B943D    mov         eax,dword ptr [ebp-4]
 004B9440    call        004C5A78
 004B9445    mov         eax,dword ptr [ebp-4]
 004B9448    mov         edx,dword ptr [eax]
 004B944A    call        dword ptr [edx+9C];TCustomMenuItem.sub_004C6B28
 004B9450    test        al,al
>004B9452    je          004B94B5
 004B9454    mov         edx,2
 004B9459    mov         eax,dword ptr [ebp-4]
 004B945C    call        00486778
 004B9461    mov         dword ptr [ebp-8],eax
 004B9464    mov         eax,dword ptr [ebp-4]
 004B9467    lea         esi,[eax+1B1];TCustomMenuItem.FShortCutBounds:TRect
 004B946D    lea         edi,[ebp-28]
 004B9470    movs        dword ptr [edi],dword ptr [esi]
 004B9471    movs        dword ptr [edi],dword ptr [esi]
 004B9472    movs        dword ptr [edi],dword ptr [esi]
 004B9473    movs        dword ptr [edi],dword ptr [esi]
 004B9474    push        0
 004B9476    mov         eax,dword ptr [ebp-4]
 004B9479    mov         eax,dword ptr [eax+48];TCustomMenuItem.Width:Integer
 004B947C    sub         eax,15
 004B947F    mov         edx,dword ptr [ebp-4]
 004B9482    sub         eax,dword ptr [edx+1B9]
 004B9488    push        eax
 004B9489    lea         eax,[ebp-28]
 004B948C    push        eax
 004B948D    call        user32.OffsetRect
 004B9492    mov         eax,dword ptr [ebp-4]
 004B9495    mov         eax,dword ptr [eax+16C];TCustomMenuItem.FActionClient:TActionClientItem
 004B949B    mov         eax,dword ptr [eax+54];TActionClientItem.FShortCutText:String
 004B949E    push        eax
 004B949F    mov         eax,dword ptr [ebp+0C]
 004B94A2    push        eax
 004B94A3    mov         eax,dword ptr [ebp+8]
 004B94A6    push        eax
 004B94A7    mov         ecx,dword ptr [ebp-8]
 004B94AA    lea         edx,[ebp-28]
 004B94AD    mov         eax,dword ptr [ebp-4]
 004B94B0    call        004C5A78
 004B94B5    xor         eax,eax
 004B94B7    pop         edx
 004B94B8    pop         ecx
 004B94B9    pop         ecx
 004B94BA    mov         dword ptr fs:[eax],edx
 004B94BD    push        4B94D2
 004B94C2    lea         eax,[ebp+10]
 004B94C5    call        @LStrClr
 004B94CA    ret
>004B94CB    jmp         @HandleFinally
>004B94D0    jmp         004B94C2
 004B94D2    pop         edi
 004B94D3    pop         esi
 004B94D4    mov         esp,ebp
 004B94D6    pop         ebp
 004B94D7    ret         0C
end;*}

//004B94DC
{*procedure sub_004B94DC(?:?; ?:?; ?:?);
begin
 004B94DC    push        ebp
 004B94DD    mov         ebp,esp
 004B94DF    add         esp,0FFFFFFE4
 004B94E2    push        esi
 004B94E3    push        edi
 004B94E4    mov         dword ptr [ebp-0C],ecx
 004B94E7    mov         dword ptr [ebp-8],edx
 004B94EA    mov         dword ptr [ebp-4],eax
 004B94ED    mov         eax,dword ptr [ebp+8]
 004B94F0    call        @LStrAddRef
 004B94F5    xor         eax,eax
 004B94F7    push        ebp
 004B94F8    push        4B95CC
 004B94FD    push        dword ptr fs:[eax]
 004B9500    mov         dword ptr fs:[eax],esp
 004B9503    mov         eax,dword ptr [ebp-4]
 004B9506    mov         eax,dword ptr [eax+30];TCustomMenuItem.FParent:TWinControl
 004B9509    mov         edx,dword ptr ds:[4BB79C];TCustomActionBar
 004B950F    call        @IsClass
 004B9514    test        al,al
>004B9516    je          004B953A
 004B9518    mov         eax,dword ptr [ebp-4]
 004B951B    call        004C6C1C
 004B9520    cmp         byte ptr [eax+248],0
>004B9527    jne         004B953A
 004B9529    lea         eax,[ebp+8]
 004B952C    mov         edx,dword ptr [ebp-4]
 004B952F    mov         edx,dword ptr [edx+1C8];TCustomMenuItem.FNoPrefix:String
 004B9535    call        @LStrLAsg
 004B953A    mov         eax,dword ptr [ebp+8]
 004B953D    push        eax
 004B953E    mov         ecx,dword ptr [ebp-0C]
 004B9541    mov         edx,dword ptr [ebp-8]
 004B9544    mov         eax,dword ptr [ebp-4]
 004B9547    call        004C5A00
 004B954C    mov         eax,dword ptr [ebp-4]
 004B954F    mov         edx,dword ptr [eax]
 004B9551    call        dword ptr [edx+9C];TCustomMenuItem.sub_004C6B28
 004B9557    test        al,al
>004B9559    je          004B95B6
 004B955B    mov         edx,2
 004B9560    mov         eax,dword ptr [ebp-4]
 004B9563    call        00486778
 004B9568    mov         edx,dword ptr [ebp-0C]
 004B956B    mov         dword ptr [edx],eax
 004B956D    mov         eax,dword ptr [ebp-4]
 004B9570    lea         esi,[eax+1B1];TCustomMenuItem.FShortCutBounds:TRect
 004B9576    lea         edi,[ebp-1C]
 004B9579    movs        dword ptr [edi],dword ptr [esi]
 004B957A    movs        dword ptr [edi],dword ptr [esi]
 004B957B    movs        dword ptr [edi],dword ptr [esi]
 004B957C    movs        dword ptr [edi],dword ptr [esi]
 004B957D    push        0
 004B957F    mov         eax,dword ptr [ebp-4]
 004B9582    mov         eax,dword ptr [eax+48];TCustomMenuItem.Width:Integer
 004B9585    sub         eax,15
 004B9588    mov         edx,dword ptr [ebp-4]
 004B958B    sub         eax,dword ptr [edx+1B9]
 004B9591    push        eax
 004B9592    lea         eax,[ebp-1C]
 004B9595    push        eax
 004B9596    call        user32.OffsetRect
 004B959B    mov         eax,dword ptr [ebp-4]
 004B959E    mov         eax,dword ptr [eax+16C];TCustomMenuItem.FActionClient:TActionClientItem
 004B95A4    mov         eax,dword ptr [eax+54];TActionClientItem.FShortCutText:String
 004B95A7    push        eax
 004B95A8    mov         ecx,dword ptr [ebp-0C]
 004B95AB    lea         edx,[ebp-1C]
 004B95AE    mov         eax,dword ptr [ebp-4]
 004B95B1    call        004C5A00
 004B95B6    xor         eax,eax
 004B95B8    pop         edx
 004B95B9    pop         ecx
 004B95BA    pop         ecx
 004B95BB    mov         dword ptr fs:[eax],edx
 004B95BE    push        4B95D3
 004B95C3    lea         eax,[ebp+8]
 004B95C6    call        @LStrClr
 004B95CB    ret
>004B95CC    jmp         @HandleFinally
>004B95D1    jmp         004B95C3
 004B95D3    pop         edi
 004B95D4    pop         esi
 004B95D5    mov         esp,ebp
 004B95D7    pop         ebp
 004B95D8    ret         4
end;*}

//004B95DC
procedure sub_004B95DC;
begin
{*
 004B95DC    push        ebp
 004B95DD    mov         ebp,esp
 004B95DF    push        ecx
 004B95E0    mov         dword ptr [ebp-4],eax
 004B95E3    mov         eax,dword ptr [ebp-4]
 004B95E6    call        004C5FDC
 004B95EB    mov         eax,dword ptr [ebp-4]
 004B95EE    cmp         dword ptr [eax+16C],0;TCustomMenuItem.FActionClient:TActionClientItem
>004B95F5    je          004B9604
 004B95F7    mov         eax,dword ptr [ebp-4]
 004B95FA    mov         eax,dword ptr [eax+16C];TCustomMenuItem.FActionClient:TActionClientItem
 004B9600    mov         byte ptr [eax+3C],1;TActionClientItem.FCheckUnused:Boolean
 004B9604    mov         eax,dword ptr [ebp-4]
 004B9607    mov         eax,dword ptr [eax+1AC];TCustomMenuItem.FMenu:TCustomActionMenuBar
 004B960D    cmp         byte ptr [eax+295],0;TCustomActionMenuBar.FExpanded:Boolean
>004B9614    jne         004B9629
 004B9616    mov         dl,1
 004B9618    mov         eax,dword ptr [ebp-4]
 004B961B    mov         eax,dword ptr [eax+1AC];TCustomMenuItem.FMenu:TCustomActionMenuBar
 004B9621    mov         ecx,dword ptr [eax]
 004B9623    call        dword ptr [ecx+164];TCustomActionMenuBar.sub_004B3D3C
 004B9629    pop         ecx
 004B962A    pop         ebp
 004B962B    ret
*}
end;

//004B962C
{*procedure sub_004B962C(?:?; ?:?; ?:?);
begin
 004B962C    push        ebp
 004B962D    mov         ebp,esp
 004B962F    add         esp,0FFFFFFD4
 004B9632    push        esi
 004B9633    mov         dword ptr [ebp-0C],ecx
 004B9636    mov         dword ptr [ebp-8],edx
 004B9639    mov         dword ptr [ebp-4],eax
 004B963C    mov         eax,dword ptr [ebp-4]
 004B963F    cmp         dword ptr [eax+16C],0;TCustomMenuItem.FActionClient:TActionClientItem
>004B9646    je          004B965B
 004B9648    mov         eax,dword ptr [ebp-4]
 004B964B    mov         eax,dword ptr [eax+16C];TCustomMenuItem.FActionClient:TActionClientItem
 004B9651    call        TCollectionItem.GetIndex
 004B9656    mov         dword ptr [ebp-1C],eax
>004B9659    jmp         004B9660
 004B965B    xor         eax,eax
 004B965D    mov         dword ptr [ebp-1C],eax
 004B9660    mov         eax,dword ptr [ebp-8]
 004B9663    mov         edx,dword ptr ds:[4BB5A4];TCategoryDragObject
 004B9669    call        @IsClass
 004B966E    test        al,al
>004B9670    je          004B985B
 004B9676    mov         eax,dword ptr [ebp-4]
 004B9679    call        004C6C1C
 004B967E    call        TWinControl.DisableAlign
 004B9683    mov         eax,dword ptr [ebp-4]
 004B9686    call        004C6C1C
 004B968B    mov         eax,dword ptr [eax+210]
 004B9691    call        TActionClient.GetItems
 004B9696    mov         edx,dword ptr [eax]
 004B9698    call        dword ptr [edx+20]
 004B969B    mov         eax,dword ptr [ebp-8]
 004B969E    mov         edx,dword ptr ds:[4BB5A4];TCategoryDragObject
 004B96A4    call        @AsClass
 004B96A9    mov         dword ptr [ebp-20],eax
 004B96AC    mov         eax,dword ptr [ebp-4]
 004B96AF    call        004C6C1C
 004B96B4    mov         eax,dword ptr [eax+214]
 004B96BA    mov         dword ptr [ebp-24],eax
 004B96BD    mov         eax,dword ptr [ebp-24]
 004B96C0    mov         si,0FFEC
 004B96C4    call        @CallDynaInst
 004B96C9    push        eax
 004B96CA    mov         eax,dword ptr [ebp-4]
 004B96CD    call        004C6C1C
 004B96D2    mov         eax,dword ptr [eax+210]
 004B96D8    call        TActionClient.GetItems
 004B96DD    mov         ecx,eax
 004B96DF    mov         dl,1
 004B96E1    pop         eax
 004B96E2    call        dword ptr [eax+1C]
 004B96E5    mov         dword ptr [ebp-14],eax
 004B96E8    xor         eax,eax
 004B96EA    push        ebp
 004B96EB    push        4B9854
 004B96F0    push        dword ptr fs:[eax]
 004B96F3    mov         dword ptr fs:[eax],esp
 004B96F6    xor         eax,eax
 004B96F8    push        ebp
 004B96F9    push        4B980D
 004B96FE    push        dword ptr fs:[eax]
 004B9701    mov         dword ptr fs:[eax],esp
 004B9704    mov         edx,1
 004B9709    mov         eax,dword ptr [ebp-14]
 004B970C    call        TActionClientItem.SetUsageCount
 004B9711    mov         eax,dword ptr [ebp-20]
 004B9714    mov         edx,dword ptr [eax+48];TCategoryDragObject...FCategory:String
 004B9717    mov         eax,dword ptr [ebp-14]
 004B971A    call        TActionClientItem.SetCaption
 004B971F    mov         eax,dword ptr [ebp-4]
 004B9722    call        004C6C1C
 004B9727    mov         eax,dword ptr [eax+214]
 004B972D    mov         eax,dword ptr [eax+6C]
 004B9730    mov         edx,dword ptr [eax+28]
 004B9733    mov         eax,dword ptr [ebp-14]
 004B9736    call        TActionClientItem.SetLastSession
 004B973B    mov         edx,dword ptr [ebp-1C]
 004B973E    mov         eax,dword ptr [ebp-14]
 004B9741    mov         ecx,dword ptr [eax]
 004B9743    call        dword ptr [ecx+14]
 004B9746    mov         eax,dword ptr [ebp-14]
 004B9749    call        TActionClient.GetItems
 004B974E    mov         edx,dword ptr [eax]
 004B9750    call        dword ptr [edx+20]
 004B9753    mov         eax,dword ptr [ebp-20]
 004B9756    call        004C0EC8
 004B975B    dec         eax
 004B975C    test        eax,eax
>004B975E    jl          004B97C7
 004B9760    inc         eax
 004B9761    mov         dword ptr [ebp-28],eax
 004B9764    mov         dword ptr [ebp-18],0
 004B976B    mov         eax,dword ptr [ebp-4]
 004B976E    call        004C6C1C
 004B9773    mov         eax,dword ptr [eax+214]
 004B9779    mov         dword ptr [ebp-2C],eax
 004B977C    mov         eax,dword ptr [ebp-2C]
 004B977F    mov         si,0FFEC
 004B9783    call        @CallDynaInst
 004B9788    push        eax
 004B9789    mov         eax,dword ptr [ebp-14]
 004B978C    call        TActionClient.GetItems
 004B9791    mov         ecx,eax
 004B9793    mov         dl,1
 004B9795    pop         eax
 004B9796    call        dword ptr [eax+1C]
 004B9799    mov         dword ptr [ebp-10],eax
 004B979C    mov         edx,dword ptr [ebp-18]
 004B979F    mov         eax,dword ptr [ebp-20]
 004B97A2    call        004C0E7C
 004B97A7    mov         edx,eax
 004B97A9    mov         eax,dword ptr [ebp-10]
 004B97AC    call        TActionClientItem.SetAction
 004B97B1    mov         eax,dword ptr [ebp-14]
 004B97B4    mov         edx,dword ptr [eax+5C]
 004B97B7    mov         eax,dword ptr [ebp-10]
 004B97BA    call        TActionClientItem.SetLastSession
 004B97BF    inc         dword ptr [ebp-18]
 004B97C2    dec         dword ptr [ebp-28]
>004B97C5    jne         004B976B
 004B97C7    mov         eax,dword ptr [ebp-4]
 004B97CA    call        004C6C1C
 004B97CF    mov         edx,dword ptr [ebp-14]
 004B97D2    mov         ecx,dword ptr [eax]
 004B97D4    call        dword ptr [ecx+0D4]
 004B97DA    mov         eax,dword ptr [ebp-20]
 004B97DD    call        004C0EC8
 004B97E2    test        eax,eax
 004B97E4    setg        dl
 004B97E7    mov         eax,dword ptr [ebp-14]
 004B97EA    mov         eax,dword ptr [eax+40]
 004B97ED    mov         ecx,dword ptr [eax]
 004B97EF    call        dword ptr [ecx+64]
 004B97F2    xor         eax,eax
 004B97F4    pop         edx
 004B97F5    pop         ecx
 004B97F6    pop         ecx
 004B97F7    mov         dword ptr fs:[eax],edx
 004B97FA    push        4B9814
 004B97FF    mov         eax,dword ptr [ebp-14]
 004B9802    call        TActionClient.GetItems
 004B9807    mov         edx,dword ptr [eax]
 004B9809    call        dword ptr [edx+24]
 004B980C    ret
>004B980D    jmp         @HandleFinally
>004B9812    jmp         004B97FF
 004B9814    xor         eax,eax
 004B9816    pop         edx
 004B9817    pop         ecx
 004B9818    pop         ecx
 004B9819    mov         dword ptr fs:[eax],edx
 004B981C    push        4B986D
 004B9821    mov         eax,dword ptr [ebp-4]
 004B9824    call        004C6C1C
 004B9829    mov         eax,dword ptr [eax+210]
 004B982F    call        TActionClient.GetItems
 004B9834    mov         edx,dword ptr [eax]
 004B9836    call        dword ptr [edx+24]
 004B9839    mov         eax,dword ptr [ebp-4]
 004B983C    call        004C6C1C
 004B9841    call        TWinControl.EnableAlign
 004B9846    mov         eax,dword ptr [ebp-4]
 004B9849    call        004C6C1C
 004B984E    call        004BBF24
 004B9853    ret
>004B9854    jmp         @HandleFinally
>004B9859    jmp         004B9821
 004B985B    mov         eax,dword ptr [ebp+8]
 004B985E    push        eax
 004B985F    mov         ecx,dword ptr [ebp-0C]
 004B9862    mov         edx,dword ptr [ebp-8]
 004B9865    mov         eax,dword ptr [ebp-4]
 004B9868    call        004C6ED8
 004B986D    pop         esi
 004B986E    mov         esp,ebp
 004B9870    pop         ebp
 004B9871    ret         4
end;*}

//004B9874
{*procedure TCustomMenuItem.sub_004859D0(?:?; ?:?; ?:?; ?:?);
begin
 004B9874    push        ebp
 004B9875    mov         ebp,esp
 004B9877    add         esp,0FFFFFFF4
 004B987A    mov         byte ptr [ebp-6],cl
 004B987D    mov         byte ptr [ebp-5],dl
 004B9880    mov         dword ptr [ebp-4],eax
 004B9883    mov         eax,dword ptr [ebp+0C]
 004B9886    push        eax
 004B9887    mov         eax,dword ptr [ebp+8]
 004B988A    push        eax
 004B988B    mov         cl,byte ptr [ebp-6]
 004B988E    mov         dl,byte ptr [ebp-5]
 004B9891    mov         eax,dword ptr [ebp-4]
 004B9894    call        TControl.sub_004859D0
 004B9899    cmp         byte ptr [ebp-5],0
>004B989D    jne         004B992A
 004B98A3    mov         eax,dword ptr [ebp-4]
 004B98A6    cmp         dword ptr [eax+16C],0;TCustomMenuItem.FActionClient:TActionClientItem
>004B98AD    je          004B98BE
 004B98AF    mov         eax,dword ptr [ebp-4]
 004B98B2    mov         eax,dword ptr [eax+16C];TCustomMenuItem.FActionClient:TActionClientItem
 004B98B8    cmp         dword ptr [eax+18],0;TActionClientItem.FChildActionBar:TCustomActionBar
>004B98BC    jne         004B992A
 004B98BE    mov         eax,dword ptr [ebp-4]
 004B98C1    mov         edx,dword ptr [eax]
 004B98C3    call        dword ptr [edx+3C];TCustomMenuItem.sub_004C6BC4
 004B98C6    mov         edx,dword ptr ds:[492C28];TCustomAction
 004B98CC    call        @IsClass
 004B98D1    test        al,al
>004B98D3    je          004B98FF
 004B98D5    mov         eax,dword ptr [ebp-4]
 004B98D8    mov         edx,dword ptr [eax]
 004B98DA    call        dword ptr [edx+3C];TCustomMenuItem.sub_004C6BC4
 004B98DD    mov         dword ptr [ebp-0C],eax
 004B98E0    mov         eax,dword ptr [ebp-0C]
 004B98E3    cmp         dword ptr [eax+6C],0
>004B98E7    jle         004B98FF
 004B98E9    mov         eax,dword ptr [ebp-0C]
 004B98EC    cmp         byte ptr [eax+95],0
>004B98F3    jne         004B98FF
 004B98F5    mov         dl,1
 004B98F7    mov         eax,dword ptr [ebp-0C]
 004B98FA    call        TAction.SetChecked
 004B98FF    mov         eax,dword ptr [ebp-4]
 004B9902    mov         edx,dword ptr [eax]
 004B9904    call        dword ptr [edx+0C8];TCustomMenuItem.sub_004C6AA0
 004B990A    test        al,al
>004B990C    jne         004B992A
 004B990E    mov         eax,dword ptr [ebp-4]
 004B9911    push        eax
 004B9912    push        0
 004B9914    push        0B403
 004B9919    mov         eax,dword ptr [ebp-4]
 004B991C    mov         eax,dword ptr [eax+30];TCustomMenuItem.FParent:TWinControl
 004B991F    call        TWinControl.GetHandle
 004B9924    push        eax
 004B9925    call        user32.PostMessageA
 004B992A    mov         esp,ebp
 004B992C    pop         ebp
 004B992D    ret         8
end;*}

//004B9930
constructor sub_004B9930;
begin
{*
 004B9930    push        ebp
 004B9931    mov         ebp,esp
 004B9933    add         esp,0FFFFFFF4
 004B9936    test        dl,dl
>004B9938    je          004B9942
 004B993A    add         esp,0FFFFFFF0
 004B993D    call        @ClassCreate
 004B9942    mov         dword ptr [ebp-0C],ecx
 004B9945    mov         byte ptr [ebp-5],dl
 004B9948    mov         dword ptr [ebp-4],eax
 004B994B    mov         ecx,dword ptr [ebp-0C]
 004B994E    xor         edx,edx
 004B9950    mov         eax,dword ptr [ebp-4]
 004B9953    call        004AFA40
 004B9958    mov         eax,dword ptr [ebp-4]
 004B995B    mov         byte ptr [eax+1B0],0;TCustomMenuButton.FCloseMenu:Boolean
 004B9962    mov         eax,dword ptr [ebp-4]
 004B9965    cmp         byte ptr [ebp-5],0
>004B9969    je          004B997A
 004B996B    call        @AfterConstruction
 004B9970    pop         dword ptr fs:[0]
 004B9977    add         esp,0C
 004B997A    mov         eax,dword ptr [ebp-4]
 004B997D    mov         esp,ebp
 004B997F    pop         ebp
 004B9980    ret
*}
end;

//004B9984
destructor TCustomMenuButton.Destroy;
begin
{*
 004B9984    push        ebp
 004B9985    mov         ebp,esp
 004B9987    add         esp,0FFFFFFF8
 004B998A    call        @BeforeDestruction
 004B998F    mov         byte ptr [ebp-5],dl
 004B9992    mov         dword ptr [ebp-4],eax
 004B9995    mov         eax,dword ptr [ebp-4]
 004B9998    cmp         dword ptr [eax+16C],0
>004B999F    je          004B99D0
 004B99A1    mov         eax,dword ptr [ebp-4]
 004B99A4    mov         eax,dword ptr [eax+16C]
 004B99AA    mov         eax,dword ptr [eax+18]
 004B99AD    mov         edx,dword ptr ds:[4B1650];TCustomActionMenuBar
 004B99B3    call        @IsClass
 004B99B8    test        al,al
>004B99BA    je          004B99D0
 004B99BC    mov         eax,dword ptr [ebp-4]
 004B99BF    mov         eax,dword ptr [eax+16C]
 004B99C5    mov         eax,dword ptr [eax+18]
 004B99C8    mov         edx,dword ptr [eax]
 004B99CA    call        dword ptr [edx+17C]
 004B99D0    mov         dl,byte ptr [ebp-5]
 004B99D3    and         dl,0FC
 004B99D6    mov         eax,dword ptr [ebp-4]
 004B99D9    call        TCustomActionControl.Destroy
 004B99DE    cmp         byte ptr [ebp-5],0
>004B99E2    jle         004B99EC
 004B99E4    mov         eax,dword ptr [ebp-4]
 004B99E7    call        @ClassDestroy
 004B99EC    pop         ecx
 004B99ED    pop         ecx
 004B99EE    pop         ebp
 004B99EF    ret
*}
end;

//004B99F0
procedure TCustomMenuButton.sub_004841BC;
begin
{*
 004B99F0    push        ebp
 004B99F1    mov         ebp,esp
 004B99F3    push        ecx
 004B99F4    push        esi
 004B99F5    mov         dword ptr [ebp-4],eax
 004B99F8    mov         eax,dword ptr [ebp-4]
 004B99FB    mov         byte ptr [eax+1B1],1;TCustomMenuButton.FDoClick:Boolean
 004B9A02    mov         eax,dword ptr [ebp-4]
 004B9A05    mov         si,0FFEB
 004B9A09    call        @CallDynaInst;TCustomMenuButton.sub_004854CC
 004B9A0E    mov         eax,dword ptr [ebp-4]
 004B9A11    call        TCustomActionControl.sub_004841BC
 004B9A16    pop         esi
 004B9A17    pop         ecx
 004B9A18    pop         ebp
 004B9A19    ret
*}
end;

//004B9A1C
procedure TCustomMenuButton.sub_004854CC;
begin
{*
 004B9A1C    push        ebp
 004B9A1D    mov         ebp,esp
 004B9A1F    push        ecx
 004B9A20    mov         dword ptr [ebp-4],eax
 004B9A23    mov         eax,dword ptr [ebp-4]
 004B9A26    call        TCustomButtonControl.sub_004854CC
 004B9A2B    mov         eax,dword ptr [ebp-4]
 004B9A2E    cmp         byte ptr [eax+1B1],0;TCustomMenuButton.FDoClick:Boolean
>004B9A35    je          004B9AF4
 004B9A3B    mov         eax,dword ptr [ebp-4]
 004B9A3E    cmp         dword ptr [eax+16C],0;TCustomMenuButton.FActionClient:TActionClientItem
>004B9A45    je          004B9AF4
 004B9A4B    mov         eax,dword ptr [ebp-4]
 004B9A4E    mov         eax,dword ptr [eax+16C];TCustomMenuButton.FActionClient:TActionClientItem
 004B9A54    call        TActionClientItem.GetAction
 004B9A59    test        eax,eax
>004B9A5B    jne         004B9AF4
 004B9A61    mov         eax,dword ptr [ebp-4]
 004B9A64    call        004B9E3C
 004B9A69    cmp         byte ptr [eax+296],0
>004B9A70    je          004B9AAE
 004B9A72    mov         eax,dword ptr [ebp-4]
 004B9A75    cmp         byte ptr [eax+18A],0;TCustomMenuButton.FSelected:Boolean
>004B9A7C    je          004B9A99
 004B9A7E    mov         eax,dword ptr [ebp-4]
 004B9A81    cmp         byte ptr [eax+18A],0;TCustomMenuButton.FSelected:Boolean
>004B9A88    je          004B9AAE
 004B9A8A    mov         eax,dword ptr [ebp-4]
 004B9A8D    mov         eax,dword ptr [eax+16C];TCustomMenuButton.FActionClient:TActionClientItem
 004B9A93    cmp         dword ptr [eax+18],0;TActionClientItem.FChildActionBar:TCustomActionBar
>004B9A97    jne         004B9AAE
 004B9A99    mov         eax,dword ptr [ebp-4]
 004B9A9C    call        004B9E3C
 004B9AA1    mov         edx,dword ptr [ebp-4]
 004B9AA4    mov         ecx,dword ptr [eax]
 004B9AA6    call        dword ptr [ecx+150]
>004B9AAC    jmp         004B9AF4
 004B9AAE    mov         eax,dword ptr [ebp-4]
 004B9AB1    cmp         byte ptr [eax+1B0],0;TCustomMenuButton.FCloseMenu:Boolean
>004B9AB8    je          004B9AD6
 004B9ABA    mov         eax,dword ptr [ebp-4]
 004B9ABD    mov         byte ptr [eax+1B0],0;TCustomMenuButton.FCloseMenu:Boolean
 004B9AC4    mov         eax,dword ptr [ebp-4]
 004B9AC7    call        004B9E3C
 004B9ACC    mov         edx,dword ptr [eax]
 004B9ACE    call        dword ptr [edx+17C]
>004B9AD4    jmp         004B9AF4
 004B9AD6    mov         eax,dword ptr [ebp-4]
 004B9AD9    push        eax
 004B9ADA    push        0
 004B9ADC    push        0B403
 004B9AE1    mov         eax,dword ptr [ebp-4]
 004B9AE4    call        004C6C1C
 004B9AE9    call        TWinControl.GetHandle
 004B9AEE    push        eax
 004B9AEF    call        user32.PostMessageA
 004B9AF4    pop         ecx
 004B9AF5    pop         ebp
 004B9AF6    ret
*}
end;

//004B9AF8
{*procedure TCustomMenuButton.CMMouseEnter(?:?);
begin
 004B9AF8    push        ebp
 004B9AF9    mov         ebp,esp
 004B9AFB    add         esp,0FFFFFFF8
 004B9AFE    push        esi
 004B9AFF    mov         dword ptr [ebp-8],edx
 004B9B02    mov         dword ptr [ebp-4],eax
 004B9B05    mov         edx,dword ptr [ebp-8]
 004B9B08    mov         eax,dword ptr [ebp-4]
 004B9B0B    call        TCustomButtonControl.CMMouseEnter
 004B9B10    mov         eax,dword ptr [ebp-4]
 004B9B13    call        004B9E3C
 004B9B18    cmp         byte ptr [eax+297],0
>004B9B1F    jne         004B9B86
 004B9B21    mov         eax,dword ptr [ebp-4]
 004B9B24    cmp         dword ptr [eax+16C],0;TCustomMenuButton.FActionClient:TActionClientItem
>004B9B2B    je          004B9B3F
 004B9B2D    mov         eax,dword ptr [ebp-4]
 004B9B30    mov         eax,dword ptr [eax+16C];TCustomMenuButton.FActionClient:TActionClientItem
 004B9B36    call        TActionClientItem.GetAction
 004B9B3B    test        eax,eax
>004B9B3D    jne         004B9B86
 004B9B3F    mov         eax,dword ptr [ebp-4]
 004B9B42    call        004C6C1C
 004B9B47    mov         edx,dword ptr [eax]
 004B9B49    call        dword ptr [edx+104]
 004B9B4F    test        al,al
>004B9B51    jne         004B9B86
 004B9B53    mov         eax,dword ptr [ebp-4]
 004B9B56    cmp         byte ptr [eax+18A],0;TCustomMenuButton.FSelected:Boolean
>004B9B5D    jne         004B9B86
 004B9B5F    mov         eax,dword ptr [ebp-4]
 004B9B62    call        004B9E3C
 004B9B67    cmp         byte ptr [eax+296],0
>004B9B6E    je          004B9B86
 004B9B70    mov         eax,dword ptr [ebp-4]
 004B9B73    mov         byte ptr [eax+1B1],1;TCustomMenuButton.FDoClick:Boolean
 004B9B7A    mov         eax,dword ptr [ebp-4]
 004B9B7D    mov         si,0FFEB
 004B9B81    call        @CallDynaInst;TCustomMenuButton.sub_004854CC
 004B9B86    pop         esi
 004B9B87    pop         ecx
 004B9B88    pop         ecx
 004B9B89    pop         ebp
 004B9B8A    ret
end;*}

//004B9B8C
{*procedure sub_004B9B8C(?:?; ?:?; ?:?);
begin
 004B9B8C    push        ebp
 004B9B8D    mov         ebp,esp
 004B9B8F    add         esp,0FFFFFFF4
 004B9B92    push        ebx
 004B9B93    mov         dword ptr [ebp-0C],ecx
 004B9B96    mov         dword ptr [ebp-8],edx
 004B9B99    mov         dword ptr [ebp-4],eax
 004B9B9C    mov         eax,dword ptr [ebp-8]
 004B9B9F    mov         edx,dword ptr ds:[4BB5A4];TCategoryDragObject
 004B9BA5    call        @IsClass
 004B9BAA    test        al,al
>004B9BAC    je          004B9BD6
 004B9BAE    mov         eax,dword ptr [ebp-4]
 004B9BB1    mov         eax,dword ptr [eax+44];TCustomMenuButton.Top:Integer
 004B9BB4    add         eax,dword ptr [ebp+8]
 004B9BB7    push        eax
 004B9BB8    mov         eax,dword ptr [ebp-4]
 004B9BBB    call        004C6C1C
 004B9BC0    mov         edx,dword ptr [ebp-4]
 004B9BC3    mov         ecx,dword ptr [edx+40];TCustomMenuButton.Left:Integer
 004B9BC6    add         ecx,dword ptr [ebp-0C]
 004B9BC9    mov         edx,dword ptr [ebp-8]
 004B9BCC    mov         ebx,dword ptr [eax]
 004B9BCE    call        dword ptr [ebx+0E0]
>004B9BD4    jmp         004B9BE8
 004B9BD6    mov         eax,dword ptr [ebp+8]
 004B9BD9    push        eax
 004B9BDA    mov         ecx,dword ptr [ebp-0C]
 004B9BDD    mov         edx,dword ptr [ebp-8]
 004B9BE0    mov         eax,dword ptr [ebp-4]
 004B9BE3    call        004C6ED8
 004B9BE8    mov         eax,dword ptr [ebp-4]
 004B9BEB    call        004C6C1C
 004B9BF0    mov         edx,dword ptr ds:[4B1650];TCustomActionMenuBar
 004B9BF6    call        @IsClass
 004B9BFB    test        al,al
>004B9BFD    je          004B9C0E
 004B9BFF    mov         eax,dword ptr [ebp-4]
 004B9C02    call        004C6C1C
 004B9C07    mov         byte ptr [eax+296],0
 004B9C0E    pop         ebx
 004B9C0F    mov         esp,ebp
 004B9C11    pop         ebp
 004B9C12    ret         4
end;*}

//004B9C18
{*procedure TCustomMenuButton.sub_004842E0(?:?; ?:?; ?:?; ?:?; ?:?);
begin
 004B9C18    push        ebp
 004B9C19    mov         ebp,esp
 004B9C1B    add         esp,0FFFFFFEC
 004B9C1E    push        esi
 004B9C1F    mov         dword ptr [ebp-0C],ecx
 004B9C22    mov         dword ptr [ebp-8],edx
 004B9C25    mov         dword ptr [ebp-4],eax
 004B9C28    mov         eax,dword ptr [ebp+10]
 004B9C2B    push        eax
 004B9C2C    mov         al,byte ptr [ebp+0C]
 004B9C2F    push        eax
 004B9C30    mov         eax,dword ptr [ebp+8]
 004B9C33    push        eax
 004B9C34    mov         ecx,dword ptr [ebp-0C]
 004B9C37    mov         edx,dword ptr [ebp-8]
 004B9C3A    mov         eax,dword ptr [ebp-4]
 004B9C3D    call        TCustomActionControl.sub_004842E0
 004B9C42    mov         eax,dword ptr [ebp+8]
 004B9C45    cmp         byte ptr [eax],0
>004B9C48    je          004B9D00
 004B9C4E    mov         eax,dword ptr [ebp-4]
 004B9C51    call        004C6C1C
 004B9C56    mov         edx,dword ptr ds:[4B1650];TCustomActionMenuBar
 004B9C5C    call        @IsClass
 004B9C61    test        al,al
>004B9C63    je          004B9D00
 004B9C69    mov         eax,dword ptr [ebp-8]
 004B9C6C    mov         edx,dword ptr ds:[4BB63C];TActionItemDragObject
 004B9C72    call        @IsClass
 004B9C77    test        al,al
>004B9C79    je          004B9CDE
 004B9C7B    mov         eax,dword ptr [ebp-8]
 004B9C7E    mov         edx,dword ptr ds:[4BB63C];TActionItemDragObject
 004B9C84    call        @AsClass
 004B9C89    mov         dword ptr [ebp-10],eax
 004B9C8C    mov         eax,dword ptr [ebp-10]
 004B9C8F    mov         eax,dword ptr [eax+40];TActionItemDragObject......................FClientItem:TActionCli...
 004B9C92    mov         edx,dword ptr [ebp-4]
 004B9C95    cmp         eax,dword ptr [edx+16C];TCustomMenuButton.FActionClient:TActionClientItem
>004B9C9B    jne         004B9CDE
 004B9C9D    mov         eax,dword ptr [ebp-4]
 004B9CA0    call        004C6C1C
 004B9CA5    test        eax,eax
>004B9CA7    je          004B9CDE
 004B9CA9    mov         eax,dword ptr [ebp-4]
 004B9CAC    call        004C6C1C
 004B9CB1    mov         edx,dword ptr ds:[4B1650];TCustomActionMenuBar
 004B9CB7    call        @IsClass
 004B9CBC    test        al,al
>004B9CBE    je          004B9CDE
 004B9CC0    mov         eax,dword ptr [ebp-4]
 004B9CC3    call        004C6C1C
 004B9CC8    mov         edx,dword ptr ds:[4B1650];TCustomActionMenuBar
 004B9CCE    call        @AsClass
 004B9CD3    mov         dword ptr [ebp-14],eax
 004B9CD6    mov         eax,dword ptr [ebp-14]
 004B9CD9    call        004B3158
 004B9CDE    mov         eax,dword ptr [ebp-4]
 004B9CE1    cmp         byte ptr [eax+18A],0;TCustomMenuButton.FSelected:Boolean
>004B9CE8    jne         004B9D00
 004B9CEA    mov         eax,dword ptr [ebp-4]
 004B9CED    mov         byte ptr [eax+1B1],1;TCustomMenuButton.FDoClick:Boolean
 004B9CF4    mov         eax,dword ptr [ebp-4]
 004B9CF7    mov         si,0FFEB
 004B9CFB    call        @CallDynaInst;TCustomMenuButton.sub_004854CC
 004B9D00    pop         esi
 004B9D01    mov         esp,ebp
 004B9D03    pop         ebp
 004B9D04    ret         0C
end;*}

//004B9D08
{*procedure sub_004B9D08(?:?; ?:?; ?:?);
begin
 004B9D08    push        ebp
 004B9D09    mov         ebp,esp
 004B9D0B    add         esp,0FFFFFFE8
 004B9D0E    push        ebx
 004B9D0F    xor         ebx,ebx
 004B9D11    mov         dword ptr [ebp-18],ebx
 004B9D14    mov         dword ptr [ebp-10],ebx
 004B9D17    mov         dword ptr [ebp-0C],ecx
 004B9D1A    mov         dword ptr [ebp-8],edx
 004B9D1D    mov         dword ptr [ebp-4],eax
 004B9D20    mov         eax,dword ptr [ebp+8]
 004B9D23    call        @LStrAddRef
 004B9D28    xor         eax,eax
 004B9D2A    push        ebp
 004B9D2B    push        4B9E2E
 004B9D30    push        dword ptr fs:[eax]
 004B9D33    mov         dword ptr fs:[eax],esp
 004B9D36    lea         eax,[ebp-10]
 004B9D39    mov         edx,dword ptr [ebp+8]
 004B9D3C    call        @LStrLAsg
 004B9D41    mov         eax,dword ptr [ebp-4]
 004B9D44    mov         eax,dword ptr [eax+30];TCustomMenuButton.FParent:TWinControl
 004B9D47    mov         edx,dword ptr ds:[4B1FE0];TCustomActionMainMenuBar
 004B9D4D    call        @IsClass
 004B9D52    test        al,al
>004B9D54    je          004B9DF6
 004B9D5A    mov         eax,dword ptr [ebp-4]
 004B9D5D    mov         eax,dword ptr [eax+30];TCustomMenuButton.FParent:TWinControl
 004B9D60    mov         edx,dword ptr ds:[4B1FE0];TCustomActionMainMenuBar
 004B9D66    call        @AsClass
 004B9D6B    mov         dword ptr [ebp-14],eax
 004B9D6E    mov         eax,dword ptr [ebp-14]
 004B9D71    cmp         byte ptr [eax+248],0;TCustomActionMainMenuBar.FPersistentHotKeys:Boolean
>004B9D78    jne         004B9D90
 004B9D7A    lea         edx,[ebp-18]
 004B9D7D    mov         eax,dword ptr [ebp-10]
 004B9D80    call        0049DFE4
 004B9D85    mov         edx,dword ptr [ebp-18]
 004B9D88    lea         eax,[ebp-10]
 004B9D8B    call        @LStrLAsg
 004B9D90    mov         eax,dword ptr [ebp-14]
 004B9D93    cmp         byte ptr [eax+30D],0;TCustomActionMainMenuBar.FInActive:Boolean
>004B9D9A    je          004B9DC9
 004B9D9C    mov         eax,dword ptr [ebp-4]
 004B9D9F    cmp         byte ptr [eax+1AB],0;TCustomMenuButton.FMouseInControl:Boolean
>004B9DA6    jne         004B9DC9
 004B9DA8    mov         eax,dword ptr [ebp-4]
 004B9DAB    call        004C6C1C
 004B9DB0    call        004C4A40
 004B9DB5    mov         edx,dword ptr [eax+48]
 004B9DB8    mov         eax,dword ptr [ebp-4]
 004B9DBB    mov         eax,dword ptr [eax+160];TCustomMenuButton..................................................
 004B9DC1    mov         eax,dword ptr [eax+0C];TCanvas.Font:TFont
 004B9DC4    call        TFont.SetColor
 004B9DC9    mov         eax,dword ptr [ebp-4]
 004B9DCC    cmp         byte ptr [eax+18A],0;TCustomMenuButton.FSelected:Boolean
>004B9DD3    je          004B9DF6
 004B9DD5    mov         eax,dword ptr [ebp-4]
 004B9DD8    call        004C6C1C
 004B9DDD    call        004C4A40
 004B9DE2    mov         edx,dword ptr [eax+3C]
 004B9DE5    mov         eax,dword ptr [ebp-4]
 004B9DE8    mov         eax,dword ptr [eax+160];TCustomMenuButton..................................................
 004B9DEE    mov         eax,dword ptr [eax+0C];TCanvas.Font:TFont
 004B9DF1    call        TFont.SetColor
 004B9DF6    mov         eax,dword ptr [ebp-10]
 004B9DF9    push        eax
 004B9DFA    mov         ecx,dword ptr [ebp-0C]
 004B9DFD    mov         edx,dword ptr [ebp-8]
 004B9E00    mov         eax,dword ptr [ebp-4]
 004B9E03    call        004C5A00
 004B9E08    xor         eax,eax
 004B9E0A    pop         edx
 004B9E0B    pop         ecx
 004B9E0C    pop         ecx
 004B9E0D    mov         dword ptr fs:[eax],edx
 004B9E10    push        4B9E35
 004B9E15    lea         eax,[ebp-18]
 004B9E18    call        @LStrClr
 004B9E1D    lea         eax,[ebp-10]
 004B9E20    call        @LStrClr
 004B9E25    lea         eax,[ebp+8]
 004B9E28    call        @LStrClr
 004B9E2D    ret
>004B9E2E    jmp         @HandleFinally
>004B9E33    jmp         004B9E15
 004B9E35    pop         ebx
 004B9E36    mov         esp,ebp
 004B9E38    pop         ebp
 004B9E39    ret         4
end;*}

//004B9E3C
{*function sub_004B9E3C(?:TCustomMenuButton):?;
begin
 004B9E3C    push        ebp
 004B9E3D    mov         ebp,esp
 004B9E3F    add         esp,0FFFFFFF8
 004B9E42    mov         dword ptr [ebp-4],eax
 004B9E45    mov         eax,dword ptr [ebp-4]
 004B9E48    call        004C6C1C
 004B9E4D    mov         edx,dword ptr ds:[4B1650];TCustomActionMenuBar
 004B9E53    call        @AsClass
 004B9E58    mov         dword ptr [ebp-8],eax
 004B9E5B    mov         eax,dword ptr [ebp-8]
 004B9E5E    pop         ecx
 004B9E5F    pop         ecx
 004B9E60    pop         ebp
 004B9E61    ret
end;*}

//004B9E64
procedure sub_004B9E64;
begin
{*
 004B9E64    push        ebp
 004B9E65    mov         ebp,esp
 004B9E67    push        ecx
 004B9E68    mov         dword ptr [ebp-4],eax
 004B9E6B    mov         dl,1
 004B9E6D    mov         eax,dword ptr [ebp-4]
 004B9E70    mov         ecx,dword ptr [eax]
 004B9E72    call        dword ptr [ecx+0D8];TCustomMenuButton.sub_004B0160
 004B9E78    mov         eax,dword ptr [ebp-4]
 004B9E7B    call        004C64C8
 004B9E80    pop         ecx
 004B9E81    pop         ebp
 004B9E82    ret
*}
end;

//004B9E84
{*procedure TCustomMenuButton.sub_00485588(?:?; ?:?; ?:?; ?:?);
begin
 004B9E84    push        ebp
 004B9E85    mov         ebp,esp
 004B9E87    add         esp,0FFFFFFF8
 004B9E8A    mov         byte ptr [ebp-6],cl
 004B9E8D    mov         byte ptr [ebp-5],dl
 004B9E90    mov         dword ptr [ebp-4],eax
 004B9E93    mov         eax,dword ptr [ebp+0C]
 004B9E96    push        eax
 004B9E97    mov         eax,dword ptr [ebp+8]
 004B9E9A    push        eax
 004B9E9B    mov         cl,byte ptr [ebp-6]
 004B9E9E    mov         dl,byte ptr [ebp-5]
 004B9EA1    mov         eax,dword ptr [ebp-4]
 004B9EA4    call        TCustomButtonControl.sub_00485588
 004B9EA9    mov         eax,dword ptr [ebp-4]
 004B9EAC    call        004B9E3C
 004B9EB1    mov         al,byte ptr [eax+296]
 004B9EB7    mov         edx,dword ptr [ebp-4]
 004B9EBA    mov         byte ptr [edx+1B0],al;TCustomMenuButton.FCloseMenu:Boolean
 004B9EC0    mov         al,byte ptr [ebp-5]
 004B9EC3    sub         al,1
>004B9EC5    jb          004B9ECE
>004B9EC7    je          004B9F2B
>004B9EC9    jmp         004B9F52
 004B9ECE    mov         eax,dword ptr [ebp-4]
 004B9ED1    cmp         byte ptr [eax+1B0],0;TCustomMenuButton.FCloseMenu:Boolean
>004B9ED8    jne         004B9F52
 004B9EDA    mov         dl,1
 004B9EDC    mov         eax,dword ptr [ebp-4]
 004B9EDF    mov         ecx,dword ptr [eax]
 004B9EE1    call        dword ptr [ecx+0D8];TCustomMenuButton.sub_004B0160
 004B9EE7    cmp         dword ptr ds:[571E80],0;gvar_00571E80:TCustomActionMenuBar
>004B9EEE    je          004B9F0B
 004B9EF0    mov         eax,dword ptr [ebp-4]
 004B9EF3    mov         eax,dword ptr [eax+4];TCustomMenuButton.FOwner:TComponent
 004B9EF6    cmp         eax,dword ptr ds:[571E80];0x0 gvar_00571E80:TCustomActionMenuBar
>004B9EFC    je          004B9F0B
 004B9EFE    mov         eax,[00571E80];0x0 gvar_00571E80:TCustomActionMenuBar
 004B9F03    mov         edx,dword ptr [eax]
 004B9F05    call        dword ptr [edx+17C];TCustomActionMenuBar.sub_004B31B8
 004B9F0B    mov         eax,dword ptr [ebp-4]
 004B9F0E    push        eax
 004B9F0F    push        0
 004B9F11    push        0B403
 004B9F16    mov         eax,dword ptr [ebp-4]
 004B9F19    call        004B9E3C
 004B9F1E    call        TWinControl.GetHandle
 004B9F23    push        eax
 004B9F24    call        user32.PostMessageA
>004B9F29    jmp         004B9F52
 004B9F2B    mov         eax,dword ptr [ebp-4]
 004B9F2E    call        004B9E3C
 004B9F33    cmp         byte ptr [eax+296],0
>004B9F3A    je          004B9F52
 004B9F3C    cmp         byte ptr [ebp-5],1
>004B9F40    jne         004B9F52
 004B9F42    mov         eax,dword ptr [ebp-4]
 004B9F45    call        004B9E3C
 004B9F4A    mov         edx,dword ptr [eax]
 004B9F4C    call        dword ptr [edx+17C]
 004B9F52    pop         ecx
 004B9F53    pop         ecx
 004B9F54    pop         ebp
 004B9F55    ret         8
end;*}

//004B9F58
{*procedure TCustomMenuButton.sub_004859D0(?:?; ?:?; ?:?; ?:?);
begin
 004B9F58    push        ebp
 004B9F59    mov         ebp,esp
 004B9F5B    add         esp,0FFFFFFF8
 004B9F5E    mov         byte ptr [ebp-6],cl
 004B9F61    mov         byte ptr [ebp-5],dl
 004B9F64    mov         dword ptr [ebp-4],eax
 004B9F67    mov         eax,dword ptr [ebp-4]
 004B9F6A    mov         byte ptr [eax+1B1],0;TCustomMenuButton.FDoClick:Boolean
 004B9F71    mov         eax,dword ptr [ebp+0C]
 004B9F74    push        eax
 004B9F75    mov         eax,dword ptr [ebp+8]
 004B9F78    push        eax
 004B9F79    mov         cl,byte ptr [ebp-6]
 004B9F7C    mov         dl,byte ptr [ebp-5]
 004B9F7F    mov         eax,dword ptr [ebp-4]
 004B9F82    call        TCustomButtonControl.sub_004859D0
 004B9F87    cmp         byte ptr [ebp-5],0
>004B9F8B    jne         004B9FA9
 004B9F8D    mov         eax,dword ptr [ebp-4]
 004B9F90    cmp         byte ptr [eax+1B0],0;TCustomMenuButton.FCloseMenu:Boolean
>004B9F97    je          004B9FA9
 004B9F99    mov         eax,dword ptr [ebp-4]
 004B9F9C    call        004B9E3C
 004B9FA1    mov         edx,dword ptr [eax]
 004B9FA3    call        dword ptr [edx+17C]
 004B9FA9    pop         ecx
 004B9FAA    pop         ecx
 004B9FAB    pop         ebp
 004B9FAC    ret         8
end;*}

//004B9FB0
procedure sub_004B9FB0;
begin
{*
 004B9FB0    push        ebp
 004B9FB1    mov         ebp,esp
 004B9FB3    add         esp,0FFFFFFF8
 004B9FB6    mov         dword ptr [ebp-4],eax
 004B9FB9    mov         eax,dword ptr [ebp-4]
 004B9FBC    mov         al,byte ptr [eax+1AE];TCustomMenuButton.FState:TButtonState
 004B9FC2    mov         byte ptr [ebp-5],al
 004B9FC5    mov         eax,dword ptr [ebp-4]
 004B9FC8    mov         eax,dword ptr [eax+16C];TCustomMenuButton.FActionClient:TActionClientItem
 004B9FCE    cmp         dword ptr [eax+18],0;TActionClientItem.FChildActionBar:TCustomActionBar
>004B9FD2    je          004B9FDE
 004B9FD4    mov         eax,dword ptr [ebp-4]
 004B9FD7    mov         byte ptr [eax+1AE],2;TCustomMenuButton.FState:TButtonState
 004B9FDE    mov         eax,dword ptr [ebp-4]
 004B9FE1    call        004AFFD8
 004B9FE6    mov         al,byte ptr [ebp-5]
 004B9FE9    mov         edx,dword ptr [ebp-4]
 004B9FEC    mov         byte ptr [edx+1AE],al;TCustomMenuButton.FState:TButtonState
 004B9FF2    pop         ecx
 004B9FF3    pop         ecx
 004B9FF4    pop         ebp
 004B9FF5    ret
*}
end;

//004B9FF8
{*procedure TCustomMenuButton.CMDialogChar(?:?);
begin
 004B9FF8    push        ebp
 004B9FF9    mov         ebp,esp
 004B9FFB    add         esp,0FFFFFFF8
 004B9FFE    mov         dword ptr [ebp-8],edx
 004BA001    mov         dword ptr [ebp-4],eax
 004BA004    pop         ecx
 004BA005    pop         ecx
 004BA006    pop         ebp
 004BA007    ret
end;*}

//004BA008
procedure RegisterActnBarStyle(AStyle:TActionBarStyleEx);
begin
{*
 004BA008    push        ebp
 004BA009    mov         ebp,esp
 004BA00B    push        0
 004BA00D    push        0
 004BA00F    push        0
 004BA011    push        ebx
 004BA012    mov         dword ptr [ebp-4],eax
 004BA015    xor         eax,eax
 004BA017    push        ebp
 004BA018    push        4BA096
 004BA01D    push        dword ptr fs:[eax]
 004BA020    mov         dword ptr fs:[eax],esp
 004BA023    mov         eax,[0056E1C8];^ActionBarStyles:TActionBarStyleList
 004BA028    cmp         dword ptr [eax],0
>004BA02B    jne         004BA041
 004BA02D    mov         dl,1
 004BA02F    mov         eax,[004BBDB8];TActionBarStyleList
 004BA034    call        TObject.Create
 004BA039    mov         edx,dword ptr ds:[56E1C8];^ActionBarStyles:TActionBarStyleList
 004BA03F    mov         dword ptr [edx],eax
 004BA041    lea         edx,[ebp-8]
 004BA044    mov         eax,dword ptr [ebp-4]
 004BA047    mov         ecx,dword ptr [eax]
 004BA049    call        dword ptr [ecx+8]
 004BA04C    mov         edx,dword ptr [ebp-8]
 004BA04F    mov         eax,[0056E1C8];^ActionBarStyles:TActionBarStyleList
 004BA054    mov         eax,dword ptr [eax]
 004BA056    mov         ecx,dword ptr [eax]
 004BA058    call        dword ptr [ecx+54]
 004BA05B    inc         eax
>004BA05C    jne         004BA07B
 004BA05E    lea         edx,[ebp-0C]
 004BA061    mov         eax,dword ptr [ebp-4]
 004BA064    mov         ecx,dword ptr [eax]
 004BA066    call        dword ptr [ecx+8]
 004BA069    mov         edx,dword ptr [ebp-0C]
 004BA06C    mov         ecx,dword ptr [ebp-4]
 004BA06F    mov         eax,[0056E1C8];^ActionBarStyles:TActionBarStyleList
 004BA074    mov         eax,dword ptr [eax]
 004BA076    mov         ebx,dword ptr [eax]
 004BA078    call        dword ptr [ebx+3C]
 004BA07B    xor         eax,eax
 004BA07D    pop         edx
 004BA07E    pop         ecx
 004BA07F    pop         ecx
 004BA080    mov         dword ptr fs:[eax],edx
 004BA083    push        4BA09D
 004BA088    lea         eax,[ebp-0C]
 004BA08B    mov         edx,2
 004BA090    call        @LStrArrayClr
 004BA095    ret
>004BA096    jmp         @HandleFinally
>004BA09B    jmp         004BA088
 004BA09D    pop         ebx
 004BA09E    mov         esp,ebp
 004BA0A0    pop         ebp
 004BA0A1    ret
*}
end;

//004BA0A4
procedure UnRegisterActnBarStyle(AStyle:TActionBarStyleEx);
begin
{*
 004BA0A4    push        ebp
 004BA0A5    mov         ebp,esp
 004BA0A7    add         esp,0FFFFFFF8
 004BA0AA    mov         dword ptr [ebp-4],eax
 004BA0AD    mov         edx,dword ptr [ebp-4]
 004BA0B0    mov         eax,[0056E1C8];^ActionBarStyles:TActionBarStyleList
 004BA0B5    mov         eax,dword ptr [eax]
 004BA0B7    mov         ecx,dword ptr [eax]
 004BA0B9    call        dword ptr [ecx+5C]
 004BA0BC    mov         dword ptr [ebp-8],eax
 004BA0BF    cmp         dword ptr [ebp-8],0FFFFFFFF
>004BA0C3    je          004BA0D4
 004BA0C5    mov         eax,[0056E1C8];^ActionBarStyles:TActionBarStyleList
 004BA0CA    mov         eax,dword ptr [eax]
 004BA0CC    mov         edx,dword ptr [ebp-8]
 004BA0CF    mov         ecx,dword ptr [eax]
 004BA0D1    call        dword ptr [ecx+48]
 004BA0D4    mov         eax,[0056E1C8];^ActionBarStyles:TActionBarStyleList
 004BA0D9    mov         eax,dword ptr [eax]
 004BA0DB    mov         edx,dword ptr [eax]
 004BA0DD    call        dword ptr [edx+14]
 004BA0E0    test        eax,eax
>004BA0E2    jne         004BA0EE
 004BA0E4    mov         eax,[0056E1C8];^ActionBarStyles:TActionBarStyleList
 004BA0E9    call        FreeAndNil
 004BA0EE    pop         ecx
 004BA0EF    pop         ecx
 004BA0F0    pop         ebp
 004BA0F1    ret
*}
end;

Initialization
//004BA124
{*
 004BA124    push        ebp
 004BA125    mov         ebp,esp
 004BA127    sub         dword ptr ds:[571E74],1
>004BA12E    jae         004BA145
 004BA130    xor         eax,eax
 004BA132    mov         [00571E70],eax;gvar_00571E70
 004BA137    xor         eax,eax
 004BA139    mov         [00571E78],eax;gvar_00571E78:HHOOK
 004BA13E    xor         eax,eax
 004BA140    mov         [00571E7C],eax;gvar_00571E7C:TMenuList
 004BA145    pop         ebp
 004BA146    ret
*}
Finalization
end.