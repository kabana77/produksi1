unit InfoWIPPengeringan;

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
  ppParameter, jpeg;

type
  TInfoWIPPengeringanFrm = class(TForm)
    PanelMain: TPanel;
    PanelHeader: TPanel;
    PanelFilter: TPanel;
    LabelBanner: TLabel;
    PanelBrowse: TPanel;
    PanelFooter2: TPanel;
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
    BtnPrintBrowse1: TBitBtn;
    Label1: TLabel;
    BtnFind: TSpeedButton;
    BtnOk2: TSpeedButton;
    BtnDesign2: TBitBtn;
    DBText3: TDBText;
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
    dsQTransaksi: TwwDataSource;
    QSOP: TOracleDataSet;
    dsQSOP: TwwDataSource;
    BtnClose1: TBitBtn;
    QBrowseKD_ITEM: TStringField;
    QBrowseKD_JNS_ITEM: TStringField;
    QBrowseNAMA_ITEM: TStringField;
    QBrowseKD_SATUAN: TStringField;
    QBrowseSATUAN: TStringField;
    vTglAwal: TwwDBDateTimePicker;
    Label3: TLabel;
    QDump: TOracleQuery;
    vTglAkhir: TwwDBDateTimePicker;
    Label4: TLabel;
    QBrowseMASUK1: TFloatField;
    QBrowseMASUK2: TFloatField;
    QBrowseMASUK3: TFloatField;
    QBrowseKELUAR1: TFloatField;
    QBrowseKELUAR2: TFloatField;
    QBrowseKELUAR3: TFloatField;
    QBrowseKELUAR4: TFloatField;
    QBrowseMASUK4: TFloatField;
    QBrowseAKHIR1: TFloatField;
    QBrowseAKHIR2: TFloatField;
    QBrowseAWAL1: TFloatField;
    QBrowseAWAL2: TFloatField;
    QBrowseKOREKSI1: TFloatField;
    QBrowseKOREKSI2: TFloatField;
    QBrowseKD_SUB_KEL: TStringField;
    RadioGroup1: TRadioGroup;
    QDump2: TOracleQuery;
    BitBtn1: TBitBtn;
    ComboBox1: TComboBox;
    QDump3: TOracleQuery;
    QDump4: TOracleQuery;
    QBrowseWARNA: TStringField;
    QBrowseNO_BATCH: TStringField;
    QBrowseKELUAR5: TFloatField;
    QBrowseKELUAR6: TFloatField;
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    QRDBText11: TQRDBText;
    TitleBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLPeriode: TQRLabel;
    ColumnHeaderBand1: TQRBand;
    QRLabel3: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRShape4: TQRShape;
    QRLabel23: TQRLabel;
    DetailBand1: TQRBand;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRSysData1: TQRSysData;
    QRExpr9: TQRExpr;
    SummaryBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    QRExpr4: TQRExpr;
    QRExpr5: TQRExpr;
    QRExpr6: TQRExpr;
    QRExpr7: TQRExpr;
    QRExpr8: TQRExpr;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    PageFooterBand1: TQRBand;
    cbAdaTransaksi: TCheckBox;
    QDump23: TOracleQuery;
    QDump24: TOracleQuery;
    QRLabel85: TQRLabel;
    QTransaksiDOC_ISO: TStringField;
    QRDBText46: TQRDBText;
    QRDBText52: TQRDBText;
    QRDBText53: TQRDBText;
    QRDBText54: TQRDBText;
    QRDBText49: TQRDBText;
    QRDBText50: TQRDBText;
    QRDBText51: TQRDBText;
    QBrowseMASUK5: TFloatField;
    QBrowseMASUK6: TFloatField;
    QBrowseREPRO1: TFloatField;
    QBrowseREPRO2: TFloatField;
    QuickRep4: TQuickRep;
    TitleBand2: TQRBand;
    QRLabel17: TQRLabel;
    QRLPeriod: TQRLabel;
    QRImage3: TQRImage;
    DetailBand2: TQRBand;
    QRDBText60: TQRDBText;
    QRDBText61: TQRDBText;
    QRShape117: TQRShape;
    QRShape118: TQRShape;
    QRShape119: TQRShape;
    QRShape120: TQRShape;
    QRShape121: TQRShape;
    QRShape124: TQRShape;
    QRShape125: TQRShape;
    QRShape126: TQRShape;
    QRShape127: TQRShape;
    QRShape128: TQRShape;
    QRShape129: TQRShape;
    QRShape130: TQRShape;
    QRShape131: TQRShape;
    QRDBText62: TQRDBText;
    QRDBText63: TQRDBText;
    QRDBText64: TQRDBText;
    QRDBText65: TQRDBText;
    QRDBText66: TQRDBText;
    QRDBText67: TQRDBText;
    QRDBText70: TQRDBText;
    QRDBText71: TQRDBText;
    QRDBText72: TQRDBText;
    QRDBText73: TQRDBText;
    QRDBText74: TQRDBText;
    QRDBText75: TQRDBText;
    SummaryBand2: TQRBand;
    QRExpr40: TQRExpr;
    QRExpr41: TQRExpr;
    QRShape132: TQRShape;
    QRShape133: TQRShape;
    QRShape135: TQRShape;
    QRShape136: TQRShape;
    QRShape137: TQRShape;
    QRShape138: TQRShape;
    QRShape139: TQRShape;
    QRShape140: TQRShape;
    QRShape143: TQRShape;
    QRShape144: TQRShape;
    QRShape145: TQRShape;
    QRShape146: TQRShape;
    QRShape147: TQRShape;
    QRShape148: TQRShape;
    QRExpr42: TQRExpr;
    QRExpr43: TQRExpr;
    QRExpr44: TQRExpr;
    QRExpr45: TQRExpr;
    QRExpr48: TQRExpr;
    QRExpr49: TQRExpr;
    QRExpr50: TQRExpr;
    QRExpr51: TQRExpr;
    QRExpr52: TQRExpr;
    QRExpr53: TQRExpr;
    QRShape149: TQRShape;
    QRLabel22: TQRLabel;
    QRLabel95: TQRLabel;
    QRLTanggal: TQRLabel;
    QRLabel103: TQRLabel;
    QRLabel104: TQRLabel;
    QRLabel105: TQRLabel;
    QRLabel106: TQRLabel;
    QRLabel107: TQRLabel;
    QRLUser: TQRLabel;
    PageFooterBand2: TQRBand;
    ColumnHeaderBand2: TQRBand;
    QRLabel19: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRLabel94: TQRLabel;
    QRLabel96: TQRLabel;
    QRLabel97: TQRLabel;
    QRLabel98: TQRLabel;
    QRLabel101: TQRLabel;
    QRLabel120: TQRLabel;
    QRLabel121: TQRLabel;
    QRLabel122: TQRLabel;
    QRLabel123: TQRLabel;
    QRLabel124: TQRLabel;
    QRLabel125: TQRLabel;
    QRLabel126: TQRLabel;
    QRLabel127: TQRLabel;
    QRShape100: TQRShape;
    QRShape101: TQRShape;
    QRShape102: TQRShape;
    QRShape103: TQRShape;
    QRShape104: TQRShape;
    QRShape105: TQRShape;
    QRShape106: TQRShape;
    QRShape109: TQRShape;
    QRShape110: TQRShape;
    QRShape111: TQRShape;
    QRShape112: TQRShape;
    QRShape113: TQRShape;
    QRShape114: TQRShape;
    QRShape115: TQRShape;
    QRShape116: TQRShape;
    QuickRep5: TQuickRep;
    QRBand13: TQRBand;
    QRLPeriod2: TQRLabel;
    QRLabel100: TQRLabel;
    QRImage1: TQRImage;
    QRBand14: TQRBand;
    QRDBText68: TQRDBText;
    QRDBText69: TQRDBText;
    QRShape15: TQRShape;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRShape18: TQRShape;
    QRShape19: TQRShape;
    QRShape20: TQRShape;
    QRShape21: TQRShape;
    QRShape22: TQRShape;
    QRShape23: TQRShape;
    QRShape24: TQRShape;
    QRShape25: TQRShape;
    QRShape26: TQRShape;
    QRShape27: TQRShape;
    QRDBText76: TQRDBText;
    QRDBText77: TQRDBText;
    QRDBText78: TQRDBText;
    QRDBText79: TQRDBText;
    QRDBText80: TQRDBText;
    QRDBText81: TQRDBText;
    QRDBText82: TQRDBText;
    QRDBText83: TQRDBText;
    QRDBText84: TQRDBText;
    QRDBText85: TQRDBText;
    QRDBText86: TQRDBText;
    QRDBText87: TQRDBText;
    QRBand15: TQRBand;
    QRExpr46: TQRExpr;
    QRExpr47: TQRExpr;
    QRShape28: TQRShape;
    QRShape29: TQRShape;
    QRShape30: TQRShape;
    QRShape31: TQRShape;
    QRShape32: TQRShape;
    QRShape33: TQRShape;
    QRShape34: TQRShape;
    QRShape35: TQRShape;
    QRShape36: TQRShape;
    QRShape37: TQRShape;
    QRShape38: TQRShape;
    QRShape39: TQRShape;
    QRShape40: TQRShape;
    QRShape41: TQRShape;
    QRExpr54: TQRExpr;
    QRExpr55: TQRExpr;
    QRExpr56: TQRExpr;
    QRExpr57: TQRExpr;
    QRExpr58: TQRExpr;
    QRExpr59: TQRExpr;
    QRExpr60: TQRExpr;
    QRExpr61: TQRExpr;
    QRExpr62: TQRExpr;
    QRExpr63: TQRExpr;
    QRShape42: TQRShape;
    QRLabel102: TQRLabel;
    QRLabel108: TQRLabel;
    QRLTgl: TQRLabel;
    QRLabel110: TQRLabel;
    QRLabel111: TQRLabel;
    QRLabel112: TQRLabel;
    QRLabel113: TQRLabel;
    QRLabel114: TQRLabel;
    QRLUser1: TQRLabel;
    QRBand16: TQRBand;
    QRBand17: TQRBand;
    QRLabel116: TQRLabel;
    QRLabel117: TQRLabel;
    QRLabel118: TQRLabel;
    QRLabel119: TQRLabel;
    QRLabel128: TQRLabel;
    QRLabel129: TQRLabel;
    QRLabel130: TQRLabel;
    QRLabel131: TQRLabel;
    QRLabel132: TQRLabel;
    QRLabel133: TQRLabel;
    QRLabel134: TQRLabel;
    QRLabel135: TQRLabel;
    QRLabel136: TQRLabel;
    QRLabel137: TQRLabel;
    QRLabel138: TQRLabel;
    QRLabel139: TQRLabel;
    QRLabel140: TQRLabel;
    QRLabel141: TQRLabel;
    QRLabel142: TQRLabel;
    QRLabel143: TQRLabel;
    QRLabel144: TQRLabel;
    QRLabel145: TQRLabel;
    QRShape43: TQRShape;
    QRShape44: TQRShape;
    QRShape45: TQRShape;
    QRShape46: TQRShape;
    QRShape47: TQRShape;
    QRShape48: TQRShape;
    QRShape49: TQRShape;
    QRShape50: TQRShape;
    QRShape51: TQRShape;
    QRShape52: TQRShape;
    QRShape53: TQRShape;
    QRShape54: TQRShape;
    QRShape55: TQRShape;
    QRShape56: TQRShape;
    QRShape57: TQRShape;
    wwDBGrid3: TwwDBGrid;
    QBrowseNew: TOracleDataSet;
    dsQBrowseNew: TwwDataSource;
    QDumpNew: TOracleQuery;
    QBrowseNewKD_ITEM: TStringField;
    QBrowseNewNAMA_ITEM: TStringField;
    QBrowseNewAWAL_KG: TFloatField;
    QBrowseNewAWAL_PCS: TFloatField;
    QBrowseNewIN_ST_KG: TFloatField;
    QBrowseNewIN_ST_PCS: TFloatField;
    QBrowseNewIN_REPRO_KG: TFloatField;
    QBrowseNewIN_REPRO_PCS: TFloatField;
    QBrowseNewOUT_HP_KG: TFloatField;
    QBrowseNewOUT_HP_PCS: TFloatField;
    QBrowseNewOUT_KOREKSI_KG: TFloatField;
    QBrowseNewOUT_KOREKSI_PCS: TFloatField;
    BtnOk: TBitBtn;
    QBrowseNewAKHIR_KG: TFloatField;
    QBrowseNewAKHIR_PCS: TFloatField;
    wwDBGrid4: TwwDBGrid;
    QBrowseNew2: TOracleDataSet;
    dsQBrowseNew2: TwwDataSource;
    QBrowseNew2KD_ITEM: TStringField;
    QBrowseNew2NAMA_ITEM: TStringField;
    QBrowseNew2AWAL_KG: TFloatField;
    QBrowseNew2AWAL_PCS: TFloatField;
    QBrowseNew2IN_HP_KG: TFloatField;
    QBrowseNew2IN_HP_PCS: TFloatField;
    QBrowseNew2IN_KOREKSI_KG: TFloatField;
    QBrowseNew2IN_KOREKSI_PCS: TFloatField;
    QBrowseNew2OUT_ST_KG: TFloatField;
    QBrowseNew2OUT_ST_PCS: TFloatField;
    QBrowseNew2OUT_REPRO_KG: TFloatField;
    QBrowseNew2OUT_REPRO_PCS: TFloatField;
    QBrowseNew2OUT_KOREKSI_KG: TFloatField;
    QBrowseNew2OUT_KOREKSI_PCS: TFloatField;
    QBrowseNew2AKHIR_KG: TFloatField;
    QBrowseNew2AKHIR_PCS: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure BtnExportClick(Sender: TObject);
    procedure BtnOk_OLDClick(Sender: TObject);
    procedure wwDBGrid2TitleButtonClick(Sender: TObject;
      AFieldName: String);
    procedure BtnClose1Click(Sender: TObject);
    procedure BtnFindClick(Sender: TObject);
    procedure BtnOk2Click(Sender: TObject);
    procedure BtnPrintBrowseClick(Sender: TObject);
    procedure BtnPrintBrowse1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BtnDesign2Click(Sender: TObject);
    procedure ppTitleBand1BeforePrint(Sender: TObject);
    procedure LookItemEnter(Sender: TObject);
    procedure ppDetailBand1BeforePrint(Sender: TObject);
    procedure QTransaksiBeforeOpen(DataSet: TDataSet);
    procedure vTglAwalChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure QBrowseAfterScroll(DataSet: TDataSet);
    procedure QBrowseCalcFields(DataSet: TDataSet);
    procedure wwDBGrid2DblClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure cbAdaTransaksiClick(Sender: TObject);
    procedure QBrowseFilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure TitleBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand5Beforerint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand6BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand5BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure RadioGroup1Click(Sender: TObject);
    procedure TitleBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure SummaryBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand13BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand15BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure BtnOkClick(Sender: TObject);
    procedure QBrowseNewAfterScroll(DataSet: TDataSet);
    procedure QBrowseNewFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure QBrowseNewCalcFields(DataSet: TDataSet);
    procedure QBrowseNew2AfterScroll(DataSet: TDataSet);
    procedure QBrowseNew2CalcFields(DataSet: TDataSet);
    procedure QBrowseNew2FilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure wwDBGrid3TitleButtonClick(Sender: TObject;
      AFieldName: String);
    procedure wwDBGrid4TitleButtonClick(Sender: TObject;
      AFieldName: String);

  private
    { Private declarations }
    vorder, SelectedFont, vkode, vitem : String;
    t1, t2, t3, t4, t5, t6 : real;
    t7, t8, t9, t10, t11, t12, t13, t14, t15, t16, t17, t18, t19, t20 : real;
  public
    { Public declarations }

  end;

