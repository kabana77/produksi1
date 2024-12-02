unit LapProduksi;

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
  TLapProduksiFrm = class(TForm)
    PanelMain: TPanel;
    PanelHeader: TPanel;
    PanelFilter: TPanel;
    LabelBanner: TLabel;
    PanelBrowse: TPanel;
    PanelFooter2: TPanel;
    BtnOk: TBitBtn;
    wwDBNavigator1: TwwDBNavigator;
    wwDBNavigator1PriorPage: TwwNavButton;
    wwDBNavigator1NextPage: TwwNavButton;
    wwDBNavigator1SaveBookmark: TwwNavButton;
    wwDBNavigator1RestoreBookmark: TwwNavButton;
    QBrowse: TOracleDataSet;
    dsQBrowse: TwwDataSource;
    Label5: TLabel;
    wwDBSpinLine2: TwwDBSpinEdit;
    BtnExport: TBitBtn;
    BtnPrintBrowse: TBitBtn;
    Label1: TLabel;
    ppReportBrowse: TppReport;
    ppDBQBrowseDetail: TppDBPipeline;
    ppDesigner1: TppDesigner;
    BtnDesign2: TBitBtn;
    ppDBPerusahaan: TppDBPipeline;
    DBText3: TDBText;
    ppTitleBand1: TppTitleBand;
    ppNamaLaporan: TppLabel;
    ppLabel9: TppLabel;
    ppPeriode: TppLabel;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppUserCetak: TppLabel;
    ppHeaderBand1: TppHeaderBand;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText8: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppSystemVariable1: TppSystemVariable;
    ppSummaryBand1: TppSummaryBand;
    ppDBText6: TppDBText;
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
    ppDBText19: TppDBText;
    ppDBText42: TppDBText;
    ppDBText43: TppDBText;
    ppDBText44: TppDBText;
    ppDBText45: TppDBText;
    ppDBText46: TppDBText;
    ppDBText47: TppDBText;
    ppDBText48: TppDBText;
    ppDBText49: TppDBText;
    ppLabel1: TppLabel;
    ppLabel5: TppLabel;
    ppDBMemo1: TppDBMemo;
    ppDBText7: TppDBText;
    ppLabel12: TppLabel;
    QSOP: TOracleDataSet;
    dsQSOP: TwwDataSource;
    BtnClose1: TBitBtn;
    ppLblNomer: TppLabel;
    ppDBText3: TppDBText;
    ppLabel8: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppDBText5: TppDBText;
    ppDBText10: TppDBText;
    vTglAwal: TwwDBDateTimePicker;
    Label3: TLabel;
    ppLabel2: TppLabel;
    ppDBText1: TppDBText;
    ppLabel3: TppLabel;
    ppDBText2: TppDBText;
    ppDBMemo2: TppDBMemo;
    ppLabel4: TppLabel;
    ppLabel23: TppLabel;
    ppLabel28: TppLabel;
    ppLabel30: TppLabel;
    ppDBText4: TppDBText;
    ppDBText11: TppDBText;
    ppDBText27: TppDBText;
    QDump: TOracleQuery;
    vTglAkhir: TwwDBDateTimePicker;
    Label4: TLabel;
    ppDBText28: TppDBText;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppDBText50: TppDBText;
    ppDBText51: TppDBText;
    ppLine13: TppLine;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppLine14: TppLine;
    ppLine15: TppLine;
    ppLine16: TppLine;
    ppLine17: TppLine;
    ppLine18: TppLine;
    ppShape1: TppShape;
    ppShape2: TppShape;
    ppShape3: TppShape;
    ppShape4: TppShape;
    ppLabel33: TppLabel;
    ppShape5: TppShape;
    ppShape8: TppShape;
    ppLabel34: TppLabel;
    ppShape9: TppShape;
    ppShape10: TppShape;
    ppLabel35: TppLabel;
    ppLine19: TppLine;
    ppLine20: TppLine;
    ppShape11: TppShape;
    ppLine21: TppLine;
    ppLine22: TppLine;
    ppLine23: TppLine;
    ppLine24: TppLine;
    ppLabel36: TppLabel;
    ppShape6: TppShape;
    ppShape7: TppShape;
    ppShape12: TppShape;
    ppLine25: TppLine;
    ppLine26: TppLine;
    ppLabel37: TppLabel;
    ppLine27: TppLine;
    wwDBGrid1: TwwDBGrid;
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    QRDBText3: TQRDBText;
    QRExpr9: TQRExpr;
    SummaryBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRExpr1: TQRExpr;
    QBrowseNAMA_ITEM: TStringField;
    QBrowseQTY1: TFloatField;
    QBrowseQTY2: TFloatField;
    QBrowseQTY3: TFloatField;
    QBrowseQTY4: TFloatField;
    QBrowseQTY5: TFloatField;
    QBrowseQTY6: TFloatField;
    QRDBText4: TQRDBText;
    QRExpr2: TQRExpr;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRExpr3: TQRExpr;
    QRDBText5: TQRDBText;
    QRLabel1: TQRLabel;
    QRExpr4: TQRExpr;
    QRShape4: TQRShape;
    QRLabel3: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    TitleBand1: TQRBand;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    PageFooterBand1: TQRBand;
    QRDBText6: TQRDBText;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRDBText7: TQRDBText;
    QRLabel16: TQRLabel;
    QRExpr5: TQRExpr;
    QRShape14: TQRShape;
    QBrowseQTY7: TFloatField;
    QBrowseQTY8: TFloatField;
    QTotal: TOracleDataSet;
    QTotalQTY1: TFloatField;
    QTotalQTY2: TFloatField;
    QTotalQTY3: TFloatField;
    QTotalQTY4: TFloatField;
    QTotalQTY5: TFloatField;
    QTotalQTY6: TFloatField;
    QTotalQTY7: TFloatField;
    QTotalQTY8: TFloatField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    wwDBGrid2: TwwDBGrid;
    QBrowsesc_bale: TFloatField;
    QBrowsesc_bale_mtr: TFloatField;
    QBrowseNO_BENANG: TFloatField;
    QBrowsesc_prod_bale_mtr: TFloatField;
    QRDBText1: TQRDBText;
    QRLabel4: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QBrowsesc_prosen: TFloatField;
    QuickRep2: TQuickRep;
    QRBand1: TQRBand;
    QRDBText2: TQRDBText;
    QRBand2: TQRBand;
    QRLabel21: TQRLabel;
    QRBand3: TQRBand;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRShape3: TQRShape;
    QRLabel38: TQRLabel;
    QRShape7: TQRShape;
    QRLabel49: TQRLabel;
    QRShape6: TQRShape;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel32: TQRLabel;
    QRBand4: TQRBand;
    QRSysData2: TQRSysData;
    QRShape9: TQRShape;
    QRDBText8: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRBand5: TQRBand;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRShape18: TQRShape;
    QRShape19: TQRShape;
    QRShape20: TQRShape;
    QRShape21: TQRShape;
    QRShape22: TQRShape;
    QRShape23: TQRShape;
    QRExpr6: TQRExpr;
    QRExpr7: TQRExpr;
    QRExpr8: TQRExpr;
    QRExpr10: TQRExpr;
    QRDBText17: TQRDBText;
    QRBand6: TQRBand;
    QRDBText18: TQRDBText;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRShape5: TQRShape;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRShape8: TQRShape;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRShape24: TQRShape;
    QRShape25: TQRShape;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRShape15: TQRShape;
    QRShape30: TQRShape;
    QRShape31: TQRShape;
    QRShape32: TQRShape;
    QRExpr11: TQRExpr;
    QRExpr12: TQRExpr;
    QRExpr13: TQRExpr;
    QRExpr14: TQRExpr;
    BitBtnPrint2: TBitBtn;
    QRShape13: TQRShape;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRShape26: TQRShape;
    QRBand7: TQRBand;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel43: TQRLabel;
    QRLabel46: TQRLabel;
    QRLabel47: TQRLabel;
    QRShape27: TQRShape;
    QRShape28: TQRShape;
    QRShape29: TQRShape;
    QRShape33: TQRShape;
    QRShape34: TQRShape;
    QRShape35: TQRShape;
    QRExpr15: TQRExpr;
    QRExpr16: TQRExpr;
    QRExpr17: TQRExpr;
    QRExpr18: TQRExpr;
    QRDBText19: TQRDBText;
    QRShape36: TQRShape;
    QRShape37: TQRShape;
    QRShape38: TQRShape;
    QRShape39: TQRShape;
    QRExpr19: TQRExpr;
    QRExpr20: TQRExpr;
    QRExpr21: TQRExpr;
    QRExpr22: TQRExpr;
    QRShape40: TQRShape;
    QRShape41: TQRShape;
    QRShape42: TQRShape;
    QRLabel50: TQRLabel;
    QRLabel51: TQRLabel;
    QBrowseQTY9: TFloatField;
    QBrowseQTY10: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure BtnExportClick(Sender: TObject);
    procedure BtnOkClick(Sender: TObject);
    procedure wwDBGrid2TitleButtonClick(Sender: TObject;
      AFieldName: String);
    procedure BtnClose1Click(Sender: TObject);
    procedure wwDBSpinLine2Change(Sender: TObject);
    procedure BtnFindClick(Sender: TObject);
    procedure BtnOk2Click(Sender: TObject);
    procedure BtnPrintBrowseClick(Sender: TObject);
    procedure BtnPrintBrowse1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BtnDesign2Click(Sender: TObject);
    procedure ppTitleBand1BeforePrint(Sender: TObject);
    procedure Label5Click(Sender: TObject);
    procedure LookItemEnter(Sender: TObject);
    procedure ppDetailBand1BeforePrint(Sender: TObject);
    procedure QTransaksiBeforeOpen(DataSet: TDataSet);
    procedure vTglAwalChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure QBrowseAfterScroll(DataSet: TDataSet);
    procedure BitBtnPrint2Click(Sender: TObject);
    procedure cbAdaTransaksiClick(Sender: TObject);
    procedure TitleBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand5BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand6BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand8BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure PageFooterBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRep1AfterPreview(Sender: TObject);
    procedure QuickRep1AfterPrint(Sender: TObject);
    procedure wwDBGrid1UpdateFooter(Sender: TObject);
    procedure QBrowseCalcFields(DataSet: TDataSet);
    procedure wwDBGrid2UpdateFooter(Sender: TObject);
    procedure SummaryBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    { Private declarations }
    vorder, SelectedFont, vkode, vitem : String;
    t1, t2, t3, t4, t5, t6 : real;
    t7, t8, t9, t10, t11, t12 : real;
  public
    { Public declarations }

  end;

