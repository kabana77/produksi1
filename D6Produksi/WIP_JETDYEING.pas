unit WIP_JETDYEING;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  DateUtils, Mask, wwdbedit, Wwdbspin, DB, Wwdatsrc, OracleData, Dialogs,
  Oracle, Buttons, wwSpeedButton, wwDBNavigator, wwclearpanel, Grids,
  Wwdbigrd, Wwdbgrid, StdCtrls, wwdbdatetimepicker, ComCtrls, ExtCtrls,
  ppViewr, ppDB, ppDBPipe, ppComm, ppRelatv, ppProd, ppClass, ppReport,
  ppVar, ppCtrls, ppBands, ppPrnabl, ppCache, ppEndUsr, ppModule,
  daDataModule, DBCtrls, wwdblook, Wwdbdlg, Wwdotdot, Wwdbcomb, ppBarCod,
  wwcheckbox, ppStrtch, ppMemo, raCodMod, wwriched, QRCtrls, QuickRpt;

type
  TWIP_JETDYEINGFRM = class(TForm)
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
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    QRDBText3: TQRDBText;
    SummaryBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRDBText4: TQRDBText;
    TitleBand1: TQRBand;
    QRLabel7: TQRLabel;
    PageFooterBand1: TQRBand;
    QRLabel13: TQRLabel;
    QTotal: TOracleDataSet;
    QRDBText1: TQRDBText;
    QRLabel4: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    wwDBGrid1: TwwDBGrid;
    QBrowseKD_KONSTRUKSI: TStringField;
    QBrowseNAMA_KONSTRUKSI: TStringField;
    QBrowseQTY1: TFloatField;
    QBrowseQTY2: TFloatField;
    QBrowseQTY4: TFloatField;
    QBrowseQTY5: TFloatField;
    QBrowseQTY6: TFloatField;
    QBrowseQTY7: TFloatField;
    QBrowseQTY8: TFloatField;
    QBrowseQTY9: TFloatField;
    QBrowseQTY10: TFloatField;
    QBrowseQTY11: TFloatField;
    QBrowseQTY12: TFloatField;
    QBrowseQTY13: TFloatField;
    QBrowseQTY14: TFloatField;
    QBrowseQTY15: TFloatField;
    QBrowseQTY_AWL: TFloatField;
    QBrowseQTY_AKHIR: TFloatField;
    QBrowseQTY_AWL2: TFloatField;
    QBrowseQTY_AKHIR2: TFloatField;
    QTotalQTY1: TFloatField;
    QTotalQTY2: TFloatField;
    QTotalQTY3: TFloatField;
    QTotalQTY4: TFloatField;
    QTotalQTY5: TFloatField;
    QTotalQTY6: TFloatField;
    QTotalQTY7: TFloatField;
    QTotalQTY8: TFloatField;
    QTotalQTY9: TFloatField;
    QTotalQTY10: TFloatField;
    QTotalQTY_AWL: TFloatField;
    QTotalQTY_AWL2: TFloatField;
    QTotalQTY_AKHIR: TFloatField;
    QTotalQTY_AKHIR2: TFloatField;
    QRImage1: TQRImage;
    QRLabel14: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel34: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRExpr9: TQRExpr;
    QRExpr10: TQRExpr;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRShape3: TQRShape;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRShape16: TQRShape;
    QRShape18: TQRShape;
    QRShape20: TQRShape;
    QRShape21: TQRShape;
    QRShape22: TQRShape;
    QRShape23: TQRShape;
    QRShape24: TQRShape;
    QRShape25: TQRShape;
    QRShape26: TQRShape;
    QRShape27: TQRShape;
    QRShape28: TQRShape;
    QRShape29: TQRShape;
    QRShape30: TQRShape;
    QRShape33: TQRShape;
    QRShape35: TQRShape;
    QRShape38: TQRShape;
    QRShape40: TQRShape;
    QRShape41: TQRShape;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRShape43: TQRShape;
    QRLabel1: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel5: TQRLabel;
    QRShape44: TQRShape;
    QRShape45: TQRShape;
    QRShape46: TQRShape;
    QRShape47: TQRShape;
    QRLabel6: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel32: TQRLabel;
    QRShape48: TQRShape;
    QRShape49: TQRShape;
    QRShape50: TQRShape;
    QRShape51: TQRShape;
    QRShape52: TQRShape;
    QRExpr11: TQRExpr;
    QRDBText19: TQRDBText;
    QRLabel35: TQRLabel;
    QBrowseRASIO2: TFloatField;
    QBrowsekg_awl: TFloatField;
    QBrowsekg1: TFloatField;
    QBrowsekg2: TFloatField;
    QBrowsekg3: TFloatField;
    QBrowsekg4: TFloatField;
    QBrowsekg5: TFloatField;
    QBrowsekg_akhir: TFloatField;
    QBrowseQTY3: TFloatField;
    QTotalkg_awl: TFloatField;
    QTotalkg1: TFloatField;
    QTotalkg2: TFloatField;
    QTotalkg4: TFloatField;
    QTotalkg5: TFloatField;
    QTotalkg_akhir: TFloatField;
    QTotalkg3: TFloatField;
    QBrowsekg6: TFloatField;
    cbAdaTransaksi: TCheckBox;
    QRLabel24: TQRLabel;
    QRShape62: TQRShape;
    QRShape64: TQRShape;
    QRShape68: TQRShape;
    QRShape69: TQRShape;
    QRShape70: TQRShape;
    QRShape71: TQRShape;
    QRShape72: TQRShape;
    QRShape73: TQRShape;
    RadioGroup1: TRadioGroup;
    BitBPrintBrowse2: TBitBtn;
    QuickRep4: TQuickRep;
    QRBand9: TQRBand;
    QRDBText46: TQRDBText;
    QRDBText47: TQRDBText;
    QRDBText48: TQRDBText;
    QRDBText51: TQRDBText;
    QRDBText52: TQRDBText;
    QRDBText53: TQRDBText;
    QRDBText54: TQRDBText;
    QRShape134: TQRShape;
    QRShape135: TQRShape;
    QRShape138: TQRShape;
    QRShape139: TQRShape;
    QRShape140: TQRShape;
    QRShape141: TQRShape;
    QRShape142: TQRShape;
    QRDBText55: TQRDBText;
    QRDBText56: TQRDBText;
    QRShape143: TQRShape;
    QRBand10: TQRBand;
    QRLabel84: TQRLabel;
    QRExpr36: TQRExpr;
    QRDBText57: TQRDBText;
    QRLabel85: TQRLabel;
    QRLabel86: TQRLabel;
    QRLabel87: TQRLabel;
    QRLabel88: TQRLabel;
    QRLabel89: TQRLabel;
    QRExpr37: TQRExpr;
    QRExpr38: TQRExpr;
    QRExpr39: TQRExpr;
    QRExpr40: TQRExpr;
    QRShape144: TQRShape;
    QRShape145: TQRShape;
    QRShape146: TQRShape;
    QRShape147: TQRShape;
    QRShape148: TQRShape;
    QRShape149: TQRShape;
    QRShape150: TQRShape;
    QRExpr41: TQRExpr;
    QRExpr42: TQRExpr;
    QRLabel90: TQRLabel;
    QRShape151: TQRShape;
    QRShape152: TQRShape;
    QRShape153: TQRShape;
    QRShape154: TQRShape;
    QRBand11: TQRBand;
    QRDBText58: TQRDBText;
    QRBand12: TQRBand;
    QRLabel91: TQRLabel;
    QRLabel92: TQRLabel;
    QRImage4: TQRImage;
    QRLabel93: TQRLabel;
    QRLabel94: TQRLabel;
    QRLabel95: TQRLabel;
    QRLabel96: TQRLabel;
    QRLabel97: TQRLabel;
    QRLabel98: TQRLabel;
    QRLabel99: TQRLabel;
    QRShape155: TQRShape;
    QRShape156: TQRShape;
    QRShape157: TQRShape;
    QRShape158: TQRShape;
    QRShape159: TQRShape;
    QRShape160: TQRShape;
    QRShape161: TQRShape;
    QRShape162: TQRShape;
    QRShape163: TQRShape;
    QRLabel100: TQRLabel;
    QRShape164: TQRShape;
    QRShape165: TQRShape;
    QRLabel101: TQRLabel;
    QRLabel102: TQRLabel;
    QRShape166: TQRShape;
    QRLabel103: TQRLabel;
    QRLabel104: TQRLabel;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    QRExpr4: TQRExpr;
    QRExpr5: TQRExpr;
    QRExpr6: TQRExpr;
    QRExpr7: TQRExpr;
    QRExpr8: TQRExpr;
    QRExpr12: TQRExpr;
    QRExpr13: TQRExpr;
    QRExpr14: TQRExpr;
    QRShape17: TQRShape;
    QBrowseSATUAN: TStringField;
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
    procedure Button123Click(Sender: TObject);
    procedure BtnDesign2Click(Sender: TObject);
    procedure ppTitleBand1BeforePrint(Sender: TObject);
    procedure Label5Click(Sender: TObject);
    procedure LookItemEnter(Sender: TObject);
    procedure ppDetailBand1BeforePrint(Sender: TObject);
    procedure QTransaksiBeforeOpen(DataSet: TDataSet);
    procedure vTglAwalChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure QBrowseAfterScroll(DataSet: TDataSet);
    procedure BitBtn1Click(Sender: TObject);
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
    procedure QBrowseFilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure QTotalCalcFields(DataSet: TDataSet);
    procedure BitBPrintBrowse2Click(Sender: TObject);
    procedure QRBand3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand10BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand12BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
    vorder, SelectedFont, vkode, vitem : String;
    t1, t2, t3, t4, t5, t6 : real;
    t7, t8, t9, t10, t11, t12,
    res, res1, res2, res3, res4, res5, res6 : real;
  public
    { Public declarations }
    procedure totalKg;
  end;

