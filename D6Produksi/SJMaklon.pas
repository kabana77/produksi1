unit SJMaklon;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  DateUtils, Mask, wwdbedit, Wwdbspin, DB, Wwdatsrc, OracleData, Dialogs,
  Oracle, Buttons, wwSpeedButton, wwDBNavigator, wwclearpanel, Grids,
  Wwdbigrd, Wwdbgrid, StdCtrls, wwdbdatetimepicker, ComCtrls, ExtCtrls,
  ppViewr, ppDB, ppDBPipe, ppComm, ppRelatv, ppProd, ppClass, ppReport,
  ppVar, ppCtrls, ppBands, ppPrnabl, ppCache, ppEndUsr, ppModule,
  daDataModule, DBCtrls, wwdblook, Wwdbdlg, Wwdotdot, Wwdbcomb, ppBarCod,
  wwcheckbox, ppStrtch, ppMemo, raCodMod, wwriched, QRCtrls, QuickRpt,
  ppParameter;

type
  TSJMaklonFrm = class(TForm)
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
    ppLabel21: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppNo2: TppVariable;
    ppDBMemo1: TppDBMemo;
    ppDBText11: TppDBText;
    ppDBText20: TppDBText;
    ppFooterBand2: TppFooterBand;
    ppUserCetak2: TppLabel;
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
    ppDBText15: TppDBText;
    raCodeModule1: TraCodeModule;
    QBrowseQTY2: TFloatField;
    QBrowseLOKASI2: TStringField;
    QItemKD_SUB_LOKASI: TStringField;
    LookItem: TwwDBLookupComboDlg;
    QMasterSTATUS: TStringField;
    QSOP: TOracleDataSet;
    dsQSOP: TwwDataSource;
    wwDBRichEdit1: TwwDBRichEdit;
    CBPreview: TCheckBox;
    RadioGroup1: TRadioGroup;
    QDetailQTY6: TFloatField;
    QDetailQTY7: TFloatField;
    QDetailKD_WARNA: TStringField;
    QDetailWARNA: TStringField;
    QBrowseWARNA: TStringField;
    QBrowseNO_BATCH: TStringField;
    QDetailRASIO: TFloatField;
    QItemRASIO: TFloatField;
    ppDBText29: TppDBText;
    ppLabel23: TppLabel;
    ppLabel19: TppLabel;
    QBrowseIBUKTI: TFloatField;
    QBrowseQTY6: TFloatField;
    QBrowseQTY7: TFloatField;
    DBText4: TDBText;
    DBText2: TDBText;
    Label16: TLabel;
    Label17: TLabel;
    QMasterTGL_INSERT: TDateTimeField;
    QMasterOPR_INSERT: TStringField;
    QDetailKD_ITEM2: TStringField;
    QBrowseNO_LOT: TStringField;
    ppDBCalc2: TppDBCalc;
    ppLabel27: TppLabel;
    QTotal: TOracleDataSet;
    QTotalPCS: TFloatField;
    QTotalKG: TFloatField;
    ppLabel31: TppLabel;
    QTransaksiDOC_ISO: TStringField;
    ppDBText17: TppDBText;
    QTotalPCSAW: TFloatField;
    QTotalKGAW: TFloatField;
    QuickRep2: TQuickRep;
    QRBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRBand2: TQRBand;
    QRLabel4: TQRLabel;
    QRLPeriode1: TQRLabel;
    QRBand3: TQRBand;
    QRLabel25: TQRLabel;
    QRShape3: TQRShape;
    QRLabel38: TQRLabel;
    QRShape7: TQRShape;
    QRLabel49: TQRLabel;
    QRBand4: TQRBand;
    QRSysData2: TQRSysData;
    QRShape8: TQRShape;
    QRBand5: TQRBand;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRShape5: TQRShape;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRShape2: TQRShape;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRDBText2: TQRDBText;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRShape18: TQRShape;
    QRShape19: TQRShape;
    QRExpr3: TQRExpr;
    QRExpr4: TQRExpr;
    QRBand6: TQRBand;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QBrowseISPOST: TStringField;
    Label20: TLabel;
    QBrowseRASIO: TFloatField;
    wwDBComboBox3: TwwDBComboBox;
    Label12: TLabel;
    QMasterJENIS: TStringField;
    ppDBText16: TppDBText;
    ppDBText22: TppDBText;
    ppDBText30: TppDBText;
    JUDULPRINT: TppLabel;
    ppDBText50: TppDBText;
    QRShape1: TQRShape;
    QRShape16: TQRShape;
    LookupWarna2: TwwDBLookupComboDlg;
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
    procedure Label14Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure QMasterAfterPost(DataSet: TDataSet);
    procedure QMasterBeforeInsert(DataSet: TDataSet);
    procedure ppGroupHeaderBand1BeforePrint(Sender: TObject);
    procedure QLokasiBeforeOpen(DataSet: TDataSet);
    procedure LookLokasiEnter(Sender: TObject);
    procedure QItemBeforeQuery(Sender: TOracleDataSet);
    procedure LookItemCloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure QDetailNewRecord(DataSet: TDataSet);
    procedure QDetailBeforePost(DataSet: TDataSet);
    procedure TabSheet3Show(Sender: TObject);
    procedure LookWarnaEnter(Sender: TObject);
    procedure wwDBGrid1UpdateFooter(Sender: TObject);
    procedure QRBand5BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand6BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure wwDBDateTimePicker1Change(Sender: TObject);
    procedure wwDBGrid1CalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure QMasterAfterDelete(DataSet: TDataSet);
    procedure JUDULPRINTGetText(Sender: TObject; var Text: String);
    procedure LookWarnaCloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure LookupWarna2Enter(Sender: TObject);
   
  private
    { Private declarations }
    vorder, SelectedFont, vkode, vjns_brg, vjns_lokasi : String;
    vshift, vgrup, vfilter_warna : String;
    vresep, varah : String;
    vqty1, vqty2, vqty6, vqty7 : real;
  public
    { Public declarations }

  end;

