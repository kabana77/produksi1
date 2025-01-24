unit PermintaanKoreksiCelup;

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
  TPermintaanKoreksiCelupFrm = class(TForm)
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
    QBrowseQTY2: TFloatField;
    QBrowseLOKASI2: TStringField;
    ppDBText20: TppDBText;
    QBrowseSELISIH: TFloatField;
    ppDBText22: TppDBText;
    ppLabel30: TppLabel;
    ppDBText29: TppDBText;
    ppLabel31: TppLabel;
    QMasterSTATUS: TStringField;
    QSOP: TOracleDataSet;
    dsQSOP: TwwDataSource;
    wwDBRichEdit1: TwwDBRichEdit;
    QDetailQTY6: TFloatField;
    QDetailQTY7: TFloatField;
    QDetailKD_WARNA: TStringField;
    QDetailNO_BATCH: TStringField;
    QItem: TOracleDataSet;
    QItemNAMA_ITEM: TStringField;
    QItemKD_ITEM: TStringField;
    QItemKD_WARNA: TStringField;
    QItemNO_BATCH: TStringField;
    QItemQTY: TFloatField;
    QItemQTY2: TFloatField;
    QItemSATUAN: TStringField;
    QItemKD_SUB_LOKASI: TStringField;
    QItemRASIO: TFloatField;
    QDetailRASIO: TFloatField;
    QDetailQTY4: TFloatField;
    QDetailQTY5: TFloatField;
    QMasterNO_RESEP: TStringField;
    Label12: TLabel;
    wwDBComboBox3: TwwDBComboBox;
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
    QTotal: TOracleDataSet;
    QTotalPCS: TFloatField;
    QTotalKG: TFloatField;
    QItemWARNA: TStringField;
    QDetailTGL_INSERT: TDateTimeField;
    QDetailOPR_INSERT: TStringField;
    QDetailWARNA: TStringField;
    QDetailNO_BUKTI: TStringField;
    QDetailQTY3: TFloatField;
    QDetailQTY8: TFloatField;
    QDetailQTY9: TFloatField;
    QDetailQTY10: TFloatField;
    QDetailKD_SATUAN: TStringField;
    QDetailKD_DIV: TStringField;
    QDetailNO_MESIN: TStringField;
    QBrowseWARNA: TStringField;
    ppLabel34: TppLabel;
    ppDBMemo4: TppDBMemo;
    ppDBQDetailppField19: TppField;
    Label20: TLabel;
    QNewItems: TOracleDataSet;
    QNewItemsNAMA_ITEM: TStringField;
    QNewItemsKD_ITEM: TStringField;
    QNewItemsRASIO: TFloatField;
    QNewItemsKD_WARNA: TStringField;
    QNewItemsWARNA: TStringField;
    QNewItemsNO_BATCH: TStringField;
    QNewItemsQTY: TFloatField;
    QNewItemsQTY2: TFloatField;
    QNewItemsSATUAN: TStringField;
    QNewItemsKD_SUB_LOKASI: TStringField;
    LookWarna: TwwDBLookupComboDlg;
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
    procedure LookItemCloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure QDetailNewRecord(DataSet: TDataSet);
    procedure QDetailBeforePost(DataSet: TDataSet);
    procedure TabSheet3Show(Sender: TObject);
    procedure QItemBeforeOpen(DataSet: TDataSet);
    procedure wwDBGrid1UpdateFooter(Sender: TObject);
    procedure wwDBDateTimePicker1Change(Sender: TObject);
    procedure wwDBGrid1CalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure LookItemUserButton1Click(Sender: TObject;
      LookupTable: TDataSet);
    procedure QMasterAfterDelete(DataSet: TDataSet);
    procedure LookWarnaEnter(Sender: TObject);
    procedure LookWarnaCloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
  private
    { Private declarations }
    vshift, vgrup, vorder, SelectedFont, vkode, vjns_brg, vjns_lokasi : String;
  public
    { Public declarations }

  end;

