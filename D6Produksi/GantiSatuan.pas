unit GantiSatuan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  DateUtils, Mask, wwdbedit, Wwdbspin, DB, Wwdatsrc, OracleData, Dialogs,
  Oracle, Buttons, wwSpeedButton, wwDBNavigator, wwclearpanel, Grids,
  Wwdbigrd, Wwdbgrid, StdCtrls, wwdbdatetimepicker, ComCtrls, ExtCtrls,
  ppViewr, ppDB, ppDBPipe, ppComm, ppRelatv, ppProd, ppClass, ppReport,
  ppVar, ppCtrls, ppBands, ppPrnabl, ppCache, ppEndUsr, ppModule,
  daDataModule, DBCtrls, wwdblook, Wwdbdlg, Wwdotdot, Wwdbcomb, ppBarCod,
  wwcheckbox, ppStrtch, ppMemo, raCodMod, wwriched, ppDBJIT;

type
  TGantiSatuanFrm = class(TForm)
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
    vTglAwal: TwwDBDateTimePicker;
    vTglAkhir: TwwDBDateTimePicker;
    Label2: TLabel;
    BtnOk: TBitBtn;
    PanelBand: TPanel;
    wwDBGrid2: TwwDBGrid;
    Label3: TLabel;
    Label4: TLabel;
    wwDBNavigator1: TwwDBNavigator;
    wwDBNavigator1PriorPage: TwwNavButton;
    wwDBNavigator1NextPage: TwwNavButton;
    wwDBNavigator1SaveBookmark: TwwNavButton;
    wwDBNavigator1RestoreBookmark: TwwNavButton;
    QBrowse: TOracleDataSet;
    dsQBrowse: TwwDataSource;
    Label5: TLabel;
    wwDBSpinLine2: TwwDBSpinEdit;
    BtnClose2: TBitBtn;
    BtnExport: TBitBtn;
    BtnPrintBrowse: TBitBtn;
    BtnPrintInput: TBitBtn;
    BtnClose1: TBitBtn;
    Label1: TLabel;
    QBrowseNO_NOTA: TStringField;
    QBrowseTANGGAL: TDateTimeField;
    BtnFind: TSpeedButton;
    BtnOk2: TSpeedButton;
    TabSheet3: TTabSheet;
    ppReportBrowse: TppReport;
    ppDBQBrowseDetail: TppDBPipeline;
    ppDesigner1: TppDesigner;
    BtnDesign2: TBitBtn;
    dsQBrowseDetail: TwwDataSource;
    ppDBPerusahaan: TppDBPipeline;
    QMaster: TOracleDataSet;
    QMasterNO_NOTA: TStringField;
    QMasterKD_TRANSAKSI: TStringField;
    QMasterTGL: TDateTimeField;
    QMasterKETERANGAN: TStringField;
    QMasterISPOST: TStringField;
    QMasterNO_BUKTI: TStringField;
    wwDBDateTimePicker1: TwwDBDateTimePicker;
    dsQMaster: TwwDataSource;
    DBMemo1: TDBMemo;
    Label6: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Bevel1: TBevel;
    DBText3: TDBText;
    wwDBGrid1: TwwDBGrid;
    QDetail: TOracleDataSet;
    QDetailIBUKTI_DETAIL: TFloatField;
    QDetailKD_ITEM: TStringField;
    dsQDetail: TwwDataSource;
    QDetailLSATUAN: TStringField;
    Label14: TLabel;
    wwDBSpinLine1: TwwDBSpinEdit;
    LBarcode: TDBText;
    EditCari: TEdit;
    Label15: TLabel;
    ppReportInput: TppReport;
    ppDBQMaster: TppDBPipeline;
    ppDBQDetail: TppDBPipeline;
    QMasterIBUKTI: TFloatField;
    QMasterTTD1: TStringField;
    QMasterTTD2: TStringField;
    QMasterTTD3: TStringField;
    QMasterTTD4: TStringField;
    QDetailIBUKTI: TFloatField;
    QDetailQTY1: TFloatField;
    QDetailKETERANGAN: TStringField;
    cbPost: TwwCheckBox;
    QTransaksi: TOracleDataSet;
    QTransaksiNAMA_TRANSAKSI: TStringField;
    QTransaksiKD_TRANSAKSI: TStringField;
    QTransaksiPREFIX: TStringField;
    QTransaksiPLINE: TStringField;
    QTransaksiPHEADER: TStringField;
    QTransaksiDISTRIBUSI: TStringField;
    QTransaksiTTD1: TStringField;
    QTransaksiTTD2: TStringField;
    QTransaksiTTD3: TStringField;
    QTransaksiTTD4: TStringField;
    QTransaksiDIV1: TStringField;
    QTransaksiDIV2: TStringField;
    QTransaksiDIV3: TStringField;
    QTransaksiDIV4: TStringField;
    QTransaksiJAB1: TStringField;
    QTransaksiJAB2: TStringField;
    QTransaksiJAB3: TStringField;
    QTransaksiJAB4: TStringField;
    ppDBQTransaksi: TppDBPipeline;
    dsQTransaksi: TwwDataSource;
    wwDBNavigatorInput: TwwDBNavigator;
    wwDBNavigatorInputButton: TwwNavButton;
    wwDBNavigatorInputNext: TwwNavButton;
    wwDBNavigatorInputCancel: TwwNavButton;
    wwDBNavigatorInputButton1: TwwNavButton;
    wwDBNavigatorInputButton2: TwwNavButton;
    wwDBEdit1: TwwDBEdit;
    QDetailKD_SUB_LOKASI: TStringField;
    QProc_Update_PO: TOracleQuery;
    QLokasi: TOracleDataSet;
    QLokasiKD_SUB_LOKASI: TStringField;
    QLokasiJNS_LOKASI: TStringField;
    Label8: TLabel;
    QMasterSHIFT: TStringField;
    QMasterGRUP: TStringField;
    wwDBComboBox1: TwwDBComboBox;
    wwDBComboBox2: TwwDBComboBox;
    Label10: TLabel;
    QItem: TOracleDataSet;
    QItemNAMA_ITEM: TStringField;
    QItemKD_ITEM: TStringField;
    QItemSATUAN: TStringField;
    QBrowseSHIFT: TStringField;
    QBrowseGRUP: TStringField;
    QBrowseKD_DIV: TStringField;
    QBrowseNAMA_DIVISI: TStringField;
    QBrowseKODE_BRG: TStringField;
    QBrowseNAMA_BRG: TStringField;
    QBrowseSATUAN: TStringField;
    QBrowseQTY1: TFloatField;
    QBrowseLOKASI: TStringField;
    wwDBLookupComboDlg1: TwwDBLookupComboDlg;
    Label11: TLabel;
    QMasterKD_DIV: TStringField;
    QMasterLDIVISI: TStringField;
    DBText1: TDBText;
    ppTitleBand1: TppTitleBand;
    ppNamaLaporan: TppLabel;
    ppLabel9: TppLabel;
    ppPeriode: TppLabel;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppUserCetak: TppLabel;
    ppHeaderBand1: TppHeaderBand;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText8: TppDBText;
    ppDBText10: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBMemo3: TppDBMemo;
    ppNo: TppVariable;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText7: TppDBText;
    ppDBText9: TppDBText;
    ppLabel18: TppLabel;
    ppFooterBand1: TppFooterBand;
    ppSystemVariable1: TppSystemVariable;
    ppSummaryBand1: TppSummaryBand;
    ppDBText19: TppDBText;
    ppDBText42: TppDBText;
    ppDBText43: TppDBText;
    ppDBText44: TppDBText;
    ppDBText45: TppDBText;
    ppDBText46: TppDBText;
    ppDBText47: TppDBText;
    ppDBText48: TppDBText;
    ppDBText49: TppDBText;
    QDetailQTY2: TFloatField;
    QDetailKD_SUB_LOKASI2: TStringField;
    LookLokasi2: TwwDBLookupComboDlg;
    QBrowseQTY2: TFloatField;
    QBrowseLOKASI2: TStringField;
    QItemKD_SUB_LOKASI: TStringField;
    QItemQTY: TFloatField;
    LookItem: TwwDBLookupComboDlg;
    QMasterSTATUS: TStringField;
    QSOP: TOracleDataSet;
    dsQSOP: TwwDataSource;
    wwDBRichEdit1: TwwDBRichEdit;
    wwDBLookupComboDlg2: TwwDBLookupComboDlg;
    Label12: TLabel;
    Label13: TLabel;
    wwDBSpinEdit1: TwwDBSpinEdit;
    Label16: TLabel;
    QMasterNO_RESEP: TStringField;
    QMasterNO_WO: TStringField;
    QMasterQTY_RESEP: TFloatField;
    DBText2: TDBText;
    QMasterLRESEP: TStringField;
    DBText4: TDBText;
    QMasterLSATUAN: TStringField;
    QItemResep: TOracleDataSet;
    QMasterKIRIM_KE: TStringField;
    BtnAmbilData: TBitBtn;
    QResepDetail: TOracleDataSet;
    QDetailQTY3: TFloatField;
    ppTitleBand2: TppTitleBand;
    ppHeaderBand2: TppHeaderBand;
    ppLabel22: TppLabel;
    ppLabel24: TppLabel;
    ppLabel26: TppLabel;
    ppDBText26: TppDBText;
    ppLabel25: TppLabel;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppDBText27: TppDBText;
    ppLabel17: TppLabel;
    ppLabel14: TppLabel;
    ppLabel32: TppLabel;
    ppDBText28: TppDBText;
    ppLabel33: TppLabel;
    ppDBText25: TppDBText;
    ppLabel20: TppLabel;
    ppLabel35: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel1: TppLabel;
    ppLabel13: TppLabel;
    ppLabel21: TppLabel;
    ppLabel23: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppDBText30: TppDBText;
    ppDBMemo1: TppDBMemo;
    ppDBText11: TppDBText;
    ppDBText20: TppDBText;
    ppDBText18: TppDBText;
    ppDBText21: TppDBText;
    ppFooterBand2: TppFooterBand;
    ppUserCetak2: TppLabel;
    ppDBBarCode1: TppDBBarCode;
    ppDBText32: TppDBText;
    ppDBText33: TppDBText;
    ppDBText34: TppDBText;
    ppDBText35: TppDBText;
    ppDBText36: TppDBText;
    ppDBText37: TppDBText;
    ppDBText38: TppDBText;
    ppDBText39: TppDBText;
    ppDBText40: TppDBText;
    ppDBText41: TppDBText;
    ppSystemVariable2: TppSystemVariable;
    ppSummaryBand2: TppSummaryBand;
    ppLabel29: TppLabel;
    ppDBMemo2: TppDBMemo;
    ppPageStyle1: TppPageStyle;
    ppLabel19: TppLabel;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText50: TppDBText;
    ppVariable2: TppVariable;
    raCodeModule1: TraCodeModule;
    ppNomer: TppLabel;
    wwDBGrid3: TwwDBGrid;
    Panel1: TPanel;
    QDetailSTATUS: TStringField;
    QDetail2: TOracleDataSet;
    dsQDetail2: TwwDataSource;
    QDetail2IBUKTI: TFloatField;
    QDetail2IBUKTI_DETAIL: TFloatField;
    QDetail2KD_ITEM: TStringField;
    QDetail2KETERANGAN: TStringField;
    QDetail2QTY1: TFloatField;
    QDetail2QTY2: TFloatField;
    QDetail2QTY3: TFloatField;
    QDetail2KD_SUB_LOKASI: TStringField;
    QDetail2KD_SUB_LOKASI2: TStringField;
    QDetail2STATUS: TStringField;
    QDetailKD_SATUAN: TStringField;
    QItemKD_SATUAN: TStringField;
    QDetail2KD_SATUAN: TStringField;
    LookItem2: TwwDBLookupComboDlg;
    QDetail2LSATUAN: TStringField;
    LookLokasi1: TwwDBLookupComboDlg;
    QItem2: TOracleDataSet;
    QItem2KD_ITEM: TStringField;
    QItem2NAMA_ITEM: TStringField;
    QItem2KD_SATUAN: TStringField;
    QItem2SATUAN: TStringField;
    QItem2MIN_STOK: TFloatField;
    QItem2RASIO: TFloatField;
    QItem2NO_PART: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure BtnExportClick(Sender: TObject);
    procedure BtnOkClick(Sender: TObject);
    procedure wwDBGrid2TitleButtonClick(Sender: TObject;
      AFieldName: String);
    procedure QBrowseAfterScroll(DataSet: TDataSet);
    procedure BtnClose1Click(Sender: TObject);
    procedure BtnClose2Click(Sender: TObject);
    procedure vTglAwalChange(Sender: TObject);
    procedure wwDBSpinLine2Change(Sender: TObject);
    procedure BtnFindClick(Sender: TObject);
    procedure BtnOk2Click(Sender: TObject);
    procedure ppHeaderBand1BeforePrint(Sender: TObject);
    procedure BtnPrintBrowseClick(Sender: TObject);
    procedure BtnAmbilDataClick(Sender: TObject);
    procedure BtnDesign2Click(Sender: TObject);
    procedure ppTitleBand1BeforePrint(Sender: TObject);
    procedure wwDBSpinLine1Change(Sender: TObject);
    procedure EditCariKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TabSheet1Show(Sender: TObject);
    procedure TabSheet1Exit(Sender: TObject);
    procedure ppDetailBand2BeforePrint(Sender: TObject);
    procedure ppFooterBand2BeforePrint(Sender: TObject);
    procedure BtnPrintInputClick(Sender: TObject);
    procedure QMasterBeforePost(DataSet: TDataSet);
    procedure wwDBGrid1Enter(Sender: TObject);
    procedure wwDBGrid2DblClick(Sender: TObject);
    procedure Label5Click(Sender: TObject);
    procedure LookItemEnter(Sender: TObject);
    procedure QMasterBeforeDelete(DataSet: TDataSet);
    procedure QMasterNewRecord(DataSet: TDataSet);
    procedure QTransaksiBeforeOpen(DataSet: TDataSet);
    procedure ppPageStyle1BeforePrint(Sender: TObject);
    procedure Label14Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure QMasterAfterPost(DataSet: TDataSet);
    procedure QMasterBeforeInsert(DataSet: TDataSet);
    procedure ppGroupHeaderBand1BeforePrint(Sender: TObject);
    procedure QProc_Update_POBeforeQuery(Sender: TOracleQuery);
    procedure LookLokasiEnter(Sender: TObject);
    procedure QItemBeforeQuery(Sender: TOracleDataSet);
    procedure LookItemCloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure QDetailNewRecord(DataSet: TDataSet);
    procedure QDetailBeforePost(DataSet: TDataSet);
    procedure TabSheet3Show(Sender: TObject);
    procedure QItemResepBeforeOpen(DataSet: TDataSet);
    procedure wwDBLookupComboDlg2Enter(Sender: TObject);
    procedure QDetail2BeforePost(DataSet: TDataSet);
    procedure QDetail2NewRecord(DataSet: TDataSet);
    procedure LookItem2CloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure wwDBGrid3Enter(Sender: TObject);
    procedure QItem2BeforeQuery(Sender: TOracleDataSet);
    procedure LookItem2Enter(Sender: TObject);
  private
    { Private declarations }
    vorder, SelectedFont, vkode, vjns_brg, vjns_lokasi : String;
    vnomer : integer;
  public
    { Public declarations }

  end;

