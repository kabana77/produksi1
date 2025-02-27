object InfoMutasiGWFrm: TInfoMutasiGWFrm
  Left = 184
  Top = 116
  Width = 1100
  Height = 606
  Caption = 'InfoMutasiGW 1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
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
    Width = 1084
    Height = 568
    Align = alClient
    BevelOuter = bvNone
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 0
    object Label1: TLabel
      Left = 0
      Top = 555
      Width = 1084
      Height = 13
      Align = alBottom
      Color = clSkyBlue
      ParentColor = False
    end
    object DBText3: TDBText
      Left = 0
      Top = 49
      Width = 1084
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
    object PanelHeader: TPanel
      Left = 0
      Top = 0
      Width = 1084
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
    object PanelFooter2: TPanel
      Left = 0
      Top = 514
      Width = 1084
      Height = 41
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 1
      DesignSize = (
        1084
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
        Left = 314
        Top = 8
        Width = 75
        Height = 25
        Anchors = [akTop, akRight]
        Caption = '&Export'
        TabOrder = 1
        OnClick = BtnExportClick
        NumGlyphs = 2
      end
      object BtnPrintBrowse: TBitBtn
        Left = 898
        Top = 8
        Width = 75
        Height = 25
        Anchors = [akTop, akRight]
        Caption = '&Print'
        TabOrder = 2
        Visible = False
        OnClick = BtnPrintBrowseClick
        NumGlyphs = 2
      end
      object BtnDesign2: TBitBtn
        Left = 233
        Top = 8
        Width = 75
        Height = 25
        Caption = 'Design'
        TabOrder = 3
        OnClick = BtnDesign2Click
        NumGlyphs = 2
      end
      object BtnClose1: TBitBtn
        Left = 999
        Top = 8
        Width = 75
        Height = 25
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
        Caption = '&Kartu Stok'
        TabOrder = 5
        OnClick = BitBtn1Click
      end
    end
    object PageControl1: TPageControl
      Left = 0
      Top = 76
      Width = 1084
      Height = 438
      ActivePage = TabSheet1
      Align = alClient
      TabOrder = 2
      object TabSheet1: TTabSheet
        Caption = 'Mutasi Per Konstruksi'
        object LabelBanner: TLabel
          Left = 0
          Top = 93
          Width = 1076
          Height = 13
          Align = alTop
          Color = clSkyBlue
          ParentColor = False
        end
        object PanelBrowse: TPanel
          Left = 0
          Top = 106
          Width = 1076
          Height = 304
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 0
          object wwDBGridNew: TwwDBGrid
            Left = 0
            Top = 0
            Width = 1076
            Height = 304
            ControlType.Strings = (
              'ISFIXED;CheckBox;1;0')
            Selected.Strings = (
              'KD_ITEM'#9'10'#9'KODE'#9'F'
              'JNS_BENANG'#9'15'#9'JNS BENANG'#9'F'
              'DISKRIPSI'#9'20'#9'NAMA ITEM + PATAL'#9'F'
              'AWAL'#9'10'#9'AWAL'#9'F'
              'QTY01'#9'10'#9'Pencelupan'#9'F'#9'PEMASUKAN'
              'QTY02'#9'10'#9'GD Grey'#9'F'#9'PEMASUKAN'
              'QTY03'#9'10'#9'Retur~Produksi'#9'F'#9'PEMASUKAN'
              'QTY04'#9'10'#9'Jasa Kelos'#9'F'#9'PEMASUKAN'
              'QTY05'#9'10'#9'Retur Mitra'#9'F'#9'PEMASUKAN'
              'QTY06'#9'10'#9'Koreksi'#9'F'#9'PEMASUKAN'
              'QTY11'#9'10'#9'Persiapan'#9'F'#9'PENGELUARAN'
              'QTY12'#9'10'#9'Tenun'#9'F'#9'PENGELUARAN'
              'QTY13'#9'10'#9'Jahit dan~Finishing'#9'F'#9'PENGELUARAN'
              'QTY14'#9'10'#9'Retur Celup'#9'F'#9'PENGELUARAN'
              'QTY15'#9'10'#9'Pengganti~Retur'#9'F'#9'PENGELUARAN'
              'QTY17'#9'10'#9'Jasa Kelos'#9'F'#9'PENGELUARAN'
              'QTY18'#9'10'#9'Kemitraan'#9'F'#9'PENGELUARAN'
              'QTY16'#9'10'#9'Koreksi'#9'F'#9'PENGELUARAN'
              'QTY19'#9'10'#9'Doubling'#9'F'#9'PENGELUARAN'
              'AKHIR'#9'12'#9'AKHIR'#9'F')
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
            DataSource = dsQBrowseNew
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            KeyOptions = []
            Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgPerfectRowFit, dgShowFooter, dgNoLimitColSize, dgTrailingEllipsis, dgRowResize, dgFixedProportionalResize]
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 1
            TitleAlignment = taCenter
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clWhite
            TitleFont.Height = -11
            TitleFont.Name = 'Arial'
            TitleFont.Style = []
            TitleLines = 5
            TitleButtons = True
            UseTFields = False
            OnTitleButtonClick = wwDBGridNewTitleButtonClick
          end
          object wwDBGrid2: TwwDBGrid
            Left = 0
            Top = 0
            Width = 1076
            Height = 304
            ControlType.Strings = (
              'ISFIXED;CheckBox;1;0')
            Selected.Strings = (
              'KD_ITEM'#9'9'#9'KODE'#9'F'
              'KD_SUB_KEL'#9'12'#9'JENIS BENANG'#9'F'
              'NAMA_ITEM'#9'28'#9'KETERANGAN ITEM PATAL'#9'F'
              'WARNA'#9'9'#9'WARNA'#9'F'
              'AWAL1'#9'10'#9'AWAL'#9'F'
              'MASUK1'#9'10'#9'Pencelupan'#9'F'#9'MASUK'
              'MASUK2'#9'10'#9'Gudang~Benang Grey'#9'F'#9'MASUK'
              'MASUK3'#9'10'#9'Retur~dari Produksi'#9'F'#9'MASUK'
              'MASUK6'#9'10'#9'Jasa Kelos'#9'F'#9'MASUK'
              'MASUK7'#9'10'#9'Retur~dari Mitra'#9'F'#9'MASUK'
              'MASUK4'#9'10'#9'Koreksi'#9'F'#9'MASUK'
              'KELUAR1'#9'10'#9'Persiapan'#9'F'#9'KELUAR'
              'KELUAR2'#9'10'#9'Tenun'#9'F'#9'KELUAR'
              'KELUAR3'#9'10'#9'Jahit dan~Finishing'#9'F'#9'KELUAR'
              'KELUAR4'#9'10'#9'Retur~ke Pencelupan'#9'F'#9'KELUAR'
              'KELUAR5'#9'10'#9'Pengganti~Retur Produksi'#9'F'#9'KELUAR'
              'KELUAR9'#9'10'#9'Jasa Kelos'#9'F'#9'KELUAR'
              'KELUAR8'#9'10'#9'Kemitraan'#9'F'#9'KELUAR'
              'KELUAR6'#9'10'#9'Koreksi'#9'F'#9'KELUAR'
              'AKHIR'#9'10'#9'AKHIR'#9'F'
              'KELUAR7'#9'10'#9'Kirim'#9'F'#9'DOUBLING'
              'MASUK5'#9'10'#9'Terima'#9'F'#9'DOUBLING'
              'SISADOUBLING'#9'10'#9'Sisa'#9'F'#9'DOUBLING'
              'FISIK'#9'10'#9'FISIK'#9'F')
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
        object PanelFilter: TPanel
          Left = 0
          Top = 0
          Width = 1076
          Height = 93
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 1
          DesignSize = (
            1076
            93)
          object Bevel1: TBevel
            Left = 271
            Top = 16
            Width = 217
            Height = 41
          end
          object Label5: TLabel
            Left = 1018
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
            Left = 341
            Top = 21
            Width = 89
            Height = 30
            Cursor = crHandPoint
            GroupIndex = 1
            Caption = 'Mode &Cari'
            NumGlyphs = 2
            OnClick = BtnFindClick
          end
          object BtnOk2: TSpeedButton
            Left = 431
            Top = 21
            Width = 53
            Height = 30
            Cursor = crHandPoint
            GroupIndex = 1
            Caption = '&Oke'
            NumGlyphs = 2
            OnClick = BtnOk2Click
          end
          object Label3: TLabel
            Left = 8
            Top = 12
            Width = 44
            Height = 13
            Caption = 'Tgl. Awal'
          end
          object Label4: TLabel
            Left = 136
            Top = 12
            Width = 45
            Height = 13
            Caption = 'Tgl. Akhir'
          end
          object Label2: TLabel
            Left = 8
            Top = 56
            Width = 67
            Height = 13
            Caption = 'Urut menurut :'
          end
          object BtnOk: TBitBtn
            Left = 275
            Top = 22
            Width = 65
            Height = 29
            Cursor = crHandPoint
            Caption = '&Refresh'
            TabOrder = 0
            OnClick = BtnOkClick
            NumGlyphs = 2
          end
          object wwDBSpinLine2: TwwDBSpinEdit
            Left = 1020
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
            Top = 27
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
            Top = 27
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
            OnChange = vTglAkhirChange
          end
          object ComboBox1: TComboBox
            Left = 512
            Top = 35
            Width = 129
            Height = 21
            CharCase = ecUpperCase
            Ctl3D = False
            ItemHeight = 13
            ItemIndex = 0
            ParentCtl3D = False
            TabOrder = 4
            Text = 'PER KONSTRUKSI'
            Visible = False
            Items.Strings = (
              'PER KONSTRUKSI'
              'PER WARNA')
          end
          object CheckBox1: TCheckBox
            Left = 512
            Top = 14
            Width = 137
            Height = 17
            Caption = 'Yang ada stoknya saja'
            TabOrder = 5
            OnClick = CheckBox1Click
          end
          object Edit1: TEdit
            Left = 8
            Top = 72
            Width = 401
            Height = 19
            TabOrder = 6
            Text = 'NAMA_ITEM, KD_ITEM'
          end
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Mutasi Per Warna'
        ImageIndex = 1
        object LabelBanner2: TLabel
          Left = 0
          Top = 73
          Width = 1076
          Height = 13
          Align = alTop
          Color = clSkyBlue
          ParentColor = False
        end
        object Panel1: TPanel
          Left = 0
          Top = 0
          Width = 1076
          Height = 73
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          DesignSize = (
            1076
            73)
          object Bevel2: TBevel
            Left = 334
            Top = 17
            Width = 217
            Height = 41
          end
          object Label7: TLabel
            Left = 1018
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
            OnClick = Label7Click
          end
          object SpeedButton1: TSpeedButton
            Left = 404
            Top = 22
            Width = 89
            Height = 30
            Cursor = crHandPoint
            GroupIndex = 1
            Caption = 'Mode &Cari'
            NumGlyphs = 2
            OnClick = SpeedButton1Click
          end
          object SpeedButton2: TSpeedButton
            Left = 494
            Top = 22
            Width = 53
            Height = 30
            Cursor = crHandPoint
            GroupIndex = 1
            Caption = '&Oke'
            NumGlyphs = 2
            OnClick = SpeedButton2Click
          end
          object Label8: TLabel
            Left = 8
            Top = 12
            Width = 44
            Height = 13
            Caption = 'Tgl. Awal'
          end
          object Label9: TLabel
            Left = 136
            Top = 12
            Width = 45
            Height = 13
            Caption = 'Tgl. Akhir'
          end
          object BitBtn2: TBitBtn
            Left = 338
            Top = 23
            Width = 65
            Height = 29
            Cursor = crHandPoint
            Caption = '&Refresh'
            TabOrder = 0
            OnClick = BitBtn2Click
            NumGlyphs = 2
          end
          object wwDBSpinEdit1: TwwDBSpinEdit
            Left = 1020
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
            OnChange = wwDBSpinEdit1Change
          end
          object vTglAwal2: TwwDBDateTimePicker
            Left = 8
            Top = 27
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
            OnChange = vTglAwal2Change
          end
          object vTglAkhir2: TwwDBDateTimePicker
            Left = 136
            Top = 27
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
            OnChange = vTglAkhir2Change
          end
          object CheckBox2: TCheckBox
            Left = 560
            Top = 40
            Width = 137
            Height = 17
            Caption = 'Tampilkan riwayat mutasi'
            TabOrder = 4
            OnClick = CheckBox2Click
          end
          object CheckBox3: TCheckBox
            Left = 560
            Top = 18
            Width = 137
            Height = 17
            Caption = 'Yang ada stoknya saja'
            Checked = True
            State = cbChecked
            TabOrder = 5
            OnClick = CheckBox3Click
          end
        end
        object Panel2: TPanel
          Left = 0
          Top = 86
          Width = 1076
          Height = 324
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 1
          object wwDBGrid1: TwwDBGrid
            Left = 0
            Top = 0
            Width = 560
            Height = 324
            ControlType.Strings = (
              'ISFIXED;CheckBox;1;0')
            Selected.Strings = (
              'NO_BENANG'#9'30'#9'KONSTRUKSI'#9'F'
              'WARNA'#9'20'#9'WARNA'#9'F'
              'AWAL'#9'20'#9'AWAL'#9'F'
              'QTY_IN'#9'20'#9'MASUK'#9'F'
              'QTY_OUT'#9'20'#9'KELUAR'#9'F'
              'CQTY_AKHIR'#9'20'#9'AKHIR'#9'F')
            IniAttributes.Enabled = True
            IniAttributes.Delimiter = ';;'
            IniAttributes.CheckNewFields = True
            ExportOptions.ExportType = wwgetHTML
            ExportOptions.Options = [esoShowHeader, esoShowFooter, esoShowTitle, esoDblQuoteFields, esoBestColFit, esoShowRecordNo, esoShowAlternating]
            TitleColor = clBackground
            OnRowChanged = wwDBGrid1RowChanged
            FixedCols = 0
            ShowHorzScrollBar = True
            EditControlOptions = [ecoSearchOwnerForm, ecoDisableDateTimePicker]
            Align = alClient
            BorderStyle = bsNone
            Ctl3D = False
            DataSource = dsQBrowse2
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
            TitleLines = 2
            TitleButtons = True
            UseTFields = False
            OnTitleButtonClick = wwDBGrid1TitleButtonClick
          end
          object PanelRiwayat: TPanel
            Left = 560
            Top = 0
            Width = 516
            Height = 324
            Align = alRight
            BevelOuter = bvNone
            Caption = 'PanelRiwayat'
            TabOrder = 1
            Visible = False
            object PanelTop: TPanel
              Left = 0
              Top = 0
              Width = 516
              Height = 49
              Align = alTop
              BevelOuter = bvNone
              Caption = 'PanelTop'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
            end
            object wwDBGrid3: TwwDBGrid
              Left = 0
              Top = 49
              Width = 516
              Height = 275
              ControlType.Strings = (
                'ISFIXED;CheckBox;1;0')
              Selected.Strings = (
                'TGL'#9'15'#9'WAKTU'#9'F'
                'NO_NOTA'#9'15'#9'NO NOTA'#9'F'
                'QTY_IN'#9'10'#9'MASUK'#9'F'
                'QTY_OUT'#9'10'#9'KELUAR'#9'F'
                'KETERANGAN'#9'20'#9'KETERANGAN'#9'F')
              IniAttributes.Enabled = True
              IniAttributes.Delimiter = ';;'
              IniAttributes.CheckNewFields = True
              ExportOptions.ExportType = wwgetHTML
              ExportOptions.Options = [esoShowHeader, esoShowFooter, esoShowTitle, esoDblQuoteFields, esoBestColFit, esoShowRecordNo, esoShowAlternating]
              TitleColor = clNavy
              FixedCols = 0
              ShowHorzScrollBar = True
              EditControlOptions = [ecoSearchOwnerForm, ecoDisableDateTimePicker]
              Align = alClient
              BorderStyle = bsNone
              Ctl3D = False
              DataSource = dsQBrowseDetail
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              KeyOptions = []
              Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgPerfectRowFit, dgShowFooter, dgNoLimitColSize, dgTrailingEllipsis, dgRowResize, dgFixedProportionalResize]
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 1
              TitleAlignment = taCenter
              TitleFont.Charset = ANSI_CHARSET
              TitleFont.Color = clWhite
              TitleFont.Height = -11
              TitleFont.Name = 'Arial'
              TitleFont.Style = []
              TitleLines = 2
              TitleButtons = True
              UseTFields = False
            end
          end
        end
      end
    end
  end
  object QBrowse: TOracleDataSet
    SQL.Strings = (
      'select * from ipisma_db3.vinfomutasigw1_detail'
      ':vorder')
    Variables.Data = {0300000001000000070000003A564F52444552010000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000001A0000000600000053415455414E010000000000070000004B445F49
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
      004D4153554B35010000000000070000004B454C554152370100000000000700
      00004B454C55415238010000000000060000004D4153554B3601000000000007
      0000004B454C55415239010000000000060000004D4153554B37010000000000}
    ReadOnly = True
    QueryAllRecords = False
    Session = DMFrm.OS
    AfterScroll = QBrowseAfterScroll
    OnCalcFields = QBrowseCalcFields
    OnFilterRecord = QBrowseFilterRecord
    Left = 220
    Top = 40
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
    object QBrowseMASUK3: TFloatField
      FieldName = 'MASUK3'
      DisplayFormat = '#,##0.##;(#,##0.##);-'
    end
    object QBrowseMASUK4: TFloatField
      FieldName = 'MASUK4'
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
    object QBrowseKELUAR3: TFloatField
      FieldName = 'KELUAR3'
      DisplayFormat = '#,##0.##;(#,##0.##);-'
    end
    object QBrowseKELUAR4: TFloatField
      FieldName = 'KELUAR4'
      DisplayFormat = '#,##0.##;(#,##0.##);-'
    end
    object QBrowseKELUAR5: TFloatField
      FieldName = 'KELUAR5'
      DisplayFormat = '#,##0.##;(#,##0.##);-'
    end
    object QBrowseKELUAR6: TFloatField
      FieldName = 'KELUAR6'
      DisplayFormat = '#,##0.##;(#,##0.##);-'
    end
    object QBrowseAKHIR: TFloatField
      FieldKind = fkCalculated
      FieldName = 'AKHIR'
      DisplayFormat = '#,##0.##;(#,##0.##);-'
      Calculated = True
    end
    object QBrowseMASUK5: TFloatField
      FieldName = 'MASUK5'
      DisplayFormat = '#,##0.##;(#,##0.##);-'
    end
    object QBrowseKELUAR7: TFloatField
      FieldName = 'KELUAR7'
      DisplayFormat = '#,##0.##;(#,##0.##);-'
    end
    object QBrowseSISADOUBLING: TFloatField
      FieldKind = fkCalculated
      FieldName = 'SISADOUBLING'
      DisplayFormat = '#,##0.##;(#,##0.##);-'
      Calculated = True
    end
    object QBrowseFISIK: TFloatField
      FieldKind = fkCalculated
      FieldName = 'FISIK'
      DisplayFormat = '#,##0.##;(#,##0.##);-'
      Calculated = True
    end
    object QBrowseKELUAR8: TFloatField
      FieldName = 'KELUAR8'
      DisplayFormat = '#,##0.##;(#,##0.##);-'
    end
    object QBrowseMASUK6: TFloatField
      FieldName = 'MASUK6'
      DisplayFormat = '#,##0.##;(#,##0.##);-'
    end
    object QBrowseKELUAR9: TFloatField
      FieldName = 'KELUAR9'
      DisplayFormat = '#,##0.##;(#,##0.##);-'
    end
    object QBrowseWARNA: TStringField
      FieldName = 'WARNA'
      Size = 50
    end
    object QBrowseNO_BATCH: TStringField
      FieldName = 'NO_BATCH'
      Size = 50
    end
    object QBrowseMASUK7: TFloatField
      FieldName = 'MASUK7'
      DisplayFormat = '#,##0.##;(#,##0.##);-'
    end
  end
  object dsQBrowse: TwwDataSource
    DataSet = QBrowse
    Left = 240
    Top = 8
  end
  object ppReportBrowse: TppReport
    AutoStop = False
    DataPipeline = ppDBQBrowseDetail
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'Custom'
    PrinterSetup.PrinterName = 'Fax'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 209974
    PrinterSetup.mmPaperWidth = 297039
    PrinterSetup.PaperSize = 256
    Template.FileName = 'D:\_Proyek\iPismaTex\Aplikasi\Report\TransaksiOrg.rtm'
    Units = utPrinterPixels
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Default'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.FontEncoding = feAnsi
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 968
    Top = 10
    Version = '12.03'
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
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Transaksi Org'
        Ellipsis = False
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
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '====================================='
        Ellipsis = False
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
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '01 Nop 2006 s/d 30 Nop 2006'
        Ellipsis = False
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
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'PERUSAHAAN'
        DataPipeline = ppDBPerusahaan
        Ellipsis = False
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
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'ALAMAT1'
        DataPipeline = ppDBPerusahaan
        Ellipsis = False
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
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'TELEPON1'
        DataPipeline = ppDBPerusahaan
        Ellipsis = False
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
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'SYSTEM, 17 Jan 2007 16:35'
        Ellipsis = False
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
        Gradient.EndColor = clWhite
        Gradient.StartColor = clWhite
        Gradient.Style = gsNone
        ParentHeight = True
        mmHeight = 9260
        mmLeft = 256646
        mmTop = 0
        mmWidth = 27517
        BandType = 0
      end
      object ppShape7: TppShape
        UserName = 'Shape7'
        Gradient.EndColor = clWhite
        Gradient.StartColor = clWhite
        Gradient.Style = gsNone
        ParentHeight = True
        mmHeight = 9260
        mmLeft = 239713
        mmTop = 0
        mmWidth = 17198
        BandType = 0
      end
      object ppShape6: TppShape
        UserName = 'Shape6'
        Gradient.EndColor = clWhite
        Gradient.StartColor = clWhite
        Gradient.Style = gsNone
        ParentHeight = True
        mmHeight = 9260
        mmLeft = 223838
        mmTop = 0
        mmWidth = 16140
        BandType = 0
      end
      object ppShape8: TppShape
        UserName = 'Shape8'
        Gradient.EndColor = clWhite
        Gradient.StartColor = clWhite
        Gradient.Style = gsNone
        ParentHeight = True
        mmHeight = 9260
        mmLeft = 102659
        mmTop = 0
        mmWidth = 31221
        BandType = 0
      end
      object ppShape11: TppShape
        UserName = 'Shape101'
        Gradient.EndColor = clWhite
        Gradient.StartColor = clWhite
        Gradient.Style = gsNone
        ParentHeight = True
        mmHeight = 9260
        mmLeft = 182298
        mmTop = 0
        mmWidth = 41804
        BandType = 0
      end
      object ppShape10: TppShape
        UserName = 'Shape10'
        Gradient.EndColor = clWhite
        Gradient.StartColor = clWhite
        Gradient.Style = gsNone
        ParentHeight = True
        mmHeight = 9260
        mmLeft = 149225
        mmTop = 0
        mmWidth = 33338
        BandType = 0
      end
      object ppShape9: TppShape
        UserName = 'Shape9'
        Gradient.EndColor = clWhite
        Gradient.StartColor = clWhite
        Gradient.Style = gsNone
        ParentHeight = True
        mmHeight = 9260
        mmLeft = 133350
        mmTop = 0
        mmWidth = 16404
        BandType = 0
      end
      object ppShape5: TppShape
        UserName = 'Shape5'
        Gradient.EndColor = clWhite
        Gradient.StartColor = clWhite
        Gradient.Style = gsNone
        ParentHeight = True
        mmHeight = 9260
        mmLeft = 88900
        mmTop = 0
        mmWidth = 14023
        BandType = 0
      end
      object ppShape4: TppShape
        UserName = 'Shape4'
        Gradient.EndColor = clWhite
        Gradient.StartColor = clWhite
        Gradient.Style = gsNone
        ParentHeight = True
        mmHeight = 9260
        mmLeft = 79375
        mmTop = 0
        mmWidth = 9790
        BandType = 0
      end
      object ppShape3: TppShape
        UserName = 'Shape3'
        Gradient.EndColor = clWhite
        Gradient.StartColor = clWhite
        Gradient.Style = gsNone
        ParentHeight = True
        mmHeight = 9260
        mmLeft = 23019
        mmTop = 0
        mmWidth = 56621
        BandType = 0
      end
      object ppShape2: TppShape
        UserName = 'Shape2'
        Gradient.EndColor = clWhite
        Gradient.StartColor = clWhite
        Gradient.Style = gsNone
        ParentHeight = True
        mmHeight = 9260
        mmLeft = 9525
        mmTop = 0
        mmWidth = 13758
        BandType = 0
      end
      object ppShape1: TppShape
        UserName = 'Shape1'
        Gradient.EndColor = clWhite
        Gradient.StartColor = clWhite
        Gradient.Style = gsNone
        ParentHeight = True
        mmHeight = 9260
        mmLeft = 0
        mmTop = 0
        mmWidth = 10319
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'NO'
        Ellipsis = False
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
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'AWAL'
        Ellipsis = False
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
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'KODE'
        Ellipsis = False
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
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'NAMA BARANG'
        Ellipsis = False
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
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Retur'
        Ellipsis = False
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
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'PP'
        Ellipsis = False
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
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'PO'
        Ellipsis = False
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
        HyperlinkColor = clBlue
        Anchors = [atLeft, atBottom]
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Pakai'
        Ellipsis = False
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
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Rusak'
        Ellipsis = False
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
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'READY'
        Ellipsis = False
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
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'SATUAN'
        Ellipsis = False
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
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'KOREKSI'
        Ellipsis = False
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
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Suplier'
        Ellipsis = False
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
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Smtr'
        Ellipsis = False
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
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Beli'
        Ellipsis = False
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
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Lainnya'
        Ellipsis = False
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
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'PART'
        Ellipsis = False
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
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'STATUS'
        Ellipsis = False
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
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'M A S U K'
        Ellipsis = False
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
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'K E L U A R'
        Ellipsis = False
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
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'TITIPAN'
        Ellipsis = False
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
      Background1.Brush.Style = bsClear
      Background1.Gradient.EndColor = clWhite
      Background1.Gradient.StartColor = clWhite
      Background1.Gradient.Style = gsNone
      Background2.Brush.Style = bsClear
      Background2.Gradient.EndColor = clWhite
      Background2.Gradient.StartColor = clWhite
      Background2.Gradient.Style = gsNone
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 4233
      mmPrintPosition = 0
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'KD_ITEM'
        DataPipeline = ppDBQBrowseDetail
        Ellipsis = False
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
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'AWAL'
        DataPipeline = ppDBQBrowseDetail
        DisplayFormat = '#,###.##;(#,###.##)'
        Ellipsis = False
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
        SaveOrder = 0
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
        mmMinHeight = 0
        mmLeading = 0
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'RETUR'
        DataPipeline = ppDBQBrowseDetail
        DisplayFormat = '#,###.##;(#,###.##)'
        Ellipsis = False
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
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'No'
        Ellipsis = False
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
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'KEBUTUHAN'
        DataPipeline = ppDBQBrowseDetail
        DisplayFormat = '#,###.##;(#,###.##)'
        Ellipsis = False
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
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'ON_ORDER'
        DataPipeline = ppDBQBrowseDetail
        DisplayFormat = '#,###.##;(#,###.##)'
        Ellipsis = False
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
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'PEMAKAIAN'
        DataPipeline = ppDBQBrowseDetail
        DisplayFormat = '#,###.##;(#,###.##)'
        Ellipsis = False
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
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'RUSAK'
        DataPipeline = ppDBQBrowseDetail
        DisplayFormat = '#,###.##;(#,###.##)'
        Ellipsis = False
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
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'READY'
        DataPipeline = ppDBQBrowseDetail
        DisplayFormat = '#,###.##;(#,###.##)'
        Ellipsis = False
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
        SaveOrder = 1
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
        mmMinHeight = 0
        mmLeading = 0
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'KOREKSI'
        DataPipeline = ppDBQBrowseDetail
        DisplayFormat = '#,###.##;(#,###.##)'
        Ellipsis = False
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
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'REKANAN'
        DataPipeline = ppDBQBrowseDetail
        DisplayFormat = '#,###.##;(#,###.##)'
        Ellipsis = False
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
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'SEMENTARA'
        DataPipeline = ppDBQBrowseDetail
        DisplayFormat = '#,###.##;(#,###.##)'
        Ellipsis = False
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
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'NO_PART'
        DataPipeline = ppDBQBrowseDetail
        Ellipsis = False
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
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'MASUK_LAIN'
        DataPipeline = ppDBQBrowseDetail
        DisplayFormat = '#,###.##;(#,###.##)'
        Ellipsis = False
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
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'PEMBELIAN'
        DataPipeline = ppDBQBrowseDetail
        DisplayFormat = '#,###.##;(#,###.##)'
        Ellipsis = False
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
        HyperlinkColor = clBlue
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
      AlignToBottom = False
      mmBottomOffset = 0
      mmHeight = 32808
      mmPrintPosition = 0
      object ppDBText19: TppDBText
        UserName = 'DBText19'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'TTD1'
        DataPipeline = ppDBQTransaksi
        Ellipsis = False
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
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'TTD2'
        DataPipeline = ppDBQTransaksi
        Ellipsis = False
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
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'TTD3'
        DataPipeline = ppDBQTransaksi
        Ellipsis = False
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
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'DIV3'
        DataPipeline = ppDBQTransaksi
        Ellipsis = False
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
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'DIV2'
        DataPipeline = ppDBQTransaksi
        Ellipsis = False
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
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'DIV1'
        DataPipeline = ppDBQTransaksi
        Ellipsis = False
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
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'JAB3'
        DataPipeline = ppDBQTransaksi
        Ellipsis = False
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
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'JAB2'
        DataPipeline = ppDBQTransaksi
        Ellipsis = False
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
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'JAB1'
        DataPipeline = ppDBQTransaksi
        Ellipsis = False
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
    Left = 896
    Top = 24
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
    Left = 864
    Top = 72
  end
  object QTransaksi: TOracleDataSet
    SQL.Strings = (
      'select * from vtransaksi')
    QBEDefinition.QBEFieldDefs = {
      04000000130000000E0000004E414D415F5452414E53414B5349010000000000
      0C0000004B445F5452414E53414B534901000000000006000000505245464958
      01000000000005000000504C494E450100000000000700000050484541444552
      0100000000000A00000044495354524942555349010000000000040000005454
      4431010000000000040000005454443201000000000004000000545444330100
      0000000004000000545444340100000000000400000044495631010000000000
      0400000044495632010000000000040000004449563301000000000004000000
      44495634010000000000040000004A414231010000000000040000004A414232
      010000000000040000004A414233010000000000040000004A41423401000000
      000007000000444F435F49534F010000000000}
    Session = DMFrm.OS
    BeforeOpen = QTransaksiBeforeOpen
    Left = 144
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
    object QTransaksiDOC_ISO: TStringField
      FieldName = 'DOC_ISO'
      Size = 15
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
    Left = 432
    Top = 32
  end
  object QSOP: TOracleDataSet
    SQL.Strings = (
      'select sinopsis from vsop'
      'where kd_transaksi='#39'108'#39)
    QBEDefinition.QBEFieldDefs = {04000000010000000800000053494E4F50534953010000000000}
    Session = DMFrm.OS
    Left = 120
    Top = 40
  end
  object dsQSOP: TwwDataSource
    DataSet = QSOP
    Left = 380
    Top = 88
  end
  object QDump: TOracleQuery
    SQL.Strings = (
      'begin'
      'commit;'
      'insert into ipisma_db3.vinfomutasigw1'
      'select a.kd_item, '
      'a.kd_jns_item, '
      'a.nama_item, '
      'a.kd_satuan, '
      'a.satuan, '
      '(select sum(qty_in-qty_out) from ipisma_db3.vkartu_stok'
      
        '  where kd_lokasi=:kd_jns_item and kd_item=a.kd_item and jns_lok' +
        'asi='#39'LOKASI'#39' and tgl<trunc(:vsysdate))/:VRASIO AS AWAL1,'
      '(select sum(qty_in2-qty_out2) from ipisma_db3.vkartu_stok'
      
        '  where kd_lokasi=:kd_jns_item and kd_item=a.kd_item and jns_lok' +
        'asi='#39'LOKASI'#39' and tgl<trunc(:vsysdate))/:VRASIO AS AWAL2,'
      '(select sum(qty_in-qty_out) from ipisma_db3.vkartu_stok'
      
        '  where kd_lokasi=:kd_jns_item and kd_item=a.kd_item and jns_lok' +
        'asi='#39'LOKASI'#39' and kd_transaksi='#39'881'#39' and tgl>=trunc(:vsysdate)and' +
        ' tgl<trunc(:vsysdate2)+1-1/86400)/:VRASIO AS masuk1,'
      '(select sum(qty_in-qty_out) from ipisma_db3.vkartu_stok'
      
        '  where kd_lokasi=:kd_jns_item and kd_item=a.kd_item and jns_lok' +
        'asi='#39'LOKASI'#39' and kd_transaksi='#39'882'#39' and tgl>=trunc(:vsysdate)and' +
        ' tgl<trunc(:vsysdate2)+1-1/86400)/:VRASIO AS masuk2,'
      '(select sum(qty_in-qty_out) from ipisma_db3.vkartu_stok'
      
        '  where kd_lokasi=:kd_jns_item and kd_item=a.kd_item and jns_lok' +
        'asi='#39'LOKASI'#39' and kd_transaksi='#39'883'#39' and tgl>=trunc(:vsysdate)and' +
        ' tgl<trunc(:vsysdate2)+1-1/86400)/:VRASIO AS masuk3,'
      '(select sum(qty_in-qty_out) from ipisma_db3.vkartu_stok'
      
        '  where kd_lokasi=:kd_jns_item and kd_item=a.kd_item and jns_lok' +
        'asi='#39'LOKASI'#39' and kd_transaksi='#39'884'#39' and tgl>=trunc(:vsysdate)and' +
        ' tgl<trunc(:vsysdate2)+1-1/86400)/:VRASIO AS masuk4,'
      '(select sum(qty_in-qty_out) from ipisma_db3.vkartu_stok'
      
        '  where kd_lokasi=:kd_jns_item and kd_item=a.kd_item and jns_lok' +
        'asi='#39'LOKASI'#39' and kd_transaksi='#39'885'#39' and tgl>=trunc(:vsysdate)and' +
        ' tgl<trunc(:vsysdate2)+1-1/86400)/:VRASIO AS masuk5,'
      '(select -sum(qty_in-qty_out) from ipisma_db3.vkartu_stok'
      
        '  where kd_lokasi=:kd_jns_item and kd_item=a.kd_item and jns_lok' +
        'asi='#39'LOKASI'#39' and kd_transaksi='#39'681'#39' and tgl>=trunc(:vsysdate)and' +
        ' tgl<trunc(:vsysdate2)+1-1/86400)/:VRASIO AS keluar1,'
      '(select -sum(qty_in-qty_out) from ipisma_db3.vkartu_stok'
      
        '  where kd_lokasi=:kd_jns_item and kd_item=a.kd_item and jns_lok' +
        'asi='#39'LOKASI'#39' and kd_transaksi='#39'682'#39' and tgl>=trunc(:vsysdate)and' +
        ' tgl<trunc(:vsysdate2)+1-1/86400)/:VRASIO AS keluar2,'
      '(select -sum(qty_in-qty_out) from ipisma_db3.vkartu_stok'
      
        '  where kd_lokasi=:kd_jns_item and kd_item=a.kd_item and jns_lok' +
        'asi='#39'LOKASI'#39' and kd_transaksi='#39'683'#39' and tgl>=trunc(:vsysdate)and' +
        ' tgl<trunc(:vsysdate2)+1-1/86400)/:VRASIO AS keluar3,'
      '(select -sum(qty_in-qty_out) from ipisma_db3.vkartu_stok'
      
        '  where kd_lokasi=:kd_jns_item and kd_item=a.kd_item and jns_lok' +
        'asi='#39'LOKASI'#39' and kd_transaksi='#39'684'#39' and tgl>=trunc(:vsysdate)and' +
        ' tgl<trunc(:vsysdate2)+1-1/86400)/:VRASIO AS keluar4,'
      '(select -sum(qty_in-qty_out) from ipisma_db3.vkartu_stok'
      
        '  where kd_lokasi=:kd_jns_item and kd_item=a.kd_item and jns_lok' +
        'asi='#39'LOKASI'#39' and kd_transaksi='#39'685'#39' and tgl>=trunc(:vsysdate)and' +
        ' tgl<trunc(:vsysdate2)+1-1/86400)/:VRASIO AS keluar5,'
      '(select -sum(qty_in-qty_out) from ipisma_db3.vkartu_stok'
      
        '  where kd_lokasi=:kd_jns_item and kd_item=a.kd_item and jns_lok' +
        'asi='#39'LOKASI'#39' and kd_transaksi='#39'686'#39' and tgl>=trunc(:vsysdate)and' +
        ' tgl<trunc(:vsysdate2)+1-1/86400)/:VRASIO AS keluar6,'
      '(select -sum(qty_in-qty_out) from ipisma_db3.vkartu_stok'
      
        '  where kd_lokasi=:kd_jns_item and kd_item=a.kd_item and jns_lok' +
        'asi='#39'LOKASI'#39' and kd_transaksi='#39'689'#39' and tgl>=trunc(:vsysdate)and' +
        ' tgl<trunc(:vsysdate2)+1-1/86400)/:VRASIO AS keluar7,'
      'a.kd_sub_kel,'#39'ALL'#39','#39'ALL'#39','
      '(select -sum(qty_in-qty_out) from ipisma_db3.vkartu_stok'
      
        '  where kd_lokasi=:kd_jns_item and kd_item=a.kd_item and jns_lok' +
        'asi='#39'LOKASI'#39' and kd_transaksi='#39'688'#39' and tgl>=trunc(:vsysdate)and' +
        ' tgl<trunc(:vsysdate2)+1-1/86400)/:VRASIO AS keluar8'
      'from ipisma_db3.vitemall a'
      'where a.kd_jns_item=:kd_jns_item'
      'order by a.kd_jns_item, a.nama_item;'
      'end;')
    Session = DMFrm.OS
    Variables.Data = {
      0300000004000000090000003A56535953444154450C00000007000000786B06
      01010101000000000A0000003A5653595344415445320C00000007000000786B
      061E010101000000000C0000003A4B445F4A4E535F4954454D05000000030000
      0033300000000000070000003A56524153494F04000000080000000000000000
      00F03F00000000}
    Left = 800
    Top = 136
  end
  object QDump2: TOracleQuery
    SQL.Strings = (
      'begin'
      
        '  ipisma_db3.proc_mutasigw_warna_info1_23(:vsysdate, :vsysdate2,' +
        ' :vrasio, :vkd_jns_item);'
      'end;'
      '')
    Session = DMFrm.OS
    Variables.Data = {
      03000000040000000D0000003A564B445F4A4E535F4954454D05000000030000
      0033300000000000090000003A56535953444154450C00000007000000786D03
      0101010100000000070000003A56524153494F03000000040000000100000000
      0000000A0000003A5653595344415445320C00000007000000786D031E010101
      00000000}
    Left = 264
    Top = 56
  end
  object QDump3: TOracleQuery
    SQL.Strings = (
      'begin'
      'commit;'
      'insert into ipisma_db3.vinfomutasigw1'
      'SELECT '
      'kd_item, '
      'kd_jns_item, '
      'nama_item, '
      'kd_satuan, '
      'satuan, '
      'SUM(awal1) AS awal1, '
      'SUM(awal2) AS awal2, '
      'SUM(masuk1) AS masuk1, '
      'SUM(masuk2) AS masuk2, '
      'SUM(masuk3) AS masuk3, '
      'SUM(masuk4) AS masuk4, '
      'SUM(masuk5) AS masuk5, '
      'SUM(keluar1) AS keluar1, '
      'SUM(keluar2) AS keluar2, '
      'SUM(keluar3) AS keluar3, '
      'SUM(keluar4) AS keluar4, '
      'SUM(keluar5) AS keluar5, '
      'SUM(keluar6) AS keluar6, '
      'SUM(keluar7) AS keluar7, '
      'kd_sub_kel,'
      'warna, '
      'no_batch,'
      'SUM(keluar8) AS keluar8'
      'FROM'
      '('
      'select a.kd_item, '
      'a.kd_jns_item, '
      'a.nama_item, '
      'a.kd_satuan, '
      'a.satuan, '
      
        '(select ROUND(NVL(sum(qty_in-qty_out),0),2) from ipisma_db3.vkar' +
        'tu_stok_2017'
      
        '  where no_batch=b.no_batch and kd_warna=b.kd_warna and kd_lokas' +
        'i=:kd_jns_item and kd_item=a.kd_item and jns_lokasi='#39'LOKASI'#39' and' +
        ' trunc(tgl)<trunc(:vsysdate))/:VRASIO AS AWAL1,'
      
        '(select ROUND(NVL(sum(qty_in2-qty_out2),0),2) from ipisma_db3.vk' +
        'artu_stok_2017'
      
        '  where no_batch=b.no_batch and kd_warna=b.kd_warna and kd_lokas' +
        'i=:kd_jns_item and kd_item=a.kd_item and jns_lokasi='#39'LOKASI'#39' and' +
        ' trunc(tgl)<trunc(:vsysdate))/:VRASIO AS AWAL2,'
      
        '(select ROUND(NVL(sum(qty_in-qty_out),0),2) from ipisma_db3.vkar' +
        'tu_stok_2017'
      
        '  where no_batch=b.no_batch and kd_warna=b.kd_warna and kd_lokas' +
        'i=:kd_jns_item and kd_item=a.kd_item and jns_lokasi='#39'LOKASI'#39' and' +
        ' kd_transaksi='#39'881'#39' and trunc(tgl)>=trunc(:vsysdate)and trunc(tg' +
        'l)<=trunc(:vsysdate2)+1-1/86400)/:VRASIO AS masuk1,'
      
        '(select ROUND(NVL(sum(qty_in-qty_out),0),2) from ipisma_db3.vkar' +
        'tu_stok_2017'
      
        '  where no_batch=b.no_batch and kd_warna=b.kd_warna and kd_lokas' +
        'i=:kd_jns_item and kd_item=a.kd_item and jns_lokasi='#39'LOKASI'#39' and' +
        ' kd_transaksi='#39'882'#39' and trunc(tgl)>=trunc(:vsysdate)and trunc(tg' +
        'l)<=trunc(:vsysdate2)+1-1/86400)/:VRASIO AS masuk2,'
      
        '(select ROUND(NVL(sum(qty_in-qty_out),0),2) from ipisma_db3.vkar' +
        'tu_stok_2017'
      
        '  where no_batch=b.no_batch and kd_warna=b.kd_warna and kd_lokas' +
        'i=:kd_jns_item and kd_item=a.kd_item and jns_lokasi='#39'LOKASI'#39' and' +
        ' kd_transaksi='#39'883'#39' and trunc(tgl)>=trunc(:vsysdate)and trunc(tg' +
        'l)<=trunc(:vsysdate2)+1-1/86400)/:VRASIO AS masuk3,'
      
        '(select ROUND(NVL(sum(qty_in-qty_out),0),2) from ipisma_db3.vkar' +
        'tu_stok_2017'
      
        '  where no_batch=b.no_batch and kd_warna=b.kd_warna and kd_lokas' +
        'i=:kd_jns_item and kd_item=a.kd_item and jns_lokasi='#39'LOKASI'#39' and' +
        ' kd_transaksi='#39'884'#39' and trunc(tgl)>=trunc(:vsysdate)and trunc(tg' +
        'l)<=trunc(:vsysdate2)+1-1/86400)/:VRASIO AS masuk4,'
      
        '(select ROUND(NVL(sum(qty_in-qty_out),0),2) from ipisma_db3.vkar' +
        'tu_stok_2017'
      
        '  where no_batch=b.no_batch and kd_warna=b.kd_warna and kd_lokas' +
        'i=:kd_jns_item and kd_item=a.kd_item and jns_lokasi='#39'LOKASI'#39' and' +
        ' kd_transaksi='#39'885'#39' and trunc(tgl)>=trunc(:vsysdate)and trunc(tg' +
        'l)<=trunc(:vsysdate2)+1-1/86400)/:VRASIO AS masuk5,'
      
        '(select ROUND(NVL(-sum(qty_in-qty_out),0),2) from ipisma_db3.vka' +
        'rtu_stok_2017'
      
        '  where no_batch=b.no_batch and kd_warna=b.kd_warna and kd_lokas' +
        'i=:kd_jns_item and kd_item=a.kd_item and jns_lokasi='#39'LOKASI'#39' and' +
        ' kd_transaksi='#39'681'#39' and trunc(tgl)>=trunc(:vsysdate)and trunc(tg' +
        'l)<=trunc(:vsysdate2)+1-1/86400)/:VRASIO AS keluar1,'
      
        '(select ROUND(NVL(-sum(qty_in-qty_out),0),2) from ipisma_db3.vka' +
        'rtu_stok_2017'
      
        '  where no_batch=b.no_batch and kd_warna=b.kd_warna and kd_lokas' +
        'i=:kd_jns_item and kd_item=a.kd_item and jns_lokasi='#39'LOKASI'#39' and' +
        ' kd_transaksi='#39'682'#39' and trunc(tgl)>=trunc(:vsysdate)and trunc(tg' +
        'l)<=trunc(:vsysdate2)+1-1/86400)/:VRASIO AS keluar2,'
      
        '(select ROUND(NVL(-sum(qty_in-qty_out),0),2) from ipisma_db3.vka' +
        'rtu_stok_2017'
      
        '  where no_batch=b.no_batch and kd_warna=b.kd_warna and kd_lokas' +
        'i=:kd_jns_item and kd_item=a.kd_item and jns_lokasi='#39'LOKASI'#39' and' +
        ' kd_transaksi='#39'683'#39' and trunc(tgl)>=trunc(:vsysdate)and trunc(tg' +
        'l)<=trunc(:vsysdate2)+1-1/86400)/:VRASIO AS keluar3,'
      
        '(select ROUND(NVL(-sum(qty_in-qty_out),0),2) from ipisma_db3.vka' +
        'rtu_stok_2017'
      
        '  where no_batch=b.no_batch and kd_warna=b.kd_warna and kd_lokas' +
        'i=:kd_jns_item and kd_item=a.kd_item and jns_lokasi='#39'LOKASI'#39' and' +
        ' kd_transaksi='#39'684'#39' and trunc(tgl)>=trunc(:vsysdate)and trunc(tg' +
        'l)<=trunc(:vsysdate2)+1-1/86400)/:VRASIO AS keluar4,'
      
        '(select ROUND(NVL(-sum(qty_in-qty_out),0),2) from ipisma_db3.vka' +
        'rtu_stok_2017'
      
        '  where no_batch=b.no_batch and kd_warna=b.kd_warna and kd_lokas' +
        'i=:kd_jns_item and kd_item=a.kd_item and jns_lokasi='#39'LOKASI'#39' and' +
        ' kd_transaksi='#39'685'#39' and trunc(tgl)>=trunc(:vsysdate)and trunc(tg' +
        'l)<=trunc(:vsysdate2)+1-1/86400)/:VRASIO AS keluar5,'
      
        '(select ROUND(NVL(-sum(qty_in-qty_out),0),2) from ipisma_db3.vka' +
        'rtu_stok_2017'
      
        '  where no_batch=b.no_batch and kd_warna=b.kd_warna and kd_lokas' +
        'i=:kd_jns_item and kd_item=a.kd_item and jns_lokasi='#39'LOKASI'#39' and' +
        ' kd_transaksi='#39'686'#39' and trunc(tgl)>=trunc(:vsysdate)and trunc(tg' +
        'l)<=trunc(:vsysdate2)+1-1/86400)/:VRASIO AS keluar6,'
      
        '(select ROUND(NVL(-sum(qty_in-qty_out),0),2) from ipisma_db3.vka' +
        'rtu_stok_2017'
      
        '  where no_batch=b.no_batch and kd_warna=b.kd_warna and kd_lokas' +
        'i=:kd_jns_item and kd_item=a.kd_item and jns_lokasi='#39'LOKASI'#39' and' +
        ' kd_transaksi='#39'689'#39' and trunc(tgl)>=trunc(:vsysdate)and trunc(tg' +
        'l)<=trunc(:vsysdate2)+1-1/86400)/:VRASIO AS keluar7,'
      'a.kd_sub_kel,c.warna, b.no_batch,'
      
        '(select ROUND(NVL(-sum(qty_in-qty_out),0),2) from ipisma_db3.vka' +
        'rtu_stok_2017'
      
        '  where no_batch=b.no_batch and kd_warna=b.kd_warna and kd_lokas' +
        'i=:kd_jns_item and kd_item=a.kd_item and jns_lokasi='#39'LOKASI'#39' and' +
        ' kd_transaksi='#39'688'#39' and trunc(tgl)>=trunc(:vsysdate)and trunc(tg' +
        'l)<=trunc(:vsysdate2)+1-1/86400)/:VRASIO AS keluar8'
      
        'from ipisma_db3.vitemall a, ipisma_db3.vitem_warna_batch_2017 b,' +
        ' ipisma_db3.vi_warna_baru_2017 c'
      
        'where a.kd_item=b.kd_item and b.kd_warna=c.kd_warna and a.kd_jns' +
        '_item=:kd_jns_item'
      'order by a.kd_jns_item, a.nama_item'
      ')'
      'GROUP BY '
      'kd_item, '
      'kd_jns_item, '
      'nama_item, '
      'kd_satuan, '
      'satuan, '
      'kd_sub_kel,'
      'warna, '
      'no_batch'
      ';'
      'end;'
      '')
    Session = DMFrm.OS
    Variables.Data = {
      03000000040000000C0000003A4B445F4A4E535F4954454D0500000003000000
      33300000000000090000003A56535953444154450C00000007000000786B0601
      01010100000000070000003A56524153494F0300000004000000010000000000
      00000A0000003A5653595344415445320C00000007000000786B061E01010100
      000000}
    Left = 848
    Top = 136
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
    Left = 649
    Top = 132
  end
  object QProc_konstruksi: TOracleQuery
    SQL.Strings = (
      '/*begin'
      '   ipisma_db3.proc_temp_mutasi_gw_global(:vsysdate, :vsysdate2);'
      'end;*/'
      ''
      ''
      ''
      ''
      ''
      'begin'
      
        '  ipisma_db3.proc_mutasigw_benang_info1_23(:vsysdate, :vsysdate2' +
        ', :vrasio, :vkd_jns_item);'
      'end;')
    Session = DMFrm.OS
    Variables.Data = {
      0300000004000000090000003A56535953444154450C00000007000000786B06
      01010101000000000A0000003A5653595344415445320C00000007000000786B
      061E01010100000000070000003A56524153494F040000000800000000000000
      0000F03F000000000D0000003A564B445F4A4E535F4954454D05000000000000
      0000000000}
    Left = 208
    Top = 96
  end
  object dsQBrowse2: TwwDataSource
    DataSet = QBrowse2
    Left = 576
    Top = 40
  end
  object QBrowse2: TOracleDataSet
    SQL.Strings = (
      'select a.* from'
      '('
      
        ' select t.kd_item, t.no_benang, t.kd_warna, y.warna, (sum(t.awal' +
        '_thn)+sum(t.awal_tgl)) as awal, sum(t.qty_in) as qty_in, sum(t.q' +
        'ty_out) as qty_out'
      ' from ipisma_db3.TEMP_MUTASI_GW t'
      ' left join ipisma_db3.warna_baru y on t.kd_warna=y.kd_warna'
      ' group by t.kd_item, t.no_benang, t.kd_warna, y.warna'
      ') a'
      ':vorder'
      ''
      ''
      ''
      '/*'
      'select a.* from'
      '('
      
        ' select t.kd_item, t.no_benang, y.warna, sum(t.awal_thn+t.awal_t' +
        'gl) as awal, sum(t.qty_in) as qty_in, sum(t.qty_out) as qty_out'
      ' from ipisma_db3.TEMP_MUTASI_GW t'
      ' left join ipisma_db3.warna_baru y on t.kd_warna=y.kd_warna'
      
        ' WHERE (t.awal_thn <> 0) or (t.awal_tgl <> 0) or (t.qty_in <> 0)' +
        ' or (t.qty_out <> 0)'
      ' group by t.kd_item, t.no_benang, y.warna'
      ') a'
      ':vorder'
      '*/')
    Variables.Data = {
      0300000001000000070000003A564F5244455201000000130000006F72646572
      206279206E6F5F62656E616E670000000000}
    QBEDefinition.QBEFieldDefs = {
      0400000007000000050000005741524E41010000000000090000004E4F5F4245
      4E414E47010000000000040000004157414C010000000000060000005154595F
      494E010000000000070000005154595F4F5554010000000000070000004B445F
      4954454D010000000000080000004B445F5741524E41010000000000}
    Cursor = crSQLWait
    ReadOnly = True
    QueryAllRecords = False
    Session = DMFrm.OS
    AfterScroll = QBrowse2AfterScroll
    OnCalcFields = QBrowse2CalcFields
    OnFilterRecord = QBrowse2FilterRecord
    Left = 516
    Top = 32
    object QBrowse2CQTY_AKHIR: TFloatField
      FieldKind = fkCalculated
      FieldName = 'CQTY_AKHIR'
      DisplayFormat = '#,##0.##;(#,##0.##);-'
      Calculated = True
    end
    object QBrowse2KD_ITEM: TStringField
      FieldName = 'KD_ITEM'
      Required = True
      Size = 50
    end
    object QBrowse2NO_BENANG: TStringField
      FieldName = 'NO_BENANG'
      Size = 225
    end
    object QBrowse2WARNA: TStringField
      FieldName = 'WARNA'
      Size = 50
    end
    object QBrowse2AWAL: TFloatField
      FieldName = 'AWAL'
      DisplayFormat = '#,##0.##;(#,##0.##);-'
    end
    object QBrowse2QTY_IN: TFloatField
      FieldName = 'QTY_IN'
      DisplayFormat = '#,##0.##;(#,##0.##);-'
    end
    object QBrowse2QTY_OUT: TFloatField
      FieldName = 'QTY_OUT'
      DisplayFormat = '#,##0.##;(#,##0.##);-'
    end
    object QBrowse2KD_WARNA: TStringField
      FieldName = 'KD_WARNA'
      Size = 6
    end
  end
  object QDump4: TOracleQuery
    SQL.Strings = (
      'begin'
      ' ipisma_db3.proc_temp_mutasi_gw(:vsysdate, :vsysdate2);'
      'end;'
      '')
    Session = DMFrm.OS
    Variables.Data = {
      0300000002000000090000003A56535953444154450C00000007000000786B06
      01010101000000000A0000003A5653595344415445320C000000000000000000
      0000}
    Cursor = crSQLWait
    Left = 896
    Top = 136
  end
  object QBrowseDetail: TOracleDataSet
    SQL.Strings = (
      'select * from ipisma_db3.TEMP_MUTASI_GW t'
      
        'where t.kd_item=:pkd_item and t.kd_warna=:pkd_warna and t.ketera' +
        'ngan NOT LIKE '#39'%SALDO AWAL%'#39)
    Variables.Data = {
      0300000002000000090000003A504B445F4954454D0500000000000000000000
      000A0000003A504B445F5741524E41050000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000000D000000050000005741524E41010000000000090000004E4F5F4245
      4E414E47010000000000060000005154595F494E010000000000070000005154
      595F4F5554010000000000070000004B445F4954454D01000000000008000000
      4B445F5741524E41010000000000080000004157414C5F54484E010000000000
      080000004157414C5F54474C010000000000070000005154595F494E32010000
      000000080000005154595F4F5554320100000000000300000054474C01000000
      0000070000004E4F5F4E4F54410100000000000A0000004B45544552414E4741
      4E010000000000}
    Cursor = crSQLWait
    ReadOnly = True
    QueryAllRecords = False
    Session = DMFrm.OS
    Left = 692
    Top = 48
    object QBrowseDetailKD_ITEM: TStringField
      FieldName = 'KD_ITEM'
      Required = True
      Size = 50
    end
    object QBrowseDetailKD_WARNA: TStringField
      FieldName = 'KD_WARNA'
      Size = 6
    end
    object QBrowseDetailNO_BENANG: TStringField
      FieldName = 'NO_BENANG'
      Size = 225
    end
    object QBrowseDetailWARNA: TStringField
      FieldName = 'WARNA'
      Size = 128
    end
    object QBrowseDetailAWAL_THN: TFloatField
      FieldName = 'AWAL_THN'
    end
    object QBrowseDetailAWAL_TGL: TFloatField
      FieldName = 'AWAL_TGL'
    end
    object QBrowseDetailQTY_IN: TFloatField
      FieldName = 'QTY_IN'
      Required = True
    end
    object QBrowseDetailQTY_IN2: TFloatField
      FieldName = 'QTY_IN2'
    end
    object QBrowseDetailQTY_OUT: TFloatField
      FieldName = 'QTY_OUT'
      Required = True
    end
    object QBrowseDetailQTY_OUT2: TFloatField
      FieldName = 'QTY_OUT2'
    end
    object QBrowseDetailTGL: TDateTimeField
      FieldName = 'TGL'
    end
    object QBrowseDetailNO_NOTA: TStringField
      FieldName = 'NO_NOTA'
      Size = 15
    end
    object QBrowseDetailKETERANGAN: TStringField
      FieldName = 'KETERANGAN'
      Size = 255
    end
  end
  object dsQBrowseDetail: TwwDataSource
    DataSet = QBrowseDetail
    Left = 752
    Top = 64
  end
  object dsQBrowseNew: TwwDataSource
    DataSet = QBrowseNew
    Left = 256
    Top = 288
  end
  object QBrowseNew: TOracleDataSet
    SQL.Strings = (
      'select * from ('
      'select'
      ' a.kd_item, b.kd_sub_kel as jns_benang, b.diskripsi,'
      ' sum(NVL(a.awal_thn, 0))+sum(NVL(a.awal_tgl,0)) as awal,'
      ' sum(a.qty01) as qty01,'
      ' sum(a.qty02) as qty02,'
      ' sum(a.qty03) as qty03,'
      ' sum(a.qty04) as qty04,'
      ' sum(a.qty05) as qty05,'
      ' sum(a.qty06) as qty06,'
      ' sum(a.qty07) as qty07,'
      ' sum(a.qty08) as qty08,'
      ' sum(a.qty09) as qty09,'
      ' sum(a.qty10) as qty10,'
      ' sum(a.qty11) as qty11,'
      ' sum(a.qty12) as qty12,'
      ' sum(a.qty13) as qty13,'
      ' sum(a.qty14) as qty14,'
      ' sum(a.qty15) as qty15,'
      ' sum(a.qty16) as qty16,'
      ' sum(a.qty17) as qty17,'
      ' sum(a.qty18) as qty18,'
      ' sum(a.qty19) as qty19,'
      ' sum(a.qty20) as qty20'
      'from ipisma_db3.TEMP_MUTASI_GW_GLOBAL a'
      'left join ipisma_db3.item b on a.kd_item=b.kd_item'
      'group by a.kd_item, b.kd_sub_kel, b.diskripsi'
      ') :vorder'
      ''
      '/*'
      'select * from ipisma_db3.vinfomutasigw1_detail'
      ':vorder'
      '*/')
    Variables.Data = {0300000001000000070000003A564F52444552010000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      0400000018000000070000004B445F4954454D0100000000000A0000004A4E53
      5F42454E414E47010000000000090000004449534B5249505349010000000000
      0500000051545930310100000000000500000051545930320100000000000500
      0000515459303301000000000005000000515459303401000000000005000000
      5154593035010000000000050000005154593036010000000000050000005154
      5930370100000000000500000051545930380100000000000500000051545930
      3901000000000005000000515459313001000000000005000000515459313101
      0000000000050000005154593132010000000000050000005154593133010000
      0000000500000051545931340100000000000500000051545931350100000000
      0005000000515459313601000000000005000000515459313701000000000005
      0000005154593138010000000000050000005154593139010000000000040000
      004157414C010000000000050000005154593230010000000000}
    ReadOnly = True
    QueryAllRecords = False
    Session = DMFrm.OS
    AfterScroll = QBrowseNewAfterScroll
    OnCalcFields = QBrowseNewCalcFields
    Left = 236
    Top = 320
    object QBrowseNewKD_ITEM: TStringField
      FieldName = 'KD_ITEM'
      Required = True
      Size = 50
    end
    object QBrowseNewJNS_BENANG: TStringField
      FieldName = 'JNS_BENANG'
      Size = 32
    end
    object QBrowseNewDISKRIPSI: TStringField
      FieldName = 'DISKRIPSI'
      Size = 255
    end
    object QBrowseNewAWAL: TFloatField
      FieldName = 'AWAL'
      DisplayFormat = '#,##0.##;(#,##0.##);-'
    end
    object QBrowseNewQTY01: TFloatField
      FieldName = 'QTY01'
      DisplayFormat = '#,##0.##;(#,##0.##);-'
    end
    object QBrowseNewQTY02: TFloatField
      FieldName = 'QTY02'
      DisplayFormat = '#,##0.##;(#,##0.##);-'
    end
    object QBrowseNewQTY03: TFloatField
      FieldName = 'QTY03'
      DisplayFormat = '#,##0.##;(#,##0.##);-'
    end
    object QBrowseNewQTY04: TFloatField
      FieldName = 'QTY04'
      DisplayFormat = '#,##0.##;(#,##0.##);-'
    end
    object QBrowseNewQTY05: TFloatField
      FieldName = 'QTY05'
      DisplayFormat = '#,##0.##;(#,##0.##);-'
    end
    object QBrowseNewQTY06: TFloatField
      FieldName = 'QTY06'
      DisplayFormat = '#,##0.##;(#,##0.##);-'
    end
    object QBrowseNewQTY07: TFloatField
      FieldName = 'QTY07'
      DisplayFormat = '#,##0.##;(#,##0.##);-'
    end
    object QBrowseNewQTY08: TFloatField
      FieldName = 'QTY08'
      DisplayFormat = '#,##0.##;(#,##0.##);-'
    end
    object QBrowseNewQTY09: TFloatField
      FieldName = 'QTY09'
      DisplayFormat = '#,##0.##;(#,##0.##);-'
    end
    object QBrowseNewQTY10: TFloatField
      FieldName = 'QTY10'
      DisplayFormat = '#,##0.##;(#,##0.##);-'
    end
    object QBrowseNewQTY11: TFloatField
      FieldName = 'QTY11'
      DisplayFormat = '#,##0.##;(#,##0.##);-'
    end
    object QBrowseNewQTY12: TFloatField
      FieldName = 'QTY12'
      DisplayFormat = '#,##0.##;(#,##0.##);-'
    end
    object QBrowseNewQTY13: TFloatField
      FieldName = 'QTY13'
      DisplayFormat = '#,##0.##;(#,##0.##);-'
    end
    object QBrowseNewQTY14: TFloatField
      FieldName = 'QTY14'
      DisplayFormat = '#,##0.##;(#,##0.##);-'
    end
    object QBrowseNewQTY15: TFloatField
      FieldName = 'QTY15'
      DisplayFormat = '#,##0.##;(#,##0.##);-'
    end
    object QBrowseNewQTY16: TFloatField
      FieldName = 'QTY16'
      DisplayFormat = '#,##0.##;(#,##0.##);-'
    end
    object QBrowseNewQTY17: TFloatField
      FieldName = 'QTY17'
      DisplayFormat = '#,##0.##;(#,##0.##);-'
    end
    object QBrowseNewQTY18: TFloatField
      FieldName = 'QTY18'
      DisplayFormat = '#,##0.##;(#,##0.##);-'
    end
    object QBrowseNewQTY19: TFloatField
      FieldName = 'QTY19'
      DisplayFormat = '#,##0.##;(#,##0.##);-'
    end
    object QBrowseNewQTY20: TFloatField
      FieldName = 'QTY20'
      DisplayFormat = '#,##0.##;(#,##0.##);-'
    end
    object QBrowseNewAKHIR: TFloatField
      FieldKind = fkCalculated
      FieldName = 'AKHIR'
      DisplayFormat = '#,##0.##;(#,##0.##);-'
      Calculated = True
    end
  end
end
