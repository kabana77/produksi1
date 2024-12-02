 = clNavy
          FixedCols = 0
          ShowHorzScrollBar = True
          Align = alClient
          BorderStyle = bsNone
          DataSource = dsCDSDetail
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter, dgTrailingEllipsis]
          ParentFont = False
          TabOrder = 2
          TitleAlignment = taCenter
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWhite
          TitleFont.Height = -11
          TitleFont.Name = 'Arial Narrow'
          TitleFont.Style = []
          TitleLines = 3
          TitleButtons = False
          UseTFields = False
          OnCalcCellColors = wwDBGrid1CalcCellColors
          OnDblClick = wwDBGrid1DblClick
          OnEnter = wwDBGrid1Enter
          OnUpdateFooter = wwDBGrid1UpdateFooter
          FooterColor = clGray
          PaintOptions.ActiveRecordColor = 16744576
        end
        object Panel4: TPanel
          Left = 1
          Top = 1
          Width = 1007
          Height = 144
          Align = alTop
          BevelInner = bvLowered
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 0
          object DBText1: TDBText
            Left = 913
            Top = 24
            Width = 80
            Height = 24
            Alignment = taRightJustify
            AutoSize = True
            DataField = 'NO_NOTA'
            DataSource = dsCDSMaster
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -19
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label4: TLabel
            Left = 919
            Top = 8
            Width = 69
            Height = 13
            Alignment = taRightJustify
            Caption = 'NO DESAIN'
          end
          object Label5: TLabel
            Left = 760
            Top = 60
            Width = 64
            Height = 13
            Caption = 'Tgl. Dibuat'
          end
          object Label28: TLabel
            Left = 760
            Top = 82
            Width = 68
            Height = 13
            Caption = 'Kode/ Versi'
          end
          object Label2: TLabel
            Left = 16
            Top = 8
            Width = 60
            Height = 13
            Caption = 'Konstruksi'
          end
          object Label3: TLabel
            Left = 16
            Top = 47
            Width = 34
            Height = 13
            Caption = 'Corak'
          end
          object Label1: TLabel
            Left = 376
            Top = 56
            Width = 26
            Height = 13
            Caption = 'Kodi'
          end
          object Label16: TLabel
            Left = 760
            Top = 102
            Width = 53
            Height = 13
            Caption = 'Toleransi'
          end
          object Label23: TLabel
            Left = 908
            Top = 102
            Width = 10
            Height = 13
            Caption = '%'
          end
          object Label6: TLabel
            Left = 312
            Top = 56
            Width = 41
            Height = 13
            Caption = 'Potong'
          end
          object DBText7: TDBText
            Left = 104
            Top = 26
            Width = 50
            Height = 13
            AutoSize = True
            DataField = 'KONSTRUKSI'
            DataSource = dsCDSMaster
          end
          object DBText8: TDBText
            Left = 104
            Top = 64
            Width = 50
            Height = 13
            AutoSize = True
            DataField = 'CORAK'
            DataSource = dsCDSMaster
          end
          object Label25: TLabel
            Left = 264
            Top = 27
            Width = 45
            Height = 13
            Caption = 'Dimensi'
          end
          object Label26: TLabel
            Left = 360
            Top = 27
            Width = 9
            Height = 13
            Caption = 'X'
          end
          object Label27: TLabel
            Left = 264
            Top = 75
            Width = 20
            Height = 13
            Caption = 'Qty'
          end
          object Label29: TLabel
            Left = 312
            Top = 8
            Width = 47
            Height = 13
            Caption = 'Panjang'
          end
          object Label30: TLabel
            Left = 376
            Top = 8
            Width = 33
            Height = 13
            Caption = 'Lebar'
          end
          object Label31: TLabel
            Left = 424
            Top = 27
            Width = 17
            Height = 13
            Caption = 'cm'
          end
          object Label7: TLabel
            Left = 637
            Top = 15
            Width = 42
            Height = 13
            Caption = 'Per Inc'
          end
          object Label8: TLabel
            Left = 453
            Top = 14
            Width = 60
            Height = 13
            Caption = 'Sisir/ Pick'
          end
          object Label9: TLabel
            Left = 520
            Top = 50
            Width = 24
            Height = 13
            Caption = 'Lusi'
          end
          object Label10: TLabel
            Left = 584
            Top = 50
            Width = 37
            Height = 13
            Caption = 'Pakan'
          end
          object Label11: TLabel
            Left = 453
            Top = 69
            Width = 34
            Height = 13
            Caption = 'Corak'
          end
          object Label18: TLabel
            Left = 453
            Top = 87
            Width = 26
            Height = 13
            Caption = 'Tepi'
          end
          object Label19: TLabel
            Left = 453
            Top = 105
            Width = 30
            Height = 13
            Caption = 'Kuku'
          end
          object Label20: TLabel
            Left = 637
            Top = 88
            Width = 30
            Height = 13
            Caption = 'Helai'
          end
          object Label21: TLabel
            Left = 637
            Top = 104
            Width = 30
            Height = 13
            Caption = 'Helai'
          end
          object Label17: TLabel
            Left = 453
            Top = 31
            Width = 45
            Height = 13
            Caption = 'n Corak'
          end
          object Label22: TLabel
            Left = 637
            Top = 124
            Width = 30
            Height = 13
            Caption = 'Helai'
          end
          object Label24: TLabel
            Left = 453
            Top = 125
            Width = 41
            Height = 13
            Caption = 'TOTAL'
          end
          object Label12: TLabel
            Left = 637
            Top = 69
            Width = 30
            Height = 13
            Caption = 'Helai'
          end
          object Label32: TLabel
            Left = 760
            Top = 122
            Width = 92
            Height = 13
            Caption = 'Order Marketing'
          end
          object Label33: TLabel
            Left = 376
            Top = 104
            Width = 47
            Height = 13
            Caption = 'Proporsi'
          end
          object DBText5: TDBText
            Left = 696
            Top = 11
            Width = 123
            Height = 37
            AutoSize = True
            DataField = 'ISPOSTED'
            DataSource = dsCDSMaster
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGray
            Font.Height = -32
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object wwDBDateTimePicker3: TwwDBDateTimePicker
            Left = 864
            Top = 56
            Width = 121
            Height = 21
            TabStop = False
            CalendarAttributes.Font.Charset = DEFAULT_CHARSET
            CalendarAttributes.Font.Color = clWindowText
            CalendarAttributes.Font.Height = -11
            CalendarAttributes.Font.Name = 'MS Sans Serif'
            CalendarAttributes.Font.Style = []
            DataField = 'TGL'
            DataSource = dsCDSMaster
            Date = 39387.000000000000000000
            Epoch = 1950
            Time = 0.754270833334885500
            ShowButton = True
            TabOrder = 11
          end
          object DBMemo2: TDBMemo
            Left = 16
            Top = 96
            Width = 345
            Height = 41
            TabStop = False
            Color = clWhite
            DataField = 'KETERANGAN'
            DataSource = dsCDSMaster
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ScrollBars = ssVertical
            TabOrder = 13
          end
          object wwDBEdit3: TwwDBEdit
            Left = 864
            Top = 79
            Width = 121
            Height = 19
            TabStop = False
            CharCase = ecUpperCase
            DataField = 'VERSI'
            DataSource = dsCDSMaster
            TabOrder = 12
            UnboundDataType = wwDefault
            WantReturns = False
            WordWrap = False
          end
          object LookBeam: TwwDBComboDlg
            Left = 16
            Top = 24
            Width = 81
            Height = 19
            OnCustomDlg = LookBeamCustomDlg
            ShowButton = True
            Style = csDropDown
            DataField = 'KD_KONSTRUKSI'
            DataSource = dsCDSMaster
            TabOrder = 0
            WordWrap = False
            UnboundDataType = wwDefault
            OnEnter = LookBeamEnter
          end
          object wwDBComboDlg1: TwwDBComboDlg
            Left = 16
            Top = 63
            Width = 81
            Height = 19
            OnCustomDlg = wwDBComboDlg1CustomDlg
            ShowButton = True
            Style = csDropDown
            DataField = 'CORAK'
            DataSource = dsCDSMaster
            TabOrder = 1
            WordWrap = False
            UnboundDataType = wwDefault
            OnEnter = wwDBComboDlg1Enter
          end
          object wwDBEdit1: TwwDBEdit
            Left = 376
            Top = 72
   