object fmRegionMap: TfmRegionMap
  Left = 425
  Top = 115
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Reserved Region Table'
  ClientHeight = 315
  ClientWidth = 362
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
  PixelsPerInch = 96
  TextHeight = 13
  object edSize0: TLabeledEdit
    Left = 206
    Top = 84
    Width = 121
    Height = 21
    EditLabel.Width = 57
    EditLabel.Height = 13
    EditLabel.Caption = 'Region Size'
    TabOrder = 0
  end
  object edUba0: TLabeledEdit
    Left = 80
    Top = 84
    Width = 121
    Height = 21
    EditLabel.Width = 59
    EditLabel.Height = 13
    EditLabel.Caption = 'Region Start'
    TabOrder = 1
  end
  object StaticText1: TStaticText
    Left = 24
    Top = 86
    Width = 50
    Height = 17
    Caption = 'Region 0:'
    TabOrder = 2
  end
  object edSize1: TEdit
    Left = 206
    Top = 108
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object edUba1: TEdit
    Left = 80
    Top = 108
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object edSize2: TEdit
    Left = 206
    Top = 132
    Width = 121
    Height = 21
    TabOrder = 5
  end
  object edUba2: TEdit
    Left = 80
    Top = 132
    Width = 121
    Height = 21
    TabOrder = 6
  end
  object edSize3: TEdit
    Left = 206
    Top = 156
    Width = 121
    Height = 21
    TabOrder = 7
  end
  object edUba3: TEdit
    Left = 80
    Top = 156
    Width = 121
    Height = 21
    TabOrder = 8
  end
  object StaticText2: TStaticText
    Left = 24
    Top = 110
    Width = 50
    Height = 17
    Caption = 'Region 1:'
    TabOrder = 9
  end
  object StaticText3: TStaticText
    Left = 24
    Top = 134
    Width = 50
    Height = 17
    Caption = 'Region 2:'
    TabOrder = 10
  end
  object StaticText4: TStaticText
    Left = 24
    Top = 158
    Width = 50
    Height = 17
    Caption = 'Region 3:'
    TabOrder = 11
  end
  object btWrite: TButton
    Left = 104
    Top = 282
    Width = 75
    Height = 25
    Caption = 'Write'
    Enabled = False
    TabOrder = 12
    OnClick = btWriteClick
  end
  object btRead: TButton
    Left = 232
    Top = 282
    Width = 75
    Height = 25
    Caption = 'Read'
    TabOrder = 13
    OnClick = btReadClick
  end
  object ed0: TLabeledEdit
    Left = 80
    Top = 40
    Width = 25
    Height = 21
    Hint = 'Next Entry Offset'
    EditLabel.Width = 19
    EditLabel.Height = 13
    EditLabel.Caption = 'Offs'
    MaxLength = 2
    ParentShowHint = False
    ShowHint = True
    TabOrder = 14
  end
  object ed1: TLabeledEdit
    Left = 128
    Top = 40
    Width = 25
    Height = 21
    Hint = 'Num Regions'
    EditLabel.Width = 22
    EditLabel.Height = 13
    EditLabel.Caption = 'Num'
    MaxLength = 2
    ParentShowHint = False
    ShowHint = True
    TabOrder = 15
  end
  object ed2: TLabeledEdit
    Left = 173
    Top = 40
    Width = 68
    Height = 21
    Hint = 'File ID = 0FFF for RRT'
    EditLabel.Width = 35
    EditLabel.Height = 13
    EditLabel.Caption = '        ID'
    MaxLength = 4
    ParentShowHint = False
    ShowHint = True
    TabOrder = 16
  end
  object ed4: TLabeledEdit
    Left = 257
    Top = 40
    Width = 25
    Height = 21
    Hint = 'Active Regions Map'
    EditLabel.Width = 30
    EditLabel.Height = 13
    EditLabel.Caption = 'Active'
    MaxLength = 2
    ParentShowHint = False
    ShowHint = True
    TabOrder = 17
  end
  object ed5: TLabeledEdit
    Left = 304
    Top = 40
    Width = 25
    Height = 21
    EditLabel.Width = 18
    EditLabel.Height = 13
    EditLabel.Caption = 'pad'
    MaxLength = 2
    TabOrder = 18
  end
  object btCorrect: TButton
    Left = 332
    Top = 108
    Width = 21
    Height = 21
    Hint = 'Correct for One Head'
    Caption = '>'
    Enabled = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 19
    OnClick = btCorrectClick
  end
  object edSize4: TEdit
    Left = 206
    Top = 180
    Width = 121
    Height = 21
    TabOrder = 20
  end
  object edSize5: TEdit
    Left = 206
    Top = 204
    Width = 121
    Height = 21
    TabOrder = 21
  end
  object edUba4: TEdit
    Left = 80
    Top = 180
    Width = 121
    Height = 21
    TabOrder = 22
  end
  object edUba5: TEdit
    Left = 80
    Top = 204
    Width = 121
    Height = 21
    TabOrder = 23
  end
  object edSize6: TEdit
    Left = 206
    Top = 228
    Width = 121
    Height = 21
    TabOrder = 24
  end
  object edSize7: TEdit
    Left = 206
    Top = 252
    Width = 121
    Height = 21
    TabOrder = 25
  end
  object edUba6: TEdit
    Left = 80
    Top = 228
    Width = 121
    Height = 21
    TabOrder = 26
  end
  object edUba7: TEdit
    Left = 80
    Top = 252
    Width = 121
    Height = 21
    TabOrder = 27
  end
  object StaticText5: TStaticText
    Left = 24
    Top = 182
    Width = 50
    Height = 17
    Caption = 'Region 4:'
    TabOrder = 28
  end
  object StaticText6: TStaticText
    Left = 24
    Top = 206
    Width = 50
    Height = 17
    Caption = 'Region 5:'
    TabOrder = 29
  end
  object StaticText7: TStaticText
    Left = 24
    Top = 230
    Width = 50
    Height = 17
    Caption = 'Region 6:'
    TabOrder = 30
  end
  object StaticText8: TStaticText
    Left = 24
    Top = 254
    Width = 50
    Height = 17
    Caption = 'Region 7:'
    TabOrder = 31
  end
end
