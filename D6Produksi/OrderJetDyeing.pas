unit OrderJetDyeing;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  DateUtils, Mask, wwdbedit, Wwdbspin, DB, Wwdatsrc, OracleData, Dialogs,
  Oracle, Buttons, wwSpeedButton, wwDBNavigator, wwclearpanel, Grids,
  Wwdbigrd, Wwdbgrid, StdCtrls, wwdbdatetimepicker, ComCtrls, ExtCtrls,
  ppViewr, ppDB, ppDBPipe, ppComm, ppRelatv, ppProd, ppClass, ppReport,
  ppVar, ppCtrls, ppBands, ppPrnabl, ppCache, ppEndUsr, ppModule,
  daDataModule, DBCtrls, wwdblook, Wwdbdlg, Wwdotdot, Wwdbcomb, ppBarCod,
  wwcheckbox, ppStrtch, ppMemo, raCodMod, wwriched;

type
  TOrderJetDyeingFrm = class(TForm)
    dsQBrowse: TwwDataSource;
    ppReportBrowse: TppReport;
    ppDBQBrowseDetail: TppDBPipeline;
    ppDesigner1: TppDesigner;
    ppDBPerusahaan: TppDBPipeline;
    ppReportInput: TppReport;
    ppDBQMaster: TppDBPipeline;
    ppDBQDetail: TppDBPipeline;
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
    ppLabel23: TppLabel;
    ppLabel27: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppNo2: TppVariable;
    ppDBText30: TppDBText;
    ppDBMemo1: TppDBMemo;
    ppDBText18: TppDBText;
    ppDBText21: TppDBText;
    ppFooterBand2: TppFooterBand;
    ppUserCetak2: TppLabel;
    ppDBBarCode1: TppDBBarCode;
    ppSummaryBand2: TppSummaryBand;
    ppLabel29: TppLabel;
    ppDBMemo2: TppDBMemo;
    ppPageStyle1: TppPageStyle;
    ppLabel19: TppLabel;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    raCodeModule1: TraCodeModule;
    ppDBText22: TppDBText;
    ppLabel30: TppLabel;
    ppDBText29: TppDBText;
    ppLabel31: TppLabel;
    QSOP: TOracleDataSet;
    dsQSOP: TwwDataSource;
    QKonstruksi: TOracleDataSet;
    QKonstruksiKD_KONSTRUKSI: TStringField;
    QKonstruksiNAMA_KONSTRUKSI: TStringField;
    QKonstruksiSUB_KELOMPOK: TStringField;
    QKonstruksiKELOMPOK: TStringField;
    QBrowse2: TOracleDataSet;
    QMaster2: TOracleDataSet;
    dsQMaster2: TwwDataSource;
    QDetail2: TOracleDataSet;
    dsQDetail2: TwwDataSource;
    QMaster2IBUKTI: TFloatField;
    QMaster2KD_TRANSAKSI: TStringField;
    QMaster2TGL: TDateTimeField;
    QMaster2NO_NOTA: TStringField;
    QMaster2NO_BUKTI: TStringField;
    QMaster2NO_RESEP: TStringField;
    QMaster2KETERANGAN: TStringField;
    QMaster2ISPOST: TStringField;
    QMaster2STATUS: TStringField;
    QMaster2KD_DIV: TStringField;
    QMaster2SHIFT: TStringField;
    QMaster2GRUP: TStringField;
    QMaster2TTD1: TStringField;
    QMaster2TTD2: TStringField;
    QMaster2TTD3: TStringField;
    QMaster2TTD4: TStringField;
    QMaster2TGL_INSERT: TDateTimeField;
    QMaster2OPR_INSERT: TStringField;
    QMaster2QTY_RESEP: TFloatField;
    QMaster2LDIVISI: TStringField;
    QTotal2: TOracleDataSet;
    dsQBrowse2: TwwDataSource;
    QDetail2IBUKTI_DETAIL: TFloatField;
    QDetail2KD_KONSTRUKSI: TStringField;
    QDetail2QTY1: TFloatField;
    QDetail2QTY2: TFloatField;
    QDetail2QTY4: TFloatField;
    QDetail2QTY5: TFloatField;
    QDetail2QTY6: TFloatField;
    QDetail2QTY7: TFloatField;
    QDetail2SATUAN: TStringField;
    QDetail2IBUKTI: TFloatField;
    QDetail2LITEM: TStringField;
    QDetail2SELISIH: TFloatField;
    QBrowse2NO_NOTA: TStringField;
    QBrowse2TANGGAL: TDateTimeField;
    QBrowse2SHIFT: TStringField;
    QBrowse2GRUP: TStringField;
    QBrowse2NAMA_DIVISI: TStringField;
    QBrowse2KODE_BRG: TStringField;
    QBrowse2NAMA_BRG: TStringField;
    QBrowse2IBUKTI: TFloatField;
    QDetail2NO_ORDER: TStringField;
    QBrowse2NO_ORDER: TStringField;
    QTotal2GULUNG_IN: TFloatField;
    QTotal2MTR_IN: TFloatField;
    QBrowse2QTY1: TFloatField;
    QBrowse2QTY2: TFloatField;
    PanelMain: TPanel;
    Label1: TLabel;
    DBText3: TDBText;
    PanelHeader: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    PanelMaster: TPanel;
    Label6: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Bevel1: TBevel;
    LBarcode: TDBText;
    Label8: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    DBText1: TDBText;
    Label12: TLabel;
    wwDBDateTimePicker1: TwwDBDateTimePicker;
    DBMemo1: TDBMemo;
    wwDBEdit1: TwwDBEdit;
    wwDBComboBox1: TwwDBComboBox;
    wwDBComboBox2: TwwDBComboBox;
    wwDBLookupComboDlg1: TwwDBLookupComboDlg;
    wwDBComboBox3: TwwDBComboBox;
    PanelDetail: TPanel;
    wwDBGrid1: TwwDBGrid;
    LookKonstruksi: TwwDBLookupComboDlg;
    PanelFooter1: TPanel;
    BtnPrintInput: TBitBtn;
    BtnClose1: TBitBtn;
    wwDBNavigatorInput: TwwDBNavigator;
    wwDBNavigatorInputCancel: TwwNavButton;
    wwDBNavigatorInputButton1: TwwNavButton;
    wwDBNavigatorInputButton2: TwwNavButton;
    PanelBand: TPanel;
    Label14: TLabel;
    Label15: TLabel;
    DBText4: TDBText;
    DBText2: TDBText;
    Label16: TLabel;
    Label17: TLabel;
    wwDBSpinLine1: TwwDBSpinEdit;
    EditCari: TEdit;
    cbPost: TwwCheckBox;
    TabSheet2: TTabSheet;
    LabelBanner: TLabel;
    PanelFilter: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    BtnFind: TSpeedButton;
    BtnOk2: TSpeedButton;
    vTglAwal: TwwDBDateTimePicker;
    vTglAkhir: TwwDBDateTimePicker;
    BtnOk: TBitBtn;
    wwDBSpinLine2: TwwDBSpinEdit;
    PanelBrowse: TPanel;
    wwDBGrid2: TwwDBGrid;
    PanelFooter2: TPanel;
    wwDBNavigator1: TwwDBNavigator;
    wwDBNavigator1PriorPage: TwwNavButton;
    wwDBNavigator1NextPage: TwwNavButton;
    wwDBNavigator1SaveBookmark: TwwNavButton;
    wwDBNavigator1RestoreBookmark: TwwNavButton;
    BtnClose2: TBitBtn;
    BtnExport: TBitBtn;
    BtnPrintBrowse: TBitBtn;
    BtnDesign2: TBitBtn;
    TabSheet3: TTabSheet;
    wwDBRichEdit1: TwwDBRichEdit;
    QBrowse2SATUAN: TStringField;
    LTotal: TLabel;
    LTMtr: TLabel;
    LTPtg: TLabel;
    QTotalMeter: TOracleDataSet;
    QTotalMeterGULUNG_IN: TFloatField;
    QTotalMeterMTR_IN: TFloatField;
    QTotalPotong: TOracleDataSet;
    QTotalPotongGULUNG_IN: TFloatField;
    QTotalPotongMTR_IN: TFloatField;
    Label13: TLabel;
    ppLabel1: TppLabel;
    ppLabel21: TppLabel;
    ppLabel28: TppLabel;
    ppLabel34: TppLabel;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    ppDBText20: TppDBText;
    ppLabel13: TppLabel;
    QBrowse2NO_RESEP: TStringField;
    QKonstruksiRASIO: TFloatField;
    QDetail2RASIO: TFloatField;
    QKonstruksiSATUAN: TStringField;
    QDetail2NAMA_KONSTRUKSI: TStringField;
    QDetail2SUB_KELOMPOK: TStringField;
    QBrowse2ISPOST: TStringField;
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
    procedure LookKonstruksiEnter(Sender: TObject);
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
    procedure QMaster2AfterPost(DataSet: TDataSet);
    procedure QMaster2BeforeDelete(DataSet: TDataSet);
    procedure QMaster2BeforeEdit(DataSet: TDataSet);
    procedure QMaster2BeforeInsert(DataSet: TDataSet);
    procedure QMaster2BeforePost(DataSet: TDataSet);
    procedure QMaster2NewRecord(DataSet: TDataSet);
    procedure QDetail2BeforeDelete(DataSet: TDataSet);
    procedure QDetail2BeforeEdit(DataSet: TDataSet);
    procedure QDetail2BeforeInsert(DataSet: TDataSet);
    procedure QDetail2BeforePost(DataSet: TDataSet);
    procedure QDetail2CalcFields(DataSet: TDataSet);
    procedure QDetail2NewRecord(DataSet: TDataSet);
    procedure QBrowse2AfterScroll(DataSet: TDataSet);
    procedure wwDBLookupComboDlg2CloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure wwDBGrid2UpdateFooter(Sender: TObject);
  private
    { Private declarations }
    vshift, vgrup, vorder, SelectedFont, vkode, vjns_brg, vjns_lokasi : String;
  public
    { Public declarations }
    procedure totalSatuan;
  end;

