unit InfoWIPCelup;

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
  TInfoWIPCelupFrm = class(TForm)
    PanelMain: TPanel;
    PanelHeader: TPanel;
    PanelFilter: TPanel;
    LabelBanner: TLabel;
    PanelBrowse: TPanel;
    PanelFooter2: TPanel;
    BtnOk: TBitBtn;
    wwDBGrid2: TwwDBGrid;
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
    QBrowseKD_ITEM: TStringField;
    QBrowseKD_JNS_ITEM: TStringField;
    QBrowseNAMA_ITEM: TStringField;
    QBrowseKD_SATUAN: TStringField;
    QBrowseSATUAN: TStringField;
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
    QDump2: TOracleQuery;
    RadioGroup1: TRadioGroup;
    wwDBGrid1: TwwDBGrid;
    BitBtn1: TBitBtn;
    ComboBox1: TComboBox;
    QDump3: TOracleQuery;
    QBrowseWARNA: TStringField;
    QBrowseNO_BATCH: TStringField;
    QDump4: TOracleQuery;
    QBrowseKELUAR5: TFloatField;
    QBrowseKELUAR6: TFloatField;
    cbAdaTransaksi: TCheckBox;
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
    SummaryBand1: TQRBand;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    PageFooterBand1: TQRBand;
    QRExpr9: TQRExpr;
    QuickRep2: TQuickRep;
    QRBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRBand2: TQRBand;
    QRLabel4: TQRLabel;
    QRLPeriode1: TQRLabel;
    QRBand3: TQRBand;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel37: TQRLabel;
    QRShape3: TQRShape;
    QRLabel38: TQRLabel;
    QRBand4: TQRBand;
    QRDBText2: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRSysData2: TQRSysData;
    QRExpr10: TQRExpr;
    QRBand5: TQRBand;
    QRLabel39: TQRLabel;
    QRExpr11: TQRExpr;
    QRExpr12: TQRExpr;
    QRExpr13: TQRExpr;
    QRExpr14: TQRExpr;
    QRExpr15: TQRExpr;
    QRExpr16: TQRExpr;
    QRExpr17: TQRExpr;
    QRExpr18: TQRExpr;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRLabel46: TQRLabel;
    QRLabel47: TQRLabel;
    QRLabel48: TQRLabel;
    QRShape7: TQRShape;
    QRLabel49: TQRLabel;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRDBText21: TQRDBText;
    QRExpr19: TQRExpr;
    QRExpr20: TQRExpr;
    QRShape8: TQRShape;
    QRLabel50: TQRLabel;
    QRBand7: TQRBand;
    QRDBText22: TQRDBText;
    QRLabel24: TQRLabel;
    QRLabel43: TQRLabel;
    QRLabel51: TQRLabel;
    QRImage2: TQRImage;
    QRSysData4: TQRSysData;
    QRShape9: TQRShape;
    QBrowseREPRO1: TFloatField;
    QBrowseREPRO2: TFloatField;
    QRLabel52: TQRLabel;
    QRBand6: TQRBand;
    QRLabel53: TQRLabel;
    QRExpr21: TQRExpr;
    QRExpr22: TQRExpr;
    QRExpr23: TQRExpr;
    QRExpr24: TQRExpr;
    QRExpr25: TQRExpr;
    QRExpr26: TQRExpr;
    QRExpr27: TQRExpr;
    QRExpr28: TQRExpr;
    QRLabel54: TQRLabel;
    QRLabel55: TQRLabel;
    QRLabel56: TQRLabel;
    QRLabel57: TQRLabel;
    QRLabel58: TQRLabel;
    QRLabel59: TQRLabel;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRLabel60: TQRLabel;
    QRLabel61: TQRLabel;
    QRDBText24: TQRDBText;
    QRDBText25: TQRDBText;
    QRExpr29: TQRExpr;
    QRExpr30: TQRExpr;
    QRLabel62: TQRLabel;
    QRExpr31: TQRExpr;
    QRExpr32: TQRExpr;
    QRExpr33: TQRExpr;
    QRExpr34: TQRExpr;
    QRExpr35: TQRExpr;
    QRExpr36: TQRExpr;
    QRExpr37: TQRExpr;
    QRExpr38: TQRExpr;
    QRExpr39: TQRExpr;
    QRExpr40: TQRExpr;
    QRLabel2: TQRLabel;
    QRLabel63: TQRLabel;
    QRLabel64: TQRLabel;
    QRDBText26: TQRDBText;
    QRDBText27: TQRDBText;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    QTransaksiDOC_ISO: TStringField;
    QRDBText29: TQRDBText;
    QRDBText28: TQRDBText;
    QRDBText52: TQRDBText;
    QRDBText53: TQRDBText;
    QRDBText54: TQRDBText;
    QRDBText49: TQRDBText;
    QRDBText50: TQRDBText;
    QRDBText51: TQRDBText;
    QRDBText55: TQRDBText;
    QRDBText56: TQRDBText;
    QRDBText57: TQRDBText;
    QRDBText59: TQRDBText;
    QRDBText30: TQRDBText;
    QRDBText58: TQRDBText;
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
    procedure QBrowseCalcFields(DataSet: TDataSet);
    procedure wwDBGrid2DblClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure cbAdaTransaksiClick(Sender: TObject);
    procedure QBrowseFilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure TitleBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand5BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure RadioGroup1Click(Sender: TObject);
  private
    { Private declarations }
    vorder, SelectedFont, vkode, vitem : String;
      t1, t2, t3, t4, t5, t6 : real;
      t7, t8, t9, t10, t11, t12, t13, t14 : real;
  public
    { Public declarations }

  end;