var
  LapProduksiFrm: TLapProduksiFrm;

Procedure ShowForm(pNamaMenu:String; pkode : String; pjudul : string; pbrg : string);

implementation

uses DM, Pembelian, Kriteria_Tanggal1, KartuStokBB, InfoWIPPengeringan,
  Math;

{$R *.dfm}

procedure ShowForm(pNamaMenu:String; pkode : String; pjudul : string; pbrg : String);
var
  mychar : string[125];
Begin
// Hak Menu
  DMFrm.cHakInput:=DMFrm.QMenuUser.Lookup('NAMA_COMPONENT',pNamaMenu,'HAK_INPUT')='1';
  DMFrm.cBtnDesign:=DMFrm.QMenuUser.Lookup('NAMA_COMPONENT',pNamaMenu,'HAK_DESIGN')='1';
  DMFrm.cBtnExport:=DMFrm.QMenuUser.Lookup('NAMA_COMPONENT',pNamaMenu,'HAK_EXPORT')='1';

//  if InfoWIPPengeringanFrm=Nil then
  begin
    LapProduksiFrm:=TLapProduksiFrm.Create(Application);
    mychar:=pjudul;
    Delete(mychar,Pos('&',mychar),1);
    pjudul:=mychar;
    LapProduksiFrm.vkode:=pbrg;
    LapProduksiFrm.QTransaksi.Open;


    LapProduksiFrm.PanelHeader.Caption:=pjudul;
    LapProduksiFrm.Caption:=UpperCase(LapProduksiFrm.PanelHeader.Caption);
    {LapProduksiFrm.wwDBGrid2.IniAttributes.FileName:=DMFrm.sAppPath+Application.Title+'2.ini';
    LapProduksiFrm.wwDBGrid2.IniAttributes.SectionName:=LapProduksiFrm.Caption+'2';
    LapProduksiFrm.wwDBGrid2.IniAttributes.Enabled:=True;
    LapProduksiFrm.wwDBGrid2.LoadFromIniFile;
    DMFrm.ProcReadIni(Application.Title,LapProduksiFrm.Caption+'2',LapProduksiFrm.wwDBGrid2);
    LapProduksiFrm.wwDBSpinLine2.Value:=LapProduksiFrm.wwDBGrid2.RowHeightPercent;}

  end;

  LapProduksiFrm.Show;
