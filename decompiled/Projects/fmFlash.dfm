object fmFlash: TfmFlash
  Left = 571
  Top = 104
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Flash operations'
  ClientHeight = 375
  ClientWidth = 222
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object gbFlash: TGroupBox
    Left = 8
    Top = 5
    Width = 205
    Height = 100
    Caption = 'Flash'
    TabOrder = 0
    object btRead: TButton
      Left = 8
      Top = 12
      Width = 93
      Height = 23
      Caption = 'Read'
      TabOrder = 0
      OnClick = btReadClick
    end
    object btWrite: TButton
      Left = 8
      Top = 39
      Width = 93
      Height = 23
      Caption = 'Write'
      TabOrder = 1
      OnClick = btWriteClick
    end
    object btDump: TButton
      Left = 104
      Top = 12
      Width = 93
      Height = 23
      Caption = 'Dump'
      TabOrder = 2
      OnClick = btDumpClick
    end
    object cbFlashLen: TComboBox
      Left = 9
      Top = 68
      Width = 92
      Height = 21
      Hint = 'Flash Size'
      ItemHeight = 13
      ItemIndex = 0
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      Text = 'Default'
      Items.Strings = (
        'Default'
        '131072'
        '196608'
        '262144')
    end
    object btRepair: TButton
      Left = 104
      Top = 39
      Width = 93
      Height = 23
      Caption = 'Repair'
      TabOrder = 4
      OnClick = btEraseClick
    end
    object cbName: TCheckBox
      Left = 104
      Top = 69
      Width = 89
      Height = 17
      Caption = 'Name by FW'
      Checked = True
      State = cbChecked
      TabOrder = 5
    end
  end
  object gbRomModules: TGroupBox
    Left = 8
    Top = 112
    Width = 207
    Height = 137
    Caption = 'ROM Modules'
    TabOrder = 1
    object lbRomModules: TListBox
      Left = 8
      Top = 16
      Width = 190
      Height = 113
      ItemHeight = 13
      Items.Strings = (
        '0A Heads Map'
        '0B Flash Directory'
        '0D Flash CFG'
        '30 SA Translator'
        '47 SA Adaptives'
        '4F File 4F')
      PopupMenu = pmRomModules
      TabOrder = 0
      OnDblClick = lbRomModulesDblClick
    end
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 254
    Width = 207
    Height = 113
    Caption = 'ARCO Reserved Area'
    TabOrder = 2
    object btCreate: TButton
      Left = 120
      Top = 78
      Width = 75
      Height = 25
      Caption = 'Create'
      TabOrder = 0
      OnClick = btCreateClick
    end
    object cb8heads: TCheckBox
      Left = 91
      Top = 27
      Width = 73
      Height = 17
      Caption = '8 Heads'
      TabOrder = 1
      OnClick = cb8headsClick
    end
    object cbDword40: TCheckBox
      Left = 91
      Top = 47
      Width = 81
      Height = 17
      Caption = 'DWord in 40'
      TabOrder = 2
    end
    object rgFrom: TRadioGroup
      Left = 8
      Top = 16
      Width = 75
      Height = 89
      Caption = 'From'
      ItemIndex = 0
      Items.Strings = (
        'Main'
        'Alt1'
        'Alt2'
        'Alt3'
        'RAM')
      TabOrder = 3
    end
  end
  object pmRomModules: TPopupMenu
    Left = 168
    Top = 168
    object miRead: TMenuItem
      Caption = 'Read'
      OnClick = miReadClick
    end
    object miWrite: TMenuItem
      Caption = 'Write'
      OnClick = miWriteClick
    end
    object miCheck: TMenuItem
      Caption = 'Check'
      OnClick = miCheckClick
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object miReadAll: TMenuItem
      Caption = 'Read All'
      OnClick = miReadAllClick
    end
    object miCheckAll: TMenuItem
      Caption = 'Check All'
      OnClick = miCheckAllClick
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object miDump: TMenuItem
      Caption = 'Dump'
      OnClick = miDumpClick
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object miReadFlashDir: TMenuItem
      Caption = 'Read Flash Dir'
      OnClick = miReadFlashDirClick
    end
  end
end
