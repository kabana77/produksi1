object OrganisasiItemFrm: TOrganisasiItemFrm
  Left = 351
  Top = 104
  Width = 1013
  Height = 634
  Caption = 'Master Barang'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PanelLeft: TPanel
    Left = 0
    Top = 0
    Width = 57
    Height = 595
    Align = alLeft
    BevelOuter = bvNone
    Color = 7039851
    TabOrder = 0
  end
  object PanelRight: TPanel
    Left = 716
    Top = 0
    Width = 281
    Height = 595
    Align = alClient
    BevelOuter = bvNone
    Color = clAppWorkSpace
    TabOrder = 1
  end
  object PanelMain: TPanel
    Left = 57
    Top = 0
    Width = 659
    Height = 595
    Align = alLeft
    BevelOuter = bvNone
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 2
    object Label1: TLabel
      Left = 0
      Top = 582
      Width = 659
      Height = 13
      Align = alBottom
      Color = clSkyBlue
      ParentColor = False
    end
    object DBText3: TDBText
      Left = 0
      Top = 49
      Width = 659
      Height = 27
      Align = alTop
      Alignment = taRightJustify
      Color = clSkyBlue
      DataField = 'KD_ITEM'
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
      Width = 659
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
      Width = 659
      Height = 506
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
          Width = 651
          Height = 283
          Align = alTop
          BevelOuter = bvNone
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          DesignSize = (
            651
            283)
          object Label6: TLabel
            Left = 16
            Top = 192
            Width = 49
            Height = 13
            Caption = 'Diskripsi'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clOlive
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object LBarcode: TDBText
            Left = 553
            Top = 0
            Width = 90
            Height = 24
            Alignment = taRightJustify
            Anchors = [akTop, akRight, akBottom]
            AutoSize = True
            DataField = 'KD_ITEM'
            DataSource = dsQMaster
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label9: TLabel
            Left = 16
            Top = 152
            Width = 77
            Height = 13
            Caption = 'Nama Barang'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clOlive
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label10: TLabel
            Left = 464
            Top = 112
            Width = 41
            Height = 13
            Cursor = crHandPoint
            Caption = 'Satuan'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clOlive
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
            OnClick = Label10Click
          end
          object Label11: TLabel
            Left = 464
            Top = 72
            Width = 95
            Height = 13
            Caption = 'Lead Time (Hari)'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clOlive
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label13: TLabel
            Left = 464
            Top = 8
            Width = 71
            Height = 13
            Caption = 'Part Number'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clOlive
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object LSatuan: TLabel
            Left = 512
            Top = 131
            Width = 5
            Height = 13
          end
          object DBMemo1: TDBMemo
            Left = 16
            Top = 208
            Width = 428
            Height = 49
            DataField = 'DISKRIPSI'
            DataSource = dsQMaster
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
          end
          object wwDBEdit1: TwwDBEdit
            Left = 16
            Top = 168
            Width = 428
            Height = 19
            DataField = 'NAMA_ITEM'
            DataSource = dsQMaster
            TabOrder = 1
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
          object wwDBLookupComboDlg4: TwwDBLookupComboDlg
            Left = 464
            Top = 128
            Width = 41
            Height = 19
            GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
            GridColor = clWhite
            GridTitleAlignment = taLeftJustify
            Caption = 'Lookup'
            MaxWidth = 0
            MaxHeight = 209
            Selected.Strings = (
              'KD_SATUAN'#9'4'#9'KODE'#9#9
              'SATUAN'#9'12'#9'SATUAN'#9#9)
            DataField = 'KD_SATUAN'
            DataSource = dsQMaster
            LookupTable = QSatuan
            LookupField = 'KD_SATUAN'
            TabOrder = 2
            AutoDropDown = False
            ShowButton = True
            AllowClearKey = False
            OnCloseUp = wwDBLookupComboDlg4CloseUp
            OnEnter = wwDBLookupComboDlg4Enter
          end
          object wwDBSpinEdit3: TwwDBSpinEdit
            Left = 464
            Top = 88
            Width = 41
            Height = 19
            Increment = 1.000000000000000000
            DataField = 'LEAD_TIME'
            DataSource = dsQMaster
            TabOrder = 3
            UnboundDataType = wwDefault
          end
          object GroupBox1: TGroupBox
            Left = 16
            Top = 0
            Width = 433
            Height = 145
            Caption = 'Organisasi Brang'
            TabOrder = 4
            object Label7: TLabel
              Left = 16
              Top = 64
              Width = 82
              Height = 13
              Cursor = crHandPoint
              Caption = 'Sub Kelompok'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clOlive
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold, fsUnderline]
              ParentFont = False
              OnClick = Label7Click
            end
            object Label8: TLabel
              Left = 16
              Top = 24
              Width = 56
              Height = 13
              Cursor = crHandPoint
              Caption = 'Kelompok'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clOlive
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold, fsUnderline]
              ParentFont = False
              OnClick = Label8Click
            end
            object Label16: TLabel
              Left = 16
              Top = 104
              Width = 75
              Height = 13
              Cursor = crHandPoint
              Caption = 'Merk/ Pabrik'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clOlive
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold, fsUnderline]
              ParentFont = False
              OnClick = Label16Click
            end
            object LKelompok: TLabel
              Left = 88
              Top = 42
              Width = 5
              Height = 13
            end
            object LSubKelompok: TLabel
              Left = 88
              Top = 82
              Width = 5
              Height = 13
            end
            object LMerk: TLabel
              Left = 88
              Top = 122
              Width = 5
              Height = 13
            end
            object Label22: TLabel
              Left = 352
              Top = 104
              Width = 68
              Height = 13
              Caption = 'No. Benang'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clOlive
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object wwDBLookupComboDlg1: TwwDBLookupComboDlg
              Left = 16
              Top = 40
              Width = 57
              Height = 19
              GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
              GridColor = clWhite
              GridTitleAlignment = taLeftJustify
              Caption = 'Lookup'
              MaxWidth = 0
              MaxHeight = 209
              Selected.Strings = (
                'KD_KEL'#9'6'#9'KODE'#9#9
                'NAMA_KELOMPOK'#9'30'#9'NAMA KELOMPOK'#9#9)
              DataField = 'KD_KEL'
              DataSource = dsQMaster
              LookupTable = QKelompok
              LookupField = 'KD_KEL'
              TabOrder = 0
              AutoDropDown = False
              ShowButton = True
              AllowClearKey = False
              OnCloseUp = wwDBLookupComboDlg1CloseUp
              OnEnter = wwDBLookupComboDlg1Enter
            end
            object wwDBLookupComboDlg2: TwwDBLookupComboDlg
              Left = 16
              Top = 120
              Width = 57
              Height = 19
              GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
              GridColor = clWhite
              GridTitleAlignment = taLeftJustify
              Caption = 'Lookup'
              MaxWidth = 0
              MaxHeight = 209
              Selected.Strings = (
                'KD_MERK'#9'6'#9'KODE'#9#9
                'NAMA_MERK'#9'30'#9'NAMA MERK'#9#9)
              DataField = 'KD_MERK'
              DataSource = dsQMaster
              LookupTable = QMerk
              LookupField = 'KD_MERK'
              TabOrder = 1
              AutoDropDown = False
              ShowButton = True
              AllowClearKey = False
              OnCloseUp = wwDBLookupComboDlg2CloseUp
              OnEnter = wwDBLookupComboDlg2Enter
            end
            object wwDBLookupComboDlg3: TwwDBLookupComboDlg
              Left = 16
              Top = 80
              Width = 57
              Height = 19
              GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
              GridColor = clWhite
              GridTitleAlignment = taLeftJustify
              Caption = 'Lookup'
              MaxWidth = 0
              MaxHeight = 209
              Selected.Strings = (
                'KD_SUB_KEL'#9'6'#9'KODE'#9#9
                'NAMA_SUB_KELOMPOK'#9'30'#9'NAMA SUB KELOMPOK'#9#9)
              LookupTable = QSubKelompok
              LookupField = 'KD_KEL'
              TabOrder = 2
              AutoDropDown = False
              ShowButton = True
              AllowClearKey = False
              OnCloseUp = wwDBLookupComboDlg3CloseUp
              OnEnter = wwDBLookupComboDlg3Enter
            end
            object wwDBSpinEdit6: TwwDBSpinEdit
              Left = 352
              Top = 120
              Width = 65
              Height = 19
              Increment = 1.000000000000000000
              DataField = 'NO_BENANG'
              DataSource = dsQMaster
              TabOrder = 3
              UnboundDataType = wwDefault
            end
          end
          object cbResep: TwwCheckBox
            Left = 16
            Top = 264
            Width = 97
            Height = 17
            DisableThemes = False
            AlwaysTransparent = False
            ValueChecked = '1'
            ValueUnchecked = '0'
            DisplayValueChecked = '1'
            DisplayValueUnchecked = '0'
            NullAndBlankState = cbUnchecked
            Caption = 'Punya Resep'
            Ctl3D = False
            DataField = 'ISRESEP'
            DataSource = dsQMaster
            ParentCtl3D = False
            TabOrder = 5
          end
          object wwDBEdit2: TwwDBEdit
            Left = 464
            Top = 24
            Width = 153
            Height = 19
            DataField = 'NO_PART'
            DataSource = dsQMaster
            TabOrder = 6
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
          object cbFixed: TwwCheckBox
            Left = 464
            Top = 48
            Width = 169
            Height = 17
            DisableThemes = False
            AlwaysTransparent = False
            ValueChecked = '1'
            ValueUnchecked = '0'
            DisplayValueChecked = 'True'
            DisplayValueUnchecked = 'False'
            NullAndBlankState = cbUnchecked
            Caption = 'Fixed (Stok Fisik Cocok)'
            DataField = 'ISFIXED'
            DataSource = dsQMaster
            TabOrder = 7
          end
          object GroupBox2: TGroupBox
            Left = 450
            Top = 148
            Width = 200
            Height = 134
            Caption = 'Rasio'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 8
            object Label12: TLabel
              Left = 8
              Top = 65
              Width = 36
              Height = 13
              Caption = 'Cones'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clOlive
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object LRasio: TLabel
              Left = 151
              Top = 17
              Width = 43
              Height = 13
              Caption = 'Kg/Pcs'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object lblSpring: TLabel
              Left = 8
              Top = 17
              Width = 37
              Height = 13
              Caption = 'Spring'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label4: TLabel
              Left = 151
              Top = 65
              Width = 43
              Height = 13
              Caption = 'Kg/Pcs'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clOlive
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label17: TLabel
              Left = 151
              Top = 89
              Width = 43
              Height = 13
              Caption = 'Kg/Pcs'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clOlive
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label18: TLabel
              Left = 8
              Top = 89
              Width = 33
              Height = 13
              Caption = 'Pallet'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clOlive
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label19: TLabel
              Left = 162
              Top = 113
              Width = 32
              Height = 13
              Caption = 'M/Kg'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clOlive
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label20: TLabel
              Left = 8
              Top = 113
              Width = 47
              Height = 13
              Caption = 'Panjang'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clOlive
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object lblSat: TLabel
              Left = 151
              Top = 41
              Width = 43
              Height = 13
              Caption = 'Kg/Pcs'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object lblSpringISI: TLabel
              Left = 8
              Top = 41
              Width = 55
              Height = 13
              Caption = 'isi/Spring'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object wwDBRasio: TwwDBSpinEdit
              Left = 72
              Top = 14
              Width = 77
              Height = 20
              Increment = 1.000000000000000000
              DataField = 'RASIO'
              DataSource = dsQMaster
              TabOrder = 0
              UnboundDataType = wwDefault
            end
            object wwDBSpinEdit1: TwwDBSpinEdit
              Left = 72
              Top = 62
              Width = 77
              Height = 20
              Increment = 1.000000000000000000
              DataField = 'RASIO_CONES'
              DataSource = dsQMaster
              TabOrder = 1
              UnboundDataType = wwDefault
            end
            object wwDBSpinEdit4: TwwDBSpinEdit
              Left = 72
              Top = 86
              Width = 77
              Height = 20
              Increment = 1.000000000000000000
              DataField = 'RASIO_PALLET'
              DataSource = dsQMaster
              TabOrder = 2
              UnboundDataType = wwDefault
            end
            object wwDBSpinEdit5: TwwDBSpinEdit
              Left = 72
              Top = 110
              Width = 77
              Height = 20
              Increment = 1.000000000000000000
              DataField = 'RASIO3'
              DataSource = dsQMaster
              TabOrder = 3
              UnboundDataType = wwDefault
            end
            object wwDBSpin: TwwDBSpinEdit
              Left = 72
              Top = 38
              Width = 77
              Height = 20
              Increment = 1.000000000000000000
              DataField = 'RASIO2'
              DataSource = dsQMaster
              TabOrder = 4
              UnboundDataType = wwDefault
            end
          end
          object wwCheckBox1: TwwCheckBox
            Left = 568
            Top = 85
            Width = 65
            Height = 17
            DisableThemes = False
            AlwaysTransparent = False
            ValueChecked = '1'
            ValueUnchecked = '0'
            DisplayValueChecked = 'True'
            DisplayValueUnchecked = 'False'
            NullAndBlankState = cbUnchecked
            Caption = 'AKTIF'
            DataField = 'ISJASA'
            DataSource = dsQMaster
            TabOrder = 9
          end
        end
        object PanelDetail: TPanel
          Left = 0
          Top = 324
          Width = 651
          Height = 113
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 2
          object wwDBGrid1: TwwDBGrid
            Left = 0
            Top = 0
            Width = 651
            Height = 113
            ControlType.Strings = (
              'KD_ITEM2;CustomEdit;LookItem;F')
            Selected.Strings = (
              'KD_ITEM2'#9'16'#9'KODE'#9'F'
              'NAMA_BARANG'#9'47'#9'NAMA BARANG'#9'T'
              'SATUAN'#9'12'#9'SATUAN'#9'F'
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
            TabOrder = 0
            TitleAlignment = taCenter
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWhite
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = [fsBold]
            TitleLines = 2
            TitleButtons = True
            UseTFields = False
          end
          object LookItem: TwwDBLookupComboDlg
            Left = 64
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
              'NAMA_ITEM'#9'35'#9'NAMA ITEM'#9'F'
              'KD_ITEM'#9'10'#9'KODE'#9'F'
              'SATUAN'#9'12'#9'SATUAN'#9'F'
              'LEAD_TIME'#9'5'#9'LEAD'#9'F')
            DataField = 'KD_ITEM2'
            DataSource = dsQDetail
            LookupTable = QItem
            LookupField = 'KD_ITEM'
            TabOrder = 1
            AutoDropDown = True
            ShowButton = True
            AllowClearKey = False
            OnEnter = LookItemEnter
          end
        end
        object PanelFooter1: TPanel
          Left = 0
          Top = 437
          Width = 651
          Height = 38
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 3
          DesignSize = (
            651
            38)
          object BtnPrintInput: TBitBtn
            Left = 481
            Top = 6
            Width = 75
            Height = 25
            Anchors = [akTop, akRight]
            Caption = '&Print'
            TabOrder = 0
            OnClick = BtnPrintInputClick
            NumGlyphs = 2
          end
          object BtnClose1: TBitBtn
            Left = 561
            Top = 6
            Width = 75
            Height = 25
            Anchors = [akTop, akRight]
            Caption = '&Close'
            TabOrder = 1
            OnClick = BtnClose1Click
            NumGlyphs = 2
          end
          object wwDBNavigatorInput: TwwDBNavigator
            Left = 0
            Top = 0
            Width = 169
            Height = 38
            AutosizeStyle = asSizeNavButtons
            DataSource = dsQMaster
            RepeatInterval.InitialDelay = 500
            RepeatInterval.Interval = 100
            Align = alLeft
            object wwDBNavigatorInputButton: TwwNavButton
              Left = 0
              Top = 0
              Width = 29
              Height = 38
              Hint = 'Move to prior record'
              ImageIndex = -1
              NumGlyphs = 2
              Spacing = 4
              Transparent = False
              Caption = 'wwDBNavigatorInputButton'
              Enabled = False
              DisabledTextColors.ShadeColor = clGray
              DisabledTextColors.HighlightColor = clBtnHighlight
              Index = 0
              Style = nbsPrior
            end
            object wwDBNavigatorInputNext: TwwNavButton
              Left = 29
              Top = 0
              Width = 28
              Height = 38
              Hint = 'Move to next record'
              ImageIndex = -1
              NumGlyphs = 2
              Spacing = 4
              Transparent = False
              Caption = 'wwDBNavigatorInputNext'
              Enabled = False
              DisabledTextColors.ShadeColor = clGray
              DisabledTextColors.HighlightColor = clBtnHighlight
              Index = 1
              Style = nbsNext
            end
            object wwDBNavigatorInputCancel: TwwNavButton
              Left = 57
              Top = 0
              Width = 28
              Height = 38
              Hint = 'Cancel changes made to current record'
              ImageIndex = -1
              NumGlyphs = 2
              Spacing = 4
              Transparent = False
              Caption = 'wwDBNavigatorInputCancel'
              Enabled = False
              DisabledTextColors.ShadeColor = clGray
              DisabledTextColors.HighlightColor = clBtnHighlight
              Index = 2
              Style = nbsCancel
            end
            object wwDBNavigatorInputButton1: TwwNavButton
              Left = 85
              Top = 0
              Width = 28
              Height = 38
              Hint = 'Insert new record'
              ImageIndex = -1
              NumGlyphs = 2
              Spacing = 4
              Transparent = False
              Caption = 'wwDBNavigatorInputButton1'
              Enabled = False
              DisabledTextColors.ShadeColor = clGray
              DisabledTextColors.HighlightColor = clBtnHighlight
              Index = 3
              Style = nbsInsert
            end
            object wwDBNavigatorInputButton2: TwwNavButton
              Left = 113
              Top = 0
              Width = 28
              Height = 38
              Hint = 'Post changes of current record'
              ImageIndex = -1
              NumGlyphs = 2
              Spacing = 4
              Transparent = False
              Caption = 'wwDBNavigatorInputButton2'
              Enabled = False
              DisabledTextColors.ShadeColor = clGray
              DisabledTextColors.HighlightColor = clBtnHighlight
              OnClick = wwDBNavigatorInputButton2Click
              Index = 4
              Style = nbsPost
            end
            object wwDBNavigatorInputButton3: TwwNavButton
              Left = 141
              Top = 0
              Width = 28
              Height = 38
              Hint = 'Delete current record'
              ImageIndex = -1
              NumGlyphs = 2
              Spacing = 4
              Transparent = False
              Caption = 'wwDBNavigatorInputButton3'
              Enabled = False
              DisabledTextColors.ShadeColor = clGray
              DisabledTextColors.HighlightColor = clBtnHighlight
              Index = 5
              Style = nbsDelete
            end
          end
          object BtnDesign1: TBitBtn
            Left = 400
            Top = 8
            Width = 75
            Height = 25
            Caption = 'Design'
            TabOrder = 3
            OnClick = BtnDesign1Click
          end
        end
        object PanelBand: TPanel
          Left = 0
          Top = 283
          Width = 651
          Height = 41
          Align = alTop
          BevelOuter = bvNone
          Color = clSkyBlue
          TabOrder = 1
          DesignSize = (
            651
            41)
          object Label14: TLabel
            Left = 578
            Top = 2
            Width = 43
            Height = 13
            Anchors = [akTop, akRight, akBottom]
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
            Width = 55
            Height = 13
            Caption = 'Cari Barang'
          end
          object wwDBSpinLine1: TwwDBSpinEdit
            Left = 578
            Top = 18
            Width = 41
            Height = 19
            Anchors = [akTop, akRight, akBottom]
            Increment = 50.000000000000000000
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
            Width = 121
            Height = 19
            TabOrder = 1
            OnKeyDown = EditCariKeyDown
          end
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Browse'
        ImageIndex = 1
        OnShow = TabSheet2Show
        object LabelBanner: TLabel
          Left = 0
          Top = 57
          Width = 651
          Height = 13
          Align = alTop
          Color = clSkyBlue
          ParentColor = False
        end
        object PanelBrowse: TPanel
          Left = 0
          Top = 70
          Width = 651
          Height = 364
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 0
          object wwDBGrid2: TwwDBGrid
            Left = 0
            Top = 0
            Width = 651
            Height = 364
            Selected.Strings = (
              'KD_ITEM'#9'7'#9'KODE'#9'F'
              'NO_PART'#9'12'#9'NO PART'#9'F'
              'NAMA_ITEM'#9'40'#9'NAMA ITEM'#9'F'
              'SATUAN'#9'8'#9'SATUAN'#9'F'
              'MIN_STOK'#9'6'#9'MIN~STOK'#9'F'
              'LEAD_TIME'#9'6'#9'LEAD~(Hari)'#9'F'
              'RASIO'#9'10'#9'Spring'#9'F'#9'RASIO'
              'RASIO2'#9'10'#9'isi/Spring'#9'F'#9'RASIO')
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
            Font.Height = -13
            Font.Name = 'MS Serif'
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
            TitleFont.Style = [fsBold]
            TitleLines = 2
            TitleButtons = True
            UseTFields = False
            OnTitleButtonClick = wwDBGrid2TitleButtonClick
            OnDblClick = wwDBGrid2DblClick
          end
        end
        object PanelFooter2: TPanel
          Left = 0
          Top = 434
          Width = 651
          Height = 41
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 1
          DesignSize = (
            651
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
          object BtnClose2: TBitBtn
            Left = 555
            Top = 12
            Width = 75
            Height = 25
            Anchors = [akTop, akRight]
            Caption = '&Close'
            TabOrder = 1
            OnClick = BtnClose2Click
            NumGlyphs = 2
          end
          object BtnExport: TBitBtn
            Left = 395
            Top = 12
            Width = 75
            Height = 25
            Anchors = [akTop, akRight]
            Caption = '&Export'
            TabOrder = 2
            OnClick = BtnExportClick
            NumGlyphs = 2
          end
          object BtnPrintBrowse: TBitBtn
            Left = 475
            Top = 12
            Width = 75
            Height = 25
            Anchors = [akTop, akRight]
            Caption = '&Print'
            TabOrder = 3
            OnClick = BtnPrintBrowseClick
            NumGlyphs = 2
          end
          object BtnDesign2: TBitBtn
            Left = 312
            Top = 12
            Width = 75
            Height = 25
            Caption = 'Design'
            TabOrder = 4
            OnClick = BtnDesign2Click
            NumGlyphs = 2
          end
          object CheckBox1: TCheckBox
            Left = 152
            Top = 16
            Width = 113
            Height = 17
            Caption = 'Cetak dg. Barcode'
            TabOrder = 5
          end
        end
        object PanelFilter: TPanel
          Left = 0
          Top = 0
          Width = 651
          Height = 57
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 2
          DesignSize = (
            651
            57)
          object Label5: TLabel
            Left = 585
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
          object BtnOk: TBitBtn
            Left = 8
            Top = 26
            Width = 57
            Height = 25
            Caption = '&Ok'
            TabOrder = 0
            OnClick = BtnOkClick
            NumGlyphs = 2
          end
          object wwDBSpinLine2: TwwDBSpinEdit
            Left = 587
            Top = 32
            Width = 41
            Height = 19
            Anchors = [akTop, akRight]
            Increment = 50.000000000000000000
            MaxValue = 400.000000000000000000
            MinValue = 100.000000000000000000
            Value = 100.000000000000000000
            TabOrder = 1
            UnboundDataType = wwDefault
            OnChange = wwDBSpinLine2Change
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
      'select * from ipisma_db3.vitemall2')
    QBEDefinition.QBEFieldDefs = {
      0400000010000000070000004B445F4954454D010000000000090000004E414D
      415F4954454D010000000000090000004C4541445F54494D4501000000000008
      0000004D494E5F53544F4B0100000000000600000053415455414E0100000000
      000B0000004B445F4A4E535F4954454D01000000000005000000524153494F01
      00000000000D0000004E414D415F4B454C4F4D504F4B01000000000011000000
      4E414D415F5355425F4B454C4F4D504F4B010000000000090000004E414D415F
      4D45524B010000000000070000004E4F5F504152540100000000000A0000004B
      445F5355425F4B454C0100000000000700000049535245534550010000000000
      0600000049534A415341010000000000090000004B445F53415455414E010000
      00000006000000524153494F32010000000000}
    ReadOnly = True
    QueryAllRecords = False
    Session = DMFrm.OS
    AfterScroll = QBrowseAfterScroll
    Left = 848
    Top = 8
    object QBrowseKD_ITEM: TStringField
      FieldName = 'KD_ITEM'
      Required = True
      Size = 50
    end
    object QBrowseNAMA_ITEM: TStringField
      FieldName = 'NAMA_ITEM'
      Required = True
      Size = 50
    end
    object QBrowseSATUAN: TStringField
      FieldName = 'SATUAN'
      Size = 12
    end
    object QBrowseLEAD_TIME: TFloatField
      FieldName = 'LEAD_TIME'
    end
    object QBrowseMIN_STOK: TFloatField
      FieldName = 'MIN_STOK'
      Required = True
    end
    object QBrowseNAMA_KELOMPOK: TStringField
      FieldName = 'NAMA_KELOMPOK'
      Required = True
      Size = 50
    end
    object QBrowseNAMA_SUB_KELOMPOK: TStringField
      DisplayWidth = 50
      FieldName = 'NAMA_SUB_KELOMPOK'
      Required = True
      Size = 50
    end
    object QBrowseNAMA_MERK: TStringField
      FieldName = 'NAMA_MERK'
      Size = 50
    end
    object QBrowseNO_PART: TStringField
      FieldName = 'NO_PART'
      Size = 50
    end
    object QBrowseRASIO: TFloatField
      FieldName = 'RASIO'
    end
    object QBrowseRASIO2: TFloatField
      FieldName = 'RASIO2'
    end
  end
  object dsQBrowse: TwwDataSource
    DataSet = QBrowse
    Left = 888
    Top = 8
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
  object QMaster: TOracleDataSet
    SQL.Strings = (
      'select a.*, a.rowid from item a'
      'where a.kd_item=:kd_item')
    Variables.Data = {
      0300000001000000080000003A4B445F4954454D050000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000001A0000000B0000004B445F4A4E535F4954454D010000000000070000
      004B445F4954454D0100000000000A0000004B445F5355425F4B454C01000000
      0000080000004B445F5741524E41010000000000090000004B445F5341545541
      4E010000000000090000004B445F504152454E54010000000000090000004E41
      4D415F4954454D010000000000090000004449534B5249505349010000000000
      0700000049534649584544010000000000090000004C4541445F54494D450100
      00000000080000004D494E5F53544F4B0100000000000A0000004B445F4B454D
      4153414E010000000000050000004B445F494B010000000000070000004B445F
      4D45524B010000000000060000004B445F4B454C010000000000070000004953
      5245534550010000000000070000004B445F4C414D4101000000000005000000
      524153494F010000000000070000004E4F5F5041525401000000000006000000
      49534A41534101000000000006000000524153494F3201000000000006000000
      524153494F330100000000000B000000524153494F5F434F4E45530100000000
      000C000000524153494F5F50414C4C45540100000000000500000048454C4149
      010000000000090000004E4F5F42454E414E47010000000000}
    Session = DMFrm.OS
    BeforePost = QMasterBeforePost
    AfterDelete = QMasterAfterDelete
    OnNewRecord = QMasterNewRecord
    Left = 32
    Top = 16
    object QMasterKD_JNS_ITEM: TStringField
      FieldName = 'KD_JNS_ITEM'
      Required = True
      Size = 6
    end
    object QMasterKD_ITEM: TStringField
      FieldName = 'KD_ITEM'
      Required = True
      Size = 50
    end
    object QMasterKD_SUB_KEL: TStringField
      FieldName = 'KD_SUB_KEL'
      Required = True
      Size = 12
    end
    object QMasterKD_WARNA: TStringField
      FieldName = 'KD_WARNA'
      Size = 6
    end
    object QMasterKD_SATUAN: TStringField
      FieldName = 'KD_SATUAN'
      Required = True
      Size = 2
    end
    object QMasterKD_PARENT: TStringField
      FieldName = 'KD_PARENT'
      Size = 50
    end
    object QMasterNAMA_ITEM: TStringField
      FieldName = 'NAMA_ITEM'
      Required = True
      OnChange = QMasterNAMA_ITEMChange
      Size = 50
    end
    object QMasterDISKRIPSI: TStringField
      FieldName = 'DISKRIPSI'
      Size = 255
    end
    object QMasterISFIXED: TStringField
      FieldName = 'ISFIXED'
      Required = True
      Size = 1
    end
    object QMasterLEAD_TIME: TFloatField
      FieldName = 'LEAD_TIME'
    end
    object QMasterMIN_STOK: TFloatField
      FieldName = 'MIN_STOK'
      Required = True
    end
    object QMasterKD_KEMASAN: TStringField
      FieldName = 'KD_KEMASAN'
      Size = 50
    end
    object QMasterKD_IK: TStringField
      FieldName = 'KD_IK'
      Size = 50
    end
    object QMasterKD_MERK: TStringField
      FieldName = 'KD_MERK'
      Size = 50
    end
    object QMasterKD_KEL: TStringField
      FieldName = 'KD_KEL'
      Required = True
      Size = 6
    end
    object QMasterISRESEP: TStringField
      FieldName = 'ISRESEP'
      OnChange = QMasterISRESEPChange
      Size = 1
    end
    object QMasterRASIO: TFloatField
      FieldName = 'RASIO'
      Visible = False
      OnChange = QMasterRASIOChange
    end
    object QMasterKD_LAMA: TStringField
      FieldName = 'KD_LAMA'
      Size = 10
    end
    object QMasterNO_PART: TStringField
      FieldName = 'NO_PART'
      Size = 50
    end
    object QMasterISJASA: TStringField
      FieldName = 'ISJASA'
      Size = 1
    end
    object QMasterRASIO2: TFloatField
      FieldName = 'RASIO2'
    end
    object QMasterRASIO3: TFloatField
      FieldName = 'RASIO3'
    end
    object QMasterRASIO_CONES: TFloatField
      FieldName = 'RASIO_CONES'
    end
    object QMasterRASIO_PALLET: TFloatField
      FieldName = 'RASIO_PALLET'
    end
    object QMasterHELAI: TFloatField
      FieldName = 'HELAI'
    end
    object QMasterNO_BENANG: TFloatField
      FieldName = 'NO_BENANG'
    end
  end
  object dsQMaster: TwwDataSource
    DataSet = QMaster
    Left = 32
    Top = 72
  end
  object QDetail: TOracleDataSet
    SQL.Strings = (
      'select a.*, a.rowid from item_detail a'
      'where a.kd_item=:kd_item')
    Variables.Data = {
      0300000001000000080000003A4B445F4954454D050000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      0400000003000000070000004B445F4954454D01000000000003000000515459
      010000000000080000004B445F4954454D32010000000000}
    Master = QMaster
    MasterFields = 'KD_ITEM'
    Session = DMFrm.OS
    OnNewRecord = QDetailNewRecord
    Left = 32
    Top = 112
    object QDetailKD_ITEM: TStringField
      FieldName = 'KD_ITEM'
      Size = 50
    end
    object QDetailQTY: TFloatField
      FieldName = 'QTY'
    end
    object QDetailNAMA_BARANG: TStringField
      FieldKind = fkLookup
      FieldName = 'NAMA_BARANG'
      LookupDataSet = DMFrm.QItemAll
      LookupKeyFields = 'KD_ITEM'
      LookupResultField = 'NAMA_ITEM'
      KeyFields = 'KD_ITEM2'
      Size = 50
      Lookup = True
    end
    object QDetailKD_ITEM2: TStringField
      FieldName = 'KD_ITEM2'
      Size = 50
    end
    object QDetailSATUAN: TStringField
      FieldKind = fkLookup
      FieldName = 'SATUAN'
      LookupDataSet = DMFrm.QItemAll
      LookupKeyFields = 'KD_ITEM'
      LookupResultField = 'SATUAN'
      KeyFields = 'KD_ITEM2'
      Size = 12
      Lookup = True
    end
  end
  object dsQDetail: TwwDataSource
    DataSet = QDetail
    Left = 32
    Top = 144
  end
  object ppDBQMaster: TppDBPipeline
    DataSource = dsQMaster
    OpenDataSource = False
    UserName = 'DBQMaster'
    Left = 112
    Top = 40
  end
  object ppDBQDetail: TppDBPipeline
    DataSource = dsQDetail
    OpenDataSource = False
    UserName = 'DBQDetail'
    Left = 112
    Top = 80
    MasterDataPipelineName = 'ppDBQMaster'
    object ppDBPipeline2ppMasterFieldLink1: TppMasterFieldLink
      MasterFieldName = 'NO_TSTOK'
      GuidCollationType = gcString
      DetailFieldName = 'NO_TSTOK'
      DetailSortOrder = soAscending
    end
  end
  object QKelompok: TOracleDataSet
    SQL.Strings = (
      'select a.*, a.rowid from kelompok a order by nama_kelompok')
    QBEDefinition.QBEFieldDefs = {
      04000000030000000D0000004E414D415F4B454C4F4D504F4B01000000000006
      0000004B445F4B454C0100000000000B0000004B445F4A4E535F4954454D0100
      00000000}
    BeforeQuery = QKelompokBeforeQuery
    Session = DMFrm.OS
    OnNewRecord = QKelompokNewRecord
    Left = 16
    Top = 280
    object QKelompokKD_KEL: TStringField
      DisplayLabel = 'KODE'
      DisplayWidth = 6
      FieldName = 'KD_KEL'
      Required = True
      Size = 6
    end
    object QKelompokNAMA_KELOMPOK: TStringField
      DisplayLabel = 'NAMA KELOMPOK'
      DisplayWidth = 30
      FieldName = 'NAMA_KELOMPOK'
      Required = True
      Size = 50
    end
    object QKelompokKD_JNS_ITEM: TStringField
      FieldName = 'KD_JNS_ITEM'
      Visible = False
      Size = 6
    end
  end
  object QSubKelompok: TOracleDataSet
    Variables.Data = {0300000001000000070000003A4B445F4B454C050000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      0400000003000000110000004E414D415F5355425F4B454C4F4D504F4B010000
      000000060000004B445F4B454C0100000000000A0000004B445F5355425F4B45
      4C010000000000}
    Master = QKelompok
    MasterFields = 'KD_KEL'
    BeforeQuery = QSubKelompokBeforeQuery
    Session = DMFrm.OS
    OnNewRecord = QSubKelompokNewRecord
    Left = 48
    Top = 304
    object QSubKelompokKD_SUB_KEL: TStringField
      DisplayLabel = 'KODE'
      DisplayWidth = 6
      FieldName = 'KD_SUB_KEL'
      Required = True
      Size = 12
    end
    object QSubKelompokNAMA_SUB_KELOMPOK: TStringField
      DisplayLabel = 'NAMA SUB KELOMPOK'
      DisplayWidth = 30
      FieldName = 'NAMA_SUB_KELOMPOK'
      Required = True
      Size = 50
    end
    object QSubKelompokKD_KEL: TStringField
      FieldName = 'KD_KEL'
      Required = True
      Visible = False
      Size = 6
    end
  end
  object QSatuan: TOracleDataSet
    SQL.Strings = (
      'select a.*, a.rowid from satuan a order by satuan')
    QBEDefinition.QBEFieldDefs = {
      04000000020000000600000053415455414E010000000000090000004B445F53
      415455414E010000000000}
    BeforeQuery = QSatuanBeforeQuery
    Session = DMFrm.OS
    Left = 144
    Top = 320
    object QSatuanKD_SATUAN: TStringField
      DisplayLabel = 'KODE'
      DisplayWidth = 4
      FieldName = 'KD_SATUAN'
      Required = True
      Size = 2
    end
    object QSatuanSATUAN: TStringField
      DisplayWidth = 12
      FieldName = 'SATUAN'
      Size = 12
    end
  end
  object QWarna: TOracleDataSet
    SQL.Strings = (
      'select a.*, a.rowid from warna a order by warna')
    QBEDefinition.QBEFieldDefs = {
      0400000002000000050000005741524E41010000000000080000004B445F5741
      524E41010000000000}
    BeforeQuery = QWarnaBeforeQuery
    Session = DMFrm.OS
    Left = 120
    Top = 320
    object QWarnaKD_WARNA: TStringField
      DisplayLabel = 'KODE'
      DisplayWidth = 4
      FieldName = 'KD_WARNA'
      Required = True
      Size = 6
    end
    object QWarnaWARNA: TStringField
      DisplayWidth = 30
      FieldName = 'WARNA'
      Size = 50
    end
  end
  object QMerk: TOracleDataSet
    QBEDefinition.QBEFieldDefs = {
      0400000003000000070000004B445F4D45524B010000000000090000004E414D
      415F4D45524B0100000000000B0000004B445F4A4E535F4954454D0100000000
      00}
    BeforeQuery = QMerkBeforeQuery
    Session = DMFrm.OS
    OnNewRecord = QMerkNewRecord
    Left = 72
    Top = 280
    object QMerkKD_MERK: TStringField
      DisplayLabel = 'KODE'
      DisplayWidth = 6
      FieldName = 'KD_MERK'
      Required = True
      Size = 50
    end
    object QMerkNAMA_MERK: TStringField
      DisplayLabel = 'NAMA MERK'
      DisplayWidth = 30
      FieldName = 'NAMA_MERK'
      Size = 50
    end
    object QMerkKD_JNS_ITEM: TStringField
      FieldName = 'KD_JNS_ITEM'
      Visible = False
      Size = 6
    end
  end
  object ppReportInput: TppReport
    AutoStop = False
    DataPipeline = ppDBQMaster
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 152
    Top = 40
    Version = '10.07'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBQMaster'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 6085
      mmPrintPosition = 0
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 17198
      mmPrintPosition = 0
      object ppDBBarCode1: TppDBBarCode
        UserName = 'DBBarCode1'
        BarCodeType = bcCode39
        BarColor = clWindowText
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'KD_ITEM'
        DataPipeline = ppDBQMaster
        Alignment = taCenter
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBQMaster'
        mmHeight = 17004
        mmLeft = 70908
        mmTop = 265
        mmWidth = 49671
        BandType = 4
        mmBarWidth = 254
        mmWideBarRatio = 76200
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppParameterList1: TppParameterList
    end
  end
  object ppReportBrowse: TppReport
    AutoStop = False
    DataPipeline = ppDBQBrowseDetail
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Fax'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    Template.FileName = 'D:\_Proyek\iPismaTex\Aplikasi\Report\OrganisasiItem.rtm'
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 952
    Top = 8
    Version = '10.07'
    mmColumnWidth = 197300
    DataPipelineName = 'ppDBQBrowseDetail'
    object ppTitleBand1: TppTitleBand
      BeforePrint = ppTitleBand1BeforePrint
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
      object ppNamaLaporan: TppLabel
        UserName = 'NamaLaporan'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'MASTER ASESORIS TENUN'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5821
        mmLeft = 81492
        mmTop = 0
        mmWidth = 33073
        BandType = 1
      end
      object ppUserCetak: TppLabel
        UserName = 'UserCetak'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'IPENTA, 28 Jan 2007 11:08'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 180446
        mmTop = 9525
        mmWidth = 13229
        BandType = 1
      end
    end
    object ppHeaderBand2: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 11377
      mmPrintPosition = 0
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
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4304
        mmLeft = 8996
        mmTop = 7144
        mmWidth = 10160
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'NAMA ITEM 6'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 36777
        mmTop = 7144
        mmWidth = 23072
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'SATUAN'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4304
        mmLeft = 126471
        mmTop = 7144
        mmWidth = 14605
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
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4304
        mmLeft = 2381
        mmTop = 7144
        mmWidth = 5292
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'MIN STOK'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 143590
        mmTop = 7144
        mmWidth = 17357
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'LEAD TIME'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 162984
        mmTop = 7144
        mmWidth = 19050
        BandType = 0
      end
    end
    object ppDetailBand2: TppDetailBand
      BeforePrint = ppDetailBand2BeforePrint
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 4233
      mmPrintPosition = 0
      object ppNomer: TppLabel
        UserName = 'Nomer'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '20'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 1058
        mmTop = 0
        mmWidth = 7673
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'KD_ITEM'
        DataPipeline = ppDBQBrowseDetail
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBQBrowseDetail'
        mmHeight = 4233
        mmLeft = 9525
        mmTop = 0
        mmWidth = 25929
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'SATUAN'
        DataPipeline = ppDBQBrowseDetail
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBQBrowseDetail'
        mmHeight = 4233
        mmLeft = 127265
        mmTop = 0
        mmWidth = 12435
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
        Font.Color = clWindowText
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        Stretch = True
        Transparent = True
        DataPipelineName = 'ppDBQBrowseDetail'
        mmHeight = 4233
        mmLeft = 36777
        mmTop = 0
        mmWidth = 87842
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'MIN_STOK'
        DataPipeline = ppDBQBrowseDetail
        DisplayFormat = '#,#'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBQBrowseDetail'
        mmHeight = 4233
        mmLeft = 146050
        mmTop = 0
        mmWidth = 12435
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'LEAD_TIME'
        DataPipeline = ppDBQBrowseDetail
        DisplayFormat = '#,#'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBQBrowseDetail'
        mmHeight = 4233
        mmLeft = 166159
        mmTop = 0
        mmWidth = 12435
        BandType = 4
      end
    end
    object ppFooterBand2: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 6350
      mmPrintPosition = 0
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        VarType = vtPageNo
        DisplayFormat = 'Hal : #,#'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 181769
        mmTop = 1058
        mmWidth = 11906
        BandType = 8
      end
    end
    object ppParameterList2: TppParameterList
    end
  end
  object QMaxKode: TOracleDataSet
    SQL.Strings = (
      'select max(a.kd_item) as kode from ipisma_db3.item a'
      'where kd_jns_item=:kd_jns_item')
    Variables.Data = {
      03000000010000000C0000003A4B445F4A4E535F4954454D0500000000000000
      00000000}
    BeforeQuery = QMaxKodeBeforeQuery
    Session = DMFrm.OS
    Left = 64
    Top = 440
  end
  object ppReportBrowse2: TppReport
    AutoStop = False
    Columns = 2
    ColumnPositions.Strings = (
      '6350'
      '105001')
    DataPipeline = ppDBQBrowseDetail
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    Template.FileName = 'D:\_Proyek\iPismaTex\Aplikasi\Report\OrganisasiItem.rtm'
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 936
    Top = 152
    Version = '10.07'
    mmColumnWidth = 98650
    DataPipelineName = 'ppDBQBrowseDetail'
    object ppTitleBand2: TppTitleBand
      BeforePrint = ppTitleBand1BeforePrint
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
      object ppLabel4: TppLabel
        UserName = 'NamaLaporan'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'MASTER ASESORIS TENUN'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5821
        mmLeft = 81492
        mmTop = 0
        mmWidth = 33073
        BandType = 1
      end
      object ppLabel5: TppLabel
        UserName = 'UserCetak'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'IPENTA, 28 Jan 2007 11:08'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 180446
        mmTop = 9525
        mmWidth = 13229
        BandType = 1
      end
    end
    object ppHeaderBand3: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppColumnHeaderBand1: TppColumnHeaderBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppDetailBand3: TppDetailBand
      BeforePrint = ppDetailBand2BeforePrint
      mmBottomOffset = 0
      mmHeight = 28046
      mmPrintPosition = 0
      object ppDBBarCode3: TppDBBarCode
        UserName = 'DBBarCode2'
        AutoEncode = True
        AutoSizeFont = False
        BarCodeType = bcCode128
        BarColor = clWindowText
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'KD_ITEM'
        DataPipeline = ppDBQBrowseDetail
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBQBrowseDetail'
        mmHeight = 13758
        mmLeft = 14817
        mmTop = 7144
        mmWidth = 26035
        BandType = 4
        mmBarWidth = 254
        mmWideBarRatio = 76200
      end
      object ppLabel11: TppLabel
        UserName = 'Nomer'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '20'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial Narrow'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 1058
        mmTop = 14023
        mmWidth = 7673
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'SATUAN'
        DataPipeline = ppDBQBrowseDetail
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial Narrow'
        Font.Size = 14
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBQBrowseDetail'
        mmHeight = 6350
        mmLeft = 55033
        mmTop = 12965
        mmWidth = 11642
        BandType = 4
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'NAMA_ITEM'
        DataPipeline = ppDBQBrowseDetail
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial Narrow'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBQBrowseDetail'
        mmHeight = 4586
        mmLeft = 14817
        mmTop = 1588
        mmWidth = 13335
        BandType = 4
      end
    end
    object ppColumnFooterBand1: TppColumnFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppFooterBand3: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 5556
      mmPrintPosition = 0
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        VarType = vtPageNo
        DisplayFormat = 'Hal : #,#'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 178330
        mmTop = 1058
        mmWidth = 15346
        BandType = 8
      end
    end
    object ppParameterList3: TppParameterList
    end
  end
  object QItem: TOracleDataSet
    SQL.Strings = (
      'select * from ipisma_db3.vitemALL')
    QBEDefinition.QBEFieldDefs = {
      0400000009000000070000004B445F4954454D010000000000090000004E414D
      415F4954454D010000000000090000004C4541445F54494D4501000000000008
      0000004D494E5F53544F4B0100000000000600000053415455414E0100000000
      000B0000004B445F4A4E535F4954454D010000000000090000004B445F534154
      55414E0100000000000700000049534649584544010000000000050000005241
      53494F010000000000}
    ReadOnly = True
    QueryAllRecords = False
    BeforeQuery = QItemBeforeQuery
    Session = DMFrm.OS
    Left = 296
    Top = 400
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
    object QItemLEAD_TIME: TFloatField
      DisplayLabel = 'LEAD'
      DisplayWidth = 5
      FieldName = 'LEAD_TIME'
    end
    object QItemMIN_STOK: TFloatField
      FieldName = 'MIN_STOK'
      Required = True
      Visible = False
    end
  end
  object wwRecordViewDialog1: TwwRecordViewDialog
    DataSource = dsQKelompok
    FormPosition.Left = 0
    FormPosition.Top = 0
    FormPosition.Width = 0
    FormPosition.Height = 0
    NavigatorButtons = [nbsFirst, nbsPrior, nbsNext, nbsLast, nbsInsert, nbsDelete, nbsEdit, nbsPost, nbsCancel, nbsRefresh, nbsPriorPage, nbsNextPage, nbsSaveBookmark, nbsRestoreBookmark]
    Style = rvsHorizontal
    Options = [rvoUseCustomControls, rvoShortenEditBox, rvoModalForm, rvoStayOnTopForm, rvoConfirmCancel, rvoCloseIsCancel, rvoMaximizeMemoWidth, rvoUseDateTimePicker]
    ControlOptions = []
    LabelFont.Charset = DEFAULT_CHARSET
    LabelFont.Color = clWindowText
    LabelFont.Height = -11
    LabelFont.Name = 'MS Sans Serif'
    LabelFont.Style = []
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Caption = 'Master Kelompok'
    NavigatorFlat = True
    Left = 328
    Top = 56
  end
  object dsQKelompok: TwwDataSource
    DataSet = QKelompok
    Left = 16
    Top = 344
  end
  object wwRecordViewDialog2: TwwRecordViewDialog
    DataSource = dsQSubKelompok
    FormPosition.Left = 0
    FormPosition.Top = 0
    FormPosition.Width = 0
    FormPosition.Height = 0
    NavigatorButtons = [nbsFirst, nbsPrior, nbsNext, nbsLast, nbsInsert, nbsDelete, nbsEdit, nbsPost, nbsCancel, nbsRefresh, nbsPriorPage, nbsNextPage, nbsSaveBookmark, nbsRestoreBookmark]
    Style = rvsHorizontal
    ControlOptions = []
    LabelFont.Charset = DEFAULT_CHARSET
    LabelFont.Color = clWindowText
    LabelFont.Height = -11
    LabelFont.Name = 'MS Sans Serif'
    LabelFont.Style = []
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Caption = 'Master Kelompok'
    NavigatorFlat = True
    Left = 384
    Top = 96
  end
  object wwRecordViewDialog3: TwwRecordViewDialog
    DataSource = dsQMerk
    FormPosition.Left = 0
    FormPosition.Top = 0
    FormPosition.Width = 0
    FormPosition.Height = 0
    NavigatorButtons = [nbsFirst, nbsPrior, nbsNext, nbsLast, nbsInsert, nbsDelete, nbsEdit, nbsPost, nbsCancel, nbsRefresh, nbsPriorPage, nbsNextPage, nbsSaveBookmark, nbsRestoreBookmark]
    Style = rvsHorizontal
    ControlOptions = []
    LabelFont.Charset = DEFAULT_CHARSET
    LabelFont.Color = clWindowText
    LabelFont.Height = -11
    LabelFont.Name = 'MS Sans Serif'
    LabelFont.Style = []
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Caption = 'Master Merk'
    NavigatorFlat = True
    Left = 424
    Top = 96
  end
  object dsQSubKelompok: TwwDataSource
    DataSet = QSubKelompok
    Left = 48
    Top = 344
  end
  object dsQMerk: TwwDataSource
    DataSet = QMerk
    Left = 72
    Top = 344
  end
end