var
  GantiSatuanFrm: TGantiSatuanFrm;

procedure ShowForm(pNamaMenu:String; pkode : String; pjudul : string; pjns_brg : String; pjns_lokasi : String);

implementation

uses DM, Pembelian;

{$R *.dfm}

procedure ShowForm(pNamaMenu:String; pkode : String; pjudul : string; pjns_brg : String; pjns_lokasi : String);
var
  mychar : string[125];
Begin
// Hak Menu
  DMFrm.cHakInput:=DMFrm.QMenuUser.Lookup('NAMA_COMPONENT',pNamaMenu,'HAK_INPUT')='1';
  DMFrm.cBtnDesign:=DMFrm.QMenuUser.Lookup('NAMA_COMPONENT',pNamaMenu,'HAK_DESIGN')='1';
  DMFrm.cBtnExport:=DMFrm.QMenuUser.Lookup('NAMA_COMPONENT',pNamaMenu,'HAK_EXPORT')='1';

//  if BPBFrm=Nil then
  begin
    GantiSatuanFrm:=TGantiSatuanFrm.Create(Application);
    GantiSatuanFrm.PageControl1.ActivePageIndex:=1;
    if not DMFrm.cHakInput then
    begin
       GantiSatuanFrm.QMaster.ReadOnly:=True;
       GantiSatuanFrm.QDetail.ReadOnly:=True;
    end;
    mychar:=pjudul;
    Delete(mychar,Pos('&',mychar),1);
    pjudul:=mychar;
    GantiSatuanFrm.Caption:=UpperCase(pkode+pjudul);
    if copy(pjudul,2,2)='21' then GantiSatuanFrm.vkode:=pkode+'A'+copy(pjudul,4,1)
    else
    if copy(pjudul,2,2)='22' then GantiSatuanFrm.vkode:=pkode+'B'+copy(pjudul,4,1)
    else
    if copy(pjudul,2,2)='23' then GantiSatuanFrm.vkode:=pkode+'C'+copy(pjudul,4,1)
    else
    if copy(pjudul,2,2)='24' then GantiSatuanFrm.vkode:=pkode+'D'+copy(pjudul,4,1)
    else
    if copy(pjudul,2,2)='31' then GantiSatuanFrm.vkode:=pkode+'E'+copy(pjudul,4,1)
    else
    if copy(pjudul,2,2)='32' then GantiSatuanFrm.vkode:=pkode+'F'+copy(pjudul,4,1)
    else
    if copy(pjudul,2,2)='33' then GantiSatuanFrm.vkode:=pkode+'G'+copy(pjudul,4,1)
    else
    if copy(pjudul,2,2)='34' then GantiSatuanFrm.vkode:=pkode+'H'+copy(pjudul,4,1)
    else
    if copy(pjudul,2,2)='35' then GantiSatuanFrm.vkode:=pkode+'I'+copy(pjudul,4,1)
    else
    if copy(pjudul,2,2)='36' then GantiSatuanFrm.vkode:=pkode+'J'+copy(pjudul,4,1)
    else
    if copy(pjudul,2,2)='37' then GantiSatuanFrm.vkode:=pkode+'K'+copy(pjudul,4,1)
    else
    if copy(pjudul,2,2)='38' then GantiSatuanFrm.vkode:=pkode+'L'+copy(pjudul,4,1)
    else
    if copy(pjudul,2,2)='39' then GantiSatuanFrm.vkode:=pkode+'M'+copy(pjudul,4,1)
    else
    GantiSatuanFrm.vkode:=pkode+copy(pjudul,2,1)+copy(pjudul,4,1);
    GantiSatuanFrm.vjns_lokasi:=copy(pjudul,2,2);
    GantiSatuanFrm.vjns_brg:=copy(pjudul,2,2);
    GantiSatuanFrm.QTransaksi.Open;

    GantiSatuanFrm.PanelHeader.Caption:=GantiSatuanFrm.QTransaksiKD_TRANSAKSI.AsString+'. '+GantiSatuanFrm.QTransaksiNAMA_TRANSAKSI.AsString;
    GantiSatuanFrm.wwDBGrid1.IniAttributes.FileName:=DMFrm.sAppPath+Application.Title+'2.ini';
    GantiSatuanFrm.wwDBGrid1.IniAttributes.SectionName:=GantiSatuanFrm.Caption+'1';
    GantiSatuanFrm.wwDBGrid1.IniAttributes.Enabled:=True;
    GantiSatuanFrm.wwDBGrid1.LoadFromIniFile;
    GantiSatuanFrm.wwDBGrid2.IniAttributes.FileName:=DMFrm.sAppPath+Application.Title+'2.ini';
    GantiSatuanFrm.wwDBGrid2.IniAttributes.SectionName:=GantiSatuanFrm.Caption+'2';
    GantiSatuanFrm.wwDBGrid2.IniAttributes.Enabled:=True;
    GantiSatuanFrm.wwDBGrid2.LoadFromIniFile;
    DMFrm.ProcReadIni(Application.Title,GantiSatuanFrm.Caption+'1',GantiSatuanFrm.wwDBGrid1);
    DMFrm.ProcReadIni(Application.Title,GantiSatuanFrm.Caption+'2',GantiSatuanFrm.wwDBGrid2);
    GantiSatuanFrm.wwDBSpinLine1.Value:=GantiSatuanFrm.wwDBGrid1.RowHeightPercent;
    GantiSatuanFrm.wwDBSpinLine2.Value:=GantiSatuanFrm.wwDBGrid2.RowHeightPercent;

  end;

  GantiSatuanFrm.Show;
