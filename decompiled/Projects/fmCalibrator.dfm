object fmCalibrator: TfmCalibrator
  Left = 502
  Top = 126
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Calibrator'
  ClientHeight = 304
  ClientWidth = 282
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  OnShow = FormShow
  DesignSize = (
    282
    304)
  PixelsPerInch = 96
  TextHeight = 13
  object edDcm: TLabeledEdit
    Left = 43
    Top = 12
    Width = 209
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    EditLabel.Width = 27
    EditLabel.Height = 13
    EditLabel.Caption = 'DCM '
    LabelPosition = lpLeft
    MaxLength = 26
    TabOrder = 0
  end
  object edTask: TLabeledEdit
    Left = 43
    Top = 36
    Width = 25
    Height = 21
    EditLabel.Width = 27
    EditLabel.Height = 13
    EditLabel.Caption = 'Task '
    LabelPosition = lpLeft
    MaxLength = 1
    TabOrder = 2
    Text = 'D'
  end
  object edHex: TLabeledEdit
    Left = 43
    Top = 60
    Width = 26
    Height = 21
    EditLabel.Width = 22
    EditLabel.Height = 13
    EditLabel.Caption = 'Hex '
    LabelPosition = lpLeft
    MaxLength = 2
    TabOrder = 3
    Text = '19'
  end
  object edHeads: TLabeledEdit
    Left = 43
    Top = 84
    Width = 26
    Height = 21
    EditLabel.Width = 34
    EditLabel.Height = 13
    EditLabel.Caption = 'Heads '
    LabelPosition = lpLeft
    MaxLength = 1
    TabOrder = 4
  end
  object edMedia: TLabeledEdit
    Left = 43
    Top = 108
    Width = 26
    Height = 21
    EditLabel.Width = 32
    EditLabel.Height = 13
    EditLabel.Caption = 'Media '
    LabelPosition = lpLeft
    MaxLength = 1
    TabOrder = 5
  end
  object cbTask: TComboBox
    Left = 71
    Top = 36
    Width = 204
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ItemHeight = 13
    ParentFont = False
    TabOrder = 6
    Text = 'D - Service Area *Factory Use*'
    OnChange = cbTaskChange
    Items.Strings = (
      'D - ARCO Reserved Area'
      'F - ARCO User Area'
      'J - SARCO User Area'
      'o - Changes High SPT'
      'k - AZL'
      'j - Changes Low SPT'
      'p - ? for Raptor'
      'c - OTC'
      '@ - VGA'
      'A - DOW'
      'a - ATI'
      '` - MRA'
      'i - LIAF'
      'K - SARCO User Area'
      'O - HQ User Area'
      'b - PBERT'
      'f - CO SPIN '
      'g - CO STDBY'
      'h - OW'
      'X - X'
      'e - e'
      'q - q'
      's - s'
      't - t'
      'v - v'
      'w - w'
      'N - ARCO Set to Default User Area')
  end
  object btGo: TButton
    Left = 191
    Top = 265
    Width = 75
    Height = 25
    Caption = 'GO'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 11
    OnClick = btGoClick
  end
  object cbFrom: TComboBox
    Left = 72
    Top = 60
    Width = 203
    Height = 21
    ItemHeight = 13
    ItemIndex = 0
    TabOrder = 7
    Text = 'From Main CFG'
    OnChange = cbFromChange
    Items.Strings = (
      'From Main CFG'
      'From Factory CFG Original'
      'From Factory CFG Final'
      'From Factory CFG Original + DTemp'
      'From id47'
      'From Logs')
  end
  object cbLoadC5: TCheckBox
    Left = 23
    Top = 153
    Width = 122
    Height = 17
    Caption = 'Manual Load DCM'
    Checked = True
    State = cbChecked
    TabOrder = 9
  end
  object cbShow: TCheckBox
    Left = 23
    Top = 278
    Width = 102
    Height = 17
    Caption = 'Show Progress'
    Checked = True
    State = cbChecked
    TabOrder = 10
  end
  object cbLoadC4: TCheckBox
    Left = 23
    Top = 136
    Width = 122
    Height = 17
    Caption = 'Manual Load Code'
    Checked = True
    State = cbChecked
    TabOrder = 8
  end
  object btGetDcm: TButton
    Left = 256
    Top = 14
    Width = 17
    Height = 17
    Caption = '>'
    TabOrder = 1
    OnClick = cbTaskChange
  end
  object cbFile: TCheckBox
    Left = 23
    Top = 187
    Width = 73
    Height = 17
    Caption = 'From File'
    TabOrder = 12
  end
  object cbInit: TCheckBox
    Left = 23
    Top = 205
    Width = 114
    Height = 17
    Caption = 'Init Calibrator Code'
    Checked = True
    State = cbChecked
    TabOrder = 13
  end
  object cbTransient: TCheckBox
    Left = 23
    Top = 224
    Width = 146
    Height = 17
    Caption = 'Load Transient Overlay'
    Checked = True
    State = cbChecked
    TabOrder = 14
  end
  object cbLoadArcoMain: TCheckBox
    Left = 23
    Top = 259
    Width = 130
    Height = 17
    Caption = 'Load ARCO Main'
    TabOrder = 15
  end
  object cbCode: TComboBox
    Left = 73
    Top = 97
    Width = 57
    Height = 21
    ItemHeight = 13
    TabOrder = 16
    Text = 'C4'
    Items.Strings = (
      'C3'
      'C4'
      'C8'
      'A1'
      'A2'
      'A8'
      'AA'
      'AC'
      'AE'
      '2802'
      '2900'
      '2901'
      '2903'
      '2904'
      '2906'
      '2908'
      '2909'
      '290A'
      '2A00'
      '2A02'
      '2F00')
  end
  object StaticText1: TStaticText
    Left = 133
    Top = 99
    Width = 76
    Height = 17
    Caption = 'Calibrator Code'
    TabOrder = 17
  end
  object GroupBox1: TGroupBox
    Left = 176
    Top = 123
    Width = 93
    Height = 85
    Caption = 'Service Area'
    TabOrder = 18
    object btReadAll: TButton
      Left = 8
      Top = 19
      Width = 75
      Height = 25
      Hint = 'Read All Modules'
      Caption = 'Read All'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = btReadAllClick
    end
    object btWriteAll: TButton
      Left = 8
      Top = 51
      Width = 75
      Height = 25
      Hint = 'Write All Modules'
      Caption = 'Write All'
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = btWriteAllClick
    end
  end
  object cbAltDcm: TCheckBox
    Left = 23
    Top = 170
    Width = 129
    Height = 17
    Hint = 'Alt DCM'
    Caption = 'Alt DCM Adress'
    ParentShowHint = False
    ShowHint = False
    TabOrder = 19
  end
  object cbPermOvly: TCheckBox
    Left = 23
    Top = 241
    Width = 146
    Height = 17
    Caption = 'Load Permanent Overlay'
    Checked = True
    State = cbChecked
    TabOrder = 20
  end
end