var
  OrderJetDyeingFrm: TOrderJetDyeingFrm;

procedure ShowForm(pNamaMenu:String; pkode : String; pjudul : string; pjns_brg : String; pjns_lokasi : String);

implementation

uses DM, Pembelian;

{$R *.dfm}
procedure TOrderJetDyeingFrm.totalSatuan;
begin
  QTotalMeter.Close;
  QTotalPotong.Close;
  QTotalMeter.SetVariable('pawal',vTglAwal.Date);
  QTotalPotong.SetVariable('pawal',vTglAwal.Date);
  QTotalMeter.SetVariable('pakhir',vTglAkhir.Date);
  QTotalPotong.SetVariable('pakhir',vTglAkhir.Date);
  QTotalMeter.Open;
  QTotalPotong.Open;
  LTMtr.Caption:=FormatFloat('#,##0.######;(#,##0.######); ',QTotalMeterMTR_IN.AsFloat);
  LTPtg.Caption:=FormatFloat('#,##0.######;(#,##0.######); ',QTotalPotongMTR_IN.AsFloat);
end;

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
    OrderJetDyeingFrm:=TOrderJetDyeingFrm.Create(Application);
    OrderJetDyeingFrm.PageControl1.ActivePageIndex:=1;
    if not DMFrm.cHakInput then
    begin
       OrderJetDyeingFrm.QMaster2.ReadOnly:=True;
       OrderJetDyeingFrm.QDetail2.ReadOnly:=True;
    end;
    mychar:=pjudul;
    Delete(mychar,Pos('&',mychar),1);
    pjudul:=mychar;
    OrderJetDyeingFrm.Caption:=UpperCase(pjudul);
    OrderJetDyeingFrm.vkode:=pkode;
    OrderJetDyeingFrm.vjns_lokasi:=pjns_lokasi;
    OrderJetDyeingFrm.vjns_brg:=pjns_brg;
    OrderJetDyeingFrm.QTransaksi.Open;

    OrderJetDyeingFrm.Caption:=UpperCase(pjudul);
