object fmDefectsEditor: TfmDefectsEditor
  Left = 433
  Top = 104
  Width = 365
  Height = 364
  BorderIcons = [biSystemMenu]
  Caption = 'Defects Editor'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnDestroy = FormDestroy
  OnPaint = FormPaint
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 113
    Top = 0
    Width = 5
    Height = 314
  end
  object clHeads: TCheckListBox
    Left = 0
    Top = 0
    Width = 113
    Height = 314
    Align = alLeft
    BiDiMode = bdRightToLeft
    ItemHeight = 13
    ParentBiDiMode = False
    PopupMenu = pmEditor
    TabOrder = 0
    OnClick = clHeadsClick
  end
  object lvDefects: TListView
    Left = 118
    Top = 0
    Width = 239
    Height = 314
    Hint = 
      'TOC - Time Offset Count (locates data following wedge)'#13'Wedge - H' +
      'olds  header and position data'
    Align = alClient
    BiDiMode = bdRightToLeft
    Columns = <
      item
        Caption = '#'
        Width = 0
      end
      item
        Alignment = taRightJustify
        AutoSize = True
        Caption = 'Track'
      end
      item
        Alignment = taRightJustify
        Caption = 'Head'
      end
      item
        Alignment = taRightJustify
        AutoSize = True
        Caption = 'TOC beg'
      end
      item
        Alignment = taRightJustify
        AutoSize = True
        Caption = 'TOC end'
      end>
    GridLines = True
    ReadOnly = True
    RowSelect = True
    ParentBiDiMode = False
    ParentShowHint = False
    PopupMenu = pmEditor
    ShowHint = True
    TabOrder = 1
    ViewStyle = vsReport
    OnDblClick = lvDefectsDblClick
  end
  object sbDefects: TStatusBar
    Left = 0
    Top = 314
    Width = 357
    Height = 19
    Panels = <
      item
        Width = 50
      end>
  end
  object pmEditor: TPopupMenu
    Left = 8
    Top = 280
    object miReadPList: TMenuItem
      Caption = 'Read P-List'
      ShortCut = 16464
      OnClick = miReadPListClick
    end
    object miReadGList: TMenuItem
      Caption = 'Read G-List'
      ShortCut = 16455
      OnClick = miReadGListClick
    end
    object miReadSAList: TMenuItem
      Caption = 'Read SA-List'
      ShortCut = 16467
      OnClick = miReadSAListClick
    end
    object miReadTList: TMenuItem
      Caption = 'Read T-List'
      ShortCut = 16468
      OnClick = miReadTListClick
    end
    object miN1: TMenuItem
      Caption = '-'
    end
    object miWrite: TMenuItem
      Caption = 'Write'
      ShortCut = 16471
      OnClick = miWriteClick
    end
    object miN2: TMenuItem
      Caption = '-'
    end
    object miEdit: TMenuItem
      Caption = 'Edit'
      ShortCut = 16453
      OnClick = miEditClick
    end
    object miKillHead: TMenuItem
      Caption = 'Kill Head'
      ShortCut = 16430
      OnClick = miKillHeadClick
    end
    object miDelete: TMenuItem
      Caption = 'Delete'
      ShortCut = 46
      OnClick = miDeleteClick
    end
    object miClear: TMenuItem
      Caption = 'Clear'
      ShortCut = 16451
      OnClick = miClearClick
    end
    object miN3: TMenuItem
      Caption = '-'
    end
    object miImportfromINI: TMenuItem
      Caption = 'Import from INI'
      OnClick = miImportfromINIClick
    end
    object miExporttoINI: TMenuItem
      Caption = 'Export to INI'
      OnClick = miExporttoINIClick
    end
  end
end
