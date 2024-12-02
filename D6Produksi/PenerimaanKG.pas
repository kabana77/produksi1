unit PenerimaanKG;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  DateUtils, Mask, wwdbedit, Wwdbspin, DB, Wwdatsrc, OracleData, Dialogs,
  Oracle, Buttons, wwSpeedButton, wwDBNavigator, wwclearpanel, Grids,
  Wwdbigrd, Wwdbgrid, StdCtrls, wwdbdatetimepicker, ComCtrls, ExtCtrls,
  ppViewr, ppDB, ppDBPipe, ppComm, ppRelatv, ppProd, ppClass, ppReport,
  ppVar, ppCtrls, ppBands, ppPrnabl, ppCache, ppEndUsr, ppModule,
  daDataModule, DBCtrls, wwdblook, Wwdbdlg, Wwdotdot, Wwdbcomb, ppBarCod,
  wwcheckbox, ppStrtch, ppMemo, raCodMod, ppParameter, wwDialog, wwidlg;

type
  TPenerimaanKGFrm = class(TForm)
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
    QMasterSTATUS: TStringField;
    QDetailQTY6: TFloatField;
    QBrowseQTY2: TFloatField;
    QItemRASIO: TFloatField;
    QDetailRASIO: TFloatField;
    QDetailKD_SATUAN: TStringField;
    QItemKD_SATUAN: TStringField;
    QDetailKD_WARNA: TStringField;
    QDetailNO_BATCH: TStringField;
    LookLokasi: TwwDBLookupComboDlg;
    LookWarna: TwwDBLookupComboDlg;
    QDetailWARNA: TStringField;
    CBPreview: TCheckBox;
    RadioGroup1: TRadioGroup;
    QHasilCelup: TOracleDataSet;
    Button1: TButton;
    QHasilCelupKD_ITEM: TStringField;
    QHasilCelupKETERANGAN: TStringField;
    QHasilCelupRASIO: TFloatField;
    QHasilCelupKD_WARNA: TStringField;
    QHasilCelupNO_BATCH: TStringField;
    QHasilCelupQTY4: TFloatField;
    QHasilCelupQTY5: TFloatField;
    QHasilCelupKD_SATUAN: TStringField;
    QBrowseIBUKTI: TFloatField;
    QMasterTGL_INSERT: TDateTimeField;
    QMasterOPR_INSERT: TStringField;
    Label16: TLabel;
    DBText4: TDBText;
    DBText2: TDBText;
    Label17: TLabel;
    cbTransaksi: TwwDBComboBox;
    LTransaksi: TLabel;
    QMasterNO_RESEP: TStringField;
    QBrowseJNS_LAINNYA: TStringField;
    QBrowseKD_WARNA: TStringField;
    QBrowseWARNA: TStringField;
    QTotal: TOracleDataSet;
    QTotalQTY1: TFloatField;
    QTotalQTY6: TFloatField;
    ppParameterList1: TppParameterList;
    ppTitleBand2: TppTitleBand;
    ppDBText15: TppDBText;
    ppDBText50: TppDBText;
    ppVariable2: TppVariable;
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
    ppHeaderBand2: TppHeaderBand;
    ppLabel26: TppLabel;
    ppLabel22: TppLabel;
    ppLabel1: TppLabel;
    ppLabel13: TppLabel;
    ppLabel24: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppDBText18: TppDBText;
    ppDBText22: TppDBText;
    ppNo2: TppVariable;
    ppDBText30: TppDBText;
    ppDBMemo1: TppDBMemo;
    ppDBText11: TppDBText;
    ppDBText20: TppDBText;
    ppFooterBand2: TppFooterBand;
    ppDBText41: TppDBText;
    ppUserCetak2: TppLabel;
    ppSummaryBand2: TppSummaryBand;
    ppLabel29: TppLabel;
    ppDBMemo2: TppDBMemo;
    ppDBText32: TppDBText;
    ppDBText33: TppDBText;
    ppDBText34: TppDBText;
    ppDBText35: TppDBText;
    ppDBText36: TppDBText;
    ppDBText37: TppDBText;
    ppDBText38: TppDBText;
    ppDBText39: TppDBText;
    ppDBText40: TppDBText;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppLabel19: TppLabel;
    ppPageStyle1: TppPageStyle;
    raCodeModule1: TraCodeModule;
    QBrowseNO_BATCH: TStringField;
    QDel: TOracleQuery;
    QHasilCelupQTY2: TFloatField;
    QHasilCelupQTY7: TFloatField;
    QBrowseISPOST: TStringField;
    QBrowseNO_BUKTI: TStringField;
    ppDBQTransaksippField19: TppField;
    ppLabel21: TppLabel;
    QTransaksiDOC_ISO: TStringField;
    ppDBText16: TppDBText;
    QBrowseRASIO: TFloatField;
    Label18: TLabel;
    QItemKD_SUB_KEL: TStringField;
    QDetailKD_SUB_KEL: TStringField;
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
    procedure FormShow(Sender: TObject);
    procedure LookWarnaEnter(Sender: TObject);
    procedure QHasilCelupBeforeOpen(DataSet: TDataSet);
    procedure Button1Click(Sender: TObject);
    procedure wwDBGrid1UpdateFooter(Sender: TObject);
    procedure QMasterApplyRecord(Sender: TOracleDataSet; Action: Char;
      var Applied: Boolean; var NewRowId: String);
    procedure vTglAkhirChange(Sender: TObject);
    procedure wwDBGrid1CalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure cbTransaksiCloseUp(Sender: TwwDBComboBox; Select: Boolean);
    procedure QDetailAfterDelete(DataSet: TDataSet);
    procedure QDetailQTY6Change(Sender: TField);
    procedure QDetailApplyRecord(Sender: TOracleDataSet; Action: Char;
      var Applied: Boolean; var NewRowId: String);
  private
    { Private declarations }
    vorder, SelectedFont, vkode, vjns_brg, vjns_lokasi : String;
    vqty1, vqty2 : Real;
  public
    { Public declarations }

  end;