end;

procedure TLapProduksiFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   DMFrm.ProcWtiteIni(Application.Title,Caption+'2',wwDBGrid1);
   Action:=caFree;
   LapProduksiFrm:=Nil;
   QuickRep1:=Nil;
end;

procedure TLapProduksiFrm.FormCreate(Sender: TObject);
begin
//barcode
     DMFrm.FontToUse := TFont.Create;
     DMFrm.selected := 'UCC 128';
     SelectedFont := 'CIA Code 128 Medium';
     StrPCopy(DMFrm.TempSelected, DMFrm.Selected);
     DMFrm.BType := 'C128';
     DMFrm.FontToUse.Size := 12;
     DMFrm.FontToUse.Name := SelectedFont;
//     LBarcode.Font := DMFrm.FontToUse;
//     QRBarcode11.Font := LoginFrm.FontToUse;
     DMFrm.BType := DMFrm.BType + '-';
     DMFrm.BType := DMFrm.BType + DMFrm.Format;
     DMFrm.BType := DMFrm.BType + '.BH';
// end barcode

  PanelMain.Color:=cWarnaPanelUtama;
  BtnClose1.Glyph.LoadFromFile(DMFrm.sAppPath+'Images\CLOSE.Bmp');
  BtnOk.Glyph.LoadFromFile(DMFrm.sAppPath+'Images\CHECK.Bmp');
