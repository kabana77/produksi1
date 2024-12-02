unit PermintaanKoreksi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  DateUtils, Mask, wwdbedit, Wwdbspin, DB, Wwdatsrc, OracleData, Dialogs,
  Oracle, Buttons, wwSpeedButton, wwDBNavigator, wwclearpanel, Grids,
  Wwdbigrd, Wwdbgrid, StdCtrls, wwdbdatetimepicker, ComCtrls, ExtCtrls,
  ppViewr, ppDB, ppDBPipe, ppComm, ppRelatv, ppProd, ppClass, ppReport,
  ppVar, ppCtrls, ppBands, ppPrnabl, ppCache, ppEndUsr, ppModule,
  daDataModule, DBCtrls, wwdblook, Wwdbdlg, Wwdotdot, Wwdbcomb, ppBarCod,
  wwcheckbox, ppStrtch, ppMemo, raCodMod, wwriched, ppParameter;

type
  TPermintaanKoreksiFrm = class(TForm)
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
    QDetailLITEM: TStringField;
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
    wwDBNavigatorInputCancel: TwwNavButton;
    wwDBNavigatorInputButton1: TwwNavButton;
    wwDBNavigatorInputButton2: TwwNavButton;
    wwDBEdit1: TwwDBEdit;
    QDetailKD_SUB_LOKASI: TStringField;
    Label8: TLabel;
    QMasterSHIFT: TStringField;
    QMasterGRUP: TStringField;
    wwDBComboBox1: TwwDBComboBox;
    wwDBComboBox2: TwwDBComboBox;
    Label10: TLabel;
    QItem: TOracleDataSet;
    QItemNAMA_ITEM: TStringField;
    QItemKD_ITEM: TStringField;
    LookItem: TwwDBLookupComboDlg;
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
    QBrowseQTY2: TFloatField;
    QBrowseLOKASI2: TStringField;
    QDetailSELISIH: TFloatField;
    QBrowseSELISIH: TFloatField;
    QItemKD_SUB_LOKASI: TStringField;
    QItemQTY: TFloatField;
    ppDBText22: TppDBText;
    ppLabel30: TppLabel;
    ppDBText29: TppDBText;
    ppLabel31: TppLabel;
    QMasterSTATUS: TStringField;
    QSOP: TOracleDataSet;
    dsQSOP: TwwDataSource;
    wwDBRichEdit1: TwwDBRichEdit;
    QItemQTY2: TFloatField;
    QDetailQTY6: TFloatField;
    QDetailQTY7: TFloatField;
    QDetailQTY5: TFloatField;
    QDetailQTY4: TFloatField;
    QMasterNO_RESEP: TStringField;
    wwDBComboBox3: TwwDBComboBox;
    Label12: TLabel;
    QBrowseIBUKTI: TFloatField;
    QMasterTGL_INSERT: TDateTimeField;
    QMasterOPR_INSERT: TStringField;
    DBText4: TDBText;
    DBText2: TDBText;
    Label16: TLabel;
    Label17: TLabel;
    QDetailKD_ITEM2: TStringField;
    QBrowseNO_LOT: TStringField;
    QBrowseNO_RESEP: TStringField;
    QMasterQTY_RESEP: TFloatField;
    QTotal: TOracleDataSet;
    QTotalPCS: TFloatField;
    QTotalKG: TFloatField;
    ppReportMitra: TppReport;
    ppTitleBand3: TppTitleBand;
    ppHeaderBand3: TppHeaderBand;
    ppLabel34: TppLabel;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppDBText51: TppDBText;
    ppDBText52: TppDBText;
    ppDBText53: TppDBText;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    ppDBText54: TppDBText;
    ppLabel42: TppLabel;
    ppDBText55: TppDBText;
    ppLabel44: TppLabel;
    ppLabel46: TppLabel;
    ppLabel51: TppLabel;
    ppDetailBand3: TppDetailBand;
    ppNo3: TppVariable;
    ppDBMemo4: TppDBMemo;
    ppDBText58: TppDBText;
    ppFooterBand3: TppFooterBand;
    ppUserCetakMitra: TppLabel;
    ppDBBarCode2: TppDBBarCode;
    ppDBText61: TppDBText;
    ppDBText62: TppDBText;
    ppDBText63: TppDBText;
    ppDBText64: TppDBText;
    ppDBText65: TppDBText;
    ppDBText66: TppDBText;
    ppDBText67: TppDBText;
    ppDBText68: TppDBText;
    ppDBText69: TppDBText;
    ppDBText70: TppDBText;
    ppSummaryBand3: TppSummaryBand;
    ppLabel54: TppLabel;
    ppDBMemo5: TppDBMemo;
    ppPageStyle2: TppPageStyle;
    ppLabel55: TppLabel;
    ppDBText71: TppDBText;
    ppDBText72: TppDBText;
    ppDBText73: TppDBText;
    ppParameterList3: TppParameterList;
    BitBtn1: TBitBtn;
    ppLabel56: TppLabel;
    ppLabel57: TppLabel;
    ppLabel47: TppLabel;
    ppDBText56: TppDBText;
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
    ppNo2: TppVariable;
    ppDBText30: TppDBText;
    ppDBMemo1: TppDBMemo;
    ppDBText11: TppDBText;
    ppDBText18: TppDBText;
    ppDBText21: TppDBText;
    ppDBText20: TppDBText;
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
    QItemRASIO2: TFloatField;
    QDetailRASIO: TFloatField;
    QCEKItem: TOracleDataSet;
    QCEKItemCEK_KD_ITEM: TFloatField;
    QRoundQTY: TOracleDataSet;
    QRoundQTYPQTY: TFloatField;
    Label18: TLabel;
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
    procedure Button1Click(Sender: TObject);
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
    procedure QItemBeforeQuery(Sender: TOracleDataSet);
    procedure LookItemCloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure QDetailNewRecord(DataSet: TDataSet);
    procedure QDetailBeforePost(DataSet: TDataSet);
    procedure QDetailCalcFields(DataSet: TDataSet);
    procedure TabSheet3Show(Sender: TObject);
    procedure wwDBGrid1UpdateFooter(Sender: TObject);
    procedure wwDBComboBox3Change(Sender: TObject);
    procedure wwDBComboBox3CloseUp(Sender: TwwDBComboBox; Select: Boolean);
    procedure QDetailQTY4Change(Sender: TField);
    procedure BitBtn1Click(Sender: TObject);
    procedure QMasterNO_RESEPChange(Sender: TField);
    procedure wwDBComboBox3Enter(Sender: TObject);
    procedure QMasterAfterDelete(DataSet: TDataSet);
    procedure wwDBGrid1CalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure QDetailQTY5Change(Sender: TField);
  private
    { Private declarations }
    vshift, vgrup, vorder, SelectedFont, vkode, vjns_brg, vjns_lokasi, vJNS_TRX : String;
  public
    { Public declarations }

  end;

var
  PermintaanKoreksiFrm: TPermintaanKoreksiFrm;

procedure ShowForm(pNamaMenu:String; pkode : String; pjudul : string; pjns_brg : String; pjns_lokasi : String; pJNS_TRX : String);

implementation

uses DM, Pembelian;

{$R *.dfm}

procedure ShowForm(pNamaMenu:String; pkode : String; pjudul : string; pjns_brg : String; pjns_lokasi : String; pJNS_TRX : String);
var
  mychar : string[125];
Begin
// Hak Menu
  DMFrm.cHakInput:=DMFrm.QMenuUser.Lookup('NAMA_COMPONENT',pNamaMenu,'HAK_INPUT')='1';
  DMFrm.cBtnDesign:=DMFrm.QMenuUser.Lookup('NAMA_COMPONENT',pNamaMenu,'HAK_DESIGN')='1';
  DMFrm.cBtnExport:=DMFrm.QMenuUser.Lookup('NAMA_COMPONENT',pNamaMenu,'HAK_EXPORT')='1';

