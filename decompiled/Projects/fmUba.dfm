object fmUba: TfmUba
  Left = 599
  Top = 118
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'UBA'
  ClientHeight = 167
  ClientWidth = 178
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object btDump: TButton
    Left = 15
    Top = 123
    Width = 75
    Height = 25
    Caption = 'Dump'
    TabOrder = 0
    OnClick = btDumpClick
  end
  object btRead: TButton
    Left = 15
    Top = 91
    Width = 75
    Height = 25
    Caption = 'Read'
    TabOrder = 1
    OnClick = btReadClick
  end
  object btWrite: TButton
    Left = 94
    Top = 91
    Width = 75
    Height = 25
    Caption = 'Write'
    TabOrder = 2
    OnClick = btWriteClick
  end
  object edLen: TLabeledEdit
    Left = 38
    Top = 35
    Width = 108
    Height = 21
    Hint = 'If zerro use File Size'
    EditLabel.Width = 21
    EditLabel.Height = 13
    EditLabel.Caption = ' Len'
    LabelPosition = lpLeft
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
    Text = '1'
  end
  object edStart: TLabeledEdit
    Left = 38
    Top = 11
    Width = 108
    Height = 21
    EditLabel.Width = 25
    EditLabel.Height = 13
    EditLabel.Caption = ' Start'
    LabelPosition = lpLeft
    TabOrder = 4
    Text = '$00000000'
  end
  object pbUba: TProgressBar
    Left = 0
    Top = 157
    Width = 178
    Height = 10
    Align = alBottom
    ParentShowHint = False
    ShowHint = True
    TabOrder = 5
  end
  object btMaxUba: TButton
    Left = 150
    Top = 12
    Width = 18
    Height = 19
    Hint = 'Get Second Copy Offset'
    Caption = '>'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 6
    OnClick = btMaxUbaClick
  end
  object cbAltUba: TCheckBox
    Left = 40
    Top = 66
    Width = 97
    Height = 17
    Caption = 'Alt Uba'
    TabOrder = 7
    OnClick = cbAltUbaClick
  end
  object btMaxUba2: TButton
    Left = 150
    Top = 36
    Width = 18
    Height = 19
    Hint = 'Get Second Copy Offset'
    Caption = '>'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 8
    OnClick = btMaxUba2Click
  end
  object btErase: TButton
    Left = 95
    Top = 123
    Width = 75
    Height = 25
    Caption = 'Erase'
    TabOrder = 9
    OnClick = btEraseClick
  end
end