var
  PenerimaanKGFrm: TPenerimaanKGFrm;

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
    PenerimaanKGFrm:=TPenerimaanKGFrm.Create(Application);
    PenerimaanKGFrm.PageControl1.ActivePageIndex:=1;
    if not DMFrm.cHakInput then
    begin
       PenerimaanKGFrm.QMaster.ReadOnly:=True;
       PenerimaanKGFrm.QDetail.ReadOnly:=True;
    end;
    mychar:=pjudul;
    Delete(mychar,Pos('&',mychar),1);
    pjudul:=mychar;
    PenerimaanKGFrm.Caption:=UpperCase(pkode+pjudul);
    PenerimaanKGFrm.vkode:=pkode;
    PenerimaanKGFrm.vjns_lokasi:=pjns_lokasi;
    PenerimaanKGFrm.vjns_brg:=pjns_brg;
    PenerimaanKGFrm.QTransaksi.Open;

//    PenerimaanKGFrm.PanelHeader.Caption:=PenerimaanKGFrm.QTransaksiKD_TRANSAKSI.AsString+'. '+PenerimaanKGFrm.QTransaksiNAMA_TRANSAKSI.AsString;

if PenerimaanKGFrm.QTransaksiKD_TRANSAKSI.AsString='884' then
begin
  PenerimaanKGFrm.PanelHeader.Caption:='884. RETUR DARI MITRA';
end
else
begin
    PenerimaanKGFrm.PanelHeader.Caption:=PenerimaanKGFrm.QTransaksiKD_TRANSAKSI.AsString+'. '+PenerimaanKGFrm.QTransaksiNAMA_TRANSAKSI.AsString;
end;

    PenerimaanKGFrm.wwDBGrid1.IniAttributes.FileName:=DMFrm.sAppPath+Application.Title+'2.ini';
    PenerimaanKGFrm.wwDBGrid1.IniAttributes.SectionName:=PenerimaanKGFrm.Caption+'1';
    PenerimaanKGFrm.wwDBGrid1.IniAttributes.Enabled:=True;
    PenerimaanKGFrm.wwDBGrid1.LoadFromIniFile;
    PenerimaanKGFrm.wwDBGrid2.IniAttributes.FileName:=DMFrm.sAppPath+Application.Title+'2.ini';
    PenerimaanKGFrm.wwDBGrid2.IniAttributes.SectionName:=PenerimaanKGFrm.Caption+'2';
    PenerimaanKGFrm.wwDBGrid2.IniAttributes.Enabled:=True;
    PenerimaanKGFrm.wwDBGrid2.LoadFromIniFile;
    DMFrm.ProcReadIni(Application.Title,PenerimaanKGFrm.Caption+'1',PenerimaanKGFrm.wwDBGrid1);
    DMFrm.ProcReadIni(Application.Title,PenerimaanKGFrm.Caption+'2',PenerimaanKGFrm.wwDBGrid2);
    PenerimaanKGFrm.wwDBSpinLine1.Value:=PenerimaanKGFrm.wwDBGrid1.RowHeightPercent;
    PenerimaanKGFrm.wwDBSpinLine2.Value:=PenerimaanKGFrm.wwDBGrid2.RowHeightPercent;

  end;

  PenerimaanKGFrm.Show;
end;

procedure TPenerimaanKGFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   DMFrm.ProcWtiteIni(Application.Title,Caption+'1',wwDBGrid1);
   DMFrm.ProcWtiteIni(Application.Title,Caption+'2',wwDBGrid2);
   Action:=caFree;
   PenerimaanKGFrm:=Nil;
end;

procedure TPenerimaanKGFrm.FormCreate(Sender: TObject);
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

procedure TPenerimaanKGFrm.BtnExportClick(Sender: TObject);
begin
  if QBrowse.Active then
  begin
     DMFrm.SaveDialog1.DefaultExt:='XLK';
     DMFrm.SaveDialog1.Filter:='Excel files (*.XLK)|*.XLK';
     DMFrm.SaveDialog1.FileName:=PanelHeader.Caption+' '+ vTglAwal.Text+' sd '+vTglAkhir.Text+'.xlK';
     wwDBGrid2.ExportOptions.TitleName:='TRANSAKSI MASUK LAINNYA GW';
       if DMFrm.SaveDialog1.Execute then
       begin
         try
         wwDBGrid2.ExportOptions.FileName:=DMFrm.SaveDialog1.FileName;
         wwDBGrid2.ExportOptions.Save;
         if MessageDlg('Ekspor Data Sukses, Lihat Hasil ?',mtWarning,[mbYes, mbNo],0)=mrYes then
         begin
          DMFrm.LMDStarter1.Command:=DMFrm.SaveDialog1.FileName;
          DMFrm.LMDStarter1.Execute;
         end;
         //ShowMessage('Simpan Sukses !');
         except
         ShowMessage('Simpan Gagal !');
         end;
       end;
  end
  else
    ShowMessage('Tabel belum di-OPEN !');
