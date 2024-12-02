object BenangGreyFrm: TBenangGreyFrm
  Left = 163
  Top = 113
  Width = 772
  Height = 598
  Caption = 'Benang Grey'
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
  object Panel1: TPanel
    Left = 0
    Top = 509
    Width = 764
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
    Width = 764
    Height = 468
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = 'Benang Grey'
      OnShow = TabSheet1Show
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 756
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
        Width = 1001
        Height = 391
        ControlType.Strings = (
          'KD_BENANG;CustomEdit;LookBenang;F'
          'KD_SUPLIER;CustomEdit;LookSuplier;F'
          'ICC;CheckBox;1;0')
        Selected.Strings = (
          'KD_ITEM'#9'9'#9'KODE'#9'T'
          'KD_BENANG'#9'5'#9'Kode'#9'F'#9'BENANG'
          'BENANG'#9'15'#9'Nama'#9'T'#9'BENANG'
          'KD_SUPLIER'#9'5'#9'Kode'#9'F'#9'SUPLIER'
          'NAMA_REKANAN'#9'32'#9'Nama'#9'T'#9'SUPLIER'
          'NAMA_ITEM'#9'27'#9'NAMA_ITEM'#9'T'
          'KD_SATUAN'#9'5'#9'Kode'#9'T'#9'SATUAN'
          'SAT1'#9'9'#9'Nama'#9'T'#9'SATUAN'
          'ICC'#9'5'#9'Valid'#9'F'#9'Opname'
          'LAST_CC'#9'8'#9'Terakhir'#9'F'#9'Opname'
          'QTY'#9'10'#9'Jumlah'#9'F'#9'Opname'
          'OPR_EDIT'#9'9'#9'Operator'#9'F'#9'EDIT'
          'TGL_EDIT'#9'8'#9'Tanggal'#9'F'#9'EDIT')
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
        Font.Color = clBlack
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
      object LookBenang: TwwDBLookupComboDlg
        Left = 128
        Top = 168
        Width = 121
        Height = 21
        GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
        GridColor = clWhite
        GridTitleAlignment = taLeftJustify
        Caption = 'Lookup'
        MaxWidth = 0
        MaxHeight = 209
        Selected.Strings = (
          'KD_BENANG'#9'2'#9'KODE'#9'F'
          'BENANG'#9'12'#9'BENANG'#9'F'
          'NO_BENANG'#9'10'#9'NO_BENANG'#9#9)
        DataField = 'KD_BENANG'
        DataSource = dsQMaster
        LookupTable = DMFrm.QBenang
        LookupField = 'KD_BENANG'
        TabOrder = 2
        AutoDropDown = False
        ShowButton = True
        AllowClearKey = False
        OnEnter = LookBenangEnter
      end
      object LookSuplier: TwwDBLookupComboDlg
        Left = 288
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
          'INISIAL'#9'12'#9'INISIAL'#9#9
          'NAMA_REKANAN'#9'40'#9'NAMA_REKANAN'#9'F'
          'KD_REKANAN'#9'5'#9'KODE'#9'F'
          'KOTA'#9'30'#9'KOTA'#9'F')
        DataField = 'KD_SUPLIER'
        DataSource = dsQMaster
        LookupTable = DMFrm.QSuplierBenang
        LookupField = 'KD_REKANAN'
        TabOrder = 3
        AutoDropDown = False
        ShowButton = True
        AllowClearKey = False
        OnEnter = LookSuplierEnter
      end
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 0
    Width = 764
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
      Width = 242
      Height = 23
      Cursor = crHandPoint
      Caption = 'DAFTAR BENANG GREY'
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
      
        'select * from (select a.*,a.rowid, b.nama_rekanan, c.benang, d.s' +
        'at1  from pmtx01.item a'
      'left outer join pmtx01.rekanan b on (a.kd_suplier=b.kd_rekanan)'
      'left outer join pmtx01.benang c on (a.kd_benang=c.kd_benang)'
      'left outer join pmtx01.satuan d on (a.kd_satuan=d.kd_satuan)'
      'where kd_jns_item='#39'1'#39')'
      ':myparam')
    ReadBuffer = 10
    Variables.Data = {
      0300000001000000080000003A4D59504152414D010000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000001B000000070000004B445F4954454D0100000000000B0000004B445F
      4A4E535F4954454D010000000000060000004B445F4B454C0100000000000900
      00004B445F42454E414E470100000000000D0000004B445F4B4F4E535452554B
      5349010000000000080000004B445F434F52414B010000000000070000004B44
      5F4D45524B0100000000000A0000004B445F4B454D4153414E0100000000000A
      0000004B445F5355504C494552010000000000090000004E414D415F4954454D
      010000000000090000004B445F53415455414E0100000000000A00000054474C
      5F494E534552540100000000000A0000004F50525F494E534552540100000000
      000C0000004E414D415F52454B414E414E0100000000000600000042454E414E
      470100000000000400000053415431010000000000070000004E4F5F50415254
      01000000000007000000544C525F50534E01000000000007000000544C525F51
      5459010000000000090000004E4F5F42454E414E470100000000000500000052
      4153494F0100000000000B0000004B445F4954454D5F41434301000000000003
      000000494343010000000000070000004C4153545F4343010000000000030000
      005154590100000000000800000054474C5F4544495401000000000008000000
      4F50525F45444954010000000000}
    QueryAllRecords = False
    CountAllRecords = True
    RefreshOptions = [roAfterInsert, roAfterUpdate]
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
    object QMasterKD_BENANG: TStringField
      FieldName = 'KD_BENANG'
      Required = True
      Size = 2
    end
    object QMasterKD_SUPLIER: TStringField
      FieldName = 'KD_SUPLIER'
      Required = True
      Size = 5
    end
    object QMasterNAMA_ITEM: TStringField
      FieldName = 'NAMA_ITEM'
      Size = 80
    end
    object QMasterKD_SATUAN: TStringField
      FieldName = 'KD_SATUAN'
      Required = True
      Size = 2
    end
    object QMasterNAMA_REKANAN: TStringField
      FieldName = 'NAMA_REKANAN'
      Size = 50
    end
    object QMasterBENANG: TStringField
      FieldName = 'BENANG'
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
    Top = 169
  end
end
                                                                                                                                                                                                                                                                                                                                                                                                                    Size.Values = (
                44.979166666666670000
                1185.333333333333000000
                2.645833333333333000
                113.770833333333300000)
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = True
              Color = clWhite
              DataSet = Q1
              DataField = 'KG'
              Mask = '#,##0.00;(#,##0.00);-'
              Transparent = False
              WordWrap = True
              FontSize = 9
            end
            object QRDBText20: TQRDBText
              Left = 504
              Top = 1
              Width = 107
              Height = 17
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                1333.500000000000000000
                2.645833333333333000
                283.104166666666700000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = True
              Color = clWhite
              DataSet = Q1
              DataField = 'LOKASI'
              Transparent = False
              WordWrap = True
              FontSize = 9
            end
            object QRDBText21: TQRDBText
              Left = 616
              Top = 1
              Width = 107
              Height = 17
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                1629.833333333333000000
                2.645833333333333000
                283.104166666666700000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = True
              Color = clWhite
              DataSet = Q1
              DataField = 'LOKASI2'
              Transparent = False
              WordWrap = True
              FontSize = 9
            end
          end
          object QRBand4: TQRBand
            Left = 38
            Top = 232
            Width = 726
            Height = 113
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
              298.979166666666700000
              1920.875000000000000000)
            BandType = rbSummary
            object QRLabel14: TQRLabel
              Left = 335
              Top = 28
              Width = 56
              Height = 1object BenangGreyFrm: TBenangGreyFrm
  Left = 163
  Top = 113
  Width = 772
  Height = 598
  Caption = 'Benang Grey'
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
  object Panel1: TPanel
    Left = 0
    Top = 509
    Width = 764
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
    Width = 764
    Height = 468
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = 'Benang Grey'
      OnShow = TabSheet1Show
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 756
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
        Width = 1017
        Height = 391
        ControlType.Strings = (
          'KD_BENANG;CustomEdit;LookBenang;F'
          'KD_SUPLIER;CustomEdit;LookSuplier;F'
          'ICC;CheckBox;1;0')
        Selected.Strings = (
          'KD_ITEM'#9'9'#9'KODE'#9'T'
          'KD_BENANG'#9'5'#9'Kode'#9'F'#9'BENANG'
          'BENANG'#9'15'#9'Nama'#9'T'#9'BENANG'
          'KD_SUPLIER'#9'5'#9'Kode'#9'F'#9'SUPLIER'
          'NAMA_REKANAN'#9'32'#9'Nama'#9'T'#9'SUPLIER'
          'NAMA_ITEM'#9'27'#9'NAMA_ITEM'#9'T'
          'KD_SATUAN'#9'5'#9'Kode'#9'T'#9'SATUAN'
          'SAT1'#9'9'#9'Nama'#9'T'#9'SATUAN'
          'ICC'#9'5'#9'Valid'#9'F'#9'Opname'
          'LAST_CC'#9'18'#9'Terakhir'#9'F'#9'Opname'
          'QTY'#9'10'#9'Jumlah'#9'F'#9'Opname'
          'OPR_EDIT'#9'15'#9'Operator'#9'F'#9'EDIT'
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
        Font.Color = clBlack
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
      object LookBenang: TwwDBLookupComboDlg
        Left = 128
        Top = 168
        Width = 121
        Height = 21
        GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
        GridColor = clWhite
        GridTitleAlignment = taLeftJustify
        Caption = 'Lookup'
        MaxWidth = 0
        MaxHeight = 209
        Selected.Strings = (
          'KD_BENANG'#9'2'#9'KODE'#9'F'
          'BENANG'#9'12'#9'BENANG'#9'F'
          'NO_BENANG'#9'10'#9'NO_BENANG'#9#9)
        DataField = 'KD_BENANG'
        DataSource = dsQMaster
        LookupTable = DMFrm.QBenang
        LookupField = 'KD_BENANG'
        TabOrder = 2
        AutoDropDown = False
        ShowButton = True
        AllowClearKey = False
        OnEnter = LookBenangEnter
      end
      object LookSuplier: TwwDBLookupComboDlg
        Left = 288
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
          'INISIAL'#9'12'#9'INISIAL'#9#9
          'NAMA_REKANAN'#9'40'#9'NAMA_REKANAN'#9'F'
          'KD_REKANAN'#9'5'#9'KODE'#9'F'
          'KOTA'#9'30'#9'KOTA'#9'F')
        DataField = 'KD_SUPLIER'
        DataSource = dsQMaster
        LookupTable = DMFrm.QSuplierBenang
        LookupField = 'KD_REKANAN'
        TabOrder = 3
        AutoDropDown = False
        ShowButton = True
        AllowClearKey = False
        OnEnter = LookSuplierEnter
      end
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 0
    Width = 764
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
      Width = 242
      Height = 23
      Cursor = crHandPoint
      Caption = 'DAFTAR BENANG GREY'
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
      
        'select * from (select a.*,a.rowid, b.nama_rekanan, c.benang, d.s' +
        'at1  from pmtx01.item a'
      'left outer join pmtx01.rekanan b on (a.kd_suplier=b.kd_rekanan)'
      'left outer join pmtx01.benang c on (a.kd_benang=c.kd_benang)'
      'left outer join pmtx01.satuan d on (a.kd_satuan=d.kd_satuan)'
      'where kd_jns_item='#39'1'#39')'
      ':myparam')
    ReadBuffer = 10
    Variables.Data = {
      0300000001000000080000003A4D59504152414D010000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000001B000000070000004B445F4954454D0100000000000B0000004B445F
      4A4E535F4954454D010000000000060000004B445F4B454C0100000000000900
      00004B445F42454E414E470100000000000D0000004B445F4B4F4E535452554B
      5349010000000000080000004B445F434F52414B010000000000070000004B44
      5F4D45524B0100000000000A0000004B445F4B454D4153414E0100000000000A
      0000004B445F5355504C494552010000000000090000004E414D415F4954454D
      010000000000090000004B445F53415455414E0100000000000A00000054474C
      5F494E534552540100000000000A0000004F50525F494E534552540100000000
      000C0000004E414D415F52454B414E414E0100000000000600000042454E414E
      470100000000000400000053415431010000000000070000004E4F5F50415254
      01000000000007000000544C525F50534E01000000000007000000544C525F51
      5459010000000000090000004E4F5F42454E414E470100000000000500000052
      4153494F0100000000000B0000004B445F4954454D5F41434301000000000003
      000000494343010000000000070000004C4153545F4343010000000000030000
      005154590100000000000800000054474C5F4544495401000000000008000000
      4F50525F45444954010000000000}
    QueryAllRecords = False
    CountAllRecords = True
    RefreshOptions = [roAfterInsert, roAfterUpdate]
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
    object QMasterKD_BENANG: TStringField
      FieldName = 'KD_BENANG'
      Required = True
      Size = 2
    end
    object QMasterKD_SUPLIER: TStringField
      FieldName = 'KD_SUPLIER'
      Required = True
      Size = 5
    end
    object QMasterNAMA_ITEM: TStringField
      FieldName = 'NAMA_ITEM'
      Size = 80
    end
    object QMasterKD_SATUAN: TStringField
      FieldName = 'KD_SATUAN'
      Required = True
      Size = 2
    end
    object QMasterNAMA_REKANAN: TStringField
      FieldName = 'NAMA_REKANAN'
      Size = 50
    end
    object QMasterBENANG: TStringField
      FieldName = 'BENANG'
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
    Top = 169
  end
end
                                                                                                                                                                                                                                                                                                                                                                                                    Transparent = False
                Caption = '&Batal'
                Enabled = False
                DisabledTextColors.ShadeColor = clGray
                DisabledTextColors.HighlightColor = clBtnHighlight
                Index = 4
                Style = nbsCancel
              end
            end
            object wwCheckBox1: TwwCheckBox
              Left = 356
              Top = 14
              Width = 94
              Height = 22
              DisableThemes = False
              AlwaysTransparent = False
              ValueChecked = '1'
              ValueUnchecked = '0'
              DisplayValueChecked = 'True'
              DisplayValueUnchecked = 'False'
              NullAndBlankState = cbUnchecked
              Caption = 'P&osting'
              DataField = 'ISPOST'
              DataSource = dsQT
              Font.Charset = ANSI_CHARSET
              Font.Color = clLime
              Font.Height = -19
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 1
            end
            object Panel31: TPanel
              Left = 736
              Top = 1
              Width = 214
              Height = 39
              Align = alRight
              BevelOuter = bvNone
              Color = clGray
              TabOrder = 2
              object Label13: TLabel
                Left = 3
                Top = 3
                Width = 52
                Height = 16
                Caption = 'Tgl Input'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWhite
                Font.Height = -13
                Font.Name = 'Times New Roman'
                Font.Style = [fsBold, fsItalic]
                ParentFont = False
              end
              object DBText4: TDBText
                Left = 90
                Top = 3
                Width = 44
                Height = 16
                AutoSize = True
                DataField = 'TGL_INSERT'
                DataSource = dsQT
                Font.Charset = ANSI_CHARSET
                Font.Color = clYellow
                Font.Height = -13
                Font.Name = 'Arial Narrow'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object DBText5: TDBText
                Left = 90
                Top = 19
                Width = 44
                Height = 16
                AutoSize = True
                DataField = 'OPR_INSERT'
                DataSource = dsQT
                Font.Charset = ANSI_CHARSET
                Font.Color = clYellow
                Font.Height = -13
                Font.Name = 'Arial Narrow'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label14: TLabel
                Left = 3
                Top = 19
                Width = 50
                Height = 16
                Caption = 'Operator'
                Font.Charsunit BenangGrey;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Oracle, DB, Wwdatsrc, OracleData, wwdblook, Wwdbdlg, Grids,
  Wwdbigrd, Wwdbgrid, StdCtrls, Buttons, ComCtrls, ExtCtrls, wwDBNavigator, wwrcdvw;

type
  TBenangGreyFrm = class(TForm)
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
    QMasterKD_ITEM: TStringField;
    QMasterKD_JNS_ITEM: TStringField;
    QMasterKD_KEL: TStringField;
    QMasterKD_BENANG: TStringField;
    QMasterKD_SUPLIER: TStringField;
    QMasterNAMA_ITEM: TStringField;
    QMasterKD_SATUAN: TStringField;
    QMasterNAMA_REKANAN: TStringField;
    QMasterBENANG: TStringField;
    QMasterSAT1: TStringField;
    LookBenang: TwwDBLookupComboDlg;
    LookSuplier: TwwDBLookupComboDlg;
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
    procedure FormShow(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure wwDBGrid1DblClick(Sender: TObject);
    procedure QMasterNewRecord(DataSet: TDataSet);
    procedure wwDBGrid1CalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure LookBenangEnter(Sender: TObject);
    procedure LookSuplierEnter(Sender: TObject);
    procedure cbOtomatisClick(Sender: TObject);
    procedure ECariChange(Sender: TObject);
    procedure LTitleClick(Sender: TObject);
    procedure QMasterBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
    vfilter, vorder : String;
  public
    { Public declarations }
  end;

var
  BenangGreyFrm: TBenangGreyFrm;

implementation

uses DM, MainBrowse, Main, Menus;

{$R *.dfm}

procedure TBenangGreyFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
  BenangGreyFrm:=Nil;
end;

procedure TBenangGreyFrm.BtnSimpanClick(Sender: TObject);
begin
  case PageControl1.ActivePageIndex of
  0 : begin
        try
//          DMFrm.OS.ApplyUpdates([QMaster],True);
          QMaster.DisableControls;
          QMaster.Close;
          QMaster.Open;
          QMaster.EnableControls;
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
  end;
end;

procedure TBenangGreyFrm.QMasterAfterPost(DataSet: TDataSet);
begin
  BtnSimpan.Enabled:=True;
end;

procedure TBenangGreyFrm.BtnEditingClick(Sender: TObject);
begin
  wwDBGrid1.Options:=wwDBGrid1.Options-[dgRowSelect];
  wwDBGrid1.ReadOnly:=False;
  wwDBGrid1.SetFocus;
end;

procedure TBenangGreyFrm.BtnBrowseClick(Sender: TObject);
begin
  if BtnSimpan.Enabled then
    ShowMessage('Simpan/ Posting Data Dulu !')
    else
    begin
      wwDBGrid1.Options:=wwDBGrid1.Options+[dgRowSelect];
      wwDBGrid1.ReadOnly:=True;
      wwDBGrid1.SetFocus;
    end;
end;

procedure TBenangGreyFrm.BitBtn1Click(Sender: TObject);
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
                end
                else
                  vfilter:=vfilter+' or '+QMaster.Fields[i].FieldName+' like ''%'+ECari.Text+'%''';
            end;
          end;
          vorder:=' order by '+wwDBGrid1.Columns[0].FieldName;
        end;
        QMaster.SetVariable('myparam',vfilter+vorder);
        QMaster.DisableControls;
        QMaster.Close;
        QMaster.Open;
        QMaster.EnableControls;
    end;
end;

procedure TBenangGreyFrm.FormCreate(Sender: TObject);
begin
  DMFrm.QBenang.Close;
  DMFrm.QSuplierBenang.Close;
  wwDBGrid1.IniAttributes.SectionName:=Name+' '+wwDBGrid1.Name;
end;

procedure TBenangGreyFrm.wwDBGrid1TitleButtonClick(Sender: TObject;
  AFieldName: String);