//  BtnOk2.Glyph.LoadFromFile(DMFrm.sAppPath+'Images\CHECK.Bmp');
//  BtnFind.Glyph.LoadFromFile(DMFrm.sAppPath+'Images\FIND.Bmp');
  BtnDesign2.Glyph.LoadFromFile(DMFrm.sAppPath+'Images\DESIGN.Bmp');
  BtnPrintBrowse.Glyph.LoadFromFile(DMFrm.sAppPath+'Images\PRINT.Bmp');
//  BtnPrintBrowse1.Glyph.LoadFromFile(DMFrm.sAppPath+'Images\PRINT.Bmp');
  BtnExport.Glyph.LoadFromFile(DMFrm.sAppPath+'Images\EXPORT.Bmp');
//Otoritas Button
//  BtnExport.Visible:=DMFrm.cBtnExport;
  BtnDesign2.Visible:=DMFrm.cBtnDesign;
end;

procedure TLapProduksiFrm.BtnExportClick(Sender: TObject);
begin
  if QBrowse.Active then
  begin
     DMFrm.SaveDialog1.DefaultExt:='XLK';
     DMFrm.SaveDialog1.Filter:='Excel files (*.XLK)|*.XLK';
     DMFrm.SaveDialog1.FileName:=PanelHeader.Caption+' '+ vTglAwal.Text+' sd '+vTglAkhir.Text+'.xlK';
     wwDBGrid2.ExportOptions.TitleName:='LAPORAN PRODUKSI DEPT DYEING';
       if DMFrm.SaveDialog1.Execute then
       begin
         try
         wwDBGrid1.ExportOptions.FileName:=DMFrm.SaveDialog1.FileName;
         wwDBGrid1.ExportOptions.Save;
         ShowMessage('Simpan Sukses !');
         except
         ShowMessage('Simpan Gagal !');
         end;
       end;
  end
  else
    ShowMessage('Tabel belum di-OPEN !');
end;

procedure TLapProduksiFrm.BtnOkClick(Sender: TObject);
var
  vrasio, vqty1, vqty2, vqty3, vqty4, vqty5, vqty6, vqty7, vqty8, vqty9, vqty10 : real;
