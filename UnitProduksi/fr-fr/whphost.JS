'JAB3'
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
      'NO_NOTA'#9'16'#9'NO NOTA'#9'F'
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
    BeforeOpen = QTotalBeforeOpen
    Left = 609
    Top = 192
    object QTotalTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
  end
  object QBrowse: TOracleDataSet
    SQL.Strings = (
      'select * from ipisma_db4.vrekap_hasil_kombinasi'
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
      DisplayWidth = 10
      FieldName = 'NO_REG'
      Required = True
    end
    object QBrowseNO_NOTA: TStringField
      DisplayWidth = 20
      FieldName = 'NO_NOTA'
    end
    object QBrowseTGL: TDateTimeField
      DisplayWidth = 18
      FieldName = 'TGL'
      Required = True
      DisplayFormat = 'dd mmm yyyy'
    end
    object QBrowseCORAK: TStringField
      DisplayWidth = 30
      FieldName = 'CORAK'
      Size = 30
    end
    object QBrowseGRUP: TStringField
      DisplayWidth = 8
      FieldName = 'GRUP'
      Required = True
      Size = 8
    end
    object QBrowseJENIS: TStringField
      DisplayWidth = 10
      FieldName = 'JENIS'
      Size = 10
    end
    object QBrowseKODI: TFloatField
      DisplayWidth = 10
      FieldName = 'KODI'
      DisplayFormat = '#.#,#;(#.#,#); '
    end
    object QBrowseKONSTRUKSI: TStringField
      DisplayWidth = 30
      FieldName = 'KONSTRUKSI'
      Size = 30
    end
    object QBrowseMUTU: TStringField
      DisplayWidth = 30
      FieldName = 'MUTU'
      Size = 30
    end
    object QBrowsePCS: TFloatField
      DisplayWidth = 10
      FieldName = 'PCS'
      DisplayFormat = '#.#,#;(#.#,#); '
    end
    object QBrowseQTY: TFloatField
      DisplayWidth = 10
      FieldName = 'QTY'
      DisplayFormat = '#.#,#;(#.#,#); '
    end
    object QBrowseSATUAN: TStringField
      DisplayWidth = 10
      FieldName = 'SATUAN'
      Size = 10
    end
    object QBrowseSHIFT: TStringField
      DisplayWidth = 3
      FieldName = 'SHIFT'
      Required = True
      Size = 3
    end
    object QBrowseTGL_INSERT: TDateTimeField
      DisplayWidth = 18
      FieldName = 'TGL_INSERT'
      DisplayFormat = 'dd mmm yyyy hh:mm'
    end
    object QBrowseOPR_INSERT: TStringField
      DisplayWidth = 30
      FieldName = 'OPR_INSERT'
      Size = 30
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
        '_hasil_kombinasi'
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
      'from ipisma_db4.vrekap_hasil_kombinasi'
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
      'from ipisma_db4.vrekap_hasil_kombinasi'
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
    Left = 468
    Top = 209
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
end
                                                                                                                                                                                                                                                                                                              ataSet = DMFrm.QPerkiraanAll
      LookupKeyFields = 'KD_PERK'
      LookupResultField = 'ISDETAIL'
      KeyFields = 'KD_PERK'
      Size = 1
      Lookup = True
    end
    object QBrowseTAHUN: TIntegerField
      FieldName = 'TAHUN'
      Required = True
    end
    object QBrowseISTOTAL: TStringField
      FieldKind = fkLookup
      FieldName = 'ISTOTAL'
      LookupDataSet = DMFrm.QPerkiraanAll
      LookupKeyFields = 'KD_PERK'
      LookupResultField = 'ISTOTAL'
      KeyFields = 'KD_PERK'
      Size = 1
      Lookup = True
    end
  end
  object QInsert: TOracleQuery
    SQL.Strings = (
      'begin'
      '  insert into saldo_perkiraan '
      '    (tahun, kd_perk)'
      '    (select :tahun, kd_perk from perkiraan);'
      '  commit;'
      'end;')
    Session = DMFrm.OS
    Variables.Data = {0300000001000000060000003A544148554E030000000000000000000000}
    Left = 549
    Top = 139
  end
  object QtutupBulan: TOracleQuery
    SQL.Strings = (
      'begin'
      '  proc_tutup_bulan(:ptgl_tutup);'
      '  commit;'
      'end;')
    Session = DMFrm.OS
    Variables.Data = {
      03000000010000000B0000003A5054474C5F54555455500C0000000700000078
      6C0A1F01010100000000}
    Left = 765
    Top = 99
  end
  object QBrowse2: TOracleDataSet
    SQL.Strings = (
      'select a.tahun, '
      'a.kd_perk, :myparam, c.awal_hari, b.debet, b.kredit'
      'from saldo_perkiraan a'
      
        'left outer join (select p.kd_perk, sum(p.kurs*(p.debet-p.kredit)'[FileVersion]
Version=7.0
[Compiler]
A=8
B=0
C=1
D=1
E=0
F=0
G=1
H=1
I=1
J=0
K=0
L=1
M=0
N=1
O=1
P=1
Q=0
R=0
S=0
T=0
U=0
V=1
W=0
X=1
Y=1
Z=1
ShowHints=1
ShowWarnings=1
UnitAliases=WinTypes=Windows;WinProcs=Windows;DbiTypes=BDE;DbiProcs=BDE;DbiErrs=BDE;
NamespacePrefix=
SymbolDeprecated=1
SymbolLibrary=1
SymbolPlatform=1
UnitLibrary=1