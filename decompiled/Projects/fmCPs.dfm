object fmCPs: TfmCPs
  Left = 626
  Top = 105
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'CP Operations'
  ClientHeight = 172
  ClientWidth = 171
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
  object btRead: TButton
    Left = 32
    Top = 75
    Width = 105
    Height = 25
    Caption = 'Read'
    TabOrder = 0
    OnClick = btReadClick
  end
  object btReadAll: TButton
    Left = 32
    Top = 107
    Width = 105
    Height = 25
    Caption = 'Read All'
    TabOrder = 1
    OnClick = btReadAllClick
  end
  object btDump: TButton
    Left = 32
    Top = 139
    Width = 105
    Height = 25
    Caption = 'Dump'
    TabOrder = 2
    OnClick = btDumpClick
  end
  object edCpNum: TLabeledEdit
    Left = 15
    Top = 43
    Width = 32
    Height = 21
    EditLabel.Width = 17
    EditLabel.Height = 13
    EditLabel.Caption = ' CP'
    LabelPosition = lpRight
    TabOrder = 3
    Text = '$01'
  end
  object edParam: TLabeledEdit
    Left = 87
    Top = 43
    Width = 32
    Height = 21
    EditLabel.Width = 33
    EditLabel.Height = 13
    EditLabel.Caption = ' Param'
    LabelPosition = lpRight
    TabOrder = 4
    Text = '0'
  end
  object cbSelectCp: TComboBox
    Left = 3
    Top = 8
    Width = 161
    Height = 21
    ItemHeight = 13
    TabOrder = 5
    Text = 'Select CP'
    OnChange = cbSelectCpChange
  end
end