end;

procedure TGantiSatuanFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   DMFrm.ProcWtiteIni(Application.Title,Caption+'1',wwDBGrid1);
   DMFrm.ProcWtiteIni(Application.Title,Caption+'2',wwDBGrid2);
   Action:=caFree;
   GantiSatuanFrm:=Nil;
end;

procedure TGantiSatuanFrm.FormCreate(Sender: TObject);
begin
//barcode
     DMFrm.FontToUse := TFont.Create;
     DMFrm.selected := 'UCC 128';
     SelectedFont := 'CIA Code 128 Medium';
     StrPCopy(DMFrm.TempSelected, DMFrm.Selected);
     DMFrm.BType := 'C128';
     DMFrm.FontToUse.Size := 12;
     DMFrm.FontToUse.Name := SelectedFont;
     LBarcode.Font := DMFrm.FontToUse;
//     QRBarcode11.Font := LoginFrm.FontToUse;
     DMFrm.BType := DMFrm.BType + '-';
     DMFrm.BType := DMFrm.BType + DMFrm.Format;
     DMFrm.BType := DMFrm.BType + '.BH';
// end barcode

  PanelHeader.Caption:=UpperCase(Caption);
  PanelLeft.Color:=cWarnaPanel;
  PanelRight.Color:=cWarnaPanel;
  PanelMain.Color:=cWarnaPanelUtama;
  PanelLeft.Width:=Round((Monitor.Width-PanelMain.Width)/2);
