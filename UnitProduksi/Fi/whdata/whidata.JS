* from pmtx01.vlokasi'
      'where kd_jns_item=:kd_jns_item')
    Variables.Data = {
      03000000010000000C0000003A4B445F4A4E535F4954454D0500000002000000
      310000000000}
    QBEDefinition.QBEFieldDefs = {
      04000000040000000B0000004B445F4A4E535F4954454D0100000000000D0000
      004B445F5355425F4C4F4B415349010000000000090000004B445F4C4F4B4153
      490100000000000A0000005355425F4C4F4B415349010000000000}
    Session = DMFrm.OS
    BeforeOpen = QLookLokasiBeforeOpen
    Left = 780
    Top = 233
    object QLookLokasiSUB_LOKASI: TStringField
      DisplayLabel = 'LOKASI'
      DisplayWidth = 30
      FieldName = 'SUB_LOKASI'
      Required = True
      Size = 50
    end
    object QLookLokasiKD_JNS_ITEM: TStringField
      DisplayWidth = 1
      FieldName = 'KD_JNS_ITEM'
      Visible = False
      Size = 1
    end
    object QLookLokasiKD_SUB_LOKASI: TStringField
      DisplayWidth = 6
      FieldName = 'KD_SUB_LOKASI'
      Required = True
      Visible = False
      Size = 6
    end
    object QLookLokasiKD_LOKASI: TStringField
      DisplayWidth = 2
      FieldName = 'KD_LOKASI'
      Required = True
      Visible = False
      Size = 2
    end
  end
  object QBrowse: TOracleDataSet
    SQL.Strings = (
      'select * from pmtx02.vtagihan_org'
      ':myparam')
    Variables.Data = {
      0300000001000000080000003A4D59504152414D01000000110000006F726465
      72206279204E4F5F4E4F54410000000000}
    QBEDefinition.QBEFieldDefs = {
      040000000D0000000700000054414E4747414C0100000000000A0000004B445F
      52454B414E414E0100000000000700000052454B414E414E0100000000000A00
      00004E4F5F5245475F4C5042010000000000070000004E4F5F4E4F5441010000
      0000000E0000004E4