var
  InfoWIPPengeringanFrm: TInfoWIPPengeringanFrm;

Procedure ShowForm(pNamaMenu:String; pkode : String; pjudul : string; pbrg : string);

implementation

uses DM, Pembelian, Kriteria_Tanggal1, KartuStokBB;

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
    InfoWIPPengeringanFrm:=TInfoWIPPengeringanFrm.Create(Application);
    mychar:=pjudul;
    Delete(mychar,Pos('&',mychar),1);
    pjudul:=mychar;
    InfoWIPPengeringanFrm.vkode:=pbrg;
    InfoWIPPengeringanFrm.QTransaksi.Open;


    InfoWIPPengeringanFrm.PanelHeader.Caption:=pjudul+' - '+'LAPORAN STOCK CELUP';
    InfoWIPPengeringanFrm.Caption:=UpperCase(InfoWIPPengeringanFrm.PanelHeader.Caption);




  end;

  InfoWIPPengeringanFrm.Show;
end;

procedure TInfoWIPPengeringanFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
//   DMFrm.ProcWtiteIni(Application.Title,Caption+'2',wwDBGrid2);
   Action:=caFree;
   InfoWIPPengeringanFrm:=Nil;

end;

procedure TInfoWIPPengeringanFrm.FormCreate(Sender: TObject);
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
  BtnOk2.Glyph.LoadFromFile(DMFrm.sAppPath+'Images\CHECK.Bmp');
  BtnFind.Glyph.LoadFromFile(DMFrm.sAppPath+'Images\FIND.Bmp');
  BtnDesign2.Glyph.LoadFromFile(DMFrm.sAppPath+'Images\DESIGN.Bmp');
  BtnPrintBrowse.Glyph.LoadFromFile(DMFrm.sAppPath+'Images\PRINT.Bmp');
  BtnPrintBrowse1.Glyph.LoadFromFile(DMFrm.sAppPath+'Images\PRINT.Bmp');
  BtnExport.Glyph.LoadFromFile(DMFrm.sAppPath+'Images\EXPORT.Bmp');