var
  SJMaklonFrm: TSJMaklonFrm;

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
    SJMaklonFrm:=TSJMaklonFrm.Create(Application);
    SJMaklonFrm.PageControl1.ActivePageIndex:=1;
    if not DMFrm.cHakInput then
    begin
       SJMaklonFrm.QMaster.ReadOnly:=True;
       SJMaklonFrm.QDetail.ReadOnly:=True;
    end;

    mychar:=pjudul;
    Delete(mychar,Pos('&',mychar),1);
    pjudul:=mychar;
    SJMaklonFrm.Caption:=UpperCase(pjudul);
    SJMaklonFrm.vkode:=pkode;
    SJMaklonFrm.vjns_lokasi:=pjns_lokasi;
    SJMaklonFrm.vjns_brg:=pjns_brg;
    //SJMaklonFrm.vkd_sub_lokasi:=pkd_sub_lokasi;
  // SJMaklonFrm.vjns_brg:='21';
    SJMaklonFrm.QTransaksi.Open;

    SJMaklonFrm.PanelHeader.Caption:=SJMaklonFrm.QTransaksiKD_TRANSAKSI.AsString+'. '+SJMaklonFrm.QTransaksiNAMA_TRANSAKSI.AsString;
    SJMaklonFrm.wwDBGrid1.IniAttributes.FileName:=DMFrm.sAppPath+Application.Title+'2.ini';
    SJMaklonFrm.wwDBGrid1.IniAttributes.SectionName:=SJMaklonFrm.Caption+'1';
    SJMaklonFrm.wwDBGrid1.IniAttributes.Enabled:=True;
    SJMaklonFrm.wwDBGrid1.LoadFromIniFile;
    SJMaklonFrm.wwDBGrid2.IniAttributes.FileName:=DMFrm.sAppPath+Application.Title+'2.ini';
    SJMaklonFrm.wwDBGrid2.IniAttributes.SectionName:=SJMaklonFrm.Caption+'2';
    SJMaklonFrm.wwDBGrid2.IniAttributes.Enabled:=True;
    SJMaklonFrm.wwDBGrid2.LoadFromIniFile;
    DMFrm.ProcReadIni(Application.Title,SJMaklonFrm.Caption+'1',SJMaklonFrm.wwDBGrid1);
    DMFrm.ProcReadIni(Application.Title,SJMaklonFrm.Caption+'2',SJMaklonFrm.wwDBGrid2);
    SJMaklonFrm.wwDBSpinLine1.Value:=SJMaklonFrm.wwDBGrid1.RowHeightPercent;
    SJMaklonFrm.wwDBSpinLine2.Value:=SJMaklonFrm.wwDBGrid2.RowHeightPercent;

  end;

  SJMaklonFrm.Show;
end;

procedure TSJMaklonFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   DMFrm.ProcWtiteIni(Application.Title,Caption+'1',wwDBGrid1);
   DMFrm.ProcWtiteIni(Application.Title,Caption+'2',wwDBGrid2);
   Action:=caFree;
   SJMaklonFrm:=Nil;
end;

procedure TSJMaklonFrm.FormCreate(Sender: TObject);
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

