object fmCustomPort: TfmCustomPort
  Left = 258
  Top = 127
  Width = 539
  Height = 250
  BorderIcons = [biSystemMenu]
  Caption = 'Custom Port'
  Color = clBtnFace
  Constraints.MinHeight = 250
  Constraints.MinWidth = 270
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lbControllers: TListBox
    Left = 8
    Top = 26
    Width = 515
    Height = 161
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Courier New'
    Font.Style = []
    ItemHeight = 14
    ParentFont = False
    TabOrder = 0
    OnClick = lbControllersClick
    OnDblClick = btOKClick
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 531
    Height = 26
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object edBasePort: TLabeledEdit
      Left = 8
      Top = 3
      Width = 49
      Height = 21
      EditLabel.Width = 49
      EditLabel.Height = 13
      EditLabel.Caption = ' Base Port'
      LabelPosition = lpRight
      TabOrder = 0
      Text = '$100'
    end
    object edControl: TLabeledEdit
      Left = 128
      Top = 3
      Width = 49
      Height = 21
      Hint = 'Device control register'
      EditLabel.Width = 58
      EditLabel.Height = 13
      EditLabel.Caption = ' Control Port'
      LabelPosition = lpRight
      TabOrder = 1
      Text = '$10E'
    end
    object cbSlave: TCheckBox
      Left = 248
      Top = 5
      Width = 49
      Height = 17
      Caption = 'Slave'
      Enabled = False
      TabOrder = 2
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 187
    Width = 531
    Height = 32
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
    DesignSize = (
      531
      32)
    object btScanPCI: TButton
      Left = 11
      Top = 3
      Width = 75
      Height = 25
      Caption = 'Scan PCI'
      TabOrder = 0
      OnClick = btScanPCIClick
    end
    object btScanUsb: TButton
      Left = 96
      Top = 3
      Width = 75
      Height = 25
      Caption = 'Scan USB'
      TabOrder = 1
      OnClick = btScanUsbClick
    end
    object cbUSB: TCheckBox
      Left = 179
      Top = 7
      Width = 57
      Height = 17
      Caption = 'USB'
      TabOrder = 2
    end
    object btCancel: TButton
      Left = 363
      Top = 3
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Cancel'
      TabOrder = 3
      OnClick = btCancelClick
    end
    object btOK: TButton
      Left = 446
      Top = 3
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'OK'
      TabOrder = 4
      OnClick = btOKClick
    end
  end
  object Panel4: TPanel
    Left = 523
    Top = 26
    Width = 8
    Height = 161
    Align = alRight
    BevelOuter = bvNone
    TabOrder = 3
  end
  object Panel3: TPanel
    Left = 0
    Top = 26
    Width = 8
    Height = 161
    Align = alLeft
    BevelOuter = bvNone
    TabOrder = 4
  end
end
