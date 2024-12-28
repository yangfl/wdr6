object fmServoTest: TfmServoTest
  Left = 109
  Top = 3
  Width = 692
  Height = 522
  BorderIcons = [biSystemMenu]
  Caption = 'Test Servo'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Im32: TImage32
    Left = 0
    Top = 0
    Width = 684
    Height = 461
    Align = alClient
    Bitmap.DrawMode = dmBlend
    Bitmap.OuterColor = -16777216
    Bitmap.ResamplerClassName = 'TNearestResampler'
    BitmapAlign = baTopLeft
    Color = clBlack
    ParentColor = False
    RepaintMode = rmOptimizer
    Scale = 1
    ScaleMode = smNormal
    TabOrder = 0
  end
  object Panel1: TPanel
    Left = 0
    Top = 461
    Width = 684
    Height = 30
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    object btGo: TButton
      Left = 3
      Top = 2
      Width = 65
      Height = 25
      Caption = 'GO'
      TabOrder = 0
      OnClick = btGoClick
    end
    object edTracks: TLabeledEdit
      Left = 201
      Top = 4
      Width = 57
      Height = 21
      EditLabel.Width = 36
      EditLabel.Height = 13
      EditLabel.Caption = 'Tracks '
      LabelPosition = lpLeft
      TabOrder = 1
    end
    object btHeads: TButton
      Left = 466
      Top = 6
      Width = 17
      Height = 17
      Caption = '>'
      TabOrder = 2
      OnClick = btHeadsClick
    end
    object btTracks: TButton
      Left = 262
      Top = 6
      Width = 17
      Height = 17
      Caption = '>'
      TabOrder = 3
      OnClick = btTracksClick
    end
    object edHeads: TLabeledEdit
      Left = 424
      Top = 4
      Width = 39
      Height = 21
      EditLabel.Width = 31
      EditLabel.Height = 13
      EditLabel.Caption = 'Heads'
      LabelPosition = lpLeft
      TabOrder = 4
    end
    object rbAll: TRadioButton
      Left = 487
      Top = 8
      Width = 41
      Height = 17
      Caption = 'All'
      Checked = True
      TabOrder = 5
      TabStop = True
    end
    object rbCurrent: TRadioButton
      Left = 525
      Top = 8
      Width = 63
      Height = 17
      Caption = 'Current'
      TabOrder = 6
    end
    object edStep: TLabeledEdit
      Left = 355
      Top = 4
      Width = 29
      Height = 21
      EditLabel.Width = 25
      EditLabel.Height = 13
      EditLabel.Caption = 'Step '
      LabelPosition = lpLeft
      TabOrder = 7
      Text = '100'
    end
    object cbType: TComboBox
      Left = 584
      Top = 4
      Width = 97
      Height = 21
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 8
      Text = 'Wedge Verify'
      Items.Strings = (
        'Wedge Verify'
        'Wedge Write Virtual'
        'Seek'
        'Format')
    end
    object edStart: TLabeledEdit
      Left = 101
      Top = 4
      Width = 57
      Height = 21
      EditLabel.Width = 25
      EditLabel.Height = 13
      EditLabel.Caption = 'Start '
      LabelPosition = lpLeft
      TabOrder = 9
    end
    object cbFromZones: TCheckBox
      Left = 283
      Top = 6
      Width = 30
      Height = 17
      Hint = 'Use Zone Map for current Head (only in ROYL)'
      Caption = 'Z'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 10
    end
  end
end
