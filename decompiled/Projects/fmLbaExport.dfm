object fmLbaExport: TfmLbaExport
  Left = 584
  Top = 104
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'LBA Export'
  ClientHeight = 220
  ClientWidth = 122
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
  object clHeads: TCheckListBox
    Left = 5
    Top = 4
    Width = 113
    Height = 181
    Align = alCustom
    BiDiMode = bdRightToLeft
    ItemHeight = 13
    ParentBiDiMode = False
    TabOrder = 0
    OnDblClick = clHeadsDblClick
  end
  object btStart: TButton
    Left = 42
    Top = 189
    Width = 75
    Height = 25
    Caption = 'Start'
    TabOrder = 1
    OnClick = btStartClick
  end
end
