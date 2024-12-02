unit LapMutStokGW;

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
  TLapMutStokGWFrm = class(TForm)
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
    QTotal: TOracleDataSet;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    wwDBGrid2: TwwDBGrid;
    QRDBText1: TQRDBText;
    QRLabel4: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
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
    QTotalQTYAWAL: TFloatField;
    QTotalQTY1M: TFloatField;
    QTotalQTY2M: TFloatField;
    QTotalQTY3M: TFloatField;
    QTotalQTY4M: TFloatField;
    QTotalQTY5M: TFloatField;
    QTotalQTY1K: TFloatField;
    QTotalQTY2K: TFloatField;
    QTotalQTY3K: TFloatField;
    QTotalQTY4K: TFloatField;
    QTotalQTY5K: TFloatField;
    QTotalQTYAKHIR: TFloatField;
    QBrowseNAMA_KONSTRUKSI: TStringField;
    QBrowseQTYAWAL: TFloatField;
    QBrowseQTY1M: TFloatField;
    QBrowseQTY2M: TFloatField;
    QBrowseQTY3M: TFloatField;
    QBrowseQTY4M: TFloatField;
    QBrowseQTY5M: TFloatField;
    QBrowseQTY6M: TFloatField;
    QBrowseQTY7M: TFloatField;
    QBrowseQTY1K: TFloatField;
    QBrowseQTY2K: TFloatField;
    QBrowseQTY3K: TFloatField;
    QBrowseQTY4K: TFloatField;
    QBrowseQTY5K: TFloatField;
    QBrowseQTY6K: TFloatField;
    QBrowseQTY7K: TFloatField;
    QBrowseQTYAKHIR: TFloatField;
    QBrowseSATUAN: TStringField;
    QBrowseNO_BENANG: TFloatField;
    QDump2: TOracleQuery;
    QBrowse2: TOracleDataSet;
    QTotal2: TOracleDataSet;
    QTotal2QTYAWAL: TFloatField;
    QTotal2QTY1M: TFloatField;
    QTotal2QTY2M: TFloatField;
    QTotal2QTY3M: TFloatField;
    QTotal2QTY4M: TFloatField;
    QTotal2QTY5M: TFloatField;
    QTotal2QTY1K: TFloatField;
    QTotal2QTY2K: TFloatField;
    QTotal2QTY3K: TFloatField;
    QTotal2QTY4K: TFloatField;
    QTotal2QTY5K: TFloatField;
    QTotal2QTYAKHIR: TFloatField;
    QBrowse2NAMA_KONSTRUKSI: TStringField;
    QBrowse2QTYAWAL: TFloatField;
    QBrowse2QTY1M: TFloatField;
    QBrowse2QTY2M: TFloatField;
    QBrowse2QTY3M: TFloatField;
    QBrowse2QTY4M: TFloatField;
    QBrowse2QTY5M: TFloatField;
    QBrowse2QTY6M: TFloatField;
    QBrowse2QTY7M: TFloatField;
    QBrowse2QTY1K: TFloatField;
    QBrowse2QTY2K: TFloatField;
    QBrowse2QTY3K: TFloatField;
    QBrowse2QTY4K: TFloatField;
    QBrowse2QTY5K: TFloatField;
    QBrowse2QTY6K: TFloatField;
    QBrowse2QTY7K: TFloatField;
    QBrowse2QTYAKHIR: TFloatField;
    QBrowse2SATUAN: TStringField;
    QBrowse2NO_BENANG: TFloatField;
    dsQBrowse2: TwwDataSource;
    QTotalQTY6K: TFloatField;
    QTotalQTY6M: TFloatField;
    QTotalQTY7K: TFloatField;
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
    procedure QBrowse2AfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
    vorder, SelectedFont, vkode, vitem : String;
    t1, t2, t3, t4, t5, t6 : real;
    t7, t8, t9, t10, t11, t12 : real;
  public
    { Public declarations }

  end;