//Otoritas Button
  BtnExport.Visible:=DMFrm.cBtnExport;
  BtnDesign2.Visible:=DMFrm.cBtnDesign;
end;

procedure TInfoWIPPengeringanFrm.BtnExportClick(Sender: TObject);
begin
  if (QBrowseNew.Active or QBrowseNew2.Active) then
  begin
     DMFrm.SaveDialog1.DefaultExt:='XLK';
     DMFrm.SaveDialog1.Filter:='Excel files (*.XLK)|*.XLK';
     DMFrm.SaveDialog1.FileName:=PanelHeader.Caption+' '+ vTglAwal.Text+' sd '+vTglAkhir.Text+'.xlk';
       if DMFrm.SaveDialog1.Execute then
       begin
         try
           if RadioGroup1.ItemIndex=0 then
           begin
             wwDBGrid3.ExportOptions.FileName:=DMFrm.SaveDialog1.FileName;
             wwDBGrid3.ExportOptions.Save;
           end
           else
           begin
             wwDBGrid4.ExportOptions.FileName:=DMFrm.SaveDialog1.FileName;
             wwDBGrid4.ExportOptions.Save;
           end;
           ShowMessage('Simpan Sukses !');
         except
           ShowMessage('Simpan Gagal !');
         end;
       end;
  end
  else
    ShowMessage('Tabel belum di-OPEN !');
end;

procedure TInfoWIPPengeringanFrm.BtnOk_OLDClick(Sender: TObject);
var
  vrasio : real;
begin
  if vTglAwal.Date>vTglAkhir.DateTime then
    ShowMessage('Tgl. Akhir harus lebih besar dari Tgl. Awal !')
    else
    begin
      if RadioGroup1.ItemIndex=0 then   //DALAM PROSES
      begin
       if ComboBox1.ItemIndex=0 then    //DALAM PROSES | PER KONSTRUKSI
       begin
        QDump2.Close;              //ipisma_db3.proc_kering2
        QDump2.SetVariable('vrasio',1);
        QDump2.SetVariable('vsysdate',vTglAwal.Date);
        QDump2.SetVariable('vsysdate2',vTglAkhir.Date);
        QDump2.SetVariable('kd_jns_item','22');
        QDump2.SetVariable('kd_jns_item2','21');
        QDump2.Execute;
       end
       else
        if ComboBox1.ItemIndex=1 then    //DALAM PROSES | PER WARNA
        begin
       //showmessage('QDump23 1');
       QDump23.Close;            //ipisma_db3.proc_kering3
       QDump23.SetVariable('vrasio',1);
       QDump23.SetVariable('vsysdate',vTglAwal.Date);
       QDump23.SetVariable('vsysdate2',vTglAkhir.Date);
       QDump23.SetVariable('kd_jns_item','22');
       QDump23.SetVariable('kd_jns_item2','21');
       QDump23.Execute;
       end
       else
        if ComboBox1.ItemIndex=2 then    //DALAM PROSES | PER BATCH
        begin
        // showmessage('24 2 QDump');
        QDump24.Close;             //ipisma_db3.proc_kering4
        QDump24.SetVariable('vrasio',1);
        QDump24.SetVariable('vsysdate',vTglAwal.Date);
        QDump24.SetVariable('vsysdate2',vTglAkhir.Date);
        QDump24.SetVariable('kd_jns_item','22');
        QDump24.SetVariable('kd_jns_item2','21');
        //QDump24.SetVariable('kd_jns_item2',QBrowseKD_ITEM.AsString);
       QDump24.Execute;
       end;
      end

      else                             //HASIL PROSES | PER WARNA

      begin
      // konstruksi
       if ComboBox1.ItemIndex=0 then   //HASIL PROSES | PER KONSTRUKSI
       begin
       QDump.Close;               //ipisma_db3.proc_kering_test
       QDump.SetVariable('vrasio',1);
       QDump.SetVariable('vsysdate',vTglAwal.Date);
       QDump.SetVariable('vsysdate2',vTglAkhir.Date);
       QDump.SetVariable('kd_jns_item',vkode);
       QDump.Execute;
       end
       else
       // warna
       if ComboBox1.ItemIndex=1 then    //HASIL PROSES | PER WARNA
       begin
     //  showmessage('QDump3 1');
       QDump3.Close;             //ipisma_db3.proc_kering3_test
       QDump3.SetVariable('vrasio',1);
       QDump3.SetVariable('vsysdate',vTglAwal.Date);
       QDump3.SetVariable('vsysdate2',vTglAkhir.Date);
       QDump3.SetVariable('kd_jns_item',vkode);
       QDump3.Execute;
       end
       else
       if ComboBox1.ItemIndex=2 then    //HASIL PROSES | PER BATCH
       begin
    //   showmessage('QDump4 2'+QBrowseKD_ITEM.AsString);
       QDump4.Close;            //script komponen delphi
       QDump4.SetVariable('vrasio',1);
       QDump4.SetVariable('vsysdate',vTglAwal.Date);
       QDump4.SetVariable('vsysdate2',vTglAkhir.Date);
       QDump4.SetVariable('kd_jns_item',vkode);
       QDump4.SetVariable('kd_jns_item2',vkode);
//       QDump4.SetVariable('kd_jns_item2',QBrowseKD_ITEM.AsString);
       QDump4.Execute;
       end;

      end;

      
      if QBrowse.QBEMode then
      QBrowse.QBEMode:=False;
          QBrowse.DisableControls;
          QBrowse.Close;
          QBrowse.SetVariable('vorder',vorder);
          QBrowse.Open;
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
      t13:=0;
      t14:=0;
      t15:=0;
      t16:=0;
      t17:=0;
      t18:=0;
      t19:=0;
      t20:=0;

      while not QBrowse.Eof do
      begin
        t1:=t1+QBrowseAWAL1.AsFloat;
        t2:=t2+QBrowseAWAL2.AsFloat;
        t3:=t3+QBrowseMASUK1.AsFloat;
        t4:=t4+QBrowseMASUK2.AsFloat;
        t5:=t5+QBrowseKELUAR3.AsFloat;
        t6:=t6+QBrowseKELUAR4.AsFloat;
        t7:=t7+QBrowseKELUAR1.AsFloat;
        t8:=t8+QBrowseKELUAR2.AsFloat;
        t9:=t9+QBrowseMASUK3.AsFloat;
        t10:=t10+QBrowseMASUK4.AsFloat;
        t11:=t11+QBrowseKELUAR5.AsFloat;
        t12:=t12+QBrowseKELUAR6.AsFloat;
        t13:=t13+QBrowseKOREKSI1.AsFloat;
        t14:=t14+QBrowseKOREKSI2.AsFloat;
        t15:=t15+QBrowseAKHIR1.AsFloat;
        t16:=t16+QBrowseAKHIR2.AsFloat;
        t17:=t17+QBrowseMASUK5.AsFloat;
        t18:=t18+QBrowseMASUK6.AsFloat;
        t19:=t19+QBrowseREPRO1.AsFloat;
        t20:=t20+QBrowseREPRO2.AsFloat;
        QBrowse.Next;
      end;
      QBrowse.EnableControls;
      if RadioGroup1.ItemIndex=0 then
      begin
      end
      else
      begin

      end;
    end;