//  if BPBFrm=Nil then
  begin
    PermintaanKoreksiFrm:=TPermintaanKoreksiFrm.Create(Application);
    PermintaanKoreksiFrm.PageControl1.ActivePageIndex:=1;
    if not DMFrm.cHakInput then
    begin
       PermintaanKoreksiFrm.QMaster.ReadOnly:=True;
       PermintaanKoreksiFrm.QDetail.ReadOnly:=True;
    end;
    mychar:=pjudul;
    Delete(mychar,Pos('&',mychar),1);
    pjudul:=mychar;
    PermintaanKoreksiFrm.Caption:=UpperCase(pjudul);
    PermintaanKoreksiFrm.vkode:=pkode;
    PermintaanKoreksiFrm.vjns_lokasi:=pjns_lokasi;
    PermintaanKoreksiFrm.vjns_brg:=pjns_brg;

    PermintaanKoreksiFrm.vJNS_TRX:=pJNS_TRX; //MAA 10-09-2019

    PermintaanKoreksiFrm.QTransaksi.Open;

    PermintaanKoreksiFrm.Caption:=UpperCase(pjudul);
    PermintaanKoreksiFrm.PanelHeader.Caption:=PermintaanKoreksiFrm.QTransaksiKD_TRANSAKSI.AsString+'. '+PermintaanKoreksiFrm.QTransaksiNAMA_TRANSAKSI.AsString;
    PermintaanKoreksiFrm.wwDBGrid1.IniAttributes.FileName:=DMFrm.sAppPath+Application.Title+'2.ini';
    PermintaanKoreksiFrm.wwDBGrid1.IniAttributes.SectionName:=PermintaanKoreksiFrm.Caption+'1';
    PermintaanKoreksiFrm.wwDBGrid1.IniAttributes.Enabled:=True;
    PermintaanKoreksiFrm.wwDBGrid1.LoadFromIniFile;
    PermintaanKoreksiFrm.wwDBGrid2.IniAttributes.FileName:=DMFrm.sAppPath+Application.Title+'2.ini';
    PermintaanKoreksiFrm.wwDBGrid2.IniAttributes.SectionName:=PermintaanKoreksiFrm.Caption+'2';
    PermintaanKoreksiFrm.wwDBGrid2.IniAttributes.Enabled:=True;
    PermintaanKoreksiFrm.wwDBGrid2.LoadFromIniFile;
{    PermintaanKoreksiFrm.wwDBGrid3.IniAttributes.FileName:=DMFrm.sAppPath+Application.Title+'3.ini';
    PermintaanKoreksiFrm.wwDBGrid3.IniAttributes.SectionName:=PermintaanKoreksiFrm.Caption+'3';
    PermintaanKoreksiFrm.wwDBGrid3.IniAttributes.Enabled:=True;
    PermintaanKoreksiFrm.wwDBGrid3.LoadFromIniFile;}
    DMFrm.ProcReadIni(Application.Title,PermintaanKoreksiFrm.Caption+'1',PermintaanKoreksiFrm.wwDBGrid1);
    DMFrm.ProcReadIni(Application.Title,PermintaanKoreksiFrm.Caption+'2',PermintaanKoreksiFrm.wwDBGrid2);
//    DMFrm.ProcReadIni(Application.Title,PermintaanKoreksiFrm.Caption+'3',PermintaanKoreksiFrm.wwDBGrid3);
    PermintaanKoreksiFrm.wwDBSpinLine1.Value:=PermintaanKoreksiFrm.wwDBGrid1.RowHeightPercent;
    PermintaanKoreksiFrm.wwDBSpinLine2.Value:=PermintaanKoreksiFrm.wwDBGrid2.RowHeightPercent;
//    PermintaanKoreksiFrm.wwDBSpinLine2.Value:=PermintaanKoreksiFrm.wwDBGrid3.RowHeightPercent;

  end;

//  PermintaanKoreksiFrm.PanelHeader.Caption:=PermintaanKoreksiFrm.QTransaksiKD_TRANSAKSI.AsString+'. '+'KOREKSI SOFTCONE';
if pJNS_TRX = 'DALAM_PROSES' then
begin
      PermintaanKoreksiFrm.PanelHeader.Caption:=PermintaanKoreksiFrm.QTransaksiKD_TRANSAKSI.AsString+'. '+'KOREKSI DALAM PROSES SOFTCONE';
end;
if pJNS_TRX = 'HASIL_PROSES' then
begin
      PermintaanKoreksiFrm.PanelHeader.Caption:=PermintaanKoreksiFrm.QTransaksiKD_TRANSAKSI.AsString+'. '+'KOREKSI HASIL PROSES SOFTCONE';
end;

  PermintaanKoreksiFrm.Show;
end;

procedure TPermintaanKoreksiFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   DMFrm.ProcWtiteIni(Application.Title,Caption+'1',wwDBGrid1);
   DMFrm.ProcWtiteIni(Application.Title,Caption+'2',wwDBGrid2);
//   DMFrm.ProcWtiteIni(Application.Title,Caption+'3',wwDBGrid3);
   Action:=caFree;
   PermintaanKoreksiFrm:=Nil;
end;

procedure TPermintaanKoreksiFrm.FormCreate(Sender: TObject);
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

//  PanelHeader.Caption:=UpperCase(Caption);
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

procedure TPermintaanKoreksiFrm.BtnExportClick(Sender: TObject);
begin
  if QBrowse.Active then
  begin
     DMFrm.SaveDialog1.DefaultExt:='XLK';
     DMFrm.SaveDialog1.Filter:='Excel files (*.XLK)|*.XLK';
     DMFrm.SaveDialog1.FileName:=PanelHeader.Caption+' '+ vTglAwal.Text+' sd '+vTglAkhir.Text+'.xlK';
     wwDBGrid2.ExportOptions.TitleName:='TRANSAKSI LAINNYA SOFTCONES';
       if DMFrm.SaveDialog1.Execute then
       begin
         try
         wwDBGrid2.ExportOptions.FileName:=DMFrm.SaveDialog1.FileName;
         wwDBGrid2.ExportOptions.Save;
         ShowMessage('Simpan Sukses !');
         except
         ShowMessage('Simpan Gagal !');
         end;
       end;
  end
  else
    ShowMessage('Tabel belum di-OPEN !');
end;

procedure TPermintaanKoreksiFrm.BtnOkClick(Sender: TObject);
var
  i : word;
  vpertama : boolean;
  vjam : string;
  vjam1,vjam2 : Integer;
  begin
 DMFrm.QUserTime.Open;
 DMFrm.QHak_jam.Open;
 vjam := DMFrm.QUserTimeVJAM.AsString;
 vjam1:= StrToInt(DMFrm.QHak_JamJAM1.AsString);
 vjam2 := StrToInt(DMFrm.QHak_JamJAM2.AsString);

//if (DMFrm.QUserTimeVJAM.AsString >= QHak_JamJAM1.AsString) And (DMFrm.QUserTimeVJAM.AsString <= QHak_JamJAM2.AsString) then
if (StrToInt(vjam) >= vjam1) And (StrToInt(vjam) <= vjam2) then
begin
//ShowMessage(IntToStr(vjam1));
ShowMessage('Waktunya input data !!! Silahkan Browse lagi Setelah Jam '+DMFrm.QHak_JamJAM2.AsString);
Qbrowse.Close;
abort;
end
else
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
end;

