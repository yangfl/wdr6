//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit StdCtrls;

interface

uses
  SysUtils, Classes, Controls, StdCtrls, Graphics;

type
  TCustomGroupBox = class(TCustomControl)
  public
    constructor v2C; virtual;//v2C//00472F48
    //procedure v8C(?:?); virtual;//v8C//00472FBC
    //procedure v98(?:?); virtual;//v98//00473038
    procedure vC8; virtual;//vC8//0047305C
    //procedure WMSize(?:?); message WM_SIZE;//0047354C
    //procedure CMDialogChar(?:?); message CM_DIALOGCHAR;//00473470
    //procedure CMCtl3DChanged(?:?); message CM_CTL3DCHANGED;//00473520
    //procedure CMTextChanged(?:?); message CM_TEXTCHANGED;//00473500
  end;
  TGroupBox = class(TCustomGroupBox)
  end;
  TTextLayout = (tlTop, tlCenter, tlBottom);
  TCustomLabel = class(TGraphicControl)
  public
    FFocusControl:TWinControl;//f168
    FAlignment:TAlignment;//f16C
    FAutoSize:Boolean;//f16D
    FLayout:TTextLayout;//f16E
    FWordWrap:Boolean;//f16F
    FShowAccelChar:Boolean;//f170
    FOnMouseLeave:TNotifyEvent;//f178
    f17A:word;//f17A
    f17C:dword;//f17C
    FOnMouseEnter:TNotifyEvent;//f180
    f182:word;//f182
    f184:dword;//f184
    FTransparentSet:Boolean;//f188
    procedure vC; virtual;//vC//00473924
    //procedure v10(?:?; ?:?); virtual;//v10//00473BFC
    constructor Create; virtual;//v2C//00473570
    procedure SetAutoSize(Value:Boolean); virtual;//v5C//00473A6C
    procedure v8C; virtual;//v8C//00473800
    //procedure v90(?:?); virtual;//v90//00473638
    //procedure CMDialogChar(?:?); message CM_DIALOGCHAR;//00473C90
    //procedure CMFontChanged(?:?); message CM_FONTCHANGED;//00473C64
    //procedure CMTextChanged(?:?); message CM_TEXTCHANGED;//00473C3C
    //procedure CMMouseEnter(?:?); message CM_MOUSEENTER;//00473D48
    //procedure CMMouseLeave(?:?); message CM_MOUSELEAVE;//00473D84
    //procedure sub_00473654(?:?; ?:?); dynamic;//00473654
    procedure sub_00473944; dynamic;//00473944
  end;
  TLabel = class(TCustomLabel)
    procedure SetAlignment(Value:TAlignment);//00473A38
    procedure SetFocusControl(Value:TWinControl);//00473AC4
  end;
  TEditCharCase = (ecNormal, ecUpperCase, ecLowerCase);
  TCustomEdit = class(TWinControl)
  public
    FMaxLength:Integer;//f208
    FBorderStyle:TBorderStyle;//f20C
    FPasswordChar:Char;//f20D
    FReadOnly:Boolean;//f20E
    FAutoSize:Boolean;//f20F
    FAutoSelect:Boolean;//f210
    FHideSelection:Boolean;//f211
    FOEMConvert:Boolean;//f212
    FCharCase:TEditCharCase;//f213
    FCreating:Boolean;//f214
    FModified:Boolean;//f215
    FOnChange:TNotifyEvent;//f218
    f21A:word;//f21A
    f21C:dword;//f21C
    procedure DefaultHandler(var Message:void ); virtual;//004747E4
    constructor v2C; virtual;//v2C//00473DC0
    procedure SetAutoSize(Value:Boolean); virtual;//v5C//00473EC0
    //procedure v98(?:?); virtual;//v98//00474444
    //procedure v9C(?:?); virtual;//v9C//0047452C
    procedure CreateWnd; virtual;//vA0//004745BC
    procedure DestroyWnd; virtual;//vB0//00474660
    //procedure vC8(?:?); virtual;//vC8//00473E94
    //function vCC:?; virtual;//vCC//004741F0
    //function vD0:?; virtual;//vD0//00474198
    //procedure vD4(?:?); virtual;//vD4//0047439C
    //procedure vD8(?:?); virtual;//vD8//00474224
    //procedure vDC(?:?); virtual;//vDC//004741C4
    procedure vE0; virtual;//vE0//0047428C
    //function vE4(?:?; ?:?):?; virtual;//vE4//004742F8
    //procedure WMSetFont(?:?); message WM_SETFONT;//0047482C
    //procedure WMContextMenu(?:?); message WM_CONTEXTMENU;//004749D0
    //procedure CMFontChanged(?:?); message CM_FONTCHANGED;//004748C0
    //procedure CMCtl3DChanged(?:?); message CM_CTL3DCHANGED;//0047487C
    //procedure CMTextChanged(?:?); message CM_TEXTCHANGED;//00474984
    //procedure CMEnter(?:?); message CM_ENTER;//00474938
    //procedure sub_00474900(?:?); dynamic;//00474900
    procedure sub_004747B0; dynamic;//004747B0
    function GetModified:Boolean;//00474010
    procedure SetModified(Value:Boolean);//00474058
    procedure UpdateHeight;//00474684
  end;
  TEdit = class(TCustomEdit)
  end;
  TScrollStyle = (ssNone, ssHorizontal, ssVertical, ssBoth);
  TCustomMemo = class(TCustomEdit)
  public
    FLines:TStrings;//f220
    FAlignment:TAlignment;//f224
    FScrollBars:TScrollStyle;//f225
    FWordWrap:Boolean;//f226
    FWantReturns:Boolean;//f227
    FWantTabs:Boolean;//f228
    destructor Destroy; virtual;//00474F98
    procedure vC; virtual;//vC//00475264
    constructor v2C; virtual;//v2C//00474EE8
    //procedure v98(?:?); virtual;//v98//00474FD8
    //procedure v9C(?:?); virtual;//v9C//00475054
    //procedure vE8(?:?); virtual;//vE8//00475188
    //procedure vEC(?:?); virtual;//vEC//004751F8
    //procedure WMNCDestroy(?:?); message WM_NCDESTROY;//00475368
    //procedure WMGetDlgCode(?:?); message WM_GETDLGCODE;//0047531C
    //procedure sub_00475384(?:?); dynamic;//00475384
    procedure sub_00475248; dynamic;//00475248
  end;
  TDrawItemEvent = procedure(Control:TWinControl; Index:Integer; Rect:TRect; State:TOwnerDrawState) of object;;
  TMeasureItemEvent = procedure(Control:TWinControl; Index:Integer; var Height:Integer) of object;;
  TCustomComboBoxStrings = class(TStrings)
  public
    .....................FComboBox:TCustomCombo;//f10
    //procedure vC(?:?; ?:?); virtual;//vC//004754A4
    //function v14:?; virtual;//v14//004753BC
    //function v18(?:?):?; virtual;//v18//004753EC
    //procedure v24(?:?; ?:?); virtual;//v24//00475470
    //procedure v30(?:?); virtual;//v30//00475608
    procedure Clear; virtual;//v44//00475520
    //procedure v48(?:?); virtual;//v48//004755A4
    //function v54(?:?):?; virtual;//v54//004755D0
  end;
  TCustomCombo = class(TCustomListControl)
  public
    FCanvas:TCanvas;//f208
    FMaxLength:Integer;//f20C
    FDropDownCount:Integer;//f210
    FItemIndex:Integer;//f214
    FOnChange:TNotifyEvent;//f218
    f21A:word;//f21A
    f21C:dword;//f21C
    FOnSelect:TNotifyEvent;//f220
    f222:word;//f222
    f224:dword;//f224
    FOnDropDown:TNotifyEvent;//f228
    f22A:word;//f22A
    f22C:dword;//f22C
    FOnCloseUp:TNotifyEvent;//f230
    f232:word;//f232
    f234:dword;//f234
    FItemHeight:Integer;//f238
    FItems:TStrings;//f23C
    FEditHandle:HWND;//f240
    FListHandle:HWND;//f244
    FDropHandle:HWND;//f248
    FEditInstance:Pointer;//f24C
    FDefEditProc:Pointer;//f250
    FListInstance:Pointer;//f254
    FDefListProc:Pointer;//f258
    FDroppingDown:Boolean;//f25C
    FFocusChanged:Boolean;//f25D
    FIsFocused:Boolean;//f25E
    FSaveIndex:Integer;//f260
    destructor Destroy; virtual;//00475894
    procedure vC; virtual;//vC//00476550
    constructor v2C; virtual;//v2C//00475768
    //procedure v74(?:?); virtual;//v74//00476128
    procedure CreateWnd; virtual;//vA0//0047663C
    procedure DestroyWindowHandle; virtual;//vAC//00475940
    //function vC8:?; virtual;//vC8//00476878
    function GetItemIndex:Integer; virtual;//vCC//00475A14
    procedure SetItemIndex(Value:Integer); virtual;//vD0//00475A58
    //procedure vD4(?:?; ?:?); virtual;//vD4//004768B4
    procedure Clear; virtual;//vD8//00475908
    //procedure vDC(?:?); virtual;//vDC//00476790
    //procedure vE0(?:?); virtual;//vE0//004767A8
    procedure vE4; virtual;//vE4//00476844
    procedure vEC; virtual;//vEC//00475974
    procedure vF0; virtual;//vF0//00476684
    //procedure vF4(?:?; ?:?; ?:?); virtual;//vF4//00475E10
    procedure SetItemHeight(Value:Integer); virtual;//v100//00475B04
    procedure SetDropDownCount(Value:Integer); virtual;//v108//00476898
    procedure SetItems(Value:TStrings); virtual;//v10C//00476754
    //procedure WMCreate(?:?); message WM_CREATE;//00475B30
    //procedure WMDrawItem(?:?); message WM_DRAWITEM;//00475B6C
    //procedure WMMeasureItem(?:?); message WM_MEASUREITEM;//00475B88
    //procedure WMDeleteItem(?:?); message WM_DELETEITEM;//00475BA4
    //procedure WMGetDlgCode(?:?); message WM_GETDLGCODE;//00475BC0
    //procedure CMCancelMode(?:?); message CM_CANCELMODE;//00475BF0
    //procedure CMCtl3DChanged(?:?); message CM_CTL3DCHANGED;//00475C1C
    //procedure sub_0047627C(?:?); dynamic;//0047627C
    procedure sub_004765D4; dynamic;//004765D4
    procedure sub_00476524; dynamic;//00476524
    procedure sub_00476600; dynamic;//00476600
    procedure sub_0047641C; dynamic;//0047641C
    procedure sub_00476584; dynamic;//00476584
  end;
  TComboBoxStyle = (csDropDown, csSimple, csDropDownList, csOwnerDrawFixed, csOwnerDrawVariable);
  TCustomComboBox = class(TCustomCombo)
  public
    FAutoComplete:Boolean;//f268
    FAutoDropDown:Boolean;//f269
    FLastTime:Cardinal;//f26C
    FFilter:String;//f270
    FCharCase:TEditCharCase;//f274
    FSorted:Boolean;//f275
    FStyle:TComboBoxStyle;//f276
    FSaveItems:TStringList;//f278
    FOnDrawItem:TDrawItemEvent;//f280
    f282:word;//f282
    f284:dword;//f284
    FOnMeasureItem:TMeasureItemEvent;//f288
    f28A:word;//f28A
    f28C:dword;//f28C
    FAutoCloseUp:Boolean;//f290
    destructor Destroy; virtual;//004769B8
    constructor v2C; virtual;//v2C//00476910
    //procedure v74(?:?); virtual;//v74//0047770C
    //procedure v98(?:?); virtual;//v98//00476AE4
    procedure CreateWnd; virtual;//vA0//00476B60
    procedure vB0; virtual;//vB0//00476D1C
    //function vF8:?; virtual;//vF8//0047778C
    function GetItemHeight:Integer; virtual;//vFC//00476AA0
    //function v104:?; virtual;//v104//00477768
    //procedure v110(?:?; ?:?; ?:?); virtual;//v110//00476450
    //procedure v114(?:?; ?:?); virtual;//v114//004774C0
    procedure SetStyle(Value:TComboBoxStyle); virtual;//v118//00476A3C
    procedure WMPaint(Message:TWMPaint); message WM_PAINT;//004777A4
    //procedure WMEraseBkgnd(?:?); message WM_ERASEBKGND;//00476D80
    //procedure WMNCCalcSize(?:?); message WM_NCCALCSIZE;//00477A28
    //procedure WMLButtonDown(?:?); message WM_LBUTTONDOWN;//00477670
    //procedure CMParentColorChanged(?:?); message CM_PARENTCOLORCHANGED;//00475C4C
    //procedure sub_004774FC(?:?); dynamic;//004774FC
    //procedure sub_00477620(?:?); dynamic;//00477620
    //procedure sub_00476EE8(?:?); dynamic;//00476EE8
  end;
  TComboBox = class(TCustomComboBox)
    procedure SetMaxLength(Value:Integer);//00475AA8
    procedure SetCharCase(Value:TEditCharCase);//00475DDC
    procedure SetSorted(Value:Boolean);//00476A08
  end;
  TButtonActionLink = class(TWinControlActionLink)
  public
    .....FClient:TButtonControl;//f28
    //procedure v0(?:?); virtual;//v0//00477A38
    //function v24:?; virtual;//v24//00477A68
    //procedure v50(?:?); virtual;//v50//00477AB8
  end;
  TButtonControl = class(TWinControl)
  public
    FClicksDisabled:Boolean;//f208
    FWordWrap:Boolean;//f209
    constructor v2C; virtual;//v2C//00477B24
    //procedure v74(?:?); virtual;//v74//00477C58
    //procedure v98(?:?); virtual;//v98//00477D7C
    //function vC8:?; virtual;//vC8//00477C00
    //procedure vCC(?:?); virtual;//vCC//00477C48
    //procedure WMEraseBkgnd(?:?); message WM_ERASEBKGND;//00477D44
    //procedure sub_00477CE8(?:?); dynamic;//00477CE8
    procedure sub_00477BE8; dynamic;//00477BE8
    //procedure sub_00477B8C(?:?; ?:?); dynamic;//00477B8C
  end;
  TButton = class(TButtonControl)
  public
    Default:Boolean;//f210
    Cancel:Boolean;//f211
    FActive:Boolean;//f212
    ModalResult:TModalResult;//f214
    constructor Create; virtual;//v2C//00477DE4
    //procedure v98(?:?); virtual;//v98//00477F68
    procedure CreateWnd; virtual;//vA0//00477FB4
    //procedure vD0(?:?); virtual;//vD0//00477EAC
    //procedure WMEraseBkgnd(?:?); message WM_ERASEBKGND;//00478190
    //procedure CMDialogKey(?:?); message CM_DIALOGKEY;//00478000
    //procedure CMDialogChar(?:?); message CM_DIALOGCHAR;//0047808C
    //procedure CMFocusChenged(?:?); message CM_FOCUSCHANGED;//00478120
    //procedure sub_00477FD8(?:?); dynamic;//00477FD8
    //procedure sub_004781C8(?:?); dynamic;//004781C8
    procedure sub_00477E98; dynamic;//00477E98
    procedure sub_00477E60; dynamic;//00477E60
    procedure SetWordWrap(Value:Boolean);//00477DB0
    procedure SetDefault(Value:Boolean);//00477F14
  end;
  TCheckBoxState = (cbUnchecked, cbChecked, cbGrayed);
  TCustomCheckBox = class(TButtonControl)
  public
    FAlignment:TLeftRight;//f210
    FAllowGrayed:Boolean;//f211
    FState:TCheckBoxState;//f212
    constructor Create; virtual;//v2C//00478224
    //procedure v98(?:?); virtual;//v98//00478454
    procedure CreateWnd; virtual;//vA0//004784C4
    function GetChecked:Boolean; virtual;//vC8//00478364
    procedure SetChecked(Value:Boolean); virtual;//vCC//004783B8
    procedure vD0; virtual;//vD0//004782EC
    //procedure WMSize(?:?); message WM_SIZE;//004784F8
    //procedure CMDialogChar(?:?); message CM_DIALOGCHAR;//00478534
    //procedure CMCtl3DChanged(?:?); message CM_CTL3DCHANGED;//0047851C
    //procedure sub_004785E4(?:?); dynamic;//004785E4
    procedure sub_004782AC; dynamic;//004782AC
    procedure sub_00478348; dynamic;//00478348
  end;
  TCheckBox = class(TCustomCheckBox)
    function IsStoredChecked(Value:Boolean):Boolean;//00477C14
    procedure SetAlignment(Value:TLeftRight);//00478384
    procedure SetState(Value:TCheckBoxState);//004783E4
  end;
  TRadioButton = class(TButtonControl)
  public
    Alignment:TLeftRight;//f210
    FChecked:Boolean;//f211
    constructor v2C; virtual;//v2C//0047860C
    //procedure v98(?:?); virtual;//v98//00478878
    procedure CreateWnd; virtual;//vA0//004788E4
    function GetChecked:Boolean; virtual;//vC8//00478688
    procedure SetChecked(Value:Boolean); virtual;//vCC//004787E4
    //procedure CMDialogChar(?:?); message CM_DIALOGCHAR;//00478930
    //procedure CMCtl3DChanged(?:?); message CM_CTL3DCHANGED;//00478918
    //procedure sub_004789C4(?:?); dynamic;//004789C4
    procedure sub_004786A4; dynamic;//004786A4
    procedure SetAlignment(Value:TLeftRight);//004786E4
  end;
  TListBoxStyle = (lbStandard, lbOwnerDrawFixed, lbOwnerDrawVariable, lbVirtual, lbVirtualOwnerDraw);
  TLBGetDataEvent = procedure(Control:TWinControl; Index:Integer; var Data:String) of object;;
  TLBGetDataObjectEvent = procedure(Control:TWinControl; Index:Integer; var DataObject:TObject) of object;;
  TLBFindDataEvent = function(Control:TWinControl; FindString:String):Integer of object;;
  TCustomListBox = class(TCustomMultiSelectListControl)
  public
    FAutoComplete:Boolean;//f210
    FCount:Integer;//f214
    FItems:TStrings;//f218
    FFilter:String;//f21C
    FLastTime:Cardinal;//f220
    FBorderStyle:TBorderStyle;//f224
    FCanvas:TCanvas;//f228
    FColumns:Integer;//f22C
    FItemHeight:Integer;//f230
    FOldCount:Integer;//f234
    FStyle:TListBoxStyle;//f238
    FIntegralHeight:Boolean;//f239
    FSorted:Boolean;//f23A
    FExtendedSelect:Boolean;//f23B
    FTabWidth:Integer;//f23C
    FSaveItems:TStringList;//f240
    FSaveTopIndex:Integer;//f244
    FSaveItemIndex:Integer;//f248
    FOnDrawItem:TDrawItemEvent;//f250
    f252:word;//f252
    f254:dword;//f254
    FOnMeasureItem:TMeasureItemEvent;//f258
    f25A:word;//f25A
    f25C:dword;//f25C
    FOnData:TLBGetDataEvent;//f260
    f262:word;//f262
    f264:dword;//f264
    FOnDataFind:TLBFindDataEvent;//f268
    f26A:word;//f26A
    f26C:dword;//f26C
    FOnDataObject:TLBGetDataObjectEvent;//f270
    f272:word;//f272
    f274:dword;//f274
    FMoving:Boolean;//f278
    destructor Destroy; virtual;//00479270
    constructor Create; virtual;//v2C//0047914C
    //procedure v74(?:?); virtual;//v74//0047A2C0
    //procedure v98(?:?); virtual;//v98//00479FA8
    procedure CreateWnd; virtual;//vA0//0047A100
    procedure vB0; virtual;//vB0//0047A220
    //function vC8:?; virtual;//vC8//004797D4
    //function vCC:?; virtual;//vCC//00479780
    //procedure vD0(?:?); virtual;//vD0//00479840
    //procedure vD4(?:?; ?:?); virtual;//vD4//004792CC
    procedure Clear; virtual;//vD8//00479464
    procedure vDC; virtual;//vDC//0047947C
    //procedure vE0(?:?); virtual;//vE0//004794D8
    procedure vE4; virtual;//vE4//00479628
    procedure vEC; virtual;//vEC//0047A9AC
    //function vF0:?; virtual;//vF0//00479814
    procedure SetMultiSelect(Value:Boolean); virtual;//vF4//004799DC
    //procedure vF8(?:?; ?:?; ?:?); virtual;//vF8//0047A6A4
    //procedure vFC(?:?; ?:?); virtual;//vFC//0047A7E0
    //procedure WMSize(?:?); message WM_SIZE;//0047A620
    procedure WMPaint(var Message:TWMPaint); message WM_PAINT;//0047A5F0
    //procedure sub_00479C0C(?:?); dynamic;//00479C0C
    //procedure sub_00479CE8(?:?); dynamic;//00479CE8
    //procedure WMLButtonDown(?:?); message WM_LBUTTONDOWN;//0047A344
    //procedure CMCtl3DChanged(?:?); message CM_CTL3DCHANGED;//0047A970
    //procedure sub_0047A81C(?:?); dynamic;//0047A81C
    //procedure sub_0047A920(?:?); dynamic;//0047A920
    //procedure sub_0047A400(?:?); dynamic;//0047A400
    //procedure sub_00479408(?:?); dynamic;//00479408
    procedure sub_00479434; dynamic;//00479434
    //procedure sub_00479388(?:?; ?:TCheckListBoxDataWrapper); dynamic;//00479388
    //procedure sub_00479358(?:?); dynamic;//00479358
    //procedure sub_004793E0(?:?; ?:?); dynamic;//004793E0
    //procedure sub_004793B8(?:?); dynamic;//004793B8
    //procedure sub_0047AAE4(?:?); dynamic;//0047AAE4
    procedure sub_0047A644; dynamic;//0047A644
  end;
  TListBox = class(TCustomListBox)
    procedure SetColumns(Value:Integer);//00479718
    procedure SetExtendedSelect(Value:Boolean);//004798A0
    procedure SetIntegralHeight(Value:Boolean);//004798D4
    //function GetItemHeight:?;//00479914
    procedure SetItemHeight(Value:Integer);//00479964
    procedure SetTabWidth(Value:Integer);//0047999C
    procedure SetSorted(Value:Boolean);//00479B48
    procedure SetStyle(Value:TListBoxStyle);//00479B8C
    procedure SetBorderStyle(Value:TBorderStyle);//00479DB0
    procedure SetItems(Value:TStrings);//00479E1C
    //function GetScrollWidth:?;//0047AE78
    procedure SetScrollWidth(Value:Integer);//0047AEA4
  end;
  TStaticBorderStyle = (sbsNone, sbsSingle, sbsSunken);
  TCustomStaticText = class(TWinControl)
  public
    FAlignment:TAlignment;//f208
    FAutoSize:Boolean;//f209
    FBorderStyle:TStaticBorderStyle;//f20A
    FFocusControl:TWinControl;//f20C
    FShowAccelChar:Boolean;//f210
    procedure vC; virtual;//vC//0047B114
    //procedure v10(?:?; ?:?); virtual;//v10//0047B238
    constructor v2C; virtual;//v2C//0047AEDC
    procedure SetAutoSize(Value:Boolean); virtual;//v5C//0047B2AC
    //procedure v98(?:?); virtual;//v98//0047AF6C
    //procedure CMDialogChar(?:?); message CM_DIALOGCHAR;//0047B00C
    //procedure CMFontChanged(?:?); message CM_FONTCHANGED;//0047B0C4
    //procedure CMTextChanged(?:?); message CM_TEXTCHANGED;//0047B0E8
    //procedure sub_0047B37C(?:?); dynamic;//0047B37C
  end;
  TStaticText = class(TCustomStaticText)
    procedure SetAlignment(Value:TAlignment);//0047B278
    procedure SetBorderStyle(Value:TStaticBorderStyle);//0047B2E4
    procedure SetFocusControl(Value:TWinControl);//0047B318
    procedure SetShowAccelChar(Value:Boolean);//0047B348
    procedure SetTransparent(Value:Boolean);//0047B3F4
    //function GetTransparent:?;//0047B44C
  end;
  TMemoStrings = class(TStrings)
  public
    ..............................Memo:TCustomMemo;//f10
    //procedure vC(?:?; ?:?); virtual;//vC//00474A84
    //function v14:?; virtual;//v14//004749F8
    //procedure v1C(?:?); virtual;//v1C//00474DE4
    //procedure v20(?:?; ?:?); virtual;//v20//00474ADC
    //procedure v2C(?:?); virtual;//v2C//00474E04
    //procedure v30(?:?); virtual;//v30//00474D80
    procedure Clear; virtual;//v44//00474D68
    //procedure v48(?:?); virtual;//v48//00474CA8
    //procedure v60(?:?; ?:?); virtual;//v60//00474B70
  end;
  TComboBoxStrings = class(TCustomComboBoxStrings)
  public
    //function v38(?:?):?; virtual;//v38//00475648
    //procedure v60(?:?; ?:?); virtual;//v60//004756D8
  end;
  TListBoxStrings = class(TStrings)
  public
    .........................................ListBox:TCustomListBox;//f10
    //procedure vC(?:?; ?:?); virtual;//vC//00478A38
    //function v14:?; virtual;//v14//00478A08
    //function v18(?:?):?; virtual;//v18//00478B2C
    //procedure v20(?:?; ?:?); virtual;//v20//00478BCC
    //procedure v24(?:?; ?:?); virtual;//v24//00478C60
    //procedure v30(?:?); virtual;//v30//00478F98
    //function v38(?:?):?; virtual;//v38//00478CA4
    procedure Clear; virtual;//v44//00478F7C
    //procedure v48(?:?); virtual;//v48//00478DEC
    //procedure v4C(?:?; ?:?); virtual;//v4C//00478E10
    //function v54(?:?):?; virtual;//v54//00478FD8
    //procedure v60(?:?; ?:?); virtual;//v60//00478D4C
    //procedure v70(?:?; ?:?); virtual;//v70//00479034
  end;
    //function sub_00472BF8(?:TCustomCombo):?;//00472BF8
    constructor sub_00472F48;//00472F48
    //procedure sub_00472FBC(?:?);//00472FBC
    //procedure sub_00473038(?:?);//00473038
    procedure sub_0047305C;//0047305C
    //procedure CMDialogChar(?:?);//00473470
    //procedure CMTextChanged(?:?);//00473500
    //procedure CMCtl3DChanged(?:?);//00473520
    //procedure WMSize(?:?);//0047354C
    constructor Create;//00473570
    //procedure sub_00473638(?:?);//00473638
    //procedure sub_00473654(?:?; ?:?);//00473654
    procedure sub_00473800;//00473800
    procedure sub_00473924;//00473924
    procedure sub_00473944;//00473944
    procedure SetAutoSize(Value:Boolean);//00473A6C
    //function GetTransparent:?;//00473AA4
    procedure SetShowAccelChar(Value:Boolean);//00473AF4
    procedure SetTransparent(Value:Boolean);//00473B28
    procedure SetLayout(Value:TTextLayout);//00473B88
    procedure SetWordWrap(Value:Boolean);//00473BBC
    //procedure sub_00473BFC(?:?; ?:?);//00473BFC
    //procedure CMTextChanged(?:?);//00473C3C
    //procedure CMFontChanged(?:?);//00473C64
    //procedure CMDialogChar(?:?);//00473C90
    //procedure CMMouseEnter(?:?);//00473D48
    //procedure CMMouseLeave(?:?);//00473D84
    constructor sub_00473DC0;//00473DC0
    //procedure sub_00473E94(?:?);//00473E94
    procedure SetAutoSize(Value:Boolean);//00473EC0
    procedure SetBorderStyle(Value:TBorderStyle);//00473EF4
    procedure SetCharCase(Value:TEditCharCase);//00473F30
    procedure SetHideSelection(Value:Boolean);//00473F64
    procedure SetMaxLength(Value:Integer);//00473F98
    procedure SetOEMConvert(Value:Boolean);//00473FDC
    procedure SetPasswordChar(Value:Char);//004740A0
    procedure SetReadOnly(Value:Boolean);//00474144
    //function sub_00474198:?;//00474198
    //procedure sub_004741C4(?:?);//004741C4
    //function sub_004741F0:?;//004741F0
    //procedure sub_00474224(?:?);//00474224
    procedure sub_0047428C;//0047428C
    procedure sub_004742B0(?:TCustomMaskEdit);//004742B0
    procedure sub_004742D4(?:TCustomEdit);//004742D4
    //function sub_004742F8(?:?; ?:?):?;//004742F8
    //procedure sub_0047439C(?:?);//0047439C
    //procedure sub_00474444(?:?);//00474444
    //procedure sub_0047452C(?:?);//0047452C
    procedure CreateWnd;//004745BC
    procedure DestroyWnd;//00474660
    procedure sub_004746DC(?:TCustomEdit);//004746DC
    procedure sub_004747B0;//004747B0
    procedure DefaultHandler(var Message:void );//004747E4
    //procedure WMSetFont(?:?);//0047482C
    //procedure CMCtl3DChanged(?:?);//0047487C
    //procedure CMFontChanged(?:?);//004748C0
    //procedure sub_00474900(?:?);//00474900
    //procedure CMEnter(?:?);//00474938
    //procedure CMTextChanged(?:?);//00474984
    //procedure WMContextMenu(?:?);//004749D0
    //function sub_004749F8:?;//004749F8
    //procedure sub_00474A84(?:?; ?:?);//00474A84
    //procedure sub_00474ADC(?:?; ?:?);//00474ADC
    //procedure sub_00474B70(?:?; ?:?);//00474B70
    //procedure sub_00474CA8(?:?);//00474CA8
    procedure Clear;//00474D68
    //procedure sub_00474D80(?:?);//00474D80
    //procedure sub_00474DE4(?:?);//00474DE4
    //procedure sub_00474E04(?:?);//00474E04
    constructor sub_00474EE8;//00474EE8
    destructor Destroy;//00474F98
    //procedure sub_00474FD8(?:?);//00474FD8
    //procedure sub_00475054(?:?);//00475054
    //procedure sub_00475188(?:?);//00475188
    //procedure sub_004751F8(?:?);//004751F8
    procedure sub_00475248;//00475248
    procedure sub_00475264;//00475264
    procedure SetAlignment(Value:TAlignment);//00475280
    procedure SetScrollBars(Value:TScrollStyle);//004752B4
    procedure SetWordWrap(Value:Boolean);//004752E8
    //procedure WMGetDlgCode(?:?);//0047531C
    //procedure WMNCDestroy(?:?);//00475368
    //procedure sub_00475384(?:?);//00475384
    //function sub_004753BC:?;//004753BC
    //function sub_004753EC(?:?):?;//004753EC
    //procedure sub_00475470(?:?; ?:?);//00475470
    //procedure sub_004754A4(?:?; ?:?);//004754A4
    procedure Clear;//00475520
    //procedure sub_004755A4(?:?);//004755A4
    //function sub_004755D0(?:?):?;//004755D0
    //procedure sub_00475608(?:?);//00475608
    //function sub_00475648(?:?):?;//00475648
    //procedure sub_004756D8(?:?; ?:?);//004756D8
    constructor sub_00475768;//00475768
    destructor Destroy;//00475894
    procedure Clear;//00475908
    procedure DestroyWindowHandle;//00475940
    procedure sub_00475974;//00475974
    //function sub_00475998(?:TCustomCombo):?;//00475998
    //procedure sub_004759C8(?:TCustomCombo; ?:?);//004759C8
    function GetItemIndex:Integer;//00475A14
    procedure SetItemIndex(Value:Integer);//00475A58
    procedure SetItemHeight(Value:Integer);//00475B04
    //procedure WMCreate(?:?);//00475B30
    //procedure WMDrawItem(?:?);//00475B6C
    //procedure WMMeasureItem(?:?);//00475B88
    //procedure WMDeleteItem(?:?);//00475BA4
    //procedure WMGetDlgCode(?:?);//00475BC0
    //procedure CMCancelMode(?:?);//00475BF0
    //procedure CMCtl3DChanged(?:?);//00475C1C
    //procedure CMParentColorChanged(?:?);//00475C4C
    //procedure sub_00475E10(?:?; ?:?; ?:?);//00475E10
    //procedure sub_00476128(?:?);//00476128
    //procedure sub_0047627C(?:?);//0047627C
    procedure sub_0047641C;//0047641C
    //procedure sub_00476450(?:?; ?:?; ?:?);//00476450
    procedure sub_00476524;//00476524
    procedure sub_00476550;//00476550
    procedure sub_00476584;//00476584
    procedure sub_004765D4;//004765D4
    procedure sub_00476600;//00476600
    procedure CreateWnd;//0047663C
    procedure sub_00476684;//00476684
    procedure SetItems(Value:TStrings);//00476754
    //procedure sub_00476790(?:?);//00476790
    //procedure sub_004767A8(?:?);//004767A8
    procedure sub_00476844;//00476844
    //function sub_00476878:?;//00476878
    procedure SetDropDownCount(Value:Integer);//00476898
    //procedure sub_004768B4(?:?; ?:?);//004768B4
    constructor sub_00476910;//00476910
    destructor Destroy;//004769B8
    procedure SetStyle(Value:TComboBoxStyle);//00476A3C
    function GetItemHeight:Integer;//00476AA0
    //procedure sub_00476AE4(?:?);//00476AE4
    procedure CreateWnd;//00476B60
    procedure sub_00476D1C;//00476D1C
    //procedure WMEraseBkgnd(?:?);//00476D80
    //function sub_00476DE0(?:?; ?:?; ?:?):?;//00476DE0
    //procedure sub_00476E20(?:?);//00476E20
    //procedure sub_00476EE8(?:?);//00476EE8
    //function sub_004772CC(?:TCustomComboBox; ?:AnsiString):?;//004772CC
    //procedure sub_004774C0(?:?; ?:?);//004774C0
    //procedure sub_004774FC(?:?);//004774FC
    //procedure sub_00477620(?:?);//00477620
    //procedure WMLButtonDown(?:?);//00477670
    //procedure sub_0047770C(?:?);//0047770C
    //function sub_00477768:?;//00477768
    //function sub_0047778C:?;//0047778C
    procedure WMPaint(Message:TWMPaint);//004777A4
    //procedure WMNCCalcSize(?:?);//00477A28
    //procedure sub_00477A38(?:?);//00477A38
    //function sub_00477A68:?;//00477A68
    //procedure sub_00477AB8(?:?);//00477AB8
    constructor sub_00477B24;//00477B24
    //procedure sub_00477B8C(?:?; ?:?);//00477B8C
    procedure sub_00477BE8;//00477BE8
    //function sub_00477C00:?;//00477C00
    //procedure sub_00477C48(?:?);//00477C48
    //procedure sub_00477C58(?:?);//00477C58
    //procedure sub_00477CE8(?:?);//00477CE8
    //procedure WMEraseBkgnd(?:?);//00477D44
    //procedure sub_00477D7C(?:?);//00477D7C
    constructor Create;//00477DE4
    procedure sub_00477E60;//00477E60
    procedure sub_00477E98;//00477E98
    //procedure sub_00477EAC(?:?);//00477EAC
    //procedure sub_00477F68(?:?);//00477F68
    procedure CreateWnd;//00477FB4
    //procedure sub_00477FD8(?:?);//00477FD8
    //procedure CMDialogKey(?:?);//00478000
    //procedure CMDialogChar(?:?);//0047808C
    //procedure CMFocusChenged(?:?);//00478120
    //procedure WMEraseBkgnd(?:?);//00478190
    //procedure sub_004781C8(?:?);//004781C8
    constructor Create;//00478224
    procedure sub_004782AC;//004782AC
    procedure sub_004782EC;//004782EC
    procedure sub_00478348;//00478348
    function GetChecked:Boolean;//00478364
    procedure SetChecked(Value:Boolean);//004783B8
    //procedure sub_00478454(?:?);//00478454
    procedure CreateWnd;//004784C4
    //procedure WMSize(?:?);//004784F8
    //procedure CMCtl3DChanged(?:?);//0047851C
    //procedure CMDialogChar(?:?);//00478534
    //procedure sub_004785E4(?:?);//004785E4
    constructor sub_0047860C;//0047860C
    function GetChecked:Boolean;//00478688
    procedure sub_004786A4;//004786A4
    //procedure sub_00478718(?:?);//00478718
    procedure SetChecked(Value:Boolean);//004787E4
    //procedure sub_00478878(?:?);//00478878
    procedure CreateWnd;//004788E4
    //procedure CMCtl3DChanged(?:?);//00478918
    //procedure CMDialogChar(?:?);//00478930
    //procedure sub_004789C4(?:?);//004789C4
    //function sub_00478A08:?;//00478A08
    //procedure sub_00478A38(?:?; ?:?);//00478A38
    //function sub_00478B2C(?:?):?;//00478B2C
    //procedure sub_00478BCC(?:?; ?:?);//00478BCC
    //procedure sub_00478C60(?:?; ?:?);//00478C60
    //function sub_00478CA4(?:?):?;//00478CA4
    //procedure sub_00478D4C(?:?; ?:?);//00478D4C
    //procedure sub_00478DEC(?:?);//00478DEC
    //procedure sub_00478E10(?:?; ?:?);//00478E10
    procedure Clear;//00478F7C
    //procedure sub_00478F98(?:?);//00478F98
    //function sub_00478FD8(?:?):?;//00478FD8
    //procedure sub_00479034(?:?; ?:?);//00479034
    constructor Create;//0047914C
    destructor Destroy;//00479270
    //procedure sub_004792CC(?:?; ?:?);//004792CC
    //procedure sub_00479358(?:?);//00479358
    //procedure sub_00479388(?:?; ?:TCheckListBoxDataWrapper);//00479388
    //procedure sub_004793B8(?:?);//004793B8
    //procedure sub_004793E0(?:?; ?:?);//004793E0
    //procedure sub_00479408(?:?);//00479408
    procedure sub_00479434;//00479434
    procedure Clear;//00479464
    procedure sub_0047947C;//0047947C
    //procedure sub_004794D8(?:?);//004794D8
    procedure sub_00479628;//00479628
    procedure sub_004796AC(?:TCustomListBox);//004796AC
    //function sub_00479780:?;//00479780
    //function sub_004797D4:?;//004797D4
    //function sub_00479814:?;//00479814
    //procedure sub_00479840(?:?);//00479840
    procedure SetMultiSelect(Value:Boolean);//004799DC
    //function sub_00479A10(?:TCustomListBox; ?:?):?;//00479A10
    //procedure sub_00479A78(?:TCustomListBox; ?:?; ?:?);//00479A78
    //function sub_00479BE0(?:TCustomListBox):?;//00479BE0
    //procedure sub_00479C0C(?:?);//00479C0C
    //procedure sub_00479CE8(?:?);//00479CE8
    procedure sub_00479DE4(?:TCustomListBox; ?:Integer);//00479DE4
    //function sub_00479E78(?:TCustomListBox; ?:?; ?:?):?;//00479E78
    //procedure sub_00479F18(?:TCheckListBox; ?:?; ?:?);//00479F18
    //procedure sub_00479FA8(?:?);//00479FA8
    procedure CreateWnd;//0047A100
    procedure sub_0047A220;//0047A220
    //procedure sub_0047A2C0(?:?);//0047A2C0
    //procedure WMLButtonDown(?:?);//0047A344
    //procedure sub_0047A400(?:?);//0047A400
    procedure PaintListBox;//0047A448
    procedure WMPaint(var Message:TWMPaint);//0047A5F0
    //procedure WMSize(?:?);//0047A620
    procedure sub_0047A644;//0047A644
    //procedure sub_0047A6A4(?:?; ?:?; ?:?);//0047A6A4
    //procedure sub_0047A7E0(?:?; ?:?);//0047A7E0
    //procedure sub_0047A81C(?:?);//0047A81C
    //procedure sub_0047A920(?:?);//0047A920
    //procedure CMCtl3DChanged(?:?);//0047A970
    procedure sub_0047A9AC;//0047A9AC
    //procedure sub_0047A9F8(?:?);//0047A9F8
    //procedure sub_0047AAE4(?:?);//0047AAE4
    procedure sub_0047ACC4(?:TCustomListBox; ?:Integer);//0047ACC4
    //procedure sub_0047ADBC(?:TCustomListBox; ?:?; ?:AnsiString);//0047ADBC
    //function sub_0047ADF8(?:TCustomListBox; ?:?):?;//0047ADF8
    //function sub_0047AE34(?:TCustomListBox; ?:?):?;//0047AE34
    constructor sub_0047AEDC;//0047AEDC
    //procedure sub_0047AF6C(?:?);//0047AF6C
    //procedure CMDialogChar(?:?);//0047B00C
    //procedure CMFontChanged(?:?);//0047B0C4
    //procedure CMTextChanged(?:?);//0047B0E8
    procedure sub_0047B114;//0047B114
    procedure sub_0047B130(?:TCustomStaticText);//0047B130
    //procedure sub_0047B238(?:?; ?:?);//0047B238
    procedure SetAutoSize(Value:Boolean);//0047B2AC
    //procedure sub_0047B37C(?:?);//0047B37C

implementation

//00472BF8
{*function sub_00472BF8(?:TCustomCombo):?;
begin
 00472BF8    push        ebp
 00472BF9    mov         ebp,esp
 00472BFB    add         esp,0FFFFFFF8
 00472BFE    mov         dword ptr [ebp-4],eax
 00472C01    mov         byte ptr [ebp-5],1
 00472C05    cmp         dword ptr [ebp-4],0
>00472C09    je          00472C23
 00472C0B    mov         eax,dword ptr [ebp-4]
 00472C0E    cmp         dword ptr [eax+7C],0
>00472C12    jne         00472C27
 00472C14    mov         eax,dword ptr [ebp-4]
 00472C17    mov         eax,dword ptr [eax+30]
 00472C1A    mov         dword ptr [ebp-4],eax
 00472C1D    cmp         dword ptr [ebp-4],0
>00472C21    jne         00472C0B
 00472C23    mov         byte ptr [ebp-5],0
 00472C27    mov         al,byte ptr [ebp-5]
 00472C2A    pop         ecx
 00472C2B    pop         ecx
 00472C2C    pop         ebp
 00472C2D    ret
end;*}

//00472F48
constructor sub_00472F48;
begin
{*
 00472F48    push        ebp
 00472F49    mov         ebp,esp
 00472F4B    add         esp,0FFFFFFF4
 00472F4E    test        dl,dl
>00472F50    je          00472F5A
 00472F52    add         esp,0FFFFFFF0
 00472F55    call        @ClassCreate
 00472F5A    mov         dword ptr [ebp-0C],ecx
 00472F5D    mov         byte ptr [ebp-5],dl
 00472F60    mov         dword ptr [ebp-4],eax
 00472F63    mov         ecx,dword ptr [ebp-0C]
 00472F66    xor         edx,edx
 00472F68    mov         eax,dword ptr [ebp-4]
 00472F6B    call        0048E4F0
 00472F70    mov         eax,dword ptr [ebp-4]
 00472F73    mov         edx,dword ptr ds:[472FB8];0x408AB gvar_00472FB8
 00472F79    mov         dword ptr [eax+50],edx;TCustomGroupBox.FControlStyle:TControlStyle
 00472F7C    mov         edx,0B9
 00472F81    mov         eax,dword ptr [ebp-4]
 00472F84    call        TSplitter.SetWidth
 00472F89    mov         edx,69
 00472F8E    mov         eax,dword ptr [ebp-4]
 00472F91    call        TToolButton.SetHeight
 00472F96    mov         eax,dword ptr [ebp-4]
 00472F99    cmp         byte ptr [ebp-5],0
>00472F9D    je          00472FAE
 00472F9F    call        @AfterConstruction
 00472FA4    pop         dword ptr fs:[0]
 00472FAB    add         esp,0C
 00472FAE    mov         eax,dword ptr [ebp-4]
 00472FB1    mov         esp,ebp
 00472FB3    pop         ebp
 00472FB4    ret
*}
end;

//00472FBC
{*procedure sub_00472FBC(?:?);
begin
 00472FBC    push        ebp
 00472FBD    mov         ebp,esp
 00472FBF    add         esp,0FFFFFFF8
 00472FC2    mov         dword ptr [ebp-8],edx
 00472FC5    mov         dword ptr [ebp-4],eax
 00472FC8    mov         edx,dword ptr [ebp-8]
 00472FCB    mov         eax,dword ptr [ebp-4]
 00472FCE    call        00486FB0
 00472FD3    mov         eax,dword ptr [ebp-4]
 00472FD6    mov         edx,dword ptr [eax+68];TCustomGroupBox.FFont:TFont
 00472FD9    mov         eax,dword ptr [ebp-4]
 00472FDC    mov         eax,dword ptr [eax+208];TCustomGroupBox....................................................
 00472FE2    call        TCanvas.SetFont
 00472FE7    mov         edx,473034;'0'
 00472FEC    mov         eax,dword ptr [ebp-4]
 00472FEF    mov         eax,dword ptr [eax+208];TCustomGroupBox....................................................
 00472FF5    call        0042F464
 00472FFA    mov         edx,dword ptr [ebp-8]
 00472FFD    add         dword ptr [edx+4],eax
 00473000    push        0FF
 00473002    push        0FF
 00473004    mov         eax,dword ptr [ebp-8]
 00473007    push        eax
 00473008    call        user32.InflateRect
 0047300D    mov         eax,dword ptr [ebp-4]
 00473010    cmp         byte ptr [eax+1A5],0;TCustomGroupBox.FCtl3D:Boolean
>00473017    je          00473026
 00473019    push        0FF
 0047301B    push        0FF
 0047301D    mov         eax,dword ptr [ebp-8]
 00473020    push        eax
 00473021    call        user32.InflateRect
 00473026    pop         ecx
 00473027    pop         ecx
 00473028    pop         ebp
 00473029    ret
end;*}

//00473038
{*procedure sub_00473038(?:?);
begin
 00473038    push        ebp
 00473039    mov         ebp,esp
 0047303B    add         esp,0FFFFFFF8
 0047303E    mov         dword ptr [ebp-8],edx
 00473041    mov         dword ptr [ebp-4],eax
 00473044    mov         edx,dword ptr [ebp-8]
 00473047    mov         eax,dword ptr [ebp-4]
 0047304A    call        00488034
 0047304F    mov         eax,dword ptr [ebp-8]
 00473052    and         dword ptr [eax+24],0FFFFFFFC
 00473056    pop         ecx
 00473057    pop         ecx
 00473058    pop         ebp
 00473059    ret
end;*}

//0047305C
procedure sub_0047305C;
begin
{*
 0047305C    push        ebp
 0047305D    mov         ebp,esp
 0047305F    mov         ecx,13
 00473064    push        0
 00473066    push        0
 00473068    dec         ecx
>00473069    jne         00473064
 0047306B    push        esi
 0047306C    push        edi
 0047306D    mov         dword ptr [ebp-4],eax
 00473070    xor         eax,eax
 00473072    push        ebp
 00473073    push        473454
 00473078    push        dword ptr fs:[eax]
 0047307B    mov         dword ptr fs:[eax],esp
 0047307E    mov         eax,dword ptr [ebp-4]
 00473081    mov         eax,dword ptr [eax+208];TCustomGroupBox....................................................
 00473087    mov         dword ptr [ebp-1C],eax
 0047308A    mov         eax,dword ptr [ebp-4]
 0047308D    mov         edx,dword ptr [eax+68];TCustomGroupBox.FFont:TFont
 00473090    mov         eax,dword ptr [ebp-1C]
 00473093    call        TCanvas.SetFont
 00473098    call        0046BFC0
 0047309D    call        0046C0EC
 004730A2    test        al,al
>004730A4    je          00473236
 004730AA    lea         edx,[ebp-5C]
 004730AD    mov         eax,dword ptr [ebp-4]
 004730B0    call        TPanel.GetCaption
 004730B5    cmp         dword ptr [ebp-5C],0
>004730B9    je          00473146
 004730BF    lea         eax,[ebp-14]
 004730C2    push        eax
 004730C3    lea         edx,[ebp-60]
 004730C6    mov         eax,dword ptr [ebp-4]
 004730C9    call        TPanel.GetCaption
 004730CE    mov         eax,dword ptr [ebp-60]
 004730D1    call        @LStrLen
 004730D6    push        eax
 004730D7    lea         edx,[ebp-64]
 004730DA    mov         eax,dword ptr [ebp-4]
 004730DD    call        TPanel.GetCaption
 004730E2    mov         eax,dword ptr [ebp-64]
 004730E5    call        @LStrToPChar
 004730EA    push        eax
 004730EB    mov         eax,dword ptr [ebp-1C]
 004730EE    call        0042F6A0
 004730F3    push        eax
 004730F4    call        gdi32.GetTextExtentPoint32A
 004730F9    mov         eax,dword ptr [ebp-10]
 004730FC    push        eax
 004730FD    lea         eax,[ebp-3C]
 00473100    push        eax
 00473101    mov         ecx,dword ptr [ebp-14]
 00473104    xor         edx,edx
 00473106    xor         eax,eax
 00473108    call        0041E714
 0047310D    mov         eax,dword ptr [ebp-4]
 00473110    mov         si,0FFC8
 00473114    call        @CallDynaInst;TControl.sub_0048415C
 00473119    test        al,al
>0047311B    jne         0047312C
 0047311D    push        0
 0047311F    push        8
 00473121    lea         eax,[ebp-3C]
 00473124    push        eax
 00473125    call        user32.OffsetRect
>0047312A    jmp         00473157
 0047312C    push        0
 0047312E    mov         eax,dword ptr [ebp-4]
 00473131    mov         eax,dword ptr [eax+48];TCustomGroupBox.Width:Integer
 00473134    sub         eax,8
 00473137    sub         eax,dword ptr [ebp-34]
 0047313A    push        eax
 0047313B    lea         eax,[ebp-3C]
 0047313E    push        eax
 0047313F    call        user32.OffsetRect
>00473144    jmp         00473157
 00473146    push        0
 00473148    lea         eax,[ebp-3C]
 0047314B    push        eax
 0047314C    xor         ecx,ecx
 0047314E    xor         edx,edx
 00473150    xor         eax,eax
 00473152    call        0041E714
 00473157    lea         edx,[ebp-4C]
 0047315A    mov         eax,dword ptr [ebp-4]
 0047315D    mov         ecx,dword ptr [eax]
 0047315F    call        dword ptr [ecx+44];TCustomGroupBox.sub_0048C23C
 00473162    mov         eax,dword ptr [ebp-30]
 00473165    sub         eax,dword ptr [ebp-38]
 00473168    sar         eax,1
>0047316A    jns         0047316F
 0047316C    adc         eax,0
 0047316F    mov         dword ptr [ebp-48],eax
 00473172    mov         eax,dword ptr [ebp-30]
 00473175    push        eax
 00473176    mov         eax,dword ptr [ebp-34]
 00473179    push        eax
 0047317A    mov         eax,dword ptr [ebp-38]
 0047317D    push        eax
 0047317E    mov         eax,dword ptr [ebp-3C]
 00473181    push        eax
 00473182    mov         eax,dword ptr [ebp-1C]
 00473185    call        0042F6A0
 0047318A    push        eax
 0047318B    call        gdi32.ExcludeClipRect
 00473190    mov         eax,dword ptr [ebp-4]
 00473193    mov         edx,dword ptr [eax]
 00473195    call        dword ptr [edx+50];TImage.GetEnabled
 00473198    test        al,al
>0047319A    je          004731A2
 0047319C    mov         byte ptr [ebp-15],1B
>004731A0    jmp         004731A6
 004731A2    mov         byte ptr [ebp-15],1C
 004731A6    call        0046BFC0
 004731AB    lea         ecx,[ebp-58]
 004731AE    mov         dl,byte ptr [ebp-15]
 004731B1    call        0046C3C8
 004731B6    lea         eax,[ebp-4C]
 004731B9    push        eax
 004731BA    push        0
 004731BC    mov         eax,dword ptr [ebp-1C]
 004731BF    call        0042F6A0
 004731C4    push        eax
 004731C5    call        0046BFC0
 004731CA    lea         ecx,[ebp-58]
 004731CD    pop         edx
 004731CE    call        0046C254
 004731D3    push        0
 004731D5    mov         eax,dword ptr [ebp-1C]
 004731D8    call        0042F6A0
 004731DD    push        eax
 004731DE    call        gdi32.SelectClipRgn
 004731E3    lea         edx,[ebp-68]
 004731E6    mov         eax,dword ptr [ebp-4]
 004731E9    call        TPanel.GetCaption
 004731EE    cmp         dword ptr [ebp-68],0
>004731F2    je          00473414
 004731F8    lea         edx,[ebp-70]
 004731FB    mov         eax,dword ptr [ebp-4]
 004731FE    call        TPanel.GetCaption
 00473203    mov         edx,dword ptr [ebp-70]
 00473206    lea         eax,[ebp-6C]
 00473209    call        @WStrFromLStr
 0047320E    mov         eax,dword ptr [ebp-6C]
 00473211    push        eax
 00473212    lea         eax,[ebp-3C]
 00473215    push        eax
 00473216    push        0
 00473218    push        0
 0047321A    mov         eax,dword ptr [ebp-1C]
 0047321D    call        0042F6A0
 00473222    push        eax
 00473223    call        0046BFC0
 00473228    lea         ecx,[ebp-58]
 0047322B    pop         edx
 0047322C    call        0046C360
>00473231    jmp         00473414
 00473236    mov         edx,47346C;'0'
 0047323B    mov         eax,dword ptr [ebp-1C]
 0047323E    call        0042F464
 00473243    mov         dword ptr [ebp-8],eax
 00473246    mov         eax,dword ptr [ebp-4]
 00473249    mov         eax,dword ptr [eax+4C];TCustomGroupBox.Height:Integer
 0047324C    push        eax
 0047324D    lea         eax,[ebp-2C]
 00473250    push        eax
 00473251    mov         edx,dword ptr [ebp-8]
 00473254    sar         edx,1
>00473256    jns         0047325B
 00473258    adc         edx,0
 0047325B    dec         edx
 0047325C    mov         eax,dword ptr [ebp-4]
 0047325F    mov         ecx,dword ptr [eax+48];TCustomGroupBox.Width:Integer
 00473262    xor         eax,eax
 00473264    call        0041E714
 00473269    mov         eax,dword ptr [ebp-4]
 0047326C    cmp         byte ptr [eax+1A5],0;TCustomGroupBox.FCtl3D:Boolean
>00473273    je          004732B5
 00473275    inc         dword ptr [ebp-2C]
 00473278    inc         dword ptr [ebp-28]
 0047327B    mov         edx,0FF000014
 00473280    mov         eax,dword ptr [ebp-1C]
 00473283    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 00473286    call        TBrush.SetColor
 0047328B    lea         edx,[ebp-2C]
 0047328E    mov         eax,dword ptr [ebp-1C]
 00473291    call        0042F080
 00473296    push        0FF
 00473298    push        0FF
 0047329A    lea         eax,[ebp-2C]
 0047329D    push        eax
 0047329E    call        user32.OffsetRect
 004732A3    mov         edx,0FF000010
 004732A8    mov         eax,dword ptr [ebp-1C]
 004732AB    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 004732AE    call        TBrush.SetColor
>004732B3    jmp         004732C5
 004732B5    mov         edx,0FF000006
 004732BA    mov         eax,dword ptr [ebp-1C]
 004732BD    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 004732C0    call        TBrush.SetColor
 004732C5    lea         edx,[ebp-2C]
 004732C8    mov         eax,dword ptr [ebp-1C]
 004732CB    call        0042F080
 004732D0    lea         edx,[ebp-74]
 004732D3    mov         eax,dword ptr [ebp-4]
 004732D6    call        TPanel.GetCaption
 004732DB    cmp         dword ptr [ebp-74],0
>004732DF    je          00473414
 004732E5    mov         eax,dword ptr [ebp-4]
 004732E8    mov         si,0FFC8
 004732EC    call        @CallDynaInst;TControl.sub_0048415C
 004732F1    test        al,al
>004732F3    jne         0047330D
 004732F5    mov         eax,dword ptr [ebp-8]
 004732F8    push        eax
 004732F9    lea         eax,[ebp-2C]
 004732FC    push        eax
 004732FD    xor         ecx,ecx
 004732FF    xor         edx,edx
 00473301    mov         eax,8
 00473306    call        0041E714
>0047330B    jmp         0047335A
 0047330D    mov         eax,dword ptr [ebp-8]
 00473310    push        eax
 00473311    lea         eax,[ebp-84]
 00473317    push        eax
 00473318    lea         edx,[ebp-88]
 0047331E    mov         eax,dword ptr [ebp-4]
 00473321    call        TPanel.GetCaption
 00473326    mov         edx,dword ptr [ebp-88]
 0047332C    mov         eax,dword ptr [ebp-4]
 0047332F    mov         eax,dword ptr [eax+208];TCustomGroupBox....................................................
 00473335    call        0042F43C
 0047333A    push        eax
 0047333B    mov         eax,dword ptr [ebp-24]
 0047333E    pop         edx
 0047333F    sub         eax,edx
 00473341    sub         eax,8
 00473344    xor         ecx,ecx
 00473346    xor         edx,edx
 00473348    call        0041E714
 0047334D    lea         esi,[ebp-84]
 00473353    lea         edi,[ebp-2C]
 00473356    movs        dword ptr [edi],dword ptr [esi]
 00473357    movs        dword ptr [edi],dword ptr [esi]
 00473358    movs        dword ptr [edi],dword ptr [esi]
 00473359    movs        dword ptr [edi],dword ptr [esi]
 0047335A    mov         edx,20
 0047335F    mov         eax,dword ptr [ebp-4]
 00473362    call        00486778
 00473367    mov         dword ptr [ebp-0C],eax
 0047336A    mov         eax,dword ptr [ebp-0C]
 0047336D    or          eax,400
 00473372    push        eax
 00473373    lea         eax,[ebp-2C]
 00473376    push        eax
 00473377    lea         edx,[ebp-8C]
 0047337D    mov         eax,dword ptr [ebp-4]
 00473380    call        TPanel.GetCaption
 00473385    mov         eax,dword ptr [ebp-8C]
 0047338B    call        @LStrLen
 00473390    push        eax
 00473391    lea         edx,[ebp-90]
 00473397    mov         eax,dword ptr [ebp-4]
 0047339A    call        TPanel.GetCaption
 0047339F    mov         eax,dword ptr [ebp-90]
 004733A5    call        @LStrToPChar
 004733AA    push        eax
 004733AB    mov         eax,dword ptr [ebp-1C]
 004733AE    call        0042F6A0
 004733B3    push        eax
 004733B4    call        user32.DrawTextA
 004733B9    mov         eax,dword ptr [ebp-4]
 004733BC    mov         edx,dword ptr [eax+70];TCustomGroupBox.FColor:TColor
 004733BF    mov         eax,dword ptr [ebp-1C]
 004733C2    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 004733C5    call        TBrush.SetColor
 004733CA    mov         eax,dword ptr [ebp-0C]
 004733CD    push        eax
 004733CE    lea         eax,[ebp-2C]
 004733D1    push        eax
 004733D2    lea         edx,[ebp-94]
 004733D8    mov         eax,dword ptr [ebp-4]
 004733DB    call        TPanel.GetCaption
 004733E0    mov         eax,dword ptr [ebp-94]
 004733E6    call        @LStrLen
 004733EB    push        eax
 004733EC    lea         edx,[ebp-98]
 004733F2    mov         eax,dword ptr [ebp-4]
 004733F5    call        TPanel.GetCaption
 004733FA    mov         eax,dword ptr [ebp-98]
 00473400    call        @LStrToPChar
 00473405    push        eax
 00473406    mov         eax,dword ptr [ebp-1C]
 00473409    call        0042F6A0
 0047340E    push        eax
 0047340F    call        user32.DrawTextA
 00473414    xor         eax,eax
 00473416    pop         edx
 00473417    pop         ecx
 00473418    pop         ecx
 00473419    mov         dword ptr fs:[eax],edx
 0047341C    push        47345B
 00473421    lea         eax,[ebp-98]
 00473427    mov         edx,5
 0047342C    call        @LStrArrayClr
 00473431    lea         eax,[ebp-74]
 00473434    mov         edx,2
 00473439    call        @LStrArrayClr
 0047343E    lea         eax,[ebp-6C]
 00473441    call        @WStrClr
 00473446    lea         eax,[ebp-68]
 00473449    mov         edx,4
 0047344E    call        @LStrArrayClr
 00473453    ret
>00473454    jmp         @HandleFinally
>00473459    jmp         00473421
 0047345B    pop         edi
 0047345C    pop         esi
 0047345D    mov         esp,ebp
 0047345F    pop         ebp
 00473460    ret
*}
end;

//00473470
{*procedure TCustomGroupBox.CMDialogChar(?:?);
begin
 00473470    push        ebp
 00473471    mov         ebp,esp
 00473473    add         esp,0FFFFFFF4
 00473476    push        esi
 00473477    xor         ecx,ecx
 00473479    mov         dword ptr [ebp-0C],ecx
 0047347C    mov         dword ptr [ebp-8],edx
 0047347F    mov         dword ptr [ebp-4],eax
 00473482    xor         eax,eax
 00473484    push        ebp
 00473485    push        4734F3
 0047348A    push        dword ptr fs:[eax]
 0047348D    mov         dword ptr fs:[eax],esp
 00473490    lea         edx,[ebp-0C]
 00473493    mov         eax,dword ptr [ebp-4]
 00473496    call        TPanel.GetCaption
 0047349B    mov         edx,dword ptr [ebp-0C]
 0047349E    mov         eax,dword ptr [ebp-8]
 004734A1    mov         ax,word ptr [eax+4]
 004734A5    call        004A06C8
 004734AA    test        al,al
>004734AC    je          004734D2
 004734AE    mov         eax,dword ptr [ebp-4]
 004734B1    mov         si,0FFB8
 004734B5    call        @CallDynaInst;TWinControl.sub_0048BFC8
 004734BA    test        al,al
>004734BC    je          004734D2
 004734BE    mov         eax,dword ptr [ebp-4]
 004734C1    call        0048C894
 004734C6    mov         eax,dword ptr [ebp-8]
 004734C9    mov         dword ptr [eax+0C],1
>004734D0    jmp         004734DD
 004734D2    mov         edx,dword ptr [ebp-8]
 004734D5    mov         eax,dword ptr [ebp-4]
 004734D8    call        TWinControl.CMDialogChar
 004734DD    xor         eax,eax
 004734DF    pop         edx
 004734E0    pop         ecx
 004734E1    pop         ecx
 004734E2    mov         dword ptr fs:[eax],edx
 004734E5    push        4734FA
 004734EA    lea         eax,[ebp-0C]
 004734ED    call        @LStrClr
 004734F2    ret
>004734F3    jmp         @HandleFinally
>004734F8    jmp         004734EA
 004734FA    pop         esi
 004734FB    mov         esp,ebp
 004734FD    pop         ebp
 004734FE    ret
end;*}

//00473500
{*procedure TCustomGroupBox.CMTextChanged(?:?);
begin
 00473500    push        ebp
 00473501    mov         ebp,esp
 00473503    add         esp,0FFFFFFF8
 00473506    mov         dword ptr [ebp-8],edx
 00473509    mov         dword ptr [ebp-4],eax
 0047350C    mov         eax,dword ptr [ebp-4]
 0047350F    mov         edx,dword ptr [eax]
 00473511    call        dword ptr [edx+7C];TCustomGroupBox.sub_0048BE68
 00473514    mov         eax,dword ptr [ebp-4]
 00473517    call        004878BC
 0047351C    pop         ecx
 0047351D    pop         ecx
 0047351E    pop         ebp
 0047351F    ret
end;*}

//00473520
{*procedure TCustomGroupBox.CMCtl3DChanged(?:?);
begin
 00473520    push        ebp
 00473521    mov         ebp,esp
 00473523    add         esp,0FFFFFFF8
 00473526    mov         dword ptr [ebp-8],edx
 00473529    mov         dword ptr [ebp-4],eax
 0047352C    mov         edx,dword ptr [ebp-8]
 0047352F    mov         eax,dword ptr [ebp-4]
 00473532    call        TWinControl.CMCtl3DChanged
 00473537    mov         eax,dword ptr [ebp-4]
 0047353A    mov         edx,dword ptr [eax]
 0047353C    call        dword ptr [edx+7C];TCustomGroupBox.sub_0048BE68
 0047353F    mov         eax,dword ptr [ebp-4]
 00473542    call        004878BC
 00473547    pop         ecx
 00473548    pop         ecx
 00473549    pop         ebp
 0047354A    ret
end;*}

//0047354C
{*procedure TCustomGroupBox.WMSize(?:?);
begin
 0047354C    push        ebp
 0047354D    mov         ebp,esp
 0047354F    add         esp,0FFFFFFF8
 00473552    mov         dword ptr [ebp-8],edx
 00473555    mov         dword ptr [ebp-4],eax
 00473558    mov         edx,dword ptr [ebp-8]
 0047355B    mov         eax,dword ptr [ebp-4]
 0047355E    call        TWinControl.WMSize
 00473563    mov         eax,dword ptr [ebp-4]
 00473566    mov         edx,dword ptr [eax]
 00473568    call        dword ptr [edx+7C];TCustomGroupBox.sub_0048BE68
 0047356B    pop         ecx
 0047356C    pop         ecx
 0047356D    pop         ebp
 0047356E    ret
end;*}

//00473570
constructor TLabel.Create;
begin
{*
 00473570    push        ebp
 00473571    mov         ebp,esp
 00473573    add         esp,0FFFFFFF4
 00473576    test        dl,dl
>00473578    je          00473582
 0047357A    add         esp,0FFFFFFF0
 0047357D    call        @ClassCreate
 00473582    mov         dword ptr [ebp-0C],ecx
 00473585    mov         byte ptr [ebp-5],dl
 00473588    mov         dword ptr [ebp-4],eax
 0047358B    mov         ecx,dword ptr [ebp-0C]
 0047358E    xor         edx,edx
 00473590    mov         eax,dword ptr [ebp-4]
 00473593    call        0048D848
 00473598    mov         eax,dword ptr [ebp-4]
 0047359B    mov         eax,dword ptr [eax+50];TCustomLabel.FControlStyle:TControlStyle
 0047359E    or          eax,dword ptr ds:[473630];0x800 gvar_00473630
 004735A4    mov         edx,dword ptr [ebp-4]
 004735A7    mov         dword ptr [edx+50],eax;TCustomLabel.FControlStyle:TControlStyle
 004735AA    mov         edx,41
 004735AF    mov         eax,dword ptr [ebp-4]
 004735B2    call        TSplitter.SetWidth
 004735B7    mov         edx,11
 004735BC    mov         eax,dword ptr [ebp-4]
 004735BF    call        TToolButton.SetHeight
 004735C4    mov         eax,dword ptr [ebp-4]
 004735C7    mov         byte ptr [eax+16D],1;TCustomLabel.FAutoSize:Boolean
 004735CE    mov         eax,dword ptr [ebp-4]
 004735D1    mov         byte ptr [eax+170],1;TCustomLabel.FShowAccelChar:Boolean
 004735D8    call        0046BFC0
 004735DD    call        0046C0EC
 004735E2    test        al,al
>004735E4    je          004735FC
 004735E6    mov         eax,dword ptr [ebp-4]
 004735E9    mov         edx,dword ptr ds:[473634];0x40 gvar_00473634
 004735EF    not         edx
 004735F1    and         edx,dword ptr [eax+50];TCustomLabel.FControlStyle:TControlStyle
 004735F4    mov         eax,dword ptr [ebp-4]
 004735F7    mov         dword ptr [eax+50],edx;TCustomLabel.FControlStyle:TControlStyle
>004735FA    jmp         0047360E
 004735FC    mov         eax,dword ptr [ebp-4]
 004735FF    mov         eax,dword ptr [eax+50];TCustomLabel.FControlStyle:TControlStyle
 00473602    or          eax,dword ptr ds:[473634];0x40 gvar_00473634
 00473608    mov         edx,dword ptr [ebp-4]
 0047360B    mov         dword ptr [edx+50],eax;TCustomLabel.FControlStyle:TControlStyle
 0047360E    mov         eax,dword ptr [ebp-4]
 00473611    cmp         byte ptr [ebp-5],0
>00473615    je          00473626
 00473617    call        @AfterConstruction
 0047361C    pop         dword ptr fs:[0]
 00473623    add         esp,0C
 00473626    mov         eax,dword ptr [ebp-4]
 00473629    mov         esp,ebp
 0047362B    pop         ebp
 0047362C    ret
*}
end;

//00473638
{*procedure sub_00473638(?:?);
begin
 00473638    push        ebp
 00473639    mov         ebp,esp
 0047363B    add         esp,0FFFFFFF8
 0047363E    mov         dword ptr [ebp-8],edx
 00473641    mov         dword ptr [ebp-4],eax
 00473644    mov         edx,dword ptr [ebp-8]
 00473647    mov         eax,dword ptr [ebp-4]
 0047364A    call        TPanel.GetCaption
 0047364F    pop         ecx
 00473650    pop         ecx
 00473651    pop         ebp
 00473652    ret
end;*}

//00473654
{*procedure TCustomLabel.sub_00473654(?:?; ?:?);
begin
 00473654    push        ebp
 00473655    mov         ebp,esp
 00473657    add         esp,0FFFFFFF0
 0047365A    push        ebx
 0047365B    xor         ebx,ebx
 0047365D    mov         dword ptr [ebp-10],ebx
 00473660    mov         dword ptr [ebp-0C],ecx
 00473663    mov         dword ptr [ebp-8],edx
 00473666    mov         dword ptr [ebp-4],eax
 00473669    xor         eax,eax
 0047366B    push        ebp
 0047366C    push        4737E8
 00473671    push        dword ptr fs:[eax]
 00473674    mov         dword ptr fs:[eax],esp
 00473677    lea         edx,[ebp-10]
 0047367A    mov         eax,dword ptr [ebp-4]
 0047367D    mov         ecx,dword ptr [eax]
 0047367F    call        dword ptr [ecx+90];TCustomLabel.sub_00473638
 00473685    test        byte ptr [ebp-0B],4
>00473689    je          004736BB
 0047368B    cmp         dword ptr [ebp-10],0
>0047368F    je          004736AE
 00473691    mov         eax,dword ptr [ebp-4]
 00473694    cmp         byte ptr [eax+170],0;TCustomLabel.FShowAccelChar:Boolean
>0047369B    je          004736BB
 0047369D    mov         eax,dword ptr [ebp-10]
 004736A0    cmp         byte ptr [eax],26
>004736A3    jne         004736BB
 004736A5    mov         eax,dword ptr [ebp-10]
 004736A8    cmp         byte ptr [eax+1],0
>004736AC    jne         004736BB
 004736AE    lea         eax,[ebp-10]
 004736B1    mov         edx,4737FC;' '
 004736B6    call        @LStrCat
 004736BB    mov         eax,dword ptr [ebp-4]
 004736BE    cmp         byte ptr [eax+170],0;TCustomLabel.FShowAccelChar:Boolean
>004736C5    jne         004736CE
 004736C7    or          dword ptr [ebp-0C],800
 004736CE    mov         edx,dword ptr [ebp-0C]
 004736D1    mov         eax,dword ptr [ebp-4]
 004736D4    call        00486778
 004736D9    mov         dword ptr [ebp-0C],eax
 004736DC    mov         eax,dword ptr [ebp-4]
 004736DF    mov         edx,dword ptr [eax+68];TCustomLabel.FFont:TFont
 004736E2    mov         eax,dword ptr [ebp-4]
 004736E5    mov         eax,dword ptr [eax+160];TCustomLabel.......................................................
 004736EB    call        TCanvas.SetFont
 004736F0    mov         eax,dword ptr [ebp-4]
 004736F3    mov         edx,dword ptr [eax]
 004736F5    call        dword ptr [edx+50];TImage.GetEnabled
 004736F8    test        al,al
>004736FA    jne         004737A4
 00473700    push        1
 00473702    push        1
 00473704    mov         eax,dword ptr [ebp-8]
 00473707    push        eax
 00473708    call        user32.OffsetRect
 0047370D    mov         eax,dword ptr [ebp-4]
 00473710    mov         eax,dword ptr [eax+160];TCustomLabel.......................................................
 00473716    mov         eax,dword ptr [eax+0C];TCanvas.Font:TFont
 00473719    mov         edx,0FF000014
 0047371E    call        TFont.SetColor
 00473723    mov         eax,dword ptr [ebp-0C]
 00473726    push        eax
 00473727    mov         eax,dword ptr [ebp-8]
 0047372A    push        eax
 0047372B    mov         eax,dword ptr [ebp-10]
 0047372E    call        @LStrLen
 00473733    push        eax
 00473734    mov         eax,dword ptr [ebp-10]
 00473737    call        @LStrToPChar
 0047373C    push        eax
 0047373D    mov         eax,dword ptr [ebp-4]
 00473740    mov         eax,dword ptr [eax+160];TCustomLabel.......................................................
 00473746    call        0042F6A0
 0047374B    push        eax
 0047374C    call        user32.DrawTextA
 00473751    push        0FF
 00473753    push        0FF
 00473755    mov         eax,dword ptr [ebp-8]
 00473758    push        eax
 00473759    call        user32.OffsetRect
 0047375E    mov         eax,dword ptr [ebp-4]
 00473761    mov         eax,dword ptr [eax+160];TCustomLabel.......................................................
 00473767    mov         eax,dword ptr [eax+0C];TCanvas.Font:TFont
 0047376A    mov         edx,0FF000010
 0047376F    call        TFont.SetColor
 00473774    mov         eax,dword ptr [ebp-0C]
 00473777    push        eax
 00473778    mov         eax,dword ptr [ebp-8]
 0047377B    push        eax
 0047377C    mov         eax,dword ptr [ebp-10]
 0047377F    call        @LStrLen
 00473784    push        eax
 00473785    mov         eax,dword ptr [ebp-10]
 00473788    call        @LStrToPChar
 0047378D    push        eax
 0047378E    mov         eax,dword ptr [ebp-4]
 00473791    mov         eax,dword ptr [eax+160];TCustomLabel.......................................................
 00473797    call        0042F6A0
 0047379C    push        eax
 0047379D    call        user32.DrawTextA
>004737A2    jmp         004737D2
 004737A4    mov         eax,dword ptr [ebp-0C]
 004737A7    push        eax
 004737A8    mov         eax,dword ptr [ebp-8]
 004737AB    push        eax
 004737AC    mov         eax,dword ptr [ebp-10]
 004737AF    call        @LStrLen
 004737B4    push        eax
 004737B5    mov         eax,dword ptr [ebp-10]
 004737B8    call        @LStrToPChar
 004737BD    push        eax
 004737BE    mov         eax,dword ptr [ebp-4]
 004737C1    mov         eax,dword ptr [eax+160];TCustomLabel.......................................................
 004737C7    call        0042F6A0
 004737CC    push        eax
 004737CD    call        user32.DrawTextA
 004737D2    xor         eax,eax
 004737D4    pop         edx
 004737D5    pop         ecx
 004737D6    pop         ecx
 004737D7    mov         dword ptr fs:[eax],edx
 004737DA    push        4737EF
 004737DF    lea         eax,[ebp-10]
 004737E2    call        @LStrClr
 004737E7    ret
>004737E8    jmp         @HandleFinally
>004737ED    jmp         004737DF
 004737EF    pop         ebx
 004737F0    mov         esp,ebp
 004737F2    pop         ebp
 004737F3    ret
end;*}

//00473800
procedure sub_00473800;
begin
{*
 00473800    push        ebp
 00473801    mov         ebp,esp
 00473803    add         esp,0FFFFFFC4
 00473806    push        esi
 00473807    push        edi
 00473808    mov         dword ptr [ebp-4],eax
 0047380B    mov         eax,dword ptr [ebp-4]
 0047380E    mov         eax,dword ptr [eax+160];TCustomLabel.......................................................
 00473814    mov         dword ptr [ebp-0C],eax
 00473817    mov         eax,dword ptr [ebp-4]
 0047381A    call        TBoundLabel.GetTransparent
 0047381F    test        al,al
>00473821    jne         00473857
 00473823    mov         eax,dword ptr [ebp-4]
 00473826    mov         edx,dword ptr [eax+70];TCustomLabel.FColor:TColor
 00473829    mov         eax,dword ptr [ebp-0C]
 0047382C    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 0047382F    call        TBrush.SetColor
 00473834    xor         edx,edx
 00473836    mov         eax,dword ptr [ebp-0C]
 00473839    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 0047383C    call        TBrush.SetStyle
 00473841    lea         edx,[ebp-3C]
 00473844    mov         eax,dword ptr [ebp-4]
 00473847    mov         ecx,dword ptr [eax]
 00473849    call        dword ptr [ecx+44];TCustomLabel.sub_00482F5C
 0047384C    lea         edx,[ebp-3C]
 0047384F    mov         eax,dword ptr [ebp-0C]
 00473852    call        0042F030
 00473857    mov         dl,1
 00473859    mov         eax,dword ptr [ebp-0C]
 0047385C    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 0047385F    call        TBrush.SetStyle
 00473864    lea         edx,[ebp-1C]
 00473867    mov         eax,dword ptr [ebp-4]
 0047386A    mov         ecx,dword ptr [eax]
 0047386C    call        dword ptr [ecx+44];TCustomLabel.sub_00482F5C
 0047386F    mov         eax,dword ptr [ebp-4]
 00473872    movzx       eax,byte ptr [eax+16F];TCustomLabel.FWordWrap:Boolean
 00473879    mov         ax,word ptr [eax*2+56C608]
 00473881    or          ax,40
 00473885    mov         edx,dword ptr [ebp-4]
 00473888    movzx       edx,byte ptr [edx+16C];TCustomLabel.FAlignment:TAlignment
 0047388F    or          ax,word ptr [edx*2+56C600]
 00473897    movzx       eax,ax
 0047389A    mov         dword ptr [ebp-8],eax
 0047389D    mov         eax,dword ptr [ebp-4]
 004738A0    cmp         byte ptr [eax+16E],0;TCustomLabel.FLayout:TTextLayout
>004738A7    je          0047390A
 004738A9    lea         esi,[ebp-1C]
 004738AC    lea         edi,[ebp-2C]
 004738AF    movs        dword ptr [edi],dword ptr [esi]
 004738B0    movs        dword ptr [edi],dword ptr [esi]
 004738B1    movs        dword ptr [edi],dword ptr [esi]
 004738B2    movs        dword ptr [edi],dword ptr [esi]
 004738B3    mov         ecx,dword ptr [ebp-8]
 004738B6    or          ecx,400
 004738BC    lea         edx,[ebp-2C]
 004738BF    mov         eax,dword ptr [ebp-4]
 004738C2    mov         si,0FFC6
 004738C6    call        @CallDynaInst;TCustomLabel.sub_00473654
 004738CB    mov         eax,dword ptr [ebp-4]
 004738CE    cmp         byte ptr [eax+16E],2;TCustomLabel.FLayout:TTextLayout
>004738D5    jne         004738EE
 004738D7    mov         eax,dword ptr [ebp-4]
 004738DA    mov         eax,dword ptr [eax+4C];TCustomLabel.Height:Integer
 004738DD    sub         eax,dword ptr [ebp-20]
 004738E0    push        eax
 004738E1    push        0
 004738E3    lea         eax,[ebp-1C]
 004738E6    push        eax
 004738E7    call        user32.OffsetRect
>004738EC    jmp         0047390A
 004738EE    mov         eax,dword ptr [ebp-4]
 004738F1    mov         eax,dword ptr [eax+4C];TCustomLabel.Height:Integer
 004738F4    sub         eax,dword ptr [ebp-20]
 004738F7    sar         eax,1
>004738F9    jns         004738FE
 004738FB    adc         eax,0
 004738FE    push        eax
 004738FF    push        0
 00473901    lea         eax,[ebp-1C]
 00473904    push        eax
 00473905    call        user32.OffsetRect
 0047390A    lea         edx,[ebp-1C]
 0047390D    mov         ecx,dword ptr [ebp-8]
 00473910    mov         eax,dword ptr [ebp-4]
 00473913    mov         si,0FFC6
 00473917    call        @CallDynaInst;TCustomLabel.sub_00473654
 0047391C    pop         edi
 0047391D    pop         esi
 0047391E    mov         esp,ebp
 00473920    pop         ebp
 00473921    ret
*}
end;

//00473924
procedure sub_00473924;
begin
{*
 00473924    push        ebp
 00473925    mov         ebp,esp
 00473927    push        ecx
 00473928    push        esi
 00473929    mov         dword ptr [ebp-4],eax
 0047392C    mov         eax,dword ptr [ebp-4]
 0047392F    call        004864B8
 00473934    mov         eax,dword ptr [ebp-4]
 00473937    mov         si,0FFC7
 0047393B    call        @CallDynaInst;TCustomLabel.sub_00473944
 00473940    pop         esi
 00473941    pop         ecx
 00473942    pop         ebp
 00473943    ret
*}
end;

//00473944
procedure TCustomLabel.sub_00473944;
begin
{*
 00473944    push        ebp
 00473945    mov         ebp,esp
 00473947    add         esp,0FFFFFFE0
 0047394A    push        ebx
 0047394B    push        esi
 0047394C    mov         dword ptr [ebp-4],eax
 0047394F    mov         eax,dword ptr [ebp-4]
 00473952    test        byte ptr [eax+1C],2;TCustomLabel.FComponentState:TComponentState
>00473956    jne         00473A31
 0047395C    mov         eax,dword ptr [ebp-4]
 0047395F    cmp         byte ptr [eax+16D],0;TCustomLabel.FAutoSize:Boolean
>00473966    je          00473A31
 0047396C    lea         edx,[ebp-1D]
 0047396F    mov         eax,dword ptr [ebp-4]
 00473972    mov         ecx,dword ptr [eax]
 00473974    call        dword ptr [ecx+44];TCustomLabel.sub_00482F5C
 00473977    push        0
 00473979    call        user32.GetDC
 0047397E    mov         dword ptr [ebp-8],eax
 00473981    mov         edx,dword ptr [ebp-8]
 00473984    mov         eax,dword ptr [ebp-4]
 00473987    mov         eax,dword ptr [eax+160];TCustomLabel.......................................................
 0047398D    call        TCanvas.SetHandle
 00473992    mov         eax,dword ptr [ebp-4]
 00473995    movzx       eax,byte ptr [eax+16F];TCustomLabel.FWordWrap:Boolean
 0047399C    mov         cx,word ptr [eax*2+56C60C]
 004739A4    or          cx,440
 004739A9    movzx       ecx,cx
 004739AC    lea         edx,[ebp-1D]
 004739AF    mov         eax,dword ptr [ebp-4]
 004739B2    mov         si,0FFC6
 004739B6    call        @CallDynaInst;TCustomLabel.sub_00473654
 004739BB    xor         edx,edx
 004739BD    mov         eax,dword ptr [ebp-4]
 004739C0    mov         eax,dword ptr [eax+160];TCustomLabel.......................................................
 004739C6    call        TCanvas.SetHandle
 004739CB    mov         eax,dword ptr [ebp-8]
 004739CE    push        eax
 004739CF    push        0
 004739D1    call        user32.ReleaseDC
 004739D6    mov         eax,dword ptr [ebp-4]
 004739D9    mov         eax,dword ptr [eax+40];TCustomLabel.Left:Integer
 004739DC    mov         dword ptr [ebp-0C],eax
 004739DF    mov         eax,dword ptr [ebp-4]
 004739E2    mov         al,byte ptr [eax+16C];TCustomLabel.FAlignment:TAlignment
 004739E8    mov         byte ptr [ebp-0D],al
 004739EB    mov         eax,dword ptr [ebp-4]
 004739EE    mov         si,0FFC8
 004739F2    call        @CallDynaInst;TControl.sub_0048415C
 004739F7    test        al,al
>004739F9    je          00473A03
 004739FB    lea         eax,[ebp-0D]
 004739FE    call        0047F678
 00473A03    cmp         byte ptr [ebp-0D],1
>00473A07    jne         00473A15
 00473A09    mov         eax,dword ptr [ebp-4]
 00473A0C    mov         eax,dword ptr [eax+48];TCustomLabel.Width:Integer
 00473A0F    sub         eax,dword ptr [ebp-15]
 00473A12    add         dword ptr [ebp-0C],eax
 00473A15    mov         eax,dword ptr [ebp-15]
 00473A18    push        eax
 00473A19    mov         eax,dword ptr [ebp-11]
 00473A1C    push        eax
 00473A1D    mov         eax,dword ptr [ebp-4]
 00473A20    mov         ecx,dword ptr [eax+44];TCustomLabel.Top:Integer
 00473A23    mov         edx,dword ptr [ebp-0C]
 00473A26    mov         eax,dword ptr [ebp-4]
 00473A29    mov         ebx,dword ptr [eax]
 00473A2B    call        dword ptr [ebx+84];TCustomLabel.sub_00482930
 00473A31    pop         esi
 00473A32    pop         ebx
 00473A33    mov         esp,ebp
 00473A35    pop         ebp
 00473A36    ret
*}
end;

//00473A38
procedure TLabel.SetAlignment(Value:TAlignment);
begin
{*
 00473A38    push        ebp
 00473A39    mov         ebp,esp
 00473A3B    add         esp,0FFFFFFF8
 00473A3E    mov         byte ptr [ebp-5],dl
 00473A41    mov         dword ptr [ebp-4],eax
 00473A44    mov         eax,dword ptr [ebp-4]
 00473A47    mov         al,byte ptr [eax+16C];TLabel.FAlignment:TAlignment
 00473A4D    cmp         al,byte ptr [ebp-5]
>00473A50    je          00473A66
 00473A52    mov         al,byte ptr [ebp-5]
 00473A55    mov         edx,dword ptr [ebp-4]
 00473A58    mov         byte ptr [edx+16C],al;TLabel.FAlignment:TAlignment
 00473A5E    mov         eax,dword ptr [ebp-4]
 00473A61    mov         edx,dword ptr [eax]
 00473A63    call        dword ptr [edx+7C];TLabel.sub_00483F08
 00473A66    pop         ecx
 00473A67    pop         ecx
 00473A68    pop         ebp
 00473A69    ret
*}
end;

//00473A6C
procedure TLabel.SetAutoSize(Value:Boolean);
begin
{*
 00473A6C    push        ebp
 00473A6D    mov         ebp,esp
 00473A6F    add         esp,0FFFFFFF8
 00473A72    push        esi
 00473A73    mov         byte ptr [ebp-5],dl
 00473A76    mov         dword ptr [ebp-4],eax
 00473A79    mov         eax,dword ptr [ebp-4]
 00473A7C    mov         al,byte ptr [eax+16D];TLabel.FAutoSize:Boolean
 00473A82    cmp         al,byte ptr [ebp-5]
>00473A85    je          00473A9F
 00473A87    mov         al,byte ptr [ebp-5]
 00473A8A    mov         edx,dword ptr [ebp-4]
 00473A8D    mov         byte ptr [edx+16D],al;TLabel.FAutoSize:Boolean
 00473A93    mov         eax,dword ptr [ebp-4]
 00473A96    mov         si,0FFC7
 00473A9A    call        @CallDynaInst;TCustomLabel.sub_00473944
 00473A9F    pop         esi
 00473AA0    pop         ecx
 00473AA1    pop         ecx
 00473AA2    pop         ebp
 00473AA3    ret
*}
end;

//00473AA4
{*function TBoundLabel.GetTransparent:?;
begin
 00473AA4    push        ebp
 00473AA5    mov         ebp,esp
 00473AA7    add         esp,0FFFFFFF8
 00473AAA    mov         dword ptr [ebp-4],eax
 00473AAD    mov         eax,dword ptr [ebp-4]
 00473AB0    test        byte ptr [eax+50],40;TBoundLabel.FControlStyle:TControlStyle
 00473AB4    setne       al
 00473AB7    xor         al,1
 00473AB9    mov         byte ptr [ebp-5],al
 00473ABC    mov         al,byte ptr [ebp-5]
 00473ABF    pop         ecx
 00473AC0    pop         ecx
 00473AC1    pop         ebp
 00473AC2    ret
end;*}

//00473AC4
procedure TLabel.SetFocusControl(Value:TWinControl);
begin
{*
 00473AC4    push        ebp
 00473AC5    mov         ebp,esp
 00473AC7    add         esp,0FFFFFFF8
 00473ACA    mov         dword ptr [ebp-8],edx
 00473ACD    mov         dword ptr [ebp-4],eax
 00473AD0    mov         eax,dword ptr [ebp-8]
 00473AD3    mov         edx,dword ptr [ebp-4]
 00473AD6    mov         dword ptr [edx+168],eax;TLabel.FFocusControl:TWinControl
 00473ADC    cmp         dword ptr [ebp-8],0
>00473AE0    je          00473AED
 00473AE2    mov         edx,dword ptr [ebp-4]
 00473AE5    mov         eax,dword ptr [ebp-8]
 00473AE8    call        0042A2CC
 00473AED    pop         ecx
 00473AEE    pop         ecx
 00473AEF    pop         ebp
 00473AF0    ret
*}
end;

//00473AF4
procedure TBoundLabel.SetShowAccelChar(Value:Boolean);
begin
{*
 00473AF4    push        ebp
 00473AF5    mov         ebp,esp
 00473AF7    add         esp,0FFFFFFF8
 00473AFA    mov         byte ptr [ebp-5],dl
 00473AFD    mov         dword ptr [ebp-4],eax
 00473B00    mov         eax,dword ptr [ebp-4]
 00473B03    mov         al,byte ptr [eax+170];TBoundLabel.FShowAccelChar:Boolean
 00473B09    cmp         al,byte ptr [ebp-5]
>00473B0C    je          00473B22
 00473B0E    mov         al,byte ptr [ebp-5]
 00473B11    mov         edx,dword ptr [ebp-4]
 00473B14    mov         byte ptr [edx+170],al;TBoundLabel.FShowAccelChar:Boolean
 00473B1A    mov         eax,dword ptr [ebp-4]
 00473B1D    mov         edx,dword ptr [eax]
 00473B1F    call        dword ptr [edx+7C];TBoundLabel.sub_00483F08
 00473B22    pop         ecx
 00473B23    pop         ecx
 00473B24    pop         ebp
 00473B25    ret
*}
end;

//00473B28
procedure TBoundLabel.SetTransparent(Value:Boolean);
begin
{*
 00473B28    push        ebp
 00473B29    mov         ebp,esp
 00473B2B    add         esp,0FFFFFFF8
 00473B2E    mov         byte ptr [ebp-5],dl
 00473B31    mov         dword ptr [ebp-4],eax
 00473B34    mov         eax,dword ptr [ebp-4]
 00473B37    call        TBoundLabel.GetTransparent
 00473B3C    cmp         al,byte ptr [ebp-5]
>00473B3F    je          00473B75
 00473B41    cmp         byte ptr [ebp-5],0
>00473B45    je          00473B5C
 00473B47    mov         eax,[00473B84];0x40 gvar_00473B84
 00473B4C    mov         edx,dword ptr [ebp-4]
 00473B4F    not         eax
 00473B51    and         eax,dword ptr [edx+50];TBoundLabel.FControlStyle:TControlStyle
 00473B54    mov         edx,dword ptr [ebp-4]
 00473B57    mov         dword ptr [edx+50],eax;TBoundLabel.FControlStyle:TControlStyle
>00473B5A    jmp         00473B6D
 00473B5C    mov         eax,[00473B84];0x40 gvar_00473B84
 00473B61    mov         edx,dword ptr [ebp-4]
 00473B64    or          eax,dword ptr [edx+50];TBoundLabel.FControlStyle:TControlStyle
 00473B67    mov         edx,dword ptr [ebp-4]
 00473B6A    mov         dword ptr [edx+50],eax;TBoundLabel.FControlStyle:TControlStyle
 00473B6D    mov         eax,dword ptr [ebp-4]
 00473B70    mov         edx,dword ptr [eax]
 00473B72    call        dword ptr [edx+7C];TBoundLabel.sub_00483F08
 00473B75    mov         eax,dword ptr [ebp-4]
 00473B78    mov         byte ptr [eax+188],1;TBoundLabel.FTransparentSet:Boolean
 00473B7F    pop         ecx
 00473B80    pop         ecx
 00473B81    pop         ebp
 00473B82    ret
*}
end;

//00473B88
procedure TBoundLabel.SetLayout(Value:TTextLayout);
begin
{*
 00473B88    push        ebp
 00473B89    mov         ebp,esp
 00473B8B    add         esp,0FFFFFFF8
 00473B8E    mov         byte ptr [ebp-5],dl
 00473B91    mov         dword ptr [ebp-4],eax
 00473B94    mov         eax,dword ptr [ebp-4]
 00473B97    mov         al,byte ptr [eax+16E];TBoundLabel.FLayout:TTextLayout
 00473B9D    cmp         al,byte ptr [ebp-5]
>00473BA0    je          00473BB6
 00473BA2    mov         al,byte ptr [ebp-5]
 00473BA5    mov         edx,dword ptr [ebp-4]
 00473BA8    mov         byte ptr [edx+16E],al;TBoundLabel.FLayout:TTextLayout
 00473BAE    mov         eax,dword ptr [ebp-4]
 00473BB1    mov         edx,dword ptr [eax]
 00473BB3    call        dword ptr [edx+7C];TBoundLabel.sub_00483F08
 00473BB6    pop         ecx
 00473BB7    pop         ecx
 00473BB8    pop         ebp
 00473BB9    ret
*}
end;

//00473BBC
procedure TBoundLabel.SetWordWrap(Value:Boolean);
begin
{*
 00473BBC    push        ebp
 00473BBD    mov         ebp,esp
 00473BBF    add         esp,0FFFFFFF8
 00473BC2    push        esi
 00473BC3    mov         byte ptr [ebp-5],dl
 00473BC6    mov         dword ptr [ebp-4],eax
 00473BC9    mov         eax,dword ptr [ebp-4]
 00473BCC    mov         al,byte ptr [eax+16F];TBoundLabel.FWordWrap:Boolean
 00473BD2    cmp         al,byte ptr [ebp-5]
>00473BD5    je          00473BF7
 00473BD7    mov         al,byte ptr [ebp-5]
 00473BDA    mov         edx,dword ptr [ebp-4]
 00473BDD    mov         byte ptr [edx+16F],al;TBoundLabel.FWordWrap:Boolean
 00473BE3    mov         eax,dword ptr [ebp-4]
 00473BE6    mov         si,0FFC7
 00473BEA    call        @CallDynaInst;TBoundLabel.sub_00445640
 00473BEF    mov         eax,dword ptr [ebp-4]
 00473BF2    mov         edx,dword ptr [eax]
 00473BF4    call        dword ptr [edx+7C];TBoundLabel.sub_00483F08
 00473BF7    pop         esi
 00473BF8    pop         ecx
 00473BF9    pop         ecx
 00473BFA    pop         ebp
 00473BFB    ret
*}
end;

//00473BFC
{*procedure sub_00473BFC(?:?; ?:?);
begin
 00473BFC    push        ebp
 00473BFD    mov         ebp,esp
 00473BFF    add         esp,0FFFFFFF4
 00473C02    mov         byte ptr [ebp-9],cl
 00473C05    mov         dword ptr [ebp-8],edx
 00473C08    mov         dword ptr [ebp-4],eax
 00473C0B    mov         cl,byte ptr [ebp-9]
 00473C0E    mov         edx,dword ptr [ebp-8]
 00473C11    mov         eax,dword ptr [ebp-4]
 00473C14    call        004827F4
 00473C19    cmp         byte ptr [ebp-9],1
>00473C1D    jne         00473C38
 00473C1F    mov         eax,dword ptr [ebp-8]
 00473C22    mov         edx,dword ptr [ebp-4]
 00473C25    cmp         eax,dword ptr [edx+168];TCustomLabel.FFocusControl:TWinControl
>00473C2B    jne         00473C38
 00473C2D    mov         eax,dword ptr [ebp-4]
 00473C30    xor         edx,edx
 00473C32    mov         dword ptr [eax+168],edx;TCustomLabel.FFocusControl:TWinControl
 00473C38    mov         esp,ebp
 00473C3A    pop         ebp
 00473C3B    ret
end;*}

//00473C3C
{*procedure TCustomLabel.CMTextChanged(?:?);
begin
 00473C3C    push        ebp
 00473C3D    mov         ebp,esp
 00473C3F    add         esp,0FFFFFFF8
 00473C42    push        esi
 00473C43    mov         dword ptr [ebp-8],edx
 00473C46    mov         dword ptr [ebp-4],eax
 00473C49    mov         eax,dword ptr [ebp-4]
 00473C4C    mov         edx,dword ptr [eax]
 00473C4E    call        dword ptr [edx+7C];TCustomLabel.sub_00483F08
 00473C51    mov         eax,dword ptr [ebp-4]
 00473C54    mov         si,0FFC7
 00473C58    call        @CallDynaInst;TCustomLabel.sub_00473944
 00473C5D    pop         esi
 00473C5E    pop         ecx
 00473C5F    pop         ecx
 00473C60    pop         ebp
 00473C61    ret
end;*}

//00473C64
{*procedure TCustomLabel.CMFontChanged(?:?);
begin
 00473C64    push        ebp
 00473C65    mov         ebp,esp
 00473C67    add         esp,0FFFFFFF8
 00473C6A    push        esi
 00473C6B    mov         dword ptr [ebp-8],edx
 00473C6E    mov         dword ptr [ebp-4],eax
 00473C71    mov         edx,dword ptr [ebp-8]
 00473C74    mov         eax,dword ptr [ebp-4]
 00473C77    call        TControl.CMFontChanged
 00473C7C    mov         eax,dword ptr [ebp-4]
 00473C7F    mov         si,0FFC7
 00473C83    call        @CallDynaInst;TCustomLabel.sub_00473944
 00473C88    pop         esi
 00473C89    pop         ecx
 00473C8A    pop         ecx
 00473C8B    pop         ebp
 00473C8C    ret
end;*}

//00473C90
{*procedure TCustomLabel.CMDialogChar(?:?);
begin
 00473C90    push        ebp
 00473C91    mov         ebp,esp
 00473C93    add         esp,0FFFFFFF0
 00473C96    push        esi
 00473C97    xor         ecx,ecx
 00473C99    mov         dword ptr [ebp-10],ecx
 00473C9C    mov         dword ptr [ebp-8],edx
 00473C9F    mov         dword ptr [ebp-4],eax
 00473CA2    xor         eax,eax
 00473CA4    push        ebp
 00473CA5    push        473D39
 00473CAA    push        dword ptr fs:[eax]
 00473CAD    mov         dword ptr fs:[eax],esp
 00473CB0    mov         eax,dword ptr [ebp-4]
 00473CB3    cmp         dword ptr [eax+168],0;TCustomLabel.FFocusControl:TWinControl
>00473CBA    je          00473D23
 00473CBC    mov         eax,dword ptr [ebp-4]
 00473CBF    mov         edx,dword ptr [eax]
 00473CC1    call        dword ptr [edx+50];TImage.GetEnabled
 00473CC4    test        al,al
>00473CC6    je          00473D23
 00473CC8    mov         eax,dword ptr [ebp-4]
 00473CCB    cmp         byte ptr [eax+170],0;TCustomLabel.FShowAccelChar:Boolean
>00473CD2    je          00473D23
 00473CD4    lea         edx,[ebp-10]
 00473CD7    mov         eax,dword ptr [ebp-4]
 00473CDA    call        TPanel.GetCaption
 00473CDF    mov         edx,dword ptr [ebp-10]
 00473CE2    mov         eax,dword ptr [ebp-8]
 00473CE5    mov         ax,word ptr [eax+4]
 00473CE9    call        004A06C8
 00473CEE    test        al,al
>00473CF0    je          00473D23
 00473CF2    mov         eax,dword ptr [ebp-4]
 00473CF5    mov         eax,dword ptr [eax+168];TCustomLabel.FFocusControl:TWinControl
 00473CFB    mov         dword ptr [ebp-0C],eax
 00473CFE    mov         eax,dword ptr [ebp-0C]
 00473D01    mov         si,0FFB8
 00473D05    call        @CallDynaInst;TWinControl.sub_0048BFC8
 00473D0A    test        al,al
>00473D0C    je          00473D23
 00473D0E    mov         eax,dword ptr [ebp-0C]
 00473D11    mov         edx,dword ptr [eax]
 00473D13    call        dword ptr [edx+0C4];TWinControl.sub_0048C028
 00473D19    mov         eax,dword ptr [ebp-8]
 00473D1C    mov         dword ptr [eax+0C],1
 00473D23    xor         eax,eax
 00473D25    pop         edx
 00473D26    pop         ecx
 00473D27    pop         ecx
 00473D28    mov         dword ptr fs:[eax],edx
 00473D2B    push        473D40
 00473D30    lea         eax,[ebp-10]
 00473D33    call        @LStrClr
 00473D38    ret
>00473D39    jmp         @HandleFinally
>00473D3E    jmp         00473D30
 00473D40    pop         esi
 00473D41    mov         esp,ebp
 00473D43    pop         ebp
 00473D44    ret
end;*}

//00473D48
{*procedure TCustomLabel.CMMouseEnter(?:?);
begin
 00473D48    push        ebp
 00473D49    mov         ebp,esp
 00473D4B    add         esp,0FFFFFFF8
 00473D4E    push        ebx
 00473D4F    mov         dword ptr [ebp-8],edx
 00473D52    mov         dword ptr [ebp-4],eax
 00473D55    mov         edx,dword ptr [ebp-8]
 00473D58    mov         eax,dword ptr [ebp-4]
 00473D5B    call        TControl.CMMouseEnter
 00473D60    mov         eax,dword ptr [ebp-4]
 00473D63    cmp         word ptr [eax+182],0;TCustomLabel.?f182:word
>00473D6B    je          00473D7F
 00473D6D    mov         ebx,dword ptr [ebp-4]
 00473D70    mov         edx,dword ptr [ebp-4]
 00473D73    mov         eax,dword ptr [ebx+184];TCustomLabel.?f184:dword
 00473D79    call        dword ptr [ebx+180];TCustomLabel.FOnMouseEnter
 00473D7F    pop         ebx
 00473D80    pop         ecx
 00473D81    pop         ecx
 00473D82    pop         ebp
 00473D83    ret
end;*}

//00473D84
{*procedure TCustomLabel.CMMouseLeave(?:?);
begin
 00473D84    push        ebp
 00473D85    mov         ebp,esp
 00473D87    add         esp,0FFFFFFF8
 00473D8A    push        ebx
 00473D8B    mov         dword ptr [ebp-8],edx
 00473D8E    mov         dword ptr [ebp-4],eax
 00473D91    mov         edx,dword ptr [ebp-8]
 00473D94    mov         eax,dword ptr [ebp-4]
 00473D97    call        TControl.CMMouseLeave
 00473D9C    mov         eax,dword ptr [ebp-4]
 00473D9F    cmp         word ptr [eax+17A],0;TCustomLabel.?f17A:word
>00473DA7    je          00473DBB
 00473DA9    mov         ebx,dword ptr [ebp-4]
 00473DAC    mov         edx,dword ptr [ebp-4]
 00473DAF    mov         eax,dword ptr [ebx+17C];TCustomLabel.?f17C:dword
 00473DB5    call        dword ptr [ebx+178];TCustomLabel.FOnMouseLeave
 00473DBB    pop         ebx
 00473DBC    pop         ecx
 00473DBD    pop         ecx
 00473DBE    pop         ebp
 00473DBF    ret
end;*}

//00473DC0
constructor sub_00473DC0;
begin
{*
 00473DC0    push        ebp
 00473DC1    mov         ebp,esp
 00473DC3    add         esp,0FFFFFFF4
 00473DC6    test        dl,dl
>00473DC8    je          00473DD2
 00473DCA    add         esp,0FFFFFFF0
 00473DCD    call        @ClassCreate
 00473DD2    mov         dword ptr [ebp-0C],ecx
 00473DD5    mov         byte ptr [ebp-5],dl
 00473DD8    mov         dword ptr [ebp-4],eax
 00473DDB    mov         ecx,dword ptr [ebp-0C]
 00473DDE    xor         edx,edx
 00473DE0    mov         eax,dword ptr [ebp-4]
 00473DE3    call        00486BAC
 00473DE8    mov         eax,[0056E264];^NewStyleControls:Boolean
 00473DED    cmp         byte ptr [eax],0
>00473DF0    je          00473E00
 00473DF2    mov         eax,dword ptr [ebp-4]
 00473DF5    mov         edx,dword ptr ds:[473E8C];0x2A8 gvar_00473E8C
 00473DFB    mov         dword ptr [eax+50],edx;TCustomEdit.FControlStyle:TControlStyle
>00473DFE    jmp         00473E0C
 00473E00    mov         eax,dword ptr [ebp-4]
 00473E03    mov         edx,dword ptr ds:[473E90];0x2B8 gvar_00473E90
 00473E09    mov         dword ptr [eax+50],edx;TCustomEdit.FControlStyle:TControlStyle
 00473E0C    mov         edx,79
 00473E11    mov         eax,dword ptr [ebp-4]
 00473E14    call        TSplitter.SetWidth
 00473E19    mov         edx,19
 00473E1E    mov         eax,dword ptr [ebp-4]
 00473E21    call        TToolButton.SetHeight
 00473E26    mov         dl,1
 00473E28    mov         eax,dword ptr [ebp-4]
 00473E2B    call        TPanel.SetTabStop
 00473E30    xor         edx,edx
 00473E32    mov         eax,dword ptr [ebp-4]
 00473E35    call        TPanel.SetParentColor
 00473E3A    mov         eax,dword ptr [ebp-4]
 00473E3D    mov         byte ptr [eax+20C],1;TCustomEdit.FBorderStyle:TBorderStyle
 00473E44    mov         eax,dword ptr [ebp-4]
 00473E47    mov         byte ptr [eax+20F],1;TCustomEdit.FAutoSize:Boolean
 00473E4E    mov         eax,dword ptr [ebp-4]
 00473E51    mov         byte ptr [eax+210],1;TCustomEdit.FAutoSelect:Boolean
 00473E58    mov         eax,dword ptr [ebp-4]
 00473E5B    mov         byte ptr [eax+211],1;TCustomEdit.FHideSelection:Boolean
 00473E62    mov         eax,dword ptr [ebp-4]
 00473E65    call        004746DC
 00473E6A    mov         eax,dword ptr [ebp-4]
 00473E6D    cmp         byte ptr [ebp-5],0
>00473E71    je          00473E82
 00473E73    call        @AfterConstruction
 00473E78    pop         dword ptr fs:[0]
 00473E7F    add         esp,0C
 00473E82    mov         eax,dword ptr [ebp-4]
 00473E85    mov         esp,ebp
 00473E87    pop         ebp
 00473E88    ret
*}
end;

//00473E94
{*procedure sub_00473E94(?:?);
begin
 00473E94    push        ebp
 00473E95    mov         ebp,esp
 00473E97    add         esp,0FFFFFFF8
 00473E9A    mov         dword ptr [ebp-8],edx
 00473E9D    mov         dword ptr [ebp-4],eax
 00473EA0    push        0
 00473EA2    mov         eax,dword ptr [ebp-8]
 00473EA5    push        eax
 00473EA6    push        0C5
 00473EAB    mov         eax,dword ptr [ebp-4]
 00473EAE    call        TWinControl.GetHandle
 00473EB3    push        eax
 00473EB4    call        user32.SendMessageA
 00473EB9    pop         ecx
 00473EBA    pop         ecx
 00473EBB    pop         ebp
 00473EBC    ret
end;*}

//00473EC0
procedure TLabeledEdit.SetAutoSize(Value:Boolean);
begin
{*
 00473EC0    push        ebp
 00473EC1    mov         ebp,esp
 00473EC3    add         esp,0FFFFFFF8
 00473EC6    mov         byte ptr [ebp-5],dl
 00473EC9    mov         dword ptr [ebp-4],eax
 00473ECC    mov         eax,dword ptr [ebp-4]
 00473ECF    mov         al,byte ptr [eax+20F];TLabeledEdit.FAutoSize:Boolean
 00473ED5    cmp         al,byte ptr [ebp-5]
>00473ED8    je          00473EEE
 00473EDA    mov         al,byte ptr [ebp-5]
 00473EDD    mov         edx,dword ptr [ebp-4]
 00473EE0    mov         byte ptr [edx+20F],al;TLabeledEdit.FAutoSize:Boolean
 00473EE6    mov         eax,dword ptr [ebp-4]
 00473EE9    call        TCustomEdit.UpdateHeight
 00473EEE    pop         ecx
 00473EEF    pop         ecx
 00473EF0    pop         ebp
 00473EF1    ret
*}
end;

//00473EF4
procedure TLabeledEdit.SetBorderStyle(Value:TBorderStyle);
begin
{*
 00473EF4    push        ebp
 00473EF5    mov         ebp,esp
 00473EF7    add         esp,0FFFFFFF8
 00473EFA    mov         byte ptr [ebp-5],dl
 00473EFD    mov         dword ptr [ebp-4],eax
 00473F00    mov         eax,dword ptr [ebp-4]
 00473F03    mov         al,byte ptr [eax+20C];TLabeledEdit.FBorderStyle:TBorderStyle
 00473F09    cmp         al,byte ptr [ebp-5]
>00473F0C    je          00473F2A
 00473F0E    mov         al,byte ptr [ebp-5]
 00473F11    mov         edx,dword ptr [ebp-4]
 00473F14    mov         byte ptr [edx+20C],al;TLabeledEdit.FBorderStyle:TBorderStyle
 00473F1A    mov         eax,dword ptr [ebp-4]
 00473F1D    call        TCustomEdit.UpdateHeight
 00473F22    mov         eax,dword ptr [ebp-4]
 00473F25    call        TWinControl.RecreateWnd
 00473F2A    pop         ecx
 00473F2B    pop         ecx
 00473F2C    pop         ebp
 00473F2D    ret
*}
end;

//00473F30
procedure TLabeledEdit.SetCharCase(Value:TEditCharCase);
begin
{*
 00473F30    push        ebp
 00473F31    mov         ebp,esp
 00473F33    add         esp,0FFFFFFF8
 00473F36    mov         byte ptr [ebp-5],dl
 00473F39    mov         dword ptr [ebp-4],eax
 00473F3C    mov         eax,dword ptr [ebp-4]
 00473F3F    mov         al,byte ptr [eax+213];TLabeledEdit.FCharCase:TEditCharCase
 00473F45    cmp         al,byte ptr [ebp-5]
>00473F48    je          00473F5E
 00473F4A    mov         al,byte ptr [ebp-5]
 00473F4D    mov         edx,dword ptr [ebp-4]
 00473F50    mov         byte ptr [edx+213],al;TLabeledEdit.FCharCase:TEditCharCase
 00473F56    mov         eax,dword ptr [ebp-4]
 00473F59    call        TWinControl.RecreateWnd
 00473F5E    pop         ecx
 00473F5F    pop         ecx
 00473F60    pop         ebp
 00473F61    ret
*}
end;

//00473F64
procedure TLabeledEdit.SetHideSelection(Value:Boolean);
begin
{*
 00473F64    push        ebp
 00473F65    mov         ebp,esp
 00473F67    add         esp,0FFFFFFF8
 00473F6A    mov         byte ptr [ebp-5],dl
 00473F6D    mov         dword ptr [ebp-4],eax
 00473F70    mov         eax,dword ptr [ebp-4]
 00473F73    mov         al,byte ptr [eax+211];TLabeledEdit.FHideSelection:Boolean
 00473F79    cmp         al,byte ptr [ebp-5]
>00473F7C    je          00473F92
 00473F7E    mov         al,byte ptr [ebp-5]
 00473F81    mov         edx,dword ptr [ebp-4]
 00473F84    mov         byte ptr [edx+211],al;TLabeledEdit.FHideSelection:Boolean
 00473F8A    mov         eax,dword ptr [ebp-4]
 00473F8D    call        TWinControl.RecreateWnd
 00473F92    pop         ecx
 00473F93    pop         ecx
 00473F94    pop         ebp
 00473F95    ret
*}
end;

//00473F98
procedure TLabeledEdit.SetMaxLength(Value:Integer);
begin
{*
 00473F98    push        ebp
 00473F99    mov         ebp,esp
 00473F9B    add         esp,0FFFFFFF8
 00473F9E    mov         dword ptr [ebp-8],edx
 00473FA1    mov         dword ptr [ebp-4],eax
 00473FA4    mov         eax,dword ptr [ebp-4]
 00473FA7    mov         eax,dword ptr [eax+208];TLabeledEdit.FMaxLength:Integer
 00473FAD    cmp         eax,dword ptr [ebp-8]
>00473FB0    je          00473FD8
 00473FB2    mov         eax,dword ptr [ebp-8]
 00473FB5    mov         edx,dword ptr [ebp-4]
 00473FB8    mov         dword ptr [edx+208],eax;TLabeledEdit.FMaxLength:Integer
 00473FBE    mov         eax,dword ptr [ebp-4]
 00473FC1    call        TWinControl.HandleAllocated
 00473FC6    test        al,al
>00473FC8    je          00473FD8
 00473FCA    mov         edx,dword ptr [ebp-8]
 00473FCD    mov         eax,dword ptr [ebp-4]
 00473FD0    mov         ecx,dword ptr [eax]
 00473FD2    call        dword ptr [ecx+0C8];TLabeledEdit.sub_00473E94
 00473FD8    pop         ecx
 00473FD9    pop         ecx
 00473FDA    pop         ebp
 00473FDB    ret
*}
end;

//00473FDC
procedure TLabeledEdit.SetOEMConvert(Value:Boolean);
begin
{*
 00473FDC    push        ebp
 00473FDD    mov         ebp,esp
 00473FDF    add         esp,0FFFFFFF8
 00473FE2    mov         byte ptr [ebp-5],dl
 00473FE5    mov         dword ptr [ebp-4],eax
 00473FE8    mov         eax,dword ptr [ebp-4]
 00473FEB    mov         al,byte ptr [eax+212];TLabeledEdit.FOEMConvert:Boolean
 00473FF1    cmp         al,byte ptr [ebp-5]
>00473FF4    je          0047400A
 00473FF6    mov         al,byte ptr [ebp-5]
 00473FF9    mov         edx,dword ptr [ebp-4]
 00473FFC    mov         byte ptr [edx+212],al;TLabeledEdit.FOEMConvert:Boolean
 00474002    mov         eax,dword ptr [ebp-4]
 00474005    call        TWinControl.RecreateWnd
 0047400A    pop         ecx
 0047400B    pop         ecx
 0047400C    pop         ebp
 0047400D    ret
*}
end;

//00474010
function TCustomEdit.GetModified:Boolean;
begin
{*
 00474010    push        ebp
 00474011    mov         ebp,esp
 00474013    add         esp,0FFFFFFF8
 00474016    mov         dword ptr [ebp-4],eax
 00474019    mov         eax,dword ptr [ebp-4]
 0047401C    mov         al,byte ptr [eax+215]
 00474022    mov         byte ptr [ebp-5],al
 00474025    mov         eax,dword ptr [ebp-4]
 00474028    call        TWinControl.HandleAllocated
 0047402D    test        al,al
>0047402F    je          0047404E
 00474031    push        0
 00474033    push        0
 00474035    push        0B8
 0047403A    mov         eax,dword ptr [ebp-4]
 0047403D    call        TWinControl.GetHandle
 00474042    push        eax
 00474043    call        user32.SendMessageA
 00474048    test        eax,eax
 0047404A    setne       byte ptr [ebp-5]
 0047404E    mov         al,byte ptr [ebp-5]
 00474051    pop         ecx
 00474052    pop         ecx
 00474053    pop         ebp
 00474054    ret
*}
end;

//00474058
procedure TCustomEdit.SetModified(Value:Boolean);
begin
{*
 00474058    push        ebp
 00474059    mov         ebp,esp
 0047405B    add         esp,0FFFFFFF8
 0047405E    mov         byte ptr [ebp-5],dl
 00474061    mov         dword ptr [ebp-4],eax
 00474064    mov         eax,dword ptr [ebp-4]
 00474067    call        TWinControl.HandleAllocated
 0047406C    test        al,al
>0047406E    je          0047408D
 00474070    push        0
 00474072    xor         eax,eax
 00474074    mov         al,byte ptr [ebp-5]
 00474077    push        eax
 00474078    push        0B9
 0047407D    mov         eax,dword ptr [ebp-4]
 00474080    call        TWinControl.GetHandle
 00474085    push        eax
 00474086    call        user32.SendMessageA
>0047408B    jmp         00474099
 0047408D    mov         al,byte ptr [ebp-5]
 00474090    mov         edx,dword ptr [ebp-4]
 00474093    mov         byte ptr [edx+215],al
 00474099    pop         ecx
 0047409A    pop         ecx
 0047409B    pop         ebp
 0047409C    ret
*}
end;

//004740A0
procedure TLabeledEdit.SetPasswordChar(Value:Char);
begin
{*
 004740A0    push        ebp
 004740A1    mov         ebp,esp
 004740A3    add         esp,0FFFFFFF4
 004740A6    xor         ecx,ecx
 004740A8    mov         dword ptr [ebp-0C],ecx
 004740AB    mov         byte ptr [ebp-5],dl
 004740AE    mov         dword ptr [ebp-4],eax
 004740B1    xor         eax,eax
 004740B3    push        ebp
 004740B4    push        474138
 004740B9    push        dword ptr fs:[eax]
 004740BC    mov         dword ptr fs:[eax],esp
 004740BF    mov         eax,dword ptr [ebp-4]
 004740C2    mov         al,byte ptr [eax+20D];TLabeledEdit.FPasswordChar:Char
 004740C8    cmp         al,byte ptr [ebp-5]
>004740CB    je          00474122
 004740CD    mov         al,byte ptr [ebp-5]
 004740D0    mov         edx,dword ptr [ebp-4]
 004740D3    mov         byte ptr [edx+20D],al;TLabeledEdit.FPasswordChar:Char
 004740D9    mov         eax,dword ptr [ebp-4]
 004740DC    call        TWinControl.HandleAllocated
 004740E1    test        al,al
>004740E3    je          00474122
 004740E5    push        0
 004740E7    mov         eax,dword ptr [ebp-4]
 004740EA    movzx       eax,byte ptr [eax+20D];TLabeledEdit.FPasswordChar:Char
 004740F1    push        eax
 004740F2    push        0CC
 004740F7    mov         eax,dword ptr [ebp-4]
 004740FA    call        TWinControl.GetHandle
 004740FF    push        eax
 00474100    call        user32.SendMessageA
 00474105    lea         edx,[ebp-0C]
 00474108    mov         eax,dword ptr [ebp-4]
 0047410B    call        TPanel.GetCaption
 00474110    mov         eax,dword ptr [ebp-0C]
 00474113    call        @LStrToPChar
 00474118    mov         edx,eax
 0047411A    mov         eax,dword ptr [ebp-4]
 0047411D    call        00483788
 00474122    xor         eax,eax
 00474124    pop         edx
 00474125    pop         ecx
 00474126    pop         ecx
 00474127    mov         dword ptr fs:[eax],edx
 0047412A    push        47413F
 0047412F    lea         eax,[ebp-0C]
 00474132    call        @LStrClr
 00474137    ret
>00474138    jmp         @HandleFinally
>0047413D    jmp         0047412F
 0047413F    mov         esp,ebp
 00474141    pop         ebp
 00474142    ret
*}
end;

//00474144
procedure TLabeledEdit.SetReadOnly(Value:Boolean);
begin
{*
 00474144    push        ebp
 00474145    mov         ebp,esp
 00474147    add         esp,0FFFFFFF8
 0047414A    mov         byte ptr [ebp-5],dl
 0047414D    mov         dword ptr [ebp-4],eax
 00474150    mov         eax,dword ptr [ebp-4]
 00474153    mov         al,byte ptr [eax+20E];TLabeledEdit.FReadOnly:Boolean
 00474159    cmp         al,byte ptr [ebp-5]
>0047415C    je          00474191
 0047415E    mov         al,byte ptr [ebp-5]
 00474161    mov         edx,dword ptr [ebp-4]
 00474164    mov         byte ptr [edx+20E],al;TLabeledEdit.FReadOnly:Boolean
 0047416A    mov         eax,dword ptr [ebp-4]
 0047416D    call        TWinControl.HandleAllocated
 00474172    test        al,al
>00474174    je          00474191
 00474176    push        0
 00474178    xor         eax,eax
 0047417A    mov         al,byte ptr [ebp-5]
 0047417D    push        eax
 0047417E    push        0CF
 00474183    mov         eax,dword ptr [ebp-4]
 00474186    call        TWinControl.GetHandle
 0047418B    push        eax
 0047418C    call        user32.SendMessageA
 00474191    pop         ecx
 00474192    pop         ecx
 00474193    pop         ebp
 00474194    ret
*}
end;

//00474198
{*function sub_00474198:?;
begin
 00474198    push        ebp
 00474199    mov         ebp,esp
 0047419B    add         esp,0FFFFFFF8
 0047419E    mov         dword ptr [ebp-4],eax
 004741A1    push        0
 004741A3    lea         eax,[ebp-8]
 004741A6    push        eax
 004741A7    push        0B0
 004741AC    mov         eax,dword ptr [ebp-4]
 004741AF    call        TWinControl.GetHandle
 004741B4    push        eax
 004741B5    call        user32.SendMessageA
 004741BA    mov         eax,dword ptr [ebp-8]
 004741BD    pop         ecx
 004741BE    pop         ecx
 004741BF    pop         ebp
 004741C0    ret
end;*}

//004741C4
{*procedure sub_004741C4(?:?);
begin
 004741C4    push        ebp
 004741C5    mov         ebp,esp
 004741C7    add         esp,0FFFFFFF8
 004741CA    mov         dword ptr [ebp-8],edx
 004741CD    mov         dword ptr [ebp-4],eax
 004741D0    mov         eax,dword ptr [ebp-8]
 004741D3    push        eax
 004741D4    mov         eax,dword ptr [ebp-8]
 004741D7    push        eax
 004741D8    push        0B1
 004741DD    mov         eax,dword ptr [ebp-4]
 004741E0    call        TWinControl.GetHandle
 004741E5    push        eax
 004741E6    call        user32.SendMessageA
 004741EB    pop         ecx
 004741EC    pop         ecx
 004741ED    pop         ebp
 004741EE    ret
end;*}

//004741F0
{*function sub_004741F0:?;
begin
 004741F0    push        ebp
 004741F1    mov         ebp,esp
 004741F3    add         esp,0FFFFFFF0
 004741F6    mov         dword ptr [ebp-4],eax
 004741F9    lea         eax,[ebp-0C]
 004741FC    push        eax
 004741FD    lea         eax,[ebp-10]
 00474200    push        eax
 00474201    push        0B0
 00474206    mov         eax,dword ptr [ebp-4]
 00474209    call        TWinControl.GetHandle
 0047420E    push        eax
 0047420F    call        user32.SendMessageA
 00474214    mov         eax,dword ptr [ebp-0C]
 00474217    sub         eax,dword ptr [ebp-10]
 0047421A    mov         dword ptr [ebp-8],eax
 0047421D    mov         eax,dword ptr [ebp-8]
 00474220    mov         esp,ebp
 00474222    pop         ebp
 00474223    ret
end;*}

//00474224
{*procedure sub_00474224(?:?);
begin
 00474224    push        ebp
 00474225    mov         ebp,esp
 00474227    add         esp,0FFFFFFF0
 0047422A    mov         dword ptr [ebp-8],edx
 0047422D    mov         dword ptr [ebp-4],eax
 00474230    lea         eax,[ebp-0C]
 00474233    push        eax
 00474234    lea         eax,[ebp-10]
 00474237    push        eax
 00474238    push        0B0
 0047423D    mov         eax,dword ptr [ebp-4]
 00474240    call        TWinControl.GetHandle
 00474245    push        eax
 00474246    call        user32.SendMessageA
 0047424B    mov         eax,dword ptr [ebp-10]
 0047424E    add         eax,dword ptr [ebp-8]
 00474251    mov         dword ptr [ebp-0C],eax
 00474254    mov         eax,dword ptr [ebp-0C]
 00474257    push        eax
 00474258    mov         eax,dword ptr [ebp-10]
 0047425B    push        eax
 0047425C    push        0B1
 00474261    mov         eax,dword ptr [ebp-4]
 00474264    call        TWinControl.GetHandle
 00474269    push        eax
 0047426A    call        user32.SendMessageA
 0047426F    push        0
 00474271    push        0
 00474273    push        0B7
 00474278    mov         eax,dword ptr [ebp-4]
 0047427B    call        TWinControl.GetHandle
 00474280    push        eax
 00474281    call        user32.SendMessageA
 00474286    mov         esp,ebp
 00474288    pop         ebp
 00474289    ret
end;*}

//0047428C
procedure sub_0047428C;
begin
{*
 0047428C    push        ebp
 0047428D    mov         ebp,esp
 0047428F    push        ecx
 00474290    mov         dword ptr [ebp-4],eax
 00474293    push        4742AC
 00474298    mov         eax,dword ptr [ebp-4]
 0047429B    call        TWinControl.GetHandle
 004742A0    push        eax
 004742A1    call        user32.SetWindowTextA
 004742A6    pop         ecx
 004742A7    pop         ebp
 004742A8    ret
*}
end;

//004742B0
procedure sub_004742B0(?:TCustomMaskEdit);
begin
{*
 004742B0    push        ebp
 004742B1    mov         ebp,esp
 004742B3    push        ecx
 004742B4    mov         dword ptr [ebp-4],eax
 004742B7    push        0
 004742B9    push        0
 004742BB    push        301
 004742C0    mov         eax,dword ptr [ebp-4]
 004742C3    call        TWinControl.GetHandle
 004742C8    push        eax
 004742C9    call        user32.SendMessageA
 004742CE    pop         ecx
 004742CF    pop         ebp
 004742D0    ret
*}
end;

//004742D4
procedure sub_004742D4(?:TCustomEdit);
begin
{*
 004742D4    push        ebp
 004742D5    mov         ebp,esp
 004742D7    push        ecx
 004742D8    mov         dword ptr [ebp-4],eax
 004742DB    push        0FF
 004742DD    push        0
 004742DF    push        0B1
 004742E4    mov         eax,dword ptr [ebp-4]
 004742E7    call        TWinControl.GetHandle
 004742EC    push        eax
 004742ED    call        user32.SendMessageA
 004742F2    pop         ecx
 004742F3    pop         ebp
 004742F4    ret
*}
end;

//004742F8
{*function sub_004742F8(?:?; ?:?):?;
begin
 004742F8    push        ebp
 004742F9    mov         ebp,esp
 004742FB    add         esp,0FFFFFFE8
 004742FE    mov         dword ptr [ebp-0C],ecx
 00474301    mov         dword ptr [ebp-8],edx
 00474304    mov         dword ptr [ebp-4],eax
 00474307    mov         eax,dword ptr [ebp-4]
 0047430A    mov         edx,dword ptr [eax]
 0047430C    call        dword ptr [edx+0D0];TCustomEdit.sub_00474198
 00474312    mov         dword ptr [ebp-18],eax
 00474315    mov         eax,dword ptr [ebp-4]
 00474318    mov         edx,dword ptr [eax]
 0047431A    call        dword ptr [edx+0CC];TCustomEdit.sub_004741F0
 00474320    mov         dword ptr [ebp-10],eax
 00474323    mov         eax,dword ptr [ebp-4]
 00474326    call        00483694
 0047432B    inc         eax
 0047432C    call        0040D098
 00474331    mov         dword ptr [ebp-14],eax
 00474334    xor         eax,eax
 00474336    push        ebp
 00474337    push        47438D
 0047433C    push        dword ptr fs:[eax]
 0047433F    mov         dword ptr fs:[eax],esp
 00474342    mov         eax,dword ptr [ebp-14]
 00474345    call        0040D0C4
 0047434A    mov         ecx,eax
 0047434C    mov         edx,dword ptr [ebp-14]
 0047434F    mov         eax,dword ptr [ebp-4]
 00474352    call        004836B8
 00474357    mov         eax,dword ptr [ebp-10]
 0047435A    cmp         eax,dword ptr [ebp-0C]
>0047435D    jl          00474366
 0047435F    mov         eax,dword ptr [ebp-0C]
 00474362    dec         eax
 00474363    mov         dword ptr [ebp-10],eax
 00474366    mov         edx,dword ptr [ebp-14]
 00474369    add         edx,dword ptr [ebp-18]
 0047436C    mov         ecx,dword ptr [ebp-10]
 0047436F    mov         eax,dword ptr [ebp-8]
 00474372    call        StrLCopy
 00474377    xor         eax,eax
 00474379    pop         edx
 0047437A    pop         ecx
 0047437B    pop         ecx
 0047437C    mov         dword ptr fs:[eax],edx
 0047437F    push        474394
 00474384    mov         eax,dword ptr [ebp-14]
 00474387    call        0040D12C
 0047438C    ret
>0047438D    jmp         @HandleFinally
>00474392    jmp         00474384
 00474394    mov         eax,dword ptr [ebp-10]
 00474397    mov         esp,ebp
 00474399    pop         ebp
 0047439A    ret
end;*}

//0047439C
{*procedure sub_0047439C(?:?);
begin
 0047439C    push        ebp
 0047439D    mov         ebp,esp
 0047439F    add         esp,0FFFFFFEC
 004743A2    mov         dword ptr [ebp-8],edx
 004743A5    mov         dword ptr [ebp-4],eax
 004743A8    mov         eax,dword ptr [ebp-4]
 004743AB    mov         edx,dword ptr [eax]
 004743AD    call        dword ptr [edx+0D0];TCustomEdit.sub_00474198
 004743B3    mov         dword ptr [ebp-10],eax
 004743B6    mov         eax,dword ptr [ebp-4]
 004743B9    mov         edx,dword ptr [eax]
 004743BB    call        dword ptr [edx+0CC];TCustomEdit.sub_004741F0
 004743C1    mov         dword ptr [ebp-14],eax
 004743C4    mov         eax,dword ptr [ebp-8]
 004743C7    mov         ecx,dword ptr [ebp-14]
 004743CA    xor         edx,edx
 004743CC    call        @LStrFromPCharLen
 004743D1    cmp         dword ptr [ebp-14],0
>004743D5    je          0047443D
 004743D7    mov         eax,dword ptr [ebp-4]
 004743DA    call        00483694
 004743DF    inc         eax
 004743E0    call        0040D098
 004743E5    mov         dword ptr [ebp-0C],eax
 004743E8    xor         eax,eax
 004743EA    push        ebp
 004743EB    push        474436
 004743F0    push        dword ptr fs:[eax]
 004743F3    mov         dword ptr fs:[eax],esp
 004743F6    mov         eax,dword ptr [ebp-0C]
 004743F9    call        0040D0C4
 004743FE    mov         ecx,eax
 00474400    mov         edx,dword ptr [ebp-0C]
 00474403    mov         eax,dword ptr [ebp-4]
 00474406    call        004836B8
 0047440B    mov         eax,dword ptr [ebp-0C]
 0047440E    mov         edx,dword ptr [ebp-10]
 00474411    add         eax,edx
 00474413    mov         edx,dword ptr [ebp-8]
 00474416    mov         edx,dword ptr [edx]
 00474418    mov         ecx,dword ptr [ebp-14]
 0047441B    call        Move
 00474420    xor         eax,eax
 00474422    pop         edx
 00474423    pop         ecx
 00474424    pop         ecx
 00474425    mov         dword ptr fs:[eax],edx
 00474428    push        47443D
 0047442D    mov         eax,dword ptr [ebp-0C]
 00474430    call        0040D12C
 00474435    ret
>00474436    jmp         @HandleFinally
>0047443B    jmp         0047442D
 0047443D    mov         esp,ebp
 0047443F    pop         ebp
 00474440    ret
end;*}

//00474444
{*procedure sub_00474444(?:?);
begin
 00474444    push        ebp
 00474445    mov         ebp,esp
 00474447    add         esp,0FFFFFFF8
 0047444A    mov         dword ptr [ebp-8],edx
 0047444D    mov         dword ptr [ebp-4],eax
 00474450    mov         edx,dword ptr [ebp-8]
 00474453    mov         eax,dword ptr [ebp-4]
 00474456    call        00488034
 0047445B    mov         ecx,474524
 00474460    mov         edx,dword ptr [ebp-8]
 00474463    mov         eax,dword ptr [ebp-4]
 00474466    call        00487F0C
 0047446B    mov         eax,dword ptr [ebp-8]
 0047446E    mov         eax,dword ptr [eax+4]
 00474471    or          eax,0C0
 00474476    mov         edx,dword ptr [ebp-4]
 00474479    movzx       edx,byte ptr [edx+20C];TCustomEdit.FBorderStyle:TBorderStyle
 00474480    or          eax,dword ptr [edx*4+56C5F8]
 00474487    mov         edx,dword ptr [ebp-4]
 0047448A    cmp         byte ptr [edx+20D],0;TCustomEdit.FPasswordChar:Char
 00474491    setne       dl
 00474494    and         edx,7F
 00474497    or          eax,dword ptr [edx*4+56C610]
 0047449E    mov         edx,dword ptr [ebp-4]
 004744A1    movzx       edx,byte ptr [edx+20E];TCustomEdit.FReadOnly:Boolean
 004744A8    or          eax,dword ptr [edx*4+56C618]
 004744AF    mov         edx,dword ptr [ebp-4]
 004744B2    movzx       edx,byte ptr [edx+213];TCustomEdit.FCharCase:TEditCharCase
 004744B9    or          eax,dword ptr [edx*4+56C620]
 004744C0    mov         edx,dword ptr [ebp-4]
 004744C3    movzx       edx,byte ptr [edx+211];TCustomEdit.FHideSelection:Boolean
 004744CA    or          eax,dword ptr [edx*4+56C62C]
 004744D1    mov         edx,dword ptr [ebp-4]
 004744D4    movzx       edx,byte ptr [edx+212];TCustomEdit.FOEMConvert:Boolean
 004744DB    or          eax,dword ptr [edx*4+56C634]
 004744E2    mov         edx,dword ptr [ebp-8]
 004744E5    mov         dword ptr [edx+4],eax
 004744E8    mov         eax,[0056E264];^NewStyleControls:Boolean
 004744ED    cmp         byte ptr [eax],0
>004744F0    je          0047451E
 004744F2    mov         eax,dword ptr [ebp-4]
 004744F5    cmp         byte ptr [eax+1A5],0;TCustomEdit.FCtl3D:Boolean
>004744FC    je          0047451E
 004744FE    mov         eax,dword ptr [ebp-4]
 00474501    cmp         byte ptr [eax+20C],1;TCustomEdit.FBorderStyle:TBorderStyle
>00474508    jne         0047451E
 0047450A    mov         eax,dword ptr [ebp-8]
 0047450D    and         dword ptr [eax+4],0FF7FFFFF
 00474514    mov         eax,dword ptr [ebp-8]
 00474517    or          dword ptr [eax+8],200
 0047451E    pop         ecx
 0047451F    pop         ecx
 00474520    pop         ebp
 00474521    ret
end;*}

//0047452C
{*procedure sub_0047452C(?:?);
begin
 0047452C    push        ebp
 0047452D    mov         ebp,esp
 0047452F    add         esp,0FFFFFF6C
 00474535    push        esi
 00474536    push        edi
 00474537    mov         dword ptr [ebp-8],edx
 0047453A    mov         dword ptr [ebp-4],eax
 0047453D    mov         eax,[0056E638];^gvar_0057196C:Integer
 00474542    cmp         byte ptr [eax+0C],0
>00474546    je          004745AB
 00474548    mov         eax,[0056E624];^gvar_0056B7D8
 0047454D    cmp         dword ptr [eax],2
>00474550    je          004745AB
 00474552    mov         eax,dword ptr [ebp-8]
 00474555    test        byte ptr [eax+5],8
>00474559    je          004745AB
 0047455B    mov         eax,dword ptr [ebp-8]
 0047455E    mov         esi,eax
 00474560    lea         edi,[ebp-94]
 00474566    mov         ecx,23
 0047456B    rep movs    dword ptr [edi],dword ptr [esi]
 0047456D    and         dword ptr [ebp-90],0FFFFF7FF
 00474577    lea         edx,[ebp-94]
 0047457D    mov         eax,dword ptr [ebp-4]
 00474580    call        004883D8
 00474585    mov         eax,dword ptr [ebp-4]
 00474588    cmp         dword ptr [eax+180],0;TCustomEdit.FHandle:HWND
>0047458F    je          004745B6
 00474591    push        0
 00474593    push        1
 00474595    push        0CF
 0047459A    mov         eax,dword ptr [ebp-4]
 0047459D    mov         eax,dword ptr [eax+180];TCustomEdit.FHandle:HWND
 004745A3    push        eax
 004745A4    call        user32.SendMessageA
>004745A9    jmp         004745B6
 004745AB    mov         edx,dword ptr [ebp-8]
 004745AE    mov         eax,dword ptr [ebp-4]
 004745B1    call        004883D8
 004745B6    pop         edi
 004745B7    pop         esi
 004745B8    mov         esp,ebp
 004745BA    pop         ebp
 004745BB    ret
end;*}

//004745BC
procedure TCustomEdit.CreateWnd;
begin
{*
 004745BC    push        ebp
 004745BD    mov         ebp,esp
 004745BF    push        ecx
 004745C0    mov         dword ptr [ebp-4],eax
 004745C3    mov         eax,dword ptr [ebp-4]
 004745C6    mov         byte ptr [eax+214],1
 004745CD    xor         eax,eax
 004745CF    push        ebp
 004745D0    push        4745FB
 004745D5    push        dword ptr fs:[eax]
 004745D8    mov         dword ptr fs:[eax],esp
 004745DB    mov         eax,dword ptr [ebp-4]
 004745DE    call        TWinControl.CreateWnd
 004745E3    xor         eax,eax
 004745E5    pop         edx
 004745E6    pop         ecx
 004745E7    pop         ecx
 004745E8    mov         dword ptr fs:[eax],edx
 004745EB    push        474602
 004745F0    mov         eax,dword ptr [ebp-4]
 004745F3    mov         byte ptr [eax+214],0
 004745FA    ret
>004745FB    jmp         @HandleFinally
>00474600    jmp         004745F0
 00474602    mov         eax,dword ptr [ebp-4]
 00474605    mov         edx,dword ptr [eax+208]
 0047460B    mov         eax,dword ptr [ebp-4]
 0047460E    mov         ecx,dword ptr [eax]
 00474610    call        dword ptr [ecx+0C8]
 00474616    mov         eax,dword ptr [ebp-4]
 00474619    mov         dl,byte ptr [eax+215]
 0047461F    mov         eax,dword ptr [ebp-4]
 00474622    call        TCustomEdit.SetModified
 00474627    mov         eax,dword ptr [ebp-4]
 0047462A    cmp         byte ptr [eax+20D],0
>00474631    je          00474653
 00474633    push        0
 00474635    mov         eax,dword ptr [ebp-4]
 00474638    movzx       eax,byte ptr [eax+20D]
 0047463F    push        eax
 00474640    push        0CC
 00474645    mov         eax,dword ptr [ebp-4]
 00474648    call        TWinControl.GetHandle
 0047464D    push        eax
 0047464E    call        user32.SendMessageA
 00474653    mov         eax,dword ptr [ebp-4]
 00474656    call        TCustomEdit.UpdateHeight
 0047465B    pop         ecx
 0047465C    pop         ebp
 0047465D    ret
*}
end;

//00474660
procedure TCustomEdit.DestroyWnd;
begin
{*
 00474660    push        ebp
 00474661    mov         ebp,esp
 00474663    push        ecx
 00474664    mov         dword ptr [ebp-4],eax
 00474667    mov         eax,dword ptr [ebp-4]
 0047466A    call        TCustomEdit.GetModified
 0047466F    mov         edx,dword ptr [ebp-4]
 00474672    mov         byte ptr [edx+215],al
 00474678    mov         eax,dword ptr [ebp-4]
 0047467B    call        004886A4
 00474680    pop         ecx
 00474681    pop         ebp
 00474682    ret
*}
end;

//00474684
procedure TCustomEdit.UpdateHeight;
begin
{*
 00474684    push        ebp
 00474685    mov         ebp,esp
 00474687    push        ecx
 00474688    mov         dword ptr [ebp-4],eax
 0047468B    mov         eax,dword ptr [ebp-4]
 0047468E    cmp         byte ptr [eax+20F],0
>00474695    je          004746BF
 00474697    mov         eax,dword ptr [ebp-4]
 0047469A    cmp         byte ptr [eax+20C],1
>004746A1    jne         004746BF
 004746A3    mov         eax,[004746D8]
 004746A8    mov         edx,dword ptr [ebp-4]
 004746AB    or          eax,dword ptr [edx+50]
 004746AE    mov         edx,dword ptr [ebp-4]
 004746B1    mov         dword ptr [edx+50],eax
 004746B4    mov         eax,dword ptr [ebp-4]
 004746B7    call        004746DC
 004746BC    pop         ecx
 004746BD    pop         ebp
 004746BE    ret
 004746BF    mov         eax,[004746D8]
 004746C4    mov         edx,dword ptr [ebp-4]
 004746C7    not         eax
 004746C9    and         eax,dword ptr [edx+50]
 004746CC    mov         edx,dword ptr [ebp-4]
 004746CF    mov         dword ptr [edx+50],eax
 004746D2    pop         ecx
 004746D3    pop         ebp
 004746D4    ret
*}
end;

//004746DC
procedure sub_004746DC(?:TCustomEdit);
begin
{*
 004746DC    push        ebp
 004746DD    mov         ebp,esp
 004746DF    add         esp,0FFFFFF80
 004746E2    mov         dword ptr [ebp-4],eax
 004746E5    push        0
 004746E7    call        user32.GetDC
 004746EC    mov         dword ptr [ebp-8],eax
 004746EF    lea         eax,[ebp-48]
 004746F2    push        eax
 004746F3    mov         eax,dword ptr [ebp-8]
 004746F6    push        eax
 004746F7    call        gdi32.GetTextMetricsA
 004746FC    mov         eax,dword ptr [ebp-4]
 004746FF    mov         eax,dword ptr [eax+68];TCustomEdit.FFont:TFont
 00474702    call        0042E12C
 00474707    push        eax
 00474708    mov         eax,dword ptr [ebp-8]
 0047470B    push        eax
 0047470C    call        gdi32.SelectObject
 00474711    mov         dword ptr [ebp-0C],eax
 00474714    lea         eax,[ebp-80]
 00474717    push        eax
 00474718    mov         eax,dword ptr [ebp-8]
 0047471B    push        eax
 0047471C    call        gdi32.GetTextMetricsA
 00474721    mov         eax,dword ptr [ebp-0C]
 00474724    push        eax
 00474725    mov         eax,dword ptr [ebp-8]
 00474728    push        eax
 00474729    call        gdi32.SelectObject
 0047472E    mov         eax,dword ptr [ebp-8]
 00474731    push        eax
 00474732    push        0
 00474734    call        user32.ReleaseDC
 00474739    mov         eax,[0056E264];^NewStyleControls:Boolean
 0047473E    cmp         byte ptr [eax],0
>00474741    je          0047476E
 00474743    mov         eax,dword ptr [ebp-4]
 00474746    cmp         byte ptr [eax+1A5],0;TCustomEdit.FCtl3D:Boolean
>0047474D    je          00474758
 0047474F    mov         dword ptr [ebp-10],8
>00474756    jmp         0047475F
 00474758    mov         dword ptr [ebp-10],6
 0047475F    push        6
 00474761    call        user32.GetSystemMetrics
 00474766    imul        dword ptr [ebp-10]
 00474769    mov         dword ptr [ebp-10],eax
>0047476C    jmp         0047479E
 0047476E    mov         eax,dword ptr [ebp-48]
 00474771    mov         dword ptr [ebp-10],eax
 00474774    mov         eax,dword ptr [ebp-10]
 00474777    cmp         eax,dword ptr [ebp-80]
>0047477A    jle         00474782
 0047477C    mov         eax,dword ptr [ebp-80]
 0047477F    mov         dword ptr [ebp-10],eax
 00474782    push        6
 00474784    call        user32.GetSystemMetrics
 00474789    shl         eax,2
 0047478C    mov         edx,dword ptr [ebp-10]
 0047478F    test        edx,edx
>00474791    jns         00474796
 00474793    add         edx,3
 00474796    sar         edx,2
 00474799    add         eax,edx
 0047479B    mov         dword ptr [ebp-10],eax
 0047479E    mov         edx,dword ptr [ebp-80]
 004747A1    add         edx,dword ptr [ebp-10]
 004747A4    mov         eax,dword ptr [ebp-4]
 004747A7    call        TToolButton.SetHeight
 004747AC    mov         esp,ebp
 004747AE    pop         ebp
 004747AF    ret
*}
end;

//004747B0
procedure TCustomEdit.sub_004747B0;
begin
{*
 004747B0    push        ebp
 004747B1    mov         ebp,esp
 004747B3    push        ecx
 004747B4    push        ebx
 004747B5    mov         dword ptr [ebp-4],eax
 004747B8    mov         eax,dword ptr [ebp-4]
 004747BB    call        00483218
 004747C0    mov         eax,dword ptr [ebp-4]
 004747C3    cmp         word ptr [eax+21A],0;TCustomEdit.?f21A:word
>004747CB    je          004747DF
 004747CD    mov         ebx,dword ptr [ebp-4]
 004747D0    mov         edx,dword ptr [ebp-4]
 004747D3    mov         eax,dword ptr [ebx+21C];TCustomEdit.?f21C:dword
 004747D9    call        dword ptr [ebx+218];TCustomEdit.FOnChange
 004747DF    pop         ebx
 004747E0    pop         ecx
 004747E1    pop         ebp
 004747E2    ret
*}
end;

//004747E4
procedure TCustomEdit.DefaultHandler(var Message:void );
begin
{*
 004747E4    push        ebp
 004747E5    mov         ebp,esp
 004747E7    add         esp,0FFFFFFF8
 004747EA    mov         dword ptr [ebp-8],edx
 004747ED    mov         dword ptr [ebp-4],eax
 004747F0    mov         eax,dword ptr [ebp-8];{Win32Platform}
 004747F3    mov         eax,dword ptr [eax]
 004747F5    sub         eax,7
>004747F8    jne         0047481C
 004747FA    mov         eax,[0056E624];^gvar_0056B7D8
 004747FF    cmp         dword ptr [eax],1;{IsWindow}
>00474802    jne         0047481C
 00474804    mov         eax,dword ptr [ebp-8]
 00474807    mov         eax,dword ptr [eax+4]
 0047480A    push        eax
 0047480B    call        user32.IsWindow
 00474810    test        eax,eax
>00474812    jne         0047481C
 00474814    mov         eax,dword ptr [ebp-8]
 00474817    xor         edx,edx
 00474819    mov         dword ptr [eax+4],edx
 0047481C    mov         edx,dword ptr [ebp-8]
 0047481F    mov         eax,dword ptr [ebp-4]
 00474822    call        TWinControl.DefaultHandler
 00474827    pop         ecx
 00474828    pop         ecx
 00474829    pop         ebp
 0047482A    ret
*}
end;

//0047482C
{*procedure TCustomEdit.WMSetFont(?:?);
begin
 0047482C    push        ebp
 0047482D    mov         ebp,esp
 0047482F    add         esp,0FFFFFFF8
 00474832    mov         dword ptr [ebp-8],edx
 00474835    mov         dword ptr [ebp-4],eax
 00474838    mov         edx,dword ptr [ebp-8]
 0047483B    mov         eax,dword ptr [ebp-4]
 0047483E    mov         ecx,dword ptr [eax]
 00474840    call        dword ptr [ecx-10];TCustomEdit.DefaultHandler
 00474843    mov         eax,[0056E264];^NewStyleControls:Boolean
 00474848    cmp         byte ptr [eax],0
>0047484B    je          00474878
 0047484D    push        0F0
 0047484F    mov         eax,dword ptr [ebp-4]
 00474852    call        TWinControl.GetHandle
 00474857    push        eax
 00474858    call        user32.GetWindowLongA
 0047485D    test        al,4
>0047485F    jne         00474878
 00474861    push        0
 00474863    push        3
 00474865    push        0D3
 0047486A    mov         eax,dword ptr [ebp-4]
 0047486D    call        TWinControl.GetHandle
 00474872    push        eax
 00474873    call        user32.SendMessageA
 00474878    pop         ecx
 00474879    pop         ecx
 0047487A    pop         ebp
 0047487B    ret
end;*}

//0047487C
{*procedure TCustomEdit.CMCtl3DChanged(?:?);
begin
 0047487C    push        ebp
 0047487D    mov         ebp,esp
 0047487F    add         esp,0FFFFFFF8
 00474882    mov         dword ptr [ebp-8],edx
 00474885    mov         dword ptr [ebp-4],eax
 00474888    mov         eax,[0056E264];^NewStyleControls:Boolean
 0047488D    cmp         byte ptr [eax],0
>00474890    je          004748AE
 00474892    mov         eax,dword ptr [ebp-4]
 00474895    cmp         byte ptr [eax+20C],1;TCustomEdit.FBorderStyle:TBorderStyle
>0047489C    jne         004748AE
 0047489E    mov         eax,dword ptr [ebp-4]
 004748A1    call        TCustomEdit.UpdateHeight
 004748A6    mov         eax,dword ptr [ebp-4]
 004748A9    call        TWinControl.RecreateWnd
 004748AE    mov         edx,dword ptr [ebp-8]
 004748B1    mov         eax,dword ptr [ebp-4]
 004748B4    call        TWinControl.CMCtl3DChanged
 004748B9    pop         ecx
 004748BA    pop         ecx
 004748BB    pop         ebp
 004748BC    ret
end;*}

//004748C0
{*procedure TCustomEdit.CMFontChanged(?:?);
begin
 004748C0    push        ebp
 004748C1    mov         ebp,esp
 004748C3    add         esp,0FFFFFFF8
 004748C6    mov         dword ptr [ebp-8],edx
 004748C9    mov         dword ptr [ebp-4],eax
 004748CC    mov         edx,dword ptr [ebp-8]
 004748CF    mov         eax,dword ptr [ebp-4]
 004748D2    call        TWinControl.CMFontChanged
 004748D7    mov         eax,dword ptr [ebp-4]
 004748DA    test        byte ptr [eax+51],2;TCustomEdit.?f51:byte
>004748DE    je          004748FA
 004748E0    mov         eax,dword ptr [ebp-4]
 004748E3    test        byte ptr [eax+1C],10;TCustomEdit.FComponentState:TComponentState
>004748E7    je          004748F2
 004748E9    mov         eax,dword ptr [ebp-4]
 004748EC    test        byte ptr [eax+1C],1;TCustomEdit.FComponentState:TComponentState
>004748F0    jne         004748FA
 004748F2    mov         eax,dword ptr [ebp-4]
 004748F5    call        004746DC
 004748FA    pop         ecx
 004748FB    pop         ecx
 004748FC    pop         ebp
 004748FD    ret
end;*}

//00474900
{*procedure TCustomEdit.sub_00474900(?:?);
begin
 00474900    push        ebp
 00474901    mov         ebp,esp
 00474903    add         esp,0FFFFFFF8
 00474906    push        esi
 00474907    mov         dword ptr [ebp-8],edx
 0047490A    mov         dword ptr [ebp-4],eax
 0047490D    mov         eax,dword ptr [ebp-8]
 00474910    cmp         word ptr [eax+6],300
>00474916    jne         00474930
 00474918    mov         eax,dword ptr [ebp-4]
 0047491B    cmp         byte ptr [eax+214],0;TCustomEdit.FCreating:Boolean
>00474922    jne         00474930
 00474924    mov         eax,dword ptr [ebp-4]
 00474927    mov         si,0FFB3
 0047492B    call        @CallDynaInst;TCustomEdit.sub_004747B0
 00474930    pop         esi
 00474931    pop         ecx
 00474932    pop         ecx
 00474933    pop         ebp
 00474934    ret
end;*}

//00474938
{*procedure TCustomEdit.CMEnter(?:?);
begin
 00474938    push        ebp
 00474939    mov         ebp,esp
 0047493B    add         esp,0FFFFFFF8
 0047493E    mov         dword ptr [ebp-8],edx
 00474941    mov         dword ptr [ebp-4],eax
 00474944    mov         eax,dword ptr [ebp-4]
 00474947    cmp         byte ptr [eax+210],0;TCustomEdit.FAutoSelect:Boolean
>0047494E    je          00474975
 00474950    mov         eax,dword ptr [ebp-4]
 00474953    test        byte ptr [eax+54],1;TCustomEdit.FControlState:TControlState
>00474957    jne         00474975
 00474959    push        0F0
 0047495B    mov         eax,dword ptr [ebp-4]
 0047495E    call        TWinControl.GetHandle
 00474963    push        eax
 00474964    call        user32.GetWindowLongA
 00474969    test        al,4
>0047496B    jne         00474975
 0047496D    mov         eax,dword ptr [ebp-4]
 00474970    call        004742D4
 00474975    mov         edx,dword ptr [ebp-8]
 00474978    mov         eax,dword ptr [ebp-4]
 0047497B    call        TWinControl.CMEnter
 00474980    pop         ecx
 00474981    pop         ecx
 00474982    pop         ebp
 00474983    ret
end;*}

//00474984
{*procedure TCustomEdit.CMTextChanged(?:?);
begin
 00474984    push        ebp
 00474985    mov         ebp,esp
 00474987    add         esp,0FFFFFFF8
 0047498A    push        esi
 0047498B    mov         dword ptr [ebp-8],edx
 0047498E    mov         dword ptr [ebp-4],eax
 00474991    mov         edx,dword ptr [ebp-8]
 00474994    mov         eax,dword ptr [ebp-4]
 00474997    mov         ecx,dword ptr [eax]
 00474999    call        dword ptr [ecx-10];TCustomEdit.DefaultHandler
 0047499C    mov         eax,dword ptr [ebp-4]
 0047499F    call        TWinControl.HandleAllocated
 004749A4    test        al,al
>004749A6    je          004749BC
 004749A8    push        0F0
 004749AA    mov         eax,dword ptr [ebp-4]
 004749AD    call        TWinControl.GetHandle
 004749B2    push        eax
 004749B3    call        user32.GetWindowLongA
 004749B8    test        al,4
>004749BA    je          004749C8
 004749BC    mov         eax,dword ptr [ebp-4]
 004749BF    mov         si,0FFB3
 004749C3    call        @CallDynaInst;TCustomEdit.sub_004747B0
 004749C8    pop         esi
 004749C9    pop         ecx
 004749CA    pop         ecx
 004749CB    pop         ebp
 004749CC    ret
end;*}

//004749D0
{*procedure TCustomEdit.WMContextMenu(?:?);
begin
 004749D0    push        ebp
 004749D1    mov         ebp,esp
 004749D3    add         esp,0FFFFFFF8
 004749D6    mov         dword ptr [ebp-8],edx
 004749D9    mov         dword ptr [ebp-4],eax
 004749DC    mov         eax,dword ptr [ebp-4]
 004749DF    mov         edx,dword ptr [eax]
 004749E1    call        dword ptr [edx+0C4];TCustomEdit.sub_0048C028
 004749E7    mov         edx,dword ptr [ebp-8]
 004749EA    mov         eax,dword ptr [ebp-4]
 004749ED    call        TWinControl.WMContextMenu
 004749F2    pop         ecx
 004749F3    pop         ecx
 004749F4    pop         ebp
 004749F5    ret
end;*}

//004749F8
{*function sub_004749F8:?;
begin
 004749F8    push        ebp
 004749F9    mov         ebp,esp
 004749FB    add         esp,0FFFFFFF8
 004749FE    mov         dword ptr [ebp-4],eax
 00474A01    xor         eax,eax
 00474A03    mov         dword ptr [ebp-8],eax
 00474A06    mov         eax,dword ptr [ebp-4]
 00474A09    mov         eax,dword ptr [eax+10];TMemoStrings................................Memo:TCustomMemo
 00474A0C    call        TWinControl.HandleAllocated
 00474A11    test        al,al
>00474A13    jne         00474A21
 00474A15    mov         eax,dword ptr [ebp-4]
 00474A18    mov         eax,dword ptr [eax+10];TMemoStrings.................................Memo:TCustomMemo
 00474A1B    cmp         dword ptr [eax+64],0;TCustomMemo.FText:PChar
>00474A1F    je          00474A7B
 00474A21    push        0
 00474A23    push        0
 00474A25    push        0BA
 00474A2A    mov         eax,dword ptr [ebp-4]
 00474A2D    mov         eax,dword ptr [eax+10];TMemoStrings..................................Memo:TCustomMemo
 00474A30    call        TWinControl.GetHandle
 00474A35    push        eax
 00474A36    call        user32.SendMessageA
 00474A3B    mov         dword ptr [ebp-8],eax
 00474A3E    push        0
 00474A40    push        0
 00474A42    mov         eax,dword ptr [ebp-8]
 00474A45    dec         eax
 00474A46    push        eax
 00474A47    push        0BB
 00474A4C    mov         eax,dword ptr [ebp-4]
 00474A4F    mov         eax,dword ptr [eax+10];TMemoStrings...................................Memo:TCustomMemo
 00474A52    call        TWinControl.GetHandle
 00474A57    push        eax
 00474A58    call        user32.SendMessageA
 00474A5D    push        eax
 00474A5E    push        0C1
 00474A63    mov         eax,dword ptr [ebp-4]
 00474A66    mov         eax,dword ptr [eax+10];TMemoStrings....................................Memo:TCustomMemo
 00474A69    call        TWinControl.GetHandle
 00474A6E    push        eax
 00474A6F    call        user32.SendMessageA
 00474A74    test        eax,eax
>00474A76    jne         00474A7B
 00474A78    dec         dword ptr [ebp-8]
 00474A7B    mov         eax,dword ptr [ebp-8]
 00474A7E    pop         ecx
 00474A7F    pop         ecx
 00474A80    pop         ebp
 00474A81    ret
end;*}

//00474A84
{*procedure sub_00474A84(?:?; ?:?);
begin
 00474A84    push        ebp
 00474A85    mov         ebp,esp
 00474A87    add         esp,0FFFFF004
 00474A8D    push        eax
 00474A8E    add         esp,0FFFFFFF4
 00474A91    mov         dword ptr [ebp-0C],ecx
 00474A94    mov         dword ptr [ebp-8],edx
 00474A97    mov         dword ptr [ebp-4],eax
 00474A9A    lea         eax,[ebp-100C]
 00474AA0    mov         word ptr [eax],1000
 00474AA5    lea         eax,[ebp-100C]
 00474AAB    push        eax
 00474AAC    mov         eax,dword ptr [ebp-8]
 00474AAF    push        eax
 00474AB0    push        0C4
 00474AB5    mov         eax,dword ptr [ebp-4]
 00474AB8    mov         eax,dword ptr [eax+10];TMemoStrings.....................................Memo:TCustomMemo
 00474ABB    call        TWinControl.GetHandle
 00474AC0    push        eax
 00474AC1    call        user32.SendMessageA
 00474AC6    mov         ecx,eax
 00474AC8    lea         edx,[ebp-100C]
 00474ACE    mov         eax,dword ptr [ebp-0C]
 00474AD1    call        @LStrFromPCharLen
 00474AD6    mov         esp,ebp
 00474AD8    pop         ebp
 00474AD9    ret
end;*}

//00474ADC
{*procedure sub_00474ADC(?:?; ?:?);
begin
 00474ADC    push        ebp
 00474ADD    mov         ebp,esp
 00474ADF    add         esp,0FFFFFFF0
 00474AE2    mov         dword ptr [ebp-0C],ecx
 00474AE5    mov         dword ptr [ebp-8],edx
 00474AE8    mov         dword ptr [ebp-4],eax
 00474AEB    push        0
 00474AED    mov         eax,dword ptr [ebp-8]
 00474AF0    push        eax
 00474AF1    push        0BB
 00474AF6    mov         eax,dword ptr [ebp-4]
 00474AF9    mov         eax,dword ptr [eax+10];TMemoStrings......................................Memo:TCustomMem...
 00474AFC    call        TWinControl.GetHandle
 00474B01    push        eax
 00474B02    call        user32.SendMessageA
 00474B07    mov         dword ptr [ebp-10],eax
 00474B0A    cmp         dword ptr [ebp-10],0
>00474B0E    jl          00474B6B
 00474B10    push        0
 00474B12    mov         eax,dword ptr [ebp-10]
 00474B15    push        eax
 00474B16    push        0C1
 00474B1B    mov         eax,dword ptr [ebp-4]
 00474B1E    mov         eax,dword ptr [eax+10];TMemoStrings.......................................Memo:TCustomMe...
 00474B21    call        TWinControl.GetHandle
 00474B26    push        eax
 00474B27    call        user32.SendMessageA
 00474B2C    add         eax,dword ptr [ebp-10]
 00474B2F    push        eax
 00474B30    mov         eax,dword ptr [ebp-10]
 00474B33    push        eax
 00474B34    push        0B1
 00474B39    mov         eax,dword ptr [ebp-4]
 00474B3C    mov         eax,dword ptr [eax+10];TMemoStrings........................................Memo:TCustomM...
 00474B3F    call        TWinControl.GetHandle
 00474B44    push        eax
 00474B45    call        user32.SendMessageA
 00474B4A    mov         eax,dword ptr [ebp-0C]
 00474B4D    call        @LStrToPChar
 00474B52    push        eax
 00474B53    push        0
 00474B55    push        0C2
 00474B5A    mov         eax,dword ptr [ebp-4]
 00474B5D    mov         eax,dword ptr [eax+10];TMemoStrings.........................................Memo:TCustom...
 00474B60    call        TWinControl.GetHandle
 00474B65    push        eax
 00474B66    call        user32.SendMessageA
 00474B6B    mov         esp,ebp
 00474B6D    pop         ebp
 00474B6E    ret
end;*}

//00474B70
{*procedure sub_00474B70(?:?; ?:?);
begin
 00474B70    push        ebp
 00474B71    mov         ebp,esp
 00474B73    add         esp,0FFFFFFE8
 00474B76    push        ebx
 00474B77    xor         ebx,ebx
 00474B79    mov         dword ptr [ebp-18],ebx
 00474B7C    mov         dword ptr [ebp-0C],ecx
 00474B7F    mov         dword ptr [ebp-8],edx
 00474B82    mov         dword ptr [ebp-4],eax
 00474B85    xor         eax,eax
 00474B87    push        ebp
 00474B88    push        474C8A
 00474B8D    push        dword ptr fs:[eax]
 00474B90    mov         dword ptr fs:[eax],esp
 00474B93    cmp         dword ptr [ebp-8],0
>00474B97    jl          00474C74
 00474B9D    push        0
 00474B9F    mov         eax,dword ptr [ebp-8]
 00474BA2    push        eax
 00474BA3    push        0BB
 00474BA8    mov         eax,dword ptr [ebp-4]
 00474BAB    mov         eax,dword ptr [eax+10];TMemoStrings..........................................Memo:TCusto...
 00474BAE    call        TWinControl.GetHandle
 00474BB3    push        eax
 00474BB4    call        user32.SendMessageA
 00474BB9    mov         dword ptr [ebp-10],eax
 00474BBC    cmp         dword ptr [ebp-10],0
>00474BC0    jl          00474BD4
 00474BC2    lea         eax,[ebp-18]
 00474BC5    mov         ecx,474CA0;#13+#10
 00474BCA    mov         edx,dword ptr [ebp-0C]
 00474BCD    call        @LStrCat3
>00474BD2    jmp         00474C35
 00474BD4    push        0
 00474BD6    mov         eax,dword ptr [ebp-8]
 00474BD9    dec         eax
 00474BDA    push        eax
 00474BDB    push        0BB
 00474BE0    mov         eax,dword ptr [ebp-4]
 00474BE3    mov         eax,dword ptr [eax+10];TMemoStrings...........................................Memo:TCust...
 00474BE6    call        TWinControl.GetHandle
 00474BEB    push        eax
 00474BEC    call        user32.SendMessageA
 00474BF1    mov         dword ptr [ebp-10],eax
 00474BF4    cmp         dword ptr [ebp-10],0
>00474BF8    jl          00474C74
 00474BFA    push        0
 00474BFC    mov         eax,dword ptr [ebp-10]
 00474BFF    push        eax
 00474C00    push        0C1
 00474C05    mov         eax,dword ptr [ebp-4]
 00474C08    mov         eax,dword ptr [eax+10];TMemoStrings............................................Memo:TCus...
 00474C0B    call        TWinControl.GetHandle
 00474C10    push        eax
 00474C11    call        user32.SendMessageA
 00474C16    mov         dword ptr [ebp-14],eax
 00474C19    cmp         dword ptr [ebp-14],0
>00474C1D    je          00474C74
 00474C1F    mov         eax,dword ptr [ebp-14]
 00474C22    add         dword ptr [ebp-10],eax
 00474C25    lea         eax,[ebp-18]
 00474C28    mov         ecx,dword ptr [ebp-0C]
 00474C2B    mov         edx,474CA0;#13+#10
 00474C30    call        @LStrCat3
 00474C35    mov         eax,dword ptr [ebp-10]
 00474C38    push        eax
 00474C39    mov         eax,dword ptr [ebp-10]
 00474C3C    push        eax
 00474C3D    push        0B1
 00474C42    mov         eax,dword ptr [ebp-4]
 00474C45    mov         eax,dword ptr [eax+10];TMemoStrings.............................................Memo:TCu...
 00474C48    call        TWinControl.GetHandle
 00474C4D    push        eax
 00474C4E    call        user32.SendMessageA
 00474C53    mov         eax,dword ptr [ebp-18]
 00474C56    call        @LStrToPChar
 00474C5B    push        eax
 00474C5C    push        0
 00474C5E    push        0C2
 00474C63    mov         eax,dword ptr [ebp-4]
 00474C66    mov         eax,dword ptr [eax+10];TMemoStrings..............................................Memo:TC...
 00474C69    call        TWinControl.GetHandle
 00474C6E    push        eax
 00474C6F    call        user32.SendMessageA
 00474C74    xor         eax,eax
 00474C76    pop         edx
 00474C77    pop         ecx
 00474C78    pop         ecx
 00474C79    mov         dword ptr fs:[eax],edx
 00474C7C    push        474C91
 00474C81    lea         eax,[ebp-18]
 00474C84    call        @LStrClr
 00474C89    ret
>00474C8A    jmp         @HandleFinally
>00474C8F    jmp         00474C81
 00474C91    pop         ebx
 00474C92    mov         esp,ebp
 00474C94    pop         ebp
 00474C95    ret
end;*}

//00474CA8
{*procedure sub_00474CA8(?:?);
begin
 00474CA8    push        ebp
 00474CA9    mov         ebp,esp
 00474CAB    add         esp,0FFFFFFF0
 00474CAE    mov         dword ptr [ebp-8],edx
 00474CB1    mov         dword ptr [ebp-4],eax
 00474CB4    push        0
 00474CB6    mov         eax,dword ptr [ebp-8]
 00474CB9    push        eax
 00474CBA    push        0BB
 00474CBF    mov         eax,dword ptr [ebp-4]
 00474CC2    mov         eax,dword ptr [eax+10];TMemoStrings...............................................Memo:T...
 00474CC5    call        TWinControl.GetHandle
 00474CCA    push        eax
 00474CCB    call        user32.SendMessageA
 00474CD0    mov         dword ptr [ebp-0C],eax
 00474CD3    cmp         dword ptr [ebp-0C],0
>00474CD7    jl          00474D61
 00474CDD    push        0
 00474CDF    mov         eax,dword ptr [ebp-8]
 00474CE2    inc         eax
 00474CE3    push        eax
 00474CE4    push        0BB
 00474CE9    mov         eax,dword ptr [ebp-4]
 00474CEC    mov         eax,dword ptr [eax+10];TMemoStrings................................................Memo:...
 00474CEF    call        TWinControl.GetHandle
 00474CF4    push        eax
 00474CF5    call        user32.SendMessageA
 00474CFA    mov         dword ptr [ebp-10],eax
 00474CFD    cmp         dword ptr [ebp-10],0
>00474D01    jge         00474D25
 00474D03    push        0
 00474D05    mov         eax,dword ptr [ebp-0C]
 00474D08    push        eax
 00474D09    push        0C1
 00474D0E    mov         eax,dword ptr [ebp-4]
 00474D11    mov         eax,dword ptr [eax+10];TMemoStrings.................................................Memo...
 00474D14    call        TWinControl.GetHandle
 00474D19    push        eax
 00474D1A    call        user32.SendMessageA
 00474D1F    add         eax,dword ptr [ebp-0C]
 00474D22    mov         dword ptr [ebp-10],eax
 00474D25    mov         eax,dword ptr [ebp-10]
 00474D28    push        eax
 00474D29    mov         eax,dword ptr [ebp-0C]
 00474D2C    push        eax
 00474D2D    push        0B1
 00474D32    mov         eax,dword ptr [ebp-4]
 00474D35    mov         eax,dword ptr [eax+10];TMemoStrings..................................................Mem...
 00474D38    call        TWinControl.GetHandle
 00474D3D    push        eax
 00474D3E    call        user32.SendMessageA
 00474D43    mov         eax,[0056C63C];^gvar_00474CA4
 00474D48    push        eax
 00474D49    push        0
 00474D4B    push        0C2
 00474D50    mov         eax,dword ptr [ebp-4]
 00474D53    mov         eax,dword ptr [eax+10];TMemoStrings...................................................Me...
 00474D56    call        TWinControl.GetHandle
 00474D5B    push        eax
 00474D5C    call        user32.SendMessageA
 00474D61    mov         esp,ebp
 00474D63    pop         ebp
 00474D64    ret
end;*}

//00474D68
procedure TMemoStrings.Clear;
begin
{*
 00474D68    push        ebp
 00474D69    mov         ebp,esp
 00474D6B    push        ecx
 00474D6C    mov         dword ptr [ebp-4],eax
 00474D6F    mov         eax,dword ptr [ebp-4]
 00474D72    mov         eax,dword ptr [eax+10];TMemoStrings....................................................M...
 00474D75    mov         edx,dword ptr [eax]
 00474D77    call        dword ptr [edx+0E0];TCustomMemo.sub_0047428C
 00474D7D    pop         ecx
 00474D7E    pop         ebp
 00474D7F    ret
*}
end;

//00474D80
{*procedure sub_00474D80(?:?);
begin
 00474D80    push        ebp
 00474D81    mov         ebp,esp
 00474D83    add         esp,0FFFFFFF8
 00474D86    mov         byte ptr [ebp-5],dl
 00474D89    mov         dword ptr [ebp-4],eax
 00474D8C    mov         eax,dword ptr [ebp-4]
 00474D8F    mov         eax,dword ptr [eax+10];TMemoStrings........................................................
 00474D92    call        TWinControl.HandleAllocated
 00474D97    test        al,al
>00474D99    je          00474DDE
 00474D9B    push        0
 00474D9D    mov         al,byte ptr [ebp-5]
 00474DA0    xor         al,1
 00474DA2    and         eax,7F
 00474DA5    push        eax
 00474DA6    push        0B
 00474DA8    mov         eax,dword ptr [ebp-4]
 00474DAB    mov         eax,dword ptr [eax+10];TMemoStrings........................................................
 00474DAE    call        TWinControl.GetHandle
 00474DB3    push        eax
 00474DB4    call        user32.SendMessageA
 00474DB9    cmp         byte ptr [ebp-5],0
>00474DBD    jne         00474DDE
 00474DBF    push        0
 00474DC1    xor         ecx,ecx
 00474DC3    mov         edx,0B019
 00474DC8    mov         eax,dword ptr [ebp-4]
 00474DCB    mov         eax,dword ptr [eax+10];TMemoStrings........................................................
 00474DCE    call        00484FFC
 00474DD3    mov         eax,dword ptr [ebp-4]
 00474DD6    mov         eax,dword ptr [eax+10];TMemoStrings........................................................
 00474DD9    call        00484000
 00474DDE    pop         ecx
 00474DDF    pop         ecx
 00474DE0    pop         ebp
 00474DE1    ret
end;*}

//00474DE4
{*procedure sub_00474DE4(?:?);
begin
 00474DE4    push        ebp
 00474DE5    mov         ebp,esp
 00474DE7    add         esp,0FFFFFFF8
 00474DEA    mov         dword ptr [ebp-8],edx
 00474DED    mov         dword ptr [ebp-4],eax
 00474DF0    mov         edx,dword ptr [ebp-8]
 00474DF3    mov         eax,dword ptr [ebp-4]
 00474DF6    mov         eax,dword ptr [eax+10];TMemoStrings........................................................
 00474DF9    call        TPanel.GetCaption
 00474DFE    pop         ecx
 00474DFF    pop         ecx
 00474E00    pop         ebp
 00474E01    ret
end;*}

//00474E04
{*procedure sub_00474E04(?:?);
begin
 00474E04    push        ebp
 00474E05    mov         ebp,esp
 00474E07    xor         ecx,ecx
 00474E09    push        ecx
 00474E0A    push        ecx
 00474E0B    push        ecx
 00474E0C    push        ecx
 00474E0D    push        ecx
 00474E0E    push        ebx
 00474E0F    mov         dword ptr [ebp-8],edx
 00474E12    mov         dword ptr [ebp-4],eax
 00474E15    xor         eax,eax
 00474E17    push        ebp
 00474E18    push        474EDC
 00474E1D    push        dword ptr fs:[eax]
 00474E20    mov         dword ptr fs:[eax],esp
 00474E23    lea         ecx,[ebp-0C]
 00474E26    mov         dl,1
 00474E28    mov         eax,dword ptr [ebp-8]
 00474E2B    call        0040C060
 00474E30    mov         eax,dword ptr [ebp-0C]
 00474E33    call        @LStrLen
 00474E38    mov         ebx,eax
 00474E3A    mov         eax,dword ptr [ebp-4]
 00474E3D    mov         eax,dword ptr [eax+10];TMemoStrings........................................................
 00474E40    call        00483694
 00474E45    cmp         ebx,eax
>00474E47    jne         00474E64
 00474E49    lea         edx,[ebp-10]
 00474E4C    mov         eax,dword ptr [ebp-4]
 00474E4F    mov         eax,dword ptr [eax+10];TMemoStrings........................................................
 00474E52    call        TPanel.GetCaption
 00474E57    mov         edx,dword ptr [ebp-10]
 00474E5A    mov         eax,dword ptr [ebp-0C]
 00474E5D    call        @LStrCmp
>00474E62    je          00474EB6
 00474E64    mov         eax,dword ptr [ebp-0C]
 00474E67    push        eax
 00474E68    push        0
 00474E6A    push        0C
 00474E6C    mov         eax,dword ptr [ebp-4]
 00474E6F    mov         eax,dword ptr [eax+10];TMemoStrings........................................................
 00474E72    call        TWinControl.GetHandle
 00474E77    push        eax
 00474E78    call        user32.SendMessageA
 00474E7D    test        eax,eax
>00474E7F    jne         00474EA2
 00474E81    lea         edx,[ebp-14]
 00474E84    mov         eax,[0056E474];^SInvalidMemoSize:TResStringRec
 00474E89    call        LoadResString
 00474E8E    mov         ecx,dword ptr [ebp-14]
 00474E91    mov         dl,1
 00474E93    mov         eax,[0041D40C];EInvalidOperation
 00474E98    call        Exception.Create;EInvalidOperation.Create
 00474E9D    call        @RaiseExcept
 00474EA2    push        0
 00474EA4    xor         ecx,ecx
 00474EA6    mov         edx,0B012
 00474EAB    mov         eax,dword ptr [ebp-4]
 00474EAE    mov         eax,dword ptr [eax+10];TMemoStrings........................................................
 00474EB1    call        00484FFC
 00474EB6    xor         eax,eax
 00474EB8    pop         edx
 00474EB9    pop         ecx
 00474EBA    pop         ecx
 00474EBB    mov         dword ptr fs:[eax],edx
 00474EBE    push        474EE3
 00474EC3    lea         eax,[ebp-14]
 00474EC6    call        @LStrClr
 00474ECB    lea         eax,[ebp-10]
 00474ECE    call        @LStrClr
 00474ED3    lea         eax,[ebp-0C]
 00474ED6    call        @LStrClr
 00474EDB    ret
>00474EDC    jmp         @HandleFinally
>00474EE1    jmp         00474EC3
 00474EE3    pop         ebx
 00474EE4    mov         esp,ebp
 00474EE6    pop         ebp
 00474EE7    ret
end;*}

//00474EE8
constructor sub_00474EE8;
begin
{*
 00474EE8    push        ebp
 00474EE9    mov         ebp,esp
 00474EEB    add         esp,0FFFFFFF4
 00474EEE    test        dl,dl
>00474EF0    je          00474EFA
 00474EF2    add         esp,0FFFFFFF0
 00474EF5    call        @ClassCreate
 00474EFA    mov         dword ptr [ebp-0C],ecx
 00474EFD    mov         byte ptr [ebp-5],dl
 00474F00    mov         dword ptr [ebp-4],eax
 00474F03    mov         ecx,dword ptr [ebp-0C]
 00474F06    xor         edx,edx
 00474F08    mov         eax,dword ptr [ebp-4]
 00474F0B    call        00473DC0
 00474F10    mov         edx,0B9
 00474F15    mov         eax,dword ptr [ebp-4]
 00474F18    call        TSplitter.SetWidth
 00474F1D    mov         edx,59
 00474F22    mov         eax,dword ptr [ebp-4]
 00474F25    call        TToolButton.SetHeight
 00474F2A    xor         edx,edx
 00474F2C    mov         eax,dword ptr [ebp-4]
 00474F2F    mov         ecx,dword ptr [eax]
 00474F31    call        dword ptr [ecx+5C];TLabeledEdit.SetAutoSize
 00474F34    mov         eax,dword ptr [ebp-4]
 00474F37    mov         byte ptr [eax+226],1;TCustomMemo.FWordWrap:Boolean
 00474F3E    mov         eax,dword ptr [ebp-4]
 00474F41    mov         byte ptr [eax+227],1;TCustomMemo.FWantReturns:Boolean
 00474F48    mov         dl,1
 00474F4A    mov         eax,[00472C30];TMemoStrings
 00474F4F    call        TObject.Create;TMemoStrings.Create
 00474F54    mov         edx,dword ptr [ebp-4]
 00474F57    mov         dword ptr [edx+220],eax;TCustomMemo.FLines:TStrings
 00474F5D    mov         eax,dword ptr [ebp-4]
 00474F60    mov         eax,dword ptr [eax+220];TCustomMemo.FLines:TStrings
 00474F66    mov         edx,dword ptr [ebp-4]
 00474F69    mov         dword ptr [eax+10],edx
 00474F6C    xor         edx,edx
 00474F6E    mov         eax,dword ptr [ebp-4]
 00474F71    mov         ecx,dword ptr [eax]
 00474F73    call        dword ptr [ecx+0BC];TRadioGroup.SetParentBackground
 00474F79    mov         eax,dword ptr [ebp-4]
 00474F7C    cmp         byte ptr [ebp-5],0
>00474F80    je          00474F91
 00474F82    call        @AfterConstruction
 00474F87    pop         dword ptr fs:[0]
 00474F8E    add         esp,0C
 00474F91    mov         eax,dword ptr [ebp-4]
 00474F94    mov         esp,ebp
 00474F96    pop         ebp
 00474F97    ret
*}
end;

//00474F98
destructor TCustomMemo.Destroy;
begin
{*
 00474F98    push        ebp
 00474F99    mov         ebp,esp
 00474F9B    add         esp,0FFFFFFF8
 00474F9E    call        @BeforeDestruction
 00474FA3    mov         byte ptr [ebp-5],dl
 00474FA6    mov         dword ptr [ebp-4],eax
 00474FA9    mov         eax,dword ptr [ebp-4]
 00474FAC    mov         eax,dword ptr [eax+220]
 00474FB2    call        TObject.Free
 00474FB7    mov         dl,byte ptr [ebp-5]
 00474FBA    and         dl,0FC
 00474FBD    mov         eax,dword ptr [ebp-4]
 00474FC0    call        TWinControl.Destroy
 00474FC5    cmp         byte ptr [ebp-5],0
>00474FC9    jle         00474FD3
 00474FCB    mov         eax,dword ptr [ebp-4]
 00474FCE    call        @ClassDestroy
 00474FD3    pop         ecx
 00474FD4    pop         ecx
 00474FD5    pop         ebp
 00474FD6    ret
*}
end;

//00474FD8
{*procedure sub_00474FD8(?:?);
begin
 00474FD8    push        ebp
 00474FD9    mov         ebp,esp
 00474FDB    add         esp,0FFFFFFF8
 00474FDE    push        esi
 00474FDF    mov         dword ptr [ebp-8],edx
 00474FE2    mov         dword ptr [ebp-4],eax
 00474FE5    mov         edx,dword ptr [ebp-8]
 00474FE8    mov         eax,dword ptr [ebp-4]
 00474FEB    call        00474444
 00474FF0    mov         eax,dword ptr [ebp-4]
 00474FF3    mov         si,0FFC8
 00474FF7    call        @CallDynaInst;TControl.sub_0048415C
 00474FFC    and         eax,7F
 00474FFF    lea         eax,[eax+eax*2]
 00475002    lea         eax,[eax*4+56C640]
 00475009    mov         edx,dword ptr [ebp-4]
 0047500C    movzx       edx,byte ptr [edx+224];TCustomMemo.FAlignment:TAlignment
 00475013    mov         eax,dword ptr [eax+edx*4]
 00475016    mov         edx,dword ptr [ebp-8]
 00475019    mov         edx,dword ptr [edx+4]
 0047501C    mov         ecx,dword ptr [ebp-4]
 0047501F    movzx       ecx,byte ptr [ecx+226]
 00475026    mov         ecx,dword ptr [ecx*4+56C668]
 0047502D    not         ecx
 0047502F    and         edx,ecx
 00475031    or          edx,4
 00475034    or          eax,edx
 00475036    mov         edx,dword ptr [ebp-4]
 00475039    movzx       edx,byte ptr [edx+225];TCustomMemo.FScrollBars:TScrollStyle
 00475040    or          eax,dword ptr [edx*4+56C658]
 00475047    mov         edx,dword ptr [ebp-8]
 0047504A    mov         dword ptr [edx+4],eax
 0047504D    pop         esi
 0047504E    pop         ecx
 0047504F    pop         ecx
 00475050    pop         ebp
 00475051    ret
end;*}

//00475054
{*procedure sub_00475054(?:?);
begin
 00475054    push        ebp
 00475055    mov         ebp,esp
 00475057    add         esp,0FFFFFFF8
 0047505A    mov         dword ptr [ebp-8],edx
 0047505D    mov         dword ptr [ebp-4],eax
 00475060    mov         eax,[0056E638];^gvar_0057196C:Integer
 00475065    cmp         byte ptr [eax+0C],0
>00475069    je          0047510D
 0047506F    mov         eax,[0056E624];^gvar_0056B7D8
 00475074    cmp         dword ptr [eax],2
>00475077    je          0047510D
 0047507D    mov         eax,dword ptr [ebp-8]
 00475080    test        byte ptr [eax+5],8
>00475084    je          0047510D
 0047508A    mov         eax,dword ptr [ebp-8]
 0047508D    mov         eax,dword ptr [eax+4]
 00475090    and         eax,0FFFFF7FF
 00475095    push        eax
 00475096    mov         eax,dword ptr [ebp-8]
 00475099    mov         eax,dword ptr [eax+0C]
 0047509C    push        eax
 0047509D    mov         eax,dword ptr [ebp-8]
 004750A0    mov         eax,dword ptr [eax+10]
 004750A3    push        eax
 004750A4    mov         eax,dword ptr [ebp-8]
 004750A7    mov         eax,dword ptr [eax+14]
 004750AA    push        eax
 004750AB    mov         eax,dword ptr [ebp-8]
 004750AE    mov         eax,dword ptr [eax+18]
 004750B1    push        eax
 004750B2    mov         eax,dword ptr [ebp-8]
 004750B5    mov         eax,dword ptr [eax+1C]
 004750B8    push        eax
 004750B9    push        0
 004750BB    mov         eax,[0056F668];0x0 HInstance:LongWord
 004750C0    push        eax
 004750C1    mov         eax,dword ptr [ebp-8]
 004750C4    mov         eax,dword ptr [eax+20]
 004750C7    push        eax
 004750C8    mov         ecx,475184
 004750CD    mov         edx,dword ptr [ebp-8]
 004750D0    add         edx,4C
 004750D3    mov         eax,dword ptr [ebp-8]
 004750D6    mov         eax,dword ptr [eax+8]
 004750D9    call        004086E4
 004750DE    mov         edx,dword ptr [ebp-4]
 004750E1    mov         dword ptr [edx+180],eax;TCustomMemo.FHandle:HWND
 004750E7    mov         eax,dword ptr [ebp-4]
 004750EA    cmp         dword ptr [eax+180],0;TCustomMemo.FHandle:HWND
>004750F1    je          00475165
 004750F3    push        0
 004750F5    push        1
 004750F7    push        0CF
 004750FC    mov         eax,dword ptr [ebp-4]
 004750FF    mov         eax,dword ptr [eax+180];TCustomMemo.FHandle:HWND
 00475105    push        eax
 00475106    call        user32.SendMessageA
>0047510B    jmp         00475165
 0047510D    mov         eax,dword ptr [ebp-8]
 00475110    mov         eax,dword ptr [eax+4]
 00475113    push        eax
 00475114    mov         eax,dword ptr [ebp-8]
 00475117    mov         eax,dword ptr [eax+0C]
 0047511A    push        eax
 0047511B    mov         eax,dword ptr [ebp-8]
 0047511E    mov         eax,dword ptr [eax+10]
 00475121    push        eax
 00475122    mov         eax,dword ptr [ebp-8]
 00475125    mov         eax,dword ptr [eax+14]
 00475128    push        eax
 00475129    mov         eax,dword ptr [ebp-8]
 0047512C    mov         eax,dword ptr [eax+18]
 0047512F    push        eax
 00475130    mov         eax,dword ptr [ebp-8]
 00475133    mov         eax,dword ptr [eax+1C]
 00475136    push        eax
 00475137    push        0
 00475139    mov         eax,[0056F668];0x0 HInstance:LongWord
 0047513E    push        eax
 0047513F    mov         eax,dword ptr [ebp-8]
 00475142    mov         eax,dword ptr [eax+20]
 00475145    push        eax
 00475146    mov         ecx,475184
 0047514B    mov         edx,dword ptr [ebp-8]
 0047514E    add         edx,4C
 00475151    mov         eax,dword ptr [ebp-8]
 00475154    mov         eax,dword ptr [eax+8]
 00475157    call        004086E4
 0047515C    mov         edx,dword ptr [ebp-4]
 0047515F    mov         dword ptr [edx+180],eax;TCustomMemo.FHandle:HWND
 00475165    mov         eax,dword ptr [ebp-8]
 00475168    mov         eax,dword ptr [eax]
 0047516A    push        eax
 0047516B    push        0
 0047516D    push        0C
 0047516F    mov         eax,dword ptr [ebp-4]
 00475172    mov         eax,dword ptr [eax+180];TCustomMemo.FHandle:HWND
 00475178    push        eax
 00475179    call        user32.SendMessageA
 0047517E    pop         ecx
 0047517F    pop         ecx
 00475180    pop         ebp
 00475181    ret
end;*}

//00475188
{*procedure sub_00475188(?:?);
begin
 00475188    push        ebp
 00475189    mov         ebp,esp
 0047518B    add         esp,0FFFFFFF8
 0047518E    mov         dword ptr [ebp-8],edx
 00475191    mov         dword ptr [ebp-4],eax
 00475194    push        0
 00475196    push        0
 00475198    push        0B0
 0047519D    mov         eax,dword ptr [ebp-4]
 004751A0    call        TWinControl.GetHandle
 004751A5    push        eax
 004751A6    call        user32.SendMessageA
 004751AB    shr         eax,10
 004751AE    movzx       eax,ax
 004751B1    mov         edx,dword ptr [ebp-8]
 004751B4    mov         dword ptr [edx],eax
 004751B6    push        0
 004751B8    mov         eax,dword ptr [ebp-8]
 004751BB    mov         eax,dword ptr [eax]
 004751BD    push        eax
 004751BE    push        0C9
 004751C3    mov         eax,dword ptr [ebp-4]
 004751C6    call        TWinControl.GetHandle
 004751CB    push        eax
 004751CC    call        user32.SendMessageA
 004751D1    mov         edx,dword ptr [ebp-8]
 004751D4    mov         dword ptr [edx+4],eax
 004751D7    push        0
 004751D9    push        0FF
 004751DB    push        0BB
 004751E0    mov         eax,dword ptr [ebp-4]
 004751E3    call        TWinControl.GetHandle
 004751E8    push        eax
 004751E9    call        user32.SendMessageA
 004751EE    mov         edx,dword ptr [ebp-8]
 004751F1    sub         dword ptr [edx],eax
 004751F3    pop         ecx
 004751F4    pop         ecx
 004751F5    pop         ebp
 004751F6    ret
end;*}

//004751F8
{*procedure sub_004751F8(?:?);
begin
 004751F8    push        ebp
 004751F9    mov         ebp,esp
 004751FB    add         esp,0FFFFFFF4
 004751FE    mov         dword ptr [ebp-8],edx
 00475201    mov         dword ptr [ebp-4],eax
 00475204    push        0
 00475206    mov         eax,dword ptr [ebp-8]
 00475209    mov         eax,dword ptr [eax+4]
 0047520C    push        eax
 0047520D    push        0BB
 00475212    mov         eax,dword ptr [ebp-4]
 00475215    call        TWinControl.GetHandle
 0047521A    push        eax
 0047521B    call        user32.SendMessageA
 00475220    mov         edx,dword ptr [ebp-8]
 00475223    add         eax,dword ptr [edx]
 00475225    mov         dword ptr [ebp-0C],eax
 00475228    mov         eax,dword ptr [ebp-0C]
 0047522B    push        eax
 0047522C    mov         eax,dword ptr [ebp-0C]
 0047522F    push        eax
 00475230    push        0B1
 00475235    mov         eax,dword ptr [ebp-4]
 00475238    call        TWinControl.GetHandle
 0047523D    push        eax
 0047523E    call        user32.SendMessageA
 00475243    mov         esp,ebp
 00475245    pop         ebp
 00475246    ret
end;*}

//00475248
procedure TCustomMemo.sub_00475248;
begin
{*
 00475248    push        ebp
 00475249    mov         ebp,esp
 0047524B    add         esp,0FFFFFFF8
 0047524E    mov         dword ptr [ebp-4],eax
 00475251    mov         eax,dword ptr [ebp-4]
 00475254    mov         al,byte ptr [eax+224];TCustomMemo.FAlignment:TAlignment
 0047525A    mov         byte ptr [ebp-5],al
 0047525D    mov         al,byte ptr [ebp-5]
 00475260    pop         ecx
 00475261    pop         ecx
 00475262    pop         ebp
 00475263    ret
*}
end;

//00475264
procedure sub_00475264;
begin
{*
 00475264    push        ebp
 00475265    mov         ebp,esp
 00475267    push        ecx
 00475268    mov         dword ptr [ebp-4],eax
 0047526B    mov         eax,dword ptr [ebp-4]
 0047526E    call        004864B8
 00475273    xor         edx,edx
 00475275    mov         eax,dword ptr [ebp-4]
 00475278    call        TCustomEdit.SetModified
 0047527D    pop         ecx
 0047527E    pop         ebp
 0047527F    ret
*}
end;

//00475280
procedure TRichEdit.SetAlignment(Value:TAlignment);
begin
{*
 00475280    push        ebp
 00475281    mov         ebp,esp
 00475283    add         esp,0FFFFFFF8
 00475286    mov         byte ptr [ebp-5],dl
 00475289    mov         dword ptr [ebp-4],eax
 0047528C    mov         eax,dword ptr [ebp-4]
 0047528F    mov         al,byte ptr [eax+224];TRichEdit.FAlignment:TAlignment
 00475295    cmp         al,byte ptr [ebp-5]
>00475298    je          004752AE
 0047529A    mov         al,byte ptr [ebp-5]
 0047529D    mov         edx,dword ptr [ebp-4]
 004752A0    mov         byte ptr [edx+224],al;TRichEdit.FAlignment:TAlignment
 004752A6    mov         eax,dword ptr [ebp-4]
 004752A9    call        TWinControl.RecreateWnd
 004752AE    pop         ecx
 004752AF    pop         ecx
 004752B0    pop         ebp
 004752B1    ret
*}
end;

//004752B4
procedure TRichEdit.SetScrollBars(Value:TScrollStyle);
begin
{*
 004752B4    push        ebp
 004752B5    mov         ebp,esp
 004752B7    add         esp,0FFFFFFF8
 004752BA    mov         byte ptr [ebp-5],dl
 004752BD    mov         dword ptr [ebp-4],eax
 004752C0    mov         eax,dword ptr [ebp-4]
 004752C3    mov         al,byte ptr [eax+225];TRichEdit.FScrollBars:TScrollStyle
 004752C9    cmp         al,byte ptr [ebp-5]
>004752CC    je          004752E2
 004752CE    mov         al,byte ptr [ebp-5]
 004752D1    mov         edx,dword ptr [ebp-4]
 004752D4    mov         byte ptr [edx+225],al;TRichEdit.FScrollBars:TScrollStyle
 004752DA    mov         eax,dword ptr [ebp-4]
 004752DD    call        TWinControl.RecreateWnd
 004752E2    pop         ecx
 004752E3    pop         ecx
 004752E4    pop         ebp
 004752E5    ret
*}
end;

//004752E8
procedure TRichEdit.SetWordWrap(Value:Boolean);
begin
{*
 004752E8    push        ebp
 004752E9    mov         ebp,esp
 004752EB    add         esp,0FFFFFFF8
 004752EE    mov         byte ptr [ebp-5],dl
 004752F1    mov         dword ptr [ebp-4],eax
 004752F4    mov         al,byte ptr [ebp-5]
 004752F7    mov         edx,dword ptr [ebp-4]
 004752FA    cmp         al,byte ptr [edx+226];TRichEdit.FWordWrap:Boolean
>00475300    je          00475316
 00475302    mov         al,byte ptr [ebp-5]
 00475305    mov         edx,dword ptr [ebp-4]
 00475308    mov         byte ptr [edx+226],al;TRichEdit.FWordWrap:Boolean
 0047530E    mov         eax,dword ptr [ebp-4]
 00475311    call        TWinControl.RecreateWnd
 00475316    pop         ecx
 00475317    pop         ecx
 00475318    pop         ebp
 00475319    ret
*}
end;

//0047531C
{*procedure TCustomMemo.WMGetDlgCode(?:?);
begin
 0047531C    push        ebp
 0047531D    mov         ebp,esp
 0047531F    add         esp,0FFFFFFF8
 00475322    mov         dword ptr [ebp-8],edx
 00475325    mov         dword ptr [ebp-4],eax
 00475328    mov         edx,dword ptr [ebp-8]
 0047532B    mov         eax,dword ptr [ebp-4]
 0047532E    mov         ecx,dword ptr [eax]
 00475330    call        dword ptr [ecx-10];TCustomEdit.DefaultHandler
 00475333    mov         eax,dword ptr [ebp-4]
 00475336    cmp         byte ptr [eax+228],0;TCustomMemo.FWantTabs:Boolean
>0047533D    je          00475348
 0047533F    mov         eax,dword ptr [ebp-8]
 00475342    or          dword ptr [eax+0C],2
>00475346    jmp         0047534F
 00475348    mov         eax,dword ptr [ebp-8]
 0047534B    and         dword ptr [eax+0C],0FFFFFFFD
 0047534F    mov         eax,dword ptr [ebp-4]
 00475352    cmp         byte ptr [eax+227],0;TCustomMemo.FWantReturns:Boolean
>00475359    jne         00475362
 0047535B    mov         eax,dword ptr [ebp-8]
 0047535E    and         dword ptr [eax+0C],0FFFFFFFB
 00475362    pop         ecx
 00475363    pop         ecx
 00475364    pop         ebp
 00475365    ret
end;*}

//00475368
{*procedure TCustomMemo.WMNCDestroy(?:?);
begin
 00475368    push        ebp
 00475369    mov         ebp,esp
 0047536B    add         esp,0FFFFFFF8
 0047536E    mov         dword ptr [ebp-8],edx
 00475371    mov         dword ptr [ebp-4],eax
 00475374    mov         edx,dword ptr [ebp-8]
 00475377    mov         eax,dword ptr [ebp-4]
 0047537A    call        TWinControl.WMNCDestroy
 0047537F    pop         ecx
 00475380    pop         ecx
 00475381    pop         ebp
 00475382    ret
end;*}

//00475384
{*procedure TCustomMemo.sub_00475384(?:?);
begin
 00475384    push        ebp
 00475385    mov         ebp,esp
 00475387    add         esp,0FFFFFFF8
 0047538A    mov         dword ptr [ebp-8],edx
 0047538D    mov         dword ptr [ebp-4],eax
 00475390    mov         edx,dword ptr [ebp-8]
 00475393    mov         eax,dword ptr [ebp-4]
 00475396    call        TWinControl.sub_0048AAD0
 0047539B    mov         eax,dword ptr [ebp-8]
 0047539E    cmp         byte ptr [eax],0D
>004753A1    jne         004753B5
 004753A3    mov         eax,dword ptr [ebp-4]
 004753A6    cmp         byte ptr [eax+227],0;TCustomMemo.FWantReturns:Boolean
>004753AD    jne         004753B5
 004753AF    mov         eax,dword ptr [ebp-8]
 004753B2    mov         byte ptr [eax],0
 004753B5    pop         ecx
 004753B6    pop         ecx
 004753B7    pop         ebp
 004753B8    ret
end;*}

//004753BC
{*function sub_004753BC:?;
begin
 004753BC    push        ebp
 004753BD    mov         ebp,esp
 004753BF    add         esp,0FFFFFFF8
 004753C2    mov         dword ptr [ebp-4],eax
 004753C5    push        0
 004753C7    push        0
 004753C9    push        146
 004753CE    mov         eax,dword ptr [ebp-4]
 004753D1    mov         eax,dword ptr [eax+10];TCustomComboBoxStrings.......................FComboBox:TCustomCom...
 004753D4    call        TWinControl.GetHandle
 004753D9    push        eax
 004753DA    call        user32.SendMessageA
 004753DF    mov         dword ptr [ebp-8],eax
 004753E2    mov         eax,dword ptr [ebp-8]
 004753E5    pop         ecx
 004753E6    pop         ecx
 004753E7    pop         ebp
 004753E8    ret
end;*}

//004753EC
{*function sub_004753EC(?:?):?;
begin
 004753EC    push        ebp
 004753ED    mov         ebp,esp
 004753EF    add         esp,0FFFFFFF0
 004753F2    xor         ecx,ecx
 004753F4    mov         dword ptr [ebp-10],ecx
 004753F7    mov         dword ptr [ebp-8],edx
 004753FA    mov         dword ptr [ebp-4],eax
 004753FD    xor         eax,eax
 004753FF    push        ebp
 00475400    push        475461
 00475405    push        dword ptr fs:[eax]
 00475408    mov         dword ptr fs:[eax],esp
 0047540B    push        0
 0047540D    mov         eax,dword ptr [ebp-8]
 00475410    push        eax
 00475411    push        150
 00475416    mov         eax,dword ptr [ebp-4]
 00475419    mov         eax,dword ptr [eax+10];TCustomComboBoxStrings........................FComboBox:TCustomCo...
 0047541C    call        TWinControl.GetHandle
 00475421    push        eax
 00475422    call        user32.SendMessageA
 00475427    mov         dword ptr [ebp-0C],eax
 0047542A    cmp         dword ptr [ebp-0C],0FFFFFFFF
>0047542E    jne         0047544B
 00475430    lea         edx,[ebp-10]
 00475433    mov         eax,[0056E4A8];^SListIndexError:TResStringRec
 00475438    call        LoadResString
 0047543D    mov         edx,dword ptr [ebp-10]
 00475440    mov         ecx,dword ptr [ebp-8]
 00475443    mov         eax,dword ptr [ebp-4]
 00475446    call        00421E04
 0047544B    xor         eax,eax
 0047544D    pop         edx
 0047544E    pop         ecx
 0047544F    pop         ecx
 00475450    mov         dword ptr fs:[eax],edx
 00475453    push        475468
 00475458    lea         eax,[ebp-10]
 0047545B    call        @LStrClr
 00475460    ret
>00475461    jmp         @HandleFinally
>00475466    jmp         00475458
 00475468    mov         eax,dword ptr [ebp-0C]
 0047546B    mov         esp,ebp
 0047546D    pop         ebp
 0047546E    ret
end;*}

//00475470
{*procedure sub_00475470(?:?; ?:?);
begin
 00475470    push        ebp
 00475471    mov         ebp,esp
 00475473    add         esp,0FFFFFFF4
 00475476    mov         dword ptr [ebp-0C],ecx
 00475479    mov         dword ptr [ebp-8],edx
 0047547C    mov         dword ptr [ebp-4],eax
 0047547F    mov         eax,dword ptr [ebp-0C]
 00475482    push        eax
 00475483    mov         eax,dword ptr [ebp-8]
 00475486    push        eax
 00475487    push        151
 0047548C    mov         eax,dword ptr [ebp-4]
 0047548F    mov         eax,dword ptr [eax+10];TCustomComboBoxStrings.........................FComboBox:TCustomC...
 00475492    call        TWinControl.GetHandle
 00475497    push        eax
 00475498    call        user32.SendMessageA
 0047549D    mov         esp,ebp
 0047549F    pop         ebp
 004754A0    ret
end;*}

//004754A4
{*procedure sub_004754A4(?:?; ?:?);
begin
 004754A4    push        ebp
 004754A5    mov         ebp,esp
 004754A7    add         esp,0FFFFFFF0
 004754AA    mov         dword ptr [ebp-0C],ecx
 004754AD    mov         dword ptr [ebp-8],edx
 004754B0    mov         dword ptr [ebp-4],eax
 004754B3    push        0
 004754B5    mov         eax,dword ptr [ebp-8]
 004754B8    push        eax
 004754B9    push        149
 004754BE    mov         eax,dword ptr [ebp-4]
 004754C1    mov         eax,dword ptr [eax+10];TCustomComboBoxStrings..........................FComboBox:TCustom...
 004754C4    call        TWinControl.GetHandle
 004754C9    push        eax
 004754CA    call        user32.SendMessageA
 004754CF    mov         dword ptr [ebp-10],eax
 004754D2    cmp         dword ptr [ebp-10],0FFFFFFFF
>004754D6    je          00475510
 004754D8    cmp         dword ptr [ebp-10],0
>004754DC    jle         00475510
 004754DE    mov         eax,dword ptr [ebp-0C]
 004754E1    mov         edx,dword ptr [ebp-10]
 004754E4    call        @LStrSetLength
 004754E9    mov         eax,dword ptr [ebp-0C]
 004754EC    mov         eax,dword ptr [eax]
 004754EE    call        @LStrToPChar
 004754F3    push        eax
 004754F4    mov         eax,dword ptr [ebp-8]
 004754F7    push        eax
 004754F8    push        148
 004754FD    mov         eax,dword ptr [ebp-4]
 00475500    mov         eax,dword ptr [eax+10];TCustomComboBoxStrings...........................FComboBox:TCusto...
 00475503    call        TWinControl.GetHandle
 00475508    push        eax
 00475509    call        user32.SendMessageA
>0047550E    jmp         0047551A
 00475510    mov         eax,dword ptr [ebp-0C]
 00475513    xor         edx,edx
 00475515    call        @LStrSetLength
 0047551A    mov         esp,ebp
 0047551C    pop         ebp
 0047551D    ret
end;*}

//00475520
procedure TCustomComboBoxStrings.Clear;
begin
{*
 00475520    push        ebp
 00475521    mov         ebp,esp
 00475523    add         esp,0FFFFFFF8
 00475526    xor         edx,edx
 00475528    mov         dword ptr [ebp-8],edx
 0047552B    mov         dword ptr [ebp-4],eax
 0047552E    xor         eax,eax
 00475530    push        ebp
 00475531    push        475596
 00475536    push        dword ptr fs:[eax]
 00475539    mov         dword ptr fs:[eax],esp
 0047553C    lea         edx,[ebp-8]
 0047553F    mov         eax,dword ptr [ebp-4]
 00475542    mov         eax,dword ptr [eax+10];TCustomComboBoxStrings............................FComboBox:TCust...
 00475545    call        TPanel.GetCaption
 0047554A    push        0
 0047554C    push        0
 0047554E    push        14B
 00475553    mov         eax,dword ptr [ebp-4]
 00475556    mov         eax,dword ptr [eax+10];TCustomComboBoxStrings.............................FComboBox:TCus...
 00475559    call        TWinControl.GetHandle
 0047555E    push        eax
 0047555F    call        user32.SendMessageA
 00475564    mov         edx,dword ptr [ebp-8]
 00475567    mov         eax,dword ptr [ebp-4]
 0047556A    mov         eax,dword ptr [eax+10];TCustomComboBoxStrings..............................FComboBox:TCu...
 0047556D    call        TPanel.SetCaption
 00475572    mov         eax,dword ptr [ebp-4]
 00475575    mov         eax,dword ptr [eax+10];TCustomComboBoxStrings...............................FComboBox:TC...
 00475578    mov         edx,dword ptr [eax]
 0047557A    call        dword ptr [edx+88];TCustomCombo.sub_0048BF40
 00475580    xor         eax,eax
 00475582    pop         edx
 00475583    pop         ecx
 00475584    pop         ecx
 00475585    mov         dword ptr fs:[eax],edx
 00475588    push        47559D
 0047558D    lea         eax,[ebp-8]
 00475590    call        @LStrClr
 00475595    ret
>00475596    jmp         @HandleFinally
>0047559B    jmp         0047558D
 0047559D    pop         ecx
 0047559E    pop         ecx
 0047559F    pop         ebp
 004755A0    ret
*}
end;

//004755A4
{*procedure sub_004755A4(?:?);
begin
 004755A4    push        ebp
 004755A5    mov         ebp,esp
 004755A7    add         esp,0FFFFFFF8
 004755AA    mov         dword ptr [ebp-8],edx
 004755AD    mov         dword ptr [ebp-4],eax
 004755B0    push        0
 004755B2    mov         eax,dword ptr [ebp-8]
 004755B5    push        eax
 004755B6    push        144
 004755BB    mov         eax,dword ptr [ebp-4]
 004755BE    mov         eax,dword ptr [eax+10];TCustomComboBoxStrings................................FComboBox:T...
 004755C1    call        TWinControl.GetHandle
 004755C6    push        eax
 004755C7    call        user32.SendMessageA
 004755CC    pop         ecx
 004755CD    pop         ecx
 004755CE    pop         ebp
 004755CF    ret
end;*}

//004755D0
{*function sub_004755D0(?:?):?;
begin
 004755D0    push        ebp
 004755D1    mov         ebp,esp
 004755D3    add         esp,0FFFFFFF4
 004755D6    mov         dword ptr [ebp-8],edx
 004755D9    mov         dword ptr [ebp-4],eax
 004755DC    mov         eax,dword ptr [ebp-8]
 004755DF    call        @LStrToPChar
 004755E4    push        eax
 004755E5    push        0FF
 004755E7    push        158
 004755EC    mov         eax,dword ptr [ebp-4]
 004755EF    mov         eax,dword ptr [eax+10];TCustomComboBoxStrings.................................FComboBox:...
 004755F2    call        TWinControl.GetHandle
 004755F7    push        eax
 004755F8    call        user32.SendMessageA
 004755FD    mov         dword ptr [ebp-0C],eax
 00475600    mov         eax,dword ptr [ebp-0C]
 00475603    mov         esp,ebp
 00475605    pop         ebp
 00475606    ret
end;*}

//00475608
{*procedure sub_00475608(?:?);
begin
 00475608    push        ebp
 00475609    mov         ebp,esp
 0047560B    add         esp,0FFFFFFF8
 0047560E    mov         byte ptr [ebp-5],dl
 00475611    mov         dword ptr [ebp-4],eax
 00475614    push        0
 00475616    mov         al,byte ptr [ebp-5]
 00475619    xor         al,1
 0047561B    and         eax,7F
 0047561E    push        eax
 0047561F    push        0B
 00475621    mov         eax,dword ptr [ebp-4]
 00475624    mov         eax,dword ptr [eax+10];TCustomComboBoxStrings..................................FComboBox...
 00475627    call        TWinControl.GetHandle
 0047562C    push        eax
 0047562D    call        user32.SendMessageA
 00475632    cmp         byte ptr [ebp-5],0
>00475636    jne         00475643
 00475638    mov         eax,dword ptr [ebp-4]
 0047563B    mov         eax,dword ptr [eax+10];TCustomComboBoxStrings...................................FComboBo...
 0047563E    call        00484000
 00475643    pop         ecx
 00475644    pop         ecx
 00475645    pop         ebp
 00475646    ret
end;*}

//00475648
{*function sub_00475648(?:?):?;
begin
 00475648    push        ebp
 00475649    mov         ebp,esp
 0047564B    add         esp,0FFFFFFF0
 0047564E    xor         ecx,ecx
 00475650    mov         dword ptr [ebp-10],ecx
 00475653    mov         dword ptr [ebp-8],edx
 00475656    mov         dword ptr [ebp-4],eax
 00475659    xor         eax,eax
 0047565B    push        ebp
 0047565C    push        4756C8
 00475661    push        dword ptr fs:[eax]
 00475664    mov         dword ptr fs:[eax],esp
 00475667    mov         eax,dword ptr [ebp-8]
 0047566A    call        @LStrToPChar
 0047566F    push        eax
 00475670    push        0
 00475672    push        143
 00475677    mov         eax,dword ptr [ebp-4]
 0047567A    mov         eax,dword ptr [eax+10];TComboBoxStrings....................................FComboBox:TCu...
 0047567D    call        TWinControl.GetHandle
 00475682    push        eax
 00475683    call        user32.SendMessageA
 00475688    mov         dword ptr [ebp-0C],eax
 0047568B    cmp         dword ptr [ebp-0C],0
>0047568F    jge         004756B2
 00475691    lea         edx,[ebp-10]
 00475694    mov         eax,[0056E134];^SInsertLineError:TResStringRec
 00475699    call        LoadResString
 0047569E    mov         ecx,dword ptr [ebp-10]
 004756A1    mov         dl,1
 004756A3    mov         eax,[0041D3B0];EOutOfResources
 004756A8    call        Exception.Create;EOutOfResources.Create
 004756AD    call        @RaiseExcept
 004756B2    xor         eax,eax
 004756B4    pop         edx
 004756B5    pop         ecx
 004756B6    pop         ecx
 004756B7    mov         dword ptr fs:[eax],edx
 004756BA    push        4756CF
 004756BF    lea         eax,[ebp-10]
 004756C2    call        @LStrClr
 004756C7    ret
>004756C8    jmp         @HandleFinally
>004756CD    jmp         004756BF
 004756CF    mov         eax,dword ptr [ebp-0C]
 004756D2    mov         esp,ebp
 004756D4    pop         ebp
 004756D5    ret
end;*}

//004756D8
{*procedure sub_004756D8(?:?; ?:?);
begin
 004756D8    push        ebp
 004756D9    mov         ebp,esp
 004756DB    add         esp,0FFFFFFF0
 004756DE    push        ebx
 004756DF    xor         ebx,ebx
 004756E1    mov         dword ptr [ebp-10],ebx
 004756E4    mov         dword ptr [ebp-0C],ecx
 004756E7    mov         dword ptr [ebp-8],edx
 004756EA    mov         dword ptr [ebp-4],eax
 004756ED    xor         eax,eax
 004756EF    push        ebp
 004756F0    push        475759
 004756F5    push        dword ptr fs:[eax]
 004756F8    mov         dword ptr fs:[eax],esp
 004756FB    mov         eax,dword ptr [ebp-0C]
 004756FE    call        @LStrToPChar
 00475703    push        eax
 00475704    mov         eax,dword ptr [ebp-8]
 00475707    push        eax
 00475708    push        14A
 0047570D    mov         eax,dword ptr [ebp-4]
 00475710    mov         eax,dword ptr [eax+10];TComboBoxStrings.....................................FComboBox:TC...
 00475713    call        TWinControl.GetHandle
 00475718    push        eax
 00475719    call        user32.SendMessageA
 0047571E    test        eax,eax
>00475720    jge         00475743
 00475722    lea         edx,[ebp-10]
 00475725    mov         eax,[0056E134];^SInsertLineError:TResStringRec
 0047572A    call        LoadResString
 0047572F    mov         ecx,dword ptr [ebp-10]
 00475732    mov         dl,1
 00475734    mov         eax,[0041D3B0];EOutOfResources
 00475739    call        Exception.Create;EOutOfResources.Create
 0047573E    call        @RaiseExcept
 00475743    xor         eax,eax
 00475745    pop         edx
 00475746    pop         ecx
 00475747    pop         ecx
 00475748    mov         dword ptr fs:[eax],edx
 0047574B    push        475760
 00475750    lea         eax,[ebp-10]
 00475753    call        @LStrClr
 00475758    ret
>00475759    jmp         @HandleFinally
>0047575E    jmp         00475750
 00475760    pop         ebx
 00475761    mov         esp,ebp
 00475763    pop         ebp
 00475764    ret
end;*}

//00475768
constructor sub_00475768;
begin
{*
 00475768    push        ebp
 00475769    mov         ebp,esp
 0047576B    add         esp,0FFFFFFF4
 0047576E    test        dl,dl
>00475770    je          0047577A
 00475772    add         esp,0FFFFFFF0
 00475775    call        @ClassCreate
 0047577A    mov         dword ptr [ebp-0C],ecx
 0047577D    mov         byte ptr [ebp-5],dl
 00475780    mov         dword ptr [ebp-4],eax
 00475783    mov         ecx,dword ptr [ebp-0C]
 00475786    xor         edx,edx
 00475788    mov         eax,dword ptr [ebp-4]
 0047578B    call        00486BAC
 00475790    mov         eax,[0056E264];^NewStyleControls:Boolean
 00475795    cmp         byte ptr [eax],0
>00475798    je          004757A8
 0047579A    mov         eax,dword ptr [ebp-4]
 0047579D    mov         edx,dword ptr ds:[47588C];0x42A2 gvar_0047588C
 004757A3    mov         dword ptr [eax+50],edx;TCustomCombo.FControlStyle:TControlStyle
>004757A6    jmp         004757B4
 004757A8    mov         eax,dword ptr [ebp-4]
 004757AB    mov         edx,dword ptr ds:[475890];0x42B2 gvar_00475890
 004757B1    mov         dword ptr [eax+50],edx;TCustomCombo.FControlStyle:TControlStyle
 004757B4    mov         edx,91
 004757B9    mov         eax,dword ptr [ebp-4]
 004757BC    call        TSplitter.SetWidth
 004757C1    mov         edx,19
 004757C6    mov         eax,dword ptr [ebp-4]
 004757C9    call        TToolButton.SetHeight
 004757CE    mov         dl,1
 004757D0    mov         eax,dword ptr [ebp-4]
 004757D3    call        TPanel.SetTabStop
 004757D8    xor         edx,edx
 004757DA    mov         eax,dword ptr [ebp-4]
 004757DD    call        TPanel.SetParentColor
 004757E2    mov         dl,1
 004757E4    mov         eax,[0047D3C4];TControlCanvas
 004757E9    call        TCanvas.Create;TControlCanvas.Create
 004757EE    mov         edx,dword ptr [ebp-4]
 004757F1    mov         dword ptr [edx+208],eax;TCustomCombo.FCanvas:TCanvas
 004757F7    mov         eax,dword ptr [ebp-4]
 004757FA    mov         eax,dword ptr [eax+208];TCustomCombo.FCanvas:TCanvas
 00475800    mov         edx,dword ptr [ebp-4]
 00475803    call        00481B3C
 00475808    mov         eax,dword ptr [ebp-4]
 0047580B    mov         dword ptr [eax+238],10;TCustomCombo.FItemHeight:Integer
 00475815    mov         eax,dword ptr [ebp-4]
 00475818    push        eax
 00475819    push        475C88
 0047581E    call        0042B9AC
 00475823    mov         edx,dword ptr [ebp-4]
 00475826    mov         dword ptr [edx+24C],eax;TCustomCombo.FEditInstance:Pointer
 0047582C    mov         eax,dword ptr [ebp-4]
 0047582F    push        eax
 00475830    push        475DA8
 00475835    call        0042B9AC
 0047583A    mov         edx,dword ptr [ebp-4]
 0047583D    mov         dword ptr [edx+254],eax;TCustomCombo.FListInstance:Pointer
 00475843    mov         eax,dword ptr [ebp-4]
 00475846    mov         dword ptr [eax+210],8;TCustomCombo.FDropDownCount:Integer
 00475850    mov         eax,dword ptr [ebp-4]
 00475853    mov         dword ptr [eax+214],0FFFFFFFF;TCustomCombo.FItemIndex:Integer
 0047585D    mov         eax,dword ptr [ebp-4]
 00475860    mov         dword ptr [eax+260],0FFFFFFFF;TCustomCombo.FSaveIndex:Integer
 0047586A    mov         eax,dword ptr [ebp-4]
 0047586D    cmp         byte ptr [ebp-5],0
>00475871    je          00475882
 00475873    call        @AfterConstruction
 00475878    pop         dword ptr fs:[0]
 0047587F    add         esp,0C
 00475882    mov         eax,dword ptr [ebp-4]
 00475885    mov         esp,ebp
 00475887    pop         ebp
 00475888    ret
*}
end;

//00475894
destructor TCustomCombo.Destroy;
begin
{*
 00475894    push        ebp
 00475895    mov         ebp,esp
 00475897    add         esp,0FFFFFFF8
 0047589A    call        @BeforeDestruction
 0047589F    mov         byte ptr [ebp-5],dl
 004758A2    mov         dword ptr [ebp-4],eax
 004758A5    mov         eax,dword ptr [ebp-4]
 004758A8    call        TWinControl.HandleAllocated
 004758AD    test        al,al
>004758AF    je          004758BC
 004758B1    mov         eax,dword ptr [ebp-4]
 004758B4    mov         edx,dword ptr [eax]
 004758B6    call        dword ptr [edx+0AC]
 004758BC    mov         eax,dword ptr [ebp-4]
 004758BF    mov         eax,dword ptr [eax+254]
 004758C5    call        004A0578
 004758CA    mov         eax,dword ptr [ebp-4]
 004758CD    mov         eax,dword ptr [eax+24C]
 004758D3    call        004A0578
 004758D8    mov         eax,dword ptr [ebp-4]
 004758DB    mov         eax,dword ptr [eax+208]
 004758E1    call        TObject.Free
 004758E6    mov         dl,byte ptr [ebp-5]
 004758E9    and         dl,0FC
 004758EC    mov         eax,dword ptr [ebp-4]
 004758EF    call        TWinControl.Destroy
 004758F4    cmp         byte ptr [ebp-5],0
>004758F8    jle         00475902
 004758FA    mov         eax,dword ptr [ebp-4]
 004758FD    call        @ClassDestroy
 00475902    pop         ecx
 00475903    pop         ecx
 00475904    pop         ebp
 00475905    ret
*}
end;

//00475908
procedure TCustomCombo.Clear;
begin
{*
 00475908    push        ebp
 00475909    mov         ebp,esp
 0047590B    push        ecx
 0047590C    mov         dword ptr [ebp-4],eax
 0047590F    mov         edx,47593C;'
 00475914    mov         eax,dword ptr [ebp-4]
 00475917    call        00483788
 0047591C    mov         eax,dword ptr [ebp-4]
 0047591F    mov         eax,dword ptr [eax+23C];TCustomCombo.FItems:TStrings
 00475925    mov         edx,dword ptr [eax]
 00475927    call        dword ptr [edx+44];TStrings.Clear
 0047592A    mov         eax,dword ptr [ebp-4]
 0047592D    mov         dword ptr [eax+260],0FFFFFFFF;TCustomCombo.FSaveIndex:Integer
 00475937    pop         ecx
 00475938    pop         ebp
 00475939    ret
*}
end;

//00475940
procedure TCustomCombo.DestroyWindowHandle;
begin
{*
 00475940    push        ebp
 00475941    mov         ebp,esp
 00475943    push        ecx
 00475944    mov         dword ptr [ebp-4],eax
 00475947    mov         eax,dword ptr [ebp-4]
 0047594A    call        TWinControl.DestroyWindowHandle
 0047594F    mov         eax,dword ptr [ebp-4]
 00475952    xor         edx,edx
 00475954    mov         dword ptr [eax+240],edx;TCustomCombo.FEditHandle:HWND
 0047595A    mov         eax,dword ptr [ebp-4]
 0047595D    xor         edx,edx
 0047595F    mov         dword ptr [eax+244],edx;TCustomCombo.FListHandle:HWND
 00475965    mov         eax,dword ptr [ebp-4]
 00475968    xor         edx,edx
 0047596A    mov         dword ptr [eax+248],edx;TCustomCombo.FDropHandle:HWND
 00475970    pop         ecx
 00475971    pop         ebp
 00475972    ret
*}
end;

//00475974
procedure sub_00475974;
begin
{*
 00475974    push        ebp
 00475975    mov         ebp,esp
 00475977    push        ecx
 00475978    mov         dword ptr [ebp-4],eax
 0047597B    push        0FFFF0000
 00475980    push        0
 00475982    push        142
 00475987    mov         eax,dword ptr [ebp-4]
 0047598A    call        TWinControl.GetHandle
 0047598F    push        eax
 00475990    call        user32.SendMessageA
 00475995    pop         ecx
 00475996    pop         ebp
 00475997    ret
*}
end;

//00475998
{*function sub_00475998(?:TCustomCombo):?;
begin
 00475998    push        ebp
 00475999    mov         ebp,esp
 0047599B    add         esp,0FFFFFFF8
 0047599E    mov         dword ptr [ebp-4],eax
 004759A1    push        0
 004759A3    push        0
 004759A5    push        157
 004759AA    mov         eax,dword ptr [ebp-4]
 004759AD    call        TWinControl.GetHandle
 004759B2    push        eax
 004759B3    call        user32.SendMessageA
 004759B8    cmp         eax,1
 004759BB    sbb         eax,eax
 004759BD    inc         eax
 004759BE    mov         byte ptr [ebp-5],al
 004759C1    mov         al,byte ptr [ebp-5]
 004759C4    pop         ecx
 004759C5    pop         ecx
 004759C6    pop         ebp
 004759C7    ret
end;*}

//004759C8
{*procedure sub_004759C8(?:TCustomCombo; ?:?);
begin
 004759C8    push        ebp
 004759C9    mov         ebp,esp
 004759CB    add         esp,0FFFFFFE8
 004759CE    mov         byte ptr [ebp-5],dl
 004759D1    mov         dword ptr [ebp-4],eax
 004759D4    push        0
 004759D6    xor         eax,eax
 004759D8    mov         al,byte ptr [ebp-5]
 004759DB    push        eax
 004759DC    push        14F
 004759E1    mov         eax,dword ptr [ebp-4]
 004759E4    call        TWinControl.GetHandle
 004759E9    push        eax
 004759EA    call        user32.SendMessageA
 004759EF    lea         edx,[ebp-15]
 004759F2    mov         eax,dword ptr [ebp-4]
 004759F5    mov         ecx,dword ptr [eax]
 004759F7    call        dword ptr [ecx+44]
 004759FA    push        0FF
 004759FC    lea         eax,[ebp-15]
 004759FF    push        eax
 00475A00    mov         eax,dword ptr [ebp-4]
 00475A03    call        TWinControl.GetHandle
 00475A08    push        eax
 00475A09    call        user32.InvalidateRect
 00475A0E    mov         esp,ebp
 00475A10    pop         ebp
 00475A11    ret
end;*}

//00475A14
function TComboBox.GetItemIndex:Integer;
begin
{*
 00475A14    push        ebp
 00475A15    mov         ebp,esp
 00475A17    add         esp,0FFFFFFF8
 00475A1A    mov         dword ptr [ebp-4],eax
 00475A1D    mov         eax,dword ptr [ebp-4]
 00475A20    test        byte ptr [eax+1C],1;TComboBox.FComponentState:TComponentState
>00475A24    je          00475A34
 00475A26    mov         eax,dword ptr [ebp-4]
 00475A29    mov         eax,dword ptr [eax+214];TComboBox.FItemIndex:Integer
 00475A2F    mov         dword ptr [ebp-8],eax
>00475A32    jmp         00475A4E
 00475A34    push        0
 00475A36    push        0
 00475A38    push        147
 00475A3D    mov         eax,dword ptr [ebp-4]
 00475A40    call        TWinControl.GetHandle
 00475A45    push        eax
 00475A46    call        user32.SendMessageA
 00475A4B    mov         dword ptr [ebp-8],eax
 00475A4E    mov         eax,dword ptr [ebp-8]
 00475A51    pop         ecx
 00475A52    pop         ecx
 00475A53    pop         ebp
 00475A54    ret
*}
end;

//00475A58
procedure TComboBox.SetItemIndex(Value:Integer);
begin
{*
 00475A58    push        ebp
 00475A59    mov         ebp,esp
 00475A5B    add         esp,0FFFFFFF8
 00475A5E    mov         dword ptr [ebp-8],edx
 00475A61    mov         dword ptr [ebp-4],eax
 00475A64    mov         eax,dword ptr [ebp-4]
 00475A67    test        byte ptr [eax+1C],1;TComboBox.FComponentState:TComponentState
>00475A6B    je          00475A7B
 00475A6D    mov         eax,dword ptr [ebp-8]
 00475A70    mov         edx,dword ptr [ebp-4]
 00475A73    mov         dword ptr [edx+214],eax;TComboBox.FItemIndex:Integer
>00475A79    jmp         00475AA4
 00475A7B    mov         eax,dword ptr [ebp-4]
 00475A7E    mov         edx,dword ptr [eax]
 00475A80    call        dword ptr [edx+0CC];TComboBox.GetItemIndex
 00475A86    cmp         eax,dword ptr [ebp-8]
>00475A89    je          00475AA4
 00475A8B    push        0
 00475A8D    mov         eax,dword ptr [ebp-8]
 00475A90    push        eax
 00475A91    push        14E
 00475A96    mov         eax,dword ptr [ebp-4]
 00475A99    call        TWinControl.GetHandle
 00475A9E    push        eax
 00475A9F    call        user32.SendMessageA
 00475AA4    pop         ecx
 00475AA5    pop         ecx
 00475AA6    pop         ebp
 00475AA7    ret
*}
end;

//00475AA8
procedure TComboBox.SetMaxLength(Value:Integer);
begin
{*
 00475AA8    push        ebp
 00475AA9    mov         ebp,esp
 00475AAB    add         esp,0FFFFFFF8
 00475AAE    mov         dword ptr [ebp-8],edx
 00475AB1    mov         dword ptr [ebp-4],eax
 00475AB4    cmp         dword ptr [ebp-8],0
>00475AB8    jge         00475ABF
 00475ABA    xor         eax,eax
 00475ABC    mov         dword ptr [ebp-8],eax
 00475ABF    mov         eax,dword ptr [ebp-4]
 00475AC2    mov         eax,dword ptr [eax+20C];TComboBox.FMaxLength:Integer
 00475AC8    cmp         eax,dword ptr [ebp-8]
>00475ACB    je          00475AFE
 00475ACD    mov         eax,dword ptr [ebp-8]
 00475AD0    mov         edx,dword ptr [ebp-4]
 00475AD3    mov         dword ptr [edx+20C],eax;TComboBox.FMaxLength:Integer
 00475AD9    mov         eax,dword ptr [ebp-4]
 00475ADC    call        TWinControl.HandleAllocated
 00475AE1    test        al,al
>00475AE3    je          00475AFE
 00475AE5    push        0
 00475AE7    mov         eax,dword ptr [ebp-8]
 00475AEA    push        eax
 00475AEB    push        141
 00475AF0    mov         eax,dword ptr [ebp-4]
 00475AF3    call        TWinControl.GetHandle
 00475AF8    push        eax
 00475AF9    call        user32.SendMessageA
 00475AFE    pop         ecx
 00475AFF    pop         ecx
 00475B00    pop         ebp
 00475B01    ret
*}
end;

//00475B04
procedure TComboBox.SetItemHeight(Value:Integer);
begin
{*
 00475B04    push        ebp
 00475B05    mov         ebp,esp
 00475B07    add         esp,0FFFFFFF8
 00475B0A    mov         dword ptr [ebp-8],edx
 00475B0D    mov         dword ptr [ebp-4],eax
 00475B10    cmp         dword ptr [ebp-8],0
>00475B14    jle         00475B2A
 00475B16    mov         eax,dword ptr [ebp-8]
 00475B19    mov         edx,dword ptr [ebp-4]
 00475B1C    mov         dword ptr [edx+238],eax;TComboBox.FItemHeight:Integer
 00475B22    mov         eax,dword ptr [ebp-4]
 00475B25    call        TWinControl.RecreateWnd
 00475B2A    pop         ecx
 00475B2B    pop         ecx
 00475B2C    pop         ebp
 00475B2D    ret
*}
end;

//00475B30
{*procedure TCustomCombo.WMCreate(?:?);
begin
 00475B30    push        ebp
 00475B31    mov         ebp,esp
 00475B33    add         esp,0FFFFFFF8
 00475B36    mov         dword ptr [ebp-8],edx
 00475B39    mov         dword ptr [ebp-4],eax
 00475B3C    mov         edx,dword ptr [ebp-8]
 00475B3F    mov         eax,dword ptr [ebp-4]
 00475B42    mov         ecx,dword ptr [eax]
 00475B44    call        dword ptr [ecx-10];TCustomCombo.DefaultHandler
 00475B47    mov         eax,dword ptr [ebp-4]
 00475B4A    cmp         dword ptr [eax+64],0;TCustomCombo.FText:PChar
>00475B4E    je          00475B65
 00475B50    mov         eax,dword ptr [ebp-4]
 00475B53    mov         eax,dword ptr [eax+64];TCustomCombo.FText:PChar
 00475B56    push        eax
 00475B57    mov         eax,dword ptr [ebp-4]
 00475B5A    call        TWinControl.GetHandle
 00475B5F    push        eax
 00475B60    call        user32.SetWindowTextA
 00475B65    pop         ecx
 00475B66    pop         ecx
 00475B67    pop         ebp
 00475B68    ret
end;*}

//00475B6C
{*procedure TCustomCombo.WMDrawItem(?:?);
begin
 00475B6C    push        ebp
 00475B6D    mov         ebp,esp
 00475B6F    add         esp,0FFFFFFF8
 00475B72    mov         dword ptr [ebp-8],edx
 00475B75    mov         dword ptr [ebp-4],eax
 00475B78    mov         edx,dword ptr [ebp-8]
 00475B7B    mov         eax,dword ptr [ebp-4]
 00475B7E    mov         ecx,dword ptr [eax]
 00475B80    call        dword ptr [ecx-10];TCustomCombo.DefaultHandler
 00475B83    pop         ecx
 00475B84    pop         ecx
 00475B85    pop         ebp
 00475B86    ret
end;*}

//00475B88
{*procedure TCustomCombo.WMMeasureItem(?:?);
begin
 00475B88    push        ebp
 00475B89    mov         ebp,esp
 00475B8B    add         esp,0FFFFFFF8
 00475B8E    mov         dword ptr [ebp-8],edx
 00475B91    mov         dword ptr [ebp-4],eax
 00475B94    mov         edx,dword ptr [ebp-8]
 00475B97    mov         eax,dword ptr [ebp-4]
 00475B9A    mov         ecx,dword ptr [eax]
 00475B9C    call        dword ptr [ecx-10];TCustomCombo.DefaultHandler
 00475B9F    pop         ecx
 00475BA0    pop         ecx
 00475BA1    pop         ebp
 00475BA2    ret
end;*}

//00475BA4
{*procedure TCustomCombo.WMDeleteItem(?:?);
begin
 00475BA4    push        ebp
 00475BA5    mov         ebp,esp
 00475BA7    add         esp,0FFFFFFF8
 00475BAA    mov         dword ptr [ebp-8],edx
 00475BAD    mov         dword ptr [ebp-4],eax
 00475BB0    mov         edx,dword ptr [ebp-8]
 00475BB3    mov         eax,dword ptr [ebp-4]
 00475BB6    mov         ecx,dword ptr [eax]
 00475BB8    call        dword ptr [ecx-10];TCustomCombo.DefaultHandler
 00475BBB    pop         ecx
 00475BBC    pop         ecx
 00475BBD    pop         ebp
 00475BBE    ret
end;*}

//00475BC0
{*procedure TCustomCombo.WMGetDlgCode(?:?);
begin
 00475BC0    push        ebp
 00475BC1    mov         ebp,esp
 00475BC3    add         esp,0FFFFFFF8
 00475BC6    mov         dword ptr [ebp-8],edx
 00475BC9    mov         dword ptr [ebp-4],eax
 00475BCC    mov         edx,dword ptr [ebp-8]
 00475BCF    mov         eax,dword ptr [ebp-4]
 00475BD2    mov         ecx,dword ptr [eax]
 00475BD4    call        dword ptr [ecx-10];TCustomCombo.DefaultHandler
 00475BD7    mov         eax,dword ptr [ebp-4]
 00475BDA    call        00475998
 00475BDF    test        al,al
>00475BE1    je          00475BEA
 00475BE3    mov         eax,dword ptr [ebp-8]
 00475BE6    or          dword ptr [eax+0C],4
 00475BEA    pop         ecx
 00475BEB    pop         ecx
 00475BEC    pop         ebp
 00475BED    ret
end;*}

//00475BF0
{*procedure TCustomCombo.CMCancelMode(?:?);
begin
 00475BF0    push        ebp
 00475BF1    mov         ebp,esp
 00475BF3    add         esp,0FFFFFFF8
 00475BF6    mov         dword ptr [ebp-8],edx
 00475BF9    mov         dword ptr [ebp-4],eax
 00475BFC    mov         eax,dword ptr [ebp-8]
 00475BFF    mov         eax,dword ptr [eax+8]
 00475C02    cmp         eax,dword ptr [ebp-4]
>00475C05    je          00475C18
 00475C07    push        0
 00475C09    xor         ecx,ecx
 00475C0B    mov         edx,14F
 00475C10    mov         eax,dword ptr [ebp-4]
 00475C13    call        00484FFC
 00475C18    pop         ecx
 00475C19    pop         ecx
 00475C1A    pop         ebp
 00475C1B    ret
end;*}

//00475C1C
{*procedure TCustomCombo.CMCtl3DChanged(?:?);
begin
 00475C1C    push        ebp
 00475C1D    mov         ebp,esp
 00475C1F    add         esp,0FFFFFFF8
 00475C22    mov         dword ptr [ebp-8],edx
 00475C25    mov         dword ptr [ebp-4],eax
 00475C28    mov         eax,[0056E264];^NewStyleControls:Boolean
 00475C2D    cmp         byte ptr [eax],0
>00475C30    je          00475C3A
 00475C32    mov         eax,dword ptr [ebp-4]
 00475C35    call        TWinControl.RecreateWnd
 00475C3A    mov         edx,dword ptr [ebp-8]
 00475C3D    mov         eax,dword ptr [ebp-4]
 00475C40    call        TWinControl.CMCtl3DChanged
 00475C45    pop         ecx
 00475C46    pop         ecx
 00475C47    pop         ebp
 00475C48    ret
end;*}

//00475C4C
{*procedure TCustomComboBox.CMParentColorChanged(?:?);
begin
 00475C4C    push        ebp
 00475C4D    mov         ebp,esp
 00475C4F    add         esp,0FFFFFFF8
 00475C52    mov         dword ptr [ebp-8],edx
 00475C55    mov         dword ptr [ebp-4],eax
 00475C58    mov         edx,dword ptr [ebp-8]
 00475C5B    mov         eax,dword ptr [ebp-4]
 00475C5E    call        TControl.CMParentColorChanged
 00475C63    mov         eax,[0056E264];^NewStyleControls:Boolean
 00475C68    cmp         byte ptr [eax],0
>00475C6B    jne         00475C81
 00475C6D    mov         eax,dword ptr [ebp-4]
 00475C70    cmp         byte ptr [eax+276],2;TCustomComboBox.FStyle:TComboBoxStyle
>00475C77    jae         00475C81
 00475C79    mov         eax,dword ptr [ebp-4]
 00475C7C    mov         edx,dword ptr [eax]
 00475C7E    call        dword ptr [edx+7C];TCustomComboBox.sub_0048BE68
 00475C81    pop         ecx
 00475C82    pop         ecx
 00475C83    pop         ebp
 00475C84    ret
end;*}

//00475DDC
procedure TComboBox.SetCharCase(Value:TEditCharCase);
begin
{*
 00475DDC    push        ebp
 00475DDD    mov         ebp,esp
 00475DDF    add         esp,0FFFFFFF8
 00475DE2    mov         byte ptr [ebp-5],dl
 00475DE5    mov         dword ptr [ebp-4],eax
 00475DE8    mov         eax,dword ptr [ebp-4]
 00475DEB    mov         al,byte ptr [eax+274];TComboBox.FCharCase:TEditCharCase
 00475DF1    cmp         al,byte ptr [ebp-5]
>00475DF4    je          00475E0A
 00475DF6    mov         al,byte ptr [ebp-5]
 00475DF9    mov         edx,dword ptr [ebp-4]
 00475DFC    mov         byte ptr [edx+274],al;TComboBox.FCharCase:TEditCharCase
 00475E02    mov         eax,dword ptr [ebp-4]
 00475E05    call        TWinControl.RecreateWnd
 00475E0A    pop         ecx
 00475E0B    pop         ecx
 00475E0C    pop         ebp
 00475E0D    ret
*}
end;

//00475E10
{*procedure sub_00475E10(?:?; ?:?; ?:?);
begin
 00475E10    push        ebp
 00475E11    mov         ebp,esp
 00475E13    add         esp,0FFFFFFE8
 00475E16    push        ebx
 00475E17    push        esi
 00475E18    push        edi
 00475E19    mov         dword ptr [ebp-0C],ecx
 00475E1C    mov         dword ptr [ebp-8],edx
 00475E1F    mov         dword ptr [ebp-4],eax
 00475E22    xor         eax,eax
 00475E24    push        ebp
 00475E25    push        476104
 00475E2A    push        dword ptr fs:[eax]
 00475E2D    mov         dword ptr fs:[eax],esp
 00475E30    mov         eax,dword ptr [ebp-8]
 00475E33    mov         eax,dword ptr [eax]
 00475E35    cmp         eax,104
>00475E3A    jg          00475E8B
>00475E3C    je          00475F30
 00475E42    cmp         eax,87
>00475E47    jg          00475E6D
>00475E49    je          0047605E
 00475E4F    sub         eax,7
>00475E52    je          00475EDE
 00475E58    dec         eax
>00475E59    je          00475F16
 00475E5F    sub         eax,7C
>00475E62    je          00476081
>00475E68    jmp         004760B3
 00475E6D    sub         eax,100
>00475E72    je          00475F30
 00475E78    dec         eax
>00475E79    je          00475FBD
 00475E7F    dec         eax
>00475E80    je          00475F62
>00475E86    jmp         004760B3
 00475E8B    cmp         eax,0BD00
>00475E90    jg          00475EBC
>00475E92    je          0047609E
 00475E98    sub         eax,105
>00475E9D    je          00475FBD
 00475EA3    sub         eax,0FB
>00475EA8    je          00475FDD
 00475EAE    sub         eax,5
>00475EB1    je          00475FF4
>00475EB7    jmp         004760B3
 00475EBC    sub         eax,0BD02
>00475EC1    je          0047609E
 00475EC7    sub         eax,2
>00475ECA    je          0047609E
 00475ED0    sub         eax,2
>00475ED3    je          0047609E
>00475ED9    jmp         004760B3
 00475EDE    mov         eax,dword ptr [ebp-4]
 00475EE1    call        004A0740
 00475EE6    mov         dword ptr [ebp-18],eax
 00475EE9    cmp         dword ptr [ebp-18],0
>00475EED    je          004760B3
 00475EF3    mov         edx,dword ptr [ebp-4]
 00475EF6    mov         eax,dword ptr [ebp-18]
 00475EF9    mov         ecx,dword ptr [eax]
 00475EFB    call        dword ptr [ecx+0E8]
 00475F01    test        al,al
>00475F03    jne         004760B3
 00475F09    xor         eax,eax
 00475F0B    pop         edx
 00475F0C    pop         ecx
 00475F0D    pop         ecx
 00475F0E    mov         dword ptr fs:[eax],edx
>00475F11    jmp         0047611D
 00475F16    mov         eax,dword ptr [ebp-4]
 00475F19    test        byte ptr [eax+54],20;TCustomCombo.FControlState:TControlState
>00475F1D    je          004760B3
 00475F23    xor         eax,eax
 00475F25    pop         edx
 00475F26    pop         ecx
 00475F27    pop         ecx
 00475F28    mov         dword ptr fs:[eax],edx
>00475F2B    jmp         0047611D
 00475F30    mov         eax,dword ptr [ebp-4]
 00475F33    mov         eax,dword ptr [eax+244];TCustomCombo.FListHandle:HWND
 00475F39    cmp         eax,dword ptr [ebp-0C]
>00475F3C    je          004760B3
 00475F42    mov         edx,dword ptr [ebp-8]
 00475F45    mov         eax,dword ptr [ebp-4]
 00475F48    call        0048A8B4
 00475F4D    test        al,al
>00475F4F    je          004760B3
 00475F55    xor         eax,eax
 00475F57    pop         edx
 00475F58    pop         ecx
 00475F59    pop         ecx
 00475F5A    mov         dword ptr fs:[eax],edx
>00475F5D    jmp         0047611D
 00475F62    mov         edx,dword ptr [ebp-8]
 00475F65    mov         eax,dword ptr [ebp-4]
 00475F68    call        0048AB04
 00475F6D    test        al,al
>00475F6F    je          00475F7E
 00475F71    xor         eax,eax
 00475F73    pop         edx
 00475F74    pop         ecx
 00475F75    pop         ecx
 00475F76    mov         dword ptr fs:[eax],edx
>00475F79    jmp         0047611D
 00475F7E    mov         eax,dword ptr [ebp-8]
 00475F81    cmp         word ptr [eax+4],0D
>00475F86    je          00475F96
 00475F88    mov         eax,dword ptr [ebp-8]
 00475F8B    cmp         word ptr [eax+4],1B
>00475F90    jne         004760B3
 00475F96    mov         eax,dword ptr [ebp-4]
 00475F99    call        00475998
 00475F9E    test        al,al
>00475FA0    je          004760B3
 00475FA6    xor         edx,edx
 00475FA8    mov         eax,dword ptr [ebp-4]
 00475FAB    call        004759C8
 00475FB0    xor         eax,eax
 00475FB2    pop         edx
 00475FB3    pop         ecx
 00475FB4    pop         ecx
 00475FB5    mov         dword ptr fs:[eax],edx
>00475FB8    jmp         0047611D
 00475FBD    mov         edx,dword ptr [ebp-8]
 00475FC0    mov         eax,dword ptr [ebp-4]
 00475FC3    call        0048A9F0
 00475FC8    test        al,al
>00475FCA    je          004760B3
 00475FD0    xor         eax,eax
 00475FD2    pop         edx
 00475FD3    pop         ecx
 00475FD4    pop         ecx
 00475FD5    mov         dword ptr fs:[eax],edx
>00475FD8    jmp         0047611D
 00475FDD    mov         ecx,dword ptr [ebp-8]
 00475FE0    mov         eax,[0056E3C0];^Application:TApplication
 00475FE5    mov         eax,dword ptr [eax]
 00475FE7    mov         edx,dword ptr [ebp-4]
 00475FEA    call        004AC4DC
>00475FEF    jmp         004760B3
 00475FF4    mov         eax,dword ptr [ebp-4]
 00475FF7    call        00472BF8
 00475FFC    test        al,al
>00475FFE    je          004760B3
 00476004    mov         eax,dword ptr [ebp-8]
 00476007    movsx       eax,word ptr [eax+8]
 0047600B    mov         dword ptr [ebp-14],eax
 0047600E    mov         eax,dword ptr [ebp-8]
 00476011    movsx       eax,word ptr [eax+0A]
 00476015    mov         dword ptr [ebp-10],eax
 00476018    push        1
 0047601A    lea         eax,[ebp-14]
 0047601D    push        eax
 0047601E    mov         eax,dword ptr [ebp-4]
 00476021    call        TWinControl.GetHandle
 00476026    push        eax
 00476027    mov         eax,dword ptr [ebp-0C]
 0047602A    push        eax
 0047602B    call        user32.MapWindowPoints
 00476030    mov         eax,dword ptr [ebp-8]
 00476033    mov         dx,word ptr [ebp-14]
 00476037    mov         word ptr [eax+8],dx
 0047603B    mov         eax,dword ptr [ebp-8]
 0047603E    mov         dx,word ptr [ebp-10]
 00476042    mov         word ptr [eax+0A],dx
 00476046    mov         edx,dword ptr [ebp-8]
 00476049    mov         eax,dword ptr [ebp-4]
 0047604C    mov         ecx,dword ptr [eax]
 0047604E    call        dword ptr [ecx+74];TCustomCombo.sub_00476128
 00476051    xor         eax,eax
 00476053    pop         edx
 00476054    pop         ecx
 00476055    pop         ecx
 00476056    mov         dword ptr fs:[eax],edx
>00476059    jmp         0047611D
 0047605E    mov         eax,dword ptr [ebp-4]
 00476061    call        00475998
 00476066    test        al,al
>00476068    je          004760B3
 0047606A    mov         eax,dword ptr [ebp-8]
 0047606D    mov         dword ptr [eax+0C],4
 00476074    xor         eax,eax
 00476076    pop         edx
 00476077    pop         ecx
 00476078    pop         ecx
 00476079    mov         dword ptr fs:[eax],edx
>0047607C    jmp         0047611D
 00476081    mov         eax,dword ptr [ebp-4]
 00476084    test        byte ptr [eax+1C],10;TCustomCombo.FComponentState:TComponentState
>00476088    je          004760B3
 0047608A    mov         eax,dword ptr [ebp-8]
 0047608D    mov         dword ptr [eax+0C],0FFFFFFFF
 00476094    xor         eax,eax
 00476096    pop         edx
 00476097    pop         ecx
 00476098    pop         ecx
 00476099    mov         dword ptr fs:[eax],edx
>0047609C    jmp         0047611D
 0047609E    mov         edx,dword ptr [ebp-8]
 004760A1    mov         eax,dword ptr [ebp-4]
 004760A4    mov         ecx,dword ptr [eax]
 004760A6    call        dword ptr [ecx+74];TCustomCombo.sub_00476128
 004760A9    xor         eax,eax
 004760AB    pop         edx
 004760AC    pop         ecx
 004760AD    pop         ecx
 004760AE    mov         dword ptr fs:[eax],edx
>004760B1    jmp         0047611D
 004760B3    mov         eax,dword ptr [ebp-8]
 004760B6    mov         eax,dword ptr [eax+8]
 004760B9    push        eax
 004760BA    mov         eax,dword ptr [ebp-8]
 004760BD    mov         eax,dword ptr [eax+4]
 004760C0    push        eax
 004760C1    mov         eax,dword ptr [ebp-8]
 004760C4    mov         eax,dword ptr [eax]
 004760C6    push        eax
 004760C7    mov         eax,dword ptr [ebp-0C]
 004760CA    push        eax
 004760CB    mov         eax,dword ptr [ebp+8]
 004760CE    push        eax
 004760CF    call        user32.CallWindowProcA
 004760D4    mov         edx,dword ptr [ebp-8]
 004760D7    mov         dword ptr [edx+0C],eax
 004760DA    mov         eax,dword ptr [ebp-8]
 004760DD    cmp         dword ptr [eax],203
>004760E3    jne         004760FA
 004760E5    mov         eax,dword ptr [ebp-4]
 004760E8    test        byte ptr [eax+50],80;TCustomCombo.FControlStyle:TControlStyle
>004760EC    je          004760FA
 004760EE    mov         eax,dword ptr [ebp-4]
 004760F1    mov         si,0FFE9
 004760F5    call        @CallDynaInst;TControl.sub_0048555C
 004760FA    xor         eax,eax
 004760FC    pop         edx
 004760FD    pop         ecx
 004760FE    pop         ecx
 004760FF    mov         dword ptr fs:[eax],edx
>00476102    jmp         0047611D
>00476104    jmp         @HandleAnyException
 00476109    mov         eax,[0056E3C0];^Application:TApplication
 0047610E    mov         eax,dword ptr [eax]
 00476110    mov         edx,dword ptr [ebp-4]
 00476113    call        TApplication.HandleException
 00476118    call        @DoneExcept
 0047611D    pop         edi
 0047611E    pop         esi
 0047611F    pop         ebx
 00476120    mov         esp,ebp
 00476122    pop         ebp
 00476123    ret         4
end;*}

//00476128
{*procedure sub_00476128(?:?);
begin
 00476128    push        ebp
 00476129    mov         ebp,esp
 0047612B    add         esp,0FFFFFFF8
 0047612E    mov         dword ptr [ebp-8],edx
 00476131    mov         dword ptr [ebp-4],eax
 00476134    mov         eax,dword ptr [ebp-4]
 00476137    test        byte ptr [eax+1C],10;TCustomCombo.FComponentState:TComponentState
>0047613B    jne         0047619F
 0047613D    mov         eax,dword ptr [ebp-8]
 00476140    cmp         dword ptr [eax],201
>00476146    je          00476153
 00476148    mov         eax,dword ptr [ebp-8]
 0047614B    cmp         dword ptr [eax],203
>00476151    jne         0047619F
 00476153    mov         eax,dword ptr [ebp-4]
 00476156    call        004842C4
 0047615B    test        al,al
>0047615D    jne         0047619F
 0047615F    mov         eax,dword ptr [ebp-4]
 00476162    cmp         byte ptr [eax+5D],1;TCustomCombo.FDragMode:TDragMode
>00476166    jne         0047619F
 00476168    mov         edx,dword ptr [ebp-8]
 0047616B    mov         eax,dword ptr [ebp-4]
 0047616E    call        00488E08
 00476173    test        al,al
>00476175    jne         00476274
 0047617B    mov         ax,[00476278];0x1 gvar_00476278
 00476181    mov         edx,dword ptr [ebp-4]
 00476184    or          ax,word ptr [edx+54];TCustomCombo.FControlState:TControlState
 00476188    mov         edx,dword ptr [ebp-4]
 0047618B    mov         word ptr [edx+54],ax;TCustomCombo.FControlState:TControlState
 0047618F    mov         edx,dword ptr [ebp-8]
 00476192    mov         eax,dword ptr [ebp-4]
 00476195    mov         ecx,dword ptr [eax]
 00476197    call        dword ptr [ecx-14];TObject.Dispatch
>0047619A    jmp         00476274
 0047619F    mov         eax,dword ptr [ebp-8]
 004761A2    mov         eax,dword ptr [eax]
 004761A4    sub         eax,5
>004761A7    je          004761BD
 004761A9    sub         eax,0FD
>004761AE    je          0047622E
 004761B0    add         eax,0FFFFFFD0
 004761B3    sub         eax,7
>004761B6    jb          004761DD
>004761B8    jmp         00476269
 004761BD    mov         eax,dword ptr [ebp-4]
 004761C0    cmp         byte ptr [eax+25C],0;TCustomCombo.FDroppingDown:Boolean
>004761C7    je          00476269
 004761CD    mov         edx,dword ptr [ebp-8]
 004761D0    mov         eax,dword ptr [ebp-4]
 004761D3    mov         ecx,dword ptr [eax]
 004761D5    call        dword ptr [ecx-10];TCustomCombo.DefaultHandler
>004761D8    jmp         00476274
 004761DD    mov         eax,dword ptr [ebp-4]
 004761E0    mov         eax,dword ptr [eax+68];TCustomCombo.FFont:TFont
 004761E3    mov         eax,dword ptr [eax+18];TFont.Color:TColor
 004761E6    call        ColorToRGB
 004761EB    push        eax
 004761EC    mov         eax,dword ptr [ebp-8]
 004761EF    mov         eax,dword ptr [eax+4]
 004761F2    push        eax
 004761F3    call        gdi32.SetTextColor
 004761F8    mov         eax,dword ptr [ebp-4]
 004761FB    mov         eax,dword ptr [eax+170];TCustomCombo.FBrush:TBrush
 00476201    call        TBrush.GetColor
 00476206    call        ColorToRGB
 0047620B    push        eax
 0047620C    mov         eax,dword ptr [ebp-8]
 0047620F    mov         eax,dword ptr [eax+4]
 00476212    push        eax
 00476213    call        gdi32.SetBkColor
 00476218    mov         eax,dword ptr [ebp-4]
 0047621B    mov         eax,dword ptr [eax+170];TCustomCombo.FBrush:TBrush
 00476221    call        TBrush.GetHandle
 00476226    mov         edx,dword ptr [ebp-8]
 00476229    mov         dword ptr [edx+0C],eax
>0047622C    jmp         00476274
 0047622E    mov         edx,dword ptr [ebp-8]
 00476231    mov         eax,dword ptr [ebp-4]
 00476234    call        0048AB04
 00476239    test        al,al
>0047623B    jne         00476274
 0047623D    mov         eax,dword ptr [ebp-8]
 00476240    cmp         word ptr [eax+4],0D
>00476245    je          00476251
 00476247    mov         eax,dword ptr [ebp-8]
 0047624A    cmp         word ptr [eax+4],1B
>0047624F    jne         00476269
 00476251    mov         eax,dword ptr [ebp-4]
 00476254    call        00475998
 00476259    test        al,al
>0047625B    je          00476269
 0047625D    xor         edx,edx
 0047625F    mov         eax,dword ptr [ebp-4]
 00476262    call        004759C8
>00476267    jmp         00476274
 00476269    mov         edx,dword ptr [ebp-8]
 0047626C    mov         eax,dword ptr [ebp-4]
 0047626F    call        00488EC8
 00476274    pop         ecx
 00476275    pop         ecx
 00476276    pop         ebp
 00476277    ret
end;*}

//0047627C
{*procedure TCustomCombo.sub_0047627C(?:?);
begin
 0047627C    push        ebp
 0047627D    mov         ebp,esp
 0047627F    add         esp,0FFFFFFF4
 00476282    push        ebx
 00476283    push        esi
 00476284    xor         ecx,ecx
 00476286    mov         dword ptr [ebp-0C],ecx
 00476289    mov         dword ptr [ebp-8],edx
 0047628C    mov         dword ptr [ebp-4],eax
 0047628F    xor         eax,eax
 00476291    push        ebp
 00476292    push        47640C
 00476297    push        dword ptr fs:[eax]
 0047629A    mov         dword ptr fs:[eax],esp
 0047629D    mov         eax,dword ptr [ebp-8]
 004762A0    movzx       eax,word ptr [eax+6]
 004762A4    cmp         eax,8
>004762A7    ja          004763F6
 004762AD    jmp         dword ptr [eax*4+4762B4]
 004762AD    dd          004763F6
 004762AD    dd          0047636B
 004762AD    dd          004762D8
 004762AD    dd          004763BC
 004762AD    dd          004763DA
 004762AD    dd          004762E9
 004762AD    dd          004763F6
 004762AD    dd          004762FA
 004762AD    dd          004763AE
 004762D8    mov         eax,dword ptr [ebp-4]
 004762DB    mov         si,0FFE9
 004762DF    call        @CallDynaInst;TControl.sub_0048555C
>004762E4    jmp         004763F6
 004762E9    mov         eax,dword ptr [ebp-4]
 004762EC    mov         si,0FFB3
 004762F0    call        @CallDynaInst;TCustomCombo.sub_0047641C
>004762F5    jmp         004763F6
 004762FA    mov         eax,dword ptr [ebp-4]
 004762FD    mov         byte ptr [eax+25D],0;TCustomCombo.FFocusChanged:Boolean
 00476304    mov         eax,dword ptr [ebp-4]
 00476307    mov         si,0FFB1
 0047630B    call        @CallDynaInst;TCustomCombo.sub_00476524
 00476310    mov         eax,dword ptr [ebp-4]
 00476313    mov         edx,dword ptr [eax]
 00476315    call        dword ptr [edx+0F0];TCustomCombo.sub_00476684
 0047631B    mov         eax,dword ptr [ebp-4]
 0047631E    cmp         byte ptr [eax+25D],0;TCustomCombo.FFocusChanged:Boolean
>00476325    je          004763F6
 0047632B    push        0
 0047632D    push        0
 0047632F    push        1F
 00476331    mov         eax,dword ptr [ebp-4]
 00476334    call        TWinControl.GetHandle
 00476339    push        eax
 0047633A    call        user32.PostMessageA
 0047633F    mov         eax,dword ptr [ebp-4]
 00476342    cmp         byte ptr [eax+25E],0;TCustomCombo.FIsFocused:Boolean
>00476349    jne         004763F6
 0047634F    push        0
 00476351    push        0
 00476353    push        14F
 00476358    mov         eax,dword ptr [ebp-4]
 0047635B    call        TWinControl.GetHandle
 00476360    push        eax
 00476361    call        user32.PostMessageA
>00476366    jmp         004763F6
 0047636B    mov         eax,dword ptr [ebp-4]
 0047636E    mov         edx,dword ptr [eax]
 00476370    call        dword ptr [edx+0CC];TComboBox.GetItemIndex
 00476376    mov         edx,eax
 00476378    lea         ecx,[ebp-0C]
 0047637B    mov         eax,dword ptr [ebp-4]
 0047637E    mov         eax,dword ptr [eax+23C];TCustomCombo.FItems:TStrings
 00476384    mov         ebx,dword ptr [eax]
 00476386    call        dword ptr [ebx+0C];@AbstractError
 00476389    mov         edx,dword ptr [ebp-0C]
 0047638C    mov         eax,dword ptr [ebp-4]
 0047638F    call        TPanel.SetCaption
 00476394    mov         eax,dword ptr [ebp-4]
 00476397    mov         si,0FFEB
 0047639B    call        @CallDynaInst;TControl.sub_004854CC
 004763A0    mov         eax,dword ptr [ebp-4]
 004763A3    mov         si,0FFB2
 004763A7    call        @CallDynaInst;TCustomCombo.sub_00476600
>004763AC    jmp         004763F6
 004763AE    mov         eax,dword ptr [ebp-4]
 004763B1    mov         si,0FFB0
 004763B5    call        @CallDynaInst;TCustomCombo.sub_004765D4
>004763BA    jmp         004763F6
 004763BC    mov         eax,dword ptr [ebp-4]
 004763BF    mov         byte ptr [eax+25E],1;TCustomCombo.FIsFocused:Boolean
 004763C6    mov         eax,dword ptr [ebp-4]
 004763C9    mov         byte ptr [eax+25D],1;TCustomCombo.FFocusChanged:Boolean
 004763D0    mov         eax,dword ptr [ebp-4]
 004763D3    call        0048A034
>004763D8    jmp         004763F6
 004763DA    mov         eax,dword ptr [ebp-4]
 004763DD    mov         byte ptr [eax+25E],0;TCustomCombo.FIsFocused:Boolean
 004763E4    mov         eax,dword ptr [ebp-4]
 004763E7    mov         byte ptr [eax+25D],1;TCustomCombo.FFocusChanged:Boolean
 004763EE    mov         eax,dword ptr [ebp-4]
 004763F1    call        0048A140
 004763F6    xor         eax,eax
 004763F8    pop         edx
 004763F9    pop         ecx
 004763FA    pop         ecx
 004763FB    mov         dword ptr fs:[eax],edx
 004763FE    push        476413
 00476403    lea         eax,[ebp-0C]
 00476406    call        @LStrClr
 0047640B    ret
>0047640C    jmp         @HandleFinally
>00476411    jmp         00476403
 00476413    pop         esi
 00476414    pop         ebx
 00476415    mov         esp,ebp
 00476417    pop         ebp
 00476418    ret
end;*}

//0047641C
procedure TCustomCombo.sub_0047641C;
begin
{*
 0047641C    push        ebp
 0047641D    mov         ebp,esp
 0047641F    push        ecx
 00476420    push        ebx
 00476421    mov         dword ptr [ebp-4],eax
 00476424    mov         eax,dword ptr [ebp-4]
 00476427    call        00483218
 0047642C    mov         eax,dword ptr [ebp-4]
 0047642F    cmp         word ptr [eax+21A],0;TCustomCombo.?f21A:word
>00476437    je          0047644B
 00476439    mov         ebx,dword ptr [ebp-4]
 0047643C    mov         edx,dword ptr [ebp-4]
 0047643F    mov         eax,dword ptr [ebx+21C];TCustomCombo.?f21C:dword
 00476445    call        dword ptr [ebx+218];TCustomCombo.FOnChange
 0047644B    pop         ebx
 0047644C    pop         ecx
 0047644D    pop         ebp
 0047644E    ret
*}
end;

//00476450
{*procedure sub_00476450(?:?; ?:?; ?:?);
begin
 00476450    push        ebp
 00476451    mov         ebp,esp
 00476453    add         esp,0FFFFFFE4
 00476456    push        ebx
 00476457    push        esi
 00476458    push        edi
 00476459    xor         ebx,ebx
 0047645B    mov         dword ptr [ebp-1C],ebx
 0047645E    mov         esi,ecx
 00476460    lea         edi,[ebp-18]
 00476463    movs        dword ptr [edi],dword ptr [esi]
 00476464    movs        dword ptr [edi],dword ptr [esi]
 00476465    movs        dword ptr [edi],dword ptr [esi]
 00476466    movs        dword ptr [edi],dword ptr [esi]
 00476467    mov         dword ptr [ebp-8],edx
 0047646A    mov         dword ptr [ebp-4],eax
 0047646D    xor         eax,eax
 0047646F    push        ebp
 00476470    push        476512
 00476475    push        dword ptr fs:[eax]
 00476478    mov         dword ptr fs:[eax],esp
 0047647B    mov         eax,dword ptr [ebp-4]
 0047647E    mov         eax,dword ptr [eax+208];TCustomComboBox.FCanvas:TCanvas
 00476484    call        00481B68
 00476489    mov         eax,dword ptr [ebp-4]
 0047648C    cmp         word ptr [eax+282],0;TCustomComboBox.?f282:word
>00476494    je          004764B6
 00476496    lea         eax,[ebp-18]
 00476499    push        eax
 0047649A    mov         ax,word ptr [ebp+8]
 0047649E    push        eax
 0047649F    mov         ebx,dword ptr [ebp-4]
 004764A2    mov         ecx,dword ptr [ebp-8]
 004764A5    mov         edx,dword ptr [ebp-4]
 004764A8    mov         eax,dword ptr [ebx+284];TCustomComboBox.?f284:dword
 004764AE    call        dword ptr [ebx+280];TCustomComboBox.FOnDrawItem
>004764B4    jmp         004764FC
 004764B6    lea         edx,[ebp-18]
 004764B9    mov         eax,dword ptr [ebp-4]
 004764BC    mov         eax,dword ptr [eax+208];TCustomComboBox.FCanvas:TCanvas
 004764C2    call        0042F030
 004764C7    cmp         dword ptr [ebp-8],0
>004764CB    jl          004764FC
 004764CD    lea         ecx,[ebp-1C]
 004764D0    mov         edx,dword ptr [ebp-8]
 004764D3    mov         eax,dword ptr [ebp-4]
 004764D6    mov         eax,dword ptr [eax+23C];TCustomComboBox.FItems:TStrings
 004764DC    mov         ebx,dword ptr [eax]
 004764DE    call        dword ptr [ebx+0C];@AbstractError
 004764E1    mov         eax,dword ptr [ebp-1C]
 004764E4    push        eax
 004764E5    mov         edx,dword ptr [ebp-18]
 004764E8    add         edx,2
 004764EB    mov         ecx,dword ptr [ebp-14]
 004764EE    mov         eax,dword ptr [ebp-4]
 004764F1    mov         eax,dword ptr [eax+208];TCustomComboBox.FCanvas:TCanvas
 004764F7    call        0042F344
 004764FC    xor         eax,eax
 004764FE    pop         edx
 004764FF    pop         ecx
 00476500    pop         ecx
 00476501    mov         dword ptr fs:[eax],edx
 00476504    push        476519
 00476509    lea         eax,[ebp-1C]
 0047650C    call        @LStrClr
 00476511    ret
>00476512    jmp         @HandleFinally
>00476517    jmp         00476509
 00476519    pop         edi
 0047651A    pop         esi
 0047651B    pop         ebx
 0047651C    mov         esp,ebp
 0047651E    pop         ebp
 0047651F    ret         4
end;*}

//00476524
procedure TCustomCombo.sub_00476524;
begin
{*
 00476524    push        ebp
 00476525    mov         ebp,esp
 00476527    push        ecx
 00476528    push        ebx
 00476529    mov         dword ptr [ebp-4],eax
 0047652C    mov         eax,dword ptr [ebp-4]
 0047652F    cmp         word ptr [eax+22A],0;TCustomCombo.?f22A:word
>00476537    je          0047654B
 00476539    mov         ebx,dword ptr [ebp-4]
 0047653C    mov         edx,dword ptr [ebp-4]
 0047653F    mov         eax,dword ptr [ebx+22C];TCustomCombo.?f22C:dword
 00476545    call        dword ptr [ebx+228];TCustomCombo.FOnDropDown
 0047654B    pop         ebx
 0047654C    pop         ecx
 0047654D    pop         ebp
 0047654E    ret
*}
end;

//00476550
procedure sub_00476550;
begin
{*
 00476550    push        ebp
 00476551    mov         ebp,esp
 00476553    push        ecx
 00476554    mov         dword ptr [ebp-4],eax
 00476557    mov         eax,dword ptr [ebp-4]
 0047655A    call        004864B8
 0047655F    mov         eax,dword ptr [ebp-4]
 00476562    cmp         dword ptr [eax+214],0FFFFFFFF;TCustomCombo.FItemIndex:Integer
>00476569    je          0047657F
 0047656B    mov         eax,dword ptr [ebp-4]
 0047656E    mov         edx,dword ptr [eax+214];TCustomCombo.FItemIndex:Integer
 00476574    mov         eax,dword ptr [ebp-4]
 00476577    mov         ecx,dword ptr [eax]
 00476579    call        dword ptr [ecx+0D0];TComboBox.SetItemIndex
 0047657F    pop         ecx
 00476580    pop         ebp
 00476581    ret
*}
end;

//00476584
procedure TCustomCombo.sub_00476584;
begin
{*
 00476584    push        ebp
 00476585    mov         ebp,esp
 00476587    add         esp,0FFFFFFF4
 0047658A    mov         dword ptr [ebp-4],eax
 0047658D    mov         byte ptr [ebp-5],0
 00476591    mov         eax,dword ptr [ebp-4]
 00476594    call        TWinControl.HandleAllocated
 00476599    test        al,al
>0047659B    je          004765CA
 0047659D    call        user32.GetFocus
 004765A2    mov         dword ptr [ebp-0C],eax
 004765A5    mov         eax,dword ptr [ebp-0C]
 004765A8    mov         edx,dword ptr [ebp-4]
 004765AB    cmp         eax,dword ptr [edx+240];TCustomCombo.FEditHandle:HWND
>004765B1    je          004765C5
 004765B3    mov         eax,dword ptr [ebp-0C]
 004765B6    mov         edx,dword ptr [ebp-4]
 004765B9    cmp         eax,dword ptr [edx+244];TCustomCombo.FListHandle:HWND
>004765BF    je          004765C5
 004765C1    xor         eax,eax
>004765C3    jmp         004765C7
 004765C5    mov         al,1
 004765C7    mov         byte ptr [ebp-5],al
 004765CA    mov         al,byte ptr [ebp-5]
 004765CD    mov         esp,ebp
 004765CF    pop         ebp
 004765D0    ret
*}
end;

//004765D4
procedure TCustomCombo.sub_004765D4;
begin
{*
 004765D4    push        ebp
 004765D5    mov         ebp,esp
 004765D7    push        ecx
 004765D8    push        ebx
 004765D9    mov         dword ptr [ebp-4],eax
 004765DC    mov         eax,dword ptr [ebp-4]
 004765DF    cmp         word ptr [eax+232],0;TCustomCombo.?f232:word
>004765E7    je          004765FB
 004765E9    mov         ebx,dword ptr [ebp-4]
 004765EC    mov         edx,dword ptr [ebp-4]
 004765EF    mov         eax,dword ptr [ebx+234];TCustomCombo.?f234:dword
 004765F5    call        dword ptr [ebx+230];TCustomCombo.FOnCloseUp
 004765FB    pop         ebx
 004765FC    pop         ecx
 004765FD    pop         ebp
 004765FE    ret
*}
end;

//00476600
procedure TCustomCombo.sub_00476600;
begin
{*
 00476600    push        ebp
 00476601    mov         ebp,esp
 00476603    push        ecx
 00476604    push        ebx
 00476605    push        esi
 00476606    mov         dword ptr [ebp-4],eax
 00476609    mov         eax,dword ptr [ebp-4]
 0047660C    cmp         word ptr [eax+222],0;TCustomCombo.?f222:word
>00476614    je          0047662A
 00476616    mov         ebx,dword ptr [ebp-4]
 00476619    mov         edx,dword ptr [ebp-4]
 0047661C    mov         eax,dword ptr [ebx+224];TCustomCombo.?f224:dword
 00476622    call        dword ptr [ebx+220];TCustomCombo.FOnSelect
>00476628    jmp         00476636
 0047662A    mov         eax,dword ptr [ebp-4]
 0047662D    mov         si,0FFB3
 00476631    call        @CallDynaInst;TCustomCombo.sub_0047641C
 00476636    pop         esi
 00476637    pop         ebx
 00476638    pop         ecx
 00476639    pop         ebp
 0047663A    ret
*}
end;

//0047663C
procedure TCustomCombo.CreateWnd;
begin
{*
 0047663C    push        ebp
 0047663D    mov         ebp,esp
 0047663F    push        ecx
 00476640    mov         dword ptr [ebp-4],eax
 00476643    mov         eax,dword ptr [ebp-4]
 00476646    call        TWinControl.CreateWnd
 0047664B    push        0
 0047664D    mov         eax,dword ptr [ebp-4]
 00476650    mov         eax,dword ptr [eax+20C];TCustomCombo.FMaxLength:Integer
 00476656    push        eax
 00476657    push        141
 0047665C    mov         eax,dword ptr [ebp-4]
 0047665F    call        TWinControl.GetHandle
 00476664    push        eax
 00476665    call        user32.SendMessageA
 0047666A    mov         eax,dword ptr [ebp-4]
 0047666D    xor         edx,edx
 0047666F    mov         dword ptr [eax+240],edx;TCustomCombo.FEditHandle:HWND
 00476675    mov         eax,dword ptr [ebp-4]
 00476678    xor         edx,edx
 0047667A    mov         dword ptr [eax+244],edx;TCustomCombo.FListHandle:HWND
 00476680    pop         ecx
 00476681    pop         ebp
 00476682    ret
*}
end;

//00476684
procedure sub_00476684;
begin
{*
 00476684    push        ebp
 00476685    mov         ebp,esp
 00476687    add         esp,0FFFFFFF8
 0047668A    mov         dword ptr [ebp-4],eax
 0047668D    mov         eax,dword ptr [ebp-4]
 00476690    mov         edx,dword ptr [eax]
 00476692    call        dword ptr [edx+104];@AbstractError
 00476698    mov         dword ptr [ebp-8],eax
 0047669B    mov         eax,dword ptr [ebp-4]
 0047669E    mov         eax,dword ptr [eax+210];TCustomCombo.FDropDownCount:Integer
 004766A4    cmp         eax,dword ptr [ebp-8]
>004766A7    jge         004766B5
 004766A9    mov         eax,dword ptr [ebp-4]
 004766AC    mov         eax,dword ptr [eax+210];TCustomCombo.FDropDownCount:Integer
 004766B2    mov         dword ptr [ebp-8],eax
 004766B5    cmp         dword ptr [ebp-8],1
>004766B9    jge         004766C2
 004766BB    mov         dword ptr [ebp-8],1
 004766C2    mov         eax,dword ptr [ebp-4]
 004766C5    mov         byte ptr [eax+25C],1;TCustomCombo.FDroppingDown:Boolean
 004766CC    xor         eax,eax
 004766CE    push        ebp
 004766CF    push        47672B
 004766D4    push        dword ptr fs:[eax]
 004766D7    mov         dword ptr fs:[eax],esp
 004766DA    push        9E
 004766DF    mov         eax,dword ptr [ebp-4]
 004766E2    mov         edx,dword ptr [eax]
 004766E4    call        dword ptr [edx+0FC];@AbstractError
 004766EA    imul        dword ptr [ebp-8]
 004766ED    mov         edx,dword ptr [ebp-4]
 004766F0    add         eax,dword ptr [edx+4C];TCustomCombo.Height:Integer
 004766F3    add         eax,2
 004766F6    push        eax
 004766F7    mov         eax,dword ptr [ebp-4]
 004766FA    mov         eax,dword ptr [eax+48];TCustomCombo.Width:Integer
 004766FD    push        eax
 004766FE    push        0
 00476700    push        0
 00476702    push        0
 00476704    mov         eax,dword ptr [ebp-4]
 00476707    mov         eax,dword ptr [eax+248];TCustomCombo.FDropHandle:HWND
 0047670D    push        eax
 0047670E    call        user32.SetWindowPos
 00476713    xor         eax,eax
 00476715    pop         edx
 00476716    pop         ecx
 00476717    pop         ecx
 00476718    mov         dword ptr fs:[eax],edx
 0047671B    push        476732
 00476720    mov         eax,dword ptr [ebp-4]
 00476723    mov         byte ptr [eax+25C],0;TCustomCombo.FDroppingDown:Boolean
 0047672A    ret
>0047672B    jmp         @HandleFinally
>00476730    jmp         00476720
 00476732    push        5F
 00476734    push        0
 00476736    push        0
 00476738    push        0
 0047673A    push        0
 0047673C    push        0
 0047673E    mov         eax,dword ptr [ebp-4]
 00476741    mov         eax,dword ptr [eax+248];TCustomCombo.FDropHandle:HWND
 00476747    push        eax
 00476748    call        user32.SetWindowPos
 0047674D    pop         ecx
 0047674E    pop         ecx
 0047674F    pop         ebp
 00476750    ret
*}
end;

//00476754
procedure TComboBox.SetItems(Value:TStrings);
begin
{*
 00476754    push        ebp
 00476755    mov         ebp,esp
 00476757    add         esp,0FFFFFFF8
 0047675A    mov         dword ptr [ebp-8],edx
 0047675D    mov         dword ptr [ebp-4],eax
 00476760    mov         eax,dword ptr [ebp-4]
 00476763    cmp         dword ptr [eax+23C],0;TComboBox.FItems:TStrings
>0047676A    je          0047677F
 0047676C    mov         edx,dword ptr [ebp-8]
 0047676F    mov         eax,dword ptr [ebp-4]
 00476772    mov         eax,dword ptr [eax+23C];TComboBox.FItems:TStrings
 00476778    mov         ecx,dword ptr [eax]
 0047677A    call        dword ptr [ecx+8];TStrings.sub_00421BB0
>0047677D    jmp         0047678B
 0047677F    mov         eax,dword ptr [ebp-8]
 00476782    mov         edx,dword ptr [ebp-4]
 00476785    mov         dword ptr [edx+23C],eax;TComboBox.FItems:TStrings
 0047678B    pop         ecx
 0047678C    pop         ecx
 0047678D    pop         ebp
 0047678E    ret
*}
end;

//00476790
{*procedure sub_00476790(?:?);
begin
 00476790    push        ebp
 00476791    mov         ebp,esp
 00476793    push        ecx
 00476794    mov         dword ptr [ebp-4],eax
 00476797    or          edx,0FFFFFFFF
 0047679A    mov         eax,dword ptr [ebp-4]
 0047679D    mov         ecx,dword ptr [eax]
 0047679F    call        dword ptr [ecx+0D0];TComboBox.SetItemIndex
 004767A5    pop         ecx
 004767A6    pop         ebp
 004767A7    ret
end;*}

//004767A8
{*procedure sub_004767A8(?:?);
begin
 004767A8    push        ebp
 004767A9    mov         ebp,esp
 004767AB    add         esp,0FFFFFFF4
 004767AE    push        ebx
 004767AF    xor         ecx,ecx
 004767B1    mov         dword ptr [ebp-0C],ecx
 004767B4    mov         dword ptr [ebp-8],edx
 004767B7    mov         dword ptr [ebp-4],eax
 004767BA    xor         eax,eax
 004767BC    push        ebp
 004767BD    push        476837
 004767C2    push        dword ptr fs:[eax]
 004767C5    mov         dword ptr fs:[eax],esp
 004767C8    mov         eax,dword ptr [ebp-4]
 004767CB    mov         edx,dword ptr [eax]
 004767CD    call        dword ptr [edx+0CC];TComboBox.GetItemIndex
 004767D3    inc         eax
>004767D4    je          00476821
 004767D6    mov         eax,dword ptr [ebp-4]
 004767D9    mov         edx,dword ptr [eax]
 004767DB    call        dword ptr [edx+0CC];TComboBox.GetItemIndex
 004767E1    mov         edx,eax
 004767E3    lea         ecx,[ebp-0C]
 004767E6    mov         eax,dword ptr [ebp-4]
 004767E9    mov         eax,dword ptr [eax+23C];TCustomCombo.FItems:TStrings
 004767EF    mov         ebx,dword ptr [eax]
 004767F1    call        dword ptr [ebx+0C];@AbstractError
 004767F4    mov         eax,dword ptr [ebp-0C]
 004767F7    push        eax
 004767F8    mov         eax,dword ptr [ebp-4]
 004767FB    mov         edx,dword ptr [eax]
 004767FD    call        dword ptr [edx+0CC];TComboBox.GetItemIndex
 00476803    mov         edx,eax
 00476805    mov         eax,dword ptr [ebp-4]
 00476808    mov         eax,dword ptr [eax+23C];TCustomCombo.FItems:TStrings
 0047680E    mov         ecx,dword ptr [eax]
 00476810    call        dword ptr [ecx+18];TStrings.sub_004220A0
 00476813    mov         ecx,eax
 00476815    mov         eax,dword ptr [ebp-8]
 00476818    pop         edx
 00476819    mov         ebx,dword ptr [eax]
 0047681B    call        dword ptr [ebx+0D4]
 00476821    xor         eax,eax
 00476823    pop         edx
 00476824    pop         ecx
 00476825    pop         ecx
 00476826    mov         dword ptr fs:[eax],edx
 00476829    push        47683E
 0047682E    lea         eax,[ebp-0C]
 00476831    call        @LStrClr
 00476836    ret
>00476837    jmp         @HandleFinally
>0047683C    jmp         0047682E
 0047683E    pop         ebx
 0047683F    mov         esp,ebp
 00476841    pop         ebp
 00476842    ret
end;*}

//00476844
procedure sub_00476844;
begin
{*
 00476844    push        ebp
 00476845    mov         ebp,esp
 00476847    push        ecx
 00476848    mov         dword ptr [ebp-4],eax
 0047684B    mov         eax,dword ptr [ebp-4]
 0047684E    mov         edx,dword ptr [eax]
 00476850    call        dword ptr [edx+0CC];TComboBox.GetItemIndex
 00476856    inc         eax
>00476857    je          00476874
 00476859    mov         eax,dword ptr [ebp-4]
 0047685C    mov         edx,dword ptr [eax]
 0047685E    call        dword ptr [edx+0CC];TComboBox.GetItemIndex
 00476864    mov         edx,eax
 00476866    mov         eax,dword ptr [ebp-4]
 00476869    mov         eax,dword ptr [eax+23C];TCustomCombo.FItems:TStrings
 0047686F    mov         ecx,dword ptr [eax]
 00476871    call        dword ptr [ecx+48];@AbstractError
 00476874    pop         ecx
 00476875    pop         ebp
 00476876    ret
*}
end;

//00476878
{*function sub_00476878:?;
begin
 00476878    push        ebp
 00476879    mov         ebp,esp
 0047687B    add         esp,0FFFFFFF8
 0047687E    mov         dword ptr [ebp-4],eax
 00476881    mov         eax,dword ptr [ebp-4]
 00476884    mov         edx,dword ptr [eax]
 00476886    call        dword ptr [edx+104];@AbstractError
 0047688C    mov         dword ptr [ebp-8],eax
 0047688F    mov         eax,dword ptr [ebp-8]
 00476892    pop         ecx
 00476893    pop         ecx
 00476894    pop         ebp
 00476895    ret
end;*}

//00476898
procedure TComboBox.SetDropDownCount(Value:Integer);
begin
{*
 00476898    push        ebp
 00476899    mov         ebp,esp
 0047689B    add         esp,0FFFFFFF8
 0047689E    mov         dword ptr [ebp-8],edx
 004768A1    mov         dword ptr [ebp-4],eax
 004768A4    mov         eax,dword ptr [ebp-8]
 004768A7    mov         edx,dword ptr [ebp-4]
 004768AA    mov         dword ptr [edx+210],eax;TComboBox.FDropDownCount:Integer
 004768B0    pop         ecx
 004768B1    pop         ecx
 004768B2    pop         ebp
 004768B3    ret
*}
end;

//004768B4
{*procedure sub_004768B4(?:?; ?:?);
begin
 004768B4    push        ebp
 004768B5    mov         ebp,esp
 004768B7    add         esp,0FFFFFFF4
 004768BA    push        ebx
 004768BB    mov         dword ptr [ebp-0C],ecx
 004768BE    mov         dword ptr [ebp-8],edx
 004768C1    mov         dword ptr [ebp-4],eax
 004768C4    mov         eax,dword ptr [ebp-8]
 004768C7    call        @LStrAddRef
 004768CC    xor         eax,eax
 004768CE    push        ebp
 004768CF    push        476904
 004768D4    push        dword ptr fs:[eax]
 004768D7    mov         dword ptr fs:[eax],esp
 004768DA    mov         ecx,dword ptr [ebp-0C]
 004768DD    mov         edx,dword ptr [ebp-8]
 004768E0    mov         eax,dword ptr [ebp-4]
 004768E3    mov         eax,dword ptr [eax+23C];TCustomCombo.FItems:TStrings
 004768E9    mov         ebx,dword ptr [eax]
 004768EB    call        dword ptr [ebx+3C];TStrings.sub_00421ABC
 004768EE    xor         eax,eax
 004768F0    pop         edx
 004768F1    pop         ecx
 004768F2    pop         ecx
 004768F3    mov         dword ptr fs:[eax],edx
 004768F6    push        47690B
 004768FB    lea         eax,[ebp-8]
 004768FE    call        @LStrClr
 00476903    ret
>00476904    jmp         @HandleFinally
>00476909    jmp         004768FB
 0047690B    pop         ebx
 0047690C    mov         esp,ebp
 0047690E    pop         ebp
 0047690F    ret
end;*}

//00476910
constructor sub_00476910;
begin
{*
 00476910    push        ebp
 00476911    mov         ebp,esp
 00476913    add         esp,0FFFFFFF4
 00476916    test        dl,dl
>00476918    je          00476922
 0047691A    add         esp,0FFFFFFF0
 0047691D    call        @ClassCreate
 00476922    mov         dword ptr [ebp-0C],ecx
 00476925    mov         byte ptr [ebp-5],dl
 00476928    mov         dword ptr [ebp-4],eax
 0047692B    mov         ecx,dword ptr [ebp-0C]
 0047692E    xor         edx,edx
 00476930    mov         eax,dword ptr [ebp-4]
 00476933    call        00475768
 00476938    mov         eax,dword ptr [ebp-4]
 0047693B    mov         edx,dword ptr [eax]
 0047693D    call        dword ptr [edx+0F8];TCustomComboBox.sub_0047778C
 00476943    mov         dl,1
 00476945    call        TObject.Create
 0047694A    mov         edx,dword ptr [ebp-4]
 0047694D    mov         dword ptr [edx+23C],eax;TCustomComboBox.FItems:TStrings
 00476953    mov         eax,dword ptr [ebp-4]
 00476956    mov         eax,dword ptr [eax+23C];TCustomComboBox.FItems:TStrings
 0047695C    mov         edx,dword ptr [ebp-4]
 0047695F    mov         dword ptr [eax+10],edx
 00476962    mov         eax,dword ptr [ebp-4]
 00476965    mov         dword ptr [eax+238],10;TCustomComboBox.FItemHeight:Integer
 0047696F    mov         eax,dword ptr [ebp-4]
 00476972    mov         byte ptr [eax+276],0;TCustomComboBox.FStyle:TComboBoxStyle
 00476979    mov         eax,dword ptr [ebp-4]
 0047697C    xor         edx,edx
 0047697E    mov         dword ptr [eax+26C],edx;TCustomComboBox.FLastTime:Cardinal
 00476984    mov         eax,dword ptr [ebp-4]
 00476987    mov         byte ptr [eax+268],1;TCustomComboBox.FAutoComplete:Boolean
 0047698E    mov         eax,dword ptr [ebp-4]
 00476991    mov         byte ptr [eax+290],0;TCustomComboBox.FAutoCloseUp:Boolean
 00476998    mov         eax,dword ptr [ebp-4]
 0047699B    cmp         byte ptr [ebp-5],0
>0047699F    je          004769B0
 004769A1    call        @AfterConstruction
 004769A6    pop         dword ptr fs:[0]
 004769AD    add         esp,0C
 004769B0    mov         eax,dword ptr [ebp-4]
 004769B3    mov         esp,ebp
 004769B5    pop         ebp
 004769B6    ret
*}
end;

//004769B8
destructor TCustomComboBox.Destroy;
begin
{*
 004769B8    push        ebp
 004769B9    mov         ebp,esp
 004769BB    add         esp,0FFFFFFF8
 004769BE    call        @BeforeDestruction
 004769C3    mov         byte ptr [ebp-5],dl
 004769C6    mov         dword ptr [ebp-4],eax
 004769C9    mov         eax,dword ptr [ebp-4]
 004769CC    mov         eax,dword ptr [eax+23C]
 004769D2    call        TObject.Free
 004769D7    mov         eax,dword ptr [ebp-4]
 004769DA    mov         eax,dword ptr [eax+278]
 004769E0    call        TObject.Free
 004769E5    mov         dl,byte ptr [ebp-5]
 004769E8    and         dl,0FC
 004769EB    mov         eax,dword ptr [ebp-4]
 004769EE    call        TCustomCombo.Destroy
 004769F3    cmp         byte ptr [ebp-5],0
>004769F7    jle         00476A01
 004769F9    mov         eax,dword ptr [ebp-4]
 004769FC    call        @ClassDestroy
 00476A01    pop         ecx
 00476A02    pop         ecx
 00476A03    pop         ebp
 00476A04    ret
*}
end;

//00476A08
procedure TComboBox.SetSorted(Value:Boolean);
begin
{*
 00476A08    push        ebp
 00476A09    mov         ebp,esp
 00476A0B    add         esp,0FFFFFFF8
 00476A0E    mov         byte ptr [ebp-5],dl
 00476A11    mov         dword ptr [ebp-4],eax
 00476A14    mov         eax,dword ptr [ebp-4]
 00476A17    mov         al,byte ptr [eax+275];TComboBox.FSorted:Boolean
 00476A1D    cmp         al,byte ptr [ebp-5]
>00476A20    je          00476A36
 00476A22    mov         al,byte ptr [ebp-5]
 00476A25    mov         edx,dword ptr [ebp-4]
 00476A28    mov         byte ptr [edx+275],al;TComboBox.FSorted:Boolean
 00476A2E    mov         eax,dword ptr [ebp-4]
 00476A31    call        TWinControl.RecreateWnd
 00476A36    pop         ecx
 00476A37    pop         ecx
 00476A38    pop         ebp
 00476A39    ret
*}
end;

//00476A3C
procedure TComboBox.SetStyle(Value:TComboBoxStyle);
begin
{*
 00476A3C    push        ebp
 00476A3D    mov         ebp,esp
 00476A3F    add         esp,0FFFFFFF8
 00476A42    mov         byte ptr [ebp-5],dl
 00476A45    mov         dword ptr [ebp-4],eax
 00476A48    mov         eax,dword ptr [ebp-4]
 00476A4B    mov         al,byte ptr [eax+276];TComboBox.FStyle:TComboBoxStyle
 00476A51    cmp         al,byte ptr [ebp-5]
>00476A54    je          00476A96
 00476A56    mov         al,byte ptr [ebp-5]
 00476A59    mov         edx,dword ptr [ebp-4]
 00476A5C    mov         byte ptr [edx+276],al;TComboBox.FStyle:TComboBoxStyle
 00476A62    cmp         byte ptr [ebp-5],1
>00476A66    jne         00476A7D
 00476A68    mov         eax,[00476A9C];0x200 gvar_00476A9C
 00476A6D    mov         edx,dword ptr [ebp-4]
 00476A70    not         eax
 00476A72    and         eax,dword ptr [edx+50];TComboBox.FControlStyle:TControlStyle
 00476A75    mov         edx,dword ptr [ebp-4]
 00476A78    mov         dword ptr [edx+50],eax;TComboBox.FControlStyle:TControlStyle
>00476A7B    jmp         00476A8E
 00476A7D    mov         eax,[00476A9C];0x200 gvar_00476A9C
 00476A82    mov         edx,dword ptr [ebp-4]
 00476A85    or          eax,dword ptr [edx+50];TComboBox.FControlStyle:TControlStyle
 00476A88    mov         edx,dword ptr [ebp-4]
 00476A8B    mov         dword ptr [edx+50],eax;TComboBox.FControlStyle:TControlStyle
 00476A8E    mov         eax,dword ptr [ebp-4]
 00476A91    call        TWinControl.RecreateWnd
 00476A96    pop         ecx
 00476A97    pop         ecx
 00476A98    pop         ebp
 00476A99    ret
*}
end;

//00476AA0
function TComboBox.GetItemHeight:Integer;
begin
{*
 00476AA0    push        ebp
 00476AA1    mov         ebp,esp
 00476AA3    add         esp,0FFFFFFF8
 00476AA6    mov         dword ptr [ebp-4],eax
 00476AA9    mov         eax,dword ptr [ebp-4]
 00476AAC    mov         al,byte ptr [eax+276];TComboBox.FStyle:TComboBoxStyle
 00476AB2    add         al,0FD
 00476AB4    sub         al,2
>00476AB6    jae         00476AC6
 00476AB8    mov         eax,dword ptr [ebp-4]
 00476ABB    mov         eax,dword ptr [eax+238];TComboBox.FItemHeight:Integer
 00476AC1    mov         dword ptr [ebp-8],eax
>00476AC4    jmp         00476ADA
 00476AC6    push        0
 00476AC8    xor         ecx,ecx
 00476ACA    mov         edx,154
 00476ACF    mov         eax,dword ptr [ebp-4]
 00476AD2    call        00484FFC
 00476AD7    mov         dword ptr [ebp-8],eax
 00476ADA    mov         eax,dword ptr [ebp-8]
 00476ADD    pop         ecx
 00476ADE    pop         ecx
 00476ADF    pop         ebp
 00476AE0    ret
*}
end;

//00476AE4
{*procedure sub_00476AE4(?:?);
begin
 00476AE4    push        ebp
 00476AE5    mov         ebp,esp
 00476AE7    add         esp,0FFFFFFF8
 00476AEA    mov         dword ptr [ebp-8],edx
 00476AED    mov         dword ptr [ebp-4],eax
 00476AF0    mov         edx,dword ptr [ebp-8]
 00476AF3    mov         eax,dword ptr [ebp-4]
 00476AF6    call        00488034
 00476AFB    mov         ecx,476B54
 00476B00    mov         edx,dword ptr [ebp-8]
 00476B03    mov         eax,dword ptr [ebp-4]
 00476B06    call        00487F0C
 00476B0B    mov         eax,dword ptr [ebp-8]
 00476B0E    mov         eax,dword ptr [eax+4]
 00476B11    or          eax,200240
 00476B16    mov         edx,dword ptr [ebp-4]
 00476B19    movzx       edx,byte ptr [edx+276];TCustomComboBox.FStyle:TComboBoxStyle
 00476B20    or          eax,dword ptr [edx*4+56C670]
 00476B27    mov         edx,dword ptr [ebp-4]
 00476B2A    movzx       edx,byte ptr [edx+275];TCustomComboBox.FSorted:Boolean
 00476B31    or          eax,dword ptr [edx*4+56C690]
 00476B38    mov         edx,dword ptr [ebp-4]
 00476B3B    movzx       edx,byte ptr [edx+274];TCustomComboBox.FCharCase:TEditCharCase
 00476B42    or          eax,dword ptr [edx*4+56C684]
 00476B49    mov         edx,dword ptr [ebp-8]
 00476B4C    mov         dword ptr [edx+4],eax
 00476B4F    pop         ecx
 00476B50    pop         ecx
 00476B51    pop         ebp
 00476B52    ret
end;*}

//00476B60
procedure TCustomComboBox.CreateWnd;
begin
{*
 00476B60    push        ebp
 00476B61    mov         ebp,esp
 00476B63    add         esp,0FFFFFFF8
 00476B66    mov         dword ptr [ebp-4],eax
 00476B69    mov         eax,dword ptr [ebp-4]
 00476B6C    call        TCustomCombo.CreateWnd
 00476B71    mov         eax,dword ptr [ebp-4]
 00476B74    call        TWinControl.GetHandle
 00476B79    mov         edx,dword ptr [ebp-4]
 00476B7C    mov         dword ptr [edx+248],eax;TCustomComboBox.FDropHandle:HWND
 00476B82    mov         eax,dword ptr [ebp-4]
 00476B85    cmp         dword ptr [eax+278],0;TCustomComboBox.FSaveItems:TStringList
>00476B8C    je          00476C1D
 00476B92    mov         eax,dword ptr [ebp-4]
 00476B95    mov         edx,dword ptr [eax+278];TCustomComboBox.FSaveItems:TStringList
 00476B9B    mov         eax,dword ptr [ebp-4]
 00476B9E    mov         eax,dword ptr [eax+23C];TCustomComboBox.FItems:TStrings
 00476BA4    mov         ecx,dword ptr [eax]
 00476BA6    call        dword ptr [ecx+8];TStrings.sub_00421BB0
 00476BA9    mov         eax,dword ptr [ebp-4]
 00476BAC    mov         eax,dword ptr [eax+278];TCustomComboBox.FSaveItems:TStringList
 00476BB2    call        TObject.Free
 00476BB7    mov         eax,dword ptr [ebp-4]
 00476BBA    xor         edx,edx
 00476BBC    mov         dword ptr [eax+278],edx;TCustomComboBox.FSaveItems:TStringList
 00476BC2    mov         eax,dword ptr [ebp-4]
 00476BC5    cmp         dword ptr [eax+260],0FFFFFFFF;TCustomComboBox.FSaveIndex:Integer
>00476BCC    je          00476C1D
 00476BCE    mov         eax,dword ptr [ebp-4]
 00476BD1    mov         eax,dword ptr [eax+23C];TCustomComboBox.FItems:TStrings
 00476BD7    mov         edx,dword ptr [eax]
 00476BD9    call        dword ptr [edx+14];@AbstractError
 00476BDC    mov         edx,dword ptr [ebp-4]
 00476BDF    cmp         eax,dword ptr [edx+260];TCustomComboBox.FSaveIndex:Integer
>00476BE5    jge         00476BFE
 00476BE7    mov         eax,dword ptr [ebp-4]
 00476BEA    mov         eax,dword ptr [eax+23C];TCustomComboBox.FItems:TStrings
 00476BF0    mov         edx,dword ptr [eax]
 00476BF2    call        dword ptr [edx+14];@AbstractError
 00476BF5    mov         edx,dword ptr [ebp-4]
 00476BF8    mov         dword ptr [edx+260],eax;TCustomComboBox.FSaveIndex:Integer
 00476BFE    push        0
 00476C00    mov         eax,dword ptr [ebp-4]
 00476C03    mov         eax,dword ptr [eax+260];TCustomComboBox.FSaveIndex:Integer
 00476C09    push        eax
 00476C0A    push        14E
 00476C0F    mov         eax,dword ptr [ebp-4]
 00476C12    call        TWinControl.GetHandle
 00476C17    push        eax
 00476C18    call        user32.SendMessageA
 00476C1D    mov         eax,dword ptr [ebp-4]
 00476C20    mov         al,byte ptr [eax+276];TCustomComboBox.FStyle:TComboBoxStyle
 00476C26    sub         al,2
>00476C28    jae         00476CE7
 00476C2E    push        5
 00476C30    mov         eax,dword ptr [ebp-4]
 00476C33    call        TWinControl.GetHandle
 00476C38    push        eax
 00476C39    call        user32.GetWindow
 00476C3E    mov         dword ptr [ebp-8],eax
 00476C41    cmp         dword ptr [ebp-8],0
>00476C45    je          00476CE7
 00476C4B    mov         eax,dword ptr [ebp-4]
 00476C4E    cmp         byte ptr [eax+276],1;TCustomComboBox.FStyle:TComboBoxStyle
>00476C55    jne         00476CA6
 00476C57    mov         eax,dword ptr [ebp-8]
 00476C5A    mov         edx,dword ptr [ebp-4]
 00476C5D    mov         dword ptr [edx+244],eax;TCustomComboBox.FListHandle:HWND
 00476C63    push        0FC
 00476C65    mov         eax,dword ptr [ebp-4]
 00476C68    mov         eax,dword ptr [eax+244];TCustomComboBox.FListHandle:HWND
 00476C6E    push        eax
 00476C6F    call        user32.GetWindowLongA
 00476C74    mov         edx,dword ptr [ebp-4]
 00476C77    mov         dword ptr [edx+258],eax;TCustomComboBox.FDefListProc:Pointer
 00476C7D    mov         eax,dword ptr [ebp-4]
 00476C80    mov         eax,dword ptr [eax+254];TCustomComboBox.FListInstance:Pointer
 00476C86    push        eax
 00476C87    push        0FC
 00476C89    mov         eax,dword ptr [ebp-4]
 00476C8C    mov         eax,dword ptr [eax+244];TCustomComboBox.FListHandle:HWND
 00476C92    push        eax
 00476C93    call        user32.SetWindowLongA
 00476C98    push        2
 00476C9A    mov         eax,dword ptr [ebp-8]
 00476C9D    push        eax
 00476C9E    call        user32.GetWindow
 00476CA3    mov         dword ptr [ebp-8],eax
 00476CA6    mov         eax,dword ptr [ebp-8]
 00476CA9    mov         edx,dword ptr [ebp-4]
 00476CAC    mov         dword ptr [edx+240],eax;TCustomComboBox.FEditHandle:HWND
 00476CB2    push        0FC
 00476CB4    mov         eax,dword ptr [ebp-4]
 00476CB7    mov         eax,dword ptr [eax+240];TCustomComboBox.FEditHandle:HWND
 00476CBD    push        eax
 00476CBE    call        user32.GetWindowLongA
 00476CC3    mov         edx,dword ptr [ebp-4]
 00476CC6    mov         dword ptr [edx+250],eax;TCustomComboBox.FDefEditProc:Pointer
 00476CCC    mov         eax,dword ptr [ebp-4]
 00476CCF    mov         eax,dword ptr [eax+24C];TCustomComboBox.FEditInstance:Pointer
 00476CD5    push        eax
 00476CD6    push        0FC
 00476CD8    mov         eax,dword ptr [ebp-4]
 00476CDB    mov         eax,dword ptr [eax+240];TCustomComboBox.FEditHandle:HWND
 00476CE1    push        eax
 00476CE2    call        user32.SetWindowLongA
 00476CE7    mov         eax,[0056E264];^NewStyleControls:Boolean
 00476CEC    cmp         byte ptr [eax],0
>00476CEF    je          00476D15
 00476CF1    mov         eax,dword ptr [ebp-4]
 00476CF4    cmp         dword ptr [eax+240],0;TCustomComboBox.FEditHandle:HWND
>00476CFB    je          00476D15
 00476CFD    push        0
 00476CFF    push        3
 00476D01    push        0D3
 00476D06    mov         eax,dword ptr [ebp-4]
 00476D09    mov         eax,dword ptr [eax+240];TCustomComboBox.FEditHandle:HWND
 00476D0F    push        eax
 00476D10    call        user32.SendMessageA
 00476D15    pop         ecx
 00476D16    pop         ecx
 00476D17    pop         ebp
 00476D18    ret
*}
end;

//00476D1C
procedure sub_00476D1C;
begin
{*
 00476D1C    push        ebp
 00476D1D    mov         ebp,esp
 00476D1F    push        ecx
 00476D20    mov         dword ptr [ebp-4],eax
 00476D23    mov         eax,dword ptr [ebp-4]
 00476D26    mov         eax,dword ptr [eax+23C];TCustomComboBox.FItems:TStrings
 00476D2C    mov         edx,dword ptr [eax]
 00476D2E    call        dword ptr [edx+14];@AbstractError
 00476D31    test        eax,eax
>00476D33    jle         00476D75
 00476D35    mov         eax,dword ptr [ebp-4]
 00476D38    mov         edx,dword ptr [eax]
 00476D3A    call        dword ptr [edx+0CC];TComboBox.GetItemIndex
 00476D40    mov         edx,dword ptr [ebp-4]
 00476D43    mov         dword ptr [edx+260],eax;TCustomComboBox.FSaveIndex:Integer
 00476D49    mov         dl,1
 00476D4B    mov         eax,[0041DB24];TStringList
 00476D50    call        TObject.Create;TStringList.Create
 00476D55    mov         edx,dword ptr [ebp-4]
 00476D58    mov         dword ptr [edx+278],eax;TCustomComboBox.FSaveItems:TStringList
 00476D5E    mov         eax,dword ptr [ebp-4]
 00476D61    mov         edx,dword ptr [eax+23C];TCustomComboBox.FItems:TStrings
 00476D67    mov         eax,dword ptr [ebp-4]
 00476D6A    mov         eax,dword ptr [eax+278];TCustomComboBox.FSaveItems:TStringList
 00476D70    mov         ecx,dword ptr [eax]
 00476D72    call        dword ptr [ecx+8];TStringList.sub_00421BB0
 00476D75    mov         eax,dword ptr [ebp-4]
 00476D78    call        004886A4
 00476D7D    pop         ecx
 00476D7E    pop         ebp
 00476D7F    ret
*}
end;

//00476D80
{*procedure TCustomComboBox.WMEraseBkgnd(?:?);
begin
 00476D80    push        ebp
 00476D81    mov         ebp,esp
 00476D83    add         esp,0FFFFFFE8
 00476D86    mov         dword ptr [ebp-8],edx
 00476D89    mov         dword ptr [ebp-4],eax
 00476D8C    mov         eax,dword ptr [ebp-4]
 00476D8F    cmp         byte ptr [eax+276],1;TCustomComboBox.FStyle:TComboBoxStyle
>00476D96    jne         00476DD1
 00476D98    mov         eax,dword ptr [ebp-4]
 00476D9B    mov         eax,dword ptr [eax+30];TCustomComboBox.FParent:TWinControl
 00476D9E    mov         eax,dword ptr [eax+170];TWinControl.FBrush:TBrush
 00476DA4    call        TBrush.GetHandle
 00476DA9    push        eax
 00476DAA    lea         edx,[ebp-18]
 00476DAD    mov         eax,dword ptr [ebp-4]
 00476DB0    mov         ecx,dword ptr [eax]
 00476DB2    call        dword ptr [ecx+44];TCustomComboBox.sub_0048C23C
 00476DB5    lea         eax,[ebp-18]
 00476DB8    push        eax
 00476DB9    mov         eax,dword ptr [ebp-8]
 00476DBC    mov         eax,dword ptr [eax+4]
 00476DBF    push        eax
 00476DC0    call        user32.FillRect
 00476DC5    mov         eax,dword ptr [ebp-8]
 00476DC8    mov         dword ptr [eax+0C],1
>00476DCF    jmp         00476DDC
 00476DD1    mov         edx,dword ptr [ebp-8]
 00476DD4    mov         eax,dword ptr [ebp-4]
 00476DD7    mov         ecx,dword ptr [eax]
 00476DD9    call        dword ptr [ecx-10];TCustomComboBox.DefaultHandler
 00476DDC    mov         esp,ebp
 00476DDE    pop         ebp
 00476DDF    ret
end;*}

//00476DE0
{*function sub_00476DE0(?:?; ?:?; ?:?):?;
begin
 00476DE0    push        ebp
 00476DE1    mov         ebp,esp
 00476DE3    add         esp,0FFFFFFF4
 00476DE6    mov         dword ptr [ebp-8],edx
 00476DE9    mov         dword ptr [ebp-4],eax
 00476DEC    mov         eax,dword ptr [ebp-8]
 00476DEF    push        eax
 00476DF0    mov         eax,dword ptr [ebp-4]
 00476DF3    push        eax
 00476DF4    push        140
 00476DF9    mov         eax,dword ptr [ebp+8]
 00476DFC    mov         eax,dword ptr [eax-4]
 00476DFF    call        TWinControl.GetHandle
 00476E04    push        eax
 00476E05    call        user32.SendMessageA
 00476E0A    mov         eax,dword ptr [ebp-8]
 00476E0D    mov         eax,dword ptr [eax]
 00476E0F    mov         edx,dword ptr [ebp-4]
 00476E12    cmp         eax,dword ptr [edx]
 00476E14    seta        byte ptr [ebp-9]
 00476E18    mov         al,byte ptr [ebp-9]
 00476E1B    mov         esp,ebp
 00476E1D    pop         ebp
 00476E1E    ret
end;*}

//00476E20
{*procedure sub_00476E20(?:?);
begin
 00476E20    push        ebp
 00476E21    mov         ebp,esp
 00476E23    add         esp,0FFFFFFF4
 00476E26    xor         eax,eax
 00476E28    mov         dword ptr [ebp-0C],eax
 00476E2B    xor         eax,eax
 00476E2D    push        ebp
 00476E2E    push        476EDB
 00476E33    push        dword ptr fs:[eax]
 00476E36    mov         dword ptr fs:[eax],esp
 00476E39    lea         edx,[ebp-0C]
 00476E3C    mov         eax,dword ptr [ebp+8]
 00476E3F    mov         eax,dword ptr [eax-4]
 00476E42    call        TPanel.GetCaption
 00476E47    lea         eax,[ebp-8]
 00476E4A    push        eax
 00476E4B    lea         eax,[ebp-4]
 00476E4E    push        eax
 00476E4F    push        140
 00476E54    mov         eax,dword ptr [ebp+8]
 00476E57    mov         eax,dword ptr [eax-4]
 00476E5A    call        TWinControl.GetHandle
 00476E5F    push        eax
 00476E60    call        user32.SendMessageA
 00476E65    mov         ecx,dword ptr [ebp-8]
 00476E68    sub         ecx,dword ptr [ebp-4]
 00476E6B    mov         edx,dword ptr [ebp-4]
 00476E6E    inc         edx
 00476E6F    lea         eax,[ebp-0C]
 00476E72    call        @LStrDelete
 00476E77    push        0
 00476E79    push        0FF
 00476E7B    push        14E
 00476E80    mov         eax,dword ptr [ebp+8]
 00476E83    mov         eax,dword ptr [eax-4]
 00476E86    call        TWinControl.GetHandle
 00476E8B    push        eax
 00476E8C    call        user32.SendMessageA
 00476E91    mov         eax,dword ptr [ebp+8]
 00476E94    mov         eax,dword ptr [eax-4]
 00476E97    mov         edx,dword ptr [ebp-0C]
 00476E9A    call        TPanel.SetCaption
 00476E9F    mov         dx,word ptr [ebp-4]
 00476EA3    mov         ax,word ptr [ebp-4]
 00476EA7    call        004086B4
 00476EAC    push        eax
 00476EAD    push        0
 00476EAF    push        142
 00476EB4    mov         eax,dword ptr [ebp+8]
 00476EB7    mov         eax,dword ptr [eax-4]
 00476EBA    call        TWinControl.GetHandle
 00476EBF    push        eax
 00476EC0    call        user32.SendMessageA
 00476EC5    xor         eax,eax
 00476EC7    pop         edx
 00476EC8    pop         ecx
 00476EC9    pop         ecx
 00476ECA    mov         dword ptr fs:[eax],edx
 00476ECD    push        476EE2
 00476ED2    lea         eax,[ebp-0C]
 00476ED5    call        @LStrClr
 00476EDA    ret
>00476EDB    jmp         @HandleFinally
>00476EE0    jmp         00476ED2
 00476EE2    mov         esp,ebp
 00476EE4    pop         ebp
 00476EE5    ret
end;*}

//00476EE8
{*procedure TCustomComboBox.sub_00476EE8(?:?);
begin
 00476EE8    push        ebp
 00476EE9    mov         ebp,esp
 00476EEB    mov         ecx,0C
 00476EF0    push        0
 00476EF2    push        0
 00476EF4    dec         ecx
>00476EF5    jne         00476EF0
 00476EF7    push        esi
 00476EF8    mov         dword ptr [ebp-8],edx
 00476EFB    mov         dword ptr [ebp-4],eax
 00476EFE    xor         eax,eax
 00476F00    push        ebp
 00476F01    push        4772BF
 00476F06    push        dword ptr fs:[eax]
 00476F09    mov         dword ptr fs:[eax],esp
 00476F0C    mov         edx,dword ptr [ebp-8]
 00476F0F    mov         eax,dword ptr [ebp-4]
 00476F12    call        TWinControl.sub_0048AAD0
 00476F17    mov         eax,dword ptr [ebp-4]
 00476F1A    cmp         byte ptr [eax+268],0;TCustomComboBox.FAutoComplete:Boolean
>00476F21    je          00477275
 00476F27    mov         eax,dword ptr [ebp-4]
 00476F2A    mov         al,byte ptr [eax+276];TCustomComboBox.FStyle:TComboBoxStyle
 00476F30    sub         al,2
>00476F32    jae         00476F51
 00476F34    lea         edx,[ebp-3C]
 00476F37    mov         eax,dword ptr [ebp-4]
 00476F3A    call        TPanel.GetCaption
 00476F3F    mov         edx,dword ptr [ebp-3C]
 00476F42    mov         eax,dword ptr [ebp-4]
 00476F45    add         eax,270;TCustomComboBox.FFilter:String
 00476F4A    call        @LStrAsg
>00476F4F    jmp         00476F81
 00476F51    call        kernel32.GetTickCount
 00476F56    mov         edx,dword ptr [ebp-4]
 00476F59    sub         eax,dword ptr [edx+26C]
 00476F5F    cmp         eax,1F4
>00476F64    jb          00476F73
 00476F66    mov         eax,dword ptr [ebp-4]
 00476F69    add         eax,270;TCustomComboBox.FFilter:String
 00476F6E    call        @LStrClr
 00476F73    call        kernel32.GetTickCount
 00476F78    mov         edx,dword ptr [ebp-4]
 00476F7B    mov         dword ptr [edx+26C],eax;TCustomComboBox.FLastTime:Cardinal
 00476F81    mov         eax,dword ptr [ebp-8]
 00476F84    mov         al,byte ptr [eax]
 00476F86    sub         al,8
>00476F88    je          00476FCA
 00476F8A    dec         al
>00476F8C    je          00476F9B
 00476F8E    sub         al,12
>00476F90    jne         00477151
>00476F96    jmp         00477275
 00476F9B    mov         eax,dword ptr [ebp-4]
 00476F9E    cmp         byte ptr [eax+269],0;TCustomComboBox.FAutoDropDown:Boolean
>00476FA5    je          00477275
 00476FAB    mov         eax,dword ptr [ebp-4]
 00476FAE    call        00475998
 00476FB3    test        al,al
>00476FB5    je          00477275
 00476FBB    xor         edx,edx
 00476FBD    mov         eax,dword ptr [ebp-4]
 00476FC0    call        004759C8
>00476FC5    jmp         00477275
 00476FCA    push        ebp
 00476FCB    lea         edx,[ebp-10]
 00476FCE    lea         eax,[ebp-0C]
 00476FD1    call        00476DE0
 00476FD6    pop         ecx
 00476FD7    test        al,al
>00476FD9    je          00476FE7
 00476FDB    push        ebp
 00476FDC    call        00476E20
 00476FE1    pop         ecx
>00476FE2    jmp         0047713A
 00476FE7    mov         eax,dword ptr [ebp-4]
 00476FEA    mov         al,byte ptr [eax+276];TCustomComboBox.FStyle:TComboBoxStyle
 00476FF0    sub         al,2
>00476FF2    jae         004770F6
 00476FF8    lea         edx,[ebp-40]
 00476FFB    mov         eax,dword ptr [ebp-4]
 00476FFE    call        TPanel.GetCaption
 00477003    mov         eax,dword ptr [ebp-40]
 00477006    call        @LStrLen
 0047700B    test        eax,eax
>0047700D    jle         004770F6
 00477013    lea         edx,[ebp-18]
 00477016    mov         eax,dword ptr [ebp-4]
 00477019    call        TPanel.GetCaption
 0047701E    mov         eax,dword ptr [ebp-0C]
 00477021    mov         dword ptr [ebp-1C],eax
>00477024    jmp         00477029
 00477026    dec         dword ptr [ebp-1C]
 00477029    mov         edx,dword ptr [ebp-1C]
 0047702C    mov         eax,dword ptr [ebp-18]
 0047702F    call        00411160
 00477034    cmp         al,2
>00477036    je          00477026
 00477038    lea         eax,[ebp-14]
 0047703B    push        eax
 0047703C    mov         ecx,dword ptr [ebp-1C]
 0047703F    dec         ecx
 00477040    mov         edx,1
 00477045    mov         eax,dword ptr [ebp-18]
 00477048    call        @LStrCopy
 0047704D    push        0
 0047704F    push        0FF
 00477051    push        14E
 00477056    mov         eax,dword ptr [ebp-4]
 00477059    call        TWinControl.GetHandle
 0047705E    push        eax
 0047705F    call        user32.SendMessageA
 00477064    lea         eax,[ebp-48]
 00477067    push        eax
 00477068    mov         edx,dword ptr [ebp-10]
 0047706B    inc         edx
 0047706C    mov         ecx,7FFFFFFF
 00477071    mov         eax,dword ptr [ebp-18]
 00477074    call        @LStrCopy
 00477079    mov         ecx,dword ptr [ebp-48]
 0047707C    lea         eax,[ebp-44]
 0047707F    mov         edx,dword ptr [ebp-14]
 00477082    call        @LStrCat3
 00477087    mov         edx,dword ptr [ebp-44]
 0047708A    mov         eax,dword ptr [ebp-4]
 0047708D    call        TPanel.SetCaption
 00477092    mov         dx,word ptr [ebp-1C]
 00477096    dec         edx
 00477097    mov         ax,word ptr [ebp-1C]
 0047709B    dec         eax
 0047709C    call        004086B4
 004770A1    push        eax
 004770A2    push        0
 004770A4    push        142
 004770A9    mov         eax,dword ptr [ebp-4]
 004770AC    call        TWinControl.GetHandle
 004770B1    push        eax
 004770B2    call        user32.SendMessageA
 004770B7    lea         edx,[ebp-4C]
 004770BA    mov         eax,dword ptr [ebp-4]
 004770BD    call        TPanel.GetCaption
 004770C2    mov         edx,dword ptr [ebp-4C]
 004770C5    mov         eax,dword ptr [ebp-4]
 004770C8    add         eax,270;TCustomComboBox.FFilter:String
 004770CD    call        @LStrAsg
>004770D2    jmp         0047713A
 004770D4    mov         eax,dword ptr [ebp-4]
 004770D7    mov         eax,dword ptr [eax+270];TCustomComboBox.FFilter:String
 004770DD    call        @LStrLen
 004770E2    mov         edx,eax
 004770E4    mov         eax,dword ptr [ebp-4]
 004770E7    add         eax,270;TCustomComboBox.FFilter:String
 004770EC    mov         ecx,1
 004770F1    call        @LStrDelete
 004770F6    mov         eax,dword ptr [ebp-4]
 004770F9    mov         eax,dword ptr [eax+270];TCustomComboBox.FFilter:String
 004770FF    call        @LStrLen
 00477104    mov         edx,eax
 00477106    mov         eax,dword ptr [ebp-4]
 00477109    mov         eax,dword ptr [eax+270];TCustomComboBox.FFilter:String
 0047710F    call        00411160
 00477114    cmp         al,2
>00477116    je          004770D4
 00477118    mov         eax,dword ptr [ebp-4]
 0047711B    mov         eax,dword ptr [eax+270];TCustomComboBox.FFilter:String
 00477121    call        @LStrLen
 00477126    mov         edx,eax
 00477128    mov         eax,dword ptr [ebp-4]
 0047712B    add         eax,270;TCustomComboBox.FFilter:String
 00477130    mov         ecx,1
 00477135    call        @LStrDelete
 0047713A    mov         eax,dword ptr [ebp-8]
 0047713D    mov         byte ptr [eax],0
 00477140    mov         eax,dword ptr [ebp-4]
 00477143    mov         si,0FFB3
 00477147    call        @CallDynaInst;TCustomCombo.sub_0047641C
>0047714C    jmp         00477275
 00477151    mov         eax,dword ptr [ebp-4]
 00477154    cmp         byte ptr [eax+269],0;TCustomComboBox.FAutoDropDown:Boolean
>0047715B    je          00477173
 0047715D    mov         eax,dword ptr [ebp-4]
 00477160    call        00475998
 00477165    test        al,al
>00477167    jne         00477173
 00477169    mov         dl,1
 0047716B    mov         eax,dword ptr [ebp-4]
 0047716E    call        004759C8
 00477173    push        ebp
 00477174    lea         edx,[ebp-10]
 00477177    lea         eax,[ebp-0C]
 0047717A    call        00476DE0
 0047717F    pop         ecx
 00477180    test        al,al
>00477182    je          004771BD
 00477184    lea         eax,[ebp-50]
 00477187    push        eax
 00477188    mov         eax,dword ptr [ebp-4]
 0047718B    mov         eax,dword ptr [eax+270];TCustomComboBox.FFilter:String
 00477191    mov         ecx,dword ptr [ebp-0C]
 00477194    mov         edx,1
 00477199    call        @LStrCopy
 0047719E    mov         eax,dword ptr [ebp-50]
 004771A1    push        eax
 004771A2    lea         eax,[ebp-54]
 004771A5    mov         edx,dword ptr [ebp-8]
 004771A8    mov         dl,byte ptr [edx]
 004771AA    call        @LStrFromChar
 004771AF    mov         ecx,dword ptr [ebp-54]
 004771B2    lea         eax,[ebp-18]
 004771B5    pop         edx
 004771B6    call        @LStrCat3
>004771BB    jmp         004771DE
 004771BD    lea         eax,[ebp-58]
 004771C0    mov         edx,dword ptr [ebp-8]
 004771C3    mov         dl,byte ptr [edx]
 004771C5    call        @LStrFromChar
 004771CA    mov         ecx,dword ptr [ebp-58]
 004771CD    mov         eax,dword ptr [ebp-4]
 004771D0    mov         edx,dword ptr [eax+270];TCustomComboBox.FFilter:String
 004771D6    lea         eax,[ebp-18]
 004771D9    call        @LStrCat3
 004771DE    mov         eax,dword ptr [ebp-8]
 004771E1    mov         al,byte ptr [eax]
 004771E3    mov         edx,dword ptr ds:[56E618];^gvar_0056B820
 004771E9    and         eax,0FF
 004771EE    bt          dword ptr [edx],eax
>004771F1    jae         00477260
 004771F3    push        0
 004771F5    push        0
 004771F7    push        0
 004771F9    mov         eax,dword ptr [ebp-4]
 004771FC    call        TWinControl.GetHandle
 00477201    push        eax
 00477202    lea         eax,[ebp-38]
 00477205    push        eax
 00477206    call        user32.PeekMessageA
 0047720B    test        eax,eax
>0047720D    je          00477275
 0047720F    cmp         dword ptr [ebp-34],102
>00477216    jne         00477275
 00477218    lea         eax,[ebp-60]
 0047721B    mov         dl,byte ptr [ebp-30]
 0047721E    call        @LStrFromChar
 00477223    mov         ecx,dword ptr [ebp-60]
 00477226    lea         eax,[ebp-5C]
 00477229    mov         edx,dword ptr [ebp-18]
 0047722C    call        @LStrCat3
 00477231    mov         edx,dword ptr [ebp-5C]
 00477234    mov         eax,dword ptr [ebp-4]
 00477237    call        004772CC
 0047723C    test        al,al
>0047723E    je          00477275
 00477240    push        1
 00477242    push        0
 00477244    push        0
 00477246    mov         eax,dword ptr [ebp-4]
 00477249    call        TWinControl.GetHandle
 0047724E    push        eax
 0047724F    lea         eax,[ebp-38]
 00477252    push        eax
 00477253    call        user32.PeekMessageA
 00477258    mov         eax,dword ptr [ebp-8]
 0047725B    mov         byte ptr [eax],0
>0047725E    jmp         00477275
 00477260    mov         edx,dword ptr [ebp-18]
 00477263    mov         eax,dword ptr [ebp-4]
 00477266    call        004772CC
 0047726B    test        al,al
>0047726D    je          00477275
 0047726F    mov         eax,dword ptr [ebp-8]
 00477272    mov         byte ptr [eax],0
 00477275    xor         eax,eax
 00477277    pop         edx
 00477278    pop         ecx
 00477279    pop         ecx
 0047727A    mov         dword ptr fs:[eax],edx
 0047727D    push        4772C6
 00477282    lea         eax,[ebp-60]
 00477285    mov         edx,5
 0047728A    call        @LStrArrayClr
 0047728F    lea         eax,[ebp-4C]
 00477292    call        @LStrClr
 00477297    lea         eax,[ebp-48]
 0047729A    mov         edx,2
 0047729F    call        @LStrArrayClr
 004772A4    lea         eax,[ebp-40]
 004772A7    mov         edx,2
 004772AC    call        @LStrArrayClr
 004772B1    lea         eax,[ebp-18]
 004772B4    mov         edx,2
 004772B9    call        @LStrArrayClr
 004772BE    ret
>004772BF    jmp         @HandleFinally
>004772C4    jmp         00477282
 004772C6    pop         esi
 004772C7    mov         esp,ebp
 004772C9    pop         ebp
 004772CA    ret
end;*}

//004772CC
{*function sub_004772CC(?:TCustomComboBox; ?:AnsiString):?;
begin
 004772CC    push        ebp
 004772CD    mov         ebp,esp
 004772CF    add         esp,0FFFFFFDC
 004772D2    push        ebx
 004772D3    push        esi
 004772D4    xor         ecx,ecx
 004772D6    mov         dword ptr [ebp-24],ecx
 004772D9    mov         dword ptr [ebp-18],ecx
 004772DC    mov         dword ptr [ebp-1C],ecx
 004772DF    mov         dword ptr [ebp-20],ecx
 004772E2    mov         dword ptr [ebp-8],edx
 004772E5    mov         dword ptr [ebp-4],eax
 004772E8    xor         eax,eax
 004772EA    push        ebp
 004772EB    push        4774AF
 004772F0    push        dword ptr fs:[eax]
 004772F3    mov         dword ptr fs:[eax],esp
 004772F6    mov         eax,dword ptr [ebp-8]
 004772F9    call        @LStrLen
 004772FE    test        eax,eax
>00477300    jne         00477325
 00477302    mov         byte ptr [ebp-9],0
 00477306    or          edx,0FFFFFFFF
 00477309    mov         eax,dword ptr [ebp-4]
 0047730C    mov         ecx,dword ptr [eax]
 0047730E    call        dword ptr [ecx+0D0];TComboBox.SetItemIndex
 00477314    mov         eax,dword ptr [ebp-4]
 00477317    mov         si,0FFB3
 0047731B    call        @CallDynaInst;TCustomCombo.sub_0047641C
>00477320    jmp         0047748C
 00477325    mov         eax,dword ptr [ebp-8]
 00477328    call        @LStrToPChar
 0047732D    push        eax
 0047732E    push        0FF
 00477330    push        14C
 00477335    mov         eax,dword ptr [ebp-4]
 00477338    call        TWinControl.GetHandle
 0047733D    push        eax
 0047733E    call        user32.SendMessageA
 00477343    mov         dword ptr [ebp-10],eax
 00477346    cmp         dword ptr [ebp-10],0FFFFFFFF
 0047734A    setne       byte ptr [ebp-9]
 0047734E    cmp         byte ptr [ebp-9],0
>00477352    je          0047748C
 00477358    mov         eax,dword ptr [ebp-4]
 0047735B    mov         edx,dword ptr [eax]
 0047735D    call        dword ptr [edx+0CC];TComboBox.GetItemIndex
 00477363    cmp         eax,dword ptr [ebp-10]
 00477366    setne       byte ptr [ebp-11]
 0047736A    mov         eax,dword ptr [ebp-4]
 0047736D    cmp         byte ptr [eax+290],0;TCustomComboBox.FAutoCloseUp:Boolean
>00477374    je          004773A1
 00477376    mov         edx,dword ptr [ebp-8]
 00477379    mov         eax,dword ptr [ebp-4]
 0047737C    mov         eax,dword ptr [eax+23C];TCustomComboBox.FItems:TStrings
 00477382    mov         ecx,dword ptr [eax]
 00477384    call        dword ptr [ecx+54];TStrings.sub_004222F0
 00477387    inc         eax
>00477388    je          004773A1
 0047738A    push        0
 0047738C    push        0
 0047738E    push        14F
 00477393    mov         eax,dword ptr [ebp-4]
 00477396    call        TWinControl.GetHandle
 0047739B    push        eax
 0047739C    call        user32.SendMessageA
 004773A1    push        0
 004773A3    mov         eax,dword ptr [ebp-10]
 004773A6    push        eax
 004773A7    push        14E
 004773AC    mov         eax,dword ptr [ebp-4]
 004773AF    call        TWinControl.GetHandle
 004773B4    push        eax
 004773B5    call        user32.SendMessageA
 004773BA    mov         eax,dword ptr [ebp-4]
 004773BD    mov         al,byte ptr [eax+276];TCustomComboBox.FStyle:TComboBoxStyle
 004773C3    sub         al,2
>004773C5    jae         00477450
 004773CB    lea         eax,[ebp-1C]
 004773CE    push        eax
 004773CF    lea         ecx,[ebp-20]
 004773D2    mov         edx,dword ptr [ebp-10]
 004773D5    mov         eax,dword ptr [ebp-4]
 004773D8    mov         eax,dword ptr [eax+23C];TCustomComboBox.FItems:TStrings
 004773DE    mov         ebx,dword ptr [eax]
 004773E0    call        dword ptr [ebx+0C];@AbstractError
 004773E3    mov         eax,dword ptr [ebp-20]
 004773E6    push        eax
 004773E7    mov         eax,dword ptr [ebp-8]
 004773EA    call        @LStrLen
 004773EF    mov         edx,eax
 004773F1    inc         edx
 004773F2    mov         ecx,7FFFFFFF
 004773F7    pop         eax
 004773F8    call        @LStrCopy
 004773FD    mov         ecx,dword ptr [ebp-1C]
 00477400    lea         eax,[ebp-18]
 00477403    mov         edx,dword ptr [ebp-8]
 00477406    call        @LStrCat3
 0047740B    mov         edx,dword ptr [ebp-18]
 0047740E    mov         eax,dword ptr [ebp-4]
 00477411    call        TPanel.SetCaption
 00477416    lea         edx,[ebp-24]
 00477419    mov         eax,dword ptr [ebp-4]
 0047741C    call        TPanel.GetCaption
 00477421    mov         eax,dword ptr [ebp-24]
 00477424    call        @LStrLen
 00477429    push        eax
 0047742A    mov         eax,dword ptr [ebp-8]
 0047742D    call        @LStrLen
 00477432    pop         edx
 00477433    call        004086B4
 00477438    push        eax
 00477439    push        0
 0047743B    push        142
 00477440    mov         eax,dword ptr [ebp-4]
 00477443    call        TWinControl.GetHandle
 00477448    push        eax
 00477449    call        user32.SendMessageA
>0047744E    jmp         0047746E
 00477450    mov         edx,dword ptr [ebp-10]
 00477453    mov         eax,dword ptr [ebp-4]
 00477456    mov         ecx,dword ptr [eax]
 00477458    call        dword ptr [ecx+0D0];TComboBox.SetItemIndex
 0047745E    mov         eax,dword ptr [ebp-4]
 00477461    add         eax,270;TCustomComboBox.FFilter:String
 00477466    mov         edx,dword ptr [ebp-8]
 00477469    call        @LStrAsg
 0047746E    cmp         byte ptr [ebp-11],0
>00477472    je          0047748C
 00477474    mov         eax,dword ptr [ebp-4]
 00477477    mov         si,0FFEB
 0047747B    call        @CallDynaInst;TControl.sub_004854CC
 00477480    mov         eax,dword ptr [ebp-4]
 00477483    mov         si,0FFB2
 00477487    call        @CallDynaInst;TCustomCombo.sub_00476600
 0047748C    xor         eax,eax
 0047748E    pop         edx
 0047748F    pop         ecx
 00477490    pop         ecx
 00477491    mov         dword ptr fs:[eax],edx
 00477494    push        4774B6
 00477499    lea         eax,[ebp-24]
 0047749C    call        @LStrClr
 004774A1    lea         eax,[ebp-20]
 004774A4    mov         edx,3
 004774A9    call        @LStrArrayClr
 004774AE    ret
>004774AF    jmp         @HandleFinally
>004774B4    jmp         00477499
 004774B6    mov         al,byte ptr [ebp-9]
 004774B9    pop         esi
 004774BA    pop         ebx
 004774BB    mov         esp,ebp
 004774BD    pop         ebp
 004774BE    ret
end;*}

//004774C0
{*procedure sub_004774C0(?:?; ?:?);
begin
 004774C0    push        ebp
 004774C1    mov         ebp,esp
 004774C3    add         esp,0FFFFFFF4
 004774C6    push        ebx
 004774C7    mov         dword ptr [ebp-0C],ecx
 004774CA    mov         dword ptr [ebp-8],edx
 004774CD    mov         dword ptr [ebp-4],eax
 004774D0    mov         eax,dword ptr [ebp-4]
 004774D3    cmp         word ptr [eax+28A],0;TCustomComboBox.?f28A:word
>004774DB    je          004774F6
 004774DD    mov         eax,dword ptr [ebp-0C]
 004774E0    push        eax
 004774E1    mov         ebx,dword ptr [ebp-4]
 004774E4    mov         ecx,dword ptr [ebp-8]
 004774E7    mov         edx,dword ptr [ebp-4]
 004774EA    mov         eax,dword ptr [ebx+28C];TCustomComboBox.?f28C:dword
 004774F0    call        dword ptr [ebx+288];TCustomComboBox.FOnMeasureItem
 004774F6    pop         ebx
 004774F7    mov         esp,ebp
 004774F9    pop         ebp
 004774FA    ret
end;*}

//004774FC
{*procedure TCustomComboBox.sub_004774FC(?:?);
begin
 004774FC    push        ebp
 004774FD    mov         ebp,esp
 004774FF    add         esp,0FFFFFFF0
 00477502    push        ebx
 00477503    mov         dword ptr [ebp-8],edx
 00477506    mov         dword ptr [ebp-4],eax
 00477509    mov         eax,dword ptr [ebp-8]
 0047750C    mov         eax,dword ptr [eax+8]
 0047750F    mov         dword ptr [ebp-10],eax
 00477512    mov         eax,dword ptr [ebp-10]
 00477515    mov         ax,word ptr [eax+10]
 00477519    mov         word ptr [ebp-0A],ax
 0047751D    mov         eax,dword ptr [ebp-10]
 00477520    test        byte ptr [eax+11],10
>00477524    je          0047752C
 00477526    or          word ptr [ebp-0A],1000
 0047752C    mov         eax,dword ptr [ebp-10]
 0047752F    test        byte ptr [eax+10],20
>00477533    je          0047753A
 00477535    or          word ptr [ebp-0A],20
 0047753A    mov         eax,dword ptr [ebp-10]
 0047753D    mov         edx,dword ptr [eax+18]
 00477540    mov         eax,dword ptr [ebp-4]
 00477543    mov         eax,dword ptr [eax+208];TCustomComboBox.FCanvas:TCanvas
 00477549    call        TCanvas.SetHandle
 0047754E    mov         eax,dword ptr [ebp-4]
 00477551    mov         edx,dword ptr [eax+68];TCustomComboBox.FFont:TFont
 00477554    mov         eax,dword ptr [ebp-4]
 00477557    mov         eax,dword ptr [eax+208];TCustomComboBox.FCanvas:TCanvas
 0047755D    call        TCanvas.SetFont
 00477562    mov         eax,dword ptr [ebp-4]
 00477565    mov         edx,dword ptr [eax+170];TCustomComboBox.FBrush:TBrush
 0047756B    mov         eax,dword ptr [ebp-4]
 0047756E    mov         eax,dword ptr [eax+208];TCustomComboBox.FCanvas:TCanvas
 00477574    call        TCanvas.SetBrush
 00477579    mov         eax,dword ptr [ebp-10]
 0047757C    cmp         dword ptr [eax+8],0
>00477580    jl          004775B4
 00477582    test        byte ptr [ebp-0A],1
>00477586    je          004775B4
 00477588    mov         eax,dword ptr [ebp-4]
 0047758B    mov         eax,dword ptr [eax+208];TCustomComboBox.FCanvas:TCanvas
 00477591    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 00477594    mov         edx,0FF00000D
 00477599    call        TBrush.SetColor
 0047759E    mov         eax,dword ptr [ebp-4]
 004775A1    mov         eax,dword ptr [eax+208];TCustomComboBox.FCanvas:TCanvas
 004775A7    mov         eax,dword ptr [eax+0C];TCanvas.Font:TFont
 004775AA    mov         edx,0FF00000E
 004775AF    call        TFont.SetColor
 004775B4    mov         eax,dword ptr [ebp-10]
 004775B7    cmp         dword ptr [eax+8],0
>004775BB    jl          004775DB
 004775BD    mov         ax,word ptr [ebp-0A]
 004775C1    push        eax
 004775C2    mov         eax,dword ptr [ebp-10]
 004775C5    lea         ecx,[eax+1C]
 004775C8    mov         eax,dword ptr [ebp-10]
 004775CB    mov         edx,dword ptr [eax+8]
 004775CE    mov         eax,dword ptr [ebp-4]
 004775D1    mov         ebx,dword ptr [eax]
 004775D3    call        dword ptr [ebx+110];TCustomComboBox.sub_00476450
>004775D9    jmp         004775EF
 004775DB    mov         eax,dword ptr [ebp-10]
 004775DE    lea         edx,[eax+1C]
 004775E1    mov         eax,dword ptr [ebp-4]
 004775E4    mov         eax,dword ptr [eax+208];TCustomComboBox.FCanvas:TCanvas
 004775EA    call        0042F030
 004775EF    test        byte ptr [ebp-0A],10
>004775F3    je          00477608
 004775F5    mov         eax,dword ptr [ebp-10]
 004775F8    add         eax,1C
 004775FB    push        eax
 004775FC    mov         eax,dword ptr [ebp-10]
 004775FF    mov         eax,dword ptr [eax+18]
 00477602    push        eax
 00477603    call        user32.DrawFocusRect
 00477608    xor         edx,edx
 0047760A    mov         eax,dword ptr [ebp-4]
 0047760D    mov         eax,dword ptr [eax+208];TCustomComboBox.FCanvas:TCanvas
 00477613    call        TCanvas.SetHandle
 00477618    pop         ebx
 00477619    mov         esp,ebp
 0047761B    pop         ebp
 0047761C    ret
end;*}

//00477620
{*procedure TCustomComboBox.sub_00477620(?:?);
begin
 00477620    push        ebp
 00477621    mov         ebp,esp
 00477623    add         esp,0FFFFFFF4
 00477626    push        ebx
 00477627    mov         dword ptr [ebp-8],edx
 0047762A    mov         dword ptr [ebp-4],eax
 0047762D    mov         eax,dword ptr [ebp-8]
 00477630    mov         eax,dword ptr [eax+8]
 00477633    mov         dword ptr [ebp-0C],eax
 00477636    mov         eax,dword ptr [ebp-4]
 00477639    mov         eax,dword ptr [eax+238];TCustomComboBox.FItemHeight:Integer
 0047763F    mov         edx,dword ptr [ebp-0C]
 00477642    mov         dword ptr [edx+10],eax
 00477645    mov         eax,dword ptr [ebp-4]
 00477648    cmp         byte ptr [eax+276],4;TCustomComboBox.FStyle:TComboBoxStyle
>0047764F    jne         00477668
 00477651    mov         eax,dword ptr [ebp-0C]
 00477654    lea         ecx,[eax+10]
 00477657    mov         eax,dword ptr [ebp-0C]
 0047765A    mov         edx,dword ptr [eax+8]
 0047765D    mov         eax,dword ptr [ebp-4]
 00477660    mov         ebx,dword ptr [eax]
 00477662    call        dword ptr [ebx+114];TCustomComboBox.sub_004774C0
 00477668    pop         ebx
 00477669    mov         esp,ebp
 0047766B    pop         ebp
 0047766C    ret
end;*}

//00477670
{*procedure TCustomComboBox.WMLButtonDown(?:?);
begin
 00477670    push        ebp
 00477671    mov         ebp,esp
 00477673    add         esp,0FFFFFFF4
 00477676    mov         dword ptr [ebp-8],edx
 00477679    mov         dword ptr [ebp-4],eax
 0047767C    mov         eax,dword ptr [ebp-4]
 0047767F    cmp         byte ptr [eax+5D],1;TCustomComboBox.FDragMode:TDragMode
>00477683    jne         004776C5
 00477685    mov         eax,dword ptr [ebp-4]
 00477688    cmp         byte ptr [eax+276],2;TCustomComboBox.FStyle:TComboBoxStyle
>0047768F    jne         004776C5
 00477691    push        15
 00477693    call        user32.GetSystemMetrics
 00477698    mov         edx,dword ptr [ebp-4]
 0047769B    mov         edx,dword ptr [edx+48];TCustomComboBox.Width:Integer
 0047769E    sub         edx,eax
 004776A0    mov         eax,dword ptr [ebp-8]
 004776A3    movsx       eax,word ptr [eax+8]
 004776A7    cmp         edx,eax
>004776A9    jle         004776C5
 004776AB    mov         eax,dword ptr [ebp-4]
 004776AE    mov         edx,dword ptr [eax]
 004776B0    call        dword ptr [edx+0C4];TCustomComboBox.sub_0048C028
 004776B6    or          ecx,0FFFFFFFF
 004776B9    xor         edx,edx
 004776BB    mov         eax,dword ptr [ebp-4]
 004776BE    call        004841E0
>004776C3    jmp         00477705
 004776C5    mov         edx,dword ptr [ebp-8]
 004776C8    mov         eax,dword ptr [ebp-4]
 004776CB    call        TControl.WMLButtonDown
 004776D0    mov         eax,dword ptr [ebp-4]
 004776D3    call        00483B94
 004776D8    test        al,al
>004776DA    je          00477705
 004776DC    mov         eax,dword ptr [ebp-4]
 004776DF    call        004A0740
 004776E4    mov         dword ptr [ebp-0C],eax
 004776E7    cmp         dword ptr [ebp-0C],0
>004776EB    je          00477705
 004776ED    mov         eax,dword ptr [ebp-0C]
 004776F0    mov         eax,dword ptr [eax+220]
 004776F6    cmp         eax,dword ptr [ebp-4]
>004776F9    je          00477705
 004776FB    xor         edx,edx
 004776FD    mov         eax,dword ptr [ebp-4]
 00477700    call        00483BB0
 00477705    mov         esp,ebp
 00477707    pop         ebp
 00477708    ret
end;*}

//0047770C
{*procedure sub_0047770C(?:?);
begin
 0047770C    push        ebp
 0047770D    mov         ebp,esp
 0047770F    add         esp,0FFFFFFF8
 00477712    mov         dword ptr [ebp-8],edx
 00477715    mov         dword ptr [ebp-4],eax
 00477718    mov         eax,dword ptr [ebp-8]
 0047771B    mov         eax,dword ptr [eax]
 0047771D    add         eax,0FFFF42CE
 00477722    sub         eax,7
>00477725    jae         00477756
 00477727    mov         eax,[0056E264];^NewStyleControls:Boolean
 0047772C    cmp         byte ptr [eax],0
>0047772F    jne         00477756
 00477731    mov         eax,dword ptr [ebp-4]
 00477734    cmp         byte ptr [eax+276],2;TCustomComboBox.FStyle:TComboBoxStyle
>0047773B    jae         00477756
 0047773D    mov         eax,dword ptr [ebp-4]
 00477740    mov         eax,dword ptr [eax+30];TCustomComboBox.FParent:TWinControl
 00477743    mov         eax,dword ptr [eax+170];TWinControl.FBrush:TBrush
 00477749    call        TBrush.GetHandle
 0047774E    mov         edx,dword ptr [ebp-8]
 00477751    mov         dword ptr [edx+0C],eax
>00477754    jmp         00477761
 00477756    mov         edx,dword ptr [ebp-8]
 00477759    mov         eax,dword ptr [ebp-4]
 0047775C    call        00476128
 00477761    pop         ecx
 00477762    pop         ecx
 00477763    pop         ebp
 00477764    ret
end;*}

//00477768
{*function sub_00477768:?;
begin
 00477768    push        ebp
 00477769    mov         ebp,esp
 0047776B    add         esp,0FFFFFFF8
 0047776E    mov         dword ptr [ebp-4],eax
 00477771    mov         eax,dword ptr [ebp-4]
 00477774    mov         eax,dword ptr [eax+23C];TCustomComboBox.FItems:TStrings
 0047777A    mov         edx,dword ptr [eax]
 0047777C    call        dword ptr [edx+14];@AbstractError
 0047777F    mov         dword ptr [ebp-8],eax
 00477782    mov         eax,dword ptr [ebp-8]
 00477785    pop         ecx
 00477786    pop         ecx
 00477787    pop         ebp
 00477788    ret
end;*}

//0047778C
{*function sub_0047778C:?;
begin
 0047778C    push        ebp
 0047778D    mov         ebp,esp
 0047778F    add         esp,0FFFFFFF8
 00477792    mov         dword ptr [ebp-4],eax
 00477795    mov         eax,[00472D34];TComboBoxStrings
 0047779A    mov         dword ptr [ebp-8],eax
 0047779D    mov         eax,dword ptr [ebp-8]
 004777A0    pop         ecx
 004777A1    pop         ecx
 004777A2    pop         ebp
 004777A3    ret
end;*}

//004777A4
procedure TCustomComboBox.WMPaint(Message:TWMPaint);
begin
{*
 004777A4    push        ebp
 004777A5    mov         ebp,esp
 004777A7    add         esp,0FFFFFFCC
 004777AA    mov         dword ptr [ebp-8],edx
 004777AD    mov         dword ptr [ebp-4],eax
 004777B0    mov         edx,dword ptr [ebp-8]
 004777B3    mov         eax,dword ptr [ebp-4]
 004777B6    call        TWinControl.WMPaint
 004777BB    mov         eax,dword ptr [ebp-4]
 004777BE    cmp         byte ptr [eax+165],0;TCustomComboBox.FBevelKind:TBevelKind
>004777C5    je          00477A21
 004777CB    mov         dl,1
 004777CD    mov         eax,[0047D3C4];TControlCanvas
 004777D2    call        TCanvas.Create;TControlCanvas.Create
 004777D7    mov         dword ptr [ebp-14],eax
 004777DA    xor         eax,eax
 004777DC    push        ebp
 004777DD    push        477A1A
 004777E2    push        dword ptr fs:[eax]
 004777E5    mov         dword ptr fs:[eax],esp
 004777E8    mov         edx,dword ptr [ebp-4]
 004777EB    mov         eax,dword ptr [ebp-14]
 004777EE    call        00481B3C
 004777F3    lea         edx,[ebp-24]
 004777F6    mov         eax,dword ptr [ebp-4]
 004777F9    mov         ecx,dword ptr [eax]
 004777FB    call        dword ptr [ecx+44];TCustomComboBox.sub_0048C23C
 004777FE    mov         eax,dword ptr [ebp-4]
 00477801    mov         edx,dword ptr [eax+70];TCustomComboBox.FColor:TColor
 00477804    mov         eax,dword ptr [ebp-14]
 00477807    mov         eax,dword ptr [eax+14];TControlCanvas.Brush:TBrush
 0047780A    call        TBrush.SetColor
 0047780F    lea         edx,[ebp-24]
 00477812    mov         eax,dword ptr [ebp-14]
 00477815    call        0042F080
 0047781A    push        0FF
 0047781C    push        0FF
 0047781E    lea         eax,[ebp-24]
 00477821    push        eax
 00477822    call        user32.InflateRect
 00477827    lea         edx,[ebp-24]
 0047782A    mov         eax,dword ptr [ebp-14]
 0047782D    call        0042F080
 00477832    mov         eax,dword ptr [ebp-4]
 00477835    cmp         byte ptr [eax+165],0;TCustomComboBox.FBevelKind:TBevelKind
>0047783C    je          00477A04
 00477842    xor         eax,eax
 00477844    mov         dword ptr [ebp-0C],eax
 00477847    mov         eax,dword ptr [ebp-4]
 0047784A    cmp         byte ptr [eax+163],0;TCustomComboBox.FBevelInner:TBevelCut
>00477851    je          0047785F
 00477853    mov         eax,dword ptr [ebp-4]
 00477856    mov         eax,dword ptr [eax+168];TCustomComboBox.FBevelWidth:TBevelWidth
 0047785C    add         dword ptr [ebp-0C],eax
 0047785F    mov         eax,dword ptr [ebp-4]
 00477862    cmp         byte ptr [eax+164],0;TCustomComboBox.FBevelOuter:TBevelCut
>00477869    je          00477877
 0047786B    mov         eax,dword ptr [ebp-4]
 0047786E    mov         eax,dword ptr [eax+168];TCustomComboBox.FBevelWidth:TBevelWidth
 00477874    add         dword ptr [ebp-0C],eax
 00477877    cmp         dword ptr [ebp-0C],0
>0047787B    jne         004778BC
 0047787D    lea         edx,[ebp-24]
 00477880    mov         eax,dword ptr [ebp-4]
 00477883    mov         ecx,dword ptr [eax]
 00477885    call        dword ptr [ecx+44];TCustomComboBox.sub_0048C23C
 00477888    mov         eax,dword ptr [ebp-4]
 0047788B    mov         edx,dword ptr [eax+70];TCustomComboBox.FColor:TColor
 0047788E    mov         eax,dword ptr [ebp-14]
 00477891    mov         eax,dword ptr [eax+14];TControlCanvas.Brush:TBrush
 00477894    call        TBrush.SetColor
 00477899    lea         edx,[ebp-24]
 0047789C    mov         eax,dword ptr [ebp-14]
 0047789F    call        0042F080
 004778A4    push        0FF
 004778A6    push        0FF
 004778A8    lea         eax,[ebp-24]
 004778AB    push        eax
 004778AC    call        user32.InflateRect
 004778B1    lea         edx,[ebp-24]
 004778B4    mov         eax,dword ptr [ebp-14]
 004778B7    call        0042F080
 004778BC    lea         edx,[ebp-24]
 004778BF    mov         eax,dword ptr [ebp-4]
 004778C2    mov         ecx,dword ptr [eax]
 004778C4    call        dword ptr [ecx+44];TCustomComboBox.sub_0048C23C
 004778C7    lea         edx,[ebp-34]
 004778CA    mov         eax,dword ptr [ebp-4]
 004778CD    call        00482ECC
 004778D2    push        0F0
 004778D4    mov         eax,dword ptr [ebp-14]
 004778D7    call        0042F6A0
 004778DC    push        eax
 004778DD    call        user32.GetWindowLongA
 004778E2    mov         dword ptr [ebp-10],eax
 004778E5    mov         eax,dword ptr [ebp-4]
 004778E8    test        byte ptr [eax+162],1;TCustomComboBox.FBevelEdges:TBevelEdges
>004778EF    je          004778F7
 004778F1    mov         eax,dword ptr [ebp-0C]
 004778F4    sub         dword ptr [ebp-34],eax
 004778F7    mov         eax,dword ptr [ebp-4]
 004778FA    test        byte ptr [eax+162],2;TCustomComboBox.FBevelEdges:TBevelEdges
>00477901    je          00477909
 00477903    mov         eax,dword ptr [ebp-0C]
 00477906    sub         dword ptr [ebp-30],eax
 00477909    mov         eax,dword ptr [ebp-4]
 0047790C    test        byte ptr [eax+162],4;TCustomComboBox.FBevelEdges:TBevelEdges
>00477913    je          0047791B
 00477915    mov         eax,dword ptr [ebp-0C]
 00477918    add         dword ptr [ebp-2C],eax
 0047791B    test        byte ptr [ebp-0E],20
>0047791F    je          0047792B
 00477921    push        14
 00477923    call        user32.GetSystemMetrics
 00477928    add         dword ptr [ebp-2C],eax
 0047792B    mov         eax,dword ptr [ebp-4]
 0047792E    test        byte ptr [eax+162],8;TCustomComboBox.FBevelEdges:TBevelEdges
>00477935    je          0047793D
 00477937    mov         eax,dword ptr [ebp-0C]
 0047793A    add         dword ptr [ebp-28],eax
 0047793D    test        byte ptr [ebp-0E],10
>00477941    je          0047794D
 00477943    push        15
 00477945    call        user32.GetSystemMetrics
 0047794A    add         dword ptr [ebp-28],eax
 0047794D    mov         eax,dword ptr [ebp-4]
 00477950    movzx       eax,byte ptr [eax+162];TCustomComboBox.FBevelEdges:TBevelEdges
 00477957    mov         edx,dword ptr [ebp-4]
 0047795A    movzx       edx,byte ptr [edx+165];TCustomComboBox.FBevelKind:TBevelKind
 00477961    or          eax,dword ptr [edx*4+56C6B8]
 00477968    mov         edx,dword ptr [ebp-4]
 0047796B    movzx       edx,byte ptr [edx+1A5];TCustomComboBox.FCtl3D:Boolean
 00477972    or          eax,dword ptr [edx*4+56C6C8]
 00477979    or          eax,2000
 0047797E    push        eax
 0047797F    mov         eax,dword ptr [ebp-4]
 00477982    movzx       eax,byte ptr [eax+163];TCustomComboBox.FBevelInner:TBevelCut
 00477989    mov         eax,dword ptr [eax*4+56C698]
 00477990    mov         edx,dword ptr [ebp-4]
 00477993    movzx       edx,byte ptr [edx+164];TCustomComboBox.FBevelOuter:TBevelCut
 0047799A    or          eax,dword ptr [edx*4+56C6A8]
 004779A1    push        eax
 004779A2    lea         eax,[ebp-24]
 004779A5    push        eax
 004779A6    mov         eax,dword ptr [ebp-14]
 004779A9    call        0042F6A0
 004779AE    push        eax
 004779AF    call        user32.DrawEdge
 004779B4    push        0A
 004779B6    call        user32.GetSystemMetrics
 004779BB    mov         edx,dword ptr [ebp-1C]
 004779BE    sub         edx,eax
 004779C0    dec         edx
 004779C1    mov         dword ptr [ebp-24],edx
 004779C4    mov         eax,dword ptr [ebp-4]
 004779C7    call        00475998
 004779CC    test        al,al
>004779CE    je          004779EB
 004779D0    push        4005
 004779D5    push        3
 004779D7    lea         eax,[ebp-24]
 004779DA    push        eax
 004779DB    mov         eax,dword ptr [ebp-14]
 004779DE    call        0042F6A0
 004779E3    push        eax
 004779E4    call        user32.DrawFrameControl
>004779E9    jmp         00477A04
 004779EB    push        4005
 004779F0    push        3
 004779F2    lea         eax,[ebp-24]
 004779F5    push        eax
 004779F6    mov         eax,dword ptr [ebp-14]
 004779F9    call        0042F6A0
 004779FE    push        eax
 004779FF    call        user32.DrawFrameControl
 00477A04    xor         eax,eax
 00477A06    pop         edx
 00477A07    pop         ecx
 00477A08    pop         ecx
 00477A09    mov         dword ptr fs:[eax],edx
 00477A0C    push        477A21
 00477A11    mov         eax,dword ptr [ebp-14]
 00477A14    call        TObject.Free
 00477A19    ret
>00477A1A    jmp         @HandleFinally
>00477A1F    jmp         00477A11
 00477A21    mov         esp,ebp
 00477A23    pop         ebp
 00477A24    ret
*}
end;

//00477A28
{*procedure TCustomComboBox.WMNCCalcSize(?:?);
begin
 00477A28    push        ebp
 00477A29    mov         ebp,esp
 00477A2B    add         esp,0FFFFFFF8
 00477A2E    mov         dword ptr [ebp-8],edx
 00477A31    mov         dword ptr [ebp-4],eax
 00477A34    pop         ecx
 00477A35    pop         ecx
 00477A36    pop         ebp
 00477A37    ret
end;*}

//00477A38
{*procedure sub_00477A38(?:?);
begin
 00477A38    push        ebp
 00477A39    mov         ebp,esp
 00477A3B    add         esp,0FFFFFFF8
 00477A3E    mov         dword ptr [ebp-8],edx
 00477A41    mov         dword ptr [ebp-4],eax
 00477A44    mov         edx,dword ptr [ebp-8]
 00477A47    mov         eax,dword ptr [ebp-4]
 00477A4A    call        00486B44
 00477A4F    mov         eax,dword ptr [ebp-8]
 00477A52    mov         edx,dword ptr ds:[46FC64];TButtonControl
 00477A58    call        @AsClass
 00477A5D    mov         edx,dword ptr [ebp-4]
 00477A60    mov         dword ptr [edx+28],eax;TButtonActionLink.......FClient:TButtonControl
 00477A63    pop         ecx
 00477A64    pop         ecx
 00477A65    pop         ebp
 00477A66    ret
end;*}

//00477A68
{*function sub_00477A68:?;
begin
 00477A68    push        ebp
 00477A69    mov         ebp,esp
 00477A6B    add         esp,0FFFFFFF8
 00477A6E    push        ebx
 00477A6F    mov         dword ptr [ebp-4],eax
 00477A72    mov         eax,dword ptr [ebp-4]
 00477A75    call        00493A1C
 00477A7A    test        al,al
>00477A7C    je          00477AA4
 00477A7E    mov         eax,dword ptr [ebp-4]
 00477A81    mov         eax,dword ptr [eax+28];TButtonActionLink........FClient:TButtonControl
 00477A84    mov         edx,dword ptr [eax]
 00477A86    call        dword ptr [edx+0C8];TButtonControl.sub_00477C00
 00477A8C    mov         ebx,eax
 00477A8E    mov         eax,dword ptr [ebp-4]
 00477A91    mov         eax,dword ptr [eax+10];TButtonActionLink.FAction:TBasicAction
 00477A94    mov         edx,dword ptr ds:[492C28];TCustomAction
 00477A9A    call        @AsClass
 00477A9F    cmp         bl,byte ptr [eax+69];TCustomAction.FChecked:Boolean
>00477AA2    je          00477AA8
 00477AA4    xor         eax,eax
>00477AA6    jmp         00477AAA
 00477AA8    mov         al,1
 00477AAA    mov         byte ptr [ebp-5],al
 00477AAD    mov         al,byte ptr [ebp-5]
 00477AB0    pop         ebx
 00477AB1    pop         ecx
 00477AB2    pop         ecx
 00477AB3    pop         ebp
 00477AB4    ret
end;*}

//00477AB8
{*procedure sub_00477AB8(?:?);
begin
 00477AB8    push        ebp
 00477AB9    mov         ebp,esp
 00477ABB    add         esp,0FFFFFFF8
 00477ABE    mov         byte ptr [ebp-5],dl
 00477AC1    mov         dword ptr [ebp-4],eax
 00477AC4    mov         eax,dword ptr [ebp-4]
 00477AC7    mov         edx,dword ptr [eax]
 00477AC9    call        dword ptr [edx+24];TButtonActionLink.sub_00477A68
 00477ACC    test        al,al
>00477ACE    je          00477B1E
 00477AD0    mov         eax,dword ptr [ebp-4]
 00477AD3    mov         eax,dword ptr [eax+28];TButtonActionLink.........FClient:TButtonControl
 00477AD6    mov         byte ptr [eax+208],1;TButtonControl.FClicksDisabled:Boolean
 00477ADD    xor         eax,eax
 00477ADF    push        ebp
 00477AE0    push        477B17
 00477AE5    push        dword ptr fs:[eax]
 00477AE8    mov         dword ptr fs:[eax],esp
 00477AEB    mov         eax,dword ptr [ebp-4]
 00477AEE    mov         eax,dword ptr [eax+28];TButtonActionLink..........FClient:TButtonControl
 00477AF1    mov         dl,byte ptr [ebp-5]
 00477AF4    mov         ecx,dword ptr [eax]
 00477AF6    call        dword ptr [ecx+0CC];TButtonControl.sub_00477C48
 00477AFC    xor         eax,eax
 00477AFE    pop         edx
 00477AFF    pop         ecx
 00477B00    pop         ecx
 00477B01    mov         dword ptr fs:[eax],edx
 00477B04    push        477B1E
 00477B09    mov         eax,dword ptr [ebp-4]
 00477B0C    mov         eax,dword ptr [eax+28];TButtonActionLink...........FClient:TButtonControl
 00477B0F    mov         byte ptr [eax+208],0;TButtonControl.FClicksDisabled:Boolean
 00477B16    ret
>00477B17    jmp         @HandleFinally
>00477B1C    jmp         00477B09
 00477B1E    pop         ecx
 00477B1F    pop         ecx
 00477B20    pop         ebp
 00477B21    ret
end;*}

//00477B24
constructor sub_00477B24;
begin
{*
 00477B24    push        ebp
 00477B25    mov         ebp,esp
 00477B27    add         esp,0FFFFFFF4
 00477B2A    test        dl,dl
>00477B2C    je          00477B36
 00477B2E    add         esp,0FFFFFFF0
 00477B31    call        @ClassCreate
 00477B36    mov         dword ptr [ebp-0C],ecx
 00477B39    mov         byte ptr [ebp-5],dl
 00477B3C    mov         dword ptr [ebp-4],eax
 00477B3F    mov         ecx,dword ptr [ebp-0C]
 00477B42    xor         edx,edx
 00477B44    mov         eax,dword ptr [ebp-4]
 00477B47    call        00486BAC
 00477B4C    mov         eax,[0056E638];^gvar_0057196C:Integer
 00477B51    cmp         byte ptr [eax+0C],0
>00477B55    je          00477B6B
 00477B57    mov         eax,[0056E624];^gvar_0056B7D8
 00477B5C    cmp         dword ptr [eax],2
>00477B5F    jne         00477B6B
 00477B61    mov         eax,dword ptr [ebp-4]
 00477B64    mov         byte ptr [eax+184],0;TButtonControl.FImeMode:TImeMode
 00477B6B    mov         eax,dword ptr [ebp-4]
 00477B6E    cmp         byte ptr [ebp-5],0
>00477B72    je          00477B83
 00477B74    call        @AfterConstruction
 00477B79    pop         dword ptr fs:[0]
 00477B80    add         esp,0C
 00477B83    mov         eax,dword ptr [ebp-4]
 00477B86    mov         esp,ebp
 00477B88    pop         ebp
 00477B89    ret
*}
end;

//00477B8C
{*procedure TButtonControl.sub_00477B8C(?:?; ?:?);
begin
 00477B8C    push        ebp
 00477B8D    mov         ebp,esp
 00477B8F    add         esp,0FFFFFFF4
 00477B92    mov         byte ptr [ebp-9],cl
 00477B95    mov         dword ptr [ebp-8],edx
 00477B98    mov         dword ptr [ebp-4],eax
 00477B9B    mov         cl,byte ptr [ebp-9]
 00477B9E    mov         edx,dword ptr [ebp-8]
 00477BA1    mov         eax,dword ptr [ebp-4]
 00477BA4    call        TWinControl.sub_00486204
 00477BA9    mov         eax,dword ptr [ebp-8]
 00477BAC    mov         edx,dword ptr ds:[492C28];TCustomAction
 00477BB2    call        @IsClass
 00477BB7    test        al,al
>00477BB9    je          00477BE1
 00477BBB    cmp         byte ptr [ebp-9],0
>00477BBF    je          00477BD0
 00477BC1    mov         eax,dword ptr [ebp-4]
 00477BC4    mov         edx,dword ptr [eax]
 00477BC6    call        dword ptr [edx+0C8];TButtonControl.sub_00477C00
 00477BCC    test        al,al
>00477BCE    jne         00477BE1
 00477BD0    mov         eax,dword ptr [ebp-8]
 00477BD3    mov         dl,byte ptr [eax+69]
 00477BD6    mov         eax,dword ptr [ebp-4]
 00477BD9    mov         ecx,dword ptr [eax]
 00477BDB    call        dword ptr [ecx+0CC];TButtonControl.sub_00477C48
 00477BE1    mov         esp,ebp
 00477BE3    pop         ebp
 00477BE4    ret
end;*}

//00477BE8
procedure TButtonControl.sub_00477BE8;
begin
{*
 00477BE8    push        ebp
 00477BE9    mov         ebp,esp
 00477BEB    add         esp,0FFFFFFF8
 00477BEE    mov         dword ptr [ebp-4],eax
 00477BF1    mov         eax,[0046FB88];TButtonActionLink
 00477BF6    mov         dword ptr [ebp-8],eax
 00477BF9    mov         eax,dword ptr [ebp-8]
 00477BFC    pop         ecx
 00477BFD    pop         ecx
 00477BFE    pop         ebp
 00477BFF    ret
*}
end;

//00477C00
{*function sub_00477C00:?;
begin
 00477C00    push        ebp
 00477C01    mov         ebp,esp
 00477C03    add         esp,0FFFFFFF8
 00477C06    mov         dword ptr [ebp-4],eax
 00477C09    mov         byte ptr [ebp-5],0
 00477C0D    mov         al,byte ptr [ebp-5]
 00477C10    pop         ecx
 00477C11    pop         ecx
 00477C12    pop         ebp
 00477C13    ret
end;*}

//00477C14
function TCheckBox.IsStoredChecked(Value:Boolean):Boolean;
begin
{*
 00477C14    push        ebp
 00477C15    mov         ebp,esp
 00477C17    add         esp,0FFFFFFF8
 00477C1A    mov         dword ptr [ebp-4],eax
 00477C1D    mov         eax,dword ptr [ebp-4]
 00477C20    cmp         dword ptr [eax+6C],0;TCheckBox.FActionLink:TControlActionLink
>00477C24    je          00477C39
 00477C26    mov         eax,dword ptr [ebp-4]
 00477C29    mov         eax,dword ptr [eax+6C];TCheckBox.FActionLink:TControlActionLink
 00477C2C    mov         edx,dword ptr [eax]
 00477C2E    call        dword ptr [edx+24];TControlActionLink.sub_00493A1C
 00477C31    test        al,al
>00477C33    je          00477C39
 00477C35    xor         eax,eax
>00477C37    jmp         00477C3B
 00477C39    mov         al,1
 00477C3B    mov         byte ptr [ebp-5],al
 00477C3E    mov         al,byte ptr [ebp-5]
 00477C41    pop         ecx
 00477C42    pop         ecx
 00477C43    pop         ebp
 00477C44    ret
*}
end;

//00477C48
{*procedure sub_00477C48(?:?);
begin
 00477C48    push        ebp
 00477C49    mov         ebp,esp
 00477C4B    add         esp,0FFFFFFF8
 00477C4E    mov         byte ptr [ebp-5],dl
 00477C51    mov         dword ptr [ebp-4],eax
 00477C54    pop         ecx
 00477C55    pop         ecx
 00477C56    pop         ebp
 00477C57    ret
end;*}

//00477C58
{*procedure sub_00477C58(?:?);
begin
 00477C58    push        ebp
 00477C59    mov         ebp,esp
 00477C5B    add         esp,0FFFFFFF8
 00477C5E    push        esi
 00477C5F    mov         dword ptr [ebp-8],edx
 00477C62    mov         dword ptr [ebp-4],eax
 00477C65    mov         eax,dword ptr [ebp-8]
 00477C68    mov         eax,dword ptr [eax]
 00477C6A    sub         eax,201
>00477C6F    je          00477C7F
 00477C71    sub         eax,2
>00477C74    je          00477C7F
 00477C76    sub         eax,0BB0E
>00477C7B    je          00477CCC
>00477C7D    jmp         00477CD8
 00477C7F    mov         eax,dword ptr [ebp-4]
 00477C82    test        byte ptr [eax+1C],10;TButtonControl.FComponentState:TComponentState
>00477C86    jne         00477CD8
 00477C88    mov         eax,dword ptr [ebp-4]
 00477C8B    mov         si,0FFB5
 00477C8F    call        @CallDynaInst;TWinControl.sub_0048C078
 00477C94    test        al,al
>00477C96    jne         00477CD8
 00477C98    mov         eax,dword ptr [ebp-4]
 00477C9B    mov         byte ptr [eax+208],1;TButtonControl.FClicksDisabled:Boolean
 00477CA2    mov         eax,dword ptr [ebp-4]
 00477CA5    call        TWinControl.GetHandle
 00477CAA    push        eax
 00477CAB    call        user32.SetFocus
 00477CB0    mov         eax,dword ptr [ebp-4]
 00477CB3    mov         byte ptr [eax+208],0;TButtonControl.FClicksDisabled:Boolean
 00477CBA    mov         eax,dword ptr [ebp-4]
 00477CBD    mov         si,0FFB5
 00477CC1    call        @CallDynaInst;TWinControl.sub_0048C078
 00477CC6    test        al,al
>00477CC8    je          00477CE3
>00477CCA    jmp         00477CD8
 00477CCC    mov         eax,dword ptr [ebp-4]
 00477CCF    cmp         byte ptr [eax+208],0;TButtonControl.FClicksDisabled:Boolean
>00477CD6    jne         00477CE3
 00477CD8    mov         edx,dword ptr [ebp-8]
 00477CDB    mov         eax,dword ptr [ebp-4]
 00477CDE    call        00488EC8
 00477CE3    pop         esi
 00477CE4    pop         ecx
 00477CE5    pop         ecx
 00477CE6    pop         ebp
 00477CE7    ret
end;*}

//00477CE8
{*procedure TButtonControl.sub_00477CE8(?:?);
begin
 00477CE8    push        ebp
 00477CE9    mov         ebp,esp
 00477CEB    add         esp,0FFFFFFF4
 00477CEE    mov         dword ptr [ebp-8],edx
 00477CF1    mov         dword ptr [ebp-4],eax
 00477CF4    call        0046BFC0
 00477CF9    mov         dword ptr [ebp-0C],eax
 00477CFC    mov         eax,dword ptr [ebp-0C]
 00477CFF    call        0046C0EC
 00477D04    test        al,al
>00477D06    je          00477D35
 00477D08    push        0
 00477D0A    push        0
 00477D0C    push        0
 00477D0E    mov         eax,dword ptr [ebp-4]
 00477D11    call        TWinControl.GetHandle
 00477D16    mov         edx,eax
 00477D18    mov         ecx,dword ptr [ebp-8]
 00477D1B    mov         ecx,dword ptr [ecx+4]
 00477D1E    mov         eax,dword ptr [ebp-0C]
 00477D21    call        0046C2E8
 00477D26    push        5
 00477D28    call        gdi32.GetStockObject
 00477D2D    mov         edx,dword ptr [ebp-8]
 00477D30    mov         dword ptr [edx+0C],eax
>00477D33    jmp         00477D40
 00477D35    mov         edx,dword ptr [ebp-8]
 00477D38    mov         eax,dword ptr [ebp-4]
 00477D3B    mov         ecx,dword ptr [eax]
 00477D3D    call        dword ptr [ecx-10];TButtonControl.DefaultHandler
 00477D40    mov         esp,ebp
 00477D42    pop         ebp
 00477D43    ret
end;*}

//00477D44
{*procedure TButtonControl.WMEraseBkgnd(?:?);
begin
 00477D44    push        ebp
 00477D45    mov         ebp,esp
 00477D47    add         esp,0FFFFFFF8
 00477D4A    mov         dword ptr [ebp-8],edx
 00477D4D    mov         dword ptr [ebp-4],eax
 00477D50    call        0046BFC0
 00477D55    call        0046C0EC
 00477D5A    test        al,al
>00477D5C    je          00477D6A
 00477D5E    mov         eax,dword ptr [ebp-8]
 00477D61    mov         dword ptr [eax+0C],1
>00477D68    jmp         00477D75
 00477D6A    mov         edx,dword ptr [ebp-8]
 00477D6D    mov         eax,dword ptr [ebp-4]
 00477D70    call        TWinControl.WMEraseBkgnd
 00477D75    pop         ecx
 00477D76    pop         ecx
 00477D77    pop         ebp
 00477D78    ret
end;*}

//00477D7C
{*procedure sub_00477D7C(?:?);
begin
 00477D7C    push        ebp
 00477D7D    mov         ebp,esp
 00477D7F    add         esp,0FFFFFFF8
 00477D82    mov         dword ptr [ebp-8],edx
 00477D85    mov         dword ptr [ebp-4],eax
 00477D88    mov         edx,dword ptr [ebp-8]
 00477D8B    mov         eax,dword ptr [ebp-4]
 00477D8E    call        00488034
 00477D93    mov         eax,dword ptr [ebp-4]
 00477D96    cmp         byte ptr [eax+209],0;TButtonControl.FWordWrap:Boolean
>00477D9D    je          00477DA9
 00477D9F    mov         eax,dword ptr [ebp-8]
 00477DA2    or          dword ptr [eax+4],2000
 00477DA9    pop         ecx
 00477DAA    pop         ecx
 00477DAB    pop         ebp
 00477DAC    ret
end;*}

//00477DB0
procedure TButton.SetWordWrap(Value:Boolean);
begin
{*
 00477DB0    push        ebp
 00477DB1    mov         ebp,esp
 00477DB3    add         esp,0FFFFFFF8
 00477DB6    mov         byte ptr [ebp-5],dl
 00477DB9    mov         dword ptr [ebp-4],eax
 00477DBC    mov         eax,dword ptr [ebp-4]
 00477DBF    mov         al,byte ptr [eax+209];TButton.FWordWrap:Boolean
 00477DC5    cmp         al,byte ptr [ebp-5]
>00477DC8    je          00477DDE
 00477DCA    mov         al,byte ptr [ebp-5]
 00477DCD    mov         edx,dword ptr [ebp-4]
 00477DD0    mov         byte ptr [edx+209],al;TButton.FWordWrap:Boolean
 00477DD6    mov         eax,dword ptr [ebp-4]
 00477DD9    call        TWinControl.RecreateWnd
 00477DDE    pop         ecx
 00477DDF    pop         ecx
 00477DE0    pop         ebp
 00477DE1    ret
*}
end;

//00477DE4
constructor TButton.Create;
begin
{*
 00477DE4    push        ebp
 00477DE5    mov         ebp,esp
 00477DE7    add         esp,0FFFFFFF4
 00477DEA    test        dl,dl
>00477DEC    je          00477DF6
 00477DEE    add         esp,0FFFFFFF0
 00477DF1    call        @ClassCreate
 00477DF6    mov         dword ptr [ebp-0C],ecx
 00477DF9    mov         byte ptr [ebp-5],dl
 00477DFC    mov         dword ptr [ebp-4],eax
 00477DFF    mov         ecx,dword ptr [ebp-0C]
 00477E02    xor         edx,edx
 00477E04    mov         eax,dword ptr [ebp-4]
 00477E07    call        00477B24
 00477E0C    mov         eax,dword ptr [ebp-4]
 00477E0F    mov         edx,dword ptr ds:[477E5C];0xA0 gvar_00477E5C
 00477E15    mov         dword ptr [eax+50],edx;TButton.FControlStyle:TControlStyle
 00477E18    mov         edx,4B
 00477E1D    mov         eax,dword ptr [ebp-4]
 00477E20    call        TSplitter.SetWidth
 00477E25    mov         edx,19
 00477E2A    mov         eax,dword ptr [ebp-4]
 00477E2D    call        TToolButton.SetHeight
 00477E32    mov         dl,1
 00477E34    mov         eax,dword ptr [ebp-4]
 00477E37    call        TPanel.SetTabStop
 00477E3C    mov         eax,dword ptr [ebp-4]
 00477E3F    cmp         byte ptr [ebp-5],0
>00477E43    je          00477E54
 00477E45    call        @AfterConstruction
 00477E4A    pop         dword ptr fs:[0]
 00477E51    add         esp,0C
 00477E54    mov         eax,dword ptr [ebp-4]
 00477E57    mov         esp,ebp
 00477E59    pop         ebp
 00477E5A    ret
*}
end;

//00477E60
procedure TButton.sub_00477E60;
begin
{*
 00477E60    push        ebp
 00477E61    mov         ebp,esp
 00477E63    add         esp,0FFFFFFF8
 00477E66    mov         dword ptr [ebp-4],eax
 00477E69    mov         eax,dword ptr [ebp-4]
 00477E6C    call        004A0740
 00477E71    mov         dword ptr [ebp-8],eax
 00477E74    cmp         dword ptr [ebp-8],0
>00477E78    je          00477E8C
 00477E7A    mov         eax,dword ptr [ebp-4]
 00477E7D    mov         eax,dword ptr [eax+214];TButton.ModalResult:TModalResult
 00477E83    mov         edx,dword ptr [ebp-8]
 00477E86    mov         dword ptr [edx+24C],eax
 00477E8C    mov         eax,dword ptr [ebp-4]
 00477E8F    call        TControl.sub_004854CC
 00477E94    pop         ecx
 00477E95    pop         ecx
 00477E96    pop         ebp
 00477E97    ret
*}
end;

//00477E98
procedure TButton.sub_00477E98;
begin
{*
 00477E98    push        ebp
 00477E99    mov         ebp,esp
 00477E9B    add         esp,0FFFFFFF8
 00477E9E    mov         dword ptr [ebp-4],eax
 00477EA1    mov         byte ptr [ebp-5],0
 00477EA5    mov         al,byte ptr [ebp-5]
 00477EA8    pop         ecx
 00477EA9    pop         ecx
 00477EAA    pop         ebp
 00477EAB    ret
*}
end;

//00477EAC
{*procedure sub_00477EAC(?:?);
begin
 00477EAC    push        ebp
 00477EAD    mov         ebp,esp
 00477EAF    add         esp,0FFFFFFF8
 00477EB2    mov         byte ptr [ebp-5],dl
 00477EB5    mov         dword ptr [ebp-4],eax
 00477EB8    mov         eax,dword ptr [ebp-4]
 00477EBB    call        TWinControl.HandleAllocated
 00477EC0    test        al,al
>00477EC2    je          00477F0D
 00477EC4    cmp         byte ptr [ebp-5],0
>00477EC8    je          00477ED2
 00477ECA    mov         word ptr [ebp-8],1
>00477ED0    jmp         00477ED8
 00477ED2    mov         word ptr [ebp-8],0
 00477ED8    push        0F0
 00477EDA    mov         eax,dword ptr [ebp-4]
 00477EDD    call        TWinControl.GetHandle
 00477EE2    push        eax
 00477EE3    call        user32.GetWindowLongA
 00477EE8    and         eax,0F
 00477EEB    movzx       edx,word ptr [ebp-8]
 00477EEF    cmp         eax,edx
>00477EF1    je          00477F0D
 00477EF3    push        1
 00477EF5    movzx       eax,word ptr [ebp-8]
 00477EF9    push        eax
 00477EFA    push        0F4
 00477EFF    mov         eax,dword ptr [ebp-4]
 00477F02    call        TWinControl.GetHandle
 00477F07    push        eax
 00477F08    call        user32.SendMessageA
 00477F0D    pop         ecx
 00477F0E    pop         ecx
 00477F0F    pop         ebp
 00477F10    ret
end;*}

//00477F14
procedure TButton.SetDefault(Value:Boolean);
begin
{*
 00477F14    push        ebp
 00477F15    mov         ebp,esp
 00477F17    add         esp,0FFFFFFF4
 00477F1A    mov         byte ptr [ebp-5],dl
 00477F1D    mov         dword ptr [ebp-4],eax
 00477F20    mov         al,byte ptr [ebp-5]
 00477F23    mov         edx,dword ptr [ebp-4]
 00477F26    mov         byte ptr [edx+210],al;TButton.Default:Boolean
 00477F2C    mov         eax,dword ptr [ebp-4]
 00477F2F    call        TWinControl.HandleAllocated
 00477F34    test        al,al
>00477F36    je          00477F62
 00477F38    mov         eax,dword ptr [ebp-4]
 00477F3B    call        004A0740
 00477F40    mov         dword ptr [ebp-0C],eax
 00477F43    cmp         dword ptr [ebp-0C],0
>00477F47    je          00477F62
 00477F49    mov         eax,dword ptr [ebp-0C]
 00477F4C    mov         eax,dword ptr [eax+220]
 00477F52    push        eax
 00477F53    xor         ecx,ecx
 00477F55    mov         edx,0B007
 00477F5A    mov         eax,dword ptr [ebp-0C]
 00477F5D    call        00484FFC
 00477F62    mov         esp,ebp
 00477F64    pop         ebp
 00477F65    ret
*}
end;

//00477F68
{*procedure sub_00477F68(?:?);
begin
 00477F68    push        ebp
 00477F69    mov         ebp,esp
 00477F6B    add         esp,0FFFFFFF8
 00477F6E    mov         dword ptr [ebp-8],edx
 00477F71    mov         dword ptr [ebp-4],eax
 00477F74    mov         edx,dword ptr [ebp-8]
 00477F77    mov         eax,dword ptr [ebp-4]
 00477F7A    call        00477D7C
 00477F7F    mov         ecx,477FAC
 00477F84    mov         edx,dword ptr [ebp-8]
 00477F87    mov         eax,dword ptr [ebp-4]
 00477F8A    call        00487F0C
 00477F8F    mov         eax,dword ptr [ebp-4]
 00477F92    movzx       eax,byte ptr [eax+210];TButton.Default:Boolean
 00477F99    mov         eax,dword ptr [eax*4+56C6D0]
 00477FA0    mov         edx,dword ptr [ebp-8]
 00477FA3    or          dword ptr [edx+4],eax
 00477FA6    pop         ecx
 00477FA7    pop         ecx
 00477FA8    pop         ebp
 00477FA9    ret
end;*}

//00477FB4
procedure TButton.CreateWnd;
begin
{*
 00477FB4    push        ebp
 00477FB5    mov         ebp,esp
 00477FB7    push        ecx
 00477FB8    mov         dword ptr [ebp-4],eax
 00477FBB    mov         eax,dword ptr [ebp-4]
 00477FBE    call        TWinControl.CreateWnd
 00477FC3    mov         eax,dword ptr [ebp-4]
 00477FC6    mov         al,byte ptr [eax+210];TButton.Default:Boolean
 00477FCC    mov         edx,dword ptr [ebp-4]
 00477FCF    mov         byte ptr [edx+212],al;TButton.FActive:Boolean
 00477FD5    pop         ecx
 00477FD6    pop         ebp
 00477FD7    ret
*}
end;

//00477FD8
{*procedure TButton.sub_00477FD8(?:?);
begin
 00477FD8    push        ebp
 00477FD9    mov         ebp,esp
 00477FDB    add         esp,0FFFFFFF8
 00477FDE    push        esi
 00477FDF    mov         dword ptr [ebp-8],edx
 00477FE2    mov         dword ptr [ebp-4],eax
 00477FE5    mov         eax,dword ptr [ebp-8]
 00477FE8    cmp         word ptr [eax+6],0
>00477FED    jne         00477FFB
 00477FEF    mov         eax,dword ptr [ebp-4]
 00477FF2    mov         si,0FFEB
 00477FF6    call        @CallDynaInst;TButton.sub_00477E60
 00477FFB    pop         esi
 00477FFC    pop         ecx
 00477FFD    pop         ecx
 00477FFE    pop         ebp
 00477FFF    ret
end;*}

//00478000
{*procedure TButton.CMDialogKey(?:?);
begin
 00478000    push        ebp
 00478001    mov         ebp,esp
 00478003    add         esp,0FFFFFFF8
 00478006    push        esi
 00478007    mov         dword ptr [ebp-8],edx
 0047800A    mov         dword ptr [ebp-4],eax
 0047800D    mov         eax,dword ptr [ebp-8]
 00478010    cmp         word ptr [eax+4],0D
>00478015    jne         00478023
 00478017    mov         eax,dword ptr [ebp-4]
 0047801A    cmp         byte ptr [eax+212],0;TButton.FActive:Boolean
>00478021    jne         00478039
 00478023    mov         eax,dword ptr [ebp-8]
 00478026    cmp         word ptr [eax+4],1B
>0047802B    jne         00478076
 0047802D    mov         eax,dword ptr [ebp-4]
 00478030    cmp         byte ptr [eax+211],0;TButton.Cancel:Boolean
>00478037    je          00478076
 00478039    mov         eax,dword ptr [ebp-8]
 0047803C    mov         eax,dword ptr [eax+8]
 0047803F    call        004A05E8
 00478044    mov         dl,byte ptr ds:[478088];0x0 gvar_00478088
 0047804A    cmp         dl,al
>0047804C    jne         00478076
 0047804E    mov         eax,dword ptr [ebp-4]
 00478051    mov         si,0FFB8
 00478055    call        @CallDynaInst;TWinControl.sub_0048BFC8
 0047805A    test        al,al
>0047805C    je          00478076
 0047805E    mov         eax,dword ptr [ebp-4]
 00478061    mov         si,0FFEB
 00478065    call        @CallDynaInst;TButton.sub_00477E60
 0047806A    mov         eax,dword ptr [ebp-8]
 0047806D    mov         dword ptr [eax+0C],1
>00478074    jmp         00478081
 00478076    mov         edx,dword ptr [ebp-8]
 00478079    mov         eax,dword ptr [ebp-4]
 0047807C    call        TWinControl.CMDialogKey
 00478081    pop         esi
 00478082    pop         ecx
 00478083    pop         ecx
 00478084    pop         ebp
 00478085    ret
end;*}

//0047808C
{*procedure TButton.CMDialogChar(?:?);
begin
 0047808C    push        ebp
 0047808D    mov         ebp,esp
 0047808F    add         esp,0FFFFFFF4
 00478092    push        esi
 00478093    xor         ecx,ecx
 00478095    mov         dword ptr [ebp-0C],ecx
 00478098    mov         dword ptr [ebp-8],edx
 0047809B    mov         dword ptr [ebp-4],eax
 0047809E    xor         eax,eax
 004780A0    push        ebp
 004780A1    push        478113
 004780A6    push        dword ptr fs:[eax]
 004780A9    mov         dword ptr fs:[eax],esp
 004780AC    lea         edx,[ebp-0C]
 004780AF    mov         eax,dword ptr [ebp-4]
 004780B2    call        TPanel.GetCaption
 004780B7    mov         edx,dword ptr [ebp-0C]
 004780BA    mov         eax,dword ptr [ebp-8]
 004780BD    mov         ax,word ptr [eax+4]
 004780C1    call        004A06C8
 004780C6    test        al,al
>004780C8    je          004780F2
 004780CA    mov         eax,dword ptr [ebp-4]
 004780CD    mov         si,0FFB8
 004780D1    call        @CallDynaInst;TWinControl.sub_0048BFC8
 004780D6    test        al,al
>004780D8    je          004780F2
 004780DA    mov         eax,dword ptr [ebp-4]
 004780DD    mov         si,0FFEB
 004780E1    call        @CallDynaInst;TButton.sub_00477E60
 004780E6    mov         eax,dword ptr [ebp-8]
 004780E9    mov         dword ptr [eax+0C],1
>004780F0    jmp         004780FD
 004780F2    mov         edx,dword ptr [ebp-8]
 004780F5    mov         eax,dword ptr [ebp-4]
 004780F8    call        TWinControl.CMDialogChar
 004780FD    xor         eax,eax
 004780FF    pop         edx
 00478100    pop         ecx
 00478101    pop         ecx
 00478102    mov         dword ptr fs:[eax],edx
 00478105    push        47811A
 0047810A    lea         eax,[ebp-0C]
 0047810D    call        @LStrClr
 00478112    ret
>00478113    jmp         @HandleFinally
>00478118    jmp         0047810A
 0047811A    pop         esi
 0047811B    mov         esp,ebp
 0047811D    pop         ebp
 0047811E    ret
end;*}

//00478120
{*procedure TButton.CMFocusChenged(?:?);
begin
 00478120    push        ebp
 00478121    mov         ebp,esp
 00478123    add         esp,0FFFFFFF8
 00478126    mov         dword ptr [ebp-8],edx
 00478129    mov         dword ptr [ebp-4],eax
 0047812C    mov         eax,dword ptr [ebp-8]
 0047812F    mov         eax,dword ptr [eax+8]
 00478132    mov         edx,dword ptr ds:[46FDD8];TButton
 00478138    call        @IsClass
 0047813D    test        al,al
>0047813F    je          00478158
 00478141    mov         eax,dword ptr [ebp-8]
 00478144    mov         eax,dword ptr [eax+8]
 00478147    cmp         eax,dword ptr [ebp-4]
 0047814A    sete        al
 0047814D    mov         edx,dword ptr [ebp-4]
 00478150    mov         byte ptr [edx+212],al;TButton.FActive:Boolean
>00478156    jmp         0047816A
 00478158    mov         eax,dword ptr [ebp-4]
 0047815B    mov         al,byte ptr [eax+210];TButton.Default:Boolean
 00478161    mov         edx,dword ptr [ebp-4]
 00478164    mov         byte ptr [edx+212],al;TButton.FActive:Boolean
 0047816A    mov         eax,dword ptr [ebp-4]
 0047816D    mov         dl,byte ptr [eax+212];TButton.FActive:Boolean
 00478173    mov         eax,dword ptr [ebp-4]
 00478176    mov         ecx,dword ptr [eax]
 00478178    call        dword ptr [ecx+0D0];TButton.sub_00477EAC
 0047817E    mov         edx,dword ptr [ebp-8]
 00478181    mov         eax,dword ptr [ebp-4]
 00478184    call        TWinControl.CMFocusChenged
 00478189    pop         ecx
 0047818A    pop         ecx
 0047818B    pop         ebp
 0047818C    ret
end;*}

//00478190
{*procedure TButton.WMEraseBkgnd(?:?);
begin
 00478190    push        ebp
 00478191    mov         ebp,esp
 00478193    add         esp,0FFFFFFF8
 00478196    mov         dword ptr [ebp-8],edx
 00478199    mov         dword ptr [ebp-4],eax
 0047819C    call        0046BFC0
 004781A1    call        0046C0EC
 004781A6    test        al,al
>004781A8    je          004781B6
 004781AA    mov         eax,dword ptr [ebp-8]
 004781AD    mov         dword ptr [eax+0C],1
>004781B4    jmp         004781C1
 004781B6    mov         edx,dword ptr [ebp-8]
 004781B9    mov         eax,dword ptr [ebp-4]
 004781BC    mov         ecx,dword ptr [eax]
 004781BE    call        dword ptr [ecx-10];TButton.DefaultHandler
 004781C1    pop         ecx
 004781C2    pop         ecx
 004781C3    pop         ebp
 004781C4    ret
end;*}

//004781C8
{*procedure TButton.sub_004781C8(?:?);
begin
 004781C8    push        ebp
 004781C9    mov         ebp,esp
 004781CB    add         esp,0FFFFFFF4
 004781CE    mov         dword ptr [ebp-8],edx
 004781D1    mov         dword ptr [ebp-4],eax
 004781D4    call        0046BFC0
 004781D9    mov         dword ptr [ebp-0C],eax
 004781DC    mov         eax,dword ptr [ebp-0C]
 004781DF    call        0046C0EC
 004781E4    test        al,al
>004781E6    je          00478215
 004781E8    push        0
 004781EA    push        0
 004781EC    push        0
 004781EE    mov         eax,dword ptr [ebp-4]
 004781F1    call        TWinControl.GetHandle
 004781F6    mov         edx,eax
 004781F8    mov         ecx,dword ptr [ebp-8]
 004781FB    mov         ecx,dword ptr [ecx+4]
 004781FE    mov         eax,dword ptr [ebp-0C]
 00478201    call        0046C2E8
 00478206    push        5
 00478208    call        gdi32.GetStockObject
 0047820D    mov         edx,dword ptr [ebp-8]
 00478210    mov         dword ptr [edx+0C],eax
>00478213    jmp         00478220
 00478215    mov         edx,dword ptr [ebp-8]
 00478218    mov         eax,dword ptr [ebp-4]
 0047821B    mov         ecx,dword ptr [eax]
 0047821D    call        dword ptr [ecx-10];TButton.DefaultHandler
 00478220    mov         esp,ebp
 00478222    pop         ebp
 00478223    ret
end;*}

//00478224
constructor TCheckBox.Create;
begin
{*
 00478224    push        ebp
 00478225    mov         ebp,esp
 00478227    add         esp,0FFFFFFF4
 0047822A    test        dl,dl
>0047822C    je          00478236
 0047822E    add         esp,0FFFFFFF0
 00478231    call        @ClassCreate
 00478236    mov         dword ptr [ebp-0C],ecx
 00478239    mov         byte ptr [ebp-5],dl
 0047823C    mov         dword ptr [ebp-4],eax
 0047823F    mov         ecx,dword ptr [ebp-0C]
 00478242    xor         edx,edx
 00478244    mov         eax,dword ptr [ebp-4]
 00478247    call        00477B24
 0047824C    mov         edx,61
 00478251    mov         eax,dword ptr [ebp-4]
 00478254    call        TSplitter.SetWidth
 00478259    mov         edx,11
 0047825E    mov         eax,dword ptr [ebp-4]
 00478261    call        TToolButton.SetHeight
 00478266    mov         dl,1
 00478268    mov         eax,dword ptr [ebp-4]
 0047826B    call        TPanel.SetTabStop
 00478270    mov         eax,dword ptr [ebp-4]
 00478273    mov         edx,dword ptr ds:[4782A8];0xA0 gvar_004782A8
 00478279    mov         dword ptr [eax+50],edx;TCustomCheckBox.FControlStyle:TControlStyle
 0047827C    mov         eax,dword ptr [ebp-4]
 0047827F    mov         byte ptr [eax+210],1;TCustomCheckBox.FAlignment:TLeftRight
 00478286    mov         eax,dword ptr [ebp-4]
 00478289    cmp         byte ptr [ebp-5],0
>0047828D    je          0047829E
 0047828F    call        @AfterConstruction
 00478294    pop         dword ptr fs:[0]
 0047829B    add         esp,0C
 0047829E    mov         eax,dword ptr [ebp-4]
 004782A1    mov         esp,ebp
 004782A3    pop         ebp
 004782A4    ret
*}
end;

//004782AC
procedure TCustomCheckBox.sub_004782AC;
begin
{*
 004782AC    push        ebp
 004782AD    mov         ebp,esp
 004782AF    add         esp,0FFFFFFF8
 004782B2    push        esi
 004782B3    mov         dword ptr [ebp-4],eax
 004782B6    mov         eax,dword ptr [ebp-4]
 004782B9    mov         si,0FFC8
 004782BD    call        @CallDynaInst;TControl.sub_0048415C
 004782C2    test        al,al
>004782C4    jne         004782CC
 004782C6    mov         byte ptr [ebp-5],1
>004782CA    jmp         004782E2
 004782CC    mov         eax,dword ptr [ebp-4]
 004782CF    cmp         byte ptr [eax+210],1;TCustomCheckBox.FAlignment:TLeftRight
>004782D6    jne         004782DE
 004782D8    mov         byte ptr [ebp-5],0
>004782DC    jmp         004782E2
 004782DE    mov         byte ptr [ebp-5],1
 004782E2    mov         al,byte ptr [ebp-5]
 004782E5    pop         esi
 004782E6    pop         ecx
 004782E7    pop         ecx
 004782E8    pop         ebp
 004782E9    ret
*}
end;

//004782EC
procedure sub_004782EC;
begin
{*
 004782EC    push        ebp
 004782ED    mov         ebp,esp
 004782EF    push        ecx
 004782F0    mov         dword ptr [ebp-4],eax
 004782F3    mov         eax,dword ptr [ebp-4]
 004782F6    mov         al,byte ptr [eax+212];TCustomCheckBox.FState:TCheckBoxState
 004782FC    sub         al,1
>004782FE    jb          00478308
>00478300    je          0047832D
 00478302    dec         al
>00478304    je          0047833A
>00478306    jmp         00478344
 00478308    mov         eax,dword ptr [ebp-4]
 0047830B    cmp         byte ptr [eax+211],0;TCustomCheckBox.FAllowGrayed:Boolean
>00478312    je          00478320
 00478314    mov         dl,2
 00478316    mov         eax,dword ptr [ebp-4]
 00478319    call        TCheckBox.SetState
>0047831E    jmp         00478344
 00478320    mov         dl,1
 00478322    mov         eax,dword ptr [ebp-4]
 00478325    call        TCheckBox.SetState
 0047832A    pop         ecx
 0047832B    pop         ebp
 0047832C    ret
 0047832D    xor         edx,edx
 0047832F    mov         eax,dword ptr [ebp-4]
 00478332    call        TCheckBox.SetState
 00478337    pop         ecx
 00478338    pop         ebp
 00478339    ret
 0047833A    mov         dl,1
 0047833C    mov         eax,dword ptr [ebp-4]
 0047833F    call        TCheckBox.SetState
 00478344    pop         ecx
 00478345    pop         ebp
 00478346    ret
*}
end;

//00478348
procedure TCustomCheckBox.sub_00478348;
begin
{*
 00478348    push        ebp
 00478349    mov         ebp,esp
 0047834B    push        ecx
 0047834C    mov         dword ptr [ebp-4],eax
 0047834F    mov         eax,dword ptr [ebp-4]
 00478352    call        00483218
 00478357    mov         eax,dword ptr [ebp-4]
 0047835A    call        TControl.sub_004854CC
 0047835F    pop         ecx
 00478360    pop         ebp
 00478361    ret
*}
end;

//00478364
function TCheckBox.GetChecked:Boolean;
begin
{*
 00478364    push        ebp
 00478365    mov         ebp,esp
 00478367    add         esp,0FFFFFFF8
 0047836A    mov         dword ptr [ebp-4],eax
 0047836D    mov         eax,dword ptr [ebp-4]
 00478370    cmp         byte ptr [eax+212],1;TCheckBox.FState:TCheckBoxState
 00478377    sete        byte ptr [ebp-5]
 0047837B    mov         al,byte ptr [ebp-5]
 0047837E    pop         ecx
 0047837F    pop         ecx
 00478380    pop         ebp
 00478381    ret
*}
end;

//00478384
procedure TCheckBox.SetAlignment(Value:TLeftRight);
begin
{*
 00478384    push        ebp
 00478385    mov         ebp,esp
 00478387    add         esp,0FFFFFFF8
 0047838A    mov         byte ptr [ebp-5],dl
 0047838D    mov         dword ptr [ebp-4],eax
 00478390    mov         eax,dword ptr [ebp-4]
 00478393    mov         al,byte ptr [eax+210];TCheckBox.FAlignment:TLeftRight
 00478399    cmp         al,byte ptr [ebp-5]
>0047839C    je          004783B2
 0047839E    mov         al,byte ptr [ebp-5]
 004783A1    mov         edx,dword ptr [ebp-4]
 004783A4    mov         byte ptr [edx+210],al;TCheckBox.FAlignment:TLeftRight
 004783AA    mov         eax,dword ptr [ebp-4]
 004783AD    call        TWinControl.RecreateWnd
 004783B2    pop         ecx
 004783B3    pop         ecx
 004783B4    pop         ebp
 004783B5    ret
*}
end;

//004783B8
procedure TCheckBox.SetChecked(Value:Boolean);
begin
{*
 004783B8    push        ebp
 004783B9    mov         ebp,esp
 004783BB    add         esp,0FFFFFFF8
 004783BE    mov         byte ptr [ebp-5],dl
 004783C1    mov         dword ptr [ebp-4],eax
 004783C4    cmp         byte ptr [ebp-5],0
>004783C8    je          004783D6
 004783CA    mov         dl,1
 004783CC    mov         eax,dword ptr [ebp-4]
 004783CF    call        TCheckBox.SetState
>004783D4    jmp         004783E0
 004783D6    xor         edx,edx
 004783D8    mov         eax,dword ptr [ebp-4]
 004783DB    call        TCheckBox.SetState
 004783E0    pop         ecx
 004783E1    pop         ecx
 004783E2    pop         ebp
 004783E3    ret
*}
end;

//004783E4
procedure TCheckBox.SetState(Value:TCheckBoxState);
begin
{*
 004783E4    push        ebp
 004783E5    mov         ebp,esp
 004783E7    add         esp,0FFFFFFF8
 004783EA    push        esi
 004783EB    mov         byte ptr [ebp-5],dl
 004783EE    mov         dword ptr [ebp-4],eax
 004783F1    mov         eax,dword ptr [ebp-4]
 004783F4    mov         al,byte ptr [eax+212];TCheckBox.FState:TCheckBoxState
 004783FA    cmp         al,byte ptr [ebp-5]
>004783FD    je          0047844F
 004783FF    mov         al,byte ptr [ebp-5]
 00478402    mov         edx,dword ptr [ebp-4]
 00478405    mov         byte ptr [edx+212],al;TCheckBox.FState:TCheckBoxState
 0047840B    mov         eax,dword ptr [ebp-4]
 0047840E    call        TWinControl.HandleAllocated
 00478413    test        al,al
>00478415    je          00478437
 00478417    push        0
 00478419    mov         eax,dword ptr [ebp-4]
 0047841C    movzx       eax,byte ptr [eax+212];TCheckBox.FState:TCheckBoxState
 00478423    push        eax
 00478424    push        0F1
 00478429    mov         eax,dword ptr [ebp-4]
 0047842C    call        TWinControl.GetHandle
 00478431    push        eax
 00478432    call        user32.SendMessageA
 00478437    mov         eax,dword ptr [ebp-4]
 0047843A    cmp         byte ptr [eax+208],0;TCheckBox.FClicksDisabled:Boolean
>00478441    jne         0047844F
 00478443    mov         eax,dword ptr [ebp-4]
 00478446    mov         si,0FFEB
 0047844A    call        @CallDynaInst;TCustomCheckBox.sub_00478348
 0047844F    pop         esi
 00478450    pop         ecx
 00478451    pop         ecx
 00478452    pop         ebp
 00478453    ret
*}
end;

//00478454
{*procedure sub_00478454(?:?);
begin
 00478454    push        ebp
 00478455    mov         ebp,esp
 00478457    add         esp,0FFFFFFF8
 0047845A    push        esi
 0047845B    mov         dword ptr [ebp-8],edx
 0047845E    mov         dword ptr [ebp-4],eax
 00478461    mov         edx,dword ptr [ebp-8]
 00478464    mov         eax,dword ptr [ebp-4]
 00478467    call        00477D7C
 0047846C    mov         ecx,4784BC
 00478471    mov         edx,dword ptr [ebp-8]
 00478474    mov         eax,dword ptr [ebp-4]
 00478477    call        00487F0C
 0047847C    mov         eax,dword ptr [ebp-4]
 0047847F    mov         si,0FFC8
 00478483    call        @CallDynaInst;TControl.sub_0048415C
 00478488    and         eax,7F
 0047848B    lea         eax,[eax*8+56C6D8]
 00478492    mov         edx,dword ptr [ebp-4]
 00478495    movzx       edx,byte ptr [edx+210];TCustomCheckBox.FAlignment:TLeftRight
 0047849C    mov         eax,dword ptr [eax+edx*4]
 0047849F    mov         edx,dword ptr [ebp-8]
 004784A2    mov         edx,dword ptr [edx+4]
 004784A5    or          edx,5
 004784A8    or          eax,edx
 004784AA    mov         edx,dword ptr [ebp-8]
 004784AD    mov         dword ptr [edx+4],eax
 004784B0    mov         eax,dword ptr [ebp-8]
 004784B3    and         dword ptr [eax+24],0FFFFFFFC
 004784B7    pop         esi
 004784B8    pop         ecx
 004784B9    pop         ecx
 004784BA    pop         ebp
 004784BB    ret
end;*}

//004784C4
procedure TCustomCheckBox.CreateWnd;
begin
{*
 004784C4    push        ebp
 004784C5    mov         ebp,esp
 004784C7    push        ecx
 004784C8    mov         dword ptr [ebp-4],eax
 004784CB    mov         eax,dword ptr [ebp-4]
 004784CE    call        TWinControl.CreateWnd
 004784D3    push        0
 004784D5    mov         eax,dword ptr [ebp-4]
 004784D8    movzx       eax,byte ptr [eax+212];TCustomCheckBox.FState:TCheckBoxState
 004784DF    push        eax
 004784E0    push        0F1
 004784E5    mov         eax,dword ptr [ebp-4]
 004784E8    call        TWinControl.GetHandle
 004784ED    push        eax
 004784EE    call        user32.SendMessageA
 004784F3    pop         ecx
 004784F4    pop         ebp
 004784F5    ret
*}
end;

//004784F8
{*procedure TCustomCheckBox.WMSize(?:?);
begin
 004784F8    push        ebp
 004784F9    mov         ebp,esp
 004784FB    add         esp,0FFFFFFF8
 004784FE    mov         dword ptr [ebp-8],edx
 00478501    mov         dword ptr [ebp-4],eax
 00478504    mov         edx,dword ptr [ebp-8]
 00478507    mov         eax,dword ptr [ebp-4]
 0047850A    call        TWinControl.WMSize
 0047850F    mov         eax,dword ptr [ebp-4]
 00478512    mov         edx,dword ptr [eax]
 00478514    call        dword ptr [edx+7C];TCustomCheckBox.sub_0048BE68
 00478517    pop         ecx
 00478518    pop         ecx
 00478519    pop         ebp
 0047851A    ret
end;*}

//0047851C
{*procedure TCustomCheckBox.CMCtl3DChanged(?:?);
begin
 0047851C    push        ebp
 0047851D    mov         ebp,esp
 0047851F    add         esp,0FFFFFFF8
 00478522    mov         dword ptr [ebp-8],edx
 00478525    mov         dword ptr [ebp-4],eax
 00478528    mov         eax,dword ptr [ebp-4]
 0047852B    call        TWinControl.RecreateWnd
 00478530    pop         ecx
 00478531    pop         ecx
 00478532    pop         ebp
 00478533    ret
end;*}

//00478534
{*procedure TCustomCheckBox.CMDialogChar(?:?);
begin
 00478534    push        ebp
 00478535    mov         ebp,esp
 00478537    add         esp,0FFFFFFF4
 0047853A    push        esi
 0047853B    xor         ecx,ecx
 0047853D    mov         dword ptr [ebp-0C],ecx
 00478540    mov         dword ptr [ebp-8],edx
 00478543    mov         dword ptr [ebp-4],eax
 00478546    xor         eax,eax
 00478548    push        ebp
 00478549    push        4785D5
 0047854E    push        dword ptr fs:[eax]
 00478551    mov         dword ptr fs:[eax],esp
 00478554    lea         edx,[ebp-0C]
 00478557    mov         eax,dword ptr [ebp-4]
 0047855A    call        TPanel.GetCaption
 0047855F    mov         edx,dword ptr [ebp-0C]
 00478562    mov         eax,dword ptr [ebp-8]
 00478565    mov         ax,word ptr [eax+4]
 00478569    call        004A06C8
 0047856E    test        al,al
>00478570    je          004785B4
 00478572    mov         eax,dword ptr [ebp-4]
 00478575    mov         si,0FFB8
 00478579    call        @CallDynaInst;TWinControl.sub_0048BFC8
 0047857E    test        al,al
>00478580    je          004785B4
 00478582    mov         eax,dword ptr [ebp-4]
 00478585    mov         edx,dword ptr [eax]
 00478587    call        dword ptr [edx+0C4];TCustomCheckBox.sub_0048C028
 0047858D    mov         eax,dword ptr [ebp-4]
 00478590    mov         si,0FFB5
 00478594    call        @CallDynaInst;TWinControl.sub_0048C078
 00478599    test        al,al
>0047859B    je          004785A8
 0047859D    mov         eax,dword ptr [ebp-4]
 004785A0    mov         edx,dword ptr [eax]
 004785A2    call        dword ptr [edx+0D0];TCustomCheckBox.sub_004782EC
 004785A8    mov         eax,dword ptr [ebp-8]
 004785AB    mov         dword ptr [eax+0C],1
>004785B2    jmp         004785BF
 004785B4    mov         edx,dword ptr [ebp-8]
 004785B7    mov         eax,dword ptr [ebp-4]
 004785BA    call        TWinControl.CMDialogChar
 004785BF    xor         eax,eax
 004785C1    pop         edx
 004785C2    pop         ecx
 004785C3    pop         ecx
 004785C4    mov         dword ptr fs:[eax],edx
 004785C7    push        4785DC
 004785CC    lea         eax,[ebp-0C]
 004785CF    call        @LStrClr
 004785D4    ret
>004785D5    jmp         @HandleFinally
>004785DA    jmp         004785CC
 004785DC    pop         esi
 004785DD    mov         esp,ebp
 004785DF    pop         ebp
 004785E0    ret
end;*}

//004785E4
{*procedure TCustomCheckBox.sub_004785E4(?:?);
begin
 004785E4    push        ebp
 004785E5    mov         ebp,esp
 004785E7    add         esp,0FFFFFFF8
 004785EA    mov         dword ptr [ebp-8],edx
 004785ED    mov         dword ptr [ebp-4],eax
 004785F0    mov         eax,dword ptr [ebp-8]
 004785F3    cmp         word ptr [eax+6],0
>004785F8    jne         00478605
 004785FA    mov         eax,dword ptr [ebp-4]
 004785FD    mov         edx,dword ptr [eax]
 004785FF    call        dword ptr [edx+0D0];TCustomCheckBox.sub_004782EC
 00478605    pop         ecx
 00478606    pop         ecx
 00478607    pop         ebp
 00478608    ret
end;*}

//0047860C
constructor sub_0047860C;
begin
{*
 0047860C    push        ebp
 0047860D    mov         ebp,esp
 0047860F    add         esp,0FFFFFFF4
 00478612    test        dl,dl
>00478614    je          0047861E
 00478616    add         esp,0FFFFFFF0
 00478619    call        @ClassCreate
 0047861E    mov         dword ptr [ebp-0C],ecx
 00478621    mov         byte ptr [ebp-5],dl
 00478624    mov         dword ptr [ebp-4],eax
 00478627    mov         ecx,dword ptr [ebp-0C]
 0047862A    xor         edx,edx
 0047862C    mov         eax,dword ptr [ebp-4]
 0047862F    call        00477B24
 00478634    mov         edx,71
 00478639    mov         eax,dword ptr [ebp-4]
 0047863C    call        TSplitter.SetWidth
 00478641    mov         edx,11
 00478646    mov         eax,dword ptr [ebp-4]
 00478649    call        TToolButton.SetHeight
 0047864E    mov         eax,dword ptr [ebp-4]
 00478651    mov         edx,dword ptr ds:[478684];0xA0 gvar_00478684
 00478657    mov         dword ptr [eax+50],edx;TRadioButton.FControlStyle:TControlStyle
 0047865A    mov         eax,dword ptr [ebp-4]
 0047865D    mov         byte ptr [eax+210],1;TRadioButton.Alignment:TLeftRight
 00478664    mov         eax,dword ptr [ebp-4]
 00478667    cmp         byte ptr [ebp-5],0
>0047866B    je          0047867C
 0047866D    call        @AfterConstruction
 00478672    pop         dword ptr fs:[0]
 00478679    add         esp,0C
 0047867C    mov         eax,dword ptr [ebp-4]
 0047867F    mov         esp,ebp
 00478681    pop         ebp
 00478682    ret
*}
end;

//00478688
function TRadioButton.GetChecked:Boolean;
begin
{*
 00478688    push        ebp
 00478689    mov         ebp,esp
 0047868B    add         esp,0FFFFFFF8
 0047868E    mov         dword ptr [ebp-4],eax
 00478691    mov         eax,dword ptr [ebp-4]
 00478694    mov         al,byte ptr [eax+211];TRadioButton.FChecked:Boolean
 0047869A    mov         byte ptr [ebp-5],al
 0047869D    mov         al,byte ptr [ebp-5]
 004786A0    pop         ecx
 004786A1    pop         ecx
 004786A2    pop         ebp
 004786A3    ret
*}
end;

//004786A4
procedure TRadioButton.sub_004786A4;
begin
{*
 004786A4    push        ebp
 004786A5    mov         ebp,esp
 004786A7    add         esp,0FFFFFFF8
 004786AA    push        esi
 004786AB    mov         dword ptr [ebp-4],eax
 004786AE    mov         eax,dword ptr [ebp-4]
 004786B1    mov         si,0FFC8
 004786B5    call        @CallDynaInst;TControl.sub_0048415C
 004786BA    test        al,al
>004786BC    jne         004786C4
 004786BE    mov         byte ptr [ebp-5],1
>004786C2    jmp         004786DA
 004786C4    mov         eax,dword ptr [ebp-4]
 004786C7    cmp         byte ptr [eax+210],1;TRadioButton.Alignment:TLeftRight
>004786CE    jne         004786D6
 004786D0    mov         byte ptr [ebp-5],0
>004786D4    jmp         004786DA
 004786D6    mov         byte ptr [ebp-5],1
 004786DA    mov         al,byte ptr [ebp-5]
 004786DD    pop         esi
 004786DE    pop         ecx
 004786DF    pop         ecx
 004786E0    pop         ebp
 004786E1    ret
*}
end;

//004786E4
procedure TRadioButton.SetAlignment(Value:TLeftRight);
begin
{*
 004786E4    push        ebp
 004786E5    mov         ebp,esp
 004786E7    add         esp,0FFFFFFF8
 004786EA    mov         byte ptr [ebp-5],dl
 004786ED    mov         dword ptr [ebp-4],eax
 004786F0    mov         eax,dword ptr [ebp-4]
 004786F3    mov         al,byte ptr [eax+210];TRadioButton.Alignment:TLeftRight
 004786F9    cmp         al,byte ptr [ebp-5]
>004786FC    je          00478712
 004786FE    mov         al,byte ptr [ebp-5]
 00478701    mov         edx,dword ptr [ebp-4]
 00478704    mov         byte ptr [edx+210],al;TRadioButton.Alignment:TLeftRight
 0047870A    mov         eax,dword ptr [ebp-4]
 0047870D    call        TWinControl.RecreateWnd
 00478712    pop         ecx
 00478713    pop         ecx
 00478714    pop         ebp
 00478715    ret
*}
end;

//00478718
{*procedure sub_00478718(?:?);
begin
 00478718    push        ebp
 00478719    mov         ebp,esp
 0047871B    add         esp,0FFFFFFF0
 0047871E    mov         eax,dword ptr [ebp+8]
 00478721    mov         eax,dword ptr [eax-4]
 00478724    cmp         dword ptr [eax+30],0
>00478728    je          004787DD
 0047872E    mov         eax,dword ptr [ebp+8]
 00478731    mov         eax,dword ptr [eax-4]
 00478734    mov         eax,dword ptr [eax+30]
 00478737    mov         dword ptr [ebp-0C],eax
 0047873A    mov         eax,dword ptr [ebp-0C]
 0047873D    call        00487E38
 00478742    dec         eax
 00478743    test        eax,eax
>00478745    jl          004787DD
 0047874B    inc         eax
 0047874C    mov         dword ptr [ebp-10],eax
 0047874F    mov         dword ptr [ebp-4],0
 00478756    mov         edx,dword ptr [ebp-4]
 00478759    mov         eax,dword ptr [ebp-0C]
 0047875C    call        00487DCC
 00478761    mov         dword ptr [ebp-8],eax
 00478764    mov         eax,dword ptr [ebp+8]
 00478767    mov         eax,dword ptr [eax-4]
 0047876A    cmp         eax,dword ptr [ebp-8]
>0047876D    je          004787D1
 0047876F    mov         eax,dword ptr [ebp-8]
 00478772    mov         edx,dword ptr ds:[470DEC];TRadioButton
 00478778    call        @IsClass
 0047877D    test        al,al
>0047877F    je          004787D1
 00478781    mov         eax,dword ptr [ebp-8]
 00478784    mov         edx,dword ptr [eax]
 00478786    call        dword ptr [edx+3C]
 00478789    test        eax,eax
>0047878B    je          004787C4
 0047878D    mov         eax,dword ptr [ebp-8]
 00478790    mov         edx,dword ptr [eax]
 00478792    call        dword ptr [edx+3C]
 00478795    mov         edx,dword ptr ds:[492C28];TCustomAction
 0047879B    call        @IsClass
 004787A0    test        al,al
>004787A2    je          004787C4
 004787A4    mov         eax,dword ptr [ebp-8]
 004787A7    mov         edx,dword ptr [eax]
 004787A9    call        dword ptr [edx+3C]
 004787AC    cmp         byte ptr [eax+95],0
>004787B3    je          004787C4
 004787B5    mov         eax,dword ptr [ebp-8]
 004787B8    mov         edx,dword ptr [eax]
 004787BA    call        dword ptr [edx+3C]
 004787BD    xor         edx,edx
 004787BF    call        TAction.SetChecked
 004787C4    xor         edx,edx
 004787C6    mov         eax,dword ptr [ebp-8]
 004787C9    mov         ecx,dword ptr [eax]
 004787CB    call        dword ptr [ecx+0CC]
 004787D1    inc         dword ptr [ebp-4]
 004787D4    dec         dword ptr [ebp-10]
>004787D7    jne         00478756
 004787DD    mov         esp,ebp
 004787DF    pop         ebp
 004787E0    ret
end;*}

//004787E4
procedure TRadioButton.SetChecked(Value:Boolean);
begin
{*
 004787E4    push        ebp
 004787E5    mov         ebp,esp
 004787E7    add         esp,0FFFFFFF8
 004787EA    push        esi
 004787EB    mov         byte ptr [ebp-5],dl
 004787EE    mov         dword ptr [ebp-4],eax
 004787F1    mov         eax,dword ptr [ebp-4]
 004787F4    mov         al,byte ptr [eax+211];TRadioButton.FChecked:Boolean
 004787FA    cmp         al,byte ptr [ebp-5]
>004787FD    je          00478873
 004787FF    mov         eax,dword ptr [ebp-4]
 00478802    mov         dl,byte ptr [ebp-5]
 00478805    mov         byte ptr [eax+211],dl;TRadioButton.FChecked:Boolean
 0047880B    mov         dl,byte ptr [ebp-5]
 0047880E    mov         eax,dword ptr [ebp-4]
 00478811    call        TPanel.SetTabStop
 00478816    mov         eax,dword ptr [ebp-4]
 00478819    call        TWinControl.HandleAllocated
 0047881E    test        al,al
>00478820    je          00478846
 00478822    push        0
 00478824    mov         eax,dword ptr [ebp-4]
 00478827    mov         edx,dword ptr [eax]
 00478829    call        dword ptr [edx+0C8];TRadioButton.GetChecked
 0047882F    and         eax,7F
 00478832    push        eax
 00478833    push        0F1
 00478838    mov         eax,dword ptr [ebp-4]
 0047883B    call        TWinControl.GetHandle
 00478840    push        eax
 00478841    call        user32.SendMessageA
 00478846    cmp         byte ptr [ebp-5],0
>0047884A    je          00478873
 0047884C    push        ebp
 0047884D    call        00478718
 00478852    pop         ecx
 00478853    mov         eax,dword ptr [ebp-4]
 00478856    call        00483218
 0047885B    mov         eax,dword ptr [ebp-4]
 0047885E    cmp         byte ptr [eax+208],0;TRadioButton.FClicksDisabled:Boolean
>00478865    jne         00478873
 00478867    mov         eax,dword ptr [ebp-4]
 0047886A    mov         si,0FFEB
 0047886E    call        @CallDynaInst;TControl.sub_004854CC
 00478873    pop         esi
 00478874    pop         ecx
 00478875    pop         ecx
 00478876    pop         ebp
 00478877    ret
*}
end;

//00478878
{*procedure sub_00478878(?:?);
begin
 00478878    push        ebp
 00478879    mov         ebp,esp
 0047887B    add         esp,0FFFFFFF8
 0047887E    push        esi
 0047887F    mov         dword ptr [ebp-8],edx
 00478882    mov         dword ptr [ebp-4],eax
 00478885    mov         edx,dword ptr [ebp-8]
 00478888    mov         eax,dword ptr [ebp-4]
 0047888B    call        00477D7C
 00478890    mov         ecx,4788DC
 00478895    mov         edx,dword ptr [ebp-8]
 00478898    mov         eax,dword ptr [ebp-4]
 0047889B    call        00487F0C
 004788A0    mov         eax,dword ptr [ebp-4]
 004788A3    mov         si,0FFC8
 004788A7    call        @CallDynaInst;TControl.sub_0048415C
 004788AC    and         eax,7F
 004788AF    lea         eax,[eax*8+56C6E8]
 004788B6    mov         edx,dword ptr [ebp-4]
 004788B9    movzx       edx,byte ptr [edx+210];TRadioButton.Alignment:TLeftRight
 004788C0    mov         eax,dword ptr [eax+edx*4]
 004788C3    mov         edx,dword ptr [ebp-8]
 004788C6    mov         edx,dword ptr [edx+4]
 004788C9    or          edx,4
 004788CC    or          eax,edx
 004788CE    mov         edx,dword ptr [ebp-8]
 004788D1    mov         dword ptr [edx+4],eax
 004788D4    pop         esi
 004788D5    pop         ecx
 004788D6    pop         ecx
 004788D7    pop         ebp
 004788D8    ret
end;*}

//004788E4
procedure TRadioButton.CreateWnd;
begin
{*
 004788E4    push        ebp
 004788E5    mov         ebp,esp
 004788E7    push        ecx
 004788E8    mov         dword ptr [ebp-4],eax
 004788EB    mov         eax,dword ptr [ebp-4]
 004788EE    call        TWinControl.CreateWnd
 004788F3    push        0
 004788F5    mov         eax,dword ptr [ebp-4]
 004788F8    movzx       eax,byte ptr [eax+211];TRadioButton.FChecked:Boolean
 004788FF    push        eax
 00478900    push        0F1
 00478905    mov         eax,dword ptr [ebp-4]
 00478908    call        TWinControl.GetHandle
 0047890D    push        eax
 0047890E    call        user32.SendMessageA
 00478913    pop         ecx
 00478914    pop         ebp
 00478915    ret
*}
end;

//00478918
{*procedure TRadioButton.CMCtl3DChanged(?:?);
begin
 00478918    push        ebp
 00478919    mov         ebp,esp
 0047891B    add         esp,0FFFFFFF8
 0047891E    mov         dword ptr [ebp-8],edx
 00478921    mov         dword ptr [ebp-4],eax
 00478924    mov         eax,dword ptr [ebp-4]
 00478927    call        TWinControl.RecreateWnd
 0047892C    pop         ecx
 0047892D    pop         ecx
 0047892E    pop         ebp
 0047892F    ret
end;*}

//00478930
{*procedure TRadioButton.CMDialogChar(?:?);
begin
 00478930    push        ebp
 00478931    mov         ebp,esp
 00478933    add         esp,0FFFFFFF4
 00478936    push        esi
 00478937    xor         ecx,ecx
 00478939    mov         dword ptr [ebp-0C],ecx
 0047893C    mov         dword ptr [ebp-8],edx
 0047893F    mov         dword ptr [ebp-4],eax
 00478942    xor         eax,eax
 00478944    push        ebp
 00478945    push        4789B6
 0047894A    push        dword ptr fs:[eax]
 0047894D    mov         dword ptr fs:[eax],esp
 00478950    lea         edx,[ebp-0C]
 00478953    mov         eax,dword ptr [ebp-4]
 00478956    call        TPanel.GetCaption
 0047895B    mov         edx,dword ptr [ebp-0C]
 0047895E    mov         eax,dword ptr [ebp-8]
 00478961    mov         ax,word ptr [eax+4]
 00478965    call        004A06C8
 0047896A    test        al,al
>0047896C    je          00478995
 0047896E    mov         eax,dword ptr [ebp-4]
 00478971    mov         si,0FFB8
 00478975    call        @CallDynaInst;TWinControl.sub_0048BFC8
 0047897A    test        al,al
>0047897C    je          00478995
 0047897E    mov         eax,dword ptr [ebp-4]
 00478981    mov         edx,dword ptr [eax]
 00478983    call        dword ptr [edx+0C4];TRadioButton.sub_0048C028
 00478989    mov         eax,dword ptr [ebp-8]
 0047898C    mov         dword ptr [eax+0C],1
>00478993    jmp         004789A0
 00478995    mov         edx,dword ptr [ebp-8]
 00478998    mov         eax,dword ptr [ebp-4]
 0047899B    call        TWinControl.CMDialogChar
 004789A0    xor         eax,eax
 004789A2    pop         edx
 004789A3    pop         ecx
 004789A4    pop         ecx
 004789A5    mov         dword ptr fs:[eax],edx
 004789A8    push        4789BD
 004789AD    lea         eax,[ebp-0C]
 004789B0    call        @LStrClr
 004789B5    ret
>004789B6    jmp         @HandleFinally
>004789BB    jmp         004789AD
 004789BD    pop         esi
 004789BE    mov         esp,ebp
 004789C0    pop         ebp
 004789C1    ret
end;*}

//004789C4
{*procedure TRadioButton.sub_004789C4(?:?);
begin
 004789C4    push        ebp
 004789C5    mov         ebp,esp
 004789C7    add         esp,0FFFFFFF8
 004789CA    push        esi
 004789CB    mov         dword ptr [ebp-8],edx
 004789CE    mov         dword ptr [ebp-4],eax
 004789D1    mov         eax,dword ptr [ebp-8]
 004789D4    mov         ax,word ptr [eax+6]
 004789D8    sub         ax,1
>004789DC    jb          004789E6
 004789DE    sub         ax,4
>004789E2    je          004789F5
>004789E4    jmp         00478A01
 004789E6    mov         dl,1
 004789E8    mov         eax,dword ptr [ebp-4]
 004789EB    mov         ecx,dword ptr [eax]
 004789ED    call        dword ptr [ecx+0CC];TRadioButton.SetChecked
>004789F3    jmp         00478A01
 004789F5    mov         eax,dword ptr [ebp-4]
 004789F8    mov         si,0FFE9
 004789FC    call        @CallDynaInst;TControl.sub_0048555C
 00478A01    pop         esi
 00478A02    pop         ecx
 00478A03    pop         ecx
 00478A04    pop         ebp
 00478A05    ret
end;*}

//00478A08
{*function sub_00478A08:?;
begin
 00478A08    push        ebp
 00478A09    mov         ebp,esp
 00478A0B    add         esp,0FFFFFFF8
 00478A0E    mov         dword ptr [ebp-4],eax
 00478A11    push        0
 00478A13    push        0
 00478A15    push        18B
 00478A1A    mov         eax,dword ptr [ebp-4]
 00478A1D    mov         eax,dword ptr [eax+10];TListBoxStrings...........................................ListBox...
 00478A20    call        TWinControl.GetHandle
 00478A25    push        eax
 00478A26    call        user32.SendMessageA
 00478A2B    mov         dword ptr [ebp-8],eax
 00478A2E    mov         eax,dword ptr [ebp-8]
 00478A31    pop         ecx
 00478A32    pop         ecx
 00478A33    pop         ebp
 00478A34    ret
end;*}

//00478A38
{*procedure sub_00478A38(?:?; ?:?);
begin
 00478A38    push        ebp
 00478A39    mov         ebp,esp
 00478A3B    add         esp,0FFFFFFEC
 00478A3E    push        ebx
 00478A3F    xor         ebx,ebx
 00478A41    mov         dword ptr [ebp-14],ebx
 00478A44    mov         dword ptr [ebp-0C],ecx
 00478A47    mov         dword ptr [ebp-8],edx
 00478A4A    mov         dword ptr [ebp-4],eax
 00478A4D    xor         eax,eax
 00478A4F    push        ebp
 00478A50    push        478B1D
 00478A55    push        dword ptr fs:[eax]
 00478A58    mov         dword ptr fs:[eax],esp
 00478A5B    mov         eax,dword ptr [ebp-4]
 00478A5E    mov         eax,dword ptr [eax+10];TListBoxStrings............................................ListBo...
 00478A61    mov         al,byte ptr [eax+238];TCustomListBox.FStyle:TListBoxStyle
 00478A67    add         al,0FD
 00478A69    sub         al,2
>00478A6B    jae         00478A83
 00478A6D    mov         ecx,dword ptr [ebp-0C]
 00478A70    mov         edx,dword ptr [ebp-8]
 00478A73    mov         eax,dword ptr [ebp-4]
 00478A76    mov         eax,dword ptr [eax+10];TListBoxStrings.............................................ListB...
 00478A79    call        0047ADBC
>00478A7E    jmp         00478B07
 00478A83    push        0
 00478A85    mov         eax,dword ptr [ebp-8]
 00478A88    push        eax
 00478A89    push        18A
 00478A8E    mov         eax,dword ptr [ebp-4]
 00478A91    mov         eax,dword ptr [eax+10];TListBoxStrings..............................................List...
 00478A94    call        TWinControl.GetHandle
 00478A99    push        eax
 00478A9A    call        user32.SendMessageA
 00478A9F    mov         dword ptr [ebp-10],eax
 00478AA2    cmp         dword ptr [ebp-10],0FFFFFFFF
>00478AA6    jne         00478AC3
 00478AA8    lea         edx,[ebp-14]
 00478AAB    mov         eax,[0056E4A8];^SListIndexError:TResStringRec
 00478AB0    call        LoadResString
 00478AB5    mov         edx,dword ptr [ebp-14]
 00478AB8    mov         ecx,dword ptr [ebp-8]
 00478ABB    mov         eax,dword ptr [ebp-4]
 00478ABE    call        00421E04
 00478AC3    mov         eax,dword ptr [ebp-0C]
 00478AC6    mov         edx,dword ptr [ebp-10]
 00478AC9    call        @LStrSetLength
 00478ACE    cmp         dword ptr [ebp-10],0
>00478AD2    je          00478B07
 00478AD4    mov         eax,dword ptr [ebp-0C]
 00478AD7    mov         eax,dword ptr [eax]
 00478AD9    call        @LStrToPChar
 00478ADE    push        eax
 00478ADF    mov         eax,dword ptr [ebp-8]
 00478AE2    push        eax
 00478AE3    push        189
 00478AE8    mov         eax,dword ptr [ebp-4]
 00478AEB    mov         eax,dword ptr [eax+10];TListBoxStrings...............................................Lis...
 00478AEE    call        TWinControl.GetHandle
 00478AF3    push        eax
 00478AF4    call        user32.SendMessageA
 00478AF9    mov         dword ptr [ebp-10],eax
 00478AFC    mov         eax,dword ptr [ebp-0C]
 00478AFF    mov         edx,dword ptr [ebp-10]
 00478B02    call        @LStrSetLength
 00478B07    xor         eax,eax
 00478B09    pop         edx
 00478B0A    pop         ecx
 00478B0B    pop         ecx
 00478B0C    mov         dword ptr fs:[eax],edx
 00478B0F    push        478B24
 00478B14    lea         eax,[ebp-14]
 00478B17    call        @LStrClr
 00478B1C    ret
>00478B1D    jmp         @HandleFinally
>00478B22    jmp         00478B14
 00478B24    pop         ebx
 00478B25    mov         esp,ebp
 00478B27    pop         ebp
 00478B28    ret
end;*}

//00478B2C
{*function sub_00478B2C(?:?):?;
begin
 00478B2C    push        ebp
 00478B2D    mov         ebp,esp
 00478B2F    add         esp,0FFFFFFF0
 00478B32    push        esi
 00478B33    xor         ecx,ecx
 00478B35    mov         dword ptr [ebp-10],ecx
 00478B38    mov         dword ptr [ebp-8],edx
 00478B3B    mov         dword ptr [ebp-4],eax
 00478B3E    xor         eax,eax
 00478B40    push        ebp
 00478B41    push        478BBD
 00478B46    push        dword ptr fs:[eax]
 00478B49    mov         dword ptr fs:[eax],esp
 00478B4C    mov         eax,dword ptr [ebp-4]
 00478B4F    mov         eax,dword ptr [eax+10];TListBoxStrings................................................Li...
 00478B52    mov         al,byte ptr [eax+238];TCustomListBox.FStyle:TListBoxStyle
 00478B58    add         al,0FD
 00478B5A    sub         al,2
>00478B5C    jae         00478B71
 00478B5E    mov         edx,dword ptr [ebp-8]
 00478B61    mov         eax,dword ptr [ebp-4]
 00478B64    mov         eax,dword ptr [eax+10];TListBoxStrings.................................................L...
 00478B67    call        0047ADF8
 00478B6C    mov         dword ptr [ebp-0C],eax
>00478B6F    jmp         00478BA7
 00478B71    mov         edx,dword ptr [ebp-8]
 00478B74    mov         eax,dword ptr [ebp-4]
 00478B77    mov         eax,dword ptr [eax+10];TListBoxStrings.....................................................
 00478B7A    mov         si,0FFB1
 00478B7E    call        @CallDynaInst;TCustomListBox.sub_00479358
 00478B83    mov         dword ptr [ebp-0C],eax
 00478B86    cmp         dword ptr [ebp-0C],0FFFFFFFF
>00478B8A    jne         00478BA7
 00478B8C    lea         edx,[ebp-10]
 00478B8F    mov         eax,[0056E4A8];^SListIndexError:TResStringRec
 00478B94    call        LoadResString
 00478B99    mov         edx,dword ptr [ebp-10]
 00478B9C    mov         ecx,dword ptr [ebp-8]
 00478B9F    mov         eax,dword ptr [ebp-4]
 00478BA2    call        00421E04
 00478BA7    xor         eax,eax
 00478BA9    pop         edx
 00478BAA    pop         ecx
 00478BAB    pop         ecx
 00478BAC    mov         dword ptr fs:[eax],edx
 00478BAF    push        478BC4
 00478BB4    lea         eax,[ebp-10]
 00478BB7    call        @LStrClr
 00478BBC    ret
>00478BBD    jmp         @HandleFinally
>00478BC2    jmp         00478BB4
 00478BC4    mov         eax,dword ptr [ebp-0C]
 00478BC7    pop         esi
 00478BC8    mov         esp,ebp
 00478BCA    pop         ebp
 00478BCB    ret
end;*}

//00478BCC
{*procedure sub_00478BCC(?:?; ?:?);
begin
 00478BCC    push        ebp
 00478BCD    mov         ebp,esp
 00478BCF    add         esp,0FFFFFFEC
 00478BD2    push        ebx
 00478BD3    push        esi
 00478BD4    mov         dword ptr [ebp-0C],ecx
 00478BD7    mov         dword ptr [ebp-8],edx
 00478BDA    mov         dword ptr [ebp-4],eax
 00478BDD    mov         eax,dword ptr [ebp-4]
 00478BE0    mov         eax,dword ptr [eax+10];TListBoxStrings.....................................................
 00478BE3    mov         edx,dword ptr [eax]
 00478BE5    call        dword ptr [edx+0CC];TCustomListBox.sub_00479780
 00478BEB    mov         dword ptr [ebp-10],eax
 00478BEE    mov         edx,dword ptr [ebp-8]
 00478BF1    mov         eax,dword ptr [ebp-4]
 00478BF4    mov         eax,dword ptr [eax+10];TListBoxStrings.....................................................
 00478BF7    mov         si,0FFB3
 00478BFB    call        @CallDynaInst;TCustomListBox.sub_004793B8
 00478C00    mov         dword ptr [ebp-14],eax
 00478C03    xor         ecx,ecx
 00478C05    mov         edx,dword ptr [ebp-8]
 00478C08    mov         eax,dword ptr [ebp-4]
 00478C0B    mov         eax,dword ptr [eax+10];TListBoxStrings.....................................................
 00478C0E    mov         si,0FFB2
 00478C12    call        @CallDynaInst;TCustomListBox.sub_004793E0
 00478C17    mov         edx,dword ptr [ebp-8]
 00478C1A    mov         eax,dword ptr [ebp-4]
 00478C1D    mov         ecx,dword ptr [eax]
 00478C1F    call        dword ptr [ecx+48];TListBoxStrings.sub_00478DEC
 00478C22    push        0
 00478C24    mov         ecx,dword ptr [ebp-0C]
 00478C27    mov         edx,dword ptr [ebp-8]
 00478C2A    mov         eax,dword ptr [ebp-4]
 00478C2D    mov         ebx,dword ptr [eax]
 00478C2F    call        dword ptr [ebx+64];TListBoxStrings.sub_004224A4
 00478C32    mov         ecx,dword ptr [ebp-14]
 00478C35    mov         edx,dword ptr [ebp-8]
 00478C38    mov         eax,dword ptr [ebp-4]
 00478C3B    mov         eax,dword ptr [eax+10];TListBoxStrings.....................................................
 00478C3E    mov         si,0FFB2
 00478C42    call        @CallDynaInst;TCustomListBox.sub_004793E0
 00478C47    mov         edx,dword ptr [ebp-10]
 00478C4A    mov         eax,dword ptr [ebp-4]
 00478C4D    mov         eax,dword ptr [eax+10];TListBoxStrings.....................................................
 00478C50    mov         ecx,dword ptr [eax]
 00478C52    call        dword ptr [ecx+0D0];TCustomListBox.sub_00479840
 00478C58    pop         esi
 00478C59    pop         ebx
 00478C5A    mov         esp,ebp
 00478C5C    pop         ebp
 00478C5D    ret
end;*}

//00478C60
{*procedure sub_00478C60(?:?; ?:?);
begin
 00478C60    push        ebp
 00478C61    mov         ebp,esp
 00478C63    add         esp,0FFFFFFF4
 00478C66    push        esi
 00478C67    mov         dword ptr [ebp-0C],ecx
 00478C6A    mov         dword ptr [ebp-8],edx
 00478C6D    mov         dword ptr [ebp-4],eax
 00478C70    cmp         dword ptr [ebp-8],0FFFFFFFF
>00478C74    je          00478C9D
 00478C76    mov         eax,dword ptr [ebp-4]
 00478C79    mov         eax,dword ptr [eax+10];TListBoxStrings.....................................................
 00478C7C    mov         al,byte ptr [eax+238];TCustomListBox.FStyle:TListBoxStyle
 00478C82    add         al,0FD
 00478C84    sub         al,2
>00478C86    jb          00478C9D
 00478C88    mov         ecx,dword ptr [ebp-0C]
 00478C8B    mov         edx,dword ptr [ebp-8]
 00478C8E    mov         eax,dword ptr [ebp-4]
 00478C91    mov         eax,dword ptr [eax+10];TListBoxStrings.....................................................
 00478C94    mov         si,0FFB0
 00478C98    call        @CallDynaInst;TCustomListBox.sub_00479388
 00478C9D    pop         esi
 00478C9E    mov         esp,ebp
 00478CA0    pop         ebp
 00478CA1    ret
end;*}

//00478CA4
{*function sub_00478CA4(?:?):?;
begin
 00478CA4    push        ebp
 00478CA5    mov         ebp,esp
 00478CA7    add         esp,0FFFFFFF0
 00478CAA    xor         ecx,ecx
 00478CAC    mov         dword ptr [ebp-10],ecx
 00478CAF    mov         dword ptr [ebp-8],edx
 00478CB2    mov         dword ptr [ebp-4],eax
 00478CB5    xor         eax,eax
 00478CB7    push        ebp
 00478CB8    push        478D3D
 00478CBD    push        dword ptr fs:[eax]
 00478CC0    mov         dword ptr fs:[eax],esp
 00478CC3    mov         dword ptr [ebp-0C],0FFFFFFFF
 00478CCA    mov         eax,dword ptr [ebp-4]
 00478CCD    mov         eax,dword ptr [eax+10];TListBoxStrings.....................................................
 00478CD0    mov         al,byte ptr [eax+238];TCustomListBox.FStyle:TListBoxStyle
 00478CD6    add         al,0FD
 00478CD8    sub         al,2
>00478CDA    jb          00478D27
 00478CDC    mov         eax,dword ptr [ebp-8]
 00478CDF    call        @LStrToPChar
 00478CE4    push        eax
 00478CE5    push        0
 00478CE7    push        180
 00478CEC    mov         eax,dword ptr [ebp-4]
 00478CEF    mov         eax,dword ptr [eax+10];TListBoxStrings.....................................................
 00478CF2    call        TWinControl.GetHandle
 00478CF7    push        eax
 00478CF8    call        user32.SendMessageA
 00478CFD    mov         dword ptr [ebp-0C],eax
 00478D00    cmp         dword ptr [ebp-0C],0
>00478D04    jge         00478D27
 00478D06    lea         edx,[ebp-10]
 00478D09    mov         eax,[0056E134];^SInsertLineError:TResStringRec
 00478D0E    call        LoadResString
 00478D13    mov         ecx,dword ptr [ebp-10]
 00478D16    mov         dl,1
 00478D18    mov         eax,[0041D3B0];EOutOfResources
 00478D1D    call        Exception.Create;EOutOfResources.Create
 00478D22    call        @RaiseExcept
 00478D27    xor         eax,eax
 00478D29    pop         edx
 00478D2A    pop         ecx
 00478D2B    pop         ecx
 00478D2C    mov         dword ptr fs:[eax],edx
 00478D2F    push        478D44
 00478D34    lea         eax,[ebp-10]
 00478D37    call        @LStrClr
 00478D3C    ret
>00478D3D    jmp         @HandleFinally
>00478D42    jmp         00478D34
 00478D44    mov         eax,dword ptr [ebp-0C]
 00478D47    mov         esp,ebp
 00478D49    pop         ebp
 00478D4A    ret
end;*}

//00478D4C
{*procedure sub_00478D4C(?:?; ?:?);
begin
 00478D4C    push        ebp
 00478D4D    mov         ebp,esp
 00478D4F    add         esp,0FFFFFFF0
 00478D52    push        ebx
 00478D53    xor         ebx,ebx
 00478D55    mov         dword ptr [ebp-10],ebx
 00478D58    mov         dword ptr [ebp-0C],ecx
 00478D5B    mov         dword ptr [ebp-8],edx
 00478D5E    mov         dword ptr [ebp-4],eax
 00478D61    xor         eax,eax
 00478D63    push        ebp
 00478D64    push        478DDF
 00478D69    push        dword ptr fs:[eax]
 00478D6C    mov         dword ptr fs:[eax],esp
 00478D6F    mov         eax,dword ptr [ebp-4]
 00478D72    mov         eax,dword ptr [eax+10];TListBoxStrings.....................................................
 00478D75    mov         al,byte ptr [eax+238];TCustomListBox.FStyle:TListBoxStyle
 00478D7B    add         al,0FD
 00478D7D    sub         al,2
>00478D7F    jb          00478DC9
 00478D81    mov         eax,dword ptr [ebp-0C]
 00478D84    call        @LStrToPChar
 00478D89    push        eax
 00478D8A    mov         eax,dword ptr [ebp-8]
 00478D8D    push        eax
 00478D8E    push        181
 00478D93    mov         eax,dword ptr [ebp-4]
 00478D96    mov         eax,dword ptr [eax+10];TListBoxStrings.....................................................
 00478D99    call        TWinControl.GetHandle
 00478D9E    push        eax
 00478D9F    call        user32.SendMessageA
 00478DA4    test        eax,eax
>00478DA6    jge         00478DC9
 00478DA8    lea         edx,[ebp-10]
 00478DAB    mov         eax,[0056E134];^SInsertLineError:TResStringRec
 00478DB0    call        LoadResString
 00478DB5    mov         ecx,dword ptr [ebp-10]
 00478DB8    mov         dl,1
 00478DBA    mov         eax,[0041D3B0];EOutOfResources
 00478DBF    call        Exception.Create;EOutOfResources.Create
 00478DC4    call        @RaiseExcept
 00478DC9    xor         eax,eax
 00478DCB    pop         edx
 00478DCC    pop         ecx
 00478DCD    pop         ecx
 00478DCE    mov         dword ptr fs:[eax],edx
 00478DD1    push        478DE6
 00478DD6    lea         eax,[ebp-10]
 00478DD9    call        @LStrClr
 00478DDE    ret
>00478DDF    jmp         @HandleFinally
>00478DE4    jmp         00478DD6
 00478DE6    pop         ebx
 00478DE7    mov         esp,ebp
 00478DE9    pop         ebp
 00478DEA    ret
end;*}

//00478DEC
{*procedure sub_00478DEC(?:?);
begin
 00478DEC    push        ebp
 00478DED    mov         ebp,esp
 00478DEF    add         esp,0FFFFFFF8
 00478DF2    push        esi
 00478DF3    mov         dword ptr [ebp-8],edx
 00478DF6    mov         dword ptr [ebp-4],eax
 00478DF9    mov         edx,dword ptr [ebp-8]
 00478DFC    mov         eax,dword ptr [ebp-4]
 00478DFF    mov         eax,dword ptr [eax+10];TListBoxStrings.....................................................
 00478E02    mov         si,0FFAE
 00478E06    call        @CallDynaInst;TCustomListBox.sub_00479408
 00478E0B    pop         esi
 00478E0C    pop         ecx
 00478E0D    pop         ecx
 00478E0E    pop         ebp
 00478E0F    ret
end;*}

//00478E10
{*procedure sub_00478E10(?:?; ?:?);
begin
 00478E10    push        ebp
 00478E11    mov         ebp,esp
 00478E13    add         esp,0FFFFFFE8
 00478E16    push        ebx
 00478E17    push        esi
 00478E18    xor         ebx,ebx
 00478E1A    mov         dword ptr [ebp-18],ebx
 00478E1D    mov         dword ptr [ebp-14],ebx
 00478E20    mov         dword ptr [ebp-0C],ecx
 00478E23    mov         dword ptr [ebp-8],edx
 00478E26    mov         dword ptr [ebp-4],eax
 00478E29    xor         eax,eax
 00478E2B    push        ebp
 00478E2C    push        478F6D
 00478E31    push        dword ptr fs:[eax]
 00478E34    mov         dword ptr fs:[eax],esp
 00478E37    mov         eax,dword ptr [ebp-4]
 00478E3A    mov         eax,dword ptr [eax+10];TListBoxStrings.....................................................
 00478E3D    mov         al,byte ptr [eax+238];TCustomListBox.FStyle:TListBoxStyle
 00478E43    add         al,0FD
 00478E45    sub         al,2
>00478E47    jb          00478F52
 00478E4D    mov         eax,dword ptr [ebp-4]
 00478E50    call        TStrings.BeginUpdate
 00478E55    xor         eax,eax
 00478E57    push        ebp
 00478E58    push        478F4B
 00478E5D    push        dword ptr fs:[eax]
 00478E60    mov         dword ptr fs:[eax],esp
 00478E63    lea         ecx,[ebp-14]
 00478E66    mov         edx,dword ptr [ebp-8]
 00478E69    mov         eax,dword ptr [ebp-4]
 00478E6C    mov         ebx,dword ptr [eax]
 00478E6E    call        dword ptr [ebx+0C];TListBoxStrings.sub_00478A38
 00478E71    mov         eax,dword ptr [ebp-4]
 00478E74    mov         eax,dword ptr [eax+10];TListBoxStrings.....................................................
 00478E77    mov         edx,dword ptr [ebp-8]
 00478E7A    mov         si,0FFB3
 00478E7E    call        @CallDynaInst;TCustomListBox.sub_004793B8
 00478E83    mov         dword ptr [ebp-10],eax
 00478E86    lea         ecx,[ebp-18]
 00478E89    mov         edx,dword ptr [ebp-0C]
 00478E8C    mov         eax,dword ptr [ebp-4]
 00478E8F    mov         ebx,dword ptr [eax]
 00478E91    call        dword ptr [ebx+0C];TListBoxStrings.sub_00478A38
 00478E94    mov         ecx,dword ptr [ebp-18]
 00478E97    mov         edx,dword ptr [ebp-8]
 00478E9A    mov         eax,dword ptr [ebp-4]
 00478E9D    mov         ebx,dword ptr [eax]
 00478E9F    call        dword ptr [ebx+20];TListBoxStrings.sub_00478BCC
 00478EA2    mov         eax,dword ptr [ebp-4]
 00478EA5    mov         eax,dword ptr [eax+10];TListBoxStrings.....................................................
 00478EA8    mov         edx,dword ptr [ebp-0C]
 00478EAB    mov         si,0FFB3
 00478EAF    call        @CallDynaInst;TCustomListBox.sub_004793B8
 00478EB4    mov         ecx,eax
 00478EB6    mov         eax,dword ptr [ebp-4]
 00478EB9    mov         eax,dword ptr [eax+10];TListBoxStrings.....................................................
 00478EBC    mov         edx,dword ptr [ebp-8]
 00478EBF    mov         si,0FFB2
 00478EC3    call        @CallDynaInst;TCustomListBox.sub_004793E0
 00478EC8    mov         ecx,dword ptr [ebp-14]
 00478ECB    mov         edx,dword ptr [ebp-0C]
 00478ECE    mov         eax,dword ptr [ebp-4]
 00478ED1    mov         ebx,dword ptr [eax]
 00478ED3    call        dword ptr [ebx+20];TListBoxStrings.sub_00478BCC
 00478ED6    mov         eax,dword ptr [ebp-4]
 00478ED9    mov         eax,dword ptr [eax+10];TListBoxStrings.....................................................
 00478EDC    mov         ecx,dword ptr [ebp-10]
 00478EDF    mov         edx,dword ptr [ebp-0C]
 00478EE2    mov         si,0FFB2
 00478EE6    call        @CallDynaInst;TCustomListBox.sub_004793E0
 00478EEB    mov         eax,dword ptr [ebp-4]
 00478EEE    mov         eax,dword ptr [eax+10];TListBoxStrings.....................................................
 00478EF1    mov         edx,dword ptr [eax]
 00478EF3    call        dword ptr [edx+0CC];TCustomListBox.sub_00479780
 00478EF9    cmp         eax,dword ptr [ebp-8]
>00478EFC    jne         00478F11
 00478EFE    mov         eax,dword ptr [ebp-4]
 00478F01    mov         eax,dword ptr [eax+10];TListBoxStrings.....................................................
 00478F04    mov         edx,dword ptr [ebp-0C]
 00478F07    mov         ecx,dword ptr [eax]
 00478F09    call        dword ptr [ecx+0D0];TCustomListBox.sub_00479840
>00478F0F    jmp         00478F35
 00478F11    mov         eax,dword ptr [ebp-4]
 00478F14    mov         eax,dword ptr [eax+10];TListBoxStrings.....................................................
 00478F17    mov         edx,dword ptr [eax]
 00478F19    call        dword ptr [edx+0CC];TCustomListBox.sub_00479780
 00478F1F    cmp         eax,dword ptr [ebp-0C]
>00478F22    jne         00478F35
 00478F24    mov         eax,dword ptr [ebp-4]
 00478F27    mov         eax,dword ptr [eax+10];TListBoxStrings.....................................................
 00478F2A    mov         edx,dword ptr [ebp-8]
 00478F2D    mov         ecx,dword ptr [eax]
 00478F2F    call        dword ptr [ecx+0D0];TCustomListBox.sub_00479840
 00478F35    xor         eax,eax
 00478F37    pop         edx
 00478F38    pop         ecx
 00478F39    pop         ecx
 00478F3A    mov         dword ptr fs:[eax],edx
 00478F3D    push        478F52
 00478F42    mov         eax,dword ptr [ebp-4]
 00478F45    call        TStrings.EndUpdate
 00478F4A    ret
>00478F4B    jmp         @HandleFinally
>00478F50    jmp         00478F42
 00478F52    xor         eax,eax
 00478F54    pop         edx
 00478F55    pop         ecx
 00478F56    pop         ecx
 00478F57    mov         dword ptr fs:[eax],edx
 00478F5A    push        478F74
 00478F5F    lea         eax,[ebp-18]
 00478F62    mov         edx,2
 00478F67    call        @LStrArrayClr
 00478F6C    ret
>00478F6D    jmp         @HandleFinally
>00478F72    jmp         00478F5F
 00478F74    pop         esi
 00478F75    pop         ebx
 00478F76    mov         esp,ebp
 00478F78    pop         ebp
 00478F79    ret
end;*}

//00478F7C
procedure TListBoxStrings.Clear;
begin
{*
 00478F7C    push        ebp
 00478F7D    mov         ebp,esp
 00478F7F    push        ecx
 00478F80    push        esi
 00478F81    mov         dword ptr [ebp-4],eax
 00478F84    mov         eax,dword ptr [ebp-4]
 00478F87    mov         eax,dword ptr [eax+10];TListBoxStrings.....................................................
 00478F8A    mov         si,0FFAF
 00478F8E    call        @CallDynaInst;TCustomListBox.sub_00479434
 00478F93    pop         esi
 00478F94    pop         ecx
 00478F95    pop         ebp
 00478F96    ret
*}
end;

//00478F98
{*procedure sub_00478F98(?:?);
begin
 00478F98    push        ebp
 00478F99    mov         ebp,esp
 00478F9B    add         esp,0FFFFFFF8
 00478F9E    mov         byte ptr [ebp-5],dl
 00478FA1    mov         dword ptr [ebp-4],eax
 00478FA4    push        0
 00478FA6    mov         al,byte ptr [ebp-5]
 00478FA9    xor         al,1
 00478FAB    and         eax,7F
 00478FAE    push        eax
 00478FAF    push        0B
 00478FB1    mov         eax,dword ptr [ebp-4]
 00478FB4    mov         eax,dword ptr [eax+10];TListBoxStrings.....................................................
 00478FB7    call        TWinControl.GetHandle
 00478FBC    push        eax
 00478FBD    call        user32.SendMessageA
 00478FC2    cmp         byte ptr [ebp-5],0
>00478FC6    jne         00478FD3
 00478FC8    mov         eax,dword ptr [ebp-4]
 00478FCB    mov         eax,dword ptr [eax+10];TListBoxStrings.....................................................
 00478FCE    call        00484000
 00478FD3    pop         ecx
 00478FD4    pop         ecx
 00478FD5    pop         ebp
 00478FD6    ret
end;*}

//00478FD8
{*function sub_00478FD8(?:?):?;
begin
 00478FD8    push        ebp
 00478FD9    mov         ebp,esp
 00478FDB    add         esp,0FFFFFFF4
 00478FDE    mov         dword ptr [ebp-8],edx
 00478FE1    mov         dword ptr [ebp-4],eax
 00478FE4    mov         eax,dword ptr [ebp-4]
 00478FE7    mov         eax,dword ptr [eax+10];TListBoxStrings.....................................................
 00478FEA    mov         al,byte ptr [eax+238];TCustomListBox.FStyle:TListBoxStyle
 00478FF0    add         al,0FD
 00478FF2    sub         al,2
>00478FF4    jae         00479009
 00478FF6    mov         edx,dword ptr [ebp-8]
 00478FF9    mov         eax,dword ptr [ebp-4]
 00478FFC    mov         eax,dword ptr [eax+10];TListBoxStrings.....................................................
 00478FFF    call        0047AE34
 00479004    mov         dword ptr [ebp-0C],eax
>00479007    jmp         0047902D
 00479009    mov         eax,dword ptr [ebp-8]
 0047900C    call        @LStrToPChar
 00479011    push        eax
 00479012    push        0FF
 00479014    push        1A2
 00479019    mov         eax,dword ptr [ebp-4]
 0047901C    mov         eax,dword ptr [eax+10];TListBoxStrings.....................................................
 0047901F    call        TWinControl.GetHandle
 00479024    push        eax
 00479025    call        user32.SendMessageA
 0047902A    mov         dword ptr [ebp-0C],eax
 0047902D    mov         eax,dword ptr [ebp-0C]
 00479030    mov         esp,ebp
 00479032    pop         ebp
 00479033    ret
end;*}

//00479034
{*procedure sub_00479034(?:?; ?:?);
begin
 00479034    push        ebp
 00479035    mov         ebp,esp
 00479037    add         esp,0FFFFFFEC
 0047903A    push        ebx
 0047903B    push        esi
 0047903C    xor         ebx,ebx
 0047903E    mov         dword ptr [ebp-14],ebx
 00479041    mov         dword ptr [ebp-0C],ecx
 00479044    mov         dword ptr [ebp-8],edx
 00479047    mov         dword ptr [ebp-4],eax
 0047904A    xor         eax,eax
 0047904C    push        ebp
 0047904D    push        47913E
 00479052    push        dword ptr fs:[eax]
 00479055    mov         dword ptr fs:[eax],esp
 00479058    mov         eax,dword ptr [ebp-4]
 0047905B    mov         eax,dword ptr [eax+10];TListBoxStrings.....................................................
 0047905E    mov         al,byte ptr [eax+238];TCustomListBox.FStyle:TListBoxStyle
 00479064    add         al,0FD
 00479066    sub         al,2
>00479068    jb          00479128
 0047906E    mov         eax,dword ptr [ebp-4]
 00479071    call        TStrings.BeginUpdate
 00479076    mov         eax,dword ptr [ebp-4]
 00479079    mov         eax,dword ptr [eax+10];TListBoxStrings.....................................................
 0047907C    mov         byte ptr [eax+278],1;TCustomListBox.FMoving:Boolean
 00479083    xor         eax,eax
 00479085    push        ebp
 00479086    push        479121
 0047908B    push        dword ptr fs:[eax]
 0047908E    mov         dword ptr fs:[eax],esp
 00479091    mov         eax,dword ptr [ebp-8]
 00479094    cmp         eax,dword ptr [ebp-0C]
>00479097    je          004790FE
 00479099    lea         ecx,[ebp-14]
 0047909C    mov         edx,dword ptr [ebp-8]
 0047909F    mov         eax,dword ptr [ebp-4]
 004790A2    mov         ebx,dword ptr [eax]
 004790A4    call        dword ptr [ebx+0C];TListBoxStrings.sub_00478A38
 004790A7    mov         eax,dword ptr [ebp-4]
 004790AA    mov         eax,dword ptr [eax+10];TListBoxStrings.....................................................
 004790AD    mov         edx,dword ptr [ebp-8]
 004790B0    mov         si,0FFB3
 004790B4    call        @CallDynaInst;TCustomListBox.sub_004793B8
 004790B9    mov         dword ptr [ebp-10],eax
 004790BC    mov         eax,dword ptr [ebp-4]
 004790BF    mov         eax,dword ptr [eax+10];TListBoxStrings.....................................................
 004790C2    xor         ecx,ecx
 004790C4    mov         edx,dword ptr [ebp-8]
 004790C7    mov         si,0FFB2
 004790CB    call        @CallDynaInst;TCustomListBox.sub_004793E0
 004790D0    mov         edx,dword ptr [ebp-8]
 004790D3    mov         eax,dword ptr [ebp-4]
 004790D6    mov         ecx,dword ptr [eax]
 004790D8    call        dword ptr [ecx+48];TListBoxStrings.sub_00478DEC
 004790DB    mov         ecx,dword ptr [ebp-14]
 004790DE    mov         edx,dword ptr [ebp-0C]
 004790E1    mov         eax,dword ptr [ebp-4]
 004790E4    mov         ebx,dword ptr [eax]
 004790E6    call        dword ptr [ebx+60];TListBoxStrings.sub_00478D4C
 004790E9    mov         eax,dword ptr [ebp-4]
 004790EC    mov         eax,dword ptr [eax+10];TListBoxStrings.....................................................
 004790EF    mov         ecx,dword ptr [ebp-10]
 004790F2    mov         edx,dword ptr [ebp-0C]
 004790F5    mov         si,0FFB2
 004790F9    call        @CallDynaInst;TCustomListBox.sub_004793E0
 004790FE    xor         eax,eax
 00479100    pop         edx
 00479101    pop         ecx
 00479102    pop         ecx
 00479103    mov         dword ptr fs:[eax],edx
 00479106    push        479128
 0047910B    mov         eax,dword ptr [ebp-4]
 0047910E    mov         eax,dword ptr [eax+10];TListBoxStrings.....................................................
 00479111    mov         byte ptr [eax+278],0;TCustomListBox.FMoving:Boolean
 00479118    mov         eax,dword ptr [ebp-4]
 0047911B    call        TStrings.EndUpdate
 00479120    ret
>00479121    jmp         @HandleFinally
>00479126    jmp         0047910B
 00479128    xor         eax,eax
 0047912A    pop         edx
 0047912B    pop         ecx
 0047912C    pop         ecx
 0047912D    mov         dword ptr fs:[eax],edx
 00479130    push        479145
 00479135    lea         eax,[ebp-14]
 00479138    call        @LStrClr
 0047913D    ret
>0047913E    jmp         @HandleFinally
>00479143    jmp         00479135
 00479145    pop         esi
 00479146    pop         ebx
 00479147    mov         esp,ebp
 00479149    pop         ebp
 0047914A    ret
end;*}

//0047914C
constructor TListBox.Create;
begin
{*
 0047914C    push        ebp
 0047914D    mov         ebp,esp
 0047914F    add         esp,0FFFFFFF4
 00479152    test        dl,dl
>00479154    je          0047915E
 00479156    add         esp,0FFFFFFF0
 00479159    call        @ClassCreate
 0047915E    mov         dword ptr [ebp-0C],ecx
 00479161    mov         byte ptr [ebp-5],dl
 00479164    mov         dword ptr [ebp-4],eax
 00479167    mov         ecx,dword ptr [ebp-0C]
 0047916A    xor         edx,edx
 0047916C    mov         eax,dword ptr [ebp-4]
 0047916F    call        00486BAC
 00479174    mov         eax,[0056E264];^NewStyleControls:Boolean
 00479179    cmp         byte ptr [eax],0
>0047917C    je          0047918C
 0047917E    mov         eax,dword ptr [ebp-4]
 00479181    mov         edx,dword ptr ds:[479268];0xE0 gvar_00479268
 00479187    mov         dword ptr [eax+50],edx;TCustomListBox.FControlStyle:TControlStyle
>0047918A    jmp         00479198
 0047918C    mov         eax,dword ptr [ebp-4]
 0047918F    mov         edx,dword ptr ds:[47926C];0xF0 gvar_0047926C
 00479195    mov         dword ptr [eax+50],edx;TCustomListBox.FControlStyle:TControlStyle
 00479198    mov         edx,79
 0047919D    mov         eax,dword ptr [ebp-4]
 004791A0    call        TSplitter.SetWidth
 004791A5    mov         edx,61
 004791AA    mov         eax,dword ptr [ebp-4]
 004791AD    call        TToolButton.SetHeight
 004791B2    mov         dl,1
 004791B4    mov         eax,dword ptr [ebp-4]
 004791B7    call        TPanel.SetTabStop
 004791BC    xor         edx,edx
 004791BE    mov         eax,dword ptr [ebp-4]
 004791C1    call        TPanel.SetParentColor
 004791C6    mov         eax,dword ptr [ebp-4]
 004791C9    mov         byte ptr [eax+210],1;TCustomListBox.FAutoComplete:Boolean
 004791D0    mov         dl,1
 004791D2    mov         eax,[00472E40];TListBoxStrings
 004791D7    call        TObject.Create;TListBoxStrings.Create
 004791DC    mov         edx,dword ptr [ebp-4]
 004791DF    mov         dword ptr [edx+218],eax;TCustomListBox.FItems:TStrings
 004791E5    mov         eax,dword ptr [ebp-4]
 004791E8    mov         eax,dword ptr [eax+218];TCustomListBox.FItems:TStrings
 004791EE    mov         edx,dword ptr [ebp-4]
 004791F1    mov         dword ptr [eax+10],edx
 004791F4    mov         dl,1
 004791F6    mov         eax,[0047D3C4];TControlCanvas
 004791FB    call        TCanvas.Create;TControlCanvas.Create
 00479200    mov         edx,dword ptr [ebp-4]
 00479203    mov         dword ptr [edx+228],eax;TCustomListBox.FCanvas:TCanvas
 00479209    mov         eax,dword ptr [ebp-4]
 0047920C    mov         eax,dword ptr [eax+228];TCustomListBox.FCanvas:TCanvas
 00479212    mov         edx,dword ptr [ebp-4]
 00479215    call        00481B3C
 0047921A    mov         eax,dword ptr [ebp-4]
 0047921D    mov         dword ptr [eax+230],10;TCustomListBox.FItemHeight:Integer
 00479227    mov         eax,dword ptr [ebp-4]
 0047922A    mov         byte ptr [eax+224],1;TCustomListBox.FBorderStyle:TBorderStyle
 00479231    mov         eax,dword ptr [ebp-4]
 00479234    mov         byte ptr [eax+23B],1;TCustomListBox.FExtendedSelect:Boolean
 0047923B    mov         eax,dword ptr [ebp-4]
 0047923E    mov         dword ptr [eax+234],0FFFFFFFF;TCustomListBox.FOldCount:Integer
 00479248    mov         eax,dword ptr [ebp-4]
 0047924B    cmp         byte ptr [ebp-5],0
>0047924F    je          00479260
 00479251    call        @AfterConstruction
 00479256    pop         dword ptr fs:[0]
 0047925D    add         esp,0C
 00479260    mov         eax,dword ptr [ebp-4]
 00479263    mov         esp,ebp
 00479265    pop         ebp
 00479266    ret
*}
end;

//00479270
destructor TCustomListBox.Destroy;
begin
{*
 00479270    push        ebp
 00479271    mov         ebp,esp
 00479273    add         esp,0FFFFFFF8
 00479276    call        @BeforeDestruction
 0047927B    mov         byte ptr [ebp-5],dl
 0047927E    mov         dword ptr [ebp-4],eax
 00479281    mov         dl,byte ptr [ebp-5]
 00479284    and         dl,0FC
 00479287    mov         eax,dword ptr [ebp-4]
 0047928A    call        TWinControl.Destroy
 0047928F    mov         eax,dword ptr [ebp-4]
 00479292    mov         eax,dword ptr [eax+228]
 00479298    call        TObject.Free
 0047929D    mov         eax,dword ptr [ebp-4]
 004792A0    mov         eax,dword ptr [eax+218]
 004792A6    call        TObject.Free
 004792AB    mov         eax,dword ptr [ebp-4]
 004792AE    mov         eax,dword ptr [eax+240]
 004792B4    call        TObject.Free
 004792B9    cmp         byte ptr [ebp-5],0
>004792BD    jle         004792C7
 004792BF    mov         eax,dword ptr [ebp-4]
 004792C2    call        @ClassDestroy
 004792C7    pop         ecx
 004792C8    pop         ecx
 004792C9    pop         ebp
 004792CA    ret
*}
end;

//004792CC
{*procedure sub_004792CC(?:?; ?:?);
begin
 004792CC    push        ebp
 004792CD    mov         ebp,esp
 004792CF    add         esp,0FFFFFFF0
 004792D2    push        ebx
 004792D3    xor         ebx,ebx
 004792D5    mov         dword ptr [ebp-10],ebx
 004792D8    mov         dword ptr [ebp-0C],ecx
 004792DB    mov         dword ptr [ebp-8],edx
 004792DE    mov         dword ptr [ebp-4],eax
 004792E1    mov         eax,dword ptr [ebp-8]
 004792E4    call        @LStrAddRef
 004792E9    xor         eax,eax
 004792EB    push        ebp
 004792EC    push        47934A
 004792F1    push        dword ptr fs:[eax]
 004792F4    mov         dword ptr fs:[eax],esp
 004792F7    mov         eax,dword ptr [ebp-8]
 004792FA    call        @LStrToPChar
 004792FF    call        StrLen
 00479304    push        eax
 00479305    mov         eax,dword ptr [ebp-8]
 00479308    call        @LStrToPChar
 0047930D    mov         edx,eax
 0047930F    lea         eax,[ebp-10]
 00479312    pop         ecx
 00479313    call        @LStrFromPCharLen
 00479318    mov         ecx,dword ptr [ebp-0C]
 0047931B    mov         edx,dword ptr [ebp-10]
 0047931E    mov         eax,dword ptr [ebp-4]
 00479321    mov         eax,dword ptr [eax+218];TCustomListBox.FItems:TStrings
 00479327    mov         ebx,dword ptr [eax]
 00479329    call        dword ptr [ebx+3C];TStrings.sub_00421ABC
 0047932C    xor         eax,eax
 0047932E    pop         edx
 0047932F    pop         ecx
 00479330    pop         ecx
 00479331    mov         dword ptr fs:[eax],edx
 00479334    push        479351
 00479339    lea         eax,[ebp-10]
 0047933C    call        @LStrClr
 00479341    lea         eax,[ebp-8]
 00479344    call        @LStrClr
 00479349    ret
>0047934A    jmp         @HandleFinally
>0047934F    jmp         00479339
 00479351    pop         ebx
 00479352    mov         esp,ebp
 00479354    pop         ebp
 00479355    ret
end;*}

//00479358
{*procedure TCustomListBox.sub_00479358(?:?);
begin
 00479358    push        ebp
 00479359    mov         ebp,esp
 0047935B    add         esp,0FFFFFFF4
 0047935E    mov         dword ptr [ebp-8],edx
 00479361    mov         dword ptr [ebp-4],eax
 00479364    push        0
 00479366    mov         eax,dword ptr [ebp-8]
 00479369    push        eax
 0047936A    push        199
 0047936F    mov         eax,dword ptr [ebp-4]
 00479372    call        TWinControl.GetHandle
 00479377    push        eax
 00479378    call        user32.SendMessageA
 0047937D    mov         dword ptr [ebp-0C],eax
 00479380    mov         eax,dword ptr [ebp-0C]
 00479383    mov         esp,ebp
 00479385    pop         ebp
 00479386    ret
end;*}

//00479388
{*procedure TCustomListBox.sub_00479388(?:?; ?:TCheckListBoxDataWrapper);
begin
 00479388    push        ebp
 00479389    mov         ebp,esp
 0047938B    add         esp,0FFFFFFF4
 0047938E    mov         dword ptr [ebp-0C],ecx
 00479391    mov         dword ptr [ebp-8],edx
 00479394    mov         dword ptr [ebp-4],eax
 00479397    mov         eax,dword ptr [ebp-0C]
 0047939A    push        eax
 0047939B    mov         eax,dword ptr [ebp-8]
 0047939E    push        eax
 0047939F    push        19A
 004793A4    mov         eax,dword ptr [ebp-4]
 004793A7    call        TWinControl.GetHandle
 004793AC    push        eax
 004793AD    call        user32.SendMessageA
 004793B2    mov         esp,ebp
 004793B4    pop         ebp
 004793B5    ret
end;*}

//004793B8
{*procedure TCustomListBox.sub_004793B8(?:?);
begin
 004793B8    push        ebp
 004793B9    mov         ebp,esp
 004793BB    add         esp,0FFFFFFF4
 004793BE    push        esi
 004793BF    mov         dword ptr [ebp-8],edx
 004793C2    mov         dword ptr [ebp-4],eax
 004793C5    mov         edx,dword ptr [ebp-8]
 004793C8    mov         eax,dword ptr [ebp-4]
 004793CB    mov         si,0FFB1
 004793CF    call        @CallDynaInst;TCustomListBox.sub_00479358
 004793D4    mov         dword ptr [ebp-0C],eax
 004793D7    mov         eax,dword ptr [ebp-0C]
 004793DA    pop         esi
 004793DB    mov         esp,ebp
 004793DD    pop         ebp
 004793DE    ret
end;*}

//004793E0
{*procedure TCustomListBox.sub_004793E0(?:?; ?:?);
begin
 004793E0    push        ebp
 004793E1    mov         ebp,esp
 004793E3    add         esp,0FFFFFFF4
 004793E6    push        esi
 004793E7    mov         dword ptr [ebp-0C],ecx
 004793EA    mov         dword ptr [ebp-8],edx
 004793ED    mov         dword ptr [ebp-4],eax
 004793F0    mov         ecx,dword ptr [ebp-0C]
 004793F3    mov         edx,dword ptr [ebp-8]
 004793F6    mov         eax,dword ptr [ebp-4]
 004793F9    mov         si,0FFB0
 004793FD    call        @CallDynaInst;TCustomListBox.sub_00479388
 00479402    pop         esi
 00479403    mov         esp,ebp
 00479405    pop         ebp
 00479406    ret
end;*}

//00479408
{*procedure TCustomListBox.sub_00479408(?:?);
begin
 00479408    push        ebp
 00479409    mov         ebp,esp
 0047940B    add         esp,0FFFFFFF8
 0047940E    mov         dword ptr [ebp-8],edx
 00479411    mov         dword ptr [ebp-4],eax
 00479414    push        0
 00479416    mov         eax,dword ptr [ebp-8]
 00479419    push        eax
 0047941A    push        182
 0047941F    mov         eax,dword ptr [ebp-4]
 00479422    call        TWinControl.GetHandle
 00479427    push        eax
 00479428    call        user32.SendMessageA
 0047942D    pop         ecx
 0047942E    pop         ecx
 0047942F    pop         ebp
 00479430    ret
end;*}

//00479434
procedure TCustomListBox.sub_00479434;
begin
{*
 00479434    push        ebp
 00479435    mov         ebp,esp
 00479437    push        ecx
 00479438    mov         dword ptr [ebp-4],eax
 0047943B    mov         eax,dword ptr [ebp-4]
 0047943E    mov         al,byte ptr [eax+238];TCustomListBox.FStyle:TListBoxStyle
 00479444    add         al,0FD
 00479446    sub         al,2
>00479448    jb          00479461
 0047944A    push        0
 0047944C    push        0
 0047944E    push        184
 00479453    mov         eax,dword ptr [ebp-4]
 00479456    call        TWinControl.GetHandle
 0047945B    push        eax
 0047945C    call        user32.SendMessageA
 00479461    pop         ecx
 00479462    pop         ebp
 00479463    ret
*}
end;

//00479464
procedure TCustomListBox.Clear;
begin
{*
 00479464    push        ebp
 00479465    mov         ebp,esp
 00479467    push        ecx
 00479468    mov         dword ptr [ebp-4],eax
 0047946B    mov         eax,dword ptr [ebp-4]
 0047946E    mov         eax,dword ptr [eax+218];TCustomListBox.FItems:TStrings
 00479474    mov         edx,dword ptr [eax]
 00479476    call        dword ptr [edx+44];TStrings.Clear
 00479479    pop         ecx
 0047947A    pop         ebp
 0047947B    ret
*}
end;

//0047947C
procedure sub_0047947C;
begin
{*
 0047947C    push        ebp
 0047947D    mov         ebp,esp
 0047947F    add         esp,0FFFFFFF4
 00479482    mov         dword ptr [ebp-4],eax
 00479485    mov         eax,dword ptr [ebp-4]
 00479488    cmp         byte ptr [eax+208],0;TCustomListBox..............FMultiSelect:Boolean
>0047948F    je          004794C6
 00479491    mov         eax,dword ptr [ebp-4]
 00479494    mov         eax,dword ptr [eax+218];TCustomListBox.FItems:TStrings
 0047949A    mov         edx,dword ptr [eax]
 0047949C    call        dword ptr [edx+14];@AbstractError
 0047949F    dec         eax
 004794A0    test        eax,eax
>004794A2    jl          004794D4
 004794A4    inc         eax
 004794A5    mov         dword ptr [ebp-0C],eax
 004794A8    mov         dword ptr [ebp-8],0
 004794AF    xor         ecx,ecx
 004794B1    mov         edx,dword ptr [ebp-8]
 004794B4    mov         eax,dword ptr [ebp-4]
 004794B7    call        00479A78
 004794BC    inc         dword ptr [ebp-8]
 004794BF    dec         dword ptr [ebp-0C]
>004794C2    jne         004794AF
>004794C4    jmp         004794D4
 004794C6    or          edx,0FFFFFFFF
 004794C9    mov         eax,dword ptr [ebp-4]
 004794CC    mov         ecx,dword ptr [eax]
 004794CE    call        dword ptr [ecx+0D0];TCustomListBox.sub_00479840
 004794D4    mov         esp,ebp
 004794D6    pop         ebp
 004794D7    ret
*}
end;

//004794D8
{*procedure sub_004794D8(?:?);
begin
 004794D8    push        ebp
 004794D9    mov         ebp,esp
 004794DB    add         esp,0FFFFFFE0
 004794DE    push        ebx
 004794DF    xor         ecx,ecx
 004794E1    mov         dword ptr [ebp-1C],ecx
 004794E4    mov         dword ptr [ebp-20],ecx
 004794E7    mov         dword ptr [ebp-14],ecx
 004794EA    mov         dword ptr [ebp-18],ecx
 004794ED    mov         dword ptr [ebp-8],edx
 004794F0    mov         dword ptr [ebp-4],eax
 004794F3    xor         eax,eax
 004794F5    push        ebp
 004794F6    push        47961B
 004794FB    push        dword ptr fs:[eax]
 004794FE    mov         dword ptr fs:[eax],esp
 00479501    mov         eax,dword ptr [ebp-4]
 00479504    cmp         byte ptr [eax+208],0;TCustomListBox...............FMultiSelect:Boolean
>0047950B    je          00479595
 00479511    mov         eax,dword ptr [ebp-4]
 00479514    mov         eax,dword ptr [eax+218];TCustomListBox.FItems:TStrings
 0047951A    mov         edx,dword ptr [eax]
 0047951C    call        dword ptr [edx+14];@AbstractError
 0047951F    dec         eax
 00479520    test        eax,eax
>00479522    jl          00479600
 00479528    inc         eax
 00479529    mov         dword ptr [ebp-10],eax
 0047952C    mov         dword ptr [ebp-0C],0
 00479533    mov         edx,dword ptr [ebp-0C]
 00479536    mov         eax,dword ptr [ebp-4]
 00479539    call        00479A10
 0047953E    test        al,al
>00479540    je          0047958B
 00479542    lea         ecx,[ebp-18]
 00479545    mov         edx,dword ptr [ebp-0C]
 00479548    mov         eax,dword ptr [ebp-4]
 0047954B    mov         eax,dword ptr [eax+218];TCustomListBox.FItems:TStrings
 00479551    mov         ebx,dword ptr [eax]
 00479553    call        dword ptr [ebx+0C];@AbstractError
 00479556    mov         eax,dword ptr [ebp-18]
 00479559    call        @LStrToPChar
 0047955E    mov         edx,eax
 00479560    lea         eax,[ebp-14]
 00479563    call        @LStrFromPChar
 00479568    mov         eax,dword ptr [ebp-14]
 0047956B    push        eax
 0047956C    mov         edx,dword ptr [ebp-0C]
 0047956F    mov         eax,dword ptr [ebp-4]
 00479572    mov         eax,dword ptr [eax+218];TCustomListBox.FItems:TStrings
 00479578    mov         ecx,dword ptr [eax]
 0047957A    call        dword ptr [ecx+18];TStrings.sub_004220A0
 0047957D    mov         ecx,eax
 0047957F    mov         eax,dword ptr [ebp-8]
 00479582    pop         edx
 00479583    mov         ebx,dword ptr [eax]
 00479585    call        dword ptr [ebx+0D4]
 0047958B    inc         dword ptr [ebp-0C]
 0047958E    dec         dword ptr [ebp-10]
>00479591    jne         00479533
>00479593    jmp         00479600
 00479595    mov         eax,dword ptr [ebp-4]
 00479598    mov         edx,dword ptr [eax]
 0047959A    call        dword ptr [edx+0CC];TCustomListBox.sub_00479780
 004795A0    inc         eax
>004795A1    je          00479600
 004795A3    mov         eax,dword ptr [ebp-4]
 004795A6    mov         edx,dword ptr [eax]
 004795A8    call        dword ptr [edx+0CC];TCustomListBox.sub_00479780
 004795AE    mov         edx,eax
 004795B0    lea         ecx,[ebp-20]
 004795B3    mov         eax,dword ptr [ebp-4]
 004795B6    mov         eax,dword ptr [eax+218];TCustomListBox.FItems:TStrings
 004795BC    mov         ebx,dword ptr [eax]
 004795BE    call        dword ptr [ebx+0C];@AbstractError
 004795C1    mov         eax,dword ptr [ebp-20]
 004795C4    call        @LStrToPChar
 004795C9    mov         edx,eax
 004795CB    lea         eax,[ebp-1C]
 004795CE    call        @LStrFromPChar
 004795D3    mov         eax,dword ptr [ebp-1C]
 004795D6    push        eax
 004795D7    mov         eax,dword ptr [ebp-4]
 004795DA    mov         edx,dword ptr [eax]
 004795DC    call        dword ptr [edx+0CC];TCustomListBox.sub_00479780
 004795E2    mov         edx,eax
 004795E4    mov         eax,dword ptr [ebp-4]
 004795E7    mov         eax,dword ptr [eax+218];TCustomListBox.FItems:TStrings
 004795ED    mov         ecx,dword ptr [eax]
 004795EF    call        dword ptr [ecx+18];TStrings.sub_004220A0
 004795F2    mov         ecx,eax
 004795F4    mov         eax,dword ptr [ebp-8]
 004795F7    pop         edx
 004795F8    mov         ebx,dword ptr [eax]
 004795FA    call        dword ptr [ebx+0D4]
 00479600    xor         eax,eax
 00479602    pop         edx
 00479603    pop         ecx
 00479604    pop         ecx
 00479605    mov         dword ptr fs:[eax],edx
 00479608    push        479622
 0047960D    lea         eax,[ebp-20]
 00479610    mov         edx,4
 00479615    call        @LStrArrayClr
 0047961A    ret
>0047961B    jmp         @HandleFinally
>00479620    jmp         0047960D
 00479622    pop         ebx
 00479623    mov         esp,ebp
 00479625    pop         ebp
 00479626    ret
end;*}

//00479628
procedure sub_00479628;
begin
{*
 00479628    push        ebp
 00479629    mov         ebp,esp
 0047962B    add         esp,0FFFFFFF8
 0047962E    mov         dword ptr [ebp-4],eax
 00479631    mov         eax,dword ptr [ebp-4]
 00479634    cmp         byte ptr [eax+208],0;TCustomListBox................FMultiSelect:Boolean
>0047963B    je          0047967F
 0047963D    mov         eax,dword ptr [ebp-4]
 00479640    mov         eax,dword ptr [eax+218];TCustomListBox.FItems:TStrings
 00479646    mov         edx,dword ptr [eax]
 00479648    call        dword ptr [edx+14];@AbstractError
 0047964B    dec         eax
 0047964C    cmp         eax,0
>0047964F    jl          004796A8
 00479651    mov         dword ptr [ebp-8],eax
 00479654    mov         edx,dword ptr [ebp-8]
 00479657    mov         eax,dword ptr [ebp-4]
 0047965A    call        00479A10
 0047965F    test        al,al
>00479661    je          00479674
 00479663    mov         edx,dword ptr [ebp-8]
 00479666    mov         eax,dword ptr [ebp-4]
 00479669    mov         eax,dword ptr [eax+218];TCustomListBox.FItems:TStrings
 0047966F    mov         ecx,dword ptr [eax]
 00479671    call        dword ptr [ecx+48];@AbstractError
 00479674    dec         dword ptr [ebp-8]
 00479677    cmp         dword ptr [ebp-8],0FFFFFFFF
>0047967B    jne         00479654
>0047967D    jmp         004796A8
 0047967F    mov         eax,dword ptr [ebp-4]
 00479682    mov         edx,dword ptr [eax]
 00479684    call        dword ptr [edx+0CC];TCustomListBox.sub_00479780
 0047968A    inc         eax
>0047968B    je          004796A8
 0047968D    mov         eax,dword ptr [ebp-4]
 00479690    mov         edx,dword ptr [eax]
 00479692    call        dword ptr [edx+0CC];TCustomListBox.sub_00479780
 00479698    mov         edx,eax
 0047969A    mov         eax,dword ptr [ebp-4]
 0047969D    mov         eax,dword ptr [eax+218];TCustomListBox.FItems:TStrings
 004796A3    mov         ecx,dword ptr [eax]
 004796A5    call        dword ptr [ecx+48];@AbstractError
 004796A8    pop         ecx
 004796A9    pop         ecx
 004796AA    pop         ebp
 004796AB    ret
*}
end;

//004796AC
procedure sub_004796AC(?:TCustomListBox);
begin
{*
 004796AC    push        ebp
 004796AD    mov         ebp,esp
 004796AF    add         esp,0FFFFFFF4
 004796B2    mov         dword ptr [ebp-4],eax
 004796B5    mov         eax,dword ptr [ebp-4]
 004796B8    cmp         dword ptr [eax+22C],0
>004796BF    jle         00479711
 004796C1    mov         eax,dword ptr [ebp-4]
 004796C4    cmp         dword ptr [eax+48],0
>004796C8    jle         00479711
 004796CA    mov         eax,dword ptr [ebp-4]
 004796CD    call        TControl.GetClientWidth
 004796D2    mov         dword ptr [ebp-0C],eax
 004796D5    fild        dword ptr [ebp-0C]
 004796D8    mov         eax,dword ptr [ebp-4]
 004796DB    fild        dword ptr [eax+22C]
 004796E1    fdivp       st(1),st
 004796E3    call        @TRUNC
 004796E8    mov         dword ptr [ebp-8],eax
 004796EB    cmp         dword ptr [ebp-8],1
>004796EF    jge         004796F8
 004796F1    mov         dword ptr [ebp-8],1
 004796F8    push        0
 004796FA    mov         eax,dword ptr [ebp-8]
 004796FD    push        eax
 004796FE    push        195
 00479703    mov         eax,dword ptr [ebp-4]
 00479706    call        TWinControl.GetHandle
 0047970B    push        eax
 0047970C    call        user32.SendMessageA
 00479711    mov         esp,ebp
 00479713    pop         ebp
 00479714    ret
*}
end;

//00479718
procedure TListBox.SetColumns(Value:Integer);
begin
{*
 00479718    push        ebp
 00479719    mov         ebp,esp
 0047971B    add         esp,0FFFFFFF8
 0047971E    mov         dword ptr [ebp-8],edx
 00479721    mov         dword ptr [ebp-4],eax
 00479724    mov         eax,dword ptr [ebp-4]
 00479727    mov         eax,dword ptr [eax+22C];TListBox.FColumns:Integer
 0047972D    cmp         eax,dword ptr [ebp-8]
>00479730    je          0047977A
 00479732    mov         eax,dword ptr [ebp-4]
 00479735    cmp         dword ptr [eax+22C],0;TListBox.FColumns:Integer
>0047973C    je          00479744
 0047973E    cmp         dword ptr [ebp-8],0
>00479742    jne         0047975A
 00479744    mov         eax,dword ptr [ebp-8]
 00479747    mov         edx,dword ptr [ebp-4]
 0047974A    mov         dword ptr [edx+22C],eax;TListBox.FColumns:Integer
 00479750    mov         eax,dword ptr [ebp-4]
 00479753    call        TWinControl.RecreateWnd
>00479758    jmp         0047977A
 0047975A    mov         eax,dword ptr [ebp-8]
 0047975D    mov         edx,dword ptr [ebp-4]
 00479760    mov         dword ptr [edx+22C],eax;TListBox.FColumns:Integer
 00479766    mov         eax,dword ptr [ebp-4]
 00479769    call        TWinControl.HandleAllocated
 0047976E    test        al,al
>00479770    je          0047977A
 00479772    mov         eax,dword ptr [ebp-4]
 00479775    call        004796AC
 0047977A    pop         ecx
 0047977B    pop         ecx
 0047977C    pop         ebp
 0047977D    ret
*}
end;

//00479780
{*function sub_00479780:?;
begin
 00479780    push        ebp
 00479781    mov         ebp,esp
 00479783    add         esp,0FFFFFFF8
 00479786    mov         dword ptr [ebp-4],eax
 00479789    mov         eax,dword ptr [ebp-4]
 0047978C    cmp         byte ptr [eax+208],0;TCustomListBox.................FMultiSelect:Boolean
>00479793    je          004797B1
 00479795    push        0
 00479797    push        0
 00479799    push        19F
 0047979E    mov         eax,dword ptr [ebp-4]
 004797A1    call        TWinControl.GetHandle
 004797A6    push        eax
 004797A7    call        user32.SendMessageA
 004797AC    mov         dword ptr [ebp-8],eax
>004797AF    jmp         004797CB
 004797B1    push        0
 004797B3    push        0
 004797B5    push        188
 004797BA    mov         eax,dword ptr [ebp-4]
 004797BD    call        TWinControl.GetHandle
 004797C2    push        eax
 004797C3    call        user32.SendMessageA
 004797C8    mov         dword ptr [ebp-8],eax
 004797CB    mov         eax,dword ptr [ebp-8]
 004797CE    pop         ecx
 004797CF    pop         ecx
 004797D0    pop         ebp
 004797D1    ret
end;*}

//004797D4
{*function sub_004797D4:?;
begin
 004797D4    push        ebp
 004797D5    mov         ebp,esp
 004797D7    add         esp,0FFFFFFF8
 004797DA    mov         dword ptr [ebp-4],eax
 004797DD    mov         eax,dword ptr [ebp-4]
 004797E0    mov         al,byte ptr [eax+238];TCustomListBox.FStyle:TListBoxStyle
 004797E6    add         al,0FD
 004797E8    sub         al,2
>004797EA    jae         004797FA
 004797EC    mov         eax,dword ptr [ebp-4]
 004797EF    mov         eax,dword ptr [eax+214];TCustomListBox.FCount:Integer
 004797F5    mov         dword ptr [ebp-8],eax
>004797F8    jmp         0047980B
 004797FA    mov         eax,dword ptr [ebp-4]
 004797FD    mov         eax,dword ptr [eax+218];TCustomListBox.FItems:TStrings
 00479803    mov         edx,dword ptr [eax]
 00479805    call        dword ptr [edx+14];@AbstractError
 00479808    mov         dword ptr [ebp-8],eax
 0047980B    mov         eax,dword ptr [ebp-8]
 0047980E    pop         ecx
 0047980F    pop         ecx
 00479810    pop         ebp
 00479811    ret
end;*}

//00479814
{*function sub_00479814:?;
begin
 00479814    push        ebp
 00479815    mov         ebp,esp
 00479817    add         esp,0FFFFFFF8
 0047981A    mov         dword ptr [ebp-4],eax
 0047981D    push        0
 0047981F    push        0
 00479821    push        190
 00479826    mov         eax,dword ptr [ebp-4]
 00479829    call        TWinControl.GetHandle
 0047982E    push        eax
 0047982F    call        user32.SendMessageA
 00479834    mov         dword ptr [ebp-8],eax
 00479837    mov         eax,dword ptr [ebp-8]
 0047983A    pop         ecx
 0047983B    pop         ecx
 0047983C    pop         ebp
 0047983D    ret
end;*}

//00479840
{*procedure sub_00479840(?:?);
begin
 00479840    push        ebp
 00479841    mov         ebp,esp
 00479843    add         esp,0FFFFFFF8
 00479846    mov         dword ptr [ebp-8],edx
 00479849    mov         dword ptr [ebp-4],eax
 0047984C    mov         eax,dword ptr [ebp-4]
 0047984F    mov         edx,dword ptr [eax]
 00479851    call        dword ptr [edx+0CC];TCustomListBox.sub_00479780
 00479857    cmp         eax,dword ptr [ebp-8]
>0047985A    je          0047989C
 0047985C    mov         eax,dword ptr [ebp-4]
 0047985F    cmp         byte ptr [eax+208],0;TCustomListBox..................FMultiSelect:Boolean
>00479866    je          00479883
 00479868    push        0
 0047986A    mov         eax,dword ptr [ebp-8]
 0047986D    push        eax
 0047986E    push        19E
 00479873    mov         eax,dword ptr [ebp-4]
 00479876    call        TWinControl.GetHandle
 0047987B    push        eax
 0047987C    call        user32.SendMessageA
>00479881    jmp         0047989C
 00479883    push        0
 00479885    mov         eax,dword ptr [ebp-8]
 00479888    push        eax
 00479889    push        186
 0047988E    mov         eax,dword ptr [ebp-4]
 00479891    call        TWinControl.GetHandle
 00479896    push        eax
 00479897    call        user32.SendMessageA
 0047989C    pop         ecx
 0047989D    pop         ecx
 0047989E    pop         ebp
 0047989F    ret
end;*}

//004798A0
procedure TListBox.SetExtendedSelect(Value:Boolean);
begin
{*
 004798A0    push        ebp
 004798A1    mov         ebp,esp
 004798A3    add         esp,0FFFFFFF8
 004798A6    mov         byte ptr [ebp-5],dl
 004798A9    mov         dword ptr [ebp-4],eax
 004798AC    mov         al,byte ptr [ebp-5]
 004798AF    mov         edx,dword ptr [ebp-4]
 004798B2    cmp         al,byte ptr [edx+23B];TListBox.FExtendedSelect:Boolean
>004798B8    je          004798CE
 004798BA    mov         al,byte ptr [ebp-5]
 004798BD    mov         edx,dword ptr [ebp-4]
 004798C0    mov         byte ptr [edx+23B],al;TListBox.FExtendedSelect:Boolean
 004798C6    mov         eax,dword ptr [ebp-4]
 004798C9    call        TWinControl.RecreateWnd
 004798CE    pop         ecx
 004798CF    pop         ecx
 004798D0    pop         ebp
 004798D1    ret
*}
end;

//004798D4
procedure TListBox.SetIntegralHeight(Value:Boolean);
begin
{*
 004798D4    push        ebp
 004798D5    mov         ebp,esp
 004798D7    add         esp,0FFFFFFF8
 004798DA    push        esi
 004798DB    mov         byte ptr [ebp-5],dl
 004798DE    mov         dword ptr [ebp-4],eax
 004798E1    mov         al,byte ptr [ebp-5]
 004798E4    mov         edx,dword ptr [ebp-4]
 004798E7    cmp         al,byte ptr [edx+239];TListBox.FIntegralHeight:Boolean
>004798ED    je          0047990F
 004798EF    mov         al,byte ptr [ebp-5]
 004798F2    mov         edx,dword ptr [ebp-4]
 004798F5    mov         byte ptr [edx+239],al;TListBox.FIntegralHeight:Boolean
 004798FB    mov         eax,dword ptr [ebp-4]
 004798FE    call        TWinControl.RecreateWnd
 00479903    mov         eax,dword ptr [ebp-4]
 00479906    mov         si,0FFD0
 0047990A    call        @CallDynaInst;TControl.sub_004826F8
 0047990F    pop         esi
 00479910    pop         ecx
 00479911    pop         ecx
 00479912    pop         ebp
 00479913    ret
*}
end;

//00479914
{*function TListBox.GetItemHeight:?;
begin
 00479914    push        ebp
 00479915    mov         ebp,esp
 00479917    add         esp,0FFFFFFE8
 0047991A    mov         dword ptr [ebp-4],eax
 0047991D    mov         eax,dword ptr [ebp-4]
 00479920    mov         eax,dword ptr [eax+230];TListBox.FItemHeight:Integer
 00479926    mov         dword ptr [ebp-8],eax
 00479929    mov         eax,dword ptr [ebp-4]
 0047992C    call        TWinControl.HandleAllocated
 00479931    test        al,al
>00479933    je          0047995D
 00479935    mov         eax,dword ptr [ebp-4]
 00479938    cmp         byte ptr [eax+238],0;TListBox.FStyle:TListBoxStyle
>0047993F    jne         0047995D
 00479941    lea         eax,[ebp-18]
 00479944    push        eax
 00479945    xor         ecx,ecx
 00479947    mov         edx,198
 0047994C    mov         eax,dword ptr [ebp-4]
 0047994F    call        00484FFC
 00479954    mov         eax,dword ptr [ebp-0C]
 00479957    sub         eax,dword ptr [ebp-14]
 0047995A    mov         dword ptr [ebp-8],eax
 0047995D    mov         eax,dword ptr [ebp-8]
 00479960    mov         esp,ebp
 00479962    pop         ebp
 00479963    ret
end;*}

//00479964
procedure TListBox.SetItemHeight(Value:Integer);
begin
{*
 00479964    push        ebp
 00479965    mov         ebp,esp
 00479967    add         esp,0FFFFFFF8
 0047996A    mov         dword ptr [ebp-8],edx
 0047996D    mov         dword ptr [ebp-4],eax
 00479970    mov         eax,dword ptr [ebp-4]
 00479973    mov         eax,dword ptr [eax+230];TListBox.FItemHeight:Integer
 00479979    cmp         eax,dword ptr [ebp-8]
>0047997C    je          00479998
 0047997E    cmp         dword ptr [ebp-8],0
>00479982    jle         00479998
 00479984    mov         eax,dword ptr [ebp-8]
 00479987    mov         edx,dword ptr [ebp-4]
 0047998A    mov         dword ptr [edx+230],eax;TListBox.FItemHeight:Integer
 00479990    mov         eax,dword ptr [ebp-4]
 00479993    call        TWinControl.RecreateWnd
 00479998    pop         ecx
 00479999    pop         ecx
 0047999A    pop         ebp
 0047999B    ret
*}
end;

//0047999C
procedure TListBox.SetTabWidth(Value:Integer);
begin
{*
 0047999C    push        ebp
 0047999D    mov         ebp,esp
 0047999F    add         esp,0FFFFFFF8
 004799A2    mov         dword ptr [ebp-8],edx
 004799A5    mov         dword ptr [ebp-4],eax
 004799A8    cmp         dword ptr [ebp-8],0
>004799AC    jge         004799B3
 004799AE    xor         eax,eax
 004799B0    mov         dword ptr [ebp-8],eax
 004799B3    mov         eax,dword ptr [ebp-4]
 004799B6    mov         eax,dword ptr [eax+23C];TListBox.FTabWidth:Integer
 004799BC    cmp         eax,dword ptr [ebp-8]
>004799BF    je          004799D5
 004799C1    mov         eax,dword ptr [ebp-8]
 004799C4    mov         edx,dword ptr [ebp-4]
 004799C7    mov         dword ptr [edx+23C],eax;TListBox.FTabWidth:Integer
 004799CD    mov         eax,dword ptr [ebp-4]
 004799D0    call        TWinControl.RecreateWnd
 004799D5    pop         ecx
 004799D6    pop         ecx
 004799D7    pop         ebp
 004799D8    ret
*}
end;

//004799DC
procedure TListBox.SetMultiSelect(Value:Boolean);
begin
{*
 004799DC    push        ebp
 004799DD    mov         ebp,esp
 004799DF    add         esp,0FFFFFFF8
 004799E2    mov         byte ptr [ebp-5],dl
 004799E5    mov         dword ptr [ebp-4],eax
 004799E8    mov         eax,dword ptr [ebp-4]
 004799EB    mov         al,byte ptr [eax+208];TListBox...................FMultiSelect:Boolean
 004799F1    cmp         al,byte ptr [ebp-5]
>004799F4    je          00479A0A
 004799F6    mov         al,byte ptr [ebp-5]
 004799F9    mov         edx,dword ptr [ebp-4]
 004799FC    mov         byte ptr [edx+208],al;TListBox....................FMultiSelect:Boolean
 00479A02    mov         eax,dword ptr [ebp-4]
 00479A05    call        TWinControl.RecreateWnd
 00479A0A    pop         ecx
 00479A0B    pop         ecx
 00479A0C    pop         ebp
 00479A0D    ret
*}
end;

//00479A10
{*function sub_00479A10(?:TCustomListBox; ?:?):?;
begin
 00479A10    push        ebp
 00479A11    mov         ebp,esp
 00479A13    add         esp,0FFFFFFE8
 00479A16    mov         dword ptr [ebp-8],edx
 00479A19    mov         dword ptr [ebp-4],eax
 00479A1C    push        0
 00479A1E    mov         eax,dword ptr [ebp-8]
 00479A21    push        eax
 00479A22    push        187
 00479A27    mov         eax,dword ptr [ebp-4]
 00479A2A    call        TWinControl.GetHandle
 00479A2F    push        eax
 00479A30    call        user32.SendMessageA
 00479A35    mov         dword ptr [ebp-10],eax
 00479A38    cmp         dword ptr [ebp-10],0FFFFFFFF
>00479A3C    jne         00479A65
 00479A3E    mov         eax,dword ptr [ebp-8]
 00479A41    mov         dword ptr [ebp-18],eax
 00479A44    mov         byte ptr [ebp-14],0
 00479A48    lea         eax,[ebp-18]
 00479A4B    push        eax
 00479A4C    push        0
 00479A4E    mov         ecx,dword ptr ds:[56E4A8];^SListIndexError:TResStringRec
 00479A54    mov         dl,1
 00479A56    mov         eax,[0041D244];EListError
 00479A5B    call        Exception.CreateResFmt;EListError.Create
 00479A60    call        @RaiseExcept
 00479A65    cmp         dword ptr [ebp-10],1
 00479A69    sbb         eax,eax
 00479A6B    inc         eax
 00479A6C    mov         byte ptr [ebp-9],al
 00479A6F    mov         al,byte ptr [ebp-9]
 00479A72    mov         esp,ebp
 00479A74    pop         ebp
 00479A75    ret
end;*}

//00479A78
{*procedure sub_00479A78(?:TCustomListBox; ?:?; ?:?);
begin
 00479A78    push        ebp
 00479A79    mov         ebp,esp
 00479A7B    add         esp,0FFFFFFEC
 00479A7E    mov         byte ptr [ebp-9],cl
 00479A81    mov         dword ptr [ebp-8],edx
 00479A84    mov         dword ptr [ebp-4],eax
 00479A87    mov         eax,dword ptr [ebp-4]
 00479A8A    cmp         byte ptr [eax+208],0;TCustomListBox.....................FMultiSelect:Boolean
>00479A91    je          00479AE0
 00479A93    mov         eax,dword ptr [ebp-8]
 00479A96    push        eax
 00479A97    xor         eax,eax
 00479A99    mov         al,byte ptr [ebp-9]
 00479A9C    push        eax
 00479A9D    push        185
 00479AA2    mov         eax,dword ptr [ebp-4]
 00479AA5    call        TWinControl.GetHandle
 00479AAA    push        eax
 00479AAB    call        user32.SendMessageA
 00479AB0    inc         eax
>00479AB1    jne         00479B42
 00479AB7    mov         eax,dword ptr [ebp-8]
 00479ABA    mov         dword ptr [ebp-14],eax
 00479ABD    mov         byte ptr [ebp-10],0
 00479AC1    lea         eax,[ebp-14]
 00479AC4    push        eax
 00479AC5    push        0
 00479AC7    mov         ecx,dword ptr ds:[56E4A8];^SListIndexError:TResStringRec
 00479ACD    mov         dl,1
 00479ACF    mov         eax,[0041D244];EListError
 00479AD4    call        Exception.CreateResFmt;EListError.Create
 00479AD9    call        @RaiseExcept
>00479ADE    jmp         00479B42
 00479AE0    cmp         byte ptr [ebp-9],0
>00479AE4    je          00479B2B
 00479AE6    push        0
 00479AE8    mov         eax,dword ptr [ebp-8]
 00479AEB    push        eax
 00479AEC    push        186
 00479AF1    mov         eax,dword ptr [ebp-4]
 00479AF4    call        TWinControl.GetHandle
 00479AF9    push        eax
 00479AFA    call        user32.SendMessageA
 00479AFF    inc         eax
>00479B00    jne         00479B42
 00479B02    mov         eax,dword ptr [ebp-8]
 00479B05    mov         dword ptr [ebp-14],eax
 00479B08    mov         byte ptr [ebp-10],0
 00479B0C    lea         eax,[ebp-14]
 00479B0F    push        eax
 00479B10    push        0
 00479B12    mov         ecx,dword ptr ds:[56E4A8];^SListIndexError:TResStringRec
 00479B18    mov         dl,1
 00479B1A    mov         eax,[0041D244];EListError
 00479B1F    call        Exception.CreateResFmt;EListError.Create
 00479B24    call        @RaiseExcept
>00479B29    jmp         00479B42
 00479B2B    push        0
 00479B2D    push        0FF
 00479B2F    push        186
 00479B34    mov         eax,dword ptr [ebp-4]
 00479B37    call        TWinControl.GetHandle
 00479B3C    push        eax
 00479B3D    call        user32.SendMessageA
 00479B42    mov         esp,ebp
 00479B44    pop         ebp
 00479B45    ret
end;*}

//00479B48
procedure TListBox.SetSorted(Value:Boolean);
begin
{*
 00479B48    push        ebp
 00479B49    mov         ebp,esp
 00479B4B    add         esp,0FFFFFFF8
 00479B4E    mov         byte ptr [ebp-5],dl
 00479B51    mov         dword ptr [ebp-4],eax
 00479B54    mov         eax,dword ptr [ebp-4]
 00479B57    mov         al,byte ptr [eax+238];TListBox.FStyle:TListBoxStyle
 00479B5D    add         al,0FD
 00479B5F    sub         al,2
>00479B61    jb          00479B85
 00479B63    mov         eax,dword ptr [ebp-4]
 00479B66    mov         al,byte ptr [eax+23A];TListBox.FSorted:Boolean
 00479B6C    cmp         al,byte ptr [ebp-5]
>00479B6F    je          00479B85
 00479B71    mov         al,byte ptr [ebp-5]
 00479B74    mov         edx,dword ptr [ebp-4]
 00479B77    mov         byte ptr [edx+23A],al;TListBox.FSorted:Boolean
 00479B7D    mov         eax,dword ptr [ebp-4]
 00479B80    call        TWinControl.RecreateWnd
 00479B85    pop         ecx
 00479B86    pop         ecx
 00479B87    pop         ebp
 00479B88    ret
*}
end;

//00479B8C
procedure TListBox.SetStyle(Value:TListBoxStyle);
begin
{*
 00479B8C    push        ebp
 00479B8D    mov         ebp,esp
 00479B8F    add         esp,0FFFFFFF8
 00479B92    mov         byte ptr [ebp-5],dl
 00479B95    mov         dword ptr [ebp-4],eax
 00479B98    mov         eax,dword ptr [ebp-4]
 00479B9B    mov         al,byte ptr [eax+238];TListBox.FStyle:TListBoxStyle
 00479BA1    cmp         al,byte ptr [ebp-5]
>00479BA4    je          00479BDB
 00479BA6    mov         al,byte ptr [ebp-5]
 00479BA9    add         al,0FD
 00479BAB    sub         al,2
>00479BAD    jae         00479BC7
 00479BAF    mov         eax,dword ptr [ebp-4]
 00479BB2    mov         eax,dword ptr [eax+218];TListBox.FItems:TStrings
 00479BB8    mov         edx,dword ptr [eax]
 00479BBA    call        dword ptr [edx+44];TStrings.Clear
 00479BBD    xor         edx,edx
 00479BBF    mov         eax,dword ptr [ebp-4]
 00479BC2    call        TListBox.SetSorted
 00479BC7    mov         al,byte ptr [ebp-5]
 00479BCA    mov         edx,dword ptr [ebp-4]
 00479BCD    mov         byte ptr [edx+238],al;TListBox.FStyle:TListBoxStyle
 00479BD3    mov         eax,dword ptr [ebp-4]
 00479BD6    call        TWinControl.RecreateWnd
 00479BDB    pop         ecx
 00479BDC    pop         ecx
 00479BDD    pop         ebp
 00479BDE    ret
*}
end;

//00479BE0
{*function sub_00479BE0(?:TCustomListBox):?;
begin
 00479BE0    push        ebp
 00479BE1    mov         ebp,esp
 00479BE3    add         esp,0FFFFFFF8
 00479BE6    mov         dword ptr [ebp-4],eax
 00479BE9    push        0
 00479BEB    push        0
 00479BED    push        18E
 00479BF2    mov         eax,dword ptr [ebp-4]
 00479BF5    call        TWinControl.GetHandle
 00479BFA    push        eax
 00479BFB    call        user32.SendMessageA
 00479C00    mov         dword ptr [ebp-8],eax
 00479C03    mov         eax,dword ptr [ebp-8]
 00479C06    pop         ecx
 00479C07    pop         ecx
 00479C08    pop         ebp
 00479C09    ret
end;*}

//00479C0C
{*procedure TCustomListBox.sub_00479C0C(?:?);
begin
 00479C0C    push        ebp
 00479C0D    mov         ebp,esp
 00479C0F    add         esp,0FFFFFFF4
 00479C12    push        ebx
 00479C13    xor         ecx,ecx
 00479C15    mov         dword ptr [ebp-0C],ecx
 00479C18    mov         dword ptr [ebp-8],edx
 00479C1B    mov         dword ptr [ebp-4],eax
 00479C1E    xor         eax,eax
 00479C20    push        ebp
 00479C21    push        479CDA
 00479C26    push        dword ptr fs:[eax]
 00479C29    mov         dword ptr fs:[eax],esp
 00479C2C    mov         eax,dword ptr [ebp-4]
 00479C2F    mov         al,byte ptr [eax+238];TCustomListBox.FStyle:TListBoxStyle
 00479C35    add         al,0FD
 00479C37    sub         al,2
>00479C39    jae         00479CB9
 00479C3B    mov         eax,dword ptr [ebp-4]
 00479C3E    cmp         word ptr [eax+262],0;TCustomListBox.?f262:word
>00479C46    je          00479CAD
 00479C48    mov         eax,dword ptr [ebp-8]
 00479C4B    cmp         dword ptr [eax+4],0FFFFFFFF
>00479C4F    jle         00479CAD
 00479C51    mov         eax,dword ptr [ebp-4]
 00479C54    mov         edx,dword ptr [eax]
 00479C56    call        dword ptr [edx+0C8];TCustomListBox.sub_004797D4
 00479C5C    mov         edx,dword ptr [ebp-8]
 00479C5F    cmp         eax,dword ptr [edx+4]
>00479C62    jle         00479CAD
 00479C64    lea         eax,[ebp-0C]
 00479C67    call        @LStrClr
 00479C6C    lea         eax,[ebp-0C]
 00479C6F    push        eax
 00479C70    mov         ecx,dword ptr [ebp-8]
 00479C73    mov         ecx,dword ptr [ecx+4]
 00479C76    mov         ebx,dword ptr [ebp-4]
 00479C79    mov         edx,dword ptr [ebp-4]
 00479C7C    mov         eax,dword ptr [ebx+264];TCustomListBox.?f264:dword
 00479C82    call        dword ptr [ebx+260];TCustomListBox.FOnData
 00479C88    mov         eax,dword ptr [ebp-0C]
 00479C8B    call        @LStrToPChar
 00479C90    mov         edx,eax
 00479C92    mov         eax,dword ptr [ebp-8]
 00479C95    mov         eax,dword ptr [eax+8]
 00479C98    call        StrCopy
 00479C9D    mov         eax,dword ptr [ebp-0C]
 00479CA0    call        @LStrLen
 00479CA5    mov         edx,dword ptr [ebp-8]
 00479CA8    mov         dword ptr [edx+0C],eax
>00479CAB    jmp         00479CC4
 00479CAD    mov         eax,dword ptr [ebp-8]
 00479CB0    mov         dword ptr [eax+0C],0FFFFFFFF
>00479CB7    jmp         00479CC4
 00479CB9    mov         edx,dword ptr [ebp-8]
 00479CBC    mov         eax,dword ptr [ebp-4]
 00479CBF    mov         ecx,dword ptr [eax]
 00479CC1    call        dword ptr [ecx-10];TCustomListBox.DefaultHandler
 00479CC4    xor         eax,eax
 00479CC6    pop         edx
 00479CC7    pop         ecx
 00479CC8    pop         ecx
 00479CC9    mov         dword ptr fs:[eax],edx
 00479CCC    push        479CE1
 00479CD1    lea         eax,[ebp-0C]
 00479CD4    call        @LStrClr
 00479CD9    ret
>00479CDA    jmp         @HandleFinally
>00479CDF    jmp         00479CD1
 00479CE1    pop         ebx
 00479CE2    mov         esp,ebp
 00479CE4    pop         ebp
 00479CE5    ret
end;*}

//00479CE8
{*procedure TCustomListBox.sub_00479CE8(?:?);
begin
 00479CE8    push        ebp
 00479CE9    mov         ebp,esp
 00479CEB    add         esp,0FFFFFFF4
 00479CEE    push        ebx
 00479CEF    xor         ecx,ecx
 00479CF1    mov         dword ptr [ebp-0C],ecx
 00479CF4    mov         dword ptr [ebp-8],edx
 00479CF7    mov         dword ptr [ebp-4],eax
 00479CFA    xor         eax,eax
 00479CFC    push        ebp
 00479CFD    push        479DA1
 00479D02    push        dword ptr fs:[eax]
 00479D05    mov         dword ptr fs:[eax],esp
 00479D08    mov         eax,dword ptr [ebp-4]
 00479D0B    mov         al,byte ptr [eax+238];TCustomListBox.FStyle:TListBoxStyle
 00479D11    add         al,0FD
 00479D13    sub         al,2
>00479D15    jae         00479D80
 00479D17    mov         eax,dword ptr [ebp-4]
 00479D1A    cmp         word ptr [eax+262],0;TCustomListBox.?f262:word
>00479D22    je          00479D74
 00479D24    mov         eax,dword ptr [ebp-8]
 00479D27    cmp         dword ptr [eax+4],0FFFFFFFF
>00479D2B    jle         00479D74
 00479D2D    mov         eax,dword ptr [ebp-4]
 00479D30    mov         edx,dword ptr [eax]
 00479D32    call        dword ptr [edx+0C8];TCustomListBox.sub_004797D4
 00479D38    mov         edx,dword ptr [ebp-8]
 00479D3B    cmp         eax,dword ptr [edx+4]
>00479D3E    jle         00479D74
 00479D40    lea         eax,[ebp-0C]
 00479D43    call        @LStrClr
 00479D48    lea         eax,[ebp-0C]
 00479D4B    push        eax
 00479D4C    mov         ecx,dword ptr [ebp-8]
 00479D4F    mov         ecx,dword ptr [ecx+4]
 00479D52    mov         ebx,dword ptr [ebp-4]
 00479D55    mov         edx,dword ptr [ebp-4]
 00479D58    mov         eax,dword ptr [ebx+264];TCustomListBox.?f264:dword
 00479D5E    call        dword ptr [ebx+260];TCustomListBox.FOnData
 00479D64    mov         eax,dword ptr [ebp-0C]
 00479D67    call        @LStrLen
 00479D6C    mov         edx,dword ptr [ebp-8]
 00479D6F    mov         dword ptr [edx+0C],eax
>00479D72    jmp         00479D8B
 00479D74    mov         eax,dword ptr [ebp-8]
 00479D77    mov         dword ptr [eax+0C],0FFFFFFFF
>00479D7E    jmp         00479D8B
 00479D80    mov         edx,dword ptr [ebp-8]
 00479D83    mov         eax,dword ptr [ebp-4]
 00479D86    mov         ecx,dword ptr [eax]
 00479D88    call        dword ptr [ecx-10];TCustomListBox.DefaultHandler
 00479D8B    xor         eax,eax
 00479D8D    pop         edx
 00479D8E    pop         ecx
 00479D8F    pop         ecx
 00479D90    mov         dword ptr fs:[eax],edx
 00479D93    push        479DA8
 00479D98    lea         eax,[ebp-0C]
 00479D9B    call        @LStrClr
 00479DA0    ret
>00479DA1    jmp         @HandleFinally
>00479DA6    jmp         00479D98
 00479DA8    pop         ebx
 00479DA9    mov         esp,ebp
 00479DAB    pop         ebp
 00479DAC    ret
end;*}

//00479DB0
procedure TListBox.SetBorderStyle(Value:TBorderStyle);
begin
{*
 00479DB0    push        ebp
 00479DB1    mov         ebp,esp
 00479DB3    add         esp,0FFFFFFF8
 00479DB6    mov         byte ptr [ebp-5],dl
 00479DB9    mov         dword ptr [ebp-4],eax
 00479DBC    mov         eax,dword ptr [ebp-4]
 00479DBF    mov         al,byte ptr [eax+224];TListBox.FBorderStyle:TBorderStyle
 00479DC5    cmp         al,byte ptr [ebp-5]
>00479DC8    je          00479DDE
 00479DCA    mov         al,byte ptr [ebp-5]
 00479DCD    mov         edx,dword ptr [ebp-4]
 00479DD0    mov         byte ptr [edx+224],al;TListBox.FBorderStyle:TBorderStyle
 00479DD6    mov         eax,dword ptr [ebp-4]
 00479DD9    call        TWinControl.RecreateWnd
 00479DDE    pop         ecx
 00479DDF    pop         ecx
 00479DE0    pop         ebp
 00479DE1    ret
*}
end;

//00479DE4
procedure sub_00479DE4(?:TCustomListBox; ?:Integer);
begin
{*
 00479DE4    push        ebp
 00479DE5    mov         ebp,esp
 00479DE7    add         esp,0FFFFFFF8
 00479DEA    mov         dword ptr [ebp-8],edx
 00479DED    mov         dword ptr [ebp-4],eax
 00479DF0    mov         eax,dword ptr [ebp-4]
 00479DF3    call        00479BE0
 00479DF8    cmp         eax,dword ptr [ebp-8]
>00479DFB    je          00479E16
 00479DFD    push        0
 00479DFF    mov         eax,dword ptr [ebp-8]
 00479E02    push        eax
 00479E03    push        197
 00479E08    mov         eax,dword ptr [ebp-4]
 00479E0B    call        TWinControl.GetHandle
 00479E10    push        eax
 00479E11    call        user32.SendMessageA
 00479E16    pop         ecx
 00479E17    pop         ecx
 00479E18    pop         ebp
 00479E19    ret
*}
end;

//00479E1C
procedure TListBox.SetItems(Value:TStrings);
begin
{*
 00479E1C    push        ebp
 00479E1D    mov         ebp,esp
 00479E1F    add         esp,0FFFFFFF8
 00479E22    mov         dword ptr [ebp-8],edx
 00479E25    mov         dword ptr [ebp-4],eax
 00479E28    mov         eax,dword ptr [ebp-4]
 00479E2B    mov         al,byte ptr [eax+238];TListBox.FStyle:TListBoxStyle
 00479E31    add         al,0FD
 00479E33    sub         al,2
>00479E35    jae         00479E60
 00479E37    mov         eax,dword ptr [ebp-4]
 00479E3A    mov         al,byte ptr [eax+238];TListBox.FStyle:TListBoxStyle
 00479E40    sub         al,3
>00479E42    je          00479E4A
 00479E44    dec         al
>00479E46    je          00479E56
>00479E48    jmp         00479E60
 00479E4A    xor         edx,edx
 00479E4C    mov         eax,dword ptr [ebp-4]
 00479E4F    call        TListBox.SetStyle
>00479E54    jmp         00479E60
 00479E56    mov         dl,1
 00479E58    mov         eax,dword ptr [ebp-4]
 00479E5B    call        TListBox.SetStyle
 00479E60    mov         edx,dword ptr [ebp-8]
 00479E63    mov         eax,dword ptr [ebp-4]
 00479E66    mov         eax,dword ptr [eax+218];TListBox.FItems:TStrings
 00479E6C    mov         ecx,dword ptr [eax]
 00479E6E    call        dword ptr [ecx+8];TStrings.sub_00421BB0
 00479E71    pop         ecx
 00479E72    pop         ecx
 00479E73    pop         ebp
 00479E74    ret
*}
end;

//00479E78
{*function sub_00479E78(?:TCustomListBox; ?:?; ?:?):?;
begin
 00479E78    push        ebp
 00479E79    mov         ebp,esp
 00479E7B    add         esp,0FFFFFFC8
 00479E7E    push        esi
 00479E7F    push        edi
 00479E80    mov         esi,edx
 00479E82    lea         edi,[ebp-0C]
 00479E85    movs        dword ptr [edi],dword ptr [esi]
 00479E86    movs        dword ptr [edi],dword ptr [esi]
 00479E87    mov         byte ptr [ebp-0D],cl
 00479E8A    mov         dword ptr [ebp-4],eax
 00479E8D    push        dword ptr [ebp-8]
 00479E90    push        dword ptr [ebp-0C]
 00479E93    lea         edx,[ebp-38]
 00479E96    mov         eax,dword ptr [ebp-4]
 00479E99    mov         ecx,dword ptr [eax]
 00479E9B    call        dword ptr [ecx+44]
 00479E9E    lea         eax,[ebp-38]
 00479EA1    push        eax
 00479EA2    call        user32.PtInRect
 00479EA7    test        eax,eax
>00479EA9    je          00479F07
 00479EAB    mov         eax,dword ptr [ebp-4]
 00479EAE    call        00479BE0
 00479EB3    mov         dword ptr [ebp-14],eax
 00479EB6    mov         eax,dword ptr [ebp-4]
 00479EB9    mov         eax,dword ptr [eax+218]
 00479EBF    mov         edx,dword ptr [eax]
 00479EC1    call        dword ptr [edx+14]
 00479EC4    mov         dword ptr [ebp-18],eax
 00479EC7    mov         eax,dword ptr [ebp-14]
 00479ECA    cmp         eax,dword ptr [ebp-18]
>00479ECD    jge         00479F01
 00479ECF    lea         eax,[ebp-28]
 00479ED2    push        eax
 00479ED3    mov         ecx,dword ptr [ebp-14]
 00479ED6    mov         edx,198
 00479EDB    mov         eax,dword ptr [ebp-4]
 00479EDE    call        00484FFC
 00479EE3    push        dword ptr [ebp-8]
 00479EE6    push        dword ptr [ebp-0C]
 00479EE9    lea         eax,[ebp-28]
 00479EEC    push        eax
 00479EED    call        user32.PtInRect
 00479EF2    test        eax,eax
>00479EF4    jne         00479F0E
 00479EF6    inc         dword ptr [ebp-14]
 00479EF9    mov         eax,dword ptr [ebp-14]
 00479EFC    cmp         eax,dword ptr [ebp-18]
>00479EFF    jl          00479ECF
 00479F01    cmp         byte ptr [ebp-0D],0
>00479F05    je          00479F0E
 00479F07    mov         dword ptr [ebp-14],0FFFFFFFF
 00479F0E    mov         eax,dword ptr [ebp-14]
 00479F11    pop         edi
 00479F12    pop         esi
 00479F13    mov         esp,ebp
 00479F15    pop         ebp
 00479F16    ret
end;*}

//00479F18
{*procedure sub_00479F18(?:TCheckListBox; ?:?; ?:?);
begin
 00479F18    push        ebp
 00479F19    mov         ebp,esp
 00479F1B    add         esp,0FFFFFFF0
 00479F1E    mov         dword ptr [ebp-0C],ecx
 00479F21    mov         dword ptr [ebp-8],edx
 00479F24    mov         dword ptr [ebp-4],eax
 00479F27    mov         eax,dword ptr [ebp-4]
 00479F2A    mov         eax,dword ptr [eax+218]
 00479F30    mov         edx,dword ptr [eax]
 00479F32    call        dword ptr [edx+14]
 00479F35    mov         dword ptr [ebp-10],eax
 00479F38    cmp         dword ptr [ebp-8],0
>00479F3C    je          00479F46
 00479F3E    mov         eax,dword ptr [ebp-8]
 00479F41    cmp         eax,dword ptr [ebp-10]
>00479F44    jge         00479F5C
 00479F46    mov         eax,dword ptr [ebp-0C]
 00479F49    push        eax
 00479F4A    mov         ecx,dword ptr [ebp-8]
 00479F4D    mov         edx,198
 00479F52    mov         eax,dword ptr [ebp-4]
 00479F55    call        00484FFC
>00479F5A    jmp         00479FA2
 00479F5C    mov         eax,dword ptr [ebp-8]
 00479F5F    cmp         eax,dword ptr [ebp-10]
>00479F62    jne         00479F93
 00479F64    mov         eax,dword ptr [ebp-0C]
 00479F67    push        eax
 00479F68    mov         ecx,dword ptr [ebp-8]
 00479F6B    dec         ecx
 00479F6C    mov         edx,198
 00479F71    mov         eax,dword ptr [ebp-4]
 00479F74    call        00484FFC
 00479F79    mov         eax,dword ptr [ebp-0C]
 00479F7C    mov         eax,dword ptr [eax+0C]
 00479F7F    mov         edx,dword ptr [ebp-0C]
 00479F82    sub         eax,dword ptr [edx+4]
 00479F85    push        eax
 00479F86    push        0
 00479F88    mov         eax,dword ptr [ebp-0C]
 00479F8B    push        eax
 00479F8C    call        user32.OffsetRect
>00479F91    jmp         00479FA2
 00479F93    mov         eax,dword ptr [ebp-0C]
 00479F96    xor         ecx,ecx
 00479F98    mov         edx,10
 00479F9D    call        @FillChar
 00479FA2    mov         esp,ebp
 00479FA4    pop         ebp
 00479FA5    ret
end;*}

//00479FA8
{*procedure sub_00479FA8(?:?);
begin
 00479FA8    push        ebp
 00479FA9    mov         ebp,esp
 00479FAB    add         esp,0FFFFFFF4
 00479FAE    push        esi
 00479FAF    mov         dword ptr [ebp-8],edx
 00479FB2    mov         dword ptr [ebp-4],eax
 00479FB5    mov         edx,dword ptr [ebp-8]
 00479FB8    mov         eax,dword ptr [ebp-4]
 00479FBB    call        00488034
 00479FC0    mov         ecx,47A0F8
 00479FC5    mov         edx,dword ptr [ebp-8]
 00479FC8    mov         eax,dword ptr [ebp-4]
 00479FCB    call        00487F0C
 00479FD0    mov         eax,56C714
 00479FD5    mov         dword ptr [ebp-0C],eax
 00479FD8    mov         eax,dword ptr [ebp-4]
 00479FDB    cmp         byte ptr [eax+23B],0;TCustomListBox.FExtendedSelect:Boolean
>00479FE2    je          00479FEC
 00479FE4    mov         eax,56C71C
 00479FE9    mov         dword ptr [ebp-0C],eax
 00479FEC    mov         eax,dword ptr [ebp-4]
 00479FEF    mov         al,byte ptr [eax+238];TCustomListBox.FStyle:TListBoxStyle
 00479FF5    add         al,0FD
 00479FF7    sub         al,2
 00479FF9    setb        al
 00479FFC    and         eax,7F
 00479FFF    mov         eax,dword ptr [eax*4+56C744]
 0047A006    or          eax,300000
 0047A00B    or          eax,1
 0047A00E    mov         edx,dword ptr [ebp-8]
 0047A011    or          eax,dword ptr [edx+4]
 0047A014    mov         edx,dword ptr [ebp-4]
 0047A017    movzx       edx,byte ptr [edx+238];TCustomListBox.FStyle:TListBoxStyle
 0047A01E    or          eax,dword ptr [edx*4+56C6F8]
 0047A025    mov         edx,dword ptr [ebp-4]
 0047A028    movzx       edx,byte ptr [edx+23A];TCustomListBox.FSorted:Boolean
 0047A02F    or          eax,dword ptr [edx*4+56C70C]
 0047A036    mov         edx,dword ptr [ebp-4]
 0047A039    movzx       edx,byte ptr [edx+208];TCustomListBox......................FMultiSelect:Boolean
 0047A040    mov         ecx,dword ptr [ebp-0C]
 0047A043    or          eax,dword ptr [ecx+edx*4]
 0047A046    mov         edx,dword ptr [ebp-4]
 0047A049    movzx       edx,byte ptr [edx+239];TCustomListBox.FIntegralHeight:Boolean
 0047A050    or          eax,dword ptr [edx*4+56C724]
 0047A057    mov         edx,dword ptr [ebp-4]
 0047A05A    cmp         dword ptr [edx+22C],0;TCustomListBox.FColumns:Integer
 0047A061    setne       dl
 0047A064    and         edx,7F
 0047A067    or          eax,dword ptr [edx*4+56C72C]
 0047A06E    mov         edx,dword ptr [ebp-4]
 0047A071    movzx       edx,byte ptr [edx+224];TCustomListBox.FBorderStyle:TBorderStyle
 0047A078    or          eax,dword ptr [edx*4+56C5F8]
 0047A07F    mov         edx,dword ptr [ebp-4]
 0047A082    cmp         dword ptr [edx+23C],0;TCustomListBox.FTabWidth:Integer
 0047A089    setne       dl
 0047A08C    and         edx,7F
 0047A08F    or          eax,dword ptr [edx*4+56C734]
 0047A096    mov         edx,dword ptr [ebp-8]
 0047A099    mov         dword ptr [edx+4],eax
 0047A09C    mov         eax,[0056E264];^NewStyleControls:Boolean
 0047A0A1    cmp         byte ptr [eax],0
>0047A0A4    je          0047A0D2
 0047A0A6    mov         eax,dword ptr [ebp-4]
 0047A0A9    cmp         byte ptr [eax+1A5],0;TCustomListBox.FCtl3D:Boolean
>0047A0B0    je          0047A0D2
 0047A0B2    mov         eax,dword ptr [ebp-4]
 0047A0B5    cmp         byte ptr [eax+224],1;TCustomListBox.FBorderStyle:TBorderStyle
>0047A0BC    jne         0047A0D2
 0047A0BE    mov         eax,dword ptr [ebp-8]
 0047A0C1    and         dword ptr [eax+4],0FF7FFFFF
 0047A0C8    mov         eax,dword ptr [ebp-8]
 0047A0CB    or          dword ptr [eax+8],200
 0047A0D2    mov         eax,dword ptr [ebp-4]
 0047A0D5    mov         si,0FFC8
 0047A0D9    call        @CallDynaInst;TControl.sub_0048415C
 0047A0DE    and         eax,7F
 0047A0E1    mov         eax,dword ptr [eax*4+56C73C]
 0047A0E8    or          eax,1
 0047A0EB    not         eax
 0047A0ED    mov         edx,dword ptr [ebp-8]
 0047A0F0    and         dword ptr [edx+24],eax
 0047A0F3    pop         esi
 0047A0F4    mov         esp,ebp
 0047A0F6    pop         ebp
 0047A0F7    ret
end;*}

//0047A100
procedure TCustomListBox.CreateWnd;
begin
{*
 0047A100    push        ebp
 0047A101    mov         ebp,esp
 0047A103    add         esp,0FFFFFFF4
 0047A106    mov         dword ptr [ebp-4],eax
 0047A109    mov         eax,dword ptr [ebp-4]
 0047A10C    mov         eax,dword ptr [eax+48];TCustomListBox.Width:Integer
 0047A10F    mov         dword ptr [ebp-8],eax
 0047A112    mov         eax,dword ptr [ebp-4]
 0047A115    mov         eax,dword ptr [eax+4C];TCustomListBox.Height:Integer
 0047A118    mov         dword ptr [ebp-0C],eax
 0047A11B    mov         eax,dword ptr [ebp-4]
 0047A11E    call        TWinControl.CreateWnd
 0047A123    push        14
 0047A125    mov         eax,dword ptr [ebp-0C]
 0047A128    push        eax
 0047A129    mov         eax,dword ptr [ebp-8]
 0047A12C    push        eax
 0047A12D    mov         eax,dword ptr [ebp-4]
 0047A130    mov         eax,dword ptr [eax+44];TCustomListBox.Top:Integer
 0047A133    push        eax
 0047A134    mov         eax,dword ptr [ebp-4]
 0047A137    mov         eax,dword ptr [eax+40];TCustomListBox.Left:Integer
 0047A13A    push        eax
 0047A13B    push        0
 0047A13D    mov         eax,dword ptr [ebp-4]
 0047A140    call        TWinControl.GetHandle
 0047A145    push        eax
 0047A146    call        user32.SetWindowPos
 0047A14B    mov         eax,dword ptr [ebp-4]
 0047A14E    cmp         dword ptr [eax+23C],0;TCustomListBox.FTabWidth:Integer
>0047A155    je          0047A175
 0047A157    mov         eax,dword ptr [ebp-4]
 0047A15A    add         eax,23C;TCustomListBox.FTabWidth:Integer
 0047A15F    push        eax
 0047A160    push        1
 0047A162    push        192
 0047A167    mov         eax,dword ptr [ebp-4]
 0047A16A    call        TWinControl.GetHandle
 0047A16F    push        eax
 0047A170    call        user32.SendMessageA
 0047A175    mov         eax,dword ptr [ebp-4]
 0047A178    call        004796AC
 0047A17D    mov         eax,dword ptr [ebp-4]
 0047A180    cmp         dword ptr [eax+234],0FFFFFFFF;TCustomListBox.FOldCount:Integer
>0047A187    jne         0047A199
 0047A189    mov         eax,dword ptr [ebp-4]
 0047A18C    cmp         dword ptr [eax+240],0;TCustomListBox.FSaveItems:TStringList
>0047A193    je          0047A21B
 0047A199    mov         eax,dword ptr [ebp-4]
 0047A19C    mov         al,byte ptr [eax+238];TCustomListBox.FStyle:TListBoxStyle
 0047A1A2    add         al,0FD
 0047A1A4    sub         al,2
>0047A1A6    jae         0047A1B9
 0047A1A8    mov         eax,dword ptr [ebp-4]
 0047A1AB    mov         edx,dword ptr [eax+234];TCustomListBox.FOldCount:Integer
 0047A1B1    mov         eax,dword ptr [ebp-4]
 0047A1B4    call        0047ACC4
 0047A1B9    mov         eax,dword ptr [ebp-4]
 0047A1BC    cmp         dword ptr [eax+240],0;TCustomListBox.FSaveItems:TStringList
>0047A1C3    je          0047A1E9
 0047A1C5    mov         eax,dword ptr [ebp-4]
 0047A1C8    mov         edx,dword ptr [eax+240];TCustomListBox.FSaveItems:TStringList
 0047A1CE    mov         eax,dword ptr [ebp-4]
 0047A1D1    mov         eax,dword ptr [eax+218];TCustomListBox.FItems:TStrings
 0047A1D7    mov         ecx,dword ptr [eax]
 0047A1D9    call        dword ptr [ecx+8];TStrings.sub_00421BB0
 0047A1DC    mov         eax,dword ptr [ebp-4]
 0047A1DF    add         eax,240;TCustomListBox.FSaveItems:TStringList
 0047A1E4    call        FreeAndNil
 0047A1E9    mov         eax,dword ptr [ebp-4]
 0047A1EC    mov         edx,dword ptr [eax+244];TCustomListBox.FSaveTopIndex:Integer
 0047A1F2    mov         eax,dword ptr [ebp-4]
 0047A1F5    call        00479DE4
 0047A1FA    mov         eax,dword ptr [ebp-4]
 0047A1FD    mov         edx,dword ptr [eax+248];TCustomListBox.FSaveItemIndex:Integer
 0047A203    mov         eax,dword ptr [ebp-4]
 0047A206    mov         ecx,dword ptr [eax]
 0047A208    call        dword ptr [ecx+0D0];TCustomListBox.sub_00479840
 0047A20E    mov         eax,dword ptr [ebp-4]
 0047A211    mov         dword ptr [eax+234],0FFFFFFFF;TCustomListBox.FOldCount:Integer
 0047A21B    mov         esp,ebp
 0047A21D    pop         ebp
 0047A21E    ret
*}
end;

//0047A220
procedure sub_0047A220;
begin
{*
 0047A220    push        ebp
 0047A221    mov         ebp,esp
 0047A223    push        ecx
 0047A224    mov         dword ptr [ebp-4],eax
 0047A227    mov         eax,dword ptr [ebp-4]
 0047A22A    mov         eax,dword ptr [eax+218];TCustomListBox.FItems:TStrings
 0047A230    mov         edx,dword ptr [eax]
 0047A232    call        dword ptr [edx+14];@AbstractError
 0047A235    test        eax,eax
>0047A237    jle         0047A2B2
 0047A239    mov         eax,dword ptr [ebp-4]
 0047A23C    mov         al,byte ptr [eax+238];TCustomListBox.FStyle:TListBoxStyle
 0047A242    add         al,0FD
 0047A244    sub         al,2
>0047A246    jae         0047A261
 0047A248    mov         eax,dword ptr [ebp-4]
 0047A24B    mov         eax,dword ptr [eax+218];TCustomListBox.FItems:TStrings
 0047A251    mov         edx,dword ptr [eax]
 0047A253    call        dword ptr [edx+14];@AbstractError
 0047A256    mov         edx,dword ptr [ebp-4]
 0047A259    mov         dword ptr [edx+234],eax;TCustomListBox.FOldCount:Integer
>0047A25F    jmp         0047A28D
 0047A261    mov         dl,1
 0047A263    mov         eax,[0041DB24];TStringList
 0047A268    call        TObject.Create;TStringList.Create
 0047A26D    mov         edx,dword ptr [ebp-4]
 0047A270    mov         dword ptr [edx+240],eax;TCustomListBox.FSaveItems:TStringList
 0047A276    mov         eax,dword ptr [ebp-4]
 0047A279    mov         edx,dword ptr [eax+218];TCustomListBox.FItems:TStrings
 0047A27F    mov         eax,dword ptr [ebp-4]
 0047A282    mov         eax,dword ptr [eax+240];TCustomListBox.FSaveItems:TStringList
 0047A288    mov         ecx,dword ptr [eax]
 0047A28A    call        dword ptr [ecx+8];TStringList.sub_00421BB0
 0047A28D    mov         eax,dword ptr [ebp-4]
 0047A290    call        00479BE0
 0047A295    mov         edx,dword ptr [ebp-4]
 0047A298    mov         dword ptr [edx+244],eax;TCustomListBox.FSaveTopIndex:Integer
 0047A29E    mov         eax,dword ptr [ebp-4]
 0047A2A1    mov         edx,dword ptr [eax]
 0047A2A3    call        dword ptr [edx+0CC];TCustomListBox.sub_00479780
 0047A2A9    mov         edx,dword ptr [ebp-4]
 0047A2AC    mov         dword ptr [edx+248],eax;TCustomListBox.FSaveItemIndex:Integer
 0047A2B2    mov         eax,dword ptr [ebp-4]
 0047A2B5    call        004886A4
 0047A2BA    pop         ecx
 0047A2BB    pop         ebp
 0047A2BC    ret
*}
end;

//0047A2C0
{*procedure sub_0047A2C0(?:?);
begin
 0047A2C0    push        ebp
 0047A2C1    mov         ebp,esp
 0047A2C3    add         esp,0FFFFFFF8
 0047A2C6    mov         dword ptr [ebp-8],edx
 0047A2C9    mov         dword ptr [ebp-4],eax
 0047A2CC    mov         eax,dword ptr [ebp-4]
 0047A2CF    test        byte ptr [eax+1C],10;TCustomListBox.FComponentState:TComponentState
>0047A2D3    jne         0047A330
 0047A2D5    mov         eax,dword ptr [ebp-8]
 0047A2D8    cmp         dword ptr [eax],201
>0047A2DE    je          0047A2EB
 0047A2E0    mov         eax,dword ptr [ebp-8]
 0047A2E3    cmp         dword ptr [eax],203
>0047A2E9    jne         0047A330
 0047A2EB    mov         eax,dword ptr [ebp-4]
 0047A2EE    call        004842C4
 0047A2F3    test        al,al
>0047A2F5    jne         0047A330
 0047A2F7    mov         eax,dword ptr [ebp-4]
 0047A2FA    cmp         byte ptr [eax+5D],1;TCustomListBox.FDragMode:TDragMode
>0047A2FE    jne         0047A330
 0047A300    mov         edx,dword ptr [ebp-8]
 0047A303    mov         eax,dword ptr [ebp-4]
 0047A306    call        00488E08
 0047A30B    test        al,al
>0047A30D    jne         0047A33B
 0047A30F    mov         ax,[0047A340];0x1 gvar_0047A340
 0047A315    mov         edx,dword ptr [ebp-4]
 0047A318    or          ax,word ptr [edx+54];TCustomListBox.FControlState:TControlState
 0047A31C    mov         edx,dword ptr [ebp-4]
 0047A31F    mov         word ptr [edx+54],ax;TCustomListBox.FControlState:TControlState
 0047A323    mov         edx,dword ptr [ebp-8]
 0047A326    mov         eax,dword ptr [ebp-4]
 0047A329    mov         ecx,dword ptr [eax]
 0047A32B    call        dword ptr [ecx-14];TObject.Dispatch
>0047A32E    jmp         0047A33B
 0047A330    mov         edx,dword ptr [ebp-8]
 0047A333    mov         eax,dword ptr [ebp-4]
 0047A336    call        00488EC8
 0047A33B    pop         ecx
 0047A33C    pop         ecx
 0047A33D    pop         ebp
 0047A33E    ret
end;*}

//0047A344
{*procedure TCustomListBox.WMLButtonDown(?:?);
begin
 0047A344    push        ebp
 0047A345    mov         ebp,esp
 0047A347    add         esp,0FFFFFFE8
 0047A34A    mov         dword ptr [ebp-8],edx
 0047A34D    mov         dword ptr [ebp-4],eax
 0047A350    mov         eax,dword ptr [ebp-8]
 0047A353    mov         ax,word ptr [eax+4]
 0047A357    call        004A058C
 0047A35C    mov         byte ptr [ebp-0D],al
 0047A35F    mov         eax,dword ptr [ebp-4]
 0047A362    cmp         byte ptr [eax+5D],1;TCustomListBox.FDragMode:TDragMode
>0047A366    jne         0047A3C2
 0047A368    mov         eax,dword ptr [ebp-4]
 0047A36B    cmp         byte ptr [eax+208],0;TCustomListBox.......................FMultiSelect:Boolean
>0047A372    je          0047A3C2
 0047A374    test        byte ptr [ebp-0D],1
>0047A378    je          0047A380
 0047A37A    test        byte ptr [ebp-0D],4
>0047A37E    je          0047A3C2
 0047A380    lea         edx,[ebp-18]
 0047A383    mov         eax,dword ptr [ebp-8]
 0047A386    mov         eax,dword ptr [eax+8]
 0047A389    call        00408640
 0047A38E    lea         edx,[ebp-18]
 0047A391    mov         cl,1
 0047A393    mov         eax,dword ptr [ebp-4]
 0047A396    call        00479E78
 0047A39B    mov         dword ptr [ebp-0C],eax
 0047A39E    cmp         dword ptr [ebp-0C],0
>0047A3A2    jl          0047A3C2
 0047A3A4    mov         edx,dword ptr [ebp-0C]
 0047A3A7    mov         eax,dword ptr [ebp-4]
 0047A3AA    call        00479A10
 0047A3AF    test        al,al
>0047A3B1    je          0047A3C2
 0047A3B3    or          ecx,0FFFFFFFF
 0047A3B6    xor         edx,edx
 0047A3B8    mov         eax,dword ptr [ebp-4]
 0047A3BB    call        004841E0
>0047A3C0    jmp         0047A3FB
 0047A3C2    mov         edx,dword ptr [ebp-8]
 0047A3C5    mov         eax,dword ptr [ebp-4]
 0047A3C8    call        TControl.WMLButtonDown
 0047A3CD    mov         eax,dword ptr [ebp-4]
 0047A3D0    cmp         byte ptr [eax+5D],1;TCustomListBox.FDragMode:TDragMode
>0047A3D4    jne         0047A3FB
 0047A3D6    mov         eax,dword ptr [ebp-4]
 0047A3D9    cmp         byte ptr [eax+208],0;TCustomListBox........................FMultiSelect:Boolean
>0047A3E0    je          0047A3EE
 0047A3E2    test        byte ptr [ebp-0D],4
>0047A3E6    jne         0047A3FB
 0047A3E8    test        byte ptr [ebp-0D],1
>0047A3EC    jne         0047A3FB
 0047A3EE    or          ecx,0FFFFFFFF
 0047A3F1    xor         edx,edx
 0047A3F3    mov         eax,dword ptr [ebp-4]
 0047A3F6    call        004841E0
 0047A3FB    mov         esp,ebp
 0047A3FD    pop         ebp
 0047A3FE    ret
end;*}

//0047A400
{*procedure TCustomListBox.sub_0047A400(?:?);
begin
 0047A400    push        ebp
 0047A401    mov         ebp,esp
 0047A403    add         esp,0FFFFFFF8
 0047A406    push        esi
 0047A407    mov         dword ptr [ebp-8],edx
 0047A40A    mov         dword ptr [ebp-4],eax
 0047A40D    mov         eax,dword ptr [ebp-8]
 0047A410    mov         ax,word ptr [eax+6]
 0047A414    dec         ax
>0047A417    je          0047A420
 0047A419    dec         ax
>0047A41C    je          0047A436
>0047A41E    jmp         0047A442
 0047A420    mov         eax,dword ptr [ebp-4]
 0047A423    call        00483218
 0047A428    mov         eax,dword ptr [ebp-4]
 0047A42B    mov         si,0FFEB
 0047A42F    call        @CallDynaInst;TControl.sub_004854CC
>0047A434    jmp         0047A442
 0047A436    mov         eax,dword ptr [ebp-4]
 0047A439    mov         si,0FFE9
 0047A43D    call        @CallDynaInst;TControl.sub_0048555C
 0047A442    pop         esi
 0047A443    pop         ecx
 0047A444    pop         ecx
 0047A445    pop         ebp
 0047A446    ret
end;*}

//0047A448
procedure PaintListBox;
begin
{*
 0047A448    push        ebp
 0047A449    mov         ebp,esp
 0047A44B    add         esp,0FFFFFF68
 0047A451    push        esi
 0047A452    push        edi
 0047A453    mov         dword ptr [ebp-20],0BC2B
 0047A45A    lea         eax,[ebp-60]
 0047A45D    mov         dword ptr [ebp-18],eax
 0047A460    mov         eax,dword ptr [ebp+8]
 0047A463    mov         eax,dword ptr [eax-4]
 0047A466    call        TWinControl.GetHandle
 0047A46B    mov         dword ptr [ebp-1C],eax
 0047A46E    mov         dword ptr [ebp-60],2
 0047A475    mov         dword ptr [ebp-54],1
 0047A47C    xor         eax,eax
 0047A47E    mov         dword ptr [ebp-50],eax
 0047A481    mov         eax,dword ptr [ebp+8]
 0047A484    mov         eax,dword ptr [eax-8]
 0047A487    mov         eax,dword ptr [eax+4]
 0047A48A    mov         dword ptr [ebp-48],eax
 0047A48D    mov         eax,dword ptr [ebp+8]
 0047A490    mov         eax,dword ptr [eax-4]
 0047A493    call        TWinControl.GetHandle
 0047A498    mov         dword ptr [ebp-5C],eax
 0047A49B    mov         eax,dword ptr [ebp+8]
 0047A49E    mov         eax,dword ptr [eax-4]
 0047A4A1    call        TWinControl.GetHandle
 0047A4A6    mov         dword ptr [ebp-4C],eax
 0047A4A9    mov         dword ptr [ebp-30],0BC2C
 0047A4B0    mov         eax,dword ptr [ebp+8]
 0047A4B3    mov         eax,dword ptr [eax-4]
 0047A4B6    call        TWinControl.GetHandle
 0047A4BB    mov         dword ptr [ebp-2C],eax
 0047A4BE    lea         eax,[ebp-78]
 0047A4C1    mov         dword ptr [ebp-28],eax
 0047A4C4    mov         dword ptr [ebp-78],2
 0047A4CB    mov         eax,dword ptr [ebp+8]
 0047A4CE    mov         eax,dword ptr [eax-4]
 0047A4D1    call        TWinControl.GetHandle
 0047A4D6    mov         dword ptr [ebp-74],eax
 0047A4D9    xor         eax,eax
 0047A4DB    mov         dword ptr [ebp-4],eax
 0047A4DE    mov         eax,dword ptr [ebp+8]
 0047A4E1    mov         eax,dword ptr [eax-4]
 0047A4E4    call        00479BE0
 0047A4E9    mov         dword ptr [ebp-8],eax
 0047A4EC    lea         eax,[ebp-88]
 0047A4F2    push        eax
 0047A4F3    mov         eax,dword ptr [ebp+8]
 0047A4F6    mov         eax,dword ptr [eax-8]
 0047A4F9    mov         eax,dword ptr [eax+4]
 0047A4FC    push        eax
 0047A4FD    call        gdi32.GetClipBox
 0047A502    mov         eax,dword ptr [ebp+8]
 0047A505    mov         eax,dword ptr [eax-4]
 0047A508    mov         eax,dword ptr [eax+4C]
 0047A50B    mov         dword ptr [ebp-0C],eax
 0047A50E    mov         eax,dword ptr [ebp+8]
 0047A511    mov         eax,dword ptr [eax-4]
 0047A514    mov         eax,dword ptr [eax+48]
 0047A517    mov         dword ptr [ebp-10],eax
 0047A51A    mov         eax,dword ptr [ebp-4]
 0047A51D    cmp         eax,dword ptr [ebp-0C]
>0047A520    jge         0047A5E9
 0047A526    mov         eax,dword ptr [ebp-8]
 0047A529    mov         dword ptr [ebp-70],eax
 0047A52C    mov         eax,dword ptr [ebp+8]
 0047A52F    mov         eax,dword ptr [eax-4]
 0047A532    mov         eax,dword ptr [eax+218]
 0047A538    mov         edx,dword ptr [eax]
 0047A53A    call        dword ptr [edx+14]
 0047A53D    cmp         eax,dword ptr [ebp-8]
>0047A540    jle         0047A559
 0047A542    mov         eax,dword ptr [ebp+8]
 0047A545    mov         eax,dword ptr [eax-4]
 0047A548    mov         eax,dword ptr [eax+218]
 0047A54E    mov         edx,dword ptr [ebp-8]
 0047A551    mov         ecx,dword ptr [eax]
 0047A553    call        dword ptr [ecx+18]
 0047A556    mov         dword ptr [ebp-64],eax
 0047A559    mov         eax,dword ptr [ebp-10]
 0047A55C    mov         dword ptr [ebp-6C],eax
 0047A55F    mov         eax,dword ptr [ebp+8]
 0047A562    mov         eax,dword ptr [eax-4]
 0047A565    mov         eax,dword ptr [eax+230]
 0047A56B    mov         dword ptr [ebp-68],eax
 0047A56E    mov         eax,dword ptr [ebp-64]
 0047A571    mov         dword ptr [ebp-34],eax
 0047A574    mov         eax,dword ptr [ebp-8]
 0047A577    mov         dword ptr [ebp-58],eax
 0047A57A    lea         edx,[ebp-30]
 0047A57D    mov         eax,dword ptr [ebp+8]
 0047A580    mov         eax,dword ptr [eax-4]
 0047A583    mov         ecx,dword ptr [eax]
 0047A585    call        dword ptr [ecx-14]
 0047A588    mov         eax,dword ptr [ebp-4]
 0047A58B    add         eax,dword ptr [ebp-68]
 0047A58E    push        eax
 0047A58F    lea         eax,[ebp-98]
 0047A595    push        eax
 0047A596    mov         ecx,dword ptr [ebp-6C]
 0047A599    mov         edx,dword ptr [ebp-4]
 0047A59C    xor         eax,eax
 0047A59E    call        0041E714
 0047A5A3    lea         esi,[ebp-98]
 0047A5A9    lea         edi,[ebp-44]
 0047A5AC    movs        dword ptr [edi],dword ptr [esi]
 0047A5AD    movs        dword ptr [edi],dword ptr [esi]
 0047A5AE    movs        dword ptr [edi],dword ptr [esi]
 0047A5AF    movs        dword ptr [edi],dword ptr [esi]
 0047A5B0    lea         edx,[ebp-20]
 0047A5B3    mov         eax,dword ptr [ebp+8]
 0047A5B6    mov         eax,dword ptr [eax-4]
 0047A5B9    mov         ecx,dword ptr [eax]
 0047A5BB    call        dword ptr [ecx-14]
 0047A5BE    mov         eax,dword ptr [ebp-68]
 0047A5C1    add         dword ptr [ebp-4],eax
 0047A5C4    inc         dword ptr [ebp-8]
 0047A5C7    mov         eax,dword ptr [ebp+8]
 0047A5CA    mov         eax,dword ptr [eax-4]
 0047A5CD    mov         eax,dword ptr [eax+218]
 0047A5D3    mov         edx,dword ptr [eax]
 0047A5D5    call        dword ptr [edx+14]
 0047A5D8    cmp         eax,dword ptr [ebp-8]
>0047A5DB    jle         0047A5E9
 0047A5DD    mov         eax,dword ptr [ebp-4]
 0047A5E0    cmp         eax,dword ptr [ebp-0C]
>0047A5E3    jl          0047A526
 0047A5E9    pop         edi
 0047A5EA    pop         esi
 0047A5EB    mov         esp,ebp
 0047A5ED    pop         ebp
 0047A5EE    ret
*}
end;

//0047A5F0
procedure TCustomListBox.WMPaint(var Message:TWMPaint);
begin
{*
 0047A5F0    push        ebp
 0047A5F1    mov         ebp,esp
 0047A5F3    add         esp,0FFFFFFF8
 0047A5F6    mov         dword ptr [ebp-8],edx
 0047A5F9    mov         dword ptr [ebp-4],eax
 0047A5FC    mov         eax,dword ptr [ebp-8]
 0047A5FF    cmp         dword ptr [eax+4],0
>0047A603    je          0047A60E
 0047A605    push        ebp
 0047A606    call        PaintListBox
 0047A60B    pop         ecx
>0047A60C    jmp         0047A619
 0047A60E    mov         edx,dword ptr [ebp-8]
 0047A611    mov         eax,dword ptr [ebp-4]
 0047A614    call        TWinControl.WMPaint
 0047A619    pop         ecx
 0047A61A    pop         ecx
 0047A61B    pop         ebp
 0047A61C    ret
*}
end;

//0047A620
{*procedure TCustomListBox.WMSize(?:?);
begin
 0047A620    push        ebp
 0047A621    mov         ebp,esp
 0047A623    add         esp,0FFFFFFF8
 0047A626    mov         dword ptr [ebp-8],edx
 0047A629    mov         dword ptr [ebp-4],eax
 0047A62C    mov         edx,dword ptr [ebp-8]
 0047A62F    mov         eax,dword ptr [ebp-4]
 0047A632    call        TWinControl.WMSize
 0047A637    mov         eax,dword ptr [ebp-4]
 0047A63A    call        004796AC
 0047A63F    pop         ecx
 0047A640    pop         ecx
 0047A641    pop         ebp
 0047A642    ret
end;*}

//0047A644
procedure TCustomListBox.sub_0047A644;
begin
{*
 0047A644    push        ebp
 0047A645    mov         ebp,esp
 0047A647    add         esp,0FFFFFFDC
 0047A64A    mov         dword ptr [ebp-4],eax
 0047A64D    mov         dword ptr [ebp-1C],201
 0047A654    lea         eax,[ebp-0C]
 0047A657    push        eax
 0047A658    call        user32.GetCursorPos
 0047A65D    lea         ecx,[ebp-24]
 0047A660    lea         edx,[ebp-0C]
 0047A663    mov         eax,dword ptr [ebp-4]
 0047A666    call        TControl.ScreenToClient
 0047A66B    lea         eax,[ebp-24]
 0047A66E    call        00408664
 0047A673    mov         dword ptr [ebp-14],eax
 0047A676    xor         eax,eax
 0047A678    mov         dword ptr [ebp-18],eax
 0047A67B    xor         eax,eax
 0047A67D    mov         dword ptr [ebp-10],eax
 0047A680    lea         edx,[ebp-1C]
 0047A683    mov         eax,dword ptr [ebp-4]
 0047A686    mov         ecx,dword ptr [eax]
 0047A688    call        dword ptr [ecx-10];TCustomListBox.DefaultHandler
 0047A68B    mov         dword ptr [ebp-1C],202
 0047A692    lea         edx,[ebp-1C]
 0047A695    mov         eax,dword ptr [ebp-4]
 0047A698    mov         ecx,dword ptr [eax]
 0047A69A    call        dword ptr [ecx-10];TCustomListBox.DefaultHandler
 0047A69D    mov         esp,ebp
 0047A69F    pop         ebp
 0047A6A0    ret
*}
end;

//0047A6A4
{*procedure sub_0047A6A4(?:?; ?:?; ?:?);
begin
 0047A6A4    push        ebp
 0047A6A5    mov         ebp,esp
 0047A6A7    add         esp,0FFFFFFE0
 0047A6AA    push        ebx
 0047A6AB    push        esi
 0047A6AC    push        edi
 0047A6AD    xor         ebx,ebx
 0047A6AF    mov         dword ptr [ebp-10],ebx
 0047A6B2    mov         esi,ecx
 0047A6B4    lea         edi,[ebp-20]
 0047A6B7    movs        dword ptr [edi],dword ptr [esi]
 0047A6B8    movs        dword ptr [edi],dword ptr [esi]
 0047A6B9    movs        dword ptr [edi],dword ptr [esi]
 0047A6BA    movs        dword ptr [edi],dword ptr [esi]
 0047A6BB    mov         dword ptr [ebp-8],edx
 0047A6BE    mov         dword ptr [ebp-4],eax
 0047A6C1    xor         eax,eax
 0047A6C3    push        ebp
 0047A6C4    push        47A7CD
 0047A6C9    push        dword ptr fs:[eax]
 0047A6CC    mov         dword ptr fs:[eax],esp
 0047A6CF    mov         eax,dword ptr [ebp-4]
 0047A6D2    cmp         word ptr [eax+252],0;TCustomListBox.?f252:word
>0047A6DA    je          0047A6FF
 0047A6DC    lea         eax,[ebp-20]
 0047A6DF    push        eax
 0047A6E0    mov         ax,word ptr [ebp+8]
 0047A6E4    push        eax
 0047A6E5    mov         ebx,dword ptr [ebp-4]
 0047A6E8    mov         ecx,dword ptr [ebp-8]
 0047A6EB    mov         edx,dword ptr [ebp-4]
 0047A6EE    mov         eax,dword ptr [ebx+254];TCustomListBox.?f254:dword
 0047A6F4    call        dword ptr [ebx+250];TCustomListBox.FOnDrawItem
>0047A6FA    jmp         0047A7B7
 0047A6FF    lea         edx,[ebp-20]
 0047A702    mov         eax,dword ptr [ebp-4]
 0047A705    mov         eax,dword ptr [eax+228];TCustomListBox.FCanvas:TCanvas
 0047A70B    call        0042F030
 0047A710    mov         eax,dword ptr [ebp-4]
 0047A713    mov         edx,dword ptr [eax]
 0047A715    call        dword ptr [edx+0C8];TCustomListBox.sub_004797D4
 0047A71B    cmp         eax,dword ptr [ebp-8]
>0047A71E    jle         0047A7B7
 0047A724    mov         edx,824
 0047A729    mov         eax,dword ptr [ebp-4]
 0047A72C    call        00486778
 0047A731    mov         dword ptr [ebp-0C],eax
 0047A734    mov         eax,dword ptr [ebp-4]
 0047A737    mov         si,0FFC8
 0047A73B    call        @CallDynaInst;TControl.sub_0048415C
 0047A740    test        al,al
>0047A742    jne         0047A74A
 0047A744    add         dword ptr [ebp-20],2
>0047A748    jmp         0047A74E
 0047A74A    sub         dword ptr [ebp-18],2
 0047A74E    lea         eax,[ebp-10]
 0047A751    call        @LStrClr
 0047A756    mov         eax,dword ptr [ebp-4]
 0047A759    mov         al,byte ptr [eax+238];TCustomListBox.FStyle:TListBoxStyle
 0047A75F    add         al,0FD
 0047A761    sub         al,2
>0047A763    jae         0047A775
 0047A765    lea         ecx,[ebp-10]
 0047A768    mov         edx,dword ptr [ebp-8]
 0047A76B    mov         eax,dword ptr [ebp-4]
 0047A76E    call        0047ADBC
>0047A773    jmp         0047A789
 0047A775    lea         ecx,[ebp-10]
 0047A778    mov         edx,dword ptr [ebp-8]
 0047A77B    mov         eax,dword ptr [ebp-4]
 0047A77E    mov         eax,dword ptr [eax+218];TCustomListBox.FItems:TStrings
 0047A784    mov         ebx,dword ptr [eax]
 0047A786    call        dword ptr [ebx+0C];@AbstractError
 0047A789    mov         eax,dword ptr [ebp-0C]
 0047A78C    push        eax
 0047A78D    lea         eax,[ebp-20]
 0047A790    push        eax
 0047A791    mov         eax,dword ptr [ebp-10]
 0047A794    call        @LStrLen
 0047A799    push        eax
 0047A79A    mov         eax,dword ptr [ebp-10]
 0047A79D    call        @LStrToPChar
 0047A7A2    push        eax
 0047A7A3    mov         eax,dword ptr [ebp-4]
 0047A7A6    mov         eax,dword ptr [eax+228];TCustomListBox.FCanvas:TCanvas
 0047A7AC    call        0042F6A0
 0047A7B1    push        eax
 0047A7B2    call        user32.DrawTextA
 0047A7B7    xor         eax,eax
 0047A7B9    pop         edx
 0047A7BA    pop         ecx
 0047A7BB    pop         ecx
 0047A7BC    mov         dword ptr fs:[eax],edx
 0047A7BF    push        47A7D4
 0047A7C4    lea         eax,[ebp-10]
 0047A7C7    call        @LStrClr
 0047A7CC    ret
>0047A7CD    jmp         @HandleFinally
>0047A7D2    jmp         0047A7C4
 0047A7D4    pop         edi
 0047A7D5    pop         esi
 0047A7D6    pop         ebx
 0047A7D7    mov         esp,ebp
 0047A7D9    pop         ebp
 0047A7DA    ret         4
end;*}

//0047A7E0
{*procedure sub_0047A7E0(?:?; ?:?);
begin
 0047A7E0    push        ebp
 0047A7E1    mov         ebp,esp
 0047A7E3    add         esp,0FFFFFFF4
 0047A7E6    push        ebx
 0047A7E7    mov         dword ptr [ebp-0C],ecx
 0047A7EA    mov         dword ptr [ebp-8],edx
 0047A7ED    mov         dword ptr [ebp-4],eax
 0047A7F0    mov         eax,dword ptr [ebp-4]
 0047A7F3    cmp         word ptr [eax+25A],0;TCustomListBox.?f25A:word
>0047A7FB    je          0047A816
 0047A7FD    mov         eax,dword ptr [ebp-0C]
 0047A800    push        eax
 0047A801    mov         ebx,dword ptr [ebp-4]
 0047A804    mov         ecx,dword ptr [ebp-8]
 0047A807    mov         edx,dword ptr [ebp-4]
 0047A80A    mov         eax,dword ptr [ebx+25C];TCustomListBox.?f25C:dword
 0047A810    call        dword ptr [ebx+258];TCustomListBox.FOnMeasureItem
 0047A816    pop         ebx
 0047A817    mov         esp,ebp
 0047A819    pop         ebp
 0047A81A    ret
end;*}

//0047A81C
{*procedure TCustomListBox.sub_0047A81C(?:?);
begin
 0047A81C    push        ebp
 0047A81D    mov         ebp,esp
 0047A81F    add         esp,0FFFFFFF0
 0047A822    push        ebx
 0047A823    mov         dword ptr [ebp-8],edx
 0047A826    mov         dword ptr [ebp-4],eax
 0047A829    mov         eax,dword ptr [ebp-8]
 0047A82C    mov         eax,dword ptr [eax+8]
 0047A82F    mov         dword ptr [ebp-10],eax
 0047A832    mov         eax,dword ptr [ebp-10]
 0047A835    mov         ax,word ptr [eax+10]
 0047A839    mov         word ptr [ebp-0A],ax
 0047A83D    mov         eax,dword ptr [ebp-10]
 0047A840    mov         edx,dword ptr [eax+18]
 0047A843    mov         eax,dword ptr [ebp-4]
 0047A846    mov         eax,dword ptr [eax+228];TCustomListBox.FCanvas:TCanvas
 0047A84C    call        TCanvas.SetHandle
 0047A851    mov         eax,dword ptr [ebp-4]
 0047A854    mov         edx,dword ptr [eax+68];TCustomListBox.FFont:TFont
 0047A857    mov         eax,dword ptr [ebp-4]
 0047A85A    mov         eax,dword ptr [eax+228];TCustomListBox.FCanvas:TCanvas
 0047A860    call        TCanvas.SetFont
 0047A865    mov         eax,dword ptr [ebp-4]
 0047A868    mov         edx,dword ptr [eax+170];TCustomListBox.FBrush:TBrush
 0047A86E    mov         eax,dword ptr [ebp-4]
 0047A871    mov         eax,dword ptr [eax+228];TCustomListBox.FCanvas:TCanvas
 0047A877    call        TCanvas.SetBrush
 0047A87C    mov         eax,dword ptr [ebp-10]
 0047A87F    cmp         dword ptr [eax+8],0
>0047A883    jl          0047A8B7
 0047A885    test        byte ptr [ebp-0A],1
>0047A889    je          0047A8B7
 0047A88B    mov         eax,dword ptr [ebp-4]
 0047A88E    mov         eax,dword ptr [eax+228];TCustomListBox.FCanvas:TCanvas
 0047A894    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 0047A897    mov         edx,0FF00000D
 0047A89C    call        TBrush.SetColor
 0047A8A1    mov         eax,dword ptr [ebp-4]
 0047A8A4    mov         eax,dword ptr [eax+228];TCustomListBox.FCanvas:TCanvas
 0047A8AA    mov         eax,dword ptr [eax+0C];TCanvas.Font:TFont
 0047A8AD    mov         edx,0FF00000E
 0047A8B2    call        TFont.SetColor
 0047A8B7    mov         eax,dword ptr [ebp-10]
 0047A8BA    cmp         dword ptr [eax+8],0
>0047A8BE    jl          0047A8DE
 0047A8C0    mov         ax,word ptr [ebp-0A]
 0047A8C4    push        eax
 0047A8C5    mov         eax,dword ptr [ebp-10]
 0047A8C8    lea         ecx,[eax+1C]
 0047A8CB    mov         eax,dword ptr [ebp-10]
 0047A8CE    mov         edx,dword ptr [eax+8]
 0047A8D1    mov         eax,dword ptr [ebp-4]
 0047A8D4    mov         ebx,dword ptr [eax]
 0047A8D6    call        dword ptr [ebx+0F8];TCustomListBox.sub_0047A6A4
>0047A8DC    jmp         0047A8F2
 0047A8DE    mov         eax,dword ptr [ebp-10]
 0047A8E1    lea         edx,[eax+1C]
 0047A8E4    mov         eax,dword ptr [ebp-4]
 0047A8E7    mov         eax,dword ptr [eax+228];TCustomListBox.FCanvas:TCanvas
 0047A8ED    call        0042F030
 0047A8F2    test        byte ptr [ebp-0A],10
>0047A8F6    je          0047A90B
 0047A8F8    mov         eax,dword ptr [ebp-10]
 0047A8FB    add         eax,1C
 0047A8FE    push        eax
 0047A8FF    mov         eax,dword ptr [ebp-10]
 0047A902    mov         eax,dword ptr [eax+18]
 0047A905    push        eax
 0047A906    call        user32.DrawFocusRect
 0047A90B    xor         edx,edx
 0047A90D    mov         eax,dword ptr [ebp-4]
 0047A910    mov         eax,dword ptr [eax+228];TCustomListBox.FCanvas:TCanvas
 0047A916    call        TCanvas.SetHandle
 0047A91B    pop         ebx
 0047A91C    mov         esp,ebp
 0047A91E    pop         ebp
 0047A91F    ret
end;*}

//0047A920
{*procedure TCustomListBox.sub_0047A920(?:?);
begin
 0047A920    push        ebp
 0047A921    mov         ebp,esp
 0047A923    add         esp,0FFFFFFF4
 0047A926    push        ebx
 0047A927    mov         dword ptr [ebp-8],edx
 0047A92A    mov         dword ptr [ebp-4],eax
 0047A92D    mov         eax,dword ptr [ebp-8]
 0047A930    mov         eax,dword ptr [eax+8]
 0047A933    mov         dword ptr [ebp-0C],eax
 0047A936    mov         eax,dword ptr [ebp-4]
 0047A939    mov         eax,dword ptr [eax+230];TCustomListBox.FItemHeight:Integer
 0047A93F    mov         edx,dword ptr [ebp-0C]
 0047A942    mov         dword ptr [edx+10],eax
 0047A945    mov         eax,dword ptr [ebp-4]
 0047A948    cmp         byte ptr [eax+238],2;TCustomListBox.FStyle:TListBoxStyle
>0047A94F    jne         0047A968
 0047A951    mov         eax,dword ptr [ebp-0C]
 0047A954    lea         ecx,[eax+10]
 0047A957    mov         eax,dword ptr [ebp-0C]
 0047A95A    mov         edx,dword ptr [eax+8]
 0047A95D    mov         eax,dword ptr [ebp-4]
 0047A960    mov         ebx,dword ptr [eax]
 0047A962    call        dword ptr [ebx+0FC];TCustomListBox.sub_0047A7E0
 0047A968    pop         ebx
 0047A969    mov         esp,ebp
 0047A96B    pop         ebp
 0047A96C    ret
end;*}

//0047A970
{*procedure TCustomListBox.CMCtl3DChanged(?:?);
begin
 0047A970    push        ebp
 0047A971    mov         ebp,esp
 0047A973    add         esp,0FFFFFFF8
 0047A976    mov         dword ptr [ebp-8],edx
 0047A979    mov         dword ptr [ebp-4],eax
 0047A97C    mov         eax,[0056E264];^NewStyleControls:Boolean
 0047A981    cmp         byte ptr [eax],0
>0047A984    je          0047A99A
 0047A986    mov         eax,dword ptr [ebp-4]
 0047A989    cmp         byte ptr [eax+224],1;TCustomListBox.FBorderStyle:TBorderStyle
>0047A990    jne         0047A99A
 0047A992    mov         eax,dword ptr [ebp-4]
 0047A995    call        TWinControl.RecreateWnd
 0047A99A    mov         edx,dword ptr [ebp-8]
 0047A99D    mov         eax,dword ptr [ebp-4]
 0047A9A0    call        TWinControl.CMCtl3DChanged
 0047A9A5    pop         ecx
 0047A9A6    pop         ecx
 0047A9A7    pop         ebp
 0047A9A8    ret
end;*}

//0047A9AC
procedure sub_0047A9AC;
begin
{*
 0047A9AC    push        ebp
 0047A9AD    mov         ebp,esp
 0047A9AF    add         esp,0FFFFFFF4
 0047A9B2    mov         dword ptr [ebp-4],eax
 0047A9B5    mov         eax,dword ptr [ebp-4]
 0047A9B8    cmp         byte ptr [eax+208],0;TCustomListBox.........................FMultiSelect:Boolean
>0047A9BF    je          0047A9F4
 0047A9C1    mov         eax,dword ptr [ebp-4]
 0047A9C4    mov         eax,dword ptr [eax+218];TCustomListBox.FItems:TStrings
 0047A9CA    mov         edx,dword ptr [eax]
 0047A9CC    call        dword ptr [edx+14];@AbstractError
 0047A9CF    dec         eax
 0047A9D0    test        eax,eax
>0047A9D2    jl          0047A9F4
 0047A9D4    inc         eax
 0047A9D5    mov         dword ptr [ebp-0C],eax
 0047A9D8    mov         dword ptr [ebp-8],0
 0047A9DF    mov         cl,1
 0047A9E1    mov         edx,dword ptr [ebp-8]
 0047A9E4    mov         eax,dword ptr [ebp-4]
 0047A9E7    call        00479A78
 0047A9EC    inc         dword ptr [ebp-8]
 0047A9EF    dec         dword ptr [ebp-0C]
>0047A9F2    jne         0047A9DF
 0047A9F4    mov         esp,ebp
 0047A9F6    pop         ebp
 0047A9F7    ret
*}
end;

//0047A9F8
{*procedure sub_0047A9F8(?:?);
begin
 0047A9F8    push        ebp
 0047A9F9    mov         ebp,esp
 0047A9FB    push        ecx
 0047A9FC    push        esi
 0047A9FD    mov         eax,dword ptr [ebp+8]
 0047AA00    mov         eax,dword ptr [eax-4]
 0047AA03    mov         al,byte ptr [eax+238]
 0047AA09    add         al,0FD
 0047AA0B    sub         al,2
>0047AA0D    jae         0047AA2B
 0047AA0F    mov         eax,dword ptr [ebp+8]
 0047AA12    mov         eax,dword ptr [eax-4]
 0047AA15    mov         edx,dword ptr [eax+21C]
 0047AA1B    mov         eax,dword ptr [ebp+8]
 0047AA1E    mov         eax,dword ptr [eax-4]
 0047AA21    call        0047AE34
 0047AA26    mov         dword ptr [ebp-4],eax
>0047AA29    jmp         0047AA58
 0047AA2B    mov         eax,dword ptr [ebp+8]
 0047AA2E    mov         eax,dword ptr [eax-4]
 0047AA31    mov         eax,dword ptr [eax+21C]
 0047AA37    call        @LStrToPChar
 0047AA3C    push        eax
 0047AA3D    push        0FF
 0047AA3F    push        18F
 0047AA44    mov         eax,dword ptr [ebp+8]
 0047AA47    mov         eax,dword ptr [eax-4]
 0047AA4A    call        TWinControl.GetHandle
 0047AA4F    push        eax
 0047AA50    call        user32.SendMessageA
 0047AA55    mov         dword ptr [ebp-4],eax
 0047AA58    cmp         dword ptr [ebp-4],0FFFFFFFF
>0047AA5C    je          0047AAC1
 0047AA5E    mov         eax,dword ptr [ebp+8]
 0047AA61    mov         eax,dword ptr [eax-4]
 0047AA64    cmp         byte ptr [eax+208],0
>0047AA6B    je          0047AAA1
 0047AA6D    mov         eax,dword ptr [ebp+8]
 0047AA70    mov         eax,dword ptr [eax-4]
 0047AA73    mov         edx,dword ptr [eax]
 0047AA75    call        dword ptr [edx+0DC]
 0047AA7B    mov         dx,word ptr [ebp-4]
 0047AA7F    mov         ax,word ptr [ebp-4]
 0047AA83    call        004086B4
 0047AA88    push        eax
 0047AA89    push        1
 0047AA8B    push        19B
 0047AA90    mov         eax,dword ptr [ebp+8]
 0047AA93    mov         eax,dword ptr [eax-4]
 0047AA96    call        TWinControl.GetHandle
 0047AA9B    push        eax
 0047AA9C    call        user32.SendMessageA
 0047AAA1    mov         eax,dword ptr [ebp+8]
 0047AAA4    mov         eax,dword ptr [eax-4]
 0047AAA7    mov         edx,dword ptr [ebp-4]
 0047AAAA    mov         ecx,dword ptr [eax]
 0047AAAC    call        dword ptr [ecx+0D0]
 0047AAB2    mov         eax,dword ptr [ebp+8]
 0047AAB5    mov         eax,dword ptr [eax-4]
 0047AAB8    mov         si,0FFEB
 0047AABC    call        @CallDynaInst
 0047AAC1    mov         eax,dword ptr [ebp+8]
 0047AAC4    mov         eax,dword ptr [eax-8]
 0047AAC7    mov         al,byte ptr [eax]
 0047AAC9    sub         al,8
>0047AACB    je          0047AADE
 0047AACD    sub         al,5
>0047AACF    je          0047AADE
 0047AAD1    sub         al,0E
>0047AAD3    je          0047AADE
 0047AAD5    mov         eax,dword ptr [ebp+8]
 0047AAD8    mov         eax,dword ptr [eax-8]
 0047AADB    mov         byte ptr [eax],0
 0047AADE    pop         esi
 0047AADF    pop         ecx
 0047AAE0    pop         ebp
 0047AAE1    ret
end;*}

//0047AAE4
{*procedure TCustomListBox.sub_0047AAE4(?:?);
begin
 0047AAE4    push        ebp
 0047AAE5    mov         ebp,esp
 0047AAE7    add         esp,0FFFFFFD0
 0047AAEA    push        esi
 0047AAEB    xor         ecx,ecx
 0047AAED    mov         dword ptr [ebp-30],ecx
 0047AAF0    mov         dword ptr [ebp-28],ecx
 0047AAF3    mov         dword ptr [ebp-2C],ecx
 0047AAF6    mov         dword ptr [ebp-8],edx
 0047AAF9    mov         dword ptr [ebp-4],eax
 0047AAFC    xor         eax,eax
 0047AAFE    push        ebp
 0047AAFF    push        47ACB5
 0047AB04    push        dword ptr fs:[eax]
 0047AB07    mov         dword ptr fs:[eax],esp
 0047AB0A    mov         edx,dword ptr [ebp-8]
 0047AB0D    mov         eax,dword ptr [ebp-4]
 0047AB10    call        TWinControl.sub_0048AAD0
 0047AB15    mov         eax,dword ptr [ebp-4]
 0047AB18    cmp         byte ptr [eax+210],0;TCustomListBox.FAutoComplete:Boolean
>0047AB1F    je          0047AC9A
 0047AB25    call        kernel32.GetTickCount
 0047AB2A    mov         edx,dword ptr [ebp-4]
 0047AB2D    sub         eax,dword ptr [edx+220]
 0047AB33    cmp         eax,1F4
>0047AB38    jb          0047AB47
 0047AB3A    mov         eax,dword ptr [ebp-4]
 0047AB3D    add         eax,21C;TCustomListBox.FFilter:String
 0047AB42    call        @LStrClr
 0047AB47    call        kernel32.GetTickCount
 0047AB4C    mov         edx,dword ptr [ebp-4]
 0047AB4F    mov         dword ptr [edx+220],eax;TCustomListBox.FLastTime:Cardinal
 0047AB55    mov         eax,dword ptr [ebp-8]
 0047AB58    mov         al,byte ptr [eax]
 0047AB5A    cmp         al,8
>0047AB5C    je          0047AC22
 0047AB62    mov         eax,dword ptr [ebp-8]
 0047AB65    mov         al,byte ptr [eax]
 0047AB67    mov         edx,dword ptr ds:[56E618];^gvar_0056B820
 0047AB6D    and         eax,0FF
 0047AB72    bt          dword ptr [edx],eax
>0047AB75    jae         0047ABE1
 0047AB77    push        1
 0047AB79    push        102
 0047AB7E    push        102
 0047AB83    mov         eax,dword ptr [ebp-4]
 0047AB86    call        TWinControl.GetHandle
 0047AB8B    push        eax
 0047AB8C    lea         eax,[ebp-24]
 0047AB8F    push        eax
 0047AB90    call        user32.PeekMessageA
 0047AB95    test        eax,eax
>0047AB97    je          0047AC66
 0047AB9D    mov         eax,dword ptr [ebp-4]
 0047ABA0    push        dword ptr [eax+21C];TCustomListBox.FFilter:String
 0047ABA6    lea         eax,[ebp-28]
 0047ABA9    mov         edx,dword ptr [ebp-8]
 0047ABAC    mov         dl,byte ptr [edx]
 0047ABAE    call        @LStrFromChar
 0047ABB3    push        dword ptr [ebp-28]
 0047ABB6    lea         eax,[ebp-2C]
 0047ABB9    mov         edx,dword ptr [ebp-1C]
 0047ABBC    call        @LStrFromChar
 0047ABC1    push        dword ptr [ebp-2C]
 0047ABC4    mov         eax,dword ptr [ebp-4]
 0047ABC7    add         eax,21C;TCustomListBox.FFilter:String
 0047ABCC    mov         edx,3
 0047ABD1    call        @LStrCatN
 0047ABD6    mov         eax,dword ptr [ebp-8]
 0047ABD9    mov         byte ptr [eax],0
>0047ABDC    jmp         0047AC66
 0047ABE1    lea         eax,[ebp-30]
 0047ABE4    mov         edx,dword ptr [ebp-8]
 0047ABE7    mov         dl,byte ptr [edx]
 0047ABE9    call        @LStrFromChar
 0047ABEE    mov         edx,dword ptr [ebp-30]
 0047ABF1    mov         eax,dword ptr [ebp-4]
 0047ABF4    add         eax,21C;TCustomListBox.FFilter:String
 0047ABF9    call        @LStrCat
>0047ABFE    jmp         0047AC66
 0047AC00    mov         eax,dword ptr [ebp-4]
 0047AC03    mov         eax,dword ptr [eax+21C];TCustomListBox.FFilter:String
 0047AC09    call        @LStrLen
 0047AC0E    mov         edx,eax
 0047AC10    mov         eax,dword ptr [ebp-4]
 0047AC13    add         eax,21C;TCustomListBox.FFilter:String
 0047AC18    mov         ecx,1
 0047AC1D    call        @LStrDelete
 0047AC22    mov         eax,dword ptr [ebp-4]
 0047AC25    mov         eax,dword ptr [eax+21C];TCustomListBox.FFilter:String
 0047AC2B    call        @LStrLen
 0047AC30    mov         edx,eax
 0047AC32    mov         eax,dword ptr [ebp-4]
 0047AC35    mov         eax,dword ptr [eax+21C];TCustomListBox.FFilter:String
 0047AC3B    call        00411160
 0047AC40    cmp         al,2
>0047AC42    je          0047AC00
 0047AC44    mov         eax,dword ptr [ebp-4]
 0047AC47    mov         eax,dword ptr [eax+21C];TCustomListBox.FFilter:String
 0047AC4D    call        @LStrLen
 0047AC52    mov         edx,eax
 0047AC54    mov         eax,dword ptr [ebp-4]
 0047AC57    add         eax,21C;TCustomListBox.FFilter:String
 0047AC5C    mov         ecx,1
 0047AC61    call        @LStrDelete
 0047AC66    mov         eax,dword ptr [ebp-4]
 0047AC69    mov         eax,dword ptr [eax+21C];TCustomListBox.FFilter:String
 0047AC6F    call        @LStrLen
 0047AC74    test        eax,eax
>0047AC76    jle         0047AC81
 0047AC78    push        ebp
 0047AC79    call        0047A9F8
 0047AC7E    pop         ecx
>0047AC7F    jmp         0047AC9A
 0047AC81    xor         edx,edx
 0047AC83    mov         eax,dword ptr [ebp-4]
 0047AC86    mov         ecx,dword ptr [eax]
 0047AC88    call        dword ptr [ecx+0D0];TCustomListBox.sub_00479840
 0047AC8E    mov         eax,dword ptr [ebp-4]
 0047AC91    mov         si,0FFEB
 0047AC95    call        @CallDynaInst;TControl.sub_004854CC
 0047AC9A    xor         eax,eax
 0047AC9C    pop         edx
 0047AC9D    pop         ecx
 0047AC9E    pop         ecx
 0047AC9F    mov         dword ptr fs:[eax],edx
 0047ACA2    push        47ACBC
 0047ACA7    lea         eax,[ebp-30]
 0047ACAA    mov         edx,3
 0047ACAF    call        @LStrArrayClr
 0047ACB4    ret
>0047ACB5    jmp         @HandleFinally
>0047ACBA    jmp         0047ACA7
 0047ACBC    pop         esi
 0047ACBD    mov         esp,ebp
 0047ACBF    pop         ebp
 0047ACC0    ret
end;*}

//0047ACC4
procedure sub_0047ACC4(?:TCustomListBox; ?:Integer);
begin
{*
 0047ACC4    push        ebp
 0047ACC5    mov         ebp,esp
 0047ACC7    add         esp,0FFFFFFE4
 0047ACCA    xor         ecx,ecx
 0047ACCC    mov         dword ptr [ebp-1C],ecx
 0047ACCF    mov         dword ptr [ebp-18],ecx
 0047ACD2    mov         dword ptr [ebp-8],edx
 0047ACD5    mov         dword ptr [ebp-4],eax
 0047ACD8    xor         eax,eax
 0047ACDA    push        ebp
 0047ACDB    push        47ADB0
 0047ACE0    push        dword ptr fs:[eax]
 0047ACE3    mov         dword ptr fs:[eax],esp
 0047ACE6    mov         eax,dword ptr [ebp-4]
 0047ACE9    mov         al,byte ptr [eax+238];TCustomListBox.FStyle:TListBoxStyle
 0047ACEF    add         al,0FD
 0047ACF1    sub         al,2
>0047ACF3    jae         0047AD61
 0047ACF5    push        0
 0047ACF7    mov         eax,dword ptr [ebp-8]
 0047ACFA    push        eax
 0047ACFB    push        1A7
 0047AD00    mov         eax,dword ptr [ebp-4]
 0047AD03    call        TWinControl.GetHandle
 0047AD08    push        eax
 0047AD09    call        user32.SendMessageA
 0047AD0E    mov         dword ptr [ebp-0C],eax
 0047AD11    cmp         dword ptr [ebp-0C],0FFFFFFFF
>0047AD15    je          0047AD2B
 0047AD17    cmp         dword ptr [ebp-0C],0FFFFFFFE
>0047AD1B    je          0047AD2B
 0047AD1D    mov         eax,dword ptr [ebp-8]
 0047AD20    mov         edx,dword ptr [ebp-4]
 0047AD23    mov         dword ptr [edx+214],eax;TCustomListBox.FCount:Integer
>0047AD29    jmp         0047AD95
 0047AD2B    mov         eax,dword ptr [ebp-4]
 0047AD2E    mov         eax,dword ptr [eax+8];TCustomListBox.Name:TComponentName
 0047AD31    mov         dword ptr [ebp-14],eax
 0047AD34    mov         byte ptr [ebp-10],0B
 0047AD38    lea         eax,[ebp-14]
 0047AD3B    push        eax
 0047AD3C    push        0
 0047AD3E    lea         edx,[ebp-18]
 0047AD41    mov         eax,[0056E4A0];^SErrorSettingCount:TResStringRec
 0047AD46    call        LoadResString
 0047AD4B    mov         ecx,dword ptr [ebp-18]
 0047AD4E    mov         dl,1
 0047AD50    mov         eax,[0040B004];Exception
 0047AD55    call        Exception.CreateFmt;Exception.Create
 0047AD5A    call        @RaiseExcept
>0047AD5F    jmp         0047AD95
 0047AD61    mov         eax,dword ptr [ebp-4]
 0047AD64    mov         eax,dword ptr [eax+8];TCustomListBox.Name:TComponentName
 0047AD67    mov         dword ptr [ebp-14],eax
 0047AD6A    mov         byte ptr [ebp-10],0B
 0047AD6E    lea         eax,[ebp-14]
 0047AD71    push        eax
 0047AD72    push        0
 0047AD74    lea         edx,[ebp-1C]
 0047AD77    mov         eax,[0056E174];^SListBoxMustBeVirtual:TResStringRec
 0047AD7C    call        LoadResString
 0047AD81    mov         ecx,dword ptr [ebp-1C]
 0047AD84    mov         dl,1
 0047AD86    mov         eax,[0040B004];Exception
 0047AD8B    call        Exception.CreateFmt;Exception.Create
 0047AD90    call        @RaiseExcept
 0047AD95    xor         eax,eax
 0047AD97    pop         edx
 0047AD98    pop         ecx
 0047AD99    pop         ecx
 0047AD9A    mov         dword ptr fs:[eax],edx
 0047AD9D    push        47ADB7
 0047ADA2    lea         eax,[ebp-1C]
 0047ADA5    mov         edx,2
 0047ADAA    call        @LStrArrayClr
 0047ADAF    ret
>0047ADB0    jmp         @HandleFinally
>0047ADB5    jmp         0047ADA2
 0047ADB7    mov         esp,ebp
 0047ADB9    pop         ebp
 0047ADBA    ret
*}
end;

//0047ADBC
{*procedure sub_0047ADBC(?:TCustomListBox; ?:?; ?:AnsiString);
begin
 0047ADBC    push        ebp
 0047ADBD    mov         ebp,esp
 0047ADBF    add         esp,0FFFFFFF4
 0047ADC2    push        ebx
 0047ADC3    mov         dword ptr [ebp-0C],ecx
 0047ADC6    mov         dword ptr [ebp-8],edx
 0047ADC9    mov         dword ptr [ebp-4],eax
 0047ADCC    mov         eax,dword ptr [ebp-4]
 0047ADCF    cmp         word ptr [eax+262],0;TCustomListBox.?f262:word
>0047ADD7    je          0047ADF2
 0047ADD9    mov         eax,dword ptr [ebp-0C]
 0047ADDC    push        eax
 0047ADDD    mov         ebx,dword ptr [ebp-4]
 0047ADE0    mov         ecx,dword ptr [ebp-8]
 0047ADE3    mov         edx,dword ptr [ebp-4]
 0047ADE6    mov         eax,dword ptr [ebx+264];TCustomListBox.?f264:dword
 0047ADEC    call        dword ptr [ebx+260];TCustomListBox.FOnData
 0047ADF2    pop         ebx
 0047ADF3    mov         esp,ebp
 0047ADF5    pop         ebp
 0047ADF6    ret
end;*}

//0047ADF8
{*function sub_0047ADF8(?:TCustomListBox; ?:?):?;
begin
 0047ADF8    push        ebp
 0047ADF9    mov         ebp,esp
 0047ADFB    add         esp,0FFFFFFF4
 0047ADFE    push        ebx
 0047ADFF    mov         dword ptr [ebp-8],edx
 0047AE02    mov         dword ptr [ebp-4],eax
 0047AE05    mov         eax,dword ptr [ebp-4]
 0047AE08    cmp         word ptr [eax+272],0;TCustomListBox.?f272:word
>0047AE10    je          0047AE2B
 0047AE12    lea         eax,[ebp-0C]
 0047AE15    push        eax
 0047AE16    mov         ebx,dword ptr [ebp-4]
 0047AE19    mov         ecx,dword ptr [ebp-8]
 0047AE1C    mov         edx,dword ptr [ebp-4]
 0047AE1F    mov         eax,dword ptr [ebx+274];TCustomListBox.?f274:dword
 0047AE25    call        dword ptr [ebx+270];TCustomListBox.FOnDataObject
 0047AE2B    mov         eax,dword ptr [ebp-0C]
 0047AE2E    pop         ebx
 0047AE2F    mov         esp,ebp
 0047AE31    pop         ebp
 0047AE32    ret
end;*}

//0047AE34
{*function sub_0047AE34(?:TCustomListBox; ?:?):?;
begin
 0047AE34    push        ebp
 0047AE35    mov         ebp,esp
 0047AE37    add         esp,0FFFFFFF4
 0047AE3A    push        ebx
 0047AE3B    mov         dword ptr [ebp-8],edx
 0047AE3E    mov         dword ptr [ebp-4],eax
 0047AE41    mov         eax,dword ptr [ebp-4]
 0047AE44    cmp         word ptr [eax+26A],0;TCustomListBox.?f26A:word
>0047AE4C    je          0047AE68
 0047AE4E    mov         ebx,dword ptr [ebp-4]
 0047AE51    mov         ecx,dword ptr [ebp-8]
 0047AE54    mov         edx,dword ptr [ebp-4]
 0047AE57    mov         eax,dword ptr [ebx+26C];TCustomListBox.?f26C:dword
 0047AE5D    call        dword ptr [ebx+268];TCustomListBox.FOnDataFind
 0047AE63    mov         dword ptr [ebp-0C],eax
>0047AE66    jmp         0047AE6F
 0047AE68    mov         dword ptr [ebp-0C],0FFFFFFFF
 0047AE6F    mov         eax,dword ptr [ebp-0C]
 0047AE72    pop         ebx
 0047AE73    mov         esp,ebp
 0047AE75    pop         ebp
 0047AE76    ret
end;*}

//0047AE78
{*function TListBox.GetScrollWidth:?;
begin
 0047AE78    push        ebp
 0047AE79    mov         ebp,esp
 0047AE7B    add         esp,0FFFFFFF8
 0047AE7E    mov         dword ptr [ebp-4],eax
 0047AE81    push        0
 0047AE83    push        0
 0047AE85    push        193
 0047AE8A    mov         eax,dword ptr [ebp-4]
 0047AE8D    call        TWinControl.GetHandle
 0047AE92    push        eax
 0047AE93    call        user32.SendMessageA
 0047AE98    mov         dword ptr [ebp-8],eax
 0047AE9B    mov         eax,dword ptr [ebp-8]
 0047AE9E    pop         ecx
 0047AE9F    pop         ecx
 0047AEA0    pop         ebp
 0047AEA1    ret
end;*}

//0047AEA4
procedure TListBox.SetScrollWidth(Value:Integer);
begin
{*
 0047AEA4    push        ebp
 0047AEA5    mov         ebp,esp
 0047AEA7    add         esp,0FFFFFFF8
 0047AEAA    mov         dword ptr [ebp-8],edx
 0047AEAD    mov         dword ptr [ebp-4],eax
 0047AEB0    mov         eax,dword ptr [ebp-4]
 0047AEB3    call        TListBox.GetScrollWidth
 0047AEB8    cmp         eax,dword ptr [ebp-8]
>0047AEBB    je          0047AED6
 0047AEBD    push        0
 0047AEBF    mov         eax,dword ptr [ebp-8]
 0047AEC2    push        eax
 0047AEC3    push        194
 0047AEC8    mov         eax,dword ptr [ebp-4]
 0047AECB    call        TWinControl.GetHandle
 0047AED0    push        eax
 0047AED1    call        user32.SendMessageA
 0047AED6    pop         ecx
 0047AED7    pop         ecx
 0047AED8    pop         ebp
 0047AED9    ret
*}
end;

//0047AEDC
constructor sub_0047AEDC;
begin
{*
 0047AEDC    push        ebp
 0047AEDD    mov         ebp,esp
 0047AEDF    add         esp,0FFFFFFF4
 0047AEE2    test        dl,dl
>0047AEE4    je          0047AEEE
 0047AEE6    add         esp,0FFFFFFF0
 0047AEE9    call        @ClassCreate
 0047AEEE    mov         dword ptr [ebp-0C],ecx
 0047AEF1    mov         byte ptr [ebp-5],dl
 0047AEF4    mov         dword ptr [ebp-4],eax
 0047AEF7    mov         ecx,dword ptr [ebp-0C]
 0047AEFA    xor         edx,edx
 0047AEFC    mov         eax,dword ptr [ebp-4]
 0047AEFF    call        00486BAC
 0047AF04    mov         eax,dword ptr [ebp-4]
 0047AF07    mov         edx,dword ptr ds:[47AF68];0x8AA gvar_0047AF68
 0047AF0D    mov         dword ptr [eax+50],edx;TCustomStaticText.FControlStyle:TControlStyle
 0047AF10    mov         edx,41
 0047AF15    mov         eax,dword ptr [ebp-4]
 0047AF18    call        TSplitter.SetWidth
 0047AF1D    mov         edx,11
 0047AF22    mov         eax,dword ptr [ebp-4]
 0047AF25    call        TToolButton.SetHeight
 0047AF2A    mov         eax,dword ptr [ebp-4]
 0047AF2D    mov         byte ptr [eax+209],1;TCustomStaticText.FAutoSize:Boolean
 0047AF34    mov         eax,dword ptr [ebp-4]
 0047AF37    mov         byte ptr [eax+210],1;TCustomStaticText.FShowAccelChar:Boolean
 0047AF3E    mov         eax,dword ptr [ebp-4]
 0047AF41    call        0047B130
 0047AF46    mov         eax,dword ptr [ebp-4]
 0047AF49    cmp         byte ptr [ebp-5],0
>0047AF4D    je          0047AF5E
 0047AF4F    call        @AfterConstruction
 0047AF54    pop         dword ptr fs:[0]
 0047AF5B    add         esp,0C
 0047AF5E    mov         eax,dword ptr [ebp-4]
 0047AF61    mov         esp,ebp
 0047AF63    pop         ebp
 0047AF64    ret
*}
end;

//0047AF6C
{*procedure sub_0047AF6C(?:?);
begin
 0047AF6C    push        ebp
 0047AF6D    mov         ebp,esp
 0047AF6F    add         esp,0FFFFFFF8
 0047AF72    push        esi
 0047AF73    mov         dword ptr [ebp-8],edx
 0047AF76    mov         dword ptr [ebp-4],eax
 0047AF79    mov         edx,dword ptr [ebp-8]
 0047AF7C    mov         eax,dword ptr [ebp-4]
 0047AF7F    call        00488034
 0047AF84    mov         ecx,47B004
 0047AF89    mov         edx,dword ptr [ebp-8]
 0047AF8C    mov         eax,dword ptr [ebp-4]
 0047AF8F    call        00487F0C
 0047AF94    mov         eax,dword ptr [ebp-4]
 0047AF97    mov         si,0FFC8
 0047AF9B    call        @CallDynaInst;TControl.sub_0048415C
 0047AFA0    and         eax,7F
 0047AFA3    lea         eax,[eax+eax*2]
 0047AFA6    lea         eax,[eax*4+56C74C]
 0047AFAD    mov         edx,dword ptr [ebp-4]
 0047AFB0    movzx       edx,byte ptr [edx+208];TCustomStaticText.FAlignment:TAlignment
 0047AFB7    mov         eax,dword ptr [eax+edx*4]
 0047AFBA    mov         edx,dword ptr [ebp-8]
 0047AFBD    mov         edx,dword ptr [edx+4]
 0047AFC0    or          edx,100
 0047AFC6    or          eax,edx
 0047AFC8    mov         edx,dword ptr [ebp-4]
 0047AFCB    movzx       edx,byte ptr [edx+20A];TCustomStaticText.FBorderStyle:TStaticBorderStyle
 0047AFD2    or          eax,dword ptr [edx*4+56C764]
 0047AFD9    mov         edx,dword ptr [ebp-8]
 0047AFDC    mov         dword ptr [edx+4],eax
 0047AFDF    mov         eax,dword ptr [ebp-4]
 0047AFE2    cmp         byte ptr [eax+210],0;TCustomStaticText.FShowAccelChar:Boolean
>0047AFE9    jne         0047AFF5
 0047AFEB    mov         eax,dword ptr [ebp-8]
 0047AFEE    or          dword ptr [eax+4],80
 0047AFF5    mov         eax,dword ptr [ebp-8]
 0047AFF8    and         dword ptr [eax+24],0FFFFFFFE
 0047AFFC    pop         esi
 0047AFFD    pop         ecx
 0047AFFE    pop         ecx
 0047AFFF    pop         ebp
 0047B000    ret
end;*}

//0047B00C
{*procedure TCustomStaticText.CMDialogChar(?:?);
begin
 0047B00C    push        ebp
 0047B00D    mov         ebp,esp
 0047B00F    add         esp,0FFFFFFF0
 0047B012    push        esi
 0047B013    xor         ecx,ecx
 0047B015    mov         dword ptr [ebp-10],ecx
 0047B018    mov         dword ptr [ebp-8],edx
 0047B01B    mov         dword ptr [ebp-4],eax
 0047B01E    xor         eax,eax
 0047B020    push        ebp
 0047B021    push        47B0B5
 0047B026    push        dword ptr fs:[eax]
 0047B029    mov         dword ptr fs:[eax],esp
 0047B02C    mov         eax,dword ptr [ebp-4]
 0047B02F    cmp         dword ptr [eax+20C],0;TCustomStaticText.FFocusControl:TWinControl
>0047B036    je          0047B09F
 0047B038    mov         eax,dword ptr [ebp-4]
 0047B03B    mov         edx,dword ptr [eax]
 0047B03D    call        dword ptr [edx+50];TImage.GetEnabled
 0047B040    test        al,al
>0047B042    je          0047B09F
 0047B044    mov         eax,dword ptr [ebp-4]
 0047B047    cmp         byte ptr [eax+210],0;TCustomStaticText.FShowAccelChar:Boolean
>0047B04E    je          0047B09F
 0047B050    lea         edx,[ebp-10]
 0047B053    mov         eax,dword ptr [ebp-4]
 0047B056    call        TPanel.GetCaption
 0047B05B    mov         edx,dword ptr [ebp-10]
 0047B05E    mov         eax,dword ptr [ebp-8]
 0047B061    mov         ax,word ptr [eax+4]
 0047B065    call        004A06C8
 0047B06A    test        al,al
>0047B06C    je          0047B09F
 0047B06E    mov         eax,dword ptr [ebp-4]
 0047B071    mov         eax,dword ptr [eax+20C];TCustomStaticText.FFocusControl:TWinControl
 0047B077    mov         dword ptr [ebp-0C],eax
 0047B07A    mov         eax,dword ptr [ebp-0C]
 0047B07D    mov         si,0FFB8
 0047B081    call        @CallDynaInst;TWinControl.sub_0048BFC8
 0047B086    test        al,al
>0047B088    je          0047B09F
 0047B08A    mov         eax,dword ptr [ebp-0C]
 0047B08D    mov         edx,dword ptr [eax]
 0047B08F    call        dword ptr [edx+0C4];TWinControl.sub_0048C028
 0047B095    mov         eax,dword ptr [ebp-8]
 0047B098    mov         dword ptr [eax+0C],1
 0047B09F    xor         eax,eax
 0047B0A1    pop         edx
 0047B0A2    pop         ecx
 0047B0A3    pop         ecx
 0047B0A4    mov         dword ptr fs:[eax],edx
 0047B0A7    push        47B0BC
 0047B0AC    lea         eax,[ebp-10]
 0047B0AF    call        @LStrClr
 0047B0B4    ret
>0047B0B5    jmp         @HandleFinally
>0047B0BA    jmp         0047B0AC
 0047B0BC    pop         esi
 0047B0BD    mov         esp,ebp
 0047B0BF    pop         ebp
 0047B0C0    ret
end;*}

//0047B0C4
{*procedure TCustomStaticText.CMFontChanged(?:?);
begin
 0047B0C4    push        ebp
 0047B0C5    mov         ebp,esp
 0047B0C7    add         esp,0FFFFFFF8
 0047B0CA    mov         dword ptr [ebp-8],edx
 0047B0CD    mov         dword ptr [ebp-4],eax
 0047B0D0    mov         edx,dword ptr [ebp-8]
 0047B0D3    mov         eax,dword ptr [ebp-4]
 0047B0D6    call        TWinControl.CMFontChanged
 0047B0DB    mov         eax,dword ptr [ebp-4]
 0047B0DE    call        0047B130
 0047B0E3    pop         ecx
 0047B0E4    pop         ecx
 0047B0E5    pop         ebp
 0047B0E6    ret
end;*}

//0047B0E8
{*procedure TCustomStaticText.CMTextChanged(?:?);
begin
 0047B0E8    push        ebp
 0047B0E9    mov         ebp,esp
 0047B0EB    add         esp,0FFFFFFF8
 0047B0EE    mov         dword ptr [ebp-8],edx
 0047B0F1    mov         dword ptr [ebp-4],eax
 0047B0F4    mov         edx,dword ptr [ebp-8]
 0047B0F7    mov         eax,dword ptr [ebp-4]
 0047B0FA    mov         ecx,dword ptr [eax]
 0047B0FC    call        dword ptr [ecx-10];TCustomStaticText.DefaultHandler
 0047B0FF    mov         eax,dword ptr [ebp-4]
 0047B102    call        0047B130
 0047B107    mov         eax,dword ptr [ebp-4]
 0047B10A    mov         edx,dword ptr [eax]
 0047B10C    call        dword ptr [edx+7C];TCustomStaticText.sub_0048BE68
 0047B10F    pop         ecx
 0047B110    pop         ecx
 0047B111    pop         ebp
 0047B112    ret
end;*}

//0047B114
procedure sub_0047B114;
begin
{*
 0047B114    push        ebp
 0047B115    mov         ebp,esp
 0047B117    push        ecx
 0047B118    mov         dword ptr [ebp-4],eax
 0047B11B    mov         eax,dword ptr [ebp-4]
 0047B11E    call        004864B8
 0047B123    mov         eax,dword ptr [ebp-4]
 0047B126    call        0047B130
 0047B12B    pop         ecx
 0047B12C    pop         ebp
 0047B12D    ret
*}
end;

//0047B130
procedure sub_0047B130(?:TCustomStaticText);
begin
{*
 0047B130    push        ebp
 0047B131    mov         ebp,esp
 0047B133    add         esp,0FFFFFFE4
 0047B136    push        ebx
 0047B137    xor         edx,edx
 0047B139    mov         dword ptr [ebp-1C],edx
 0047B13C    mov         dword ptr [ebp-18],edx
 0047B13F    mov         dword ptr [ebp-4],eax
 0047B142    xor         eax,eax
 0047B144    push        ebp
 0047B145    push        47B22A
 0047B14A    push        dword ptr fs:[eax]
 0047B14D    mov         dword ptr fs:[eax],esp
 0047B150    mov         eax,dword ptr [ebp-4]
 0047B153    test        byte ptr [eax+1C],2;TCustomStaticText.FComponentState:TComponentState
>0047B157    jne         0047B20F
 0047B15D    mov         eax,dword ptr [ebp-4]
 0047B160    cmp         byte ptr [eax+209],0;TCustomStaticText.FAutoSize:Boolean
>0047B167    je          0047B20F
 0047B16D    push        0
 0047B16F    call        user32.GetDC
 0047B174    mov         dword ptr [ebp-8],eax
 0047B177    mov         eax,dword ptr [ebp-4]
 0047B17A    mov         eax,dword ptr [eax+68];TCustomStaticText.FFont:TFont
 0047B17D    call        0042E12C
 0047B182    push        eax
 0047B183    mov         eax,dword ptr [ebp-8]
 0047B186    push        eax
 0047B187    call        gdi32.SelectObject
 0047B18C    mov         dword ptr [ebp-0C],eax
 0047B18F    lea         eax,[ebp-14]
 0047B192    push        eax
 0047B193    lea         edx,[ebp-18]
 0047B196    mov         eax,dword ptr [ebp-4]
 0047B199    call        TPanel.GetCaption
 0047B19E    mov         eax,dword ptr [ebp-18]
 0047B1A1    call        @LStrLen
 0047B1A6    push        eax
 0047B1A7    lea         edx,[ebp-1C]
 0047B1AA    mov         eax,dword ptr [ebp-4]
 0047B1AD    call        TPanel.GetCaption
 0047B1B2    mov         eax,dword ptr [ebp-1C]
 0047B1B5    call        @LStrToPChar
 0047B1BA    push        eax
 0047B1BB    mov         eax,dword ptr [ebp-8]
 0047B1BE    push        eax
 0047B1BF    call        gdi32.GetTextExtentPoint32A
 0047B1C4    mov         eax,dword ptr [ebp-0C]
 0047B1C7    push        eax
 0047B1C8    mov         eax,dword ptr [ebp-8]
 0047B1CB    push        eax
 0047B1CC    call        gdi32.SelectObject
 0047B1D1    mov         eax,dword ptr [ebp-8]
 0047B1D4    push        eax
 0047B1D5    push        0
 0047B1D7    call        user32.ReleaseDC
 0047B1DC    push        5
 0047B1DE    call        user32.GetSystemMetrics
 0047B1E3    shl         eax,2
 0047B1E6    add         eax,dword ptr [ebp-14]
 0047B1E9    push        eax
 0047B1EA    push        6
 0047B1EC    call        user32.GetSystemMetrics
 0047B1F1    shl         eax,2
 0047B1F4    add         eax,dword ptr [ebp-10]
 0047B1F7    push        eax
 0047B1F8    mov         eax,dword ptr [ebp-4]
 0047B1FB    mov         ecx,dword ptr [eax+44];TCustomStaticText.Top:Integer
 0047B1FE    mov         eax,dword ptr [ebp-4]
 0047B201    mov         edx,dword ptr [eax+40];TCustomStaticText.Left:Integer
 0047B204    mov         eax,dword ptr [ebp-4]
 0047B207    mov         ebx,dword ptr [eax]
 0047B209    call        dword ptr [ebx+84];TCustomStaticText.sub_0048B89C
 0047B20F    xor         eax,eax
 0047B211    pop         edx
 0047B212    pop         ecx
 0047B213    pop         ecx
 0047B214    mov         dword ptr fs:[eax],edx
 0047B217    push        47B231
 0047B21C    lea         eax,[ebp-1C]
 0047B21F    mov         edx,2
 0047B224    call        @LStrArrayClr
 0047B229    ret
>0047B22A    jmp         @HandleFinally
>0047B22F    jmp         0047B21C
 0047B231    pop         ebx
 0047B232    mov         esp,ebp
 0047B234    pop         ebp
 0047B235    ret
*}
end;

//0047B238
{*procedure sub_0047B238(?:?; ?:?);
begin
 0047B238    push        ebp
 0047B239    mov         ebp,esp
 0047B23B    add         esp,0FFFFFFF4
 0047B23E    mov         byte ptr [ebp-9],cl
 0047B241    mov         dword ptr [ebp-8],edx
 0047B244    mov         dword ptr [ebp-4],eax
 0047B247    mov         cl,byte ptr [ebp-9]
 0047B24A    mov         edx,dword ptr [ebp-8]
 0047B24D    mov         eax,dword ptr [ebp-4]
 0047B250    call        004827F4
 0047B255    cmp         byte ptr [ebp-9],1
>0047B259    jne         0047B274
 0047B25B    mov         eax,dword ptr [ebp-8]
 0047B25E    mov         edx,dword ptr [ebp-4]
 0047B261    cmp         eax,dword ptr [edx+20C];TCustomStaticText.FFocusControl:TWinControl
>0047B267    jne         0047B274
 0047B269    mov         eax,dword ptr [ebp-4]
 0047B26C    xor         edx,edx
 0047B26E    mov         dword ptr [eax+20C],edx;TCustomStaticText.FFocusControl:TWinControl
 0047B274    mov         esp,ebp
 0047B276    pop         ebp
 0047B277    ret
end;*}

//0047B278
procedure TStaticText.SetAlignment(Value:TAlignment);
begin
{*
 0047B278    push        ebp
 0047B279    mov         ebp,esp
 0047B27B    add         esp,0FFFFFFF8
 0047B27E    mov         byte ptr [ebp-5],dl
 0047B281    mov         dword ptr [ebp-4],eax
 0047B284    mov         eax,dword ptr [ebp-4]
 0047B287    mov         al,byte ptr [eax+208];TStaticText.FAlignment:TAlignment
 0047B28D    cmp         al,byte ptr [ebp-5]
>0047B290    je          0047B2A6
 0047B292    mov         al,byte ptr [ebp-5]
 0047B295    mov         edx,dword ptr [ebp-4]
 0047B298    mov         byte ptr [edx+208],al;TStaticText.FAlignment:TAlignment
 0047B29E    mov         eax,dword ptr [ebp-4]
 0047B2A1    call        TWinControl.RecreateWnd
 0047B2A6    pop         ecx
 0047B2A7    pop         ecx
 0047B2A8    pop         ebp
 0047B2A9    ret
*}
end;

//0047B2AC
procedure TStaticText.SetAutoSize(Value:Boolean);
begin
{*
 0047B2AC    push        ebp
 0047B2AD    mov         ebp,esp
 0047B2AF    add         esp,0FFFFFFF8
 0047B2B2    mov         byte ptr [ebp-5],dl
 0047B2B5    mov         dword ptr [ebp-4],eax
 0047B2B8    mov         eax,dword ptr [ebp-4]
 0047B2BB    mov         al,byte ptr [eax+209];TStaticText.FAutoSize:Boolean
 0047B2C1    cmp         al,byte ptr [ebp-5]
>0047B2C4    je          0047B2E0
 0047B2C6    mov         al,byte ptr [ebp-5]
 0047B2C9    mov         edx,dword ptr [ebp-4]
 0047B2CC    mov         byte ptr [edx+209],al;TStaticText.FAutoSize:Boolean
 0047B2D2    cmp         byte ptr [ebp-5],0
>0047B2D6    je          0047B2E0
 0047B2D8    mov         eax,dword ptr [ebp-4]
 0047B2DB    call        0047B130
 0047B2E0    pop         ecx
 0047B2E1    pop         ecx
 0047B2E2    pop         ebp
 0047B2E3    ret
*}
end;

//0047B2E4
procedure TStaticText.SetBorderStyle(Value:TStaticBorderStyle);
begin
{*
 0047B2E4    push        ebp
 0047B2E5    mov         ebp,esp
 0047B2E7    add         esp,0FFFFFFF8
 0047B2EA    mov         byte ptr [ebp-5],dl
 0047B2ED    mov         dword ptr [ebp-4],eax
 0047B2F0    mov         eax,dword ptr [ebp-4]
 0047B2F3    mov         al,byte ptr [eax+20A];TStaticText.FBorderStyle:TStaticBorderStyle
 0047B2F9    cmp         al,byte ptr [ebp-5]
>0047B2FC    je          0047B312
 0047B2FE    mov         al,byte ptr [ebp-5]
 0047B301    mov         edx,dword ptr [ebp-4]
 0047B304    mov         byte ptr [edx+20A],al;TStaticText.FBorderStyle:TStaticBorderStyle
 0047B30A    mov         eax,dword ptr [ebp-4]
 0047B30D    call        TWinControl.RecreateWnd
 0047B312    pop         ecx
 0047B313    pop         ecx
 0047B314    pop         ebp
 0047B315    ret
*}
end;

//0047B318
procedure TStaticText.SetFocusControl(Value:TWinControl);
begin
{*
 0047B318    push        ebp
 0047B319    mov         ebp,esp
 0047B31B    add         esp,0FFFFFFF8
 0047B31E    mov         dword ptr [ebp-8],edx
 0047B321    mov         dword ptr [ebp-4],eax
 0047B324    mov         eax,dword ptr [ebp-8]
 0047B327    mov         edx,dword ptr [ebp-4]
 0047B32A    mov         dword ptr [edx+20C],eax;TStaticText.FFocusControl:TWinControl
 0047B330    cmp         dword ptr [ebp-8],0
>0047B334    je          0047B341
 0047B336    mov         edx,dword ptr [ebp-4]
 0047B339    mov         eax,dword ptr [ebp-8]
 0047B33C    call        0042A2CC
 0047B341    pop         ecx
 0047B342    pop         ecx
 0047B343    pop         ebp
 0047B344    ret
*}
end;

//0047B348
procedure TStaticText.SetShowAccelChar(Value:Boolean);
begin
{*
 0047B348    push        ebp
 0047B349    mov         ebp,esp
 0047B34B    add         esp,0FFFFFFF8
 0047B34E    mov         byte ptr [ebp-5],dl
 0047B351    mov         dword ptr [ebp-4],eax
 0047B354    mov         eax,dword ptr [ebp-4]
 0047B357    mov         al,byte ptr [eax+210];TStaticText.FShowAccelChar:Boolean
 0047B35D    cmp         al,byte ptr [ebp-5]
>0047B360    je          0047B376
 0047B362    mov         al,byte ptr [ebp-5]
 0047B365    mov         edx,dword ptr [ebp-4]
 0047B368    mov         byte ptr [edx+210],al;TStaticText.FShowAccelChar:Boolean
 0047B36E    mov         eax,dword ptr [ebp-4]
 0047B371    call        TWinControl.RecreateWnd
 0047B376    pop         ecx
 0047B377    pop         ecx
 0047B378    pop         ebp
 0047B379    ret
*}
end;

//0047B37C
{*procedure TCustomStaticText.sub_0047B37C(?:?);
begin
 0047B37C    push        ebp
 0047B37D    mov         ebp,esp
 0047B37F    add         esp,0FFFFFFF4
 0047B382    mov         dword ptr [ebp-8],edx
 0047B385    mov         dword ptr [ebp-4],eax
 0047B388    call        0046BFC0
 0047B38D    mov         dword ptr [ebp-0C],eax
 0047B390    mov         eax,dword ptr [ebp-0C]
 0047B393    call        0046C0EC
 0047B398    test        al,al
>0047B39A    je          0047B3E3
 0047B39C    mov         eax,dword ptr [ebp-4]
 0047B39F    call        TStaticText.GetTransparent
 0047B3A4    test        al,al
>0047B3A6    je          0047B3E3
 0047B3A8    push        1
 0047B3AA    mov         eax,dword ptr [ebp-8]
 0047B3AD    mov         eax,dword ptr [eax+4]
 0047B3B0    push        eax
 0047B3B1    call        gdi32.SetBkMode
 0047B3B6    push        0
 0047B3B8    push        0
 0047B3BA    push        0
 0047B3BC    mov         eax,dword ptr [ebp-4]
 0047B3BF    call        TWinControl.GetHandle
 0047B3C4    mov         edx,eax
 0047B3C6    mov         ecx,dword ptr [ebp-8]
 0047B3C9    mov         ecx,dword ptr [ecx+4]
 0047B3CC    mov         eax,dword ptr [ebp-0C]
 0047B3CF    call        0046C2E8
 0047B3D4    push        5
 0047B3D6    call        gdi32.GetStockObject
 0047B3DB    mov         edx,dword ptr [ebp-8]
 0047B3DE    mov         dword ptr [edx+0C],eax
>0047B3E1    jmp         0047B3EE
 0047B3E3    mov         edx,dword ptr [ebp-8]
 0047B3E6    mov         eax,dword ptr [ebp-4]
 0047B3E9    mov         ecx,dword ptr [eax]
 0047B3EB    call        dword ptr [ecx-10];TCustomStaticText.DefaultHandler
 0047B3EE    mov         esp,ebp
 0047B3F0    pop         ebp
 0047B3F1    ret
end;*}

//0047B3F4
procedure TStaticText.SetTransparent(Value:Boolean);
begin
{*
 0047B3F4    push        ebp
 0047B3F5    mov         ebp,esp
 0047B3F7    add         esp,0FFFFFFF8
 0047B3FA    mov         byte ptr [ebp-5],dl
 0047B3FD    mov         dword ptr [ebp-4],eax
 0047B400    mov         eax,dword ptr [ebp-4]
 0047B403    call        TStaticText.GetTransparent
 0047B408    cmp         al,byte ptr [ebp-5]
>0047B40B    je          0047B441
 0047B40D    cmp         byte ptr [ebp-5],0
>0047B411    je          0047B428
 0047B413    mov         eax,[0047B448];0x40 gvar_0047B448
 0047B418    mov         edx,dword ptr [ebp-4]
 0047B41B    not         eax
 0047B41D    and         eax,dword ptr [edx+50];TStaticText.FControlStyle:TControlStyle
 0047B420    mov         edx,dword ptr [ebp-4]
 0047B423    mov         dword ptr [edx+50],eax;TStaticText.FControlStyle:TControlStyle
>0047B426    jmp         0047B439
 0047B428    mov         eax,[0047B448];0x40 gvar_0047B448
 0047B42D    mov         edx,dword ptr [ebp-4]
 0047B430    or          eax,dword ptr [edx+50];TStaticText.FControlStyle:TControlStyle
 0047B433    mov         edx,dword ptr [ebp-4]
 0047B436    mov         dword ptr [edx+50],eax;TStaticText.FControlStyle:TControlStyle
 0047B439    mov         eax,dword ptr [ebp-4]
 0047B43C    mov         edx,dword ptr [eax]
 0047B43E    call        dword ptr [edx+7C];TStaticText.sub_0048BE68
 0047B441    pop         ecx
 0047B442    pop         ecx
 0047B443    pop         ebp
 0047B444    ret
*}
end;

//0047B44C
{*function TStaticText.GetTransparent:?;
begin
 0047B44C    push        ebp
 0047B44D    mov         ebp,esp
 0047B44F    add         esp,0FFFFFFF8
 0047B452    mov         dword ptr [ebp-4],eax
 0047B455    mov         eax,dword ptr [ebp-4]
 0047B458    test        byte ptr [eax+50],40;TStaticText.FControlStyle:TControlStyle
 0047B45C    setne       al
 0047B45F    xor         al,1
 0047B461    mov         byte ptr [ebp-5],al
 0047B464    mov         al,byte ptr [ebp-5]
 0047B467    pop         ecx
 0047B468    pop         ecx
 0047B469    pop         ebp
 0047B46A    ret
end;*}

end.