var
  WIP_JETDYEINGFRM: TWIP_JETDYEINGFRM;

Procedure ShowForm(pNamaMenu:String; pkode : String; pjudul : string; pbrg : string);

implementation

uses DM, Pembelian, Kriteria_Tanggal1, KartuStokBB, InfoWIPPengeringan,
  Math, LapProduksi;

{$R *.dfm}
procedure TWIP_JETDYEINGFRM.totalKg;
var
w,y : integer;
x,z, x1,z1, x2,z2, x3,z3, x4,z4, x5,z5, x6,z6 : real;
begin
  w := QBrowse.RecordCount;
  QBrowse.First;
    for y := 1 to w do
    begin
      x := QBrowsekg_awl.AsFloat;
      z := z+x;

      x1 := QBrowsekg1.AsFloat;
      z1 := z1+x1;

      x2 := QBrowsekg2.AsFloat;
      z2 := z2+x2;

      x3 := QBrowsekg3.AsFloat;
      z3 := z3+x3;

      x4 := QBrowsekg4.AsFloat;
      z4 := z4+x4;

      x5 := QBrowsekg5.AsFloat;
      z5 := z5+x5;

      x6:= QBrowsekg_akhir.AsFloat;
      z6:= z6+x6;

      QBrowse.Next;
    end;
    res := z;
    res1 := z1;
    res2 := z2;
    res3 := z3;
    res4 := z4;
    res5 := z5;
    res6 := z6;
