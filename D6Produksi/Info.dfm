object InfoFrm: TInfoFrm
  Left = 165
  Top = 71
  Width = 913
  Height = 560
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'InfoFrm'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBText3: TDBText
    Left = 0
    Top = 65
    Width = 905
    Height = 40
    Align = alTop
    Color = clSkyBlue
    DataField = 'DISKRIPSI'
    DataSource = dsQLogInfo
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -13
    Font.Name = 'Arial Black'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    WordWrap = True
  end
  object LMDScrollText1: TLMDScrollText
    Left = 0
    Top = 105
    Width = 905
    Height = 24
    Direction = sdRightToLeft
    Lines.Strings = (
      
        'Semua user bisa memanfaatkan Catatan/ Memo ini untuk berkomunika' +
        'si antar Divisi....,  Silahkan mencoba !')
    Steps = 300
    Align = alTop
    Bevel.Mode = bmCustom
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
  end
  object PanelFilter: TPanel
    Left = 0
    Top = 0
    Width = 905
    Height = 65
    Align = alTop
    BevelOuter = bvNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object Label7: TLabel
      Left = 9
      Top = 7
      Width = 118
      Height = 13
      Caption = 'Tgl. Awal Remainder'
    end
    object Label8: TLabel
      Left = 128
      Top = 27
      Width = 24
      Height = 13
      Caption = 'S/D'
    end
    object Label13: TLabel
      Left = 160
      Top = 7
      Width = 56
      Height = 13
      Caption = 'Tgl. Akhir'
    end
    object Label1: TLabel
      Left = 560
      Top = 8
      Width = 266
      Height = 13
      Caption = 'Cari Info Barang (qty dan lokasi) dengan cepat'
    end
    object Label2: TLabel
      Left = 560
      Top = 43
      Width = 336
      Height = 11
      Caption = 
        'Ketikkan KODE, NAMA BARANG, NO PART, LOKASI disini (tidak harus ' +
        'lengkap)'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -9
      Font.Name = 'Small Fonts'
      Font.Style = []
      ParentFont = False
    end
    object BtnOk: TBitBtn
      Left = 280
      Top = 25
      Width = 57
      Height = 25
      Caption = '&Ok'
      TabOrder = 0
      OnClick = BtnOkClick
      NumGlyphs = 2
    end
    object vTglAwal: TwwDBDateTimePicker
      Left = 9
      Top = 25
      Width = 113
      Height = 19
      BorderStyle = bsNone
      CalendarAttributes.Font.Charset = DEFAULT_CHARSET
      CalendarAttributes.Font.Color = clWindowText
      CalendarAttributes.Font.Height = -11
      CalendarAttributes.Font.Name = 'MS Sans Serif'
      CalendarAttributes.Font.Style = []
      Date = 39083.000000000000000000
      Epoch = 1950
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ShowButton = True
      TabOrder = 1
      DisplayFormat = 'dd mmm yyyy'
    end
    object vTglAkhir: TwwDBDateTimePicker
      Left = 160
      Top = 25
      Width = 113
      Height = 19
      BorderStyle = bsNone
      CalendarAttributes.Font.Charset = DEFAULT_CHARSET
      CalendarAttributes.Font.Color = clWindowText
      CalendarAttributes.Font.Height = -11
      CalendarAttributes.Font.Name = 'MS Sans Serif'
      CalendarAttributes.Font.Style = []
      Date = 39083.000000000000000000
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
    end
    object TCari: TEdit
      Left = 560
      Top = 24
      Width = 265
      Height = 19
      CharCase = ecUpperCase
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 3
      OnKeyDown = TCariKeyDown
    end
    object BtnGo: TBitBtn
      Left = 832
      Top = 17
      Width = 57
      Height = 25
      Caption = '&Go'
      TabOrder = 4
      OnClick = BtnGoClick
      NumGlyphs = 2
    end
  end
  object LookDivisi: TwwDBLookupComboDlg
    Left = 328
    Top = 192
    Width = 217
    Height = 21
    GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
    GridColor = clWhite
    GridTitleAlignment = taLeftJustify
    Caption = 'Lookup'
    MaxWidth = 0
    MaxHeight = 209
    Selected.Strings = (
      'KD_DIV'#9'5'#9'KODE'#9#9
      'LNAMA_DIVISI'#9'40'#9'DIVISI'#9'F')
    DataField = 'KD_DIV2'
    DataSource = dsQLogInfo
    LookupTable = DMFrm.QDivisi
    LookupField = 'KD_DIV'
    TabOrder = 1
    AutoDropDown = False
    ShowButton = True
    AllowClearKey = False
    UseTFields = False
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 129
    Width = 905
    Height = 397
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 2
    object TabSheet1: TTabSheet
      Caption = 'Remainder'
      object wwDBGrid2: TwwDBGrid
        Left = 0
        Top = 0
        Width = 897
        Height = 369
        ControlType.Strings = (
          'KD_DIV2;CustomEdit;LookDivisi;F')
        Selected.Strings = (
          'NO_URUT'#9'9'#9'REGISTER'#9'F'
          'KD_DIV1'#9'5'#9'Kode'#9'T'#9'DARI'
          'LDARI'#9'12'#9'Divisi'#9'T'#9'DARI'
          'KD_DIV2'#9'5'#9'Kode'#9'F'#9'UNTUK'
          'LUNTUK'#9'12'#9'Divisi'#9'F'#9'UNTUK'
          'CC'#9'12'#9'CC'#9'F'
          'DISKRIPSI'#9'45'#9'DISKRIPSI/ ISI'#9'F'
          'TGL_REMAINDER'#9'12'#9'TANGGAL~REMAINDER'#9'F'
          'OPR_INSERT'#9'10'#9'Nama'#9'T'#9'OPERATOR'
          'TGL_INSERT'#9'16'#9'Jam'#9'T'#9'OPERATOR')
        IniAttributes.Enabled = True
        IniAttributes.Delimiter = ';;'
        IniAttributes.CheckNewFields = True
        ExportOptions.ExportType = wwgetHTML
        ExportOptions.Options = [esoShowHeader, esoShowFooter, esoShowTitle, esoDblQuoteFields, esoBestColFit, esoShowRecordNo, esoShowAlternating]
        TitleColor = clBackground
        FixedCols = 1
        ShowHorzScrollBar = True
        Align = alClient
        BorderStyle = bsNone
        Color = clGray
        Ctl3D = False
        DataSource = dsQLogInfo
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial Narrow'
        Font.Style = []
        KeyOptions = [dgAllowInsert]
        Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgPerfectRowFit, dgShowFooter, dgNoLimitColSize, dgTrailingEllipsis, dgRowResize, dgFixedProportionalResize]
        ParentCtl3D = False
        ParentFont = False
        RowHeightPercent = 400
        TabOrder = 0
        TitleAlignment = taCenter
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWhite
        TitleFont.Height = -11
        TitleFont.Name = 'Arial Narrow'
        TitleFont.Style = []
        TitleLines = 2
        TitleButtons = True
        UseTFields = False
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Statistik Transaksi'
      ImageIndex = 1
      OnShow = TabSheet2Show
      object wwDBGrid1: TwwDBGrid
        Left = 0
        Top = 41
        Width = 897
        Height = 328
        Selected.Strings = (
          'NAMA_TRANSAKSI'#9'50'#9'NAMA TRANSAKSI'#9'F'
          'KD_TRANSAKSI'#9'3'#9'KODE'#9'F'
          'AWAL_BULAN'#9'10'#9'AWAL~BULAN'#9'F'
          'SD_KEMARIN'#9'10'#9'SD~KEMARIN'#9'F'
          'HARI_INI'#9'10'#9'HARI INI'#9'F'
          'TOTAL'#9'10'#9'TOTAL')
        IniAttributes.Delimiter = ';;'
        TitleColor = 2631761
        FixedCols = 0
        ShowHorzScrollBar = True
        Align = alClient
        BorderStyle = bsNone
        Color = 2631761
        Ctl3D = False
        DataSource = DMFrm.DSQStatistikTransaksi
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clSilver
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        KeyOptions = []
        Options = [dgEditing, dgTitles, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgPerfectRowFit]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        TitleAlignment = taCenter
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clSilver
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        TitleLines = 3
        TitleButtons = False
        UseTFields = False
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 897
        Height = 41
        Align = alTop
        Color = 2631761
        TabOrder = 1
        object LRefresh: TLabel
          Left = 8
          Top = 17
          Width = 55
          Height = 16
          Cursor = crHandPoint
          Caption = 'Refresh'
          Color = 2631761
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clYellow
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold, fsUnderline]
          ParentColor = False
          ParentFont = False
          OnClick = LRefreshClick
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Hasil Pencarian Barang'
      ImageIndex = 2
      object wwDBGrid3: TwwDBGrid
        Left = 0
        Top = 0
        Width = 897
        Height = 369
        ControlType.Strings = (
          'ISFIXED;CheckBox;1;0')
        Selected.Strings = (
          'NAMA_ITEM'#9'69'#9'Nama'#9'F'#9'BARANG'
          'KD_ITEM'#9'6'#9'Kode'#9'F'#9'BARANG'
          'NO_PART'#9'8'#9'Part'#9'F'#9'BARANG'
          'SATUAN'#9'9'#9'Satuan'#9'F'#9'BARANG'
          'LOKASI'#9'19'#9'LOKASI'#9'F'
          'QTY'#9'10'#9'QTY'#9'F')
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
        Color = clGray
        Ctl3D = False
        DataSource = dsQBrowse
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial Black'
        Font.Style = []
        KeyOptions = []
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgPerfectRowFit, dgShowFooter, dgNoLimitColSize, dgTrailingEllipsis, dgRowResize, dgFixedProportionalResize]
        ParentCtl3D = False
        ParentFont = False
        RowHeightPercent = 200
        TabOrder = 0
        TitleAlignment = taCenter
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWhite
        TitleFont.Height = -11
        TitleFont.Name = 'Arial Black'
        TitleFont.Style = []
        TitleLines = 3
        TitleButtons = True
        UseTFields = False
        OnTitleButtonClick = wwDBGrid3TitleButtonClick
      end
    end
  end
  object QLogInfo: TOracleDataSet
    SQL.Strings = (
      'select a.*, a.rowid from ipisma_db3.log_info a'
      
        'where (a.kd_div1 like rtrim(:kd_div,'#39'0'#39')||'#39'%'#39' or kd_div2 like rt' +
        'rim(:kd_div,'#39'0'#39')||'#39'%'#39') and'
      '(a.tgl_remainder>=:awal and a.tgl_remainder<=:akhir)'
      'order by a.tgl_remainder, a.no_urut desc')
    Variables.Data = {
      0300000003000000070000003A4B445F44495605000000040000003131300000
      000000050000003A4157414C0C00000007000000786401010101010000000006
      0000003A414B4849520C00000007000000786E010101010100000000}
    SequenceField.Field = 'NO_URUT'
    SequenceField.Sequence = 'ipisma_db3.NO_REGISTER'
    QBEDefinition.QBEFieldDefs = {
      0400000008000000070000004E4F5F55525554010000000000070000004B445F
      44495631010000000000070000004B445F444956320100000000000200000043
      43010000000000090000004449534B52495053490100000000000D0000005447
      4C5F52454D41494E4445520100000000000A00000054474C5F494E5345525401
      00000000000A0000004F50525F494E53455254010000000000}
    QueryAllRecords = False
    RefreshOptions = [roAfterInsert]
    BeforeQuery = QLogInfoBeforeQuery
    Session = DMFrm.OS
    BeforePost = QLogInfoBeforePost
    OnNewRecord = QLogInfoNewRecord
    Left = 376
    Top = 16
    object QLogInfoNO_URUT: TFloatField
      FieldName = 'NO_URUT'
      Required = True
    end
    object QLogInfoKD_DIV1: TStringField
      FieldName = 'KD_DIV1'
      Required = True
      Size = 5
    end
    object QLogInfoKD_DIV2: TStringField
      FieldName = 'KD_DIV2'
      Required = True
      Size = 5
    end
    object QLogInfoCC: TStringField
      FieldName = 'CC'
      Required = True
      Size = 50
    end
    object QLogInfoDISKRIPSI: TStringField
      FieldName = 'DISKRIPSI'
      Required = True
      Size = 255
    end
    object QLogInfoTGL_REMAINDER: TDateTimeField
      FieldName = 'TGL_REMAINDER'
      Required = True
    end
    object QLogInfoTGL_INSERT: TDateTimeField
      FieldName = 'TGL_INSERT'
    end
    object QLogInfoOPR_INSERT: TStringField
      FieldName = 'OPR_INSERT'
      Size = 30
    end
    object QLogInfoLDARI: TStringField
      FieldKind = fkLookup
      FieldName = 'LDARI'
      LookupDataSet = DMFrm.QDivisi
      LookupKeyFields = 'KD_DIV'
      LookupResultField = 'NAMA_DIVISI'
      KeyFields = 'KD_DIV1'
      Size = 50
      Lookup = True
    end
    object QLogInfoLUNTUK: TStringField
      FieldKind = fkLookup
      FieldName = 'LUNTUK'
      LookupDataSet = DMFrm.QDivisi
      LookupKeyFields = 'KD_DIV'
      LookupResultField = 'NAMA_DIVISI'
      KeyFields = 'KD_DIV2'
      Size = 50
      Lookup = True
    end
  end
  object dsQLogInfo: TwwDataSource
    DataSet = QLogInfo
    Left = 376
    Top = 56
  end
  object QBrowse: TOracleDataSet
    SQL.Strings = (
      'select * from ipisma_db3.vstokall_lokasi2'
      ':vfilter'
      ':vorder')
    Variables.Data = {
      0300000002000000070000003A564F5244455201000000000000000000000008
      0000003A5646494C544552010000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      04000000060000000600000053415455414E010000000000070000004B445F49
      54454D010000000000090000004E414D415F4954454D01000000000006000000
      4C4F4B41534901000000000003000000515459010000000000070000004E4F5F
      50415254010000000000}
    ReadOnly = True
    QueryAllRecords = False
    Session = DMFrm.OS
    Left = 692
    Top = 72
    object QBrowseKD_ITEM: TStringField
      FieldName = 'KD_ITEM'
      Required = True
      Size = 50
    end
    object QBrowseNO_PART: TStringField
      FieldName = 'NO_PART'
      Size = 50
    end
    object QBrowseNAMA_ITEM: TStringField
      FieldName = 'NAMA_ITEM'
      Size = 255
    end
    object QBrowseSATUAN: TStringField
      FieldName = 'SATUAN'
      Size = 12
    end
    object QBrowseLOKASI: TStringField
      FieldName = 'LOKASI'
      Size = 23
    end
    object QBrowseQTY: TFloatField
      Alignment = taCenter
      FieldName = 'QTY'
      DisplayFormat = '#,##0.#######;(#,##0.#######)'
    end
  end
  object dsQBrowse: TwwDataSource
    DataSet = QBrowse
    Left = 720
    Top = 72
  end
end