//  BtnAmbilData.Glyph.LoadFromFile(DMFrm.sAppPath+'Images\COPY.Bmp');
  BtnPrintInput.Glyph.LoadFromFile(DMFrm.sAppPath+'Images\PRINT.Bmp');
  BtnClose1.Glyph.LoadFromFile(DMFrm.sAppPath+'Images\CLOSE.Bmp');
  BtnOk.Glyph.LoadFromFile(DMFrm.sAppPath+'Images\CHECK.Bmp');
  BtnOk2.Glyph.LoadFromFile(DMFrm.sAppPath+'Images\CHECK.Bmp');
  BtnFind.Glyph.LoadFromFile(DMFrm.sAppPath+'Images\FIND.Bmp');
  BtnDesign2.Glyph.LoadFromFile(DMFrm.sAppPath+'Images\DESIGN.Bmp');
  BtnPrintBrowse.Glyph.LoadFromFile(DMFrm.sAppPath+'Images\PRINT.Bmp');
  BtnExport.Glyph.LoadFromFile(DMFrm.sAppPath+'Images\EXPORT.Bmp');
  BtnClose2.Glyph.LoadFromFile(DMFrm.sAppPath+'Images\CLOSE.Bmp');
  vTglAwal.Date:=Trunc(Date);
//Otoritas Button
  BtnExport.Visible:=DMFrm.cBtnExport;
  BtnDesign2.Visible:=DMFrm.cBtnDesign;
end;

