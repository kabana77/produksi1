object HasilSoftConesFrm: THasilSoftConesFrm
  Left = 241
  Top = 127
  Width = 1036
  Height = 611
  ActiveControl = vTglAwal
  Caption = 'Hasil SoftCones'
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
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PanelMain: TPanel
    Left = 0
    Top = 0
    Width = 1028
    Height = 580
    Align = alClient
    BevelOuter = bvNone
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 0
    object Label1: TLabel
      Left = 0
      Top = 567
      Width = 1028
      Height = 13
      Align = alBottom
      Color = clSkyBlue
      ParentColor = False
    end
    object DBText3: TDBText
      Left = 0
      Top = 49
      Width = 1028
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
      Width = 1028
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
      Width = 1028
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
          Width = 1020
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
            Top = 47
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
            Width = 129
            Height = 13
            Caption = 'No. Rencana Produksi'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clOlive
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label9: TLabel
            Left = 573
            Top = 51
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
            Left = 572
            Top = 72
            Width = 202
            Height = 10
            Shape = bsBottomLine
          end
          object LBarcode: TDBText
            Left = 684
            Top = 8
            Width = 90
            Height = 24
            Alignment = taRightJustify
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
            Left = 696
            Top = 88
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
            Left = 736
            Top = 88
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
            Left = 186
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
            Left = 258
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
          object Label18: TLabel
            Left = 9
            Top = 119
            Width = 472
            Height = 13
            Caption = 
              '>>> SEBELUM DIPOSTING, PASTIKAN RASIO ITEM DAN QTY SUDAH SESUAI ' +
              '!!!'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object wwDBDateTimePicker1: TwwDBDateTimePicker
            Left = 677
            Top = 48
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
            Top = 63
            Width = 537
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
            Left = 6
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
            Left = 736
            Top = 104
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
            Left = 696
            Top = 104
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
            Left = 186
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
        end
        object PanelDetail: TPanel
          Left = 0
          Top = 178
          Width = 1020
          Height = 241
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 2
          object wwDBGrid1: TwwDBGrid
            Left = 0
            Top = 0
            Width = 1020
            Height = 241
            ControlType.Strings = (
              'KD_SUB_LOKASI;CustomEdit;LookLokasi;F'
              'KD_ITEM;CustomEdit;LookItem;F'
              'NO_MESIN;CustomEdit;LookMesin;F')
            Selected.Strings = (
              'NO_MESIN'#9'7'#9'Nomer'#9'F'#9'MESIN'
              'MESIN'#9'9'#9'Rpm'#9'T'#9'MESIN'
              'QTY3'#9'5'#9'Spindle'#9'T'#9'MESIN'
              'QTY4'#9'7'#9'Kps'#9'T'#9'MESIN'
              'KD_ITEM'#9'10'#9'KODE'#9'F'
              'KETERANGAN'#9'16'#9'ITEM'#9'T'
              'QTY7'#9'10'#9'Qty (Kg)'#9'T'#9'STOK'
              'QTY8'#9'10'#9'Qty (Pcs)'#9'T'#9'STOK'
              'QTY5'#9'6'#9'Krat'#9'F'#9'PENIMBANGAN'
              'QTY6'#9'11'#9'Bruto (Kg)'#9'F'#9'PENIMBANGAN'
              'RASIO'#9'7'#9'Spring'#9'T'#9'RASIO MASTER'
              'RASIO2'#9'7'#9'ISI'#9'T'#9'RASIO MASTER'
              'QTY2'#9'6'#9'Pcs'#9'F'#9'QTY SPRING'
              'QTY1'#9'9'#9'Net (Kg)'#9'T'#9'QTY SPRING'
              'RASIO3'#9'7'#9'Rasio'#9'T'#9'QTY SPRING'
              'QTY_STANDAR'#9'8'#9'Std (Kg)'#9'T'#9'QTY SPRING'
              'STD_PSN'#9'6'#9'%'#9'T'#9'QTY SPRING'
              'OPR_INSERT'#9'15'#9'OPERATOR'#9'F'
              'KD_ITEM2'#9'12'#9'NO LOT'#9'F'
              'EFF'#9'10'#9'EFF'#9'T')
            IniAttributes.Enabled = True
            IniAttributes.Delimiter = ';;'
            IniAttributes.CheckNewFields = True
            ExportOptions.ExportType = wwgetHTML
            ExportOptions.Options = [esoShowHeader, esoShowFooter, esoShowTitle, esoDblQuoteFields, esoBestColFit, esoShowRecordNo, esoShowAlternating]
            TitleColor = clBackground
            FixedCols = 0
            ShowHorzScrollBar = True
            Align = alClient
            BorderStyle = bsNone
            Ctl3D = False
            DataSource = dsQDetail
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
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
            TitleLines = 3
            TitleButtons = True
            UseTFields = False
            OnCalcCellColors = wwDBGrid1CalcCellColors
            OnEnter = wwDBGrid1Enter
            OnUpdateFooter = wwDBGrid1UpdateFooter
          end
          object LookItem: TwwDBLookupComboDlg
            Left = 216
            Top = 80
            Width = 121
            Height = 19
            GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
            GridColor = clWhite
            GridTitleAlignment = taLeftJustify
            Caption = 'Lookup'
            MaxWidth = 0
            MaxHeight = 209
            UserButton1Caption = '&Filter'
            OnUserButton1Click = LookItemUserButton1Click
            Selected.Strings = (
              'NAMA_ITEM'#9'35'#9'NAMA ITEM'#9'F'
              'KD_ITEM'#9'10'#9'KODE'#9'F'
              'SATUAN'#9'12'#9'SATUAN'#9'F'
              'RASIO'#9'5'#9'Rasio Spring'#9'F'
              'RASIO2'#9'5'#9'Rasio ISI'#9'F'
              'QTY'#9'15'#9'QTY (Kg)'#9'F'
              'QTY2'#9'15'#9'QTY (Pcs)'#9'F')
            DataField = 'KD_ITEM'
            DataSource = dsQDetail
            LookupTable = QItem
            LookupField = 'KD_ITEM'
            Style = csDropDownList
            TabOrder = 1
            AutoDropDown = True
            ShowButton = True
            AllowClearKey = False
            OnCloseUp = LookItemCloseUp
            OnEnter = LookItemEnter
          end
          object LookMesin: TwwDBLookupComboDlg
            Left = 80
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
              'KD_SUB_LOKASI'#9'10'#9'MESIN'#9'F'
              'KD_BENANG'#9'12'#9'BENANG'#9'F'
              'SPESIFIKASI'#9'25'#9'SPESIFIKASI'#9'F'
              'JML'#9'5'#9'JML'#9'F'
              'KPS'#9'7'#9'KPS'#9'F'
              'EFF'#9'8'#9'EFF'#9'F')
            DataField = 'NO_MESIN'
            DataSource = dsQDetail
            LookupTable = QLokasi
            LookupField = 'KD_SUB_LOKASI'
            Style = csDropDownList
            TabOrder = 2
            AutoDropDown = False
            ShowButton = True
            AllowClearKey = False
            OnCloseUp = LookMesinCloseUp
            OnEnter = LookMesinEnter
          end
        end
        object PanelFooter1: TPanel
          Left = 0
          Top = 419
          Width = 1020
          Height = 41
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 3
          object BtnPrintInput: TBitBtn
            Left = 460
            Top = 14
            Width = 75
            Height = 25
            Caption = '&Print'
            TabOrder = 0
            OnClick = BtnPrintInputClick
            NumGlyphs = 2
          end
          object BtnClose1: TBitBtn
            Left = 540
            Top = 14
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
          object RadioGroup1: TRadioGroup
            Left = 256
            Top = 0
            Width = 121
            Height = 41
            Caption = 'Ukuran Ketas'
            Columns = 2
            ItemIndex = 1
            Items.Strings = (
              'A4'
              'A5')
            TabOrder = 3
          end
          object CBPreview: TCheckBox
            Left = 391
            Top = 16
            Width = 66
            Height = 17
            Caption = 'Preview'
            TabOrder = 4
          end
        end
        object PanelBand: TPanel
          Left = 0
          Top = 137
          Width = 1020
          Height = 41
          Align = alTop
          BevelOuter = bvNone
          Color = clSkyBlue
          TabOrder = 1
          object Label14: TLabel
            Left = 717
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
          object Label12: TLabel
            Left = 147
            Top = 2
            Width = 58
            Height = 13
            Caption = 'Berat Krat'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label13: TLabel
            Left = 204
            Top = 21
            Width = 16
            Height = 13
            Caption = 'Kg'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label16: TLabel
            Left = 352
            Top = 3
            Width = 66
            Height = 13
            Caption = 'Tanggal Input'
          end
          object DBText4: TDBText
            Left = 432
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
            Left = 432
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
          object Label17: TLabel
            Left = 352
            Top = 23
            Width = 41
            Height = 13
            Caption = 'Operator'
          end
          object wwDBSpinLine1: TwwDBSpinEdit
            Left = 717
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
            Top = 19
            Width = 129
            Height = 19
            TabOrder = 1
            OnKeyDown = EditCariKeyDown
          end
          object cbPost: TwwCheckBox
            Left = 248
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
          object LookLokasi: TwwDBLookupComboDlg
            Left = 784
            Top = 16
            Width = 121
            Height = 19
            GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
            GridColor = clWhite
            GridTitleAlignment = taLeftJustify
            Caption = 'Lookup'
            MaxWidth = 0
            MaxHeight = 209
            Selected.Strings = (
              'KD_SUB_LOKASI'#9'12'#9'LOKASI'#9'F')
            DataField = 'KD_SUB_LOKASI'
            DataSource = dsQDetail
            LookupTable = QLokasi
            LookupField = 'KD_SUB_LOKASI'
            Style = csDropDownList
            TabOrder = 3
            AutoDropDown = False
            ShowButton = True
            AllowClearKey = False
            OnEnter = LookLokasiEnter
          end
          object wwDBEdit2: TwwDBEdit
            Left = 150
            Top = 17
            Width = 49
            Height = 22
            Color = clYellow
            DataField = 'QTY_RESEP'
            DataSource = dsQMaster
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 4
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Browse'
        ImageIndex = 1
        object LabelBanner: TLabel
          Left = 0
          Top = 57
          Width = 1020
          Height = 13
          Align = alTop
          Color = clSkyBlue
          ParentColor = False
        end
        object PanelFilter: TPanel
          Left = 0
          Top = 0
          Width = 1020
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
          Width = 1020
          Height = 349
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 1
          object wwDBGrid2: TwwDBGrid
            Left = 0
            Top = 0
            Width = 1020
            Height = 349
            Selected.Strings = (
              'NO_NOTA'#9'14'#9'Nomer'#9'F'#9'NOTA'
              'TGL'#9'11'#9'Tanggal'#9'F'#9'NOTA'
              'SHIFTGRUP'#9'5'#9'Shift'#9'F'#9'NOTA'
              'KD_SUB_LOKASI'#9'7'#9'Mesin'#9'F'#9'MESIN TERPASANG'
              'RPM'#9'10'#9'Rpm'#9'F'#9'MESIN TERPASANG'
              'JML'#9'4'#9'Jml'#9'F'#9'MESIN TERPASANG'
              'QTY4'#9'6'#9'Kps'#9'F'#9'MESIN TERPASANG'
              'EFF'#9'10'#9'Eff'#9'F'#9'MESIN TERPASANG'
              'QTY3'#9'10'#9'MESIN~TERPAKAI'#9'F'
              'KD_ITEM'#9'8'#9'Kode'#9'F'#9'BENANG'
              'KETERANGAN'#9'12'#9'Nama'#9'F'#9'BENANG'
              'RASIO'#9'7'#9'Spring'#9'F'#9'RASIO MASTER'
              'RASIO2'#9'7'#9'isi'#9'F'#9'RASIO MASTER'
              'QTY2'#9'5'#9'Pcs'#9'F'#9'QTY'
              'QTY1'#9'12'#9'Hasil (Kg)'#9'F'#9'QTY'
              'RASIO3'#9'7'#9'Rasio'#9'F'#9'QTY'
              'QTY_STD'#9'10'#9'Std (Kg)'#9'F'#9'QTY'
              'STD_PSN'#9'6'#9'%'#9'F'#9'QTY'
              'NO_LOT'#9'10'#9'NO LOT'#9'F'
              'OPR_INSERT'#9'20'#9'OPERATOR'#9'F')
            IniAttributes.Enabled = True
            IniAttributes.SaveToRegistry = True
            IniAttributes.FileName = 'produksi'
            IniAttributes.Delimiter = ';;'
            IniAttributes.CheckNewFields = True
            ExportOptions.ExportType = wwgetSYLK
            ExportOptions.Options = [esoDblQuoteFields, esoBestColFit, esoShowRecordNo, esoShowAlternating]
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
            TitleLines = 2
            TitleButtons = True
            UseTFields = False
            OnTitleButtonClick = wwDBGrid2TitleButtonClick
            OnDblClick = wwDBGrid2DblClick
            OnUpdateFooter = wwDBGrid2UpdateFooter
          end
        end
        object PanelFooter2: TPanel
          Left = 0
          Top = 419
          Width = 1020
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
            Left = 402
            Top = 8
            Width = 75
            Height = 25
            Caption = '&Close'
            TabOrder = 1
            OnClick = BtnClose2Click
            NumGlyphs = 2
          end
          object BtnExport: TBitBtn
            Left = 242
            Top = 8
            Width = 75
            Height = 25
            Caption = '&Export'
            TabOrder = 2
            OnClick = BtnExportClick
            NumGlyphs = 2
          end
          object BtnPrintBrowse: TBitBtn
            Left = 322
            Top = 8
            Width = 75
            Height = 25
            Caption = '&Print'
            TabOrder = 3
            OnClick = BtnPrintBrowseClick
            NumGlyphs = 2
          end
          object BtnDesign2: TBitBtn
            Left = 160
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
      end
    end
  end
  object QBrowse: TOracleDataSet
    SQL.Strings = (
      'select * from vhasilsoftconesfrm'
      ':vorder')
    Variables.Data = {0300000001000000070000003A564F52444552010000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000001A000000070000004E4F5F4E4F544101000000000005000000534849
      4654010000000000040000004752555001000000000004000000515459310100
      0000000004000000515459320100000000000D0000004B445F5355425F4C4F4B
      41534901000000000003000000454646010000000000030000004A4D4C010000
      0000000400000051545933010000000000040000005154593401000000000003
      00000054474C010000000000070000004B445F4954454D0100000000000A0000
      004B45544552414E47414E010000000000040000004A414D3201000000000009
      0000005348494654475255500100000000000C0000004B445F5452414E53414B
      5349010000000000090000004546465F4D4553494E0100000000000700000051
      54595F535444010000000000070000005354445F50534E010000000000060000
      004942554B5449010000000000060000004E4F5F4C4F540100000000000A0000
      004F50525F494E534552540100000000000D00000053504545445F5045525F4D
      4E540100000000000E00000053504545445F5045525F4D4E5432010000000000
      05000000524153494F01000000000006000000524153494F32010000000000}
    Cursor = crSQLWait
    ReadOnly = True
    QueryAllRecords = False
    Session = DMFrm.OS
    AfterScroll = QBrowseAfterScroll
    OnCalcFields = QBrowseCalcFields
    Left = 848
    Top = 8
    object QBrowseRPM: TStringField
      FieldName = 'RPM'
      Size = 50
    end
    object QBrowseKD_SUB_LOKASI: TStringField
      FieldName = 'KD_SUB_LOKASI'
      Required = True
      Size = 12
    end
    object QBrowseEFF: TFloatField
      FieldName = 'EFF'
      DisplayFormat = '0.0,0 %'
    end
    object QBrowseJML: TFloatField
      FieldName = 'JML'
    end
    object QBrowseQTY3: TFloatField
      FieldName = 'QTY3'
    end
    object QBrowseQTY4: TFloatField
      FieldName = 'QTY4'
      DisplayFormat = '#,0.00;-#,0.00;-'
    end
    object QBrowseTGL: TDateTimeField
      FieldName = 'TGL'
      DisplayFormat = 'dd mmm yyyy'
    end
    object QBrowseNO_NOTA: TStringField
      FieldName = 'NO_NOTA'
      Size = 22
    end
    object QBrowseSHIFT: TStringField
      FieldName = 'SHIFT'
      Size = 5
    end
    object QBrowseKD_ITEM: TStringField
      FieldName = 'KD_ITEM'
      Size = 50
    end
    object QBrowseKETERANGAN: TStringField
      FieldName = 'KETERANGAN'
      Size = 255
    end
    object QBrowseQTY1: TFloatField
      FieldName = 'QTY1'
      DisplayFormat = '#,0.0000;-#,0.0000;-'
    end
    object QBrowseQTY2: TFloatField
      FieldName = 'QTY2'
      DisplayFormat = '#,0;-#,0;-'
    end
    object QBrowseJAM2: TDateTimeField
      FieldName = 'JAM2'
      DisplayFormat = 'dd/mm/yyyy hh:mm'
    end
    object QBrowseSHIFTGRUP: TStringField
      FieldName = 'SHIFTGRUP'
      Size = 4
    end
    object QBrowseGRUP: TStringField
      FieldName = 'GRUP'
      Size = 1
    end
    object QBrowseEFF_MESIN: TFloatField
      FieldName = 'EFF_MESIN'
      DisplayFormat = '0.0,0 %'
    end
    object QBrowseQTY_STD: TFloatField
      FieldName = 'QTY_STD'
      DisplayFormat = '#,0.0000;-#,0.0000;-'
    end
    object QBrowseSTD_PSN: TFloatField
      FieldName = 'STD_PSN'
      DisplayFormat = '0.0,0;(0.0,0)'
    end
    object QBrowseIBUKTI: TFloatField
      FieldName = 'IBUKTI'
      Required = True
    end
    object QBrowseNO_LOT: TStringField
      FieldName = 'NO_LOT'
      Size = 22
    end
    object QBrowseOPR_INSERT: TStringField
      FieldName = 'OPR_INSERT'
      Size = 30
    end
    object QBrowseSPEED_PER_MNT: TFloatField
      FieldName = 'SPEED_PER_MNT'
    end
    object QBrowseSPEED_PER_MNT2: TFloatField
      FieldName = 'SPEED_PER_MNT2'
    end
    object QBrowseeffisiensi: TFloatField
      FieldKind = fkCalculated
      FieldName = 'effisiensi'
      DisplayFormat = '0.0,0 %'
      Calculated = True
    end
    object QBrowseRASIO: TFloatField
      FieldName = 'RASIO'
      DisplayFormat = '#,0.0000;-#,0.0000;-'
    end
    object QBrowseRASIO2: TFloatField
      FieldName = 'RASIO2'
      DisplayFormat = '#,0.0000;-#,0.0000;-'
    end
    object QBrowseRASIO3: TFloatField
      FieldKind = fkCalculated
      FieldName = 'RASIO3'
      DisplayFormat = '#,0.0000;-#,0.0000;-'
      Calculated = True
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
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Microsoft Print to PDF'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
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
    Left = 776
    Top = 16
    Version = '12.03'
    mmColumnWidth = 197300
    DataPipelineName = 'ppDBQBrowseDetail'
    object ppTitleBand1: TppTitleBand
      BeforePrint = ppTitleBand1BeforePrint
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 34925
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
        mmLeft = 6879
        mmTop = 19315
        mmWidth = 187061
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
        mmLeft = 6879
        mmTop = 25665
        mmWidth = 187590
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
        mmHeight = 4191
        mmLeft = 6615
        mmTop = 1058
        mmWidth = 58886
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
        mmHeight = 4022
        mmLeft = 6615
        mmTop = 6085
        mmWidth = 61595
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
        mmHeight = 4022
        mmLeft = 6615
        mmTop = 10583
        mmWidth = 81492
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
        mmLeft = 165894
        mmTop = 30692
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
        Border.BorderPositions = [bpBottom]
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = True
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
        mmWidth = 22225
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        HyperlinkColor = clBlue
        Border.BorderPositions = [bpBottom]
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = True
        Caption = 'TANGGAL'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 38100
        mmTop = 2910
        mmWidth = 13674
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        HyperlinkColor = clBlue
        Border.BorderPositions = [bpBottom]
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = True
        Caption = 'KPS'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3387
        mmLeft = 91811
        mmTop = 2910
        mmWidth = 5842
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        HyperlinkColor = clBlue
        Border.BorderPositions = [bpBottom]
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = True
        Caption = 'PCS'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3387
        mmLeft = 149215
        mmTop = 2910
        mmWidth = 5842
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
        Border.BorderPositions = [bpBottom]
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = True
        Caption = 'GRUP'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3387
        mmLeft = 53711
        mmTop = 2910
        mmWidth = 8170
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        HyperlinkColor = clBlue
        Border.BorderPositions = [bpBottom]
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = True
        Caption = 'KODE'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 100013
        mmTop = 2910
        mmWidth = 8170
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        HyperlinkColor = clBlue
        Border.BorderPositions = [bpBottom]
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = True
        Caption = 'KG'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3387
        mmLeft = 161396
        mmTop = 2910
        mmWidth = 4233
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        HyperlinkColor = clBlue
        Border.BorderPositions = [bpBottom]
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = True
        Caption = 'NAMA BARANG'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 114036
        mmTop = 2910
        mmWidth = 21167
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        HyperlinkColor = clBlue
        Border.BorderPositions = [bpBottom]
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = True
        Caption = '(%)'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3387
        mmLeft = 187061
        mmTop = 2910
        mmWidth = 4360
        BandType = 0
      end
      object ppLabel18: TppLabel
        UserName = 'Label1'
        HyperlinkColor = clBlue
        Border.BorderPositions = [bpBottom]
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = True
        Caption = 'SPINDLE'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3387
        mmLeft = 74613
        mmTop = 2910
        mmWidth = 12319
        BandType = 0
      end
      object ppLabel30: TppLabel
        UserName = 'Label30'
        HyperlinkColor = clBlue
        Border.BorderPositions = [bpBottom]
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = True
        Caption = 'MESIN'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 63765
        mmTop = 2910
        mmWidth = 9059
        BandType = 0
      end
      object ppLabel34: TppLabel
        UserName = 'Label101'
        HyperlinkColor = clBlue
        Border.BorderPositions = [bpBottom]
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = True
        Caption = 'KG STD'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3387
        mmLeft = 169069
        mmTop = 2910
        mmWidth = 10668
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
      mmHeight = 3969
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
        mmLeft = 100013
        mmTop = 794
        mmWidth = 12700
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
        DataField = 'QTY1'
        DataPipeline = ppDBQBrowseDetail
        DisplayFormat = '#,##0.##;(#,##0.##)'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBQBrowseDetail'
        mmHeight = 3260
        mmLeft = 160099
        mmTop = 709
        mmWidth = 5503
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
        DataField = 'QTY2'
        DataPipeline = ppDBQBrowseDetail
        DisplayFormat = '#,##0.######;(#,##0.######); '
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBQBrowseDetail'
        mmHeight = 3260
        mmLeft = 151892
        mmTop = 709
        mmWidth = 3133
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
        DataField = 'KETERANGAN'
        DataPipeline = ppDBQBrowseDetail
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBQBrowseDetail'
        mmHeight = 3440
        mmLeft = 114036
        mmTop = 529
        mmWidth = 28575
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeading = 0
      end
      object ppNo: TppVariable
        UserName = 'No2'
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
        mmHeight = 3246
        mmLeft = 6553
        mmTop = 723
        mmWidth = 5151
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
        mmTop = 794
        mmWidth = 22225
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'TGL'
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
        mmTop = 794
        mmWidth = 16140
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
        DataField = 'KD_SUB_LOKASI'
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
        mmLeft = 63765
        mmTop = 794
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
        DataField = 'JML'
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
        mmLeft = 75671
        mmTop = 794
        mmWidth = 10319
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        HyperlinkColor = clBlue
        AutoSize = True
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
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBQBrowseDetail'
        mmHeight = 3175
        mmLeft = 56886
        mmTop = 794
        mmWidth = 1852
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'QTY4'
        DataPipeline = ppDBQBrowseDetail
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBQBrowseDetail'
        mmHeight = 3260
        mmLeft = 87313
        mmTop = 709
        mmWidth = 10319
        BandType = 4
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'STD_PSN'
        DataPipeline = ppDBQBrowseDetail
        DisplayFormat = '0.0,0;(0.0,0) %'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBQBrowseDetail'
        mmHeight = 3175
        mmLeft = 183886
        mmTop = 794
        mmWidth = 10583
        BandType = 4
      end
      object ppDBText31: TppDBText
        UserName = 'DBText102'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'QTY_STD'
        DataPipeline = ppDBQBrowseDetail
        DisplayFormat = '#,##0.##;(#,##0.##)'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBQBrowseDetail'
        mmHeight = 3260
        mmLeft = 172546
        mmTop = 709
        mmWidth = 7070
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
        mmLeft = 186532
        mmTop = 1058
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
    OpenDataSource = False
    UserName = 'DBQBrowseDetail'
    Left = 920
    Top = 8
    object ppDBQBrowseDetailppField1: TppField
      FieldAlias = 'KD_SUB_LOKASI'
      FieldName = 'KD_SUB_LOKASI'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppDBQBrowseDetailppField2: TppField
      FieldAlias = 'EFF'
      FieldName = 'EFF'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppDBQBrowseDetailppField3: TppField
      FieldAlias = 'JML'
      FieldName = 'JML'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppDBQBrowseDetailppField4: TppField
      FieldAlias = 'QTY3'
      FieldName = 'QTY3'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppDBQBrowseDetailppField5: TppField
      FieldAlias = 'QTY4'
      FieldName = 'QTY4'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppDBQBrowseDetailppField6: TppField
      FieldAlias = 'TGL'
      FieldName = 'TGL'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppDBQBrowseDetailppField7: TppField
      FieldAlias = 'NO_NOTA'
      FieldName = 'NO_NOTA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppDBQBrowseDetailppField8: TppField
      FieldAlias = 'SHIFT'
      FieldName = 'SHIFT'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppDBQBrowseDetailppField9: TppField
      FieldAlias = 'KD_ITEM'
      FieldName = 'KD_ITEM'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppDBQBrowseDetailppField10: TppField
      FieldAlias = 'KETERANGAN'
      FieldName = 'KETERANGAN'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object ppDBQBrowseDetailppField11: TppField
      FieldAlias = 'QTY1'
      FieldName = 'QTY1'
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
      FieldAlias = 'JAM2'
      FieldName = 'JAM2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object ppDBQBrowseDetailppField14: TppField
      FieldAlias = 'SHIFTGRUP'
      FieldName = 'SHIFTGRUP'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object ppDBQBrowseDetailppField15: TppField
      FieldAlias = 'GRUP'
      FieldName = 'GRUP'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object ppDBQBrowseDetailppField16: TppField
      FieldAlias = 'EFF_MESIN'
      FieldName = 'EFF_MESIN'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object ppDBQBrowseDetailppField17: TppField
      FieldAlias = 'QTY_STD'
      FieldName = 'QTY_STD'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
    object ppDBQBrowseDetailppField18: TppField
      FieldAlias = 'STD_PSN'
      FieldName = 'STD_PSN'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 17
      Searchable = False
      Sortable = False
    end
    object ppDBQBrowseDetailppField19: TppField
      FieldAlias = 'IBUKTI'
      FieldName = 'IBUKTI'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 18
      Searchable = False
      Sortable = False
    end
    object ppDBQBrowseDetailppField20: TppField
      FieldAlias = 'NO_LOT'
      FieldName = 'NO_LOT'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 19
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
  end
  object QMaster: TOracleDataSet
    SQL.Strings = (
      'select a.*, a.rowid from ipisma_db3.bukti a'
      'where (a.ibukti=:myparam1) or (a.no_nota=:myparam2)')
    Variables.Data = {
      0300000002000000090000003A4D59504152414D310300000000000000000000
      00090000003A4D59504152414D32050000000000000000000000}
    SequenceField.Field = 'IBUKTI'
    SequenceField.Sequence = 'ipisma_db3.NO_REGISTER'
    QBEDefinition.QBEFieldDefs = {
      0400000013000000070000004E4F5F4E4F54410100000000000C0000004B445F
      5452414E53414B53490100000000000300000054474C0100000000000A000000
      4B45544552414E47414E0100000000000A00000054474C5F494E534552540100
      000000000A0000004F50525F494E53455254010000000000060000004953504F
      5354010000000000080000004E4F5F42554B5449010000000000060000004942
      554B5449010000000000080000004E4F5F524553455001000000000006000000
      535441545553010000000000060000004B445F44495601000000000005000000
      5348494654010000000000040000004752555001000000000004000000545444
      3101000000000004000000545444320100000000000400000054544433010000
      0000000400000054544434010000000000090000005154595F52455345500100
      00000000}
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
    Left = 168
    Top = 168
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
    object QMasterQTY_RESEP: TFloatField
      FieldName = 'QTY_RESEP'
    end
    object QMasterTGL_INSERT: TDateTimeField
      FieldName = 'TGL_INSERT'
    end
    object QMasterOPR_INSERT: TStringField
      FieldName = 'OPR_INSERT'
      Size = 30
    end
  end
  object dsQMaster: TwwDataSource
    DataSet = QMaster
    Left = 112
    Top = 160
  end
  object QDetail: TOracleDataSet
    SQL.Strings = (
      'select a.*, a.rowid from ipisma_db3.bukti_detail a'
      'where ibukti = :ibukti')
    Variables.Data = {0300000001000000070000003A4942554B5449040000000000000000000000}
    SequenceField.Field = 'IBUKTI_DETAIL'
    SequenceField.Sequence = 'ipisma_db3.NO_REGISTER'
    SequenceField.ApplyMoment = amOnNewRecord
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
      54593130010000000000090000004B445F53415455414E010000000000050000
      00524153494F010000000000060000004B445F44495601000000000008000000
      4E4F5F4D4553494E010000000000080000004B445F4954454D32010000000000
      040000004A414D31010000000000040000004A414D3201000000000006000000
      535441545553010000000000080000004B445F5741524E410100000000000800
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
    OnCalcFields = QDetailCalcFields
    OnNewRecord = QDetailNewRecord
    Left = 64
    Top = 320
    object QDetailIBUKTI_DETAIL: TFloatField
      FieldName = 'IBUKTI_DETAIL'
    end
    object QDetailKD_ITEM: TStringField
      FieldName = 'KD_ITEM'
      Required = True
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
    object QDetailRASIO: TFloatField
      FieldName = 'RASIO'
      DisplayFormat = '#,0.0000;-#,0.0000;-'
    end
    object QDetailKD_SATUAN: TStringField
      FieldName = 'KD_SATUAN'
      Size = 2
    end
    object QDetailNO_MESIN: TStringField
      FieldName = 'NO_MESIN'
      Size = 12
    end
    object QDetailQTY2: TFloatField
      FieldName = 'QTY2'
      DisplayFormat = '#,0;-#,0;-'
    end
    object QDetailQTY3: TFloatField
      FieldName = 'QTY3'
    end
    object QDetailQTY4: TFloatField
      FieldName = 'QTY4'
      DisplayFormat = '#,0.00;-#,0.00;-'
    end
    object QDetailMESIN: TStringField
      FieldKind = fkLookup
      FieldName = 'MESIN'
      LookupDataSet = DMFrm.QMesin
      LookupKeyFields = 'KD_SUB_LOKASI'
      LookupResultField = 'SPESIFIKASI'
      KeyFields = 'NO_MESIN'
      Size = 50
      Lookup = True
    end
    object QDetailEFF: TFloatField
      FieldKind = fkCalculated
      FieldName = 'EFF'
      DisplayFormat = '0.0,0 %'
      Calculated = True
    end
    object QDetailQTY5: TFloatField
      FieldName = 'QTY5'
      DisplayFormat = '#,0;-#,0;-'
    end
    object QDetailQTY6: TFloatField
      FieldName = 'QTY6'
      DisplayFormat = '#,0.0000;-#,0.0000;-'
    end
    object QDetailOPR_INSERT: TStringField
      FieldName = 'OPR_INSERT'
      Size = 30
    end
    object QDetailJAM1: TDateTimeField
      FieldName = 'JAM1'
      DisplayFormat = 'dd/mm hh:mm'
    end
    object QDetailRASIO2: TFloatField
      FieldKind = fkLookup
      FieldName = 'RASIO2'
      LookupDataSet = DMFrm.QItemAll
      LookupKeyFields = 'KD_ITEM'
      LookupResultField = 'RASIO2'
      KeyFields = 'KD_ITEM'
      DisplayFormat = '#,0.0000;-#,0.0000;-'
      Lookup = True
    end
    object QDetailQTY_STANDAR: TFloatField
      FieldKind = fkCalculated
      FieldName = 'QTY_STANDAR'
      DisplayFormat = '#,0.0000;-#,0.0000;-'
      Calculated = True
    end
    object QDetailSTD_PSN: TFloatField
      FieldKind = fkCalculated
      FieldName = 'STD_PSN'
      DisplayFormat = '0.0,0;(0.0,0)'
      Calculated = True
    end
    object QDetailKD_ITEM2: TStringField
      FieldName = 'KD_ITEM2'
      Required = True
      Size = 22
    end
    object QDetailQTY7: TFloatField
      FieldName = 'QTY7'
      DisplayFormat = '#,0.0000;-#,0.0000;-'
    end
    object QDetailQTY8: TFloatField
      FieldName = 'QTY8'
      DisplayFormat = '#,0;-#,0;-'
    end
    object QDetailRASIO3: TFloatField
      FieldKind = fkCalculated
      FieldName = 'RASIO3'
      DisplayFormat = '#,0.0000;-#,0.0000;-'
      Calculated = True
    end
  end
  object dsQDetail: TwwDataSource
    DataSet = QDetail
    Left = 24
    Top = 336
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
    Left = 184
    Top = 24
    Version = '12.03'
    mmColumnWidth = 197300
    DataPipelineName = 'ppDBQDetail'
    object ppTitleBand2: TppTitleBand
      BeforePrint = ppTitleBand1BeforePrint
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 41275
      mmPrintPosition = 0
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
        mmLeft = 1588
        mmTop = 0
        mmWidth = 60029
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
        mmHeight = 7761
        mmLeft = 76253
        mmTop = 14288
        mmWidth = 39582
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
        mmLeft = 90752
        mmTop = 22225
        mmWidth = 11377
        BandType = 1
      end
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
        mmLeft = 20638
        mmTop = 20638
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
        Caption = 'Telah diproduksi barang-barang berikut :'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 1852
        mmTop = 34925
        mmWidth = 63765
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
        mmHeight = 5821
        mmLeft = 170921
        mmTop = 4763
        mmWidth = 19579
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
        mmLeft = 172244
        mmTop = 20638
        mmWidth = 18627
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
        mmLeft = 173038
        mmTop = 26988
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
        mmLeft = 153988
        mmTop = 20638
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
        mmLeft = 179123
        mmTop = 1058
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
        mmLeft = 149825
        mmTop = 26988
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
        mmLeft = 179388
        mmTop = 26988
        mmWidth = 2540
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
        mmLeft = 177800
        mmTop = 26988
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
        mmLeft = 20638
        mmTop = 26988
        mmWidth = 19473
        BandType = 1
      end
      object ppLabel20: TppLabel
        UserName = 'Label20'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'No. WO'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 1588
        mmTop = 20638
        mmWidth = 12700
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
        mmLeft = 1588
        mmTop = 26988
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
        mmLeft = 17463
        mmTop = 20638
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
        mmLeft = 17463
        mmTop = 26988
        mmWidth = 1058
        BandType = 1
      end
      object ppLabel37: TppLabel
        UserName = 'Label37'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'No. Doc :'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4163
        mmLeft = 154058
        mmTop = 14552
        mmWidth = 14746
        BandType = 1
      end
      object ppDBText51: TppDBText
        UserName = 'DBText51'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'DOC_ISO'
        DataPipeline = ppDBQTransaksi
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        SuppressRepeatedValues = True
        Transparent = True
        DataPipelineName = 'ppDBQTransaksi'
        mmHeight = 4233
        mmLeft = 172244
        mmTop = 14552
        mmWidth = 21960
        BandType = 1
      end
    end
    object ppHeaderBand2: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 5027
      mmPrintPosition = 0
      object ppLabel22: TppLabel
        UserName = 'Label2'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'MESIN'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 11113
        mmTop = 794
        mmWidth = 11113
        BandType = 0
      end
      object ppLabel24: TppLabel
        UserName = 'Label4'
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
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 133615
        mmTop = 794
        mmWidth = 7144
        BandType = 0
      end
      object ppLabel26: TppLabel
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
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 2910
        mmTop = 794
        mmWidth = 5292
        BandType = 0
      end
      object ppLabel27: TppLabel
        UserName = 'Label7'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'KG'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 151342
        mmTop = 794
        mmWidth = 5821
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'SPIN'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 51858
        mmTop = 794
        mmWidth = 8202
        BandType = 0
      end
      object ppLabel21: TppLabel
        UserName = 'Label21'
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
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 70379
        mmTop = 794
        mmWidth = 10319
        BandType = 0
      end
      object ppLabel23: TppLabel
        UserName = 'Label23'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'BENANG'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 89165
        mmTop = 794
        mmWidth = 19050
        BandType = 0
      end
      object ppLabel28: TppLabel
        UserName = 'Label28'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'KPS'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4159
        mmLeft = 61383
        mmTop = 794
        mmWidth = 7241
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'RPM'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4159
        mmLeft = 33338
        mmTop = 529
        mmWidth = 7835
        BandType = 0
      end
      object ppLabel19: TppLabel
        UserName = 'Label19'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '%'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 189442
        mmTop = 794
        mmWidth = 3175
        BandType = 0
      end
      object ppLabel31: TppLabel
        UserName = 'Label31'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'KG STD'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 161555
        mmTop = 794
        mmWidth = 13335
        BandType = 0
      end
    end
    object ppDetailBand2: TppDetailBand
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
      mmHeight = 5821
      mmPrintPosition = 0
      object ppDBText22: TppDBText
        UserName = 'DBText101'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'QTY1'
        DataPipeline = ppDBQDetail
        DisplayFormat = '0.0,0;(0.0,0);-'
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
        mmHeight = 4487
        mmLeft = 141848
        mmTop = 1058
        mmWidth = 15579
        BandType = 4
      end
      object ppDBText30: TppDBText
        UserName = 'DBText30'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'QTY2'
        DataPipeline = ppDBQDetail
        DisplayFormat = '#,0;-#,0'
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
        mmHeight = 4487
        mmLeft = 128577
        mmTop = 1058
        mmWidth = 12446
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
        mmLeft = 89165
        mmTop = 794
        mmWidth = 38365
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
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'NO_MESIN'
        DataPipeline = ppDBQDetail
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBQDetail'
        mmHeight = 4487
        mmLeft = 17198
        mmTop = 794
        mmWidth = 11091
        BandType = 4
      end
      object ppDBText18: TppDBText
        UserName = 'DBText18'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'QTY3'
        DataPipeline = ppDBQDetail
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBQDetail'
        mmHeight = 4572
        mmLeft = 54055
        mmTop = 1058
        mmWidth = 3810
        BandType = 4
      end
      object ppDBText20: TppDBText
        UserName = 'DBText20'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'QTY4'
        DataPipeline = ppDBQDetail
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBQDetail'
        mmHeight = 4572
        mmLeft = 60638
        mmTop = 1058
        mmWidth = 8636
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
        DataField = 'KD_ITEM'
        DataPipeline = ppDBQDetail
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBQDetail'
        mmHeight = 4572
        mmLeft = 70644
        mmTop = 1058
        mmWidth = 14393
        BandType = 4
      end
      object ppDBText16: TppDBText
        UserName = 'DBText16'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'MESIN'
        DataPipeline = ppDBQDetail
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBQDetail'
        mmHeight = 4572
        mmLeft = 33602
        mmTop = 1058
        mmWidth = 14563
        BandType = 4
      end
      object ppDBText17: TppDBText
        UserName = 'DBText17'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'STD_PSN'
        DataPipeline = ppDBQDetail
        DisplayFormat = '0.0,0;(0.0,0) %'
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
        mmHeight = 4586
        mmLeft = 176795
        mmTop = 1058
        mmWidth = 16087
        BandType = 4
      end
      object ppDBText29: TppDBText
        UserName = 'DBText29'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'QTY_STANDAR'
        DataPipeline = ppDBQDetail
        DisplayFormat = '#,##0.######;(#,##0.######)'
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
        mmHeight = 4498
        mmLeft = 158486
        mmTop = 1058
        mmWidth = 16669
        BandType = 4
      end
      object ppVariable1: TppVariable
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
        mmLeft = 2381
        mmTop = 1058
        mmWidth = 4498
        BandType = 4
      end
      object ppLabel36: TppLabel
        UserName = 'Nomer'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Nomer'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4163
        mmLeft = 6915
        mmTop = 1323
        mmWidth = 10513
        BandType = 4
      end
    end
    object ppFooterBand2: TppFooterBand
      BeforePrint = ppFooterBand2BeforePrint
      mmBottomOffset = 0
      mmHeight = 9525
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
        mmLeft = 2117
        mmTop = 2646
        mmWidth = 28840
        BandType = 8
      end
      object ppDBText41: TppDBText
        UserName = 'DBText41'
        HyperlinkColor = clBlue
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
        mmHeight = 3440
        mmLeft = 39423
        mmTop = 2381
        mmWidth = 118798
        BandType = 8
      end
    end
    object ppSummaryBand2: TppSummaryBand
      PrintHeight = phDynamic
      AlignToBottom = False
      mmBottomOffset = 0
      mmHeight = 43656
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
        DataPipeline = ppDBQMaster
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Stretch = True
        Transparent = True
        DataPipelineName = 'ppDBQMaster'
        mmHeight = 4233
        mmLeft = 19050
        mmTop = 2910
        mmWidth = 93927
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeading = 0
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
        mmLeft = 79640
        mmTop = 37306
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
        mmLeft = 79640
        mmTop = 33073
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
        mmLeft = 79640
        mmTop = 16140
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
        mmLeft = 41540
        mmTop = 16140
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
        mmLeft = 3440
        mmTop = 16140
        mmWidth = 33602
        BandType = 7
      end
      object ppDBText32: TppDBText
        UserName = 'DBText32'
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
        mmLeft = 3440
        mmTop = 33073
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
        mmLeft = 3440
        mmTop = 37306
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
        mmLeft = 41540
        mmTop = 33073
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
        mmLeft = 41540
        mmTop = 37306
        mmWidth = 33602
        BandType = 7
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 125677
        mmTop = 529
        mmWidth = 15081
        BandType = 7
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 142082
        mmTop = 794
        mmWidth = 15081
        BandType = 7
      end
      object ppDBCalc1: TppDBCalc
        UserName = 'DBCalc1'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'QTY1'
        DataPipeline = ppDBQDetail
        DisplayFormat = '0.0,0;(0.0,0);-'
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
        mmLeft = 142346
        mmTop = 2646
        mmWidth = 15081
        BandType = 7
      end
      object ppDBCalc2: TppDBCalc
        UserName = 'DBCalc2'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'QTY2'
        DataPipeline = ppDBQDetail
        DisplayFormat = '#,0;-#,0'
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
        mmLeft = 126207
        mmTop = 2381
        mmWidth = 14552
        BandType = 7
      end
    end
    object ppPageStyle1: TppPageStyle
      EndPage = 0
      SinglePage = 0
      StartPage = 0
      mmBottomOffset = 0
      mmHeight = 28840
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
    RefreshAfterPost = True
    UserName = 'DBQMaster'
    Left = 120
    Top = 16
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
      FieldAlias = 'QTY_RESEP'
      FieldName = 'QTY_RESEP'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
    object ppDBQMasterppField18: TppField
      FieldAlias = 'TGL_INSERT'
      FieldName = 'TGL_INSERT'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 17
      Searchable = False
      Sortable = False
    end
    object ppDBQMasterppField19: TppField
      FieldAlias = 'OPR_INSERT'
      FieldName = 'OPR_INSERT'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 18
      Searchable = False
      Sortable = False
    end
  end
  object ppDBQDetail: TppDBPipeline
    DataSource = dsQDetail
    OpenDataSource = False
    RefreshAfterPost = True
    UserName = 'DBQDetail'
    Left = 112
    Top = 88
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
      FieldAlias = 'IBUKTI'
      FieldName = 'IBUKTI'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppDBQDetailppField4: TppField
      FieldAlias = 'QTY1'
      FieldName = 'QTY1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppDBQDetailppField5: TppField
      FieldAlias = 'KETERANGAN'
      FieldName = 'KETERANGAN'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppDBQDetailppField6: TppField
      FieldAlias = 'KD_SUB_LOKASI'
      FieldName = 'KD_SUB_LOKASI'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppDBQDetailppField7: TppField
      FieldAlias = 'RASIO'
      FieldName = 'RASIO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppDBQDetailppField8: TppField
      FieldAlias = 'KD_SATUAN'
      FieldName = 'KD_SATUAN'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppDBQDetailppField9: TppField
      FieldAlias = 'NO_MESIN'
      FieldName = 'NO_MESIN'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppDBQDetailppField10: TppField
      FieldAlias = 'QTY2'
      FieldName = 'QTY2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object ppDBQDetailppField11: TppField
      FieldAlias = 'QTY3'
      FieldName = 'QTY3'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object ppDBQDetailppField12: TppField
      FieldAlias = 'QTY4'
      FieldName = 'QTY4'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object ppDBQDetailppField13: TppField
      FieldAlias = 'MESIN'
      FieldName = 'MESIN'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object ppDBQDetailppField14: TppField
      FieldAlias = 'EFF'
      FieldName = 'EFF'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object ppDBQDetailppField15: TppField
      FieldAlias = 'QTY5'
      FieldName = 'QTY5'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object ppDBQDetailppField16: TppField
      FieldAlias = 'QTY6'
      FieldName = 'QTY6'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object ppDBQDetailppField17: TppField
      FieldAlias = 'OPR_INSERT'
      FieldName = 'OPR_INSERT'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
    object ppDBQDetailppField18: TppField
      FieldAlias = 'JAM1'
      FieldName = 'JAM1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 17
      Searchable = False
      Sortable = False
    end
    object ppDBQDetailppField19: TppField
      FieldAlias = 'RASIO2'
      FieldName = 'RASIO2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 18
      Searchable = False
      Sortable = False
    end
    object ppDBQDetailppField20: TppField
      FieldAlias = 'QTY_STANDAR'
      FieldName = 'QTY_STANDAR'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 19
      Searchable = False
      Sortable = False
    end
    object ppDBQDetailppField21: TppField
      FieldAlias = 'STD_PSN'
      FieldName = 'STD_PSN'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 20
      Searchable = False
      Sortable = False
    end
    object ppDBQDetailppField22: TppField
      FieldAlias = 'KD_ITEM2'
      FieldName = 'KD_ITEM2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 21
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
    UserName = 'DBQTransaksi'
    Left = 248
    Top = 48
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
      FieldLength = 10
      DisplayWidth = 10
      Position = 18
    end
  end
  object dsQTransaksi: TwwDataSource
    DataSet = QTransaksi
    Left = 384
    Top = 8
  end
  object QProc_Update_PO: TOracleQuery
    SQL.Strings = (
      'begin'
      '  ipisma_db3.proc_update_po(:no_po);'
      'end;')
    Session = DMFrm.OS
    Variables.Data = {0300000001000000060000003A4E4F5F504F050000000000000000000000}
    BeforeQuery = QProc_Update_POBeforeQuery
    Left = 456
    Top = 64
  end
  object QLokasi: TOracleDataSet
    SQL.Strings = (
      'select * from ipisma_db3.vlokasiall'
      'where kd_lokasi=:pkd_lokasi and'
      'jns_lokasi=:pjns_lokasi')
    Variables.Data = {
      03000000020000000B0000003A504B445F4C4F4B415349050000000000000000
      0000000C0000003A504A4E535F4C4F4B415349050000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      04000000090000000D0000004B445F5355425F4C4F4B4153490100000000000A
      0000004A4E535F4C4F4B415349010000000000090000004B445F4C4F4B415349
      0100000000000B000000535045534946494B4153490100000000000300000045
      4646010000000000030000004B50530100000000000600000053415455414E01
      0000000000030000004A4D4C010000000000090000004B445F42454E414E4701
      0000000000}
    Cursor = crSQLWait
    Session = DMFrm.OS
    Left = 200
    Top = 328
    object QLokasiKD_SUB_LOKASI: TStringField
      DisplayLabel = 'MESIN'
      DisplayWidth = 10
      FieldName = 'KD_SUB_LOKASI'
      Required = True
      Size = 12
    end
    object QLokasiKD_BENANG: TStringField
      DisplayLabel = 'BENANG'
      DisplayWidth = 12
      FieldName = 'KD_BENANG'
      Size = 12
    end
    object QLokasiSPESIFIKASI: TStringField
      DisplayWidth = 25
      FieldName = 'SPESIFIKASI'
      Size = 50
    end
    object QLokasiJML: TFloatField
      DisplayWidth = 5
      FieldName = 'JML'
    end
    object QLokasiKPS: TFloatField
      DisplayWidth = 7
      FieldName = 'KPS'
    end
    object QLokasiEFF: TFloatField
      DisplayWidth = 8
      FieldName = 'EFF'
      DisplayFormat = '0.0,0 %'
    end
    object QLokasiJNS_LOKASI: TStringField
      DisplayLabel = 'JENIS'
      DisplayWidth = 10
      FieldName = 'JNS_LOKASI'
      Required = True
      Visible = False
      Size = 10
    end
  end
  object QItem: TOracleDataSet
    SQL.Strings = (
      'SELECT'
      
        'A.kd_item, A.nama_item, A.kd_sub_lokasi, A.satuan, A.rasio, A.ra' +
        'sio2, A.kd_satuan,'
      'NVL(A.QTY,0) - NVL(B.QTY1,0) as QTY, '
      'NVL(A.QTY2,0) - NVL(B.QTY2,0) as QTY2 '
      'FROM'
      '('
      
        'select kd_item, nama_item,kd_sub_lokasi,satuan,rasio,rasio2,kd_s' +
        'atuan,'
      ''
      
        'round(nvl((awmasuk1+ (awmasuk3+awmasuk3IN) + (awkoreksi1+awkorek' +
        'si1IN) ) - (awkeluar1+ (awkeluar5+awkeluar5OUT) ) ,0),4) as qty,' +
        ' '
      
        'round(nvl(((awmasuk1+ (awmasuk3+awmasuk3IN) + (awkoreksi1+awkore' +
        'ksi1IN) ) - (awkeluar1+ (awkeluar5+awkeluar5OUT) )) / rasio2 ,0)' +
        ',4) as qty2'
      ''
      'from'
      
        '(select a.kd_item,a.nama_item,'#39'10-00000'#39' as kd_sub_lokasi, a.ras' +
        'io2, a.satuan, a.rasio, a.kd_satuan,'
      '--(select round(nvl(sum(qty),0),4) from pmtx02.vvbon_barang_nbb'
      
        '--where id_bag='#39'H'#39' and id_sub_bag='#39'A'#39' and ((kd_item=b.kd_item2) ' +
        'or ((kd_item=b.kd_item3) or (kd_item=b.kd_item4)))'
      '--and tanggal<=trunc(:psysdate))/1 AS awmasuk1,'
      '(select nvl(sum(qty),0) as qty FROM '
      '(SELECT kd_item,nvl(sum(qty),0) as qty FROM ('
      
        '(select kd_item,round(nvl(sum(qty),0),4) AS QTY from pmtx02.vvbo' +
        'n_barang_nbb'
      '  where '
      '  tanggal<=trunc(:psysdate)  and '
      '  id_bag='#39'H'#39' and id_sub_bag='#39'A'#39'   group by kd_item'
      '  )'
      '  UNION ALL'
      
        '  (select kd_item,round(nvl(sum(qty),0),4) AS QTY from pmtx02.vv' +
        'bon_barang_nbb@gjduduk'
      '  where '
      '  tanggal<=trunc(:psysdate)  and '
      '  id_bag='#39'H'#39' and id_sub_bag='#39'A'#39'   group by kd_item'
      '  )'
      '  )group by kd_item'
      '  '
      
        '  )WHERE --((kd_item=b.kd_item2) or ((kd_item=b.kd_item3) or (kd' +
        '_item=b.kd_item4))) '
      
        '  (kd_item=b.kd_item2) or (kd_item=b.kd_item3) or (kd_item=b.kd_' +
        'item4) or (kd_item=b.kd_item5) or (kd_item=b.kd_item6)'
      
        '   or (kd_item=b.kd_item7) or (kd_item=b.kd_item8) or (kd_item=b' +
        '.kd_item9) or (kd_item=b.kd_item10)'
      
        '   or (kd_item=b.kd_item11) or (kd_item=b.kd_item12) or (kd_item' +
        '=b.kd_item13) or (kd_item=b.kd_item14)                    --0806' +
        '23'
      ' ) '
      ' / 1 AS awmasuk1,'
      ''
      
        '(select round(nvl(sum(qty_out-qty_in),0),4) from ipisma_db3.vkar' +
        'tu_stok_P1'
      
        'where jns_koreksi='#39'RETUR GD WARNA'#39' and kd_lokasi=:vjns_brg and k' +
        'd_item=a.kd_item and kd_transaksi='#39'799'#39
      'and tgl<=trunc(:psysdate))/1 AS awmasuk3,'
      
        '(select round(nvl(sum(qty_IN),0),4) from ipisma_db3.vkartu_stok_' +
        'P1'
      
        'where jns_koreksi='#39'RETUR_GD_WARNA_IN'#39' and kd_lokasi=:vjns_brg an' +
        'd kd_item=a.kd_item and kd_transaksi='#39'799'#39
      'and tgl<=trunc(:psysdate))/1 AS awmasuk3IN,'
      ''
      
        '(select round(nvl(sum(qty_out-qty_in),0),4) from ipisma_db3.vkar' +
        'tu_stok_P1'
      
        'where jns_koreksi='#39'KOREKSI1'#39' and kd_lokasi=:vjns_brg and kd_item' +
        '=a.kd_item and kd_transaksi='#39'799'#39' and qty_in<0'
      'and tgl<=trunc(:psysdate))/1 AS awkoreksi1,'
      
        '(select round(nvl(sum(qty_IN),0),4) from ipisma_db3.vkartu_stok_' +
        'P1'
      
        'where jns_koreksi='#39'KOREKSI1_IN'#39' and kd_lokasi=:vjns_brg and kd_i' +
        'tem=a.kd_item and kd_transaksi='#39'799'#39
      'and tgl<=trunc(:psysdate))/1 AS awkoreksi1IN,'
      ''
      
        '(select round(nvl(sum(qty_in-qty_out),0),4) from ipisma_db3.vkar' +
        'tu_stok_P1'
      
        'where kd_lokasi=:vjns_brg and kd_item=a.kd_item and kd_transaksi' +
        '='#39'791'#39' and jns_lokasi='#39'LOKASI'#39
      'and tgl<=trunc(:psysdate))/1 AS awkeluar1,'
      ''
      
        '(select round(nvl(sum(qty_in-qty_out),0),4) from ipisma_db3.vkar' +
        'tu_stok_P1'
      
        'where jns_koreksi= '#39'KOREKSI1'#39' and kd_lokasi=:vjns_brg and kd_ite' +
        'm=a.kd_item and kd_transaksi='#39'799'#39' and qty_in>0'
      'and tgl<=trunc(:psysdate))/1 AS awkeluar5,'
      
        '(select round(nvl(sum(qty_OUT),0),4) from ipisma_db3.vkartu_stok' +
        '_P1'
      
        'where jns_koreksi= '#39'KOREKSI1_OUT'#39' and kd_lokasi=:vjns_brg and kd' +
        '_item=a.kd_item and kd_transaksi='#39'799'#39
      'and tgl<=trunc(:psysdate))/1 AS awkeluar5OUT'
      ''
      
        'from ipisma_db3.vitemall a, ipisma_db3.vkonversi_item_pgd b  --i' +
        'pisma_db3.konversi_item b'
      'where a.kd_jns_item=:vjns_brg and a.kd_item=b.kd_item1'
      'and a.kd_sub_kel=:vkd_benang '
      
        'and ((a.kd_item like '#39'%'#39'||:pfilter||'#39'%'#39') OR (a.nama_item like '#39'%' +
        #39'||:pfilter||'#39'%'#39'))'
      ''
      ')'
      'where '
      
        #9'(round(nvl((awmasuk1+ (awmasuk3+awmasuk3IN) + (awkoreksi1+awkor' +
        'eksi1IN) ) - (awkeluar1+ (awkeluar5+awkeluar5OUT) ) ,0),4) <>0 '
      #9'or '
      
        #9'round(nvl(((awmasuk1+ (awmasuk3+awmasuk3IN) + (awkoreksi1+awkor' +
        'eksi1IN) ) - (awkeluar1+ (awkeluar5+awkeluar5OUT) )) / rasio2 ,0' +
        '),4) <>0)'
      ') A,'
      '(select '
      'KD_ITEM,'
      'NVL(sum(QTY1),0) as qty1, '
      'NVL(sum(QTY2),0) as qty2'
      'from ipisma_db3.bukti_detail a'
      'where ibukti = :ibukti'
      'group by kd_item,ibukti) B'
      'WHERE A.KD_ITEM=B.KD_ITEM(+)'
      ''
      ''
      '')
    Variables.Data = {
      0300000005000000090000003A564A4E535F4252470500000003000000313000
      000000000B0000003A564B445F42454E414E4705000000070000003330732054
      520000000000080000003A5046494C5445520500000002000000250000000000
      090000003A50535953444154450C0000000000000000000000070000003A4942
      554B5449030000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      0400000009000000070000004B445F4954454D010000000000090000004E414D
      415F4954454D0100000000000600000053415455414E01000000000009000000
      4B445F53415455414E01000000000005000000524153494F0100000000000600
      0000524153494F320100000000000D0000004B445F5355425F4C4F4B41534901
      0000000000030000005154590100000000000400000051545932010000000000}
    Cursor = crSQLWait
    ReadOnly = True
    QueryAllRecords = False
    BeforeQuery = QItemBeforeQuery
    Session = DMFrm.OS
    Left = 288
    Top = 312
    object QItemNAMA_ITEM: TStringField
      DisplayLabel = 'NAMA ITEM'
      DisplayWidth = 35
      FieldName = 'NAMA_ITEM'
      Required = True
      Size = 50
    end
    object QItemKD_ITEM: TStringField
      DisplayLabel = 'KODE'
      DisplayWidth = 10
      FieldName = 'KD_ITEM'
      Required = True
      Size = 50
    end
    object QItemSATUAN: TStringField
      DisplayWidth = 12
      FieldName = 'SATUAN'
      Size = 12
    end
    object QItemRASIO: TFloatField
      DisplayLabel = 'Rasio Spring'
      DisplayWidth = 5
      FieldName = 'RASIO'
    end
    object QItemRASIO2: TFloatField
      DisplayLabel = 'Rasio ISI'
      DisplayWidth = 5
      FieldName = 'RASIO2'
    end
    object QItemQTY: TFloatField
      DisplayLabel = 'QTY (Kg)'
      DisplayWidth = 15
      FieldName = 'QTY'
      DisplayFormat = '#,0.0000;-#,0.0000;-'
    end
    object QItemQTY2: TFloatField
      DisplayLabel = 'QTY (Pcs)'
      DisplayWidth = 15
      FieldName = 'QTY2'
      DisplayFormat = '#,0;-#,0;-'
    end
    object QItemKD_SATUAN: TStringField
      FieldName = 'KD_SATUAN'
      Required = True
      Visible = False
      Size = 2
    end
  end
  object QTotal: TOracleDataSet
    SQL.Strings = (
      
        'select sum(qty5) as krat, sum(qty6) as kg, sum(qty2) as pcs from' +
        ' ipisma_db3.bukti_detail a'
      'where ibukti = :ibukti')
    Variables.Data = {0300000001000000070000003A4942554B5449030000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      0400000003000000020000004B47010000000000040000004B52415401000000
      000003000000504353010000000000}
    Cursor = crSQLWait
    Session = DMFrm.OS
    Left = 245
    Top = 401
    object QTotalKRAT: TFloatField
      FieldName = 'KRAT'
    end
    object QTotalKG: TFloatField
      FieldName = 'KG'
    end
    object QTotalPCS: TFloatField
      FieldName = 'PCS'
    end
  end
end
