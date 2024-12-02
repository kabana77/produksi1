object DaftarWarnaFrm: TDaftarWarnaFrm
  Left = 199
  Top = 121
  AutoScroll = False
  Caption = 'DaftarWarnaFrm'
  ClientHeight = 558
  ClientWidth = 1114
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDesktopCenter
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object PanelHeader: TPanel
    Left = 0
    Top = 0
    Width = 1114
    Height = 49
    Align = alTop
    BevelOuter = bvNone
    Caption = 'MASTER WARNA'
    Color = clBackground
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -19
    Font.Name = 'Arial Black'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 49
    Width = 1114
    Height = 509
    ActivePage = TabSheet3
    Align = alClient
    TabOrder = 1
    object TabSheet3: TTabSheet
      Caption = 'Input'
      ImageIndex = 2
      OnShow = TabSheet3Show
      object wwDBGrid3: TwwDBGrid
        Left = 0
        Top = 49
        Width = 511
        Height = 377
        ControlType.Strings = (
          'KD_KEL;CustomEdit;LookJenis;F'
          'KD_SATUAN;CustomEdit;LookSatuan;F'
          'ICC;CheckBox;1;0'
          'CW;CheckBox;1;0'
          'ISFIXED;CheckBox;1;0')
        Selected.Strings = (
          'KD_WARNA'#9'6'#9'KODE'#9'F'
          'WARNA'#9'40'#9'WARNA'#9'F'
          'JNS_WARNA'#9'10'#9'JENIS'#9'F'
          'CW'#9'3'#9'CW'#9'F'
          'ISFIXED'#9'1'#9'ISFIXED'#9'F')
        IniAttributes.Enabled = True
        IniAttributes.SaveToRegistry = True
        IniAttributes.FileName = 'Pismatex Master'
        IniAttributes.Delimiter = ';;'
        IniAttributes.CheckNewFields = True
        ExportOptions.ExportType = wwgetHTML
        ExportOptions.Options = [esoShowHeader, esoShowFooter, esoShowTitle, esoDblQuoteFields, esoBestColFit, esoShowRecordNo, esoShowAlternating]
        TitleColor = clMoneyGreen
        FixedCols = 0
        ShowHorzScrollBar = True
        Align = alLeft
        DataSource = DSQMaster
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgPerfectRowFit, dgShowFooter, dgTrailingEllipsis, dgDblClickColSizing]
        ParentFont = False
        ReadOnly = True
        RowHeightPercent = 125
        TabOrder = 0
        TitleAlignment = taCenter
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clBlack
        TitleFont.Height = -11
        TitleFont.Name = 'Lucida Sans'
        TitleFont.Style = [fsBold]
        TitleLines = 3
        TitleButtons = True
        UseTFields = False
        OnTitleButtonClick = wwDBGrid3TitleButtonClick
        PaintOptions.AlternatingRowColor = clMoneyGreen
        PaintOptions.ActiveRecordColor = clGreen
      end
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 1106
        Height = 49
        Align = alTop
        BevelInner = bvLowered
        TabOrder = 1
        object BtnBrowse: TSpeedButton
          Left = 82
          Top = 16
          Width = 23
          Height = 25
          GroupIndex = 1
          Down = True
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000003
            333333333F777773FF333333008888800333333377333F3773F3333077870787
            7033333733337F33373F3308888707888803337F33337F33337F330777880887
            7703337F33337FF3337F3308888000888803337F333777F3337F330777700077
            7703337F33377733337F33088888888888033373FFFFFFFFFF73333000000000
            00333337777777777733333308033308033333337F7F337F7F33333308033308
            033333337F7F337F7F33333308033308033333337F73FF737F33333377800087
            7333333373F77733733333333088888033333333373FFFF73333333333000003
            3333333333777773333333333333333333333333333333333333}
          NumGlyphs = 2
          OnClick = BtnBrowseClick
        end
        object BtnEditing: TSpeedButton
          Left = 8
          Top = 16
          Width = 75
          Height = 25
          GroupIndex = 1
          Caption = '&Editing'
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000003
            333333333F777773FF333333008888800333333377333F3773F3333077870787
            7033333733337F33373F3308888707888803337F33337F33337F330777880887
            7703337F33337FF3337F3308888000888803337F333777F3337F330777700077
            7703337F33377733337FB3088888888888033373FFFFFFFFFF733B3000000000
            0033333777777777773333BBBB3333080333333333F3337F7F33BBBB707BB308
            03333333373F337F7F3333BB08033308033333337F7F337F7F333B3B08033308
            033333337F73FF737F33B33B778000877333333373F777337333333B30888880
            33333333373FFFF73333333B3300000333333333337777733333}
          NumGlyphs = 2
          OnClick = BtnEditingClick
        end
        object Label2: TLabel
          Left = 136
          Top = 6
          Width = 44
          Height = 13
          Caption = 'Cari Data'
        end
        object ECari2: TEdit
          Left = 136
          Top = 22
          Width = 145
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 0
          OnChange = ECari2Change
        end
        object cbOtomatis2: TCheckBox
          Left = 188
          Top = 5
          Width = 97
          Height = 17
          Caption = 'Otomatis'
          TabOrder = 1
          OnClick = cbOtomatis2Click
        end
        object Btnfilter: TBitBtn
          Left = 288
          Top = 16
          Width = 75
          Height = 25
          Caption = 'Filte&r'
          Default = True
          TabOrder = 2
          OnClick = BtnfilterClick
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
            555555555555555555555555555555555555555555FF55555555555559055555
            55555555577FF5555555555599905555555555557777F5555555555599905555
            555555557777FF5555555559999905555555555777777F555555559999990555
            5555557777777FF5555557990599905555555777757777F55555790555599055
            55557775555777FF5555555555599905555555555557777F5555555555559905
            555555555555777FF5555555555559905555555555555777FF55555555555579
            05555555555555777FF5555555555557905555555555555777FF555555555555
            5990555555555555577755555555555555555555555555555555}
          NumGlyphs = 2
        end
      end
      object Panel6: TPanel
        Left = 0
        Top = 426
        Width = 1106
        Height = 55
        Align = alBottom
        TabOrder = 2
        object LRecords: TLabel
          Left = 8
          Top = 4
          Width = 68
          Height = 13
          Caption = 'Jml. Record'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object BtnClose: TBitBtn
          Left = 170
          Top = 24
          Width = 75
          Height = 25
          TabOrder = 1
          Kind = bkClose
        end
        object BtnSimpan: TBitBtn
          Left = 90
          Top = 24
          Width = 75
          Height = 25
          Caption = '&Simpan'
          Enabled = False
          TabOrder = 0
          OnClick = BtnSimpanClick
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333330070
            7700333333337777777733333333008088003333333377F73377333333330088
            88003333333377FFFF7733333333000000003FFFFFFF77777777000000000000
            000077777777777777770FFFFFFF0FFFFFF07F3333337F3333370FFFFFFF0FFF
            FFF07F3FF3FF7FFFFFF70F00F0080CCC9CC07F773773777777770FFFFFFFF039
            99337F3FFFF3F7F777F30F0000F0F09999937F7777373777777F0FFFFFFFF999
            99997F3FF3FFF77777770F00F000003999337F773777773777F30FFFF0FF0339
            99337F3FF7F3733777F30F08F0F0337999337F7737F73F7777330FFFF0039999
            93337FFFF7737777733300000033333333337777773333333333}
          NumGlyphs = 2
        end
        object BitBtn6: TBitBtn
          Left = 9
          Top = 24
          Width = 75
          Height = 25
          Caption = '&export'
          TabOrder = 2
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
            00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
            8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
            8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
            8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
            03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
            03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
            33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
            33333337FFFF7733333333300000033333333337777773333333}
          NumGlyphs = 2
        end
      end
    end
  end
  object Qmaster: TOracleDataSet
    SQL.Strings = (
      'select a.*, a.rowid from ipisma_db3.warna_baru a'
      ':myparam'
      '')
    Variables.Data = {
      0300000001000000080000003A4D59504152414D010000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      04000000070000000A00000054474C5F494E534552540100000000000A000000
      4F50525F494E53455254010000000000050000005741524E4101000000000008
      0000004B445F5741524E41010000000000090000004A4E535F5741524E410100
      0000000002000000435701000000000007000000495346495845440100000000
      00}
    QueryAllRecords = False
    RefreshOptions = [roAfterInsert]
    Session = DMFrm.OS
    AfterEdit = QmasterAfterEdit
    AfterPost = QmasterAfterPost
    AfterDelete = QmasterAfterDelete
    Left = 40
    Top = 344
    object QmasterWARNA: TStringField
      FieldName = 'WARNA'
      Size = 50
    end
    object QmasterKD_WARNA: TStringField
      FieldName = 'KD_WARNA'
      Required = True
      Size = 6
    end
    object QmasterJNS_WARNA: TStringField
      FieldName = 'JNS_WARNA'
      Size = 10
    end
    object QmasterCW: TStringField
      FieldName = 'CW'
      Size = 1
    end
    object QmasterISFIXED: TStringField
      FieldName = 'ISFIXED'
      Required = True
      Size = 1
    end
    object QmasterTGL_INSERT: TDateTimeField
      FieldName = 'TGL_INSERT'
    end
    object QmasterOPR_INSERT: TStringField
      FieldName = 'OPR_INSERT'
      Size = 30
    end
  end
  object DSQMaster: TwwDataSource
    DataSet = Qmaster
    Left = 40
    Top = 400
  end
end
