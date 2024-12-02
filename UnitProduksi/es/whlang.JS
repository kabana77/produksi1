Type = dtNotKnown
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
  end
  object dsQTransaksi: TwwDataSource
    DataSet = QTransaksi
    Left = 384
    Top = 8
  end
  object QLokasi: TOracleDataSet
    SQL.Strings = (
      'select * from vlokasi1')
    QBEDefinition.QBEFieldDefs = {
      04000000020000000D0000004B445F5355425F4C4F4B4153490100000000000A
      0000004A4E535F4C4F4B415349010000000000}
    Session = DMFrm.OS
    BeforeOpen = QLokasiBeforeOpen
    Left = 672
    Top = 216
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
      'select * from ipisma_db3.vitemall')
    QBEDefinition.QBEFieldDefs = {
      040000000B000000070000004B445F4954454D010000000000090000004E414D
      415F4954454D010000000000090000004C4541445F54494D4501000000000008
      0000004D494E5F53544F4B0100000000000600000053415455414E0100000000
      000B0000004B445F4A4E535F4954454D010000000000090000004B445F534154
      55414E0100000000000700000049534649584544010000000000050000005241
      53494F010000000000070000004E4F5F504152540100000000000A0000004B44
      5F5355425F4B454C010000000000}
    ReadOnly = True
    QueryAllRecords = False
    BeforeQuery = QItemBeforeQuery
    Session = DMFrm.OS
    Left = 344
    Top = 136
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
      FieldName = 'RASIO'
      Visible = False
    end
    object QItemKD_SATUAN: TStringField
      FieldName = 'KD_SATUAN'
      Required = True
      Visible = False
      Size = 2
    end
  end
  object QHasilCelup: TOracleDataSet
    SQL.Strings = (
      'select a.* from ipisma_db3.bukti_detail2 a, ipisma_db3.bukti2 b '
      'where a.ibukti=b.ibukti and b.no_nota=:no_nota')
    Variables.Data = {
      0300000001000000080000003A4E4F5F4E4F5441050000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000001D000000060000004942554B54490100000000000D0000004942554B
      54495F44455441494C010000000000080000004E4F5F42554B54490100000000
      00070000004B445F4954454D0100000000000A0000004B45544552414E47414E
      0100000000000400000051545931010000000000040000005154593201000000
      0000040000005154593301000000000004000000515459340100000000000400
      0000515459350100000000000400000051545936010000000000040000005154
      5937010000000000040000005154593801000000000004000000515459390100
      000000000500000051545931300100000000000D0000004B445F5355425F4C4F
      4B4153490100000000000E0000004B445F5355425F4C4F4B4153493201000000
      00000A00000054474C5F494E534552540100000000000A0000004F50525F494E
      53455254010000000000090000004B445F53415455414E010000000000050000
      00524153494F010000000000060000004B445F44495601000000000008000000
      4E4F5F4D4553494E010000000000080000004B445F4954454D32010000000000
      040000004A414D31010000000000040000004A414D3201000000000006000000
      535441545553010000000000080000004B445F5741524E410100000000000800
      00004E4F5F4241544348010000000000}
    Session = DMFrm.OS
    BeforeOpen = QHasilCelupBeforeOpen
    Left = 440
    Top = 240
    object QHasilCelupKD_ITEM: TStringField
      FieldName = 'KD_ITEM'
      Size = 50
    end
    object QHasilCelupKETERANGAN: TStringField
      FieldName = 'KETERANGAN'
      Size = 255
    end
    object QHasilCelupRASIO: TFloatField
      FieldName = 'RASIO'
    end
    object QHasilCelupKD_WARNA: TStringField
      FieldName = 'KD_WARNA'
      Size = 6
    end
    object QHasilCelupNO_BATCH: TStringField
      FieldName = 'NO_BATCH'
      Size = 50
    end
    object QHasilCelupQTY2: TFloatField
      FieldName = 'QTY2'
    end
    object QHasilCelupQTY7: TFloatField
      FieldName = 'QTY7'
    end
    object QHasilCelupKD_SATUAN: TStringField
      FieldName = 'KD_SATUAN'
      Size = 2
    end
  end
end
                                                                                                                                                                                                                                                                                                                                                                                                                                                        ' +
        'pmtx01.kelompok_item c'
      
        '      where a.kd_jns_item=:kd_jns_item and a.kd_item=b.kd_item a' +
        'nd ((a.kd_jns_item=c.kd_jns_item) and (a.kd_kel=c.kd_kel)) and b' +
        '.tahun=:tahun and a.kd_satuan=d.kd_satuan) p'
      
        'left outer join (select v.kd_item, sum(v.qty_in-v.qty_out) as be' +
        'rjalan from pmtx02.stok_gd v where v.tanggal>=trunc(:tgl_awal) a' +
        'nd v.tanggal<=(trunc(:tgl_akhir)+1-1/86400) group by v.kd_item) ' +
        'q on (p.kd_item=q.kd_item)'
      ':myparam')
    Variables.Data = {
      03000000050000000C0000003A4B445F4A4E535F4954454D0500000002000000
      340000000000090000003A54474C5F4157414C0C00000007000000786C010101
      0101000000000A0000003A54474C5F414B4849520C00000007000000786C051E
      01010100000000060000003A544148554E0300000004000000D8070000000000
      00080000003A4D59504152414D01000000150000006F7264657220627920702E
      6E616D615F6974656D0000000000}
    QBEDefinition.QBEFieldDefs = {
      04000000070000000B0000004B445F4A4E535F4954454D010000000000070000
      004B445F4954454D010000000000090000004E414D415F4954454D0100000000
      000400000053415431010000000000080000004B454C4F4D504F4B0100000000
      000400000053544F4B010000000000070000004E4F5F50415254010000000000}
    Session = DMFrm.OS
    BeforeOpen = QLookItemBeforeOpen
    Left = 116
    Top = 113
    object QLookItemNAMA_ITEM: TStringField
      DisplayWidth = 40
      FieldName = 'NAMA_ITEM'
      Required = True
      Size = 80
    end
    object QLookItemKD_ITEM: TStringField
      DisplayLabel = 'KODE'
      DisplayWidth = 10
      FieldName = 'KD_ITEM'
      Required = True
      Size = 16
    end
    object QLookItemNO_PART: TStringField
      DisplayWidth = 12
      FieldName = 'NO_PART'
    end
    object QLookItemSAT1: TStringField
      DisplayLabel = 'SATUAN'
      DisplayWidth = 12
      FieldName = 'SAT1'
      Required = True
      Size = 12
    end
    object QLookItemKELOMPOK: TStringFie