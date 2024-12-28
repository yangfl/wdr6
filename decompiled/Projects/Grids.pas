//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit Grids;

interface

uses
  SysUtils, Classes, Grids;

type
  EInvalidGridOperation = class(Exception)
  end;
  TInplaceEdit = class(TCustomMaskEdit)
  public
    FGrid:TCustomGrid;//f240
    FClickTime:Longint;//f244
    constructor Create; virtual;//v2C//004D7468
    //procedure v74(?:?); virtual;//v74//004D7BC4
    //procedure v98(?:?); virtual;//v98//004D74E4
    //function vE8:?; virtual;//vE8//004D7650
    procedure vFC; virtual;//vFC//004D7E60
    procedure v100; virtual;//v100//004D7F00
    //procedure WMGetDlgCode(?:?); message WM_GETDLGCODE;//004D7534
    //procedure WMCut(?:?); message WM_CUT;//004D75C0
    //procedure WMPaste(?:?); message WM_PASTE;//004D7568
    //procedure WMClear(?:?); message WM_CLEAR;//004D7594
    //procedure CMShowingChanged(?:?); message CM_SHOWINGCHANGED;//004D7524
    //procedure sub_0048AAD0(?:?); dynamic;//004D7A84
    //procedure sub_0048A9B4(?:?; ?:?); dynamic;//004D7B94
    procedure KeyDown(var Key:Word; Shift:TShiftState); dynamic;//004D7854
    //procedure sub_004845BC(?:?; ?:?; ?:?); dynamic;//004D760C
    procedure sub_0048555C; dynamic;//004D75EC
    procedure Deselect;//004D7C58
    procedure Hide;//004D7D14
  end;
  TCustomGrid = class(TCustomControl)
  public
    FAnchor:TGridCoord;//f210
    FBorderStyle:TBorderStyle;//f218
    FCanEditModify:Boolean;//f219
    FColCount:Longint;//f21C
    FColWidths:Pointer;//f220
    FTabStops:Pointer;//f224
    FCurrent:TGridCoord;//f228
    FCurrent:Longint;//f22C
    FDefaultColWidth:Integer;//f230
    FDefaultRowHeight:Integer;//f234
    FFixedCols:Integer;//f238
    FFixedRows:Integer;//f23C
    FFixedColor:TColor;//f240
    FGridLineWidth:Integer;//f244
    FOptions:TGridOptions;//f248
    f249:byte;//f249
    FRowCount:Longint;//f24C
    FRowHeights:Pointer;//f250
    FScrollBars:TScrollStyle;//f254
    FTopLeft:TGridCoord;//f258
    FTopLeft:Longint;//f25C
    FSizingIndex:Longint;//f260
    FSizingPos:Integer;//f264
    FSizingOfs:Integer;//f268
    FMoveIndex:Longint;//f26C
    FMovePos:Longint;//f270
    FHitTest:TPoint;//f274
    FInplaceEdit:TInplaceEdit;//f27C
    FInplaceCol:Longint;//f280
    FInplaceRow:Longint;//f284
    FColOffset:Integer;//f288
    FDefaultDrawing:Boolean;//f28C
    FEditorMode:Boolean;//f28D
    FGridState:TGridState;//f28E
    FSaveCellExtents:Boolean;//f28F
    DesignOptionsBoost:TGridOptions;//f290
    VirtualView:Boolean;//f292
    destructor Destroy; virtual;//004D8194
    procedure DefineProperties(Filer:TFiler); virtual;//v4//004D89E4
    constructor v2C; virtual;//v2C//004D7FE8
    //procedure v98(?:?); virtual;//v98//004DC2BC
    procedure vC8; virtual;//vC8//004D94D4
    //procedure vCC(?:?; ?:?; ?:?; ?:?; ?:?); virtual;//vCC//004DA0FC
    //function vD0:?; virtual;//vD0//004DC298
    //function vD4:?; virtual;//vD4//004D85E8
    procedure vD8; virtual; abstract;//vD8//00403328
    //function vDC(?:?; ?:?):?; virtual;//vDC//004D8CF8
    //procedure vE0(?:?); virtual;//vE0//004DE664
    //procedure vE4(?:?); virtual;//vE4//004DE69C
    //procedure WMSize(?:?); message WM_SIZE;//004DE170
    //procedure WMSetFocus(?:?); message WM_SETFOCUS;//004DE114
    //procedure WMKillFocus(?:?); message WM_KILLFOCUS;//004DDF60
    //procedure WMCancelMode(?:?); message WM_CANCELMODE;//004DE2A0
    //procedure WMSetCursor(?:?); message WM_SETCURSOR;//004DE044
    //procedure WMNCHitTest(?:?); message WM_NCHITTEST;//004DDFF8
    //procedure WMGetDlgCode(?:?); message WM_GETDLGCODE;//004DDF10
    //procedure WMChar(?:?); message WM_CHAR;//004DDE80
    //procedure WMCommand(?:?); message WM_COMMAND;//004DDEC8
    //procedure WMTimer(?:?); message WM_TIMER;//004DE4A0
    //procedure WMHScroll(?:?); message WM_HSCROLL;//004DE1E0
    //procedure WMVScroll(?:?); message WM_VSCROLL;//004DE1B0
    //procedure WMLButtonDown(?:?); message WM_LBUTTONDOWN;//004DDFBC
    //procedure CMCancelMode(?:?); message CM_CANCELMODE;//004DE2C4
    //procedure CMFontChanged(?:?); message CM_FONTCHANGED;//004DE304
    //procedure CMCtl3DChanged(?:?); message CM_CTL3DCHANGED;//004DE340
    //procedure CMShowingChanged(?:?); message CM_SHOWINGCHANGED;//004DE894
    //procedure CMDesignHitTest(?:?); message CM_DESIGNHITTEST;//004DE364
    //procedure CMWantSpecialKey(?:?); message CM_WANTSPECIALKEY;//004DE394
    //procedure sub_004DE878(?:?; ?:?); dynamic;//004DE878
    //procedure sub_004DE85C(?:?; ?:?); dynamic;//004DE85C
    //procedure sub_004DE808(?:?; ?:?); dynamic;//004DE808
    //procedure sub_004DE7EC(?:?; ?:?); dynamic;//004DE7EC
    //procedure sub_004DE840(?:?; ?:?); dynamic;//004DE840
    //procedure sub_004DE824(?:?; ?:?); dynamic;//004DE824
    procedure sub_004DE648; dynamic;//004DE648
    procedure sub_004DE62C; dynamic;//004DE62C
    //procedure sub_004DE3D0(?:?); dynamic;//004DE3D0
    procedure sub_004D8D8C; dynamic;//004D8D8C
    //procedure sub_004D8D14(?:?; ?:?); dynamic;//004D8D14
    //procedure sub_004D8C5C(?:?; ?:?); dynamic;//004D8C5C
    //procedure sub_004D8B98(?:?; ?:?); dynamic;//004D8B98
    //procedure sub_004D8748(?:?; ?:?); dynamic;//004D8748
    //procedure sub_004D86D8(?:?; ?:?; ?:?); dynamic;//004D86D8
    procedure sub_004D8730; dynamic;//004D8730
    //procedure sub_004D8718(?:?; ?:?); dynamic;//004D8718
    //procedure sub_004D86F8(?:?; ?:?; ?:?); dynamic;//004D86F8
    procedure sub_004D85CC; dynamic;//004D85CC
    //procedure sub_004D85B0(?:?; ?:?); dynamic;//004D85B0
    //procedure sub_004D8598(?:?); dynamic;//004D8598
    //procedure sub_004D833C(?:?; ?:?; ?:?); dynamic;//004D833C
    //procedure sub_0048AAD0(?:?); dynamic;//004DC95C
    //procedure sub_0048A878(?:?; ?:?); dynamic;//004DC438
    procedure sub_0048A244; dynamic;//004D8540
    //procedure sub_004859D0(?:?; ?:?; ?:?; ?:?); dynamic;//004DCF98
    //procedure sub_004858F4(?:?; ?:?; ?:?); dynamic;//004DCD9C
    //procedure sub_00485588(?:?; ?:?; ?:?; ?:?); dynamic;//004DC9B0
    //procedure sub_00484704(?:?; ?:?); dynamic;//004DE78C
    //procedure sub_004846B4(?:?; ?:?); dynamic;//004DE72C
    procedure ReadColWidths(Reader:TReader);//004D87E4
    procedure ReadRowHeights(Reader:TReader);//004D883C
    procedure WriteColWidths(Writer:TWriter);//004D8894
    procedure WriteRowHeights(Writer:TWriter);//004D88EC
    procedure CalcDrawInfo(var DrawInfo:TGridDrawInfo);//004D9BB8
    procedure CalcDrawInfoXY(var DrawInfo:TGridDrawInfo; UseWidth:Integer; UseHeight:Integer);//004D9C94
    function CalcMaxTopLeft(const Coord:TGridCoord; const DrawInfo:TGridDrawInfo):TGridCoord;//004D9EB0
    procedure DrawSizingLine(const DrawInfo:TGridDrawInfo);//004DA7F8
    procedure DrawMove;//004DA960
    procedure TopLeftMoved(const OldTopLeft:TGridCoord);//004DBC48
    procedure UpdateScrollPos;//004DBD60
    procedure UpdateScrollRange;//004DC150
    procedure HideEdit;//004DDC1C
    procedure UpdateText;//004DDDF4
    procedure CancelMode;//004DE20C
  end;
    //procedure sub_004D6E0C(?:?);//004D6E0C
    //procedure sub_004D6E2C(?:TGridCoord; ?:?; ?:?);//004D6E2C
    //function sub_004D6EB4(?:?; ?:?; ?:?):?;//004D6EB4
    //function sub_004D6F00(?:?; ?:?; ?:?):?;//004D6F00
    //function sub_004D6F4C(?:?; ?:?; ?:?):?;//004D6F4C
    //function sub_004D6FBC(?:?; ?:?; ?:?; ?:?; ?:?):?;//004D6FBC
    //procedure sub_004D7044(?:?; ?:?; ?:?);//004D7044
    //procedure sub_004D71F0(?:?; ?:?; ?:?; ?:?);//004D71F0
    procedure sub_004D7324(?:Pointer; ?:Longint; ?:Integer);//004D7324
    //procedure sub_004D7364(?:?; ?:?; ?:?);//004D7364
    //function sub_004D73FC(?:?; ?:?):?;//004D73FC
    function MulDiv(nNumerator:Integer; nDenominator:Integer):Integer; stdcall;//004D7460
    constructor Create;//004D7468
    //procedure sub_004D74E4(?:?);//004D74E4
    procedure sub_004D7508(?:TInplaceEdit; ?:TCustomGrid);//004D7508
    //procedure CMShowingChanged(?:?);//004D7524
    //procedure WMGetDlgCode(?:?);//004D7534
    //procedure WMPaste(?:?);//004D7568
    //procedure WMClear(?:?);//004D7594
    //procedure WMCut(?:?);//004D75C0
    procedure sub_0048555C;//004D75EC
    //procedure sub_004845BC(?:?; ?:?; ?:?);//004D760C
    //function sub_004D7650:?;//004D7650
    procedure SendToParent;//004D7678
    procedure ParentEvent;//004D76AC
    function ForwardMovement:Boolean;//004D76FC
    function Ctrl:Boolean;//004D7720
    //procedure sub_004D7738(?:?; ?:?);//004D7738
    //function sub_004D7764(?:?):?;//004D7764
    function RightSide:Boolean;//004D77A4
    function LeftSide:Boolean;//004D7804
    procedure KeyDown(var Key:Word; Shift:TShiftState);//004D7854
    //procedure sub_0048AAD0(?:?);//004D7A84
    //procedure sub_0048A9B4(?:?; ?:?);//004D7B94
    //procedure sub_004D7BC4(?:?);//004D7BC4
    //procedure sub_004D7C7C(?:?);//004D7C7C
    //procedure sub_004D7D88(?:?; ?:?; ?:?);//004D7D88
    procedure sub_004D7E60;//004D7E60
    //procedure sub_004D7EC0(?:TInplaceEdit; ?:?);//004D7EC0
    //procedure sub_004D7EE0(?:TInplaceEdit; ?:?);//004D7EE0
    procedure sub_004D7F00;//004D7F00
    constructor sub_004D7FE8;//004D7FE8
    destructor Destroy;//004D8194
    //function sub_004D8200(?:Longint; ?:?; ?:Integer; ?:?; ?:?):?;//004D8200
    //procedure sub_004D833C(?:?; ?:?; ?:?);//004D833C
    //procedure sub_004D8500(?:?; ?:?; ?:?; ?:?; ?:?; ?:?);//004D8500
    procedure sub_0048A244;//004D8540
    //procedure sub_004D8568(?:TCustomGrid; ?:TGridCoord; ?:Longint; ?:?);//004D8568
    //procedure sub_004D8598(?:?);//004D8598
    //procedure sub_004D85B0(?:?; ?:?);//004D85B0
    procedure sub_004D85CC;//004D85CC
    //function sub_004D85E8:?;//004D85E8
    //function sub_004D8660(?:TCustomGrid):?;//004D8660
    //procedure sub_004D86D8(?:?; ?:?; ?:?);//004D86D8
    //procedure sub_004D86F8(?:?; ?:?; ?:?);//004D86F8
    //procedure sub_004D8718(?:?; ?:?);//004D8718
    procedure sub_004D8730;//004D8730
    //procedure sub_004D8748(?:?; ?:?);//004D8748
    procedure sub_004D8764(?:TCustomGrid);//004D8764
    procedure sub_004D8780(?:TCustomGrid);//004D8780
    //procedure sub_004D879C(?:TCustomGrid; ?:?);//004D879C
    function DoColWidths:Boolean;//004D8944
    function DoRowHeights:Boolean;//004D8994
    procedure DefineProperties(Filer:TFiler);//004D89E4
    procedure sub_004D8A88(?:TCustomGrid; ?:Longint; ?:Longint);//004D8A88
    //procedure sub_004D8B98(?:?; ?:?);//004D8B98
    procedure sub_004D8BAC(?:TCustomGrid; ?:Longint; ?:Longint);//004D8BAC
    //procedure sub_004D8C5C(?:?; ?:?);//004D8C5C
    //procedure sub_004D8C70(?:TCustomMPHexEditor; ?:TPoint; ?:?; ?:?);//004D8C70
    //procedure sub_004D8CCC(?:TCustomMPHexEditor; ?:TGridCoord; ?:Longint; ?:?; ?:?);//004D8CCC
    //function sub_004D8CF8(?:?; ?:?):?;//004D8CF8
    //procedure sub_004D8D14(?:?; ?:?);//004D8D14
    //function sub_004D8D28(?:TCustomGrid; ?:?; ?:?):?;//004D8D28
    procedure sub_004D8D8C;//004D8D8C
    procedure FillDWord(var Dest:void ; Count:Integer; Value:Integer);//004D8DE0
    function StackAlloc(Size:Integer):Pointer;//004D8DEC
    procedure StackFree(P:Pointer);//004D8E1C
    //procedure sub_004D8E34(?:?; ?:?; ?:?; ?:?; ?:?);//004D8E34
    //procedure sub_004D906C(?:?; ?:?; ?:?; ?:?; ?:?; ?:?);//004D906C
    //procedure sub_004D9104(?:TGridCoord; ?:Longint; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);//004D9104
    procedure sub_004D94D4;//004D94D4
    //function sub_004D9A0C(?:?; ?:?):?;//004D9A0C
    //function sub_004D9AA4(?:?; ?:?; ?:?):?;//004D9AA4
    //procedure sub_004D9B54(?:TCustomGrid; ?:TPoint; ?:?; ?:?; ?:?);//004D9B54
    //procedure sub_004D9BE8(?:?; ?:?);//004D9BE8
    //procedure sub_004D9CD4(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);//004D9CD4
    //procedure sub_004D9D88(?:?; ?:?);//004D9D88
    //function sub_004D9E14(?:?; ?:?):?;//004D9E14
    //procedure sub_004D9EF4(?:?; ?:?; ?:?; ?:?);//004D9EF4
    //function sub_004DA054(?:?):?;//004DA054
    //function sub_004DA0A8(?:?):?;//004DA0A8
    //procedure sub_004DA0FC(?:?; ?:?; ?:?; ?:?; ?:?);//004DA0FC
    //procedure sub_004DA1E0(?:TCustomGrid; ?:?);//004DA1E0
    //procedure sub_004DA354(?:?; ?:TGridDrawInfo; ?:?; ?:?);//004DA354
    //procedure sub_004DA3C8(?:?);//004DA3C8
    //procedure sub_004DA5F8(?:?; ?:?; ?:?);//004DA5F8
    //procedure sub_004DA6E4(?:TCustomGrid; ?:?);//004DA6E4
    //procedure sub_004DAB18(?:TCustomGrid; ?:Integer; ?:Integer; ?:?);//004DAB18
    //function sub_004DAB58(?:?; ?:?):?;//004DAB58
    //function sub_004DABE4(?:TGridDrawInfo; ?:?; ?:?; ?:?; ?:?; ?:?):?;//004DABE4
    //procedure sub_004DAD08(?:TCustomGrid; ?:Integer; ?:?);//004DAD08
    procedure sub_004DAE00(?:TCustomGrid);//004DAE00
    procedure sub_004DAE8C(?:TCustomGrid; ?:TGridCoord; ?:Longint);//004DAE8C
    //procedure sub_004DAEC4(?:?);//004DAEC4
    procedure sub_004DAED8(?:TCustomGrid; ?:Byte);//004DAED8
    //function sub_004DAF24(?:?):?;//004DAF24
    //function sub_004DAF58(?:?):?;//004DAF58
    //function sub_004DAF80(?:?):?;//004DAF80
    //function sub_004DAFEC(?:?):?;//004DAFEC
    //function sub_004DB044(?:?; ?:?; ?:?):?;//004DB044
    //procedure sub_004DB19C(?:?; ?:?; ?:?);//004DB19C
    //procedure sub_004DB380(?:TCustomGrid; ?:?; ?:?; ?:?; ?:?);//004DB380
    //procedure sub_004DB580(?:?; ?:?; ?:?; ?:?);//004DB580
    procedure sub_004DB5F4(?:TCustomGrid; ?:TGridCoord);//004DB5F4
    //procedure sub_004DB69C(?:TCustomGrid; ?:TGridCoord; ?:Longint; ?:?; ?:?);//004DB69C
    procedure sub_004DB83C(?:TCustomGrid; ?:Integer; ?:Longint);//004DB83C
    //procedure sub_004DB8B0(?:TCustomGrid; ?:Longint; ?:?);//004DB8B0
    //procedure sub_004DB8D0(?:TCustomGrid; ?:Longint; ?:?);//004DB8D0
    //procedure sub_004DB8F0(?:TCustomGrid; ?:?);//004DB8F0
    //procedure sub_004DB970(?:?; ?:?; ?:?; ?:?);//004DB970
    //procedure sub_004DBB70(?:?; ?:?; ?:?);//004DBB70
    //function sub_004DBBA0(?:?; ?:?; ?:?; ?:?; ?:?):?;//004DBBA0
    //procedure sub_004DBCCC(?:?; ?:?; ?:?);//004DBCCC
    procedure DoUpdate;//004DBED0
    function ScrollBarVisible(Code:Word):Boolean;//004DBEF4
    procedure CalcSizeInfo;//004DBF6C
    procedure SetAxisRange(var Max:Longint; var Old:Longint; var Current:Longint; Code:Word; Fixeds:Integer);//004DBFE4
    procedure SetHorzRange;//004DC068
    procedure SetVertRange;//004DC10C
    //function sub_004DC298:?;//004DC298
    //procedure sub_004DC2BC(?:?);//004DC2BC
    procedure CalcPageExtents;//004DC364
    //procedure sub_004DC3D0(?:Integer; ?:Integer; ?:Integer; ?:?; ?:?);//004DC3D0
    //procedure sub_0048A878(?:?; ?:?);//004DC438
    //procedure sub_0048AAD0(?:?);//004DC95C
    //procedure sub_00485588(?:?; ?:?; ?:?; ?:?);//004DC9B0
    //procedure sub_004858F4(?:?; ?:?; ?:?);//004DCD9C
    //function sub_004DCF30(?:TGridDrawInfo; ?:?):?;//004DCF30
    //procedure sub_004859D0(?:?; ?:?; ?:?; ?:?);//004DCF98
    //procedure sub_004DD244(?:TCustomGrid; ?:TPoint; ?:?; ?:?; ?:?; ?:?; ?:?);//004DD244
    //function sub_004DD40C(?:TCustomMPHexEditor; ?:?):?;//004DD40C
    //function sub_004DD45C(?:TCustomMPHexEditor; ?:?):?;//004DD45C
    //procedure sub_004DD4AC(?:TCustomGrid; ?:?);//004DD4AC
    //function sub_004DD4D8(?:TCustomGrid; ?:Integer):?;//004DD4D8
    //function sub_004DD510(?:?):?;//004DD510
    //function sub_004DD53C(?:TCustomMPHexEditor):?;//004DD53C
    procedure SetBorderStyle(Value:TBorderStyle);//004DD568
    //procedure sub_004DD59C(?:TCustomMPHexEditor; ?:?);//004DD59C
    //procedure sub_004DD5D0(?:TCustomGrid; ?:?);//004DD5D0
    procedure sub_004DD650(?:TCustomGrid; ?:Longint; ?:dword);//004DD650
    //procedure sub_004DD738(?:TCustomMPHexEditor; ?:?);//004DD738
    //procedure sub_004DD788(?:TCustomMPHexEditor; ?:?);//004DD788
    //procedure sub_004DD7D8(?:?; ?:?);//004DD7D8
    //procedure sub_004DD888(?:?; ?:?);//004DD888
    //procedure sub_004DD938(?:TCustomGrid; ?:?);//004DD938
    //procedure sub_004DD97C(?:?; ?:?);//004DD97C
    //procedure sub_004DD9B0(?:TCustomMPHexEditor; ?:?);//004DD9B0
    //procedure sub_004DDA3C(?:TCustomGrid; ?:?);//004DDA3C
    //procedure sub_004DDA70(?:TCustomGrid; ?:?);//004DDA70
    //procedure sub_004DDACC(?:TCustomGrid; ?:Longint; ?:?);//004DDACC
    procedure SetScrollBars(Value:TScrollStyle);//004DDBB4
    //procedure sub_004DDBE8(?:TCustomMPHexEditor; ?:?);//004DDBE8
    //procedure sub_004DDC88(?:?);//004DDC88
    procedure sub_004DDD14(?:TCustomGrid);//004DDD14
    //procedure WMChar(?:?);//004DDE80
    //procedure WMCommand(?:?);//004DDEC8
    //procedure WMGetDlgCode(?:?);//004DDF10
    //procedure WMKillFocus(?:?);//004DDF60
    //procedure WMLButtonDown(?:?);//004DDFBC
    //procedure WMNCHitTest(?:?);//004DDFF8
    //procedure WMSetCursor(?:?);//004DE044
    //procedure WMSetFocus(?:?);//004DE114
    //procedure WMSize(?:?);//004DE170
    //procedure WMVScroll(?:?);//004DE1B0
    //procedure WMHScroll(?:?);//004DE1E0
    //procedure WMCancelMode(?:?);//004DE2A0
    //procedure CMCancelMode(?:?);//004DE2C4
    //procedure CMFontChanged(?:?);//004DE304
    //procedure CMCtl3DChanged(?:?);//004DE340
    //procedure CMDesignHitTest(?:?);//004DE364
    //procedure CMWantSpecialKey(?:?);//004DE394
    //procedure sub_004DE3D0(?:?);//004DE3D0
    //procedure WMTimer(?:?);//004DE4A0
    procedure sub_004DE62C;//004DE62C
    procedure sub_004DE648;//004DE648
    //procedure sub_004DE664(?:?);//004DE664
    //procedure sub_004DE69C(?:?);//004DE69C
    procedure sub_004DE6D4(?:TCustomGrid);//004DE6D4
    //procedure sub_004846B4(?:?; ?:?);//004DE72C
    //procedure sub_00484704(?:?; ?:?);//004DE78C
    //procedure sub_004DE7EC(?:?; ?:?);//004DE7EC
    //procedure sub_004DE808(?:?; ?:?);//004DE808
    //procedure sub_004DE824(?:?; ?:?);//004DE824
    //procedure sub_004DE840(?:?; ?:?);//004DE840
    //procedure sub_004DE85C(?:?; ?:?);//004DE85C
    //procedure sub_004DE878(?:?; ?:?);//004DE878
    //procedure CMShowingChanged(?:?);//004DE894

implementation

//004D6E0C
{*procedure sub_004D6E0C(?:?);
begin
 004D6E0C    push        ebp
 004D6E0D    mov         ebp,esp
 004D6E0F    push        ecx
 004D6E10    mov         dword ptr [ebp-4],eax
 004D6E13    mov         ecx,dword ptr [ebp-4]
 004D6E16    mov         dl,1
 004D6E18    mov         eax,[004D6938];EInvalidGridOperation
 004D6E1D    call        Exception.Create;EInvalidGridOperation.Create
 004D6E22    call        @RaiseExcept
 004D6E27    pop         ecx
 004D6E28    pop         ebp
 004D6E29    ret
end;*}

//004D6E2C
{*procedure sub_004D6E2C(?:TGridCoord; ?:?; ?:?);
begin
 004D6E2C    push        ebp
 004D6E2D    mov         ebp,esp
 004D6E2F    add         esp,0FFFFFFEC
 004D6E32    push        esi
 004D6E33    push        edi
 004D6E34    mov         esi,edx
 004D6E36    lea         edi,[ebp-10]
 004D6E39    movs        dword ptr [edi],dword ptr [esi]
 004D6E3A    movs        dword ptr [edi],dword ptr [esi]
 004D6E3B    mov         esi,eax
 004D6E3D    lea         edi,[ebp-8]
 004D6E40    movs        dword ptr [edi],dword ptr [esi]
 004D6E41    movs        dword ptr [edi],dword ptr [esi]
 004D6E42    mov         dword ptr [ebp-14],ecx
 004D6E45    mov         eax,dword ptr [ebp-14]
 004D6E48    mov         edx,dword ptr [ebp-10]
 004D6E4B    mov         dword ptr [eax],edx
 004D6E4D    mov         eax,dword ptr [ebp-8]
 004D6E50    cmp         eax,dword ptr [ebp-10]
>004D6E53    jge         004D6E5D
 004D6E55    mov         eax,dword ptr [ebp-14]
 004D6E58    mov         edx,dword ptr [ebp-8]
 004D6E5B    mov         dword ptr [eax],edx
 004D6E5D    mov         eax,dword ptr [ebp-14]
 004D6E60    mov         edx,dword ptr [ebp-8]
 004D6E63    mov         dword ptr [eax+8],edx
 004D6E66    mov         eax,dword ptr [ebp-8]
 004D6E69    cmp         eax,dword ptr [ebp-10]
>004D6E6C    jge         004D6E77
 004D6E6E    mov         eax,dword ptr [ebp-14]
 004D6E71    mov         edx,dword ptr [ebp-10]
 004D6E74    mov         dword ptr [eax+8],edx
 004D6E77    mov         eax,dword ptr [ebp-14]
 004D6E7A    mov         edx,dword ptr [ebp-0C]
 004D6E7D    mov         dword ptr [eax+4],edx
 004D6E80    mov         eax,dword ptr [ebp-4]
 004D6E83    cmp         eax,dword ptr [ebp-0C]
>004D6E86    jge         004D6E91
 004D6E88    mov         eax,dword ptr [ebp-14]
 004D6E8B    mov         edx,dword ptr [ebp-4]
 004D6E8E    mov         dword ptr [eax+4],edx
 004D6E91    mov         eax,dword ptr [ebp-14]
 004D6E94    mov         edx,dword ptr [ebp-4]
 004D6E97    mov         dword ptr [eax+0C],edx
 004D6E9A    mov         eax,dword ptr [ebp-4]
 004D6E9D    cmp         eax,dword ptr [ebp-0C]
>004D6EA0    jge         004D6EAB
 004D6EA2    mov         eax,dword ptr [ebp-14]
 004D6EA5    mov         edx,dword ptr [ebp-0C]
 004D6EA8    mov         dword ptr [eax+0C],edx
 004D6EAB    pop         edi
 004D6EAC    pop         esi
 004D6EAD    mov         esp,ebp
 004D6EAF    pop         ebp
 004D6EB0    ret
end;*}

//004D6EB4
{*function sub_004D6EB4(?:?; ?:?; ?:?):?;
begin
 004D6EB4    push        ebp
 004D6EB5    mov         ebp,esp
 004D6EB7    add         esp,0FFFFFFF0
 004D6EBA    mov         dword ptr [ebp-0C],ecx
 004D6EBD    mov         dword ptr [ebp-8],edx
 004D6EC0    mov         dword ptr [ebp-4],eax
 004D6EC3    mov         eax,dword ptr [ebp-0C]
 004D6EC6    mov         eax,dword ptr [eax]
 004D6EC8    cmp         eax,dword ptr [ebp-4]
>004D6ECB    jg          004D6EEE
 004D6ECD    mov         eax,dword ptr [ebp-0C]
 004D6ED0    mov         eax,dword ptr [eax+8]
 004D6ED3    cmp         eax,dword ptr [ebp-4]
>004D6ED6    jl          004D6EEE
 004D6ED8    mov         eax,dword ptr [ebp-0C]
 004D6EDB    mov         eax,dword ptr [eax+4]
 004D6EDE    cmp         eax,dword ptr [ebp-8]
>004D6EE1    jg          004D6EEE
 004D6EE3    mov         eax,dword ptr [ebp-0C]
 004D6EE6    mov         eax,dword ptr [eax+0C]
 004D6EE9    cmp         eax,dword ptr [ebp-8]
>004D6EEC    jge         004D6EF2
 004D6EEE    xor         eax,eax
>004D6EF0    jmp         004D6EF4
 004D6EF2    mov         al,1
 004D6EF4    mov         byte ptr [ebp-0D],al
 004D6EF7    mov         al,byte ptr [ebp-0D]
 004D6EFA    mov         esp,ebp
 004D6EFC    pop         ebp
 004D6EFD    ret
end;*}

//004D6F00
{*function sub_004D6F00(?:?; ?:?; ?:?):?;
begin
 004D6F00    push        ebp
 004D6F01    mov         ebp,esp
 004D6F03    add         esp,0FFFFFFF0
 004D6F06    mov         dword ptr [ebp-0C],ecx
 004D6F09    mov         dword ptr [ebp-8],edx
 004D6F0C    mov         dword ptr [ebp-4],eax
 004D6F0F    mov         eax,dword ptr [ebp-0C]
 004D6F12    mov         eax,dword ptr [eax]
 004D6F14    cmp         eax,dword ptr [ebp-4]
>004D6F17    jg          004D6F3A
 004D6F19    mov         eax,dword ptr [ebp-0C]
 004D6F1C    mov         eax,dword ptr [eax+8]
 004D6F1F    cmp         eax,dword ptr [ebp-4]
>004D6F22    jl          004D6F3A
 004D6F24    mov         eax,dword ptr [ebp-0C]
 004D6F27    mov         eax,dword ptr [eax+4]
 004D6F2A    cmp         eax,dword ptr [ebp-8]
>004D6F2D    jg          004D6F3A
 004D6F2F    mov         eax,dword ptr [ebp-0C]
 004D6F32    mov         eax,dword ptr [eax+0C]
 004D6F35    cmp         eax,dword ptr [ebp-8]
>004D6F38    jge         004D6F3E
 004D6F3A    xor         eax,eax
>004D6F3C    jmp         004D6F40
 004D6F3E    mov         al,1
 004D6F40    mov         byte ptr [ebp-0D],al
 004D6F43    mov         al,byte ptr [ebp-0D]
 004D6F46    mov         esp,ebp
 004D6F48    pop         ebp
 004D6F49    ret
end;*}

//004D6F4C
{*function sub_004D6F4C(?:?; ?:?; ?:?):?;
begin
 004D6F4C    push        ebp
 004D6F4D    mov         ebp,esp
 004D6F4F    add         esp,0FFFFFFF4
 004D6F52    mov         dword ptr [ebp-8],edx
 004D6F55    mov         dword ptr [ebp-4],eax
 004D6F58    mov         eax,dword ptr [ebp+8]
 004D6F5B    push        eax
 004D6F5C    mov         eax,dword ptr [ebp+8]
 004D6F5F    mov         ecx,dword ptr [eax-4]
 004D6F62    mov         edx,dword ptr [ebp-4]
 004D6F65    mov         edx,dword ptr [edx+4]
 004D6F68    mov         eax,dword ptr [ebp-4]
 004D6F6B    mov         eax,dword ptr [eax]
 004D6F6D    call        004D6F00
 004D6F72    pop         ecx
 004D6F73    test        al,al
>004D6F75    jne         004D6F9A
 004D6F77    mov         eax,dword ptr [ebp+8]
 004D6F7A    push        eax
 004D6F7B    mov         eax,dword ptr [ebp+8]
 004D6F7E    mov         ecx,dword ptr [eax-8]
 004D6F81    mov         edx,dword ptr [ebp-4]
 004D6F84    mov         edx,dword ptr [edx+4]
 004D6F87    mov         eax,dword ptr [ebp-4]
 004D6F8A    mov         eax,dword ptr [eax]
 004D6F8C    call        004D6F00
 004D6F91    pop         ecx
 004D6F92    test        al,al
>004D6F94    jne         004D6F9A
 004D6F96    xor         eax,eax
>004D6F98    jmp         004D6F9C
 004D6F9A    mov         al,1
 004D6F9C    mov         byte ptr [ebp-9],al
 004D6F9F    cmp         byte ptr [ebp-9],0
>004D6FA3    je          004D6FB5
 004D6FA5    mov         eax,dword ptr [ebp-8]
 004D6FA8    mov         edx,dword ptr [ebp-4]
 004D6FAB    mov         ecx,dword ptr [edx]
 004D6FAD    mov         dword ptr [eax],ecx
 004D6FAF    mov         ecx,dword ptr [edx+4]
 004D6FB2    mov         dword ptr [eax+4],ecx
 004D6FB5    mov         al,byte ptr [ebp-9]
 004D6FB8    mov         esp,ebp
 004D6FBA    pop         ebp
 004D6FBB    ret
end;*}

//004D6FBC
{*function sub_004D6FBC(?:?; ?:?; ?:?; ?:?; ?:?):?;
begin
 004D6FBC    push        ebp
 004D6FBD    mov         ebp,esp
 004D6FBF    add         esp,0FFFFFFF0
 004D6FC2    mov         dword ptr [ebp-0C],ecx
 004D6FC5    mov         dword ptr [ebp-8],edx
 004D6FC8    mov         dword ptr [ebp-4],eax
 004D6FCB    mov         byte ptr [ebp-0D],1
 004D6FCF    mov         eax,dword ptr [ebp+0C]
 004D6FD2    push        eax
 004D6FD3    mov         edx,dword ptr [ebp-4]
 004D6FD6    mov         eax,dword ptr [ebp-8]
 004D6FD9    call        004D6F4C
 004D6FDE    pop         ecx
 004D6FDF    test        al,al
>004D6FE1    je          004D700D
 004D6FE3    mov         eax,dword ptr [ebp+0C]
 004D6FE6    push        eax
 004D6FE7    mov         edx,dword ptr [ebp-4]
 004D6FEA    add         edx,8
 004D6FED    mov         eax,dword ptr [ebp+8]
 004D6FF0    call        004D6F4C
 004D6FF5    pop         ecx
 004D6FF6    test        al,al
>004D6FF8    jne         004D7038
 004D6FFA    mov         eax,dword ptr [ebp-4]
 004D6FFD    mov         edx,dword ptr [ebp-0C]
 004D7000    mov         ecx,dword ptr [edx]
 004D7002    mov         dword ptr [eax+8],ecx
 004D7005    mov         ecx,dword ptr [edx+4]
 004D7008    mov         dword ptr [eax+0C],ecx
>004D700B    jmp         004D7038
 004D700D    mov         eax,dword ptr [ebp+0C]
 004D7010    push        eax
 004D7011    mov         edx,dword ptr [ebp-4]
 004D7014    mov         eax,dword ptr [ebp-0C]
 004D7017    call        004D6F4C
 004D701C    pop         ecx
 004D701D    test        al,al
>004D701F    je          004D7034
 004D7021    mov         eax,dword ptr [ebp-4]
 004D7024    mov         edx,dword ptr [ebp+8]
 004D7027    mov         ecx,dword ptr [edx]
 004D7029    mov         dword ptr [eax+8],ecx
 004D702C    mov         ecx,dword ptr [edx+4]
 004D702F    mov         dword ptr [eax+0C],ecx
>004D7032    jmp         004D7038
 004D7034    mov         byte ptr [ebp-0D],0
 004D7038    mov         al,byte ptr [ebp-0D]
 004D703B    mov         esp,ebp
 004D703D    pop         ebp
 004D703E    ret         4
end;*}

//004D7044
{*procedure sub_004D7044(?:?; ?:?; ?:?);
begin
 004D7044    push        ebp
 004D7045    mov         ebp,esp
 004D7047    add         esp,0FFFFFFBC
 004D704A    push        esi
 004D704B    push        edi
 004D704C    mov         dword ptr [ebp-0C],ecx
 004D704F    mov         dword ptr [ebp-8],edx
 004D7052    mov         dword ptr [ebp-4],eax
 004D7055    mov         eax,dword ptr [ebp-0C]
 004D7058    xor         ecx,ecx
 004D705A    mov         edx,40
 004D705F    call        @FillChar
 004D7064    mov         eax,dword ptr [ebp-8]
 004D7067    push        eax
 004D7068    mov         eax,dword ptr [ebp-4]
 004D706B    push        eax
 004D706C    lea         eax,[ebp-1C]
 004D706F    push        eax
 004D7070    call        user32.IntersectRect
 004D7075    test        eax,eax
>004D7077    jne         004D709B
 004D7079    mov         eax,dword ptr [ebp-4]
 004D707C    mov         edx,dword ptr [ebp-0C]
 004D707F    mov         esi,eax
 004D7081    mov         edi,edx
 004D7083    movs        dword ptr [edi],dword ptr [esi]
 004D7084    movs        dword ptr [edi],dword ptr [esi]
 004D7085    movs        dword ptr [edi],dword ptr [esi]
 004D7086    movs        dword ptr [edi],dword ptr [esi]
 004D7087    mov         eax,dword ptr [ebp-8]
 004D708A    mov         edx,dword ptr [ebp-0C]
 004D708D    mov         esi,eax
 004D708F    lea         edi,[edx+10]
 004D7092    movs        dword ptr [edi],dword ptr [esi]
 004D7093    movs        dword ptr [edi],dword ptr [esi]
 004D7094    movs        dword ptr [edi],dword ptr [esi]
 004D7095    movs        dword ptr [edi],dword ptr [esi]
>004D7096    jmp         004D71E9
 004D709B    mov         eax,dword ptr [ebp-8]
 004D709E    push        eax
 004D709F    mov         eax,dword ptr [ebp-4]
 004D70A2    push        eax
 004D70A3    lea         eax,[ebp-2C]
 004D70A6    push        eax
 004D70A7    call        user32.UnionRect
 004D70AC    push        ebp
 004D70AD    lea         ecx,[ebp-34]
 004D70B0    mov         edx,dword ptr [ebp-10]
 004D70B3    mov         eax,dword ptr [ebp-2C]
 004D70B6    call        Point
 004D70BB    lea         eax,[ebp-34]
 004D70BE    push        eax
 004D70BF    lea         ecx,[ebp-3C]
 004D70C2    mov         edx,dword ptr [ebp-18]
 004D70C5    mov         eax,dword ptr [ebp-2C]
 004D70C8    call        Point
 004D70CD    lea         eax,[ebp-3C]
 004D70D0    push        eax
 004D70D1    lea         ecx,[ebp-44]
 004D70D4    mov         edx,dword ptr [ebp-28]
 004D70D7    mov         eax,dword ptr [ebp-2C]
 004D70DA    call        Point
 004D70DF    lea         edx,[ebp-44]
 004D70E2    mov         eax,dword ptr [ebp-0C]
 004D70E5    pop         ecx
 004D70E6    call        004D6FBC
 004D70EB    pop         ecx
 004D70EC    test        al,al
>004D70EE    je          004D70F9
 004D70F0    mov         eax,dword ptr [ebp-0C]
 004D70F3    mov         edx,dword ptr [ebp-1C]
 004D70F6    mov         dword ptr [eax+8],edx
 004D70F9    push        ebp
 004D70FA    lea         ecx,[ebp-34]
 004D70FD    mov         edx,dword ptr [ebp-28]
 004D7100    mov         eax,dword ptr [ebp-24]
 004D7103    call        Point
 004D7108    lea         eax,[ebp-34]
 004D710B    push        eax
 004D710C    lea         ecx,[ebp-3C]
 004D710F    mov         edx,dword ptr [ebp-28]
 004D7112    mov         eax,dword ptr [ebp-14]
 004D7115    call        Point
 004D711A    lea         eax,[ebp-3C]
 004D711D    push        eax
 004D711E    lea         ecx,[ebp-44]
 004D7121    mov         edx,dword ptr [ebp-28]
 004D7124    mov         eax,dword ptr [ebp-1C]
 004D7127    call        Point
 004D712C    lea         edx,[ebp-44]
 004D712F    mov         eax,dword ptr [ebp-0C]
 004D7132    add         eax,10
 004D7135    pop         ecx
 004D7136    call        004D6FBC
 004D713B    pop         ecx
 004D713C    test        al,al
>004D713E    je          004D7149
 004D7140    mov         eax,dword ptr [ebp-0C]
 004D7143    mov         edx,dword ptr [ebp-18]
 004D7146    mov         dword ptr [eax+1C],edx
 004D7149    push        ebp
 004D714A    lea         ecx,[ebp-34]
 004D714D    mov         edx,dword ptr [ebp-20]
 004D7150    mov         eax,dword ptr [ebp-24]
 004D7153    call        Point
 004D7158    lea         eax,[ebp-34]
 004D715B    push        eax
 004D715C    lea         ecx,[ebp-3C]
 004D715F    mov         edx,dword ptr [ebp-10]
 004D7162    mov         eax,dword ptr [ebp-24]
 004D7165    call        Point
 004D716A    lea         eax,[ebp-3C]
 004D716D    push        eax
 004D716E    lea         ecx,[ebp-44]
 004D7171    mov         edx,dword ptr [ebp-18]
 004D7174    mov         eax,dword ptr [ebp-24]
 004D7177    call        Point
 004D717C    lea         edx,[ebp-44]
 004D717F    mov         eax,dword ptr [ebp-0C]
 004D7182    add         eax,20
 004D7185    pop         ecx
 004D7186    call        004D6FBC
 004D718B    pop         ecx
 004D718C    test        al,al
>004D718E    je          004D7199
 004D7190    mov         eax,dword ptr [ebp-0C]
 004D7193    mov         edx,dword ptr [ebp-14]
 004D7196    mov         dword ptr [eax+20],edx
 004D7199    push        ebp
 004D719A    lea         ecx,[ebp-34]
 004D719D    mov         edx,dword ptr [ebp-20]
 004D71A0    mov         eax,dword ptr [ebp-14]
 004D71A3    call        Point
 004D71A8    lea         eax,[ebp-34]
 004D71AB    push        eax
 004D71AC    lea         ecx,[ebp-3C]
 004D71AF    mov         edx,dword ptr [ebp-20]
 004D71B2    mov         eax,dword ptr [ebp-1C]
 004D71B5    call        Point
 004D71BA    lea         eax,[ebp-3C]
 004D71BD    push        eax
 004D71BE    lea         ecx,[ebp-44]
 004D71C1    mov         edx,dword ptr [ebp-20]
 004D71C4    mov         eax,dword ptr [ebp-2C]
 004D71C7    call        Point
 004D71CC    lea         edx,[ebp-44]
 004D71CF    mov         eax,dword ptr [ebp-0C]
 004D71D2    add         eax,30
 004D71D5    pop         ecx
 004D71D6    call        004D6FBC
 004D71DB    pop         ecx
 004D71DC    test        al,al
>004D71DE    je          004D71E9
 004D71E0    mov         eax,dword ptr [ebp-0C]
 004D71E3    mov         edx,dword ptr [ebp-10]
 004D71E6    mov         dword ptr [eax+34],edx
 004D71E9    pop         edi
 004D71EA    pop         esi
 004D71EB    mov         esp,ebp
 004D71ED    pop         ebp
 004D71EE    ret
end;*}

//004D71F0
{*procedure sub_004D71F0(?:?; ?:?; ?:?; ?:?);
begin
 004D71F0    push        ebp
 004D71F1    mov         ebp,esp
 004D71F3    add         esp,0FFFFFFD8
 004D71F6    push        ebx
 004D71F7    xor         ebx,ebx
 004D71F9    mov         dword ptr [ebp-28],ebx
 004D71FC    mov         dword ptr [ebp-24],ebx
 004D71FF    mov         dword ptr [ebp-20],ebx
 004D7202    mov         dword ptr [ebp-0C],ecx
 004D7205    mov         dword ptr [ebp-8],edx
 004D7208    mov         dword ptr [ebp-4],eax
 004D720B    xor         eax,eax
 004D720D    push        ebp
 004D720E    push        4D7316
 004D7213    push        dword ptr fs:[eax]
 004D7216    mov         dword ptr fs:[eax],esp
 004D7219    cmp         dword ptr [ebp-0C],0
>004D721D    je          004D72FB
 004D7223    mov         eax,dword ptr [ebp-4]
 004D7226    cmp         dword ptr [eax],0
>004D7229    jne         004D7232
 004D722B    xor         eax,eax
 004D722D    mov         dword ptr [ebp-14],eax
>004D7230    jmp         004D723C
 004D7232    mov         eax,dword ptr [ebp-4]
 004D7235    mov         eax,dword ptr [eax]
 004D7237    mov         eax,dword ptr [eax]
 004D7239    mov         dword ptr [ebp-14],eax
 004D723C    cmp         dword ptr [ebp-8],0
>004D7240    jl          004D724A
 004D7242    mov         eax,dword ptr [ebp-14]
 004D7245    cmp         eax,dword ptr [ebp-8]
>004D7248    jge         004D725F
 004D724A    lea         edx,[ebp-20]
 004D724D    mov         eax,[0056E410];^SIndexOutOfRange:TResStringRec
 004D7252    call        LoadResString
 004D7257    mov         eax,dword ptr [ebp-20]
 004D725A    call        004D6E0C
 004D725F    mov         eax,dword ptr [ebp-14]
 004D7262    add         eax,dword ptr [ebp-0C]
 004D7265    mov         dword ptr [ebp-10],eax
 004D7268    cmp         dword ptr [ebp-10],0
>004D726C    jge         004D7285
 004D726E    lea         edx,[ebp-24]
 004D7271    mov         eax,[0056E2B0];^STooManyDeleted:TResStringRec
 004D7276    call        LoadResString
 004D727B    mov         eax,dword ptr [ebp-24]
 004D727E    call        004D6E0C
>004D7283    jmp         004D72A3
 004D7285    cmp         dword ptr [ebp-10],7FFFFFE
>004D728C    jl          004D72A3
 004D728E    lea         edx,[ebp-28]
 004D7291    mov         eax,[0056E34C];^SGridTooLarge:TResStringRec
 004D7296    call        LoadResString
 004D729B    mov         eax,dword ptr [ebp-28]
 004D729E    call        004D6E0C
 004D72A3    mov         eax,dword ptr [ebp-10]
 004D72A6    mov         dword ptr [ebp-18],eax
 004D72A9    cmp         dword ptr [ebp-18],0
>004D72AD    jle         004D72B2
 004D72AF    inc         dword ptr [ebp-18]
 004D72B2    mov         edx,dword ptr [ebp-18]
 004D72B5    shl         edx,2
 004D72B8    mov         eax,dword ptr [ebp-4]
 004D72BB    call        @ReallocMem
 004D72C0    mov         eax,dword ptr [ebp-4]
 004D72C3    cmp         dword ptr [eax],0
>004D72C6    je          004D72FB
 004D72C8    mov         eax,dword ptr [ebp-8]
 004D72CB    inc         eax
 004D72CC    mov         dword ptr [ebp-1C],eax
 004D72CF    mov         eax,dword ptr [ebp-1C]
 004D72D2    cmp         eax,dword ptr [ebp-18]
>004D72D5    jge         004D72F0
 004D72D7    mov         eax,dword ptr [ebp-4]
 004D72DA    mov         eax,dword ptr [eax]
 004D72DC    mov         edx,dword ptr [ebp-1C]
 004D72DF    mov         ecx,dword ptr [ebp+8]
 004D72E2    mov         dword ptr [eax+edx*4],ecx
 004D72E5    inc         dword ptr [ebp-1C]
 004D72E8    mov         eax,dword ptr [ebp-1C]
 004D72EB    cmp         eax,dword ptr [ebp-18]
>004D72EE    jl          004D72D7
 004D72F0    mov         eax,dword ptr [ebp-18]
 004D72F3    dec         eax
 004D72F4    mov         edx,dword ptr [ebp-4]
 004D72F7    mov         edx,dword ptr [edx]
 004D72F9    mov         dword ptr [edx],eax
 004D72FB    xor         eax,eax
 004D72FD    pop         edx
 004D72FE    pop         ecx
 004D72FF    pop         ecx
 004D7300    mov         dword ptr fs:[eax],edx
 004D7303    push        4D731D
 004D7308    lea         eax,[ebp-28]
 004D730B    mov         edx,3
 004D7310    call        @LStrArrayClr
 004D7315    ret
>004D7316    jmp         @HandleFinally
>004D731B    jmp         004D7308
 004D731D    pop         ebx
 004D731E    mov         esp,ebp
 004D7320    pop         ebp
 004D7321    ret         4
end;*}

//004D7324
procedure sub_004D7324(?:Pointer; ?:Longint; ?:Integer);
begin
{*
 004D7324    push        ebp
 004D7325    mov         ebp,esp
 004D7327    add         esp,0FFFFFFF0
 004D732A    mov         dword ptr [ebp-0C],ecx
 004D732D    mov         dword ptr [ebp-8],edx
 004D7330    mov         dword ptr [ebp-4],eax
 004D7333    xor         eax,eax
 004D7335    mov         dword ptr [ebp-10],eax
 004D7338    mov         eax,dword ptr [ebp-4]
 004D733B    cmp         dword ptr [eax],0
>004D733E    je          004D734A
 004D7340    mov         eax,dword ptr [ebp-4]
 004D7343    mov         eax,dword ptr [eax]
 004D7345    mov         eax,dword ptr [eax]
 004D7347    mov         dword ptr [ebp-10],eax
 004D734A    mov         eax,dword ptr [ebp-0C]
 004D734D    push        eax
 004D734E    mov         ecx,dword ptr [ebp-8]
 004D7351    sub         ecx,dword ptr [ebp-10]
 004D7354    mov         eax,dword ptr [ebp-4]
 004D7357    mov         edx,dword ptr [ebp-10]
 004D735A    call        004D71F0
 004D735F    mov         esp,ebp
 004D7361    pop         ebp
 004D7362    ret
*}
end;

//004D7364
{*procedure sub_004D7364(?:?; ?:?; ?:?);
begin
 004D7364    push        ebp
 004D7365    mov         ebp,esp
 004D7367    add         esp,0FFFFFFF0
 004D736A    push        ebx
 004D736B    mov         dword ptr [ebp-0C],ecx
 004D736E    mov         dword ptr [ebp-8],edx
 004D7371    mov         dword ptr [ebp-4],eax
 004D7374    mov         eax,dword ptr [ebp-4]
 004D7377    cmp         dword ptr [eax],0
>004D737A    je          004D73F6
 004D737C    mov         eax,dword ptr [ebp-4]
 004D737F    mov         eax,dword ptr [eax]
 004D7381    mov         edx,dword ptr [ebp-8]
 004D7384    mov         eax,dword ptr [eax+edx*4]
 004D7387    mov         dword ptr [ebp-10],eax
 004D738A    mov         eax,dword ptr [ebp-8]
 004D738D    cmp         eax,dword ptr [ebp-0C]
>004D7390    jge         004D73BB
 004D7392    mov         eax,dword ptr [ebp-0C]
 004D7395    sub         eax,dword ptr [ebp-8]
 004D7398    mov         ecx,eax
 004D739A    shl         ecx,2
 004D739D    mov         eax,dword ptr [ebp-4]
 004D73A0    mov         eax,dword ptr [eax]
 004D73A2    mov         edx,dword ptr [ebp-8]
 004D73A5    lea         edx,[eax+edx*4]
 004D73A8    mov         eax,dword ptr [ebp-4]
 004D73AB    mov         eax,dword ptr [eax]
 004D73AD    mov         ebx,dword ptr [ebp-8]
 004D73B0    lea         eax,[eax+ebx*4+4]
 004D73B4    call        Move
>004D73B9    jmp         004D73E8
 004D73BB    mov         eax,dword ptr [ebp-8]
 004D73BE    cmp         eax,dword ptr [ebp-0C]
>004D73C1    jle         004D73E8
 004D73C3    mov         eax,dword ptr [ebp-4]
 004D73C6    mov         eax,dword ptr [eax]
 004D73C8    mov         edx,dword ptr [ebp-0C]
 004D73CB    lea         edx,[eax+edx*4+4]
 004D73CF    mov         eax,dword ptr [ebp-4]
 004D73D2    mov         eax,dword ptr [eax]
 004D73D4    mov         ecx,dword ptr [ebp-0C]
 004D73D7    lea         eax,[eax+ecx*4]
 004D73DA    mov         ecx,dword ptr [ebp-8]
 004D73DD    sub         ecx,dword ptr [ebp-0C]
 004D73E0    shl         ecx,2
 004D73E3    call        Move
 004D73E8    mov         eax,dword ptr [ebp-4]
 004D73EB    mov         eax,dword ptr [eax]
 004D73ED    mov         edx,dword ptr [ebp-0C]
 004D73F0    mov         ecx,dword ptr [ebp-10]
 004D73F3    mov         dword ptr [eax+edx*4],ecx
 004D73F6    pop         ebx
 004D73F7    mov         esp,ebp
 004D73F9    pop         ebp
 004D73FA    ret
end;*}

//004D73FC
{*function sub_004D73FC(?:?; ?:?):?;
begin
 004D73FC    push        ebp
 004D73FD    mov         ebp,esp
 004D73FF    add         esp,0FFFFFFEC
 004D7402    mov         dword ptr [ebp-8],edx
 004D7405    mov         dword ptr [ebp-4],eax
 004D7408    mov         byte ptr [ebp-9],0
 004D740C    cmp         dword ptr [ebp-4],0
>004D7410    je          004D744E
 004D7412    cmp         dword ptr [ebp-8],0
>004D7416    je          004D7456
 004D7418    mov         eax,dword ptr [ebp-4]
 004D741B    mov         eax,dword ptr [eax]
 004D741D    test        eax,eax
>004D741F    jl          004D7448
 004D7421    inc         eax
 004D7422    mov         dword ptr [ebp-14],eax
 004D7425    mov         dword ptr [ebp-10],0
 004D742C    mov         eax,dword ptr [ebp-4]
 004D742F    mov         edx,dword ptr [ebp-10]
 004D7432    mov         eax,dword ptr [eax+edx*4]
 004D7435    mov         edx,dword ptr [ebp-8]
 004D7438    mov         ecx,dword ptr [ebp-10]
 004D743B    cmp         eax,dword ptr [edx+ecx*4]
>004D743E    jne         004D7456
 004D7440    inc         dword ptr [ebp-10]
 004D7443    dec         dword ptr [ebp-14]
>004D7446    jne         004D742C
 004D7448    mov         byte ptr [ebp-9],1
>004D744C    jmp         004D7456
 004D744E    cmp         dword ptr [ebp-8],0
 004D7452    sete        byte ptr [ebp-9]
 004D7456    mov         al,byte ptr [ebp-9]
 004D7459    mov         esp,ebp
 004D745B    pop         ebp
 004D745C    ret
end;*}

//004D7460
function kernel32.MulDiv(nNumerator:Integer; nDenominator:Integer):Integer; stdcall;
begin
{*
 004D7460    jmp         dword ptr ds:[61C84C]
*}
end;

//004D7468
constructor TInplaceEdit.Create;
begin
{*
 004D7468    push        ebp
 004D7469    mov         ebp,esp
 004D746B    add         esp,0FFFFFFF4
 004D746E    test        dl,dl
>004D7470    je          004D747A
 004D7472    add         esp,0FFFFFFF0
 004D7475    call        @ClassCreate
 004D747A    mov         dword ptr [ebp-0C],ecx
 004D747D    mov         byte ptr [ebp-5],dl
 004D7480    mov         dword ptr [ebp-4],eax
 004D7483    mov         ecx,dword ptr [ebp-0C]
 004D7486    xor         edx,edx
 004D7488    mov         eax,dword ptr [ebp-4]
 004D748B    call        004D4520
 004D7490    xor         edx,edx
 004D7492    mov         eax,dword ptr [ebp-4]
 004D7495    call        TPanel.SetParentCtl3D
 004D749A    xor         edx,edx
 004D749C    mov         eax,dword ptr [ebp-4]
 004D749F    call        TPanel.SetCtl3D
 004D74A4    xor         edx,edx
 004D74A6    mov         eax,dword ptr [ebp-4]
 004D74A9    call        TPanel.SetTabStop
 004D74AE    xor         edx,edx
 004D74B0    mov         eax,dword ptr [ebp-4]
 004D74B3    call        TLabeledEdit.SetBorderStyle
 004D74B8    mov         eax,dword ptr [ebp-4]
 004D74BB    mov         byte ptr [eax+1F8],0;TInplaceEdit.FDoubleBuffered:Boolean
 004D74C2    mov         eax,dword ptr [ebp-4]
 004D74C5    cmp         byte ptr [ebp-5],0
>004D74C9    je          004D74DA
 004D74CB    call        @AfterConstruction
 004D74D0    pop         dword ptr fs:[0]
 004D74D7    add         esp,0C
 004D74DA    mov         eax,dword ptr [ebp-4]
 004D74DD    mov         esp,ebp
 004D74DF    pop         ebp
 004D74E0    ret
*}
end;

//004D74E4
{*procedure sub_004D74E4(?:?);
begin
 004D74E4    push        ebp
 004D74E5    mov         ebp,esp
 004D74E7    add         esp,0FFFFFFF8
 004D74EA    mov         dword ptr [ebp-8],edx
 004D74ED    mov         dword ptr [ebp-4],eax
 004D74F0    mov         edx,dword ptr [ebp-8]
 004D74F3    mov         eax,dword ptr [ebp-4]
 004D74F6    call        00474444
 004D74FB    mov         eax,dword ptr [ebp-8]
 004D74FE    or          dword ptr [eax+4],4
 004D7502    pop         ecx
 004D7503    pop         ecx
 004D7504    pop         ebp
 004D7505    ret
end;*}

//004D7508
procedure sub_004D7508(?:TInplaceEdit; ?:TCustomGrid);
begin
{*
 004D7508    push        ebp
 004D7509    mov         ebp,esp
 004D750B    add         esp,0FFFFFFF8
 004D750E    mov         dword ptr [ebp-8],edx
 004D7511    mov         dword ptr [ebp-4],eax
 004D7514    mov         eax,dword ptr [ebp-8]
 004D7517    mov         edx,dword ptr [ebp-4]
 004D751A    mov         dword ptr [edx+240],eax
 004D7520    pop         ecx
 004D7521    pop         ecx
 004D7522    pop         ebp
 004D7523    ret
*}
end;

//004D7524
{*procedure TInplaceEdit.CMShowingChanged(?:?);
begin
 004D7524    push        ebp
 004D7525    mov         ebp,esp
 004D7527    add         esp,0FFFFFFF8
 004D752A    mov         dword ptr [ebp-8],edx
 004D752D    mov         dword ptr [ebp-4],eax
 004D7530    pop         ecx
 004D7531    pop         ecx
 004D7532    pop         ebp
 004D7533    ret
end;*}

//004D7534
{*procedure TInplaceEdit.WMGetDlgCode(?:?);
begin
 004D7534    push        ebp
 004D7535    mov         ebp,esp
 004D7537    add         esp,0FFFFFFF8
 004D753A    mov         dword ptr [ebp-8],edx
 004D753D    mov         dword ptr [ebp-4],eax
 004D7540    mov         edx,dword ptr [ebp-8]
 004D7543    mov         eax,dword ptr [ebp-4]
 004D7546    mov         ecx,dword ptr [eax]
 004D7548    call        dword ptr [ecx-10];TCustomEdit.DefaultHandler
 004D754B    mov         eax,dword ptr [ebp-4]
 004D754E    mov         eax,dword ptr [eax+240];TInplaceEdit.FGrid:TCustomGrid
 004D7554    test        byte ptr [eax+249],8;TCustomGrid.?f249:byte
>004D755B    je          004D7564
 004D755D    mov         eax,dword ptr [ebp-8]
 004D7560    or          dword ptr [eax+0C],2
 004D7564    pop         ecx
 004D7565    pop         ecx
 004D7566    pop         ebp
 004D7567    ret
end;*}

//004D7568
{*procedure TInplaceEdit.WMPaste(?:?);
begin
 004D7568    push        ebp
 004D7569    mov         ebp,esp
 004D756B    add         esp,0FFFFFFF8
 004D756E    mov         dword ptr [ebp-8],edx
 004D7571    mov         dword ptr [ebp-4],eax
 004D7574    mov         eax,dword ptr [ebp-4]
 004D7577    mov         edx,dword ptr [eax]
 004D7579    call        dword ptr [edx+0E8];TInplaceEdit.sub_004D7650
 004D757F    test        al,al
>004D7581    je          004D758E
 004D7583    mov         edx,dword ptr [ebp-8]
 004D7586    mov         eax,dword ptr [ebp-4]
 004D7589    call        TCustomMaskEdit.WMPaste
 004D758E    pop         ecx
 004D758F    pop         ecx
 004D7590    pop         ebp
 004D7591    ret
end;*}

//004D7594
{*procedure TInplaceEdit.WMClear(?:?);
begin
 004D7594    push        ebp
 004D7595    mov         ebp,esp
 004D7597    add         esp,0FFFFFFF8
 004D759A    mov         dword ptr [ebp-8],edx
 004D759D    mov         dword ptr [ebp-4],eax
 004D75A0    mov         eax,dword ptr [ebp-4]
 004D75A3    mov         edx,dword ptr [eax]
 004D75A5    call        dword ptr [edx+0E8];TInplaceEdit.sub_004D7650
 004D75AB    test        al,al
>004D75AD    je          004D75BA
 004D75AF    mov         edx,dword ptr [ebp-8]
 004D75B2    mov         eax,dword ptr [ebp-4]
 004D75B5    mov         ecx,dword ptr [eax]
 004D75B7    call        dword ptr [ecx-10];TCustomEdit.DefaultHandler
 004D75BA    pop         ecx
 004D75BB    pop         ecx
 004D75BC    pop         ebp
 004D75BD    ret
end;*}

//004D75C0
{*procedure TInplaceEdit.WMCut(?:?);
begin
 004D75C0    push        ebp
 004D75C1    mov         ebp,esp
 004D75C3    add         esp,0FFFFFFF8
 004D75C6    mov         dword ptr [ebp-8],edx
 004D75C9    mov         dword ptr [ebp-4],eax
 004D75CC    mov         eax,dword ptr [ebp-4]
 004D75CF    mov         edx,dword ptr [eax]
 004D75D1    call        dword ptr [edx+0E8];TInplaceEdit.sub_004D7650
 004D75D7    test        al,al
>004D75D9    je          004D75E6
 004D75DB    mov         edx,dword ptr [ebp-8]
 004D75DE    mov         eax,dword ptr [ebp-4]
 004D75E1    call        TCustomMaskEdit.WMCut
 004D75E6    pop         ecx
 004D75E7    pop         ecx
 004D75E8    pop         ebp
 004D75E9    ret
end;*}

//004D75EC
procedure TInplaceEdit.sub_0048555C;
begin
{*
 004D75EC    push        ebp
 004D75ED    mov         ebp,esp
 004D75EF    push        ecx
 004D75F0    push        esi
 004D75F1    mov         dword ptr [ebp-4],eax
 004D75F4    mov         eax,dword ptr [ebp-4]
 004D75F7    mov         eax,dword ptr [eax+240];TInplaceEdit.FGrid:TCustomGrid
 004D75FD    mov         si,0FFE9
 004D7601    call        @CallDynaInst;TControl.sub_0048555C
 004D7606    pop         esi
 004D7607    pop         ecx
 004D7608    pop         ebp
 004D7609    ret
*}
end;

//004D760C
{*procedure TInplaceEdit.sub_004845BC(?:?; ?:?; ?:?);
begin
 004D760C    push        ebp
 004D760D    mov         ebp,esp
 004D760F    add         esp,0FFFFFFE8
 004D7612    push        esi
 004D7613    push        edi
 004D7614    mov         esi,dword ptr [ebp+8]
 004D7617    lea         edi,[ebp-14]
 004D761A    movs        dword ptr [edi],dword ptr [esi]
 004D761B    movs        dword ptr [edi],dword ptr [esi]
 004D761C    mov         dword ptr [ebp-0C],ecx
 004D761F    mov         byte ptr [ebp-5],dl
 004D7622    mov         dword ptr [ebp-4],eax
 004D7625    lea         eax,[ebp-14]
 004D7628    push        eax
 004D7629    mov         ecx,dword ptr [ebp-0C]
 004D762C    mov         dl,byte ptr [ebp-5]
 004D762F    mov         eax,dword ptr [ebp-4]
 004D7632    mov         eax,dword ptr [eax+240];TInplaceEdit.FGrid:TCustomGrid
 004D7638    mov         si,0FFE2
 004D763C    call        @CallDynaInst;TControl.sub_004845BC
 004D7641    mov         byte ptr [ebp-15],al
 004D7644    mov         al,byte ptr [ebp-15]
 004D7647    pop         edi
 004D7648    pop         esi
 004D7649    mov         esp,ebp
 004D764B    pop         ebp
 004D764C    ret         4
end;*}

//004D7650
{*function sub_004D7650:?;
begin
 004D7650    push        ebp
 004D7651    mov         ebp,esp
 004D7653    add         esp,0FFFFFFF8
 004D7656    push        esi
 004D7657    mov         dword ptr [ebp-4],eax
 004D765A    mov         eax,dword ptr [ebp-4]
 004D765D    mov         eax,dword ptr [eax+240];TInplaceEdit.FGrid:TCustomGrid
 004D7663    mov         si,0FFB0
 004D7667    call        @CallDynaInst;TCustomGrid.sub_004D85CC
 004D766C    mov         byte ptr [ebp-5],al
 004D766F    mov         al,byte ptr [ebp-5]
 004D7672    pop         esi
 004D7673    pop         ecx
 004D7674    pop         ecx
 004D7675    pop         ebp
 004D7676    ret
end;*}

//004D7678
procedure SendToParent;
begin
{*
 004D7678    push        ebp
 004D7679    mov         ebp,esp
 004D767B    push        esi
 004D767C    mov         eax,dword ptr [ebp+8]
 004D767F    mov         cl,byte ptr [eax-9]
 004D7682    mov         eax,dword ptr [ebp+8]
 004D7685    mov         edx,dword ptr [eax-8]
 004D7688    mov         eax,dword ptr [ebp+8]
 004D768B    mov         eax,dword ptr [eax-4]
 004D768E    mov         eax,dword ptr [eax+240]
 004D7694    mov         si,0FFBC
 004D7698    call        @CallDynaInst
 004D769D    mov         eax,dword ptr [ebp+8]
 004D76A0    mov         eax,dword ptr [eax-8]
 004D76A3    mov         word ptr [eax],0
 004D76A8    pop         esi
 004D76A9    pop         ebp
 004D76AA    ret
*}
end;

//004D76AC
procedure ParentEvent;
begin
{*
 004D76AC    push        ebp
 004D76AD    mov         ebp,esp
 004D76AF    add         esp,0FFFFFFF8
 004D76B2    mov         eax,dword ptr [ebp+8]
 004D76B5    mov         eax,dword ptr [eax-4]
 004D76B8    mov         eax,dword ptr [eax+240]
 004D76BE    mov         edx,dword ptr [eax+1D8]
 004D76C4    mov         dword ptr [ebp-8],edx
 004D76C7    mov         edx,dword ptr [eax+1DC]
 004D76CD    mov         dword ptr [ebp-4],edx
 004D76D0    cmp         word ptr [ebp-6],0
>004D76D5    je          004D76F6
 004D76D7    mov         eax,dword ptr [ebp+8]
 004D76DA    mov         al,byte ptr [eax-9]
 004D76DD    push        eax
 004D76DE    mov         eax,dword ptr [ebp+8]
 004D76E1    mov         ecx,dword ptr [eax-8]
 004D76E4    mov         eax,dword ptr [ebp+8]
 004D76E7    mov         eax,dword ptr [eax-4]
 004D76EA    mov         edx,dword ptr [eax+240]
 004D76F0    mov         eax,dword ptr [ebp-4]
 004D76F3    call        dword ptr [ebp-8]
 004D76F6    pop         ecx
 004D76F7    pop         ecx
 004D76F8    pop         ebp
 004D76F9    ret
*}
end;

//004D76FC
function ForwardMovement:Boolean;
begin
{*
 004D76FC    push        ebp
 004D76FD    mov         ebp,esp
 004D76FF    push        ecx
 004D7700    mov         eax,dword ptr [ebp+8]
 004D7703    mov         eax,dword ptr [eax-4]
 004D7706    mov         eax,dword ptr [eax+240]
 004D770C    test        byte ptr [eax+249],20
 004D7713    setne       al
 004D7716    mov         byte ptr [ebp-1],al
 004D7719    mov         al,byte ptr [ebp-1]
 004D771C    pop         ecx
 004D771D    pop         ebp
 004D771E    ret
*}
end;

//004D7720
function Ctrl:Boolean;
begin
{*
 004D7720    push        ebp
 004D7721    mov         ebp,esp
 004D7723    push        ecx
 004D7724    mov         eax,dword ptr [ebp+8]
 004D7727    test        byte ptr [eax-9],4
 004D772B    setne       al
 004D772E    mov         byte ptr [ebp-1],al
 004D7731    mov         al,byte ptr [ebp-1]
 004D7734    pop         ecx
 004D7735    pop         ebp
 004D7736    ret
*}
end;

//004D7738
{*procedure sub_004D7738(?:?; ?:?);
begin
 004D7738    push        ebp
 004D7739    mov         ebp,esp
 004D773B    push        ecx
 004D773C    mov         dword ptr [ebp-4],eax
 004D773F    mov         eax,dword ptr [ebp-4]
 004D7742    add         eax,4
 004D7745    push        eax
 004D7746    mov         eax,dword ptr [ebp-4]
 004D7749    push        eax
 004D774A    push        0B0
 004D774F    mov         eax,dword ptr [ebp+8]
 004D7752    mov         eax,dword ptr [eax-4]
 004D7755    call        TWinControl.GetHandle
 004D775A    push        eax
 004D775B    call        user32.SendMessageA
 004D7760    pop         ecx
 004D7761    pop         ebp
 004D7762    ret
end;*}

//004D7764
{*function sub_004D7764(?:?):?;
begin
 004D7764    push        ebp
 004D7765    mov         ebp,esp
 004D7767    add         esp,0FFFFFFF4
 004D776A    lea         eax,[ebp-0C]
 004D776D    push        eax
 004D776E    call        user32.GetCaretPos
 004D7773    mov         dx,word ptr [ebp-8]
 004D7777    mov         ax,word ptr [ebp-0C]
 004D777B    call        0040845C
 004D7780    push        eax
 004D7781    push        0
 004D7783    push        0D7
 004D7788    mov         eax,dword ptr [ebp+8]
 004D778B    mov         eax,dword ptr [eax-4]
 004D778E    call        TWinControl.GetHandle
 004D7793    push        eax
 004D7794    call        user32.SendMessageA
 004D7799    mov         dword ptr [ebp-4],eax
 004D779C    mov         eax,dword ptr [ebp-4]
 004D779F    mov         esp,ebp
 004D77A1    pop         ebp
 004D77A2    ret
end;*}

//004D77A4
function RightSide:Boolean;
begin
{*
 004D77A4    push        ebp
 004D77A5    mov         ebp,esp
 004D77A7    add         esp,0FFFFFFF4
 004D77AA    push        ebx
 004D77AB    mov         eax,dword ptr [ebp+8]
 004D77AE    push        eax
 004D77AF    lea         eax,[ebp-0C]
 004D77B2    call        004D7738
 004D77B7    pop         ecx
 004D77B8    mov         eax,dword ptr [ebp+8]
 004D77BB    mov         eax,dword ptr [eax-4]
 004D77BE    call        004D48C8
 004D77C3    mov         ebx,eax
 004D77C5    mov         eax,dword ptr [ebp+8]
 004D77C8    push        eax
 004D77C9    call        004D7764
 004D77CE    pop         ecx
 004D77CF    cmp         ebx,eax
>004D77D1    jne         004D77F1
 004D77D3    cmp         dword ptr [ebp-0C],0
>004D77D7    je          004D77E1
 004D77D9    mov         eax,dword ptr [ebp-8]
 004D77DC    cmp         eax,dword ptr [ebp-0C]
>004D77DF    jne         004D77F1
 004D77E1    mov         eax,dword ptr [ebp+8]
 004D77E4    mov         eax,dword ptr [eax-4]
 004D77E7    call        004D48C8
 004D77EC    cmp         eax,dword ptr [ebp-8]
>004D77EF    je          004D77F5
 004D77F1    xor         eax,eax
>004D77F3    jmp         004D77F7
 004D77F5    mov         al,1
 004D77F7    mov         byte ptr [ebp-1],al
 004D77FA    mov         al,byte ptr [ebp-1]
 004D77FD    pop         ebx
 004D77FE    mov         esp,ebp
 004D7800    pop         ebp
 004D7801    ret
*}
end;

//004D7804
function LeftSide:Boolean;
begin
{*
 004D7804    push        ebp
 004D7805    mov         ebp,esp
 004D7807    add         esp,0FFFFFFF4
 004D780A    mov         eax,dword ptr [ebp+8]
 004D780D    push        eax
 004D780E    lea         eax,[ebp-0C]
 004D7811    call        004D7738
 004D7816    pop         ecx
 004D7817    mov         eax,dword ptr [ebp+8]
 004D781A    push        eax
 004D781B    call        004D7764
 004D7820    pop         ecx
 004D7821    test        eax,eax
>004D7823    jne         004D7841
 004D7825    cmp         dword ptr [ebp-0C],0
>004D7829    jne         004D7841
 004D782B    cmp         dword ptr [ebp-8],0
>004D782F    je          004D7845
 004D7831    mov         eax,dword ptr [ebp+8]
 004D7834    mov         eax,dword ptr [eax-4]
 004D7837    call        004D48C8
 004D783C    cmp         eax,dword ptr [ebp-8]
>004D783F    je          004D7845
 004D7841    xor         eax,eax
>004D7843    jmp         004D7847
 004D7845    mov         al,1
 004D7847    mov         byte ptr [ebp-1],al
 004D784A    mov         al,byte ptr [ebp-1]
 004D784D    mov         esp,ebp
 004D784F    pop         ebp
 004D7850    ret
*}
end;

//004D7854
procedure TInplaceEdit.KeyDown(var Key:Word; Shift:TShiftState);
begin
{*
 004D7854    push        ebp
 004D7855    mov         ebp,esp
 004D7857    add         esp,0FFFFFFF4
 004D785A    push        esi
 004D785B    mov         byte ptr [ebp-9],cl
 004D785E    mov         dword ptr [ebp-8],edx
 004D7861    mov         dword ptr [ebp-4],eax
 004D7864    mov         eax,dword ptr [ebp-8]
 004D7867    movzx       eax,word ptr [eax]
 004D786A    cmp         eax,26
>004D786D    jg          004D78AC
>004D786F    je          004D78DB
 004D7871    cmp         eax,23
>004D7874    jg          004D7897
>004D7876    je          004D79D1
 004D787C    sub         eax,9
>004D787F    je          004D7A15
 004D7885    sub         eax,12
>004D7888    je          004D78DB
 004D788A    add         eax,0FFFFFFFA
 004D788D    sub         eax,2
>004D7890    jb          004D78DB
>004D7892    jmp         004D7A56
 004D7897    sub         eax,24
>004D789A    je          004D799C
 004D78A0    dec         eax
>004D78A1    je          004D7932
>004D78A7    jmp         004D7A56
 004D78AC    cmp         eax,2D
>004D78AF    jg          004D78C4
>004D78B1    je          004D78E7
 004D78B3    sub         eax,27
>004D78B6    je          004D7967
 004D78BC    dec         eax
>004D78BD    je          004D78DB
>004D78BF    jmp         004D7A56
 004D78C4    sub         eax,2E
>004D78C7    je          004D7A24
 004D78CD    sub         eax,43
>004D78D0    je          004D79FB
>004D78D6    jmp         004D7A56
 004D78DB    push        ebp
 004D78DC    call        SendToParent
 004D78E1    pop         ecx
>004D78E2    jmp         004D7A56
 004D78E7    mov         al,[004D7A7C]
 004D78EC    cmp         al,byte ptr [ebp-9]
>004D78EF    jne         004D78FD
 004D78F1    push        ebp
 004D78F2    call        SendToParent
 004D78F7    pop         ecx
>004D78F8    jmp         004D7A56
 004D78FD    mov         al,[004D7A80]
 004D7902    cmp         al,byte ptr [ebp-9]
>004D7905    jne         004D7A56
 004D790B    mov         eax,dword ptr [ebp-4]
 004D790E    mov         eax,dword ptr [eax+240]
 004D7914    mov         si,0FFB0
 004D7918    call        @CallDynaInst
 004D791D    test        al,al
>004D791F    jne         004D7A56
 004D7925    mov         eax,dword ptr [ebp-8]
 004D7928    mov         word ptr [eax],0
>004D792D    jmp         004D7A56
 004D7932    push        ebp
 004D7933    call        ForwardMovement
 004D7938    pop         ecx
 004D7939    test        al,al
>004D793B    je          004D7A56
 004D7941    push        ebp
 004D7942    call        Ctrl
 004D7947    pop         ecx
 004D7948    test        al,al
>004D794A    jne         004D795B
 004D794C    push        ebp
 004D794D    call        LeftSide
 004D7952    pop         ecx
 004D7953    test        al,al
>004D7955    je          004D7A56
 004D795B    push        ebp
 004D795C    call        SendToParent
 004D7961    pop         ecx
>004D7962    jmp         004D7A56
 004D7967    push        ebp
 004D7968    call        ForwardMovement
 004D796D    pop         ecx
 004D796E    test        al,al
>004D7970    je          004D7A56
 004D7976    push        ebp
 004D7977    call        Ctrl
 004D797C    pop         ecx
 004D797D    test        al,al
>004D797F    jne         004D7990
 004D7981    push        ebp
 004D7982    call        RightSide
 004D7987    pop         ecx
 004D7988    test        al,al
>004D798A    je          004D7A56
 004D7990    push        ebp
 004D7991    call        SendToParent
 004D7996    pop         ecx
>004D7997    jmp         004D7A56
 004D799C    push        ebp
 004D799D    call        ForwardMovement
 004D79A2    pop         ecx
 004D79A3    test        al,al
>004D79A5    je          004D7A56
 004D79AB    push        ebp
 004D79AC    call        Ctrl
 004D79B1    pop         ecx
 004D79B2    test        al,al
>004D79B4    jne         004D79C5
 004D79B6    push        ebp
 004D79B7    call        LeftSide
 004D79BC    pop         ecx
 004D79BD    test        al,al
>004D79BF    je          004D7A56
 004D79C5    push        ebp
 004D79C6    call        SendToParent
 004D79CB    pop         ecx
>004D79CC    jmp         004D7A56
 004D79D1    push        ebp
 004D79D2    call        ForwardMovement
 004D79D7    pop         ecx
 004D79D8    test        al,al
>004D79DA    je          004D7A56
 004D79DC    push        ebp
 004D79DD    call        Ctrl
 004D79E2    pop         ecx
 004D79E3    test        al,al
>004D79E5    jne         004D79F2
 004D79E7    push        ebp
 004D79E8    call        RightSide
 004D79ED    pop         ecx
 004D79EE    test        al,al
>004D79F0    je          004D7A56
 004D79F2    push        ebp
 004D79F3    call        SendToParent
 004D79F8    pop         ecx
>004D79F9    jmp         004D7A56
 004D79FB    push        ebp
 004D79FC    call        ParentEvent
 004D7A01    pop         ecx
 004D7A02    mov         eax,dword ptr [ebp-8]
 004D7A05    cmp         word ptr [eax],71
>004D7A09    jne         004D7A56
 004D7A0B    mov         eax,dword ptr [ebp-4]
 004D7A0E    call        TInplaceEdit.Deselect
>004D7A13    jmp         004D7A74
 004D7A15    test        byte ptr [ebp-9],2
>004D7A19    jne         004D7A56
 004D7A1B    push        ebp
 004D7A1C    call        SendToParent
 004D7A21    pop         ecx
>004D7A22    jmp         004D7A56
 004D7A24    push        ebp
 004D7A25    call        Ctrl
 004D7A2A    pop         ecx
 004D7A2B    test        al,al
>004D7A2D    je          004D7A38
 004D7A2F    push        ebp
 004D7A30    call        SendToParent
 004D7A35    pop         ecx
>004D7A36    jmp         004D7A56
 004D7A38    mov         eax,dword ptr [ebp-4]
 004D7A3B    mov         eax,dword ptr [eax+240]
 004D7A41    mov         si,0FFB0
 004D7A45    call        @CallDynaInst
 004D7A4A    test        al,al
>004D7A4C    jne         004D7A56
 004D7A4E    mov         eax,dword ptr [ebp-8]
 004D7A51    mov         word ptr [eax],0
 004D7A56    mov         eax,dword ptr [ebp-8]
 004D7A59    cmp         word ptr [eax],0
>004D7A5D    je          004D7A74
 004D7A5F    push        ebp
 004D7A60    call        ParentEvent
 004D7A65    pop         ecx
 004D7A66    mov         edx,dword ptr [ebp-8]
 004D7A69    mov         cl,byte ptr [ebp-9]
 004D7A6C    mov         eax,dword ptr [ebp-4]
 004D7A6F    call        TCustomMaskEdit.KeyDown
 004D7A74    pop         esi
 004D7A75    mov         esp,ebp
 004D7A77    pop         ebp
 004D7A78    ret
*}
end;

//004D7A84
{*procedure TInplaceEdit.sub_0048AAD0(?:?);
begin
 004D7A84    push        ebp
 004D7A85    mov         ebp,esp
 004D7A87    add         esp,0FFFFFFF0
 004D7A8A    push        esi
 004D7A8B    mov         dword ptr [ebp-8],edx
 004D7A8E    mov         dword ptr [ebp-4],eax
 004D7A91    mov         edx,dword ptr [ebp-8]
 004D7A94    mov         eax,dword ptr [ebp-4]
 004D7A97    mov         eax,dword ptr [eax+240];TInplaceEdit.FGrid:TCustomGrid
 004D7A9D    mov         si,0FFBA
 004D7AA1    call        @CallDynaInst;TCustomGrid.sub_0048AAD0
 004D7AA6    mov         eax,dword ptr [ebp-8]
 004D7AA9    mov         al,byte ptr [eax]
 004D7AAB    add         al,0E0
 004D7AAD    sub         al,0E0
>004D7AAF    jae         004D7AD9
 004D7AB1    mov         edx,dword ptr [ebp-8]
 004D7AB4    mov         dl,byte ptr [edx]
 004D7AB6    mov         eax,dword ptr [ebp-4]
 004D7AB9    mov         eax,dword ptr [eax+240];TInplaceEdit.FGrid:TCustomGrid
 004D7ABF    mov         si,0FFB2
 004D7AC3    call        @CallDynaInst;TCustomGrid.sub_004D8598
 004D7AC8    test        al,al
>004D7ACA    jne         004D7AD9
 004D7ACC    mov         eax,dword ptr [ebp-8]
 004D7ACF    mov         byte ptr [eax],0
 004D7AD2    push        0
 004D7AD4    call        user32.MessageBeep
 004D7AD9    mov         eax,dword ptr [ebp-8]
 004D7ADC    movzx       eax,byte ptr [eax]
 004D7ADF    cmp         eax,16
>004D7AE2    jg          004D7AF8
>004D7AE4    je          004D7B5E
 004D7AE6    sub         eax,8
>004D7AE9    je          004D7B5E
 004D7AEB    dec         eax
>004D7AEC    je          004D7B0E
 004D7AEE    sub         eax,4
>004D7AF1    je          004D7B16
>004D7AF3    jmp         004D7B7A
 004D7AF8    sub         eax,18
>004D7AFB    je          004D7B5E
 004D7AFD    sub         eax,3
>004D7B00    je          004D7B0E
 004D7B02    add         eax,0FFFFFFFB
 004D7B05    sub         eax,0E0
>004D7B0A    jb          004D7B5E
>004D7B0C    jmp         004D7B7A
 004D7B0E    mov         eax,dword ptr [ebp-8]
 004D7B11    mov         byte ptr [eax],0
>004D7B14    jmp         004D7B7A
 004D7B16    lea         eax,[ebp-0C]
 004D7B19    push        eax
 004D7B1A    lea         eax,[ebp-10]
 004D7B1D    push        eax
 004D7B1E    push        0B0
 004D7B23    mov         eax,dword ptr [ebp-4]
 004D7B26    call        TWinControl.GetHandle
 004D7B2B    push        eax
 004D7B2C    call        user32.SendMessageA
 004D7B31    cmp         dword ptr [ebp-10],0
>004D7B35    jne         004D7B4E
 004D7B37    mov         eax,dword ptr [ebp-4]
 004D7B3A    call        004D48C8
 004D7B3F    cmp         eax,dword ptr [ebp-0C]
>004D7B42    jne         004D7B4E
 004D7B44    mov         eax,dword ptr [ebp-4]
 004D7B47    call        TInplaceEdit.Deselect
>004D7B4C    jmp         004D7B56
 004D7B4E    mov         eax,dword ptr [ebp-4]
 004D7B51    call        004742D4
 004D7B56    mov         eax,dword ptr [ebp-8]
 004D7B59    mov         byte ptr [eax],0
>004D7B5C    jmp         004D7B7A
 004D7B5E    mov         eax,dword ptr [ebp-4]
 004D7B61    mov         eax,dword ptr [eax+240];TInplaceEdit.FGrid:TCustomGrid
 004D7B67    mov         si,0FFB0
 004D7B6B    call        @CallDynaInst;TCustomGrid.sub_004D85CC
 004D7B70    test        al,al
>004D7B72    jne         004D7B7A
 004D7B74    mov         eax,dword ptr [ebp-8]
 004D7B77    mov         byte ptr [eax],0
 004D7B7A    mov         eax,dword ptr [ebp-8]
 004D7B7D    cmp         byte ptr [eax],0
>004D7B80    je          004D7B8D
 004D7B82    mov         edx,dword ptr [ebp-8]
 004D7B85    mov         eax,dword ptr [ebp-4]
 004D7B88    call        TCustomMaskEdit.sub_0048AAD0
 004D7B8D    pop         esi
 004D7B8E    mov         esp,ebp
 004D7B90    pop         ebp
 004D7B91    ret
end;*}

//004D7B94
{*procedure TInplaceEdit.sub_0048A9B4(?:?; ?:?);
begin
 004D7B94    push        ebp
 004D7B95    mov         ebp,esp
 004D7B97    add         esp,0FFFFFFF4
 004D7B9A    push        esi
 004D7B9B    mov         byte ptr [ebp-9],cl
 004D7B9E    mov         dword ptr [ebp-8],edx
 004D7BA1    mov         dword ptr [ebp-4],eax
 004D7BA4    mov         edx,dword ptr [ebp-8]
 004D7BA7    mov         cl,byte ptr [ebp-9]
 004D7BAA    mov         eax,dword ptr [ebp-4]
 004D7BAD    mov         eax,dword ptr [eax+240];TInplaceEdit.FGrid:TCustomGrid
 004D7BB3    mov         si,0FFBB
 004D7BB7    call        @CallDynaInst;TWinControl.sub_0048A9B4
 004D7BBC    pop         esi
 004D7BBD    mov         esp,ebp
 004D7BBF    pop         ebp
 004D7BC0    ret
end;*}

//004D7BC4
{*procedure sub_004D7BC4(?:?);
begin
 004D7BC4    push        ebp
 004D7BC5    mov         ebp,esp
 004D7BC7    add         esp,0FFFFFFF8
 004D7BCA    push        ebx
 004D7BCB    mov         dword ptr [ebp-8],edx
 004D7BCE    mov         dword ptr [ebp-4],eax
 004D7BD1    mov         eax,dword ptr [ebp-8]
 004D7BD4    mov         eax,dword ptr [eax]
 004D7BD6    sub         eax,7
>004D7BD9    je          004D7BE4
 004D7BDB    sub         eax,1FA
>004D7BE0    je          004D7C1A
>004D7BE2    jmp         004D7C47
 004D7BE4    mov         eax,dword ptr [ebp-4]
 004D7BE7    call        004A0740
 004D7BEC    test        eax,eax
>004D7BEE    je          004D7C0D
 004D7BF0    mov         eax,dword ptr [ebp-4]
 004D7BF3    call        004A0740
 004D7BF8    mov         edx,dword ptr [ebp-4]
 004D7BFB    mov         edx,dword ptr [edx+240];TInplaceEdit.FGrid:TCustomGrid
 004D7C01    mov         ecx,dword ptr [eax]
 004D7C03    call        dword ptr [ecx+0E8]
 004D7C09    test        al,al
>004D7C0B    je          004D7C52
 004D7C0D    mov         edx,dword ptr [ebp-8]
 004D7C10    mov         eax,dword ptr [ebp-4]
 004D7C13    mov         ecx,dword ptr [eax]
 004D7C15    call        dword ptr [ecx-14];TObject.Dispatch
>004D7C18    jmp         004D7C52
 004D7C1A    call        user32.GetMessageTime
 004D7C1F    mov         ebx,eax
 004D7C21    mov         eax,dword ptr [ebp-4]
 004D7C24    sub         ebx,dword ptr [eax+244]
 004D7C2A    call        user32.GetDoubleClickTime
 004D7C2F    cmp         ebx,eax
>004D7C31    jae         004D7C3C
 004D7C33    mov         eax,dword ptr [ebp-8]
 004D7C36    mov         dword ptr [eax],203
 004D7C3C    mov         eax,dword ptr [ebp-4]
 004D7C3F    xor         edx,edx
 004D7C41    mov         dword ptr [eax+244],edx;TInplaceEdit.FClickTime:Longint
 004D7C47    mov         edx,dword ptr [ebp-8]
 004D7C4A    mov         eax,dword ptr [ebp-4]
 004D7C4D    call        00488EC8
 004D7C52    pop         ebx
 004D7C53    pop         ecx
 004D7C54    pop         ecx
 004D7C55    pop         ebp
 004D7C56    ret
end;*}

//004D7C58
procedure TInplaceEdit.Deselect;
begin
{*
 004D7C58    push        ebp
 004D7C59    mov         ebp,esp
 004D7C5B    push        ecx
 004D7C5C    mov         dword ptr [ebp-4],eax
 004D7C5F    push        0FF
 004D7C61    push        7FFFFFFF
 004D7C66    push        0B1
 004D7C6B    mov         eax,dword ptr [ebp-4]
 004D7C6E    call        TWinControl.GetHandle
 004D7C73    push        eax
 004D7C74    call        user32.SendMessageA
 004D7C79    pop         ecx
 004D7C7A    pop         ebp
 004D7C7B    ret
*}
end;

//004D7C7C
{*procedure sub_004D7C7C(?:?);
begin
 004D7C7C    push        ebp
 004D7C7D    mov         ebp,esp
 004D7C7F    add         esp,0FFFFFFEC
 004D7C82    mov         dword ptr [ebp-4],eax
 004D7C85    push        0
 004D7C87    mov         eax,dword ptr [ebp-4]
 004D7C8A    call        TWinControl.GetHandle
 004D7C8F    push        eax
 004D7C90    call        user32.ValidateRect
 004D7C95    push        0FF
 004D7C97    push        0
 004D7C99    mov         eax,dword ptr [ebp-4]
 004D7C9C    call        TWinControl.GetHandle
 004D7CA1    push        eax
 004D7CA2    call        user32.InvalidateRect
 004D7CA7    lea         eax,[ebp-14]
 004D7CAA    push        eax
 004D7CAB    mov         eax,dword ptr [ebp-4]
 004D7CAE    call        TWinControl.GetHandle
 004D7CB3    push        eax
 004D7CB4    call        user32.GetClientRect
 004D7CB9    push        2
 004D7CBB    lea         eax,[ebp-14]
 004D7CBE    push        eax
 004D7CBF    mov         eax,dword ptr [ebp-4]
 004D7CC2    mov         eax,dword ptr [eax+240]
 004D7CC8    call        TWinControl.GetHandle
 004D7CCD    push        eax
 004D7CCE    mov         eax,dword ptr [ebp-4]
 004D7CD1    call        TWinControl.GetHandle
 004D7CD6    push        eax
 004D7CD7    call        user32.MapWindowPoints
 004D7CDC    lea         eax,[ebp-14]
 004D7CDF    push        eax
 004D7CE0    mov         eax,dword ptr [ebp-4]
 004D7CE3    mov         eax,dword ptr [eax+240]
 004D7CE9    call        TWinControl.GetHandle
 004D7CEE    push        eax
 004D7CEF    call        user32.ValidateRect
 004D7CF4    push        0
 004D7CF6    lea         eax,[ebp-14]
 004D7CF9    push        eax
 004D7CFA    mov         eax,dword ptr [ebp-4]
 004D7CFD    mov         eax,dword ptr [eax+240]
 004D7D03    call        TWinControl.GetHandle
 004D7D08    push        eax
 004D7D09    call        user32.InvalidateRect
 004D7D0E    mov         esp,ebp
 004D7D10    pop         ebp
 004D7D11    ret
end;*}

//004D7D14
procedure TInplaceEdit.Hide;
begin
{*
 004D7D14    push        ebp
 004D7D15    mov         ebp,esp
 004D7D17    push        ecx
 004D7D18    push        esi
 004D7D19    mov         dword ptr [ebp-4],eax
 004D7D1C    mov         eax,dword ptr [ebp-4]
 004D7D1F    call        TWinControl.HandleAllocated
 004D7D24    test        al,al
>004D7D26    je          004D7D83
 004D7D28    mov         eax,dword ptr [ebp-4]
 004D7D2B    call        TWinControl.GetHandle
 004D7D30    push        eax
 004D7D31    call        user32.IsWindowVisible
 004D7D36    test        eax,eax
>004D7D38    je          004D7D83
 004D7D3A    mov         eax,dword ptr [ebp-4]
 004D7D3D    call        004D7C7C
 004D7D42    push        8C
 004D7D47    push        0
 004D7D49    push        0
 004D7D4B    push        0
 004D7D4D    push        0
 004D7D4F    push        0
 004D7D51    mov         eax,dword ptr [ebp-4]
 004D7D54    call        TWinControl.GetHandle
 004D7D59    push        eax
 004D7D5A    call        user32.SetWindowPos
 004D7D5F    mov         eax,dword ptr [ebp-4]
 004D7D62    mov         si,0FFB5
 004D7D66    call        @CallDynaInst
 004D7D6B    test        al,al
>004D7D6D    je          004D7D83
 004D7D6F    mov         eax,dword ptr [ebp-4]
 004D7D72    mov         eax,dword ptr [eax+240]
 004D7D78    call        TWinControl.GetHandle
 004D7D7D    push        eax
 004D7D7E    call        user32.SetFocus
 004D7D83    pop         esi
 004D7D84    pop         ecx
 004D7D85    pop         ebp
 004D7D86    ret
*}
end;

//004D7D88
{*procedure sub_004D7D88(?:?; ?:?; ?:?);
begin
 004D7D88    push        ebp
 004D7D89    mov         ebp,esp
 004D7D8B    add         esp,0FFFFFFF4
 004D7D8E    push        esi
 004D7D8F    mov         byte ptr [ebp-9],cl
 004D7D92    mov         dword ptr [ebp-8],edx
 004D7D95    mov         dword ptr [ebp-4],eax
 004D7D98    mov         eax,dword ptr [ebp-8]
 004D7D9B    push        eax
 004D7D9C    call        user32.IsRectEmpty
 004D7DA1    test        eax,eax
>004D7DA3    je          004D7DB2
 004D7DA5    mov         eax,dword ptr [ebp-4]
 004D7DA8    call        TInplaceEdit.Hide
>004D7DAD    jmp         004D7E5B
 004D7DB2    mov         eax,dword ptr [ebp-4]
 004D7DB5    mov         edx,dword ptr [eax]
 004D7DB7    call        dword ptr [edx+94]
 004D7DBD    cmp         byte ptr [ebp-9],0
>004D7DC1    jne         004D7DD9
 004D7DC3    mov         eax,dword ptr [ebp-4]
 004D7DC6    call        TWinControl.GetHandle
 004D7DCB    push        eax
 004D7DCC    call        user32.IsWindowVisible
 004D7DD1    test        eax,eax
>004D7DD3    je          004D7DD9
 004D7DD5    xor         eax,eax
>004D7DD7    jmp         004D7DDB
 004D7DD9    mov         al,1
 004D7DDB    mov         byte ptr [ebp-9],al
 004D7DDE    mov         eax,dword ptr [ebp-4]
 004D7DE1    call        004D7C7C
 004D7DE6    push        48
 004D7DE8    mov         eax,dword ptr [ebp-8]
 004D7DEB    mov         eax,dword ptr [eax+0C]
 004D7DEE    mov         edx,dword ptr [ebp-8]
 004D7DF1    sub         eax,dword ptr [edx+4]
 004D7DF4    push        eax
 004D7DF5    mov         eax,dword ptr [ebp-8]
 004D7DF8    mov         eax,dword ptr [eax+8]
 004D7DFB    mov         edx,dword ptr [ebp-8]
 004D7DFE    sub         eax,dword ptr [edx]
 004D7E00    push        eax
 004D7E01    mov         eax,dword ptr [ebp-8]
 004D7E04    mov         eax,dword ptr [eax+4]
 004D7E07    push        eax
 004D7E08    mov         eax,dword ptr [ebp-8]
 004D7E0B    mov         eax,dword ptr [eax]
 004D7E0D    push        eax
 004D7E0E    push        0
 004D7E10    mov         eax,dword ptr [ebp-4]
 004D7E13    call        TWinControl.GetHandle
 004D7E18    push        eax
 004D7E19    call        user32.SetWindowPos
 004D7E1E    mov         eax,dword ptr [ebp-4]
 004D7E21    mov         edx,dword ptr [eax]
 004D7E23    call        dword ptr [edx+0FC]
 004D7E29    cmp         byte ptr [ebp-9],0
>004D7E2D    je          004D7E37
 004D7E2F    mov         eax,dword ptr [ebp-4]
 004D7E32    call        004D7C7C
 004D7E37    mov         eax,dword ptr [ebp-4]
 004D7E3A    mov         eax,dword ptr [eax+240]
 004D7E40    mov         si,0FFB5
 004D7E44    call        @CallDynaInst
 004D7E49    test        al,al
>004D7E4B    je          004D7E5B
 004D7E4D    mov         eax,dword ptr [ebp-4]
 004D7E50    call        TWinControl.GetHandle
 004D7E55    push        eax
 004D7E56    call        user32.SetFocus
 004D7E5B    pop         esi
 004D7E5C    mov         esp,ebp
 004D7E5E    pop         ebp
 004D7E5F    ret
end;*}

//004D7E60
procedure sub_004D7E60;
begin
{*
 004D7E60    push        ebp
 004D7E61    mov         ebp,esp
 004D7E63    add         esp,0FFFFFFEC
 004D7E66    mov         dword ptr [ebp-4],eax
 004D7E69    mov         eax,dword ptr [ebp-4]
 004D7E6C    mov         eax,dword ptr [eax+4C];TInplaceEdit.Height:Integer
 004D7E6F    push        eax
 004D7E70    lea         eax,[ebp-14]
 004D7E73    push        eax
 004D7E74    mov         eax,dword ptr [ebp-4]
 004D7E77    mov         ecx,dword ptr [eax+48];TInplaceEdit.Width:Integer
 004D7E7A    sub         ecx,2
 004D7E7D    mov         edx,2
 004D7E82    mov         eax,2
 004D7E87    call        0041E714
 004D7E8C    lea         eax,[ebp-14]
 004D7E8F    push        eax
 004D7E90    push        0
 004D7E92    push        0B4
 004D7E97    mov         eax,dword ptr [ebp-4]
 004D7E9A    call        TWinControl.GetHandle
 004D7E9F    push        eax
 004D7EA0    call        user32.SendMessageA
 004D7EA5    push        0
 004D7EA7    push        0
 004D7EA9    push        0B7
 004D7EAE    mov         eax,dword ptr [ebp-4]
 004D7EB1    call        TWinControl.GetHandle
 004D7EB6    push        eax
 004D7EB7    call        user32.SendMessageA
 004D7EBC    mov         esp,ebp
 004D7EBE    pop         ebp
 004D7EBF    ret
*}
end;

//004D7EC0
{*procedure sub_004D7EC0(?:TInplaceEdit; ?:?);
begin
 004D7EC0    push        ebp
 004D7EC1    mov         ebp,esp
 004D7EC3    add         esp,0FFFFFFF8
 004D7EC6    mov         dword ptr [ebp-8],edx
 004D7EC9    mov         dword ptr [ebp-4],eax
 004D7ECC    mov         edx,dword ptr [ebp-8]
 004D7ECF    xor         ecx,ecx
 004D7ED1    mov         eax,dword ptr [ebp-4]
 004D7ED4    call        004D7D88
 004D7ED9    pop         ecx
 004D7EDA    pop         ecx
 004D7EDB    pop         ebp
 004D7EDC    ret
end;*}

//004D7EE0
{*procedure sub_004D7EE0(?:TInplaceEdit; ?:?);
begin
 004D7EE0    push        ebp
 004D7EE1    mov         ebp,esp
 004D7EE3    add         esp,0FFFFFFF8
 004D7EE6    mov         dword ptr [ebp-8],edx
 004D7EE9    mov         dword ptr [ebp-4],eax
 004D7EEC    mov         edx,dword ptr [ebp-8]
 004D7EEF    mov         cl,1
 004D7EF1    mov         eax,dword ptr [ebp-4]
 004D7EF4    call        004D7D88
 004D7EF9    pop         ecx
 004D7EFA    pop         ecx
 004D7EFB    pop         ebp
 004D7EFC    ret
end;*}

//004D7F00
procedure sub_004D7F00;
begin
{*
 004D7F00    push        ebp
 004D7F01    mov         ebp,esp
 004D7F03    push        0
 004D7F05    push        0
 004D7F07    push        0
 004D7F09    push        esi
 004D7F0A    mov         dword ptr [ebp-4],eax
 004D7F0D    xor         eax,eax
 004D7F0F    push        ebp
 004D7F10    push        4D7FDA
 004D7F15    push        dword ptr fs:[eax]
 004D7F18    mov         dword ptr fs:[eax],esp
 004D7F1B    xor         edx,edx
 004D7F1D    mov         eax,dword ptr [ebp-4]
 004D7F20    call        004D49C4
 004D7F25    lea         eax,[ebp-8]
 004D7F28    push        eax
 004D7F29    mov         eax,dword ptr [ebp-4]
 004D7F2C    mov         eax,dword ptr [eax+240];TInplaceEdit.FGrid:TCustomGrid
 004D7F32    mov         ecx,dword ptr [eax+22C];TCustomGrid.FCurrent:Longint
 004D7F38    mov         eax,dword ptr [ebp-4]
 004D7F3B    mov         eax,dword ptr [eax+240];TInplaceEdit.FGrid:TCustomGrid
 004D7F41    mov         edx,dword ptr [eax+228];TCustomGrid.FCurrent:TGridCoord
 004D7F47    mov         eax,dword ptr [ebp-4]
 004D7F4A    mov         eax,dword ptr [eax+240];TInplaceEdit.FGrid:TCustomGrid
 004D7F50    mov         si,0FFAC
 004D7F54    call        @CallDynaInst;TCustomGrid.sub_004D86D8
 004D7F59    mov         edx,dword ptr [ebp-8]
 004D7F5C    mov         eax,dword ptr [ebp-4]
 004D7F5F    call        004D4D18
 004D7F64    lea         eax,[ebp-0C]
 004D7F67    push        eax
 004D7F68    mov         eax,dword ptr [ebp-4]
 004D7F6B    mov         eax,dword ptr [eax+240];TInplaceEdit.FGrid:TCustomGrid
 004D7F71    mov         ecx,dword ptr [eax+22C];TCustomGrid.FCurrent:Longint
 004D7F77    mov         eax,dword ptr [ebp-4]
 004D7F7A    mov         eax,dword ptr [eax+240];TInplaceEdit.FGrid:TCustomGrid
 004D7F80    mov         edx,dword ptr [eax+228];TCustomGrid.FCurrent:TGridCoord
 004D7F86    mov         eax,dword ptr [ebp-4]
 004D7F89    mov         eax,dword ptr [eax+240];TInplaceEdit.FGrid:TCustomGrid
 004D7F8F    mov         si,0FFAF
 004D7F93    call        @CallDynaInst;TCustomGrid.sub_004D86F8
 004D7F98    mov         edx,dword ptr [ebp-0C]
 004D7F9B    mov         eax,dword ptr [ebp-4]
 004D7F9E    call        004D49C4
 004D7FA3    mov         eax,dword ptr [ebp-4]
 004D7FA6    mov         eax,dword ptr [eax+240];TInplaceEdit.FGrid:TCustomGrid
 004D7FAC    mov         si,0FFAD
 004D7FB0    call        @CallDynaInst;TCustomGrid.sub_004D8730
 004D7FB5    mov         edx,eax
 004D7FB7    mov         eax,dword ptr [ebp-4]
 004D7FBA    call        004D4E2C
 004D7FBF    xor         eax,eax
 004D7FC1    pop         edx
 004D7FC2    pop         ecx
 004D7FC3    pop         ecx
 004D7FC4    mov         dword ptr fs:[eax],edx
 004D7FC7    push        4D7FE1
 004D7FCC    lea         eax,[ebp-0C]
 004D7FCF    mov         edx,2
 004D7FD4    call        @LStrArrayClr
 004D7FD9    ret
>004D7FDA    jmp         @HandleFinally
>004D7FDF    jmp         004D7FCC
 004D7FE1    pop         esi
 004D7FE2    mov         esp,ebp
 004D7FE4    pop         ebp
 004D7FE5    ret
*}
end;

//004D7FE8
constructor sub_004D7FE8;
begin
{*
 004D7FE8    push        ebp
 004D7FE9    mov         ebp,esp
 004D7FEB    add         esp,0FFFFFFF4
 004D7FEE    push        ebx
 004D7FEF    test        dl,dl
>004D7FF1    je          004D7FFB
 004D7FF3    add         esp,0FFFFFFF0
 004D7FF6    call        @ClassCreate
 004D7FFB    mov         dword ptr [ebp-0C],ecx
 004D7FFE    mov         byte ptr [ebp-5],dl
 004D8001    mov         dword ptr [ebp-4],eax
 004D8004    mov         ecx,dword ptr [ebp-0C]
 004D8007    xor         edx,edx
 004D8009    mov         eax,dword ptr [ebp-4]
 004D800C    call        0048E4F0
 004D8011    mov         eax,[0056E264];^NewStyleControls:Boolean
 004D8016    cmp         byte ptr [eax],0
>004D8019    je          004D8029
 004D801B    mov         eax,dword ptr [ebp-4]
 004D801E    mov         edx,dword ptr ds:[4D8184];0x200C2 gvar_004D8184
 004D8024    mov         dword ptr [eax+50],edx;TCustomGrid.FControlStyle:TControlStyle
>004D8027    jmp         004D8035
 004D8029    mov         eax,dword ptr [ebp-4]
 004D802C    mov         edx,dword ptr ds:[4D8188];0x200D2 gvar_004D8188
 004D8032    mov         dword ptr [eax+50],edx;TCustomGrid.FControlStyle:TControlStyle
 004D8035    mov         eax,dword ptr [ebp-4]
 004D8038    mov         byte ptr [eax+219],1;TCustomGrid.FCanEditModify:Boolean
 004D803F    mov         eax,dword ptr [ebp-4]
 004D8042    mov         dword ptr [eax+21C],5;TCustomGrid.FColCount:Longint
 004D804C    mov         eax,dword ptr [ebp-4]
 004D804F    mov         dword ptr [eax+24C],5;TCustomGrid.FRowCount:Longint
 004D8059    mov         eax,dword ptr [ebp-4]
 004D805C    mov         dword ptr [eax+238],1;TCustomGrid.FFixedCols:Integer
 004D8066    mov         eax,dword ptr [ebp-4]
 004D8069    mov         dword ptr [eax+23C],1;TCustomGrid.FFixedRows:Integer
 004D8073    mov         eax,dword ptr [ebp-4]
 004D8076    mov         dword ptr [eax+244],1;TCustomGrid.FGridLineWidth:Integer
 004D8080    mov         eax,dword ptr [ebp-4]
 004D8083    mov         dx,word ptr ds:[4D818C];0x1F gvar_004D818C
 004D808A    mov         word ptr [eax+248],dx;TCustomGrid.FOptions:TGridOptions
 004D8091    mov         eax,dword ptr [ebp-4]
 004D8094    mov         dx,word ptr ds:[4D8190];0xC0 gvar_004D8190
 004D809B    mov         word ptr [eax+290],dx;TCustomGrid.DesignOptionsBoost:TGridOptions
 004D80A2    mov         eax,dword ptr [ebp-4]
 004D80A5    mov         dword ptr [eax+240],0FF00000F;TCustomGrid.FFixedColor:TColor
 004D80AF    mov         eax,dword ptr [ebp-4]
 004D80B2    mov         byte ptr [eax+254],3;TCustomGrid.FScrollBars:TScrollStyle
 004D80B9    mov         eax,dword ptr [ebp-4]
 004D80BC    mov         byte ptr [eax+218],1;TCustomGrid.FBorderStyle:TBorderStyle
 004D80C3    mov         eax,dword ptr [ebp-4]
 004D80C6    mov         dword ptr [eax+230],40;TCustomGrid.FDefaultColWidth:Integer
 004D80D0    mov         eax,dword ptr [ebp-4]
 004D80D3    mov         dword ptr [eax+234],18;TCustomGrid.FDefaultRowHeight:Integer
 004D80DD    mov         eax,dword ptr [ebp-4]
 004D80E0    mov         byte ptr [eax+28C],1;TCustomGrid.FDefaultDrawing:Boolean
 004D80E7    mov         eax,dword ptr [ebp-4]
 004D80EA    mov         byte ptr [eax+28F],1;TCustomGrid.FSaveCellExtents:Boolean
 004D80F1    mov         eax,dword ptr [ebp-4]
 004D80F4    mov         byte ptr [eax+28D],0;TCustomGrid.FEditorMode:Boolean
 004D80FB    mov         edx,0FF000005
 004D8100    mov         eax,dword ptr [ebp-4]
 004D8103    call        TPanel.SetColor
 004D8108    xor         edx,edx
 004D810A    mov         eax,dword ptr [ebp-4]
 004D810D    call        TPanel.SetParentColor
 004D8112    mov         dl,1
 004D8114    mov         eax,dword ptr [ebp-4]
 004D8117    call        TPanel.SetTabStop
 004D811C    mov         eax,dword ptr [ebp-4]
 004D811F    mov         eax,dword ptr [eax+21C];TCustomGrid.FColCount:Longint
 004D8125    mov         edx,dword ptr [ebp-4]
 004D8128    imul        dword ptr [edx+230];TCustomGrid.FDefaultColWidth:Integer
 004D812E    push        eax
 004D812F    mov         eax,dword ptr [ebp-4]
 004D8132    mov         eax,dword ptr [eax+24C];TCustomGrid.FRowCount:Longint
 004D8138    mov         edx,dword ptr [ebp-4]
 004D813B    imul        dword ptr [edx+234];TCustomGrid.FDefaultRowHeight:Integer
 004D8141    push        eax
 004D8142    mov         eax,dword ptr [ebp-4]
 004D8145    mov         ecx,dword ptr [eax+44];TCustomGrid.Top:Integer
 004D8148    mov         eax,dword ptr [ebp-4]
 004D814B    mov         edx,dword ptr [eax+40];TCustomGrid.Left:Integer
 004D814E    mov         eax,dword ptr [ebp-4]
 004D8151    mov         ebx,dword ptr [eax]
 004D8153    call        dword ptr [ebx+84];TCustomGrid.sub_0048B89C
 004D8159    mov         eax,dword ptr [ebp-4]
 004D815C    call        004DAE00
 004D8161    mov         eax,dword ptr [ebp-4]
 004D8164    cmp         byte ptr [ebp-5],0
>004D8168    je          004D8179
 004D816A    call        @AfterConstruction
 004D816F    pop         dword ptr fs:[0]
 004D8176    add         esp,0C
 004D8179    mov         eax,dword ptr [ebp-4]
 004D817C    pop         ebx
 004D817D    mov         esp,ebp
 004D817F    pop         ebp
 004D8180    ret
*}
end;

//004D8194
destructor TCustomGrid.Destroy;
begin
{*
 004D8194    push        ebp
 004D8195    mov         ebp,esp
 004D8197    add         esp,0FFFFFFF8
 004D819A    call        @BeforeDestruction
 004D819F    mov         byte ptr [ebp-5],dl
 004D81A2    mov         dword ptr [ebp-4],eax
 004D81A5    mov         eax,dword ptr [ebp-4]
 004D81A8    mov         eax,dword ptr [eax+27C]
 004D81AE    call        TObject.Free
 004D81B3    mov         dl,byte ptr [ebp-5]
 004D81B6    and         dl,0FC
 004D81B9    mov         eax,dword ptr [ebp-4]
 004D81BC    call        TCustomControl.Destroy
 004D81C1    mov         eax,dword ptr [ebp-4]
 004D81C4    mov         eax,dword ptr [eax+220]
 004D81CA    call        @FreeMem
 004D81CF    mov         eax,dword ptr [ebp-4]
 004D81D2    mov         eax,dword ptr [eax+250]
 004D81D8    call        @FreeMem
 004D81DD    mov         eax,dword ptr [ebp-4]
 004D81E0    mov         eax,dword ptr [eax+224]
 004D81E6    call        @FreeMem
 004D81EB    cmp         byte ptr [ebp-5],0
>004D81EF    jle         004D81F9
 004D81F1    mov         eax,dword ptr [ebp-4]
 004D81F4    call        @ClassDestroy
 004D81F9    pop         ecx
 004D81FA    pop         ecx
 004D81FB    pop         ebp
 004D81FC    ret
*}
end;

//004D8200
{*function sub_004D8200(?:Longint; ?:?; ?:Integer; ?:?; ?:?):?;
begin
 004D8200    push        ebp
 004D8201    mov         ebp,esp
 004D8203    add         esp,0FFFFFFE0
 004D8206    push        ebx
 004D8207    xor         ebx,ebx
 004D8209    mov         dword ptr [ebp-20],ebx
 004D820C    mov         dword ptr [ebp-0C],ecx
 004D820F    mov         dword ptr [ebp-8],edx
 004D8212    mov         dword ptr [ebp-4],eax
 004D8215    xor         eax,eax
 004D8217    push        ebp
 004D8218    push        4D8328
 004D821D    push        dword ptr fs:[eax]
 004D8220    mov         dword ptr fs:[eax],esp
 004D8223    mov         eax,dword ptr [ebp-4]
 004D8226    mov         eax,dword ptr [eax]
 004D8228    mov         edx,dword ptr [ebp+0C]
 004D822B    add         eax,dword ptr [edx-4]
 004D822E    mov         dword ptr [ebp-18],eax
 004D8231    mov         eax,dword ptr [ebp+0C]
 004D8234    mov         eax,dword ptr [eax-8]
 004D8237    cmp         eax,dword ptr [ebp-18]
>004D823A    jle         004D8251
 004D823C    lea         edx,[ebp-20]
 004D823F    mov         eax,[0056E2B0];^STooManyDeleted:TResStringRec
 004D8244    call        LoadResString
 004D8249    mov         eax,dword ptr [ebp-20]
 004D824C    call        004D6E0C
 004D8251    mov         eax,dword ptr [ebp+0C]
 004D8254    cmp         dword ptr [eax-4],0
>004D8258    jge         004D829D
 004D825A    mov         eax,dword ptr [ebp-8]
 004D825D    cmp         dword ptr [eax],0
>004D8260    je          004D829D
 004D8262    xor         eax,eax
 004D8264    mov         dword ptr [ebp-10],eax
 004D8267    mov         eax,dword ptr [ebp+0C]
 004D826A    mov         eax,dword ptr [eax-8]
 004D826D    mov         edx,dword ptr [ebp+0C]
 004D8270    mov         edx,dword ptr [edx-8]
 004D8273    mov         ecx,dword ptr [ebp+0C]
 004D8276    sub         edx,dword ptr [ecx-4]
 004D8279    dec         edx
 004D827A    sub         edx,eax
>004D827C    jl          004D82A9
 004D827E    inc         edx
 004D827F    mov         dword ptr [ebp-1C],edx
 004D8282    mov         dword ptr [ebp-14],eax
 004D8285    mov         eax,dword ptr [ebp-8]
 004D8288    mov         eax,dword ptr [eax]
 004D828A    mov         edx,dword ptr [ebp-14]
 004D828D    mov         eax,dword ptr [eax+edx*4]
 004D8290    add         dword ptr [ebp-10],eax
 004D8293    inc         dword ptr [ebp-14]
 004D8296    dec         dword ptr [ebp-1C]
>004D8299    jne         004D8285
>004D829B    jmp         004D82A9
 004D829D    mov         eax,dword ptr [ebp+0C]
 004D82A0    mov         eax,dword ptr [eax-4]
 004D82A3    imul        dword ptr [ebp-0C]
 004D82A6    mov         dword ptr [ebp-10],eax
 004D82A9    mov         eax,dword ptr [ebp-8]
 004D82AC    cmp         dword ptr [eax],0
>004D82AF    je          004D82C9
 004D82B1    mov         eax,dword ptr [ebp-0C]
 004D82B4    push        eax
 004D82B5    mov         eax,dword ptr [ebp+0C]
 004D82B8    mov         ecx,dword ptr [eax-4]
 004D82BB    mov         eax,dword ptr [ebp+0C]
 004D82BE    mov         edx,dword ptr [eax-8]
 004D82C1    mov         eax,dword ptr [ebp-8]
 004D82C4    call        004D71F0
 004D82C9    mov         eax,dword ptr [ebp-4]
 004D82CC    mov         edx,dword ptr [ebp-18]
 004D82CF    mov         dword ptr [eax],edx
 004D82D1    mov         eax,dword ptr [ebp+8]
 004D82D4    mov         eax,dword ptr [eax]
 004D82D6    mov         edx,dword ptr [ebp+0C]
 004D82D9    cmp         eax,dword ptr [edx-8]
>004D82DC    jl          004D8312
 004D82DE    mov         eax,dword ptr [ebp+0C]
 004D82E1    cmp         dword ptr [eax-4],0
>004D82E5    jge         004D8307
 004D82E7    mov         eax,dword ptr [ebp+0C]
 004D82EA    mov         eax,dword ptr [eax-8]
 004D82ED    mov         edx,dword ptr [ebp+0C]
 004D82F0    sub         eax,dword ptr [edx-4]
 004D82F3    mov         edx,dword ptr [ebp+8]
 004D82F6    cmp         eax,dword ptr [edx]
>004D82F8    jle         004D8307
 004D82FA    mov         eax,dword ptr [ebp+0C]
 004D82FD    mov         eax,dword ptr [eax-8]
 004D8300    mov         edx,dword ptr [ebp+8]
 004D8303    mov         dword ptr [edx],eax
>004D8305    jmp         004D8312
 004D8307    mov         eax,dword ptr [ebp+0C]
 004D830A    mov         eax,dword ptr [eax-4]
 004D830D    mov         edx,dword ptr [ebp+8]
 004D8310    add         dword ptr [edx],eax
 004D8312    xor         eax,eax
 004D8314    pop         edx
 004D8315    pop         ecx
 004D8316    pop         ecx
 004D8317    mov         dword ptr fs:[eax],edx
 004D831A    push        4D832F
 004D831F    lea         eax,[ebp-20]
 004D8322    call        @LStrClr
 004D8327    ret
>004D8328    jmp         @HandleFinally
>004D832D    jmp         004D831F
 004D832F    mov         eax,dword ptr [ebp-10]
 004D8332    pop         ebx
 004D8333    mov         esp,ebp
 004D8335    pop         ebp
 004D8336    ret         4
end;*}

//004D833C
{*procedure TCustomGrid.sub_004D833C(?:?; ?:?; ?:?);
begin
 004D833C    push        ebp
 004D833D    mov         ebp,esp
 004D833F    add         esp,0FFFFFFB8
 004D8342    push        esi
 004D8343    mov         dword ptr [ebp-4],ecx
 004D8346    mov         dword ptr [ebp-8],edx
 004D8349    mov         dword ptr [ebp-0C],eax
 004D834C    cmp         dword ptr [ebp-4],0
>004D8350    je          004D84F7
 004D8356    mov         eax,dword ptr [ebp-0C]
 004D8359    mov         edx,dword ptr [eax+228];TCustomGrid.FCurrent:TGridCoord
 004D835F    mov         dword ptr [ebp-14],edx
 004D8362    mov         edx,dword ptr [eax+22C];TCustomGrid.FCurrent:Longint
 004D8368    mov         dword ptr [ebp-10],edx
 004D836B    mov         eax,dword ptr [ebp-0C]
 004D836E    mov         eax,dword ptr [eax+21C];TCustomGrid.FColCount:Longint
 004D8374    mov         dword ptr [ebp-1C],eax
 004D8377    mov         eax,dword ptr [ebp-0C]
 004D837A    mov         eax,dword ptr [eax+24C];TCustomGrid.FRowCount:Longint
 004D8380    mov         dword ptr [ebp-18],eax
 004D8383    mov         eax,dword ptr [ebp-0C]
 004D8386    mov         eax,dword ptr [eax+238];TCustomGrid.FFixedCols:Integer
 004D838C    mov         dword ptr [ebp-38],eax
 004D838F    mov         eax,dword ptr [ebp-0C]
 004D8392    mov         eax,dword ptr [eax+21C];TCustomGrid.FColCount:Longint
 004D8398    dec         eax
 004D8399    mov         dword ptr [ebp-30],eax
 004D839C    mov         eax,dword ptr [ebp-0C]
 004D839F    mov         eax,dword ptr [eax+23C];TCustomGrid.FFixedRows:Integer
 004D83A5    mov         dword ptr [ebp-34],eax
 004D83A8    mov         eax,dword ptr [ebp-0C]
 004D83AB    mov         eax,dword ptr [eax+24C];TCustomGrid.FRowCount:Longint
 004D83B1    dec         eax
 004D83B2    mov         dword ptr [ebp-2C],eax
 004D83B5    xor         eax,eax
 004D83B7    mov         dword ptr [ebp-20],eax
 004D83BA    xor         eax,eax
 004D83BC    mov         dword ptr [ebp-24],eax
 004D83BF    mov         eax,dword ptr [ebp-4]
 004D83C2    mov         dword ptr [ebp-28],eax
 004D83C5    cmp         dword ptr [ebp-28],0
>004D83C9    jge         004D83CE
 004D83CB    neg         dword ptr [ebp-28]
 004D83CE    cmp         byte ptr [ebp+8],0
>004D83D2    je          004D8422
 004D83D4    push        ebp
 004D83D5    lea         eax,[ebp-10]
 004D83D8    push        eax
 004D83D9    mov         eax,dword ptr [ebp-0C]
 004D83DC    lea         edx,[eax+250];TCustomGrid.FRowHeights:Pointer
 004D83E2    mov         eax,dword ptr [ebp-0C]
 004D83E5    add         eax,24C;TCustomGrid.FRowCount:Longint
 004D83EA    mov         ecx,dword ptr [ebp-0C]
 004D83ED    mov         ecx,dword ptr [ecx+234];TCustomGrid.FDefaultRowHeight:Integer
 004D83F3    call        004D8200
 004D83F8    pop         ecx
 004D83F9    mov         dword ptr [ebp-24],eax
 004D83FC    mov         eax,dword ptr [ebp-8]
 004D83FF    mov         dword ptr [ebp-34],eax
 004D8402    mov         eax,dword ptr [ebp-8]
 004D8405    add         eax,dword ptr [ebp-28]
 004D8408    mov         edx,dword ptr [ebp-0C]
 004D840B    cmp         eax,dword ptr [edx+25C];TCustomGrid.FTopLeft:Longint
>004D8411    jg          004D846E
 004D8413    mov         eax,dword ptr [ebp-0C]
 004D8416    mov         eax,dword ptr [eax+25C];TCustomGrid.FTopLeft:Longint
 004D841C    dec         eax
 004D841D    mov         dword ptr [ebp-2C],eax
>004D8420    jmp         004D846E
 004D8422    push        ebp
 004D8423    lea         eax,[ebp-14]
 004D8426    push        eax
 004D8427    mov         eax,dword ptr [ebp-0C]
 004D842A    lea         edx,[eax+220];TCustomGrid.FColWidths:Pointer
 004D8430    mov         eax,dword ptr [ebp-0C]
 004D8433    add         eax,21C;TCustomGrid.FColCount:Longint
 004D8438    mov         ecx,dword ptr [ebp-0C]
 004D843B    mov         ecx,dword ptr [ecx+230];TCustomGrid.FDefaultColWidth:Integer
 004D8441    call        004D8200
 004D8446    pop         ecx
 004D8447    mov         dword ptr [ebp-20],eax
 004D844A    mov         eax,dword ptr [ebp-8]
 004D844D    mov         dword ptr [ebp-38],eax
 004D8450    mov         eax,dword ptr [ebp-8]
 004D8453    add         eax,dword ptr [ebp-28]
 004D8456    mov         edx,dword ptr [ebp-0C]
 004D8459    cmp         eax,dword ptr [edx+258];TCustomGrid.FTopLeft:TGridCoord
>004D845F    jg          004D846E
 004D8461    mov         eax,dword ptr [ebp-0C]
 004D8464    mov         eax,dword ptr [eax+258];TCustomGrid.FTopLeft:TGridCoord
 004D846A    dec         eax
 004D846B    mov         dword ptr [ebp-30],eax
 004D846E    push        1
 004D8470    lea         ecx,[ebp-48]
 004D8473    lea         edx,[ebp-38]
 004D8476    mov         eax,dword ptr [ebp-0C]
 004D8479    call        004DAD08
 004D847E    lea         eax,[ebp-48]
 004D8481    push        eax
 004D8482    call        user32.IsRectEmpty
 004D8487    test        eax,eax
>004D8489    jne         004D84B7
 004D848B    lea         eax,[ebp-48]
 004D848E    push        eax
 004D848F    lea         eax,[ebp-48]
 004D8492    push        eax
 004D8493    mov         eax,dword ptr [ebp-24]
 004D8496    push        eax
 004D8497    mov         eax,dword ptr [ebp-20]
 004D849A    push        eax
 004D849B    mov         eax,dword ptr [ebp-0C]
 004D849E    call        TWinControl.GetHandle
 004D84A3    push        eax
 004D84A4    call        user32.ScrollWindow
 004D84A9    mov         eax,dword ptr [ebp-0C]
 004D84AC    call        TWinControl.GetHandle
 004D84B1    push        eax
 004D84B2    call        user32.UpdateWindow
 004D84B7    mov         ecx,dword ptr [ebp-18]
 004D84BA    mov         edx,dword ptr [ebp-1C]
 004D84BD    mov         eax,dword ptr [ebp-0C]
 004D84C0    mov         si,0FFA8
 004D84C4    call        @CallDynaInst;TCustomGrid.sub_004D8D14
 004D84C9    mov         eax,dword ptr [ebp-14]
 004D84CC    mov         edx,dword ptr [ebp-0C]
 004D84CF    cmp         eax,dword ptr [edx+228];TCustomGrid.FCurrent:TGridCoord
>004D84D5    jne         004D84E5
 004D84D7    mov         eax,dword ptr [ebp-10]
 004D84DA    mov         edx,dword ptr [ebp-0C]
 004D84DD    cmp         eax,dword ptr [edx+22C];TCustomGrid.FCurrent:Longint
>004D84E3    je          004D84F7
 004D84E5    push        1
 004D84E7    push        1
 004D84E9    mov         ecx,dword ptr [ebp-10]
 004D84EC    mov         edx,dword ptr [ebp-14]
 004D84EF    mov         eax,dword ptr [ebp-0C]
 004D84F2    call        004DB69C
 004D84F7    pop         esi
 004D84F8    mov         esp,ebp
 004D84FA    pop         ebp
 004D84FB    ret         4
end;*}

//004D8500
{*procedure sub_004D8500(?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
begin
 004D8500    push        ebp
 004D8501    mov         ebp,esp
 004D8503    add         esp,0FFFFFFE4
 004D8506    mov         dword ptr [ebp-0C],ecx
 004D8509    mov         dword ptr [ebp-8],edx
 004D850C    mov         dword ptr [ebp-4],eax
 004D850F    mov         eax,dword ptr [ebp-8]
 004D8512    mov         dword ptr [ebp-1C],eax
 004D8515    mov         eax,dword ptr [ebp+10]
 004D8518    mov         dword ptr [ebp-14],eax
 004D851B    mov         eax,dword ptr [ebp-0C]
 004D851E    mov         dword ptr [ebp-18],eax
 004D8521    mov         eax,dword ptr [ebp+0C]
 004D8524    mov         dword ptr [ebp-10],eax
 004D8527    push        0
 004D8529    mov         ecx,dword ptr [ebp+8]
 004D852C    lea         edx,[ebp-1C]
 004D852F    mov         eax,dword ptr [ebp-4]
 004D8532    call        004DAD08
 004D8537    mov         esp,ebp
 004D8539    pop         ebp
 004D853A    ret         0C
end;*}

//004D8540
procedure TCustomGrid.sub_0048A244;
begin
{*
 004D8540    push        ebp
 004D8541    mov         ebp,esp
 004D8543    push        ecx
 004D8544    mov         dword ptr [ebp-4],eax
 004D8547    mov         eax,dword ptr [ebp-4]
 004D854A    call        TWinControl.sub_0048A244
 004D854F    mov         eax,dword ptr [ebp-4]
 004D8552    test        byte ptr [eax+249],20;TCustomGrid.?f249:byte
>004D8559    jne         004D8563
 004D855B    mov         eax,dword ptr [ebp-4]
 004D855E    call        004D8764
 004D8563    pop         ecx
 004D8564    pop         ebp
 004D8565    ret
*}
end;

//004D8568
{*procedure sub_004D8568(?:TCustomGrid; ?:TGridCoord; ?:Longint; ?:?);
begin
 004D8568    push        ebp
 004D8569    mov         ebp,esp
 004D856B    add         esp,0FFFFFFF4
 004D856E    mov         dword ptr [ebp-0C],ecx
 004D8571    mov         dword ptr [ebp-8],edx
 004D8574    mov         dword ptr [ebp-4],eax
 004D8577    mov         eax,dword ptr [ebp-8]
 004D857A    push        eax
 004D857B    mov         eax,dword ptr [ebp-0C]
 004D857E    push        eax
 004D857F    mov         eax,dword ptr [ebp+8]
 004D8582    push        eax
 004D8583    mov         ecx,dword ptr [ebp-0C]
 004D8586    mov         edx,dword ptr [ebp-8]
 004D8589    mov         eax,dword ptr [ebp-4]
 004D858C    call        004D8500
 004D8591    mov         esp,ebp
 004D8593    pop         ebp
 004D8594    ret         4
end;*}

//004D8598
{*procedure TCustomGrid.sub_004D8598(?:?);
begin
 004D8598    push        ebp
 004D8599    mov         ebp,esp
 004D859B    add         esp,0FFFFFFF8
 004D859E    mov         byte ptr [ebp-6],dl
 004D85A1    mov         dword ptr [ebp-4],eax
 004D85A4    mov         byte ptr [ebp-5],1
 004D85A8    mov         al,byte ptr [ebp-5]
 004D85AB    pop         ecx
 004D85AC    pop         ecx
 004D85AD    pop         ebp
 004D85AE    ret
end;*}

//004D85B0
{*procedure TCustomGrid.sub_004D85B0(?:?; ?:?);
begin
 004D85B0    push        ebp
 004D85B1    mov         ebp,esp
 004D85B3    add         esp,0FFFFFFF4
 004D85B6    mov         byte ptr [ebp-9],cl
 004D85B9    mov         word ptr [ebp-8],dx
 004D85BD    mov         dword ptr [ebp-4],eax
 004D85C0    mov         byte ptr [ebp-5],1
 004D85C4    mov         al,byte ptr [ebp-5]
 004D85C7    mov         esp,ebp
 004D85C9    pop         ebp
 004D85CA    ret
end;*}

//004D85CC
procedure TCustomGrid.sub_004D85CC;
begin
{*
 004D85CC    push        ebp
 004D85CD    mov         ebp,esp
 004D85CF    add         esp,0FFFFFFF8
 004D85D2    mov         dword ptr [ebp-4],eax
 004D85D5    mov         eax,dword ptr [ebp-4]
 004D85D8    mov         al,byte ptr [eax+219];TCustomGrid.FCanEditModify:Boolean
 004D85DE    mov         byte ptr [ebp-5],al
 004D85E1    mov         al,byte ptr [ebp-5]
 004D85E4    pop         ecx
 004D85E5    pop         ecx
 004D85E6    pop         ebp
 004D85E7    ret
*}
end;

//004D85E8
{*function sub_004D85E8:?;
begin
 004D85E8    push        ebp
 004D85E9    mov         ebp,esp
 004D85EB    add         esp,0FFFFFFF8
 004D85EE    mov         dword ptr [ebp-4],eax
 004D85F1    mov         eax,dword ptr [ebp-4]
 004D85F4    mov         ax,word ptr [eax+248];TCustomGrid.FOptions:TGridOptions
 004D85FB    and         ax,word ptr ds:[4D8658];0x1400 gvar_004D8658
 004D8602    mov         dx,word ptr ds:[4D865C];0x400 gvar_004D865C
 004D8609    cmp         dx,ax
>004D860C    jne         004D8647
 004D860E    mov         eax,dword ptr [ebp-4]
 004D8611    cmp         byte ptr [eax+28D],0;TCustomGrid.FEditorMode:Boolean
>004D8618    je          004D8647
 004D861A    mov         eax,dword ptr [ebp-4]
 004D861D    test        byte ptr [eax+1C],10;TCustomGrid.FComponentState:TComponentState
>004D8621    jne         004D8647
 004D8623    mov         eax,dword ptr [ebp-4]
 004D8626    call        TWinControl.HandleAllocated
 004D862B    test        al,al
>004D862D    je          004D8647
 004D862F    mov         eax,dword ptr [ebp-4]
 004D8632    test        byte ptr [eax+249],20;TCustomGrid.?f249:byte
>004D8639    jne         004D864B
 004D863B    mov         eax,dword ptr [ebp-4]
 004D863E    call        004D8660
 004D8643    test        al,al
>004D8645    jne         004D864B
 004D8647    xor         eax,eax
>004D8649    jmp         004D864D
 004D864B    mov         al,1
 004D864D    mov         byte ptr [ebp-5],al
 004D8650    mov         al,byte ptr [ebp-5]
 004D8653    pop         ecx
 004D8654    pop         ecx
 004D8655    pop         ebp
 004D8656    ret
end;*}

//004D8660
{*function sub_004D8660(?:TCustomGrid):?;
begin
 004D8660    push        ebp
 004D8661    mov         ebp,esp
 004D8663    add         esp,0FFFFFFF0
 004D8666    mov         dword ptr [ebp-4],eax
 004D8669    mov         byte ptr [ebp-5],0
 004D866D    mov         eax,dword ptr [ebp-4]
 004D8670    call        004A0740
 004D8675    mov         dword ptr [ebp-10],eax
 004D8678    cmp         dword ptr [ebp-10],0
>004D867C    je          004D8692
 004D867E    mov         eax,dword ptr [ebp-10]
 004D8681    mov         eax,dword ptr [eax+220]
 004D8687    cmp         eax,dword ptr [ebp-4]
>004D868A    jne         004D86CF
 004D868C    mov         byte ptr [ebp-5],1
>004D8690    jmp         004D86CF
 004D8692    call        user32.GetFocus
 004D8697    mov         dword ptr [ebp-0C],eax
>004D869A    jmp         004D86BC
 004D869C    mov         eax,dword ptr [ebp-0C]
 004D869F    mov         edx,dword ptr [ebp-4]
 004D86A2    cmp         eax,dword ptr [edx+180];TCustomGrid.FHandle:HWND
>004D86A8    jne         004D86B0
 004D86AA    mov         byte ptr [ebp-5],1
>004D86AE    jmp         004D86BC
 004D86B0    mov         eax,dword ptr [ebp-0C]
 004D86B3    push        eax
 004D86B4    call        user32.GetParent
 004D86B9    mov         dword ptr [ebp-0C],eax
 004D86BC    mov         eax,dword ptr [ebp-0C]
 004D86BF    push        eax
 004D86C0    call        user32.IsWindow
 004D86C5    test        eax,eax
>004D86C7    je          004D86CF
 004D86C9    cmp         byte ptr [ebp-5],0
>004D86CD    je          004D869C
 004D86CF    mov         al,byte ptr [ebp-5]
 004D86D2    mov         esp,ebp
 004D86D4    pop         ebp
 004D86D5    ret
end;*}

//004D86D8
{*procedure TCustomGrid.sub_004D86D8(?:?; ?:?; ?:?);
begin
 004D86D8    push        ebp
 004D86D9    mov         ebp,esp
 004D86DB    add         esp,0FFFFFFF4
 004D86DE    mov         dword ptr [ebp-0C],ecx
 004D86E1    mov         dword ptr [ebp-8],edx
 004D86E4    mov         dword ptr [ebp-4],eax
 004D86E7    mov         eax,dword ptr [ebp+8]
 004D86EA    call        @LStrClr
 004D86EF    mov         esp,ebp
 004D86F1    pop         ebp
 004D86F2    ret         4
end;*}

//004D86F8
{*procedure TCustomGrid.sub_004D86F8(?:?; ?:?; ?:?);
begin
 004D86F8    push        ebp
 004D86F9    mov         ebp,esp
 004D86FB    add         esp,0FFFFFFF4
 004D86FE    mov         dword ptr [ebp-0C],ecx
 004D8701    mov         dword ptr [ebp-8],edx
 004D8704    mov         dword ptr [ebp-4],eax
 004D8707    mov         eax,dword ptr [ebp+8]
 004D870A    call        @LStrClr
 004D870F    mov         esp,ebp
 004D8711    pop         ebp
 004D8712    ret         4
end;*}

//004D8718
{*procedure TCustomGrid.sub_004D8718(?:?; ?:?);
begin
 004D8718    push        ebp
 004D8719    mov         ebp,esp
 004D871B    add         esp,0FFFFFFF4
 004D871E    mov         dword ptr [ebp-0C],ecx
 004D8721    mov         dword ptr [ebp-8],edx
 004D8724    mov         dword ptr [ebp-4],eax
 004D8727    mov         esp,ebp
 004D8729    pop         ebp
 004D872A    ret         4
end;*}

//004D8730
procedure TCustomGrid.sub_004D8730;
begin
{*
 004D8730    push        ebp
 004D8731    mov         ebp,esp
 004D8733    add         esp,0FFFFFFF8
 004D8736    mov         dword ptr [ebp-4],eax
 004D8739    xor         eax,eax
 004D873B    mov         dword ptr [ebp-8],eax
 004D873E    mov         eax,dword ptr [ebp-8]
 004D8741    pop         ecx
 004D8742    pop         ecx
 004D8743    pop         ebp
 004D8744    ret
*}
end;

//004D8748
{*procedure TCustomGrid.sub_004D8748(?:?; ?:?);
begin
 004D8748    push        ebp
 004D8749    mov         ebp,esp
 004D874B    add         esp,0FFFFFFF0
 004D874E    mov         dword ptr [ebp-10],ecx
 004D8751    mov         dword ptr [ebp-0C],edx
 004D8754    mov         dword ptr [ebp-4],eax
 004D8757    mov         byte ptr [ebp-5],0
 004D875B    mov         al,byte ptr [ebp-5]
 004D875E    mov         esp,ebp
 004D8760    pop         ebp
 004D8761    ret
end;*}

//004D8764
procedure sub_004D8764(?:TCustomGrid);
begin
{*
 004D8764    push        ebp
 004D8765    mov         ebp,esp
 004D8767    push        ecx
 004D8768    mov         dword ptr [ebp-4],eax
 004D876B    mov         eax,dword ptr [ebp-4]
 004D876E    mov         byte ptr [eax+28D],0;TCustomGrid.FEditorMode:Boolean
 004D8775    mov         eax,dword ptr [ebp-4]
 004D8778    call        TCustomGrid.HideEdit
 004D877D    pop         ecx
 004D877E    pop         ebp
 004D877F    ret
*}
end;

//004D8780
procedure sub_004D8780(?:TCustomGrid);
begin
{*
 004D8780    push        ebp
 004D8781    mov         ebp,esp
 004D8783    push        ecx
 004D8784    mov         dword ptr [ebp-4],eax
 004D8787    mov         eax,dword ptr [ebp-4]
 004D878A    mov         byte ptr [eax+28D],1
 004D8791    mov         eax,dword ptr [ebp-4]
 004D8794    call        004DDD14
 004D8799    pop         ecx
 004D879A    pop         ebp
 004D879B    ret
*}
end;

//004D879C
{*procedure sub_004D879C(?:TCustomGrid; ?:?);
begin
 004D879C    push        ebp
 004D879D    mov         ebp,esp
 004D879F    add         esp,0FFFFFFF8
 004D87A2    mov         byte ptr [ebp-5],dl
 004D87A5    mov         dword ptr [ebp-4],eax
 004D87A8    mov         eax,dword ptr [ebp-4]
 004D87AB    call        004D8780
 004D87B0    mov         eax,dword ptr [ebp-4]
 004D87B3    cmp         dword ptr [eax+27C],0
>004D87BA    je          004D87DD
 004D87BC    push        0
 004D87BE    xor         eax,eax
 004D87C0    mov         al,byte ptr [ebp-5]
 004D87C3    push        eax
 004D87C4    push        102
 004D87C9    mov         eax,dword ptr [ebp-4]
 004D87CC    mov         eax,dword ptr [eax+27C]
 004D87D2    call        TWinControl.GetHandle
 004D87D7    push        eax
 004D87D8    call        user32.PostMessageA
 004D87DD    pop         ecx
 004D87DE    pop         ecx
 004D87DF    pop         ebp
 004D87E0    ret
end;*}

//004D87E4
procedure TCustomGrid.ReadColWidths(Reader:TReader);
begin
{*
 004D87E4    push        ebp
 004D87E5    mov         ebp,esp
 004D87E7    add         esp,0FFFFFFF0
 004D87EA    mov         dword ptr [ebp-8],edx
 004D87ED    mov         dword ptr [ebp-4],eax
 004D87F0    mov         eax,dword ptr [ebp-8]
 004D87F3    call        TReader.ReadListBegin
 004D87F8    mov         eax,dword ptr [ebp-4]
 004D87FB    mov         eax,dword ptr [eax+21C]
 004D8801    dec         eax
 004D8802    test        eax,eax
>004D8804    jl          004D882E
 004D8806    inc         eax
 004D8807    mov         dword ptr [ebp-10],eax
 004D880A    mov         dword ptr [ebp-0C],0
 004D8811    mov         eax,dword ptr [ebp-8]
 004D8814    call        00425E24
 004D8819    mov         ecx,eax
 004D881B    mov         edx,dword ptr [ebp-0C]
 004D881E    mov         eax,dword ptr [ebp-4]
 004D8821    call        004DD650
 004D8826    inc         dword ptr [ebp-0C]
 004D8829    dec         dword ptr [ebp-10]
>004D882C    jne         004D8811
 004D882E    mov         eax,dword ptr [ebp-8]
 004D8831    call        TReader.ReadListEnd
 004D8836    mov         esp,ebp
 004D8838    pop         ebp
 004D8839    ret
*}
end;

//004D883C
procedure TCustomGrid.ReadRowHeights(Reader:TReader);
begin
{*
 004D883C    push        ebp
 004D883D    mov         ebp,esp
 004D883F    add         esp,0FFFFFFF0
 004D8842    mov         dword ptr [ebp-8],edx
 004D8845    mov         dword ptr [ebp-4],eax
 004D8848    mov         eax,dword ptr [ebp-8]
 004D884B    call        TReader.ReadListBegin
 004D8850    mov         eax,dword ptr [ebp-4]
 004D8853    mov         eax,dword ptr [eax+24C]
 004D8859    dec         eax
 004D885A    test        eax,eax
>004D885C    jl          004D8886
 004D885E    inc         eax
 004D885F    mov         dword ptr [ebp-10],eax
 004D8862    mov         dword ptr [ebp-0C],0
 004D8869    mov         eax,dword ptr [ebp-8]
 004D886C    call        00425E24
 004D8871    mov         ecx,eax
 004D8873    mov         edx,dword ptr [ebp-0C]
 004D8876    mov         eax,dword ptr [ebp-4]
 004D8879    call        004DDACC
 004D887E    inc         dword ptr [ebp-0C]
 004D8881    dec         dword ptr [ebp-10]
>004D8884    jne         004D8869
 004D8886    mov         eax,dword ptr [ebp-8]
 004D8889    call        TReader.ReadListEnd
 004D888E    mov         esp,ebp
 004D8890    pop         ebp
 004D8891    ret
*}
end;

//004D8894
procedure TCustomGrid.WriteColWidths(Writer:TWriter);
begin
{*
 004D8894    push        ebp
 004D8895    mov         ebp,esp
 004D8897    add         esp,0FFFFFFF0
 004D889A    mov         dword ptr [ebp-8],edx
 004D889D    mov         dword ptr [ebp-4],eax
 004D88A0    mov         eax,dword ptr [ebp-8]
 004D88A3    call        0042841C
 004D88A8    mov         eax,dword ptr [ebp-4]
 004D88AB    mov         eax,dword ptr [eax+21C]
 004D88B1    dec         eax
 004D88B2    test        eax,eax
>004D88B4    jl          004D88DE
 004D88B6    inc         eax
 004D88B7    mov         dword ptr [ebp-10],eax
 004D88BA    mov         dword ptr [ebp-0C],0
 004D88C1    mov         edx,dword ptr [ebp-0C]
 004D88C4    mov         eax,dword ptr [ebp-4]
 004D88C7    call        004DD40C
 004D88CC    mov         edx,eax
 004D88CE    mov         eax,dword ptr [ebp-8]
 004D88D1    call        00428340
 004D88D6    inc         dword ptr [ebp-0C]
 004D88D9    dec         dword ptr [ebp-10]
>004D88DC    jne         004D88C1
 004D88DE    mov         eax,dword ptr [ebp-8]
 004D88E1    call        00428430
 004D88E6    mov         esp,ebp
 004D88E8    pop         ebp
 004D88E9    ret
*}
end;

//004D88EC
procedure TCustomGrid.WriteRowHeights(Writer:TWriter);
begin
{*
 004D88EC    push        ebp
 004D88ED    mov         ebp,esp
 004D88EF    add         esp,0FFFFFFF0
 004D88F2    mov         dword ptr [ebp-8],edx
 004D88F5    mov         dword ptr [ebp-4],eax
 004D88F8    mov         eax,dword ptr [ebp-8]
 004D88FB    call        0042841C
 004D8900    mov         eax,dword ptr [ebp-4]
 004D8903    mov         eax,dword ptr [eax+24C]
 004D8909    dec         eax
 004D890A    test        eax,eax
>004D890C    jl          004D8936
 004D890E    inc         eax
 004D890F    mov         dword ptr [ebp-10],eax
 004D8912    mov         dword ptr [ebp-0C],0
 004D8919    mov         edx,dword ptr [ebp-0C]
 004D891C    mov         eax,dword ptr [ebp-4]
 004D891F    call        004DD45C
 004D8924    mov         edx,eax
 004D8926    mov         eax,dword ptr [ebp-8]
 004D8929    call        00428340
 004D892E    inc         dword ptr [ebp-0C]
 004D8931    dec         dword ptr [ebp-10]
>004D8934    jne         004D8919
 004D8936    mov         eax,dword ptr [ebp-8]
 004D8939    call        00428430
 004D893E    mov         esp,ebp
 004D8940    pop         ebp
 004D8941    ret
*}
end;

//004D8944
function DoColWidths:Boolean;
begin
{*
 004D8944    push        ebp
 004D8945    mov         ebp,esp
 004D8947    push        ecx
 004D8948    mov         eax,dword ptr [ebp+8]
 004D894B    mov         eax,dword ptr [eax-4]
 004D894E    cmp         dword ptr [eax+20],0
>004D8952    je          004D897B
 004D8954    mov         eax,dword ptr [ebp+8]
 004D8957    mov         eax,dword ptr [eax-8]
 004D895A    mov         edx,dword ptr [eax+220]
 004D8960    mov         eax,dword ptr [ebp+8]
 004D8963    mov         eax,dword ptr [eax-4]
 004D8966    mov         eax,dword ptr [eax+20]
 004D8969    mov         eax,dword ptr [eax+220]
 004D896F    call        004D73FC
 004D8974    xor         al,1
 004D8976    mov         byte ptr [ebp-1],al
>004D8979    jmp         004D898C
 004D897B    mov         eax,dword ptr [ebp+8]
 004D897E    mov         eax,dword ptr [eax-8]
 004D8981    cmp         dword ptr [eax+220],0
 004D8988    setne       byte ptr [ebp-1]
 004D898C    mov         al,byte ptr [ebp-1]
 004D898F    pop         ecx
 004D8990    pop         ebp
 004D8991    ret
*}
end;

//004D8994
function DoRowHeights:Boolean;
begin
{*
 004D8994    push        ebp
 004D8995    mov         ebp,esp
 004D8997    push        ecx
 004D8998    mov         eax,dword ptr [ebp+8]
 004D899B    mov         eax,dword ptr [eax-4]
 004D899E    cmp         dword ptr [eax+20],0
>004D89A2    je          004D89CB
 004D89A4    mov         eax,dword ptr [ebp+8]
 004D89A7    mov         eax,dword ptr [eax-8]
 004D89AA    mov         edx,dword ptr [eax+250]
 004D89B0    mov         eax,dword ptr [ebp+8]
 004D89B3    mov         eax,dword ptr [eax-4]
 004D89B6    mov         eax,dword ptr [eax+20]
 004D89B9    mov         eax,dword ptr [eax+250]
 004D89BF    call        004D73FC
 004D89C4    xor         al,1
 004D89C6    mov         byte ptr [ebp-1],al
>004D89C9    jmp         004D89DC
 004D89CB    mov         eax,dword ptr [ebp+8]
 004D89CE    mov         eax,dword ptr [eax-8]
 004D89D1    cmp         dword ptr [eax+250],0
 004D89D8    setne       byte ptr [ebp-1]
 004D89DC    mov         al,byte ptr [ebp-1]
 004D89DF    pop         ecx
 004D89E0    pop         ebp
 004D89E1    ret
*}
end;

//004D89E4
procedure TCustomGrid.DefineProperties(Filer:TFiler);
begin
{*
 004D89E4    push        ebp
 004D89E5    mov         ebp,esp
 004D89E7    add         esp,0FFFFFFF8
 004D89EA    push        ebx
 004D89EB    mov         dword ptr [ebp-4],edx
 004D89EE    mov         dword ptr [ebp-8],eax
 004D89F1    mov         edx,dword ptr [ebp-4]
 004D89F4    mov         eax,dword ptr [ebp-8]
 004D89F7    call        TWinControl.DefineProperties
 004D89FC    mov         eax,dword ptr [ebp-8]
 004D89FF    cmp         byte ptr [eax+28F],0
>004D8A06    je          004D8A58
 004D8A08    mov         eax,dword ptr [ebp-8]
 004D8A0B    push        eax
 004D8A0C    push        4D87E4;TCustomGrid.ReadColWidths
 004D8A11    mov         eax,dword ptr [ebp-8]
 004D8A14    push        eax
 004D8A15    push        4D8894;TCustomGrid.WriteColWidths
 004D8A1A    push        ebp
 004D8A1B    call        DoColWidths
 004D8A20    pop         ecx
 004D8A21    mov         ecx,eax
 004D8A23    mov         edx,4D8A68;'ColWidths'
 004D8A28    mov         eax,dword ptr [ebp-4]
 004D8A2B    mov         ebx,dword ptr [eax]
 004D8A2D    call        dword ptr [ebx+4]
 004D8A30    mov         eax,dword ptr [ebp-8]
 004D8A33    push        eax
 004D8A34    push        4D883C;TCustomGrid.ReadRowHeights
 004D8A39    mov         eax,dword ptr [ebp-8]
 004D8A3C    push        eax
 004D8A3D    push        4D88EC;TCustomGrid.WriteRowHeights
 004D8A42    push        ebp
 004D8A43    call        DoRowHeights
 004D8A48    pop         ecx
 004D8A49    mov         ecx,eax
 004D8A4B    mov         edx,4D8A7C;'RowHeights'
 004D8A50    mov         eax,dword ptr [ebp-4]
 004D8A53    mov         ebx,dword ptr [eax]
 004D8A55    call        dword ptr [ebx+4]
 004D8A58    pop         ebx
 004D8A59    pop         ecx
 004D8A5A    pop         ecx
 004D8A5B    pop         ebp
 004D8A5C    ret
*}
end;

//004D8A88
procedure sub_004D8A88(?:TCustomGrid; ?:Longint; ?:Longint);
begin
{*
 004D8A88    push        ebp
 004D8A89    mov         ebp,esp
 004D8A8B    add         esp,0FFFFFFE4
 004D8A8E    push        esi
 004D8A8F    mov         dword ptr [ebp-0C],ecx
 004D8A92    mov         dword ptr [ebp-8],edx
 004D8A95    mov         dword ptr [ebp-4],eax
 004D8A98    mov         eax,dword ptr [ebp-8]
 004D8A9B    cmp         eax,dword ptr [ebp-0C]
>004D8A9E    je          004D8B91
 004D8AA4    mov         eax,dword ptr [ebp-4]
 004D8AA7    cmp         dword ptr [eax+220],0
>004D8AAE    je          004D8ADA
 004D8AB0    mov         ecx,dword ptr [ebp-0C]
 004D8AB3    inc         ecx
 004D8AB4    mov         edx,dword ptr [ebp-8]
 004D8AB7    inc         edx
 004D8AB8    mov         eax,dword ptr [ebp-4]
 004D8ABB    add         eax,220
 004D8AC0    call        004D7364
 004D8AC5    mov         ecx,dword ptr [ebp-0C]
 004D8AC8    inc         ecx
 004D8AC9    mov         edx,dword ptr [ebp-8]
 004D8ACC    inc         edx
 004D8ACD    mov         eax,dword ptr [ebp-4]
 004D8AD0    add         eax,224
 004D8AD5    call        004D7364
 004D8ADA    mov         eax,dword ptr [ebp-0C]
 004D8ADD    push        eax
 004D8ADE    mov         eax,dword ptr [ebp-4]
 004D8AE1    lea         edx,[eax+228]
 004D8AE7    mov         ecx,dword ptr [ebp-8]
 004D8AEA    mov         eax,dword ptr [ebp-4]
 004D8AED    call        004DB580
 004D8AF2    mov         eax,dword ptr [ebp-0C]
 004D8AF5    push        eax
 004D8AF6    mov         eax,dword ptr [ebp-4]
 004D8AF9    lea         edx,[eax+210]
 004D8AFF    mov         ecx,dword ptr [ebp-8]
 004D8B02    mov         eax,dword ptr [ebp-4]
 004D8B05    call        004DB580
 004D8B0A    mov         eax,dword ptr [ebp-0C]
 004D8B0D    push        eax
 004D8B0E    mov         eax,dword ptr [ebp-4]
 004D8B11    lea         edx,[eax+280]
 004D8B17    mov         ecx,dword ptr [ebp-8]
 004D8B1A    mov         eax,dword ptr [ebp-4]
 004D8B1D    call        004DB580
 004D8B22    xor         eax,eax
 004D8B24    mov         dword ptr [ebp-18],eax
 004D8B27    mov         eax,dword ptr [ebp-4]
 004D8B2A    call        004DD53C
 004D8B2F    mov         dword ptr [ebp-10],eax
 004D8B32    mov         eax,dword ptr [ebp-8]
 004D8B35    cmp         eax,dword ptr [ebp-0C]
>004D8B38    jge         004D8B48
 004D8B3A    mov         eax,dword ptr [ebp-8]
 004D8B3D    mov         dword ptr [ebp-1C],eax
 004D8B40    mov         eax,dword ptr [ebp-0C]
 004D8B43    mov         dword ptr [ebp-14],eax
>004D8B46    jmp         004D8B54
 004D8B48    mov         eax,dword ptr [ebp-0C]
 004D8B4B    mov         dword ptr [ebp-1C],eax
 004D8B4E    mov         eax,dword ptr [ebp-8]
 004D8B51    mov         dword ptr [ebp-14],eax
 004D8B54    lea         edx,[ebp-1C]
 004D8B57    mov         eax,dword ptr [ebp-4]
 004D8B5A    call        004DAED8
 004D8B5F    mov         ecx,dword ptr [ebp-0C]
 004D8B62    mov         edx,dword ptr [ebp-8]
 004D8B65    mov         eax,dword ptr [ebp-4]
 004D8B68    mov         si,0FFAA
 004D8B6C    call        @CallDynaInst
 004D8B71    mov         eax,dword ptr [ebp-4]
 004D8B74    cmp         dword ptr [eax+220],0
>004D8B7B    je          004D8B89
 004D8B7D    mov         eax,dword ptr [ebp-4]
 004D8B80    mov         si,0FFA5
 004D8B84    call        @CallDynaInst
 004D8B89    mov         eax,dword ptr [ebp-4]
 004D8B8C    call        004DDD14
 004D8B91    pop         esi
 004D8B92    mov         esp,ebp
 004D8B94    pop         ebp
 004D8B95    ret
*}
end;

//004D8B98
{*procedure TCustomGrid.sub_004D8B98(?:?; ?:?);
begin
 004D8B98    push        ebp
 004D8B99    mov         ebp,esp
 004D8B9B    add         esp,0FFFFFFF4
 004D8B9E    mov         dword ptr [ebp-0C],ecx
 004D8BA1    mov         dword ptr [ebp-8],edx
 004D8BA4    mov         dword ptr [ebp-4],eax
 004D8BA7    mov         esp,ebp
 004D8BA9    pop         ebp
 004D8BAA    ret
end;*}

//004D8BAC
procedure sub_004D8BAC(?:TCustomGrid; ?:Longint; ?:Longint);
begin
{*
 004D8BAC    push        ebp
 004D8BAD    mov         ebp,esp
 004D8BAF    add         esp,0FFFFFFF4
 004D8BB2    push        esi
 004D8BB3    mov         dword ptr [ebp-0C],ecx
 004D8BB6    mov         dword ptr [ebp-8],edx
 004D8BB9    mov         dword ptr [ebp-4],eax
 004D8BBC    mov         eax,dword ptr [ebp-4]
 004D8BBF    cmp         dword ptr [eax+250],0
>004D8BC6    je          004D8BDD
 004D8BC8    mov         ecx,dword ptr [ebp-0C]
 004D8BCB    inc         ecx
 004D8BCC    mov         edx,dword ptr [ebp-8]
 004D8BCF    inc         edx
 004D8BD0    mov         eax,dword ptr [ebp-4]
 004D8BD3    add         eax,250
 004D8BD8    call        004D7364
 004D8BDD    mov         eax,dword ptr [ebp-0C]
 004D8BE0    push        eax
 004D8BE1    mov         eax,dword ptr [ebp-4]
 004D8BE4    lea         edx,[eax+22C]
 004D8BEA    mov         ecx,dword ptr [ebp-8]
 004D8BED    mov         eax,dword ptr [ebp-4]
 004D8BF0    call        004DB580
 004D8BF5    mov         eax,dword ptr [ebp-0C]
 004D8BF8    push        eax
 004D8BF9    mov         eax,dword ptr [ebp-4]
 004D8BFC    lea         edx,[eax+214]
 004D8C02    mov         ecx,dword ptr [ebp-8]
 004D8C05    mov         eax,dword ptr [ebp-4]
 004D8C08    call        004DB580
 004D8C0D    mov         eax,dword ptr [ebp-0C]
 004D8C10    push        eax
 004D8C11    mov         eax,dword ptr [ebp-4]
 004D8C14    lea         edx,[eax+284]
 004D8C1A    mov         ecx,dword ptr [ebp-8]
 004D8C1D    mov         eax,dword ptr [ebp-4]
 004D8C20    call        004DB580
 004D8C25    mov         ecx,dword ptr [ebp-0C]
 004D8C28    mov         edx,dword ptr [ebp-8]
 004D8C2B    mov         eax,dword ptr [ebp-4]
 004D8C2E    mov         si,0FFA9
 004D8C32    call        @CallDynaInst
 004D8C37    mov         eax,dword ptr [ebp-4]
 004D8C3A    cmp         dword ptr [eax+250],0
>004D8C41    je          004D8C4F
 004D8C43    mov         eax,dword ptr [ebp-4]
 004D8C46    mov         si,0FFA4
 004D8C4A    call        @CallDynaInst
 004D8C4F    mov         eax,dword ptr [ebp-4]
 004D8C52    call        004DDD14
 004D8C57    pop         esi
 004D8C58    mov         esp,ebp
 004D8C5A    pop         ebp
 004D8C5B    ret
*}
end;

//004D8C5C
{*procedure TCustomGrid.sub_004D8C5C(?:?; ?:?);
begin
 004D8C5C    push        ebp
 004D8C5D    mov         ebp,esp
 004D8C5F    add         esp,0FFFFFFF4
 004D8C62    mov         dword ptr [ebp-0C],ecx
 004D8C65    mov         dword ptr [ebp-8],edx
 004D8C68    mov         dword ptr [ebp-4],eax
 004D8C6B    mov         esp,ebp
 004D8C6D    pop         ebp
 004D8C6E    ret
end;*}

//004D8C70
{*procedure sub_004D8C70(?:TCustomMPHexEditor; ?:TPoint; ?:?; ?:?);
begin
 004D8C70    push        ebp
 004D8C71    mov         ebp,esp
 004D8C73    add         esp,0FFFFFF90
 004D8C76    mov         dword ptr [ebp-0C],ecx
 004D8C79    mov         dword ptr [ebp-8],edx
 004D8C7C    mov         dword ptr [ebp-4],eax
 004D8C7F    lea         edx,[ebp-70]
 004D8C82    mov         eax,dword ptr [ebp-4]
 004D8C85    call        TCustomGrid.CalcDrawInfo
 004D8C8A    lea         eax,[ebp-70]
 004D8C8D    push        eax
 004D8C8E    mov         eax,dword ptr [ebp+8]
 004D8C91    push        eax
 004D8C92    mov         ecx,dword ptr [ebp-0C]
 004D8C95    mov         edx,dword ptr [ebp-8]
 004D8C98    mov         eax,dword ptr [ebp-4]
 004D8C9B    call        004D9B54
 004D8CA0    mov         eax,dword ptr [ebp+8]
 004D8CA3    cmp         dword ptr [eax],0
>004D8CA6    jge         004D8CB4
 004D8CA8    mov         eax,dword ptr [ebp+8]
 004D8CAB    mov         dword ptr [eax+4],0FFFFFFFF
>004D8CB2    jmp         004D8CC6
 004D8CB4    mov         eax,dword ptr [ebp+8]
 004D8CB7    cmp         dword ptr [eax+4],0
>004D8CBB    jge         004D8CC6
 004D8CBD    mov         eax,dword ptr [ebp+8]
 004D8CC0    mov         dword ptr [eax],0FFFFFFFF
 004D8CC6    mov         esp,ebp
 004D8CC8    pop         ebp
 004D8CC9    ret         4
end;*}

//004D8CCC
{*procedure sub_004D8CCC(?:TCustomMPHexEditor; ?:TGridCoord; ?:Longint; ?:?; ?:?);
begin
 004D8CCC    push        ebp
 004D8CCD    mov         ebp,esp
 004D8CCF    add         esp,0FFFFFFF4
 004D8CD2    mov         dword ptr [ebp-0C],ecx
 004D8CD5    mov         dword ptr [ebp-8],edx
 004D8CD8    mov         dword ptr [ebp-4],eax
 004D8CDB    mov         al,byte ptr [ebp+0C]
 004D8CDE    push        eax
 004D8CDF    mov         al,byte ptr [ebp+8]
 004D8CE2    push        eax
 004D8CE3    mov         ecx,dword ptr [ebp-0C]
 004D8CE6    mov         edx,dword ptr [ebp-8]
 004D8CE9    mov         eax,dword ptr [ebp-4]
 004D8CEC    call        004DB69C
 004D8CF1    mov         esp,ebp
 004D8CF3    pop         ebp
 004D8CF4    ret         8
end;*}

//004D8CF8
{*function sub_004D8CF8(?:?; ?:?):?;
begin
 004D8CF8    push        ebp
 004D8CF9    mov         ebp,esp
 004D8CFB    add         esp,0FFFFFFF0
 004D8CFE    mov         dword ptr [ebp-10],ecx
 004D8D01    mov         dword ptr [ebp-0C],edx
 004D8D04    mov         dword ptr [ebp-4],eax
 004D8D07    mov         byte ptr [ebp-5],1
 004D8D0B    mov         al,byte ptr [ebp-5]
 004D8D0E    mov         esp,ebp
 004D8D10    pop         ebp
 004D8D11    ret
end;*}

//004D8D14
{*procedure TCustomGrid.sub_004D8D14(?:?; ?:?);
begin
 004D8D14    push        ebp
 004D8D15    mov         ebp,esp
 004D8D17    add         esp,0FFFFFFF4
 004D8D1A    mov         dword ptr [ebp-0C],ecx
 004D8D1D    mov         dword ptr [ebp-8],edx
 004D8D20    mov         dword ptr [ebp-4],eax
 004D8D23    mov         esp,ebp
 004D8D25    pop         ebp
 004D8D26    ret
end;*}

//004D8D28
{*function sub_004D8D28(?:TCustomGrid; ?:?; ?:?):?;
begin
 004D8D28    push        ebp
 004D8D29    mov         ebp,esp
 004D8D2B    add         esp,0FFFFFF80
 004D8D2E    push        ebx
 004D8D2F    mov         dword ptr [ebp-0C],ecx
 004D8D32    mov         dword ptr [ebp-8],edx
 004D8D35    mov         dword ptr [ebp-4],eax
 004D8D38    mov         eax,dword ptr [ebp-4]
 004D8D3B    mov         al,byte ptr [eax+28E]
 004D8D41    mov         byte ptr [ebp-0E],al
 004D8D44    cmp         byte ptr [ebp-0E],0
>004D8D48    jne         004D8D7A
 004D8D4A    lea         edx,[ebp-80]
 004D8D4D    mov         eax,dword ptr [ebp-4]
 004D8D50    call        TCustomGrid.CalcDrawInfo
 004D8D55    lea         eax,[ebp-0E]
 004D8D58    push        eax
 004D8D59    lea         eax,[ebp-14]
 004D8D5C    push        eax
 004D8D5D    lea         eax,[ebp-18]
 004D8D60    push        eax
 004D8D61    lea         eax,[ebp-1C]
 004D8D64    push        eax
 004D8D65    lea         eax,[ebp-80]
 004D8D68    push        eax
 004D8D69    mov         ecx,dword ptr [ebp-0C]
 004D8D6C    mov         edx,dword ptr [ebp-8]
 004D8D6F    mov         eax,dword ptr [ebp-4]
 004D8D72    mov         ebx,dword ptr [eax]
 004D8D74    call        dword ptr [ebx+0CC]
 004D8D7A    cmp         byte ptr [ebp-0E],0
 004D8D7E    setne       byte ptr [ebp-0D]
 004D8D82    mov         al,byte ptr [ebp-0D]
 004D8D85    pop         ebx
 004D8D86    mov         esp,ebp
 004D8D88    pop         ebp
 004D8D89    ret
end;*}

//004D8D8C
procedure TCustomGrid.sub_004D8D8C;
begin
{*
 004D8D8C    push        ebp
 004D8D8D    mov         ebp,esp
 004D8D8F    add         esp,0FFFFFFEC
 004D8D92    mov         dword ptr [ebp-4],eax
 004D8D95    mov         eax,dword ptr [ebp-4]
 004D8D98    cmp         byte ptr [eax+28D],0;TCustomGrid.FEditorMode:Boolean
>004D8D9F    je          004D8DDC
 004D8DA1    mov         eax,dword ptr [ebp-4]
 004D8DA4    cmp         dword ptr [eax+27C],0;TCustomGrid.FInplaceEdit:TInplaceEdit
>004D8DAB    je          004D8DDC
 004D8DAD    lea         eax,[ebp-14]
 004D8DB0    push        eax
 004D8DB1    mov         eax,dword ptr [ebp-4]
 004D8DB4    mov         ecx,dword ptr [eax+22C];TCustomGrid.FCurrent:Longint
 004D8DBA    mov         eax,dword ptr [ebp-4]
 004D8DBD    mov         edx,dword ptr [eax+228];TCustomGrid.FCurrent:TGridCoord
 004D8DC3    mov         eax,dword ptr [ebp-4]
 004D8DC6    call        004D8568
 004D8DCB    lea         edx,[ebp-14]
 004D8DCE    mov         eax,dword ptr [ebp-4]
 004D8DD1    mov         eax,dword ptr [eax+27C];TCustomGrid.FInplaceEdit:TInplaceEdit
 004D8DD7    call        004D7EC0
 004D8DDC    mov         esp,ebp
 004D8DDE    pop         ebp
 004D8DDF    ret
*}
end;

//004D8DE0
procedure FillDWord(var Dest:void ; Count:Integer; Value:Integer);
begin
{*
 004D8DE0    xchg        edx,ecx
 004D8DE2    push        edi
 004D8DE3    mov         edi,eax
 004D8DE5    mov         eax,edx
 004D8DE7    rep stos    dword ptr [edi]
 004D8DE9    pop         edi
 004D8DEA    ret
*}
end;

//004D8DEC
function StackAlloc(Size:Integer):Pointer;
begin
{*
 004D8DEC    pop         ecx
 004D8DED    mov         edx,esp
 004D8DEF    add         eax,3
 004D8DF2    and         eax,0FFFFFFFC
 004D8DF5    cmp         eax,0FFC
>004D8DFA    jle         004D8E0F
 004D8DFC    sub         esp,0FFC
 004D8E02    push        eax
 004D8E03    sub         eax,1000
>004D8E08    jns         004D8DFC
 004D8E0A    add         eax,1000
 004D8E0F    sub         esp,eax
 004D8E11    mov         eax,esp
 004D8E13    push        edx
 004D8E14    mov         edx,esp
 004D8E16    sub         edx,4
 004D8E19    push        edx
 004D8E1A    push        ecx
 004D8E1B    ret
*}
end;

//004D8E1C
procedure StackFree(P:Pointer);
begin
{*
 004D8E1C    pop         ecx
 004D8E1D    mov         edx,dword ptr [esp]
 004D8E20    sub         eax,8
 004D8E23    cmp         edx,esp
>004D8E25    jne         004D8E2F
 004D8E27    cmp         edx,eax
>004D8E29    jne         004D8E2F
 004D8E2B    mov         esp,dword ptr [esp+4]
 004D8E2F    push        ecx
 004D8E30    ret
*}
end;

//004D8E34
{*procedure sub_004D8E34(?:?; ?:?; ?:?; ?:?; ?:?);
begin
 004D8E34    push        ebp
 004D8E35    mov         ebp,esp
 004D8E37    add         esp,0FFFFFFC4
 004D8E3A    push        ebx
 004D8E3B    push        esi
 004D8E3C    mov         dword ptr [ebp-0C],ecx
 004D8E3F    mov         dword ptr [ebp-8],edx
 004D8E42    mov         dword ptr [ebp-4],eax
 004D8E45    mov         eax,dword ptr [ebp+0C]
 004D8E48    mov         eax,dword ptr [eax+1C]
 004D8E4B    mov         eax,dword ptr [eax-4]
 004D8E4E    mov         eax,dword ptr [eax+208]
 004D8E54    mov         dword ptr [ebp-30],eax
 004D8E57    mov         eax,dword ptr [ebp-4]
 004D8E5A    cmp         dword ptr [eax],0
>004D8E5D    je          004D9061
 004D8E63    mov         eax,dword ptr [ebp+0C]
 004D8E66    mov         eax,dword ptr [eax+1C]
 004D8E69    mov         eax,dword ptr [eax-4]
 004D8E6C    mov         edx,dword ptr [eax+244]
 004D8E72    mov         eax,dword ptr [ebp-30]
 004D8E75    mov         eax,dword ptr [eax+10]
 004D8E78    call        TPen.SetWidth
 004D8E7D    cmp         byte ptr [ebp+8],0
>004D8E81    je          004D8E96
 004D8E83    mov         eax,dword ptr [ebp+0C]
 004D8E86    mov         edx,dword ptr [eax+0C]
 004D8E89    mov         eax,dword ptr [ebp-30]
 004D8E8C    mov         eax,dword ptr [eax+10]
 004D8E8F    call        TPen.SetColor
>004D8E94    jmp         004D8EA7
 004D8E96    mov         eax,dword ptr [ebp+0C]
 004D8E99    mov         edx,dword ptr [eax+8]
 004D8E9C    mov         eax,dword ptr [ebp-30]
 004D8E9F    mov         eax,dword ptr [eax+10]
 004D8EA2    call        TPen.SetColor
 004D8EA7    mov         eax,dword ptr [ebp-30]
 004D8EAA    mov         eax,dword ptr [eax+10]
 004D8EAD    call        TPen.GetWidth
 004D8EB2    dec         eax
>004D8EB3    jle         004D8EF8
 004D8EB5    xor         eax,eax
 004D8EB7    mov         dword ptr [ebp-3C],eax
 004D8EBA    mov         eax,dword ptr [ebp-30]
 004D8EBD    mov         eax,dword ptr [eax+10]
 004D8EC0    call        TPen.GetColor
 004D8EC5    mov         dword ptr [ebp-38],eax
 004D8EC8    xor         eax,eax
 004D8ECA    mov         dword ptr [ebp-34],eax
 004D8ECD    push        0
 004D8ECF    push        0
 004D8ED1    lea         eax,[ebp-3C]
 004D8ED4    push        eax
 004D8ED5    mov         eax,dword ptr [ebp-30]
 004D8ED8    mov         eax,dword ptr [eax+10]
 004D8EDB    call        TPen.GetWidth
 004D8EE0    push        eax
 004D8EE1    push        12200
 004D8EE6    call        gdi32.ExtCreatePen
 004D8EEB    mov         edx,eax
 004D8EED    mov         eax,dword ptr [ebp-30]
 004D8EF0    mov         eax,dword ptr [eax+10]
 004D8EF3    call        0042E7B8
 004D8EF8    mov         eax,dword ptr [ebp+0C]
 004D8EFB    mov         eax,dword ptr [eax+1C]
 004D8EFE    mov         eax,dword ptr [eax-8]
 004D8F01    mov         dword ptr [ebp-18],eax
 004D8F04    mov         ebx,dword ptr [ebp-4]
 004D8F07    mov         edx,dword ptr [ebp-8]
 004D8F0A    mov         eax,dword ptr [ebx+2C]
 004D8F0D    call        dword ptr [ebx+28]
 004D8F10    mov         edx,dword ptr [ebp+0C]
 004D8F13    mov         edx,dword ptr [edx+14]
 004D8F16    mov         ecx,dword ptr [ebp-0C]
 004D8F19    mov         edx,dword ptr [edx+ecx*4]
 004D8F1C    mov         ecx,dword ptr [ebp-4]
 004D8F1F    mov         ecx,dword ptr [ecx]
 004D8F21    shr         ecx,1
 004D8F23    add         edx,ecx
 004D8F25    add         eax,edx
 004D8F27    mov         dword ptr [ebp-10],eax
 004D8F2A    mov         eax,dword ptr [ebp+0C]
 004D8F2D    mov         eax,dword ptr [eax+1C]
 004D8F30    mov         eax,dword ptr [eax-4]
 004D8F33    mov         si,0FFC8
 004D8F37    call        @CallDynaInst
 004D8F3C    test        al,al
>004D8F3E    je          004D8F49
 004D8F40    cmp         dword ptr [ebp-0C],0
>004D8F44    jne         004D8F49
 004D8F46    inc         dword ptr [ebp-10]
 004D8F49    mov         eax,dword ptr [ebp-0C]
 004D8F4C    xor         eax,1
 004D8F4F    mov         edx,dword ptr [ebp+0C]
 004D8F52    mov         edx,dword ptr [edx+14]
 004D8F55    mov         eax,dword ptr [edx+eax*4]
 004D8F58    mov         dword ptr [ebp-20],eax
 004D8F5B    mov         eax,dword ptr [ebp-0C]
 004D8F5E    xor         eax,1
 004D8F61    add         eax,2
 004D8F64    mov         edx,dword ptr [ebp+0C]
 004D8F67    mov         edx,dword ptr [edx+14]
 004D8F6A    mov         eax,dword ptr [edx+eax*4]
 004D8F6D    mov         dword ptr [ebp-24],eax
 004D8F70    mov         eax,dword ptr [ebp-0C]
 004D8F73    add         eax,2
 004D8F76    mov         edx,dword ptr [ebp+0C]
 004D8F79    mov         edx,dword ptr [edx+14]
 004D8F7C    mov         eax,dword ptr [edx+eax*4]
 004D8F7F    mov         edx,dword ptr [ebp-4]
 004D8F82    add         eax,dword ptr [edx]
 004D8F84    mov         dword ptr [ebp-1C],eax
 004D8F87    mov         eax,dword ptr [ebp+0C]
 004D8F8A    mov         eax,dword ptr [eax+1C]
 004D8F8D    mov         eax,dword ptr [eax-0C]
 004D8F90    shl         eax,2
 004D8F93    mov         dword ptr [ebp-28],eax
 004D8F96    xor         eax,eax
 004D8F98    mov         dword ptr [ebp-14],eax
 004D8F9B    mov         eax,dword ptr [ebp-14]
 004D8F9E    add         eax,dword ptr [ebp-0C]
 004D8FA1    mov         edx,dword ptr [ebp-18]
 004D8FA4    mov         ecx,dword ptr [ebp-10]
 004D8FA7    mov         dword ptr [edx+eax*4],ecx
 004D8FAA    mov         eax,dword ptr [ebp-0C]
 004D8FAD    xor         eax,1
 004D8FB0    add         eax,dword ptr [ebp-14]
 004D8FB3    mov         edx,dword ptr [ebp-18]
 004D8FB6    mov         ecx,dword ptr [ebp-20]
 004D8FB9    mov         dword ptr [edx+eax*4],ecx
 004D8FBC    add         dword ptr [ebp-14],2
 004D8FC0    mov         eax,dword ptr [ebp-14]
 004D8FC3    add         eax,dword ptr [ebp-0C]
 004D8FC6    mov         edx,dword ptr [ebp-18]
 004D8FC9    mov         ecx,dword ptr [ebp-10]
 004D8FCC    mov         dword ptr [edx+eax*4],ecx
 004D8FCF    mov         eax,dword ptr [ebp-0C]
 004D8FD2    xor         eax,1
 004D8FD5    add         eax,dword ptr [ebp-14]
 004D8FD8    mov         edx,dword ptr [ebp-18]
 004D8FDB    mov         ecx,dword ptr [ebp-24]
 004D8FDE    mov         dword ptr [edx+eax*4],ecx
 004D8FE1    add         dword ptr [ebp-14],2
 004D8FE5    inc         dword ptr [ebp-8]
 004D8FE8    mov         ebx,dword ptr [ebp-4]
 004D8FEB    mov         edx,dword ptr [ebp-8]
 004D8FEE    mov         eax,dword ptr [ebx+2C]
 004D8FF1    call        dword ptr [ebx+28]
 004D8FF4    mov         edx,dword ptr [ebp-4]
 004D8FF7    add         eax,dword ptr [edx]
 004D8FF9    mov         dword ptr [ebp-2C],eax
 004D8FFC    cmp         dword ptr [ebp-2C],0
>004D9000    jg          004D900D
 004D9002    mov         eax,dword ptr [ebp-4]
 004D9005    mov         eax,dword ptr [eax+10]
 004D9008    cmp         eax,dword ptr [ebp-8]
>004D900B    jge         004D8FE5
 004D900D    mov         eax,dword ptr [ebp-2C]
 004D9010    add         dword ptr [ebp-10],eax
 004D9013    mov         eax,dword ptr [ebp-10]
 004D9016    cmp         eax,dword ptr [ebp-1C]
>004D9019    jg          004D9032
 004D901B    mov         eax,dword ptr [ebp-4]
 004D901E    mov         eax,dword ptr [eax+10]
 004D9021    cmp         eax,dword ptr [ebp-8]
>004D9024    jl          004D9032
 004D9026    mov         eax,dword ptr [ebp-14]
 004D9029    cmp         eax,dword ptr [ebp-28]
>004D902C    jle         004D8F9B
 004D9032    mov         eax,dword ptr [ebp-14]
 004D9035    shr         eax,2
 004D9038    push        eax
 004D9039    mov         eax,dword ptr [ebp+0C]
 004D903C    mov         eax,dword ptr [eax+1C]
 004D903F    mov         eax,dword ptr [eax-10]
 004D9042    push        eax
 004D9043    mov         eax,dword ptr [ebp-18]
 004D9046    push        eax
 004D9047    mov         eax,dword ptr [ebp+0C]
 004D904A    mov         eax,dword ptr [eax+1C]
 004D904D    mov         eax,dword ptr [eax-4]
 004D9050    mov         eax,dword ptr [eax+208]
 004D9056    call        0042F6A0
 004D905B    push        eax
 004D905C    call        gdi32.PolyPolyline
 004D9061    pop         esi
 004D9062    pop         ebx
 004D9063    mov         esp,ebp
 004D9065    pop         ebp
 004D9066    ret         4
end;*}

//004D906C
{*procedure sub_004D906C(?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
begin
 004D906C    push        ebp
 004D906D    mov         ebp,esp
 004D906F    add         esp,0FFFFFFF8
 004D9072    mov         dword ptr [ebp-8],ecx
 004D9075    mov         byte ptr [ebp-2],dl
 004D9078    mov         byte ptr [ebp-1],al
 004D907B    mov         eax,dword ptr [ebp+14]
 004D907E    mov         eax,dword ptr [eax]
 004D9080    mov         edx,dword ptr [ebp+14]
 004D9083    cmp         eax,dword ptr [edx+8]
>004D9086    je          004D90FC
 004D9088    mov         eax,dword ptr [ebp+14]
 004D908B    mov         eax,dword ptr [eax+4]
 004D908E    mov         edx,dword ptr [ebp+14]
 004D9091    cmp         eax,dword ptr [edx+0C]
>004D9094    je          004D90FC
 004D9096    cmp         byte ptr [ebp-1],0
>004D909A    jne         004D90CD
 004D909C    push        ebp
 004D909D    mov         al,byte ptr [ebp-1]
 004D90A0    push        eax
 004D90A1    mov         eax,dword ptr [ebp+1C]
 004D90A4    add         eax,0FFFFFFC0
 004D90A7    mov         ecx,1
 004D90AC    mov         edx,dword ptr [ebp+18]
 004D90AF    call        004D8E34
 004D90B4    pop         ecx
 004D90B5    push        ebp
 004D90B6    mov         al,byte ptr [ebp-2]
 004D90B9    push        eax
 004D90BA    mov         eax,dword ptr [ebp+1C]
 004D90BD    add         eax,0FFFFFF90
 004D90C0    xor         ecx,ecx
 004D90C2    mov         edx,dword ptr [ebp-8]
 004D90C5    call        004D8E34
 004D90CA    pop         ecx
>004D90CB    jmp         004D90FC
 004D90CD    push        ebp
 004D90CE    mov         al,byte ptr [ebp-2]
 004D90D1    push        eax
 004D90D2    mov         eax,dword ptr [ebp+1C]
 004D90D5    add         eax,0FFFFFF90
 004D90D8    xor         ecx,ecx
 004D90DA    mov         edx,dword ptr [ebp-8]
 004D90DD    call        004D8E34
 004D90E2    pop         ecx
 004D90E3    push        ebp
 004D90E4    mov         al,byte ptr [ebp-1]
 004D90E7    push        eax
 004D90E8    mov         eax,dword ptr [ebp+1C]
 004D90EB    add         eax,0FFFFFFC0
 004D90EE    mov         ecx,1
 004D90F3    mov         edx,dword ptr [ebp+18]
 004D90F6    call        004D8E34
 004D90FB    pop         ecx
 004D90FC    pop         ecx
 004D90FD    pop         ecx
 004D90FE    pop         ebp
 004D90FF    ret         14
end;*}

//004D9104
{*procedure sub_004D9104(?:TGridCoord; ?:Longint; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
begin
 004D9104    push        ebp
 004D9105    mov         ebp,esp
 004D9107    add         esp,0FFFFFFB4
 004D910A    push        ebx
 004D910B    push        esi
 004D910C    push        edi
 004D910D    mov         dword ptr [ebp-0C],ecx
 004D9110    mov         dword ptr [ebp-8],edx
 004D9113    mov         dword ptr [ebp-4],eax
 004D9116    mov         eax,dword ptr [ebp-8]
 004D9119    mov         dword ptr [ebp-14],eax
 004D911C    mov         eax,dword ptr [ebp+18]
 004D911F    mov         dword ptr [ebp-38],eax
>004D9122    jmp         004D94A2
 004D9127    mov         eax,dword ptr [ebp-4]
 004D912A    mov         dword ptr [ebp-10],eax
 004D912D    mov         eax,dword ptr [ebp-0C]
 004D9130    mov         dword ptr [ebp-3C],eax
 004D9133    mov         eax,dword ptr [ebp+1C]
 004D9136    mov         eax,dword ptr [eax-4]
 004D9139    mov         edx,dword ptr [ebp-14]
 004D913C    call        004DD45C
 004D9141    add         eax,dword ptr [ebp-38]
 004D9144    mov         dword ptr [ebp-30],eax
>004D9147    jmp         004D9476
 004D914C    mov         eax,dword ptr [ebp+1C]
 004D914F    mov         eax,dword ptr [eax-4]
 004D9152    mov         edx,dword ptr [ebp-10]
 004D9155    call        004DD40C
 004D915A    add         eax,dword ptr [ebp-3C]
 004D915D    mov         dword ptr [ebp-34],eax
 004D9160    mov         eax,dword ptr [ebp-34]
 004D9163    cmp         eax,dword ptr [ebp-3C]
>004D9166    jle         004D9467
 004D916C    lea         eax,[ebp-3C]
 004D916F    push        eax
 004D9170    mov         eax,dword ptr [ebp+1C]
 004D9173    mov         eax,dword ptr [eax-4]
 004D9176    mov         eax,dword ptr [eax+208]
 004D917C    call        0042F6A0
 004D9181    push        eax
 004D9182    call        gdi32.RectVisible
 004D9187    test        eax,eax
>004D9189    je          004D9467
 004D918F    mov         al,byte ptr [ebp+8]
 004D9192    mov         byte ptr [ebp-15],al
 004D9195    mov         eax,dword ptr [ebp+1C]
 004D9198    mov         eax,dword ptr [eax-4]
 004D919B    call        004D8660
 004D91A0    mov         byte ptr [ebp-16],al
 004D91A3    cmp         byte ptr [ebp-16],0
>004D91A7    je          004D91CF
 004D91A9    mov         eax,dword ptr [ebp+1C]
 004D91AC    mov         eax,dword ptr [eax-4]
 004D91AF    mov         eax,dword ptr [eax+22C]
 004D91B5    cmp         eax,dword ptr [ebp-14]
>004D91B8    jne         004D91CF
 004D91BA    mov         eax,dword ptr [ebp+1C]
 004D91BD    mov         eax,dword ptr [eax-4]
 004D91C0    mov         eax,dword ptr [eax+228]
 004D91C6    cmp         eax,dword ptr [ebp-10]
>004D91C9    jne         004D91CF
 004D91CB    or          byte ptr [ebp-15],2
 004D91CF    mov         eax,dword ptr [ebp+1C]
 004D91D2    lea         ecx,[eax-80]
 004D91D5    mov         edx,dword ptr [ebp-14]
 004D91D8    mov         eax,dword ptr [ebp-10]
 004D91DB    call        004D6EB4
 004D91E0    test        al,al
>004D91E2    je          004D91E8
 004D91E4    or          byte ptr [ebp-15],1
 004D91E8    test        byte ptr [ebp-15],2
>004D91EC    je          004D921C
 004D91EE    mov         eax,dword ptr [ebp+1C]
 004D91F1    mov         eax,dword ptr [eax-4]
 004D91F4    test        byte ptr [eax+249],4
>004D91FB    je          004D921C
 004D91FD    mov         eax,dword ptr [ebp+1C]
 004D9200    mov         eax,dword ptr [eax-4]
 004D9203    cmp         byte ptr [eax+28D],0
>004D920A    je          004D921C
 004D920C    mov         eax,dword ptr [ebp+1C]
 004D920F    mov         eax,dword ptr [eax-4]
 004D9212    test        byte ptr [eax+1C],10
>004D9216    je          004D9467
 004D921C    mov         eax,dword ptr [ebp+1C]
 004D921F    mov         eax,dword ptr [eax-4]
 004D9222    cmp         byte ptr [eax+28C],0
>004D9229    jne         004D923B
 004D922B    mov         eax,dword ptr [ebp+1C]
 004D922E    mov         eax,dword ptr [eax-4]
 004D9231    test        byte ptr [eax+1C],10
>004D9235    je          004D92C2
 004D923B    mov         eax,dword ptr [ebp+1C]
 004D923E    mov         eax,dword ptr [eax-4]
 004D9241    mov         eax,dword ptr [eax+208]
 004D9247    mov         dword ptr [ebp-1C],eax
 004D924A    mov         eax,dword ptr [ebp+1C]
 004D924D    mov         eax,dword ptr [eax-4]
 004D9250    mov         edx,dword ptr [eax+68]
 004D9253    mov         eax,dword ptr [ebp-1C]
 004D9256    call        TCanvas.SetFont
 004D925B    test        byte ptr [ebp-15],1
>004D925F    je          004D92A9
 004D9261    test        byte ptr [ebp-15],2
>004D9265    je          004D9287
 004D9267    mov         eax,dword ptr [ebp+1C]
 004D926A    mov         eax,dword ptr [eax-4]
 004D926D    mov         ax,word ptr [eax+248]
 004D9274    and         ax,word ptr ds:[4D94C8];0x1020 gvar_004D94C8
 004D927B    mov         dx,word ptr ds:[4D94CC];0x0 gvar_004D94CC
 004D9282    cmp         dx,ax
>004D9285    je          004D92A9
 004D9287    mov         eax,dword ptr [ebp-1C]
 004D928A    mov         eax,dword ptr [eax+14]
 004D928D    mov         edx,0FF00000D
 004D9292    call        TBrush.SetColor
 004D9297    mov         eax,dword ptr [ebp-1C]
 004D929A    mov         eax,dword ptr [eax+0C]
 004D929D    mov         edx,0FF00000E
 004D92A2    call        TFont.SetColor
>004D92A7    jmp         004D92B7
 004D92A9    mov         eax,dword ptr [ebp-1C]
 004D92AC    mov         eax,dword ptr [eax+14]
 004D92AF    mov         edx,dword ptr [ebp+0C]
 004D92B2    call        TBrush.SetColor
 004D92B7    lea         edx,[ebp-3C]
 004D92BA    mov         eax,dword ptr [ebp-1C]
 004D92BD    call        0042F030
 004D92C2    lea         eax,[ebp-3C]
 004D92C5    push        eax
 004D92C6    mov         al,byte ptr [ebp-15]
 004D92C9    push        eax
 004D92CA    mov         eax,dword ptr [ebp+1C]
 004D92CD    mov         eax,dword ptr [eax-4]
 004D92D0    mov         ecx,dword ptr [ebp-14]
 004D92D3    mov         edx,dword ptr [ebp-10]
 004D92D6    mov         ebx,dword ptr [eax]
 004D92D8    call        dword ptr [ebx+0D8]
 004D92DE    mov         eax,dword ptr [ebp+1C]
 004D92E1    mov         eax,dword ptr [eax-4]
 004D92E4    cmp         byte ptr [eax+28C],0
>004D92EB    je          004D93AA
 004D92F1    test        byte ptr [ebp-15],4
>004D92F5    je          004D93AA
 004D92FB    mov         eax,dword ptr [ebp+1C]
 004D92FE    mov         eax,dword ptr [eax-4]
 004D9301    cmp         byte ptr [eax+1A5],0
>004D9308    je          004D93AA
 004D930E    mov         eax,dword ptr [ebp+1C]
 004D9311    mov         eax,dword ptr [eax-84]
 004D9317    mov         edx,dword ptr [ebp+1C]
 004D931A    or          eax,dword ptr [edx-88]
>004D9320    je          004D93AA
 004D9326    lea         esi,[ebp-3C]
 004D9329    lea         edi,[ebp-4C]
 004D932C    movs        dword ptr [edi],dword ptr [esi]
 004D932D    movs        dword ptr [edi],dword ptr [esi]
 004D932E    movs        dword ptr [edi],dword ptr [esi]
 004D932F    movs        dword ptr [edi],dword ptr [esi]
 004D9330    mov         eax,dword ptr [ebp+1C]
 004D9333    test        byte ptr [eax-84],4
>004D933A    jne         004D9347
 004D933C    mov         eax,dword ptr [ebp+1C]
 004D933F    mov         eax,dword ptr [eax-70]
 004D9342    add         dword ptr [ebp-44],eax
>004D9345    jmp         004D935C
 004D9347    mov         eax,dword ptr [ebp+1C]
 004D934A    test        byte ptr [eax-84],8
>004D9351    jne         004D935C
 004D9353    mov         eax,dword ptr [ebp+1C]
 004D9356    mov         eax,dword ptr [eax-40]
 004D9359    add         dword ptr [ebp-40],eax
 004D935C    mov         eax,dword ptr [ebp+1C]
 004D935F    mov         eax,dword ptr [eax-84]
 004D9365    push        eax
 004D9366    push        4
 004D9368    lea         eax,[ebp-4C]
 004D936B    push        eax
 004D936C    mov         eax,dword ptr [ebp+1C]
 004D936F    mov         eax,dword ptr [eax-4]
 004D9372    mov         eax,dword ptr [eax+208]
 004D9378    call        0042F6A0
 004D937D    push        eax
 004D937E    call        user32.DrawEdge
 004D9383    mov         eax,dword ptr [ebp+1C]
 004D9386    mov         eax,dword ptr [eax-88]
 004D938C    push        eax
 004D938D    push        4
 004D938F    lea         eax,[ebp-4C]
 004D9392    push        eax
 004D9393    mov         eax,dword ptr [ebp+1C]
 004D9396    mov         eax,dword ptr [eax-4]
 004D9399    mov         eax,dword ptr [eax+208]
 004D939F    call        0042F6A0
 004D93A4    push        eax
 004D93A5    call        user32.DrawEdge
 004D93AA    mov         eax,dword ptr [ebp+1C]
 004D93AD    mov         eax,dword ptr [eax-4]
 004D93B0    cmp         byte ptr [eax+28C],0
>004D93B7    je          004D9467
 004D93BD    mov         eax,dword ptr [ebp+1C]
 004D93C0    mov         eax,dword ptr [eax-4]
 004D93C3    test        byte ptr [eax+1C],10
>004D93C7    jne         004D9467
 004D93CD    test        byte ptr [ebp-15],2
>004D93D1    je          004D9467
 004D93D7    mov         eax,dword ptr [ebp+1C]
 004D93DA    mov         eax,dword ptr [eax-4]
 004D93DD    mov         ax,word ptr [eax+248]
 004D93E4    and         ax,word ptr ds:[4D94D0];0x2400 gvar_004D94D0
 004D93EB    mov         dx,word ptr ds:[4D94D0];0x2400 gvar_004D94D0
 004D93F2    cmp         dx,ax
>004D93F5    je          004D9467
 004D93F7    mov         eax,dword ptr [ebp+1C]
 004D93FA    mov         eax,dword ptr [eax-4]
 004D93FD    test        byte ptr [eax+249],10
>004D9404    jne         004D9467
 004D9406    mov         eax,dword ptr [ebp+1C]
 004D9409    mov         eax,dword ptr [eax-4]
 004D940C    mov         si,0FFC8
 004D9410    call        @CallDynaInst
 004D9415    test        al,al
>004D9417    jne         004D9436
 004D9419    lea         eax,[ebp-3C]
 004D941C    push        eax
 004D941D    mov         eax,dword ptr [ebp+1C]
 004D9420    mov         eax,dword ptr [eax-4]
 004D9423    mov         eax,dword ptr [eax+208]
 004D9429    call        0042F6A0
 004D942E    push        eax
 004D942F    call        user32.DrawFocusRect
>004D9434    jmp         004D9467
 004D9436    lea         esi,[ebp-3C]
 004D9439    lea         edi,[ebp-2C]
 004D943C    movs        dword ptr [edi],dword ptr [esi]
 004D943D    movs        dword ptr [edi],dword ptr [esi]
 004D943E    movs        dword ptr [edi],dword ptr [esi]
 004D943F    movs        dword ptr [edi],dword ptr [esi]
 004D9440    mov         eax,dword ptr [ebp-34]
 004D9443    mov         dword ptr [ebp-2C],eax
 004D9446    mov         eax,dword ptr [ebp-3C]
 004D9449    mov         dword ptr [ebp-24],eax
 004D944C    lea         eax,[ebp-2C]
 004D944F    push        eax
 004D9450    mov         eax,dword ptr [ebp+1C]
 004D9453    mov         eax,dword ptr [eax-4]
 004D9456    mov         eax,dword ptr [eax+208]
 004D945C    call        0042F6A0
 004D9461    push        eax
 004D9462    call        user32.DrawFocusRect
 004D9467    mov         eax,dword ptr [ebp+1C]
 004D946A    mov         eax,dword ptr [eax-70]
 004D946D    add         eax,dword ptr [ebp-34]
 004D9470    mov         dword ptr [ebp-3C],eax
 004D9473    inc         dword ptr [ebp-10]
 004D9476    mov         eax,dword ptr [ebp-3C]
 004D9479    cmp         eax,dword ptr [ebp+14]
>004D947C    jge         004D9493
 004D947E    mov         eax,dword ptr [ebp+1C]
 004D9481    mov         eax,dword ptr [eax-4]
 004D9484    mov         eax,dword ptr [eax+21C]
 004D948A    cmp         eax,dword ptr [ebp-10]
>004D948D    jg          004D914C
 004D9493    mov         eax,dword ptr [ebp+1C]
 004D9496    mov         eax,dword ptr [eax-40]
 004D9499    add         eax,dword ptr [ebp-30]
 004D949C    mov         dword ptr [ebp-38],eax
 004D949F    inc         dword ptr [ebp-14]
 004D94A2    mov         eax,dword ptr [ebp-38]
 004D94A5    cmp         eax,dword ptr [ebp+10]
>004D94A8    jge         004D94BF
 004D94AA    mov         eax,dword ptr [ebp+1C]
 004D94AD    mov         eax,dword ptr [eax-4]
 004D94B0    mov         eax,dword ptr [eax+24C]
 004D94B6    cmp         eax,dword ptr [ebp-14]
>004D94B9    jg          004D9127
 004D94BF    pop         edi
 004D94C0    pop         esi
 004D94C1    pop         ebx
 004D94C2    mov         esp,ebp
 004D94C4    pop         ebp
 004D94C5    ret         14
end;*}

//004D94D4
procedure sub_004D94D4;
begin
{*
 004D94D4    push        ebp
 004D94D5    mov         ebp,esp
 004D94D7    add         esp,0FFFFFF34
 004D94DD    push        esi
 004D94DE    push        edi
 004D94DF    mov         dword ptr [ebp-4],eax
 004D94E2    mov         eax,dword ptr [ebp-4]
 004D94E5    mov         si,0FFC8
 004D94E9    call        @CallDynaInst;TControl.sub_0048415C
 004D94EE    test        al,al
>004D94F0    je          004D94FC
 004D94F2    mov         dl,1
 004D94F4    mov         eax,dword ptr [ebp-4]
 004D94F7    call        004DA1E0
 004D94FC    lea         edx,[ebp-9C]
 004D9502    mov         eax,dword ptr [ebp-4]
 004D9505    mov         eax,dword ptr [eax+208];TCustomGrid........................................................
 004D950B    call        0042F66C
 004D9510    lea         edx,[ebp-70]
 004D9513    mov         eax,dword ptr [ebp-4]
 004D9516    call        TCustomGrid.CalcDrawInfo
 004D951B    cmp         dword ptr [ebp-70],0
>004D951F    jg          004D952B
 004D9521    cmp         dword ptr [ebp-40],0
>004D9525    jle         004D975B
 004D952B    mov         dword ptr [ebp-8C],0C0C0C0
 004D9535    mov         eax,dword ptr [ebp-4]
 004D9538    mov         edx,dword ptr [ebp-30]
 004D953B    sub         edx,dword ptr [eax+25C]
 004D9541    mov         eax,dword ptr [ebp-4]
 004D9544    add         edx,dword ptr [eax+23C];TCustomGrid.FFixedRows:Integer
 004D954A    mov         eax,dword ptr [ebp-4]
 004D954D    push        dword ptr [eax+258]
 004D9553    mov         eax,dword ptr [ebp-60]
 004D9556    pop         ecx
 004D9557    sub         eax,ecx
 004D9559    mov         ecx,dword ptr [ebp-4]
 004D955C    add         eax,dword ptr [ecx+238]
 004D9562    call        00437470
 004D9567    add         eax,3
 004D956A    mov         dword ptr [ebp-0C],eax
 004D956D    mov         eax,dword ptr [ebp-0C]
 004D9570    shl         eax,3
 004D9573    add         eax,eax
 004D9575    call        StackAlloc
 004D957A    mov         dword ptr [ebp-8],eax
 004D957D    mov         eax,dword ptr [ebp-0C]
 004D9580    shl         eax,2
 004D9583    call        StackAlloc
 004D9588    mov         dword ptr [ebp-10],eax
 004D958B    mov         eax,dword ptr [ebp-10]
 004D958E    mov         ecx,2
 004D9593    mov         edx,dword ptr [ebp-0C]
 004D9596    call        FillDWord
 004D959B    mov         eax,dword ptr [ebp-4]
 004D959E    mov         eax,dword ptr [eax+70];TCustomGrid.FColor:TColor
 004D95A1    call        ColorToRGB
 004D95A6    cmp         eax,0C0C0C0
>004D95AB    jne         004D95B7
 004D95AD    mov         dword ptr [ebp-8C],808080
 004D95B7    push        ebp
 004D95B8    push        0
 004D95BA    xor         eax,eax
 004D95BC    mov         dword ptr [ebp-0CC],eax
 004D95C2    xor         eax,eax
 004D95C4    mov         dword ptr [ebp-0C8],eax
 004D95CA    mov         eax,dword ptr [ebp-6C]
 004D95CD    mov         dword ptr [ebp-0C4],eax
 004D95D3    mov         eax,dword ptr [ebp-3C]
 004D95D6    mov         dword ptr [ebp-0C0],eax
 004D95DC    lea         eax,[ebp-0CC]
 004D95E2    push        eax
 004D95E3    push        3
 004D95E5    push        0
 004D95E7    mov         eax,dword ptr [ebp-4]
 004D95EA    mov         eax,dword ptr [eax+240];TCustomGrid.FFixedColor:TColor
 004D95F0    push        eax
 004D95F1    mov         eax,dword ptr [ebp-4]
 004D95F4    test        byte ptr [eax+248],1;TCustomGrid.FOptions:TGridOptions
 004D95FB    setne       dl
 004D95FE    mov         eax,dword ptr [ebp-4]
 004D9601    test        byte ptr [eax+248],2;TCustomGrid.FOptions:TGridOptions
 004D9608    setne       al
 004D960B    xor         ecx,ecx
 004D960D    call        004D906C
 004D9612    pop         ecx
 004D9613    push        ebp
 004D9614    push        0
 004D9616    mov         eax,dword ptr [ebp-6C]
 004D9619    mov         dword ptr [ebp-0CC],eax
 004D961F    xor         eax,eax
 004D9621    mov         dword ptr [ebp-0C8],eax
 004D9627    mov         eax,dword ptr [ebp-68]
 004D962A    mov         dword ptr [ebp-0C4],eax
 004D9630    mov         eax,dword ptr [ebp-3C]
 004D9633    mov         dword ptr [ebp-0C0],eax
 004D9639    lea         eax,[ebp-0CC]
 004D963F    push        eax
 004D9640    push        3
 004D9642    push        0
 004D9644    mov         eax,dword ptr [ebp-4]
 004D9647    mov         eax,dword ptr [eax+240];TCustomGrid.FFixedColor:TColor
 004D964D    push        eax
 004D964E    mov         eax,dword ptr [ebp-4]
 004D9651    test        byte ptr [eax+248],1;TCustomGrid.FOptions:TGridOptions
 004D9658    setne       dl
 004D965B    mov         eax,dword ptr [ebp-4]
 004D965E    test        byte ptr [eax+248],2;TCustomGrid.FOptions:TGridOptions
 004D9665    setne       al
 004D9668    mov         ecx,dword ptr [ebp-4]
 004D966B    mov         ecx,dword ptr [ecx+258]
 004D9671    call        004D906C
 004D9676    pop         ecx
 004D9677    push        ebp
 004D9678    mov         eax,dword ptr [ebp-4]
 004D967B    mov         eax,dword ptr [eax+25C];TCustomGrid.FTopLeft:Longint
 004D9681    push        eax
 004D9682    xor         eax,eax
 004D9684    mov         dword ptr [ebp-0CC],eax
 004D968A    mov         eax,dword ptr [ebp-3C]
 004D968D    mov         dword ptr [ebp-0C8],eax
 004D9693    mov         eax,dword ptr [ebp-6C]
 004D9696    mov         dword ptr [ebp-0C4],eax
 004D969C    mov         eax,dword ptr [ebp-38]
 004D969F    mov         dword ptr [ebp-0C0],eax
 004D96A5    lea         eax,[ebp-0CC]
 004D96AB    push        eax
 004D96AC    push        3
 004D96AE    push        0
 004D96B0    mov         eax,dword ptr [ebp-4]
 004D96B3    mov         eax,dword ptr [eax+240];TCustomGrid.FFixedColor:TColor
 004D96B9    push        eax
 004D96BA    mov         eax,dword ptr [ebp-4]
 004D96BD    test        byte ptr [eax+248],1;TCustomGrid.FOptions:TGridOptions
 004D96C4    setne       dl
 004D96C7    mov         eax,dword ptr [ebp-4]
 004D96CA    test        byte ptr [eax+248],2;TCustomGrid.FOptions:TGridOptions
 004D96D1    setne       al
 004D96D4    xor         ecx,ecx
 004D96D6    call        004D906C
 004D96DB    pop         ecx
 004D96DC    push        ebp
 004D96DD    mov         eax,dword ptr [ebp-4]
 004D96E0    mov         eax,dword ptr [eax+25C];TCustomGrid.FTopLeft:Longint
 004D96E6    push        eax
 004D96E7    mov         eax,dword ptr [ebp-6C]
 004D96EA    mov         dword ptr [ebp-0CC],eax
 004D96F0    mov         eax,dword ptr [ebp-3C]
 004D96F3    mov         dword ptr [ebp-0C8],eax
 004D96F9    mov         eax,dword ptr [ebp-68]
 004D96FC    mov         dword ptr [ebp-0C4],eax
 004D9702    mov         eax,dword ptr [ebp-38]
 004D9705    mov         dword ptr [ebp-0C0],eax
 004D970B    lea         eax,[ebp-0CC]
 004D9711    push        eax
 004D9712    push        3
 004D9714    mov         eax,dword ptr [ebp-8C]
 004D971A    push        eax
 004D971B    mov         eax,dword ptr [ebp-4]
 004D971E    mov         eax,dword ptr [eax+70];TCustomGrid.FColor:TColor
 004D9721    push        eax
 004D9722    mov         eax,dword ptr [ebp-4]
 004D9725    test        byte ptr [eax+248],4;TCustomGrid.FOptions:TGridOptions
 004D972C    setne       dl
 004D972F    mov         eax,dword ptr [ebp-4]
 004D9732    test        byte ptr [eax+248],8;TCustomGrid.FOptions:TGridOptions
 004D9739    setne       al
 004D973C    mov         ecx,dword ptr [ebp-4]
 004D973F    mov         ecx,dword ptr [ecx+258]
 004D9745    call        004D906C
 004D974A    pop         ecx
 004D974B    mov         eax,dword ptr [ebp-10]
 004D974E    call        StackFree
 004D9753    mov         eax,dword ptr [ebp-8]
 004D9756    call        StackFree
 004D975B    lea         edx,[ebp-80]
 004D975E    mov         eax,dword ptr [ebp-4]
 004D9761    call        004DD4AC
 004D9766    xor         eax,eax
 004D9768    mov         dword ptr [ebp-84],eax
 004D976E    xor         eax,eax
 004D9770    mov         dword ptr [ebp-88],eax
 004D9776    mov         eax,dword ptr [ebp-4]
 004D9779    test        byte ptr [eax+248],1;TCustomGrid.FOptions:TGridOptions
>004D9780    je          004D9796
 004D9782    mov         dword ptr [ebp-84],4
 004D978C    mov         dword ptr [ebp-88],1
 004D9796    mov         eax,dword ptr [ebp-4]
 004D9799    test        byte ptr [eax+248],2;TCustomGrid.FOptions:TGridOptions
>004D97A0    je          004D97B0
 004D97A2    or          dword ptr [ebp-84],8
 004D97A9    or          dword ptr [ebp-88],2
 004D97B0    push        ebp
 004D97B1    push        0
 004D97B3    mov         eax,dword ptr [ebp-6C]
 004D97B6    push        eax
 004D97B7    mov         eax,dword ptr [ebp-3C]
 004D97BA    push        eax
 004D97BB    mov         eax,dword ptr [ebp-4]
 004D97BE    mov         eax,dword ptr [eax+240];TCustomGrid.FFixedColor:TColor
 004D97C4    push        eax
 004D97C5    mov         al,[004D9A04];0x4 gvar_004D9A04
 004D97CA    push        eax
 004D97CB    xor         ecx,ecx
 004D97CD    xor         edx,edx
 004D97CF    xor         eax,eax
 004D97D1    call        004D9104
 004D97D6    pop         ecx
 004D97D7    push        ebp
 004D97D8    push        0
 004D97DA    mov         eax,dword ptr [ebp-68]
 004D97DD    push        eax
 004D97DE    mov         eax,dword ptr [ebp-3C]
 004D97E1    push        eax
 004D97E2    mov         eax,dword ptr [ebp-4]
 004D97E5    mov         eax,dword ptr [eax+240];TCustomGrid.FFixedColor:TColor
 004D97EB    push        eax
 004D97EC    mov         al,[004D9A04];0x4 gvar_004D9A04
 004D97F1    push        eax
 004D97F2    mov         eax,dword ptr [ebp-4]
 004D97F5    mov         ecx,dword ptr [ebp-6C]
 004D97F8    sub         ecx,dword ptr [eax+288]
 004D97FE    mov         eax,dword ptr [ebp-4]
 004D9801    mov         eax,dword ptr [eax+258];TCustomGrid.FTopLeft:TGridCoord
 004D9807    xor         edx,edx
 004D9809    call        004D9104
 004D980E    pop         ecx
 004D980F    push        ebp
 004D9810    mov         eax,dword ptr [ebp-3C]
 004D9813    push        eax
 004D9814    mov         eax,dword ptr [ebp-6C]
 004D9817    push        eax
 004D9818    mov         eax,dword ptr [ebp-38]
 004D981B    push        eax
 004D981C    mov         eax,dword ptr [ebp-4]
 004D981F    mov         eax,dword ptr [eax+240];TCustomGrid.FFixedColor:TColor
 004D9825    push        eax
 004D9826    mov         al,[004D9A04];0x4 gvar_004D9A04
 004D982B    push        eax
 004D982C    mov         eax,dword ptr [ebp-4]
 004D982F    mov         edx,dword ptr [eax+25C];TCustomGrid.FTopLeft:Longint
 004D9835    xor         ecx,ecx
 004D9837    xor         eax,eax
 004D9839    call        004D9104
 004D983E    pop         ecx
 004D983F    push        ebp
 004D9840    mov         eax,dword ptr [ebp-3C]
 004D9843    push        eax
 004D9844    mov         eax,dword ptr [ebp-68]
 004D9847    push        eax
 004D9848    mov         eax,dword ptr [ebp-38]
 004D984B    push        eax
 004D984C    mov         eax,dword ptr [ebp-4]
 004D984F    mov         eax,dword ptr [eax+70];TCustomGrid.FColor:TColor
 004D9852    push        eax
 004D9853    mov         al,[004D9A08];0x0 gvar_004D9A08
 004D9858    push        eax
 004D9859    mov         eax,dword ptr [ebp-4]
 004D985C    mov         ecx,dword ptr [ebp-6C]
 004D985F    sub         ecx,dword ptr [eax+288]
 004D9865    mov         eax,dword ptr [ebp-4]
 004D9868    mov         edx,dword ptr [eax+25C];TCustomGrid.FTopLeft:Longint
 004D986E    mov         eax,dword ptr [ebp-4]
 004D9871    mov         eax,dword ptr [eax+258];TCustomGrid.FTopLeft:TGridCoord
 004D9877    call        004D9104
 004D987C    pop         ecx
 004D987D    mov         eax,dword ptr [ebp-4]
 004D9880    test        byte ptr [eax+1C],10;TCustomGrid.FComponentState:TComponentState
>004D9884    jne         004D994B
 004D988A    mov         eax,dword ptr [ebp-4]
 004D988D    test        byte ptr [eax+249],10;TCustomGrid.?f249:byte
>004D9894    je          004D994B
 004D989A    mov         eax,dword ptr [ebp-4]
 004D989D    cmp         byte ptr [eax+28C],0;TCustomGrid.FDefaultDrawing:Boolean
>004D98A4    je          004D994B
 004D98AA    mov         eax,dword ptr [ebp-4]
 004D98AD    mov         si,0FFB5
 004D98B1    call        @CallDynaInst;TWinControl.sub_0048C078
 004D98B6    test        al,al
>004D98B8    je          004D994B
 004D98BE    push        0
 004D98C0    lea         edx,[ebp-0CC]
 004D98C6    mov         eax,dword ptr [ebp-4]
 004D98C9    call        004DD4AC
 004D98CE    lea         edx,[ebp-0CC]
 004D98D4    lea         ecx,[ebp-0BC]
 004D98DA    mov         eax,dword ptr [ebp-4]
 004D98DD    call        004DAD08
 004D98E2    mov         eax,dword ptr [ebp-4]
 004D98E5    mov         si,0FFC8
 004D98E9    call        @CallDynaInst;TControl.sub_0048415C
 004D98EE    test        al,al
>004D98F0    jne         004D9908
 004D98F2    lea         edx,[ebp-0BC]
 004D98F8    mov         eax,dword ptr [ebp-4]
 004D98FB    mov         eax,dword ptr [eax+208];TCustomGrid........................................................
 004D9901    call        0042EFEC
>004D9906    jmp         004D994B
 004D9908    lea         esi,[ebp-0BC]
 004D990E    lea         edi,[ebp-0AC]
 004D9914    movs        dword ptr [edi],dword ptr [esi]
 004D9915    movs        dword ptr [edi],dword ptr [esi]
 004D9916    movs        dword ptr [edi],dword ptr [esi]
 004D9917    movs        dword ptr [edi],dword ptr [esi]
 004D9918    mov         eax,dword ptr [ebp-0B4]
 004D991E    mov         dword ptr [ebp-0AC],eax
 004D9924    mov         eax,dword ptr [ebp-0BC]
 004D992A    mov         dword ptr [ebp-0A4],eax
 004D9930    lea         eax,[ebp-0AC]
 004D9936    push        eax
 004D9937    mov         eax,dword ptr [ebp-4]
 004D993A    mov         eax,dword ptr [eax+208];TCustomGrid........................................................
 004D9940    call        0042F6A0
 004D9945    push        eax
 004D9946    call        user32.DrawFocusRect
 004D994B    mov         eax,dword ptr [ebp-68]
 004D994E    cmp         eax,dword ptr [ebp-64]
>004D9951    jge         004D9996
 004D9953    mov         eax,dword ptr [ebp-4]
 004D9956    mov         edx,dword ptr [eax+70];TCustomGrid.FColor:TColor
 004D9959    mov         eax,dword ptr [ebp-4]
 004D995C    mov         eax,dword ptr [eax+208];TCustomGrid........................................................
 004D9962    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 004D9965    call        TBrush.SetColor
 004D996A    mov         eax,dword ptr [ebp-38]
 004D996D    push        eax
 004D996E    lea         eax,[ebp-0CC]
 004D9974    push        eax
 004D9975    mov         ecx,dword ptr [ebp-64]
 004D9978    xor         edx,edx
 004D997A    mov         eax,dword ptr [ebp-68]
 004D997D    call        0041E714
 004D9982    lea         edx,[ebp-0CC]
 004D9988    mov         eax,dword ptr [ebp-4]
 004D998B    mov         eax,dword ptr [eax+208];TCustomGrid........................................................
 004D9991    call        0042F030
 004D9996    mov         eax,dword ptr [ebp-38]
 004D9999    cmp         eax,dword ptr [ebp-34]
>004D999C    jge         004D99E1
 004D999E    mov         eax,dword ptr [ebp-4]
 004D99A1    mov         edx,dword ptr [eax+70];TCustomGrid.FColor:TColor
 004D99A4    mov         eax,dword ptr [ebp-4]
 004D99A7    mov         eax,dword ptr [eax+208];TCustomGrid........................................................
 004D99AD    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 004D99B0    call        TBrush.SetColor
 004D99B5    mov         eax,dword ptr [ebp-34]
 004D99B8    push        eax
 004D99B9    lea         eax,[ebp-0CC]
 004D99BF    push        eax
 004D99C0    mov         ecx,dword ptr [ebp-64]
 004D99C3    mov         edx,dword ptr [ebp-38]
 004D99C6    xor         eax,eax
 004D99C8    call        0041E714
 004D99CD    lea         edx,[ebp-0CC]
 004D99D3    mov         eax,dword ptr [ebp-4]
 004D99D6    mov         eax,dword ptr [eax+208];TCustomGrid........................................................
 004D99DC    call        0042F030
 004D99E1    mov         eax,dword ptr [ebp-4]
 004D99E4    mov         si,0FFC8
 004D99E8    call        @CallDynaInst;TControl.sub_0048415C
 004D99ED    test        al,al
>004D99EF    je          004D99FB
 004D99F1    xor         edx,edx
 004D99F3    mov         eax,dword ptr [ebp-4]
 004D99F6    call        004DA1E0
 004D99FB    pop         edi
 004D99FC    pop         esi
 004D99FD    mov         esp,ebp
 004D99FF    pop         ebp
 004D9A00    ret
*}
end;

//004D9A0C
{*function sub_004D9A0C(?:?; ?:?):?;
begin
 004D9A0C    push        ebp
 004D9A0D    mov         ebp,esp
 004D9A0F    add         esp,0FFFFFFE0
 004D9A12    push        ebx
 004D9A13    mov         dword ptr [ebp-8],edx
 004D9A16    mov         dword ptr [ebp-4],eax
 004D9A19    mov         eax,dword ptr [ebp-4]
 004D9A1C    mov         eax,dword ptr [eax+4]
 004D9A1F    cmp         eax,dword ptr [ebp-8]
>004D9A22    jle         004D9A3A
 004D9A24    xor         eax,eax
 004D9A26    mov         dword ptr [ebp-14],eax
 004D9A29    mov         eax,dword ptr [ebp-4]
 004D9A2C    mov         eax,dword ptr [eax+18]
 004D9A2F    dec         eax
 004D9A30    mov         dword ptr [ebp-18],eax
 004D9A33    xor         eax,eax
 004D9A35    mov         dword ptr [ebp-1C],eax
>004D9A38    jmp         004D9A56
 004D9A3A    mov         eax,dword ptr [ebp-4]
 004D9A3D    mov         eax,dword ptr [eax+1C]
 004D9A40    mov         dword ptr [ebp-14],eax
 004D9A43    mov         eax,dword ptr [ebp-4]
 004D9A46    mov         eax,dword ptr [eax+20]
 004D9A49    dec         eax
 004D9A4A    mov         dword ptr [ebp-18],eax
 004D9A4D    mov         eax,dword ptr [ebp-4]
 004D9A50    mov         eax,dword ptr [eax+4]
 004D9A53    mov         dword ptr [ebp-1C],eax
 004D9A56    mov         dword ptr [ebp-0C],0FFFFFFFF
 004D9A5D    mov         eax,dword ptr [ebp-14]
 004D9A60    mov         edx,dword ptr [ebp-18]
 004D9A63    sub         edx,eax
>004D9A65    jl          004D9A9A
 004D9A67    inc         edx
 004D9A68    mov         dword ptr [ebp-20],edx
 004D9A6B    mov         dword ptr [ebp-10],eax
 004D9A6E    mov         ebx,dword ptr [ebp-4]
 004D9A71    mov         edx,dword ptr [ebp-10]
 004D9A74    mov         eax,dword ptr [ebx+2C]
 004D9A77    call        dword ptr [ebx+28]
 004D9A7A    mov         edx,dword ptr [ebp-4]
 004D9A7D    add         eax,dword ptr [edx]
 004D9A7F    add         dword ptr [ebp-1C],eax
 004D9A82    mov         eax,dword ptr [ebp-8]
 004D9A85    cmp         eax,dword ptr [ebp-1C]
>004D9A88    jge         004D9A92
 004D9A8A    mov         eax,dword ptr [ebp-10]
 004D9A8D    mov         dword ptr [ebp-0C],eax
>004D9A90    jmp         004D9A9A
 004D9A92    inc         dword ptr [ebp-10]
 004D9A95    dec         dword ptr [ebp-20]
>004D9A98    jne         004D9A6E
 004D9A9A    mov         eax,dword ptr [ebp-0C]
 004D9A9D    pop         ebx
 004D9A9E    mov         esp,ebp
 004D9AA0    pop         ebp
 004D9AA1    ret
end;*}

//004D9AA4
{*function sub_004D9AA4(?:?; ?:?; ?:?):?;
begin
 004D9AA4    push        ebp
 004D9AA5    mov         ebp,esp
 004D9AA7    add         esp,0FFFFFFE0
 004D9AAA    push        ebx
 004D9AAB    mov         dword ptr [ebp-8],edx
 004D9AAE    mov         dword ptr [ebp-4],eax
 004D9AB1    mov         eax,dword ptr [ebp+8]
 004D9AB4    mov         eax,dword ptr [eax-4]
 004D9AB7    call        TControl.GetClientWidth
 004D9ABC    sub         eax,dword ptr [ebp-8]
 004D9ABF    mov         dword ptr [ebp-8],eax
 004D9AC2    mov         eax,dword ptr [ebp-4]
 004D9AC5    mov         eax,dword ptr [eax+4]
 004D9AC8    cmp         eax,dword ptr [ebp-8]
>004D9ACB    jle         004D9AEC
 004D9ACD    xor         eax,eax
 004D9ACF    mov         dword ptr [ebp-14],eax
 004D9AD2    mov         eax,dword ptr [ebp-4]
 004D9AD5    mov         eax,dword ptr [eax+18]
 004D9AD8    dec         eax
 004D9AD9    mov         dword ptr [ebp-18],eax
 004D9ADC    mov         eax,dword ptr [ebp+8]
 004D9ADF    mov         eax,dword ptr [eax-4]
 004D9AE2    call        TControl.GetClientWidth
 004D9AE7    mov         dword ptr [ebp-1C],eax
>004D9AEA    jmp         004D9B08
 004D9AEC    mov         eax,dword ptr [ebp-4]
 004D9AEF    mov         eax,dword ptr [eax+1C]
 004D9AF2    mov         dword ptr [ebp-14],eax
 004D9AF5    mov         eax,dword ptr [ebp-4]
 004D9AF8    mov         eax,dword ptr [eax+20]
 004D9AFB    dec         eax
 004D9AFC    mov         dword ptr [ebp-18],eax
 004D9AFF    mov         eax,dword ptr [ebp-4]
 004D9B02    mov         eax,dword ptr [eax+4]
 004D9B05    mov         dword ptr [ebp-1C],eax
 004D9B08    mov         dword ptr [ebp-0C],0FFFFFFFF
 004D9B0F    mov         eax,dword ptr [ebp-14]
 004D9B12    mov         edx,dword ptr [ebp-18]
 004D9B15    sub         edx,eax
>004D9B17    jl          004D9B4C
 004D9B19    inc         edx
 004D9B1A    mov         dword ptr [ebp-20],edx
 004D9B1D    mov         dword ptr [ebp-10],eax
 004D9B20    mov         ebx,dword ptr [ebp-4]
 004D9B23    mov         edx,dword ptr [ebp-10]
 004D9B26    mov         eax,dword ptr [ebx+2C]
 004D9B29    call        dword ptr [ebx+28]
 004D9B2C    mov         edx,dword ptr [ebp-4]
 004D9B2F    add         eax,dword ptr [edx]
 004D9B31    add         dword ptr [ebp-1C],eax
 004D9B34    mov         eax,dword ptr [ebp-8]
 004D9B37    cmp         eax,dword ptr [ebp-1C]
>004D9B3A    jge         004D9B44
 004D9B3C    mov         eax,dword ptr [ebp-10]
 004D9B3F    mov         dword ptr [ebp-0C],eax
>004D9B42    jmp         004D9B4C
 004D9B44    inc         dword ptr [ebp-10]
 004D9B47    dec         dword ptr [ebp-20]
>004D9B4A    jne         004D9B20
 004D9B4C    mov         eax,dword ptr [ebp-0C]
 004D9B4F    pop         ebx
 004D9B50    mov         esp,ebp
 004D9B52    pop         ebp
 004D9B53    ret
end;*}

//004D9B54
{*procedure sub_004D9B54(?:TCustomGrid; ?:TPoint; ?:?; ?:?; ?:?);
begin
 004D9B54    push        ebp
 004D9B55    mov         ebp,esp
 004D9B57    add         esp,0FFFFFFF4
 004D9B5A    push        esi
 004D9B5B    mov         dword ptr [ebp-0C],ecx
 004D9B5E    mov         dword ptr [ebp-8],edx
 004D9B61    mov         dword ptr [ebp-4],eax
 004D9B64    mov         eax,dword ptr [ebp-4]
 004D9B67    mov         si,0FFC8
 004D9B6B    call        @CallDynaInst
 004D9B70    test        al,al
>004D9B72    jne         004D9B88
 004D9B74    push        ebp
 004D9B75    mov         eax,dword ptr [ebp+0C]
 004D9B78    mov         edx,dword ptr [ebp-8]
 004D9B7B    call        004D9A0C
 004D9B80    pop         ecx
 004D9B81    mov         edx,dword ptr [ebp+8]
 004D9B84    mov         dword ptr [edx],eax
>004D9B86    jmp         004D9B9A
 004D9B88    push        ebp
 004D9B89    mov         eax,dword ptr [ebp+0C]
 004D9B8C    mov         edx,dword ptr [ebp-8]
 004D9B8F    call        004D9AA4
 004D9B94    pop         ecx
 004D9B95    mov         edx,dword ptr [ebp+8]
 004D9B98    mov         dword ptr [edx],eax
 004D9B9A    push        ebp
 004D9B9B    mov         eax,dword ptr [ebp+0C]
 004D9B9E    add         eax,30
 004D9BA1    mov         edx,dword ptr [ebp-0C]
 004D9BA4    call        004D9A0C
 004D9BA9    pop         ecx
 004D9BAA    mov         edx,dword ptr [ebp+8]
 004D9BAD    mov         dword ptr [edx+4],eax
 004D9BB0    pop         esi
 004D9BB1    mov         esp,ebp
 004D9BB3    pop         ebp
 004D9BB4    ret         8
end;*}

//004D9BB8
procedure TCustomGrid.CalcDrawInfo(var DrawInfo:TGridDrawInfo);
begin
{*
 004D9BB8    push        ebp
 004D9BB9    mov         ebp,esp
 004D9BBB    add         esp,0FFFFFFF8
 004D9BBE    mov         dword ptr [ebp-8],edx
 004D9BC1    mov         dword ptr [ebp-4],eax
 004D9BC4    mov         eax,dword ptr [ebp-4]
 004D9BC7    call        TControl.GetClientHeight
 004D9BCC    push        eax
 004D9BCD    mov         eax,dword ptr [ebp-4]
 004D9BD0    call        TControl.GetClientWidth
 004D9BD5    mov         ecx,eax
 004D9BD7    mov         edx,dword ptr [ebp-8]
 004D9BDA    mov         eax,dword ptr [ebp-4]
 004D9BDD    call        TCustomGrid.CalcDrawInfoXY
 004D9BE2    pop         ecx
 004D9BE3    pop         ecx
 004D9BE4    pop         ebp
 004D9BE5    ret
*}
end;

//004D9BE8
{*procedure sub_004D9BE8(?:?; ?:?);
begin
 004D9BE8    push        ebp
 004D9BE9    mov         ebp,esp
 004D9BEB    add         esp,0FFFFFFF0
 004D9BEE    push        ebx
 004D9BEF    mov         dword ptr [ebp-8],edx
 004D9BF2    mov         dword ptr [ebp-4],eax
 004D9BF5    mov         eax,dword ptr [ebp-4]
 004D9BF8    mov         edx,dword ptr [ebp-8]
 004D9BFB    mov         dword ptr [eax+0C],edx
 004D9BFE    mov         eax,dword ptr [ebp-4]
 004D9C01    mov         eax,dword ptr [eax+4]
 004D9C04    mov         edx,dword ptr [ebp-4]
 004D9C07    mov         dword ptr [edx+8],eax
 004D9C0A    mov         eax,dword ptr [ebp-4]
 004D9C0D    mov         eax,dword ptr [eax+4]
 004D9C10    mov         edx,dword ptr [ebp-4]
 004D9C13    mov         dword ptr [edx+14],eax
 004D9C16    mov         eax,dword ptr [ebp-4]
 004D9C19    mov         eax,dword ptr [eax+1C]
 004D9C1C    mov         edx,dword ptr [ebp-4]
 004D9C1F    mov         dword ptr [edx+10],eax
 004D9C22    mov         eax,dword ptr [ebp-4]
 004D9C25    mov         eax,dword ptr [eax+1C]
 004D9C28    mov         edx,dword ptr [ebp-4]
 004D9C2B    mov         edx,dword ptr [edx+20]
 004D9C2E    dec         edx
 004D9C2F    sub         edx,eax
>004D9C31    jl          004D9C8F
 004D9C33    inc         edx
 004D9C34    mov         dword ptr [ebp-10],edx
 004D9C37    mov         dword ptr [ebp-0C],eax
 004D9C3A    mov         ebx,dword ptr [ebp-4]
 004D9C3D    mov         edx,dword ptr [ebp-0C]
 004D9C40    mov         eax,dword ptr [ebx+2C]
 004D9C43    call        dword ptr [ebx+28]
 004D9C46    mov         edx,dword ptr [ebp-4]
 004D9C49    add         eax,dword ptr [edx]
 004D9C4B    mov         edx,dword ptr [ebp-4]
 004D9C4E    add         dword ptr [edx+8],eax
 004D9C51    mov         eax,dword ptr [ebp-4]
 004D9C54    mov         eax,dword ptr [eax+0C]
 004D9C57    mov         edx,dword ptr [ebp-4]
 004D9C5A    add         eax,dword ptr [edx]
 004D9C5C    mov         edx,dword ptr [ebp-4]
 004D9C5F    cmp         eax,dword ptr [edx+8]
>004D9C62    jge         004D9C72
 004D9C64    mov         eax,dword ptr [ebp-4]
 004D9C67    mov         eax,dword ptr [eax+0C]
 004D9C6A    mov         edx,dword ptr [ebp-4]
 004D9C6D    mov         dword ptr [edx+8],eax
>004D9C70    jmp         004D9C8F
 004D9C72    mov         eax,dword ptr [ebp-4]
 004D9C75    mov         edx,dword ptr [ebp-0C]
 004D9C78    mov         dword ptr [eax+10],edx
 004D9C7B    mov         eax,dword ptr [ebp-4]
 004D9C7E    mov         eax,dword ptr [eax+8]
 004D9C81    mov         edx,dword ptr [ebp-4]
 004D9C84    mov         dword ptr [edx+14],eax
 004D9C87    inc         dword ptr [ebp-0C]
 004D9C8A    dec         dword ptr [ebp-10]
>004D9C8D    jne         004D9C3A
 004D9C8F    pop         ebx
 004D9C90    mov         esp,ebp
 004D9C92    pop         ebp
 004D9C93    ret
end;*}

//004D9C94
procedure TCustomGrid.CalcDrawInfoXY(var DrawInfo:TGridDrawInfo; UseWidth:Integer; UseHeight:Integer);
begin
{*
 004D9C94    push        ebp
 004D9C95    mov         ebp,esp
 004D9C97    add         esp,0FFFFFFF4
 004D9C9A    mov         dword ptr [ebp-0C],ecx
 004D9C9D    mov         dword ptr [ebp-8],edx
 004D9CA0    mov         dword ptr [ebp-4],eax
 004D9CA3    mov         edx,dword ptr [ebp-8]
 004D9CA6    mov         eax,dword ptr [ebp-4]
 004D9CA9    call        004D9D88
 004D9CAE    push        ebp
 004D9CAF    mov         eax,dword ptr [ebp-8]
 004D9CB2    mov         edx,dword ptr [ebp-0C]
 004D9CB5    call        004D9BE8
 004D9CBA    pop         ecx
 004D9CBB    push        ebp
 004D9CBC    mov         eax,dword ptr [ebp-8]
 004D9CBF    add         eax,30
 004D9CC2    mov         edx,dword ptr [ebp+8]
 004D9CC5    call        004D9BE8
 004D9CCA    pop         ecx
 004D9CCB    mov         esp,ebp
 004D9CCD    pop         ebp
 004D9CCE    ret         4
*}
end;

//004D9CD4
{*procedure sub_004D9CD4(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
begin
 004D9CD4    push        ebp
 004D9CD5    mov         ebp,esp
 004D9CD7    add         esp,0FFFFFFEC
 004D9CDA    mov         dword ptr [ebp-0C],ecx
 004D9CDD    mov         word ptr [ebp-6],dx
 004D9CE1    mov         dword ptr [ebp-4],eax
 004D9CE4    mov         eax,dword ptr [ebp+18]
 004D9CE7    mov         eax,dword ptr [eax-4]
 004D9CEA    mov         ax,word ptr [eax+248]
 004D9CF1    and         ax,word ptr [ebp-6]
 004D9CF5    mov         dx,word ptr ds:[4D9D84];0x0 gvar_004D9D84
 004D9CFC    cmp         dx,ax
>004D9CFF    jne         004D9D0A
 004D9D01    mov         eax,dword ptr [ebp-4]
 004D9D04    xor         edx,edx
 004D9D06    mov         dword ptr [eax],edx
>004D9D08    jmp         004D9D1B
 004D9D0A    mov         eax,dword ptr [ebp+18]
 004D9D0D    mov         eax,dword ptr [eax-4]
 004D9D10    mov         eax,dword ptr [eax+244]
 004D9D16    mov         edx,dword ptr [ebp-4]
 004D9D19    mov         dword ptr [edx],eax
 004D9D1B    mov         eax,dword ptr [ebp-4]
 004D9D1E    xor         edx,edx
 004D9D20    mov         dword ptr [eax+4],edx
 004D9D23    mov         eax,dword ptr [ebp-0C]
 004D9D26    dec         eax
 004D9D27    test        eax,eax
>004D9D29    jl          004D9D52
 004D9D2B    inc         eax
 004D9D2C    mov         dword ptr [ebp-14],eax
 004D9D2F    mov         dword ptr [ebp-10],0
 004D9D36    mov         edx,dword ptr [ebp-10]
 004D9D39    mov         eax,dword ptr [ebp+0C]
 004D9D3C    call        dword ptr [ebp+8]
 004D9D3F    mov         edx,dword ptr [ebp-4]
 004D9D42    add         eax,dword ptr [edx]
 004D9D44    mov         edx,dword ptr [ebp-4]
 004D9D47    add         dword ptr [edx+4],eax
 004D9D4A    inc         dword ptr [ebp-10]
 004D9D4D    dec         dword ptr [ebp-14]
>004D9D50    jne         004D9D36
 004D9D52    mov         eax,dword ptr [ebp-4]
 004D9D55    mov         edx,dword ptr [ebp-0C]
 004D9D58    mov         dword ptr [eax+18],edx
 004D9D5B    mov         eax,dword ptr [ebp-4]
 004D9D5E    mov         edx,dword ptr [ebp+14]
 004D9D61    mov         dword ptr [eax+1C],edx
 004D9D64    mov         eax,dword ptr [ebp-4]
 004D9D67    mov         edx,dword ptr [ebp+10]
 004D9D6A    mov         dword ptr [eax+20],edx
 004D9D6D    mov         eax,dword ptr [ebp-4]
 004D9D70    mov         edx,dword ptr [ebp+8]
 004D9D73    mov         dword ptr [eax+28],edx
 004D9D76    mov         edx,dword ptr [ebp+0C]
 004D9D79    mov         dword ptr [eax+2C],edx
 004D9D7C    mov         esp,ebp
 004D9D7E    pop         ebp
 004D9D7F    ret         10
end;*}

//004D9D88
{*procedure sub_004D9D88(?:?; ?:?);
begin
 004D9D88    push        ebp
 004D9D89    mov         ebp,esp
 004D9D8B    add         esp,0FFFFFFF8
 004D9D8E    mov         dword ptr [ebp-8],edx
 004D9D91    mov         dword ptr [ebp-4],eax
 004D9D94    push        ebp
 004D9D95    mov         eax,dword ptr [ebp-4]
 004D9D98    mov         eax,dword ptr [eax+258]
 004D9D9E    push        eax
 004D9D9F    mov         eax,dword ptr [ebp-4]
 004D9DA2    mov         eax,dword ptr [eax+21C]
 004D9DA8    push        eax
 004D9DA9    mov         eax,dword ptr [ebp-4]
 004D9DAC    push        eax
 004D9DAD    push        4DD40C;sub_004DD40C
 004D9DB2    mov         eax,dword ptr [ebp-4]
 004D9DB5    mov         ecx,dword ptr [eax+238]
 004D9DBB    mov         eax,dword ptr [ebp-8]
 004D9DBE    mov         dx,word ptr ds:[4D9E0C];0x5 gvar_004D9E0C
 004D9DC5    call        004D9CD4
 004D9DCA    pop         ecx
 004D9DCB    push        ebp
 004D9DCC    mov         eax,dword ptr [ebp-4]
 004D9DCF    mov         eax,dword ptr [eax+25C]
 004D9DD5    push        eax
 004D9DD6    mov         eax,dword ptr [ebp-4]
 004D9DD9    mov         eax,dword ptr [eax+24C]
 004D9DDF    push        eax
 004D9DE0    mov         eax,dword ptr [ebp-4]
 004D9DE3    push        eax
 004D9DE4    push        4DD45C;sub_004DD45C
 004D9DE9    mov         eax,dword ptr [ebp-4]
 004D9DEC    mov         ecx,dword ptr [eax+23C]
 004D9DF2    mov         eax,dword ptr [ebp-8]
 004D9DF5    add         eax,30
 004D9DF8    mov         dx,word ptr ds:[4D9E10];0xA gvar_004D9E10
 004D9DFF    call        004D9CD4
 004D9E04    pop         ecx
 004D9E05    pop         ecx
 004D9E06    pop         ecx
 004D9E07    pop         ebp
 004D9E08    ret
end;*}

//004D9E14
{*function sub_004D9E14(?:?; ?:?):?;
begin
 004D9E14    push        ebp
 004D9E15    mov         ebp,esp
 004D9E17    add         esp,0FFFFFFE4
 004D9E1A    push        ebx
 004D9E1B    mov         dword ptr [ebp-8],edx
 004D9E1E    mov         dword ptr [ebp-4],eax
 004D9E21    mov         eax,dword ptr [ebp-8]
 004D9E24    mov         dword ptr [ebp-0C],eax
 004D9E27    mov         eax,dword ptr [ebp-4]
 004D9E2A    mov         eax,dword ptr [eax+0C]
 004D9E2D    mov         edx,dword ptr [ebp-4]
 004D9E30    add         eax,dword ptr [edx]
 004D9E32    mov         dword ptr [ebp-10],eax
 004D9E35    mov         eax,dword ptr [ebp-8]
 004D9E38    mov         edx,dword ptr [ebp-4]
 004D9E3B    mov         edx,dword ptr [edx+18]
 004D9E3E    sub         edx,eax
>004D9E40    jg          004D9EA5
 004D9E42    dec         edx
 004D9E43    mov         dword ptr [ebp-1C],edx
 004D9E46    mov         dword ptr [ebp-14],eax
 004D9E49    mov         ebx,dword ptr [ebp-4]
 004D9E4C    mov         edx,dword ptr [ebp-14]
 004D9E4F    mov         eax,dword ptr [ebx+2C]
 004D9E52    call        dword ptr [ebx+28]
 004D9E55    mov         dword ptr [ebp-18],eax
 004D9E58    cmp         dword ptr [ebp-18],0
>004D9E5C    jle         004D9E9D
 004D9E5E    mov         eax,dword ptr [ebp-18]
 004D9E61    sub         dword ptr [ebp-10],eax
 004D9E64    mov         eax,dword ptr [ebp-4]
 004D9E67    mov         eax,dword ptr [eax]
 004D9E69    sub         dword ptr [ebp-10],eax
 004D9E6C    mov         eax,dword ptr [ebp-4]
 004D9E6F    mov         eax,dword ptr [eax+4]
 004D9E72    cmp         eax,dword ptr [ebp-10]
>004D9E75    jle         004D9E97
 004D9E77    mov         eax,dword ptr [ebp-0C]
 004D9E7A    cmp         eax,dword ptr [ebp-8]
>004D9E7D    jne         004D9EA5
 004D9E7F    mov         ebx,dword ptr [ebp-4]
 004D9E82    mov         edx,dword ptr [ebp-8]
 004D9E85    mov         eax,dword ptr [ebx+2C]
 004D9E88    call        dword ptr [ebx+28]
 004D9E8B    test        eax,eax
>004D9E8D    jg          004D9EA5
 004D9E8F    mov         eax,dword ptr [ebp-14]
 004D9E92    mov         dword ptr [ebp-0C],eax
>004D9E95    jmp         004D9EA5
 004D9E97    mov         eax,dword ptr [ebp-14]
 004D9E9A    mov         dword ptr [ebp-0C],eax
 004D9E9D    dec         dword ptr [ebp-14]
 004D9EA0    inc         dword ptr [ebp-1C]
>004D9EA3    jne         004D9E49
 004D9EA5    mov         eax,dword ptr [ebp-0C]
 004D9EA8    pop         ebx
 004D9EA9    mov         esp,ebp
 004D9EAB    pop         ebp
 004D9EAC    ret
end;*}

//004D9EB0
function TCustomGrid.CalcMaxTopLeft(const Coord:TGridCoord; const DrawInfo:TGridDrawInfo):TGridCoord;
begin
{*
 004D9EB0    push        ebp
 004D9EB1    mov         ebp,esp
 004D9EB3    add         esp,0FFFFFFF4
 004D9EB6    mov         dword ptr [ebp-0C],ecx
 004D9EB9    mov         dword ptr [ebp-8],edx
 004D9EBC    mov         dword ptr [ebp-4],eax
 004D9EBF    push        ebp
 004D9EC0    mov         edx,dword ptr [ebp-8]
 004D9EC3    mov         edx,dword ptr [edx]
 004D9EC5    mov         eax,dword ptr [ebp-0C]
 004D9EC8    call        004D9E14
 004D9ECD    pop         ecx
 004D9ECE    mov         edx,dword ptr [ebp+8]
 004D9ED1    mov         dword ptr [edx],eax
 004D9ED3    push        ebp
 004D9ED4    mov         edx,dword ptr [ebp-8]
 004D9ED7    mov         edx,dword ptr [edx+4]
 004D9EDA    mov         eax,dword ptr [ebp-0C]
 004D9EDD    add         eax,30
 004D9EE0    call        004D9E14
 004D9EE5    pop         ecx
 004D9EE6    mov         edx,dword ptr [ebp+8]
 004D9EE9    mov         dword ptr [edx+4],eax
 004D9EEC    mov         esp,ebp
 004D9EEE    pop         ebp
 004D9EEF    ret         4
*}
end;

//004D9EF4
{*procedure sub_004D9EF4(?:?; ?:?; ?:?; ?:?);
begin
 004D9EF4    push        ebp
 004D9EF5    mov         ebp,esp
 004D9EF7    add         esp,0FFFFFFE0
 004D9EFA    push        ebx
 004D9EFB    push        esi
 004D9EFC    mov         byte ptr [ebp-9],cl
 004D9EFF    mov         dword ptr [ebp-8],edx
 004D9F02    mov         dword ptr [ebp-4],eax
 004D9F05    cmp         byte ptr [ebp-9],3
>004D9F09    jne         004D9F2F
 004D9F0B    mov         eax,dword ptr [ebp+8]
 004D9F0E    mov         eax,dword ptr [eax-4]
 004D9F11    mov         si,0FFC8
 004D9F15    call        @CallDynaInst
 004D9F1A    test        al,al
>004D9F1C    je          004D9F2F
 004D9F1E    mov         eax,dword ptr [ebp+8]
 004D9F21    mov         eax,dword ptr [eax-4]
 004D9F24    call        TControl.GetClientWidth
 004D9F29    sub         eax,dword ptr [ebp-8]
 004D9F2C    mov         dword ptr [ebp-8],eax
 004D9F2F    mov         eax,dword ptr [ebp-4]
 004D9F32    mov         eax,dword ptr [eax+4]
 004D9F35    mov         dword ptr [ebp-14],eax
 004D9F38    mov         eax,dword ptr [ebp-4]
 004D9F3B    mov         eax,dword ptr [eax]
 004D9F3D    mov         dword ptr [ebp-1C],eax
 004D9F40    xor         eax,eax
 004D9F42    mov         dword ptr [ebp-18],eax
 004D9F45    cmp         dword ptr [ebp-1C],7
>004D9F49    jge         004D9F5F
 004D9F4B    mov         dword ptr [ebp-1C],7
 004D9F52    mov         eax,dword ptr [ebp-4]
 004D9F55    mov         edx,dword ptr [ebp-1C]
 004D9F58    sub         edx,dword ptr [eax]
 004D9F5A    shr         edx,1
 004D9F5C    mov         dword ptr [ebp-18],edx
 004D9F5F    mov         eax,dword ptr [ebp-4]
 004D9F62    mov         eax,dword ptr [eax+1C]
 004D9F65    mov         edx,dword ptr [ebp-4]
 004D9F68    mov         edx,dword ptr [edx+20]
 004D9F6B    dec         edx
 004D9F6C    sub         edx,eax
>004D9F6E    jl          004D9FEB
 004D9F70    inc         edx
 004D9F71    mov         dword ptr [ebp-20],edx
 004D9F74    mov         dword ptr [ebp-10],eax
 004D9F77    mov         ebx,dword ptr [ebp-4]
 004D9F7A    mov         edx,dword ptr [ebp-10]
 004D9F7D    mov         eax,dword ptr [ebx+2C]
 004D9F80    call        dword ptr [ebx+28]
 004D9F83    add         dword ptr [ebp-14],eax
 004D9F86    mov         eax,dword ptr [ebp-4]
 004D9F89    mov         eax,dword ptr [eax+8]
 004D9F8C    cmp         eax,dword ptr [ebp-14]
>004D9F8F    jl          004D9FEB
 004D9F91    mov         eax,dword ptr [ebp-14]
 004D9F94    sub         eax,dword ptr [ebp-18]
 004D9F97    cmp         eax,dword ptr [ebp-8]
>004D9F9A    jg          004D9FDB
 004D9F9C    mov         eax,dword ptr [ebp-14]
 004D9F9F    sub         eax,dword ptr [ebp-18]
 004D9FA2    add         eax,dword ptr [ebp-1C]
 004D9FA5    cmp         eax,dword ptr [ebp-8]
>004D9FA8    jl          004D9FDB
 004D9FAA    mov         eax,dword ptr [ebp+8]
 004D9FAD    mov         eax,dword ptr [eax+18]
 004D9FB0    mov         dl,byte ptr [ebp-9]
 004D9FB3    mov         byte ptr [eax],dl
 004D9FB5    mov         eax,dword ptr [ebp+8]
 004D9FB8    mov         eax,dword ptr [eax+10]
 004D9FBB    mov         edx,dword ptr [ebp-14]
 004D9FBE    mov         dword ptr [eax],edx
 004D9FC0    mov         eax,dword ptr [ebp-14]
 004D9FC3    sub         eax,dword ptr [ebp-8]
 004D9FC6    mov         edx,dword ptr [ebp+8]
 004D9FC9    mov         edx,dword ptr [edx+0C]
 004D9FCC    mov         dword ptr [edx],eax
 004D9FCE    mov         eax,dword ptr [ebp+8]
 004D9FD1    mov         eax,dword ptr [eax+14]
 004D9FD4    mov         edx,dword ptr [ebp-10]
 004D9FD7    mov         dword ptr [eax],edx
>004D9FD9    jmp         004DA04B
 004D9FDB    mov         eax,dword ptr [ebp-4]
 004D9FDE    mov         eax,dword ptr [eax]
 004D9FE0    add         dword ptr [ebp-14],eax
 004D9FE3    inc         dword ptr [ebp-10]
 004D9FE6    dec         dword ptr [ebp-20]
>004D9FE9    jne         004D9F77
 004D9FEB    mov         eax,dword ptr [ebp-4]
 004D9FEE    mov         eax,dword ptr [eax+8]
 004D9FF1    mov         edx,dword ptr [ebp-4]
 004D9FF4    cmp         eax,dword ptr [edx+0C]
>004D9FF7    jne         004DA04B
 004D9FF9    mov         eax,dword ptr [ebp-4]
 004D9FFC    mov         eax,dword ptr [eax+0C]
 004D9FFF    sub         eax,dword ptr [ebp-18]
 004DA002    cmp         eax,dword ptr [ebp-8]
>004DA005    jg          004DA04B
 004DA007    mov         eax,dword ptr [ebp-4]
 004DA00A    mov         eax,dword ptr [eax+0C]
 004DA00D    cmp         eax,dword ptr [ebp-8]
>004DA010    jl          004DA04B
 004DA012    mov         eax,dword ptr [ebp+8]
 004DA015    mov         eax,dword ptr [eax+18]
 004DA018    mov         dl,byte ptr [ebp-9]
 004DA01B    mov         byte ptr [eax],dl
 004DA01D    mov         eax,dword ptr [ebp-4]
 004DA020    mov         eax,dword ptr [eax+0C]
 004DA023    mov         edx,dword ptr [ebp+8]
 004DA026    mov         edx,dword ptr [edx+10]
 004DA029    mov         dword ptr [edx],eax
 004DA02B    mov         eax,dword ptr [ebp-4]
 004DA02E    mov         eax,dword ptr [eax+0C]
 004DA031    sub         eax,dword ptr [ebp-8]
 004DA034    mov         edx,dword ptr [ebp+8]
 004DA037    mov         edx,dword ptr [edx+0C]
 004DA03A    mov         dword ptr [edx],eax
 004DA03C    mov         eax,dword ptr [ebp-4]
 004DA03F    mov         eax,dword ptr [eax+10]
 004DA042    inc         eax
 004DA043    mov         edx,dword ptr [ebp+8]
 004DA046    mov         edx,dword ptr [edx+14]
 004DA049    mov         dword ptr [edx],eax
 004DA04B    pop         esi
 004DA04C    pop         ebx
 004DA04D    mov         esp,ebp
 004DA04F    pop         ebp
 004DA050    ret
end;*}

//004DA054
{*function sub_004DA054(?:?):?;
begin
 004DA054    push        ebp
 004DA055    mov         ebp,esp
 004DA057    push        ecx
 004DA058    push        esi
 004DA059    mov         eax,dword ptr [ebp+8]
 004DA05C    mov         eax,dword ptr [eax-4]
 004DA05F    mov         si,0FFC8
 004DA063    call        @CallDynaInst
 004DA068    test        al,al
>004DA06A    jne         004DA081
 004DA06C    mov         eax,dword ptr [ebp+8]
 004DA06F    mov         eax,dword ptr [eax-8]
 004DA072    mov         edx,dword ptr [ebp+8]
 004DA075    mov         edx,dword ptr [edx+8]
 004DA078    cmp         eax,dword ptr [edx+4]
 004DA07B    setg        byte ptr [ebp-1]
>004DA07F    jmp         004DA09F
 004DA081    mov         eax,dword ptr [ebp+8]
 004DA084    mov         eax,dword ptr [eax-4]
 004DA087    call        TControl.GetClientWidth
 004DA08C    mov         edx,dword ptr [ebp+8]
 004DA08F    mov         edx,dword ptr [edx+8]
 004DA092    sub         eax,dword ptr [edx+4]
 004DA095    mov         edx,dword ptr [ebp+8]
 004DA098    cmp         eax,dword ptr [edx-8]
 004DA09B    setg        byte ptr [ebp-1]
 004DA09F    mov         al,byte ptr [ebp-1]
 004DA0A2    pop         esi
 004DA0A3    pop         ecx
 004DA0A4    pop         ebp
 004DA0A5    ret
end;*}

//004DA0A8
{*function sub_004DA0A8(?:?):?;
begin
 004DA0A8    push        ebp
 004DA0A9    mov         ebp,esp
 004DA0AB    push        ecx
 004DA0AC    push        esi
 004DA0AD    mov         eax,dword ptr [ebp+8]
 004DA0B0    mov         eax,dword ptr [eax-4]
 004DA0B3    mov         si,0FFC8
 004DA0B7    call        @CallDynaInst
 004DA0BC    test        al,al
>004DA0BE    jne         004DA0D5
 004DA0C0    mov         eax,dword ptr [ebp+8]
 004DA0C3    mov         eax,dword ptr [eax-8]
 004DA0C6    mov         edx,dword ptr [ebp+8]
 004DA0C9    mov         edx,dword ptr [edx+8]
 004DA0CC    cmp         eax,dword ptr [edx+4]
 004DA0CF    setge       byte ptr [ebp-1]
>004DA0D3    jmp         004DA0F3
 004DA0D5    mov         eax,dword ptr [ebp+8]
 004DA0D8    mov         eax,dword ptr [eax-4]
 004DA0DB    call        TControl.GetClientWidth
 004DA0E0    mov         edx,dword ptr [ebp+8]
 004DA0E3    mov         edx,dword ptr [edx+8]
 004DA0E6    sub         eax,dword ptr [edx+4]
 004DA0E9    mov         edx,dword ptr [ebp+8]
 004DA0EC    cmp         eax,dword ptr [edx-8]
 004DA0EF    setge       byte ptr [ebp-1]
 004DA0F3    mov         al,byte ptr [ebp-1]
 004DA0F6    pop         esi
 004DA0F7    pop         ecx
 004DA0F8    pop         ebp
 004DA0F9    ret
end;*}

//004DA0FC
{*procedure sub_004DA0FC(?:?; ?:?; ?:?; ?:?; ?:?);
begin
 004DA0FC    push        ebp
 004DA0FD    mov         ebp,esp
 004DA0FF    add         esp,0FFFFFFF0
 004DA102    mov         dword ptr [ebp-0C],ecx
 004DA105    mov         dword ptr [ebp-8],edx
 004DA108    mov         dword ptr [ebp-4],eax
 004DA10B    mov         eax,dword ptr [ebp+18]
 004DA10E    mov         byte ptr [eax],0
 004DA111    mov         eax,dword ptr [ebp+14]
 004DA114    mov         dword ptr [eax],0FFFFFFFF
 004DA11A    mov         eax,dword ptr [ebp-4]
 004DA11D    mov         ax,word ptr [eax+248];TCustomGrid.FOptions:TGridOptions
 004DA124    mov         word ptr [ebp-0E],ax
 004DA128    mov         eax,dword ptr [ebp-4]
 004DA12B    test        byte ptr [eax+1C],10;TCustomGrid.FComponentState:TComponentState
>004DA12F    je          004DA143
 004DA131    mov         eax,dword ptr [ebp-4]
 004DA134    mov         ax,word ptr [eax+290];TCustomGrid.DesignOptionsBoost:TGridOptions
 004DA13B    or          ax,word ptr [ebp-0E]
 004DA13F    mov         word ptr [ebp-0E],ax
 004DA143    mov         ax,word ptr [ebp-0E]
 004DA147    and         ax,word ptr ds:[4DA1D8];0xC0 gvar_004DA1D8
 004DA14E    mov         dx,word ptr ds:[4DA1DC];0x0 gvar_004DA1DC
 004DA155    cmp         dx,ax
>004DA158    je          004DA1D1
 004DA15A    mov         eax,dword ptr [ebp-4]
 004DA15D    call        TControl.GetClientHeight
 004DA162    mov         edx,dword ptr [ebp+8]
 004DA165    mov         dword ptr [edx+3C],eax
 004DA168    mov         eax,dword ptr [ebp-4]
 004DA16B    call        TControl.GetClientWidth
 004DA170    mov         edx,dword ptr [ebp+8]
 004DA173    mov         dword ptr [edx+0C],eax
 004DA176    push        ebp
 004DA177    call        004DA054
 004DA17C    pop         ecx
 004DA17D    test        al,al
>004DA17F    je          004DA1A3
 004DA181    test        byte ptr [ebp-0E],80
>004DA185    je          004DA1A3
 004DA187    mov         eax,dword ptr [ebp+8]
 004DA18A    mov         eax,dword ptr [eax+34]
 004DA18D    cmp         eax,dword ptr [ebp-0C]
>004DA190    jle         004DA1D1
 004DA192    push        ebp
 004DA193    mov         eax,dword ptr [ebp+8]
 004DA196    mov         cl,3
 004DA198    mov         edx,dword ptr [ebp-8]
 004DA19B    call        004D9EF4
 004DA1A0    pop         ecx
>004DA1A1    jmp         004DA1D1
 004DA1A3    mov         eax,dword ptr [ebp+8]
 004DA1A6    mov         eax,dword ptr [eax+34]
 004DA1A9    cmp         eax,dword ptr [ebp-0C]
>004DA1AC    jge         004DA1D1
 004DA1AE    test        byte ptr [ebp-0E],40
>004DA1B2    je          004DA1D1
 004DA1B4    push        ebp
 004DA1B5    call        004DA0A8
 004DA1BA    pop         ecx
 004DA1BB    test        al,al
>004DA1BD    jne         004DA1D1
 004DA1BF    push        ebp
 004DA1C0    mov         eax,dword ptr [ebp+8]
 004DA1C3    add         eax,30
 004DA1C6    mov         cl,2
 004DA1C8    mov         edx,dword ptr [ebp-0C]
 004DA1CB    call        004D9EF4
 004DA1D0    pop         ecx
 004DA1D1    mov         esp,ebp
 004DA1D3    pop         ebp
 004DA1D4    ret         14
end;*}

//004DA1E0
{*procedure sub_004DA1E0(?:TCustomGrid; ?:?);
begin
 004DA1E0    push        ebp
 004DA1E1    mov         ebp,esp
 004DA1E3    add         esp,0FFFFFFE8
 004DA1E6    mov         byte ptr [ebp-5],dl
 004DA1E9    mov         dword ptr [ebp-4],eax
 004DA1EC    cmp         byte ptr [ebp-5],0
>004DA1F0    je          004DA2A7
 004DA1F6    mov         eax,dword ptr [ebp-4]
 004DA1F9    call        TControl.GetClientWidth
 004DA1FE    lea         ecx,[ebp-0D]
 004DA201    xor         edx,edx
 004DA203    call        Point
 004DA208    lea         ecx,[ebp-15]
 004DA20B    mov         edx,1
 004DA210    or          eax,0FFFFFFFF
 004DA213    call        Point
 004DA218    push        8
 004DA21A    mov         eax,dword ptr [ebp-4]
 004DA21D    mov         eax,dword ptr [eax+208];TCustomGrid........................................................
 004DA223    call        0042F6A0
 004DA228    push        eax
 004DA229    call        gdi32.SetMapMode
 004DA22E    push        0
 004DA230    mov         eax,dword ptr [ebp-9]
 004DA233    push        eax
 004DA234    mov         eax,dword ptr [ebp-0D]
 004DA237    push        eax
 004DA238    mov         eax,dword ptr [ebp-4]
 004DA23B    mov         eax,dword ptr [eax+208];TCustomGrid........................................................
 004DA241    call        0042F6A0
 004DA246    push        eax
 004DA247    call        gdi32.SetWindowOrgEx
 004DA24C    push        0
 004DA24E    mov         eax,dword ptr [ebp-4]
 004DA251    call        TControl.GetClientHeight
 004DA256    push        eax
 004DA257    mov         eax,dword ptr [ebp-4]
 004DA25A    call        TControl.GetClientWidth
 004DA25F    push        eax
 004DA260    mov         eax,dword ptr [ebp-4]
 004DA263    mov         eax,dword ptr [eax+208];TCustomGrid........................................................
 004DA269    call        0042F6A0
 004DA26E    push        eax
 004DA26F    call        gdi32.SetViewportExtEx
 004DA274    push        0
 004DA276    mov         eax,dword ptr [ebp-4]
 004DA279    call        TControl.GetClientHeight
 004DA27E    imul        dword ptr [ebp-11]
 004DA281    push        eax
 004DA282    mov         eax,dword ptr [ebp-4]
 004DA285    call        TControl.GetClientWidth
 004DA28A    imul        dword ptr [ebp-15]
 004DA28D    push        eax
 004DA28E    mov         eax,dword ptr [ebp-4]
 004DA291    mov         eax,dword ptr [eax+208];TCustomGrid........................................................
 004DA297    call        0042F6A0
 004DA29C    push        eax
 004DA29D    call        gdi32.SetWindowExtEx
>004DA2A2    jmp         004DA34F
 004DA2A7    lea         ecx,[ebp-0D]
 004DA2AA    xor         edx,edx
 004DA2AC    xor         eax,eax
 004DA2AE    call        Point
 004DA2B3    lea         ecx,[ebp-15]
 004DA2B6    mov         edx,1
 004DA2BB    mov         eax,1
 004DA2C0    call        Point
 004DA2C5    push        8
 004DA2C7    mov         eax,dword ptr [ebp-4]
 004DA2CA    mov         eax,dword ptr [eax+208];TCustomGrid........................................................
 004DA2D0    call        0042F6A0
 004DA2D5    push        eax
 004DA2D6    call        gdi32.SetMapMode
 004DA2DB    push        0
 004DA2DD    mov         eax,dword ptr [ebp-9]
 004DA2E0    push        eax
 004DA2E1    mov         eax,dword ptr [ebp-0D]
 004DA2E4    push        eax
 004DA2E5    mov         eax,dword ptr [ebp-4]
 004DA2E8    mov         eax,dword ptr [eax+208];TCustomGrid........................................................
 004DA2EE    call        0042F6A0
 004DA2F3    push        eax
 004DA2F4    call        gdi32.SetWindowOrgEx
 004DA2F9    push        0
 004DA2FB    mov         eax,dword ptr [ebp-4]
 004DA2FE    call        TControl.GetClientHeight
 004DA303    push        eax
 004DA304    mov         eax,dword ptr [ebp-4]
 004DA307    call        TControl.GetClientWidth
 004DA30C    push        eax
 004DA30D    mov         eax,dword ptr [ebp-4]
 004DA310    mov         eax,dword ptr [eax+208];TCustomGrid........................................................
 004DA316    call        0042F6A0
 004DA31B    push        eax
 004DA31C    call        gdi32.SetViewportExtEx
 004DA321    push        0
 004DA323    mov         eax,dword ptr [ebp-4]
 004DA326    call        TControl.GetClientHeight
 004DA32B    imul        dword ptr [ebp-11]
 004DA32E    push        eax
 004DA32F    mov         eax,dword ptr [ebp-4]
 004DA332    call        TControl.GetClientWidth
 004DA337    imul        dword ptr [ebp-15]
 004DA33A    push        eax
 004DA33B    mov         eax,dword ptr [ebp-4]
 004DA33E    mov         eax,dword ptr [eax+208];TCustomGrid........................................................
 004DA344    call        0042F6A0
 004DA349    push        eax
 004DA34A    call        gdi32.SetWindowExtEx
 004DA34F    mov         esp,ebp
 004DA351    pop         ebp
 004DA352    ret
end;*}

//004DA354
{*procedure sub_004DA354(?:?; ?:TGridDrawInfo; ?:?; ?:?);
begin
 004DA354    push        ebp
 004DA355    mov         ebp,esp
 004DA357    add         esp,0FFFFFFE0
 004DA35A    mov         dword ptr [ebp-0C],ecx
 004DA35D    mov         dword ptr [ebp-8],edx
 004DA360    mov         dword ptr [ebp-4],eax
 004DA363    mov         edx,dword ptr [ebp-8]
 004DA366    mov         edx,dword ptr [edx+10]
 004DA369    mov         eax,dword ptr [ebp-4]
 004DA36C    mov         eax,dword ptr [eax+10]
 004DA36F    call        004373CC
 004DA374    mov         dword ptr [ebp-10],eax
 004DA377    lea         eax,[ebp-20]
 004DA37A    push        eax
 004DA37B    mov         ecx,dword ptr [ebp-10]
 004DA37E    and         ecx,dword ptr [ebp-0C]
 004DA381    mov         edx,dword ptr [ebp-0C]
 004DA384    not         edx
 004DA386    and         edx,dword ptr [ebp-10]
 004DA389    mov         eax,dword ptr [ebp+8]
 004DA38C    mov         eax,dword ptr [eax-4]
 004DA38F    call        004D8568
 004DA394    mov         eax,dword ptr [ebp+8]
 004DA397    mov         eax,dword ptr [eax-4]
 004DA39A    mov         eax,dword ptr [eax+4C]
 004DA39D    mov         dword ptr [ebp-14],eax
 004DA3A0    mov         eax,dword ptr [ebp+8]
 004DA3A3    mov         eax,dword ptr [eax-4]
 004DA3A6    mov         eax,dword ptr [eax+48]
 004DA3A9    mov         dword ptr [ebp-18],eax
 004DA3AC    push        0
 004DA3AE    lea         eax,[ebp-20]
 004DA3B1    push        eax
 004DA3B2    mov         eax,dword ptr [ebp+8]
 004DA3B5    mov         eax,dword ptr [eax-4]
 004DA3B8    call        TWinControl.GetHandle
 004DA3BD    push        eax
 004DA3BE    call        user32.InvalidateRect
 004DA3C3    mov         esp,ebp
 004DA3C5    pop         ebp
 004DA3C6    ret
end;*}

//004DA3C8
{*procedure sub_004DA3C8(?:?);
begin
 004DA3C8    push        ebp
 004DA3C9    mov         ebp,esp
 004DA3CB    add         esp,0FFFFFF98
 004DA3CE    push        esi
 004DA3CF    mov         eax,dword ptr [ebp+8]
 004DA3D2    mov         eax,dword ptr [eax-4]
 004DA3D5    cmp         dword ptr [eax+220],0
>004DA3DC    je          004DA406
 004DA3DE    mov         eax,dword ptr [ebp+8]
 004DA3E1    mov         eax,dword ptr [eax-4]
 004DA3E4    mov         ecx,dword ptr [eax+230]
 004DA3EA    mov         eax,dword ptr [ebp+8]
 004DA3ED    mov         eax,dword ptr [eax-4]
 004DA3F0    mov         edx,dword ptr [eax+21C]
 004DA3F6    mov         eax,dword ptr [ebp+8]
 004DA3F9    mov         eax,dword ptr [eax-4]
 004DA3FC    add         eax,220
 004DA401    call        004D7324
 004DA406    mov         eax,dword ptr [ebp+8]
 004DA409    mov         eax,dword ptr [eax-4]
 004DA40C    cmp         dword ptr [eax+224],0
>004DA413    je          004DA436
 004DA415    mov         eax,dword ptr [ebp+8]
 004DA418    mov         eax,dword ptr [eax-4]
 004DA41B    mov         edx,dword ptr [eax+21C]
 004DA421    mov         eax,dword ptr [ebp+8]
 004DA424    mov         eax,dword ptr [eax-4]
 004DA427    add         eax,224
 004DA42C    mov         ecx,1
 004DA431    call        004D7324
 004DA436    mov         eax,dword ptr [ebp+8]
 004DA439    mov         eax,dword ptr [eax-4]
 004DA43C    cmp         dword ptr [eax+250],0
>004DA443    je          004DA46D
 004DA445    mov         eax,dword ptr [ebp+8]
 004DA448    mov         eax,dword ptr [eax-4]
 004DA44B    mov         ecx,dword ptr [eax+234]
 004DA451    mov         eax,dword ptr [ebp+8]
 004DA454    mov         eax,dword ptr [eax-4]
 004DA457    mov         edx,dword ptr [eax+24C]
 004DA45D    mov         eax,dword ptr [ebp+8]
 004DA460    mov         eax,dword ptr [eax-4]
 004DA463    add         eax,250
 004DA468    call        004D7324
 004DA46D    mov         eax,dword ptr [ebp+8]
 004DA470    mov         eax,dword ptr [eax-4]
 004DA473    mov         edx,dword ptr [eax+228]
 004DA479    mov         dword ptr [ebp-8],edx
 004DA47C    mov         edx,dword ptr [eax+22C]
 004DA482    mov         dword ptr [ebp-4],edx
 004DA485    mov         eax,dword ptr [ebp+8]
 004DA488    mov         eax,dword ptr [eax-4]
 004DA48B    mov         eax,dword ptr [eax+22C]
 004DA491    mov         edx,dword ptr [ebp+8]
 004DA494    mov         edx,dword ptr [edx-4]
 004DA497    cmp         eax,dword ptr [edx+24C]
>004DA49D    jl          004DA4AF
 004DA49F    mov         eax,dword ptr [ebp+8]
 004DA4A2    mov         eax,dword ptr [eax-4]
 004DA4A5    mov         eax,dword ptr [eax+24C]
 004DA4AB    dec         eax
 004DA4AC    mov         dword ptr [ebp-4],eax
 004DA4AF    mov         eax,dword ptr [ebp+8]
 004DA4B2    mov         eax,dword ptr [eax-4]
 004DA4B5    mov         eax,dword ptr [eax+228]
 004DA4BB    mov         edx,dword ptr [ebp+8]
 004DA4BE    mov         edx,dword ptr [edx-4]
 004DA4C1    cmp         eax,dword ptr [edx+21C]
>004DA4C7    jl          004DA4D9
 004DA4C9    mov         eax,dword ptr [ebp+8]
 004DA4CC    mov         eax,dword ptr [eax-4]
 004DA4CF    mov         eax,dword ptr [eax+21C]
 004DA4D5    dec         eax
 004DA4D6    mov         dword ptr [ebp-8],eax
 004DA4D9    mov         eax,dword ptr [ebp+8]
 004DA4DC    mov         eax,dword ptr [eax-4]
 004DA4DF    mov         eax,dword ptr [eax+228]
 004DA4E5    cmp         eax,dword ptr [ebp-8]
>004DA4E8    jne         004DA4FB
 004DA4EA    mov         eax,dword ptr [ebp+8]
 004DA4ED    mov         eax,dword ptr [eax-4]
 004DA4F0    mov         eax,dword ptr [eax+22C]
 004DA4F6    cmp         eax,dword ptr [ebp-4]
>004DA4F9    je          004DA510
 004DA4FB    push        1
 004DA4FD    push        1
 004DA4FF    mov         eax,dword ptr [ebp+8]
 004DA502    mov         eax,dword ptr [eax-4]
 004DA505    mov         ecx,dword ptr [ebp-4]
 004DA508    mov         edx,dword ptr [ebp-8]
 004DA50B    call        004DB69C
 004DA510    mov         eax,dword ptr [ebp+8]
 004DA513    mov         eax,dword ptr [eax-4]
 004DA516    mov         eax,dword ptr [eax+210]
 004DA51C    cmp         eax,dword ptr [ebp-8]
>004DA51F    jne         004DA532
 004DA521    mov         eax,dword ptr [ebp+8]
 004DA524    mov         eax,dword ptr [eax-4]
 004DA527    mov         eax,dword ptr [eax+214]
 004DA52D    cmp         eax,dword ptr [ebp-4]
>004DA530    je          004DA540
 004DA532    lea         edx,[ebp-8]
 004DA535    mov         eax,dword ptr [ebp+8]
 004DA538    mov         eax,dword ptr [eax-4]
 004DA53B    call        004DB5F4
 004DA540    mov         eax,dword ptr [ebp+8]
 004DA543    mov         eax,dword ptr [eax-4]
 004DA546    cmp         byte ptr [eax+292],0
>004DA54D    jne         004DA577
 004DA54F    mov         eax,dword ptr [ebp+8]
 004DA552    mov         eax,dword ptr [eax-4]
 004DA555    mov         eax,dword ptr [eax+258]
 004DA55B    mov         edx,dword ptr [ebp+8]
 004DA55E    cmp         eax,dword ptr [edx-4C]
>004DA561    jne         004DA577
 004DA563    mov         eax,dword ptr [ebp+8]
 004DA566    mov         eax,dword ptr [eax-4]
 004DA569    mov         eax,dword ptr [eax+25C]
 004DA56F    mov         edx,dword ptr [ebp+8]
 004DA572    cmp         eax,dword ptr [edx-1C]
>004DA575    je          004DA584
 004DA577    mov         eax,dword ptr [ebp+8]
 004DA57A    mov         eax,dword ptr [eax-4]
 004DA57D    call        004DAEC4
>004DA582    jmp         004DA5CC
 004DA584    mov         eax,dword ptr [ebp+8]
 004DA587    mov         eax,dword ptr [eax-4]
 004DA58A    call        TWinControl.HandleAllocated
 004DA58F    test        al,al
>004DA591    je          004DA5CC
 004DA593    lea         edx,[ebp-68]
 004DA596    mov         eax,dword ptr [ebp+8]
 004DA599    mov         eax,dword ptr [eax-4]
 004DA59C    call        TCustomGrid.CalcDrawInfo
 004DA5A1    mov         eax,dword ptr [ebp+8]
 004DA5A4    push        eax
 004DA5A5    lea         edx,[ebp-68]
 004DA5A8    mov         eax,dword ptr [ebp+8]
 004DA5AB    add         eax,0FFFFFF98
 004DA5AE    xor         ecx,ecx
 004DA5B0    call        004DA354
 004DA5B5    pop         ecx
 004DA5B6    mov         eax,dword ptr [ebp+8]
 004DA5B9    push        eax
 004DA5BA    lea         edx,[ebp-38]
 004DA5BD    mov         eax,dword ptr [ebp+8]
 004DA5C0    add         eax,0FFFFFFC8
 004DA5C3    or          ecx,0FFFFFFFF
 004DA5C6    call        004DA354
 004DA5CB    pop         ecx
 004DA5CC    mov         eax,dword ptr [ebp+8]
 004DA5CF    mov         eax,dword ptr [eax-4]
 004DA5D2    call        TCustomGrid.UpdateScrollRange
 004DA5D7    mov         eax,dword ptr [ebp+8]
 004DA5DA    mov         ecx,dword ptr [eax-70]
 004DA5DD    mov         eax,dword ptr [ebp+8]
 004DA5E0    mov         edx,dword ptr [eax-6C]
 004DA5E3    mov         eax,dword ptr [ebp+8]
 004DA5E6    mov         eax,dword ptr [eax-4]
 004DA5E9    mov         si,0FFA8
 004DA5ED    call        @CallDynaInst
 004DA5F2    pop         esi
 004DA5F3    mov         esp,ebp
 004DA5F5    pop         ebp
 004DA5F6    ret
end;*}

//004DA5F8
{*procedure sub_004DA5F8(?:?; ?:?; ?:?);
begin
 004DA5F8    push        ebp
 004DA5F9    mov         ebp,esp
 004DA5FB    add         esp,0FFFFFF88
 004DA5FE    push        ebx
 004DA5FF    push        esi
 004DA600    push        edi
 004DA601    mov         dword ptr [ebp-78],ecx
 004DA604    mov         dword ptr [ebp-74],edx
 004DA607    mov         dword ptr [ebp-4],eax
 004DA60A    mov         eax,dword ptr [ebp-4]
 004DA60D    call        TWinControl.HandleAllocated
 004DA612    test        al,al
>004DA614    je          004DA621
 004DA616    lea         edx,[ebp-68]
 004DA619    mov         eax,dword ptr [ebp-4]
 004DA61C    call        TCustomGrid.CalcDrawInfo
 004DA621    mov         eax,dword ptr [ebp-4]
 004DA624    mov         eax,dword ptr [eax+21C]
 004DA62A    mov         dword ptr [ebp-6C],eax
 004DA62D    mov         eax,dword ptr [ebp-4]
 004DA630    mov         eax,dword ptr [eax+24C]
 004DA636    mov         dword ptr [ebp-70],eax
 004DA639    mov         eax,dword ptr [ebp-4]
 004DA63C    mov         edx,dword ptr [ebp-74]
 004DA63F    mov         dword ptr [eax+21C],edx
 004DA645    mov         eax,dword ptr [ebp-4]
 004DA648    mov         edx,dword ptr [ebp-78]
 004DA64B    mov         dword ptr [eax+24C],edx
 004DA651    mov         eax,dword ptr [ebp-4]
 004DA654    mov         eax,dword ptr [eax+238]
 004DA65A    cmp         eax,dword ptr [ebp-74]
>004DA65D    jle         004DA66C
 004DA65F    mov         eax,dword ptr [ebp-74]
 004DA662    dec         eax
 004DA663    mov         edx,dword ptr [ebp-4]
 004DA666    mov         dword ptr [edx+238],eax
 004DA66C    mov         eax,dword ptr [ebp-4]
 004DA66F    mov         eax,dword ptr [eax+23C]
 004DA675    cmp         eax,dword ptr [ebp-78]
>004DA678    jle         004DA687
 004DA67A    mov         eax,dword ptr [ebp-78]
 004DA67D    dec         eax
 004DA67E    mov         edx,dword ptr [ebp-4]
 004DA681    mov         dword ptr [edx+23C],eax
 004DA687    xor         eax,eax
 004DA689    push        ebp
 004DA68A    push        4DA6A6
 004DA68F    push        dword ptr fs:[eax]
 004DA692    mov         dword ptr fs:[eax],esp
 004DA695    push        ebp
 004DA696    call        004DA3C8
 004DA69B    pop         ecx
 004DA69C    xor         eax,eax
 004DA69E    pop         edx
 004DA69F    pop         ecx
 004DA6A0    pop         ecx
 004DA6A1    mov         dword ptr fs:[eax],edx
>004DA6A4    jmp         004DA6DC
>004DA6A6    jmp         @HandleAnyException
 004DA6AB    mov         eax,dword ptr [ebp-4]
 004DA6AE    mov         edx,dword ptr [ebp-6C]
 004DA6B1    mov         dword ptr [eax+21C],edx
 004DA6B7    mov         eax,dword ptr [ebp-4]
 004DA6BA    mov         edx,dword ptr [ebp-70]
 004DA6BD    mov         dword ptr [eax+24C],edx
 004DA6C3    push        ebp
 004DA6C4    call        004DA3C8
 004DA6C9    pop         ecx
 004DA6CA    mov         eax,dword ptr [ebp-4]
 004DA6CD    call        004DAEC4
 004DA6D2    call        @RaiseAgain
 004DA6D7    call        @DoneExcept
 004DA6DC    pop         edi
 004DA6DD    pop         esi
 004DA6DE    pop         ebx
 004DA6DF    mov         esp,ebp
 004DA6E1    pop         ebp
 004DA6E2    ret
end;*}

//004DA6E4
{*procedure sub_004DA6E4(?:TCustomGrid; ?:?);
begin
 004DA6E4    push        ebp
 004DA6E5    mov         ebp,esp
 004DA6E7    add         esp,0FFFFFF88
 004DA6EA    mov         dword ptr [ebp-8],edx
 004DA6ED    mov         dword ptr [ebp-4],eax
 004DA6F0    mov         eax,dword ptr [ebp-4]
 004DA6F3    call        TWinControl.HandleAllocated
 004DA6F8    test        al,al
>004DA6FA    je          004DA7F1
 004DA700    lea         edx,[ebp-78]
 004DA703    mov         eax,dword ptr [ebp-4]
 004DA706    call        TCustomGrid.CalcDrawInfo
 004DA70B    mov         eax,dword ptr [ebp-8]
 004DA70E    mov         eax,dword ptr [eax]
 004DA710    cmp         eax,dword ptr [ebp-68]
>004DA713    jg          004DA745
 004DA715    mov         eax,dword ptr [ebp-8]
 004DA718    mov         eax,dword ptr [eax+4]
 004DA71B    cmp         eax,dword ptr [ebp-38]
>004DA71E    jg          004DA745
 004DA720    mov         eax,dword ptr [ebp-8]
 004DA723    mov         eax,dword ptr [eax]
 004DA725    mov         edx,dword ptr [ebp-4]
 004DA728    cmp         eax,dword ptr [edx+258]
>004DA72E    jl          004DA745
 004DA730    mov         eax,dword ptr [ebp-8]
 004DA733    mov         eax,dword ptr [eax+4]
 004DA736    mov         edx,dword ptr [ebp-4]
 004DA739    cmp         eax,dword ptr [edx+25C]
>004DA73F    jge         004DA7F1
 004DA745    mov         eax,dword ptr [ebp-4]
 004DA748    mov         edx,dword ptr [eax+258]
 004DA74E    mov         dword ptr [ebp-18],edx
 004DA751    mov         edx,dword ptr [eax+25C]
 004DA757    mov         dword ptr [ebp-14],edx
 004DA75A    lea         eax,[ebp-10]
 004DA75D    push        eax
 004DA75E    lea         ecx,[ebp-78]
 004DA761    mov         edx,dword ptr [ebp-8]
 004DA764    mov         eax,dword ptr [ebp-4]
 004DA767    call        TCustomGrid.CalcMaxTopLeft
 004DA76C    mov         eax,dword ptr [ebp-4]
 004DA76F    mov         edx,dword ptr [eax]
 004DA771    call        dword ptr [edx+88]
 004DA777    mov         eax,dword ptr [ebp-8]
 004DA77A    mov         eax,dword ptr [eax]
 004DA77C    mov         edx,dword ptr [ebp-4]
 004DA77F    cmp         eax,dword ptr [edx+258]
>004DA785    jge         004DA797
 004DA787    mov         eax,dword ptr [ebp-8]
 004DA78A    mov         eax,dword ptr [eax]
 004DA78C    mov         edx,dword ptr [ebp-4]
 004DA78F    mov         dword ptr [edx+258],eax
>004DA795    jmp         004DA7AD
 004DA797    mov         eax,dword ptr [ebp-8]
 004DA79A    mov         eax,dword ptr [eax]
 004DA79C    cmp         eax,dword ptr [ebp-68]
>004DA79F    jle         004DA7AD
 004DA7A1    mov         eax,dword ptr [ebp-10]
 004DA7A4    mov         edx,dword ptr [ebp-4]
 004DA7A7    mov         dword ptr [edx+258],eax
 004DA7AD    mov         eax,dword ptr [ebp-8]
 004DA7B0    mov         eax,dword ptr [eax+4]
 004DA7B3    mov         edx,dword ptr [ebp-4]
 004DA7B6    cmp         eax,dword ptr [edx+25C]
>004DA7BC    jge         004DA7CF
 004DA7BE    mov         eax,dword ptr [ebp-8]
 004DA7C1    mov         eax,dword ptr [eax+4]
 004DA7C4    mov         edx,dword ptr [ebp-4]
 004DA7C7    mov         dword ptr [edx+25C],eax
>004DA7CD    jmp         004DA7E6
 004DA7CF    mov         eax,dword ptr [ebp-8]
 004DA7D2    mov         eax,dword ptr [eax+4]
 004DA7D5    cmp         eax,dword ptr [ebp-38]
>004DA7D8    jle         004DA7E6
 004DA7DA    mov         eax,dword ptr [ebp-0C]
 004DA7DD    mov         edx,dword ptr [ebp-4]
 004DA7E0    mov         dword ptr [edx+25C],eax
 004DA7E6    lea         edx,[ebp-18]
 004DA7E9    mov         eax,dword ptr [ebp-4]
 004DA7EC    call        TCustomGrid.TopLeftMoved
 004DA7F1    mov         esp,ebp
 004DA7F3    pop         ebp
 004DA7F4    ret
end;*}

//004DA7F8
procedure TCustomGrid.DrawSizingLine(const DrawInfo:TGridDrawInfo);
begin
{*
 004DA7F8    push        ebp
 004DA7F9    mov         ebp,esp
 004DA7FB    add         esp,0FFFFFFF0
 004DA7FE    push        esi
 004DA7FF    mov         dword ptr [ebp-8],edx
 004DA802    mov         dword ptr [ebp-4],eax
 004DA805    mov         dl,1
 004DA807    mov         eax,[0042C674];TPen
 004DA80C    call        TPen.Create
 004DA811    mov         dword ptr [ebp-0C],eax
 004DA814    xor         eax,eax
 004DA816    push        ebp
 004DA817    push        4DA952
 004DA81C    push        dword ptr fs:[eax]
 004DA81F    mov         dword ptr fs:[eax],esp
 004DA822    mov         eax,dword ptr [ebp-4]
 004DA825    mov         eax,dword ptr [eax+208]
 004DA82B    mov         dword ptr [ebp-10],eax
 004DA82E    mov         eax,dword ptr [ebp-10]
 004DA831    mov         edx,dword ptr [eax+10]
 004DA834    mov         eax,dword ptr [ebp-0C]
 004DA837    mov         ecx,dword ptr [eax]
 004DA839    call        dword ptr [ecx+8]
 004DA83C    mov         eax,dword ptr [ebp-10]
 004DA83F    mov         eax,dword ptr [eax+10]
 004DA842    mov         dl,2
 004DA844    call        TPen.SetStyle
 004DA849    mov         eax,dword ptr [ebp-10]
 004DA84C    mov         eax,dword ptr [eax+10]
 004DA84F    mov         dl,0E
 004DA851    call        TPen.SetMode
 004DA856    mov         eax,dword ptr [ebp-10]
 004DA859    mov         eax,dword ptr [eax+10]
 004DA85C    mov         edx,1
 004DA861    call        TPen.SetWidth
 004DA866    xor         eax,eax
 004DA868    push        ebp
 004DA869    push        4DA935
 004DA86E    push        dword ptr fs:[eax]
 004DA871    mov         dword ptr fs:[eax],esp
 004DA874    mov         eax,dword ptr [ebp-4]
 004DA877    cmp         byte ptr [eax+28E],2
>004DA87E    jne         004DA8F2
 004DA880    mov         eax,dword ptr [ebp-4]
 004DA883    mov         si,0FFC8
 004DA887    call        @CallDynaInst
 004DA88C    test        al,al
>004DA88E    je          004DA8C6
 004DA890    mov         eax,dword ptr [ebp-4]
 004DA893    mov         ecx,dword ptr [eax+264]
 004DA899    mov         edx,dword ptr [ebp-8]
 004DA89C    mov         edx,dword ptr [edx+0C]
 004DA89F    mov         eax,dword ptr [ebp-10]
 004DA8A2    call        0042F14C
 004DA8A7    mov         edx,dword ptr [ebp-8]
 004DA8AA    mov         edx,dword ptr [edx+0C]
 004DA8AD    mov         eax,dword ptr [ebp-8]
 004DA8B0    sub         edx,dword ptr [eax+8]
 004DA8B3    mov         eax,dword ptr [ebp-4]
 004DA8B6    mov         ecx,dword ptr [eax+264]
 004DA8BC    mov         eax,dword ptr [ebp-10]
 004DA8BF    call        0042F0D0
>004DA8C4    jmp         004DA91C
 004DA8C6    mov         eax,dword ptr [ebp-4]
 004DA8C9    mov         ecx,dword ptr [eax+264]
 004DA8CF    xor         edx,edx
 004DA8D1    mov         eax,dword ptr [ebp-10]
 004DA8D4    call        0042F14C
 004DA8D9    mov         eax,dword ptr [ebp-4]
 004DA8DC    mov         ecx,dword ptr [eax+264]
 004DA8E2    mov         edx,dword ptr [ebp-8]
 004DA8E5    mov         edx,dword ptr [edx+8]
 004DA8E8    mov         eax,dword ptr [ebp-10]
 004DA8EB    call        0042F0D0
>004DA8F0    jmp         004DA91C
 004DA8F2    mov         eax,dword ptr [ebp-4]
 004DA8F5    mov         edx,dword ptr [eax+264]
 004DA8FB    xor         ecx,ecx
 004DA8FD    mov         eax,dword ptr [ebp-10]
 004DA900    call        0042F14C
 004DA905    mov         ecx,dword ptr [ebp-8]
 004DA908    mov         ecx,dword ptr [ecx+38]
 004DA90B    mov         eax,dword ptr [ebp-4]
 004DA90E    mov         edx,dword ptr [eax+264]
 004DA914    mov         eax,dword ptr [ebp-10]
 004DA917    call        0042F0D0
 004DA91C    xor         eax,eax
 004DA91E    pop         edx
 004DA91F    pop         ecx
 004DA920    pop         ecx
 004DA921    mov         dword ptr fs:[eax],edx
 004DA924    push        4DA93C
 004DA929    mov         edx,dword ptr [ebp-0C]
 004DA92C    mov         eax,dword ptr [ebp-10]
 004DA92F    call        TCanvas.SetPen
 004DA934    ret
>004DA935    jmp         @HandleFinally
>004DA93A    jmp         004DA929
 004DA93C    xor         eax,eax
 004DA93E    pop         edx
 004DA93F    pop         ecx
 004DA940    pop         ecx
 004DA941    mov         dword ptr fs:[eax],edx
 004DA944    push        4DA959
 004DA949    mov         eax,dword ptr [ebp-0C]
 004DA94C    call        TObject.Free
 004DA951    ret
>004DA952    jmp         @HandleFinally
>004DA957    jmp         004DA949
 004DA959    pop         esi
 004DA95A    mov         esp,ebp
 004DA95C    pop         ebp
 004DA95D    ret
*}
end;

//004DA960
procedure TCustomGrid.DrawMove;
begin
{*
 004DA960    push        ebp
 004DA961    mov         ebp,esp
 004DA963    add         esp,0FFFFFFE0
 004DA966    push        esi
 004DA967    mov         dword ptr [ebp-4],eax
 004DA96A    mov         dl,1
 004DA96C    mov         eax,[0042C674];TPen
 004DA971    call        TPen.Create
 004DA976    mov         dword ptr [ebp-8],eax
 004DA979    xor         eax,eax
 004DA97B    push        ebp
 004DA97C    push        4DAB0C
 004DA981    push        dword ptr fs:[eax]
 004DA984    mov         dword ptr fs:[eax],esp
 004DA987    mov         eax,dword ptr [ebp-4]
 004DA98A    mov         eax,dword ptr [eax+208]
 004DA990    mov         dword ptr [ebp-10],eax
 004DA993    mov         eax,dword ptr [ebp-10]
 004DA996    mov         edx,dword ptr [eax+10]
 004DA999    mov         eax,dword ptr [ebp-8]
 004DA99C    mov         ecx,dword ptr [eax]
 004DA99E    call        dword ptr [ecx+8]
 004DA9A1    xor         eax,eax
 004DA9A3    push        ebp
 004DA9A4    push        4DAAEF
 004DA9A9    push        dword ptr fs:[eax]
 004DA9AC    mov         dword ptr fs:[eax],esp
 004DA9AF    mov         eax,dword ptr [ebp-10]
 004DA9B2    mov         eax,dword ptr [eax+10]
 004DA9B5    mov         dl,2
 004DA9B7    call        TPen.SetStyle
 004DA9BC    mov         eax,dword ptr [ebp-10]
 004DA9BF    mov         eax,dword ptr [eax+10]
 004DA9C2    mov         dl,0E
 004DA9C4    call        TPen.SetMode
 004DA9C9    mov         eax,dword ptr [ebp-10]
 004DA9CC    mov         eax,dword ptr [eax+10]
 004DA9CF    mov         edx,5
 004DA9D4    call        TPen.SetWidth
 004DA9D9    mov         eax,dword ptr [ebp-4]
 004DA9DC    cmp         byte ptr [eax+28E],4
>004DA9E3    jne         004DAA45
 004DA9E5    lea         eax,[ebp-20]
 004DA9E8    push        eax
 004DA9E9    mov         eax,dword ptr [ebp-4]
 004DA9EC    mov         ecx,dword ptr [eax+270]
 004DA9F2    xor         edx,edx
 004DA9F4    mov         eax,dword ptr [ebp-4]
 004DA9F7    call        004D8568
 004DA9FC    mov         eax,dword ptr [ebp-4]
 004DA9FF    mov         eax,dword ptr [eax+270]
 004DAA05    mov         edx,dword ptr [ebp-4]
 004DAA08    cmp         eax,dword ptr [edx+26C]
>004DAA0E    jle         004DAA18
 004DAA10    mov         eax,dword ptr [ebp-14]
 004DAA13    mov         dword ptr [ebp-0C],eax
>004DAA16    jmp         004DAA1E
 004DAA18    mov         eax,dword ptr [ebp-1C]
 004DAA1B    mov         dword ptr [ebp-0C],eax
 004DAA1E    mov         ecx,dword ptr [ebp-0C]
 004DAA21    xor         edx,edx
 004DAA23    mov         eax,dword ptr [ebp-10]
 004DAA26    call        0042F14C
 004DAA2B    mov         eax,dword ptr [ebp-4]
 004DAA2E    call        TControl.GetClientWidth
 004DAA33    mov         edx,eax
 004DAA35    mov         ecx,dword ptr [ebp-0C]
 004DAA38    mov         eax,dword ptr [ebp-10]
 004DAA3B    call        0042F0D0
>004DAA40    jmp         004DAAD0
 004DAA45    lea         eax,[ebp-20]
 004DAA48    push        eax
 004DAA49    mov         eax,dword ptr [ebp-4]
 004DAA4C    mov         edx,dword ptr [eax+270]
 004DAA52    xor         ecx,ecx
 004DAA54    mov         eax,dword ptr [ebp-4]
 004DAA57    call        004D8568
 004DAA5C    mov         eax,dword ptr [ebp-4]
 004DAA5F    mov         eax,dword ptr [eax+270]
 004DAA65    mov         edx,dword ptr [ebp-4]
 004DAA68    cmp         eax,dword ptr [edx+26C]
>004DAA6E    jle         004DAA90
 004DAA70    mov         eax,dword ptr [ebp-4]
 004DAA73    mov         si,0FFC8
 004DAA77    call        @CallDynaInst
 004DAA7C    test        al,al
>004DAA7E    jne         004DAA88
 004DAA80    mov         eax,dword ptr [ebp-18]
 004DAA83    mov         dword ptr [ebp-0C],eax
>004DAA86    jmp         004DAAAE
 004DAA88    mov         eax,dword ptr [ebp-20]
 004DAA8B    mov         dword ptr [ebp-0C],eax
>004DAA8E    jmp         004DAAAE
 004DAA90    mov         eax,dword ptr [ebp-4]
 004DAA93    mov         si,0FFC8
 004DAA97    call        @CallDynaInst
 004DAA9C    test        al,al
>004DAA9E    jne         004DAAA8
 004DAAA0    mov         eax,dword ptr [ebp-20]
 004DAAA3    mov         dword ptr [ebp-0C],eax
>004DAAA6    jmp         004DAAAE
 004DAAA8    mov         eax,dword ptr [ebp-18]
 004DAAAB    mov         dword ptr [ebp-0C],eax
 004DAAAE    xor         ecx,ecx
 004DAAB0    mov         edx,dword ptr [ebp-0C]
 004DAAB3    mov         eax,dword ptr [ebp-10]
 004DAAB6    call        0042F14C
 004DAABB    mov         eax,dword ptr [ebp-4]
 004DAABE    call        TControl.GetClientHeight
 004DAAC3    mov         ecx,eax
 004DAAC5    mov         edx,dword ptr [ebp-0C]
 004DAAC8    mov         eax,dword ptr [ebp-10]
 004DAACB    call        0042F0D0
 004DAAD0    xor         eax,eax
 004DAAD2    pop         edx
 004DAAD3    pop         ecx
 004DAAD4    pop         ecx
 004DAAD5    mov         dword ptr fs:[eax],edx
 004DAAD8    push        4DAAF6
 004DAADD    mov         eax,dword ptr [ebp-4]
 004DAAE0    mov         eax,dword ptr [eax+208]
 004DAAE6    mov         edx,dword ptr [ebp-8]
 004DAAE9    call        TCanvas.SetPen
 004DAAEE    ret
>004DAAEF    jmp         @HandleFinally
>004DAAF4    jmp         004DAADD
 004DAAF6    xor         eax,eax
 004DAAF8    pop         edx
 004DAAF9    pop         ecx
 004DAAFA    pop         ecx
 004DAAFB    mov         dword ptr fs:[eax],edx
 004DAAFE    push        4DAB13
 004DAB03    mov         eax,dword ptr [ebp-8]
 004DAB06    call        TObject.Free
 004DAB0B    ret
>004DAB0C    jmp         @HandleFinally
>004DAB11    jmp         004DAB03
 004DAB13    pop         esi
 004DAB14    mov         esp,ebp
 004DAB16    pop         ebp
 004DAB17    ret
*}
end;

//004DAB18
{*procedure sub_004DAB18(?:TCustomGrid; ?:Integer; ?:Integer; ?:?);
begin
 004DAB18    push        ebp
 004DAB19    mov         ebp,esp
 004DAB1B    add         esp,0FFFFFFF4
 004DAB1E    push        esi
 004DAB1F    mov         dword ptr [ebp-0C],ecx
 004DAB22    mov         dword ptr [ebp-8],edx
 004DAB25    mov         dword ptr [ebp-4],eax
 004DAB28    mov         al,byte ptr [ebp+8]
 004DAB2B    push        eax
 004DAB2C    push        1
 004DAB2E    mov         ecx,dword ptr [ebp-0C]
 004DAB31    mov         edx,dword ptr [ebp-8]
 004DAB34    mov         eax,dword ptr [ebp-4]
 004DAB37    call        004DB69C
 004DAB3C    mov         eax,dword ptr [ebp-4]
 004DAB3F    call        004DDD14
 004DAB44    mov         eax,dword ptr [ebp-4]
 004DAB47    mov         si,0FFEB
 004DAB4B    call        @CallDynaInst
 004DAB50    pop         esi
 004DAB51    mov         esp,ebp
 004DAB53    pop         ebp
 004DAB54    ret         4
end;*}

//004DAB58
{*function sub_004DAB58(?:?; ?:?):?;
begin
 004DAB58    push        ebp
 004DAB59    mov         ebp,esp
 004DAB5B    add         esp,0FFFFFFE8
 004DAB5E    push        ebx
 004DAB5F    mov         dword ptr [ebp-8],edx
 004DAB62    mov         dword ptr [ebp-4],eax
 004DAB65    xor         eax,eax
 004DAB67    mov         dword ptr [ebp-0C],eax
 004DAB6A    mov         eax,dword ptr [ebp-4]
 004DAB6D    mov         eax,dword ptr [eax+18]
 004DAB70    cmp         eax,dword ptr [ebp-8]
>004DAB73    jle         004DAB7C
 004DAB75    xor         eax,eax
 004DAB77    mov         dword ptr [ebp-10],eax
>004DAB7A    jmp         004DAB99
 004DAB7C    mov         eax,dword ptr [ebp-4]
 004DAB7F    mov         eax,dword ptr [eax+1C]
 004DAB82    cmp         eax,dword ptr [ebp-8]
>004DAB85    jg          004DAB90
 004DAB87    mov         eax,dword ptr [ebp-4]
 004DAB8A    mov         eax,dword ptr [eax+4]
 004DAB8D    mov         dword ptr [ebp-0C],eax
 004DAB90    mov         eax,dword ptr [ebp-4]
 004DAB93    mov         eax,dword ptr [eax+1C]
 004DAB96    mov         dword ptr [ebp-10],eax
 004DAB99    mov         eax,dword ptr [ebp-10]
 004DAB9C    mov         edx,dword ptr [ebp-8]
 004DAB9F    dec         edx
 004DABA0    sub         edx,eax
>004DABA2    jl          004DABD9
 004DABA4    inc         edx
 004DABA5    mov         dword ptr [ebp-18],edx
 004DABA8    mov         dword ptr [ebp-14],eax
 004DABAB    mov         ebx,dword ptr [ebp-4]
 004DABAE    mov         edx,dword ptr [ebp-14]
 004DABB1    mov         eax,dword ptr [ebx+2C]
 004DABB4    call        dword ptr [ebx+28]
 004DABB7    mov         edx,dword ptr [ebp-4]
 004DABBA    add         eax,dword ptr [edx]
 004DABBC    add         dword ptr [ebp-0C],eax
 004DABBF    mov         eax,dword ptr [ebp-4]
 004DABC2    mov         eax,dword ptr [eax+0C]
 004DABC5    cmp         eax,dword ptr [ebp-0C]
>004DABC8    jge         004DABD1
 004DABCA    xor         eax,eax
 004DABCC    mov         dword ptr [ebp-0C],eax
>004DABCF    jmp         004DABD9
 004DABD1    inc         dword ptr [ebp-14]
 004DABD4    dec         dword ptr [ebp-18]
>004DABD7    jne         004DABAB
 004DABD9    mov         eax,dword ptr [ebp-0C]
 004DABDC    pop         ebx
 004DABDD    mov         esp,ebp
 004DABDF    pop         ebp
 004DABE0    ret
end;*}

//004DABE4
{*function sub_004DABE4(?:TGridDrawInfo; ?:?; ?:?; ?:?; ?:?; ?:?):?;
begin
 004DABE4    push        ebp
 004DABE5    mov         ebp,esp
 004DABE7    add         esp,0FFFFFFF0
 004DABEA    push        ebx
 004DABEB    mov         dword ptr [ebp-0C],ecx
 004DABEE    mov         dword ptr [ebp-8],edx
 004DABF1    mov         dword ptr [ebp-4],eax
 004DABF4    mov         byte ptr [ebp-0D],0
 004DABF8    mov         eax,dword ptr [ebp-4]
 004DABFB    mov         eax,dword ptr [eax+18]
 004DABFE    cmp         eax,dword ptr [ebp-8]
>004DAC01    jg          004DAC39
 004DAC03    mov         eax,dword ptr [ebp-4]
 004DAC06    mov         eax,dword ptr [eax+1C]
 004DAC09    cmp         eax,dword ptr [ebp-8]
>004DAC0C    jle         004DAC39
 004DAC0E    mov         eax,dword ptr [ebp-4]
 004DAC11    mov         eax,dword ptr [eax+1C]
 004DAC14    cmp         eax,dword ptr [ebp-0C]
>004DAC17    jle         004DAC30
 004DAC19    mov         eax,dword ptr [ebp+10]
 004DAC1C    mov         eax,dword ptr [eax-4]
 004DAC1F    xor         ecx,ecx
 004DAC21    mov         edx,10
 004DAC26    call        @FillChar
>004DAC2B    jmp         004DACFD
 004DAC30    mov         eax,dword ptr [ebp-4]
 004DAC33    mov         eax,dword ptr [eax+1C]
 004DAC36    mov         dword ptr [ebp-8],eax
 004DAC39    mov         eax,dword ptr [ebp-4]
 004DAC3C    mov         eax,dword ptr [eax+10]
 004DAC3F    cmp         eax,dword ptr [ebp-0C]
>004DAC42    jge         004DAC73
 004DAC44    mov         eax,dword ptr [ebp-4]
 004DAC47    mov         eax,dword ptr [eax+10]
 004DAC4A    mov         dword ptr [ebp-0C],eax
 004DAC4D    mov         eax,dword ptr [ebp-4]
 004DAC50    mov         eax,dword ptr [eax+20]
 004DAC53    dec         eax
 004DAC54    cmp         eax,dword ptr [ebp-0C]
>004DAC57    jle         004DAC5C
 004DAC59    inc         dword ptr [ebp-0C]
 004DAC5C    mov         eax,dword ptr [ebp+10]
 004DAC5F    push        eax
 004DAC60    mov         eax,dword ptr [ebp-4]
 004DAC63    mov         edx,dword ptr [ebp-0C]
 004DAC66    call        004DAB58
 004DAC6B    pop         ecx
 004DAC6C    test        eax,eax
>004DAC6E    jne         004DAC73
 004DAC70    dec         dword ptr [ebp-0C]
 004DAC73    mov         eax,dword ptr [ebp+10]
 004DAC76    push        eax
 004DAC77    mov         eax,dword ptr [ebp-4]
 004DAC7A    mov         edx,dword ptr [ebp-8]
 004DAC7D    call        004DAB58
 004DAC82    pop         ecx
 004DAC83    mov         edx,dword ptr [ebp+0C]
 004DAC86    mov         dword ptr [edx],eax
 004DAC88    mov         eax,dword ptr [ebp+10]
 004DAC8B    push        eax
 004DAC8C    mov         eax,dword ptr [ebp-4]
 004DAC8F    mov         edx,dword ptr [ebp-0C]
 004DAC92    call        004DAB58
 004DAC97    pop         ecx
 004DAC98    mov         edx,dword ptr [ebp+8]
 004DAC9B    mov         dword ptr [edx],eax
 004DAC9D    mov         eax,dword ptr [ebp+8]
 004DACA0    cmp         dword ptr [eax],0
>004DACA3    jne         004DACBD
 004DACA5    mov         ebx,dword ptr [ebp-4]
 004DACA8    mov         edx,dword ptr [ebp-8]
 004DACAB    mov         eax,dword ptr [ebx+2C]
 004DACAE    call        dword ptr [ebx+28]
 004DACB1    mov         edx,dword ptr [ebp+0C]
 004DACB4    add         eax,dword ptr [edx]
 004DACB6    mov         edx,dword ptr [ebp+8]
 004DACB9    mov         dword ptr [edx],eax
>004DACBB    jmp         004DACCE
 004DACBD    mov         ebx,dword ptr [ebp-4]
 004DACC0    mov         edx,dword ptr [ebp-0C]
 004DACC3    mov         eax,dword ptr [ebx+2C]
 004DACC6    call        dword ptr [ebx+28]
 004DACC9    mov         edx,dword ptr [ebp+8]
 004DACCC    add         dword ptr [edx],eax
 004DACCE    mov         eax,dword ptr [ebp+8]
 004DACD1    mov         eax,dword ptr [eax]
 004DACD3    mov         edx,dword ptr [ebp-4]
 004DACD6    cmp         eax,dword ptr [edx+0C]
>004DACD9    jle         004DACE6
 004DACDB    mov         eax,dword ptr [ebp-4]
 004DACDE    mov         eax,dword ptr [eax+0C]
 004DACE1    mov         edx,dword ptr [ebp+8]
 004DACE4    mov         dword ptr [edx],eax
 004DACE6    mov         eax,dword ptr [ebp+10]
 004DACE9    cmp         byte ptr [eax+8],0
>004DACED    je          004DACF9
 004DACEF    mov         eax,dword ptr [ebp-4]
 004DACF2    mov         eax,dword ptr [eax]
 004DACF4    mov         edx,dword ptr [ebp+8]
 004DACF7    add         dword ptr [edx],eax
 004DACF9    mov         byte ptr [ebp-0D],1
 004DACFD    mov         al,byte ptr [ebp-0D]
 004DAD00    pop         ebx
 004DAD01    mov         esp,ebp
 004DAD03    pop         ebp
 004DAD04    ret         8
end;*}

//004DAD08
{*procedure sub_004DAD08(?:TCustomGrid; ?:Integer; ?:?);
begin
 004DAD08    push        ebp
 004DAD09    mov         ebp,esp
 004DAD0B    add         esp,0FFFFFF80
 004DAD0E    push        esi
 004DAD0F    push        edi
 004DAD10    mov         esi,edx
 004DAD12    lea         edi,[ebp-1C]
 004DAD15    movs        dword ptr [edi],dword ptr [esi]
 004DAD16    movs        dword ptr [edi],dword ptr [esi]
 004DAD17    movs        dword ptr [edi],dword ptr [esi]
 004DAD18    movs        dword ptr [edi],dword ptr [esi]
 004DAD19    mov         dword ptr [ebp-4],ecx
 004DAD1C    mov         dword ptr [ebp-8],eax
 004DAD1F    mov         eax,dword ptr [ebp-4]
 004DAD22    xor         ecx,ecx
 004DAD24    mov         edx,10
 004DAD29    call        @FillChar
 004DAD2E    mov         eax,dword ptr [ebp-1C]
 004DAD31    cmp         eax,dword ptr [ebp-14]
>004DAD34    jg          004DADF6
 004DAD3A    mov         eax,dword ptr [ebp-18]
 004DAD3D    cmp         eax,dword ptr [ebp-10]
>004DAD40    jg          004DADF6
 004DAD46    lea         edx,[ebp-80]
 004DAD49    mov         eax,dword ptr [ebp-8]
 004DAD4C    call        TCustomGrid.CalcDrawInfo
 004DAD51    mov         eax,dword ptr [ebp-70]
 004DAD54    inc         eax
 004DAD55    cmp         eax,dword ptr [ebp-1C]
>004DAD58    jl          004DADF6
 004DAD5E    mov         eax,dword ptr [ebp-40]
 004DAD61    inc         eax
 004DAD62    cmp         eax,dword ptr [ebp-18]
>004DAD65    jl          004DADF6
 004DAD6B    push        ebp
 004DAD6C    mov         eax,dword ptr [ebp-4]
 004DAD6F    push        eax
 004DAD70    mov         eax,dword ptr [ebp-4]
 004DAD73    add         eax,8
 004DAD76    push        eax
 004DAD77    lea         eax,[ebp-80]
 004DAD7A    mov         ecx,dword ptr [ebp-14]
 004DAD7D    mov         edx,dword ptr [ebp-1C]
 004DAD80    call        004DABE4
 004DAD85    pop         ecx
 004DAD86    test        al,al
>004DAD88    je          004DADA8
 004DAD8A    push        ebp
 004DAD8B    mov         eax,dword ptr [ebp-4]
 004DAD8E    add         eax,4
 004DAD91    push        eax
 004DAD92    mov         eax,dword ptr [ebp-4]
 004DAD95    add         eax,0C
 004DAD98    push        eax
 004DAD99    lea         eax,[ebp-50]
 004DAD9C    mov         ecx,dword ptr [ebp-10]
 004DAD9F    mov         edx,dword ptr [ebp-18]
 004DADA2    call        004DABE4
 004DADA7    pop         ecx
 004DADA8    mov         eax,dword ptr [ebp-8]
 004DADAB    mov         si,0FFC8
 004DADAF    call        @CallDynaInst;TControl.sub_0048415C
 004DADB4    test        al,al
>004DADB6    je          004DADF6
 004DADB8    mov         eax,dword ptr [ebp-8]
 004DADBB    mov         eax,dword ptr [eax+208];TCustomGrid........................................................
 004DADC1    call        0042F308
 004DADC6    test        al,al
>004DADC8    jne         004DADF6
 004DADCA    mov         eax,dword ptr [ebp-4]
 004DADCD    mov         eax,dword ptr [eax]
 004DADCF    mov         dword ptr [ebp-0C],eax
 004DADD2    mov         eax,dword ptr [ebp-8]
 004DADD5    call        TControl.GetClientWidth
 004DADDA    mov         edx,dword ptr [ebp-4]
 004DADDD    sub         eax,dword ptr [edx+8]
 004DADE0    mov         edx,dword ptr [ebp-4]
 004DADE3    mov         dword ptr [edx],eax
 004DADE5    mov         eax,dword ptr [ebp-8]
 004DADE8    call        TControl.GetClientWidth
 004DADED    sub         eax,dword ptr [ebp-0C]
 004DADF0    mov         edx,dword ptr [ebp-4]
 004DADF3    mov         dword ptr [edx+8],eax
 004DADF6    pop         edi
 004DADF7    pop         esi
 004DADF8    mov         esp,ebp
 004DADFA    pop         ebp
 004DADFB    ret         4
end;*}

//004DAE00
procedure sub_004DAE00(?:TCustomGrid);
begin
{*
 004DAE00    push        ebp
 004DAE01    mov         ebp,esp
 004DAE03    push        ecx
 004DAE04    mov         dword ptr [ebp-4],eax
 004DAE07    mov         eax,dword ptr [ebp-4]
 004DAE0A    mov         eax,dword ptr [eax+238];TCustomGrid.FFixedCols:Integer
 004DAE10    mov         edx,dword ptr [ebp-4]
 004DAE13    mov         dword ptr [edx+258],eax;TCustomGrid.FTopLeft:TGridCoord
 004DAE19    mov         eax,dword ptr [ebp-4]
 004DAE1C    mov         eax,dword ptr [eax+23C];TCustomGrid.FFixedRows:Integer
 004DAE22    mov         edx,dword ptr [ebp-4]
 004DAE25    mov         dword ptr [edx+25C],eax;TCustomGrid.FTopLeft:Longint
 004DAE2B    mov         eax,dword ptr [ebp-4]
 004DAE2E    mov         edx,dword ptr [ebp-4]
 004DAE31    mov         ecx,dword ptr [edx+258];TCustomGrid.FTopLeft:TGridCoord
 004DAE37    mov         dword ptr [eax+228],ecx;TCustomGrid.FCurrent:TGridCoord
 004DAE3D    mov         ecx,dword ptr [edx+25C];TCustomGrid.FTopLeft:Longint
 004DAE43    mov         dword ptr [eax+22C],ecx;TCustomGrid.FCurrent:Longint
 004DAE49    mov         eax,dword ptr [ebp-4]
 004DAE4C    mov         edx,dword ptr [ebp-4]
 004DAE4F    mov         ecx,dword ptr [edx+228];TCustomGrid.FCurrent:TGridCoord
 004DAE55    mov         dword ptr [eax+210],ecx;TCustomGrid.FAnchor:TGridCoord
 004DAE5B    mov         ecx,dword ptr [edx+22C];TCustomGrid.FCurrent:Longint
 004DAE61    mov         dword ptr [eax+214],ecx
 004DAE67    mov         eax,dword ptr [ebp-4]
 004DAE6A    test        byte ptr [eax+249],10;TCustomGrid.?f249:byte
>004DAE71    je          004DAE86
 004DAE73    mov         eax,dword ptr [ebp-4]
 004DAE76    mov         eax,dword ptr [eax+21C];TCustomGrid.FColCount:Longint
 004DAE7C    dec         eax
 004DAE7D    mov         edx,dword ptr [ebp-4]
 004DAE80    mov         dword ptr [edx+210],eax;TCustomGrid.FAnchor:TGridCoord
 004DAE86    pop         ecx
 004DAE87    pop         ebp
 004DAE88    ret
*}
end;

//004DAE8C
procedure sub_004DAE8C(?:TCustomGrid; ?:TGridCoord; ?:Longint);
begin
{*
 004DAE8C    push        ebp
 004DAE8D    mov         ebp,esp
 004DAE8F    add         esp,0FFFFFFE4
 004DAE92    mov         dword ptr [ebp-0C],ecx
 004DAE95    mov         dword ptr [ebp-8],edx
 004DAE98    mov         dword ptr [ebp-4],eax
 004DAE9B    mov         eax,dword ptr [ebp-0C]
 004DAE9E    mov         dword ptr [ebp-18],eax
 004DAEA1    mov         eax,dword ptr [ebp-8]
 004DAEA4    mov         dword ptr [ebp-1C],eax
 004DAEA7    mov         eax,dword ptr [ebp-0C]
 004DAEAA    mov         dword ptr [ebp-10],eax
 004DAEAD    mov         eax,dword ptr [ebp-8]
 004DAEB0    mov         dword ptr [ebp-14],eax
 004DAEB3    lea         edx,[ebp-1C]
 004DAEB6    mov         eax,dword ptr [ebp-4]
 004DAEB9    call        004DAED8
 004DAEBE    mov         esp,ebp
 004DAEC0    pop         ebp
 004DAEC1    ret
*}
end;

//004DAEC4
{*procedure sub_004DAEC4(?:?);
begin
 004DAEC4    push        ebp
 004DAEC5    mov         ebp,esp
 004DAEC7    push        ecx
 004DAEC8    mov         dword ptr [ebp-4],eax
 004DAECB    mov         eax,dword ptr [ebp-4]
 004DAECE    mov         edx,dword ptr [eax]
 004DAED0    call        dword ptr [edx+7C]
 004DAED3    pop         ecx
 004DAED4    pop         ebp
 004DAED5    ret
end;*}

//004DAED8
procedure sub_004DAED8(?:TCustomGrid; ?:Byte);
begin
{*
 004DAED8    push        ebp
 004DAED9    mov         ebp,esp
 004DAEDB    add         esp,0FFFFFFDC
 004DAEDE    push        esi
 004DAEDF    push        edi
 004DAEE0    mov         esi,edx
 004DAEE2    lea         edi,[ebp-14]
 004DAEE5    movs        dword ptr [edi],dword ptr [esi]
 004DAEE6    movs        dword ptr [edi],dword ptr [esi]
 004DAEE7    movs        dword ptr [edi],dword ptr [esi]
 004DAEE8    movs        dword ptr [edi],dword ptr [esi]
 004DAEE9    mov         dword ptr [ebp-4],eax
 004DAEEC    mov         eax,dword ptr [ebp-4]
 004DAEEF    call        TWinControl.HandleAllocated
 004DAEF4    test        al,al
>004DAEF6    je          004DAF1C
 004DAEF8    push        1
 004DAEFA    lea         ecx,[ebp-24]
 004DAEFD    lea         edx,[ebp-14]
 004DAF00    mov         eax,dword ptr [ebp-4]
 004DAF03    call        004DAD08
 004DAF08    push        0
 004DAF0A    lea         eax,[ebp-24]
 004DAF0D    push        eax
 004DAF0E    mov         eax,dword ptr [ebp-4]
 004DAF11    call        TWinControl.GetHandle
 004DAF16    push        eax
 004DAF17    call        user32.InvalidateRect
 004DAF1C    pop         edi
 004DAF1D    pop         esi
 004DAF1E    mov         esp,ebp
 004DAF20    pop         ebp
 004DAF21    ret
*}
end;

//004DAF24
{*function sub_004DAF24(?:?):?;
begin
 004DAF24    push        ebp
 004DAF25    mov         ebp,esp
 004DAF27    push        ecx
 004DAF28    mov         eax,dword ptr [ebp+8]
 004DAF2B    cmp         dword ptr [eax-4],0
>004DAF2F    jne         004DAF42
 004DAF31    mov         eax,dword ptr [ebp+8]
 004DAF34    mov         eax,dword ptr [eax-8]
 004DAF37    mov         eax,dword ptr [eax+238]
 004DAF3D    mov         dword ptr [ebp-4],eax
>004DAF40    jmp         004DAF51
 004DAF42    mov         eax,dword ptr [ebp+8]
 004DAF45    mov         eax,dword ptr [eax-8]
 004DAF48    mov         eax,dword ptr [eax+23C]
 004DAF4E    mov         dword ptr [ebp-4],eax
 004DAF51    mov         eax,dword ptr [ebp-4]
 004DAF54    pop         ecx
 004DAF55    pop         ebp
 004DAF56    ret
end;*}

//004DAF58
{*function sub_004DAF58(?:?):?;
begin
 004DAF58    push        ebp
 004DAF59    mov         ebp,esp
 004DAF5B    push        ecx
 004DAF5C    mov         eax,dword ptr [ebp+8]
 004DAF5F    cmp         dword ptr [eax-4],0
>004DAF63    jne         004DAF70
 004DAF65    mov         eax,dword ptr [ebp+8]
 004DAF68    mov         eax,dword ptr [eax-10]
 004DAF6B    mov         dword ptr [ebp-4],eax
>004DAF6E    jmp         004DAF79
 004DAF70    mov         eax,dword ptr [ebp+8]
 004DAF73    mov         eax,dword ptr [eax-0C]
 004DAF76    mov         dword ptr [ebp-4],eax
 004DAF79    mov         eax,dword ptr [ebp-4]
 004DAF7C    pop         ecx
 004DAF7D    pop         ebp
 004DAF7E    ret
end;*}

//004DAF80
{*function sub_004DAF80(?:?):?;
begin
 004DAF80    push        ebp
 004DAF81    mov         ebp,esp
 004DAF83    add         esp,0FFFFFFF4
 004DAF86    lea         eax,[ebp-0C]
 004DAF89    push        eax
 004DAF8A    mov         eax,dword ptr [ebp+8]
 004DAF8D    lea         ecx,[eax-70]
 004DAF90    mov         eax,dword ptr [ebp+8]
 004DAF93    mov         eax,dword ptr [eax-8]
 004DAF96    lea         edx,[eax+258]
 004DAF9C    mov         eax,dword ptr [ebp+8]
 004DAF9F    mov         eax,dword ptr [eax-8]
 004DAFA2    call        TCustomGrid.CalcMaxTopLeft
 004DAFA7    mov         eax,dword ptr [ebp+8]
 004DAFAA    cmp         dword ptr [eax-4],0
>004DAFAE    jne         004DAFC4
 004DAFB0    mov         eax,dword ptr [ebp+8]
 004DAFB3    mov         eax,dword ptr [eax-8]
 004DAFB6    mov         eax,dword ptr [eax+258]
 004DAFBC    sub         eax,dword ptr [ebp-0C]
 004DAFBF    mov         dword ptr [ebp-4],eax
>004DAFC2    jmp         004DAFD6
 004DAFC4    mov         eax,dword ptr [ebp+8]
 004DAFC7    mov         eax,dword ptr [eax-8]
 004DAFCA    mov         eax,dword ptr [eax+25C]
 004DAFD0    sub         eax,dword ptr [ebp-8]
 004DAFD3    mov         dword ptr [ebp-4],eax
 004DAFD6    cmp         dword ptr [ebp-4],1
>004DAFDA    jge         004DAFE3
 004DAFDC    mov         dword ptr [ebp-4],1
 004DAFE3    mov         eax,dword ptr [ebp-4]
 004DAFE6    mov         esp,ebp
 004DAFE8    pop         ebp
 004DAFE9    ret
end;*}

//004DAFEC
{*function sub_004DAFEC(?:?):?;
begin
 004DAFEC    push        ebp
 004DAFED    mov         ebp,esp
 004DAFEF    add         esp,0FFFFFF98
 004DAFF2    lea         edx,[ebp-68]
 004DAFF5    mov         eax,dword ptr [ebp+8]
 004DAFF8    mov         eax,dword ptr [eax-8]
 004DAFFB    call        TCustomGrid.CalcDrawInfo
 004DB000    mov         eax,dword ptr [ebp+8]
 004DB003    cmp         dword ptr [eax-4],0
>004DB007    jne         004DB01D
 004DB009    mov         eax,dword ptr [ebp+8]
 004DB00C    mov         eax,dword ptr [eax-8]
 004DB00F    mov         edx,dword ptr [ebp-58]
 004DB012    sub         edx,dword ptr [eax+258]
 004DB018    mov         dword ptr [ebp-4],edx
>004DB01B    jmp         004DB02F
 004DB01D    mov         eax,dword ptr [ebp+8]
 004DB020    mov         eax,dword ptr [eax-8]
 004DB023    mov         edx,dword ptr [ebp-28]
 004DB026    sub         edx,dword ptr [eax+25C]
 004DB02C    mov         dword ptr [ebp-4],edx
 004DB02F    cmp         dword ptr [ebp-4],1
>004DB033    jge         004DB03C
 004DB035    mov         dword ptr [ebp-4],1
 004DB03C    mov         eax,dword ptr [ebp-4]
 004DB03F    mov         esp,ebp
 004DB041    pop         ebp
 004DB042    ret
end;*}

//004DB044
{*function sub_004DB044(?:?; ?:?; ?:?):?;
begin
 004DB044    push        ebp
 004DB045    mov         ebp,esp
 004DB047    add         esp,0FFFFFFF4
 004DB04A    push        ebx
 004DB04B    push        esi
 004DB04C    mov         dword ptr [ebp-8],edx
 004DB04F    mov         dword ptr [ebp-4],eax
 004DB052    mov         eax,dword ptr [ebp-4]
 004DB055    mov         dword ptr [ebp-0C],eax
 004DB058    mov         eax,dword ptr [ebp+8]
 004DB05B    mov         eax,dword ptr [eax-74]
 004DB05E    cmp         eax,7
>004DB061    ja          004DB193
 004DB067    jmp         dword ptr [eax*4+4DB06E]
 004DB067    dd          004DB08E
 004DB067    dd          004DB099
 004DB067    dd          004DB0A4
 004DB067    dd          004DB0B9
 004DB067    dd          004DB0CE
 004DB067    dd          004DB0CE
 004DB067    dd          004DB186
 004DB067    dd          004DB177
 004DB08E    mov         eax,dword ptr [ebp-8]
 004DB091    sub         dword ptr [ebp-0C],eax
>004DB094    jmp         004DB193
 004DB099    mov         eax,dword ptr [ebp-8]
 004DB09C    add         dword ptr [ebp-0C],eax
>004DB09F    jmp         004DB193
 004DB0A4    mov         eax,dword ptr [ebp+8]
 004DB0A7    push        eax
 004DB0A8    call        004DAF80
 004DB0AD    pop         ecx
 004DB0AE    imul        dword ptr [ebp-8]
 004DB0B1    sub         dword ptr [ebp-0C],eax
>004DB0B4    jmp         004DB193
 004DB0B9    mov         eax,dword ptr [ebp+8]
 004DB0BC    push        eax
 004DB0BD    call        004DAFEC
 004DB0C2    pop         ecx
 004DB0C3    imul        dword ptr [ebp-8]
 004DB0C6    add         dword ptr [ebp-0C],eax
>004DB0C9    jmp         004DB193
 004DB0CE    mov         eax,dword ptr [ebp+8]
 004DB0D1    mov         eax,dword ptr [eax-8]
 004DB0D4    test        byte ptr [eax+249],40
>004DB0DB    jne         004DB0EA
 004DB0DD    mov         eax,dword ptr [ebp+8]
 004DB0E0    cmp         dword ptr [eax-74],4
>004DB0E4    jne         004DB193
 004DB0EA    mov         eax,dword ptr [ebp+8]
 004DB0ED    mov         eax,dword ptr [eax-8]
 004DB0F0    mov         si,0FFC8
 004DB0F4    call        @CallDynaInst
 004DB0F9    test        al,al
>004DB0FB    je          004DB103
 004DB0FD    cmp         dword ptr [ebp-8],1
>004DB101    jne         004DB13D
 004DB103    push        7F
 004DB105    mov         eax,dword ptr [ebp+8]
 004DB108    push        eax
 004DB109    call        004DAF58
 004DB10E    pop         ecx
 004DB10F    mov         ebx,eax
 004DB111    mov         eax,dword ptr [ebp+8]
 004DB114    push        eax
 004DB115    call        004DAF24
 004DB11A    pop         ecx
 004DB11B    sub         ebx,eax
 004DB11D    push        ebx
 004DB11E    mov         eax,dword ptr [ebp+8]
 004DB121    mov         eax,dword ptr [eax+0C]
 004DB124    push        eax
 004DB125    call        kernel32.MulDiv
 004DB12A    mov         ebx,eax
 004DB12C    mov         eax,dword ptr [ebp+8]
 004DB12F    push        eax
 004DB130    call        004DAF24
 004DB135    pop         ecx
 004DB136    add         ebx,eax
 004DB138    mov         dword ptr [ebp-0C],ebx
>004DB13B    jmp         004DB193
 004DB13D    push        7F
 004DB13F    mov         eax,dword ptr [ebp+8]
 004DB142    push        eax
 004DB143    call        004DAF58
 004DB148    pop         ecx
 004DB149    mov         ebx,eax
 004DB14B    mov         eax,dword ptr [ebp+8]
 004DB14E    push        eax
 004DB14F    call        004DAF24
 004DB154    pop         ecx
 004DB155    sub         ebx,eax
 004DB157    push        ebx
 004DB158    mov         eax,dword ptr [ebp+8]
 004DB15B    mov         eax,dword ptr [eax+0C]
 004DB15E    push        eax
 004DB15F    call        kernel32.MulDiv
 004DB164    push        eax
 004DB165    mov         eax,dword ptr [ebp+8]
 004DB168    push        eax
 004DB169    call        004DAF58
 004DB16E    pop         ecx
 004DB16F    pop         edx
 004DB170    sub         eax,edx
 004DB172    mov         dword ptr [ebp-0C],eax
>004DB175    jmp         004DB193
 004DB177    mov         eax,dword ptr [ebp+8]
 004DB17A    push        eax
 004DB17B    call        004DAF58
 004DB180    pop         ecx
 004DB181    mov         dword ptr [ebp-0C],eax
>004DB184    jmp         004DB193
 004DB186    mov         eax,dword ptr [ebp+8]
 004DB189    push        eax
 004DB18A    call        004DAF24
 004DB18F    pop         ecx
 004DB190    mov         dword ptr [ebp-0C],eax
 004DB193    mov         eax,dword ptr [ebp-0C]
 004DB196    pop         esi
 004DB197    pop         ebx
 004DB198    mov         esp,ebp
 004DB19A    pop         ebp
 004DB19B    ret
end;*}

//004DB19C
{*procedure sub_004DB19C(?:?; ?:?; ?:?);
begin
 004DB19C    push        ebp
 004DB19D    mov         ebp,esp
 004DB19F    add         esp,0FFFFFFD8
 004DB1A2    push        esi
 004DB1A3    mov         dword ptr [ebp-8],edx
 004DB1A6    mov         dword ptr [ebp-4],eax
 004DB1A9    mov         eax,dword ptr [ebp+8]
 004DB1AC    mov         eax,dword ptr [eax-8]
 004DB1AF    mov         eax,dword ptr [eax+288]
 004DB1B5    mov         dword ptr [ebp-0C],eax
 004DB1B8    mov         eax,dword ptr [ebp+8]
 004DB1BB    mov         edx,dword ptr [eax-54]
 004DB1BE    mov         eax,dword ptr [ebp+8]
 004DB1C1    mov         eax,dword ptr [eax-8]
 004DB1C4    call        004DD40C
 004DB1C9    mov         dword ptr [ebp-18],eax
 004DB1CC    mov         eax,dword ptr [ebp+8]
 004DB1CF    mov         eax,dword ptr [eax-8]
 004DB1D2    call        TControl.GetClientWidth
 004DB1D7    mov         edx,dword ptr [ebp+8]
 004DB1DA    sub         eax,dword ptr [edx-6C]
 004DB1DD    mov         dword ptr [ebp-14],eax
 004DB1E0    mov         eax,dword ptr [ebp-4]
 004DB1E3    cmp         eax,7
>004DB1E6    ja          004DB2C6
 004DB1EC    jmp         dword ptr [eax*4+4DB1F3]
 004DB1EC    dd          004DB213
 004DB1EC    dd          004DB237
 004DB1EC    dd          004DB258
 004DB1EC    dd          004DB266
 004DB1EC    dd          004DB274
 004DB1EC    dd          004DB274
 004DB1EC    dd          004DB2BD
 004DB1EC    dd          004DB2B6
 004DB213    mov         eax,dword ptr [ebp+8]
 004DB216    mov         eax,dword ptr [eax-8]
 004DB219    mov         eax,dword ptr [eax+208]
 004DB21F    mov         edx,4DB37C;'0'
 004DB224    call        0042F43C
 004DB229    mov         edx,dword ptr [ebp+8]
 004DB22C    imul        dword ptr [edx-78]
 004DB22F    sub         dword ptr [ebp-0C],eax
>004DB232    jmp         004DB2C6
 004DB237    mov         eax,dword ptr [ebp+8]
 004DB23A    mov         eax,dword ptr [eax-8]
 004DB23D    mov         eax,dword ptr [eax+208]
 004DB243    mov         edx,4DB37C;'0'
 004DB248    call        0042F43C
 004DB24D    mov         edx,dword ptr [ebp+8]
 004DB250    imul        dword ptr [edx-78]
 004DB253    add         dword ptr [ebp-0C],eax
>004DB256    jmp         004DB2C6
 004DB258    mov         eax,dword ptr [ebp+8]
 004DB25B    mov         eax,dword ptr [eax-78]
 004DB25E    imul        dword ptr [ebp-14]
 004DB261    sub         dword ptr [ebp-0C],eax
>004DB264    jmp         004DB2C6
 004DB266    mov         eax,dword ptr [ebp+8]
 004DB269    mov         eax,dword ptr [eax-78]
 004DB26C    imul        dword ptr [ebp-14]
 004DB26F    add         dword ptr [ebp-0C],eax
>004DB272    jmp         004DB2C6
 004DB274    mov         eax,dword ptr [ebp+8]
 004DB277    mov         eax,dword ptr [eax-8]
 004DB27A    test        byte ptr [eax+249],40
>004DB281    jne         004DB289
 004DB283    cmp         dword ptr [ebp-4],4
>004DB287    jne         004DB2C6
 004DB289    mov         eax,dword ptr [ebp+8]
 004DB28C    mov         eax,dword ptr [eax-8]
 004DB28F    mov         si,0FFC8
 004DB293    call        @CallDynaInst
 004DB298    test        al,al
>004DB29A    jne         004DB2A4
 004DB29C    mov         eax,dword ptr [ebp-8]
 004DB29F    mov         dword ptr [ebp-0C],eax
>004DB2A2    jmp         004DB2C6
 004DB2A4    mov         eax,dword ptr [ebp+8]
 004DB2A7    push        eax
 004DB2A8    call        004DAF58
 004DB2AD    pop         ecx
 004DB2AE    sub         eax,dword ptr [ebp-8]
 004DB2B1    mov         dword ptr [ebp-0C],eax
>004DB2B4    jmp         004DB2C6
 004DB2B6    xor         eax,eax
 004DB2B8    mov         dword ptr [ebp-0C],eax
>004DB2BB    jmp         004DB2C6
 004DB2BD    mov         eax,dword ptr [ebp-18]
 004DB2C0    sub         eax,dword ptr [ebp-14]
 004DB2C3    mov         dword ptr [ebp-0C],eax
 004DB2C6    cmp         dword ptr [ebp-0C],0
>004DB2CA    jge         004DB2D3
 004DB2CC    xor         eax,eax
 004DB2CE    mov         dword ptr [ebp-0C],eax
>004DB2D1    jmp         004DB2E7
 004DB2D3    mov         eax,dword ptr [ebp-18]
 004DB2D6    sub         eax,dword ptr [ebp-14]
 004DB2D9    cmp         eax,dword ptr [ebp-0C]
>004DB2DC    jg          004DB2E7
 004DB2DE    mov         eax,dword ptr [ebp-18]
 004DB2E1    sub         eax,dword ptr [ebp-14]
 004DB2E4    mov         dword ptr [ebp-0C],eax
 004DB2E7    mov         eax,dword ptr [ebp+8]
 004DB2EA    mov         eax,dword ptr [eax-8]
 004DB2ED    mov         eax,dword ptr [eax+288]
 004DB2F3    cmp         eax,dword ptr [ebp-0C]
>004DB2F6    je          004DB36E
 004DB2F8    mov         eax,dword ptr [ebp+8]
 004DB2FB    mov         eax,dword ptr [eax-8]
 004DB2FE    mov         eax,dword ptr [eax+288]
 004DB304    mov         dword ptr [ebp-10],eax
 004DB307    mov         eax,dword ptr [ebp+8]
 004DB30A    mov         eax,dword ptr [eax-8]
 004DB30D    mov         edx,dword ptr [ebp-0C]
 004DB310    mov         dword ptr [eax+288],edx
 004DB316    mov         edx,dword ptr [ebp-10]
 004DB319    sub         edx,dword ptr [ebp-0C]
 004DB31C    mov         eax,dword ptr [ebp+8]
 004DB31F    mov         eax,dword ptr [eax-8]
 004DB322    xor         ecx,ecx
 004DB324    call        004DBB70
 004DB329    lea         eax,[ebp-28]
 004DB32C    xor         ecx,ecx
 004DB32E    mov         edx,10
 004DB333    call        @FillChar
 004DB338    mov         eax,dword ptr [ebp+8]
 004DB33B    mov         eax,dword ptr [eax-8]
 004DB33E    mov         eax,dword ptr [eax+23C]
 004DB344    mov         dword ptr [ebp-1C],eax
 004DB347    mov         eax,dword ptr [ebp+8]
 004DB34A    mov         eax,dword ptr [eax-8]
 004DB34D    lea         edx,[ebp-28]
 004DB350    call        004DAED8
 004DB355    mov         eax,dword ptr [ebp+8]
 004DB358    mov         eax,dword ptr [eax-8]
 004DB35B    mov         edx,dword ptr [eax]
 004DB35D    call        dword ptr [edx+88]
 004DB363    mov         eax,dword ptr [ebp+8]
 004DB366    mov         eax,dword ptr [eax-8]
 004DB369    call        TCustomGrid.UpdateScrollPos
 004DB36E    pop         esi
 004DB36F    mov         esp,ebp
 004DB371    pop         ebp
 004DB372    ret
end;*}

//004DB380
{*procedure sub_004DB380(?:TCustomGrid; ?:?; ?:?; ?:?; ?:?);
begin
 004DB380    push        ebp
 004DB381    mov         ebp,esp
 004DB383    add         esp,0FFFFFF74
 004DB389    push        esi
 004DB38A    mov         dword ptr [ebp-74],ecx
 004DB38D    mov         dword ptr [ebp-4],edx
 004DB390    mov         dword ptr [ebp-8],eax
 004DB393    mov         eax,dword ptr [ebp-8]
 004DB396    mov         si,0FFC8
 004DB39A    call        @CallDynaInst
 004DB39F    test        al,al
>004DB3A1    je          004DB3A9
 004DB3A3    cmp         byte ptr [ebp+8],0
>004DB3A7    jne         004DB3B2
 004DB3A9    mov         dword ptr [ebp-78],1
>004DB3B0    jmp         004DB3B9
 004DB3B2    mov         dword ptr [ebp-78],0FFFFFFFF
 004DB3B9    mov         eax,dword ptr [ebp-8]
 004DB3BC    cmp         byte ptr [eax+57],0
>004DB3C0    je          004DB3F2
 004DB3C2    mov         eax,dword ptr [ebp-8]
 004DB3C5    mov         si,0FFB8
 004DB3C9    call        @CallDynaInst
 004DB3CE    test        al,al
>004DB3D0    je          004DB3F2
 004DB3D2    mov         eax,dword ptr [ebp-8]
 004DB3D5    cmp         byte ptr [eax+1A4],0
>004DB3DC    je          004DB3F2
 004DB3DE    mov         eax,dword ptr [ebp-8]
 004DB3E1    test        byte ptr [eax+1C],10
>004DB3E5    jne         004DB3F2
 004DB3E7    mov         eax,dword ptr [ebp-8]
 004DB3EA    mov         edx,dword ptr [eax]
 004DB3EC    call        dword ptr [edx+0C4]
 004DB3F2    lea         edx,[ebp-70]
 004DB3F5    mov         eax,dword ptr [ebp-8]
 004DB3F8    call        TCustomGrid.CalcDrawInfo
 004DB3FD    cmp         dword ptr [ebp-4],0
>004DB401    jne         004DB421
 004DB403    mov         eax,dword ptr [ebp-8]
 004DB406    cmp         dword ptr [eax+21C],1
>004DB40D    jne         004DB421
 004DB40F    push        ebp
 004DB410    mov         edx,dword ptr [ebp+0C]
 004DB413    mov         eax,dword ptr [ebp-74]
 004DB416    call        004DB19C
 004DB41B    pop         ecx
>004DB41C    jmp         004DB579
 004DB421    mov         eax,dword ptr [ebp-8]
 004DB424    mov         eax,dword ptr [eax+21C]
 004DB42A    dec         eax
 004DB42B    mov         dword ptr [ebp-10],eax
 004DB42E    mov         eax,dword ptr [ebp-8]
 004DB431    mov         eax,dword ptr [eax+24C]
 004DB437    dec         eax
 004DB438    mov         dword ptr [ebp-0C],eax
 004DB43B    lea         eax,[ebp-8C]
 004DB441    push        eax
 004DB442    lea         ecx,[ebp-70]
 004DB445    lea         edx,[ebp-10]
 004DB448    mov         eax,dword ptr [ebp-8]
 004DB44B    call        TCustomGrid.CalcMaxTopLeft
 004DB450    mov         eax,dword ptr [ebp-8C]
 004DB456    mov         dword ptr [ebp-10],eax
 004DB459    mov         eax,dword ptr [ebp-88]
 004DB45F    mov         dword ptr [ebp-0C],eax
 004DB462    mov         eax,dword ptr [ebp-8]
 004DB465    mov         edx,dword ptr [eax+258]
 004DB46B    mov         dword ptr [ebp-80],edx
 004DB46E    mov         edx,dword ptr [eax+25C]
 004DB474    mov         dword ptr [ebp-7C],edx
 004DB477    cmp         dword ptr [ebp-4],0
>004DB47B    jne         004DB4C8
 004DB47D    mov         eax,dword ptr [ebp-80]
 004DB480    mov         dword ptr [ebp-84],eax
 004DB486    push        ebp
 004DB487    mov         edx,dword ptr [ebp-78]
 004DB48A    mov         eax,dword ptr [ebp-80]
 004DB48D    call        004DB044
 004DB492    pop         ecx
 004DB493    mov         dword ptr [ebp-80],eax
 004DB496    mov         eax,dword ptr [ebp-8]
 004DB499    mov         eax,dword ptr [eax+238]
 004DB49F    cmp         eax,dword ptr [ebp-80]
>004DB4A2    jge         004DB513
 004DB4A4    mov         eax,dword ptr [ebp-80]
 004DB4A7    cmp         eax,dword ptr [ebp-10]
>004DB4AA    jge         004DB513
 004DB4AC    mov         edx,dword ptr [ebp-80]
 004DB4AF    mov         eax,dword ptr [ebp-8]
 004DB4B2    call        004DD40C
 004DB4B7    test        eax,eax
>004DB4B9    jg          004DB513
 004DB4BB    mov         eax,dword ptr [ebp-84]
 004DB4C1    cmp         eax,dword ptr [ebp-80]
>004DB4C4    jne         004DB47D
>004DB4C6    jmp         004DB513
 004DB4C8    mov         eax,dword ptr [ebp-7C]
 004DB4CB    mov         dword ptr [ebp-84],eax
 004DB4D1    push        ebp
 004DB4D2    mov         edx,1
 004DB4D7    mov         eax,dword ptr [ebp-7C]
 004DB4DA    call        004DB044
 004DB4DF    pop         ecx
 004DB4E0    mov         dword ptr [ebp-7C],eax
 004DB4E3    mov         eax,dword ptr [ebp-8]
 004DB4E6    mov         eax,dword ptr [eax+23C]
 004DB4EC    cmp         eax,dword ptr [ebp-7C]
>004DB4EF    jge         004DB513
 004DB4F1    mov         eax,dword ptr [ebp-7C]
 004DB4F4    cmp         eax,dword ptr [ebp-0C]
>004DB4F7    jge         004DB513
 004DB4F9    mov         edx,dword ptr [ebp-7C]
 004DB4FC    mov         eax,dword ptr [ebp-8]
 004DB4FF    call        004DD45C
 004DB504    test        eax,eax
>004DB506    jg          004DB513
 004DB508    mov         eax,dword ptr [ebp-84]
 004DB50E    cmp         eax,dword ptr [ebp-7C]
>004DB511    jne         004DB4C8
 004DB513    mov         edx,dword ptr [ebp-80]
 004DB516    mov         eax,dword ptr [ebp-10]
 004DB519    call        004373CC
 004DB51E    mov         edx,eax
 004DB520    mov         eax,dword ptr [ebp-8]
 004DB523    mov         eax,dword ptr [eax+238]
 004DB529    call        00437470
 004DB52E    mov         dword ptr [ebp-80],eax
 004DB531    mov         edx,dword ptr [ebp-7C]
 004DB534    mov         eax,dword ptr [ebp-0C]
 004DB537    call        004373CC
 004DB53C    mov         edx,eax
 004DB53E    mov         eax,dword ptr [ebp-8]
 004DB541    mov         eax,dword ptr [eax+23C]
 004DB547    call        00437470
 004DB54C    mov         dword ptr [ebp-7C],eax
 004DB54F    mov         eax,dword ptr [ebp-8]
 004DB552    mov         eax,dword ptr [eax+258]
 004DB558    cmp         eax,dword ptr [ebp-80]
>004DB55B    jne         004DB56B
 004DB55D    mov         eax,dword ptr [ebp-8]
 004DB560    mov         eax,dword ptr [eax+25C]
 004DB566    cmp         eax,dword ptr [ebp-7C]
>004DB569    je          004DB579
 004DB56B    mov         ecx,dword ptr [ebp-7C]
 004DB56E    mov         edx,dword ptr [ebp-80]
 004DB571    mov         eax,dword ptr [ebp-8]
 004DB574    call        004DB83C
 004DB579    pop         esi
 004DB57A    mov         esp,ebp
 004DB57C    pop         ebp
 004DB57D    ret         8
end;*}

//004DB580
{*procedure sub_004DB580(?:?; ?:?; ?:?; ?:?);
begin
 004DB580    push        ebp
 004DB581    mov         ebp,esp
 004DB583    add         esp,0FFFFFFEC
 004DB586    mov         dword ptr [ebp-0C],ecx
 004DB589    mov         dword ptr [ebp-8],edx
 004DB58C    mov         dword ptr [ebp-4],eax
 004DB58F    mov         eax,dword ptr [ebp-8]
 004DB592    mov         eax,dword ptr [eax]
 004DB594    cmp         eax,dword ptr [ebp-0C]
>004DB597    jne         004DB5A3
 004DB599    mov         eax,dword ptr [ebp-8]
 004DB59C    mov         edx,dword ptr [ebp+8]
 004DB59F    mov         dword ptr [eax],edx
>004DB5A1    jmp         004DB5EB
 004DB5A3    mov         eax,dword ptr [ebp-0C]
 004DB5A6    mov         dword ptr [ebp-10],eax
 004DB5A9    mov         eax,dword ptr [ebp+8]
 004DB5AC    mov         dword ptr [ebp-14],eax
 004DB5AF    mov         eax,dword ptr [ebp-0C]
 004DB5B2    cmp         eax,dword ptr [ebp+8]
>004DB5B5    jle         004DB5C3
 004DB5B7    mov         eax,dword ptr [ebp+8]
 004DB5BA    mov         dword ptr [ebp-10],eax
 004DB5BD    mov         eax,dword ptr [ebp-0C]
 004DB5C0    mov         dword ptr [ebp-14],eax
 004DB5C3    mov         eax,dword ptr [ebp-8]
 004DB5C6    mov         eax,dword ptr [eax]
 004DB5C8    cmp         eax,dword ptr [ebp-10]
>004DB5CB    jl          004DB5EB
 004DB5CD    mov         eax,dword ptr [ebp-8]
 004DB5D0    mov         eax,dword ptr [eax]
 004DB5D2    cmp         eax,dword ptr [ebp-14]
>004DB5D5    jg          004DB5EB
 004DB5D7    mov         eax,dword ptr [ebp-0C]
 004DB5DA    cmp         eax,dword ptr [ebp+8]
>004DB5DD    jle         004DB5E6
 004DB5DF    mov         eax,dword ptr [ebp-8]
 004DB5E2    inc         dword ptr [eax]
>004DB5E4    jmp         004DB5EB
 004DB5E6    mov         eax,dword ptr [ebp-8]
 004DB5E9    dec         dword ptr [eax]
 004DB5EB    mov         esp,ebp
 004DB5ED    pop         ebp
 004DB5EE    ret         4
end;*}

//004DB5F4
procedure sub_004DB5F4(?:TCustomGrid; ?:TGridCoord);
begin
{*
 004DB5F4    push        ebp
 004DB5F5    mov         ebp,esp
 004DB5F7    add         esp,0FFFFFFE8
 004DB5FA    mov         dword ptr [ebp-8],edx
 004DB5FD    mov         dword ptr [ebp-4],eax
 004DB600    mov         eax,dword ptr [ebp-4]
 004DB603    mov         ax,word ptr [eax+248]
 004DB60A    and         ax,word ptr ds:[4DB694];0x410 gvar_004DB694
 004DB611    mov         dx,word ptr ds:[4DB698];0x10 gvar_004DB698
 004DB618    cmp         dx,ax
>004DB61B    jne         004DB676
 004DB61D    lea         edx,[ebp-18]
 004DB620    mov         eax,dword ptr [ebp-4]
 004DB623    call        004DD4AC
 004DB628    mov         eax,dword ptr [ebp-8]
 004DB62B    mov         edx,dword ptr [ebp-4]
 004DB62E    mov         ecx,dword ptr [eax]
 004DB630    mov         dword ptr [edx+210],ecx
 004DB636    mov         ecx,dword ptr [eax+4]
 004DB639    mov         dword ptr [edx+214],ecx
 004DB63F    mov         eax,dword ptr [ebp-4]
 004DB642    test        byte ptr [eax+249],10
>004DB649    je          004DB65E
 004DB64B    mov         eax,dword ptr [ebp-4]
 004DB64E    mov         eax,dword ptr [eax+21C]
 004DB654    dec         eax
 004DB655    mov         edx,dword ptr [ebp-4]
 004DB658    mov         dword ptr [edx+210],eax
 004DB65E    mov         edx,dword ptr [ebp-8]
 004DB661    mov         eax,dword ptr [ebp-4]
 004DB664    call        004DA6E4
 004DB669    lea         edx,[ebp-18]
 004DB66C    mov         eax,dword ptr [ebp-4]
 004DB66F    call        004DB8F0
>004DB674    jmp         004DB68D
 004DB676    push        1
 004DB678    push        1
 004DB67A    mov         ecx,dword ptr [ebp-8]
 004DB67D    mov         ecx,dword ptr [ecx+4]
 004DB680    mov         edx,dword ptr [ebp-8]
 004DB683    mov         edx,dword ptr [edx]
 004DB685    mov         eax,dword ptr [ebp-4]
 004DB688    call        004DB69C
 004DB68D    mov         esp,ebp
 004DB68F    pop         ebp
 004DB690    ret
*}
end;

//004DB69C
{*procedure sub_004DB69C(?:TCustomGrid; ?:TGridCoord; ?:Longint; ?:?; ?:?);
begin
 004DB69C    push        ebp
 004DB69D    mov         ebp,esp
 004DB69F    add         esp,0FFFFFFD4
 004DB6A2    push        ebx
 004DB6A3    xor         ebx,ebx
 004DB6A5    mov         dword ptr [ebp-2C],ebx
 004DB6A8    mov         dword ptr [ebp-0C],ecx
 004DB6AB    mov         dword ptr [ebp-8],edx
 004DB6AE    mov         dword ptr [ebp-4],eax
 004DB6B1    xor         eax,eax
 004DB6B3    push        ebp
 004DB6B4    push        4DB82D
 004DB6B9    push        dword ptr fs:[eax]
 004DB6BC    mov         dword ptr fs:[eax],esp
 004DB6BF    cmp         dword ptr [ebp-8],0
>004DB6C3    jl          004DB6E7
 004DB6C5    cmp         dword ptr [ebp-0C],0
>004DB6C9    jl          004DB6E7
 004DB6CB    mov         eax,dword ptr [ebp-8]
 004DB6CE    mov         edx,dword ptr [ebp-4]
 004DB6D1    cmp         eax,dword ptr [edx+21C];TCustomGrid.FColCount:Longint
>004DB6D7    jge         004DB6E7
 004DB6D9    mov         eax,dword ptr [ebp-0C]
 004DB6DC    mov         edx,dword ptr [ebp-4]
 004DB6DF    cmp         eax,dword ptr [edx+24C];TCustomGrid.FRowCount:Longint
>004DB6E5    jl          004DB6FC
 004DB6E7    lea         edx,[ebp-2C]
 004DB6EA    mov         eax,[0056E410];^SIndexOutOfRange:TResStringRec
 004DB6EF    call        LoadResString
 004DB6F4    mov         eax,dword ptr [ebp-2C]
 004DB6F7    call        004D6E0C
 004DB6FC    mov         ecx,dword ptr [ebp-0C]
 004DB6FF    mov         edx,dword ptr [ebp-8]
 004DB702    mov         eax,dword ptr [ebp-4]
 004DB705    mov         ebx,dword ptr [eax]
 004DB707    call        dword ptr [ebx+0DC];TCustomGrid.sub_004D8CF8
 004DB70D    test        al,al
>004DB70F    je          004DB817
 004DB715    lea         edx,[ebp-28]
 004DB718    mov         eax,dword ptr [ebp-4]
 004DB71B    call        004DD4AC
 004DB720    mov         eax,dword ptr [ebp-4]
 004DB723    mov         edx,dword ptr [eax+228];TCustomGrid.FCurrent:TGridCoord
 004DB729    mov         dword ptr [ebp-14],edx
 004DB72C    mov         edx,dword ptr [eax+22C];TCustomGrid.FCurrent:Longint
 004DB732    mov         dword ptr [ebp-10],edx
 004DB735    mov         eax,dword ptr [ebp-8]
 004DB738    mov         edx,dword ptr [ebp-4]
 004DB73B    mov         dword ptr [edx+228],eax;TCustomGrid.FCurrent:TGridCoord
 004DB741    mov         eax,dword ptr [ebp-0C]
 004DB744    mov         edx,dword ptr [ebp-4]
 004DB747    mov         dword ptr [edx+22C],eax;TCustomGrid.FCurrent:Longint
 004DB74D    mov         eax,dword ptr [ebp-4]
 004DB750    test        byte ptr [eax+249],20;TCustomGrid.?f249:byte
>004DB757    jne         004DB761
 004DB759    mov         eax,dword ptr [ebp-4]
 004DB75C    call        004D8764
 004DB761    cmp         byte ptr [ebp+0C],0
>004DB765    jne         004DB773
 004DB767    mov         eax,dword ptr [ebp-4]
 004DB76A    test        byte ptr [eax+248],10;TCustomGrid.FOptions:TGridOptions
>004DB771    jne         004DB7B0
 004DB773    mov         eax,dword ptr [ebp-4]
 004DB776    mov         edx,dword ptr [ebp-4]
 004DB779    mov         ecx,dword ptr [edx+228];TCustomGrid.FCurrent:TGridCoord
 004DB77F    mov         dword ptr [eax+210],ecx;TCustomGrid.FAnchor:TGridCoord
 004DB785    mov         ecx,dword ptr [edx+22C];TCustomGrid.FCurrent:Longint
 004DB78B    mov         dword ptr [eax+214],ecx
 004DB791    mov         eax,dword ptr [ebp-4]
 004DB794    test        byte ptr [eax+249],10;TCustomGrid.?f249:byte
>004DB79B    je          004DB7B0
 004DB79D    mov         eax,dword ptr [ebp-4]
 004DB7A0    mov         eax,dword ptr [eax+21C];TCustomGrid.FColCount:Longint
 004DB7A6    dec         eax
 004DB7A7    mov         edx,dword ptr [ebp-4]
 004DB7AA    mov         dword ptr [edx+210],eax;TCustomGrid.FAnchor:TGridCoord
 004DB7B0    mov         eax,dword ptr [ebp-4]
 004DB7B3    test        byte ptr [eax+249],10;TCustomGrid.?f249:byte
>004DB7BA    je          004DB7CE
 004DB7BC    mov         eax,dword ptr [ebp-4]
 004DB7BF    mov         eax,dword ptr [eax+238];TCustomGrid.FFixedCols:Integer
 004DB7C5    mov         edx,dword ptr [ebp-4]
 004DB7C8    mov         dword ptr [edx+228],eax;TCustomGrid.FCurrent:TGridCoord
 004DB7CE    cmp         byte ptr [ebp+8],0
>004DB7D2    je          004DB7E5
 004DB7D4    mov         eax,dword ptr [ebp-4]
 004DB7D7    lea         edx,[eax+228];TCustomGrid.FCurrent:TGridCoord
 004DB7DD    mov         eax,dword ptr [ebp-4]
 004DB7E0    call        004DA6E4
 004DB7E5    lea         edx,[ebp-28]
 004DB7E8    mov         eax,dword ptr [ebp-4]
 004DB7EB    call        004DB8F0
 004DB7F0    mov         ecx,dword ptr [ebp-10]
 004DB7F3    mov         edx,dword ptr [ebp-14]
 004DB7F6    mov         eax,dword ptr [ebp-4]
 004DB7F9    call        004DAE8C
 004DB7FE    mov         eax,dword ptr [ebp-4]
 004DB801    add         eax,228;TCustomGrid.FCurrent:TGridCoord
 004DB806    mov         dword ptr [ebp-18],eax
 004DB809    mov         ecx,dword ptr [ebp-0C]
 004DB80C    mov         edx,dword ptr [ebp-8]
 004DB80F    mov         eax,dword ptr [ebp-4]
 004DB812    call        004DAE8C
 004DB817    xor         eax,eax
 004DB819    pop         edx
 004DB81A    pop         ecx
 004DB81B    pop         ecx
 004DB81C    mov         dword ptr fs:[eax],edx
 004DB81F    push        4DB834
 004DB824    lea         eax,[ebp-2C]
 004DB827    call        @LStrClr
 004DB82C    ret
>004DB82D    jmp         @HandleFinally
>004DB832    jmp         004DB824
 004DB834    pop         ebx
 004DB835    mov         esp,ebp
 004DB837    pop         ebp
 004DB838    ret         8
end;*}

//004DB83C
procedure sub_004DB83C(?:TCustomGrid; ?:Integer; ?:Longint);
begin
{*
 004DB83C    push        ebp
 004DB83D    mov         ebp,esp
 004DB83F    add         esp,0FFFFFFEC
 004DB842    mov         dword ptr [ebp-0C],ecx
 004DB845    mov         dword ptr [ebp-8],edx
 004DB848    mov         dword ptr [ebp-4],eax
 004DB84B    mov         eax,dword ptr [ebp-8]
 004DB84E    mov         edx,dword ptr [ebp-4]
 004DB851    cmp         eax,dword ptr [edx+258]
>004DB857    jne         004DB867
 004DB859    mov         eax,dword ptr [ebp-0C]
 004DB85C    mov         edx,dword ptr [ebp-4]
 004DB85F    cmp         eax,dword ptr [edx+25C]
>004DB865    je          004DB8AA
 004DB867    mov         eax,dword ptr [ebp-4]
 004DB86A    mov         edx,dword ptr [eax]
 004DB86C    call        dword ptr [edx+88]
 004DB872    mov         eax,dword ptr [ebp-4]
 004DB875    mov         edx,dword ptr [eax+258]
 004DB87B    mov         dword ptr [ebp-14],edx
 004DB87E    mov         edx,dword ptr [eax+25C]
 004DB884    mov         dword ptr [ebp-10],edx
 004DB887    mov         eax,dword ptr [ebp-8]
 004DB88A    mov         edx,dword ptr [ebp-4]
 004DB88D    mov         dword ptr [edx+258],eax
 004DB893    mov         eax,dword ptr [ebp-0C]
 004DB896    mov         edx,dword ptr [ebp-4]
 004DB899    mov         dword ptr [edx+25C],eax
 004DB89F    lea         edx,[ebp-14]
 004DB8A2    mov         eax,dword ptr [ebp-4]
 004DB8A5    call        TCustomGrid.TopLeftMoved
 004DB8AA    mov         esp,ebp
 004DB8AC    pop         ebp
 004DB8AD    ret
*}
end;

//004DB8B0
{*procedure sub_004DB8B0(?:TCustomGrid; ?:Longint; ?:?);
begin
 004DB8B0    push        ebp
 004DB8B1    mov         ebp,esp
 004DB8B3    add         esp,0FFFFFFF4
 004DB8B6    mov         dword ptr [ebp-0C],ecx
 004DB8B9    mov         dword ptr [ebp-8],edx
 004DB8BC    mov         dword ptr [ebp-4],eax
 004DB8BF    mov         eax,dword ptr [ebp-4]
 004DB8C2    call        004DAEC4
 004DB8C7    mov         esp,ebp
 004DB8C9    pop         ebp
 004DB8CA    ret         4
end;*}

//004DB8D0
{*procedure sub_004DB8D0(?:TCustomGrid; ?:Longint; ?:?);
begin
 004DB8D0    push        ebp
 004DB8D1    mov         ebp,esp
 004DB8D3    add         esp,0FFFFFFF4
 004DB8D6    mov         dword ptr [ebp-0C],ecx
 004DB8D9    mov         dword ptr [ebp-8],edx
 004DB8DC    mov         dword ptr [ebp-4],eax
 004DB8DF    mov         eax,dword ptr [ebp-4]
 004DB8E2    call        004DAEC4
 004DB8E7    mov         esp,ebp
 004DB8E9    pop         ebp
 004DB8EA    ret         4
end;*}

//004DB8F0
{*procedure sub_004DB8F0(?:TCustomGrid; ?:?);
begin
 004DB8F0    push        ebp
 004DB8F1    mov         ebp,esp
 004DB8F3    add         esp,0FFFFFF84
 004DB8F6    mov         dword ptr [ebp-8],edx
 004DB8F9    mov         dword ptr [ebp-4],eax
 004DB8FC    mov         eax,dword ptr [ebp-4]
 004DB8FF    call        TWinControl.HandleAllocated
 004DB904    test        al,al
>004DB906    je          004DB969
 004DB908    push        1
 004DB90A    lea         ecx,[ebp-1C]
 004DB90D    mov         edx,dword ptr [ebp-8]
 004DB910    mov         eax,dword ptr [ebp-4]
 004DB913    call        004DAD08
 004DB918    push        1
 004DB91A    lea         edx,[ebp-7C]
 004DB91D    mov         eax,dword ptr [ebp-4]
 004DB920    call        004DD4AC
 004DB925    lea         edx,[ebp-7C]
 004DB928    lea         ecx,[ebp-2C]
 004DB92B    mov         eax,dword ptr [ebp-4]
 004DB92E    call        004DAD08
 004DB933    lea         ecx,[ebp-6C]
 004DB936    lea         edx,[ebp-2C]
 004DB939    lea         eax,[ebp-1C]
 004DB93C    call        004D7044
 004DB941    xor         eax,eax
 004DB943    mov         dword ptr [ebp-0C],eax
 004DB946    push        0
 004DB948    mov         eax,dword ptr [ebp-0C]
 004DB94B    add         eax,eax
 004DB94D    lea         eax,[ebp+eax*8-6C]
 004DB951    push        eax
 004DB952    mov         eax,dword ptr [ebp-4]
 004DB955    call        TWinControl.GetHandle
 004DB95A    push        eax
 004DB95B    call        user32.InvalidateRect
 004DB960    inc         dword ptr [ebp-0C]
 004DB963    cmp         dword ptr [ebp-0C],4
>004DB967    jne         004DB946
 004DB969    mov         esp,ebp
 004DB96B    pop         ebp
 004DB96C    ret
end;*}

//004DB970
{*procedure sub_004DB970(?:?; ?:?; ?:?; ?:?);
begin
 004DB970    push        ebp
 004DB971    mov         ebp,esp
 004DB973    add         esp,0FFFFFFD0
 004DB976    push        esi
 004DB977    mov         dword ptr [ebp-0C],ecx
 004DB97A    mov         dword ptr [ebp-8],edx
 004DB97D    mov         dword ptr [ebp-4],eax
 004DB980    mov         dword ptr [ebp-10],2
 004DB987    mov         eax,dword ptr [ebp-4]
 004DB98A    cmp         byte ptr [eax+28C],0
>004DB991    jne         004DB997
 004DB993    or          dword ptr [ebp-10],4
 004DB997    cmp         dword ptr [ebp-0C],0
>004DB99B    jne         004DBA2D
 004DB9A1    mov         eax,dword ptr [ebp-4]
 004DB9A4    mov         si,0FFC8
 004DB9A8    call        @CallDynaInst
 004DB9AD    test        al,al
>004DB9AF    jne         004DB9D1
 004DB9B1    mov         eax,dword ptr [ebp+8]
 004DB9B4    mov         eax,dword ptr [eax+3C]
 004DB9B7    push        eax
 004DB9B8    lea         eax,[ebp-20]
 004DB9BB    push        eax
 004DB9BC    mov         ecx,dword ptr [ebp+8]
 004DB9BF    mov         ecx,dword ptr [ecx+0C]
 004DB9C2    mov         eax,dword ptr [ebp+8]
 004DB9C5    mov         eax,dword ptr [eax+4]
 004DB9C8    xor         edx,edx
 004DB9CA    call        0041E714
>004DB9CF    jmp         004DBA04
 004DB9D1    mov         eax,dword ptr [ebp+8]
 004DB9D4    mov         eax,dword ptr [eax+3C]
 004DB9D7    push        eax
 004DB9D8    lea         eax,[ebp-20]
 004DB9DB    push        eax
 004DB9DC    mov         eax,dword ptr [ebp-4]
 004DB9DF    call        TControl.GetClientWidth
 004DB9E4    mov         edx,dword ptr [ebp+8]
 004DB9E7    sub         eax,dword ptr [edx+4]
 004DB9EA    push        eax
 004DB9EB    mov         eax,dword ptr [ebp-4]
 004DB9EE    call        TControl.GetClientWidth
 004DB9F3    mov         edx,dword ptr [ebp+8]
 004DB9F6    sub         eax,dword ptr [edx+0C]
 004DB9F9    xor         edx,edx
 004DB9FB    pop         ecx
 004DB9FC    call        0041E714
 004DBA01    neg         dword ptr [ebp-8]
 004DBA04    mov         eax,dword ptr [ebp-10]
 004DBA07    push        eax
 004DBA08    push        0
 004DBA0A    push        0
 004DBA0C    lea         eax,[ebp-20]
 004DBA0F    push        eax
 004DBA10    lea         eax,[ebp-20]
 004DBA13    push        eax
 004DBA14    push        0
 004DBA16    mov         eax,dword ptr [ebp-8]
 004DBA19    push        eax
 004DBA1A    mov         eax,dword ptr [ebp-4]
 004DBA1D    call        TWinControl.GetHandle
 004DBA22    push        eax
 004DBA23    call        user32.ScrollWindowEx
>004DBA28    jmp         004DBB46
 004DBA2D    cmp         dword ptr [ebp-8],0
>004DBA31    jne         004DBA7A
 004DBA33    mov         eax,dword ptr [ebp+8]
 004DBA36    mov         eax,dword ptr [eax+3C]
 004DBA39    push        eax
 004DBA3A    lea         eax,[ebp-20]
 004DBA3D    push        eax
 004DBA3E    mov         ecx,dword ptr [ebp+8]
 004DBA41    mov         ecx,dword ptr [ecx+0C]
 004DBA44    mov         edx,dword ptr [ebp+8]
 004DBA47    mov         edx,dword ptr [edx+34]
 004DBA4A    xor         eax,eax
 004DBA4C    call        0041E714
 004DBA51    mov         eax,dword ptr [ebp-10]
 004DBA54    push        eax
 004DBA55    push        0
 004DBA57    push        0
 004DBA59    lea         eax,[ebp-20]
 004DBA5C    push        eax
 004DBA5D    lea         eax,[ebp-20]
 004DBA60    push        eax
 004DBA61    mov         eax,dword ptr [ebp-0C]
 004DBA64    push        eax
 004DBA65    push        0
 004DBA67    mov         eax,dword ptr [ebp-4]
 004DBA6A    call        TWinControl.GetHandle
 004DBA6F    push        eax
 004DBA70    call        user32.ScrollWindowEx
>004DBA75    jmp         004DBB46
 004DBA7A    mov         eax,dword ptr [ebp+8]
 004DBA7D    mov         eax,dword ptr [eax+34]
 004DBA80    push        eax
 004DBA81    lea         eax,[ebp-20]
 004DBA84    push        eax
 004DBA85    mov         ecx,dword ptr [ebp+8]
 004DBA88    mov         ecx,dword ptr [ecx+0C]
 004DBA8B    mov         eax,dword ptr [ebp+8]
 004DBA8E    mov         eax,dword ptr [eax+4]
 004DBA91    xor         edx,edx
 004DBA93    call        0041E714
 004DBA98    mov         eax,dword ptr [ebp-10]
 004DBA9B    push        eax
 004DBA9C    push        0
 004DBA9E    push        0
 004DBAA0    lea         eax,[ebp-20]
 004DBAA3    push        eax
 004DBAA4    lea         eax,[ebp-20]
 004DBAA7    push        eax
 004DBAA8    push        0
 004DBAAA    mov         eax,dword ptr [ebp-8]
 004DBAAD    push        eax
 004DBAAE    mov         eax,dword ptr [ebp-4]
 004DBAB1    call        TWinControl.GetHandle
 004DBAB6    push        eax
 004DBAB7    call        user32.ScrollWindowEx
 004DBABC    mov         eax,dword ptr [ebp+8]
 004DBABF    mov         eax,dword ptr [eax+3C]
 004DBAC2    push        eax
 004DBAC3    lea         eax,[ebp-20]
 004DBAC6    push        eax
 004DBAC7    mov         ecx,dword ptr [ebp+8]
 004DBACA    mov         ecx,dword ptr [ecx+4]
 004DBACD    mov         edx,dword ptr [ebp+8]
 004DBAD0    mov         edx,dword ptr [edx+34]
 004DBAD3    xor         eax,eax
 004DBAD5    call        0041E714
 004DBADA    mov         eax,dword ptr [ebp-10]
 004DBADD    push        eax
 004DBADE    push        0
 004DBAE0    push        0
 004DBAE2    lea         eax,[ebp-20]
 004DBAE5    push        eax
 004DBAE6    lea         eax,[ebp-20]
 004DBAE9    push        eax
 004DBAEA    mov         eax,dword ptr [ebp-0C]
 004DBAED    push        eax
 004DBAEE    push        0
 004DBAF0    mov         eax,dword ptr [ebp-4]
 004DBAF3    call        TWinControl.GetHandle
 004DBAF8    push        eax
 004DBAF9    call        user32.ScrollWindowEx
 004DBAFE    mov         eax,dword ptr [ebp+8]
 004DBB01    mov         eax,dword ptr [eax+3C]
 004DBB04    push        eax
 004DBB05    lea         eax,[ebp-20]
 004DBB08    push        eax
 004DBB09    mov         ecx,dword ptr [ebp+8]
 004DBB0C    mov         ecx,dword ptr [ecx+0C]
 004DBB0F    mov         edx,dword ptr [ebp+8]
 004DBB12    mov         edx,dword ptr [edx+34]
 004DBB15    mov         eax,dword ptr [ebp+8]
 004DBB18    mov         eax,dword ptr [eax+4]
 004DBB1B    call        0041E714
 004DBB20    mov         eax,dword ptr [ebp-10]
 004DBB23    push        eax
 004DBB24    push        0
 004DBB26    push        0
 004DBB28    lea         eax,[ebp-20]
 004DBB2B    push        eax
 004DBB2C    lea         eax,[ebp-20]
 004DBB2F    push        eax
 004DBB30    mov         eax,dword ptr [ebp-0C]
 004DBB33    push        eax
 004DBB34    mov         eax,dword ptr [ebp-8]
 004DBB37    push        eax
 004DBB38    mov         eax,dword ptr [ebp-4]
 004DBB3B    call        TWinControl.GetHandle
 004DBB40    push        eax
 004DBB41    call        user32.ScrollWindowEx
 004DBB46    mov         eax,dword ptr [ebp-4]
 004DBB49    test        byte ptr [eax+249],10
>004DBB50    je          004DBB68
 004DBB52    lea         edx,[ebp-30]
 004DBB55    mov         eax,dword ptr [ebp-4]
 004DBB58    call        004DD4AC
 004DBB5D    lea         edx,[ebp-30]
 004DBB60    mov         eax,dword ptr [ebp-4]
 004DBB63    call        004DAED8
 004DBB68    pop         esi
 004DBB69    mov         esp,ebp
 004DBB6B    pop         ebp
 004DBB6C    ret         4
end;*}

//004DBB70
{*procedure sub_004DBB70(?:?; ?:?; ?:?);
begin
 004DBB70    push        ebp
 004DBB71    mov         ebp,esp
 004DBB73    add         esp,0FFFFFF90
 004DBB76    mov         dword ptr [ebp-0C],ecx
 004DBB79    mov         dword ptr [ebp-8],edx
 004DBB7C    mov         dword ptr [ebp-4],eax
 004DBB7F    lea         edx,[ebp-70]
 004DBB82    mov         eax,dword ptr [ebp-4]
 004DBB85    call        TCustomGrid.CalcDrawInfo
 004DBB8A    lea         eax,[ebp-70]
 004DBB8D    push        eax
 004DBB8E    mov         ecx,dword ptr [ebp-0C]
 004DBB91    mov         edx,dword ptr [ebp-8]
 004DBB94    mov         eax,dword ptr [ebp-4]
 004DBB97    call        004DB970
 004DBB9C    mov         esp,ebp
 004DBB9E    pop         ebp
 004DBB9F    ret
end;*}

//004DBBA0
{*function sub_004DBBA0(?:?; ?:?; ?:?; ?:?; ?:?):?;
begin
 004DBBA0    push        ebp
 004DBBA1    mov         ebp,esp
 004DBBA3    add         esp,0FFFFFFE0
 004DBBA6    push        ebx
 004DBBA7    mov         dword ptr [ebp-0C],ecx
 004DBBAA    mov         dword ptr [ebp-8],edx
 004DBBAD    mov         dword ptr [ebp-4],eax
 004DBBB0    mov         byte ptr [ebp-0D],0
 004DBBB4    mov         eax,dword ptr [ebp-8]
 004DBBB7    cmp         eax,dword ptr [ebp-0C]
>004DBBBA    jge         004DBBCA
 004DBBBC    mov         eax,dword ptr [ebp-8]
 004DBBBF    mov         dword ptr [ebp-14],eax
 004DBBC2    mov         eax,dword ptr [ebp-0C]
 004DBBC5    mov         dword ptr [ebp-18],eax
>004DBBC8    jmp         004DBBD6
 004DBBCA    mov         eax,dword ptr [ebp-0C]
 004DBBCD    mov         dword ptr [ebp-14],eax
 004DBBD0    mov         eax,dword ptr [ebp-8]
 004DBBD3    mov         dword ptr [ebp-18],eax
 004DBBD6    mov         eax,dword ptr [ebp+8]
 004DBBD9    xor         edx,edx
 004DBBDB    mov         dword ptr [eax],edx
 004DBBDD    mov         eax,dword ptr [ebp-14]
 004DBBE0    mov         edx,dword ptr [ebp-18]
 004DBBE3    dec         edx
 004DBBE4    sub         edx,eax
>004DBBE6    jl          004DBC2D
 004DBBE8    inc         edx
 004DBBE9    mov         dword ptr [ebp-20],edx
 004DBBEC    mov         dword ptr [ebp-1C],eax
 004DBBEF    mov         ebx,dword ptr [ebp-4]
 004DBBF2    mov         edx,dword ptr [ebp-1C]
 004DBBF5    mov         eax,dword ptr [ebx+2C]
 004DBBF8    call        dword ptr [ebx+28]
 004DBBFB    mov         edx,dword ptr [ebp-4]
 004DBBFE    add         eax,dword ptr [edx]
 004DBC00    mov         edx,dword ptr [ebp+8]
 004DBC03    add         dword ptr [edx],eax
 004DBC05    mov         eax,dword ptr [ebp-4]
 004DBC08    mov         eax,dword ptr [eax+8]
 004DBC0B    mov         edx,dword ptr [ebp-4]
 004DBC0E    sub         eax,dword ptr [edx+4]
 004DBC11    mov         edx,dword ptr [ebp+8]
 004DBC14    cmp         eax,dword ptr [edx]
>004DBC16    jge         004DBC25
 004DBC18    mov         eax,dword ptr [ebp+0C]
 004DBC1B    mov         eax,dword ptr [eax-4]
 004DBC1E    call        004DAEC4
>004DBC23    jmp         004DBC3E
 004DBC25    inc         dword ptr [ebp-1C]
 004DBC28    dec         dword ptr [ebp-20]
>004DBC2B    jne         004DBBEF
 004DBC2D    mov         eax,dword ptr [ebp-8]
 004DBC30    cmp         eax,dword ptr [ebp-0C]
>004DBC33    jge         004DBC3A
 004DBC35    mov         eax,dword ptr [ebp+8]
 004DBC38    neg         dword ptr [eax]
 004DBC3A    mov         byte ptr [ebp-0D],1
 004DBC3E    mov         al,byte ptr [ebp-0D]
 004DBC41    pop         ebx
 004DBC42    mov         esp,ebp
 004DBC44    pop         ebp
 004DBC45    ret         4
end;*}

//004DBC48
procedure TCustomGrid.TopLeftMoved(const OldTopLeft:TGridCoord);
begin
{*
 004DBC48    push        ebp
 004DBC49    mov         ebp,esp
 004DBC4B    add         esp,0FFFFFF90
 004DBC4E    push        esi
 004DBC4F    mov         dword ptr [ebp-8],edx
 004DBC52    mov         dword ptr [ebp-4],eax
 004DBC55    mov         eax,dword ptr [ebp-4]
 004DBC58    call        TCustomGrid.UpdateScrollPos
 004DBC5D    lea         edx,[ebp-70]
 004DBC60    mov         eax,dword ptr [ebp-4]
 004DBC63    call        TCustomGrid.CalcDrawInfo
 004DBC68    push        ebp
 004DBC69    lea         eax,[ebp-10]
 004DBC6C    push        eax
 004DBC6D    mov         eax,dword ptr [ebp-4]
 004DBC70    mov         ecx,dword ptr [eax+258]
 004DBC76    mov         edx,dword ptr [ebp-8]
 004DBC79    mov         edx,dword ptr [edx]
 004DBC7B    lea         eax,[ebp-70]
 004DBC7E    call        004DBBA0
 004DBC83    pop         ecx
 004DBC84    test        al,al
>004DBC86    je          004DBCBB
 004DBC88    push        ebp
 004DBC89    lea         eax,[ebp-0C]
 004DBC8C    push        eax
 004DBC8D    mov         eax,dword ptr [ebp-4]
 004DBC90    mov         ecx,dword ptr [eax+25C]
 004DBC96    mov         edx,dword ptr [ebp-8]
 004DBC99    mov         edx,dword ptr [edx+4]
 004DBC9C    lea         eax,[ebp-40]
 004DBC9F    call        004DBBA0
 004DBCA4    pop         ecx
 004DBCA5    test        al,al
>004DBCA7    je          004DBCBB
 004DBCA9    lea         eax,[ebp-70]
 004DBCAC    push        eax
 004DBCAD    mov         ecx,dword ptr [ebp-0C]
 004DBCB0    mov         edx,dword ptr [ebp-10]
 004DBCB3    mov         eax,dword ptr [ebp-4]
 004DBCB6    call        004DB970
 004DBCBB    mov         eax,dword ptr [ebp-4]
 004DBCBE    mov         si,0FFA7
 004DBCC2    call        @CallDynaInst
 004DBCC7    pop         esi
 004DBCC8    mov         esp,ebp
 004DBCCA    pop         ebp
 004DBCCB    ret
*}
end;

//004DBCCC
{*procedure sub_004DBCCC(?:?; ?:?; ?:?);
begin
 004DBCCC    push        ebp
 004DBCCD    mov         ebp,esp
 004DBCCF    add         esp,0FFFFFFF8
 004DBCD2    push        esi
 004DBCD3    mov         dword ptr [ebp-8],edx
 004DBCD6    mov         word ptr [ebp-2],ax
 004DBCDA    mov         eax,dword ptr [ebp+8]
 004DBCDD    mov         eax,dword ptr [eax-4]
 004DBCE0    mov         si,0FFC8
 004DBCE4    call        @CallDynaInst
 004DBCE9    test        al,al
>004DBCEB    je          004DBD22
 004DBCED    cmp         word ptr [ebp-2],0
>004DBCF2    jne         004DBD22
 004DBCF4    mov         eax,dword ptr [ebp+8]
 004DBCF7    mov         eax,dword ptr [eax-4]
 004DBCFA    cmp         dword ptr [eax+21C],1
>004DBD01    je          004DBD10
 004DBD03    mov         eax,7F
 004DBD08    sub         eax,dword ptr [ebp-8]
 004DBD0B    mov         dword ptr [ebp-8],eax
>004DBD0E    jmp         004DBD22
 004DBD10    mov         eax,dword ptr [ebp+8]
 004DBD13    mov         eax,dword ptr [eax-8]
 004DBD16    mov         edx,dword ptr [ebp+8]
 004DBD19    sub         eax,dword ptr [edx-0C]
 004DBD1C    sub         eax,dword ptr [ebp-8]
 004DBD1F    mov         dword ptr [ebp-8],eax
 004DBD22    movzx       eax,word ptr [ebp-2]
 004DBD26    push        eax
 004DBD27    mov         eax,dword ptr [ebp+8]
 004DBD2A    mov         eax,dword ptr [eax-4]
 004DBD2D    call        TWinControl.GetHandle
 004DBD32    push        eax
 004DBD33    call        user32.GetScrollPos
 004DBD38    cmp         eax,dword ptr [ebp-8]
>004DBD3B    je          004DBD59
 004DBD3D    push        0FF
 004DBD3F    mov         eax,dword ptr [ebp-8]
 004DBD42    push        eax
 004DBD43    movzx       eax,word ptr [ebp-2]
 004DBD47    push        eax
 004DBD48    mov         eax,dword ptr [ebp+8]
 004DBD4B    mov         eax,dword ptr [eax-4]
 004DBD4E    call        TWinControl.GetHandle
 004DBD53    push        eax
 004DBD54    call        user32.SetScrollPos
 004DBD59    pop         esi
 004DBD5A    pop         ecx
 004DBD5B    pop         ecx
 004DBD5C    pop         ebp
 004DBD5D    ret
end;*}

//004DBD60
procedure TCustomGrid.UpdateScrollPos;
begin
{*
 004DBD60    push        ebp
 004DBD61    mov         ebp,esp
 004DBD63    add         esp,0FFFFFF80
 004DBD66    mov         dword ptr [ebp-4],eax
 004DBD69    mov         eax,dword ptr [ebp-4]
 004DBD6C    call        TWinControl.HandleAllocated
 004DBD71    test        al,al
>004DBD73    je          004DBEC9
 004DBD79    mov         eax,dword ptr [ebp-4]
 004DBD7C    cmp         byte ptr [eax+254],0
>004DBD83    je          004DBEC9
 004DBD89    lea         edx,[ebp-78]
 004DBD8C    mov         eax,dword ptr [ebp-4]
 004DBD8F    call        TCustomGrid.CalcDrawInfo
 004DBD94    mov         eax,dword ptr [ebp-4]
 004DBD97    mov         eax,dword ptr [eax+21C]
 004DBD9D    dec         eax
 004DBD9E    mov         dword ptr [ebp-14],eax
 004DBDA1    mov         eax,dword ptr [ebp-4]
 004DBDA4    mov         eax,dword ptr [eax+24C]
 004DBDAA    dec         eax
 004DBDAB    mov         dword ptr [ebp-10],eax
 004DBDAE    lea         eax,[ebp-80]
 004DBDB1    push        eax
 004DBDB2    lea         ecx,[ebp-78]
 004DBDB5    lea         edx,[ebp-14]
 004DBDB8    mov         eax,dword ptr [ebp-4]
 004DBDBB    call        TCustomGrid.CalcMaxTopLeft
 004DBDC0    mov         eax,dword ptr [ebp-80]
 004DBDC3    mov         dword ptr [ebp-14],eax
 004DBDC6    mov         eax,dword ptr [ebp-7C]
 004DBDC9    mov         dword ptr [ebp-10],eax
 004DBDCC    mov         eax,dword ptr [ebp-4]
 004DBDCF    mov         al,byte ptr [eax+254]
 004DBDD5    sub         al,1
>004DBDD7    je          004DBDE1
 004DBDD9    sub         al,2
>004DBDDB    jne         004DBE86
 004DBDE1    mov         eax,dword ptr [ebp-4]
 004DBDE4    cmp         dword ptr [eax+21C],1
>004DBDEB    jne         004DBE54
 004DBDED    mov         edx,dword ptr [ebp-5C]
 004DBDF0    mov         eax,dword ptr [ebp-4]
 004DBDF3    call        004DD40C
 004DBDF8    mov         dword ptr [ebp-8],eax
 004DBDFB    mov         eax,dword ptr [ebp-4]
 004DBDFE    call        TControl.GetClientWidth
 004DBE03    sub         eax,dword ptr [ebp-74]
 004DBE06    mov         dword ptr [ebp-0C],eax
 004DBE09    mov         eax,dword ptr [ebp-4]
 004DBE0C    cmp         dword ptr [eax+288],0
>004DBE13    jle         004DBE40
 004DBE15    mov         eax,dword ptr [ebp-4]
 004DBE18    mov         edx,dword ptr [ebp-8]
 004DBE1B    sub         edx,dword ptr [eax+288]
 004DBE21    cmp         edx,dword ptr [ebp-0C]
>004DBE24    jge         004DBE40
 004DBE26    mov         eax,dword ptr [ebp-8]
 004DBE29    sub         eax,dword ptr [ebp-0C]
 004DBE2C    push        eax
 004DBE2D    push        1
 004DBE2F    mov         ecx,4
 004DBE34    xor         edx,edx
 004DBE36    mov         eax,dword ptr [ebp-4]
 004DBE39    call        004DB380
>004DBE3E    jmp         004DBE86
 004DBE40    push        ebp
 004DBE41    mov         eax,dword ptr [ebp-4]
 004DBE44    mov         edx,dword ptr [eax+288]
 004DBE4A    xor         eax,eax
 004DBE4C    call        004DBCCC
 004DBE51    pop         ecx
>004DBE52    jmp         004DBE86
 004DBE54    push        ebp
 004DBE55    mov         eax,dword ptr [ebp-4]
 004DBE58    mov         edx,dword ptr [ebp-14]
 004DBE5B    sub         edx,dword ptr [eax+238]
 004DBE61    push        edx
 004DBE62    push        7F
 004DBE64    mov         eax,dword ptr [ebp-4]
 004DBE67    mov         eax,dword ptr [eax+258]
 004DBE6D    mov         edx,dword ptr [ebp-4]
 004DBE70    sub         eax,dword ptr [edx+238]
 004DBE76    push        eax
 004DBE77    call        kernel32.MulDiv
 004DBE7C    mov         edx,eax
 004DBE7E    xor         eax,eax
 004DBE80    call        004DBCCC
 004DBE85    pop         ecx
 004DBE86    mov         eax,dword ptr [ebp-4]
 004DBE89    mov         al,byte ptr [eax+254]
 004DBE8F    add         al,0FE
 004DBE91    sub         al,2
>004DBE93    jae         004DBEC9
 004DBE95    push        ebp
 004DBE96    mov         eax,dword ptr [ebp-4]
 004DBE99    mov         edx,dword ptr [ebp-10]
 004DBE9C    sub         edx,dword ptr [eax+23C]
 004DBEA2    push        edx
 004DBEA3    push        7F
 004DBEA5    mov         eax,dword ptr [ebp-4]
 004DBEA8    mov         eax,dword ptr [eax+25C]
 004DBEAE    mov         edx,dword ptr [ebp-4]
 004DBEB1    sub         eax,dword ptr [edx+23C]
 004DBEB7    push        eax
 004DBEB8    call        kernel32.MulDiv
 004DBEBD    mov         edx,eax
 004DBEBF    mov         ax,1
 004DBEC3    call        004DBCCC
 004DBEC8    pop         ecx
 004DBEC9    mov         esp,ebp
 004DBECB    pop         ebp
 004DBECC    ret
*}
end;

//004DBED0
procedure DoUpdate;
begin
{*
 004DBED0    push        ebp
 004DBED1    mov         ebp,esp
 004DBED3    mov         eax,dword ptr [ebp+8]
 004DBED6    cmp         byte ptr [eax-1],0
>004DBEDA    jne         004DBEF1
 004DBEDC    mov         eax,dword ptr [ebp+8]
 004DBEDF    mov         eax,dword ptr [eax-8]
 004DBEE2    mov         edx,dword ptr [eax]
 004DBEE4    call        dword ptr [edx+88]
 004DBEEA    mov         eax,dword ptr [ebp+8]
 004DBEED    mov         byte ptr [eax-1],1
 004DBEF1    pop         ebp
 004DBEF2    ret
*}
end;

//004DBEF4
function ScrollBarVisible(Code:Word):Boolean;
begin
{*
 004DBEF4    push        ebp
 004DBEF5    mov         ebp,esp
 004DBEF7    add         esp,0FFFFFFF4
 004DBEFA    mov         word ptr [ebp-2],ax
 004DBEFE    mov         byte ptr [ebp-3],0
 004DBF02    mov         eax,dword ptr [ebp+8]
 004DBF05    mov         eax,dword ptr [eax-8]
 004DBF08    cmp         byte ptr [eax+254],3
>004DBF0F    je          004DBF3D
 004DBF11    cmp         word ptr [ebp-2],0
>004DBF16    jne         004DBF27
 004DBF18    mov         eax,dword ptr [ebp+8]
 004DBF1B    mov         eax,dword ptr [eax-8]
 004DBF1E    cmp         byte ptr [eax+254],1
>004DBF25    je          004DBF3D
 004DBF27    cmp         word ptr [ebp-2],1
>004DBF2C    jne         004DBF65
 004DBF2E    mov         eax,dword ptr [ebp+8]
 004DBF31    mov         eax,dword ptr [eax-8]
 004DBF34    cmp         byte ptr [eax+254],2
>004DBF3B    jne         004DBF65
 004DBF3D    lea         eax,[ebp-0C]
 004DBF40    push        eax
 004DBF41    lea         eax,[ebp-8]
 004DBF44    push        eax
 004DBF45    movzx       eax,word ptr [ebp-2]
 004DBF49    push        eax
 004DBF4A    mov         eax,dword ptr [ebp+8]
 004DBF4D    mov         eax,dword ptr [eax-8]
 004DBF50    call        TWinControl.GetHandle
 004DBF55    push        eax
 004DBF56    call        user32.GetScrollRange
 004DBF5B    mov         eax,dword ptr [ebp-8]
 004DBF5E    cmp         eax,dword ptr [ebp-0C]
 004DBF61    setne       byte ptr [ebp-3]
 004DBF65    mov         al,byte ptr [ebp-3]
 004DBF68    mov         esp,ebp
 004DBF6A    pop         ebp
 004DBF6B    ret
*}
end;

//004DBF6C
procedure CalcSizeInfo;
begin
{*
 004DBF6C    push        ebp
 004DBF6D    mov         ebp,esp
 004DBF6F    add         esp,0FFFFFFF8
 004DBF72    mov         eax,dword ptr [ebp+8]
 004DBF75    mov         eax,dword ptr [eax-2C]
 004DBF78    push        eax
 004DBF79    mov         eax,dword ptr [ebp+8]
 004DBF7C    mov         ecx,dword ptr [eax-5C]
 004DBF7F    mov         eax,dword ptr [ebp+8]
 004DBF82    lea         edx,[eax-68]
 004DBF85    mov         eax,dword ptr [ebp+8]
 004DBF88    mov         eax,dword ptr [eax-8]
 004DBF8B    call        TCustomGrid.CalcDrawInfoXY
 004DBF90    mov         eax,dword ptr [ebp+8]
 004DBF93    mov         eax,dword ptr [eax-8]
 004DBF96    mov         eax,dword ptr [eax+21C]
 004DBF9C    dec         eax
 004DBF9D    mov         edx,dword ptr [ebp+8]
 004DBFA0    mov         dword ptr [edx-70],eax
 004DBFA3    mov         eax,dword ptr [ebp+8]
 004DBFA6    mov         eax,dword ptr [eax-8]
 004DBFA9    mov         eax,dword ptr [eax+24C]
 004DBFAF    dec         eax
 004DBFB0    mov         edx,dword ptr [ebp+8]
 004DBFB3    mov         dword ptr [edx-6C],eax
 004DBFB6    lea         eax,[ebp-8]
 004DBFB9    push        eax
 004DBFBA    mov         eax,dword ptr [ebp+8]
 004DBFBD    lea         ecx,[eax-68]
 004DBFC0    mov         eax,dword ptr [ebp+8]
 004DBFC3    lea         edx,[eax-70]
 004DBFC6    mov         eax,dword ptr [ebp+8]
 004DBFC9    mov         eax,dword ptr [eax-8]
 004DBFCC    call        TCustomGrid.CalcMaxTopLeft
 004DBFD1    mov         eax,dword ptr [ebp+8]
 004DBFD4    mov         edx,dword ptr [ebp-8]
 004DBFD7    mov         dword ptr [eax-70],edx
 004DBFDA    mov         edx,dword ptr [ebp-4]
 004DBFDD    mov         dword ptr [eax-6C],edx
 004DBFE0    pop         ecx
 004DBFE1    pop         ecx
 004DBFE2    pop         ebp
 004DBFE3    ret
*}
end;

//004DBFE4
procedure SetAxisRange(var Max:Longint; var Old:Longint; var Current:Longint; Code:Word; Fixeds:Integer);
begin
{*
 004DBFE4    push        ebp
 004DBFE5    mov         ebp,esp
 004DBFE7    add         esp,0FFFFFFF4
 004DBFEA    mov         dword ptr [ebp-0C],ecx
 004DBFED    mov         dword ptr [ebp-8],edx
 004DBFF0    mov         dword ptr [ebp-4],eax
 004DBFF3    mov         eax,dword ptr [ebp+10]
 004DBFF6    push        eax
 004DBFF7    call        CalcSizeInfo
 004DBFFC    pop         ecx
 004DBFFD    mov         eax,dword ptr [ebp-4]
 004DC000    mov         eax,dword ptr [eax]
 004DC002    cmp         eax,dword ptr [ebp+8]
>004DC005    jle         004DC025
 004DC007    push        0FF
 004DC009    push        7F
 004DC00B    push        0
 004DC00D    movzx       eax,word ptr [ebp+0C]
 004DC011    push        eax
 004DC012    mov         eax,dword ptr [ebp+10]
 004DC015    mov         eax,dword ptr [eax-8]
 004DC018    call        TWinControl.GetHandle
 004DC01D    push        eax
 004DC01E    call        user32.SetScrollRange
>004DC023    jmp         004DC041
 004DC025    push        0FF
 004DC027    push        0
 004DC029    push        0
 004DC02B    movzx       eax,word ptr [ebp+0C]
 004DC02F    push        eax
 004DC030    mov         eax,dword ptr [ebp+10]
 004DC033    mov         eax,dword ptr [eax-8]
 004DC036    call        TWinControl.GetHandle
 004DC03B    push        eax
 004DC03C    call        user32.SetScrollRange
 004DC041    mov         eax,dword ptr [ebp-8]
 004DC044    mov         eax,dword ptr [eax]
 004DC046    mov         edx,dword ptr [ebp-4]
 004DC049    cmp         eax,dword ptr [edx]
>004DC04B    jle         004DC061
 004DC04D    mov         eax,dword ptr [ebp+10]
 004DC050    push        eax
 004DC051    call        DoUpdate
 004DC056    pop         ecx
 004DC057    mov         eax,dword ptr [ebp-4]
 004DC05A    mov         eax,dword ptr [eax]
 004DC05C    mov         edx,dword ptr [ebp-0C]
 004DC05F    mov         dword ptr [edx],eax
 004DC061    mov         esp,ebp
 004DC063    pop         ebp
 004DC064    ret         8
*}
end;

//004DC068
procedure SetHorzRange;
begin
{*
 004DC068    push        ebp
 004DC069    mov         ebp,esp
 004DC06B    push        ecx
 004DC06C    push        ebx
 004DC06D    mov         eax,dword ptr [ebp+8]
 004DC070    mov         al,byte ptr [eax-79]
 004DC073    sub         al,1
>004DC075    je          004DC07F
 004DC077    sub         al,2
>004DC079    jne         004DC106
 004DC07F    mov         eax,dword ptr [ebp+8]
 004DC082    mov         eax,dword ptr [eax-8]
 004DC085    cmp         dword ptr [eax+21C],1
>004DC08C    jne         004DC0D5
 004DC08E    mov         eax,dword ptr [ebp+8]
 004DC091    mov         eax,dword ptr [eax-8]
 004DC094    xor         edx,edx
 004DC096    call        004DD40C
 004DC09B    mov         ebx,eax
 004DC09D    mov         eax,dword ptr [ebp+8]
 004DC0A0    mov         eax,dword ptr [eax-8]
 004DC0A3    call        TControl.GetClientWidth
 004DC0A8    sub         ebx,eax
 004DC0AA    mov         dword ptr [ebp-4],ebx
 004DC0AD    cmp         dword ptr [ebp-4],0
>004DC0B1    jge         004DC0B8
 004DC0B3    xor         eax,eax
 004DC0B5    mov         dword ptr [ebp-4],eax
 004DC0B8    push        0FF
 004DC0BA    mov         eax,dword ptr [ebp-4]
 004DC0BD    push        eax
 004DC0BE    push        0
 004DC0C0    push        0
 004DC0C2    mov         eax,dword ptr [ebp+8]
 004DC0C5    mov         eax,dword ptr [eax-8]
 004DC0C8    call        TWinControl.GetHandle
 004DC0CD    push        eax
 004DC0CE    call        user32.SetScrollRange
>004DC0D3    jmp         004DC106
 004DC0D5    mov         eax,dword ptr [ebp+8]
 004DC0D8    push        eax
 004DC0D9    push        0
 004DC0DB    mov         eax,dword ptr [ebp+8]
 004DC0DE    mov         eax,dword ptr [eax-8]
 004DC0E1    mov         eax,dword ptr [eax+238]
 004DC0E7    push        eax
 004DC0E8    mov         eax,dword ptr [ebp+8]
 004DC0EB    mov         eax,dword ptr [eax-8]
 004DC0EE    lea         ecx,[eax+258]
 004DC0F4    mov         eax,dword ptr [ebp+8]
 004DC0F7    lea         edx,[eax-78]
 004DC0FA    mov         eax,dword ptr [ebp+8]
 004DC0FD    add         eax,0FFFFFF90
 004DC100    call        SetAxisRange
 004DC105    pop         ecx
 004DC106    pop         ebx
 004DC107    pop         ecx
 004DC108    pop         ebp
 004DC109    ret
*}
end;

//004DC10C
procedure SetVertRange;
begin
{*
 004DC10C    push        ebp
 004DC10D    mov         ebp,esp
 004DC10F    mov         eax,dword ptr [ebp+8]
 004DC112    mov         al,byte ptr [eax-79]
 004DC115    add         al,0FE
 004DC117    sub         al,2
>004DC119    jae         004DC14C
 004DC11B    mov         eax,dword ptr [ebp+8]
 004DC11E    push        eax
 004DC11F    push        1
 004DC121    mov         eax,dword ptr [ebp+8]
 004DC124    mov         eax,dword ptr [eax-8]
 004DC127    mov         eax,dword ptr [eax+23C]
 004DC12D    push        eax
 004DC12E    mov         eax,dword ptr [ebp+8]
 004DC131    mov         eax,dword ptr [eax-8]
 004DC134    lea         ecx,[eax+25C]
 004DC13A    mov         eax,dword ptr [ebp+8]
 004DC13D    lea         edx,[eax-74]
 004DC140    mov         eax,dword ptr [ebp+8]
 004DC143    add         eax,0FFFFFF94
 004DC146    call        SetAxisRange
 004DC14B    pop         ecx
 004DC14C    pop         ebp
 004DC14D    ret
*}
end;

//004DC150
procedure TCustomGrid.UpdateScrollRange;
begin
{*
 004DC150    push        ebp
 004DC151    mov         ebp,esp
 004DC153    add         esp,0FFFFFF84
 004DC156    mov         dword ptr [ebp-8],eax
 004DC159    mov         eax,dword ptr [ebp-8]
 004DC15C    cmp         byte ptr [eax+254],0
>004DC163    je          004DC294
 004DC169    mov         eax,dword ptr [ebp-8]
 004DC16C    call        TWinControl.HandleAllocated
 004DC171    test        al,al
>004DC173    je          004DC294
 004DC179    mov         eax,dword ptr [ebp-8]
 004DC17C    cmp         byte ptr [eax+1A6],0
>004DC183    je          004DC294
 004DC189    mov         eax,dword ptr [ebp-8]
 004DC18C    call        TControl.GetClientWidth
 004DC191    mov         dword ptr [ebp-5C],eax
 004DC194    mov         eax,dword ptr [ebp-8]
 004DC197    call        TControl.GetClientHeight
 004DC19C    mov         dword ptr [ebp-2C],eax
 004DC19F    push        ebp
 004DC1A0    xor         eax,eax
 004DC1A2    call        ScrollBarVisible
 004DC1A7    pop         ecx
 004DC1A8    test        al,al
>004DC1AA    je          004DC1B6
 004DC1AC    push        3
 004DC1AE    call        user32.GetSystemMetrics
 004DC1B3    add         dword ptr [ebp-2C],eax
 004DC1B6    push        ebp
 004DC1B7    mov         ax,1
 004DC1BB    call        ScrollBarVisible
 004DC1C0    pop         ecx
 004DC1C1    test        al,al
>004DC1C3    je          004DC1CF
 004DC1C5    push        2
 004DC1C7    call        user32.GetSystemMetrics
 004DC1CC    add         dword ptr [ebp-5C],eax
 004DC1CF    mov         eax,dword ptr [ebp-8]
 004DC1D2    mov         edx,dword ptr [eax+258]
 004DC1D8    mov         dword ptr [ebp-78],edx
 004DC1DB    mov         edx,dword ptr [eax+25C]
 004DC1E1    mov         dword ptr [ebp-74],edx
 004DC1E4    mov         eax,dword ptr [ebp-8]
 004DC1E7    mov         al,byte ptr [eax+254]
 004DC1ED    mov         byte ptr [ebp-79],al
 004DC1F0    mov         eax,dword ptr [ebp-8]
 004DC1F3    mov         byte ptr [eax+254],0
 004DC1FA    mov         byte ptr [ebp-1],0
 004DC1FE    xor         eax,eax
 004DC200    push        ebp
 004DC201    push        4DC25E
 004DC206    push        dword ptr fs:[eax]
 004DC209    mov         dword ptr fs:[eax],esp
 004DC20C    push        ebp
 004DC20D    call        SetHorzRange
 004DC212    pop         ecx
 004DC213    mov         eax,dword ptr [ebp-8]
 004DC216    call        TControl.GetClientHeight
 004DC21B    mov         dword ptr [ebp-2C],eax
 004DC21E    push        ebp
 004DC21F    call        SetVertRange
 004DC224    pop         ecx
 004DC225    mov         eax,dword ptr [ebp-8]
 004DC228    call        TControl.GetClientWidth
 004DC22D    cmp         eax,dword ptr [ebp-5C]
>004DC230    je          004DC244
 004DC232    mov         eax,dword ptr [ebp-8]
 004DC235    call        TControl.GetClientWidth
 004DC23A    mov         dword ptr [ebp-5C],eax
 004DC23D    push        ebp
 004DC23E    call        SetHorzRange
 004DC243    pop         ecx
 004DC244    xor         eax,eax
 004DC246    pop         edx
 004DC247    pop         ecx
 004DC248    pop         ecx
 004DC249    mov         dword ptr fs:[eax],edx
 004DC24C    push        4DC265
 004DC251    mov         eax,dword ptr [ebp-8]
 004DC254    mov         dl,byte ptr [ebp-79]
 004DC257    mov         byte ptr [eax+254],dl
 004DC25D    ret
>004DC25E    jmp         @HandleFinally
>004DC263    jmp         004DC251
 004DC265    mov         eax,dword ptr [ebp-8]
 004DC268    call        TCustomGrid.UpdateScrollPos
 004DC26D    mov         eax,dword ptr [ebp-8]
 004DC270    mov         eax,dword ptr [eax+258]
 004DC276    cmp         eax,dword ptr [ebp-78]
>004DC279    jne         004DC289
 004DC27B    mov         eax,dword ptr [ebp-8]
 004DC27E    mov         eax,dword ptr [eax+25C]
 004DC284    cmp         eax,dword ptr [ebp-74]
>004DC287    je          004DC294
 004DC289    lea         edx,[ebp-78]
 004DC28C    mov         eax,dword ptr [ebp-8]
 004DC28F    call        TCustomGrid.TopLeftMoved
 004DC294    mov         esp,ebp
 004DC296    pop         ebp
 004DC297    ret
*}
end;

//004DC298
{*function sub_004DC298:?;
begin
 004DC298    push        ebp
 004DC299    mov         ebp,esp
 004DC29B    add         esp,0FFFFFFF8
 004DC29E    mov         dword ptr [ebp-4],eax
 004DC2A1    mov         ecx,dword ptr [ebp-4]
 004DC2A4    mov         dl,1
 004DC2A6    mov         eax,[004D699C];TInplaceEdit
 004DC2AB    call        TInplaceEdit.Create;TInplaceEdit.Create
 004DC2B0    mov         dword ptr [ebp-8],eax
 004DC2B3    mov         eax,dword ptr [ebp-8]
 004DC2B6    pop         ecx
 004DC2B7    pop         ecx
 004DC2B8    pop         ebp
 004DC2B9    ret
end;*}

//004DC2BC
{*procedure sub_004DC2BC(?:?);
begin
 004DC2BC    push        ebp
 004DC2BD    mov         ebp,esp
 004DC2BF    add         esp,0FFFFFFF8
 004DC2C2    mov         dword ptr [ebp-8],edx
 004DC2C5    mov         dword ptr [ebp-4],eax
 004DC2C8    mov         edx,dword ptr [ebp-8]
 004DC2CB    mov         eax,dword ptr [ebp-4]
 004DC2CE    call        00488034
 004DC2D3    mov         eax,dword ptr [ebp-8]
 004DC2D6    or          dword ptr [eax+4],10000
 004DC2DD    mov         eax,dword ptr [ebp-4]
 004DC2E0    mov         al,byte ptr [eax+254];TCustomGrid.FScrollBars:TScrollStyle
 004DC2E6    add         al,0FE
 004DC2E8    sub         al,2
>004DC2EA    jae         004DC2F6
 004DC2EC    mov         eax,dword ptr [ebp-8]
 004DC2EF    or          dword ptr [eax+4],200000
 004DC2F6    mov         eax,dword ptr [ebp-4]
 004DC2F9    mov         al,byte ptr [eax+254];TCustomGrid.FScrollBars:TScrollStyle
 004DC2FF    sub         al,1
>004DC301    je          004DC307
 004DC303    sub         al,2
>004DC305    jne         004DC311
 004DC307    mov         eax,dword ptr [ebp-8]
 004DC30A    or          dword ptr [eax+4],100000
 004DC311    mov         eax,dword ptr [ebp-8]
 004DC314    mov         dword ptr [eax+24],8
 004DC31B    mov         eax,dword ptr [ebp-4]
 004DC31E    cmp         byte ptr [eax+218],1;TCustomGrid.FBorderStyle:TBorderStyle
>004DC325    jne         004DC35D
 004DC327    mov         eax,[0056E264];^NewStyleControls:Boolean
 004DC32C    cmp         byte ptr [eax],0
>004DC32F    je          004DC353
 004DC331    mov         eax,dword ptr [ebp-4]
 004DC334    cmp         byte ptr [eax+1A5],0;TCustomGrid.FCtl3D:Boolean
>004DC33B    je          004DC353
 004DC33D    mov         eax,dword ptr [ebp-8]
 004DC340    and         dword ptr [eax+4],0FF7FFFFF
 004DC347    mov         eax,dword ptr [ebp-8]
 004DC34A    or          dword ptr [eax+8],200
>004DC351    jmp         004DC35D
 004DC353    mov         eax,dword ptr [ebp-8]
 004DC356    or          dword ptr [eax+4],800000
 004DC35D    pop         ecx
 004DC35E    pop         ecx
 004DC35F    pop         ebp
 004DC360    ret
end;*}

//004DC364
procedure CalcPageExtents;
begin
{*
 004DC364    push        ebp
 004DC365    mov         ebp,esp
 004DC367    mov         eax,dword ptr [ebp+8]
 004DC36A    lea         edx,[eax-60]
 004DC36D    mov         eax,dword ptr [ebp+8]
 004DC370    mov         eax,dword ptr [eax-64]
 004DC373    call        TCustomGrid.CalcDrawInfo
 004DC378    mov         eax,dword ptr [ebp+8]
 004DC37B    mov         eax,dword ptr [eax-50]
 004DC37E    mov         edx,dword ptr [ebp+8]
 004DC381    mov         edx,dword ptr [edx-64]
 004DC384    sub         eax,dword ptr [edx+258]
 004DC38A    mov         edx,dword ptr [ebp+8]
 004DC38D    mov         dword ptr [edx-68],eax
 004DC390    mov         eax,dword ptr [ebp+8]
 004DC393    cmp         dword ptr [eax-68],1
>004DC397    jge         004DC3A3
 004DC399    mov         eax,dword ptr [ebp+8]
 004DC39C    mov         dword ptr [eax-68],1
 004DC3A3    mov         eax,dword ptr [ebp+8]
 004DC3A6    mov         eax,dword ptr [eax-20]
 004DC3A9    mov         edx,dword ptr [ebp+8]
 004DC3AC    mov         edx,dword ptr [edx-64]
 004DC3AF    sub         eax,dword ptr [edx+25C]
 004DC3B5    mov         edx,dword ptr [ebp+8]
 004DC3B8    mov         dword ptr [edx-6C],eax
 004DC3BB    mov         eax,dword ptr [ebp+8]
 004DC3BE    cmp         dword ptr [eax-6C],1
>004DC3C2    jge         004DC3CE
 004DC3C4    mov         eax,dword ptr [ebp+8]
 004DC3C7    mov         dword ptr [eax-6C],1
 004DC3CE    pop         ebp
 004DC3CF    ret
*}
end;

//004DC3D0
{*procedure sub_004DC3D0(?:Integer; ?:Integer; ?:Integer; ?:?; ?:?);
begin
 004DC3D0    push        ebp
 004DC3D1    mov         ebp,esp
 004DC3D3    add         esp,0FFFFFFF4
 004DC3D6    mov         dword ptr [ebp-0C],ecx
 004DC3D9    mov         dword ptr [ebp-8],edx
 004DC3DC    mov         dword ptr [ebp-4],eax
 004DC3DF    mov         eax,dword ptr [ebp-4]
 004DC3E2    mov         eax,dword ptr [eax]
 004DC3E4    cmp         eax,dword ptr [ebp+0C]
>004DC3E7    jle         004DC3F3
 004DC3E9    mov         eax,dword ptr [ebp-4]
 004DC3EC    mov         edx,dword ptr [ebp+0C]
 004DC3EF    mov         dword ptr [eax],edx
>004DC3F1    jmp         004DC405
 004DC3F3    mov         eax,dword ptr [ebp-4]
 004DC3F6    mov         eax,dword ptr [eax]
 004DC3F8    cmp         eax,dword ptr [ebp-8]
>004DC3FB    jge         004DC405
 004DC3FD    mov         eax,dword ptr [ebp-4]
 004DC400    mov         edx,dword ptr [ebp-8]
 004DC403    mov         dword ptr [eax],edx
 004DC405    mov         eax,dword ptr [ebp-4]
 004DC408    mov         eax,dword ptr [eax+4]
 004DC40B    cmp         eax,dword ptr [ebp+8]
>004DC40E    jle         004DC41B
 004DC410    mov         eax,dword ptr [ebp-4]
 004DC413    mov         edx,dword ptr [ebp+8]
 004DC416    mov         dword ptr [eax+4],edx
>004DC419    jmp         004DC42F
 004DC41B    mov         eax,dword ptr [ebp-4]
 004DC41E    mov         eax,dword ptr [eax+4]
 004DC421    cmp         eax,dword ptr [ebp-0C]
>004DC424    jge         004DC42F
 004DC426    mov         eax,dword ptr [ebp-4]
 004DC429    mov         edx,dword ptr [ebp-0C]
 004DC42C    mov         dword ptr [eax+4],edx
 004DC42F    mov         esp,ebp
 004DC431    pop         ebp
 004DC432    ret         8
end;*}

//004DC438
{*procedure TCustomGrid.sub_0048A878(?:?; ?:?);
begin
 004DC438    push        ebp
 004DC439    mov         ebp,esp
 004DC43B    add         esp,0FFFFFF64
 004DC441    push        esi
 004DC442    mov         byte ptr [ebp-71],cl
 004DC445    mov         dword ptr [ebp-70],edx
 004DC448    mov         dword ptr [ebp-64],eax
 004DC44B    mov         edx,dword ptr [ebp-70]
 004DC44E    mov         cl,byte ptr [ebp-71]
 004DC451    mov         eax,dword ptr [ebp-64]
 004DC454    call        TWinControl.sub_0048A878
 004DC459    mov         byte ptr [ebp-91],0
 004DC460    mov         edx,dword ptr [ebp-70]
 004DC463    mov         dx,word ptr [edx]
 004DC466    mov         cl,byte ptr [ebp-71]
 004DC469    mov         eax,dword ptr [ebp-64]
 004DC46C    mov         si,0FFB1
 004DC470    call        @CallDynaInst;TCustomGrid.sub_004D85B0
 004DC475    test        al,al
>004DC477    jne         004DC481
 004DC479    mov         eax,dword ptr [ebp-70]
 004DC47C    mov         word ptr [eax],0
 004DC481    mov         eax,dword ptr [ebp-64]
 004DC484    mov         si,0FFC8
 004DC488    call        @CallDynaInst;TControl.sub_0048415C
 004DC48D    test        al,al
>004DC48F    jne         004DC49D
 004DC491    mov         dword ptr [ebp-90],1
>004DC49B    jmp         004DC4A7
 004DC49D    mov         dword ptr [ebp-90],0FFFFFFFF
 004DC4A7    mov         eax,dword ptr [ebp-64]
 004DC4AA    mov         edx,dword ptr [eax+228];TCustomGrid.FCurrent:TGridCoord
 004DC4B0    mov         dword ptr [ebp-84],edx
 004DC4B6    mov         edx,dword ptr [eax+22C];TCustomGrid.FCurrent:Longint
 004DC4BC    mov         dword ptr [ebp-80],edx
 004DC4BF    mov         eax,dword ptr [ebp-64]
 004DC4C2    mov         edx,dword ptr [eax+258];TCustomGrid.FTopLeft:TGridCoord
 004DC4C8    mov         dword ptr [ebp-7C],edx
 004DC4CB    mov         edx,dword ptr [eax+25C];TCustomGrid.FTopLeft:Longint
 004DC4D1    mov         dword ptr [ebp-78],edx
 004DC4D4    push        ebp
 004DC4D5    call        CalcPageExtents
 004DC4DA    pop         ecx
 004DC4DB    test        byte ptr [ebp-71],4
>004DC4DF    je          004DC610
 004DC4E5    mov         eax,dword ptr [ebp-70]
 004DC4E8    movzx       eax,word ptr [eax]
 004DC4EB    add         eax,0FFFFFFDF
 004DC4EE    cmp         eax,7
>004DC4F1    ja          004DC82E
 004DC4F7    jmp         dword ptr [eax*4+4DC4FE]
 004DC4F7    dd          004DC58E
 004DC4F7    dd          004DC59F
 004DC4F7    dd          004DC5DC
 004DC4F7    dd          004DC5AA
 004DC4F7    dd          004DC52E
 004DC4F7    dd          004DC51E
 004DC4F7    dd          004DC55E
 004DC4F7    dd          004DC526
 004DC51E    dec         dword ptr [ebp-78]
>004DC521    jmp         004DC82E
 004DC526    inc         dword ptr [ebp-78]
>004DC529    jmp         004DC82E
 004DC52E    mov         eax,dword ptr [ebp-64]
 004DC531    test        byte ptr [eax+249],10;TCustomGrid.?f249:byte
>004DC538    jne         004DC82E
 004DC53E    mov         eax,dword ptr [ebp-68]
 004DC541    imul        dword ptr [ebp-90]
 004DC547    sub         dword ptr [ebp-84],eax
 004DC54D    mov         eax,dword ptr [ebp-68]
 004DC550    imul        dword ptr [ebp-90]
 004DC556    sub         dword ptr [ebp-7C],eax
>004DC559    jmp         004DC82E
 004DC55E    mov         eax,dword ptr [ebp-64]
 004DC561    test        byte ptr [eax+249],10;TCustomGrid.?f249:byte
>004DC568    jne         004DC82E
 004DC56E    mov         eax,dword ptr [ebp-68]
 004DC571    imul        dword ptr [ebp-90]
 004DC577    add         dword ptr [ebp-84],eax
 004DC57D    mov         eax,dword ptr [ebp-68]
 004DC580    imul        dword ptr [ebp-90]
 004DC586    add         dword ptr [ebp-7C],eax
>004DC589    jmp         004DC82E
 004DC58E    mov         eax,dword ptr [ebp-64]
 004DC591    mov         eax,dword ptr [eax+25C];TCustomGrid.FTopLeft:Longint
 004DC597    mov         dword ptr [ebp-80],eax
>004DC59A    jmp         004DC82E
 004DC59F    mov         eax,dword ptr [ebp-20]
 004DC5A2    mov         dword ptr [ebp-80],eax
>004DC5A5    jmp         004DC82E
 004DC5AA    mov         eax,dword ptr [ebp-64]
 004DC5AD    mov         eax,dword ptr [eax+238];TCustomGrid.FFixedCols:Integer
 004DC5B3    mov         dword ptr [ebp-84],eax
 004DC5B9    mov         eax,dword ptr [ebp-64]
 004DC5BC    mov         eax,dword ptr [eax+23C];TCustomGrid.FFixedRows:Integer
 004DC5C2    mov         dword ptr [ebp-80],eax
 004DC5C5    mov         eax,dword ptr [ebp-64]
 004DC5C8    mov         si,0FFC8
 004DC5CC    call        @CallDynaInst;TControl.sub_0048415C
 004DC5D1    mov         byte ptr [ebp-91],al
>004DC5D7    jmp         004DC82E
 004DC5DC    mov         eax,dword ptr [ebp-64]
 004DC5DF    mov         eax,dword ptr [eax+21C];TCustomGrid.FColCount:Longint
 004DC5E5    dec         eax
 004DC5E6    mov         dword ptr [ebp-84],eax
 004DC5EC    mov         eax,dword ptr [ebp-64]
 004DC5EF    mov         eax,dword ptr [eax+24C];TCustomGrid.FRowCount:Longint
 004DC5F5    dec         eax
 004DC5F6    mov         dword ptr [ebp-80],eax
 004DC5F9    mov         eax,dword ptr [ebp-64]
 004DC5FC    mov         si,0FFC8
 004DC600    call        @CallDynaInst;TControl.sub_0048415C
 004DC605    mov         byte ptr [ebp-91],al
>004DC60B    jmp         004DC82E
 004DC610    mov         eax,dword ptr [ebp-70]
 004DC613    movzx       eax,word ptr [eax]
 004DC616    cmp         eax,25
>004DC619    jg          004DC654
>004DC61B    je          004DC67D
 004DC61D    cmp         eax,22
>004DC620    jg          004DC63F
>004DC622    je          004DC6D3
 004DC628    sub         eax,9
>004DC62B    je          004DC759
 004DC631    sub         eax,18
>004DC634    je          004DC6E4
>004DC63A    jmp         004DC82E
 004DC63F    sub         eax,23
>004DC642    je          004DC726
 004DC648    dec         eax
>004DC649    je          004DC6F5
>004DC64F    jmp         004DC82E
 004DC654    sub         eax,26
>004DC657    je          004DC66D
 004DC659    dec         eax
>004DC65A    je          004DC6A8
 004DC65C    dec         eax
>004DC65D    je          004DC675
 004DC65F    sub         eax,49
>004DC662    je          004DC824
>004DC668    jmp         004DC82E
 004DC66D    dec         dword ptr [ebp-80]
>004DC670    jmp         004DC82E
 004DC675    inc         dword ptr [ebp-80]
>004DC678    jmp         004DC82E
 004DC67D    mov         eax,dword ptr [ebp-64]
 004DC680    test        byte ptr [eax+249],10;TCustomGrid.?f249:byte
>004DC687    je          004DC697
 004DC689    mov         eax,dword ptr [ebp-90]
 004DC68F    sub         dword ptr [ebp-80],eax
>004DC692    jmp         004DC82E
 004DC697    mov         eax,dword ptr [ebp-90]
 004DC69D    sub         dword ptr [ebp-84],eax
>004DC6A3    jmp         004DC82E
 004DC6A8    mov         eax,dword ptr [ebp-64]
 004DC6AB    test        byte ptr [eax+249],10;TCustomGrid.?f249:byte
>004DC6B2    je          004DC6C2
 004DC6B4    mov         eax,dword ptr [ebp-90]
 004DC6BA    add         dword ptr [ebp-80],eax
>004DC6BD    jmp         004DC82E
 004DC6C2    mov         eax,dword ptr [ebp-90]
 004DC6C8    add         dword ptr [ebp-84],eax
>004DC6CE    jmp         004DC82E
 004DC6D3    mov         eax,dword ptr [ebp-6C]
 004DC6D6    add         dword ptr [ebp-80],eax
 004DC6D9    mov         eax,dword ptr [ebp-6C]
 004DC6DC    add         dword ptr [ebp-78],eax
>004DC6DF    jmp         004DC82E
 004DC6E4    mov         eax,dword ptr [ebp-6C]
 004DC6E7    sub         dword ptr [ebp-80],eax
 004DC6EA    mov         eax,dword ptr [ebp-6C]
 004DC6ED    sub         dword ptr [ebp-78],eax
>004DC6F0    jmp         004DC82E
 004DC6F5    mov         eax,dword ptr [ebp-64]
 004DC6F8    test        byte ptr [eax+249],10;TCustomGrid.?f249:byte
>004DC6FF    je          004DC712
 004DC701    mov         eax,dword ptr [ebp-64]
 004DC704    mov         eax,dword ptr [eax+23C];TCustomGrid.FFixedRows:Integer
 004DC70A    mov         dword ptr [ebp-80],eax
>004DC70D    jmp         004DC82E
 004DC712    mov         eax,dword ptr [ebp-64]
 004DC715    mov         eax,dword ptr [eax+238];TCustomGrid.FFixedCols:Integer
 004DC71B    mov         dword ptr [ebp-84],eax
>004DC721    jmp         004DC82E
 004DC726    mov         eax,dword ptr [ebp-64]
 004DC729    test        byte ptr [eax+249],10;TCustomGrid.?f249:byte
>004DC730    je          004DC744
 004DC732    mov         eax,dword ptr [ebp-64]
 004DC735    mov         eax,dword ptr [eax+24C];TCustomGrid.FRowCount:Longint
 004DC73B    dec         eax
 004DC73C    mov         dword ptr [ebp-80],eax
>004DC73F    jmp         004DC82E
 004DC744    mov         eax,dword ptr [ebp-64]
 004DC747    mov         eax,dword ptr [eax+21C];TCustomGrid.FColCount:Longint
 004DC74D    dec         eax
 004DC74E    mov         dword ptr [ebp-84],eax
>004DC754    jmp         004DC82E
 004DC759    test        byte ptr [ebp-71],2
>004DC75D    jne         004DC82E
 004DC763    test        byte ptr [ebp-71],1
>004DC767    je          004DC7B8
 004DC769    dec         dword ptr [ebp-84]
 004DC76F    mov         eax,dword ptr [ebp-64]
 004DC772    mov         eax,dword ptr [eax+238];TCustomGrid.FFixedCols:Integer
 004DC778    cmp         eax,dword ptr [ebp-84]
>004DC77E    jle         004DC7AE
 004DC780    mov         eax,dword ptr [ebp-64]
 004DC783    mov         eax,dword ptr [eax+21C];TCustomGrid.FColCount:Longint
 004DC789    dec         eax
 004DC78A    mov         dword ptr [ebp-84],eax
 004DC790    dec         dword ptr [ebp-80]
 004DC793    mov         eax,dword ptr [ebp-64]
 004DC796    mov         eax,dword ptr [eax+23C];TCustomGrid.FFixedRows:Integer
 004DC79C    cmp         eax,dword ptr [ebp-80]
>004DC79F    jle         004DC7AE
 004DC7A1    mov         eax,dword ptr [ebp-64]
 004DC7A4    mov         eax,dword ptr [eax+24C];TCustomGrid.FRowCount:Longint
 004DC7AA    dec         eax
 004DC7AB    mov         dword ptr [ebp-80],eax
 004DC7AE    mov         al,[004DC958];0x0 gvar_004DC958
 004DC7B3    mov         byte ptr [ebp-71],al
>004DC7B6    jmp         004DC7FB
 004DC7B8    inc         dword ptr [ebp-84]
 004DC7BE    mov         eax,dword ptr [ebp-64]
 004DC7C1    mov         eax,dword ptr [eax+21C];TCustomGrid.FColCount:Longint
 004DC7C7    cmp         eax,dword ptr [ebp-84]
>004DC7CD    jg          004DC7FB
 004DC7CF    mov         eax,dword ptr [ebp-64]
 004DC7D2    mov         eax,dword ptr [eax+238];TCustomGrid.FFixedCols:Integer
 004DC7D8    mov         dword ptr [ebp-84],eax
 004DC7DE    inc         dword ptr [ebp-80]
 004DC7E1    mov         eax,dword ptr [ebp-64]
 004DC7E4    mov         eax,dword ptr [eax+24C];TCustomGrid.FRowCount:Longint
 004DC7EA    cmp         eax,dword ptr [ebp-80]
>004DC7ED    jg          004DC7FB
 004DC7EF    mov         eax,dword ptr [ebp-64]
 004DC7F2    mov         eax,dword ptr [eax+23C];TCustomGrid.FFixedRows:Integer
 004DC7F8    mov         dword ptr [ebp-80],eax
 004DC7FB    mov         edx,dword ptr [ebp-84]
 004DC801    mov         eax,dword ptr [ebp-64]
 004DC804    call        004DD4D8
 004DC809    test        al,al
>004DC80B    jne         004DC82E
 004DC80D    mov         eax,dword ptr [ebp-64]
 004DC810    mov         eax,dword ptr [eax+228];TCustomGrid.FCurrent:TGridCoord
 004DC816    cmp         eax,dword ptr [ebp-84]
>004DC81C    jne         004DC763
>004DC822    jmp         004DC82E
 004DC824    mov         dl,1
 004DC826    mov         eax,dword ptr [ebp-64]
 004DC829    call        004DD938
 004DC82E    mov         eax,dword ptr [ebp-64]
 004DC831    mov         eax,dword ptr [eax+21C];TCustomGrid.FColCount:Longint
 004DC837    dec         eax
 004DC838    mov         dword ptr [ebp-8C],eax
 004DC83E    mov         eax,dword ptr [ebp-64]
 004DC841    mov         eax,dword ptr [eax+24C];TCustomGrid.FRowCount:Longint
 004DC847    dec         eax
 004DC848    mov         dword ptr [ebp-88],eax
 004DC84E    lea         eax,[ebp-9C]
 004DC854    push        eax
 004DC855    lea         ecx,[ebp-60]
 004DC858    lea         edx,[ebp-8C]
 004DC85E    mov         eax,dword ptr [ebp-64]
 004DC861    call        TCustomGrid.CalcMaxTopLeft
 004DC866    mov         eax,dword ptr [ebp-9C]
 004DC86C    mov         dword ptr [ebp-8C],eax
 004DC872    mov         eax,dword ptr [ebp-98]
 004DC878    mov         dword ptr [ebp-88],eax
 004DC87E    push        ebp
 004DC87F    mov         eax,dword ptr [ebp-8C]
 004DC885    push        eax
 004DC886    mov         eax,dword ptr [ebp-88]
 004DC88C    push        eax
 004DC88D    mov         eax,dword ptr [ebp-64]
 004DC890    mov         ecx,dword ptr [eax+23C];TCustomGrid.FFixedRows:Integer
 004DC896    mov         eax,dword ptr [ebp-64]
 004DC899    mov         edx,dword ptr [eax+238];TCustomGrid.FFixedCols:Integer
 004DC89F    lea         eax,[ebp-7C]
 004DC8A2    call        004DC3D0
 004DC8A7    pop         ecx
 004DC8A8    mov         eax,dword ptr [ebp-64]
 004DC8AB    mov         eax,dword ptr [eax+258];TCustomGrid.FTopLeft:TGridCoord
 004DC8B1    cmp         eax,dword ptr [ebp-7C]
>004DC8B4    jne         004DC8C4
 004DC8B6    mov         eax,dword ptr [ebp-64]
 004DC8B9    mov         eax,dword ptr [eax+25C];TCustomGrid.FTopLeft:Longint
 004DC8BF    cmp         eax,dword ptr [ebp-78]
>004DC8C2    je          004DC8D2
 004DC8C4    mov         ecx,dword ptr [ebp-78]
 004DC8C7    mov         edx,dword ptr [ebp-7C]
 004DC8CA    mov         eax,dword ptr [ebp-64]
 004DC8CD    call        004DB83C
 004DC8D2    push        ebp
 004DC8D3    mov         eax,dword ptr [ebp-64]
 004DC8D6    mov         eax,dword ptr [eax+21C];TCustomGrid.FColCount:Longint
 004DC8DC    dec         eax
 004DC8DD    push        eax
 004DC8DE    mov         eax,dword ptr [ebp-64]
 004DC8E1    mov         eax,dword ptr [eax+24C];TCustomGrid.FRowCount:Longint
 004DC8E7    dec         eax
 004DC8E8    push        eax
 004DC8E9    mov         eax,dword ptr [ebp-64]
 004DC8EC    mov         ecx,dword ptr [eax+23C];TCustomGrid.FFixedRows:Integer
 004DC8F2    mov         eax,dword ptr [ebp-64]
 004DC8F5    mov         edx,dword ptr [eax+238];TCustomGrid.FFixedCols:Integer
 004DC8FB    lea         eax,[ebp-84]
 004DC901    call        004DC3D0
 004DC906    pop         ecx
 004DC907    mov         eax,dword ptr [ebp-64]
 004DC90A    mov         eax,dword ptr [eax+228];TCustomGrid.FCurrent:TGridCoord
 004DC910    cmp         eax,dword ptr [ebp-84]
>004DC916    jne         004DC926
 004DC918    mov         eax,dword ptr [ebp-64]
 004DC91B    mov         eax,dword ptr [eax+22C];TCustomGrid.FCurrent:Longint
 004DC921    cmp         eax,dword ptr [ebp-80]
>004DC924    je          004DC941
 004DC926    test        byte ptr [ebp-71],1
 004DC92A    setne       al
 004DC92D    xor         al,1
 004DC92F    push        eax
 004DC930    mov         ecx,dword ptr [ebp-80]
 004DC933    mov         edx,dword ptr [ebp-84]
 004DC939    mov         eax,dword ptr [ebp-64]
 004DC93C    call        004DAB18
 004DC941    cmp         byte ptr [ebp-91],0
>004DC948    je          004DC952
 004DC94A    mov         eax,dword ptr [ebp-64]
 004DC94D    mov         edx,dword ptr [eax]
 004DC94F    call        dword ptr [edx+7C];TCustomGrid.sub_0048BE68
 004DC952    pop         esi
 004DC953    mov         esp,ebp
 004DC955    pop         ebp
 004DC956    ret
end;*}

//004DC95C
{*procedure TCustomGrid.sub_0048AAD0(?:?);
begin
 004DC95C    push        ebp
 004DC95D    mov         ebp,esp
 004DC95F    add         esp,0FFFFFFF8
 004DC962    mov         dword ptr [ebp-8],edx
 004DC965    mov         dword ptr [ebp-4],eax
 004DC968    mov         edx,dword ptr [ebp-8]
 004DC96B    mov         eax,dword ptr [ebp-4]
 004DC96E    call        TWinControl.sub_0048AAD0
 004DC973    mov         eax,dword ptr [ebp-4]
 004DC976    test        byte ptr [eax+249],20;TCustomGrid.?f249:byte
>004DC97D    jne         004DC9AB
 004DC97F    mov         eax,dword ptr [ebp-8]
 004DC982    cmp         byte ptr [eax],0D
>004DC985    jne         004DC9AB
 004DC987    mov         eax,dword ptr [ebp-4]
 004DC98A    cmp         byte ptr [eax+28D],0;TCustomGrid.FEditorMode:Boolean
>004DC991    je          004DC99D
 004DC993    mov         eax,dword ptr [ebp-4]
 004DC996    call        004D8764
>004DC99B    jmp         004DC9A5
 004DC99D    mov         eax,dword ptr [ebp-4]
 004DC9A0    call        004D8780
 004DC9A5    mov         eax,dword ptr [ebp-8]
 004DC9A8    mov         byte ptr [eax],0
 004DC9AB    pop         ecx
 004DC9AC    pop         ecx
 004DC9AD    pop         ebp
 004DC9AE    ret
end;*}

//004DC9B0
{*procedure TCustomGrid.sub_00485588(?:?; ?:?; ?:?; ?:?);
begin
 004DC9B0    push        ebp
 004DC9B1    mov         ebp,esp
 004DC9B3    add         esp,0FFFFFF80
 004DC9B6    push        ebx
 004DC9B7    push        esi
 004DC9B8    push        edi
 004DC9B9    mov         byte ptr [ebp-6],cl
 004DC9BC    mov         byte ptr [ebp-5],dl
 004DC9BF    mov         dword ptr [ebp-4],eax
 004DC9C2    mov         byte ptr [ebp-11],0
 004DC9C6    mov         eax,dword ptr [ebp-4]
 004DC9C9    call        TCustomGrid.HideEdit
 004DC9CE    mov         eax,dword ptr [ebp-4]
 004DC9D1    test        byte ptr [eax+1C],10;TCustomGrid.FComponentState:TComponentState
>004DC9D5    jne         004DCA19
 004DC9D7    mov         eax,dword ptr [ebp-4]
 004DC9DA    mov         si,0FFB8
 004DC9DE    call        @CallDynaInst;TWinControl.sub_0048BFC8
 004DC9E3    test        al,al
>004DC9E5    jne         004DC9F3
 004DC9E7    mov         eax,dword ptr [ebp-4]
 004DC9EA    call        004A0740
 004DC9EF    test        eax,eax
>004DC9F1    jne         004DCA19
 004DC9F3    mov         eax,dword ptr [ebp-4]
 004DC9F6    mov         edx,dword ptr [eax]
 004DC9F8    call        dword ptr [edx+0C4];TCustomGrid.sub_0048C028
 004DC9FE    mov         eax,dword ptr [ebp-4]
 004DCA01    call        004D8660
 004DCA06    test        al,al
>004DCA08    jne         004DCA19
 004DCA0A    xor         edx,edx
 004DCA0C    mov         eax,dword ptr [ebp-4]
 004DCA0F    call        00483BB0
>004DCA14    jmp         004DCD91
 004DCA19    cmp         byte ptr [ebp-5],0
>004DCA1D    jne         004DCA36
 004DCA1F    test        byte ptr [ebp-6],40
>004DCA23    je          004DCA36
 004DCA25    mov         eax,dword ptr [ebp-4]
 004DCA28    mov         si,0FFE9
 004DCA2C    call        @CallDynaInst;TControl.sub_0048555C
>004DCA31    jmp         004DCD4B
 004DCA36    cmp         byte ptr [ebp-5],0
>004DCA3A    jne         004DCD4B
 004DCA40    lea         edx,[ebp-78]
 004DCA43    mov         eax,dword ptr [ebp-4]
 004DCA46    call        TCustomGrid.CalcDrawInfo
 004DCA4B    mov         eax,dword ptr [ebp-4]
 004DCA4E    add         eax,28E;TCustomGrid.FGridState:TGridState
 004DCA53    push        eax
 004DCA54    mov         eax,dword ptr [ebp-4]
 004DCA57    add         eax,260;TCustomGrid.FSizingIndex:Longint
 004DCA5C    push        eax
 004DCA5D    mov         eax,dword ptr [ebp-4]
 004DCA60    add         eax,264;TCustomGrid.FSizingPos:Integer
 004DCA65    push        eax
 004DCA66    mov         eax,dword ptr [ebp-4]
 004DCA69    add         eax,268;TCustomGrid.FSizingOfs:Integer
 004DCA6E    push        eax
 004DCA6F    lea         eax,[ebp-78]
 004DCA72    push        eax
 004DCA73    mov         ecx,dword ptr [ebp+8]
 004DCA76    mov         edx,dword ptr [ebp+0C]
 004DCA79    mov         eax,dword ptr [ebp-4]
 004DCA7C    mov         ebx,dword ptr [eax]
 004DCA7E    call        dword ptr [ebx+0CC];TCustomGrid.sub_004DA0FC
 004DCA84    mov         eax,dword ptr [ebp-4]
 004DCA87    cmp         byte ptr [eax+28E],0;TCustomGrid.FGridState:TGridState
>004DCA8E    je          004DCAD6
 004DCA90    mov         eax,dword ptr [ebp-4]
 004DCA93    cmp         byte ptr [eax+28E],3;TCustomGrid.FGridState:TGridState
>004DCA9A    jne         004DCAC6
 004DCA9C    mov         eax,dword ptr [ebp-4]
 004DCA9F    mov         si,0FFC8
 004DCAA3    call        @CallDynaInst;TControl.sub_0048415C
 004DCAA8    test        al,al
>004DCAAA    je          004DCAC6
 004DCAAC    mov         eax,dword ptr [ebp-4]
 004DCAAF    call        TControl.GetClientWidth
 004DCAB4    mov         edx,dword ptr [ebp-4]
 004DCAB7    sub         eax,dword ptr [edx+264]
 004DCABD    mov         edx,dword ptr [ebp-4]
 004DCAC0    mov         dword ptr [edx+264],eax;TCustomGrid.FSizingPos:Integer
 004DCAC6    lea         edx,[ebp-78]
 004DCAC9    mov         eax,dword ptr [ebp-4]
 004DCACC    call        TCustomGrid.DrawSizingLine
>004DCAD1    jmp         004DCD91
 004DCAD6    lea         eax,[ebp-78]
 004DCAD9    push        eax
 004DCADA    lea         eax,[ebp-10]
 004DCADD    push        eax
 004DCADE    mov         ecx,dword ptr [ebp+8]
 004DCAE1    mov         edx,dword ptr [ebp+0C]
 004DCAE4    mov         eax,dword ptr [ebp-4]
 004DCAE7    call        004D9B54
 004DCAEC    mov         eax,dword ptr [ebp-4]
 004DCAEF    mov         eax,dword ptr [eax+238];TCustomGrid.FFixedCols:Integer
 004DCAF5    cmp         eax,dword ptr [ebp-10]
>004DCAF8    jg          004DCBB8
 004DCAFE    mov         eax,dword ptr [ebp-4]
 004DCB01    mov         eax,dword ptr [eax+23C];TCustomGrid.FFixedRows:Integer
 004DCB07    cmp         eax,dword ptr [ebp-0C]
>004DCB0A    jg          004DCBB8
 004DCB10    mov         eax,dword ptr [ebp-4]
 004DCB13    test        byte ptr [eax+249],4;TCustomGrid.?f249:byte
>004DCB1A    je          004DCB6D
 004DCB1C    mov         eax,dword ptr [ebp-4]
 004DCB1F    mov         eax,dword ptr [eax+228];TCustomGrid.FCurrent:TGridCoord
 004DCB25    cmp         eax,dword ptr [ebp-10]
>004DCB28    jne         004DCB42
 004DCB2A    mov         eax,dword ptr [ebp-4]
 004DCB2D    mov         eax,dword ptr [eax+22C];TCustomGrid.FCurrent:Longint
 004DCB33    cmp         eax,dword ptr [ebp-0C]
>004DCB36    jne         004DCB42
 004DCB38    mov         eax,dword ptr [ebp-4]
 004DCB3B    call        004D8780
>004DCB40    jmp         004DCB5C
 004DCB42    push        1
 004DCB44    push        1
 004DCB46    mov         ecx,dword ptr [ebp-0C]
 004DCB49    mov         edx,dword ptr [ebp-10]
 004DCB4C    mov         eax,dword ptr [ebp-4]
 004DCB4F    call        004DB69C
 004DCB54    mov         eax,dword ptr [ebp-4]
 004DCB57    call        004DDD14
 004DCB5C    mov         eax,dword ptr [ebp-4]
 004DCB5F    mov         si,0FFEB
 004DCB63    call        @CallDynaInst;TControl.sub_004854CC
>004DCB68    jmp         004DCD4B
 004DCB6D    mov         eax,dword ptr [ebp-4]
 004DCB70    mov         byte ptr [eax+28E],1;TCustomGrid.FGridState:TGridState
 004DCB77    push        0
 004DCB79    push        3C
 004DCB7B    push        1
 004DCB7D    mov         eax,dword ptr [ebp-4]
 004DCB80    call        TWinControl.GetHandle
 004DCB85    push        eax
 004DCB86    call        user32.SetTimer
 004DCB8B    test        byte ptr [ebp-6],1
>004DCB8F    je          004DCBA1
 004DCB91    lea         edx,[ebp-10]
 004DCB94    mov         eax,dword ptr [ebp-4]
 004DCB97    call        004DB5F4
>004DCB9C    jmp         004DCD4B
 004DCBA1    push        1
 004DCBA3    push        1
 004DCBA5    mov         ecx,dword ptr [ebp-0C]
 004DCBA8    mov         edx,dword ptr [ebp-10]
 004DCBAB    mov         eax,dword ptr [ebp-4]
 004DCBAE    call        004DB69C
>004DCBB3    jmp         004DCD4B
 004DCBB8    mov         eax,dword ptr [ebp-4]
 004DCBBB    test        byte ptr [eax+249],1;TCustomGrid.?f249:byte
>004DCBC2    je          004DCC86
 004DCBC8    cmp         dword ptr [ebp-10],0
>004DCBCC    jl          004DCC86
 004DCBD2    mov         eax,dword ptr [ebp-4]
 004DCBD5    mov         eax,dword ptr [eax+238];TCustomGrid.FFixedCols:Integer
 004DCBDB    cmp         eax,dword ptr [ebp-10]
>004DCBDE    jle         004DCC86
 004DCBE4    mov         eax,dword ptr [ebp-4]
 004DCBE7    mov         eax,dword ptr [eax+23C];TCustomGrid.FFixedRows:Integer
 004DCBED    cmp         eax,dword ptr [ebp-0C]
>004DCBF0    jg          004DCC86
 004DCBF6    mov         eax,dword ptr [ebp-4]
 004DCBF9    mov         edx,dword ptr [ebp-0C]
 004DCBFC    mov         dword ptr [eax+26C],edx;TCustomGrid.FMoveIndex:Longint
 004DCC02    mov         eax,dword ptr [ebp-4]
 004DCC05    mov         eax,dword ptr [eax+26C];TCustomGrid.FMoveIndex:Longint
 004DCC0B    mov         edx,dword ptr [ebp-4]
 004DCC0E    mov         dword ptr [edx+270],eax;TCustomGrid.FMovePos:Longint
 004DCC14    lea         ecx,[ebp-80]
 004DCC17    mov         edx,dword ptr [ebp+8]
 004DCC1A    mov         eax,dword ptr [ebp+0C]
 004DCC1D    call        Point
 004DCC22    lea         eax,[ebp-80]
 004DCC25    push        eax
 004DCC26    mov         eax,dword ptr [ebp-4]
 004DCC29    lea         ecx,[eax+270];TCustomGrid.FMovePos:Longint
 004DCC2F    mov         eax,dword ptr [ebp-4]
 004DCC32    lea         edx,[eax+26C];TCustomGrid.FMoveIndex:Longint
 004DCC38    mov         eax,dword ptr [ebp-4]
 004DCC3B    mov         si,0FFA2
 004DCC3F    call        @CallDynaInst;TCustomGrid.sub_004DE840
 004DCC44    test        al,al
>004DCC46    je          004DCD4B
 004DCC4C    mov         eax,dword ptr [ebp-4]
 004DCC4F    mov         byte ptr [eax+28E],4;TCustomGrid.FGridState:TGridState
 004DCC56    mov         eax,dword ptr [ebp-4]
 004DCC59    mov         edx,dword ptr [eax]
 004DCC5B    call        dword ptr [edx+88];TCustomGrid.sub_0048BF40
 004DCC61    mov         eax,dword ptr [ebp-4]
 004DCC64    call        TCustomGrid.DrawMove
 004DCC69    mov         byte ptr [ebp-11],1
 004DCC6D    push        0
 004DCC6F    push        3C
 004DCC71    push        1
 004DCC73    mov         eax,dword ptr [ebp-4]
 004DCC76    call        TWinControl.GetHandle
 004DCC7B    push        eax
 004DCC7C    call        user32.SetTimer
>004DCC81    jmp         004DCD4B
 004DCC86    mov         eax,dword ptr [ebp-4]
 004DCC89    test        byte ptr [eax+249],2;TCustomGrid.?f249:byte
>004DCC90    je          004DCD4B
 004DCC96    cmp         dword ptr [ebp-0C],0
>004DCC9A    jl          004DCD4B
 004DCCA0    mov         eax,dword ptr [ebp-4]
 004DCCA3    mov         eax,dword ptr [eax+23C];TCustomGrid.FFixedRows:Integer
 004DCCA9    cmp         eax,dword ptr [ebp-0C]
>004DCCAC    jle         004DCD4B
 004DCCB2    mov         eax,dword ptr [ebp-4]
 004DCCB5    mov         eax,dword ptr [eax+238];TCustomGrid.FFixedCols:Integer
 004DCCBB    cmp         eax,dword ptr [ebp-10]
>004DCCBE    jg          004DCD4B
 004DCCC4    mov         eax,dword ptr [ebp-4]
 004DCCC7    mov         edx,dword ptr [ebp-10]
 004DCCCA    mov         dword ptr [eax+26C],edx;TCustomGrid.FMoveIndex:Longint
 004DCCD0    mov         eax,dword ptr [ebp-4]
 004DCCD3    mov         eax,dword ptr [eax+26C];TCustomGrid.FMoveIndex:Longint
 004DCCD9    mov         edx,dword ptr [ebp-4]
 004DCCDC    mov         dword ptr [edx+270],eax;TCustomGrid.FMovePos:Longint
 004DCCE2    lea         ecx,[ebp-80]
 004DCCE5    mov         edx,dword ptr [ebp+8]
 004DCCE8    mov         eax,dword ptr [ebp+0C]
 004DCCEB    call        Point
 004DCCF0    lea         eax,[ebp-80]
 004DCCF3    push        eax
 004DCCF4    mov         eax,dword ptr [ebp-4]
 004DCCF7    lea         ecx,[eax+270];TCustomGrid.FMovePos:Longint
 004DCCFD    mov         eax,dword ptr [ebp-4]
 004DCD00    lea         edx,[eax+26C];TCustomGrid.FMoveIndex:Longint
 004DCD06    mov         eax,dword ptr [ebp-4]
 004DCD09    mov         si,0FFA3
 004DCD0D    call        @CallDynaInst;TCustomGrid.sub_004DE824
 004DCD12    test        al,al
>004DCD14    je          004DCD4B
 004DCD16    mov         eax,dword ptr [ebp-4]
 004DCD19    mov         byte ptr [eax+28E],5;TCustomGrid.FGridState:TGridState
 004DCD20    mov         eax,dword ptr [ebp-4]
 004DCD23    mov         edx,dword ptr [eax]
 004DCD25    call        dword ptr [edx+88];TCustomGrid.sub_0048BF40
 004DCD2B    mov         eax,dword ptr [ebp-4]
 004DCD2E    call        TCustomGrid.DrawMove
 004DCD33    mov         byte ptr [ebp-11],1
 004DCD37    push        0
 004DCD39    push        3C
 004DCD3B    push        1
 004DCD3D    mov         eax,dword ptr [ebp-4]
 004DCD40    call        TWinControl.GetHandle
 004DCD45    push        eax
 004DCD46    call        user32.SetTimer
 004DCD4B    xor         eax,eax
 004DCD4D    push        ebp
 004DCD4E    push        4DCD79
 004DCD53    push        dword ptr fs:[eax]
 004DCD56    mov         dword ptr fs:[eax],esp
 004DCD59    mov         eax,dword ptr [ebp+0C]
 004DCD5C    push        eax
 004DCD5D    mov         eax,dword ptr [ebp+8]
 004DCD60    push        eax
 004DCD61    mov         cl,byte ptr [ebp-6]
 004DCD64    mov         dl,byte ptr [ebp-5]
 004DCD67    mov         eax,dword ptr [ebp-4]
 004DCD6A    call        TControl.sub_00485588
 004DCD6F    xor         eax,eax
 004DCD71    pop         edx
 004DCD72    pop         ecx
 004DCD73    pop         ecx
 004DCD74    mov         dword ptr fs:[eax],edx
>004DCD77    jmp         004DCD91
>004DCD79    jmp         @HandleAnyException
 004DCD7E    cmp         byte ptr [ebp-11],0
>004DCD82    je          004DCD8C
 004DCD84    mov         eax,dword ptr [ebp-4]
 004DCD87    call        TCustomGrid.DrawMove
 004DCD8C    call        @DoneExcept
 004DCD91    pop         edi
 004DCD92    pop         esi
 004DCD93    pop         ebx
 004DCD94    mov         esp,ebp
 004DCD96    pop         ebp
 004DCD97    ret         8
end;*}

//004DCD9C
{*procedure TCustomGrid.sub_004858F4(?:?; ?:?; ?:?);
begin
 004DCD9C    push        ebp
 004DCD9D    mov         ebp,esp
 004DCD9F    add         esp,0FFFFFF80
 004DCDA2    mov         dword ptr [ebp-0C],ecx
 004DCDA5    mov         byte ptr [ebp-5],dl
 004DCDA8    mov         dword ptr [ebp-4],eax
 004DCDAB    lea         edx,[ebp-78]
 004DCDAE    mov         eax,dword ptr [ebp-4]
 004DCDB1    call        TCustomGrid.CalcDrawInfo
 004DCDB6    mov         eax,dword ptr [ebp-4]
 004DCDB9    mov         al,byte ptr [eax+28E];TCustomGrid.FGridState:TGridState
 004DCDBF    dec         al
>004DCDC1    je          004DCDD4
 004DCDC3    dec         eax
 004DCDC4    sub         al,2
>004DCDC6    jb          004DCECA
 004DCDCC    sub         al,2
>004DCDCE    jae         004DCF18
 004DCDD4    lea         eax,[ebp-78]
 004DCDD7    push        eax
 004DCDD8    lea         eax,[ebp-14]
 004DCDDB    push        eax
 004DCDDC    mov         ecx,dword ptr [ebp+8]
 004DCDDF    mov         edx,dword ptr [ebp-0C]
 004DCDE2    mov         eax,dword ptr [ebp-4]
 004DCDE5    call        004D9B54
 004DCDEA    mov         eax,dword ptr [ebp-14]
 004DCDED    mov         edx,dword ptr [ebp-4]
 004DCDF0    cmp         eax,dword ptr [edx+238];TCustomGrid.FFixedCols:Integer
>004DCDF6    jl          004DCF18
 004DCDFC    mov         eax,dword ptr [ebp-10]
 004DCDFF    mov         edx,dword ptr [ebp-4]
 004DCE02    cmp         eax,dword ptr [edx+23C];TCustomGrid.FFixedRows:Integer
>004DCE08    jl          004DCF18
 004DCE0E    mov         eax,dword ptr [ebp-68]
 004DCE11    inc         eax
 004DCE12    cmp         eax,dword ptr [ebp-14]
>004DCE15    jl          004DCF18
 004DCE1B    mov         eax,dword ptr [ebp-38]
 004DCE1E    inc         eax
 004DCE1F    cmp         eax,dword ptr [ebp-10]
>004DCE22    jl          004DCF18
 004DCE28    mov         eax,dword ptr [ebp-4]
 004DCE2B    mov         al,byte ptr [eax+28E];TCustomGrid.FGridState:TGridState
 004DCE31    dec         al
>004DCE33    je          004DCE42
 004DCE35    sub         al,3
>004DCE37    je          004DCE9E
 004DCE39    dec         al
>004DCE3B    je          004DCE72
>004DCE3D    jmp         004DCF18
 004DCE42    mov         eax,dword ptr [ebp-14]
 004DCE45    mov         edx,dword ptr [ebp-4]
 004DCE48    cmp         eax,dword ptr [edx+210];TCustomGrid.FAnchor:TGridCoord
>004DCE4E    jne         004DCE62
 004DCE50    mov         eax,dword ptr [ebp-10]
 004DCE53    mov         edx,dword ptr [ebp-4]
 004DCE56    cmp         eax,dword ptr [edx+214]
>004DCE5C    je          004DCF18
 004DCE62    lea         edx,[ebp-14]
 004DCE65    mov         eax,dword ptr [ebp-4]
 004DCE68    call        004DB5F4
>004DCE6D    jmp         004DCF18
 004DCE72    lea         eax,[ebp-78]
 004DCE75    push        eax
 004DCE76    lea         eax,[ebp-78]
 004DCE79    push        eax
 004DCE7A    push        0
 004DCE7C    lea         ecx,[ebp-80]
 004DCE7F    mov         edx,dword ptr [ebp+8]
 004DCE82    mov         eax,dword ptr [ebp-0C]
 004DCE85    call        Point
 004DCE8A    lea         eax,[ebp-80]
 004DCE8D    push        eax
 004DCE8E    mov         ecx,dword ptr [ebp-14]
 004DCE91    mov         edx,dword ptr [ebp-0C]
 004DCE94    mov         eax,dword ptr [ebp-4]
 004DCE97    call        004DD244
>004DCE9C    jmp         004DCF18
 004DCE9E    lea         eax,[ebp-78]
 004DCEA1    push        eax
 004DCEA2    lea         eax,[ebp-48]
 004DCEA5    push        eax
 004DCEA6    push        1
 004DCEA8    lea         ecx,[ebp-80]
 004DCEAB    mov         edx,dword ptr [ebp+8]
 004DCEAE    mov         eax,dword ptr [ebp-0C]
 004DCEB1    call        Point
 004DCEB6    lea         eax,[ebp-80]
 004DCEB9    push        eax
 004DCEBA    mov         ecx,dword ptr [ebp-10]
 004DCEBD    mov         edx,dword ptr [ebp+8]
 004DCEC0    mov         eax,dword ptr [ebp-4]
 004DCEC3    call        004DD244
>004DCEC8    jmp         004DCF18
 004DCECA    lea         edx,[ebp-78]
 004DCECD    mov         eax,dword ptr [ebp-4]
 004DCED0    call        TCustomGrid.DrawSizingLine
 004DCED5    mov         eax,dword ptr [ebp-4]
 004DCED8    cmp         byte ptr [eax+28E],2;TCustomGrid.FGridState:TGridState
>004DCEDF    jne         004DCEF8
 004DCEE1    mov         eax,dword ptr [ebp+8]
 004DCEE4    mov         edx,dword ptr [ebp-4]
 004DCEE7    add         eax,dword ptr [edx+268];TCustomGrid.FSizingOfs:Integer
 004DCEED    mov         edx,dword ptr [ebp-4]
 004DCEF0    mov         dword ptr [edx+264],eax;TCustomGrid.FSizingPos:Integer
>004DCEF6    jmp         004DCF0D
 004DCEF8    mov         eax,dword ptr [ebp-0C]
 004DCEFB    mov         edx,dword ptr [ebp-4]
 004DCEFE    add         eax,dword ptr [edx+268];TCustomGrid.FSizingOfs:Integer
 004DCF04    mov         edx,dword ptr [ebp-4]
 004DCF07    mov         dword ptr [edx+264],eax;TCustomGrid.FSizingPos:Integer
 004DCF0D    lea         edx,[ebp-78]
 004DCF10    mov         eax,dword ptr [ebp-4]
 004DCF13    call        TCustomGrid.DrawSizingLine
 004DCF18    mov         eax,dword ptr [ebp+8]
 004DCF1B    push        eax
 004DCF1C    mov         ecx,dword ptr [ebp-0C]
 004DCF1F    mov         dl,byte ptr [ebp-5]
 004DCF22    mov         eax,dword ptr [ebp-4]
 004DCF25    call        TControl.sub_004858F4
 004DCF2A    mov         esp,ebp
 004DCF2C    pop         ebp
 004DCF2D    ret         4
end;*}

//004DCF30
{*function sub_004DCF30(?:TGridDrawInfo; ?:?):?;
begin
 004DCF30    push        ebp
 004DCF31    mov         ebp,esp
 004DCF33    add         esp,0FFFFFFF0
 004DCF36    push        ebx
 004DCF37    mov         dword ptr [ebp-4],eax
 004DCF3A    mov         eax,dword ptr [ebp-4]
 004DCF3D    mov         eax,dword ptr [eax+4]
 004DCF40    mov         dword ptr [ebp-8],eax
 004DCF43    mov         eax,dword ptr [ebp-4]
 004DCF46    mov         eax,dword ptr [eax+1C]
 004DCF49    mov         edx,dword ptr [ebp+8]
 004DCF4C    mov         edx,dword ptr [edx-4]
 004DCF4F    mov         edx,dword ptr [edx+260]
 004DCF55    dec         edx
 004DCF56    sub         edx,eax
>004DCF58    jl          004DCF7D
 004DCF5A    inc         edx
 004DCF5B    mov         dword ptr [ebp-10],edx
 004DCF5E    mov         dword ptr [ebp-0C],eax
 004DCF61    mov         ebx,dword ptr [ebp-4]
 004DCF64    mov         edx,dword ptr [ebp-0C]
 004DCF67    mov         eax,dword ptr [ebx+2C]
 004DCF6A    call        dword ptr [ebx+28]
 004DCF6D    mov         edx,dword ptr [ebp-4]
 004DCF70    add         eax,dword ptr [edx]
 004DCF72    add         dword ptr [ebp-8],eax
 004DCF75    inc         dword ptr [ebp-0C]
 004DCF78    dec         dword ptr [ebp-10]
>004DCF7B    jne         004DCF61
 004DCF7D    mov         eax,dword ptr [ebp+8]
 004DCF80    mov         eax,dword ptr [eax-4]
 004DCF83    mov         eax,dword ptr [eax+264]
 004DCF89    sub         eax,dword ptr [ebp-8]
 004DCF8C    mov         dword ptr [ebp-8],eax
 004DCF8F    mov         eax,dword ptr [ebp-8]
 004DCF92    pop         ebx
 004DCF93    mov         esp,ebp
 004DCF95    pop         ebp
 004DCF96    ret
end;*}

//004DCF98
{*procedure TCustomGrid.sub_004859D0(?:?; ?:?; ?:?; ?:?);
begin
 004DCF98    push        ebp
 004DCF99    mov         ebp,esp
 004DCF9B    add         esp,0FFFFFF88
 004DCF9E    push        esi
 004DCF9F    mov         byte ptr [ebp-6],cl
 004DCFA2    mov         byte ptr [ebp-5],dl
 004DCFA5    mov         dword ptr [ebp-4],eax
 004DCFA8    xor         eax,eax
 004DCFAA    push        ebp
 004DCFAB    push        4DD233
 004DCFB0    push        dword ptr fs:[eax]
 004DCFB3    mov         dword ptr fs:[eax],esp
 004DCFB6    mov         eax,dword ptr [ebp-4]
 004DCFB9    mov         al,byte ptr [eax+28E];TCustomGrid.FGridState:TGridState
 004DCFBF    dec         al
>004DCFC1    je          004DCFDB
 004DCFC3    dec         eax
 004DCFC4    sub         al,2
>004DCFC6    jb          004DD01A
>004DCFC8    je          004DD171
 004DCFCE    dec         al
>004DCFD0    je          004DD0E2
>004DCFD6    jmp         004DD1FD
 004DCFDB    mov         eax,dword ptr [ebp+8]
 004DCFDE    push        eax
 004DCFDF    mov         ecx,dword ptr [ebp+0C]
 004DCFE2    mov         dl,byte ptr [ebp-6]
 004DCFE5    mov         eax,dword ptr [ebp-4]
 004DCFE8    mov         si,0FFD4
 004DCFEC    call        @CallDynaInst;TCustomGrid.sub_004858F4
 004DCFF1    push        1
 004DCFF3    mov         eax,dword ptr [ebp-4]
 004DCFF6    call        TWinControl.GetHandle
 004DCFFB    push        eax
 004DCFFC    call        user32.KillTimer
 004DD001    mov         eax,dword ptr [ebp-4]
 004DD004    call        004DDD14
 004DD009    mov         eax,dword ptr [ebp-4]
 004DD00C    mov         si,0FFEB
 004DD010    call        @CallDynaInst;TControl.sub_004854CC
>004DD015    jmp         004DD205
 004DD01A    lea         edx,[ebp-70]
 004DD01D    mov         eax,dword ptr [ebp-4]
 004DD020    call        TCustomGrid.CalcDrawInfo
 004DD025    lea         edx,[ebp-70]
 004DD028    mov         eax,dword ptr [ebp-4]
 004DD02B    call        TCustomGrid.DrawSizingLine
 004DD030    mov         eax,dword ptr [ebp-4]
 004DD033    cmp         byte ptr [eax+28E],3;TCustomGrid.FGridState:TGridState
>004DD03A    jne         004DD066
 004DD03C    mov         eax,dword ptr [ebp-4]
 004DD03F    mov         si,0FFC8
 004DD043    call        @CallDynaInst;TControl.sub_0048415C
 004DD048    test        al,al
>004DD04A    je          004DD066
 004DD04C    mov         eax,dword ptr [ebp-4]
 004DD04F    call        TControl.GetClientWidth
 004DD054    mov         edx,dword ptr [ebp-4]
 004DD057    sub         eax,dword ptr [edx+264]
 004DD05D    mov         edx,dword ptr [ebp-4]
 004DD060    mov         dword ptr [edx+264],eax;TCustomGrid.FSizingPos:Integer
 004DD066    mov         eax,dword ptr [ebp-4]
 004DD069    cmp         byte ptr [eax+28E],3;TCustomGrid.FGridState:TGridState
>004DD070    jne         004DD0AA
 004DD072    push        ebp
 004DD073    lea         eax,[ebp-70]
 004DD076    call        004DCF30
 004DD07B    pop         ecx
 004DD07C    mov         dword ptr [ebp-0C],eax
 004DD07F    cmp         dword ptr [ebp-0C],1
>004DD083    jle         004DD205
 004DD089    mov         eax,dword ptr [ebp-4]
 004DD08C    mov         edx,dword ptr [eax+260];TCustomGrid.FSizingIndex:Longint
 004DD092    mov         ecx,dword ptr [ebp-0C]
 004DD095    mov         eax,dword ptr [ebp-4]
 004DD098    call        004DD650
 004DD09D    mov         eax,dword ptr [ebp-4]
 004DD0A0    call        004DE6D4
>004DD0A5    jmp         004DD205
 004DD0AA    push        ebp
 004DD0AB    lea         eax,[ebp-40]
 004DD0AE    call        004DCF30
 004DD0B3    pop         ecx
 004DD0B4    mov         dword ptr [ebp-0C],eax
 004DD0B7    cmp         dword ptr [ebp-0C],1
>004DD0BB    jle         004DD205
 004DD0C1    mov         eax,dword ptr [ebp-4]
 004DD0C4    mov         edx,dword ptr [eax+260];TCustomGrid.FSizingIndex:Longint
 004DD0CA    mov         ecx,dword ptr [ebp-0C]
 004DD0CD    mov         eax,dword ptr [ebp-4]
 004DD0D0    call        004DDACC
 004DD0D5    mov         eax,dword ptr [ebp-4]
 004DD0D8    call        004DE6D4
>004DD0DD    jmp         004DD205
 004DD0E2    mov         eax,dword ptr [ebp-4]
 004DD0E5    call        TCustomGrid.DrawMove
 004DD0EA    push        1
 004DD0EC    mov         eax,dword ptr [ebp-4]
 004DD0EF    call        TWinControl.GetHandle
 004DD0F4    push        eax
 004DD0F5    call        user32.KillTimer
 004DD0FA    lea         ecx,[ebp-78]
 004DD0FD    mov         edx,dword ptr [ebp+8]
 004DD100    mov         eax,dword ptr [ebp+0C]
 004DD103    call        Point
 004DD108    lea         eax,[ebp-78]
 004DD10B    push        eax
 004DD10C    mov         eax,dword ptr [ebp-4]
 004DD10F    lea         ecx,[eax+270];TCustomGrid.FMovePos:Longint
 004DD115    mov         eax,dword ptr [ebp-4]
 004DD118    lea         edx,[eax+26C];TCustomGrid.FMoveIndex:Longint
 004DD11E    mov         eax,dword ptr [ebp-4]
 004DD121    mov         si,0FF9F
 004DD125    call        @CallDynaInst;TCustomGrid.sub_004DE85C
 004DD12A    test        al,al
>004DD12C    je          004DD164
 004DD12E    mov         eax,dword ptr [ebp-4]
 004DD131    mov         eax,dword ptr [eax+26C];TCustomGrid.FMoveIndex:Longint
 004DD137    mov         edx,dword ptr [ebp-4]
 004DD13A    cmp         eax,dword ptr [edx+270];TCustomGrid.FMovePos:Longint
>004DD140    je          004DD164
 004DD142    mov         eax,dword ptr [ebp-4]
 004DD145    mov         ecx,dword ptr [eax+270];TCustomGrid.FMovePos:Longint
 004DD14B    mov         eax,dword ptr [ebp-4]
 004DD14E    mov         edx,dword ptr [eax+26C];TCustomGrid.FMoveIndex:Longint
 004DD154    mov         eax,dword ptr [ebp-4]
 004DD157    call        004D8A88
 004DD15C    mov         eax,dword ptr [ebp-4]
 004DD15F    call        004DE6D4
 004DD164    mov         eax,dword ptr [ebp-4]
 004DD167    call        004DDD14
>004DD16C    jmp         004DD205
 004DD171    mov         eax,dword ptr [ebp-4]
 004DD174    call        TCustomGrid.DrawMove
 004DD179    push        1
 004DD17B    mov         eax,dword ptr [ebp-4]
 004DD17E    call        TWinControl.GetHandle
 004DD183    push        eax
 004DD184    call        user32.KillTimer
 004DD189    lea         ecx,[ebp-78]
 004DD18C    mov         edx,dword ptr [ebp+8]
 004DD18F    mov         eax,dword ptr [ebp+0C]
 004DD192    call        Point
 004DD197    lea         eax,[ebp-78]
 004DD19A    push        eax
 004DD19B    mov         eax,dword ptr [ebp-4]
 004DD19E    lea         ecx,[eax+270];TCustomGrid.FMovePos:Longint
 004DD1A4    mov         eax,dword ptr [ebp-4]
 004DD1A7    lea         edx,[eax+26C];TCustomGrid.FMoveIndex:Longint
 004DD1AD    mov         eax,dword ptr [ebp-4]
 004DD1B0    mov         si,0FF9E
 004DD1B4    call        @CallDynaInst;TCustomGrid.sub_004DE878
 004DD1B9    test        al,al
>004DD1BB    je          004DD1F3
 004DD1BD    mov         eax,dword ptr [ebp-4]
 004DD1C0    mov         eax,dword ptr [eax+26C];TCustomGrid.FMoveIndex:Longint
 004DD1C6    mov         edx,dword ptr [ebp-4]
 004DD1C9    cmp         eax,dword ptr [edx+270];TCustomGrid.FMovePos:Longint
>004DD1CF    je          004DD1F3
 004DD1D1    mov         eax,dword ptr [ebp-4]
 004DD1D4    mov         ecx,dword ptr [eax+270];TCustomGrid.FMovePos:Longint
 004DD1DA    mov         eax,dword ptr [ebp-4]
 004DD1DD    mov         edx,dword ptr [eax+26C];TCustomGrid.FMoveIndex:Longint
 004DD1E3    mov         eax,dword ptr [ebp-4]
 004DD1E6    call        004D8BAC
 004DD1EB    mov         eax,dword ptr [ebp-4]
 004DD1EE    call        004DE6D4
 004DD1F3    mov         eax,dword ptr [ebp-4]
 004DD1F6    call        004DDD14
>004DD1FB    jmp         004DD205
 004DD1FD    mov         eax,dword ptr [ebp-4]
 004DD200    call        004DDD14
 004DD205    mov         eax,dword ptr [ebp+0C]
 004DD208    push        eax
 004DD209    mov         eax,dword ptr [ebp+8]
 004DD20C    push        eax
 004DD20D    mov         cl,byte ptr [ebp-6]
 004DD210    mov         dl,byte ptr [ebp-5]
 004DD213    mov         eax,dword ptr [ebp-4]
 004DD216    call        TControl.sub_004859D0
 004DD21B    xor         eax,eax
 004DD21D    pop         edx
 004DD21E    pop         ecx
 004DD21F    pop         ecx
 004DD220    mov         dword ptr fs:[eax],edx
 004DD223    push        4DD23A
 004DD228    mov         eax,dword ptr [ebp-4]
 004DD22B    mov         byte ptr [eax+28E],0;TCustomGrid.FGridState:TGridState
 004DD232    ret
>004DD233    jmp         @HandleFinally
>004DD238    jmp         004DD228
 004DD23A    pop         esi
 004DD23B    mov         esp,ebp
 004DD23D    pop         ebp
 004DD23E    ret         8
end;*}

//004DD244
{*procedure sub_004DD244(?:TCustomGrid; ?:TPoint; ?:?; ?:?; ?:?; ?:?; ?:?);
begin
 004DD244    push        ebp
 004DD245    mov         ebp,esp
 004DD247    add         esp,0FFFFFFF4
 004DD24A    push        esi
 004DD24B    mov         dword ptr [ebp-0C],ecx
 004DD24E    mov         dword ptr [ebp-8],edx
 004DD251    mov         dword ptr [ebp-4],eax
 004DD254    mov         eax,dword ptr [ebp-4]
 004DD257    mov         si,0FFC8
 004DD25B    call        @CallDynaInst;TControl.sub_0048415C
 004DD260    test        al,al
>004DD262    je          004DD278
 004DD264    cmp         dword ptr [ebp+0C],0
>004DD268    jne         004DD278
 004DD26A    mov         eax,dword ptr [ebp-4]
 004DD26D    call        TControl.GetClientWidth
 004DD272    sub         eax,dword ptr [ebp-8]
 004DD275    mov         dword ptr [ebp-8],eax
 004DD278    mov         eax,dword ptr [ebp-0C]
 004DD27B    mov         edx,dword ptr [ebp-4]
 004DD27E    cmp         eax,dword ptr [edx+270];TCustomGrid.FMovePos:Longint
>004DD284    je          004DD402
 004DD28A    mov         eax,dword ptr [ebp+10]
 004DD28D    mov         eax,dword ptr [eax+18]
 004DD290    mov         edx,dword ptr [ebp-4]
 004DD293    cmp         eax,dword ptr [edx+270];TCustomGrid.FMovePos:Longint
>004DD299    jne         004DD2AA
 004DD29B    mov         eax,dword ptr [ebp+10]
 004DD29E    mov         eax,dword ptr [eax+4]
 004DD2A1    cmp         eax,dword ptr [ebp-8]
>004DD2A4    jg          004DD402
 004DD2AA    mov         eax,dword ptr [ebp+10]
 004DD2AD    mov         eax,dword ptr [eax+20]
 004DD2B0    dec         eax
 004DD2B1    mov         edx,dword ptr [ebp-4]
 004DD2B4    cmp         eax,dword ptr [edx+270];TCustomGrid.FMovePos:Longint
>004DD2BA    jne         004DD2CB
 004DD2BC    mov         eax,dword ptr [ebp+10]
 004DD2BF    mov         eax,dword ptr [eax+8]
 004DD2C2    cmp         eax,dword ptr [ebp-8]
>004DD2C5    jl          004DD402
 004DD2CB    mov         eax,dword ptr [ebp-4]
 004DD2CE    call        TCustomGrid.DrawMove
 004DD2D3    mov         eax,dword ptr [ebp+10]
 004DD2D6    mov         eax,dword ptr [eax+4]
 004DD2D9    cmp         eax,dword ptr [ebp-8]
>004DD2DC    jle         004DD321
 004DD2DE    mov         eax,dword ptr [ebp+10]
 004DD2E1    mov         eax,dword ptr [eax+18]
 004DD2E4    mov         edx,dword ptr [ebp-4]
 004DD2E7    cmp         eax,dword ptr [edx+270];TCustomGrid.FMovePos:Longint
>004DD2ED    jge         004DD316
 004DD2EF    push        0
 004DD2F1    push        0
 004DD2F3    xor         ecx,ecx
 004DD2F5    mov         edx,dword ptr [ebp+0C]
 004DD2F8    mov         eax,dword ptr [ebp-4]
 004DD2FB    call        004DB380
 004DD300    mov         eax,dword ptr [ebp-4]
 004DD303    mov         edx,dword ptr [eax]
 004DD305    call        dword ptr [edx+88];TCustomGrid.sub_0048BF40
 004DD30B    mov         edx,dword ptr [ebp+14]
 004DD30E    mov         eax,dword ptr [ebp-4]
 004DD311    call        TCustomGrid.CalcDrawInfo
 004DD316    mov         eax,dword ptr [ebp+10]
 004DD319    mov         eax,dword ptr [eax+1C]
 004DD31C    mov         dword ptr [ebp-0C],eax
>004DD31F    jmp         004DD396
 004DD321    mov         eax,dword ptr [ebp+10]
 004DD324    mov         eax,dword ptr [eax+14]
 004DD327    cmp         eax,dword ptr [ebp-8]
>004DD32A    jg          004DD384
 004DD32C    mov         eax,dword ptr [ebp+10]
 004DD32F    mov         eax,dword ptr [eax+10]
 004DD332    mov         edx,dword ptr [ebp-4]
 004DD335    cmp         eax,dword ptr [edx+270];TCustomGrid.FMovePos:Longint
>004DD33B    jne         004DD379
 004DD33D    mov         eax,dword ptr [ebp+10]
 004DD340    mov         eax,dword ptr [eax+20]
 004DD343    dec         eax
 004DD344    mov         edx,dword ptr [ebp-4]
 004DD347    cmp         eax,dword ptr [edx+270];TCustomGrid.FMovePos:Longint
>004DD34D    jle         004DD379
 004DD34F    push        0
 004DD351    push        0
 004DD353    mov         ecx,1
 004DD358    mov         edx,dword ptr [ebp+0C]
 004DD35B    mov         eax,dword ptr [ebp-4]
 004DD35E    call        004DB380
 004DD363    mov         eax,dword ptr [ebp-4]
 004DD366    mov         edx,dword ptr [eax]
 004DD368    call        dword ptr [edx+88];TCustomGrid.sub_0048BF40
 004DD36E    mov         edx,dword ptr [ebp+14]
 004DD371    mov         eax,dword ptr [ebp-4]
 004DD374    call        TCustomGrid.CalcDrawInfo
 004DD379    mov         eax,dword ptr [ebp+10]
 004DD37C    mov         eax,dword ptr [eax+10]
 004DD37F    mov         dword ptr [ebp-0C],eax
>004DD382    jmp         004DD396
 004DD384    cmp         dword ptr [ebp-0C],0
>004DD388    jge         004DD396
 004DD38A    mov         eax,dword ptr [ebp-4]
 004DD38D    mov         eax,dword ptr [eax+270];TCustomGrid.FMovePos:Longint
 004DD393    mov         dword ptr [ebp-0C],eax
 004DD396    mov         eax,dword ptr [ebp-4]
 004DD399    cmp         byte ptr [eax+28E],5;TCustomGrid.FGridState:TGridState
>004DD3A0    jne         004DD3C2
 004DD3A2    mov         eax,dword ptr [ebp+8]
 004DD3A5    push        eax
 004DD3A6    lea         ecx,[ebp-0C]
 004DD3A9    mov         eax,dword ptr [ebp-4]
 004DD3AC    lea         edx,[eax+26C];TCustomGrid.FMoveIndex:Longint
 004DD3B2    mov         eax,dword ptr [ebp-4]
 004DD3B5    mov         si,0FFA1
 004DD3B9    call        @CallDynaInst;TCustomGrid.sub_004DE7EC
 004DD3BE    test        al,al
>004DD3C0    jne         004DD3EE
 004DD3C2    mov         eax,dword ptr [ebp-4]
 004DD3C5    cmp         byte ptr [eax+28E],4;TCustomGrid.FGridState:TGridState
>004DD3CC    jne         004DD3FA
 004DD3CE    mov         eax,dword ptr [ebp+8]
 004DD3D1    push        eax
 004DD3D2    lea         ecx,[ebp-0C]
 004DD3D5    mov         eax,dword ptr [ebp-4]
 004DD3D8    lea         edx,[eax+26C];TCustomGrid.FMoveIndex:Longint
 004DD3DE    mov         eax,dword ptr [ebp-4]
 004DD3E1    mov         si,0FFA0
 004DD3E5    call        @CallDynaInst;TCustomGrid.sub_004DE808
 004DD3EA    test        al,al
>004DD3EC    je          004DD3FA
 004DD3EE    mov         eax,dword ptr [ebp-0C]
 004DD3F1    mov         edx,dword ptr [ebp-4]
 004DD3F4    mov         dword ptr [edx+270],eax;TCustomGrid.FMovePos:Longint
 004DD3FA    mov         eax,dword ptr [ebp-4]
 004DD3FD    call        TCustomGrid.DrawMove
 004DD402    pop         esi
 004DD403    mov         esp,ebp
 004DD405    pop         ebp
 004DD406    ret         10
end;*}

//004DD40C
{*function sub_004DD40C(?:TCustomMPHexEditor; ?:?):?;
begin
 004DD40C    push        ebp
 004DD40D    mov         ebp,esp
 004DD40F    add         esp,0FFFFFFF4
 004DD412    mov         dword ptr [ebp-8],edx
 004DD415    mov         dword ptr [ebp-4],eax
 004DD418    mov         eax,dword ptr [ebp-4]
 004DD41B    cmp         dword ptr [eax+220],0
>004DD422    je          004DD432
 004DD424    mov         eax,dword ptr [ebp-8]
 004DD427    mov         edx,dword ptr [ebp-4]
 004DD42A    cmp         eax,dword ptr [edx+21C]
>004DD430    jl          004DD440
 004DD432    mov         eax,dword ptr [ebp-4]
 004DD435    mov         eax,dword ptr [eax+230]
 004DD43B    mov         dword ptr [ebp-0C],eax
>004DD43E    jmp         004DD453
 004DD440    mov         eax,dword ptr [ebp-4]
 004DD443    mov         eax,dword ptr [eax+220]
 004DD449    mov         edx,dword ptr [ebp-8]
 004DD44C    mov         eax,dword ptr [eax+edx*4+4]
 004DD450    mov         dword ptr [ebp-0C],eax
 004DD453    mov         eax,dword ptr [ebp-0C]
 004DD456    mov         esp,ebp
 004DD458    pop         ebp
 004DD459    ret
end;*}

//004DD45C
{*function sub_004DD45C(?:TCustomMPHexEditor; ?:?):?;
begin
 004DD45C    push        ebp
 004DD45D    mov         ebp,esp
 004DD45F    add         esp,0FFFFFFF4
 004DD462    mov         dword ptr [ebp-8],edx
 004DD465    mov         dword ptr [ebp-4],eax
 004DD468    mov         eax,dword ptr [ebp-4]
 004DD46B    cmp         dword ptr [eax+250],0
>004DD472    je          004DD482
 004DD474    mov         eax,dword ptr [ebp-8]
 004DD477    mov         edx,dword ptr [ebp-4]
 004DD47A    cmp         eax,dword ptr [edx+24C]
>004DD480    jl          004DD490
 004DD482    mov         eax,dword ptr [ebp-4]
 004DD485    mov         eax,dword ptr [eax+234]
 004DD48B    mov         dword ptr [ebp-0C],eax
>004DD48E    jmp         004DD4A3
 004DD490    mov         eax,dword ptr [ebp-4]
 004DD493    mov         eax,dword ptr [eax+250]
 004DD499    mov         edx,dword ptr [ebp-8]
 004DD49C    mov         eax,dword ptr [eax+edx*4+4]
 004DD4A0    mov         dword ptr [ebp-0C],eax
 004DD4A3    mov         eax,dword ptr [ebp-0C]
 004DD4A6    mov         esp,ebp
 004DD4A8    pop         ebp
 004DD4A9    ret
end;*}

//004DD4AC
{*procedure sub_004DD4AC(?:TCustomGrid; ?:?);
begin
 004DD4AC    push        ebp
 004DD4AD    mov         ebp,esp
 004DD4AF    add         esp,0FFFFFFF8
 004DD4B2    mov         dword ptr [ebp-8],edx
 004DD4B5    mov         dword ptr [ebp-4],eax
 004DD4B8    mov         ecx,dword ptr [ebp-8]
 004DD4BB    mov         eax,dword ptr [ebp-4]
 004DD4BE    lea         edx,[eax+210];TCustomGrid.FAnchor:TGridCoord
 004DD4C4    mov         eax,dword ptr [ebp-4]
 004DD4C7    add         eax,228;TCustomGrid.FCurrent:TGridCoord
 004DD4CC    call        004D6E2C
 004DD4D1    pop         ecx
 004DD4D2    pop         ecx
 004DD4D3    pop         ebp
 004DD4D4    ret
end;*}

//004DD4D8
{*function sub_004DD4D8(?:TCustomGrid; ?:Integer):?;
begin
 004DD4D8    push        ebp
 004DD4D9    mov         ebp,esp
 004DD4DB    add         esp,0FFFFFFF4
 004DD4DE    mov         dword ptr [ebp-8],edx
 004DD4E1    mov         dword ptr [ebp-4],eax
 004DD4E4    mov         eax,dword ptr [ebp-4]
 004DD4E7    cmp         dword ptr [eax+224],0;TCustomGrid.FTabStops:Pointer
>004DD4EE    jne         004DD4F6
 004DD4F0    mov         byte ptr [ebp-9],1
>004DD4F4    jmp         004DD509
 004DD4F6    mov         eax,dword ptr [ebp-4]
 004DD4F9    mov         eax,dword ptr [eax+224];TCustomGrid.FTabStops:Pointer
 004DD4FF    mov         edx,dword ptr [ebp-8]
 004DD502    mov         eax,dword ptr [eax+edx*4+4]
 004DD506    mov         byte ptr [ebp-9],al
 004DD509    mov         al,byte ptr [ebp-9]
 004DD50C    mov         esp,ebp
 004DD50E    pop         ebp
 004DD50F    ret
end;*}

//004DD510
{*function sub_004DD510(?:?):?;
begin
 004DD510    push        ebp
 004DD511    mov         ebp,esp
 004DD513    add         esp,0FFFFFF98
 004DD516    mov         dword ptr [ebp-4],eax
 004DD519    lea         edx,[ebp-68]
 004DD51C    mov         eax,dword ptr [ebp-4]
 004DD51F    call        TCustomGrid.CalcDrawInfo
 004DD524    mov         eax,dword ptr [ebp-58]
 004DD527    mov         edx,dword ptr [ebp-4]
 004DD52A    sub         eax,dword ptr [edx+258]
 004DD530    inc         eax
 004DD531    mov         dword ptr [ebp-8],eax
 004DD534    mov         eax,dword ptr [ebp-8]
 004DD537    mov         esp,ebp
 004DD539    pop         ebp
 004DD53A    ret
end;*}

//004DD53C
{*function sub_004DD53C(?:TCustomMPHexEditor):?;
begin
 004DD53C    push        ebp
 004DD53D    mov         ebp,esp
 004DD53F    add         esp,0FFFFFF98
 004DD542    mov         dword ptr [ebp-4],eax
 004DD545    lea         edx,[ebp-68]
 004DD548    mov         eax,dword ptr [ebp-4]
 004DD54B    call        TCustomGrid.CalcDrawInfo
 004DD550    mov         eax,dword ptr [ebp-28]
 004DD553    mov         edx,dword ptr [ebp-4]
 004DD556    sub         eax,dword ptr [edx+25C]
 004DD55C    inc         eax
 004DD55D    mov         dword ptr [ebp-8],eax
 004DD560    mov         eax,dword ptr [ebp-8]
 004DD563    mov         esp,ebp
 004DD565    pop         ebp
 004DD566    ret
end;*}

//004DD568
procedure TMPHexEditorEx.SetBorderStyle(Value:TBorderStyle);
begin
{*
 004DD568    push        ebp
 004DD569    mov         ebp,esp
 004DD56B    add         esp,0FFFFFFF8
 004DD56E    mov         byte ptr [ebp-5],dl
 004DD571    mov         dword ptr [ebp-4],eax
 004DD574    mov         eax,dword ptr [ebp-4]
 004DD577    mov         al,byte ptr [eax+218];TMPHexEditorEx.FBorderStyle:TBorderStyle
 004DD57D    cmp         al,byte ptr [ebp-5]
>004DD580    je          004DD596
 004DD582    mov         al,byte ptr [ebp-5]
 004DD585    mov         edx,dword ptr [ebp-4]
 004DD588    mov         byte ptr [edx+218],al;TMPHexEditorEx.FBorderStyle:TBorderStyle
 004DD58E    mov         eax,dword ptr [ebp-4]
 004DD591    call        TWinControl.RecreateWnd
 004DD596    pop         ecx
 004DD597    pop         ecx
 004DD598    pop         ebp
 004DD599    ret
*}
end;

//004DD59C
{*procedure sub_004DD59C(?:TCustomMPHexEditor; ?:?);
begin
 004DD59C    push        ebp
 004DD59D    mov         ebp,esp
 004DD59F    add         esp,0FFFFFFF8
 004DD5A2    mov         dword ptr [ebp-8],edx
 004DD5A5    mov         dword ptr [ebp-4],eax
 004DD5A8    mov         eax,dword ptr [ebp-4]
 004DD5AB    mov         eax,dword ptr [eax+228]
 004DD5B1    cmp         eax,dword ptr [ebp-8]
>004DD5B4    je          004DD5CC
 004DD5B6    push        1
 004DD5B8    mov         eax,dword ptr [ebp-4]
 004DD5BB    mov         ecx,dword ptr [eax+22C]
 004DD5C1    mov         edx,dword ptr [ebp-8]
 004DD5C4    mov         eax,dword ptr [ebp-4]
 004DD5C7    call        004DAB18
 004DD5CC    pop         ecx
 004DD5CD    pop         ecx
 004DD5CE    pop         ebp
 004DD5CF    ret
end;*}

//004DD5D0
{*procedure sub_004DD5D0(?:TCustomGrid; ?:?);
begin
 004DD5D0    push        ebp
 004DD5D1    mov         ebp,esp
 004DD5D3    add         esp,0FFFFFFF8
 004DD5D6    mov         dword ptr [ebp-8],edx
 004DD5D9    mov         dword ptr [ebp-4],eax
 004DD5DC    mov         eax,dword ptr [ebp-4]
 004DD5DF    mov         eax,dword ptr [eax+21C]
 004DD5E5    cmp         eax,dword ptr [ebp-8]
>004DD5E8    je          004DD64C
 004DD5EA    cmp         dword ptr [ebp-8],1
>004DD5EE    jge         004DD5F7
 004DD5F0    mov         dword ptr [ebp-8],1
 004DD5F7    mov         eax,dword ptr [ebp-8]
 004DD5FA    mov         edx,dword ptr [ebp-4]
 004DD5FD    cmp         eax,dword ptr [edx+238]
>004DD603    jg          004DD611
 004DD605    mov         edx,dword ptr [ebp-8]
 004DD608    dec         edx
 004DD609    mov         eax,dword ptr [ebp-4]
 004DD60C    call        004DD7D8
 004DD611    mov         eax,dword ptr [ebp-4]
 004DD614    mov         ecx,dword ptr [eax+24C]
 004DD61A    mov         edx,dword ptr [ebp-8]
 004DD61D    mov         eax,dword ptr [ebp-4]
 004DD620    call        004DA5F8
 004DD625    mov         eax,dword ptr [ebp-4]
 004DD628    test        byte ptr [eax+249],10
>004DD62F    je          004DD64C
 004DD631    mov         eax,dword ptr [ebp-4]
 004DD634    mov         eax,dword ptr [eax+21C]
 004DD63A    dec         eax
 004DD63B    mov         edx,dword ptr [ebp-4]
 004DD63E    mov         dword ptr [edx+210],eax
 004DD644    mov         eax,dword ptr [ebp-4]
 004DD647    mov         edx,dword ptr [eax]
 004DD649    call        dword ptr [edx+7C]
 004DD64C    pop         ecx
 004DD64D    pop         ecx
 004DD64E    pop         ebp
 004DD64F    ret
end;*}

//004DD650
procedure sub_004DD650(?:TCustomGrid; ?:Longint; ?:dword);
begin
{*
 004DD650    push        ebp
 004DD651    mov         ebp,esp
 004DD653    add         esp,0FFFFFFF0
 004DD656    push        ebx
 004DD657    push        esi
 004DD658    xor         ebx,ebx
 004DD65A    mov         dword ptr [ebp-10],ebx
 004DD65D    mov         dword ptr [ebp-0C],ecx
 004DD660    mov         dword ptr [ebp-8],edx
 004DD663    mov         dword ptr [ebp-4],eax
 004DD666    xor         eax,eax
 004DD668    push        ebp
 004DD669    push        4DD72B
 004DD66E    push        dword ptr fs:[eax]
 004DD671    mov         dword ptr fs:[eax],esp
 004DD674    mov         eax,dword ptr [ebp-4]
 004DD677    cmp         dword ptr [eax+220],0;TCustomGrid.FColWidths:Pointer
>004DD67E    jne         004DD69F
 004DD680    mov         eax,dword ptr [ebp-4]
 004DD683    add         eax,220;TCustomGrid.FColWidths:Pointer
 004DD688    mov         edx,dword ptr [ebp-4]
 004DD68B    mov         ecx,dword ptr [edx+230];TCustomGrid.FDefaultColWidth:Integer
 004DD691    mov         edx,dword ptr [ebp-4]
 004DD694    mov         edx,dword ptr [edx+21C];TCustomGrid.FColCount:Longint
 004DD69A    call        004D7324
 004DD69F    mov         eax,dword ptr [ebp-8]
 004DD6A2    mov         edx,dword ptr [ebp-4]
 004DD6A5    cmp         eax,dword ptr [edx+21C];TCustomGrid.FColCount:Longint
>004DD6AB    jl          004DD6C2
 004DD6AD    lea         edx,[ebp-10]
 004DD6B0    mov         eax,[0056E410];^SIndexOutOfRange:TResStringRec
 004DD6B5    call        LoadResString
 004DD6BA    mov         eax,dword ptr [ebp-10]
 004DD6BD    call        004D6E0C
 004DD6C2    mov         eax,dword ptr [ebp-4]
 004DD6C5    mov         eax,dword ptr [eax+220];TCustomGrid.FColWidths:Pointer
 004DD6CB    mov         edx,dword ptr [ebp-8]
 004DD6CE    mov         eax,dword ptr [eax+edx*4+4]
 004DD6D2    cmp         eax,dword ptr [ebp-0C]
>004DD6D5    je          004DD715
 004DD6D7    mov         eax,dword ptr [ebp-0C]
 004DD6DA    push        eax
 004DD6DB    mov         eax,dword ptr [ebp-4]
 004DD6DE    mov         eax,dword ptr [eax+220];TCustomGrid.FColWidths:Pointer
 004DD6E4    mov         edx,dword ptr [ebp-8]
 004DD6E7    mov         ecx,dword ptr [eax+edx*4+4]
 004DD6EB    mov         edx,dword ptr [ebp-8]
 004DD6EE    mov         eax,dword ptr [ebp-4]
 004DD6F1    call        004DB8B0
 004DD6F6    mov         eax,dword ptr [ebp-4]
 004DD6F9    mov         eax,dword ptr [eax+220];TCustomGrid.FColWidths:Pointer
 004DD6FF    mov         edx,dword ptr [ebp-8]
 004DD702    mov         ecx,dword ptr [ebp-0C]
 004DD705    mov         dword ptr [eax+edx*4+4],ecx
 004DD709    mov         eax,dword ptr [ebp-4]
 004DD70C    mov         si,0FFA5
 004DD710    call        @CallDynaInst;TCustomGrid.sub_004DE62C
 004DD715    xor         eax,eax
 004DD717    pop         edx
 004DD718    pop         ecx
 004DD719    pop         ecx
 004DD71A    mov         dword ptr fs:[eax],edx
 004DD71D    push        4DD732
 004DD722    lea         eax,[ebp-10]
 004DD725    call        @LStrClr
 004DD72A    ret
>004DD72B    jmp         @HandleFinally
>004DD730    jmp         004DD722
 004DD732    pop         esi
 004DD733    pop         ebx
 004DD734    mov         esp,ebp
 004DD736    pop         ebp
 004DD737    ret
*}
end;

//004DD738
{*procedure sub_004DD738(?:TCustomMPHexEditor; ?:?);
begin
 004DD738    push        ebp
 004DD739    mov         ebp,esp
 004DD73B    add         esp,0FFFFFFF8
 004DD73E    push        esi
 004DD73F    mov         dword ptr [ebp-8],edx
 004DD742    mov         dword ptr [ebp-4],eax
 004DD745    mov         eax,dword ptr [ebp-4]
 004DD748    cmp         dword ptr [eax+220],0
>004DD74F    je          004DD762
 004DD751    mov         eax,dword ptr [ebp-4]
 004DD754    add         eax,220
 004DD759    xor         ecx,ecx
 004DD75B    xor         edx,edx
 004DD75D    call        004D7324
 004DD762    mov         eax,dword ptr [ebp-8]
 004DD765    mov         edx,dword ptr [ebp-4]
 004DD768    mov         dword ptr [edx+230],eax
 004DD76E    mov         eax,dword ptr [ebp-4]
 004DD771    mov         si,0FFA5
 004DD775    call        @CallDynaInst
 004DD77A    mov         eax,dword ptr [ebp-4]
 004DD77D    call        004DAEC4
 004DD782    pop         esi
 004DD783    pop         ecx
 004DD784    pop         ecx
 004DD785    pop         ebp
 004DD786    ret
end;*}

//004DD788
{*procedure sub_004DD788(?:TCustomMPHexEditor; ?:?);
begin
 004DD788    push        ebp
 004DD789    mov         ebp,esp
 004DD78B    add         esp,0FFFFFFF8
 004DD78E    push        esi
 004DD78F    mov         dword ptr [ebp-8],edx
 004DD792    mov         dword ptr [ebp-4],eax
 004DD795    mov         eax,dword ptr [ebp-4]
 004DD798    cmp         dword ptr [eax+250],0
>004DD79F    je          004DD7B2
 004DD7A1    mov         eax,dword ptr [ebp-4]
 004DD7A4    add         eax,250
 004DD7A9    xor         ecx,ecx
 004DD7AB    xor         edx,edx
 004DD7AD    call        004D7324
 004DD7B2    mov         eax,dword ptr [ebp-8]
 004DD7B5    mov         edx,dword ptr [ebp-4]
 004DD7B8    mov         dword ptr [edx+234],eax
 004DD7BE    mov         eax,dword ptr [ebp-4]
 004DD7C1    mov         si,0FFA4
 004DD7C5    call        @CallDynaInst
 004DD7CA    mov         eax,dword ptr [ebp-4]
 004DD7CD    call        004DAEC4
 004DD7D2    pop         esi
 004DD7D3    pop         ecx
 004DD7D4    pop         ecx
 004DD7D5    pop         ebp
 004DD7D6    ret
end;*}

//004DD7D8
{*procedure sub_004DD7D8(?:?; ?:?);
begin
 004DD7D8    push        ebp
 004DD7D9    mov         ebp,esp
 004DD7DB    add         esp,0FFFFFFF0
 004DD7DE    xor         ecx,ecx
 004DD7E0    mov         dword ptr [ebp-10],ecx
 004DD7E3    mov         dword ptr [ebp-0C],ecx
 004DD7E6    mov         dword ptr [ebp-8],edx
 004DD7E9    mov         dword ptr [ebp-4],eax
 004DD7EC    xor         eax,eax
 004DD7EE    push        ebp
 004DD7EF    push        4DD87D
 004DD7F4    push        dword ptr fs:[eax]
 004DD7F7    mov         dword ptr fs:[eax],esp
 004DD7FA    mov         eax,dword ptr [ebp-4]
 004DD7FD    mov         eax,dword ptr [eax+238]
 004DD803    cmp         eax,dword ptr [ebp-8]
>004DD806    je          004DD862
 004DD808    cmp         dword ptr [ebp-8],0
>004DD80C    jge         004DD823
 004DD80E    lea         edx,[ebp-0C]
 004DD811    mov         eax,[0056E410];^SIndexOutOfRange:TResStringRec
 004DD816    call        LoadResString
 004DD81B    mov         eax,dword ptr [ebp-0C]
 004DD81E    call        004D6E0C
 004DD823    mov         eax,dword ptr [ebp-8]
 004DD826    mov         edx,dword ptr [ebp-4]
 004DD829    cmp         eax,dword ptr [edx+21C]
>004DD82F    jl          004DD846
 004DD831    lea         edx,[ebp-10]
 004DD834    mov         eax,[0056E07C];^SFixedColTooBig:TResStringRec
 004DD839    call        LoadResString
 004DD83E    mov         eax,dword ptr [ebp-10]
 004DD841    call        004D6E0C
 004DD846    mov         eax,dword ptr [ebp-8]
 004DD849    mov         edx,dword ptr [ebp-4]
 004DD84C    mov         dword ptr [edx+238],eax
 004DD852    mov         eax,dword ptr [ebp-4]
 004DD855    call        004DAE00
 004DD85A    mov         eax,dword ptr [ebp-4]
 004DD85D    call        004DAEC4
 004DD862    xor         eax,eax
 004DD864    pop         edx
 004DD865    pop         ecx
 004DD866    pop         ecx
 004DD867    mov         dword ptr fs:[eax],edx
 004DD86A    push        4DD884
 004DD86F    lea         eax,[ebp-10]
 004DD872    mov         edx,2
 004DD877    call        @LStrArrayClr
 004DD87C    ret
>004DD87D    jmp         @HandleFinally
>004DD882    jmp         004DD86F
 004DD884    mov         esp,ebp
 004DD886    pop         ebp
 004DD887    ret
end;*}

//004DD888
{*procedure sub_004DD888(?:?; ?:?);
begin
 004DD888    push        ebp
 004DD889    mov         ebp,esp
 004DD88B    add         esp,0FFFFFFF0
 004DD88E    xor         ecx,ecx
 004DD890    mov         dword ptr [ebp-10],ecx
 004DD893    mov         dword ptr [ebp-0C],ecx
 004DD896    mov         dword ptr [ebp-8],edx
 004DD899    mov         dword ptr [ebp-4],eax
 004DD89C    xor         eax,eax
 004DD89E    push        ebp
 004DD89F    push        4DD92D
 004DD8A4    push        dword ptr fs:[eax]
 004DD8A7    mov         dword ptr fs:[eax],esp
 004DD8AA    mov         eax,dword ptr [ebp-4]
 004DD8AD    mov         eax,dword ptr [eax+23C]
 004DD8B3    cmp         eax,dword ptr [ebp-8]
>004DD8B6    je          004DD912
 004DD8B8    cmp         dword ptr [ebp-8],0
>004DD8BC    jge         004DD8D3
 004DD8BE    lea         edx,[ebp-0C]
 004DD8C1    mov         eax,[0056E410];^SIndexOutOfRange:TResStringRec
 004DD8C6    call        LoadResString
 004DD8CB    mov         eax,dword ptr [ebp-0C]
 004DD8CE    call        004D6E0C
 004DD8D3    mov         eax,dword ptr [ebp-8]
 004DD8D6    mov         edx,dword ptr [ebp-4]
 004DD8D9    cmp         eax,dword ptr [edx+24C]
>004DD8DF    jl          004DD8F6
 004DD8E1    lea         edx,[ebp-10]
 004DD8E4    mov         eax,[0056E3D4];^SFixedRowTooBig:TResStringRec
 004DD8E9    call        LoadResString
 004DD8EE    mov         eax,dword ptr [ebp-10]
 004DD8F1    call        004D6E0C
 004DD8F6    mov         eax,dword ptr [ebp-8]
 004DD8F9    mov         edx,dword ptr [ebp-4]
 004DD8FC    mov         dword ptr [edx+23C],eax
 004DD902    mov         eax,dword ptr [ebp-4]
 004DD905    call        004DAE00
 004DD90A    mov         eax,dword ptr [ebp-4]
 004DD90D    call        004DAEC4
 004DD912    xor         eax,eax
 004DD914    pop         edx
 004DD915    pop         ecx
 004DD916    pop         ecx
 004DD917    mov         dword ptr fs:[eax],edx
 004DD91A    push        4DD934
 004DD91F    lea         eax,[ebp-10]
 004DD922    mov         edx,2
 004DD927    call        @LStrArrayClr
 004DD92C    ret
>004DD92D    jmp         @HandleFinally
>004DD932    jmp         004DD91F
 004DD934    mov         esp,ebp
 004DD936    pop         ebp
 004DD937    ret
end;*}

//004DD938
{*procedure sub_004DD938(?:TCustomGrid; ?:?);
begin
 004DD938    push        ebp
 004DD939    mov         ebp,esp
 004DD93B    add         esp,0FFFFFFF8
 004DD93E    mov         byte ptr [ebp-5],dl
 004DD941    mov         dword ptr [ebp-4],eax
 004DD944    cmp         byte ptr [ebp-5],0
>004DD948    jne         004DD954
 004DD94A    mov         eax,dword ptr [ebp-4]
 004DD94D    call        004D8764
>004DD952    jmp         004DD976
 004DD954    mov         eax,dword ptr [ebp-4]
 004DD957    call        004D8780
 004DD95C    mov         eax,dword ptr [ebp-4]
 004DD95F    cmp         dword ptr [eax+27C],0;TCustomGrid.FInplaceEdit:TInplaceEdit
>004DD966    je          004DD976
 004DD968    mov         eax,dword ptr [ebp-4]
 004DD96B    mov         eax,dword ptr [eax+27C];TCustomGrid.FInplaceEdit:TInplaceEdit
 004DD971    call        TInplaceEdit.Deselect
 004DD976    pop         ecx
 004DD977    pop         ecx
 004DD978    pop         ebp
 004DD979    ret
end;*}

//004DD97C
{*procedure sub_004DD97C(?:?; ?:?);
begin
 004DD97C    push        ebp
 004DD97D    mov         ebp,esp
 004DD97F    add         esp,0FFFFFFF8
 004DD982    mov         dword ptr [ebp-8],edx
 004DD985    mov         dword ptr [ebp-4],eax
 004DD988    mov         eax,dword ptr [ebp-4]
 004DD98B    mov         eax,dword ptr [eax+258]
 004DD991    cmp         eax,dword ptr [ebp-8]
>004DD994    je          004DD9AA
 004DD996    mov         eax,dword ptr [ebp-4]
 004DD999    mov         ecx,dword ptr [eax+25C]
 004DD99F    mov         edx,dword ptr [ebp-8]
 004DD9A2    mov         eax,dword ptr [ebp-4]
 004DD9A5    call        004DB83C
 004DD9AA    pop         ecx
 004DD9AB    pop         ecx
 004DD9AC    pop         ebp
 004DD9AD    ret
end;*}

//004DD9B0
{*procedure sub_004DD9B0(?:TCustomMPHexEditor; ?:?);
begin
 004DD9B0    push        ebp
 004DD9B1    mov         ebp,esp
 004DD9B3    add         esp,0FFFFFFF8
 004DD9B6    mov         word ptr [ebp-6],dx
 004DD9BA    mov         dword ptr [ebp-4],eax
 004DD9BD    mov         ax,word ptr [ebp-6]
 004DD9C1    mov         edx,dword ptr [ebp-4]
 004DD9C4    cmp         ax,word ptr [edx+248]
>004DD9CB    je          004DDA37
 004DD9CD    test        byte ptr [ebp-5],10
>004DD9D1    je          004DD9D9
 004DD9D3    and         word ptr [ebp-6],0DFFF
 004DD9D9    mov         ax,word ptr [ebp-6]
 004DD9DD    mov         edx,dword ptr [ebp-4]
 004DD9E0    mov         word ptr [edx+248],ax
 004DD9E7    mov         eax,dword ptr [ebp-4]
 004DD9EA    cmp         byte ptr [eax+28D],0
>004DD9F1    jne         004DDA0B
 004DD9F3    test        byte ptr [ebp-5],20
>004DD9F7    je          004DDA03
 004DD9F9    mov         eax,dword ptr [ebp-4]
 004DD9FC    call        004D8780
>004DDA01    jmp         004DDA0B
 004DDA03    mov         eax,dword ptr [ebp-4]
 004DDA06    call        004D8764
 004DDA0B    test        byte ptr [ebp-5],10
>004DDA0F    je          004DDA2F
 004DDA11    push        1
 004DDA13    push        0
 004DDA15    mov         eax,dword ptr [ebp-4]
 004DDA18    mov         ecx,dword ptr [eax+22C]
 004DDA1E    mov         eax,dword ptr [ebp-4]
 004DDA21    mov         edx,dword ptr [eax+228]
 004DDA27    mov         eax,dword ptr [ebp-4]
 004DDA2A    call        004DB69C
 004DDA2F    mov         eax,dword ptr [ebp-4]
 004DDA32    call        004DAEC4
 004DDA37    pop         ecx
 004DDA38    pop         ecx
 004DDA39    pop         ebp
 004DDA3A    ret
end;*}

//004DDA3C
{*procedure sub_004DDA3C(?:TCustomGrid; ?:?);
begin
 004DDA3C    push        ebp
 004DDA3D    mov         ebp,esp
 004DDA3F    add         esp,0FFFFFFF8
 004DDA42    mov         dword ptr [ebp-8],edx
 004DDA45    mov         dword ptr [ebp-4],eax
 004DDA48    mov         eax,dword ptr [ebp-4]
 004DDA4B    mov         eax,dword ptr [eax+22C]
 004DDA51    cmp         eax,dword ptr [ebp-8]
>004DDA54    je          004DDA6C
 004DDA56    push        1
 004DDA58    mov         ecx,dword ptr [ebp-8]
 004DDA5B    mov         eax,dword ptr [ebp-4]
 004DDA5E    mov         edx,dword ptr [eax+228]
 004DDA64    mov         eax,dword ptr [ebp-4]
 004DDA67    call        004DAB18
 004DDA6C    pop         ecx
 004DDA6D    pop         ecx
 004DDA6E    pop         ebp
 004DDA6F    ret
end;*}

//004DDA70
{*procedure sub_004DDA70(?:TCustomGrid; ?:?);
begin
 004DDA70    push        ebp
 004DDA71    mov         ebp,esp
 004DDA73    add         esp,0FFFFFFF8
 004DDA76    mov         dword ptr [ebp-8],edx
 004DDA79    mov         dword ptr [ebp-4],eax
 004DDA7C    mov         eax,dword ptr [ebp-4]
 004DDA7F    mov         eax,dword ptr [eax+24C]
 004DDA85    cmp         eax,dword ptr [ebp-8]
>004DDA88    je          004DDAC5
 004DDA8A    cmp         dword ptr [ebp-8],1
>004DDA8E    jge         004DDA97
 004DDA90    mov         dword ptr [ebp-8],1
 004DDA97    mov         eax,dword ptr [ebp-8]
 004DDA9A    mov         edx,dword ptr [ebp-4]
 004DDA9D    cmp         eax,dword ptr [edx+23C]
>004DDAA3    jg          004DDAB1
 004DDAA5    mov         edx,dword ptr [ebp-8]
 004DDAA8    dec         edx
 004DDAA9    mov         eax,dword ptr [ebp-4]
 004DDAAC    call        004DD888
 004DDAB1    mov         ecx,dword ptr [ebp-8]
 004DDAB4    mov         eax,dword ptr [ebp-4]
 004DDAB7    mov         edx,dword ptr [eax+21C]
 004DDABD    mov         eax,dword ptr [ebp-4]
 004DDAC0    call        004DA5F8
 004DDAC5    pop         ecx
 004DDAC6    pop         ecx
 004DDAC7    pop         ebp
 004DDAC8    ret
end;*}

//004DDACC
{*procedure sub_004DDACC(?:TCustomGrid; ?:Longint; ?:?);
begin
 004DDACC    push        ebp
 004DDACD    mov         ebp,esp
 004DDACF    add         esp,0FFFFFFF0
 004DDAD2    push        ebx
 004DDAD3    push        esi
 004DDAD4    xor         ebx,ebx
 004DDAD6    mov         dword ptr [ebp-10],ebx
 004DDAD9    mov         dword ptr [ebp-0C],ecx
 004DDADC    mov         dword ptr [ebp-8],edx
 004DDADF    mov         dword ptr [ebp-4],eax
 004DDAE2    xor         eax,eax
 004DDAE4    push        ebp
 004DDAE5    push        4DDBA7
 004DDAEA    push        dword ptr fs:[eax]
 004DDAED    mov         dword ptr fs:[eax],esp
 004DDAF0    mov         eax,dword ptr [ebp-4]
 004DDAF3    cmp         dword ptr [eax+250],0;TCustomGrid.FRowHeights:Pointer
>004DDAFA    jne         004DDB1B
 004DDAFC    mov         eax,dword ptr [ebp-4]
 004DDAFF    add         eax,250;TCustomGrid.FRowHeights:Pointer
 004DDB04    mov         edx,dword ptr [ebp-4]
 004DDB07    mov         ecx,dword ptr [edx+234];TCustomGrid.FDefaultRowHeight:Integer
 004DDB0D    mov         edx,dword ptr [ebp-4]
 004DDB10    mov         edx,dword ptr [edx+24C];TCustomGrid.FRowCount:Longint
 004DDB16    call        004D7324
 004DDB1B    mov         eax,dword ptr [ebp-8]
 004DDB1E    mov         edx,dword ptr [ebp-4]
 004DDB21    cmp         eax,dword ptr [edx+24C];TCustomGrid.FRowCount:Longint
>004DDB27    jl          004DDB3E
 004DDB29    lea         edx,[ebp-10]
 004DDB2C    mov         eax,[0056E410];^SIndexOutOfRange:TResStringRec
 004DDB31    call        LoadResString
 004DDB36    mov         eax,dword ptr [ebp-10]
 004DDB39    call        004D6E0C
 004DDB3E    mov         eax,dword ptr [ebp-4]
 004DDB41    mov         eax,dword ptr [eax+250];TCustomGrid.FRowHeights:Pointer
 004DDB47    mov         edx,dword ptr [ebp-8]
 004DDB4A    mov         eax,dword ptr [eax+edx*4+4]
 004DDB4E    cmp         eax,dword ptr [ebp-0C]
>004DDB51    je          004DDB91
 004DDB53    mov         eax,dword ptr [ebp-0C]
 004DDB56    push        eax
 004DDB57    mov         eax,dword ptr [ebp-4]
 004DDB5A    mov         eax,dword ptr [eax+250];TCustomGrid.FRowHeights:Pointer
 004DDB60    mov         edx,dword ptr [ebp-8]
 004DDB63    mov         ecx,dword ptr [eax+edx*4+4]
 004DDB67    mov         edx,dword ptr [ebp-8]
 004DDB6A    mov         eax,dword ptr [ebp-4]
 004DDB6D    call        004DB8D0
 004DDB72    mov         eax,dword ptr [ebp-4]
 004DDB75    mov         eax,dword ptr [eax+250];TCustomGrid.FRowHeights:Pointer
 004DDB7B    mov         edx,dword ptr [ebp-8]
 004DDB7E    mov         ecx,dword ptr [ebp-0C]
 004DDB81    mov         dword ptr [eax+edx*4+4],ecx
 004DDB85    mov         eax,dword ptr [ebp-4]
 004DDB88    mov         si,0FFA4
 004DDB8C    call        @CallDynaInst;TCustomGrid.sub_004DE648
 004DDB91    xor         eax,eax
 004DDB93    pop         edx
 004DDB94    pop         ecx
 004DDB95    pop         ecx
 004DDB96    mov         dword ptr fs:[eax],edx
 004DDB99    push        4DDBAE
 004DDB9E    lea         eax,[ebp-10]
 004DDBA1    call        @LStrClr
 004DDBA6    ret
>004DDBA7    jmp         @HandleFinally
>004DDBAC    jmp         004DDB9E
 004DDBAE    pop         esi
 004DDBAF    pop         ebx
 004DDBB0    mov         esp,ebp
 004DDBB2    pop         ebp
 004DDBB3    ret
end;*}

//004DDBB4
procedure TMPHexEditorEx.SetScrollBars(Value:TScrollStyle);
begin
{*
 004DDBB4    push        ebp
 004DDBB5    mov         ebp,esp
 004DDBB7    add         esp,0FFFFFFF8
 004DDBBA    mov         byte ptr [ebp-5],dl
 004DDBBD    mov         dword ptr [ebp-4],eax
 004DDBC0    mov         eax,dword ptr [ebp-4]
 004DDBC3    mov         al,byte ptr [eax+254];TMPHexEditorEx.FScrollBars:TScrollStyle
 004DDBC9    cmp         al,byte ptr [ebp-5]
>004DDBCC    je          004DDBE2
 004DDBCE    mov         al,byte ptr [ebp-5]
 004DDBD1    mov         edx,dword ptr [ebp-4]
 004DDBD4    mov         byte ptr [edx+254],al;TMPHexEditorEx.FScrollBars:TScrollStyle
 004DDBDA    mov         eax,dword ptr [ebp-4]
 004DDBDD    call        TWinControl.RecreateWnd
 004DDBE2    pop         ecx
 004DDBE3    pop         ecx
 004DDBE4    pop         ebp
 004DDBE5    ret
*}
end;

//004DDBE8
{*procedure sub_004DDBE8(?:TCustomMPHexEditor; ?:?);
begin
 004DDBE8    push        ebp
 004DDBE9    mov         ebp,esp
 004DDBEB    add         esp,0FFFFFFF8
 004DDBEE    mov         dword ptr [ebp-8],edx
 004DDBF1    mov         dword ptr [ebp-4],eax
 004DDBF4    mov         eax,dword ptr [ebp-4]
 004DDBF7    mov         eax,dword ptr [eax+25C]
 004DDBFD    cmp         eax,dword ptr [ebp-8]
>004DDC00    je          004DDC16
 004DDC02    mov         ecx,dword ptr [ebp-8]
 004DDC05    mov         eax,dword ptr [ebp-4]
 004DDC08    mov         edx,dword ptr [eax+258]
 004DDC0E    mov         eax,dword ptr [ebp-4]
 004DDC11    call        004DB83C
 004DDC16    pop         ecx
 004DDC17    pop         ecx
 004DDC18    pop         ebp
 004DDC19    ret
end;*}

//004DDC1C
procedure TCustomGrid.HideEdit;
begin
{*
 004DDC1C    push        ebp
 004DDC1D    mov         ebp,esp
 004DDC1F    push        ecx
 004DDC20    mov         dword ptr [ebp-4],eax
 004DDC23    mov         eax,dword ptr [ebp-4]
 004DDC26    cmp         dword ptr [eax+27C],0
>004DDC2D    je          004DDC82
 004DDC2F    xor         eax,eax
 004DDC31    push        ebp
 004DDC32    push        4DDC7B
 004DDC37    push        dword ptr fs:[eax]
 004DDC3A    mov         dword ptr fs:[eax],esp
 004DDC3D    mov         eax,dword ptr [ebp-4]
 004DDC40    call        TCustomGrid.UpdateText
 004DDC45    xor         eax,eax
 004DDC47    pop         edx
 004DDC48    pop         ecx
 004DDC49    pop         ecx
 004DDC4A    mov         dword ptr fs:[eax],edx
 004DDC4D    push        4DDC82
 004DDC52    mov         eax,dword ptr [ebp-4]
 004DDC55    mov         dword ptr [eax+280],0FFFFFFFF
 004DDC5F    mov         eax,dword ptr [ebp-4]
 004DDC62    mov         dword ptr [eax+284],0FFFFFFFF
 004DDC6C    mov         eax,dword ptr [ebp-4]
 004DDC6F    mov         eax,dword ptr [eax+27C]
 004DDC75    call        TInplaceEdit.Hide
 004DDC7A    ret
>004DDC7B    jmp         @HandleFinally
>004DDC80    jmp         004DDC52
 004DDC82    pop         ecx
 004DDC83    pop         ebp
 004DDC84    ret
*}
end;

//004DDC88
{*procedure sub_004DDC88(?:?);
begin
 004DDC88    push        ebp
 004DDC89    mov         ebp,esp
 004DDC8B    mov         eax,dword ptr [ebp+8]
 004DDC8E    mov         eax,dword ptr [eax-4]
 004DDC91    mov         eax,dword ptr [eax+228]
 004DDC97    mov         edx,dword ptr [ebp+8]
 004DDC9A    mov         edx,dword ptr [edx-4]
 004DDC9D    mov         dword ptr [edx+280],eax
 004DDCA3    mov         eax,dword ptr [ebp+8]
 004DDCA6    mov         eax,dword ptr [eax-4]
 004DDCA9    mov         eax,dword ptr [eax+22C]
 004DDCAF    mov         edx,dword ptr [ebp+8]
 004DDCB2    mov         edx,dword ptr [edx-4]
 004DDCB5    mov         dword ptr [edx+284],eax
 004DDCBB    mov         eax,dword ptr [ebp+8]
 004DDCBE    mov         eax,dword ptr [eax-4]
 004DDCC1    mov         eax,dword ptr [eax+27C]
 004DDCC7    mov         edx,dword ptr [eax]
 004DDCC9    call        dword ptr [edx+100]
 004DDCCF    mov         eax,dword ptr [ebp+8]
 004DDCD2    mov         eax,dword ptr [eax-4]
 004DDCD5    mov         eax,dword ptr [eax+27C]
 004DDCDB    call        004D4E10
 004DDCE0    inc         eax
>004DDCE1    jne         004DDCF2
 004DDCE3    mov         eax,dword ptr [ebp+8]
 004DDCE6    mov         eax,dword ptr [eax-4]
 004DDCE9    mov         byte ptr [eax+219],0
>004DDCF0    jmp         004DDCFF
 004DDCF2    mov         eax,dword ptr [ebp+8]
 004DDCF5    mov         eax,dword ptr [eax-4]
 004DDCF8    mov         byte ptr [eax+219],1
 004DDCFF    mov         eax,dword ptr [ebp+8]
 004DDD02    mov         eax,dword ptr [eax-4]
 004DDD05    mov         eax,dword ptr [eax+27C]
 004DDD0B    call        004742D4
 004DDD10    pop         ebp
 004DDD11    ret
end;*}

//004DDD14
procedure sub_004DDD14(?:TCustomGrid);
begin
{*
 004DDD14    push        ebp
 004DDD15    mov         ebp,esp
 004DDD17    add         esp,0FFFFFFEC
 004DDD1A    mov         dword ptr [ebp-4],eax
 004DDD1D    mov         eax,dword ptr [ebp-4]
 004DDD20    mov         edx,dword ptr [eax]
 004DDD22    call        dword ptr [edx+0D4];TCustomGrid.sub_004D85E8
 004DDD28    test        al,al
>004DDD2A    je          004DDDF0
 004DDD30    mov         eax,dword ptr [ebp-4]
 004DDD33    cmp         dword ptr [eax+27C],0;TCustomGrid.FInplaceEdit:TInplaceEdit
>004DDD3A    jne         004DDD7B
 004DDD3C    mov         eax,dword ptr [ebp-4]
 004DDD3F    mov         edx,dword ptr [eax]
 004DDD41    call        dword ptr [edx+0D0];TCustomGrid.sub_004DC298
 004DDD47    mov         edx,dword ptr [ebp-4]
 004DDD4A    mov         dword ptr [edx+27C],eax;TCustomGrid.FInplaceEdit:TInplaceEdit
 004DDD50    mov         eax,dword ptr [ebp-4]
 004DDD53    mov         eax,dword ptr [eax+27C];TCustomGrid.FInplaceEdit:TInplaceEdit
 004DDD59    mov         edx,dword ptr [ebp-4]
 004DDD5C    call        004D7508
 004DDD61    mov         eax,dword ptr [ebp-4]
 004DDD64    mov         eax,dword ptr [eax+27C];TCustomGrid.FInplaceEdit:TInplaceEdit
 004DDD6A    mov         edx,dword ptr [ebp-4]
 004DDD6D    mov         ecx,dword ptr [eax]
 004DDD6F    call        dword ptr [ecx+68];TInplaceEdit.sub_0048359C
 004DDD72    push        ebp
 004DDD73    call        004DDC88
 004DDD78    pop         ecx
>004DDD79    jmp         004DDDB2
 004DDD7B    mov         eax,dword ptr [ebp-4]
 004DDD7E    mov         eax,dword ptr [eax+228];TCustomGrid.FCurrent:TGridCoord
 004DDD84    mov         edx,dword ptr [ebp-4]
 004DDD87    cmp         eax,dword ptr [edx+280];TCustomGrid.FInplaceCol:Longint
>004DDD8D    jne         004DDDA3
 004DDD8F    mov         eax,dword ptr [ebp-4]
 004DDD92    mov         eax,dword ptr [eax+22C];TCustomGrid.FCurrent:Longint
 004DDD98    mov         edx,dword ptr [ebp-4]
 004DDD9B    cmp         eax,dword ptr [edx+284];TCustomGrid.FInplaceRow:Longint
>004DDDA1    je          004DDDB2
 004DDDA3    mov         eax,dword ptr [ebp-4]
 004DDDA6    call        TCustomGrid.HideEdit
 004DDDAB    push        ebp
 004DDDAC    call        004DDC88
 004DDDB1    pop         ecx
 004DDDB2    mov         eax,dword ptr [ebp-4]
 004DDDB5    mov         edx,dword ptr [eax]
 004DDDB7    call        dword ptr [edx+0D4];TCustomGrid.sub_004D85E8
 004DDDBD    test        al,al
>004DDDBF    je          004DDDF0
 004DDDC1    lea         eax,[ebp-14]
 004DDDC4    push        eax
 004DDDC5    mov         eax,dword ptr [ebp-4]
 004DDDC8    mov         ecx,dword ptr [eax+22C];TCustomGrid.FCurrent:Longint
 004DDDCE    mov         eax,dword ptr [ebp-4]
 004DDDD1    mov         edx,dword ptr [eax+228];TCustomGrid.FCurrent:TGridCoord
 004DDDD7    mov         eax,dword ptr [ebp-4]
 004DDDDA    call        004D8568
 004DDDDF    lea         edx,[ebp-14]
 004DDDE2    mov         eax,dword ptr [ebp-4]
 004DDDE5    mov         eax,dword ptr [eax+27C];TCustomGrid.FInplaceEdit:TInplaceEdit
 004DDDEB    call        004D7EE0
 004DDDF0    mov         esp,ebp
 004DDDF2    pop         ebp
 004DDDF3    ret
*}
end;

//004DDDF4
procedure TCustomGrid.UpdateText;
begin
{*
 004DDDF4    push        ebp
 004DDDF5    mov         ebp,esp
 004DDDF7    add         esp,0FFFFFFF8
 004DDDFA    push        esi
 004DDDFB    xor         edx,edx
 004DDDFD    mov         dword ptr [ebp-8],edx
 004DDE00    mov         dword ptr [ebp-4],eax
 004DDE03    xor         eax,eax
 004DDE05    push        ebp
 004DDE06    push        4DDE72
 004DDE0B    push        dword ptr fs:[eax]
 004DDE0E    mov         dword ptr fs:[eax],esp
 004DDE11    mov         eax,dword ptr [ebp-4]
 004DDE14    cmp         dword ptr [eax+280],0FFFFFFFF
>004DDE1B    je          004DDE5C
 004DDE1D    mov         eax,dword ptr [ebp-4]
 004DDE20    cmp         dword ptr [eax+284],0FFFFFFFF
>004DDE27    je          004DDE5C
 004DDE29    lea         edx,[ebp-8]
 004DDE2C    mov         eax,dword ptr [ebp-4]
 004DDE2F    mov         eax,dword ptr [eax+27C]
 004DDE35    call        004D4920
 004DDE3A    mov         eax,dword ptr [ebp-8]
 004DDE3D    push        eax
 004DDE3E    mov         eax,dword ptr [ebp-4]
 004DDE41    mov         ecx,dword ptr [eax+284]
 004DDE47    mov         eax,dword ptr [ebp-4]
 004DDE4A    mov         edx,dword ptr [eax+280]
 004DDE50    mov         eax,dword ptr [ebp-4]
 004DDE53    mov         si,0FFAE
 004DDE57    call        @CallDynaInst
 004DDE5C    xor         eax,eax
 004DDE5E    pop         edx
 004DDE5F    pop         ecx
 004DDE60    pop         ecx
 004DDE61    mov         dword ptr fs:[eax],edx
 004DDE64    push        4DDE79
 004DDE69    lea         eax,[ebp-8]
 004DDE6C    call        @LStrClr
 004DDE71    ret
>004DDE72    jmp         @HandleFinally
>004DDE77    jmp         004DDE69
 004DDE79    pop         esi
 004DDE7A    pop         ecx
 004DDE7B    pop         ecx
 004DDE7C    pop         ebp
 004DDE7D    ret
*}
end;

//004DDE80
{*procedure TCustomGrid.WMChar(?:?);
begin
 004DDE80    push        ebp
 004DDE81    mov         ebp,esp
 004DDE83    add         esp,0FFFFFFF8
 004DDE86    mov         dword ptr [ebp-8],edx
 004DDE89    mov         dword ptr [ebp-4],eax
 004DDE8C    mov         eax,dword ptr [ebp-4]
 004DDE8F    test        byte ptr [eax+249],4;TCustomGrid.?f249:byte
>004DDE96    je          004DDEB8
 004DDE98    mov         eax,dword ptr [ebp-8]
 004DDE9B    mov         al,byte ptr [eax+4]
 004DDE9E    sub         al,8
>004DDEA0    je          004DDEA8
 004DDEA2    add         al,0E8
 004DDEA4    sub         al,0E0
>004DDEA6    jae         004DDEB8
 004DDEA8    mov         edx,dword ptr [ebp-8]
 004DDEAB    mov         dl,byte ptr [edx+4]
 004DDEAE    mov         eax,dword ptr [ebp-4]
 004DDEB1    call        004D879C
>004DDEB6    jmp         004DDEC3
 004DDEB8    mov         edx,dword ptr [ebp-8]
 004DDEBB    mov         eax,dword ptr [ebp-4]
 004DDEBE    call        TWinControl.WMChar
 004DDEC3    pop         ecx
 004DDEC4    pop         ecx
 004DDEC5    pop         ebp
 004DDEC6    ret
end;*}

//004DDEC8
{*procedure TCustomGrid.WMCommand(?:?);
begin
 004DDEC8    push        ebp
 004DDEC9    mov         ebp,esp
 004DDECB    add         esp,0FFFFFFF8
 004DDECE    mov         dword ptr [ebp-8],edx
 004DDED1    mov         dword ptr [ebp-4],eax
 004DDED4    mov         eax,dword ptr [ebp-4]
 004DDED7    cmp         dword ptr [eax+27C],0;TCustomGrid.FInplaceEdit:TInplaceEdit
>004DDEDE    je          004DDF0B
 004DDEE0    mov         eax,dword ptr [ebp-4]
 004DDEE3    mov         eax,dword ptr [eax+27C];TCustomGrid.FInplaceEdit:TInplaceEdit
 004DDEE9    call        TWinControl.GetHandle
 004DDEEE    mov         edx,dword ptr [ebp-8]
 004DDEF1    cmp         eax,dword ptr [edx+8]
>004DDEF4    jne         004DDF0B
 004DDEF6    mov         eax,dword ptr [ebp-8]
 004DDEF9    mov         ax,word ptr [eax+6]
 004DDEFD    sub         ax,300
>004DDF01    jne         004DDF0B
 004DDF03    mov         eax,dword ptr [ebp-4]
 004DDF06    call        TCustomGrid.UpdateText
 004DDF0B    pop         ecx
 004DDF0C    pop         ecx
 004DDF0D    pop         ebp
 004DDF0E    ret
end;*}

//004DDF10
{*procedure TCustomGrid.WMGetDlgCode(?:?);
begin
 004DDF10    push        ebp
 004DDF11    mov         ebp,esp
 004DDF13    add         esp,0FFFFFFF8
 004DDF16    mov         dword ptr [ebp-8],edx
 004DDF19    mov         dword ptr [ebp-4],eax
 004DDF1C    mov         eax,dword ptr [ebp-8]
 004DDF1F    mov         dword ptr [eax+0C],1
 004DDF26    mov         eax,dword ptr [ebp-4]
 004DDF29    test        byte ptr [eax+249],10;TCustomGrid.?f249:byte
>004DDF30    jne         004DDF5B
 004DDF32    mov         eax,dword ptr [ebp-4]
 004DDF35    test        byte ptr [eax+249],8;TCustomGrid.?f249:byte
>004DDF3C    je          004DDF45
 004DDF3E    mov         eax,dword ptr [ebp-8]
 004DDF41    or          dword ptr [eax+0C],2
 004DDF45    mov         eax,dword ptr [ebp-4]
 004DDF48    test        byte ptr [eax+249],4;TCustomGrid.?f249:byte
>004DDF4F    je          004DDF5B
 004DDF51    mov         eax,dword ptr [ebp-8]
 004DDF54    or          dword ptr [eax+0C],80
 004DDF5B    pop         ecx
 004DDF5C    pop         ecx
 004DDF5D    pop         ebp
 004DDF5E    ret
end;*}

//004DDF60
{*procedure TCustomGrid.WMKillFocus(?:?);
begin
 004DDF60    push        ebp
 004DDF61    mov         ebp,esp
 004DDF63    add         esp,0FFFFFFE8
 004DDF66    mov         dword ptr [ebp-8],edx
 004DDF69    mov         dword ptr [ebp-4],eax
 004DDF6C    mov         edx,dword ptr [ebp-8]
 004DDF6F    mov         eax,dword ptr [ebp-4]
 004DDF72    call        TWinControl.WMKillFocus
 004DDF77    lea         edx,[ebp-18]
 004DDF7A    mov         eax,dword ptr [ebp-4]
 004DDF7D    call        004DD4AC
 004DDF82    lea         edx,[ebp-18]
 004DDF85    mov         eax,dword ptr [ebp-4]
 004DDF88    call        004DAED8
 004DDF8D    mov         eax,dword ptr [ebp-4]
 004DDF90    cmp         dword ptr [eax+27C],0;TCustomGrid.FInplaceEdit:TInplaceEdit
>004DDF97    je          004DDFB7
 004DDF99    mov         eax,dword ptr [ebp-4]
 004DDF9C    mov         eax,dword ptr [eax+27C];TCustomGrid.FInplaceEdit:TInplaceEdit
 004DDFA2    call        TWinControl.GetHandle
 004DDFA7    mov         edx,dword ptr [ebp-8]
 004DDFAA    cmp         eax,dword ptr [edx+4]
>004DDFAD    je          004DDFB7
 004DDFAF    mov         eax,dword ptr [ebp-4]
 004DDFB2    call        TCustomGrid.HideEdit
 004DDFB7    mov         esp,ebp
 004DDFB9    pop         ebp
 004DDFBA    ret
end;*}

//004DDFBC
{*procedure TCustomGrid.WMLButtonDown(?:?);
begin
 004DDFBC    push        ebp
 004DDFBD    mov         ebp,esp
 004DDFBF    add         esp,0FFFFFFF8
 004DDFC2    mov         dword ptr [ebp-8],edx
 004DDFC5    mov         dword ptr [ebp-4],eax
 004DDFC8    mov         edx,dword ptr [ebp-8]
 004DDFCB    mov         eax,dword ptr [ebp-4]
 004DDFCE    call        TControl.WMLButtonDown
 004DDFD3    mov         eax,dword ptr [ebp-4]
 004DDFD6    cmp         dword ptr [eax+27C],0;TCustomGrid.FInplaceEdit:TInplaceEdit
>004DDFDD    je          004DDFF3
 004DDFDF    call        user32.GetMessageTime
 004DDFE4    mov         edx,dword ptr [ebp-4]
 004DDFE7    mov         edx,dword ptr [edx+27C];TCustomGrid.FInplaceEdit:TInplaceEdit
 004DDFED    mov         dword ptr [edx+244],eax;TInplaceEdit.FClickTime:Longint
 004DDFF3    pop         ecx
 004DDFF4    pop         ecx
 004DDFF5    pop         ebp
 004DDFF6    ret
end;*}

//004DDFF8
{*procedure TCustomGrid.WMNCHitTest(?:?);
begin
 004DDFF8    push        ebp
 004DDFF9    mov         ebp,esp
 004DDFFB    add         esp,0FFFFFFE8
 004DDFFE    mov         dword ptr [ebp-8],edx
 004DE001    mov         dword ptr [ebp-4],eax
 004DE004    mov         edx,dword ptr [ebp-8]
 004DE007    mov         eax,dword ptr [ebp-4]
 004DE00A    mov         ecx,dword ptr [eax]
 004DE00C    call        dword ptr [ecx-10];TWinControl.DefaultHandler
 004DE00F    lea         edx,[ebp-18]
 004DE012    mov         eax,dword ptr [ebp-8]
 004DE015    mov         eax,dword ptr [eax+8]
 004DE018    call        00408640
 004DE01D    lea         edx,[ebp-18]
 004DE020    lea         ecx,[ebp-10]
 004DE023    mov         eax,dword ptr [ebp-4]
 004DE026    call        TControl.ScreenToClient
 004DE02B    mov         eax,dword ptr [ebp-4]
 004DE02E    mov         edx,dword ptr [ebp-10]
 004DE031    mov         dword ptr [eax+274],edx;TCustomGrid.FHitTest:TPoint
 004DE037    mov         edx,dword ptr [ebp-0C]
 004DE03A    mov         dword ptr [eax+278],edx
 004DE040    mov         esp,ebp
 004DE042    pop         ebp
 004DE043    ret
end;*}

//004DE044
{*procedure TCustomGrid.WMSetCursor(?:?);
begin
 004DE044    push        ebp
 004DE045    mov         ebp,esp
 004DE047    add         esp,0FFFFFF80
 004DE04A    push        ebx
 004DE04B    mov         dword ptr [ebp-8],edx
 004DE04E    mov         dword ptr [ebp-4],eax
 004DE051    xor         eax,eax
 004DE053    mov         dword ptr [ebp-1C],eax
 004DE056    mov         eax,dword ptr [ebp-8]
 004DE059    cmp         word ptr [eax+8],1
>004DE05E    jne         004DE0F0
 004DE064    mov         eax,dword ptr [ebp-4]
 004DE067    cmp         byte ptr [eax+28E],0;TCustomGrid.FGridState:TGridState
>004DE06E    jne         004DE0AE
 004DE070    lea         edx,[ebp-80]
 004DE073    mov         eax,dword ptr [ebp-4]
 004DE076    call        TCustomGrid.CalcDrawInfo
 004DE07B    lea         eax,[ebp-9]
 004DE07E    push        eax
 004DE07F    lea         eax,[ebp-10]
 004DE082    push        eax
 004DE083    lea         eax,[ebp-14]
 004DE086    push        eax
 004DE087    lea         eax,[ebp-18]
 004DE08A    push        eax
 004DE08B    lea         eax,[ebp-80]
 004DE08E    push        eax
 004DE08F    mov         eax,dword ptr [ebp-4]
 004DE092    mov         ecx,dword ptr [eax+278]
 004DE098    mov         eax,dword ptr [ebp-4]
 004DE09B    mov         edx,dword ptr [eax+274];TCustomGrid.FHitTest:TPoint
 004DE0A1    mov         eax,dword ptr [ebp-4]
 004DE0A4    mov         ebx,dword ptr [eax]
 004DE0A6    call        dword ptr [ebx+0CC];TCustomGrid.sub_004DA0FC
>004DE0AC    jmp         004DE0BA
 004DE0AE    mov         eax,dword ptr [ebp-4]
 004DE0B1    mov         al,byte ptr [eax+28E];TCustomGrid.FGridState:TGridState
 004DE0B7    mov         byte ptr [ebp-9],al
 004DE0BA    cmp         byte ptr [ebp-9],2
>004DE0BE    jne         004DE0D6
 004DE0C0    mov         eax,[0056E604];^Screen:TScreen
 004DE0C5    mov         eax,dword ptr [eax]
 004DE0C7    mov         edx,0FFFFFFF1
 004DE0CC    call        004A9008
 004DE0D1    mov         dword ptr [ebp-1C],eax
>004DE0D4    jmp         004DE0F0
 004DE0D6    cmp         byte ptr [ebp-9],3
>004DE0DA    jne         004DE0F0
 004DE0DC    mov         eax,[0056E604];^Screen:TScreen
 004DE0E1    mov         eax,dword ptr [eax]
 004DE0E3    mov         edx,0FFFFFFF2
 004DE0E8    call        004A9008
 004DE0ED    mov         dword ptr [ebp-1C],eax
 004DE0F0    cmp         dword ptr [ebp-1C],0
>004DE0F4    je          004DE101
 004DE0F6    mov         eax,dword ptr [ebp-1C]
 004DE0F9    push        eax
 004DE0FA    call        user32.SetCursor
>004DE0FF    jmp         004DE10C
 004DE101    mov         edx,dword ptr [ebp-8]
 004DE104    mov         eax,dword ptr [ebp-4]
 004DE107    call        TWinControl.WMSetCursor
 004DE10C    pop         ebx
 004DE10D    mov         esp,ebp
 004DE10F    pop         ebp
 004DE110    ret
end;*}

//004DE114
{*procedure TCustomGrid.WMSetFocus(?:?);
begin
 004DE114    push        ebp
 004DE115    mov         ebp,esp
 004DE117    add         esp,0FFFFFFE8
 004DE11A    mov         dword ptr [ebp-8],edx
 004DE11D    mov         dword ptr [ebp-4],eax
 004DE120    mov         edx,dword ptr [ebp-8]
 004DE123    mov         eax,dword ptr [ebp-4]
 004DE126    call        TWinControl.WMSetFocus
 004DE12B    mov         eax,dword ptr [ebp-4]
 004DE12E    cmp         dword ptr [eax+27C],0;TCustomGrid.FInplaceEdit:TInplaceEdit
>004DE135    je          004DE14D
 004DE137    mov         eax,dword ptr [ebp-4]
 004DE13A    mov         eax,dword ptr [eax+27C];TCustomGrid.FInplaceEdit:TInplaceEdit
 004DE140    call        TWinControl.GetHandle
 004DE145    mov         edx,dword ptr [ebp-8]
 004DE148    cmp         eax,dword ptr [edx+4]
>004DE14B    je          004DE16B
 004DE14D    lea         edx,[ebp-18]
 004DE150    mov         eax,dword ptr [ebp-4]
 004DE153    call        004DD4AC
 004DE158    lea         edx,[ebp-18]
 004DE15B    mov         eax,dword ptr [ebp-4]
 004DE15E    call        004DAED8
 004DE163    mov         eax,dword ptr [ebp-4]
 004DE166    call        004DDD14
 004DE16B    mov         esp,ebp
 004DE16D    pop         ebp
 004DE16E    ret
end;*}

//004DE170
{*procedure TCustomGrid.WMSize(?:?);
begin
 004DE170    push        ebp
 004DE171    mov         ebp,esp
 004DE173    add         esp,0FFFFFFF8
 004DE176    push        esi
 004DE177    mov         dword ptr [ebp-8],edx
 004DE17A    mov         dword ptr [ebp-4],eax
 004DE17D    mov         edx,dword ptr [ebp-8]
 004DE180    mov         eax,dword ptr [ebp-4]
 004DE183    call        TWinControl.WMSize
 004DE188    mov         eax,dword ptr [ebp-4]
 004DE18B    call        TCustomGrid.UpdateScrollRange
 004DE190    mov         eax,dword ptr [ebp-4]
 004DE193    mov         si,0FFC8
 004DE197    call        @CallDynaInst;TControl.sub_0048415C
 004DE19C    test        al,al
>004DE19E    je          004DE1A8
 004DE1A0    mov         eax,dword ptr [ebp-4]
 004DE1A3    mov         edx,dword ptr [eax]
 004DE1A5    call        dword ptr [edx+7C];TCustomGrid.sub_0048BE68
 004DE1A8    pop         esi
 004DE1A9    pop         ecx
 004DE1AA    pop         ecx
 004DE1AB    pop         ebp
 004DE1AC    ret
end;*}

//004DE1B0
{*procedure TCustomGrid.WMVScroll(?:?);
begin
 004DE1B0    push        ebp
 004DE1B1    mov         ebp,esp
 004DE1B3    add         esp,0FFFFFFF8
 004DE1B6    mov         dword ptr [ebp-8],edx
 004DE1B9    mov         dword ptr [ebp-4],eax
 004DE1BC    mov         eax,dword ptr [ebp-8]
 004DE1BF    movsx       eax,word ptr [eax+6]
 004DE1C3    push        eax
 004DE1C4    push        1
 004DE1C6    mov         ecx,dword ptr [ebp-8]
 004DE1C9    movsx       ecx,word ptr [ecx+4]
 004DE1CD    mov         edx,1
 004DE1D2    mov         eax,dword ptr [ebp-4]
 004DE1D5    call        004DB380
 004DE1DA    pop         ecx
 004DE1DB    pop         ecx
 004DE1DC    pop         ebp
 004DE1DD    ret
end;*}

//004DE1E0
{*procedure TCustomGrid.WMHScroll(?:?);
begin
 004DE1E0    push        ebp
 004DE1E1    mov         ebp,esp
 004DE1E3    add         esp,0FFFFFFF8
 004DE1E6    mov         dword ptr [ebp-8],edx
 004DE1E9    mov         dword ptr [ebp-4],eax
 004DE1EC    mov         eax,dword ptr [ebp-8]
 004DE1EF    movsx       eax,word ptr [eax+6]
 004DE1F3    push        eax
 004DE1F4    push        1
 004DE1F6    mov         ecx,dword ptr [ebp-8]
 004DE1F9    movsx       ecx,word ptr [ecx+4]
 004DE1FD    xor         edx,edx
 004DE1FF    mov         eax,dword ptr [ebp-4]
 004DE202    call        004DB380
 004DE207    pop         ecx
 004DE208    pop         ecx
 004DE209    pop         ebp
 004DE20A    ret
end;*}

//004DE20C
procedure TCustomGrid.CancelMode;
begin
{*
 004DE20C    push        ebp
 004DE20D    mov         ebp,esp
 004DE20F    add         esp,0FFFFFF98
 004DE212    mov         dword ptr [ebp-4],eax
 004DE215    xor         eax,eax
 004DE217    push        ebp
 004DE218    push        4DE295
 004DE21D    push        dword ptr fs:[eax]
 004DE220    mov         dword ptr fs:[eax],esp
 004DE223    mov         eax,dword ptr [ebp-4]
 004DE226    mov         al,byte ptr [eax+28E]
 004DE22C    dec         al
>004DE22E    je          004DE23B
 004DE230    dec         eax
 004DE231    sub         al,2
>004DE233    jb          004DE24D
 004DE235    sub         al,2
>004DE237    jb          004DE265
>004DE239    jmp         004DE27D
 004DE23B    push        1
 004DE23D    mov         eax,dword ptr [ebp-4]
 004DE240    call        TWinControl.GetHandle
 004DE245    push        eax
 004DE246    call        user32.KillTimer
>004DE24B    jmp         004DE27D
 004DE24D    lea         edx,[ebp-68]
 004DE250    mov         eax,dword ptr [ebp-4]
 004DE253    call        TCustomGrid.CalcDrawInfo
 004DE258    lea         edx,[ebp-68]
 004DE25B    mov         eax,dword ptr [ebp-4]
 004DE25E    call        TCustomGrid.DrawSizingLine
>004DE263    jmp         004DE27D
 004DE265    mov         eax,dword ptr [ebp-4]
 004DE268    call        TCustomGrid.DrawMove
 004DE26D    push        1
 004DE26F    mov         eax,dword ptr [ebp-4]
 004DE272    call        TWinControl.GetHandle
 004DE277    push        eax
 004DE278    call        user32.KillTimer
 004DE27D    xor         eax,eax
 004DE27F    pop         edx
 004DE280    pop         ecx
 004DE281    pop         ecx
 004DE282    mov         dword ptr fs:[eax],edx
 004DE285    push        4DE29C
 004DE28A    mov         eax,dword ptr [ebp-4]
 004DE28D    mov         byte ptr [eax+28E],0
 004DE294    ret
>004DE295    jmp         @HandleFinally
>004DE29A    jmp         004DE28A
 004DE29C    mov         esp,ebp
 004DE29E    pop         ebp
 004DE29F    ret
*}
end;

//004DE2A0
{*procedure TCustomGrid.WMCancelMode(?:?);
begin
 004DE2A0    push        ebp
 004DE2A1    mov         ebp,esp
 004DE2A3    add         esp,0FFFFFFF8
 004DE2A6    mov         dword ptr [ebp-8],edx
 004DE2A9    mov         dword ptr [ebp-4],eax
 004DE2AC    mov         edx,dword ptr [ebp-8]
 004DE2AF    mov         eax,dword ptr [ebp-4]
 004DE2B2    call        TControl.WMCancelMode
 004DE2B7    mov         eax,dword ptr [ebp-4]
 004DE2BA    call        TCustomGrid.CancelMode
 004DE2BF    pop         ecx
 004DE2C0    pop         ecx
 004DE2C1    pop         ebp
 004DE2C2    ret
end;*}

//004DE2C4
{*procedure TCustomGrid.CMCancelMode(?:?);
begin
 004DE2C4    push        ebp
 004DE2C5    mov         ebp,esp
 004DE2C7    add         esp,0FFFFFFF8
 004DE2CA    mov         dword ptr [ebp-8],edx
 004DE2CD    mov         dword ptr [ebp-4],eax
 004DE2D0    mov         eax,dword ptr [ebp-4]
 004DE2D3    cmp         dword ptr [eax+27C],0;TCustomGrid.FInplaceEdit:TInplaceEdit
>004DE2DA    je          004DE2ED
 004DE2DC    mov         edx,dword ptr [ebp-8]
 004DE2DF    mov         eax,dword ptr [ebp-4]
 004DE2E2    mov         eax,dword ptr [eax+27C];TCustomGrid.FInplaceEdit:TInplaceEdit
 004DE2E8    mov         ecx,dword ptr [eax]
 004DE2EA    call        dword ptr [ecx+74];TInplaceEdit.sub_004D7BC4
 004DE2ED    mov         edx,dword ptr [ebp-8]
 004DE2F0    mov         eax,dword ptr [ebp-4]
 004DE2F3    mov         ecx,dword ptr [eax]
 004DE2F5    call        dword ptr [ecx-10];TWinControl.DefaultHandler
 004DE2F8    mov         eax,dword ptr [ebp-4]
 004DE2FB    call        TCustomGrid.CancelMode
 004DE300    pop         ecx
 004DE301    pop         ecx
 004DE302    pop         ebp
 004DE303    ret
end;*}

//004DE304
{*procedure TCustomGrid.CMFontChanged(?:?);
begin
 004DE304    push        ebp
 004DE305    mov         ebp,esp
 004DE307    add         esp,0FFFFFFF8
 004DE30A    mov         dword ptr [ebp-8],edx
 004DE30D    mov         dword ptr [ebp-4],eax
 004DE310    mov         eax,dword ptr [ebp-4]
 004DE313    cmp         dword ptr [eax+27C],0;TCustomGrid.FInplaceEdit:TInplaceEdit
>004DE31A    je          004DE330
 004DE31C    mov         eax,dword ptr [ebp-4]
 004DE31F    mov         edx,dword ptr [eax+68];TCustomGrid.FFont:TFont
 004DE322    mov         eax,dword ptr [ebp-4]
 004DE325    mov         eax,dword ptr [eax+27C];TCustomGrid.FInplaceEdit:TInplaceEdit
 004DE32B    call        TPanel.SetFont
 004DE330    mov         edx,dword ptr [ebp-8]
 004DE333    mov         eax,dword ptr [ebp-4]
 004DE336    call        TWinControl.CMFontChanged
 004DE33B    pop         ecx
 004DE33C    pop         ecx
 004DE33D    pop         ebp
 004DE33E    ret
end;*}

//004DE340
{*procedure TCustomGrid.CMCtl3DChanged(?:?);
begin
 004DE340    push        ebp
 004DE341    mov         ebp,esp
 004DE343    add         esp,0FFFFFFF8
 004DE346    mov         dword ptr [ebp-8],edx
 004DE349    mov         dword ptr [ebp-4],eax
 004DE34C    mov         edx,dword ptr [ebp-8]
 004DE34F    mov         eax,dword ptr [ebp-4]
 004DE352    call        TWinControl.CMCtl3DChanged
 004DE357    mov         eax,dword ptr [ebp-4]
 004DE35A    call        TWinControl.RecreateWnd
 004DE35F    pop         ecx
 004DE360    pop         ecx
 004DE361    pop         ebp
 004DE362    ret
end;*}

//004DE364
{*procedure TCustomGrid.CMDesignHitTest(?:?);
begin
 004DE364    push        ebp
 004DE365    mov         ebp,esp
 004DE367    add         esp,0FFFFFFF8
 004DE36A    mov         dword ptr [ebp-8],edx
 004DE36D    mov         dword ptr [ebp-4],eax
 004DE370    mov         ecx,dword ptr [ebp-8]
 004DE373    movsx       ecx,word ptr [ecx+0A]
 004DE377    mov         edx,dword ptr [ebp-8]
 004DE37A    movsx       edx,word ptr [edx+8]
 004DE37E    mov         eax,dword ptr [ebp-4]
 004DE381    call        004D8D28
 004DE386    neg         al
 004DE388    sbb         eax,eax
 004DE38A    mov         edx,dword ptr [ebp-8]
 004DE38D    mov         dword ptr [edx+0C],eax
 004DE390    pop         ecx
 004DE391    pop         ecx
 004DE392    pop         ebp
 004DE393    ret
end;*}

//004DE394
{*procedure TCustomGrid.CMWantSpecialKey(?:?);
begin
 004DE394    push        ebp
 004DE395    mov         ebp,esp
 004DE397    add         esp,0FFFFFFF8
 004DE39A    mov         dword ptr [ebp-8],edx
 004DE39D    mov         dword ptr [ebp-4],eax
 004DE3A0    mov         edx,dword ptr [ebp-8]
 004DE3A3    mov         eax,dword ptr [ebp-4]
 004DE3A6    mov         ecx,dword ptr [eax]
 004DE3A8    call        dword ptr [ecx-10];TWinControl.DefaultHandler
 004DE3AB    mov         eax,dword ptr [ebp-4]
 004DE3AE    test        byte ptr [eax+249],4;TCustomGrid.?f249:byte
>004DE3B5    je          004DE3CA
 004DE3B7    mov         eax,dword ptr [ebp-8]
 004DE3BA    cmp         byte ptr [eax+4],0D
>004DE3BE    jne         004DE3CA
 004DE3C0    mov         eax,dword ptr [ebp-8]
 004DE3C3    mov         dword ptr [eax+0C],1
 004DE3CA    pop         ecx
 004DE3CB    pop         ecx
 004DE3CC    pop         ebp
 004DE3CD    ret
end;*}

//004DE3D0
{*procedure TCustomGrid.sub_004DE3D0(?:?);
begin
 004DE3D0    push        ebp
 004DE3D1    mov         ebp,esp
 004DE3D3    add         esp,0FFFFFFE8
 004DE3D6    mov         byte ptr [ebp-5],dl
 004DE3D9    mov         dword ptr [ebp-4],eax
 004DE3DC    mov         eax,dword ptr [ebp-4]
 004DE3DF    mov         edx,dword ptr [eax+210];TCustomGrid.FAnchor:TGridCoord
 004DE3E5    mov         dword ptr [ebp-18],edx
 004DE3E8    mov         edx,dword ptr [eax+214]
 004DE3EE    mov         dword ptr [ebp-14],edx
 004DE3F1    mov         eax,dword ptr [ebp-4]
 004DE3F4    mov         eax,dword ptr [eax+21C];TCustomGrid.FColCount:Longint
 004DE3FA    dec         eax
 004DE3FB    mov         dword ptr [ebp-10],eax
 004DE3FE    mov         eax,dword ptr [ebp-4]
 004DE401    mov         eax,dword ptr [eax+24C];TCustomGrid.FRowCount:Longint
 004DE407    dec         eax
 004DE408    mov         dword ptr [ebp-0C],eax
 004DE40B    test        byte ptr [ebp-5],1
>004DE40F    je          004DE428
 004DE411    mov         eax,dword ptr [ebp-4]
 004DE414    mov         eax,dword ptr [eax+210];TCustomGrid.FAnchor:TGridCoord
 004DE41A    mov         edx,dword ptr [ebp-4]
 004DE41D    cmp         eax,dword ptr [edx+238];TCustomGrid.FFixedCols:Integer
>004DE423    jle         004DE428
 004DE425    dec         dword ptr [ebp-18]
 004DE428    test        byte ptr [ebp-5],2
>004DE42C    je          004DE43F
 004DE42E    mov         eax,dword ptr [ebp-4]
 004DE431    mov         eax,dword ptr [eax+210];TCustomGrid.FAnchor:TGridCoord
 004DE437    cmp         eax,dword ptr [ebp-10]
>004DE43A    jge         004DE43F
 004DE43C    inc         dword ptr [ebp-18]
 004DE43F    test        byte ptr [ebp-5],4
>004DE443    je          004DE45C
 004DE445    mov         eax,dword ptr [ebp-4]
 004DE448    mov         eax,dword ptr [eax+214]
 004DE44E    mov         edx,dword ptr [ebp-4]
 004DE451    cmp         eax,dword ptr [edx+23C];TCustomGrid.FFixedRows:Integer
>004DE457    jle         004DE45C
 004DE459    dec         dword ptr [ebp-14]
 004DE45C    test        byte ptr [ebp-5],8
>004DE460    je          004DE473
 004DE462    mov         eax,dword ptr [ebp-4]
 004DE465    mov         eax,dword ptr [eax+214]
 004DE46B    cmp         eax,dword ptr [ebp-0C]
>004DE46E    jge         004DE473
 004DE470    inc         dword ptr [ebp-14]
 004DE473    mov         eax,dword ptr [ebp-4]
 004DE476    mov         eax,dword ptr [eax+210];TCustomGrid.FAnchor:TGridCoord
 004DE47C    cmp         eax,dword ptr [ebp-18]
>004DE47F    jne         004DE48F
 004DE481    mov         eax,dword ptr [ebp-4]
 004DE484    mov         eax,dword ptr [eax+214]
 004DE48A    cmp         eax,dword ptr [ebp-14]
>004DE48D    je          004DE49A
 004DE48F    lea         edx,[ebp-18]
 004DE492    mov         eax,dword ptr [ebp-4]
 004DE495    call        004DB5F4
 004DE49A    mov         esp,ebp
 004DE49C    pop         ebp
 004DE49D    ret
end;*}

//004DE4A0
{*procedure TCustomGrid.WMTimer(?:?);
begin
 004DE4A0    push        ebp
 004DE4A1    mov         ebp,esp
 004DE4A3    add         esp,0FFFFFF70
 004DE4A9    push        esi
 004DE4AA    mov         dword ptr [ebp-24],edx
 004DE4AD    mov         dword ptr [ebp-4],eax
 004DE4B0    mov         eax,dword ptr [ebp-4]
 004DE4B3    mov         al,byte ptr [eax+28E];TCustomGrid.FGridState:TGridState
 004DE4B9    sub         al,1
>004DE4BB    je          004DE4C7
 004DE4BD    add         al,0FD
 004DE4BF    sub         al,2
>004DE4C1    jae         004DE621
 004DE4C7    lea         eax,[ebp-0C]
 004DE4CA    push        eax
 004DE4CB    call        user32.GetCursorPos
 004DE4D0    lea         ecx,[ebp-90]
 004DE4D6    lea         edx,[ebp-0C]
 004DE4D9    mov         eax,dword ptr [ebp-4]
 004DE4DC    call        TControl.ScreenToClient
 004DE4E1    mov         eax,dword ptr [ebp-90]
 004DE4E7    mov         dword ptr [ebp-0C],eax
 004DE4EA    mov         eax,dword ptr [ebp-8C]
 004DE4F0    mov         dword ptr [ebp-8],eax
 004DE4F3    lea         edx,[ebp-88]
 004DE4F9    mov         eax,dword ptr [ebp-4]
 004DE4FC    call        TCustomGrid.CalcDrawInfo
 004DE501    mov         al,[004DE628];0x0 gvar_004DE628
 004DE506    mov         byte ptr [ebp-0D],al
 004DE509    lea         eax,[ebp-88]
 004DE50F    push        eax
 004DE510    lea         eax,[ebp-18]
 004DE513    push        eax
 004DE514    mov         ecx,dword ptr [ebp-8]
 004DE517    mov         edx,dword ptr [ebp-0C]
 004DE51A    mov         eax,dword ptr [ebp-4]
 004DE51D    call        004D9B54
 004DE522    mov         eax,dword ptr [ebp-4]
 004DE525    mov         al,byte ptr [eax+28E];TCustomGrid.FGridState:TGridState
 004DE52B    dec         al
>004DE52D    je          004DE586
 004DE52F    sub         al,3
>004DE531    je          004DE562
 004DE533    dec         al
>004DE535    jne         004DE621
 004DE53B    lea         eax,[ebp-88]
 004DE541    push        eax
 004DE542    lea         eax,[ebp-88]
 004DE548    push        eax
 004DE549    push        0
 004DE54B    lea         eax,[ebp-0C]
 004DE54E    push        eax
 004DE54F    mov         ecx,dword ptr [ebp-18]
 004DE552    mov         edx,dword ptr [ebp-0C]
 004DE555    mov         eax,dword ptr [ebp-4]
 004DE558    call        004DD244
>004DE55D    jmp         004DE621
 004DE562    lea         eax,[ebp-88]
 004DE568    push        eax
 004DE569    lea         eax,[ebp-58]
 004DE56C    push        eax
 004DE56D    push        1
 004DE56F    lea         eax,[ebp-0C]
 004DE572    push        eax
 004DE573    mov         ecx,dword ptr [ebp-14]
 004DE576    mov         edx,dword ptr [ebp-8]
 004DE579    mov         eax,dword ptr [ebp-4]
 004DE57C    call        004DD244
>004DE581    jmp         004DE621
 004DE586    mov         eax,dword ptr [ebp-4]
 004DE589    mov         si,0FFC8
 004DE58D    call        @CallDynaInst;TControl.sub_0048415C
 004DE592    test        al,al
>004DE594    jne         004DE5B5
 004DE596    mov         eax,dword ptr [ebp-0C]
 004DE599    cmp         eax,dword ptr [ebp-84]
>004DE59F    jge         004DE5A7
 004DE5A1    or          byte ptr [ebp-0D],1
>004DE5A5    jmp         004DE5EE
 004DE5A7    mov         eax,dword ptr [ebp-0C]
 004DE5AA    cmp         eax,dword ptr [ebp-74]
>004DE5AD    jle         004DE5EE
 004DE5AF    or          byte ptr [ebp-0D],2
>004DE5B3    jmp         004DE5EE
 004DE5B5    mov         eax,dword ptr [ebp-4]
 004DE5B8    call        TControl.GetClientWidth
 004DE5BD    sub         eax,dword ptr [ebp-74]
 004DE5C0    mov         dword ptr [ebp-1C],eax
 004DE5C3    mov         eax,dword ptr [ebp-4]
 004DE5C6    call        TControl.GetClientWidth
 004DE5CB    sub         eax,dword ptr [ebp-84]
 004DE5D1    mov         dword ptr [ebp-20],eax
 004DE5D4    mov         eax,dword ptr [ebp-0C]
 004DE5D7    cmp         eax,dword ptr [ebp-1C]
>004DE5DA    jge         004DE5E2
 004DE5DC    or          byte ptr [ebp-0D],2
>004DE5E0    jmp         004DE5EE
 004DE5E2    mov         eax,dword ptr [ebp-0C]
 004DE5E5    cmp         eax,dword ptr [ebp-20]
>004DE5E8    jle         004DE5EE
 004DE5EA    or          byte ptr [ebp-0D],1
 004DE5EE    mov         eax,dword ptr [ebp-8]
 004DE5F1    cmp         eax,dword ptr [ebp-54]
>004DE5F4    jge         004DE5FC
 004DE5F6    or          byte ptr [ebp-0D],4
>004DE5FA    jmp         004DE608
 004DE5FC    mov         eax,dword ptr [ebp-8]
 004DE5FF    cmp         eax,dword ptr [ebp-44]
>004DE602    jle         004DE608
 004DE604    or          byte ptr [ebp-0D],8
 004DE608    mov         al,[004DE628];0x0 gvar_004DE628
 004DE60D    cmp         al,byte ptr [ebp-0D]
>004DE610    je          004DE621
 004DE612    mov         dl,byte ptr [ebp-0D]
 004DE615    mov         eax,dword ptr [ebp-4]
 004DE618    mov         si,0FFA6
 004DE61C    call        @CallDynaInst;TCustomGrid.sub_004DE3D0
 004DE621    pop         esi
 004DE622    mov         esp,ebp
 004DE624    pop         ebp
 004DE625    ret
end;*}

//004DE62C
procedure TCustomGrid.sub_004DE62C;
begin
{*
 004DE62C    push        ebp
 004DE62D    mov         ebp,esp
 004DE62F    push        ecx
 004DE630    mov         dword ptr [ebp-4],eax
 004DE633    mov         eax,dword ptr [ebp-4]
 004DE636    call        TCustomGrid.UpdateScrollRange
 004DE63B    mov         eax,dword ptr [ebp-4]
 004DE63E    call        004DDD14
 004DE643    pop         ecx
 004DE644    pop         ebp
 004DE645    ret
*}
end;

//004DE648
procedure TCustomGrid.sub_004DE648;
begin
{*
 004DE648    push        ebp
 004DE649    mov         ebp,esp
 004DE64B    push        ecx
 004DE64C    mov         dword ptr [ebp-4],eax
 004DE64F    mov         eax,dword ptr [ebp-4]
 004DE652    call        TCustomGrid.UpdateScrollRange
 004DE657    mov         eax,dword ptr [ebp-4]
 004DE65A    call        004DDD14
 004DE65F    pop         ecx
 004DE660    pop         ebp
 004DE661    ret
*}
end;

//004DE664
{*procedure sub_004DE664(?:?);
begin
 004DE664    push        ebp
 004DE665    mov         ebp,esp
 004DE667    add         esp,0FFFFFFF8
 004DE66A    mov         dword ptr [ebp-8],edx
 004DE66D    mov         dword ptr [ebp-4],eax
 004DE670    mov         eax,dword ptr [ebp-4]
 004DE673    mov         ecx,dword ptr [eax+21C];TCustomGrid.FColCount:Longint
 004DE679    dec         ecx
 004DE67A    mov         edx,dword ptr [ebp-8]
 004DE67D    mov         eax,dword ptr [ebp-4]
 004DE680    call        004D8A88
 004DE685    mov         eax,dword ptr [ebp-4]
 004DE688    mov         edx,dword ptr [eax+21C];TCustomGrid.FColCount:Longint
 004DE68E    dec         edx
 004DE68F    mov         eax,dword ptr [ebp-4]
 004DE692    call        004DD5D0
 004DE697    pop         ecx
 004DE698    pop         ecx
 004DE699    pop         ebp
 004DE69A    ret
end;*}

//004DE69C
{*procedure sub_004DE69C(?:?);
begin
 004DE69C    push        ebp
 004DE69D    mov         ebp,esp
 004DE69F    add         esp,0FFFFFFF8
 004DE6A2    mov         dword ptr [ebp-8],edx
 004DE6A5    mov         dword ptr [ebp-4],eax
 004DE6A8    mov         eax,dword ptr [ebp-4]
 004DE6AB    mov         ecx,dword ptr [eax+24C];TCustomGrid.FRowCount:Longint
 004DE6B1    dec         ecx
 004DE6B2    mov         edx,dword ptr [ebp-8]
 004DE6B5    mov         eax,dword ptr [ebp-4]
 004DE6B8    call        004D8BAC
 004DE6BD    mov         eax,dword ptr [ebp-4]
 004DE6C0    mov         edx,dword ptr [eax+24C];TCustomGrid.FRowCount:Longint
 004DE6C6    dec         edx
 004DE6C7    mov         eax,dword ptr [ebp-4]
 004DE6CA    call        004DDA70
 004DE6CF    pop         ecx
 004DE6D0    pop         ecx
 004DE6D1    pop         ebp
 004DE6D2    ret
end;*}

//004DE6D4
procedure sub_004DE6D4(?:TCustomGrid);
begin
{*
 004DE6D4    push        ebp
 004DE6D5    mov         ebp,esp
 004DE6D7    add         esp,0FFFFFFF8
 004DE6DA    mov         dword ptr [ebp-4],eax
 004DE6DD    mov         eax,dword ptr [ebp-4]
 004DE6E0    test        byte ptr [eax+1C],10;TCustomGrid.FComponentState:TComponentState
>004DE6E4    je          004DE726
 004DE6E6    mov         eax,dword ptr [ebp-4]
 004DE6E9    call        TWinControl.HandleAllocated
 004DE6EE    test        al,al
>004DE6F0    je          004DE726
 004DE6F2    mov         eax,dword ptr [ebp-4]
 004DE6F5    test        byte ptr [eax+1C],40;TCustomGrid.FComponentState:TComponentState
>004DE6F9    jne         004DE726
 004DE6FB    mov         eax,dword ptr [ebp-4]
 004DE6FE    call        004A0740
 004DE703    mov         dword ptr [ebp-8],eax
 004DE706    cmp         dword ptr [ebp-8],0
>004DE70A    je          004DE726
 004DE70C    mov         eax,dword ptr [ebp-8]
 004DE70F    cmp         dword ptr [eax+250],0
>004DE716    je          004DE726
 004DE718    mov         eax,dword ptr [ebp-8]
 004DE71B    mov         eax,dword ptr [eax+250]
 004DE721    mov         edx,dword ptr [eax]
 004DE723    call        dword ptr [edx+0C]
 004DE726    pop         ecx
 004DE727    pop         ecx
 004DE728    pop         ebp
 004DE729    ret
*}
end;

//004DE72C
{*procedure TCustomGrid.sub_004846B4(?:?; ?:?);
begin
 004DE72C    push        ebp
 004DE72D    mov         ebp,esp
 004DE72F    add         esp,0FFFFFFF0
 004DE732    push        esi
 004DE733    push        edi
 004DE734    mov         esi,ecx
 004DE736    lea         edi,[ebp-0D]
 004DE739    movs        dword ptr [edi],dword ptr [esi]
 004DE73A    movs        dword ptr [edi],dword ptr [esi]
 004DE73B    mov         byte ptr [ebp-5],dl
 004DE73E    mov         dword ptr [ebp-4],eax
 004DE741    lea         ecx,[ebp-0D]
 004DE744    mov         dl,byte ptr [ebp-5]
 004DE747    mov         eax,dword ptr [ebp-4]
 004DE74A    call        TControl.sub_004846B4
 004DE74F    mov         byte ptr [ebp-0E],al
 004DE752    cmp         byte ptr [ebp-0E],0
>004DE756    jne         004DE783
 004DE758    mov         eax,dword ptr [ebp-4]
 004DE75B    mov         eax,dword ptr [eax+24C];TCustomGrid.FRowCount:Longint
 004DE761    dec         eax
 004DE762    mov         edx,dword ptr [ebp-4]
 004DE765    cmp         eax,dword ptr [edx+22C];TCustomGrid.FCurrent:Longint
>004DE76B    jle         004DE77F
 004DE76D    mov         eax,dword ptr [ebp-4]
 004DE770    mov         edx,dword ptr [eax+22C];TCustomGrid.FCurrent:Longint
 004DE776    inc         edx
 004DE777    mov         eax,dword ptr [ebp-4]
 004DE77A    call        004DDA3C
 004DE77F    mov         byte ptr [ebp-0E],1
 004DE783    mov         al,byte ptr [ebp-0E]
 004DE786    pop         edi
 004DE787    pop         esi
 004DE788    mov         esp,ebp
 004DE78A    pop         ebp
 004DE78B    ret
end;*}

//004DE78C
{*procedure TCustomGrid.sub_00484704(?:?; ?:?);
begin
 004DE78C    push        ebp
 004DE78D    mov         ebp,esp
 004DE78F    add         esp,0FFFFFFF0
 004DE792    push        esi
 004DE793    push        edi
 004DE794    mov         esi,ecx
 004DE796    lea         edi,[ebp-0D]
 004DE799    movs        dword ptr [edi],dword ptr [esi]
 004DE79A    movs        dword ptr [edi],dword ptr [esi]
 004DE79B    mov         byte ptr [ebp-5],dl
 004DE79E    mov         dword ptr [ebp-4],eax
 004DE7A1    lea         ecx,[ebp-0D]
 004DE7A4    mov         dl,byte ptr [ebp-5]
 004DE7A7    mov         eax,dword ptr [ebp-4]
 004DE7AA    call        TControl.sub_00484704
 004DE7AF    mov         byte ptr [ebp-0E],al
 004DE7B2    cmp         byte ptr [ebp-0E],0
>004DE7B6    jne         004DE7E2
 004DE7B8    mov         eax,dword ptr [ebp-4]
 004DE7BB    mov         eax,dword ptr [eax+22C];TCustomGrid.FCurrent:Longint
 004DE7C1    mov         edx,dword ptr [ebp-4]
 004DE7C4    cmp         eax,dword ptr [edx+23C];TCustomGrid.FFixedRows:Integer
>004DE7CA    jle         004DE7DE
 004DE7CC    mov         eax,dword ptr [ebp-4]
 004DE7CF    mov         edx,dword ptr [eax+22C];TCustomGrid.FCurrent:Longint
 004DE7D5    dec         edx
 004DE7D6    mov         eax,dword ptr [ebp-4]
 004DE7D9    call        004DDA3C
 004DE7DE    mov         byte ptr [ebp-0E],1
 004DE7E2    mov         al,byte ptr [ebp-0E]
 004DE7E5    pop         edi
 004DE7E6    pop         esi
 004DE7E7    mov         esp,ebp
 004DE7E9    pop         ebp
 004DE7EA    ret
end;*}

//004DE7EC
{*procedure TCustomGrid.sub_004DE7EC(?:?; ?:?);
begin
 004DE7EC    push        ebp
 004DE7ED    mov         ebp,esp
 004DE7EF    add         esp,0FFFFFFF0
 004DE7F2    mov         dword ptr [ebp-10],ecx
 004DE7F5    mov         dword ptr [ebp-0C],edx
 004DE7F8    mov         dword ptr [ebp-4],eax
 004DE7FB    mov         byte ptr [ebp-5],1
 004DE7FF    mov         al,byte ptr [ebp-5]
 004DE802    mov         esp,ebp
 004DE804    pop         ebp
 004DE805    ret         4
end;*}

//004DE808
{*procedure TCustomGrid.sub_004DE808(?:?; ?:?);
begin
 004DE808    push        ebp
 004DE809    mov         ebp,esp
 004DE80B    add         esp,0FFFFFFF0
 004DE80E    mov         dword ptr [ebp-10],ecx
 004DE811    mov         dword ptr [ebp-0C],edx
 004DE814    mov         dword ptr [ebp-4],eax
 004DE817    mov         byte ptr [ebp-5],1
 004DE81B    mov         al,byte ptr [ebp-5]
 004DE81E    mov         esp,ebp
 004DE820    pop         ebp
 004DE821    ret         4
end;*}

//004DE824
{*procedure TCustomGrid.sub_004DE824(?:?; ?:?);
begin
 004DE824    push        ebp
 004DE825    mov         ebp,esp
 004DE827    add         esp,0FFFFFFF0
 004DE82A    mov         dword ptr [ebp-10],ecx
 004DE82D    mov         dword ptr [ebp-0C],edx
 004DE830    mov         dword ptr [ebp-4],eax
 004DE833    mov         byte ptr [ebp-5],1
 004DE837    mov         al,byte ptr [ebp-5]
 004DE83A    mov         esp,ebp
 004DE83C    pop         ebp
 004DE83D    ret         4
end;*}

//004DE840
{*procedure TCustomGrid.sub_004DE840(?:?; ?:?);
begin
 004DE840    push        ebp
 004DE841    mov         ebp,esp
 004DE843    add         esp,0FFFFFFF0
 004DE846    mov         dword ptr [ebp-10],ecx
 004DE849    mov         dword ptr [ebp-0C],edx
 004DE84C    mov         dword ptr [ebp-4],eax
 004DE84F    mov         byte ptr [ebp-5],1
 004DE853    mov         al,byte ptr [ebp-5]
 004DE856    mov         esp,ebp
 004DE858    pop         ebp
 004DE859    ret         4
end;*}

//004DE85C
{*procedure TCustomGrid.sub_004DE85C(?:?; ?:?);
begin
 004DE85C    push        ebp
 004DE85D    mov         ebp,esp
 004DE85F    add         esp,0FFFFFFF0
 004DE862    mov         dword ptr [ebp-10],ecx
 004DE865    mov         dword ptr [ebp-0C],edx
 004DE868    mov         dword ptr [ebp-4],eax
 004DE86B    mov         byte ptr [ebp-5],1
 004DE86F    mov         al,byte ptr [ebp-5]
 004DE872    mov         esp,ebp
 004DE874    pop         ebp
 004DE875    ret         4
end;*}

//004DE878
{*procedure TCustomGrid.sub_004DE878(?:?; ?:?);
begin
 004DE878    push        ebp
 004DE879    mov         ebp,esp
 004DE87B    add         esp,0FFFFFFF0
 004DE87E    mov         dword ptr [ebp-10],ecx
 004DE881    mov         dword ptr [ebp-0C],edx
 004DE884    mov         dword ptr [ebp-4],eax
 004DE887    mov         byte ptr [ebp-5],1
 004DE88B    mov         al,byte ptr [ebp-5]
 004DE88E    mov         esp,ebp
 004DE890    pop         ebp
 004DE891    ret         4
end;*}

//004DE894
{*procedure TCustomGrid.CMShowingChanged(?:?);
begin
 004DE894    push        ebp
 004DE895    mov         ebp,esp
 004DE897    add         esp,0FFFFFFF8
 004DE89A    mov         dword ptr [ebp-8],edx
 004DE89D    mov         dword ptr [ebp-4],eax
 004DE8A0    mov         edx,dword ptr [ebp-8]
 004DE8A3    mov         eax,dword ptr [ebp-4]
 004DE8A6    call        TWinControl.CMShowingChanged
 004DE8AB    mov         eax,dword ptr [ebp-4]
 004DE8AE    cmp         byte ptr [eax+1A6],0;TCustomGrid.FShowing:Boolean
>004DE8B5    je          004DE8BF
 004DE8B7    mov         eax,dword ptr [ebp-4]
 004DE8BA    call        TCustomGrid.UpdateScrollRange
 004DE8BF    pop         ecx
 004DE8C0    pop         ecx
 004DE8C1    pop         ebp
 004DE8C2    ret
end;*}

end.