//    OrderJetDyeingFrm.PanelHeader.Caption:=OrderJetDyeingFrm.QTransaksiKD_TRANSAKSI.AsString+'. '+OrderJetDyeingFrm.QTransaksiNAMA_TRANSAKSI.AsString;
    OrderJetDyeingFrm.wwDBGrid1.IniAttributes.FileName:=DMFrm.sAppPath+Application.Title+'2.ini';
    OrderJetDyeingFrm.wwDBGrid1.IniAttributes.SectionName:=OrderJetDyeingFrm.Caption+'1';
    OrderJetDyeingFrm.wwDBGrid1.IniAttributes.Enabled:=True;
    OrderJetDyeingFrm.wwDBGrid1.LoadFromIniFile;
    OrderJetDyeingFrm.wwDBGrid2.IniAttributes.FileName:=DMFrm.sAppPath+Application.Title+'2.ini';
    OrderJetDyeingFrm.wwDBGrid2.IniAttributes.SectionName:=OrderJetDyeingFrm.Caption+'2';
    OrderJetDyeingFrm.wwDBGrid2.IniAttributes.Enabled:=True;
    OrderJetDyeingFrm.wwDBGrid2.LoadFromIniFile;
    DMFrm.ProcReadIni(Application.Title,OrderJetDyeingFrm.Caption+'1',OrderJetDyeingFrm.wwDBGrid1);
    DMFrm.ProcReadIni(Application.Title,OrderJetDyeingFrm.Caption+'2',OrderJetDyeingFrm.wwDBGrid2);
    OrderJetDyeingFrm.wwDBSpinLine1.Value:=OrderJetDyeingFrm.wwDBGrid1.RowHeightPercent;
    OrderJetDyeingFrm.wwDBSpinLine2.Value:=OrderJetDyeingFrm.wwDBGrid2.RowHeightPercent;

  end;

  OrderJetDyeingFrm.Show;
end;

procedure TOrderJetDyeingFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   DMFrm.ProcWtiteIni(Application.Title,Caption+'1',wwDBGrid1);
   DMFrm.ProcWtiteIni(Application.Title,Caption+'2',wwDBGrid2);
   Action:=caFree;
   OrderJetDyeingFrm:=Nil;
end;

procedure TOrderJetDyeingFrm.FormCreate(Sender: TObject);
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

procedure TOrderJetDyeingFrm.BtnExportClick(Sender: TObject);
begin
  if QBrowse2.Active then
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

