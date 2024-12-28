object fmPassport: TfmPassport
  Left = 438
  Top = 108
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Passport'
  ClientHeight = 249
  ClientWidth = 352
  Color = clBtnFace
  Constraints.MinHeight = 280
  Constraints.MinWidth = 350
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object btWrite: TButton
    Left = 191
    Top = 217
    Width = 75
    Height = 25
    Caption = 'Write'
    TabOrder = 0
    OnClick = btWriteClick
  end
  object btRead: TButton
    Left = 270
    Top = 217
    Width = 75
    Height = 25
    Caption = 'Read'
    TabOrder = 1
    OnClick = btReadClick
  end
  object edModel: TLabeledEdit
    Left = 45
    Top = 16
    Width = 296
    Height = 21
    EditLabel.Width = 32
    EditLabel.Height = 13
    EditLabel.Caption = 'Model '
    LabelPosition = lpLeft
    TabOrder = 2
  end
  object edSerial: TLabeledEdit
    Left = 45
    Top = 39
    Width = 296
    Height = 21
    EditLabel.Width = 29
    EditLabel.Height = 13
    EditLabel.Caption = 'Serial '
    LabelPosition = lpLeft
    TabOrder = 3
  end
  object edLba0: TLabeledEdit
    Left = 46
    Top = 75
    Width = 120
    Height = 21
    EditLabel.Width = 35
    EditLabel.Height = 13
    EditLabel.Caption = ' LBA 0 '
    LabelPosition = lpLeft
    TabOrder = 4
  end
  object edLba1: TLabeledEdit
    Left = 46
    Top = 98
    Width = 120
    Height = 21
    EditLabel.Width = 35
    EditLabel.Height = 13
    EditLabel.Caption = ' LBA 1 '
    LabelPosition = lpLeft
    TabOrder = 5
  end
  object edLba2: TLabeledEdit
    Left = 46
    Top = 121
    Width = 120
    Height = 21
    EditLabel.Width = 35
    EditLabel.Height = 13
    EditLabel.Caption = ' LBA 2 '
    LabelPosition = lpLeft
    TabOrder = 6
  end
  object edLba3: TLabeledEdit
    Left = 46
    Top = 144
    Width = 120
    Height = 21
    EditLabel.Width = 25
    EditLabel.Height = 13
    EditLabel.Caption = 'HPA '
    LabelPosition = lpLeft
    TabOrder = 7
  end
  object edHeads: TLabeledEdit
    Left = 223
    Top = 75
    Width = 118
    Height = 21
    EditLabel.Width = 34
    EditLabel.Height = 13
    EditLabel.Caption = 'Heads '
    LabelPosition = lpLeft
    TabOrder = 8
  end
  object edSectors: TLabeledEdit
    Left = 223
    Top = 98
    Width = 118
    Height = 21
    EditLabel.Width = 39
    EditLabel.Height = 13
    EditLabel.Caption = 'Sectors '
    LabelPosition = lpLeft
    TabOrder = 9
  end
  object edTracks: TLabeledEdit
    Left = 223
    Top = 121
    Width = 118
    Height = 21
    EditLabel.Width = 36
    EditLabel.Height = 13
    EditLabel.Caption = 'Tracks '
    LabelPosition = lpLeft
    TabOrder = 10
  end
  object cbAuto: TComboBox
    Left = 223
    Top = 144
    Width = 118
    Height = 21
    Hint = 'Auto Calculate Tracks Number'
    ItemHeight = 13
    ParentShowHint = False
    ShowHint = True
    TabOrder = 11
    Text = 'Auto Calc'
    OnChange = cbAutoChange
    Items.Strings = (
      'LBA 0'
      'LBA 1'
      'LBA 2')
  end
  object edPsw: TLabeledEdit
    Left = 98
    Top = 175
    Width = 68
    Height = 21
    EditLabel.Width = 77
    EditLabel.Height = 13
    EditLabel.Caption = 'Password Flags '
    LabelPosition = lpLeft
    TabOrder = 12
  end
  object cbUpdateValue: TCheckBox
    Left = 10
    Top = 220
    Width = 97
    Height = 17
    Caption = 'Update Value'
    Checked = True
    State = cbChecked
    TabOrder = 13
    Visible = False
    OnClick = cbUpdateValueClick
  end
  object cbReadFact: TComboBox
    Left = 112
    Top = 219
    Width = 63
    Height = 21
    Hint = 'Read Factory ID'
    ItemHeight = 13
    ParentShowHint = False
    ShowHint = True
    TabOrder = 14
    Text = 'Select'
    Visible = False
    OnChange = cbReadFactChange
    Items.Strings = (
      'Copy 0'
      'Copy 1'
      'Copy 2')
  end
end