end;

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
    WIP_JETDYEINGFrm:=TWIP_JETDYEINGFrm.Create(Application);
    mychar:=pjudul;
    Delete(mychar,Pos('&',mychar),1);
    pjudul:=mychar;
    WIP_JETDYEINGFrm.vkode:=pbrg;
    WIP_JETDYEINGFrm.QTransaksi.Open;


    WIP_JETDYEINGFrm.PanelHeader.Caption:=pjudul;
    WIP_JETDYEINGFrm.Caption:=UpperCase(WIP_JETDYEINGFrm.PanelHeader.Caption);
    {WIP_JETDYEINGFrm.wwDBGrid2.IniAttributes.FileName:=DMFrm.sAppPath+Application.Title+'2.ini';
    WIP_JETDYEINGFrm.wwDBGrid2.IniAttributes.SectionName:=WIP_JETDYEINGFrm.Caption+'2';
    WIP_JETDYEINGFrm.wwDBGrid2.IniAttributes.Enabled:=True;
    WIP_JETDYEINGFrm.wwDBGrid2.LoadFromIniFile;
    DMFrm.ProcReadIni(Application.Title,WIP_JETDYEINGFrm.Caption+'2',WIP_JETDYEINGFrm.wwDBGrid2);
    WIP_JETDYEINGFrm.wwDBSpinLine2.Value:=WIP_JETDYEINGFrm.wwDBGrid2.RowHeightPercent;}

  end;

  WIP_JETDYEINGFrm.Show;