procedure TGantiSatuanFrm.BtnExportClick(Sender: TObject);
begin
    DMFrm.SaveDialog1.FileName:=PanelHeader.Caption+' '+
      vTglAwal.Text+' sd '+vTglAkhir.Text+'.html';
    if DMFrm.SaveDialog1.Execute then
    begin
      try
        wwDBGrid2.ExportOptions.FileName:=DMFrm.SaveDialog1.FileName;
        wwDBGrid2.ExportOptions.TitleName:='<font size=4>'+PanelHeader.Caption+'</font><br><font size=1>'+vTglAwal.Text+' sd '+vTglAkhir.Text+'</font>';
        wwDBGrid2.ExportOptions.Save;
        if MessageDlg('Ekspor Data Sukses, Lihat Hasil ?',mtWarning,[mbYes, mbNo],0)=mrYes then
        begin
          DMFrm.LMDStarter1.Command:=DMFrm.SaveDialog1.FileName;
          DMFrm.LMDStarter1.Execute;
        end;
  		Except
    	  ShowMessage('Ekspor Data Gagal !');
  		end;
    end;
end;

procedure TGantiSatuanFrm.BtnOkClick(Sender: TObject);
begin
  if vTglAwal.Date>vTglAkhir.DateTime then
    ShowMessage('Tgl. Akhir harus lebih besar dari Tgl. Awal !')
    else
    begin
      if QBrowse.QBEMode then
        QBrowse.QBEMode:=False;
      QBrowse.DisableControls;
      QBrowse.Close;
      QBrowse.DeclareVariable('pawal',otDate);
      QBrowse.DeclareVariable('pakhir',otDate);
      QBrowse.DeclareVariable('kd_transaksi',otString);
      QBrowse.DeclareVariable('porder',otSubst);
      QBrowse.SQL.Text:='select * from '+cUserTabel+'v'+Name+
        ' where tanggal>=:pawal and tanggal<=:pakhir and kd_transaksi=:kd_transaksi :porder';
  		QBrowse.SetVariable('pawal',Trunc(vTglAwal.Date));
  		QBrowse.SetVariable('pakhir',Trunc(vTglAkhir.Date)+1-1/86400);
			QBrowse.SetVariable('kd_transaksi',vkode);
  		QBrowse.SetVariable('porder',vorder);
//      ShowMessage(QBrowse.SQL.Text);
      QBrowse.Open;
      QBrowse.EnableControls;
      LabelBanner.Caption:='Data : '+FormatFloat('#,#',QBrowse.RecordCount)+' Records';
    end;
end;

procedure TGantiSatuanFrm.wwDBGrid2TitleButtonClick(Sender: TObject;
  AFieldName: String);
begin
  if QBrowse.FieldByName(AFieldName).FieldKind=fkData then
  begin
    vorder:='order by '+AFieldName;
    BtnOkClick(Nil);
  end
  else
    ShowMessage('Maaf, tidak bisa Urut menurut kolom '+AFieldName+' !');
end;

procedure TGantiSatuanFrm.QBrowseAfterScroll(DataSet: TDataSet);
begin
  LabelBanner.Caption:='Record ke '+IntToStr(QBrowse.RecNo)+' dari '+FormatFloat('#,#',QBrowse.RecordCount)+' Records';
end;

procedure TGantiSatuanFrm.BtnClose1Click(Sender: TObject);
begin
  Close;
end;

procedure TGantiSatuanFrm.BtnClose2Click(Sender: TObject);
begin
  Close;
end;

procedure TGantiSatuanFrm.vTglAwalChange(Sender: TObject);
begin
  vTglAkhir.DateTime:=EndOfTheMonth(vTglAwal.Date);
end;

procedure TGantiSatuanFrm.wwDBSpinLine2Change(Sender: TObject);
begin
    wwDBGrid2.RowHeightPercent:=Round(wwDBSpinLine2.Value);
end;

procedure TGantiSatuanFrm.BtnFindClick(Sender: TObject);
begin
	wwDBGrid2.ColumnByName('NILAI').FooterValue:='';;
  if not QBrowse.QBEMode then
  begin
    wwDBGrid2.Options:=wwDBGrid2.Options-[dgRowSelect,dgAlwaysShowSelection];
    QBrowse.QBEMode:=TRUE;
  end
  else
    QBrowse.ClearQBE;
end;

procedure TGantiSatuanFrm.BtnOk2Click(Sender: TObject);
begin
  if QBrowse.QBEMode then
  begin
    QBrowse.ExecuteQBE;
    wwDBGrid2.Options:=wwDBGrid2.Options+[dgRowSelect,dgAlwaysShowSelection];
  end;

end;

procedure TGantiSatuanFrm.ppHeaderBand1BeforePrint(Sender: TObject);
begin
 // ppNo.AsInteger:=0;
end;

procedure TGantiSatuanFrm.BtnPrintBrowseClick(Sender: TObject);
begin
  if vTglAwal.Date>vTglAkhir.DateTime then
    ShowMessage('Tgl. Akhir harus lebih besar dari Tgl. Awal !')
    else
    begin
      ppReportBrowse.Print;
    end;
end;

procedure TGantiSatuanFrm.BtnAmbilDataClick(Sender: TObject);
begin
      if QMaster.State<>dsBrowse then
        QMaster.Post;
      QDetail.Close;
      QDetail.Open;
end;

procedure TGantiSatuanFrm.BtnDesign2Click(Sender: TObject);
begin
  ppDesigner1.ShowModal;
end;

procedure TGantiSatuanFrm.ppTitleBand1BeforePrint(Sender: TObject);
begin
  ppNamaLaporan.Caption:=Caption;
//  ppNo2.AsInteger:=0;
  ppPeriode.Caption:=vTglAwal.Text+' s/d '+vTglAkhir.Text;
  DMFrm.QTime.Close;
  DMFrm.QTime.Open;
  ppUserCetak.Caption:=DMFrm.QTimeVUSER_CETAK.AsString;
end;

procedure TGantiSatuanFrm.wwDBSpinLine1Change(Sender: TObject);
begin
    wwDBGrid1.RowHeightPercent:=Round(wwDBSpinLine1.Value);