var
  PermintaanKoreksiCelupFrm: TPermintaanKoreksiCelupFrm;

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
    PermintaanKoreksiCelupFrm:=TPermintaanKoreksiCelupFrm.Create(Application);
    PermintaanKoreksiCelupFrm.PageControl1.ActivePageIndex:=1;
    if not DMFrm.cHakInput then
    begin
       PermintaanKoreksiCelupFrm.QMaster.ReadOnly:=True;
       PermintaanKoreksiCelupFrm.QDetail.ReadOnly:=True;
    end;
    mychar:=pjudul;
    Delete(mychar,Pos('&',mychar),1);
    pjudul:=mychar;
    PermintaanKoreksiCelupFrm.Caption:=UpperCase(pjudul);
    PermintaanKoreksiCelupFrm.vkode:=pkode;
    PermintaanKoreksiCelupFrm.vjns_lokasi:=pjns_lokasi;
    PermintaanKoreksiCelupFrm.vjns_brg:=pjns_brg;
    PermintaanKoreksiCelupFrm.QTransaksi.Open;

    PermintaanKoreksiCelupFrm.Caption:=UpperCase(pjudul);
    PermintaanKoreksiCelupFrm.PanelHeader.Caption:=PermintaanKoreksiCelupFrm.QTransaksiKD_TRANSAKSI.AsString+'. '+PermintaanKoreksiCelupFrm.QTransaksiNAMA_TRANSAKSI.AsString;
    PermintaanKoreksiCelupFrm.wwDBGrid1.IniAttributes.FileName:=DMFrm.sAppPath+Application.Title+'2.ini';
    PermintaanKoreksiCelupFrm.wwDBGrid1.IniAttributes.SectionName:=PermintaanKoreksiCelupFrm.Caption+'1';
    PermintaanKoreksiCelupFrm.wwDBGrid1.IniAttributes.Enabled:=True;
    PermintaanKoreksiCelupFrm.wwDBGrid1.LoadFromIniFile;
    PermintaanKoreksiCelupFrm.wwDBGrid2.IniAttributes.FileName:=DMFrm.sAppPath+Application.Title+'2.ini';
    PermintaanKoreksiCelupFrm.wwDBGrid2.IniAttributes.SectionName:=PermintaanKoreksiCelupFrm.Caption+'2';
    PermintaanKoreksiCelupFrm.wwDBGrid2.IniAttributes.Enabled:=True;
    PermintaanKoreksiCelupFrm.wwDBGrid2.LoadFromIniFile;
    DMFrm.ProcReadIni(Application.Title,PermintaanKoreksiCelupFrm.Caption+'1',PermintaanKoreksiCelupFrm.wwDBGrid1);
    DMFrm.ProcReadIni(Application.Title,PermintaanKoreksiCelupFrm.Caption+'2',PermintaanKoreksiCelupFrm.wwDBGrid2);
    PermintaanKoreksiCelupFrm.wwDBSpinLine1.Value:=PermintaanKoreksiCelupFrm.wwDBGrid1.RowHeightPercent;
    PermintaanKoreksiCelupFrm.wwDBSpinLine2.Value:=PermintaanKoreksiCelupFrm.wwDBGrid2.RowHeightPercent;

  end;

  PermintaanKoreksiCelupFrm.Show;
end;

procedure TPermintaanKoreksiCelupFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   DMFrm.ProcWtiteIni(Application.Title,Caption+'1',wwDBGrid1);
   DMFrm.ProcWtiteIni(Application.Title,Caption+'2',wwDBGrid2);
   Action:=caFree;
   PermintaanKoreksiCelupFrm:=Nil;
end;

procedure TPermintaanKoreksiCelupFrm.FormCreate(Sender: TObject);
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

procedure TPermintaanKoreksiCelupFrm.BtnExportClick(Sender: TObject);
begin
  if QBrowse.Active then
  begin
     DMFrm.SaveDialog1.DefaultExt:='XLK';
     DMFrm.SaveDialog1.Filter:='Excel files (*.XLK)|*.XLK';
     DMFrm.SaveDialog1.FileName:=Caption+' '+ vTglAwal.Text+' sd '+vTglAkhir.Text+'.xlK';
     wwDBGrid2.ExportOptions.TitleName:='TRANSAKSI LAINNYA CELUP';
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