end;

procedure TInfoWIPPengeringanFrm.wwDBGrid2TitleButtonClick(Sender: TObject;
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

procedure TInfoWIPPengeringanFrm.BtnClose1Click(Sender: TObject);
begin
  Close;
end;

procedure TInfoWIPPengeringanFrm.BtnFindClick(Sender: TObject);
begin

  {if not QBrowse.QBEMode then
  begin
    wwDBGrid2.Options:=wwDBGrid2.Options-[dgRowSelect,dgAlwaysShowSelection];
    QBrowse.QBEMode:=TRUE;
  end
  else
    QBrowse.ClearQBE;}

  if not QBrowseNew.QBEMode then
  begin
    wwDBGrid3.Options:=wwDBGrid3.Options-[dgRowSelect,dgAlwaysShowSelection];
    QBrowseNew.QBEMode:=TRUE;
  end
  else
    QBrowseNew.ClearQBE;

  if not QBrowseNew2.QBEMode then
  begin
    wwDBGrid4.Options:=wwDBGrid4.Options-[dgRowSelect,dgAlwaysShowSelection];
    QBrowseNew2.QBEMode:=TRUE;
  end
  else
    QBrowseNew2.ClearQBE;
end;

procedure TInfoWIPPengeringanFrm.BtnOk2Click(Sender: TObject);
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
      t13:=0;
      t14:=0;
      t15:=0;
      t16:=0;
      t17:=0;
      t18:=0;
      t19:=0;
      t20:=0;
      while not QBrowse.Eof do
      begin
        t1:=t1+QBrowseAWAL1.AsFloat;
        t2:=t2+QBrowseAWAL2.AsFloat;
        t3:=t3+QBrowseMASUK1.AsFloat;
        t4:=t4+QBrowseMASUK2.AsFloat;
        t5:=t5+QBrowseKELUAR3.AsFloat;
        t6:=t6+QBrowseKELUAR4.AsFloat;
        t7:=t7+QBrowseKELUAR1.AsFloat;
        t8:=t8+QBrowseKELUAR2.AsFloat;
        t9:=t9+QBrowseMASUK3.AsFloat;
        t10:=t10+QBrowseMASUK4.AsFloat;
        t11:=t11+QBrowseKELUAR5.AsFloat;
        t12:=t12+QBrowseKELUAR6.AsFloat;
        t13:=t13+QBrowseKOREKSI1.AsFloat;
        t14:=t14+QBrowseKOREKSI2.AsFloat;
        t15:=t15+QBrowseAKHIR1.AsFloat;
        t16:=t16+QBrowseAKHIR2.AsFloat;
        t17:=t17+QBrowseMASUK5.AsFloat;
        t18:=t18+QBrowseMASUK6.AsFloat;
        t19:=t19+QBrowseREPRO1.AsFloat;
        t20:=t20+QBrowseREPRO2.AsFloat;
        QBrowse.Next;
      end;
      QBrowse.EnableControls;
      if RadioGroup1.ItemIndex=0 then
      begin
      wwDBGrid1.ColumnByName('AWAL1').FooterValue:=FormatFloat('#,0.0000;-#,0.0000;-',t1);
      wwDBGrid1.ColumnByName('AWAL2').FooterValue:=FormatFloat('#,0;-#,0;-',t2);
      wwDBGrid1.ColumnByName('MASUK1').FooterValue:=FormatFloat('#,0.0000;-#,0.0000;-',t3);
      wwDBGrid1.ColumnByName('MASUK2').FooterValue:=FormatFloat('#,0;-#,0;-',t4);
      wwDBGrid1.ColumnByName('KELUAR1').FooterValue:=FormatFloat('#,0.0000;-#,0.0000;-',t7);
      wwDBGrid1.ColumnByName('KELUAR2').FooterValue:=FormatFloat('#,0;-#,0;-',t8);
      wwDBGrid1.ColumnByName('MASUK3').FooterValue:=FormatFloat('#,0.0000;-#,0.0000;-',t9);
      wwDBGrid1.ColumnByName('MASUK4').FooterValue:=FormatFloat('#,0;-#,0;-',t10);
      wwDBGrid1.ColumnByName('KELUAR5').FooterValue:=FormatFloat('#,0.0000;-#,0.0000;-',t11);
      wwDBGrid1.ColumnByName('KELUAR6').FooterValue:=FormatFloat('#,0;-#,0;-',t12);
      wwDBGrid1.ColumnByName('KOREKSI1').FooterValue:=FormatFloat('#,0.0000;-#,0.0000;-',t13);
      wwDBGrid1.ColumnByName('KOREKSI2').FooterValue:=FormatFloat('#,0;-#,0;-',t14);
      wwDBGrid1.ColumnByName('AKHIR1').FooterValue:=FormatFloat('#,0.0000;-#,0.0000;-',t15);
      wwDBGrid1.ColumnByName('AKHIR2').FooterValue:=FormatFloat('#,0;-#,0;-',t16);
            wwDBGrid1.ColumnByName('REPRO1').FooterValue:=FormatFloat('#,0.0000;-#,0.0000;-',t19);
      wwDBGrid1.ColumnByName('REPRO2').FooterValue:=FormatFloat('#,0;-#,0;-',t20);
      end
      else
      begin
      wwDBGrid2.ColumnByName('AWAL1').FooterValue:=FormatFloat('#,0.0000;-#,0.0000;-',t1);
      wwDBGrid2.ColumnByName('AWAL2').FooterValue:=FormatFloat('#,0;-#,0;-',t2);
      wwDBGrid2.ColumnByName('MASUK1').FooterValue:=FormatFloat('#,0.0000;-#,0.0000;-',t3);
      wwDBGrid2.ColumnByName('MASUK2').FooterValue:=FormatFloat('#,0;-#,0;-',t4);
      wwDBGrid2.ColumnByName('KELUAR3').FooterValue:=FormatFloat('#,0.0000;-#,0.0000;-',t5);
      wwDBGrid2.ColumnByName('KELUAR4').FooterValue:=FormatFloat('#,0;-#,0;-',t6);
      wwDBGrid2.ColumnByName('KELUAR1').FooterValue:=FormatFloat('#,0.0000;-#,0.0000;-',t7);
      wwDBGrid2.ColumnByName('KELUAR2').FooterValue:=FormatFloat('#,0;-#,0;-',t8);
      wwDBGrid2.ColumnByName('MASUK3').FooterValue:=FormatFloat('#,0.0000;-#,0.0000;-',t9);
      wwDBGrid2.ColumnByName('MASUK4').FooterValue:=FormatFloat('#,0;-#,0;-',t10);
      wwDBGrid2.ColumnByName('KELUAR5').FooterValue:=FormatFloat('#,0.0000;-#,0.0000;-',t11);
      wwDBGrid2.ColumnByName('KELUAR6').FooterValue:=FormatFloat('#,0;-#,0;-',t12);
      wwDBGrid2.ColumnByName('KOREKSI1').FooterValue:=FormatFloat('#,0.0000;-#,0.0000;-',t13);
      wwDBGrid2.ColumnByName('KOREKSI2').FooterValue:=FormatFloat('#,0;-#,0;-',t14);
      wwDBGrid2.ColumnByName('AKHIR1').FooterValue:=FormatFloat('#,0.0000;-#,0.0000;-',t15);
      wwDBGrid2.ColumnByName('AKHIR2').FooterValue:=FormatFloat('#,0;-#,0;-',t16);
      wwDBGrid2.ColumnByName('MASUK5').FooterValue:=FormatFloat('#,0.0000;-#,0.0000;-',t17);
      wwDBGrid2.ColumnByName('MASUK6').FooterValue:=FormatFloat('#,0;-#,0;-',t18);
      end;
   end;}

   if QBrowseNew.QBEMode then
   begin
    QBrowseNew.ExecuteQBE;
    wwDBGrid3.Options:=wwDBGrid3.Options+[dgRowSelect,dgAlwaysShowSelection];
      t1:=0; t2:=0; t3:=0; t4:=0; t5:=0; t6:=0;
      t7:=0; t8:=0; t9:=0; t10:=0; t11:=0; t12:=0;

    while not QBrowseNew.Eof do
      begin
        t1:=t1+QBrowseNewAWAL_KG.AsFloat;
        t2:=t2+QBrowseNewIN_ST_KG.AsFloat;
        t3:=t3+QBrowseNewIN_REPRO_KG.AsFloat;
        t4:=t4+QBrowseNewOUT_HP_KG.AsFloat;
        t5:=t5+QBrowseNewOUT_KOREKSI_KG.AsFloat;
        t6:=t6+QBrowseNewAKHIR_KG.AsFloat;

        t7:=t7+QBrowseNewAWAL_PCS.AsFloat;
        t8:=t8+QBrowseNewIN_ST_PCS.AsFloat;
        t9:=t9+QBrowseNewIN_REPRO_PCS.AsFloat;
        t10:=t10+QBrowseNewOUT_HP_PCS.AsFloat;
        t11:=t11+QBrowseNewOUT_KOREKSI_PCS.AsFloat;
        t12:=t12+QBrowseNewAKHIR_PCS.AsFloat;
        QBrowseNew.Next;
      end;
      QBrowseNew.EnableControls;

      wwDBGrid3.ColumnByName('AWAL_KG').FooterValue:=FormatFloat('#,0.0000;-#,0.0000;-',t1);
      wwDBGrid3.ColumnByName('IN_ST_KG').FooterValue:=FormatFloat('#,0.0000;-#,0.0000;-',t2);
      wwDBGrid3.ColumnByName('IN_REPRO_KG').FooterValue:=FormatFloat('#,0.0000;-#,0.0000;-',t3);
      wwDBGrid3.ColumnByName('OUT_HP_KG').FooterValue:=FormatFloat('#,0.0000;-#,0.0000;-',t4);
      wwDBGrid3.ColumnByName('OUT_KOREKSI_KG').FooterValue:=FormatFloat('#,0.0000;-#,0.0000;-',t5);
      wwDBGrid3.ColumnByName('AKHIR_KG').FooterValue:=FormatFloat('#,0.0000;-#,0.0000;-',t6);

      wwDBGrid3.ColumnByName('AWAL_PCS').FooterValue:=FormatFloat('#,0;-#,0;-',t7);
      wwDBGrid3.ColumnByName('IN_ST_PCS').FooterValue:=FormatFloat('#,0;-#,0;-',t8);
      wwDBGrid3.ColumnByName('IN_REPRO_PCS').FooterValue:=FormatFloat('#,0;-#,0;-',t9);
      wwDBGrid3.ColumnByName('OUT_HP_PCS').FooterValue:=FormatFloat('#,0;-#,0;-',t10);
      wwDBGrid3.ColumnByName('OUT_KOREKSI_PCS').FooterValue:=FormatFloat('#,0;-#,0;-',t11);
      wwDBGrid3.ColumnByName('AKHIR_PCS').FooterValue:=FormatFloat('#,0;-#,0;-',t12);
   end;

   if QBrowseNew2.QBEMode then
   begin
    QBrowseNew2.ExecuteQBE;
    wwDBGrid4.Options:=wwDBGrid4.Options+[dgRowSelect,dgAlwaysShowSelection];
      t1:=0; t2:=0; t3:=0; t4:=0; t5:=0; t6:=0;
      t7:=0; t8:=0; t9:=0; t10:=0; t11:=0; t12:=0;
      t13:=0; t14:=0;

    while not QBrowseNew2.Eof do
      begin
      t1:=t1+QBrowseNew2AWAL_KG.AsFloat;
      t2:=t2+QBrowseNew2IN_HP_KG.AsFloat;
      t3:=t3+QBrowseNew2IN_KOREKSI_KG.AsFloat;
      t4:=t4+QBrowseNew2OUT_ST_KG.AsFloat;
      t5:=t5+QBrowseNew2OUT_REPRO_KG.AsFloat;
      t6:=t6+QBrowseNew2OUT_KOREKSI_KG.AsFloat;
      t7:=t7+QBrowseNew2AKHIR_KG.AsFloat;

      t8:=t8+QBrowseNew2AWAL_PCS.AsFloat;
      t9:=t9+QBrowseNew2IN_HP_PCS.AsFloat;
      t10:=t10+QBrowseNew2IN_KOREKSI_PCS.AsFloat;
      t11:=t11+QBrowseNew2OUT_ST_PCS.AsFloat;
      t12:=t12+QBrowseNew2OUT_REPRO_PCS.AsFloat;
      t13:=t13+QBrowseNew2OUT_KOREKSI_PCS.AsFloat;
      t14:=t14+QBrowseNew2AKHIR_PCS.AsFloat;
      QBrowseNew2.Next;
    end;
    QBrowseNew2.EnableControls;
    wwDBGrid4.ColumnByName('AWAL_KG').FooterValue:=FormatFloat('#,0.0000;-#,0.0000;-',t1);
    wwDBGrid4.ColumnByName('IN_HP_KG').FooterValue:=FormatFloat('#,0.0000;-#,0.0000;-',t2);
    wwDBGrid4.ColumnByName('IN_KOREKSI_KG').FooterValue:=FormatFloat('#,0.0000;-#,0.0000;-',t3);
    wwDBGrid4.ColumnByName('OUT_ST_KG').FooterValue:=FormatFloat('#,0.0000;-#,0.0000;-',t4);
    wwDBGrid4.ColumnByName('OUT_REPRO_KG').FooterValue:=FormatFloat('#,0.0000;-#,0.0000;-',t5);
    wwDBGrid4.ColumnByName('OUT_KOREKSI_KG').FooterValue:=FormatFloat('#,0.0000;-#,0.0000;-',t6);
    wwDBGrid4.ColumnByName('AKHIR_KG').FooterValue:=FormatFloat('#,0.0000;-#,0.0000;-',t7);
   end;
   wwDBGrid4.ColumnByName('AWAL_PCS').FooterValue:=FormatFloat('#,0;-#,0;-',t8);
   wwDBGrid4.ColumnByName('IN_HP_PCS').FooterValue:=FormatFloat('#,0;-#,0;-',t9);
   wwDBGrid4.ColumnByName('IN_KOREKSI_PCS').FooterValue:=FormatFloat('#,0;-#,0;-',t10);
   wwDBGrid4.ColumnByName('OUT_ST_PCS').FooterValue:=FormatFloat('#,0;-#,0;-',t11);
   wwDBGrid4.ColumnByName('OUT_REPRO_PCS').FooterValue:=FormatFloat('#,0;-#,0;-',t12);
   wwDBGrid4.ColumnByName('OUT_KOREKSI_PCS').FooterValue:=FormatFloat('#,0;-#,0;-',t13);
   wwDBGrid4.ColumnByName('AKHIR_PCS').FooterValue:=FormatFloat('#,0;-#,0;-',t14);