procedure TOrderJetDyeingFrm.BtnOkClick(Sender: TObject);
var
  i : word;
  vpertama : boolean;
  vjam : string;
  vjam1,vjam2 : integer;
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
ShowMessage('Silahkan buka browse setelah pukul 11:59');
Qbrowse2.Close;
abort;
end
else

  if vTglAwal.Date>vTglAkhir.DateTime then
    ShowMessage('Tgl. Akhir harus lebih besar dari Tgl. Awal !')
    else
    begin
    {  if QBrowse.QBEMode then
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
      LabelBanner.Caption:='Data : '+FormatFloat('#,#',QBrowse.RecordCount)+' Records'; }

      if QBrowse2.QBEMode then
      QBrowse2.QBEMode:=False;
      QBrowse2.DisableControls;
      QBrowse2.Close;
      QBrowse2.DeclareVariable('pawal',otDate);
      QBrowse2.DeclareVariable('pakhir',otDate);
      QBrowse2.DeclareVariable('kd_transaksi',otString);
      QBrowse2.DeclareVariable('porder',otSubst);
      QBrowse2.SQL.Text:='select * from '+cUserTabel+'v'+Name+
        ' where tanggal>=:pawal and tanggal<=:pakhir and kd_transaksi=:kd_transaksi :porder';
  		QBrowse2.SetVariable('pawal',Trunc(vTglAwal.Date));
  		QBrowse2.SetVariable('pakhir',Trunc(vTglAkhir.Date)+1-1/86400);
			QBrowse2.SetVariable('kd_transaksi',vkode);
  		QBrowse2.SetVariable('porder',vorder);
//      ShowMessage(QBrowse2.SQL.Text);
      QBrowse2.Open;
      QBrowse2.EnableControls;
      LabelBanner.Caption:='Data : '+FormatFloat('#,#',QBrowse2.RecordCount)+' Records';
      totalSatuan;

      {
      QTotal.Close;
      QTotal.SetVariable('pawal',vTglAwal.Date);
      QTotal.SetVariable('pakhir',vTglAkhir.Date);
      QTotal.Open;
      wwDBGrid2.ColumnByName('QTY1').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QTotalGULUNG_IN.AsFloat);
      wwDBGrid2.ColumnByName('QTY2').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QTotalMTR_IN.AsFloat);
      }
    end;
end;

procedure TOrderJetDyeingFrm.wwDBGrid2TitleButtonClick(Sender: TObject;
  AFieldName: String);
begin
  if QBrowse2.FieldByName(AFieldName).FieldKind=fkData then
  begin
    vorder:='order by '+AFieldName;
    BtnOkClick(Nil);
  end
  else
    ShowMessage('Maaf, tidak bisa Urut menurut kolom '+AFieldName+' !');
end;

procedure TOrderJetDyeingFrm.QBrowseAfterScroll(DataSet: TDataSet);
begin
  LabelBanner.Caption:='Record ke '+IntToStr(QBrowse2.RecNo)+' dari '+FormatFloat('#,#',QBrowse2.RecordCount)+' Records';
end;

procedure TOrderJetDyeingFrm.BtnClose1Click(Sender: TObject);
begin
  Close;
end;

procedure TOrderJetDyeingFrm.BtnClose2Click(Sender: TObject);
begin
  Close;
end;

procedure TOrderJetDyeingFrm.vTglAwalChange(Sender: TObject);
begin
  vTglAkhir.DateTime:=EndOfTheMonth(vTglAwal.Date);
end;

procedure TOrderJetDyeingFrm.wwDBSpinLine2Change(Sender: TObject);
begin
    wwDBGrid2.RowHeightPercent:=Round(wwDBSpinLine2.Value);
end;

procedure TOrderJetDyeingFrm.BtnFindClick(Sender: TObject);
begin
{	wwDBGrid2.ColumnByName('NILAI').FooterValue:='';;
  if not QBrowse.QBEMode then
  begin
    wwDBGrid2.Options:=wwDBGrid2.Options-[dgRowSelect,dgAlwaysShowSelection];
    QBrowse.QBEMode:=TRUE;
  end
  else
    QBrowse.ClearQBE;}

  wwDBGrid2.ColumnByName('NILAI').FooterValue:='';;
  if not QBrowse2.QBEMode then
  begin
    wwDBGrid2.Options:=wwDBGrid2.Options-[dgRowSelect,dgAlwaysShowSelection];
    QBrowse2.QBEMode:=TRUE;
  end
  else
    QBrowse2.ClearQBE;
end;

procedure TOrderJetDyeingFrm.BtnOk2Click(Sender: TObject);
begin
{  if QBrowse.QBEMode then
  begin
    QBrowse.ExecuteQBE;
    wwDBGrid2.Options:=wwDBGrid2.Options+[dgRowSelect,dgAlwaysShowSelection];
  end; }

  if QBrowse2.QBEMode then
  begin
    QBrowse2.ExecuteQBE;
    wwDBGrid2.Options:=wwDBGrid2.Options+[dgRowSelect,dgAlwaysShowSelection];
  end;
end;

procedure TOrderJetDyeingFrm.ppHeaderBand1BeforePrint(Sender: TObject);
begin
  ppNo.AsInteger:=0;
end;

