object fmString: TfmString
  Left = 449
  Top = 158
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Input'
  ClientHeight = 80
  ClientWidth = 301
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  DesignSize = (
    301
    80)
  PixelsPerInch = 96
  TextHeight = 13
  object edString: TLabeledEdit
    Left = 8
    Top = 16
    Width = 284
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    EditLabel.Width = 3
    EditLabel.Height = 13
    EditLabel.Caption = ' '
    LabelPosition = lpLeft
    TabOrder = 0
  end
  object btOk: TButton
    Left = 218
    Top = 47
    Width = 75
    Height = 25
    Anchors = [akTop, akRight]
    Caption = 'OK'
    ModalResult = 1
    TabOrder = 1
  end
  object btCancel: TButton
    Left = 138
    Top = 47
    Width = 75
    Height = 25
    Anchors = [akTop, akRight]
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 2
  end
end