procedure TPermintaanKoreksiFrm.wwDBGrid2TitleButtonClick(Sender: TObject;
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

procedure TPermintaanKoreksiFrm.QBrowseAfterScroll(DataSet: TDataSet);
begin
  LabelBanner.Caption:='Record ke '+IntToStr(QBrowse.RecNo)+' dari '+FormatFloat('#,#',QBrowse.RecordCount)+' Records';
end;

procedure TPermintaanKoreksiFrm.BtnClose1Click(Sender: TObject);
begin
  Close;
end;

procedure TPermintaanKoreksiFrm.BtnClose2Click(Sender: TObject);
begin
  Close;
end;

procedure TPermintaanKoreksiFrm.vTglAwalChange(Sender: TObject);
begin
  vTglAkhir.DateTime:=EndOfTheMonth(vTglAwal.Date);
end;

procedure TPermintaanKoreksiFrm.wwDBSpinLine2Change(Sender: TObject);
begin
    wwDBGrid2.RowHeightPercent:=Round(wwDBSpinLine2.Value);
end;

procedure TPermintaanKoreksiFrm.BtnFindClick(Sender: TObject);
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

procedure TPermintaanKoreksiFrm.BtnOk2Click(Sender: TObject);
begin
  if QBrowse.QBEMode then
  begin
    QBrowse.ExecuteQBE;
    wwDBGrid2.Options:=wwDBGrid2.Options+[dgRowSelect,dgAlwaysShowSelection];
  end;

end;

procedure TPermintaanKoreksiFrm.ppHeaderBand1BeforePrint(Sender: TObject);
begin
  ppNo.AsInteger:=0;
end;

procedure TPermintaanKoreksiFrm.BtnPrintBrowseClick(Sender: TObject);
begin
  if vTglAwal.Date>vTglAkhir.DateTime then
    ShowMessage('Tgl. Akhir harus lebih besar dari Tgl. Awal !')
    else
    begin
      ppReportBrowse.Print;
    end;
end;

procedure TPermintaanKoreksiFrm.Button1Click(Sender: TObject);
begin
  ppDesigner1.ShowModal;
end;

procedure TPermintaanKoreksiFrm.BtnDesign2Click(Sender: TObject);
begin
  ppDesigner1.ShowModal;
end;

procedure TPermintaanKoreksiFrm.ppTitleBand1BeforePrint(Sender: TObject);
begin
  ppNamaLaporan.Caption:=Caption;
  ppNo2.AsInteger:=0;
  ppNo3.AsInteger:=0;
  ppPeriode.Caption:=vTglAwal.Text+' s/d '+vTglAkhir.Text;
  DMFrm.QTime.Close;
  DMFrm.QTime.Open;
  ppUserCetak.Caption:=DMFrm.QTimeVUSER_CETAK.AsString;
end;

procedure TPermintaanKoreksiFrm.wwDBSpinLine1Change(Sender: TObject);
begin
    wwDBGrid1.RowHeightPercent:=Round(wwDBSpinLine1.Value);
//    wwDBGrid3.RowHeightPercent:=Round(wwDBSpinLine1.Value);
end;

procedure TPermintaanKoreksiFrm.EditCariKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=13 then
  begin

  IF copy(editCari.text,1,3) = QmasterKd_transaksi.asstring then
    begin
    wwDBSpinLine1.SetFocus;
    QMaster.Close;
    QMaster.SetVariable('myparam1','0');
    QMaster.SetVariable('myparam2',EditCari.Text);
    QMaster.Open;
    QDetail.Close;
    QDetail.Open;
    EditCari.SetFocus;
    end
  else
    ShowMessage('Kode transaksi tidak sesuai');
  end;

end;

procedure TPermintaanKoreksiFrm.TabSheet1Show(Sender: TObject);
var
t1 : real;
begin
  t1 := 0;
  QMaster.Close;
  QMaster.SetVariable('myparam1',QBrowseIBUKTI.AsInteger);
  QMaster.SetVariable('myparam2',QBrowseNO_NOTA.AsString);
  QMaster.Open;
  QDetail.Close;
  QDetail.Open;

   QDetail.First;
   while not QDetail.Eof do
      begin
      QDetailQTY4Change(nil);
      t1:=t1+QDetailQTY5.AsFloat;
      QDetail.Next;
      end;

  wwDBGrid1UpdateFooter(nil);

{  if (QMasterNO_RESEP.AsString='KOREKSI1') OR (QMasterNO_RESEP.AsString='RETUR GD WARNA') then
  wwDBGrid1.ColumnByName('QTY5').FooterValue:=FormatFloat('#,0.0000;-#,0.0000;-',t1);
  }
  if vJNS_TRX = 'DALAM_PROSES' then
  begin
  wwDBGrid1.ColumnByName('QTY5').FooterValue:=FormatFloat('#,0.0000;-#,0.0000;-',t1);
  end
  else
  begin
  wwDBGrid1.ColumnByName('QTY5').FooterValue:=FormatFloat('#,0;-#,0;-',t1);
  end;

  wwDBComboBox3Enter(TabSheet1);



  EditCari.Text:=QBrowseIBUKTI.AsString;
  if (QBrowseNO_NOTA.AsString<>'') then EditCari.Text:=QBrowseNO_NOTA.AsString;
end;

procedure TPermintaanKoreksiFrm.TabSheet1Exit(Sender: TObject);
begin
  EditCari.Text:='';
end;

procedure TPermintaanKoreksiFrm.ppDetailBand2BeforePrint(Sender: TObject);
begin
  ppNo2.AsInteger:=ppNo2.AsInteger+1;
  ppNo3.AsInteger:=ppNo3.AsInteger+1;
end;

procedure TPermintaanKoreksiFrm.ppFooterBand2BeforePrint(Sender: TObject);
begin
//  ppHalInput.Visible:=ppReportInput.PageNo>1;
  DMFrm.QTime.Close;
  DMFrm.QTime.Open;
  ppUserCetak2.Caption:=DMFrm.QTimeVUSER_CETAK.AsString;
  ppUserCetakMitra.Caption:=DMFrm.QTimeVUSER_CETAK.AsString;
end;

procedure TPermintaanKoreksiFrm.BtnPrintInputClick(Sender: TObject);
begin
  ppReportInput.Print;
end;

procedure TPermintaanKoreksiFrm.QMasterBeforePost(DataSet: TDataSet);
begin
  vshift:=QMasterSHIFT.AsString;
  vgrup:=QMasterGRUP.AsString;
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

procedure TPermintaanKoreksiFrm.wwDBGrid1Enter(Sender: TObject);
begin
  if QMaster.State<>dsBrowse then
  try
    QMaster.Post;
  except
    ShowMessage('Maaf, ada masalah di pengisian MASTER !');
  end;
end;

procedure TPermintaanKoreksiFrm.wwDBGrid2DblClick(Sender: TObject);
begin
  TabSheet1.Show;
end;

procedure TPermintaanKoreksiFrm.Label5Click(Sender: TObject);
begin
  if DMFrm.FontDialog1.Execute then
  begin
    wwDBGrid2.Font.Name:=DMFrm.FontDialog1.Font.Name;
    wwDBGrid2.Font.Size:=DMFrm.FontDialog1.Font.Size;
    wwDBGrid2.Font.Color:=DMFrm.FontDialog1.Font.Color;
    wwDBGrid2.Font.Style:=DMFrm.FontDialog1.Font.Style;
  end;
end;

procedure TPermintaanKoreksiFrm.LookItemEnter(Sender: TObject);
begin

    QItem.DisableControls;
    QItem.Close;
    QItem.DeclareVariable('pkd_lokasi',otString);
    QItem.DeclareVariable('psysdate',otDate);

//    if (QMasterNO_RESEP.AsString='KOREKSI1') OR (QMasterNO_RESEP.AsString='RETUR GD WARNA') then
  if vJNS_TRX = 'DALAM_PROSES' then
    begin
  //  showmessage ('TRANSAKSI KOREKSI WIP DALAM PROSES SOFTCONES');
    QItem.SQL.Text:='SELECT A.*,181.44 as RASIO2 FROM('+
                    ' select kd_item, nama_item,kd_sub_lokasi,'+
                    ' (awmasuk1+ (awmasuk3+awmasuk3IN) + (awkoreksi1+awkoreksi1IN) ) - (awkeluar1+ (awkeluar5+awkeluar5OUT) ) as qty,'+
                    ' (round( (((awmasuk1+ (awmasuk3+awmasuk3IN) + (awkoreksi1+awkoreksi1IN) ) - (awkeluar1+ (awkeluar5+awkeluar5OUT) )) /181.44) ,4)) as qty2'+

                    ' from '+

                    '(select a.kd_item,a.nama_item,'+''''+'10-00000'+''''+' as kd_sub_lokasi,'+
                    '(select nvl(SUM(QTY),0) AS qty FROM '+
                    '(SELECT kd_item,nvl(sum(qty),0) as qty FROM ('+
                    ' (select kd_item,round(nvl(sum(qty),0),4) as qty from pmtx02.vvbon_barang_nbb'+
                    '  where id_bag='+''''+'H'+''''+' and id_sub_bag='+''''+'A'+''''+' and tanggal<=trunc(:psysdate)'+
                    '  group by kd_item)'+

                    ' Union All'+

                    ' (select kd_item,round(nvl(sum(qty),0),4) as qty  from pmtx02.vvbon_barang_nbb@gjduduk'+
                    '  where id_bag='+''''+'H'+''''+' and id_sub_bag='+''''+'A'+''''+' and tanggal<=trunc(:psysdate)'+
                    '  group by kd_item)'+
                    ' )group by kd_item'+
                    ' )WHERE (kd_item=b.kd_item2) or (kd_item=b.kd_item3) or (kd_item=b.kd_item4) or (kd_item=b.kd_item5) or (kd_item=b.kd_item6) or (kd_item=b.kd_item7) or (kd_item=b.kd_item8) or (kd_item=b.kd_item9)'+
                    ' or (kd_item=b.kd_item10) or (kd_item=b.kd_item11) or (kd_item=b.kd_item12) or (kd_item=b.kd_item13) or (kd_item=b.kd_item14)'+
                    ' )/1 AS awmasuk1,'+

                    ' (select round(nvl(sum(qty_out-qty_in),0),4) from ipisma_db3.vkartu_stok_P1'+
                    '  where jns_koreksi='+''''+'RETUR GD WARNA'+''''+' and kd_lokasi=:pkd_lokasi and kd_item=a.kd_item and kd_transaksi='+''''+'799'+''''+
                    '  and tgl<=trunc(:psysdate))/1 AS awmasuk3,'+
                    ' (select round(nvl(sum(qty_IN),0),4) from ipisma_db3.vkartu_stok_P1'+
                    '  where jns_koreksi='+''''+'RETUR_GD_WARNA_IN'+''''+' and kd_lokasi=:pkd_lokasi and kd_item=a.kd_item and kd_transaksi='+''''+'799'+''''+
                    '  and tgl<=trunc(:psysdate))/1 AS awmasuk3IN,'+

                    ' (select round(nvl(sum(qty_out-qty_in),0),4) from ipisma_db3.vkartu_stok_P1'+
                    '  where jns_koreksi=' +''''+'KOREKSI1'+''''+' and kd_lokasi=:pkd_lokasi and kd_item=a.kd_item and kd_transaksi='+''''+'799'+''''+' and qty_in<0'+
                    '  and tgl<=trunc(:psysdate))/1 AS awkoreksi1,'+
                    ' (select round(nvl(sum(qty_IN),0),4) from ipisma_db3.vkartu_stok_P1'+
                    '  where jns_koreksi=' +''''+'KOREKSI1_IN'+''''+' and kd_lokasi=:pkd_lokasi and kd_item=a.kd_item and kd_transaksi='+''''+'799'+''''+
                    '  and tgl<=trunc(:psysdate))/1 AS awkoreksi1IN,'+

                    ' (select round(nvl(sum(qty_in-qty_out),0),4) from ipisma_db3.vkartu_stok_P1'+
                    '  where kd_lokasi=:pkd_lokasi and kd_item=a.kd_item and kd_transaksi='+''''+'791' +''''+' and jns_lokasi='+''''+'LOKASI'+''''+
                    '  and tgl<=trunc(:psysdate))/1 AS awkeluar1,'+

                    ' (select round(nvl(sum(qty_in-qty_out),0),4) from ipisma_db3.vkartu_stok_P1'+
                    '  where jns_koreksi= '+''''+'KOREKSI1' +''''+' and kd_lokasi=:pkd_lokasi and kd_item=a.kd_item and kd_transaksi=' +''''+'799'+''''+' and qty_in>0'+
                    '  and tgl<=trunc(:psysdate))/1 AS awkeluar5,'+
                    ' (select round(nvl(sum(qty_OUT),0),4) from ipisma_db3.vkartu_stok_P1'+
                    '  where jns_koreksi= '+''''+'KOREKSI1_OUT' +''''+' and kd_lokasi=:pkd_lokasi and kd_item=a.kd_item and kd_transaksi=' +''''+'799'+''''+
                    '  and tgl<=trunc(:psysdate))/1 AS awkeluar5OUT'+

                    ' from ipisma_db3.vitemall a, ipisma_db3.VKONVERSI_ITEM_PGD b'+
                    ' where a.kd_item=b.kd_item1 and a.kd_jns_item=:pkd_lokasi '+
                    ' order by a.nama_item)  '+
                    ')  A, ipisma_db3.vitemall B WHERE A.kd_item=B.kd_item ORDER BY A.QTY desc,A.QTY2 desc, A.NAMA_ITEM';
//showmessage (QItem.SQL.Text);
    end
    else
    begin
  //  showmessage ('TRANSAKSI KOREKSI WIP HASIL PROSES SOFTCONES');
    QItem.SQL.Text:='SELECT A.*,B.RASIO2 FROM(  '+
                    ' select kd_item, nama_item, kd_sub_lokasi,  '+
                    ' (awmasuk1+ (awmasuk5+awmasuk5IN) + (awmasuk3+awmasuk3IN) + (awkoreksi1+awkoreksi1IN) ) - (awkeluar1+ (awkeluar5+awkeluar5OUT) + (awkeluar3+awkeluar3OUT) ) as qty,  '+
                    ' (awmasuk2+ (awmasuk6+awmasuk6IN) + (awmasuk4+awmasuk4IN) + (awkoreksi2+awkoreksi2IN) ) - (awkeluar2+ (awkeluar6+awkeluar6OUT) + (awkeluar4+awkeluar4OUT) ) as qty2  '+

                    ' from  '+
                    ' (select a.kd_item, a.nama_item, '+''''+'10-00000'+''''+' as kd_sub_lokasi,  '+
                    ' (select round(nvl(sum(qty_in-qty_out),0),4) from ipisma_db3.vkartu_stok_P1  '+
                    '   where kd_lokasi=:pkd_lokasi and kd_item=a.kd_item and kd_transaksi='+''''+'791'+''''+
                    '   and trunc(tgl)<=trunc(:psysdate))/1 AS awmasuk1,  '+
                    ' (select round(nvl(sum(qty_in2-qty_out2),0),4) from ipisma_db3.vkartu_stok_P1  '+
                    '   where kd_lokasi=:pkd_lokasi and kd_item=a.kd_item and kd_transaksi='+''''+'791'+''''+
                    '   and trunc(tgl)<=trunc(:psysdate))/1 AS awmasuk2,  '+

                    ' (select round(nvl(sum(qty_in-qty_out),0),4) from ipisma_db3.vkartu_stok_P1  '+
                    '   where jns_koreksi='+''''+'RETUR GD WARNA2'+''''+' and kd_lokasi=:pkd_lokasi and kd_item=a.kd_item and kd_transaksi='+''''+'799'+''''+
                    '   and trunc(tgl)<=trunc(:psysdate))/1 AS awmasuk5,  '+
                    ' (select round(nvl(sum(qty_IN),0),4) from ipisma_db3.vkartu_stok_P1  '+
                    '   where jns_koreksi='+''''+'RETUR_GD_WARNA2_IN'+''''+' and kd_lokasi=:pkd_lokasi and kd_item=a.kd_item and kd_transaksi='+''''+'799'+''''+
                    '   and trunc(tgl)<=trunc(:psysdate))/1 AS awmasuk5IN,  '+
                    ' (select round(nvl(sum(qty_in2-qty_out2),0),4) from ipisma_db3.vkartu_stok_P1  '+
                    '   where jns_koreksi='+''''+'RETUR GD WARNA2'+''''+' and kd_lokasi=:pkd_lokasi and kd_item=a.kd_item and kd_transaksi='+''''+'799'+''''+
                    '   and trunc(tgl)<=trunc(:psysdate))/1 AS awmasuk6,  '+
                    ' (select round(nvl(sum(qty_IN2),0),4) from ipisma_db3.vkartu_stok_P1  '+
                    '   where jns_koreksi='+''''+'RETUR_GD_WARNA2_IN'+''''+' and kd_lokasi=:pkd_lokasi and kd_item=a.kd_item and kd_transaksi='+''''+'799'+''''+
                    '   and trunc(tgl)<=trunc(:psysdate))/1 AS awmasuk6IN,  '+

                    ' (select round(nvl(sum(qty_in-qty_out),0),4) from ipisma_db3.vkartu_stok_P1  '+
                    '   where jns_koreksi='+''''+'PROSES ULANG'+''''+' and kd_lokasi=:pkd_lokasi and kd_item=a.kd_item and kd_transaksi='+''''+'799'+''''+
                    '   and trunc(tgl)<=trunc(:psysdate))/1 AS awmasuk3,  '+
                    ' (select round(nvl(sum(qty_IN),0),4) from ipisma_db3.vkartu_stok_P1  '+
                    '   where jns_koreksi='+''''+'PROSES_ULANG_IN'+''''+' and kd_lokasi=:pkd_lokasi and kd_item=a.kd_item and kd_transaksi='+''''+'799'+''''+
                    '   and trunc(tgl)<=trunc(:psysdate))/1 AS awmasuk3IN,  '+
                    ' (select round(nvl(sum(qty_in2-qty_out2),0),4) from ipisma_db3.vkartu_stok_P1  '+
                    '   where jns_koreksi = '+''''+'PROSES ULANG'+''''+' and kd_lokasi=:pkd_lokasi and kd_item=a.kd_item and kd_transaksi='+''''+'799'+''''+
                    '   and trunc(tgl)<=trunc(:psysdate))/1 AS awmasuk4,  '+
                    ' (select round(nvl(sum(qty_IN2),0),4) from ipisma_db3.vkartu_stok_P1  '+
                    '   where jns_koreksi = '+''''+'PROSES_ULANG_IN'+''''+' and kd_lokasi=:pkd_lokasi and kd_item=a.kd_item and kd_transaksi='+''''+'799'+''''+
                    '   and trunc(tgl)<=trunc(:psysdate))/1 AS awmasuk4IN,  '+

                    ' (select round(nvl(sum(qty_in-qty_out),0),4) from ipisma_db3.vkartu_stok_P1  '+
                    '   where jns_koreksi='+''''+'KOREKSI2'+''''+' and kd_lokasi=:pkd_lokasi and kd_item=a.kd_item and kd_transaksi='+''''+'799'+''''+' and qty_in>0  '+
                    '   and trunc(tgl)<=trunc(:psysdate))/1 AS awkoreksi1,  '+
                    ' (select round(nvl(sum(qty_IN),0),4) from ipisma_db3.vkartu_stok_P1  '+
                    '   where jns_koreksi='+''''+'KOREKSI2_IN'+''''+' and kd_lokasi=:pkd_lokasi and kd_item=a.kd_item and kd_transaksi='+''''+'799'+''''+
                    '   and trunc(tgl)<=trunc(:psysdate))/1 AS awkoreksi1IN,  '+
                    ' (select round(nvl(sum(qty_in2-qty_out2),0),4) from ipisma_db3.vkartu_stok_P1  '+
                    '   where jns_koreksi='+''''+'KOREKSI2'+''''+' and kd_lokasi=:pkd_lokasi and kd_item=a.kd_item and kd_transaksi='+''''+'799'+''''+' and qty_in>0  '+
                    '   and trunc(tgl)<=trunc(:psysdate))/1 AS awkoreksi2,  '+
                    ' (select round(nvl(sum(qty_IN2),0),4) from ipisma_db3.vkartu_stok_P1  '+
                    '   where jns_koreksi='+''''+'KOREKSI2_IN'+''''+' and kd_lokasi=:pkd_lokasi and kd_item=a.kd_item and kd_transaksi='+''''+'799'+''''+
                    '   and trunc(tgl)<=trunc(:psysdate))/1 AS awkoreksi2IN,  '+

                    ' (select round(nvl(sum(qty_out-qty_in),0),4) from ipisma_db3.vkartu_stok_P1  '+
                    '   where kd_lokasi=:pkd_lokasi and kd_item=a.kd_item and kd_transaksi='+''''+'794'+''''+
                    '   and trunc(tgl)<=trunc(:psysdate))/1 AS awkeluar1,  '+
                    ' (select round(nvl(sum(qty_out2-qty_in2),0),4) from ipisma_db3.vkartu_stok_P1  '+
                    '   where kd_lokasi=:pkd_lokasi and kd_item=a.kd_item and kd_transaksi='+''''+'794'+''''+
                    '   and trunc(tgl)<=trunc(:psysdate))/1 AS awkeluar2,  '+

                    ' (select round(nvl(sum(qty_out-qty_in),0),4) from ipisma_db3.vkartu_stok_P1  '+
                    '   where jns_koreksi = '+''''+'KELUAR PROSES'+''''+' and kd_lokasi=:pkd_lokasi and kd_item=a.kd_item and kd_transaksi='+''''+'799'+''''+
                    '   and trunc(tgl)<=trunc(:psysdate))/1 AS awkeluar5,  '+
                    ' (select round(nvl(sum(qty_OUT),0),4) from ipisma_db3.vkartu_stok_P1  '+
                    '   where jns_koreksi = '+''''+'KELUAR_PROSES_OUT'+''''+' and kd_lokasi=:pkd_lokasi and kd_item=a.kd_item and kd_transaksi='+''''+'799'+''''+
                    '   and trunc(tgl)<=trunc(:psysdate))/1 AS awkeluar5OUT,  '+
                    ' (select round(nvl(sum(qty_out2-qty_in2),0),4) from ipisma_db3.vkartu_stok_P1  '+
                    '   where jns_koreksi ='+''''+'KELUAR PROSES'+''''+' and kd_lokasi=:pkd_lokasi and kd_item=a.kd_item and kd_transaksi='+''''+'799'+''''+
                    '   and trunc(tgl)<=trunc(:psysdate))/1 AS awkeluar6,  '+
                    ' (select round(nvl(sum(qty_OUT2),0),4) from ipisma_db3.vkartu_stok_P1  '+
                    '   where jns_koreksi ='+''''+'KELUAR_PROSES_OUT'+''''+' and kd_lokasi=:pkd_lokasi and kd_item=a.kd_item and kd_transaksi='+''''+'799'+''''+
                    '   and trunc(tgl)<=trunc(:psysdate))/1 AS awkeluar6OUT,  '+

                    ' (select round(nvl(sum(qty_out-qty_in),0),4) from ipisma_db3.vkartu_stok_P1  '+
                    '   where jns_koreksi in ('+''''+'KOREKSI2'+''''+','+''''+'KEMITRAAN'+''''+','+''''+'RETUR GD WARNA2'+''''+') and kd_lokasi=:pkd_lokasi and kd_item=a.kd_item and kd_transaksi='+''''+'799'+''''+' and qty_in<0  '+
                    '   and trunc(tgl)<=trunc(:psysdate))/1 AS awkeluar3,  '+
                    ' (select round(nvl(sum(qty_OUT),0),4) from ipisma_db3.vkartu_stok_P1  '+
                    '   where jns_koreksi in ('+''''+'KOREKSI2_OUT'+''''+','+''''+'KEMITRAAN_OUT'+''''+','+''''+'RETUR_GD_WARNA2_OUT'+''''+') and kd_lokasi=:pkd_lokasi and kd_item=a.kd_item and kd_transaksi='+''''+'799'+''''+
                    '   and trunc(tgl)<=trunc(:psysdate))/1 AS awkeluar3OUT,  '+
                    ' (select round(nvl(sum(qty_out2-qty_in2),0),4) from ipisma_db3.vkartu_stok_P1  '+
                    '   where jns_koreksi in ('+''''+'KOREKSI2'+''''+','+''''+'KEMITRAAN'+''''+','+''''+'RETUR GD WARNA2'+''''+') and kd_lokasi=:pkd_lokasi and kd_item=a.kd_item and kd_transaksi='+''''+'799'+''''+' and qty_in<0  '+
                    '   and trunc(tgl)<=trunc(:psysdate))/1 AS awkeluar4,  '+
                    ' (select round(nvl(sum(qty_OUT2),0),4) from ipisma_db3.vkartu_stok_P1  '+
                    '   where jns_koreksi in ('+''''+'KOREKSI2_OUT'+''''+','+''''+'KEMITRAAN_OUT'+''''+','+''''+'RETUR_GD_WARNA2_OUT'+''''+') and kd_lokasi=:pkd_lokasi and kd_item=a.kd_item and kd_transaksi='+''''+'799'+''''+
                    '   and trunc(tgl)<=trunc(:psysdate))/1 AS awkeluar4OUT  '+

                    ' from ipisma_db3.vitemall a  '+
                    ' where a.kd_jns_item=:pkd_lokasi  '+
                    ' order by a.kd_jns_item, a.nama_item)  '+
                    ' ) A, ipisma_db3.vitemall B WHERE A.kd_item=B.kd_item ORDER BY A.QTY desc,A.QTY2 desc, A.NAMA_ITEM  ';