procedure TOrderJetDyeingFrm.BtnPrintBrowseClick(Sender: TObject);
begin
  if vTglAwal.Date>vTglAkhir.DateTime then
    ShowMessage('Tgl. Akhir harus lebih besar dari Tgl. Awal !')
    else
    begin
      ppReportBrowse.Print;
    end;
end;

procedure TOrderJetDyeingFrm.Button1Click(Sender: TObject);
begin
  ppDesigner1.ShowModal;
end;

procedure TOrderJetDyeingFrm.BtnDesign2Click(Sender: TObject);
begin
  ppDesigner1.ShowModal;
end;

procedure TOrderJetDyeingFrm.ppTitleBand1BeforePrint(Sender: TObject);
begin
  ppNamaLaporan.Caption:=Caption;
  ppNo2.AsInteger:=0;
  ppPeriode.Caption:=vTglAwal.Text+' s/d '+vTglAkhir.Text;
  DMFrm.QTime.Close;
  DMFrm.QTime.Open;
  ppUserCetak.Caption:=DMFrm.QTimeVUSER_CETAK.AsString;
end;

procedure TOrderJetDyeingFrm.wwDBSpinLine1Change(Sender: TObject);
begin
    wwDBGrid1.RowHeightPercent:=Round(wwDBSpinLine1.Value);
end;

procedure TOrderJetDyeingFrm.EditCariKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=13 then
  begin

  IF copy(editCari.text,1,3) = '810' then
    begin
    wwDBSpinLine1.SetFocus;
    QMaster2.Close;
    QMaster2.SetVariable('myparam1','0');
    QMaster2.SetVariable('myparam2',EditCari.Text);
    QMaster2.Open;
    QDetail2.Close;
    QDetail2.Open;
    EditCari.SetFocus;
    end
  else
    ShowMessage('Kode transaksi tidak sesuai');
  end;

end;

procedure TOrderJetDyeingFrm.TabSheet1Show(Sender: TObject);
begin
  QMaster2.Close;
  QMaster2.SetVariable('myparam1',QBrowse2IBUKTI.AsInteger);
  QMaster2.SetVariable('myparam2',QBrowse2NO_NOTA.AsString);
  QMaster2.Open;
  QDetail2.Close;
  QDetail2.Open;
  wwDBGrid1UpdateFooter(nil);
  EditCari.Text:=QBrowse2IBUKTI.AsString;
  if (QBrowse2NO_NOTA.AsString<>'') then EditCari.Text:=QBrowse2NO_NOTA.AsString;
end;

procedure TOrderJetDyeingFrm.TabSheet1Exit(Sender: TObject);
begin
  EditCari.Text:='';
end;

procedure TOrderJetDyeingFrm.ppDetailBand2BeforePrint(Sender: TObject);
begin
  ppNo2.AsInteger:=ppNo2.AsInteger+1;
end;

procedure TOrderJetDyeingFrm.ppFooterBand2BeforePrint(Sender: TObject);
begin
//  ppHalInput.Visible:=ppReportInput.PageNo>1;
  DMFrm.QTime.Close;
  DMFrm.QTime.Open;
  ppUserCetak2.Caption:=DMFrm.QTimeVUSER_CETAK.AsString;
end;

procedure TOrderJetDyeingFrm.BtnPrintInputClick(Sender: TObject);
begin
  ppReportInput.Print;
end;

procedure TOrderJetDyeingFrm.QMasterBeforePost(DataSet: TDataSet);
begin
{  vshift:=QMasterSHIFT.AsString;
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
 }
end;

procedure TOrderJetDyeingFrm.wwDBGrid1Enter(Sender: TObject);
begin
{  if QMaster.State<>dsBrowse then
  try
    QMaster.Post;
  except
    ShowMessage('Maaf, ada masalah di pengisian MASTER !');
  end; }
  if QMaster2.State<>dsBrowse then
  try
    QMaster2.Post;
  except
    ShowMessage('Maaf, ada masalah di pengisian MASTER !');
  end;
end;

procedure TOrderJetDyeingFrm.wwDBGrid2DblClick(Sender: TObject);
begin
  TabSheet1.Show;
end;

procedure TOrderJetDyeingFrm.Label5Click(Sender: TObject);
begin
  if DMFrm.FontDialog1.Execute then
  begin
    wwDBGrid2.Font.Name:=DMFrm.FontDialog1.Font.Name;
    wwDBGrid2.Font.Size:=DMFrm.FontDialog1.Font.Size;
    wwDBGrid2.Font.Color:=DMFrm.FontDialog1.Font.Color;
    wwDBGrid2.Font.Style:=DMFrm.FontDialog1.Font.Style;
  end;
end;

procedure TOrderJetDyeingFrm.LookKonstruksiEnter(Sender: TObject);
begin
  (sender as TwwDBLookupComboDlg).LookupTable.Open;
end;

procedure TOrderJetDyeingFrm.QMasterBeforeDelete(DataSet: TDataSet);
begin
{  if QMasterISPOST.AsString='1' then
  begin
     ShowMessage('Maaf, sudah di-POST !, tidak bisa diubah...');
     Abort;
  end;}