end;

procedure TWIP_JETDYEINGFRM.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   DMFrm.ProcWtiteIni(Application.Title,Caption+'2',wwDBGrid1);
   Action:=caFree;
   WIP_JETDYEINGFrm:=Nil;
   QuickRep1:=Nil;
end;

procedure TWIP_JETDYEINGFRM.FormCreate(Sender: TObject);
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
//  BtnPrintBrowse.Glyph.LoadFromFile(DMFrm.sAppPath+'Images\PRINT.Bmp');
  BtnExport.Glyph.LoadFromFile(DMFrm.sAppPath+'Images\EXPORT.Bmp');
//Otoritas Button
//  BtnExport.Visible:=DMFrm.cBtnExport;
  BtnDesign2.Visible:=DMFrm.cBtnDesign;
end;

procedure TWIP_JETDYEINGFRM.BtnExportClick(Sender: TObject);
begin
  if QBrowse.Active then
  begin
     DMFrm.SaveDialog1.DefaultExt:='XLK';
     DMFrm.SaveDialog1.Filter:='Excel files (*.XLK)|*.XLK';
     DMFrm.SaveDialog1.FileName:=PanelHeader.Caption+' '+ vTglAwal.Text+' sd '+vTglAkhir.Text+'.xlK';
     wwDBGrid1.ExportOptions.TitleName:='WIP JET DYEING';
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

procedure TWIP_JETDYEINGFRM.BtnOkClick(Sender: TObject);
var
  vrasio, vpcs, vkg : real;
begin
  QDump.Close;
  QDump.SetVariable('vsysdate',vTglAwal.Date);
  QDump.SetVariable('vsysdate2',vTglAkhir.Date);
  QDump.Execute;
  QBrowse.DisableControls;
  QBrowse.Close;
  QBrowse.Open;
  QBrowse.EnableControls;
  QTotal.Close;
  QTotal.Open;
     totalKg;
  wwDBGrid1.ColumnByName('QTY_AWL').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QTotalQTY_AWL.AsFloat);
  wwDBGrid1.ColumnByName('QTY_AWL2').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QTotalQTY_AWL2.AsFloat);
  wwDBGrid1.ColumnByName('KG_AWL').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',res);
  wwDBGrid1.ColumnByName('QTY1').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QTotalQTY1.AsFloat);
  wwDBGrid1.ColumnByName('QTY2').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QTotalQTY2.AsFloat);
  wwDBGrid1.ColumnByName('KG1').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',res1);
  wwDBGrid1.ColumnByName('QTY5').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QTotalQTY5.AsFloat);
  wwDBGrid1.ColumnByName('QTY6').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QTotalQTY6.AsFloat);
  wwDBGrid1.ColumnByName('KG3').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',res3);
  wwDBGrid1.ColumnByName('QTY3').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QTotalQTY3.AsFloat);
  wwDBGrid1.ColumnByName('QTY4').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QTotalQTY4.AsFloat);
  wwDBGrid1.ColumnByName('KG2').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',res2);
  wwDBGrid1.ColumnByName('QTY7').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QTotalQTY7.AsFloat);
  wwDBGrid1.ColumnByName('QTY8').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QTotalQTY8.AsFloat);
  wwDBGrid1.ColumnByName('KG4').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',res4);
  wwDBGrid1.ColumnByName('QTY9').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QTotalQTY9.AsFloat);
  wwDBGrid1.ColumnByName('QTY10').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QTotalQTY10.AsFloat);
  wwDBGrid1.ColumnByName('KG5').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',res5);
  wwDBGrid1.ColumnByName('QTY_AKHIR').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QTotalQTY_AKHIR.AsFloat);
  wwDBGrid1.ColumnByName('QTY_AKHIR2').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QTotalQTY_AKHIR2.AsFloat);
  wwDBGrid1.ColumnByName('KG_AKHIR').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',res6);