end;

procedure TGantiSatuanFrm.EditCariKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=13 then
  begin
    wwDBSpinLine1.SetFocus;
    TabSheet1Show(Nil);
    EditCari.SetFocus;
  end;
end;

procedure TGantiSatuanFrm.TabSheet1Show(Sender: TObject);
begin
  if (EditCari.Text='') and (QBrowseNO_NOTA.AsString<>'') then
      EditCari.Text:=QBrowseNO_NOTA.AsString;
  QMaster.Close;
  QMaster.SequenceField.Sequence:=cUserTabel+'no_register';
  QMaster.SequenceField.Field:='IBUKTI';

  QMaster.SQL.Text:='select a.*, a.rowid from '+cUserTabel+'bukti a'+
    ' where a.no_nota=:pno_nota';
  QMaster.DeclareVariable('pno_nota',otString);
  QMaster.SetVariable('pno_nota',EditCari.Text);
//  ShowMessage(QMaster.SQL.Text);
  QMaster.Open;

  QDetail.Close;
  QDetail.SequenceField.Sequence:=cUserTabel+'no_register';
  QDetail.SequenceField.Field:='IBUKTI_DETAIL';
  QDetail.Master:=QMaster;
  QDetail.DeclareVariable('IBUKTI',otInteger);
  QDetail.MasterFields:='IBUKTI';
  QDetail.SQL.Text:='select a.*, a.rowid from '+cUserTabel+'bukti_detail a'+
    ' where a.ibukti=:ibukti and a.status=''1''';
  QDetail.SetVariable('ibukti',QMasterIBUKTI.AsInteger);
  QDetail.Open;
// ShowMessage(QDetail.SQL.Text);
  QDetail2.Close;
  QDetail2.SequenceField.Sequence:=cUserTabel+'no_register';
  QDetail2.SequenceField.Field:='IBUKTI_DETAIL';
  QDetail2.Master:=QMaster;
  QDetail2.DeclareVariable('IBUKTI',otInteger);
  QDetail2.MasterFields:='IBUKTI';
  QDetail2.SQL.Text:='select a.*, a.rowid from '+cUserTabel+'bukti_detail a'+
    ' where a.ibukti=:ibukti and a.status=''2''';
  QDetail2.SetVariable('ibukti',QMasterIBUKTI.AsInteger);
// ShowMessage(QDetail.SQL.Text);
  QDetail2.Open;
end;

procedure TGantiSatuanFrm.TabSheet1Exit(Sender: TObject);
begin
  EditCari.Text:='';
end;

procedure TGantiSatuanFrm.ppDetailBand2BeforePrint(Sender: TObject);
begin
  ppNomer.Caption:=IntToStr(ppDBQDetail.RecordNo+1);
end;

procedure TGantiSatuanFrm.ppFooterBand2BeforePrint(Sender: TObject);
begin
//  ppHalInput.Visible:=ppReportInput.PageNo>1;
  DMFrm.QTime.Close;
  DMFrm.QTime.Open;
  ppUserCetak2.Caption:=DMFrm.QTimeVUSER_CETAK.AsString;
end;

procedure TGantiSatuanFrm.BtnPrintInputClick(Sender: TObject);
begin
  ppReportInput.Print;
end;

procedure TGantiSatuanFrm.QMasterBeforePost(DataSet: TDataSet);
begin
  if QMasterTGL.AsString='' then
     begin
        ShowMessage('TANGGAL harus diisi !');
        Abort;
     end
     else
  if QMasterKD_DIV.AsString='' then
     begin
        ShowMessage('DIVISI harus diisi !');
        Abort;
     end
     else
  if QMasterSHIFT.AsString='' then
     begin
        ShowMessage('SHIFT harus diisi !');
        Abort;
     end
     else
  if QMasterGRUP.AsString='' then
     begin
        ShowMessage('GRUP harus diisi !');
        Abort;
     end;

   if (Dataset.State=dsEdit) and (QMasterNO_NOTA.AsString='') and (QMasterISPOST.AsString='1') then
   begin
     DMFrm.FNoUrut.Close;
     DMFrm.FNoUrut.SetVariable(0,vkode);
     DMFrm.FNoUrut.SetVariable(1,'-');
     DMFrm.FNoUrut.SetVariable(2,Trunc(QMasterTGL.AsDateTime));
     DMFrm.FNoUrut.Open;
     QMasterNO_NOTA.AsString:=DMFrm.FNoUrutFNO_URUT.AsString;
   end;

end;

procedure TGantiSatuanFrm.wwDBGrid1Enter(Sender: TObject);
begin
  if QMaster.State<>dsBrowse then
  try
    QMaster.Post;
    if QMasterQTY_RESEP.AsFloat>0 then
    begin
        QDetail.Refresh;
    end;
  except
    ShowMessage('Maaf, ada masalah di pengisian MASTER !');
  end;
  QLokasi.Close;
  QLokasi.DeclareVariable('vjns_lokasi',otString);
  QLokasi.SQL.Text:='select * from '+cUserTabel+'sub_lokasi where jns_lokasi=''PEMAKAIAN'' and kd_lokasi=:vjns_lokasi';
  QLokasi.SetVariable('vjns_lokasi',vjns_lokasi);
  QLokasi.Open;  
end;

procedure TGantiSatuanFrm.wwDBGrid2DblClick(Sender: TObject);
begin
  TabSheet1.Show;
end;

procedure TGantiSatuanFrm.Label5Click(Sender: TObject);
begin
  if DMFrm.FontDialog1.Execute then
  begin
    wwDBGrid2.Font.Name:=DMFrm.FontDialog1.Font.Name;
    wwDBGrid2.Font.Size:=DMFrm.FontDialog1.Font.Size;
    wwDBGrid2.Font.Color:=DMFrm.FontDialog1.Font.Color;
    wwDBGrid2.Font.Style:=DMFrm.FontDialog1.Font.Style;
  end;
end;

