 False
        OnCalcCellColors = wwDBGrid1CalcCellColors
        OnTitleButtonClick = wwDBGrid2TitleButtonClick
        OnDblClick = wwDBGrid1DblClick
        PaintOptions.AlternatingRowColor = clMoneyGreen
        PaintOptions.ActiveRecordColor = clGreen
      end
      object LookBeam: TwwDBLookupComboDlg
        Left = 168
        Top = 176
        Width = 121
        Height = 21
        GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
        GridColor = clWhite
        GridTitleAlignment = taLeftJustify
        Caption = 'Lookup'
        MaxWidth = 0
        MaxHeight = 209
        Selected.Strings = (
          'KD_BEAM'#9'6'#9'KODE'#9'F'
          'MERK'#9'12'#9'MERK'#9'F'
          'SPESIFIKASI'#9'16'#9'SPESIFIKASI'#9'F'
          'BERAT_KOSONG'#9'6'#9'BERAT'#9'F'
          'JML'#9'4'#9'JUMLAH'#9'F')
        DataField = 'KD_BEAM'
        DataSource = dsQMaster2
        LookupTable = QMaster
        LookupField = 'KD_BEAM'
        TabOrder = 2
        AutoDropDown = False
        ShowButton = True
        AllowClearKey = False
        UseTFields = False
      end
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 0
    Width = 511
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
      Width = 151
      Height = 23
      Cursor = crHandPoint
      Caption = 'DAFTAR BEAM'
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
      'select a.*, a.rowid, b.jml from pmtx01.beam a'
      
        'left outer join (select kd_beam, count(*) as jml from pmtx01.bea' +
        'm_list group by kd_beam) b on'
      '  (a.kd_beam=b.kd_beam)'
      ':myparam')
    ReadBuffer = 10
    Variables.Data = {
      0300000001000000080000003A4D59504152414D010000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      04000000050000000C00000042455241545F4B4F534F4E470100000000000700
      00004B445F4245414D010000000000040000004D45524B0100000000000B0000
      00535045534946494B415349010000000000030000004A4D4C010000000000}
    QueryAllRecords = False
    CountAllRecords = True
    CachedUpdates = True
    Session = DMFrm.OS
    AfterPost = QMasterAfterPost
    AfterDelete = QMasterAfterPost
    AfterScroll = QMasterAfterScroll
    Left = 60
    Top = 177
    object QMasterKD_BEAM: TStringField
      DisplayWidth = 6
      FieldName = 'KD_BEAM'
      Required = True
      Size = 6
    end
    object QMasterMERK: TStringField
      DisplayWidth = 50
      FieldName = 'MERK'
      Size = 50
    end
    object QMasterSPESIFIKASI: TStringField
      DisplayWidth = 255
      FieldName = 'SPESIFIKASI'
      Size = 255
    end
    object QMasterBERAT_KOSONG: TFloatField
    