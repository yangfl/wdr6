object fmFList: TfmFList
  Left = 474
  Top = 109
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'F-List Editor'
  ClientHeight = 263
  ClientWidth = 320
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
  object edName1hd: TLabeledEdit
    Left = 56
    Top = 28
    Width = 169
    Height = 21
    EditLabel.Width = 33
    EditLabel.Height = 13
    EditLabel.Caption = '1 head'
    LabelPosition = lpLeft
    LabelSpacing = 5
    MaxLength = 24
    TabOrder = 2
  end
  object StaticText1: TStaticText
    Left = 100
    Top = 11
    Width = 68
    Height = 17
    Caption = 'Format Model'
    TabOrder = 19
  end
  object edName2hd: TLabeledEdit
    Left = 56
    Top = 52
    Width = 169
    Height = 21
    EditLabel.Width = 38
    EditLabel.Height = 13
    EditLabel.Caption = '2 heads'
    LabelPosition = lpLeft
    LabelSpacing = 5
    MaxLength = 24
    TabOrder = 4
  end
  object edName3hd: TLabeledEdit
    Left = 56
    Top = 76
    Width = 169
    Height = 21
    EditLabel.Width = 38
    EditLabel.Height = 13
    EditLabel.Caption = '3 heads'
    LabelPosition = lpLeft
    LabelSpacing = 5
    MaxLength = 24
    TabOrder = 6
  end
  object edName4hd: TLabeledEdit
    Left = 56
    Top = 100
    Width = 169
    Height = 21
    EditLabel.Width = 38
    EditLabel.Height = 13
    EditLabel.Caption = '4 heads'
    LabelPosition = lpLeft
    LabelSpacing = 5
    MaxLength = 24
    TabOrder = 8
  end
  object edName5hd: TLabeledEdit
    Left = 56
    Top = 124
    Width = 169
    Height = 21
    EditLabel.Width = 38
    EditLabel.Height = 13
    EditLabel.Caption = '5 heads'
    LabelPosition = lpLeft
    LabelSpacing = 5
    MaxLength = 24
    TabOrder = 10
  end
  object edName6hd: TLabeledEdit
    Left = 56
    Top = 148
    Width = 169
    Height = 21
    EditLabel.Width = 38
    EditLabel.Height = 13
    EditLabel.Caption = '6 heads'
    LabelPosition = lpLeft
    LabelSpacing = 5
    MaxLength = 24
    TabOrder = 12
  end
  object edName7hd: TLabeledEdit
    Left = 56
    Top = 172
    Width = 169
    Height = 21
    EditLabel.Width = 38
    EditLabel.Height = 13
    EditLabel.Caption = '7 heads'
    LabelPosition = lpLeft
    LabelSpacing = 5
    MaxLength = 24
    TabOrder = 14
  end
  object edName8hd: TLabeledEdit
    Left = 56
    Top = 196
    Width = 169
    Height = 21
    EditLabel.Width = 38
    EditLabel.Height = 13
    EditLabel.Caption = '8 heads'
    LabelPosition = lpLeft
    LabelSpacing = 5
    MaxLength = 24
    TabOrder = 16
  end
  object edLba1hd: TEdit
    Left = 228
    Top = 28
    Width = 84
    Height = 21
    TabOrder = 3
  end
  object StaticText2: TStaticText
    Left = 244
    Top = 11
    Width = 47
    Height = 17
    Caption = 'Max LBA'
    TabOrder = 20
  end
  object edLba2hd: TEdit
    Left = 228
    Top = 52
    Width = 84
    Height = 21
    TabOrder = 5
  end
  object edLba3hd: TEdit
    Left = 228
    Top = 76
    Width = 84
    Height = 21
    TabOrder = 7
  end
  object edLba4hd: TEdit
    Left = 228
    Top = 100
    Width = 84
    Height = 21
    TabOrder = 9
  end
  object edLba5hd: TEdit
    Left = 228
    Top = 124
    Width = 84
    Height = 21
    TabOrder = 11
  end
  object edLba6hd: TEdit
    Left = 228
    Top = 148
    Width = 84
    Height = 21
    TabOrder = 13
  end
  object edLba7hd: TEdit
    Left = 228
    Top = 172
    Width = 84
    Height = 21
    TabOrder = 15
  end
  object edLba8hd: TEdit
    Left = 228
    Top = 196
    Width = 84
    Height = 21
    TabOrder = 17
  end
  object btWrite: TButton
    Left = 232
    Top = 228
    Width = 75
    Height = 25
    Caption = 'Write'
    TabOrder = 1
    OnClick = btWriteClick
  end
  object btRead: TButton
    Left = 144
    Top = 229
    Width = 75
    Height = 25
    Caption = 'Read'
    TabOrder = 0
    OnClick = btReadClick
  end
  object cbGroup: TComboBox
    Left = 56
    Top = 231
    Width = 75
    Height = 21
    ItemHeight = 13
    ItemIndex = 0
    TabOrder = 18
    Text = 'STD'
    OnChange = cbGroupChange
    Items.Strings = (
      'STD'
      'ALT1'
      'ALT2'
      'ALT3'
      'ALT4'
      'ALT5')
  end
  object btAuto: TButton
    Left = 15
    Top = 230
    Width = 25
    Height = 25
    Hint = 'Auto Calculate Value'
    Caption = '>'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 21
    OnClick = btAutoClick
  end
  object pmFromHeads: TPopupMenu
    Left = 8
    Top = 8
    object miFromHead1: TMenuItem
      Caption = 'From Head 1'
      OnClick = miFromHead1Click
    end
    object miFromHead2: TMenuItem
      Caption = 'From Head 2'
      OnClick = miFromHead2Click
    end
    object miFromHead3: TMenuItem
      Caption = 'From Head 3'
      OnClick = miFromHead3Click
    end
    object miFromHead4: TMenuItem
      Caption = 'From Head 4'
      OnClick = miFromHead4Click
    end
    object miFromHead5: TMenuItem
      Caption = 'From Head 5'
      OnClick = miFromHead5Click
    end
    object miFromHead6: TMenuItem
      Caption = 'From Head 6'
      OnClick = miFromHead6Click
    end
    object miFromHead7: TMenuItem
      Caption = 'From Head 7'
      OnClick = miFromHead7Click
    end
    object miFromHead8: TMenuItem
      Caption = 'From Head 8'
      OnClick = miFromHead8Click
    end
  end
end
