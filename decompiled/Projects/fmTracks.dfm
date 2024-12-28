object fmTracks: TfmTracks
  Left = 407
  Top = 94
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Tracks Operations'
  ClientHeight = 275
  ClientWidth = 344
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  Visible = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object gbAdress: TGroupBox
    Left = 8
    Top = 8
    Width = 145
    Height = 113
    Caption = 'Adress'
    TabOrder = 0
    object edStart: TLabeledEdit
      Left = 53
      Top = 11
      Width = 57
      Height = 21
      EditLabel.Width = 42
      EditLabel.Height = 13
      EditLabel.Caption = 'Start Cyl '
      LabelPosition = lpLeft
      TabOrder = 0
      Text = '$01'
    end
    object edEnd: TLabeledEdit
      Left = 53
      Top = 35
      Width = 58
      Height = 21
      EditLabel.Width = 39
      EditLabel.Height = 13
      EditLabel.Caption = 'End Cyl '
      LabelPosition = lpLeft
      TabOrder = 1
      Text = '$40'
    end
    object edSpt: TLabeledEdit
      Left = 53
      Top = 58
      Width = 58
      Height = 21
      EditLabel.Width = 24
      EditLabel.Height = 13
      EditLabel.Caption = 'SPT '
      LabelPosition = lpLeft
      TabOrder = 2
      Text = '$200'
    end
    object btGetSpt: TButton
      Left = 116
      Top = 60
      Width = 18
      Height = 18
      Hint = 'Get SPT Alternative'
      Caption = '>'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = btGetSptClick
    end
    object btTrk: TButton
      Left = 116
      Top = 37
      Width = 17
      Height = 17
      Hint = 'Get Num SA Tracks Alternative'
      Caption = '>'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnClick = btTrkClick
    end
    object btFromZoneMap: TButton
      Left = 9
      Top = 82
      Width = 126
      Height = 25
      Hint = 'Get Value From Zones Table'
      Caption = 'From Zones Table'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      OnClick = btFromZoneMapClick
    end
  end
  object gbOperations: TGroupBox
    Left = 160
    Top = 32
    Width = 177
    Height = 89
    Caption = 'Operations'
    TabOrder = 1
    object btRead: TButton
      Left = 11
      Top = 19
      Width = 75
      Height = 25
      Caption = 'Read'
      TabOrder = 0
      OnClick = btReadClick
    end
    object btWrite: TButton
      Left = 91
      Top = 19
      Width = 75
      Height = 25
      Caption = 'Write'
      TabOrder = 1
      OnClick = btWriteClick
    end
    object btView: TButton
      Left = 91
      Top = 51
      Width = 75
      Height = 25
      Caption = 'Dump'
      TabOrder = 2
      OnClick = btViewClick
    end
    object btScan: TButton
      Left = 11
      Top = 51
      Width = 75
      Height = 25
      Caption = 'Scan'
      TabOrder = 3
      OnClick = btScanClick
    end
  end
  object cbArea: TComboBox
    Left = 192
    Top = 8
    Width = 145
    Height = 21
    ItemHeight = 13
    ItemIndex = 0
    TabOrder = 2
    Text = 'Firmware'
    Items.Strings = (
      'Firmware'
      'User defined')
  end
  object StaticText1: TStaticText
    Left = 160
    Top = 10
    Width = 29
    Height = 17
    Caption = 'Area:'
    TabOrder = 3
  end
  object pbTracks: TProgressBar
    Left = 0
    Top = 265
    Width = 344
    Height = 10
    Align = alBottom
    ParentShowHint = False
    ShowHint = True
    TabOrder = 4
  end
  object rgHeads: TRadioGroup
    Left = 8
    Top = 122
    Width = 145
    Height = 129
    Caption = 'Heads'
    ItemIndex = 0
    Items.Strings = (
      'Head 0'
      'Head 1'
      'Head 2'
      'Head 3'
      'Head 4'
      'Head 5'
      'Head 6'
      'Head 7')
    TabOrder = 5
  end
  object pbSectors: TProgressBar
    Left = 0
    Top = 255
    Width = 344
    Height = 10
    Align = alBottom
    ParentShowHint = False
    ShowHint = True
    TabOrder = 6
  end
  object gbSetting: TGroupBox
    Left = 160
    Top = 123
    Width = 177
    Height = 127
    Caption = 'Setting'
    TabOrder = 7
    object cbReadLong: TCheckBox
      Left = 8
      Top = 16
      Width = 97
      Height = 17
      Hint = 'Use Read Long if Error'
      Caption = 'Read Long'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = cbReadLongClick
    end
    object cbReadLong2: TCheckBox
      Left = 8
      Top = 32
      Width = 97
      Height = 17
      Hint = 'Use Read Long if Error'
      Caption = 'Read Long Alt'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = cbReadLongClick
    end
    object cbWrite: TCheckBox
      Left = 8
      Top = 64
      Width = 81
      Height = 17
      Hint = 'Write zerros if error'
      Caption = 'Scan Write'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = cbReadLongClick
    end
    object cbRead: TCheckBox
      Left = 8
      Top = 48
      Width = 81
      Height = 17
      Hint = 'Use Read command for Scan Surface'
      Caption = 'Scan Read'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = cbReadLongClick
    end
    object cbSelectFile: TCheckBox
      Left = 8
      Top = 88
      Width = 121
      Height = 17
      Hint = 'Write zerros if error'
      Caption = 'Select Files to Write'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnClick = cbReadLongClick
    end
    object cbSecondCopy: TCheckBox
      Left = 8
      Top = 104
      Width = 161
      Height = 17
      Hint = 'Write zerros if error'
      Caption = 'Write Both Copy'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      OnClick = cbReadLongClick
    end
    object cbErase: TCheckBox
      Left = 104
      Top = 16
      Width = 65
      Height = 17
      Caption = 'Erase'
      TabOrder = 6
    end
    object cbAddToList: TCheckBox
      Left = 104
      Top = 32
      Width = 65
      Height = 17
      Caption = 'List Add'
      TabOrder = 7
    end
  end
end