procedure TGantiSatuanFrm.LookItemEnter(Sender: TObject);
begin
  (sender as TwwDBLookupComboDlg).LookupTable.Open;
  QLokasi.Close;
  QLokasi.Open;
end;

procedure TGantiSatuanFrm.QMasterBeforeDelete(DataSet: TDataSet);
begin
  if QMasterISPOST.AsString='1' then
  begin
     ShowMessage('Maaf, sudah di-POST !, tidak bisa diubah...');
     Abort;
  end;
end;

procedure TGantiSatuanFrm.QMasterNewRecord(DataSet: TDataSet);
begin
  QMasterKD_TRANSAKSI.AsString:=vkode;
  QMasterTGL.AsDateTime:=DMFrm.QTimeJAM.AsDateTime;
  QMasterISPOST.AsString:='0';
  QMasterTTD1.AsString:=QTransaksiTTD1.AsString;
  QMasterTTD2.AsString:=QTransaksiTTD2.AsString;
  QMasterTTD3.AsString:=QTransaksiTTD3.AsString;
  QMasterTTD4.AsString:=QTransaksiTTD4.AsString;
  QMasterSTATUS.AsString:='BON BARANG';
  QMasterKIRIM_KE.AsString:='PEMAKAIAN';
  QMasterSTATUS.AsString:='OUT_IN';
  QMasterSHIFT.AsString:='0';
  QMasterGRUP.AsString:='E';
  QItem.Close;
  QItem2.Close;
  QItemResep.Close;
  wwDBEdit1.SetFocus;
end;

procedure TGantiSatuanFrm.QTransaksiBeforeOpen(DataSet: TDataSet);
begin
  QTransaksi.DeclareVariable('kd_transaksi', otString);
  QTransaksi.SQL.Text:='select a.* from '+cUserTabel+'vtransaksi a where a.kd_transaksi=:kd_transaksi';
  QTransaksi.SetVariable('kd_transaksi',vkode);
end;

procedure TGantiSatuanFrm.ppPageStyle1BeforePrint(Sender: TObject);
begin
 // ppNo2.AsInteger:=0;
end;

procedure TGantiSatuanFrm.Label14Click(Sender: TObject);
begin
  if DMFrm.FontDialog1.Execute then
  begin
    wwDBGrid1.Font.Name:=DMFrm.FontDialog1.Font.Name;
    wwDBGrid1.Font.Size:=DMFrm.FontDialog1.Font.Size;
    wwDBGrid1.Font.Color:=DMFrm.FontDialog1.Font.Color;
    wwDBGrid1.Font.Style:=DMFrm.FontDialog1.Font.Style;
  end;

end;

procedure TGantiSatuanFrm.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if ((not QMaster.IsEmpty) and (QMasterISPOST.AsString='0')) or (QMaster.State<>dsBrowse) then
  begin
    if MessageDlg('Data belum di POSTING/ Disimpan akan terhapus !',mtWarning,[mbOK, mbCancel],0)=mrOK then
    begin
     QMaster.Delete;
     CanClose:=True;
    end
     else
     CanClose:=FALSE;
  end;

end;

procedure TGantiSatuanFrm.QMasterAfterPost(DataSet: TDataSet);
begin
  PageControl1.Pages[1].TabVisible:=QMaster.IsEmpty or (QMasterISPOST.AsString='1');
  PageControl1.Pages[2].TabVisible:=QMaster.IsEmpty or (QMasterISPOST.AsString='1');
  if QMasterISPOST.AsString='1' then
  begin
      QProc_Update_PO.Close;
      QProc_Update_PO.Execute;
  end;
end;

procedure TGantiSatuanFrm.QMasterBeforeInsert(DataSet: TDataSet);
begin
  if DataSet['ISPOST']='0' then
  begin
    if MessageDlg('Data belum di-POSTING, batalkan ?', mtWarning, [mbYes, mbNo],0)=mrYes then
      DataSet.Delete
      else
        Abort;
  end;

end;

procedure TGantiSatuanFrm.ppGroupHeaderBand1BeforePrint(Sender: TObject);
begin
  ppNo.AsInteger:=ppNo.AsInteger+1;
end;

procedure TGantiSatuanFrm.QProc_Update_POBeforeQuery(Sender: TOracleQuery);
begin
  QProc_Update_PO.SetVariable('NO_PO',QMasterNO_BUKTI.AsString);
end;

procedure TGantiSatuanFrm.LookLokasiEnter(Sender: TObject);
begin
  QLokasi.Close;
  QLokasi.DeclareVariable('vjns_lokasi',otString);
  QLokasi.SQL.Text:='select * from '+cUserTabel+'sub_lokasi where jns_lokasi=''PEMAKAIAN'' and kd_lokasi=:vjns_lokasi';
  QLokasi.SetVariable('vjns_lokasi',vjns_lokasi);
  QLokasi.Open;
end;

procedure TGantiSatuanFrm.QItemBeforeQuery(Sender: TOracleDataSet);
begin
    QItem.DeclareVariable('vjns_brg',otString);
    QItem.DeclareVariable('vjns_lokasi',otString);
    QItem.DeclareVariable('TGL',otDate);
  	QItem.SQL.Text:='select a.kd_item, a.nama_item, a.kd_satuan, d.satuan, a.min_stok, a.kd_jns_item, b.kd_sub_lokasi,'+
      ' sum(b.qty_in-b.qty_out) as qty'+
      ' from '+cUserTabel+'item a, '+cUserTabel+'gd_stok b, '+cUserTabel+'sub_lokasi c, '+cUserTabel+'satuan d'+
      ' where a.kd_item=b.kd_item and b.kd_sub_lokasi=c.kd_sub_lokasi and'+
      ' a.kd_satuan=d.kd_satuan and c.jns_lokasi in (''READY'',''REKANAN'') and'+
      ' c.kd_lokasi=:vjns_lokasi and a.kd_jns_item=:vjns_brg and b.tgl<=:tgl'+
      ' group by a.kd_item, a.nama_item, a.kd_satuan, d.satuan, a.min_stok, a.kd_jns_item, b.kd_sub_lokasi';
    QItem.SetVariable('vjns_brg',vjns_brg);
    QItem.SetVariable('vjns_lokasi',vjns_lokasi);
    QItem.SetVariable('tgl',Trunc(QMasterTGL.AsDateTime)+1-1/86400);
