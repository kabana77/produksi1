X02.NO_REG_PP'
    QBEDefinition.QBEFieldDefs = {
      040000000D0000000700000054414E4747414C010000000000070000004E4F5F
      4E4F54410100000000000A0000004B45544552414E47414E0100000000000600
      00004953504F5354010000000000060000005354415455530100000000000A00
      000054474C5F494E534552540100000000000A0000004F50525F494E53455254
      0100000000000400000054544431010000000000040000005454443201000000
      0000040000005454443301000000000004000000545444340100000000000C00
      00004B445F5452414E53414B5349010000000000090000004E4F5F5245475F50
      50010000000000}
    QueryAllRecords = False
    CountAllRecords = True
    RefreshOptions = [roAfterInsert, roAfterUpdate]
    Session = DMFrm.OS
    AfterDelete = QTransaksiAfterDelete
    Left = 324
    Top = 120
    object QTransaksiNO_REG_PP: TIntegerField
      FieldName = 'NO_REG_PP'
      DisplayFormat = '00000000'
    end
    object QTransaksiKD_TRANSAKSI: TStringField
      FieldName = 'KD_TRANSAKSI'
      Size = 3
    end
    object QTransaksiTANGGAL: TDateTimeField
      FieldName = 'TANGGAL'
      Required = True
    end
    object QTransaksiNO_NOTA: TStringField
      FieldName = 'NO_NOTA'
      Size = 15
    end
    object QTransaksiKETERANGAN: TStringField
      FieldName = 'KETERANGAN'
      Size = 255
    end
    object QTransaksiISPOST: TStringField
      FieldName = 'ISPOST'
      Size = 1
    end
    object QTransaksiSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 6
    end
    object QTransaksiTGL_INSERT: TDateTimeField
      FieldName = 'TGL_INSERT'
    end
    object QTransaksiOPR_INSERT: TStringField
      FieldName = 'OPR_INSERT'
      Size = 30
    end
    object QTransaksiTTD1: TStringField
      FieldName = 'TTD1'
      Size = 50
    end
    object QTransaksiTTD2: TStringField
      FieldName = 'TTD2'
      Size = 50
    end
    object QTransaksiTTD3: TStringField
      FieldName = 'TTD3'
      Size = 50
    end
    object QTransaksiTTD4: TStringField
      FieldName = 'TTD4'
      Size = 50
    end
  end
  object dsQTransaksi: TwwDataSource
    DataSet = QTransaksi
    Left = 404
    Top = 105
  end
  object QDetail: TOracleDataSet
    SQL.Strings = (
      'select a.*, a.rowid from pmtx02.pp_detail a'
      'where no_reg_pp = :no_reg_pp'
      'order by a.tgl_insert')
    ReadBuffer = 10
    Variables.Data = {
      03000000010000000A0000003A4E4F5F5245475F505003000000040000000C00
      000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000001B000000070000004B445F4954454D010000000000100000004E4F5F
      5245475F4B454255545548414E010000000000060000005154595F504F010000
      000000060000005154595F505001000000000003000000515459010000000000
      060000005354415455530100000000000A0000004F50525F494E534552540100
      000000000A00000054474C5F494E534552540100000000000A0000004B445F52
      454B414E414E010000000000090000004E4F5F5245475F505001000000000002
      0000004D55010000000000050000004841524741010000000000090000005355
      425F544F54414C01000000000003000000445050010000000000030000005050
      4E01000000000005000000544F54414C01000000000007000000495350494C49
      48010000000000090000004E4F5F5245475F504F010000000000060000005447
      4C5F504F0100000000000A00000054474C5F5550444154450100000000000A00
      00004F50525F5550444154450100000000000A0000004B45544552414E47414E
      0100000000000D0000005154595F4B454255545548414E010000000000100000
      004E4F5F5245475F43454B5F484152474101000000000005000000524153494F
      0100000000000900000053415455414E5F504F01000000000004000000444953
      43010000000000}
    Master = QTransaksi
    MasterFields = 'NO_REG_PP'
    DetailFields = 'NO_REG_PP'
    QueryAllRecords = False
    CountAllRecords = True
    RefreshOptions = [roAfterInsert, roAfterUpdate]
    Session = DMFrm.OS
    BeforeInsert = QDetailBeforeInsert
    Left = 384
    Top = 105
    object QDetailKD_ITEM: TStringField
      FieldName = 'KD_ITEM'
      Required = True
      Size = 16
    end
    object QDetailSATUAN: TStringField
      FieldKind = fkLookup
      FieldName = 'SATUAN'
      LookupDataSet = DMFrm.QItemNonBJ
      LookupKeyFields = 'KD_ITEM'
      LookupResultField = 'SAT1'
      KeyFields = 'KD_ITEM'
      Lookup = True
    end
    object QDetailQTY_PO: TFloatField
      FieldName = 'QTY_PO'
      Required = True
      DisplayFormat = '#,##0.##;(#,##0.##)'
    end
    object QDetailQTY_PP: TFloatField
      FieldName = 'QTY_PP'
      DisplayFormat = '#,##0.##;(#,##0.##)'
    end
    object QDetailQTY: TFloatField
      FieldName = 'QTY'
      Required = True
      DisplayFormat = '#,##0.##;(#,##0.##)'
    end
    object QDetailOPR_INSERT: TStringField
      FieldName = 'OPR_INSERT'
      Size = 30
    end
    object QDetailTGL_INSERT: TDateTimeField
      FieldName = 'TGL_INSERT'
    end
    object QDetailKD_REKANAN: TStringField
      FieldName = 'KD_REKANAN'
      Required = True
      Size = 5
    end
    object QDetailNO_REG_KEBUTUHAN: TIntegerField
      FieldName = 'NO_REG_KEBUTUHAN'
      Required = True
    end
    object QDetailNO_REG_PP: TIntegerField
      FieldName = 'NO_REG_PP'
      Required = True
    end
    object QDetailMU: TStringField
      FieldName = 'MU'
      Required = True
      Size = 3
    end
    object QDetailHARGA: TFloatField
      FieldName = 'HARGA'
      Required = True
      DisplayFormat = '#,##0.##;(#,##0.##)'
    end
    object QDetailISPILIH: TStringField
      FieldName = 'ISPILIH'
      Required = True
      Size = 1
    end
    object QDetailTGL_PO: TDateTimeField
      FieldName = 'TGL_PO'
      Required = True
      DisplayFormat = 'dd mmm yyyy'
    end
    object QDetailKETERANGAN: TStringField
      FieldName = 'KETERANGAN'
      Size = 255
    end
    object QDetailNAMA_SUPLIER: TStringField
      FieldKind = fkLookup
      FieldName = 'NAMA_SUPLIER'
      LookupDataSet = DMFrm.QSuplier
      LookupKeyFields = 'KD_REKANAN'
      LookupResultField = 'NAMA_REKANAN'
      KeyFields = 'KD_REKANAN'
      Size = 50
      Lookup = True
    end
    object QDetailQTY_KEBUTUHAN: TFloatField
      FieldName = 'QTY_KEBUTUHAN'
      DisplayFormat = '#,##0.##;(#,##0.##)'
    end
    object QDetailNO_REG_CEK_HARGA: TIntegerField
      FieldName = 'NO_REG_CEK_HARGA'
    end
    object QDetailRASIO: TFloatField
      FieldName = 'RASIO'
    end
    object QDetailSATUAN_PO: TStringField
      FieldName = 'SATUAN_PO'
      Size = 12
    end
    object QDetailSUB_TOTAL: TFloatField
      FieldName = 'SUB_TOTAL'
      DisplayFormat = '#,##0.##;(#,##0.##)'
    end
    object QDetailDISC: TFloatField
      FieldName = 'DISC'
    end
  end
  object dsQDetail: TwwDataSource
    DataSet = QDetail
    Left = 412
    Top = 105
  end
  object QLookItem: TOracleDataSet
    SQL.Strings = (
      'select * from pmtx02.vrealisasi_kebutuhan'
      'where kd_transaksi=:kd_jns_kebutuhan and'
      'no_nota like :no_nota'
      'order by nama_item, no_nota')
    Variables.Data = {
      0300000002000000110000003A4B445F4A4E535F4B454255545548414E050000
      00040000003130320000000000080000003A4E4F5F4E4F544105000000020000
      00250000000000}
    QBEDefinition.QBEFieldDefs = {
      0400000009000000070000004B445F4954454D010000000000090000004E414D
      415F4954454D0100000000000400000053415431010000000000100000004E4F
      5F5245475F4B454255545548414E010000000000070000004E4F5F4E4F544101
      00000000000D00000054474C5F4B454255545548414E0100000000000C000000
      4B445F5452414E53414B53490100000000000D0000005154595F4B4542555455
      48414E010000000000060000005154595F5050010000000000}
    Session = DMFrm.OS
    BeforeOpen = QLookItemBeforeOpen
    Left = 116
    Top = 113
    object QLookItemNAMA_ITEM: TStringField
      DisplayWidth = 35
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
    object QLookItemSAT1: TStringField
      DisplayLabel = 'SATUAN'
      DisplayWidth = 12
      FieldName = 'SAT1'
      Required = True
      Size = 12
    end
    object QLookItemNO_NOTA: TStringField
      DisplayWidth = 15
      FieldName = 'NO_NOTA'
      Size = 15
    end
    object QLookItemTGL_KEBUTUHAN: TDateTimeField
      DisplayLabel = 'TGL KEBUTUHAN'
      DisplayWidth = 12
      FieldName = 'TGL_KEBUTUHAN'
    end
    object QLookItemQTY_KEBUTUHAN: TFloatField
      DisplayLabel = 'KEBUTUHAN'
      DisplayWidth = 5
      FieldName = 'QTY_KEBUTUHAN'
      DisplayFormat = '#,##0.##;(#,##0.##)'
    end
    object QLookItemQTY_PP: TFloatField
      DisplayLabel = 'REALISASI'
      DisplayWidth = 5
      FieldName = 'QTY_PP'
      DisplayFormat = '#,##0.##;(#,##0.##)'
    end
    object QLookItemNO_REG_KEBUTUHAN: TIntegerField
      FieldName = 'NO_REG_KEBUTUHAN'
      Required = True
      Visible = False
    end
  end
  object QBrowse: TOracleDataSet
    SQL.Strings = (
      
        'select * from (select DISTINCT bagian, sub_bagian, kd_item, nama' +
        '_item, sat1, sum(qty) as qty_kebutuhan, sum(qty_validasi) as qty' +
        '_pp from pmtx02.vbon_barang_nbb3 '
      
        'where kd_jns_item=:vjns and tanggal>=trunc(:pawal) and tanggal<t' +
        'runc(:pakhir)+1-1/86400 group by bagian, sub_bagian, kd_item, na' +
        'ma_item, sat1) :myparam'
      '')
    Variables.Data = {
      0300000004000000080000003A4D59504152414D010000000000000000000000
      060000003A504157414C0C0000000000000000000000070000003A50414B4849
      520C0000000000000000000000050000003A564A4E5305000000000000000000
      0000}
    QBEDefinition.QBEFieldDefs = {
      0400000007000000070000004B445F4954454D010000000000090000004E414D
      415F4954454D01000000000004000000534154310100000000000D0000005154
      595F4B454255545548414E010000000000060000005154595F50500100000000
      000600000042414749414E0100000000000A0000005355425F42414749414E01
      0000000000}
    Session = DMFrm.OS
    Active = True
    BeforeOpen = QBrowseBeforeOpen
    OnCalcFields = QBrowseCalcFields
    Left = 516
    Top = 257
    object QBrowseKD_ITEM: TStringField
      FieldName = 'KD_ITEM'
      Required = True
      Size = 16
    end
    object QBrowseNAMA_ITEM: TStringField
      FieldName = 'NAMA_ITEM'
      Required = True
      Size = 80
    end
    object QBrowseSAT1: TStringField
      FieldName = 'SAT1'
      Required = True
      Size = 12
    end
    object QBrowseQTY_KEBUTUHAN: TFloatField
      FieldName = 'QTY_KEBUTUHAN'
      DisplayFormat = '#,##0.##;(#,##0.##)'
    end
    object QBrowseQTY_PP: TFloatField
      FieldName = 'QTY_PP'
      DisplayFormat = '#,##0.##;(#,##0.##)'
    end
    object QBrowseHARGA: TFloatField
      FieldKind = fkLookup
      FieldName = 'HARGA'
      LookupDataSet = QLookNilai
      LookupKeyFields = 'KD_ITEM'
      LookupResultField = 'HARGA'
      KeyFields = 'KD_ITEM'
      DisplayFormat = '#,#;(#,#)'
      Lookup = True
    end
    object QBrowseSUB_TOTAL: TFloatField
      FieldKind = fkCalculated
      FieldName = 'SUB_TOTAL'
      DisplayFormat = '#,#;(#,#)'
      Calculated = True
    end
    object QBrowseBAGIAN: TStringField
      FieldName = 'BAGIAN'
      Required = True
      Size = 50
    end
    object QBrowseSUB_BAGIAN: TStringField
      FieldName = 'SUB_BAGIAN'
      Required = True
      Size = 50
    end
  end
  object dsQBrowse: TwwDataSource
    DataSet = QBrowse
    Left = 460
    Top = 329
  end
  object QSuplier: TOracleDataSet
    SQL.Strings = (
      
        'select no_reg_cek_harga, sat1, kd_rekanan, nama_rekanan, contact' +
        ', tanggal_cek, harga, mu, sat2, rasio from pmtx02.vcek_harga_res' +
        'ume'
      'where kd_item=:kd_item and ispost='#39'1'#39
      'order by tanggal_cek desc')
    Variables.Data = {
      0300000001000000080000003A4B445F4954454D050000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000000A0000000400000053415431010000000000100000004E4F5F524547
      5F43454B5F48415247410100000000000A0000004B445F52454B414E414E0100
      000000000C0000004E414D415F52454B414E414E01000000000007000000434F
      4E544143540100000000000B00000054414E4747414C5F43454B010000000000
      050000004841524741010000000000020000004D550100000000000500000052
      4153494F0100000000000400000053415432010000000000}
    QueryAllRecords = False
    CountAllRecords = True
    Session = DMFrm.OS
    BeforeOpen = QBrowseBeforeOpen
    Left = 516
    Top = 297
    object QSuplierNAMA_REKANAN: TStringField
      DisplayWidth = 35
      FieldName = 'NAMA_REKANAN'
      Required = True
      Size = 50
    end
    object QSuplierKD_REKANAN: TStringField
      DisplayLabel = 'KODE'
      DisplayWidth = 5
      FieldName = 'KD_REKANAN'
      Size = 5
    end
    object QSuplierCONTACT: TStringField
      DisplayWidth = 20
      FieldName = 'CONTACT'
      Size = 30
    end
    object QSuplierTANGGAL_CEK: TDateTimeField
      DisplayWidth = 12
      FieldName = 'TANGGAL_CEK'
    end
    object QSuplierHARGA: TFloatField
      DisplayWidth = 12
      FieldName = 'HARGA'
    end
    object QSuplierMU: TStringField
      DisplayWidth = 3
      FieldName = 'MU'
      Size = 3
    end
    object QSuplierSAT2: TStringField
      DisplayLabel = 'SATUAN'
      DisplayWidth = 12
      FieldName = 'SAT2'
      Required = True
      Size = 12
    end
    object QSuplierNO_REG_CEK_HARGA: TIntegerField
      FieldName = 'NO_REG_CEK_HARGA'
      Required = True
      Visible = False
    end
    object QSuplierSAT1: TStringField
      FieldName = 'SAT1'
      Required = True
      Visible = False
      Size = 12
    end
    object QSuplierRASIO: TFloatField
      FieldName = 'RASIO'
      Visible = False
    end
  end
  object QLookNilai: TOracleDataSet
    SQL.Strings = (
      'select kd_item, :bxx from pmtx01.item_saldo'
      'where tahun=:ptahun'
      'order by kd_item')
    Variables.Data = {
      0300000002000000040000003A42585801000000200000004E31322F6465636F
      6465284231322C302C312C423132296173206861726761000000000007000000
      3A50544148554E0300000004000000D807000000000000}
    QBEDefinition.QBEFieldDefs = {
      0400000002000000070000004B445F4954454D01000000000005000000484152
      4741010000000000}
    Session = DMFrm.OS
    Active = True
    Left = 461
    Top = 75
    object QLookNilaiKD_ITEM: TStringField
      FieldName = 'KD_ITEM'
      Required = True
      Size = 16
    end
    object QLookNilaiHARGA: TFloatField
      FieldName = 'HARGA'
    end
  end
  object DSQJns_Item: TwwDataSource
    DataSet = DMFrm.QJns_Item
    Left = 624
    Top = 48
  end
  object Qbrowse2: TOracleDataSet
    SQL.Strings = (
      
        'select * from (select bagian, sub_bagian, mesin, kd_item, nama_i' +
        'tem, sat1,bon, sum(qty) as qty_kebutuhan, sum(qty_validasi) as q' +
        'ty_pp from pmtx02.vbon_barang_nbb3 '
      
        'where kd_jns_item=:vjns and tanggal>=trunc(:pawal) and tanggal<t' +
        'runc(:pakhir)+1-1/86400 group by bagian, sub_bagian, mesin,kd_it' +
        'em, nama_item, sat1,bon) :myparam'
      '')
    Variables.Data = {
      0300000004000000080000003A4D59504152414D010000000000000000000000
      060000003A504157414C0C0000000000000000000000070000003A50414B4849
      520C0000000000000000000000050000003A564A4E5305000000000000000000
      0000}
    QBEDefinition.QBEFieldDefs = {
      0400000009000000070000004B445F4954454D010000000000090000004E414D
      415F4954454D01000000000004000000534154310100000000000D0000005154
      595F4B454255545548414E010000000000060000005154595F50500100000000
      00050000004D4553494E0100000000000600000042414749414E010000000000
      0A0000005355425F42414749414E010000000000070000004E4F5F5245464601
      0000000000}
    Session = DMFrm.OS
    BeforeOpen = QBrowseBeforeOpen
    OnCalcFields = QBrowseCalcFields
    Left = 532
    Top = 169
    object StringField1: TStringField
      FieldName = 'KD_ITEM'
      Required = True
      Size = 16
    end
    object StringField2: TStringField
      FieldName = 'NAMA_ITEM'
      Required = True
      Size = 80
    end
    object StringField3: TStringField
      FieldName = 'SAT1'
      Required = True
      Size = 12
    end
    object FloatField1: TFloatField
      FieldName = 'QTY_KEBUTUHAN'
      DisplayFormat = '#,##0.##;(#,##0.##)'
    end
    object FloatField2: TFloatField
      FieldName = 'QTY_PP'
      DisplayFormat = '#,##0.##;(#,##0.##)'
    end
    object StringField4: TStringField
      FieldName = 'MESIN'
      Required = True
      Size = 50
    end
    object FloatField3: TFloatField
      FieldKind = fkLookup
      FieldName = 'HARGA'
      LookupDataSet = QLookNilai
      LookupKeyFields = 'KD_ITEM'
      LookupResultField = 'HARGA'
      KeyFields = 'KD_ITEM'
      DisplayFormat = '#,#;(#,#)'
      Lookup = True
    end
    object FloatField4: TFloatField
      FieldKind = fkCalculated
      FieldName = 'SUB_TOTAL'
      DisplayFormat = '#,#;(#,#)'
      Calculated = True
    end
    object StringField5: TStringField
      FieldName = 'BAGIAN'
      Required = True
      Size = 50
    end
    object StringField6: TStringField
      FieldName = 'SUB_BAGIAN'
      Required = True
      Size = 50
    end
  end
  object dsQBrowse2: TwwDataSource
    DataSet = Qbrowse2
    Left = 580
    Top = 169
  end
