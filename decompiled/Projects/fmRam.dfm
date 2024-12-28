object fmRam: TfmRam
  Left = 604
  Top = 106
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Buffer Extended'
  ClientHeight = 169
  ClientWidth = 182
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
  object edStart: TLabeledEdit
    Left = 6
    Top = 43
    Width = 114
    Height = 21
    EditLabel.Width = 25
    EditLabel.Height = 13
    EditLabel.Caption = ' Start'
    LabelPosition = lpRight
    TabOrder = 0
    Text = '$00000000'
  end
  object edEnd: TLabeledEdit
    Left = 6
    Top = 71
    Width = 114
    Height = 21
    Hint = 'If zerro while not error'
    EditLabel.Width = 22
    EditLabel.Height = 13
    EditLabel.Caption = ' End'
    LabelPosition = lpRight
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    Text = '$00000000'
  end
  object btRead: TButton
    Left = 14
    Top = 101
    Width = 75
    Height = 25
    Caption = 'Read'
    TabOrder = 2
    OnClick = btReadClick
  end
  object btWrite: TButton
    Left = 94
    Top = 101
    Width = 75
    Height = 25
    Caption = 'Write'
    TabOrder = 3
    OnClick = btWriteClick
  end
  object btDump: TButton
    Left = 15
    Top = 133
    Width = 155
    Height = 25
    Caption = 'Dump'
    TabOrder = 4
    OnClick = btDumpClick
  end
  object cbPage: TComboBox
    Left = 6
    Top = 16
    Width = 138
    Height = 21
    ItemHeight = 13
    ItemIndex = 0
    TabOrder = 5
    Text = 'Cache'
    Items.Strings = (
      'Cache'
      'DRAM'
      'Transient Overlay'
      'Permanent Overlay'
      'PST'
      'PST Data')
  end
  object StaticText1: TStaticText
    Left = 147
    Top = 19
    Width = 29
    Height = 17
    Caption = 'Page'
    TabOrder = 6
  end
end
