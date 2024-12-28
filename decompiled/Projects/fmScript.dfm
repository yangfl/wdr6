object fmScript: TfmScript
  Left = 359
  Top = 4
  Width = 437
  Height = 532
  BorderIcons = [biSystemMenu]
  Caption = 'Self Scan Script'
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 0
    Top = 246
    Width = 429
    Height = 3
    Cursor = crVSplit
    Align = alBottom
    Visible = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 465
    Width = 429
    Height = 36
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    object laStep: TLabel
      Left = 9
      Top = 12
      Width = 3
      Height = 13
    end
    object btWrite: TButton
      Left = 345
      Top = 7
      Width = 75
      Height = 25
      Caption = 'Set'
      TabOrder = 0
      OnClick = btWriteClick
    end
    object btRead: TButton
      Left = 261
      Top = 7
      Width = 75
      Height = 25
      Caption = 'Get'
      TabOrder = 1
      OnClick = btReadClick
    end
    object cbEdit: TCheckBox
      Left = 142
      Top = 11
      Width = 72
      Height = 17
      Caption = 'Edit Mode'
      TabOrder = 2
      OnClick = cbEditClick
    end
    object btGo: TButton
      Left = 217
      Top = 7
      Width = 33
      Height = 25
      Hint = 'Start Scan from Current Step'
      Caption = 'GO'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = btGoClick
    end
    object btRun: TButton
      Left = 218
      Top = 7
      Width = 33
      Height = 25
      Hint = 'Run only Current Test'
      Caption = 'RUN'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      Visible = False
      OnClick = btRunClick
    end
    object cbModId: TComboBox
      Left = 87
      Top = 8
      Width = 49
      Height = 21
      Hint = 'Select PST Sequence Table'
      ItemHeight = 13
      ItemIndex = 0
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      Text = '28'
      Visible = False
      OnChange = cbModIdChange
      Items.Strings = (
        '28'
        '3B'
        '3C'
        '3D'
        '3E'
        '3F')
    end
  end
  object lvScript: TListView
    Left = 0
    Top = 0
    Width = 429
    Height = 246
    Align = alClient
    Columns = <
      item
        Caption = 'ID'
      end
      item
        AutoSize = True
        Caption = 'Description'
      end>
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    GridLines = True
    HideSelection = False
    ReadOnly = True
    RowSelect = True
    ParentFont = False
    TabOrder = 1
    ViewStyle = vsReport
    OnChange = lvScriptChange
    OnCustomDrawItem = lvScriptCustomDrawItem
    OnDblClick = lvScriptDblClick
    OnSelectItem = lvScriptSelectItem
  end
  object heScript: TMPHexEditorEx
    Left = 0
    Top = 249
    Width = 429
    Height = 216
    Cursor = crIBeam
    Hint = 'Offcet 0 - Test ID'
    BackupExtension = '.bak'
    PrintOptions.MarginLeft = 20
    PrintOptions.MarginTop = 15
    PrintOptions.MarginRight = 25
    PrintOptions.MarginBottom = 25
    PrintOptions.Flags = [pfSelectionBold, pfMonochrome]
    PrintFont.Charset = DEFAULT_CHARSET
    PrintFont.Color = clWindowText
    PrintFont.Height = -15
    PrintFont.Name = 'Courier New'
    PrintFont.Style = []
    Align = alBottom
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Courier New'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    PopupMenu = pmHex
    ShowHint = True
    TabOrder = 2
    Visible = False
    BytesPerRow = 16
    Translation = tkAsIs
    OffsetFormat = '-!10:0x|'
    Colors.Background = clWindow
    Colors.ChangedBackground = 11075583
    Colors.ChangedText = clMaroon
    Colors.CursorFrame = clNavy
    Colors.Offset = clBlack
    Colors.OddColumn = clBlue
    Colors.EvenColumn = clNavy
    Colors.CurrentOffsetBackground = clBtnShadow
    Colors.OffsetBackground = clBtnFace
    Colors.CurrentOffset = clBtnHighlight
    Colors.Grid = clBtnFace
    Colors.NonFocusCursorFrame = clAqua
    Colors.ActiveFieldBackground = clWindow
    FocusFrame = True
    NoSizeChange = True
    AllowInsertMode = False
    DrawGridLines = False
    Version = 'september 30, 2007; '#169' markus stephany, vcl[at]mirkes[dot]de'
    MaxUndo = 32
    OnChange = heScriptChange
    ShowRuler = True
  end
  object pmScript: TPopupMenu
    Left = 8
    Top = 24
    object miDelete: TMenuItem
      Caption = 'Delete'
      ShortCut = 46
      OnClick = miDeleteClick
    end
    object miInsert: TMenuItem
      Caption = 'Insert'
      ShortCut = 45
      OnClick = miInsertClick
    end
    object miGenCOScript: TMenuItem
      Caption = 'Gen CO Script'
      ShortCut = 16455
      OnClick = miGenCOScriptClick
    end
    object GenScriptfromCommonLog1: TMenuItem
      Caption = 'Gen Script from Common Log'
      ShortCut = 16453
      OnClick = GenScriptfromCommonLog1Click
    end
    object miBuckUp: TMenuItem
      Caption = 'BuckUp to 3F'
      ShortCut = 16450
      OnClick = miBuckUpClick
    end
  end
  object pmHex: TPopupMenu
    Left = 8
    Top = 264
    object Copy1: TMenuItem
      Caption = 'Copy'
      ShortCut = 16451
      OnClick = Copy1Click
    end
    object Past1: TMenuItem
      Caption = 'Past'
      ShortCut = 16470
      OnClick = Past1Click
    end
  end
end
