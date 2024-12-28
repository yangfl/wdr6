object fmConfig: TfmConfig
  Left = 508
  Top = 111
  Width = 289
  Height = 429
  Hint = 'Duble Click or '#39'Run'#39' button for execute command'
  Caption = 'Config Commands'
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lbConfig: TListBox
    Left = 0
    Top = 0
    Width = 281
    Height = 368
    Align = alClient
    ItemHeight = 13
    TabOrder = 0
    OnDblClick = lbConfigDblClick
  end
  object Panel1: TPanel
    Left = 0
    Top = 368
    Width = 281
    Height = 30
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    object btRun: TButton
      Left = 199
      Top = 3
      Width = 75
      Height = 25
      Caption = 'Run'
      TabOrder = 0
      OnClick = lbConfigDblClick
    end
  end
end