end;

procedure TInfoWIPPengeringanFrm.BtnPrintBrowseClick(Sender: TObject);
begin
  QuickRep1.Preview;
end;

procedure TInfoWIPPengeringanFrm.BtnPrintBrowse1Click(Sender: TObject);
var checbox : byte;
begin
checbox:=RadioGroup1.ItemIndex;
  if checbox = 0 then
  begin
    //QuickRep2.Preview;
    QuickRep4.Preview;
  end
  else
  begin
    //QuickRep3.Preview;
    QuickRep5.Preview;
  end;
end;

procedure TInfoWIPPengeringanFrm.Button1Click(Sender: TObject);
begin
  //ppDesigner1.ShowModal;
end;

procedure TInfoWIPPengeringanFrm.BtnDesign2Click(Sender: TObject);
begin
  //ppDesigner1.ShowModal;
end;

procedure TInfoWIPPengeringanFrm.ppTitleBand1BeforePrint(Sender: TObject);
begin
  //ppNamaLaporan.Caption:='MUTASI STOK '+DMFrm.QJnsItem.FieldByName('JNS_BRG').AsString;
  //ppPeriode.Caption:=vTglAwal.Text+' SD '+vTglAkhir.Text;
  DMFrm.QTime.Close;
  DMFrm.QTime.Open;
  //ppUserCetak.Caption:=DMFrm.QTimeVUSER_CETAK.AsString;
end;

procedure TInfoWIPPengeringanFrm.LookItemEnter(Sender: TObject);
begin
  (sender as TwwDBLookupComboDlg).LookupTable.Open;
end;

procedure TInfoWIPPengeringanFrm.ppDetailBand1BeforePrint(Sender: TObject);
begin
 //ppLblNomer.Caption:=IntToStr(ppDBQBrowseDetail.RecordNo+1)