end;

procedure TWIP_JETDYEINGFRM.wwDBGrid2TitleButtonClick(Sender: TObject;
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

procedure TWIP_JETDYEINGFRM.BtnClose1Click(Sender: TObject);
begin
  Close;
end;

procedure TWIP_JETDYEINGFRM.wwDBSpinLine2Change(Sender: TObject);
begin
//    wwDBGrid2.RowHeightPercent:=Round(wwDBSpinLine2.Value);
end;

procedure TWIP_JETDYEINGFRM.BtnFindClick(Sender: TObject);
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

procedure TWIP_JETDYEINGFRM.BtnOk2Click(Sender: TObject);
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

procedure TWIP_JETDYEINGFRM.BtnPrintBrowseClick(Sender: TObject);
begin
  QuickRep1.Preview;
end;

procedure TWIP_JETDYEINGFRM.BtnPrintBrowse1Click(Sender: TObject);
var checbox : byte;
begin

end;

procedure TWIP_JETDYEINGFRM.Button123Click(Sender: TObject);
begin
  ppDesigner1.ShowModal;
end;

procedure TWIP_JETDYEINGFRM.BtnDesign2Click(Sender: TObject);
begin
  ppDesigner1.ShowModal;
end;

procedure TWIP_JETDYEINGFRM.ppTitleBand1BeforePrint(Sender: TObject);
begin
  ppNamaLaporan.Caption:='MUTASI STOK '+DMFrm.QJnsItem.FieldByName('JNS_BRG').AsString;
  ppPeriode.Caption:=vTglAwal.Text+' SD '+vTglAkhir.Text;
  DMFrm.QTime.Close;
  DMFrm.QTime.Open;
  ppUserCetak.Caption:=DMFrm.QTimeVUSER_CETAK.AsString;
end;

procedure TWIP_JETDYEINGFRM.Label5Click(Sender: TObject);
begin
  if DMFrm.FontDialog1.Execute then
  begin
    wwDBGrid1.Font.Name:=DMFrm.FontDialog1.Font.Name;
    wwDBGrid1.Font.Size:=DMFrm.FontDialog1.Font.Size;
    wwDBGrid1.Font.Color:=DMFrm.FontDialog1.Font.Color;
    wwDBGrid1.Font.Style:=DMFrm.FontDialog1.Font.Style;
  end;
end;

procedure TWIP_JETDYEINGFRM.LookItemEnter(Sender: TObject);
begin
  (sender as TwwDBLookupComboDlg).LookupTable.Open;
end;

procedure TWIP_JETDYEINGFRM.ppDetailBand1BeforePrint(Sender: TObject);
begin
 ppLblNomer.Caption:=IntToStr(ppDBQBrowseDetail.RecordNo+1)
end;

procedure TWIP_JETDYEINGFRM.QTransaksiBeforeOpen(DataSet: TDataSet);
begin
  QTransaksi.DeclareVariable('kd_transaksi', otString);
  QTransaksi.SQL.Text:='select a.* from '+cUserTabel+'vtransaksi a where a.kd_transaksi=:kd_transaksi';
  QTransaksi.SetVariable('kd_transaksi',vkode);
end;

procedure TWIP_JETDYEINGFRM.vTglAwalChange(Sender: TObject);
begin
  vTglAkhir.DateTime:=EndOfTheMonth(vTglAwal.Date);
end;

procedure TWIP_JETDYEINGFRM.FormShow(Sender: TObject);
begin
    vTglAwal.Date:=Trunc(DMFrm.QTimeJAM.AsDateTime);
    vTglAkhir.Date:=Trunc(DMFrm.QTimeJAM.AsDateTime);
    WIP_JETDYEINGFrm:=Nil;
end;

procedure TWIP_JETDYEINGFRM.QBrowseAfterScroll(DataSet: TDataSet);
begin
    LabelBanner.Caption:='Record ke '+IntToStr(QBrowse.RecNo)+' dari '+FormatFloat('#,#',QBrowse.RecordCount)+' Records';
end;

procedure TWIP_JETDYEINGFRM.BitBtn1Click(Sender: TObject);
begin
//  wwDBGrid2DblClick(nil);
end;

procedure TWIP_JETDYEINGFRM.cbAdaTransaksiClick(Sender: TObject);
begin
  QBrowse.Filtered:=cbAdaTransaksi.Checked;
end;

procedure TWIP_JETDYEINGFRM.TitleBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  QRLabel13.Caption:='Periode :  '+vTglAwal.Text+' s/d '+vTglAkhir.Text;
  {QRLabel14.Caption:='(Per : '+vTglAwal.Text+' s/d '+vTglAkhir.Text+')';
  QRLabel13.Caption:='Bulan  '+FormatDateTime('MMMM YYYY',VTglAkhir.Date);
  QRLabel14.Caption:='(Per : '+vTglAwal.Text+' s/d '+vTglAkhir.Text+')';}
end;

procedure TWIP_JETDYEINGFRM.QRBand5BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  DMFrm.QDateTime.Open;
//  QRLabel84.Caption:=FormatDateTime('dd mmmm yyyy',vTglAkhir.Date);
end;

procedure TWIP_JETDYEINGFRM.QRBand6BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
{  DMFrm.QDateTime.Open;
  QRLabel67.Caption:='Pekalongan, '+FormatDateTime('dd mmmm yyyy',VTglAkhir.Date);
}
end;

procedure TWIP_JETDYEINGFRM.QRBand8BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
//  QRLabel69.Caption:='Periode :  '+vTglAwal.Text+' s/d '+vTglAkhir.Text;
end;

procedure TWIP_JETDYEINGFRM.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
{  DMFrm.QDateTime.Open;
  QRLabel48.Caption:='Pekalongan, '+FormatDateTime('dd mmmm yyyy',VTglAkhir.Date);
}
end;

procedure TWIP_JETDYEINGFRM.PageFooterBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  DMFrm.QDateTime.Open;
end;

procedure TWIP_JETDYEINGFRM.QuickRep1AfterPreview(Sender: TObject);
begin
  WIP_JETDYEINGFrm :=Nil;
end;

procedure TWIP_JETDYEINGFRM.QuickRep1AfterPrint(Sender: TObject);
begin
  WIP_JETDYEINGFrm :=Nil;
end;

procedure TWIP_JETDYEINGFRM.wwDBGrid1UpdateFooter(Sender: TObject);
begin
  QTotal.Close;
  QTotal.Open;
  wwDBGrid1.ColumnByName('QTY_AWL').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QTotalQTY_AWL.AsFloat);
  wwDBGrid1.ColumnByName('QTY_AWL2').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QTotalQTY_AWL2.AsFloat);
  wwDBGrid1.ColumnByName('KG_AWL').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',res);
  wwDBGrid1.ColumnByName('QTY1').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QTotalQTY1.AsFloat);
  wwDBGrid1.ColumnByName('QTY2').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QTotalQTY2.AsFloat);
  wwDBGrid1.ColumnByName('KG1').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',res1);
  wwDBGrid1.ColumnByName('QTY5').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QTotalQTY5.AsFloat);
  wwDBGrid1.ColumnByName('QTY6').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QTotalQTY6.AsFloat);
  wwDBGrid1.ColumnByName('KG3').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',res3);
  wwDBGrid1.ColumnByName('QTY3').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QTotalQTY3.AsFloat);
  wwDBGrid1.ColumnByName('QTY4').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QTotalQTY4.AsFloat);
  wwDBGrid1.ColumnByName('KG2').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',res2);
  wwDBGrid1.ColumnByName('QTY7').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QTotalQTY7.AsFloat);
  wwDBGrid1.ColumnByName('QTY8').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QTotalQTY8.AsFloat);
  wwDBGrid1.ColumnByName('KG4').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',res4);
  wwDBGrid1.ColumnByName('QTY9').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QTotalQTY9.AsFloat);
  wwDBGrid1.ColumnByName('QTY10').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QTotalQTY10.AsFloat);
  wwDBGrid1.ColumnByName('KG5').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',res5);
  wwDBGrid1.ColumnByName('QTY_AKHIR').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QTotalQTY_AKHIR.AsFloat);
  wwDBGrid1.ColumnByName('QTY_AKHIR2').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QTotalQTY_AKHIR2.AsFloat);
  wwDBGrid1.ColumnByName('KG_AKHIR').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',res6);
