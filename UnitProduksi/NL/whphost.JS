0100000000000D
      0000004942554B54495F44455441494C010000000000080000004E4F5F42554B
      54490100000000000A0000004B45544552414E47414E01000000000004000000
      5154593101000000000004000000515459320100000000000400000051545933
      0100000000000400000051545934010000000000040000005154593501000000
      0000040000005154593601000000000003000000485247010000000000080000
      00535542544F54414C0100000000000D0000004B445F5355425F4C4F4B415349
      0100000000000E0000004B445F5355425F4C4F4B415349320100000000000400
      0000515459370100000000000400000051545938010000000000040000005154
      59390100000000000500000051545931300100000000000D00000054474C5F4B
      454255545548414E010000000000070000004942554B54493201000000000007
      000000495356414C494401000000000006000000535441545553010000000000
      090000004B445F53415455414E01000000000005000000524153494F01000000
      00000A0000004B445F4B454D4153414E010000000000080000004E4F5F4F5244
      45520100000000000600000053415455414E0100000000000400000048524732
      010000000000}
    RefreshOptions = [roAfterInsert, roAfterUpdate]
    Session = DMFrm.OS
    BeforeInsert = QMasterBeforeDelete
    BeforeEdit = QMasterBeforeDelete
    BeforePost = QDetail2BeforePost
    BeforeDelete = QMasterBeforeDelete
    OnNewRecord = QDetail2NewRecord
    Left = 32
    Top = 200
    object QDetail2IBUKTI: TFloatField
      FieldName = 'IBUKTI'
    end
    object QDetail2IBUKTI_DETAIL: TFloatField
      FieldName = 'IBUKTI_DETAIL'
    end
    object QDetail2KD_ITEM: TStringField
      FieldName = 'KD_ITEM'
      Size = 50
    end
    object QDetail2KETERANGAN: TStringField
      FieldName = 'KETERANGAN'
      Size = 255
    end
    object QDetail2QTY1: TFloatField
      FieldName = 'QTY1'
    end
    object QDetail2QTY2: TFloatField
      FieldName = 'QTY2'
    end
    object QDetail2QTY3: TFloatField
      FieldName = 'QTY3'
    end
    object QDetail2KD_SUB_LOKASI: TStringField
      FieldName = 'KD_SUB_LOKASI'
      Size = 12
    end
    object QDetail2KD_SUB_LOKASI2: TStringField
      FieldName = 'KD_SUB_LOKASI2'
      Size = 12
    end
    object QDetail2STATUS: TStringField
      FieldName = 'STATUS'
      Size = 10
    end
    object QDetail2KD_SATUAN: TStringField
      FieldName = 'KD_SATUAN'
      Size = 2
    end
    object QDetail2LSATUAN: TStringField
      FieldKind = fkLookup
      FieldName = 'LSATUAN'
      LookupDataSet = DMFrm.QItemAll
      LookupKeyFields = 'KD_SATUAN'
      LookupResultField = 'SATUAN'
      KeyFields = 'KD_SATUAN'
      Size = 12
      Lookup = True
    end
  end
  object dsQDetail2: TwwDataSource
    DataSet = QDetail2
    Left = 32
    Top = 232
  end
  object QItem2: TOracleDataSet
    SQL.Strings = (
      'select * from ipisma_db2.vitem2')
    QBEDefinition.QBEFieldDefs = {
      040000000D000000070000004B445F4954454D010000000000090000004E414D
      415F4954454D0100000000000600000053415455414E01000000000009000000
      4B445F53415455414E0100000000000700000049534649584544010000000000
      05000000524153494F0100000000000F0000004E414D415F4B4F4E535452554B
      53490100000000000A0000004E414D415F434F52414B0100000000000C000000
      4E414D415F4B454D4153414E0100000000000A00000054474C5F494E53455254
      0100000000000A0000004B445F4B454D4153414E010000000000090000004852
      475F504F4B4F4B010000000000080000004852475F4A55414C010000000000}
    ReadOnly = True
    QueryAllRecords = False
    Session = DMFrm.OSLocal
    Left = 384
    Top = 344
    object QItem2NAMA_ITEM: TStringField
      DisplayLabel = 'NAMA ITEM'
      DisplayWidth = 50
      FieldName = 'NAMA_ITEM'
      Size = 255
    end
    object QItem2KD_ITEM: TStringField
      DisplayLabel = 'KODE'
      DisplayWidth = 10
      FieldName = 'KD_ITEM'
      Size = 50
    end
    object QItem2SATUAN: TStringField
      DisplayWidth = 12
      FieldName = 'SATUAN'
      Size = 12
    end
    object QItem2RASIO: TFloatField
      DisplayWidth = 10
      FieldName = 'RASIO'
    end
    object QItem2KD_SATUAN: TStringField
      FieldName = 'KD_SATUAN'
      Visible = False
      Size = 2
    end
  end
  object ppDBQDetail2: TppDBPipeline
    DataSource = dsQDetail2
    UserName = 'DBQDetail2'
    Left = 96
    Top = 200
  end
