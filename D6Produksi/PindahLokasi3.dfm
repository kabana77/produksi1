object PindahLokasi3Frm: TPindahLokasi3Frm
  Left = 226
  Top = 135
  Width = 1010
  Height = 618
  Caption = 'Serah Terima'
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
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PanelMain: TPanel
    Left = 0
    Top = 0
    Width = 994
    Height = 580
    Align = alClient
    BevelOuter = bvNone
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 0
    object Label1: TLabel
      Left = 0
      Top = 567
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
      DataField = 'NO_NOTA'
      DataSource = dsQMaster
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
    object PageControl1: TPageControl
      Left = 0
      Top = 76
      Width = 994
      Height = 491
      ActivePage = TabSheet2
      Align = alClient
      Style = tsFlatButtons
      TabOrder = 1
      object TabSheet1: TTabSheet
        Caption = 'Input'
        OnExit = TabSheet1Exit
        OnShow = TabSheet1Show
        object PanelMaster: TPanel
          Left = 0
          Top = 0
          Width = 986
          Height = 137
          Align = alTop
          BevelOuter = bvNone
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          object Label6: TLabel
            Left = 8
            Top = 45
            Width = 66
            Height = 13
            Caption = 'Keterangan'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clOlive
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label7: TLabel
            Left = 8
            Top = 8
            Width = 54
            Height = 13
            Caption = 'No. Bukti'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clOlive
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label9: TLabel
            Left = 575
            Top = 54
            Width = 47
            Height = 13
            Caption = 'Tanggal'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clOlive
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Bevel1: TBevel
            Left = 577
            Top = 74
            Width = 202
            Height = 10
            Shape = bsBottomLine
          end
          object LBarcode: TDBText
            Left = 681
            Top = 0
            Width = 90
            Height = 24
            AutoSize = True
            DataField = 'NO_NOTA'
            DataSource = dsQMaster
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label8: TLabel
            Left = 706
            Top = 87
            Width = 27
            Height = 13
            Caption = 'Shift'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clOlive
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label10: TLabel
            Left = 746
            Top = 87
            Width = 28
            Height = 13
            Caption = 'Grup'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clOlive
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label11: TLabel
            Left = 192
            Top = 8
            Width = 32
            Height = 13
            Caption = 'Divisi'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clOlive
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object DBText1: TDBText
            Left = 264
            Top = 24
            Width = 60
            Height = 16
            AutoSize = True
            DataField = 'LDIVISI'
            DataSource = dsQMaster
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label20: TLabel
            Left = 9
            Top = 119
            Width = 527
            Height = 13
            Caption = 
              '>>> SEBELUM DIPOSTING, PASTIKAN RASIO MASTER ITEM DAN QTY SUDAH ' +
              'SESUAI !!!'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label12: TLabel
            Left = 416
            Top = 8
            Width = 89
            Height = 13
            Caption = 'Jenis Transaksi'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clOlive
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object wwDBDateTimePicker1: TwwDBDateTimePicker
            Left = 679
            Top = 51
            Width = 97
            Height = 19
            TabStop = False
            BorderStyle = bsNone
            CalendarAttributes.Font.Charset = DEFAULT_CHARSET
            CalendarAttributes.Font.Color = clWindowText
            CalendarAttributes.Font.Height = -11
            CalendarAttributes.Font.Name = 'MS Sans Serif'
            CalendarAttributes.Font.Style = []
            DataField = 'TGL'
            DataSource = dsQMaster
            Epoch = 1950
            Enabled = False
            ShowButton = True
            TabOrder = 5
          end
          object DBMemo1: TDBMemo
            Left = 8
            Top = 61
            Width = 553
            Height = 49
            DataField = 'KETERANGAN'
            DataSource = dsQMaster
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 2
          end
          object wwDBEdit1: TwwDBEdit
            Left = 10
            Top = 24
            Width = 169
            Height = 19
            DataField = 'NO_BUKTI'
            DataSource = dsQMaster
            TabOrder = 0
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
          object wwDBComboBox1: TwwDBComboBox
            Left = 746
            Top = 103
            Width = 33
            Height = 19
            ShowButton = True
            Style = csDropDownList
            MapList = False
            AllowClearKey = False
            DataField = 'GRUP'
            DataSource = dsQMaster
            DropDownCount = 8
            ItemHeight = 0
            Items.Strings = (
              'A'
              'B'
              'C'
              'D'
              'E'
              'F'
              'G')
            Sorted = False
            TabOrder = 4
            UnboundDataType = wwDefault
          end
          object wwDBComboBox2: TwwDBComboBox
            Left = 706
            Top = 103
            Width = 33
            Height = 19
            ShowButton = True
            Style = csDropDownList
            MapList = False
            AllowClearKey = False
            DataField = 'SHIFT'
            DataSource = dsQMaster
            DropDownCount = 8
            ItemHeight = 0
            Items.Strings = (
              '0'
              '1'
              '2'
              '3'
              '4')
            Sorted = False
            TabOrder = 3
            UnboundDataType = wwDefault
          end
          object wwDBLookupComboDlg1: TwwDBLookupComboDlg
            Left = 192
            Top = 24
            Width = 65
            Height = 19
            GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
            GridColor = clWhite
            GridTitleAlignment = taLeftJustify
            Caption = 'Lookup'
            MaxWidth = 0
            MaxHeight = 209
            Selected.Strings = (
              'KD_DIV'#9'5'#9'KODE'#9#9
              'LNAMA_DIVISI'#9'40'#9'DIVISI'#9#9)
            DataField = 'KD_DIV'
            DataSource = dsQMaster
            LookupTable = DMFrm.QDivisi
            LookupField = 'KD_DIV'
            Style = csDropDownList
            TabOrder = 1
            AutoDropDown = False
            ShowButton = True
            AllowClearKey = False
          end
          object lookjns: TwwDBComboBox
            Left = 416
            Top = 24
            Width = 156
            Height = 19
            ShowButton = True
            Style = csDropDownList
            MapList = False
            AllowClearKey = False
            DataField = 'JENIS'
            DataSource = dsQMaster
            DropDownCount = 8
            Enabled = False
            ItemHeight = 0
            Items.Strings = (
              '-'
              'PROSES ULANG')
            Sorted = False
            TabOrder = 6
            UnboundDataType = wwDefault
          end
        end
        object PanelDetail: TPanel
          Left = 0
          Top = 178
          Width = 986
          Height = 241
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 2
          object wwDBGrid1: TwwDBGrid
            Left = 0
            Top = 0
            Width = 986
            Height = 241
            ControlType.Strings = (
              'KD_ITEM;CustomEdit;LookItem;F'
              'KD_SUB_LOKASI2;CustomEdit;LookLokasi2;F'
              'KD_WARNA;CustomEdit;LookWarna;F')
            Selected.Strings = (
              'KD_ITEM'#9'11'#9'KODE'#9'F'
              'KETERANGAN'#9'16'#9'ITEM'#9'T'
              'RASIO'#9'7'#9'RASIO'#9'T'
              'KD_WARNA'#9'6'#9'Kode'#9'T'#9'WARNA'
              'WARNA'#9'17'#9#9'T'#9'WARNA'
              'NO_BATCH'#9'8'#9'NO BATCH'#9'T'
              'KD_SUB_LOKASI'#9'8'#9'Lokasi'#9'T'#9'ASAL'
              'QTY1'#9'8'#9'Kg'#9'T'#9'ASAL'
              'QTY6'#9'7'#9'Pcs'#9'T'#9'ASAL'
              'KD_SUB_LOKASI2'#9'9'#9'Lokasi'#9'T'#9'TUJUAN'
              'QTY2'#9'9'#9'Kg'#9'T'#9'TUJUAN'
              'QTY7'#9'7'#9'Pcs'#9'F'#9'TUJUAN'
              'KD_ITEM2'#9'8'#9'NO LOT'#9'F')
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
            DataSource = dsQDetail
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgPerfectRowFit, dgShowFooter, dgNoLimitColSize, dgTrailingEllipsis, dgRowResize, dgFixedProportionalResize]
            ParentCtl3D = False
            ParentFont = False
            RowHeightPercent = 150
            TabOrder = 0
            TitleAlignment = taCenter
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWhite
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            TitleLines = 2
            TitleButtons = True
            UseTFields = False
            OnCalcCellColors = wwDBGrid1CalcCellColors
            OnEnter = wwDBGrid1Enter
            OnUpdateFooter = wwDBGrid1UpdateFooter
          end
          object LookLokasi2: TwwDBLookupComboDlg
            Left = 400
            Top = 112
            Width = 121
            Height = 19
            GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
            GridColor = clWhite
            GridTitleAlignment = taLeftJustify
            Caption = 'Lookup'
            MaxWidth = 0
            MaxHeight = 209
            Selected.Strings = (
              'KD_SUB_LOKASI'#9'12'#9'LOKASI'#9'F'
              'JNS_LOKASI'#9'10'#9'JENIS'#9'F')
            DataField = 'KD_SUB_LOKASI2'
            DataSource = dsQDetail
            LookupTable = QLokasi
            LookupField = 'KD_SUB_LOKASI'
            Style = csDropDownList
            TabOrder = 1
            AutoDropDown = False
            ShowButton = True
            AllowClearKey = False
            OnEnter = LookLokasiEnter
          end
          object LookItem: TwwDBLookupComboDlg
            Left = 72
            Top = 80
            Width = 121
            Height = 19
            GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
            GridColor = clWhite
            GridTitleAlignment = taLeftJustify
            Caption = 'Lookup'
            MaxWidth = 0
            MaxHeight = 209
            Selected.Strings = (
              'NAMA_ITEM'#9'30'#9'NAMA ITEM'#9'F'
              'KD_ITEM'#9'10'#9'Kode ITEM'#9'F'
              'KD_WARNA'#9'6'#9'Kode WARNA'#9'F'
              'WARNA'#9'25'#9'WARNA'#9'F'
              'NO_BATCH'#9'8'#9'NO BATCH'#9'F'
              'QTY'#9'10'#9'KG'#9'F'
              'QTY2'#9'10'#9'PCS'#9'F'
              'RASIO'#9'7'#9'RASIO'#9'F')
            DataField = 'KD_ITEM'
            DataSource = dsQDetail
            LookupTable = QItem
            LookupField = 'KD_ITEM'
            TabOrder = 2
            AutoDropDown = True
            ShowButton = True
            AllowClearKey = False
            OnCloseUp = LookItemCloseUp
            OnEnter = LookItemEnter
          end
          object LookWarna: TwwDBLookupComboDlg
            Left = 408
            Top = 72
            Width = 121
            Height = 19
            GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
            GridColor = clWhite
            GridTitleAlignment = taLeftJustify
            Caption = 'Lookup'
            MaxWidth = 0
            MaxHeight = 209
            Selected.Strings = (
              'WARNA'#9'30'#9'WARNA'#9'F'
              'KD_WARNA'#9'6'#9'KODE'#9'F')
            DataField = 'KD_WARNA'
            DataSource = dsQDetail
            LookupTable = DMFrm.QWarna
            LookupField = 'KD_WARNA'
            Style = csDropDownList
            Enabled = False
            TabOrder = 3
            Visible = False
            AutoDropDown = False
            ShowButton = True
            AllowClearKey = False
            OnEnter = LookWarnaEnter
          end
        end
        object PanelFooter1: TPanel
          Left = 0
          Top = 419
          Width = 986
          Height = 41
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 3
          object BtnClose1: TBitBtn
            Left = 584
            Top = 6
            Width = 75
            Height = 25
            Caption = '&Close'
            TabOrder = 1
            OnClick = BtnClose1Click
            NumGlyphs = 2
          end
          object wwDBNavigatorInput: TwwDBNavigator
            Left = 0
            Top = 0
            Width = 249
            Height = 41
            AutosizeStyle = asSizeNavButtons
            DataSource = dsQMaster
            RepeatInterval.InitialDelay = 500
            RepeatInterval.Interval = 100
            Align = alLeft
            object wwDBNavigatorInputCancel: TwwNavButton
              Left = 0
              Top = 0
              Width = 83
              Height = 41
              Hint = 'Cancel changes made to current record'
              ImageIndex = -1
              NumGlyphs = 2
              ShowText = True
              Spacing = 4
              Transparent = False
              Caption = 'Ba&tal'
              Enabled = False
              DisabledTextColors.ShadeColor = clGray
              DisabledTextColors.HighlightColor = clBtnHighlight
              Index = 0
              Style = nbsCancel
            end
            object wwDBNavigatorInputButton1: TwwNavButton
              Left = 83
              Top = 0
              Width = 83
              Height = 41
              Hint = 'Insert new record'
              ImageIndex = -1
              NumGlyphs = 2
              ShowText = True
              Spacing = 4
              Transparent = False
              Caption = '&Baru'
              Enabled = False
              DisabledTextColors.ShadeColor = clGray
              DisabledTextColors.HighlightColor = clBtnHighlight
              Index = 1
              Style = nbsInsert
            end
            object wwDBNavigatorInputButton2: TwwNavButton
              Left = 166
              Top = 0
              Width = 83
              Height = 41
              Hint = 'Post changes of current record'
              ImageIndex = -1
              NumGlyphs = 2
              ShowText = True
              Spacing = 4
              Transparent = False
              Caption = '&Simpan'
              Enabled = False
              DisabledTextColors.ShadeColor = clGray
              DisabledTextColors.HighlightColor = clBtnHighlight
              Index = 2
              Style = nbsPost
            end
          end
          object CBPreview: TCheckBox
            Left = 439
            Top = 16
            Width = 97
            Height = 17
            Caption = 'Preview'
            Checked = True
            State = cbChecked
            TabOrder = 3
          end
          object RadioGroup1: TRadioGroup
            Left = 280
            Top = 0
            Width = 153
            Height = 41
            Caption = 'Ukuran Ketas'
            Columns = 2
            ItemIndex = 1
            Items.Strings = (
              'A4'
              'A5')
            TabOrder = 4
          end
          object BtnPrintInput: TBitBtn
            Left = 504
            Top = 6
            Width = 75
            Height = 25
            Caption = '&Print'
            TabOrder = 0
            OnClick = BtnPrintInputClick
            NumGlyphs = 2
          end
        end
        object PanelBand: TPanel
          Left = 0
          Top = 137
          Width = 986
          Height = 41
          Align = alTop
          BevelOuter = bvNone
          Color = clSkyBlue
          TabOrder = 1
          object Label14: TLabel
            Left = 921
            Top = 2
            Width = 43
            Height = 13
            Caption = 'Spasi (%)'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsUnderline]
            ParentFont = False
            OnClick = Label14Click
          end
          object Label15: TLabel
            Left = 8
            Top = 2
            Width = 44
            Height = 13
            Caption = 'Cari Nota'
          end
          object DBText4: TDBText
            Left = 320
            Top = 3
            Width = 50
            Height = 13
            AutoSize = True
            DataField = 'TGL_INSERT'
            DataSource = dsQMaster
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object DBText2: TDBText
            Left = 320
            Top = 23
            Width = 50
            Height = 13
            AutoSize = True
            DataField = 'OPR_INSERT'
            DataSource = dsQMaster
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label16: TLabel
            Left = 240
            Top = 3
            Width = 66
            Height = 13
            Caption = 'Tanggal Input'
          end
          object Label17: TLabel
            Left = 240
            Top = 23
            Width = 41
            Height = 13
            Caption = 'Operator'
          end
          object wwDBSpinLine1: TwwDBSpinEdit
            Left = 921
            Top = 18
            Width = 41
            Height = 19
            Increment = 100.000000000000000000
            MaxValue = 400.000000000000000000
            MinValue = 100.000000000000000000
            Value = 100.000000000000000000
            TabOrder = 0
            UnboundDataType = wwDefault
            OnChange = wwDBSpinLine1Change
          end
          object EditCari: TEdit
            Left = 8
            Top = 16
            Width = 129
            Height = 19
            TabOrder = 1
            OnKeyDown = EditCariKeyDown
          end
          object cbPost: TwwCheckBox
            Left = 632
            Top = 19
            Width = 81
            Height = 17
            DisableThemes = False
            AlwaysTransparent = False
            ValueChecked = '1'
            ValueUnchecked = '0'
            DisplayValueChecked = '1'
            DisplayValueUnchecked = '0'
            NullAndBlankState = cbUnchecked
            Caption = 'Posting'
            DataField = 'ISPOST'
            DataSource = dsQMaster
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 2
          end
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Browse'
        ImageIndex = 1
        object LabelBanner: TLabel
          Left = 0
          Top = 57
          Width = 986
          Height = 13
          Align = alTop
          Color = clSkyBlue
          ParentColor = False
        end
        object PanelFilter: TPanel
          Left = 0
          Top = 0
          Width = 986
          Height = 57
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          object Label2: TLabel
            Left = 128
            Top = 32
            Width = 20
            Height = 13
            Caption = 'S/D'
          end
          object Label3: TLabel
            Left = 8
            Top = 12
            Width = 44
            Height = 13
            Caption = 'Tgl. Awal'
          end
          object Label4: TLabel
            Left = 160
            Top = 12
            Width = 45
            Height = 13
            Caption = 'Tgl. Akhir'
          end
          object Label5: TLabel
            Left = 554
            Top = 16
            Width = 43
            Height = 13
            Cursor = crHandPoint
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
            Left = 352
            Top = 24
            Width = 89
            Height = 30
            GroupIndex = 1
            Caption = 'Mode &Cari'
            NumGlyphs = 2
            OnClick = BtnFindClick
          end
          object BtnOk2: TSpeedButton
            Left = 448
            Top = 24
            Width = 89
            Height = 30
            GroupIndex = 1
            Caption = '&Oke'
            NumGlyphs = 2
            OnClick = BtnOk2Click
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
            TabOrder = 0
            DisplayFormat = 'dd mmm yyyy'
            OnChange = vTglAwalChange
          end
          object vTglAkhir: TwwDBDateTimePicker
            Left = 160
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
            TabOrder = 1
            DisplayFormat = 'dd mmm yyyy'
          end
          object BtnOk: TBitBtn
            Left = 280
            Top = 26
            Width = 57
            Height = 25
            Caption = '&Ok'
            TabOrder = 2
            OnClick = BtnOkClick
            NumGlyphs = 2
          end
          object wwDBSpinLine2: TwwDBSpinEdit
            Left = 554
            Top = 32
            Width = 41
            Height = 19
            Increment = 100.000000000000000000
            MaxValue = 400.000000000000000000
            MinValue = 100.000000000000000000
            Value = 100.000000000000000000
            TabOrder = 3
            UnboundDataType = wwDefault
            OnChange = wwDBSpinLine2Change
          end
        end
        object PanelBrowse: TPanel
          Left = 0
          Top = 70
          Width = 986
          Height = 349
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 1
          object QuickRep2: TQuickRep
            Left = 106
            Top = -63
            Width = 794
            Height = 529
            Frame.Color = clBlack
            Frame.DrawTop = True
            Frame.DrawBottom = True
            Frame.DrawLeft = True
            Frame.DrawRight = True
            DataSet = QBrowse
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            Functions.Strings = (
              'PAGENUMBER'
              'COLUMNNUMBER'
              'REPORTTITLE')
            Functions.DATA = (
              '0'
              '0'
              #39#39)
            Options = [FirstPageHeader, LastPageFooter]
            Page.Columns = 1
            Page.Orientation = poPortrait
            Page.PaperSize = Custom
            Page.Values = (
              119.400000000000000000
              1399.500000000000000000
              61.000000000000000000
              2100.600000000000000000
              78.700000000000000000
              78.700000000000000000
              0.000000000000000000)
            PrinterSettings.Copies = 1
            PrinterSettings.Duplex = False
            PrinterSettings.FirstPage = 0
            PrinterSettings.LastPage = 0
            PrinterSettings.OutputBin = Auto
            PrintIfEmpty = True
            SnapToGrid = True
            Units = MM
            Zoom = 100
            object QRBand1: TQRBand
              Left = 30
              Top = 23
              Width = 735
              Height = 33
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = True
              Frame.DrawLeft = False
              Frame.DrawRight = False
              AlignToBottom = False
              Color = clWhite
              ForceNewColumn = False
              ForceNewPage = False
              Size.Values = (
                87.312500000000000000
                1944.687500000000000000)
              BandType = rbPageHeader
              object QRDBText1: TQRDBText
                Left = 8
                Top = 5
                Width = 105
                Height = 24
                Frame.Color = clBlack
                Frame.DrawTop = False
                Frame.DrawBottom = False
                Frame.DrawLeft = False
                Frame.DrawRight = False
                Size.Values = (
                  63.500000000000000000
                  21.166666666666670000
                  13.229166666666670000
                  277.812500000000000000)
                Alignment = taLeftJustify
                AlignToBand = False
                AutoSize = True
                AutoStretch = False
                Color = clWhite
                DataSet = DMFrm.Perusahaan
                DataField = 'PERUSAHAAN'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -19
                Font.Name = 'Arial Narrow'
                Font.Style = []
                ParentFont = False
                Transparent = False
                WordWrap = True
                FontSize = 14
              end
            end
            object QRBand2: TQRBand
              Left = 30
              Top = 56
              Width = 735
              Height = 64
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = True
              Frame.DrawLeft = False
              Frame.DrawRight = False
              AlignToBottom = False
              BeforePrint = QRBand2BeforePrint
              Color = clWhite
              ForceNewColumn = False
              ForceNewPage = False
              Size.Values = (
                169.333333333333300000
                1944.687500000000000000)
              BandType = rbTitle
              object QRLabel4: TQRLabel
                Left = 222
                Top = 8
                Width = 290
                Height = 20
                Frame.Color = clBlack
                Frame.DrawTop = False
                Frame.DrawBottom = False
                Frame.DrawLeft = False
                Frame.DrawRight = False
                Size.Values = (
                  52.916666666666670000
                  587.375000000000000000
                  21.166666666666670000
                  767.291666666666600000)
                Alignment = taCenter
                AlignToBand = True
                AutoSize = True
                AutoStretch = False
                Caption = 'SERAH TERIMA KE GUDANG WARNA'
                Color = clWhite
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -16
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
                Transparent = False
                WordWrap = True
                FontSize = 12
              end
              object QRLPeriode1: TQRLabel
                Left = 251
                Top = 32
                Width = 233
                Height = 17
                Frame.Color = clBlack
                Frame.DrawTop = False
                Frame.DrawBottom = False
                Frame.DrawLeft = False
                Frame.DrawRight = False
                Size.Values = (
                  44.979166666666670000
                  664.104166666666600000
                  84.666666666666680000
                  616.479166666666600000)
                Alignment = taCenter
                AlignToBand = True
                AutoSize = True
                AutoStretch = False
                Caption = 'SERAH TERIMA KE GUDANG WARNA'
                Color = clWhite
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
                Transparent = False
                WordWrap = True
                FontSize = 10
              end
            end
            object QRBand3: TQRBand
              Left = 30
              Top = 120
              Width = 735
              Height = 35
              Frame.Color = clBlack
              Frame.DrawTop = True
              Frame.DrawBottom = True
              Frame.DrawLeft = False
              Frame.DrawRight = False
              AlignToBottom = False
              Color = clWhite
              ForceNewColumn = False
              ForceNewPage = False
              Size.Values = (
                92.604166666666660000
                1944.687500000000000000)
              BandType = rbColumnHeader
              object QRLabel25: TQRLabel
                Left = 150
                Top = 1
                Width = 142
                Height = 17
                Frame.Color = clBlack
                Frame.DrawTop = False
                Frame.DrawBottom = False
                Frame.DrawLeft = False
                Frame.DrawRight = False
                Size.Values = (
                  44.979166666666670000
                  396.875000000000000000
                  2.645833333333333000
                  375.708333333333400000)
                Alignment = taCenter
                AlignToBand = False
                AutoSize = False
                AutoStretch = False
                Caption = 'BARANG'
                Color = clWhite
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
                Transparent = False
                WordWrap = True
                FontSize = 9
              end
              object QRLabel30: TQRLabel
                Left = 487
                Top = 17
                Width = 61
                Height = 16
                Frame.Color = clBlack
                Frame.DrawTop = False
                Frame.DrawBottom = False
                Frame.DrawLeft = False
                Frame.DrawRight = False
                Size.Values = (
                  42.333333333333340000
                  1288.520833333333000000
                  44.979166666666670000
                  161.395833333333300000)
                Alignment = taCenter
                AlignToBand = False
                AutoSize = False
                AutoStretch = False
                Caption = 'Kg'
                Color = clWhite
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
                Transparent = False
                WordWrap = True
                FontSize = 9
              end
              object QRLabel31: TQRLabel
                Left = 552
                Top = 17
                Width = 55
                Height = 16
                Frame.Color = clBlack
                Frame.DrawTop = False
                Frame.DrawBottom = False
                Frame.DrawLeft = True
                Frame.DrawRight = False
                Size.Values = (
                  42.333333333333340000
                  1460.500000000000000000
                  44.979166666666670000
                  145.520833333333300000)
                Alignment = taCenter
                AlignToBand = False
                AutoSize = False
                AutoStretch = False
                Caption = 'Pcs'
                Color = clWhite
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
                Transparent = False
                WordWrap = True
                FontSize = 9
              end
              object QRShape3: TQRShape
                Left = 32
                Top = 0
                Width = 1
                Height = 37
                Frame.Color = clBlack
                Frame.DrawTop = False
                Frame.DrawBottom = False
                Frame.DrawLeft = False
                Frame.DrawRight = False
                Size.Values = (
                  97.895833333333340000
                  84.666666666666680000
                  0.000000000000000000
                  2.645833333333333000)
                Shape = qrsVertLine
              end
              object QRLabel38: TQRLabel
                Left = 6
                Top = 8
                Width = 18
                Height = 17
                Frame.Color = clBlack
                Frame.DrawTop = False
                Frame.DrawBottom = False
                Frame.DrawLeft = False
                Frame.DrawRight = False
                Size.Values = (
                  44.979166666666670000
                  15.875000000000000000
                  21.166666666666670000
                  47.625000000000000000)
                Alignment = taLeftJustify
                AlignToBand = False
                AutoSize = True
                AutoStretch = False
                Caption = 'NO'
                Color = clWhite
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
                Transparent = False
                WordWrap = True
                FontSize = 9
              end
              object QRShape7: TQRShape
                Left = 145
                Top = 0
                Width = 1
                Height = 37
                Frame.Color = clBlack
                Frame.DrawTop = False
                Frame.DrawBottom = False
                Frame.DrawLeft = False
                Frame.DrawRight = False
                Size.Values = (
                  97.895833333333340000
                  383.645833333333400000
                  0.000000000000000000
                  2.645833333333333000)
                Shape = qrsVertLine
              end
              object QRLabel49: TQRLabel
                Left = 62
                Top = 8
                Width = 56
                Height = 17
                Frame.Color = clBlack
                Frame.DrawTop = False
                Frame.DrawBottom = False
                Frame.DrawLeft = False
                Frame.DrawRight = False
                Size.Values = (
                  44.979166666666670000
                  164.041666666666700000
                  21.166666666666670000
                  148.166666666666700000)
                Alignment = taLeftJustify
                AlignToBand = False
                AutoSize = True
                AutoStretch = False
                Caption = 'NO. NOTA'
                Color = clWhite
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
                Transparent = False
                WordWrap = True
                FontSize = 9
              end
              object QRLabel1: TQRLabel
                Left = 146
                Top = 15
                Width = 49
                Height = 18
                Frame.Color = clBlack
                Frame.DrawTop = True
                Frame.DrawBottom = False
                Frame.DrawLeft = False
                Frame.DrawRight = False
                Size.Values = (
                  47.625000000000000000
                  386.291666666666700000
                  39.687500000000000000
                  129.645833333333300000)
                Alignment = taCenter
                AlignToBand = False
                AutoSize = False
                AutoStretch = False
                Caption = 'Kode'
                Color = clWhite
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
                Transparent = False
                WordWrap = True
                FontSize = 9
              end
              object QRLabel2: TQRLabel
                Left = 198
                Top = 15
                Width = 95
                Height = 18
                Frame.Color = clBlack
                Frame.DrawTop = True
                Frame.DrawBottom = False
                Frame.DrawLeft = True
                Frame.DrawRight = False
                Size.Values = (
                  47.625000000000000000
                  523.875000000000000000
                  39.687500000000000000
                  251.354166666666700000)
                Alignment = taCenter
                AlignToBand = False
                AutoSize = False
                AutoStretch = False
                Caption = 'Nama'
                Color = clWhite
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
                Transparent = False
                WordWrap = True
                FontSize = 9
              end
              object QRLabel3: TQRLabel
                Left = 311
                Top = 9
                Width = 57
                Height = 16
                Frame.Color = clBlack
                Frame.DrawTop = False
                Frame.DrawBottom = False
                Frame.DrawLeft = False
                Frame.DrawRight = False
                Size.Values = (
                  42.333333333333340000
                  822.854166666666600000
                  23.812500000000000000
                  150.812500000000000000)
                Alignment = taCenter
                AlignToBand = False
                AutoSize = False
                AutoStretch = False
                Caption = 'WARNA'
                Color = clWhite
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
                Transparent = False
                WordWrap = True
                FontSize = 9
              end
              object QRShape1: TQRShape
                Left = 411
                Top = 0
                Width = 1
                Height = 34
                Frame.Color = clBlack
                Frame.DrawTop = False
                Frame.DrawBottom = False
                Frame.DrawLeft = False
                Frame.DrawRight = False
                Size.Values = (
                  89.958333333333340000
                  1087.437500000000000000
                  0.000000000000000000
                  2.645833333333333000)
                Shape = qrsVertLine
              end
              object QRLabel5: TQRLabel
                Left = 415
                Top = 9
                Width = 66
                Height = 16
                Frame.Color = clBlack
                Frame.DrawTop = False
                Frame.DrawBottom = False
                Frame.DrawLeft = False
                Frame.DrawRight = False
                Size.Values = (
                  42.333333333333340000
                  1098.020833333333000000
                  23.812500000000000000
                  174.625000000000000000)
                Alignment = taCenter
                AlignToBand = False
                AutoSize = False
                AutoStretch = False
                Caption = 'NO. BATCH'
                Color = clWhite
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
                Transparent = False
                WordWrap = True
                FontSize = 9
              end
              object QRShape2: TQRShape
                Left = 486
                Top = 0
                Width = 1
                Height = 37
                Frame.Color = clBlack
                Frame.DrawTop = False
                Frame.DrawBottom = False
                Frame.DrawLeft = False
                Frame.DrawRight = False
                Size.Values = (
                  97.895833333333340000
                  1285.875000000000000000
                  0.000000000000000000
                  2.645833333333333000)
                Shape = qrsVertLine
              end
              object QRLabel6: TQRLabel
                Left = 677
                Top = 16
                Width = 54
                Height = 17
                Frame.Color = clBlack
                Frame.DrawTop = False
                Frame.DrawBottom = False
                Frame.DrawLeft = True
                Frame.DrawRight = False
                Size.Values = (
                  44.979166666666670000
                  1791.229166666667000000
                  42.333333333333340000
                  142.875000000000000000)
                Alignment = taCenter
                AlignToBand = False
                AutoSize = False
                AutoStretch = False
                Caption = 'Pcs'
                Color = clWhite
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
                Transparent = False
                WordWrap = True
                FontSize = 9
              end
              object QRLabel7: TQRLabel
                Left = 610
                Top = 16
                Width = 64
                Height = 17
                Frame.Color = clBlack
                Frame.DrawTop = False
                Frame.DrawBottom = False
                Frame.DrawLeft = True
                Frame.DrawRight = False
                Size.Values = (
                  44.979166666666670000
                  1613.958333333333000000
                  42.333333333333340000
                  169.333333333333300000)
                Alignment = taCenter
                AlignToBand = False
                AutoSize = False
                AutoStretch = False
                Caption = 'Kg'
                Color = clWhite
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
                Transparent = False
                WordWrap = True
                FontSize = 9
              end
              object QRLabel8: TQRLabel
                Left = 610
                Top = 0
                Width = 123
                Height = 16
                Frame.Color = clBlack
                Frame.DrawTop = False
                Frame.DrawBottom = True
                Frame.DrawLeft = True
                Frame.DrawRight = False
                Size.Values = (
                  42.333333333333340000
                  1613.958333333333000000
                  0.000000000000000000
                  325.437500000000000000)
                Alignment = taCenter
                AlignToBand = False
                AutoSize = False
                AutoStretch = False
                Caption = 'TUJUAN'
                Color = clWhite
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
                Transparent = False
                WordWrap = True
                FontSize = 9
              end
              object QRLabel29: TQRLabel
                Left = 487
                Top = 0
                Width = 123
                Height = 16
                Frame.Color = clBlack
                Frame.DrawTop = False
                Frame.DrawBottom = True
                Frame.DrawLeft = False
                Frame.DrawRight = False
                Size.Values = (
                  42.333333333333340000
                  1288.520833333333000000
                  0.000000000000000000
                  325.437500000000000000)
                Alignment = taCenter
                AlignToBand = False
                AutoSize = False
                AutoStretch = False
                Caption = 'ASAL'
                Color = clWhite
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
                Transparent = False
                WordWrap = True
                FontSize = 9
              end
              object QRShape4: TQRShape
                Left = 294
                Top = 0
                Width = 1
                Height = 37
                Frame.Color = clBlack
                Frame.DrawTop = False
                Frame.DrawBottom = False
                Frame.DrawLeft = False
                Frame.DrawRight = False
                Size.Values = (
                  97.895833333333340000
                  777.875000000000000000
                  0.000000000000000000
                  2.645833333333333000)
                Shape = qrsVertLine
              end
            end
            object QRBand4: TQRBand
              Left = 30
              Top = 155
              Width = 735
              Height = 17
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              AlignToBottom = False
              Color = clWhite
              ForceNewColumn = False
              ForceNewPage = False
              Size.Values = (
                44.979166666666670000
                1944.687500000000000000)
              BandType = rbDetail
              object QRSysData2: TQRSysData
                Left = 4
                Top = 0
                Width = 29
                Height = 17
                Frame.Color = clBlack
                Frame.DrawTop = False
                Frame.DrawBottom = False
                Frame.DrawLeft = False
                Frame.DrawRight = True
                Size.Values = (
                  44.979166666666670000
                  10.583333333333330000
                  0.000000000000000000
                  76.729166666666680000)
                Alignment = taCenter
                AlignToBand = False
                AutoSize = False
                Color = clWhite
                Data = qrsDetailNo
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Arial Narrow'
                Font.Style = []
                ParentFont = False
                Transparent = False
                FontSize = 9
              end
              object QRShape8: TQRShape
                Left = 144
                Top = -2
                Width = 3
                Height = 20
                Frame.Color = clBlack
                Frame.DrawTop = False
                Frame.DrawBottom = False
                Frame.DrawLeft = False
                Frame.DrawRight = False
                Size.Values = (
                  52.916666666666660000
                  381.000000000000000000
                  -5.291666666666667000
                  7.937500000000000000)
                Shape = qrsVertLine
              end
              object QRDBText2: TQRDBText
                Left = 37
                Top = 0
                Width = 51
                Height = 17
                Frame.Color = clBlack
                Frame.DrawTop = False
                Frame.DrawBottom = False
                Frame.DrawLeft = False
                Frame.DrawRight = False
                Size.Values = (
                  44.979166666666670000
                  97.895833333333340000
                  0.000000000000000000
                  134.937500000000000000)
                Alignment = taLeftJustify
                AlignToBand = False
                AutoSize = True
                AutoStretch = False
                Color = clWhite
                DataSet = QBrowse
                DataField = 'NO_NOTA'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
                Transparent = False
                WordWrap = True
                FontSize = 8
              end
              object QRShape9: TQRShape
                Left = 197
                Top = -2
                Width = 3
                Height = 20
                Frame.Color = clBlack
                Frame.DrawTop = False
                Frame.DrawBottom = False
                Frame.DrawLeft = False
                Frame.DrawRight = False
                Size.Values = (
                  52.916666666666660000
                  521.229166666666800000
                  -5.291666666666667000
                  7.937500000000000000)
                Shape = qrsVertLine
              end
              object QRShape10: TQRShape
                Left = 292
                Top = -2
                Width = 3
                Height = 20
                Frame.Color = clBlack
                Frame.DrawTop = False
                Frame.DrawBottom = False
                Frame.DrawLeft = False
                Frame.DrawRight = False
                Size.Values = (
                  52.916666666666660000
                  772.583333333333400000
                  -5.291666666666667000
                  7.937500000000000000)
                Shape = qrsVertLine
              end
              object QRShape11: TQRShape
                Left = 410
                Top = -2
                Width = 3
                Height = 20
                Frame.Color = clBlack
                Frame.DrawTop = False
                Frame.DrawBottom = False
                Frame.DrawLeft = False
                Frame.DrawRight = False
                Size.Values = (
                  52.916666666666660000
                  1084.791666666667000000
                  -5.291666666666667000
                  7.937500000000000000)
                Shape = qrsVertLine
              end
              object QRShape12: TQRShape
                Left = 485
                Top = -2
                Width = 3
                Height = 20
                Frame.Color = clBlack
                Frame.DrawTop = False
                Frame.DrawBottom = False
                Frame.DrawLeft = False
                Frame.DrawRight = False
                Size.Values = (
                  52.916666666666660000
                  1283.229166666667000000
                  -5.291666666666667000
                  7.937500000000000000)
                Shape = qrsVertLine
              end
              object QRShape13: TQRShape
                Left = 552
                Top = -2
                Width = 3
                Height = 20
                Frame.Color = clBlack
                Frame.DrawTop = False
                Frame.DrawBottom = False
                Frame.DrawLeft = False
                Frame.DrawRight = False
                Size.Values = (
                  52.916666666666660000
                  1460.500000000000000000
                  -5.291666666666667000
                  7.937500000000000000)
                Shape = qrsVertLine
              end
              object QRShape14: TQRShape
                Left = 610
                Top = -2
                Width = 3
                Height = 20
                Frame.Color = clBlack
                Frame.DrawTop = False
                Frame.DrawBottom = False
                Frame.DrawLeft = False
                Frame.DrawRight = False
                Size.Values = (
                  52.916666666666660000
                  1613.958333333333000000
                  -5.291666666666667000
                  7.937500000000000000)
                Shape = qrsVertLine
              end
              object QRShape15: TQRShape
                Left = 677
                Top = -2
                Width = 3
                Height = 20
                Frame.Color = clBlack
                Frame.DrawTop = False
                Frame.DrawBottom = False
                Frame.DrawLeft = False
                Frame.DrawRight = False
                Size.Values = (
                  52.916666666666660000
                  1791.229166666667000000
                  -5.291666666666667000
                  7.937500000000000000)
                Shape = qrsVertLine
              end
              object QRDBText3: TQRDBText
                Left = 149
                Top = 0
                Width = 45
                Height = 17
                Frame.Color = clBlack
                Frame.DrawTop = False
                Frame.DrawBottom = False
                Frame.DrawLeft = False
                Frame.DrawRight = False
                Size.Values = (
                  44.979166666666670000
                  394.229166666666700000
                  0.000000000000000000
                  119.062500000000000000)
                Alignment = taLeftJustify
                AlignToBand = False
                AutoSize = False
                AutoStretch = False
                Color = clWhite
                DataSet = QBrowse
                DataField = 'KODE_BRG'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
                Transparent = False
                WordWrap = True
                FontSize = 8
              end
              object QRDBText4: TQRDBText
                Left = 205
                Top = 0
                Width = 85
                Height = 17
                Frame.Color = clBlack
                Frame.DrawTop = False
                Frame.DrawBottom = False
                Frame.DrawLeft = False
                Frame.DrawRight = False
                Size.Values = (
                  44.979166666666670000
                  542.395833333333400000
                  0.000000000000000000
                  224.895833333333300000)
                Alignment = taLeftJustify
                AlignToBand = False
                AutoSize = False
                AutoStretch = False
                Color = clWhite
                DataSet = QBrowse
                DataField = 'NAMA_BRG'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
                Transparent = False
                WordWrap = True
                FontSize = 8
              end
              object QRDBText5: TQRDBText
                Left = 298
                Top = 0
                Width = 41
                Height = 17
                Frame.Color = clBlack
                Frame.DrawTop = False
                Frame.DrawBottom = False
                Frame.DrawLeft = False
                Frame.DrawRight = False
                Size.Values = (
                  44.979166666666670000
                  788.458333333333400000
                  0.000000000000000000
                  108.479166666666700000)
                Alignment = taLeftJustify
                AlignToBand = False
                AutoSize = True
                AutoStretch = False
                Color = clWhite
                DataSet = QBrowse
                DataField = 'WARNA'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
                Transparent = False
                WordWrap = True
                FontSize = 8
              end
              object QRDBText6: TQRDBText
                Left = 414
                Top = 0
                Width = 70
                Height = 17
                Frame.Color = clBlack
                Frame.DrawTop = False
                Frame.DrawBottom = False
                Frame.DrawLeft = False
                Frame.DrawRight = False
                Size.Values = (
                  44.979166666666670000
                  1095.375000000000000000
                  0.000000000000000000
                  185.208333333333300000)
                Alignment = taCenter
                AlignToBand = False
                AutoSize = False
                AutoStretch = False
                Color = clWhite
                DataSet = QBrowse
                DataField = 'NO_BATCH'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
                Transparent = False
                WordWrap = True
                FontSize = 8
              end
              object QRDBText7: TQRDBText
                Left = 492
                Top = 0
                Width = 58
                Height = 17
                Frame.Color = clBlack
                Frame.DrawTop = False
                Frame.DrawBottom = False
                Frame.DrawLeft = False
                Frame.DrawRight = False
                Size.Values = (
                  44.979166666666670000
                  1301.750000000000000000
                  0.000000000000000000
                  153.458333333333300000)
                Alignment = taRightJustify
                AlignToBand = False
                AutoSize = False
                AutoStretch = False
                Color = clWhite
                DataSet = QBrowse
                DataField = 'QTY1'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                Mask = '0.0,0;(0.0,0);-'
                ParentFont = False
                Transparent = False
                WordWrap = True
                FontSize = 8
              end
              object QRDBText8: TQRDBText
                Left = 560
                Top = 0
                Width = 49
                Height = 17
                Frame.Color = clBlack
                Frame.DrawTop = False
                Frame.DrawBottom = False
                Frame.DrawLeft = False
                Frame.DrawRight = False
                Size.Values = (
                  44.979166666666670000
                  1481.666666666667000000
                  0.000000000000000000
                  129.645833333333300000)
                Alignment = taRightJustify
                AlignToBand = False
                AutoSize = False
                AutoStretch = False
                Color = clWhite
                DataSet = QBrowse
                DataField = 'QTY6'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                Mask = '#,#;(#,#);-'
                ParentFont = False
                Transparent = False
                WordWrap = True
                FontSize = 8
              end
              object QRDBText9: TQRDBText
                Left = 622
                Top = 0
                Width = 54
                Height = 17
                Frame.Color = clBlack
                Frame.DrawTop = False
                Frame.DrawBottom = False
                Frame.DrawLeft = False
                Frame.DrawRight = False
                Size.Values = (
                  44.979166666666670000
                  1645.708333333333000000
                  0.000000000000000000
                  142.875000000000000000)
                Alignment = taRightJustify
                AlignToBand = False
                AutoSize = False
                AutoStretch = False
                Color = clWhite
                DataSet = QBrowse
                DataField = 'QTY2'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                Mask = '0.0,0;(0.0,0);-'
                ParentFont = False
                Transparent = False
                WordWrap = True
                FontSize = 8
              end
              object QRDBText10: TQRDBText
                Left = 683
                Top = 0
                Width = 47
                Height = 17
                Frame.Color = clBlack
                Frame.DrawTop = False
                Frame.DrawBottom = False
                Frame.DrawLeft = False
                Frame.DrawRight = False
                Size.Values = (
                  44.979166666666670000
                  1807.104166666667000000
                  0.000000000000000000
                  124.354166666666700000)
                Alignment = taRightJustify
                AlignToBand = False
                AutoSize = False
                AutoStretch = False
                Color = clWhite
                DataSet = QBrowse
                DataField = 'QTY7'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                Mask = '#,#;(#,#);-'
                ParentFont = False
                Transparent = False
                WordWrap = True
                FontSize = 8
              end
            end
            object QRBand5: TQRBand
              Left = 30
              Top = 172
              Width = 735
              Height = 149
              Frame.Color = clBlack
              Frame.DrawTop = True
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              AlignToBottom = False
              BeforePrint = QRBand5BeforePrint
              Color = clWhite
              ForceNewColumn = False
              ForceNewPage = False
              Size.Values = (
                394.229166666666700000
                1944.687500000000000000)
              BandType = rbSummary
              object QRLabel39: TQRLabel
                Left = 416
                Top = 4
                Width = 38
                Height = 17
                Frame.Color = clBlack
                Frame.DrawTop = False
                Frame.DrawBottom = False
                Frame.DrawLeft = False
                Frame.DrawRight = False
                Size.Values = (
                  44.979166666666670000
                  1100.666666666667000000
                  10.583333333333330000
                  100.541666666666700000)
                Alignment = taLeftJustify
                AlignToBand = False
                AutoSize = True
                AutoStretch = False
                Caption = 'TOTAL'
                Color = clWhite
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
                Transparent = False
                WordWrap = True
                FontSize = 8
              end
              object QRLabel40: TQRLabel
                Left = 123
                Top = 111
                Width = 137
                Height = 17
                Frame.Color = clBlack
                Frame.DrawTop = False
                Frame.DrawBottom = False
                Frame.DrawLeft = False
                Frame.DrawRight = False
                Size.Values = (
                  44.979166666666670000
                  325.437500000000000000
                  293.687500000000000000
                  362.479166666666700000)
                Alignment = taLeftJustify
                AlignToBand = False
                AutoSize = False
                AutoStretch = False
                Caption = 'Sub Dept Head Dyeing'
                Color = clWhite
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Arial'
                Font.Style = [fsItalic]
                ParentFont = False
                Transparent = False
                WordWrap = True
                FontSize = 10
              end
              object QRLabel41: TQRLabel
                Left = 502
                Top = 111
                Width = 78
                Height = 17
                Frame.Color = clBlack
                Frame.DrawTop = False
                Frame.DrawBottom = False
                Frame.DrawLeft = False
                Frame.DrawRight = False
                Size.Values = (
                  44.979166666666670000
                  1328.208333333333000000
                  293.687500000000000000
                  206.375000000000000000)
                Alignment = taLeftJustify
                AlignToBand = False
                AutoSize = False
                AutoStretch = False
                Caption = 'Adm Dyeing'
                Color = clWhite
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Arial'
                Font.Style = [fsItalic]
                ParentFont = False
                Transparent = False
                WordWrap = True
                FontSize = 10
              end
              object QRLabel42: TQRLabel
                Left = 123
                Top = 95
                Width = 137
                Height = 17
                Frame.Color = clBlack
                Frame.DrawTop = False
                Frame.DrawBottom = False
                Frame.DrawLeft = False
                Frame.DrawRight = False
                Size.Values = (
                  44.979166666666670000
                  325.437500000000000000
                  251.354166666666700000
                  362.479166666666700000)
                Alignment = taCenter
                AlignToBand = False
                AutoSize = False
                AutoStretch = False
                Caption = 'GURITNO'
                Color = clWhite
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Arial'
                Font.Style = [fsBold, fsUnderline]
                ParentFont = False
                Transparent = False
                WordWrap = True
                FontSize = 10
              end
              object QRLabel44: TQRLabel
                Left = 158
                Top = 31
                Width = 76
                Height = 17
                Frame.Color = clBlack
                Frame.DrawTop = False
                Frame.DrawBottom = False
                Frame.DrawLeft = False
                Frame.DrawRight = False
                Size.Values = (
                  44.979166666666670000
                  418.041666666666700000
                  82.020833333333340000
                  201.083333333333300000)
                Alignment = taLeftJustify
                AlignToBand = False
                AutoSize = False
                AutoStretch = False
                Caption = 'Mengetahui,'
                Color = clWhite
                Transparent = False
                WordWrap = True
                FontSize = 10
              end
              object QRLabel45: TQRLabel
                Left = 502
                Top = 31
                Width = 77
                Height = 17
                Frame.Color = clBlack
                Frame.DrawTop = False
                Frame.DrawBottom = False
                Frame.DrawLeft = False
                Frame.DrawRight = False
                Size.Values = (
                  44.979166666666670000
                  1328.208333333333000000
                  82.020833333333340000
                  203.729166666666700000)
                Alignment = taLeftJustify
                AlignToBand = False
                AutoSize = False
                AutoStretch = False
                Caption = 'Dibuat Oleh,'
                Color = clWhite
                Transparent = False
                WordWrap = True
                FontSize = 10
              end
              object QRShape5: TQRShape
                Left = 411
                Top = 20
                Width = 324
                Height = 3
                Frame.Color = clBlack
                Frame.DrawTop = False
                Frame.DrawBottom = False
                Frame.DrawLeft = False
                Frame.DrawRight = False
                Size.Values = (
                  7.937500000000000000
                  1087.437500000000000000
                  52.916666666666660000
                  857.250000000000000000)
                Shape = qrsHorLine
              end
              object QRShape6: TQRShape
                Left = 553
                Top = 0
                Width = 1
                Height = 22
                Frame.Color = clBlack
                Frame.DrawTop = False
                Frame.DrawBottom = False
                Frame.DrawLeft = False
                Frame.DrawRight = False
                Size.Values = (
                  58.208333333333340000
                  1463.145833333333000000
                  0.000000000000000000
                  2.645833333333333000)
                Shape = qrsVertLine
              end
              object QRShape16: TQRShape
                Left = 410
                Top = 0
                Width = 3
                Height = 22
                Frame.Color = clBlack
                Frame.DrawTop = False
                Frame.DrawBottom = False
                Frame.DrawLeft = False
                Frame.DrawRight = False
                Size.Values = (
                  58.208333333333340000
                  1084.791666666667000000
                  0.000000000000000000
                  7.937500000000000000)
                Shape = qrsVertLine
              end
              object QRShape17: TQRShape
                Left = 486
                Top = 0
                Width = 1
                Height = 22
                Frame.Color = clBlack
                Frame.DrawTop = False
                Frame.DrawBottom = False
                Frame.DrawLeft = False
                Frame.DrawRight = False
                Size.Values = (
                  58.208333333333340000
                  1285.875000000000000000
                  0.000000000000000000
                  2.645833333333333000)
                Shape = qrsVertLine
              end
              object QRShape18: TQRShape
                Left = 611
                Top = 0
                Width = 1
                Height = 22
                Frame.Color = clBlack
                Frame.DrawTop = False
                Frame.DrawBottom = False
                Frame.DrawLeft = False
                Frame.DrawRight = False
                Size.Values = (
                  58.208333333333340000
                  1616.604166666667000000
                  0.000000000000000000
                  2.645833333333333000)
                Shape = qrsVertLine
              end
              object QRShape19: TQRShape
                Left = 678
                Top = 0
                Width = 1
                Height = 22
                Frame.Color = clBlack
                Frame.DrawTop = False
                Frame.DrawBottom = False
                Frame.DrawLeft = False
                Frame.DrawRight = False
                Size.Values = (
                  58.208333333333340000
                  1793.875000000000000000
                  0.000000000000000000
                  2.645833333333333000)
                Shape = qrsVertLine
              end
              object QRExpr1: TQRExpr
                Left = 492
                Top = 3
                Width = 57
                Height = 17
                Frame.Color = clBlack
                Frame.DrawTop = False
                Frame.DrawBottom = False
                Frame.DrawLeft = False
                Frame.DrawRight = False
                Size.Values = (
                  44.979166666666670000
                  1301.750000000000000000
                  7.937500000000000000
                  150.812500000000000000)
                Alignment = taRightJustify
                AlignToBand = False
                AutoSize = False
                AutoStretch = False
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                Color = clWhite
                ParentFont = False
                ResetAfterPrint = False
                Transparent = False
                WordWrap = True
                Expression = 'SUM(QBrowse.QTY1)'
                Mask = '0.0,0;(0.0,0);-'
                FontSize = 8
              end
              object QRExpr2: TQRExpr
                Left = 557
                Top = 2
                Width = 52
                Height = 17
                Frame.Color = clBlack
                Frame.DrawTop = False
                Frame.DrawBottom = False
                Frame.DrawLeft = False
                Frame.DrawRight = False
                Size.Values = (
                  44.979166666666670000
                  1473.729166666667000000
                  5.291666666666667000
                  137.583333333333300000)
                Alignment = taRightJustify
                AlignToBand = False
                AutoSize = False
                AutoStretch = False
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                Color = clWhite
                ParentFont = False
                ResetAfterPrint = False
                Transparent = False
                WordWrap = True
                Expression = 'SUM(QBrowse.QTY6)'
                Mask = '#,#;(#,#);-'
                FontSize = 8
              end
              object QRExpr3: TQRExpr
                Left = 621
                Top = 2
                Width = 54
                Height = 17
                Frame.Color = clBlack
                Frame.DrawTop = False
                Frame.DrawBottom = False
                Frame.DrawLeft = False
                Frame.DrawRight = False
                Size.Values = (
                  44.979166666666670000
                  1643.062500000000000000
                  5.291666666666667000
                  142.875000000000000000)
                Alignment = taRightJustify
                AlignToBand = False
                AutoSize = False
                AutoStretch = False
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                Color = clWhite
                ParentFont = False
                ResetAfterPrint = False
                Transparent = False
                WordWrap = True
                Expression = 'SUM(QBrowse.QTY2)'
                Mask = '0.0,0;(0.0,0);-'
                FontSize = 8
              end
              object QRExpr4: TQRExpr
                Left = 682
                Top = 2
                Width = 49
                Height = 17
                Frame.Color = clBlack
                Frame.DrawTop = False
                Frame.DrawBottom = False
                Frame.DrawLeft = False
                Frame.DrawRight = False
                Size.Values = (
                  44.979166666666670000
                  1804.458333333333000000
                  5.291666666666667000
                  129.645833333333300000)
                Alignment = taRightJustify
                AlignToBand = False
                AutoSize = False
                AutoStretch = False
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                Color = clWhite
                ParentFont = False
                ResetAfterPrint = False
                Transparent = False
                WordWrap = True
                Expression = 'SUM(QBrowse.QTY7)'
                Mask = '#,#;(#,#);-'
                FontSize = 8
              end
              object QRDBText11: TQRDBText
                Left = 519
                Top = 93
                Width = 36
                Height = 17
                Frame.Color = clBlack
                Frame.DrawTop = False
                Frame.DrawBottom = False
                Frame.DrawLeft = False
                Frame.DrawRight = False
                Size.Values = (
                  44.979166666666670000
                  1373.187500000000000000
                  246.062500000000000000
                  95.250000000000000000)
                Alignment = taCenter
                AlignToBand = False
                AutoSize = True
                AutoStretch = False
                Color = clWhite
                DataSet = DMFrm.QDateTime
                DataField = 'USER'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Arial'
                Font.Style = [fsBold, fsUnderline]
                ParentFont = False
                Transparent = False
                WordWrap = True
                FontSize = 10
              end
            end
            object QRBand6: TQRBand
              Left = 30
              Top = 321
              Width = 735
              Height = 20
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              AlignToBottom = True
              BeforePrint = QRBand6BeforePrint
              Color = clWhite
              ForceNewColumn = False
              ForceNewPage = False
              Size.Values = (
                52.916666666666670000
                1944.687500000000000000)
              BandType = rbPageFooter
              object QRDBText12: TQRDBText
                Left = 14
                Top = 3
                Width = 76
                Height = 16
                Frame.Color = clBlack
                Frame.DrawTop = False
                Frame.DrawBottom = False
                Frame.DrawLeft = False
                Frame.DrawRight = False
                Size.Values = (
                  42.333333333333340000
                  37.041666666666670000
                  7.937500000000000000
                  201.083333333333300000)
                Alignment = taLeftJustify
                AlignToBand = False
                AutoSize = True
                AutoStretch = False
                Color = clWhite
                DataSet = DMFrm.QDateTime
                DataField = 'VUSER_CETAK'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
                Transparent = False
                WordWrap = True
                FontSize = 8
              end
            end
          end
          object wwDBGrid2: TwwDBGrid
            Left = 0
            Top = 0
            Width = 986
            Height = 349
            ControlType.Strings = (
              'ISPOST;CheckBox;1;0')
            Selected.Strings = (
              'NO_NOTA'#9'14'#9'NO NOTA'#9'F'
              'TANGGAL'#9'11'#9'TANGGAL'#9'F'
              'SHIFT'#9'4'#9'SHIFT'#9'F'
              'GRUP'#9'4'#9'GRUP'#9'F'
              'KODE_BRG'#9'8'#9'Kode'#9'F'#9'BARANG'
              'NAMA_BRG'#9'15'#9'Nama'#9'F'#9'BARANG'
              'RASIO'#9'7'#9'RASIO'#9'F'
              'WARNA'#9'20'#9'WARNA'#9'F'
              'NO_BATCH'#9'6'#9'NO BATCH'#9'F'
              'ISPOST'#9'8'#9'ISPOST'#9'F'
              'LOKASI'#9'8'#9'Lokasi'#9'F'#9'ASAL'
              'QTY1'#9'12'#9'Kg'#9'F'#9'ASAL'
              'QTY6'#9'7'#9'PCS'#9'F'#9'ASAL'
              'LOKASI2'#9'8'#9'Lokasi'#9'F'#9'TUJUAN'
              'QTY2'#9'12'#9'Kg'#9'F'#9'TUJUAN'
              'QTY7'#9'7'#9'PCS'#9'F'#9'TUJUAN'
              'NO_LOT'#9'14'#9'NO LOT'#9'F'
              'JENIS'#9'20'#9'JENIS'#9'F')
            IniAttributes.Enabled = True
            IniAttributes.Delimiter = ';;'
            IniAttributes.CheckNewFields = True
            ExportOptions.ExportType = wwgetSYLK
            ExportOptions.Options = [esoShowHeader, esoShowFooter, esoShowTitle, esoDblQuoteFields, esoBestColFit, esoShowRecordNo, esoShowAlternating]
            TitleColor = clBackground
            FixedCols = 0
            ShowHorzScrollBar = True
            EditControlOptions = [ecoSearchOwnerForm, ecoDisableDateTimePicker]
            Align = alClient
            BorderStyle = bsNone
            Ctl3D = False
            DataSource = dsQBrowse
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            KeyOptions = []
            Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgPerfectRowFit, dgShowFooter, dgNoLimitColSize, dgTrailingEllipsis, dgRowResize, dgFixedProportionalResize, dgDblClickColSizing]
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 0
            TitleAlignment = taCenter
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWhite
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            TitleLines = 3
            TitleButtons = True
            UseTFields = False
            OnTitleButtonClick = wwDBGrid2TitleButtonClick
            OnDblClick = wwDBGrid2DblClick
          end
        end
        object PanelFooter2: TPanel
          Left = 0
          Top = 419
          Width = 986
          Height = 41
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 2
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
          object BtnClose2: TBitBtn
            Left = 394
            Top = 8
            Width = 75
            Height = 25
            Caption = '&Close'
            TabOrder = 1
            OnClick = BtnClose2Click
            NumGlyphs = 2
          end
          object BtnExport: TBitBtn
            Left = 234
            Top = 8
            Width = 75
            Height = 25
            Caption = '&Export'
            TabOrder = 2
            OnClick = BtnExportClick
            NumGlyphs = 2
          end
          object BtnPrintBrowse: TBitBtn
            Left = 314
            Top = 8
            Width = 75
            Height = 25
            Caption = '&Print'
            TabOrder = 3
            OnClick = BtnPrintBrowseClick
            NumGlyphs = 2
          end
          object BtnDesign2: TBitBtn
            Left = 152
            Top = 8
            Width = 75
            Height = 25
            Caption = 'Design'
            TabOrder = 4
            OnClick = BtnDesign2Click
            NumGlyphs = 2
          end
        end
      end
      object TabSheet3: TTabSheet
        Caption = 'SOP'
        ImageIndex = 2
        OnShow = TabSheet3Show
        object wwDBRichEdit1: TwwDBRichEdit
          Left = 0
          Top = 0
          Width = 986
          Height = 460
          Align = alClient
          AutoURLDetect = False
          Color = clInfoBk
          DataField = 'SINOPSIS'
          DataSource = dsQSOP
          PrintJobName = 'Delphi 6'
          TabOrder = 0
          EditorCaption = 'Edit Rich Text'
          EditorPosition.Left = 0
          EditorPosition.Top = 0
          EditorPosition.Width = 100
          EditorPosition.Height = 50
          MeasurementUnits = muInches
          PrintMargins.Top = 1.000000000000000000
          PrintMargins.Bottom = 1.000000000000000000
          PrintMargins.Left = 1.000000000000000000
          PrintMargins.Right = 1.000000000000000000
          PrintHeader.VertMargin = 0.500000000000000000
          PrintHeader.Font.Charset = DEFAULT_CHARSET
          PrintHeader.Font.Color = clWindowText
          PrintHeader.Font.Height = -11
          PrintHeader.Font.Name = 'MS Sans Serif'
          PrintHeader.Font.Style = []
          PrintFooter.VertMargin = 0.500000000000000000
          PrintFooter.Font.Charset = DEFAULT_CHARSET
          PrintFooter.Font.Color = clWindowText
          PrintFooter.Font.Height = -11
          PrintFooter.Font.Name = 'MS Sans Serif'
          PrintFooter.Font.Style = []
          RichEditVersion = 2
          Data = {
            810000007B5C727466315C616E73695C616E7369637067313235325C64656666
            305C6465666C616E67313033337B5C666F6E7474626C7B5C66305C666E696C20
            4D532053616E732053657269663B7D7D0D0A5C766965776B696E64345C756331
            5C706172645C66305C6673313620777744425269636845646974315C7061720D
            0A7D0D0A00}
        end
      end
    end
  end
  object QBrowse: TOracleDataSet
    SQL.Strings = (
      'select * from vpindahlokasi2frm')
    QBEDefinition.QBEFieldDefs = {
      0400000019000000070000004E4F5F4E4F54410100000000000700000054414E
      4747414C01000000000006000000535441545553010000000000080000004B4F
      44455F425247010000000000080000004E414D415F4252470100000000000600
      00004C4F4B4153490100000000000C0000004B445F5452414E53414B53490100
      0000000005000000534849465401000000000004000000475255500100000000
      00060000004B445F4449560100000000000B0000004E414D415F444956495349
      0100000000000600000053415455414E01000000000004000000515459310100
      000000000A0000004A4E535F4C4F4B4153490100000000000400000051545932
      010000000000070000004C4F4B41534932010000000000040000005154593601
      0000000000040000005154593701000000000005000000524153494F01000000
      0000050000005741524E41010000000000080000004E4F5F4241544348010000
      000000060000004942554B5449010000000000060000004E4F5F4C4F54010000
      000000060000004953504F5354010000000000050000004A454E495301000000
      0000}
    Cursor = crSQLWait
    ReadOnly = True
    QueryAllRecords = False
    Session = DMFrm.OS
    AfterScroll = QBrowseAfterScroll
    Left = 848
    Top = 8
    object QBrowseNO_NOTA: TStringField
      FieldName = 'NO_NOTA'
    end
    object QBrowseTANGGAL: TDateTimeField
      FieldName = 'TANGGAL'
      DisplayFormat = 'dd mmm yyyy'
    end
    object QBrowseSHIFT: TStringField
      FieldName = 'SHIFT'
      Size = 1
    end
    object QBrowseGRUP: TStringField
      FieldName = 'GRUP'
      Size = 1
    end
    object QBrowseKD_DIV: TStringField
      FieldName = 'KD_DIV'
      Size = 5
    end
    object QBrowseNAMA_DIVISI: TStringField
      FieldName = 'NAMA_DIVISI'
      Size = 50
    end
    object QBrowseKODE_BRG: TStringField
      FieldName = 'KODE_BRG'
      Size = 50
    end
    object QBrowseNAMA_BRG: TStringField
      FieldName = 'NAMA_BRG'
      Size = 50
    end
    object QBrowseSATUAN: TStringField
      FieldName = 'SATUAN'
      Size = 12
    end
    object QBrowseQTY1: TFloatField
      FieldName = 'QTY1'
      DisplayFormat = '#,0.0000;-#,0.0000;-'
    end
    object QBrowseLOKASI: TStringField
      FieldName = 'LOKASI'
      Size = 12
    end
    object QBrowseQTY2: TFloatField
      FieldName = 'QTY2'
      DisplayFormat = '#,0.0000;-#,0.0000;-'
    end
    object QBrowseLOKASI2: TStringField
      FieldName = 'LOKASI2'
      Size = 12
    end
    object QBrowseWARNA: TStringField
      FieldName = 'WARNA'
      Size = 50
    end
    object QBrowseNO_BATCH: TStringField
      FieldName = 'NO_BATCH'
      Size = 50
    end
    object QBrowseIBUKTI: TFloatField
      FieldName = 'IBUKTI'
    end
    object QBrowseQTY6: TFloatField
      FieldName = 'QTY6'
      DisplayFormat = '#,0;-#,0;-'
    end
    object QBrowseQTY7: TFloatField
      FieldName = 'QTY7'
      DisplayFormat = '#,0;-#,0;-'
    end
    object QBrowseNO_LOT: TStringField
      FieldName = 'NO_LOT'
      Size = 22
    end
    object QBrowseISPOST: TStringField
      FieldName = 'ISPOST'
      Size = 1
    end
    object QBrowseRASIO: TFloatField
      FieldName = 'RASIO'
      DisplayFormat = '#,0.0000;-#,0.0000;-  '
    end
    object QBrowseJENIS: TStringField
      FieldName = 'JENIS'
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
    PrinterSetup.PaperName = 'Custom'
    PrinterSetup.PrinterName = 'Fax'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 210000
    PrinterSetup.mmPaperWidth = 297000
    PrinterSetup.PaperSize = 256
    Template.FileName = 'D:\_Proyek\iPismaTex\Aplikasi\Report\ts.rtm'
    Units = utMillimeters
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
    Left = 952
    Top = 8
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
        AutoSize = False
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
        mmLeft = 6615
        mmTop = 16933
        mmWidth = 275432
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
        AutoSize = False
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
        mmLeft = 6615
        mmTop = 23283
        mmWidth = 275432
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
        mmHeight = 4304
        mmLeft = 6615
        mmTop = 1058
        mmWidth = 58985
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
        mmHeight = 4163
        mmLeft = 6615
        mmTop = 6085
        mmWidth = 67592
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
        mmHeight = 4163
        mmLeft = 6615
        mmTop = 10583
        mmWidth = 82550
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
        mmTop = 28575
        mmWidth = 28840
        BandType = 1
      end
    end
    object ppHeaderBand1: TppHeaderBand
      BeforePrint = ppHeaderBand1BeforePrint
      mmBottomOffset = 0
      mmHeight = 7408
      mmPrintPosition = 0
      object ppLabel2: TppLabel
        UserName = 'Label2'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'NO. NOTA'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 12965
        mmTop = 2910
        mmWidth = 13494
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'TANGGAL'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 38365
        mmTop = 2910
        mmWidth = 13494
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'DIVISI'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 55033
        mmTop = 2910
        mmWidth = 7938
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
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
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3316
        mmLeft = 211607
        mmTop = 2910
        mmWidth = 11501
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
        mmLeft = 4498
        mmTop = 2910
        mmWidth = 8202
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'SHIFT/GRUP'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3316
        mmLeft = 94386
        mmTop = 2910
        mmWidth = 17004
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
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
        mmLeft = 114300
        mmTop = 2910
        mmWidth = 8202
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'QTY'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3440
        mmLeft = 230717
        mmTop = 2910
        mmWidth = 8731
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
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
        mmLeft = 140759
        mmTop = 2910
        mmWidth = 21167
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'LOKASI'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 245534
        mmTop = 2910
        mmWidth = 10319
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
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
      mmHeight = 3969
      mmPrintPosition = 0
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'KODE_BRG'
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
        mmLeft = 114300
        mmTop = 529
        mmWidth = 25929
        BandType = 4
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'QTY1'
        DataPipeline = ppDBQBrowseDetail
        DisplayFormat = '#,#'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBQBrowseDetail'
        mmHeight = 3175
        mmLeft = 228600
        mmTop = 529
        mmWidth = 14023
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'LOKASI'
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
        mmLeft = 245534
        mmTop = 529
        mmWidth = 29104
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'SATUAN'
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
        mmLeft = 213519
        mmTop = 529
        mmWidth = 12435
        BandType = 4
      end
      object ppDBMemo3: TppDBMemo
        UserName = 'DBMemo3'
        SaveOrder = 0
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        CharWrap = False
        DataField = 'NAMA_BRG'
        DataPipeline = ppDBQBrowseDetail
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBQBrowseDetail'
        mmHeight = 3440
        mmLeft = 140759
        mmTop = 529
        mmWidth = 71702
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeading = 0
      end
      object ppNo: TppVariable
        UserName = 'No'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        BlankWhenZero = False
        CalcOrder = 0
        DataType = dtInteger
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 5292
        mmTop = 529
        mmWidth = 7673
        BandType = 4
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'NO_NOTA'
        DataPipeline = ppDBQBrowseDetail
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        SuppressRepeatedValues = True
        Transparent = True
        DataPipelineName = 'ppDBQBrowseDetail'
        mmHeight = 3175
        mmLeft = 13758
        mmTop = 529
        mmWidth = 22754
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'TANGGAL'
        DataPipeline = ppDBQBrowseDetail
        DisplayFormat = 'dd/mm/yyyy'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBQBrowseDetail'
        mmHeight = 3175
        mmLeft = 38100
        mmTop = 529
        mmWidth = 16140
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'KD_DIV'
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
        mmLeft = 55033
        mmTop = 529
        mmWidth = 8996
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'NAMA_DIVISI'
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
        mmLeft = 64558
        mmTop = 529
        mmWidth = 32544
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'SHIFT'
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
        mmLeft = 97367
        mmTop = 529
        mmWidth = 4763
        BandType = 4
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'GRUP'
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
        mmLeft = 104246
        mmTop = 529
        mmWidth = 4763
        BandType = 4
      end
      object ppLabel18: TppLabel
        UserName = 'Label14'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '/'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 102659
        mmTop = 529
        mmWidth = 794
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
      mmHeight = 48419
      mmPrintPosition = 0
      object ppDBText19: TppDBText
        UserName = 'DBText19'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'TTD1'
        DataPipeline = ppDBQMaster
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold, fsUnderline]
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBQMaster'
        mmHeight = 4233
        mmLeft = 3175
        mmTop = 21696
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
        DataField = 'TTD1'
        DataPipeline = ppDBQMaster
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold, fsUnderline]
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBQMaster'
        mmHeight = 4233
        mmLeft = 41275
        mmTop = 21696
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
        DataField = 'TTD1'
        DataPipeline = ppDBQMaster
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold, fsUnderline]
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBQMaster'
        mmHeight = 4233
        mmLeft = 79375
        mmTop = 21696
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
        mmLeft = 79375
        mmTop = 8996
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
        mmHeight = 3440
        mmLeft = 41275
        mmTop = 8996
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
        mmHeight = 3440
        mmLeft = 3175
        mmTop = 8996
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
        mmLeft = 79375
        mmTop = 25929
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
        mmLeft = 41275
        mmTop = 25929
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
        mmLeft = 3175
        mmTop = 25929
        mmWidth = 33602
        BandType = 7
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object ppDBQBrowseDetail: TppDBPipeline
    DataSource = dsQBrowse
    CloseDataSource = True
    OpenDataSource = False
    UserName = 'DBQBrowseDetail'
    Left = 920
    Top = 8
    object ppDBQBrowseDetailppField1: TppField
      FieldAlias = 'NO_NOTA'
      FieldName = 'NO_NOTA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppDBQBrowseDetailppField2: TppField
      FieldAlias = 'TANGGAL'
      FieldName = 'TANGGAL'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppDBQBrowseDetailppField3: TppField
      FieldAlias = 'SHIFT'
      FieldName = 'SHIFT'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppDBQBrowseDetailppField4: TppField
      FieldAlias = 'GRUP'
      FieldName = 'GRUP'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppDBQBrowseDetailppField5: TppField
      FieldAlias = 'KD_DIV'
      FieldName = 'KD_DIV'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppDBQBrowseDetailppField6: TppField
      FieldAlias = 'NAMA_DIVISI'
      FieldName = 'NAMA_DIVISI'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppDBQBrowseDetailppField7: TppField
      FieldAlias = 'KODE_BRG'
      FieldName = 'KODE_BRG'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppDBQBrowseDetailppField8: TppField
      FieldAlias = 'NAMA_BRG'
      FieldName = 'NAMA_BRG'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppDBQBrowseDetailppField9: TppField
      FieldAlias = 'SATUAN'
      FieldName = 'SATUAN'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppDBQBrowseDetailppField10: TppField
      FieldAlias = 'QTY1'
      FieldName = 'QTY1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object ppDBQBrowseDetailppField11: TppField
      FieldAlias = 'LOKASI'
      FieldName = 'LOKASI'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object ppDBQBrowseDetailppField12: TppField
      FieldAlias = 'QTY2'
      FieldName = 'QTY2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object ppDBQBrowseDetailppField13: TppField
      FieldAlias = 'LOKASI2'
      FieldName = 'LOKASI2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object ppDBQBrowseDetailppField14: TppField
      FieldAlias = 'WARNA'
      FieldName = 'WARNA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object ppDBQBrowseDetailppField15: TppField
      FieldAlias = 'NO_BATCH'
      FieldName = 'NO_BATCH'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object ppDBQBrowseDetailppField16: TppField
      FieldAlias = 'IBUKTI'
      FieldName = 'IBUKTI'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object ppDBQBrowseDetailppField17: TppField
      FieldAlias = 'QTY6'
      FieldName = 'QTY6'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
    object ppDBQBrowseDetailppField18: TppField
      FieldAlias = 'QTY7'
      FieldName = 'QTY7'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 17
      Searchable = False
      Sortable = False
    end
    object ppDBQBrowseDetailppField19: TppField
      FieldAlias = 'NO_LOT'
      FieldName = 'NO_LOT'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 18
      Searchable = False
      Sortable = False
    end
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
  object dsQBrowseDetail: TwwDataSource
    Left = 904
    Top = 104
  end
  object ppDBPerusahaan: TppDBPipeline
    DataSource = DMFrm.dsPerusahaan
    OpenDataSource = False
    UserName = 'DBPerusahaan'
    Left = 920
    Top = 72
    object ppDBPerusahaanppField1: TppField
      FieldAlias = 'PERUSAHAAN'
      FieldName = 'PERUSAHAAN'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppDBPerusahaanppField2: TppField
      FieldAlias = 'ALAMAT1'
      FieldName = 'ALAMAT1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppDBPerusahaanppField3: TppField
      FieldAlias = 'ALAMAT2'
      FieldName = 'ALAMAT2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppDBPerusahaanppField4: TppField
      FieldAlias = 'ALAMAT3'
      FieldName = 'ALAMAT3'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppDBPerusahaanppField5: TppField
      FieldAlias = 'TELEPON1'
      FieldName = 'TELEPON1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppDBPerusahaanppField6: TppField
      FieldAlias = 'TELEPON2'
      FieldName = 'TELEPON2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppDBPerusahaanppField7: TppField
      FieldAlias = 'TELEPON3'
      FieldName = 'TELEPON3'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppDBPerusahaanppField8: TppField
      FieldAlias = 'WEBSITE'
      FieldName = 'WEBSITE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppDBPerusahaanppField9: TppField
      FieldAlias = 'EMAIL'
      FieldName = 'EMAIL'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppDBPerusahaanppField10: TppField
      FieldAlias = 'NPWP'
      FieldName = 'NPWP'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
  end
  object QMaster: TOracleDataSet
    SQL.Strings = (
      'select a.*, a.rowid from ipisma_db3.bukti a'
      'where (a.ibukti=:myparam1) or (a.no_nota=:myparam2)')
    Variables.Data = {
      0300000002000000090000003A4D59504152414D310300000000000000000000
      00090000003A4D59504152414D32050000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      0400000016000000070000004E4F5F4E4F54410100000000000C0000004B445F
      5452414E53414B53490100000000000300000054474C0100000000000A000000
      4B45544552414E47414E0100000000000A00000054474C5F494E534552540100
      000000000A0000004F50525F494E53455254010000000000060000004953504F
      5354010000000000080000004E4F5F42554B5449010000000000060000004942
      554B5449010000000000080000004E4F5F524553455001000000000006000000
      535441545553010000000000060000004B445F44495601000000000005000000
      5348494654010000000000040000004752555001000000000004000000545444
      3101000000000004000000545444320100000000000400000054544433010000
      0000000400000054544434010000000000090000005154595F52455345500100
      00000000090000005154595F42455241540100000000000A0000005154595F53
      5052494E47010000000000050000004A454E4953010000000000}
    Cursor = crSQLWait
    RefreshOptions = [roAfterInsert, roAfterUpdate]
    Session = DMFrm.OS
    BeforeInsert = QMasterBeforeInsert
    BeforeEdit = QMasterBeforeDelete
    BeforePost = QMasterBeforePost
    AfterPost = QMasterAfterPost
    AfterCancel = QMasterAfterDelete
    BeforeDelete = QMasterBeforeDelete
    AfterDelete = QMasterAfterDelete
    OnNewRecord = QMasterNewRecord
    Left = 40
    Top = 16
    object QMasterIBUKTI: TFloatField
      FieldName = 'IBUKTI'
    end
    object QMasterNO_NOTA: TStringField
      FieldName = 'NO_NOTA'
    end
    object QMasterKD_TRANSAKSI: TStringField
      FieldName = 'KD_TRANSAKSI'
      Size = 3
    end
    object QMasterTGL: TDateTimeField
      FieldName = 'TGL'
      DisplayFormat = 'dd mmm yyyy'
    end
    object QMasterKETERANGAN: TStringField
      FieldName = 'KETERANGAN'
      Size = 255
    end
    object QMasterISPOST: TStringField
      FieldName = 'ISPOST'
      Size = 1
    end
    object QMasterNO_BUKTI: TStringField
      FieldName = 'NO_BUKTI'
      Size = 25
    end
    object QMasterTTD1: TStringField
      FieldName = 'TTD1'
      Size = 30
    end
    object QMasterTTD2: TStringField
      FieldName = 'TTD2'
      Size = 30
    end
    object QMasterTTD3: TStringField
      FieldName = 'TTD3'
      Size = 30
    end
    object QMasterTTD4: TStringField
      FieldName = 'TTD4'
      Size = 30
    end
    object QMasterSHIFT: TStringField
      FieldName = 'SHIFT'
      Size = 1
    end
    object QMasterGRUP: TStringField
      FieldName = 'GRUP'
      Size = 1
    end
    object QMasterKD_DIV: TStringField
      FieldName = 'KD_DIV'
      Size = 5
    end
    object QMasterLDIVISI: TStringField
      FieldKind = fkLookup
      FieldName = 'LDIVISI'
      LookupDataSet = DMFrm.QDivisi
      LookupKeyFields = 'KD_DIV'
      LookupResultField = 'NAMA_DIVISI'
      KeyFields = 'KD_DIV'
      Size = 50
      Lookup = True
    end
    object QMasterSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 10
    end
    object QMasterTGL_INSERT: TDateTimeField
      FieldName = 'TGL_INSERT'
    end
    object QMasterOPR_INSERT: TStringField
      FieldName = 'OPR_INSERT'
      Size = 30
    end
    object QMasterJENIS: TStringField
      FieldName = 'JENIS'
    end
  end
  object dsQMaster: TwwDataSource
    DataSet = QMaster
    Left = 32
    Top = 72
  end
  object QDetail: TOracleDataSet
    SQL.Strings = (
      'select a.*, a.rowid from ipisma_db3.bukti_detail a'
      'where ibukti = :ibukti')
    Variables.Data = {0300000001000000070000003A4942554B5449040000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000001D000000070000004B445F4954454D0100000000000A00000054474C
      5F494E534552540100000000000A0000004F50525F494E534552540100000000
      00060000004942554B54490100000000000D0000004942554B54495F44455441
      494C010000000000080000004E4F5F42554B54490100000000000A0000004B45
      544552414E47414E010000000000040000005154593101000000000004000000
      5154593201000000000004000000515459330100000000000400000051545934
      0100000000000400000051545935010000000000040000005154593601000000
      00000D0000004B445F5355425F4C4F4B4153490100000000000E0000004B445F
      5355425F4C4F4B41534932010000000000040000005154593701000000000004
      0000005154593801000000000004000000515459390100000000000500000051
      5459313001000000000006000000535441545553010000000000090000004B44
      5F53415455414E01000000000005000000524153494F01000000000006000000
      4B445F444956010000000000080000004E4F5F4D4553494E0100000000000800
      00004B445F4954454D32010000000000040000004A414D310100000000000400
      00004A414D32010000000000080000004B445F5741524E410100000000000800
      00004E4F5F4241544348010000000000}
    Cursor = crSQLWait
    Master = QMaster
    MasterFields = 'IBUKTI'
    DetailFields = 'IBUKTI'
    RefreshOptions = [roAfterInsert, roAfterUpdate]
    Session = DMFrm.OS
    BeforeInsert = QMasterBeforeDelete
    BeforeEdit = QMasterBeforeDelete
    BeforePost = QDetailBeforePost
    BeforeDelete = QMasterBeforeDelete
    OnNewRecord = QDetailNewRecord
    Left = 32
    Top = 112
    object QDetailIBUKTI_DETAIL: TFloatField
      FieldName = 'IBUKTI_DETAIL'
    end
    object QDetailKD_ITEM: TStringField
      FieldName = 'KD_ITEM'
    end
    object QDetailLITEM: TStringField
      FieldKind = fkLookup
      FieldName = 'LITEM'
      LookupDataSet = DMFrm.QItemAll
      LookupKeyFields = 'KD_ITEM'
      LookupResultField = 'NAMA_ITEM'
      KeyFields = 'KD_ITEM'
      Size = 50
      Lookup = True
    end
    object QDetailIBUKTI: TFloatField
      FieldName = 'IBUKTI'
    end
    object QDetailQTY1: TFloatField
      FieldName = 'QTY1'
      DisplayFormat = '#,0.0000;-#,0.0000;-'
    end
    object QDetailKETERANGAN: TStringField
      FieldName = 'KETERANGAN'
      Size = 255
    end
    object QDetailKD_SUB_LOKASI: TStringField
      FieldName = 'KD_SUB_LOKASI'
      Size = 12
    end
    object QDetailQTY2: TFloatField
      FieldName = 'QTY2'
      DisplayFormat = '#,0.0000;-#,0.0000;-'
    end
    object QDetailKD_SUB_LOKASI2: TStringField
      FieldName = 'KD_SUB_LOKASI2'
      Size = 12
    end
    object QDetailQTY6: TFloatField
      FieldName = 'QTY6'
      DisplayFormat = '#,0.0000;-#,0.0000;-'
    end
    object QDetailQTY7: TFloatField
      FieldName = 'QTY7'
      DisplayFormat = '#,0.0000;-#,0.0000;-'
    end
    object QDetailKD_WARNA: TStringField
      FieldName = 'KD_WARNA'
      Size = 6
    end
    object QDetailNO_BATCH: TStringField
      FieldName = 'NO_BATCH'
      Size = 50
    end
    object QDetailWARNA: TStringField
      FieldKind = fkLookup
      FieldName = 'WARNA'
      LookupDataSet = DMFrm.QWarna
      LookupKeyFields = 'KD_WARNA'
      LookupResultField = 'WARNA'
      KeyFields = 'KD_WARNA'
      Size = 50
      Lookup = True
    end
    object QDetailRASIO: TFloatField
      FieldName = 'RASIO'
      DisplayFormat = '#,0.0000;-#,0.0000;-  '
    end
    object QDetailKD_ITEM2: TStringField
      FieldName = 'KD_ITEM2'
      Size = 22
    end
  end
  object dsQDetail: TwwDataSource
    DataSet = QDetail
    Left = 32
    Top = 168
  end
  object ppReportInput: TppReport
    AutoStop = False
    DataPipeline = ppDBQDetail
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Custom'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 139700
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 256
    Template.FileName = 'D:\_Proyek\iPismaTex\Aplikasi\Report\TransaksiOrgBukti.rtm'
    Units = utMillimeters
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
    Left = 168
    Top = 64
    Version = '12.03'
    mmColumnWidth = 197300
    DataPipelineName = 'ppDBQDetail'
    object ppTitleBand2: TppTitleBand
      BeforePrint = ppTitleBand1BeforePrint
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 41804
      mmPrintPosition = 0
      object ppDBText26: TppDBText
        UserName = 'DBText4'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'NO_BUKTI'
        DataPipeline = ppDBQMaster
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        SuppressRepeatedValues = True
        Transparent = True
        DataPipelineName = 'ppDBQMaster'
        mmHeight = 4233
        mmLeft = 23019
        mmTop = 21696
        mmWidth = 18034
        BandType = 1
      end
      object ppLabel25: TppLabel
        UserName = 'Label25'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Telah diserahkan barang-barang berikut :'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4586
        mmLeft = 4233
        mmTop = 36777
        mmWidth = 64347
        BandType = 1
      end
      object ppDBText23: TppDBText
        UserName = 'DBText1'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'NO_NOTA'
        DataPipeline = ppDBQMaster
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 14
        Font.Style = []
        ParentDataPipeline = False
        SuppressRepeatedValues = True
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBQMaster'
        mmHeight = 5856
        mmLeft = 175190
        mmTop = 5027
        mmWidth = 19544
        BandType = 1
      end
      object ppDBText24: TppDBText
        UserName = 'DBText2'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'TGL'
        DataPipeline = ppDBQMaster
        DisplayFormat = 'dd mmm yyyy'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        SuppressRepeatedValues = True
        Transparent = True
        DataPipelineName = 'ppDBQMaster'
        mmHeight = 4233
        mmLeft = 170127
        mmTop = 23019
        mmWidth = 6858
        BandType = 1
      end
      object ppDBText27: TppDBText
        UserName = 'DBText6'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'SHIFT'
        DataPipeline = ppDBQMaster
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        SuppressRepeatedValues = True
        Transparent = True
        DataPipelineName = 'ppDBQMaster'
        mmHeight = 4233
        mmLeft = 170392
        mmTop = 29633
        mmWidth = 3969
        BandType = 1
      end
      object ppLabel17: TppLabel
        UserName = 'Label17'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Tanggal :'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4498
        mmLeft = 152400
        mmTop = 23019
        mmWidth = 14552
        BandType = 1
      end
      object ppLabel14: TppLabel
        UserName = 'Label18'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'No. Nota'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 183621
        mmTop = 1323
        mmWidth = 11113
        BandType = 1
      end
      object ppLabel32: TppLabel
        UserName = 'Label32'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Shift/ Grup :'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4163
        mmLeft = 148238
        mmTop = 29633
        mmWidth = 18979
        BandType = 1
      end
      object ppDBText28: TppDBText
        UserName = 'DBText28'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'GRUP'
        DataPipeline = ppDBQMaster
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        SuppressRepeatedValues = True
        Transparent = True
        DataPipelineName = 'ppDBQMaster'
        mmHeight = 4233
        mmLeft = 176742
        mmTop = 29633
        mmWidth = 10075
        BandType = 1
      end
      object ppLabel33: TppLabel
        UserName = 'Label33'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '/'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 174890
        mmTop = 29633
        mmWidth = 1058
        BandType = 1
      end
      object ppDBText25: TppDBText
        UserName = 'DBText25'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'LDIVISI'
        DataPipeline = ppDBQMaster
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        SuppressRepeatedValues = True
        Transparent = True
        DataPipelineName = 'ppDBQMaster'
        mmHeight = 4233
        mmLeft = 23019
        mmTop = 28046
        mmWidth = 12446
        BandType = 1
      end
      object ppLabel20: TppLabel
        UserName = 'Label20'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'No. Bukti'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 4233
        mmTop = 21696
        mmWidth = 14288
        BandType = 1
      end
      object ppLabel35: TppLabel
        UserName = 'Label201'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Divisi'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 4233
        mmTop = 28046
        mmWidth = 8731
        BandType = 1
      end
      object ppLabel15: TppLabel
        UserName = 'Label202'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = ':'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 19844
        mmTop = 21696
        mmWidth = 1058
        BandType = 1
      end
      object ppLabel16: TppLabel
        UserName = 'Label16'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = ':'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 19844
        mmTop = 28046
        mmWidth = 1058
        BandType = 1
      end
      object ppDBText15: TppDBText
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
        mmHeight = 4233
        mmLeft = 4233
        mmTop = 1588
        mmWidth = 59002
        BandType = 1
      end
      object ppDBText50: TppDBText
        UserName = 'DBText50'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'NAMA_TRANSAKSI'
        DataPipeline = ppDBQTransaksi
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 18
        Font.Style = [fsUnderline]
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBQTransaksi'
        mmHeight = 7408
        mmLeft = 72072
        mmTop = 7938
        mmWidth = 47413
        BandType = 1
      end
      object ppVariable2: TppVariable
        UserName = 'Variable1'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        BlankWhenZero = False
        CalcOrder = 0
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3440
        mmLeft = 90488
        mmTop = 15875
        mmWidth = 11377
        BandType = 1
      end
      object ppLabel31: TppLabel
        UserName = 'Label31'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'No.Doc :'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4163
        mmLeft = 153194
        mmTop = 16933
        mmWidth = 13758
        BandType = 1
      end
      object ppDBText17: TppDBText
        UserName = 'DBText17'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'DOC_ISO'
        DataPipeline = ppDBQTransaksi
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBQTransaksi'
        mmHeight = 3969
        mmLeft = 170127
        mmTop = 16933
        mmWidth = 23548
        BandType = 1
      end
    end
    object ppHeaderBand2: TppHeaderBand
      BeforePrint = ppHeaderBand1BeforePrint
      mmBottomOffset = 0
      mmHeight = 10848
      mmPrintPosition = 0
      object ppLabel26: TppLabel
        UserName = 'Label6'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = [bpBottom]
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = True
        Caption = 'NO'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 4233
        mmTop = 5821
        mmWidth = 5292
        BandType = 0
      end
      object ppLabel22: TppLabel
        UserName = 'Label2'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = [bpBottom]
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = True
        Caption = 'ITEM'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 11642
        mmTop = 5821
        mmWidth = 44979
        BandType = 0
      end
      object ppLabel24: TppLabel
        UserName = 'Label4'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = [bpBottom]
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = True
        Caption = 'SATUAN'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 118004
        mmTop = 5821
        mmWidth = 14552
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'JUMLAH'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 146579
        mmTop = 529
        mmWidth = 14647
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = [bpBottom]
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = True
        Caption = 'LOKASI'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 176213
        mmTop = 5821
        mmWidth = 15610
        BandType = 0
      end
      object ppLabel21: TppLabel
        UserName = 'Label21'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = [bpBottom]
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = True
        Caption = 'TUJUAN'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 159544
        mmTop = 5821
        mmWidth = 14309
        BandType = 0
      end
      object ppLabel28: TppLabel
        UserName = 'Label28'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = [bpBottom]
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = True
        Caption = 'ASAL'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 142346
        mmTop = 5821
        mmWidth = 9483
        BandType = 0
      end
      object ppLabel19: TppLabel
        UserName = 'Label19'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = [bpBottom]
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = True
        Caption = 'WARNA'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 61913
        mmTop = 5821
        mmWidth = 29633
        BandType = 0
      end
      object ppLabel30: TppLabel
        UserName = 'Label30'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = [bpBottom]
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = True
        Caption = 'BATCH'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 98425
        mmTop = 5821
        mmWidth = 16140
        BandType = 0
      end
    end
    object ppDetailBand2: TppDetailBand
      BeforePrint = ppDetailBand2BeforePrint
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
      mmHeight = 6350
      mmPrintPosition = 0
      object ppNo2: TppVariable
        UserName = 'No'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        BlankWhenZero = False
        CalcOrder = 0
        DataType = dtInteger
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 4233
        mmTop = 1323
        mmWidth = 4498
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
        DataField = 'KETERANGAN'
        DataPipeline = ppDBQDetail
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Stretch = True
        Transparent = True
        DataPipelineName = 'ppDBQDetail'
        mmHeight = 4233
        mmLeft = 11642
        mmTop = 1323
        mmWidth = 44979
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeading = 0
      end
      object ppDBText11: TppDBText
        UserName = 'DBText3'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'QTY7'
        DataPipeline = ppDBQDetail
        DisplayFormat = '#,##0.##;(#,##0.##)'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBQDetail'
        mmHeight = 4233
        mmLeft = 158486
        mmTop = 1323
        mmWidth = 15346
        BandType = 4
      end
      object ppDBText20: TppDBText
        UserName = 'DBText20'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'KD_SUB_LOKASI2'
        DataPipeline = ppDBQDetail
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBQDetail'
        mmHeight = 4487
        mmLeft = 175155
        mmTop = 1323
        mmWidth = 17727
        BandType = 4
      end
      object ppDBText18: TppDBText
        UserName = 'DBText18'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'QTY6'
        DataPipeline = ppDBQDetail
        DisplayFormat = '#,##0.##;(#,##0.##)'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBQDetail'
        mmHeight = 4233
        mmLeft = 136525
        mmTop = 1323
        mmWidth = 15346
        BandType = 4
      end
      object ppDBText29: TppDBText
        UserName = 'DBText301'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'WARNA'
        DataPipeline = ppDBQDetail
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBQDetail'
        mmHeight = 4487
        mmLeft = 61913
        mmTop = 1323
        mmWidth = 13208
        BandType = 4
      end
      object ppDBText21: TppDBText
        UserName = 'DBText21'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'NO_BATCH'
        DataPipeline = ppDBQDetail
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBQDetail'
        mmHeight = 4487
        mmLeft = 98425
        mmTop = 1323
        mmWidth = 19050
        BandType = 4
      end
      object ppLabel23: TppLabel
        UserName = 'Label23'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'PCS'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4498
        mmLeft = 122502
        mmTop = 1323
        mmWidth = 7144
        BandType = 4
      end
    end
    object ppFooterBand2: TppFooterBand
      BeforePrint = ppFooterBand2BeforePrint
      mmBottomOffset = 0
      mmHeight = 5027
      mmPrintPosition = 0
      object ppUserCetak2: TppLabel
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
        Transparent = True
        mmHeight = 3175
        mmLeft = 4233
        mmTop = 794
        mmWidth = 28840
        BandType = 8
      end
      object ppDBText41: TppDBText
        UserName = 'DBText41'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'DISTRIBUSI'
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
        mmHeight = 3260
        mmLeft = 91107
        mmTop = 794
        mmWidth = 15960
        BandType = 8
      end
    end
    object ppSummaryBand2: TppSummaryBand
      PrintHeight = phDynamic
      AlignToBottom = False
      mmBottomOffset = 0
      mmHeight = 35719
      mmPrintPosition = 0
      object ppLabel29: TppLabel
        UserName = 'Label29'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Catatan :'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsUnderline]
        Transparent = True
        mmHeight = 4163
        mmLeft = 3440
        mmTop = 2910
        mmWidth = 14393
        BandType = 7
      end
      object ppDBMemo2: TppDBMemo
        UserName = 'DBMemo2'
        SaveOrder = 0
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        CharWrap = False
        DataField = 'KETERANGAN'
        DataPipeline = ppDBQDetail
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Stretch = True
        Transparent = True
        DataPipelineName = 'ppDBQDetail'
        mmHeight = 4233
        mmLeft = 19050
        mmTop = 2910
        mmWidth = 70115
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeading = 0
      end
      object ppDBText32: TppDBText
        UserName = 'DBText32'
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
        mmLeft = 3175
        mmTop = 26988
        mmWidth = 33602
        BandType = 7
      end
      object ppDBText33: TppDBText
        UserName = 'DBText33'
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
        mmLeft = 41275
        mmTop = 26988
        mmWidth = 33602
        BandType = 7
      end
      object ppDBText34: TppDBText
        UserName = 'DBText34'
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
        mmLeft = 79375
        mmTop = 26988
        mmWidth = 33602
        BandType = 7
      end
      object ppDBText35: TppDBText
        UserName = 'DBText35'
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
        mmLeft = 79375
        mmTop = 10054
        mmWidth = 33602
        BandType = 7
      end
      object ppDBText36: TppDBText
        UserName = 'DBText36'
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
        mmHeight = 3440
        mmLeft = 41275
        mmTop = 10054
        mmWidth = 33602
        BandType = 7
      end
      object ppDBText37: TppDBText
        UserName = 'DBText37'
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
        mmHeight = 3440
        mmLeft = 3175
        mmTop = 10054
        mmWidth = 33602
        BandType = 7
      end
      object ppDBText38: TppDBText
        UserName = 'DBText38'
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
        mmLeft = 79375
        mmTop = 31221
        mmWidth = 33602
        BandType = 7
      end
      object ppDBText39: TppDBText
        UserName = 'DBText39'
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
        mmLeft = 41275
        mmTop = 31221
        mmWidth = 33602
        BandType = 7
      end
      object ppDBText40: TppDBText
        UserName = 'DBText40'
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
        mmLeft = 3175
        mmTop = 31221
        mmWidth = 33602
        BandType = 7
      end
      object ppDBCalc1: TppDBCalc
        UserName = 'DBCalc1'
        HyperlinkColor = clBlue
        Border.BorderPositions = [bpTop]
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = True
        DataField = 'QTY6'
        DataPipeline = ppDBQDetail
        DisplayFormat = '#,##0.##;(#,##0.##)'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBQDetail'
        mmHeight = 3969
        mmLeft = 132821
        mmTop = 2381
        mmWidth = 19050
        BandType = 7
      end
      object ppDBCalc2: TppDBCalc
        UserName = 'DBCalc2'
        HyperlinkColor = clBlue
        Border.BorderPositions = [bpTop]
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = True
        DataField = 'QTY7'
        DataPipeline = ppDBQDetail
        DisplayFormat = '#,##0.##;(#,##0.##)'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBQDetail'
        mmHeight = 3969
        mmLeft = 154517
        mmTop = 2381
        mmWidth = 19315
        BandType = 7
      end
      object ppLabel27: TppLabel
        UserName = 'Label27'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'TOTAL'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4064
        mmLeft = 103675
        mmTop = 3175
        mmWidth = 11515
        BandType = 7
      end
    end
    object ppPageStyle1: TppPageStyle
      EndPage = 0
      SinglePage = 0
      StartPage = 0
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object raCodeModule1: TraCodeModule
      ProgramStream = {
        01060F5472614576656E7448616E646C65720B50726F6772616D4E616D65060F
        5661726961626C65314F6E43616C630B50726F6772616D54797065070B747450
        726F63656475726506536F75726365066C70726F636564757265205661726961
        626C65314F6E43616C63287661722056616C75653A2056617269616E74293B0D
        0A626567696E0D0A56616C7565203A3D20274D6F64656C203A20272B20444251
        5472616E73616B73695B27505245464958275D0D0A0D0A656E643B0D0A0D436F
        6D706F6E656E744E616D6506095661726961626C6531094576656E744E616D65
        06064F6E43616C63074576656E74494402210000}
    end
    object ppParameterList2: TppParameterList
    end
  end
  object ppDBQMaster: TppDBPipeline
    DataSource = dsQMaster
    OpenDataSource = False
    UserName = 'DBQMaster'
    Left = 112
    Top = 24
    object ppDBQMasterppField1: TppField
      FieldAlias = 'IBUKTI'
      FieldName = 'IBUKTI'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppDBQMasterppField2: TppField
      FieldAlias = 'NO_NOTA'
      FieldName = 'NO_NOTA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppDBQMasterppField3: TppField
      FieldAlias = 'KD_TRANSAKSI'
      FieldName = 'KD_TRANSAKSI'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppDBQMasterppField4: TppField
      FieldAlias = 'TGL'
      FieldName = 'TGL'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppDBQMasterppField5: TppField
      FieldAlias = 'KETERANGAN'
      FieldName = 'KETERANGAN'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppDBQMasterppField6: TppField
      FieldAlias = 'ISPOST'
      FieldName = 'ISPOST'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppDBQMasterppField7: TppField
      FieldAlias = 'NO_BUKTI'
      FieldName = 'NO_BUKTI'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppDBQMasterppField8: TppField
      FieldAlias = 'TTD1'
      FieldName = 'TTD1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppDBQMasterppField9: TppField
      FieldAlias = 'TTD2'
      FieldName = 'TTD2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppDBQMasterppField10: TppField
      FieldAlias = 'TTD3'
      FieldName = 'TTD3'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object ppDBQMasterppField11: TppField
      FieldAlias = 'TTD4'
      FieldName = 'TTD4'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object ppDBQMasterppField12: TppField
      FieldAlias = 'SHIFT'
      FieldName = 'SHIFT'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object ppDBQMasterppField13: TppField
      FieldAlias = 'GRUP'
      FieldName = 'GRUP'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object ppDBQMasterppField14: TppField
      FieldAlias = 'KD_DIV'
      FieldName = 'KD_DIV'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object ppDBQMasterppField15: TppField
      FieldAlias = 'LDIVISI'
      FieldName = 'LDIVISI'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object ppDBQMasterppField16: TppField
      FieldAlias = 'STATUS'
      FieldName = 'STATUS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object ppDBQMasterppField17: TppField
      FieldAlias = 'TGL_INSERT'
      FieldName = 'TGL_INSERT'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
    object ppDBQMasterppField18: TppField
      FieldAlias = 'OPR_INSERT'
      FieldName = 'OPR_INSERT'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 17
      Searchable = False
      Sortable = False
    end
  end
  object ppDBQDetail: TppDBPipeline
    DataSource = dsQDetail
    OpenDataSource = False
    UserName = 'DBQDetail'
    Left = 112
    Top = 80
    MasterDataPipelineName = 'ppDBQMaster'
    object ppDBQDetailppField1: TppField
      FieldAlias = 'IBUKTI_DETAIL'
      FieldName = 'IBUKTI_DETAIL'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppDBQDetailppField2: TppField
      FieldAlias = 'KD_ITEM'
      FieldName = 'KD_ITEM'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppDBQDetailppField3: TppField
      FieldAlias = 'LITEM'
      FieldName = 'LITEM'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppDBQDetailppField4: TppField
      FieldAlias = 'IBUKTI'
      FieldName = 'IBUKTI'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppDBQDetailppField5: TppField
      FieldAlias = 'QTY1'
      FieldName = 'QTY1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppDBQDetailppField6: TppField
      FieldAlias = 'KETERANGAN'
      FieldName = 'KETERANGAN'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppDBQDetailppField7: TppField
      FieldAlias = 'KD_SUB_LOKASI'
      FieldName = 'KD_SUB_LOKASI'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppDBQDetailppField8: TppField
      FieldAlias = 'QTY2'
      FieldName = 'QTY2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppDBQDetailppField9: TppField
      FieldAlias = 'KD_SUB_LOKASI2'
      FieldName = 'KD_SUB_LOKASI2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppDBQDetailppField10: TppField
      FieldAlias = 'QTY6'
      FieldName = 'QTY6'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object ppDBQDetailppField11: TppField
      FieldAlias = 'QTY7'
      FieldName = 'QTY7'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object ppDBQDetailppField12: TppField
      FieldAlias = 'KD_WARNA'
      FieldName = 'KD_WARNA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object ppDBQDetailppField13: TppField
      FieldAlias = 'NO_BATCH'
      FieldName = 'NO_BATCH'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object ppDBQDetailppField14: TppField
      FieldAlias = 'WARNA'
      FieldName = 'WARNA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object ppDBQDetailppField15: TppField
      FieldAlias = 'RASIO'
      FieldName = 'RASIO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object ppDBQDetailppField16: TppField
      FieldAlias = 'KD_ITEM2'
      FieldName = 'KD_ITEM2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object ppDBQDetailppMasterFieldLink1: TppMasterFieldLink
      MasterFieldName = 'IBUKTI'
      GuidCollationType = gcString
      DetailFieldName = 'IBUKTI'
      DetailSortOrder = soAscending
    end
  end
  object QTransaksi: TOracleDataSet
    SQL.Strings = (
      'select * from ipisma_db1.vtransaksi')
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
    Cursor = crSQLWait
    Session = DMFrm.OS
    BeforeOpen = QTransaksiBeforeOpen
    Left = 304
    Top = 8
    object QTransaksiNAMA_TRANSAKSI: TStringField
      FieldName = 'NAMA_TRANSAKSI'
      Size = 50
    end
    object QTransaksiKD_TRANSAKSI: TStringField
      DisplayWidth = 3
      FieldName = 'KD_TRANSAKSI'
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
    Left = 216
    Top = 16
    object ppDBQTransaksippField1: TppField
      FieldAlias = 'NAMA_TRANSAKSI'
      FieldName = 'NAMA_TRANSAKSI'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppDBQTransaksippField2: TppField
      FieldAlias = 'KD_TRANSAKSI'
      FieldName = 'KD_TRANSAKSI'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppDBQTransaksippField3: TppField
      FieldAlias = 'PREFIX'
      FieldName = 'PREFIX'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppDBQTransaksippField4: TppField
      FieldAlias = 'PLINE'
      FieldName = 'PLINE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppDBQTransaksippField5: TppField
      FieldAlias = 'PHEADER'
      FieldName = 'PHEADER'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppDBQTransaksippField6: TppField
      FieldAlias = 'DISTRIBUSI'
      FieldName = 'DISTRIBUSI'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppDBQTransaksippField7: TppField
      FieldAlias = 'TTD1'
      FieldName = 'TTD1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppDBQTransaksippField8: TppField
      FieldAlias = 'TTD2'
      FieldName = 'TTD2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppDBQTransaksippField9: TppField
      FieldAlias = 'TTD3'
      FieldName = 'TTD3'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppDBQTransaksippField10: TppField
      FieldAlias = 'TTD4'
      FieldName = 'TTD4'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object ppDBQTransaksippField11: TppField
      FieldAlias = 'DIV1'
      FieldName = 'DIV1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object ppDBQTransaksippField12: TppField
      FieldAlias = 'DIV2'
      FieldName = 'DIV2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object ppDBQTransaksippField13: TppField
      FieldAlias = 'DIV3'
      FieldName = 'DIV3'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object ppDBQTransaksippField14: TppField
      FieldAlias = 'DIV4'
      FieldName = 'DIV4'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object ppDBQTransaksippField15: TppField
      FieldAlias = 'JAB1'
      FieldName = 'JAB1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object ppDBQTransaksippField16: TppField
      FieldAlias = 'JAB2'
      FieldName = 'JAB2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object ppDBQTransaksippField17: TppField
      FieldAlias = 'JAB3'
      FieldName = 'JAB3'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
    object ppDBQTransaksippField18: TppField
      FieldAlias = 'JAB4'
      FieldName = 'JAB4'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 17
      Searchable = False
      Sortable = False
    end
    object ppDBQTransaksippField19: TppField
      FieldAlias = 'DOC_ISO'
      FieldName = 'DOC_ISO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 18
      Searchable = False
      Sortable = False
    end
  end
  object dsQTransaksi: TwwDataSource
    DataSet = QTransaksi
    Left = 384
    Top = 8
  end
  object QLokasi: TOracleDataSet
    SQL.Strings = (
      'select * from sub_lokasi')
    QBEDefinition.QBEFieldDefs = {
      04000000030000000D0000004B445F5355425F4C4F4B4153490100000000000A
      0000004A4E535F4C4F4B415349010000000000090000004B445F4C4F4B415349
      010000000000}
    Cursor = crSQLWait
    Session = DMFrm.OS
    BeforeOpen = QLokasiBeforeOpen
    Left = 528
    Top = 160
    object QLokasiKD_SUB_LOKASI: TStringField
      DisplayLabel = 'LOKASI'
      DisplayWidth = 12
      FieldName = 'KD_SUB_LOKASI'
      Required = True
      Size = 12
    end
    object QLokasiJNS_LOKASI: TStringField
      DisplayLabel = 'JENIS'
      DisplayWidth = 10
      FieldName = 'JNS_LOKASI'
      Required = True
      Size = 10
    end
  end
  object QItem: TOracleDataSet
    SQL.Strings = (
      '/*select * from ('
      'select'
      '  a.nama_item,'
      '  a.kd_item,'
      '  a.kd_warna,'
      '  b.warna,'
      '  a.no_batch,'
      '  sum(qty) as qty,'
      '  sum(qty2) as qty2,'
      '  nvl(a.rasio, 1) as rasio,'
      '  '#39'KG'#39' as satuan,'
      '  :pkd_sublokasi as kd_sub_lokasi'
      'from ('
      ''
      '  select '
      '    b.nama_item,'
      '    a.kd_item,'
      '    '#39'Z01'#39' AS kd_warna,'
      '    '#39'-'#39' as no_batch,'
      '    a.b00 as qty, --kg'
      '    a.b01 as qty2, --pcs'
      '    round(a.b00/decode(a.b01,0,1), 3) as rasio'
      '  from ipisma_db3.item_saldo_dyeing a'
      '  left join ipisma_db3.item b on a.kd_item=b.kd_item'
      '  where '
      '    a.pengelompokan='#39'PENGERING1'#39' and'
      '    a.tahun = to_char(sysdate, '#39'YYYY'#39')'
      ''
      '  union all'
      ''
      '  select   '
      '    a.keterangan as nama_item,'
      '    :pkd_lokasi||'#39'.'#39'||substr(kd_item, 4,5) as kd_item,'
      '    a.kd_warna,'
      '    a.no_batch,'
      '    a.qty1 as qty, --kg'
      '    a.qty2 as qty2, --pcs'
      '    a.rasio'
      '  from ipisma_db3.bukti_detail a'
      '  where ibukti in '
      '  ('
      '   select ibukti from'
      '   ipisma_db3.bukti'
      '   where'
      '    kd_transaksi = :pkd_trans1 and'
      '    ispost='#39'1'#39' and'
      '    trunc(tgl) >= to_date('#39'01/01/2025'#39','#39'dd/mm/yyyy'#39')'
      '  ) '
      '  union all'
      ''
      '  select   '
      '    a.keterangan as nama_item,'
      '    :pkd_lokasi||'#39'.'#39'||substr(kd_item, 4,5) as kd_item,'
      '    a.kd_warna,'
      '    a.no_batch,'
      '    -a.qty2 as qty, --kg'
      '    -a.qty7 as qty2, --pcs'
      '    a.rasio'
      '  from ipisma_db3.bukti_detail a'
      '  where ibukti in '
      '  ('
      '   select ibukti from'
      '   ipisma_db3.bukti'
      '   where'
      '    kd_transaksi = :pkd_trans2 and'
      '    ispost='#39'1'#39' and'
      
        '    trunc(tgl) >= to_date('#39'01/01/2025'#39','#39'dd/mm/yyyy'#39') or ibukti =' +
        ' :pibukti'
      '  )'
      ') a'
      'left join ipisma_db3.warna_baru b on a.kd_warna=b.kd_warna'
      
        'group by a.nama_item, a.kd_item, a.kd_warna, b.warna, a.no_batch' +
        ', a.rasio, b.warna'
      ') where qty<>0'
      '*/'
      ''
      ''
      '/*select * from ipisma_db3.vlook_st_hasil_celup*/'
      ''
      '/* oldest'
      
        'select a.kd_item, a.nama_item, a.kd_satuan, a.rasio, d.satuan, a' +
        '.min_stok, a.kd_jns_item, b.kd_sub_lokasi, b.kd_warna, b.no_batc' +
        'h,'
      
        'sum(b.qty_in-b.qty_out) as qty, sum(b.qty_in2-b.qty_out2) as qty' +
        '2'
      'from item a, gd_stok b, sub_lokasi c, satuan d'
      
        'where a.kd_item=b.kd_item and b.kd_sub_lokasi=c.kd_sub_lokasi an' +
        'd'
      'a.kd_satuan=d.kd_satuan and c.jns_lokasi='#39'LOKASI'#39' and'
      'a.kd_jns_item='#39'21'#39' and c.kd_lokasi='#39'21'#39' and b.tgl<=SYSDATE'
      
        'group by a.kd_item, a.nama_item, a.kd_satuan, a.rasio,d.satuan, ' +
        'a.min_stok, a.kd_jns_item, b.kd_sub_lokasi, b.kd_warna, b.no_bat' +
        'ch'
      'having sum(b.qty_in2-b.qty_out2)>0'
      '*/')
    QBEDefinition.QBEFieldDefs = {
      040000000C000000070000004B445F4954454D010000000000090000004E414D
      415F4954454D010000000000080000004D494E5F53544F4B0100000000000600
      000053415455414E010000000000090000004B445F53415455414E0100000000
      000B0000004B445F4A4E535F4954454D0100000000000D0000004B445F535542
      5F4C4F4B41534901000000000003000000515459010000000000050000005241
      53494F010000000000080000004B445F5741524E41010000000000080000004E
      4F5F42415443480100000000000400000051545932010000000000}
    Cursor = crSQLWait
    ReadOnly = True
    QueryAllRecords = False
    BeforeQuery = QItemBeforeQuery
    Session = DMFrm.OS
    Left = 128
    Top = 304
    object QItemNAMA_ITEM: TStringField
      DisplayLabel = 'NAMA ITEM'
      DisplayWidth = 30
      FieldName = 'NAMA_ITEM'
      Size = 50
    end
    object QItemKD_ITEM: TStringField
      DisplayLabel = 'Kode ITEM'
      DisplayWidth = 10
      FieldName = 'KD_ITEM'
      Size = 50
    end
    object QItemKD_WARNA: TStringField
      DisplayLabel = 'Kode WARNA'
      DisplayWidth = 6
      FieldName = 'KD_WARNA'
      Size = 6
    end
    object QItemWARNA: TStringField
      DisplayWidth = 25
      FieldName = 'WARNA'
    end
    object QItemNO_BATCH: TStringField
      DisplayLabel = 'NO BATCH'
      DisplayWidth = 8
      FieldName = 'NO_BATCH'
      Size = 50
    end
    object QItemQTY: TFloatField
      DisplayLabel = 'KG'
      DisplayWidth = 10
      FieldName = 'QTY'
      DisplayFormat = '#,0.0000;-#,0.0000;- '
    end
    object QItemQTY2: TFloatField
      DisplayLabel = 'PCS'
      DisplayWidth = 10
      FieldName = 'QTY2'
      DisplayFormat = '#,0;-#,0;-'
    end
    object QItemRASIO: TFloatField
      DisplayWidth = 7
      FieldName = 'RASIO'
      DisplayFormat = '#,0.0000;-#,0.0000;- '
    end
    object QItemSATUAN: TStringField
      DisplayWidth = 12
      FieldName = 'SATUAN'
      Visible = False
      Size = 12
    end
    object QItemKD_SUB_LOKASI: TStringField
      DisplayLabel = 'LOKASI'
      DisplayWidth = 10
      FieldName = 'KD_SUB_LOKASI'
      Visible = False
      Size = 12
    end
  end
  object QSOP: TOracleDataSet
    SQL.Strings = (
      'select sinopsis from vsop'
      'where kd_transaksi='#39'108'#39)
    QBEDefinition.QBEFieldDefs = {04000000010000000800000053494E4F50534953010000000000}
    Cursor = crSQLWait
    Session = DMFrm.OS
    Left = 280
    Top = 64
  end
  object dsQSOP: TwwDataSource
    DataSet = QSOP
    Left = 356
    Top = 48
  end
  object QTotal: TOracleDataSet
    SQL.Strings = (
      
        'select sum(qty6) as pcsaw, sum(qty1) as kgaw, sum(qty7) as pcs, ' +
        'sum(qty2) as kg from ipisma_db3.bukti_detail a'
      'where ibukti = :ibukti')
    Variables.Data = {0300000001000000070000003A4942554B5449030000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000000400000003000000504353010000000000020000004B470100000000
      00050000005043534157010000000000040000004B474157010000000000}
    Cursor = crSQLWait
    QueryAllRecords = False
    Session = DMFrm.OS
    Left = 597
    Top = 185
    object QTotalPCS: TFloatField
      FieldName = 'PCS'
    end
    object QTotalKG: TFloatField
      FieldName = 'KG'
    end
    object QTotalPCSAW: TFloatField
      FieldName = 'PCSAW'
    end
    object QTotalKGAW: TFloatField
      FieldName = 'KGAW'
    end
  end
  object QItem_st: TOracleDataSet
    SQL.Strings = (
      
        'select V.kd_item, V.nama_item, V.kd_satuan, V.rasio, V.satuan, V' +
        '.min_stok, V.kd_jns_item, V.kd_sub_lokasi, V.kd_warna, V.warna, ' +
        'V.no_batch,'
      
        'NVL(V.qty,0)-NVL(W.QTY1,0) as qty, NVL(V.qty2,0)-NVL(W.QTY2,0) a' +
        's qty2 from'
      ''
      
        '(select kd_item, nama_item, kd_satuan, rasio, satuan, min_stok, ' +
        'kd_jns_item, kd_sub_lokasi, kd_warna, warna, no_batch,'
      'qty, qty2'
      'from'
      ''
      
        '(select a.kd_item, a.nama_item, a.kd_satuan, a.rasio, d.satuan, ' +
        'a.min_stok, a.kd_jns_item, b.kd_sub_lokasi, b.kd_warna, e.warna,' +
        ' b.no_batch,'
      
        'sum(b.qty_in-b.qty_out) as qty, sum(b.qty_in2-b.qty_out2) as qty' +
        '2'
      
        'from item a, gd_stok b, sub_lokasi c, satuan d, vi_warna_baru_20' +
        '17 e'
      
        'where a.kd_item=b.kd_item and b.kd_sub_lokasi=c.kd_sub_lokasi an' +
        'd b.kd_warna=e.kd_warna and'
      'a.kd_satuan=d.kd_satuan and c.jns_lokasi='#39'LOKASI'#39' and'
      
        'a.kd_jns_item=:vjns_brg and c.kd_lokasi=:vjns_lokasi and b.tgl<=' +
        ':tgl and a.kd_item <>'#39'21.14581'#39
      
        'group by a.kd_item, a.nama_item, a.kd_satuan, a.rasio,d.satuan, ' +
        'a.min_stok, a.kd_jns_item, b.kd_sub_lokasi, b.kd_warna, e.warna,' +
        ' b.no_batch'
      'having sum(b.qty_in2-b.qty_out2)<>0)) V,'
      ''
      
        '(select KD_ITEM, KD_WARNA, NO_BATCH, NVL(sum(QTY6),0) as qty1, N' +
        'VL(sum(QTY7),0) as qty2'
      'from ipisma_db3.bukti_detail a'
      'where ibukti =:ibukti'
      'group by ibukti, kd_item, KD_WARNA, NO_BATCH) W'
      
        'WHERE V.KD_ITEM=W.KD_ITEM (+) AND V.KD_WARNA=W.KD_WARNA (+) AND ' +
        'V.NO_BATCH=W.NO_BATCH (+)')
    Variables.Data = {
      0300000004000000090000003A564A4E535F4252470500000000000000000000
      000C0000003A564A4E535F4C4F4B415349050000000000000000000000040000
      003A54474C0C0000000000000000000000070000003A4942554B544903000000
      0000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000000C000000070000004B445F4954454D010000000000090000004E414D
      415F4954454D010000000000080000004D494E5F53544F4B0100000000000600
      000053415455414E010000000000090000004B445F53415455414E0100000000
      000B0000004B445F4A4E535F4954454D0100000000000D0000004B445F535542
      5F4C4F4B41534901000000000003000000515459010000000000050000005241
      53494F010000000000080000004B445F5741524E41010000000000080000004E
      4F5F42415443480100000000000400000051545932010000000000}
    Cursor = crSQLWait
    ReadOnly = True
    QueryAllRecords = False
    BeforeQuery = QItemBeforeQuery
    Session = DMFrm.OS
    Left = 208
    Top = 328
    object StringField1: TStringField
      DisplayLabel = 'NAMA ITEM'
      DisplayWidth = 30
      FieldName = 'NAMA_ITEM'
      Size = 50
    end
    object StringField2: TStringField
      DisplayLabel = 'Kode ITEM'
      DisplayWidth = 10
      FieldName = 'KD_ITEM'
      Size = 50
    end
    object StringField3: TStringField
      DisplayLabel = 'Kode WARNA'
      DisplayWidth = 6
      FieldName = 'KD_WARNA'
      Size = 6
    end
    object StringField4: TStringField
      DisplayWidth = 25
      FieldName = 'WARNA'
    end
    object StringField5: TStringField
      DisplayLabel = 'NO BATCH'
      DisplayWidth = 8
      FieldName = 'NO_BATCH'
      Size = 50
    end
    object FloatField1: TFloatField
      DisplayLabel = 'KG'
      DisplayWidth = 10
      FieldName = 'QTY'
      DisplayFormat = '#,0.0000;-#,0.0000;- '
    end
    object FloatField2: TFloatField
      DisplayLabel = 'PCS'
      DisplayWidth = 10
      FieldName = 'QTY2'
      DisplayFormat = '#,0;-#,0;-'
    end
    object FloatField3: TFloatField
      DisplayWidth = 7
      FieldName = 'RASIO'
      DisplayFormat = '#,0.0000;-#,0.0000;- '
    end
    object StringField6: TStringField
      DisplayWidth = 12
      FieldName = 'SATUAN'
      Visible = False
      Size = 12
    end
    object StringField7: TStringField
      DisplayLabel = 'LOKASI'
      DisplayWidth = 10
      FieldName = 'KD_SUB_LOKASI'
      Visible = False
      Size = 12
    end
  end
end