end;

procedure TInfoWIPPengeringanFrm.QTransaksiBeforeOpen(DataSet: TDataSet);
begin
  QTransaksi.DeclareVariable('kd_transaksi', otString);
  QTransaksi.SQL.Text:='select a.* from '+cUserTabel+'vtransaksi a where a.kd_transaksi=:kd_transaksi';
  QTransaksi.SetVariable('kd_transaksi','L03');
end;

procedure TInfoWIPPengeringanFrm.vTglAwalChange(Sender: TObject);
begin
  vTglAkhir.DateTime:=EndOfTheMonth(vTglAwal.Date);
end;

procedure TInfoWIPPengeringanFrm.FormShow(Sender: TObject);
begin
    vTglAwal.Date:=Trunc(DMFrm.QTimeJAM.AsDateTime);
    vTglAkhir.Date:=Trunc(DMFrm.QTimeJAM.AsDateTime);
    QTransaksi.Open;
end;

procedure TInfoWIPPengeringanFrm.QBrowseAfterScroll(DataSet: TDataSet);
begin
    LabelBanner.Caption:='Record ke '+IntToStr(QBrowse.RecNo)+' dari '+FormatFloat('#,#',QBrowse.RecordCount)+' Records';
end;

procedure TInfoWIPPengeringanFrm.QBrowseCalcFields(DataSet: TDataSet);
begin

if RadioGroup1.ItemIndex=0 then
  begin
  QBrowseAKHIR1.AsFloat:=
    (
    //QBrowseAWAL1.AsFloat+QBrowseMASUK1.AsFloat+QBrowseMASUK3.AsFloat
    QBrowseAWAL1.AsFloat+QBrowseREPRO1.AsFloat+QBrowseMASUK1.AsFloat+QBrowseMASUK3.AsFloat
    )
    -
    (QBrowseKELUAR1.AsFloat+QBrowseKELUAR5.AsFloat+QBrowseKOREKSI1.AsFloat
    );

  QBrowseAKHIR2.AsFloat:=
    (
    QBrowseAWAL2.AsFloat+QBrowseREPRO2.AsFloat+QBrowseMASUK2.AsFloat+QBrowseMASUK4.AsFloat
    //QBrowseAWAL2.AsFloat+QBrowseMASUK2.AsFloat+QBrowseMASUK4.AsFloat
    )
    -
    (
    QBrowseKELUAR2.AsFloat+QBrowseKELUAR6.AsFloat+QBrowseKOREKSI2.AsFloat
    );

  end

  else

  begin
  QBrowseAKHIR1.AsFloat:=
    (
    QBrowseAWAL1.AsFloat+QBrowseMASUK1.AsFloat+QBrowseMASUK5.AsFloat+QBrowseMASUK3.AsFloat
    )
    -
    (QBrowseKELUAR1.AsFloat+QBrowseKELUAR5.AsFloat+QBrowseKELUAR3.AsFloat+QBrowseKOREKSI1.AsFloat
    );

  QBrowseAKHIR2.AsFloat:=
    (
    QBrowseAWAL2.AsFloat+QBrowseMASUK2.AsFloat+QBrowseMASUK6.AsFloat+QBrowseMASUK4.AsFloat
    )
    -
    (
    QBrowseKELUAR2.AsFloat+QBrowseKELUAR6.AsFloat+QBrowseKELUAR4.AsFloat+QBrowseKOREKSI2.AsFloat
    );

  end;

{
  QBrowseAKHIR1.AsFloat:=
    (
    QBrowseAWAL1.AsFloat+QBrowseMASUK1.AsFloat+QBrowseKOREKSI1.AsFloat+QBrowseMASUK3.AsFloat
    )
    -
    (QBrowseKELUAR1.AsFloat+QBrowseKELUAR5.AsFloat+QBrowseKELUAR3.AsFloat
    );
  QBrowseAKHIR2.AsFloat:=
    (
    QBrowseAWAL2.AsFloat+QBrowseMASUK2.AsFloat+QBrowseKOREKSI2.AsFloat+QBrowseMASUK4.AsFloat
    )
    -
    (
    QBrowseKELUAR2.AsFloat+QBrowseKELUAR6.AsFloat+QBrowseKELUAR4.AsFloat
    );
 }
end;

procedure TInfoWIPPengeringanFrm.wwDBGrid2DblClick(Sender: TObject);
begin
   KartuStokBB.ShowForm(PanelHeader.Caption,QBrowseKD_ITEM.AsString, vkode,vTglAwal.Date, vTglAkhir.Date, QBrowseAWAL1.AsFloat, QBrowseAWAL2.AsFloat );
end;

procedure TInfoWIPPengeringanFrm.BitBtn1Click(Sender: TObject);
begin
  wwDBGrid2DblClick(nil);
end;

procedure TInfoWIPPengeringanFrm.cbAdaTransaksiClick(Sender: TObject);
begin
  //QBrowse.Filtered:=cbAdaTransaksi.Checked;
  if RadioGroup1.ItemIndex=0 then QBrowseNew.Filtered:=cbAdaTransaksi.Checked else QBrowseNew2.Filtered:=cbAdaTransaksi.Checked
end;

procedure TInfoWIPPengeringanFrm.QBrowseFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
if RadioGroup1.ItemIndex=0 then
  begin
    Accept:=
    ((QBrowseAWAL1.AsFloat)<>0) or
    ((QBrowseAWAL2.AsFloat)<>0) or
    ((QBrowseMASUK1.AsFloat)<>0) or
    ((QBrowseMASUK2.AsFloat)<>0) or
    ((QBrowseMASUK3.AsFloat)<>0) or
    ((QBrowseMASUK4.AsFloat)<>0) or
        ((QBrowseREPRO1.AsFloat)<>0) or
    ((QBrowseREPRO2.AsFloat)<>0) or
    ((QBrowseKELUAR1.AsFloat)<>0) or
    ((QBrowseKELUAR2.AsFloat)<>0) or
    ((QBrowseKELUAR5.AsFloat)<>0) or
    ((QBrowseKELUAR6.AsFloat)<>0) or
    ((QBrowseKOREKSI1.AsFloat)<>0) or
    ((QBrowseKOREKSI2.AsFloat)<>0) or
    ((QBrowseAKHIR1.AsFloat)<>0) or
    ((QBrowseAKHIR1.AsFloat)<>0)
    ;

{    (Trunc(QBrowseAWAL1.AsFloat)<>0) or
    (Trunc(QBrowseAWAL2.AsFloat)<>0) or
    (Trunc(QBrowseMASUK1.AsFloat)<>0) or
    (Trunc(QBrowseMASUK2.AsFloat)<>0) or
    (Trunc(QBrowseKELUAR1.AsFloat)<>0) or
    (Trunc(QBrowseKELUAR2.AsFloat)<>0) or
    (Trunc(QBrowseKELUAR5.AsFloat)<>0) or
    (Trunc(QBrowseKELUAR6.AsFloat)<>0) or
    (Trunc(QBrowseKOREKSI1.AsFloat)<>0) or
    (Trunc(QBrowseKOREKSI2.AsFloat)<>0) or
    (Trunc(QBrowseAKHIR1.AsFloat)<>0) or
    (Trunc(QBrowseAKHIR1.AsFloat)<>0);    }
  end

  else

  begin
    Accept:=
    ((QBrowseAWAL1.AsFloat)<>0) or
    ((QBrowseAWAL2.AsFloat)<>0) or
    ((QBrowseMASUK1.AsFloat)<>0) or
    ((QBrowseMASUK2.AsFloat)<>0) or
    ((QBrowseKELUAR3.AsFloat)<>0) or
    ((QBrowseKELUAR4.AsFloat)<>0) or
    ((QBrowseKELUAR1.AsFloat)<>0) or
    ((QBrowseKELUAR2.AsFloat)<>0) or
    ((QBrowseMASUK3.AsFloat)<>0) or
    ((QBrowseMASUK4.AsFloat)<>0) or
    ((QBrowseMASUK5.AsFloat)<>0) or
    ((QBrowseMASUK6.AsFloat)<>0) or
    ((QBrowseKELUAR5.AsFloat)<>0) or
    ((QBrowseKELUAR6.AsFloat)<>0) or
    ((QBrowseKOREKSI1.AsFloat)<>0) or
    ((QBrowseKOREKSI2.AsFloat)<>0) or
    ((QBrowseAKHIR1.AsFloat)<>0) or
    ((QBrowseAKHIR2.AsFloat)<>0)
   ;
  end;


