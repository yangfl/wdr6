object fmProgres: TfmProgres
  Left = 455
  Top = 107
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'Progress'
  ClientHeight = 108
  ClientWidth = 335
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object laProgres: TLabel
    Left = 9
    Top = 11
    Width = 36
    Height = 13
    Caption = 'Progres'
  end
  object btCancel: TButton
    Left = 128
    Top = 74
    Width = 75
    Height = 25
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 0
    OnClick = btCancelClick
  end
  object pbProgres: TProgressBar
    Left = 8
    Top = 39
    Width = 321
    Height = 23
    TabOrder = 1
  end
end
