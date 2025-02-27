object HakMenuFrm: THakMenuFrm
  Left = 237
  Top = 119
  Width = 1010
  Height = 560
  Caption = 'Hak Menu'
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
  PixelsPerInch = 96
  TextHeight = 13
  object PanelLeft: TPanel
    Left = 0
    Top = 0
    Width = 121
    Height = 533
    Align = alLeft
    BevelOuter = bvNone
    Color = 7039851
    TabOrder = 0
  end
  object PanelRight: TPanel
    Left = 761
    Top = 0
    Width = 241
    Height = 533
    Align = alClient
    BevelOuter = bvNone
    Color = clAppWorkSpace
    TabOrder = 1
  end
  object PanelMain: TPanel
    Left = 121
    Top = 0
    Width = 640
    Height = 533
    Align = alLeft
    BevelOuter = bvNone
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 2
    object Label1: TLabel
      Left = 0
      Top = 520
      Width = 640
      Height = 13
      Align = alBottom
      Color = clSkyBlue
      ParentColor = False
    end
    object DBText3: TDBText
      Left = 0
      Top = 49
      Width = 640
      Height = 27
      Align = alTop
      Alignment = taRightJustify
      Color = clSkyBlue
      DataField = 'VUSER'
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
      Width = 640
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
      Width = 640
      Height = 444
      ActivePage = TabSheet2
      Align = alClient
      Style = tsFlatButtons
      TabOrder = 1
      object TabSheet1: TTabSheet
        Caption = 'Input'
        OnShow = TabSheet1Show
        object PanelMaster: TPanel
          Left = 0
          Top = 0
          Width = 632
          Height = 185
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
            632
            185)
          object Label6: TLabel
            Left = 0
            Top = 112
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
          object Label8: TLabel
            Left = 0
            Top = 8
            Width = 63
            Height = 13
            Caption = 'Nama User'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clOlive
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object LBarcode: TDBText
            Left = 534
            Top = 0
            Width = 90
            Height = 24
            Alignment = taRightJustify
            Anchors = [akTop, akRight, akBottom]
            AutoSize = True
            DataField = 'VUSER'
            DataSource = dsQMaster
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label2: TLabel
            Left = 200
            Top = 8
            Width = 26
            Height = 13
            Caption = 'Tipe'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clOlive
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object DBText1: TDBText
            Left = 64
            Top = 73
            Width = 60
            Height = 16
            AutoSize = True
            DataField = 'LNAMA_DIVISI'
            DataSource = dsQMaster
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label3: TLabel
            Left = 0
            Top = 56
            Width = 59
            Height = 13
            Caption = 'Hak Divisi'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clOlive
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object wwDBEdit1: TwwDBEdit
            Left = 0
            Top = 24
            Width = 193
            Height = 19
            CharCase = ecUpperCase
            DataField = 'VUSER'
            DataSource = dsQMaster
            TabOrder = 0
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
          object wwDBLookupCombo1: TwwDBLookupCombo
            Left = 200
            Top = 24
            Width = 217
            Height = 19
            DropDownAlignment = taLeftJustify
            Selected.Strings = (
              'TIPE'#9'16'#9'TIPE'#9#9)
            DataField = 'TIPE'
            DataSource = dsQMaster
            LookupTable = QTipeMenu
            LookupField = 'TIPE'
            Options = [loColLines, loRowLines, loTitles]
            TabOrder = 1
            AutoDropDown = False
            ShowButton = True
            PreciseEditRegion = False
            AllowClearKey = False
          end
          object DBMemo1: TDBMemo
            Left = 0
            Top = 128
            Width = 417
            Height = 49
            Color = clGray
            DataField = 'LKETERANGAN'
            DataSource = dsQMaster
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 2
          end
          object wwDBLookupComboDlg1: TwwDBLookupComboDlg
            Left = 0
            Top = 72
            Width = 57
            Height = 19
            GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
            GridColor = clWhite
            GridTitleAlignment = taLeftJustify
            Caption = 'Lookup'
            MaxWidth = 0
            MaxHeight = 209
            Selected.Strings = (
              'KD_DIV'#9'5'#9'KODE'#9'F'
              'LNAMA_DIVISI'#9'40'#9'DIVISI'#9'F')
            DataField = 'KD_DIV'
            DataSource = dsQMaster
            LookupTable = DMFrm.QDivisi
            LookupField = 'KD_DIV'
            TabOrder = 3
            AutoDropDown = False
            ShowButton = True
            AllowClearKey = False
            OnEnter = wwDBLookupComboDlg1Enter
          end
          object wwDBEdit2: TwwDBEdit
            Left = 0
            Top = 72
            Width = 41
            Height = 19
            DataField = 'KD_DIV'
            DataSource = dsQMaster
            TabOrder = 4
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
        end
        object PanelDetail: TPanel
          Left = 0
          Top = 226
          Width = 632
          Height = 149
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 2
          object wwDBGrid1: TwwDBGrid
            Left = 0
            Top = 0
            Width = 632
            Height = 142
            ControlType.Strings = (
              'HAK_BROWSE;CheckBox;1;0'
              'HAK_INPUT;CheckBox;1;0'
              'HAK_EXPORT;CheckBox;1;0'
              'HAK_DESIGN;CheckBox;1;0')
            Selected.Strings = (
              'CNAMA_MENU'#9'63'#9'NAMA MENU'#9'F'
              'HAK_BROWSE'#9'5'#9'Lihat'#9'F'#9'HAK'
              'HAK_INPUT'#9'4'#9'Input'#9'F'#9'HAK'
              'HAK_EXPORT'#9'5'#9'Export'#9'F'#9'HAK'
              'HAK_DESIGN'#9'6'#9'Design'#9'F'#9'HAK')
            IniAttributes.FileName = 'PismatexPurchasing.INI'
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
            TitleLines = 3
            TitleButtons = True
            UseTFields = False
            OnCalcCellColors = wwDBGrid1CalcCellColors
            OnEnter = wwDBGrid1Enter
          end
        end
        object PanelFooter1: TPanel
          Left = 0
          Top = 375
          Width = 632
          Height = 38
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 3
          DesignSize = (
            632
            38)
          object BtnClose1: TBitBtn
            Left = 542
            Top = 6
            Width = 75
            Height = 25
            Anchors = [akTop, akRight]
            Caption = '&Close'
            TabOrder = 0
            OnClick = BtnClose1Click
            NumGlyphs = 2
          end
          object wwDBNavigatorInput: TwwDBNavigator
            Left = 0
            Top = 0
            Width = 145
            Height = 38
            AutosizeStyle = asSizeNavButtons
            DataSource = dsQMaster
            RepeatInterval.InitialDelay = 500
            RepeatInterval.Interval = 100
            Align = alLeft
            object wwDBNavigatorInputButton: TwwNavButton
              Left = 0
              Top = 0
              Width = 25
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
              Left = 25
              Top = 0
              Width = 24
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
              Left = 49
              Top = 0
              Width = 24
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
              Left = 73
              Top = 0
              Width = 24
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
              Left = 97
              Top = 0
              Width = 24
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
              Index = 4
              Style = nbsPost
            end
            object wwDBNavigatorInputButton3: TwwNavButton
              Left = 121
              Top = 0
              Width = 24
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
        end
        object PanelBand: TPanel
          Left = 0
          Top = 185
          Width = 632
          Height = 41
          Align = alTop
          BevelOuter = bvNone
          Color = clSkyBlue
          TabOrder = 1
          DesignSize = (
            632
            41)
          object Label14: TLabel
            Left = 559
            Top = 2
            Width = 43
            Height = 13
            Anchors = [akTop, akRight, akBottom]
            Caption = 'Spasi (%)'
          end
          object wwDBSpinEdit4: TwwDBSpinEdit
            Left = 559
            Top = 18
            Width = 41
            Height = 19
            Anchors = [akTop, akRight, akBottom]
            Increment = 100.000000000000000000
            MaxValue = 400.000000000000000000
            MinValue = 100.000000000000000000
            Value = 100.000000000000000000
            TabOrder = 0
            UnboundDataType = wwDefault
            OnChange = wwDBSpinEdit4Change
          end
          object wwDBSpinEdit5: TwwDBSpinEdit
            Left = 599
            Top = 18
            Width = 17
            Height = 19
            Anchors = [akTop, akRight, akBottom]
            Increment = 2.000000000000000000
            MaxValue = 12.000000000000000000
            MinValue = 8.000000000000000000
            Value = 8.000000000000000000
            TabOrder = 1
            UnboundDataType = wwDefault
            OnChange = wwDBSpinEdit5Change
          end
          object BtnAmbilData: TBitBtn
            Left = 8
            Top = 8
            Width = 89
            Height = 25
            Caption = '&Buat Menu'
            TabOrder = 2
            OnClick = BtnAmbilDataClick
            NumGlyphs = 2
          end
          object Button1: TButton
            Left = 104
            Top = 8
            Width = 75
            Height = 25
            Caption = 'Buat &User'
            TabOrder = 3
            OnClick = Button1Click
          end
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Browse'
        ImageIndex = 1
        object LabelBanner: TLabel
          Left = 0
          Top = 57
          Width = 632
          Height = 13
          Align = alTop
          Color = clSkyBlue
          ParentColor = False
        end
        object PanelFilter: TPanel
          Left = 0
          Top = 0
          Width = 632
          Height = 57
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          DesignSize = (
            632
            57)
          object Label5: TLabel
            Left = 566
            Top = 16
            Width = 43
            Height = 13
            Anchors = [akTop, akRight]
            Caption = 'Spasi (%)'
          end
          object wwDBSpinEdit1: TwwDBSpinEdit
            Left = 568
            Top = 32
            Width = 41
            Height = 19
            Anchors = [akTop, akRight]
            Increment = 100.000000000000000000
            MaxValue = 400.000000000000000000
            MinValue = 100.000000000000000000
            Value = 100.000000000000000000
            TabOrder = 0
            UnboundDataType = wwDefault
            OnChange = wwDBSpinEdit1Change
          end
          object wwDBSpinEdit2: TwwDBSpinEdit
            Left = 608
            Top = 32
            Width = 17
            Height = 19
            Anchors = [akTop, akRight, akBottom]
            Increment = 2.000000000000000000
            MaxValue = 12.000000000000000000
            MinValue = 8.000000000000000000
            Value = 8.000000000000000000
            TabOrder = 1
            UnboundDataType = wwDefault
            OnChange = wwDBSpinEdit2Change
          end
          object BtnOk: TBitBtn
            Left = 8
            Top = 26
            Width = 81
            Height = 25
            Caption = '&Refresh'
            TabOrder = 2
            OnClick = BtnOkClick
            NumGlyphs = 2
          end
        end
        object PanelBrowse: TPanel
          Left = 0
          Top = 70
          Width = 632
          Height = 302
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 1
          object wwDBGrid2: TwwDBGrid
            Left = 0
            Top = 0
            Width = 632
            Height = 302
            Selected.Strings = (
              'VUSER'#9'16'#9'USER'#9'F'
              'TIPE'#9'16'#9'TIPE'#9#9
              'KETERANGAN'#9'53'#9'KETERANGAN'#9'F')
            IniAttributes.Enabled = True
            IniAttributes.FileName = 'PismatexPurchasing.INI'
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
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            KeyOptions = []
            Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgPerfectRowFit, dgShowFooter, dgNoLimitColSize, dgTrailingEllipsis, dgRowResize, dgFixedProportionalResize]
            ParentCtl3D = False
            ParentFont = False
            RowHeightPercent = 200
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
          end
        end
        object PanelFooter2: TPanel
          Left = 0
          Top = 372
          Width = 632
          Height = 41
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 2
          DesignSize = (
            632
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
            Left = 536
            Top = 8
            Width = 75
            Height = 25
            Anchors = [akTop, akRight]
            Caption = '&Close'
            TabOrder = 1
            OnClick = BtnClose2Click
            NumGlyphs = 2
          end
        end
      end
    end
  end
  object QBrowse: TOracleDataSet
    SQL.Strings = (
      'select a.*, b.keterangan from vuser a, menu_tipe b'
      'where a.tipe=b.tipe')
    QBEDefinition.QBEFieldDefs = {
      0400000003000000040000005449504501000000000005000000565553455201
      00000000000A0000004B45544552414E47414E010000000000}
    ReadOnly = True
    QueryAllRecords = False
    Session = DMFrm.OS
    AfterScroll = QBrowseAfterScroll
    Left = 824
    Top = 8
  end
  object dsQBrowse: TwwDataSource
    DataSet = QBrowse
    Left = 888
    Top = 8
  end
  object QMaster: TOracleDataSet
    SQL.Strings = (
      'select a.*, a.rowid from vuser a')
    QBEDefinition.QBEFieldDefs = {
      0400000003000000040000005449504501000000000005000000565553455201
      0000000000060000004B445F444956010000000000}
    Session = DMFrm.OS
    Left = 32
    Top = 40
    object QMasterVUSER: TStringField
      FieldName = 'VUSER'
      Required = True
      Size = 30
    end
    object QMasterTIPE: TStringField
      FieldName = 'TIPE'
      Size = 16
    end
    object QMasterLKETERANGAN: TStringField
      FieldKind = fkLookup
      FieldName = 'LKETERANGAN'
      LookupDataSet = QTipeMenu
      LookupKeyFields = 'TIPE'
      LookupResultField = 'KETERANGAN'
      KeyFields = 'TIPE'
      Size = 255
      Lookup = True
    end
    object QMasterKD_DIV: TStringField
      FieldName = 'KD_DIV'
      Size = 5
    end
    object QMasterLNAMA_DIVISI: TStringField
      FieldKind = fkLookup
      FieldName = 'LNAMA_DIVISI'
      LookupDataSet = DMFrm.QDivisi
      LookupKeyFields = 'KD_DIV'
      LookupResultField = 'NAMA_DIVISI'
      KeyFields = 'KD_DIV'
      Size = 50
      Lookup = True
    end
  end
  object dsQMaster: TwwDataSource
    DataSet = QMaster
    Left = 32
    Top = 72
  end
  object QDetail: TOracleDataSet
    SQL.Strings = (
      'select a.*, a.rowid from vuser_menu a')
    QBEDefinition.QBEFieldDefs = {
      04000000070000000A00000048414B5F42524F57534501000000000005000000
      494D454E550100000000000900000048414B5F494E5055540100000000000A00
      000048414B5F4558504F52540100000000000A00000048414B5F44455349474E
      0100000000000500000056555345520100000000000B0000004956555345525F
      4D454E55010000000000}
    Session = DMFrm.OS
    OnCalcFields = QDetailCalcFields
    OnNewRecord = QDetailNewRecord
    Left = 40
    Top = 112
    object QDetailIVUSER_MENU: TFloatField
      FieldName = 'IVUSER_MENU'
    end
    object QDetailHAK_BROWSE: TStringField
      FieldName = 'HAK_BROWSE'
      Size = 1
    end
    object QDetailIMENU: TFloatField
      FieldName = 'IMENU'
      Required = True
    end
    object QDetailHAK_INPUT: TStringField
      FieldName = 'HAK_INPUT'
      Size = 1
    end
    object QDetailHAK_EXPORT: TStringField
      FieldName = 'HAK_EXPORT'
      Size = 1
    end
    object QDetailHAK_DESIGN: TStringField
      FieldName = 'HAK_DESIGN'
      Size = 1
    end
    object QDetailNAMA_MENU: TStringField
      FieldKind = fkLookup
      FieldName = 'NAMA_MENU'
      LookupDataSet = QMenu
      LookupKeyFields = 'IMENU'
      LookupResultField = 'NAMA_MENU'
      KeyFields = 'IMENU'
      Size = 50
      Lookup = True
    end
    object QDetailLVL: TFloatField
      FieldKind = fkLookup
      FieldName = 'LVL'
      LookupDataSet = QMenu
      LookupKeyFields = 'IMENU'
      LookupResultField = 'LVL'
      KeyFields = 'IMENU'
      Lookup = True
    end
    object QDetailCNAMA_MENU: TStringField
      FieldKind = fkCalculated
      FieldName = 'CNAMA_MENU'
      Size = 255
      Calculated = True
    end
    object QDetailVUSER: TStringField
      FieldName = 'VUSER'
      Size = 30
    end
  end
  object dsQDetail: TwwDataSource
    DataSet = QDetail
    Left = 32
    Top = 144
  end
  object QMenu: TOracleDataSet
    SQL.Strings = (
      'select * from menu_tipe_detail'
      'where tipe='#39'Administrator'#39)
    QBEDefinition.QBEFieldDefs = {
      04000000090000000A00000048414B5F42524F57534501000000000005000000
      494D454E550100000000000900000048414B5F494E5055540100000000000A00
      000048414B5F4558504F52540100000000000A00000048414B5F44455349474E
      0100000000000E0000004E414D415F434F4D504F4E454E540100000000000900
      00004E414D415F4D454E55010000000000030000004C564C0100000000000400
      000054495045010000000000}
    Session = DMFrm.OS
    Left = 112
    Top = 40
    object QMenuHAK_BROWSE: TStringField
      FieldName = 'HAK_BROWSE'
      Size = 1
    end
    object QMenuIMENU: TFloatField
      FieldName = 'IMENU'
      Required = True
    end
    object QMenuHAK_INPUT: TStringField
      FieldName = 'HAK_INPUT'
      Size = 1
    end
    object QMenuHAK_EXPORT: TStringField
      FieldName = 'HAK_EXPORT'
      Size = 1
    end
    object QMenuHAK_DESIGN: TStringField
      FieldName = 'HAK_DESIGN'
      Size = 1
    end
    object QMenuNAMA_COMPONENT: TStringField
      FieldName = 'NAMA_COMPONENT'
      Size = 50
    end
    object QMenuNAMA_MENU: TStringField
      FieldName = 'NAMA_MENU'
      Size = 50
    end
    object QMenuLVL: TFloatField
      FieldName = 'LVL'
    end
    object QMenuTIPE: TStringField
      FieldName = 'TIPE'
      Size = 16
    end
  end
  object QTipeMenu: TOracleDataSet
    SQL.Strings = (
      'select tipe, keterangan from menu_tipe')
    QBEDefinition.QBEFieldDefs = {
      040000000200000004000000544950450100000000000A0000004B4554455241
      4E47414E010000000000}
    Session = DMFrm.OS
    Left = 112
    Top = 96
    object QTipeMenuTIPE: TStringField
      DisplayWidth = 16
      FieldName = 'TIPE'
      Required = True
      Size = 16
    end
    object QTipeMenuKETERANGAN: TStringField
      DisplayWidth = 255
      FieldName = 'KETERANGAN'
      Visible = False
      Size = 255
    end
  end
  object QBuatUser: TOracleQuery
    SQL.Strings = (
      '')
    Session = DMFrm.OS
    Left = 296
    Top = 64
  end
end
