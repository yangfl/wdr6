object fmRamHd: TfmRamHd
  Left = 428
  Top = 125
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Change Heads Map in RAM'
  ClientHeight = 107
  ClientWidth = 364
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
  DesignSize = (
    364
    107)
  PixelsPerInch = 96
  TextHeight = 13
  object btSet: TButton
    Left = 282
    Top = 72
    Width = 75
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = 'Set'
    TabOrder = 2
    OnClick = btSetClick
  end
  object btSoftReset: TButton
    Left = 12
    Top = 72
    Width = 75
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = 'Soft Reset'
    TabOrder = 3
    OnClick = btSoftResetClick
  end
  object edMap: TLabeledEdit
    Left = 147
    Top = 16
    Width = 180
    Height = 21
    EditLabel.Width = 55
    EditLabel.Height = 13
    EditLabel.Caption = 'Heads Map'
    LabelPosition = lpLeft
    TabOrder = 1
    OnChange = edMapChange
  end
  object btGetMap: TButton
    Left = 335
    Top = 16
    Width = 21
    Height = 21
    Hint = 'Get Head Map'
    Caption = '>'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    OnClick = btGetMapClick
  end
  object btSupReset: TButton
    Left = 172
    Top = 72
    Width = 75
    Height = 25
    Hint = 'Super Soft Reset'
    Anchors = [akLeft, akBottom]
    Caption = 'SSoft Reset'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 5
    OnClick = btSupResetClick
  end
  object btRecalibrate: TButton
    Left = 92
    Top = 72
    Width = 75
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = 'Recalibrate'
    TabOrder = 4
    OnClick = btRecalibrateClick
  end
  object edHd: TLabeledEdit
    Left = 48
    Top = 16
    Width = 24
    Height = 21
    EditLabel.Width = 31
    EditLabel.Height = 13
    EditLabel.Caption = 'Heads'
    LabelPosition = lpLeft
    TabOrder = 6
  end
  object edAdress: TLabeledEdit
    Left = 147
    Top = 44
    Width = 90
    Height = 21
    EditLabel.Width = 32
    EditLabel.Height = 13
    EditLabel.Caption = 'Adress'
    LabelPosition = lpLeft
    TabOrder = 7
    Text = '$04000000'
    Visible = False
  end
  object cbManual: TCheckBox
    Left = 13
    Top = 48
    Width = 68
    Height = 17
    Caption = 'Manual'
    TabOrder = 8
    OnClick = cbManualClick
  end
end
