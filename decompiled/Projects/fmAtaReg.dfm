object fmAtaReg: TfmAtaReg
  Left = 637
  Top = 109
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'ATA Reg'
  ClientHeight = 291
  ClientWidth = 156
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
  object ed1x0: TLabeledEdit
    Left = 91
    Top = 8
    Width = 57
    Height = 21
    EditLabel.Width = 26
    EditLabel.Height = 13
    EditLabel.Caption = 'Data '
    LabelPosition = lpLeft
    TabOrder = 0
  end
  object ed1x1: TLabeledEdit
    Left = 91
    Top = 32
    Width = 57
    Height = 21
    EditLabel.Width = 72
    EditLabel.Height = 13
    EditLabel.Caption = 'Feature / Error '
    LabelPosition = lpLeft
    TabOrder = 1
  end
  object ed1x2: TLabeledEdit
    Left = 91
    Top = 56
    Width = 57
    Height = 21
    EditLabel.Width = 65
    EditLabel.Height = 13
    EditLabel.Caption = 'Sector Count '
    LabelPosition = lpLeft
    TabOrder = 2
  end
  object ed1x3: TLabeledEdit
    Left = 91
    Top = 80
    Width = 57
    Height = 21
    EditLabel.Width = 74
    EditLabel.Height = 13
    EditLabel.Caption = 'Sector Number '
    LabelPosition = lpLeft
    TabOrder = 3
  end
  object ed1x4: TLabeledEdit
    Left = 91
    Top = 104
    Width = 57
    Height = 21
    EditLabel.Width = 63
    EditLabel.Height = 13
    EditLabel.Caption = 'Cylinder Low '
    LabelPosition = lpLeft
    TabOrder = 4
  end
  object ed1x5: TLabeledEdit
    Left = 91
    Top = 128
    Width = 57
    Height = 21
    EditLabel.Width = 65
    EditLabel.Height = 13
    EditLabel.Caption = 'Cylinder High '
    LabelPosition = lpLeft
    TabOrder = 5
  end
  object ed1x6: TLabeledEdit
    Left = 91
    Top = 152
    Width = 57
    Height = 21
    EditLabel.Width = 68
    EditLabel.Height = 13
    EditLabel.Caption = 'Device/Head '
    LabelPosition = lpLeft
    TabOrder = 6
  end
  object ed1x7: TLabeledEdit
    Left = 91
    Top = 176
    Width = 57
    Height = 21
    EditLabel.Width = 65
    EditLabel.Height = 13
    EditLabel.Caption = 'Com / Status '
    LabelPosition = lpLeft
    TabOrder = 7
  end
  object ed3x6: TLabeledEdit
    Left = 91
    Top = 200
    Width = 57
    Height = 21
    EditLabel.Width = 48
    EditLabel.Height = 13
    EditLabel.Caption = 'Alt Status '
    LabelPosition = lpLeft
    TabOrder = 8
  end
  object cbDataReg: TCheckBox
    Left = 52
    Top = 232
    Width = 97
    Height = 17
    Alignment = taLeftJustify
    Caption = 'Read Data Reg'
    TabOrder = 9
  end
  object cbLba48reg: TCheckBox
    Left = 52
    Top = 253
    Width = 97
    Height = 17
    Alignment = taLeftJustify
    Caption = 'LBA48 Reg'
    TabOrder = 10
  end
  object tmAtaReg: TTimer
    Enabled = False
    Interval = 100
    OnTimer = tmAtaRegTimer
  end
end