end;

procedure TPenerimaanKGFrm.BtnOkClick(Sender: TObject);
var
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
   //   QBrowse.SQL.Text:='select * from '+cUserTabel+'v'+Name+'_2017'+


if QTransaksiKD_TRANSAKSI.AsString='884' then
begin
      QBrowse.SQL.Text:='select * from '+cUserTabel+'v'+Name+'4'+
        ' where tanggal>=:pawal and tanggal<=:pakhir and kd_transaksi=:kd_transaksi and JNS_LAINNYA=''DARI MITRA'' :porder';
  PanelHeader.Caption:='884. RETUR DARI MITRA';
end
else
begin
      QBrowse.SQL.Text:='select * from '+cUserTabel+'v'+Name+'4'+
        ' where tanggal>=:pawal and tanggal<=:pakhir and kd_transaksi=:kd_transaksi :porder';
end;

  		QBrowse.SetVariable('pawal',Trunc(vTglAwal.Date));
  		QBrowse.SetVariable('pakhir',Trunc(vTglAkhir.Date)+1-1/86400);
			QBrowse.SetVariable('kd_transaksi',vkode);
  		QBrowse.SetVariable('porder',vorder);

 //     ShowMessage(QBrowse.SQL.Text);

      QBrowse.Open;
      vqty1:=0;
      vqty2:=0;
      while not QBrowse.Eof do
      begin
          vqty1:=vqty1+QBrowseQTY1.AsFloat;
          vqty2:=vqty2+QBrowseQTY2.AsFloat;
          QBrowse.Next;
      end;
      QBrowse.EnableControls;
{      wwDBGrid2.ColumnByName('QTY1').FooterValue:=FormatFloat('#,0.00;-#,0.00;-',vqty1);
      wwDBGrid2.ColumnByName('QTY2').FooterValue:=FormatFloat('#,0;-#,0;-',vqty2);
}
      wwDBGrid2.ColumnByName('QTY1').FooterValue:=FormatFloat('#,##0.##;(#,##0.##);-',vqty1);
      wwDBGrid2.ColumnByName('QTY2').FooterValue:=FormatFloat('#,##0.##;(#,##0.##);-',vqty2);

      LabelBanner.Caption:='Data : '+FormatFloat('#,#',QBrowse.RecordCount)+' Records';
    end;
end;
end;