end
                                                                                                                                                                                                                                                                          330000000000060000003A504157414C0C00000007000000786C0C0101010100
      000000070000003A50414B4849520C00000007000000786C0C1E010101000000
      00}
    Left = 532
    Top = 209
  end
  object QRiwayatTransaksi: TOracleDataSet
    SQL.Strings = (
      'select * from pmtx02.vkartu_stok'
      'where kd_item=:kd_item and tanggal>=:pawal and tanggal<=:pakhir')
    Variables.Data = {
      0300000003000000080000003A4B445F4954454D050000000A0000003330332D
      31313331330000000000060000003A504157414C0C00000007000000786C0101
      01010100000000070000003A50414B4849520C00000007000000786D01010101
      0100000000}
    QBEDefinition.QBEFieldDefs = {
      040000000D000000070000004B445F4954454D010000000000070000004E4F5F
      4E4F54410100000000000700000054414E4747414C010000000000070000004E
      4F5F524546460100000000000A0000004B45544552414E47414E010000000000
      060000005154595F494E010000000000070000005154595F4F55540100000000
      000A00000054474C5F494E534552540100000000000A0000004F50525F494E53
      4552540100000000000E0000004E4F5F5245475F53544F4B5F47440100000000
      000C0000004B445F5452414E53414B5349010000000000060000004841524741
      32010000000000050000004841524741010000000000}
    Session = DMFrm.OS
    OnCalcFields = QRiwayatTransaksiCalcFields
    Left = 636
    Top = 273
    object QRiwayatTransaksiKD_ITEM: TStringField
      FieldName = 'KD_ITEM'
      Size = 16
    end
    object QRiwayatTransaksiNO_NOTA: TStringField
      FieldName = 'NO_NOTA'
      Size = 15
    end
    object QRiwayatTransaksiTANGGAL: TDateTimeField
      FieldName = 'TANGGAL'
      DisplayFormat = 'dd mmm yyyy'
    end
    object QRiwayatTransaksiNO_REFF: TStringField
      FieldName = 'NO_REFF'
    end
    object QRiwayatTransaksiKETERANGAN: TStringField
      FieldName = 'KETERANGAN'
      Size = 306
    end
    object QRiwayatTransaksiQTY_IN: TFloatField
      FieldName = 'QTY_IN'
      DisplayFormat = '#.#,#;(#.#,#)'
    end
    object QRiwayatTransaksiQTY_OUT: TFloatField
      FieldName = 'QTY_OUT'
      DisplayFormat = '#.#,#;(#.#,#)'
    end
    object QRiwayatTransaksiTGL_INSERT: TDateTimeField
      FieldName = 'TGL_INSERT'
    end
    object QRiwayatTransaksiOPR_INSERT: TStringField
      FieldName = 'OPR_INSERT'
      Size = 30
    end
    object QRiwayatTransaksiNO_REG_STOK_GD: TFloatField
      FieldName = 'NO_REG_STOK_GD'
      Required = True
    end
    object QRiwayatTransaksiKD_TRANSAKSI: TStringField
      FieldName = 'KD_TRANSAKSI'
      Size = 3
    end
    object QRiwayatTransaksiHARGA2: TFloatField
      Alignment = taCenter
      FieldName = 'HARGA2'
      DisplayFormat = '#.#,#;(#.#,#); 0'
    end
    object QRiwayatTransaksiHARGA_AVG: TFloatField
      FieldKind = fkCalculated
      FieldName = 'HARGA_AVG'
      DisplayFormat = '#.#,#;(#.#,#); 0'
      Calculated = True
    end
  end
  object QNilaiMasuk: TOracleDataSet
    SQL.Strings = (
      'select a.kd_item, :mybulan from pmtx01.item a'
      
        'left outer join pmtx02.item_hrg_beli p on (p.kd_item=a.kd_item a' +
        'nd p.tahun=:ptahun)'
      
        'left outer join pmtx02.item_hrg_koreksi q on (q.kd_item=a.kd_ite' +
        'm and q.tahun=:ptahun)'
      'where a.kd_jns_item=:pkd_jns_item'
      '')
    Variables.Data = {
      0300000003000000080000003A4D5942554C414E010000002C000000702E6E30
      35206173206E696C61695F62656C692C20712E6E3035206173206E696C61695F
      6B6F72656B73690000000000070000003A50544148554E0300000004000000D9
      070000000unit HakMenu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  DateUtils, Mask, wwdbedit, Wwdbspin, DB, Wwdatsrc, OracleData, Dialogs,
  Oracle, Menus, wwSpeedButton, wwDBNavigator, wwclearpanel, StdCtrls,
  Buttons, Wwdbigrd, Wwdbgrid, DBCtrls, ComCtrls, ExtCtrls, wwdblook, Grids,
  Wwdbdlg;

type
  THakMenuFrm = class(TForm)
    PanelLeft: TPanel;
    PanelRight: TPanel;
    PanelMain: TPanel;
    PanelHeader: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    PanelMaster: TPanel;
    PanelDetail: TPanel;
    PanelFooter1: TPanel;
    TabSheet2: TTabSheet;
    PanelFilter: TPanel;
    LabelBanner: TLabel;
    PanelBrowse: TPanel;
    PanelFooter2: TPanel;
    PanelBand: TPanel;
    wwDBGrid2: TwwDBGrid;
    wwDBNavigator1: TwwDBNavigator;
    wwDBNavigator1PriorPage: TwwNavButton;
    wwDBNavigator1NextPage: TwwNavButton;
    wwDBNavigator1SaveBookmark: TwwNavButton;
    wwDBNavigator1RestoreBookmark: TwwNavButton;
    QBrowse: TOracleDataSet;
    dsQBrowse: TwwDataSource;
    Label5: TLabel;
    wwDBSpinEdit1: TwwDBSpinEdit;
    BtnClose2: TBitBtn;
    BtnClose1: TBitBtn;
    Label1: TLabel;
    wwDBSpinEdit2: TwwDBSpinEdit;
    QMaster: TOracleDataSet;
    dsQMaster: TwwDataSource;
    Label6: TLabel;
    Label8: TLabel;
    DBText3: TDBText;
    wwDBGrid1: TwwDBGrid;
    QDetail: TOracleDataSet;
    dsQDetail: TwwDataSource;
    Label14: TLabel;
    wwDBSpinEdit4: TwwDBSpinEdit;
    wwDBSpinEdit5: TwwDBSpinEdit;
    wwDBNavigatorInput: TwwDBNavigator;
    wwDBNavigatorInputNext: TwwNavButton;
    wwDBNavigatorInputCancel: TwwNavButton;
    wwDBNavigatorInputButton: TwwNavButton;
    LBarcode: TDBText;
    wwDBNavigatorInputButton1: TwwNavButton;
    wwDBNavigatorInputButton2: TwwNavButton;
    wwDBEdit1: TwwDBEdit;
    QDetailHAK_BROWSE: TStringField;
    QDetailIMENU: TFloatField;
    QDetailHAK_INPUT: TStringField;
    QDetailHAK_EXPORT: TStringField;
    QDetailHAK_DESIGN: TStringField;
    QDetailNAMA_MENU: TStringField;
    QDetailLVL: TFloatField;
    QDetailCNAMA_MENU: TStringField;
    BtnAmbilData: TBitBtn;
    BtnOk: TBitBtn;
    QMasterTIPE: TStringField;
    QMasterVUSER: TStringField;
    QDetailIVUSER_MENU: TFloatField;
    QMenu: TOracleDataSet;
    QMenuHAK_BROWSE: TStringField;
    QMenuIMENU: TFloatField;
    QMenuHAK_INPUT: TStringField;
    QMenuHAK_EXPORT: TStringField;
    QMenuHAK_DESIGN: TStringField;
    QMenuNAMA_COMPONENT: TStringField;
    QMenuNAMA_MENU: TStringField;
    QMenuLVL: TFloatField;
    QMenuTIPE: TStringField;
    QTipeMenu: TOracleDataSet;
    QTipeMenuTIPE: TStringField;
    QTipeMenuKETERANGAN: TStringField;
    QMasterLKETERANGAN: TStringField;
    QDetailVUSER: TStringField;
    wwDBLookupCombo1: TwwDBLookupCombo;
    Label2: TLabel;
    wwDBNavigatorInputButton3: TwwNavButton;
    QMasterKD_DIV: TStringField;
    DBMemo1: TDBMemo;
    wwDBLookupComboDlg1: TwwDBLookupComboDlg;
    wwDBEdit2: TwwDBEdit;
    QMasterLNAMA_DIVISI: TStringField;
    DBText1: TDBText;
    Label3: TLabel;
    QBuatUser: TOracleQuery;
    Button1: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure wwDBGrid2TitleButtonClick(Sender: TObject;
      AFieldName: String);
    procedure QBrowseAfterScroll(DataSet: TDataSet);
    procedure BtnClose1Click(Sender: TObject);
    procedure BtnClose2Click(Sender: TObject);
    procedure wwDBSpinEdit1Change(Sender: TObject);
    procedure wwDBSpinEdit2Change(Sender: TObject);
    procedure wwDBSpinEdit4Change(Sender: TObject);
    procedure wwDBSpinEdit5Change(Sender: TObject);
    procedure TabSheet1Show(Sender: TObject);
    procedure QDetailNewRecord(DataSet: TDataSet);
    procedure BtnAmbilDataClick(Sender: TObject);
    procedure wwDBGrid1Enter(Sender: TObject);
    procedure QDetailCalcFields(DataSet: TDataSet);
    Procedure BuatMenu;
    procedure BtnOkClick(Sender: TObject);
    procedure wwDBGrid1CalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure wwDBLookupComboDlg1Enter(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    vorder, SelectedFont : String;
  public
    { Public declaration