var
  LapMutStokGWFrm: TLapMutStokGWFrm;

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
    LapMutStokGWFrm:=TLapMutStokGWFrm.Create(Application);
    mychar:=pjudul;
    Delete(mychar,Pos('&',mychar),1);
    pjudul:=mychar;
    LapMutStokGWFrm.vkode:=pbrg;
    LapMutStokGWFrm.QTransaksi.Open;


    LapMutStokGWFrm.PanelHeader.Caption:=pjudul;
    LapMutStokGWFrm.Caption:=UpperCase(LapMutStokGWFrm.PanelHeader.Caption);

    {LapProduksiFrm.wwDBGrid2.IniAttributes.FileName:=DMFrm.sAppPath+Application.Title+'2.ini';
    LapProduksiFrm.wwDBGrid2.IniAttributes.SectionName:=LapProduksiFrm.Caption+'2';
    LapProduksiFrm.wwDBGrid2.IniAttributes.Enabled:=True;
    LapProduksiFrm.wwDBGrid2.LoadFromIniFile;
    DMFrm.ProcReadIni(Application.Title,LapProduksiFrm.Caption+'2',LapProduksiFrm.wwDBGrid2);
    LapProduksiFrm.wwDBSpinLine2.Value:=LapProduksiFrm.wwDBGrid2.RowHeightPercent;}

  end;

  LapMutStokGWFrm.Show;
end;

procedure TLapMutStokGWFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   DMFrm.ProcWtiteIni(Application.Title,Caption+'2',wwDBGrid1);
   Action:=caFree;
   LapMutStokGWFrm:=Nil;
   QuickRep1:=Nil;
end;

procedure TLapMutStokGWFrm.FormCreate(Sender: TObject);
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

procedure TLapMutStokGWFrm.BtnExportClick(Sender: TObject);
begin
if PageControl1.ActivePage.TabIndex=0 then
  begin
//SOFTCONE
 if QBrowse.Active then
  begin
     DMFrm.SaveDialog1.DefaultExt:='XLK';
     DMFrm.SaveDialog1.Filter:='Excel files (*.XLK)|*.XLK';
//     DMFrm.SaveDialog1.FileName:=PanelHeader.Caption+' '+ vTglAwal.Text+' sd '+vTglAkhir.Text+'.xlk';
     DMFrm.SaveDialog1.FileName:='Laporan Mutasi Stok Gudang Warna '+ vTglAwal.Text+' sd '+vTglAkhir.Text+'.xlk';
     wwDBGrid1.ExportOptions.TitleName:='<font size=4>'+'LAPORAN MUTASI STOK GUDANG WARNA DEPT DYEING'+'</font><br><font size=3>'+vTglAwal.Text+' s.d '+vTglAkhir.Text+'</font><br><font size=0>'+'.';

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
end

else

//CELUP
begin
 if QBrowse2.Active then
  begin
     DMFrm.SaveDialog1.DefaultExt:='XLK';
     DMFrm.SaveDialog1.Filter:='Excel files (*.XLK)|*.XLK';
     DMFrm.SaveDialog1.FileName:='Laporan Mutasi Stok Celup '+ vTglAwal.Text+' sd '+vTglAkhir.Text+'.xlk';
     wwDBGrid2.ExportOptions.TitleName:='<font size=4>'+'LAPORAN MUTASI STOK CELUP DEPT DYEING'+'</font><br><font size=3>'+vTglAwal.Text+' s.d '+vTglAkhir.Text+'</font><br><font size=0>'+'.';

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

end;

procedure TLapMutStokGWFrm.BtnOkClick(Sender: TObject);
var
  vrasio, vpcs, vkg : real;
begin
if PageControl1.ActivePage.TabIndex=0 then
  begin