//    ShowMessage(QItem.SQL.Text);
end;

procedure TGantiSatuanFrm.LookItemCloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin
  if modified then
  begin
    QDetailKETERANGAN.AsString:=QItemNAMA_ITEM.AsString;
    QDetailKD_SATUAN.AsString:=QItemKD_SATUAN.AsString;
    QDetailQTY1.AsFloat:=QItemQTY.AsFloat;
    QDetailKD_SUB_LOKASI.AsString:=QItemKD_SUB_LOKASI.AsString;
    QDetailKD_SUB_LOKASI2.AsString:=QLokasiKD_SUB_LOKASI.AsString;
  end;
end;

procedure TGantiSatuanFrm.QDetailNewRecord(DataSet: TDataSet);
begin
  QDetailIBUKTI.AsInteger:=QMasterIBUKTI.AsInteger;
  QDetailSTATUS.AsString:='1';
end;

procedure TGantiSatuanFrm.QDetailBeforePost(DataSet: TDataSet);
begin
  QDetailQTY3.AsFloat:=QDetailQTY2.AsFloat;

  if QDetailKD_ITEM.AsString='' then
     begin
        ShowMessage('BARANG harus diisi !');
        Abort;
     end
     else
  if QDetailKD_SUB_LOKASI2.AsString='' then
     begin
        ShowMessage('LOKASI TUJUAN harus diisi !');
        Abort;
     end
     else
  if QDetailQTY2.Asfloat=0 then
     begin
        ShowMessage('QTY dipindah harus diisi !');
        Abort;
     end
     else
  if QDetailQTY2.Asfloat>QDetailQTY1.Asfloat then
     begin
        ShowMessage('QTY dipindah tidak boleh lebih dari LOKASI ASAL !');
        Abort;
     end
     else
  if QDetailQTY1.Asfloat=0 then
     begin
        ShowMessage('QTY Barang harus ada !');
        Abort;
     end
     else
  if QDetailKD_SUB_LOKASI.AsString='' then
     begin
        ShowMessage('LOKASI harus diisi !');
        Abort;
     end;
end;

procedure TGantiSatuanFrm.TabSheet3Show(Sender: TObject);
begin
  QSOP.DeclareVariable('kd_transaksi',otString);
  QSOP.SQL.Text:='select sinopsis from '+cUserTabel+'vsop where kd_transaksi=:kd_transaksi';
  QSOP.SetVariable('kd_transaksi',vkode);
  QSOP.Open;

end;

procedure TGantiSatuanFrm.QItemResepBeforeOpen(DataSet: TDataSet);
begin
    QItemResep.DeclareVariable('vjns_brg',otString);
  	QItemResep.SQL.Text:='select * from '+cUserTabel+'vitemresep'+
      ' where kd_jns_item=:vjns_brg';
    QItemResep.SetVariable('vjns_brg',vjns_brg);
end;

procedure TGantiSatuanFrm.wwDBLookupComboDlg2Enter(Sender: TObject);
begin
  QItemResep.Open;
end;

procedure TGantiSatuanFrm.QDetail2BeforePost(DataSet: TDataSet);
begin
  QDetailQTY3.AsFloat:=QDetailQTY2.AsFloat;

  if QDetailKD_ITEM.AsString='' then
     begin
        ShowMessage('BARANG harus diisi !');
        Abort;
     end
     else
  if QDetailKD_SUB_LOKASI2.AsString='' then
     begin
        ShowMessage('LOKASI TUJUAN harus diisi !');
        Abort;
     end
     else
  if QDetailKD_SUB_LOKASI2.AsString=QDetailKD_SUB_LOKASI.AsString then
     begin
        ShowMessage('LOKASI TUJUAN harus berbeda !');
        Abort;
     end
     else
  if QDetailQTY2.Asfloat=0 then
     begin
        ShowMessage('QTY dipindah harus diisi !');
        Abort;
     end
     else
  if QDetailQTY2.Asfloat>QDetailQTY1.Asfloat then
     begin
        ShowMessage('QTY dipindah tidak boleh lebih dari LOKASI ASAL !');
        Abort;
     end
     else
  if QDetailQTY1.Asfloat=0 then
     begin
        ShowMessage('QTY Barang harus ada !');
        Abort;
     end
     else
  if QDetailKD_SUB_LOKASI.AsString='' then
     begin
        ShowMessage('LOKASI harus diisi !');
        Abort;
     end;

end;

procedure TGantiSatuanFrm.QDetail2NewRecord(DataSet: TDataSet);
begin
  QDetail2IBUKTI.AsInteger:=QMasterIBUKTI.AsInteger;
  QDetail2STATUS.AsString:='2';
end;

procedure TGantiSatuanFrm.LookItem2CloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin
  if Modified then
  begin
    QDetail2KETERANGAN.AsString:=QItem2NAMA_ITEM.AsString;
    QDetail2KD_SATUAN.AsString:=QItem2KD_SATUAN.AsString;
  end;
end;

procedure TGantiSatuanFrm.wwDBGrid3Enter(Sender: TObject);
begin
  QLokasi.Close;
  QLokasi.DeclareVariable('vjns_lokasi',otString);
  QLokasi.SQL.Text:='select * from '+cUserTabel+'sub_lokasi where jns_lokasi=''READY'' and kd_lokasi=:vjns_lokasi';
  QLokasi.SetVariable('vjns_lokasi',vjns_lokasi);
  QLokasi.Open;
end;

procedure TGantiSatuanFrm.QItem2BeforeQuery(Sender: TOracleDataSet);
begin
    QItem2.SetVariable('kd_jns_item',vjns_brg);
end;

procedure TGantiSatuanFrm.LookItem2Enter(Sender: TObject);
begin
  (sender as TwwDBLookupComboDlg).LookupTable.Open;
end;

end.
