object fmFormat: TfmFormat
  Left = 520
  Top = 48
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsDialog
  Caption = 'Format Unit'
  ClientHeight = 197
  ClientWidth = 264
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object btGo: TButton
    Left = 181
    Top = 166
    Width = 75
    Height = 25
    Caption = 'GO'
    TabOrder = 0
    OnClick = btGoClick
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 0
    Width = 246
    Height = 161
    Caption = 'Format Unit Options'
    TabOrder = 1
    object cbBit0: TCheckBox
      Left = 8
      Top = 16
      Width = 145
      Height = 17
      Caption = 'Ignore PList'
      TabOrder = 0
    end
    object cbBit1: TCheckBox
      Left = 8
      Top = 31
      Width = 146
      Height = 17
      Caption = 'Ignore GList'
      Checked = True
      State = cbChecked
      TabOrder = 1
    end
    object cbBit2: TCheckBox
      Left = 8
      Top = 47
      Width = 146
      Height = 17
      Hint = 'Post current Cyl to Task File'
      Caption = 'Post Curent Cyl to Task'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
    end
    object cbBit3: TCheckBox
      Left = 8
      Top = 63
      Width = 146
      Height = 17
      Hint = 'IBI mode (PList MUST be in RAM)'
      Caption = 'Intelligent BurnIn Mode'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
    end
    object cbBit4: TCheckBox
      Left = 8
      Top = 81
      Width = 146
      Height = 17
      Hint = 'Skip write of all LBAs'
      Caption = 'Skip Write All LBAs'
      Checked = True
      ParentShowHint = False
      ShowHint = True
      State = cbChecked
      TabOrder = 4
    end
    object cbBit5: TCheckBox
      Left = 8
      Top = 98
      Width = 146
      Height = 17
      Hint = 
        'Quick LBA write of bad trk. Override "Skip Write All LBAs" (SOC ' +
        'only)'
      Caption = 'Quick Write Bad Track'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
    end
    object cbBit6: TCheckBox
      Left = 8
      Top = 115
      Width = 146
      Height = 17
      Hint = 
        'Generate defect mgt table in memory, do not write to Disk (SOC o' +
        'nly)'
      Caption = 'Only in RAM'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
    end
    object cbBit7: TCheckBox
      Left = 8
      Top = 134
      Width = 146
      Height = 17
      Caption = 'Reserved'
      TabOrder = 7
    end
    object cbBit8: TCheckBox
      Left = 156
      Top = 16
      Width = 83
      Height = 17
      Caption = 'Reserved'
      TabOrder = 8
    end
    object cbBit9: TCheckBox
      Left = 156
      Top = 31
      Width = 84
      Height = 17
      Caption = 'Reserved'
      TabOrder = 9
    end
    object cbBitA: TCheckBox
      Left = 156
      Top = 47
      Width = 84
      Height = 17
      Hint = 'Post current Cyl to Task File'
      Caption = 'Reserved'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 10
    end
    object cbBitB: TCheckBox
      Left = 156
      Top = 63
      Width = 84
      Height = 17
      Hint = 'IBI mode (PList MUST be in RAM)'
      Caption = 'Reserved'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 11
    end
    object cbBitC: TCheckBox
      Left = 156
      Top = 81
      Width = 84
      Height = 17
      Hint = 'Skip write of all LBAs'
      Caption = 'Reserved'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 12
    end
    object cbBitD: TCheckBox
      Left = 156
      Top = 98
      Width = 84
      Height = 17
      Hint = 
        'Quick LBA write of bad trk. Override "Skip Write All LBAs" (SOC ' +
        'only)'
      Caption = 'Reserved'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 13
    end
    object cbBitE: TCheckBox
      Left = 156
      Top = 115
      Width = 84
      Height = 17
      Hint = 
        'Generate defect mgt table in memory, do not write to Disk (SOC o' +
        'nly)'
      Caption = 'Reserved'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 14
    end
    object cbBitF: TCheckBox
      Left = 156
      Top = 134
      Width = 84
      Height = 17
      Caption = 'Reserved'
      TabOrder = 15
    end
  end
  object btCancel: TButton
    Left = 101
    Top = 166
    Width = 75
    Height = 25
    Caption = 'Cancel'
    TabOrder = 2
    OnClick = btCancelClick
  end
end
