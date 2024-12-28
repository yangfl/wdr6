//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit MPHexEditor;

interface

uses
  SysUtils, Classes, Controls, Graphics, MPHexEditor;

type
  EMPHexEditor = class(Exception)
  end;
  TMPHCaretKind = (ckFull, ckLeft, ckBottom, ckAuto);
  TMPHTranslationKind = (tkAsIs, tkDos8, tkASCII, tkMac, tkBCD, tkCustom);
  TMPHProgressKind = (pkLoad, pkSave, pkFind);
  TMPHProgressEvent = procedure(Sender:TObject; const ProgressType:TMPHProgressKind; const aName:TFileName; const Percent:Byte; var Cancel:Boolean) of object;;
  TMPHGetOffsetTextEvent = procedure(Sender:TObject; const Number:Int64; var OffsetText:String) of object;;
  TMPHColors = class(TPersistent)
  public
    f4:dword;//f4
    Offset:TColor;//f8
    OddColumn:TColor;//fC
    EvenColumn:TColor;//f10
    CursorFrame:TColor;//f14
    NonFocusCursorFrame:TColor;//f18
    Background:TColor;//f1C
    ChangedText:TColor;//f20
    ChangedBackground:TColor;//f24
    CurrentOffsetBackground:TColor;//f28
    OffsetBackground:TColor;//f2C
    ActiveFieldBackground:TColor;//f30
    CurrentOffset:TColor;//f34
    Grid:TColor;//f38
    //procedure v8(?:?); virtual;//v8//004E9C34
    constructor Create;//004E9D24
    procedure SetBackground(Value:TColor);//004E9DF4
    procedure SetChangedBackground(Value:TColor);//004E9E3C
    procedure SetCurrentOffsetBackground(Value:TColor);//004E9E74
    procedure SetNonFocusCursorFrame(Value:TColor);//004E9EAC
    procedure SetChangedText(Value:TColor);//004E9EE4
    procedure SetCursorFrame(Value:TColor);//004E9F1C
    procedure SetEvenColumn(Value:TColor);//004E9F54
    procedure SetOddColumn(Value:TColor);//004E9F8C
    procedure SetOffset(Value:TColor);//004E9FC4
    procedure SetOffsetBackground(Value:TColor);//004E9FFC
    procedure SetCurrentOffset(Value:TColor);//004EA034
    procedure SetGrid(Value:TColor);//004EA06C
    procedure SetActiveFieldBackground(Value:TColor);//004EA0A4
  end;
  TMPHMemoryStream = class(TMemoryStream)
  end;
  TMPHOffsetFormat = TMPHOffsetFormat = record//size=14
f0:String;//f0
f4:String;//f4
f8:String;//f8
end;;
  TMPHDrawCellEvent = procedure(Sender:TObject; ACanvas:TCanvas; ACol:Integer; ARow:Integer; var AWideText:WideString; ARect:TRect; var ADefaultDraw:Boolean) of object;;
  _DynArr_80_5 = array of ?;
//elSize = 4
//varType equivalent: varInteger;
  TCustomMPHexEditor = class(TCustomGrid)
  public
    f298:byte;//f298
    f29C:dword;//f29C
    f4A0:byte;//f4A0
    f4A1:byte;//f4A1
    f4A4:Integer;//f4A4
    f4A8:byte;//f4A8
    //f4B0:?;//f4B0
    f4B2:word;//f4B2
    f4B4:dword;//f4B4
    f4B8:byte;//f4B8
    f4BC:Integer;//f4BC
    f4C0:dword;//f4C0
    f4C4:TImageList;//f4C4
    f4C8:byte;//f4C8
    f4CC:TBitmap;//f4CC
    f4D0:TMPHColors;//f4D0
    f4D4:Integer;//f4D4
    f4D8:dword;//f4D8
    f4DC:dword;//f4DC
    f4E0:TMPHMemoryStream;//f4E0
    f4E4:dword;//f4E4
    f4E8:byte;//f4E8
    f4E9:byte;//f4E9
    f4EC:dword;//f4EC
    f4F0:byte;//f4F0
    f4F1:byte;//f4F1
    f4F4:String;//f4F4
    f4F8:TBits;//f4F8
    f54C:dword;//f54C
    f550:dword;//f550
    f554:dword;//f554
    f558:dword;//f558
    f55C:byte;//f55C
    f55D:byte;//f55D
    f55E:byte;//f55E
    f55F:byte;//f55F
    f560:byte;//f560
    f561:byte;//f561
    f562:byte;//f562
    f563:byte;//f563
    f568:dword;//f568
    f56C:dword;//f56C
    f570:dword;//f570
    f574:dword;//f574
    f578:byte;//f578
    //f588:?;//f588
    f58A:word;//f58A
    f58C:dword;//f58C
    //f590:?;//f590
    f592:word;//f592
    f594:dword;//f594
    f598:byte;//f598
    f599:byte;//f599
    f59A:byte;//f59A
    f59B:byte;//f59B
    f59C:Integer;//f59C
    f5A0:TMPHOffsetFormat;//f5A0
    f5BC:.5;//f5BC
    f5C0:byte;//f5C0
    f5C4:String;//f5C4
    f5C8:byte;//f5C8
    f5CC:dword;//f5CC
    //f5D0:?;//f5D0
    f5E0:byte;//f5E0
    //f5E8:?;//f5E8
    f5EA:word;//f5EA
    f5EC:dword;//f5EC
    f5F0:byte;//f5F0
    f5F4:Integer;//f5F4
    f5F8:Integer;//f5F8
    //f600:?;//f600
    f602:word;//f602
    f604:dword;//f604
    f608:dword;//f608
    f60C:byte;//f60C
    f60D:byte;//f60D
    f610:Integer;//f610
    f614:byte;//f614
    f615:byte;//f615
    f618:TMPHUndoStorage;//f618
    f61C:byte;//f61C
    f61D:byte;//f61D
    f620:dword;//f620
    //f650:?;//f650
    f652:word;//f652
    f654:dword;//f654
    f660:dword;//f660
    f664:dword;//f664
    f668:dword;//f668
    f66C:dword;//f66C
    f670:byte;//f670
    f671:byte;//f671
    f674:String;//f674
    f678:String;//f678
    f67C:byte;//f67C
    f67D:byte;//f67D
    destructor Destroy; virtual;//004E0190
    procedure DefineProperties(Filer:TFiler); virtual;//v4//004E9860
    procedure vC; virtual;//vC//004E40E4
    constructor v2C; virtual;//v2C//004DFBB8
    procedure CreateWnd; virtual;//vA0//004E4144
    procedure vC8; virtual;//vC8//004E7DA8
    //function vDC(?:?; ?:?):?; virtual;//vDC//004E0FA8
    procedure vE8; virtual;//vE8//004E8D28
    procedure vEC; virtual;//vEC//004E87E8
    procedure vF0; virtual;//vF0//004E8768
    //function vF4(?:?; ?:?; ?:?):?; virtual;//vF4//004E9560
    procedure vF8; virtual;//vF8//004E8FDC
    //function vFC:?; virtual;//vFC//004E8334
    //function v100:?; virtual;//v100//004E8358
    //procedure v104(?:?; ?:?); virtual;//v104//004E659C
    //procedure v108(?:?; ?:?); virtual;//v108//004E6720
    //procedure v10C(?:?; ?:?; ?:?); virtual;//v10C//004E8FA0
    //procedure WMSetFocus(?:?); message WM_SETFOCUS;//004E41CC
    //procedure WMKillFocus(?:?); message WM_KILLFOCUS;//004E4200
    //procedure WMGetDlgCode(?:?); message WM_GETDLGCODE;//004E5540
    //procedure WMChar(?:?); message WM_CHAR;//004E1714
    //procedure WMTimer(?:?); message WM_TIMER;//004E5B88
    //procedure WMHScroll(?:?); message WM_HSCROLL;//004E4B58
    //procedure WMVScroll(?:?); message WM_VSCROLL;//004E4B34
    //procedure sub_004E16F8(?:?); dynamic;//004E16F8
    //procedure CMFontChanged(?:?); message CM_FONTCHANGED;//004E5590
    //procedure sub_004E4240(?:?); dynamic;//004E4240
    //procedure sub_004E8D68(?:?); dynamic;//004E8D68
    procedure sub_004D8D8C; dynamic;//004E6568
    procedure sub_0048BFC8; dynamic;//004E9B7C
    //procedure sub_0048A878(?:?; ?:?); dynamic;//004E1E60
    procedure sub_0048271C; dynamic;//004E64FC
    //procedure sub_004859D0(?:?; ?:?; ?:?; ?:?); dynamic;//004E5DA8
    //procedure sub_004858F4(?:?; ?:?; ?:?); dynamic;//004E5ABC
    //procedure sub_00485588(?:?; ?:?; ?:?; ?:?); dynamic;//004E322C
    //procedure sub_00484704(?:?; ?:?); dynamic;//004E9AA4
    //procedure sub_004846B4(?:?; ?:?); dynamic;//004E9A14
  end;
  TMPHUndoStorage = class(TMemoryStream)
  public
    f14:dword;//f14
    f18:dword;//f18
    f1C:dword;//f1C
    f20:String;//f20
    f24:dword;//f24
    f28:dword;//f28
    f2C:dword;//f2C
    f30:String;//f30
    destructor Destroy; virtual;//004EA14C
    //procedure v4(?:?); virtual;//v4//004EB4C4
    constructor Create;//004EA0DC
  end;
    //function sub_004DF39C(?:?):?;//004DF39C
    //function sub_004DF3BC(?:?):?;//004DF3BC
    //function sub_004DF3E8(?:?):?;//004DF3E8
    //procedure sub_004DF414(?:?);//004DF414
    //function sub_004DF500(?:?; ?:?):?;//004DF500
    //function sub_004DF598(?:?):?;//004DF598
    //function sub_004DF5BC(?:dword; ?:dword):?;//004DF5BC
    //function sub_004DF5E8(?:dword; ?:dword):?;//004DF5E8
    //function sub_004DF614(?:?; ?:?; ?:Integer; ?:?; ?:?):?;//004DF614
    //function sub_004DF7B0(?:?; ?:Pointer; ?:?; ?:?):?;//004DF7B0
    //procedure sub_004DF8B4(?:Integer; ?:?; ?:AnsiString);//004DF8B4
    //procedure sub_004DF8D8(?:?; ?:?; ?:?; ?:?);//004DF8D8
    //function sub_004DF9C0(?:?; ?:?):?;//004DF9C0
    procedure sub_004DFB2C(?:Byte);//004DFB2C
    //function sub_004DFB44(?:?):?;//004DFB44
    constructor sub_004DFBB8;//004DFBB8
    destructor Destroy;//004E0190
    procedure sub_004E025C(?:TCustomMPHexEditor);//004E025C
    //function sub_004E0588(?:TCustomMPHexEditor):?;//004E0588
    //procedure sub_004E05A8(?:TCustomMPHexEditor; ?:?);//004E05A8
    //procedure sub_004E0658(?:?; ?:TFileStream);//004E0658
    //procedure sub_004E06D0(?:TMPHexEditorEx; ?:String; ?:?);//004E06D0
    //procedure sub_004E07CC(?:?; ?:TFileStream);//004E07CC
    //procedure sub_004E095C(?:TMPHexEditorEx; ?:?);//004E095C
    procedure sub_004E0AC0(?:TMPHexEditorEx);//004E0AC0
    //function sub_004E0BC0(?:TCustomMPHexEditor; ?:?):?;//004E0BC0
    //function sub_004E0C84(?:?; ?:?):?;//004E0C84
    //function sub_004E0D64(?:?):?;//004E0D64
    //procedure sub_004E0DEC(?:?; ?:?);//004E0DEC
    //function sub_004E0FA8(?:?; ?:?):?;//004E0FA8
    //function sub_004E1288(?:TCustomMPHexEditor; ?:TGridCoord; ?:Longint):?;//004E1288
    //function sub_004E131C(?:?; ?:?):?;//004E131C
    //procedure sub_004E1344(?:TCustomMPHexEditor; ?:TGridCoord; ?:byte; ?:?);//004E1344
    //function sub_004E13EC(?:TCustomMPHexEditor; ?:TGridCoord):?;//004E13EC
    //function sub_004E14A4(?:TCustomMPHexEditor; ?:?):?;//004E14A4
    //function sub_004E1548(?:TCustomMPHexEditor; ?:?; ?:?):?;//004E1548
    //procedure sub_004E16F8(?:?);//004E16F8
    //procedure WMChar(?:?);//004E1714
    //procedure sub_004E1D4C(?:TCustomMPHexEditor; ?:?; ?:Byte; ?:?; ?:?);//004E1D4C
    //procedure sub_004E1DC0(?:TCustomMPHexEditor; ?:?; ?:Byte; ?:?; ?:?);//004E1DC0
    //procedure sub_0048A878(?:?; ?:?);//004E1E60
    //function sub_004E2940(?:dword; ?:?):?;//004E2940
    //function sub_004E2988(?:TCustomMPHexEditor; ?:?):?;//004E2988
    //procedure sub_004E29CC(?:TCustomMPHexEditor; ?:dword; ?:?);//004E29CC
    //procedure GetOffsetFormat(?:?);//004E2A24
    procedure SetOffsetFormat(Value:String);//004E2A48
    procedure SetHexLowerCase(Value:Boolean);//004E2AC4
    procedure sub_004E2B78(?:TCustomMPHexEditor; ?:AnsiString);//004E2B78
    //procedure sub_004E315C(?:?; ?:?; ?:?; ?:?; ?:?);//004E315C
    //procedure sub_004E31CC(?:TCustomMPHexEditor; ?:?; ?:Longint);//004E31CC
    //procedure sub_00485588(?:?; ?:?; ?:?; ?:?);//004E322C
    //procedure sub_004E33E0(?:TCustomMPHexEditor; ?:?; ?:?; ?:?; ?:?);//004E33E0
    //function sub_004E34BC(?:?; ?:?; ?:?):?;//004E34BC
    //function sub_004E3650(?:?; ?:?; ?:?):?;//004E3650
    //function sub_004E37DC(?:TMPHexEditorEx; ?:?; ?:?; ?:?):?;//004E37DC
    //function sub_004E38A8(?:?; ?:?; ?:?):?;//004E38A8
    //function sub_004E3A44(?:TMPHexEditorEx; ?:?; ?:?; ?:?):?;//004E3A44
    //procedure sub_004E3AE0(?:TCustomMPHexEditor; ?:Integer; ?:Integer; ?:?; ?:?);//004E3AE0
    //procedure sub_004E3C40(?:TCustomMPHexEditor; ?:?);//004E3C40
    //procedure sub_004E3CA4(?:TCustomMPHexEditor; ?:?; ?:dword; ?:?; ?:?; ?:?);//004E3CA4
    procedure sub_004E3D60(?:TCustomMPHexEditor);//004E3D60
    //function sub_004E3D7C(?:TMPHexEditorEx):?;//004E3D7C
    //function sub_004E3DB4(?:TMPHexEditorEx):?;//004E3DB4
    //function sub_004E3DEC(?:TCustomMPHexEditor):?;//004E3DEC
    //function sub_004E3E34(?:TCustomMPHexEditor):?;//004E3E34
    //procedure sub_004E3E9C(?:TCustomMPHexEditor; ?:?);//004E3E9C
    //procedure sub_004E3F48(?:TCustomMPHexEditor; ?:?);//004E3F48
    //procedure sub_004E4014(?:TMPHexEditorEx; ?:?);//004E4014
    //procedure sub_004E404C(?:?; ?:?);//004E404C
    //function sub_004E409C(?:TCustomMPHexEditor):?;//004E409C
    procedure sub_004E40E4;//004E40E4
    procedure CreateWnd;//004E4144
    //procedure WMSetFocus(?:?);//004E41CC
    //procedure WMKillFocus(?:?);//004E4200
    //procedure sub_004E4240(?:?);//004E4240
    procedure SetTranslation(Value:TMPHTranslationKind);//004E4264
    //procedure sub_004E42FC(?:TMPHexEditorEx; ?:?);//004E42FC
    procedure SetBytesPerRow(Value:Integer);//004E4340
    procedure sub_004E4540(?:TCustomMPHexEditor; ?:Byte; ?:dword);//004E4540
    //procedure sub_004E45C4(?:TCustomMPHexEditor; ?:Byte; ?:dword; ?:?);//004E45C4
    //procedure sub_004E4678(?:TCustomMPHexEditor; ?:Byte; ?:dword; ?:?; ?:?; ?:?);//004E4678
    //procedure sub_004E475C(?:TCustomMPHexEditor; ?:Byte; ?:dword; ?:?; ?:?);//004E475C
    //procedure sub_004E4844(?:TCustomMPHexEditor; ?:Byte; ?:dword; ?:?; ?:?);//004E4844
    //procedure sub_004E49E8(?:?; ?:?; ?:?);//004E49E8
    //procedure sub_004E4A44(?:?; ?:?; ?:?; ?:?);//004E4A44
    //function sub_004E4A74(?:TCustomMPHexEditor):?;//004E4A74
    //function sub_004E4AD8(?:TCustomMPHexEditor):?;//004E4AD8
    //procedure WMVScroll(?:?);//004E4B34
    //procedure WMHScroll(?:?);//004E4B58
    procedure sub_004E4B7C(?:TCustomMPHexEditor);//004E4B7C
    procedure SetBytesPerColumn(Value:Integer);//004E4E1C
    //function GetBytesPerColumn:?;//004E4F00
    procedure sub_004E4F24(?:TMPHexEditorEx);//004E4F24
    //function sub_004E50E0(?:TCustomMPHexEditor; ?:?; ?:?):?;//004E50E0
    procedure SetSwapNibbles(Value:Boolean);//004E517C
    //function GetSwapNibbles:?;//004E51B4
    procedure SetColors(Value:TMPHColors);//004E51D0
    procedure SetCaretKind(Value:TMPHCaretKind);//004E51F4
    procedure SetFocusFrame(Value:Boolean);//004E5254
    procedure SetMaskChar(Value:Char);//004E5288
    //function GetInsertMode:?;//004E52BC
    procedure SetAllowInsertMode(Value:Boolean);//004E52F0
    procedure SetNoSizeChange(Value:Boolean);//004E5328
    //procedure sub_004E5364(?:TCustomMPHexEditor; ?:?; ?:?);//004E5364
    //procedure WMGetDlgCode(?:?);//004E5540
    //procedure CMFontChanged(?:?);//004E5590
    procedure SetWantTabs(Value:Boolean);//004E55DC
    procedure SetReadOnlyView(Value:Boolean);//004E55F8
    procedure SetHideSelection(Value:Boolean);//004E563C
    procedure SetGraySelectionIfNotFocused(Value:Boolean);//004E568C
    //function sub_004E56E8(?:TCustomMPHexEditor):?;//004E56E8
    //function sub_004E5740(?:TCustomMPHexEditor):?;//004E5740
    //function sub_004E5760(?:?; ?:?; ?:?):?;//004E5760
    procedure sub_004E5954(?:TCustomMPHexEditor);//004E5954
    //procedure sub_004E5970(?:TMPHexEditorEx; ?:?; ?:?);//004E5970
    //function sub_004E599C(?:TCustomMPHexEditor):?;//004E599C
    //function sub_004E59E0(?:TCustomMPHexEditor; ?:TPoint; ?:?):?;//004E59E0
    //function sub_004E5A7C(?:TCustomMPHexEditor; ?:?; ?:?):?;//004E5A7C
    //procedure sub_004858F4(?:?; ?:?; ?:?);//004E5ABC
    //procedure WMTimer(?:?);//004E5B88
    //procedure sub_004E5BF0(?:TCustomMPHexEditor; ?:TPoint; ?:?; ?:?);//004E5BF0
    //procedure sub_004859D0(?:?; ?:?; ?:?; ?:?);//004E5DA8
    //procedure sub_004E5E40(?:dword; ?:?; ?:?);//004E5E40
    //procedure sub_004E5EBC(?:TCustomMPHexEditor; ?:?; ?:?; ?:?);//004E5EBC
    procedure sub_004E5F40(?:TCustomMPHexEditor; ?:TGridCoord);//004E5F40
    procedure SetInsertMode(Value:Boolean);//004E5F88
    //function sub_004E60CC(?:TMPHexEditorEx):?;//004E60CC
    //procedure sub_004E6110(?:TCustomMPHexEditor; ?:dword; ?:dword; ?:?);//004E6110
    //function sub_004E6198(?:?; ?:?):?;//004E6198
    procedure sub_004E63E4(?:TCustomMPHexEditor);//004E63E4
    procedure SetAutoBytesPerRow(Value:Boolean);//004E64C4
    procedure sub_0048271C;//004E64FC
    procedure sub_004E653C(?:TCustomMPHexEditor);//004E653C
    procedure sub_004D8D8C;//004E6568
    //procedure sub_004E659C(?:?; ?:?);//004E659C
    //procedure sub_004E6720(?:?; ?:?);//004E6720
    //function sub_004E6764(?:TCustomMPHexEditor):?;//004E6764
    //procedure sub_004E6780(?:TCustomMPHexEditor; ?:?; ?:Longint; ?:?);//004E6780
    //function sub_004E687C(?:?):?;//004E687C
    //procedure sub_004E68C8(?:?);//004E68C8
    //procedure sub_004E6AB8(?:?);//004E6AB8
    //procedure sub_004E6C50(?:?);//004E6C50
    //procedure sub_004E6D94(?:?; ?:?; ?:?);//004E6D94
    //procedure sub_004E7A60(?:TGridCoord; ?:Longint; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);//004E7A60
    procedure sub_004E7DA8;//004E7DA8
    procedure SetDrawGridLines(Value:Boolean);//004E8300
    //function sub_004E8334:?;//004E8334
    //function sub_004E8358:?;//004E8358
    //function sub_004E837C(?:TMPHexEditorEx):?;//004E837C
    //function sub_004E83A0(?:TMPHexEditorEx):?;//004E83A0
    procedure SetGutterWidth(Value:Integer);//004E83C4
    //procedure sub_004E8400(?:?; ?:?);//004E8400
    procedure SetBookmarkBitmap(Value:TBitmap);//004E8464
    procedure sub_004E853C(?:TMPHexEditorEx);//004E853C
    //procedure GetVersion(?:?);//004E85CC
    procedure SetVersion(Value:String);//004E8630
    //procedure sub_004E8640(?:?; ?:?);//004E8640
    //procedure sub_004E867C(?:?);//004E867C
    //procedure sub_004E86E8(?:?);//004E86E8
    function IsStoredBookmarkBitmap(Value:TBitmap):Boolean;//004E874C
    procedure sub_004E8768;//004E8768
    procedure sub_004E87E8;//004E87E8
    procedure SetDrawGutter3D(Value:Boolean);//004E8820
    procedure SetShowRuler(Value:Boolean);//004E8858
    procedure SetBytesPerUnit(Value:Integer);//004E8894
    procedure sub_004E89EC(?:TCustomMPHexEditor);//004E89EC
    //procedure sub_004E8C50(?:TCustomMPHexEditor; ?:dword; ?:?);//004E8C50
    procedure sub_004E8CF8(?:TCustomMPHexEditor; ?:TGridCoord);//004E8CF8
    procedure sub_004E8D28;//004E8D28
    //procedure sub_004E8D68(?:?);//004E8D68
    procedure SetRulerBytesPerUnit(Value:Integer);//004E8DD4
    procedure SetShowPositionIfNotFocused(Value:Boolean);//004E8EE0
    //function sub_004E8F14(?:TCustomMPHexEditor; ?:?):?;//004E8F14
    //procedure sub_004E8F3C(?:TCustomMPHexEditor; ?:?; ?:?);//004E8F3C
    //procedure sub_004E8F70(?:TCustomMPHexEditor; ?:?; ?:?; ?:?);//004E8F70
    //procedure sub_004E8FA0(?:?; ?:?; ?:?);//004E8FA0
    procedure sub_004E8FDC;//004E8FDC
    //procedure sub_004E9008(?:TMPHexEditorEx; ?:?; ?:dword);//004E9008
    procedure SetUnicodeChars(Value:Boolean);//004E9034
    procedure SetUnicodeBigEndian(Value:Boolean);//004E91A4
    //function sub_004E91E4(?:TCustomMPHexEditor):?;//004E91E4
    //function sub_004E9214(?:TMPHexEditorEx):?;//004E9214
    //function sub_004E9254(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?):?;//004E9254
    //function sub_004E940C(?:TCustomMPHexEditor; ?:?):?;//004E940C
    //function sub_004E94BC(?:TCustomMPHexEditor; ?:?; ?:?):?;//004E94BC
    //procedure sub_004E94EC(?:?);//004E94EC
    //function sub_004E9560(?:?; ?:?; ?:?):?;//004E9560
    //procedure sub_004E95F4(?:TMPHexEditorEx; ?:?);//004E95F4
    procedure SetBytesPerBlock(Value:Integer);//004E97CC
    procedure SetSeparateBlocksInCharField(Value:Boolean);//004E9800
    procedure SetFindProgress(Value:Boolean);//004E9844
    procedure DefineProperties(Filer:TFiler);//004E9860
    //procedure sub_004846B4(?:?; ?:?);//004E9A14
    //procedure sub_00484704(?:?; ?:?);//004E9AA4
    procedure sub_004E9B18(?:TCustomMPHexEditor);//004E9B18
    procedure sub_0048BFC8;//004E9B7C
    procedure SetRulerNumberBase(Value:Byte);//004E9BD8
    //procedure sub_004E9C34(?:?);//004E9C34
    destructor Destroy;//004EA14C
    //function sub_004EA188(?:TMPHUndoStorage):?;//004EA188
    //function sub_004EA1A8(?:TMPHUndoStorage):?;//004EA1A8
    //function sub_004EA1E8(?:?):?;//004EA1E8
    //procedure sub_004EA208(?:ShortString; ?:?);//004EA208
    //procedure sub_004EA438(?:?);//004EA438
    //procedure sub_004EA524(?:ShortString; ?:?);//004EA524
    //procedure sub_004EA680(?:TMPHUndoStorage; ?:?; ?:?; ?:?; ?:?; ?:?);//004EA680
    //function sub_004EAAE8(?:TMPHUndoStorage):?;//004EAAE8
    //procedure sub_004EAB18(?:?; ?:?);//004EAB18
    //function sub_004EACCC(?:?):?;//004EACCC
    procedure sub_004EB320(?:TMPHUndoStorage);//004EB320
    //procedure sub_004EB4C4(?:?);//004EB4C4
    //procedure sub_004EB4F0(?:TMPHUndoStorage; ?:?);//004EB4F0
    //function sub_004EB538(?:?):?;//004EB538
    //procedure sub_004EB554(?:?; ?:?);//004EB554
    //function sub_004EB7D4(?:?):?;//004EB7D4
    procedure sub_004EBABC(?:TMPHUndoStorage);//004EBABC
    //procedure sub_004EBB14(?:?);//004EBB14
    //procedure sub_004EBB88(?:?);//004EBB88
    //procedure sub_004EBD94(?:?; ?:?);//004EBD94
    //function sub_004EBFE4(?:?; ?:?):?;//004EBFE4
    //procedure sub_004EC014(?:TMPHUndoStorage; ?:?; ?:?);//004EC014
    //function sub_004EC16C(?:?; ?:?; ?:?):?;//004EC16C
    procedure sub_004EC2AC;//004EC2AC
    //function sub_004EC2DC(?:TMPHMemoryStream; ?:?; ?:?):?;//004EC2DC
    //procedure sub_004EC37C(?:?; ?:?; ?:?; ?:?);//004EC37C
    //function sub_004EC3B8(?:?; ?:?; ?:?):?;//004EC3B8
    //procedure sub_004EC3E0(?:?; ?:?; ?:?; ?:?);//004EC3E0

implementation

//004DF39C
{*function sub_004DF39C(?:?):?;
begin
 004DF39C    push        ebp
 004DF39D    mov         ebp,esp
 004DF39F    add         esp,0FFFFFFF8
 004DF3A2    mov         dword ptr [ebp-4],eax
 004DF3A5    mov         eax,dword ptr [ebp-4]
 004DF3A8    call        ColorToRGB
 004DF3AD    xor         eax,0FFFFFF
 004DF3B2    mov         dword ptr [ebp-8],eax
 004DF3B5    mov         eax,dword ptr [ebp-8]
 004DF3B8    pop         ecx
 004DF3B9    pop         ecx
 004DF3BA    pop         ebp
 004DF3BB    ret
end;*}

//004DF3BC
{*function sub_004DF3BC(?:?):?;
begin
 004DF3BC    push        ebp
 004DF3BD    mov         ebp,esp
 004DF3BF    push        ecx
 004DF3C0    mov         byte ptr [ebp-1],al
 004DF3C3    mov         al,byte ptr [ebp-1]
 004DF3C6    mov         byte ptr [ebp-4],al
 004DF3C9    mov         byte ptr [ebp-3],0
 004DF3CD    lea         eax,[ebp-4]
 004DF3D0    push        eax
 004DF3D1    lea         eax,[ebp-4]
 004DF3D4    push        eax
 004DF3D5    call        user32.OemToCharA
 004DF3DA    mov         al,byte ptr [ebp-4]
 004DF3DD    mov         byte ptr [ebp-2],al
 004DF3E0    mov         al,byte ptr [ebp-2]
 004DF3E3    pop         ecx
 004DF3E4    pop         ebp
 004DF3E5    ret
end;*}

//004DF3E8
{*function sub_004DF3E8(?:?):?;
begin
 004DF3E8    push        ebp
 004DF3E9    mov         ebp,esp
 004DF3EB    push        ecx
 004DF3EC    mov         byte ptr [ebp-1],al
 004DF3EF    mov         al,byte ptr [ebp-1]
 004DF3F2    mov         byte ptr [ebp-4],al
 004DF3F5    mov         byte ptr [ebp-3],0
 004DF3F9    lea         eax,[ebp-4]
 004DF3FC    push        eax
 004DF3FD    lea         eax,[ebp-4]
 004DF400    push        eax
 004DF401    call        user32.CharToOemA
 004DF406    mov         al,byte ptr [ebp-4]
 004DF409    mov         byte ptr [ebp-2],al
 004DF40C    mov         al,byte ptr [ebp-2]
 004DF40F    pop         ecx
 004DF410    pop         ebp
 004DF411    ret
end;*}

//004DF414
{*procedure sub_004DF414(?:?);
begin
 004DF414    push        ebp
 004DF415    mov         ebp,esp
 004DF417    xor         ecx,ecx
 004DF419    push        ecx
 004DF41A    push        ecx
 004DF41B    push        ecx
 004DF41C    push        ecx
 004DF41D    push        ecx
 004DF41E    mov         dword ptr [ebp-4],eax
 004DF421    xor         eax,eax
 004DF423    push        ebp
 004DF424    push        4DF4E3
 004DF429    push        dword ptr fs:[eax]
 004DF42C    mov         dword ptr fs:[eax],esp
 004DF42F    lea         eax,[ebp-8]
 004DF432    mov         edx,105
 004DF437    call        @LStrSetLength
 004DF43C    lea         eax,[ebp-8]
 004DF43F    call        00405598
 004DF444    push        eax
 004DF445    push        104
 004DF44A    call        kernel32.GetTempPathA
 004DF44F    mov         edx,eax
 004DF451    lea         eax,[ebp-8]
 004DF454    call        @LStrSetLength
 004DF459    lea         edx,[ebp-0C]
 004DF45C    mov         eax,dword ptr [ebp-8]
 004DF45F    call        0040BFEC
 004DF464    mov         edx,dword ptr [ebp-0C]
 004DF467    lea         eax,[ebp-8]
 004DF46A    call        @LStrLAsg
 004DF46F    lea         edx,[ebp-10]
 004DF472    mov         eax,dword ptr [ebp-8]
 004DF475    call        004115C4
 004DF47A    mov         edx,dword ptr [ebp-10]
 004DF47D    lea         eax,[ebp-8]
 004DF480    call        @LStrLAsg
 004DF485    push        dword ptr [ebp-8]
 004DF488    call        kernel32.GetTickCount
 004DF48D    xor         edx,edx
 004DF48F    push        edx
 004DF490    push        eax
 004DF491    lea         edx,[ebp-14]
 004DF494    mov         eax,8
 004DF499    call        IntToHex
 004DF49E    push        dword ptr [ebp-14]
 004DF4A1    push        4DF4F8;'.MPHT'
 004DF4A6    mov         eax,dword ptr [ebp-4]
 004DF4A9    mov         edx,3
 004DF4AE    call        @LStrCatN
 004DF4B3    mov         eax,dword ptr [ebp-4]
 004DF4B6    mov         eax,dword ptr [eax]
 004DF4B8    call        @LStrToPChar
 004DF4BD    push        eax
 004DF4BE    call        kernel32.GetFileAttributesA
 004DF4C3    cmp         eax,0FFFFFFFF
>004DF4C6    jne         004DF485
 004DF4C8    xor         eax,eax
 004DF4CA    pop         edx
 004DF4CB    pop         ecx
 004DF4CC    pop         ecx
 004DF4CD    mov         dword ptr fs:[eax],edx
 004DF4D0    push        4DF4EA
 004DF4D5    lea         eax,[ebp-14]
 004DF4D8    mov         edx,4
 004DF4DD    call        @LStrArrayClr
 004DF4E2    ret
>004DF4E3    jmp         @HandleFinally
>004DF4E8    jmp         004DF4D5
 004DF4EA    mov         esp,ebp
 004DF4EC    pop         ebp
 004DF4ED    ret
end;*}

//004DF500
{*function sub_004DF500(?:?; ?:?):?;
begin
 004DF500    push        ebp
 004DF501    mov         ebp,esp
 004DF503    add         esp,0FFFFFFF0
 004DF506    push        ebx
 004DF507    push        esi
 004DF508    push        edi
 004DF509    mov         dword ptr [ebp-8],edx
 004DF50C    mov         dword ptr [ebp-4],eax
 004DF50F    mov         byte ptr [ebp-9],0
 004DF513    mov         eax,dword ptr [ebp-8]
 004DF516    mov         byte ptr [eax],1
 004DF519    mov         edx,40
 004DF51E    mov         eax,dword ptr [ebp-4]
 004DF521    call        0040C758
 004DF526    mov         dword ptr [ebp-10],eax
 004DF529    cmp         dword ptr [ebp-10],0FFFFFFFF
>004DF52D    je          004DF58B
 004DF52F    mov         eax,dword ptr [ebp-10]
 004DF532    call        0040C8C8
 004DF537    mov         byte ptr [ebp-9],1
 004DF53B    xor         eax,eax
 004DF53D    push        ebp
 004DF53E    push        4DF577
 004DF543    push        dword ptr fs:[eax]
 004DF546    mov         dword ptr fs:[eax],esp
 004DF549    mov         edx,2
 004DF54E    mov         eax,dword ptr [ebp-4]
 004DF551    call        0040C758
 004DF556    mov         dword ptr [ebp-10],eax
 004DF559    cmp         dword ptr [ebp-10],0FFFFFFFF
>004DF55D    je          004DF56D
 004DF55F    mov         eax,dword ptr [ebp-10]
 004DF562    call        0040C8C8
 004DF567    mov         eax,dword ptr [ebp-8]
 004DF56A    mov         byte ptr [eax],0
 004DF56D    xor         eax,eax
 004DF56F    pop         edx
 004DF570    pop         ecx
 004DF571    pop         ecx
 004DF572    mov         dword ptr fs:[eax],edx
>004DF575    jmp         004DF58B
>004DF577    jmp         @HandleAnyException
 004DF57C    mov         byte ptr [ebp-9],1
 004DF580    mov         eax,dword ptr [ebp-8]
 004DF583    mov         byte ptr [eax],1
 004DF586    call        @DoneExcept
 004DF58B    mov         al,byte ptr [ebp-9]
 004DF58E    pop         edi
 004DF58F    pop         esi
 004DF590    pop         ebx
 004DF591    mov         esp,ebp
 004DF593    pop         ebp
 004DF594    ret
end;*}

//004DF598
{*function sub_004DF598(?:?):?;
begin
 004DF598    push        ebp
 004DF599    mov         ebp,esp
 004DF59B    add         esp,0FFFFFFF8
 004DF59E    mov         dword ptr [ebp-4],eax
 004DF5A1    mov         eax,dword ptr [ebp-4]
 004DF5A4    push        eax
 004DF5A5    call        user32.GetKeyState
 004DF5AA    test        ax,0FFFE
 004DF5AE    setne       byte ptr [ebp-5]
 004DF5B2    mov         al,byte ptr [ebp-5]
 004DF5B5    pop         ecx
 004DF5B6    pop         ecx
 004DF5B7    pop         ebp
 004DF5B8    ret
end;*}

//004DF5BC
{*function sub_004DF5BC(?:dword; ?:dword):?;
begin
 004DF5BC    push        ebp
 004DF5BD    mov         ebp,esp
 004DF5BF    add         esp,0FFFFFFF4
 004DF5C2    mov         dword ptr [ebp-8],edx
 004DF5C5    mov         dword ptr [ebp-4],eax
 004DF5C8    mov         eax,dword ptr [ebp-4]
 004DF5CB    cmp         eax,dword ptr [ebp-8]
>004DF5CE    jge         004DF5D8
 004DF5D0    mov         eax,dword ptr [ebp-4]
 004DF5D3    mov         dword ptr [ebp-0C],eax
>004DF5D6    jmp         004DF5DE
 004DF5D8    mov         eax,dword ptr [ebp-8]
 004DF5DB    mov         dword ptr [ebp-0C],eax
 004DF5DE    mov         eax,dword ptr [ebp-0C]
 004DF5E1    mov         esp,ebp
 004DF5E3    pop         ebp
 004DF5E4    ret
end;*}

//004DF5E8
{*function sub_004DF5E8(?:dword; ?:dword):?;
begin
 004DF5E8    push        ebp
 004DF5E9    mov         ebp,esp
 004DF5EB    add         esp,0FFFFFFF4
 004DF5EE    mov         dword ptr [ebp-8],edx
 004DF5F1    mov         dword ptr [ebp-4],eax
 004DF5F4    mov         eax,dword ptr [ebp-4]
 004DF5F7    cmp         eax,dword ptr [ebp-8]
>004DF5FA    jle         004DF604
 004DF5FC    mov         eax,dword ptr [ebp-4]
 004DF5FF    mov         dword ptr [ebp-0C],eax
>004DF602    jmp         004DF60A
 004DF604    mov         eax,dword ptr [ebp-8]
 004DF607    mov         dword ptr [ebp-0C],eax
 004DF60A    mov         eax,dword ptr [ebp-0C]
 004DF60D    mov         esp,ebp
 004DF60F    pop         ebp
 004DF610    ret
end;*}

//004DF614
{*function sub_004DF614(?:?; ?:?; ?:Integer; ?:?; ?:?):?;
begin
 004DF614    push        ebp
 004DF615    mov         ebp,esp
 004DF617    add         esp,0FFFFFFD4
 004DF61A    push        ebx
 004DF61B    xor         ebx,ebx
 004DF61D    mov         dword ptr [ebp-2C],ebx
 004DF620    mov         dword ptr [ebp-28],ebx
 004DF623    mov         dword ptr [ebp-24],ebx
 004DF626    mov         dword ptr [ebp-0C],ecx
 004DF629    mov         dword ptr [ebp-8],edx
 004DF62C    mov         dword ptr [ebp-4],eax
 004DF62F    xor         eax,eax
 004DF631    push        ebp
 004DF632    push        4DF757
 004DF637    push        dword ptr fs:[eax]
 004DF63A    mov         dword ptr fs:[eax],esp
 004DF63D    mov         eax,dword ptr [ebp-8]
 004DF640    mov         dword ptr [ebp-10],eax
 004DF643    mov         eax,dword ptr [ebp+8]
 004DF646    xor         edx,edx
 004DF648    mov         dword ptr [eax],edx
 004DF64A    mov         byte ptr [ebp-11],1
 004DF64E    mov         byte ptr [ebp-19],0
 004DF652    mov         eax,dword ptr [ebp-0C]
 004DF655    dec         eax
 004DF656    test        eax,eax
>004DF658    jl          004DF73C
 004DF65E    inc         eax
 004DF65F    mov         dword ptr [ebp-20],eax
 004DF662    mov         dword ptr [ebp-18],0
 004DF669    lea         eax,[ebp-24]
 004DF66C    mov         edx,dword ptr [ebp-4]
 004DF66F    mov         ecx,dword ptr [ebp-18]
 004DF672    mov         dl,byte ptr [edx+ecx]
 004DF675    call        @LStrFromChar
 004DF67A    mov         eax,dword ptr [ebp-24]
 004DF67D    mov         edx,4DF770;'0123456789abcdef0123456789ABCDEF'
 004DF682    call        @LStrPos
 004DF687    test        eax,eax
>004DF689    je          004DF730
 004DF68F    mov         eax,dword ptr [ebp-4]
 004DF692    mov         edx,dword ptr [ebp-18]
 004DF695    mov         al,byte ptr [eax+edx]
 004DF698    call        UpCase
 004DF69D    mov         byte ptr [ebp-1A],al
 004DF6A0    cmp         byte ptr [ebp-11],0
>004DF6A4    je          004DF6C7
 004DF6A6    lea         eax,[ebp-28]
 004DF6A9    mov         dl,byte ptr [ebp-1A]
 004DF6AC    call        @LStrFromChar
 004DF6B1    mov         eax,dword ptr [ebp-28]
 004DF6B4    mov         edx,4DF79C;'0123456789ABCDEF'
 004DF6B9    call        @LStrPos
 004DF6BE    dec         eax
 004DF6BF    shl         eax,4
 004DF6C2    mov         byte ptr [ebp-19],al
>004DF6C5    jmp         004DF6E3
 004DF6C7    lea         eax,[ebp-2C]
 004DF6CA    mov         dl,byte ptr [ebp-1A]
 004DF6CD    call        @LStrFromChar
 004DF6D2    mov         eax,dword ptr [ebp-2C]
 004DF6D5    mov         edx,4DF79C;'0123456789ABCDEF'
 004DF6DA    call        @LStrPos
 004DF6DF    dec         eax
 004DF6E0    or          byte ptr [ebp-19],al
 004DF6E3    mov         al,byte ptr [ebp-11]
 004DF6E6    xor         al,1
 004DF6E8    mov         byte ptr [ebp-11],al
 004DF6EB    cmp         byte ptr [ebp-11],0
>004DF6EF    je          004DF730
 004DF6F1    cmp         byte ptr [ebp+0C],0
>004DF6F5    je          004DF71D
 004DF6F7    mov         al,byte ptr [ebp-19]
 004DF6FA    and         al,0F
 004DF6FC    shl         eax,4
 004DF6FF    mov         dl,byte ptr [ebp-19]
 004DF702    and         dl,0F0
 004DF705    and         edx,0FF
 004DF70B    shr         edx,4
 004DF70E    or          al,dl
 004DF710    mov         edx,dword ptr [ebp+8]
 004DF713    mov         edx,dword ptr [edx]
 004DF715    mov         ecx,dword ptr [ebp-8]
 004DF718    mov         byte ptr [ecx+edx],al
>004DF71B    jmp         004DF72B
 004DF71D    mov         eax,dword ptr [ebp+8]
 004DF720    mov         eax,dword ptr [eax]
 004DF722    mov         edx,dword ptr [ebp-8]
 004DF725    mov         cl,byte ptr [ebp-19]
 004DF728    mov         byte ptr [edx+eax],cl
 004DF72B    mov         eax,dword ptr [ebp+8]
 004DF72E    inc         dword ptr [eax]
 004DF730    inc         dword ptr [ebp-18]
 004DF733    dec         dword ptr [ebp-20]
>004DF736    jne         004DF669
 004DF73C    xor         eax,eax
 004DF73E    pop         edx
 004DF73F    pop         ecx
 004DF740    pop         ecx
 004DF741    mov         dword ptr fs:[eax],edx
 004DF744    push        4DF75E
 004DF749    lea         eax,[ebp-2C]
 004DF74C    mov         edx,3
 004DF751    call        @LStrArrayClr
 004DF756    ret
>004DF757    jmp         @HandleFinally
>004DF75C    jmp         004DF749
 004DF75E    mov         eax,dword ptr [ebp-10]
 004DF761    pop         ebx
 004DF762    mov         esp,ebp
 004DF764    pop         ebp
 004DF765    ret         8
end;*}

//004DF7B0
{*function sub_004DF7B0(?:?; ?:Pointer; ?:?; ?:?):?;
begin
 004DF7B0    push        ebp
 004DF7B1    mov         ebp,esp
 004DF7B3    add         esp,0FFFFFFE0
 004DF7B6    mov         dword ptr [ebp-0C],ecx
 004DF7B9    mov         dword ptr [ebp-8],edx
 004DF7BC    mov         dword ptr [ebp-4],eax
 004DF7BF    mov         eax,dword ptr [ebp-8]
 004DF7C2    mov         dword ptr [ebp-10],eax
 004DF7C5    xor         eax,eax
 004DF7C7    mov         dword ptr [ebp-1C],eax
 004DF7CA    mov         eax,dword ptr [ebp-0C]
 004DF7CD    dec         eax
 004DF7CE    test        eax,eax
>004DF7D0    jl          004DF883
 004DF7D6    inc         eax
 004DF7D7    mov         dword ptr [ebp-20],eax
 004DF7DA    mov         dword ptr [ebp-14],0
 004DF7E1    mov         eax,dword ptr [ebp-4]
 004DF7E4    mov         edx,dword ptr [ebp-14]
 004DF7E7    mov         al,byte ptr [eax+edx]
 004DF7EA    mov         byte ptr [ebp-15],al
 004DF7ED    cmp         byte ptr [ebp+8],0
>004DF7F1    je          004DF834
 004DF7F3    mov         al,byte ptr [ebp-15]
 004DF7F6    and         al,0F
 004DF7F8    and         eax,0FF
 004DF7FD    mov         edx,4DF8A0;'0123456789ABCDEF'
 004DF802    mov         al,byte ptr [edx+eax]
 004DF805    call        UpCase
 004DF80A    mov         edx,dword ptr [ebp-8]
 004DF80D    mov         ecx,dword ptr [ebp-1C]
 004DF810    mov         byte ptr [edx+ecx],al
 004DF813    xor         eax,eax
 004DF815    mov         al,byte ptr [ebp-15]
 004DF818    shr         eax,4
 004DF81B    mov         edx,4DF8A0;'0123456789ABCDEF'
 004DF820    mov         al,byte ptr [edx+eax]
 004DF823    call        UpCase
 004DF828    mov         edx,dword ptr [ebp-8]
 004DF82B    mov         ecx,dword ptr [ebp-1C]
 004DF82E    mov         byte ptr [edx+ecx+1],al
>004DF832    jmp         004DF873
 004DF834    mov         al,byte ptr [ebp-15]
 004DF837    and         al,0F
 004DF839    and         eax,0FF
 004DF83E    mov         edx,4DF8A0;'0123456789ABCDEF'
 004DF843    mov         al,byte ptr [edx+eax]
 004DF846    call        UpCase
 004DF84B    mov         edx,dword ptr [ebp-8]
 004DF84E    mov         ecx,dword ptr [ebp-1C]
 004DF851    mov         byte ptr [edx+ecx+1],al
 004DF855    xor         eax,eax
 004DF857    mov         al,byte ptr [ebp-15]
 004DF85A    shr         eax,4
 004DF85D    mov         edx,4DF8A0;'0123456789ABCDEF'
 004DF862    mov         al,byte ptr [edx+eax]
 004DF865    call        UpCase
 004DF86A    mov         edx,dword ptr [ebp-8]
 004DF86D    mov         ecx,dword ptr [ebp-1C]
 004DF870    mov         byte ptr [edx+ecx],al
 004DF873    add         dword ptr [ebp-1C],2
 004DF877    inc         dword ptr [ebp-14]
 004DF87A    dec         dword ptr [ebp-20]
>004DF87D    jne         004DF7E1
 004DF883    mov         eax,dword ptr [ebp-8]
 004DF886    mov         edx,dword ptr [ebp-1C]
 004DF889    mov         byte ptr [eax+edx],0
 004DF88D    mov         eax,dword ptr [ebp-10]
 004DF890    mov         esp,ebp
 004DF892    pop         ebp
 004DF893    ret         4
end;*}

//004DF8B4
{*procedure sub_004DF8B4(?:Integer; ?:?; ?:AnsiString);
begin
 004DF8B4    push        ebp
 004DF8B5    mov         ebp,esp
 004DF8B7    add         esp,0FFFFFFF4
 004DF8BA    mov         dword ptr [ebp-0C],ecx
 004DF8BD    mov         byte ptr [ebp-5],dl
 004DF8C0    mov         dword ptr [ebp-4],eax
 004DF8C3    mov         eax,dword ptr [ebp-0C]
 004DF8C6    push        eax
 004DF8C7    xor         ecx,ecx
 004DF8C9    mov         dl,byte ptr [ebp-5]
 004DF8CC    mov         eax,dword ptr [ebp-4]
 004DF8CF    call        004DF8D8
 004DF8D4    mov         esp,ebp
 004DF8D6    pop         ebp
 004DF8D7    ret
end;*}

//004DF8D8
{*procedure sub_004DF8D8(?:?; ?:?; ?:?; ?:?);
begin
 004DF8D8    push        ebp
 004DF8D9    mov         ebp,esp
 004DF8DB    add         esp,0FFFFFFF4
 004DF8DE    push        ebx
 004DF8DF    xor         ebx,ebx
 004DF8E1    mov         dword ptr [ebp-0C],ebx
 004DF8E4    mov         byte ptr [ebp-6],cl
 004DF8E7    mov         byte ptr [ebp-5],dl
 004DF8EA    mov         dword ptr [ebp-4],eax
 004DF8ED    xor         eax,eax
 004DF8EF    push        ebp
 004DF8F0    push        4DF989
 004DF8F5    push        dword ptr fs:[eax]
 004DF8F8    mov         dword ptr fs:[eax],esp
 004DF8FB    mov         eax,dword ptr [ebp+8]
 004DF8FE    call        @LStrClr
 004DF903    xor         eax,eax
 004DF905    mov         al,byte ptr [ebp-5]
 004DF908    push        eax
 004DF909    mov         eax,dword ptr [ebp-4]
 004DF90C    pop         edx
 004DF90D    mov         ecx,edx
 004DF90F    xor         edx,edx
 004DF911    div         eax,ecx
 004DF913    mov         eax,4DF9A0;'0123456789ABCDEF'
 004DF918    mov         dl,byte ptr [eax+edx]
 004DF91B    lea         eax,[ebp-0C]
 004DF91E    call        @LStrFromChar
 004DF923    mov         edx,dword ptr [ebp-0C]
 004DF926    mov         ecx,dword ptr [ebp+8]
 004DF929    mov         ecx,dword ptr [ecx]
 004DF92B    mov         eax,dword ptr [ebp+8]
 004DF92E    call        @LStrCat3
 004DF933    xor         eax,eax
 004DF935    mov         al,byte ptr [ebp-5]
 004DF938    push        eax
 004DF939    mov         eax,dword ptr [ebp-4]
 004DF93C    pop         edx
 004DF93D    mov         ecx,edx
 004DF93F    xor         edx,edx
 004DF941    div         eax,ecx
 004DF943    mov         dword ptr [ebp-4],eax
 004DF946    cmp         dword ptr [ebp-4],0
>004DF94A    jne         004DF903
>004DF94C    jmp         004DF960
 004DF94E    mov         ecx,dword ptr [ebp+8]
 004DF951    mov         ecx,dword ptr [ecx]
 004DF953    mov         eax,dword ptr [ebp+8]
 004DF956    mov         edx,4DF9BC;'0'
 004DF95B    call        @LStrCat3
 004DF960    mov         eax,dword ptr [ebp+8]
 004DF963    mov         eax,dword ptr [eax]
 004DF965    call        @LStrLen
 004DF96A    xor         edx,edx
 004DF96C    mov         dl,byte ptr [ebp-6]
 004DF96F    cmp         eax,edx
>004DF971    jl          004DF94E
 004DF973    xor         eax,eax
 004DF975    pop         edx
 004DF976    pop         ecx
 004DF977    pop         ecx
 004DF978    mov         dword ptr fs:[eax],edx
 004DF97B    push        4DF990
 004DF980    lea         eax,[ebp-0C]
 004DF983    call        @LStrClr
 004DF988    ret
>004DF989    jmp         @HandleFinally
>004DF98E    jmp         004DF980
 004DF990    pop         ebx
 004DF991    mov         esp,ebp
 004DF993    pop         ebp
 004DF994    ret         4
end;*}

//004DF9C0
{*function sub_004DF9C0(?:?; ?:?):?;
begin
 004DF9C0    push        ebp
 004DF9C1    mov         ebp,esp
 004DF9C3    add         esp,0FFFFFFB4
 004DF9C6    push        ebx
 004DF9C7    xor         ecx,ecx
 004DF9C9    mov         dword ptr [ebp-4C],ecx
 004DF9CC    mov         dword ptr [ebp-48],ecx
 004DF9CF    mov         dword ptr [ebp-14],ecx
 004DF9D2    mov         dword ptr [ebp-10],ecx
 004DF9D5    mov         byte ptr [ebp-9],dl
 004DF9D8    mov         dword ptr [ebp-8],eax
 004DF9DB    mov         eax,dword ptr [ebp-8]
 004DF9DE    call        @LStrAddRef
 004DF9E3    xor         eax,eax
 004DF9E5    push        ebp
 004DF9E6    push        4DFAFE
 004DF9EB    push        dword ptr fs:[eax]
 004DF9EE    mov         dword ptr fs:[eax],esp
 004DF9F1    xor         eax,eax
 004DF9F3    mov         dword ptr [ebp-4],eax
 004DF9F6    lea         edx,[ebp-10]
 004DF9F9    mov         eax,dword ptr [ebp-8]
 004DF9FC    call        0040BCC8
 004DFA01    mov         edx,dword ptr [ebp-10]
 004DFA04    lea         eax,[ebp-8]
 004DFA07    call        @LStrLAsg
>004DFA0C    jmp         004DFAC4
 004DFA11    lea         eax,[ebp-14]
 004DFA14    mov         edx,dword ptr [ebp-8]
 004DFA17    mov         dl,byte ptr [edx]
 004DFA19    call        @LStrFromChar
 004DFA1E    mov         eax,dword ptr [ebp-14]
 004DFA21    mov         edx,4DFB18;'0123456789ABCDEF'
 004DFA26    call        @LStrPos
 004DFA2B    mov         ebx,eax
 004DFA2D    mov         al,1
 004DFA2F    mov         dl,byte ptr [ebp-9]
 004DFA32    lea         ecx,[ebp-34]
 004DFA35    mov         ah,20
 004DFA37    call        @SetRange
 004DFA3C    cmp         ebx,0FF
>004DFA42    ja          004DFA48
 004DFA44    bt          dword ptr [ebp-34],ebx
>004DFA48    jb          004DFA89
 004DFA4A    mov         eax,dword ptr [ebp-8]
 004DFA4D    mov         al,byte ptr [eax]
 004DFA4F    mov         byte ptr [ebp-44],al
 004DFA52    mov         byte ptr [ebp-40],2
 004DFA56    xor         eax,eax
 004DFA58    mov         al,byte ptr [ebp-9]
 004DFA5B    mov         dword ptr [ebp-3C],eax
 004DFA5E    mov         byte ptr [ebp-38],0
 004DFA62    lea         eax,[ebp-44]
 004DFA65    push        eax
 004DFA66    push        1
 004DFA68    lea         edx,[ebp-48]
 004DFA6B    mov         eax,4DF34C;^HInstance:LongWord
 004DFA70    call        LoadResString
 004DFA75    mov         ecx,dword ptr [ebp-48]
 004DFA78    mov         dl,1
 004DFA7A    mov         eax,[004DE8FC];EMPHexEditor
 004DFA7F    call        Exception.CreateFmt;EMPHexEditor.Create
 004DFA84    call        @RaiseExcept
 004DFA89    lea         eax,[ebp-4C]
 004DFA8C    mov         edx,dword ptr [ebp-8]
 004DFA8F    mov         dl,byte ptr [edx]
 004DFA91    call        @LStrFromChar
 004DFA96    mov         eax,dword ptr [ebp-4C]
 004DFA99    mov         edx,4DFB18;'0123456789ABCDEF'
 004DFA9E    call        @LStrPos
 004DFAA3    dec         eax
 004DFAA4    xor         edx,edx
 004DFAA6    mov         dl,byte ptr [ebp-9]
 004DFAA9    imul        edx,dword ptr [ebp-4]
 004DFAAD    add         eax,edx
 004DFAAF    mov         dword ptr [ebp-4],eax
 004DFAB2    lea         eax,[ebp-8]
 004DFAB5    mov         ecx,1
 004DFABA    mov         edx,1
 004DFABF    call        @LStrDelete
 004DFAC4    cmp         dword ptr [ebp-8],0
>004DFAC8    jne         004DFA11
 004DFACE    xor         eax,eax
 004DFAD0    pop         edx
 004DFAD1    pop         ecx
 004DFAD2    pop         ecx
 004DFAD3    mov         dword ptr fs:[eax],edx
 004DFAD6    push        4DFB05
 004DFADB    lea         eax,[ebp-4C]
 004DFADE    mov         edx,2
 004DFAE3    call        @LStrArrayClr
 004DFAE8    lea         eax,[ebp-14]
 004DFAEB    mov         edx,2
 004DFAF0    call        @LStrArrayClr
 004DFAF5    lea         eax,[ebp-8]
 004DFAF8    call        @LStrClr
 004DFAFD    ret
>004DFAFE    jmp         @HandleFinally
>004DFB03    jmp         004DFADB
 004DFB05    mov         eax,dword ptr [ebp-4]
 004DFB08    pop         ebx
 004DFB09    mov         esp,ebp
 004DFB0B    pop         ebp
 004DFB0C    ret
end;*}

//004DFB2C
procedure sub_004DFB2C(?:Byte);
begin
{*
 004DFB2C    push        ebp
 004DFB2D    mov         ebp,esp
 004DFB2F    push        ecx
 004DFB30    mov         dword ptr [ebp-4],eax
 004DFB33    mov         eax,dword ptr [ebp-4]
 004DFB36    mov         ax,word ptr [eax]
 004DFB39    xchg        ah,al
 004DFB3B    mov         edx,dword ptr [ebp-4]
 004DFB3E    mov         word ptr [edx],ax
 004DFB41    pop         ecx
 004DFB42    pop         ebp
 004DFB43    ret
*}
end;

//004DFB44
{*function sub_004DFB44(?:?):?;
begin
 004DFB44    push        ebp
 004DFB45    mov         ebp,esp
 004DFB47    add         esp,0FFFFFFF4
 004DFB4A    push        ebx
 004DFB4B    mov         dword ptr [ebp-4],eax
 004DFB4E    mov         eax,dword ptr [ebp-4]
 004DFB51    call        ColorToRGB
 004DFB56    mov         dword ptr [ebp-4],eax
 004DFB59    mov         eax,dword ptr [ebp-4]
 004DFB5C    call        004085F0
 004DFB61    and         eax,0FF
 004DFB66    imul        bx,ax,4A
 004DFB6A    mov         eax,dword ptr [ebp-4]
 004DFB6D    call        00408608
 004DFB72    and         eax,0FF
 004DFB77    imul        ax,ax,92
 004DFB7C    add         bx,ax
 004DFB7F    mov         eax,dword ptr [ebp-4]
 004DFB82    call        00408624
 004DFB87    and         eax,0FF
 004DFB8C    shl         eax,2
 004DFB8F    lea         eax,[eax+eax*8]
 004DFB92    add         bx,ax
 004DFB95    mov         eax,ebx
 004DFB97    call        004084A0
 004DFB9C    mov         byte ptr [ebp-9],al
 004DFB9F    mov         cl,byte ptr [ebp-9]
 004DFBA2    mov         dl,byte ptr [ebp-9]
 004DFBA5    mov         al,byte ptr [ebp-9]
 004DFBA8    call        00408590
 004DFBAD    mov         dword ptr [ebp-8],eax
 004DFBB0    mov         eax,dword ptr [ebp-8]
 004DFBB3    pop         ebx
 004DFBB4    mov         esp,ebp
 004DFBB6    pop         ebp
 004DFBB7    ret
end;*}

//004DFBB8
constructor sub_004DFBB8;
begin
{*
 004DFBB8    push        ebp
 004DFBB9    mov         ebp,esp
 004DFBBB    add         esp,0FFFFFFF0
 004DFBBE    push        esi
 004DFBBF    push        edi
 004DFBC0    test        dl,dl
>004DFBC2    je          004DFBCC
 004DFBC4    add         esp,0FFFFFFF0
 004DFBC7    call        @ClassCreate
 004DFBCC    mov         dword ptr [ebp-0C],ecx
 004DFBCF    mov         byte ptr [ebp-5],dl
 004DFBD2    mov         dword ptr [ebp-4],eax
 004DFBD5    mov         ecx,dword ptr [ebp-0C]
 004DFBD8    xor         edx,edx
 004DFBDA    mov         eax,dword ptr [ebp-4]
 004DFBDD    call        004D7FE8
 004DFBE2    mov         eax,dword ptr [ebp-4]
 004DFBE5    mov         byte ptr [eax+298],0;TCustomMPHexEditor.?f298:byte
 004DFBEC    mov         eax,dword ptr [ebp-4]
 004DFBEF    mov         byte ptr [eax+599],0;TCustomMPHexEditor.?f599:byte
 004DFBF6    mov         eax,dword ptr [ebp-4]
 004DFBF9    mov         byte ptr [eax+670],0;TCustomMPHexEditor.?f670:byte
 004DFC00    mov         eax,dword ptr [ebp-4]
 004DFC03    lea         edi,[eax+620];TCustomMPHexEditor.?f620:dword
 004DFC09    mov         esi,4E0118
 004DFC0E    mov         ecx,8
 004DFC13    rep movs    dword ptr [edi],dword ptr [esi]
 004DFC15    mov         eax,dword ptr [ebp-4]
 004DFC18    mov         byte ptr [eax+598],0;TCustomMPHexEditor.?f598:byte
 004DFC1F    mov         eax,dword ptr [ebp-4]
 004DFC22    mov         byte ptr [eax+671],10;TCustomMPHexEditor.?f671:byte
 004DFC29    mov         eax,dword ptr [ebp-4]
 004DFC2C    mov         byte ptr [eax+60D],0;TCustomMPHexEditor.?f60D:byte
 004DFC33    mov         eax,dword ptr [ebp-4]
 004DFC36    xor         edx,edx
 004DFC38    mov         dword ptr [eax+668],edx;TCustomMPHexEditor.?f668:dword
 004DFC3E    mov         dword ptr [eax+66C],edx;TCustomMPHexEditor.?f66C:dword
 004DFC44    mov         eax,dword ptr [ebp-4]
 004DFC47    xor         edx,edx
 004DFC49    mov         dword ptr [eax+660],edx;TCustomMPHexEditor.?f660:dword
 004DFC4F    mov         dword ptr [eax+664],edx;TCustomMPHexEditor.?f664:dword
 004DFC55    mov         eax,dword ptr [ebp-4]
 004DFC58    mov         byte ptr [eax+4A1],0;TCustomMPHexEditor.?f4A1:byte
 004DFC5F    mov         eax,dword ptr [ebp-4]
 004DFC62    mov         dword ptr [eax+4A4],0FFFFFFFF;TCustomMPHexEditor.?f4A4:Integer
 004DFC6C    mov         eax,dword ptr [ebp-4]
 004DFC6F    mov         byte ptr [eax+4A8],1;TCustomMPHexEditor.?f4A8:byte
 004DFC76    mov         eax,dword ptr [ebp-4]
 004DFC79    mov         byte ptr [eax+61C],0;TCustomMPHexEditor.?f61C:byte
 004DFC80    mov         eax,dword ptr [ebp-4]
 004DFC83    mov         byte ptr [eax+61D],0;TCustomMPHexEditor.?f61D:byte
 004DFC8A    mov         eax,dword ptr [ebp-4]
 004DFC8D    xor         edx,edx
 004DFC8F    mov         dword ptr [eax+608],edx;TCustomMPHexEditor.?f608:dword
 004DFC95    mov         eax,dword ptr [ebp-4]
 004DFC98    mov         dword ptr [eax+5F4],1;TCustomMPHexEditor.?f5F4:Integer
 004DFCA2    mov         eax,dword ptr [ebp-4]
 004DFCA5    mov         dword ptr [eax+5F8],0FFFFFFFF;TCustomMPHexEditor.?f5F8:Integer
 004DFCAF    mov         eax,dword ptr [ebp-4]
 004DFCB2    mov         dword ptr [eax+610],1;TCustomMPHexEditor.?f610:Integer
 004DFCBC    mov         eax,dword ptr [ebp-4]
 004DFCBF    mov         byte ptr [eax+60C],0;TCustomMPHexEditor.?f60C:byte
 004DFCC6    mov         eax,dword ptr [ebp-4]
 004DFCC9    mov         byte ptr [eax+5F0],0;TCustomMPHexEditor.?f5F0:byte
 004DFCD0    mov         eax,dword ptr [ebp-4]
 004DFCD3    mov         byte ptr [eax+59B],1;TCustomMPHexEditor.?f59B:byte
 004DFCDA    mov         eax,dword ptr [ebp-4]
 004DFCDD    mov         byte ptr [eax+5E0],1;TCustomMPHexEditor.?f5E0:byte
 004DFCE4    xor         edx,edx
 004DFCE6    mov         eax,dword ptr [ebp-4]
 004DFCE9    call        TMPHexEditorEx.SetHexLowerCase
 004DFCEE    mov         eax,dword ptr [ebp-4]
 004DFCF1    mov         byte ptr [eax+1F8],1;TCustomMPHexEditor.FDoubleBuffered:Boolean
 004DFCF8    mov         dl,1
 004DFCFA    mov         eax,[0042CF48];TBitmap
 004DFCFF    call        TBitmap.Create;TBitmap.Create
 004DFD04    mov         edx,dword ptr [ebp-4]
 004DFD07    mov         dword ptr [edx+5B8],eax
 004DFD0D    mov         eax,dword ptr [ebp-4]
 004DFD10    add         eax,5BC;TCustomMPHexEditor.?f5BC:.5
 004DFD15    mov         edx,dword ptr ds:[4DEF2C];_DynArr_80_5
 004DFD1B    call        @DynArrayClear
 004DFD20    mov         eax,dword ptr [ebp-4]
 004DFD23    mov         byte ptr [eax+5C0],0;TCustomMPHexEditor.?f5C0:byte
 004DFD2A    mov         eax,dword ptr [ebp-4]
 004DFD2D    add         eax,5C4;TCustomMPHexEditor.?f5C4:String
 004DFD32    call        @LStrClr
 004DFD37    mov         eax,dword ptr [ebp-4]
 004DFD3A    mov         byte ptr [eax+5C8],0;TCustomMPHexEditor.?f5C8:byte
 004DFD41    mov         eax,dword ptr [ebp-4]
 004DFD44    mov         dword ptr [eax+5CC],100000;TCustomMPHexEditor.?f5CC:dword
 004DFD4E    mov         eax,dword ptr [ebp-4]
 004DFD51    mov         byte ptr [eax+4F0],0;TCustomMPHexEditor.?f4F0:byte
 004DFD58    mov         eax,dword ptr [ebp-4]
 004DFD5B    mov         byte ptr [eax+4F1],1;TCustomMPHexEditor.?f4F1:byte
 004DFD62    mov         eax,dword ptr [ebp-4]
 004DFD65    mov         dword ptr [eax+59C],0FFFFFFFF;TCustomMPHexEditor.?f59C:Integer
 004DFD6F    mov         edx,4E0140;'-!10:0x|'
 004DFD74    mov         eax,dword ptr [ebp-4]
 004DFD77    call        004E2B78
 004DFD7C    mov         eax,dword ptr [ebp-4]
 004DFD7F    mov         byte ptr [eax+5B4],1
 004DFD86    mov         ecx,dword ptr [ebp-4]
 004DFD89    mov         dl,1
 004DFD8B    mov         eax,[0047EF18];TImageList
 004DFD90    call        TImageList.Create;TImageList.Create
 004DFD95    mov         edx,dword ptr [ebp-4]
 004DFD98    mov         dword ptr [edx+4C4],eax;TCustomMPHexEditor.?f4C4:TImageList
 004DFD9E    mov         eax,dword ptr [ebp-4]
 004DFDA1    mov         eax,dword ptr [eax+4C4];TCustomMPHexEditor.?f4C4:TImageList
 004DFDA7    mov         dl,3
 004DFDA9    call        TImageList.SetDrawingStyle
 004DFDAE    mov         eax,dword ptr [ebp-4]
 004DFDB1    mov         eax,dword ptr [eax+4C4];TCustomMPHexEditor.?f4C4:TImageList
 004DFDB7    xor         edx,edx
 004DFDB9    call        TImageList.SetBkColor
 004DFDBE    mov         eax,dword ptr [ebp-4]
 004DFDC1    mov         eax,dword ptr [eax+4C4];TCustomMPHexEditor.?f4C4:TImageList
 004DFDC7    mov         edx,0A
 004DFDCC    call        TImageList.SetWidth
 004DFDD1    mov         eax,dword ptr [ebp-4]
 004DFDD4    mov         eax,dword ptr [eax+4C4];TCustomMPHexEditor.?f4C4:TImageList
 004DFDDA    mov         edx,0A
 004DFDDF    call        TImageList.SetHeight
 004DFDE4    mov         dx,word ptr ds:[4E014C];0x4000 gvar_004E014C
 004DFDEB    mov         eax,dword ptr [ebp-4]
 004DFDEE    call        004DD9B0
 004DFDF3    mov         eax,dword ptr [ebp-4]
 004DFDF6    mov         dx,word ptr ds:[4E0150];0x0 gvar_004E0150
 004DFDFD    mov         word ptr [eax+290],dx;TCustomMPHexEditor.DesignOptionsBoost:TGridOptions
 004DFE04    mov         eax,dword ptr [ebp-4]
 004DFE07    mov         byte ptr [eax+28C],0;TCustomMPHexEditor.FDefaultDrawing:Boolean
 004DFE0E    mov         eax,dword ptr [ebp-4]
 004DFE11    mov         byte ptr [eax+28F],0;TCustomMPHexEditor.FSaveCellExtents:Boolean
 004DFE18    mov         ecx,dword ptr [ebp-4]
 004DFE1B    mov         dl,1
 004DFE1D    mov         eax,[004DEB30];TMPHColors
 004DFE22    call        TMPHColors.Create;TMPHColors.Create
 004DFE27    mov         edx,dword ptr [ebp-4]
 004DFE2A    mov         dword ptr [edx+4D0],eax;TCustomMPHexEditor.?f4D0:TMPHColors
 004DFE30    mov         eax,dword ptr [ebp-4]
 004DFE33    mov         byte ptr [eax+59A],0;TCustomMPHexEditor.?f59A:byte
 004DFE3A    xor         edx,edx
 004DFE3C    mov         eax,dword ptr [ebp-4]
 004DFE3F    call        TPanel.SetParentColor
 004DFE44    mov         dl,1
 004DFE46    mov         eax,[004DEDC8];TMPHMemoryStream
 004DFE4B    call        TObject.Create;TMPHMemoryStream.Create
 004DFE50    mov         edx,dword ptr [ebp-4]
 004DFE53    mov         dword ptr [edx+4E0],eax;TCustomMPHexEditor.?f4E0:TMPHMemoryStream
 004DFE59    mov         ecx,dword ptr [ebp-4]
 004DFE5C    mov         dl,1
 004DFE5E    mov         eax,[004DF1A4];TMPHUndoStorage
 004DFE63    call        TMPHUndoStorage.Create;TMPHUndoStorage.Create
 004DFE68    mov         edx,dword ptr [ebp-4]
 004DFE6B    mov         dword ptr [edx+618],eax;TCustomMPHexEditor.?f618:TMPHUndoStorage
 004DFE71    mov         eax,dword ptr [ebp-4]
 004DFE74    mov         eax,dword ptr [eax+4D0];TCustomMPHexEditor.?f4D0:TMPHColors
 004DFE7A    mov         edx,dword ptr [eax+1C];TMPHColors.Background:TColor
 004DFE7D    mov         eax,dword ptr [ebp-4]
 004DFE80    call        TPanel.SetColor
 004DFE85    mov         eax,dword ptr [ebp-4]
 004DFE88    mov         dword ptr [eax+4BC],0FFFFFFFF;TCustomMPHexEditor.?f4BC:Integer
 004DFE92    mov         eax,dword ptr [ebp-4]
 004DFE95    mov         dword ptr [eax+4D8],0FFFFFFFF;TCustomMPHexEditor.?f4D8:dword
 004DFE9F    mov         eax,dword ptr [ebp-4]
 004DFEA2    mov         dword ptr [eax+4D4],10;TCustomMPHexEditor.?f4D4:Integer
 004DFEAC    mov         eax,dword ptr [ebp-4]
 004DFEAF    mov         byte ptr [eax+55D],3;TCustomMPHexEditor.?f55D:byte
 004DFEB6    mov         eax,dword ptr [ebp-4]
 004DFEB9    mov         byte ptr [eax+4E8],1;TCustomMPHexEditor.?f4E8:byte
 004DFEC0    mov         eax,dword ptr [ebp-4]
 004DFEC3    xor         edx,edx
 004DFEC5    mov         dword ptr [eax+4E4],edx;TCustomMPHexEditor.?f4E4:dword
 004DFECB    mov         eax,dword ptr [ebp-4]
 004DFECE    add         eax,4F4;TCustomMPHexEditor.?f4F4:String
 004DFED3    mov         edx,4E015C;'---'
 004DFED8    call        @LStrAsg
 004DFEDD    mov         eax,dword ptr [ebp-4]
 004DFEE0    mov         eax,dword ptr [eax+68];TCustomMPHexEditor.FFont:TFont
 004DFEE3    mov         edx,4E0168;'Courier New'
 004DFEE8    call        TFont.SetName
 004DFEED    mov         eax,dword ptr [ebp-4]
 004DFEF0    mov         eax,dword ptr [eax+68];TCustomMPHexEditor.FFont:TFont
 004DFEF3    mov         edx,0B
 004DFEF8    call        TFont.SetSize
 004DFEFD    mov         dl,1
 004DFEFF    mov         eax,dword ptr [ebp-4]
 004DFF02    call        TMPHexEditorEx.SetBorderStyle
 004DFF07    mov         eax,dword ptr [ebp-4]
 004DFF0A    mov         dword ptr [eax+4EC],4;TCustomMPHexEditor.?f4EC:dword
 004DFF14    xor         edx,edx
 004DFF16    mov         eax,dword ptr [ebp-4]
 004DFF19    call        TPanel.SetCtl3D
 004DFF1E    mov         dx,0FFFC
 004DFF22    mov         eax,dword ptr [ebp-4]
 004DFF25    call        TSplitter.SetCursor
 004DFF2A    mov         dl,1
 004DFF2C    mov         eax,[0041D528];TBits
 004DFF31    call        TObject.Create;TBits.Create
 004DFF36    mov         edx,dword ptr [ebp-4]
 004DFF39    mov         dword ptr [edx+4F8],eax;TCustomMPHexEditor.?f4F8:TBits
 004DFF3F    xor         eax,eax
 004DFF41    mov         dword ptr [ebp-10],eax
 004DFF44    mov         eax,dword ptr [ebp-4]
 004DFF47    mov         edx,dword ptr [ebp-10]
 004DFF4A    mov         dword ptr [eax+edx*8+4FC],0FFFFFFFF
 004DFF55    inc         dword ptr [ebp-10]
 004DFF58    cmp         dword ptr [ebp-10],0A
>004DFF5C    jne         004DFF44
 004DFF5E    push        0FF
 004DFF60    or          ecx,0FFFFFFFF
 004DFF63    or          edx,0FFFFFFFF
 004DFF66    mov         eax,dword ptr [ebp-4]
 004DFF69    call        004E6110
 004DFF6E    mov         eax,dword ptr [ebp-4]
 004DFF71    mov         byte ptr [eax+614],0;TCustomMPHexEditor.?f614:byte
 004DFF78    mov         eax,dword ptr [ebp-4]
 004DFF7B    call        004E3D60
 004DFF80    xor         edx,edx
 004DFF82    mov         eax,dword ptr [ebp-4]
 004DFF85    call        004DD738
 004DFF8A    xor         edx,edx
 004DFF8C    mov         eax,dword ptr [ebp-4]
 004DFF8F    call        004DD788
 004DFF94    xor         ecx,ecx
 004DFF96    xor         edx,edx
 004DFF98    mov         eax,dword ptr [ebp-4]
 004DFF9B    call        004DDACC
 004DFFA0    xor         ecx,ecx
 004DFFA2    mov         edx,1
 004DFFA7    mov         eax,dword ptr [ebp-4]
 004DFFAA    call        004DDACC
 004DFFAF    mov         eax,dword ptr [ebp-4]
 004DFFB2    call        004E56E8
 004DFFB7    mov         edx,eax
 004DFFB9    mov         eax,dword ptr [ebp-4]
 004DFFBC    call        004DD5D0
 004DFFC1    mov         edx,3
 004DFFC6    mov         eax,dword ptr [ebp-4]
 004DFFC9    call        004DDA70
 004DFFCE    mov         eax,dword ptr [ebp-4]
 004DFFD1    mov         byte ptr [eax+55C],0;TCustomMPHexEditor.?f55C:byte
 004DFFD8    mov         eax,dword ptr [ebp-4]
 004DFFDB    mov         byte ptr [eax+67D],0;TCustomMPHexEditor.?f67D:byte
 004DFFE2    mov         eax,dword ptr [ebp-4]
 004DFFE5    mov         byte ptr [eax+4E9],1;TCustomMPHexEditor.?f4E9:byte
 004DFFEC    mov         eax,dword ptr [ebp-4]
 004DFFEF    mov         eax,dword ptr [eax+4D4];TCustomMPHexEditor.?f4D4:Integer
 004DFFF5    add         eax,eax
 004DFFF7    mov         edx,dword ptr [ebp-4]
 004DFFFA    mov         dword ptr [edx+4DC],eax;TCustomMPHexEditor.?f4DC:dword
 004E0000    mov         eax,dword ptr [ebp-4]
 004E0003    mov         eax,dword ptr [eax+4DC];TCustomMPHexEditor.?f4DC:dword
 004E0009    add         eax,2
 004E000C    dec         eax
 004E000D    mov         edx,dword ptr [ebp-4]
 004E0010    mov         dword ptr [edx+29C],eax;TCustomMPHexEditor.?f29C:dword
 004E0016    mov         eax,dword ptr [ebp-4]
 004E0019    mov         byte ptr [eax+55E],2E;TCustomMPHexEditor.?f55E:byte
 004E0020    mov         dl,1
 004E0022    mov         eax,[0042CF48];TBitmap
 004E0027    call        TBitmap.Create;TBitmap.Create
 004E002C    mov         edx,dword ptr [ebp-4]
 004E002F    mov         dword ptr [edx+4CC],eax;TCustomMPHexEditor.?f4CC:TBitmap
 004E0035    mov         eax,dword ptr [ebp-4]
 004E0038    mov         byte ptr [eax+4B8],0;TCustomMPHexEditor.?f4B8:byte
 004E003F    mov         eax,dword ptr [ebp-4]
 004E0042    mov         byte ptr [eax+67C],0;TCustomMPHexEditor.?f67C:byte
 004E0049    mov         eax,dword ptr [ebp-4]
 004E004C    mov         byte ptr [eax+55F],1;TCustomMPHexEditor.?f55F:byte
 004E0053    mov         eax,dword ptr [ebp-4]
 004E0056    mov         byte ptr [eax+4C8],0;TCustomMPHexEditor.?f4C8:byte
 004E005D    mov         eax,dword ptr [ebp-4]
 004E0060    mov         byte ptr [eax+560],1;TCustomMPHexEditor.?f560:byte
 004E0067    mov         eax,dword ptr [ebp-4]
 004E006A    mov         byte ptr [eax+561],0;TCustomMPHexEditor.?f561:byte
 004E0071    mov         eax,dword ptr [ebp-4]
 004E0074    mov         byte ptr [eax+562],0;TCustomMPHexEditor.?f562:byte
 004E007B    mov         eax,dword ptr [ebp-4]
 004E007E    mov         byte ptr [eax+563],0;TCustomMPHexEditor.?f563:byte
 004E0085    mov         eax,dword ptr [ebp-4]
 004E0088    xor         edx,edx
 004E008A    mov         dword ptr [eax+568],edx;TCustomMPHexEditor.?f568:dword
 004E0090    mov         dword ptr [eax+56C],edx;TCustomMPHexEditor.?f56C:dword
 004E0096    mov         eax,dword ptr [ebp-4]
 004E0099    mov         byte ptr [eax+578],0;TCustomMPHexEditor.?f578:byte
 004E00A0    mov         eax,dword ptr [ebp-4]
 004E00A3    mov         dword ptr [eax+558],0FFFFFFFF;TCustomMPHexEditor.?f558:dword
 004E00AD    mov         eax,dword ptr [ebp-4]
 004E00B0    mov         eax,dword ptr [eax+5B8]
 004E00B6    mov         edx,dword ptr [ebp-4]
 004E00B9    mov         dword ptr [eax+14],edx
 004E00BC    mov         dword ptr [eax+10],4E8400;sub_004E8400
 004E00C3    mov         eax,dword ptr [ebp-4]
 004E00C6    mov         eax,dword ptr [eax+5B8]
 004E00CC    mov         ecx,4E017C;'BOOKMARKICONS'
 004E00D1    mov         edx,dword ptr ds:[56F668];0x0 HInstance:LongWord
 004E00D7    call        00435134
 004E00DC    mov         eax,dword ptr [ebp-4]
 004E00DF    call        004E89EC
 004E00E4    mov         eax,dword ptr [ebp-4]
 004E00E7    mov         eax,dword ptr [eax+50];TCustomMPHexEditor.FControlStyle:TControlStyle
 004E00EA    or          eax,dword ptr ds:[4E018C];0x20000 gvar_004E018C
 004E00F0    mov         edx,dword ptr [ebp-4]
 004E00F3    mov         dword ptr [edx+50],eax;TCustomMPHexEditor.FControlStyle:TControlStyle
 004E00F6    mov         eax,dword ptr [ebp-4]
 004E00F9    cmp         byte ptr [ebp-5],0
>004E00FD    je          004E010E
 004E00FF    call        @AfterConstruction
 004E0104    pop         dword ptr fs:[0]
 004E010B    add         esp,0C
 004E010E    mov         eax,dword ptr [ebp-4]
 004E0111    pop         edi
 004E0112    pop         esi
 004E0113    mov         esp,ebp
 004E0115    pop         ebp
 004E0116    ret
*}
end;

//004E0190
destructor TCustomMPHexEditor.Destroy;
begin
{*
 004E0190    push        ebp
 004E0191    mov         ebp,esp
 004E0193    add         esp,0FFFFFFF8
 004E0196    call        @BeforeDestruction
 004E019B    mov         byte ptr [ebp-5],dl
 004E019E    mov         dword ptr [ebp-4],eax
 004E01A1    mov         eax,dword ptr [ebp-4]
 004E01A4    add         eax,5BC
 004E01A9    mov         edx,dword ptr ds:[4DEF2C];_DynArr_80_5
 004E01AF    call        @DynArrayClear
 004E01B4    mov         eax,dword ptr [ebp-4]
 004E01B7    mov         eax,dword ptr [eax+5B8]
 004E01BD    xor         edx,edx
 004E01BF    mov         dword ptr [eax+10],edx
 004E01C2    mov         dword ptr [eax+14],edx
 004E01C5    xor         edx,edx
 004E01C7    mov         eax,dword ptr [ebp-4]
 004E01CA    call        004E8640
 004E01CF    mov         dl,1
 004E01D1    mov         eax,dword ptr [ebp-4]
 004E01D4    call        004E8640
 004E01D9    mov         eax,dword ptr [ebp-4]
 004E01DC    mov         eax,dword ptr [eax+618]
 004E01E2    call        TObject.Free
 004E01E7    mov         eax,dword ptr [ebp-4]
 004E01EA    mov         eax,dword ptr [eax+4E0]
 004E01F0    call        TObject.Free
 004E01F5    mov         eax,dword ptr [ebp-4]
 004E01F8    mov         eax,dword ptr [eax+4F8]
 004E01FE    call        TObject.Free
 004E0203    mov         eax,dword ptr [ebp-4]
 004E0206    mov         eax,dword ptr [eax+4D0]
 004E020C    call        TObject.Free
 004E0211    mov         eax,dword ptr [ebp-4]
 004E0214    mov         eax,dword ptr [eax+4CC]
 004E021A    call        TObject.Free
 004E021F    mov         eax,dword ptr [ebp-4]
 004E0222    mov         eax,dword ptr [eax+4C4]
 004E0228    call        TObject.Free
 004E022D    mov         eax,dword ptr [ebp-4]
 004E0230    mov         eax,dword ptr [eax+5B8]
 004E0236    call        TObject.Free
 004E023B    mov         dl,byte ptr [ebp-5]
 004E023E    and         dl,0FC
 004E0241    mov         eax,dword ptr [ebp-4]
 004E0244    call        TCustomGrid.Destroy
 004E0249    cmp         byte ptr [ebp-5],0
>004E024D    jle         004E0257
 004E024F    mov         eax,dword ptr [ebp-4]
 004E0252    call        @ClassDestroy
 004E0257    pop         ecx
 004E0258    pop         ecx
 004E0259    pop         ebp
 004E025A    ret
*}
end;

//004E025C
procedure sub_004E025C(?:TCustomMPHexEditor);
begin
{*
 004E025C    push        ebp
 004E025D    mov         ebp,esp
 004E025F    add         esp,0FFFFFFF0
 004E0262    mov         dword ptr [ebp-4],eax
 004E0265    mov         eax,dword ptr [ebp-4]
 004E0268    mov         eax,dword ptr [eax+208]
 004E026E    mov         eax,dword ptr [eax+0C]
 004E0271    mov         edx,dword ptr [ebp-4]
 004E0274    mov         edx,dword ptr [edx+68]
 004E0277    mov         ecx,dword ptr [eax]
 004E0279    call        dword ptr [ecx+8]
 004E027C    mov         edx,4E0578;'w'
 004E0281    mov         eax,dword ptr [ebp-4]
 004E0284    mov         eax,dword ptr [eax+208]
 004E028A    call        0042F43C
 004E028F    mov         edx,dword ptr [ebp-4]
 004E0292    mov         dword ptr [edx+4BC],eax
 004E0298    mov         eax,dword ptr [ebp-4]
 004E029B    call        004E4F24
 004E02A0    mov         ecx,6
 004E02A5    mov         edx,1
 004E02AA    mov         eax,dword ptr [ebp-4]
 004E02AD    call        004E9008
 004E02B2    mov         eax,dword ptr [ebp-4]
 004E02B5    mov         eax,dword ptr [eax+4DC]
 004E02BB    test        eax,eax
>004E02BD    jl          004E0368
 004E02C3    inc         eax
 004E02C4    mov         dword ptr [ebp-10],eax
 004E02C7    mov         dword ptr [ebp-8],0
 004E02CE    mov         eax,dword ptr [ebp-4]
 004E02D1    mov         eax,dword ptr [eax+4DC]
 004E02D7    dec         eax
 004E02D8    cmp         eax,dword ptr [ebp-8]
>004E02DB    jne         004E02ED
 004E02DD    mov         eax,dword ptr [ebp-4]
 004E02E0    mov         eax,dword ptr [eax+4BC]
 004E02E6    add         eax,eax
 004E02E8    mov         dword ptr [ebp-0C],eax
>004E02EB    jmp         004E034B
 004E02ED    mov         eax,dword ptr [ebp-4]
 004E02F0    mov         eax,dword ptr [eax+4BC]
 004E02F6    mov         dword ptr [ebp-0C],eax
 004E02F9    mov         eax,dword ptr [ebp-8]
 004E02FC    add         eax,2
 004E02FF    mov         edx,dword ptr [ebp-4]
 004E0302    mov         ecx,dword ptr [edx+4EC]
 004E0308    cdq
 004E0309    idiv        eax,ecx
 004E030B    dec         edx
>004E030C    jne         004E031A
 004E030E    mov         eax,dword ptr [ebp-4]
 004E0311    mov         eax,dword ptr [eax+4BC]
 004E0317    add         dword ptr [ebp-0C],eax
 004E031A    mov         eax,dword ptr [ebp-4]
 004E031D    cmp         dword ptr [eax+4A4],1
>004E0324    jle         004E034B
 004E0326    mov         eax,dword ptr [ebp-8]
 004E0329    add         eax,2
 004E032C    mov         edx,dword ptr [ebp-4]
 004E032F    mov         edx,dword ptr [edx+4A4]
 004E0335    add         edx,edx
 004E0337    mov         ecx,edx
 004E0339    cdq
 004E033A    idiv        eax,ecx
 004E033C    dec         edx
>004E033D    jne         004E034B
 004E033F    mov         eax,dword ptr [ebp-4]
 004E0342    mov         eax,dword ptr [eax+4BC]
 004E0348    add         dword ptr [ebp-0C],eax
 004E034B    mov         edx,dword ptr [ebp-8]
 004E034E    add         edx,2
 004E0351    mov         ecx,dword ptr [ebp-0C]
 004E0354    mov         eax,dword ptr [ebp-4]
 004E0357    call        004E9008
 004E035C    inc         dword ptr [ebp-8]
 004E035F    dec         dword ptr [ebp-10]
>004E0362    jne         004E02CE
 004E0368    mov         eax,dword ptr [ebp-4]
 004E036B    cmp         byte ptr [eax+61C],0
>004E0372    je          004E038A
 004E0374    mov         eax,dword ptr [ebp-4]
 004E0377    mov         eax,dword ptr [eax+4D4]
 004E037D    sar         eax,1
>004E037F    jns         004E0384
 004E0381    adc         eax,0
 004E0384    dec         eax
 004E0385    mov         dword ptr [ebp-8],eax
>004E0388    jmp         004E0397
 004E038A    mov         eax,dword ptr [ebp-4]
 004E038D    mov         eax,dword ptr [eax+4D4]
 004E0393    dec         eax
 004E0394    mov         dword ptr [ebp-8],eax
 004E0397    mov         eax,dword ptr [ebp-8]
 004E039A    test        eax,eax
>004E039C    jl          004E04D5
 004E03A2    inc         eax
 004E03A3    mov         dword ptr [ebp-10],eax
 004E03A6    mov         dword ptr [ebp-8],0
 004E03AD    mov         eax,dword ptr [ebp-4]
 004E03B0    cmp         dword ptr [eax+610],1
>004E03B7    jle         004E03FB
 004E03B9    mov         eax,dword ptr [ebp-8]
 004E03BC    mov         edx,dword ptr [ebp-4]
 004E03BF    mov         ecx,dword ptr [edx+610]
 004E03C5    cdq
 004E03C6    idiv        eax,ecx
 004E03C8    mov         eax,dword ptr [ebp-4]
 004E03CB    mov         eax,dword ptr [eax+610]
 004E03D1    dec         eax
 004E03D2    cmp         edx,eax
>004E03D4    jne         004E03FB
 004E03D6    mov         eax,dword ptr [ebp-4]
 004E03D9    cmp         byte ptr [eax+61C],0
>004E03E0    jne         004E03FB
 004E03E2    mov         eax,dword ptr [ebp-4]
 004E03E5    mov         eax,dword ptr [eax+4BC]
 004E03EB    lea         eax,[eax+eax*2]
 004E03EE    sar         eax,1
>004E03F0    jns         004E03F5
 004E03F2    adc         eax,0
 004E03F5    inc         eax
 004E03F6    mov         dword ptr [ebp-0C],eax
>004E03F9    jmp         004E0408
 004E03FB    mov         eax,dword ptr [ebp-4]
 004E03FE    mov         eax,dword ptr [eax+4BC]
 004E0404    inc         eax
 004E0405    mov         dword ptr [ebp-0C],eax
 004E0408    mov         eax,dword ptr [ebp-4]
 004E040B    cmp         byte ptr [eax+61C],0
>004E0412    jne         004E045B
 004E0414    mov         eax,dword ptr [ebp-4]
 004E0417    cmp         dword ptr [eax+4A4],1
>004E041E    jle         004E04AE
 004E0424    mov         eax,dword ptr [ebp-4]
 004E0427    cmp         byte ptr [eax+4A8],0
>004E042E    je          004E04AE
 004E0430    mov         eax,dword ptr [ebp-8]
 004E0433    mov         edx,dword ptr [ebp-4]
 004E0436    mov         ecx,dword ptr [edx+4A4]
 004E043C    cdq
 004E043D    idiv        eax,ecx
 004E043F    mov         eax,dword ptr [ebp-4]
 004E0442    mov         eax,dword ptr [eax+4A4]
 004E0448    dec         eax
 004E0449    cmp         edx,eax
>004E044B    jne         004E04AE
 004E044D    mov         eax,dword ptr [ebp-4]
 004E0450    mov         eax,dword ptr [eax+4BC]
 004E0456    add         dword ptr [ebp-0C],eax
>004E0459    jmp         004E04AE
 004E045B    mov         eax,dword ptr [ebp-4]
 004E045E    cmp         dword ptr [eax+4A4],1
>004E0465    jle         004E04AE
 004E0467    mov         eax,dword ptr [ebp-4]
 004E046A    cmp         byte ptr [eax+4A8],0
>004E0471    je          004E04AE
 004E0473    mov         eax,dword ptr [ebp-4]
 004E0476    mov         eax,dword ptr [eax+4A4]
 004E047C    sar         eax,1
>004E047E    jns         004E0483
 004E0480    adc         eax,0
 004E0483    push        eax
 004E0484    mov         eax,dword ptr [ebp-8]
 004E0487    pop         edx
 004E0488    mov         ecx,edx
 004E048A    cdq
 004E048B    idiv        eax,ecx
 004E048D    mov         eax,dword ptr [ebp-4]
 004E0490    mov         eax,dword ptr [eax+4A4]
 004E0496    sar         eax,1
>004E0498    jns         004E049D
 004E049A    adc         eax,0
 004E049D    dec         eax
 004E049E    cmp         edx,eax
>004E04A0    jne         004E04AE
 004E04A2    mov         eax,dword ptr [ebp-4]
 004E04A5    mov         eax,dword ptr [eax+4BC]
 004E04AB    add         dword ptr [ebp-0C],eax
 004E04AE    mov         edx,dword ptr [ebp-8]
 004E04B1    add         edx,2
 004E04B4    mov         eax,dword ptr [ebp-4]
 004E04B7    add         edx,dword ptr [eax+4DC]
 004E04BD    inc         edx
 004E04BE    mov         ecx,dword ptr [ebp-0C]
 004E04C1    mov         eax,dword ptr [ebp-4]
 004E04C4    call        004E9008
 004E04C9    inc         dword ptr [ebp-8]
 004E04CC    dec         dword ptr [ebp-10]
>004E04CF    jne         004E03AD
 004E04D5    mov         eax,dword ptr [ebp-4]
 004E04D8    call        004E5740
 004E04DD    mov         edx,eax
 004E04DF    mov         eax,dword ptr [ebp-4]
 004E04E2    mov         ecx,dword ptr [eax+4BC]
 004E04E8    add         ecx,ecx
 004E04EA    inc         ecx
 004E04EB    mov         eax,dword ptr [ebp-4]
 004E04EE    call        004E9008
 004E04F3    mov         edx,4E0584;'yY'
 004E04F8    mov         eax,dword ptr [ebp-4]
 004E04FB    mov         eax,dword ptr [eax+208]
 004E0501    call        0042F464
 004E0506    add         eax,2
 004E0509    mov         edx,dword ptr [ebp-4]
 004E050C    mov         dword ptr [edx+4C0],eax
 004E0512    mov         eax,dword ptr [ebp-4]
 004E0515    mov         edx,dword ptr [eax+4C0]
 004E051B    mov         eax,dword ptr [ebp-4]
 004E051E    call        004DD788
 004E0523    xor         ecx,ecx
 004E0525    mov         edx,1
 004E052A    mov         eax,dword ptr [ebp-4]
 004E052D    call        004DDACC
 004E0532    mov         eax,dword ptr [ebp-4]
 004E0535    cmp         byte ptr [eax+5F0],0
>004E053C    je          004E0556
 004E053E    mov         eax,dword ptr [ebp-4]
 004E0541    mov         ecx,dword ptr [eax+234]
 004E0547    add         ecx,3
 004E054A    xor         edx,edx
 004E054C    mov         eax,dword ptr [ebp-4]
 004E054F    call        004DDACC
>004E0554    jmp         004E0562
 004E0556    xor         ecx,ecx
 004E0558    xor         edx,edx
 004E055A    mov         eax,dword ptr [ebp-4]
 004E055D    call        004DDACC
 004E0562    mov         eax,dword ptr [ebp-4]
 004E0565    call        004E9B18
 004E056A    mov         esp,ebp
 004E056C    pop         ebp
 004E056D    ret
*}
end;

//004E0588
{*function sub_004E0588(?:TCustomMPHexEditor):?;
begin
 004E0588    push        ebp
 004E0589    mov         ebp,esp
 004E058B    add         esp,0FFFFFFF8
 004E058E    mov         dword ptr [ebp-4],eax
 004E0591    mov         eax,dword ptr [ebp-4]
 004E0594    mov         eax,dword ptr [eax+4E0]
 004E059A    mov         edx,dword ptr [eax]
 004E059C    call        dword ptr [edx]
 004E059E    mov         dword ptr [ebp-8],eax
 004E05A1    mov         eax,dword ptr [ebp-8]
 004E05A4    pop         ecx
 004E05A5    pop         ecx
 004E05A6    pop         ebp
 004E05A7    ret
end;*}

//004E05A8
{*procedure sub_004E05A8(?:TCustomMPHexEditor; ?:?);
begin
 004E05A8    push        ebp
 004E05A9    mov         ebp,esp
 004E05AB    add         esp,0FFFFFFF8
 004E05AE    mov         dword ptr [ebp-8],edx
 004E05B1    mov         dword ptr [ebp-4],eax
 004E05B4    xor         edx,edx
 004E05B6    mov         eax,dword ptr [ebp-4]
 004E05B9    call        004E8640
 004E05BE    cmp         dword ptr [ebp-8],0
>004E05C2    jne         004E05D9
 004E05C4    mov         eax,dword ptr [ebp-4]
 004E05C7    lea         edx,[eax+4F4]
 004E05CD    mov         eax,4DF394;^HInstance:LongWord
 004E05D2    call        LoadResString
>004E05D7    jmp         004E05E9
 004E05D9    mov         eax,dword ptr [ebp-4]
 004E05DC    add         eax,4F4
 004E05E1    mov         edx,dword ptr [ebp-8]
 004E05E4    call        @LStrAsg
 004E05E9    mov         eax,dword ptr [ebp-4]
 004E05EC    call        004E3D60
 004E05F1    xor         edx,edx
 004E05F3    mov         eax,dword ptr [ebp-4]
 004E05F6    call        004E31CC
 004E05FB    xor         edx,edx
 004E05FD    mov         eax,dword ptr [ebp-4]
 004E0600    mov         eax,dword ptr [eax+4F8]
 004E0606    call        TBits.SetSize
 004E060B    mov         eax,dword ptr [ebp-4]
 004E060E    call        004E0AC0
 004E0613    mov         eax,dword ptr [ebp-4]
 004E0616    mov         byte ptr [eax+67D],0
 004E061D    mov         eax,dword ptr [ebp-4]
 004E0620    mov         byte ptr [eax+4E9],1
 004E0627    mov         eax,dword ptr [ebp-4]
 004E062A    mov         byte ptr [eax+5C8],0
 004E0631    push        1
 004E0633    push        1
 004E0635    mov         ecx,2
 004E063A    mov         edx,2
 004E063F    mov         eax,dword ptr [ebp-4]
 004E0642    call        004D8CCC
 004E0647    mov         eax,dword ptr [ebp-4]
 004E064A    mov         edx,dword ptr [eax]
 004E064C    call        dword ptr [edx+0EC]
 004E0652    pop         ecx
 004E0653    pop         ecx
 004E0654    pop         ebp
 004E0655    ret
end;*}

//004E0658
{*procedure sub_004E0658(?:?; ?:TFileStream);
begin
 004E0658    push        ebp
 004E0659    mov         ebp,esp
 004E065B    add         esp,0FFFFFFF8
 004E065E    mov         dword ptr [ebp-8],edx
 004E0661    mov         dword ptr [ebp-4],eax
 004E0664    mov         eax,dword ptr [ebp-4]
 004E0667    call        004E86E8
 004E066C    xor         eax,eax
 004E066E    push        ebp
 004E066F    push        4E06C2
 004E0674    push        dword ptr fs:[eax]
 004E0677    mov         dword ptr fs:[eax],esp
 004E067A    push        0
 004E067C    push        0
 004E067E    mov         eax,dword ptr [ebp-4]
 004E0681    mov         eax,dword ptr [eax+4E0]
 004E0687    call        TStream.SetPosition
 004E068C    push        1
 004E068E    push        0FF
 004E0690    mov         eax,dword ptr [ebp-4]
 004E0693    mov         edx,dword ptr [eax+4E0]
 004E0699    mov         ecx,dword ptr [ebp-8]
 004E069C    mov         eax,dword ptr [ebp-4]
 004E069F    call        004E0DEC
 004E06A4    xor         eax,eax
 004E06A6    pop         edx
 004E06A7    pop         ecx
 004E06A8    pop         ecx
 004E06A9    mov         dword ptr fs:[eax],edx
 004E06AC    push        4E06C9
 004E06B1    mov         eax,dword ptr [ebp-4]
 004E06B4    mov         edx,dword ptr [eax]
 004E06B6    call        dword ptr [edx+7C]
 004E06B9    mov         eax,dword ptr [ebp-4]
 004E06BC    call        004E867C
 004E06C1    ret
>004E06C2    jmp         @HandleFinally
>004E06C7    jmp         004E06B1
 004E06C9    pop         ecx
 004E06CA    pop         ecx
 004E06CB    pop         ebp
 004E06CC    ret
end;*}

//004E06D0
{*procedure sub_004E06D0(?:TMPHexEditorEx; ?:String; ?:?);
begin
 004E06D0    push        ebp
 004E06D1    mov         ebp,esp
 004E06D3    add         esp,0FFFFFFF0
 004E06D6    mov         byte ptr [ebp-9],cl
 004E06D9    mov         dword ptr [ebp-8],edx
 004E06DC    mov         dword ptr [ebp-4],eax
 004E06DF    mov         eax,dword ptr [ebp-4]
 004E06E2    mov         eax,dword ptr [eax+4F4]
 004E06E8    mov         edx,dword ptr [ebp-8]
 004E06EB    call        @LStrCmp
>004E06F0    jne         004E06FD
 004E06F2    mov         eax,dword ptr [ebp-4]
 004E06F5    mov         edx,dword ptr [eax]
 004E06F7    call        dword ptr [edx+0F0]
 004E06FD    push        0FFFF
 004E0702    mov         ecx,dword ptr [ebp-8]
 004E0705    mov         dl,1
 004E0707    mov         eax,[0041DD24];TFileStream
 004E070C    call        TFileStream.Create;TFileStream.Create
 004E0711    mov         dword ptr [ebp-10],eax
 004E0714    xor         eax,eax
 004E0716    push        ebp
 004E0717    push        4E07BE
 004E071C    push        dword ptr fs:[eax]
 004E071F    mov         dword ptr fs:[eax],esp
 004E0722    mov         eax,dword ptr [ebp-4]
 004E0725    add         eax,5C4
 004E072A    mov         edx,dword ptr [ebp-8]
 004E072D    call        @LStrAsg
 004E0732    mov         edx,dword ptr [ebp-10]
 004E0735    mov         eax,dword ptr [ebp-4]
 004E0738    call        004E0658
 004E073D    mov         eax,dword ptr [ebp-4]
 004E0740    mov         byte ptr [eax+5C8],1
 004E0747    cmp         byte ptr [ebp-9],0
>004E074B    je          004E079B
 004E074D    mov         eax,dword ptr [ebp-4]
 004E0750    mov         eax,dword ptr [eax+4F8]
 004E0756    xor         edx,edx
 004E0758    call        TBits.SetSize
 004E075D    mov         eax,dword ptr [ebp-4]
 004E0760    mov         byte ptr [eax+67D],0
 004E0767    mov         eax,dword ptr [ebp-4]
 004E076A    mov         byte ptr [eax+4E9],0
 004E0771    mov         eax,dword ptr [ebp-4]
 004E0774    add         eax,4F4
 004E0779    mov         edx,dword ptr [ebp-8]
 004E077C    call        @LStrAsg
 004E0781    push        0
 004E0783    push        0
 004E0785    mov         eax,dword ptr [ebp-4]
 004E0788    mov         eax,dword ptr [eax+4E0]
 004E078E    call        TStream.SetPosition
 004E0793    mov         eax,dword ptr [ebp-4]
 004E0796    call        004E3D60
 004E079B    xor         eax,eax
 004E079D    pop         edx
 004E079E    pop         ecx
 004E079F    pop         ecx
 004E07A0    mov         dword ptr fs:[eax],edx
 004E07A3    push        4E07C5
 004E07A8    mov         eax,dword ptr [ebp-4]
 004E07AB    add         eax,5C4
 004E07B0    call        @LStrClr
 004E07B5    mov         eax,dword ptr [ebp-10]
 004E07B8    call        TObject.Free
 004E07BD    ret
>004E07BE    jmp         @HandleFinally
>004E07C3    jmp         004E07A8
 004E07C5    mov         esp,ebp
 004E07C7    pop         ebp
 004E07C8    ret
end;*}

//004E07CC
{*procedure sub_004E07CC(?:?; ?:TFileStream);
begin
 004E07CC    push        ebp
 004E07CD    mov         ebp,esp
 004E07CF    add         esp,0FFFFFFF4
 004E07D2    push        ebx
 004E07D3    push        esi
 004E07D4    push        edi
 004E07D5    mov         dword ptr [ebp-8],edx
 004E07D8    mov         dword ptr [ebp-4],eax
 004E07DB    xor         eax,eax
 004E07DD    push        ebp
 004E07DE    push        4E0926
 004E07E3    push        dword ptr fs:[eax]
 004E07E6    mov         dword ptr fs:[eax],esp
 004E07E9    xor         edx,edx
 004E07EB    mov         eax,dword ptr [ebp-4]
 004E07EE    call        004E8640
 004E07F3    mov         eax,dword ptr [ebp-4]
 004E07F6    call        004E0AC0
 004E07FB    mov         eax,dword ptr [ebp-4]
 004E07FE    call        004E86E8
 004E0803    xor         eax,eax
 004E0805    push        ebp
 004E0806    push        4E0915
 004E080B    push        dword ptr fs:[eax]
 004E080E    mov         dword ptr fs:[eax],esp
 004E0811    xor         eax,eax
 004E0813    push        ebp
 004E0814    push        4E08F8
 004E0819    push        dword ptr fs:[eax]
 004E081C    mov         dword ptr fs:[eax],esp
 004E081F    push        0
 004E0821    push        0
 004E0823    mov         eax,dword ptr [ebp-8]
 004E0826    call        TStream.SetPosition
 004E082B    mov         eax,dword ptr [ebp-8]
 004E082E    mov         edx,dword ptr [eax]
 004E0830    call        dword ptr [edx]
 004E0832    push        edx
 004E0833    push        eax
 004E0834    mov         eax,dword ptr [ebp-4]
 004E0837    mov         eax,dword ptr [eax+4E0]
 004E083D    call        004235FC
 004E0842    push        0
 004E0844    push        0
 004E0846    mov         eax,dword ptr [ebp-4]
 004E0849    mov         eax,dword ptr [eax+4E0]
 004E084F    call        TStream.SetPosition
 004E0854    push        0
 004E0856    push        0FF
 004E0858    mov         eax,dword ptr [ebp-4]
 004E085B    mov         ecx,dword ptr [eax+4E0]
 004E0861    mov         edx,dword ptr [ebp-8]
 004E0864    mov         eax,dword ptr [ebp-4]
 004E0867    call        004E0DEC
 004E086C    push        0
 004E086E    push        0
 004E0870    mov         eax,dword ptr [ebp-4]
 004E0873    mov         eax,dword ptr [eax+4E0]
 004E0879    call        TStream.SetPosition
 004E087E    xor         eax,eax
 004E0880    pop         edx
 004E0881    pop         ecx
 004E0882    pop         ecx
 004E0883    mov         dword ptr fs:[eax],edx
 004E0886    push        4E08FF
 004E088B    mov         eax,dword ptr [ebp-4]
 004E088E    mov         eax,dword ptr [eax+618]
 004E0894    mov         dword ptr [ebp-0C],eax
 004E0897    mov         eax,dword ptr [ebp-0C]
 004E089A    cmp         dword ptr [eax+18],1
>004E089E    jge         004E08AA
 004E08A0    mov         dl,1
 004E08A2    mov         eax,dword ptr [ebp-0C]
 004E08A5    call        004EB4F0
 004E08AA    mov         eax,dword ptr [ebp-4]
 004E08AD    mov         eax,dword ptr [eax+4F8]
 004E08B3    xor         edx,edx
 004E08B5    call        TBits.SetSize
 004E08BA    mov         eax,dword ptr [ebp-4]
 004E08BD    call        004E0AC0
 004E08C2    mov         eax,dword ptr [ebp-4]
 004E08C5    mov         byte ptr [eax+67D],0
 004E08CC    mov         eax,dword ptr [ebp-4]
 004E08CF    mov         byte ptr [eax+614],0
 004E08D6    push        1
 004E08D8    push        1
 004E08DA    mov         ecx,2
 004E08DF    mov         edx,2
 004E08E4    mov         eax,dword ptr [ebp-4]
 004E08E7    call        004D8CCC
 004E08EC    mov         eax,dword ptr [ebp-4]
 004E08EF    mov         edx,dword ptr [eax]
 004E08F1    call        dword ptr [edx+0EC]
 004E08F7    ret
>004E08F8    jmp         @HandleFinally
>004E08FD    jmp         004E088B
 004E08FF    xor         eax,eax
 004E0901    pop         edx
 004E0902    pop         ecx
 004E0903    pop         ecx
 004E0904    mov         dword ptr fs:[eax],edx
 004E0907    push        4E091C
 004E090C    mov         eax,dword ptr [ebp-4]
 004E090F    call        004E867C
 004E0914    ret
>004E0915    jmp         @HandleFinally
>004E091A    jmp         004E090C
 004E091C    xor         eax,eax
 004E091E    pop         edx
 004E091F    pop         ecx
 004E0920    pop         ecx
 004E0921    mov         dword ptr fs:[eax],edx
>004E0924    jmp         004E0953
>004E0926    jmp         @HandleAnyException
 004E092B    xor         edx,edx
 004E092D    mov         eax,dword ptr [ebp-4]
 004E0930    call        004E8640
 004E0935    mov         dl,1
 004E0937    mov         eax,dword ptr [ebp-4]
 004E093A    call        004E8640
 004E093F    mov         eax,dword ptr [ebp-4]
 004E0942    mov         byte ptr [eax+5C8],0
 004E0949    call        @RaiseAgain
 004E094E    call        @DoneExcept
 004E0953    pop         edi
 004E0954    pop         esi
 004E0955    pop         ebx
 004E0956    mov         esp,ebp
 004E0958    pop         ebp
 004E0959    ret
end;*}

//004E095C
{*procedure sub_004E095C(?:TMPHexEditorEx; ?:?);
begin
 004E095C    push        ebp
 004E095D    mov         ebp,esp
 004E095F    add         esp,0FFFFFFDC
 004E0962    push        ebx
 004E0963    push        esi
 004E0964    push        edi
 004E0965    xor         ecx,ecx
 004E0967    mov         dword ptr [ebp-20],ecx
 004E096A    mov         dword ptr [ebp-24],ecx
 004E096D    mov         dword ptr [ebp-8],edx
 004E0970    mov         dword ptr [ebp-4],eax
 004E0973    xor         eax,eax
 004E0975    push        ebp
 004E0976    push        4E0AAF
 004E097B    push        dword ptr fs:[eax]
 004E097E    mov         dword ptr fs:[eax],esp
 004E0981    mov         eax,dword ptr [ebp-4]
 004E0984    lea         edx,[eax+4E9]
 004E098A    mov         eax,dword ptr [ebp-8]
 004E098D    call        004DF500
 004E0992    test        al,al
>004E0994    je          004E0A4C
 004E099A    push        40
 004E099C    mov         ecx,dword ptr [ebp-8]
 004E099F    mov         dl,1
 004E09A1    mov         eax,[0041DD24];TFileStream
 004E09A6    call        TFileStream.Create;TFileStream.Create
 004E09AB    mov         dword ptr [ebp-0C],eax
 004E09AE    xor         eax,eax
 004E09B0    push        ebp
 004E09B1    push        4E0A45
 004E09B6    push        dword ptr fs:[eax]
 004E09B9    mov         dword ptr fs:[eax],esp
 004E09BC    mov         eax,dword ptr [ebp-4]
 004E09BF    add         eax,5C4
 004E09C4    mov         edx,dword ptr [ebp-8]
 004E09C7    call        @LStrAsg
 004E09CC    xor         eax,eax
 004E09CE    push        ebp
 004E09CF    push        4E09EF
 004E09D4    push        dword ptr fs:[eax]
 004E09D7    mov         dword ptr fs:[eax],esp
 004E09DA    mov         edx,dword ptr [ebp-0C]
 004E09DD    mov         eax,dword ptr [ebp-4]
 004E09E0    call        004E07CC
 004E09E5    xor         eax,eax
 004E09E7    pop         edx
 004E09E8    pop         ecx
 004E09E9    pop         ecx
 004E09EA    mov         dword ptr fs:[eax],edx
>004E09ED    jmp         004E0A08
>004E09EF    jmp         @HandleAnyException
 004E09F4    mov         eax,dword ptr [ebp-4]
 004E09F7    mov         byte ptr [eax+5C8],0
 004E09FE    call        @RaiseAgain
 004E0A03    call        @DoneExcept
 004E0A08    mov         eax,dword ptr [ebp-4]
 004E0A0B    add         eax,4F4
 004E0A10    mov         edx,dword ptr [ebp-8]
 004E0A13    call        @LStrAsg
 004E0A18    mov         eax,dword ptr [ebp-4]
 004E0A1B    mov         byte ptr [eax+5C8],1
 004E0A22    xor         eax,eax
 004E0A24    pop         edx
 004E0A25    pop         ecx
 004E0A26    pop         ecx
 004E0A27    mov         dword ptr fs:[eax],edx
 004E0A2A    push        4E0A94
 004E0A2F    mov         eax,dword ptr [ebp-4]
 004E0A32    add         eax,5C4
 004E0A37    call        @LStrClr
 004E0A3C    mov         eax,dword ptr [ebp-0C]
 004E0A3F    call        TObject.Free
 004E0A44    ret
>004E0A45    jmp         @HandleFinally
>004E0A4A    jmp         004E0A2F
 004E0A4C    mov         eax,dword ptr [ebp-8]
 004E0A4F    mov         dword ptr [ebp-1C],eax
 004E0A52    mov         byte ptr [ebp-18],0B
 004E0A56    call        kernel32.GetLastError
 004E0A5B    lea         edx,[ebp-20]
 004E0A5E    call        SysErrorMessage
 004E0A63    mov         eax,dword ptr [ebp-20]
 004E0A66    mov         dword ptr [ebp-14],eax
 004E0A69    mov         byte ptr [ebp-10],0B
 004E0A6D    lea         eax,[ebp-1C]
 004E0A70    push        eax
 004E0A71    push        1
 004E0A73    lea         edx,[ebp-24]
 004E0A76    mov         eax,4DF2F4;^HInstance:LongWord
 004E0A7B    call        LoadResString
 004E0A80    mov         ecx,dword ptr [ebp-24]
 004E0A83    mov         dl,1
 004E0A85    mov         eax,[0041D02C];EFOpenError
 004E0A8A    call        Exception.CreateFmt;EFOpenError.Create
 004E0A8F    call        @RaiseExcept
 004E0A94    xor         eax,eax
 004E0A96    pop         edx
 004E0A97    pop         ecx
 004E0A98    pop         ecx
 004E0A99    mov         dword ptr fs:[eax],edx
 004E0A9C    push        4E0AB6
 004E0AA1    lea         eax,[ebp-24]
 004E0AA4    mov         edx,2
 004E0AA9    call        @LStrArrayClr
 004E0AAE    ret
>004E0AAF    jmp         @HandleFinally
>004E0AB4    jmp         004E0AA1
 004E0AB6    pop         edi
 004E0AB7    pop         esi
 004E0AB8    pop         ebx
 004E0AB9    mov         esp,ebp
 004E0ABB    pop         ebp
 004E0ABC    ret
end;*}

//004E0AC0
procedure sub_004E0AC0(?:TMPHexEditorEx);
begin
{*
 004E0AC0    push        ebp
 004E0AC1    mov         ebp,esp
 004E0AC3    add         esp,0FFFFFFF8
 004E0AC6    mov         dword ptr [ebp-4],eax
 004E0AC9    mov         eax,dword ptr [ebp-4]
 004E0ACC    call        004E0588
 004E0AD1    mov         edx,dword ptr [ebp-4]
 004E0AD4    mov         edx,dword ptr [edx+4F8]
 004E0ADA    cmp         eax,dword ptr [edx+4]
>004E0ADD    jge         004E0AF7
 004E0ADF    mov         eax,dword ptr [ebp-4]
 004E0AE2    call        004E0588
 004E0AE7    mov         edx,eax
 004E0AE9    mov         eax,dword ptr [ebp-4]
 004E0AEC    mov         eax,dword ptr [eax+4F8]
 004E0AF2    call        TBits.SetSize
 004E0AF7    mov         eax,dword ptr [ebp-4]
 004E0AFA    call        004E0588
 004E0AFF    dec         eax
>004E0B00    jge         004E0B30
 004E0B02    mov         edx,3
 004E0B07    mov         eax,dword ptr [ebp-4]
 004E0B0A    call        004DDA70
 004E0B0F    mov         eax,dword ptr [ebp-4]
 004E0B12    call        004E56E8
 004E0B17    mov         edx,eax
 004E0B19    mov         eax,dword ptr [ebp-4]
 004E0B1C    call        004DD5D0
 004E0B21    mov         edx,2
 004E0B26    mov         eax,dword ptr [ebp-4]
 004E0B29    call        004DD7D8
>004E0B2E    jmp         004E0BA7
 004E0B30    mov         eax,dword ptr [ebp-4]
 004E0B33    call        004E0588
 004E0B38    mov         edx,dword ptr [ebp-4]
 004E0B3B    mov         edx,dword ptr [edx+4D4]
 004E0B41    dec         edx
 004E0B42    add         eax,edx
 004E0B44    mov         edx,dword ptr [ebp-4]
 004E0B47    mov         ecx,dword ptr [edx+4D4]
 004E0B4D    cdq
 004E0B4E    idiv        eax,ecx
 004E0B50    mov         dword ptr [ebp-8],eax
 004E0B53    mov         eax,dword ptr [ebp-4]
 004E0B56    call        004E0588
 004E0B5B    mov         edx,dword ptr [ebp-4]
 004E0B5E    mov         ecx,dword ptr [edx+4D4]
 004E0B64    cdq
 004E0B65    idiv        eax,ecx
 004E0B67    test        edx,edx
>004E0B69    jne         004E0B7A
 004E0B6B    mov         eax,dword ptr [ebp-4]
 004E0B6E    call        TMPHexEditorEx.GetInsertMode
 004E0B73    test        al,al
>004E0B75    je          004E0B7A
 004E0B77    inc         dword ptr [ebp-8]
 004E0B7A    mov         edx,dword ptr [ebp-8]
 004E0B7D    add         edx,2
 004E0B80    mov         eax,dword ptr [ebp-4]
 004E0B83    call        004DDA70
 004E0B88    mov         eax,dword ptr [ebp-4]
 004E0B8B    call        004E56E8
 004E0B90    mov         edx,eax
 004E0B92    mov         eax,dword ptr [ebp-4]
 004E0B95    call        004DD5D0
 004E0B9A    mov         edx,2
 004E0B9F    mov         eax,dword ptr [ebp-4]
 004E0BA2    call        004DD7D8
 004E0BA7    mov         edx,2
 004E0BAC    mov         eax,dword ptr [ebp-4]
 004E0BAF    call        004DD888
 004E0BB4    mov         eax,dword ptr [ebp-4]
 004E0BB7    call        004E025C
 004E0BBC    pop         ecx
 004E0BBD    pop         ecx
 004E0BBE    pop         ebp
 004E0BBF    ret
*}
end;

//004E0BC0
{*function sub_004E0BC0(?:TCustomMPHexEditor; ?:?):?;
begin
 004E0BC0    push        ebp
 004E0BC1    mov         ebp,esp
 004E0BC3    add         esp,0FFFFFFF8
 004E0BC6    mov         byte ptr [ebp-5],dl
 004E0BC9    mov         dword ptr [ebp-4],eax
 004E0BCC    mov         eax,dword ptr [ebp-4]
 004E0BCF    movzx       eax,byte ptr [eax+55C]
 004E0BD6    cmp         eax,5
>004E0BD9    ja          004E0C61
 004E0BDF    jmp         dword ptr [eax*4+4E0BE6]
 004E0BDF    dd          004E0BFE
 004E0BDF    dd          004E0C06
 004E0BDF    dd          004E0C06
 004E0BDF    dd          004E0C31
 004E0BDF    dd          004E0C41
 004E0BDF    dd          004E0C51
 004E0BFE    mov         al,byte ptr [ebp-5]
 004E0C01    mov         byte ptr [ebp-6],al
>004E0C04    jmp         004E0C65
 004E0C06    mov         eax,dword ptr [ebp-4]
 004E0C09    cmp         byte ptr [eax+55C],1
>004E0C10    je          004E0C18
 004E0C12    cmp         byte ptr [ebp-5],80
>004E0C16    jae         004E0C2B
 004E0C18    cmp         byte ptr [ebp-5],1F
>004E0C1C    jbe         004E0C2B
 004E0C1E    mov         al,byte ptr [ebp-5]
 004E0C21    call        004DF3E8
 004E0C26    mov         byte ptr [ebp-6],al
>004E0C29    jmp         004E0C65
 004E0C2B    mov         byte ptr [ebp-6],0
>004E0C2F    jmp         004E0C65
 004E0C31    xor         eax,eax
 004E0C33    mov         al,byte ptr [ebp-5]
 004E0C36    mov         al,byte ptr [eax+56CC54]
 004E0C3C    mov         byte ptr [ebp-6],al
>004E0C3F    jmp         004E0C65
 004E0C41    xor         eax,eax
 004E0C43    mov         al,byte ptr [ebp-5]
 004E0C46    mov         al,byte ptr [eax+56CE54]
 004E0C4C    mov         byte ptr [ebp-6],al
>004E0C4F    jmp         004E0C65
 004E0C51    xor         eax,eax
 004E0C53    mov         al,byte ptr [ebp-5]
 004E0C56    mov         al,byte ptr [eax+57220C]
 004E0C5C    mov         byte ptr [ebp-6],al
>004E0C5F    jmp         004E0C65
 004E0C61    mov         byte ptr [ebp-6],0
 004E0C65    mov         al,byte ptr [ebp-6]
 004E0C68    mov         edx,dword ptr [ebp-4]
 004E0C6B    and         eax,0FF
 004E0C70    bt          dword ptr [edx+620],eax
>004E0C77    jae         004E0C7D
 004E0C79    mov         byte ptr [ebp-6],0
 004E0C7D    mov         al,byte ptr [ebp-6]
 004E0C80    pop         ecx
 004E0C81    pop         ecx
 004E0C82    pop         ebp
 004E0C83    ret
end;*}

//004E0C84
{*function sub_004E0C84(?:?; ?:?):?;
begin
 004E0C84    push        ebp
 004E0C85    mov         ebp,esp
 004E0C87    add         esp,0FFFFFFF8
 004E0C8A    mov         byte ptr [ebp-5],dl
 004E0C8D    mov         dword ptr [ebp-4],eax
 004E0C90    mov         eax,dword ptr [ebp-4]
 004E0C93    movzx       eax,byte ptr [eax+55C]
 004E0C9A    cmp         eax,5
>004E0C9D    ja          004E0D25
 004E0CA3    jmp         dword ptr [eax*4+4E0CAA]
 004E0CA3    dd          004E0CC2
 004E0CA3    dd          004E0CCA
 004E0CA3    dd          004E0CCA
 004E0CA3    dd          004E0CF5
 004E0CA3    dd          004E0D05
 004E0CA3    dd          004E0D15
 004E0CC2    mov         al,byte ptr [ebp-5]
 004E0CC5    mov         byte ptr [ebp-6],al
>004E0CC8    jmp         004E0D31
 004E0CCA    mov         al,byte ptr [ebp-5]
 004E0CCD    call        004DF3BC
 004E0CD2    mov         byte ptr [ebp-6],al
 004E0CD5    mov         eax,dword ptr [ebp-4]
 004E0CD8    cmp         byte ptr [eax+55C],2
>004E0CDF    jne         004E0D31
 004E0CE1    cmp         byte ptr [ebp-5],7F
>004E0CE5    jbe         004E0D31
 004E0CE7    mov         eax,dword ptr [ebp-4]
 004E0CEA    mov         al,byte ptr [eax+55E]
 004E0CF0    mov         byte ptr [ebp-6],al
>004E0CF3    jmp         004E0D31
 004E0CF5    xor         eax,eax
 004E0CF7    mov         al,byte ptr [ebp-5]
 004E0CFA    mov         al,byte ptr [eax+56CD54]
 004E0D00    mov         byte ptr [ebp-6],al
>004E0D03    jmp         004E0D31
 004E0D05    xor         eax,eax
 004E0D07    mov         al,byte ptr [ebp-5]
 004E0D0A    mov         al,byte ptr [eax+56CF54]
 004E0D10    mov         byte ptr [ebp-6],al
>004E0D13    jmp         004E0D31
 004E0D15    xor         eax,eax
 004E0D17    mov         al,byte ptr [ebp-5]
 004E0D1A    mov         al,byte ptr [eax+57230C]
 004E0D20    mov         byte ptr [ebp-6],al
>004E0D23    jmp         004E0D31
 004E0D25    mov         eax,dword ptr [ebp-4]
 004E0D28    mov         al,byte ptr [eax+55E]
 004E0D2E    mov         byte ptr [ebp-6],al
 004E0D31    mov         eax,dword ptr [ebp-4]
 004E0D34    cmp         byte ptr [eax+55E],0
>004E0D3B    je          004E0D5D
 004E0D3D    mov         al,byte ptr [ebp-6]
 004E0D40    mov         edx,dword ptr [ebp-4]
 004E0D43    and         eax,0FF
 004E0D48    bt          dword ptr [edx+620],eax
>004E0D4F    jae         004E0D5D
 004E0D51    mov         eax,dword ptr [ebp-4]
 004E0D54    mov         al,byte ptr [eax+55E]
 004E0D5A    mov         byte ptr [ebp-6],al
 004E0D5D    mov         al,byte ptr [ebp-6]
 004E0D60    pop         ecx
 004E0D61    pop         ecx
 004E0D62    pop         ebp
 004E0D63    ret
end;*}

//004E0D64
{*function sub_004E0D64(?:?):?;
begin
 004E0D64    push        ebp
 004E0D65    mov         ebp,esp
 004E0D67    add         esp,0FFFFFFF4
 004E0D6A    mov         dword ptr [ebp-4],eax
 004E0D6D    mov         dword ptr [ebp-8],0FFFFFFFF
 004E0D74    mov         eax,dword ptr [ebp-4]
 004E0D77    mov         al,byte ptr [eax+4F0]
 004E0D7D    mov         byte ptr [ebp-9],al
 004E0D80    xor         eax,eax
 004E0D82    push        ebp
 004E0D83    push        4E0DDC
 004E0D88    push        dword ptr fs:[eax]
 004E0D8B    mov         dword ptr fs:[eax],esp
 004E0D8E    mov         eax,dword ptr [ebp-4]
 004E0D91    cmp         byte ptr [eax+578],0
>004E0D98    je          004E0DC2
 004E0D9A    mov         eax,dword ptr [ebp-4]
 004E0D9D    mov         ecx,dword ptr [eax+580]
 004E0DA3    mov         eax,dword ptr [ebp-4]
 004E0DA6    mov         edx,dword ptr [eax+57C]
 004E0DAC    mov         eax,dword ptr [ebp-4]
 004E0DAF    call        004E1288
 004E0DB4    mov         dword ptr [ebp-8],eax
 004E0DB7    lea         edx,[ebp-8]
 004E0DBA    mov         eax,dword ptr [ebp-4]
 004E0DBD    call        004E8CF8
 004E0DC2    xor         eax,eax
 004E0DC4    pop         edx
 004E0DC5    pop         ecx
 004E0DC6    pop         ecx
 004E0DC7    mov         dword ptr fs:[eax],edx
 004E0DCA    push        4E0DE3
 004E0DCF    mov         eax,dword ptr [ebp-4]
 004E0DD2    mov         dl,byte ptr [ebp-9]
 004E0DD5    mov         byte ptr [eax+4F0],dl
 004E0DDB    ret
>004E0DDC    jmp         @HandleFinally
>004E0DE1    jmp         004E0DCF
 004E0DE3    mov         eax,dword ptr [ebp-8]
 004E0DE6    mov         esp,ebp
 004E0DE8    pop         ebp
 004E0DE9    ret
end;*}

//004E0DEC
{*procedure sub_004E0DEC(?:?; ?:?);
begin
 004E0DEC    push        ebp
 004E0DED    mov         ebp,esp
 004E0DEF    push        eax
 004E0DF0    mov         eax,0F
 004E0DF5    add         esp,0FFFFF004
 004E0DFB    push        eax
 004E0DFC    dec         eax
>004E0DFD    jne         004E0DF5
 004E0DFF    mov         eax,dword ptr [ebp-4]
 004E0E02    add         esp,0FFFFFFD8
 004E0E05    push        ebx
 004E0E06    xor         ebx,ebx
 004E0E08    mov         dword ptr [ebp-0F02C],ebx
 004E0E0E    mov         dword ptr [ebp-24],ebx
 004E0E11    mov         dword ptr [ebp-0C],ecx
 004E0E14    mov         dword ptr [ebp-8],edx
 004E0E17    mov         dword ptr [ebp-4],eax
 004E0E1A    xor         eax,eax
 004E0E1C    push        ebp
 004E0E1D    push        4E0F93
 004E0E22    push        dword ptr fs:[eax]
 004E0E25    mov         dword ptr fs:[eax],esp
 004E0E28    mov         eax,dword ptr [ebp+8]
 004E0E2B    mov         dword ptr [ebp-1C],eax
 004E0E2E    cmp         dword ptr [ebp-1C],0FFFFFFFF
>004E0E32    jne         004E0E4A
 004E0E34    mov         eax,dword ptr [ebp-8]
 004E0E37    mov         edx,dword ptr [eax]
 004E0E39    call        dword ptr [edx]
 004E0E3B    mov         ebx,eax
 004E0E3D    mov         eax,dword ptr [ebp-8]
 004E0E40    call        TStream.GetPosition
 004E0E45    sub         ebx,eax
 004E0E47    mov         dword ptr [ebp-1C],ebx
 004E0E4A    mov         eax,dword ptr [ebp-1C]
 004E0E4D    mov         dword ptr [ebp-14],eax
 004E0E50    mov         byte ptr [ebp-1D],0
 004E0E54    mov         byte ptr [ebp-0E],0FF
 004E0E58    lea         eax,[ebp-24]
 004E0E5B    mov         edx,dword ptr [ebp-4]
 004E0E5E    mov         edx,dword ptr [edx+5C4]
 004E0E64    call        @LStrLAsg
 004E0E69    cmp         dword ptr [ebp-24],0
>004E0E6D    jne         004E0E80
 004E0E6F    lea         eax,[ebp-24]
 004E0E72    mov         edx,dword ptr [ebp-4]
 004E0E75    mov         edx,dword ptr [edx+4F4]
 004E0E7B    call        @LStrLAsg
 004E0E80    cmp         dword ptr [ebp-14],0
>004E0E84    jle         004E0F72
 004E0E8A    mov         eax,dword ptr [ebp-1C]
 004E0E8D    sub         eax,dword ptr [ebp-14]
 004E0E90    mov         dword ptr [ebp-0F028],eax
 004E0E96    fild        dword ptr [ebp-0F028]
 004E0E9C    fild        dword ptr [ebp-1C]
 004E0E9F    fdivp       st(1),st
 004E0EA1    fmul        dword ptr ds:[4E0FA4];100:Single
 004E0EA7    call        @ROUND
 004E0EAC    mov         byte ptr [ebp-0D],al
 004E0EAF    mov         al,byte ptr [ebp-0D]
 004E0EB2    cmp         al,byte ptr [ebp-0E]
>004E0EB5    jne         004E0EC0
 004E0EB7    cmp         dword ptr [ebp-14],0F000
>004E0EBE    jg          004E0F30
 004E0EC0    cmp         dword ptr [ebp-14],0F000
>004E0EC7    jg          004E0ECF
 004E0EC9    mov         byte ptr [ebp-0E],64
>004E0ECD    jmp         004E0ED5
 004E0ECF    mov         al,byte ptr [ebp-0D]
 004E0ED2    mov         byte ptr [ebp-0E],al
 004E0ED5    mov         eax,dword ptr [ebp-4]
 004E0ED8    cmp         word ptr [eax+56A],0
>004E0EE0    je          004E0F30
 004E0EE2    mov         eax,dword ptr [ebp-24]
 004E0EE5    push        eax
 004E0EE6    mov         al,byte ptr [ebp-0E]
 004E0EE9    push        eax
 004E0EEA    lea         eax,[ebp-1D]
 004E0EED    push        eax
 004E0EEE    mov         ebx,dword ptr [ebp-4]
 004E0EF1    mov         cl,byte ptr [ebp+0C]
 004E0EF4    mov         edx,dword ptr [ebp-4]
 004E0EF7    mov         eax,dword ptr [ebx+56C]
 004E0EFD    call        dword ptr [ebx+568]
 004E0F03    cmp         byte ptr [ebp-1D],0
>004E0F07    je          004E0F30
 004E0F09    lea         edx,[ebp-0F02C]
 004E0F0F    mov         eax,4DF334;^HInstance:LongWord
 004E0F14    call        LoadResString
 004E0F19    mov         ecx,dword ptr [ebp-0F02C]
 004E0F1F    mov         dl,1
 004E0F21    mov         eax,[004DE8FC];EMPHexEditor
 004E0F26    call        Exception.Create;EMPHexEditor.Create
 004E0F2B    call        @RaiseExcept
 004E0F30    mov         edx,0F000
 004E0F35    mov         eax,dword ptr [ebp-14]
 004E0F38    call        004DF5BC
 004E0F3D    mov         dword ptr [ebp-18],eax
 004E0F40    lea         edx,[ebp-0F024]
 004E0F46    mov         ecx,dword ptr [ebp-18]
 004E0F49    mov         eax,dword ptr [ebp-8]
 004E0F4C    call        TStream.ReadBuffer
 004E0F51    lea         edx,[ebp-0F024]
 004E0F57    mov         ecx,dword ptr [ebp-18]
 004E0F5A    mov         eax,dword ptr [ebp-0C]
 004E0F5D    call        TStream.WriteBuffer
 004E0F62    mov         eax,dword ptr [ebp-18]
 004E0F65    sub         dword ptr [ebp-14],eax
 004E0F68    cmp         dword ptr [ebp-14],0
>004E0F6C    jg          004E0E8A
 004E0F72    xor         eax,eax
 004E0F74    pop         edx
 004E0F75    pop         ecx
 004E0F76    pop         ecx
 004E0F77    mov         dword ptr fs:[eax],edx
 004E0F7A    push        4E0F9A
 004E0F7F    lea         eax,[ebp-0F02C]
 004E0F85    call        @LStrClr
 004E0F8A    lea         eax,[ebp-24]
 004E0F8D    call        @LStrClr
 004E0F92    ret
>004E0F93    jmp         @HandleFinally
>004E0F98    jmp         004E0F7F
 004E0F9A    pop         ebx
 004E0F9B    mov         esp,ebp
 004E0F9D    pop         ebp
 004E0F9E    ret         8
end;*}

//004E0FA8
{*function sub_004E0FA8(?:?; ?:?):?;
begin
 004E0FA8    push        ebp
 004E0FA9    mov         ebp,esp
 004E0FAB    add         esp,0FFFFFFD8
 004E0FAE    mov         dword ptr [ebp-0C],ecx
 004E0FB1    mov         dword ptr [ebp-8],edx
 004E0FB4    mov         dword ptr [ebp-4],eax
 004E0FB7    mov         eax,dword ptr [ebp-4]
 004E0FBA    call        004E0588
 004E0FBF    test        eax,eax
>004E0FC1    jle         004E0FD6
 004E0FC3    mov         ecx,dword ptr [ebp-0C]
 004E0FC6    mov         edx,dword ptr [ebp-8]
 004E0FC9    mov         eax,dword ptr [ebp-4]
 004E0FCC    call        004E1548
 004E0FD1    mov         byte ptr [ebp-0D],al
>004E0FD4    jmp         004E1051
 004E0FD6    cmp         dword ptr [ebp-8],2
>004E0FDA    je          004E1004
 004E0FDC    mov         edx,2
 004E0FE1    mov         eax,dword ptr [ebp-4]
 004E0FE4    call        004E14A4
 004E0FE9    mov         edx,2
 004E0FEE    call        004DF5E8
 004E0FF3    cmp         eax,dword ptr [ebp-8]
>004E0FF6    jne         004E0FFE
 004E0FF8    cmp         dword ptr [ebp-0C],2
>004E0FFC    je          004E1004
 004E0FFE    mov         byte ptr [ebp-0D],0
>004E1002    jmp         004E1051
 004E1004    lea         eax,[ebp-28]
 004E1007    push        eax
 004E1008    mov         ecx,dword ptr [ebp-0C]
 004E100B    mov         edx,dword ptr [ebp-8]
 004E100E    mov         eax,dword ptr [ebp-4]
 004E1011    call        004D8568
 004E1016    mov         eax,dword ptr [ebp-28]
 004E1019    add         eax,dword ptr [ebp-1C]
 004E101C    test        eax,eax
>004E101E    jne         004E1036
 004E1020    push        0FF
 004E1022    mov         ecx,0FFFFFFCE
 004E1027    mov         edx,0FFFFFFCE
 004E102C    mov         eax,dword ptr [ebp-4]
 004E102F    call        004E5EBC
>004E1034    jmp         004E1048
 004E1036    mov         eax,dword ptr [ebp-8]
 004E1039    push        eax
 004E103A    mov         ecx,dword ptr [ebp-24]
 004E103D    mov         edx,dword ptr [ebp-28]
 004E1040    mov         eax,dword ptr [ebp-4]
 004E1043    call        004E5EBC
 004E1048    mov         byte ptr [ebp-0D],1
>004E104C    jmp         004E1281
 004E1051    cmp         byte ptr [ebp-0D],0
>004E1055    je          004E1281
 004E105B    mov         eax,dword ptr [ebp-8]
 004E105E    mov         edx,dword ptr [ebp-4]
 004E1061    cmp         eax,dword ptr [edx+228];TCustomMPHexEditor.FCurrent:TGridCoord
>004E1067    jne         004E1077
 004E1069    mov         eax,dword ptr [ebp-0C]
 004E106C    mov         edx,dword ptr [ebp-4]
 004E106F    cmp         eax,dword ptr [edx+22C];TCustomMPHexEditor.FCurrent:Longint
>004E1075    je          004E107F
 004E1077    mov         eax,dword ptr [ebp-4]
 004E107A    mov         edx,dword ptr [eax]
 004E107C    call        dword ptr [edx+7C];TCustomMPHexEditor.sub_0048BE68
 004E107F    mov         eax,dword ptr [ebp-4]
 004E1082    cmp         byte ptr [eax+614],0;TCustomMPHexEditor.?f614:byte
>004E1089    je          004E1228
 004E108F    mov         ecx,dword ptr [ebp-0C]
 004E1092    mov         edx,dword ptr [ebp-8]
 004E1095    mov         eax,dword ptr [ebp-4]
 004E1098    call        004E1288
 004E109D    mov         dword ptr [ebp-14],eax
 004E10A0    mov         eax,dword ptr [ebp-4]
 004E10A3    mov         ecx,dword ptr [eax+22C];TCustomMPHexEditor.FCurrent:Longint
 004E10A9    mov         eax,dword ptr [ebp-4]
 004E10AC    mov         edx,dword ptr [eax+228];TCustomMPHexEditor.FCurrent:TGridCoord
 004E10B2    mov         eax,dword ptr [ebp-4]
 004E10B5    call        004E1288
 004E10BA    mov         dword ptr [ebp-18],eax
 004E10BD    mov         eax,dword ptr [ebp-4]
 004E10C0    cmp         dword ptr [eax+558],0FFFFFFFF;TCustomMPHexEditor.?f558:dword
>004E10C7    jne         004E10D5
 004E10C9    mov         eax,dword ptr [ebp-18]
 004E10CC    mov         edx,dword ptr [ebp-4]
 004E10CF    mov         dword ptr [edx+558],eax;TCustomMPHexEditor.?f558:dword
 004E10D5    mov         eax,dword ptr [ebp-4]
 004E10D8    call        TMPHexEditorEx.GetInsertMode
 004E10DD    test        al,al
>004E10DF    jne         004E110E
 004E10E1    lea         ecx,[ebp-14]
 004E10E4    mov         eax,dword ptr [ebp-4]
 004E10E7    lea         edx,[eax+558];TCustomMPHexEditor.?f558:dword
 004E10ED    mov         eax,dword ptr [ebp-4]
 004E10F0    call        004E8C50
 004E10F5    mov         ecx,dword ptr [ebp-14]
 004E10F8    mov         eax,dword ptr [ebp-4]
 004E10FB    mov         edx,dword ptr [eax+558];TCustomMPHexEditor.?f558:dword
 004E1101    mov         eax,dword ptr [ebp-4]
 004E1104    call        004E29CC
>004E1109    jmp         004E1232
 004E110E    mov         eax,dword ptr [ebp-4]
 004E1111    mov         eax,dword ptr [eax+558];TCustomMPHexEditor.?f558:dword
 004E1117    cmp         eax,dword ptr [ebp-14]
>004E111A    jle         004E118D
 004E111C    mov         eax,dword ptr [ebp-4]
 004E111F    lea         edx,[eax+558];TCustomMPHexEditor.?f558:dword
 004E1125    mov         eax,dword ptr [ebp-4]
 004E1128    call        004E8CF8
 004E112D    lea         edx,[ebp-14]
 004E1130    mov         eax,dword ptr [ebp-4]
 004E1133    call        004E8CF8
 004E1138    mov         eax,dword ptr [ebp-4]
 004E113B    mov         eax,dword ptr [eax+558];TCustomMPHexEditor.?f558:dword
 004E1141    cmp         eax,dword ptr [ebp-14]
>004E1144    jne         004E116B
 004E1146    mov         dl,1
 004E1148    mov         eax,dword ptr [ebp-4]
 004E114B    call        004E31CC
 004E1150    mov         eax,dword ptr [ebp-14]
 004E1153    mov         edx,dword ptr [ebp-4]
 004E1156    mov         dword ptr [edx+558],eax;TCustomMPHexEditor.?f558:dword
 004E115C    mov         eax,dword ptr [ebp-4]
 004E115F    mov         byte ptr [eax+614],1;TCustomMPHexEditor.?f614:byte
>004E1166    jmp         004E1232
 004E116B    mov         eax,dword ptr [ebp-4]
 004E116E    mov         edx,dword ptr [eax+558];TCustomMPHexEditor.?f558:dword
 004E1174    mov         eax,dword ptr [ebp-4]
 004E1177    sub         edx,dword ptr [eax+5F4]
 004E117D    mov         ecx,dword ptr [ebp-14]
 004E1180    mov         eax,dword ptr [ebp-4]
 004E1183    call        004E29CC
>004E1188    jmp         004E1232
 004E118D    mov         eax,dword ptr [ebp-4]
 004E1190    mov         eax,dword ptr [eax+558];TCustomMPHexEditor.?f558:dword
 004E1196    cmp         eax,dword ptr [ebp-14]
>004E1199    jge         004E1206
 004E119B    mov         eax,dword ptr [ebp-4]
 004E119E    lea         edx,[eax+558];TCustomMPHexEditor.?f558:dword
 004E11A4    mov         eax,dword ptr [ebp-4]
 004E11A7    call        004E8CF8
 004E11AC    lea         edx,[ebp-14]
 004E11AF    mov         eax,dword ptr [ebp-4]
 004E11B2    call        004E8CF8
 004E11B7    mov         eax,dword ptr [ebp-4]
 004E11BA    mov         eax,dword ptr [eax+558];TCustomMPHexEditor.?f558:dword
 004E11C0    cmp         eax,dword ptr [ebp-14]
>004E11C3    jne         004E11E7
 004E11C5    mov         dl,1
 004E11C7    mov         eax,dword ptr [ebp-4]
 004E11CA    call        004E31CC
 004E11CF    mov         eax,dword ptr [ebp-14]
 004E11D2    mov         edx,dword ptr [ebp-4]
 004E11D5    mov         dword ptr [edx+558],eax;TCustomMPHexEditor.?f558:dword
 004E11DB    mov         eax,dword ptr [ebp-4]
 004E11DE    mov         byte ptr [eax+614],1;TCustomMPHexEditor.?f614:byte
>004E11E5    jmp         004E1232
 004E11E7    mov         ecx,dword ptr [ebp-14]
 004E11EA    mov         eax,dword ptr [ebp-4]
 004E11ED    sub         ecx,dword ptr [eax+5F4]
 004E11F3    mov         eax,dword ptr [ebp-4]
 004E11F6    mov         edx,dword ptr [eax+558];TCustomMPHexEditor.?f558:dword
 004E11FC    mov         eax,dword ptr [ebp-4]
 004E11FF    call        004E29CC
>004E1204    jmp         004E1232
 004E1206    mov         dl,1
 004E1208    mov         eax,dword ptr [ebp-4]
 004E120B    call        004E31CC
 004E1210    mov         eax,dword ptr [ebp-14]
 004E1213    mov         edx,dword ptr [ebp-4]
 004E1216    mov         dword ptr [edx+558],eax;TCustomMPHexEditor.?f558:dword
 004E121C    mov         eax,dword ptr [ebp-4]
 004E121F    mov         byte ptr [eax+614],1;TCustomMPHexEditor.?f614:byte
>004E1226    jmp         004E1232
 004E1228    mov         dl,1
 004E122A    mov         eax,dword ptr [ebp-4]
 004E122D    call        004E31CC
 004E1232    lea         eax,[ebp-28]
 004E1235    push        eax
 004E1236    mov         ecx,dword ptr [ebp-0C]
 004E1239    mov         edx,dword ptr [ebp-8]
 004E123C    mov         eax,dword ptr [ebp-4]
 004E123F    call        004D8568
 004E1244    mov         eax,dword ptr [ebp-28]
 004E1247    add         eax,dword ptr [ebp-1C]
 004E124A    test        eax,eax
>004E124C    jne         004E1264
 004E124E    push        0FF
 004E1250    mov         ecx,0FFFFFFCE
 004E1255    mov         edx,0FFFFFFCE
 004E125A    mov         eax,dword ptr [ebp-4]
 004E125D    call        004E5EBC
>004E1262    jmp         004E1276
 004E1264    mov         eax,dword ptr [ebp-8]
 004E1267    push        eax
 004E1268    mov         ecx,dword ptr [ebp-24]
 004E126B    mov         edx,dword ptr [ebp-28]
 004E126E    mov         eax,dword ptr [ebp-4]
 004E1271    call        004E5EBC
 004E1276    mov         eax,dword ptr [ebp-4]
 004E1279    mov         edx,dword ptr [eax]
 004E127B    call        dword ptr [edx+0E8];TCustomMPHexEditor.sub_004E8D28
 004E1281    mov         al,byte ptr [ebp-0D]
 004E1284    mov         esp,ebp
 004E1286    pop         ebp
 004E1287    ret
end;*}

//004E1288
{*function sub_004E1288(?:TCustomMPHexEditor; ?:TGridCoord; ?:Longint):?;
begin
 004E1288    push        ebp
 004E1289    mov         ebp,esp
 004E128B    add         esp,0FFFFFFF0
 004E128E    mov         dword ptr [ebp-0C],ecx
 004E1291    mov         dword ptr [ebp-8],edx
 004E1294    mov         dword ptr [ebp-4],eax
 004E1297    mov         eax,dword ptr [ebp-4]
 004E129A    mov         eax,dword ptr [eax+4DC];TCustomMPHexEditor.?f4DC:dword
 004E12A0    add         eax,2
 004E12A3    cmp         eax,dword ptr [ebp-8]
 004E12A6    setl        al
 004E12A9    mov         edx,dword ptr [ebp-4]
 004E12AC    mov         byte ptr [edx+4F0],al;TCustomMPHexEditor.?f4F0:byte
 004E12B2    mov         eax,dword ptr [ebp-4]
 004E12B5    cmp         byte ptr [eax+4F0],0;TCustomMPHexEditor.?f4F0:byte
>004E12BC    je          004E12E8
 004E12BE    mov         eax,dword ptr [ebp-4]
 004E12C1    mov         eax,dword ptr [eax+4DC];TCustomMPHexEditor.?f4DC:dword
 004E12C7    add         eax,3
 004E12CA    mov         edx,dword ptr [ebp-8]
 004E12CD    sub         edx,eax
 004E12CF    mov         dword ptr [ebp-10],edx
 004E12D2    mov         eax,dword ptr [ebp-4]
 004E12D5    cmp         byte ptr [eax+61C],0;TCustomMPHexEditor.?f61C:byte
>004E12DC    je          004E12F8
 004E12DE    mov         eax,dword ptr [ebp-10]
 004E12E1    add         eax,eax
 004E12E3    mov         dword ptr [ebp-10],eax
>004E12E6    jmp         004E12F8
 004E12E8    mov         eax,dword ptr [ebp-8]
 004E12EB    sub         eax,2
 004E12EE    sar         eax,1
>004E12F0    jns         004E12F5
 004E12F2    adc         eax,0
 004E12F5    mov         dword ptr [ebp-10],eax
 004E12F8    mov         eax,dword ptr [ebp-0C]
 004E12FB    sub         eax,2
 004E12FE    mov         edx,dword ptr [ebp-4]
 004E1301    imul        dword ptr [edx+4D4];TCustomMPHexEditor.?f4D4:Integer
 004E1307    add         dword ptr [ebp-10],eax
 004E130A    cmp         dword ptr [ebp-10],0
>004E130E    jge         004E1315
 004E1310    xor         eax,eax
 004E1312    mov         dword ptr [ebp-10],eax
 004E1315    mov         eax,dword ptr [ebp-10]
 004E1318    mov         esp,ebp
 004E131A    pop         ebp
 004E131B    ret
end;*}

//004E131C
{*function sub_004E131C(?:?; ?:?):?;
begin
 004E131C    push        ebp
 004E131D    mov         ebp,esp
 004E131F    add         esp,0FFFFFFF4
 004E1322    mov         dword ptr [ebp-8],edx
 004E1325    mov         dword ptr [ebp-4],eax
 004E1328    mov         eax,dword ptr [ebp-8]
 004E132B    mov         edx,dword ptr [ebp-4]
 004E132E    mov         ecx,dword ptr [edx+4D4]
 004E1334    cdq
 004E1335    idiv        eax,ecx
 004E1337    add         eax,2
 004E133A    mov         dword ptr [ebp-0C],eax
 004E133D    mov         eax,dword ptr [ebp-0C]
 004E1340    mov         esp,ebp
 004E1342    pop         ebp
 004E1343    ret
end;*}

//004E1344
{*procedure sub_004E1344(?:TCustomMPHexEditor; ?:TGridCoord; ?:byte; ?:?);
begin
 004E1344    push        ebp
 004E1345    mov         ebp,esp
 004E1347    add         esp,0FFFFFFF0
 004E134A    mov         byte ptr [ebp-9],cl
 004E134D    mov         dword ptr [ebp-8],edx
 004E1350    mov         dword ptr [ebp-4],eax
 004E1353    cmp         dword ptr [ebp-8],0
>004E1357    jge         004E136E
 004E1359    mov         eax,dword ptr [ebp+8]
 004E135C    mov         dword ptr [eax+4],2
 004E1363    mov         eax,dword ptr [ebp+8]
 004E1366    mov         dword ptr [eax],2
>004E136C    jmp         004E13E3
 004E136E    mov         edx,dword ptr [ebp-8]
 004E1371    mov         eax,dword ptr [ebp-4]
 004E1374    call        004E131C
 004E1379    mov         edx,dword ptr [ebp+8]
 004E137C    mov         dword ptr [edx+4],eax
 004E137F    mov         eax,dword ptr [ebp-8]
 004E1382    mov         edx,dword ptr [ebp-4]
 004E1385    mov         ecx,dword ptr [edx+4D4]
 004E138B    cdq
 004E138C    idiv        eax,ecx
 004E138E    mov         dword ptr [ebp-10],edx
 004E1391    cmp         byte ptr [ebp-9],0
>004E1395    je          004E13D6
 004E1397    mov         eax,dword ptr [ebp-4]
 004E139A    cmp         byte ptr [eax+61C],0
>004E13A1    je          004E13C0
 004E13A3    mov         eax,dword ptr [ebp-10]
 004E13A6    sar         eax,1
>004E13A8    jns         004E13AD
 004E13AA    adc         eax,0
 004E13AD    add         eax,3
 004E13B0    mov         edx,dword ptr [ebp-4]
 004E13B3    add         eax,dword ptr [edx+4DC]
 004E13B9    mov         edx,dword ptr [ebp+8]
 004E13BC    mov         dword ptr [edx],eax
>004E13BE    jmp         004E13E3
 004E13C0    mov         eax,dword ptr [ebp-4]
 004E13C3    mov         eax,dword ptr [eax+4DC]
 004E13C9    add         eax,3
 004E13CC    add         eax,dword ptr [ebp-10]
 004E13CF    mov         edx,dword ptr [ebp+8]
 004E13D2    mov         dword ptr [edx],eax
>004E13D4    jmp         004E13E3
 004E13D6    mov         eax,dword ptr [ebp-10]
 004E13D9    add         eax,eax
 004E13DB    add         eax,2
 004E13DE    mov         edx,dword ptr [ebp+8]
 004E13E1    mov         dword ptr [edx],eax
 004E13E3    mov         esp,ebp
 004E13E5    pop         ebp
 004E13E6    ret         4
end;*}

//004E13EC
{*function sub_004E13EC(?:TCustomMPHexEditor; ?:TGridCoord):?;
begin
 004E13EC    push        ebp
 004E13ED    mov         ebp,esp
 004E13EF    add         esp,0FFFFFFF0
 004E13F2    mov         dword ptr [ebp-8],edx
 004E13F5    mov         dword ptr [ebp-4],eax
 004E13F8    mov         eax,dword ptr [ebp-4]
 004E13FB    mov         eax,dword ptr [eax+4DC]
 004E1401    add         eax,2
 004E1404    cmp         eax,dword ptr [ebp-8]
 004E1407    setl        al
 004E140A    mov         edx,dword ptr [ebp-4]
 004E140D    mov         byte ptr [edx+4F0],al
 004E1413    mov         eax,dword ptr [ebp-4]
 004E1416    cmp         byte ptr [eax+4F0],0
>004E141D    je          004E145A
 004E141F    mov         eax,dword ptr [ebp-4]
 004E1422    mov         eax,dword ptr [eax+4DC]
 004E1428    add         eax,3
 004E142B    mov         edx,dword ptr [ebp-8]
 004E142E    sub         edx,eax
 004E1430    mov         dword ptr [ebp-10],edx
 004E1433    mov         eax,dword ptr [ebp-4]
 004E1436    cmp         byte ptr [eax+61C],0
>004E143D    je          004E144D
 004E143F    mov         eax,dword ptr [ebp-10]
 004E1442    shl         eax,2
 004E1445    add         eax,2
 004E1448    mov         dword ptr [ebp-0C],eax
>004E144B    jmp         004E149D
 004E144D    mov         eax,dword ptr [ebp-10]
 004E1450    add         eax,eax
 004E1452    add         eax,2
 004E1455    mov         dword ptr [ebp-0C],eax
>004E1458    jmp         004E149D
 004E145A    mov         eax,dword ptr [ebp-4]
 004E145D    cmp         byte ptr [eax+61C],0
>004E1464    je          004E147B
 004E1466    mov         eax,dword ptr [ebp-8]
 004E1469    sub         eax,2
 004E146C    test        eax,eax
>004E146E    jns         004E1473
 004E1470    add         eax,3
 004E1473    sar         eax,2
 004E1476    mov         dword ptr [ebp-10],eax
>004E1479    jmp         004E148B
 004E147B    mov         eax,dword ptr [ebp-8]
 004E147E    sub         eax,2
 004E1481    sar         eax,1
>004E1483    jns         004E1488
 004E1485    adc         eax,0
 004E1488    mov         dword ptr [ebp-10],eax
 004E148B    mov         eax,dword ptr [ebp-4]
 004E148E    mov         eax,dword ptr [eax+4DC]
 004E1494    add         eax,3
 004E1497    add         eax,dword ptr [ebp-10]
 004E149A    mov         dword ptr [ebp-0C],eax
 004E149D    mov         eax,dword ptr [ebp-0C]
 004E14A0    mov         esp,ebp
 004E14A2    pop         ebp
 004E14A3    ret
end;*}

//004E14A4
{*function sub_004E14A4(?:TCustomMPHexEditor; ?:?):?;
begin
 004E14A4    push        ebp
 004E14A5    mov         ebp,esp
 004E14A7    add         esp,0FFFFFFF0
 004E14AA    mov         dword ptr [ebp-8],edx
 004E14AD    mov         dword ptr [ebp-4],eax
 004E14B0    mov         eax,dword ptr [ebp-4]
 004E14B3    mov         eax,dword ptr [eax+4DC];TCustomMPHexEditor.?f4DC:dword
 004E14B9    add         eax,2
 004E14BC    cmp         eax,dword ptr [ebp-8]
>004E14BF    jge         004E14FC
 004E14C1    mov         eax,dword ptr [ebp-4]
 004E14C4    mov         eax,dword ptr [eax+4DC];TCustomMPHexEditor.?f4DC:dword
 004E14CA    add         eax,3
 004E14CD    mov         edx,dword ptr [ebp-8]
 004E14D0    sub         edx,eax
 004E14D2    mov         dword ptr [ebp-10],edx
 004E14D5    mov         eax,dword ptr [ebp-4]
 004E14D8    cmp         byte ptr [eax+61C],0;TCustomMPHexEditor.?f61C:byte
>004E14DF    je          004E14EF
 004E14E1    mov         eax,dword ptr [ebp-10]
 004E14E4    shl         eax,2
 004E14E7    add         eax,2
 004E14EA    mov         dword ptr [ebp-0C],eax
>004E14ED    jmp         004E153F
 004E14EF    mov         eax,dword ptr [ebp-10]
 004E14F2    add         eax,eax
 004E14F4    add         eax,2
 004E14F7    mov         dword ptr [ebp-0C],eax
>004E14FA    jmp         004E153F
 004E14FC    mov         eax,dword ptr [ebp-4]
 004E14FF    cmp         byte ptr [eax+61C],0;TCustomMPHexEditor.?f61C:byte
>004E1506    je          004E151D
 004E1508    mov         eax,dword ptr [ebp-8]
 004E150B    sub         eax,2
 004E150E    test        eax,eax
>004E1510    jns         004E1515
 004E1512    add         eax,3
 004E1515    sar         eax,2
 004E1518    mov         dword ptr [ebp-10],eax
>004E151B    jmp         004E152D
 004E151D    mov         eax,dword ptr [ebp-8]
 004E1520    sub         eax,2
 004E1523    sar         eax,1
>004E1525    jns         004E152A
 004E1527    adc         eax,0
 004E152A    mov         dword ptr [ebp-10],eax
 004E152D    mov         eax,dword ptr [ebp-4]
 004E1530    mov         eax,dword ptr [eax+4DC];TCustomMPHexEditor.?f4DC:dword
 004E1536    add         eax,3
 004E1539    add         eax,dword ptr [ebp-10]
 004E153C    mov         dword ptr [ebp-0C],eax
 004E153F    mov         eax,dword ptr [ebp-0C]
 004E1542    mov         esp,ebp
 004E1544    pop         ebp
 004E1545    ret
end;*}

//004E1548
{*function sub_004E1548(?:TCustomMPHexEditor; ?:?; ?:?):?;
begin
 004E1548    push        ebp
 004E1549    mov         ebp,esp
 004E154B    add         esp,0FFFFFFE4
 004E154E    mov         dword ptr [ebp-0C],ecx
 004E1551    mov         dword ptr [ebp-8],edx
 004E1554    mov         dword ptr [ebp-4],eax
 004E1557    mov         ecx,dword ptr [ebp-0C]
 004E155A    mov         edx,dword ptr [ebp-8]
 004E155D    mov         eax,dword ptr [ebp-4]
 004E1560    call        004D8CF8
 004E1565    mov         byte ptr [ebp-0D],al
 004E1568    mov         eax,dword ptr [ebp-4]
 004E156B    cmp         byte ptr [eax+5B4],0
>004E1572    je          004E16EF
 004E1578    xor         eax,eax
 004E157A    push        ebp
 004E157B    push        4E16E8
 004E1580    push        dword ptr fs:[eax]
 004E1583    mov         dword ptr fs:[eax],esp
 004E1586    mov         eax,dword ptr [ebp-4]
 004E1589    mov         byte ptr [eax+5B4],0
 004E1590    cmp         byte ptr [ebp-0D],0
>004E1594    je          004E16D0
 004E159A    mov         eax,10
 004E159F    call        004DF598
 004E15A4    test        al,al
>004E15A6    jne         004E15C0
 004E15A8    mov         eax,1
 004E15AD    call        004DF598
 004E15B2    test        al,al
>004E15B4    jne         004E15C0
 004E15B6    mov         dl,1
 004E15B8    mov         eax,dword ptr [ebp-4]
 004E15BB    call        004E31CC
 004E15C0    mov         ecx,dword ptr [ebp-0C]
 004E15C3    mov         edx,dword ptr [ebp-8]
 004E15C6    mov         eax,dword ptr [ebp-4]
 004E15C9    call        004E1288
 004E15CE    mov         dword ptr [ebp-1C],eax
 004E15D1    mov         eax,dword ptr [ebp-4]
 004E15D4    call        004E0588
 004E15D9    cmp         eax,dword ptr [ebp-1C]
>004E15DC    jg          004E1681
 004E15E2    mov         eax,dword ptr [ebp-4]
 004E15E5    call        TMPHexEditorEx.GetInsertMode
 004E15EA    test        al,al
>004E15EC    je          004E161A
 004E15EE    mov         eax,dword ptr [ebp-4]
 004E15F1    call        004E0588
 004E15F6    cmp         eax,dword ptr [ebp-1C]
>004E15F9    jne         004E161A
 004E15FB    mov         eax,dword ptr [ebp-4]
 004E15FE    cmp         byte ptr [eax+4F0],0;TCustomMPHexEditor.?f4F0:byte
>004E1605    jne         004E1681
 004E1607    mov         eax,dword ptr [ebp-8]
 004E160A    and         eax,80000001
>004E160F    jns         004E1616
 004E1611    dec         eax
 004E1612    or          eax,0FFFFFFFE
 004E1615    inc         eax
 004E1616    test        eax,eax
>004E1618    je          004E1681
 004E161A    mov         eax,dword ptr [ebp-4]
 004E161D    call        TMPHexEditorEx.GetInsertMode
 004E1622    test        al,al
>004E1624    jne         004E1649
 004E1626    lea         eax,[ebp-18]
 004E1629    push        eax
 004E162A    mov         eax,dword ptr [ebp-4]
 004E162D    call        004E409C
 004E1632    push        eax
 004E1633    mov         eax,dword ptr [ebp-4]
 004E1636    call        004E0588
 004E163B    mov         edx,eax
 004E163D    dec         edx
 004E163E    mov         eax,dword ptr [ebp-4]
 004E1641    pop         ecx
 004E1642    call        004E1344
>004E1647    jmp         004E1669
 004E1649    lea         eax,[ebp-18]
 004E164C    push        eax
 004E164D    mov         eax,dword ptr [ebp-4]
 004E1650    call        004E409C
 004E1655    push        eax
 004E1656    mov         eax,dword ptr [ebp-4]
 004E1659    call        004E0588
 004E165E    mov         edx,eax
 004E1660    mov         eax,dword ptr [ebp-4]
 004E1663    pop         ecx
 004E1664    call        004E1344
 004E1669    push        1
 004E166B    push        1
 004E166D    mov         ecx,dword ptr [ebp-14]
 004E1670    mov         edx,dword ptr [ebp-18]
 004E1673    mov         eax,dword ptr [ebp-4]
 004E1676    call        004D8CCC
 004E167B    mov         byte ptr [ebp-0D],0
>004E167F    jmp         004E16D0
 004E1681    mov         eax,dword ptr [ebp-4]
 004E1684    mov         eax,dword ptr [eax+4DC];TCustomMPHexEditor.?f4DC:dword
 004E168A    add         eax,2
 004E168D    cmp         eax,dword ptr [ebp-8]
>004E1690    jne         004E16D0
 004E1692    mov         byte ptr [ebp-0D],0
 004E1696    mov         eax,1
 004E169B    call        004DF598
 004E16A0    test        al,al
>004E16A2    je          004E16D0
 004E16A4    dec         dword ptr [ebp-8]
 004E16A7    mov         edx,dword ptr [ebp-8]
 004E16AA    mov         eax,2
 004E16AF    call        004DF5E8
 004E16B4    mov         dword ptr [ebp-8],eax
 004E16B7    push        1
 004E16B9    push        1
 004E16BB    mov         ecx,dword ptr [ebp-0C]
 004E16BE    mov         edx,dword ptr [ebp-8]
 004E16C1    mov         eax,dword ptr [ebp-4]
 004E16C4    call        004D8CCC
 004E16C9    call        @TryFinallyExit
>004E16CE    jmp         004E16EF
 004E16D0    xor         eax,eax
 004E16D2    pop         edx
 004E16D3    pop         ecx
 004E16D4    pop         ecx
 004E16D5    mov         dword ptr fs:[eax],edx
 004E16D8    push        4E16EF
 004E16DD    mov         eax,dword ptr [ebp-4]
 004E16E0    mov         byte ptr [eax+5B4],1
 004E16E7    ret
>004E16E8    jmp         @HandleFinally
>004E16ED    jmp         004E16DD
 004E16EF    mov         al,byte ptr [ebp-0D]
 004E16F2    mov         esp,ebp
 004E16F4    pop         ebp
 004E16F5    ret
end;*}

//004E16F8
{*procedure TCustomMPHexEditor.sub_004E16F8(?:?);
begin
 004E16F8    push        ebp
 004E16F9    mov         ebp,esp
 004E16FB    add         esp,0FFFFFFF8
 004E16FE    mov         dword ptr [ebp-8],edx
 004E1701    mov         dword ptr [ebp-4],eax
 004E1704    mov         edx,dword ptr [ebp-8]
 004E1707    mov         eax,dword ptr [ebp-4]
 004E170A    call        TCustomMPHexEditor.WMChar
 004E170F    pop         ecx
 004E1710    pop         ecx
 004E1711    pop         ebp
 004E1712    ret
end;*}

//004E1714
{*procedure TCustomMPHexEditor.WMChar(?:?);
begin
 004E1714    push        ebp
 004E1715    mov         ebp,esp
 004E1717    add         esp,0FFFFFFC0
 004E171A    push        ebx
 004E171B    push        esi
 004E171C    xor         ecx,ecx
 004E171E    mov         dword ptr [ebp-3C],ecx
 004E1721    mov         dword ptr [ebp-40],ecx
 004E1724    mov         dword ptr [ebp-34],ecx
 004E1727    mov         dword ptr [ebp-38],ecx
 004E172A    mov         dword ptr [ebp-2C],ecx
 004E172D    mov         dword ptr [ebp-30],ecx
 004E1730    mov         dword ptr [ebp-10],edx
 004E1733    mov         dword ptr [ebp-0C],eax
 004E1736    xor         eax,eax
 004E1738    push        ebp
 004E1739    push        4E1CF0
 004E173E    push        dword ptr fs:[eax]
 004E1741    mov         dword ptr fs:[eax],esp
 004E1744    mov         eax,dword ptr [ebp-10]
 004E1747    mov         ax,word ptr [eax+4]
 004E174B    mov         word ptr [ebp-16],ax
 004E174F    mov         eax,dword ptr [ebp-0C]
 004E1752    cmp         word ptr [eax+1E2],0;TCustomMPHexEditor.?f1E2:word
>004E175A    je          004E1780
 004E175C    mov         al,byte ptr [ebp-16]
 004E175F    mov         byte ptr [ebp-25],al
 004E1762    lea         ecx,[ebp-25]
 004E1765    mov         ebx,dword ptr [ebp-0C]
 004E1768    mov         edx,dword ptr [ebp-0C]
 004E176B    mov         eax,dword ptr [ebx+1E4];TCustomMPHexEditor.?f1E4:dword
 004E1771    call        dword ptr [ebx+1E0];TCustomMPHexEditor.FOnKeyPress
 004E1777    xor         eax,eax
 004E1779    mov         al,byte ptr [ebp-25]
 004E177C    mov         word ptr [ebp-16],ax
 004E1780    mov         eax,dword ptr [ebp-0C]
 004E1783    cmp         byte ptr [eax+561],0;TCustomMPHexEditor.?f561:byte
>004E178A    jne         004E1CB2
 004E1790    mov         al,byte ptr [ebp-16]
 004E1793    mov         edx,dword ptr [ebp-0C]
 004E1796    and         eax,0FF
 004E179B    bt          dword ptr [edx+620],eax;TCustomMPHexEditor.?f620:dword
>004E17A2    jb          004E1CB2
 004E17A8    mov         eax,dword ptr [ebp-0C]
 004E17AB    mov         ecx,dword ptr [eax+22C];TCustomMPHexEditor.FCurrent:Longint
 004E17B1    mov         eax,dword ptr [ebp-0C]
 004E17B4    mov         edx,dword ptr [eax+228];TCustomMPHexEditor.FCurrent:TGridCoord
 004E17BA    mov         eax,dword ptr [ebp-0C]
 004E17BD    call        004E1288
 004E17C2    mov         dword ptr [ebp-14],eax
 004E17C5    mov         eax,dword ptr [ebp-0C]
 004E17C8    call        004E0588
 004E17CD    cmp         eax,dword ptr [ebp-14]
>004E17D0    jg          004E17E2
 004E17D2    mov         eax,dword ptr [ebp-0C]
 004E17D5    call        TMPHexEditorEx.GetInsertMode
 004E17DA    test        al,al
>004E17DC    je          004E1CB2
 004E17E2    mov         eax,dword ptr [ebp-0C]
 004E17E5    cmp         byte ptr [eax+4F0],0;TCustomMPHexEditor.?f4F0:byte
>004E17EC    jne         004E1A4B
 004E17F2    lea         eax,[ebp-30]
 004E17F5    mov         dx,word ptr [ebp-16]
 004E17F9    call        @WStrFromWChar
 004E17FE    mov         edx,dword ptr [ebp-30]
 004E1801    lea         eax,[ebp-2C]
 004E1804    call        @LStrFromWStr
 004E1809    mov         eax,dword ptr [ebp-2C]
 004E180C    mov         edx,4E1D08;'0123456789abcdef0123456789ABCDEF'
 004E1811    call        @LStrPos
 004E1816    test        eax,eax
>004E1818    je          004E1A3E
 004E181E    mov         al,byte ptr [ebp-16]
 004E1821    call        UpCase
 004E1826    and         eax,0FF
 004E182B    mov         word ptr [ebp-16],ax
 004E182F    mov         eax,dword ptr [ebp-0C]
 004E1832    call        TMPHexEditorEx.GetInsertMode
 004E1837    test        al,al
>004E1839    jne         004E1845
 004E183B    mov         dl,1
 004E183D    mov         eax,dword ptr [ebp-0C]
 004E1840    call        004E31CC
 004E1845    lea         eax,[ebp-20]
 004E1848    push        eax
 004E1849    mov         eax,dword ptr [ebp-0C]
 004E184C    mov         cl,byte ptr [eax+4F0];TCustomMPHexEditor.?f4F0:byte
 004E1852    mov         edx,dword ptr [ebp-14]
 004E1855    mov         eax,dword ptr [ebp-0C]
 004E1858    call        004E1344
 004E185D    mov         eax,dword ptr [ebp-0C]
 004E1860    call        004E0588
 004E1865    cmp         eax,dword ptr [ebp-14]
>004E1868    jle         004E187A
 004E186A    mov         edx,dword ptr [ebp-14]
 004E186D    mov         eax,dword ptr [ebp-0C]
 004E1870    call        004E8F14
 004E1875    mov         byte ptr [ebp-17],al
>004E1878    jmp         004E187E
 004E187A    mov         byte ptr [ebp-17],0
 004E187E    mov         eax,dword ptr [ebp-0C]
 004E1881    mov         eax,dword ptr [eax+228];TCustomMPHexEditor.FCurrent:TGridCoord
 004E1887    mov         edx,dword ptr [ebp-0C]
 004E188A    sub         eax,dword ptr [edx+4E4]
 004E1890    cmp         eax,dword ptr [ebp-20]
>004E1893    je          004E18A1
 004E1895    mov         eax,dword ptr [ebp-0C]
 004E1898    call        004E4AD8
 004E189D    test        eax,eax
>004E189F    je          004E18D6
 004E18A1    lea         eax,[ebp-38]
 004E18A4    mov         dx,word ptr [ebp-16]
 004E18A8    call        @WStrFromWChar
 004E18AD    mov         edx,dword ptr [ebp-38]
 004E18B0    lea         eax,[ebp-34]
 004E18B3    call        @LStrFromWStr
 004E18B8    mov         eax,dword ptr [ebp-34]
 004E18BB    mov         edx,4E1D34;'0123456789ABCDEF'
 004E18C0    call        @LStrPos
 004E18C5    dec         eax
 004E18C6    shl         eax,4
 004E18C9    mov         dl,byte ptr [ebp-17]
 004E18CC    and         dl,0F
 004E18CF    add         al,dl
 004E18D1    mov         byte ptr [ebp-18],al
>004E18D4    jmp         004E1906
 004E18D6    lea         eax,[ebp-40]
 004E18D9    mov         dx,word ptr [ebp-16]
 004E18DD    call        @WStrFromWChar
 004E18E2    mov         edx,dword ptr [ebp-40]
 004E18E5    lea         eax,[ebp-3C]
 004E18E8    call        @LStrFromWStr
 004E18ED    mov         eax,dword ptr [ebp-3C]
 004E18F0    mov         edx,4E1D34;'0123456789ABCDEF'
 004E18F5    call        @LStrPos
 004E18FA    dec         eax
 004E18FB    mov         dl,byte ptr [ebp-17]
 004E18FE    and         dl,0F0
 004E1901    add         al,dl
 004E1903    mov         byte ptr [ebp-18],al
 004E1906    lea         eax,[ebp-8]
 004E1909    xor         ecx,ecx
 004E190B    mov         edx,8
 004E1910    call        @FillChar
 004E1915    mov         eax,dword ptr [ebp-0C]
 004E1918    call        TMPHexEditorEx.GetInsertMode
 004E191D    test        al,al
>004E191F    je          004E19DB
 004E1925    mov         eax,dword ptr [ebp-0C]
 004E1928    mov         eax,dword ptr [eax+228];TCustomMPHexEditor.FCurrent:TGridCoord
 004E192E    sub         eax,2
 004E1931    mov         edx,dword ptr [ebp-0C]
 004E1934    mov         edx,dword ptr [edx+5F4];TCustomMPHexEditor.?f5F4:Integer
 004E193A    add         edx,edx
 004E193C    mov         ecx,edx
 004E193E    cdq
 004E193F    idiv        eax,ecx
 004E1941    test        edx,edx
>004E1943    je          004E1955
 004E1945    mov         eax,dword ptr [ebp-0C]
 004E1948    call        004E4AD8
 004E194D    test        eax,eax
>004E194F    jle         004E19DB
 004E1955    mov         eax,dword ptr [ebp-0C]
 004E1958    cmp         dword ptr [eax+4E4],0;TCustomMPHexEditor.?f4E4:dword
>004E195F    jne         004E1967
 004E1961    and         byte ptr [ebp-18],0F0
>004E1965    jmp         004E196B
 004E1967    and         byte ptr [ebp-18],0F
 004E196B    mov         al,byte ptr [ebp-18]
 004E196E    mov         byte ptr [ebp-8],al
 004E1971    mov         eax,dword ptr [ebp-0C]
 004E1974    call        004E0588
 004E1979    test        eax,eax
>004E197B    jne         004E1997
 004E197D    push        0
 004E197F    push        0
 004E1981    lea         edx,[ebp-8]
 004E1984    mov         eax,dword ptr [ebp-0C]
 004E1987    mov         ecx,dword ptr [eax+5F4];TCustomMPHexEditor.?f5F4:Integer
 004E198D    mov         eax,dword ptr [ebp-0C]
 004E1990    call        004E475C
>004E1995    jmp         004E1A14
 004E1997    mov         eax,dword ptr [ebp-0C]
 004E199A    call        004E4AD8
 004E199F    test        eax,eax
>004E19A1    jne         004E19C1
 004E19A3    mov         eax,dword ptr [ebp-14]
 004E19A6    push        eax
 004E19A7    push        0
 004E19A9    push        0
 004E19AB    lea         edx,[ebp-8]
 004E19AE    mov         eax,dword ptr [ebp-0C]
 004E19B1    mov         ecx,dword ptr [eax+5F4];TCustomMPHexEditor.?f5F4:Integer
 004E19B7    mov         eax,dword ptr [ebp-0C]
 004E19BA    call        004E4678
>004E19BF    jmp         004E1A14
 004E19C1    push        0
 004E19C3    push        0
 004E19C5    lea         edx,[ebp-8]
 004E19C8    mov         eax,dword ptr [ebp-0C]
 004E19CB    mov         ecx,dword ptr [eax+5F4];TCustomMPHexEditor.?f5F4:Integer
 004E19D1    mov         eax,dword ptr [ebp-0C]
 004E19D4    call        004E4844
>004E19D9    jmp         004E1A14
 004E19DB    mov         eax,dword ptr [ebp-0C]
 004E19DE    call        004E0588
 004E19E3    cmp         eax,dword ptr [ebp-14]
>004E19E6    jle         004E1CB2
 004E19EC    mov         eax,dword ptr [ebp-14]
 004E19EF    push        eax
 004E19F0    mov         eax,dword ptr [ebp-0C]
 004E19F3    mov         eax,dword ptr [eax+228];TCustomMPHexEditor.FCurrent:TGridCoord
 004E19F9    push        eax
 004E19FA    mov         eax,dword ptr [ebp-0C]
 004E19FD    mov         eax,dword ptr [eax+22C];TCustomMPHexEditor.FCurrent:Longint
 004E1A03    push        eax
 004E1A04    push        0
 004E1A06    mov         cl,byte ptr [ebp-18]
 004E1A09    mov         dl,byte ptr [ebp-17]
 004E1A0C    mov         eax,dword ptr [ebp-0C]
 004E1A0F    call        004E1D4C
 004E1A14    mov         eax,dword ptr [ebp-0C]
 004E1A17    mov         byte ptr [eax+614],0;TCustomMPHexEditor.?f614:byte
 004E1A1E    mov         word ptr [ebp-24],27
 004E1A24    lea         edx,[ebp-24]
 004E1A27    mov         cl,byte ptr ds:[4E1D48];0x0 gvar_004E1D48
 004E1A2D    mov         eax,dword ptr [ebp-0C]
 004E1A30    mov         si,0FFBC
 004E1A34    call        @CallDynaInst;TCustomMPHexEditor.sub_0048A878
>004E1A39    jmp         004E1CB2
 004E1A3E    mov         eax,dword ptr [ebp-0C]
 004E1A41    call        004E653C
>004E1A46    jmp         004E1CB2
 004E1A4B    cmp         word ptr [ebp-16],100
>004E1A51    jae         004E1A68
 004E1A53    mov         dx,word ptr [ebp-16]
 004E1A57    mov         eax,dword ptr [ebp-0C]
 004E1A5A    call        004E0BC0
 004E1A5F    and         eax,0FF
 004E1A64    mov         word ptr [ebp-16],ax
 004E1A68    mov         al,byte ptr [ebp-16]
 004E1A6B    mov         edx,dword ptr [ebp-0C]
 004E1A6E    and         eax,0FF
 004E1A73    bt          dword ptr [edx+620],eax;TCustomMPHexEditor.?f620:dword
>004E1A7A    jae         004E1A89
 004E1A7C    mov         eax,dword ptr [ebp-0C]
 004E1A7F    call        004E653C
>004E1A84    jmp         004E1CB2
 004E1A89    mov         eax,dword ptr [ebp-0C]
 004E1A8C    call        TMPHexEditorEx.GetInsertMode
 004E1A91    test        al,al
>004E1A93    jne         004E1A9F
 004E1A95    mov         dl,1
 004E1A97    mov         eax,dword ptr [ebp-0C]
 004E1A9A    call        004E31CC
 004E1A9F    lea         eax,[ebp-20]
 004E1AA2    push        eax
 004E1AA3    mov         eax,dword ptr [ebp-0C]
 004E1AA6    mov         cl,byte ptr [eax+4F0];TCustomMPHexEditor.?f4F0:byte
 004E1AAC    mov         edx,dword ptr [ebp-14]
 004E1AAF    mov         eax,dword ptr [ebp-0C]
 004E1AB2    call        004E1344
 004E1AB7    lea         eax,[ebp-8]
 004E1ABA    xor         ecx,ecx
 004E1ABC    mov         edx,8
 004E1AC1    call        @FillChar
 004E1AC6    mov         eax,dword ptr [ebp-0C]
 004E1AC9    cmp         byte ptr [eax+61C],0;TCustomMPHexEditor.?f61C:byte
>004E1AD0    jne         004E1ADB
 004E1AD2    mov         ax,word ptr [ebp-16]
 004E1AD6    mov         byte ptr [ebp-8],al
>004E1AD9    jmp         004E1AF7
 004E1ADB    mov         ax,word ptr [ebp-16]
 004E1ADF    mov         word ptr [ebp-8],ax
 004E1AE3    mov         eax,dword ptr [ebp-0C]
 004E1AE6    cmp         byte ptr [eax+61D],0;TCustomMPHexEditor.?f61D:byte
>004E1AED    je          004E1AF7
 004E1AEF    lea         eax,[ebp-8]
 004E1AF2    call        004DFB2C
 004E1AF7    mov         eax,dword ptr [ebp-0C]
 004E1AFA    call        004E0588
 004E1AFF    test        eax,eax
>004E1B01    je          004E1B10
 004E1B03    mov         eax,dword ptr [ebp-0C]
 004E1B06    call        004E0588
 004E1B0B    cmp         eax,dword ptr [ebp-14]
>004E1B0E    jne         004E1B16
 004E1B10    mov         byte ptr [ebp-17],0
>004E1B14    jmp         004E1B24
 004E1B16    mov         edx,dword ptr [ebp-14]
 004E1B19    mov         eax,dword ptr [ebp-0C]
 004E1B1C    call        004E8F14
 004E1B21    mov         byte ptr [ebp-17],al
 004E1B24    mov         eax,dword ptr [ebp-0C]
 004E1B27    cmp         byte ptr [eax+61C],0;TCustomMPHexEditor.?f61C:byte
>004E1B2E    je          004E1B71
 004E1B30    mov         eax,dword ptr [ebp-0C]
 004E1B33    call        004E0588
 004E1B38    test        eax,eax
>004E1B3A    je          004E1B59
 004E1B3C    mov         eax,dword ptr [ebp-0C]
 004E1B3F    call        004E0588
 004E1B44    cmp         eax,dword ptr [ebp-14]
>004E1B47    je          004E1B59
 004E1B49    mov         eax,dword ptr [ebp-0C]
 004E1B4C    call        004E0588
 004E1B51    mov         edx,dword ptr [ebp-14]
 004E1B54    inc         edx
 004E1B55    cmp         eax,edx
>004E1B57    jne         004E1B61
 004E1B59    mov         word ptr [ebp-22],0
>004E1B5F    jmp         004E1B71
 004E1B61    push        2
 004E1B63    lea         edx,[ebp-22]
 004E1B66    mov         ecx,dword ptr [ebp-14]
 004E1B69    mov         eax,dword ptr [ebp-0C]
 004E1B6C    call        004E8F70
 004E1B71    mov         eax,dword ptr [ebp-0C]
 004E1B74    call        TMPHexEditorEx.GetInsertMode
 004E1B79    test        al,al
>004E1B7B    je          004E1C36
 004E1B81    mov         eax,dword ptr [ebp-0C]
 004E1B84    call        004E4AD8
 004E1B89    test        eax,eax
>004E1B8B    jle         004E1BAA
 004E1B8D    push        0
 004E1B8F    push        0
 004E1B91    lea         edx,[ebp-8]
 004E1B94    mov         eax,dword ptr [ebp-0C]
 004E1B97    mov         ecx,dword ptr [eax+5F4];TCustomMPHexEditor.?f5F4:Integer
 004E1B9D    mov         eax,dword ptr [ebp-0C]
 004E1BA0    call        004E4844
>004E1BA5    jmp         004E1C97
 004E1BAA    mov         eax,dword ptr [ebp-0C]
 004E1BAD    call        004E0588
 004E1BB2    cmp         eax,dword ptr [ebp-14]
>004E1BB5    jne         004E1BD1
 004E1BB7    push        0
 004E1BB9    push        1
 004E1BBB    lea         edx,[ebp-8]
 004E1BBE    mov         eax,dword ptr [ebp-0C]
 004E1BC1    mov         ecx,dword ptr [eax+5F4];TCustomMPHexEditor.?f5F4:Integer
 004E1BC7    mov         eax,dword ptr [ebp-0C]
 004E1BCA    call        004E475C
>004E1BCF    jmp         004E1C2A
 004E1BD1    mov         eax,dword ptr [ebp-14]
 004E1BD4    mov         edx,dword ptr [ebp-0C]
 004E1BD7    mov         ecx,dword ptr [edx+5F4];TCustomMPHexEditor.?f5F4:Integer
 004E1BDD    cdq
 004E1BDE    idiv        eax,ecx
 004E1BE0    test        edx,edx
>004E1BE2    jne         004E1C02
 004E1BE4    mov         eax,dword ptr [ebp-14]
 004E1BE7    push        eax
 004E1BE8    push        0
 004E1BEA    push        0
 004E1BEC    lea         edx,[ebp-8]
 004E1BEF    mov         eax,dword ptr [ebp-0C]
 004E1BF2    mov         ecx,dword ptr [eax+5F4];TCustomMPHexEditor.?f5F4:Integer
 004E1BF8    mov         eax,dword ptr [ebp-0C]
 004E1BFB    call        004E4678
>004E1C00    jmp         004E1C2A
 004E1C02    mov         eax,dword ptr [ebp-14]
 004E1C05    push        eax
 004E1C06    mov         eax,dword ptr [ebp-0C]
 004E1C09    mov         eax,dword ptr [eax+228];TCustomMPHexEditor.FCurrent:TGridCoord
 004E1C0F    push        eax
 004E1C10    mov         eax,dword ptr [ebp-0C]
 004E1C13    mov         eax,dword ptr [eax+22C];TCustomMPHexEditor.FCurrent:Longint
 004E1C19    push        eax
 004E1C1A    push        0
 004E1C1C    mov         cl,byte ptr [ebp-8]
 004E1C1F    mov         dl,byte ptr [ebp-17]
 004E1C22    mov         eax,dword ptr [ebp-0C]
 004E1C25    call        004E1D4C
 004E1C2A    mov         eax,dword ptr [ebp-0C]
 004E1C2D    mov         byte ptr [eax+614],0;TCustomMPHexEditor.?f614:byte
>004E1C34    jmp         004E1C97
 004E1C36    mov         eax,dword ptr [ebp-0C]
 004E1C39    cmp         byte ptr [eax+61C],0;TCustomMPHexEditor.?f61C:byte
>004E1C40    je          004E1C6E
 004E1C42    mov         eax,dword ptr [ebp-14]
 004E1C45    push        eax
 004E1C46    mov         eax,dword ptr [ebp-0C]
 004E1C49    mov         eax,dword ptr [eax+228];TCustomMPHexEditor.FCurrent:TGridCoord
 004E1C4F    push        eax
 004E1C50    mov         eax,dword ptr [ebp-0C]
 004E1C53    mov         eax,dword ptr [eax+22C];TCustomMPHexEditor.FCurrent:Longint
 004E1C59    push        eax
 004E1C5A    push        0
 004E1C5C    mov         cx,word ptr [ebp-8]
 004E1C60    mov         dx,word ptr [ebp-22]
 004E1C64    mov         eax,dword ptr [ebp-0C]
 004E1C67    call        004E1DC0
>004E1C6C    jmp         004E1C97
 004E1C6E    mov         eax,dword ptr [ebp-14]
 004E1C71    push        eax
 004E1C72    mov         eax,dword ptr [ebp-0C]
 004E1C75    mov         eax,dword ptr [eax+228];TCustomMPHexEditor.FCurrent:TGridCoord
 004E1C7B    push        eax
 004E1C7C    mov         eax,dword ptr [ebp-0C]
 004E1C7F    mov         eax,dword ptr [eax+22C];TCustomMPHexEditor.FCurrent:Longint
 004E1C85    push        eax
 004E1C86    push        0
 004E1C88    mov         cx,word ptr [ebp-16]
 004E1C8C    mov         dl,byte ptr [ebp-17]
 004E1C8F    mov         eax,dword ptr [ebp-0C]
 004E1C92    call        004E1D4C
 004E1C97    mov         word ptr [ebp-24],27
 004E1C9D    lea         edx,[ebp-24]
 004E1CA0    mov         cl,byte ptr ds:[4E1D48];0x0 gvar_004E1D48
 004E1CA6    mov         eax,dword ptr [ebp-0C]
 004E1CA9    mov         si,0FFBC
 004E1CAD    call        @CallDynaInst;TCustomMPHexEditor.sub_0048A878
 004E1CB2    xor         eax,eax
 004E1CB4    pop         edx
 004E1CB5    pop         ecx
 004E1CB6    pop         ecx
 004E1CB7    mov         dword ptr fs:[eax],edx
 004E1CBA    push        4E1CF7
 004E1CBF    lea         eax,[ebp-40]
 004E1CC2    call        @WStrClr
 004E1CC7    lea         eax,[ebp-3C]
 004E1CCA    call        @LStrClr
 004E1CCF    lea         eax,[ebp-38]
 004E1CD2    call        @WStrClr
 004E1CD7    lea         eax,[ebp-34]
 004E1CDA    call        @LStrClr
 004E1CDF    lea         eax,[ebp-30]
 004E1CE2    call        @WStrClr
 004E1CE7    lea         eax,[ebp-2C]
 004E1CEA    call        @LStrClr
 004E1CEF    ret
>004E1CF0    jmp         @HandleFinally
>004E1CF5    jmp         004E1CBF
 004E1CF7    pop         esi
 004E1CF8    pop         ebx
 004E1CF9    mov         esp,ebp
 004E1CFB    pop         ebp
 004E1CFC    ret
end;*}

//004E1D4C
{*procedure sub_004E1D4C(?:TCustomMPHexEditor; ?:?; ?:Byte; ?:?; ?:?);
begin
 004E1D4C    push        ebp
 004E1D4D    mov         ebp,esp
 004E1D4F    add         esp,0FFFFFFF8
 004E1D52    mov         byte ptr [ebp-6],cl
 004E1D55    mov         byte ptr [ebp-5],dl
 004E1D58    mov         dword ptr [ebp-4],eax
 004E1D5B    mov         al,byte ptr [ebp-5]
 004E1D5E    cmp         al,byte ptr [ebp-6]
>004E1D61    je          004E1DB8
 004E1D63    push        1
 004E1D65    push        0
 004E1D67    mov         eax,dword ptr [ebp+8]
 004E1D6A    push        eax
 004E1D6B    mov         ecx,dword ptr [ebp+14]
 004E1D6E    xor         edx,edx
 004E1D70    mov         eax,dword ptr [ebp-4]
 004E1D73    call        004E3CA4
 004E1D78    mov         cl,byte ptr [ebp-6]
 004E1D7B    mov         edx,dword ptr [ebp+14]
 004E1D7E    mov         eax,dword ptr [ebp-4]
 004E1D81    call        004E8F3C
 004E1D86    mov         eax,dword ptr [ebp-4]
 004E1D89    call        TMPHexEditorEx.GetInsertMode
 004E1D8E    test        al,al
>004E1D90    jne         004E1DA5
 004E1D92    mov         cl,1
 004E1D94    mov         edx,dword ptr [ebp+14]
 004E1D97    mov         eax,dword ptr [ebp-4]
 004E1D9A    mov         eax,dword ptr [eax+4F8];TCustomMPHexEditor.?f4F8:TBits
 004E1DA0    call        TBits.SetBit
 004E1DA5    mov         eax,dword ptr [ebp-4]
 004E1DA8    mov         edx,dword ptr [eax]
 004E1DAA    call        dword ptr [edx+7C];TCustomMPHexEditor.sub_0048BE68
 004E1DAD    mov         eax,dword ptr [ebp-4]
 004E1DB0    mov         edx,dword ptr [eax]
 004E1DB2    call        dword ptr [edx+0EC];TCustomMPHexEditor.sub_004E87E8
 004E1DB8    pop         ecx
 004E1DB9    pop         ecx
 004E1DBA    pop         ebp
 004E1DBB    ret         10
end;*}

//004E1DC0
{*procedure sub_004E1DC0(?:TCustomMPHexEditor; ?:?; ?:Byte; ?:?; ?:?);
begin
 004E1DC0    push        ebp
 004E1DC1    mov         ebp,esp
 004E1DC3    add         esp,0FFFFFFF8
 004E1DC6    push        ebx
 004E1DC7    mov         word ptr [ebp-4],cx
 004E1DCB    mov         word ptr [ebp-2],dx
 004E1DCF    mov         dword ptr [ebp-8],eax
 004E1DD2    mov         ax,word ptr [ebp-2]
 004E1DD6    cmp         ax,word ptr [ebp-4]
>004E1DDA    je          004E1E58
 004E1DDC    push        2
 004E1DDE    push        0
 004E1DE0    mov         eax,dword ptr [ebp+8]
 004E1DE3    push        eax
 004E1DE4    mov         ecx,dword ptr [ebp+14]
 004E1DE7    xor         edx,edx
 004E1DE9    mov         eax,dword ptr [ebp-8]
 004E1DEC    call        004E3CA4
 004E1DF1    push        2
 004E1DF3    lea         edx,[ebp-4]
 004E1DF6    mov         ecx,dword ptr [ebp+14]
 004E1DF9    mov         eax,dword ptr [ebp-8]
 004E1DFC    mov         ebx,dword ptr [eax]
 004E1DFE    call        dword ptr [ebx+10C];TCustomMPHexEditor.sub_004E8FA0
 004E1E04    mov         eax,dword ptr [ebp-8]
 004E1E07    call        TMPHexEditorEx.GetInsertMode
 004E1E0C    test        al,al
>004E1E0E    jne         004E1E45
 004E1E10    mov         al,byte ptr [ebp-2]
 004E1E13    cmp         al,byte ptr [ebp-4]
 004E1E16    setne       cl
 004E1E19    mov         edx,dword ptr [ebp+14]
 004E1E1C    mov         eax,dword ptr [ebp-8]
 004E1E1F    mov         eax,dword ptr [eax+4F8];TCustomMPHexEditor.?f4F8:TBits
 004E1E25    call        TBits.SetBit
 004E1E2A    mov         al,byte ptr [ebp-1]
 004E1E2D    cmp         al,byte ptr [ebp-3]
 004E1E30    setne       cl
 004E1E33    mov         edx,dword ptr [ebp+14]
 004E1E36    inc         edx
 004E1E37    mov         eax,dword ptr [ebp-8]
 004E1E3A    mov         eax,dword ptr [eax+4F8];TCustomMPHexEditor.?f4F8:TBits
 004E1E40    call        TBits.SetBit
 004E1E45    mov         eax,dword ptr [ebp-8]
 004E1E48    mov         edx,dword ptr [eax]
 004E1E4A    call        dword ptr [edx+7C];TCustomMPHexEditor.sub_0048BE68
 004E1E4D    mov         eax,dword ptr [ebp-8]
 004E1E50    mov         edx,dword ptr [eax]
 004E1E52    call        dword ptr [edx+0EC];TCustomMPHexEditor.sub_004E87E8
 004E1E58    pop         ebx
 004E1E59    pop         ecx
 004E1E5A    pop         ecx
 004E1E5B    pop         ebp
 004E1E5C    ret         10
end;*}

//004E1E60
{*procedure TCustomMPHexEditor.sub_0048A878(?:?; ?:?);
begin
 004E1E60    push        ebp
 004E1E61    mov         ebp,esp
 004E1E63    add         esp,0FFFFFFE4
 004E1E66    push        ebx
 004E1E67    mov         byte ptr [ebp-9],cl
 004E1E6A    mov         dword ptr [ebp-8],edx
 004E1E6D    mov         dword ptr [ebp-4],eax
 004E1E70    mov         eax,dword ptr [ebp-4]
 004E1E73    cmp         word ptr [eax+1DA],0;TCustomMPHexEditor.?f1DA:word
>004E1E7B    je          004E1E96
 004E1E7D    mov         al,byte ptr [ebp-9]
 004E1E80    push        eax
 004E1E81    mov         ecx,dword ptr [ebp-8]
 004E1E84    mov         ebx,dword ptr [ebp-4]
 004E1E87    mov         edx,dword ptr [ebp-4]
 004E1E8A    mov         eax,dword ptr [ebx+1DC];TCustomMPHexEditor.?f1DC:TMessageForm
 004E1E90    call        dword ptr [ebx+1D8];TCustomMPHexEditor.FOnKeyDown
 004E1E96    mov         al,[004E2930];0x0 gvar_004E2930
 004E1E9B    cmp         al,byte ptr [ebp-9]
>004E1E9E    jne         004E1EBF
 004E1EA0    mov         eax,dword ptr [ebp-8]
 004E1EA3    cmp         word ptr [eax],10
>004E1EA7    je          004E1EBF
 004E1EA9    mov         eax,dword ptr [ebp-4]
 004E1EAC    call        TMPHexEditorEx.GetInsertMode
 004E1EB1    test        al,al
>004E1EB3    jne         004E1EBF
 004E1EB5    mov         dl,1
 004E1EB7    mov         eax,dword ptr [ebp-4]
 004E1EBA    call        004E31CC
 004E1EBF    mov         eax,dword ptr [ebp-8]
 004E1EC2    movzx       eax,word ptr [eax]
 004E1EC5    cmp         eax,25
>004E1EC8    jg          004E1F5B
>004E1ECE    je          004E2330
 004E1ED4    add         eax,0FFFFFFF8
 004E1ED7    cmp         eax,1C
>004E1EDA    ja          004E2928
 004E1EE0    jmp         dword ptr [eax*4+4E1EE7]
 004E1EE0    dd          004E2330
 004E1EE0    dd          004E27DD
 004E1EE0    dd          004E2928
 004E1EE0    dd          004E2928
 004E1EE0    dd          004E2928
 004E1EE0    dd          004E2928
 004E1EE0    dd          004E2928
 004E1EE0    dd          004E2928
 004E1EE0    dd          004E2887
 004E1EE0    dd          004E2928
 004E1EE0    dd          004E2928
 004E1EE0    dd          004E2928
 004E1EE0    dd          004E2928
 004E1EE0    dd          004E2928
 004E1EE0    dd          004E2928
 004E1EE0    dd          004E2928
 004E1EE0    dd          004E2928
 004E1EE0    dd          004E2928
 004E1EE0    dd          004E2928
 004E1EE0    dd          004E2928
 004E1EE0    dd          004E2928
 004E1EE0    dd          004E2928
 004E1EE0    dd          004E2928
 004E1EE0    dd          004E2928
 004E1EE0    dd          004E2928
 004E1EE0    dd          004E1FA5
 004E1EE0    dd          004E205A
 004E1EE0    dd          004E220E
 004E1EE0    dd          004E2148
 004E1F5B    cmp         eax,2D
>004E1F5E    jg          004E1F82
>004E1F60    je          004E2909
 004E1F66    sub         eax,26
>004E1F69    je          004E2763
 004E1F6F    dec         eax
>004E1F70    je          004E2531
 004E1F76    dec         eax
>004E1F77    je          004E2717
>004E1F7D    jmp         004E2928
 004E1F82    sub         eax,2E
>004E1F85    je          004E28AB
 004E1F8B    add         eax,0FFFFFFFE
 004E1F8E    sub         eax,0A
>004E1F91    jb          004E2821
 004E1F97    sub         eax,1A
>004E1F9A    je          004E27A7
>004E1FA0    jmp         004E2928
 004E1FA5    test        byte ptr [ebp-9],4
>004E1FA9    je          004E1FE4
 004E1FAB    mov         eax,dword ptr [ebp-4]
 004E1FAE    mov         eax,dword ptr [eax+25C];TCustomMPHexEditor.FTopLeft:Longint
 004E1FB4    mov         dword ptr [ebp-1C],eax
 004E1FB7    mov         eax,dword ptr [ebp-4]
 004E1FBA    mov         eax,dword ptr [eax+228];TCustomMPHexEditor.FCurrent:TGridCoord
 004E1FC0    mov         dword ptr [ebp-10],eax
 004E1FC3    cmp         dword ptr [ebp-1C],0FFFFFFFF
>004E1FC7    jle         004E2928
 004E1FCD    push        1
 004E1FCF    push        1
 004E1FD1    mov         ecx,dword ptr [ebp-1C]
 004E1FD4    mov         edx,dword ptr [ebp-10]
 004E1FD7    mov         eax,dword ptr [ebp-4]
 004E1FDA    call        004D8CCC
>004E1FDF    jmp         004E2928
 004E1FE4    mov         eax,dword ptr [ebp-4]
 004E1FE7    call        004DD53C
 004E1FEC    mov         edx,dword ptr [ebp-4]
 004E1FEF    mov         edx,dword ptr [edx+22C];TCustomMPHexEditor.FCurrent:Longint
 004E1FF5    sub         edx,eax
 004E1FF7    inc         edx
 004E1FF8    mov         eax,2
 004E1FFD    call        004DF5E8
 004E2002    mov         dword ptr [ebp-1C],eax
 004E2005    mov         eax,dword ptr [ebp-4]
 004E2008    call        004DD53C
 004E200D    mov         edx,dword ptr [ebp-4]
 004E2010    mov         edx,dword ptr [edx+25C];TCustomMPHexEditor.FTopLeft:Longint
 004E2016    sub         edx,eax
 004E2018    inc         edx
 004E2019    mov         eax,2
 004E201E    call        004DF5E8
 004E2023    mov         edx,eax
 004E2025    mov         eax,dword ptr [ebp-4]
 004E2028    call        004DDBE8
 004E202D    mov         eax,dword ptr [ebp-4]
 004E2030    mov         eax,dword ptr [eax+228];TCustomMPHexEditor.FCurrent:TGridCoord
 004E2036    mov         dword ptr [ebp-10],eax
 004E2039    cmp         dword ptr [ebp-1C],0FFFFFFFF
>004E203D    jle         004E2928
 004E2043    push        1
 004E2045    push        1
 004E2047    mov         ecx,dword ptr [ebp-1C]
 004E204A    mov         edx,dword ptr [ebp-10]
 004E204D    mov         eax,dword ptr [ebp-4]
 004E2050    call        004D8CCC
>004E2055    jmp         004E2928
 004E205A    test        byte ptr [ebp-9],4
>004E205E    je          004E20B3
 004E2060    mov         eax,dword ptr [ebp-4]
 004E2063    call        004DD53C
 004E2068    mov         edx,eax
 004E206A    mov         eax,dword ptr [ebp-4]
 004E206D    add         edx,dword ptr [eax+25C];TCustomMPHexEditor.FTopLeft:Longint
 004E2073    dec         edx
 004E2074    mov         eax,dword ptr [ebp-4]
 004E2077    mov         eax,dword ptr [eax+24C];TCustomMPHexEditor.FRowCount:Longint
 004E207D    dec         eax
 004E207E    call        004DF5BC
 004E2083    mov         dword ptr [ebp-1C],eax
 004E2086    mov         eax,dword ptr [ebp-4]
 004E2089    mov         eax,dword ptr [eax+228];TCustomMPHexEditor.FCurrent:TGridCoord
 004E208F    mov         dword ptr [ebp-10],eax
 004E2092    cmp         dword ptr [ebp-1C],0
>004E2096    jle         004E2928
 004E209C    push        1
 004E209E    push        1
 004E20A0    mov         ecx,dword ptr [ebp-1C]
 004E20A3    mov         edx,dword ptr [ebp-10]
 004E20A6    mov         eax,dword ptr [ebp-4]
 004E20A9    call        004D8CCC
>004E20AE    jmp         004E2928
 004E20B3    mov         eax,dword ptr [ebp-4]
 004E20B6    call        004DD53C
 004E20BB    mov         edx,eax
 004E20BD    mov         eax,dword ptr [ebp-4]
 004E20C0    add         edx,dword ptr [eax+22C];TCustomMPHexEditor.FCurrent:Longint
 004E20C6    dec         edx
 004E20C7    mov         eax,dword ptr [ebp-4]
 004E20CA    mov         eax,dword ptr [eax+24C];TCustomMPHexEditor.FRowCount:Longint
 004E20D0    dec         eax
 004E20D1    call        004DF5BC
 004E20D6    mov         dword ptr [ebp-1C],eax
 004E20D9    mov         eax,dword ptr [ebp-4]
 004E20DC    call        004DD53C
 004E20E1    mov         edx,dword ptr [ebp-4]
 004E20E4    mov         edx,dword ptr [edx+24C];TCustomMPHexEditor.FRowCount:Longint
 004E20EA    sub         edx,eax
 004E20EC    mov         eax,2
 004E20F1    call        004DF5E8
 004E20F6    push        eax
 004E20F7    mov         eax,dword ptr [ebp-4]
 004E20FA    call        004DD53C
 004E20FF    mov         edx,eax
 004E2101    mov         eax,dword ptr [ebp-4]
 004E2104    add         edx,dword ptr [eax+25C];TCustomMPHexEditor.FTopLeft:Longint
 004E210A    dec         edx
 004E210B    pop         eax
 004E210C    call        004DF5BC
 004E2111    mov         edx,eax
 004E2113    mov         eax,dword ptr [ebp-4]
 004E2116    call        004DDBE8
 004E211B    mov         eax,dword ptr [ebp-4]
 004E211E    mov         eax,dword ptr [eax+228];TCustomMPHexEditor.FCurrent:TGridCoord
 004E2124    mov         dword ptr [ebp-10],eax
 004E2127    cmp         dword ptr [ebp-1C],0
>004E212B    jle         004E2928
 004E2131    push        1
 004E2133    push        1
 004E2135    mov         ecx,dword ptr [ebp-1C]
 004E2138    mov         edx,dword ptr [ebp-10]
 004E213B    mov         eax,dword ptr [ebp-4]
 004E213E    call        004D8CCC
>004E2143    jmp         004E2928
 004E2148    mov         eax,dword ptr [ebp-4]
 004E214B    call        004E409C
 004E2150    test        byte ptr [ebp-9],4
>004E2154    je          004E21AE
 004E2156    mov         eax,dword ptr [ebp-4]
 004E2159    cmp         byte ptr [eax+4F0],0;TCustomMPHexEditor.?f4F0:byte
>004E2160    jne         004E217D
 004E2162    push        1
 004E2164    push        1
 004E2166    mov         ecx,2
 004E216B    mov         edx,2
 004E2170    mov         eax,dword ptr [ebp-4]
 004E2173    call        004D8CCC
>004E2178    jmp         004E2928
 004E217D    push        1
 004E217F    push        1
 004E2181    mov         edx,2
 004E2186    mov         eax,dword ptr [ebp-4]
 004E2189    call        004E13EC
 004E218E    mov         edx,eax
 004E2190    mov         eax,2
 004E2195    call        004DF5E8
 004E219A    mov         edx,eax
 004E219C    mov         ecx,2
 004E21A1    mov         eax,dword ptr [ebp-4]
 004E21A4    call        004D8CCC
>004E21A9    jmp         004E2928
 004E21AE    mov         eax,dword ptr [ebp-4]
 004E21B1    cmp         byte ptr [eax+4F0],0;TCustomMPHexEditor.?f4F0:byte
>004E21B8    jne         004E21D9
 004E21BA    push        1
 004E21BC    push        1
 004E21BE    mov         eax,dword ptr [ebp-4]
 004E21C1    mov         ecx,dword ptr [eax+22C];TCustomMPHexEditor.FCurrent:Longint
 004E21C7    mov         edx,2
 004E21CC    mov         eax,dword ptr [ebp-4]
 004E21CF    call        004D8CCC
>004E21D4    jmp         004E2928
 004E21D9    push        1
 004E21DB    push        1
 004E21DD    mov         edx,2
 004E21E2    mov         eax,dword ptr [ebp-4]
 004E21E5    call        004E13EC
 004E21EA    mov         edx,eax
 004E21EC    mov         eax,2
 004E21F1    call        004DF5E8
 004E21F6    mov         edx,eax
 004E21F8    mov         eax,dword ptr [ebp-4]
 004E21FB    mov         ecx,dword ptr [eax+22C];TCustomMPHexEditor.FCurrent:Longint
 004E2201    mov         eax,dword ptr [ebp-4]
 004E2204    call        004D8CCC
>004E2209    jmp         004E2928
 004E220E    mov         eax,dword ptr [ebp-4]
 004E2211    call        004E409C
 004E2216    test        byte ptr [ebp-9],4
>004E221A    je          004E2280
 004E221C    mov         eax,dword ptr [ebp-4]
 004E221F    call        TMPHexEditorEx.GetInsertMode
 004E2224    test        al,al
>004E2226    jne         004E224A
 004E2228    lea         eax,[ebp-18]
 004E222B    push        eax
 004E222C    mov         eax,dword ptr [ebp-4]
 004E222F    call        004E0588
 004E2234    mov         edx,eax
 004E2236    dec         edx
 004E2237    mov         eax,dword ptr [ebp-4]
 004E223A    mov         cl,byte ptr [eax+4F0];TCustomMPHexEditor.?f4F0:byte
 004E2240    mov         eax,dword ptr [ebp-4]
 004E2243    call        004E1344
>004E2248    jmp         004E2269
 004E224A    lea         eax,[ebp-18]
 004E224D    push        eax
 004E224E    mov         eax,dword ptr [ebp-4]
 004E2251    call        004E0588
 004E2256    mov         edx,eax
 004E2258    mov         eax,dword ptr [ebp-4]
 004E225B    mov         cl,byte ptr [eax+4F0];TCustomMPHexEditor.?f4F0:byte
 004E2261    mov         eax,dword ptr [ebp-4]
 004E2264    call        004E1344
 004E2269    push        1
 004E226B    push        1
 004E226D    mov         ecx,dword ptr [ebp-14]
 004E2270    mov         edx,dword ptr [ebp-18]
 004E2273    mov         eax,dword ptr [ebp-4]
 004E2276    call        004D8CCC
>004E227B    jmp         004E2928
 004E2280    mov         eax,dword ptr [ebp-4]
 004E2283    cmp         byte ptr [eax+4F0],0;TCustomMPHexEditor.?f4F0:byte
>004E228A    jne         004E22E2
 004E228C    mov         eax,dword ptr [ebp-4]
 004E228F    mov         ecx,dword ptr [eax+22C];TCustomMPHexEditor.FCurrent:Longint
 004E2295    inc         ecx
 004E2296    mov         edx,2
 004E229B    mov         eax,dword ptr [ebp-4]
 004E229E    call        004E1288
 004E22A3    dec         eax
 004E22A4    mov         dword ptr [ebp-10],eax
 004E22A7    lea         edx,[ebp-10]
 004E22AA    mov         eax,dword ptr [ebp-4]
 004E22AD    call        004E5F40
 004E22B2    lea         eax,[ebp-18]
 004E22B5    push        eax
 004E22B6    mov         eax,dword ptr [ebp-4]
 004E22B9    mov         cl,byte ptr [eax+4F0];TCustomMPHexEditor.?f4F0:byte
 004E22BF    mov         edx,dword ptr [ebp-10]
 004E22C2    mov         eax,dword ptr [ebp-4]
 004E22C5    call        004E1344
 004E22CA    push        1
 004E22CC    push        1
 004E22CE    mov         edx,dword ptr [ebp-18]
 004E22D1    inc         edx
 004E22D2    mov         ecx,dword ptr [ebp-14]
 004E22D5    mov         eax,dword ptr [ebp-4]
 004E22D8    call        004D8CCC
>004E22DD    jmp         004E2928
 004E22E2    mov         eax,dword ptr [ebp-4]
 004E22E5    mov         ecx,dword ptr [eax+22C];TCustomMPHexEditor.FCurrent:Longint
 004E22EB    inc         ecx
 004E22EC    mov         edx,2
 004E22F1    mov         eax,dword ptr [ebp-4]
 004E22F4    call        004E1288
 004E22F9    dec         eax
 004E22FA    mov         dword ptr [ebp-10],eax
 004E22FD    lea         edx,[ebp-10]
 004E2300    mov         eax,dword ptr [ebp-4]
 004E2303    call        004E5F40
 004E2308    lea         eax,[ebp-18]
 004E230B    push        eax
 004E230C    mov         cl,1
 004E230E    mov         edx,dword ptr [ebp-10]
 004E2311    mov         eax,dword ptr [ebp-4]
 004E2314    call        004E1344
 004E2319    push        1
 004E231B    push        1
 004E231D    mov         ecx,dword ptr [ebp-14]
 004E2320    mov         edx,dword ptr [ebp-18]
 004E2323    mov         eax,dword ptr [ebp-4]
 004E2326    call        004D8CCC
>004E232B    jmp         004E2928
 004E2330    mov         eax,dword ptr [ebp-4]
 004E2333    call        TMPHexEditorEx.GetInsertMode
 004E2338    test        al,al
>004E233A    je          004E237D
 004E233C    mov         eax,dword ptr [ebp-4]
 004E233F    cmp         byte ptr [eax+561],0;TCustomMPHexEditor.?f561:byte
>004E2346    jne         004E237D
 004E2348    mov         eax,dword ptr [ebp-8]
 004E234B    cmp         word ptr [eax],8
>004E234F    jne         004E237D
 004E2351    mov         eax,dword ptr [ebp-4]
 004E2354    call        004E4AD8
 004E2359    test        eax,eax
>004E235B    jle         004E236C
 004E235D    xor         edx,edx
 004E235F    mov         eax,dword ptr [ebp-4]
 004E2362    call        004E3C40
>004E2367    jmp         004E2928
 004E236C    xor         ecx,ecx
 004E236E    mov         dl,1
 004E2370    mov         eax,dword ptr [ebp-4]
 004E2373    call        004E5364
>004E2378    jmp         004E2928
 004E237D    test        byte ptr [ebp-9],4
>004E2381    jne         004E2500
 004E2387    mov         eax,dword ptr [ebp-4]
 004E238A    cmp         byte ptr [eax+614],0;TCustomMPHexEditor.?f614:byte
>004E2391    jne         004E23AB
 004E2393    mov         eax,dword ptr [ebp-4]
 004E2396    cmp         byte ptr [eax+61C],0;TCustomMPHexEditor.?f61C:byte
>004E239D    je          004E23D3
 004E239F    mov         eax,dword ptr [ebp-4]
 004E23A2    cmp         byte ptr [eax+4F0],0;TCustomMPHexEditor.?f4F0:byte
>004E23A9    je          004E23D3
 004E23AB    mov         eax,dword ptr [ebp-4]
 004E23AE    mov         ecx,dword ptr [eax+22C];TCustomMPHexEditor.FCurrent:Longint
 004E23B4    mov         eax,dword ptr [ebp-4]
 004E23B7    mov         edx,dword ptr [eax+228];TCustomMPHexEditor.FCurrent:TGridCoord
 004E23BD    mov         eax,dword ptr [ebp-4]
 004E23C0    call        004E1288
 004E23C5    mov         edx,dword ptr [ebp-4]
 004E23C8    sub         eax,dword ptr [edx+5F4]
 004E23CE    mov         dword ptr [ebp-10],eax
>004E23D1    jmp         004E23F1
 004E23D3    mov         eax,dword ptr [ebp-4]
 004E23D6    mov         ecx,dword ptr [eax+22C];TCustomMPHexEditor.FCurrent:Longint
 004E23DC    mov         eax,dword ptr [ebp-4]
 004E23DF    mov         edx,dword ptr [eax+228];TCustomMPHexEditor.FCurrent:TGridCoord
 004E23E5    mov         eax,dword ptr [ebp-4]
 004E23E8    call        004E1288
 004E23ED    dec         eax
 004E23EE    mov         dword ptr [ebp-10],eax
 004E23F1    mov         eax,dword ptr [ebp-4]
 004E23F4    cmp         byte ptr [eax+4F0],0;TCustomMPHexEditor.?f4F0:byte
>004E23FB    je          004E2437
 004E23FD    cmp         dword ptr [ebp-10],0
>004E2401    jge         004E2408
 004E2403    xor         eax,eax
 004E2405    mov         dword ptr [ebp-10],eax
 004E2408    lea         eax,[ebp-18]
 004E240B    push        eax
 004E240C    mov         eax,dword ptr [ebp-4]
 004E240F    mov         cl,byte ptr [eax+4F0];TCustomMPHexEditor.?f4F0:byte
 004E2415    mov         edx,dword ptr [ebp-10]
 004E2418    mov         eax,dword ptr [ebp-4]
 004E241B    call        004E1344
 004E2420    push        1
 004E2422    push        1
 004E2424    mov         ecx,dword ptr [ebp-14]
 004E2427    mov         edx,dword ptr [ebp-18]
 004E242A    mov         eax,dword ptr [ebp-4]
 004E242D    call        004D8CCC
>004E2432    jmp         004E2928
 004E2437    mov         eax,dword ptr [ebp-4]
 004E243A    cmp         byte ptr [eax+614],0;TCustomMPHexEditor.?f614:byte
>004E2441    je          004E247D
 004E2443    lea         edx,[ebp-10]
 004E2446    mov         eax,dword ptr [ebp-4]
 004E2449    call        004E8CF8
 004E244E    lea         eax,[ebp-18]
 004E2451    push        eax
 004E2452    mov         eax,dword ptr [ebp-4]
 004E2455    mov         cl,byte ptr [eax+4F0];TCustomMPHexEditor.?f4F0:byte
 004E245B    mov         edx,dword ptr [ebp-10]
 004E245E    mov         eax,dword ptr [ebp-4]
 004E2461    call        004E1344
 004E2466    push        1
 004E2468    push        1
 004E246A    mov         ecx,dword ptr [ebp-14]
 004E246D    mov         edx,dword ptr [ebp-18]
 004E2470    mov         eax,dword ptr [ebp-4]
 004E2473    call        004D8CCC
>004E2478    jmp         004E2928
 004E247D    inc         dword ptr [ebp-10]
 004E2480    lea         eax,[ebp-18]
 004E2483    push        eax
 004E2484    xor         ecx,ecx
 004E2486    mov         edx,dword ptr [ebp-10]
 004E2489    mov         eax,dword ptr [ebp-4]
 004E248C    call        004E1344
 004E2491    mov         eax,dword ptr [ebp-18]
 004E2494    mov         edx,dword ptr [ebp-4]
 004E2497    cmp         eax,dword ptr [edx+228];TCustomMPHexEditor.FCurrent:TGridCoord
>004E249D    jge         004E24C3
 004E249F    push        1
 004E24A1    push        1
 004E24A3    mov         eax,dword ptr [ebp-4]
 004E24A6    mov         edx,dword ptr [eax+228];TCustomMPHexEditor.FCurrent:TGridCoord
 004E24AC    dec         edx
 004E24AD    mov         eax,dword ptr [ebp-4]
 004E24B0    mov         ecx,dword ptr [eax+22C];TCustomMPHexEditor.FCurrent:Longint
 004E24B6    mov         eax,dword ptr [ebp-4]
 004E24B9    call        004D8CCC
>004E24BE    jmp         004E2928
 004E24C3    dec         dword ptr [ebp-10]
 004E24C6    cmp         dword ptr [ebp-10],0
>004E24CA    jl          004E2928
 004E24D0    lea         eax,[ebp-18]
 004E24D3    push        eax
 004E24D4    mov         eax,dword ptr [ebp-4]
 004E24D7    mov         cl,byte ptr [eax+4F0];TCustomMPHexEditor.?f4F0:byte
 004E24DD    mov         edx,dword ptr [ebp-10]
 004E24E0    mov         eax,dword ptr [ebp-4]
 004E24E3    call        004E1344
 004E24E8    push        1
 004E24EA    push        1
 004E24EC    mov         edx,dword ptr [ebp-18]
 004E24EF    inc         edx
 004E24F0    mov         ecx,dword ptr [ebp-14]
 004E24F3    mov         eax,dword ptr [ebp-4]
 004E24F6    call        004D8CCC
>004E24FB    jmp         004E2928
 004E2500    mov         eax,dword ptr [ebp-8]
 004E2503    cmp         word ptr [eax],25
>004E2507    jne         004E2928
 004E250D    mov         dword ptr [ebp-10],2
 004E2514    push        1
 004E2516    push        1
 004E2518    mov         eax,dword ptr [ebp-4]
 004E251B    mov         ecx,dword ptr [eax+22C];TCustomMPHexEditor.FCurrent:Longint
 004E2521    mov         edx,dword ptr [ebp-10]
 004E2524    mov         eax,dword ptr [ebp-4]
 004E2527    call        004D8CCC
>004E252C    jmp         004E2928
 004E2531    test        byte ptr [ebp-9],4
>004E2535    jne         004E26EF
 004E253B    mov         eax,dword ptr [ebp-4]
 004E253E    cmp         byte ptr [eax+614],0;TCustomMPHexEditor.?f614:byte
>004E2545    jne         004E255F
 004E2547    mov         eax,dword ptr [ebp-4]
 004E254A    cmp         byte ptr [eax+61C],0;TCustomMPHexEditor.?f61C:byte
>004E2551    je          004E2587
 004E2553    mov         eax,dword ptr [ebp-4]
 004E2556    cmp         byte ptr [eax+4F0],0;TCustomMPHexEditor.?f4F0:byte
>004E255D    je          004E2587
 004E255F    mov         eax,dword ptr [ebp-4]
 004E2562    mov         ecx,dword ptr [eax+22C];TCustomMPHexEditor.FCurrent:Longint
 004E2568    mov         eax,dword ptr [ebp-4]
 004E256B    mov         edx,dword ptr [eax+228];TCustomMPHexEditor.FCurrent:TGridCoord
 004E2571    mov         eax,dword ptr [ebp-4]
 004E2574    call        004E1288
 004E2579    mov         edx,dword ptr [ebp-4]
 004E257C    add         eax,dword ptr [edx+5F4];TCustomMPHexEditor.?f5F4:Integer
 004E2582    mov         dword ptr [ebp-10],eax
>004E2585    jmp         004E25A5
 004E2587    mov         eax,dword ptr [ebp-4]
 004E258A    mov         ecx,dword ptr [eax+22C];TCustomMPHexEditor.FCurrent:Longint
 004E2590    mov         eax,dword ptr [ebp-4]
 004E2593    mov         edx,dword ptr [eax+228];TCustomMPHexEditor.FCurrent:TGridCoord
 004E2599    mov         eax,dword ptr [ebp-4]
 004E259C    call        004E1288
 004E25A1    inc         eax
 004E25A2    mov         dword ptr [ebp-10],eax
 004E25A5    mov         eax,dword ptr [ebp-4]
 004E25A8    cmp         byte ptr [eax+4F0],0;TCustomMPHexEditor.?f4F0:byte
>004E25AF    je          004E25EB
 004E25B1    lea         edx,[ebp-10]
 004E25B4    mov         eax,dword ptr [ebp-4]
 004E25B7    call        004E5F40
 004E25BC    lea         eax,[ebp-18]
 004E25BF    push        eax
 004E25C0    mov         eax,dword ptr [ebp-4]
 004E25C3    mov         cl,byte ptr [eax+4F0];TCustomMPHexEditor.?f4F0:byte
 004E25C9    mov         edx,dword ptr [ebp-10]
 004E25CC    mov         eax,dword ptr [ebp-4]
 004E25CF    call        004E1344
 004E25D4    push        1
 004E25D6    push        1
 004E25D8    mov         ecx,dword ptr [ebp-14]
 004E25DB    mov         edx,dword ptr [ebp-18]
 004E25DE    mov         eax,dword ptr [ebp-4]
 004E25E1    call        004D8CCC
>004E25E6    jmp         004E2928
 004E25EB    mov         eax,dword ptr [ebp-4]
 004E25EE    cmp         byte ptr [eax+614],0;TCustomMPHexEditor.?f614:byte
>004E25F5    je          004E263C
 004E25F7    lea         edx,[ebp-10]
 004E25FA    mov         eax,dword ptr [ebp-4]
 004E25FD    call        004E8CF8
 004E2602    lea         edx,[ebp-10]
 004E2605    mov         eax,dword ptr [ebp-4]
 004E2608    call        004E5F40
 004E260D    lea         eax,[ebp-18]
 004E2610    push        eax
 004E2611    mov         eax,dword ptr [ebp-4]
 004E2614    mov         cl,byte ptr [eax+4F0];TCustomMPHexEditor.?f4F0:byte
 004E261A    mov         edx,dword ptr [ebp-10]
 004E261D    mov         eax,dword ptr [ebp-4]
 004E2620    call        004E1344
 004E2625    push        1
 004E2627    push        1
 004E2629    mov         ecx,dword ptr [ebp-14]
 004E262C    mov         edx,dword ptr [ebp-18]
 004E262F    mov         eax,dword ptr [ebp-4]
 004E2632    call        004D8CCC
>004E2637    jmp         004E2928
 004E263C    dec         dword ptr [ebp-10]
 004E263F    lea         eax,[ebp-18]
 004E2642    push        eax
 004E2643    xor         ecx,ecx
 004E2645    mov         edx,dword ptr [ebp-10]
 004E2648    mov         eax,dword ptr [ebp-4]
 004E264B    call        004E1344
 004E2650    mov         eax,dword ptr [ebp-18]
 004E2653    mov         edx,dword ptr [ebp-4]
 004E2656    cmp         eax,dword ptr [edx+228];TCustomMPHexEditor.FCurrent:TGridCoord
>004E265C    jne         004E268F
 004E265E    mov         eax,dword ptr [ebp-4]
 004E2661    call        004E0588
 004E2666    cmp         eax,dword ptr [ebp-10]
>004E2669    je          004E268F
 004E266B    push        1
 004E266D    push        1
 004E266F    mov         eax,dword ptr [ebp-4]
 004E2672    mov         edx,dword ptr [eax+228];TCustomMPHexEditor.FCurrent:TGridCoord
 004E2678    inc         edx
 004E2679    mov         eax,dword ptr [ebp-4]
 004E267C    mov         ecx,dword ptr [eax+22C];TCustomMPHexEditor.FCurrent:Longint
 004E2682    mov         eax,dword ptr [ebp-4]
 004E2685    call        004D8CCC
>004E268A    jmp         004E2928
 004E268F    inc         dword ptr [ebp-10]
 004E2692    mov         eax,dword ptr [ebp-4]
 004E2695    call        004E0588
 004E269A    cmp         eax,dword ptr [ebp-10]
>004E269D    jg          004E26C0
 004E269F    mov         eax,dword ptr [ebp-4]
 004E26A2    call        004E0588
 004E26A7    cmp         eax,dword ptr [ebp-10]
>004E26AA    jne         004E2928
 004E26B0    mov         eax,dword ptr [ebp-4]
 004E26B3    call        TMPHexEditorEx.GetInsertMode
 004E26B8    test        al,al
>004E26BA    je          004E2928
 004E26C0    lea         eax,[ebp-18]
 004E26C3    push        eax
 004E26C4    mov         eax,dword ptr [ebp-4]
 004E26C7    mov         cl,byte ptr [eax+4F0];TCustomMPHexEditor.?f4F0:byte
 004E26CD    mov         edx,dword ptr [ebp-10]
 004E26D0    mov         eax,dword ptr [ebp-4]
 004E26D3    call        004E1344
 004E26D8    push        1
 004E26DA    push        1
 004E26DC    mov         ecx,dword ptr [ebp-14]
 004E26DF    mov         edx,dword ptr [ebp-18]
 004E26E2    mov         eax,dword ptr [ebp-4]
 004E26E5    call        004D8CCC
>004E26EA    jmp         004E2928
 004E26EF    mov         eax,dword ptr [ebp-4]
 004E26F2    call        004E5740
 004E26F7    mov         dword ptr [ebp-10],eax
 004E26FA    push        1
 004E26FC    push        1
 004E26FE    mov         eax,dword ptr [ebp-4]
 004E2701    mov         ecx,dword ptr [eax+22C];TCustomMPHexEditor.FCurrent:Longint
 004E2707    mov         edx,dword ptr [ebp-10]
 004E270A    mov         eax,dword ptr [ebp-4]
 004E270D    call        004D8CCC
>004E2712    jmp         004E2928
 004E2717    test        byte ptr [ebp-9],4
>004E271B    jne         004E2928
 004E2721    mov         eax,dword ptr [ebp-4]
 004E2724    mov         eax,dword ptr [eax+22C];TCustomMPHexEditor.FCurrent:Longint
 004E272A    inc         eax
 004E272B    mov         dword ptr [ebp-1C],eax
 004E272E    mov         eax,dword ptr [ebp-4]
 004E2731    mov         eax,dword ptr [eax+228];TCustomMPHexEditor.FCurrent:TGridCoord
 004E2737    mov         dword ptr [ebp-10],eax
 004E273A    mov         eax,dword ptr [ebp-1C]
 004E273D    mov         edx,dword ptr [ebp-4]
 004E2740    cmp         eax,dword ptr [edx+24C];TCustomMPHexEditor.FRowCount:Longint
>004E2746    jge         004E2928
 004E274C    push        1
 004E274E    push        1
 004E2750    mov         ecx,dword ptr [ebp-1C]
 004E2753    mov         edx,dword ptr [ebp-10]
 004E2756    mov         eax,dword ptr [ebp-4]
 004E2759    call        004D8CCC
>004E275E    jmp         004E2928
 004E2763    test        byte ptr [ebp-9],4
>004E2767    jne         004E2928
 004E276D    mov         eax,dword ptr [ebp-4]
 004E2770    mov         eax,dword ptr [eax+22C];TCustomMPHexEditor.FCurrent:Longint
 004E2776    dec         eax
 004E2777    mov         dword ptr [ebp-1C],eax
 004E277A    mov         eax,dword ptr [ebp-4]
 004E277D    mov         eax,dword ptr [eax+228];TCustomMPHexEditor.FCurrent:TGridCoord
 004E2783    mov         dword ptr [ebp-10],eax
 004E2786    cmp         dword ptr [ebp-1C],2
>004E278A    jl          004E2928
 004E2790    push        1
 004E2792    push        1
 004E2794    mov         ecx,dword ptr [ebp-1C]
 004E2797    mov         edx,dword ptr [ebp-10]
 004E279A    mov         eax,dword ptr [ebp-4]
 004E279D    call        004D8CCC
>004E27A2    jmp         004E2928
 004E27A7    test        byte ptr [ebp-9],4
>004E27AB    je          004E2928
 004E27B1    mov         eax,dword ptr [ebp-4]
 004E27B4    mov         edx,dword ptr [eax+228];TCustomMPHexEditor.FCurrent:TGridCoord
 004E27BA    mov         eax,dword ptr [ebp-4]
 004E27BD    call        004E13EC
 004E27C2    mov         edx,eax
 004E27C4    mov         eax,2
 004E27C9    call        004DF5E8
 004E27CE    mov         edx,eax
 004E27D0    mov         eax,dword ptr [ebp-4]
 004E27D3    call        004DD59C
>004E27D8    jmp         004E2928
 004E27DD    mov         al,[004E2930];0x0 gvar_004E2930
 004E27E2    cmp         al,byte ptr [ebp-9]
>004E27E5    je          004E27F5
 004E27E7    mov         al,[004E2934];0x1 gvar_004E2934
 004E27EC    cmp         al,byte ptr [ebp-9]
>004E27EF    jne         004E2928
 004E27F5    mov         eax,dword ptr [ebp-4]
 004E27F8    mov         edx,dword ptr [eax+228];TCustomMPHexEditor.FCurrent:TGridCoord
 004E27FE    mov         eax,dword ptr [ebp-4]
 004E2801    call        004E13EC
 004E2806    mov         edx,eax
 004E2808    mov         eax,2
 004E280D    call        004DF5E8
 004E2812    mov         edx,eax
 004E2814    mov         eax,dword ptr [ebp-4]
 004E2817    call        004DD59C
>004E281C    jmp         004E2928
 004E2821    test        byte ptr [ebp-9],4
>004E2825    je          004E2928
 004E282B    test        byte ptr [ebp-9],1
>004E282F    je          004E2871
 004E2831    mov         eax,dword ptr [ebp-4]
 004E2834    mov         ecx,dword ptr [eax+22C];TCustomMPHexEditor.FCurrent:Longint
 004E283A    mov         eax,dword ptr [ebp-4]
 004E283D    mov         edx,dword ptr [eax+228];TCustomMPHexEditor.FCurrent:TGridCoord
 004E2843    mov         eax,dword ptr [ebp-4]
 004E2846    call        004E1288
 004E284B    mov         dword ptr [ebp-1C],eax
 004E284E    mov         eax,dword ptr [ebp-4]
 004E2851    mov         al,byte ptr [eax+4F0];TCustomMPHexEditor.?f4F0:byte
 004E2857    push        eax
 004E2858    mov         edx,dword ptr [ebp-8]
 004E285B    mov         dx,word ptr [edx]
 004E285E    sub         dl,30
 004E2861    mov         ecx,dword ptr [ebp-1C]
 004E2864    mov         eax,dword ptr [ebp-4]
 004E2867    call        004E6780
>004E286C    jmp         004E2928
 004E2871    mov         edx,dword ptr [ebp-8]
 004E2874    movzx       edx,word ptr [edx]
 004E2877    sub         edx,30
 004E287A    mov         eax,dword ptr [ebp-4]
 004E287D    call        004E940C
>004E2882    jmp         004E2928
 004E2887    mov         al,[004E2934];0x1 gvar_004E2934
 004E288C    cmp         al,byte ptr [ebp-9]
>004E288F    je          004E289F
 004E2891    mov         al,[004E2938];0x5 gvar_004E2938
 004E2896    cmp         al,byte ptr [ebp-9]
>004E2899    jne         004E2928
 004E289F    mov         eax,dword ptr [ebp-4]
 004E28A2    mov         byte ptr [eax+614],1;TCustomMPHexEditor.?f614:byte
>004E28A9    jmp         004E2928
 004E28AB    mov         eax,dword ptr [ebp-4]
 004E28AE    cmp         byte ptr [eax+561],0;TCustomMPHexEditor.?f561:byte
>004E28B5    jne         004E2928
 004E28B7    mov         eax,dword ptr [ebp-4]
 004E28BA    call        004E4AD8
 004E28BF    test        eax,eax
>004E28C1    jle         004E28E5
 004E28C3    mov         eax,dword ptr [ebp-4]
 004E28C6    call        TMPHexEditorEx.GetInsertMode
 004E28CB    test        al,al
>004E28CD    jne         004E28D9
 004E28CF    mov         al,[004E293C];0x4 gvar_004E293C
 004E28D4    cmp         al,byte ptr [ebp-9]
>004E28D7    jne         004E28E5
 004E28D9    xor         edx,edx
 004E28DB    mov         eax,dword ptr [ebp-4]
 004E28DE    call        004E3C40
>004E28E3    jmp         004E2928
 004E28E5    mov         eax,dword ptr [ebp-4]
 004E28E8    call        TMPHexEditorEx.GetInsertMode
 004E28ED    test        al,al
>004E28EF    jne         004E28FB
 004E28F1    mov         al,[004E293C];0x4 gvar_004E293C
 004E28F6    cmp         al,byte ptr [ebp-9]
>004E28F9    jne         004E2928
 004E28FB    xor         ecx,ecx
 004E28FD    xor         edx,edx
 004E28FF    mov         eax,dword ptr [ebp-4]
 004E2902    call        004E5364
>004E2907    jmp         004E2928
 004E2909    mov         al,[004E2930];0x0 gvar_004E2930
 004E290E    cmp         al,byte ptr [ebp-9]
>004E2911    jne         004E2928
 004E2913    mov         eax,dword ptr [ebp-4]
 004E2916    call        TMPHexEditorEx.GetInsertMode
 004E291B    mov         edx,eax
 004E291D    xor         dl,1
 004E2920    mov         eax,dword ptr [ebp-4]
 004E2923    call        TMPHexEditorEx.SetInsertMode
 004E2928    pop         ebx
 004E2929    mov         esp,ebp
 004E292B    pop         ebp
 004E292C    ret
end;*}

//004E2940
{*function sub_004E2940(?:dword; ?:?):?;
begin
 004E2940    push        ebp
 004E2941    mov         ebp,esp
 004E2943    add         esp,0FFFFFFF4
 004E2946    mov         dword ptr [ebp-8],edx
 004E2949    mov         dword ptr [ebp-4],eax
 004E294C    mov         byte ptr [ebp-9],0
 004E2950    mov         eax,dword ptr [ebp-4]
 004E2953    call        TMPHexEditorEx.GetInsertMode
 004E2958    test        al,al
>004E295A    jne         004E2981
 004E295C    mov         eax,dword ptr [ebp-4]
 004E295F    mov         eax,dword ptr [eax+4F8]
 004E2965    mov         eax,dword ptr [eax+4]
 004E2968    cmp         eax,dword ptr [ebp-8]
>004E296B    jle         004E2981
 004E296D    mov         edx,dword ptr [ebp-8]
 004E2970    mov         eax,dword ptr [ebp-4]
 004E2973    mov         eax,dword ptr [eax+4F8]
 004E2979    call        TBits.GetBit
 004E297E    mov         byte ptr [ebp-9],al
 004E2981    mov         al,byte ptr [ebp-9]
 004E2984    mov         esp,ebp
 004E2986    pop         ebp
 004E2987    ret
end;*}

//004E2988
{*function sub_004E2988(?:TCustomMPHexEditor; ?:?):?;
begin
 004E2988    push        ebp
 004E2989    mov         ebp,esp
 004E298B    add         esp,0FFFFFFF4
 004E298E    mov         dword ptr [ebp-8],edx
 004E2991    mov         dword ptr [ebp-4],eax
 004E2994    mov         byte ptr [ebp-9],0
 004E2998    mov         eax,dword ptr [ebp-4]
 004E299B    cmp         dword ptr [eax+550],0FFFFFFFF
>004E29A2    je          004E29C4
 004E29A4    mov         eax,dword ptr [ebp-8]
 004E29A7    mov         edx,dword ptr [ebp-4]
 004E29AA    cmp         eax,dword ptr [edx+54C]
>004E29B0    jl          004E29C4
 004E29B2    mov         eax,dword ptr [ebp-8]
 004E29B5    mov         edx,dword ptr [ebp-4]
 004E29B8    cmp         eax,dword ptr [edx+554]
>004E29BE    jg          004E29C4
 004E29C0    mov         byte ptr [ebp-9],1
 004E29C4    mov         al,byte ptr [ebp-9]
 004E29C7    mov         esp,ebp
 004E29C9    pop         ebp
 004E29CA    ret
end;*}

//004E29CC
{*procedure sub_004E29CC(?:TCustomMPHexEditor; ?:dword; ?:?);
begin
 004E29CC    push        ebp
 004E29CD    mov         ebp,esp
 004E29CF    add         esp,0FFFFFFF4
 004E29D2    mov         dword ptr [ebp-0C],ecx
 004E29D5    mov         dword ptr [ebp-8],edx
 004E29D8    mov         dword ptr [ebp-4],eax
 004E29DB    lea         ecx,[ebp-0C]
 004E29DE    lea         edx,[ebp-8]
 004E29E1    mov         eax,dword ptr [ebp-4]
 004E29E4    call        004E8C50
 004E29E9    mov         edx,dword ptr [ebp-0C]
 004E29EC    mov         eax,dword ptr [ebp-8]
 004E29EF    call        004DF5E8
 004E29F4    push        eax
 004E29F5    mov         edx,dword ptr [ebp-0C]
 004E29F8    mov         eax,dword ptr [ebp-8]
 004E29FB    call        004DF5BC
 004E2A00    mov         ecx,eax
 004E2A02    mov         edx,dword ptr [ebp-8]
 004E2A05    mov         eax,dword ptr [ebp-4]
 004E2A08    call        004E6110
 004E2A0D    mov         eax,dword ptr [ebp-4]
 004E2A10    mov         edx,dword ptr [eax]
 004E2A12    call        dword ptr [edx+7C];TCustomMPHexEditor.sub_0048BE68
 004E2A15    mov         eax,dword ptr [ebp-4]
 004E2A18    mov         edx,dword ptr [eax]
 004E2A1A    call        dword ptr [edx+0E8];TCustomMPHexEditor.sub_004E8D28
 004E2A20    mov         esp,ebp
 004E2A22    pop         ebp
 004E2A23    ret
end;*}

//004E2A24
{*procedure TMPHexEditorEx.GetOffsetFormat(?:?);
begin
 004E2A24    push        ebp
 004E2A25    mov         ebp,esp
 004E2A27    add         esp,0FFFFFFF8
 004E2A2A    mov         dword ptr [ebp-8],edx
 004E2A2D    mov         dword ptr [ebp-4],eax
 004E2A30    mov         eax,dword ptr [ebp-8]
 004E2A33    mov         edx,dword ptr [ebp-4]
 004E2A36    mov         edx,dword ptr [edx+5A0];TMPHexEditorEx.?f5A0:TMPHOffsetFormat
 004E2A3C    call        @LStrAsg
 004E2A41    pop         ecx
 004E2A42    pop         ecx
 004E2A43    pop         ebp
 004E2A44    ret
end;*}

//004E2A48
procedure TMPHexEditorEx.SetOffsetFormat(Value:String);
begin
{*
 004E2A48    push        ebp
 004E2A49    mov         ebp,esp
 004E2A4B    add         esp,0FFFFFFF8
 004E2A4E    push        ebx
 004E2A4F    push        esi
 004E2A50    push        edi
 004E2A51    mov         dword ptr [ebp-8],edx
 004E2A54    mov         dword ptr [ebp-4],eax
 004E2A57    mov         eax,dword ptr [ebp-8]
 004E2A5A    mov         edx,dword ptr [ebp-4]
 004E2A5D    mov         edx,dword ptr [edx+5A0];TMPHexEditorEx.?f5A0:TMPHOffsetFormat
 004E2A63    call        @LStrCmp
>004E2A68    je          004E2ABD
 004E2A6A    xor         eax,eax
 004E2A6C    push        ebp
 004E2A6D    push        4E2A9D
 004E2A72    push        dword ptr fs:[eax]
 004E2A75    mov         dword ptr fs:[eax],esp
 004E2A78    mov         edx,dword ptr [ebp-8]
 004E2A7B    mov         eax,dword ptr [ebp-4]
 004E2A7E    call        004E2B78
 004E2A83    mov         eax,dword ptr [ebp-4]
 004E2A86    call        004E4F24
 004E2A8B    mov         eax,dword ptr [ebp-4]
 004E2A8E    mov         edx,dword ptr [eax]
 004E2A90    call        dword ptr [edx+7C];TMPHexEditorEx.sub_0048BE68
 004E2A93    xor         eax,eax
 004E2A95    pop         edx
 004E2A96    pop         ecx
 004E2A97    pop         ecx
 004E2A98    mov         dword ptr fs:[eax],edx
>004E2A9B    jmp         004E2ABD
>004E2A9D    jmp         @HandleAnyException
 004E2AA2    mov         eax,dword ptr [ebp-4]
 004E2AA5    mov         edx,dword ptr [eax+5A0];TMPHexEditorEx.?f5A0:TMPHOffsetFormat
 004E2AAB    mov         eax,dword ptr [ebp-4]
 004E2AAE    call        004E2B78
 004E2AB3    call        @RaiseAgain
 004E2AB8    call        @DoneExcept
 004E2ABD    pop         edi
 004E2ABE    pop         esi
 004E2ABF    pop         ebx
 004E2AC0    pop         ecx
 004E2AC1    pop         ecx
 004E2AC2    pop         ebp
 004E2AC3    ret
*}
end;

//004E2AC4
procedure TMPHexEditorEx.SetHexLowerCase(Value:Boolean);
begin
{*
 004E2AC4    push        ebp
 004E2AC5    mov         ebp,esp
 004E2AC7    add         esp,0FFFFFFF8
 004E2ACA    mov         byte ptr [ebp-5],dl
 004E2ACD    mov         dword ptr [ebp-4],eax
 004E2AD0    mov         eax,dword ptr [ebp-4]
 004E2AD3    mov         al,byte ptr [eax+5E0];TMPHexEditorEx.?f5E0:byte
 004E2AD9    cmp         al,byte ptr [ebp-5]
>004E2ADC    je          004E2B3C
 004E2ADE    mov         al,byte ptr [ebp-5]
 004E2AE1    mov         edx,dword ptr [ebp-4]
 004E2AE4    mov         byte ptr [edx+5E0],al;TMPHexEditorEx.?f5E0:byte
 004E2AEA    cmp         byte ptr [ebp-5],0
>004E2AEE    je          004E2B0F
 004E2AF0    mov         eax,4E2B48;'0123456789abcdef'
 004E2AF5    call        @LStrToPChar
 004E2AFA    mov         edx,dword ptr [ebp-4]
 004E2AFD    add         edx,5D0;TMPHexEditorEx.?f5D0:?
 004E2B03    mov         ecx,10
 004E2B08    call        Move
>004E2B0D    jmp         004E2B2C
 004E2B0F    mov         eax,4E2B64;'0123456789ABCDEF'
 004E2B14    call        @LStrToPChar
 004E2B19    mov         edx,dword ptr [ebp-4]
 004E2B1C    add         edx,5D0;TMPHexEditorEx.?f5D0:?
 004E2B22    mov         ecx,10
 004E2B27    call        Move
 004E2B2C    mov         eax,dword ptr [ebp-4]
 004E2B2F    call        004E89EC
 004E2B34    mov         eax,dword ptr [ebp-4]
 004E2B37    mov         edx,dword ptr [eax]
 004E2B39    call        dword ptr [edx+7C];TMPHexEditorEx.sub_0048BE68
 004E2B3C    pop         ecx
 004E2B3D    pop         ecx
 004E2B3E    pop         ebp
 004E2B3F    ret
*}
end;

//004E2B78
procedure sub_004E2B78(?:TCustomMPHexEditor; ?:AnsiString);
begin
{*
 004E2B78    push        ebp
 004E2B79    mov         ebp,esp
 004E2B7B    mov         ecx,0B
 004E2B80    push        0
 004E2B82    push        0
 004E2B84    dec         ecx
>004E2B85    jne         004E2B80
 004E2B87    push        ecx
 004E2B88    mov         dword ptr [ebp-8],edx
 004E2B8B    mov         dword ptr [ebp-4],eax
 004E2B8E    mov         eax,dword ptr [ebp-8]
 004E2B91    call        @LStrAddRef
 004E2B96    xor         eax,eax
 004E2B98    push        ebp
 004E2B99    push        4E30D0
 004E2B9E    push        dword ptr fs:[eax]
 004E2BA1    mov         dword ptr fs:[eax],esp
 004E2BA4    mov         eax,dword ptr [ebp-4]
 004E2BA7    add         eax,5A0;TCustomMPHexEditor.?f5A0:TMPHOffsetFormat
 004E2BAC    mov         dword ptr [ebp-14],eax
 004E2BAF    mov         eax,dword ptr [ebp-14]
 004E2BB2    mov         dl,byte ptr ds:[4E30DC];0x0 gvar_004E30DC
 004E2BB8    mov         byte ptr [eax+10],dl
 004E2BBB    lea         eax,[ebp-10]
 004E2BBE    mov         edx,dword ptr [ebp-8]
 004E2BC1    call        @LStrLAsg
 004E2BC6    cmp         dword ptr [ebp-10],0
>004E2BCA    je          004E308D
 004E2BD0    lea         eax,[ebp-1C]
 004E2BD3    push        eax
 004E2BD4    mov         ecx,2
 004E2BD9    mov         edx,1
 004E2BDE    mov         eax,dword ptr [ebp-10]
 004E2BE1    call        @LStrCopy
 004E2BE6    mov         eax,dword ptr [ebp-1C]
 004E2BE9    lea         edx,[ebp-18]
 004E2BEC    call        0040BCC8
 004E2BF1    mov         eax,dword ptr [ebp-18]
 004E2BF4    mov         edx,4E30E8;'R%'
 004E2BF9    call        @LStrCmp
>004E2BFE    jne         004E2C37
 004E2C00    mov         al,[004E30EC];0x2 gvar_004E30EC
 004E2C05    mov         edx,dword ptr [ebp-14]
 004E2C08    or          al,byte ptr [edx+10]
 004E2C0B    mov         edx,dword ptr [ebp-14]
 004E2C0E    mov         byte ptr [edx+10],al
 004E2C11    lea         eax,[ebp-10]
 004E2C14    mov         ecx,2
 004E2C19    mov         edx,1
 004E2C1E    call        @LStrDelete
 004E2C23    mov         eax,dword ptr [ebp-4]
 004E2C26    mov         al,byte ptr [eax+4D4];TCustomMPHexEditor.?f4D4:Integer
 004E2C2C    mov         edx,dword ptr [ebp-14]
 004E2C2F    mov         byte ptr [edx+12],al
>004E2C32    jmp         004E2D86
 004E2C37    lea         eax,[ebp-24]
 004E2C3A    push        eax
 004E2C3B    mov         ecx,2
 004E2C40    mov         edx,1
 004E2C45    mov         eax,dword ptr [ebp-10]
 004E2C48    call        @LStrCopy
 004E2C4D    mov         eax,dword ptr [ebp-24]
 004E2C50    lea         edx,[ebp-20]
 004E2C53    call        0040BCC8
 004E2C58    mov         eax,dword ptr [ebp-20]
 004E2C5B    mov         edx,4E30F8;'C%'
 004E2C60    call        @LStrCmp
>004E2C65    jne         004E2C9D
 004E2C67    mov         al,[004E30FC];0x4 gvar_004E30FC
 004E2C6C    mov         edx,dword ptr [ebp-14]
 004E2C6F    or          al,byte ptr [edx+10]
 004E2C72    mov         edx,dword ptr [ebp-14]
 004E2C75    mov         byte ptr [edx+10],al
 004E2C78    lea         eax,[ebp-10]
 004E2C7B    mov         ecx,2
 004E2C80    mov         edx,1
 004E2C85    call        @LStrDelete
 004E2C8A    mov         eax,dword ptr [ebp-4]
 004E2C8D    call        TMPHexEditorEx.GetBytesPerColumn
 004E2C92    mov         edx,dword ptr [ebp-14]
 004E2C95    mov         byte ptr [edx+12],al
>004E2C98    jmp         004E2D86
 004E2C9D    mov         dword ptr [ebp-0C],1
>004E2CA4    jmp         004E2CA9
 004E2CA6    inc         dword ptr [ebp-0C]
 004E2CA9    mov         eax,dword ptr [ebp-10]
 004E2CAC    call        @LStrLen
 004E2CB1    cmp         eax,dword ptr [ebp-0C]
>004E2CB4    jl          004E2CD2
 004E2CB6    mov         eax,dword ptr [ebp-10]
 004E2CB9    mov         edx,dword ptr [ebp-0C]
 004E2CBC    mov         al,byte ptr [eax+edx-1]
 004E2CC0    add         al,0D0
 004E2CC2    sub         al,0A
>004E2CC4    jb          004E2CA6
 004E2CC6    add         al,0F9
 004E2CC8    sub         al,6
>004E2CCA    jb          004E2CA6
 004E2CCC    add         al,0E6
 004E2CCE    sub         al,6
>004E2CD0    jb          004E2CA6
 004E2CD2    lea         eax,[ebp-28]
 004E2CD5    push        eax
 004E2CD6    mov         ecx,1
 004E2CDB    mov         edx,dword ptr [ebp-0C]
 004E2CDE    mov         eax,dword ptr [ebp-10]
 004E2CE1    call        @LStrCopy
 004E2CE6    mov         eax,dword ptr [ebp-28]
 004E2CE9    mov         edx,4E3108;'%'
 004E2CEE    call        @LStrCmp
>004E2CF3    jne         004E2D66
 004E2CF5    cmp         dword ptr [ebp-0C],1
>004E2CF9    jne         004E2D2F
 004E2CFB    mov         al,[004E310C];0x8 gvar_004E310C
 004E2D00    mov         edx,dword ptr [ebp-14]
 004E2D03    or          al,byte ptr [edx+10]
 004E2D06    mov         edx,dword ptr [ebp-14]
 004E2D09    mov         byte ptr [edx+10],al
 004E2D0C    mov         eax,dword ptr [ebp-4]
 004E2D0F    mov         al,byte ptr [eax+610];TCustomMPHexEditor.?f610:Integer
 004E2D15    mov         edx,dword ptr [ebp-14]
 004E2D18    mov         byte ptr [edx+12],al
 004E2D1B    lea         eax,[ebp-10]
 004E2D1E    mov         ecx,1
 004E2D23    mov         edx,1
 004E2D28    call        @LStrDelete
>004E2D2D    jmp         004E2D86
 004E2D2F    lea         eax,[ebp-2C]
 004E2D32    push        eax
 004E2D33    mov         ecx,dword ptr [ebp-0C]
 004E2D36    dec         ecx
 004E2D37    mov         edx,1
 004E2D3C    mov         eax,dword ptr [ebp-10]
 004E2D3F    call        @LStrCopy
 004E2D44    mov         eax,dword ptr [ebp-2C]
 004E2D47    mov         dl,10
 004E2D49    call        004DF9C0
 004E2D4E    mov         edx,dword ptr [ebp-14]
 004E2D51    mov         byte ptr [edx+12],al
 004E2D54    lea         eax,[ebp-10]
 004E2D57    mov         ecx,dword ptr [ebp-0C]
 004E2D5A    mov         edx,1
 004E2D5F    call        @LStrDelete
>004E2D64    jmp         004E2D86
 004E2D66    mov         al,[004E310C];0x8 gvar_004E310C
 004E2D6B    mov         edx,dword ptr [ebp-14]
 004E2D6E    or          al,byte ptr [edx+10]
 004E2D71    mov         edx,dword ptr [ebp-14]
 004E2D74    mov         byte ptr [edx+10],al
 004E2D77    mov         eax,dword ptr [ebp-4]
 004E2D7A    mov         al,byte ptr [eax+610];TCustomMPHexEditor.?f610:Integer
 004E2D80    mov         edx,dword ptr [ebp-14]
 004E2D83    mov         byte ptr [edx+12],al
 004E2D86    mov         eax,dword ptr [ebp-14]
 004E2D89    mov         al,byte ptr [eax+12]
 004E2D8C    dec         eax
 004E2D8D    sub         al,2
>004E2D8F    jb          004E2DCE
 004E2D91    sub         al,1
>004E2D93    je          004E2DCE
 004E2D95    sub         al,4
>004E2D97    je          004E2DCE
 004E2D99    mov         eax,dword ptr [ebp-14]
 004E2D9C    movzx       eax,byte ptr [eax+12]
 004E2DA0    mov         dword ptr [ebp-34],eax
 004E2DA3    mov         byte ptr [ebp-30],0
 004E2DA7    lea         eax,[ebp-34]
 004E2DAA    push        eax
 004E2DAB    push        0
 004E2DAD    lea         edx,[ebp-38]
 004E2DB0    mov         eax,4DF354;^HInstance:LongWord
 004E2DB5    call        LoadResString
 004E2DBA    mov         ecx,dword ptr [ebp-38]
 004E2DBD    mov         dl,1
 004E2DBF    mov         eax,[004DE8FC];EMPHexEditor
 004E2DC4    call        Exception.CreateFmt;EMPHexEditor.Create
 004E2DC9    call        @RaiseExcept
 004E2DCE    lea         eax,[ebp-3C]
 004E2DD1    push        eax
 004E2DD2    mov         ecx,2
 004E2DD7    mov         edx,1
 004E2DDC    mov         eax,dword ptr [ebp-10]
 004E2DDF    call        @LStrCopy
 004E2DE4    mov         eax,dword ptr [ebp-3C]
 004E2DE7    mov         edx,4E3118;'-!'
 004E2DEC    call        @LStrCmp
>004E2DF1    jne         004E2E25
 004E2DF3    mov         al,[004E311C];0x1 gvar_004E311C
 004E2DF8    mov         edx,dword ptr [ebp-14]
 004E2DFB    or          al,byte ptr [edx+10]
 004E2DFE    mov         edx,dword ptr [ebp-14]
 004E2E01    mov         byte ptr [edx+10],al
 004E2E04    lea         eax,[ebp-10]
 004E2E07    mov         ecx,2
 004E2E0C    mov         edx,1
 004E2E11    call        @LStrDelete
 004E2E16    mov         eax,dword ptr [ebp-14]
 004E2E19    mov         dword ptr [eax+0C],1
>004E2E20    jmp         004E2EE2
 004E2E25    mov         dword ptr [ebp-0C],1
>004E2E2C    jmp         004E2E31
 004E2E2E    inc         dword ptr [ebp-0C]
 004E2E31    mov         eax,dword ptr [ebp-10]
 004E2E34    call        @LStrLen
 004E2E39    cmp         eax,dword ptr [ebp-0C]
>004E2E3C    jl          004E2E5A
 004E2E3E    mov         eax,dword ptr [ebp-10]
 004E2E41    mov         edx,dword ptr [ebp-0C]
 004E2E44    mov         al,byte ptr [eax+edx-1]
 004E2E48    add         al,0D0
 004E2E4A    sub         al,0A
>004E2E4C    jb          004E2E2E
 004E2E4E    add         al,0F9
 004E2E50    sub         al,6
>004E2E52    jb          004E2E2E
 004E2E54    add         al,0E6
 004E2E56    sub         al,6
>004E2E58    jb          004E2E2E
 004E2E5A    lea         eax,[ebp-40]
 004E2E5D    push        eax
 004E2E5E    mov         ecx,1
 004E2E63    mov         edx,dword ptr [ebp-0C]
 004E2E66    mov         eax,dword ptr [ebp-10]
 004E2E69    call        @LStrCopy
 004E2E6E    mov         eax,dword ptr [ebp-40]
 004E2E71    mov         edx,4E3128;'!'
 004E2E76    call        @LStrCmp
>004E2E7B    jne         004E2ED8
 004E2E7D    cmp         dword ptr [ebp-0C],1
>004E2E81    jne         004E2EA1
 004E2E83    mov         eax,dword ptr [ebp-14]
 004E2E86    mov         dword ptr [eax+0C],1
 004E2E8D    lea         eax,[ebp-10]
 004E2E90    mov         ecx,1
 004E2E95    mov         edx,1
 004E2E9A    call        @LStrDelete
>004E2E9F    jmp         004E2EE2
 004E2EA1    lea         eax,[ebp-44]
 004E2EA4    push        eax
 004E2EA5    mov         ecx,dword ptr [ebp-0C]
 004E2EA8    dec         ecx
 004E2EA9    mov         edx,1
 004E2EAE    mov         eax,dword ptr [ebp-10]
 004E2EB1    call        @LStrCopy
 004E2EB6    mov         eax,dword ptr [ebp-44]
 004E2EB9    mov         dl,10
 004E2EBB    call        004DF9C0
 004E2EC0    mov         edx,dword ptr [ebp-14]
 004E2EC3    mov         dword ptr [edx+0C],eax
 004E2EC6    lea         eax,[ebp-10]
 004E2EC9    mov         ecx,dword ptr [ebp-0C]
 004E2ECC    mov         edx,1
 004E2ED1    call        @LStrDelete
>004E2ED6    jmp         004E2EE2
 004E2ED8    mov         eax,dword ptr [ebp-14]
 004E2EDB    mov         dword ptr [eax+0C],1
 004E2EE2    mov         dword ptr [ebp-0C],1
>004E2EE9    jmp         004E2EEE
 004E2EEB    inc         dword ptr [ebp-0C]
 004E2EEE    mov         eax,dword ptr [ebp-10]
 004E2EF1    call        @LStrLen
 004E2EF6    cmp         eax,dword ptr [ebp-0C]
>004E2EF9    jl          004E2F17
 004E2EFB    mov         eax,dword ptr [ebp-10]
 004E2EFE    mov         edx,dword ptr [ebp-0C]
 004E2F01    mov         al,byte ptr [eax+edx-1]
 004E2F05    add         al,0D0
 004E2F07    sub         al,0A
>004E2F09    jb          004E2EEB
 004E2F0B    add         al,0F9
 004E2F0D    sub         al,6
>004E2F0F    jb          004E2EEB
 004E2F11    add         al,0E6
 004E2F13    sub         al,6
>004E2F15    jb          004E2EEB
 004E2F17    cmp         dword ptr [ebp-0C],1
>004E2F1B    jne         004E2F50
 004E2F1D    mov         eax,4E3134;'number radix'
 004E2F22    mov         dword ptr [ebp-34],eax
 004E2F25    mov         byte ptr [ebp-30],0B
 004E2F29    lea         eax,[ebp-34]
 004E2F2C    push        eax
 004E2F2D    push        0
 004E2F2F    lea         edx,[ebp-48]
 004E2F32    mov         eax,4DF33C;^HInstance:LongWord
 004E2F37    call        LoadResString
 004E2F3C    mov         ecx,dword ptr [ebp-48]
 004E2F3F    mov         dl,1
 004E2F41    mov         eax,[004DE8FC];EMPHexEditor
 004E2F46    call        Exception.CreateFmt;EMPHexEditor.Create
 004E2F4B    call        @RaiseExcept
 004E2F50    lea         eax,[ebp-4C]
 004E2F53    push        eax
 004E2F54    mov         ecx,1
 004E2F59    mov         edx,dword ptr [ebp-0C]
 004E2F5C    mov         eax,dword ptr [ebp-10]
 004E2F5F    call        @LStrCopy
 004E2F64    mov         eax,dword ptr [ebp-4C]
 004E2F67    mov         edx,4E314C;':'
 004E2F6C    call        @LStrCmp
>004E2F71    je          004E2FA2
 004E2F73    mov         byte ptr [ebp-34],3A
 004E2F77    mov         byte ptr [ebp-30],2
 004E2F7B    lea         eax,[ebp-34]
 004E2F7E    push        eax
 004E2F7F    push        0
 004E2F81    lea         edx,[ebp-50]
 004E2F84    mov         eax,4DF33C;^HInstance:LongWord
 004E2F89    call        LoadResString
 004E2F8E    mov         ecx,dword ptr [ebp-50]
 004E2F91    mov         dl,1
 004E2F93    mov         eax,[004DE8FC];EMPHexEditor
 004E2F98    call        Exception.CreateFmt;EMPHexEditor.Create
 004E2F9D    call        @RaiseExcept
 004E2FA2    lea         eax,[ebp-54]
 004E2FA5    push        eax
 004E2FA6    mov         ecx,dword ptr [ebp-0C]
 004E2FA9    dec         ecx
 004E2FAA    mov         edx,1
 004E2FAF    mov         eax,dword ptr [ebp-10]
 004E2FB2    call        @LStrCopy
 004E2FB7    mov         eax,dword ptr [ebp-54]
 004E2FBA    mov         dl,10
 004E2FBC    call        004DF9C0
 004E2FC1    mov         edx,dword ptr [ebp-14]
 004E2FC4    mov         byte ptr [edx+11],al
 004E2FC7    mov         eax,dword ptr [ebp-14]
 004E2FCA    mov         al,byte ptr [eax+11]
 004E2FCD    add         al,0FE
 004E2FCF    sub         al,0F
>004E2FD1    jb          004E3008
 004E2FD3    mov         eax,dword ptr [ebp-14]
 004E2FD6    movzx       eax,byte ptr [eax+11]
 004E2FDA    mov         dword ptr [ebp-34],eax
 004E2FDD    mov         byte ptr [ebp-30],0
 004E2FE1    lea         eax,[ebp-34]
 004E2FE4    push        eax
 004E2FE5    push        0
 004E2FE7    lea         edx,[ebp-58]
 004E2FEA    mov         eax,4DF344;^HInstance:LongWord
 004E2FEF    call        LoadResString
 004E2FF4    mov         ecx,dword ptr [ebp-58]
 004E2FF7    mov         dl,1
 004E2FF9    mov         eax,[004DE8FC];EMPHexEditor
 004E2FFE    call        Exception.CreateFmt;EMPHexEditor.Create
 004E3003    call        @RaiseExcept
 004E3008    lea         eax,[ebp-10]
 004E300B    mov         ecx,dword ptr [ebp-0C]
 004E300E    mov         edx,1
 004E3013    call        @LStrDelete
 004E3018    mov         edx,dword ptr [ebp-10]
 004E301B    mov         eax,4E3158;'|'
 004E3020    call        @LStrPos
 004E3025    mov         dword ptr [ebp-0C],eax
 004E3028    cmp         dword ptr [ebp-0C],0
>004E302C    jne         004E305D
 004E302E    mov         byte ptr [ebp-34],7C
 004E3032    mov         byte ptr [ebp-30],2
 004E3036    lea         eax,[ebp-34]
 004E3039    push        eax
 004E303A    push        0
 004E303C    lea         edx,[ebp-5C]
 004E303F    mov         eax,4DF33C;^HInstance:LongWord
 004E3044    call        LoadResString
 004E3049    mov         ecx,dword ptr [ebp-5C]
 004E304C    mov         dl,1
 004E304E    mov         eax,[004DE8FC];EMPHexEditor
 004E3053    call        Exception.CreateFmt;EMPHexEditor.Create
 004E3058    call        @RaiseExcept
 004E305D    mov         eax,dword ptr [ebp-14]
 004E3060    add         eax,4
 004E3063    push        eax
 004E3064    mov         ecx,dword ptr [ebp-0C]
 004E3067    dec         ecx
 004E3068    mov         edx,1
 004E306D    mov         eax,dword ptr [ebp-10]
 004E3070    call        @LStrCopy
 004E3075    mov         eax,dword ptr [ebp-14]
 004E3078    add         eax,8
 004E307B    push        eax
 004E307C    mov         edx,dword ptr [ebp-0C]
 004E307F    inc         edx
 004E3080    mov         ecx,7FFFFFFF
 004E3085    mov         eax,dword ptr [ebp-10]
 004E3088    call        @LStrCopy
 004E308D    mov         eax,dword ptr [ebp-14]
 004E3090    mov         edx,dword ptr [ebp-8]
 004E3093    call        @LStrAsg
 004E3098    xor         eax,eax
 004E309A    pop         edx
 004E309B    pop         ecx
 004E309C    pop         ecx
 004E309D    mov         dword ptr fs:[eax],edx
 004E30A0    push        4E30D7
 004E30A5    lea         eax,[ebp-5C]
 004E30A8    mov         edx,0A
 004E30AD    call        @LStrArrayClr
 004E30B2    lea         eax,[ebp-2C]
 004E30B5    mov         edx,6
 004E30BA    call        @LStrArrayClr
 004E30BF    lea         eax,[ebp-10]
 004E30C2    call        @LStrClr
 004E30C7    lea         eax,[ebp-8]
 004E30CA    call        @LStrClr
 004E30CF    ret
>004E30D0    jmp         @HandleFinally
>004E30D5    jmp         004E30A5
 004E30D7    mov         esp,ebp
 004E30D9    pop         ebp
 004E30DA    ret
*}
end;

//004E315C
{*procedure sub_004E315C(?:?; ?:?; ?:?; ?:?; ?:?);
begin
 004E315C    push        ebp
 004E315D    mov         ebp,esp
 004E315F    add         esp,0FFFFFFE8
 004E3162    mov         dword ptr [ebp-0C],ecx
 004E3165    mov         dword ptr [ebp-8],edx
 004E3168    mov         dword ptr [ebp-4],eax
 004E316B    mov         ecx,dword ptr [ebp+8]
 004E316E    mov         edx,dword ptr [ebp+0C]
 004E3171    mov         eax,dword ptr [ebp-4]
 004E3174    call        004E1288
 004E3179    mov         dword ptr [ebp-14],eax
 004E317C    mov         eax,dword ptr [ebp-4]
 004E317F    cmp         dword ptr [eax+550],0FFFFFFFF
>004E3186    jne         004E31AF
 004E3188    mov         eax,dword ptr [ebp-14]
 004E318B    mov         dword ptr [ebp-10],eax
 004E318E    mov         ecx,dword ptr [ebp-0C]
 004E3191    mov         edx,dword ptr [ebp-8]
 004E3194    mov         eax,dword ptr [ebp-4]
 004E3197    call        004E1288
 004E319C    mov         dword ptr [ebp-18],eax
 004E319F    mov         ecx,dword ptr [ebp-10]
 004E31A2    mov         edx,dword ptr [ebp-18]
 004E31A5    mov         eax,dword ptr [ebp-4]
 004E31A8    call        004E29CC
>004E31AD    jmp         004E31C3
 004E31AF    mov         ecx,dword ptr [ebp-14]
 004E31B2    mov         eax,dword ptr [ebp-4]
 004E31B5    mov         edx,dword ptr [eax+550]
 004E31BB    mov         eax,dword ptr [ebp-4]
 004E31BE    call        004E29CC
 004E31C3    mov         esp,ebp
 004E31C5    pop         ebp
 004E31C6    ret         8
end;*}

//004E31CC
{*procedure sub_004E31CC(?:TCustomMPHexEditor; ?:?; ?:Longint);
begin
 004E31CC    push        ebp
 004E31CD    mov         ebp,esp
 004E31CF    add         esp,0FFFFFFF4
 004E31D2    mov         byte ptr [ebp-5],dl
 004E31D5    mov         dword ptr [ebp-4],eax
 004E31D8    mov         eax,dword ptr [ebp-4]
 004E31DB    mov         byte ptr [eax+614],0;TCustomMPHexEditor.?f614:byte
 004E31E2    mov         eax,dword ptr [ebp-4]
 004E31E5    mov         eax,dword ptr [eax+54C];TCustomMPHexEditor.?f54C:dword
 004E31EB    mov         dword ptr [ebp-0C],eax
 004E31EE    push        0FF
 004E31F0    or          ecx,0FFFFFFFF
 004E31F3    or          edx,0FFFFFFFF
 004E31F6    mov         eax,dword ptr [ebp-4]
 004E31F9    call        004E6110
 004E31FE    mov         eax,dword ptr [ebp-4]
 004E3201    mov         dword ptr [eax+558],0FFFFFFFF;TCustomMPHexEditor.?f558:dword
 004E320B    cmp         byte ptr [ebp-5],0
>004E320F    je          004E3225
 004E3211    cmp         dword ptr [ebp-0C],0FFFFFFFF
>004E3215    jg          004E321D
 004E3217    cmp         dword ptr [ebp-0C],0FFFFFFFF
>004E321B    jle         004E3225
 004E321D    mov         eax,dword ptr [ebp-4]
 004E3220    mov         edx,dword ptr [eax]
 004E3222    call        dword ptr [edx+7C];TCustomMPHexEditor.sub_0048BE68
 004E3225    mov         esp,ebp
 004E3227    pop         ebp
 004E3228    ret
end;*}

//004E322C
{*procedure TCustomMPHexEditor.sub_00485588(?:?; ?:?; ?:?; ?:?);
begin
 004E322C    push        ebp
 004E322D    mov         ebp,esp
 004E322F    add         esp,0FFFFFFEC
 004E3232    push        ebx
 004E3233    push        esi
 004E3234    mov         byte ptr [ebp-6],cl
 004E3237    mov         byte ptr [ebp-5],dl
 004E323A    mov         dword ptr [ebp-4],eax
 004E323D    mov         eax,dword ptr [ebp-4]
 004E3240    mov         byte ptr [eax+614],0;TCustomMPHexEditor.?f614:byte
 004E3247    mov         eax,dword ptr [ebp-4]
 004E324A    mov         byte ptr [eax+615],0;TCustomMPHexEditor.?f615:byte
 004E3251    cmp         byte ptr [ebp-5],0
>004E3255    jne         004E3269
 004E3257    lea         eax,[ebp-10]
 004E325A    push        eax
 004E325B    lea         ecx,[ebp+8]
 004E325E    lea         edx,[ebp+0C]
 004E3261    mov         eax,dword ptr [ebp-4]
 004E3264    call        004E5BF0
 004E3269    mov         eax,dword ptr [ebp-4]
 004E326C    call        004E599C
 004E3271    test        al,al
>004E3273    jne         004E32A3
 004E3275    mov         ecx,dword ptr [ebp+8]
 004E3278    mov         edx,dword ptr [ebp+0C]
 004E327B    mov         eax,dword ptr [ebp-4]
 004E327E    call        004E5A7C
 004E3283    test        al,al
>004E3285    jne         004E32A3
 004E3287    mov         byte ptr [ebp-11],1
 004E328B    mov         eax,dword ptr [ebp+0C]
 004E328E    push        eax
 004E328F    mov         eax,dword ptr [ebp+8]
 004E3292    push        eax
 004E3293    mov         cl,byte ptr [ebp-6]
 004E3296    mov         dl,byte ptr [ebp-5]
 004E3299    mov         eax,dword ptr [ebp-4]
 004E329C    call        TCustomGrid.sub_00485588
>004E32A1    jmp         004E32D7
 004E32A3    mov         byte ptr [ebp-11],0
 004E32A7    mov         eax,dword ptr [ebp-4]
 004E32AA    test        byte ptr [eax+1C],10;TCustomMPHexEditor.FComponentState:TComponentState
>004E32AE    jne         004E32D7
 004E32B0    mov         eax,dword ptr [ebp-4]
 004E32B3    mov         si,0FFB8
 004E32B7    call        @CallDynaInst;TCustomMPHexEditor.sub_0048BFC8
 004E32BC    test        al,al
>004E32BE    jne         004E32CC
 004E32C0    mov         eax,dword ptr [ebp-4]
 004E32C3    call        004A0740
 004E32C8    test        eax,eax
>004E32CA    jne         004E32D7
 004E32CC    mov         eax,dword ptr [ebp-4]
 004E32CF    mov         edx,dword ptr [eax]
 004E32D1    call        dword ptr [edx+0C4];TCustomMPHexEditor.sub_0048C028
 004E32D7    mov         eax,dword ptr [ebp-4]
 004E32DA    call        004A0740
 004E32DF    test        eax,eax
>004E32E1    je          004E3325
 004E32E3    mov         eax,dword ptr [ebp-4]
 004E32E6    call        004A0740
 004E32EB    mov         eax,dword ptr [eax+220]
 004E32F1    cmp         eax,dword ptr [ebp-4]
>004E32F4    jne         004E3325
 004E32F6    mov         eax,dword ptr [ebp-4]
 004E32F9    call        004A0740
 004E32FE    mov         edx,dword ptr ds:[56E604];^Screen:TScreen
 004E3304    mov         edx,dword ptr [edx]
 004E3306    cmp         eax,dword ptr [edx+6C];TScreen.FActiveForm:TForm
>004E3309    je          004E3325
 004E330B    mov         eax,dword ptr [ebp-4]
 004E330E    call        TWinControl.HandleAllocated
 004E3313    test        al,al
>004E3315    je          004E3325
 004E3317    mov         eax,dword ptr [ebp-4]
 004E331A    call        TWinControl.GetHandle
 004E331F    push        eax
 004E3320    call        user32.SetFocus
 004E3325    cmp         byte ptr [ebp-5],0
>004E3329    jne         004E335D
 004E332B    mov         eax,dword ptr [ebp-4]
 004E332E    call        004E599C
 004E3333    test        al,al
>004E3335    jne         004E335D
 004E3337    cmp         dword ptr [ebp-10],2
>004E333B    jl          004E335D
 004E333D    cmp         dword ptr [ebp-0C],2
>004E3341    jl          004E335D
 004E3343    mov         dl,1
 004E3345    mov         eax,dword ptr [ebp-4]
 004E3348    call        004E31CC
 004E334D    test        byte ptr [ebp-6],40
>004E3351    jne         004E335D
 004E3353    mov         eax,dword ptr [ebp-4]
 004E3356    mov         byte ptr [eax+614],1;TCustomMPHexEditor.?f614:byte
 004E335D    cmp         byte ptr [ebp-5],0
>004E3361    jne         004E3391
 004E3363    mov         eax,dword ptr [ebp-4]
 004E3366    call        004E599C
 004E336B    test        al,al
>004E336D    je          004E3391
 004E336F    mov         eax,dword ptr [ebp+0C]
 004E3372    mov         edx,dword ptr [ebp-4]
 004E3375    mov         dword ptr [edx+570],eax;TCustomMPHexEditor.?f570:dword
 004E337B    mov         eax,dword ptr [ebp+8]
 004E337E    mov         edx,dword ptr [ebp-4]
 004E3381    mov         dword ptr [edx+574],eax;TCustomMPHexEditor.?f574:dword
 004E3387    mov         eax,dword ptr [ebp-4]
 004E338A    mov         byte ptr [eax+615],1;TCustomMPHexEditor.?f615:byte
 004E3391    cmp         byte ptr [ebp-11],0
>004E3395    jne         004E33D5
 004E3397    mov         eax,dword ptr [ebp-4]
 004E339A    cmp         word ptr [eax+0D2],0;TCustomMPHexEditor.?fD2:word
>004E33A2    je          004E33D5
 004E33A4    mov         eax,dword ptr [ebp-4]
 004E33A7    mov         si,0FFB5
 004E33AB    call        @CallDynaInst;TWinControl.sub_0048C078
 004E33B0    test        al,al
>004E33B2    je          004E33D5
 004E33B4    mov         al,byte ptr [ebp-6]
 004E33B7    push        eax
 004E33B8    mov         eax,dword ptr [ebp+0C]
 004E33BB    push        eax
 004E33BC    mov         eax,dword ptr [ebp+8]
 004E33BF    push        eax
 004E33C0    mov         ebx,dword ptr [ebp-4]
 004E33C3    mov         cl,byte ptr [ebp-5]
 004E33C6    mov         edx,dword ptr [ebp-4]
 004E33C9    mov         eax,dword ptr [ebx+0D4];TCustomMPHexEditor.?fD4:dword
 004E33CF    call        dword ptr [ebx+0D0];TCustomMPHexEditor.FOnMouseDown
 004E33D5    pop         esi
 004E33D6    pop         ebx
 004E33D7    mov         esp,ebp
 004E33D9    pop         ebp
 004E33DA    ret         8
end;*}

//004E33E0
{*procedure sub_004E33E0(?:TCustomMPHexEditor; ?:?; ?:?; ?:?; ?:?);
begin
 004E33E0    push        ebp
 004E33E1    mov         ebp,esp
 004E33E3    add         esp,0FFFFFFEC
 004E33E6    mov         dword ptr [ebp-0C],ecx
 004E33E9    mov         dword ptr [ebp-8],edx
 004E33EC    mov         dword ptr [ebp-4],eax
 004E33EF    mov         eax,dword ptr [ebp-4]
 004E33F2    cmp         dword ptr [eax+550],0FFFFFFFF
>004E33F9    jne         004E3443
 004E33FB    mov         eax,dword ptr [ebp-4]
 004E33FE    mov         ecx,dword ptr [eax+22C]
 004E3404    mov         eax,dword ptr [ebp-4]
 004E3407    mov         edx,dword ptr [eax+228]
 004E340D    mov         eax,dword ptr [ebp-4]
 004E3410    call        004E1288
 004E3415    mov         edx,dword ptr [ebp-8]
 004E3418    mov         dword ptr [edx],eax
 004E341A    mov         eax,dword ptr [ebp-8]
 004E341D    mov         eax,dword ptr [eax]
 004E341F    inc         eax
 004E3420    mov         edx,dword ptr [ebp-0C]
 004E3423    mov         dword ptr [edx],eax
 004E3425    mov         eax,dword ptr [ebp+0C]
 004E3428    mov         edx,dword ptr [ebp-4]
 004E342B    mov         edx,dword ptr [edx+228]
 004E3431    mov         dword ptr [eax],edx
 004E3433    mov         eax,dword ptr [ebp+8]
 004E3436    mov         edx,dword ptr [ebp-4]
 004E3439    mov         edx,dword ptr [edx+22C]
 004E343F    mov         dword ptr [eax],edx
>004E3441    jmp         004E348F
 004E3443    mov         eax,dword ptr [ebp-8]
 004E3446    mov         edx,dword ptr [ebp-4]
 004E3449    mov         edx,dword ptr [edx+54C]
 004E344F    mov         dword ptr [eax],edx
 004E3451    mov         eax,dword ptr [ebp-4]
 004E3454    mov         eax,dword ptr [eax+554]
 004E345A    inc         eax
 004E345B    mov         edx,dword ptr [ebp-0C]
 004E345E    mov         dword ptr [edx],eax
 004E3460    lea         eax,[ebp-14]
 004E3463    push        eax
 004E3464    mov         eax,dword ptr [ebp-4]
 004E3467    call        004E409C
 004E346C    mov         ecx,eax
 004E346E    mov         eax,dword ptr [ebp-4]
 004E3471    mov         edx,dword ptr [eax+54C]
 004E3477    mov         eax,dword ptr [ebp-4]
 004E347A    call        004E1344
 004E347F    mov         eax,dword ptr [ebp+0C]
 004E3482    mov         edx,dword ptr [ebp-14]
 004E3485    mov         dword ptr [eax],edx
 004E3487    mov         eax,dword ptr [ebp+8]
 004E348A    mov         edx,dword ptr [ebp-10]
 004E348D    mov         dword ptr [eax],edx
 004E348F    mov         eax,dword ptr [ebp-4]
 004E3492    mov         eax,dword ptr [eax+4F8]
 004E3498    mov         eax,dword ptr [eax+4]
 004E349B    mov         edx,dword ptr [ebp-8]
 004E349E    cmp         eax,dword ptr [edx]
>004E34A0    jle         004E34B5
 004E34A2    mov         edx,dword ptr [ebp-8]
 004E34A5    mov         edx,dword ptr [edx]
 004E34A7    mov         eax,dword ptr [ebp-4]
 004E34AA    mov         eax,dword ptr [eax+4F8]
 004E34B0    call        TBits.SetSize
 004E34B5    mov         esp,ebp
 004E34B7    pop         ebp
 004E34B8    ret         8
end;*}

//004E34BC
{*function sub_004E34BC(?:?; ?:?; ?:?):?;
begin
 004E34BC    push        ebp
 004E34BD    mov         ebp,esp
 004E34BF    add         esp,0FFFFFDDC
 004E34C5    push        ebx
 004E34C6    xor         ebx,ebx
 004E34C8    mov         dword ptr [ebp-224],ebx
 004E34CE    mov         dword ptr [ebp-0C],ecx
 004E34D1    mov         dword ptr [ebp-8],edx
 004E34D4    mov         dword ptr [ebp-4],eax
 004E34D7    xor         eax,eax
 004E34D9    push        ebp
 004E34DA    push        4E363E
 004E34DF    push        dword ptr fs:[eax]
 004E34E2    mov         dword ptr fs:[eax],esp
 004E34E5    xor         eax,eax
 004E34E7    mov         dword ptr [ebp-10],eax
 004E34EA    mov         eax,dword ptr [ebp-4]
 004E34ED    call        004E0588
 004E34F2    cmp         eax,dword ptr [ebp-8]
>004E34F5    jle         004E3625
 004E34FB    lea         eax,[ebp-224]
 004E3501    call        004DF414
 004E3506    mov         edx,dword ptr [ebp-224]
 004E350C    mov         eax,dword ptr [ebp-0C]
 004E350F    call        @LStrAsg
 004E3514    push        0FFFF
 004E3519    mov         ecx,dword ptr [ebp-0C]
 004E351C    mov         ecx,dword ptr [ecx]
 004E351E    mov         dl,1
 004E3520    mov         eax,[0041DD24];TFileStream
 004E3525    call        TFileStream.Create;TFileStream.Create
 004E352A    mov         dword ptr [ebp-10],eax
 004E352D    push        0
 004E352F    push        0
 004E3531    mov         eax,dword ptr [ebp-10]
 004E3534    call        TStream.SetPosition
 004E3539    mov         eax,dword ptr [ebp-8]
 004E353C    cdq
 004E353D    push        edx
 004E353E    push        eax
 004E353F    mov         eax,dword ptr [ebp-4]
 004E3542    mov         eax,dword ptr [eax+4E0]
 004E3548    call        TStream.SetPosition
 004E354D    mov         byte ptr [ebp-11],0
>004E3551    jmp         004E35E5
 004E3556    lea         eax,[ebp-220]
 004E355C    xor         ecx,ecx
 004E355E    mov         edx,200
 004E3563    call        @FillChar
 004E3568    lea         edx,[ebp-220]
 004E356E    mov         eax,dword ptr [ebp-4]
 004E3571    mov         eax,dword ptr [eax+4E0]
 004E3577    mov         ecx,200
 004E357C    mov         ebx,dword ptr [eax]
 004E357E    call        dword ptr [ebx+0C]
 004E3581    mov         dword ptr [ebp-1C],eax
 004E3584    mov         eax,dword ptr [ebp-1C]
 004E3587    dec         eax
 004E3588    test        eax,eax
>004E358A    jl          004E35D4
 004E358C    inc         eax
 004E358D    mov         dword ptr [ebp-20],eax
 004E3590    mov         dword ptr [ebp-18],0
 004E3597    mov         eax,dword ptr [ebp-18]
 004E359A    mov         al,byte ptr [ebp+eax-220]
 004E35A1    and         al,0F
 004E35A3    mov         byte ptr [ebp-12],al
 004E35A6    mov         eax,dword ptr [ebp-18]
 004E35A9    movzx       eax,byte ptr [ebp+eax-220]
 004E35B1    shr         eax,4
 004E35B4    mov         dl,byte ptr [ebp-11]
 004E35B7    shl         edx,4
 004E35BA    or          al,dl
 004E35BC    mov         edx,dword ptr [ebp-18]
 004E35BF    mov         byte ptr [ebp+edx-220],al
 004E35C6    mov         al,byte ptr [ebp-12]
 004E35C9    mov         byte ptr [ebp-11],al
 004E35CC    inc         dword ptr [ebp-18]
 004E35CF    dec         dword ptr [ebp-20]
>004E35D2    jne         004E3597
 004E35D4    lea         edx,[ebp-220]
 004E35DA    mov         ecx,dword ptr [ebp-1C]
 004E35DD    mov         eax,dword ptr [ebp-10]
 004E35E0    call        TStream.WriteBuffer
 004E35E5    mov         eax,dword ptr [ebp-4]
 004E35E8    mov         eax,dword ptr [eax+4E0]
 004E35EE    call        TStream.GetPosition
 004E35F3    push        edx
 004E35F4    push        eax
 004E35F5    mov         eax,dword ptr [ebp-4]
 004E35F8    call        004E0588
 004E35FD    cdq
 004E35FE    cmp         edx,dword ptr [esp+4]
>004E3602    jne         004E3611
 004E3604    cmp         eax,dword ptr [esp]
 004E3607    pop         edx
 004E3608    pop         eax
>004E3609    ja          004E3556
>004E360F    jmp         004E3619
 004E3611    pop         edx
 004E3612    pop         eax
>004E3613    jg          004E3556
 004E3619    push        0
 004E361B    push        0
 004E361D    mov         eax,dword ptr [ebp-10]
 004E3620    call        TStream.SetPosition
 004E3625    xor         eax,eax
 004E3627    pop         edx
 004E3628    pop         ecx
 004E3629    pop         ecx
 004E362A    mov         dword ptr fs:[eax],edx
 004E362D    push        4E3645
 004E3632    lea         eax,[ebp-224]
 004E3638    call        @LStrClr
 004E363D    ret
>004E363E    jmp         @HandleFinally
>004E3643    jmp         004E3632
 004E3645    mov         eax,dword ptr [ebp-10]
 004E3648    pop         ebx
 004E3649    mov         esp,ebp
 004E364B    pop         ebp
 004E364C    ret
end;*}

//004E3650
{*function sub_004E3650(?:?; ?:?; ?:?):?;
begin
 004E3650    push        ebp
 004E3651    mov         ebp,esp
 004E3653    add         esp,0FFFFFFE4
 004E3656    push        ebx
 004E3657    xor         ebx,ebx
 004E3659    mov         dword ptr [ebp-14],ebx
 004E365C    mov         byte ptr [ebp-9],cl
 004E365F    mov         dword ptr [ebp-8],edx
 004E3662    mov         dword ptr [ebp-4],eax
 004E3665    xor         eax,eax
 004E3667    push        ebp
 004E3668    push        4E37CD
 004E366D    push        dword ptr fs:[eax]
 004E3670    mov         dword ptr fs:[eax],esp
 004E3673    mov         byte ptr [ebp-0A],0
 004E3677    mov         eax,dword ptr [ebp-4]
 004E367A    call        004E0588
 004E367F    test        eax,eax
>004E3681    je          004E37B7
 004E3687    mov         eax,dword ptr [ebp-4]
 004E368A    mov         eax,dword ptr [eax+4E0]
 004E3690    mov         edx,dword ptr [eax]
 004E3692    call        dword ptr [edx]
 004E3694    mov         dword ptr [ebp-18],eax
 004E3697    mov         eax,dword ptr [ebp-4]
 004E369A    call        004E86E8
 004E369F    xor         eax,eax
 004E36A1    push        ebp
 004E36A2    push        4E37B0
 004E36A7    push        dword ptr fs:[eax]
 004E36AA    mov         dword ptr fs:[eax],esp
 004E36AD    mov         edx,dword ptr [ebp-8]
 004E36B0    mov         eax,dword ptr [ebp-4]
 004E36B3    call        004E8F14
 004E36B8    mov         byte ptr [ebp-19],al
 004E36BB    mov         eax,dword ptr [ebp-4]
 004E36BE    call        004E0588
 004E36C3    mov         edx,eax
 004E36C5    dec         edx
 004E36C6    mov         eax,dword ptr [ebp-4]
 004E36C9    call        004E8F14
 004E36CE    mov         byte ptr [ebp-1A],al
 004E36D1    lea         ecx,[ebp-14]
 004E36D4    mov         edx,dword ptr [ebp-8]
 004E36D7    mov         eax,dword ptr [ebp-4]
 004E36DA    call        004E34BC
 004E36DF    mov         dword ptr [ebp-10],eax
 004E36E2    xor         eax,eax
 004E36E4    push        ebp
 004E36E5    push        4E373C
 004E36EA    push        dword ptr fs:[eax]
 004E36ED    mov         dword ptr fs:[eax],esp
 004E36F0    mov         eax,dword ptr [ebp-8]
 004E36F3    cdq
 004E36F4    push        edx
 004E36F5    push        eax
 004E36F6    mov         eax,dword ptr [ebp-4]
 004E36F9    mov         eax,dword ptr [eax+4E0]
 004E36FF    call        TStream.SetPosition
 004E3704    mov         eax,dword ptr [ebp-10]
 004E3707    mov         edx,dword ptr [eax]
 004E3709    call        dword ptr [edx]
 004E370B    push        edx
 004E370C    push        eax
 004E370D    mov         eax,dword ptr [ebp-4]
 004E3710    mov         eax,dword ptr [eax+4E0]
 004E3716    mov         edx,dword ptr [ebp-10]
 004E3719    call        TStream.CopyFrom
 004E371E    xor         eax,eax
 004E3720    pop         edx
 004E3721    pop         ecx
 004E3722    pop         ecx
 004E3723    mov         dword ptr fs:[eax],edx
 004E3726    push        4E3743
 004E372B    mov         eax,dword ptr [ebp-10]
 004E372E    call        TObject.Free
 004E3733    mov         eax,dword ptr [ebp-14]
 004E3736    call        0040CAA4
 004E373B    ret
>004E373C    jmp         @HandleFinally
>004E3741    jmp         004E372B
 004E3743    cmp         byte ptr [ebp-9],0
>004E3747    je          004E3756
 004E3749    xor         eax,eax
 004E374B    mov         al,byte ptr [ebp-19]
 004E374E    shr         eax,4
 004E3751    mov         byte ptr [ebp-19],al
>004E3754    jmp         004E375A
 004E3756    and         byte ptr [ebp-19],0F0
 004E375A    mov         cl,byte ptr [ebp-19]
 004E375D    mov         edx,dword ptr [ebp-8]
 004E3760    mov         eax,dword ptr [ebp-4]
 004E3763    call        004E8F3C
 004E3768    mov         eax,dword ptr [ebp-18]
 004E376B    inc         eax
 004E376C    cdq
 004E376D    push        edx
 004E376E    push        eax
 004E376F    mov         eax,dword ptr [ebp-4]
 004E3772    mov         eax,dword ptr [eax+4E0]
 004E3778    call        004235FC
 004E377D    mov         eax,dword ptr [ebp-4]
 004E3780    call        004E0588
 004E3785    mov         edx,eax
 004E3787    dec         edx
 004E3788    mov         cl,byte ptr [ebp-1A]
 004E378B    shl         ecx,4
 004E378E    mov         eax,dword ptr [ebp-4]
 004E3791    call        004E8F3C
 004E3796    mov         byte ptr [ebp-0A],1
 004E379A    xor         eax,eax
 004E379C    pop         edx
 004E379D    pop         ecx
 004E379E    pop         ecx
 004E379F    mov         dword ptr fs:[eax],edx
 004E37A2    push        4E37B7
 004E37A7    mov         eax,dword ptr [ebp-4]
 004E37AA    call        004E867C
 004E37AF    ret
>004E37B0    jmp         @HandleFinally
>004E37B5    jmp         004E37A7
 004E37B7    xor         eax,eax
 004E37B9    pop         edx
 004E37BA    pop         ecx
 004E37BB    pop         ecx
 004E37BC    mov         dword ptr fs:[eax],edx
 004E37BF    push        4E37D4
 004E37C4    lea         eax,[ebp-14]
 004E37C7    call        @LStrClr
 004E37CC    ret
>004E37CD    jmp         @HandleFinally
>004E37D2    jmp         004E37C4
 004E37D4    mov         al,byte ptr [ebp-0A]
 004E37D7    pop         ebx
 004E37D8    mov         esp,ebp
 004E37DA    pop         ebp
 004E37DB    ret
end;*}

//004E37DC
{*function sub_004E37DC(?:TMPHexEditorEx; ?:?; ?:?; ?:?):?;
begin
 004E37DC    push        ebp
 004E37DD    mov         ebp,esp
 004E37DF    add         esp,0FFFFFFF4
 004E37E2    mov         byte ptr [ebp-9],cl
 004E37E5    mov         dword ptr [ebp-8],edx
 004E37E8    mov         dword ptr [ebp-4],eax
 004E37EB    mov         byte ptr [ebp-0A],0
 004E37EF    mov         eax,dword ptr [ebp-4]
 004E37F2    call        004E0588
 004E37F7    dec         eax
>004E37F8    jge         004E3820
 004E37FA    xor         edx,edx
 004E37FC    mov         eax,dword ptr [ebp-4]
 004E37FF    call        004E31CC
 004E3804    push        0
 004E3806    push        1
 004E3808    mov         edx,56D0B0
 004E380D    mov         ecx,1
 004E3812    mov         eax,dword ptr [ebp-4]
 004E3815    call        004E475C
 004E381A    mov         byte ptr [ebp-0A],1
>004E381E    jmp         004E389E
 004E3820    mov         eax,dword ptr [ebp-4]
 004E3823    call        004E0588
 004E3828    cmp         eax,dword ptr [ebp-8]
>004E382B    jle         004E389E
 004E382D    cmp         dword ptr [ebp-8],0
>004E3831    jl          004E389E
 004E3833    push        0
 004E3835    push        0
 004E3837    mov         eax,dword ptr [ebp+8]
 004E383A    push        eax
 004E383B    mov         ecx,dword ptr [ebp-8]
 004E383E    mov         dl,5
 004E3840    mov         eax,dword ptr [ebp-4]
 004E3843    call        004E3CA4
 004E3848    xor         edx,edx
 004E384A    mov         eax,dword ptr [ebp-4]
 004E384D    call        004E31CC
 004E3852    mov         cl,byte ptr [ebp-9]
 004E3855    mov         edx,dword ptr [ebp-8]
 004E3858    mov         eax,dword ptr [ebp-4]
 004E385B    call        004E3650
 004E3860    mov         byte ptr [ebp-0A],al
 004E3863    cmp         byte ptr [ebp-0A],0
>004E3867    je          004E388B
 004E3869    mov         eax,dword ptr [ebp-4]
 004E386C    mov         eax,dword ptr [eax+4F8]
 004E3872    mov         eax,dword ptr [eax+4]
 004E3875    cmp         eax,dword ptr [ebp-8]
>004E3878    jl          004E388B
 004E387A    mov         edx,dword ptr [ebp-8]
 004E387D    mov         eax,dword ptr [ebp-4]
 004E3880    mov         eax,dword ptr [eax+4F8]
 004E3886    call        TBits.SetSize
 004E388B    mov         eax,dword ptr [ebp-4]
 004E388E    call        004E0AC0
 004E3893    mov         eax,dword ptr [ebp-4]
 004E3896    mov         edx,dword ptr [eax]
 004E3898    call        dword ptr [edx+0EC]
 004E389E    mov         al,byte ptr [ebp-0A]
 004E38A1    mov         esp,ebp
 004E38A3    pop         ebp
 004E38A4    ret         4
end;*}

//004E38A8
{*function sub_004E38A8(?:?; ?:?; ?:?):?;
begin
 004E38A8    push        ebp
 004E38A9    mov         ebp,esp
 004E38AB    add         esp,0FFFFFFE4
 004E38AE    push        ebx
 004E38AF    xor         ebx,ebx
 004E38B1    mov         dword ptr [ebp-14],ebx
 004E38B4    mov         byte ptr [ebp-9],cl
 004E38B7    mov         dword ptr [ebp-8],edx
 004E38BA    mov         dword ptr [ebp-4],eax
 004E38BD    xor         eax,eax
 004E38BF    push        ebp
 004E38C0    push        4E3A35
 004E38C5    push        dword ptr fs:[eax]
 004E38C8    mov         dword ptr fs:[eax],esp
 004E38CB    mov         byte ptr [ebp-0A],0
 004E38CF    mov         eax,dword ptr [ebp-4]
 004E38D2    call        004E0588
 004E38D7    test        eax,eax
>004E38D9    je          004E3A1F
 004E38DF    mov         eax,dword ptr [ebp-4]
 004E38E2    mov         eax,dword ptr [eax+4E0]
 004E38E8    mov         edx,dword ptr [eax]
 004E38EA    call        dword ptr [edx]
 004E38EC    mov         dword ptr [ebp-18],eax
 004E38EF    mov         eax,dword ptr [ebp-4]
 004E38F2    call        004E86E8
 004E38F7    xor         eax,eax
 004E38F9    push        ebp
 004E38FA    push        4E3A18
 004E38FF    push        dword ptr fs:[eax]
 004E3902    mov         dword ptr fs:[eax],esp
 004E3905    mov         edx,dword ptr [ebp-8]
 004E3908    mov         eax,dword ptr [ebp-4]
 004E390B    call        004E8F14
 004E3910    mov         byte ptr [ebp-19],al
 004E3913    lea         ecx,[ebp-14]
 004E3916    mov         edx,dword ptr [ebp-8]
 004E3919    mov         eax,dword ptr [ebp-4]
 004E391C    call        004E34BC
 004E3921    mov         dword ptr [ebp-10],eax
 004E3924    xor         eax,eax
 004E3926    push        ebp
 004E3927    push        4E3990
 004E392C    push        dword ptr fs:[eax]
 004E392F    mov         dword ptr fs:[eax],esp
 004E3932    mov         eax,dword ptr [ebp-8]
 004E3935    cdq
 004E3936    push        edx
 004E3937    push        eax
 004E3938    mov         eax,dword ptr [ebp-4]
 004E393B    mov         eax,dword ptr [eax+4E0]
 004E3941    call        TStream.SetPosition
 004E3946    push        0
 004E3948    push        1
 004E394A    mov         eax,dword ptr [ebp-10]
 004E394D    call        TStream.SetPosition
 004E3952    mov         eax,dword ptr [ebp-10]
 004E3955    mov         edx,dword ptr [eax]
 004E3957    call        dword ptr [edx]
 004E3959    sub         eax,1
 004E395C    sbb         edx,0
 004E395F    push        edx
 004E3960    push        eax
 004E3961    mov         eax,dword ptr [ebp-4]
 004E3964    mov         eax,dword ptr [eax+4E0]
 004E396A    mov         edx,dword ptr [ebp-10]
 004E396D    call        TStream.CopyFrom
 004E3972    xor         eax,eax
 004E3974    pop         edx
 004E3975    pop         ecx
 004E3976    pop         ecx
 004E3977    mov         dword ptr fs:[eax],edx
 004E397A    push        4E3997
 004E397F    mov         eax,dword ptr [ebp-10]
 004E3982    call        TObject.Free
 004E3987    mov         eax,dword ptr [ebp-14]
 004E398A    call        0040CAA4
 004E398F    ret
>004E3990    jmp         @HandleFinally
>004E3995    jmp         004E397F
 004E3997    cmp         byte ptr [ebp-9],0
>004E399B    jne         004E39BF
 004E399D    mov         edx,dword ptr [ebp-8]
 004E39A0    mov         eax,dword ptr [ebp-4]
 004E39A3    call        004E8F14
 004E39A8    mov         ecx,eax
 004E39AA    and         cl,0F
 004E39AD    mov         al,byte ptr [ebp-19]
 004E39B0    and         al,0F0
 004E39B2    or          cl,al
 004E39B4    mov         edx,dword ptr [ebp-8]
 004E39B7    mov         eax,dword ptr [ebp-4]
 004E39BA    call        004E8F3C
 004E39BF    mov         byte ptr [ebp-0A],1
 004E39C3    mov         eax,dword ptr [ebp-18]
 004E39C6    cdq
 004E39C7    push        edx
 004E39C8    push        eax
 004E39C9    mov         eax,dword ptr [ebp-4]
 004E39CC    mov         eax,dword ptr [eax+4E0]
 004E39D2    call        004235FC
 004E39D7    mov         eax,dword ptr [ebp-4]
 004E39DA    call        004E0588
 004E39DF    mov         edx,eax
 004E39E1    dec         edx
 004E39E2    mov         eax,dword ptr [ebp-4]
 004E39E5    call        004E8F14
 004E39EA    shl         eax,4
 004E39ED    push        eax
 004E39EE    mov         eax,dword ptr [ebp-4]
 004E39F1    call        004E0588
 004E39F6    mov         edx,eax
 004E39F8    dec         edx
 004E39F9    mov         eax,dword ptr [ebp-4]
 004E39FC    pop         ecx
 004E39FD    call        004E8F3C
 004E3A02    xor         eax,eax
 004E3A04    pop         edx
 004E3A05    pop         ecx
 004E3A06    pop         ecx
 004E3A07    mov         dword ptr fs:[eax],edx
 004E3A0A    push        4E3A1F
 004E3A0F    mov         eax,dword ptr [ebp-4]
 004E3A12    call        004E867C
 004E3A17    ret
>004E3A18    jmp         @HandleFinally
>004E3A1D    jmp         004E3A0F
 004E3A1F    xor         eax,eax
 004E3A21    pop         edx
 004E3A22    pop         ecx
 004E3A23    pop         ecx
 004E3A24    mov         dword ptr fs:[eax],edx
 004E3A27    push        4E3A3C
 004E3A2C    lea         eax,[ebp-14]
 004E3A2F    call        @LStrClr
 004E3A34    ret
>004E3A35    jmp         @HandleFinally
>004E3A3A    jmp         004E3A2C
 004E3A3C    mov         al,byte ptr [ebp-0A]
 004E3A3F    pop         ebx
 004E3A40    mov         esp,ebp
 004E3A42    pop         ebp
 004E3A43    ret
end;*}

//004E3A44
{*function sub_004E3A44(?:TMPHexEditorEx; ?:?; ?:?; ?:?):?;
begin
 004E3A44    push        ebp
 004E3A45    mov         ebp,esp
 004E3A47    add         esp,0FFFFFFF4
 004E3A4A    mov         byte ptr [ebp-9],cl
 004E3A4D    mov         dword ptr [ebp-8],edx
 004E3A50    mov         dword ptr [ebp-4],eax
 004E3A53    mov         byte ptr [ebp-0A],0
 004E3A57    mov         eax,dword ptr [ebp-4]
 004E3A5A    call        004E0588
 004E3A5F    cmp         eax,dword ptr [ebp-8]
>004E3A62    jle         004E3AD5
 004E3A64    cmp         dword ptr [ebp-8],0
>004E3A68    jl          004E3AD5
 004E3A6A    push        0
 004E3A6C    push        0
 004E3A6E    mov         eax,dword ptr [ebp+8]
 004E3A71    push        eax
 004E3A72    mov         ecx,dword ptr [ebp-8]
 004E3A75    mov         dl,6
 004E3A77    mov         eax,dword ptr [ebp-4]
 004E3A7A    call        004E3CA4
 004E3A7F    xor         edx,edx
 004E3A81    mov         eax,dword ptr [ebp-4]
 004E3A84    call        004E31CC
 004E3A89    mov         cl,byte ptr [ebp-9]
 004E3A8C    mov         edx,dword ptr [ebp-8]
 004E3A8F    mov         eax,dword ptr [ebp-4]
 004E3A92    call        004E38A8
 004E3A97    mov         byte ptr [ebp-0A],al
 004E3A9A    cmp         byte ptr [ebp-0A],0
>004E3A9E    je          004E3AC2
 004E3AA0    mov         eax,dword ptr [ebp-4]
 004E3AA3    mov         eax,dword ptr [eax+4F8]
 004E3AA9    mov         eax,dword ptr [eax+4]
 004E3AAC    cmp         eax,dword ptr [ebp-8]
>004E3AAF    jl          004E3AC2
 004E3AB1    mov         edx,dword ptr [ebp-8]
 004E3AB4    mov         eax,dword ptr [ebp-4]
 004E3AB7    mov         eax,dword ptr [eax+4F8]
 004E3ABD    call        TBits.SetSize
 004E3AC2    mov         eax,dword ptr [ebp-4]
 004E3AC5    call        004E0AC0
 004E3ACA    mov         eax,dword ptr [ebp-4]
 004E3ACD    mov         edx,dword ptr [eax]
 004E3ACF    call        dword ptr [edx+0EC]
 004E3AD5    mov         al,byte ptr [ebp-0A]
 004E3AD8    mov         esp,ebp
 004E3ADA    pop         ebp
 004E3ADB    ret         4
end;*}

//004E3AE0
{*procedure sub_004E3AE0(?:TCustomMPHexEditor; ?:Integer; ?:Integer; ?:?; ?:?);
begin
 004E3AE0    push        ebp
 004E3AE1    mov         ebp,esp
 004E3AE3    add         esp,0FFFFFFE8
 004E3AE6    mov         dword ptr [ebp-0C],ecx
 004E3AE9    mov         dword ptr [ebp-8],edx
 004E3AEC    mov         dword ptr [ebp-4],eax
 004E3AEF    mov         eax,dword ptr [ebp-4]
 004E3AF2    call        004E0588
 004E3AF7    dec         eax
 004E3AF8    cmp         eax,dword ptr [ebp-0C]
>004E3AFB    jl          004E3B17
 004E3AFD    mov         eax,dword ptr [ebp-4]
 004E3B00    call        004E0588
 004E3B05    sub         eax,dword ptr [ebp-0C]
 004E3B08    push        eax
 004E3B09    mov         ecx,dword ptr [ebp-8]
 004E3B0C    mov         edx,dword ptr [ebp-0C]
 004E3B0F    mov         eax,dword ptr [ebp-4]
 004E3B12    call        004E4A44
 004E3B17    mov         eax,dword ptr [ebp-4]
 004E3B1A    call        004E0588
 004E3B1F    mov         edx,dword ptr [ebp-0C]
 004E3B22    sub         edx,dword ptr [ebp-8]
 004E3B25    sub         eax,edx
 004E3B27    cdq
 004E3B28    push        edx
 004E3B29    push        eax
 004E3B2A    mov         eax,dword ptr [ebp-4]
 004E3B2D    mov         eax,dword ptr [eax+4E0]
 004E3B33    call        004235FC
 004E3B38    mov         ecx,dword ptr [ebp+8]
 004E3B3B    mov         edx,dword ptr [ebp+0C]
 004E3B3E    mov         eax,dword ptr [ebp-4]
 004E3B41    call        004E1288
 004E3B46    mov         dword ptr [ebp-0C],eax
 004E3B49    mov         eax,dword ptr [ebp-4]
 004E3B4C    call        004E0588
 004E3B51    dec         eax
>004E3B52    jge         004E3B9A
 004E3B54    mov         dword ptr [ebp-18],2
 004E3B5B    mov         eax,dword ptr [ebp-4]
 004E3B5E    cmp         byte ptr [eax+4F0],0
>004E3B65    je          004E3B81
 004E3B67    mov         edx,dword ptr [ebp-18]
 004E3B6A    mov         eax,dword ptr [ebp-4]
 004E3B6D    call        004E14A4
 004E3B72    mov         edx,eax
 004E3B74    mov         eax,2
 004E3B79    call        004DF5E8
 004E3B7E    mov         dword ptr [ebp-18],eax
 004E3B81    push        1
 004E3B83    push        1
 004E3B85    mov         ecx,2
 004E3B8A    mov         edx,dword ptr [ebp-18]
 004E3B8D    mov         eax,dword ptr [ebp-4]
 004E3B90    call        004D8CCC
>004E3B95    jmp         004E3C20
 004E3B9A    mov         eax,dword ptr [ebp-4]
 004E3B9D    call        004E0588
 004E3BA2    cmp         eax,dword ptr [ebp-0C]
>004E3BA5    jg          004E3C08
 004E3BA7    mov         eax,dword ptr [ebp-4]
 004E3BAA    call        TMPHexEditorEx.GetInsertMode
 004E3BAF    test        al,al
>004E3BB1    je          004E3BD4
 004E3BB3    lea         eax,[ebp-14]
 004E3BB6    push        eax
 004E3BB7    mov         eax,dword ptr [ebp-4]
 004E3BBA    call        004E0588
 004E3BBF    mov         edx,eax
 004E3BC1    mov         eax,dword ptr [ebp-4]
 004E3BC4    mov         cl,byte ptr [eax+4F0]
 004E3BCA    mov         eax,dword ptr [ebp-4]
 004E3BCD    call        004E1344
>004E3BD2    jmp         004E3BF4
 004E3BD4    lea         eax,[ebp-14]
 004E3BD7    push        eax
 004E3BD8    mov         eax,dword ptr [ebp-4]
 004E3BDB    call        004E0588
 004E3BE0    mov         edx,eax
 004E3BE2    dec         edx
 004E3BE3    mov         eax,dword ptr [ebp-4]
 004E3BE6    mov         cl,byte ptr [eax+4F0]
 004E3BEC    mov         eax,dword ptr [ebp-4]
 004E3BEF    call        004E1344
 004E3BF4    push        1
 004E3BF6    push        1
 004E3BF8    mov         ecx,dword ptr [ebp-10]
 004E3BFB    mov         edx,dword ptr [ebp-14]
 004E3BFE    mov         eax,dword ptr [ebp-4]
 004E3C01    call        004D8CCC
>004E3C06    jmp         004E3C20
 004E3C08    cmp         dword ptr [ebp+0C],0FFFFFFFF
>004E3C0C    jle         004E3C20
 004E3C0E    push        1
 004E3C10    push        1
 004E3C12    mov         ecx,dword ptr [ebp+8]
 004E3C15    mov         edx,dword ptr [ebp+0C]
 004E3C18    mov         eax,dword ptr [ebp-4]
 004E3C1B    call        004D8CCC
 004E3C20    mov         eax,dword ptr [ebp-4]
 004E3C23    call        004E0AC0
 004E3C28    xor         edx,edx
 004E3C2A    mov         eax,dword ptr [ebp-4]
 004E3C2D    call        004E31CC
 004E3C32    mov         eax,dword ptr [ebp-4]
 004E3C35    mov         edx,dword ptr [eax]
 004E3C37    call        dword ptr [edx+7C]
 004E3C3A    mov         esp,ebp
 004E3C3C    pop         ebp
 004E3C3D    ret         8
end;*}

//004E3C40
{*procedure sub_004E3C40(?:TCustomMPHexEditor; ?:?);
begin
 004E3C40    push        ebp
 004E3C41    mov         ebp,esp
 004E3C43    add         esp,0FFFFFFE8
 004E3C46    mov         dword ptr [ebp-8],edx
 004E3C49    mov         dword ptr [ebp-4],eax
 004E3C4C    lea         eax,[ebp-14]
 004E3C4F    push        eax
 004E3C50    lea         eax,[ebp-18]
 004E3C53    push        eax
 004E3C54    lea         ecx,[ebp-10]
 004E3C57    lea         edx,[ebp-0C]
 004E3C5A    mov         eax,dword ptr [ebp-4]
 004E3C5D    call        004E33E0
 004E3C62    mov         eax,dword ptr [ebp-10]
 004E3C65    sub         eax,dword ptr [ebp-0C]
 004E3C68    push        eax
 004E3C69    push        0
 004E3C6B    mov         eax,dword ptr [ebp-8]
 004E3C6E    push        eax
 004E3C6F    mov         ecx,dword ptr [ebp-0C]
 004E3C72    mov         dl,1
 004E3C74    mov         eax,dword ptr [ebp-4]
 004E3C77    call        004E3CA4
 004E3C7C    mov         eax,dword ptr [ebp-14]
 004E3C7F    push        eax
 004E3C80    mov         eax,dword ptr [ebp-18]
 004E3C83    push        eax
 004E3C84    mov         ecx,dword ptr [ebp-10]
 004E3C87    mov         edx,dword ptr [ebp-0C]
 004E3C8A    mov         eax,dword ptr [ebp-4]
 004E3C8D    call        004E3AE0
 004E3C92    mov         eax,dword ptr [ebp-4]
 004E3C95    mov         edx,dword ptr [eax]
 004E3C97    call        dword ptr [edx+0EC];TCustomMPHexEditor.sub_004E87E8
 004E3C9D    mov         esp,ebp
 004E3C9F    pop         ebp
 004E3CA0    ret
end;*}

//004E3CA4
{*procedure sub_004E3CA4(?:TCustomMPHexEditor; ?:?; ?:dword; ?:?; ?:?; ?:?);
begin
 004E3CA4    push        ebp
 004E3CA5    mov         ebp,esp
 004E3CA7    add         esp,0FFFFFFF0
 004E3CAA    push        ebx
 004E3CAB    xor         ebx,ebx
 004E3CAD    mov         dword ptr [ebp-10],ebx
 004E3CB0    mov         dword ptr [ebp-0C],ecx
 004E3CB3    mov         byte ptr [ebp-5],dl
 004E3CB6    mov         dword ptr [ebp-4],eax
 004E3CB9    xor         eax,eax
 004E3CBB    push        ebp
 004E3CBC    push        4E3D52
 004E3CC1    push        dword ptr fs:[eax]
 004E3CC4    mov         dword ptr fs:[eax],esp
 004E3CC7    mov         eax,dword ptr [ebp+0C]
 004E3CCA    push        eax
 004E3CCB    mov         ecx,dword ptr [ebp+10]
 004E3CCE    mov         dl,byte ptr [ebp-5]
 004E3CD1    mov         eax,dword ptr [ebp-4]
 004E3CD4    mov         ebx,dword ptr [eax]
 004E3CD6    call        dword ptr [ebx+0F4];TCustomMPHexEditor.sub_004E9560
 004E3CDC    test        al,al
>004E3CDE    je          004E3D1B
 004E3CE0    mov         eax,dword ptr [ebp-4]
 004E3CE3    mov         eax,dword ptr [eax+618];TCustomMPHexEditor.?f618:TMPHUndoStorage
 004E3CE9    cmp         dword ptr [eax+18],0;TMPHUndoStorage.?f18:dword
>004E3CED    jne         004E3D0F
 004E3CEF    mov         eax,dword ptr [ebp+10]
 004E3CF2    push        eax
 004E3CF3    mov         eax,dword ptr [ebp+0C]
 004E3CF6    push        eax
 004E3CF7    mov         eax,dword ptr [ebp+8]
 004E3CFA    push        eax
 004E3CFB    mov         ecx,dword ptr [ebp-0C]
 004E3CFE    mov         dl,byte ptr [ebp-5]
 004E3D01    mov         eax,dword ptr [ebp-4]
 004E3D04    mov         eax,dword ptr [eax+618];TCustomMPHexEditor.?f618:TMPHUndoStorage
 004E3D0A    call        004EA680
 004E3D0F    mov         eax,dword ptr [ebp-4]
 004E3D12    mov         byte ptr [eax+67D],1;TCustomMPHexEditor.?f67D:byte
>004E3D19    jmp         004E3D3C
 004E3D1B    lea         edx,[ebp-10]
 004E3D1E    mov         eax,4DF38C;^HInstance:LongWord
 004E3D23    call        LoadResString
 004E3D28    mov         ecx,dword ptr [ebp-10]
 004E3D2B    mov         dl,1
 004E3D2D    mov         eax,[004DE8FC];EMPHexEditor
 004E3D32    call        Exception.Create;EMPHexEditor.Create
 004E3D37    call        @RaiseExcept
 004E3D3C    xor         eax,eax
 004E3D3E    pop         edx
 004E3D3F    pop         ecx
 004E3D40    pop         ecx
 004E3D41    mov         dword ptr fs:[eax],edx
 004E3D44    push        4E3D59
 004E3D49    lea         eax,[ebp-10]
 004E3D4C    call        @LStrClr
 004E3D51    ret
>004E3D52    jmp         @HandleFinally
>004E3D57    jmp         004E3D49
 004E3D59    pop         ebx
 004E3D5A    mov         esp,ebp
 004E3D5C    pop         ebp
 004E3D5D    ret         0C
end;*}

//004E3D60
procedure sub_004E3D60(?:TCustomMPHexEditor);
begin
{*
 004E3D60    push        ebp
 004E3D61    mov         ebp,esp
 004E3D63    push        ecx
 004E3D64    mov         dword ptr [ebp-4],eax
 004E3D67    mov         dl,1
 004E3D69    mov         eax,dword ptr [ebp-4]
 004E3D6C    mov         eax,dword ptr [eax+618];TCustomMPHexEditor.?f618:TMPHUndoStorage
 004E3D72    call        004EB4F0
 004E3D77    pop         ecx
 004E3D78    pop         ebp
 004E3D79    ret
*}
end;

//004E3D7C
{*function sub_004E3D7C(?:TMPHexEditorEx):?;
begin
 004E3D7C    push        ebp
 004E3D7D    mov         ebp,esp
 004E3D7F    add         esp,0FFFFFFF8
 004E3D82    mov         dword ptr [ebp-4],eax
 004E3D85    mov         eax,dword ptr [ebp-4]
 004E3D88    cmp         byte ptr [eax+561],0
>004E3D8F    jne         004E3DA3
 004E3D91    mov         eax,dword ptr [ebp-4]
 004E3D94    mov         eax,dword ptr [eax+618]
 004E3D9A    call        004EA1A8
 004E3D9F    test        al,al
>004E3DA1    jne         004E3DA7
 004E3DA3    xor         eax,eax
>004E3DA5    jmp         004E3DA9
 004E3DA7    mov         al,1
 004E3DA9    mov         byte ptr [ebp-5],al
 004E3DAC    mov         al,byte ptr [ebp-5]
 004E3DAF    pop         ecx
 004E3DB0    pop         ecx
 004E3DB1    pop         ebp
 004E3DB2    ret
end;*}

//004E3DB4
{*function sub_004E3DB4(?:TMPHexEditorEx):?;
begin
 004E3DB4    push        ebp
 004E3DB5    mov         ebp,esp
 004E3DB7    add         esp,0FFFFFFF8
 004E3DBA    mov         dword ptr [ebp-4],eax
 004E3DBD    mov         eax,dword ptr [ebp-4]
 004E3DC0    cmp         byte ptr [eax+561],0
>004E3DC7    jne         004E3DDB
 004E3DC9    mov         eax,dword ptr [ebp-4]
 004E3DCC    mov         eax,dword ptr [eax+618]
 004E3DD2    call        004EB538
 004E3DD7    test        al,al
>004E3DD9    jne         004E3DDF
 004E3DDB    xor         eax,eax
>004E3DDD    jmp         004E3DE1
 004E3DDF    mov         al,1
 004E3DE1    mov         byte ptr [ebp-5],al
 004E3DE4    mov         al,byte ptr [ebp-5]
 004E3DE7    pop         ecx
 004E3DE8    pop         ecx
 004E3DE9    pop         ebp
 004E3DEA    ret
end;*}

//004E3DEC
{*function sub_004E3DEC(?:TCustomMPHexEditor):?;
begin
 004E3DEC    push        ebp
 004E3DED    mov         ebp,esp
 004E3DEF    add         esp,0FFFFFFF8
 004E3DF2    mov         dword ptr [ebp-4],eax
 004E3DF5    mov         eax,dword ptr [ebp-4]
 004E3DF8    cmp         dword ptr [eax+550],0FFFFFFFF
>004E3DFF    jne         004E3E20
 004E3E01    mov         eax,dword ptr [ebp-4]
 004E3E04    mov         ecx,dword ptr [eax+22C]
 004E3E0A    mov         eax,dword ptr [ebp-4]
 004E3E0D    mov         edx,dword ptr [eax+228]
 004E3E13    mov         eax,dword ptr [ebp-4]
 004E3E16    call        004E1288
 004E3E1B    mov         dword ptr [ebp-8],eax
>004E3E1E    jmp         004E3E2C
 004E3E20    mov         eax,dword ptr [ebp-4]
 004E3E23    mov         eax,dword ptr [eax+550]
 004E3E29    mov         dword ptr [ebp-8],eax
 004E3E2C    mov         eax,dword ptr [ebp-8]
 004E3E2F    pop         ecx
 004E3E30    pop         ecx
 004E3E31    pop         ebp
 004E3E32    ret
end;*}

//004E3E34
{*function sub_004E3E34(?:TCustomMPHexEditor):?;
begin
 004E3E34    push        ebp
 004E3E35    mov         ebp,esp
 004E3E37    add         esp,0FFFFFFF8
 004E3E3A    mov         dword ptr [ebp-4],eax
 004E3E3D    mov         eax,dword ptr [ebp-4]
 004E3E40    cmp         dword ptr [eax+550],0FFFFFFFF
>004E3E47    jne         004E3E68
 004E3E49    mov         eax,dword ptr [ebp-4]
 004E3E4C    mov         ecx,dword ptr [eax+22C]
 004E3E52    mov         eax,dword ptr [ebp-4]
 004E3E55    mov         edx,dword ptr [eax+228]
 004E3E5B    mov         eax,dword ptr [ebp-4]
 004E3E5E    call        004E1288
 004E3E63    mov         dword ptr [ebp-8],eax
>004E3E66    jmp         004E3E94
 004E3E68    mov         eax,dword ptr [ebp-4]
 004E3E6B    mov         eax,dword ptr [eax+554]
 004E3E71    mov         dword ptr [ebp-8],eax
 004E3E74    mov         eax,dword ptr [ebp-4]
 004E3E77    mov         eax,dword ptr [eax+550]
 004E3E7D    mov         edx,dword ptr [ebp-4]
 004E3E80    cmp         eax,dword ptr [edx+554]
>004E3E86    jne         004E3E94
 004E3E88    mov         eax,dword ptr [ebp-4]
 004E3E8B    mov         eax,dword ptr [eax+54C]
 004E3E91    mov         dword ptr [ebp-8],eax
 004E3E94    mov         eax,dword ptr [ebp-8]
 004E3E97    pop         ecx
 004E3E98    pop         ecx
 004E3E99    pop         ebp
 004E3E9A    ret
end;*}

//004E3E9C
{*procedure sub_004E3E9C(?:TCustomMPHexEditor; ?:?);
begin
 004E3E9C    push        ebp
 004E3E9D    mov         ebp,esp
 004E3E9F    add         esp,0FFFFFFEC
 004E3EA2    xor         ecx,ecx
 004E3EA4    mov         dword ptr [ebp-14],ecx
 004E3EA7    mov         dword ptr [ebp-8],edx
 004E3EAA    mov         dword ptr [ebp-4],eax
 004E3EAD    xor         eax,eax
 004E3EAF    push        ebp
 004E3EB0    push        4E3F3C
 004E3EB5    push        dword ptr fs:[eax]
 004E3EB8    mov         dword ptr fs:[eax],esp
 004E3EBB    cmp         dword ptr [ebp-8],0
>004E3EBF    jl          004E3ECE
 004E3EC1    mov         eax,dword ptr [ebp-4]
 004E3EC4    call        004E0588
 004E3EC9    cmp         eax,dword ptr [ebp-8]
>004E3ECC    jg          004E3EF1
 004E3ECE    lea         edx,[ebp-14]
 004E3ED1    mov         eax,4DF30C;^HInstance:LongWord
 004E3ED6    call        LoadResString
 004E3EDB    mov         ecx,dword ptr [ebp-14]
 004E3EDE    mov         dl,1
 004E3EE0    mov         eax,[004DE8FC];EMPHexEditor
 004E3EE5    call        Exception.Create;EMPHexEditor.Create
 004E3EEA    call        @RaiseExcept
>004E3EEF    jmp         004E3F26
 004E3EF1    mov         dl,1
 004E3EF3    mov         eax,dword ptr [ebp-4]
 004E3EF6    call        004E31CC
 004E3EFB    lea         eax,[ebp-10]
 004E3EFE    push        eax
 004E3EFF    mov         eax,dword ptr [ebp-4]
 004E3F02    call        004E409C
 004E3F07    mov         ecx,eax
 004E3F09    mov         edx,dword ptr [ebp-8]
 004E3F0C    mov         eax,dword ptr [ebp-4]
 004E3F0F    call        004E1344
 004E3F14    push        1
 004E3F16    push        1
 004E3F18    mov         ecx,dword ptr [ebp-0C]
 004E3F1B    mov         edx,dword ptr [ebp-10]
 004E3F1E    mov         eax,dword ptr [ebp-4]
 004E3F21    call        004D8CCC
 004E3F26    xor         eax,eax
 004E3F28    pop         edx
 004E3F29    pop         ecx
 004E3F2A    pop         ecx
 004E3F2B    mov         dword ptr fs:[eax],edx
 004E3F2E    push        4E3F43
 004E3F33    lea         eax,[ebp-14]
 004E3F36    call        @LStrClr
 004E3F3B    ret
>004E3F3C    jmp         @HandleFinally
>004E3F41    jmp         004E3F33
 004E3F43    mov         esp,ebp
 004E3F45    pop         ebp
 004E3F46    ret
end;*}

//004E3F48
{*procedure sub_004E3F48(?:TCustomMPHexEditor; ?:?);
begin
 004E3F48    push        ebp
 004E3F49    mov         ebp,esp
 004E3F4B    add         esp,0FFFFFFEC
 004E3F4E    xor         ecx,ecx
 004E3F50    mov         dword ptr [ebp-14],ecx
 004E3F53    mov         dword ptr [ebp-8],edx
 004E3F56    mov         dword ptr [ebp-4],eax
 004E3F59    xor         eax,eax
 004E3F5B    push        ebp
 004E3F5C    push        4E4009
 004E3F61    push        dword ptr fs:[eax]
 004E3F64    mov         dword ptr fs:[eax],esp
 004E3F67    cmp         dword ptr [ebp-8],0FFFFFFFF
>004E3F6B    jl          004E3F7A
 004E3F6D    mov         eax,dword ptr [ebp-4]
 004E3F70    call        004E0588
 004E3F75    cmp         eax,dword ptr [ebp-8]
>004E3F78    jg          004E3F9D
 004E3F7A    lea         edx,[ebp-14]
 004E3F7D    mov         eax,4DF314;^HInstance:LongWord
 004E3F82    call        LoadResString
 004E3F87    mov         ecx,dword ptr [ebp-14]
 004E3F8A    mov         dl,1
 004E3F8C    mov         eax,[004DE8FC];EMPHexEditor
 004E3F91    call        Exception.Create;EMPHexEditor.Create
 004E3F96    call        @RaiseExcept
>004E3F9B    jmp         004E3FF3
 004E3F9D    mov         dl,1
 004E3F9F    mov         eax,dword ptr [ebp-4]
 004E3FA2    call        004E31CC
 004E3FA7    cmp         dword ptr [ebp-8],0FFFFFFFF
>004E3FAB    jle         004E3FF3
 004E3FAD    lea         eax,[ebp-10]
 004E3FB0    push        eax
 004E3FB1    mov         eax,dword ptr [ebp-4]
 004E3FB4    call        004E409C
 004E3FB9    mov         ecx,eax
 004E3FBB    mov         edx,dword ptr [ebp-8]
 004E3FBE    mov         eax,dword ptr [ebp-4]
 004E3FC1    call        004E1344
 004E3FC6    mov         eax,dword ptr [ebp-10]
 004E3FC9    push        eax
 004E3FCA    mov         eax,dword ptr [ebp-0C]
 004E3FCD    push        eax
 004E3FCE    mov         eax,dword ptr [ebp-4]
 004E3FD1    mov         ecx,dword ptr [eax+22C]
 004E3FD7    mov         eax,dword ptr [ebp-4]
 004E3FDA    mov         edx,dword ptr [eax+228]
 004E3FE0    mov         eax,dword ptr [ebp-4]
 004E3FE3    call        004E315C
 004E3FE8    mov         eax,dword ptr [ebp-4]
 004E3FEB    mov         edx,dword ptr [eax]
 004E3FED    call        dword ptr [edx+0E8]
 004E3FF3    xor         eax,eax
 004E3FF5    pop         edx
 004E3FF6    pop         ecx
 004E3FF7    pop         ecx
 004E3FF8    mov         dword ptr fs:[eax],edx
 004E3FFB    push        4E4010
 004E4000    lea         eax,[ebp-14]
 004E4003    call        @LStrClr
 004E4008    ret
>004E4009    jmp         @HandleFinally
>004E400E    jmp         004E4000
 004E4010    mov         esp,ebp
 004E4012    pop         ebp
 004E4013    ret
end;*}

//004E4014
{*procedure sub_004E4014(?:TMPHexEditorEx; ?:?);
begin
 004E4014    push        ebp
 004E4015    mov         ebp,esp
 004E4017    add         esp,0FFFFFFF8
 004E401A    mov         dword ptr [ebp-8],edx
 004E401D    mov         dword ptr [ebp-4],eax
 004E4020    mov         eax,dword ptr [ebp-4]
 004E4023    call        004E0588
 004E4028    dec         eax
 004E4029    push        eax
 004E402A    mov         eax,dword ptr [ebp-4]
 004E402D    call        004E3DEC
 004E4032    add         eax,dword ptr [ebp-8]
 004E4035    dec         eax
 004E4036    pop         edx
 004E4037    call        004DF5BC
 004E403C    mov         edx,eax
 004E403E    mov         eax,dword ptr [ebp-4]
 004E4041    call        004E3F48
 004E4046    pop         ecx
 004E4047    pop         ecx
 004E4048    pop         ebp
 004E4049    ret
end;*}

//004E404C
{*procedure sub_004E404C(?:?; ?:?);
begin
 004E404C    push        ebp
 004E404D    mov         ebp,esp
 004E404F    add         esp,0FFFFFFF8
 004E4052    mov         byte ptr [ebp-5],dl
 004E4055    mov         dword ptr [ebp-4],eax
 004E4058    mov         eax,dword ptr [ebp-4]
 004E405B    call        004E0588
 004E4060    dec         eax
>004E4061    jl          004E4098
 004E4063    mov         eax,dword ptr [ebp-4]
 004E4066    call        004E409C
 004E406B    cmp         al,byte ptr [ebp-5]
>004E406E    je          004E4098
 004E4070    push        1
 004E4072    push        1
 004E4074    mov         eax,dword ptr [ebp-4]
 004E4077    mov         edx,dword ptr [eax+228]
 004E407D    mov         eax,dword ptr [ebp-4]
 004E4080    call        004E13EC
 004E4085    mov         edx,eax
 004E4087    mov         eax,dword ptr [ebp-4]
 004E408A    mov         ecx,dword ptr [eax+22C]
 004E4090    mov         eax,dword ptr [ebp-4]
 004E4093    call        004D8CCC
 004E4098    pop         ecx
 004E4099    pop         ecx
 004E409A    pop         ebp
 004E409B    ret
end;*}

//004E409C
{*function sub_004E409C(?:TCustomMPHexEditor):?;
begin
 004E409C    push        ebp
 004E409D    mov         ebp,esp
 004E409F    add         esp,0FFFFFFF8
 004E40A2    mov         dword ptr [ebp-4],eax
 004E40A5    mov         byte ptr [ebp-5],0
 004E40A9    mov         eax,dword ptr [ebp-4]
 004E40AC    call        004E0588
 004E40B1    dec         eax
>004E40B2    jl          004E40DA
 004E40B4    mov         eax,dword ptr [ebp-4]
 004E40B7    mov         ecx,dword ptr [eax+22C];TCustomMPHexEditor.FCurrent:Longint
 004E40BD    mov         eax,dword ptr [ebp-4]
 004E40C0    mov         edx,dword ptr [eax+228];TCustomMPHexEditor.FCurrent:TGridCoord
 004E40C6    mov         eax,dword ptr [ebp-4]
 004E40C9    call        004E1288
 004E40CE    mov         eax,dword ptr [ebp-4]
 004E40D1    mov         al,byte ptr [eax+4F0];TCustomMPHexEditor.?f4F0:byte
 004E40D7    mov         byte ptr [ebp-5],al
 004E40DA    mov         al,byte ptr [ebp-5]
 004E40DD    pop         ecx
 004E40DE    pop         ecx
 004E40DF    pop         ebp
 004E40E0    ret
end;*}

//004E40E4
procedure sub_004E40E4;
begin
{*
 004E40E4    push        ebp
 004E40E5    mov         ebp,esp
 004E40E7    add         esp,0FFFFFFF8
 004E40EA    xor         edx,edx
 004E40EC    mov         dword ptr [ebp-8],edx
 004E40EF    mov         dword ptr [ebp-4],eax
 004E40F2    xor         eax,eax
 004E40F4    push        ebp
 004E40F5    push        4E4136
 004E40FA    push        dword ptr fs:[eax]
 004E40FD    mov         dword ptr fs:[eax],esp
 004E4100    mov         eax,dword ptr [ebp-4]
 004E4103    call        004864B8
 004E4108    lea         edx,[ebp-8]
 004E410B    mov         eax,4DF394;^HInstance:LongWord
 004E4110    call        LoadResString
 004E4115    mov         edx,dword ptr [ebp-8]
 004E4118    mov         eax,dword ptr [ebp-4]
 004E411B    call        004E05A8
 004E4120    xor         eax,eax
 004E4122    pop         edx
 004E4123    pop         ecx
 004E4124    pop         ecx
 004E4125    mov         dword ptr fs:[eax],edx
 004E4128    push        4E413D
 004E412D    lea         eax,[ebp-8]
 004E4130    call        @LStrClr
 004E4135    ret
>004E4136    jmp         @HandleFinally
>004E413B    jmp         004E412D
 004E413D    pop         ecx
 004E413E    pop         ecx
 004E413F    pop         ebp
 004E4140    ret
*}
end;

//004E4144
procedure TCustomMPHexEditor.CreateWnd;
begin
{*
 004E4144    push        ebp
 004E4145    mov         ebp,esp
 004E4147    add         esp,0FFFFFFF8
 004E414A    xor         edx,edx
 004E414C    mov         dword ptr [ebp-8],edx
 004E414F    mov         dword ptr [ebp-4],eax
 004E4152    xor         eax,eax
 004E4154    push        ebp
 004E4155    push        4E41B4
 004E415A    push        dword ptr fs:[eax]
 004E415D    mov         dword ptr fs:[eax],esp
 004E4160    mov         eax,dword ptr [ebp-4]
 004E4163    call        TWinControl.CreateWnd
 004E4168    mov         eax,dword ptr [ebp-4]
 004E416B    test        byte ptr [eax+1C],10;TCustomMPHexEditor.FComponentState:TComponentState
>004E416F    jne         004E4186
 004E4171    mov         eax,dword ptr [ebp-4]
 004E4174    mov         eax,dword ptr [eax+4F4];TCustomMPHexEditor.?f4F4:String
 004E417A    mov         edx,4E41C8;'---'
 004E417F    call        @LStrCmp
>004E4184    jne         004E419E
 004E4186    lea         edx,[ebp-8]
 004E4189    mov         eax,4DF394;^HInstance:LongWord
 004E418E    call        LoadResString
 004E4193    mov         edx,dword ptr [ebp-8]
 004E4196    mov         eax,dword ptr [ebp-4]
 004E4199    call        004E05A8
 004E419E    xor         eax,eax
 004E41A0    pop         edx
 004E41A1    pop         ecx
 004E41A2    pop         ecx
 004E41A3    mov         dword ptr fs:[eax],edx
 004E41A6    push        4E41BB
 004E41AB    lea         eax,[ebp-8]
 004E41AE    call        @LStrClr
 004E41B3    ret
>004E41B4    jmp         @HandleFinally
>004E41B9    jmp         004E41AB
 004E41BB    pop         ecx
 004E41BC    pop         ecx
 004E41BD    pop         ebp
 004E41BE    ret
*}
end;

//004E41CC
{*procedure TCustomMPHexEditor.WMSetFocus(?:?);
begin
 004E41CC    push        ebp
 004E41CD    mov         ebp,esp
 004E41CF    add         esp,0FFFFFFF8
 004E41D2    mov         dword ptr [ebp-8],edx
 004E41D5    mov         dword ptr [ebp-4],eax
 004E41D8    mov         edx,dword ptr [ebp-8]
 004E41DB    mov         eax,dword ptr [ebp-4]
 004E41DE    call        TCustomGrid.WMSetFocus
 004E41E3    mov         eax,dword ptr [ebp-4]
 004E41E6    call        004E4B7C
 004E41EB    mov         eax,dword ptr [ebp-4]
 004E41EE    call        004E9B18
 004E41F3    mov         eax,dword ptr [ebp-4]
 004E41F6    mov         edx,dword ptr [eax]
 004E41F8    call        dword ptr [edx+7C];TCustomMPHexEditor.sub_0048BE68
 004E41FB    pop         ecx
 004E41FC    pop         ecx
 004E41FD    pop         ebp
 004E41FE    ret
end;*}

//004E4200
{*procedure TCustomMPHexEditor.WMKillFocus(?:?);
begin
 004E4200    push        ebp
 004E4201    mov         ebp,esp
 004E4203    add         esp,0FFFFFFF8
 004E4206    mov         dword ptr [ebp-8],edx
 004E4209    mov         dword ptr [ebp-4],eax
 004E420C    mov         edx,dword ptr [ebp-8]
 004E420F    mov         eax,dword ptr [ebp-4]
 004E4212    call        TCustomGrid.WMKillFocus
 004E4217    mov         eax,dword ptr [ebp-4]
 004E421A    call        TWinControl.GetHandle
 004E421F    push        eax
 004E4220    call        user32.HideCaret
 004E4225    call        user32.DestroyCaret
 004E422A    mov         eax,dword ptr [ebp-4]
 004E422D    mov         byte ptr [eax+614],0;TCustomMPHexEditor.?f614:byte
 004E4234    mov         eax,dword ptr [ebp-4]
 004E4237    mov         edx,dword ptr [eax]
 004E4239    call        dword ptr [edx+7C];TCustomMPHexEditor.sub_0048BE68
 004E423C    pop         ecx
 004E423D    pop         ecx
 004E423E    pop         ebp
 004E423F    ret
end;*}

//004E4240
{*procedure TCustomMPHexEditor.sub_004E4240(?:?);
begin
 004E4240    push        ebp
 004E4241    mov         ebp,esp
 004E4243    add         esp,0FFFFFFF8
 004E4246    mov         dword ptr [ebp-8],edx
 004E4249    mov         dword ptr [ebp-4],eax
 004E424C    mov         eax,dword ptr [ebp-8]
 004E424F    cmp         dword ptr [eax+4],7
>004E4253    jne         004E425D
 004E4255    mov         eax,dword ptr [ebp-4]
 004E4258    call        004E9B18
 004E425D    pop         ecx
 004E425E    pop         ecx
 004E425F    pop         ebp
 004E4260    ret
end;*}

//004E4264
procedure TMPHexEditorEx.SetTranslation(Value:TMPHTranslationKind);
begin
{*
 004E4264    push        ebp
 004E4265    mov         ebp,esp
 004E4267    add         esp,0FFFFFFF4
 004E426A    xor         ecx,ecx
 004E426C    mov         dword ptr [ebp-0C],ecx
 004E426F    mov         byte ptr [ebp-5],dl
 004E4272    mov         dword ptr [ebp-4],eax
 004E4275    xor         eax,eax
 004E4277    push        ebp
 004E4278    push        4E42EE
 004E427D    push        dword ptr fs:[eax]
 004E4280    mov         dword ptr fs:[eax],esp
 004E4283    mov         eax,dword ptr [ebp-4]
 004E4286    mov         al,byte ptr [eax+55C];TMPHexEditorEx.?f55C:byte
 004E428C    cmp         al,byte ptr [ebp-5]
>004E428F    je          004E42D8
 004E4291    cmp         byte ptr [ebp-5],0
>004E4295    je          004E42C4
 004E4297    mov         eax,dword ptr [ebp-4]
 004E429A    cmp         byte ptr [eax+61C],0;TMPHexEditorEx.?f61C:byte
>004E42A1    je          004E42C4
 004E42A3    lea         edx,[ebp-0C]
 004E42A6    mov         eax,4DF374;^HInstance:LongWord
 004E42AB    call        LoadResString
 004E42B0    mov         ecx,dword ptr [ebp-0C]
 004E42B3    mov         dl,1
 004E42B5    mov         eax,[004DE8FC];EMPHexEditor
 004E42BA    call        Exception.Create;EMPHexEditor.Create
 004E42BF    call        @RaiseExcept
 004E42C4    mov         al,byte ptr [ebp-5]
 004E42C7    mov         edx,dword ptr [ebp-4]
 004E42CA    mov         byte ptr [edx+55C],al;TMPHexEditorEx.?f55C:byte
 004E42D0    mov         eax,dword ptr [ebp-4]
 004E42D3    mov         edx,dword ptr [eax]
 004E42D5    call        dword ptr [edx+7C];TMPHexEditorEx.sub_0048BE68
 004E42D8    xor         eax,eax
 004E42DA    pop         edx
 004E42DB    pop         ecx
 004E42DC    pop         ecx
 004E42DD    mov         dword ptr fs:[eax],edx
 004E42E0    push        4E42F5
 004E42E5    lea         eax,[ebp-0C]
 004E42E8    call        @LStrClr
 004E42ED    ret
>004E42EE    jmp         @HandleFinally
>004E42F3    jmp         004E42E5
 004E42F5    mov         esp,ebp
 004E42F7    pop         ebp
 004E42F8    ret
*}
end;

//004E42FC
{*procedure sub_004E42FC(?:TMPHexEditorEx; ?:?);
begin
 004E42FC    push        ebp
 004E42FD    mov         ebp,esp
 004E42FF    add         esp,0FFFFFFF8
 004E4302    mov         byte ptr [ebp-5],dl
 004E4305    mov         dword ptr [ebp-4],eax
 004E4308    mov         al,byte ptr [ebp-5]
 004E430B    mov         edx,dword ptr [ebp-4]
 004E430E    mov         byte ptr [edx+67D],al
 004E4314    cmp         byte ptr [ebp-5],0
>004E4318    jne         004E433A
 004E431A    mov         eax,dword ptr [ebp-4]
 004E431D    call        004E3D60
 004E4322    xor         edx,edx
 004E4324    mov         eax,dword ptr [ebp-4]
 004E4327    mov         eax,dword ptr [eax+4F8]
 004E432D    call        TBits.SetSize
 004E4332    mov         eax,dword ptr [ebp-4]
 004E4335    mov         edx,dword ptr [eax]
 004E4337    call        dword ptr [edx+7C]
 004E433A    pop         ecx
 004E433B    pop         ecx
 004E433C    pop         ebp
 004E433D    ret
end;*}

//004E4340
procedure TMPHexEditorEx.SetBytesPerRow(Value:Integer);
begin
{*
 004E4340    push        ebp
 004E4341    mov         ebp,esp
 004E4343    add         esp,0FFFFFFCC
 004E4346    xor         ecx,ecx
 004E4348    mov         dword ptr [ebp-2C],ecx
 004E434B    mov         dword ptr [ebp-8],edx
 004E434E    mov         dword ptr [ebp-4],eax
 004E4351    xor         eax,eax
 004E4353    push        ebp
 004E4354    push        4E4534
 004E4359    push        dword ptr fs:[eax]
 004E435C    mov         dword ptr fs:[eax],esp
 004E435F    mov         eax,dword ptr [ebp-4]
 004E4362    cmp         byte ptr [eax+598],0;TMPHexEditorEx.?f598:byte
>004E4369    je          004E437B
 004E436B    mov         eax,dword ptr [ebp-4]
 004E436E    cmp         byte ptr [eax+599],0;TMPHexEditorEx.?f599:byte
>004E4375    je          004E451E
 004E437B    cmp         dword ptr [ebp-8],1
>004E437F    jl          004E43A9
 004E4381    cmp         dword ptr [ebp-8],100
>004E4388    jg          004E43A9
 004E438A    mov         eax,dword ptr [ebp-4]
 004E438D    cmp         byte ptr [eax+61C],0;TMPHexEditorEx.?f61C:byte
>004E4394    je          004E43CF
 004E4396    mov         eax,dword ptr [ebp-8]
 004E4399    and         eax,80000001
>004E439E    jns         004E43A5
 004E43A0    dec         eax
 004E43A1    or          eax,0FFFFFFFE
 004E43A4    inc         eax
 004E43A5    test        eax,eax
>004E43A7    je          004E43CF
 004E43A9    lea         edx,[ebp-2C]
 004E43AC    mov         eax,4DF31C;^HInstance:LongWord
 004E43B1    call        LoadResString
 004E43B6    mov         ecx,dword ptr [ebp-2C]
 004E43B9    mov         dl,1
 004E43BB    mov         eax,[004DE8FC];EMPHexEditor
 004E43C0    call        Exception.Create;EMPHexEditor.Create
 004E43C5    call        @RaiseExcept
>004E43CA    jmp         004E451E
 004E43CF    mov         eax,dword ptr [ebp-4]
 004E43D2    mov         eax,dword ptr [eax+4D4];TMPHexEditorEx.?f4D4:Integer
 004E43D8    cmp         eax,dword ptr [ebp-8]
>004E43DB    je          004E451E
 004E43E1    mov         eax,dword ptr [ebp-4]
 004E43E4    add         eax,5A0;TMPHexEditorEx.?f5A0:TMPHOffsetFormat
 004E43E9    mov         dword ptr [ebp-20],eax
 004E43EC    mov         eax,dword ptr [ebp-20]
 004E43EF    test        byte ptr [eax+10],2
>004E43F3    je          004E43FE
 004E43F5    mov         al,byte ptr [ebp-8]
 004E43F8    mov         edx,dword ptr [ebp-20]
 004E43FB    mov         byte ptr [edx+12],al
 004E43FE    mov         eax,dword ptr [ebp-4]
 004E4401    mov         eax,dword ptr [eax+550];TMPHexEditorEx.?f550:dword
 004E4407    mov         dword ptr [ebp-10],eax
 004E440A    mov         eax,dword ptr [ebp-4]
 004E440D    mov         eax,dword ptr [eax+54C];TMPHexEditorEx.?f54C:dword
 004E4413    mov         dword ptr [ebp-14],eax
 004E4416    mov         eax,dword ptr [ebp-4]
 004E4419    mov         eax,dword ptr [eax+554];TMPHexEditorEx.?f554:dword
 004E441F    mov         dword ptr [ebp-18],eax
 004E4422    mov         eax,dword ptr [ebp-4]
 004E4425    mov         ecx,dword ptr [eax+22C];TMPHexEditorEx.FCurrent:Longint
 004E442B    mov         eax,dword ptr [ebp-4]
 004E442E    mov         edx,dword ptr [eax+228];TMPHexEditorEx.FCurrent:TGridCoord
 004E4434    mov         eax,dword ptr [ebp-4]
 004E4437    call        004E1288
 004E443C    mov         dword ptr [ebp-0C],eax
 004E443F    mov         eax,dword ptr [ebp-4]
 004E4442    mov         al,byte ptr [eax+4F0];TMPHexEditorEx.?f4F0:byte
 004E4448    mov         byte ptr [ebp-19],al
 004E444B    lea         eax,[ebp-34]
 004E444E    push        eax
 004E444F    mov         cl,byte ptr [ebp-19]
 004E4452    mov         edx,dword ptr [ebp-0C]
 004E4455    mov         eax,dword ptr [ebp-4]
 004E4458    call        004E1344
 004E445D    mov         eax,dword ptr [ebp-34]
 004E4460    mov         edx,dword ptr [ebp-4]
 004E4463    cmp         eax,dword ptr [edx+228];TMPHexEditorEx.FCurrent:TGridCoord
 004E4469    setne       byte ptr [ebp-1A]
 004E446D    mov         eax,dword ptr [ebp-8]
 004E4470    mov         edx,dword ptr [ebp-4]
 004E4473    mov         dword ptr [edx+4D4],eax;TMPHexEditorEx.?f4D4:Integer
 004E4479    mov         eax,dword ptr [ebp-8]
 004E447C    add         eax,eax
 004E447E    mov         edx,dword ptr [ebp-4]
 004E4481    mov         dword ptr [edx+4DC],eax;TMPHexEditorEx.?f4DC:dword
 004E4487    mov         eax,dword ptr [ebp-4]
 004E448A    mov         eax,dword ptr [eax+4DC];TMPHexEditorEx.?f4DC:dword
 004E4490    add         eax,2
 004E4493    dec         eax
 004E4494    mov         edx,dword ptr [ebp-4]
 004E4497    mov         dword ptr [edx+29C],eax;TMPHexEditorEx.?f29C:dword
 004E449D    mov         eax,dword ptr [ebp-4]
 004E44A0    call        004E89EC
 004E44A5    mov         eax,dword ptr [ebp-4]
 004E44A8    call        004E0AC0
 004E44AD    mov         eax,dword ptr [ebp-4]
 004E44B0    call        004E0588
 004E44B5    cmp         eax,dword ptr [ebp-0C]
>004E44B8    jle         004E44D3
 004E44BA    mov         eax,dword ptr [ebp-4]
 004E44BD    call        TMPHexEditorEx.GetInsertMode
 004E44C2    test        al,al
>004E44C4    je          004E44DF
 004E44C6    mov         eax,dword ptr [ebp-4]
 004E44C9    call        004E0588
 004E44CE    cmp         eax,dword ptr [ebp-0C]
>004E44D1    jge         004E44DF
 004E44D3    mov         eax,dword ptr [ebp-4]
 004E44D6    call        004E0588
 004E44DB    dec         eax
 004E44DC    mov         dword ptr [ebp-0C],eax
 004E44DF    lea         eax,[ebp-28]
 004E44E2    push        eax
 004E44E3    mov         cl,byte ptr [ebp-19]
 004E44E6    mov         edx,dword ptr [ebp-0C]
 004E44E9    mov         eax,dword ptr [ebp-4]
 004E44EC    call        004E1344
 004E44F1    cmp         byte ptr [ebp-1A],0
>004E44F5    je          004E44FA
 004E44F7    inc         dword ptr [ebp-28]
 004E44FA    push        1
 004E44FC    push        1
 004E44FE    mov         ecx,dword ptr [ebp-24]
 004E4501    mov         edx,dword ptr [ebp-28]
 004E4504    mov         eax,dword ptr [ebp-4]
 004E4507    call        004D8CCC
 004E450C    mov         eax,dword ptr [ebp-18]
 004E450F    push        eax
 004E4510    mov         ecx,dword ptr [ebp-14]
 004E4513    mov         edx,dword ptr [ebp-10]
 004E4516    mov         eax,dword ptr [ebp-4]
 004E4519    call        004E6110
 004E451E    xor         eax,eax
 004E4520    pop         edx
 004E4521    pop         ecx
 004E4522    pop         ecx
 004E4523    mov         dword ptr fs:[eax],edx
 004E4526    push        4E453B
 004E452B    lea         eax,[ebp-2C]
 004E452E    call        @LStrClr
 004E4533    ret
>004E4534    jmp         @HandleFinally
>004E4539    jmp         004E452B
 004E453B    mov         esp,ebp
 004E453D    pop         ebp
 004E453E    ret
*}
end;

//004E4540
procedure sub_004E4540(?:TCustomMPHexEditor; ?:Byte; ?:dword);
begin
{*
 004E4540    push        ebp
 004E4541    mov         ebp,esp
 004E4543    add         esp,0FFFFFFF0
 004E4546    push        ebx
 004E4547    mov         dword ptr [ebp-0C],ecx
 004E454A    mov         dword ptr [ebp-8],edx
 004E454D    mov         dword ptr [ebp-4],eax
 004E4550    mov         eax,dword ptr [ebp-4]
 004E4553    call        004E0588
 004E4558    test        eax,eax
>004E455A    jne         004E457E
 004E455C    push        0
 004E455E    push        0
 004E4560    mov         eax,dword ptr [ebp-4]
 004E4563    mov         eax,dword ptr [eax+4E0]
 004E4569    call        TStream.SetPosition
 004E456E    xor         edx,edx
 004E4570    mov         eax,dword ptr [ebp-4]
 004E4573    mov         eax,dword ptr [eax+4F8]
 004E4579    call        TBits.SetSize
 004E457E    mov         eax,dword ptr [ebp-4]
 004E4581    call        004E0588
 004E4586    mov         dword ptr [ebp-10],eax
 004E4589    mov         eax,dword ptr [ebp-10]
 004E458C    add         eax,dword ptr [ebp-0C]
 004E458F    cdq
 004E4590    push        edx
 004E4591    push        eax
 004E4592    mov         eax,dword ptr [ebp-4]
 004E4595    mov         eax,dword ptr [eax+4E0]
 004E459B    call        004235FC
 004E45A0    mov         eax,dword ptr [ebp-0C]
 004E45A3    push        eax
 004E45A4    mov         edx,dword ptr [ebp-8]
 004E45A7    mov         ecx,dword ptr [ebp-10]
 004E45AA    mov         eax,dword ptr [ebp-4]
 004E45AD    mov         ebx,dword ptr [eax]
 004E45AF    call        dword ptr [ebx+10C]
 004E45B5    mov         eax,dword ptr [ebp-4]
 004E45B8    call        004E0AC0
 004E45BD    pop         ebx
 004E45BE    mov         esp,ebp
 004E45C0    pop         ebp
 004E45C1    ret
*}
end;

//004E45C4
{*procedure sub_004E45C4(?:TCustomMPHexEditor; ?:Byte; ?:dword; ?:?);
begin
 004E45C4    push        ebp
 004E45C5    mov         ebp,esp
 004E45C7    add         esp,0FFFFFFF0
 004E45CA    push        ebx
 004E45CB    mov         dword ptr [ebp-0C],ecx
 004E45CE    mov         dword ptr [ebp-8],edx
 004E45D1    mov         dword ptr [ebp-4],eax
 004E45D4    mov         eax,dword ptr [ebp-4]
 004E45D7    call        004E0588
 004E45DC    test        eax,eax
>004E45DE    jne         004E4602
 004E45E0    push        0
 004E45E2    push        0
 004E45E4    mov         eax,dword ptr [ebp-4]
 004E45E7    mov         eax,dword ptr [eax+4E0]
 004E45ED    call        TStream.SetPosition
 004E45F2    xor         edx,edx
 004E45F4    mov         eax,dword ptr [ebp-4]
 004E45F7    mov         eax,dword ptr [eax+4F8]
 004E45FD    call        TBits.SetSize
 004E4602    mov         eax,dword ptr [ebp-4]
 004E4605    call        004E0588
 004E460A    mov         dword ptr [ebp-10],eax
 004E460D    mov         eax,dword ptr [ebp-10]
 004E4610    add         eax,dword ptr [ebp-0C]
 004E4613    cdq
 004E4614    push        edx
 004E4615    push        eax
 004E4616    mov         eax,dword ptr [ebp-4]
 004E4619    mov         eax,dword ptr [eax+4E0]
 004E461F    call        004235FC
 004E4624    mov         eax,dword ptr [ebp+8]
 004E4627    cmp         eax,dword ptr [ebp-10]
>004E462A    jge         004E464C
 004E462C    mov         eax,dword ptr [ebp-4]
 004E462F    call        004E0588
 004E4634    sub         eax,dword ptr [ebp+8]
 004E4637    sub         eax,dword ptr [ebp-0C]
 004E463A    push        eax
 004E463B    mov         ecx,dword ptr [ebp+8]
 004E463E    add         ecx,dword ptr [ebp-0C]
 004E4641    mov         edx,dword ptr [ebp+8]
 004E4644    mov         eax,dword ptr [ebp-4]
 004E4647    call        004E4A44
 004E464C    cmp         dword ptr [ebp-8],0
>004E4650    je          004E4667
 004E4652    mov         eax,dword ptr [ebp-0C]
 004E4655    push        eax
 004E4656    mov         edx,dword ptr [ebp-8]
 004E4659    mov         ecx,dword ptr [ebp+8]
 004E465C    mov         eax,dword ptr [ebp-4]
 004E465F    mov         ebx,dword ptr [eax]
 004E4661    call        dword ptr [ebx+10C]
 004E4667    mov         eax,dword ptr [ebp-4]
 004E466A    call        004E0AC0
 004E466F    pop         ebx
 004E4670    mov         esp,ebp
 004E4672    pop         ebp
 004E4673    ret         4
end;*}

//004E4678
{*procedure sub_004E4678(?:TCustomMPHexEditor; ?:Byte; ?:dword; ?:?; ?:?; ?:?);
begin
 004E4678    push        ebp
 004E4679    mov         ebp,esp
 004E467B    add         esp,0FFFFFFEC
 004E467E    mov         dword ptr [ebp-0C],ecx
 004E4681    mov         dword ptr [ebp-8],edx
 004E4684    mov         dword ptr [ebp-4],eax
 004E4687    mov         eax,dword ptr [ebp-0C]
 004E468A    push        eax
 004E468B    push        0
 004E468D    mov         eax,dword ptr [ebp+0C]
 004E4690    push        eax
 004E4691    mov         ecx,dword ptr [ebp+10]
 004E4694    mov         dl,2
 004E4696    mov         eax,dword ptr [ebp-4]
 004E4699    call        004E3CA4
 004E469E    mov         eax,dword ptr [ebp+10]
 004E46A1    push        eax
 004E46A2    mov         ecx,dword ptr [ebp-0C]
 004E46A5    mov         edx,dword ptr [ebp-8]
 004E46A8    mov         eax,dword ptr [ebp-4]
 004E46AB    call        004E45C4
 004E46B0    mov         eax,dword ptr [ebp-4]
 004E46B3    mov         eax,dword ptr [eax+4F8];TCustomMPHexEditor.?f4F8:TBits
 004E46B9    mov         eax,dword ptr [eax+4];TBits.FSize:Integer
 004E46BC    cmp         eax,dword ptr [ebp+10]
>004E46BF    jl          004E46D2
 004E46C1    mov         edx,dword ptr [ebp+10]
 004E46C4    mov         eax,dword ptr [ebp-4]
 004E46C7    mov         eax,dword ptr [eax+4F8];TCustomMPHexEditor.?f4F8:TBits
 004E46CD    call        TBits.SetSize
 004E46D2    mov         eax,dword ptr [ebp-4]
 004E46D5    mov         edx,dword ptr [eax]
 004E46D7    call        dword ptr [edx+50];TImage.GetEnabled
 004E46DA    test        al,al
>004E46DC    je          004E4749
 004E46DE    mov         eax,dword ptr [ebp+10]
 004E46E1    add         eax,dword ptr [ebp-0C]
 004E46E4    dec         eax
 004E46E5    push        eax
 004E46E6    mov         ecx,dword ptr [ebp+10]
 004E46E9    mov         edx,dword ptr [ebp+10]
 004E46EC    mov         eax,dword ptr [ebp-4]
 004E46EF    call        004E6110
 004E46F4    cmp         byte ptr [ebp+8],0
>004E46F8    je          004E4741
 004E46FA    lea         eax,[ebp-14]
 004E46FD    push        eax
 004E46FE    mov         eax,dword ptr [ebp-4]
 004E4701    call        004E409C
 004E4706    mov         ecx,eax
 004E4708    mov         eax,dword ptr [ebp-4]
 004E470B    mov         edx,dword ptr [eax+554];TCustomMPHexEditor.?f554:dword
 004E4711    mov         eax,dword ptr [ebp-4]
 004E4714    call        004E1344
 004E4719    push        1
 004E471B    push        1
 004E471D    mov         ecx,dword ptr [ebp-10]
 004E4720    mov         edx,dword ptr [ebp-14]
 004E4723    mov         eax,dword ptr [ebp-4]
 004E4726    call        004D8CCC
 004E472B    mov         eax,dword ptr [ebp+10]
 004E472E    add         eax,dword ptr [ebp-0C]
 004E4731    dec         eax
 004E4732    push        eax
 004E4733    mov         ecx,dword ptr [ebp+10]
 004E4736    mov         edx,dword ptr [ebp+10]
 004E4739    mov         eax,dword ptr [ebp-4]
 004E473C    call        004E6110
 004E4741    mov         eax,dword ptr [ebp-4]
 004E4744    mov         edx,dword ptr [eax]
 004E4746    call        dword ptr [edx+7C];TCustomMPHexEditor.sub_0048BE68
 004E4749    mov         eax,dword ptr [ebp-4]
 004E474C    mov         edx,dword ptr [eax]
 004E474E    call        dword ptr [edx+0EC];TCustomMPHexEditor.sub_004E87E8
 004E4754    mov         esp,ebp
 004E4756    pop         ebp
 004E4757    ret         0C
end;*}

//004E475C
{*procedure sub_004E475C(?:TCustomMPHexEditor; ?:Byte; ?:dword; ?:?; ?:?);
begin
 004E475C    push        ebp
 004E475D    mov         ebp,esp
 004E475F    add         esp,0FFFFFFE8
 004E4762    mov         dword ptr [ebp-0C],ecx
 004E4765    mov         dword ptr [ebp-8],edx
 004E4768    mov         dword ptr [ebp-4],eax
 004E476B    cmp         dword ptr [ebp-8],0
>004E476F    je          004E483E
 004E4775    cmp         dword ptr [ebp-0C],0
>004E4779    je          004E483E
 004E477F    mov         eax,dword ptr [ebp-0C]
 004E4782    push        eax
 004E4783    push        0
 004E4785    mov         eax,dword ptr [ebp+0C]
 004E4788    push        eax
 004E4789    mov         eax,dword ptr [ebp-4]
 004E478C    call        004E0588
 004E4791    mov         ecx,eax
 004E4793    mov         dl,4
 004E4795    mov         eax,dword ptr [ebp-4]
 004E4798    call        004E3CA4
 004E479D    mov         eax,dword ptr [ebp-4]
 004E47A0    call        004E0588
 004E47A5    mov         edx,dword ptr [ebp-4]
 004E47A8    mov         edx,dword ptr [edx+4F8];TCustomMPHexEditor.?f4F8:TBits
 004E47AE    cmp         eax,dword ptr [edx+4];TBits.FSize:Integer
>004E47B1    jg          004E47CB
 004E47B3    mov         eax,dword ptr [ebp-4]
 004E47B6    call        004E0588
 004E47BB    mov         edx,eax
 004E47BD    mov         eax,dword ptr [ebp-4]
 004E47C0    mov         eax,dword ptr [eax+4F8];TCustomMPHexEditor.?f4F8:TBits
 004E47C6    call        TBits.SetSize
 004E47CB    mov         eax,dword ptr [ebp-4]
 004E47CE    call        004E0588
 004E47D3    mov         dword ptr [ebp-10],eax
 004E47D6    mov         ecx,dword ptr [ebp-0C]
 004E47D9    mov         edx,dword ptr [ebp-8]
 004E47DC    mov         eax,dword ptr [ebp-4]
 004E47DF    call        004E4540
 004E47E4    cmp         byte ptr [ebp+8],0
>004E47E8    je          004E4815
 004E47EA    lea         eax,[ebp-18]
 004E47ED    push        eax
 004E47EE    mov         eax,dword ptr [ebp-4]
 004E47F1    call        004E409C
 004E47F6    mov         ecx,eax
 004E47F8    mov         edx,dword ptr [ebp-10]
 004E47FB    mov         eax,dword ptr [ebp-4]
 004E47FE    call        004E1344
 004E4803    push        1
 004E4805    push        1
 004E4807    mov         ecx,dword ptr [ebp-14]
 004E480A    mov         edx,dword ptr [ebp-18]
 004E480D    mov         eax,dword ptr [ebp-4]
 004E4810    call        004D8CCC
 004E4815    mov         eax,dword ptr [ebp-10]
 004E4818    add         eax,dword ptr [ebp-0C]
 004E481B    dec         eax
 004E481C    push        eax
 004E481D    mov         ecx,dword ptr [ebp-10]
 004E4820    mov         edx,dword ptr [ebp-10]
 004E4823    mov         eax,dword ptr [ebp-4]
 004E4826    call        004E6110
 004E482B    mov         eax,dword ptr [ebp-4]
 004E482E    mov         edx,dword ptr [eax]
 004E4830    call        dword ptr [edx+7C];TCustomMPHexEditor.sub_0048BE68
 004E4833    mov         eax,dword ptr [ebp-4]
 004E4836    mov         edx,dword ptr [eax]
 004E4838    call        dword ptr [edx+0EC];TCustomMPHexEditor.sub_004E87E8
 004E483E    mov         esp,ebp
 004E4840    pop         ebp
 004E4841    ret         8
end;*}

//004E4844
{*procedure sub_004E4844(?:TCustomMPHexEditor; ?:Byte; ?:dword; ?:?; ?:?);
begin
 004E4844    push        ebp
 004E4845    mov         ebp,esp
 004E4847    add         esp,0FFFFFFD8
 004E484A    mov         dword ptr [ebp-0C],ecx
 004E484D    mov         dword ptr [ebp-8],edx
 004E4850    mov         dword ptr [ebp-4],eax
 004E4853    mov         eax,dword ptr [ebp-4]
 004E4856    call        004E409C
 004E485B    mov         byte ptr [ebp-1D],al
 004E485E    mov         eax,dword ptr [ebp-4]
 004E4861    cmp         dword ptr [eax+550],0FFFFFFFF;TCustomMPHexEditor.?f550:dword
>004E4868    jne         004E488E
 004E486A    mov         eax,dword ptr [ebp-4]
 004E486D    call        004E3DEC
 004E4872    push        eax
 004E4873    mov         eax,dword ptr [ebp+0C]
 004E4876    push        eax
 004E4877    mov         al,byte ptr [ebp+8]
 004E487A    push        eax
 004E487B    mov         ecx,dword ptr [ebp-0C]
 004E487E    mov         edx,dword ptr [ebp-8]
 004E4881    mov         eax,dword ptr [ebp-4]
 004E4884    call        004E4678
>004E4889    jmp         004E49E0
 004E488E    mov         eax,dword ptr [ebp-4]
 004E4891    call        004E91E4
 004E4896    test        al,al
>004E4898    je          004E48F8
 004E489A    mov         eax,dword ptr [ebp-4]
 004E489D    call        004E4AD8
 004E48A2    cmp         eax,dword ptr [ebp-0C]
>004E48A5    jge         004E48B4
 004E48A7    mov         eax,dword ptr [ebp-4]
 004E48AA    call        004E4AD8
 004E48AF    mov         dword ptr [ebp-0C],eax
>004E48B2    jmp         004E48F8
 004E48B4    mov         eax,dword ptr [ebp-4]
 004E48B7    call        004E4AD8
 004E48BC    cmp         eax,dword ptr [ebp-0C]
>004E48BF    jle         004E48F8
 004E48C1    mov         eax,dword ptr [ebp-4]
 004E48C4    call        004E3E34
 004E48C9    push        eax
 004E48CA    mov         eax,dword ptr [ebp-4]
 004E48CD    call        004E3DEC
 004E48D2    pop         edx
 004E48D3    call        004DF5BC
 004E48D8    mov         edx,eax
 004E48DA    mov         eax,dword ptr [ebp-4]
 004E48DD    call        004E3E9C
 004E48E2    mov         eax,dword ptr [ebp-4]
 004E48E5    call        004E3DEC
 004E48EA    mov         edx,eax
 004E48EC    add         edx,dword ptr [ebp-0C]
 004E48EF    dec         edx
 004E48F0    mov         eax,dword ptr [ebp-4]
 004E48F3    call        004E3F48
 004E48F8    mov         eax,dword ptr [ebp-0C]
 004E48FB    push        eax
 004E48FC    mov         eax,dword ptr [ebp-4]
 004E48FF    call        004E4AD8
 004E4904    push        eax
 004E4905    mov         eax,dword ptr [ebp+0C]
 004E4908    push        eax
 004E4909    mov         eax,dword ptr [ebp-4]
 004E490C    mov         ecx,dword ptr [eax+54C];TCustomMPHexEditor.?f54C:dword
 004E4912    mov         dl,3
 004E4914    mov         eax,dword ptr [ebp-4]
 004E4917    call        004E3CA4
 004E491C    lea         eax,[ebp-18]
 004E491F    push        eax
 004E4920    lea         eax,[ebp-1C]
 004E4923    push        eax
 004E4924    lea         ecx,[ebp-14]
 004E4927    lea         edx,[ebp-10]
 004E492A    mov         eax,dword ptr [ebp-4]
 004E492D    call        004E33E0
 004E4932    mov         eax,dword ptr [ebp-18]
 004E4935    push        eax
 004E4936    mov         eax,dword ptr [ebp-1C]
 004E4939    push        eax
 004E493A    mov         ecx,dword ptr [ebp-14]
 004E493D    mov         edx,dword ptr [ebp-10]
 004E4940    mov         eax,dword ptr [ebp-4]
 004E4943    call        004E3AE0
 004E4948    mov         eax,dword ptr [ebp-10]
 004E494B    push        eax
 004E494C    mov         ecx,dword ptr [ebp-0C]
 004E494F    mov         edx,dword ptr [ebp-8]
 004E4952    mov         eax,dword ptr [ebp-4]
 004E4955    call        004E45C4
 004E495A    mov         eax,dword ptr [ebp-4]
 004E495D    mov         eax,dword ptr [eax+4F8];TCustomMPHexEditor.?f4F8:TBits
 004E4963    mov         eax,dword ptr [eax+4];TBits.FSize:Integer
 004E4966    cmp         eax,dword ptr [ebp-10]
>004E4969    jl          004E4985
 004E496B    mov         edx,dword ptr [ebp-10]
 004E496E    xor         eax,eax
 004E4970    call        004DF5E8
 004E4975    mov         edx,eax
 004E4977    mov         eax,dword ptr [ebp-4]
 004E497A    mov         eax,dword ptr [eax+4F8];TCustomMPHexEditor.?f4F8:TBits
 004E4980    call        TBits.SetSize
 004E4985    cmp         byte ptr [ebp+8],0
>004E4989    je          004E49CD
 004E498B    lea         eax,[ebp-28]
 004E498E    push        eax
 004E498F    mov         edx,dword ptr [ebp-10]
 004E4992    add         edx,dword ptr [ebp-0C]
 004E4995    dec         edx
 004E4996    mov         cl,byte ptr [ebp-1D]
 004E4999    mov         eax,dword ptr [ebp-4]
 004E499C    call        004E1344
 004E49A1    push        1
 004E49A3    push        1
 004E49A5    mov         ecx,dword ptr [ebp-24]
 004E49A8    mov         edx,dword ptr [ebp-28]
 004E49AB    mov         eax,dword ptr [ebp-4]
 004E49AE    call        004D8CCC
 004E49B3    mov         eax,dword ptr [ebp-10]
 004E49B6    add         eax,dword ptr [ebp-0C]
 004E49B9    dec         eax
 004E49BA    push        eax
 004E49BB    mov         edx,dword ptr [ebp-10]
 004E49BE    add         edx,dword ptr [ebp-0C]
 004E49C1    dec         edx
 004E49C2    mov         ecx,dword ptr [ebp-10]
 004E49C5    mov         eax,dword ptr [ebp-4]
 004E49C8    call        004E6110
 004E49CD    mov         eax,dword ptr [ebp-4]
 004E49D0    mov         edx,dword ptr [eax]
 004E49D2    call        dword ptr [edx+7C];TCustomMPHexEditor.sub_0048BE68
 004E49D5    mov         eax,dword ptr [ebp-4]
 004E49D8    mov         edx,dword ptr [eax]
 004E49DA    call        dword ptr [edx+0EC];TCustomMPHexEditor.sub_004E87E8
 004E49E0    mov         esp,ebp
 004E49E2    pop         ebp
 004E49E3    ret         8
end;*}

//004E49E8
{*procedure sub_004E49E8(?:?; ?:?; ?:?);
begin
 004E49E8    push        ebp
 004E49E9    mov         ebp,esp
 004E49EB    add         esp,0FFFFFFF4
 004E49EE    mov         byte ptr [ebp-9],cl
 004E49F1    mov         dword ptr [ebp-8],edx
 004E49F4    mov         dword ptr [ebp-4],eax
 004E49F7    mov         eax,dword ptr [ebp-4]
 004E49FA    call        TMPHexEditorEx.GetInsertMode
 004E49FF    test        al,al
>004E4A01    je          004E4A13
 004E4A03    xor         edx,edx
 004E4A05    mov         eax,dword ptr [ebp-4]
 004E4A08    mov         eax,dword ptr [eax+4F8]
 004E4A0E    call        TBits.SetSize
 004E4A13    cmp         byte ptr [ebp-9],0
>004E4A17    jne         004E4A2A
 004E4A19    mov         eax,dword ptr [ebp-4]
 004E4A1C    mov         eax,dword ptr [eax+4F8]
 004E4A22    mov         eax,dword ptr [eax+4]
 004E4A25    cmp         eax,dword ptr [ebp-8]
>004E4A28    jle         004E4A3E
 004E4A2A    mov         cl,byte ptr [ebp-9]
 004E4A2D    mov         edx,dword ptr [ebp-8]
 004E4A30    mov         eax,dword ptr [ebp-4]
 004E4A33    mov         eax,dword ptr [eax+4F8]
 004E4A39    call        TBits.SetBit
 004E4A3E    mov         esp,ebp
 004E4A40    pop         ebp
 004E4A41    ret
end;*}

//004E4A44
{*procedure sub_004E4A44(?:?; ?:?; ?:?; ?:?);
begin
 004E4A44    push        ebp
 004E4A45    mov         ebp,esp
 004E4A47    add         esp,0FFFFFFF4
 004E4A4A    mov         dword ptr [ebp-0C],ecx
 004E4A4D    mov         dword ptr [ebp-8],edx
 004E4A50    mov         dword ptr [ebp-4],eax
 004E4A53    mov         eax,dword ptr [ebp+8]
 004E4A56    push        eax
 004E4A57    mov         ecx,dword ptr [ebp-0C]
 004E4A5A    mov         edx,dword ptr [ebp-8]
 004E4A5D    mov         eax,dword ptr [ebp-4]
 004E4A60    mov         eax,dword ptr [eax+4E0]
 004E4A66    call        004EC37C
 004E4A6B    mov         esp,ebp
 004E4A6D    pop         ebp
 004E4A6E    ret         4
end;*}

//004E4A74
{*function sub_004E4A74(?:TCustomMPHexEditor):?;
begin
 004E4A74    push        ebp
 004E4A75    mov         ebp,esp
 004E4A77    add         esp,0FFFFFFF8
 004E4A7A    mov         dword ptr [ebp-4],eax
 004E4A7D    mov         eax,dword ptr [ebp-4]
 004E4A80    mov         ecx,dword ptr [eax+22C]
 004E4A86    mov         eax,dword ptr [ebp-4]
 004E4A89    mov         edx,dword ptr [eax+228]
 004E4A8F    mov         eax,dword ptr [ebp-4]
 004E4A92    call        004E1288
 004E4A97    mov         dword ptr [ebp-8],eax
 004E4A9A    cmp         dword ptr [ebp-8],0
>004E4A9E    jge         004E4AA5
 004E4AA0    xor         eax,eax
 004E4AA2    mov         dword ptr [ebp-8],eax
 004E4AA5    mov         eax,dword ptr [ebp-4]
 004E4AA8    call        004E0588
 004E4AAD    mov         edx,eax
 004E4AAF    dec         edx
 004E4AB0    xor         eax,eax
 004E4AB2    call        004DF5E8
 004E4AB7    cmp         eax,dword ptr [ebp-8]
>004E4ABA    jge         004E4AD1
 004E4ABC    mov         eax,dword ptr [ebp-4]
 004E4ABF    call        004E0588
 004E4AC4    mov         edx,eax
 004E4AC6    dec         edx
 004E4AC7    xor         eax,eax
 004E4AC9    call        004DF5E8
 004E4ACE    mov         dword ptr [ebp-8],eax
 004E4AD1    mov         eax,dword ptr [ebp-8]
 004E4AD4    pop         ecx
 004E4AD5    pop         ecx
 004E4AD6    pop         ebp
 004E4AD7    ret
end;*}

//004E4AD8
{*function sub_004E4AD8(?:TCustomMPHexEditor):?;
begin
 004E4AD8    push        ebp
 004E4AD9    mov         ebp,esp
 004E4ADB    add         esp,0FFFFFFF8
 004E4ADE    push        ebx
 004E4ADF    mov         dword ptr [ebp-4],eax
 004E4AE2    mov         eax,dword ptr [ebp-4]
 004E4AE5    cmp         dword ptr [eax+550],0FFFFFFFF;TCustomMPHexEditor.?f550:dword
>004E4AEC    jne         004E4AF5
 004E4AEE    xor         eax,eax
 004E4AF0    mov         dword ptr [ebp-8],eax
>004E4AF3    jmp         004E4B2B
 004E4AF5    mov         eax,dword ptr [ebp-4]
 004E4AF8    mov         edx,dword ptr [eax+554];TCustomMPHexEditor.?f554:dword
 004E4AFE    mov         eax,dword ptr [ebp-4]
 004E4B01    mov         eax,dword ptr [eax+54C];TCustomMPHexEditor.?f54C:dword
 004E4B07    call        004DF5E8
 004E4B0C    mov         ebx,eax
 004E4B0E    mov         eax,dword ptr [ebp-4]
 004E4B11    mov         edx,dword ptr [eax+554];TCustomMPHexEditor.?f554:dword
 004E4B17    mov         eax,dword ptr [ebp-4]
 004E4B1A    mov         eax,dword ptr [eax+54C];TCustomMPHexEditor.?f54C:dword
 004E4B20    call        004DF5BC
 004E4B25    sub         ebx,eax
 004E4B27    inc         ebx
 004E4B28    mov         dword ptr [ebp-8],ebx
 004E4B2B    mov         eax,dword ptr [ebp-8]
 004E4B2E    pop         ebx
 004E4B2F    pop         ecx
 004E4B30    pop         ecx
 004E4B31    pop         ebp
 004E4B32    ret
end;*}

//004E4B34
{*procedure TCustomMPHexEditor.WMVScroll(?:?);
begin
 004E4B34    push        ebp
 004E4B35    mov         ebp,esp
 004E4B37    add         esp,0FFFFFFF8
 004E4B3A    mov         dword ptr [ebp-8],edx
 004E4B3D    mov         dword ptr [ebp-4],eax
 004E4B40    mov         edx,dword ptr [ebp-8]
 004E4B43    mov         eax,dword ptr [ebp-4]
 004E4B46    call        TCustomGrid.WMVScroll
 004E4B4B    mov         eax,dword ptr [ebp-4]
 004E4B4E    call        004E9B18
 004E4B53    pop         ecx
 004E4B54    pop         ecx
 004E4B55    pop         ebp
 004E4B56    ret
end;*}

//004E4B58
{*procedure TCustomMPHexEditor.WMHScroll(?:?);
begin
 004E4B58    push        ebp
 004E4B59    mov         ebp,esp
 004E4B5B    add         esp,0FFFFFFF8
 004E4B5E    mov         dword ptr [ebp-8],edx
 004E4B61    mov         dword ptr [ebp-4],eax
 004E4B64    mov         edx,dword ptr [ebp-8]
 004E4B67    mov         eax,dword ptr [ebp-4]
 004E4B6A    call        TCustomGrid.WMHScroll
 004E4B6F    mov         eax,dword ptr [ebp-4]
 004E4B72    call        004E9B18
 004E4B77    pop         ecx
 004E4B78    pop         ecx
 004E4B79    pop         ebp
 004E4B7A    ret
end;*}

//004E4B7C
procedure sub_004E4B7C(?:TCustomMPHexEditor);
begin
{*
 004E4B7C    push        ebp
 004E4B7D    mov         ebp,esp
 004E4B7F    add         esp,0FFFFFFEC
 004E4B82    mov         dword ptr [ebp-4],eax
 004E4B85    call        user32.DestroyCaret
 004E4B8A    mov         eax,dword ptr [ebp-4]
 004E4B8D    mov         edx,dword ptr [eax+4BC];TCustomMPHexEditor.?f4BC:Integer
 004E4B93    mov         eax,dword ptr [ebp-4]
 004E4B96    mov         eax,dword ptr [eax+4CC];TCustomMPHexEditor.?f4CC:TBitmap
 004E4B9C    mov         ecx,dword ptr [eax]
 004E4B9E    call        dword ptr [ecx+40];TBitmap.sub_00435FF8
 004E4BA1    mov         eax,dword ptr [ebp-4]
 004E4BA4    mov         edx,dword ptr [eax+4C0];TCustomMPHexEditor.?f4C0:dword
 004E4BAA    sub         edx,2
 004E4BAD    mov         eax,dword ptr [ebp-4]
 004E4BB0    mov         eax,dword ptr [eax+4CC];TCustomMPHexEditor.?f4CC:TBitmap
 004E4BB6    mov         ecx,dword ptr [eax]
 004E4BB8    call        dword ptr [ecx+34];TBitmap.sub_00435BD8
 004E4BBB    mov         eax,dword ptr [ebp-4]
 004E4BBE    mov         eax,dword ptr [eax+4CC];TCustomMPHexEditor.?f4CC:TBitmap
 004E4BC4    call        0043498C
 004E4BC9    mov         eax,dword ptr [eax+14]
 004E4BCC    xor         edx,edx
 004E4BCE    call        TBrush.SetColor
 004E4BD3    mov         eax,dword ptr [ebp-4]
 004E4BD6    mov         eax,dword ptr [eax+4C0];TCustomMPHexEditor.?f4C0:dword
 004E4BDC    sub         eax,2
 004E4BDF    push        eax
 004E4BE0    lea         eax,[ebp-14]
 004E4BE3    push        eax
 004E4BE4    mov         eax,dword ptr [ebp-4]
 004E4BE7    mov         ecx,dword ptr [eax+4BC];TCustomMPHexEditor.?f4BC:Integer
 004E4BED    xor         edx,edx
 004E4BEF    xor         eax,eax
 004E4BF1    call        0041E714
 004E4BF6    lea         eax,[ebp-14]
 004E4BF9    push        eax
 004E4BFA    mov         eax,dword ptr [ebp-4]
 004E4BFD    mov         eax,dword ptr [eax+4CC];TCustomMPHexEditor.?f4CC:TBitmap
 004E4C03    call        0043498C
 004E4C08    pop         edx
 004E4C09    call        0042F030
 004E4C0E    mov         eax,dword ptr [ebp-4]
 004E4C11    mov         eax,dword ptr [eax+4CC];TCustomMPHexEditor.?f4CC:TBitmap
 004E4C17    call        0043498C
 004E4C1C    mov         eax,dword ptr [eax+14]
 004E4C1F    mov         edx,0FFFFFF
 004E4C24    call        TBrush.SetColor
 004E4C29    mov         eax,dword ptr [ebp-4]
 004E4C2C    mov         al,byte ptr [eax+55D];TCustomMPHexEditor.?f55D:byte
 004E4C32    sub         al,1
>004E4C34    jb          004E4C4D
>004E4C36    je          004E4C8D
 004E4C38    dec         al
>004E4C3A    je          004E4CC9
 004E4C40    dec         al
>004E4C42    je          004E4D13
>004E4C48    jmp         004E4DE9
 004E4C4D    mov         eax,dword ptr [ebp-4]
 004E4C50    mov         eax,dword ptr [eax+4C0];TCustomMPHexEditor.?f4C0:dword
 004E4C56    sub         eax,2
 004E4C59    push        eax
 004E4C5A    lea         eax,[ebp-14]
 004E4C5D    push        eax
 004E4C5E    mov         eax,dword ptr [ebp-4]
 004E4C61    mov         ecx,dword ptr [eax+4BC];TCustomMPHexEditor.?f4BC:Integer
 004E4C67    xor         edx,edx
 004E4C69    xor         eax,eax
 004E4C6B    call        0041E714
 004E4C70    lea         eax,[ebp-14]
 004E4C73    push        eax
 004E4C74    mov         eax,dword ptr [ebp-4]
 004E4C77    mov         eax,dword ptr [eax+4CC];TCustomMPHexEditor.?f4CC:TBitmap
 004E4C7D    call        0043498C
 004E4C82    pop         edx
 004E4C83    call        0042F030
>004E4C88    jmp         004E4DE9
 004E4C8D    mov         eax,dword ptr [ebp-4]
 004E4C90    mov         eax,dword ptr [eax+4C0];TCustomMPHexEditor.?f4C0:dword
 004E4C96    sub         eax,2
 004E4C99    push        eax
 004E4C9A    lea         eax,[ebp-14]
 004E4C9D    push        eax
 004E4C9E    mov         ecx,2
 004E4CA3    xor         edx,edx
 004E4CA5    xor         eax,eax
 004E4CA7    call        0041E714
 004E4CAC    lea         eax,[ebp-14]
 004E4CAF    push        eax
 004E4CB0    mov         eax,dword ptr [ebp-4]
 004E4CB3    mov         eax,dword ptr [eax+4CC];TCustomMPHexEditor.?f4CC:TBitmap
 004E4CB9    call        0043498C
 004E4CBE    pop         edx
 004E4CBF    call        0042F030
>004E4CC4    jmp         004E4DE9
 004E4CC9    mov         eax,dword ptr [ebp-4]
 004E4CCC    mov         eax,dword ptr [eax+4C0];TCustomMPHexEditor.?f4C0:dword
 004E4CD2    sub         eax,2
 004E4CD5    push        eax
 004E4CD6    lea         eax,[ebp-14]
 004E4CD9    push        eax
 004E4CDA    mov         eax,dword ptr [ebp-4]
 004E4CDD    mov         edx,dword ptr [eax+4C0];TCustomMPHexEditor.?f4C0:dword
 004E4CE3    sub         edx,4
 004E4CE6    mov         eax,dword ptr [ebp-4]
 004E4CE9    mov         ecx,dword ptr [eax+4BC];TCustomMPHexEditor.?f4BC:Integer
 004E4CEF    xor         eax,eax
 004E4CF1    call        0041E714
 004E4CF6    lea         eax,[ebp-14]
 004E4CF9    push        eax
 004E4CFA    mov         eax,dword ptr [ebp-4]
 004E4CFD    mov         eax,dword ptr [eax+4CC];TCustomMPHexEditor.?f4CC:TBitmap
 004E4D03    call        0043498C
 004E4D08    pop         edx
 004E4D09    call        0042F030
>004E4D0E    jmp         004E4DE9
 004E4D13    mov         eax,dword ptr [ebp-4]
 004E4D16    cmp         byte ptr [eax+561],0;TCustomMPHexEditor.?f561:byte
>004E4D1D    je          004E4D69
 004E4D1F    mov         eax,dword ptr [ebp-4]
 004E4D22    mov         eax,dword ptr [eax+4C0];TCustomMPHexEditor.?f4C0:dword
 004E4D28    sub         eax,2
 004E4D2B    push        eax
 004E4D2C    lea         eax,[ebp-14]
 004E4D2F    push        eax
 004E4D30    mov         eax,dword ptr [ebp-4]
 004E4D33    mov         edx,dword ptr [eax+4C0];TCustomMPHexEditor.?f4C0:dword
 004E4D39    sub         edx,4
 004E4D3C    mov         eax,dword ptr [ebp-4]
 004E4D3F    mov         ecx,dword ptr [eax+4BC];TCustomMPHexEditor.?f4BC:Integer
 004E4D45    xor         eax,eax
 004E4D47    call        0041E714
 004E4D4C    lea         eax,[ebp-14]
 004E4D4F    push        eax
 004E4D50    mov         eax,dword ptr [ebp-4]
 004E4D53    mov         eax,dword ptr [eax+4CC];TCustomMPHexEditor.?f4CC:TBitmap
 004E4D59    call        0043498C
 004E4D5E    pop         edx
 004E4D5F    call        0042F030
>004E4D64    jmp         004E4DE9
 004E4D69    mov         eax,dword ptr [ebp-4]
 004E4D6C    cmp         byte ptr [eax+4C8],0;TCustomMPHexEditor.?f4C8:byte
>004E4D73    je          004E4DAE
 004E4D75    mov         eax,dword ptr [ebp-4]
 004E4D78    mov         eax,dword ptr [eax+4C0];TCustomMPHexEditor.?f4C0:dword
 004E4D7E    sub         eax,2
 004E4D81    push        eax
 004E4D82    lea         eax,[ebp-14]
 004E4D85    push        eax
 004E4D86    mov         ecx,2
 004E4D8B    xor         edx,edx
 004E4D8D    xor         eax,eax
 004E4D8F    call        0041E714
 004E4D94    lea         eax,[ebp-14]
 004E4D97    push        eax
 004E4D98    mov         eax,dword ptr [ebp-4]
 004E4D9B    mov         eax,dword ptr [eax+4CC];TCustomMPHexEditor.?f4CC:TBitmap
 004E4DA1    call        0043498C
 004E4DA6    pop         edx
 004E4DA7    call        0042F030
>004E4DAC    jmp         004E4DE9
 004E4DAE    mov         eax,dword ptr [ebp-4]
 004E4DB1    mov         eax,dword ptr [eax+4C0];TCustomMPHexEditor.?f4C0:dword
 004E4DB7    sub         eax,2
 004E4DBA    push        eax
 004E4DBB    lea         eax,[ebp-14]
 004E4DBE    push        eax
 004E4DBF    mov         eax,dword ptr [ebp-4]
 004E4DC2    mov         ecx,dword ptr [eax+4BC];TCustomMPHexEditor.?f4BC:Integer
 004E4DC8    xor         edx,edx
 004E4DCA    xor         eax,eax
 004E4DCC    call        0041E714
 004E4DD1    lea         eax,[ebp-14]
 004E4DD4    push        eax
 004E4DD5    mov         eax,dword ptr [ebp-4]
 004E4DD8    mov         eax,dword ptr [eax+4CC];TCustomMPHexEditor.?f4CC:TBitmap
 004E4DDE    call        0043498C
 004E4DE3    pop         edx
 004E4DE4    call        0042F030
 004E4DE9    push        0
 004E4DEB    push        0
 004E4DED    mov         eax,dword ptr [ebp-4]
 004E4DF0    mov         eax,dword ptr [eax+4CC];TCustomMPHexEditor.?f4CC:TBitmap
 004E4DF6    mov         edx,dword ptr [eax]
 004E4DF8    call        dword ptr [edx+64];TBitmap.sub_004349FC
 004E4DFB    push        eax
 004E4DFC    mov         eax,dword ptr [ebp-4]
 004E4DFF    call        TWinControl.GetHandle
 004E4E04    push        eax
 004E4E05    call        user32.CreateCaret
 004E4E0A    mov         eax,dword ptr [ebp-4]
 004E4E0D    call        TWinControl.GetHandle
 004E4E12    push        eax
 004E4E13    call        user32.ShowCaret
 004E4E18    mov         esp,ebp
 004E4E1A    pop         ebp
 004E4E1B    ret
*}
end;

//004E4E1C
procedure TMPHexEditorEx.SetBytesPerColumn(Value:Integer);
begin
{*
 004E4E1C    push        ebp
 004E4E1D    mov         ebp,esp
 004E4E1F    add         esp,0FFFFFFF0
 004E4E22    xor         ecx,ecx
 004E4E24    mov         dword ptr [ebp-10],ecx
 004E4E27    mov         dword ptr [ebp-8],edx
 004E4E2A    mov         dword ptr [ebp-4],eax
 004E4E2D    xor         eax,eax
 004E4E2F    push        ebp
 004E4E30    push        4E4EF5
 004E4E35    push        dword ptr fs:[eax]
 004E4E38    mov         dword ptr fs:[eax],esp
 004E4E3B    cmp         dword ptr [ebp-8],1
>004E4E3F    jl          004E4E69
 004E4E41    cmp         dword ptr [ebp-8],100
>004E4E48    jg          004E4E69
 004E4E4A    mov         eax,dword ptr [ebp-4]
 004E4E4D    cmp         byte ptr [eax+61C],0;TMPHexEditorEx.?f61C:byte
>004E4E54    je          004E4E8C
 004E4E56    mov         eax,dword ptr [ebp-8]
 004E4E59    and         eax,80000001
>004E4E5E    jns         004E4E65
 004E4E60    dec         eax
 004E4E61    or          eax,0FFFFFFFE
 004E4E64    inc         eax
 004E4E65    test        eax,eax
>004E4E67    je          004E4E8C
 004E4E69    lea         edx,[ebp-10]
 004E4E6C    mov         eax,4DF324;^HInstance:LongWord
 004E4E71    call        LoadResString
 004E4E76    mov         ecx,dword ptr [ebp-10]
 004E4E79    mov         dl,1
 004E4E7B    mov         eax,[004DE8FC];EMPHexEditor
 004E4E80    call        Exception.Create;EMPHexEditor.Create
 004E4E85    call        @RaiseExcept
>004E4E8A    jmp         004E4EDF
 004E4E8C    mov         eax,dword ptr [ebp-8]
 004E4E8F    add         eax,eax
 004E4E91    mov         edx,dword ptr [ebp-4]
 004E4E94    cmp         eax,dword ptr [edx+4EC];TMPHexEditorEx.?f4EC:dword
>004E4E9A    je          004E4EDF
 004E4E9C    mov         eax,dword ptr [ebp-4]
 004E4E9F    add         eax,5A0;TMPHexEditorEx.?f5A0:TMPHOffsetFormat
 004E4EA4    mov         dword ptr [ebp-0C],eax
 004E4EA7    mov         eax,dword ptr [ebp-0C]
 004E4EAA    test        byte ptr [eax+10],4
>004E4EAE    je          004E4EB9
 004E4EB0    mov         al,byte ptr [ebp-8]
 004E4EB3    mov         edx,dword ptr [ebp-0C]
 004E4EB6    mov         byte ptr [edx+12],al
 004E4EB9    mov         eax,dword ptr [ebp-8]
 004E4EBC    add         eax,eax
 004E4EBE    mov         edx,dword ptr [ebp-4]
 004E4EC1    mov         dword ptr [edx+4EC],eax;TMPHexEditorEx.?f4EC:dword
 004E4EC7    mov         eax,dword ptr [ebp-4]
 004E4ECA    call        004E025C
 004E4ECF    mov         eax,dword ptr [ebp-4]
 004E4ED2    call        004E89EC
 004E4ED7    mov         eax,dword ptr [ebp-4]
 004E4EDA    mov         edx,dword ptr [eax]
 004E4EDC    call        dword ptr [edx+7C];TMPHexEditorEx.sub_0048BE68
 004E4EDF    xor         eax,eax
 004E4EE1    pop         edx
 004E4EE2    pop         ecx
 004E4EE3    pop         ecx
 004E4EE4    mov         dword ptr fs:[eax],edx
 004E4EE7    push        4E4EFC
 004E4EEC    lea         eax,[ebp-10]
 004E4EEF    call        @LStrClr
 004E4EF4    ret
>004E4EF5    jmp         @HandleFinally
>004E4EFA    jmp         004E4EEC
 004E4EFC    mov         esp,ebp
 004E4EFE    pop         ebp
 004E4EFF    ret
*}
end;

//004E4F00
{*function TMPHexEditorEx.GetBytesPerColumn:?;
begin
 004E4F00    push        ebp
 004E4F01    mov         ebp,esp
 004E4F03    add         esp,0FFFFFFF8
 004E4F06    mov         dword ptr [ebp-4],eax
 004E4F09    mov         eax,dword ptr [ebp-4]
 004E4F0C    mov         eax,dword ptr [eax+4EC];TMPHexEditorEx.?f4EC:dword
 004E4F12    sar         eax,1
>004E4F14    jns         004E4F19
 004E4F16    adc         eax,0
 004E4F19    mov         dword ptr [ebp-8],eax
 004E4F1C    mov         eax,dword ptr [ebp-8]
 004E4F1F    pop         ecx
 004E4F20    pop         ecx
 004E4F21    pop         ebp
 004E4F22    ret
end;*}

//004E4F24
procedure sub_004E4F24(?:TMPHexEditorEx);
begin
{*
 004E4F24    push        ebp
 004E4F25    mov         ebp,esp
 004E4F27    xor         ecx,ecx
 004E4F29    push        ecx
 004E4F2A    push        ecx
 004E4F2B    push        ecx
 004E4F2C    push        ecx
 004E4F2D    push        ecx
 004E4F2E    push        ebx
 004E4F2F    mov         dword ptr [ebp-4],eax
 004E4F32    xor         eax,eax
 004E4F34    push        ebp
 004E4F35    push        4E50D2
 004E4F3A    push        dword ptr fs:[eax]
 004E4F3D    mov         dword ptr fs:[eax],esp
 004E4F40    mov         eax,dword ptr [ebp-4]
 004E4F43    cmp         word ptr [eax+4B2],0;TMPHexEditorEx.?f4B2:word
>004E4F4B    je          004E4FE6
 004E4F51    mov         eax,dword ptr [ebp-4]
 004E4F54    cmp         byte ptr [eax+60D],0;TMPHexEditorEx.?f60D:byte
>004E4F5B    jne         004E4FE6
 004E4F61    mov         eax,dword ptr [ebp-4]
 004E4F64    mov         byte ptr [eax+60D],1;TMPHexEditorEx.?f60D:byte
 004E4F6B    xor         eax,eax
 004E4F6D    push        ebp
 004E4F6E    push        4E4FC8
 004E4F73    push        dword ptr fs:[eax]
 004E4F76    mov         dword ptr fs:[eax],esp
 004E4F79    mov         eax,dword ptr [ebp-4]
 004E4F7C    mov         byte ptr [eax+4A0],1;TMPHexEditorEx.?f4A0:byte
 004E4F83    mov         eax,dword ptr [ebp-4]
 004E4F86    mov         eax,dword ptr [eax+24C];TMPHexEditorEx.FRowCount:Longint
 004E4F8C    sub         eax,3
 004E4F8F    mov         edx,dword ptr [ebp-4]
 004E4F92    imul        dword ptr [edx+4D4];TMPHexEditorEx.?f4D4:Integer
 004E4F98    cdq
 004E4F99    push        edx
 004E4F9A    push        eax
 004E4F9B    lea         ecx,[ebp-8]
 004E4F9E    mov         ebx,dword ptr [ebp-4]
 004E4FA1    mov         edx,dword ptr [ebp-4]
 004E4FA4    mov         eax,dword ptr [ebx+4B4];TMPHexEditorEx.?f4B4:dword
 004E4FAA    call        dword ptr [ebx+4B0]
 004E4FB0    xor         eax,eax
 004E4FB2    pop         edx
 004E4FB3    pop         ecx
 004E4FB4    pop         ecx
 004E4FB5    mov         dword ptr fs:[eax],edx
 004E4FB8    push        4E4FCF
 004E4FBD    mov         eax,dword ptr [ebp-4]
 004E4FC0    mov         byte ptr [eax+60D],0;TMPHexEditorEx.?f60D:byte
 004E4FC7    ret
>004E4FC8    jmp         @HandleFinally
>004E4FCD    jmp         004E4FBD
 004E4FCF    mov         eax,dword ptr [ebp-8]
 004E4FD2    call        @LStrLen
 004E4FD7    inc         eax
 004E4FD8    mov         edx,dword ptr [ebp-4]
 004E4FDB    mov         dword ptr [edx+4D8],eax;TMPHexEditorEx.?f4D8:dword
>004E4FE1    jmp         004E506D
 004E4FE6    mov         eax,dword ptr [ebp-4]
 004E4FE9    add         eax,5A0;TMPHexEditorEx.?f5A0:TMPHOffsetFormat
 004E4FEE    mov         dword ptr [ebp-0C],eax
 004E4FF1    mov         eax,dword ptr [ebp-0C]
 004E4FF4    test        byte ptr [eax+10],1
>004E4FF8    je          004E5037
 004E4FFA    mov         eax,dword ptr [ebp-4]
 004E4FFD    mov         eax,dword ptr [eax+24C];TMPHexEditorEx.FRowCount:Longint
 004E5003    sub         eax,3
 004E5006    mov         edx,dword ptr [ebp-4]
 004E5009    imul        dword ptr [edx+4D4];TMPHexEditorEx.?f4D4:Integer
 004E500F    mov         edx,dword ptr [ebp-0C]
 004E5012    movzx       edx,byte ptr [edx+12]
 004E5016    mov         ecx,edx
 004E5018    cdq
 004E5019    idiv        eax,ecx
 004E501B    lea         ecx,[ebp-10]
 004E501E    mov         edx,dword ptr [ebp-0C]
 004E5021    mov         dl,byte ptr [edx+11]
 004E5024    call        004DF8B4
 004E5029    mov         eax,dword ptr [ebp-10]
 004E502C    call        @LStrLen
 004E5031    mov         edx,dword ptr [ebp-0C]
 004E5034    mov         dword ptr [edx+0C],eax
 004E5037    mov         eax,dword ptr [ebp-4]
 004E503A    mov         edx,dword ptr [eax+24C];TMPHexEditorEx.FRowCount:Longint
 004E5040    sub         edx,3
 004E5043    mov         eax,dword ptr [ebp-4]
 004E5046    imul        edx,dword ptr [eax+4D4];TMPHexEditorEx.?f4D4:Integer
 004E504D    lea         ecx,[ebp-14]
 004E5050    mov         eax,dword ptr [ebp-4]
 004E5053    mov         ebx,dword ptr [eax]
 004E5055    call        dword ptr [ebx+104];TMPHexEditorEx.sub_004E659C
 004E505B    mov         eax,dword ptr [ebp-14]
 004E505E    call        @LStrLen
 004E5063    inc         eax
 004E5064    mov         edx,dword ptr [ebp-4]
 004E5067    mov         dword ptr [edx+4D8],eax;TMPHexEditorEx.?f4D8:dword
 004E506D    mov         eax,dword ptr [ebp-4]
 004E5070    cmp         dword ptr [eax+59C],0FFFFFFFF;TMPHexEditorEx.?f59C:Integer
>004E5077    jne         004E509C
 004E5079    mov         eax,dword ptr [ebp-4]
 004E507C    mov         ecx,dword ptr [eax+4D8];TMPHexEditorEx.?f4D8:dword
 004E5082    mov         eax,dword ptr [ebp-4]
 004E5085    imul        ecx,dword ptr [eax+4BC];TMPHexEditorEx.?f4BC:Integer
 004E508C    add         ecx,14
 004E508F    inc         ecx
 004E5090    xor         edx,edx
 004E5092    mov         eax,dword ptr [ebp-4]
 004E5095    call        004E9008
>004E509A    jmp         004E50AF
 004E509C    mov         eax,dword ptr [ebp-4]
 004E509F    mov         ecx,dword ptr [eax+59C];TMPHexEditorEx.?f59C:Integer
 004E50A5    xor         edx,edx
 004E50A7    mov         eax,dword ptr [ebp-4]
 004E50AA    call        004E9008
 004E50AF    xor         eax,eax
 004E50B1    pop         edx
 004E50B2    pop         ecx
 004E50B3    pop         ecx
 004E50B4    mov         dword ptr fs:[eax],edx
 004E50B7    push        4E50D9
 004E50BC    lea         eax,[ebp-14]
 004E50BF    mov         edx,2
 004E50C4    call        @LStrArrayClr
 004E50C9    lea         eax,[ebp-8]
 004E50CC    call        @LStrClr
 004E50D1    ret
>004E50D2    jmp         @HandleFinally
>004E50D7    jmp         004E50BC
 004E50D9    pop         ebx
 004E50DA    mov         esp,ebp
 004E50DC    pop         ebp
 004E50DD    ret
*}
end;

//004E50E0
{*function sub_004E50E0(?:TCustomMPHexEditor; ?:?; ?:?):?;
begin
 004E50E0    push        ebp
 004E50E1    mov         ebp,esp
 004E50E3    add         esp,0FFFFFFEC
 004E50E6    mov         dword ptr [ebp-0C],ecx
 004E50E9    mov         dword ptr [ebp-8],edx
 004E50EC    mov         dword ptr [ebp-4],eax
 004E50EF    mov         dword ptr [ebp-10],0FFFFFFFF
 004E50F6    mov         eax,dword ptr [ebp-4]
 004E50F9    call        004E4A74
 004E50FE    mov         dword ptr [ebp-14],eax
 004E5101    mov         eax,dword ptr [ebp-0C]
 004E5104    sub         eax,1
>004E5107    jb          004E5110
>004E5109    je          004E5118
 004E510B    dec         eax
>004E510C    je          004E5128
>004E510E    jmp         004E5137
 004E5110    mov         eax,dword ptr [ebp-8]
 004E5113    mov         dword ptr [ebp-14],eax
>004E5116    jmp         004E5137
 004E5118    mov         eax,dword ptr [ebp-4]
 004E511B    call        004E4A74
 004E5120    add         eax,dword ptr [ebp-8]
 004E5123    mov         dword ptr [ebp-14],eax
>004E5126    jmp         004E5137
 004E5128    mov         eax,dword ptr [ebp-4]
 004E512B    call        004E0588
 004E5130    add         eax,dword ptr [ebp-8]
 004E5133    dec         eax
 004E5134    mov         dword ptr [ebp-14],eax
 004E5137    mov         eax,dword ptr [ebp-4]
 004E513A    call        004E0588
 004E513F    dec         eax
>004E5140    jl          004E5172
 004E5142    mov         edx,dword ptr [ebp-14]
 004E5145    xor         eax,eax
 004E5147    call        004DF5E8
 004E514C    push        eax
 004E514D    mov         eax,dword ptr [ebp-4]
 004E5150    call        004E0588
 004E5155    mov         edx,eax
 004E5157    dec         edx
 004E5158    pop         eax
 004E5159    call        004DF5BC
 004E515E    mov         dword ptr [ebp-14],eax
 004E5161    mov         edx,dword ptr [ebp-14]
 004E5164    mov         eax,dword ptr [ebp-4]
 004E5167    call        004E3E9C
 004E516C    mov         eax,dword ptr [ebp-14]
 004E516F    mov         dword ptr [ebp-10],eax
 004E5172    mov         eax,dword ptr [ebp-10]
 004E5175    mov         esp,ebp
 004E5177    pop         ebp
 004E5178    ret
end;*}

//004E517C
procedure TMPHexEditorEx.SetSwapNibbles(Value:Boolean);
begin
{*
 004E517C    push        ebp
 004E517D    mov         ebp,esp
 004E517F    add         esp,0FFFFFFF8
 004E5182    mov         byte ptr [ebp-5],dl
 004E5185    mov         dword ptr [ebp-4],eax
 004E5188    xor         eax,eax
 004E518A    mov         al,byte ptr [ebp-5]
 004E518D    mov         edx,dword ptr [ebp-4]
 004E5190    cmp         eax,dword ptr [edx+4E4];TMPHexEditorEx.?f4E4:dword
>004E5196    je          004E51AE
 004E5198    xor         eax,eax
 004E519A    mov         al,byte ptr [ebp-5]
 004E519D    mov         edx,dword ptr [ebp-4]
 004E51A0    mov         dword ptr [edx+4E4],eax;TMPHexEditorEx.?f4E4:dword
 004E51A6    mov         eax,dword ptr [ebp-4]
 004E51A9    mov         edx,dword ptr [eax]
 004E51AB    call        dword ptr [edx+7C];TMPHexEditorEx.sub_0048BE68
 004E51AE    pop         ecx
 004E51AF    pop         ecx
 004E51B0    pop         ebp
 004E51B1    ret
*}
end;

//004E51B4
{*function TMPHexEditorEx.GetSwapNibbles:?;
begin
 004E51B4    push        ebp
 004E51B5    mov         ebp,esp
 004E51B7    add         esp,0FFFFFFF8
 004E51BA    mov         dword ptr [ebp-4],eax
 004E51BD    mov         eax,dword ptr [ebp-4]
 004E51C0    mov         eax,dword ptr [eax+4E4];TMPHexEditorEx.?f4E4:dword
 004E51C6    mov         byte ptr [ebp-5],al
 004E51C9    mov         al,byte ptr [ebp-5]
 004E51CC    pop         ecx
 004E51CD    pop         ecx
 004E51CE    pop         ebp
 004E51CF    ret
end;*}

//004E51D0
procedure TMPHexEditorEx.SetColors(Value:TMPHColors);
begin
{*
 004E51D0    push        ebp
 004E51D1    mov         ebp,esp
 004E51D3    add         esp,0FFFFFFF8
 004E51D6    mov         dword ptr [ebp-8],edx
 004E51D9    mov         dword ptr [ebp-4],eax
 004E51DC    mov         edx,dword ptr [ebp-8]
 004E51DF    mov         eax,dword ptr [ebp-4]
 004E51E2    mov         eax,dword ptr [eax+4D0];TMPHexEditorEx.?f4D0:TMPHColors
 004E51E8    mov         ecx,dword ptr [eax]
 004E51EA    call        dword ptr [ecx+8];TMPHColors.sub_004E9C34
 004E51ED    pop         ecx
 004E51EE    pop         ecx
 004E51EF    pop         ebp
 004E51F0    ret
*}
end;

//004E51F4
procedure TMPHexEditorEx.SetCaretKind(Value:TMPHCaretKind);
begin
{*
 004E51F4    push        ebp
 004E51F5    mov         ebp,esp
 004E51F7    add         esp,0FFFFFFF8
 004E51FA    push        esi
 004E51FB    mov         byte ptr [ebp-5],dl
 004E51FE    mov         dword ptr [ebp-4],eax
 004E5201    mov         eax,dword ptr [ebp-4]
 004E5204    mov         al,byte ptr [eax+55D];TMPHexEditorEx.?f55D:byte
 004E520A    cmp         al,byte ptr [ebp-5]
>004E520D    je          004E524F
 004E520F    mov         al,byte ptr [ebp-5]
 004E5212    mov         edx,dword ptr [ebp-4]
 004E5215    mov         byte ptr [edx+55D],al;TMPHexEditorEx.?f55D:byte
 004E521B    mov         eax,dword ptr [ebp-4]
 004E521E    mov         si,0FFB5
 004E5222    call        @CallDynaInst;TWinControl.sub_0048C078
 004E5227    test        al,al
>004E5229    je          004E524F
 004E522B    mov         eax,dword ptr [ebp-4]
 004E522E    call        004E4B7C
 004E5233    push        0FF
 004E5235    mov         ecx,0FFFFFFCE
 004E523A    mov         edx,0FFFFFFCE
 004E523F    mov         eax,dword ptr [ebp-4]
 004E5242    call        004E5EBC
 004E5247    mov         eax,dword ptr [ebp-4]
 004E524A    mov         edx,dword ptr [eax]
 004E524C    call        dword ptr [edx+7C];TMPHexEditorEx.sub_0048BE68
 004E524F    pop         esi
 004E5250    pop         ecx
 004E5251    pop         ecx
 004E5252    pop         ebp
 004E5253    ret
*}
end;

//004E5254
procedure TMPHexEditorEx.SetFocusFrame(Value:Boolean);
begin
{*
 004E5254    push        ebp
 004E5255    mov         ebp,esp
 004E5257    add         esp,0FFFFFFF8
 004E525A    mov         byte ptr [ebp-5],dl
 004E525D    mov         dword ptr [ebp-4],eax
 004E5260    mov         eax,dword ptr [ebp-4]
 004E5263    mov         al,byte ptr [eax+4E8];TMPHexEditorEx.?f4E8:byte
 004E5269    cmp         al,byte ptr [ebp-5]
>004E526C    je          004E5282
 004E526E    mov         al,byte ptr [ebp-5]
 004E5271    mov         edx,dword ptr [ebp-4]
 004E5274    mov         byte ptr [edx+4E8],al;TMPHexEditorEx.?f4E8:byte
 004E527A    mov         eax,dword ptr [ebp-4]
 004E527D    mov         edx,dword ptr [eax]
 004E527F    call        dword ptr [edx+7C];TMPHexEditorEx.sub_0048BE68
 004E5282    pop         ecx
 004E5283    pop         ecx
 004E5284    pop         ebp
 004E5285    ret
*}
end;

//004E5288
procedure TMPHexEditorEx.SetMaskChar(Value:Char);
begin
{*
 004E5288    push        ebp
 004E5289    mov         ebp,esp
 004E528B    add         esp,0FFFFFFF8
 004E528E    mov         byte ptr [ebp-5],dl
 004E5291    mov         dword ptr [ebp-4],eax
 004E5294    mov         eax,dword ptr [ebp-4]
 004E5297    mov         al,byte ptr [eax+55E];TMPHexEditorEx.?f55E:byte
 004E529D    cmp         al,byte ptr [ebp-5]
>004E52A0    je          004E52B6
 004E52A2    mov         al,byte ptr [ebp-5]
 004E52A5    mov         edx,dword ptr [ebp-4]
 004E52A8    mov         byte ptr [edx+55E],al;TMPHexEditorEx.?f55E:byte
 004E52AE    mov         eax,dword ptr [ebp-4]
 004E52B1    mov         edx,dword ptr [eax]
 004E52B3    call        dword ptr [edx+7C];TMPHexEditorEx.sub_0048BE68
 004E52B6    pop         ecx
 004E52B7    pop         ecx
 004E52B8    pop         ebp
 004E52B9    ret
*}
end;

//004E52BC
{*function TMPHexEditorEx.GetInsertMode:?;
begin
 004E52BC    push        ebp
 004E52BD    mov         ebp,esp
 004E52BF    add         esp,0FFFFFFF8
 004E52C2    mov         dword ptr [ebp-4],eax
 004E52C5    mov         eax,dword ptr [ebp-4]
 004E52C8    cmp         byte ptr [eax+4C8],0;TMPHexEditorEx.?f4C8:byte
>004E52CF    je          004E52DD
 004E52D1    mov         eax,dword ptr [ebp-4]
 004E52D4    call        004E9214
 004E52D9    test        al,al
>004E52DB    jne         004E52E1
 004E52DD    xor         eax,eax
>004E52DF    jmp         004E52E3
 004E52E1    mov         al,1
 004E52E3    mov         byte ptr [ebp-5],al
 004E52E6    mov         al,byte ptr [ebp-5]
 004E52E9    pop         ecx
 004E52EA    pop         ecx
 004E52EB    pop         ebp
 004E52EC    ret
end;*}

//004E52F0
procedure TMPHexEditorEx.SetAllowInsertMode(Value:Boolean);
begin
{*
 004E52F0    push        ebp
 004E52F1    mov         ebp,esp
 004E52F3    add         esp,0FFFFFFF8
 004E52F6    mov         byte ptr [ebp-5],dl
 004E52F9    mov         dword ptr [ebp-4],eax
 004E52FC    cmp         byte ptr [ebp-5],0
>004E5300    jne         004E5318
 004E5302    mov         eax,dword ptr [ebp-4]
 004E5305    cmp         byte ptr [eax+4C8],0;TMPHexEditorEx.?f4C8:byte
>004E530C    je          004E5318
 004E530E    xor         edx,edx
 004E5310    mov         eax,dword ptr [ebp-4]
 004E5313    call        TMPHexEditorEx.SetInsertMode
 004E5318    mov         al,byte ptr [ebp-5]
 004E531B    mov         edx,dword ptr [ebp-4]
 004E531E    mov         byte ptr [edx+55F],al;TMPHexEditorEx.?f55F:byte
 004E5324    pop         ecx
 004E5325    pop         ecx
 004E5326    pop         ebp
 004E5327    ret
*}
end;

//004E5328
procedure TMPHexEditorEx.SetNoSizeChange(Value:Boolean);
begin
{*
 004E5328    push        ebp
 004E5329    mov         ebp,esp
 004E532B    add         esp,0FFFFFFF8
 004E532E    mov         byte ptr [ebp-5],dl
 004E5331    mov         dword ptr [ebp-4],eax
 004E5334    mov         al,byte ptr [ebp-5]
 004E5337    mov         edx,dword ptr [ebp-4]
 004E533A    cmp         al,byte ptr [edx+4B8];TMPHexEditorEx.?f4B8:byte
>004E5340    je          004E535E
 004E5342    cmp         byte ptr [ebp-5],0
>004E5346    je          004E5352
 004E5348    xor         edx,edx
 004E534A    mov         eax,dword ptr [ebp-4]
 004E534D    call        TMPHexEditorEx.SetInsertMode
 004E5352    mov         al,byte ptr [ebp-5]
 004E5355    mov         edx,dword ptr [ebp-4]
 004E5358    mov         byte ptr [edx+4B8],al;TMPHexEditorEx.?f4B8:byte
 004E535E    pop         ecx
 004E535F    pop         ecx
 004E5360    pop         ebp
 004E5361    ret
*}
end;

//004E5364
{*procedure sub_004E5364(?:TCustomMPHexEditor; ?:?; ?:?);
begin
 004E5364    push        ebp
 004E5365    mov         ebp,esp
 004E5367    add         esp,0FFFFFFE8
 004E536A    mov         dword ptr [ebp-0C],ecx
 004E536D    mov         byte ptr [ebp-5],dl
 004E5370    mov         dword ptr [ebp-4],eax
 004E5373    mov         eax,dword ptr [ebp-4]
 004E5376    call        004E4A74
 004E537B    mov         edx,dword ptr [ebp-4]
 004E537E    mov         ecx,dword ptr [edx+5F4];TCustomMPHexEditor.?f5F4:Integer
 004E5384    cdq
 004E5385    idiv        eax,ecx
 004E5387    mov         edx,dword ptr [ebp-4]
 004E538A    imul        dword ptr [edx+5F4];TCustomMPHexEditor.?f5F4:Integer
 004E5390    mov         dword ptr [ebp-10],eax
 004E5393    mov         eax,dword ptr [ebp-4]
 004E5396    mov         eax,dword ptr [eax+5F4];TCustomMPHexEditor.?f5F4:Integer
 004E539C    mov         dword ptr [ebp-18],eax
 004E539F    mov         eax,dword ptr [ebp-10]
 004E53A2    mov         dword ptr [ebp-14],eax
 004E53A5    cmp         byte ptr [ebp-5],0
>004E53A9    je          004E54D1
 004E53AF    mov         eax,dword ptr [ebp-4]
 004E53B2    call        TMPHexEditorEx.GetInsertMode
 004E53B7    test        al,al
>004E53B9    je          004E5439
 004E53BB    mov         eax,dword ptr [ebp-4]
 004E53BE    call        004E4AD8
 004E53C3    test        eax,eax
>004E53C5    jne         004E5439
 004E53C7    mov         eax,dword ptr [ebp-4]
 004E53CA    mov         ecx,dword ptr [eax+22C];TCustomMPHexEditor.FCurrent:Longint
 004E53D0    mov         eax,dword ptr [ebp-4]
 004E53D3    mov         edx,dword ptr [eax+228];TCustomMPHexEditor.FCurrent:TGridCoord
 004E53D9    mov         eax,dword ptr [ebp-4]
 004E53DC    call        004E1288
 004E53E1    mov         dword ptr [ebp-10],eax
 004E53E4    mov         eax,dword ptr [ebp-4]
 004E53E7    call        004E0588
 004E53EC    cmp         eax,dword ptr [ebp-10]
>004E53EF    jne         004E5412
 004E53F1    mov         eax,dword ptr [ebp-4]
 004E53F4    call        004E0588
 004E53F9    mov         edx,dword ptr [ebp-4]
 004E53FC    mov         ecx,dword ptr [edx+5F4];TCustomMPHexEditor.?f5F4:Integer
 004E5402    cdq
 004E5403    idiv        eax,ecx
 004E5405    test        edx,edx
>004E5407    je          004E5412
 004E5409    mov         dword ptr [ebp-18],1
>004E5410    jmp         004E5439
 004E5412    mov         eax,dword ptr [ebp-10]
 004E5415    mov         edx,dword ptr [ebp-4]
 004E5418    mov         ecx,dword ptr [edx+5F4];TCustomMPHexEditor.?f5F4:Integer
 004E541E    cdq
 004E541F    idiv        eax,ecx
 004E5421    mov         edx,dword ptr [ebp-4]
 004E5424    imul        dword ptr [edx+5F4];TCustomMPHexEditor.?f5F4:Integer
 004E542A    mov         dword ptr [ebp-10],eax
 004E542D    mov         eax,dword ptr [ebp-4]
 004E5430    mov         eax,dword ptr [eax+5F4];TCustomMPHexEditor.?f5F4:Integer
 004E5436    mov         dword ptr [ebp-18],eax
 004E5439    cmp         dword ptr [ebp-10],0
>004E543D    je          004E553C
 004E5443    mov         eax,dword ptr [ebp-18]
 004E5446    push        eax
 004E5447    push        0
 004E5449    mov         eax,dword ptr [ebp-0C]
 004E544C    push        eax
 004E544D    mov         ecx,dword ptr [ebp-10]
 004E5450    sub         ecx,dword ptr [ebp-18]
 004E5453    mov         dl,1
 004E5455    mov         eax,dword ptr [ebp-4]
 004E5458    call        004E3CA4
 004E545D    mov         eax,dword ptr [ebp-4]
 004E5460    mov         eax,dword ptr [eax+228];TCustomMPHexEditor.FCurrent:TGridCoord
 004E5466    push        eax
 004E5467    mov         eax,dword ptr [ebp-4]
 004E546A    mov         eax,dword ptr [eax+22C];TCustomMPHexEditor.FCurrent:Longint
 004E5470    push        eax
 004E5471    mov         edx,dword ptr [ebp-10]
 004E5474    sub         edx,dword ptr [ebp-18]
 004E5477    mov         ecx,dword ptr [ebp-10]
 004E547A    mov         eax,dword ptr [ebp-4]
 004E547D    call        004E3AE0
 004E5482    mov         eax,dword ptr [ebp-14]
 004E5485    cmp         eax,dword ptr [ebp-10]
>004E5488    jne         004E549C
 004E548A    mov         edx,dword ptr [ebp-10]
 004E548D    sub         edx,dword ptr [ebp-18]
 004E5490    xor         ecx,ecx
 004E5492    mov         eax,dword ptr [ebp-4]
 004E5495    call        004E50E0
>004E549A    jmp         004E54C4
 004E549C    mov         eax,dword ptr [ebp-4]
 004E549F    call        004E5740
 004E54A4    mov         edx,dword ptr [ebp-4]
 004E54A7    mov         edx,dword ptr [edx+228];TCustomMPHexEditor.FCurrent:TGridCoord
 004E54AD    inc         edx
 004E54AE    cmp         eax,edx
>004E54B0    jl          004E54C4
 004E54B2    mov         eax,dword ptr [ebp-4]
 004E54B5    mov         edx,dword ptr [eax+228];TCustomMPHexEditor.FCurrent:TGridCoord
 004E54BB    inc         edx
 004E54BC    mov         eax,dword ptr [ebp-4]
 004E54BF    call        004DD59C
 004E54C4    mov         eax,dword ptr [ebp-4]
 004E54C7    mov         edx,dword ptr [eax]
 004E54C9    call        dword ptr [edx+0EC];TCustomMPHexEditor.sub_004E87E8
>004E54CF    jmp         004E553C
 004E54D1    mov         eax,dword ptr [ebp-4]
 004E54D4    call        004E0588
 004E54D9    cmp         eax,dword ptr [ebp-10]
>004E54DC    jle         004E553C
>004E54DE    jmp         004E54E3
 004E54E0    dec         dword ptr [ebp-18]
 004E54E3    mov         eax,dword ptr [ebp-4]
 004E54E6    call        004E0588
 004E54EB    mov         edx,dword ptr [ebp-10]
 004E54EE    add         edx,dword ptr [ebp-18]
 004E54F1    cmp         eax,edx
>004E54F3    jl          004E54E0
 004E54F5    mov         eax,dword ptr [ebp-18]
 004E54F8    push        eax
 004E54F9    push        0
 004E54FB    mov         eax,dword ptr [ebp-0C]
 004E54FE    push        eax
 004E54FF    mov         ecx,dword ptr [ebp-10]
 004E5502    mov         dl,1
 004E5504    mov         eax,dword ptr [ebp-4]
 004E5507    call        004E3CA4
 004E550C    mov         eax,dword ptr [ebp-4]
 004E550F    mov         eax,dword ptr [eax+228];TCustomMPHexEditor.FCurrent:TGridCoord
 004E5515    push        eax
 004E5516    mov         eax,dword ptr [ebp-4]
 004E5519    mov         eax,dword ptr [eax+22C];TCustomMPHexEditor.FCurrent:Longint
 004E551F    push        eax
 004E5520    mov         ecx,dword ptr [ebp-10]
 004E5523    add         ecx,dword ptr [ebp-18]
 004E5526    mov         edx,dword ptr [ebp-10]
 004E5529    mov         eax,dword ptr [ebp-4]
 004E552C    call        004E3AE0
 004E5531    mov         eax,dword ptr [ebp-4]
 004E5534    mov         edx,dword ptr [eax]
 004E5536    call        dword ptr [edx+0EC];TCustomMPHexEditor.sub_004E87E8
 004E553C    mov         esp,ebp
 004E553E    pop         ebp
 004E553F    ret
end;*}

//004E5540
{*procedure TCustomMPHexEditor.WMGetDlgCode(?:?);
begin
 004E5540    push        ebp
 004E5541    mov         ebp,esp
 004E5543    add         esp,0FFFFFFF8
 004E5546    mov         dword ptr [ebp-8],edx
 004E5549    mov         dword ptr [ebp-4],eax
 004E554C    mov         edx,dword ptr [ebp-8]
 004E554F    mov         eax,dword ptr [ebp-4]
 004E5552    call        TCustomGrid.WMGetDlgCode
 004E5557    mov         eax,dword ptr [ebp-8]
 004E555A    mov         eax,dword ptr [eax+0C]
 004E555D    or          eax,1
 004E5560    or          eax,80
 004E5565    or          eax,4
 004E5568    mov         edx,dword ptr [ebp-8]
 004E556B    mov         dword ptr [edx+0C],eax
 004E556E    mov         eax,dword ptr [ebp-4]
 004E5571    cmp         byte ptr [eax+560],0;TCustomMPHexEditor.?f560:byte
>004E5578    je          004E5583
 004E557A    mov         eax,dword ptr [ebp-8]
 004E557D    or          dword ptr [eax+0C],2
>004E5581    jmp         004E558A
 004E5583    mov         eax,dword ptr [ebp-8]
 004E5586    and         dword ptr [eax+0C],0FFFFFFFD
 004E558A    pop         ecx
 004E558B    pop         ecx
 004E558C    pop         ebp
 004E558D    ret
end;*}

//004E5590
{*procedure TCustomMPHexEditor.CMFontChanged(?:?);
begin
 004E5590    push        ebp
 004E5591    mov         ebp,esp
 004E5593    add         esp,0FFFFFFF8
 004E5596    push        esi
 004E5597    mov         dword ptr [ebp-8],edx
 004E559A    mov         dword ptr [ebp-4],eax
 004E559D    mov         edx,dword ptr [ebp-8]
 004E55A0    mov         eax,dword ptr [ebp-4]
 004E55A3    call        TCustomGrid.CMFontChanged
 004E55A8    mov         eax,dword ptr [ebp-4]
 004E55AB    call        TWinControl.HandleAllocated
 004E55B0    test        al,al
>004E55B2    je          004E55D4
 004E55B4    mov         eax,dword ptr [ebp-4]
 004E55B7    call        004E025C
 004E55BC    mov         eax,dword ptr [ebp-4]
 004E55BF    mov         si,0FFB5
 004E55C3    call        @CallDynaInst;TWinControl.sub_0048C078
 004E55C8    test        al,al
>004E55CA    je          004E55D4
 004E55CC    mov         eax,dword ptr [ebp-4]
 004E55CF    call        004E4B7C
 004E55D4    pop         esi
 004E55D5    pop         ecx
 004E55D6    pop         ecx
 004E55D7    pop         ebp
 004E55D8    ret
end;*}

//004E55DC
procedure TMPHexEditorEx.SetWantTabs(Value:Boolean);
begin
{*
 004E55DC    push        ebp
 004E55DD    mov         ebp,esp
 004E55DF    add         esp,0FFFFFFF8
 004E55E2    mov         byte ptr [ebp-5],dl
 004E55E5    mov         dword ptr [ebp-4],eax
 004E55E8    mov         al,byte ptr [ebp-5]
 004E55EB    mov         edx,dword ptr [ebp-4]
 004E55EE    mov         byte ptr [edx+560],al;TMPHexEditorEx.?f560:byte
 004E55F4    pop         ecx
 004E55F5    pop         ecx
 004E55F6    pop         ebp
 004E55F7    ret
*}
end;

//004E55F8
procedure TMPHexEditorEx.SetReadOnlyView(Value:Boolean);
begin
{*
 004E55F8    push        ebp
 004E55F9    mov         ebp,esp
 004E55FB    add         esp,0FFFFFFF8
 004E55FE    push        esi
 004E55FF    mov         byte ptr [ebp-5],dl
 004E5602    mov         dword ptr [ebp-4],eax
 004E5605    mov         al,byte ptr [ebp-5]
 004E5608    mov         edx,dword ptr [ebp-4]
 004E560B    mov         byte ptr [edx+561],al;TMPHexEditorEx.?f561:byte
 004E5611    mov         eax,dword ptr [ebp-4]
 004E5614    cmp         byte ptr [eax+55D],3;TMPHexEditorEx.?f55D:byte
>004E561B    jne         004E5635
 004E561D    mov         eax,dword ptr [ebp-4]
 004E5620    mov         si,0FFB5
 004E5624    call        @CallDynaInst;TWinControl.sub_0048C078
 004E5629    test        al,al
>004E562B    je          004E5635
 004E562D    mov         eax,dword ptr [ebp-4]
 004E5630    call        004E4B7C
 004E5635    pop         esi
 004E5636    pop         ecx
 004E5637    pop         ecx
 004E5638    pop         ebp
 004E5639    ret
*}
end;

//004E563C
procedure TMPHexEditorEx.SetHideSelection(Value:Boolean);
begin
{*
 004E563C    push        ebp
 004E563D    mov         ebp,esp
 004E563F    add         esp,0FFFFFFF8
 004E5642    push        esi
 004E5643    mov         byte ptr [ebp-5],dl
 004E5646    mov         dword ptr [ebp-4],eax
 004E5649    mov         eax,dword ptr [ebp-4]
 004E564C    mov         al,byte ptr [eax+562];TMPHexEditorEx.?f562:byte
 004E5652    cmp         al,byte ptr [ebp-5]
>004E5655    je          004E5687
 004E5657    mov         al,byte ptr [ebp-5]
 004E565A    mov         edx,dword ptr [ebp-4]
 004E565D    mov         byte ptr [edx+562],al;TMPHexEditorEx.?f562:byte
 004E5663    mov         eax,dword ptr [ebp-4]
 004E5666    mov         si,0FFB5
 004E566A    call        @CallDynaInst;TWinControl.sub_0048C078
 004E566F    test        al,al
>004E5671    jne         004E5687
 004E5673    mov         eax,dword ptr [ebp-4]
 004E5676    call        004E4AD8
 004E567B    test        eax,eax
>004E567D    jle         004E5687
 004E567F    mov         eax,dword ptr [ebp-4]
 004E5682    mov         edx,dword ptr [eax]
 004E5684    call        dword ptr [edx+7C];TMPHexEditorEx.sub_0048BE68
 004E5687    pop         esi
 004E5688    pop         ecx
 004E5689    pop         ecx
 004E568A    pop         ebp
 004E568B    ret
*}
end;

//004E568C
procedure TMPHexEditorEx.SetGraySelectionIfNotFocused(Value:Boolean);
begin
{*
 004E568C    push        ebp
 004E568D    mov         ebp,esp
 004E568F    add         esp,0FFFFFFF8
 004E5692    push        esi
 004E5693    mov         byte ptr [ebp-5],dl
 004E5696    mov         dword ptr [ebp-4],eax
 004E5699    mov         eax,dword ptr [ebp-4]
 004E569C    mov         al,byte ptr [eax+563];TMPHexEditorEx.?f563:byte
 004E56A2    cmp         al,byte ptr [ebp-5]
>004E56A5    je          004E56E3
 004E56A7    mov         al,byte ptr [ebp-5]
 004E56AA    mov         edx,dword ptr [ebp-4]
 004E56AD    mov         byte ptr [edx+563],al;TMPHexEditorEx.?f563:byte
 004E56B3    mov         eax,dword ptr [ebp-4]
 004E56B6    mov         si,0FFB5
 004E56BA    call        @CallDynaInst;TWinControl.sub_0048C078
 004E56BF    test        al,al
>004E56C1    jne         004E56E3
 004E56C3    mov         eax,dword ptr [ebp-4]
 004E56C6    call        004E4AD8
 004E56CB    test        eax,eax
>004E56CD    jle         004E56E3
 004E56CF    mov         eax,dword ptr [ebp-4]
 004E56D2    cmp         byte ptr [eax+562],0;TMPHexEditorEx.?f562:byte
>004E56D9    jne         004E56E3
 004E56DB    mov         eax,dword ptr [ebp-4]
 004E56DE    mov         edx,dword ptr [eax]
 004E56E0    call        dword ptr [edx+7C];TMPHexEditorEx.sub_0048BE68
 004E56E3    pop         esi
 004E56E4    pop         ecx
 004E56E5    pop         ecx
 004E56E6    pop         ebp
 004E56E7    ret
*}
end;

//004E56E8
{*function sub_004E56E8(?:TCustomMPHexEditor):?;
begin
 004E56E8    push        ebp
 004E56E9    mov         ebp,esp
 004E56EB    add         esp,0FFFFFFF8
 004E56EE    mov         dword ptr [ebp-4],eax
 004E56F1    mov         eax,dword ptr [ebp-4]
 004E56F4    cmp         byte ptr [eax+61C],0;TCustomMPHexEditor.?f61C:byte
>004E56FB    je          004E5723
 004E56FD    mov         eax,dword ptr [ebp-4]
 004E5700    mov         eax,dword ptr [eax+4D4];TCustomMPHexEditor.?f4D4:Integer
 004E5706    add         eax,eax
 004E5708    mov         edx,dword ptr [ebp-4]
 004E570B    mov         edx,dword ptr [edx+4D4];TCustomMPHexEditor.?f4D4:Integer
 004E5711    sar         edx,1
>004E5713    jns         004E5718
 004E5715    adc         edx,0
 004E5718    add         eax,edx
 004E571A    inc         eax
 004E571B    add         eax,2
 004E571E    mov         dword ptr [ebp-8],eax
>004E5721    jmp         004E5736
 004E5723    mov         eax,dword ptr [ebp-4]
 004E5726    mov         eax,dword ptr [eax+4D4];TCustomMPHexEditor.?f4D4:Integer
 004E572C    lea         eax,[eax+eax*2]
 004E572F    inc         eax
 004E5730    add         eax,2
 004E5733    mov         dword ptr [ebp-8],eax
 004E5736    mov         eax,dword ptr [ebp-8]
 004E5739    pop         ecx
 004E573A    pop         ecx
 004E573B    pop         ebp
 004E573C    ret
end;*}

//004E5740
{*function sub_004E5740(?:TCustomMPHexEditor):?;
begin
 004E5740    push        ebp
 004E5741    mov         ebp,esp
 004E5743    add         esp,0FFFFFFF8
 004E5746    mov         dword ptr [ebp-4],eax
 004E5749    mov         eax,dword ptr [ebp-4]
 004E574C    mov         eax,dword ptr [eax+21C];TCustomMPHexEditor.FColCount:Longint
 004E5752    dec         eax
 004E5753    mov         dword ptr [ebp-8],eax
 004E5756    mov         eax,dword ptr [ebp-8]
 004E5759    pop         ecx
 004E575A    pop         ecx
 004E575B    pop         ebp
 004E575C    ret
end;*}

//004E5760
{*function sub_004E5760(?:?; ?:?; ?:?):?;
begin
 004E5760    push        ebp
 004E5761    mov         ebp,esp
 004E5763    add         esp,0FFFFFFD4
 004E5766    mov         dword ptr [ebp-0C],ecx
 004E5769    mov         dword ptr [ebp-8],edx
 004E576C    mov         dword ptr [ebp-4],eax
 004E576F    lea         eax,[ebp-24]
 004E5772    push        eax
 004E5773    mov         ecx,dword ptr [ebp-0C]
 004E5776    mov         edx,dword ptr [ebp-8]
 004E5779    mov         eax,dword ptr [ebp-4]
 004E577C    call        004D8C70
 004E5781    mov         eax,dword ptr [ebp-24]
 004E5784    mov         dword ptr [ebp-18],eax
 004E5787    mov         eax,dword ptr [ebp-20]
 004E578A    mov         dword ptr [ebp-1C],eax
 004E578D    cmp         dword ptr [ebp-24],2
>004E5791    jge         004E579A
 004E5793    mov         dword ptr [ebp-24],2
 004E579A    mov         eax,dword ptr [ebp-20]
 004E579D    mov         edx,dword ptr [ebp-4]
 004E57A0    cmp         eax,dword ptr [edx+24C]
>004E57A6    jl          004E57B5
 004E57A8    mov         eax,dword ptr [ebp-4]
 004E57AB    mov         eax,dword ptr [eax+24C]
 004E57B1    dec         eax
 004E57B2    mov         dword ptr [ebp-20],eax
 004E57B5    cmp         dword ptr [ebp-20],2
>004E57B9    jge         004E57C2
 004E57BB    mov         dword ptr [ebp-20],2
 004E57C2    mov         ecx,dword ptr [ebp-20]
 004E57C5    mov         edx,dword ptr [ebp-24]
 004E57C8    mov         eax,dword ptr [ebp-4]
 004E57CB    call        004E1288
 004E57D0    mov         dword ptr [ebp-14],eax
 004E57D3    cmp         dword ptr [ebp-14],0
>004E57D7    jge         004E57DE
 004E57D9    xor         eax,eax
 004E57DB    mov         dword ptr [ebp-14],eax
 004E57DE    mov         eax,dword ptr [ebp-4]
 004E57E1    call        004E0588
 004E57E6    cmp         eax,dword ptr [ebp-14]
>004E57E9    jge         004E57F6
 004E57EB    mov         eax,dword ptr [ebp-4]
 004E57EE    call        004E0588
 004E57F3    mov         dword ptr [ebp-14],eax
 004E57F6    mov         edx,dword ptr [ebp-14]
 004E57F9    mov         eax,dword ptr [ebp-4]
 004E57FC    call        004E2988
 004E5801    test        al,al
>004E5803    je          004E581F
 004E5805    mov         eax,dword ptr [ebp-4]
 004E5808    call        004E3E34
 004E580D    push        eax
 004E580E    mov         eax,dword ptr [ebp-4]
 004E5811    call        004E3DEC
 004E5816    pop         edx
 004E5817    call        004DF5BC
 004E581C    mov         dword ptr [ebp-14],eax
 004E581F    lea         edx,[ebp-14]
 004E5822    mov         eax,dword ptr [ebp-4]
 004E5825    call        004E8CF8
 004E582A    mov         eax,dword ptr [ebp-14]
 004E582D    mov         dword ptr [ebp-10],eax
 004E5830    mov         eax,dword ptr [ebp-4]
 004E5833    mov         byte ptr [eax+578],1
 004E583A    mov         eax,dword ptr [ebp-1C]
 004E583D    mov         edx,dword ptr [ebp-4]
 004E5840    cmp         eax,dword ptr [edx+25C]
>004E5846    jg          004E5862
 004E5848    cmp         dword ptr [ebp-1C],2
>004E584C    jle         004E5862
 004E584E    mov         eax,dword ptr [ebp-4]
 004E5851    mov         edx,dword ptr [eax+25C]
 004E5857    dec         edx
 004E5858    mov         eax,dword ptr [ebp-4]
 004E585B    call        004DDBE8
>004E5860    jmp         004E589A
 004E5862    mov         eax,dword ptr [ebp-4]
 004E5865    call        004DD53C
 004E586A    mov         edx,dword ptr [ebp-4]
 004E586D    add         eax,dword ptr [edx+25C]
 004E5873    dec         eax
 004E5874    cmp         eax,dword ptr [ebp-1C]
>004E5877    jg          004E589A
 004E5879    mov         eax,dword ptr [ebp-4]
 004E587C    mov         eax,dword ptr [eax+24C]
 004E5882    dec         eax
 004E5883    cmp         eax,dword ptr [ebp-1C]
>004E5886    jle         004E589A
 004E5888    mov         eax,dword ptr [ebp-4]
 004E588B    mov         edx,dword ptr [eax+25C]
 004E5891    inc         edx
 004E5892    mov         eax,dword ptr [ebp-4]
 004E5895    call        004DDBE8
 004E589A    mov         eax,dword ptr [ebp-18]
 004E589D    mov         edx,dword ptr [ebp-4]
 004E58A0    cmp         eax,dword ptr [edx+258]
>004E58A6    jg          004E58C2
 004E58A8    cmp         dword ptr [ebp-18],2
>004E58AC    jle         004E58C2
 004E58AE    mov         eax,dword ptr [ebp-4]
 004E58B1    mov         edx,dword ptr [eax+258]
 004E58B7    dec         edx
 004E58B8    mov         eax,dword ptr [ebp-4]
 004E58BB    call        004DD97C
>004E58C0    jmp         004E58F8
 004E58C2    mov         eax,dword ptr [ebp-4]
 004E58C5    call        004DD510
 004E58CA    mov         edx,dword ptr [ebp-4]
 004E58CD    add         eax,dword ptr [edx+258]
 004E58D3    dec         eax
 004E58D4    cmp         eax,dword ptr [ebp-18]
>004E58D7    jg          004E58F8
 004E58D9    mov         eax,dword ptr [ebp-4]
 004E58DC    call        004E5740
 004E58E1    cmp         eax,dword ptr [ebp-18]
>004E58E4    jle         004E58F8
 004E58E6    mov         eax,dword ptr [ebp-4]
 004E58E9    mov         edx,dword ptr [eax+258]
 004E58EF    inc         edx
 004E58F0    mov         eax,dword ptr [ebp-4]
 004E58F3    call        004DD97C
 004E58F8    lea         eax,[ebp-2C]
 004E58FB    push        eax
 004E58FC    mov         eax,dword ptr [ebp-4]
 004E58FF    mov         cl,byte ptr [eax+4F0]
 004E5905    mov         edx,dword ptr [ebp-14]
 004E5908    mov         eax,dword ptr [ebp-4]
 004E590B    call        004E1344
 004E5910    mov         eax,dword ptr [ebp-2C]
 004E5913    mov         edx,dword ptr [ebp-4]
 004E5916    cmp         eax,dword ptr [edx+57C]
>004E591C    jne         004E592C
 004E591E    mov         eax,dword ptr [ebp-28]
 004E5921    mov         edx,dword ptr [ebp-4]
 004E5924    cmp         eax,dword ptr [edx+580]
>004E592A    je          004E594C
 004E592C    mov         eax,dword ptr [ebp-2C]
 004E592F    mov         edx,dword ptr [ebp-4]
 004E5932    mov         dword ptr [edx+57C],eax
 004E5938    mov         eax,dword ptr [ebp-28]
 004E593B    mov         edx,dword ptr [ebp-4]
 004E593E    mov         dword ptr [edx+580],eax
 004E5944    mov         eax,dword ptr [ebp-4]
 004E5947    mov         edx,dword ptr [eax]
 004E5949    call        dword ptr [edx+7C]
 004E594C    mov         eax,dword ptr [ebp-10]
 004E594F    mov         esp,ebp
 004E5951    pop         ebp
 004E5952    ret
end;*}

//004E5954
procedure sub_004E5954(?:TCustomMPHexEditor);
begin
{*
 004E5954    push        ebp
 004E5955    mov         ebp,esp
 004E5957    push        ecx
 004E5958    mov         dword ptr [ebp-4],eax
 004E595B    mov         eax,dword ptr [ebp-4]
 004E595E    mov         byte ptr [eax+578],0
 004E5965    mov         eax,dword ptr [ebp-4]
 004E5968    mov         edx,dword ptr [eax]
 004E596A    call        dword ptr [edx+7C]
 004E596D    pop         ecx
 004E596E    pop         ebp
 004E596F    ret
*}
end;

//004E5970
{*procedure sub_004E5970(?:TMPHexEditorEx; ?:?; ?:?);
begin
 004E5970    push        ebp
 004E5971    mov         ebp,esp
 004E5973    add         esp,0FFFFFFF4
 004E5976    mov         dword ptr [ebp-0C],ecx
 004E5979    mov         dword ptr [ebp-8],edx
 004E597C    mov         dword ptr [ebp-4],eax
 004E597F    mov         eax,dword ptr [ebp-8]
 004E5982    push        eax
 004E5983    push        0
 004E5985    mov         eax,dword ptr [ebp-0C]
 004E5988    push        eax
 004E5989    xor         ecx,ecx
 004E598B    mov         dl,9
 004E598D    mov         eax,dword ptr [ebp-4]
 004E5990    call        004E3CA4
 004E5995    mov         esp,ebp
 004E5997    pop         ebp
 004E5998    ret
end;*}

//004E599C
{*function sub_004E599C(?:TCustomMPHexEditor):?;
begin
 004E599C    push        ebp
 004E599D    mov         ebp,esp
 004E599F    add         esp,0FFFFFFE8
 004E59A2    mov         dword ptr [ebp-4],eax
 004E59A5    lea         eax,[ebp-0D]
 004E59A8    push        eax
 004E59A9    call        user32.GetCursorPos
 004E59AE    lea         ecx,[ebp-18]
 004E59B1    lea         edx,[ebp-0D]
 004E59B4    mov         eax,dword ptr [ebp-4]
 004E59B7    call        TControl.ScreenToClient
 004E59BC    mov         eax,dword ptr [ebp-18]
 004E59BF    mov         dword ptr [ebp-0D],eax
 004E59C2    mov         eax,dword ptr [ebp-14]
 004E59C5    mov         dword ptr [ebp-9],eax
 004E59C8    mov         ecx,dword ptr [ebp-9]
 004E59CB    mov         edx,dword ptr [ebp-0D]
 004E59CE    mov         eax,dword ptr [ebp-4]
 004E59D1    call        004E59E0
 004E59D6    mov         byte ptr [ebp-5],al
 004E59D9    mov         al,byte ptr [ebp-5]
 004E59DC    mov         esp,ebp
 004E59DE    pop         ebp
 004E59DF    ret
end;*}

//004E59E0
{*function sub_004E59E0(?:TCustomMPHexEditor; ?:TPoint; ?:?):?;
begin
 004E59E0    push        ebp
 004E59E1    mov         ebp,esp
 004E59E3    add         esp,0FFFFFFE0
 004E59E6    mov         dword ptr [ebp-0C],ecx
 004E59E9    mov         dword ptr [ebp-8],edx
 004E59EC    mov         dword ptr [ebp-4],eax
 004E59EF    mov         byte ptr [ebp-0D],0
 004E59F3    mov         eax,dword ptr [ebp-4]
 004E59F6    call        004E4AD8
 004E59FB    test        eax,eax
>004E59FD    je          004E5A73
 004E59FF    mov         eax,dword ptr [ebp-4]
 004E5A02    call        004E0588
 004E5A07    test        eax,eax
>004E5A09    je          004E5A73
 004E5A0B    mov         eax,dword ptr [ebp-4]
 004E5A0E    mov         al,byte ptr [eax+4F0];TCustomMPHexEditor.?f4F0:byte
 004E5A14    mov         byte ptr [ebp-15],al
 004E5A17    lea         eax,[ebp-20]
 004E5A1A    push        eax
 004E5A1B    mov         ecx,dword ptr [ebp-0C]
 004E5A1E    mov         edx,dword ptr [ebp-8]
 004E5A21    mov         eax,dword ptr [ebp-4]
 004E5A24    call        004D8C70
 004E5A29    cmp         dword ptr [ebp-20],2
>004E5A2D    jl          004E5A73
 004E5A2F    cmp         dword ptr [ebp-1C],2
>004E5A33    jl          004E5A73
 004E5A35    mov         ecx,dword ptr [ebp-1C]
 004E5A38    mov         edx,dword ptr [ebp-20]
 004E5A3B    mov         eax,dword ptr [ebp-4]
 004E5A3E    call        004E1288
 004E5A43    mov         dword ptr [ebp-14],eax
 004E5A46    mov         al,byte ptr [ebp-15]
 004E5A49    mov         edx,dword ptr [ebp-4]
 004E5A4C    mov         byte ptr [edx+4F0],al;TCustomMPHexEditor.?f4F0:byte
 004E5A52    cmp         dword ptr [ebp-14],0
>004E5A56    jl          004E5A73
 004E5A58    mov         eax,dword ptr [ebp-4]
 004E5A5B    call        004E0588
 004E5A60    cmp         eax,dword ptr [ebp-14]
>004E5A63    jle         004E5A73
 004E5A65    mov         edx,dword ptr [ebp-14]
 004E5A68    mov         eax,dword ptr [ebp-4]
 004E5A6B    call        004E2988
 004E5A70    mov         byte ptr [ebp-0D],al
 004E5A73    mov         al,byte ptr [ebp-0D]
 004E5A76    mov         esp,ebp
 004E5A78    pop         ebp
 004E5A79    ret
end;*}

//004E5A7C
{*function sub_004E5A7C(?:TCustomMPHexEditor; ?:?; ?:?):?;
begin
 004E5A7C    push        ebp
 004E5A7D    mov         ebp,esp
 004E5A7F    add         esp,0FFFFFFE8
 004E5A82    mov         dword ptr [ebp-0C],ecx
 004E5A85    mov         dword ptr [ebp-8],edx
 004E5A88    mov         dword ptr [ebp-4],eax
 004E5A8B    lea         eax,[ebp-18]
 004E5A8E    push        eax
 004E5A8F    mov         ecx,dword ptr [ebp-0C]
 004E5A92    mov         edx,dword ptr [ebp-8]
 004E5A95    mov         eax,dword ptr [ebp-4]
 004E5A98    call        004D8C70
 004E5A9D    cmp         dword ptr [ebp-18],2
>004E5AA1    jl          004E5AAD
 004E5AA3    cmp         dword ptr [ebp-14],2
>004E5AA7    jl          004E5AAD
 004E5AA9    xor         eax,eax
>004E5AAB    jmp         004E5AAF
 004E5AAD    mov         al,1
 004E5AAF    mov         byte ptr [ebp-0D],al
 004E5AB2    mov         al,byte ptr [ebp-0D]
 004E5AB5    mov         esp,ebp
 004E5AB7    pop         ebp
 004E5AB8    ret
end;*}

//004E5ABC
{*procedure TCustomMPHexEditor.sub_004858F4(?:?; ?:?; ?:?);
begin
 004E5ABC    push        ebp
 004E5ABD    mov         ebp,esp
 004E5ABF    add         esp,0FFFFFFEC
 004E5AC2    mov         dword ptr [ebp-0C],ecx
 004E5AC5    mov         byte ptr [ebp-5],dl
 004E5AC8    mov         dword ptr [ebp-4],eax
 004E5ACB    mov         al,[004E5B80];0x8 gvar_004E5B80
 004E5AD0    cmp         al,byte ptr [ebp-5]
>004E5AD3    jne         004E5AE7
 004E5AD5    lea         eax,[ebp-14]
 004E5AD8    push        eax
 004E5AD9    lea         ecx,[ebp+8]
 004E5ADC    lea         edx,[ebp-0C]
 004E5ADF    mov         eax,dword ptr [ebp-4]
 004E5AE2    call        004E5BF0
 004E5AE7    mov         eax,dword ptr [ebp+8]
 004E5AEA    push        eax
 004E5AEB    mov         ecx,dword ptr [ebp-0C]
 004E5AEE    mov         dl,byte ptr [ebp-5]
 004E5AF1    mov         eax,dword ptr [ebp-4]
 004E5AF4    call        TCustomGrid.sub_004858F4
 004E5AF9    mov         eax,dword ptr [ebp-4]
 004E5AFC    cmp         byte ptr [eax+615],0;TCustomMPHexEditor.?f615:byte
>004E5B03    je          004E5B30
 004E5B05    mov         eax,dword ptr [ebp-14]
 004E5B08    mov         edx,dword ptr [ebp-4]
 004E5B0B    cmp         eax,dword ptr [edx+570];TCustomMPHexEditor.?f570:dword
>004E5B11    jne         004E5B21
 004E5B13    mov         eax,dword ptr [ebp-10]
 004E5B16    mov         edx,dword ptr [ebp-4]
 004E5B19    cmp         eax,dword ptr [edx+574];TCustomMPHexEditor.?f574:dword
>004E5B1F    je          004E5B25
 004E5B21    xor         eax,eax
>004E5B23    jmp         004E5B27
 004E5B25    mov         al,1
 004E5B27    mov         edx,dword ptr [ebp-4]
 004E5B2A    mov         byte ptr [edx+615],al;TCustomMPHexEditor.?f615:byte
 004E5B30    mov         al,[004E5B84];0x0 gvar_004E5B84
 004E5B35    cmp         al,byte ptr [ebp-5]
>004E5B38    jne         004E5B6C
 004E5B3A    mov         ecx,dword ptr [ebp+8]
 004E5B3D    mov         edx,dword ptr [ebp-0C]
 004E5B40    mov         eax,dword ptr [ebp-4]
 004E5B43    call        004E59E0
 004E5B48    test        al,al
>004E5B4A    jne         004E5B5E
 004E5B4C    mov         ecx,dword ptr [ebp+8]
 004E5B4F    mov         edx,dword ptr [ebp-0C]
 004E5B52    mov         eax,dword ptr [ebp-4]
 004E5B55    call        004E5A7C
 004E5B5A    test        al,al
>004E5B5C    je          004E5B6C
 004E5B5E    mov         dx,0FFFE
 004E5B62    mov         eax,dword ptr [ebp-4]
 004E5B65    call        TSplitter.SetCursor
>004E5B6A    jmp         004E5B78
 004E5B6C    mov         dx,0FFFC
 004E5B70    mov         eax,dword ptr [ebp-4]
 004E5B73    call        TSplitter.SetCursor
 004E5B78    mov         esp,ebp
 004E5B7A    pop         ebp
 004E5B7B    ret         4
end;*}

//004E5B88
{*procedure TCustomMPHexEditor.WMTimer(?:?);
begin
 004E5B88    push        ebp
 004E5B89    mov         ebp,esp
 004E5B8B    add         esp,0FFFFFFE0
 004E5B8E    mov         dword ptr [ebp-8],edx
 004E5B91    mov         dword ptr [ebp-4],eax
 004E5B94    mov         eax,dword ptr [ebp-4]
 004E5B97    cmp         byte ptr [eax+28E],1;TCustomMPHexEditor.FGridState:TGridState
>004E5B9E    jne         004E5BEC
 004E5BA0    lea         eax,[ebp-10]
 004E5BA3    push        eax
 004E5BA4    call        user32.GetCursorPos
 004E5BA9    lea         ecx,[ebp-20]
 004E5BAC    lea         edx,[ebp-10]
 004E5BAF    mov         eax,dword ptr [ebp-4]
 004E5BB2    call        TControl.ScreenToClient
 004E5BB7    mov         eax,dword ptr [ebp-20]
 004E5BBA    mov         dword ptr [ebp-10],eax
 004E5BBD    mov         eax,dword ptr [ebp-1C]
 004E5BC0    mov         dword ptr [ebp-0C],eax
 004E5BC3    lea         eax,[ebp-18]
 004E5BC6    push        eax
 004E5BC7    lea         ecx,[ebp-0C]
 004E5BCA    lea         edx,[ebp-10]
 004E5BCD    mov         eax,dword ptr [ebp-4]
 004E5BD0    call        004E5BF0
 004E5BD5    cmp         dword ptr [ebp-18],0FFFFFFFF
>004E5BD9    je          004E5BEC
 004E5BDB    cmp         dword ptr [ebp-14],0FFFFFFFF
>004E5BDF    je          004E5BEC
 004E5BE1    mov         edx,dword ptr [ebp-8]
 004E5BE4    mov         eax,dword ptr [ebp-4]
 004E5BE7    call        TCustomGrid.WMTimer
 004E5BEC    mov         esp,ebp
 004E5BEE    pop         ebp
 004E5BEF    ret
end;*}

//004E5BF0
{*procedure sub_004E5BF0(?:TCustomMPHexEditor; ?:TPoint; ?:?; ?:?);
begin
 004E5BF0    push        ebp
 004E5BF1    mov         ebp,esp
 004E5BF3    add         esp,0FFFFFFB4
 004E5BF6    push        ebx
 004E5BF7    mov         dword ptr [ebp-0C],ecx
 004E5BFA    mov         dword ptr [ebp-8],edx
 004E5BFD    mov         dword ptr [ebp-4],eax
 004E5C00    mov         eax,dword ptr [ebp+8]
 004E5C03    push        eax
 004E5C04    mov         ecx,dword ptr [ebp-0C]
 004E5C07    mov         ecx,dword ptr [ecx]
 004E5C09    mov         edx,dword ptr [ebp-8]
 004E5C0C    mov         edx,dword ptr [edx]
 004E5C0E    mov         eax,dword ptr [ebp-4]
 004E5C11    call        004D8C70
 004E5C16    mov         eax,dword ptr [ebp-4]
 004E5C19    cmp         byte ptr [eax+4C8],0;TCustomMPHexEditor.?f4C8:byte
>004E5C20    je          004E5D9F
 004E5C26    lea         eax,[ebp-1C]
 004E5C29    push        eax
 004E5C2A    mov         ecx,dword ptr [ebp+8]
 004E5C2D    mov         ecx,dword ptr [ecx+4]
 004E5C30    mov         edx,dword ptr [ebp+8]
 004E5C33    mov         edx,dword ptr [edx]
 004E5C35    mov         eax,dword ptr [ebp-4]
 004E5C38    call        004D8568
 004E5C3D    mov         eax,dword ptr [ebp-4]
 004E5C40    mov         eax,dword ptr [eax+4BC];TCustomMPHexEditor.?f4BC:Integer
 004E5C46    sar         eax,1
>004E5C48    jns         004E5C4D
 004E5C4A    adc         eax,0
 004E5C4D    add         eax,dword ptr [ebp-1C]
 004E5C50    mov         edx,dword ptr [ebp-8]
 004E5C53    cmp         eax,dword ptr [edx]
>004E5C55    jg          004E5CBB
 004E5C57    mov         eax,dword ptr [ebp-4]
 004E5C5A    mov         edx,dword ptr [eax+4DC];TCustomMPHexEditor.?f4DC:dword
 004E5C60    add         edx,2
 004E5C63    dec         edx
 004E5C64    lea         eax,[ebp-3C]
 004E5C67    mov         cl,20
 004E5C69    call        @SetElem
 004E5C6E    mov         eax,dword ptr [ebp-4]
 004E5C71    call        004E5740
 004E5C76    mov         ebx,eax
 004E5C78    cmp         ebx,0FF
>004E5C7E    ja          004E5C84
 004E5C80    bts         dword ptr [ebp-3C],ebx
 004E5C84    mov         eax,dword ptr [ebp+8]
 004E5C87    mov         eax,dword ptr [eax]
 004E5C89    cmp         eax,0FF
>004E5C8E    ja          004E5C94
 004E5C90    bt          dword ptr [ebp-3C],eax
>004E5C94    jb          004E5CBB
 004E5C96    mov         eax,dword ptr [ebp-14]
 004E5C99    inc         eax
 004E5C9A    mov         edx,dword ptr [ebp-8]
 004E5C9D    mov         dword ptr [edx],eax;TPoint.X:Longint
 004E5C9F    mov         eax,dword ptr [ebp+8]
 004E5CA2    inc         dword ptr [eax]
 004E5CA4    lea         eax,[ebp-1C]
 004E5CA7    push        eax
 004E5CA8    mov         ecx,dword ptr [ebp+8]
 004E5CAB    mov         ecx,dword ptr [ecx+4]
 004E5CAE    mov         edx,dword ptr [ebp+8]
 004E5CB1    mov         edx,dword ptr [edx]
 004E5CB3    mov         eax,dword ptr [ebp-4]
 004E5CB6    call        004D8568
 004E5CBB    mov         eax,dword ptr [ebp-4]
 004E5CBE    call        004E5740
 004E5CC3    mov         edx,dword ptr [ebp+8]
 004E5CC6    cmp         eax,dword ptr [edx]
>004E5CC8    jne         004E5D31
 004E5CCA    mov         eax,dword ptr [ebp-8]
 004E5CCD    mov         eax,dword ptr [eax]
 004E5CCF    sub         eax,dword ptr [ebp-1C]
 004E5CD2    mov         edx,dword ptr [ebp-4]
 004E5CD5    mov         edx,dword ptr [edx+4BC];TCustomMPHexEditor.?f4BC:Integer
 004E5CDB    sar         edx,1
>004E5CDD    jns         004E5CE2
 004E5CDF    adc         edx,0
 004E5CE2    cmp         eax,edx
>004E5CE4    jle         004E5D9F
 004E5CEA    mov         eax,dword ptr [ebp-4]
 004E5CED    call        004E6764
 004E5CF2    mov         edx,dword ptr [ebp-0C]
 004E5CF5    add         dword ptr [edx],eax
 004E5CF7    mov         eax,dword ptr [ebp+8]
 004E5CFA    inc         dword ptr [eax+4]
 004E5CFD    mov         eax,dword ptr [ebp-4]
 004E5D00    mov         eax,dword ptr [eax+4DC];TCustomMPHexEditor.?f4DC:dword
 004E5D06    inc         eax
 004E5D07    add         eax,2
 004E5D0A    mov         edx,dword ptr [ebp+8]
 004E5D0D    mov         dword ptr [edx],eax
 004E5D0F    lea         eax,[ebp-4C]
 004E5D12    push        eax
 004E5D13    mov         ecx,dword ptr [ebp+8]
 004E5D16    mov         ecx,dword ptr [ecx+4]
 004E5D19    dec         ecx
 004E5D1A    mov         edx,dword ptr [ebp+8]
 004E5D1D    mov         edx,dword ptr [edx]
 004E5D1F    mov         eax,dword ptr [ebp-4]
 004E5D22    call        004D8568
 004E5D27    mov         eax,dword ptr [ebp-4C]
 004E5D2A    mov         edx,dword ptr [ebp-8]
 004E5D2D    mov         dword ptr [edx],eax;TPoint.X:Longint
>004E5D2F    jmp         004E5D9F
 004E5D31    mov         eax,dword ptr [ebp+8]
 004E5D34    mov         eax,dword ptr [eax]
 004E5D36    mov         edx,dword ptr [ebp-4]
 004E5D39    mov         edx,dword ptr [edx+4DC];TCustomMPHexEditor.?f4DC:dword
 004E5D3F    add         edx,2
 004E5D42    dec         edx
 004E5D43    cmp         eax,edx
>004E5D45    jne         004E5D9F
 004E5D47    mov         eax,dword ptr [ebp-8]
 004E5D4A    mov         eax,dword ptr [eax]
 004E5D4C    sub         eax,dword ptr [ebp-1C]
 004E5D4F    mov         edx,dword ptr [ebp-4]
 004E5D52    mov         edx,dword ptr [edx+4BC];TCustomMPHexEditor.?f4BC:Integer
 004E5D58    sar         edx,1
>004E5D5A    jns         004E5D5F
 004E5D5C    adc         edx,0
 004E5D5F    cmp         eax,edx
>004E5D61    jle         004E5D9F
 004E5D63    mov         eax,dword ptr [ebp-4]
 004E5D66    call        004E6764
 004E5D6B    mov         edx,dword ptr [ebp-0C]
 004E5D6E    add         dword ptr [edx],eax
 004E5D70    mov         eax,dword ptr [ebp+8]
 004E5D73    inc         dword ptr [eax+4]
 004E5D76    mov         eax,dword ptr [ebp+8]
 004E5D79    mov         dword ptr [eax],2
 004E5D7F    lea         eax,[ebp-4C]
 004E5D82    push        eax
 004E5D83    mov         ecx,dword ptr [ebp+8]
 004E5D86    mov         ecx,dword ptr [ecx+4]
 004E5D89    dec         ecx
 004E5D8A    mov         edx,dword ptr [ebp+8]
 004E5D8D    mov         edx,dword ptr [edx]
 004E5D8F    mov         eax,dword ptr [ebp-4]
 004E5D92    call        004D8568
 004E5D97    mov         eax,dword ptr [ebp-4C]
 004E5D9A    mov         edx,dword ptr [ebp-8]
 004E5D9D    mov         dword ptr [edx],eax;TPoint.X:Longint
 004E5D9F    pop         ebx
 004E5DA0    mov         esp,ebp
 004E5DA2    pop         ebp
 004E5DA3    ret         4
end;*}

//004E5DA8
{*procedure TCustomMPHexEditor.sub_004859D0(?:?; ?:?; ?:?; ?:?);
begin
 004E5DA8    push        ebp
 004E5DA9    mov         ebp,esp
 004E5DAB    add         esp,0FFFFFFE8
 004E5DAE    mov         byte ptr [ebp-6],cl
 004E5DB1    mov         byte ptr [ebp-5],dl
 004E5DB4    mov         dword ptr [ebp-4],eax
 004E5DB7    lea         eax,[ebp-18]
 004E5DBA    push        eax
 004E5DBB    lea         ecx,[ebp+8]
 004E5DBE    lea         edx,[ebp+0C]
 004E5DC1    mov         eax,dword ptr [ebp-4]
 004E5DC4    call        004E5BF0
 004E5DC9    mov         eax,dword ptr [ebp+0C]
 004E5DCC    push        eax
 004E5DCD    mov         eax,dword ptr [ebp+8]
 004E5DD0    push        eax
 004E5DD1    mov         cl,byte ptr [ebp-6]
 004E5DD4    mov         dl,byte ptr [ebp-5]
 004E5DD7    mov         eax,dword ptr [ebp-4]
 004E5DDA    call        TCustomGrid.sub_004859D0
 004E5DDF    mov         eax,dword ptr [ebp-4]
 004E5DE2    cmp         byte ptr [eax+615],0;TCustomMPHexEditor.?f615:byte
>004E5DE9    je          004E5E23
 004E5DEB    mov         eax,dword ptr [ebp-4]
 004E5DEE    mov         byte ptr [eax+615],0;TCustomMPHexEditor.?f615:byte
 004E5DF5    mov         dl,1
 004E5DF7    mov         eax,dword ptr [ebp-4]
 004E5DFA    call        004E31CC
 004E5DFF    lea         eax,[ebp-10]
 004E5E02    push        eax
 004E5E03    mov         ecx,dword ptr [ebp+8]
 004E5E06    mov         edx,dword ptr [ebp+0C]
 004E5E09    mov         eax,dword ptr [ebp-4]
 004E5E0C    call        004D8C70
 004E5E11    push        1
 004E5E13    push        1
 004E5E15    mov         ecx,dword ptr [ebp-0C]
 004E5E18    mov         edx,dword ptr [ebp-10]
 004E5E1B    mov         eax,dword ptr [ebp-4]
 004E5E1E    call        004D8CCC
 004E5E23    mov         eax,dword ptr [ebp-4]
 004E5E26    cmp         byte ptr [eax+578],0;TCustomMPHexEditor.?f578:byte
>004E5E2D    je          004E5E37
 004E5E2F    mov         eax,dword ptr [ebp-4]
 004E5E32    call        004E5954
 004E5E37    mov         esp,ebp
 004E5E39    pop         ebp
 004E5E3A    ret         8
end;*}

//004E5E40
{*procedure sub_004E5E40(?:dword; ?:?; ?:?);
begin
 004E5E40    push        ebp
 004E5E41    mov         ebp,esp
 004E5E43    add         esp,0FFFFFFE8
 004E5E46    mov         dword ptr [ebp-0C],ecx
 004E5E49    mov         dword ptr [ebp-8],edx
 004E5E4C    mov         dword ptr [ebp-4],eax
 004E5E4F    mov         byte ptr [ebp-11],0
 004E5E53    cmp         dword ptr [ebp-8],0
>004E5E57    jl          004E5EA5
 004E5E59    xor         eax,eax
 004E5E5B    mov         dword ptr [ebp-10],eax
 004E5E5E    mov         eax,dword ptr [ebp-4]
 004E5E61    mov         edx,dword ptr [ebp-10]
 004E5E64    lea         eax,[eax+edx*8+4FC]
 004E5E6B    mov         dword ptr [ebp-18],eax
 004E5E6E    mov         eax,dword ptr [ebp-18]
 004E5E71    mov         eax,dword ptr [eax]
 004E5E73    cmp         eax,dword ptr [ebp-8]
>004E5E76    jl          004E5E9C
 004E5E78    mov         byte ptr [ebp-11],1
 004E5E7C    mov         eax,dword ptr [ebp-0C]
 004E5E7F    mov         edx,dword ptr [ebp-18]
 004E5E82    add         dword ptr [edx],eax
 004E5E84    mov         eax,dword ptr [ebp-4]
 004E5E87    call        004E0588
 004E5E8C    mov         edx,dword ptr [ebp-18]
 004E5E8F    cmp         eax,dword ptr [edx]
>004E5E91    jge         004E5E9C
 004E5E93    mov         eax,dword ptr [ebp-18]
 004E5E96    mov         dword ptr [eax],0FFFFFFFF
 004E5E9C    inc         dword ptr [ebp-10]
 004E5E9F    cmp         dword ptr [ebp-10],0A
>004E5EA3    jne         004E5E5E
 004E5EA5    cmp         byte ptr [ebp-11],0
>004E5EA9    je          004E5EB6
 004E5EAB    mov         eax,dword ptr [ebp-4]
 004E5EAE    mov         edx,dword ptr [eax]
 004E5EB0    call        dword ptr [edx+0F8]
 004E5EB6    mov         esp,ebp
 004E5EB8    pop         ebp
 004E5EB9    ret
end;*}

//004E5EBC
{*procedure sub_004E5EBC(?:TCustomMPHexEditor; ?:?; ?:?; ?:?);
begin
 004E5EBC    push        ebp
 004E5EBD    mov         ebp,esp
 004E5EBF    add         esp,0FFFFFFF4
 004E5EC2    push        esi
 004E5EC3    mov         dword ptr [ebp-0C],ecx
 004E5EC6    mov         dword ptr [ebp-8],edx
 004E5EC9    mov         dword ptr [ebp-4],eax
 004E5ECC    mov         eax,dword ptr [ebp-4]
 004E5ECF    mov         si,0FFB5
 004E5ED3    call        @CallDynaInst;TWinControl.sub_0048C078
 004E5ED8    test        al,al
>004E5EDA    je          004E5F38
 004E5EDC    cmp         dword ptr [ebp+8],0FFFFFFFF
>004E5EE0    je          004E5F2B
 004E5EE2    mov         eax,dword ptr [ebp-4]
 004E5EE5    mov         eax,dword ptr [eax+4DC];TCustomMPHexEditor.?f4DC:dword
 004E5EEB    add         eax,2
 004E5EEE    cmp         eax,dword ptr [ebp+8]
 004E5EF1    setl        al
 004E5EF4    mov         edx,dword ptr [ebp-4]
 004E5EF7    mov         byte ptr [edx+4F0],al;TCustomMPHexEditor.?f4F0:byte
 004E5EFD    mov         eax,dword ptr [ebp-4]
 004E5F00    mov         al,byte ptr [eax+4F1];TCustomMPHexEditor.?f4F1:byte
 004E5F06    mov         edx,dword ptr [ebp-4]
 004E5F09    cmp         al,byte ptr [edx+4F0];TCustomMPHexEditor.?f4F0:byte
>004E5F0F    je          004E5F2B
 004E5F11    mov         eax,dword ptr [ebp-4]
 004E5F14    mov         al,byte ptr [eax+4F0];TCustomMPHexEditor.?f4F0:byte
 004E5F1A    mov         edx,dword ptr [ebp-4]
 004E5F1D    mov         byte ptr [edx+4F1],al;TCustomMPHexEditor.?f4F1:byte
 004E5F23    mov         eax,dword ptr [ebp-4]
 004E5F26    mov         edx,dword ptr [eax]
 004E5F28    call        dword ptr [edx+7C];TCustomMPHexEditor.sub_0048BE68
 004E5F2B    mov         eax,dword ptr [ebp-0C]
 004E5F2E    push        eax
 004E5F2F    mov         eax,dword ptr [ebp-8]
 004E5F32    push        eax
 004E5F33    call        user32.SetCaretPos
 004E5F38    pop         esi
 004E5F39    mov         esp,ebp
 004E5F3B    pop         ebp
 004E5F3C    ret         4
end;*}

//004E5F40
procedure sub_004E5F40(?:TCustomMPHexEditor; ?:TGridCoord);
begin
{*
 004E5F40    push        ebp
 004E5F41    mov         ebp,esp
 004E5F43    add         esp,0FFFFFFF8
 004E5F46    mov         dword ptr [ebp-8],edx
 004E5F49    mov         dword ptr [ebp-4],eax
 004E5F4C    mov         eax,dword ptr [ebp-4]
 004E5F4F    call        004E0588
 004E5F54    mov         edx,dword ptr [ebp-8]
 004E5F57    cmp         eax,dword ptr [edx]
>004E5F59    jg          004E5F82
 004E5F5B    mov         eax,dword ptr [ebp-4]
 004E5F5E    call        004E0588
 004E5F63    dec         eax
 004E5F64    mov         edx,dword ptr [ebp-8]
 004E5F67    mov         dword ptr [edx],eax;TGridCoord.X:Longint
 004E5F69    mov         eax,dword ptr [ebp-4]
 004E5F6C    call        TMPHexEditorEx.GetInsertMode
 004E5F71    test        al,al
>004E5F73    je          004E5F82
 004E5F75    mov         eax,dword ptr [ebp-4]
 004E5F78    call        004E0588
 004E5F7D    mov         edx,dword ptr [ebp-8]
 004E5F80    mov         dword ptr [edx],eax;TGridCoord.X:Longint
 004E5F82    pop         ecx
 004E5F83    pop         ecx
 004E5F84    pop         ebp
 004E5F85    ret
*}
end;

//004E5F88
procedure TMPHexEditorEx.SetInsertMode(Value:Boolean);
begin
{*
 004E5F88    push        ebp
 004E5F89    mov         ebp,esp
 004E5F8B    add         esp,0FFFFFFF4
 004E5F8E    push        esi
 004E5F8F    mov         byte ptr [ebp-5],dl
 004E5F92    mov         dword ptr [ebp-4],eax
 004E5F95    mov         al,byte ptr [ebp-5]
 004E5F98    mov         edx,dword ptr [ebp-4]
 004E5F9B    cmp         al,byte ptr [edx+4C8];TMPHexEditorEx.?f4C8:byte
>004E5FA1    je          004E60C5
 004E5FA7    mov         eax,dword ptr [ebp-4]
 004E5FAA    call        004E9214
 004E5FAF    test        al,al
>004E5FB1    je          004E60C5
 004E5FB7    mov         al,byte ptr [ebp-5]
 004E5FBA    mov         edx,dword ptr [ebp-4]
 004E5FBD    mov         byte ptr [edx+4C8],al;TMPHexEditorEx.?f4C8:byte
 004E5FC3    mov         eax,dword ptr [ebp-4]
 004E5FC6    cmp         byte ptr [eax+55D],3;TMPHexEditorEx.?f55D:byte
>004E5FCD    jne         004E5FE7
 004E5FCF    mov         eax,dword ptr [ebp-4]
 004E5FD2    mov         si,0FFB5
 004E5FD6    call        @CallDynaInst;TWinControl.sub_0048C078
 004E5FDB    test        al,al
>004E5FDD    je          004E5FE7
 004E5FDF    mov         eax,dword ptr [ebp-4]
 004E5FE2    call        004E4B7C
 004E5FE7    mov         eax,dword ptr [ebp-4]
 004E5FEA    call        004E0588
 004E5FEF    dec         eax
>004E5FF0    jl          004E60C5
 004E5FF6    mov         eax,dword ptr [ebp-4]
 004E5FF9    cmp         byte ptr [eax+4C8],0;TMPHexEditorEx.?f4C8:byte
>004E6000    jne         004E6077
 004E6002    mov         eax,dword ptr [ebp-4]
 004E6005    call        004E0588
 004E600A    mov         edx,dword ptr [ebp-4]
 004E600D    mov         ecx,dword ptr [edx+4D4];TMPHexEditorEx.?f4D4:Integer
 004E6013    cdq
 004E6014    idiv        eax,ecx
 004E6016    test        edx,edx
>004E6018    jne         004E6038
 004E601A    mov         eax,dword ptr [ebp-4]
 004E601D    call        004E0588
 004E6022    test        eax,eax
>004E6024    jle         004E6038
 004E6026    mov         eax,dword ptr [ebp-4]
 004E6029    mov         edx,dword ptr [eax+24C];TMPHexEditorEx.FRowCount:Longint
 004E602F    dec         edx
 004E6030    mov         eax,dword ptr [ebp-4]
 004E6033    call        004DDA70
 004E6038    mov         eax,dword ptr [ebp-4]
 004E603B    mov         ecx,dword ptr [eax+22C];TMPHexEditorEx.FCurrent:Longint
 004E6041    mov         eax,dword ptr [ebp-4]
 004E6044    mov         edx,dword ptr [eax+228];TMPHexEditorEx.FCurrent:TGridCoord
 004E604A    mov         eax,dword ptr [ebp-4]
 004E604D    call        004E1288
 004E6052    mov         dword ptr [ebp-0C],eax
 004E6055    mov         eax,dword ptr [ebp-4]
 004E6058    call        004E0588
 004E605D    cmp         eax,dword ptr [ebp-0C]
>004E6060    jne         004E60AD
 004E6062    mov         eax,dword ptr [ebp-4]
 004E6065    call        004E0588
 004E606A    mov         edx,eax
 004E606C    dec         edx
 004E606D    mov         eax,dword ptr [ebp-4]
 004E6070    call        004E3E9C
>004E6075    jmp         004E60AD
 004E6077    mov         eax,dword ptr [ebp-4]
 004E607A    call        004E0588
 004E607F    mov         edx,dword ptr [ebp-4]
 004E6082    mov         ecx,dword ptr [edx+4D4];TMPHexEditorEx.?f4D4:Integer
 004E6088    cdq
 004E6089    idiv        eax,ecx
 004E608B    test        edx,edx
>004E608D    jne         004E60AD
 004E608F    mov         eax,dword ptr [ebp-4]
 004E6092    call        004E0588
 004E6097    test        eax,eax
>004E6099    jle         004E60AD
 004E609B    mov         eax,dword ptr [ebp-4]
 004E609E    mov         edx,dword ptr [eax+24C];TMPHexEditorEx.FRowCount:Longint
 004E60A4    inc         edx
 004E60A5    mov         eax,dword ptr [ebp-4]
 004E60A8    call        004DDA70
 004E60AD    xor         edx,edx
 004E60AF    mov         eax,dword ptr [ebp-4]
 004E60B2    mov         eax,dword ptr [eax+4F8];TMPHexEditorEx.?f4F8:TBits
 004E60B8    call        TBits.SetSize
 004E60BD    mov         eax,dword ptr [ebp-4]
 004E60C0    mov         edx,dword ptr [eax]
 004E60C2    call        dword ptr [edx+7C];TMPHexEditorEx.sub_0048BE68
 004E60C5    pop         esi
 004E60C6    mov         esp,ebp
 004E60C8    pop         ebp
 004E60C9    ret
*}
end;

//004E60CC
{*function sub_004E60CC(?:TMPHexEditorEx):?;
begin
 004E60CC    push        ebp
 004E60CD    mov         ebp,esp
 004E60CF    add         esp,0FFFFFFF8
 004E60D2    mov         dword ptr [ebp-4],eax
 004E60D5    mov         eax,dword ptr [ebp-4]
 004E60D8    cmp         byte ptr [eax+67D],0
>004E60DF    je          004E60FF
 004E60E1    mov         eax,dword ptr [ebp-4]
 004E60E4    call        004E0588
 004E60E9    test        eax,eax
>004E60EB    jg          004E6103
 004E60ED    mov         eax,dword ptr [ebp-4]
 004E60F0    mov         eax,dword ptr [eax+4F4]
 004E60F6    call        0040C94C
 004E60FB    test        al,al
>004E60FD    jne         004E6103
 004E60FF    xor         eax,eax
>004E6101    jmp         004E6105
 004E6103    mov         al,1
 004E6105    mov         byte ptr [ebp-5],al
 004E6108    mov         al,byte ptr [ebp-5]
 004E610B    pop         ecx
 004E610C    pop         ecx
 004E610D    pop         ebp
 004E610E    ret
end;*}

//004E6110
{*procedure sub_004E6110(?:TCustomMPHexEditor; ?:dword; ?:dword; ?:?);
begin
 004E6110    push        ebp
 004E6111    mov         ebp,esp
 004E6113    add         esp,0FFFFFFF4
 004E6116    mov         dword ptr [ebp-0C],ecx
 004E6119    mov         dword ptr [ebp-8],edx
 004E611C    mov         dword ptr [ebp-4],eax
 004E611F    mov         eax,dword ptr [ebp-4]
 004E6122    call        004E0588
 004E6127    mov         edx,eax
 004E6129    dec         edx
 004E612A    mov         eax,dword ptr [ebp+8]
 004E612D    call        004DF5BC
 004E6132    mov         edx,eax
 004E6134    or          eax,0FFFFFFFF
 004E6137    call        004DF5E8
 004E613C    mov         edx,dword ptr [ebp-4]
 004E613F    mov         dword ptr [edx+554],eax;TCustomMPHexEditor.?f554:dword
 004E6145    mov         eax,dword ptr [ebp-4]
 004E6148    call        004E0588
 004E614D    mov         edx,eax
 004E614F    dec         edx
 004E6150    mov         eax,dword ptr [ebp-8]
 004E6153    call        004DF5BC
 004E6158    mov         edx,eax
 004E615A    or          eax,0FFFFFFFF
 004E615D    call        004DF5E8
 004E6162    mov         edx,dword ptr [ebp-4]
 004E6165    mov         dword ptr [edx+550],eax;TCustomMPHexEditor.?f550:dword
 004E616B    mov         eax,dword ptr [ebp-4]
 004E616E    call        004E0588
 004E6173    mov         edx,eax
 004E6175    dec         edx
 004E6176    mov         eax,dword ptr [ebp-0C]
 004E6179    call        004DF5BC
 004E617E    mov         edx,eax
 004E6180    or          eax,0FFFFFFFF
 004E6183    call        004DF5E8
 004E6188    mov         edx,dword ptr [ebp-4]
 004E618B    mov         dword ptr [edx+54C],eax;TCustomMPHexEditor.?f54C:dword
 004E6191    mov         esp,ebp
 004E6193    pop         ebp
 004E6194    ret         4
end;*}

//004E6198
{*function sub_004E6198(?:?; ?:?):?;
begin
 004E6198    push        ebp
 004E6199    mov         ebp,esp
 004E619B    add         esp,0FFFFFFF0
 004E619E    mov         dword ptr [ebp-4],eax
 004E61A1    xor         eax,eax
 004E61A3    mov         dword ptr [ebp-8],eax
 004E61A6    mov         eax,dword ptr [ebp-4]
 004E61A9    add         eax,eax
 004E61AB    test        eax,eax
>004E61AD    jl          004E6257
 004E61B3    inc         eax
 004E61B4    mov         dword ptr [ebp-10],eax
 004E61B7    mov         dword ptr [ebp-0C],0
 004E61BE    mov         eax,dword ptr [ebp-4]
 004E61C1    add         eax,eax
 004E61C3    dec         eax
 004E61C4    cmp         eax,dword ptr [ebp-0C]
>004E61C7    jne         004E61DC
 004E61C9    mov         eax,dword ptr [ebp+8]
 004E61CC    mov         eax,dword ptr [eax-4]
 004E61CF    mov         eax,dword ptr [eax+4BC]
 004E61D5    add         eax,eax
 004E61D7    add         dword ptr [ebp-8],eax
>004E61DA    jmp         004E624B
 004E61DC    mov         eax,dword ptr [ebp+8]
 004E61DF    mov         eax,dword ptr [eax-4]
 004E61E2    mov         eax,dword ptr [eax+4BC]
 004E61E8    add         dword ptr [ebp-8],eax
 004E61EB    mov         eax,dword ptr [ebp+8]
 004E61EE    mov         eax,dword ptr [eax-4]
 004E61F1    push        dword ptr [eax+4EC]
 004E61F7    mov         eax,dword ptr [ebp-0C]
 004E61FA    pop         edx
 004E61FB    mov         ecx,edx
 004E61FD    cdq
 004E61FE    idiv        eax,ecx
 004E6200    dec         edx
>004E6201    jne         004E6212
 004E6203    mov         eax,dword ptr [ebp+8]
 004E6206    mov         eax,dword ptr [eax-4]
 004E6209    mov         eax,dword ptr [eax+4BC]
 004E620F    add         dword ptr [ebp-8],eax
 004E6212    mov         eax,dword ptr [ebp+8]
 004E6215    mov         eax,dword ptr [eax-4]
 004E6218    cmp         dword ptr [eax+4A4],1
>004E621F    jle         004E624B
 004E6221    mov         eax,dword ptr [ebp+8]
 004E6224    mov         eax,dword ptr [eax-4]
 004E6227    mov         eax,dword ptr [eax+4A4]
 004E622D    add         eax,eax
 004E622F    push        eax
 004E6230    mov         eax,dword ptr [ebp-0C]
 004E6233    pop         edx
 004E6234    mov         ecx,edx
 004E6236    cdq
 004E6237    idiv        eax,ecx
 004E6239    dec         edx
>004E623A    jne         004E624B
 004E623C    mov         eax,dword ptr [ebp+8]
 004E623F    mov         eax,dword ptr [eax-4]
 004E6242    mov         eax,dword ptr [eax+4BC]
 004E6248    add         dword ptr [ebp-8],eax
 004E624B    inc         dword ptr [ebp-0C]
 004E624E    dec         dword ptr [ebp-10]
>004E6251    jne         004E61BE
 004E6257    mov         eax,dword ptr [ebp+8]
 004E625A    mov         eax,dword ptr [eax-4]
 004E625D    cmp         byte ptr [eax+61C],0
>004E6264    je          004E6276
 004E6266    mov         eax,dword ptr [ebp-4]
 004E6269    sar         eax,1
>004E626B    jns         004E6270
 004E626D    adc         eax,0
 004E6270    dec         eax
 004E6271    mov         dword ptr [ebp-0C],eax
>004E6274    jmp         004E627D
 004E6276    mov         eax,dword ptr [ebp-4]
 004E6279    dec         eax
 004E627A    mov         dword ptr [ebp-0C],eax
 004E627D    mov         eax,dword ptr [ebp-0C]
 004E6280    test        eax,eax
>004E6282    jl          004E63DD
 004E6288    inc         eax
 004E6289    mov         dword ptr [ebp-10],eax
 004E628C    mov         dword ptr [ebp-0C],0
 004E6293    mov         eax,dword ptr [ebp+8]
 004E6296    mov         eax,dword ptr [eax-4]
 004E6299    cmp         dword ptr [eax+610],1
>004E62A0    jle         004E62F3
 004E62A2    mov         eax,dword ptr [ebp+8]
 004E62A5    mov         eax,dword ptr [eax-4]
 004E62A8    push        dword ptr [eax+610]
 004E62AE    mov         eax,dword ptr [ebp-0C]
 004E62B1    pop         edx
 004E62B2    mov         ecx,edx
 004E62B4    cdq
 004E62B5    idiv        eax,ecx
 004E62B7    mov         eax,dword ptr [ebp+8]
 004E62BA    mov         eax,dword ptr [eax-4]
 004E62BD    mov         eax,dword ptr [eax+610]
 004E62C3    dec         eax
 004E62C4    cmp         edx,eax
>004E62C6    jne         004E62F3
 004E62C8    mov         eax,dword ptr [ebp+8]
 004E62CB    mov         eax,dword ptr [eax-4]
 004E62CE    cmp         byte ptr [eax+61C],0
>004E62D5    jne         004E62F3
 004E62D7    mov         eax,dword ptr [ebp+8]
 004E62DA    mov         eax,dword ptr [eax-4]
 004E62DD    mov         eax,dword ptr [eax+4BC]
 004E62E3    lea         eax,[eax+eax*2]
 004E62E6    sar         eax,1
>004E62E8    jns         004E62ED
 004E62EA    adc         eax,0
 004E62ED    inc         eax
 004E62EE    add         dword ptr [ebp-8],eax
>004E62F1    jmp         004E6303
 004E62F3    mov         eax,dword ptr [ebp+8]
 004E62F6    mov         eax,dword ptr [eax-4]
 004E62F9    mov         eax,dword ptr [eax+4BC]
 004E62FF    inc         eax
 004E6300    add         dword ptr [ebp-8],eax
 004E6303    mov         eax,dword ptr [ebp+8]
 004E6306    mov         eax,dword ptr [eax-4]
 004E6309    cmp         byte ptr [eax+61C],0
>004E6310    jne         004E636F
 004E6312    mov         eax,dword ptr [ebp+8]
 004E6315    mov         eax,dword ptr [eax-4]
 004E6318    cmp         dword ptr [eax+4A4],1
>004E631F    jle         004E63D1
 004E6325    mov         eax,dword ptr [ebp+8]
 004E6328    mov         eax,dword ptr [eax-4]
 004E632B    cmp         byte ptr [eax+4A8],0
>004E6332    je          004E63D1
 004E6338    mov         eax,dword ptr [ebp+8]
 004E633B    mov         eax,dword ptr [eax-4]
 004E633E    push        dword ptr [eax+4A4]
 004E6344    mov         eax,dword ptr [ebp-0C]
 004E6347    pop         edx
 004E6348    mov         ecx,edx
 004E634A    cdq
 004E634B    idiv        eax,ecx
 004E634D    mov         eax,dword ptr [ebp+8]
 004E6350    mov         eax,dword ptr [eax-4]
 004E6353    mov         eax,dword ptr [eax+4A4]
 004E6359    dec         eax
 004E635A    cmp         edx,eax
>004E635C    jne         004E63D1
 004E635E    mov         eax,dword ptr [ebp+8]
 004E6361    mov         eax,dword ptr [eax-4]
 004E6364    mov         eax,dword ptr [eax+4BC]
 004E636A    add         dword ptr [ebp-8],eax
>004E636D    jmp         004E63D1
 004E636F    mov         eax,dword ptr [ebp+8]
 004E6372    mov         eax,dword ptr [eax-4]
 004E6375    cmp         dword ptr [eax+4A4],1
>004E637C    jle         004E63D1
 004E637E    mov         eax,dword ptr [ebp+8]
 004E6381    mov         eax,dword ptr [eax-4]
 004E6384    cmp         byte ptr [eax+4A8],0
>004E638B    je          004E63D1
 004E638D    mov         eax,dword ptr [ebp+8]
 004E6390    mov         eax,dword ptr [eax-4]
 004E6393    mov         eax,dword ptr [eax+4A4]
 004E6399    sar         eax,1
>004E639B    jns         004E63A0
 004E639D    adc         eax,0
 004E63A0    push        eax
 004E63A1    mov         eax,dword ptr [ebp-0C]
 004E63A4    pop         edx
 004E63A5    mov         ecx,edx
 004E63A7    cdq
 004E63A8    idiv        eax,ecx
 004E63AA    mov         eax,dword ptr [ebp+8]
 004E63AD    mov         eax,dword ptr [eax-4]
 004E63B0    mov         eax,dword ptr [eax+4A4]
 004E63B6    sar         eax,1
>004E63B8    jns         004E63BD
 004E63BA    adc         eax,0
 004E63BD    dec         eax
 004E63BE    cmp         edx,eax
>004E63C0    jne         004E63D1
 004E63C2    mov         eax,dword ptr [ebp+8]
 004E63C5    mov         eax,dword ptr [eax-4]
 004E63C8    mov         eax,dword ptr [eax+4BC]
 004E63CE    add         dword ptr [ebp-8],eax
 004E63D1    inc         dword ptr [ebp-0C]
 004E63D4    dec         dword ptr [ebp-10]
>004E63D7    jne         004E6293
 004E63DD    mov         eax,dword ptr [ebp-8]
 004E63E0    mov         esp,ebp
 004E63E2    pop         ebp
 004E63E3    ret
end;*}

//004E63E4
procedure sub_004E63E4(?:TCustomMPHexEditor);
begin
{*
 004E63E4    push        ebp
 004E63E5    mov         ebp,esp
 004E63E7    add         esp,0FFFFFFF0
 004E63EA    push        ebx
 004E63EB    push        esi
 004E63EC    push        edi
 004E63ED    mov         dword ptr [ebp-4],eax
 004E63F0    mov         eax,dword ptr [ebp-4]
 004E63F3    mov         byte ptr [eax+599],1
 004E63FA    xor         eax,eax
 004E63FC    push        ebp
 004E63FD    push        4E64B3
 004E6402    push        dword ptr fs:[eax]
 004E6405    mov         dword ptr fs:[eax],esp
 004E6408    xor         eax,eax
 004E640A    push        ebp
 004E640B    push        4E6491
 004E6410    push        dword ptr fs:[eax]
 004E6413    mov         dword ptr fs:[eax],esp
 004E6416    xor         edx,edx
 004E6418    mov         eax,dword ptr [ebp-4]
 004E641B    call        004DD40C
 004E6420    push        eax
 004E6421    mov         eax,dword ptr [ebp-4]
 004E6424    call        TControl.GetClientWidth
 004E6429    mov         ebx,eax
 004E642B    pop         eax
 004E642C    sub         ebx,eax
 004E642E    mov         edx,1
 004E6433    mov         eax,dword ptr [ebp-4]
 004E6436    call        004DD40C
 004E643B    sub         ebx,eax
 004E643D    sub         ebx,8
 004E6440    mov         dword ptr [ebp-8],ebx
 004E6443    mov         dword ptr [ebp-10],2
 004E644A    push        ebp
 004E644B    mov         eax,dword ptr [ebp-10]
 004E644E    add         eax,2
 004E6451    call        004E6198
 004E6456    pop         ecx
 004E6457    mov         dword ptr [ebp-0C],eax
 004E645A    mov         eax,dword ptr [ebp-0C]
 004E645D    cmp         eax,dword ptr [ebp-8]
>004E6460    jle         004E646F
 004E6462    mov         edx,dword ptr [ebp-10]
 004E6465    mov         eax,dword ptr [ebp-4]
 004E6468    call        TMPHexEditorEx.SetBytesPerRow
>004E646D    jmp         004E6487
 004E646F    add         dword ptr [ebp-10],2
 004E6473    cmp         dword ptr [ebp-10],100
>004E647A    jl          004E644A
 004E647C    mov         edx,dword ptr [ebp-10]
 004E647F    mov         eax,dword ptr [ebp-4]
 004E6482    call        TMPHexEditorEx.SetBytesPerRow
 004E6487    xor         eax,eax
 004E6489    pop         edx
 004E648A    pop         ecx
 004E648B    pop         ecx
 004E648C    mov         dword ptr fs:[eax],edx
>004E648F    jmp         004E649B
>004E6491    jmp         @HandleAnyException
 004E6496    call        @DoneExcept
 004E649B    xor         eax,eax
 004E649D    pop         edx
 004E649E    pop         ecx
 004E649F    pop         ecx
 004E64A0    mov         dword ptr fs:[eax],edx
 004E64A3    push        4E64BA
 004E64A8    mov         eax,dword ptr [ebp-4]
 004E64AB    mov         byte ptr [eax+599],0
 004E64B2    ret
>004E64B3    jmp         @HandleFinally
>004E64B8    jmp         004E64A8
 004E64BA    pop         edi
 004E64BB    pop         esi
 004E64BC    pop         ebx
 004E64BD    mov         esp,ebp
 004E64BF    pop         ebp
 004E64C0    ret
*}
end;

//004E64C4
procedure TMPHexEditorEx.SetAutoBytesPerRow(Value:Boolean);
begin
{*
 004E64C4    push        ebp
 004E64C5    mov         ebp,esp
 004E64C7    add         esp,0FFFFFFF8
 004E64CA    mov         byte ptr [ebp-5],dl
 004E64CD    mov         dword ptr [ebp-4],eax
 004E64D0    mov         al,byte ptr [ebp-5]
 004E64D3    mov         edx,dword ptr [ebp-4]
 004E64D6    cmp         al,byte ptr [edx+598];TMPHexEditorEx.?f598:byte
>004E64DC    je          004E64F8
 004E64DE    mov         al,byte ptr [ebp-5]
 004E64E1    mov         edx,dword ptr [ebp-4]
 004E64E4    mov         byte ptr [edx+598],al;TMPHexEditorEx.?f598:byte
 004E64EA    cmp         byte ptr [ebp-5],0
>004E64EE    je          004E64F8
 004E64F0    mov         eax,dword ptr [ebp-4]
 004E64F3    call        004E63E4
 004E64F8    pop         ecx
 004E64F9    pop         ecx
 004E64FA    pop         ebp
 004E64FB    ret
*}
end;

//004E64FC
procedure TCustomMPHexEditor.sub_0048271C;
begin
{*
 004E64FC    push        ebp
 004E64FD    mov         ebp,esp
 004E64FF    push        ecx
 004E6500    mov         dword ptr [ebp-4],eax
 004E6503    mov         eax,dword ptr [ebp-4]
 004E6506    cmp         byte ptr [eax+598],0;TCustomMPHexEditor.?f598:byte
>004E650D    je          004E6517
 004E650F    mov         eax,dword ptr [ebp-4]
 004E6512    call        004E63E4
 004E6517    push        7
 004E6519    push        7
 004E651B    push        0B100
 004E6520    mov         eax,dword ptr [ebp-4]
 004E6523    call        TWinControl.GetHandle
 004E6528    push        eax
 004E6529    call        user32.PostMessageA
 004E652E    mov         eax,dword ptr [ebp-4]
 004E6531    call        TControl.sub_0048271C
 004E6536    pop         ecx
 004E6537    pop         ebp
 004E6538    ret
*}
end;

//004E653C
procedure sub_004E653C(?:TCustomMPHexEditor);
begin
{*
 004E653C    push        ebp
 004E653D    mov         ebp,esp
 004E653F    push        ecx
 004E6540    push        ebx
 004E6541    mov         dword ptr [ebp-4],eax
 004E6544    mov         eax,dword ptr [ebp-4]
 004E6547    cmp         word ptr [eax+58A],0;TCustomMPHexEditor.?f58A:word
>004E654F    je          004E6563
 004E6551    mov         ebx,dword ptr [ebp-4]
 004E6554    mov         edx,dword ptr [ebp-4]
 004E6557    mov         eax,dword ptr [ebx+58C];TCustomMPHexEditor.?f58C:dword
 004E655D    call        dword ptr [ebx+588]
 004E6563    pop         ebx
 004E6564    pop         ecx
 004E6565    pop         ebp
 004E6566    ret
*}
end;

//004E6568
procedure TCustomMPHexEditor.sub_004D8D8C;
begin
{*
 004E6568    push        ebp
 004E6569    mov         ebp,esp
 004E656B    push        ecx
 004E656C    push        ebx
 004E656D    mov         dword ptr [ebp-4],eax
 004E6570    mov         eax,dword ptr [ebp-4]
 004E6573    call        004E9B18
 004E6578    mov         eax,dword ptr [ebp-4]
 004E657B    cmp         word ptr [eax+592],0;TCustomMPHexEditor.?f592:word
>004E6583    je          004E6597
 004E6585    mov         ebx,dword ptr [ebp-4]
 004E6588    mov         edx,dword ptr [ebp-4]
 004E658B    mov         eax,dword ptr [ebx+594];TCustomMPHexEditor.?f594:dword
 004E6591    call        dword ptr [ebx+590]
 004E6597    pop         ebx
 004E6598    pop         ecx
 004E6599    pop         ebp
 004E659A    ret
*}
end;

//004E659C
{*procedure sub_004E659C(?:?; ?:?);
begin
 004E659C    push        ebp
 004E659D    mov         ebp,esp
 004E659F    add         esp,0FFFFFFE8
 004E65A2    push        ebx
 004E65A3    xor         ebx,ebx
 004E65A5    mov         dword ptr [ebp-18],ebx
 004E65A8    mov         dword ptr [ebp-14],ebx
 004E65AB    mov         dword ptr [ebp-0C],ecx
 004E65AE    mov         dword ptr [ebp-8],edx
 004E65B1    mov         dword ptr [ebp-4],eax
 004E65B4    xor         eax,eax
 004E65B6    push        ebp
 004E65B7    push        4E6711
 004E65BC    push        dword ptr fs:[eax]
 004E65BF    mov         dword ptr fs:[eax],esp
 004E65C2    mov         eax,dword ptr [ebp-0C]
 004E65C5    call        @LStrClr
 004E65CA    mov         eax,dword ptr [ebp-4]
 004E65CD    cmp         word ptr [eax+4B2],0;TCustomMPHexEditor.?f4B2:word
>004E65D5    je          004E6640
 004E65D7    mov         eax,dword ptr [ebp-4]
 004E65DA    cmp         byte ptr [eax+60D],0;TCustomMPHexEditor.?f60D:byte
>004E65E1    jne         004E6640
 004E65E3    mov         eax,dword ptr [ebp-4]
 004E65E6    mov         byte ptr [eax+60D],1;TCustomMPHexEditor.?f60D:byte
 004E65ED    xor         eax,eax
 004E65EF    push        ebp
 004E65F0    push        4E6639
 004E65F5    push        dword ptr fs:[eax]
 004E65F8    mov         dword ptr fs:[eax],esp
 004E65FB    mov         eax,dword ptr [ebp-4]
 004E65FE    mov         byte ptr [eax+4A0],0;TCustomMPHexEditor.?f4A0:byte
 004E6605    mov         eax,dword ptr [ebp-8]
 004E6608    xor         edx,edx
 004E660A    push        edx
 004E660B    push        eax
 004E660C    mov         ecx,dword ptr [ebp-0C]
 004E660F    mov         ebx,dword ptr [ebp-4]
 004E6612    mov         edx,dword ptr [ebp-4]
 004E6615    mov         eax,dword ptr [ebx+4B4];TCustomMPHexEditor.?f4B4:dword
 004E661B    call        dword ptr [ebx+4B0]
 004E6621    xor         eax,eax
 004E6623    pop         edx
 004E6624    pop         ecx
 004E6625    pop         ecx
 004E6626    mov         dword ptr fs:[eax],edx
 004E6629    push        4E66F6
 004E662E    mov         eax,dword ptr [ebp-4]
 004E6631    mov         byte ptr [eax+60D],0;TCustomMPHexEditor.?f60D:byte
 004E6638    ret
>004E6639    jmp         @HandleFinally
>004E663E    jmp         004E662E
 004E6640    mov         eax,dword ptr [ebp-4]
 004E6643    add         eax,5A0;TCustomMPHexEditor.?f5A0:TMPHOffsetFormat
 004E6648    mov         dword ptr [ebp-10],eax
 004E664B    mov         eax,dword ptr [ebp-10]
 004E664E    cmp         dword ptr [eax],0
>004E6651    je          004E66F6
 004E6657    mov         eax,dword ptr [ebp-10]
 004E665A    cmp         dword ptr [eax+0C],0
>004E665E    jne         004E6666
 004E6660    cmp         dword ptr [ebp-8],0
>004E6664    je          004E66D8
 004E6666    mov         eax,dword ptr [ebp-4]
 004E6669    cmp         byte ptr [eax+5E0],0;TCustomMPHexEditor.?f5E0:byte
>004E6670    je          004E66A6
 004E6672    lea         eax,[ebp-14]
 004E6675    push        eax
 004E6676    mov         eax,dword ptr [ebp-10]
 004E6679    movzx       eax,byte ptr [eax+12]
 004E667D    push        eax
 004E667E    mov         eax,dword ptr [ebp-8]
 004E6681    pop         edx
 004E6682    mov         ecx,edx
 004E6684    xor         edx,edx
 004E6686    div         eax,ecx
 004E6688    mov         edx,dword ptr [ebp-10]
 004E668B    mov         cl,byte ptr [edx+0C]
 004E668E    mov         edx,dword ptr [ebp-10]
 004E6691    mov         dl,byte ptr [edx+11]
 004E6694    call        004DF8D8
 004E6699    mov         eax,dword ptr [ebp-14]
 004E669C    mov         edx,dword ptr [ebp-0C]
 004E669F    call        0040BD34
>004E66A4    jmp         004E66D8
 004E66A6    lea         eax,[ebp-18]
 004E66A9    push        eax
 004E66AA    mov         eax,dword ptr [ebp-10]
 004E66AD    movzx       eax,byte ptr [eax+12]
 004E66B1    push        eax
 004E66B2    mov         eax,dword ptr [ebp-8]
 004E66B5    pop         edx
 004E66B6    mov         ecx,edx
 004E66B8    xor         edx,edx
 004E66BA    div         eax,ecx
 004E66BC    mov         edx,dword ptr [ebp-10]
 004E66BF    mov         cl,byte ptr [edx+0C]
 004E66C2    mov         edx,dword ptr [ebp-10]
 004E66C5    mov         dl,byte ptr [edx+11]
 004E66C8    call        004DF8D8
 004E66CD    mov         eax,dword ptr [ebp-18]
 004E66D0    mov         edx,dword ptr [ebp-0C]
 004E66D3    call        0040BCC8
 004E66D8    mov         eax,dword ptr [ebp-10]
 004E66DB    push        dword ptr [eax+4]
 004E66DE    mov         eax,dword ptr [ebp-0C]
 004E66E1    push        dword ptr [eax]
 004E66E3    mov         eax,dword ptr [ebp-10]
 004E66E6    push        dword ptr [eax+8]
 004E66E9    mov         eax,dword ptr [ebp-0C]
 004E66EC    mov         edx,3
 004E66F1    call        @LStrCatN
 004E66F6    xor         eax,eax
 004E66F8    pop         edx
 004E66F9    pop         ecx
 004E66FA    pop         ecx
 004E66FB    mov         dword ptr fs:[eax],edx
 004E66FE    push        4E6718
 004E6703    lea         eax,[ebp-18]
 004E6706    mov         edx,2
 004E670B    call        @LStrArrayClr
 004E6710    ret
>004E6711    jmp         @HandleFinally
>004E6716    jmp         004E6703
 004E6718    pop         ebx
 004E6719    mov         esp,ebp
 004E671B    pop         ebp
 004E671C    ret
end;*}

//004E6720
{*procedure sub_004E6720(?:?; ?:?);
begin
 004E6720    push        ebp
 004E6721    mov         ebp,esp
 004E6723    add         esp,0FFFFFFF4
 004E6726    push        ebx
 004E6727    mov         dword ptr [ebp-0C],ecx
 004E672A    mov         dword ptr [ebp-8],edx
 004E672D    mov         dword ptr [ebp-4],eax
 004E6730    mov         eax,dword ptr [ebp-4]
 004E6733    cmp         dword ptr [eax+5A0],0;TCustomMPHexEditor.?f5A0:TMPHOffsetFormat
>004E673A    jne         004E674B
 004E673C    mov         ecx,dword ptr [ebp-0C]
 004E673F    mov         dl,10
 004E6741    mov         eax,dword ptr [ebp-8]
 004E6744    call        004DF8B4
>004E6749    jmp         004E675C
 004E674B    mov         ecx,dword ptr [ebp-0C]
 004E674E    mov         edx,dword ptr [ebp-8]
 004E6751    mov         eax,dword ptr [ebp-4]
 004E6754    mov         ebx,dword ptr [eax]
 004E6756    call        dword ptr [ebx+104];TCustomMPHexEditor.sub_004E659C
 004E675C    pop         ebx
 004E675D    mov         esp,ebp
 004E675F    pop         ebp
 004E6760    ret
end;*}

//004E6764
{*function sub_004E6764(?:TCustomMPHexEditor):?;
begin
 004E6764    push        ebp
 004E6765    mov         ebp,esp
 004E6767    add         esp,0FFFFFFF8
 004E676A    mov         dword ptr [ebp-4],eax
 004E676D    mov         eax,dword ptr [ebp-4]
 004E6770    mov         eax,dword ptr [eax+234];TCustomMPHexEditor.FDefaultRowHeight:Integer
 004E6776    mov         dword ptr [ebp-8],eax
 004E6779    mov         eax,dword ptr [ebp-8]
 004E677C    pop         ecx
 004E677D    pop         ecx
 004E677E    pop         ebp
 004E677F    ret
end;*}

//004E6780
{*procedure sub_004E6780(?:TCustomMPHexEditor; ?:?; ?:Longint; ?:?);
begin
 004E6780    push        ebp
 004E6781    mov         ebp,esp
 004E6783    add         esp,0FFFFFFF0
 004E6786    push        ebx
 004E6787    xor         ebx,ebx
 004E6789    mov         dword ptr [ebp-10],ebx
 004E678C    mov         dword ptr [ebp-0C],ecx
 004E678F    mov         byte ptr [ebp-5],dl
 004E6792    mov         dword ptr [ebp-4],eax
 004E6795    xor         eax,eax
 004E6797    push        ebp
 004E6798    push        4E686E
 004E679D    push        dword ptr fs:[eax]
 004E67A0    mov         dword ptr fs:[eax],esp
 004E67A3    cmp         byte ptr [ebp-5],9
>004E67A7    jbe         004E67CA
 004E67A9    lea         edx,[ebp-10]
 004E67AC    mov         eax,4DF304;^HInstance:LongWord
 004E67B1    call        LoadResString
 004E67B6    mov         ecx,dword ptr [ebp-10]
 004E67B9    mov         dl,1
 004E67BB    mov         eax,[004DE8FC];EMPHexEditor
 004E67C0    call        Exception.Create;EMPHexEditor.Create
 004E67C5    call        @RaiseExcept
 004E67CA    xor         eax,eax
 004E67CC    mov         al,byte ptr [ebp-5]
 004E67CF    mov         edx,dword ptr [ebp-4]
 004E67D2    mov         eax,dword ptr [edx+eax*8+4FC]
 004E67D9    cmp         eax,dword ptr [ebp-0C]
>004E67DC    jne         004E67F2
 004E67DE    xor         eax,eax
 004E67E0    mov         al,byte ptr [ebp-5]
 004E67E3    mov         edx,dword ptr [ebp-4]
 004E67E6    mov         al,byte ptr [edx+eax*8+500]
 004E67ED    cmp         al,byte ptr [ebp+8]
>004E67F0    je          004E6820
 004E67F2    xor         eax,eax
 004E67F4    mov         al,byte ptr [ebp-5]
 004E67F7    mov         edx,dword ptr [ebp-4]
 004E67FA    mov         ecx,dword ptr [ebp-0C]
 004E67FD    mov         dword ptr [edx+eax*8+4FC],ecx
 004E6804    xor         eax,eax
 004E6806    mov         al,byte ptr [ebp-5]
 004E6809    mov         edx,dword ptr [ebp-4]
 004E680C    mov         cl,byte ptr [ebp+8]
 004E680F    mov         byte ptr [edx+eax*8+500],cl
 004E6816    mov         eax,dword ptr [ebp-4]
 004E6819    mov         edx,dword ptr [eax]
 004E681B    call        dword ptr [edx+7C];TCustomMPHexEditor.sub_0048BE68
>004E681E    jmp         004E684D
 004E6820    xor         eax,eax
 004E6822    mov         al,byte ptr [ebp-5]
 004E6825    mov         edx,dword ptr [ebp-4]
 004E6828    mov         dword ptr [edx+eax*8+4FC],0FFFFFFFF
 004E6833    xor         eax,eax
 004E6835    mov         al,byte ptr [ebp-5]
 004E6838    mov         edx,dword ptr [ebp-4]
 004E683B    mov         cl,byte ptr [ebp+8]
 004E683E    mov         byte ptr [edx+eax*8+500],cl
 004E6845    mov         eax,dword ptr [ebp-4]
 004E6848    mov         edx,dword ptr [eax]
 004E684A    call        dword ptr [edx+7C];TCustomMPHexEditor.sub_0048BE68
 004E684D    mov         eax,dword ptr [ebp-4]
 004E6850    mov         edx,dword ptr [eax]
 004E6852    call        dword ptr [edx+0F8];TCustomMPHexEditor.sub_004E8FDC
 004E6858    xor         eax,eax
 004E685A    pop         edx
 004E685B    pop         ecx
 004E685C    pop         ecx
 004E685D    mov         dword ptr fs:[eax],edx
 004E6860    push        4E6875
 004E6865    lea         eax,[ebp-10]
 004E6868    call        @LStrClr
 004E686D    ret
>004E686E    jmp         @HandleFinally
>004E6873    jmp         004E6865
 004E6875    pop         ebx
 004E6876    mov         esp,ebp
 004E6878    pop         ebp
 004E6879    ret         4
end;*}

//004E687C
{*function sub_004E687C(?:?):?;
begin
 004E687C    push        ebp
 004E687D    mov         ebp,esp
 004E687F    push        ecx
 004E6880    mov         eax,dword ptr [ebp+8]
 004E6883    add         eax,0FFFFFFF8
 004E6886    push        eax
 004E6887    mov         eax,dword ptr [ebp+8]
 004E688A    mov         eax,dword ptr [eax-10]
 004E688D    call        @WStrLen
 004E6892    push        eax
 004E6893    mov         eax,dword ptr [ebp+8]
 004E6896    mov         eax,dword ptr [eax-10]
 004E6899    call        @WStrToPWChar
 004E689E    push        eax
 004E689F    mov         eax,dword ptr [ebp+8]
 004E68A2    mov         eax,dword ptr [eax-0C]
 004E68A5    mov         eax,dword ptr [eax+208]
 004E68AB    call        0042F6A0
 004E68B0    push        eax
 004E68B1    call        gdi32.GetTextExtentPoint32W
 004E68B6    mov         eax,dword ptr [ebp+8]
 004E68B9    mov         eax,dword ptr [eax-8]
 004E68BC    mov         dword ptr [ebp-4],eax
 004E68BF    mov         eax,dword ptr [ebp-4]
 004E68C2    pop         ecx
 004E68C3    pop         ebp
 004E68C4    ret
end;*}

//004E68C8
{*procedure sub_004E68C8(?:?);
begin
 004E68C8    push        ebp
 004E68C9    mov         ebp,esp
 004E68CB    push        ecx
 004E68CC    push        ebx
 004E68CD    push        esi
 004E68CE    push        edi
 004E68CF    mov         eax,dword ptr [ebp+8]
 004E68D2    mov         eax,dword ptr [eax-0C]
 004E68D5    mov         eax,dword ptr [eax+208]
 004E68DB    mov         dword ptr [ebp-4],eax
 004E68DE    mov         eax,dword ptr [ebp+8]
 004E68E1    mov         edx,dword ptr [eax-38]
 004E68E4    mov         eax,dword ptr [ebp-4]
 004E68E7    mov         eax,dword ptr [eax+14]
 004E68EA    call        TBrush.SetColor
 004E68EF    mov         eax,dword ptr [ebp+8]
 004E68F2    mov         edx,dword ptr [eax-3C]
 004E68F5    mov         eax,dword ptr [ebp-4]
 004E68F8    mov         eax,dword ptr [eax+0C]
 004E68FB    call        TFont.SetColor
 004E6900    mov         eax,dword ptr [ebp+8]
 004E6903    mov         eax,dword ptr [eax-40]
 004E6906    call        ColorToRGB
 004E690B    push        eax
 004E690C    mov         eax,dword ptr [ebp-4]
 004E690F    call        0042F6A0
 004E6914    push        eax
 004E6915    call        gdi32.SetBkColor
 004E691A    mov         eax,dword ptr [ebp+8]
 004E691D    mov         edx,dword ptr [ebp+8]
 004E6920    lea         esi,[eax-21]
 004E6923    lea         edi,[edx-31]
 004E6926    movs        dword ptr [edi],dword ptr [esi]
 004E6927    movs        dword ptr [edi],dword ptr [esi]
 004E6928    movs        dword ptr [edi],dword ptr [esi]
 004E6929    movs        dword ptr [edi],dword ptr [esi]
 004E692A    mov         eax,dword ptr [ebp+8]
 004E692D    mov         eax,dword ptr [eax-21]
 004E6930    mov         edx,dword ptr [ebp+8]
 004E6933    mov         edx,dword ptr [edx-0C]
 004E6936    add         eax,dword ptr [edx+4BC]
 004E693C    mov         edx,dword ptr [ebp+8]
 004E693F    mov         dword ptr [edx-29],eax
 004E6942    mov         eax,dword ptr [ebp+8]
 004E6945    mov         byte ptr [eax-11],1
 004E6949    mov         eax,dword ptr [ebp+8]
 004E694C    mov         eax,dword ptr [eax-0C]
 004E694F    cmp         word ptr [eax+64A],0
>004E6957    je          004E69F6
 004E695D    mov         eax,dword ptr [ebp+8]
 004E6960    cmp         dword ptr [eax-44],0
>004E6964    jne         004E69AF
 004E6966    mov         eax,dword ptr [ebp+8]
 004E6969    mov         eax,dword ptr [eax-44]
 004E696C    push        eax
 004E696D    mov         eax,dword ptr [ebp+8]
 004E6970    mov         eax,dword ptr [eax-48]
 004E6973    push        eax
 004E6974    mov         eax,dword ptr [ebp+8]
 004E6977    add         eax,0FFFFFFF0
 004E697A    push        eax
 004E697B    mov         eax,dword ptr [ebp+8]
 004E697E    add         eax,0FFFFFFDF
 004E6981    push        eax
 004E6982    mov         eax,dword ptr [ebp+8]
 004E6985    add         eax,0FFFFFFEF
 004E6988    push        eax
 004E6989    mov         eax,dword ptr [ebp+8]
 004E698C    mov         ebx,dword ptr [eax-0C]
 004E698F    mov         eax,dword ptr [ebp+8]
 004E6992    mov         eax,dword ptr [eax-0C]
 004E6995    mov         ecx,dword ptr [eax+208]
 004E699B    mov         eax,dword ptr [ebp+8]
 004E699E    mov         edx,dword ptr [eax-0C]
 004E69A1    mov         eax,dword ptr [ebx+64C]
 004E69A7    call        dword ptr [ebx+648]
>004E69AD    jmp         004E69F6
 004E69AF    mov         eax,dword ptr [ebp+8]
 004E69B2    mov         eax,dword ptr [eax-44]
 004E69B5    push        eax
 004E69B6    mov         eax,dword ptr [ebp+8]
 004E69B9    mov         eax,dword ptr [eax-48]
 004E69BC    push        eax
 004E69BD    mov         eax,dword ptr [ebp+8]
 004E69C0    add         eax,0FFFFFFF0
 004E69C3    push        eax
 004E69C4    mov         eax,dword ptr [ebp+8]
 004E69C7    add         eax,0FFFFFFCF
 004E69CA    push        eax
 004E69CB    mov         eax,dword ptr [ebp+8]
 004E69CE    add         eax,0FFFFFFEF
 004E69D1    push        eax
 004E69D2    mov         eax,dword ptr [ebp+8]
 004E69D5    mov         ebx,dword ptr [eax-0C]
 004E69D8    mov         eax,dword ptr [ebp+8]
 004E69DB    mov         eax,dword ptr [eax-0C]
 004E69DE    mov         ecx,dword ptr [eax+208]
 004E69E4    mov         eax,dword ptr [ebp+8]
 004E69E7    mov         edx,dword ptr [eax-0C]
 004E69EA    mov         eax,dword ptr [ebx+64C]
 004E69F0    call        dword ptr [ebx+648]
 004E69F6    mov         eax,dword ptr [ebp+8]
 004E69F9    cmp         byte ptr [eax-11],0
>004E69FD    je          004E6AAB
 004E6A03    mov         eax,dword ptr [ebp+8]
 004E6A06    lea         edx,[eax-21]
 004E6A09    mov         eax,dword ptr [ebp-4]
 004E6A0C    call        0042F030
 004E6A11    mov         eax,dword ptr [ebp+8]
 004E6A14    cmp         dword ptr [eax-44],0
>004E6A18    jne         004E6A6A
 004E6A1A    push        0
 004E6A1C    mov         eax,dword ptr [ebp+8]
 004E6A1F    mov         eax,dword ptr [eax-10]
 004E6A22    call        @WStrLen
 004E6A27    push        eax
 004E6A28    mov         eax,dword ptr [ebp+8]
 004E6A2B    mov         eax,dword ptr [eax-10]
 004E6A2E    call        @WStrToPWChar
 004E6A33    push        eax
 004E6A34    mov         eax,dword ptr [ebp+8]
 004E6A37    add         eax,0FFFFFFDF
 004E6A3A    push        eax
 004E6A3B    push        6
 004E6A3D    mov         eax,dword ptr [ebp+8]
 004E6A40    mov         eax,dword ptr [eax-1D]
 004E6A43    push        eax
 004E6A44    mov         eax,dword ptr [ebp+8]
 004E6A47    push        eax
 004E6A48    call        004E687C
 004E6A4D    pop         ecx
 004E6A4E    mov         edx,dword ptr [ebp+8]
 004E6A51    mov         edx,dword ptr [edx-19]
 004E6A54    sub         edx,eax
 004E6A56    sub         edx,4
 004E6A59    push        edx
 004E6A5A    mov         eax,dword ptr [ebp-4]
 004E6A5D    call        0042F6A0
 004E6A62    push        eax
 004E6A63    call        gdi32.ExtTextOutW
>004E6A68    jmp         004E6AB2
 004E6A6A    push        0
 004E6A6C    mov         eax,dword ptr [ebp+8]
 004E6A6F    mov         eax,dword ptr [eax-10]
 004E6A72    call        @WStrLen
 004E6A77    push        eax
 004E6A78    mov         eax,dword ptr [ebp+8]
 004E6A7B    mov         eax,dword ptr [eax-10]
 004E6A7E    call        @WStrToPWChar
 004E6A83    push        eax
 004E6A84    mov         eax,dword ptr [ebp+8]
 004E6A87    add         eax,0FFFFFFCF
 004E6A8A    push        eax
 004E6A8B    push        6
 004E6A8D    mov         eax,dword ptr [ebp+8]
 004E6A90    mov         eax,dword ptr [eax-1D]
 004E6A93    push        eax
 004E6A94    mov         eax,dword ptr [ebp+8]
 004E6A97    mov         eax,dword ptr [eax-21]
 004E6A9A    push        eax
 004E6A9B    mov         eax,dword ptr [ebp-4]
 004E6A9E    call        0042F6A0
 004E6AA3    push        eax
 004E6AA4    call        gdi32.ExtTextOutW
>004E6AA9    jmp         004E6AB2
 004E6AAB    mov         eax,dword ptr [ebp+8]
 004E6AAE    mov         byte ptr [eax-11],1
 004E6AB2    pop         edi
 004E6AB3    pop         esi
 004E6AB4    pop         ebx
 004E6AB5    pop         ecx
 004E6AB6    pop         ebp
 004E6AB7    ret
end;*}

//004E6AB8
{*procedure sub_004E6AB8(?:?);
begin
 004E6AB8    push        ebp
 004E6AB9    mov         ebp,esp
 004E6ABB    add         esp,0FFFFFFF4
 004E6ABE    push        ebx
 004E6ABF    xor         eax,eax
 004E6AC1    mov         dword ptr [ebp-0C],eax
 004E6AC4    xor         eax,eax
 004E6AC6    push        ebp
 004E6AC7    push        4E6C43
 004E6ACC    push        dword ptr fs:[eax]
 004E6ACF    mov         dword ptr fs:[eax],esp
 004E6AD2    mov         eax,dword ptr [ebp+8]
 004E6AD5    mov         eax,dword ptr [eax-48]
 004E6AD8    mov         edx,dword ptr [ebp+8]
 004E6ADB    mov         edx,dword ptr [edx-0C]
 004E6ADE    cmp         eax,dword ptr [edx+22C]
>004E6AE4    jne         004E6B12
 004E6AE6    mov         eax,dword ptr [ebp+8]
 004E6AE9    mov         eax,dword ptr [eax-0C]
 004E6AEC    mov         eax,dword ptr [eax+4D0]
 004E6AF2    mov         eax,dword ptr [eax+28]
 004E6AF5    mov         edx,dword ptr [ebp+8]
 004E6AF8    mov         dword ptr [edx-38],eax
 004E6AFB    mov         eax,dword ptr [ebp+8]
 004E6AFE    mov         eax,dword ptr [eax-0C]
 004E6B01    mov         eax,dword ptr [eax+4D0]
 004E6B07    mov         eax,dword ptr [eax+34]
 004E6B0A    mov         edx,dword ptr [ebp+8]
 004E6B0D    mov         dword ptr [edx-3C],eax
>004E6B10    jmp         004E6B3C
 004E6B12    mov         eax,dword ptr [ebp+8]
 004E6B15    mov         eax,dword ptr [eax-0C]
 004E6B18    mov         eax,dword ptr [eax+4D0]
 004E6B1E    mov         eax,dword ptr [eax+2C]
 004E6B21    mov         edx,dword ptr [ebp+8]
 004E6B24    mov         dword ptr [edx-38],eax
 004E6B27    mov         eax,dword ptr [ebp+8]
 004E6B2A    mov         eax,dword ptr [eax-0C]
 004E6B2D    mov         eax,dword ptr [eax+4D0]
 004E6B33    mov         eax,dword ptr [eax+8]
 004E6B36    mov         edx,dword ptr [ebp+8]
 004E6B39    mov         dword ptr [edx-3C],eax
 004E6B3C    mov         eax,dword ptr [ebp+8]
 004E6B3F    mov         eax,dword ptr [eax-38]
 004E6B42    mov         edx,dword ptr [ebp+8]
 004E6B45    mov         dword ptr [edx-40],eax
 004E6B48    mov         eax,dword ptr [ebp+8]
 004E6B4B    mov         edx,dword ptr [eax-48]
 004E6B4E    sub         edx,2
 004E6B51    mov         eax,dword ptr [ebp+8]
 004E6B54    mov         eax,dword ptr [eax-0C]
 004E6B57    imul        edx,dword ptr [eax+4D4]
 004E6B5E    lea         ecx,[ebp-0C]
 004E6B61    mov         eax,dword ptr [ebp+8]
 004E6B64    mov         eax,dword ptr [eax-0C]
 004E6B67    mov         ebx,dword ptr [eax]
 004E6B69    call        dword ptr [ebx+104]
 004E6B6F    mov         edx,dword ptr [ebp-0C]
 004E6B72    mov         eax,dword ptr [ebp+8]
 004E6B75    add         eax,0FFFFFFF0
 004E6B78    call        @WStrFromLStr
 004E6B7D    mov         eax,dword ptr [ebp+8]
 004E6B80    push        eax
 004E6B81    call        004E68C8
 004E6B86    pop         ecx
 004E6B87    xor         eax,eax
 004E6B89    mov         dword ptr [ebp-4],eax
 004E6B8C    mov         eax,dword ptr [ebp+8]
 004E6B8F    mov         eax,dword ptr [eax-0C]
 004E6B92    mov         edx,dword ptr [ebp-4]
 004E6B95    lea         eax,[eax+edx*8+4FC]
 004E6B9C    mov         dword ptr [ebp-8],eax
 004E6B9F    mov         eax,dword ptr [ebp-8]
 004E6BA2    cmp         dword ptr [eax],0FFFFFFFF
>004E6BA5    jle         004E6C20
 004E6BA7    mov         eax,dword ptr [ebp+8]
 004E6BAA    mov         eax,dword ptr [eax-0C]
 004E6BAD    push        dword ptr [eax+4D4]
 004E6BB3    mov         eax,dword ptr [ebp-8]
 004E6BB6    mov         eax,dword ptr [eax]
 004E6BB8    pop         edx
 004E6BB9    mov         ecx,edx
 004E6BBB    cdq
 004E6BBC    idiv        eax,ecx
 004E6BBE    mov         edx,dword ptr [ebp+8]
 004E6BC1    mov         edx,dword ptr [edx-48]
 004E6BC4    sub         edx,2
 004E6BC7    cmp         eax,edx
>004E6BC9    jne         004E6C20
 004E6BCB    mov         eax,dword ptr [ebp+8]
 004E6BCE    mov         eax,dword ptr [eax-15]
 004E6BD1    mov         edx,dword ptr [ebp+8]
 004E6BD4    sub         eax,dword ptr [edx-1D]
 004E6BD7    sub         eax,0A
 004E6BDA    sar         eax,1
>004E6BDC    jns         004E6BE1
 004E6BDE    adc         eax,0
 004E6BE1    mov         edx,dword ptr [ebp+8]
 004E6BE4    add         eax,dword ptr [edx-1D]
 004E6BE7    push        eax
 004E6BE8    mov         eax,dword ptr [ebp-8]
 004E6BEB    movzx       eax,byte ptr [eax+4]
 004E6BEF    add         eax,eax
 004E6BF1    lea         eax,[eax+eax*4]
 004E6BF4    add         eax,dword ptr [ebp-4]
 004E6BF7    push        eax
 004E6BF8    push        1
 004E6BFA    mov         eax,dword ptr [ebp+8]
 004E6BFD    mov         ecx,dword ptr [eax-21]
 004E6C00    add         ecx,3
 004E6C03    mov         eax,dword ptr [ebp+8]
 004E6C06    mov         eax,dword ptr [eax-0C]
 004E6C09    mov         edx,dword ptr [eax+208]
 004E6C0F    mov         eax,dword ptr [ebp+8]
 004E6C12    mov         eax,dword ptr [eax-0C]
 004E6C15    mov         eax,dword ptr [eax+4C4]
 004E6C1B    call        00495958
 004E6C20    inc         dword ptr [ebp-4]
 004E6C23    cmp         dword ptr [ebp-4],0A
>004E6C27    jne         004E6B8C
 004E6C2D    xor         eax,eax
 004E6C2F    pop         edx
 004E6C30    pop         ecx
 004E6C31    pop         ecx
 004E6C32    mov         dword ptr fs:[eax],edx
 004E6C35    push        4E6C4A
 004E6C3A    lea         eax,[ebp-0C]
 004E6C3D    call        @LStrClr
 004E6C42    ret
>004E6C43    jmp         @HandleFinally
>004E6C48    jmp         004E6C3A
 004E6C4A    pop         ebx
 004E6C4B    mov         esp,ebp
 004E6C4D    pop         ebp
 004E6C4E    ret
end;*}

//004E6C50
{*procedure sub_004E6C50(?:?);
begin
 004E6C50    push        ebp
 004E6C51    mov         ebp,esp
 004E6C53    mov         eax,dword ptr [ebp+8]
 004E6C56    mov         eax,dword ptr [eax-44]
 004E6C59    mov         edx,dword ptr [ebp+8]
 004E6C5C    mov         edx,dword ptr [edx-0C]
 004E6C5F    mov         edx,dword ptr [edx+4DC]
 004E6C65    add         edx,2
 004E6C68    cmp         eax,edx
>004E6C6A    je          004E6CEA
 004E6C6C    mov         eax,dword ptr [ebp+8]
 004E6C6F    mov         eax,dword ptr [eax-44]
 004E6C72    mov         edx,dword ptr [ebp+8]
 004E6C75    mov         edx,dword ptr [edx-0C]
 004E6C78    mov         edx,dword ptr [edx+4DC]
 004E6C7E    add         edx,2
 004E6C81    cmp         eax,edx
>004E6C83    jle         004E6CC5
 004E6C85    mov         eax,dword ptr [ebp+8]
 004E6C88    mov         eax,dword ptr [eax-44]
 004E6C8B    mov         edx,dword ptr [ebp+8]
 004E6C8E    mov         edx,dword ptr [edx-0C]
 004E6C91    mov         edx,dword ptr [edx+4DC]
 004E6C97    add         edx,2
 004E6C9A    inc         edx
 004E6C9B    sub         eax,edx
 004E6C9D    mov         edx,dword ptr [ebp+8]
 004E6CA0    mov         dword ptr [edx-4C],eax
 004E6CA3    mov         eax,dword ptr [ebp+8]
 004E6CA6    add         eax,0FFFFFFF0
 004E6CA9    mov         edx,dword ptr [ebp+8]
 004E6CAC    mov         edx,dword ptr [edx-4C]
 004E6CAF    mov         ecx,dword ptr [ebp+8]
 004E6CB2    mov         ecx,dword ptr [ecx-0C]
 004E6CB5    mov         ecx,dword ptr [ecx+678]
 004E6CBB    mov         dl,byte ptr [ecx+edx]
 004E6CBE    call        @WStrFromChar
>004E6CC3    jmp         004E6CFA
 004E6CC5    mov         eax,dword ptr [ebp+8]
 004E6CC8    add         eax,0FFFFFFF0
 004E6CCB    mov         edx,dword ptr [ebp+8]
 004E6CCE    mov         edx,dword ptr [edx-44]
 004E6CD1    sub         edx,2
 004E6CD4    mov         ecx,dword ptr [ebp+8]
 004E6CD7    mov         ecx,dword ptr [ecx-0C]
 004E6CDA    mov         ecx,dword ptr [ecx+674]
 004E6CE0    mov         dl,byte ptr [ecx+edx]
 004E6CE3    call        @WStrFromChar
>004E6CE8    jmp         004E6CFA
 004E6CEA    mov         eax,dword ptr [ebp+8]
 004E6CED    add         eax,0FFFFFFF0
 004E6CF0    mov         edx,4E6D8C
 004E6CF5    call        00405828
 004E6CFA    mov         eax,dword ptr [ebp+8]
 004E6CFD    mov         eax,dword ptr [eax-0C]
 004E6D00    mov         eax,dword ptr [eax+4D0]
 004E6D06    mov         eax,dword ptr [eax+2C]
 004E6D09    mov         edx,dword ptr [ebp+8]
 004E6D0C    mov         dword ptr [edx-38],eax
 004E6D0F    mov         eax,dword ptr [ebp+8]
 004E6D12    mov         eax,dword ptr [eax-0C]
 004E6D15    mov         eax,dword ptr [eax+228]
 004E6D1B    mov         edx,dword ptr [ebp+8]
 004E6D1E    cmp         eax,dword ptr [edx-44]
>004E6D21    jne         004E6D4F
 004E6D23    mov         eax,dword ptr [ebp+8]
 004E6D26    mov         eax,dword ptr [eax-0C]
 004E6D29    mov         eax,dword ptr [eax+4D0]
 004E6D2F    mov         eax,dword ptr [eax+28]
 004E6D32    mov         edx,dword ptr [ebp+8]
 004E6D35    mov         dword ptr [edx-40],eax
 004E6D38    mov         eax,dword ptr [ebp+8]
 004E6D3B    mov         eax,dword ptr [eax-0C]
 004E6D3E    mov         eax,dword ptr [eax+4D0]
 004E6D44    mov         eax,dword ptr [eax+34]
 004E6D47    mov         edx,dword ptr [ebp+8]
 004E6D4A    mov         dword ptr [edx-3C],eax
>004E6D4D    jmp         004E6D79
 004E6D4F    mov         eax,dword ptr [ebp+8]
 004E6D52    mov         eax,dword ptr [eax-0C]
 004E6D55    mov         eax,dword ptr [eax+4D0]
 004E6D5B    mov         eax,dword ptr [eax+2C]
 004E6D5E    mov         edx,dword ptr [ebp+8]
 004E6D61    mov         dword ptr [edx-40],eax
 004E6D64    mov         eax,dword ptr [ebp+8]
 004E6D67    mov         eax,dword ptr [eax-0C]
 004E6D6A    mov         eax,dword ptr [eax+4D0]
 004E6D70    mov         eax,dword ptr [eax+8]
 004E6D73    mov         edx,dword ptr [ebp+8]
 004E6D76    mov         dword ptr [edx-3C],eax
 004E6D79    mov         eax,dword ptr [ebp+8]
 004E6D7C    push        eax
 004E6D7D    call        004E68C8
 004E6D82    pop         ecx
 004E6D83    pop         ebp
 004E6D84    ret
end;*}

//004E6D94
{*procedure sub_004E6D94(?:?; ?:?; ?:?);
begin
 004E6D94    push        ebp
 004E6D95    mov         ebp,esp
 004E6D97    add         esp,0FFFFFFD0
 004E6D9A    push        ebx
 004E6D9B    push        esi
 004E6D9C    push        edi
 004E6D9D    xor         ecx,ecx
 004E6D9F    mov         dword ptr [ebp-10],ecx
 004E6DA2    mov         byte ptr [ebp-2],dl
 004E6DA5    mov         byte ptr [ebp-1],al
 004E6DA8    xor         eax,eax
 004E6DAA    push        ebp
 004E6DAB    push        4E7A4A
 004E6DB0    push        dword ptr fs:[eax]
 004E6DB3    mov         dword ptr fs:[eax],esp
 004E6DB6    mov         eax,dword ptr [ebp+8]
 004E6DB9    mov         ecx,dword ptr [eax-48]
 004E6DBC    mov         eax,dword ptr [ebp+8]
 004E6DBF    mov         edx,dword ptr [eax-44]
 004E6DC2    mov         eax,dword ptr [ebp+8]
 004E6DC5    mov         eax,dword ptr [eax-0C]
 004E6DC8    call        004E1288
 004E6DCD    mov         edx,dword ptr [ebp+8]
 004E6DD0    mov         dword ptr [edx-4C],eax
 004E6DD3    mov         eax,dword ptr [ebp+8]
 004E6DD6    mov         eax,dword ptr [eax-4C]
 004E6DD9    mov         edx,dword ptr [ebp+8]
 004E6DDC    mov         edx,dword ptr [edx-0C]
 004E6DDF    mov         dword ptr [edx+640],eax
 004E6DE5    mov         eax,dword ptr [ebp+8]
 004E6DE8    mov         eax,dword ptr [eax-0C]
 004E6DEB    mov         al,byte ptr [eax+4F0]
 004E6DF1    xor         al,1
 004E6DF3    mov         edx,dword ptr [ebp+8]
 004E6DF6    mov         edx,dword ptr [edx-0C]
 004E6DF9    mov         byte ptr [edx+644],al
 004E6DFF    cmp         byte ptr [ebp-2],0
>004E6E03    je          004E6E3E
 004E6E05    mov         eax,dword ptr [ebp+8]
 004E6E08    mov         eax,dword ptr [eax-44]
 004E6E0B    mov         edx,dword ptr [ebp+8]
 004E6E0E    cmp         eax,dword ptr [edx-54]
>004E6E11    jge         004E6E3E
 004E6E13    mov         eax,dword ptr [ebp+8]
 004E6E16    mov         eax,dword ptr [eax-44]
 004E6E19    mov         edx,dword ptr [ebp+8]
 004E6E1C    mov         edx,dword ptr [edx-0C]
 004E6E1F    cmp         eax,dword ptr [edx+29C]
>004E6E25    je          004E6E3E
 004E6E27    mov         eax,dword ptr [ebp+8]
 004E6E2A    mov         eax,dword ptr [eax-0C]
 004E6E2D    mov         eax,dword ptr [eax+4D0]
 004E6E33    mov         eax,dword ptr [eax+30]
 004E6E36    mov         edx,dword ptr [ebp+8]
 004E6E39    mov         dword ptr [edx-38],eax
>004E6E3C    jmp         004E6E53
 004E6E3E    mov         eax,dword ptr [ebp+8]
 004E6E41    mov         eax,dword ptr [eax-0C]
 004E6E44    mov         eax,dword ptr [eax+4D0]
 004E6E4A    mov         eax,dword ptr [eax+1C]
 004E6E4D    mov         edx,dword ptr [ebp+8]
 004E6E50    mov         dword ptr [edx-38],eax
 004E6E53    mov         eax,dword ptr [ebp+8]
 004E6E56    mov         eax,dword ptr [eax-4C]
 004E6E59    mov         edx,dword ptr [ebp+8]
 004E6E5C    cmp         eax,dword ptr [edx-58]
>004E6E5F    jge         004E7518
 004E6E65    cmp         byte ptr [ebp-1],0
>004E6E69    jne         004E6EF7
 004E6E6F    mov         eax,dword ptr [ebp+8]
 004E6E72    mov         eax,dword ptr [eax-44]
 004E6E75    sub         eax,2
 004E6E78    and         eax,80000001
>004E6E7D    jns         004E6E84
 004E6E7F    dec         eax
 004E6E80    or          eax,0FFFFFFFE
 004E6E83    inc         eax
 004E6E84    mov         edx,dword ptr [ebp+8]
 004E6E87    mov         edx,dword ptr [edx-0C]
 004E6E8A    cmp         eax,dword ptr [edx+4E4]
>004E6E90    jne         004E6EC5
 004E6E92    mov         eax,dword ptr [ebp+8]
 004E6E95    mov         edx,dword ptr [eax-4C]
 004E6E98    mov         eax,dword ptr [ebp+8]
 004E6E9B    mov         eax,dword ptr [eax-0C]
 004E6E9E    call        004E8F14
 004E6EA3    and         eax,0FF
 004E6EA8    shr         eax,4
 004E6EAB    mov         edx,dword ptr [ebp+8]
 004E6EAE    mov         edx,dword ptr [edx-0C]
 004E6EB1    movzx       eax,byte ptr [edx+eax+5D0]
 004E6EB9    mov         edx,dword ptr [ebp+8]
 004E6EBC    mov         word ptr [edx-4E],ax
>004E6EC0    jmp         004E6FC0
 004E6EC5    mov         eax,dword ptr [ebp+8]
 004E6EC8    mov         edx,dword ptr [eax-4C]
 004E6ECB    mov         eax,dword ptr [ebp+8]
 004E6ECE    mov         eax,dword ptr [eax-0C]
 004E6ED1    call        004E8F14
 004E6ED6    and         al,0F
 004E6ED8    and         eax,0FF
 004E6EDD    mov         edx,dword ptr [ebp+8]
 004E6EE0    mov         edx,dword ptr [edx-0C]
 004E6EE3    movzx       eax,byte ptr [edx+eax+5D0]
 004E6EEB    mov         edx,dword ptr [ebp+8]
 004E6EEE    mov         word ptr [edx-4E],ax
>004E6EF2    jmp         004E6FC0
 004E6EF7    mov         eax,dword ptr [ebp+8]
 004E6EFA    mov         eax,dword ptr [eax-0C]
 004E6EFD    cmp         byte ptr [eax+61C],0
>004E6F04    je          004E6F96
 004E6F0A    mov         eax,dword ptr [ebp+8]
 004E6F0D    mov         word ptr [eax-4E],0
 004E6F13    mov         eax,dword ptr [ebp+8]
 004E6F16    mov         edx,dword ptr [eax-58]
 004E6F19    mov         eax,dword ptr [ebp+8]
 004E6F1C    sub         edx,dword ptr [eax-4C]
 004E6F1F    mov         eax,2
 004E6F24    call        004DF5BC
 004E6F29    push        eax
 004E6F2A    mov         eax,dword ptr [ebp+8]
 004E6F2D    mov         ecx,dword ptr [eax-4C]
 004E6F30    mov         eax,dword ptr [ebp+8]
 004E6F33    lea         edx,[eax-4E]
 004E6F36    mov         eax,dword ptr [ebp+8]
 004E6F39    mov         eax,dword ptr [eax-0C]
 004E6F3C    call        004E8F70
 004E6F41    mov         eax,dword ptr [ebp+8]
 004E6F44    mov         eax,dword ptr [eax-0C]
 004E6F47    cmp         byte ptr [eax+61D],0
>004E6F4E    je          004E6F5B
 004E6F50    mov         eax,dword ptr [ebp+8]
 004E6F53    add         eax,0FFFFFFB2
 004E6F56    call        004DFB2C
 004E6F5B    mov         eax,dword ptr [ebp+8]
 004E6F5E    cmp         word ptr [eax-4E],100
>004E6F64    jae         004E6FC0
 004E6F66    mov         eax,dword ptr [ebp+8]
 004E6F69    mov         al,byte ptr [eax-4E]
 004E6F6C    mov         edx,dword ptr [ebp+8]
 004E6F6F    mov         edx,dword ptr [edx-0C]
 004E6F72    and         eax,0FF
 004E6F77    bt          dword ptr [edx+620],eax
>004E6F7E    jae         004E6FC0
 004E6F80    mov         eax,dword ptr [ebp+8]
 004E6F83    mov         eax,dword ptr [eax-0C]
 004E6F86    movzx       eax,byte ptr [eax+55E]
 004E6F8D    mov         edx,dword ptr [ebp+8]
 004E6F90    mov         word ptr [edx-4E],ax
>004E6F94    jmp         004E6FC0
 004E6F96    mov         eax,dword ptr [ebp+8]
 004E6F99    mov         edx,dword ptr [eax-4C]
 004E6F9C    mov         eax,dword ptr [ebp+8]
 004E6F9F    mov         eax,dword ptr [eax-0C]
 004E6FA2    call        004E8F14
 004E6FA7    mov         edx,eax
 004E6FA9    mov         eax,dword ptr [ebp+8]
 004E6FAC    mov         eax,dword ptr [eax-0C]
 004E6FAF    call        004E0C84
 004E6FB4    and         eax,0FF
 004E6FB9    mov         edx,dword ptr [ebp+8]
 004E6FBC    mov         word ptr [edx-4E],ax
 004E6FC0    mov         eax,dword ptr [ebp+8]
 004E6FC3    mov         edx,dword ptr [eax-4C]
 004E6FC6    mov         eax,dword ptr [ebp+8]
 004E6FC9    mov         eax,dword ptr [eax-0C]
 004E6FCC    call        004E2940
 004E6FD1    test        al,al
>004E6FD3    jne         004E7000
 004E6FD5    mov         eax,dword ptr [ebp+8]
 004E6FD8    mov         eax,dword ptr [eax-0C]
 004E6FDB    mov         al,byte ptr [eax+61C]
 004E6FE1    and         al,byte ptr [ebp-1]
>004E6FE4    je          004E6FFC
 004E6FE6    mov         eax,dword ptr [ebp+8]
 004E6FE9    mov         edx,dword ptr [eax-4C]
 004E6FEC    inc         edx
 004E6FED    mov         eax,dword ptr [ebp+8]
 004E6FF0    mov         eax,dword ptr [eax-0C]
 004E6FF3    call        004E2940
 004E6FF8    test        al,al
>004E6FFA    jne         004E7000
 004E6FFC    xor         eax,eax
>004E6FFE    jmp         004E7002
 004E7000    mov         al,1
 004E7002    mov         edx,dword ptr [ebp+8]
 004E7005    mov         byte ptr [edx-59],al
 004E7008    mov         eax,dword ptr [ebp+8]
 004E700B    mov         eax,dword ptr [eax-44]
 004E700E    sub         eax,2
 004E7011    mov         edx,dword ptr [ebp+8]
 004E7014    mov         edx,dword ptr [edx-0C]
 004E7017    mov         ecx,dword ptr [edx+4EC]
 004E701D    cdq
 004E701E    idiv        eax,ecx
 004E7020    and         eax,80000001
>004E7025    jns         004E702C
 004E7027    dec         eax
 004E7028    or          eax,0FFFFFFFE
 004E702B    inc         eax
 004E702C    test        eax,eax
 004E702E    mov         eax,dword ptr [ebp+8]
 004E7031    sete        byte ptr [eax-5A]
 004E7035    mov         eax,dword ptr [ebp+8]
 004E7038    cmp         byte ptr [eax-59],0
>004E703C    je          004E706D
 004E703E    mov         eax,dword ptr [ebp+8]
 004E7041    mov         eax,dword ptr [eax-0C]
 004E7044    mov         eax,dword ptr [eax+4D0]
 004E704A    mov         eax,dword ptr [eax+20]
 004E704D    mov         edx,dword ptr [ebp+8]
 004E7050    mov         dword ptr [edx-3C],eax
 004E7053    mov         eax,dword ptr [ebp+8]
 004E7056    mov         eax,dword ptr [eax-0C]
 004E7059    mov         eax,dword ptr [eax+4D0]
 004E705F    mov         eax,dword ptr [eax+24]
 004E7062    mov         edx,dword ptr [ebp+8]
 004E7065    mov         dword ptr [edx-40],eax
>004E7068    jmp         004E70F7
 004E706D    cmp         byte ptr [ebp-2],0
>004E7071    je          004E708A
 004E7073    mov         eax,dword ptr [ebp+8]
 004E7076    mov         eax,dword ptr [eax-0C]
 004E7079    mov         eax,dword ptr [eax+4D0]
 004E707F    mov         eax,dword ptr [eax+30]
 004E7082    mov         edx,dword ptr [ebp+8]
 004E7085    mov         dword ptr [edx-40],eax
>004E7088    jmp         004E709F
 004E708A    mov         eax,dword ptr [ebp+8]
 004E708D    mov         eax,dword ptr [eax-0C]
 004E7090    mov         eax,dword ptr [eax+4D0]
 004E7096    mov         eax,dword ptr [eax+1C]
 004E7099    mov         edx,dword ptr [ebp+8]
 004E709C    mov         dword ptr [edx-40],eax
 004E709F    mov         eax,dword ptr [ebp+8]
 004E70A2    mov         eax,dword ptr [eax-0C]
 004E70A5    cmp         byte ptr [eax+4F0],0
>004E70AC    jne         004E70E5
 004E70AE    mov         eax,dword ptr [ebp+8]
 004E70B1    cmp         byte ptr [eax-5A],0
>004E70B5    je          004E70CE
 004E70B7    mov         eax,dword ptr [ebp+8]
 004E70BA    mov         eax,dword ptr [eax-0C]
 004E70BD    mov         eax,dword ptr [eax+4D0]
 004E70C3    mov         eax,dword ptr [eax+0C]
 004E70C6    mov         edx,dword ptr [ebp+8]
 004E70C9    mov         dword ptr [edx-3C],eax
>004E70CC    jmp         004E70F7
 004E70CE    mov         eax,dword ptr [ebp+8]
 004E70D1    mov         eax,dword ptr [eax-0C]
 004E70D4    mov         eax,dword ptr [eax+4D0]
 004E70DA    mov         eax,dword ptr [eax+10]
 004E70DD    mov         edx,dword ptr [ebp+8]
 004E70E0    mov         dword ptr [edx-3C],eax
>004E70E3    jmp         004E70F7
 004E70E5    mov         eax,dword ptr [ebp+8]
 004E70E8    mov         eax,dword ptr [eax-0C]
 004E70EB    mov         eax,dword ptr [eax+68]
 004E70EE    mov         eax,dword ptr [eax+18]
 004E70F1    mov         edx,dword ptr [ebp+8]
 004E70F4    mov         dword ptr [edx-3C],eax
 004E70F7    mov         eax,dword ptr [ebp+8]
 004E70FA    mov         eax,dword ptr [eax-0C]
 004E70FD    cmp         dword ptr [eax+550],0FFFFFFFF
>004E7104    je          004E7202
 004E710A    mov         eax,dword ptr [ebp+8]
 004E710D    mov         edx,dword ptr [eax-4C]
 004E7110    mov         eax,dword ptr [ebp+8]
 004E7113    mov         eax,dword ptr [eax-0C]
 004E7116    call        004E2988
 004E711B    test        al,al
>004E711D    je          004E7202
 004E7123    mov         eax,dword ptr [ebp+8]
 004E7126    mov         eax,dword ptr [eax-0C]
 004E7129    mov         byte ptr [eax+658],1
 004E7130    mov         eax,dword ptr [ebp+8]
 004E7133    mov         eax,dword ptr [eax-0C]
 004E7136    cmp         byte ptr [eax+562],0
>004E713D    je          004E714C
 004E713F    mov         eax,dword ptr [ebp+8]
 004E7142    cmp         byte ptr [eax-5B],0
>004E7146    je          004E720F
 004E714C    mov         eax,dword ptr [ebp+8]
 004E714F    mov         eax,dword ptr [eax-44]
 004E7152    mov         edx,dword ptr [ebp+8]
 004E7155    cmp         eax,dword ptr [edx-54]
>004E7158    jge         004E71A4
 004E715A    mov         eax,dword ptr [ebp+8]
 004E715D    mov         eax,dword ptr [eax-44]
 004E7160    mov         edx,dword ptr [ebp+8]
 004E7163    mov         edx,dword ptr [edx-0C]
 004E7166    cmp         eax,dword ptr [edx+29C]
>004E716C    je          004E71A4
 004E716E    mov         eax,dword ptr [ebp+8]
 004E7171    mov         eax,dword ptr [eax-0C]
 004E7174    mov         edx,dword ptr [eax+554]
 004E717A    mov         eax,dword ptr [ebp+8]
 004E717D    mov         eax,dword ptr [eax-0C]
 004E7180    mov         eax,dword ptr [eax+54C]
 004E7186    call        004DF5E8
 004E718B    mov         edx,dword ptr [ebp+8]
 004E718E    cmp         eax,dword ptr [edx-4C]
>004E7191    je          004E71A4
 004E7193    mov         eax,dword ptr [ebp+8]
 004E7196    mov         eax,dword ptr [eax-38]
 004E7199    call        004DF39C
 004E719E    mov         edx,dword ptr [ebp+8]
 004E71A1    mov         dword ptr [edx-38],eax
 004E71A4    mov         eax,dword ptr [ebp+8]
 004E71A7    mov         eax,dword ptr [eax-40]
 004E71AA    call        004DF39C
 004E71AF    mov         edx,dword ptr [ebp+8]
 004E71B2    mov         dword ptr [edx-40],eax
 004E71B5    mov         eax,dword ptr [ebp+8]
 004E71B8    mov         eax,dword ptr [eax-3C]
 004E71BB    call        004DF39C
 004E71C0    mov         edx,dword ptr [ebp+8]
 004E71C3    mov         dword ptr [edx-3C],eax
 004E71C6    mov         eax,dword ptr [ebp+8]
 004E71C9    mov         eax,dword ptr [eax-0C]
 004E71CC    cmp         byte ptr [eax+563],0
>004E71D3    je          004E720F
 004E71D5    mov         eax,dword ptr [ebp+8]
 004E71D8    cmp         byte ptr [eax-5B],0
>004E71DC    jne         004E720F
 004E71DE    mov         eax,dword ptr [ebp+8]
 004E71E1    mov         eax,dword ptr [eax-40]
 004E71E4    call        004DFB44
 004E71E9    mov         edx,dword ptr [ebp+8]
 004E71EC    mov         dword ptr [edx-40],eax
 004E71EF    mov         eax,dword ptr [ebp+8]
 004E71F2    mov         eax,dword ptr [eax-3C]
 004E71F5    call        004DFB44
 004E71FA    mov         edx,dword ptr [ebp+8]
 004E71FD    mov         dword ptr [edx-3C],eax
>004E7200    jmp         004E720F
 004E7202    mov         eax,dword ptr [ebp+8]
 004E7205    mov         eax,dword ptr [eax-0C]
 004E7208    mov         byte ptr [eax+658],0
 004E720F    mov         eax,dword ptr [ebp+8]
 004E7212    mov         eax,dword ptr [eax-0C]
 004E7215    mov         eax,dword ptr [eax+208]
 004E721B    mov         dword ptr [ebp-8],eax
 004E721E    mov         eax,dword ptr [ebp+8]
 004E7221    mov         edx,dword ptr [eax-38]
 004E7224    mov         eax,dword ptr [ebp-8]
 004E7227    mov         eax,dword ptr [eax+14]
 004E722A    call        TBrush.SetColor
 004E722F    mov         eax,dword ptr [ebp+8]
 004E7232    mov         edx,dword ptr [eax-3C]
 004E7235    mov         eax,dword ptr [ebp-8]
 004E7238    mov         eax,dword ptr [eax+0C]
 004E723B    call        TFont.SetColor
 004E7240    mov         eax,dword ptr [ebp+8]
 004E7243    mov         eax,dword ptr [eax-40]
 004E7246    call        ColorToRGB
 004E724B    push        eax
 004E724C    mov         eax,dword ptr [ebp-8]
 004E724F    call        0042F6A0
 004E7254    push        eax
 004E7255    call        gdi32.SetBkColor
 004E725A    mov         eax,dword ptr [ebp+8]
 004E725D    mov         edx,dword ptr [ebp+8]
 004E7260    lea         esi,[eax-21]
 004E7263    lea         edi,[edx-31]
 004E7266    movs        dword ptr [edi],dword ptr [esi]
 004E7267    movs        dword ptr [edi],dword ptr [esi]
 004E7268    movs        dword ptr [edi],dword ptr [esi]
 004E7269    movs        dword ptr [edi],dword ptr [esi]
 004E726A    mov         eax,dword ptr [ebp+8]
 004E726D    mov         eax,dword ptr [eax-21]
 004E7270    mov         edx,dword ptr [ebp+8]
 004E7273    mov         edx,dword ptr [edx-0C]
 004E7276    add         eax,dword ptr [edx+4BC]
 004E727C    mov         edx,dword ptr [ebp+8]
 004E727F    mov         dword ptr [edx-29],eax
 004E7282    mov         eax,dword ptr [ebp+8]
 004E7285    mov         byte ptr [eax-11],1
 004E7289    mov         eax,dword ptr [ebp+8]
 004E728C    mov         eax,dword ptr [eax-0C]
 004E728F    cmp         word ptr [eax+64A],0
>004E7297    je          004E7312
 004E7299    mov         eax,dword ptr [ebp+8]
 004E729C    add         eax,0FFFFFFF0
 004E729F    mov         edx,dword ptr [ebp+8]
 004E72A2    mov         dx,word ptr [edx-4E]
 004E72A6    call        @WStrFromWChar
 004E72AB    mov         eax,dword ptr [ebp+8]
 004E72AE    mov         eax,dword ptr [eax-44]
 004E72B1    push        eax
 004E72B2    mov         eax,dword ptr [ebp+8]
 004E72B5    mov         eax,dword ptr [eax-48]
 004E72B8    push        eax
 004E72B9    mov         eax,dword ptr [ebp+8]
 004E72BC    add         eax,0FFFFFFF0
 004E72BF    push        eax
 004E72C0    mov         eax,dword ptr [ebp+8]
 004E72C3    add         eax,0FFFFFFCF
 004E72C6    push        eax
 004E72C7    mov         eax,dword ptr [ebp+8]
 004E72CA    add         eax,0FFFFFFEF
 004E72CD    push        eax
 004E72CE    mov         eax,dword ptr [ebp+8]
 004E72D1    mov         ebx,dword ptr [eax-0C]
 004E72D4    mov         eax,dword ptr [ebp+8]
 004E72D7    mov         eax,dword ptr [eax-0C]
 004E72DA    mov         ecx,dword ptr [eax+208]
 004E72E0    mov         eax,dword ptr [ebp+8]
 004E72E3    mov         edx,dword ptr [eax-0C]
 004E72E6    mov         eax,dword ptr [ebx+64C]
 004E72EC    call        dword ptr [ebx+648]
 004E72F2    mov         eax,dword ptr [ebp+8]
 004E72F5    mov         edx,dword ptr [eax-10]
 004E72F8    lea         eax,[ebp-10]
 004E72FB    mov         ecx,4E7A5C
 004E7300    call        00405968
 004E7305    mov         eax,dword ptr [ebp-10]
 004E7308    mov         ax,word ptr [eax]
 004E730B    mov         edx,dword ptr [ebp+8]
 004E730E    mov         word ptr [edx-4E],ax
 004E7312    mov         eax,dword ptr [ebp+8]
 004E7315    cmp         byte ptr [eax-11],0
>004E7319    je          004E743C
 004E731F    mov         eax,dword ptr [ebp+8]
 004E7322    lea         edx,[eax-21]
 004E7325    mov         eax,dword ptr [ebp-8]
 004E7328    call        0042F030
 004E732D    mov         eax,dword ptr [ebp+8]
 004E7330    mov         eax,dword ptr [eax-0C]
 004E7333    mov         eax,dword ptr [eax+208]
 004E7339    mov         eax,dword ptr [eax+0C]
 004E733C    call        TFont.GetSize
 004E7341    mov         edx,dword ptr [ebp+8]
 004E7344    mov         dword ptr [edx-60],eax
 004E7347    mov         eax,dword ptr [ebp+8]
 004E734A    mov         eax,dword ptr [eax-0C]
 004E734D    cmp         byte ptr [eax+61C],0
>004E7354    je          004E73E1
>004E735A    jmp         004E7387
 004E735C    mov         eax,dword ptr [ebp+8]
 004E735F    mov         eax,dword ptr [eax-0C]
 004E7362    mov         eax,dword ptr [eax+208]
 004E7368    mov         eax,dword ptr [eax+0C]
 004E736B    call        TFont.GetSize
 004E7370    mov         edx,eax
 004E7372    dec         edx
 004E7373    mov         eax,dword ptr [ebp+8]
 004E7376    mov         eax,dword ptr [eax-0C]
 004E7379    mov         eax,dword ptr [eax+208]
 004E737F    mov         eax,dword ptr [eax+0C]
 004E7382    call        TFont.SetSize
 004E7387    mov         eax,dword ptr [ebp+8]
 004E738A    mov         eax,dword ptr [eax-0C]
 004E738D    mov         eax,dword ptr [eax+208]
 004E7393    mov         eax,dword ptr [eax+0C]
 004E7396    call        TFont.GetSize
 004E739B    dec         eax
>004E739C    jle         004E73E1
 004E739E    mov         eax,dword ptr [ebp+8]
 004E73A1    add         eax,0FFFFFFF8
 004E73A4    push        eax
 004E73A5    push        1
 004E73A7    mov         eax,dword ptr [ebp+8]
 004E73AA    add         eax,0FFFFFFB2
 004E73AD    push        eax
 004E73AE    mov         eax,dword ptr [ebp+8]
 004E73B1    mov         eax,dword ptr [eax-0C]
 004E73B4    mov         eax,dword ptr [eax+208]
 004E73BA    call        0042F6A0
 004E73BF    push        eax
 004E73C0    call        gdi32.GetTextExtentPoint32W
 004E73C5    test        eax,eax
>004E73C7    je          004E73E1
 004E73C9    mov         eax,dword ptr [ebp+8]
 004E73CC    mov         eax,dword ptr [eax-29]
 004E73CF    mov         edx,dword ptr [ebp+8]
 004E73D2    sub         eax,dword ptr [edx-31]
 004E73D5    mov         edx,dword ptr [ebp+8]
 004E73D8    cmp         eax,dword ptr [edx-8]
>004E73DB    jl          004E735C
 004E73E1    push        0
 004E73E3    push        1
 004E73E5    mov         eax,dword ptr [ebp+8]
 004E73E8    add         eax,0FFFFFFB2
 004E73EB    push        eax
 004E73EC    mov         eax,dword ptr [ebp+8]
 004E73EF    add         eax,0FFFFFFCF
 004E73F2    push        eax
 004E73F3    push        6
 004E73F5    mov         eax,dword ptr [ebp+8]
 004E73F8    mov         eax,dword ptr [eax-1D]
 004E73FB    push        eax
 004E73FC    mov         eax,dword ptr [ebp+8]
 004E73FF    mov         eax,dword ptr [eax-21]
 004E7402    push        eax
 004E7403    mov         eax,dword ptr [ebp-8]
 004E7406    call        0042F6A0
 004E740B    push        eax
 004E740C    call        gdi32.ExtTextOutW
 004E7411    mov         eax,dword ptr [ebp+8]
 004E7414    mov         eax,dword ptr [eax-0C]
 004E7417    cmp         byte ptr [eax+61C],0
>004E741E    je          004E7443
 004E7420    mov         eax,dword ptr [ebp+8]
 004E7423    mov         edx,dword ptr [eax-60]
 004E7426    mov         eax,dword ptr [ebp+8]
 004E7429    mov         eax,dword ptr [eax-0C]
 004E742C    mov         eax,dword ptr [eax+208]
 004E7432    mov         eax,dword ptr [eax+0C]
 004E7435    call        TFont.SetSize
>004E743A    jmp         004E7443
 004E743C    mov         eax,dword ptr [ebp+8]
 004E743F    mov         byte ptr [eax-11],1
 004E7443    mov         eax,dword ptr [ebp+8]
 004E7446    mov         eax,dword ptr [eax-0C]
 004E7449    cmp         byte ptr [eax+578],0
>004E7450    je          004E7518
 004E7456    mov         eax,dword ptr [ebp+8]
 004E7459    mov         eax,dword ptr [eax-44]
 004E745C    mov         edx,dword ptr [ebp+8]
 004E745F    mov         edx,dword ptr [edx-0C]
 004E7462    cmp         eax,dword ptr [edx+57C]
>004E7468    jne         004E7518
 004E746E    mov         eax,dword ptr [ebp+8]
 004E7471    mov         eax,dword ptr [eax-48]
 004E7474    mov         edx,dword ptr [ebp+8]
 004E7477    mov         edx,dword ptr [edx-0C]
 004E747A    cmp         eax,dword ptr [edx+580]
>004E7480    jne         004E7518
 004E7486    mov         eax,dword ptr [ebp-8]
 004E7489    mov         eax,dword ptr [eax+10]
 004E748C    call        TPen.GetWidth
 004E7491    mov         edx,dword ptr [ebp+8]
 004E7494    mov         dword ptr [edx-64],eax
 004E7497    xor         eax,eax
 004E7499    push        ebp
 004E749A    push        4E7511
 004E749F    push        dword ptr fs:[eax]
 004E74A2    mov         dword ptr fs:[eax],esp
 004E74A5    mov         eax,dword ptr [ebp-8]
 004E74A8    mov         eax,dword ptr [eax+10]
 004E74AB    mov         edx,2
 004E74B0    call        TPen.SetWidth
 004E74B5    mov         eax,dword ptr [ebp+8]
 004E74B8    mov         edx,dword ptr [eax-3C]
 004E74BB    mov         eax,dword ptr [ebp-8]
 004E74BE    mov         eax,dword ptr [eax+10]
 004E74C1    call        TPen.SetColor
 004E74C6    mov         eax,dword ptr [ebp+8]
 004E74C9    mov         ecx,dword ptr [eax-1D]
 004E74CC    inc         ecx
 004E74CD    mov         eax,dword ptr [ebp+8]
 004E74D0    mov         edx,dword ptr [eax-21]
 004E74D3    inc         edx
 004E74D4    mov         eax,dword ptr [ebp-8]
 004E74D7    call        0042F14C
 004E74DC    mov         eax,dword ptr [ebp+8]
 004E74DF    mov         ecx,dword ptr [eax-15]
 004E74E2    dec         ecx
 004E74E3    mov         eax,dword ptr [ebp+8]
 004E74E6    mov         edx,dword ptr [eax-21]
 004E74E9    inc         edx
 004E74EA    mov         eax,dword ptr [ebp-8]
 004E74ED    call        0042F0D0
 004E74F2    xor         eax,eax
 004E74F4    pop         edx
 004E74F5    pop         ecx
 004E74F6    pop         ecx
 004E74F7    mov         dword ptr fs:[eax],edx
 004E74FA    push        4E7518
 004E74FF    mov         eax,dword ptr [ebp+8]
 004E7502    mov         edx,dword ptr [eax-64]
 004E7505    mov         eax,dword ptr [ebp-8]
 004E7508    mov         eax,dword ptr [eax+10]
 004E750B    call        TPen.SetWidth
 004E7510    ret
>004E7511    jmp         @HandleFinally
>004E7516    jmp         004E74FF
 004E7518    mov         eax,dword ptr [ebp+8]
 004E751B    cmp         byte ptr [eax-5B],0
>004E751F    je          004E78BB
 004E7525    mov         eax,dword ptr [ebp+8]
 004E7528    mov         eax,dword ptr [eax-0C]
 004E752B    cmp         byte ptr [eax+4F0],0
>004E7532    jne         004E77B3
 004E7538    mov         eax,dword ptr [ebp+8]
 004E753B    mov         eax,dword ptr [eax-48]
 004E753E    mov         edx,dword ptr [ebp+8]
 004E7541    mov         edx,dword ptr [edx-0C]
 004E7544    cmp         eax,dword ptr [edx+22C]
>004E754A    jne         004E79C3
 004E7550    mov         eax,dword ptr [ebp+8]
 004E7553    mov         eax,dword ptr [eax-0C]
 004E7556    cmp         byte ptr [eax+61C],0
>004E755D    jne         004E7688
 004E7563    mov         eax,dword ptr [ebp+8]
 004E7566    mov         eax,dword ptr [eax-0C]
 004E7569    mov         edx,dword ptr [eax+228]
 004E756F    mov         eax,dword ptr [ebp+8]
 004E7572    mov         eax,dword ptr [eax-0C]
 004E7575    call        004E14A4
 004E757A    mov         edx,dword ptr [ebp+8]
 004E757D    mov         edx,dword ptr [edx-44]
 004E7580    dec         edx
 004E7581    cmp         eax,edx
>004E7583    jne         004E79C3
 004E7589    mov         eax,dword ptr [ebp+8]
 004E758C    mov         eax,dword ptr [eax-0C]
 004E758F    cmp         byte ptr [eax+4E8],0
>004E7596    je          004E75F9
 004E7598    mov         eax,dword ptr [ebp+8]
 004E759B    mov         eax,dword ptr [eax-15]
 004E759E    dec         eax
 004E759F    push        eax
 004E75A0    lea         eax,[ebp-20]
 004E75A3    push        eax
 004E75A4    lea         eax,[ebp-30]
 004E75A7    push        eax
 004E75A8    mov         eax,dword ptr [ebp+8]
 004E75AB    mov         ecx,dword ptr [eax-48]
 004E75AE    mov         eax,dword ptr [ebp+8]
 004E75B1    mov         edx,dword ptr [eax-44]
 004E75B4    dec         edx
 004E75B5    mov         eax,dword ptr [ebp+8]
 004E75B8    mov         eax,dword ptr [eax-0C]
 004E75BB    call        004D8568
 004E75C0    mov         eax,dword ptr [ebp-30]
 004E75C3    mov         edx,dword ptr [ebp+8]
 004E75C6    mov         ecx,dword ptr [edx-21]
 004E75C9    mov         edx,dword ptr [ebp+8]
 004E75CC    mov         edx,dword ptr [edx-0C]
 004E75CF    add         ecx,dword ptr [edx+4BC]
 004E75D5    mov         edx,dword ptr [ebp+8]
 004E75D8    mov         edx,dword ptr [edx-1D]
 004E75DB    call        0041E714
 004E75E0    lea         edx,[ebp-20]
 004E75E3    mov         eax,dword ptr [ebp+8]
 004E75E6    mov         eax,dword ptr [eax-0C]
 004E75E9    mov         eax,dword ptr [eax+208]
 004E75EF    call        0042EFEC
>004E75F4    jmp         004E79C3
 004E75F9    mov         eax,dword ptr [ebp+8]
 004E75FC    mov         eax,dword ptr [eax-0C]
 004E75FF    mov         eax,dword ptr [eax+4D0]
 004E7605    mov         edx,dword ptr [eax+14]
 004E7608    mov         eax,dword ptr [ebp+8]
 004E760B    mov         eax,dword ptr [eax-0C]
 004E760E    mov         eax,dword ptr [eax+208]
 004E7614    mov         eax,dword ptr [eax+10]
 004E7617    call        TPen.SetColor
 004E761C    mov         eax,dword ptr [ebp+8]
 004E761F    mov         eax,dword ptr [eax-0C]
 004E7622    mov         eax,dword ptr [eax+208]
 004E7628    mov         eax,dword ptr [eax+14]
 004E762B    mov         dl,1
 004E762D    call        TBrush.SetStyle
 004E7632    mov         eax,dword ptr [ebp+8]
 004E7635    mov         eax,dword ptr [eax-21]
 004E7638    mov         edx,dword ptr [ebp+8]
 004E763B    mov         edx,dword ptr [edx-0C]
 004E763E    add         eax,dword ptr [edx+4BC]
 004E7644    push        eax
 004E7645    mov         eax,dword ptr [ebp+8]
 004E7648    mov         eax,dword ptr [eax-15]
 004E764B    dec         eax
 004E764C    push        eax
 004E764D    lea         eax,[ebp-20]
 004E7650    push        eax
 004E7651    mov         eax,dword ptr [ebp+8]
 004E7654    mov         ecx,dword ptr [eax-48]
 004E7657    mov         eax,dword ptr [ebp+8]
 004E765A    mov         edx,dword ptr [eax-44]
 004E765D    dec         edx
 004E765E    mov         eax,dword ptr [ebp+8]
 004E7661    mov         eax,dword ptr [eax-0C]
 004E7664    call        004D8568
 004E7669    mov         edx,dword ptr [ebp-20]
 004E766C    mov         eax,dword ptr [ebp+8]
 004E766F    mov         ecx,dword ptr [eax-1D]
 004E7672    mov         eax,dword ptr [ebp+8]
 004E7675    mov         eax,dword ptr [eax-0C]
 004E7678    mov         eax,dword ptr [eax+208]
 004E767E    call        0042F220
>004E7683    jmp         004E79C3
 004E7688    mov         eax,dword ptr [ebp+8]
 004E768B    mov         eax,dword ptr [eax-0C]
 004E768E    mov         edx,dword ptr [eax+228]
 004E7694    mov         eax,dword ptr [ebp+8]
 004E7697    mov         eax,dword ptr [eax-0C]
 004E769A    call        004E14A4
 004E769F    mov         edx,dword ptr [ebp+8]
 004E76A2    mov         edx,dword ptr [edx-44]
 004E76A5    sub         edx,3
 004E76A8    cmp         eax,edx
>004E76AA    jne         004E79C3
 004E76B0    mov         eax,dword ptr [ebp+8]
 004E76B3    mov         eax,dword ptr [eax-0C]
 004E76B6    cmp         byte ptr [eax+4E8],0
>004E76BD    je          004E7722
 004E76BF    mov         eax,dword ptr [ebp+8]
 004E76C2    mov         eax,dword ptr [eax-15]
 004E76C5    dec         eax
 004E76C6    push        eax
 004E76C7    lea         eax,[ebp-20]
 004E76CA    push        eax
 004E76CB    lea         eax,[ebp-30]
 004E76CE    push        eax
 004E76CF    mov         eax,dword ptr [ebp+8]
 004E76D2    mov         ecx,dword ptr [eax-48]
 004E76D5    mov         eax,dword ptr [ebp+8]
 004E76D8    mov         edx,dword ptr [eax-44]
 004E76DB    sub         edx,3
 004E76DE    mov         eax,dword ptr [ebp+8]
 004E76E1    mov         eax,dword ptr [eax-0C]
 004E76E4    call        004D8568
 004E76E9    mov         eax,dword ptr [ebp-30]
 004E76EC    mov         edx,dword ptr [ebp+8]
 004E76EF    mov         ecx,dword ptr [edx-21]
 004E76F2    mov         edx,dword ptr [ebp+8]
 004E76F5    mov         edx,dword ptr [edx-0C]
 004E76F8    add         ecx,dword ptr [edx+4BC]
 004E76FE    mov         edx,dword ptr [ebp+8]
 004E7701    mov         edx,dword ptr [edx-1D]
 004E7704    call        0041E714
 004E7709    lea         edx,[ebp-20]
 004E770C    mov         eax,dword ptr [ebp+8]
 004E770F    mov         eax,dword ptr [eax-0C]
 004E7712    mov         eax,dword ptr [eax+208]
 004E7718    call        0042EFEC
>004E771D    jmp         004E79C3
 004E7722    mov         eax,dword ptr [ebp+8]
 004E7725    mov         eax,dword ptr [eax-0C]
 004E7728    mov         eax,dword ptr [eax+4D0]
 004E772E    mov         edx,dword ptr [eax+14]
 004E7731    mov         eax,dword ptr [ebp+8]
 004E7734    mov         eax,dword ptr [eax-0C]
 004E7737    mov         eax,dword ptr [eax+208]
 004E773D    mov         eax,dword ptr [eax+10]
 004E7740    call        TPen.SetColor
 004E7745    mov         eax,dword ptr [ebp+8]
 004E7748    mov         eax,dword ptr [eax-0C]
 004E774B    mov         eax,dword ptr [eax+208]
 004E7751    mov         eax,dword ptr [eax+14]
 004E7754    mov         dl,1
 004E7756    call        TBrush.SetStyle
 004E775B    mov         eax,dword ptr [ebp+8]
 004E775E    mov         eax,dword ptr [eax-21]
 004E7761    mov         edx,dword ptr [ebp+8]
 004E7764    mov         edx,dword ptr [edx-0C]
 004E7767    add         eax,dword ptr [edx+4BC]
 004E776D    push        eax
 004E776E    mov         eax,dword ptr [ebp+8]
 004E7771    mov         eax,dword ptr [eax-15]
 004E7774    dec         eax
 004E7775    push        eax
 004E7776    lea         eax,[ebp-20]
 004E7779    push        eax
 004E777A    mov         eax,dword ptr [ebp+8]
 004E777D    mov         ecx,dword ptr [eax-48]
 004E7780    mov         eax,dword ptr [ebp+8]
 004E7783    mov         edx,dword ptr [eax-44]
 004E7786    sub         edx,3
 004E7789    mov         eax,dword ptr [ebp+8]
 004E778C    mov         eax,dword ptr [eax-0C]
 004E778F    call        004D8568
 004E7794    mov         edx,dword ptr [ebp-20]
 004E7797    mov         eax,dword ptr [ebp+8]
 004E779A    mov         ecx,dword ptr [eax-1D]
 004E779D    mov         eax,dword ptr [ebp+8]
 004E77A0    mov         eax,dword ptr [eax-0C]
 004E77A3    mov         eax,dword ptr [eax+208]
 004E77A9    call        0042F220
>004E77AE    jmp         004E79C3
 004E77B3    mov         eax,dword ptr [ebp+8]
 004E77B6    mov         eax,dword ptr [eax-48]
 004E77B9    mov         edx,dword ptr [ebp+8]
 004E77BC    mov         edx,dword ptr [edx-0C]
 004E77BF    cmp         eax,dword ptr [edx+22C]
>004E77C5    jne         004E79C3
 004E77CB    mov         eax,dword ptr [ebp+8]
 004E77CE    mov         eax,dword ptr [eax-0C]
 004E77D1    mov         edx,dword ptr [eax+228]
 004E77D7    mov         eax,dword ptr [ebp+8]
 004E77DA    mov         eax,dword ptr [eax-0C]
 004E77DD    call        004E14A4
 004E77E2    mov         edx,dword ptr [ebp+8]
 004E77E5    cmp         eax,dword ptr [edx-44]
>004E77E8    jne         004E79C3
 004E77EE    mov         eax,dword ptr [ebp+8]
 004E77F1    mov         eax,dword ptr [eax-0C]
 004E77F4    cmp         byte ptr [eax+4E8],0
>004E77FB    je          004E7845
 004E77FD    mov         eax,dword ptr [ebp+8]
 004E7800    mov         eax,dword ptr [eax-15]
 004E7803    dec         eax
 004E7804    push        eax
 004E7805    lea         eax,[ebp-20]
 004E7808    push        eax
 004E7809    mov         eax,dword ptr [ebp+8]
 004E780C    mov         ecx,dword ptr [eax-21]
 004E780F    mov         eax,dword ptr [ebp+8]
 004E7812    mov         eax,dword ptr [eax-0C]
 004E7815    add         ecx,dword ptr [eax+4BC]
 004E781B    mov         eax,dword ptr [ebp+8]
 004E781E    mov         edx,dword ptr [eax-1D]
 004E7821    mov         eax,dword ptr [ebp+8]
 004E7824    mov         eax,dword ptr [eax-21]
 004E7827    call        0041E714
 004E782C    lea         edx,[ebp-20]
 004E782F    mov         eax,dword ptr [ebp+8]
 004E7832    mov         eax,dword ptr [eax-0C]
 004E7835    mov         eax,dword ptr [eax+208]
 004E783B    call        0042EFEC
>004E7840    jmp         004E79C3
 004E7845    mov         eax,dword ptr [ebp+8]
 004E7848    mov         eax,dword ptr [eax-0C]
 004E784B    mov         eax,dword ptr [eax+4D0]
 004E7851    mov         edx,dword ptr [eax+14]
 004E7854    mov         eax,dword ptr [ebp+8]
 004E7857    mov         eax,dword ptr [eax-0C]
 004E785A    mov         eax,dword ptr [eax+208]
 004E7860    mov         eax,dword ptr [eax+10]
 004E7863    call        TPen.SetColor
 004E7868    mov         eax,dword ptr [ebp+8]
 004E786B    mov         eax,dword ptr [eax-0C]
 004E786E    mov         eax,dword ptr [eax+208]
 004E7874    mov         eax,dword ptr [eax+14]
 004E7877    mov         dl,1
 004E7879    call        TBrush.SetStyle
 004E787E    mov         eax,dword ptr [ebp+8]
 004E7881    mov         eax,dword ptr [eax-21]
 004E7884    mov         edx,dword ptr [ebp+8]
 004E7887    mov         edx,dword ptr [edx-0C]
 004E788A    add         eax,dword ptr [edx+4BC]
 004E7890    push        eax
 004E7891    mov         eax,dword ptr [ebp+8]
 004E7894    mov         eax,dword ptr [eax-15]
 004E7897    dec         eax
 004E7898    push        eax
 004E7899    mov         eax,dword ptr [ebp+8]
 004E789C    mov         ecx,dword ptr [eax-1D]
 004E789F    mov         eax,dword ptr [ebp+8]
 004E78A2    mov         edx,dword ptr [eax-21]
 004E78A5    mov         eax,dword ptr [ebp+8]
 004E78A8    mov         eax,dword ptr [eax-0C]
 004E78AB    mov         eax,dword ptr [eax+208]
 004E78B1    call        0042F220
>004E78B6    jmp         004E79C3
 004E78BB    mov         eax,dword ptr [ebp+8]
 004E78BE    mov         eax,dword ptr [eax-0C]
 004E78C1    cmp         byte ptr [eax+60C],0
>004E78C8    je          004E79C3
 004E78CE    mov         eax,dword ptr [ebp+8]
 004E78D1    mov         eax,dword ptr [eax-48]
 004E78D4    mov         edx,dword ptr [ebp+8]
 004E78D7    mov         edx,dword ptr [edx-0C]
 004E78DA    cmp         eax,dword ptr [edx+22C]
>004E78E0    jne         004E79C3
 004E78E6    mov         eax,dword ptr [ebp+8]
 004E78E9    mov         eax,dword ptr [eax-0C]
 004E78EC    mov         eax,dword ptr [eax+228]
 004E78F2    mov         edx,dword ptr [ebp+8]
 004E78F5    cmp         eax,dword ptr [edx-44]
>004E78F8    jne         004E79C3
 004E78FE    mov         eax,dword ptr [ebp+8]
 004E7901    mov         eax,dword ptr [eax-0C]
 004E7904    cmp         byte ptr [eax+4E8],0
>004E790B    je          004E7952
 004E790D    mov         eax,dword ptr [ebp+8]
 004E7910    mov         eax,dword ptr [eax-15]
 004E7913    dec         eax
 004E7914    push        eax
 004E7915    lea         eax,[ebp-20]
 004E7918    push        eax
 004E7919    mov         eax,dword ptr [ebp+8]
 004E791C    mov         ecx,dword ptr [eax-21]
 004E791F    mov         eax,dword ptr [ebp+8]
 004E7922    mov         eax,dword ptr [eax-0C]
 004E7925    add         ecx,dword ptr [eax+4BC]
 004E792B    mov         eax,dword ptr [ebp+8]
 004E792E    mov         edx,dword ptr [eax-1D]
 004E7931    mov         eax,dword ptr [ebp+8]
 004E7934    mov         eax,dword ptr [eax-21]
 004E7937    call        0041E714
 004E793C    lea         edx,[ebp-20]
 004E793F    mov         eax,dword ptr [ebp+8]
 004E7942    mov         eax,dword ptr [eax-0C]
 004E7945    mov         eax,dword ptr [eax+208]
 004E794B    call        0042EFEC
>004E7950    jmp         004E79C3
 004E7952    mov         eax,dword ptr [ebp+8]
 004E7955    mov         eax,dword ptr [eax-0C]
 004E7958    mov         eax,dword ptr [eax+4D0]
 004E795E    mov         edx,dword ptr [eax+18]
 004E7961    mov         eax,dword ptr [ebp+8]
 004E7964    mov         eax,dword ptr [eax-0C]
 004E7967    mov         eax,dword ptr [eax+208]
 004E796D    mov         eax,dword ptr [eax+10]
 004E7970    call        TPen.SetColor
 004E7975    mov         eax,dword ptr [ebp+8]
 004E7978    mov         eax,dword ptr [eax-0C]
 004E797B    mov         eax,dword ptr [eax+208]
 004E7981    mov         eax,dword ptr [eax+14]
 004E7984    mov         dl,1
 004E7986    call        TBrush.SetStyle
 004E798B    mov         eax,dword ptr [ebp+8]
 004E798E    mov         eax,dword ptr [eax-21]
 004E7991    mov         edx,dword ptr [ebp+8]
 004E7994    mov         edx,dword ptr [edx-0C]
 004E7997    add         eax,dword ptr [edx+4BC]
 004E799D    push        eax
 004E799E    mov         eax,dword ptr [ebp+8]
 004E79A1    mov         eax,dword ptr [eax-15]
 004E79A4    dec         eax
 004E79A5    push        eax
 004E79A6    mov         eax,dword ptr [ebp+8]
 004E79A9    mov         ecx,dword ptr [eax-1D]
 004E79AC    mov         eax,dword ptr [ebp+8]
 004E79AF    mov         edx,dword ptr [eax-21]
 004E79B2    mov         eax,dword ptr [ebp+8]
 004E79B5    mov         eax,dword ptr [eax-0C]
 004E79B8    mov         eax,dword ptr [eax+208]
 004E79BE    call        0042F220
 004E79C3    mov         eax,dword ptr [ebp+8]
 004E79C6    mov         eax,dword ptr [eax-0C]
 004E79C9    cmp         byte ptr [eax+59A],0
>004E79D0    je          004E7A34
 004E79D2    mov         eax,dword ptr [ebp+8]
 004E79D5    mov         eax,dword ptr [eax-44]
 004E79D8    mov         edx,dword ptr [ebp+8]
 004E79DB    cmp         eax,dword ptr [edx-54]
>004E79DE    jne         004E7A34
 004E79E0    mov         eax,dword ptr [ebp+8]
 004E79E3    mov         eax,dword ptr [eax-0C]
 004E79E6    mov         eax,dword ptr [eax+208]
 004E79EC    mov         dword ptr [ebp-0C],eax
 004E79EF    mov         eax,dword ptr [ebp+8]
 004E79F2    mov         eax,dword ptr [eax-0C]
 004E79F5    mov         eax,dword ptr [eax+4D0]
 004E79FB    mov         edx,dword ptr [eax+38]
 004E79FE    mov         eax,dword ptr [ebp-0C]
 004E7A01    mov         eax,dword ptr [eax+10]
 004E7A04    call        TPen.SetColor
 004E7A09    mov         eax,dword ptr [ebp+8]
 004E7A0C    mov         ecx,dword ptr [eax-1D]
 004E7A0F    mov         eax,dword ptr [ebp+8]
 004E7A12    mov         edx,dword ptr [eax-19]
 004E7A15    dec         edx
 004E7A16    mov         eax,dword ptr [ebp-0C]
 004E7A19    call        0042F14C
 004E7A1E    mov         eax,dword ptr [ebp+8]
 004E7A21    mov         ecx,dword ptr [eax-15]
 004E7A24    dec         ecx
 004E7A25    mov         eax,dword ptr [ebp+8]
 004E7A28    mov         edx,dword ptr [eax-19]
 004E7A2B    dec         edx
 004E7A2C    mov         eax,dword ptr [ebp-0C]
 004E7A2F    call        0042F0D0
 004E7A34    xor         eax,eax
 004E7A36    pop         edx
 004E7A37    pop         ecx
 004E7A38    pop         ecx
 004E7A39    mov         dword ptr fs:[eax],edx
 004E7A3C    push        4E7A51
 004E7A41    lea         eax,[ebp-10]
 004E7A44    call        @WStrClr
 004E7A49    ret
>004E7A4A    jmp         @HandleFinally
>004E7A4F    jmp         004E7A41
 004E7A51    pop         edi
 004E7A52    pop         esi
 004E7A53    pop         ebx
 004E7A54    mov         esp,ebp
 004E7A56    pop         ebp
 004E7A57    ret
end;*}

//004E7A60
{*procedure sub_004E7A60(?:TGridCoord; ?:Longint; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
begin
 004E7A60    push        ebp
 004E7A61    mov         ebp,esp
 004E7A63    add         esp,0FFFFFFE8
 004E7A66    mov         dword ptr [ebp-0C],ecx
 004E7A69    mov         dword ptr [ebp-8],edx
 004E7A6C    mov         dword ptr [ebp-4],eax
 004E7A6F    mov         eax,dword ptr [ebp+18]
 004E7A72    mov         edx,dword ptr [ebp-8]
 004E7A75    mov         dword ptr [eax-48],edx
 004E7A78    mov         eax,dword ptr [ebp+18]
 004E7A7B    mov         edx,dword ptr [ebp+14]
 004E7A7E    mov         dword ptr [eax-1D],edx
>004E7A81    jmp         004E7D7E
 004E7A86    mov         eax,dword ptr [ebp+18]
 004E7A89    mov         edx,dword ptr [ebp-4]
 004E7A8C    mov         dword ptr [eax-44],edx
 004E7A8F    mov         eax,dword ptr [ebp+18]
 004E7A92    mov         edx,dword ptr [ebp-0C]
 004E7A95    mov         dword ptr [eax-21],edx
 004E7A98    mov         eax,dword ptr [ebp+18]
 004E7A9B    mov         edx,dword ptr [eax-48]
 004E7A9E    mov         eax,dword ptr [ebp+18]
 004E7AA1    mov         eax,dword ptr [eax-0C]
 004E7AA4    call        004DD45C
 004E7AA9    mov         edx,dword ptr [ebp+18]
 004E7AAC    add         eax,dword ptr [edx-1D]
 004E7AAF    mov         edx,dword ptr [ebp+18]
 004E7AB2    mov         dword ptr [edx-15],eax
>004E7AB5    jmp         004E7D4F
 004E7ABA    mov         eax,dword ptr [ebp+18]
 004E7ABD    mov         edx,dword ptr [eax-44]
 004E7AC0    mov         eax,dword ptr [ebp+18]
 004E7AC3    mov         eax,dword ptr [eax-0C]
 004E7AC6    call        004DD40C
 004E7ACB    mov         edx,dword ptr [ebp+18]
 004E7ACE    add         eax,dword ptr [edx-21]
 004E7AD1    mov         edx,dword ptr [ebp+18]
 004E7AD4    mov         dword ptr [edx-19],eax
 004E7AD7    mov         eax,dword ptr [ebp+18]
 004E7ADA    mov         eax,dword ptr [eax-19]
 004E7ADD    mov         edx,dword ptr [ebp+18]
 004E7AE0    cmp         eax,dword ptr [edx-21]
>004E7AE3    jle         004E7D3D
 004E7AE9    mov         al,byte ptr [ebp+8]
 004E7AEC    sub         al,1
>004E7AEE    jb          004E7B0B
>004E7AF0    je          004E7C97
 004E7AF6    dec         al
>004E7AF8    je          004E7CB6
 004E7AFE    dec         al
>004E7B00    je          004E7C43
>004E7B06    jmp         004E7D3D
 004E7B0B    mov         eax,dword ptr [ebp+18]
 004E7B0E    mov         eax,dword ptr [eax-44]
 004E7B11    mov         edx,dword ptr [ebp+18]
 004E7B14    mov         edx,dword ptr [edx-0C]
 004E7B17    mov         edx,dword ptr [edx+4DC]
 004E7B1D    add         edx,2
 004E7B20    cmp         eax,edx
>004E7B22    jge         004E7B44
 004E7B24    mov         eax,dword ptr [ebp+18]
 004E7B27    push        eax
 004E7B28    mov         eax,dword ptr [ebp+18]
 004E7B2B    mov         eax,dword ptr [eax-0C]
 004E7B2E    mov         dl,byte ptr [eax+4F1]
 004E7B34    xor         dl,1
 004E7B37    xor         eax,eax
 004E7B39    call        004E6D94
 004E7B3E    pop         ecx
>004E7B3F    jmp         004E7BD8
 004E7B44    mov         eax,dword ptr [ebp+18]
 004E7B47    mov         eax,dword ptr [eax-44]
 004E7B4A    mov         edx,dword ptr [ebp+18]
 004E7B4D    mov         edx,dword ptr [edx-0C]
 004E7B50    mov         edx,dword ptr [edx+4DC]
 004E7B56    add         edx,2
 004E7B59    cmp         eax,edx
>004E7B5B    jle         004E7B77
 004E7B5D    mov         eax,dword ptr [ebp+18]
 004E7B60    push        eax
 004E7B61    mov         eax,dword ptr [ebp+18]
 004E7B64    mov         eax,dword ptr [eax-0C]
 004E7B67    mov         dl,byte ptr [eax+4F1]
 004E7B6D    mov         al,1
 004E7B6F    call        004E6D94
 004E7B74    pop         ecx
>004E7B75    jmp         004E7BD8
 004E7B77    mov         eax,dword ptr [ebp+18]
 004E7B7A    mov         eax,dword ptr [eax-0C]
 004E7B7D    cmp         byte ptr [eax+59A],0
>004E7B84    je          004E7BD8
 004E7B86    mov         eax,dword ptr [ebp+18]
 004E7B89    mov         eax,dword ptr [eax-0C]
 004E7B8C    mov         eax,dword ptr [eax+208]
 004E7B92    mov         dword ptr [ebp-10],eax
 004E7B95    mov         eax,dword ptr [ebp+18]
 004E7B98    mov         eax,dword ptr [eax-0C]
 004E7B9B    mov         eax,dword ptr [eax+4D0]
 004E7BA1    mov         edx,dword ptr [eax+38]
 004E7BA4    mov         eax,dword ptr [ebp-10]
 004E7BA7    mov         eax,dword ptr [eax+10]
 004E7BAA    call        TPen.SetColor
 004E7BAF    mov         eax,dword ptr [ebp+18]
 004E7BB2    mov         ecx,dword ptr [eax-1D]
 004E7BB5    mov         eax,dword ptr [ebp+18]
 004E7BB8    mov         edx,dword ptr [eax-21]
 004E7BBB    mov         eax,dword ptr [ebp-10]
 004E7BBE    call        0042F14C
 004E7BC3    mov         eax,dword ptr [ebp+18]
 004E7BC6    mov         ecx,dword ptr [eax-15]
 004E7BC9    dec         ecx
 004E7BCA    mov         eax,dword ptr [ebp+18]
 004E7BCD    mov         edx,dword ptr [eax-21]
 004E7BD0    mov         eax,dword ptr [ebp-10]
 004E7BD3    call        0042F0D0
 004E7BD8    mov         eax,dword ptr [ebp+18]
 004E7BDB    mov         eax,dword ptr [eax-0C]
 004E7BDE    cmp         byte ptr [eax+59A],0
>004E7BE5    je          004E7D3D
 004E7BEB    mov         eax,dword ptr [ebp+18]
 004E7BEE    mov         eax,dword ptr [eax-0C]
 004E7BF1    mov         eax,dword ptr [eax+208]
 004E7BF7    mov         dword ptr [ebp-14],eax
 004E7BFA    mov         eax,dword ptr [ebp+18]
 004E7BFD    mov         eax,dword ptr [eax-0C]
 004E7C00    mov         eax,dword ptr [eax+4D0]
 004E7C06    mov         edx,dword ptr [eax+38]
 004E7C09    mov         eax,dword ptr [ebp-14]
 004E7C0C    mov         eax,dword ptr [eax+10]
 004E7C0F    call        TPen.SetColor
 004E7C14    mov         eax,dword ptr [ebp+18]
 004E7C17    mov         ecx,dword ptr [eax-15]
 004E7C1A    dec         ecx
 004E7C1B    mov         eax,dword ptr [ebp+18]
 004E7C1E    mov         edx,dword ptr [eax-21]
 004E7C21    mov         eax,dword ptr [ebp-14]
 004E7C24    call        0042F14C
 004E7C29    mov         eax,dword ptr [ebp+18]
 004E7C2C    mov         ecx,dword ptr [eax-15]
 004E7C2F    dec         ecx
 004E7C30    mov         eax,dword ptr [ebp+18]
 004E7C33    mov         edx,dword ptr [eax-19]
 004E7C36    mov         eax,dword ptr [ebp-14]
 004E7C39    call        0042F0D0
>004E7C3E    jmp         004E7D3D
 004E7C43    mov         eax,dword ptr [ebp+18]
 004E7C46    mov         eax,dword ptr [eax-0C]
 004E7C49    mov         dword ptr [eax+640],0FFFFFFFF
 004E7C53    mov         eax,dword ptr [ebp+18]
 004E7C56    mov         eax,dword ptr [eax-0C]
 004E7C59    mov         eax,dword ptr [eax+4D0]
 004E7C5F    mov         eax,dword ptr [eax+2C]
 004E7C62    mov         edx,dword ptr [ebp+18]
 004E7C65    mov         dword ptr [edx-40],eax
 004E7C68    mov         eax,dword ptr [ebp+18]
 004E7C6B    mov         eax,dword ptr [eax-0C]
 004E7C6E    mov         eax,dword ptr [eax+4D0]
 004E7C74    mov         eax,dword ptr [eax+8]
 004E7C77    mov         edx,dword ptr [ebp+18]
 004E7C7A    mov         dword ptr [edx-3C],eax
 004E7C7D    mov         eax,dword ptr [ebp+18]
 004E7C80    add         eax,0FFFFFFF0
 004E7C83    call        @WStrClr
 004E7C88    mov         eax,dword ptr [ebp+18]
 004E7C8B    push        eax
 004E7C8C    call        004E68C8
 004E7C91    pop         ecx
>004E7C92    jmp         004E7D3D
 004E7C97    mov         eax,dword ptr [ebp+18]
 004E7C9A    mov         eax,dword ptr [eax-0C]
 004E7C9D    mov         dword ptr [eax+640],0FFFFFFFF
 004E7CA7    mov         eax,dword ptr [ebp+18]
 004E7CAA    push        eax
 004E7CAB    call        004E6C50
 004E7CB0    pop         ecx
>004E7CB1    jmp         004E7D3D
 004E7CB6    mov         eax,dword ptr [ebp+18]
 004E7CB9    mov         eax,dword ptr [eax-0C]
 004E7CBC    mov         dword ptr [eax+640],0FFFFFFFF
 004E7CC6    mov         eax,dword ptr [ebp+18]
 004E7CC9    cmp         dword ptr [eax-44],1
>004E7CCD    jne         004E7D33
 004E7CCF    mov         eax,dword ptr [ebp+18]
 004E7CD2    mov         eax,dword ptr [eax-0C]
 004E7CD5    cmp         byte ptr [eax+59A],0
>004E7CDC    je          004E7D3D
 004E7CDE    mov         eax,dword ptr [ebp+18]
 004E7CE1    mov         eax,dword ptr [eax-0C]
 004E7CE4    mov         eax,dword ptr [eax+208]
 004E7CEA    mov         dword ptr [ebp-18],eax
 004E7CED    mov         eax,dword ptr [ebp+18]
 004E7CF0    mov         eax,dword ptr [eax-0C]
 004E7CF3    mov         eax,dword ptr [eax+4D0]
 004E7CF9    mov         edx,dword ptr [eax+38]
 004E7CFC    mov         eax,dword ptr [ebp-18]
 004E7CFF    mov         eax,dword ptr [eax+10]
 004E7D02    call        TPen.SetColor
 004E7D07    mov         eax,dword ptr [ebp+18]
 004E7D0A    mov         ecx,dword ptr [eax-15]
 004E7D0D    dec         ecx
 004E7D0E    mov         eax,dword ptr [ebp+18]
 004E7D11    mov         edx,dword ptr [eax-21]
 004E7D14    mov         eax,dword ptr [ebp-18]
 004E7D17    call        0042F14C
 004E7D1C    mov         eax,dword ptr [ebp+18]
 004E7D1F    mov         ecx,dword ptr [eax-15]
 004E7D22    dec         ecx
 004E7D23    mov         eax,dword ptr [ebp+18]
 004E7D26    mov         edx,dword ptr [eax-19]
 004E7D29    mov         eax,dword ptr [ebp-18]
 004E7D2C    call        0042F0D0
>004E7D31    jmp         004E7D3D
 004E7D33    mov         eax,dword ptr [ebp+18]
 004E7D36    push        eax
 004E7D37    call        004E6AB8
 004E7D3C    pop         ecx
 004E7D3D    mov         eax,dword ptr [ebp+18]
 004E7D40    mov         eax,dword ptr [eax-19]
 004E7D43    mov         edx,dword ptr [ebp+18]
 004E7D46    mov         dword ptr [edx-21],eax
 004E7D49    mov         eax,dword ptr [ebp+18]
 004E7D4C    inc         dword ptr [eax-44]
 004E7D4F    mov         eax,dword ptr [ebp+18]
 004E7D52    mov         eax,dword ptr [eax-21]
 004E7D55    cmp         eax,dword ptr [ebp+10]
>004E7D58    jge         004E7D6C
 004E7D5A    mov         eax,dword ptr [ebp+18]
 004E7D5D    mov         eax,dword ptr [eax-44]
 004E7D60    mov         edx,dword ptr [ebp+18]
 004E7D63    cmp         eax,dword ptr [edx-54]
>004E7D66    jle         004E7ABA
 004E7D6C    mov         eax,dword ptr [ebp+18]
 004E7D6F    mov         eax,dword ptr [eax-15]
 004E7D72    mov         edx,dword ptr [ebp+18]
 004E7D75    mov         dword ptr [edx-1D],eax
 004E7D78    mov         eax,dword ptr [ebp+18]
 004E7D7B    inc         dword ptr [eax-48]
 004E7D7E    mov         eax,dword ptr [ebp+18]
 004E7D81    mov         eax,dword ptr [eax-1D]
 004E7D84    cmp         eax,dword ptr [ebp+0C]
>004E7D87    jge         004E7DA1
 004E7D89    mov         eax,dword ptr [ebp+18]
 004E7D8C    mov         eax,dword ptr [eax-48]
 004E7D8F    mov         edx,dword ptr [ebp+18]
 004E7D92    mov         edx,dword ptr [edx-0C]
 004E7D95    cmp         eax,dword ptr [edx+24C]
>004E7D9B    jl          004E7A86
 004E7DA1    mov         esp,ebp
 004E7DA3    pop         ebp
 004E7DA4    ret         10
end;*}

//004E7DA8
procedure sub_004E7DA8;
begin
{*
 004E7DA8    push        ebp
 004E7DA9    mov         ebp,esp
 004E7DAB    add         esp,0FFFFFF28
 004E7DB1    push        ebx
 004E7DB2    push        esi
 004E7DB3    xor         edx,edx
 004E7DB5    mov         dword ptr [ebp-10],edx
 004E7DB8    mov         dword ptr [ebp-0C],eax
 004E7DBB    xor         eax,eax
 004E7DBD    push        ebp
 004E7DBE    push        4E82F2
 004E7DC3    push        dword ptr fs:[eax]
 004E7DC6    mov         dword ptr fs:[eax],esp
 004E7DC9    mov         eax,dword ptr [ebp-0C]
 004E7DCC    mov         si,0FFC8
 004E7DD0    call        @CallDynaInst;TControl.sub_0048415C
 004E7DD5    test        al,al
>004E7DD7    je          004E7DE3
 004E7DD9    mov         dl,1
 004E7DDB    mov         eax,dword ptr [ebp-0C]
 004E7DDE    call        004DA1E0
 004E7DE3    lea         edx,[ebp-0C8]
 004E7DE9    mov         eax,dword ptr [ebp-0C]
 004E7DEC    call        TCustomGrid.CalcDrawInfo
 004E7DF1    mov         eax,dword ptr [ebp-0C]
 004E7DF4    mov         si,0FFB5
 004E7DF8    call        @CallDynaInst;TWinControl.sub_0048C078
 004E7DFD    mov         byte ptr [ebp-5B],al
 004E7E00    mov         eax,dword ptr [ebp-0C]
 004E7E03    call        004E0588
 004E7E08    mov         dword ptr [ebp-58],eax
 004E7E0B    mov         eax,dword ptr [ebp-0C]
 004E7E0E    call        004E5740
 004E7E13    mov         dword ptr [ebp-54],eax
 004E7E16    mov         eax,dword ptr [ebp-0C]
 004E7E19    cmp         byte ptr [eax+5F0],0;TCustomMPHexEditor.?f5F0:byte
>004E7E20    je          004E7E6B
 004E7E22    push        ebp
 004E7E23    push        0
 004E7E25    mov         eax,dword ptr [ebp-0C4]
 004E7E2B    push        eax
 004E7E2C    mov         eax,dword ptr [ebp-94]
 004E7E32    push        eax
 004E7E33    push        3
 004E7E35    xor         ecx,ecx
 004E7E37    xor         edx,edx
 004E7E39    xor         eax,eax
 004E7E3B    call        004E7A60
 004E7E40    pop         ecx
 004E7E41    push        ebp
 004E7E42    push        0
 004E7E44    mov         eax,dword ptr [ebp-0C0]
 004E7E4A    push        eax
 004E7E4B    mov         eax,dword ptr [ebp-94]
 004E7E51    push        eax
 004E7E52    push        1
 004E7E54    mov         eax,dword ptr [ebp-0C]
 004E7E57    mov         eax,dword ptr [eax+258];TCustomMPHexEditor.FTopLeft:TGridCoord
 004E7E5D    mov         ecx,dword ptr [ebp-0C4]
 004E7E63    xor         edx,edx
 004E7E65    call        004E7A60
 004E7E6A    pop         ecx
 004E7E6B    push        ebp
 004E7E6C    mov         eax,dword ptr [ebp-94]
 004E7E72    push        eax
 004E7E73    mov         eax,dword ptr [ebp-0C4]
 004E7E79    push        eax
 004E7E7A    mov         eax,dword ptr [ebp-90]
 004E7E80    push        eax
 004E7E81    push        2
 004E7E83    mov         eax,dword ptr [ebp-0C]
 004E7E86    mov         edx,dword ptr [eax+25C];TCustomMPHexEditor.FTopLeft:Longint
 004E7E8C    xor         ecx,ecx
 004E7E8E    xor         eax,eax
 004E7E90    call        004E7A60
 004E7E95    pop         ecx
 004E7E96    push        ebp
 004E7E97    mov         eax,dword ptr [ebp-94]
 004E7E9D    push        eax
 004E7E9E    mov         eax,dword ptr [ebp-0C0]
 004E7EA4    push        eax
 004E7EA5    mov         eax,dword ptr [ebp-90]
 004E7EAB    push        eax
 004E7EAC    push        0
 004E7EAE    mov         eax,dword ptr [ebp-0C]
 004E7EB1    mov         edx,dword ptr [eax+25C];TCustomMPHexEditor.FTopLeft:Longint
 004E7EB7    mov         eax,dword ptr [ebp-0C]
 004E7EBA    mov         eax,dword ptr [eax+258];TCustomMPHexEditor.FTopLeft:TGridCoord
 004E7EC0    mov         ecx,dword ptr [ebp-0C4]
 004E7EC6    call        004E7A60
 004E7ECB    pop         ecx
 004E7ECC    mov         eax,dword ptr [ebp-0C0]
 004E7ED2    cmp         eax,dword ptr [ebp-0BC]
>004E7ED8    jge         004E7F91
 004E7EDE    mov         eax,dword ptr [ebp-0C]
 004E7EE1    mov         edx,dword ptr [eax+70];TCustomMPHexEditor.FColor:TColor
 004E7EE4    mov         eax,dword ptr [ebp-0C]
 004E7EE7    mov         eax,dword ptr [eax+208];TCustomMPHexEditor.................................................
 004E7EED    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 004E7EF0    call        TBrush.SetColor
 004E7EF5    mov         eax,dword ptr [ebp-90]
 004E7EFB    push        eax
 004E7EFC    lea         eax,[ebp-0D8]
 004E7F02    push        eax
 004E7F03    mov         ecx,dword ptr [ebp-0BC]
 004E7F09    xor         edx,edx
 004E7F0B    mov         eax,dword ptr [ebp-0C0]
 004E7F11    call        0041E714
 004E7F16    lea         edx,[ebp-0D8]
 004E7F1C    mov         eax,dword ptr [ebp-0C]
 004E7F1F    mov         eax,dword ptr [eax+208];TCustomMPHexEditor.................................................
 004E7F25    call        0042F030
 004E7F2A    mov         eax,dword ptr [ebp-0C]
 004E7F2D    mov         eax,dword ptr [eax+4D0];TCustomMPHexEditor.?f4D0:TMPHColors
 004E7F33    mov         edx,dword ptr [eax+2C];TMPHColors.OffsetBackground:TColor
 004E7F36    mov         eax,dword ptr [ebp-0C]
 004E7F39    mov         eax,dword ptr [eax+208];TCustomMPHexEditor.................................................
 004E7F3F    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 004E7F42    call        TBrush.SetColor
 004E7F47    xor         edx,edx
 004E7F49    mov         eax,dword ptr [ebp-0C]
 004E7F4C    call        004DD45C
 004E7F51    mov         ebx,eax
 004E7F53    mov         edx,1
 004E7F58    mov         eax,dword ptr [ebp-0C]
 004E7F5B    call        004DD45C
 004E7F60    add         ebx,eax
 004E7F62    push        ebx
 004E7F63    lea         eax,[ebp-0D8]
 004E7F69    push        eax
 004E7F6A    mov         ecx,dword ptr [ebp-0BC]
 004E7F70    xor         edx,edx
 004E7F72    mov         eax,dword ptr [ebp-0C0]
 004E7F78    call        0041E714
 004E7F7D    lea         edx,[ebp-0D8]
 004E7F83    mov         eax,dword ptr [ebp-0C]
 004E7F86    mov         eax,dword ptr [eax+208];TCustomMPHexEditor.................................................
 004E7F8C    call        0042F030
 004E7F91    mov         eax,dword ptr [ebp-90]
 004E7F97    cmp         eax,dword ptr [ebp-8C]
>004E7F9D    jge         004E8050
 004E7FA3    mov         eax,dword ptr [ebp-0C]
 004E7FA6    mov         edx,dword ptr [eax+70];TCustomMPHexEditor.FColor:TColor
 004E7FA9    mov         eax,dword ptr [ebp-0C]
 004E7FAC    mov         eax,dword ptr [eax+208];TCustomMPHexEditor.................................................
 004E7FB2    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 004E7FB5    call        TBrush.SetColor
 004E7FBA    mov         eax,dword ptr [ebp-8C]
 004E7FC0    push        eax
 004E7FC1    lea         eax,[ebp-0D8]
 004E7FC7    push        eax
 004E7FC8    xor         edx,edx
 004E7FCA    mov         eax,dword ptr [ebp-0C]
 004E7FCD    call        004DD40C
 004E7FD2    inc         eax
 004E7FD3    mov         ecx,dword ptr [ebp-0BC]
 004E7FD9    mov         edx,dword ptr [ebp-90]
 004E7FDF    call        0041E714
 004E7FE4    lea         edx,[ebp-0D8]
 004E7FEA    mov         eax,dword ptr [ebp-0C]
 004E7FED    mov         eax,dword ptr [eax+208];TCustomMPHexEditor.................................................
 004E7FF3    call        0042F030
 004E7FF8    mov         eax,dword ptr [ebp-0C]
 004E7FFB    mov         eax,dword ptr [eax+4D0];TCustomMPHexEditor.?f4D0:TMPHColors
 004E8001    mov         edx,dword ptr [eax+2C];TMPHColors.OffsetBackground:TColor
 004E8004    mov         eax,dword ptr [ebp-0C]
 004E8007    mov         eax,dword ptr [eax+208];TCustomMPHexEditor.................................................
 004E800D    mov         eax,dword ptr [eax+14];TCanvas.Brush:TBrush
 004E8010    call        TBrush.SetColor
 004E8015    mov         eax,dword ptr [ebp-8C]
 004E801B    push        eax
 004E801C    lea         eax,[ebp-0D8]
 004E8022    push        eax
 004E8023    xor         edx,edx
 004E8025    mov         eax,dword ptr [ebp-0C]
 004E8028    call        004DD40C
 004E802D    mov         ecx,eax
 004E802F    mov         edx,dword ptr [ebp-90]
 004E8035    xor         eax,eax
 004E8037    call        0041E714
 004E803C    lea         edx,[ebp-0D8]
 004E8042    mov         eax,dword ptr [ebp-0C]
 004E8045    mov         eax,dword ptr [eax+208];TCustomMPHexEditor.................................................
 004E804B    call        0042F030
 004E8050    xor         edx,edx
 004E8052    mov         eax,dword ptr [ebp-0C]
 004E8055    call        004DD45C
 004E805A    mov         ebx,eax
 004E805C    mov         edx,1
 004E8061    mov         eax,dword ptr [ebp-0C]
 004E8064    call        004DD45C
 004E8069    add         ebx,eax
 004E806B    mov         dword ptr [ebp-68],ebx
 004E806E    xor         edx,edx
 004E8070    mov         eax,dword ptr [ebp-0C]
 004E8073    call        004DD40C
 004E8078    test        eax,eax
>004E807A    je          004E81A2
 004E8080    mov         eax,dword ptr [ebp-0C]
 004E8083    cmp         byte ptr [eax+59B],0;TCustomMPHexEditor.?f59B:byte
>004E808A    je          004E813A
 004E8090    xor         edx,edx
 004E8092    mov         eax,dword ptr [ebp-0C]
 004E8095    call        004DD40C
 004E809A    mov         edx,eax
 004E809C    mov         eax,dword ptr [ebp-0C]
 004E809F    mov         eax,dword ptr [eax+208];TCustomMPHexEditor.................................................
 004E80A5    mov         ecx,dword ptr [ebp-68]
 004E80A8    call        0042F14C
 004E80AD    mov         eax,dword ptr [ebp-0C]
 004E80B0    mov         eax,dword ptr [eax+208];TCustomMPHexEditor.................................................
 004E80B6    mov         eax,dword ptr [eax+10];TCanvas.Pen:TPen
 004E80B9    mov         edx,0FF000010
 004E80BE    call        TPen.SetColor
 004E80C3    xor         edx,edx
 004E80C5    mov         eax,dword ptr [ebp-0C]
 004E80C8    call        004DD40C
 004E80CD    mov         edx,eax
 004E80CF    mov         eax,dword ptr [ebp-0C]
 004E80D2    mov         eax,dword ptr [eax+208];TCustomMPHexEditor.................................................
 004E80D8    mov         ecx,dword ptr [ebp-8C]
 004E80DE    call        0042F0D0
 004E80E3    xor         edx,edx
 004E80E5    mov         eax,dword ptr [ebp-0C]
 004E80E8    call        004DD40C
 004E80ED    mov         edx,eax
 004E80EF    dec         edx
 004E80F0    mov         eax,dword ptr [ebp-0C]
 004E80F3    mov         eax,dword ptr [eax+208];TCustomMPHexEditor.................................................
 004E80F9    mov         ecx,dword ptr [ebp-68]
 004E80FC    call        0042F14C
 004E8101    mov         eax,dword ptr [ebp-0C]
 004E8104    mov         eax,dword ptr [eax+208];TCustomMPHexEditor.................................................
 004E810A    mov         eax,dword ptr [eax+10];TCanvas.Pen:TPen
 004E810D    mov         edx,0FF000014
 004E8112    call        TPen.SetColor
 004E8117    xor         edx,edx
 004E8119    mov         eax,dword ptr [ebp-0C]
 004E811C    call        004DD40C
 004E8121    mov         edx,eax
 004E8123    dec         edx
 004E8124    mov         eax,dword ptr [ebp-0C]
 004E8127    mov         eax,dword ptr [eax+208];TCustomMPHexEditor.................................................
 004E812D    mov         ecx,dword ptr [ebp-8C]
 004E8133    call        0042F0D0
>004E8138    jmp         004E81A2
 004E813A    mov         eax,dword ptr [ebp-0C]
 004E813D    cmp         byte ptr [eax+59A],0;TCustomMPHexEditor.?f59A:byte
>004E8144    je          004E81A2
 004E8146    xor         edx,edx
 004E8148    mov         eax,dword ptr [ebp-0C]
 004E814B    call        004DD40C
 004E8150    mov         edx,eax
 004E8152    dec         edx
 004E8153    mov         eax,dword ptr [ebp-0C]
 004E8156    mov         eax,dword ptr [eax+208];TCustomMPHexEditor.................................................
 004E815C    mov         ecx,dword ptr [ebp-68]
 004E815F    call        0042F14C
 004E8164    mov         eax,dword ptr [ebp-0C]
 004E8167    mov         eax,dword ptr [eax+4D0];TCustomMPHexEditor.?f4D0:TMPHColors
 004E816D    mov         edx,dword ptr [eax+38];TMPHColors.Grid:TColor
 004E8170    mov         eax,dword ptr [ebp-0C]
 004E8173    mov         eax,dword ptr [eax+208];TCustomMPHexEditor.................................................
 004E8179    mov         eax,dword ptr [eax+10];TCanvas.Pen:TPen
 004E817C    call        TPen.SetColor
 004E8181    xor         edx,edx
 004E8183    mov         eax,dword ptr [ebp-0C]
 004E8186    call        004DD40C
 004E818B    mov         edx,eax
 004E818D    dec         edx
 004E818E    mov         eax,dword ptr [ebp-0C]
 004E8191    mov         eax,dword ptr [eax+208];TCustomMPHexEditor.................................................
 004E8197    mov         ecx,dword ptr [ebp-8C]
 004E819D    call        0042F0D0
 004E81A2    mov         eax,dword ptr [ebp-0C]
 004E81A5    cmp         byte ptr [eax+5F0],0;TCustomMPHexEditor.?f5F0:byte
>004E81AC    je          004E82C2
 004E81B2    mov         eax,dword ptr [ebp-0C]
 004E81B5    cmp         byte ptr [eax+59B],0;TCustomMPHexEditor.?f59B:byte
>004E81BC    je          004E8262
 004E81C2    xor         edx,edx
 004E81C4    mov         eax,dword ptr [ebp-0C]
 004E81C7    call        004DD40C
 004E81CC    mov         edx,eax
 004E81CE    dec         edx
 004E81CF    mov         ecx,dword ptr [ebp-68]
 004E81D2    dec         ecx
 004E81D3    mov         eax,dword ptr [ebp-0C]
 004E81D6    mov         eax,dword ptr [eax+208];TCustomMPHexEditor.................................................
 004E81DC    call        0042F14C
 004E81E1    mov         eax,dword ptr [ebp-0C]
 004E81E4    mov         eax,dword ptr [eax+208];TCustomMPHexEditor.................................................
 004E81EA    mov         eax,dword ptr [eax+10];TCanvas.Pen:TPen
 004E81ED    mov         edx,0FF000010
 004E81F2    call        TPen.SetColor
 004E81F7    mov         ecx,dword ptr [ebp-68]
 004E81FA    dec         ecx
 004E81FB    mov         eax,dword ptr [ebp-0C]
 004E81FE    mov         eax,dword ptr [eax+208];TCustomMPHexEditor.................................................
 004E8204    mov         edx,dword ptr [ebp-0BC]
 004E820A    call        0042F0D0
 004E820F    xor         edx,edx
 004E8211    mov         eax,dword ptr [ebp-0C]
 004E8214    call        004DD40C
 004E8219    mov         edx,eax
 004E821B    dec         edx
 004E821C    mov         ecx,dword ptr [ebp-68]
 004E821F    sub         ecx,2
 004E8222    mov         eax,dword ptr [ebp-0C]
 004E8225    mov         eax,dword ptr [eax+208];TCustomMPHexEditor.................................................
 004E822B    call        0042F14C
 004E8230    mov         eax,dword ptr [ebp-0C]
 004E8233    mov         eax,dword ptr [eax+208];TCustomMPHexEditor.................................................
 004E8239    mov         eax,dword ptr [eax+10];TCanvas.Pen:TPen
 004E823C    mov         edx,0FF000014
 004E8241    call        TPen.SetColor
 004E8246    mov         ecx,dword ptr [ebp-68]
 004E8249    sub         ecx,2
 004E824C    mov         eax,dword ptr [ebp-0C]
 004E824F    mov         eax,dword ptr [eax+208];TCustomMPHexEditor.................................................
 004E8255    mov         edx,dword ptr [ebp-0BC]
 004E825B    call        0042F0D0
>004E8260    jmp         004E82C2
 004E8262    mov         eax,dword ptr [ebp-0C]
 004E8265    cmp         byte ptr [eax+59A],0;TCustomMPHexEditor.?f59A:byte
>004E826C    je          004E82C2
 004E826E    xor         edx,edx
 004E8270    mov         eax,dword ptr [ebp-0C]
 004E8273    call        004DD40C
 004E8278    mov         edx,eax
 004E827A    dec         edx
 004E827B    mov         ecx,dword ptr [ebp-68]
 004E827E    dec         ecx
 004E827F    mov         eax,dword ptr [ebp-0C]
 004E8282    mov         eax,dword ptr [eax+208];TCustomMPHexEditor.................................................
 004E8288    call        0042F14C
 004E828D    mov         eax,dword ptr [ebp-0C]
 004E8290    mov         eax,dword ptr [eax+4D0];TCustomMPHexEditor.?f4D0:TMPHColors
 004E8296    mov         edx,dword ptr [eax+38];TMPHColors.Grid:TColor
 004E8299    mov         eax,dword ptr [ebp-0C]
 004E829C    mov         eax,dword ptr [eax+208];TCustomMPHexEditor.................................................
 004E82A2    mov         eax,dword ptr [eax+10];TCanvas.Pen:TPen
 004E82A5    call        TPen.SetColor
 004E82AA    mov         ecx,dword ptr [ebp-68]
 004E82AD    dec         ecx
 004E82AE    mov         eax,dword ptr [ebp-0C]
 004E82B1    mov         eax,dword ptr [eax+208];TCustomMPHexEditor.................................................
 004E82B7    mov         edx,dword ptr [ebp-0BC]
 004E82BD    call        0042F0D0
 004E82C2    mov         eax,dword ptr [ebp-0C]
 004E82C5    mov         si,0FFC8
 004E82C9    call        @CallDynaInst;TControl.sub_0048415C
 004E82CE    test        al,al
>004E82D0    je          004E82DC
 004E82D2    xor         edx,edx
 004E82D4    mov         eax,dword ptr [ebp-0C]
 004E82D7    call        004DA1E0
 004E82DC    xor         eax,eax
 004E82DE    pop         edx
 004E82DF    pop         ecx
 004E82E0    pop         ecx
 004E82E1    mov         dword ptr fs:[eax],edx
 004E82E4    push        4E82F9
 004E82E9    lea         eax,[ebp-10]
 004E82EC    call        @WStrClr
 004E82F1    ret
>004E82F2    jmp         @HandleFinally
>004E82F7    jmp         004E82E9
 004E82F9    pop         esi
 004E82FA    pop         ebx
 004E82FB    mov         esp,ebp
 004E82FD    pop         ebp
 004E82FE    ret
*}
end;

//004E8300
procedure TMPHexEditorEx.SetDrawGridLines(Value:Boolean);
begin
{*
 004E8300    push        ebp
 004E8301    mov         ebp,esp
 004E8303    add         esp,0FFFFFFF8
 004E8306    mov         byte ptr [ebp-5],dl
 004E8309    mov         dword ptr [ebp-4],eax
 004E830C    mov         al,byte ptr [ebp-5]
 004E830F    mov         edx,dword ptr [ebp-4]
 004E8312    cmp         al,byte ptr [edx+59A];TMPHexEditorEx.?f59A:byte
>004E8318    je          004E832E
 004E831A    mov         al,byte ptr [ebp-5]
 004E831D    mov         edx,dword ptr [ebp-4]
 004E8320    mov         byte ptr [edx+59A],al;TMPHexEditorEx.?f59A:byte
 004E8326    mov         eax,dword ptr [ebp-4]
 004E8329    mov         edx,dword ptr [eax]
 004E832B    call        dword ptr [edx+7C];TMPHexEditorEx.sub_0048BE68
 004E832E    pop         ecx
 004E832F    pop         ecx
 004E8330    pop         ebp
 004E8331    ret
*}
end;

//004E8334
{*function sub_004E8334:?;
begin
 004E8334    push        ebp
 004E8335    mov         ebp,esp
 004E8337    add         esp,0FFFFFFF8
 004E833A    mov         dword ptr [ebp-4],eax
 004E833D    mov         eax,dword ptr [ebp-4]
 004E8340    mov         eax,dword ptr [eax+618];TCustomMPHexEditor.?f618:TMPHUndoStorage
 004E8346    call        004EA188
 004E834B    mov         dword ptr [ebp-8],eax
 004E834E    mov         eax,dword ptr [ebp-8]
 004E8351    pop         ecx
 004E8352    pop         ecx
 004E8353    pop         ebp
 004E8354    ret
end;*}

//004E8358
{*function sub_004E8358:?;
begin
 004E8358    push        ebp
 004E8359    mov         ebp,esp
 004E835B    add         esp,0FFFFFFF8
 004E835E    mov         dword ptr [ebp-4],eax
 004E8361    mov         eax,dword ptr [ebp-4]
 004E8364    mov         eax,dword ptr [eax+618];TCustomMPHexEditor.?f618:TMPHUndoStorage
 004E836A    call        004EAAE8
 004E836F    mov         dword ptr [ebp-8],eax
 004E8372    mov         eax,dword ptr [ebp-8]
 004E8375    pop         ecx
 004E8376    pop         ecx
 004E8377    pop         ebp
 004E8378    ret
end;*}

//004E837C
{*function sub_004E837C(?:TMPHexEditorEx):?;
begin
 004E837C    push        ebp
 004E837D    mov         ebp,esp
 004E837F    add         esp,0FFFFFFF8
 004E8382    mov         dword ptr [ebp-4],eax
 004E8385    mov         eax,dword ptr [ebp-4]
 004E8388    mov         eax,dword ptr [eax+618]
 004E838E    call        004EACCC
 004E8393    mov         byte ptr [ebp-5],al
 004E8396    mov         al,byte ptr [ebp-5]
 004E8399    pop         ecx
 004E839A    pop         ecx
 004E839B    pop         ebp
 004E839C    ret
end;*}

//004E83A0
{*function sub_004E83A0(?:TMPHexEditorEx):?;
begin
 004E83A0    push        ebp
 004E83A1    mov         ebp,esp
 004E83A3    add         esp,0FFFFFFF8
 004E83A6    mov         dword ptr [ebp-4],eax
 004E83A9    mov         eax,dword ptr [ebp-4]
 004E83AC    mov         eax,dword ptr [eax+618]
 004E83B2    call        004EB7D4
 004E83B7    mov         byte ptr [ebp-5],al
 004E83BA    mov         al,byte ptr [ebp-5]
 004E83BD    pop         ecx
 004E83BE    pop         ecx
 004E83BF    pop         ebp
 004E83C0    ret
end;*}

//004E83C4
procedure TMPHexEditorEx.SetGutterWidth(Value:Integer);
begin
{*
 004E83C4    push        ebp
 004E83C5    mov         ebp,esp
 004E83C7    add         esp,0FFFFFFF8
 004E83CA    mov         dword ptr [ebp-8],edx
 004E83CD    mov         dword ptr [ebp-4],eax
 004E83D0    mov         eax,dword ptr [ebp-4]
 004E83D3    mov         eax,dword ptr [eax+59C];TMPHexEditorEx.?f59C:Integer
 004E83D9    cmp         eax,dword ptr [ebp-8]
>004E83DC    je          004E83FA
 004E83DE    mov         eax,dword ptr [ebp-8]
 004E83E1    mov         edx,dword ptr [ebp-4]
 004E83E4    mov         dword ptr [edx+59C],eax;TMPHexEditorEx.?f59C:Integer
 004E83EA    mov         eax,dword ptr [ebp-4]
 004E83ED    call        004E4F24
 004E83F2    mov         eax,dword ptr [ebp-4]
 004E83F5    mov         edx,dword ptr [eax]
 004E83F7    call        dword ptr [edx+7C];TMPHexEditorEx.sub_0048BE68
 004E83FA    pop         ecx
 004E83FB    pop         ecx
 004E83FC    pop         ebp
 004E83FD    ret
*}
end;

//004E8400
{*procedure sub_004E8400(?:?; ?:?);
begin
 004E8400    push        ebp
 004E8401    mov         ebp,esp
 004E8403    add         esp,0FFFFFFF8
 004E8406    mov         dword ptr [ebp-8],edx
 004E8409    mov         dword ptr [ebp-4],eax
 004E840C    mov         eax,dword ptr [ebp-4]
 004E840F    mov         eax,dword ptr [eax+4C4]
 004E8415    call        00495684
 004E841A    mov         eax,dword ptr [ebp-4]
 004E841D    mov         eax,dword ptr [eax+5B8]
 004E8423    call        0043498C
 004E8428    xor         ecx,ecx
 004E842A    xor         edx,edx
 004E842C    call        0042F5D8
 004E8431    mov         ecx,eax
 004E8433    mov         eax,dword ptr [ebp-4]
 004E8436    mov         edx,dword ptr [eax+5B8]
 004E843C    mov         eax,dword ptr [ebp-4]
 004E843F    mov         eax,dword ptr [eax+4C4]
 004E8445    call        004951E0
 004E844A    mov         eax,dword ptr [ebp-4]
 004E844D    call        TWinControl.HandleAllocated
 004E8452    test        al,al
>004E8454    je          004E845E
 004E8456    mov         eax,dword ptr [ebp-4]
 004E8459    mov         edx,dword ptr [eax]
 004E845B    call        dword ptr [edx+7C]
 004E845E    pop         ecx
 004E845F    pop         ecx
 004E8460    pop         ebp
 004E8461    ret
end;*}

//004E8464
procedure TMPHexEditorEx.SetBookmarkBitmap(Value:TBitmap);
begin
{*
 004E8464    push        ebp
 004E8465    mov         ebp,esp
 004E8467    add         esp,0FFFFFFF4
 004E846A    xor         ecx,ecx
 004E846C    mov         dword ptr [ebp-0C],ecx
 004E846F    mov         dword ptr [ebp-8],edx
 004E8472    mov         dword ptr [ebp-4],eax
 004E8475    xor         eax,eax
 004E8477    push        ebp
 004E8478    push        4E8518
 004E847D    push        dword ptr fs:[eax]
 004E8480    mov         dword ptr fs:[eax],esp
 004E8483    cmp         dword ptr [ebp-8],0
>004E8487    jne         004E84A4
 004E8489    mov         ecx,4E852C;'BOOKMARKICONS'
 004E848E    mov         edx,dword ptr ds:[56F668];0x0 HInstance:LongWord
 004E8494    mov         eax,dword ptr [ebp-4]
 004E8497    mov         eax,dword ptr [eax+5B8]
 004E849D    call        00435134
>004E84A2    jmp         004E84F2
 004E84A4    mov         eax,dword ptr [ebp-8]
 004E84A7    mov         edx,dword ptr [eax]
 004E84A9    call        dword ptr [edx+2C];TBitmap.sub_00434CF0
 004E84AC    cmp         eax,0C8
>004E84B1    jne         004E84C0
 004E84B3    mov         eax,dword ptr [ebp-8]
 004E84B6    mov         edx,dword ptr [eax]
 004E84B8    call        dword ptr [edx+20];TBitmap.sub_00434A8C
 004E84BB    cmp         eax,0A
>004E84BE    je          004E84E1
 004E84C0    lea         edx,[ebp-0C]
 004E84C3    mov         eax,4DF32C;^HInstance:LongWord
 004E84C8    call        LoadResString
 004E84CD    mov         ecx,dword ptr [ebp-0C]
 004E84D0    mov         dl,1
 004E84D2    mov         eax,[004DE8FC];EMPHexEditor
 004E84D7    call        Exception.Create;EMPHexEditor.Create
 004E84DC    call        @RaiseExcept
 004E84E1    mov         edx,dword ptr [ebp-8]
 004E84E4    mov         eax,dword ptr [ebp-4]
 004E84E7    mov         eax,dword ptr [eax+5B8]
 004E84ED    mov         ecx,dword ptr [eax]
 004E84EF    call        dword ptr [ecx+8]
 004E84F2    cmp         dword ptr [ebp-8],0
 004E84F6    setne       al
 004E84F9    mov         edx,dword ptr [ebp-4]
 004E84FC    mov         byte ptr [edx+5C0],al;TMPHexEditorEx.?f5C0:byte
 004E8502    xor         eax,eax
 004E8504    pop         edx
 004E8505    pop         ecx
 004E8506    pop         ecx
 004E8507    mov         dword ptr fs:[eax],edx
 004E850A    push        4E851F
 004E850F    lea         eax,[ebp-0C]
 004E8512    call        @LStrClr
 004E8517    ret
>004E8518    jmp         @HandleFinally
>004E851D    jmp         004E850F
 004E851F    mov         esp,ebp
 004E8521    pop         ebp
 004E8522    ret
*}
end;

//004E853C
procedure sub_004E853C(?:TMPHexEditorEx);
begin
{*
 004E853C    push        ebp
 004E853D    mov         ebp,esp
 004E853F    add         esp,0FFFFFFF4
 004E8542    mov         dword ptr [ebp-4],eax
 004E8545    mov         eax,dword ptr [ebp-4]
 004E8548    call        004E0588
 004E854D    test        eax,eax
>004E854F    jle         004E85C7
 004E8551    mov         eax,dword ptr [ebp-4]
 004E8554    call        TMPHexEditorEx.GetInsertMode
 004E8559    test        al,al
>004E855B    jne         004E8580
 004E855D    lea         eax,[ebp-0C]
 004E8560    push        eax
 004E8561    mov         eax,dword ptr [ebp-4]
 004E8564    call        004E409C
 004E8569    push        eax
 004E856A    mov         eax,dword ptr [ebp-4]
 004E856D    call        004E0588
 004E8572    mov         edx,eax
 004E8574    dec         edx
 004E8575    mov         eax,dword ptr [ebp-4]
 004E8578    pop         ecx
 004E8579    call        004E1344
>004E857E    jmp         004E85A0
 004E8580    lea         eax,[ebp-0C]
 004E8583    push        eax
 004E8584    mov         eax,dword ptr [ebp-4]
 004E8587    call        004E409C
 004E858C    push        eax
 004E858D    mov         eax,dword ptr [ebp-4]
 004E8590    call        004E0588
 004E8595    mov         edx,eax
 004E8597    mov         eax,dword ptr [ebp-4]
 004E859A    pop         ecx
 004E859B    call        004E1344
 004E85A0    push        1
 004E85A2    push        1
 004E85A4    mov         ecx,dword ptr [ebp-8]
 004E85A7    mov         edx,dword ptr [ebp-0C]
 004E85AA    mov         eax,dword ptr [ebp-4]
 004E85AD    call        004D8CCC
 004E85B2    mov         eax,dword ptr [ebp-4]
 004E85B5    call        004E0588
 004E85BA    mov         ecx,eax
 004E85BC    dec         ecx
 004E85BD    xor         edx,edx
 004E85BF    mov         eax,dword ptr [ebp-4]
 004E85C2    call        004E29CC
 004E85C7    mov         esp,ebp
 004E85C9    pop         ebp
 004E85CA    ret
*}
end;

//004E85CC
{*procedure TMPHexEditorEx.GetVersion(?:?);
begin
 004E85CC    push        ebp
 004E85CD    mov         ebp,esp
 004E85CF    add         esp,0FFFFFFF8
 004E85D2    mov         dword ptr [ebp-8],edx
 004E85D5    mov         dword ptr [ebp-4],eax
 004E85D8    mov         eax,dword ptr [ebp-8]
 004E85DB    mov         edx,4E85F4;'september 30, 2007; © markus stephany, vcl[at]mirkes[dot]de'
 004E85E0    call        @LStrAsg
 004E85E5    pop         ecx
 004E85E6    pop         ecx
 004E85E7    pop         ebp
 004E85E8    ret
end;*}

//004E8630
procedure TMPHexEditorEx.SetVersion(Value:String);
begin
{*
 004E8630    push        ebp
 004E8631    mov         ebp,esp
 004E8633    add         esp,0FFFFFFF8
 004E8636    mov         dword ptr [ebp-8],edx
 004E8639    mov         dword ptr [ebp-4],eax
 004E863C    pop         ecx
 004E863D    pop         ecx
 004E863E    pop         ebp
 004E863F    ret
*}
end;

//004E8640
{*procedure sub_004E8640(?:?; ?:?);
begin
 004E8640    push        ebp
 004E8641    mov         ebp,esp
 004E8643    add         esp,0FFFFFFF8
 004E8646    mov         byte ptr [ebp-5],dl
 004E8649    mov         dword ptr [ebp-4],eax
 004E864C    cmp         byte ptr [ebp-5],0
>004E8650    jne         004E8666
 004E8652    push        0
 004E8654    push        0
 004E8656    mov         eax,dword ptr [ebp-4]
 004E8659    mov         eax,dword ptr [eax+4E0]
 004E865F    call        004235FC
>004E8664    jmp         004E8678
 004E8666    push        0
 004E8668    push        0
 004E866A    mov         eax,dword ptr [ebp-4]
 004E866D    mov         eax,dword ptr [eax+618]
 004E8673    call        004235FC
 004E8678    pop         ecx
 004E8679    pop         ecx
 004E867A    pop         ebp
 004E867B    ret
end;*}

//004E867C
{*procedure sub_004E867C(?:?);
begin
 004E867C    push        ebp
 004E867D    mov         ebp,esp
 004E867F    push        ecx
 004E8680    mov         dword ptr [ebp-4],eax
 004E8683    mov         eax,dword ptr [ebp-4]
 004E8686    mov         eax,dword ptr [eax+5BC]
 004E868C    call        @DynArrayLength
 004E8691    test        eax,eax
>004E8693    jle         004E86E4
 004E8695    mov         eax,dword ptr [ebp-4]
 004E8698    mov         eax,dword ptr [eax+5BC]
 004E869E    call        @DynArrayLength
 004E86A3    mov         edx,dword ptr [ebp-4]
 004E86A6    mov         edx,dword ptr [edx+5BC]
 004E86AC    mov         dx,word ptr [edx+eax*4-4]
 004E86B1    mov         eax,dword ptr [ebp-4]
 004E86B4    call        TSplitter.SetCursor
 004E86B9    mov         eax,dword ptr [ebp-4]
 004E86BC    mov         eax,dword ptr [eax+5BC]
 004E86C2    call        @DynArrayLength
 004E86C7    dec         eax
 004E86C8    push        eax
 004E86C9    mov         eax,dword ptr [ebp-4]
 004E86CC    add         eax,5BC
 004E86D1    mov         ecx,1
 004E86D6    mov         edx,dword ptr ds:[4DEF2C];_DynArr_80_5
 004E86DC    call        @DynArraySetLength
 004E86E1    add         esp,4
 004E86E4    pop         ecx
 004E86E5    pop         ebp
 004E86E6    ret
end;*}

//004E86E8
{*procedure sub_004E86E8(?:?);
begin
 004E86E8    push        ebp
 004E86E9    mov         ebp,esp
 004E86EB    push        ecx
 004E86EC    mov         dword ptr [ebp-4],eax
 004E86EF    mov         eax,dword ptr [ebp-4]
 004E86F2    mov         eax,dword ptr [eax+5BC]
 004E86F8    call        @DynArrayLength
 004E86FD    inc         eax
 004E86FE    push        eax
 004E86FF    mov         eax,dword ptr [ebp-4]
 004E8702    add         eax,5BC
 004E8707    mov         ecx,1
 004E870C    mov         edx,dword ptr ds:[4DEF2C];_DynArr_80_5
 004E8712    call        @DynArraySetLength
 004E8717    add         esp,4
 004E871A    mov         eax,dword ptr [ebp-4]
 004E871D    mov         eax,dword ptr [eax+5BC]
 004E8723    call        @DynArrayLength
 004E8728    mov         edx,dword ptr [ebp-4]
 004E872B    mov         edx,dword ptr [edx+5BC]
 004E8731    mov         ecx,dword ptr [ebp-4]
 004E8734    movsx       ecx,word ptr [ecx+78]
 004E8738    mov         dword ptr [edx+eax*4-4],ecx
 004E873C    mov         dx,0FFF5
 004E8740    mov         eax,dword ptr [ebp-4]
 004E8743    call        TSplitter.SetCursor
 004E8748    pop         ecx
 004E8749    pop         ebp
 004E874A    ret
end;*}

//004E874C
function TMPHexEditorEx.IsStoredBookmarkBitmap(Value:TBitmap):Boolean;
begin
{*
 004E874C    push        ebp
 004E874D    mov         ebp,esp
 004E874F    add         esp,0FFFFFFF8
 004E8752    mov         dword ptr [ebp-4],eax
 004E8755    mov         eax,dword ptr [ebp-4]
 004E8758    mov         al,byte ptr [eax+5C0];TMPHexEditorEx.?f5C0:byte
 004E875E    mov         byte ptr [ebp-5],al
 004E8761    mov         al,byte ptr [ebp-5]
 004E8764    pop         ecx
 004E8765    pop         ecx
 004E8766    pop         ebp
 004E8767    ret
*}
end;

//004E8768
procedure sub_004E8768;
begin
{*
 004E8768    push        ebp
 004E8769    mov         ebp,esp
 004E876B    add         esp,0FFFFFFF0
 004E876E    xor         edx,edx
 004E8770    mov         dword ptr [ebp-10],edx
 004E8773    mov         dword ptr [ebp-4],eax
 004E8776    xor         eax,eax
 004E8778    push        ebp
 004E8779    push        4E87DD
 004E877E    push        dword ptr fs:[eax]
 004E8781    mov         dword ptr fs:[eax],esp
 004E8784    mov         eax,dword ptr [ebp-4]
 004E8787    cmp         byte ptr [eax+4E9],0;TCustomMPHexEditor.?f4E9:byte
>004E878E    je          004E87C7
 004E8790    mov         eax,dword ptr [ebp-4]
 004E8793    mov         eax,dword ptr [eax+4F4];TCustomMPHexEditor.?f4F4:String
 004E8799    mov         dword ptr [ebp-0C],eax
 004E879C    mov         byte ptr [ebp-8],0B
 004E87A0    lea         eax,[ebp-0C]
 004E87A3    push        eax
 004E87A4    push        0
 004E87A6    lea         edx,[ebp-10]
 004E87A9    mov         eax,4DF2FC;^HInstance:LongWord
 004E87AE    call        LoadResString
 004E87B3    mov         ecx,dword ptr [ebp-10]
 004E87B6    mov         dl,1
 004E87B8    mov         eax,[0041D02C];EFOpenError
 004E87BD    call        Exception.CreateFmt;EFOpenError.Create
 004E87C2    call        @RaiseExcept
 004E87C7    xor         eax,eax
 004E87C9    pop         edx
 004E87CA    pop         ecx
 004E87CB    pop         ecx
 004E87CC    mov         dword ptr fs:[eax],edx
 004E87CF    push        4E87E4
 004E87D4    lea         eax,[ebp-10]
 004E87D7    call        @LStrClr
 004E87DC    ret
>004E87DD    jmp         @HandleFinally
>004E87E2    jmp         004E87D4
 004E87E4    mov         esp,ebp
 004E87E6    pop         ebp
 004E87E7    ret
*}
end;

//004E87E8
procedure sub_004E87E8;
begin
{*
 004E87E8    push        ebp
 004E87E9    mov         ebp,esp
 004E87EB    push        ecx
 004E87EC    push        ebx
 004E87ED    mov         dword ptr [ebp-4],eax
 004E87F0    mov         eax,dword ptr [ebp-4]
 004E87F3    cmp         word ptr [eax+5EA],0;TCustomMPHexEditor.?f5EA:word
>004E87FB    je          004E880F
 004E87FD    mov         ebx,dword ptr [ebp-4]
 004E8800    mov         edx,dword ptr [ebp-4]
 004E8803    mov         eax,dword ptr [ebx+5EC];TCustomMPHexEditor.?f5EC:dword
 004E8809    call        dword ptr [ebx+5E8]
 004E880F    mov         eax,dword ptr [ebp-4]
 004E8812    mov         edx,dword ptr [eax]
 004E8814    call        dword ptr [edx+0E8];TCustomMPHexEditor.sub_004E8D28
 004E881A    pop         ebx
 004E881B    pop         ecx
 004E881C    pop         ebp
 004E881D    ret
*}
end;

//004E8820
procedure TMPHexEditorEx.SetDrawGutter3D(Value:Boolean);
begin
{*
 004E8820    push        ebp
 004E8821    mov         ebp,esp
 004E8823    add         esp,0FFFFFFF8
 004E8826    mov         byte ptr [ebp-5],dl
 004E8829    mov         dword ptr [ebp-4],eax
 004E882C    mov         eax,dword ptr [ebp-4]
 004E882F    mov         al,byte ptr [eax+59B];TMPHexEditorEx.?f59B:byte
 004E8835    cmp         al,byte ptr [ebp-5]
>004E8838    je          004E8851
 004E883A    mov         al,byte ptr [ebp-5]
 004E883D    mov         edx,dword ptr [ebp-4]
 004E8840    mov         byte ptr [edx+59B],al;TMPHexEditorEx.?f59B:byte
 004E8846    mov         eax,dword ptr [ebp-4]
 004E8849    mov         edx,dword ptr [eax]
 004E884B    call        dword ptr [edx+80];TMPHexEditorEx.sub_0048BF68
 004E8851    pop         ecx
 004E8852    pop         ecx
 004E8853    pop         ebp
 004E8854    ret
*}
end;

//004E8858
procedure TMPHexEditorEx.SetShowRuler(Value:Boolean);
begin
{*
 004E8858    push        ebp
 004E8859    mov         ebp,esp
 004E885B    add         esp,0FFFFFFF8
 004E885E    mov         byte ptr [ebp-5],dl
 004E8861    mov         dword ptr [ebp-4],eax
 004E8864    mov         eax,dword ptr [ebp-4]
 004E8867    mov         al,byte ptr [eax+5F0];TMPHexEditorEx.?f5F0:byte
 004E886D    cmp         al,byte ptr [ebp-5]
>004E8870    jne         004E887B
 004E8872    mov         eax,dword ptr [ebp-4]
 004E8875    test        byte ptr [eax+1C],1;TMPHexEditorEx.FComponentState:TComponentState
>004E8879    je          004E888F
 004E887B    mov         al,byte ptr [ebp-5]
 004E887E    mov         edx,dword ptr [ebp-4]
 004E8881    mov         byte ptr [edx+5F0],al;TMPHexEditorEx.?f5F0:byte
 004E8887    mov         eax,dword ptr [ebp-4]
 004E888A    call        004E025C
 004E888F    pop         ecx
 004E8890    pop         ecx
 004E8891    pop         ebp
 004E8892    ret
*}
end;

//004E8894
procedure TMPHexEditorEx.SetBytesPerUnit(Value:Integer);
begin
{*
 004E8894    push        ebp
 004E8895    mov         ebp,esp
 004E8897    add         esp,0FFFFFFE4
 004E889A    xor         ecx,ecx
 004E889C    mov         dword ptr [ebp-1C],ecx
 004E889F    mov         dword ptr [ebp-10],ecx
 004E88A2    mov         dword ptr [ebp-8],edx
 004E88A5    mov         dword ptr [ebp-4],eax
 004E88A8    xor         eax,eax
 004E88AA    push        ebp
 004E88AB    push        4E89DE
 004E88B0    push        dword ptr fs:[eax]
 004E88B3    mov         dword ptr fs:[eax],esp
 004E88B6    mov         eax,dword ptr [ebp-4]
 004E88B9    mov         eax,dword ptr [eax+5F4];TMPHexEditorEx.?f5F4:Integer
 004E88BF    cmp         eax,dword ptr [ebp-8]
>004E88C2    je          004E89C0
 004E88C8    mov         eax,dword ptr [ebp-4]
 004E88CB    cmp         byte ptr [eax+61C],0;TMPHexEditorEx.?f61C:byte
>004E88D2    je          004E88FB
 004E88D4    cmp         dword ptr [ebp-8],2
>004E88D8    je          004E88FB
 004E88DA    lea         edx,[ebp-10]
 004E88DD    mov         eax,4DF35C;^HInstance:LongWord
 004E88E2    call        LoadResString
 004E88E7    mov         ecx,dword ptr [ebp-10]
 004E88EA    mov         dl,1
 004E88EC    mov         eax,[004DE8FC];EMPHexEditor
 004E88F1    call        Exception.Create;EMPHexEditor.Create
 004E88F6    call        @RaiseExcept
 004E88FB    mov         eax,dword ptr [ebp-8]
 004E88FE    dec         eax
 004E88FF    sub         eax,2
>004E8902    jb          004E893F
 004E8904    sub         eax,1
>004E8907    je          004E893F
 004E8909    sub         eax,4
>004E890C    je          004E893F
 004E890E    mov         eax,dword ptr [ebp-8]
 004E8911    mov         dword ptr [ebp-18],eax
 004E8914    mov         byte ptr [ebp-14],0
 004E8918    lea         eax,[ebp-18]
 004E891B    push        eax
 004E891C    push        0
 004E891E    lea         edx,[ebp-1C]
 004E8921    mov         eax,4DF354;^HInstance:LongWord
 004E8926    call        LoadResString
 004E892B    mov         ecx,dword ptr [ebp-1C]
 004E892E    mov         dl,1
 004E8930    mov         eax,[004DE8FC];EMPHexEditor
 004E8935    call        Exception.CreateFmt;EMPHexEditor.Create
 004E893A    call        @RaiseExcept
 004E893F    mov         eax,dword ptr [ebp-8]
 004E8942    mov         edx,dword ptr [ebp-4]
 004E8945    mov         dword ptr [edx+5F4],eax;TMPHexEditorEx.?f5F4:Integer
 004E894B    mov         eax,dword ptr [ebp-4]
 004E894E    cmp         dword ptr [eax+5F8],0FFFFFFFF;TMPHexEditorEx.?f5F8:Integer
>004E8955    jne         004E8963
 004E8957    mov         eax,dword ptr [ebp-8]
 004E895A    mov         edx,dword ptr [ebp-4]
 004E895D    mov         dword ptr [edx+610],eax;TMPHexEditorEx.?f610:Integer
 004E8963    mov         eax,dword ptr [ebp-4]
 004E8966    add         eax,5A0;TMPHexEditorEx.?f5A0:TMPHOffsetFormat
 004E896B    mov         dword ptr [ebp-0C],eax
 004E896E    mov         eax,dword ptr [ebp-0C]
 004E8971    test        byte ptr [eax+10],8
>004E8975    je          004E8986
 004E8977    mov         eax,dword ptr [ebp-0C]
 004E897A    mov         edx,dword ptr [ebp-4]
 004E897D    mov         dl,byte ptr [edx+610];TMPHexEditorEx.?f610:Integer
 004E8983    mov         byte ptr [eax+12],dl
 004E8986    mov         eax,dword ptr [ebp-4]
 004E8989    call        004E025C
 004E898E    mov         eax,dword ptr [ebp-4]
 004E8991    call        004E89EC
 004E8996    mov         eax,dword ptr [ebp-4]
 004E8999    call        004E4AD8
 004E899E    mov         edx,dword ptr [ebp-4]
 004E89A1    mov         ecx,dword ptr [edx+5F4];TMPHexEditorEx.?f5F4:Integer
 004E89A7    cdq
 004E89A8    idiv        eax,ecx
 004E89AA    test        edx,edx
>004E89AC    je          004E89B8
 004E89AE    xor         edx,edx
 004E89B0    mov         eax,dword ptr [ebp-4]
 004E89B3    call        004E31CC
 004E89B8    mov         eax,dword ptr [ebp-4]
 004E89BB    mov         edx,dword ptr [eax]
 004E89BD    call        dword ptr [edx+7C];TMPHexEditorEx.sub_0048BE68
 004E89C0    xor         eax,eax
 004E89C2    pop         edx
 004E89C3    pop         ecx
 004E89C4    pop         ecx
 004E89C5    mov         dword ptr fs:[eax],edx
 004E89C8    push        4E89E5
 004E89CD    lea         eax,[ebp-1C]
 004E89D0    call        @LStrClr
 004E89D5    lea         eax,[ebp-10]
 004E89D8    call        @LStrClr
 004E89DD    ret
>004E89DE    jmp         @HandleFinally
>004E89E3    jmp         004E89CD
 004E89E5    mov         esp,ebp
 004E89E7    pop         ebp
 004E89E8    ret
*}
end;

//004E89EC
procedure sub_004E89EC(?:TCustomMPHexEditor);
begin
{*
 004E89EC    push        ebp
 004E89ED    mov         ebp,esp
 004E89EF    mov         ecx,4
 004E89F4    push        0
 004E89F6    push        0
 004E89F8    dec         ecx
>004E89F9    jne         004E89F4
 004E89FB    push        ecx
 004E89FC    mov         dword ptr [ebp-4],eax
 004E89FF    xor         eax,eax
 004E8A01    push        ebp
 004E8A02    push        4E8C38
 004E8A07    push        dword ptr fs:[eax]
 004E8A0A    mov         dword ptr fs:[eax],esp
 004E8A0D    mov         eax,dword ptr [ebp-4]
 004E8A10    add         eax,674;TCustomMPHexEditor.?f674:String
 004E8A15    call        @LStrClr
 004E8A1A    mov         eax,dword ptr [ebp-4]
 004E8A1D    mov         eax,dword ptr [eax+610];TCustomMPHexEditor.?f610:Integer
 004E8A23    add         eax,eax
 004E8A25    mov         dword ptr [ebp-0C],eax
 004E8A28    mov         eax,dword ptr [ebp-4]
 004E8A2B    mov         eax,dword ptr [eax+4D4];TCustomMPHexEditor.?f4D4:Integer
 004E8A31    mov         edx,dword ptr [ebp-4]
 004E8A34    mov         ecx,dword ptr [edx+610];TCustomMPHexEditor.?f610:Integer
 004E8A3A    cdq
 004E8A3B    idiv        eax,ecx
 004E8A3D    dec         eax
 004E8A3E    test        eax,eax
>004E8A40    jl          004E8AA4
 004E8A42    inc         eax
 004E8A43    mov         dword ptr [ebp-14],eax
 004E8A46    mov         dword ptr [ebp-8],0
 004E8A4D    lea         eax,[ebp-10]
 004E8A50    push        eax
 004E8A51    mov         cl,byte ptr [ebp-0C]
 004E8A54    mov         eax,dword ptr [ebp-4]
 004E8A57    mov         dl,byte ptr [eax+671];TCustomMPHexEditor.?f671:byte
 004E8A5D    mov         eax,dword ptr [ebp-8]
 004E8A60    call        004DF8D8
 004E8A65    mov         eax,dword ptr [ebp-10]
 004E8A68    call        @LStrLen
 004E8A6D    cmp         eax,dword ptr [ebp-0C]
>004E8A70    jle         004E8A8C
 004E8A72    mov         eax,dword ptr [ebp-10]
 004E8A75    call        @LStrLen
 004E8A7A    mov         ecx,eax
 004E8A7C    sub         ecx,dword ptr [ebp-0C]
 004E8A7F    lea         eax,[ebp-10]
 004E8A82    mov         edx,1
 004E8A87    call        @LStrDelete
 004E8A8C    mov         eax,dword ptr [ebp-4]
 004E8A8F    add         eax,674;TCustomMPHexEditor.?f674:String
 004E8A94    mov         edx,dword ptr [ebp-10]
 004E8A97    call        @LStrCat
 004E8A9C    inc         dword ptr [ebp-8]
 004E8A9F    dec         dword ptr [ebp-14]
>004E8AA2    jne         004E8A4D
 004E8AA4    mov         eax,dword ptr [ebp-4]
 004E8AA7    cmp         byte ptr [eax+5E0],0;TCustomMPHexEditor.?f5E0:byte
>004E8AAE    je          004E8AD3
 004E8AB0    lea         edx,[ebp-18]
 004E8AB3    mov         eax,dword ptr [ebp-4]
 004E8AB6    mov         eax,dword ptr [eax+674];TCustomMPHexEditor.?f674:String
 004E8ABC    call        0040BD34
 004E8AC1    mov         edx,dword ptr [ebp-18]
 004E8AC4    mov         eax,dword ptr [ebp-4]
 004E8AC7    add         eax,674;TCustomMPHexEditor.?f674:String
 004E8ACC    call        @LStrAsg
>004E8AD1    jmp         004E8AF4
 004E8AD3    lea         edx,[ebp-1C]
 004E8AD6    mov         eax,dword ptr [ebp-4]
 004E8AD9    mov         eax,dword ptr [eax+674];TCustomMPHexEditor.?f674:String
 004E8ADF    call        0040BCC8
 004E8AE4    mov         edx,dword ptr [ebp-1C]
 004E8AE7    mov         eax,dword ptr [ebp-4]
 004E8AEA    add         eax,674;TCustomMPHexEditor.?f674:String
 004E8AEF    call        @LStrAsg
 004E8AF4    mov         eax,dword ptr [ebp-4]
 004E8AF7    add         eax,678;TCustomMPHexEditor.?f678:String
 004E8AFC    call        @LStrClr
 004E8B01    mov         eax,dword ptr [ebp-4]
 004E8B04    cmp         byte ptr [eax+61C],0;TCustomMPHexEditor.?f61C:byte
>004E8B0B    je          004E8B22
 004E8B0D    mov         eax,dword ptr [ebp-4]
 004E8B10    mov         eax,dword ptr [eax+610];TCustomMPHexEditor.?f610:Integer
 004E8B16    sar         eax,1
>004E8B18    jns         004E8B1D
 004E8B1A    adc         eax,0
 004E8B1D    mov         dword ptr [ebp-0C],eax
>004E8B20    jmp         004E8B2E
 004E8B22    mov         eax,dword ptr [ebp-4]
 004E8B25    mov         eax,dword ptr [eax+610];TCustomMPHexEditor.?f610:Integer
 004E8B2B    mov         dword ptr [ebp-0C],eax
 004E8B2E    mov         eax,dword ptr [ebp-4]
 004E8B31    mov         eax,dword ptr [eax+4D4];TCustomMPHexEditor.?f4D4:Integer
 004E8B37    mov         edx,dword ptr [ebp-4]
 004E8B3A    mov         ecx,dword ptr [edx+610];TCustomMPHexEditor.?f610:Integer
 004E8B40    cdq
 004E8B41    idiv        eax,ecx
 004E8B43    dec         eax
 004E8B44    test        eax,eax
>004E8B46    jl          004E8BC5
 004E8B48    inc         eax
 004E8B49    mov         dword ptr [ebp-14],eax
 004E8B4C    mov         dword ptr [ebp-8],0
 004E8B53    lea         ecx,[ebp-10]
 004E8B56    mov         eax,dword ptr [ebp-4]
 004E8B59    mov         dl,byte ptr [eax+671];TCustomMPHexEditor.?f671:byte
 004E8B5F    mov         eax,dword ptr [ebp-8]
 004E8B62    call        004DF8B4
 004E8B67    mov         eax,dword ptr [ebp-10]
 004E8B6A    call        @LStrLen
 004E8B6F    cmp         eax,dword ptr [ebp-0C]
>004E8B72    jle         004E8BA0
 004E8B74    mov         eax,dword ptr [ebp-10]
 004E8B77    call        @LStrLen
 004E8B7C    mov         ecx,eax
 004E8B7E    sub         ecx,dword ptr [ebp-0C]
 004E8B81    lea         eax,[ebp-10]
 004E8B84    mov         edx,1
 004E8B89    call        @LStrDelete
>004E8B8E    jmp         004E8BAD
 004E8B90    lea         eax,[ebp-10]
 004E8B93    mov         ecx,dword ptr [ebp-10]
 004E8B96    mov         edx,4E8C4C;' '
 004E8B9B    call        @LStrCat3
 004E8BA0    mov         eax,dword ptr [ebp-10]
 004E8BA3    call        @LStrLen
 004E8BA8    cmp         eax,dword ptr [ebp-0C]
>004E8BAB    jl          004E8B90
 004E8BAD    mov         eax,dword ptr [ebp-4]
 004E8BB0    add         eax,678;TCustomMPHexEditor.?f678:String
 004E8BB5    mov         edx,dword ptr [ebp-10]
 004E8BB8    call        @LStrCat
 004E8BBD    inc         dword ptr [ebp-8]
 004E8BC0    dec         dword ptr [ebp-14]
>004E8BC3    jne         004E8B53
 004E8BC5    mov         eax,dword ptr [ebp-4]
 004E8BC8    cmp         byte ptr [eax+5E0],0;TCustomMPHexEditor.?f5E0:byte
>004E8BCF    je          004E8BF4
 004E8BD1    lea         edx,[ebp-20]
 004E8BD4    mov         eax,dword ptr [ebp-4]
 004E8BD7    mov         eax,dword ptr [eax+678];TCustomMPHexEditor.?f678:String
 004E8BDD    call        0040BD34
 004E8BE2    mov         edx,dword ptr [ebp-20]
 004E8BE5    mov         eax,dword ptr [ebp-4]
 004E8BE8    add         eax,678;TCustomMPHexEditor.?f678:String
 004E8BED    call        @LStrAsg
>004E8BF2    jmp         004E8C15
 004E8BF4    lea         edx,[ebp-24]
 004E8BF7    mov         eax,dword ptr [ebp-4]
 004E8BFA    mov         eax,dword ptr [eax+678];TCustomMPHexEditor.?f678:String
 004E8C00    call        0040BCC8
 004E8C05    mov         edx,dword ptr [ebp-24]
 004E8C08    mov         eax,dword ptr [ebp-4]
 004E8C0B    add         eax,678;TCustomMPHexEditor.?f678:String
 004E8C10    call        @LStrAsg
 004E8C15    xor         eax,eax
 004E8C17    pop         edx
 004E8C18    pop         ecx
 004E8C19    pop         ecx
 004E8C1A    mov         dword ptr fs:[eax],edx
 004E8C1D    push        4E8C3F
 004E8C22    lea         eax,[ebp-24]
 004E8C25    mov         edx,4
 004E8C2A    call        @LStrArrayClr
 004E8C2F    lea         eax,[ebp-10]
 004E8C32    call        @LStrClr
 004E8C37    ret
>004E8C38    jmp         @HandleFinally
>004E8C3D    jmp         004E8C22
 004E8C3F    mov         esp,ebp
 004E8C41    pop         ebp
 004E8C42    ret
*}
end;

//004E8C50
{*procedure sub_004E8C50(?:TCustomMPHexEditor; ?:dword; ?:?);
begin
 004E8C50    push        ebp
 004E8C51    mov         ebp,esp
 004E8C53    add         esp,0FFFFFFF4
 004E8C56    mov         dword ptr [ebp-0C],ecx
 004E8C59    mov         dword ptr [ebp-8],edx
 004E8C5C    mov         dword ptr [ebp-4],eax
 004E8C5F    mov         eax,dword ptr [ebp-8]
 004E8C62    mov         eax,dword ptr [eax]
 004E8C64    mov         edx,dword ptr [ebp-0C]
 004E8C67    cmp         eax,dword ptr [edx]
>004E8C69    jg          004E8CAF
 004E8C6B    mov         edx,dword ptr [ebp-8]
 004E8C6E    mov         eax,dword ptr [ebp-4]
 004E8C71    call        004E8CF8
 004E8C76    mov         edx,dword ptr [ebp-0C]
 004E8C79    mov         eax,dword ptr [ebp-4]
 004E8C7C    call        004E8CF8
 004E8C81    mov         eax,dword ptr [ebp-4]
 004E8C84    mov         eax,dword ptr [eax+5F4];TCustomMPHexEditor.?f5F4:Integer
 004E8C8A    dec         eax
 004E8C8B    mov         edx,dword ptr [ebp-0C]
 004E8C8E    add         dword ptr [edx],eax
 004E8C90    mov         eax,dword ptr [ebp-4]
 004E8C93    call        004E0588
 004E8C98    mov         edx,dword ptr [ebp-0C]
 004E8C9B    cmp         eax,dword ptr [edx]
>004E8C9D    jg          004E8CF1
 004E8C9F    mov         eax,dword ptr [ebp-4]
 004E8CA2    call        004E0588
 004E8CA7    dec         eax
 004E8CA8    mov         edx,dword ptr [ebp-0C]
 004E8CAB    mov         dword ptr [edx],eax
>004E8CAD    jmp         004E8CF1
 004E8CAF    mov         edx,dword ptr [ebp-0C]
 004E8CB2    mov         eax,dword ptr [ebp-4]
 004E8CB5    call        004E8CF8
 004E8CBA    mov         edx,dword ptr [ebp-8]
 004E8CBD    mov         eax,dword ptr [ebp-4]
 004E8CC0    call        004E8CF8
 004E8CC5    mov         eax,dword ptr [ebp-4]
 004E8CC8    mov         eax,dword ptr [eax+5F4];TCustomMPHexEditor.?f5F4:Integer
 004E8CCE    dec         eax
 004E8CCF    mov         edx,dword ptr [ebp-8]
 004E8CD2    add         dword ptr [edx],eax
 004E8CD4    mov         eax,dword ptr [ebp-4]
 004E8CD7    call        004E0588
 004E8CDC    mov         edx,dword ptr [ebp-8]
 004E8CDF    cmp         eax,dword ptr [edx]
>004E8CE1    jg          004E8CF1
 004E8CE3    mov         eax,dword ptr [ebp-4]
 004E8CE6    call        004E0588
 004E8CEB    dec         eax
 004E8CEC    mov         edx,dword ptr [ebp-8]
 004E8CEF    mov         dword ptr [edx],eax
 004E8CF1    mov         esp,ebp
 004E8CF3    pop         ebp
 004E8CF4    ret
end;*}

//004E8CF8
procedure sub_004E8CF8(?:TCustomMPHexEditor; ?:TGridCoord);
begin
{*
 004E8CF8    push        ebp
 004E8CF9    mov         ebp,esp
 004E8CFB    add         esp,0FFFFFFF8
 004E8CFE    mov         dword ptr [ebp-8],edx
 004E8D01    mov         dword ptr [ebp-4],eax
 004E8D04    mov         eax,dword ptr [ebp-8]
 004E8D07    mov         eax,dword ptr [eax]
 004E8D09    mov         edx,dword ptr [ebp-4]
 004E8D0C    mov         ecx,dword ptr [edx+5F4];TCustomMPHexEditor.?f5F4:Integer
 004E8D12    cdq
 004E8D13    idiv        eax,ecx
 004E8D15    mov         edx,dword ptr [ebp-4]
 004E8D18    imul        dword ptr [edx+5F4];TCustomMPHexEditor.?f5F4:Integer
 004E8D1E    mov         edx,dword ptr [ebp-8]
 004E8D21    mov         dword ptr [edx],eax;TGridCoord.X:Longint
 004E8D23    pop         ecx
 004E8D24    pop         ecx
 004E8D25    pop         ebp
 004E8D26    ret
*}
end;

//004E8D28
procedure sub_004E8D28;
begin
{*
 004E8D28    push        ebp
 004E8D29    mov         ebp,esp
 004E8D2B    push        ecx
 004E8D2C    mov         dword ptr [ebp-4],eax
 004E8D2F    mov         eax,dword ptr [ebp-4]
 004E8D32    test        byte ptr [eax+1C],1;TCustomMPHexEditor.FComponentState:TComponentState
>004E8D36    jne         004E8D64
 004E8D38    mov         eax,dword ptr [ebp-4]
 004E8D3B    inc         dword ptr [eax+608];TCustomMPHexEditor.?f608:dword
 004E8D41    mov         eax,dword ptr [ebp-4]
 004E8D44    cmp         dword ptr [eax+608],1;TCustomMPHexEditor.?f608:dword
>004E8D4B    jne         004E8D64
 004E8D4D    push        0
 004E8D4F    push        0
 004E8D51    push        0B101
 004E8D56    mov         eax,dword ptr [ebp-4]
 004E8D59    call        TWinControl.GetHandle
 004E8D5E    push        eax
 004E8D5F    call        user32.PostMessageA
 004E8D64    pop         ecx
 004E8D65    pop         ebp
 004E8D66    ret
*}
end;

//004E8D68
{*procedure TCustomMPHexEditor.sub_004E8D68(?:?);
begin
 004E8D68    push        ebp
 004E8D69    mov         ebp,esp
 004E8D6B    add         esp,0FFFFFFF8
 004E8D6E    push        ebx
 004E8D6F    mov         dword ptr [ebp-8],edx
 004E8D72    mov         dword ptr [ebp-4],eax
 004E8D75    mov         eax,dword ptr [ebp-4]
 004E8D78    cmp         dword ptr [eax+608],0;TCustomMPHexEditor.?f608:dword
>004E8D7F    je          004E8DCE
 004E8D81    mov         eax,dword ptr [ebp-4]
 004E8D84    cmp         word ptr [eax+602],0;TCustomMPHexEditor.?f602:word
>004E8D8C    je          004E8DCE
 004E8D8E    xor         eax,eax
 004E8D90    push        ebp
 004E8D91    push        4E8DC7
 004E8D96    push        dword ptr fs:[eax]
 004E8D99    mov         dword ptr fs:[eax],esp
 004E8D9C    mov         ebx,dword ptr [ebp-4]
 004E8D9F    mov         edx,dword ptr [ebp-4]
 004E8DA2    mov         eax,dword ptr [ebx+604];TCustomMPHexEditor.?f604:dword
 004E8DA8    call        dword ptr [ebx+600]
 004E8DAE    xor         eax,eax
 004E8DB0    pop         edx
 004E8DB1    pop         ecx
 004E8DB2    pop         ecx
 004E8DB3    mov         dword ptr fs:[eax],edx
 004E8DB6    push        4E8DCE
 004E8DBB    mov         eax,dword ptr [ebp-4]
 004E8DBE    xor         edx,edx
 004E8DC0    mov         dword ptr [eax+608],edx;TCustomMPHexEditor.?f608:dword
 004E8DC6    ret
>004E8DC7    jmp         @HandleFinally
>004E8DCC    jmp         004E8DBB
 004E8DCE    pop         ebx
 004E8DCF    pop         ecx
 004E8DD0    pop         ecx
 004E8DD1    pop         ebp
 004E8DD2    ret
end;*}

//004E8DD4
procedure TMPHexEditorEx.SetRulerBytesPerUnit(Value:Integer);
begin
{*
 004E8DD4    push        ebp
 004E8DD5    mov         ebp,esp
 004E8DD7    add         esp,0FFFFFFE8
 004E8DDA    xor         ecx,ecx
 004E8DDC    mov         dword ptr [ebp-18],ecx
 004E8DDF    mov         dword ptr [ebp-8],edx
 004E8DE2    mov         dword ptr [ebp-4],eax
 004E8DE5    xor         eax,eax
 004E8DE7    push        ebp
 004E8DE8    push        4E8ED2
 004E8DED    push        dword ptr fs:[eax]
 004E8DF0    mov         dword ptr fs:[eax],esp
 004E8DF3    mov         eax,dword ptr [ebp-4]
 004E8DF6    mov         eax,dword ptr [eax+5F8];TMPHexEditorEx.?f5F8:Integer
 004E8DFC    cmp         eax,dword ptr [ebp-8]
>004E8DFF    je          004E8EBC
 004E8E05    mov         eax,dword ptr [ebp-8]
 004E8E08    dec         eax
 004E8E09    sub         eax,2
>004E8E0C    jb          004E8E4F
 004E8E0E    sub         eax,1
>004E8E11    je          004E8E4F
 004E8E13    sub         eax,4
>004E8E16    je          004E8E4F
 004E8E18    cmp         dword ptr [ebp-8],0FFFFFFFF
>004E8E1C    je          004E8E4F
 004E8E1E    mov         eax,dword ptr [ebp-8]
 004E8E21    mov         dword ptr [ebp-14],eax
 004E8E24    mov         byte ptr [ebp-10],0
 004E8E28    lea         eax,[ebp-14]
 004E8E2B    push        eax
 004E8E2C    push        0
 004E8E2E    lea         edx,[ebp-18]
 004E8E31    mov         eax,4DF364;^HInstance:LongWord
 004E8E36    call        LoadResString
 004E8E3B    mov         ecx,dword ptr [ebp-18]
 004E8E3E    mov         dl,1
 004E8E40    mov         eax,[004DE8FC];EMPHexEditor
 004E8E45    call        Exception.CreateFmt;EMPHexEditor.Create
 004E8E4A    call        @RaiseExcept
 004E8E4F    mov         eax,dword ptr [ebp-8]
 004E8E52    mov         edx,dword ptr [ebp-4]
 004E8E55    mov         dword ptr [edx+5F8],eax;TMPHexEditorEx.?f5F8:Integer
 004E8E5B    cmp         dword ptr [ebp-8],0FFFFFFFF
>004E8E5F    jne         004E8E75
 004E8E61    mov         eax,dword ptr [ebp-4]
 004E8E64    mov         eax,dword ptr [eax+5F4];TMPHexEditorEx.?f5F4:Integer
 004E8E6A    mov         edx,dword ptr [ebp-4]
 004E8E6D    mov         dword ptr [edx+610],eax;TMPHexEditorEx.?f610:Integer
>004E8E73    jmp         004E8E81
 004E8E75    mov         eax,dword ptr [ebp-8]
 004E8E78    mov         edx,dword ptr [ebp-4]
 004E8E7B    mov         dword ptr [edx+610],eax;TMPHexEditorEx.?f610:Integer
 004E8E81    mov         eax,dword ptr [ebp-4]
 004E8E84    add         eax,5A0;TMPHexEditorEx.?f5A0:TMPHOffsetFormat
 004E8E89    mov         dword ptr [ebp-0C],eax
 004E8E8C    mov         eax,dword ptr [ebp-0C]
 004E8E8F    test        byte ptr [eax+10],8
>004E8E93    je          004E8EA4
 004E8E95    mov         eax,dword ptr [ebp-0C]
 004E8E98    mov         edx,dword ptr [ebp-4]
 004E8E9B    mov         dl,byte ptr [edx+610];TMPHexEditorEx.?f610:Integer
 004E8EA1    mov         byte ptr [eax+12],dl
 004E8EA4    mov         eax,dword ptr [ebp-4]
 004E8EA7    call        004E025C
 004E8EAC    mov         eax,dword ptr [ebp-4]
 004E8EAF    call        004E89EC
 004E8EB4    mov         eax,dword ptr [ebp-4]
 004E8EB7    mov         edx,dword ptr [eax]
 004E8EB9    call        dword ptr [edx+7C];TMPHexEditorEx.sub_0048BE68
 004E8EBC    xor         eax,eax
 004E8EBE    pop         edx
 004E8EBF    pop         ecx
 004E8EC0    pop         ecx
 004E8EC1    mov         dword ptr fs:[eax],edx
 004E8EC4    push        4E8ED9
 004E8EC9    lea         eax,[ebp-18]
 004E8ECC    call        @LStrClr
 004E8ED1    ret
>004E8ED2    jmp         @HandleFinally
>004E8ED7    jmp         004E8EC9
 004E8ED9    mov         esp,ebp
 004E8EDB    pop         ebp
 004E8EDC    ret
*}
end;

//004E8EE0
procedure TMPHexEditorEx.SetShowPositionIfNotFocused(Value:Boolean);
begin
{*
 004E8EE0    push        ebp
 004E8EE1    mov         ebp,esp
 004E8EE3    add         esp,0FFFFFFF8
 004E8EE6    mov         byte ptr [ebp-5],dl
 004E8EE9    mov         dword ptr [ebp-4],eax
 004E8EEC    mov         eax,dword ptr [ebp-4]
 004E8EEF    mov         al,byte ptr [eax+60C];TMPHexEditorEx.?f60C:byte
 004E8EF5    cmp         al,byte ptr [ebp-5]
>004E8EF8    je          004E8F0E
 004E8EFA    mov         al,byte ptr [ebp-5]
 004E8EFD    mov         edx,dword ptr [ebp-4]
 004E8F00    mov         byte ptr [edx+60C],al;TMPHexEditorEx.?f60C:byte
 004E8F06    mov         eax,dword ptr [ebp-4]
 004E8F09    mov         edx,dword ptr [eax]
 004E8F0B    call        dword ptr [edx+7C];TMPHexEditorEx.sub_0048BE68
 004E8F0E    pop         ecx
 004E8F0F    pop         ecx
 004E8F10    pop         ebp
 004E8F11    ret
*}
end;

//004E8F14
{*function sub_004E8F14(?:TCustomMPHexEditor; ?:?):?;
begin
 004E8F14    push        ebp
 004E8F15    mov         ebp,esp
 004E8F17    add         esp,0FFFFFFF4
 004E8F1A    mov         dword ptr [ebp-8],edx
 004E8F1D    mov         dword ptr [ebp-4],eax
 004E8F20    mov         ecx,1
 004E8F25    mov         edx,dword ptr [ebp-8]
 004E8F28    mov         eax,dword ptr [ebp-4]
 004E8F2B    call        004E94BC
 004E8F30    mov         al,byte ptr [eax]
 004E8F32    mov         byte ptr [ebp-9],al
 004E8F35    mov         al,byte ptr [ebp-9]
 004E8F38    mov         esp,ebp
 004E8F3A    pop         ebp
 004E8F3B    ret
end;*}

//004E8F3C
{*procedure sub_004E8F3C(?:TCustomMPHexEditor; ?:?; ?:?);
begin
 004E8F3C    push        ebp
 004E8F3D    mov         ebp,esp
 004E8F3F    add         esp,0FFFFFFF4
 004E8F42    mov         byte ptr [ebp-9],cl
 004E8F45    mov         dword ptr [ebp-8],edx
 004E8F48    mov         dword ptr [ebp-4],eax
 004E8F4B    mov         ecx,1
 004E8F50    mov         edx,dword ptr [ebp-8]
 004E8F53    mov         eax,dword ptr [ebp-4]
 004E8F56    call        004E94BC
 004E8F5B    mov         dl,byte ptr [ebp-9]
 004E8F5E    mov         byte ptr [eax],dl
 004E8F60    mov         eax,dword ptr [ebp-4]
 004E8F63    mov         edx,dword ptr [eax]
 004E8F65    call        dword ptr [edx+0EC];TCustomMPHexEditor.sub_004E87E8
 004E8F6B    mov         esp,ebp
 004E8F6D    pop         ebp
 004E8F6E    ret
end;*}

//004E8F70
{*procedure sub_004E8F70(?:TCustomMPHexEditor; ?:?; ?:?; ?:?);
begin
 004E8F70    push        ebp
 004E8F71    mov         ebp,esp
 004E8F73    add         esp,0FFFFFFF4
 004E8F76    mov         dword ptr [ebp-0C],ecx
 004E8F79    mov         dword ptr [ebp-8],edx
 004E8F7C    mov         dword ptr [ebp-4],eax
 004E8F7F    mov         ecx,dword ptr [ebp+8]
 004E8F82    mov         edx,dword ptr [ebp-0C]
 004E8F85    mov         eax,dword ptr [ebp-4]
 004E8F88    call        004E94BC
 004E8F8D    mov         edx,dword ptr [ebp-8]
 004E8F90    mov         ecx,dword ptr [ebp+8]
 004E8F93    call        Move
 004E8F98    mov         esp,ebp
 004E8F9A    pop         ebp
 004E8F9B    ret         4
end;*}

//004E8FA0
{*procedure sub_004E8FA0(?:?; ?:?; ?:?);
begin
 004E8FA0    push        ebp
 004E8FA1    mov         ebp,esp
 004E8FA3    add         esp,0FFFFFFF4
 004E8FA6    mov         dword ptr [ebp-0C],ecx
 004E8FA9    mov         dword ptr [ebp-8],edx
 004E8FAC    mov         dword ptr [ebp-4],eax
 004E8FAF    mov         ecx,dword ptr [ebp+8]
 004E8FB2    mov         edx,dword ptr [ebp-0C]
 004E8FB5    mov         eax,dword ptr [ebp-4]
 004E8FB8    call        004E94BC
 004E8FBD    mov         edx,eax
 004E8FBF    mov         eax,dword ptr [ebp-8]
 004E8FC2    mov         ecx,dword ptr [ebp+8]
 004E8FC5    call        Move
 004E8FCA    mov         eax,dword ptr [ebp-4]
 004E8FCD    mov         edx,dword ptr [eax]
 004E8FCF    call        dword ptr [edx+0EC];TCustomMPHexEditor.sub_004E87E8
 004E8FD5    mov         esp,ebp
 004E8FD7    pop         ebp
 004E8FD8    ret         4
end;*}

//004E8FDC
procedure sub_004E8FDC;
begin
{*
 004E8FDC    push        ebp
 004E8FDD    mov         ebp,esp
 004E8FDF    push        ecx
 004E8FE0    push        ebx
 004E8FE1    mov         dword ptr [ebp-4],eax
 004E8FE4    mov         eax,dword ptr [ebp-4]
 004E8FE7    cmp         word ptr [eax+652],0;TCustomMPHexEditor.?f652:word
>004E8FEF    je          004E9003
 004E8FF1    mov         ebx,dword ptr [ebp-4]
 004E8FF4    mov         edx,dword ptr [ebp-4]
 004E8FF7    mov         eax,dword ptr [ebx+654];TCustomMPHexEditor.?f654:dword
 004E8FFD    call        dword ptr [ebx+650]
 004E9003    pop         ebx
 004E9004    pop         ecx
 004E9005    pop         ebp
 004E9006    ret
*}
end;

//004E9008
{*procedure sub_004E9008(?:TMPHexEditorEx; ?:?; ?:dword);
begin
 004E9008    push        ebp
 004E9009    mov         ebp,esp
 004E900B    add         esp,0FFFFFFF4
 004E900E    mov         dword ptr [ebp-0C],ecx
 004E9011    mov         dword ptr [ebp-8],edx
 004E9014    mov         dword ptr [ebp-4],eax
 004E9017    mov         ecx,dword ptr [ebp-0C]
 004E901A    mov         edx,dword ptr [ebp-8]
 004E901D    mov         eax,dword ptr [ebp-4]
 004E9020    call        004DD650
 004E9025    mov         eax,dword ptr [ebp-4]
 004E9028    call        004E9B18
 004E902D    mov         esp,ebp
 004E902F    pop         ebp
 004E9030    ret
end;*}

//004E9034
procedure TMPHexEditorEx.SetUnicodeChars(Value:Boolean);
begin
{*
 004E9034    push        ebp
 004E9035    mov         ebp,esp
 004E9037    xor         ecx,ecx
 004E9039    push        ecx
 004E903A    push        ecx
 004E903B    push        ecx
 004E903C    push        ecx
 004E903D    push        ecx
 004E903E    mov         byte ptr [ebp-5],dl
 004E9041    mov         dword ptr [ebp-4],eax
 004E9044    xor         eax,eax
 004E9046    push        ebp
 004E9047    push        4E9197
 004E904C    push        dword ptr fs:[eax]
 004E904F    mov         dword ptr fs:[eax],esp
 004E9052    mov         eax,dword ptr [ebp-4]
 004E9055    mov         al,byte ptr [eax+61C];TMPHexEditorEx.?f61C:byte
 004E905B    cmp         al,byte ptr [ebp-5]
>004E905E    je          004E917C
 004E9064    cmp         byte ptr [ebp-5],0
>004E9068    je          004E9124
 004E906E    mov         eax,dword ptr [ebp-4]
 004E9071    mov         eax,dword ptr [eax+4D4];TMPHexEditorEx.?f4D4:Integer
 004E9077    and         eax,80000001
>004E907C    jns         004E9083
 004E907E    dec         eax
 004E907F    or          eax,0FFFFFFFE
 004E9082    inc         eax
 004E9083    test        eax,eax
>004E9085    je          004E90A8
 004E9087    lea         edx,[ebp-0C]
 004E908A    mov         eax,4DF31C;^HInstance:LongWord
 004E908F    call        LoadResString
 004E9094    mov         ecx,dword ptr [ebp-0C]
 004E9097    mov         dl,1
 004E9099    mov         eax,[004DE8FC];EMPHexEditor
 004E909E    call        Exception.Create;EMPHexEditor.Create
 004E90A3    call        @RaiseExcept
 004E90A8    mov         eax,dword ptr [ebp-4]
 004E90AB    call        TMPHexEditorEx.GetBytesPerColumn
 004E90B0    and         eax,80000001
>004E90B5    jns         004E90BC
 004E90B7    dec         eax
 004E90B8    or          eax,0FFFFFFFE
 004E90BB    inc         eax
 004E90BC    test        eax,eax
>004E90BE    je          004E90E1
 004E90C0    lea         edx,[ebp-10]
 004E90C3    mov         eax,4DF324;^HInstance:LongWord
 004E90C8    call        LoadResString
 004E90CD    mov         ecx,dword ptr [ebp-10]
 004E90D0    mov         dl,1
 004E90D2    mov         eax,[004DE8FC];EMPHexEditor
 004E90D7    call        Exception.Create;EMPHexEditor.Create
 004E90DC    call        @RaiseExcept
 004E90E1    mov         eax,dword ptr [ebp-4]
 004E90E4    call        004E0588
 004E90E9    and         eax,80000001
>004E90EE    jns         004E90F5
 004E90F0    dec         eax
 004E90F1    or          eax,0FFFFFFFE
 004E90F4    inc         eax
 004E90F5    test        eax,eax
>004E90F7    je          004E911A
 004E90F9    lea         edx,[ebp-14]
 004E90FC    mov         eax,4DF37C;^HInstance:LongWord
 004E9101    call        LoadResString
 004E9106    mov         ecx,dword ptr [ebp-14]
 004E9109    mov         dl,1
 004E910B    mov         eax,[004DE8FC];EMPHexEditor
 004E9110    call        Exception.Create;EMPHexEditor.Create
 004E9115    call        @RaiseExcept
 004E911A    mov         eax,dword ptr [ebp-4]
 004E911D    mov         byte ptr [eax+55C],0;TMPHexEditorEx.?f55C:byte
 004E9124    mov         al,byte ptr [ebp-5]
 004E9127    mov         edx,dword ptr [ebp-4]
 004E912A    mov         byte ptr [edx+61C],al;TMPHexEditorEx.?f61C:byte
 004E9130    mov         eax,dword ptr [ebp-4]
 004E9133    call        004E56E8
 004E9138    mov         edx,eax
 004E913A    mov         eax,dword ptr [ebp-4]
 004E913D    call        004DD5D0
 004E9142    cmp         byte ptr [ebp-5],0
>004E9146    je          004E9157
 004E9148    mov         edx,2
 004E914D    mov         eax,dword ptr [ebp-4]
 004E9150    call        TMPHexEditorEx.SetBytesPerUnit
>004E9155    jmp         004E9164
 004E9157    mov         edx,1
 004E915C    mov         eax,dword ptr [ebp-4]
 004E915F    call        TMPHexEditorEx.SetBytesPerUnit
 004E9164    mov         eax,dword ptr [ebp-4]
 004E9167    call        004E0AC0
 004E916C    mov         eax,dword ptr [ebp-4]
 004E916F    call        004E89EC
 004E9174    mov         eax,dword ptr [ebp-4]
 004E9177    mov         edx,dword ptr [eax]
 004E9179    call        dword ptr [edx+7C];TMPHexEditorEx.sub_0048BE68
 004E917C    xor         eax,eax
 004E917E    pop         edx
 004E917F    pop         ecx
 004E9180    pop         ecx
 004E9181    mov         dword ptr fs:[eax],edx
 004E9184    push        4E919E
 004E9189    lea         eax,[ebp-14]
 004E918C    mov         edx,3
 004E9191    call        @LStrArrayClr
 004E9196    ret
>004E9197    jmp         @HandleFinally
>004E919C    jmp         004E9189
 004E919E    mov         esp,ebp
 004E91A0    pop         ebp
 004E91A1    ret
*}
end;

//004E91A4
procedure TMPHexEditorEx.SetUnicodeBigEndian(Value:Boolean);
begin
{*
 004E91A4    push        ebp
 004E91A5    mov         ebp,esp
 004E91A7    add         esp,0FFFFFFF8
 004E91AA    mov         byte ptr [ebp-5],dl
 004E91AD    mov         dword ptr [ebp-4],eax
 004E91B0    mov         eax,dword ptr [ebp-4]
 004E91B3    mov         al,byte ptr [eax+61D];TMPHexEditorEx.?f61D:byte
 004E91B9    cmp         al,byte ptr [ebp-5]
>004E91BC    je          004E91DE
 004E91BE    mov         al,byte ptr [ebp-5]
 004E91C1    mov         edx,dword ptr [ebp-4]
 004E91C4    mov         byte ptr [edx+61D],al;TMPHexEditorEx.?f61D:byte
 004E91CA    mov         eax,dword ptr [ebp-4]
 004E91CD    cmp         byte ptr [eax+61C],0;TMPHexEditorEx.?f61C:byte
>004E91D4    je          004E91DE
 004E91D6    mov         eax,dword ptr [ebp-4]
 004E91D9    mov         edx,dword ptr [eax]
 004E91DB    call        dword ptr [edx+7C];TMPHexEditorEx.sub_0048BE68
 004E91DE    pop         ecx
 004E91DF    pop         ecx
 004E91E0    pop         ebp
 004E91E1    ret
*}
end;

//004E91E4
{*function sub_004E91E4(?:TCustomMPHexEditor):?;
begin
 004E91E4    push        ebp
 004E91E5    mov         ebp,esp
 004E91E7    add         esp,0FFFFFFF8
 004E91EA    mov         dword ptr [ebp-4],eax
 004E91ED    mov         eax,dword ptr [ebp-4]
 004E91F0    cmp         byte ptr [eax+67C],0;TCustomMPHexEditor.?f67C:byte
>004E91F7    je          004E91FF
 004E91F9    mov         byte ptr [ebp-5],0
>004E91FD    jmp         004E920B
 004E91FF    mov         eax,dword ptr [ebp-4]
 004E9202    mov         al,byte ptr [eax+4B8];TCustomMPHexEditor.?f4B8:byte
 004E9208    mov         byte ptr [ebp-5],al
 004E920B    mov         al,byte ptr [ebp-5]
 004E920E    pop         ecx
 004E920F    pop         ecx
 004E9210    pop         ebp
 004E9211    ret
end;*}

//004E9214
{*function sub_004E9214(?:TMPHexEditorEx):?;
begin
 004E9214    push        ebp
 004E9215    mov         ebp,esp
 004E9217    add         esp,0FFFFFFF8
 004E921A    mov         dword ptr [ebp-4],eax
 004E921D    mov         eax,dword ptr [ebp-4]
 004E9220    call        004E91E4
 004E9225    test        al,al
>004E9227    jne         004E9241
 004E9229    mov         eax,dword ptr [ebp-4]
 004E922C    cmp         byte ptr [eax+55F],0;TMPHexEditorEx.?f55F:byte
>004E9233    je          004E9241
 004E9235    mov         eax,dword ptr [ebp-4]
 004E9238    cmp         byte ptr [eax+561],0;TMPHexEditorEx.?f561:byte
>004E923F    je          004E9245
 004E9241    xor         eax,eax
>004E9243    jmp         004E9247
 004E9245    mov         al,1
 004E9247    mov         byte ptr [ebp-5],al
 004E924A    mov         al,byte ptr [ebp-5]
 004E924D    pop         ecx
 004E924E    pop         ecx
 004E924F    pop         ebp
 004E9250    ret
end;*}

//004E9254
{*function sub_004E9254(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?):?;
begin
 004E9254    push        ebp
 004E9255    mov         ebp,esp
 004E9257    add         esp,0FFFFFFE0
 004E925A    push        ebx
 004E925B    mov         dword ptr [ebp-0C],ecx
 004E925E    mov         dword ptr [ebp-8],edx
 004E9261    mov         dword ptr [ebp-4],eax
 004E9264    mov         eax,dword ptr [ebp-4]
 004E9267    call        004E0588
 004E926C    mov         dword ptr [ebp-18],eax
 004E926F    mov         eax,dword ptr [ebp-4]
 004E9272    call        004E409C
 004E9277    mov         byte ptr [ebp-11],al
 004E927A    mov         eax,dword ptr [ebp-18]
 004E927D    sub         eax,dword ptr [ebp-0C]
 004E9280    cmp         eax,dword ptr [ebp+14]
>004E9283    jge         004E929F
 004E9285    mov         eax,dword ptr [ebp+10]
 004E9288    cmp         eax,dword ptr [ebp+14]
>004E928B    jne         004E9296
 004E928D    mov         eax,dword ptr [ebp-18]
 004E9290    sub         eax,dword ptr [ebp-0C]
 004E9293    mov         dword ptr [ebp+10],eax
 004E9296    mov         eax,dword ptr [ebp-18]
 004E9299    sub         eax,dword ptr [ebp-0C]
 004E929C    mov         dword ptr [ebp+14],eax
 004E929F    mov         eax,dword ptr [ebp-4]
 004E92A2    call        004E91E4
 004E92A7    test        al,al
>004E92A9    je          004E92C1
 004E92AB    mov         eax,dword ptr [ebp+14]
 004E92AE    cmp         eax,dword ptr [ebp+10]
>004E92B1    jge         004E92BB
 004E92B3    mov         eax,dword ptr [ebp+14]
 004E92B6    mov         dword ptr [ebp+10],eax
>004E92B9    jmp         004E92C1
 004E92BB    mov         eax,dword ptr [ebp+10]
 004E92BE    mov         dword ptr [ebp+14],eax
 004E92C1    mov         eax,dword ptr [ebp+10]
 004E92C4    push        eax
 004E92C5    mov         eax,dword ptr [ebp+14]
 004E92C8    push        eax
 004E92C9    mov         eax,dword ptr [ebp+0C]
 004E92CC    push        eax
 004E92CD    mov         ecx,dword ptr [ebp-0C]
 004E92D0    mov         dl,3
 004E92D2    mov         eax,dword ptr [ebp-4]
 004E92D5    call        004E3CA4
 004E92DA    cmp         byte ptr [ebp+8],0
>004E92DE    jne         004E9303
 004E92E0    mov         eax,dword ptr [ebp-4]
 004E92E3    mov         eax,dword ptr [eax+618]
 004E92E9    cmp         dword ptr [eax+18],0
>004E92ED    jne         004E9303
 004E92EF    mov         ecx,dword ptr [ebp+14]
 004E92F2    mov         edx,dword ptr [ebp-0C]
 004E92F5    mov         eax,dword ptr [ebp-4]
 004E92F8    mov         eax,dword ptr [eax+618]
 004E92FE    call        004EC014
 004E9303    mov         eax,dword ptr [ebp+14]
 004E9306    cmp         eax,dword ptr [ebp+10]
>004E9309    jne         004E9322
 004E930B    mov         eax,dword ptr [ebp+14]
 004E930E    push        eax
 004E930F    mov         edx,dword ptr [ebp-8]
 004E9312    mov         ecx,dword ptr [ebp-0C]
 004E9315    mov         eax,dword ptr [ebp-4]
 004E9318    mov         ebx,dword ptr [eax]
 004E931A    call        dword ptr [ebx+10C]
>004E9320    jmp         004E9392
 004E9322    mov         eax,dword ptr [ebp+14]
 004E9325    cmp         eax,dword ptr [ebp+10]
>004E9328    jle         004E9369
 004E932A    mov         eax,dword ptr [ebp-4]
 004E932D    mov         eax,dword ptr [eax+228]
 004E9333    push        eax
 004E9334    mov         eax,dword ptr [ebp-4]
 004E9337    mov         eax,dword ptr [eax+22C]
 004E933D    push        eax
 004E933E    mov         ecx,dword ptr [ebp+14]
 004E9341    sub         ecx,dword ptr [ebp+10]
 004E9344    add         ecx,dword ptr [ebp-0C]
 004E9347    mov         edx,dword ptr [ebp-0C]
 004E934A    mov         eax,dword ptr [ebp-4]
 004E934D    call        004E3AE0
 004E9352    mov         eax,dword ptr [ebp+10]
 004E9355    push        eax
 004E9356    mov         edx,dword ptr [ebp-8]
 004E9359    mov         ecx,dword ptr [ebp-0C]
 004E935C    mov         eax,dword ptr [ebp-4]
 004E935F    mov         ebx,dword ptr [eax]
 004E9361    call        dword ptr [ebx+10C]
>004E9367    jmp         004E9392
 004E9369    mov         eax,dword ptr [ebp-0C]
 004E936C    push        eax
 004E936D    mov         ecx,dword ptr [ebp+10]
 004E9370    sub         ecx,dword ptr [ebp+14]
 004E9373    xor         edx,edx
 004E9375    mov         eax,dword ptr [ebp-4]
 004E9378    call        004E45C4
 004E937D    mov         eax,dword ptr [ebp+10]
 004E9380    push        eax
 004E9381    mov         edx,dword ptr [ebp-8]
 004E9384    mov         ecx,dword ptr [ebp-0C]
 004E9387    mov         eax,dword ptr [ebp-4]
 004E938A    mov         ebx,dword ptr [eax]
 004E938C    call        dword ptr [ebx+10C]
 004E9392    mov         eax,dword ptr [ebp+10]
 004E9395    mov         dword ptr [ebp-10],eax
 004E9398    mov         eax,dword ptr [ebp-4]
 004E939B    mov         eax,dword ptr [eax+4F8]
 004E93A1    mov         eax,dword ptr [eax+4]
 004E93A4    cmp         eax,dword ptr [ebp-0C]
>004E93A7    jl          004E93C3
 004E93A9    mov         edx,dword ptr [ebp-0C]
 004E93AC    xor         eax,eax
 004E93AE    call        004DF5E8
 004E93B3    mov         edx,eax
 004E93B5    mov         eax,dword ptr [ebp-4]
 004E93B8    mov         eax,dword ptr [eax+4F8]
 004E93BE    call        TBits.SetSize
 004E93C3    cmp         byte ptr [ebp+8],0
>004E93C7    je          004E93ED
 004E93C9    lea         eax,[ebp-20]
 004E93CC    push        eax
 004E93CD    mov         cl,byte ptr [ebp-11]
 004E93D0    mov         edx,dword ptr [ebp-0C]
 004E93D3    mov         eax,dword ptr [ebp-4]
 004E93D6    call        004E1344
 004E93DB    push        1
 004E93DD    push        1
 004E93DF    mov         ecx,dword ptr [ebp-1C]
 004E93E2    mov         edx,dword ptr [ebp-20]
 004E93E5    mov         eax,dword ptr [ebp-4]
 004E93E8    call        004D8CCC
 004E93ED    mov         eax,dword ptr [ebp-4]
 004E93F0    mov         edx,dword ptr [eax]
 004E93F2    call        dword ptr [edx+7C]
 004E93F5    mov         eax,dword ptr [ebp-4]
 004E93F8    mov         edx,dword ptr [eax]
 004E93FA    call        dword ptr [edx+0EC]
 004E9400    mov         eax,dword ptr [ebp-10]
 004E9403    pop         ebx
 004E9404    mov         esp,ebp
 004E9406    pop         ebp
 004E9407    ret         10
end;*}

//004E940C
{*function sub_004E940C(?:TCustomMPHexEditor; ?:?):?;
begin
 004E940C    push        ebp
 004E940D    mov         ebp,esp
 004E940F    add         esp,0FFFFFFE8
 004E9412    mov         dword ptr [ebp-8],edx
 004E9415    mov         dword ptr [ebp-4],eax
 004E9418    mov         byte ptr [ebp-9],0
 004E941C    mov         eax,dword ptr [ebp-8]
 004E941F    mov         edx,dword ptr [ebp-4]
 004E9422    cmp         dword ptr [edx+eax*8+4FC],0FFFFFFFF
>004E942A    jle         004E94B4
 004E9430    mov         dl,1
 004E9432    mov         eax,dword ptr [ebp-4]
 004E9435    call        004E31CC
 004E943A    mov         eax,dword ptr [ebp-8]
 004E943D    mov         edx,dword ptr [ebp-4]
 004E9440    mov         eax,dword ptr [edx+eax*8+4FC]
 004E9447    mov         dword ptr [ebp-10],eax
 004E944A    mov         eax,dword ptr [ebp-4]
 004E944D    call        004E0588
 004E9452    cmp         eax,dword ptr [ebp-10]
>004E9455    jg          004E9470
 004E9457    mov         eax,dword ptr [ebp-4]
 004E945A    call        004E0588
 004E945F    cmp         eax,dword ptr [ebp-10]
>004E9462    jne         004E94A4
 004E9464    mov         eax,dword ptr [ebp-4]
 004E9467    call        TMPHexEditorEx.GetInsertMode
 004E946C    test        al,al
>004E946E    je          004E94A4
 004E9470    lea         eax,[ebp-18]
 004E9473    push        eax
 004E9474    mov         eax,dword ptr [ebp-8]
 004E9477    mov         edx,dword ptr [ebp-4]
 004E947A    mov         cl,byte ptr [edx+eax*8+500]
 004E9481    mov         edx,dword ptr [ebp-10]
 004E9484    mov         eax,dword ptr [ebp-4]
 004E9487    call        004E1344
 004E948C    push        1
 004E948E    push        1
 004E9490    mov         ecx,dword ptr [ebp-14]
 004E9493    mov         edx,dword ptr [ebp-18]
 004E9496    mov         eax,dword ptr [ebp-4]
 004E9499    call        004D8CCC
 004E949E    mov         byte ptr [ebp-9],1
>004E94A2    jmp         004E94B4
 004E94A4    push        0
 004E94A6    mov         dl,byte ptr [ebp-8]
 004E94A9    or          ecx,0FFFFFFFF
 004E94AC    mov         eax,dword ptr [ebp-4]
 004E94AF    call        004E6780
 004E94B4    mov         al,byte ptr [ebp-9]
 004E94B7    mov         esp,ebp
 004E94B9    pop         ebp
 004E94BA    ret
end;*}

//004E94BC
{*function sub_004E94BC(?:TCustomMPHexEditor; ?:?; ?:?):?;
begin
 004E94BC    push        ebp
 004E94BD    mov         ebp,esp
 004E94BF    add         esp,0FFFFFFF0
 004E94C2    mov         dword ptr [ebp-0C],ecx
 004E94C5    mov         dword ptr [ebp-8],edx
 004E94C8    mov         dword ptr [ebp-4],eax
 004E94CB    mov         ecx,dword ptr [ebp-0C]
 004E94CE    mov         edx,dword ptr [ebp-8]
 004E94D1    mov         eax,dword ptr [ebp-4]
 004E94D4    mov         eax,dword ptr [eax+4E0];TCustomMPHexEditor.?f4E0:TMPHMemoryStream
 004E94DA    call        004EC2DC
 004E94DF    mov         dword ptr [ebp-10],eax
 004E94E2    mov         eax,dword ptr [ebp-10]
 004E94E5    mov         esp,ebp
 004E94E7    pop         ebp
 004E94E8    ret
end;*}

//004E94EC
{*procedure sub_004E94EC(?:?);
begin
 004E94EC    push        ebp
 004E94ED    mov         ebp,esp
 004E94EF    add         esp,0FFFFFFF4
 004E94F2    mov         dword ptr [ebp-4],eax
 004E94F5    mov         eax,dword ptr [ebp-4]
 004E94F8    call        004E409C
 004E94FD    mov         eax,dword ptr [ebp-4]
 004E9500    call        TMPHexEditorEx.GetInsertMode
 004E9505    test        al,al
>004E9507    jne         004E952B
 004E9509    lea         eax,[ebp-0C]
 004E950C    push        eax
 004E950D    mov         eax,dword ptr [ebp-4]
 004E9510    call        004E0588
 004E9515    mov         edx,eax
 004E9517    dec         edx
 004E9518    mov         eax,dword ptr [ebp-4]
 004E951B    mov         cl,byte ptr [eax+4F0]
 004E9521    mov         eax,dword ptr [ebp-4]
 004E9524    call        004E1344
>004E9529    jmp         004E954A
 004E952B    lea         eax,[ebp-0C]
 004E952E    push        eax
 004E952F    mov         eax,dword ptr [ebp-4]
 004E9532    call        004E0588
 004E9537    mov         edx,eax
 004E9539    mov         eax,dword ptr [ebp-4]
 004E953C    mov         cl,byte ptr [eax+4F0]
 004E9542    mov         eax,dword ptr [ebp-4]
 004E9545    call        004E1344
 004E954A    push        1
 004E954C    push        1
 004E954E    mov         ecx,dword ptr [ebp-8]
 004E9551    mov         edx,dword ptr [ebp-0C]
 004E9554    mov         eax,dword ptr [ebp-4]
 004E9557    call        004D8CCC
 004E955C    mov         esp,ebp
 004E955E    pop         ebp
 004E955F    ret
end;*}

//004E9560
{*function sub_004E9560(?:?; ?:?; ?:?):?;
begin
 004E9560    push        ebp
 004E9561    mov         ebp,esp
 004E9563    add         esp,0FFFFFFF0
 004E9566    mov         dword ptr [ebp-0C],ecx
 004E9569    mov         byte ptr [ebp-5],dl
 004E956C    mov         dword ptr [ebp-4],eax
 004E956F    mov         byte ptr [ebp-0D],0
 004E9573    mov         eax,dword ptr [ebp-4]
 004E9576    call        004E0588
 004E957B    test        eax,eax
>004E957D    jle         004E9583
 004E957F    mov         byte ptr [ebp-0D],1
 004E9583    cmp         byte ptr [ebp-0D],0
>004E9587    jne         004E959C
 004E9589    mov         al,byte ptr [ebp-5]
 004E958C    sub         al,2
>004E958E    je          004E9598
 004E9590    sub         al,2
>004E9592    je          004E9598
 004E9594    sub         al,6
>004E9596    jne         004E959C
 004E9598    mov         byte ptr [ebp-0D],1
 004E959C    mov         eax,dword ptr [ebp-4]
 004E959F    call        004E91E4
 004E95A4    and         al,byte ptr [ebp-0D]
>004E95A7    je          004E95C8
 004E95A9    mov         al,byte ptr [ebp-5]
 004E95AC    dec         eax
 004E95AD    sub         al,2
>004E95AF    jb          004E95C4
 004E95B1    dec         eax
 004E95B2    sub         al,3
>004E95B4    jb          004E95C4
 004E95B6    cmp         byte ptr [ebp-5],3
>004E95BA    jne         004E95C8
 004E95BC    mov         eax,dword ptr [ebp-0C]
 004E95BF    cmp         eax,dword ptr [ebp+8]
>004E95C2    je          004E95C8
 004E95C4    mov         byte ptr [ebp-0D],0
 004E95C8    cmp         byte ptr [ebp-0D],0
>004E95CC    jne         004E95E9
 004E95CE    cmp         byte ptr [ebp-5],9
>004E95D2    jne         004E95E9
 004E95D4    mov         eax,dword ptr [ebp-4]
 004E95D7    mov         eax,dword ptr [eax+618];TCustomMPHexEditor.?f618:TMPHUndoStorage
 004E95DD    mov         eax,dword ptr [eax+14];TMPHUndoStorage.?f14:dword
 004E95E0    cmp         eax,dword ptr [ebp-0C]
>004E95E3    jl          004E95E9
 004E95E5    mov         byte ptr [ebp-0D],1
 004E95E9    mov         al,byte ptr [ebp-0D]
 004E95EC    mov         esp,ebp
 004E95EE    pop         ebp
 004E95EF    ret         4
end;*}

//004E95F4
{*procedure sub_004E95F4(?:TMPHexEditorEx; ?:?);
begin
 004E95F4    push        ebp
 004E95F5    mov         ebp,esp
 004E95F7    add         esp,0FFFFFFE4
 004E95FA    xor         ecx,ecx
 004E95FC    mov         dword ptr [ebp-1C],ecx
 004E95FF    mov         dword ptr [ebp-8],edx
 004E9602    mov         dword ptr [ebp-4],eax
 004E9605    xor         eax,eax
 004E9607    push        ebp
 004E9608    push        4E97C0
 004E960D    push        dword ptr fs:[eax]
 004E9610    mov         dword ptr fs:[eax],esp
 004E9613    mov         eax,dword ptr [ebp-4]
 004E9616    call        004E0588
 004E961B    mov         dword ptr [ebp-10],eax
 004E961E    mov         eax,dword ptr [ebp-8]
 004E9621    cmp         eax,dword ptr [ebp-10]
>004E9624    je          004E97AA
 004E962A    mov         eax,dword ptr [ebp-4]
 004E962D    call        004E4A74
 004E9632    mov         dword ptr [ebp-0C],eax
 004E9635    cmp         dword ptr [ebp-8],0
>004E9639    je          004E966E
 004E963B    cmp         dword ptr [ebp-10],0
>004E963F    je          004E966E
 004E9641    mov         eax,dword ptr [ebp-4]
 004E9644    call        004E91E4
 004E9649    test        al,al
>004E964B    je          004E966E
 004E964D    lea         edx,[ebp-1C]
 004E9650    mov         eax,4DF384;^HInstance:LongWord
 004E9655    call        LoadResString
 004E965A    mov         ecx,dword ptr [ebp-1C]
 004E965D    mov         dl,1
 004E965F    mov         eax,[004DE8FC];EMPHexEditor
 004E9664    call        Exception.Create;EMPHexEditor.Create
 004E9669    call        @RaiseExcept
 004E966E    mov         eax,dword ptr [ebp-4]
 004E9671    mov         byte ptr [eax+67C],1
 004E9678    xor         eax,eax
 004E967A    push        ebp
 004E967B    push        4E97A3
 004E9680    push        dword ptr fs:[eax]
 004E9683    mov         dword ptr fs:[eax],esp
 004E9686    mov         eax,dword ptr [ebp-8]
 004E9689    cmp         eax,dword ptr [ebp-10]
>004E968C    jge         004E96AD
 004E968E    mov         eax,dword ptr [ebp-4]
 004E9691    call        004E0588
 004E9696    sub         eax,dword ptr [ebp-8]
 004E9699    push        eax
 004E969A    push        0
 004E969C    push        0
 004E969E    mov         ecx,dword ptr [ebp-8]
 004E96A1    mov         dl,1
 004E96A3    mov         eax,dword ptr [ebp-4]
 004E96A6    call        004E3CA4
>004E96AB    jmp         004E96D3
 004E96AD    mov         eax,dword ptr [ebp-4]
 004E96B0    call        004E0588
 004E96B5    mov         edx,dword ptr [ebp-8]
 004E96B8    sub         edx,eax
 004E96BA    push        edx
 004E96BB    push        0
 004E96BD    push        0
 004E96BF    mov         eax,dword ptr [ebp-4]
 004E96C2    call        004E0588
 004E96C7    mov         ecx,eax
 004E96C9    mov         dl,4
 004E96CB    mov         eax,dword ptr [ebp-4]
 004E96CE    call        004E3CA4
 004E96D3    mov         eax,dword ptr [ebp-8]
 004E96D6    cdq
 004E96D7    push        edx
 004E96D8    push        eax
 004E96D9    mov         eax,dword ptr [ebp-4]
 004E96DC    mov         eax,dword ptr [eax+4E0]
 004E96E2    call        004235FC
 004E96E7    mov         eax,dword ptr [ebp-8]
 004E96EA    cmp         eax,dword ptr [ebp-10]
>004E96ED    jle         004E9716
 004E96EF    mov         ecx,dword ptr [ebp-8]
 004E96F2    sub         ecx,dword ptr [ebp-10]
 004E96F5    mov         edx,dword ptr [ebp-10]
 004E96F8    mov         eax,dword ptr [ebp-4]
 004E96FB    call        004E94BC
 004E9700    mov         edx,dword ptr [ebp-4]
 004E9703    xor         ecx,ecx
 004E9705    mov         cl,byte ptr [edx+670]
 004E970B    mov         edx,dword ptr [ebp-8]
 004E970E    sub         edx,dword ptr [ebp-10]
 004E9711    call        @FillChar
 004E9716    mov         eax,dword ptr [ebp-4]
 004E9719    mov         byte ptr [eax+67D],1
 004E9720    mov         eax,dword ptr [ebp-4]
 004E9723    call        004E0AC0
 004E9728    mov         eax,dword ptr [ebp-4]
 004E972B    call        004E0588
 004E9730    cmp         eax,dword ptr [ebp-0C]
>004E9733    jge         004E978B
 004E9735    mov         dl,1
 004E9737    mov         eax,dword ptr [ebp-4]
 004E973A    call        004E31CC
 004E973F    mov         eax,dword ptr [ebp-4]
 004E9742    call        004E0588
 004E9747    test        eax,eax
>004E9749    jne         004E9783
 004E974B    mov         eax,dword ptr [ebp-4]
 004E974E    call        TMPHexEditorEx.GetInsertMode
 004E9753    test        al,al
>004E9755    jne         004E9783
 004E9757    lea         eax,[ebp-18]
 004E975A    push        eax
 004E975B    mov         eax,dword ptr [ebp-4]
 004E975E    call        004E409C
 004E9763    mov         ecx,eax
 004E9765    xor         edx,edx
 004E9767    mov         eax,dword ptr [ebp-4]
 004E976A    call        004E1344
 004E976F    push        1
 004E9771    push        1
 004E9773    mov         ecx,dword ptr [ebp-14]
 004E9776    mov         edx,dword ptr [ebp-18]
 004E9779    mov         eax,dword ptr [ebp-4]
 004E977C    call        004D8CCC
>004E9781    jmp         004E978B
 004E9783    mov         eax,dword ptr [ebp-4]
 004E9786    call        004E94EC
 004E978B    xor         eax,eax
 004E978D    pop         edx
 004E978E    pop         ecx
 004E978F    pop         ecx
 004E9790    mov         dword ptr fs:[eax],edx
 004E9793    push        4E97AA
 004E9798    mov         eax,dword ptr [ebp-4]
 004E979B    mov         byte ptr [eax+67C],0
 004E97A2    ret
>004E97A3    jmp         @HandleFinally
>004E97A8    jmp         004E9798
 004E97AA    xor         eax,eax
 004E97AC    pop         edx
 004E97AD    pop         ecx
 004E97AE    pop         ecx
 004E97AF    mov         dword ptr fs:[eax],edx
 004E97B2    push        4E97C7
 004E97B7    lea         eax,[ebp-1C]
 004E97BA    call        @LStrClr
 004E97BF    ret
>004E97C0    jmp         @HandleFinally
>004E97C5    jmp         004E97B7
 004E97C7    mov         esp,ebp
 004E97C9    pop         ebp
 004E97CA    ret
end;*}

//004E97CC
procedure TMPHexEditorEx.SetBytesPerBlock(Value:Integer);
begin
{*
 004E97CC    push        ebp
 004E97CD    mov         ebp,esp
 004E97CF    add         esp,0FFFFFFF8
 004E97D2    mov         dword ptr [ebp-8],edx
 004E97D5    mov         dword ptr [ebp-4],eax
 004E97D8    mov         eax,dword ptr [ebp-4]
 004E97DB    mov         eax,dword ptr [eax+4A4];TMPHexEditorEx.?f4A4:Integer
 004E97E1    cmp         eax,dword ptr [ebp-8]
>004E97E4    je          004E97FA
 004E97E6    mov         eax,dword ptr [ebp-8]
 004E97E9    mov         edx,dword ptr [ebp-4]
 004E97EC    mov         dword ptr [edx+4A4],eax;TMPHexEditorEx.?f4A4:Integer
 004E97F2    mov         eax,dword ptr [ebp-4]
 004E97F5    call        004E025C
 004E97FA    pop         ecx
 004E97FB    pop         ecx
 004E97FC    pop         ebp
 004E97FD    ret
*}
end;

//004E9800
procedure TMPHexEditorEx.SetSeparateBlocksInCharField(Value:Boolean);
begin
{*
 004E9800    push        ebp
 004E9801    mov         ebp,esp
 004E9803    add         esp,0FFFFFFF8
 004E9806    mov         byte ptr [ebp-5],dl
 004E9809    mov         dword ptr [ebp-4],eax
 004E980C    mov         eax,dword ptr [ebp-4]
 004E980F    mov         al,byte ptr [eax+4A8];TMPHexEditorEx.?f4A8:byte
 004E9815    cmp         al,byte ptr [ebp-5]
>004E9818    je          004E9840
 004E981A    mov         al,byte ptr [ebp-5]
 004E981D    mov         edx,dword ptr [ebp-4]
 004E9820    mov         byte ptr [edx+4A8],al;TMPHexEditorEx.?f4A8:byte
 004E9826    cmp         byte ptr [ebp-5],0
>004E982A    je          004E9840
 004E982C    mov         eax,dword ptr [ebp-4]
 004E982F    cmp         dword ptr [eax+4A4],1;TMPHexEditorEx.?f4A4:Integer
>004E9836    jle         004E9840
 004E9838    mov         eax,dword ptr [ebp-4]
 004E983B    call        004E025C
 004E9840    pop         ecx
 004E9841    pop         ecx
 004E9842    pop         ebp
 004E9843    ret
*}
end;

//004E9844
procedure TMPHexEditorEx.SetFindProgress(Value:Boolean);
begin
{*
 004E9844    push        ebp
 004E9845    mov         ebp,esp
 004E9847    add         esp,0FFFFFFF8
 004E984A    mov         byte ptr [ebp-5],dl
 004E984D    mov         dword ptr [ebp-4],eax
 004E9850    mov         al,byte ptr [ebp-5]
 004E9853    mov         edx,dword ptr [ebp-4]
 004E9856    mov         byte ptr [edx+4A1],al;TMPHexEditorEx.?f4A1:byte
 004E985C    pop         ecx
 004E985D    pop         ecx
 004E985E    pop         ebp
 004E985F    ret
*}
end;

//004E9860
procedure TCustomMPHexEditor.DefineProperties(Filer:TFiler);
begin
{*
 004E9860    push        ebp
 004E9861    mov         ebp,esp
 004E9863    add         esp,0FFFFFFF8
 004E9866    push        ebx
 004E9867    mov         dword ptr [ebp-8],edx
 004E986A    mov         dword ptr [ebp-4],eax
 004E986D    mov         edx,dword ptr [ebp-8]
 004E9870    mov         eax,dword ptr [ebp-4]
 004E9873    call        TCustomGrid.DefineProperties
 004E9878    mov         eax,dword ptr [ebp-4]
 004E987B    push        eax
 004E987C    push        4E98F8
 004E9881    push        0
 004E9883    push        0
 004E9885    xor         ecx,ecx
 004E9887    mov         edx,4E98D0;'MaskChar'
 004E988C    mov         eax,dword ptr [ebp-8]
 004E988F    mov         ebx,dword ptr [eax]
 004E9891    call        dword ptr [ebx+4];@AbstractError
 004E9894    mov         eax,dword ptr [ebp-4]
 004E9897    push        eax
 004E9898    push        4E999C
 004E989D    mov         eax,dword ptr [ebp-4]
 004E98A0    push        eax
 004E98A1    push        4E99F0
 004E98A6    mov         eax,dword ptr [ebp-4]
 004E98A9    cmp         byte ptr [eax+55E],2E;TCustomMPHexEditor.?f55E:byte
 004E98B0    setne       cl
 004E98B3    mov         edx,4E98E4;'MaskChar_AsInteger'
 004E98B8    mov         eax,dword ptr [ebp-8]
 004E98BB    mov         ebx,dword ptr [eax]
 004E98BD    call        dword ptr [ebx+4];@AbstractError
 004E98C0    pop         ebx
 004E98C1    pop         ecx
 004E98C2    pop         ecx
 004E98C3    pop         ebp
 004E98C4    ret
*}
end;

//004E9A14
{*procedure TCustomMPHexEditor.sub_004846B4(?:?; ?:?);
begin
 004E9A14    push        ebp
 004E9A15    mov         ebp,esp
 004E9A17    add         esp,0FFFFFFF0
 004E9A1A    push        esi
 004E9A1B    push        edi
 004E9A1C    mov         esi,ecx
 004E9A1E    lea         edi,[ebp-0D]
 004E9A21    movs        dword ptr [edi],dword ptr [esi]
 004E9A22    movs        dword ptr [edi],dword ptr [esi]
 004E9A23    mov         byte ptr [ebp-5],dl
 004E9A26    mov         dword ptr [ebp-4],eax
 004E9A29    mov         al,[004E9AA0];0x0 gvar_004E9AA0
 004E9A2E    cmp         al,byte ptr [ebp-5]
>004E9A31    je          004E9A46
 004E9A33    lea         ecx,[ebp-0D]
 004E9A36    mov         dl,byte ptr [ebp-5]
 004E9A39    mov         eax,dword ptr [ebp-4]
 004E9A3C    call        TCustomGrid.sub_004846B4
 004E9A41    mov         byte ptr [ebp-0E],al
>004E9A44    jmp         004E9A94
 004E9A46    mov         eax,dword ptr [ebp-4]
 004E9A49    call        004DD53C
 004E9A4E    mov         edx,dword ptr [ebp-4]
 004E9A51    mov         edx,dword ptr [edx+24C];TCustomMPHexEditor.FRowCount:Longint
 004E9A57    sub         edx,eax
 004E9A59    mov         eax,2
 004E9A5E    call        004DF5E8
 004E9A63    push        eax
 004E9A64    mov         eax,dword ptr [ebp-4]
 004E9A67    call        004DD53C
 004E9A6C    mov         edx,eax
 004E9A6E    mov         eax,dword ptr [ebp-4]
 004E9A71    add         edx,dword ptr [eax+25C];TCustomMPHexEditor.FTopLeft:Longint
 004E9A77    dec         edx
 004E9A78    pop         eax
 004E9A79    call        004DF5BC
 004E9A7E    mov         edx,eax
 004E9A80    mov         eax,dword ptr [ebp-4]
 004E9A83    call        004DDBE8
 004E9A88    mov         eax,dword ptr [ebp-4]
 004E9A8B    call        004E9B18
 004E9A90    mov         byte ptr [ebp-0E],1
 004E9A94    mov         al,byte ptr [ebp-0E]
 004E9A97    pop         edi
 004E9A98    pop         esi
 004E9A99    mov         esp,ebp
 004E9A9B    pop         ebp
 004E9A9C    ret
end;*}

//004E9AA4
{*procedure TCustomMPHexEditor.sub_00484704(?:?; ?:?);
begin
 004E9AA4    push        ebp
 004E9AA5    mov         ebp,esp
 004E9AA7    add         esp,0FFFFFFF0
 004E9AAA    push        esi
 004E9AAB    push        edi
 004E9AAC    mov         esi,ecx
 004E9AAE    lea         edi,[ebp-0D]
 004E9AB1    movs        dword ptr [edi],dword ptr [esi]
 004E9AB2    movs        dword ptr [edi],dword ptr [esi]
 004E9AB3    mov         byte ptr [ebp-5],dl
 004E9AB6    mov         dword ptr [ebp-4],eax
 004E9AB9    mov         al,[004E9B14];0x0 gvar_004E9B14
 004E9ABE    cmp         al,byte ptr [ebp-5]
>004E9AC1    je          004E9AD6
 004E9AC3    lea         ecx,[ebp-0D]
 004E9AC6    mov         dl,byte ptr [ebp-5]
 004E9AC9    mov         eax,dword ptr [ebp-4]
 004E9ACC    call        TCustomGrid.sub_00484704
 004E9AD1    mov         byte ptr [ebp-0E],al
>004E9AD4    jmp         004E9B0A
 004E9AD6    mov         eax,dword ptr [ebp-4]
 004E9AD9    call        004DD53C
 004E9ADE    mov         edx,dword ptr [ebp-4]
 004E9AE1    mov         edx,dword ptr [edx+25C];TCustomMPHexEditor.FTopLeft:Longint
 004E9AE7    sub         edx,eax
 004E9AE9    inc         edx
 004E9AEA    mov         eax,2
 004E9AEF    call        004DF5E8
 004E9AF4    mov         edx,eax
 004E9AF6    mov         eax,dword ptr [ebp-4]
 004E9AF9    call        004DDBE8
 004E9AFE    mov         eax,dword ptr [ebp-4]
 004E9B01    call        004E9B18
 004E9B06    mov         byte ptr [ebp-0E],1
 004E9B0A    mov         al,byte ptr [ebp-0E]
 004E9B0D    pop         edi
 004E9B0E    pop         esi
 004E9B0F    mov         esp,ebp
 004E9B11    pop         ebp
 004E9B12    ret
end;*}

//004E9B18
procedure sub_004E9B18(?:TCustomMPHexEditor);
begin
{*
 004E9B18    push        ebp
 004E9B19    mov         ebp,esp
 004E9B1B    add         esp,0FFFFFFEC
 004E9B1E    mov         dword ptr [ebp-4],eax
 004E9B21    lea         eax,[ebp-14]
 004E9B24    push        eax
 004E9B25    mov         eax,dword ptr [ebp-4]
 004E9B28    mov         ecx,dword ptr [eax+22C];TCustomMPHexEditor.FCurrent:Longint
 004E9B2E    mov         eax,dword ptr [ebp-4]
 004E9B31    mov         edx,dword ptr [eax+228];TCustomMPHexEditor.FCurrent:TGridCoord
 004E9B37    mov         eax,dword ptr [ebp-4]
 004E9B3A    call        004D8568
 004E9B3F    mov         eax,dword ptr [ebp-14]
 004E9B42    add         eax,dword ptr [ebp-8]
 004E9B45    test        eax,eax
>004E9B47    jne         004E9B5F
 004E9B49    push        0FF
 004E9B4B    mov         ecx,0FFFFFFCE
 004E9B50    mov         edx,0FFFFFFCE
 004E9B55    mov         eax,dword ptr [ebp-4]
 004E9B58    call        004E5EBC
>004E9B5D    jmp         004E9B77
 004E9B5F    mov         eax,dword ptr [ebp-4]
 004E9B62    mov         eax,dword ptr [eax+228];TCustomMPHexEditor.FCurrent:TGridCoord
 004E9B68    push        eax
 004E9B69    mov         ecx,dword ptr [ebp-10]
 004E9B6C    mov         edx,dword ptr [ebp-14]
 004E9B6F    mov         eax,dword ptr [ebp-4]
 004E9B72    call        004E5EBC
 004E9B77    mov         esp,ebp
 004E9B79    pop         ebp
 004E9B7A    ret
*}
end;

//004E9B7C
procedure TCustomMPHexEditor.sub_0048BFC8;
begin
{*
 004E9B7C    push        ebp
 004E9B7D    mov         ebp,esp
 004E9B7F    add         esp,0FFFFFFF4
 004E9B82    mov         dword ptr [ebp-4],eax
 004E9B85    mov         eax,dword ptr [ebp-4]
 004E9B88    call        TWinControl.sub_0048BFC8
 004E9B8D    mov         byte ptr [ebp-5],al
 004E9B90    cmp         byte ptr [ebp-5],0
>004E9B94    je          004E9BCE
 004E9B96    mov         eax,dword ptr [ebp-4]
 004E9B99    test        byte ptr [eax+1C],10;TCustomMPHexEditor.FComponentState:TComponentState
>004E9B9D    jne         004E9BCE
 004E9B9F    mov         eax,dword ptr [ebp-4]
 004E9BA2    call        004A0740
 004E9BA7    mov         dword ptr [ebp-0C],eax
 004E9BAA    cmp         dword ptr [ebp-0C],0
>004E9BAE    je          004E9BC9
 004E9BB0    mov         eax,dword ptr [ebp-0C]
 004E9BB3    mov         edx,dword ptr [eax]
 004E9BB5    call        dword ptr [edx+50]
 004E9BB8    test        al,al
>004E9BBA    je          004E9BC5
 004E9BBC    mov         eax,dword ptr [ebp-0C]
 004E9BBF    cmp         byte ptr [eax+57],0
>004E9BC3    jne         004E9BC9
 004E9BC5    xor         eax,eax
>004E9BC7    jmp         004E9BCB
 004E9BC9    mov         al,1
 004E9BCB    mov         byte ptr [ebp-5],al
 004E9BCE    mov         al,byte ptr [ebp-5]
 004E9BD1    mov         esp,ebp
 004E9BD3    pop         ebp
 004E9BD4    ret
*}
end;

//004E9BD8
procedure TMPHexEditorEx.SetRulerNumberBase(Value:Byte);
begin
{*
 004E9BD8    push        ebp
 004E9BD9    mov         ebp,esp
 004E9BDB    add         esp,0FFFFFFF8
 004E9BDE    mov         byte ptr [ebp-5],dl
 004E9BE1    mov         dword ptr [ebp-4],eax
 004E9BE4    mov         eax,dword ptr [ebp-4]
 004E9BE7    mov         al,byte ptr [eax+671];TMPHexEditorEx.?f671:byte
 004E9BED    cmp         al,byte ptr [ebp-5]
>004E9BF0    je          004E9C2F
 004E9BF2    mov         al,byte ptr [ebp-5]
 004E9BF5    add         al,0FE
 004E9BF7    sub         al,0F
>004E9BF9    jb          004E9C07
 004E9BFB    mov         eax,dword ptr [ebp-4]
 004E9BFE    mov         byte ptr [eax+671],10;TMPHexEditorEx.?f671:byte
>004E9C05    jmp         004E9C13
 004E9C07    mov         al,byte ptr [ebp-5]
 004E9C0A    mov         edx,dword ptr [ebp-4]
 004E9C0D    mov         byte ptr [edx+671],al;TMPHexEditorEx.?f671:byte
 004E9C13    mov         eax,dword ptr [ebp-4]
 004E9C16    call        004E89EC
 004E9C1B    mov         eax,dword ptr [ebp-4]
 004E9C1E    cmp         byte ptr [eax+5F0],0;TMPHexEditorEx.?f5F0:byte
>004E9C25    je          004E9C2F
 004E9C27    mov         eax,dword ptr [ebp-4]
 004E9C2A    mov         edx,dword ptr [eax]
 004E9C2C    call        dword ptr [edx+7C];TMPHexEditorEx.sub_0048BE68
 004E9C2F    pop         ecx
 004E9C30    pop         ecx
 004E9C31    pop         ebp
 004E9C32    ret
*}
end;

//004E9C34
{*procedure sub_004E9C34(?:?);
begin
 004E9C34    push        ebp
 004E9C35    mov         ebp,esp
 004E9C37    add         esp,0FFFFFFF4
 004E9C3A    mov         dword ptr [ebp-8],edx
 004E9C3D    mov         dword ptr [ebp-4],eax
 004E9C40    mov         eax,dword ptr [ebp-8]
 004E9C43    mov         edx,dword ptr ds:[4DEB30];TMPHColors
 004E9C49    call        @IsClass
 004E9C4E    test        al,al
>004E9C50    je          004E9D1D
 004E9C56    mov         eax,dword ptr [ebp-8]
 004E9C59    mov         edx,dword ptr ds:[4DEB30];TMPHColors
 004E9C5F    call        @AsClass
 004E9C64    mov         dword ptr [ebp-0C],eax
 004E9C67    mov         eax,dword ptr [ebp-0C]
 004E9C6A    mov         edx,dword ptr [eax+1C];TMPHColors.Background:TColor
 004E9C6D    mov         eax,dword ptr [ebp-4]
 004E9C70    call        TMPHColors.SetBackground
 004E9C75    mov         eax,dword ptr [ebp-0C]
 004E9C78    mov         edx,dword ptr [eax+20];TMPHColors.ChangedText:TColor
 004E9C7B    mov         eax,dword ptr [ebp-4]
 004E9C7E    call        TMPHColors.SetChangedText
 004E9C83    mov         eax,dword ptr [ebp-0C]
 004E9C86    mov         edx,dword ptr [eax+14];TMPHColors.CursorFrame:TColor
 004E9C89    mov         eax,dword ptr [ebp-4]
 004E9C8C    call        TMPHColors.SetCursorFrame
 004E9C91    mov         eax,dword ptr [ebp-0C]
 004E9C94    mov         edx,dword ptr [eax+18];TMPHColors.NonFocusCursorFrame:TColor
 004E9C97    mov         eax,dword ptr [ebp-4]
 004E9C9A    call        TMPHColors.SetNonFocusCursorFrame
 004E9C9F    mov         eax,dword ptr [ebp-0C]
 004E9CA2    mov         edx,dword ptr [eax+8];TMPHColors.Offset:TColor
 004E9CA5    mov         eax,dword ptr [ebp-4]
 004E9CA8    call        TMPHColors.SetOffset
 004E9CAD    mov         eax,dword ptr [ebp-0C]
 004E9CB0    mov         edx,dword ptr [eax+0C];TMPHColors.OddColumn:TColor
 004E9CB3    mov         eax,dword ptr [ebp-4]
 004E9CB6    call        TMPHColors.SetOddColumn
 004E9CBB    mov         eax,dword ptr [ebp-0C]
 004E9CBE    mov         edx,dword ptr [eax+10];TMPHColors.EvenColumn:TColor
 004E9CC1    mov         eax,dword ptr [ebp-4]
 004E9CC4    call        TMPHColors.SetEvenColumn
 004E9CC9    mov         eax,dword ptr [ebp-0C]
 004E9CCC    mov         edx,dword ptr [eax+24];TMPHColors.ChangedBackground:TColor
 004E9CCF    mov         eax,dword ptr [ebp-4]
 004E9CD2    call        TMPHColors.SetChangedBackground
 004E9CD7    mov         eax,dword ptr [ebp-0C]
 004E9CDA    mov         edx,dword ptr [eax+28];TMPHColors.CurrentOffsetBackground:TColor
 004E9CDD    mov         eax,dword ptr [ebp-4]
 004E9CE0    call        TMPHColors.SetCurrentOffsetBackground
 004E9CE5    mov         eax,dword ptr [ebp-0C]
 004E9CE8    mov         edx,dword ptr [eax+34];TMPHColors.CurrentOffset:TColor
 004E9CEB    mov         eax,dword ptr [ebp-4]
 004E9CEE    call        TMPHColors.SetCurrentOffset
 004E9CF3    mov         eax,dword ptr [ebp-0C]
 004E9CF6    mov         edx,dword ptr [eax+2C];TMPHColors.OffsetBackground:TColor
 004E9CF9    mov         eax,dword ptr [ebp-4]
 004E9CFC    call        TMPHColors.SetOffsetBackground
 004E9D01    mov         eax,dword ptr [ebp-0C]
 004E9D04    mov         edx,dword ptr [eax+30];TMPHColors.ActiveFieldBackground:TColor
 004E9D07    mov         eax,dword ptr [ebp-4]
 004E9D0A    call        TMPHColors.SetActiveFieldBackground
 004E9D0F    mov         eax,dword ptr [ebp-0C]
 004E9D12    mov         edx,dword ptr [eax+38];TMPHColors.Grid:TColor
 004E9D15    mov         eax,dword ptr [ebp-4]
 004E9D18    call        TMPHColors.SetGrid
 004E9D1D    mov         esp,ebp
 004E9D1F    pop         ebp
 004E9D20    ret
end;*}

//004E9D24
constructor TMPHColors.Create;
begin
{*
 004E9D24    push        ebp
 004E9D25    mov         ebp,esp
 004E9D27    add         esp,0FFFFFFF4
 004E9D2A    test        dl,dl
>004E9D2C    je          004E9D36
 004E9D2E    add         esp,0FFFFFFF0
 004E9D31    call        @ClassCreate
 004E9D36    mov         dword ptr [ebp-0C],ecx
 004E9D39    mov         byte ptr [ebp-5],dl
 004E9D3C    mov         dword ptr [ebp-4],eax
 004E9D3F    xor         edx,edx
 004E9D41    mov         eax,dword ptr [ebp-4]
 004E9D44    call        TObject.Create
 004E9D49    mov         eax,dword ptr [ebp-4]
 004E9D4C    mov         dword ptr [eax+1C],0FF000005;TMPHColors.Background:TColor
 004E9D53    mov         eax,dword ptr [ebp-4]
 004E9D56    mov         dword ptr [eax+30],0FF000005;TMPHColors.ActiveFieldBackground:TColor
 004E9D5D    mov         eax,dword ptr [ebp-4]
 004E9D60    mov         dword ptr [eax+20],80;TMPHColors.ChangedText:TColor
 004E9D67    mov         eax,dword ptr [ebp-4]
 004E9D6A    mov         dword ptr [eax+14],800000;TMPHColors.CursorFrame:TColor
 004E9D71    mov         eax,dword ptr [ebp-4]
 004E9D74    mov         dword ptr [eax+18],0FFFF00;TMPHColors.NonFocusCursorFrame:TColor
 004E9D7B    mov         eax,dword ptr [ebp-4]
 004E9D7E    xor         edx,edx
 004E9D80    mov         dword ptr [eax+8],edx;TMPHColors.Offset:TColor
 004E9D83    mov         eax,dword ptr [ebp-4]
 004E9D86    mov         dword ptr [eax+0C],0FF0000;TMPHColors.OddColumn:TColor
 004E9D8D    mov         eax,dword ptr [ebp-4]
 004E9D90    mov         dword ptr [eax+10],800000;TMPHColors.EvenColumn:TColor
 004E9D97    mov         eax,dword ptr [ebp-4]
 004E9D9A    mov         dword ptr [eax+24],0A8FFFF;TMPHColors.ChangedBackground:TColor
 004E9DA1    mov         eax,dword ptr [ebp-4]
 004E9DA4    mov         dword ptr [eax+28],0FF000010;TMPHColors.CurrentOffsetBackground:TColor
 004E9DAB    mov         eax,dword ptr [ebp-4]
 004E9DAE    mov         dword ptr [eax+34],0FF000014;TMPHColors.CurrentOffset:TColor
 004E9DB5    mov         eax,dword ptr [ebp-4]
 004E9DB8    mov         dword ptr [eax+2C],0FF00000F;TMPHColors.OffsetBackground:TColor
 004E9DBF    mov         eax,dword ptr [ebp-4]
 004E9DC2    mov         dword ptr [eax+38],0FF00000F;TMPHColors.Grid:TColor
 004E9DC9    mov         eax,dword ptr [ebp-4]
 004E9DCC    mov         edx,dword ptr [ebp-0C]
 004E9DCF    mov         dword ptr [eax+4],edx;TMPHColors.?f4:dword
 004E9DD2    mov         eax,dword ptr [ebp-4]
 004E9DD5    cmp         byte ptr [ebp-5],0
>004E9DD9    je          004E9DEA
 004E9DDB    call        @AfterConstruction
 004E9DE0    pop         dword ptr fs:[0]
 004E9DE7    add         esp,0C
 004E9DEA    mov         eax,dword ptr [ebp-4]
 004E9DED    mov         esp,ebp
 004E9DEF    pop         ebp
 004E9DF0    ret
*}
end;

//004E9DF4
procedure TMPHColors.SetBackground(Value:TColor);
begin
{*
 004E9DF4    push        ebp
 004E9DF5    mov         ebp,esp
 004E9DF7    add         esp,0FFFFFFF8
 004E9DFA    mov         dword ptr [ebp-8],edx
 004E9DFD    mov         dword ptr [ebp-4],eax
 004E9E00    mov         eax,dword ptr [ebp-4]
 004E9E03    mov         eax,dword ptr [eax+1C];TMPHColors.Background:TColor
 004E9E06    cmp         eax,dword ptr [ebp-8]
>004E9E09    je          004E9E36
 004E9E0B    mov         eax,dword ptr [ebp-8]
 004E9E0E    mov         edx,dword ptr [ebp-4]
 004E9E11    mov         dword ptr [edx+1C],eax;TMPHColors.Background:TColor
 004E9E14    mov         eax,dword ptr [ebp-4]
 004E9E17    cmp         dword ptr [eax+4],0;TMPHColors.?f4:dword
>004E9E1B    je          004E9E36
 004E9E1D    mov         edx,dword ptr [ebp-8]
 004E9E20    mov         eax,dword ptr [ebp-4]
 004E9E23    mov         eax,dword ptr [eax+4];TMPHColors.?f4:dword
 004E9E26    call        TPanel.SetColor
 004E9E2B    mov         eax,dword ptr [ebp-4]
 004E9E2E    mov         eax,dword ptr [eax+4];TMPHColors.?f4:dword
 004E9E31    mov         edx,dword ptr [eax]
 004E9E33    call        dword ptr [edx+7C]
 004E9E36    pop         ecx
 004E9E37    pop         ecx
 004E9E38    pop         ebp
 004E9E39    ret
*}
end;

//004E9E3C
procedure TMPHColors.SetChangedBackground(Value:TColor);
begin
{*
 004E9E3C    push        ebp
 004E9E3D    mov         ebp,esp
 004E9E3F    add         esp,0FFFFFFF8
 004E9E42    mov         dword ptr [ebp-8],edx
 004E9E45    mov         dword ptr [ebp-4],eax
 004E9E48    mov         eax,dword ptr [ebp-4]
 004E9E4B    mov         eax,dword ptr [eax+24];TMPHColors.ChangedBackground:TColor
 004E9E4E    cmp         eax,dword ptr [ebp-8]
>004E9E51    je          004E9E70
 004E9E53    mov         eax,dword ptr [ebp-8]
 004E9E56    mov         edx,dword ptr [ebp-4]
 004E9E59    mov         dword ptr [edx+24],eax;TMPHColors.ChangedBackground:TColor
 004E9E5C    mov         eax,dword ptr [ebp-4]
 004E9E5F    cmp         dword ptr [eax+4],0;TMPHColors.?f4:dword
>004E9E63    je          004E9E70
 004E9E65    mov         eax,dword ptr [ebp-4]
 004E9E68    mov         eax,dword ptr [eax+4];TMPHColors.?f4:dword
 004E9E6B    mov         edx,dword ptr [eax]
 004E9E6D    call        dword ptr [edx+7C]
 004E9E70    pop         ecx
 004E9E71    pop         ecx
 004E9E72    pop         ebp
 004E9E73    ret
*}
end;

//004E9E74
procedure TMPHColors.SetCurrentOffsetBackground(Value:TColor);
begin
{*
 004E9E74    push        ebp
 004E9E75    mov         ebp,esp
 004E9E77    add         esp,0FFFFFFF8
 004E9E7A    mov         dword ptr [ebp-8],edx
 004E9E7D    mov         dword ptr [ebp-4],eax
 004E9E80    mov         eax,dword ptr [ebp-4]
 004E9E83    mov         eax,dword ptr [eax+28];TMPHColors.CurrentOffsetBackground:TColor
 004E9E86    cmp         eax,dword ptr [ebp-8]
>004E9E89    je          004E9EA8
 004E9E8B    mov         eax,dword ptr [ebp-8]
 004E9E8E    mov         edx,dword ptr [ebp-4]
 004E9E91    mov         dword ptr [edx+28],eax;TMPHColors.CurrentOffsetBackground:TColor
 004E9E94    mov         eax,dword ptr [ebp-4]
 004E9E97    cmp         dword ptr [eax+4],0;TMPHColors.?f4:dword
>004E9E9B    je          004E9EA8
 004E9E9D    mov         eax,dword ptr [ebp-4]
 004E9EA0    mov         eax,dword ptr [eax+4];TMPHColors.?f4:dword
 004E9EA3    mov         edx,dword ptr [eax]
 004E9EA5    call        dword ptr [edx+7C]
 004E9EA8    pop         ecx
 004E9EA9    pop         ecx
 004E9EAA    pop         ebp
 004E9EAB    ret
*}
end;

//004E9EAC
procedure TMPHColors.SetNonFocusCursorFrame(Value:TColor);
begin
{*
 004E9EAC    push        ebp
 004E9EAD    mov         ebp,esp
 004E9EAF    add         esp,0FFFFFFF8
 004E9EB2    mov         dword ptr [ebp-8],edx
 004E9EB5    mov         dword ptr [ebp-4],eax
 004E9EB8    mov         eax,dword ptr [ebp-4]
 004E9EBB    mov         eax,dword ptr [eax+18];TMPHColors.NonFocusCursorFrame:TColor
 004E9EBE    cmp         eax,dword ptr [ebp-8]
>004E9EC1    je          004E9EE0
 004E9EC3    mov         eax,dword ptr [ebp-8]
 004E9EC6    mov         edx,dword ptr [ebp-4]
 004E9EC9    mov         dword ptr [edx+18],eax;TMPHColors.NonFocusCursorFrame:TColor
 004E9ECC    mov         eax,dword ptr [ebp-4]
 004E9ECF    cmp         dword ptr [eax+4],0;TMPHColors.?f4:dword
>004E9ED3    je          004E9EE0
 004E9ED5    mov         eax,dword ptr [ebp-4]
 004E9ED8    mov         eax,dword ptr [eax+4];TMPHColors.?f4:dword
 004E9EDB    mov         edx,dword ptr [eax]
 004E9EDD    call        dword ptr [edx+7C]
 004E9EE0    pop         ecx
 004E9EE1    pop         ecx
 004E9EE2    pop         ebp
 004E9EE3    ret
*}
end;

//004E9EE4
procedure TMPHColors.SetChangedText(Value:TColor);
begin
{*
 004E9EE4    push        ebp
 004E9EE5    mov         ebp,esp
 004E9EE7    add         esp,0FFFFFFF8
 004E9EEA    mov         dword ptr [ebp-8],edx
 004E9EED    mov         dword ptr [ebp-4],eax
 004E9EF0    mov         eax,dword ptr [ebp-4]
 004E9EF3    mov         eax,dword ptr [eax+20];TMPHColors.ChangedText:TColor
 004E9EF6    cmp         eax,dword ptr [ebp-8]
>004E9EF9    je          004E9F18
 004E9EFB    mov         eax,dword ptr [ebp-8]
 004E9EFE    mov         edx,dword ptr [ebp-4]
 004E9F01    mov         dword ptr [edx+20],eax;TMPHColors.ChangedText:TColor
 004E9F04    mov         eax,dword ptr [ebp-4]
 004E9F07    cmp         dword ptr [eax+4],0;TMPHColors.?f4:dword
>004E9F0B    je          004E9F18
 004E9F0D    mov         eax,dword ptr [ebp-4]
 004E9F10    mov         eax,dword ptr [eax+4];TMPHColors.?f4:dword
 004E9F13    mov         edx,dword ptr [eax]
 004E9F15    call        dword ptr [edx+7C]
 004E9F18    pop         ecx
 004E9F19    pop         ecx
 004E9F1A    pop         ebp
 004E9F1B    ret
*}
end;

//004E9F1C
procedure TMPHColors.SetCursorFrame(Value:TColor);
begin
{*
 004E9F1C    push        ebp
 004E9F1D    mov         ebp,esp
 004E9F1F    add         esp,0FFFFFFF8
 004E9F22    mov         dword ptr [ebp-8],edx
 004E9F25    mov         dword ptr [ebp-4],eax
 004E9F28    mov         eax,dword ptr [ebp-4]
 004E9F2B    mov         eax,dword ptr [eax+14];TMPHColors.CursorFrame:TColor
 004E9F2E    cmp         eax,dword ptr [ebp-8]
>004E9F31    je          004E9F50
 004E9F33    mov         eax,dword ptr [ebp-8]
 004E9F36    mov         edx,dword ptr [ebp-4]
 004E9F39    mov         dword ptr [edx+14],eax;TMPHColors.CursorFrame:TColor
 004E9F3C    mov         eax,dword ptr [ebp-4]
 004E9F3F    cmp         dword ptr [eax+4],0;TMPHColors.?f4:dword
>004E9F43    je          004E9F50
 004E9F45    mov         eax,dword ptr [ebp-4]
 004E9F48    mov         eax,dword ptr [eax+4];TMPHColors.?f4:dword
 004E9F4B    mov         edx,dword ptr [eax]
 004E9F4D    call        dword ptr [edx+7C]
 004E9F50    pop         ecx
 004E9F51    pop         ecx
 004E9F52    pop         ebp
 004E9F53    ret
*}
end;

//004E9F54
procedure TMPHColors.SetEvenColumn(Value:TColor);
begin
{*
 004E9F54    push        ebp
 004E9F55    mov         ebp,esp
 004E9F57    add         esp,0FFFFFFF8
 004E9F5A    mov         dword ptr [ebp-8],edx
 004E9F5D    mov         dword ptr [ebp-4],eax
 004E9F60    mov         eax,dword ptr [ebp-4]
 004E9F63    mov         eax,dword ptr [eax+10];TMPHColors.EvenColumn:TColor
 004E9F66    cmp         eax,dword ptr [ebp-8]
>004E9F69    je          004E9F88
 004E9F6B    mov         eax,dword ptr [ebp-8]
 004E9F6E    mov         edx,dword ptr [ebp-4]
 004E9F71    mov         dword ptr [edx+10],eax;TMPHColors.EvenColumn:TColor
 004E9F74    mov         eax,dword ptr [ebp-4]
 004E9F77    cmp         dword ptr [eax+4],0;TMPHColors.?f4:dword
>004E9F7B    je          004E9F88
 004E9F7D    mov         eax,dword ptr [ebp-4]
 004E9F80    mov         eax,dword ptr [eax+4];TMPHColors.?f4:dword
 004E9F83    mov         edx,dword ptr [eax]
 004E9F85    call        dword ptr [edx+7C]
 004E9F88    pop         ecx
 004E9F89    pop         ecx
 004E9F8A    pop         ebp
 004E9F8B    ret
*}
end;

//004E9F8C
procedure TMPHColors.SetOddColumn(Value:TColor);
begin
{*
 004E9F8C    push        ebp
 004E9F8D    mov         ebp,esp
 004E9F8F    add         esp,0FFFFFFF8
 004E9F92    mov         dword ptr [ebp-8],edx
 004E9F95    mov         dword ptr [ebp-4],eax
 004E9F98    mov         eax,dword ptr [ebp-4]
 004E9F9B    mov         eax,dword ptr [eax+0C];TMPHColors.OddColumn:TColor
 004E9F9E    cmp         eax,dword ptr [ebp-8]
>004E9FA1    je          004E9FC0
 004E9FA3    mov         eax,dword ptr [ebp-8]
 004E9FA6    mov         edx,dword ptr [ebp-4]
 004E9FA9    mov         dword ptr [edx+0C],eax;TMPHColors.OddColumn:TColor
 004E9FAC    mov         eax,dword ptr [ebp-4]
 004E9FAF    cmp         dword ptr [eax+4],0;TMPHColors.?f4:dword
>004E9FB3    je          004E9FC0
 004E9FB5    mov         eax,dword ptr [ebp-4]
 004E9FB8    mov         eax,dword ptr [eax+4];TMPHColors.?f4:dword
 004E9FBB    mov         edx,dword ptr [eax]
 004E9FBD    call        dword ptr [edx+7C]
 004E9FC0    pop         ecx
 004E9FC1    pop         ecx
 004E9FC2    pop         ebp
 004E9FC3    ret
*}
end;

//004E9FC4
procedure TMPHColors.SetOffset(Value:TColor);
begin
{*
 004E9FC4    push        ebp
 004E9FC5    mov         ebp,esp
 004E9FC7    add         esp,0FFFFFFF8
 004E9FCA    mov         dword ptr [ebp-8],edx
 004E9FCD    mov         dword ptr [ebp-4],eax
 004E9FD0    mov         eax,dword ptr [ebp-4]
 004E9FD3    mov         eax,dword ptr [eax+8];TMPHColors.Offset:TColor
 004E9FD6    cmp         eax,dword ptr [ebp-8]
>004E9FD9    je          004E9FF8
 004E9FDB    mov         eax,dword ptr [ebp-8]
 004E9FDE    mov         edx,dword ptr [ebp-4]
 004E9FE1    mov         dword ptr [edx+8],eax;TMPHColors.Offset:TColor
 004E9FE4    mov         eax,dword ptr [ebp-4]
 004E9FE7    cmp         dword ptr [eax+4],0;TMPHColors.?f4:dword
>004E9FEB    je          004E9FF8
 004E9FED    mov         eax,dword ptr [ebp-4]
 004E9FF0    mov         eax,dword ptr [eax+4];TMPHColors.?f4:dword
 004E9FF3    mov         edx,dword ptr [eax]
 004E9FF5    call        dword ptr [edx+7C]
 004E9FF8    pop         ecx
 004E9FF9    pop         ecx
 004E9FFA    pop         ebp
 004E9FFB    ret
*}
end;

//004E9FFC
procedure TMPHColors.SetOffsetBackground(Value:TColor);
begin
{*
 004E9FFC    push        ebp
 004E9FFD    mov         ebp,esp
 004E9FFF    add         esp,0FFFFFFF8
 004EA002    mov         dword ptr [ebp-8],edx
 004EA005    mov         dword ptr [ebp-4],eax
 004EA008    mov         eax,dword ptr [ebp-4]
 004EA00B    mov         eax,dword ptr [eax+2C];TMPHColors.OffsetBackground:TColor
 004EA00E    cmp         eax,dword ptr [ebp-8]
>004EA011    je          004EA030
 004EA013    mov         eax,dword ptr [ebp-8]
 004EA016    mov         edx,dword ptr [ebp-4]
 004EA019    mov         dword ptr [edx+2C],eax;TMPHColors.OffsetBackground:TColor
 004EA01C    mov         eax,dword ptr [ebp-4]
 004EA01F    cmp         dword ptr [eax+4],0;TMPHColors.?f4:dword
>004EA023    je          004EA030
 004EA025    mov         eax,dword ptr [ebp-4]
 004EA028    mov         eax,dword ptr [eax+4];TMPHColors.?f4:dword
 004EA02B    mov         edx,dword ptr [eax]
 004EA02D    call        dword ptr [edx+7C]
 004EA030    pop         ecx
 004EA031    pop         ecx
 004EA032    pop         ebp
 004EA033    ret
*}
end;

//004EA034
procedure TMPHColors.SetCurrentOffset(Value:TColor);
begin
{*
 004EA034    push        ebp
 004EA035    mov         ebp,esp
 004EA037    add         esp,0FFFFFFF8
 004EA03A    mov         dword ptr [ebp-8],edx
 004EA03D    mov         dword ptr [ebp-4],eax
 004EA040    mov         eax,dword ptr [ebp-4]
 004EA043    mov         eax,dword ptr [eax+34];TMPHColors.CurrentOffset:TColor
 004EA046    cmp         eax,dword ptr [ebp-8]
>004EA049    je          004EA068
 004EA04B    mov         eax,dword ptr [ebp-8]
 004EA04E    mov         edx,dword ptr [ebp-4]
 004EA051    mov         dword ptr [edx+34],eax;TMPHColors.CurrentOffset:TColor
 004EA054    mov         eax,dword ptr [ebp-4]
 004EA057    cmp         dword ptr [eax+4],0;TMPHColors.?f4:dword
>004EA05B    je          004EA068
 004EA05D    mov         eax,dword ptr [ebp-4]
 004EA060    mov         eax,dword ptr [eax+4];TMPHColors.?f4:dword
 004EA063    mov         edx,dword ptr [eax]
 004EA065    call        dword ptr [edx+7C]
 004EA068    pop         ecx
 004EA069    pop         ecx
 004EA06A    pop         ebp
 004EA06B    ret
*}
end;

//004EA06C
procedure TMPHColors.SetGrid(Value:TColor);
begin
{*
 004EA06C    push        ebp
 004EA06D    mov         ebp,esp
 004EA06F    add         esp,0FFFFFFF8
 004EA072    mov         dword ptr [ebp-8],edx
 004EA075    mov         dword ptr [ebp-4],eax
 004EA078    mov         eax,dword ptr [ebp-4]
 004EA07B    mov         eax,dword ptr [eax+38];TMPHColors.Grid:TColor
 004EA07E    cmp         eax,dword ptr [ebp-8]
>004EA081    je          004EA0A0
 004EA083    mov         eax,dword ptr [ebp-8]
 004EA086    mov         edx,dword ptr [ebp-4]
 004EA089    mov         dword ptr [edx+38],eax;TMPHColors.Grid:TColor
 004EA08C    mov         eax,dword ptr [ebp-4]
 004EA08F    cmp         dword ptr [eax+4],0;TMPHColors.?f4:dword
>004EA093    je          004EA0A0
 004EA095    mov         eax,dword ptr [ebp-4]
 004EA098    mov         eax,dword ptr [eax+4];TMPHColors.?f4:dword
 004EA09B    mov         edx,dword ptr [eax]
 004EA09D    call        dword ptr [edx+7C]
 004EA0A0    pop         ecx
 004EA0A1    pop         ecx
 004EA0A2    pop         ebp
 004EA0A3    ret
*}
end;

//004EA0A4
procedure TMPHColors.SetActiveFieldBackground(Value:TColor);
begin
{*
 004EA0A4    push        ebp
 004EA0A5    mov         ebp,esp
 004EA0A7    add         esp,0FFFFFFF8
 004EA0AA    mov         dword ptr [ebp-8],edx
 004EA0AD    mov         dword ptr [ebp-4],eax
 004EA0B0    mov         eax,dword ptr [ebp-4]
 004EA0B3    mov         eax,dword ptr [eax+30];TMPHColors.ActiveFieldBackground:TColor
 004EA0B6    cmp         eax,dword ptr [ebp-8]
>004EA0B9    je          004EA0D8
 004EA0BB    mov         eax,dword ptr [ebp-8]
 004EA0BE    mov         edx,dword ptr [ebp-4]
 004EA0C1    mov         dword ptr [edx+30],eax;TMPHColors.ActiveFieldBackground:TColor
 004EA0C4    mov         eax,dword ptr [ebp-4]
 004EA0C7    cmp         dword ptr [eax+4],0;TMPHColors.?f4:dword
>004EA0CB    je          004EA0D8
 004EA0CD    mov         eax,dword ptr [ebp-4]
 004EA0D0    mov         eax,dword ptr [eax+4];TMPHColors.?f4:dword
 004EA0D3    mov         edx,dword ptr [eax]
 004EA0D5    call        dword ptr [edx+7C]
 004EA0D8    pop         ecx
 004EA0D9    pop         ecx
 004EA0DA    pop         ebp
 004EA0DB    ret
*}
end;

//004EA0DC
constructor TMPHUndoStorage.Create;
begin
{*
 004EA0DC    push        ebp
 004EA0DD    mov         ebp,esp
 004EA0DF    add         esp,0FFFFFFF4
 004EA0E2    test        dl,dl
>004EA0E4    je          004EA0EE
 004EA0E6    add         esp,0FFFFFFF0
 004EA0E9    call        @ClassCreate
 004EA0EE    mov         dword ptr [ebp-0C],ecx
 004EA0F1    mov         byte ptr [ebp-5],dl
 004EA0F4    mov         dword ptr [ebp-4],eax
 004EA0F7    xor         edx,edx
 004EA0F9    mov         eax,dword ptr [ebp-4]
 004EA0FC    call        TObject.Create
 004EA101    mov         eax,dword ptr [ebp-4]
 004EA104    mov         edx,dword ptr [ebp-0C]
 004EA107    mov         dword ptr [eax+1C],edx;TMPHUndoStorage.?f1C:dword
 004EA10A    mov         eax,dword ptr [ebp-4]
 004EA10D    xor         edx,edx
 004EA10F    mov         dword ptr [eax+24],edx;TMPHUndoStorage.?f24:dword
 004EA112    mov         eax,dword ptr [ebp-4]
 004EA115    xor         edx,edx
 004EA117    mov         dword ptr [eax+28],edx;TMPHUndoStorage.?f28:dword
 004EA11A    mov         eax,dword ptr [ebp-4]
 004EA11D    xor         edx,edx
 004EA11F    mov         dword ptr [eax+2C],edx;TMPHUndoStorage.?f2C:dword
 004EA122    mov         dl,1
 004EA124    mov         eax,dword ptr [ebp-4]
 004EA127    call        004EB4F0
 004EA12C    mov         eax,dword ptr [ebp-4]
 004EA12F    cmp         byte ptr [ebp-5],0
>004EA133    je          004EA144
 004EA135    call        @AfterConstruction
 004EA13A    pop         dword ptr fs:[0]
 004EA141    add         esp,0C
 004EA144    mov         eax,dword ptr [ebp-4]
 004EA147    mov         esp,ebp
 004EA149    pop         ebp
 004EA14A    ret
*}
end;

//004EA14C
destructor TMPHUndoStorage.Destroy;
begin
{*
 004EA14C    push        ebp
 004EA14D    mov         ebp,esp
 004EA14F    add         esp,0FFFFFFF8
 004EA152    call        @BeforeDestruction
 004EA157    mov         byte ptr [ebp-5],dl
 004EA15A    mov         dword ptr [ebp-4],eax
 004EA15D    mov         dl,1
 004EA15F    mov         eax,dword ptr [ebp-4]
 004EA162    call        004EB4F0
 004EA167    mov         dl,byte ptr [ebp-5]
 004EA16A    and         dl,0FC
 004EA16D    mov         eax,dword ptr [ebp-4]
 004EA170    call        TMemoryStream.Destroy
 004EA175    cmp         byte ptr [ebp-5],0
>004EA179    jle         004EA183
 004EA17B    mov         eax,dword ptr [ebp-4]
 004EA17E    call        @ClassDestroy
 004EA183    pop         ecx
 004EA184    pop         ecx
 004EA185    pop         ebp
 004EA186    ret
*}
end;

//004EA188
{*function sub_004EA188(?:TMPHUndoStorage):?;
begin
 004EA188    push        ebp
 004EA189    mov         ebp,esp
 004EA18B    add         esp,0FFFFFFF8
 004EA18E    mov         dword ptr [ebp-4],eax
 004EA191    mov         eax,dword ptr [ebp-4]
 004EA194    inc         dword ptr [eax+18];TMPHUndoStorage.?f18:dword
 004EA197    mov         eax,dword ptr [ebp-4]
 004EA19A    mov         eax,dword ptr [eax+18];TMPHUndoStorage.?f18:dword
 004EA19D    mov         dword ptr [ebp-8],eax
 004EA1A0    mov         eax,dword ptr [ebp-8]
 004EA1A3    pop         ecx
 004EA1A4    pop         ecx
 004EA1A5    pop         ebp
 004EA1A6    ret
end;*}

//004EA1A8
{*function sub_004EA1A8(?:TMPHUndoStorage):?;
begin
 004EA1A8    push        ebp
 004EA1A9    mov         ebp,esp
 004EA1AB    add         esp,0FFFFFFF8
 004EA1AE    mov         dword ptr [ebp-4],eax
 004EA1B1    mov         eax,dword ptr [ebp-4]
 004EA1B4    cmp         dword ptr [eax+14],0
>004EA1B8    jle         004EA1D8
 004EA1BA    mov         eax,dword ptr [ebp-4]
 004EA1BD    cmp         dword ptr [eax+18],1
>004EA1C1    jge         004EA1D8
 004EA1C3    mov         eax,dword ptr [ebp-4]
 004EA1C6    mov         edx,dword ptr [eax]
 004EA1C8    call        dword ptr [edx]
 004EA1CA    cmp         edx,0
>004EA1CD    jne         004EA1D6
 004EA1CF    cmp         eax,0
>004EA1D2    ja          004EA1DC
>004EA1D4    jmp         004EA1D8
>004EA1D6    jg          004EA1DC
 004EA1D8    xor         eax,eax
>004EA1DA    jmp         004EA1DE
 004EA1DC    mov         al,1
 004EA1DE    mov         byte ptr [ebp-5],al
 004EA1E1    mov         al,byte ptr [ebp-5]
 004EA1E4    pop         ecx
 004EA1E5    pop         ecx
 004EA1E6    pop         ebp
 004EA1E7    ret
end;*}

//004EA1E8
{*function sub_004EA1E8(?:?):?;
begin
 004EA1E8    push        ebp
 004EA1E9    mov         ebp,esp
 004EA1EB    push        ecx
 004EA1EC    mov         eax,dword ptr [ebp+8]
 004EA1EF    mov         eax,dword ptr [eax-8]
 004EA1F2    mov         edx,dword ptr [ebp+8]
 004EA1F5    mov         edx,dword ptr [edx-4]
 004EA1F8    mov         edx,dword ptr [edx+4]
 004EA1FB    lea         eax,[edx+eax]
 004EA1FE    mov         dword ptr [ebp-4],eax
 004EA201    mov         eax,dword ptr [ebp-4]
 004EA204    pop         ecx
 004EA205    pop         ebp
 004EA206    ret
end;*}

//004EA208
{*procedure sub_004EA208(?:ShortString; ?:?);
begin
 004EA208    push        ebp
 004EA209    mov         ebp,esp
 004EA20B    add         esp,0FFFFFFC8
 004EA20E    mov         dword ptr [ebp-4],eax
 004EA211    mov         eax,dword ptr [ebp+8]
 004EA214    mov         eax,dword ptr [eax-4]
 004EA217    call        TStream.GetPosition
 004EA21C    mov         dword ptr [ebp-8],eax
 004EA21F    mov         eax,dword ptr [ebp+8]
 004EA222    mov         edx,dword ptr [ebp-8]
 004EA225    mov         dword ptr [eax-8],edx
 004EA228    mov         eax,dword ptr [ebp+8]
 004EA22B    mov         eax,dword ptr [eax-4]
 004EA22E    mov         edx,dword ptr [eax]
 004EA230    call        dword ptr [edx]
 004EA232    add         eax,1E
 004EA235    adc         edx,0
 004EA238    push        edx
 004EA239    push        eax
 004EA23A    mov         eax,dword ptr [ebp-4]
 004EA23D    cdq
 004EA23E    add         eax,dword ptr [esp]
 004EA241    adc         edx,dword ptr [esp+4]
 004EA245    add         esp,8
 004EA248    push        edx
 004EA249    push        eax
 004EA24A    mov         eax,dword ptr [ebp+8]
 004EA24D    mov         eax,dword ptr [eax-4]
 004EA250    call        004235FC
 004EA255    mov         eax,dword ptr [ebp+8]
 004EA258    push        eax
 004EA259    call        004EA1E8
 004EA25E    pop         ecx
 004EA25F    mov         edx,dword ptr [ebp-4]
 004EA262    add         edx,1E
 004EA265    xor         ecx,ecx
 004EA267    call        @FillChar
 004EA26C    mov         eax,dword ptr [ebp+8]
 004EA26F    push        eax
 004EA270    call        004EA1E8
 004EA275    pop         ecx
 004EA276    mov         dword ptr [ebp-0C],eax
 004EA279    mov         eax,dword ptr [ebp+8]
 004EA27C    mov         dl,byte ptr [eax-9]
 004EA27F    lea         eax,[ebp-38]
 004EA282    mov         cl,3
 004EA284    call        @SetElem
 004EA289    lea         eax,[ebp-38]
 004EA28C    lea         edx,[ebp-34]
 004EA28F    mov         ecx,300
 004EA294    call        @SetExpand
 004EA299    mov         eax,dword ptr [ebp-34]
 004EA29C    mov         edx,dword ptr [ebp-0C]
 004EA29F    mov         dword ptr [edx+4],eax
 004EA2A2    mov         eax,dword ptr [ebp+8]
 004EA2A5    mov         eax,dword ptr [eax-4]
 004EA2A8    mov         eax,dword ptr [eax+1C]
 004EA2AB    mov         ecx,dword ptr [eax+22C]
 004EA2B1    mov         eax,dword ptr [ebp+8]
 004EA2B4    mov         eax,dword ptr [eax-4]
 004EA2B7    mov         eax,dword ptr [eax+1C]
 004EA2BA    mov         edx,dword ptr [eax+228]
 004EA2C0    mov         eax,dword ptr [ebp+8]
 004EA2C3    mov         eax,dword ptr [eax-4]
 004EA2C6    mov         eax,dword ptr [eax+1C]
 004EA2C9    call        004E1288
 004EA2CE    mov         edx,dword ptr [ebp-0C]
 004EA2D1    mov         dword ptr [edx+8],eax
 004EA2D4    mov         eax,dword ptr [ebp+8]
 004EA2D7    mov         eax,dword ptr [eax-4]
 004EA2DA    mov         eax,dword ptr [eax+1C]
 004EA2DD    cmp         byte ptr [eax+4F0],0
>004EA2E4    jne         004EA32B
 004EA2E6    lea         eax,[ebp-14]
 004EA2E9    push        eax
 004EA2EA    mov         eax,dword ptr [ebp+8]
 004EA2ED    mov         eax,dword ptr [eax-4]
 004EA2F0    mov         eax,dword ptr [eax+1C]
 004EA2F3    mov         cl,byte ptr [eax+4F0]
 004EA2F9    mov         eax,dword ptr [ebp+8]
 004EA2FC    mov         eax,dword ptr [eax-4]
 004EA2FF    mov         eax,dword ptr [eax+1C]
 004EA302    mov         edx,dword ptr [ebp-0C]
 004EA305    mov         edx,dword ptr [edx+8]
 004EA308    call        004E1344
 004EA30D    mov         eax,dword ptr [ebp+8]
 004EA310    mov         eax,dword ptr [eax-4]
 004EA313    mov         eax,dword ptr [eax+1C]
 004EA316    mov         eax,dword ptr [eax+228]
 004EA31C    sub         eax,dword ptr [ebp-14]
>004EA31F    je          004EA32B
 004EA321    mov         eax,dword ptr [ebp-0C]
 004EA324    or          dword ptr [eax+4],4000
 004EA32B    mov         eax,dword ptr [ebp+8]
 004EA32E    mov         eax,dword ptr [eax-4]
 004EA331    mov         eax,dword ptr [eax+1C]
 004EA334    cmp         byte ptr [eax+4F0],0
>004EA33B    je          004EA347
 004EA33D    mov         eax,dword ptr [ebp-0C]
 004EA340    or          dword ptr [eax+4],8000
 004EA347    mov         eax,dword ptr [ebp+8]
 004EA34A    mov         eax,dword ptr [eax-4]
 004EA34D    mov         eax,dword ptr [eax+1C]
 004EA350    cmp         byte ptr [eax+4C8],0
>004EA357    je          004EA363
 004EA359    mov         eax,dword ptr [ebp-0C]
 004EA35C    or          dword ptr [eax+4],20000
 004EA363    mov         eax,dword ptr [ebp+8]
 004EA366    mov         eax,dword ptr [eax-10]
 004EA369    mov         edx,dword ptr [ebp-0C]
 004EA36C    mov         dword ptr [edx+0C],eax
 004EA36F    mov         eax,dword ptr [ebp+8]
 004EA372    mov         eax,dword ptr [eax+10]
 004EA375    mov         edx,dword ptr [ebp-0C]
 004EA378    mov         dword ptr [edx+10],eax
 004EA37B    mov         eax,dword ptr [ebp+8]
 004EA37E    mov         eax,dword ptr [eax+0C]
 004EA381    mov         edx,dword ptr [ebp-0C]
 004EA384    mov         dword ptr [edx+14],eax
 004EA387    mov         eax,dword ptr [ebp+8]
 004EA38A    mov         eax,dword ptr [eax-4]
 004EA38D    mov         eax,dword ptr [eax+1C]
 004EA390    mov         al,byte ptr [eax+55C]
 004EA396    mov         edx,dword ptr [ebp-0C]
 004EA399    mov         byte ptr [edx+18],al
 004EA39C    mov         eax,dword ptr [ebp+8]
 004EA39F    mov         eax,dword ptr [eax-4]
 004EA3A2    mov         eax,dword ptr [eax+1C]
 004EA3A5    cmp         byte ptr [eax+61C],0
>004EA3AC    je          004EA3B8
 004EA3AE    mov         eax,dword ptr [ebp-0C]
 004EA3B1    or          dword ptr [eax+4],40000
 004EA3B8    mov         eax,dword ptr [ebp+8]
 004EA3BB    mov         eax,dword ptr [eax-4]
 004EA3BE    mov         eax,dword ptr [eax+1C]
 004EA3C1    cmp         byte ptr [eax+61D],0
>004EA3C8    je          004EA3D4
 004EA3CA    mov         eax,dword ptr [ebp-0C]
 004EA3CD    or          dword ptr [eax+4],80000
 004EA3D4    mov         eax,dword ptr [ebp+8]
 004EA3D7    mov         eax,dword ptr [eax-4]
 004EA3DA    mov         eax,dword ptr [eax+1C]
 004EA3DD    mov         eax,dword ptr [eax+5F4]
 004EA3E3    mov         edx,dword ptr [ebp-0C]
 004EA3E6    mov         dword ptr [edx+19],eax
 004EA3E9    mov         eax,dword ptr [ebp+8]
 004EA3EC    mov         eax,dword ptr [eax-4]
 004EA3EF    mov         eax,dword ptr [eax+1C]
 004EA3F2    cmp         byte ptr [eax+67D],0
>004EA3F9    je          004EA405
 004EA3FB    mov         eax,dword ptr [ebp-0C]
 004EA3FE    or          dword ptr [eax+4],2000
 004EA405    mov         eax,dword ptr [ebp+8]
 004EA408    mov         eax,dword ptr [eax-4]
 004EA40B    mov         eax,dword ptr [eax+1C]
 004EA40E    cmp         dword ptr [eax+550],0FFFFFFFF
>004EA415    jle         004EA421
 004EA417    mov         eax,dword ptr [ebp-0C]
 004EA41A    or          dword ptr [eax+4],10000
 004EA421    mov         eax,dword ptr [ebp+8]
 004EA424    cmp         dword ptr [eax+8],0
>004EA428    je          004EA434
 004EA42A    mov         eax,dword ptr [ebp-0C]
 004EA42D    or          dword ptr [eax+4],100000
 004EA434    mov         esp,ebp
 004EA436    pop         ebp
 004EA437    ret
end;*}

//004EA438
{*procedure sub_004EA438(?:?);
begin
 004EA438    push        ebp
 004EA439    mov         ebp,esp
 004EA43B    push        ecx
 004EA43C    push        ebx
 004EA43D    mov         eax,dword ptr [ebp+8]
 004EA440    mov         eax,dword ptr [eax-4]
 004EA443    mov         edx,dword ptr [eax]
 004EA445    call        dword ptr [edx]
 004EA447    cmp         edx,0
>004EA44A    jne         004EA453
 004EA44C    cmp         eax,4
>004EA44F    jae         004EA474
>004EA451    jmp         004EA455
>004EA453    jge         004EA474
 004EA455    push        0
 004EA457    push        0
 004EA459    mov         eax,dword ptr [ebp+8]
 004EA45C    mov         eax,dword ptr [eax-4]
 004EA45F    call        004235FC
 004EA464    mov         eax,dword ptr [ebp+8]
 004EA467    mov         eax,dword ptr [eax-4]
 004EA46A    xor         edx,edx
 004EA46C    mov         dword ptr [eax+14],edx
>004EA46F    jmp         004EA51E
 004EA474    mov         eax,dword ptr [ebp+8]
 004EA477    mov         eax,dword ptr [eax-4]
 004EA47A    xor         ecx,ecx
 004EA47C    xor         edx,edx
 004EA47E    mov         ebx,dword ptr [eax]
 004EA480    call        dword ptr [ebx+14]
 004EA483    lea         edx,[ebp-4]
 004EA486    mov         eax,dword ptr [ebp+8]
 004EA489    mov         eax,dword ptr [eax-4]
 004EA48C    mov         ecx,4
 004EA491    mov         ebx,dword ptr [eax]
 004EA493    call        dword ptr [ebx+0C]
 004EA496    cmp         dword ptr [ebp-4],1E
>004EA49A    jge         004EA4B8
 004EA49C    push        0
 004EA49E    push        0
 004EA4A0    mov         eax,dword ptr [ebp+8]
 004EA4A3    mov         eax,dword ptr [eax-4]
 004EA4A6    call        004235FC
 004EA4AB    mov         eax,dword ptr [ebp+8]
 004EA4AE    mov         eax,dword ptr [eax-4]
 004EA4B1    xor         edx,edx
 004EA4B3    mov         dword ptr [eax+14],edx
>004EA4B6    jmp         004EA51E
 004EA4B8    mov         eax,dword ptr [ebp+8]
 004EA4BB    mov         eax,dword ptr [eax-4]
 004EA4BE    mov         edx,dword ptr [eax]
 004EA4C0    call        dword ptr [edx]
 004EA4C2    mov         ecx,eax
 004EA4C4    sub         ecx,dword ptr [ebp-4]
 004EA4C7    mov         eax,dword ptr [ebp+8]
 004EA4CA    mov         eax,dword ptr [eax-4]
 004EA4CD    mov         eax,dword ptr [eax+4]
 004EA4D0    mov         edx,dword ptr [ebp-4]
 004EA4D3    add         eax,edx
 004EA4D5    mov         edx,dword ptr [ebp+8]
 004EA4D8    mov         edx,dword ptr [edx-4]
 004EA4DB    mov         edx,dword ptr [edx+4]
 004EA4DE    call        Move
 004EA4E3    mov         eax,dword ptr [ebp+8]
 004EA4E6    mov         eax,dword ptr [eax-4]
 004EA4E9    mov         edx,dword ptr [eax]
 004EA4EB    call        dword ptr [edx]
 004EA4ED    push        edx
 004EA4EE    push        eax
 004EA4EF    mov         eax,dword ptr [ebp-4]
 004EA4F2    cdq
 004EA4F3    sub         dword ptr [esp],eax
 004EA4F6    sbb         dword ptr [esp+4],edx
 004EA4FA    pop         eax
 004EA4FB    pop         edx
 004EA4FC    push        edx
 004EA4FD    push        eax
 004EA4FE    mov         eax,dword ptr [ebp+8]
 004EA501    mov         eax,dword ptr [eax-4]
 004EA504    call        004235FC
 004EA509    mov         eax,dword ptr [ebp+8]
 004EA50C    mov         eax,dword ptr [eax-4]
 004EA50F    cmp         dword ptr [eax+14],0
>004EA513    jle         004EA51E
 004EA515    mov         eax,dword ptr [ebp+8]
 004EA518    mov         eax,dword ptr [eax-4]
 004EA51B    dec         dword ptr [eax+14]
 004EA51E    pop         ebx
 004EA51F    pop         ecx
 004EA520    pop         ebp
 004EA521    ret
end;*}

//004EA524
{*procedure sub_004EA524(?:ShortString; ?:?);
begin
 004EA524    push        ebp
 004EA525    mov         ebp,esp
 004EA527    add         esp,0FFFFFFEC
 004EA52A    push        ebx
 004EA52B    mov         dword ptr [ebp-4],eax
 004EA52E    mov         eax,dword ptr [ebp+8]
 004EA531    push        eax
 004EA532    call        004EA1E8
 004EA537    pop         ecx
 004EA538    mov         edx,dword ptr [ebp-4]
 004EA53B    add         edx,1E
 004EA53E    add         edx,4
 004EA541    mov         dword ptr [eax],edx
 004EA543    mov         eax,dword ptr [ebp+8]
 004EA546    push        eax
 004EA547    call        004EA1E8
 004EA54C    pop         ecx
 004EA54D    test        byte ptr [eax+6],1
>004EA551    je          004EA560
 004EA553    mov         eax,dword ptr [ebp+8]
 004EA556    push        eax
 004EA557    call        004EA1E8
 004EA55C    pop         ecx
 004EA55D    add         dword ptr [eax],0C
 004EA560    mov         eax,dword ptr [ebp+8]
 004EA563    push        eax
 004EA564    call        004EA1E8
 004EA569    pop         ecx
 004EA56A    test        byte ptr [eax+6],10
>004EA56E    je          004EA58C
 004EA570    mov         eax,dword ptr [ebp+8]
 004EA573    mov         eax,dword ptr [eax+8]
 004EA576    call        @LStrLen
 004EA57B    mov         ebx,eax
 004EA57D    add         ebx,4
 004EA580    mov         eax,dword ptr [ebp+8]
 004EA583    push        eax
 004EA584    call        004EA1E8
 004EA589    pop         ecx
 004EA58A    add         dword ptr [eax],ebx
 004EA58C    mov         eax,dword ptr [ebp+8]
 004EA58F    mov         eax,dword ptr [eax-4]
 004EA592    mov         edx,dword ptr [eax]
 004EA594    call        dword ptr [edx]
 004EA596    push        edx
 004EA597    push        eax
 004EA598    mov         eax,dword ptr [ebp+8]
 004EA59B    mov         eax,dword ptr [eax-4]
 004EA59E    call        TStream.SetPosition
 004EA5A3    mov         eax,dword ptr [ebp+8]
 004EA5A6    push        eax
 004EA5A7    call        004EA1E8
 004EA5AC    pop         ecx
 004EA5AD    test        byte ptr [eax+6],10
>004EA5B1    je          004EA605
 004EA5B3    mov         eax,dword ptr [ebp+8]
 004EA5B6    mov         eax,dword ptr [eax+8]
 004EA5B9    call        @LStrLen
 004EA5BE    push        eax
 004EA5BF    mov         eax,dword ptr [ebp+8]
 004EA5C2    mov         eax,dword ptr [eax+8]
 004EA5C5    call        @LStrToPChar
 004EA5CA    mov         edx,eax
 004EA5CC    mov         eax,dword ptr [ebp+8]
 004EA5CF    mov         eax,dword ptr [eax-4]
 004EA5D2    pop         ecx
 004EA5D3    mov         ebx,dword ptr [eax]
 004EA5D5    call        dword ptr [ebx+10]
 004EA5D8    mov         eax,dword ptr [ebp+8]
 004EA5DB    mov         eax,dword ptr [eax+8]
 004EA5DE    call        @LStrLen
 004EA5E3    mov         dword ptr [ebp-8],eax
 004EA5E6    lea         edx,[ebp-8]
 004EA5E9    mov         eax,dword ptr [ebp+8]
 004EA5EC    mov         eax,dword ptr [eax-4]
 004EA5EF    mov         ecx,4
 004EA5F4    mov         ebx,dword ptr [eax]
 004EA5F6    call        dword ptr [ebx+10]
 004EA5F9    mov         eax,dword ptr [ebp-4]
 004EA5FC    add         eax,dword ptr [ebp-8]
 004EA5FF    add         eax,4
 004EA602    mov         dword ptr [ebp-4],eax
 004EA605    mov         eax,dword ptr [ebp+8]
 004EA608    push        eax
 004EA609    call        004EA1E8
 004EA60E    pop         ecx
 004EA60F    test        byte ptr [eax+6],1
>004EA613    je          004EA662
 004EA615    mov         eax,dword ptr [ebp+8]
 004EA618    mov         eax,dword ptr [eax-4]
 004EA61B    mov         eax,dword ptr [eax+1C]
 004EA61E    mov         eax,dword ptr [eax+54C]
 004EA624    mov         dword ptr [ebp-14],eax
 004EA627    mov         eax,dword ptr [ebp+8]
 004EA62A    mov         eax,dword ptr [eax-4]
 004EA62D    mov         eax,dword ptr [eax+1C]
 004EA630    mov         eax,dword ptr [eax+554]
 004EA636    mov         dword ptr [ebp-10],eax
 004EA639    mov         eax,dword ptr [ebp+8]
 004EA63C    mov         eax,dword ptr [eax-4]
 004EA63F    mov         eax,dword ptr [eax+1C]
 004EA642    mov         eax,dword ptr [eax+550]
 004EA648    mov         dword ptr [ebp-0C],eax
 004EA64B    lea         edx,[ebp-14]
 004EA64E    mov         eax,dword ptr [ebp+8]
 004EA651    mov         eax,dword ptr [eax-4]
 004EA654    mov         ecx,0C
 004EA659    mov         ebx,dword ptr [eax]
 004EA65B    call        dword ptr [ebx+10]
 004EA65E    add         dword ptr [ebp-4],0C
 004EA662    add         dword ptr [ebp-4],22
 004EA666    lea         edx,[ebp-4]
 004EA669    mov         eax,dword ptr [ebp+8]
 004EA66C    mov         eax,dword ptr [eax-4]
 004EA66F    mov         ecx,4
 004EA674    mov         ebx,dword ptr [eax]
 004EA676    call        dword ptr [ebx+10]
 004EA679    pop         ebx
 004EA67A    mov         esp,ebp
 004EA67C    pop         ebp
 004EA67D    ret
end;*}

//004EA680
{*procedure sub_004EA680(?:TMPHUndoStorage; ?:?; ?:?; ?:?; ?:?; ?:?);
begin
 004EA680    push        ebp
 004EA681    mov         ebp,esp
 004EA683    add         esp,0FFFFFEEC
 004EA689    push        ebx
 004EA68A    mov         dword ptr [ebp-10],ecx
 004EA68D    mov         byte ptr [ebp-9],dl
 004EA690    mov         dword ptr [ebp-4],eax
 004EA693    mov         eax,dword ptr [ebp-4]
 004EA696    cmp         dword ptr [eax+18],1;TMPHUndoStorage.?f18:dword
>004EA69A    jge         004EAAE0
 004EA6A0    mov         eax,dword ptr [ebp-4]
 004EA6A3    call        004EBABC
 004EA6A8    cmp         dword ptr [ebp+8],0
>004EA6AC    je          004EA6BE
 004EA6AE    mov         eax,dword ptr [ebp-4]
 004EA6B1    add         eax,20;TMPHUndoStorage.?f20:String
 004EA6B4    mov         edx,dword ptr [ebp+8]
 004EA6B7    call        @LStrAsg
>004EA6BC    jmp         004EA6DE
 004EA6BE    mov         eax,dword ptr [ebp-4]
 004EA6C1    add         eax,20;TMPHUndoStorage.?f20:String
 004EA6C4    xor         edx,edx
 004EA6C6    mov         dl,byte ptr [ebp-9]
 004EA6C9    mov         edx,dword ptr [edx*4+56D084];gvar_0056D084:array[11] of ?
 004EA6D0    call        @LStrAsg
>004EA6D5    jmp         004EA6DE
 004EA6D7    push        ebp
 004EA6D8    call        004EA438
 004EA6DD    pop         ecx
 004EA6DE    mov         eax,dword ptr [ebp-4]
 004EA6E1    mov         eax,dword ptr [eax+1C];TMPHUndoStorage.?f1C:dword
 004EA6E4    cmp         dword ptr [eax+5CC],0
>004EA6EB    jle         004EA71F
 004EA6ED    mov         eax,dword ptr [ebp-4]
 004EA6F0    cmp         dword ptr [eax+14],0;TMPHUndoStorage.?f14:dword
>004EA6F4    jle         004EA71F
 004EA6F6    mov         eax,dword ptr [ebp-4]
 004EA6F9    mov         edx,dword ptr [eax]
 004EA6FB    call        dword ptr [edx];TMPHUndoStorage.sub_004235A0
 004EA6FD    push        edx
 004EA6FE    push        eax
 004EA6FF    mov         eax,dword ptr [ebp-4]
 004EA702    mov         eax,dword ptr [eax+1C];TMPHUndoStorage.?f1C:dword
 004EA705    mov         eax,dword ptr [eax+5CC]
 004EA70B    cdq
 004EA70C    cmp         edx,dword ptr [esp+4]
>004EA710    jne         004EA71B
 004EA712    cmp         eax,dword ptr [esp]
 004EA715    pop         edx
 004EA716    pop         eax
>004EA717    jb          004EA6D7
>004EA719    jmp         004EA71F
 004EA71B    pop         edx
 004EA71C    pop         eax
>004EA71D    jl          004EA6D7
 004EA71F    mov         eax,dword ptr [ebp-4]
 004EA722    mov         edx,dword ptr [eax]
 004EA724    call        dword ptr [edx];TMPHUndoStorage.sub_004235A0
 004EA726    push        edx
 004EA727    push        eax
 004EA728    mov         eax,dword ptr [ebp-4]
 004EA72B    call        TStream.SetPosition
 004EA730    mov         eax,dword ptr [ebp-4]
 004EA733    inc         dword ptr [eax+14];TMPHUndoStorage.?f14:dword
 004EA736    xor         eax,eax
 004EA738    mov         al,byte ptr [ebp-9]
 004EA73B    cmp         eax,0A
>004EA73E    ja          004EAAE0
 004EA744    jmp         dword ptr [eax*4+4EA74B]
 004EA744    dd          004EA777
 004EA744    dd          004EA7FB
 004EA744    dd          004EA84E
 004EA744    dd          004EA876
 004EA744    dd          004EA8CA
 004EA744    dd          004EA8E1
 004EA744    dd          004EA932
 004EA744    dd          004EA983
 004EA744    dd          004EA9C0
 004EA744    dd          004EAA64
 004EA744    dd          004EA9F2
 004EA777    push        ebp
 004EA778    mov         eax,dword ptr [ebp+10]
 004EA77B    dec         eax
 004EA77C    call        004EA208
 004EA781    pop         ecx
 004EA782    push        ebp
 004EA783    call        004EA1E8
 004EA788    pop         ecx
 004EA789    add         eax,1D
 004EA78C    mov         dword ptr [ebp-14],eax
 004EA78F    mov         eax,dword ptr [ebp+10]
 004EA792    push        eax
 004EA793    mov         edx,dword ptr [ebp-14]
 004EA796    mov         eax,dword ptr [ebp-4]
 004EA799    mov         eax,dword ptr [eax+1C];TMPHUndoStorage.?f1C:dword
 004EA79C    mov         ecx,dword ptr [ebp-10]
 004EA79F    call        004E8F70
 004EA7A4    mov         eax,dword ptr [ebp-4]
 004EA7A7    mov         eax,dword ptr [eax+1C];TMPHUndoStorage.?f1C:dword
 004EA7AA    mov         edx,dword ptr [ebp-10]
 004EA7AD    call        004E2940
 004EA7B2    test        al,al
>004EA7B4    je          004EA7C4
 004EA7B6    push        ebp
 004EA7B7    call        004EA1E8
 004EA7BC    pop         ecx
 004EA7BD    or          dword ptr [eax+4],800
 004EA7C4    cmp         dword ptr [ebp+10],2
>004EA7C8    jne         004EA7EB
 004EA7CA    mov         edx,dword ptr [ebp-10]
 004EA7CD    inc         edx
 004EA7CE    mov         eax,dword ptr [ebp-4]
 004EA7D1    mov         eax,dword ptr [eax+1C];TMPHUndoStorage.?f1C:dword
 004EA7D4    call        004E2940
 004EA7D9    test        al,al
>004EA7DB    je          004EA7EB
 004EA7DD    push        ebp
 004EA7DE    call        004EA1E8
 004EA7E3    pop         ecx
 004EA7E4    or          dword ptr [eax+4],1000
 004EA7EB    push        ebp
 004EA7EC    mov         eax,dword ptr [ebp+10]
 004EA7EF    dec         eax
 004EA7F0    call        004EA524
 004EA7F5    pop         ecx
>004EA7F6    jmp         004EAAE0
 004EA7FB    push        ebp
 004EA7FC    mov         eax,dword ptr [ebp+10]
 004EA7FF    dec         eax
 004EA800    call        004EA208
 004EA805    pop         ecx
 004EA806    push        ebp
 004EA807    call        004EA1E8
 004EA80C    pop         ecx
 004EA80D    add         eax,1D
 004EA810    mov         dword ptr [ebp-14],eax
 004EA813    mov         eax,dword ptr [ebp+10]
 004EA816    push        eax
 004EA817    mov         edx,dword ptr [ebp-14]
 004EA81A    mov         eax,dword ptr [ebp-4]
 004EA81D    mov         eax,dword ptr [eax+1C];TMPHUndoStorage.?f1C:dword
 004EA820    mov         ecx,dword ptr [ebp-10]
 004EA823    call        004E8F70
 004EA828    mov         ecx,dword ptr [ebp+10]
 004EA82B    neg         ecx
 004EA82D    mov         edx,dword ptr [ebp-10]
 004EA830    add         edx,dword ptr [ebp+10]
 004EA833    mov         eax,dword ptr [ebp-4]
 004EA836    mov         eax,dword ptr [eax+1C];TMPHUndoStorage.?f1C:dword
 004EA839    call        004E5E40
 004EA83E    push        ebp
 004EA83F    mov         eax,dword ptr [ebp+10]
 004EA842    dec         eax
 004EA843    call        004EA524
 004EA848    pop         ecx
>004EA849    jmp         004EAAE0
 004EA84E    push        ebp
 004EA84F    xor         eax,eax
 004EA851    call        004EA208
 004EA856    pop         ecx
 004EA857    mov         eax,dword ptr [ebp-4]
 004EA85A    mov         eax,dword ptr [eax+1C];TMPHUndoStorage.?f1C:dword
 004EA85D    mov         ecx,dword ptr [ebp+10]
 004EA860    mov         edx,dword ptr [ebp-10]
 004EA863    call        004E5E40
 004EA868    push        ebp
 004EA869    xor         eax,eax
 004EA86B    call        004EA524
 004EA870    pop         ecx
>004EA871    jmp         004EAAE0
 004EA876    push        ebp
 004EA877    mov         eax,dword ptr [ebp+0C]
 004EA87A    dec         eax
 004EA87B    call        004EA208
 004EA880    pop         ecx
 004EA881    push        ebp
 004EA882    call        004EA1E8
 004EA887    pop         ecx
 004EA888    add         eax,1D
 004EA88B    mov         dword ptr [ebp-14],eax
 004EA88E    mov         eax,dword ptr [ebp+0C]
 004EA891    push        eax
 004EA892    mov         edx,dword ptr [ebp-14]
 004EA895    mov         eax,dword ptr [ebp-4]
 004EA898    mov         eax,dword ptr [eax+1C];TMPHUndoStorage.?f1C:dword
 004EA89B    mov         ecx,dword ptr [ebp-10]
 004EA89E    call        004E8F70
 004EA8A3    mov         ecx,dword ptr [ebp+10]
 004EA8A6    sub         ecx,dword ptr [ebp+0C]
 004EA8A9    mov         edx,dword ptr [ebp-10]
 004EA8AC    add         edx,dword ptr [ebp+10]
 004EA8AF    mov         eax,dword ptr [ebp-4]
 004EA8B2    mov         eax,dword ptr [eax+1C];TMPHUndoStorage.?f1C:dword
 004EA8B5    call        004E5E40
 004EA8BA    push        ebp
 004EA8BB    mov         eax,dword ptr [ebp+0C]
 004EA8BE    dec         eax
 004EA8BF    call        004EA524
 004EA8C4    pop         ecx
>004EA8C5    jmp         004EAAE0
 004EA8CA    push        ebp
 004EA8CB    xor         eax,eax
 004EA8CD    call        004EA208
 004EA8D2    pop         ecx
 004EA8D3    push        ebp
 004EA8D4    xor         eax,eax
 004EA8D6    call        004EA524
 004EA8DB    pop         ecx
>004EA8DC    jmp         004EAAE0
 004EA8E1    push        ebp
 004EA8E2    xor         eax,eax
 004EA8E4    call        004EA208
 004EA8E9    pop         ecx
 004EA8EA    mov         eax,dword ptr [ebp-4]
 004EA8ED    mov         eax,dword ptr [eax+1C];TMPHUndoStorage.?f1C:dword
 004EA8F0    mov         edx,dword ptr [ebp-10]
 004EA8F3    call        004E8F14
 004EA8F8    mov         ebx,eax
 004EA8FA    push        ebp
 004EA8FB    call        004EA1E8
 004EA900    pop         ecx
 004EA901    mov         byte ptr [eax+1D],bl
 004EA904    mov         eax,dword ptr [ebp-4]
 004EA907    mov         eax,dword ptr [eax+1C];TMPHUndoStorage.?f1C:dword
 004EA90A    mov         edx,dword ptr [ebp-10]
 004EA90D    call        004E2940
 004EA912    test        al,al
>004EA914    je          004EA924
 004EA916    push        ebp
 004EA917    call        004EA1E8
 004EA91C    pop         ecx
 004EA91D    or          dword ptr [eax+4],800
 004EA924    push        ebp
 004EA925    xor         eax,eax
 004EA927    call        004EA524
 004EA92C    pop         ecx
>004EA92D    jmp         004EAAE0
 004EA932    push        ebp
 004EA933    xor         eax,eax
 004EA935    call        004EA208
 004EA93A    pop         ecx
 004EA93B    mov         eax,dword ptr [ebp-4]
 004EA93E    mov         eax,dword ptr [eax+1C];TMPHUndoStorage.?f1C:dword
 004EA941    mov         edx,dword ptr [ebp-10]
 004EA944    call        004E8F14
 004EA949    mov         ebx,eax
 004EA94B    push        ebp
 004EA94C    call        004EA1E8
 004EA951    pop         ecx
 004EA952    mov         byte ptr [eax+1D],bl
 004EA955    mov         eax,dword ptr [ebp-4]
 004EA958    mov         eax,dword ptr [eax+1C];TMPHUndoStorage.?f1C:dword
 004EA95B    mov         edx,dword ptr [ebp-10]
 004EA95E    call        004E2940
 004EA963    test        al,al
>004EA965    je          004EA975
 004EA967    push        ebp
 004EA968    call        004EA1E8
 004EA96D    pop         ecx
 004EA96E    or          dword ptr [eax+4],800
 004EA975    push        ebp
 004EA976    xor         eax,eax
 004EA978    call        004EA524
 004EA97D    pop         ecx
>004EA97E    jmp         004EAAE0
 004EA983    push        ebp
 004EA984    mov         eax,dword ptr [ebp+10]
 004EA987    dec         eax
 004EA988    call        004EA208
 004EA98D    pop         ecx
 004EA98E    push        ebp
 004EA98F    call        004EA1E8
 004EA994    pop         ecx
 004EA995    add         eax,1D
 004EA998    mov         dword ptr [ebp-14],eax
 004EA99B    mov         eax,dword ptr [ebp+10]
 004EA99E    push        eax
 004EA99F    mov         edx,dword ptr [ebp-14]
 004EA9A2    mov         eax,dword ptr [ebp-4]
 004EA9A5    mov         eax,dword ptr [eax+1C];TMPHUndoStorage.?f1C:dword
 004EA9A8    mov         ecx,dword ptr [ebp-10]
 004EA9AB    call        004E8F70
 004EA9B0    push        ebp
 004EA9B1    mov         eax,dword ptr [ebp+10]
 004EA9B4    dec         eax
 004EA9B5    call        004EA524
 004EA9BA    pop         ecx
>004EA9BB    jmp         004EAAE0
 004EA9C0    push        ebp
 004EA9C1    xor         eax,eax
 004EA9C3    call        004EA208
 004EA9C8    pop         ecx
 004EA9C9    push        ebp
 004EA9CA    call        004EA1E8
 004EA9CF    pop         ecx
 004EA9D0    mov         edx,dword ptr [ebp-10]
 004EA9D3    mov         dword ptr [eax+8],edx
 004EA9D6    push        ebp
 004EA9D7    xor         eax,eax
 004EA9D9    call        004EA524
 004EA9DE    pop         ecx
 004EA9DF    mov         ecx,dword ptr [ebp+10]
 004EA9E2    mov         edx,dword ptr [ebp-10]
 004EA9E5    mov         eax,dword ptr [ebp-4]
 004EA9E8    call        004EC014
>004EA9ED    jmp         004EAAE0
 004EA9F2    mov         eax,dword ptr [ebp-4]
 004EA9F5    mov         eax,dword ptr [eax+1C];TMPHUndoStorage.?f1C:dword
 004EA9F8    call        004E0588
 004EA9FD    mov         dword ptr [ebp+10],eax
 004EAA00    cmp         dword ptr [ebp+10],0
>004EAA04    jne         004EAA11
 004EAA06    push        ebp
 004EAA07    xor         eax,eax
 004EAA09    call        004EA208
 004EAA0E    pop         ecx
>004EAA0F    jmp         004EAA1C
 004EAA11    push        ebp
 004EAA12    mov         eax,dword ptr [ebp+10]
 004EAA15    dec         eax
 004EAA16    call        004EA208
 004EAA1B    pop         ecx
 004EAA1C    push        ebp
 004EAA1D    call        004EA1E8
 004EAA22    pop         ecx
 004EAA23    add         eax,1D
 004EAA26    mov         dword ptr [ebp-14],eax
 004EAA29    cmp         dword ptr [ebp+10],0
>004EAA2D    jle         004EAA43
 004EAA2F    mov         eax,dword ptr [ebp+10]
 004EAA32    push        eax
 004EAA33    mov         edx,dword ptr [ebp-14]
 004EAA36    mov         eax,dword ptr [ebp-4]
 004EAA39    mov         eax,dword ptr [eax+1C];TMPHUndoStorage.?f1C:dword
 004EAA3C    xor         ecx,ecx
 004EAA3E    call        004E8F70
 004EAA43    cmp         dword ptr [ebp+10],0
>004EAA47    jne         004EAA57
 004EAA49    push        ebp
 004EAA4A    xor         eax,eax
 004EAA4C    call        004EA524
 004EAA51    pop         ecx
>004EAA52    jmp         004EAAE0
 004EAA57    push        ebp
 004EAA58    mov         eax,dword ptr [ebp+10]
 004EAA5B    dec         eax
 004EAA5C    call        004EA524
 004EAA61    pop         ecx
>004EAA62    jmp         004EAAE0
 004EAA64    lea         eax,[ebp-114]
 004EAA6A    mov         edx,dword ptr [ebp+8]
 004EAA6D    mov         ecx,0FF
 004EAA72    call        @LStrToString
 004EAA77    push        ebp
 004EAA78    xor         eax,eax
 004EAA7A    mov         al,byte ptr [ebp-114]
 004EAA80    call        004EA208
 004EAA85    pop         ecx
 004EAA86    push        ebp
 004EAA87    call        004EA1E8
 004EAA8C    pop         ecx
 004EAA8D    mov         dl,byte ptr [ebp+10]
 004EAA90    mov         byte ptr [eax+1D],dl
 004EAA93    mov         eax,dword ptr [ebp-4]
 004EAA96    mov         eax,dword ptr [eax+1C];TMPHUndoStorage.?f1C:dword
 004EAA99    mov         edx,dword ptr [ebp-10]
 004EAA9C    call        004E2940
 004EAAA1    test        al,al
>004EAAA3    je          004EAAB3
 004EAAA5    push        ebp
 004EAAA6    call        004EA1E8
 004EAAAB    pop         ecx
 004EAAAC    or          dword ptr [eax+4],800
 004EAAB3    push        ebp
 004EAAB4    call        004EA1E8
 004EAAB9    pop         ecx
 004EAABA    lea         edx,[eax+1D]
 004EAABD    xor         ecx,ecx
 004EAABF    mov         cl,byte ptr [ebp-114]
 004EAAC5    inc         ecx
 004EAAC6    lea         eax,[ebp-114]
 004EAACC    call        Move
 004EAAD1    push        ebp
 004EAAD2    xor         eax,eax
 004EAAD4    mov         al,byte ptr [ebp-114]
 004EAADA    call        004EA524
 004EAADF    pop         ecx
 004EAAE0    pop         ebx
 004EAAE1    mov         esp,ebp
 004EAAE3    pop         ebp
 004EAAE4    ret         0C
end;*}

//004EAAE8
{*function sub_004EAAE8(?:TMPHUndoStorage):?;
begin
 004EAAE8    push        ebp
 004EAAE9    mov         ebp,esp
 004EAAEB    add         esp,0FFFFFFF8
 004EAAEE    mov         dword ptr [ebp-4],eax
 004EAAF1    mov         eax,dword ptr [ebp-4]
 004EAAF4    dec         dword ptr [eax+18];TMPHUndoStorage.?f18:dword
 004EAAF7    mov         eax,dword ptr [ebp-4]
 004EAAFA    cmp         dword ptr [eax+18],0;TMPHUndoStorage.?f18:dword
>004EAAFE    jge         004EAB08
 004EAB00    mov         eax,dword ptr [ebp-4]
 004EAB03    xor         edx,edx
 004EAB05    mov         dword ptr [eax+18],edx;TMPHUndoStorage.?f18:dword
 004EAB08    mov         eax,dword ptr [ebp-4]
 004EAB0B    mov         eax,dword ptr [eax+18];TMPHUndoStorage.?f18:dword
 004EAB0E    mov         dword ptr [ebp-8],eax
 004EAB11    mov         eax,dword ptr [ebp-8]
 004EAB14    pop         ecx
 004EAB15    pop         ecx
 004EAB16    pop         ebp
 004EAB17    ret
end;*}

//004EAB18
{*procedure sub_004EAB18(?:?; ?:?);
begin
 004EAB18    push        ebp
 004EAB19    mov         ebp,esp
 004EAB1B    add         esp,0FFFFFFE8
 004EAB1E    push        ebx
 004EAB1F    mov         dword ptr [ebp-4],eax
 004EAB22    lea         eax,[ebp-0C]
 004EAB25    push        eax
 004EAB26    mov         eax,dword ptr [ebp-4]
 004EAB29    test        byte ptr [eax+5],80
 004EAB2D    setne       cl
 004EAB30    mov         edx,dword ptr [ebp-4]
 004EAB33    mov         edx,dword ptr [edx+8]
 004EAB36    mov         eax,dword ptr [ebp+8]
 004EAB39    mov         eax,dword ptr [eax-4]
 004EAB3C    mov         eax,dword ptr [eax+1C]
 004EAB3F    call        004E1344
 004EAB44    mov         eax,dword ptr [ebp-4]
 004EAB47    test        byte ptr [eax+5],80
>004EAB4B    jne         004EAB6B
 004EAB4D    mov         eax,dword ptr [ebp+8]
 004EAB50    mov         eax,dword ptr [eax-4]
 004EAB53    mov         eax,dword ptr [eax+1C]
 004EAB56    call        004E0588
 004EAB5B    test        eax,eax
>004EAB5D    jle         004EAB6B
 004EAB5F    mov         eax,dword ptr [ebp-4]
 004EAB62    test        byte ptr [eax+5],40
>004EAB66    je          004EAB6B
 004EAB68    inc         dword ptr [ebp-0C]
 004EAB6B    push        1
 004EAB6D    push        1
 004EAB6F    mov         eax,dword ptr [ebp+8]
 004EAB72    mov         eax,dword ptr [eax-4]
 004EAB75    mov         eax,dword ptr [eax+1C]
 004EAB78    mov         ecx,dword ptr [ebp-8]
 004EAB7B    mov         edx,dword ptr [ebp-0C]
 004EAB7E    call        004D8CCC
 004EAB83    mov         eax,dword ptr [ebp-4]
 004EAB86    test        byte ptr [eax+5],20
 004EAB8A    setne       al
 004EAB8D    mov         edx,dword ptr [ebp+8]
 004EAB90    mov         edx,dword ptr [edx-4]
 004EAB93    mov         edx,dword ptr [edx+1C]
 004EAB96    mov         byte ptr [edx+67D],al
 004EAB9C    mov         eax,dword ptr [ebp-4]
 004EAB9F    test        byte ptr [eax+6],2
 004EABA3    setne       dl
 004EABA6    mov         eax,dword ptr [ebp+8]
 004EABA9    mov         eax,dword ptr [eax-4]
 004EABAC    mov         eax,dword ptr [eax+1C]
 004EABAF    call        TMPHexEditorEx.SetInsertMode
 004EABB4    mov         eax,dword ptr [ebp-4]
 004EABB7    test        byte ptr [eax+6],1
>004EABBB    je          004EAC26
 004EABBD    mov         eax,dword ptr [ebp+8]
 004EABC0    mov         eax,dword ptr [eax-4]
 004EABC3    mov         edx,dword ptr [eax]
 004EABC5    call        dword ptr [edx]
 004EABC7    sub         eax,4
 004EABCA    sbb         edx,0
 004EABCD    sub         eax,0C
 004EABD0    sbb         edx,0
 004EABD3    push        edx
 004EABD4    push        eax
 004EABD5    mov         eax,dword ptr [ebp+8]
 004EABD8    mov         eax,dword ptr [eax-4]
 004EABDB    call        TStream.SetPosition
 004EABE0    lea         edx,[ebp-18]
 004EABE3    mov         eax,dword ptr [ebp+8]
 004EABE6    mov         eax,dword ptr [eax-4]
 004EABE9    mov         ecx,0C
 004EABEE    mov         ebx,dword ptr [eax]
 004EABF0    call        dword ptr [ebx+0C]
 004EABF3    cmp         dword ptr [ebp-14],0FFFFFFFF
>004EABF7    jne         004EAC0E
 004EABF9    mov         eax,dword ptr [ebp+8]
 004EABFC    mov         eax,dword ptr [eax-4]
 004EABFF    mov         eax,dword ptr [eax+1C]
 004EAC02    xor         ecx,ecx
 004EAC04    mov         edx,dword ptr [ebp-18]
 004EAC07    call        004E50E0
>004EAC0C    jmp         004EAC26
 004EAC0E    mov         eax,dword ptr [ebp-14]
 004EAC11    push        eax
 004EAC12    mov         eax,dword ptr [ebp+8]
 004EAC15    mov         eax,dword ptr [eax-4]
 004EAC18    mov         eax,dword ptr [eax+1C]
 004EAC1B    mov         ecx,dword ptr [ebp-18]
 004EAC1E    mov         edx,dword ptr [ebp-10]
 004EAC21    call        004E6110
 004EAC26    mov         eax,dword ptr [ebp-4]
 004EAC29    test        byte ptr [eax+6],4
 004EAC2D    setne       dl
 004EAC30    mov         eax,dword ptr [ebp+8]
 004EAC33    mov         eax,dword ptr [eax-4]
 004EAC36    mov         eax,dword ptr [eax+1C]
 004EAC39    call        TMPHexEditorEx.SetUnicodeChars
 004EAC3E    mov         eax,dword ptr [ebp-4]
 004EAC41    test        byte ptr [eax+6],8
 004EAC45    setne       dl
 004EAC48    mov         eax,dword ptr [ebp+8]
 004EAC4B    mov         eax,dword ptr [eax-4]
 004EAC4E    mov         eax,dword ptr [eax+1C]
 004EAC51    call        TMPHexEditorEx.SetUnicodeBigEndian
 004EAC56    mov         eax,dword ptr [ebp+8]
 004EAC59    mov         eax,dword ptr [eax-4]
 004EAC5C    mov         eax,dword ptr [eax+1C]
 004EAC5F    cmp         byte ptr [eax+61C],0
>004EAC66    jne         004EAC7E
 004EAC68    mov         edx,dword ptr [ebp-4]
 004EAC6B    mov         dl,byte ptr [edx+18]
 004EAC6E    mov         eax,dword ptr [ebp+8]
 004EAC71    mov         eax,dword ptr [eax-4]
 004EAC74    mov         eax,dword ptr [eax+1C]
 004EAC77    call        TMPHexEditorEx.SetTranslation
>004EAC7C    jmp         004EAC93
 004EAC7E    mov         eax,dword ptr [ebp-4]
 004EAC81    mov         al,byte ptr [eax+18]
 004EAC84    mov         edx,dword ptr [ebp+8]
 004EAC87    mov         edx,dword ptr [edx-4]
 004EAC8A    mov         edx,dword ptr [edx+1C]
 004EAC8D    mov         byte ptr [edx+55C],al
 004EAC93    mov         edx,dword ptr [ebp-4]
 004EAC96    mov         edx,dword ptr [edx+19]
 004EAC99    mov         eax,dword ptr [ebp+8]
 004EAC9C    mov         eax,dword ptr [eax-4]
 004EAC9F    mov         eax,dword ptr [eax+1C]
 004EACA2    call        TMPHexEditorEx.SetBytesPerUnit
 004EACA7    mov         eax,dword ptr [ebp+8]
 004EACAA    mov         eax,dword ptr [eax-4]
 004EACAD    mov         eax,dword ptr [eax+1C]
 004EACB0    mov         edx,dword ptr [eax]
 004EACB2    call        dword ptr [edx+7C]
 004EACB5    mov         eax,dword ptr [ebp+8]
 004EACB8    mov         eax,dword ptr [eax-4]
 004EACBB    mov         eax,dword ptr [eax+1C]
 004EACBE    mov         edx,dword ptr [eax]
 004EACC0    call        dword ptr [edx+0EC]
 004EACC6    pop         ebx
 004EACC7    mov         esp,ebp
 004EACC9    pop         ebp
 004EACCA    ret
end;*}

//004EACCC
{*function sub_004EACCC(?:?):?;
begin
 004EACCC    push        ebp
 004EACCD    mov         ebp,esp
 004EACCF    add         esp,0FFFFFFCC
 004EACD2    push        ebx
 004EACD3    xor         edx,edx
 004EACD5    mov         dword ptr [ebp-10],edx
 004EACD8    mov         dword ptr [ebp-4],eax
 004EACDB    xor         eax,eax
 004EACDD    push        ebp
 004EACDE    push        4EB310
 004EACE3    push        dword ptr fs:[eax]
 004EACE6    mov         dword ptr fs:[eax],esp
 004EACE9    mov         byte ptr [ebp-5],0
 004EACED    mov         eax,dword ptr [ebp-4]
 004EACF0    call        004EA1A8
 004EACF5    test        al,al
>004EACF7    jne         004EAD08
 004EACF9    xor         edx,edx
 004EACFB    mov         eax,dword ptr [ebp-4]
 004EACFE    call        004EB4F0
>004EAD03    jmp         004EB2FA
 004EAD08    mov         eax,dword ptr [ebp-4]
 004EAD0B    mov         edx,dword ptr [eax]
 004EAD0D    call        dword ptr [edx]
 004EAD0F    cmp         edx,0
>004EAD12    jne         004EAD1F
 004EAD14    cmp         eax,1E
>004EAD17    jb          004EB2F0
>004EAD1D    jmp         004EAD25
>004EAD1F    jl          004EB2F0
 004EAD25    lea         ecx,[ebp-10]
 004EAD28    lea         edx,[ebp-32]
 004EAD2B    mov         eax,dword ptr [ebp-4]
 004EAD2E    call        004EC16C
 004EAD33    mov         byte ptr [ebp-6],al
 004EAD36    lea         edx,[ebp-32]
 004EAD39    mov         eax,dword ptr [ebp-4]
 004EAD3C    call        004EBD94
 004EAD41    xor         eax,eax
 004EAD43    mov         al,byte ptr [ebp-6]
 004EAD46    cmp         eax,0A
>004EAD49    ja          004EB2FA
 004EAD4F    jmp         dword ptr [eax*4+4EAD56]
 004EAD4F    dd          004EAD82
 004EAD4F    dd          004EAE00
 004EAD4F    dd          004EAE94
 004EAD4F    dd          004EAF95
 004EAD4F    dd          004EB060
 004EAD4F    dd          004EB0DD
 004EAD4F    dd          004EB191
 004EAD4F    dd          004EB245
 004EAD4F    dd          004EAF09
 004EAD4F    dd          004EB2B7
 004EAD4F    dd          004EAF20
 004EAD82    mov         eax,dword ptr [ebp-22]
 004EAD85    push        eax
 004EAD86    mov         eax,dword ptr [ebp-4]
 004EAD89    call        TStream.GetPosition
 004EAD8E    sub         eax,1
 004EAD91    sbb         edx,0
 004EAD94    mov         edx,dword ptr [ebp-4]
 004EAD97    mov         edx,dword ptr [edx+4]
 004EAD9A    add         edx,eax
 004EAD9C    mov         eax,dword ptr [ebp-4]
 004EAD9F    mov         eax,dword ptr [eax+1C]
 004EADA2    mov         ecx,dword ptr [ebp-26]
 004EADA5    mov         ebx,dword ptr [eax]
 004EADA7    call        dword ptr [ebx+10C]
 004EADAD    test        byte ptr [ebp-2D],8
 004EADB1    setne       cl
 004EADB4    mov         eax,dword ptr [ebp-4]
 004EADB7    mov         eax,dword ptr [eax+1C]
 004EADBA    mov         edx,dword ptr [ebp-26]
 004EADBD    call        004E49E8
 004EADC2    cmp         dword ptr [ebp-22],2
>004EADC6    jne         004EADDE
 004EADC8    test        byte ptr [ebp-2D],10
 004EADCC    setne       cl
 004EADCF    mov         edx,dword ptr [ebp-26]
 004EADD2    inc         edx
 004EADD3    mov         eax,dword ptr [ebp-4]
 004EADD6    mov         eax,dword ptr [eax+1C]
 004EADD9    call        004E49E8
 004EADDE    push        ebp
 004EADDF    lea         eax,[ebp-32]
 004EADE2    call        004EAB18
 004EADE7    pop         ecx
 004EADE8    mov         eax,dword ptr [ebp-4]
 004EADEB    mov         eax,dword ptr [eax+1C]
 004EADEE    mov         edx,dword ptr [eax]
 004EADF0    call        dword ptr [edx+7C]
 004EADF3    mov         eax,dword ptr [ebp-4]
 004EADF6    call        004EB320
>004EADFB    jmp         004EB2FA
 004EAE00    mov         eax,dword ptr [ebp-26]
 004EAE03    push        eax
 004EAE04    mov         eax,dword ptr [ebp-4]
 004EAE07    call        TStream.GetPosition
 004EAE0C    push        edx
 004EAE0D    push        eax
 004EAE0E    mov         eax,dword ptr [ebp-4]
 004EAE11    mov         eax,dword ptr [eax+4]
 004EAE14    xor         edx,edx
 004EAE16    add         eax,dword ptr [esp]
 004EAE19    adc         edx,dword ptr [esp+4]
 004EAE1D    add         esp,8
 004EAE20    sub         eax,1
 004EAE23    sbb         edx,0
 004EAE26    mov         edx,eax
 004EAE28    mov         eax,dword ptr [ebp-4]
 004EAE2B    mov         eax,dword ptr [eax+1C]
 004EAE2E    mov         ecx,dword ptr [ebp-22]
 004EAE31    call        004E45C4
 004EAE36    push        ebp
 004EAE37    lea         eax,[ebp-32]
 004EAE3A    call        004EAB18
 004EAE3F    pop         ecx
 004EAE40    mov         edx,dword ptr [ebp-26]
 004EAE43    sub         edx,dword ptr [ebp-22]
 004EAE46    mov         eax,dword ptr [ebp-4]
 004EAE49    mov         eax,dword ptr [eax+1C]
 004EAE4C    mov         ecx,dword ptr [ebp-22]
 004EAE4F    call        004E5E40
 004EAE54    mov         eax,dword ptr [ebp-4]
 004EAE57    mov         eax,dword ptr [eax+1C]
 004EAE5A    mov         eax,dword ptr [eax+4F8]
 004EAE60    mov         eax,dword ptr [eax+4]
 004EAE63    cmp         eax,dword ptr [ebp-26]
>004EAE66    jb          004EAE7C
 004EAE68    mov         eax,dword ptr [ebp-4]
 004EAE6B    mov         eax,dword ptr [eax+1C]
 004EAE6E    mov         eax,dword ptr [eax+4F8]
 004EAE74    mov         edx,dword ptr [ebp-26]
 004EAE77    call        TBits.SetSize
 004EAE7C    mov         eax,dword ptr [ebp-4]
 004EAE7F    mov         eax,dword ptr [eax+1C]
 004EAE82    mov         edx,dword ptr [eax]
 004EAE84    call        dword ptr [edx+7C]
 004EAE87    mov         eax,dword ptr [ebp-4]
 004EAE8A    call        004EB320
>004EAE8F    jmp         004EB2FA
 004EAE94    push        0FF
 004EAE96    push        0
 004EAE98    mov         ecx,dword ptr [ebp-26]
 004EAE9B    add         ecx,dword ptr [ebp-22]
 004EAE9E    mov         eax,dword ptr [ebp-4]
 004EAEA1    mov         eax,dword ptr [eax+1C]
 004EAEA4    mov         edx,dword ptr [ebp-26]
 004EAEA7    call        004E3AE0
 004EAEAC    push        ebp
 004EAEAD    lea         eax,[ebp-32]
 004EAEB0    call        004EAB18
 004EAEB5    pop         ecx
 004EAEB6    mov         ecx,dword ptr [ebp-22]
 004EAEB9    neg         ecx
 004EAEBB    mov         eax,dword ptr [ebp-4]
 004EAEBE    mov         eax,dword ptr [eax+1C]
 004EAEC1    mov         edx,dword ptr [ebp-26]
 004EAEC4    call        004E5E40
 004EAEC9    mov         eax,dword ptr [ebp-4]
 004EAECC    mov         eax,dword ptr [eax+1C]
 004EAECF    mov         eax,dword ptr [eax+4F8]
 004EAED5    mov         eax,dword ptr [eax+4]
 004EAED8    cmp         eax,dword ptr [ebp-26]
>004EAEDB    jb          004EAEF1
 004EAEDD    mov         eax,dword ptr [ebp-4]
 004EAEE0    mov         eax,dword ptr [eax+1C]
 004EAEE3    mov         eax,dword ptr [eax+4F8]
 004EAEE9    mov         edx,dword ptr [ebp-26]
 004EAEEC    call        TBits.SetSize
 004EAEF1    mov         eax,dword ptr [ebp-4]
 004EAEF4    mov         eax,dword ptr [eax+1C]
 004EAEF7    mov         edx,dword ptr [eax]
 004EAEF9    call        dword ptr [edx+7C]
 004EAEFC    mov         eax,dword ptr [ebp-4]
 004EAEFF    call        004EB320
>004EAF04    jmp         004EB2FA
 004EAF09    push        ebp
 004EAF0A    lea         eax,[ebp-32]
 004EAF0D    call        004EAB18
 004EAF12    pop         ecx
 004EAF13    mov         eax,dword ptr [ebp-4]
 004EAF16    call        004EB320
>004EAF1B    jmp         004EB2FA
 004EAF20    mov         eax,dword ptr [ebp-22]
 004EAF23    xor         edx,edx
 004EAF25    push        edx
 004EAF26    push        eax
 004EAF27    mov         eax,dword ptr [ebp-4]
 004EAF2A    mov         eax,dword ptr [eax+1C]
 004EAF2D    mov         eax,dword ptr [eax+4E0]
 004EAF33    call        004235FC
 004EAF38    mov         eax,dword ptr [ebp-22]
 004EAF3B    push        eax
 004EAF3C    mov         eax,dword ptr [ebp-4]
 004EAF3F    call        TStream.GetPosition
 004EAF44    push        edx
 004EAF45    push        eax
 004EAF46    mov         eax,dword ptr [ebp-4]
 004EAF49    mov         eax,dword ptr [eax+4]
 004EAF4C    xor         edx,edx
 004EAF4E    add         eax,dword ptr [esp]
 004EAF51    adc         edx,dword ptr [esp+4]
 004EAF55    add         esp,8
 004EAF58    sub         eax,1
 004EAF5B    sbb         edx,0
 004EAF5E    mov         edx,eax
 004EAF60    mov         eax,dword ptr [ebp-4]
 004EAF63    mov         eax,dword ptr [eax+1C]
 004EAF66    mov         eax,dword ptr [eax+4E0]
 004EAF6C    xor         ecx,ecx
 004EAF6E    call        004EC3E0
 004EAF73    mov         eax,dword ptr [ebp-4]
 004EAF76    mov         eax,dword ptr [eax+1C]
 004EAF79    call        004E0AC0
 004EAF7E    push        ebp
 004EAF7F    lea         eax,[ebp-32]
 004EAF82    call        004EAB18
 004EAF87    pop         ecx
 004EAF88    mov         eax,dword ptr [ebp-4]
 004EAF8B    call        004EB320
>004EAF90    jmp         004EB2FA
 004EAF95    push        0FF
 004EAF97    push        0
 004EAF99    mov         ecx,dword ptr [ebp-26]
 004EAF9C    add         ecx,dword ptr [ebp-22]
 004EAF9F    mov         eax,dword ptr [ebp-4]
 004EAFA2    mov         eax,dword ptr [eax+1C]
 004EAFA5    mov         edx,dword ptr [ebp-26]
 004EAFA8    call        004E3AE0
 004EAFAD    mov         eax,dword ptr [ebp-26]
 004EAFB0    push        eax
 004EAFB1    mov         eax,dword ptr [ebp-4]
 004EAFB4    call        TStream.GetPosition
 004EAFB9    push        edx
 004EAFBA    push        eax
 004EAFBB    mov         eax,dword ptr [ebp-4]
 004EAFBE    mov         eax,dword ptr [eax+4]
 004EAFC1    xor         edx,edx
 004EAFC3    add         eax,dword ptr [esp]
 004EAFC6    adc         edx,dword ptr [esp+4]
 004EAFCA    add         esp,8
 004EAFCD    sub         eax,1
 004EAFD0    sbb         edx,0
 004EAFD3    mov         edx,eax
 004EAFD5    mov         eax,dword ptr [ebp-4]
 004EAFD8    mov         eax,dword ptr [eax+1C]
 004EAFDB    mov         ecx,dword ptr [ebp-1E]
 004EAFDE    call        004E45C4
 004EAFE3    push        ebp
 004EAFE4    lea         eax,[ebp-32]
 004EAFE7    call        004EAB18
 004EAFEC    pop         ecx
 004EAFED    mov         ecx,dword ptr [ebp-1E]
 004EAFF0    sub         ecx,dword ptr [ebp-22]
 004EAFF3    mov         edx,dword ptr [ebp-26]
 004EAFF6    add         edx,dword ptr [ebp-1E]
 004EAFF9    mov         eax,dword ptr [ebp-4]
 004EAFFC    mov         eax,dword ptr [eax+1C]
 004EAFFF    call        004E5E40
 004EB004    mov         eax,dword ptr [ebp-4]
 004EB007    mov         eax,dword ptr [eax+1C]
 004EB00A    mov         eax,dword ptr [eax+4F8]
 004EB010    mov         eax,dword ptr [eax+4]
 004EB013    cmp         eax,dword ptr [ebp-26]
>004EB016    jb          004EB048
 004EB018    cmp         dword ptr [ebp-26],0
>004EB01C    jbe         004EB035
 004EB01E    mov         edx,dword ptr [ebp-26]
 004EB021    dec         edx
 004EB022    mov         eax,dword ptr [ebp-4]
 004EB025    mov         eax,dword ptr [eax+1C]
 004EB028    mov         eax,dword ptr [eax+4F8]
 004EB02E    call        TBits.SetSize
>004EB033    jmp         004EB048
 004EB035    mov         eax,dword ptr [ebp-4]
 004EB038    mov         eax,dword ptr [eax+1C]
 004EB03B    mov         eax,dword ptr [eax+4F8]
 004EB041    xor         edx,edx
 004EB043    call        TBits.SetSize
 004EB048    mov         eax,dword ptr [ebp-4]
 004EB04B    mov         eax,dword ptr [eax+1C]
 004EB04E    mov         edx,dword ptr [eax]
 004EB050    call        dword ptr [edx+7C]
 004EB053    mov         eax,dword ptr [ebp-4]
 004EB056    call        004EB320
>004EB05B    jmp         004EB2FA
 004EB060    mov         eax,dword ptr [ebp-4]
 004EB063    mov         eax,dword ptr [eax+1C]
 004EB066    mov         edx,2
 004EB06B    call        004DD59C
 004EB070    mov         eax,dword ptr [ebp-26]
 004EB073    xor         edx,edx
 004EB075    push        edx
 004EB076    push        eax
 004EB077    mov         eax,dword ptr [ebp-4]
 004EB07A    mov         eax,dword ptr [eax+1C]
 004EB07D    mov         eax,dword ptr [eax+4E0]
 004EB083    call        004235FC
 004EB088    mov         eax,dword ptr [ebp-4]
 004EB08B    mov         eax,dword ptr [eax+1C]
 004EB08E    call        004E0AC0
 004EB093    mov         eax,dword ptr [ebp-4]
 004EB096    mov         eax,dword ptr [eax+1C]
 004EB099    mov         eax,dword ptr [eax+4F8]
 004EB09F    mov         eax,dword ptr [eax+4]
 004EB0A2    cmp         eax,dword ptr [ebp-26]
>004EB0A5    jb          004EB0BB
 004EB0A7    mov         eax,dword ptr [ebp-4]
 004EB0AA    mov         eax,dword ptr [eax+1C]
 004EB0AD    mov         eax,dword ptr [eax+4F8]
 004EB0B3    mov         edx,dword ptr [ebp-26]
 004EB0B6    call        TBits.SetSize
 004EB0BB    push        ebp
 004EB0BC    lea         eax,[ebp-32]
 004EB0BF    call        004EAB18
 004EB0C4    pop         ecx
 004EB0C5    mov         eax,dword ptr [ebp-4]
 004EB0C8    mov         eax,dword ptr [eax+1C]
 004EB0CB    mov         edx,dword ptr [eax]
 004EB0CD    call        dword ptr [edx+7C]
 004EB0D0    mov         eax,dword ptr [ebp-4]
 004EB0D3    call        004EB320
>004EB0D8    jmp         004EB2FA
 004EB0DD    mov         eax,dword ptr [ebp-4]
 004EB0E0    mov         eax,dword ptr [eax+1C]
 004EB0E3    xor         ecx,ecx
 004EB0E5    mov         edx,dword ptr [ebp-26]
 004EB0E8    call        004E38A8
 004EB0ED    mov         eax,dword ptr [ebp-4]
 004EB0F0    mov         eax,dword ptr [eax+1C]
 004EB0F3    mov         cl,byte ptr [ebp-15]
 004EB0F6    mov         edx,dword ptr [ebp-26]
 004EB0F9    call        004E8F3C
 004EB0FE    test        byte ptr [ebp-2D],8
 004EB102    setne       cl
 004EB105    mov         eax,dword ptr [ebp-4]
 004EB108    mov         eax,dword ptr [eax+1C]
 004EB10B    mov         edx,dword ptr [ebp-26]
 004EB10E    call        004E49E8
 004EB113    push        ebp
 004EB114    lea         eax,[ebp-32]
 004EB117    call        004EAB18
 004EB11C    pop         ecx
 004EB11D    mov         eax,dword ptr [ebp-4]
 004EB120    mov         eax,dword ptr [eax+1C]
 004EB123    mov         eax,dword ptr [eax+4F8]
 004EB129    mov         eax,dword ptr [eax+4]
 004EB12C    cmp         eax,dword ptr [ebp-26]
>004EB12F    jb          004EB145
 004EB131    mov         eax,dword ptr [ebp-4]
 004EB134    mov         eax,dword ptr [eax+1C]
 004EB137    mov         eax,dword ptr [eax+4F8]
 004EB13D    mov         edx,dword ptr [ebp-26]
 004EB140    call        TBits.SetSize
 004EB145    mov         eax,dword ptr [ebp-4]
 004EB148    mov         eax,dword ptr [eax+1C]
 004EB14B    mov         eax,dword ptr [eax+4E0]
 004EB151    mov         edx,dword ptr [eax]
 004EB153    call        dword ptr [edx]
 004EB155    sub         eax,1
 004EB158    sbb         edx,0
 004EB15B    push        edx
 004EB15C    push        eax
 004EB15D    mov         eax,dword ptr [ebp-4]
 004EB160    mov         eax,dword ptr [eax+1C]
 004EB163    mov         eax,dword ptr [eax+4E0]
 004EB169    call        004235FC
 004EB16E    mov         eax,dword ptr [ebp-4]
 004EB171    mov         eax,dword ptr [eax+1C]
 004EB174    call        004E0AC0
 004EB179    mov         eax,dword ptr [ebp-4]
 004EB17C    mov         eax,dword ptr [eax+1C]
 004EB17F    mov         edx,dword ptr [eax]
 004EB181    call        dword ptr [edx+7C]
 004EB184    mov         eax,dword ptr [ebp-4]
 004EB187    call        004EB320
>004EB18C    jmp         004EB2FA
 004EB191    mov         eax,dword ptr [ebp-4]
 004EB194    mov         eax,dword ptr [eax+1C]
 004EB197    xor         ecx,ecx
 004EB199    mov         edx,dword ptr [ebp-26]
 004EB19C    call        004E3650
 004EB1A1    mov         eax,dword ptr [ebp-4]
 004EB1A4    mov         eax,dword ptr [eax+1C]
 004EB1A7    mov         cl,byte ptr [ebp-15]
 004EB1AA    mov         edx,dword ptr [ebp-26]
 004EB1AD    call        004E8F3C
 004EB1B2    test        byte ptr [ebp-2D],8
 004EB1B6    setne       cl
 004EB1B9    mov         eax,dword ptr [ebp-4]
 004EB1BC    mov         eax,dword ptr [eax+1C]
 004EB1BF    mov         edx,dword ptr [ebp-26]
 004EB1C2    call        004E49E8
 004EB1C7    push        ebp
 004EB1C8    lea         eax,[ebp-32]
 004EB1CB    call        004EAB18
 004EB1D0    pop         ecx
 004EB1D1    mov         eax,dword ptr [ebp-4]
 004EB1D4    mov         eax,dword ptr [eax+1C]
 004EB1D7    mov         eax,dword ptr [eax+4F8]
 004EB1DD    mov         eax,dword ptr [eax+4]
 004EB1E0    cmp         eax,dword ptr [ebp-26]
>004EB1E3    jb          004EB1F9
 004EB1E5    mov         eax,dword ptr [ebp-4]
 004EB1E8    mov         eax,dword ptr [eax+1C]
 004EB1EB    mov         eax,dword ptr [eax+4F8]
 004EB1F1    mov         edx,dword ptr [ebp-26]
 004EB1F4    call        TBits.SetSize
 004EB1F9    mov         eax,dword ptr [ebp-4]
 004EB1FC    mov         eax,dword ptr [eax+1C]
 004EB1FF    mov         eax,dword ptr [eax+4E0]
 004EB205    mov         edx,dword ptr [eax]
 004EB207    call        dword ptr [edx]
 004EB209    sub         eax,1
 004EB20C    sbb         edx,0
 004EB20F    push        edx
 004EB210    push        eax
 004EB211    mov         eax,dword ptr [ebp-4]
 004EB214    mov         eax,dword ptr [eax+1C]
 004EB217    mov         eax,dword ptr [eax+4E0]
 004EB21D    call        004235FC
 004EB222    mov         eax,dword ptr [ebp-4]
 004EB225    mov         eax,dword ptr [eax+1C]
 004EB228    call        004E0AC0
 004EB22D    mov         eax,dword ptr [ebp-4]
 004EB230    mov         eax,dword ptr [eax+1C]
 004EB233    mov         edx,dword ptr [eax]
 004EB235    call        dword ptr [edx+7C]
 004EB238    mov         eax,dword ptr [ebp-4]
 004EB23B    call        004EB320
>004EB240    jmp         004EB2FA
 004EB245    mov         eax,dword ptr [ebp-22]
 004EB248    push        eax
 004EB249    mov         eax,dword ptr [ebp-4]
 004EB24C    call        TStream.GetPosition
 004EB251    sub         eax,1
 004EB254    sbb         edx,0
 004EB257    mov         edx,dword ptr [ebp-4]
 004EB25A    mov         edx,dword ptr [edx+4]
 004EB25D    add         edx,eax
 004EB25F    mov         eax,dword ptr [ebp-4]
 004EB262    mov         eax,dword ptr [eax+1C]
 004EB265    mov         ecx,dword ptr [ebp-26]
 004EB268    mov         ebx,dword ptr [eax]
 004EB26A    call        dword ptr [ebx+10C]
 004EB270    push        ebp
 004EB271    lea         eax,[ebp-32]
 004EB274    call        004EAB18
 004EB279    pop         ecx
 004EB27A    mov         eax,dword ptr [ebp-4]
 004EB27D    mov         eax,dword ptr [eax+1C]
 004EB280    mov         eax,dword ptr [eax+4F8]
 004EB286    mov         eax,dword ptr [eax+4]
 004EB289    cmp         eax,dword ptr [ebp-26]
>004EB28C    jb          004EB2A2
 004EB28E    mov         eax,dword ptr [ebp-4]
 004EB291    mov         eax,dword ptr [eax+1C]
 004EB294    mov         eax,dword ptr [eax+4F8]
 004EB29A    mov         edx,dword ptr [ebp-26]
 004EB29D    call        TBits.SetSize
 004EB2A2    mov         eax,dword ptr [ebp-4]
 004EB2A5    mov         eax,dword ptr [eax+1C]
 004EB2A8    mov         edx,dword ptr [eax]
 004EB2AA    call        dword ptr [edx+7C]
 004EB2AD    mov         eax,dword ptr [ebp-4]
 004EB2B0    call        004EB320
>004EB2B5    jmp         004EB2FA
 004EB2B7    mov         eax,dword ptr [ebp-22]
 004EB2BA    mov         dword ptr [ebp-0C],eax
 004EB2BD    mov         eax,dword ptr [ebp-4]
 004EB2C0    call        004EB320
 004EB2C5    mov         eax,dword ptr [ebp-0C]
 004EB2C8    test        eax,eax
>004EB2CA    jle         004EB2E6
 004EB2CC    mov         dword ptr [ebp-14],eax
 004EB2CF    mov         dword ptr [ebp-0C],1
 004EB2D6    mov         eax,dword ptr [ebp-4]
 004EB2D9    call        004EACCC
 004EB2DE    inc         dword ptr [ebp-0C]
 004EB2E1    dec         dword ptr [ebp-14]
>004EB2E4    jne         004EB2D6
 004EB2E6    mov         eax,dword ptr [ebp-4]
 004EB2E9    call        004EBABC
>004EB2EE    jmp         004EB2FA
 004EB2F0    mov         dl,1
 004EB2F2    mov         eax,dword ptr [ebp-4]
 004EB2F5    call        004EB4F0
 004EB2FA    xor         eax,eax
 004EB2FC    pop         edx
 004EB2FD    pop         ecx
 004EB2FE    pop         ecx
 004EB2FF    mov         dword ptr fs:[eax],edx
 004EB302    push        4EB317
 004EB307    lea         eax,[ebp-10]
 004EB30A    call        @LStrClr
 004EB30F    ret
>004EB310    jmp         @HandleFinally
>004EB315    jmp         004EB307
 004EB317    mov         al,byte ptr [ebp-5]
 004EB31A    pop         ebx
 004EB31B    mov         esp,ebp
 004EB31D    pop         ebp
 004EB31E    ret
end;*}

//004EB320
procedure sub_004EB320(?:TMPHUndoStorage);
begin
{*
 004EB320    push        ebp
 004EB321    mov         ebp,esp
 004EB323    add         esp,0FFFFFED8
 004EB329    push        ebx
 004EB32A    mov         dword ptr [ebp-4],eax
 004EB32D    mov         eax,dword ptr [ebp-4]
 004EB330    mov         edx,dword ptr [eax]
 004EB332    call        dword ptr [edx]
 004EB334    cmp         edx,0
>004EB337    jne         004EB340
 004EB339    cmp         eax,1E
>004EB33C    jae         004EB351
>004EB33E    jmp         004EB342
>004EB340    jge         004EB351
 004EB342    xor         edx,edx
 004EB344    mov         eax,dword ptr [ebp-4]
 004EB347    call        004EB4F0
>004EB34C    jmp         004EB4BD
 004EB351    mov         eax,dword ptr [ebp-4]
 004EB354    mov         edx,dword ptr [eax]
 004EB356    call        dword ptr [edx]
 004EB358    sub         eax,4
 004EB35B    sbb         edx,0
 004EB35E    push        edx
 004EB35F    push        eax
 004EB360    mov         eax,dword ptr [ebp-4]
 004EB363    call        TStream.SetPosition
 004EB368    lea         edx,[ebp-8]
 004EB36B    mov         ecx,4
 004EB370    mov         eax,dword ptr [ebp-4]
 004EB373    mov         ebx,dword ptr [eax]
 004EB375    call        dword ptr [ebx+0C]
 004EB378    mov         edx,dword ptr [ebp-8]
 004EB37B    neg         edx
 004EB37D    mov         cx,1
 004EB381    mov         eax,dword ptr [ebp-4]
 004EB384    mov         ebx,dword ptr [eax]
 004EB386    call        dword ptr [ebx+14]
 004EB389    mov         eax,dword ptr [ebp-4]
 004EB38C    add         eax,28
 004EB38F    mov         edx,dword ptr [ebp-8]
 004EB392    call        @ReallocMem
 004EB397    mov         eax,dword ptr [ebp-4]
 004EB39A    mov         edx,dword ptr [eax+28]
 004EB39D    mov         ecx,dword ptr [ebp-8]
 004EB3A0    mov         eax,dword ptr [ebp-4]
 004EB3A3    mov         ebx,dword ptr [eax]
 004EB3A5    call        dword ptr [ebx+0C]
 004EB3A8    mov         eax,dword ptr [ebp-8]
 004EB3AB    mov         edx,dword ptr [ebp-4]
 004EB3AE    mov         dword ptr [edx+2C],eax
 004EB3B1    mov         eax,dword ptr [ebp-4]
 004EB3B4    add         eax,30
 004EB3B7    mov         edx,dword ptr [ebp-4]
 004EB3BA    mov         edx,dword ptr [edx+20]
 004EB3BD    call        @LStrAsg
 004EB3C2    mov         eax,dword ptr [ebp-4]
 004EB3C5    mov         edx,dword ptr [eax]
 004EB3C7    call        dword ptr [edx]
 004EB3C9    mov         edx,eax
 004EB3CB    sub         edx,dword ptr [ebp-8]
 004EB3CE    xor         eax,eax
 004EB3D0    call        004DF5E8
 004EB3D5    mov         edx,eax
 004EB3D7    mov         eax,dword ptr [ebp-4]
 004EB3DA    mov         ecx,dword ptr [eax]
 004EB3DC    call        dword ptr [ecx+4]
 004EB3DF    mov         eax,dword ptr [ebp-4]
 004EB3E2    cmp         dword ptr [eax+14],0
>004EB3E6    jle         004EB3EE
 004EB3E8    mov         eax,dword ptr [ebp-4]
 004EB3EB    dec         dword ptr [eax+14]
 004EB3EE    mov         eax,dword ptr [ebp-4]
 004EB3F1    mov         edx,dword ptr [eax]
 004EB3F3    call        dword ptr [edx]
 004EB3F5    cmp         edx,0
>004EB3F8    jne         004EB401
 004EB3FA    cmp         eax,1E
>004EB3FD    jae         004EB412
>004EB3FF    jmp         004EB403
>004EB401    jge         004EB412
 004EB403    xor         edx,edx
 004EB405    mov         eax,dword ptr [ebp-4]
 004EB408    call        004EB4F0
>004EB40D    jmp         004EB4BD
 004EB412    mov         eax,dword ptr [ebp-4]
 004EB415    lea         ecx,[eax+20]
 004EB418    lea         edx,[ebp-26]
 004EB41B    mov         eax,dword ptr [ebp-4]
 004EB41E    call        004EC16C
 004EB423    cmp         al,9
>004EB425    je          004EB456
 004EB427    mov         eax,dword ptr [ebp-4]
 004EB42A    cmp         dword ptr [eax+20],0
>004EB42E    jne         004EB4BD
 004EB434    mov         edx,dword ptr [ebp-22]
 004EB437    mov         eax,dword ptr [ebp-4]
 004EB43A    call        004EBFE4
 004EB43F    and         eax,7F
 004EB442    mov         edx,dword ptr [eax*4+56D084];gvar_0056D084:array[11] of ?
 004EB449    mov         eax,dword ptr [ebp-4]
 004EB44C    add         eax,20
 004EB44F    call        @LStrAsg
>004EB454    jmp         004EB4BD
 004EB456    cmp         byte ptr [ebp-9],0
>004EB45A    jne         004EB465
 004EB45C    mov         byte ptr [ebp-126],0
>004EB463    jmp         004EB481
 004EB465    xor         ecx,ecx
 004EB467    mov         cl,byte ptr [ebp-9]
 004EB46A    lea         edx,[ebp-125]
 004EB470    mov         eax,dword ptr [ebp-4]
 004EB473    mov         ebx,dword ptr [eax]
 004EB475    call        dword ptr [ebx+0C]
 004EB478    mov         al,byte ptr [ebp-9]
 004EB47B    mov         byte ptr [ebp-126],al
 004EB481    cmp         byte ptr [ebp-126],0
>004EB488    jne         004EB4AC
 004EB48A    mov         edx,dword ptr [ebp-22]
 004EB48D    mov         eax,dword ptr [ebp-4]
 004EB490    call        004EBFE4
 004EB495    and         eax,7F
 004EB498    mov         edx,dword ptr [eax*4+56D084];gvar_0056D084:array[11] of ?
 004EB49F    mov         eax,dword ptr [ebp-4]
 004EB4A2    add         eax,20
 004EB4A5    call        @LStrAsg
>004EB4AA    jmp         004EB4BD
 004EB4AC    mov         eax,dword ptr [ebp-4]
 004EB4AF    add         eax,20
 004EB4B2    lea         edx,[ebp-126]
 004EB4B8    call        @LStrFromString
 004EB4BD    pop         ebx
 004EB4BE    mov         esp,ebp
 004EB4C0    pop         ebp
 004EB4C1    ret
*}
end;

//004EB4C4
{*procedure sub_004EB4C4(?:?);
begin
 004EB4C4    push        ebp
 004EB4C5    mov         ebp,esp
 004EB4C7    add         esp,0FFFFFFF8
 004EB4CA    mov         dword ptr [ebp-8],edx
 004EB4CD    mov         dword ptr [ebp-4],eax
 004EB4D0    mov         edx,dword ptr [ebp-8]
 004EB4D3    mov         eax,dword ptr [ebp-4]
 004EB4D6    call        0042401C
 004EB4DB    cmp         dword ptr [ebp-8],1E
>004EB4DF    jge         004EB4E9
 004EB4E1    mov         eax,dword ptr [ebp-4]
 004EB4E4    xor         edx,edx
 004EB4E6    mov         dword ptr [eax+14],edx;TMPHUndoStorage.?f14:dword
 004EB4E9    pop         ecx
 004EB4EA    pop         ecx
 004EB4EB    pop         ebp
 004EB4EC    ret
end;*}

//004EB4F0
{*procedure sub_004EB4F0(?:TMPHUndoStorage; ?:?);
begin
 004EB4F0    push        ebp
 004EB4F1    mov         ebp,esp
 004EB4F3    add         esp,0FFFFFFF8
 004EB4F6    mov         byte ptr [ebp-5],dl
 004EB4F9    mov         dword ptr [ebp-4],eax
 004EB4FC    push        0
 004EB4FE    push        0
 004EB500    mov         eax,dword ptr [ebp-4]
 004EB503    call        004235FC
 004EB508    mov         eax,dword ptr [ebp-4]
 004EB50B    xor         edx,edx
 004EB50D    mov         dword ptr [eax+14],edx;TMPHUndoStorage.?f14:dword
 004EB510    mov         eax,dword ptr [ebp-4]
 004EB513    xor         edx,edx
 004EB515    mov         dword ptr [eax+18],edx;TMPHUndoStorage.?f18:dword
 004EB518    mov         eax,dword ptr [ebp-4]
 004EB51B    add         eax,20;TMPHUndoStorage.?f20:String
 004EB51E    call        @LStrClr
 004EB523    cmp         byte ptr [ebp-5],0
>004EB527    je          004EB531
 004EB529    mov         eax,dword ptr [ebp-4]
 004EB52C    call        004EBABC
 004EB531    pop         ecx
 004EB532    pop         ecx
 004EB533    pop         ebp
 004EB534    ret
end;*}

//004EB538
{*function sub_004EB538(?:?):?;
begin
 004EB538    push        ebp
 004EB539    mov         ebp,esp
 004EB53B    add         esp,0FFFFFFF8
 004EB53E    mov         dword ptr [ebp-4],eax
 004EB541    mov         eax,dword ptr [ebp-4]
 004EB544    cmp         dword ptr [eax+24],0
 004EB548    setne       byte ptr [ebp-5]
 004EB54C    mov         al,byte ptr [ebp-5]
 004EB54F    pop         ecx
 004EB550    pop         ecx
 004EB551    pop         ebp
 004EB552    ret
end;*}

//004EB554
{*procedure sub_004EB554(?:?; ?:?);
begin
 004EB554    push        ebp
 004EB555    mov         ebp,esp
 004EB557    add         esp,0FFFFFFEC
 004EB55A    push        ebx
 004EB55B    mov         byte ptr [ebp-1],al
 004EB55E    mov         eax,dword ptr [ebp+8]
 004EB561    mov         eax,dword ptr [eax-4]
 004EB564    mov         eax,dword ptr [eax+24]
 004EB567    mov         dword ptr [ebp-8],eax
 004EB56A    mov         eax,dword ptr [ebp+8]
 004EB56D    mov         eax,dword ptr [eax-4]
 004EB570    mov         eax,dword ptr [eax+24]
 004EB573    mov         eax,dword ptr [eax]
 004EB575    mov         edx,dword ptr [ebp+8]
 004EB578    mov         edx,dword ptr [edx-4]
 004EB57B    mov         edx,dword ptr [edx+24]
 004EB57E    lea         eax,[edx+eax]
 004EB581    mov         edx,dword ptr [ebp+8]
 004EB584    mov         edx,dword ptr [edx-4]
 004EB587    mov         edx,dword ptr [edx+1C]
 004EB58A    add         edx,4FC
 004EB590    mov         ecx,50
 004EB595    call        Move
 004EB59A    lea         eax,[ebp-10]
 004EB59D    push        eax
 004EB59E    mov         eax,dword ptr [ebp-8]
 004EB5A1    test        byte ptr [eax+5],80
 004EB5A5    setne       cl
 004EB5A8    mov         eax,dword ptr [ebp+8]
 004EB5AB    mov         eax,dword ptr [eax-4]
 004EB5AE    mov         eax,dword ptr [eax+1C]
 004EB5B1    mov         edx,dword ptr [ebp-8]
 004EB5B4    mov         edx,dword ptr [edx+8]
 004EB5B7    call        004E1344
 004EB5BC    mov         eax,dword ptr [ebp-8]
 004EB5BF    test        byte ptr [eax+5],80
>004EB5C3    jne         004EB5E3
 004EB5C5    mov         eax,dword ptr [ebp+8]
 004EB5C8    mov         eax,dword ptr [eax-4]
 004EB5CB    mov         eax,dword ptr [eax+1C]
 004EB5CE    call        004E0588
 004EB5D3    test        eax,eax
>004EB5D5    jle         004EB5E3
 004EB5D7    mov         eax,dword ptr [ebp-8]
 004EB5DA    test        byte ptr [eax+5],40
>004EB5DE    je          004EB5E3
 004EB5E0    inc         dword ptr [ebp-10]
 004EB5E3    push        1
 004EB5E5    push        1
 004EB5E7    mov         eax,dword ptr [ebp+8]
 004EB5EA    mov         eax,dword ptr [eax-4]
 004EB5ED    mov         eax,dword ptr [eax+1C]
 004EB5F0    mov         ecx,dword ptr [ebp-0C]
 004EB5F3    mov         edx,dword ptr [ebp-10]
 004EB5F6    call        004D8CCC
 004EB5FB    mov         eax,dword ptr [ebp-8]
 004EB5FE    test        byte ptr [eax+5],20
 004EB602    setne       al
 004EB605    mov         edx,dword ptr [ebp+8]
 004EB608    mov         edx,dword ptr [edx-4]
 004EB60B    mov         edx,dword ptr [edx+1C]
 004EB60E    mov         byte ptr [edx+67D],al
 004EB614    mov         eax,dword ptr [ebp-8]
 004EB617    test        byte ptr [eax+6],2
 004EB61B    setne       dl
 004EB61E    mov         eax,dword ptr [ebp+8]
 004EB621    mov         eax,dword ptr [eax-4]
 004EB624    mov         eax,dword ptr [eax+1C]
 004EB627    call        TMPHexEditorEx.SetInsertMode
 004EB62C    mov         eax,dword ptr [ebp+8]
 004EB62F    mov         eax,dword ptr [eax-4]
 004EB632    mov         eax,dword ptr [eax+24]
 004EB635    mov         eax,dword ptr [eax]
 004EB637    mov         edx,dword ptr [ebp+8]
 004EB63A    mov         edx,dword ptr [edx-4]
 004EB63D    mov         edx,dword ptr [edx+24]
 004EB640    lea         eax,[edx+eax+50]
 004EB644    mov         dword ptr [ebp-14],eax
 004EB647    mov         eax,dword ptr [ebp-14]
 004EB64A    mov         eax,dword ptr [eax+4]
 004EB64D    push        eax
 004EB64E    mov         eax,dword ptr [ebp-14]
 004EB651    mov         ecx,dword ptr [eax]
 004EB653    mov         eax,dword ptr [ebp-14]
 004EB656    mov         edx,dword ptr [eax+8]
 004EB659    mov         eax,dword ptr [ebp+8]
 004EB65C    mov         eax,dword ptr [eax-4]
 004EB65F    mov         eax,dword ptr [eax+1C]
 004EB662    call        004E6110
 004EB667    mov         eax,dword ptr [ebp+8]
 004EB66A    mov         eax,dword ptr [eax-4]
 004EB66D    mov         eax,dword ptr [eax+1C]
 004EB670    mov         edx,dword ptr [ebp-8]
 004EB673    mov         dl,byte ptr [edx+18]
 004EB676    call        TMPHexEditorEx.SetTranslation
 004EB67B    mov         eax,dword ptr [ebp+8]
 004EB67E    mov         eax,dword ptr [eax-4]
 004EB681    mov         eax,dword ptr [eax+1C]
 004EB684    mov         edx,dword ptr [ebp-8]
 004EB687    mov         dl,byte ptr [edx+18]
 004EB68A    mov         byte ptr [eax+55C],dl
 004EB690    mov         eax,dword ptr [ebp-8]
 004EB693    test        byte ptr [eax+6],4
 004EB697    setne       dl
 004EB69A    mov         eax,dword ptr [ebp+8]
 004EB69D    mov         eax,dword ptr [eax-4]
 004EB6A0    mov         eax,dword ptr [eax+1C]
 004EB6A3    call        TMPHexEditorEx.SetUnicodeChars
 004EB6A8    mov         eax,dword ptr [ebp-8]
 004EB6AB    test        byte ptr [eax+6],8
 004EB6AF    setne       dl
 004EB6B2    mov         eax,dword ptr [ebp+8]
 004EB6B5    mov         eax,dword ptr [eax-4]
 004EB6B8    mov         eax,dword ptr [eax+1C]
 004EB6BB    call        TMPHexEditorEx.SetUnicodeBigEndian
 004EB6C0    mov         eax,dword ptr [ebp+8]
 004EB6C3    mov         eax,dword ptr [eax-4]
 004EB6C6    mov         eax,dword ptr [eax+1C]
 004EB6C9    mov         edx,dword ptr [ebp-8]
 004EB6CC    mov         edx,dword ptr [edx+19]
 004EB6CF    call        TMPHexEditorEx.SetBytesPerUnit
 004EB6D4    mov         eax,dword ptr [ebp-8]
 004EB6D7    test        byte ptr [eax+5],80
 004EB6DB    setne       dl
 004EB6DE    mov         eax,dword ptr [ebp+8]
 004EB6E1    mov         eax,dword ptr [eax-4]
 004EB6E4    mov         eax,dword ptr [eax+1C]
 004EB6E7    call        004E404C
 004EB6EC    mov         eax,dword ptr [ebp-8]
 004EB6EF    test        byte ptr [eax+5],8
 004EB6F3    setne       cl
 004EB6F6    mov         eax,dword ptr [ebp+8]
 004EB6F9    mov         eax,dword ptr [eax-4]
 004EB6FC    mov         eax,dword ptr [eax+1C]
 004EB6FF    mov         edx,dword ptr [ebp-8]
 004EB702    mov         edx,dword ptr [edx+0C]
 004EB705    call        004E49E8
 004EB70A    cmp         byte ptr [ebp-1],0
>004EB70E    je          004EB72F
 004EB710    mov         eax,dword ptr [ebp-8]
 004EB713    test        byte ptr [eax+5],10
 004EB717    setne       cl
 004EB71A    mov         eax,dword ptr [ebp-8]
 004EB71D    mov         edx,dword ptr [eax+0C]
 004EB720    inc         edx
 004EB721    mov         eax,dword ptr [ebp+8]
 004EB724    mov         eax,dword ptr [eax-4]
 004EB727    mov         eax,dword ptr [eax+1C]
 004EB72A    call        004E49E8
 004EB72F    mov         eax,dword ptr [ebp+8]
 004EB732    mov         eax,dword ptr [eax-4]
 004EB735    cmp         dword ptr [eax+28],0
>004EB739    je          004EB796
 004EB73B    mov         eax,dword ptr [ebp+8]
 004EB73E    mov         eax,dword ptr [eax-4]
 004EB741    mov         cx,2
 004EB745    xor         edx,edx
 004EB747    mov         ebx,dword ptr [eax]
 004EB749    call        dword ptr [ebx+14]
 004EB74C    mov         eax,dword ptr [ebp+8]
 004EB74F    mov         eax,dword ptr [eax-4]
 004EB752    mov         ecx,dword ptr [eax+2C]
 004EB755    mov         eax,dword ptr [ebp+8]
 004EB758    mov         eax,dword ptr [eax-4]
 004EB75B    mov         edx,dword ptr [eax+28]
 004EB75E    mov         eax,dword ptr [ebp+8]
 004EB761    mov         eax,dword ptr [eax-4]
 004EB764    mov         ebx,dword ptr [eax]
 004EB766    call        dword ptr [ebx+10]
 004EB769    mov         eax,dword ptr [ebp+8]
 004EB76C    mov         eax,dword ptr [eax-4]
 004EB76F    inc         dword ptr [eax+14]
 004EB772    mov         eax,dword ptr [ebp+8]
 004EB775    mov         eax,dword ptr [eax-4]
 004EB778    mov         eax,dword ptr [eax+28]
 004EB77B    call        @FreeMem
 004EB780    mov         eax,dword ptr [ebp+8]
 004EB783    mov         eax,dword ptr [eax-4]
 004EB786    xor         edx,edx
 004EB788    mov         dword ptr [eax+28],edx
 004EB78B    mov         eax,dword ptr [ebp+8]
 004EB78E    mov         eax,dword ptr [eax-4]
 004EB791    xor         edx,edx
 004EB793    mov         dword ptr [eax+2C],edx
 004EB796    mov         eax,dword ptr [ebp+8]
 004EB799    mov         eax,dword ptr [eax-4]
 004EB79C    add         eax,20
 004EB79F    mov         edx,dword ptr [ebp+8]
 004EB7A2    mov         edx,dword ptr [edx-4]
 004EB7A5    mov         edx,dword ptr [edx+30]
 004EB7A8    call        @LStrAsg
 004EB7AD    mov         eax,dword ptr [ebp+8]
 004EB7B0    mov         eax,dword ptr [eax-4]
 004EB7B3    mov         eax,dword ptr [eax+1C]
 004EB7B6    mov         edx,dword ptr [eax]
 004EB7B8    call        dword ptr [edx+7C]
 004EB7BB    mov         eax,dword ptr [ebp+8]
 004EB7BE    mov         eax,dword ptr [eax-4]
 004EB7C1    mov         eax,dword ptr [eax+1C]
 004EB7C4    mov         edx,dword ptr [eax]
 004EB7C6    call        dword ptr [edx+0F8]
 004EB7CC    pop         ebx
 004EB7CD    mov         esp,ebp
 004EB7CF    pop         ebp
 004EB7D0    ret
end;*}

//004EB7D4
{*function sub_004EB7D4(?:?):?;
begin
 004EB7D4    push        ebp
 004EB7D5    mov         ebp,esp
 004EB7D7    add         esp,0FFFFFFF8
 004EB7DA    push        ebx
 004EB7DB    mov         dword ptr [ebp-4],eax
 004EB7DE    mov         eax,dword ptr [ebp-4]
 004EB7E1    call        004EB538
 004EB7E6    mov         byte ptr [ebp-5],al
 004EB7E9    cmp         byte ptr [ebp-5],0
>004EB7ED    je          004EBAB2
 004EB7F3    mov         eax,dword ptr [ebp-4]
 004EB7F6    mov         eax,dword ptr [eax+24]
 004EB7F9    mov         edx,dword ptr [eax+4]
 004EB7FC    mov         eax,dword ptr [ebp-4]
 004EB7FF    call        004EBFE4
 004EB804    and         eax,7F
 004EB807    cmp         eax,0A
>004EB80A    ja          004EBA9C
 004EB810    jmp         dword ptr [eax*4+4EB817]
 004EB810    dd          004EB843
 004EB810    dd          004EB886
 004EB810    dd          004EB8BE
 004EB810    dd          004EB95E
 004EB810    dd          004EBA1C
 004EB810    dd          004EBA44
 004EB810    dd          004EBA44
 004EB810    dd          004EB9BD
 004EB810    dd          004EB8F3
 004EB810    dd          004EBA9C
 004EB810    dd          004EB901
 004EB843    mov         eax,dword ptr [ebp-4]
 004EB846    mov         eax,dword ptr [eax+24]
 004EB849    mov         eax,dword ptr [eax+10]
 004EB84C    push        eax
 004EB84D    mov         eax,dword ptr [ebp-4]
 004EB850    mov         eax,dword ptr [eax+24]
 004EB853    mov         ecx,dword ptr [eax+0C]
 004EB856    mov         eax,dword ptr [ebp-4]
 004EB859    mov         eax,dword ptr [eax+24]
 004EB85C    lea         edx,[eax+1D]
 004EB85F    mov         eax,dword ptr [ebp-4]
 004EB862    mov         eax,dword ptr [eax+1C]
 004EB865    mov         ebx,dword ptr [eax]
 004EB867    call        dword ptr [ebx+10C]
 004EB86D    push        ebp
 004EB86E    mov         eax,dword ptr [ebp-4]
 004EB871    mov         eax,dword ptr [eax+24]
 004EB874    cmp         dword ptr [eax+10],2
 004EB878    sete        al
 004EB87B    call        004EB554
 004EB880    pop         ecx
>004EB881    jmp         004EBA9C
 004EB886    push        0FF
 004EB888    push        0
 004EB88A    mov         eax,dword ptr [ebp-4]
 004EB88D    mov         eax,dword ptr [eax+24]
 004EB890    mov         ecx,dword ptr [eax+0C]
 004EB893    mov         eax,dword ptr [ebp-4]
 004EB896    mov         eax,dword ptr [eax+24]
 004EB899    add         ecx,dword ptr [eax+10]
 004EB89C    mov         eax,dword ptr [ebp-4]
 004EB89F    mov         eax,dword ptr [eax+24]
 004EB8A2    mov         edx,dword ptr [eax+0C]
 004EB8A5    mov         eax,dword ptr [ebp-4]
 004EB8A8    mov         eax,dword ptr [eax+1C]
 004EB8AB    call        004E3AE0
 004EB8B0    push        ebp
 004EB8B1    xor         eax,eax
 004EB8B3    call        004EB554
 004EB8B8    pop         ecx
>004EB8B9    jmp         004EBA9C
 004EB8BE    mov         eax,dword ptr [ebp-4]
 004EB8C1    mov         eax,dword ptr [eax+24]
 004EB8C4    mov         eax,dword ptr [eax+0C]
 004EB8C7    push        eax
 004EB8C8    mov         eax,dword ptr [ebp-4]
 004EB8CB    mov         eax,dword ptr [eax+24]
 004EB8CE    mov         ecx,dword ptr [eax+10]
 004EB8D1    mov         eax,dword ptr [ebp-4]
 004EB8D4    mov         eax,dword ptr [eax+24]
 004EB8D7    lea         edx,[eax+1D]
 004EB8DA    mov         eax,dword ptr [ebp-4]
 004EB8DD    mov         eax,dword ptr [eax+1C]
 004EB8E0    call        004E45C4
 004EB8E5    push        ebp
 004EB8E6    xor         eax,eax
 004EB8E8    call        004EB554
 004EB8ED    pop         ecx
>004EB8EE    jmp         004EBA9C
 004EB8F3    push        ebp
 004EB8F4    xor         eax,eax
 004EB8F6    call        004EB554
 004EB8FB    pop         ecx
>004EB8FC    jmp         004EBA9C
 004EB901    mov         eax,dword ptr [ebp-4]
 004EB904    mov         eax,dword ptr [eax+24]
 004EB907    mov         eax,dword ptr [eax+10]
 004EB90A    xor         edx,edx
 004EB90C    push        edx
 004EB90D    push        eax
 004EB90E    mov         eax,dword ptr [ebp-4]
 004EB911    mov         eax,dword ptr [eax+1C]
 004EB914    mov         eax,dword ptr [eax+4E0]
 004EB91A    call        004235FC
 004EB91F    mov         eax,dword ptr [ebp-4]
 004EB922    mov         eax,dword ptr [eax+24]
 004EB925    mov         eax,dword ptr [eax+10]
 004EB928    push        eax
 004EB929    mov         eax,dword ptr [ebp-4]
 004EB92C    mov         eax,dword ptr [eax+24]
 004EB92F    lea         edx,[eax+1D]
 004EB932    mov         eax,dword ptr [ebp-4]
 004EB935    mov         eax,dword ptr [eax+1C]
 004EB938    mov         eax,dword ptr [eax+4E0]
 004EB93E    xor         ecx,ecx
 004EB940    call        004EC3E0
 004EB945    mov         eax,dword ptr [ebp-4]
 004EB948    mov         eax,dword ptr [eax+1C]
 004EB94B    call        004E0AC0
 004EB950    push        ebp
 004EB951    xor         eax,eax
 004EB953    call        004EB554
 004EB958    pop         ecx
>004EB959    jmp         004EBA9C
 004EB95E    push        0FF
 004EB960    push        0
 004EB962    mov         eax,dword ptr [ebp-4]
 004EB965    mov         eax,dword ptr [eax+24]
 004EB968    mov         ecx,dword ptr [eax+0C]
 004EB96B    mov         eax,dword ptr [ebp-4]
 004EB96E    mov         eax,dword ptr [eax+24]
 004EB971    add         ecx,dword ptr [eax+14]
 004EB974    mov         eax,dword ptr [ebp-4]
 004EB977    mov         eax,dword ptr [eax+24]
 004EB97A    mov         edx,dword ptr [eax+0C]
 004EB97D    mov         eax,dword ptr [ebp-4]
 004EB980    mov         eax,dword ptr [eax+1C]
 004EB983    call        004E3AE0
 004EB988    mov         eax,dword ptr [ebp-4]
 004EB98B    mov         eax,dword ptr [eax+24]
 004EB98E    mov         eax,dword ptr [eax+0C]
 004EB991    push        eax
 004EB992    mov         eax,dword ptr [ebp-4]
 004EB995    mov         eax,dword ptr [eax+24]
 004EB998    mov         ecx,dword ptr [eax+10]
 004EB99B    mov         eax,dword ptr [ebp-4]
 004EB99E    mov         eax,dword ptr [eax+24]
 004EB9A1    lea         edx,[eax+1D]
 004EB9A4    mov         eax,dword ptr [ebp-4]
 004EB9A7    mov         eax,dword ptr [eax+1C]
 004EB9AA    call        004E45C4
 004EB9AF    push        ebp
 004EB9B0    xor         eax,eax
 004EB9B2    call        004EB554
 004EB9B7    pop         ecx
>004EB9B8    jmp         004EBA9C
 004EB9BD    push        0FF
 004EB9BF    push        0
 004EB9C1    mov         eax,dword ptr [ebp-4]
 004EB9C4    mov         eax,dword ptr [eax+24]
 004EB9C7    mov         ecx,dword ptr [eax+0C]
 004EB9CA    mov         eax,dword ptr [ebp-4]
 004EB9CD    mov         eax,dword ptr [eax+24]
 004EB9D0    add         ecx,dword ptr [eax+10]
 004EB9D3    mov         eax,dword ptr [ebp-4]
 004EB9D6    mov         eax,dword ptr [eax+24]
 004EB9D9    mov         edx,dword ptr [eax+0C]
 004EB9DC    mov         eax,dword ptr [ebp-4]
 004EB9DF    mov         eax,dword ptr [eax+1C]
 004EB9E2    call        004E3AE0
 004EB9E7    mov         eax,dword ptr [ebp-4]
 004EB9EA    mov         eax,dword ptr [eax+24]
 004EB9ED    mov         eax,dword ptr [eax+0C]
 004EB9F0    push        eax
 004EB9F1    mov         eax,dword ptr [ebp-4]
 004EB9F4    mov         eax,dword ptr [eax+24]
 004EB9F7    mov         ecx,dword ptr [eax+10]
 004EB9FA    mov         eax,dword ptr [ebp-4]
 004EB9FD    mov         eax,dword ptr [eax+24]
 004EBA00    lea         edx,[eax+1D]
 004EBA03    mov         eax,dword ptr [ebp-4]
 004EBA06    mov         eax,dword ptr [eax+1C]
 004EBA09    call        004E45C4
 004EBA0E    push        ebp
 004EBA0F    xor         eax,eax
 004EBA11    call        004EB554
 004EBA16    pop         ecx
>004EBA17    jmp         004EBA9C
 004EBA1C    mov         eax,dword ptr [ebp-4]
 004EBA1F    mov         eax,dword ptr [eax+24]
 004EBA22    mov         ecx,dword ptr [eax+10]
 004EBA25    mov         eax,dword ptr [ebp-4]
 004EBA28    mov         eax,dword ptr [eax+24]
 004EBA2B    lea         edx,[eax+1D]
 004EBA2E    mov         eax,dword ptr [ebp-4]
 004EBA31    mov         eax,dword ptr [eax+1C]
 004EBA34    call        004E4540
 004EBA39    push        ebp
 004EBA3A    xor         eax,eax
 004EBA3C    call        004EB554
 004EBA41    pop         ecx
>004EBA42    jmp         004EBA9C
 004EBA44    mov         eax,dword ptr [ebp-4]
 004EBA47    mov         eax,dword ptr [eax+24]
 004EBA4A    mov         eax,dword ptr [eax+10]
 004EBA4D    xor         edx,edx
 004EBA4F    push        edx
 004EBA50    push        eax
 004EBA51    mov         eax,dword ptr [ebp-4]
 004EBA54    mov         eax,dword ptr [eax+1C]
 004EBA57    mov         eax,dword ptr [eax+4E0]
 004EBA5D    call        004235FC
 004EBA62    mov         eax,dword ptr [ebp-4]
 004EBA65    mov         eax,dword ptr [eax+24]
 004EBA68    mov         eax,dword ptr [eax+10]
 004EBA6B    push        eax
 004EBA6C    mov         eax,dword ptr [ebp-4]
 004EBA6F    mov         eax,dword ptr [eax+24]
 004EBA72    lea         edx,[eax+1D]
 004EBA75    mov         eax,dword ptr [ebp-4]
 004EBA78    mov         eax,dword ptr [eax+1C]
 004EBA7B    mov         eax,dword ptr [eax+4E0]
 004EBA81    xor         ecx,ecx
 004EBA83    call        004EC3E0
 004EBA88    mov         eax,dword ptr [ebp-4]
 004EBA8B    mov         eax,dword ptr [eax+1C]
 004EBA8E    call        004E0AC0
 004EBA93    push        ebp
 004EBA94    xor         eax,eax
 004EBA96    call        004EB554
 004EBA9B    pop         ecx
 004EBA9C    mov         eax,dword ptr [ebp-4]
 004EBA9F    call        004EBABC
 004EBAA4    mov         eax,dword ptr [ebp-4]
 004EBAA7    mov         eax,dword ptr [eax+1C]
 004EBAAA    mov         edx,dword ptr [eax]
 004EBAAC    call        dword ptr [edx+0EC]
 004EBAB2    mov         al,byte ptr [ebp-5]
 004EBAB5    pop         ebx
 004EBAB6    pop         ecx
 004EBAB7    pop         ecx
 004EBAB8    pop         ebp
 004EBAB9    ret
end;*}

//004EBABC
procedure sub_004EBABC(?:TMPHUndoStorage);
begin
{*
 004EBABC    push        ebp
 004EBABD    mov         ebp,esp
 004EBABF    push        ecx
 004EBAC0    mov         dword ptr [ebp-4],eax
 004EBAC3    mov         eax,dword ptr [ebp-4]
 004EBAC6    cmp         dword ptr [eax+24],0;TMPHUndoStorage.?f24:dword
>004EBACA    je          004EBAD7
 004EBACC    mov         eax,dword ptr [ebp-4]
 004EBACF    mov         eax,dword ptr [eax+24];TMPHUndoStorage.?f24:dword
 004EBAD2    call        @FreeMem
 004EBAD7    mov         eax,dword ptr [ebp-4]
 004EBADA    xor         edx,edx
 004EBADC    mov         dword ptr [eax+24],edx;TMPHUndoStorage.?f24:dword
 004EBADF    mov         eax,dword ptr [ebp-4]
 004EBAE2    cmp         dword ptr [eax+28],0;TMPHUndoStorage.?f28:dword
>004EBAE6    je          004EBAF3
 004EBAE8    mov         eax,dword ptr [ebp-4]
 004EBAEB    mov         eax,dword ptr [eax+28];TMPHUndoStorage.?f28:dword
 004EBAEE    call        @FreeMem
 004EBAF3    mov         eax,dword ptr [ebp-4]
 004EBAF6    xor         edx,edx
 004EBAF8    mov         dword ptr [eax+28],edx;TMPHUndoStorage.?f28:dword
 004EBAFB    mov         eax,dword ptr [ebp-4]
 004EBAFE    xor         edx,edx
 004EBB00    mov         dword ptr [eax+2C],edx;TMPHUndoStorage.?f2C:dword
 004EBB03    mov         eax,dword ptr [ebp-4]
 004EBB06    add         eax,30;TMPHUndoStorage.?f30:String
 004EBB09    call        @LStrClr
 004EBB0E    pop         ecx
 004EBB0F    pop         ebp
 004EBB10    ret
*}
end;

//004EBB14
{*procedure sub_004EBB14(?:?);
begin
 004EBB14    push        ebp
 004EBB15    mov         ebp,esp
 004EBB17    add         esp,0FFFFFFDC
 004EBB1A    mov         eax,dword ptr [ebp+8]
 004EBB1D    mov         eax,dword ptr [eax-4]
 004EBB20    add         eax,7A
 004EBB23    call        @GetMem
 004EBB28    mov         edx,dword ptr [ebp+8]
 004EBB2B    mov         edx,dword ptr [edx-8]
 004EBB2E    mov         dword ptr [edx+24],eax
 004EBB31    mov         eax,dword ptr [ebp+8]
 004EBB34    mov         edx,dword ptr [eax-0C]
 004EBB37    mov         edx,dword ptr [edx+4]
 004EBB3A    mov         eax,dword ptr [ebp+8]
 004EBB3D    mov         eax,dword ptr [eax-8]
 004EBB40    call        004EBFE4
 004EBB45    mov         edx,eax
 004EBB47    lea         eax,[ebp-24]
 004EBB4A    mov         cl,3
 004EBB4C    call        @SetElem
 004EBB51    lea         eax,[ebp-24]
 004EBB54    lea         edx,[ebp-20]
 004EBB57    mov         ecx,300
 004EBB5C    call        @SetExpand
 004EBB61    mov         eax,dword ptr [ebp-20]
 004EBB64    mov         edx,dword ptr [ebp+8]
 004EBB67    mov         edx,dword ptr [edx-8]
 004EBB6A    mov         edx,dword ptr [edx+24]
 004EBB6D    mov         dword ptr [edx+4],eax
 004EBB70    mov         eax,dword ptr [ebp+8]
 004EBB73    mov         eax,dword ptr [eax-4]
 004EBB76    add         eax,1E
 004EBB79    mov         edx,dword ptr [ebp+8]
 004EBB7C    mov         edx,dword ptr [edx-8]
 004EBB7F    mov         edx,dword ptr [edx+24]
 004EBB82    mov         dword ptr [edx],eax
 004EBB84    mov         esp,ebp
 004EBB86    pop         ebp
 004EBB87    ret
end;*}

//004EBB88
{*procedure sub_004EBB88(?:?);
begin
 004EBB88    push        ebp
 004EBB89    mov         ebp,esp
 004EBB8B    add         esp,0FFFFFFF0
 004EBB8E    mov         eax,dword ptr [ebp+8]
 004EBB91    mov         eax,dword ptr [eax-8]
 004EBB94    mov         eax,dword ptr [eax+24]
 004EBB97    mov         dword ptr [ebp-4],eax
 004EBB9A    mov         eax,dword ptr [ebp+8]
 004EBB9D    mov         eax,dword ptr [eax-8]
 004EBBA0    mov         eax,dword ptr [eax+1C]
 004EBBA3    mov         ecx,dword ptr [eax+22C]
 004EBBA9    mov         eax,dword ptr [ebp+8]
 004EBBAC    mov         eax,dword ptr [eax-8]
 004EBBAF    mov         eax,dword ptr [eax+1C]
 004EBBB2    mov         edx,dword ptr [eax+228]
 004EBBB8    mov         eax,dword ptr [ebp+8]
 004EBBBB    mov         eax,dword ptr [eax-8]
 004EBBBE    mov         eax,dword ptr [eax+1C]
 004EBBC1    call        004E1288
 004EBBC6    mov         edx,dword ptr [ebp-4]
 004EBBC9    mov         dword ptr [edx+8],eax
 004EBBCC    mov         eax,dword ptr [ebp+8]
 004EBBCF    mov         eax,dword ptr [eax-8]
 004EBBD2    mov         eax,dword ptr [eax+1C]
 004EBBD5    cmp         byte ptr [eax+4F0],0
>004EBBDC    jne         004EBC23
 004EBBDE    lea         eax,[ebp-0C]
 004EBBE1    push        eax
 004EBBE2    mov         eax,dword ptr [ebp+8]
 004EBBE5    mov         eax,dword ptr [eax-8]
 004EBBE8    mov         eax,dword ptr [eax+1C]
 004EBBEB    mov         cl,byte ptr [eax+4F0]
 004EBBF1    mov         eax,dword ptr [ebp+8]
 004EBBF4    mov         eax,dword ptr [eax-8]
 004EBBF7    mov         eax,dword ptr [eax+1C]
 004EBBFA    mov         edx,dword ptr [ebp-4]
 004EBBFD    mov         edx,dword ptr [edx+8]
 004EBC00    call        004E1344
 004EBC05    mov         eax,dword ptr [ebp+8]
 004EBC08    mov         eax,dword ptr [eax-8]
 004EBC0B    mov         eax,dword ptr [eax+1C]
 004EBC0E    mov         eax,dword ptr [eax+228]
 004EBC14    sub         eax,dword ptr [ebp-0C]
>004EBC17    je          004EBC23
 004EBC19    mov         eax,dword ptr [ebp-4]
 004EBC1C    or          dword ptr [eax+4],4000
 004EBC23    mov         eax,dword ptr [ebp+8]
 004EBC26    mov         eax,dword ptr [eax-8]
 004EBC29    mov         eax,dword ptr [eax+1C]
 004EBC2C    cmp         byte ptr [eax+4F0],0
>004EBC33    je          004EBC3F
 004EBC35    mov         eax,dword ptr [ebp-4]
 004EBC38    or          dword ptr [eax+4],8000
 004EBC3F    mov         eax,dword ptr [ebp+8]
 004EBC42    mov         eax,dword ptr [eax-8]
 004EBC45    mov         eax,dword ptr [eax+1C]
 004EBC48    cmp         byte ptr [eax+4C8],0
>004EBC4F    je          004EBC5B
 004EBC51    mov         eax,dword ptr [ebp-4]
 004EBC54    or          dword ptr [eax+4],20000
 004EBC5B    mov         eax,dword ptr [ebp+8]
 004EBC5E    mov         eax,dword ptr [eax-0C]
 004EBC61    mov         eax,dword ptr [eax+0C]
 004EBC64    mov         edx,dword ptr [ebp-4]
 004EBC67    mov         dword ptr [edx+0C],eax
 004EBC6A    mov         eax,dword ptr [ebp+8]
 004EBC6D    mov         eax,dword ptr [eax-0C]
 004EBC70    mov         eax,dword ptr [eax+10]
 004EBC73    mov         edx,dword ptr [ebp-4]
 004EBC76    mov         dword ptr [edx+10],eax
 004EBC79    mov         eax,dword ptr [ebp+8]
 004EBC7C    mov         eax,dword ptr [eax-0C]
 004EBC7F    mov         eax,dword ptr [eax+14]
 004EBC82    mov         edx,dword ptr [ebp-4]
 004EBC85    mov         dword ptr [edx+14],eax
 004EBC88    mov         eax,dword ptr [ebp+8]
 004EBC8B    mov         eax,dword ptr [eax-8]
 004EBC8E    mov         eax,dword ptr [eax+1C]
 004EBC91    mov         al,byte ptr [eax+55C]
 004EBC97    mov         edx,dword ptr [ebp-4]
 004EBC9A    mov         byte ptr [edx+18],al
 004EBC9D    mov         eax,dword ptr [ebp+8]
 004EBCA0    mov         eax,dword ptr [eax-8]
 004EBCA3    mov         eax,dword ptr [eax+1C]
 004EBCA6    cmp         byte ptr [eax+61C],0
>004EBCAD    je          004EBCB9
 004EBCAF    mov         eax,dword ptr [ebp-4]
 004EBCB2    or          dword ptr [eax+4],40000
 004EBCB9    mov         eax,dword ptr [ebp+8]
 004EBCBC    mov         eax,dword ptr [eax-8]
 004EBCBF    mov         eax,dword ptr [eax+1C]
 004EBCC2    cmp         byte ptr [eax+61D],0
>004EBCC9    je          004EBCD5
 004EBCCB    mov         eax,dword ptr [ebp-4]
 004EBCCE    or          dword ptr [eax+4],80000
 004EBCD5    mov         eax,dword ptr [ebp+8]
 004EBCD8    mov         eax,dword ptr [eax-8]
 004EBCDB    mov         eax,dword ptr [eax+1C]
 004EBCDE    mov         eax,dword ptr [eax+5F4]
 004EBCE4    mov         edx,dword ptr [ebp-4]
 004EBCE7    mov         dword ptr [edx+19],eax
 004EBCEA    mov         eax,dword ptr [ebp+8]
 004EBCED    mov         eax,dword ptr [eax-8]
 004EBCF0    mov         eax,dword ptr [eax+1C]
 004EBCF3    cmp         byte ptr [eax+67D],0
>004EBCFA    je          004EBD06
 004EBCFC    mov         eax,dword ptr [ebp-4]
 004EBCFF    or          dword ptr [eax+4],2000
 004EBD06    mov         eax,dword ptr [ebp+8]
 004EBD09    mov         eax,dword ptr [eax-8]
 004EBD0C    mov         eax,dword ptr [eax+24]
 004EBD0F    mov         eax,dword ptr [eax]
 004EBD11    mov         edx,dword ptr [ebp+8]
 004EBD14    mov         edx,dword ptr [edx-8]
 004EBD17    mov         edx,dword ptr [edx+24]
 004EBD1A    add         edx,eax
 004EBD1C    mov         eax,dword ptr [ebp+8]
 004EBD1F    mov         eax,dword ptr [eax-8]
 004EBD22    mov         eax,dword ptr [eax+1C]
 004EBD25    add         eax,4FC
 004EBD2A    mov         ecx,50
 004EBD2F    call        Move
 004EBD34    mov         eax,dword ptr [ebp+8]
 004EBD37    mov         eax,dword ptr [eax-8]
 004EBD3A    mov         eax,dword ptr [eax+24]
 004EBD3D    mov         eax,dword ptr [eax]
 004EBD3F    mov         edx,dword ptr [ebp+8]
 004EBD42    mov         edx,dword ptr [edx-8]
 004EBD45    mov         edx,dword ptr [edx+24]
 004EBD48    lea         eax,[edx+eax+50]
 004EBD4C    mov         dword ptr [ebp-10],eax
 004EBD4F    mov         eax,dword ptr [ebp+8]
 004EBD52    mov         eax,dword ptr [eax-8]
 004EBD55    mov         eax,dword ptr [eax+1C]
 004EBD58    mov         eax,dword ptr [eax+54C]
 004EBD5E    mov         edx,dword ptr [ebp-10]
 004EBD61    mov         dword ptr [edx],eax
 004EBD63    mov         eax,dword ptr [ebp+8]
 004EBD66    mov         eax,dword ptr [eax-8]
 004EBD69    mov         eax,dword ptr [eax+1C]
 004EBD6C    mov         eax,dword ptr [eax+550]
 004EBD72    mov         edx,dword ptr [ebp-10]
 004EBD75    mov         dword ptr [edx+8],eax
 004EBD78    mov         eax,dword ptr [ebp+8]
 004EBD7B    mov         eax,dword ptr [eax-8]
 004EBD7E    mov         eax,dword ptr [eax+1C]
 004EBD81    mov         eax,dword ptr [eax+554]
 004EBD87    mov         edx,dword ptr [ebp-10]
 004EBD8A    mov         dword ptr [edx+4],eax
 004EBD8D    mov         esp,ebp
 004EBD8F    pop         ebp
 004EBD90    ret
end;*}

//004EBD94
{*procedure sub_004EBD94(?:?; ?:?);
begin
 004EBD94    push        ebp
 004EBD95    mov         ebp,esp
 004EBD97    add         esp,0FFFFFFF4
 004EBD9A    mov         dword ptr [ebp-0C],edx
 004EBD9D    mov         dword ptr [ebp-8],eax
 004EBDA0    mov         eax,dword ptr [ebp-8]
 004EBDA3    call        004EBABC
 004EBDA8    mov         edx,dword ptr [ebp-0C]
 004EBDAB    mov         edx,dword ptr [edx+4]
 004EBDAE    mov         eax,dword ptr [ebp-8]
 004EBDB1    call        004EBFE4
 004EBDB6    and         eax,7F
 004EBDB9    cmp         eax,0A
>004EBDBC    ja          004EBFDF
 004EBDC2    jmp         dword ptr [eax*4+4EBDC9]
 004EBDC2    dd          004EBDF5
 004EBDC2    dd          004EBE81
 004EBDC2    dd          004EBE99
 004EBDC2    dd          004EBE99
 004EBDC2    dd          004EBF45
 004EBDC2    dd          004EBF95
 004EBDC2    dd          004EBF95
 004EBDC2    dd          004EBE99
 004EBDC2    dd          004EBED6
 004EBDC2    dd          004EBFDF
 004EBDC2    dd          004EBEEE
 004EBDF5    mov         eax,dword ptr [ebp-0C]
 004EBDF8    mov         eax,dword ptr [eax+10]
 004EBDFB    dec         eax
 004EBDFC    mov         dword ptr [ebp-4],eax
 004EBDFF    push        ebp
 004EBE00    call        004EBB14
 004EBE05    pop         ecx
 004EBE06    mov         edx,dword ptr [ebp-0C]
 004EBE09    mov         edx,dword ptr [edx+0C]
 004EBE0C    mov         eax,dword ptr [ebp-8]
 004EBE0F    mov         eax,dword ptr [eax+1C]
 004EBE12    call        004E2940
 004EBE17    test        al,al
>004EBE19    je          004EBE28
 004EBE1B    mov         eax,dword ptr [ebp-8]
 004EBE1E    mov         eax,dword ptr [eax+24]
 004EBE21    or          dword ptr [eax+4],800
 004EBE28    mov         eax,dword ptr [ebp-0C]
 004EBE2B    cmp         dword ptr [eax+10],2
>004EBE2F    jne         004EBE54
 004EBE31    mov         edx,dword ptr [ebp-0C]
 004EBE34    mov         edx,dword ptr [edx+0C]
 004EBE37    inc         edx
 004EBE38    mov         eax,dword ptr [ebp-8]
 004EBE3B    mov         eax,dword ptr [eax+1C]
 004EBE3E    call        004E2940
 004EBE43    test        al,al
>004EBE45    je          004EBE54
 004EBE47    mov         eax,dword ptr [ebp-8]
 004EBE4A    mov         eax,dword ptr [eax+24]
 004EBE4D    or          dword ptr [eax+4],1000
 004EBE54    mov         eax,dword ptr [ebp-0C]
 004EBE57    mov         eax,dword ptr [eax+10]
 004EBE5A    push        eax
 004EBE5B    mov         ecx,dword ptr [ebp-0C]
 004EBE5E    mov         ecx,dword ptr [ecx+0C]
 004EBE61    mov         eax,dword ptr [ebp-8]
 004EBE64    mov         eax,dword ptr [eax+24]
 004EBE67    lea         edx,[eax+1D]
 004EBE6A    mov         eax,dword ptr [ebp-8]
 004EBE6D    mov         eax,dword ptr [eax+1C]
 004EBE70    call        004E8F70
 004EBE75    push        ebp
 004EBE76    call        004EBB88
 004EBE7B    pop         ecx
>004EBE7C    jmp         004EBFDF
 004EBE81    xor         eax,eax
 004EBE83    mov         dword ptr [ebp-4],eax
 004EBE86    push        ebp
 004EBE87    call        004EBB14
 004EBE8C    pop         ecx
 004EBE8D    push        ebp
 004EBE8E    call        004EBB88
 004EBE93    pop         ecx
>004EBE94    jmp         004EBFDF
 004EBE99    mov         eax,dword ptr [ebp-0C]
 004EBE9C    mov         eax,dword ptr [eax+10]
 004EBE9F    mov         dword ptr [ebp-4],eax
 004EBEA2    push        ebp
 004EBEA3    call        004EBB14
 004EBEA8    pop         ecx
 004EBEA9    mov         eax,dword ptr [ebp-0C]
 004EBEAC    mov         eax,dword ptr [eax+10]
 004EBEAF    push        eax
 004EBEB0    mov         ecx,dword ptr [ebp-0C]
 004EBEB3    mov         ecx,dword ptr [ecx+0C]
 004EBEB6    mov         eax,dword ptr [ebp-8]
 004EBEB9    mov         eax,dword ptr [eax+24]
 004EBEBC    lea         edx,[eax+1D]
 004EBEBF    mov         eax,dword ptr [ebp-8]
 004EBEC2    mov         eax,dword ptr [eax+1C]
 004EBEC5    call        004E8F70
 004EBECA    push        ebp
 004EBECB    call        004EBB88
 004EBED0    pop         ecx
>004EBED1    jmp         004EBFDF
 004EBED6    xor         eax,eax
 004EBED8    mov         dword ptr [ebp-4],eax
 004EBEDB    push        ebp
 004EBEDC    call        004EBB14
 004EBEE1    pop         ecx
 004EBEE2    push        ebp
 004EBEE3    call        004EBB88
 004EBEE8    pop         ecx
>004EBEE9    jmp         004EBFDF
 004EBEEE    mov         eax,dword ptr [ebp-8]
 004EBEF1    mov         eax,dword ptr [eax+1C]
 004EBEF4    call        004E0588
 004EBEF9    mov         dword ptr [ebp-4],eax
 004EBEFC    push        ebp
 004EBEFD    call        004EBB14
 004EBF02    pop         ecx
 004EBF03    mov         eax,dword ptr [ebp-8]
 004EBF06    mov         eax,dword ptr [eax+1C]
 004EBF09    call        004E0588
 004EBF0E    push        eax
 004EBF0F    mov         eax,dword ptr [ebp-8]
 004EBF12    mov         eax,dword ptr [eax+24]
 004EBF15    lea         edx,[eax+1D]
 004EBF18    mov         eax,dword ptr [ebp-8]
 004EBF1B    mov         eax,dword ptr [eax+1C]
 004EBF1E    xor         ecx,ecx
 004EBF20    call        004E8F70
 004EBF25    push        ebp
 004EBF26    call        004EBB88
 004EBF2B    pop         ecx
 004EBF2C    mov         eax,dword ptr [ebp-8]
 004EBF2F    mov         eax,dword ptr [eax+1C]
 004EBF32    call        004E0588
 004EBF37    mov         edx,dword ptr [ebp-8]
 004EBF3A    mov         edx,dword ptr [edx+24]
 004EBF3D    mov         dword ptr [edx+10],eax
>004EBF40    jmp         004EBFDF
 004EBF45    mov         eax,dword ptr [ebp-8]
 004EBF48    mov         eax,dword ptr [eax+1C]
 004EBF4B    call        004E0588
 004EBF50    mov         edx,dword ptr [ebp-0C]
 004EBF53    sub         eax,dword ptr [edx+0C]
 004EBF56    mov         dword ptr [ebp-4],eax
 004EBF59    push        ebp
 004EBF5A    call        004EBB14
 004EBF5F    pop         ecx
 004EBF60    mov         eax,dword ptr [ebp-8]
 004EBF63    mov         eax,dword ptr [eax+1C]
 004EBF66    call        004E0588
 004EBF6B    mov         edx,dword ptr [ebp-0C]
 004EBF6E    sub         eax,dword ptr [edx+0C]
 004EBF71    push        eax
 004EBF72    mov         ecx,dword ptr [ebp-0C]
 004EBF75    mov         ecx,dword ptr [ecx+0C]
 004EBF78    mov         eax,dword ptr [ebp-8]
 004EBF7B    mov         eax,dword ptr [eax+24]
 004EBF7E    lea         edx,[eax+1D]
 004EBF81    mov         eax,dword ptr [ebp-8]
 004EBF84    mov         eax,dword ptr [eax+1C]
 004EBF87    call        004E8F70
 004EBF8C    push        ebp
 004EBF8D    call        004EBB88
 004EBF92    pop         ecx
>004EBF93    jmp         004EBFDF
 004EBF95    mov         eax,dword ptr [ebp-8]
 004EBF98    mov         eax,dword ptr [eax+1C]
 004EBF9B    call        004E0588
 004EBFA0    mov         dword ptr [ebp-4],eax
 004EBFA3    push        ebp
 004EBFA4    call        004EBB14
 004EBFA9    pop         ecx
 004EBFAA    mov         eax,dword ptr [ebp-8]
 004EBFAD    mov         eax,dword ptr [eax+1C]
 004EBFB0    call        004E0588
 004EBFB5    push        eax
 004EBFB6    mov         eax,dword ptr [ebp-8]
 004EBFB9    mov         eax,dword ptr [eax+24]
 004EBFBC    lea         edx,[eax+1D]
 004EBFBF    mov         eax,dword ptr [ebp-8]
 004EBFC2    mov         eax,dword ptr [eax+1C]
 004EBFC5    xor         ecx,ecx
 004EBFC7    call        004E8F70
 004EBFCC    push        ebp
 004EBFCD    call        004EBB88
 004EBFD2    pop         ecx
 004EBFD3    mov         eax,dword ptr [ebp-8]
 004EBFD6    mov         eax,dword ptr [eax+24]
 004EBFD9    mov         edx,dword ptr [ebp-4]
 004EBFDC    mov         dword ptr [eax+10],edx
 004EBFDF    mov         esp,ebp
 004EBFE1    pop         ebp
 004EBFE2    ret
end;*}

//004EBFE4
{*function sub_004EBFE4(?:?; ?:?):?;
begin
 004EBFE4    push        ebp
 004EBFE5    mov         ebp,esp
 004EBFE7    add         esp,0FFFFFFF4
 004EBFEA    mov         dword ptr [ebp-8],edx
 004EBFED    mov         dword ptr [ebp-4],eax
 004EBFF0    mov         byte ptr [ebp-9],0
 004EBFF4    mov         al,byte ptr [ebp-9]
 004EBFF7    cmp         al,1F
>004EBFF9    ja          004EC002
 004EBFFB    and         eax,7F
 004EBFFE    bt          dword ptr [ebp-8],eax
>004EC002    jb          004EC00D
 004EC004    inc         byte ptr [ebp-9]
 004EC007    cmp         byte ptr [ebp-9],0B
>004EC00B    jne         004EBFF4
 004EC00D    mov         al,byte ptr [ebp-9]
 004EC010    mov         esp,ebp
 004EC012    pop         ebp
 004EC013    ret
end;*}

//004EC014
{*procedure sub_004EC014(?:TMPHUndoStorage; ?:?; ?:?);
begin
 004EC014    push        ebp
 004EC015    mov         ebp,esp
 004EC017    add         esp,0FFFFFFE8
 004EC01A    push        ebx
 004EC01B    mov         dword ptr [ebp-0C],ecx
 004EC01E    mov         dword ptr [ebp-8],edx
 004EC021    mov         dword ptr [ebp-4],eax
 004EC024    mov         eax,dword ptr [ebp-4]
 004EC027    call        004EA1A8
 004EC02C    test        al,al
>004EC02E    je          004EC164
 004EC034    mov         eax,dword ptr [ebp-4]
 004EC037    mov         edx,dword ptr [eax]
 004EC039    call        dword ptr [edx];TMPHUndoStorage.sub_004235A0
 004EC03B    sub         eax,4
 004EC03E    sbb         edx,0
 004EC041    push        edx
 004EC042    push        eax
 004EC043    mov         eax,dword ptr [ebp-4]
 004EC046    call        TStream.SetPosition
 004EC04B    lea         edx,[ebp-18]
 004EC04E    mov         ecx,4
 004EC053    mov         eax,dword ptr [ebp-4]
 004EC056    mov         ebx,dword ptr [eax]
 004EC058    call        dword ptr [ebx+0C];TMPHUndoStorage.sub_00423D8C
 004EC05B    mov         edx,dword ptr [ebp-18]
 004EC05E    neg         edx
 004EC060    mov         cx,1
 004EC064    mov         eax,dword ptr [ebp-4]
 004EC067    mov         ebx,dword ptr [eax]
 004EC069    call        dword ptr [ebx+14];TMPHUndoStorage.sub_00423DFC
 004EC06C    mov         eax,dword ptr [ebp-4]
 004EC06F    call        TStream.GetPosition
 004EC074    push        edx
 004EC075    push        eax
 004EC076    mov         eax,dword ptr [ebp-4]
 004EC079    mov         eax,dword ptr [eax+4];TMPHUndoStorage.FMemory:Pointer
 004EC07C    xor         edx,edx
 004EC07E    add         eax,dword ptr [esp]
 004EC081    adc         edx,dword ptr [esp+4]
 004EC085    add         esp,8
 004EC088    mov         dword ptr [ebp-10],eax
 004EC08B    mov         eax,dword ptr [ebp-10]
 004EC08E    test        byte ptr [eax+6],1
>004EC092    jne         004EC0FF
 004EC094    mov         eax,dword ptr [ebp-4]
 004EC097    mov         edx,dword ptr [eax]
 004EC099    call        dword ptr [edx];TMPHUndoStorage.sub_004235A0
 004EC09B    add         eax,0C
 004EC09E    adc         edx,0
 004EC0A1    push        edx
 004EC0A2    push        eax
 004EC0A3    mov         eax,dword ptr [ebp-4]
 004EC0A6    call        004235FC
 004EC0AB    mov         eax,dword ptr [ebp-4]
 004EC0AE    call        TStream.GetPosition
 004EC0B3    push        edx
 004EC0B4    push        eax
 004EC0B5    mov         eax,dword ptr [ebp-4]
 004EC0B8    mov         eax,dword ptr [eax+4];TMPHUndoStorage.FMemory:Pointer
 004EC0BB    xor         edx,edx
 004EC0BD    add         eax,dword ptr [esp]
 004EC0C0    adc         edx,dword ptr [esp+4]
 004EC0C4    add         esp,8
 004EC0C7    mov         dword ptr [ebp-10],eax
 004EC0CA    mov         eax,dword ptr [ebp-10]
 004EC0CD    or          dword ptr [eax+4],10000
 004EC0D4    mov         eax,dword ptr [ebp-10]
 004EC0D7    add         dword ptr [eax],0C
 004EC0DA    add         dword ptr [ebp-18],0C
 004EC0DE    mov         cx,2
 004EC0E2    mov         edx,0FFFFFFFC
 004EC0E7    mov         eax,dword ptr [ebp-4]
 004EC0EA    mov         ebx,dword ptr [eax]
 004EC0EC    call        dword ptr [ebx+14];TMPHUndoStorage.sub_00423DFC
 004EC0EF    lea         edx,[ebp-18]
 004EC0F2    mov         ecx,4
 004EC0F7    mov         eax,dword ptr [ebp-4]
 004EC0FA    call        TStream.WriteBuffer
 004EC0FF    mov         eax,dword ptr [ebp-10]
 004EC102    mov         edx,dword ptr [ebp-8]
 004EC105    mov         dword ptr [eax+8],edx
 004EC108    mov         eax,dword ptr [ebp-4]
 004EC10B    mov         edx,dword ptr [eax]
 004EC10D    call        dword ptr [edx];TMPHUndoStorage.sub_004235A0
 004EC10F    push        edx
 004EC110    push        eax
 004EC111    mov         eax,dword ptr [ebp-4]
 004EC114    mov         eax,dword ptr [eax+4];TMPHUndoStorage.FMemory:Pointer
 004EC117    xor         edx,edx
 004EC119    add         eax,dword ptr [esp]
 004EC11C    adc         edx,dword ptr [esp+4]
 004EC120    add         esp,8
 004EC123    sub         eax,4
 004EC126    sbb         edx,0
 004EC129    sub         eax,0C
 004EC12C    sbb         edx,0
 004EC12F    mov         dword ptr [ebp-14],eax
 004EC132    mov         eax,dword ptr [ebp-8]
 004EC135    mov         edx,dword ptr [ebp-14]
 004EC138    mov         dword ptr [edx],eax
 004EC13A    cmp         dword ptr [ebp-0C],0
>004EC13E    jne         004EC14C
 004EC140    mov         eax,dword ptr [ebp-14]
 004EC143    mov         dword ptr [eax+4],0FFFFFFFF
>004EC14A    jmp         004EC159
 004EC14C    mov         eax,dword ptr [ebp-8]
 004EC14F    add         eax,dword ptr [ebp-0C]
 004EC152    dec         eax
 004EC153    mov         edx,dword ptr [ebp-14]
 004EC156    mov         dword ptr [edx+4],eax
 004EC159    mov         eax,dword ptr [ebp-14]
 004EC15C    mov         eax,dword ptr [eax]
 004EC15E    mov         edx,dword ptr [ebp-14]
 004EC161    mov         dword ptr [edx+8],eax
 004EC164    pop         ebx
 004EC165    mov         esp,ebp
 004EC167    pop         ebp
 004EC168    ret
end;*}

//004EC16C
{*function sub_004EC16C(?:?; ?:?; ?:?):?;
begin
 004EC16C    push        ebp
 004EC16D    mov         ebp,esp
 004EC16F    add         esp,0FFFFFFE8
 004EC172    push        ebx
 004EC173    mov         dword ptr [ebp-0C],ecx
 004EC176    mov         dword ptr [ebp-8],edx
 004EC179    mov         dword ptr [ebp-4],eax
 004EC17C    mov         eax,dword ptr [ebp-4]
 004EC17F    mov         edx,dword ptr [eax]
 004EC181    call        dword ptr [edx]
 004EC183    sub         eax,4
 004EC186    sbb         edx,0
 004EC189    push        edx
 004EC18A    push        eax
 004EC18B    mov         eax,dword ptr [ebp-4]
 004EC18E    call        TStream.SetPosition
 004EC193    lea         edx,[ebp-14]
 004EC196    mov         ecx,4
 004EC19B    mov         eax,dword ptr [ebp-4]
 004EC19E    mov         ebx,dword ptr [eax]
 004EC1A0    call        dword ptr [ebx+0C]
 004EC1A3    mov         edx,dword ptr [ebp-14]
 004EC1A6    neg         edx
 004EC1A8    mov         cx,1
 004EC1AC    mov         eax,dword ptr [ebp-4]
 004EC1AF    mov         ebx,dword ptr [eax]
 004EC1B1    call        dword ptr [ebx+14]
 004EC1B4    mov         edx,dword ptr [ebp-8]
 004EC1B7    mov         ecx,1E
 004EC1BC    mov         eax,dword ptr [ebp-4]
 004EC1BF    mov         ebx,dword ptr [eax]
 004EC1C1    call        dword ptr [ebx+0C]
 004EC1C4    mov         edx,dword ptr [ebp-8]
 004EC1C7    mov         edx,dword ptr [edx+4]
 004EC1CA    mov         eax,dword ptr [ebp-4]
 004EC1CD    call        004EBFE4
 004EC1D2    mov         byte ptr [ebp-0D],al
 004EC1D5    mov         eax,dword ptr [ebp-8]
 004EC1D8    test        byte ptr [eax+6],10
>004EC1DC    je          004EC299
 004EC1E2    mov         eax,dword ptr [ebp-4]
 004EC1E5    call        TStream.GetPosition
 004EC1EA    mov         dword ptr [ebp-18],eax
 004EC1ED    xor         eax,eax
 004EC1EF    push        ebp
 004EC1F0    push        4EC292
 004EC1F5    push        dword ptr fs:[eax]
 004EC1F8    mov         dword ptr fs:[eax],esp
 004EC1FB    mov         eax,dword ptr [ebp-4]
 004EC1FE    mov         edx,dword ptr [eax]
 004EC200    call        dword ptr [edx]
 004EC202    sub         eax,4
 004EC205    sbb         edx,0
 004EC208    sub         eax,4
 004EC20B    sbb         edx,0
 004EC20E    push        edx
 004EC20F    push        eax
 004EC210    mov         eax,dword ptr [ebp-4]
 004EC213    call        TStream.SetPosition
 004EC218    mov         eax,dword ptr [ebp-8]
 004EC21B    test        byte ptr [eax+6],1
>004EC21F    je          004EC232
 004EC221    mov         cx,1
 004EC225    mov         edx,0FFFFFFF4
 004EC22A    mov         eax,dword ptr [ebp-4]
 004EC22D    mov         ebx,dword ptr [eax]
 004EC22F    call        dword ptr [ebx+14]
 004EC232    lea         edx,[ebp-14]
 004EC235    mov         ecx,4
 004EC23A    mov         eax,dword ptr [ebp-4]
 004EC23D    mov         ebx,dword ptr [eax]
 004EC23F    call        dword ptr [ebx+0C]
 004EC242    mov         edx,dword ptr [ebp-14]
 004EC245    add         edx,4
 004EC248    neg         edx
 004EC24A    mov         cx,1
 004EC24E    mov         eax,dword ptr [ebp-4]
 004EC251    mov         ebx,dword ptr [eax]
 004EC253    call        dword ptr [ebx+14]
 004EC256    mov         eax,dword ptr [ebp-0C]
 004EC259    mov         edx,dword ptr [ebp-14]
 004EC25C    call        @LStrSetLength
 004EC261    mov         eax,dword ptr [ebp-0C]
 004EC264    call        00405598
 004EC269    mov         edx,eax
 004EC26B    mov         ecx,dword ptr [ebp-14]
 004EC26E    mov         eax,dword ptr [ebp-4]
 004EC271    mov         ebx,dword ptr [eax]
 004EC273    call        dword ptr [ebx+0C]
 004EC276    xor         eax,eax
 004EC278    pop         edx
 004EC279    pop         ecx
 004EC27A    pop         ecx
 004EC27B    mov         dword ptr fs:[eax],edx
 004EC27E    push        4EC2A1
 004EC283    mov         eax,dword ptr [ebp-18]
 004EC286    cdq
 004EC287    push        edx
 004EC288    push        eax
 004EC289    mov         eax,dword ptr [ebp-4]
 004EC28C    call        TStream.SetPosition
 004EC291    ret
>004EC292    jmp         @HandleFinally
>004EC297    jmp         004EC283
 004EC299    mov         eax,dword ptr [ebp-0C]
 004EC29C    call        @LStrClr
 004EC2A1    mov         al,byte ptr [ebp-0D]
 004EC2A4    pop         ebx
 004EC2A5    mov         esp,ebp
 004EC2A7    pop         ebp
 004EC2A8    ret
end;*}

//004EC2AC
procedure sub_004EC2AC;
begin
{*
 004EC2AC    push        ebp
 004EC2AD    mov         ebp,esp
 004EC2AF    push        ecx
 004EC2B0    mov         byte ptr [ebp-1],0
 004EC2B4    xor         eax,eax
 004EC2B6    mov         al,byte ptr [ebp-1]
 004EC2B9    mov         dl,byte ptr [ebp-1]
 004EC2BC    mov         byte ptr [eax+57220C],dl
 004EC2C2    xor         eax,eax
 004EC2C4    mov         al,byte ptr [ebp-1]
 004EC2C7    mov         dl,byte ptr [ebp-1]
 004EC2CA    mov         byte ptr [eax+57230C],dl
 004EC2D0    inc         byte ptr [ebp-1]
 004EC2D3    cmp         byte ptr [ebp-1],0
>004EC2D7    jne         004EC2B4
 004EC2D9    pop         ecx
 004EC2DA    pop         ebp
 004EC2DB    ret
*}
end;

//004EC2DC
{*function sub_004EC2DC(?:TMPHMemoryStream; ?:?; ?:?):?;
begin
 004EC2DC    push        ebp
 004EC2DD    mov         ebp,esp
 004EC2DF    add         esp,0FFFFFFEC
 004EC2E2    push        ebx
 004EC2E3    xor         ebx,ebx
 004EC2E5    mov         dword ptr [ebp-14],ebx
 004EC2E8    mov         dword ptr [ebp-0C],ecx
 004EC2EB    mov         dword ptr [ebp-8],edx
 004EC2EE    mov         dword ptr [ebp-4],eax
 004EC2F1    xor         eax,eax
 004EC2F3    push        ebp
 004EC2F4    push        4EC36B
 004EC2F9    push        dword ptr fs:[eax]
 004EC2FC    mov         dword ptr fs:[eax],esp
 004EC2FF    cmp         dword ptr [ebp-8],0
>004EC303    jl          004EC328
 004EC305    mov         eax,dword ptr [ebp-4]
 004EC308    mov         edx,dword ptr [eax]
 004EC30A    call        dword ptr [edx];TMPHMemoryStream.sub_004235A0
 004EC30C    push        edx
 004EC30D    push        eax
 004EC30E    mov         eax,dword ptr [ebp-8]
 004EC311    add         eax,dword ptr [ebp-0C]
 004EC314    cdq
 004EC315    cmp         edx,dword ptr [esp+4]
>004EC319    jne         004EC324
 004EC31B    cmp         eax,dword ptr [esp]
 004EC31E    pop         edx
 004EC31F    pop         eax
>004EC320    jbe         004EC349
>004EC322    jmp         004EC328
 004EC324    pop         edx
 004EC325    pop         eax
>004EC326    jle         004EC349
 004EC328    lea         edx,[ebp-14]
 004EC32B    mov         eax,4DF36C;^HInstance:LongWord
 004EC330    call        LoadResString
 004EC335    mov         ecx,dword ptr [ebp-14]
 004EC338    mov         dl,1
 004EC33A    mov         eax,[004DE8FC];EMPHexEditor
 004EC33F    call        Exception.Create;EMPHexEditor.Create
 004EC344    call        @RaiseExcept
 004EC349    mov         eax,dword ptr [ebp-4]
 004EC34C    mov         eax,dword ptr [eax+4];TMPHMemoryStream.FMemory:Pointer
 004EC34F    add         eax,dword ptr [ebp-8]
 004EC352    mov         dword ptr [ebp-10],eax
 004EC355    xor         eax,eax
 004EC357    pop         edx
 004EC358    pop         ecx
 004EC359    pop         ecx
 004EC35A    mov         dword ptr fs:[eax],edx
 004EC35D    push        4EC372
 004EC362    lea         eax,[ebp-14]
 004EC365    call        @LStrClr
 004EC36A    ret
>004EC36B    jmp         @HandleFinally
>004EC370    jmp         004EC362
 004EC372    mov         eax,dword ptr [ebp-10]
 004EC375    pop         ebx
 004EC376    mov         esp,ebp
 004EC378    pop         ebp
 004EC379    ret
end;*}

//004EC37C
{*procedure sub_004EC37C(?:?; ?:?; ?:?; ?:?);
begin
 004EC37C    push        ebp
 004EC37D    mov         ebp,esp
 004EC37F    add         esp,0FFFFFFF4
 004EC382    mov         dword ptr [ebp-0C],ecx
 004EC385    mov         dword ptr [ebp-8],edx
 004EC388    mov         dword ptr [ebp-4],eax
 004EC38B    mov         ecx,dword ptr [ebp+8]
 004EC38E    mov         edx,dword ptr [ebp-8]
 004EC391    mov         eax,dword ptr [ebp-4]
 004EC394    call        004EC3B8
 004EC399    push        eax
 004EC39A    mov         ecx,dword ptr [ebp+8]
 004EC39D    mov         edx,dword ptr [ebp-0C]
 004EC3A0    mov         eax,dword ptr [ebp-4]
 004EC3A3    call        004EC3B8
 004EC3A8    mov         ecx,dword ptr [ebp+8]
 004EC3AB    pop         edx
 004EC3AC    call        004084CC
 004EC3B1    mov         esp,ebp
 004EC3B3    pop         ebp
 004EC3B4    ret         4
end;*}

//004EC3B8
{*function sub_004EC3B8(?:?; ?:?; ?:?):?;
begin
 004EC3B8    push        ebp
 004EC3B9    mov         ebp,esp
 004EC3BB    add         esp,0FFFFFFF0
 004EC3BE    mov         dword ptr [ebp-0C],ecx
 004EC3C1    mov         dword ptr [ebp-8],edx
 004EC3C4    mov         dword ptr [ebp-4],eax
 004EC3C7    mov         ecx,dword ptr [ebp-0C]
 004EC3CA    mov         edx,dword ptr [ebp-8]
 004EC3CD    mov         eax,dword ptr [ebp-4]
 004EC3D0    call        004EC2DC
 004EC3D5    mov         dword ptr [ebp-10],eax
 004EC3D8    mov         eax,dword ptr [ebp-10]
 004EC3DB    mov         esp,ebp
 004EC3DD    pop         ebp
 004EC3DE    ret
end;*}

//004EC3E0
{*procedure sub_004EC3E0(?:?; ?:?; ?:?; ?:?);
begin
 004EC3E0    push        ebp
 004EC3E1    mov         ebp,esp
 004EC3E3    add         esp,0FFFFFFF4
 004EC3E6    mov         dword ptr [ebp-0C],ecx
 004EC3E9    mov         dword ptr [ebp-8],edx
 004EC3EC    mov         dword ptr [ebp-4],eax
 004EC3EF    mov         ecx,dword ptr [ebp+8]
 004EC3F2    mov         edx,dword ptr [ebp-0C]
 004EC3F5    mov         eax,dword ptr [ebp-4]
 004EC3F8    call        004EC2DC
 004EC3FD    mov         edx,eax
 004EC3FF    mov         eax,dword ptr [ebp-8]
 004EC402    mov         ecx,dword ptr [ebp+8]
 004EC405    call        Move
 004EC40A    mov         esp,ebp
 004EC40C    pop         ebp
 004EC40D    ret         4
end;*}

Initialization
//004EC53C
{*
 004EC53C    sub         dword ptr ds:[57240C],1
>004EC543    jae         004EC554
 004EC545    mov         eax,4EC410
 004EC54A    call        @InitResStrings
 004EC54F    call        004EC2AC
 004EC554    ret
*}
Finalization
//004EC4CC
{*
 004EC4CC    push        ebp
 004EC4CD    mov         ebp,esp
 004EC4CF    xor         eax,eax
 004EC4D1    push        ebp
 004EC4D2    push        4EC532
 004EC4D7    push        dword ptr fs:[eax]
 004EC4DA    mov         dword ptr fs:[eax],esp
 004EC4DD    inc         dword ptr ds:[57240C]
>004EC4E3    jne         004EC524
 004EC4E5    mov         eax,56D084;gvar_0056D084:array[11] of ?
 004EC4EA    mov         ecx,0B
 004EC4EF    mov         edx,dword ptr ds:[4010C0];String
 004EC4F5    call        @FinalizeArray
 004EC4FA    mov         eax,56D06C;gvar_0056D06C:array[6] of ?
 004EC4FF    mov         ecx,6
 004EC504    mov         edx,dword ptr ds:[4010C0];String
 004EC50A    call        @FinalizeArray
 004EC50F    mov         eax,56D054;gvar_0056D054:array[6] of ?
 004EC514    mov         ecx,6
 004EC519    mov         edx,dword ptr ds:[4010C0];String
 004EC51F    call        @FinalizeArray
 004EC524    xor         eax,eax
 004EC526    pop         edx
 004EC527    pop         ecx
 004EC528    pop         ecx
 004EC529    mov         dword ptr fs:[eax],edx
 004EC52C    push        4EC539
 004EC531    ret
>004EC532    jmp         @HandleFinally
>004EC537    jmp         004EC531
 004EC539    pop         ebp
 004EC53A    ret
*}
end.