begin
  QDump.Close;
  QDump.SetVariable('vsysdate',vTglAwal.Date);
  QDump.SetVariable('vsysdate2',vTglAkhir.Date);
  QDump.Execute;
  QBrowse.DisableControls;
  QBrowse.Close;
  QBrowse.Open;
  QBrowse.EnableControls;

  vqty1:=0;
  vqty2:=0;
  vqty3:=0;
  vqty4:=0;
  vqty5:=0;
  vqty6:=0;
  vqty7:=0;
  vqty8:=0;
  vqty9:=0;
  vqty10:=0;
  while not QBrowse.Eof do
  begin
    vqty1:=vqty1+QBrowseQTY1.AsFloat;
    vqty2:=vqty2+QBrowseQTY2.AsFloat;
    vqty3:=vqty3+QBrowseQTY3.AsFloat;
    vqty4:=vqty4+QBrowseQTY4.AsFloat;
    vqty5:=vqty5+QBrowseQTY5.AsFloat;
    vqty6:=vqty6+QBrowseQTY6.AsFloat;
    vqty7:=vqty7+QBrowseQTY7.AsFloat;
    vqty8:=vqty8+QBrowseQTY8.AsFloat;
    vqty9:=vqty9+QBrowseQTY9.AsFloat;
    vqty10:=vqty10+QBrowseQTY10.AsFloat;
    QBrowse.Next;
  end;

  QBrowse.EnableControls;

  wwDBGrid1.ColumnByName('QTY1').FooterValue:=FormatFloat('0.00,0;(0.00,0);-',vqty1);
  wwDBGrid1.ColumnByName('QTY2').FooterValue:=FormatFloat('0,0;(0,0);-',vqty2);
  wwDBGrid1.ColumnByName('QTY3').FooterValue:=FormatFloat('0.00,0;(0.00,0);-',vqty3);
  wwDBGrid1.ColumnByName('QTY4').FooterValue:=FormatFloat('0,0;(0,0);-',vqty4);
  wwDBGrid1.ColumnByName('QTY9').FooterValue:=FormatFloat('0.00,0;(0.00,0);-',vqty9);
  wwDBGrid1.ColumnByName('QTY10').FooterValue:=FormatFloat('0,0;(0,0);-',vqty10);
  wwDBGrid1.ColumnByName('QTY5').FooterValue:=FormatFloat('0.00,0;(0.00,0);-',vqty5);
  wwDBGrid1.ColumnByName('QTY6').FooterValue:=FormatFloat('0,0;(0,0);-',vqty6);
  wwDBGrid1.ColumnByName('QTY7').FooterValue:=FormatFloat('0.00,0;(0.00,0);-',vqty7);
  wwDBGrid1.ColumnByName('QTY8').FooterValue:=FormatFloat('0,0;(0,0);-',vqty8);
end;