//showmessage (QItem.SQL.Text);
    end;

    QItem.SetVariable('pkd_lokasi',vjns_lokasi);
    QItem.SetVariable('psysdate',Trunc(QMasterTGL.AsDateTime));
    QItem.Open;
    QItem.EnableControls;


  (sender as TwwDBLookupComboDlg).LookupTable.Open;
end;

procedure TPermintaanKoreksiFrm.QMasterBeforeDelete(DataSet: TDataSet);
begin
  if QMasterISPOST.AsString='1' then
  begin
     ShowMessage('Maaf, sudah di-POST !, tidak bisa diubah...');
     Abort;
  end;
end;

procedure TPermintaanKoreksiFrm.QMasterNewRecord(DataSet: TDataSet);
begin
  if vshift<>'' then QMasterSHIFT.AsString:=vshift;
  if vgrup<>'' then QMasterGRUP.AsString:=vgrup;
  QMasterKD_TRANSAKSI.AsString:=vkode;
  QMasterKD_DIV.AsString:='311';  
  QMasterTGL.AsDateTime:=DMFrm.QTimeJAM.AsDateTime;
  QMasterISPOST.AsString:='0';
  QMasterTTD1.AsString:=QTransaksiTTD1.AsString;
  QMasterTTD2.AsString:=QTransaksiTTD2.AsString;
  QMasterTTD3.AsString:=QTransaksiTTD3.AsString;
  QMasterTTD4.AsString:=QTransaksiTTD4.AsString;