end
                                                                         
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'QRLDebet'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 9
          end
          object QRShape2: TQRShape
            Left = 448
            Top = 2
            Width = 217
            Height = 3
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              7.937500000000000000
              1185.333333333333000000
              5.291666666666667000
              574.145833333333400000)
            Shape = qrsHorLine
          end
          object QRLabel8: TQRLabel
            Left = 448
            Top = 8
            Width = 42
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              1185.333333333333000000
              21.166666666666670000
              111.125000000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'TOTAL :'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 9
          end
          object QRDBText63: TQRDBText
            Left = 256
            Top = 80
            Width = 217
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              677.333333333333400000
              211.666666666666700000
              574.145833333333400000)
    unit RekapPemakaianObatPerBag;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, wwDialog, wwrcdvw, Wwdatsrc, OracleData, wwdblook, Wwdbdlg,
  wwcheckbox, wwSpeedButton, wwDBNavigator, wwclearpanel, ExtCtrls,
  wwdbedit, StdCtrls, DBCtrls, Grids, Wwdbigrd, Wwdbgrid,
  wwdbdatetimepicker, QuickRpt, QRCtrls, ComCtrls, Mask, Wwdbspin, Buttons,
  Wwdotdot, Wwdbcomb, Oracle;

type
  TRekapPemakaianObatPerBagFrm = class(TForm)
    Panel1: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel2: TPanel;
    Panel4: TPanel;
    BtnClose: TBitBtn;
    QTransaksi: TOracleDataSet;
    dsQTransaksi: TwwDataSource;
    BitBtn5: TBitBtn;
    LRecords: TLabel;
    QDetail: TOracleDataSet;
    dsQDetail: TwwDataSource;
    GroupBox1: TGroupBox;
    Panel3: TPanel;
    VTglAwal: TwwDBDateTimePicker;
    vTglAkhir: TwwDBDateTimePicker;
    Label2: TLabel;
    BitBtn1: TBitBtn;
    QTransaksiTANGGAL: TDateTimeField;
    QTransaksiNO_NOTA: TStringField;
    QTransaksiKETERANGAN: TStringField;
    QTransaksiISPOST: TStringField;
    QTransaksiSTATUS: TStringField;
    QTransaksiTGL_INSERT: TDateTimeField;
    QTransaksiOPR_INSERT: TStringField;
    QTransaksiTTD1: TStringField;
    QTransaksiTTD2: TStringField;
    QTransaksiTTD3: TStringField;
    QTransaksiTTD4: TStringField;
    QDetailKD_ITEM: TStringField;
    QDetailQTY_PO: TFloatField;
    QDetailQTY_PP: TFloatField;
    QDetailQTY: TFloatField;
    QDetailOPR_INSERT: TStringField;
    QDetailTGL_INSERT: TDateTimeField;
    QTransaksiKD_TRANSAKSI: TStringField;
    QLookItem: TOracleDataSet;
    QLookItemKD_ITEM: TStringField;
    QLookItemNAMA_ITEM: TStringField;
    QLookItemSAT1: TStringField;
    QDetailSATUAN: TStringField;
    QBrowse: TOracleDataSet;
    QBrowseKD_ITEM: TStringField;
    QBrowseNAMA_ITEM: TStringField;
    QBrowseSAT1: TStringField;
    dsQBrowse: TwwDataSource;
    wwDBGrid1: TwwDBGrid;
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    TitleBand1: TQRBand;
    ColumnHeaderBand1: TQRBand;
    DetailBand1: TQRBand;
    SummaryBand1: TQRBand;
    PageFooterBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRSysData2: TQRSysData;
    QRDBText22: TQRDBText;
    QRExpr1: TQRExpr;
    QRDBText2: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRLTitle: TQRLabel;
    Label15: TLabel;
    vHeight: TwwDBSpinEdit;
    Label16: TLabel;
    BtnExport: TBitBtn;
    QBrowseQTY_KEBUTUHAN: TFloatField;
    QBrowseQTY_PP: TFloatField;
    QTransaksiNO_REG_PP: TIntegerField;
    QDetailKD_REKANAN: TStringField;
    QDetailNO_REG_KEBUTUHAN: TIntegerField;
    QDetailNO_REG_PP: TIntegerField;
    QDetailMU: TStringField;
    QDetailHARGA: TFloatField;
    QDetailISPILIH: TStringField;
    QDetailTGL_PO: TDateTimeField;
    QDetailKETERANGAN: TStringField;
    QDetailNAMA_SUPLIER: TStringField;
    QLookItemTGL_KEBUTUHAN: TDateTimeField;
    QLookItemNO_NOTA: TStringField;
    QLookItemNO_REG_KEBUTUHAN: TIntegerField;
    QDetailQTY_KEBUTUHAN: TFloatField;
    QLookItemQTY_KEBUTUHAN: TFloatField;
    QLookItemQTY_PP: TFloatField;
    QSuplier: TOracleDataSet;
    QSuplierNO_REG_CEK_HARGA: TIntegerField;
    QSuplierSAT1: TStringField;
    QSuplierKD_REKANAN: TStringField;
    QSuplierNAMA_REKANAN: TStringField;
    QSuplierCONTACT: TStringField;
    QSuplierTANGGAL_CEK: TDateTimeField;
    QSuplierHARGA: TFloatField;
    QSuplierMU: TStringField;
    QSuplierSAT2: TStringField;
    QSuplierRASIO: TFloatField;
    QDetailNO_REG_CEK_HARGA: TIntegerField;
    QDetailRASIO: TFloatField;
    QDetailSATUAN_PO: TStringField;
    QDetailSUB_TOTAL: TFloatField;
    QDetailDISC: TFloatField;
    QRDBText52: TQRDBText;
    QRLabel10: TQRLabel;
    Label1: TLabel;
    QLookNilai: TOracleDataSet;
    QBrowseHARGA: TFloatField;
    QLookNilaiKD_ITEM: TStringField;
    QLookNilaiHARGA: TFloatField;
    QBrowseSUB_TOTAL: TFloatField;
    QRBand1: TQRBand;
    QRGroup1: TQRGroup;
    QRDBText3: TQRDBText;
    ProgressBar1: TProgressBar;
    QBrowseBAGIAN: TStringField;
    QBrowseSUB_BAGIAN: TStringField;
    RadioGroup1: TRadioGroup;
    dbcField: TwwDBComboBox;
    vOperand: TLabel;
    cbTanggal: TCheckBox;
    ECari: TEdit;
    wwDBLookupCombo1: TwwDBLookupCombo;
    DSQJns_Item: TwwDataSource;
    DBText1: TDBText;
    BitBtn2: TBitBtn;
    wwDBGrid2: TwwDBGrid;
    QuickRep2: TQuickRep;
    QRBand2: TQRBand;
    QRDBText4: TQRDBText;
    QRBand3: TQRBand;
    QRDBText5: TQRDBText;
    QRLabel11: TQRLabel;
    QRBand4: TQRBand;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRBand5: TQRBand;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRBand6: TQRBand;
    QRLabel21: TQRLabel;
    QRDBText20: TQRDBText;
    QRDBText21: TQRDBText;
    QRDBText23: TQRDBText;
    QRBand7: TQRBand;
    QRSysData1: TQRSysData;
    QRDBText24: TQRDBText;
    QRBand8: TQRBand;
    QRGroup2: TQRGroup;
    QRDBText25: TQRDBText;
    Qbrowse2: TOracleDataSet;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    StringField4: TStringField;
    FloatField3: TFloatField;
    FloatField4: TFloatField;
    StringField5: TStringField;
    StringField6: TStringField;
    dsQBrowse2: TwwDataSource;
    QRLPeriode: TQRLabel;
    QRLabel3: TQRLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure wwDBGrid2TitleButtonClick(Sender: TObject;
      AFieldName: String);
    procedure LookKonstruksiEnter(Sender: TObject);
    procedure wwDBGrid2Enter(Sender: TObject);
    procedure DBText2Click(Sender: TObject);
    procedure QLookItemBeforeOpen(DataSet: TDataSet);
    procedure LookItemCloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure wwDBGrid2CalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure QBrowseBeforeOpen(DataSet: TDataSet);
    procedure TitleBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure BitBtn5Click(Sender: TObject);
    procedure TabSheet1Show(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure QDetailBeforeInsert(DataSet: TDataSet);
    procedure QTransaksiAfterDelete(DataSet: TDataSet);
    procedure VTglAwalChange(Sender: TObject);
    procedure vTglAkhirChange(Sender: TObject);
    procedure ColumnHeaderBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure wwDBGrid2DblClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure vHeightAfterUpClick(Sender: TObject);
    procedure BtnExportClick(Sender: TObject);
    procedure DBText5Click(Sender: TObject);
    procedure dbcFieldEnter(Sender: TObject);
    procedure LookItemUserButton1Click(Sender: TObject;
      LookupTable: TDataSet);
    procedure QRGroup1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QBrowseCalcFields(DataSet: TDataSet);
    procedure cbTanggalClick(Sender: TObject);
    procedure vOperandClick(Sender: TObject);
    procedure wwDBGrid1TitleButtonClick(Sender: TObject;
      AFieldName: String);
    procedure BitBtn2Click(Sender: TObject);
    procedure QRBand3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
    vfilter, vorder, vfilter2 : String;
    vnomer, vnomer2 : Integer;
  public
    { Public declarations }
    vkd_jns_item, vkd_jns_kebutuhan, vkd_bag : String;
    vhak_input : Boolean;
    vrecord_ke : Integer;
  end;

var
  RekapPemakaianObatPerBagFrm: TRekapPemakaianObatPerBagFrm;

implementation

uses DM, MainBrowse, Main, Menus, XPROCS, DateUtils, Keterangan, Sisdur;

{$R *.dfm}

procedure TRekapPemakaianObatPerBagFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
  RekapPemakaianObatPerBagFrm:=Nil;
end;

procedure TRekapPemakaianObatPerBagFrm.FormCreate(Sender: TObject);
begin
  DMFrm.QLookSubBagian.Close;
  QLookItem.Close;
end;

procedure TRekapPemakaianObatPerBagFrm.wwDBGrid2TitleButtonClick(Sender: TObject;
  AFieldName: String);
begin
  if ((Sender as TwwDBGrid).ColumnByName(AFieldName).FieldName<>'') then
  begin
     if (Sender as TwwDBGrid).DataSource.DataSet.FieldByName(AFieldName).FieldKind=fkData then
        begin
          if vorder=' ASC' then
              vorder:=' DESC'
          else
              vorder:=' ASC';
          (Sender as TwwDBGrid).DataSource.DataSet.DisableControls;
          (Sender as TwwDBGrid).DataSource.DataSet.Close;
          ((Sender as TwwDBGrid).DataSource.DataSet as TOracleDataSet).SetVariable('myparam',vfilter2+' order by '+(Sender as TwwDBGrid).ColumnByName(AFieldName).FieldName+vorder);
          (Sender as TwwDBGrid).DataSource.DataSet.Open;
          (Sender as TwwDBGrid).DataSource.DataSet.EnableControls;
        end
        else
          ShowMessage('Maaf, tidak bisa diurutkan menurut '+AFieldName+' !');
  end
  else
  ShowMessage('Maaf, tidak bisa diurutkan menurut '+AFieldName+' !');

end;

pr