end;

procedure TInfoWIPPengeringanFrm.TitleBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  //QRLlabel55.Caption:=vTglAwal.Text+' s/d '+vTglAkhir.Text;
  QRLPeriode.Caption:=FormatDateTime('dd mmmm yyyy',VTglAkhir.Date);
end;

procedure TInfoWIPPengeringanFrm.QRBand5Beforerint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  DMFrm.QDateTime.Open;
end;

procedure TInfoWIPPengeringanFrm.QRBand6BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  DMFrm.QDateTime.Open;
end;

procedure TInfoWIPPengeringanFrm.QRBand5BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  DMFrm.QDateTime.Open;
  //QRLabel53.Caption:=FormatDateTime('dd mmmm yyyy',vTglAkhir.Date);
end;

procedure TInfoWIPPengeringanFrm.RadioGroup1Click(Sender: TObject);
begin
if RadioGroup1.ItemIndex=0 then
    InfoWIPPengeringanFrm.PanelHeader.Caption:='Info WIP Pengeringan'+' - '+'LAPORAN STOCK CELUP'
else
    InfoWIPPengeringanFrm.PanelHeader.Caption:='Info WIP Pengeringan'+' - '+'LAPORAN PRODUKSI CONEDYEING';

end;

procedure TInfoWIPPengeringanFrm.TitleBand2BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  QRLPeriod.Caption:=vTglAwal.Text+' s/d '+vTglAkhir.Text;
end;

procedure TInfoWIPPengeringanFrm.SummaryBand2BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  DMFrm.QDateTime.Open;
  QRLTanggal.Caption:=FormatDateTime('dd mmmm yyyy',vTglAkhir.Date);

  if DMFrm.QDateTimeUSER.AsString='OBETH' then
  begin
    QRLUser.Caption:= 'Ubaidillah';
  end
  else if DMFrm.QDateTimeUSER.AsString='BURHANUDIN' then
  begin
    QRLUser.Caption:= 'Burhanudin';
  end
  else if DMFrm.QDateTimeUSER.AsString='AMRI_KH' then
  begin
    QRLUser.Caption:= 'M. Khoirul Amri';
  end
  else
    QRLUser.Caption:= DMFrm.QDateTimeUSER.AsString;
end;

procedure TInfoWIPPengeringanFrm.QRBand13BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLPeriod2.Caption:=vTglAwal.Text+' s/d '+vTglAkhir.Text;
end;

procedure TInfoWIPPengeringanFrm.QRBand15BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  DMFrm.QDateTime.Open;
  QRLTgl.Caption:=FormatDateTime('dd mmmm yyyy',vTglAkhir.Date);

  if DMFrm.QDateTimeUSER.AsString='OBETH' then
  begin
    QRLUser1.Caption:= 'Ubaidillah';
  end
  else if DMFrm.QDateTimeUSER.AsString='BURHANUDIN' then
  begin
    QRLUser1.Caption:= 'Burhanudin';
  end
  else if DMFrm.QDateTimeUSER.AsString='AMRI_KH' then
  begin
    QRLUser1.Caption:= 'M. Khoirul Amri';
  end
  else
    QRLUser1.Caption:= DMFrm.QDateTimeUSER.AsString;
end;

procedure TInfoWIPPengeringanFrm.BtnOkClick(Sender: TObject);
begin
  if RadioGroup1.ItemIndex=0 then
  begin
    QDumpNew.Close;
    QDumpNew.SetVariable('vsysdate',vTglAwal.Date);
    QDumpNew.SetVariable('vsysdate2',vTglAkhir.Date);
    QDumpNew.Execute;
    wwDBGrid3.BringToFront;

    if QBrowseNew.QBEMode then QBrowseNew.QBEMode:=False;
    QBrowseNew.DisableControls;
    QBrowseNew.Close;
    QBrowseNew.SetVariable('vorder',vorder);
    QBrowseNew.Open;
    t1:=0; t2:=0; t3:=0; t4:=0; t5:=0; t6:=0;
    t7:=0; t8:=0; t9:=0; t10:=0; t11:=0; t12:=0;

    while not QBrowseNew.Eof do
    begin
      t1:=t1+QBrowseNewAWAL_KG.AsFloat;
      t2:=t2+QBrowseNewIN_ST_KG.AsFloat;
      t3:=t3+QBrowseNewIN_REPRO_KG.AsFloat;
      t4:=t4+QBrowseNewOUT_HP_KG.AsFloat;
      t5:=t5+QBrowseNewOUT_KOREKSI_KG.AsFloat;
      t6:=t6+QBrowseNewAKHIR_KG.AsFloat;
      t7:=t7+QBrowseNewAWAL_PCS.AsFloat;
      t8:=t8+QBrowseNewIN_ST_PCS.AsFloat;
      t9:=t9+QBrowseNewIN_REPRO_PCS.AsFloat;
      t10:=t10+QBrowseNewOUT_HP_PCS.AsFloat;
      t11:=t11+QBrowseNewOUT_KOREKSI_PCS.AsFloat;
      t12:=t12+QBrowseNewAKHIR_PCS.AsFloat;
      QBrowseNew.Next;
    end;
    QBrowseNew.EnableControls;

    wwDBGrid3.ColumnByName('AWAL_KG').FooterValue:=FormatFloat('#,0.0000;-#,0.0000;-',t1);
    wwDBGrid3.ColumnByName('IN_ST_KG').FooterValue:=FormatFloat('#,0.0000;-#,0.0000;-',t2);
    wwDBGrid3.ColumnByName('IN_REPRO_KG').FooterValue:=FormatFloat('#,0.0000;-#,0.0000;-',t3);
    wwDBGrid3.ColumnByName('OUT_HP_KG').FooterValue:=FormatFloat('#,0.0000;-#,0.0000;-',t4);
    wwDBGrid3.ColumnByName('OUT_KOREKSI_KG').FooterValue:=FormatFloat('#,0.0000;-#,0.0000;-',t5);
    wwDBGrid3.ColumnByName('AKHIR_KG').FooterValue:=FormatFloat('#,0.0000;-#,0.0000;-',t6);
    wwDBGrid3.ColumnByName('AWAL_PCS').FooterValue:=FormatFloat('#,0;-#,0;-',t7);
    wwDBGrid3.ColumnByName('IN_ST_PCS').FooterValue:=FormatFloat('#,0;-#,0;-',t8);
    wwDBGrid3.ColumnByName('IN_REPRO_PCS').FooterValue:=FormatFloat('#,0;-#,0;-',t9);
    wwDBGrid3.ColumnByName('OUT_HP_PCS').FooterValue:=FormatFloat('#,0;-#,0;-',t10);
    wwDBGrid3.ColumnByName('OUT_KOREKSI_PCS').FooterValue:=FormatFloat('#,0;-#,0;-',t11);
    wwDBGrid3.ColumnByName('AKHIR_PCS').FooterValue:=FormatFloat('#,0;-#,0;-',t12);
  end
  else
  begin
    QDump.Close;
    QDump.SetVariable('vsysdate',vTglAwal.Date);
    QDump.SetVariable('vsysdate2',vTglAkhir.Date);
    QDump.Execute;
    wwDBGrid4.BringToFront;

    if QBrowseNew2.QBEMode then QBrowseNew2.QBEMode:=False;
    QBrowseNew2.DisableControls;
    QBrowseNew2.Close;
    QBrowseNew2.SetVariable('vorder',vorder);
    QBrowseNew2.Open;
    t1:=0; t2:=0; t3:=0; t4:=0; t5:=0; t6:=0; t7:=0;
    t8:=0; t9:=0; t10:=0; t11:=0; t12:=0; t13:=0; t14:=0;

    while not QBrowseNew2.Eof do
    begin
      t1:=t1+QBrowseNew2AWAL_KG.AsFloat;
      t2:=t2+QBrowseNew2IN_HP_KG.AsFloat;
      t3:=t3+QBrowseNew2IN_KOREKSI_KG.AsFloat;
      t4:=t4+QBrowseNew2OUT_ST_KG.AsFloat;
      t5:=t5+QBrowseNew2OUT_REPRO_KG.AsFloat;
      t6:=t6+QBrowseNew2OUT_KOREKSI_KG.AsFloat;
      t7:=t7+QBrowseNew2AKHIR_KG.AsFloat;

      t8:=t8+QBrowseNew2AWAL_PCS.AsFloat;
      t9:=t9+QBrowseNew2IN_HP_PCS.AsFloat;
      t10:=t10+QBrowseNew2IN_KOREKSI_PCS.AsFloat;
      t11:=t11+QBrowseNew2OUT_ST_PCS.AsFloat;
      t12:=t12+QBrowseNew2OUT_REPRO_PCS.AsFloat;
      t13:=t13+QBrowseNew2OUT_KOREKSI_PCS.AsFloat;
      t14:=t14+QBrowseNew2AKHIR_PCS.AsFloat;
      QBrowseNew2.Next;
    end;
    QBrowseNew2.EnableControls;

    wwDBGrid4.ColumnByName('AWAL_KG').FooterValue:=FormatFloat('#,0.0000;-#,0.0000;-',t1);
    wwDBGrid4.ColumnByName('IN_HP_KG').FooterValue:=FormatFloat('#,0.0000;-#,0.0000;-',t2);
    wwDBGrid4.ColumnByName('IN_KOREKSI_KG').FooterValue:=FormatFloat('#,0.0000;-#,0.0000;-',t3);
    wwDBGrid4.ColumnByName('OUT_ST_KG').FooterValue:=FormatFloat('#,0.0000;-#,0.0000;-',t4);
    wwDBGrid4.ColumnByName('OUT_REPRO_KG').FooterValue:=FormatFloat('#,0.0000;-#,0.0000;-',t5);
    wwDBGrid4.ColumnByName('OUT_KOREKSI_KG').FooterValue:=FormatFloat('#,0.0000;-#,0.0000;-',t6);
    wwDBGrid4.ColumnByName('AKHIR_KG').FooterValue:=FormatFloat('#,0.0000;-#,0.0000;-',t7);

    wwDBGrid4.ColumnByName('AWAL_PCS').FooterValue:=FormatFloat('#,0;-#,0;-',t8);
    wwDBGrid4.ColumnByName('IN_HP_PCS').FooterValue:=FormatFloat('#,0;-#,0;-',t9);
    wwDBGrid4.ColumnByName('IN_KOREKSI_PCS').FooterValue:=FormatFloat('#,0;-#,0;-',t10);
    wwDBGrid4.ColumnByName('OUT_ST_PCS').FooterValue:=FormatFloat('#,0;-#,0;-',t11);
    wwDBGrid4.ColumnByName('OUT_REPRO_PCS').FooterValue:=FormatFloat('#,0;-#,0;-',t12);
    wwDBGrid4.ColumnByName('OUT_KOREKSI_PCS').FooterValue:=FormatFloat('#,0;-#,0;-',t13);
    wwDBGrid4.ColumnByName('AKHIR_PCS').FooterValue:=FormatFloat('#,0;-#,0;-',t14);
  end