procedure TPenerimaanKGFrm.wwDBGrid2TitleButtonClick(Sender: TObject;
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

procedure TPenerimaanKGFrm.QBrowseAfterScroll(DataSet: TDataSet);
begin
  LabelBanner.Caption:='Record ke '+IntToStr(QBrowse.RecNo)+' dari '+FormatFloat('#,#',QBrowse.RecordCount)+' Records';
end;

procedure TPenerimaanKGFrm.BtnClose1Click(Sender: TObject);
begin
  Close;
end;

procedure TPenerimaanKGFrm.BtnClose2Click(Sender: TObject);
begin
  Close;
end;

procedure TPenerimaanKGFrm.vTglAwalChange(Sender: TObject);
begin
  //vTglAkhir.DateTime:=EndOfTheMonth(vTglAwal.Date);
  vTglAkhir.Date:=(VTglAwal.Date);
end;

procedure TPenerimaanKGFrm.wwDBSpinLine2Change(Sender: TObject);
begin
    wwDBGrid2.RowHeightPercent:=Round(wwDBSpinLine2.Value);
end;

procedure TPenerimaanKGFrm.BtnFindClick(Sender: TObject);
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

procedure TPenerimaanKGFrm.BtnOk2Click(Sender: TObject);
begin
  if QBrowse.QBEMode then
  begin
    QBrowse.ExecuteQBE;
    wwDBGrid2.Options:=wwDBGrid2.Options+[dgRowSelect,dgAlwaysShowSelection];
    QBrowse.DisableControls;
      vqty1:=0;
      vqty2:=0;
      while not QBrowse.Eof do
      begin
          vqty1:=vqty1+QBrowseQTY1.AsFloat;
          vqty2:=vqty2+QBrowseQTY2.AsFloat;
          QBrowse.Next;
      end;
      QBrowse.EnableControls;
{      wwDBGrid2.ColumnByName('QTY1').FooterValue:=FormatFloat('#,0.00;-#,0.00;-',vqty1);
      wwDBGrid2.ColumnByName('QTY2').FooterValue:=FormatFloat('#,0;-#,0;-',vqty2);
 }
      wwDBGrid2.ColumnByName('QTY1').FooterValue:=FormatFloat('#,##0.##;(#,##0.##);-',vqty1);
      wwDBGrid2.ColumnByName('QTY2').FooterValue:=FormatFloat('#,##0.##;(#,##0.##);-',vqty2);

      LabelBanner.Caption:='Data : '+FormatFloat('#,#',QBrowse.RecordCount)+' Records';
  end;

end;

procedure TPenerimaanKGFrm.ppHeaderBand1BeforePrint(Sender: TObject);
begin
  ppNo.AsInteger:=0;
end;

procedure TPenerimaanKGFrm.BtnPrintBrowseClick(Sender: TObject);
begin
  if vTglAwal.Date>vTglAkhir.DateTime then
    ShowMessage('Tgl. Akhir harus lebih besar dari Tgl. Awal !')
    else
    begin
      ppReportBrowse.Print;
    end;
end;

procedure TPenerimaanKGFrm.BtnDesign2Click(Sender: TObject);
begin
  ppDesigner1.ShowModal;
end;

procedure TPenerimaanKGFrm.ppTitleBand1BeforePrint(Sender: TObject);
begin
  ppNamaLaporan.Caption:=Caption;
  ppNo2.AsInteger:=0;
  ppPeriode.Caption:=vTglAwal.Text+' s/d '+vTglAkhir.Text;
  DMFrm.QTime.Close;
  DMFrm.QTime.Open;
  ppUserCetak.Caption:=DMFrm.QTimeVUSER_CETAK.AsString;
end;

procedure TPenerimaanKGFrm.wwDBSpinLine1Change(Sender: TObject);
begin
    wwDBGrid1.RowHeightPercent:=Round(wwDBSpinLine1.Value);
end;

procedure TPenerimaanKGFrm.EditCariKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=13 then
  begin

  IF copy(editCari.text,1,3) = QmasterKd_transaksi.asstring then {jumhan}
    begin
    wwDBSpinLine1.SetFocus;
//    TabSheet1Show(Nil);
{azmi}
  QMaster.Close;
  QMaster.SequenceField.Sequence:=cUserTabel+'no_register';
  QMaster.SequenceField.Field:='IBUKTI';

  QMaster.SQL.Text:='select a.*, a.rowid from '+cUserTabel+'bukti4 a'+
    ' where a.no_nota=:pno_nota';
  QMaster.DeclareVariable('pno_nota',otString);
  QMaster.SetVariable('pno_nota',EditCari.Text);
  QMaster.Open;

  QDetail.Close;
  QDetail.SequenceField.Sequence:=cUserTabel+'no_register';
  QDetail.SequenceField.Field:='IBUKTI_DETAIL';
  QDetail.Master:=QMaster;
  QDetail.DeclareVariable('IBUKTI',otInteger);
  QDetail.MasterFields:='IBUKTI';
{  QDetail.SQL.Text:='select a.*, b.kd_sub_kel, a.rowid from '+cUserTabel+'bukti_detail4 a '+cUserTabel+'vitemall b'+
    ' where a.ibukti=:ibukti and a.kd_item=b.kd_item(+)';}
  QDetail.SQL.Text:='select a.*, a.rowid from '+cUserTabel+'bukti_detail4 a'+
    ' where a.ibukti=:ibukti';
  QDetail.SetVariable('ibukti',QMasterIBUKTI.AsInteger);
// ShowMessage(QDetail.SQL.Text);
  QDetail.Open;
  wwDBGrid1UpdateFooter(nil);

if QTransaksiKD_TRANSAKSI.AsString='883' then
begin
  cbTransaksi.Visible:=QTransaksiKD_TRANSAKSI.AsString='883';
  LTransaksi.Visible:=QTransaksiKD_TRANSAKSI.AsString='883';

    cbtransaksi.Items.Clear;
    cbtransaksi.Items.Add('DARI PERSIAPAN');
    cbtransaksi.Items.Add('DARI TENUN');
end

else

if QTransaksiKD_TRANSAKSI.AsString='884' then
begin
  cbTransaksi.Visible:=QTransaksiKD_TRANSAKSI.AsString='884';
  LTransaksi.Visible:=QTransaksiKD_TRANSAKSI.AsString='884';

  PanelHeader.Caption:='884. RETUR DARI MITRA';

    cbtransaksi.Items.Clear;
//    cbtransaksi.Items.Add('KOREKSI');
//    cbtransaksi.Items.Add('PROSES ULANG');
//    cbtransaksi.Items.Add('KELUAR PROSES');
    cbtransaksi.Items.Add('DARI MITRA');
//    cbtransaksi.Items.Add('LAINNYA');
end;

  {azmi}
    EditCari.SetFocus;
    end
    else
      ShowMessage('Kode transaksi tidak sesuai');
  end;
end;

procedure TPenerimaanKGFrm.TabSheet1Show(Sender: TObject);
begin
  if (EditCari.Text='') and (QBrowseIBUKTI.AsString<>'') then
//      EditCari.Text:=QBrowseIBUKTI.AsString
      EditCari.Text:=QBrowseNO_NOTA.AsString
      else  EditCari.Text:='0';

  QMaster.Close;
  QMaster.SequenceField.Sequence:=cUserTabel+'no_register';
  QMaster.SequenceField.Field:='IBUKTI';

  QMaster.SQL.Text:='select a.*, a.rowid from '+cUserTabel+'bukti4 a'+
    ' where a.no_nota=:pno_nota';
//    ' where a.ibukti=:pno_nota';
//  QMaster.DeclareVariable('pno_nota',otInteger);
  QMaster.DeclareVariable('pno_nota',otString);
  QMaster.SetVariable('pno_nota',EditCari.Text);
//  QMaster.SetVariable('pno_nota',StrToInt(EditCari.Text));
//  ShowMessage(QMaster.SQL.Text);
  QMaster.Open;

  QDetail.Close;
  QDetail.SequenceField.Sequence:=cUserTabel+'no_register';
  QDetail.SequenceField.Field:='IBUKTI_DETAIL';
  QDetail.Master:=QMaster;
  QDetail.DeclareVariable('IBUKTI',otInteger);
  QDetail.MasterFields:='IBUKTI';
{  QDetail.SQL.Text:='select a.*, b.kd_sub_kel, a.rowid from '+cUserTabel+'bukti_detail4 a, '+cUserTabel+'VITEMALL b'+
    ' where a.ibukti=:ibukti and a.kd_item=b.kd_item(+)';
//    SHOWMESSAGE(QDetail.SQL.Text);
}
  QDetail.SQL.Text:='select a.*, a.rowid from '+cUserTabel+'bukti_detail4 a'+
    ' where a.ibukti=:ibukti';

  QDetail.SetVariable('ibukti',QMasterIBUKTI.AsInteger);
// ShowMessage(QDetail.SQL.Text);
  QDetail.Open;
  wwDBGrid1UpdateFooter(nil);

  cbTransaksi.Visible:=QTransaksiKD_TRANSAKSI.AsString='883';
  LTransaksi.Visible:=QTransaksiKD_TRANSAKSI.AsString='883';

  cbTransaksi.Visible:=QTransaksiKD_TRANSAKSI.AsString='884';
  LTransaksi.Visible:=QTransaksiKD_TRANSAKSI.AsString='884';

if QTransaksiKD_TRANSAKSI.AsString='883' then
begin
  cbTransaksi.Visible:=QTransaksiKD_TRANSAKSI.AsString='883';
  LTransaksi.Visible:=QTransaksiKD_TRANSAKSI.AsString='883';

    cbtransaksi.Items.Clear;
    cbtransaksi.Items.Add('DARI PERSIAPAN');
    cbtransaksi.Items.Add('DARI TENUN');
end

else

if QTransaksiKD_TRANSAKSI.AsString='884' then
begin
  cbTransaksi.Visible:=QTransaksiKD_TRANSAKSI.AsString='884';
  LTransaksi.Visible:=QTransaksiKD_TRANSAKSI.AsString='884';


  PanelHeader.Caption:='884. RETUR DARI MITRA';

    cbtransaksi.Items.Clear;
//    cbtransaksi.Items.Add('KOREKSI');
//    cbtransaksi.Items.Add('PROSES ULANG');
//    cbtransaksi.Items.Add('KELUAR PROSES');
    cbtransaksi.Items.Add('DARI MITRA');
//    cbtransaksi.Items.Add('LAINNYA');
end;

end;

procedure TPenerimaanKGFrm.TabSheet1Exit(Sender: TObject);
begin
  EditCari.Text:='';
end;

procedure TPenerimaanKGFrm.ppDetailBand2BeforePrint(Sender: TObject);
begin
  ppNo2.AsInteger:=ppNo2.AsInteger+1;
end;

procedure TPenerimaanKGFrm.ppFooterBand2BeforePrint(Sender: TObject);
begin
//  ppHalInput.Visible:=ppReportInput.PageNo>1;
  DMFrm.QTime.Close;
  DMFrm.QTime.Open;
  ppUserCetak2.Caption:=DMFrm.QTimeVUSER_CETAK.AsString;
end;

procedure TPenerimaanKGFrm.BtnPrintInputClick(Sender: TObject);
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

procedure TPenerimaanKGFrm.QMasterBeforePost(DataSet: TDataSet);
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

   if (Dataset.State=dsEdit) and (QMasterNO_NOTA.AsString='') { and (QMasterISPOST.AsString='1') } then
   begin
     DMFrm.FNoUrut.Close;
     DMFrm.FNoUrut.SetVariable(0,vkode);
     DMFrm.FNoUrut.SetVariable(1,'-');
     DMFrm.FNoUrut.SetVariable(2,Trunc(QMasterTGL.AsDateTime));
     DMFrm.FNoUrut.Open;
     QMasterNO_NOTA.AsString:=DMFrm.FNoUrutFNO_URUT.AsString;
   end;

end;

procedure TPenerimaanKGFrm.wwDBGrid1Enter(Sender: TObject);
begin
  if QMaster.State<>dsBrowse then
  try
    QMaster.Post;
  except
    ShowMessage('Maaf, ada masalah di pengisian MASTER !');
  end;
end;

procedure TPenerimaanKGFrm.wwDBGrid2DblClick(Sender: TObject);
begin
  TabSheet1.Show;
end;

procedure TPenerimaanKGFrm.Label5Click(Sender: TObject);
begin
  if DMFrm.FontDialog1.Execute then
  begin
    wwDBGrid2.Font.Name:=DMFrm.FontDialog1.Font.Name;
    wwDBGrid2.Font.Size:=DMFrm.FontDialog1.Font.Size;
    wwDBGrid2.Font.Color:=DMFrm.FontDialog1.Font.Color;
    wwDBGrid2.Font.Style:=DMFrm.FontDialog1.Font.Style;
  end;
end;

procedure TPenerimaanKGFrm.LookItemEnter(Sender: TObject);
begin
  (sender as TwwDBLookupComboDlg).LookupTable.Open;
end;

procedure TPenerimaanKGFrm.QMasterBeforeDelete(DataSet: TDataSet);
begin
  if QMasterISPOST.AsString='1' then
  begin
     ShowMessage('Maaf, sudah di-POST !, tidak bisa diubah...');
     Abort;
  end;
end;

procedure TPenerimaanKGFrm.QMasterNewRecord(DataSet: TDataSet);
begin
  QMasterKD_TRANSAKSI.AsString:=vkode;
  QMasterTGL.AsDateTime:=DMFrm.QTimeJAM.AsDateTime;
  QMasterISPOST.AsString:='0';
  QMasterTTD1.AsString:=QTransaksiTTD1.AsString;
  QMasterTTD2.AsString:=QTransaksiTTD2.AsString;
  QMasterTTD3.AsString:=QTransaksiTTD3.AsString;
  QMasterTTD4.AsString:=QTransaksiTTD4.AsString;

  wwDBDateTimePicker1.Enabled:=True;
  cbTransaksi.Enabled:=True;

  QMasterSTATUS.AsString:='IN';
  QMasterSHIFT.AsString:='0';
  QMasterGRUP.AsString:='E';
  QMasterKD_DIV.AsString:='220';
  wwDBEdit1.SetFocus;

 cbTransaksi.Visible:=QTransaksiKD_TRANSAKSI.AsString='883';
  LTransaksi.Visible:=QTransaksiKD_TRANSAKSI.AsString='883';

  cbTransaksi.Visible:=QTransaksiKD_TRANSAKSI.AsString='884';
  LTransaksi.Visible:=QTransaksiKD_TRANSAKSI.AsString='884';

if QTransaksiKD_TRANSAKSI.AsString='883' then
begin
  cbTransaksi.Visible:=QTransaksiKD_TRANSAKSI.AsString='883';
  LTransaksi.Visible:=QTransaksiKD_TRANSAKSI.AsString='883';

    cbtransaksi.Items.Clear;
    cbtransaksi.Items.Add('DARI PERSIAPAN');
    cbtransaksi.Items.Add('DARI TENUN');

   QMasterNO_RESEP.AsString:='DARI PERSIAPAN';
end

else

if QTransaksiKD_TRANSAKSI.AsString='884' then
begin
  cbTransaksi.Visible:=QTransaksiKD_TRANSAKSI.AsString='884';
  LTransaksi.Visible:=QTransaksiKD_TRANSAKSI.AsString='884';

  PanelHeader.Caption:='884. RETUR DARI MITRA';

    cbtransaksi.Items.Clear;
//    cbtransaksi.Items.Add('KOREKSI');
//    cbtransaksi.Items.Add('PROSES ULANG');
//    cbtransaksi.Items.Add('KELUAR PROSES');
    cbtransaksi.Items.Add('DARI MITRA');
//    cbtransaksi.Items.Add('LAINNYA');

   QMasterNO_RESEP.AsString:='DARI MITRA';
end;


////MAA 11-01-2020 {TRANSAKSI KOREKSI BISA ENTRY QTY PCS & KG
if (QTransaksiKD_TRANSAKSI.AsString='884') and (cbtransaksi.Text='KOREKSI') then
   wwDBGrid1.ColumnByName('QTY6').ReadOnly:=False
else
   wwDBGrid1.ColumnByName('QTY6').ReadOnly:=True;

wwDBGrid1.Refresh;
wwDBGrid1.RefreshDisplay;
end;

procedure TPenerimaanKGFrm.QTransaksiBeforeOpen(DataSet: TDataSet);
begin
  QTransaksi.DeclareVariable('kd_transaksi', otString);
  QTransaksi.SQL.Text:='select a.* from '+cUserTabel+'vtransaksi a where a.kd_transaksi=:kd_transaksi';
  QTransaksi.SetVariable('kd_transaksi',vkode);
end;

procedure TPenerimaanKGFrm.Label14Click(Sender: TObject);
begin
  if DMFrm.FontDialog1.Execute then
  begin
    wwDBGrid1.Font.Name:=DMFrm.FontDialog1.Font.Name;
    wwDBGrid1.Font.Size:=DMFrm.FontDialog1.Font.Size;
    wwDBGrid1.Font.Color:=DMFrm.FontDialog1.Font.Color;
    wwDBGrid1.Font.Style:=DMFrm.FontDialog1.Font.Style;
  end;

end;

procedure TPenerimaanKGFrm.FormCloseQuery(Sender: TObject;
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

procedure TPenerimaanKGFrm.QMasterAfterPost(DataSet: TDataSet);
begin
  PageControl1.Pages[1].TabVisible:=QMaster.IsEmpty or (QMasterISPOST.AsString='1');
  PageControl1.Pages[2].TabVisible:=QMaster.IsEmpty or (QMasterISPOST.AsString='1');
end;

procedure TPenerimaanKGFrm.QMasterBeforeInsert(DataSet: TDataSet);
begin
  if DataSet['ISPOST']='0' then
  begin
    if MessageDlg('Data belum di-POSTING, batalkan ?', mtWarning, [mbYes, mbNo],0)=mrYes then
      DataSet.Delete
      else
        Abort;
  end;

end;

procedure TPenerimaanKGFrm.ppGroupHeaderBand1BeforePrint(Sender: TObject);
begin
  ppNo.AsInteger:=ppNo.AsInteger+1;
end;

procedure TPenerimaanKGFrm.QLokasiBeforeOpen(DataSet: TDataSet);
begin
  QLokasi.DeclareVariable('vjns_lokasi',otString);
  QLokasi.SQL.Text:='select * from '+cUserTabel+'sub_lokasi where jns_lokasi=''LOKASI'' and kd_lokasi=:vjns_lokasi';
  QLokasi.SetVariable('vjns_lokasi',vjns_lokasi);
end;

procedure TPenerimaanKGFrm.LookLokasiEnter(Sender: TObject);
begin
  QLokasi.Open;
end;

procedure TPenerimaanKGFrm.QItemBeforeQuery(Sender: TOracleDataSet);
begin
  if vjns_brg<>'' then
  begin
    QItem.DeclareVariable('vjns_brg',otString);
  	QItem.SQL.Text:='select a.* from '+cUserTabel+'vitem_30_kel'+' a where a.kd_jns_item=:vjns_brg ORDER BY a.KD_SUB_KEL, a.NAMA_ITEM';
    QItem.SetVariable('vjns_brg',vjns_brg);
  end;
end;

procedure TPenerimaanKGFrm.LookItemCloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin
  if modified then
  begin
//    QDetailKD_SUB_KEL.AsString:=QItemKD_SUB_KEL.AsString; //MAA 10-01-2020
    QDetailKETERANGAN.AsString:=QItemNAMA_ITEM.AsString;
    QDetailRASIO.AsFloat:=QItemRASIO.AsFloat;
    QDetailKD_SATUAN.AsString:=QItemKD_SATUAN.AsString;
  end;

end;

procedure TPenerimaanKGFrm.QDetailNewRecord(DataSet: TDataSet);
begin

  wwDBDateTimePicker1.Enabled:=False;
  cbTransaksi.Enabled:=False;

   QDetailIBUKTI.AsInteger:=QMasterIBUKTI.AsInteger;
   QDetailNO_BATCH.AsString:='-';    //MAA 10-01-2020 //HSL MEETING
   QDetailKD_SUB_LOKASI.AsString:=vjns_lokasi+'-00000';
end;

procedure TPenerimaanKGFrm.QDetailBeforePost(DataSet: TDataSet);
begin
if (QTransaksiKD_TRANSAKSI.AsString='884') and (cbtransaksi.Text='KOREKSI') then     //MAA 13-01-2020
begin
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
end

////
ELSE
BEGIN
////

  if QDetailKD_ITEM.AsString='' then
     begin
        ShowMessage('BARANG harus diisi !');
        Abort;
     end
     else
  if QDetailQTY6.Asfloat=0 then
     begin
       if QDetailRASIO.AsFloat>0 then
         QDetailQTY6.AsFloat:=QDetailQTY1.AsFloat / QDetailRASIO.AsFloat
       else
          ShowMessage('CEK RASIO MASTER !');
     end
     else
  if QDetailKD_SUB_LOKASI.AsString='' then
     begin
        ShowMessage('LOKASI harus diisi !');
        Abort;
     end;

////
END;
////
end;

procedure TPenerimaanKGFrm.FormShow(Sender: TObject);
begin


//  PanelHeader.Caption:=QTransaksiKD_TRANSAKSI.AsString+'. '+UpperCase(Caption);
{
if QTransaksiKD_TRANSAKSI.AsString='883' then
begin
  cbTransaksi.Visible:=QTransaksiKD_TRANSAKSI.AsString='883';
  LTransaksi.Visible:=QTransaksiKD_TRANSAKSI.AsString='883';

    cbtransaksi.Items.Clear;
    cbtransaksi.Items.Add('DARI PERSIAPAN');
    cbtransaksi.Items.Add('DARI TENUN');
end

else

if QTransaksiKD_TRANSAKSI.AsString='884' then
begin
  cbTransaksi.Visible:=QTransaksiKD_TRANSAKSI.AsString='884';
  LTransaksi.Visible:=QTransaksiKD_TRANSAKSI.AsString='884';

    cbtransaksi.Items.Clear;
    cbtransaksi.Items.Add('KOREKSI');
    cbtransaksi.Items.Add('PROSES ULANG');
    cbtransaksi.Items.Add('KELUAR PROSES');
    cbtransaksi.Items.Add('DARI MITRA');
    cbtransaksi.Items.Add('LAINNYA');
end;
         }
////////////



end;

procedure TPenerimaanKGFrm.LookWarnaEnter(Sender: TObject);
begin
  DMFrm.QWarna.Open;
end;

procedure TPenerimaanKGFrm.QHasilCelupBeforeOpen(
  DataSet: TDataSet);
begin
  QHasilCelup.SetVariable('NO_NOTA',wwDBEdit1.Text);
end;

procedure TPenerimaanKGFrm.Button1Click(Sender: TObject);
begin
  if not (QMaster.State=dsBrowse) then QMaster.Post;
  if QMaster.State=dsBrowse then
  begin
      QHasilCelup.Close;
      QHasilCelup.Open;
      QDel.Close;
      QDel.SetVariable('pno_ibukti',QMasterIBUKTI.AsInteger);
      QDel.Execute;
      QDetail.Close;
      QDetail.Open;
      if QHasilCelup.IsEmpty then
        ShowMessage('No Nota tidak ada !')
        else
        begin
            DMFrm.QSatuan.Open;
            wwDBGrid1.OnUpdateFooter:=nil;
            while not QHasilCelup.Eof do
            begin
              QDetail.Insert;
              QDetailKD_ITEM.AsString:='30.'+copy(QHasilCelupKD_ITEM.AsString,4,10);
    					QDetailKETERANGAN.AsString:=QHasilCelupKETERANGAN.AsString;
    					QDetailRASIO.AsFloat:=QHasilCelupRASIO.AsFloat;
    					QDetailKD_SATUAN.AsString:=QHasilCelupKD_SATUAN.AsString;
              QDetailNO_BATCH.AsString:=QHasilCelupNO_BATCH.AsString; //'-'; //MAA 10-01-2020 //HSL MEETING '-'} //

 {azmi}
            if copy(trim(wwDBEdit1.Text),1,3)='804' then
             begin
              QDetailQTY1.AsFloat:=QHasilCelupQTY4.AsFloat;
              QDetailQTY6.AsFloat:=QHasilCelupQTY5.AsFloat;
             end
            else
             begin
              QDetailQTY1.AsFloat:=QHasilCelupQTY2.AsFloat;
              QDetailQTY6.AsFloat:=QHasilCelupQTY7.AsFloat;
             end;
 {azmi}
              QDetailKD_WARNA.AsString:=QHasilCelupKD_WARNA.AsString;
              QDetailKD_SUB_LOKASI.AsString:='30-00000';
              QDetail.Post;
              QHasilCelup.Next;
            end;
            wwDBGrid1.OnUpdateFooter:=wwDBGrid1UpdateFooter;
            wwDBGrid1UpdateFooter(nil);
        end;
  end;

end;

procedure TPenerimaanKGFrm.wwDBGrid1UpdateFooter(Sender: TObject);
begin
  QTotal.Close;
  QTotal.SetVariable('ibukti', QMasterIBUKTI.AsInteger);
  QTotal.Open;
  wwDBGrid1.ColumnByName('QTY1').FooterValue:=FormatFloat('#,0.00;-#,0.00;-',QTotalQTY1.AsFloat);
  wwDBGrid1.ColumnByName('QTY6').FooterValue:=FormatFloat('#,0.00;-#,0.00;-',QTotalQTY6.AsFloat);
end;

procedure TPenerimaanKGFrm.QMasterApplyRecord(
  Sender: TOracleDataSet; Action: Char; var Applied: Boolean;
  var NewRowId: String);
begin
{     DMFrm.FNoUrut.Close;
     DMFrm.FNoUrut.SetVariable(0,vkode);
     DMFrm.FNoUrut.SetVariable(1,'-');
     DMFrm.FNoUrut.SetVariable(2,Trunc(QMasterTGL.AsDateTime));
     DMFrm.FNoUrut.Open;
     QMasterNO_NOTA.AsString:=DMFrm.FNoUrutFNO_URUT.AsString;}
end;

procedure TPenerimaanKGFrm.vTglAkhirChange(Sender: TObject);
begin
  if VTglAwal.Date>vTglAkhir.Date then
  begin
      ShowMessage('Tanggal Akhir harus LEBIH BESAR dari Tanggal Awal !');
      vTglAkhir.Date:=VTglAwal.Date;
  end;
end;
procedure TPenerimaanKGFrm.wwDBGrid1CalcCellColors(Sender: TObject;
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

procedure TPenerimaanKGFrm.cbTransaksiCloseUp(
  Sender: TwwDBComboBox; Select: Boolean);
begin
////MAA 11-01-2020 {TRANSAKSI KOREKSI BISA ENTRY QTY PCS & KG
if (QTransaksiKD_TRANSAKSI.AsString='884') and (cbtransaksi.Text='KOREKSI') then
   wwDBGrid1.ColumnByName('QTY6').ReadOnly:=False
else
   wwDBGrid1.ColumnByName('QTY6').ReadOnly:=True;

wwDBGrid1.Refresh;
wwDBGrid1.RefreshDisplay;

end;

procedure TPenerimaanKGFrm.QDetailAfterDelete(DataSet: TDataSet);
begin

  wwDBDateTimePicker1.Enabled:=False;
  cbTransaksi.Enabled:=False;

end;

procedure TPenerimaanKGFrm.QDetailQTY6Change(Sender: TField);
begin
//MAA 13-01-2020 PCS = KG/RASIO
  //     QDetailQTY6.AsFloat:=QDetailQTY1.AsFloat / QDetailRASIO.AsFloat;


end;

procedure TPenerimaanKGFrm.QDetailApplyRecord(Sender: TOracleDataSet;
  Action: Char; var Applied: Boolean; var NewRowId: String);
begin
 if QDetailRASIO.AsFloat>0 then
         QDetailQTY6.AsFloat:=QDetailQTY1.AsFloat / QDetailRASIO.AsFloat
       else
          ShowMessage('CEK RASIO MASTER !');  
end;

end.
