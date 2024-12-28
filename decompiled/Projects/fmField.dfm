object fmField: TfmField
  Left = 576
  Top = 110
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Field'
  ClientHeight = 206
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
  PixelsPerInch = 96
  TextHeight = 13
  object edSection: TLabeledEdit
    Left = 21
    Top = 93
    Width = 45
    Height = 21
    EditLabel.Width = 39
    EditLabel.Height = 13
    EditLabel.Caption = ' Section'
    LabelPosition = lpRight
    TabOrder = 0
    Text = '0'
  end
  object edOffset: TLabeledEdit
    Left = 124
    Top = 68
    Width = 45
    Height = 21
    EditLabel.Width = 31
    EditLabel.Height = 13
    EditLabel.Caption = ' Offset'
    LabelPosition = lpRight
    TabOrder = 1
    Text = '0'
  end
  object edLen: TLabeledEdit
    Left = 125
    Top = 92
    Width = 45
    Height = 21
    Hint = 'in Bytes'
    EditLabel.Width = 21
    EditLabel.Height = 13
    EditLabel.Caption = ' Len'
    LabelPosition = lpRight
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    Text = '0'
  end
  object btRead: TButton
    Left = 22
    Top = 132
    Width = 75
    Height = 25
    Caption = 'Read'
    TabOrder = 3
    OnClick = btReadClick
  end
  object btReadAll: TButton
    Left = 22
    Top = 164
    Width = 75
    Height = 25
    Hint = 'Read All Sections'
    Caption = 'Read All'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 4
    OnClick = btReadAllClick
  end
  object btDump: TButton
    Left = 119
    Top = 165
    Width = 75
    Height = 25
    Caption = 'Dump'
    TabOrder = 5
    OnClick = btDumpClick
  end
  object edFileId: TLabeledEdit
    Left = 20
    Top = 69
    Width = 45
    Height = 21
    Hint = '$00 or $02 or $21'
    EditLabel.Width = 33
    EditLabel.Height = 13
    EditLabel.Caption = ' File ID'
    LabelPosition = lpRight
    ParentShowHint = False
    ShowHint = True
    TabOrder = 6
    Text = '0'
  end
  object btWrite: TButton
    Left = 120
    Top = 132
    Width = 75
    Height = 25
    Caption = 'Write'
    TabOrder = 7
    OnClick = btWriteClick
  end
  object cbFileId: TComboBox
    Left = 19
    Top = 13
    Width = 151
    Height = 21
    ItemHeight = 13
    TabOrder = 8
    Text = 'Select File ID'
    OnChange = cbFileIdChange
    Items.Strings = (
      'General'
      'Config Sector'
      'DRM Log')
  end
  object cbSection: TComboBox
    Left = 19
    Top = 36
    Width = 151
    Height = 21
    ItemHeight = 13
    TabOrder = 9
    Text = 'Select Section'
    OnChange = cbSectionChange
  end
end