end;

procedure TWIP_JETDYEINGFRM.QBrowseCalcFields(DataSet: TDataSet);
begin
if (QBrowseSATUAN.AsString = 'METER') and (QBrowseKD_KONSTRUKSI.AsString <> '230') then
  begin
   QBrowsekg_awl.AsFloat := QBrowseQTY_AWL2.AsFloat * QBrowseRASIO2.AsFloat;
   QBrowsekg1.AsFloat := QBrowseQTY2.AsFloat * QBrowseRASIO2.AsFloat;
   QBrowsekg2.AsFloat := QBrowseQTY4.AsFloat * QBrowseRASIO2.AsFloat;
   QBrowsekg3.AsFloat := QBrowseQTY6.AsFloat * QBrowseRASIO2.AsFloat;
   QBrowsekg4.AsFloat := QBrowseQTY8.AsFloat * QBrowseRASIO2.AsFloat;
   QBrowsekg5.AsFloat := QBrowseQTY10.AsFloat * QBrowseRASIO2.AsFloat;
   QBrowsekg6.AsFloat := QBrowseQTY12.AsFloat * QBrowseRASIO2.AsFloat;
   QBrowsekg_akhir.AsFloat := QBrowseQTY_AKHIR2.AsFloat * QBrowseRASIO2.AsFloat;
  end;
