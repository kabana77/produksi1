]
            Caption = 'Preview'
            TabOrder = 2
          end
          object RadioGroup1: TRadioGroup
            Left = 385
            Top = 4
            Width = 153
            Height = 41
            Anchors = [akTop, akRight]
            Caption = 'Ukuran Ketas'
            Columns = 2
            ItemIndex = 1
            Items.Strings = (
              'A4'
              'A5')
            TabOrder = 3
            Visible = False
          end
          object cbHarga: TCheckBox
            Left = 634
            Top = 8
            Width = 86
            Height = 17
            Anchors = [akTop, akRight]
            Caption = 'Tanpa Harga'
            TabOrder = 4
            Visible = False
          end
        end
        object PanelTop: TPanel
          Left = 0
          Top = 80
          Width = 721
          Height = 144
          Align = alTop
          BevelWidth = 2
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 0
          object Label3: TLabel
            Left = 16
            Top = 80
            Width = 55
            Height = 13
            Caption = 'Keterangan'
          end
          object Label6: TLabel
            Left = 544
            Top = 8
            Width = 39
            Height = 13
            Caption = 'Tanggal'
          end
          object DBText4: TDBText
            Left = 544
            Top = 56
            Width = 80
            Height = 24
            AutoSize = True
            DataField = 'STATUS'
            DataSource = dsQMaster
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGray
            Font.Height = -19
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label2: TLabel
            Left = 16
            Top = 32
            Width = 23
            Height = 13
            Caption = 'Grup'
          end
          object Label4: TLabel
            Left = 72
            Top = 32
            Width = 21
            Height = 13
            Caption = 'Shift'
          end
          object wwDBDateTimePicker1: TwwDBDateTimePicker
            Left = 544
            Top = 24
            Width = 137
            Height = 22
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
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            ShowButton = True
            TabOrder = 1
          end
          object DBMemo1: TDBMemo
            Left = 16
            Top = 96
            Width = 665
            Height = 41
            DataField = 'KETERANGAN'
            DataSource = dsQMaster
            ScrollBars = ssVertical
            TabOrder = 0
          end
          object wwDBComboBox1: TwwDBComboBox
            Left = 16
            Top = 48
            Width = 41
            Height = 19
            ShowButton = True
            Style = csDropDown
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
              'E')
            Sorted = False
            TabOrder = 2
            UnboundDataType = wwDefault
          end
          object wwDBComboBox2: TwwDBComboBox
            Left = 72
            Top = 48
            Width = 41
            Height = 19
            ShowButton = True
            Style = csDropDown
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
              '3')
            Sorted = False
            TabOrder = 3
            UnboundDataType = wwDefault
          end
        end
        object wwDBGrid1: TwwDBGrid
          Left = 0
          Top = 265
          Width = 721
          Height = 162
          ControlType.Strings = (
            'KD_KONSTRUKSI;CustomEdit;LookKonstruksi;F'
            'KD_CORAK;CustomEdit;LookCorak;F'
            'MUTU;CustomEdit;LookMutu;F'
            'SATUAN;CustomEdit;LookSatuan;F')
          Selected.Strings = (
            'KD_KONSTRUKSI'#9'6'#9'Kode'#9'F'#9'KONSTRUKSI'
            'KONSTRUKSI'#9'43'#9'Nama'#9'T'#9'KONSTRUKSI'
            'KD_CORAK'#9'6'#9'Kode'#9'F'#9'CORAK'
            'CORAK'#9'14'#9'Nama'#9'T'#9'CORAK'
            'MUTU'#9'6'#9'MUTU'#9#9
            'SATUAN'#9'7'#9'SATUAN'#9#9
            'QTY'#9'6'#9'QTY'#9'F')
          IniAttributes.Delimiter = ';;'
          TitleColor = clBtnFace
          FixedCols = 0
          ShowHorzScrollBar = True
          Align = alClient
          DataSource = dsQDetail
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter]
          ParentFont = False
          RowHeightPercent = 200
          TabOrder = 1
          TitleAlignment = taLeftJustify
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          TitleLines = 2
          TitleButtons = False
          UseTFields = False
          OnEnter = wwDBGrid1Enter
          OnUpdateFooter = wwDBGrid1UpdateFooter
        end
        object PanelBanner: TPanel
          Left = 0
          Top = 224
          Width = 721
          Height = 41
          Align = alTop
          BevelWidth = 2
          Color = 12058623
          TabOrder = 3
          object Label1: TLabel
            Left = 8
            Top = 2
            Width = 44
            Height = 13
            Caption = 'Cari Nota'
          end
          object wwDBNavigator1: TwwDBNavigator
            Left = 305
            Top = 2
            Width = 414
            Height = 37
            AutosizeStyle = asSizeNavButtons
            DataSource = dsQMaster
            RepeatInterval.InitialDelay = 500
            RepeatInterval.Interval = 100
            Align = alRight
            Color = 12058623
            object wwDBNavigator1Button2: TwwNavButton
              Left = 0
              Top = 0
              Width = 42
              Height = 37
              Hint = 'Move to prior record'
              ImageIndex = -1
              NumGlyphs = 2
              Spacing = 4
              Transparent = False
              Caption = 'wwDBNavigator1Button2'
              Enabled = False
              DisabledTextColors.ShadeColor = clGray
              DisabledTextColors.HighlightColor = clBtnHighlight
              Index = 0
              Style = nbsPrior
            end
            object wwDBNavigator1Button3: TwwNavButton
              Left = 42
              Top = 0
              Width = 42
              Height = 37
              Hint = 'Move to next record'
              ImageIndex = -1
              NumGlyphs = 2
              Spacing = 4
              Transparent = False
              Caption = 'wwDBNavigator1Button3'
              Enabled = False
              DisabledTextColors.ShadeColor = clGray
              DisabledTextColors.HighlightColor = clBtnHighlight
              Index = 1
              Style = nbsNext
            end
            object wwDBNavigator1Insert: TwwNavButton
              Left = 84
              Top = 0
              Width = 42
              Height = 37
              Hint = 'Insert new record'
              ImageIndex = -1
              NumGlyphs = 2
              Spacing = 4
              Transparent = False
              Caption = 'wwDBNavigator1Insert'
              Enabled = False
              DisabledTextColors.ShadeColor = clGray
              DisabledTextColors.HighlightColor = clBtnHighlight
              Index = 2
              Style = nbsInsert
            end
            object wwDBNavigator1Edit: TwwNavButton
              Left = 126
              Top = 0
              Width = 42
              Height = 37
              Hint = 'Edit current record'
              ImageIndex = -1
              NumGlyphs = 2
              Spacing = 4
              Transparent = False
              Caption = 'wwDBNavigator1Edit'
              Enabled = False
              DisabledTextColors.ShadeColor = clGray
              DisabledTextColors.HighlightColor = clBtnHighlight
              Index = 3
              Style = nbsEdit
            end
            object wwDBNavigator1Delete: TwwNavButton
              Left = 168
              Top = 0
              Width = 41
              Height = 37
              Hint = 'Delete current record'
              ImageIndex = -1
              NumGlyphs = 2
              Spacing = 4
              Transparent = False
              Caption = 'wwDBNavigator1Delete'
              Enabled = False
              DisabledTextColors.ShadeColor = clGray
              DisabledTextColors.HighlightColor = clBtnHighlight
              Index = 4
              Style = nbsDelete
            end
            object wwDBNavigator1Post: TwwNavButton
              Left = 209
              Top = 0
              Width = 41
              Height = 37
              Hint = 'Post changes of current record'
              ImageIndex = -1
              NumGlyphs = 2
              Spacing = 4
              Transparent = False
              Caption = 'wwDBNavigator1Post'
              Enabled = False
              DisabledTextColors.ShadeColor = clGray
              DisabledTextColors.HighlightColor = clBtnHighlight
              Index = 5
              Style = nbsPost
            end
            object wwDBNavigator1Cancel: TwwNavButton
              Left = 250
              Top = 0
           