var
  InfoWIPCelupFrm: TInfoWIPCelupFrm;

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

//  if InfoWIPCelupFrm=Nil then
  begin
    InfoWIPCelupFrm:=TInfoWIPCelupFrm.Create(Application);
    mychar:=pjudul;
    Delete(mychar,Pos('&',mychar),1);
    pjudul:=mychar;
    InfoWIPCelupFrm.vkode:=pbrg;
    InfoWIPCelupFrm.QTransaksi.Open;


    InfoWIPCelupFrm.PanelHeader.Caption:=pjudul;
    InfoWIPCelupFrm.Caption:=UpperCase(InfoWIPCelupFrm.PanelHeader.Caption);
    InfoWIPCelupFrm.wwDBGrid2.IniAttributes.FileName:=DMFrm.sAppPath+Application.Title+'2.ini';
    InfoWIPCelupFrm.wwDBGrid2.IniAttributes.SectionName:=InfoWIPCelupFrm.Caption+'2';
    InfoWIPCelupFrm.wwDBGrid2.IniAttributes.Enabled:=True;
    InfoWIPCelupFrm.wwDBGrid2.LoadFromIniFile;
    DMFrm.ProcReadIni(Application.Title,InfoWIPCelupFrm.Caption+'2',InfoWIPCelupFrm.wwDBGrid2);
    InfoWIPCelupFrm.wwDBSpinLine2.Value:=InfoWIPCelupFrm.wwDBGrid2.RowHeightPercent;

  end;

  InfoWIPCelupFrm.Show;
end;

procedure TInfoWIPCelupFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   DMFrm.ProcWtiteIni(Application.Title,Caption+'2',wwDBGrid2);
   Action:=caFree;
   InfoWIPCelupFrm:=Nil;
   QuickRep1:=Nil;
   QuickRep2:=Nil;
end;

procedure TInfoWIPCelupFrm.FormCreate(Sender: TObject);
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

