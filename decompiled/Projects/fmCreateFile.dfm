object fmCreateFile: TfmCreateFile
  Left = 538
  Top = 59
  BorderStyle = bsDialog
  Caption = 'Create Module'
  ClientHeight = 468
  ClientWidth = 254
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
  DesignSize = (
    254
    468)
  PixelsPerInch = 96
  TextHeight = 13
  object clMaskBits: TCheckListBox
    Left = 5
    Top = 4
    Width = 244
    Height = 430
    Align = alCustom
    Anchors = [akLeft, akTop, akRight, akBottom]
    BiDiMode = bdRightToLeft
    ItemHeight = 13
    ParentBiDiMode = False
    TabOrder = 0
  end
  object btStart: TButton
    Left = 175
    Top = 439
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Create'
    TabOrder = 1
    OnClick = btStartClick
  end
  object edId: TLabeledEdit
    Left = 32
    Top = 440
    Width = 41
    Height = 21
    EditLabel.Width = 17
    EditLabel.Height = 13
    EditLabel.Caption = 'ID: '
    LabelPosition = lpLeft
    TabOrder = 2
    Text = '$E0'
  end
  object edLen: TLabeledEdit
    Left = 112
    Top = 439
    Width = 41
    Height = 21
    EditLabel.Width = 24
    EditLabel.Height = 13
    EditLabel.Caption = 'Len: '
    LabelPosition = lpLeft
    TabOrder = 3
    Text = '$200'
  end
end