//GW
  QDump.Close;
  QDump.SetVariable('vsysdate',vTglAwal.Date);
  QDump.SetVariable('vsysdate2',vTglAkhir.Date);
  QDump.Execute;
  QBrowse.DisableControls;
  QBrowse.Close;
  QBrowse.Open;
  QBrowse.EnableControls;
{
  vpcs:=0;
  vkg:=0;
  while not QBrowse.Eof do
  begin
    vkg:=vkg+QBrowseQTY1.AsFloat;
    vpcs:=vpcs+QBrowseQTY2.AsFloat;
    vkg:=vkg+QBrowseQTY3.AsFloat;
    QBrowse.Next;
  end;
  QBrowse.EnableControls;
  wwDBGrid2.ColumnByName('QTY1').FooterValue:=FormatFloat('#,0.0000;(#,0.0000);-',vkg);
  wwDBGrid2.ColumnByName('SC_BALE').FooterValue:=FormatFloat('#,0;(#,0);-',vpcs);
  wwDBGrid2.ColumnByName('SC_BALE_PROD_MTR').FooterValue:=FormatFloat('#,0.0000;(#,0.0000);-',vkg);}

  QTotal.Close;
  QTotal.Open;
  wwDBGrid1.ColumnByName('QTYAWAL').FooterValue:=FormatFloat('#,0.00;(#,0.00);-',QTotalQTYAWAL.AsFloat);
  wwDBGrid1.ColumnByName('QTY1M').FooterValue:=FormatFloat('#,0.00;(#,0.00);-',QTotalQTY1M.AsFloat);
  wwDBGrid1.ColumnByName('QTY2M').FooterValue:=FormatFloat('#,0.00;(#,0.00);-',QTotalQTY2M.AsFloat);
  wwDBGrid1.ColumnByName('QTY3M').FooterValue:=FormatFloat('#,0.00;(#,0.00);-',QTotalQTY3M.AsFloat);
  wwDBGrid1.ColumnByName('QTY4M').FooterValue:=FormatFloat('#,0.00;(#,0.00);-',QTotalQTY4M.AsFloat);
  wwDBGrid1.ColumnByName('QTY5M').FooterValue:=FormatFloat('#,0.00;(#,0.00);-',QTotalQTY5M.AsFloat);
  wwDBGrid1.ColumnByName('QTY6M').FooterValue:=FormatFloat('#,0.00;(#,0.00);-',QTotalQTY6M.AsFloat);
  wwDBGrid1.ColumnByName('QTY1K').FooterValue:=FormatFloat('#,0.00;(#,0.00);-',QTotalQTY1K.AsFloat);
  wwDBGrid1.ColumnByName('QTY2K').FooterValue:=FormatFloat('#,0.00;(#,0.00);-',QTotalQTY2K.AsFloat);
  wwDBGrid1.ColumnByName('QTY3K').FooterValue:=FormatFloat('#,0.00;(#,0.00);-',QTotalQTY3K.AsFloat);
  wwDBGrid1.ColumnByName('QTY4K').FooterValue:=FormatFloat('#,0.00;(#,0.00);-',QTotalQTY4K.AsFloat);
  wwDBGrid1.ColumnByName('QTY5K').FooterValue:=FormatFloat('#,0.00;(#,0.00);-',QTotalQTY5K.AsFloat);
  wwDBGrid1.ColumnByName('QTY6K').FooterValue:=FormatFloat('#,0.00;(#,0.00);-',QTotalQTY6K.AsFloat);
  wwDBGrid1.ColumnByName('QTY7K').FooterValue:=FormatFloat('#,0.00;(#,0.00);-',QTotalQTY7K.AsFloat);
  wwDBGrid1.ColumnByName('QTYAKHIR').FooterValue:=FormatFloat('#,0.00;(#,0.00);-',QTotalQTYAKHIR.AsFloat);
//  Showmessage('Proses Laporan Mutasi Stok Gudang Warna selesai..!!');
  end

else

  begin
//CELUP
  QDump2.Close;
  QDump2.SetVariable('vsysdate',vTglAwal.Date);
  QDump2.SetVariable('vsysdate2',vTglAkhir.Date);
  QDump2.Execute;
  QBrowse2.DisableControls;
  QBrowse2.Close;
  QBrowse2.Open;
  QBrowse2.EnableControls;
{
  vpcs:=0;
  vkg:=0;
  while not QBrowse.Eof do
  begin
    vkg:=vkg+QBrowseQTY1.AsFloat;
    vpcs:=vpcs+QBrowseQTY2.AsFloat;
    vkg:=vkg+QBrowseQTY3.AsFloat;
    QBrowse.Next;
  end;
  QBrowse.EnableControls;
  wwDBGrid2.ColumnByName('QTY1').FooterValue:=FormatFloat('#,0.0000;(#,0.0000);-',vkg);
  wwDBGrid2.ColumnByName('SC_BALE').FooterValue:=FormatFloat('#,0;(#,0);-',vpcs);
  wwDBGrid2.ColumnByName('SC_BALE_PROD_MTR').FooterValue:=FormatFloat('#,0.0000;(#,0.0000);-',vkg);}

  QTotal2.Close;
  QTotal2.Open;
  wwDBGrid2.ColumnByName('QTYAWAL').FooterValue:=FormatFloat('#,0.00;(#,0.00);-',QTotal2QTYAWAL.AsFloat);
  wwDBGrid2.ColumnByName('QTY1M').FooterValue:=FormatFloat('#,0.00;(#,0.00);-',QTotal2QTY1M.AsFloat);
  wwDBGrid2.ColumnByName('QTY2M').FooterValue:=FormatFloat('#,0.00;(#,0.00);-',QTotal2QTY2M.AsFloat);
  wwDBGrid2.ColumnByName('QTY3M').FooterValue:=FormatFloat('#,0.00;(#,0.00);-',QTotal2QTY3M.AsFloat);
  wwDBGrid2.ColumnByName('QTY4M').FooterValue:=FormatFloat('#,0.00;(#,0.00);-',QTotal2QTY4M.AsFloat);
  wwDBGrid2.ColumnByName('QTY5M').FooterValue:=FormatFloat('#,0.00;(#,0.00);-',QTotal2QTY5M.AsFloat);
  wwDBGrid2.ColumnByName('QTY1K').FooterValue:=FormatFloat('#,0.00;(#,0.00);-',QTotal2QTY1K.AsFloat);
  wwDBGrid2.ColumnByName('QTY2K').FooterValue:=FormatFloat('#,0.00;(#,0.00);-',QTotal2QTY2K.AsFloat);
  wwDBGrid2.ColumnByName('QTY3K').FooterValue:=FormatFloat('#,0.00;(#,0.00);-',QTotal2QTY3K.AsFloat);
  wwDBGrid2.ColumnByName('QTY4K').FooterValue:=FormatFloat('#,0.00;(#,0.00);-',QTotal2QTY4K.AsFloat);
  wwDBGrid2.ColumnByName('QTY5K').FooterValue:=FormatFloat('#,0.00;(#,0.00);-',QTotal2QTY5K.AsFloat);
  wwDBGrid2.ColumnByName('QTYAKHIR').FooterValue:=FormatFloat('#,0.00;(#,0.00);-',QTotal2QTYAKHIR.AsFloat);
