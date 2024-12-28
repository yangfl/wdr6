object fmCreater: TfmCreater
  Left = 390
  Top = 110
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'ID47 Editor'
  ClientHeight = 293
  ClientWidth = 399
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  ShowHint = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 3
    Top = 0
    Width = 278
    Height = 289
    Caption = 'MRJog Tuner '
    TabOrder = 0
    DesignSize = (
      278
      289)
    object Label1: TLabel
      Left = 122
      Top = 211
      Width = 39
      Height = 18
      Align = alCustom
      AutoSize = False
      Caption = 'Scale'
      Layout = tlCenter
    end
    object Label3: TLabel
      Left = 8
      Top = 14
      Width = 6
      Height = 13
      Caption = '0'
    end
    object Label4: TLabel
      Left = 5
      Top = 213
      Width = 20
      Height = 13
      Caption = 'Max'
    end
    object Label5: TLabel
      Left = 251
      Top = 214
      Width = 17
      Height = 13
      Caption = 'Min'
    end
    object TrackBar2: TTrackBar
      Left = 48
      Top = 11
      Width = 24
      Height = 173
      Hint = 'Head 1'
      Max = 65535
      Orientation = trVertical
      TabOrder = 0
      ThumbLength = 15
      TickMarks = tmTopLeft
      TickStyle = tsNone
      OnChange = TrackBar2Change
    end
    object TrackBar3: TTrackBar
      Left = 80
      Top = 11
      Width = 24
      Height = 173
      Hint = 'Head 2'
      Max = 65535
      Orientation = trVertical
      TabOrder = 1
      ThumbLength = 15
      TickMarks = tmTopLeft
      TickStyle = tsNone
      OnChange = TrackBar3Change
    end
    object TrackBar1: TTrackBar
      Left = 17
      Top = 11
      Width = 23
      Height = 173
      Hint = 'Head 0'
      Max = 65535
      Orientation = trVertical
      TabOrder = 2
      ThumbLength = 15
      TickMarks = tmTopLeft
      TickStyle = tsNone
      OnChange = TrackBar1Change
    end
    object TrackBar4: TTrackBar
      Left = 112
      Top = 11
      Width = 24
      Height = 173
      Hint = 'Head 3'
      Max = 65535
      Orientation = trVertical
      TabOrder = 3
      ThumbLength = 15
      TickMarks = tmTopLeft
      TickStyle = tsNone
      OnChange = TrackBar4Change
    end
    object TrackBar5: TTrackBar
      Left = 144
      Top = 11
      Width = 24
      Height = 173
      Hint = 'Head 4'
      Max = 65535
      Orientation = trVertical
      TabOrder = 4
      ThumbLength = 15
      TickMarks = tmTopLeft
      TickStyle = tsNone
      OnChange = TrackBar5Change
    end
    object TrackBar6: TTrackBar
      Left = 176
      Top = 11
      Width = 24
      Height = 173
      Hint = 'Head 5'
      Max = 65535
      Orientation = trVertical
      TabOrder = 5
      ThumbLength = 15
      TickMarks = tmTopLeft
      TickStyle = tsNone
      OnChange = TrackBar6Change
    end
    object TrackBar7: TTrackBar
      Left = 2
      Top = 226
      Width = 271
      Height = 21
      Hint = 'Scale'
      Max = 65535
      Min = 10
      Position = 65535
      TabOrder = 6
      ThumbLength = 15
      TickMarks = tmTopLeft
      TickStyle = tsNone
      OnChange = TrackBar7Change
    end
    object Edit1: TEdit
      Left = 8
      Top = 184
      Width = 33
      Height = 21
      Hint = 'Head 0'
      TabOrder = 7
      OnChange = Edit1Change
    end
    object Edit2: TEdit
      Left = 40
      Top = 184
      Width = 33
      Height = 21
      Hint = 'Head 1'
      TabOrder = 8
      OnChange = Edit2Change
    end
    object Edit3: TEdit
      Left = 72
      Top = 184
      Width = 33
      Height = 21
      Hint = 'Head 2'
      TabOrder = 9
      OnChange = Edit3Change
    end
    object Edit4: TEdit
      Left = 104
      Top = 184
      Width = 33
      Height = 21
      Hint = 'Head 3'
      TabOrder = 10
      OnChange = Edit4Change
    end
    object Edit5: TEdit
      Left = 136
      Top = 184
      Width = 33
      Height = 21
      Hint = 'Head 4'
      TabOrder = 11
      OnChange = Edit5Change
    end
    object Edit6: TEdit
      Left = 168
      Top = 184
      Width = 33
      Height = 21
      Hint = 'Head 5'
      TabOrder = 12
      OnChange = Edit6Change
    end
    object TrackBar8: TTrackBar
      Left = 208
      Top = 11
      Width = 24
      Height = 173
      Hint = 'Head 5'
      Max = 65535
      Orientation = trVertical
      TabOrder = 13
      ThumbLength = 15
      TickMarks = tmTopLeft
      TickStyle = tsNone
      OnChange = TrackBar8Change
    end
    object TrackBar9: TTrackBar
      Left = 240
      Top = 11
      Width = 24
      Height = 173
      Hint = 'Head 5'
      Max = 65535
      Orientation = trVertical
      TabOrder = 14
      ThumbLength = 15
      TickMarks = tmTopLeft
      TickStyle = tsNone
      OnChange = TrackBar9Change
    end
    object Edit7: TEdit
      Left = 200
      Top = 184
      Width = 33
      Height = 21
      Hint = 'Head 5'
      TabOrder = 15
      OnChange = Edit7Change
    end
    object Edit8: TEdit
      Left = 232
      Top = 184
      Width = 33
      Height = 21
      Hint = 'Head 5'
      TabOrder = 16
      OnChange = Edit8Change
    end
    object cb8heads: TCheckBox
      Left = 196
      Top = 259
      Width = 65
      Height = 17
      Hint = 'Check, if drive can have 8 heads'#13'( Zeus, Orion, Sequoia )'
      Caption = '8 Heads'
      TabOrder = 17
      OnClick = cb8headsClick
    end
    object btLoad: TButton
      Left = 21
      Top = 255
      Width = 75
      Height = 25
      Anchors = [akLeft, akBottom]
      Caption = 'Read'
      ParentShowHint = False
      ShowHint = False
      TabOrder = 18
      OnClick = btLoadClick
    end
    object btSave: TButton
      Left = 106
      Top = 255
      Width = 75
      Height = 25
      Anchors = [akLeft, akBottom]
      Caption = 'Write'
      Enabled = False
      ParentShowHint = False
      ShowHint = False
      TabOrder = 19
      OnClick = btSaveClick
    end
  end
  object GroupBox2: TGroupBox
    Left = 288
    Top = 0
    Width = 105
    Height = 289
    Caption = 'Create 47'
    TabOrder = 1
    DesignSize = (
      105
      289)
    object rgFrom: TRadioGroup
      Left = 16
      Top = 24
      Width = 65
      Height = 105
      Caption = 'From'
      ItemIndex = 0
      Items.Strings = (
        '40'
        '41'
        '42'
        '43'
        '46')
      TabOrder = 0
    end
    object btCreate: TButton
      Left = 14
      Top = 256
      Width = 75
      Height = 25
      Anchors = [akLeft, akBottom]
      Caption = 'Create'
      TabOrder = 1
      OnClick = btCreateClick
    end
    object cbDword40: TCheckBox
      Left = 8
      Top = 224
      Width = 81
      Height = 17
      Caption = 'DWord in 40'
      TabOrder = 2
    end
  end
end