//  QMasterSTATUS.AsString:='KOREKSI';
//  QMasterNO_RESEP.AsString:='KOREKSI1';

//MAA 11-09-2019
QMasterSTATUS.AsString:='KOREKSI_IO';
if vJNS_TRX = 'DALAM_PROSES' then
begin
  QMasterNO_RESEP.AsString:='KOREKSI1_IN';
end;
if vJNS_TRX = 'HASIL_PROSES' then
begin
  QMasterNO_RESEP.AsString:='KOREKSI2_IN';
end;

  wwDBComboBox3.ReadOnly:=False;
  wwDBComboBox3.Enabled:=True;
  wwDBDateTimePicker1.Enabled:=True;

  QItem.Close;
  QMasterQTY_RESEP.AsFloat:=0;
  wwDBEdit1.SetFocus;
end;

procedure TPermintaanKoreksiFrm.QTransaksiBeforeOpen(DataSet: TDataSet);
begin
  QTransaksi.DeclareVariable('kd_transaksi', otString);
  QTransaksi.SQL.Text:='select a.* from '+cUserTabel+'vtransaksi a where a.kd_transaksi=:kd_transaksi';
  QTransaksi.SetVariable('kd_transaksi',vkode);
end;

procedure TPermintaanKoreksiFrm.ppPageStyle1BeforePrint(Sender: TObject);
begin
  ppNo2.AsInteger:=0;
  ppNo3.AsInteger:=0;
