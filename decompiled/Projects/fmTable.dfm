object fmTable: TfmTable
  Left = 590
  Top = 70
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Memory Table'
  ClientHeight = 206
  ClientWidth = 198
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
  object cbTable: TComboBox
    Left = 19
    Top = 8
    Width = 153
    Height = 21
    ItemHeight = 13
    TabOrder = 0
    Text = 'Memory Table'
    Items.Strings = (
      'Memory Table'
      'Static File'
      'DRM Counters Group')
  end
  object edOffset: TLabeledEdit
    Left = 19
    Top = 60
    Width = 114
    Height = 21
    EditLabel.Width = 31
    EditLabel.Height = 13
    EditLabel.Caption = ' Offset'
    LabelPosition = lpRight
    TabOrder = 1
    Text = '0'
  end
  object edLen: TLabeledEdit
    Left = 19
    Top = 84
    Width = 114
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
    Left = 20
    Top = 132
    Width = 75
    Height = 25
    Caption = 'Read'
    TabOrder = 3
    OnClick = btReadClick
  end
  object btReadAll: TButton
    Left = 100
    Top = 132
    Width = 75
    Height = 25
    Caption = 'Read All'
    TabOrder = 4
    OnClick = btReadAllClick
  end
  object btDump: TButton
    Left = 21
    Top = 164
    Width = 155
    Height = 25
    Caption = 'Dump'
    TabOrder = 5
    OnClick = btDumpClick
  end
  object edNum: TLabeledEdit
    Left = 19
    Top = 36
    Width = 113
    Height = 21
    EditLabel.Width = 40
    EditLabel.Height = 13
    EditLabel.Caption = ' Number'
    LabelPosition = lpRight
    TabOrder = 6
    Text = '0'
  end
end