procedure TInfoWIPCelupFrm.BtnExportClick(Sender: TObject);
begin
  if QBrowse.Active then
  begin
     DMFrm.SaveDialog1.DefaultExt:='XLK';
     DMFrm.SaveDialog1.Filter:='Excel files (*.XLK)|*.XLK';
     DMFrm.SaveDialog1.FileName:=PanelHeader.Caption+' '+ vTglAwal.Text+' sd '+vTglAkhir.Text+'.xlK';
     wwDBGrid2.ExportOptions.TitleName:='HASIL PRODUKSI CELUP';
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

procedure TInfoWIPCelupFrm.BtnOkClick(Sender: TObject);
var
  vrasio : real;
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
      if RadioGroup1.ItemIndex=0 then
      begin
       QDump2.Close;
       QDump2.SetVariable('vrasio',1);
       QDump2.SetVariable('vsysdate',vTglAwal.Date);
       QDump2.SetVariable('vsysdate2',vTglAkhir.Date);
       QDump2.SetVariable('kd_jns_item','21');
       QDump2.SetVariable('kd_jns_item2','10');
       QDump2.Execute;
       wwDBGrid1.BringToFront;
      end
   else
   begin
       if ComboBox1.ItemIndex=0 then
       begin
       QDump.Close;
       QDump.SetVariable('vrasio',1);
       QDump.SetVariable('vsysdate',vTglAwal.Date);
       QDump.SetVariable('vsysdate2',vTglAkhir.Date);
       QDump.SetVariable('kd_jns_item',vkode);
       QDump.Execute;
       end
   else
   if ComboBox1.ItemIndex=1 then
       begin
       QDump3.Close;
       QDump3.SetVariable('vrasio',1);
       QDump3.SetVariable('vsysdate',vTglAwal.Date);
       QDump3.SetVariable('vsysdate2',vTglAkhir.Date);
       QDump3.SetVariable('kd_jns_item',vkode);
       QDump3.Execute;
       end
   else
   if ComboBox1.ItemIndex=2 then
      begin
       QDump4.Close;
       QDump4.SetVariable('vrasio',1);
       QDump4.SetVariable('vsysdate',vTglAwal.Date);
       QDump4.SetVariable('vsysdate2',vTglAkhir.Date);
       QDump4.SetVariable('kd_jns_item',vkode);
     //  QDump4.SetVariable('kd_item',QBrowseKD_ITEM.AsString);
       QDump4.Execute;
       end;

       wwDBGrid2.BringToFront;
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

      while not QBrowse.Eof do
      begin
        t1:=t1+QBrowseAWAL1.AsFloat;
        t2:=t2+QBrowseAWAL2.AsFloat;
        t3:=t3+QBrowseMASUK1.AsFloat;
        t4:=t4+QBrowseMASUK2.AsFloat;
        t5:=t5+QBrowseKELUAR1.AsFloat;
        t6:=t6+QBrowseKELUAR2.AsFloat;
        t7:=t7+QBrowseKELUAR5.AsFloat;
        t8:=t8+QBrowseKELUAR6.AsFloat;
        t9:=t9+QBrowseKOREKSI1.AsFloat;
        t10:=t10+QBrowseKOREKSI2.AsFloat;
        t11:=t11+QBrowseAKHIR1.AsFloat;
        t12:=t12+QBrowseAKHIR2.AsFloat;
        t13:=t13+QBrowseREPRO1.AsFloat;
        t14:=t14+QBrowseREPRO2.AsFloat;
        QBrowse.Next;
      end;
      QBrowse.EnableControls;
      if RadioGroup1.ItemIndex=0 then
      begin
      wwDBGrid1.ColumnByName('AWAL1').FooterValue:=FormatFloat('#,0.0000;-#,0.0000;-',t1);
      wwDBGrid1.ColumnByName('AWAL2').FooterValue:=FormatFloat('#,0;-#,0;-',t2);
      wwDBGrid1.ColumnByName('MASUK1').FooterValue:=FormatFloat('#,0.0000;-#,0.0000;-',t3);
      wwDBGrid1.ColumnByName('MASUK2').FooterValue:=FormatFloat('#,0;-#,0;-',t4);
      wwDBGrid1.ColumnByName('REPRO1').FooterValue:=FormatFloat('#,0.0000;-#,0.0000;-',t13);
      wwDBGrid1.ColumnByName('REPRO2').FooterValue:=FormatFloat('#,0;-#,0;-',t14);
      wwDBGrid1.ColumnByName('KELUAR1').FooterValue:=FormatFloat('#,0.0000;-#,0.0000;-',t5);
      wwDBGrid1.ColumnByName('KELUAR2').FooterValue:=FormatFloat('#,0;-#,0;-',t6);
      wwDBGrid1.ColumnByName('KELUAR5').FooterValue:=FormatFloat('#,0.0000;-#,0.0000;-',t7);
      wwDBGrid1.ColumnByName('KELUAR6').FooterValue:=FormatFloat('#,0;-#,0;-',t8);
      wwDBGrid1.ColumnByName('KOREKSI1').FooterValue:=FormatFloat('#,0.0000;-#,0.0000;-',t9);
      wwDBGrid1.ColumnByName('KOREKSI2').FooterValue:=FormatFloat('#,0;-#,0;-',t10);
      wwDBGrid1.ColumnByName('AKHIR1').FooterValue:=FormatFloat('#,0.0000;-#,0.0000;-',t11);
      wwDBGrid1.ColumnByName('AKHIR2').FooterValue:=FormatFloat('#,0;-#,0;-',t12);
      end
      else
      begin
      wwDBGrid2.ColumnByName('AWAL1').FooterValue:=FormatFloat('#,0.0000;-#,0.0000;-',t1);
      wwDBGrid2.ColumnByName('AWAL2').FooterValue:=FormatFloat('#,0;-#,0;-',t2);
      wwDBGrid2.ColumnByName('MASUK1').FooterValue:=FormatFloat('#,0.0000;-#,0.0000;-',t3);
      wwDBGrid2.ColumnByName('MASUK2').FooterValue:=FormatFloat('#,0;-#,0;-',t4);
      wwDBGrid2.ColumnByName('REPRO1').FooterValue:=FormatFloat('#,0.0000;-#,0.0000;-',t13);
      wwDBGrid2.ColumnByName('REPRO2').FooterValue:=FormatFloat('#,0;-#,0;-',t14);
      wwDBGrid2.ColumnByName('KELUAR1').FooterValue:=FormatFloat('#,0.0000;-#,0.0000;-',t5);
      wwDBGrid2.ColumnByName('KELUAR2').FooterValue:=FormatFloat('#,0;-#,0;-',t6);
      wwDBGrid2.ColumnByName('KELUAR5').FooterValue:=FormatFloat('#,0.0000;-#,0.0000;-',t7);
      wwDBGrid2.ColumnByName('KELUAR6').FooterValue:=FormatFloat('#,0;-#,0;-',t8);
      wwDBGrid2.ColumnByName('KOREKSI1').FooterValue:=FormatFloat('#,0.0000;-#,0.0000;-',t9);
      wwDBGrid2.ColumnByName('KOREKSI2').FooterValue:=FormatFloat('#,0;-#,0;-',t10);
      wwDBGrid2.ColumnByName('AKHIR1').FooterValue:=FormatFloat('#,0.0000;-#,0.0000;-',t11);
      wwDBGrid2.ColumnByName('AKHIR2').FooterValue:=FormatFloat('#,0;-#,0;-',t12);
      end;
    end;
