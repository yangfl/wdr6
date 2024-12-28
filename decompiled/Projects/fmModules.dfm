object fmModules: TfmModules
  Left = 221
  Top = 110
  Width = 579
  Height = 303
  Caption = 'Firmware Modules'
  Color = clBtnFace
  Constraints.MinHeight = 200
  Constraints.MinWidth = 560
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object gbModules: TGroupBox
    Left = 9
    Top = 0
    Width = 553
    Height = 191
    Align = alClient
    Caption = ' Modules '
    TabOrder = 0
    object lvModules: TListView
      Left = 2
      Top = 15
      Width = 549
      Height = 174
      Align = alClient
      Checkboxes = True
      Columns = <
        item
          Caption = 'ID'
          Width = 75
        end
        item
          Caption = 'Cyl'
          Width = 35
        end
        item
          Caption = 'Hd'
          Width = 0
        end
        item
          Caption = 'Sect'
        end
        item
          Caption = 'Len'
          Width = 45
        end
        item
          Caption = 'Ver'
          Width = 65
        end
        item
          Caption = 'CRC'
          Width = 40
        end
        item
          Caption = 'Date'
          Width = 65
        end
        item
          AutoSize = True
          Caption = 'What is it'
        end>
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Default'
      Font.Style = []
      ReadOnly = True
      RowSelect = True
      ParentFont = False
      PopupMenu = pmModules
      SmallImages = ImageList1
      TabOrder = 0
      ViewStyle = vsReport
      OnColumnClick = lvModulesColumnClick
      OnCompare = lvModulesCompare
      OnCustomDrawItem = lvModulesCustomDrawItem
      OnDblClick = lvModulesDblClick
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 238
    Width = 571
    Height = 34
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    object cbWoMap: TCheckBox
      Left = 13
      Top = 3
      Width = 97
      Height = 16
      Caption = 'w/o Road Map'
      TabOrder = 0
      OnClick = cbWoMapClick
    end
    object cbById: TCheckBox
      Left = 114
      Top = 2
      Width = 49
      Height = 17
      Caption = 'By ID'
      Checked = True
      State = cbChecked
      TabOrder = 1
      OnClick = cbByIdClick
    end
    object cbMapSecondCopy: TCheckBox
      Left = 170
      Top = 2
      Width = 109
      Height = 17
      Caption = 'Second Copy Map '
      TabOrder = 2
      Visible = False
    end
    object cbAltUba2: TCheckBox
      Left = 291
      Top = 2
      Width = 65
      Height = 17
      Caption = 'Alt UBA'
      TabOrder = 3
      Visible = False
      OnClick = cbAltUba2Click
    end
    object edOffset: TEdit
      Left = 366
      Top = 1
      Width = 57
      Height = 21
      Hint = 'Second Copy Offset'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      Visible = False
    end
    object btGetOffset: TButton
      Left = 427
      Top = 2
      Width = 17
      Height = 17
      Hint = 'Get Second Copy Offset'
      Caption = '>'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      Visible = False
      OnClick = btGetOffsetClick
    end
    object pbModules: TProgressBar
      Left = 0
      Top = 23
      Width = 571
      Height = 11
      Align = alBottom
      TabOrder = 6
    end
  end
  object Panel2: TPanel
    Left = 562
    Top = 0
    Width = 9
    Height = 191
    Align = alRight
    BevelOuter = bvNone
    TabOrder = 2
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 9
    Height = 191
    Align = alLeft
    BevelOuter = bvNone
    TabOrder = 3
  end
  object gbWoRoadMap: TGroupBox
    Left = 0
    Top = 191
    Width = 571
    Height = 47
    Align = alBottom
    Caption = 'w/o Road Map'
    TabOrder = 4
    Visible = False
    object edModulId: TLabeledEdit
      Left = 88
      Top = 17
      Width = 41
      Height = 21
      EditLabel.Width = 78
      EditLabel.Height = 13
      EditLabel.Caption = 'Module Number '
      LabelPosition = lpLeft
      TabOrder = 0
      Text = '$01'
    end
    object btRead: TButton
      Left = 144
      Top = 13
      Width = 55
      Height = 25
      Caption = 'Read'
      TabOrder = 1
      OnClick = btReadClick
    end
    object btCheckModule: TButton
      Left = 262
      Top = 13
      Width = 55
      Height = 25
      Caption = 'Check'
      TabOrder = 2
      OnClick = btCheckModuleClick
    end
    object btView: TButton
      Left = 498
      Top = 13
      Width = 55
      Height = 25
      Caption = 'Dump'
      TabOrder = 3
      OnClick = btViewClick
    end
    object btWriteModule: TButton
      Left = 203
      Top = 13
      Width = 55
      Height = 25
      Caption = 'Write'
      TabOrder = 4
      OnClick = btWriteModuleClick
    end
    object btInitModule: TButton
      Left = 321
      Top = 13
      Width = 55
      Height = 25
      Caption = 'Init'
      TabOrder = 5
      OnClick = btInitModuleClick
    end
    object btModuleClear: TButton
      Left = 380
      Top = 13
      Width = 55
      Height = 25
      Caption = 'Clear'
      TabOrder = 6
      OnClick = btModuleClearClick
    end
    object btDelete: TButton
      Left = 439
      Top = 13
      Width = 55
      Height = 25
      Caption = 'Delete'
      TabOrder = 7
      OnClick = btDeleteClick
    end
  end
  object pmModules: TPopupMenu
    Left = 440
    Top = 42
    object miBlocks: TMenuItem
      Caption = 'I/O'
      object miRead: TMenuItem
        Action = acReadModules
        Caption = 'Read'
        ShortCut = 16466
      end
      object miWrite: TMenuItem
        Caption = 'Write'
        ShortCut = 16471
        OnClick = miWriteClick
      end
      object miCheck: TMenuItem
        Caption = 'Check by ID'
        ShortCut = 16456
        OnClick = miCheckClick
      end
      object miModuleClear: TMenuItem
        Caption = 'Clear'
        Hint = 'Delete content'
        OnClick = miModuleClearClick
      end
      object N5: TMenuItem
        Caption = '-'
      end
      object miWriteMultiSelected: TMenuItem
        Caption = 'Write Multi Selected'
        ShortCut = 49239
        OnClick = miWriteMultiSelectedClick
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object miReadSelected: TMenuItem
        Caption = 'Read Selected'
        OnClick = miReadSelectedClick
      end
      object miWriteSelected: TMenuItem
        Caption = 'Write Selected'
        OnClick = miWriteSelectedClick
      end
      object miCheckSelected: TMenuItem
        Caption = 'Check by ID Selected'
        OnClick = miCheckSelectedClick
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object miReadAll: TMenuItem
        Caption = 'Read All'
        ShortCut = 49234
        OnClick = miReadAllClick
      end
      object miWriteAll: TMenuItem
        Caption = 'Write All'
        OnClick = miWriteAllClick
      end
      object miCheckAll: TMenuItem
        Caption = 'Check All by ID'
        ShortCut = 49224
        OnClick = miCheckAllClick
      end
      object miCheckAllbyIDII: TMenuItem
        Caption = 'HW Check All by ID'
        OnClick = miCheckAllbyIDIIClick
      end
    end
    object miDump: TMenuItem
      Caption = 'Dump'
      ShortCut = 16452
      OnClick = miDumpClick
    end
    object Block1: TMenuItem
      Caption = 'Block'
      object miRecalcCrc: TMenuItem
        Caption = 'Recalc CRC'
        OnClick = miRecalcCrcClick
      end
      object miZerrosCRC: TMenuItem
        Caption = 'Zerros CRC'
        OnClick = miZerrosCRCClick
      end
    end
    object RoadMap1: TMenuItem
      Caption = 'Road Map'
      object miReadRoadMapById: TMenuItem
        Caption = 'Read from HDD'
        ShortCut = 16461
        OnClick = miReadRoadMapByIdClick
      end
      object miLoadRoadMapFile: TMenuItem
        Caption = 'Load from File'
        ShortCut = 16460
        OnClick = miLoadRoadMapFileClick
      end
      object miRoadMapViaEnumeration: TMenuItem
        Caption = 'Via Enumeration'
        ShortCut = 16453
        OnClick = miRoadMapViaEnumerationClick
      end
      object miRoadMapClear: TMenuItem
        Caption = 'Clear'
        ShortCut = 16451
        OnClick = miRoadMapClearClick
      end
    end
    object Select1: TMenuItem
      Caption = 'Select'
      object miAll: TMenuItem
        Caption = 'Select All'
        ShortCut = 16449
        OnClick = miAllClick
      end
      object miSelectAllonCurrentHead: TMenuItem
        Caption = 'Select all on current head'
        Visible = False
        OnClick = miSelectAllonCurrentHeadClick
      end
      object miSelectUnreaded: TMenuItem
        Caption = 'Select Unreaded'
        OnClick = miSelectUnreadedClick
      end
      object miSelectAllwoSS: TMenuItem
        Caption = 'Select All w/o SS'
        OnClick = miSelectAllwoSSClick
      end
      object Select2xxxGroup1: TMenuItem
        Caption = 'Select 2xxx Group'
        OnClick = Select2xxxGroup1Click
      end
      object miSelect8xxxGroup: TMenuItem
        Caption = 'Select 8xxx Group'
        OnClick = miSelect8xxxGroupClick
      end
      object N3: TMenuItem
        Caption = '-'
      end
      object miUnselect: TMenuItem
        Caption = 'Unselect All'
        ShortCut = 16469
        OnClick = miUnselectClick
      end
      object miUnselectAllonCurentHead: TMenuItem
        Caption = 'Unselect all on curent head'
        Visible = False
        OnClick = miUnselectAllonCurentHeadClick
      end
      object N4: TMenuItem
        Caption = '-'
      end
      object miInvertSelected: TMenuItem
        Caption = 'Invert Selected'
        OnClick = miInvertSelectedClick
      end
    end
  end
  object ImageList1: TImageList
    Left = 408
    Top = 42
    Bitmap = {
      494C010103000400040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007B7B00007B7B00007B7B000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FF0000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007B7B00007B7B00007B7B000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FF000000FF00000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007B7B00007B7B00007B7B000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FF000000FF000000FF00000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      FF000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF00000000000000000000000000109CEF000894EF00109CEF000894
      EF00109CEF000894EF00109CEF000894EF00109CEF000894EF00109CEF000894
      EF00109CEF000894EF00109CEF000894EF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FF000000FF000000FF000000FF000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF0000000000000000000000000000000000000000000000FF000000
      FF0000000000000000000000000000000000109CEF00189CEF00109CEF00189C
      EF00109CEF00189CEF00109CEF00189CEF00109CEF00189CEF00109CEF00189C
      EF00109CEF00189CEF00109CEF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FF00000000000000FF000000FF000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF000000000000000000000000000000FF000000FF000000
      00000000000000000000000000000000000021A5EF00189CEF0021A5F700189C
      EF0021A5EF00189CEF0021A5F70000000000109CEF00189CEF00109CEF00189C
      EF00109CEF00189CEF00109CEF00189CEF000000000000000000000000000000
      00000000000000000000000000007B7B00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FF000000FF00000000000000FF000000FF000000FF0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FF000000FF000000FF00000000000000FF000000FF00000000000000
      00000000000000000000000000000000000021A5EF00189CEF0021A5F700189C
      EF0021A5EF00189CEF0021A5F700189CEF0021A5EF00189CEF0021A5F700189C
      EF0021A5EF00189CEF0021A5F700189CEF000000000000000000000000000000
      00000000000000000000000000007B7B00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FF000000FF0000000000000000000000FF000000FF000000FF00000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF000000FF000000FF000000FF0000000000000000000000
      00000000000000000000000000000000000021A5EF0029A5EF0021A5EF0029A5
      EF0021A5EF0029A5EF0021A5EF0029A5EF0021A5EF0029A5EF0021A5EF0029A5
      EF0021A5EF0029A5EF0021A5EF0029A5EF000000000000000000000000000000
      0000000000000000000000000000000000007B7B000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      000000FF000000FF0000000000000000000000FF000000FF000000FF00000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF000000FF000000000000000000000000000000
      00000000000000000000000000000000000031ADF70029A5EF0031ADF70029A5
      EF0031ADF70029A5EF0031ADF70029A5EF0031ADF70029A5EF0031ADF70029A5
      EF0031ADF70029A5EF0031ADF70029A5EF000000000000000000000000000000
      0000000000000000000000000000000000007B7B00007B7B00007B7B00000000
      00000000000000000000000000000000000000000000000000000000000000FF
      000000FF000000FF0000000000000000000000FF000000FF000000FF000000FF
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF000000FF000000FF000000FF0000000000000000000000
      00000000000000000000000000000000000031ADEF0039ADEF0039ADEF0039AD
      EF0031ADEF0039ADEF0039ADEF0039ADEF0031ADEF0039ADEF0039ADEF0039AD
      EF0031ADEF0039ADEF0039ADEF0039ADEF000000000000000000000000000000
      000000000000000000000000000000000000000000007B7B00007B7B00007B7B
      00000000000000000000000000000000000000000000000000000000000000FF
      000000FF000000FF000000000000000000000000000000FF000000FF000000FF
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FF000000FF0000000000000000000000FF000000FF00000000000000
      00000000000000000000000000000000000042ADF70039ADEF0042ADF70039AD
      EF0042ADF70039ADEF0042ADF70039ADEF0042ADF70039ADEF0042ADF70039AD
      EF0042ADF70039ADEF0042ADF70039ADEF000000000000000000000000007B7B
      00007B7B00007B7B00000000000000000000000000007B7B00007B7B00007B7B
      000000000000000000000000000000000000000000000000000000FF000000FF
      000000FF000000FF000000000000000000000000000000FF000000FF000000FF
      000000FF00000000000000000000000000000000000000000000000000000000
      FF000000FF00000000000000000000000000000000000000FF000000FF000000
      0000000000000000000000000000000000004AB5EF004AB5F7004AB5EF004AB5
      EF004AB5EF004AB5F7004AB5EF004AB5EF004AB5EF004AB5F7004AB5EF004AB5
      EF004AB5EF004AB5F7004AB5EF004AB5EF000000000000000000000000007B7B
      00007B7B00007B7B00000000000000000000000000007B7B00007B7B00007B7B
      000000000000000000000000000000000000000000000000000000FF000000FF
      000000FF00000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF00000000000000000000000000000000000000FF000000FF000000
      FF000000000000000000000000000000000052B5F7004AB5EF0052B5F7004AB5
      EF0052B5F7004AB5EF0052B5F7004AB5EF0052B5F7004AB5EF0052B5F7004AB5
      EF0052B5F7004AB5EF0052B5F7004AB5EF000000000000000000000000007B7B
      00007B7B00000000000000000000000000007B7B00007B7B00007B7B00000000
      000000000000000000000000000000000000000000000000000000FF000000FF
      000000FF00000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      FF000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF000000000000000000000000005ABDEF005ABDF7005ABDEF005ABD
      F7005ABDEF005ABDF7005ABDEF005ABDF7005ABDEF005ABDF7005ABDEF005ABD
      F7005ABDEF005ABDF7005ABDEF00FFFFFF000000000000000000000000000000
      0000000000007B7B00007B7B00007B7B00007B7B00007B7B0000000000000000
      0000000000000000000000000000000000000000000000FF000000FF000000FF
      000000FF00000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF000000FF000000FF000000
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      FF000000FF000000FF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FF000000FF000000FF
      000000FF00000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000FF000000FF000000FF00FFFFFF000000FF000000FF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFFFFFFFFFFFC7FFDFFDFFF00F8
      FC7FFCFF8FE3FFFFFC7FF8FF8FC700F8FFFFF87FC7CFFFFFFFFFFA7FE39F00F8
      FEFFF23FF13FFFFFFEFFF31FF87FFFFFFF7FE31FFCFFFFFFFF1FE30FF87FFFFF
      FF8FE38FF33FFFFFE38FC387E79FFFFFE38FC7FFC78FFFFFE71FC7FF87C7FFFF
      F83F87FFFFFF0000FFFF87FFFFFF000000000000000000000000000000000000
      000000000000}
  end
  object ActionList1: TActionList
    Left = 376
    Top = 42
    object acReadModules: TAction
      Caption = 'Read Modules'
      OnExecute = acReadModulesExecute
    end
  end
end