if QBrowseKD_KONSTRUKSI.AsString = '230' then
  begin
   QBrowsekg_awl.AsFloat := ((QBrowseQTY_AWL2.AsFloat/2.12)/20) * QBrowseRASIO2.AsFloat;
   QBrowsekg1.AsFloat := ((QBrowseQTY2.AsFloat/2.12)/20) * QBrowseRASIO2.AsFloat;
   QBrowsekg2.AsFloat := ((QBrowseQTY4.AsFloat/2.12)/20) * QBrowseRASIO2.AsFloat;
   QBrowsekg3.AsFloat := ((QBrowseQTY6.AsFloat/2.12)/20) * QBrowseRASIO2.AsFloat;
   QBrowsekg4.AsFloat := ((QBrowseQTY8.AsFloat/2.12)/20) * QBrowseRASIO2.AsFloat;
   QBrowsekg5.AsFloat := ((QBrowseQTY10.AsFloat/2.12)/20) * QBrowseRASIO2.AsFloat;
   QBrowsekg6.AsFloat := ((QBrowseQTY12.AsFloat/2.12)/20) * QBrowseRASIO2.AsFloat;
   QBrowsekg_akhir.AsFloat := ((QBrowseQTY_AKHIR2.AsFloat/2.12)/20) * QBrowseRASIO2.AsFloat;
  end;
if (QBrowseSATUAN.AsString = 'POTONG') then
  begin
   QBrowsekg_awl.AsFloat := (QBrowseQTY_AWL.AsFloat/20) * QBrowseRASIO2.AsFloat;
   QBrowsekg1.AsFloat := (QBrowseQTY1.AsFloat/20) * QBrowseRASIO2.AsFloat;
   QBrowsekg2.AsFloat := (QBrowseQTY3.AsFloat/20) * QBrowseRASIO2.AsFloat;
   QBrowsekg3.AsFloat := (QBrowseQTY5.AsFloat/20) * QBrowseRASIO2.AsFloat;
   QBrowsekg4.AsFloat := (QBrowseQTY7.AsFloat/20) * QBrowseRASIO2.AsFloat;
   QBrowsekg5.AsFloat := (QBrowseQTY9.AsFloat/20) * QBrowseRASIO2.AsFloat;
   QBrowsekg6.AsFloat := (QBrowseQTY11.AsFloat/20) * QBrowseRASIO2.AsFloat;
   QBrowsekg_akhir.AsFloat := (QBrowseQTY_AKHIR.AsFloat/20) * QBrowseRASIO2.AsFloat;
  end;
end;