end;

procedure TOrderJetDyeingFrm.QMasterNewRecord(DataSet: TDataSet);
begin
{  if vshift<>'' then QMasterSHIFT.AsString:=vshift;
  if vgrup<>'' then QMasterGRUP.AsString:=vgrup;
  QMasterKD_TRANSAKSI.AsString:=vkode;
  QMasterTGL.AsDateTime:=DMFrm.QTimeJAM.AsDateTime;
  QMasterISPOST.AsString:='0';
  QMasterTTD1.AsString:=QTransaksiTTD1.AsString;
  QMasterTTD2.AsString:=QTransaksiTTD2.AsString;
  QMasterTTD3.AsString:=QTransaksiTTD3.AsString;
  QMasterTTD4.AsString:=QTransaksiTTD4.AsString;
  QMasterSTATUS.AsString:='KOREKSI';
  QMasterNO_RESEP.AsString:='KOREKSI1';
  QItem.Close;
  QMasterQTY_RESEP.AsFloat:=0;
  wwDBEdit1.SetFocus;}
end;

procedure TOrderJetDyeingFrm.QTransaksiBeforeOpen(DataSet: TDataSet);
begin
  QTransaksi.DeclareVariable('kd_transaksi', otString);
  QTransaksi.SQL.Text:='select a.* from '+cUserTabel+'vtransaksi a where a.kd_transaksi=:kd_transaksi';
  QTransaksi.SetVariable('kd_transaksi',vkode);
end;

procedure TOrderJetDyeingFrm.ppPageStyle1BeforePrint(Sender: TObject);
begin
  ppNo2.AsInteger:=0;
end;

procedure TOrderJetDyeingFrm.Label14Click(Sender: TObject);
begin
  if DMFrm.FontDialog1.Execute then
  begin
    wwDBGrid1.Font.Name:=DMFrm.FontDialog1.Font.Name;
    wwDBGrid1.Font.Size:=DMFrm.FontDialog1.Font.Size;
    wwDBGrid1.Font.Color:=DMFrm.FontDialog1.Font.Color;
    wwDBGrid1.Font.Style:=DMFrm.FontDialog1.Font.Style;
  end;

end;

procedure TOrderJetDyeingFrm.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if ((not QMaster2.IsEmpty) and (QMaster2ISPOST.AsString='0')) or (QMaster2.State<>dsBrowse) then
  begin
    if MessageDlg('Data belum di POSTING/ Disimpan akan terhapus !',mtWarning,[mbOK, mbCancel],0)=mrOK then
    begin
     QMaster2.Delete;
     CanClose:=True;
    end
     else
     CanClose:=FALSE;
  end;

end;

procedure TOrderJetDyeingFrm.QMasterAfterPost(DataSet: TDataSet);
begin
{  PageControl1.Pages[1].TabVisible:=QMaster.IsEmpty or (QMasterISPOST.AsString='1');
  PageControl1.Pages[2].TabVisible:=QMaster.IsEmpty or (QMasterISPOST.AsString='1');}
end;

procedure TOrderJetDyeingFrm.QMasterBeforeInsert(DataSet: TDataSet);
begin
  if DataSet['ISPOST']='0' then
  begin
    if MessageDlg('Data belum di-POSTING, batalkan ?', mtWarning, [mbYes, mbNo],0)=mrYes then
      DataSet.Delete
      else
        Abort;
  end;

end;

procedure TOrderJetDyeingFrm.ppGroupHeaderBand1BeforePrint(Sender: TObject);
begin
  ppNo.AsInteger:=ppNo.AsInteger+1;
end;

procedure TOrderJetDyeingFrm.QItemBeforeQuery(Sender: TOracleDataSet);
begin
{    QItem.SetVariable('pkd_lokasi',vjns_lokasi);
    QItem.SetVariable('psysdate',Trunc(QMasterTGL.AsDateTime));}
end;

procedure TOrderJetDyeingFrm.LookItemCloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin
{  if modified then
  begin
    QDetailKETERANGAN.AsString:=QItemNAMA_ITEM.AsString;
    QDetailQTY1.AsFloat:=QItemQTY.AsFloat;
    QDetailQTY6.AsFloat:=QItemQTY2.AsFloat;
    QDetailKD_SUB_LOKASI.AsString:=QItemKD_SUB_LOKASI.AsString;
  end; }
  if modified then
  begin
    QDetail2SUB_KELOMPOK.AsString:=QKonstruksiSUB_KELOMPOK.AsString;
//    QDetail2QTY1.AsFloat:=QItemQTY.AsFloat;
//   QDetail2QTY6.AsFloat:=QItemQTY2.AsFloat;
//    QDetail2KD_SUB_LOKASI.AsString:=QItemKD_SUB_LOKASI.AsString;
  end;
end;

