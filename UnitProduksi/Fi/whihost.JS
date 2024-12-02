tleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          TitleLines = 2
          TitleButtons = False
          UseTFields = False
          OnEnter = wwDBGrid1Enter
          OnUpdateFooter = wwDBGrid1UpdateFooter
        end
        object PanelBanner: TPanel
          Left = 0
          Top = 209
          Width = 703
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
            Left = 287
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
              Width = 41
              Height = 37
              Hint = 'Cancel changes made to current record'
              ImageIndex = -1
              NumGlyphs = 2
              Spacing = 4
              Transparent = False
              Caption = 'wwDBNavigator1Cancel'
              Enabled = False
              DisabledTextColors.ShadeColor = clGray
              DisabledTextColors.HighlightColor = clBtnHighlight
              Index = 6
              Style = nbsCancel
            end
            object wwDBNavigator1Refresh: TwwNavButton
              Left = 291
              Top = 0
              Width = 41
              Height = 37
              Hint = 'Refresh the contents of the dataset'
              ImageIndex = -1
              NumGlyphs = 2
              Spacing = 4
              Transparent = False
              Caption = 'wwDBNavigator1Refresh'
              Enabled = False
              DisabledTextColors.ShadeColor = clGray
              DisabledTextColors.HighlightColor = clBtnHighlight
              Index = 7
              Style = nbsRefresh
            end
            object wwDBNavigator1Button: TwwNavButton
              Left = 332
              Top = 0
              Width = 41
              Height = 37
              Hint = 'Search the dataset'
              ImageIndex = -1
              NumGlyphs = 2
              ShowText = True
              Spacing = 4
              Transparent = False
              Caption = 'Browse'
              DisabledTextColors.ShadeColor = clGray
              DisabledTextColors.HighlightColor = clBtnHighlight
              OnClick = wwDBNavigator1ButtonClick
              Index = 8
              Style = nbsCustom
            end
            object wwDBNavigator1Button1: TwwNavButton
              Left = 373
              Top = 0
              Width = 41
              Height = 37
              ImageIndex = -1
              NumGlyphs = 1
              Spacing = 4
              Transparent = False
              Caption = 'wwDBNavigator1Button1'
              DisabledTextColors.ShadeColor = clGray
              DisabledTextColors.HighlightColor = clBtnHighlight
              Index = 9
              Style = nbsCustom
            end
          end
          object Edit1: TEdit
            Left = 8
            Top = 18
            Width = 129
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 1
            OnKeyDown = Edit1KeyDown
          end
          object wwCheckBox1: TwwCheckBox
            Left = 144
            Top = 16
            Width = 73
            Height = 17
            DisableThemes = False
            AlwaysTransparent = False
            ValueChecked = '1'
            ValueUnchecked = '0'
            DisplayValueChecked = 'True'
            DisplayValueUnchecked = 'False'
            NullAndBlankState = cbUnchecked
            Caption = 'Posting'
            DataField = 'ISPOST'
            DataSource = dsQMaster
            TabOrder = 2
          end
        end
        object Panel2: TPanel
          Left = 0
          Top = 480
          Width = 703
          Height = 32
          Align = alBottom
          BevelOuter = bvNone
          Color = 4605440
          TabOrder = 5
        end
        object LookKonstruksi: TwwDBLookupComboDlg
          Left = 24
          Top = 336
          Width = 121
          Height = 21
          GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
          GridColor = clWhite
          GridTitleAlignment = taLeftJustify
          Caption = 'Lookup'
          MaxWidth = 0
          MaxHeight = 209
          Selected.Strings = (
            'KD_KONSTRUKSI'#9'6'#9'KODE'#9'F'
            'NAMA_KONSTRUKSI'#9'30'#9'KONSTRUKSI'#9'F')
          DataField = 'KONSTRUKSI'
          DataSource = dsQDetail
          LookupTable = DMFrm.QKonstruksi
          LookupField = 'KD_KONSTRUKSI'
          TabOrder = 6
          AutoDropDown = False
          ShowButton = True
          AllowClearKey = False
          OnCloseUp = LookKonstruksiCloseUp
          OnEnter = LookKonstruksiEnter
        end
        object LookCorak: TwwDBLookupComboDlg
          Left = 168
          Top = 336
          Width = 121
          Height = 21
          GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
          GridColor = clWhite
          GridTitleAlignment = taLeftJustify
          Caption = 'Lookup'
          MaxWidth = 0
          MaxHeight = 209
          Selected.Strings = (
            'KD_CORAK'#9'6'#9'KODE'#9'F'
            'NAMA_CORAK'#9'30'#9'NAMA CORAK'#9'F')
          DataField = 'CORAK'
          DataSource = dsQDetail
          LookupTable = DMFrm.QCorak
          LookupField = 'KD_CORAK'
          TabOrder = 7
          AutoDropDown = False
          ShowButton = True
          AllowClearKey = False
          OnCloseUp = LookCorakCloseUp
          OnEnter = LookCorakEnter
        end
        object LookMutu: TwwDBLookupCombo
          Left = 328
          Top = 336
          Width = 121
          Height = 21
          DropDownAlignment = taLeftJustify
          Selected.Strings = (
            'MUTU'#9'5'#9'MUTU'#9'F'
            'KETERANGAN'#9'30'#9'KETERANGAN'#9'F'
            'SCORE'#9'10'#9'SCORE'#9#9)
          DataField = 'MUTU'
          DataSource = dsQDetail
          LookupTable = DMFrm.QMutu
          LookupField = 'MUTU'
          Options = [loColLines, loRowLines, loTitles]
          TabOrder = 8
          AutoDropDown = False
          ShowButton = True
          PreciseEditRegion = False
          AllowClearKey = False
          OnEnter = LookMutuEnter
        end
        object LookSatuan: TwwDBComboBox
          Left = 472
          Top = 344
          Width = 121
          Height = 21
          Sh