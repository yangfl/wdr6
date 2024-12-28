object fmHeadsMap: TfmHeadsMap
  Left = 553
  Top = 58
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Heads Map'
  ClientHeight = 463
  ClientWidth = 225
  Color = clBtnFace
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
  DesignSize = (
    225
    463)
  PixelsPerInch = 96
  TextHeight = 13
  object gbKillHead: TGroupBox
    Left = 5
    Top = 269
    Width = 215
    Height = 73
    Caption = 'Depop Virtual Head'
    TabOrder = 0
    object btOk: TButton
      Left = 127
      Top = 11
      Width = 75
      Height = 25
      Caption = 'Go'
      TabOrder = 0
      OnClick = btOkClick
    end
    object edKillHead: TLabeledEdit
      Left = 89
      Top = 13
      Width = 25
      Height = 21
      EditLabel.Width = 76
      EditLabel.Height = 13
      EditLabel.Caption = 'Head to Depop '
      LabelPosition = lpLeft
      MaxLength = 1
      TabOrder = 1
      Text = '0'
    end
    object cbClsTransl: TCheckBox
      Left = 8
      Top = 40
      Width = 113
      Height = 17
      Caption = 'Clear Translator'
      TabOrder = 2
    end
  end
  object gbHeadsMap: TGroupBox
    Left = 4
    Top = 2
    Width = 217
    Height = 267
    Anchors = [akLeft, akTop, akRight]
    Caption = 'Heads Map'
    TabOrder = 1
    object cbHead0: TCheckBox
      Left = 8
      Top = 16
      Width = 63
      Height = 17
      Caption = 'Head 0'
      TabOrder = 0
      OnClick = cbHead0Click
    end
    object cbHead1: TCheckBox
      Left = 8
      Top = 31
      Width = 63
      Height = 17
      Caption = 'Head 1'
      TabOrder = 1
      OnClick = cbHead0Click
    end
    object cbHead2: TCheckBox
      Left = 8
      Top = 52
      Width = 63
      Height = 17
      Caption = 'Head 2'
      TabOrder = 2
      OnClick = cbHead0Click
    end
    object cbHead3: TCheckBox
      Left = 8
      Top = 67
      Width = 63
      Height = 17
      Caption = 'Head 3'
      TabOrder = 3
      OnClick = cbHead0Click
    end
    object cbHead4: TCheckBox
      Left = 8
      Top = 88
      Width = 63
      Height = 17
      Caption = 'Head 4'
      TabOrder = 4
      OnClick = cbHead0Click
    end
    object cbHead5: TCheckBox
      Left = 8
      Top = 103
      Width = 63
      Height = 17
      Caption = 'Head 5'
      TabOrder = 5
      OnClick = cbHead0Click
    end
    object cbHead6: TCheckBox
      Left = 8
      Top = 124
      Width = 63
      Height = 17
      Caption = 'Head 6'
      TabOrder = 6
      OnClick = cbHead0Click
    end
    object cbHead7: TCheckBox
      Left = 8
      Top = 139
      Width = 63
      Height = 17
      Caption = 'Head 7'
      TabOrder = 7
      OnClick = cbHead0Click
    end
    object cbUseHeadsMap: TCheckBox
      Left = 104
      Top = 100
      Width = 97
      Height = 17
      Caption = 'Heads Map On'
      TabOrder = 8
    end
    object edInUseHeads: TLabeledEdit
      Left = 104
      Top = 79
      Width = 25
      Height = 21
      Hint = 'Number of heads in use'
      EditLabel.Width = 68
      EditLabel.Height = 13
      EditLabel.Caption = ' In Use Heads'
      LabelPosition = lpRight
      MaxLength = 1
      ParentShowHint = False
      ShowHint = True
      TabOrder = 9
    end
    object edPhysicalHeads: TLabeledEdit
      Left = 104
      Top = 56
      Width = 25
      Height = 21
      Hint = 'Number of physical heads'
      EditLabel.Width = 76
      EditLabel.Height = 13
      EditLabel.Caption = ' Physical Heads'
      LabelPosition = lpRight
      MaxLength = 1
      ParentShowHint = False
      ShowHint = True
      TabOrder = 10
    end
    object btWrite: TButton
      Left = 12
      Top = 230
      Width = 90
      Height = 25
      Caption = 'Write'
      TabOrder = 11
      OnClick = btWriteClick
    end
    object btRead: TButton
      Left = 12
      Top = 203
      Width = 90
      Height = 25
      Caption = 'Read'
      TabOrder = 12
      OnClick = btReadClick
    end
    object btSave: TButton
      Left = 116
      Top = 230
      Width = 90
      Height = 25
      Caption = 'Save'
      TabOrder = 13
      OnClick = btSaveClick
    end
    object btLoad: TButton
      Left = 116
      Top = 203
      Width = 90
      Height = 25
      Caption = 'Load'
      TabOrder = 14
      OnClick = btLoadClick
    end
    object rbModule0A: TRadioButton
      Left = 103
      Top = 133
      Width = 74
      Height = 17
      Caption = 'Module 0A'
      Checked = True
      TabOrder = 15
      TabStop = True
      OnClick = rbModule0AClick
    end
    object rbFlash: TRadioButton
      Left = 103
      Top = 149
      Width = 74
      Height = 17
      Caption = 'Flash'
      TabOrder = 16
      OnClick = rbModule0AClick
    end
    object edGoodHeadMap: TLabeledEdit
      Left = 104
      Top = 33
      Width = 33
      Height = 21
      Hint = 'Good Head Map'
      EditLabel.Width = 53
      EditLabel.Height = 13
      EditLabel.Caption = ' Good Map'
      LabelPosition = lpRight
      MaxLength = 3
      ParentShowHint = False
      ShowHint = True
      TabOrder = 17
    end
    object cbAutoMap2: TCheckBox
      Left = 104
      Top = 115
      Width = 107
      Height = 17
      Hint = 'Auto Correct Heads Map 2'
      Caption = 'Auto Good Map'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 18
    end
    object edNativeHeadMap: TLabeledEdit
      Left = 104
      Top = 10
      Width = 33
      Height = 21
      Hint = 'Native Head Map'
      EditLabel.Width = 58
      EditLabel.Height = 13
      EditLabel.Caption = ' Native Map'
      LabelPosition = lpRight
      MaxLength = 3
      ParentShowHint = False
      ShowHint = True
      TabOrder = 19
    end
    object btCreate: TButton
      Left = 116
      Top = 176
      Width = 90
      Height = 25
      Caption = 'Create'
      TabOrder = 20
      OnClick = btCreateClick
    end
    object edTpi: TLabeledEdit
      Left = 12
      Top = 178
      Width = 62
      Height = 21
      Hint = 'TPI Index'
      EditLabel.Width = 20
      EditLabel.Height = 13
      EditLabel.Caption = ' TPI'
      LabelPosition = lpRight
      MaxLength = 5
      ParentShowHint = False
      ShowHint = True
      TabOrder = 21
    end
  end
  object gbTestHeads: TGroupBox
    Left = 5
    Top = 343
    Width = 215
    Height = 115
    Caption = 'Test Heads'
    TabOrder = 2
    object btTestHeads: TButton
      Left = 127
      Top = 21
      Width = 75
      Height = 25
      Caption = 'Go'
      TabOrder = 0
      OnClick = btTestHeadsClick
    end
    object rbUa: TRadioButton
      Left = 15
      Top = 32
      Width = 106
      Height = 17
      Caption = 'on User defined'
      TabOrder = 1
      OnClick = rbUaClick
    end
    object rbSa: TRadioButton
      Left = 15
      Top = 16
      Width = 106
      Height = 17
      Caption = 'on Service Area'
      Checked = True
      TabOrder = 2
      TabStop = True
      OnClick = rbUaClick
    end
    object edTstTracks: TLabeledEdit
      Left = 14
      Top = 87
      Width = 57
      Height = 21
      EditLabel.Width = 101
      EditLabel.Height = 13
      EditLabel.Caption = ' Track to Test Heads'
      LabelPosition = lpRight
      MaxLength = -1
      TabOrder = 3
      Text = '0'
      Visible = False
    end
    object edActHeadsTst: TLabeledEdit
      Left = 36
      Top = 63
      Width = 35
      Height = 21
      EditLabel.Width = 92
      EditLabel.Height = 13
      EditLabel.Caption = ' Virtual Head Count'
      LabelPosition = lpRight
      MaxLength = -1
      TabOrder = 4
    end
    object btGetActHeads: TButton
      Left = 14
      Top = 65
      Width = 17
      Height = 17
      Caption = '>'
      TabOrder = 5
      OnClick = btGetActHeadsClick
    end
    object cbWrtTst: TCheckBox
      Left = 121
      Top = 50
      Width = 80
      Height = 17
      Alignment = taLeftJustify
      Caption = 'Write PCHS'
      TabOrder = 6
    end
  end
end