procedure TOrderJetDyeingFrm.QDetailNewRecord(DataSet: TDataSet);
begin
{  QDetailQTY1.AsFloat:=0;
  QDetailQTY2.AsFloat:=0;
  QDetailQTY4.AsFloat:=0;
  QDetailQTY5.AsFloat:=0;
  QDetailQTY6.AsFloat:=0;
//  QDetailQTY7.AsFloat:=0;
  QDetailIBUKTI.AsInteger:=QMasterIBUKTI.AsInteger;}
end;

procedure TOrderJetDyeingFrm.QDetailBeforePost(DataSet: TDataSet);
begin
//  QDetailQTY2.AsFloat:=QDetailQTY1.AsFloat+QDetailQTY4.AsFloat;
//  QDetailQTY7.AsFloat:=QDetailQTY6.AsFloat+QDetailQTY5.AsFloat;
{  if QDetailKD_ITEM.AsString='' then
     begin
        ShowMessage('BARANG harus diisi !');
        Abort;
     end
     else
  if QDetailKD_SUB_LOKASI.AsString='' then
     begin
        ShowMessage('LOKASI harus diisi !');
        Abort;
     end;}
end;

procedure TOrderJetDyeingFrm.QDetailCalcFields(DataSet: TDataSet);
begin
{  QDetailSELISIH.AsFloat:=QDetailQTY1.AsFloat-
    QDetailQTY2.AsFloat; }
end;

procedure TOrderJetDyeingFrm.TabSheet3Show(Sender: TObject);
begin
  QSOP.DeclareVariable('kd_transaksi',otString);
  QSOP.SQL.Text:='select sinopsis from '+cUserTabel+'vsop where kd_transaksi=:kd_transaksi';
  QSOP.SetVariable('kd_transaksi',vkode);
  QSOP.Open;
end;

procedure TOrderJetDyeingFrm.wwDBGrid1UpdateFooter(Sender: TObject);
begin
{  QTotal.Close;
  QTotal.SetVariable('ibukti',QMasterIBUKTI.AsInteger);
  QTotal.Open;
  wwDBGrid1.ColumnByName('QTY5').FooterValue:=FormatFloat('0,0;(0,0);-',QTotalPCS.AsFloat);
  wwDBGrid1.ColumnByName('QTY4').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QTotalKG.AsFloat); }
  QTotal2.Close;
  QTotal2.SetVariable('ibukti',QMaster2IBUKTI.AsInteger);
  QTotal2.Open;
  wwDBGrid1.ColumnByName('QTY1').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QTotal2GULUNG_IN.AsFloat);
  wwDBGrid1.ColumnByName('QTY2').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QTotal2MTR_IN.AsFloat);
end;

procedure TOrderJetDyeingFrm.QMaster2AfterPost(DataSet: TDataSet);
begin
  PageControl1.Pages[1].TabVisible:=QMaster2.IsEmpty or (QMaster2ISPOST.AsString='1');
  PageControl1.Pages[2].TabVisible:=QMaster2.IsEmpty or (QMaster2ISPOST.AsString='1');
end;

procedure TOrderJetDyeingFrm.QMaster2BeforeDelete(DataSet: TDataSet);
begin
  if QMaster2ISPOST.AsString='1' then
  begin
     ShowMessage('Maaf, sudah di-POST !, tidak bisa diubah...');
     Abort;
  end;
end;

procedure TOrderJetDyeingFrm.QMaster2BeforeEdit(DataSet: TDataSet);
begin
  if QMaster2ISPOST.AsString='1' then
  begin
     ShowMessage('Maaf, sudah di-POST !, tidak bisa diubah...');
     Abort;
  end;
end;

procedure TOrderJetDyeingFrm.QMaster2BeforeInsert(DataSet: TDataSet);
begin
  if DataSet['ISPOST']='0' then
  begin
    if MessageDlg('Data belum di-POSTING, batalkan ?', mtWarning, [mbYes, mbNo],0)=mrYes then
      DataSet.Delete
      else
        Abort;
  end;

end;

procedure TOrderJetDyeingFrm.QMaster2BeforePost(DataSet: TDataSet);
begin
  vshift:=QMaster2SHIFT.AsString;
  vgrup:=QMaster2GRUP.AsString;
  if QMaster2TGL.AsString='' then
     begin
        ShowMessage('TANGGAL harus diisi !');
        Abort;
     end
     else
  if QMaster2KD_DIV.AsString='' then
     begin
        ShowMessage('DIVISI harus diisi !');
        Abort;
     end
     else
  if QMaster2SHIFT.AsString='' then
     begin
        ShowMessage('SHIFT harus diisi !');
        Abort;
     end
     else
  if QMaster2GRUP.AsString='' then
     begin
        ShowMessage('GRUP harus diisi !');
        Abort;
     end;

   if (Dataset.State=dsEdit) and (QMaster2NO_NOTA.AsString='') and (QMaster2ISPOST.AsString='1') then
   begin
     DMFrm.FNoUrut2.Close;
     DMFrm.FNoUrut2.SetVariable(0,vkode);
     DMFrm.FNoUrut2.SetVariable(1,'-');
     DMFrm.FNoUrut2.SetVariable(2,Trunc(QMaster2TGL.AsDateTime));
     DMFrm.FNoUrut2.Open;
     QMaster2NO_NOTA.AsString:=DMFrm.FNoUrut2FNO_URUT2.AsString;
   end;