//  Showmessage('Proses Laporan Mutasi Stok Celup selesai..!!');
  end;

end;

procedure TLapMutStokGWFrm.wwDBGrid2TitleButtonClick(Sender: TObject;
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

procedure TLapMutStokGWFrm.BtnClose1Click(Sender: TObject);
begin
  Close;
end;

procedure TLapMutStokGWFrm.wwDBSpinLine2Change(Sender: TObject);
begin
//    wwDBGrid2.RowHeightPercent:=Round(wwDBSpinLine2.Value);
end;

procedure TLapMutStokGWFrm.BtnFindClick(Sender: TObject);
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

procedure TLapMutStokGWFrm.BtnOk2Click(Sender: TObject);
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

procedure TLapMutStokGWFrm.BtnPrintBrowseClick(Sender: TObject);
begin
  QuickRep1.Preview;
end;

procedure TLapMutStokGWFrm.BtnPrintBrowse1Click(Sender: TObject);
var checbox : byte;
begin

end;

procedure TLapMutStokGWFrm.Button1Click(Sender: TObject);
begin
  ppDesigner1.ShowModal;
end;

procedure TLapMutStokGWFrm.BtnDesign2Click(Sender: TObject);
begin
  ppDesigner1.ShowModal;
end;

procedure TLapMutStokGWFrm.ppTitleBand1BeforePrint(Sender: TObject);
begin
  ppNamaLaporan.Caption:='MUTASI STOK '+DMFrm.QJnsItem.FieldByName('JNS_BRG').AsString;
  ppPeriode.Caption:=vTglAwal.Text+' SD '+vTglAkhir.Text;
  DMFrm.QTime.Close;
  DMFrm.QTime.Open;
  ppUserCetak.Caption:=DMFrm.QTimeVUSER_CETAK.AsString;
end;

procedure TLapMutStokGWFrm.Label5Click(Sender: TObject);
begin
  if DMFrm.FontDialog1.Execute then
  begin
    wwDBGrid1.Font.Name:=DMFrm.FontDialog1.Font.Name;
    wwDBGrid1.Font.Size:=DMFrm.FontDialog1.Font.Size;
    wwDBGrid1.Font.Color:=DMFrm.FontDialog1.Font.Color;
    wwDBGrid1.Font.Style:=DMFrm.FontDialog1.Font.Style;
  end;
end;

procedure TLapMutStokGWFrm.LookItemEnter(Sender: TObject);
begin
  (sender as TwwDBLookupComboDlg).LookupTable.Open;
end;

procedure TLapMutStokGWFrm.ppDetailBand1BeforePrint(Sender: TObject);
begin
 ppLblNomer.Caption:=IntToStr(ppDBQBrowseDetail.RecordNo+1)
end;

procedure TLapMutStokGWFrm.QTransaksiBeforeOpen(DataSet: TDataSet);
begin
  QTransaksi.DeclareVariable('kd_transaksi', otString);
  QTransaksi.SQL.Text:='select a.* from '+cUserTabel+'vtransaksi a where a.kd_transaksi=:kd_transaksi';
  QTransaksi.SetVariable('kd_transaksi',vkode);
end;

procedure TLapMutStokGWFrm.vTglAwalChange(Sender: TObject);
begin
  vTglAkhir.DateTime:=EndOfTheMonth(vTglAwal.Date);
end;

procedure TLapMutStokGWFrm.FormShow(Sender: TObject);
begin
    vTglAwal.Date:=Trunc(DMFrm.QTimeJAM.AsDateTime);
    vTglAkhir.Date:=Trunc(DMFrm.QTimeJAM.AsDateTime);
    LapMutStokGWFrm:=Nil;

    TabSheet2.TabVisible:=False;
end;

procedure TLapMutStokGWFrm.QBrowseAfterScroll(DataSet: TDataSet);
begin
    LabelBanner.Caption:='Record ke '+IntToStr(QBrowse.RecNo)+' dari '+FormatFloat('#,#',QBrowse.RecordCount)+' Records';
end;

procedure TLapMutStokGWFrm.BitBtnPrint2Click(Sender: TObject);
begin
  QuickRep2.Preview;
end;

procedure TLapMutStokGWFrm.cbAdaTransaksiClick(Sender: TObject);
begin
//  QBrowse.Filtered:=cbAdaTransaksi.Checked;
end;

procedure TLapMutStokGWFrm.TitleBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  QRLabel13.Caption:='Bulan  '+FormatDateTime('MMMM YYYY',VTglAkhir.Date);
  QRLabel14.Caption:='(Per : '+vTglAwal.Text+' s/d '+vTglAkhir.Text+')';
end;

procedure TLapMutStokGWFrm.QRBand5BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  DMFrm.QDateTime.Open;
//  QRLabel84.Caption:=FormatDateTime('dd mmmm yyyy',vTglAkhir.Date);
end;

procedure TLapMutStokGWFrm.QRBand6BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  DMFrm.QDateTime.Open;
end;

procedure TLapMutStokGWFrm.QRBand8BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
//  QRLabel55.Caption:=vTglAwal.Text+' s/d '+vTglAkhir.Text;
end;

procedure TLapMutStokGWFrm.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel50.Caption:='Bulan  '+FormatDateTime('MMMM YYYY',VTglAkhir.Date);
  QRLabel51.Caption:='(Per : '+vTglAwal.Text+' s/d '+vTglAkhir.Text+')';
end;

procedure TLapMutStokGWFrm.PageFooterBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  DMFrm.QDateTime.Open;
end;

procedure TLapMutStokGWFrm.QuickRep1AfterPreview(Sender: TObject);
begin
  LapMutStokGWFrm :=Nil;
end;

procedure TLapMutStokGWFrm.QuickRep1AfterPrint(Sender: TObject);
begin
  LapMutStokGWFrm :=Nil;
end;

procedure TLapMutStokGWFrm.wwDBGrid1UpdateFooter(Sender: TObject);
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

procedure TLapMutStokGWFrm.QBrowseCalcFields(DataSet: TDataSet);
begin
//  QBrowsesc_bale.AsFloat := QBrowseQTY1.AsFloat / 181.44;
//  QBrowsesc_bale_mtr.AsFloat := (181.44*QBrowseNO_BENANG.AsFloat*768)/453.6;
//  QBrowsesc_prod_bale_mtr.AsFloat := QBrowsesc_bale.AsFloat*QBrowsesc_bale_mtr.AsFloat;
//  QBrowsesc_prosen.AsFloat := QBrowsesc_prod_bale_mtr.AsFloat / Sum(QBrowsesc_prod_bale_mtr.AsFloat);
end;

procedure TLapMutStokGWFrm.wwDBGrid2UpdateFooter(Sender: TObject);
var  vrasio, vpcs, vkg : real;
begin
{  vpcs:=0;
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
  wwDBGrid2.ColumnByName('SC_PROD_BALE_MTR').FooterValue:=FormatFloat('#,0.0000;(#,0.0000);-',vkg);   }
end;

procedure TLapMutStokGWFrm.SummaryBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  DMFrm.QDateTime.Open;
end;

procedure TLapMutStokGWFrm.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  LapMutStokGWFrm :=Nil;
end;

procedure TLapMutStokGWFrm.QBrowse2AfterScroll(DataSet: TDataSet);
begin
    LabelBanner.Caption:='Record ke '+IntToStr(QBrowse2.RecNo)+' dari '+FormatFloat('#,#',QBrowse2.RecordCount)+' Records';
end;

end.
