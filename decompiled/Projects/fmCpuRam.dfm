object fmCpuRam: TfmCpuRam
  Left = 609
  Top = 114
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Processor Memory'
  ClientHeight = 160
  ClientWidth = 193
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
  object edLen: TLabeledEdit
    Left = 8
    Top = 56
    Width = 114
    Height = 21
    Hint = 'in Bytes'
    EditLabel.Width = 21
    EditLabel.Height = 13
    EditLabel.Caption = ' Len'
    LabelPosition = lpRight
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    Text = '$200'
  end
  object edStart: TLabeledEdit
    Left = 8
    Top = 32
    Width = 114
    Height = 21
    EditLabel.Width = 25
    EditLabel.Height = 13
    EditLabel.Caption = ' Start'
    LabelPosition = lpRight
    TabOrder = 1
    Text = '$04000000'
  end
  object cbOffset: TComboBox
    Left = 8
    Top = 8
    Width = 153
    Height = 21
    Enabled = False
    ItemHeight = 13
    TabOrder = 2
    Text = 'DRAM Offset Map'
    OnChange = cbOffsetChange
  end
  object btGetDramMap: TButton
    Left = 167
    Top = 10
    Width = 17
    Height = 17
    Hint = 'Get DRAM Offset Map'
    Caption = '>'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
    OnClick = btGetDramMapClick
  end
  object btRead: TButton
    Left = 20
    Top = 90
    Width = 75
    Height = 25
    Caption = 'Read'
    TabOrder = 4
    OnClick = btReadClick
  end
  object btWrite: TButton
    Left = 100
    Top = 90
    Width = 75
    Height = 25
    Caption = 'Write'
    TabOrder = 5
    OnClick = btWriteClick
  end
  object btDump: TButton
    Left = 21
    Top = 122
    Width = 155
    Height = 25
    Caption = 'Dump'
    TabOrder = 6
    OnClick = btDumpClick
  end
end