procedure TLapProduksiFrm.wwDBGrid2TitleButtonClick(Sender: TObject;
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

procedure TLapProduksiFrm.BtnClose1Click(Sender: TObject);
begin
  Close;
end;

procedure TLapProduksiFrm.wwDBSpinLine2Change(Sender: TObject);
begin
//    wwDBGrid2.RowHeightPercent:=Round(wwDBSpinLine2.Value);
end;

procedure TLapProduksiFrm.BtnFindClick(Sender: TObject);
begin
{	wwDBGrid2.ColumnByName('NILAI').FooterValue:='';;
  if not QBrowse.QBEMode then
  begin
    wwDBGrid2.Options:=wwDBGrid2.Options-[dgRowSelect,dgAlwaysShowSelection];
    QBrowse.QBEMode:=TRUE;
  end
  else
    QBrowse.ClearQBE;}
end;

procedure TLapProduksiFrm.BtnOk2Click(Sender: TObject);
begin
  {if QBrowse.QBEMode then
  begin
    QBrowse.ExecuteQBE;
    wwDBGrid2.Options:=wwDBGrid2.Options+[dgRowSelect,dgAlwaysShowSelection];
      t1:=0;
      t2:=0;
      t3:=0;
      t4:=0;
      t5:=0;
      t6:=0;
      t7:=0;
      t8:=0;
      t9:=0;
      t10:=0;
      t11:=0;
      t12:=0;
      while not QBrowse.Eof do
      begin

      end;
      QBrowse.EnableControls;
   end;}
end;

procedure TLapProduksiFrm.BtnPrintBrowseClick(Sender: TObject);
begin
  QuickRep1.Preview;
end;

procedure TLapProduksiFrm.BtnPrintBrowse1Click(Sender: TObject);
var checbox : byte;
begin

end;

procedure TLapProduksiFrm.Button1Click(Sender: TObject);
begin
  ppDesigner1.ShowModal;
end;

procedure TLapProduksiFrm.BtnDesign2Click(Sender: TObject);
begin
  ppDesigner1.ShowModal;
end;

procedure TLapProduksiFrm.ppTitleBand1BeforePrint(Sender: TObject);
begin
  ppNamaLaporan.Caption:='MUTASI STOK '+DMFrm.QJnsItem.FieldByName('JNS_BRG').AsString;
  ppPeriode.Caption:=vTglAwal.Text+' SD '+vTglAkhir.Text;
  DMFrm.QTime.Close;
  DMFrm.QTime.Open;
  ppUserCetak.Caption:=DMFrm.QTimeVUSER_CETAK.AsString;
end;

procedure TLapProduksiFrm.Label5Click(Sender: TObject);
begin
  if DMFrm.FontDialog1.Execute then
  begin
    wwDBGrid1.Font.Name:=DMFrm.FontDialog1.Font.Name;
    wwDBGrid1.Font.Size:=DMFrm.FontDialog1.Font.Size;
    wwDBGrid1.Font.Color:=DMFrm.FontDialog1.Font.Color;
    wwDBGrid1.Font.Style:=DMFrm.FontDialog1.Font.Style;
  end;
end;

procedure TLapProduksiFrm.LookItemEnter(Sender: TObject);
begin
  (sender as TwwDBLookupComboDlg).LookupTable.Open;
end;

procedure TLapProduksiFrm.ppDetailBand1BeforePrint(Sender: TObject);
begin
 ppLblNomer.Caption:=IntToStr(ppDBQBrowseDetail.RecordNo+1)
end;

procedure TLapProduksiFrm.QTransaksiBeforeOpen(DataSet: TDataSet);
begin
  QTransaksi.DeclareVariable('kd_transaksi', otString);
  QTransaksi.SQL.Text:='select a.* from '+cUserTabel+'vtransaksi a where a.kd_transaksi=:kd_transaksi';
  QTransaksi.SetVariable('kd_transaksi',vkode);
end;

procedure TLapProduksiFrm.vTglAwalChange(Sender: TObject);
begin
  vTglAkhir.DateTime:=EndOfTheMonth(vTglAwal.Date);
end;

procedure TLapProduksiFrm.FormShow(Sender: TObject);
begin
    vTglAwal.Date:=Trunc(DMFrm.QTimeJAM.AsDateTime);
    vTglAkhir.Date:=Trunc(DMFrm.QTimeJAM.AsDateTime);
    LapProduksiFrm:=Nil;
end;

procedure TLapProduksiFrm.QBrowseAfterScroll(DataSet: TDataSet);
begin
    LabelBanner.Caption:='Record ke '+IntToStr(QBrowse.RecNo)+' dari '+FormatFloat('#,#',QBrowse.RecordCount)+' Records';
end;

procedure TLapProduksiFrm.BitBtnPrint2Click(Sender: TObject);
begin
  QuickRep2.Preview;
end;

procedure TLapProduksiFrm.cbAdaTransaksiClick(Sender: TObject);
begin
//  QBrowse.Filtered:=cbAdaTransaksi.Checked;
end;

procedure TLapProduksiFrm.TitleBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  QRLabel13.Caption:='Bulan  '+FormatDateTime('MMMM YYYY',VTglAkhir.Date);
  QRLabel14.Caption:='(Per : '+vTglAwal.Text+' s/d '+vTglAkhir.Text+')';
end;

procedure TLapProduksiFrm.QRBand5BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  DMFrm.QDateTime.Open;
//  QRLabel84.Caption:=FormatDateTime('dd mmmm yyyy',vTglAkhir.Date);
end;

procedure TLapProduksiFrm.QRBand6BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  DMFrm.QDateTime.Open;
end;

procedure TLapProduksiFrm.QRBand8BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
//  QRLabel55.Caption:=vTglAwal.Text+' s/d '+vTglAkhir.Text;
end;

procedure TLapProduksiFrm.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel50.Caption:='Bulan  '+FormatDateTime('MMMM YYYY',VTglAkhir.Date);
  QRLabel51.Caption:='(Per : '+vTglAwal.Text+' s/d '+vTglAkhir.Text+')';
end;

procedure TLapProduksiFrm.PageFooterBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  DMFrm.QDateTime.Open;
end;

procedure TLapProduksiFrm.QuickRep1AfterPreview(Sender: TObject);
begin
  LapProduksiFrm :=Nil;
end;

procedure TLapProduksiFrm.QuickRep1AfterPrint(Sender: TObject);
begin
  LapProduksiFrm :=Nil;
end;

procedure TLapProduksiFrm.wwDBGrid1UpdateFooter(Sender: TObject);
begin
{  QTotal.Close;
  QTotal.SetVariable('item',QBrowseNAMA_ITEM.AsString);
}
{  QTotal.Close;
  QTotal.Open;
  wwDBGrid1.ColumnByName('QTY1').FooterValue:=FormatFloat('0.00,0;(0.00,0);-',QTotalQTY1.AsFloat);
  wwDBGrid1.ColumnByName('QTY2').FooterValue:=FormatFloat('0,0;(0,0);-',QTotalQTY2.AsFloat);
  wwDBGrid1.ColumnByName('QTY3').FooterValue:=FormatFloat('0.00,0;(0.00,0);-',QTotalQTY3.AsFloat);
  wwDBGrid1.ColumnByName('QTY4').FooterValue:=FormatFloat('0,0;(0,0);-',QTotalQTY4.AsFloat);
  wwDBGrid1.ColumnByName('QTY5').FooterValue:=FormatFloat('0.00,0;(0.00,0);-',QTotalQTY5.AsFloat);
  wwDBGrid1.ColumnByName('QTY6').FooterValue:=FormatFloat('0,0;(0,0);-',QTotalQTY6.AsFloat);
  wwDBGrid1.ColumnByName('QTY7').FooterValue:=FormatFloat('0.00,0;(0.00,0);-',QTotalQTY7.AsFloat);
  wwDBGrid1.ColumnByName('QTY8').FooterValue:=FormatFloat('0,0;(0,0);-',QTotalQTY8.AsFloat);
}
end;

procedure TLapProduksiFrm.QBrowseCalcFields(DataSet: TDataSet);
begin
  QBrowsesc_bale.AsFloat := QBrowseQTY1.AsFloat / 181.44;
  QBrowsesc_bale_mtr.AsFloat := (181.44*QBrowseNO_BENANG.AsFloat*768)/453.6;
  QBrowsesc_prod_bale_mtr.AsFloat := QBrowsesc_bale.AsFloat*QBrowsesc_bale_mtr.AsFloat;
//  QBrowsesc_prosen.AsFloat := QBrowsesc_prod_bale_mtr.AsFloat / Sum(QBrowsesc_prod_bale_mtr.AsFloat);
end;

procedure TLapProduksiFrm.wwDBGrid2UpdateFooter(Sender: TObject);
var  vrasio, vpcs, vkg : real;
begin
  vpcs:=0;
  vkg:=0;
  while not QBrowse.Eof do
  begin
    vpcs:=vpcs+QBrowsesc_bale.AsFloat;
    vkg:=vkg+QBrowsesc_prod_bale_mtr.AsFloat;
    QBrowse.Next;
  end;
  QTotal.Close;
  QTotal.Open;
  QBrowse.EnableControls;
  wwDBGrid2.ColumnByName('QTY1').FooterValue:=FormatFloat('#,0.0000;(#,0.0000);-',QTotalQTY1.AsFloat);
  wwDBGrid2.ColumnByName('SC_BALE').FooterValue:=FormatFloat('#,0.0000;(#,0.0000);-',vpcs);
  wwDBGrid2.ColumnByName('SC_PROD_BALE_MTR').FooterValue:=FormatFloat('#,0.0000;(#,0.0000);-',vkg);
end;

procedure TLapProduksiFrm.SummaryBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  DMFrm.QDateTime.Open;
end;

procedure TLapProduksiFrm.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  LapProduksiFrm :=Nil;
end;

end.