procedure TPermintaanKoreksiCelupFrm.BtnOkClick(Sender: TObject);
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
      if vTglAwal.Date >= StrToDate('01/01/2017') then
      begin
          QBrowse.SQL.Text:='select * from '+cUserTabel+'vpermintaankoreksicelup2017 where tanggal>=:pawal and tanggal<=:pakhir and kd_transaksi=:kd_transaksi :porder';
      end
      else begin
          QBrowse.SQL.Text:='select * from '+cUserTabel+'v'+Name+
            ' where tanggal>=:pawal and tanggal<=:pakhir and kd_transaksi=:kd_transaksi :porder';
      end;
  		QBrowse.SetVariable('pawal',Trunc(vTglAwal.Date));
  		QBrowse.SetVariable('pakhir',Trunc(vTglAkhir.Date)+1-1/86400);
			QBrowse.SetVariable('kd_transaksi',vkode);
  		QBrowse.SetVariable('porder',vorder);
      //ShowMessage(QBrowse.SQL.Text);
      QBrowse.Open;
      QBrowse.EnableControls;
      LabelBanner.Caption:='Data : '+FormatFloat('#,#',QBrowse.RecordCount)+' Records';
    end;
end;
end;

procedure TPermintaanKoreksiCelupFrm.wwDBGrid2TitleButtonClick(Sender: TObject;
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

procedure TPermintaanKoreksiCelupFrm.QBrowseAfterScroll(DataSet: TDataSet);
begin
  LabelBanner.Caption:='Record ke '+IntToStr(QBrowse.RecNo)+' dari '+FormatFloat('#,#',QBrowse.RecordCount)+' Records';
end;

procedure TPermintaanKoreksiCelupFrm.BtnClose1Click(Sender: TObject);
begin
  Close;
end;

procedure TPermintaanKoreksiCelupFrm.BtnClose2Click(Sender: TObject);
begin
  Close;
end;

procedure TPermintaanKoreksiCelupFrm.vTglAwalChange(Sender: TObject);
begin
  vTglAkhir.DateTime:=EndOfTheMonth(vTglAwal.Date);
end;

procedure TPermintaanKoreksiCelupFrm.wwDBSpinLine2Change(Sender: TObject);
begin
    wwDBGrid2.RowHeightPercent:=Round(wwDBSpinLine2.Value);
end;

procedure TPermintaanKoreksiCelupFrm.BtnFindClick(Sender: TObject);
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

procedure TPermintaanKoreksiCelupFrm.BtnOk2Click(Sender: TObject);
begin
  if QBrowse.QBEMode then
  begin
    QBrowse.ExecuteQBE;
    wwDBGrid2.Options:=wwDBGrid2.Options+[dgRowSelect,dgAlwaysShowSelection];
  end;

end;

procedure TPermintaanKoreksiCelupFrm.ppHeaderBand1BeforePrint(Sender: TObject);
begin
  ppNo.AsInteger:=0;
end;

procedure TPermintaanKoreksiCelupFrm.BtnPrintBrowseClick(Sender: TObject);
begin
  if vTglAwal.Date>vTglAkhir.DateTime then
    ShowMessage('Tgl. Akhir harus lebih besar dari Tgl. Awal !')
    else
    begin
      ppReportBrowse.Print;
    end;
end;

procedure TPermintaanKoreksiCelupFrm.Button1Click(Sender: TObject);
begin
  ppDesigner1.ShowModal;
end;

procedure TPermintaanKoreksiCelupFrm.BtnDesign2Click(Sender: TObject);
begin
  ppDesigner1.ShowModal;
end;

procedure TPermintaanKoreksiCelupFrm.ppTitleBand1BeforePrint(Sender: TObject);
begin
  ppNamaLaporan.Caption:=Caption;
  ppNo2.AsInteger:=0;
  ppPeriode.Caption:=vTglAwal.Text+' s/d '+vTglAkhir.Text;
  DMFrm.QTime.Close;
  DMFrm.QTime.Open;
  ppUserCetak.Caption:=DMFrm.QTimeVUSER_CETAK.AsString;
end;

procedure TPermintaanKoreksiCelupFrm.wwDBSpinLine1Change(Sender: TObject);
begin
    wwDBGrid1.RowHeightPercent:=Round(wwDBSpinLine1.Value);
end;

procedure TPermintaanKoreksiCelupFrm.EditCariKeyDown(Sender: TObject; var Key: Word;
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

procedure TPermintaanKoreksiCelupFrm.TabSheet1Show(Sender: TObject);
begin
  QMaster.Close;
  QMaster.SetVariable('myparam1',QBrowseIBUKTI.AsInteger);
  QMaster.SetVariable('myparam2',QBrowseNO_NOTA.AsString);
  QMaster.Open;
  QDetail.Close;
  QDetail.SetVariable('ibukti',QBrowseIBUKTI.AsInteger);  //280121
  QDetail.Open;
  wwDBGrid1UpdateFooter(nil);
  EditCari.Text:=QBrowseIBUKTI.AsString;
  if (QBrowseNO_NOTA.AsString<>'') then EditCari.Text:=QBrowseNO_NOTA.AsString;
end;

procedure TPermintaanKoreksiCelupFrm.TabSheet1Exit(Sender: TObject);
begin
  EditCari.Text:='';
end;

procedure TPermintaanKoreksiCelupFrm.ppDetailBand2BeforePrint(Sender: TObject);
begin
  ppNo2.AsInteger:=ppNo2.AsInteger+1;
end;

procedure TPermintaanKoreksiCelupFrm.ppFooterBand2BeforePrint(Sender: TObject);
begin
//  ppHalInput.Visible:=ppReportInput.PageNo>1;
  DMFrm.QTime.Close;
  DMFrm.QTime.Open;
  ppUserCetak2.Caption:=DMFrm.QTimeVUSER_CETAK.AsString;
end;

procedure TPermintaanKoreksiCelupFrm.BtnPrintInputClick(Sender: TObject);
begin
  ppReportInput.Print;
end;

procedure TPermintaanKoreksiCelupFrm.QMasterBeforePost(DataSet: TDataSet);
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

procedure TPermintaanKoreksiCelupFrm.wwDBGrid1Enter(Sender: TObject);
begin
  if QMaster.State<>dsBrowse then
  try
    QMaster.Post;
  except
    ShowMessage('Maaf, ada masalah di pengisian MASTER !');
  end;
end;

procedure TPermintaanKoreksiCelupFrm.wwDBGrid2DblClick(Sender: TObject);
begin
  TabSheet1.Show;
end;

procedure TPermintaanKoreksiCelupFrm.Label5Click(Sender: TObject);
begin
  if DMFrm.FontDialog1.Execute then
  begin
    wwDBGrid2.Font.Name:=DMFrm.FontDialog1.Font.Name;
    wwDBGrid2.Font.Size:=DMFrm.FontDialog1.Font.Size;
    wwDBGrid2.Font.Color:=DMFrm.FontDialog1.Font.Color;
    wwDBGrid2.Font.Style:=DMFrm.FontDialog1.Font.Style;
  end;
end;

procedure TPermintaanKoreksiCelupFrm.LookItemEnter(Sender: TObject);
begin
////////////////////////////RRREEEVIIIEEEWWWWWWWWWWWWWWWW STOK DALAM PROSES CELUP
////////////////////////////RRREEEVIIIEEEWWWWWWWWWWWWWWWW STOK DALAM HASIL PROSES CELUP
////////////////////////////RRREEEVIIIEEEWWWWWWWWWWWWWWWW STOK DALAM PROSES KERING
////////////////////////////RRREEEVIIIEEEWWWWWWWWWWWWWWWW STOK DALAM HASIL PROSES KERING


 {
 if wwDBDateTimePicker1.Date >= StrToDate('01/01/2017') then
 begin
    QItem.DeclareVariable('vjns_brg',otString);
    QItem.DeclareVariable('vjns_lokasi',otString);
    QItem.DeclareVariable('TGL',otDate);
    QItem.DeclareVariable('myparam',otSubst);
    QItem.Close;
    QItem.SQL.Text:='SELECT * FROM (select kd_item, nama_item, kd_satuan, rasio, satuan, kd_jns_item, kd_lokasi, kd_sub_lokasi,'+
                    ' kd_warna, warna, no_batch, sum(nvl(qty,0)) as qty, sum(nvl(qty2,0)) as qty2'+
                    ' from ipisma_db3.vlook_koreksi_hsl_celup_kering t'+
                    ' where kd_jns_item=:vjns_brg and kd_lokasi=:vjns_lokasi and tgl<=:tgl :myparam'+
                    ' group by kd_item, nama_item, kd_satuan, rasio, satuan, kd_jns_item, kd_lokasi, kd_sub_lokasi ,kd_warna, warna, no_batch'+
                    ' order by nama_item, warna, no_batch '+  //190523
                    ') WHERE (ROUND(nvl(qty,0),6)+ROUND(nvl(qty2,0),6))<>0';

    QItem.SetVariable('vjns_brg',vjns_brg);
    QItem.SetVariable('vjns_lokasi',vjns_lokasi);
    QItem.SetVariable('tgl',Trunc(QMasterTGL.AsDateTime)+1-1/86400);
    QItem.Open;
 end
 else
 begin
    QItem.DeclareVariable('vjns_brg',otString);
    QItem.DeclareVariable('vjns_lokasi',otString);
    QItem.DeclareVariable('TGL',otDate);
    QItem.DeclareVariable('myparam',otSubst);
    QItem.Close;
  	QItem.SQL.Text:='select a.kd_item, a.nama_item, a.kd_satuan, a.rasio, d.satuan, a.min_stok, a.kd_jns_item, b.kd_sub_lokasi, b.kd_warna,e.warna, b.no_batch,'+
      ' sum(b.qty_in-b.qty_out) as qty, sum(b.qty_in2-b.qty_out2) as qty2'+
      ' from '+cUserTabel+'item a, '+cUserTabel+'gd_stok b, '+cUserTabel+'sub_lokasi c, '+cUserTabel+'satuan d,'+cUserTabel+'warna baru e'+
      ' where a.kd_item=b.kd_item and b.kd_sub_lokasi=c.kd_sub_lokasi and'+
      ' a.kd_satuan=d.kd_satuan and c.jns_lokasi=''LOKASI'' and b.kd_warna=e.kd_warna and'+
      ' a.kd_jns_item=:vjns_brg and c.kd_lokasi=:vjns_lokasi and b.tgl<=:tgl :myparam'+
      ' order by a.nama_item, e.warna, b.no_batch '+  //190523
      ' group by a.kd_item, a.nama_item, a.kd_satuan, a.rasio,d.satuan, a.min_stok, a.kd_jns_item, b.kd_sub_lokasi, b.kd_warna,e.warna,b.no_batch';
    QItem.SetVariable('vjns_brg',vjns_brg);
    QItem.SetVariable('vjns_lokasi',vjns_lokasi);
    QItem.SetVariable('tgl',Trunc(QMasterTGL.AsDateTime)+1-1/86400);
    //ShowMessage(QItem.SQL.Text);
    QItem.Open;
 end;
 }

 QNewItems.Close;
 if QMasterNO_RESEP.AsString='KOREKSI3' then
 begin
    QNewItems.SetVariable('vkd_sub_lokasi', '22-10000');
    QNewItems.SetVariable('vkd_jns_item', '21');
 end;

  if QMasterNO_RESEP.AsString='KOREKSI4' then
 begin
    QNewItems.SetVariable('vkd_sub_lokasi', '22-00000');
    QNewItems.SetVariable('vkd_jns_item', '22');
 end;
 QNewItems.Open;
end;

procedure TPermintaanKoreksiCelupFrm.QMasterBeforeDelete(DataSet: TDataSet);
begin
  if QMasterISPOST.AsString='1' then
  begin
     ShowMessage('Maaf, sudah di-POST !, tidak bisa diubah...');
     Abort;
  end;
end;

procedure TPermintaanKoreksiCelupFrm.QMasterNewRecord(DataSet: TDataSet);
begin
  if vshift<>'' then QMasterSHIFT.AsString:=vshift;
  if vgrup<>'' then QMasterGRUP.AsString:=vgrup;
  QMasterKD_TRANSAKSI.AsString:=vkode;
  QMasterTGL.AsDateTime:=DMFrm.QTimeJAM.AsDateTime;
  QMasterISPOST.AsString:='0';
  QMasterTTD1.AsString:=QTransaksiTTD1.AsString;
  QMasterTTD2.AsString:=QTransaksiTTD2.AsString;
  QMasterTTD3.AsString:=QTransaksiTTD3.AsString;
  QMasterTTD4.AsString:=QTransaksiTTD4.AsString;

  wwDBDateTimePicker1.Enabled:=True;
  wwDBComboBox3.Enabled:=True;

    if QMasterKD_TRANSAKSI.AsString='804' then
    begin
      QMasterKD_DIV.AsString:='313';
    end
    else
    if QMasterKD_TRANSAKSI.AsString='807' then
    begin
      QMasterKD_DIV.AsString:='313';
    end;

  QMasterSTATUS.AsString:='KOREKSI';
  QMasterNO_RESEP.AsString:='KOREKSI1';
  QItem.Close;
  wwDBEdit1.SetFocus;
end;

procedure TPermintaanKoreksiCelupFrm.QTransaksiBeforeOpen(DataSet: TDataSet);
begin
  QTransaksi.DeclareVariable('kd_transaksi', otString);
  QTransaksi.SQL.Text:='select a.* from '+cUserTabel+'vtransaksi a where a.kd_transaksi=:kd_transaksi';
  QTransaksi.SetVariable('kd_transaksi',vkode);
end;

procedure TPermintaanKoreksiCelupFrm.ppPageStyle1BeforePrint(Sender: TObject);
begin
  ppNo2.AsInteger:=0;
end;

procedure TPermintaanKoreksiCelupFrm.Label14Click(Sender: TObject);
begin
  if DMFrm.FontDialog1.Execute then
  begin
    wwDBGrid1.Font.Name:=DMFrm.FontDialog1.Font.Name;
    wwDBGrid1.Font.Size:=DMFrm.FontDialog1.Font.Size;
    wwDBGrid1.Font.Color:=DMFrm.FontDialog1.Font.Color;
    wwDBGrid1.Font.Style:=DMFrm.FontDialog1.Font.Style;
  end;

end;

procedure TPermintaanKoreksiCelupFrm.FormCloseQuery(Sender: TObject;
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

procedure TPermintaanKoreksiCelupFrm.QMasterAfterPost(DataSet: TDataSet);
begin
  PageControl1.Pages[1].TabVisible:=QMaster.IsEmpty or (QMasterISPOST.AsString='1');
  PageControl1.Pages[2].TabVisible:=QMaster.IsEmpty or (QMasterISPOST.AsString='1');
end;

procedure TPermintaanKoreksiCelupFrm.QMasterBeforeInsert(DataSet: TDataSet);
begin
  if DataSet['ISPOST']='0' then
  begin
    if MessageDlg('Data belum di-POSTING, batalkan ?', mtWarning, [mbYes, mbNo],0)=mrYes then
      DataSet.Delete
      else
        Abort;
  end;

end;

procedure TPermintaanKoreksiCelupFrm.ppGroupHeaderBand1BeforePrint(Sender: TObject);
begin
  ppNo.AsInteger:=ppNo.AsInteger+1;
end;

procedure TPermintaanKoreksiCelupFrm.LookItemCloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin
  {
  if modified then
  begin
    QDetailKETERANGAN.AsString:=QItemNAMA_ITEM.AsString;
    QDetailQTY1.AsFloat:=QItemQTY.AsFloat;
    QDetailQTY6.AsFloat:=QItemQTY2.AsFloat;

    if QMasterNO_RESEP.AsString='KOREKSI1' then
    begin
      QDetailKD_SUB_LOKASI.AsString:='21-10000';
    end
    else
    if QMasterNO_RESEP.AsString='KOREKSI3' then
    begin
      QDetailKD_SUB_LOKASI.AsString:='22-10000';
    end
    else
    begin
      QDetailKD_SUB_LOKASI.AsString:=QItemKD_SUB_LOKASI.AsString;
    end;

    QDetailRASIO.AsFloat:=QItemRASIO.AsFloat;
    QDetailKD_WARNA.AsString:=QItemKD_WARNA.AsString;
    QDetailNO_BATCH.AsString:=QItemNO_BATCH.AsString;
  end;
  }

  if modified then
  begin
    QDetailKETERANGAN.AsString:=QNewItemsNAMA_ITEM.AsString;
    QDetailQTY1.AsFloat:=QNewItemsQTY.AsFloat;
    QDetailQTY6.AsFloat:=QNewItemsQTY2.AsFloat;

    if QMasterNO_RESEP.AsString='KOREKSI1' then
    begin
      QDetailKD_SUB_LOKASI.AsString:='21-10000';
    end
    else
    if QMasterNO_RESEP.AsString='KOREKSI3' then
    begin
      QDetailKD_SUB_LOKASI.AsString:='22-10000';
    end
    else
    begin
      QDetailKD_SUB_LOKASI.AsString:=QNewItemsKD_SUB_LOKASI.AsString;
    end;

    QDetailRASIO.AsFloat:=QNewItemsRASIO.AsFloat;
    QDetailKD_WARNA.AsString:=QNewItemsKD_WARNA.AsString;
    QDetailNO_BATCH.AsString:=QNewItemsNO_BATCH.AsString;
  end;
end;

procedure TPermintaanKoreksiCelupFrm.QDetailNewRecord(DataSet: TDataSet);
begin
  QDetailQTY1.AsFloat:=0;
  QDetailQTY2.AsFloat:=0;
  QDetailQTY4.AsFloat:=0;
  QDetailQTY5.AsFloat:=0;
  QDetailQTY6.AsFloat:=0;
  QDetailQTY7.AsFloat:=0;

  wwDBDateTimePicker1.Enabled:=False;
  wwDBComboBox3.Enabled:=False;
  
  QDetailIBUKTI.AsInteger:=QMasterIBUKTI.AsInteger;
end;

procedure TPermintaanKoreksiCelupFrm.QDetailBeforePost(DataSet: TDataSet);
begin
  QDetailQTY2.AsFloat:=QDetailQTY1.AsFloat+
    QDetailQTY4.AsFloat;
  QDetailQTY7.AsFloat:=QDetailQTY6.AsFloat+
    QDetailQTY5.AsFloat;
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

procedure TPermintaanKoreksiCelupFrm.TabSheet3Show(Sender: TObject);
begin
  QSOP.DeclareVariable('kd_transaksi',otString);
  QSOP.SQL.Text:='select sinopsis from '+cUserTabel+'vsop where kd_transaksi=:kd_transaksi';
  QSOP.SetVariable('kd_transaksi',vkode);
  QSOP.Open;
end;

procedure TPermintaanKoreksiCelupFrm.QItemBeforeOpen(DataSet: TDataSet);
begin
{ if wwDBDateTimePicker1.Date >= StrToDate('01/01/2017') then
  begin
    QItem.Close;
    QItem.Open;
  end
  else begin
    QItem.DeclareVariable('vjns_brg',otString);
    QItem.DeclareVariable('vjns_lokasi',otString);
    QItem.DeclareVariable('TGL',otDate);
  	QItem.SQL.Text:='select a.kd_item, a.nama_item, a.kd_satuan, a.rasio, d.satuan, a.min_stok, a.kd_jns_item, b.kd_sub_lokasi, b.kd_warna,e.warna, b.no_batch,'+
      ' sum(b.qty_in-b.qty_out) as qty, sum(b.qty_in2-b.qty_out2) as qty2'+
      ' from '+cUserTabel+'item a, '+cUserTabel+'gd_stok b, '+cUserTabel+'sub_lokasi c, '+cUserTabel+'satuan d,'+cUserTabel+'warna e'+
      ' where a.kd_item=b.kd_item and b.kd_sub_lokasi=c.kd_sub_lokasi and'+
      ' a.kd_satuan=d.kd_satuan and c.jns_lokasi=''LOKASI'' and b.kd_warna=e.kd_warna and'+
      ' a.kd_jns_item=:vjns_brg and c.kd_lokasi=:vjns_lokasi and b.tgl<=:tgl'+
      ' group by a.kd_item, a.nama_item, a.kd_satuan, a.rasio,d.satuan, a.min_stok, a.kd_jns_item, b.kd_sub_lokasi, b.kd_warna,e.warna,b.no_batch';
      //' having sum(b.qty_in2-b.qty_out2)>0';
    QItem.SetVariable('vjns_brg',vjns_brg);
    QItem.SetVariable('vjns_lokasi',vjns_lokasi);
    QItem.SetVariable('tgl',Trunc(QMasterTGL.AsDateTime)+1-1/86400);
  end;}
end;

procedure TPermintaanKoreksiCelupFrm.wwDBGrid1UpdateFooter(
  Sender: TObject);
begin
  QTotal.Close;
  QTotal.SetVariable('ibukti',QMasterIBUKTI.AsInteger);
  QTotal.Open;
  wwDBGrid1.ColumnByName('QTY5').FooterValue:=FormatFloat('#,0;-#,0;-',QTotalPCS.AsFloat);
  wwDBGrid1.ColumnByName('QTY4').FooterValue:=FormatFloat('#,0.0000;-#,0.0000;-',QTotalKG.AsFloat);
end;

procedure TPermintaanKoreksiCelupFrm.wwDBDateTimePicker1Change(
  Sender: TObject);
begin
  QItem.Refresh;
end;

procedure TPermintaanKoreksiCelupFrm.wwDBGrid1CalcCellColors(
  Sender: TObject; Field: TField; State: TGridDrawState;
  Highlight: Boolean; AFont: TFont; ABrush: TBrush);
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

procedure TPermintaanKoreksiCelupFrm.LookItemUserButton1Click(
  Sender: TObject; LookupTable: TDataSet);
var
  vfilter : string ;
begin
{  if InputQuery('Filter','Filter : ',vfilter) then
  begin
    QItem.Close;
    QItem.SetVariable('myparam',' and (warna like upper(''%'+vfilter+
      '%'')'+ ' or upper(nama_item) like upper(''%'+vfilter+'%'')'+
      ' or upper(no_batch) like upper(''%'+vfilter+'%'')'+')');
    QItem.Open;
  end;}

  if InputQuery('Filter','Filter : ',vfilter) then
  begin
    QNewItems.Close;
    QNewItems.SetVariable('myparam',' and upper(nama_item) like upper(''%'+vfilter+'%'')');
    QNewItems.Open;
  end;

end;

procedure TPermintaanKoreksiCelupFrm.QMasterAfterDelete(DataSet: TDataSet);
begin
  wwDBDateTimePicker1.Enabled:=False;
  wwDBComboBox3.Enabled:=False;

end;

procedure TPermintaanKoreksiCelupFrm.LookWarnaEnter(Sender: TObject);
begin
  DMFrm.QWarna.Close;
  DMFrm.QWarna.SetVariable('myparam','ipisma_db3.warna_baru a');
  DMFrm.QWarna.Open;
end;

procedure TPermintaanKoreksiCelupFrm.LookWarnaCloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
  QDetailWARNA.AsString:=DMFrm.QWarnaWARNA.AsString;
end;

end.
