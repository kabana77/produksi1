object InfoMutasiGW2Frm: TInfoMutasiGW2Frm
  Left = 237
  Top = 177
  Width = 1010
  Height = 518
  Caption = 'InfoMutasiGW 2'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Scaled = False
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PanelMain: TPanel
    Left = 0
    Top = 0
    Width = 994
    Height = 479
    Align = alClient
    BevelOuter = bvNone
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 0
    object Label1: TLabel
      Left = 0
      Top = 466
      Width = 994
      Height = 13
      Align = alBottom
      Color = clSkyBlue
      ParentColor = False
    end
    object DBText3: TDBText
      Left = 0
      Top = 49
      Width = 994
      Height = 27
      Align = alTop
      Alignment = taRightJustify
      Color = clSkyBlue
      DataField = 'JNS_BRG'
      DataSource = DMFrm.dsQJnsItem
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -19
      Font.Name = 'Arial Black'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object LabelBanner: TLabel
      Left = 0
      Top = 161
      Width = 994
      Height = 13
      Align = alTop
      Color = clSkyBlue
      ParentColor = False
    end
    object PanelHeader: TPanel
      Left = 0
      Top = 0
      Width = 994
      Height = 49
      Align = alTop
      BevelOuter = bvNone
      Caption = 'NAMA TRANSAKSI'
      Color = clBackground
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Arial Black'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object PanelFilter: TPanel
      Left = 0
      Top = 76
      Width = 994
      Height = 85
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 1
      DesignSize = (
        994
        85)
      object Bevel1: TBevel
        Left = 570
        Top = 13
        Width = 241
        Height = 49
      end
      object Label5: TLabel
        Left = 936
        Top = 16
        Width = 43
        Height = 13
        Cursor = crHandPoint
        Anchors = [akTop, akRight]
        Caption = 'Spasi (%)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsUnderline]
        ParentFont = False
        OnClick = Label5Click
      end
      object BtnFind: TSpeedButton
        Left = 649
        Top = 22
        Width = 89
        Height = 30
        Cursor = crHandPoint
        GroupIndex = 1
        Caption = 'Mode &Cari'
        NumGlyphs = 2
        OnClick = BtnFindClick
      end
      object BtnOk2: TSpeedButton
        Left = 740
        Top = 22
        Width = 55
        Height = 31
        Cursor = crHandPoint
        GroupIndex = 1
        Caption = '&Oke'
        NumGlyphs = 2
        OnClick = BtnOk2Click
      end
      object Label3: TLabel
        Left = 8
        Top = 3
        Width = 44
        Height = 13
        Caption = 'Tgl. Awal'
      end
      object Label4: TLabel
        Left = 136
        Top = 3
        Width = 45
        Height = 13
        Caption = 'Tgl. Akhir'
      end
      object Label2: TLabel
        Left = 8
        Top = 43
        Width = 67
        Height = 13
        Caption = 'Urut menurut :'
      end
      object BtnOk: TBitBtn
        Left = 580
        Top = 24
        Width = 67
        Height = 28
        Cursor = crHandPoint
        Caption = '&Refresh'
        TabOrder = 0
        OnClick = BtnOkClick
        NumGlyphs = 2
      end
      object wwDBSpinLine2: TwwDBSpinEdit
        Left = 938
        Top = 32
        Width = 41
        Height = 19
        Anchors = [akTop, akRight]
        Increment = 100.000000000000000000
        MaxValue = 400.000000000000000000
        MinValue = 100.000000000000000000
        Value = 100.000000000000000000
        TabOrder = 1
        UnboundDataType = wwDefault
        OnChange = wwDBSpinLine2Change
      end
      object vTglAwal: TwwDBDateTimePicker
        Left = 8
        Top = 18
        Width = 113
        Height = 22
        BorderStyle = bsNone
        CalendarAttributes.Font.Charset = DEFAULT_CHARSET
        CalendarAttributes.Font.Color = clWindowText
        CalendarAttributes.Font.Height = -11
        CalendarAttributes.Font.Name = 'MS Sans Serif'
        CalendarAttributes.Font.Style = []
        Epoch = 1950
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ShowButton = True
        TabOrder = 2
        DisplayFormat = 'dd mmm yyyy'
        OnChange = vTglAwalChange
      end
      object vTglAkhir: TwwDBDateTimePicker
        Left = 136
        Top = 18
        Width = 113
        Height = 22
        BorderStyle = bsNone
        CalendarAttributes.Font.Charset = DEFAULT_CHARSET
        CalendarAttributes.Font.Color = clWindowText
        CalendarAttributes.Font.Height = -11
        CalendarAttributes.Font.Name = 'MS Sans Serif'
        CalendarAttributes.Font.Style = []
        Epoch = 1950
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ShowButton = True
        TabOrder = 3
        DisplayFormat = 'dd mmm yyyy'
      end
      object ComboBox1: TComboBox
        Left = 266
        Top = 19
        Width = 129
        Height = 21
        CharCase = ecUpperCase
        Ctl3D = False
        ItemHeight = 13
        ItemIndex = 0
        ParentCtl3D = False
        TabOrder = 4
        Text = 'PER KONSTRUKSI'
        Items.Strings = (
          'PER KONSTRUKSI'
          'PER WARNA')
      end
      object Edit1: TEdit
        Left = 8
        Top = 58
        Width = 401
        Height = 19
        TabOrder = 5
        Text = 'nama_item, warna, no_batch'
      end
      object CheckBox1: TCheckBox
        Left = 412
        Top = 21
        Width = 137
        Height = 17
        Caption = 'Yang ada stoknya saja'
        TabOrder = 6
        OnClick = CheckBox1Click
      end
    end
    object PanelBrowse: TPanel
      Left = 0
      Top = 174
      Width = 994
      Height = 251
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 2
      object wwDBGrid2: TwwDBGrid
        Left = 0
        Top = 0
        Width = 994
        Height = 251
        ControlType.Strings = (
          'ISFIXED;CheckBox;1;0')
        Selected.Strings = (
          'KD_ITEM'#9'9'#9'KODE'#9'F'
          'KD_SUB_KEL'#9'12'#9'JENIS BENANG'#9'F'
          'NAMA_ITEM'#9'28'#9'KETERANGAN ITEM PATAL'#9'F'
          'WARNA'#9'9'#9'WARNA'#9'F'
          'AWAL1'#9'10'#9'Kg'#9'F'#9'AWAL'
          'AWAL2'#9'10'#9'Pcs'#9'F'#9'AWAL'
          'MASUK1'#9'10'#9'Kg'#9'F'#9'MASUK'
          'MASUK2'#9'10'#9'Pcs'#9'F'#9'MASUK'
          'KELUAR1'#9'10'#9'Kg'#9'F'#9'KELUAR'
          'KELUAR2'#9'10'#9'Pcs'#9'F'#9'KELUAR'
          'AKHIR'#9'10'#9'Kg'#9'F'#9'AKHIR'
          'AKHIR2'#9'10'#9'Pcs'#9'F'#9'AKHIR')
        IniAttributes.Enabled = True
        IniAttributes.Delimiter = ';;'
        IniAttributes.CheckNewFields = True
        ExportOptions.ExportType = wwgetHTML
        ExportOptions.Options = [esoShowHeader, esoShowFooter, esoShowTitle, esoDblQuoteFields, esoBestColFit, esoShowRecordNo, esoShowAlternating]
        TitleColor = clBackground
        FixedCols = 0
        ShowHorzScrollBar = True
        EditControlOptions = [ecoSearchOwnerForm, ecoDisableDateTimePicker]
        Align = alClient
        BorderStyle = bsNone
        Ctl3D = False
        DataSource = dsQBrowse
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        KeyOptions = []
        Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgPerfectRowFit, dgShowFooter, dgNoLimitColSize, dgTrailingEllipsis, dgRowResize, dgFixedProportionalResize]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        TitleAlignment = taCenter
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWhite
        TitleFont.Height = -11
        TitleFont.Name = 'Arial'
        TitleFont.Style = []
        TitleLines = 4
        TitleButtons = True
        UseTFields = False
        OnTitleButtonClick = wwDBGrid2TitleButtonClick
        OnDblClick = wwDBGrid2DblClick
      end
    end
    object PanelFooter2: TPanel
      Left = 0
      Top = 425
      Width = 994
      Height = 41
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 3
      DesignSize = (
        994
        41)
      object wwDBNavigator1: TwwDBNavigator
        Left = 0
        Top = 0
        Width = 145
        Height = 41
        AutosizeStyle = asSizeNavButtons
        DataSource = dsQBrowse
        RepeatInterval.InitialDelay = 500
        RepeatInterval.Interval = 100
        Align = alLeft
        object wwDBNavigator1PriorPage: TwwNavButton
          Left = 0
          Top = 0
          Width = 37
          Height = 41
          Hint = 'Move backward 10 records'
          ImageIndex = -1
          NumGlyphs = 2
          Spacing = 4
          Transparent = False
          Caption = 'wwDBNavigator1PriorPage'
          Enabled = False
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          Index = 0
          Style = nbsPriorPage
        end
        object wwDBNavigator1NextPage: TwwNavButton
          Left = 37
          Top = 0
          Width = 36
          Height = 41
          Hint = 'Move forward 10 records'
          ImageIndex = -1
          NumGlyphs = 2
          Spacing = 4
          Transparent = False
          Caption = 'wwDBNavigator1NextPage'
          Enabled = False
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          Index = 1
          Style = nbsNextPage
        end
        object wwDBNavigator1SaveBookmark: TwwNavButton
          Left = 73
          Top = 0
          Width = 36
          Height = 41
          Hint = 'Bookmark current record'
          ImageIndex = -1
          NumGlyphs = 2
          Spacing = 4
          Transparent = False
          Caption = 'wwDBNavigator1SaveBookmark'
          Enabled = False
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          Index = 2
          Style = nbsSaveBookmark
        end
        object wwDBNavigator1RestoreBookmark: TwwNavButton
          Left = 109
          Top = 0
          Width = 36
          Height = 41
          Hint = 'Go back to saved bookmark'
          ImageIndex = -1
          NumGlyphs = 2
          Spacing = 4
          Transparent = False
          Caption = 'wwDBNavigator1RestoreBookmark'
          Enabled = False
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          Index = 3
          Style = nbsRestoreBookmark
        end
      end
      object BtnExport: TBitBtn
        Left = 632
        Top = 10
        Width = 75
        Height = 25
        Cursor = crHandPoint
        Anchors = [akTop, akRight]
        Caption = '&Export'
        TabOrder = 1
        OnClick = BtnExportClick
        NumGlyphs = 2
      end
      object BtnPrintBrowse: TBitBtn
        Left = 808
        Top = 8
        Width = 75
        Height = 25
        Cursor = crHandPoint
        Anchors = [akTop, akRight]
        Caption = '&Print'
        TabOrder = 2
        Visible = False
        OnClick = BtnPrintBrowseClick
        NumGlyphs = 2
      end
      object BtnDesign2: TBitBtn
        Left = 438
        Top = 10
        Width = 75
        Height = 25
        Cursor = crHandPoint
        Caption = 'Design'
        TabOrder = 3
        OnClick = BtnDesign2Click
        NumGlyphs = 2
      end
      object BtnClose1: TBitBtn
        Left = 909
        Top = 8
        Width = 75
        Height = 25
        Cursor = crHandPoint
        Anchors = [akTop, akRight]
        Caption = '&Close'
        TabOrder = 4
        OnClick = BtnClose1Click
        NumGlyphs = 2
      end
      object BitBtn1: TBitBtn
        Left = 152
        Top = 8
        Width = 75
        Height = 25
        Cursor = crHandPoint
        Caption = '&Kartu Stok'
        TabOrder = 5
        OnClick = BitBtn1Click
      end
    end
  end
  object QBrowse: TOracleDataSet
    SQL.Strings = (
      'select * from ipisma_db3.vinfomutasigw'
      ':vorder')
    Variables.Data = {0300000001000000070000003A564F52444552010000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      04000000160000000600000053415455414E010000000000070000004B445F49
      54454D0100000000000B0000004B445F4A4E535F4954454D0100000000000900
      00004E414D415F4954454D010000000000090000004B445F53415455414E0100
      00000000060000004D4153554B31010000000000060000004D4153554B320100
      00000000060000004D4153554B33010000000000070000004B454C5541523101
      0000000000070000004B454C55415232010000000000070000004B454C554152
      33010000000000070000004B454C554152340100000000000A0000004B445F53
      55425F4B454C010000000000060000004D4153554B3401000000000005000000
      4157414C31010000000000050000004157414C32010000000000070000004B45
      4C55415235010000000000070000004B454C5541523601000000000005000000
      5741524E41010000000000080000004E4F5F4241544348010000000000060000
      004D4153554B35010000000000070000004B454C55415237010000000000}
    ReadOnly = True
    QueryAllRecords = False
    Session = DMFrm.OS
    AfterScroll = QBrowseAfterScroll
    OnCalcFields = QBrowseCalcFields
    OnFilterRecord = QBrowseFilterRecord
    Left = 836
    Top = 8
    object QBrowseKD_ITEM: TStringField
      FieldName = 'KD_ITEM'
      Required = True
      Size = 50
    end
    object QBrowseKD_JNS_ITEM: TStringField
      FieldName = 'KD_JNS_ITEM'
      Required = True
      Size = 6
    end
    object QBrowseNAMA_ITEM: TStringField
      FieldName = 'NAMA_ITEM'
      Size = 255
    end
    object QBrowseKD_SATUAN: TStringField
      FieldName = 'KD_SATUAN'
      Required = True
      Size = 2
    end
    object QBrowseSATUAN: TStringField
      FieldName = 'SATUAN'
      Size = 12
    end
    object QBrowseKD_SUB_KEL: TStringField
      FieldName = 'KD_SUB_KEL'
      Size = 12
    end
    object QBrowseAWAL1: TFloatField
      FieldName = 'AWAL1'
      DisplayFormat = '#,##0.##;(#,##0.##);-'
    end
    object QBrowseAWAL2: TFloatField
      FieldName = 'AWAL2'
      DisplayFormat = '#,##0.##;(#,##0.##);-'
    end
    object QBrowseMASUK1: TFloatField
      FieldName = 'MASUK1'
      DisplayFormat = '#,##0.##;(#,##0.##);-'
    end
    object QBrowseMASUK2: TFloatField
      FieldName = 'MASUK2'
      DisplayFormat = '#,##0.##;(#,##0.##);-'
    end
    object QBrowseKELUAR1: TFloatField
      FieldName = 'KELUAR1'
      DisplayFormat = '#,##0.##;(#,##0.##);-'
    end
    object QBrowseKELUAR2: TFloatField
      FieldName = 'KELUAR2'
      DisplayFormat = '#,##0.##;(#,##0.##);-'
    end
    object QBrowseAKHIR: TFloatField
      FieldKind = fkCalculated
      FieldName = 'AKHIR'
      DisplayFormat = '#,##0.##;(#,##0.##);-'
      Calculated = True
    end
    object QBrowseAKHIR2: TFloatField
      FieldKind = fkCalculated
      FieldName = 'AKHIR2'
      DisplayFormat = '#,##0.##;(#,##0.##);-'
      Calculated = True
    end
    object QBrowseWARNA: TStringField
      FieldName = 'WARNA'
      Size = 50
    end
    object QBrowseNO_BATCH: TStringField
      FieldName = 'NO_BATCH'
      Size = 50
    end
  end
  object dsQBrowse: TwwDataSource
    DataSet = QBrowse
    Left = 888
    Top = 8
  end
  object ppReportBrowse: TppReport
    AutoStop = False
    DataPipeline = ppDBQBrowseDetail
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Fax'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 209974
    PrinterSetup.mmPaperWidth = 297039
    PrinterSetup.PaperSize = 9
    Template.FileName = 'D:\_Proyek\iPismaTex\Aplikasi\Report\TransaksiOrg.rtm'
    Units = utPrinterPixels
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 952
    Top = 10
    Version = '10.07'
    mmColumnWidth = 197300
    DataPipelineName = 'ppDBQBrowseDetail'
    object ppTitleBand1: TppTitleBand
      BeforePrint = ppTitleBand1BeforePrint
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 32015
      mmPrintPosition = 0
      object ppNamaLaporan: TppLabel
        UserName = 'NamaLaporan'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Transaksi Org'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5821
        mmLeft = 126471
        mmTop = 16933
        mmWidth = 31485
        BandType = 1
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '====================================='
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 6615
        mmTop = 15081
        mmWidth = 75671
        BandType = 1
      end
      object ppPeriode: TppLabel
        UserName = 'Periode'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '01 Nop 2006 s/d 30 Nop 2006'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 124884
        mmTop = 23283
        mmWidth = 34660
        BandType = 1
      end
      object ppDBText12: TppDBText
        UserName = 'DBText11'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'PERUSAHAAN'
        DataPipeline = ppDBPerusahaan
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPerusahaan'
        mmHeight = 4246
        mmLeft = 6615
        mmTop = 1058
        mmWidth = 24208
        BandType = 1
      end
      object ppDBText13: TppDBText
        UserName = 'DBText12'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'ALAMAT1'
        DataPipeline = ppDBPerusahaan
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPerusahaan'
        mmHeight = 4097
        mmLeft = 6615
        mmTop = 6085
        mmWidth = 15791
        BandType = 1
      end
      object ppDBText14: TppDBText
        UserName = 'DBText13'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'TELEPON1'
        DataPipeline = ppDBPerusahaan
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPerusahaan'
        mmHeight = 4097
        mmLeft = 6615
        mmTop = 10583
        mmWidth = 18175
        BandType = 1
      end
      object ppUserCetak: TppLabel
        UserName = 'UserCetak'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'SYSTEM, 17 Jan 2007 16:35'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 252942
        mmTop = 28046
        mmWidth = 28840
        BandType = 1
      end
    end
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 9260
      mmPrintPosition = 0
      object ppShape12: TppShape
        UserName = 'Shape12'
        ParentHeight = True
        mmHeight = 9260
        mmLeft = 256646
        mmTop = 0
        mmWidth = 27517
        BandType = 0
      end
      object ppShape7: TppShape
        UserName = 'Shape7'
        ParentHeight = True
        mmHeight = 9260
        mmLeft = 239713
        mmTop = 0
        mmWidth = 17198
        BandType = 0
      end
      object ppShape6: TppShape
        UserName = 'Shape6'
        ParentHeight = True
        mmHeight = 9260
        mmLeft = 223838
        mmTop = 0
        mmWidth = 16140
        BandType = 0
      end
      object ppShape8: TppShape
        UserName = 'Shape8'
        ParentHeight = True
        mmHeight = 9260
        mmLeft = 102659
        mmTop = 0
        mmWidth = 31221
        BandType = 0
      end
      object ppShape11: TppShape
        UserName = 'Shape101'
        ParentHeight = True
        mmHeight = 9260
        mmLeft = 182298
        mmTop = 0
        mmWidth = 41804
        BandType = 0
      end
      object ppShape10: TppShape
        UserName = 'Shape10'
        ParentHeight = True
        mmHeight = 9260
        mmLeft = 149225
        mmTop = 0
        mmWidth = 33338
        BandType = 0
      end
      object ppShape9: TppShape
        UserName = 'Shape9'
        ParentHeight = True
        mmHeight = 9260
        mmLeft = 133350
        mmTop = 0
        mmWidth = 16404
        BandType = 0
      end
      object ppShape5: TppShape
        UserName = 'Shape5'
        ParentHeight = True
        mmHeight = 9260
        mmLeft = 88900
        mmTop = 0
        mmWidth = 14023
        BandType = 0
      end
      object ppShape4: TppShape
        UserName = 'Shape4'
        ParentHeight = True
        mmHeight = 9260
        mmLeft = 79375
        mmTop = 0
        mmWidth = 9790
        BandType = 0
      end
      object ppShape3: TppShape
        UserName = 'Shape3'
        ParentHeight = True
        mmHeight = 9260
        mmLeft = 23019
        mmTop = 0
        mmWidth = 56621
        BandType = 0
      end
      object ppShape2: TppShape
        UserName = 'Shape2'
        ParentHeight = True
        mmHeight = 9260
        mmLeft = 9525
        mmTop = 0
        mmWidth = 13758
        BandType = 0
      end
      object ppShape1: TppShape
        UserName = 'Shape1'
        ParentHeight = True
        mmHeight = 9260
        mmLeft = 0
        mmTop = 0
        mmWidth = 10319
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'NO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3440
        mmLeft = 3175
        mmTop = 2381
        mmWidth = 5027
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'AWAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 137584
        mmTop = 2381
        mmWidth = 8467
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'KODE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 12435
        mmTop = 2910
        mmWidth = 8202
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'NAMA BARANG'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 24606
        mmTop = 2910
        mmWidth = 24606
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label103'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Retur'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3440
        mmLeft = 201613
        mmTop = 5292
        mmWidth = 7408
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'PP'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3426
        mmLeft = 108206
        mmTop = 5292
        mmWidth = 3724
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'PO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3426
        mmLeft = 123629
        mmTop = 5292
        mmWidth = 4097
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        Anchors = [atLeft, atBottom]
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Pakai'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3440
        mmLeft = 186267
        mmTop = 5292
        mmWidth = 7408
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Rusak'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3440
        mmLeft = 213255
        mmTop = 5292
        mmWidth = 8467
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'READY'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 243153
        mmTop = 2381
        mmWidth = 9790
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'SATUAN'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3175
        mmLeft = 89959
        mmTop = 2381
        mmWidth = 11906
        BandType = 0
      end
      object ppLabel23: TppLabel
        UserName = 'Label23'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'KOREKSI'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 225425
        mmTop = 2381
        mmWidth = 12700
        BandType = 0
      end
      object ppLabel28: TppLabel
        UserName = 'Label28'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Suplier'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3440
        mmLeft = 258234
        mmTop = 5556
        mmWidth = 9525
        BandType = 0
      end
      object ppLabel30: TppLabel
        UserName = 'Label30'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Smtr'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3440
        mmLeft = 273315
        mmTop = 5292
        mmWidth = 6615
        BandType = 0
      end
      object ppLabel31: TppLabel
        UserName = 'Label31'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Beli'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3440
        mmLeft = 155575
        mmTop = 5292
        mmWidth = 5292
        BandType = 0
      end
      object ppLabel32: TppLabel
        UserName = 'Label32'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Lainnya'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3440
        mmLeft = 168540
        mmTop = 5292
        mmWidth = 10583
        BandType = 0
      end
      object ppLabel33: TppLabel
        UserName = 'Label33'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'PART'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 80698
        mmTop = 2381
        mmWidth = 7673
        BandType = 0
      end
      object ppLabel34: TppLabel
        UserName = 'Label34'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'STATUS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3426
        mmLeft = 112687
        mmTop = 794
        mmWidth = 11173
        BandType = 0
      end
      object ppLabel35: TppLabel
        UserName = 'Label35'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'M A S U K'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3440
        mmLeft = 160338
        mmTop = 794
        mmWidth = 13758
        BandType = 0
      end
      object ppLine19: TppLine
        UserName = 'Line19'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 149490
        mmTop = 4763
        mmWidth = 74348
        BandType = 0
      end
      object ppLine20: TppLine
        UserName = 'Line20'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4233
        mmLeft = 165894
        mmTop = 5027
        mmWidth = 1323
        BandType = 0
      end
      object ppLine21: TppLine
        UserName = 'Line201'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4233
        mmLeft = 198438
        mmTop = 5027
        mmWidth = 1323
        BandType = 0
      end
      object ppLine22: TppLine
        UserName = 'Line202'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4233
        mmLeft = 211138
        mmTop = 5027
        mmWidth = 1323
        BandType = 0
      end
      object ppLine23: TppLine
        UserName = 'Line23'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 102659
        mmTop = 4763
        mmWidth = 30956
        BandType = 0
      end
      object ppLine24: TppLine
        UserName = 'Line203'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4233
        mmLeft = 117740
        mmTop = 5027
        mmWidth = 1323
        BandType = 0
      end
      object ppLabel36: TppLabel
        UserName = 'Label36'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'K E L U A R'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3440
        mmLeft = 196850
        mmTop = 794
        mmWidth = 15610
        BandType = 0
      end
      object ppLine25: TppLine
        UserName = 'Line25'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 256646
        mmTop = 4763
        mmWidth = 27252
        BandType = 0
      end
      object ppLine26: TppLine
        UserName = 'Line26'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4233
        mmLeft = 269611
        mmTop = 4991
        mmWidth = 1323
        BandType = 0
      end
      object ppLabel37: TppLabel
        UserName = 'Label37'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'TITIPAN'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3440
        mmLeft = 264319
        mmTop = 794
        mmWidth = 10848
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      BeforePrint = ppDetailBand1BeforePrint
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 4233
      mmPrintPosition = 0
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'KD_ITEM'
        DataPipeline = ppDBQBrowseDetail
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBQBrowseDetail'
        mmHeight = 3175
        mmLeft = 12171
        mmTop = 265
        mmWidth = 9260
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'AWAL'
        DataPipeline = ppDBQBrowseDetail
        DisplayFormat = '#,###.##;(#,###.##)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBQBrowseDetail'
        mmHeight = 3277
        mmLeft = 140313
        mmTop = 265
        mmWidth = 8119
        BandType = 4
      end
      object ppDBMemo1: TppDBMemo
        UserName = 'DBMemo1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        CharWrap = False
        DataField = 'NAMA_ITEM'
        DataPipeline = ppDBQBrowseDetail
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Stretch = True
        Transparent = True
        DataPipelineName = 'ppDBQBrowseDetail'
        mmHeight = 3175
        mmLeft = 24606
        mmTop = 265
        mmWidth = 53975
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'RETUR'
        DataPipeline = ppDBQBrowseDetail
        DisplayFormat = '#,###.##;(#,###.##)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBQBrowseDetail'
        mmHeight = 3277
        mmLeft = 199941
        mmTop = 265
        mmWidth = 9609
        BandType = 4
      end
      object ppLblNomer: TppLabel
        UserName = 'LblNomer'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'No'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 2910
        mmTop = 265
        mmWidth = 3704
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'KEBUTUHAN'
        DataPipeline = ppDBQBrowseDetail
        DisplayFormat = '#,###.##;(#,###.##)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBQBrowseDetail'
        mmHeight = 3277
        mmLeft = 99211
        mmTop = 265
        mmWidth = 17206
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'ON_ORDER'
        DataPipeline = ppDBQBrowseDetail
        DisplayFormat = '#,###.##;(#,###.##)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBQBrowseDetail'
        mmHeight = 3277
        mmLeft = 115823
        mmTop = 265
        mmWidth = 15940
        BandType = 4
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'PEMAKAIAN'
        DataPipeline = ppDBQBrowseDetail
        DisplayFormat = '#,###.##;(#,###.##)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBQBrowseDetail'
        mmHeight = 3277
        mmLeft = 181067
        mmTop = 265
        mmWidth = 16313
        BandType = 4
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'RUSAK'
        DataPipeline = ppDBQBrowseDetail
        DisplayFormat = '#,###.##;(#,###.##)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBQBrowseDetail'
        mmHeight = 3277
        mmLeft = 212641
        mmTop = 265
        mmWidth = 9609
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'READY'
        DataPipeline = ppDBQBrowseDetail
        DisplayFormat = '#,###.##;(#,###.##)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBQBrowseDetail'
        mmHeight = 3277
        mmLeft = 245714
        mmTop = 265
        mmWidth = 9609
        BandType = 4
      end
      object ppDBMemo2: TppDBMemo
        UserName = 'DBMemo2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        CharWrap = False
        DataField = 'MYSATUAN'
        DataPipeline = ppDBQBrowseDetail
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Stretch = True
        Transparent = True
        DataPipelineName = 'ppDBQBrowseDetail'
        mmHeight = 3175
        mmLeft = 89694
        mmTop = 265
        mmWidth = 12435
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'KOREKSI'
        DataPipeline = ppDBQBrowseDetail
        DisplayFormat = '#,###.##;(#,###.##)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBQBrowseDetail'
        mmHeight = 3277
        mmLeft = 225347
        mmTop = 265
        mmWidth = 12514
        BandType = 4
      end
      object ppDBText11: TppDBText
        UserName = 'DBText9'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'REKANAN'
        DataPipeline = ppDBQBrowseDetail
        DisplayFormat = '#,###.##;(#,###.##)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBQBrowseDetail'
        mmHeight = 3277
        mmLeft = 255600
        mmTop = 265
        mmWidth = 13482
        BandType = 4
      end
      object ppDBText27: TppDBText
        UserName = 'DBText27'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'SEMENTARA'
        DataPipeline = ppDBQBrowseDetail
        DisplayFormat = '#,###.##;(#,###.##)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBQBrowseDetail'
        mmHeight = 3277
        mmLeft = 265220
        mmTop = 265
        mmWidth = 17355
        BandType = 4
      end
      object ppDBText28: TppDBText
        UserName = 'DBText28'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'NO_PART'
        DataPipeline = ppDBQBrowseDetail
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBQBrowseDetail'
        mmHeight = 3277
        mmLeft = 80698
        mmTop = 265
        mmWidth = 13259
        BandType = 4
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        ParentHeight = True
        Position = lpLeft
        ReprintOnOverFlow = True
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 4233
        mmLeft = 23019
        mmTop = 0
        mmWidth = 3704
        BandType = 4
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        ParentHeight = True
        Position = lpLeft
        ReprintOnOverFlow = True
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 4233
        mmLeft = 0
        mmTop = 0
        mmWidth = 3704
        BandType = 4
      end
      object ppLine3: TppLine
        UserName = 'Line3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        ParentHeight = True
        Position = lpLeft
        ReprintOnOverFlow = True
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 4233
        mmLeft = 10054
        mmTop = 0
        mmWidth = 3704
        BandType = 4
      end
      object ppLine4: TppLine
        UserName = 'Line4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        ParentHeight = True
        Position = lpLeft
        ReprintOnOverFlow = True
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 4233
        mmLeft = 269876
        mmTop = 0
        mmWidth = 3704
        BandType = 4
      end
      object ppLine5: TppLine
        UserName = 'Line5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        ParentHeight = True
        Position = lpRight
        ReprintOnOverFlow = True
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 4233
        mmLeft = 280459
        mmTop = 0
        mmWidth = 3704
        BandType = 4
      end
      object ppLine6: TppLine
        UserName = 'Line6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        ParentHeight = True
        Position = lpLeft
        ReprintOnOverFlow = True
        StretchWithParent = True
        Style = lsDouble
        Weight = 0.750000000000000000
        mmHeight = 4233
        mmLeft = 256382
        mmTop = 0
        mmWidth = 3704
        BandType = 4
      end
      object ppLine7: TppLine
        UserName = 'Line7'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        ParentHeight = True
        Position = lpLeft
        ReprintOnOverFlow = True
        StretchWithParent = True
        Style = lsDouble
        Weight = 0.750000000000000000
        mmHeight = 4233
        mmLeft = 239448
        mmTop = 0
        mmWidth = 3704
        BandType = 4
      end
      object ppLine8: TppLine
        UserName = 'Line8'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        ParentHeight = True
        Position = lpLeft
        ReprintOnOverFlow = True
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 4233
        mmLeft = 223838
        mmTop = 0
        mmWidth = 3704
        BandType = 4
      end
      object ppLine9: TppLine
        UserName = 'Line9'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        ParentHeight = True
        Position = lpLeft
        ReprintOnOverFlow = True
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 4233
        mmLeft = 211138
        mmTop = 0
        mmWidth = 3704
        BandType = 4
      end
      object ppLine10: TppLine
        UserName = 'Line10'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        ParentHeight = True
        Position = lpLeft
        ReprintOnOverFlow = True
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 4233
        mmLeft = 198438
        mmTop = 0
        mmWidth = 3704
        BandType = 4
      end
      object ppLine11: TppLine
        UserName = 'Line11'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        ParentHeight = True
        Position = lpLeft
        ReprintOnOverFlow = True
        StretchWithParent = True
        Style = lsDouble
        Weight = 0.750000000000000000
        mmHeight = 4233
        mmLeft = 182034
        mmTop = 0
        mmWidth = 3704
        BandType = 4
      end
      object ppLine12: TppLine
        UserName = 'Line12'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        ParentHeight = True
        Position = lpLeft
        ReprintOnOverFlow = True
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 4233
        mmLeft = 165894
        mmTop = 0
        mmWidth = 3704
        BandType = 4
      end
      object ppDBText50: TppDBText
        UserName = 'DBText50'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'MASUK_LAIN'
        DataPipeline = ppDBQBrowseDetail
        DisplayFormat = '#,###.##;(#,###.##)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBQBrowseDetail'
        mmHeight = 3277
        mmLeft = 163247
        mmTop = 265
        mmWidth = 17728
        BandType = 4
      end
      object ppDBText51: TppDBText
        UserName = 'DBText51'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'PEMBELIAN'
        DataPipeline = ppDBQBrowseDetail
        DisplayFormat = '#,###.##;(#,###.##)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBQBrowseDetail'
        mmHeight = 3277
        mmLeft = 147762
        mmTop = 265
        mmWidth = 16015
        BandType = 4
      end
      object ppLine13: TppLine
        UserName = 'Line13'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        ParentHeight = True
        Position = lpLeft
        ReprintOnOverFlow = True
        StretchWithParent = True
        Style = lsDouble
        Weight = 0.750000000000000000
        mmHeight = 4233
        mmLeft = 149225
        mmTop = 0
        mmWidth = 3704
        BandType = 4
      end
      object ppLine14: TppLine
        UserName = 'Line14'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        ParentHeight = True
        Position = lpLeft
        ReprintOnOverFlow = True
        StretchWithParent = True
        Style = lsDouble
        Weight = 0.750000000000000000
        mmHeight = 4233
        mmLeft = 133350
        mmTop = 0
        mmWidth = 3704
        BandType = 4
      end
      object ppLine15: TppLine
        UserName = 'Line15'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        ParentHeight = True
        Position = lpLeft
        ReprintOnOverFlow = True
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 4233
        mmLeft = 117740
        mmTop = 0
        mmWidth = 3704
        BandType = 4
      end
      object ppLine16: TppLine
        UserName = 'Line16'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        ParentHeight = True
        Position = lpLeft
        ReprintOnOverFlow = True
        StretchWithParent = True
        Style = lsDouble
        Weight = 0.750000000000000000
        mmHeight = 4233
        mmLeft = 102394
        mmTop = 0
        mmWidth = 3704
        BandType = 4
      end
      object ppLine17: TppLine
        UserName = 'Line17'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        ParentHeight = True
        Position = lpLeft
        ReprintOnOverFlow = True
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 4233
        mmLeft = 88900
        mmTop = 0
        mmWidth = 3704
        BandType = 4
      end
      object ppLine18: TppLine
        UserName = 'Line18'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        ParentHeight = True
        Position = lpLeft
        ReprintOnOverFlow = True
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 4233
        mmLeft = 79375
        mmTop = 0
        mmWidth = 3704
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 4498
      mmPrintPosition = 0
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        VarType = vtPageNo
        DisplayFormat = 'Hal : #'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 274109
        mmTop = 1323
        mmWidth = 7938
        BandType = 8
      end
    end
    object ppSummaryBand1: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 32808
      mmPrintPosition = 0
      object ppDBText19: TppDBText
        UserName = 'DBText19'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'TTD1'
        DataPipeline = ppDBQTransaksi
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold, fsUnderline]
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBQTransaksi'
        mmHeight = 4233
        mmLeft = 241300
        mmTop = 21167
        mmWidth = 33602
        BandType = 7
      end
      object ppDBText42: TppDBText
        UserName = 'DBText42'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'TTD2'
        DataPipeline = ppDBQTransaksi
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold, fsUnderline]
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBQTransaksi'
        mmHeight = 4233
        mmLeft = 202142
        mmTop = 21431
        mmWidth = 33602
        BandType = 7
      end
      object ppDBText43: TppDBText
        UserName = 'DBText43'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'TTD3'
        DataPipeline = ppDBQTransaksi
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold, fsUnderline]
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBQTransaksi'
        mmHeight = 4233
        mmLeft = 164042
        mmTop = 21167
        mmWidth = 33602
        BandType = 7
      end
      object ppDBText44: TppDBText
        UserName = 'DBText44'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'DIV3'
        DataPipeline = ppDBQTransaksi
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBQTransaksi'
        mmHeight = 4233
        mmLeft = 164042
        mmTop = 8467
        mmWidth = 33602
        BandType = 7
      end
      object ppDBText45: TppDBText
        UserName = 'DBText45'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'DIV2'
        DataPipeline = ppDBQTransaksi
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBQTransaksi'
        mmHeight = 4233
        mmLeft = 202142
        mmTop = 8467
        mmWidth = 33602
        BandType = 7
      end
      object ppDBText46: TppDBText
        UserName = 'DBText46'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'DIV1'
        DataPipeline = ppDBQTransaksi
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBQTransaksi'
        mmHeight = 4233
        mmLeft = 241300
        mmTop = 8467
        mmWidth = 33602
        BandType = 7
      end
      object ppDBText47: TppDBText
        UserName = 'DBText47'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'JAB3'
        DataPipeline = ppDBQTransaksi
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsItalic]
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBQTransaksi'
        mmHeight = 4233
        mmLeft = 164042
        mmTop = 25400
        mmWidth = 33602
        BandType = 7
      end
      object ppDBText48: TppDBText
        UserName = 'DBText48'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'JAB2'
        DataPipeline = ppDBQTransaksi
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsItalic]
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBQTransaksi'
        mmHeight = 3969
        mmLeft = 202142
        mmTop = 25665
        mmWidth = 33602
        BandType = 7
      end
      object ppDBText49: TppDBText
        UserName = 'DBText401'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'JAB1'
        DataPipeline = ppDBQTransaksi
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsItalic]
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBQTransaksi'
        mmHeight = 3969
        mmLeft = 241300
        mmTop = 25400
        mmWidth = 33602
        BandType = 7
      end
      object ppLine27: TppLine
        UserName = 'Line21'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        ParentHeight = True
        Weight = 0.750000000000000000
        mmHeight = 32808
        mmLeft = 0
        mmTop = 0
        mmWidth = 284163
        BandType = 7
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object ppDBQBrowseDetail: TppDBPipeline
    DataSource = dsQBrowse
    OpenDataSource = False
    UserName = 'DBQBrowseDetail'
    Left = 920
    Top = 8
  end
  object ppDesigner1: TppDesigner
    AllowDataSettingsChange = True
    Caption = 'ReportBuilder'
    DataSettings.SessionType = 'BDESession'
    DataSettings.AllowEditSQL = False
    DataSettings.DatabaseType = dtParadox
    DataSettings.GuidCollationType = gcString
    DataSettings.IsCaseSensitive = True
    DataSettings.SQLType = sqBDELocal
    Position = poScreenCenter
    Report = ppReportBrowse
    IniStorageType = 'IniFile'
    IniStorageName = '($WINSYS)\RBuilder.ini'
    WindowHeight = 400
    WindowLeft = 100
    WindowTop = 50
    WindowWidth = 600
    Left = 952
    Top = 72
  end
  object ppDBPerusahaan: TppDBPipeline
    DataSource = DMFrm.dsPerusahaan
    OpenDataSource = False
    UserName = 'DBPerusahaan'
    Left = 920
    Top = 72
  end
  object QTransaksi: TOracleDataSet
    SQL.Strings = (
      'select * from vtransaksi')
    QBEDefinition.QBEFieldDefs = {
      04000000120000000E0000004E414D415F5452414E53414B5349010000000000
      0C0000004B445F5452414E53414B534901000000000006000000505245464958
      01000000000005000000504C494E450100000000000700000050484541444552
      0100000000000A00000044495354524942555349010000000000040000005454
      4431010000000000040000005454443201000000000004000000545444330100
      0000000004000000545444340100000000000400000044495631010000000000
      0400000044495632010000000000040000004449563301000000000004000000
      44495634010000000000040000004A414231010000000000040000004A414232
      010000000000040000004A414233010000000000040000004A41423401000000
      0000}
    Session = DMFrm.OS
    BeforeOpen = QTransaksiBeforeOpen
    Left = 216
    Top = 8
    object QTransaksiNAMA_TRANSAKSI: TStringField
      FieldName = 'NAMA_TRANSAKSI'
      Size = 50
    end
    object QTransaksiKD_TRANSAKSI: TStringField
      DisplayWidth = 3
      FieldName = 'KD_TRANSAKSI'
      Required = True
      Size = 3
    end
    object QTransaksiPREFIX: TStringField
      FieldName = 'PREFIX'
      Size = 5
    end
    object QTransaksiPLINE: TStringField
      FieldName = 'PLINE'
      Size = 1
    end
    object QTransaksiPHEADER: TStringField
      FieldName = 'PHEADER'
      Size = 1
    end
    object QTransaksiDISTRIBUSI: TStringField
      FieldName = 'DISTRIBUSI'
      Size = 80
    end
    object QTransaksiTTD1: TStringField
      FieldName = 'TTD1'
      Size = 30
    end
    object QTransaksiTTD2: TStringField
      FieldName = 'TTD2'
      Size = 30
    end
    object QTransaksiTTD3: TStringField
      FieldName = 'TTD3'
      Size = 30
    end
    object QTransaksiTTD4: TStringField
      FieldName = 'TTD4'
      Size = 30
    end
    object QTransaksiDIV1: TStringField
      FieldName = 'DIV1'
      Size = 30
    end
    object QTransaksiDIV2: TStringField
      FieldName = 'DIV2'
      Size = 30
    end
    object QTransaksiDIV3: TStringField
      FieldName = 'DIV3'
      Size = 30
    end
    object QTransaksiDIV4: TStringField
      FieldName = 'DIV4'
      Size = 30
    end
    object QTransaksiJAB1: TStringField
      FieldName = 'JAB1'
      Size = 30
    end
    object QTransaksiJAB2: TStringField
      FieldName = 'JAB2'
      Size = 30
    end
    object QTransaksiJAB3: TStringField
      FieldName = 'JAB3'
      Size = 30
    end
    object QTransaksiJAB4: TStringField
      FieldName = 'JAB4'
      Size = 30
    end
  end
  object ppDBQTransaksi: TppDBPipeline
    DataSource = dsQTransaksi
    OpenDataSource = False
    UserName = 'DBQTransaksi'
    Left = 344
    Top = 16
  end
  object dsQTransaksi: TwwDataSource
    DataSet = QTransaksi
    Left = 400
    Top = 8
  end
  object QSOP: TOracleDataSet
    SQL.Strings = (
      'select sinopsis from vsop'
      'where kd_transaksi='#39'108'#39)
    QBEDefinition.QBEFieldDefs = {04000000010000000800000053494E4F50534953010000000000}
    Session = DMFrm.OS
    Left = 288
    Top = 8
  end
  object dsQSOP: TwwDataSource
    DataSet = QSOP
    Left = 356
    Top = 64
  end
  object QDump: TOracleQuery
    SQL.Strings = (
      'begin'
      'commit;'
      'insert into ipisma_db3.vinfomutasigw'
      'select a.kd_item, '
      'a.kd_jns_item, '
      'a.nama_item, '
      'a.kd_satuan, '
      'a.satuan,    '
      
        '(select NVL(sum(qty_in-qty_out),0) from ipisma_db3.vkartu_stok_2' +
        '017'
      
        '  where kd_lokasi=:kd_jns_item and kd_item=a.kd_item and jns_lok' +
        'asi='#39'LOKASI'#39' and trunc(tgl)<trunc(:vsysdate))/:VRASIO AS AWAL1,'
      
        '(select NVL(sum(qty_in2-qty_out2),0) from ipisma_db3.vkartu_stok' +
        '_2017'
      
        '  where kd_lokasi=:kd_jns_item and kd_item=a.kd_item and jns_lok' +
        'asi='#39'LOKASI'#39' and trunc(tgl)<trunc(:vsysdate))/:VRASIO AS AWAL2,'
      '(select NVL(sum(qty_in),0) from ipisma_db3.vkartu_stok_2017'
      
        '  where kd_lokasi=:kd_jns_item and kd_item=a.kd_item and jns_lok' +
        'asi='#39'LOKASI'#39' and trunc(tgl)>=trunc(:vsysdate) and trunc(tgl)<tru' +
        'nc(:vsysdate2)+1-1/86400)/:VRASIO AS masuk1,'
      '(select NVL(sum(qty_in2),0) from ipisma_db3.vkartu_stok_2017'
      
        '  where kd_lokasi=:kd_jns_item and kd_item=a.kd_item and jns_lok' +
        'asi='#39'LOKASI'#39' and trunc(tgl)>=trunc(:vsysdate) and trunc(tgl)<tru' +
        'nc(:vsysdate2)+1-1/86400)/:VRASIO AS masuk2,'
      '0,0,0,'
      '(select NVL(sum(qty_out),0) from ipisma_db3.vkartu_stok_2017'
      
        '  where kd_lokasi=:kd_jns_item and kd_item=a.kd_item and jns_lok' +
        'asi='#39'LOKASI'#39' and trunc(tgl)>=trunc(:vsysdate) and trunc(tgl)<tru' +
        'nc(:vsysdate2)+1-1/86400)/:VRASIO AS keluar1,'
      '(select NVL(sum(qty_out2),0) from ipisma_db3.vkartu_stok_2017'
      
        '  where  kd_lokasi=:kd_jns_item and kd_item=a.kd_item and jns_lo' +
        'kasi='#39'LOKASI'#39' and trunc(tgl)>=trunc(:vsysdate) and trunc(tgl)<tr' +
        'unc(:vsysdate2)+1-1/86400)/:VRASIO AS keluar2,'
      '0,0,0,0,0, a.kd_sub_kel,'#39'ALL'#39','#39'ALL'#39
      'from ipisma_db3.vitemall a'
      'where a.kd_jns_item=:kd_jns_item;'
      '--order by a.kd_jns_item, a.nama_item;'
      'end;')
    Session = DMFrm.OS
    Variables.Data = {
      0300000004000000090000003A56535953444154450C00000007000000786F02
      01010101000000000A0000003A5653595344415445320C00000007000000786F
      021C010101000000000C0000003A4B445F4A4E535F4954454D05000000030000
      0033300000000000070000003A56524153494F04000000080000000000000000
      00F03F00000000}
    Left = 440
    Top = 120
  end
  object QDump2: TOracleQuery
    SQL.Strings = (
      'begin'
      'commit;'
      'insert into ipisma_db3.vinfomutasigw'
      'select a.kd_item, '
      'a.kd_jns_item, '
      'a.nama_item, '
      'a.kd_satuan, '
      'a.satuan,         '
      
        '(select NVL(sum(qty_in-qty_out),0) from ipisma_db3.vkartu_stok_2' +
        '017'
      
        '  where kd_warna=b.kd_warna and kd_lokasi=:kd_jns_item and kd_it' +
        'em=a.kd_item and jns_lokasi='#39'LOKASI'#39' and trunc(tgl)<trunc(:vsysd' +
        'ate))/:VRASIO AS AWAL1,'
      
        '(select NVL(sum(qty_in2-qty_out2),0) from ipisma_db3.vkartu_stok' +
        '_2017'
      
        '  where kd_warna=b.kd_warna and kd_lokasi=:kd_jns_item and kd_it' +
        'em=a.kd_item and jns_lokasi='#39'LOKASI'#39' and trunc(tgl)<trunc(:vsysd' +
        'ate))/:VRASIO AS AWAL2,'
      '(select NVL(sum(qty_in),0) from ipisma_db3.vkartu_stok_2017'
      
        '  where kd_warna=b.kd_warna and kd_lokasi=:kd_jns_item and kd_it' +
        'em=a.kd_item and jns_lokasi='#39'LOKASI'#39' and trunc(tgl)>=trunc(:vsys' +
        'date)and tgl<trunc(:vsysdate2)+1-1/86400)/:VRASIO AS masuk1,'
      '(select NVL(sum(qty_in2),0) from ipisma_db3.vkartu_stok_2017'
      
        '  where kd_warna=b.kd_warna and kd_lokasi=:kd_jns_item and kd_it' +
        'em=a.kd_item and jns_lokasi='#39'LOKASI'#39' and trunc(tgl)>=trunc(:vsys' +
        'date)and tgl<trunc(:vsysdate2)+1-1/86400)/:VRASIO AS masuk2,'
      '0,0,0,'
      '(select NVL(sum(qty_out),0) from ipisma_db3.vkartu_stok_2017'
      
        '  where kd_warna=b.kd_warna and kd_lokasi=:kd_jns_item and kd_it' +
        'em=a.kd_item and jns_lokasi='#39'LOKASI'#39' and trunc(tgl)>=trunc(:vsys' +
        'date)and tgl<trunc(:vsysdate2)+1-1/86400)/:VRASIO AS keluar1,'
      '(select NVL(sum(qty_out2),0) from ipisma_db3.vkartu_stok_2017'
      
        '  where kd_warna=b.kd_warna and kd_lokasi=:kd_jns_item and kd_it' +
        'em=a.kd_item and jns_lokasi='#39'LOKASI'#39' and trunc(tgl)>=trunc(:vsys' +
        'date)and tgl<trunc(:vsysdate2)+1-1/86400)/:VRASIO AS keluar2,'
      '0,0,0,0,0,'
      'a.kd_sub_kel,c.warna, '#39'ALL'#39
      
        'from ipisma_db3.vitemall a, ipisma_db3.vitem_warna_2017 b, ipism' +
        'a_db3.vi_warna_baru_2017 c'
      
        'where a.kd_item=b.kd_item and b.kd_warna=c.kd_warna and a.kd_jns' +
        '_item=:kd_jns_item;'
      '--order by a.kd_jns_item, a.nama_item;'
      'end;')
    Session = DMFrm.OS
    Variables.Data = {
      03000000040000000C0000003A4B445F4A4E535F4954454D0500000003000000
      33300000000000090000003A56535953444154450C00000007000000786B0601
      01010100000000070000003A56524153494F0300000004000000010000000000
      00000A0000003A5653595344415445320C00000007000000786B061E01010100
      000000}
    Left = 488
    Top = 120
  end
  object QDump3: TOracleQuery
    SQL.Strings = (
      'begin'
      'commit;'
      'insert into ipisma_db3.vinfomutasigw'
      'select a.kd_item, '
      'a.kd_jns_item, '
      'a.nama_item, '
      'a.kd_satuan, '
      'a.satuan,   '
      
        '(select ROUND(NVL(sum(qty_in-qty_out),0),2) from ipisma_db3.vkar' +
        'tu_stok_2017'
      
        '  where no_batch=b.no_batch and kd_warna=b.kd_warna and kd_lokas' +
        'i=:kd_jns_item and kd_item=a.kd_item and jns_lokasi='#39'LOKASI'#39' and' +
        ' tgl<trunc(:vsysdate))/:VRASIO AS AWAL1,'
      
        '(select ROUND(NVL(sum(qty_in2-qty_out2),0),2) from ipisma_db3.vk' +
        'artu_stok_2017'
      
        '  where no_batch=b.no_batch and kd_warna=b.kd_warna and kd_lokas' +
        'i=:kd_jns_item and kd_item=a.kd_item and jns_lokasi='#39'LOKASI'#39' and' +
        ' tgl<trunc(:vsysdate))/:VRASIO AS AWAL2,'
      
        '(select ROUND(NVL(sum(qty_in),0),2) from ipisma_db3.vkartu_stok_' +
        '2017'
      
        '  where no_batch=b.no_batch and kd_warna=b.kd_warna and kd_lokas' +
        'i=:kd_jns_item and kd_item=a.kd_item and jns_lokasi='#39'LOKASI'#39'  an' +
        'd tgl>=trunc(:vsysdate)and tgl<trunc(:vsysdate2)+1-1/86400)/:VRA' +
        'SIO AS masuk1,'
      
        '(select ROUND(NVL(sum(qty_in2),0),2) from ipisma_db3.vkartu_stok' +
        '_2017'
      
        '  where no_batch=b.no_batch and kd_warna=b.kd_warna and kd_lokas' +
        'i=:kd_jns_item and kd_item=a.kd_item and jns_lokasi='#39'LOKASI'#39' and' +
        ' tgl>=trunc(:vsysdate)and tgl<trunc(:vsysdate2)+1-1/86400)/:VRAS' +
        'IO AS masuk2,'
      '0,0,0,'
      
        '(select ROUND(NVL(sum(qty_out),0),2) from ipisma_db3.vkartu_stok' +
        '_2017'
      
        '  where no_batch=b.no_batch and kd_warna=b.kd_warna and kd_lokas' +
        'i=:kd_jns_item and kd_item=a.kd_item and jns_lokasi='#39'LOKASI'#39' and' +
        ' tgl>=trunc(:vsysdate)and tgl<trunc(:vsysdate2)+1-1/86400)/:VRAS' +
        'IO AS keluar1,'
      
        '(select ROUND(NVL(sum(qty_out2),0),2) from ipisma_db3.vkartu_sto' +
        'k_2017'
      
        '  where no_batch=b.no_batch and kd_warna=b.kd_warna and kd_lokas' +
        'i=:kd_jns_item and kd_item=a.kd_item and jns_lokasi='#39'LOKASI'#39' and' +
        ' tgl>=trunc(:vsysdate)and tgl<trunc(:vsysdate2)+1-1/86400)/:VRAS' +
        'IO AS keluar2,'
      '0,0,0,0,0,'
      'a.kd_sub_kel, c.warna, b.no_batch'
      
        'from ipisma_db3.vitemall a, ipisma_db3.vitem_warna_batch_2017 b,' +
        ' ipisma_db3.vi_warna_baru_2017 c'
      
        'where a.kd_item=b.kd_item and b.kd_warna=c.kd_warna and a.kd_jns' +
        '_item=:kd_jns_item'
      'order by a.kd_jns_item, a.nama_item;'
      'end;'
      '')
    Session = DMFrm.OS
    Variables.Data = {
      03000000040000000C0000003A4B445F4A4E535F4954454D0500000003000000
      33300000000000090000003A56535953444154450C00000007000000786B0601
      01010100000000070000003A56524153494F0300000004000000010000000000
      00000A0000003A5653595344415445320C00000007000000786B061E01010100
      000000}
    Left = 640
    Top = 120
  end
  object wwFilterDialog1: TwwFilterDialog
    DataSource = dsQBrowse
    SortBy = fdSortByFieldNo
    FilterMethod = fdByFilter
    DefaultMatchType = fdMatchStart
    DefaultFilterBy = fdSmartFilter
    FieldOperators.OrChar = 'or'
    FieldOperators.AndChar = 'and'
    FieldOperators.NullChar = 'null'
    Rounding.Epsilon = 0.000100000000000000
    Rounding.RoundingMethod = fdrmFixed
    FilterPropertyOptions.LikeWildcardChar = '%'
    FilterOptimization = fdNone
    QueryFormatDateMode = qfdMonthDayYear
    SQLTables = <>
    Left = 569
    Top = 164
  end
end
