* from ipisma_db1.transaksi'
      'where kd_transaksi=:kd_transaksi')
    Variables.Data = {
      03000000010000000D0000003A4B445F5452414E53414B534905000000040000
      003939300000000000}
    QBEDefinition.QBEFieldDefs = {
      04000000140000000E0000004E414D415F5452414E53414B5349010000000000
      0C0000004B445F5452414E53414B534901000000000006000000505245464958
      01000000000005000000504C494E450100000000000700000050484541444552
      010000000000060000004B445F44495601000000000004000000545444310100
      0000000004000000545444320100000000000400000054544433010000000000
      0400000054544434010000000000040000004449563101000000000004000000
      4449563201000000000004000000444956330100000000000400000044495634
      010000000000040000004A414231010000000000040000004A41423201000000
      0000040000004A414233010000000000040000004A4142340100000000000A00
      0000444953545249425553490100000000000800000053494E4F505349530000
      00000000}
    Session = DMFrm.OS
    Left = 10
    Top = 89
    object QTransaksiNAMA_TRANSAKSI: TStringField
      FieldName = 'NAMA_TRANSAKSI'
      Size = 50
    end
    object QTransaksiKD_TRANSAKSI: TStringField
      FieldName = 'KD_TRANSAKSI'
      Required = True
      Size = 3
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
    object QTransaksiDISTRIBUSI: TStringField
      FieldName = 'DISTRIBUSI'
      Size = 80
    end
  end
  object dsQTransaksi: TwwDataSource
    DataSet = QTransaksi
    Left = 40
    Top = 88
  end
  object FNo_Urut: TOracleDataSet
    SQL.Strings = (
      'select ipisma_db4.fno_urut_jk(:pkode,:ptgl) as no_nota from dual')
    Variables.Data = {
      0300000002000000060000003A504B4F44450500000004000000393931000000
      0000050000003A5054474C0C00000007000000786C020101010100000000}
    QBEDefinition.QBEFieldDefs = {0400000001000000070000004E4F5F4E4F5441010000000000}
    BeforeQuery = FNo_UrutBeforeQuery
    Session = DMFrm.OS
    Left = 8
    Top = 48
    object FNo_UrutNO_NOTA: TStringField
      FieldName = 'NO_NOTA'
      Size = 4000
    end
  end
  object LookMaster: TwwLookupDialog
    Selected.Strings = (
      'NO_NOTA'#9'12'#9'NO NOTA'#9'F'
      'TGL'#9'12'#9'TGL'#9#9
      'STATUS'#9'10'#9'STATUS'#9#9
      'ISPOST'#9'1'#9'POST'#9#9
      'GRUP'#9'3'#9'GRUP'#9'F'
      'SHIFT'#9'3'#9'SHIFT'#9'F')
    GridTitleAlignment = taLeftJustify
    GridColor = clWhite
    GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
    LookupTable = QMaster
    Caption = 'Lookup'
    MaxWidth = 0
    MaxHeight = 209
    CharCase = ecNormal
    Left = 49
    Top = 24
  end
  object QTotal: TOracleDataSet
    SQL.Strings = (
      'select sum(qty) as total from ipisma_db4.bukti2_detail a'
      'where a.no_reg = :no_reg')
    Variables.Data = {0300000001000000070000003A4E4F5F524547030000000000000000000000}
    QBEDefinition.QBEFieldDefs = {040000000100000005000000544F54414C010000000000}
    Session = DMFrm.OS
    Left = 577
    Top = 224
    object QTotalTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
  end
  object QBrowse: TOracleDataSet
    SQL.Strings = (
      'select * from ipisma_db4.vrekap_hasil_lipat'
      ':myparam')
    Variables.Data = {
      0300000001000000080000003A4D59504152414D01000000110000006F726465
      72206279204E4F5F4E4F54410000000000}
    QBEDefinition.QBEFieldDefs = {
      040000000F000000070000004E4F5F4E4F54410100000000000A00000054474C
      5F494E534552540100000000000A0000004F50525F494E534552540100000000
      00060000004E4F5F5245470100000000000300000054474C0100000000000400
      0000475255500100000000000500000053484946540100000000000A0000004B
      4F4E535452554B534901000000000005000000434F52414B0100000000000400
      00004D5554550100000000000300000051545901000000000006000000534154
      55414E010000000000050000004A454E49530100000000000300000050435301
      0000000000040000004B4F4449010000000000}
    QueryAllRecords = False
    CountAllRecords = True
    Session = DMFrm.OS
    Left = 340
    Top = 105
    object QBrowseNO_REG: TFloatField
      FieldName = 'NO_REG'
      Required = True
    end
    object QBrowseTGL: TDateTimeField
      FieldName = 'TGL'
      Required = True
      DisplayFormat = 'dd mmm yyyy'
    end
    object QBrowseNO_NOTA: TStringField
      FieldName = 'NO_NOTA'
    end
    object QBrowseGRUP: TStringField
      FieldName = 'GRUP'
      Required = True
      Size = 8
    end
    object QBrowseSHIFT: TStringField
      FieldName = 'SHIFT'
      Required = True
      Size = 3
    end
    object QBrowseKONSTRUKSI: TStringField
      FieldName = 'KONSTRUKSI'
      Size = 30
    end
    object QBrowseCORAK: TStringField
      FieldName = 'CORAK'
      Size = 30
    end
    object QBrowseMUTU: TStringField
      FieldName = 'MUTU'
      Size = 30
    end
    object QBrowseQTY: TFloatField
      FieldName = 'QTY'
      DisplayFormat = '#.#,#;(#.#,#); '
    end
    object QBrowseSATUAN: TStringField
      FieldName = 'SATUAN'
      Size = 10
    end
    object QBrowseJENIS: TStringField
      FieldName = 'JENIS'
      Size = 10
    end
    object QBrowseTGL_INSERT: TDateTimeField
      FieldName = 'TGL_INSERT'
      DisplayFormat = 'dd mmm yyyy hh:mm'
    end
    object QBrowseOPR_INSERT: TStringField
      FieldName = 'OPR_INSERT'
      Size = 30
    end
    object QBrowseKODI: TFloatField
      FieldName = 'KODI'
      DisplayFormat = '#.#,#;(#.#,#); '
    end
    object QBrowsePCS: TFloatField
      FieldName = 'PCS'
      DisplayFormat = '#.#,#;(#.#,#); '
    end
  end
  object dsQBrowse: TwwDataSource
    DataSet = QBrowse
    Left = 389
    Top = 104
  end
  object QBrowseTotal: TOracleDataSet
    SQL.Strings = (
      
        'select sum(kodi) as kodi, sum(pcs) as pcs from ipisma_db4.vrekap' +
        '_hasil_lipat'
      ':myparam')
    Variables.Data = {
      0300000001000000080000003A4D59504152414D01000000110000006F726465
      72206279204E4F5F4E4F54410000000000}
    QBEDefinition.QBEFieldDefs = {
      040000000200000003000000504353010000000000040000004B4F4449010000
      000000}
    QueryAllRecords = False
    CountAllRecords = True
    Session = DMFrm.OS
    Left = 388
    Top = 217
    object QBrowseTotalKODI: TFloatField
      FieldName = 'KODI'
    end
    object QBrowseTotalPCS: TFloatField
      FieldName = 'PCS'
    end
  end
  object QBrowse2: TOracleDataSet
    SQL.Strings = (
      'select konstruksi, corak, '
      'sum(kodi_bk) as kodi_bk,'
      'sum(pcs_bk) as pcs_bk,'
      'sum(kodi_bs) as kodi_bs,'
      'sum(pcs_bs) as pcs_bs,'
      'sum(kodi_bs_parah) as kodi_bs_parah,'
      'sum(pcs_bs_parah) as pcs_bs_parah'
      'from (select konstruksi, corak, '
      'decode(mutu,'#39'BK'#39', sum(nvl(kodi,0)),0) as kodi_bk, '
      'decode(mutu,'#39'BK'#39', sum(nvl(pcs,0)),0) as pcs_bk,'
      'decode(mutu,'#39'BS'#39', sum(nvl(kodi,0)),0) as kodi_bs,'
      'decode(mutu,'#39'BS'#39', sum(nvl(pcs,0)),0) as pcs_bs,'
      'decode(mutu,'#39'BS PARAH'#39', sum(nvl(kodi,0)),0) as kodi_bs_parah,'
      'decode(mutu,'#39'BS PARAH'#39', sum(nvl(pcs,0)),0) as pcs_bs_parah'
      'from ipisma_db4.vrekap_hasil_lipat'
      'where tgl>=:pawal and tgl<=trunc(:pakhir)+1-1/86400'
      'group by konstruksi, corak, mutu)'
      'group by konstruksi, corak'
      'order by konstruksi, corak')
    Variables.Data = {
      0300000002000000060000003A504157414C0C00000000000000000000000700
      00003A50414B4849520C0000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      04000000080000000A0000004B4F4E535452554B534901000000000005000000
      434F52414B010000000000070000004B4F44495F424B01000000000006000000
      5043535F424B010000000000070000004B4F44495F4253010000000000060000
      005043535F42530100000000000D0000004B4F44495F42535F50415241480100
      000000000C0000005043535F42535F5041524148010000000000}
    QueryAllRecords = False
    CountAllRecords = True
    Session = DMFrm.OS
    Left = 468
    Top = 153
    object QBrowse2KONSTRUKSI: TStringField
      FieldName = 'KONSTRUKSI'
      Size = 30
    end
    object QBrowse2CORAK: TStringField
      FieldName = 'CORAK'
      Size = 30
    end
    object QBrowse2KODI_BK: TFloatField
      FieldName = 'KODI_BK'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QBrowse2PCS_BK: TFloatField
      FieldName = 'PCS_BK'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QBrowse2KODI_BS: TFloatField
      FieldName = 'KODI_BS'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QBrowse2PCS_BS: TFloatField
      FieldName = 'PCS_BS'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QBrowse2KODI_BS_PARAH: TFloatField
      FieldName = 'KODI_BS_PARAH'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QBrowse2PCS_BS_PARAH: TFloatField
      FieldName = 'PCS_BS_PARAH'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
  end
  object dsQBrowse2: TwwDataSource
    DataSet = QBrowse2
    Left = 517
    Top = 152
  end
  object QTotal2: TOracleDataSet
    SQL.Strings = (
      'select sum(kodi_bk) as kodi_bk,'
      'sum(pcs_bk) as pcs_bk,'
      'sum(kodi_bs) as kodi_bs,'
      'sum(pcs_bs) as pcs_bs,'
      'sum(kodi_bs_parah) as kodi_bs_parah,'
      'sum(pcs_bs_parah) as pcs_bs_parah'
      'from (select konstruksi, corak, '
      'decode(mutu,'#39'BK'#39', sum(nvl(kodi,0)),0) as kodi_bk, '
      'decode(mutu,'#39'BK'#39', sum(nvl(pcs,0)),0) as pcs_bk,'
      'decode(mutu,'#39'BS'#39', sum(nvl(kodi,0)),0) as kodi_bs,'
      'decode(mutu,'#39'BS'#39', sum(nvl(pcs,0)),0) as pcs_bs,'
      'decode(mutu,'#39'BS PARAH'#39', sum(nvl(kodi,0)),0) as kodi_bs_parah,'
      'decode(mutu,'#39'BS PARAH'#39', sum(nvl(pcs,0)),0) as pcs_bs_parah'
      'from ipisma_db4.vrekap_hasil_lipat'
      'where tgl>=:pawal and tgl<=trunc(:pakhir)+1-1/86400'
      'group by konstruksi, corak, mutu)')
    Variables.Data = {
      0300000002000000060000003A504157414C0C00000000000000000000000700
      00003A50414B4849520C0000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      0400000006000000070000004B4F44495F424B01000000000006000000504353
      5F424B010000000000070000004B4F44495F4253010000000000060000005043
      535F42530100000000000D0000004B4F44495F42535F50415241480100000000
      000C0000005043535F42535F5041524148010000000000}
    QueryAllRecords = False
    CountAllRecords = True
    Session = DMFrm.OS
    Left = 460
    Top = 265
    object QTotal2KODI_BK: TFloatField
      FieldName = 'KODI_BK'
    end
    object QTotal2PCS_BK: TFloatField
      FieldName = 'PCS_BK'
    end
    object QTotal2KODI_BS: TFloatField
      FieldName = 'KODI_BS'
    end
    object QTotal2PCS_BS: TFloatField
      FieldName = 'PCS_BS'
    end
    object QTotal2KODI_BS_PARAH: TFloatField
      FieldName = 'KODI_BS_PARAH'
    end
    object QTotal2PCS_BS_PARAH: TFloatField
      FieldName = 'PCS_BS_PARAH'
    end
  end
  object QKontrak: TOracleDataSet
    SQL.Strings = (
      
        'select a.rekanan, a.kd_rekanan, a.no_nota, a.no_kontrak, a.no_bu' +
        'kti, a.tgl, a.status'
      'from ipisma_db4.bukti2_order a'
      'where a.kd_transaksi='#39'988'#39' and a.status='#39'OPEN'#39
      'order by a.rekanan')
    QBEDefinition.QBEFieldDefs = {
      04000000070000000700000052454B414E414E0100000