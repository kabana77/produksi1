object BengkelFrm: TBengkelFrm
  Left = 324
  Top = 161
  Width = 716
  Height = 600
  Caption = 'Bengkel dan Alat'
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
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 511
    Width = 708
    Height = 55
    Align = alBottom
    TabOrder = 0
    object LRecords: TLabel
      Left = 8
      Top = 4
      Width = 68
      Height = 13
      Caption = 'Jml. Record'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object BtnClose: TBitBtn
      Left = 170
      Top = 24
      Width = 75
      Height = 25
      TabOrder = 1
      Kind = bkClose
    end
    object BtnSimpan: TBitBtn
      Left = 90
      Top = 24
      Width = 75
      Height = 25
      Caption = '&Simpan'
      Enabled = False
      TabOrder = 0
      OnClick = BtnSimpanClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333330070
        7700333333337777777733333333008088003333333377F73377333333330088
        88003333333377FFFF7733333333000000003FFFFFFF77777777000000000000
        000077777777777777770FFFFFFF0FFFFFF07F3333337F3333370FFFFFFF0FFF
        FFF07F3FF3FF7FFFFFF70F00F0080CCC9CC07F773773777777770FFFFFFFF039
        99337F3FFFF3F7F777F30F0000F0F09999937F7777373777777F0FFFFFFFF999
        99997F3FF3FFF77777770F00F000003999337F773777773777F30FFFF0FF0339
        99337F3FF7F3733777F30F08F0F0337999337F7737F73F7777330FFFF0039999
        93337FFFF7737777733300000033333333337777773333333333}
      NumGlyphs = 2
    end
    object BitBtn5: TBitBtn
      Left = 9
      Top = 24
      Width = 75
      Height = 25
      Caption = '&Print'
      TabOrder = 2
      OnClick = BitBtn5Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
        8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
        8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
        8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
        03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
        03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
        33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
        33333337FFFF7733333333300000033333333337777773333333}
      NumGlyphs = 2
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 41
    Width = 708
    Height = 470
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = '&Bengkel dan Alat'
      OnShow = TabSheet1Show
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 700
        Height = 49
        Align = alTop
        BevelInner = bvLowered
        TabOrder = 0
        object BtnBrowse: TSpeedButton
          Left = 82
          Top = 16
          Width = 23
          Height = 25
          GroupIndex = 1
          Down = True
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000003
            333333333F777773FF333333008888800333333377333F3773F3333077870787
            7033333733337F33373F3308888707888803337F33337F33337F330777880887
            7703337F33337FF3337F3308888000888803337F333777F3337F330777700077
            7703337F33377733337F33088888888888033373FFFFFFFFFF73333000000000
            00333337777777777733333308033308033333337F7F337F7F33333308033308
            033333337F7F337F7F33333308033308033333337F73FF737F33333377800087
            7333333373F77733733333333088888033333333373FFFF73333333333000003
            3333333333777773333333333333333333333333333333333333}
          NumGlyphs = 2
          OnClick = BtnBrowseClick
        end
        object BtnEditing: TSpeedButton
          Left = 8
          Top = 16
          Width = 75
          Height = 25
          GroupIndex = 1
          Caption = '&Editing'
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000003
            333333333F777773FF333333008888800333333377333F3773F3333077870787
            7033333733337F33373F3308888707888803337F33337F33337F330777880887
            7703337F33337FF3337F3308888000888803337F333777F3337F330777700077
            7703337F33377733337FB3088888888888033373FFFFFFFFFF733B3000000000
            0033333777777777773333BBBB3333080333333333F3337F7F33BBBB707BB308
            03333333373F337F7F3333BB08033308033333337F7F337F7F333B3B08033308
            033333337F73FF737F33B33B778000877333333373F777337333333B30888880
            33333333373FFFF73333333B3300000333333333337777733333}
          NumGlyphs = 2
          OnClick = BtnEditingClick
        end
        object Label1: TLabel
          Left = 136
          Top = 6
          Width = 44
          Height = 13
          Caption = 'Cari Data'
        end
        object ECari: TEdit
          Left = 136
          Top = 22
          Width = 145
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 0
          OnChange = ECariChange
        end
        object BitBtn1: TBitBtn
          Left = 288
          Top = 16
          Width = 75
          Height = 25
          Caption = 'F&ilter'
          Default = True
          ModalResult = 1
          TabOrder = 1
          OnClick = BitBtn1Click
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
            555555555555555555555555555555555555555555FF55555555555559055555
            55555555577FF5555555555599905555555555557777F5555555555599905555
            555555557777FF5555555559999905555555555777777F555555559999990555
            5555557777777FF5555557990599905555555777757777F55555790555599055
            55557775555777FF5555555555599905555555555557777F5555555555559905
            555555555555777FF5555555555559905555555555555777FF55555555555579
            05555555555555777FF5555555555557905555555555555777FF555555555555
            5990555555555555577755555555555555555555555555555555}
          NumGlyphs = 2
        end
        object cbOtomatis: TCheckBox
          Left = 188
          Top = 5
          Width = 97
          Height = 17
          Caption = 'Otomatis'
          TabOrder = 2
          OnClick = cbOtomatisClick
        end
      end
      object wwDBGrid1: TwwDBGrid
        Left = 0
        Top = 49
        Width = 1033
        Height = 393
        ControlType.Strings = (
          'KD_KEL;CustomEdit;LookJenis;F'
          'KD_SATUAN;CustomEdit;LookSatuan;F'
          'ICC;CheckBox;1;0')
        Selected.Strings = (
          'KD_ITEM'#9'12'#9'KODE'#9'T'
          'KD_KEL'#9'5'#9'Kode'#9'F'#9'KELOMPOK'
          'KELOMPOK'#9'14'#9'Nama'#9'T'#9'KELOMPOK'
          'NAMA_ITEM'#9'46'#9'NAMA_ITEM'#9'F'
          'KD_SATUAN'#9'5'#9'Kode'#9'F'#9'SATUAN'
          'SAT1'#9'9'#9'Nama'#9'T'#9'SATUAN'
          'NO_PART'#9'12'#9'NO_PART'#9#9
          'ICC'#9'5'#9'Valid'#9'F'#9'Opname'
          'LAST_CC'#9'9'#9'Terakhir'#9'F'#9'Opname'
          'QTY'#9'10'#9'Jumlah'#9'F'#9'Opname'
          'OPR_EDIT'#9'9'#9'Operator'#9'F'#9'EDIT'
          'TGL_EDIT'#9'18'#9'Tanggal'#9'F'#9'EDIT')
        IniAttributes.Enabled = True
        IniAttributes.SaveToRegistry = True
        IniAttributes.FileName = 'Pismatex Master'
        IniAttributes.Delimiter = ';;'
        IniAttributes.CheckNewFields = True
        ExportOptions.ExportType = wwgetHTML
        ExportOptions.Options = [esoShowHeader, esoShowFooter, esoShowTitle, esoDblQuoteFields, esoBestColFit, esoShowRecordNo, esoShowAlternating]
        TitleColor = clSkyBlue
        FixedCols = 0
        ShowHorzScrollBar = True
        Align = alLeft
        DataSource = dsQMaster
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgPerfectRowFit, dgShowFooter, dgTrailingEllipsis, dgDblClickColSizing]
        ParentFont = False
        ReadOnly = True
        RowHeightPercent = 125
        TabOrder = 1
        TitleAlignment = taLeftJustify
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Lucida Sans'
        TitleFont.Style = [fsBold]
        TitleLines = 3
        TitleButtons = True
        UseTFields = False
        OnCalcCellColors = wwDBGrid1CalcCellColors
        OnTitleButtonClick = wwDBGrid1TitleButtonClick
        OnDblClick = wwDBGrid1DblClick
        PaintOptions.AlternatingRowColor = clMoneyGreen
        PaintOptions.ActiveRecordColor = clGreen
      end
      object LookJenis: TwwDBLookupCombo
        Left = 248
        Top = 184
        Width = 121
        Height = 21
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'KD_KEL'#9'2'#9'KODE'#9'F'
          'KELOMPOK'#9'20'#9'KELOMPOK'#9'F')
        DataField = 'KD_KEL'
        DataSource = dsQMaster
        LookupTable = QMaster2
        LookupField = 'KD_KEL'
        Options = [loColLines, loRowLines, loTitles]
        TabOrder = 2
        AutoDropDown = True
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
        OnEnter = LookJenisEnter
      end
      object LookSatuan: TwwDBLookupComboDlg
        Left = 320
        Top = 152
        Width = 121
        Height = 21
        GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
        GridColor = clWhite
        GridTitleAlignment = taLeftJustify
        Caption = 'Lookup'
        MaxWidth = 0
        MaxHeight = 209
        Selected.Strings = (
          'KD_SATUAN'#9'2'#9'KODE'#9'F'
          'SAT1'#9'12'#9'SATUAN'#9'F')
        DataField = 'KD_SATUAN'
        DataSource = dsQMaster
        LookupTable = DMFrm.QSatuan
        LookupField = 'KD_SATUAN'
        TabOrder = 3
        AutoDropDown = False
        ShowButton = True
        AllowClearKey = False
        OnEnter = LookSatuanEnter
      end
    end
    object TabSheet2: TTabSheet
      Caption = '&Kelompok'
      ImageIndex = 2
      OnShow = TabSheet2Show
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 700
        Height = 49
        Align = alTop
        BevelInner = bvLowered
        TabOrder = 0
        object BtnBrowse2: TSpeedButton
          Left = 82
          Top = 16
          Width = 23
          Height = 25
          GroupIndex = 1
          Down = True
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000003
            333333333F777773FF333333008888800333333377333F3773F3333077870787
            7033333733337F33373F3308888707888803337F33337F33337F330777880887
            7703337F33337FF3337F3308888000888803337F333777F3337F330777700077
            7703337F33377733337F33088888888888033373FFFFFFFFFF73333000000000
            00333337777777777733333308033308033333337F7F337F7F33333308033308
            033333337F7F337F7F33333308033308033333337F73FF737F33333377800087
            7333333373F77733733333333088888033333333373FFFF73333333333000003
            3333333333777773333333333333333333333333333333333333}
          NumGlyphs = 2
          OnClick = BtnBrowse2Click
        end
        object BtnEditing2: TSpeedButton
          Left = 8
          Top = 16
          Width = 75
          Height = 25
          GroupIndex = 1
          Caption = '&Editing'
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000003
            333333333F777773FF333333008888800333333377333F3773F3333077870787
            7033333733337F33373F3308888707888803337F33337F33337F330777880887
            7703337F33337FF3337F3308888000888803337F333777F3337F330777700077
            7703337F33377733337FB3088888888888033373FFFFFFFFFF733B3000000000
            0033333777777777773333BBBB3333080333333333F3337F7F33BBBB707BB308
            03333333373F337F7F3333BB08033308033333337F7F337F7F333B3B08033308
            033333337F73FF737F33B33B778000877333333373F777337333333B30888880
            33333333373FFFF73333333B3300000333333333337777733333}
          NumGlyphs = 2
          OnClick = BtnEditing2Click
        end
        object Label4: TLabel
          Left = 136
          Top = 6
          Width = 44
          Height = 13
          Caption = 'Cari Data'
        end
        object ECari2: TEdit
          Left = 136
          Top = 22
          Width = 145
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 0
        end
        object BitBtn3: TBitBtn
          Left = 288
          Top = 16
          Width = 75
          Height = 25
          Caption = 'C&ari'
          Default = True
          ModalResult = 1
          TabOrder = 1
          OnClick = BitBtn3Click
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
            555555555555555555555555555555555555555555FF55555555555559055555
            55555555577FF5555555555599905555555555557777F5555555555599905555
            555555557777FF5555555559999905555555555777777F555555559999990555
            5555557777777FF5555557990599905555555777757777F55555790555599055
            55557775555777FF5555555555599905555555555557777F5555555555559905
            555555555555777FF5555555555559905555555555555777FF55555555555579
            05555555555555777FF5555555555557905555555555555777FF555555555555
            5990555555555555577755555555555555555555555555555555}
          NumGlyphs = 2
        end
      end
      object wwDBGrid2: TwwDBGrid
        Left = 0
        Top = 49
        Width = 241
        Height = 393
        ControlType.Strings = (
          'ISAKTIF;CheckBox;1;0'
          'ID_SUB_BAG;CustomEdit;LookBagian;F'
          'ID_HAK;CustomEdit;LookJnsMenu;F')
        PictureMasks.Strings = (
          'ID_BAG'#9'*2{#,&}'#9'T'#9'T'
          'KD_JNS_ITEM'#9'#,&'#9'T'#9'T'
          'KD_SATUAN'#9'#,&'#9'T'#9'T'
          'ID_USER'#9'*3{&,#}'#9'T'#9'T')
        Selected.Strings = (
          'KD_KEL'#9'5'#9'KODE'#9'F'
          'KELOMPOK'#9'27'#9'KELOMPOK'#9#9)
        IniAttributes.Enabled = True
        IniAttributes.SaveToRegistry = True
        IniAttributes.FileName = 'Pismatex Master'
        IniAttributes.Delimiter = ';;'
        IniAttributes.CheckNewFields = True
        ExportOptions.ExportType = wwgetHTML
        ExportOptions.Options = [esoShowHeader, esoShowFooter, esoShowTitle, esoDblQuoteFields, esoBestColFit, esoShowRecordNo, esoShowAlternating]
        TitleColor = clSkyBlue
        FixedCols = 0
        ShowHorzScrollBar = True
        Align = alLeft
        DataSource = dsQMaster2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgPerfectRowFit, dgShowFooter, dgTrailingEllipsis, dgDblClickColSizing]
        ParentFont = False
        ReadOnly = True
        RowHeightPercent = 125
        TabOrder = 1
        TitleAlignment = taLeftJustify
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Lucida Sans'
        TitleFont.Style = [fsBold]
        TitleLines = 3
        TitleButtons = True
        UseTFields = False
        OnCalcCellColors = wwDBGrid1CalcCellColors
        OnTitleButtonClick = wwDBGrid2TitleButtonClick
        OnDblClick = wwDBGrid1DblClick
        PaintOptions.AlternatingRowColor = clMoneyGreen
        PaintOptions.ActiveRecordColor = clGreen
        GroupFieldName = 'SUB_BAGIAN'
      end
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 0
    Width = 708
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    Color = 206
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    object LTitle: TLabel
      Left = 16
      Top = 8
      Width = 203
      Height = 23
      Cursor = crHandPoint
      Caption = 'BENGKEL dan ALAT'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Georgia'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = LTitleClick
    end
  end
  object QMaster: TOracleDataSet
    SQL.Strings = (
      
        'select * from (select a.kd_item, a.kd_jns_item, a.kd_kel, a.nama' +
        '_item, a.kd_satuan, a.no_part,a.icc, a.last_cc, a.qty, a.rowid, ' +
        'b.kelompok, c.sat1, a.tgl_edit, a.opr_edit  from pmtx01.item a'
      
        'left outer join pmtx01.kelompok_item b on (a.kd_kel=b.kd_kel and' +
        ' a.kd_jns_item=b.kd_jns_item)'
      'left outer join pmtx01.satuan c on (a.kd_satuan=c.kd_satuan)'
      'where a.kd_jns_item='#39'6'#39')'
      ':myparam')
    ReadBuffer = 10
    Variables.Data = {
      0300000001000000080000003A4D59504152414D010000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000000D000000080000004B454C4F4D504F4B010000000000070000004B44
      5F4954454D0100000000000B0000004B445F4A4E535F4954454D010000000000
      060000004B445F4B454C010000000000090000004E414D415F4954454D010000
      000000090000004B445F53415455414E010000000000070000004E4F5F504152
      5401000000000004000000534154310100000000000300000049434301000000
      0000070000004C4153545F434301000000000003000000515459010000000000
      0800000054474C5F45444954010000000000080000004F50525F454449540100
      00000000}
    QueryAllRecords = False
    CountAllRecords = True
    RefreshOptions = [roAfterInsert, roAfterUpdate]
    CommitOnPost = False
    Session = DMFrm.OS
    Active = True
    BeforePost = QMasterBeforePost
    AfterPost = QMasterAfterPost
    AfterDelete = QMasterAfterPost
    AfterScroll = QMasterAfterScroll
    OnNewRecord = QMasterNewRecord
    Left = 60
    Top = 177
    object QMasterKD_ITEM: TStringField
      FieldName = 'KD_ITEM'
      Size = 16
    end
    object QMasterKD_JNS_ITEM: TStringField
      FieldName = 'KD_JNS_ITEM'
      Required = True
      Size = 1
    end
    object QMasterKD_KEL: TStringField
      FieldName = 'KD_KEL'
      Required = True
      Size = 2
    end
    object QMasterNAMA_ITEM: TStringField
      FieldName = 'NAMA_ITEM'
      Required = True
      Size = 80
    end
    object QMasterKD_SATUAN: TStringField
      FieldName = 'KD_SATUAN'
      Required = True
      Size = 2
    end
    object QMasterNO_PART: TStringField
      FieldName = 'NO_PART'
    end
    object QMasterKELOMPOK: TStringField
      FieldName = 'KELOMPOK'
      Size = 50
    end
    object QMasterSAT1: TStringField
      FieldName = 'SAT1'
      Size = 12
    end
    object QMasterICC: TStringField
      FieldName = 'ICC'
      Required = True
      Size = 1
    end
    object QMasterLAST_CC: TDateTimeField
      FieldName = 'LAST_CC'
    end
    object QMasterQTY: TFloatField
      FieldName = 'QTY'
      Required = True
    end
    object QMasterTGL_EDIT: TDateTimeField
      FieldName = 'TGL_EDIT'
    end
    object QMasterOPR_EDIT: TStringField
      FieldName = 'OPR_EDIT'
      Size = 30
    end
  end
  object dsQMaster: TwwDataSource
    DataSet = QMaster
    Left = 108
    Top = 137
  end
  object QMaster2: TOracleDataSet
    SQL.Strings = (
      'select * from (select a.*, a.rowid from pmtx01.kelompok_item a'
      'where a.kd_jns_item='#39'6'#39')'
      ':myparam')
    ReadBuffer = 10
    Variables.Data = {
      0300000001000000080000003A4D59504152414D010000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      0400000003000000080000004B454C4F4D504F4B010000000000060000004B44
      5F4B454C0100000000000B0000004B445F4A4E535F4954454D010000000000}
    QueryAllRecords = False
    CountAllRecords = True
    CachedUpdates = True
    Session = DMFrm.OS
    AfterPost = QMasterAfterPost
    AfterDelete = QMasterAfterPost
    AfterScroll = QMasterAfterScroll
    OnNewRecord = QMaster2NewRecord
    Left = 108
    Top = 233
    object QMaster2KD_KEL: TStringField
      DisplayLabel = 'KODE'
      DisplayWidth = 2
      FieldName = 'KD_KEL'
      Required = True
      Size = 2
    end
    object QMaster2KELOMPOK: TStringField
      DisplayWidth = 20
      FieldName = 'KELOMPOK'
      Required = True
      Size = 50
    end
    object QMaster2KD_JNS_ITEM: TStringField
      FieldName = 'KD_JNS_ITEM'
      Required = True
      Visible = False
      Size = 1
    end
  end
  object dsQMaster2: TwwDataSource
    DataSet = QMaster2
    Left = 100
    Top = 273
  end
end
                                                                                                                                                                                                                                                                  s = {
      0400000002000000080000004B445F42554B54490100000000000B0000004A45
      4E49535F42554B5449010000000000}
    ReadOnly = True
    QueryAllRecords = False
    Session = DMFrm.OS
    BeforeOpen = QTDetailBeforeOpen
    Left = 901
    Top = 466
    object QJnsBuktiKD_BUKTI: TStringField
      DisplayLabel = 'KODE'
      DisplayWidth = 5
      FieldName = 'KD_BUKTI'
      Required = True
      Size = 3
    end
    object QJnsBuktiJENIS_BUKTI: TStringField
      DisplayWidth = 35
     unit Bengkel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Wwdatsrc, OracleData, Wwdbdlg, wwdblook, Grids, Wwdbigrd,
  Wwdbgrid, StdCtrls, Buttons, ComCtrls, ExtCtrls, wwrcdvw, wwDBNavigator;

type
  TBengkelFrm = class(TForm)
    Panel1: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel2: TPanel;
    Panel4: TPanel;
    LTitle: TLabel;
    BtnClose: TBitBtn;
    QMaster: TOracleDataSet;
    dsQMaster: TwwDataSource;
    wwDBGrid1: TwwDBGrid;
    BtnSimpan: TBitBtn;
    BtnBrowse: TSpeedButton;
    BtnEditing: TSpeedButton;
    ECari: TEdit;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    BitBtn5: TBitBtn;
    LRecords: TLabel;
    TabSheet2: TTabSheet;
    Panel5: TPanel;
    BtnBrowse2: TSpeedButton;
    BtnEditing2: TSpeedButton;
    Label4: TLabel;
    ECari2: TEdit;
    BitBtn3: TBitBtn;
    wwDBGrid2: TwwDBGrid;
    QMaster2: TOracleDataSet;
    dsQMaster2: TwwDataSource;
    LookJenis: TwwDBLookupCombo;
    QMasterKD_ITEM: TStringField;
    QMasterKD_JNS_ITEM: TStringField;
    QMasterKD_KEL: TStringField;
    QMasterNAMA_ITEM: TStringField;
    QMasterKD_SATUAN: TStringField;
    QMasterNO_PART: TStringField;
    QMasterKELOMPOK: TStringField;
    QMaster2KD_KEL: TStringField;
    QMaster2KD_JNS_ITEM: TStringField;
    QMaster2KELOMPOK: TStringField;
    QMasterSAT1: TStringField;
    LookSatuan: TwwDBLookupComboDlg;
    cbOtomatis: TCheckBox;
    QMasterICC: TStringField;
    QMasterLAST_CC: TDateTimeField;
    QMasterQTY: TFloatField;
    QMasterTGL_EDIT: TDateTimeField;
    QMasterOPR_EDIT: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnSimpanClick(Sender: TObject);
    procedure QMasterAfterPost(DataSet: TDataSet);
    procedure BtnEditingClick(Sender: TObject);
    procedure BtnBrowseClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure wwDBGrid1TitleButtonClick(Sender: TObject;
      AFieldName: String);
    procedure QMasterAfterScroll(DataSet: TDataSet);
    procedure BitBtn5Click(Sender: TObject);
    procedure TabSheet1Show(Sender: TObject);
    procedure BtnEditing2Click(Sender: TObject);
    procedure BtnBrowse2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure wwDBGrid2TitleButtonClick(Sender: TObject;
      AFieldName: String);
    procedure TabSheet2Show(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure LookMesinEnter(Sender: TObject);
    procedure LookJenisEnter(Sender: TObject);
    procedure LookKonstruksiEnter(Sender: TObject);
    procedure QMasterNewRecord(DataSet: TDataSet);
    procedure QMaster2NewRecord(DataSet: TDataSet);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure wwDBGrid1DblClick(Sender: TObject);
    procedure wwDBGrid1CalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure LookSatuanEnter(Sender: TObject);
    procedure cbOtomatisClick(Sender: TObject);
    procedure ECariChange(Sender: TObject);
    procedure LTitleClick(Sender: TObject);
    procedure QMasterBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
    vfilter, vorder, vfilter2, vorder2 : String;
  public
    { Public declarations }
  end;

var
  BengkelFrm: TBengkelFrm;

implementation

uses DM, MainBrowse, Main, Menus;

{$R *.dfm}

procedure TBengkelFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
  BengkelFrm:=Nil;
end;

procedure TBengkelFrm.BtnSimpanClick(Sender: TObject);
begin
  case PageControl1.ActivePageIndex of
  0 : begin
        try
          DMFrm.OS.CommitUpdates([QMaster]);
          BtnSimpan.Enabled:=False;
          BtnBrowse.Down:=True;
          BtnBrowseClick(Nil);
        except
            on E : Exception do
            begin
              ShowMessage(E.Message);
              BtnSimpan.Enabled:=True;
            end;
        end;
      end;
  1 : begin
        try
          DMFrm.OS.ApplyUpdates([QMaster2],True);
          BtnSimpan.Enabled:=False;
          BtnBrowse2.Down:=True;
          BtnBrowse2Click(Nil);
        except
            on E : Exception do
            begin
              ShowMessage(E.Message);
              BtnSimpan.Enabled:=True;
            end;
        end;
      end;
  end;
end;

procedure TBengkelFrm.QMasterAfterPost(DataSet: TDataSet);
begin
  BtnSimpan.Enabled:=True;
end;

procedure TBengkelFrm.BtnEditingClick(Sender: TObject);
begin
  wwDBGrid1.Options:=wwDBGrid1.Options-[dgRowSelect];
  wwDBGrid1.ReadOnly:=False;
  wwDBGrid1.SetFocus;
//  TabSheet1.TabVisible:=False;
  TabSheet2.TabVisible:=False;
end;

procedure TBengkelFrm.BtnBrowseClick(Sender: TObject);
begin
  if BtnSimpan.Enabled then
    ShowMessage('Simpan/ Posting Data Dulu !')
    else
    begin
      wwDBGrid1.Options:=wwDBGrid1.Options+[dgRowSelect];
      wwDBGrid1.ReadOnly:=True;
      wwDBGrid1.SetFocus;
//      TabSheet1.TabVisible:=True;
      TabSheet2.TabVisible:=True;
    end;
end;

procedure TBengkelFrm.BitBtn1Click(Sender: TObject);
var
  i : word;
  vpertama : boolean;
begin
  vpertama:=True;
  if BtnSimpan.Enabled then
    ShowMessage('Mode CARI berfungsi jika perubahan data sudah di-POSTING/ SIMPAN !')
    else
    begin
        vfilter:=' where ';
        if (QMaster.FieldCount>=1) then
        begin
          for i:=0 to QMaster.FieldCount-1 do
          begin
            if QMaster.Fields[i].FieldKind=fkData then
            begin
              if vpertama then
                begin
                  vfilter:=vfilter+QMaster.Fields[i].FieldName+' like ''%'+ECari.Text+'%''';
                  vpertama:=False;
  