procedure TSJMaklonFrm.BtnExportClick(Sender: TObject);
begin
  if QBrowse.Active then
  begin
     DMFrm.SaveDialog1.DefaultExt:='XLK';
     DMFrm.SaveDialog1.Filter:='Excel files (*.XLK)|*.XLK';
     DMFrm.SaveDialog1.FileName:=Caption+' '+ vTglAwal.Text+' sd '+vTglAkhir.Text+'.xlK';
     wwDBGrid2.ExportOptions.TitleName:='SERAH TERIMA';
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

procedure TSJMaklonFrm.BtnOkClick(Sender: TObject);
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
        if trunc(vTglAwal.Date) >= StrToDate('01/01/2017') then
        begin
          QBrowse.Close;
          QBrowse.SQL.Text:='select * from '+cUserTabel+'vsjmaklonfrm where tanggal>=:pawal and tanggal<=:pakhir and kd_transaksi=:kd_transaksi :porder';
          //ShowMessage(QBrowse.SQL.Text);
        end
        else begin
          QBrowse.Close;
          QBrowse.SQL.Text:='select * from '+cUserTabel+'v'+Name+
            ' where tanggal>=:pawal and tanggal<=:pakhir and kd_transaksi=:kd_transaksi :porder';
          //ShowMessage(QBrowse.SQL.Text);
        end;
  		QBrowse.SetVariable('pawal',Trunc(vTglAwal.Date));
  		QBrowse.SetVariable('pakhir',Trunc(vTglAkhir.Date)+1-1/86400);
			QBrowse.SetVariable('kd_transaksi',vkode);
  		QBrowse.SetVariable('porder',vorder);
//      ShowMessage(QBrowse.SQL.Text);
      QBrowse.Open;
      vqty1:=0;
      vqty2:=0;
      vqty6:=0;
      vqty7:=0;
      while not QBrowse.Eof do
      begin
          vqty1:=vqty1+QBrowseQTY1.AsFloat;
          vqty2:=vqty2+QBrowseQTY2.AsFloat;
          vqty6:=vqty6+QBrowseQTY6.AsFloat;
          vqty7:=vqty7+QBrowseQTY7.AsFloat;
          QBrowse.Next;
      end;
      QBrowse.EnableControls;
      wwDBGrid2.ColumnByName('QTY1').FooterValue:=FormatFloat('#,0.0000;-#,0.0000;-',vqty1);
      wwDBGrid2.ColumnByName('QTY2').FooterValue:=FormatFloat('#,0.0000;-#,0.0000;-',vqty2);
      wwDBGrid2.ColumnByName('QTY6').FooterValue:=FormatFloat('#,0;-#,0;-',vqty6);
      wwDBGrid2.ColumnByName('QTY7').FooterValue:=FormatFloat('#,0;-#,0;-',vqty7);
      LabelBanner.Caption:='Data : '+FormatFloat('#,#',QBrowse.RecordCount)+' Records';
    end;
end;
end;