end;
end;

procedure TInfoWIPCelupFrm.wwDBGrid2TitleButtonClick(Sender: TObject;
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

procedure TInfoWIPCelupFrm.BtnClose1Click(Sender: TObject);
begin
  Close;
end;

procedure TInfoWIPCelupFrm.wwDBSpinLine2Change(Sender: TObject);
begin
    wwDBGrid2.RowHeightPercent:=Round(wwDBSpinLine2.Value);
end;

procedure TInfoWIPCelupFrm.BtnFindClick(Sender: TObject);
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

procedure TInfoWIPCelupFrm.BtnOk2Click(Sender: TObject);
begin
  if QBrowse.QBEMode then
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
      while not QBrowse.Eof do
      begin
        t1:=t1+QBrowseAWAL1.AsFloat;
        t2:=t2+QBrowseAWAL2.AsFloat;
        t3:=t3+QBrowseMASUK1.AsFloat;
        t4:=t4+QBrowseMASUK2.AsFloat;
        t5:=t5+QBrowseKELUAR1.AsFloat;
        t6:=t6+QBrowseKELUAR2.AsFloat;
        t7:=t7+QBrowseKELUAR5.AsFloat;
        t8:=t8+QBrowseKELUAR6.AsFloat;
        t9:=t9+QBrowseKOREKSI1.AsFloat;
        t10:=t10+QBrowseKOREKSI2.AsFloat;
        t11:=t11+QBrowseAKHIR1.AsFloat;
        t12:=t12+QBrowseAKHIR2.AsFloat;
        t13:=t13+QBrowseREPRO1.AsFloat;
        t14:=t14+QBrowseREPRO2.AsFloat;
        QBrowse.Next;
      end;
      QBrowse.EnableControls;
      if RadioGroup1.ItemIndex=0 then
      begin
      wwDBGrid1.ColumnByName('AWAL1').FooterValue:=FormatFloat('#,0.0000;-#,0.0000;-',t1);
      wwDBGrid1.ColumnByName('AWAL2').FooterValue:=FormatFloat('#,0;-#,0;-',t2);
      wwDBGrid1.ColumnByName('MASUK1').FooterValue:=FormatFloat('#,0.0000;-#,0.0000;-',t3);
      wwDBGrid1.ColumnByName('MASUK2').FooterValue:=FormatFloat('#,0;-#,0;-',t4);
      wwDBGrid1.ColumnByName('KELUAR1').FooterValue:=FormatFloat('#,0.0000;-#,0.0000;-',t5);
      wwDBGrid1.ColumnByName('KELUAR2').FooterValue:=FormatFloat('#,0;-#,0;-',t6);
      wwDBGrid1.ColumnByName('KELUAR5').FooterValue:=FormatFloat('#,0.0000;-#,0.0000;-',t7);
      wwDBGrid1.ColumnByName('KELUAR6').FooterValue:=FormatFloat('#,0;-#,0;-',t8);
      wwDBGrid1.ColumnByName('KOREKSI1').FooterValue:=FormatFloat('#,0.0000;-#,0.0000;-',t9);
      wwDBGrid1.ColumnByName('KOREKSI2').FooterValue:=FormatFloat('#,0;-#,0;-',t10);
      wwDBGrid1.ColumnByName('AKHIR1').FooterValue:=FormatFloat('#,0.0000;-#,0.0000;-',t11);
      wwDBGrid1.ColumnByName('AKHIR2').FooterValue:=FormatFloat('#,0;-#,0;-',t12);
      end
      else
      begin
      wwDBGrid2.ColumnByName('AWAL1').FooterValue:=FormatFloat('#,0.0000;-#,0.0000;-',t1);
      wwDBGrid2.ColumnByName('AWAL2').FooterValue:=FormatFloat('#,0;-#,0;-',t2);
      wwDBGrid2.ColumnByName('MASUK1').FooterValue:=FormatFloat('#,0.0000;-#,0.0000;-',t3);
      wwDBGrid2.ColumnByName('MASUK2').FooterValue:=FormatFloat('#,0;-#,0;-',t4);
      wwDBGrid2.ColumnByName('REPRO1').FooterValue:=FormatFloat('#,0.0000;-#,0.0000;-',t13);
      wwDBGrid2.ColumnByName('REPRO2').FooterValue:=FormatFloat('#,0;-#,0;-',t14);
      wwDBGrid2.ColumnByName('KELUAR1').FooterValue:=FormatFloat('#,0.0000;-#,0.0000;-',t5);
      wwDBGrid2.ColumnByName('KELUAR2').FooterValue:=FormatFloat('#,0;-#,0;-',t6);
      wwDBGrid2.ColumnByName('KELUAR5').FooterValue:=FormatFloat('#,0.0000;-#,0.0000;-',t7);
      wwDBGrid2.ColumnByName('KELUAR6').FooterValue:=FormatFloat('#,0;-#,0;-',t8);
      wwDBGrid2.ColumnByName('KOREKSI1').FooterValue:=FormatFloat('#,0.0000;-#,0.0000;-',t9);
      wwDBGrid2.ColumnByName('KOREKSI2').FooterValue:=FormatFloat('#,0;-#,0;-',t10);
      wwDBGrid2.ColumnByName('AKHIR1').FooterValue:=FormatFloat('#,0.0000;-#,0.0000;-',t11);
      wwDBGrid2.ColumnByName('AKHIR2').FooterValue:=FormatFloat('#,0;-#,0;-',t12);
      end;
    end;

end;

procedure TInfoWIPCelupFrm.BtnPrintBrowseClick(Sender: TObject);
begin
  QuickRep1.Preview;
end;

procedure TInfoWIPCelupFrm.BtnPrintBrowse1Click(Sender: TObject);
begin
  DMFrm.QDateTime.Open;
  QuickRep2.Preview;
end;

procedure TInfoWIPCelupFrm.Button1Click(Sender: TObject);
begin
  ppDesigner1.ShowModal;
end;

procedure TInfoWIPCelupFrm.BtnDesign2Click(Sender: TObject);
begin
  ppDesigner1.ShowModal;
end;

procedure TInfoWIPCelupFrm.ppTitleBand1BeforePrint(Sender: TObject);
begin
  ppNamaLaporan.Caption:='MUTASI STOK '+DMFrm.QJnsItem.FieldByName('JNS_BRG').AsString;
  ppPeriode.Caption:=vTglAwal.Text+' SD '+vTglAkhir.Text;
  DMFrm.QTime.Close;
  DMFrm.QTime.Open;
  ppUserCetak.Caption:=DMFrm.QTimeVUSER_CETAK.AsString;
end;

procedure TInfoWIPCelupFrm.Label5Click(Sender: TObject);
begin
  if DMFrm.FontDialog1.Execute then
  begin
    wwDBGrid2.Font.Name:=DMFrm.FontDialog1.Font.Name;
    wwDBGrid2.Font.Size:=DMFrm.FontDialog1.Font.Size;
    wwDBGrid2.Font.Color:=DMFrm.FontDialog1.Font.Color;
    wwDBGrid2.Font.Style:=DMFrm.FontDialog1.Font.Style;
  end;
end;

procedure TInfoWIPCelupFrm.LookItemEnter(Sender: TObject);
begin
  (sender as TwwDBLookupComboDlg).LookupTable.Open;
end;

procedure TInfoWIPCelupFrm.ppDetailBand1BeforePrint(Sender: TObject);
begin
 ppLblNomer.Caption:=IntToStr(ppDBQBrowseDetail.RecordNo+1)
end;

procedure TInfoWIPCelupFrm.QTransaksiBeforeOpen(DataSet: TDataSet);
begin
  QTransaksi.DeclareVariable('kd_transaksi', otString);
  QTransaksi.SQL.Text:='select a.* from '+cUserTabel+'vtransaksi a where a.kd_transaksi=:kd_transaksi';
  QTransaksi.SetVariable('kd_transaksi','L02');
end;

procedure TInfoWIPCelupFrm.vTglAwalChange(Sender: TObject);
begin
  vTglAkhir.DateTime:=EndOfTheMonth(vTglAwal.Date);
end;

procedure TInfoWIPCelupFrm.FormShow(Sender: TObject);
begin
  vTglAwal.Date:=Trunc(DMFrm.QDateTimeVNOW.AsDateTime);
  vTglAkhir.Date:=Trunc(DMFrm.QDateTimeVNOW.AsDateTime);
  QTransaksi.Open;
{    vTglAwal.Date:=Trunc(DMFrm.QTimeJAM.AsDateTime); }
{    vTglAkhir.Date:=Trunc(DMFrm.QTimeJAM.AsDateTime); }
end;

procedure TInfoWIPCelupFrm.QBrowseAfterScroll(DataSet: TDataSet);
begin
    LabelBanner.Caption:='Record ke '+IntToStr(QBrowse.RecNo)+' dari '+FormatFloat('#,#',QBrowse.RecordCount)+' Records';
end;

procedure TInfoWIPCelupFrm.QBrowseCalcFields(DataSet: TDataSet);
begin
  QBrowseAKHIR1.AsFloat:=QBrowseAWAL1.AsFloat+QBrowseMASUK1.AsFloat+QBrowseREPRO1.AsFloat+QBrowseKOREKSI1.AsFloat-
    QBrowseKELUAR1.AsFloat+QBrowseKELUAR5.AsFloat;
  QBrowseAKHIR2.AsFloat:=QBrowseAWAL2.AsFloat+QBrowseMASUK2.AsFloat+QBrowseREPRO2.AsFloat+QBrowseKOREKSI2.AsFloat-
    QBrowseKELUAR2.AsFloat+QBrowseKELUAR6.AsFloat;

end;

procedure TInfoWIPCelupFrm.wwDBGrid2DblClick(Sender: TObject);
begin
   KartuStokBB.ShowForm(PanelHeader.Caption,QBrowseKD_ITEM.AsString, vkode,vTglAwal.Date, vTglAkhir.Date, QBrowseAWAL1.AsFloat, QBrowseAWAL2.AsFloat );
end;

procedure TInfoWIPCelupFrm.BitBtn1Click(Sender: TObject);
begin
  wwDBGrid2DblClick(nil);
end;

procedure TInfoWIPCelupFrm.cbAdaTransaksiClick(Sender: TObject);
begin
  QBrowse.Filtered:=cbAdaTransaksi.Checked;

end;

procedure TInfoWIPCelupFrm.QBrowseFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
  Accept:=(Trunc(QBrowseAWAL1.AsFloat)<>0) or
    (Trunc(QBrowseMASUK1.AsFloat)<>0) or
    (Trunc(QBrowseKELUAR1.AsFloat)<>0) or
    (Trunc(QBrowseKELUAR5.AsFloat)<>0) or
    (Trunc(QBrowseKOREKSI1.AsFloat)<>0) or
    (Trunc(QBrowseAKHIR1.AsFloat)<>0);

end;

procedure TInfoWIPCelupFrm.TitleBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
    QRLPeriode1.Caption:=vTglAwal.Text+' s/d '+vTglAkhir.Text;
    QRLPeriode.Caption:=FormatDateTime('dd mmmm yyyy',VTglAkhir.Date);
end;

procedure TInfoWIPCelupFrm.QRBand5BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  DMFrm.QDateTime.Open;
  QRLabel24.Caption:=FormatDateTime('dd mmmm yyyy',VTglAkhir.Date);
end;

procedure TInfoWIPCelupFrm.RadioGroup1Click(Sender: TObject);
begin
if RadioGroup1.ItemIndex=0 then
    begin
    ComboBox1.ItemIndex:=0;
    ComboBox1.Enabled:=False;
    end
else
    begin
    ComboBox1.Enabled:=True;
    end;

end;

end.
