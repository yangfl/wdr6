object fmViewDef: TfmViewDef
  Left = 393
  Top = 109
  Width = 407
  Height = 386
  Caption = 'Graph View'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCanResize = FormCanResize
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Im32: TImage32
    Left = 0
    Top = 0
    Width = 399
    Height = 316
    Cursor = crCross
    Align = alClient
    Bitmap.DrawMode = dmBlend
    Bitmap.OuterColor = -16777216
    Bitmap.ResamplerClassName = 'TNearestResampler'
    BitmapAlign = baTopLeft
    Color = clBtnFace
    ParentColor = False
    PopupMenu = pmImage32
    RepaintMode = rmOptimizer
    Scale = 1
    ScaleMode = smNormal
    TabOrder = 0
  end
  object Panel2: TPanel
    Left = 0
    Top = 316
    Width = 399
    Height = 39
    Align = alBottom
    BevelOuter = bvNone
    Ctl3D = True
    ParentCtl3D = False
    TabOrder = 1
    object Button1: TButton
      Left = 8
      Top = 9
      Width = 75
      Height = 25
      Caption = 'Show'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 90
      Top = 9
      Width = 81
      Height = 25
      Caption = 'Clear'
      TabOrder = 1
      OnClick = Button2Click
    end
    object cbShowZones: TCheckBox
      Left = 180
      Top = 5
      Width = 79
      Height = 17
      Caption = 'Show Zones'
      Checked = True
      Color = clBtnFace
      ParentColor = False
      State = cbChecked
      TabOrder = 2
    end
    object cbShowDefects: TCheckBox
      Left = 180
      Top = 21
      Width = 95
      Height = 17
      Caption = 'Show Defects'
      Checked = True
      State = cbChecked
      TabOrder = 3
    end
    object cbOptimized: TCheckBox
      Left = 272
      Top = 5
      Width = 73
      Height = 17
      Caption = 'Optimized'
      Checked = True
      State = cbChecked
      TabOrder = 5
    end
    object cbTracks: TCheckBox
      Left = 272
      Top = 20
      Width = 65
      Height = 17
      Caption = 'Tracks'
      Checked = True
      State = cbChecked
      TabOrder = 4
    end
  end
  object pmExportToFile: TPopupMenu
    Left = 436
    Top = 65528
    object SelectAll3: TMenuItem
    end
    object Copy1: TMenuItem
    end
    object PictureToFile1: TMenuItem
      Caption = 'Save To File'
    end
  end
  object pmImage32: TPopupMenu
    Left = 364
    Top = 7
    object MenuItem3: TMenuItem
      Caption = 'Save To File'
      OnClick = MenuItem3Click
    end
  end
end
