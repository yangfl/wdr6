object fmSmart: TfmSmart
  Left = 195
  Top = 104
  Width = 603
  Height = 415
  Caption = 'S.M.A.R.T.'
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
  PixelsPerInch = 96
  TextHeight = 13
  object SmartList: TListView
    Left = 0
    Top = 0
    Width = 595
    Height = 384
    Hint = 
      'L (Life Critical): the vital function (according to developers H' +
      'DD).'#10'Pf (Pre-failure): field Thresh of this attribute contains i' +
      's minimum admissible value below which working capacity HDD is n' +
      'ot guaranteed.'#10'Pr (Performance related): value of this attribute' +
      ' directly depends on speed HDD on separate indicators.'#10'Er (Error' +
      ' rate): value of attribute reflects relative frequency of errors' +
      ' on the given parametre.'#10'C (Counter): the attribute is the count' +
      'er of events.'#10'S (Self-preserve): value of attribute automaticall' +
      'y is updated and remains.'
    Align = alClient
    Columns = <
      item
        Caption = 'ID'
        Width = 30
      end
      item
        Caption = 'Name'
        Width = 210
      end
      item
        Alignment = taRightJustify
        Caption = 'Value'
        Width = 40
      end
      item
        Alignment = taRightJustify
        Caption = 'Worst'
        Width = 43
      end
      item
        Alignment = taRightJustify
        Caption = 'Tresh'
        Width = 40
      end
      item
        Alignment = taRightJustify
        Caption = 'RAW'
        Width = 70
      end
      item
        Caption = 'Health'
        Width = 60
      end
      item
        AutoSize = True
        Caption = 'Flags'
      end>
    GridLines = True
    HideSelection = False
    ParentShowHint = False
    PopupMenu = pmSmart
    ShowHint = True
    TabOrder = 0
    ViewStyle = vsReport
    OnCustomDrawItem = SmartListCustomDrawItem
    OnCustomDrawSubItem = SmartListCustomDrawSubItem
  end
  object pmSmart: TPopupMenu
    Left = 16
    Top = 24
    object Refresh1: TMenuItem
      Caption = 'Refresh'
      ShortCut = 16466
      OnClick = Refresh1Click
    end
    object miCopy: TMenuItem
      Caption = 'Copy'
      ShortCut = 16451
      OnClick = miCopyClick
    end
    object miToLog: TMenuItem
      Caption = 'To Log'
      ShortCut = 16460
      OnClick = miToLogClick
    end
  end
end