procedure TSJMaklonFrm.wwDBGrid2TitleButtonClick(Sender: TObject;
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

procedure TSJMaklonFrm.QBrowseAfterScroll(DataSet: TDataSet);
begin
  LabelBanner.Caption:='Record ke '+IntToStr(QBrowse.RecNo)+' dari '+FormatFloat('#,#',QBrowse.RecordCount)+' Records';
end;

procedure TSJMaklonFrm.BtnClose1Click(Sender: TObject);
begin
  Close;
end;

procedure TSJMaklonFrm.BtnClose2Click(Sender: TObject);
begin
  Close;
end;

procedure TSJMaklonFrm.vTglAwalChange(Sender: TObject);
begin
  vTglAkhir.DateTime:=EndOfTheMonth(vTglAwal.Date);
end;

procedure TSJMaklonFrm.wwDBSpinLine2Change(Sender: TObject);
begin
    wwDBGrid2.RowHeightPercent:=Round(wwDBSpinLine2.Value);
end;

procedure TSJMaklonFrm.BtnFindClick(Sender: TObject);
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

procedure TSJMaklonFrm.BtnOk2Click(Sender: TObject);
begin
  if QBrowse.QBEMode then
  begin
    QBrowse.ExecuteQBE;
    wwDBGrid2.Options:=wwDBGrid2.Options+[dgRowSelect,dgAlwaysShowSelection];
      vqty1:=0;
      vqty2:=0;
      vqty6:=0;
      vqty7:=0;
      while not QBrowse.Eof do
      begin
          vqty1:=vqty1+QBrowseQTY1.AsFloat;
          vqty2:=vqty2+QBrowseQTY2.AsFloat;
          vqty6:=vqty6+QBrowseQTY6.AsFloat;
          vqty7:=vqty7+QBrowseQTY7.AsFloat;
          QBrowse.Next;
      end;
      QBrowse.EnableControls;
      wwDBGrid2.ColumnByName('QTY1').FooterValue:=FormatFloat('#,0.0000;-#,0.0000;-',vqty1);
      wwDBGrid2.ColumnByName('QTY2').FooterValue:=FormatFloat('#,0.0000;-#,0.0000;-',vqty2);
      wwDBGrid2.ColumnByName('QTY6').FooterValue:=FormatFloat('#,0;-#,0;-',vqty6);
      wwDBGrid2.ColumnByName('QTY7').FooterValue:=FormatFloat('#,0;-#,0;-',vqty7);
  end;

end;

procedure TSJMaklonFrm.ppHeaderBand1BeforePrint(Sender: TObject);
begin
  ppNo.AsInteger:=0;
end;

procedure TSJMaklonFrm.BtnPrintBrowseClick(Sender: TObject);
begin
  if vTglAwal.Date>vTglAkhir.DateTime then
    ShowMessage('Tgl. Akhir harus lebih besar dari Tgl. Awal !')
    else
    begin
      quickrep2.Preview;
      //ppReportBrowse.Print;
    end;
end;

procedure TSJMaklonFrm.Button1Click(Sender: TObject);
begin
  ppDesigner1.ShowModal;
end;

procedure TSJMaklonFrm.BtnDesign2Click(Sender: TObject);
begin
  ppDesigner1.ShowModal;
end;

procedure TSJMaklonFrm.ppTitleBand1BeforePrint(Sender: TObject);
begin
  ppNamaLaporan.Caption:=Caption;
  ppNo2.AsInteger:=0;
  ppPeriode.Caption:=vTglAwal.Text+' s/d '+vTglAkhir.Text;
  DMFrm.QTime.Close;
  DMFrm.QTime.Open;
  ppUserCetak.Caption:=DMFrm.QTimeVUSER_CETAK.AsString;
end;

procedure TSJMaklonFrm.wwDBSpinLine1Change(Sender: TObject);
begin
    wwDBGrid1.RowHeightPercent:=Round(wwDBSpinLine1.Value);
end;

procedure TSJMaklonFrm.EditCariKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
{  if key=13 then
  begin
    wwDBSpinLine1.SetFocus;
    TabSheet1Show(Nil);
    EditCari.SetFocus;
  end;} //  org

    if key=13 then
  begin
  IF copy(editCari.text,1,3) = QmasterKd_transaksi.asstring then
    begin
    wwDBSpinLine1.SetFocus;
    varah:='';
    vresep:='';
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

procedure TSJMaklonFrm.TabSheet1Show(Sender: TObject);
begin
 { if (EditCari.Text='') and (QBrowseIBUKTI.AsString<>'') then
      EditCari.Text:=QBrowseIBUKTI.AsString
      else    EditCari.Text:='0';
  QMaster.Close;
  QMaster.SequenceField.Sequence:=cUserTabel+'no_register';
  QMaster.SequenceField.Field:='IBUKTI';

  QMaster.SQL.Text:='select a.*, a.rowid from '+cUserTabel+'bukti a'+
    ' where a.ibukti=:pno_nota';
  QMaster.DeclareVariable('pno_nota',otInteger);
  QMaster.SetVariable('pno_nota',StrToInt(EditCari.Text));
//  ShowMessage(QMaster.SQL.Text);
  QMaster.Open;

  QDetail.Close;
  QDetail.SequenceField.Sequence:=cUserTabel+'no_register';
  QDetail.SequenceField.Field:='IBUKTI_DETAIL';
  QDetail.Master:=QMaster;
  QDetail.DeclareVariable('IBUKTI',otInteger);
  QDetail.MasterFields:='IBUKTI';
  QDetail.SQL.Text:='select a.*, a.rowid from '+cUserTabel+'bukti_detail a'+
    ' where a.ibukti=:ibukti';
  QDetail.SetVariable('ibukti',QMasterIBUKTI.AsInteger);
// ShowMessage(QDetail.SQL.Text);
  QDetail.Open; }   // org
//arif 290710
  varah:='';
  vresep:='';
  QMaster.Close;
  QMaster.SetVariable('myparam1',QBrowseIBUKTI.AsInteger);
  QMaster.SetVariable('myparam2',QBrowseNO_NOTA.AsString);
  QMaster.Open;
  QDetail.Close;
  QDetail.Open;
  wwDBGrid1UpdateFooter(nil);
  EditCari.Text:=QBrowseIBUKTI.AsString;
  if (QBrowseNO_NOTA.AsString<>'') then EditCari.Text:=QBrowseNO_NOTA.AsString;


end;

procedure TSJMaklonFrm.TabSheet1Exit(Sender: TObject);
begin
  EditCari.Text:='';
end;

procedure TSJMaklonFrm.ppDetailBand2BeforePrint(Sender: TObject);
begin
  ppNo2.AsInteger:=ppNo2.AsInteger+1;
end;

procedure TSJMaklonFrm.ppFooterBand2BeforePrint(Sender: TObject);
begin
//  ppHalInput.Visible:=ppReportInput.PageNo>1;
  DMFrm.QTime.Close;
  DMFrm.QTime.Open;
  ppUserCetak2.Caption:=DMFrm.QTimeVUSER_CETAK.AsString;
end;

procedure TSJMaklonFrm.BtnPrintInputClick(Sender: TObject);
begin
  ppDBQMaster.Close;
  ppDBQMaster.Open;
  ppDBQDetail.Close;
  ppDBQDetail.Open;
  case RadioGroup1.ItemIndex of
     0 : ppReportInput.PrinterSetup.PaperHeight:=297;
     1 : ppReportInput.PrinterSetup.PaperHeight:=140;
  end;
  if CBPreview.Checked then
    begin
      ppReportInput.DeviceType:='Screen';
      ppReportInput.Print;
    end
    else
    begin
      ppReportInput.DeviceType:='Printer';
      ppReportInput.Print;
    end;
end;

procedure TSJMaklonFrm.QMasterBeforePost(DataSet: TDataSet);
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

procedure TSJMaklonFrm.wwDBGrid1Enter(Sender: TObject);
begin
  if QMaster.State<>dsBrowse then
  try
    QMaster.Post;
  except
    ShowMessage('Maaf, ada masalah di pengisian MASTER !');
  end;
end;

procedure TSJMaklonFrm.wwDBGrid2DblClick(Sender: TObject);
begin
  TabSheet1.Show;
end;

procedure TSJMaklonFrm.Label5Click(Sender: TObject);
begin
  if DMFrm.FontDialog1.Execute then
  begin
    wwDBGrid2.Font.Name:=DMFrm.FontDialog1.Font.Name;
    wwDBGrid2.Font.Size:=DMFrm.FontDialog1.Font.Size;
    wwDBGrid2.Font.Color:=DMFrm.FontDialog1.Font.Color;
    wwDBGrid2.Font.Style:=DMFrm.FontDialog1.Font.Style;
  end;
end;

procedure TSJMaklonFrm.LookItemEnter(Sender: TObject);
var
tgl_awal : tdatetime;
begin
    QItem.Close;
    if QMasterJENIS.AsString='CELUP' then
     {begin
     vjns_lokasi:='10'; }
      begin
       //ShowMessage('1');

  	   QItem.SQL.Text:='select a.kd_item, a.nama_item, a.kd_satuan, a.rasio, d.satuan, a.min_stok, a.kd_jns_item, c.kd_sub_lokasi'+
      ' from '+cUserTabel+'item a, '+cUserTabel+'sub_lokasi c, '+cUserTabel+'satuan d'+
      ' where '+
      ' a.kd_satuan=d.kd_satuan and c.jns_lokasi=''LOKASI'' and'+
      ' a.kd_jns_item=''21'' and c.kd_lokasi=''21'' and c.kd_sub_lokasi=''21-20000'' '+
      ' and a.kd_item <>''21.14581'' '+
      ' group by a.kd_item, a.nama_item, a.kd_satuan, a.rasio, d.satuan, a.min_stok, a.kd_jns_item, c.kd_sub_lokasi';
       QItem.open;
      end
    else
  if QMasterJENIS.AsString='PENGERING' then
   {begin
    vjns_lokasi:='22'; }
    begin
  	 QItem.SQL.Text:='select a.kd_item, a.nama_item, a.kd_satuan, a.rasio, d.satuan, a.min_stok, a.kd_jns_item, c.kd_sub_lokasi'+
      ' from '+cUserTabel+'item a, '+cUserTabel+'sub_lokasi c, '+cUserTabel+'satuan d, '+cUserTabel+'vi_warna_baru_2017 e'+
      ' where '+
      ' a.kd_satuan=d.kd_satuan and c.jns_lokasi=''LOKASI'' and'+
      ' a.kd_jns_item=''22'' and c.kd_lokasi=''22'' and c.kd_sub_lokasi=''22-20000'' '+
      ' and a.kd_item <>''21.14581'' '+
      ' group by a.kd_item, a.nama_item, a.kd_satuan, a.rasio,d.satuan, a.min_stok, a.kd_jns_item, c.kd_sub_lokasi';
    QItem.open;
  end
    else
     {begin
     vjns_lokasi:='10'; }
    begin
   QItem.SQL.Text:='select a.kd_item, a.nama_item, a.kd_satuan, a.rasio, d.satuan, a.min_stok, a.kd_jns_item, c.kd_sub_lokasi'+
      ' from '+cUserTabel+'item a, '+cUserTabel+'sub_lokasi c, '+cUserTabel+'satuan d'+
      ' where '+
      ' a.kd_satuan=d.kd_satuan and c.jns_lokasi=''LOKASI'' and'+
      ' a.kd_jns_item=''21'' and c.kd_lokasi=''21'' and c.kd_sub_lokasi=''21-20000'' '+
      ' and a.kd_item <>''21.14581'' '+
      ' group by a.kd_item, a.nama_item, a.kd_satuan, a.rasio,d.satuan, a.min_stok, a.kd_jns_item, c.kd_sub_lokasi';
    QItem.open;
    end;
end;

procedure TSJMaklonFrm.QMasterBeforeDelete(DataSet: TDataSet);
begin
  if QMasterISPOST.AsString='1' then
  begin
     ShowMessage('Maaf, sudah di-POST !, tidak bisa diubah...');
     Abort;
  end;
end;

procedure TSJMaklonFrm.QMasterNewRecord(DataSet: TDataSet);
begin
  if vshift<>'' then QMasterSHIFT.AsString:=vshift;
  if vgrup<>'' then QMasterGRUP.AsString:=vshift;
  QMasterKD_TRANSAKSI.AsString:=vkode;
  QMasterTGL.AsDateTime:=DMFrm.QTimeJAM.AsDateTime;
  QMasterISPOST.AsString:='0';
  QMasterTTD1.AsString:=QTransaksiTTD1.AsString;
  QMasterTTD2.AsString:=QTransaksiTTD2.AsString;
  QMasterTTD3.AsString:=QTransaksiTTD3.AsString;
  QMasterTTD4.AsString:=QTransaksiTTD4.AsString;

  wwDBDateTimePicker1.Enabled:=True;

    if QMasterKD_TRANSAKSI.AsString='795' then
    begin
      QMasterKD_DIV.AsString:='313';
    end
    else
    if QMasterKD_TRANSAKSI.AsString='796' then
    begin
      QMasterKD_DIV.AsString:='310';
    end;

  QMasterSTATUS.AsString:='MUTASI';
  QItem.Close;
  wwDBEdit1.SetFocus;
end;

procedure TSJMaklonFrm.QTransaksiBeforeOpen(DataSet: TDataSet);
begin
  QTransaksi.DeclareVariable('kd_transaksi', otString);
  QTransaksi.SQL.Text:='select a.* from '+cUserTabel+'vtransaksi a where a.kd_transaksi=:kd_transaksi';
  QTransaksi.SetVariable('kd_transaksi',vkode);
end;

procedure TSJMaklonFrm.Label14Click(Sender: TObject);
begin
  if DMFrm.FontDialog1.Execute then
  begin
    wwDBGrid1.Font.Name:=DMFrm.FontDialog1.Font.Name;
    wwDBGrid1.Font.Size:=DMFrm.FontDialog1.Font.Size;
    wwDBGrid1.Font.Color:=DMFrm.FontDialog1.Font.Color;
    wwDBGrid1.Font.Style:=DMFrm.FontDialog1.Font.Style;
  end;

end;

procedure TSJMaklonFrm.FormCloseQuery(Sender: TObject;
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

procedure TSJMaklonFrm.QMasterAfterPost(DataSet: TDataSet);
begin
  PageControl1.Pages[1].TabVisible:=QMaster.IsEmpty or (QMasterISPOST.AsString='1');
  PageControl1.Pages[2].TabVisible:=QMaster.IsEmpty or (QMasterISPOST.AsString='1');
end;

procedure TSJMaklonFrm.QMasterBeforeInsert(DataSet: TDataSet);
begin
  if DataSet['ISPOST']='0' then
  begin
    if MessageDlg('Data belum di-POSTING, batalkan ?', mtWarning, [mbYes, mbNo],0)=mrYes then
      DataSet.Delete
      else
        Abort;
  end;

end;

procedure TSJMaklonFrm.ppGroupHeaderBand1BeforePrint(Sender: TObject);
begin
  ppNo.AsInteger:=ppNo.AsInteger+1;
end;

procedure TSJMaklonFrm.QLokasiBeforeOpen(DataSet: TDataSet);
var
  myvjns_lokasi : string;
begin
  if vjns_lokasi='10' then
    myvjns_lokasi:='21' else
  if vjns_lokasi='21' then
    myvjns_lokasi:='22' else
  //if vjns_lokasi='22' then
   // myvjns_lokasi:='40' else
  //if vjns_lokasi='22' then
   //myvjns_lokasi:='30';
  QLokasi.DeclareVariable('vjns_lokasi',otSubst);
  QLokasi.SQL.Text:='select * from '+cUserTabel+'sub_lokasi where jns_lokasi=''PROSES'' and kd_lokasi=:vjns_lokasi';
  QLokasi.SetVariable('vjns_lokasi',myvjns_lokasi);
end;

procedure TSJMaklonFrm.LookLokasiEnter(Sender: TObject);
begin
  QLokasi.Close;
  QLokasi.Open;
end;

procedure TSJMaklonFrm.QItemBeforeQuery(Sender: TOracleDataSet);
begin
{    QItem.DeclareVariable('vjns_brg',otString);
    QItem.DeclareVariable('vjns_lokasi',otString);
    QItem.DeclareVariable('TGL',otDate);
  	QItem.SQL.Text:='select a.kd_item, a.nama_item, a.kd_satuan, a.rasio, d.satuan, a.min_stok, a.kd_jns_item, b.kd_sub_lokasi, b.kd_warna, e.warna, b.no_batch,'+
      ' sum(b.qty_in-b.qty_out) as qty, sum(b.qty_in2-b.qty_out2) as qty2'+
      ' from '+cUserTabel+'item a, '+cUserTabel+'gd_stok b, '+cUserTabel+'sub_lokasi c, '+cUserTabel+'satuan d, '+cUserTabel+'warna e'+
      ' where a.kd_item=b.kd_item and b.kd_sub_lokasi=c.kd_sub_lokasi and b.kd_warna=e.kd_warna and'+
      ' a.kd_satuan=d.kd_satuan and c.jns_lokasi=''LOKASI'' and'+
      ' a.kd_jns_item=:vjns_brg and c.kd_lokasi=:vjns_lokasi and b.tgl<=:tgl'+
      ' group by a.kd_item, a.nama_item, a.kd_satuan, a.rasio,d.satuan, a.min_stok, a.kd_jns_item, b.kd_sub_lokasi, b.kd_warna, e.warna, b.no_batch'+
      ' having sum(b.qty_in2-b.qty_out2)>0';
    QItem.SetVariable('vjns_brg',vjns_brg);
    QItem.SetVariable('vjns_lokasi',vjns_lokasi);
    QItem.SetVariable('tgl',Trunc(QMasterTGL.AsDateTime)+1-1/86400); }
//    ShowMessage(QItem.SQL.Text);
end;

procedure TSJMaklonFrm.LookItemCloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin
  if modified then
  begin
    QDetailKETERANGAN.AsString:=QItemNAMA_ITEM.AsString;
    //QDetailQTY1.AsFloat:=QItemQTY.AsFloat;
    //QDetailQTY6.AsFloat:=QItemQTY2.AsFloat;
     QDetailQTY1.AsFloat:=0;
    QDetailQTY6.AsFloat:=0;
    QDetailKD_SUB_LOKASI.AsString:=QItemKD_SUB_LOKASI.AsString;
    QDetailRASIO.AsFloat:=QItemRASIO.AsFloat;
    //QDetailKD_WARNA.AsString:=QItemKD_WARNA.AsString;
    //QDetailNO_BATCH.AsString:=QItemNO_BATCH.AsString;
  end;
end;

procedure TSJMaklonFrm.QDetailNewRecord(DataSet: TDataSet);
begin
  QDetailQTY1.AsFloat:=0;
  QDetailQTY2.AsFloat:=0;
  QDetailQTY6.AsFloat:=0;
  QDetailQTY7.AsFloat:=0;
  QDetailIBUKTI.AsInteger:=QMasterIBUKTI.AsInteger;
  QDetailKD_SUB_LOKASI2.AsString:='40-10000';

  wwDBDateTimePicker1.Enabled:=False;

  //QDetailNO_BATCH.AsString:=FormatDateTime('dd/mm/yy/',QMasterTGL.AsDateTime);//+QMasterSHIFT.AsString
end;

procedure TSJMaklonFrm.QDetailBeforePost(DataSet: TDataSet);
begin
  if QDetailQTY6.AsFloat>0 then
  begin
    QDetailQTY2.AsFloat:=(QDetailQTY1.AsFloat/QDetailQTY6.AsFloat)*QDetailQTY7.AsFloat;
    QDetailRASIO.AsFloat:=QItemRASIO.AsFloat; //--MAA 17-10-2019 semua transaksi berdasarkan RASIO MASTER sesuai hasil Meeting Produksi 
//    QDetailRASIO.AsFloat:=(QDetailQTY1.AsFloat/QDetailQTY6.AsFloat);
  end
  else
  begin
    QDetailQTY2.AsFloat:=QDetailRASIO.AsFloat*QDetailQTY7.AsFloat
  end;

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
 { if QDetailQTY2.Asfloat>QDetailQTY1.Asfloat then
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
     else }
  if QDetailKD_SUB_LOKASI.AsString='' then
     begin
        ShowMessage('LOKASI harus diisi !');
        Abort;
     end;
end;

procedure TSJMaklonFrm.TabSheet3Show(Sender: TObject);
begin
  QSOP.DeclareVariable('kd_transaksi',otString);
  QSOP.SQL.Text:='select sinopsis from '+cUserTabel+'vsop where kd_transaksi=:kd_transaksi';
  QSOP.SetVariable('kd_transaksi',vkode);
  QSOP.Open;
end;

procedure TSJMaklonFrm.LookWarnaEnter(Sender: TObject);
begin
  DMFrm.QWarna.Close;
  DMFrm.QWarna.SetVariable('myparam','ipisma_db3.warna_baru a order by a.warna');
  DMFrm.QWarna.Open;
end;

procedure TSJMaklonFrm.wwDBGrid1UpdateFooter(Sender: TObject);
begin
  QTotal.Close;
  QTotal.SetVariable('ibukti',QMasterIBUKTI.AsInteger);
  QTotal.Open;
{  wwDBGrid1.ColumnByName('QTY5').FooterValue:=FormatFloat('0,0;(0,0);-',QTotalPCS.AsFloat);
  wwDBGrid1.ColumnByName('QTY6').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QTotalKG.AsFloat);
}
{azmi}
  wwDBGrid1.ColumnByName('QTY6').FooterValue:=FormatFloat('#,0;-#,0;-',QTotalPCSAW.AsFloat);
  wwDBGrid1.ColumnByName('QTY1').FooterValue:=FormatFloat('#,0.0000;-#,0.0000;-',QTotalKGAW.AsFloat);
  wwDBGrid1.ColumnByName('QTY7').FooterValue:=FormatFloat('#,0;-#,0;-',QTotalPCS.AsFloat);
  wwDBGrid1.ColumnByName('QTY2').FooterValue:=FormatFloat('#,0.0000;-#,0.0000;-',QTotalKG.AsFloat);
{azmi}

end;

procedure TSJMaklonFrm.QRBand5BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  DMFrm.QDateTime.Open;
end;

procedure TSJMaklonFrm.QRBand6BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  DMFrm.QDateTime.Open;
end;

procedure TSJMaklonFrm.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLPeriode1.Caption:=vTglAwal.Text+' s/d '+vTglAkhir.Text;
end;

procedure TSJMaklonFrm.wwDBDateTimePicker1Change(Sender: TObject);
begin
  QItem.Refresh;
end;

procedure TSJMaklonFrm.wwDBGrid1CalcCellColors(Sender: TObject;
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

procedure TSJMaklonFrm.QMasterAfterDelete(DataSet: TDataSet);
begin
  wwDBDateTimePicker1.Enabled:=False;

end;

procedure TSJMaklonFrm.JUDULPRINTGetText(Sender: TObject;
  var Text: String);
begin
   if QMasterJENIS.AsString='CELUP' then
    begin
      judulprint.Caption:='CELUP';
    end
    else
     if QMasterJENIS.AsString='PENGERING' then
    begin
     judulprint.Caption:='PENGERING';
    end
    else
     judulprint.Caption:='CELUP + PENGERING';

end;

procedure TSJMaklonFrm.LookWarnaCloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin
  {DMFrm.QWarna.Close;
  DMFrm.QWarna.SetVariable('myparam','ipisma_db3.warna_baru a order by a.warna');
  DMFrm.QWarna.Open; }
  if modified then
  begin
  QDetailKD_WARNA.AsString:=DMFrm.QWarnaKD_WARNA.AsString;
  end;
end;

procedure TSJMaklonFrm.LookupWarna2Enter(Sender: TObject);
begin
  DMFrm.QWarna.Close;
  DMFrm.QWarna.SetVariable('myparam','ipisma_db3.warna_baru a order by a.warna');
  DMFrm.QWarna.Open;
end;

end.