end;

procedure TPermintaanKoreksiFrm.Label14Click(Sender: TObject);
begin
  if DMFrm.FontDialog1.Execute then
  begin
    wwDBGrid1.Font.Name:=DMFrm.FontDialog1.Font.Name;
    wwDBGrid1.Font.Size:=DMFrm.FontDialog1.Font.Size;
    wwDBGrid1.Font.Color:=DMFrm.FontDialog1.Font.Color;
    wwDBGrid1.Font.Style:=DMFrm.FontDialog1.Font.Style;

{    wwDBGrid3.Font.Name:=DMFrm.FontDialog1.Font.Name;
    wwDBGrid3.Font.Size:=DMFrm.FontDialog1.Font.Size;
    wwDBGrid3.Font.Color:=DMFrm.FontDialog1.Font.Color;
    wwDBGrid3.Font.Style:=DMFrm.FontDialog1.Font.Style;}
  end;

end;

procedure TPermintaanKoreksiFrm.FormCloseQuery(Sender: TObject;
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

procedure TPermintaanKoreksiFrm.QMasterAfterPost(DataSet: TDataSet);
begin
  PageControl1.Pages[1].TabVisible:=QMaster.IsEmpty or (QMasterISPOST.AsString='1');
  PageControl1.Pages[2].TabVisible:=QMaster.IsEmpty or (QMasterISPOST.AsString='1');

end;

procedure TPermintaanKoreksiFrm.QMasterBeforeInsert(DataSet: TDataSet);
begin
  if DataSet['ISPOST']='0' then
  begin
    if MessageDlg('Data belum di-POSTING, batalkan ?', mtWarning, [mbYes, mbNo],0)=mrYes then
      DataSet.Delete
      else
        Abort;
  end;

end;

procedure TPermintaanKoreksiFrm.ppGroupHeaderBand1BeforePrint(Sender: TObject);
begin
  ppNo.AsInteger:=ppNo.AsInteger+1;
end;

procedure TPermintaanKoreksiFrm.QItemBeforeQuery(Sender: TOracleDataSet);
begin
if vJNS_TRX = 'DALAM_PROSES' then
begin
      QItemQTY.DisplayFormat:='#,0.0000;-#,0.0000;-';
      QItemQTY2.DisplayFormat:='#,0.0000;-#,0.0000;-';
      QItemQTY.DisplayLabel:='KG';
      QItemQTY2.DisplayLabel:='BALL';
end
else
begin
      QItemQTY.DisplayFormat:='#,0.0000;-#,0.0000;-';
      QItemQTY2.DisplayFormat:='#,0;-#,0;-';
      QItemQTY.DisplayLabel:='KG';
      QItemQTY2.DisplayLabel:='PCS';
end;

{    QItem.DisableControls;
    QItem.Close;
    QItem.SetVariable('pkd_lokasi',vjns_lokasi);
    QItem.SetVariable('psysdate',Trunc(QMasterTGL.AsDateTime));
    QItem.Open;
    QItem.EnableControls;
    showmessage(datetostr(Trunc(QMasterTGL.AsDateTime)));  }
end;

procedure TPermintaanKoreksiFrm.LookItemCloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin
  if modified then
  begin
    QDetailKETERANGAN.AsString:=QItemNAMA_ITEM.AsString;
    QDetailQTY1.AsFloat:=QItemQTY.AsFloat;
    QDetailQTY6.AsFloat:=QItemQTY2.AsFloat;
    QDetailKD_SUB_LOKASI.AsString:=QItemKD_SUB_LOKASI.AsString;

    QDetailRASIO.AsFloat:=QItemRASIO2.AsFloat; // DALAM PROSES 181.44

  end;
end;

procedure TPermintaanKoreksiFrm.QDetailNewRecord(DataSet: TDataSet);
begin
  wwDBComboBox3.ReadOnly:=True;
  wwDBComboBox3.Enabled:=False;
  wwDBDateTimePicker1.Enabled:=False;

  QDetailQTY1.AsFloat:=0;
  QDetailQTY2.AsFloat:=0;
  QDetailQTY4.AsFloat:=0;
  QDetailQTY5.AsFloat:=0;
  QDetailQTY6.AsFloat:=0;
  QDetailQTY7.AsFloat:=0;
  QDetailIBUKTI.AsInteger:=QMasterIBUKTI.AsInteger;
end;

procedure TPermintaanKoreksiFrm.QDetailBeforePost(DataSet: TDataSet);
begin
//MAA 16-09-2019
  QCEKItem.Close;
  QCEKItem.SetVariable('ibukti',QMasterIBUKTI.AsInteger);
  QCEKItem.SetVariable('vkd_item',QDetailKD_ITEM.AsString);
  QCEKItem.Open;
  if QCEKItemCEK_KD_ITEM.AsInteger>0 then
     begin
        ShowMessage('Kode Item SUDAH DI-PILIH, Silahkan PILIH Kode Item lainnya ! [ untuk menghapus sebaris, tekan CTRL+DEL ]');
        Abort;
     end;

     
  if QDetailQTY4.AsFloat<=0 then
     begin
        ShowMessage('QTY harus diisi NILAI Positif !');
        Abort;
     end
     else
  if QDetailQTY5.AsFloat<=0 then
     begin
        ShowMessage('QTY harus diisi NILAI Positif !');
        Abort;
     end;


  if vJNS_TRX = 'DALAM_PROSES' then
  begin
    if (QMasterNO_RESEP.AsString = 'KOREKSI1_IN') or (QMasterNO_RESEP.AsString = 'RETUR_GD_WARNA_IN') then
    begin
      QDetailQTY2.AsFloat := QDetailQTY1.AsFloat + QDetailQTY4.AsFloat;
      QDetailQTY7.AsFloat := QDetailQTY6.AsFloat + QDetailQTY5.AsFloat;
    end
    else
    if (QMasterNO_RESEP.AsString = 'KOREKSI1_OUT') or (QMasterNO_RESEP.AsString = 'RETUR_GD_WARNA_OUT') then
    begin
        if QDetailQTY5.Asfloat>QDetailQTY6.Asfloat then
         begin
            ShowMessage('QTY Koreksi OUT lebih dari QTY Stok !');
            //Abort;
         end
        else
        begin
            QDetailQTY2.AsFloat := QDetailQTY1.AsFloat - QDetailQTY4.AsFloat;
            QDetailQTY7.AsFloat := QDetailQTY6.AsFloat - QDetailQTY5.AsFloat;
        end;
    end;
  end

  else /////////////////////////////////////

  begin
    if (QMasterNO_RESEP.AsString = 'KOREKSI2_IN') or (QMasterNO_RESEP.AsString = 'PROSES_ULANG_IN') or (QMasterNO_RESEP.AsString = 'RETUR_GD_WARNA2_IN') or (QMasterNO_RESEP.AsString = 'KELUAR_PROSES_IN') or (QMasterNO_RESEP.AsString = 'KEMITRAAN_IN') then
    begin
      QDetailQTY2.AsFloat := QDetailQTY1.AsFloat + QDetailQTY4.AsFloat;
      QDetailQTY7.AsFloat := QDetailQTY6.AsFloat + QDetailQTY5.AsFloat;
    end
    else
    if (QMasterNO_RESEP.AsString = 'KOREKSI2_OUT') or (QMasterNO_RESEP.AsString = 'PROSES_ULANG_OUT') or (QMasterNO_RESEP.AsString = 'RETUR_GD_WARNA2_OUT') or (QMasterNO_RESEP.AsString = 'KELUAR_PROSES_OUT') or (QMasterNO_RESEP.AsString = 'KEMITRAAN_OUT') then
    begin
       if (QDetailQTY5.Asfloat>QDetailQTY6.Asfloat) or (QDetailQTY4.Asfloat>QDetailQTY1.Asfloat) then
         begin
            ShowMessage('QTY Koreksi OUT lebih dari QTY Stok !');
            //Abort;
         end
        else
        begin
            QDetailQTY2.AsFloat := QDetailQTY1.AsFloat - QDetailQTY4.AsFloat;
            QDetailQTY7.AsFloat := QDetailQTY6.AsFloat - QDetailQTY5.AsFloat;
        end;
    end;
  end;


{  QDetailQTY2.AsFloat:=QDetailQTY1.AsFloat+
    QDetailQTY4.AsFloat;
  QDetailQTY7.AsFloat:=QDetailQTY6.AsFloat+
    QDetailQTY5.AsFloat;}



  if QDetailKD_ITEM.AsString='' then
     begin
        ShowMessage('BARANG harus diisi !');
        Abort;
     end
     else
  if QDetailKD_SUB_LOKASI.AsString='' then
     begin
        ShowMessage('LOKASI harus diisi !');
        Abort;
     end;
end;

procedure TPermintaanKoreksiFrm.QDetailCalcFields(DataSet: TDataSet);
begin
{  QDetailSELISIH.AsFloat:=QDetailQTY1.AsFloat-
    QDetailQTY2.AsFloat; }
    
  {  if (QMasterNO_RESEP.AsString='KOREKSI1') OR (QMasterNO_RESEP.AsString='RETUR GD WARNA') OR (wwDBComboBox3.Text='KOREKSI1') OR (wwDBComboBox3.Text='RETUR GD WARNA') then
    begin
         if QDetailQTY4.AsFloat=0 then
         begin
            QDetailQTY5.AsFloat:=0;
         end
         else
         begin
            QDetailQTY5.AsFloat:=QDetailQTY4.AsFloat/181.44;
         end;

//         QDetailQTY5.ReadOnly:=True;
    end
    else
    begin
         QDetailQTY5.ReadOnly:=False;
    end;    }

end;

procedure TPermintaanKoreksiFrm.TabSheet3Show(Sender: TObject);
begin
  QSOP.DeclareVariable('kd_transaksi',otString);
  QSOP.SQL.Text:='select sinopsis from '+cUserTabel+'vsop where kd_transaksi=:kd_transaksi';
  QSOP.SetVariable('kd_transaksi',vkode);
  QSOP.Open;
end;

procedure TPermintaanKoreksiFrm.wwDBGrid1UpdateFooter(Sender: TObject);
begin
  QTotal.Close;
  QTotal.SetVariable('ibukti',QMasterIBUKTI.AsInteger);
  QTotal.Open;

//  if (QMasterNO_RESEP.AsString='KOREKSI1') OR (QMasterNO_RESEP.AsString='RETUR GD WARNA') then
  if vJNS_TRX = 'DALAM_PROSES' then
  begin
  wwDBGrid1.ColumnByName('QTY5').FooterValue:=FormatFloat('#,0.0000;-#,0.0000;-',QTotalPCS.AsFloat);
  wwDBGrid1.ColumnByName('QTY4').FooterValue:=FormatFloat('#,0.0000;-#,0.0000;-',QTotalKG.AsFloat);
  end
  else
  begin
  wwDBGrid1.ColumnByName('QTY5').FooterValue:=FormatFloat('#,0;-#,0;-',QTotalPCS.AsFloat);
  wwDBGrid1.ColumnByName('QTY4').FooterValue:=FormatFloat('#,0.0000;-#,0.0000;-',QTotalKG.AsFloat);
  end;

{  wwDBGrid3.ColumnByName('QTY5').FooterValue:=FormatFloat('#,0.0000;-#,0.0000;-',QTotalPCS.AsFloat);
  wwDBGrid3.ColumnByName('QTY4').FooterValue:=FormatFloat('#,0.0000;-#,0.0000;-',QTotalKG.AsFloat);}
end;

procedure TPermintaanKoreksiFrm.wwDBComboBox3Change(Sender: TObject);
begin
{    if (QMasterNO_RESEP.AsString='KOREKSI1') OR (QMasterNO_RESEP.AsString='RETUR GD WARNA') OR (wwDBComboBox3.Text='KOREKSI1') OR (wwDBComboBox3.Text='RETUR GD WARNA') then
    begin
      PermintaanKoreksiFrm.PanelHeader.Caption:=PermintaanKoreksiFrm.QTransaksiKD_TRANSAKSI.AsString+'. '+'KOREKSI DALAM PROSES SOFTCONE';

      QDetailQTY5.DisplayFormat:='#,0.0000;-#,0.0000;-';
      QDetailQTY6.DisplayFormat:='#,0.0000;-#,0.0000;-';
      QDetailQTY7.DisplayFormat:='#,0.0000;-#,0.0000;-';
      wwDBGrid1.ColumnByName('QTY5').DisplayLabel:='Ball';
      wwDBGrid1.ColumnByName('QTY6').DisplayLabel:='Ball';
      wwDBGrid1.ColumnByName('QTY7').DisplayLabel:='Ball';
    end
    else
    begin
      PermintaanKoreksiFrm.PanelHeader.Caption:=PermintaanKoreksiFrm.QTransaksiKD_TRANSAKSI.AsString+'. '+'KOREKSI HASIL PROSES SOFTCONE';

      QDetailQTY5.DisplayFormat:='#,0;-#,0;-';
      QDetailQTY6.DisplayFormat:='#,0;-#,0;-';
      QDetailQTY7.DisplayFormat:='#,0;-#,0;-';
      wwDBGrid1.ColumnByName('QTY5').DisplayLabel:='Pcs';
      wwDBGrid1.ColumnByName('QTY6').DisplayLabel:='Pcs';
      wwDBGrid1.ColumnByName('QTY7').DisplayLabel:='Pcs';
    end;
    wwDBGrid1.Refresh;
    wwDBGrid1.RefreshDisplay;     }

end;

procedure TPermintaanKoreksiFrm.wwDBComboBox3CloseUp(Sender: TwwDBComboBox;
  Select: Boolean);
begin
{    if (QMasterNO_RESEP.AsString='KOREKSI1') OR (QMasterNO_RESEP.AsString='RETUR GD WARNA') OR (wwDBComboBox3.Text='KOREKSI1') OR (wwDBComboBox3.Text='RETUR GD WARNA') then
    begin
      PermintaanKoreksiFrm.PanelHeader.Caption:=PermintaanKoreksiFrm.QTransaksiKD_TRANSAKSI.AsString+'. '+'KOREKSI DALAM PROSES SOFTCONE';

      QDetailQTY5.DisplayFormat:='#,0.0000;-#,0.0000;-';
      QDetailQTY6.DisplayFormat:='#,0.0000;-#,0.0000;-';
      QDetailQTY7.DisplayFormat:='#,0.0000;-#,0.0000;-';
      wwDBGrid1.ColumnByName('QTY5').DisplayLabel:='Ball';
      wwDBGrid1.ColumnByName('QTY6').DisplayLabel:='Ball';
      wwDBGrid1.ColumnByName('QTY7').DisplayLabel:='Ball';
    end
    else
    begin
      PermintaanKoreksiFrm.PanelHeader.Caption:=PermintaanKoreksiFrm.QTransaksiKD_TRANSAKSI.AsString+'. '+'KOREKSI HASIL PROSES SOFTCONE';

      QDetailQTY5.DisplayFormat:='#,0;-#,0;-';
      QDetailQTY6.DisplayFormat:='#,0;-#,0;-';
      QDetailQTY7.DisplayFormat:='#,0;-#,0;-';
      wwDBGrid1.ColumnByName('QTY5').DisplayLabel:='Pcs';
      wwDBGrid1.ColumnByName('QTY6').DisplayLabel:='Pcs';
      wwDBGrid1.ColumnByName('QTY7').DisplayLabel:='Pcs';
    end;
    wwDBGrid1.Refresh;
    wwDBGrid1.RefreshDisplay;   }
end;

procedure TPermintaanKoreksiFrm.QDetailQTY4Change(Sender: TField);
begin
//if (QMasterNO_RESEP.AsString='KOREKSI1') OR (QMasterNO_RESEP.AsString='RETUR GD WARNA') OR (wwDBComboBox3.Text='KOREKSI1') OR (wwDBComboBox3.Text='RETUR GD WARNA') then
  if vJNS_TRX = 'DALAM_PROSES' then
    begin
         if QDetailQTY4.AsFloat=0 then
         begin
            QDetailQTY5.AsFloat:=0;
       //     showmessage('NOL');
         end
         else
         begin
//            QDetailQTY5.AsFloat:=QDetailQTY4.AsFloat/181.44;

              QRoundQTY.Close;
              QRoundQTY.SetVariable('vQTY',QDetailQTY4.AsFloat/181.44);
              QRoundQTY.Open;
              QDetailQTY5.AsFloat:=QRoundQTYPQTY.AsFloat;
          //  showmessage(QRoundQTYPQTY.AsString);
         end;
         QDetailQTY5.ReadOnly:=True;
    end

    else //////////////////////////////

    begin
        // QDetailQTY4.ReadOnly:=True;        //ditutup sesuai permintaan adm celup 26-12-2023
    end;
end;

procedure TPermintaanKoreksiFrm.BitBtn1Click(Sender: TObject);
begin
  ppReportMitra.Print;
end;

procedure TPermintaanKoreksiFrm.QMasterNO_RESEPChange(Sender: TField);
begin
wwDBComboBox3Change(wwDBGrid1);
end;

procedure TPermintaanKoreksiFrm.wwDBComboBox3Enter(Sender: TObject);
begin

if vJNS_TRX = 'DALAM_PROSES' then
begin
    wwDBComboBox3.Items.Clear;
    wwDBComboBox3.Items.Add('KOREKSI1_IN');
    wwDBComboBox3.Items.Add('KOREKSI1_OUT');
    wwDBComboBox3.Items.Add('RETUR_GD_WARNA_IN');
    wwDBComboBox3.Items.Add('RETUR_GD_WARNA_OUT');

      PermintaanKoreksiFrm.PanelHeader.Caption:=PermintaanKoreksiFrm.QTransaksiKD_TRANSAKSI.AsString+'. '+'KOREKSI DALAM PROSES SOFTCONE';

      QDetailQTY5.DisplayFormat:='#,0.0000;-#,0.0000;-';
      QDetailQTY6.DisplayFormat:='#,0.0000;-#,0.0000;-';
      QDetailQTY7.DisplayFormat:='#,0.0000;-#,0.0000;-';
      wwDBGrid1.ColumnByName('QTY5').DisplayLabel:='Ball';
      wwDBGrid1.ColumnByName('QTY6').DisplayLabel:='Ball';
      wwDBGrid1.ColumnByName('QTY7').DisplayLabel:='Ball';
      wwDBGrid1.Refresh;
      wwDBGrid1.RefreshDisplay;
end;

if vJNS_TRX = 'HASIL_PROSES' then
begin
    wwDBComboBox3.Items.Clear;
    wwDBComboBox3.Items.Add('KOREKSI2_IN');
    wwDBComboBox3.Items.Add('KOREKSI2_OUT');
    wwDBComboBox3.Items.Add('PROSES_ULANG_IN');
    wwDBComboBox3.Items.Add('PROSES_ULANG_OUT');
    wwDBComboBox3.Items.Add('RETUR_GD_WARNA2_IN');
    wwDBComboBox3.Items.Add('RETUR_GD_WARNA2_OUT');
    wwDBComboBox3.Items.Add('KELUAR_PROSES_IN');
    wwDBComboBox3.Items.Add('KELUAR_PROSES_OUT');
    wwDBComboBox3.Items.Add('KEMITRAAN_IN');
    wwDBComboBox3.Items.Add('KEMITRAAN_OUT');

      PermintaanKoreksiFrm.PanelHeader.Caption:=PermintaanKoreksiFrm.QTransaksiKD_TRANSAKSI.AsString+'. '+'KOREKSI HASIL PROSES SOFTCONE';

      QDetailQTY5.DisplayFormat:='#,0;-#,0;-';
      QDetailQTY6.DisplayFormat:='#,0;-#,0;-';
      QDetailQTY7.DisplayFormat:='#,0;-#,0;-';
      wwDBGrid1.ColumnByName('QTY5').DisplayLabel:='Pcs';
      wwDBGrid1.ColumnByName('QTY6').DisplayLabel:='Pcs';
      wwDBGrid1.ColumnByName('QTY7').DisplayLabel:='Pcs';
      wwDBGrid1.Refresh;
      wwDBGrid1.RefreshDisplay;
end;

{    if (QMasterNO_RESEP.AsString='KOREKSI1') OR (QMasterNO_RESEP.AsString='RETUR GD WARNA') OR (wwDBComboBox3.Text='KOREKSI1') OR (wwDBComboBox3.Text='RETUR GD WARNA') then
    begin
    end
    else
    begin
    end;
        }

    {ORI
    wwDBComboBox3.Items.Add('KOREKSI1');
    wwDBComboBox3.Items.Add('KOREKSI2');
    wwDBComboBox3.Items.Add('PROSES ULANG');
    wwDBComboBox3.Items.Add('RETUR GD WARNA');
    wwDBComboBox3.Items.Add('RETUR GD WARNA2');
    wwDBComboBox3.Items.Add('KELUAR PROSES');
    wwDBComboBox3.Items.Add('KEMITRAAN');
    }
end;

procedure TPermintaanKoreksiFrm.QMasterAfterDelete(DataSet: TDataSet);
begin
  wwDBComboBox3.ReadOnly:=False;
  wwDBComboBox3.Enabled:=False;
  wwDBDateTimePicker1.Enabled:=False;

end;

procedure TPermintaanKoreksiFrm.wwDBGrid1CalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
  if not Highlight then
    if (Sender as TwwDBGrid).ColumnByName(Field.FieldName).ReadOnly then
    begin
      ABrush.Color:=DMFrm.vclGridRead;
      AFont.Color:=DMFrm.vclGridReadFont;
    end
    else
    begin
      ABrush.Color:=DMFrm.vclGridEdit;
      AFont.Color:=DMFrm.vclGridEditFont;
    end;
end;

procedure TPermintaanKoreksiFrm.QDetailQTY5Change(Sender: TField);
begin
  if vJNS_TRX = 'DALAM_PROSES' then
    begin
         QDetailQTY5.ReadOnly:=True;
    end

    else //////////////////////////////

    begin
    if QDetailRASIO.AsFloat<>0 then
    begin
         if QDetailQTY5.AsFloat=0 then
         begin
            QDetailQTY5.AsFloat:=0;
       //     showmessage('NOL');
         end
     //26-12-2023, ditutup sesuai permintaan adm celup agar QDetailQTY4 bisa diketik
     {    else
         begin
              QRoundQTY.Close;
              QRoundQTY.SetVariable('vQTY',QDetailQTY5.AsFloat*QDetailRASIO.AsFloat);
              QRoundQTY.Open;
              QDetailQTY4.AsFloat:=QRoundQTYPQTY.AsFloat;
          //  showmessage(QRoundQTYPQTY.AsString);
         end;
         QDetailQTY4.ReadOnly:=True;      }
    end;
    end;
end;

end.