end;

procedure TInfoWIPPengeringanFrm.QBrowseNewAfterScroll(DataSet: TDataSet);
begin
    LabelBanner.Caption:='Record ke '+IntToStr(QBrowseNew.RecNo)+' dari '+FormatFloat('#,#',QBrowseNew.RecordCount)+' Records';
end;

procedure TInfoWIPPengeringanFrm.QBrowseNewFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
    Accept:=
    ((QBrowseNewAWAL_KG.AsFloat)<>0) or
    ((QBrowseNewAWAL_PCS.AsFloat)<>0) or
    ((QBrowseNewIN_ST_KG.AsFloat)<>0) or
    ((QBrowseNewIN_ST_PCS.AsFloat)<>0) or
    ((QBrowseNewIN_REPRO_KG.AsFloat)<>0) or
    ((QBrowseNewIN_REPRO_PCS.AsFloat)<>0) or
    ((QBrowseNewOUT_HP_KG.AsFloat)<>0) or
    ((QBrowseNewOUT_HP_PCS.AsFloat)<>0) or
    ((QBrowseNewOUT_KOREKSI_KG.AsFloat)<>0) or
    ((QBrowseNewOUT_KOREKSI_PCS.AsFloat)<>0);
end;

procedure TInfoWIPPengeringanFrm.QBrowseNewCalcFields(DataSet: TDataSet);
begin
  QBrowseNewAKHIR_KG.AsFloat:=(QBrowseNewAWAL_KG.AsFloat+(QBrowseNewIN_ST_KG.AsFloat+QBrowseNewIN_REPRO_KG.AsFloat))-(QBrowseNewOUT_HP_KG.AsFloat+QBrowseNewOUT_KOREKSI_KG.AsFloat);
  QBrowseNewAKHIR_PCS.AsFloat:=(QBrowseNewAWAL_PCS.AsFloat+(QBrowseNewIN_ST_PCS.AsFloat+QBrowseNewIN_REPRO_PCS.AsFloat))-(QBrowseNewOUT_HP_PCS.AsFloat+QBrowseNewOUT_KOREKSI_PCS.AsFloat);
end;

procedure TInfoWIPPengeringanFrm.QBrowseNew2AfterScroll(DataSet: TDataSet);
begin
    LabelBanner.Caption:='Record ke '+IntToStr(QBrowseNew2.RecNo)+' dari '+FormatFloat('#,#',QBrowseNew2.RecordCount)+' Records';
end;

procedure TInfoWIPPengeringanFrm.QBrowseNew2CalcFields(DataSet: TDataSet);
begin
  QBrowseNew2AKHIR_KG.AsFloat:=(QBrowseNew2AWAL_KG.AsFloat+(QBrowseNew2IN_HP_KG.AsFloat+QBrowseNew2IN_KOREKSI_KG.AsFloat))-(QBrowseNew2OUT_ST_KG.AsFloat+QBrowseNew2OUT_REPRO_KG.AsFloat+QBrowseNew2OUT_KOREKSI_KG.AsFloat);
  QBrowseNew2AKHIR_PCS.AsFloat:=(QBrowseNew2AWAL_PCS.AsFloat+(QBrowseNew2IN_HP_PCS.AsFloat+QBrowseNew2IN_KOREKSI_PCS.AsFloat))-(QBrowseNew2OUT_ST_PCS.AsFloat+QBrowseNew2OUT_REPRO_PCS.AsFloat+QBrowseNew2OUT_KOREKSI_PCS.AsFloat);
end;

procedure TInfoWIPPengeringanFrm.QBrowseNew2FilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
    Accept:=
    ((QBrowseNew2AWAL_KG.AsFloat)<>0) or
    ((QBrowseNew2AWAL_PCS.AsFloat)<>0) or
    ((QBrowseNew2IN_HP_KG.AsFloat)<>0) or
    ((QBrowseNew2IN_HP_PCS.AsFloat)<>0) or
    ((QBrowseNew2IN_KOREKSI_KG.AsFloat)<>0) or
    ((QBrowseNew2IN_KOREKSI_PCS.AsFloat)<>0) or
    ((QBrowseNew2OUT_ST_KG.AsFloat)<>0) or
    ((QBrowseNew2OUT_ST_PCS.AsFloat)<>0) or
    ((QBrowseNew2OUT_REPRO_KG.AsFloat)<>0) or
    ((QBrowseNew2OUT_REPRO_PCS.AsFloat)<>0) or
    ((QBrowseNew2OUT_KOREKSI_KG.AsFloat)<>0) or
    ((QBrowseNew2OUT_KOREKSI_PCS.AsFloat)<>0);
end;

procedure TInfoWIPPengeringanFrm.wwDBGrid3TitleButtonClick(Sender: TObject;
  AFieldName: String);
begin
  if QBrowseNew.FieldByName(AFieldName).FieldKind=fkData then
  begin
    vorder:='order by '+AFieldName;
    BtnOkClick(Nil);
  end
  else
    ShowMessage('Maaf, tidak bisa Urut menurut kolom '+AFieldName+' !');
end;

procedure TInfoWIPPengeringanFrm.wwDBGrid4TitleButtonClick(Sender: TObject;
  AFieldName: String);
begin
  if QBrowseNew2.FieldByName(AFieldName).FieldKind=fkData then
  begin
    vorder:='order by '+AFieldName;
    BtnOkClick(Nil);
  end
  else
    ShowMessage('Maaf, tidak bisa Urut menurut kolom '+AFieldName+' !');
end;

end.