end;

procedure TOrderJetDyeingFrm.QMaster2NewRecord(DataSet: TDataSet);
begin
  if vshift<>'' then QMaster2SHIFT.AsString:=vshift;
  if vgrup<>'' then QMaster2GRUP.AsString:=vgrup;
  QMaster2KD_TRANSAKSI.AsString:=vkode;
  QMaster2TGL.AsDateTime:=DMFrm.QTimeJAM.AsDateTime;
  QMaster2ISPOST.AsString:='0';
  QMaster2TTD1.AsString:=QTransaksiTTD1.AsString;
  QMaster2TTD2.AsString:=QTransaksiTTD2.AsString;
  QMaster2TTD3.AsString:=QTransaksiTTD3.AsString;
  QMaster2TTD4.AsString:=QTransaksiTTD4.AsString;
  QMaster2STATUS.AsString:='IN';
//  QMaster2NO_RESEP.AsString:='KOREKSI1';
  QKonstruksi.Close;
//  QItem.Close;
//  QMaster2QTY_RESEP.AsFloat:=0;
  wwDBEdit1.SetFocus;
end;

procedure TOrderJetDyeingFrm.QDetail2BeforeDelete(DataSet: TDataSet);
begin
  if QMaster2ISPOST.AsString='1' then
  begin
     ShowMessage('Maaf, sudah di-POST !, tidak bisa diubah...');
     Abort;
  end;
end;

procedure TOrderJetDyeingFrm.QDetail2BeforeEdit(DataSet: TDataSet);
begin
  if QMaster2ISPOST.AsString='1' then
  begin
     ShowMessage('Maaf, sudah di-POST !, tidak bisa diubah...');
     Abort;
  end;
end;

//end;

procedure TOrderJetDyeingFrm.QDetail2BeforeInsert(DataSet: TDataSet);
begin
  if QMaster2ISPOST.AsString='1' then
  begin
     ShowMessage('Maaf, sudah di-POST !, tidak bisa diubah...');
     Abort;
  end;
end;

//end;

procedure TOrderJetDyeingFrm.QDetail2BeforePost(DataSet: TDataSet);
begin
//  QDetail2QTY2.AsFloat:=QDetail2QTY1.AsFloat+QDetail2QTY4.AsFloat;
//  QDetail2QTY7.AsFloat:=QDetail2QTY6.AsFloat+QDetail2QTY5.AsFloat;
  if QDetail2KD_KONSTRUKSI.AsString='' then
     begin
        ShowMessage('KONSTRUKSI harus diisi !');
        Abort;
     end
     else
  if QDetail2SATUAN.AsString='' then
     begin
        ShowMessage('SATUAN harus diisi !');
        Abort;
     end;
end;

procedure TOrderJetDyeingFrm.QDetail2CalcFields(DataSet: TDataSet);
begin
{  QDetail2SELISIH.AsFloat:=QDetail2QTY1.AsFloat-
    QDetail2QTY2.AsFloat; }
end;

procedure TOrderJetDyeingFrm.QDetail2NewRecord(DataSet: TDataSet);
begin
  QDetail2QTY1.AsFloat:=0;
  QDetail2QTY2.AsFloat:=0;
  QDetail2QTY4.AsFloat:=0;
  QDetail2QTY5.AsFloat:=0;
  QDetail2QTY6.AsFloat:=0;
  QDetail2QTY7.AsFloat:=0;
  QDetail2IBUKTI.AsInteger:=QMaster2IBUKTI.AsInteger;
end;

procedure TOrderJetDyeingFrm.QBrowse2AfterScroll(DataSet: TDataSet);
begin
  LabelBanner.Caption:='Record ke '+IntToStr(QBrowse2.RecNo)+' dari '+FormatFloat('#,#',QBrowse2.RecordCount)+' Records';
end;

procedure TOrderJetDyeingFrm.wwDBLookupComboDlg2CloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
 QDetail2NAMA_KONSTRUKSI.AsString:=QKonstruksiSUB_KELOMPOK.AsString;
 QDetail2SUB_KELOMPOK.AsString:=QKonstruksiSUB_KELOMPOK.AsString;
 QDetail2RASIO.AsFloat:=QKonstruksiRASIO.AsFloat;
 QDetail2SATUAN.AsString:=QKonstruksiSATUAN.AsString;
end;

procedure TOrderJetDyeingFrm.wwDBGrid2UpdateFooter(Sender: TObject);
begin
{
  QTotal.Close;
  QTotal.SetVariable('pawal',vTglAwal.Date);
  QTotal.SetVariable('pakhir',vTglAkhir.Date);
  QTotal.Open;
  wwDBGrid2.ColumnByName('QTY1').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QTotalGULUNG_IN.AsFloat);
  wwDBGrid2.ColumnByName('QTY2').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QTotalMTR_IN.AsFloat);
}
end;

end.