procedure TWIP_JETDYEINGFRM.wwDBGrid2UpdateFooter(Sender: TObject);
var  vrasio, vpcs, vkg : real;
begin
  vpcs:=0;
  vkg:=0;
  while not QBrowse.Eof do
  begin
  {  vpcs:=vpcs+QBrowsesc_bale.AsFloat;
    vkg:=vkg+QBrowsesc_prod_bale_mtr.AsFloat;
    QBrowse.Next; }
  end;
  QTotal.Close;
  QTotal.Open;
  QBrowse.EnableControls;
 { wwDBGrid2.ColumnByName('QTY1').FooterValue:=FormatFloat('#,0.0000;(#,0.0000);-',QTotalQTY1.AsFloat);
  wwDBGrid2.ColumnByName('SC_BALE').FooterValue:=FormatFloat('#,0.0000;(#,0.0000);-',vpcs);
  wwDBGrid2.ColumnByName('SC_PROD_BALE_MTR').FooterValue:=FormatFloat('#,0.0000;(#,0.0000);-',vkg);}
end;

procedure TWIP_JETDYEINGFRM.SummaryBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  DMFrm.QDateTime.Open;
  QRLabel35.Caption:='Pekalongan, '+FormatDateTime('dd mmmm yyyy',VTglAkhir.Date);
end;

procedure TWIP_JETDYEINGFRM.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  WIP_JETDYEINGFrm :=Nil;
end;

procedure TWIP_JETDYEINGFRM.QBrowseFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
    Accept:=
    (Trunc(QBrowseQTY1.AsFloat)<>0) or
    (Trunc(QBrowseQTY2.AsFloat)<>0) or
    (Trunc(QBrowseQTY3.AsFloat)<>0) or
    (Trunc(QBrowseQTY4.AsFloat)<>0) or
    (Trunc(QBrowseQTY5.AsFloat)<>0) or
    (Trunc(QBrowseQTY6.AsFloat)<>0) or
    (Trunc(QBrowseQTY7.AsFloat)<>0) or
    (Trunc(QBrowseQTY8.AsFloat)<>0) or
    (Trunc(QBrowseQTY9.AsFloat)<>0) or
    (Trunc(QBrowseQTY10.AsFloat)<>0) or
    (Trunc(QBrowseQTY11.AsFloat)<>0) or
    (Trunc(QBrowseQTY12.AsFloat)<>0) or
    (Trunc(QBrowseQTY13.AsFloat)<>0) or
    (Trunc(QBrowseQTY14.AsFloat)<>0) or
    (Trunc(QBrowseQTY15.AsFloat)<>0) or
    (Trunc(QBrowseQTY_AWL.AsFloat)<>0) or
    (Trunc(QBrowseQTY_AWL2.AsFloat)<>0) or
    (Trunc(QBrowseQTY_AKHIR.AsFloat)<>0) or
    (Trunc(QBrowseQTY_AKHIR2.AsFloat)<>0);
end;

procedure TWIP_JETDYEINGFRM.QTotalCalcFields(DataSet: TDataSet);
begin
//  QTotalkg_awl.AsFloat:=(QTOTAL2des.AsFloat-QTOTAL2des2.AsFloat);
//  QTOTAL2var_des.AsFloat:=(QTOTAL2des.AsFloat-QTOTAL2des2.AsFloat);
end;

procedure TWIP_JETDYEINGFRM.BitBPrintBrowse2Click(Sender: TObject);
begin
if RadioGroup1.ItemIndex = 0 then
  begin
    QuickRep1.Preview;
  end;
if RadioGroup1.ItemIndex = 1 then
  begin
    QuickRep4.Preview;
  end;
end;

procedure TWIP_JETDYEINGFRM.QRBand3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
//  QRLabel50.Caption:='Periode :  '+vTglAwal.Text+' s/d '+vTglAkhir.Text;
end;

procedure TWIP_JETDYEINGFRM.QRBand10BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  DMFrm.QDateTime.Open;
  QRLabel90.Caption:='Pekalongan, '+FormatDateTime('dd mmmm yyyy',VTglAkhir.Date);
end;

procedure TWIP_JETDYEINGFRM.QRBand12BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel92.Caption:='Periode :  '+vTglAwal.Text+' s/d '+vTglAkhir.Text;
end;

end.
