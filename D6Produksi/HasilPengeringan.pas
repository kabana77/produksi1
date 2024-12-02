unit HasilPengeringan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  DateUtils, Mask, wwdbedit, Wwdbspin, DB, Wwdatsrc, OracleData, Dialogs,
  Oracle, Buttons, wwSpeedButton, wwDBNavigator, wwclearpanel, Grids,
  Wwdbigrd, Wwdbgrid, StdCtrls, wwdbdatetimepicker, ComCtrls, ExtCtrls,
  ppViewr, ppDB, ppDBPipe, ppComm, ppRelatv, ppProd, ppClass, ppReport,
  ppVar, ppCtrls, ppBands, ppPrnabl, ppCache, ppEndUsr, ppModule,
  daDataModule, DBCtrls, wwdblook, Wwdbdlg, Wwdotdot, Wwdbcomb, ppBarCod,
  wwcheckbox, ppStrtch, ppMemo, raCodMod, ppParameter;

type
  THasilPengeringFrm = class(TForm)
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
    QProc_Update_PO: TOracleQuery;
    QLokasi: TOracleDataSet;
    QLokasiKD_SUB_LOKASI: TStringField;
    QLokasiJNS_LOKASI: TStringField;
    Label8: TLabel;
    QMasterSHIFT: TStringField;
    QMasterGRUP: TStringField;
    wwDBComboBox1: TwwDBComboBox;
    wwDBComboBox2: TwwDBComboBox;
    Label10: TLabel;
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
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText10: TppDBText;
    ppDBText6: TppDBText;
    ppDBMemo3: TppDBMemo;
    ppNo: TppVariable;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText7: TppDBText;
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
    QDetailRASIO: TFloatField;
    QDetailKD_SATUAN: TStringField;
    QDetailNO_MESIN: TStringField;
    LookMesin: TwwDBLookupComboDlg;
    QLokasiSPESIFIKASI: TStringField;
    QLokasiEFF: TFloatField;
    QDetailQTY2: TFloatField;
    QDetailQTY3: TFloatField;
    QDetailQTY4: TFloatField;
    QLokasiJML: TFloatField;
    QBrowseKD_SUB_LOKASI: TStringField;
    QBrowseEFF: TFloatField;
    QBrowseJML: TFloatField;
    QBrowseQTY3: TFloatField;
    QBrowseQTY4: TFloatField;
    QBrowseTGL: TDateTimeField;
    QBrowseNO_NOTA: TStringField;
    QBrowseSHIFT: TStringField;
    QBrowseKD_ITEM: TStringField;
    QBrowseKETERANGAN: TStringField;
    QBrowseQTY1: TFloatField;
    QBrowseQTY2: TFloatField;
    QBrowseSHIFTGRUP: TStringField;
    QBrowseGRUP: TStringField;
    RadioGroup1: TRadioGroup;
    CBPreview: TCheckBox;
    ppTitleBand2: TppTitleBand;
    ppHeaderBand2: TppHeaderBand;
    ppLabel22: TppLabel;
    ppLabel24: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
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
    ppLabel28: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppDBText22: TppDBText;
    ppNo2: TppVariable;
    ppDBText30: TppDBText;
    ppDBMemo1: TppDBMemo;
    ppDBText11: TppDBText;
    ppDBText18: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppDBText29: TppDBText;
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
    ppDBText50: TppDBText;
    ppVariable2: TppVariable;
    raCodeModule1: TraCodeModule;
    ppDBText5: TppDBText;
    ppLabel18: TppLabel;
    ppLabel30: TppLabel;
    QDetailKD_WARNA: TStringField;
    QDetailNO_BATCH: TStringField;
    QDetailWARNA: TStringField;
    LookWarna: TwwDBLookupComboDlg;
    QBrowseWARNA: TStringField;
    QBrowseNO_BATCH: TStringField;
    QLokasiKPS: TFloatField;
    QDetailEFF: TFloatField;
    QBrowseEFF_MESIN: TFloatField;
    QLokasiKODE: TStringField;
    QLokasiKD_BENANG: TStringField;
    QKg: TOracleDataSet;
    QKgKG: TFloatField;
    QKgPCS: TFloatField;
    dsQKG: TwwDataSource;
    DBText2: TDBText;
    DBText4: TDBText;
    Label12: TLabel;
    Label13: TLabel;
    ppDBText16: TppDBText;
    ppLabel19: TppLabel;
    BitBtn1: TBitBtn;
    wwDBGrid2: TwwDBGrid;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppDBCalc2: TppDBCalc;
    ppDBCalc1: TppDBCalc;
    QBrowseIBUKTI: TFloatField;
    QTotal: TOracleDataSet;
    QTotalPCS: TFloatField;
    QTotalKG: TFloatField;
    QMasterTGL_INSERT: TDateTimeField;
    QMasterOPR_INSERT: TStringField;
    DBText5: TDBText;
    DBText6: TDBText;
    Label16: TLabel;
    Label17: TLabel;
    QDetailKD_ITEM2: TStringField;
    QBrowseNO_LOT: TStringField;
    ppLabel12: TppLabel;
    ppDBMemo4: TppDBMemo;
    ppLabel8: TppLabel;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    lookjns: TwwDBComboBox;
    Label18: TLabel;
    Label19: TLabel;
    QBrowseJENIS: TStringField;
    QMasterJENIS: TStringField;
    ppDBQTransaksippField19: TppField;
    ppDBQTransaksippField20: TppField;
    ppDBQTransaksippField21: TppField;
    ppLabel31: TppLabel;
    QTransaksiDOC_ISO: TStringField;
    ppDBText8: TppDBText;
    Label20: TLabel;
    QBrowseRASIO: TFloatField;
    QDetailQTY7: TFloatField;
    QDetailQTY8: TFloatField;
    QLookItem: TOracleDataSet;
    LookItem: TwwDBLookupComboDlg;
    QItem: TOracleDataSet;
    QItemNAMA_ITEM: TStringField;
    QItemKD_ITEM: TStringField;
    QItemSATUAN: TStringField;
    QItemRASIO: TFloatField;
    QItemKD_SATUAN: TStringField;
    QLookItemKD_ITEM21: TStringField;
    QLookItemKD_ITEM: TStringField;
    QLookItemNAMA_ITEM: TStringField;
    QLookItemKD_SUB_LOKASI: TStringField;
    QLookItemSATUAN: TStringField;
    QLookItemRASIO: TFloatField;
    QLookItemKD_SATUAN: TStringField;
    QLookItemKD_WARNA: TStringField;
    QLookItemWARNA: TStringField;
    QLookItemNO_BATCH: TStringField;
    QLookItemQTY: TFloatField;
    QLookItemQTY2: TFloatField;
    QLookItemBaru: TOracleDataSet;
    QLookItemBaruITEM: TStringField;
    QLookItemBaruQTY: TFloatField;
    QLookItemBaruQTY2: TFloatField;
    QLookItemBaruKD_ITEM: TStringField;
    QLookItemBaruNAMA_ITEM: TStringField;
    QLookItemBaruKD_WARNA: TStringField;
    QLookItemBaruWARNA: TStringField;
    QLookItemBaruNO_BATCH: TStringField;
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
    procedure QProc_Update_POBeforeQuery(Sender: TOracleQuery);
    procedure LookLokasiEnter(Sender: TObject);
    procedure QItemBeforeQuery(Sender: TOracleDataSet);
    procedure LookItemCloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure QDetailNewRecord(DataSet: TDataSet);
    procedure QDetailBeforePost(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure QDetailQTY6Change(Sender: TField);
    procedure LookMesinEnter(Sender: TObject);
    procedure LookMesinCloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure LookWarnaEnter(Sender: TObject);
    procedure QDetailCalcFields(DataSet: TDataSet);
    procedure BitBtn1Click(Sender: TObject);
    procedure ppDetailBand1BeforePrint(Sender: TObject);
    procedure wwDBGrid1UpdateFooter(Sender: TObject);
    procedure wwDBGrid1CalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure QMasterAfterDelete(DataSet: TDataSet);
    procedure LookWarnaUserButton1Click(Sender: TObject;
      LookupTable: TDataSet);
    procedure QLookItemBeforeQuery(Sender: TOracleDataSet);
    procedure LookWarnaCloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure LookItemUserButton1Click(Sender: TObject;
      LookupTable: TDataSet);
    procedure QLookItemBaruBeforeQuery(Sender: TOracleDataSet);
  private
    { Private declarations }
    vshift, vgrup, vorder, SelectedFont, vkode, vjns_brg, vjns_lokasi, vkd_benang, vjns_item, vfilter, vfilter2 : String;
    vjawal, vjakhir : TDateTime;
  public
    { Public declarations }

  end;

var
  HasilPengeringFrm: THasilPengeringFrm;

procedure ShowForm(pNamaMenu:String; pkode : String; pjudul : string; pjns_brg : String; pjns_lokasi : String; pjns_item : String);

implementation

uses DM, Pembelian;

{$R *.dfm}

procedure ShowForm(pNamaMenu:String; pkode : String; pjudul : string; pjns_brg : String; pjns_lokasi : String; pjns_item : String);
var
  mychar : string[125];
Begin
// Hak Menu
  DMFrm.cHakInput:=DMFrm.QMenuUser.Lookup('NAMA_COMPONENT',pNamaMenu,'HAK_INPUT')='1';
  DMFrm.cBtnDesign:=DMFrm.QMenuUser.Lookup('NAMA_COMPONENT',pNamaMenu,'HAK_DESIGN')='1';
  DMFrm.cBtnExport:=DMFrm.QMenuUser.Lookup('NAMA_COMPONENT',pNamaMenu,'HAK_EXPORT')='1';

//  if BPBFrm=Nil then
  begin
    HasilPengeringFrm:=THasilPengeringFrm.Create(Application);
    HasilPengeringFrm.PageControl1.ActivePageIndex:=1;
    if not DMFrm.cHakInput then
    begin
       HasilPengeringFrm.QMaster.ReadOnly:=True;
       HasilPengeringFrm.QDetail.ReadOnly:=True;
    end;
    mychar:=pjudul;
    Delete(mychar,Pos('&',mychar),1);
    pjudul:=mychar;
    HasilPengeringFrm.Caption:=UpperCase(pjudul);
    HasilPengeringFrm.vkode:=pkode;
    HasilPengeringFrm.vjns_lokasi:=pjns_lokasi;
    HasilPengeringFrm.vjns_brg:=pjns_brg;
    HasilPengeringFrm.vjns_item:=pjns_item; //MAA 19-12-2019
    HasilPengeringFrm.QTransaksi.Open;

    HasilPengeringFrm.PanelHeader.Caption:=HasilPengeringFrm.QTransaksiKD_TRANSAKSI.AsString+'. '+HasilPengeringFrm.QTransaksiNAMA_TRANSAKSI.AsString;
    HasilPengeringFrm.wwDBGrid1.IniAttributes.FileName:=DMFrm.sAppPath+Application.Title+'2.ini';
    HasilPengeringFrm.wwDBGrid1.IniAttributes.SectionName:=HasilPengeringFrm.Caption+'1';
    HasilPengeringFrm.wwDBGrid1.IniAttributes.Enabled:=True;
    HasilPengeringFrm.wwDBGrid1.LoadFromIniFile;
    HasilPengeringFrm.wwDBGrid2.IniAttributes.FileName:=DMFrm.sAppPath+Application.Title+'2.ini';
    HasilPengeringFrm.wwDBGrid2.IniAttributes.SectionName:=HasilPengeringFrm.Caption+'2';
    HasilPengeringFrm.wwDBGrid2.IniAttributes.Enabled:=True;
    HasilPengeringFrm.wwDBGrid2.LoadFromIniFile;
    DMFrm.ProcReadIni(Application.Title,HasilPengeringFrm.Caption+'1',HasilPengeringFrm.wwDBGrid1);
    DMFrm.ProcReadIni(Application.Title,HasilPengeringFrm.Caption+'2',HasilPengeringFrm.wwDBGrid2);
    HasilPengeringFrm.wwDBSpinLine1.Value:=HasilPengeringFrm.wwDBGrid1.RowHeightPercent;
    HasilPengeringFrm.wwDBSpinLine2.Value:=HasilPengeringFrm.wwDBGrid2.RowHeightPercent;
  end;

  HasilPengeringFrm.Show;
end;

procedure THasilPengeringFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   DMFrm.ProcWtiteIni(Application.Title,Caption+'1',wwDBGrid1);
   DMFrm.ProcWtiteIni(Application.Title,Caption+'2',wwDBGrid2);
   Action:=caFree;
   HasilPengeringFrm:=Nil;
end;

procedure THasilPengeringFrm.FormCreate(Sender: TObject);
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

procedure THasilPengeringFrm.BtnExportClick(Sender: TObject);
begin
       DMFrm.SaveDialog1.FileName:=PanelHeader.Caption+' '+
      vTglAwal.Text+' sd '+vTglAkhir.Text+'.html';
    if DMFrm.SaveDialog1.Execute then
    begin
      try
        wwDBGrid2.ExportOptions.FileName:=DMFrm.SaveDialog1.FileName;
        wwDBGrid2.ExportOptions.TitleName:='<font size=4>'+PanelHeader.Caption+'</font><br><font size=1>'+vTglAwal.Text+' sd '+vTglAkhir.Text+'</font>';
        wwDBGrid2.ExportOptions.Save;
        if MessageDlg('Ekspor Data Sukses, Lihat Hasil ?',mtWarning,[mbYes, mbNo],0)=mrYes then
        begin
          DMFrm.LMDStarter1.Command:=DMFrm.SaveDialog1.FileName;
          DMFrm.LMDStarter1.Execute;
        end;
  		Except
    	  ShowMessage('Ekspor Data Gagal !');
  		end;
    end;


{
      DMFrm.SaveDialog1.DefaultExt:='XLK';
     DMFrm.SaveDialog1.Filter:='Excel files (*.XLK)|*.XLK';
       DMFrm.SaveDialog1.FileName:='HASIL MESIN CELUP';
    if DMFrm.SaveDialog1.Execute then
    begin
      try
        wwDBGrid2.ExportOptions.FileName:=DMFrm.SaveDialog1.FileName;
        wwDBGrid2.ExportOptions.TitleName:='<font size=4>'+PanelHeader.Caption+'</font><br><font size=1>'+vTglAwal.Text+' sd '+vTglAkhir.Text+'</font>';
        wwDBGrid2.ExportOptions.Save;
        if MessageDlg('Ekspor Data Sukses, Lihat Hasil ?',mtWarning,[mbYes, mbNo],0)=mrYes then
        begin
          DMFrm.LMDStarter1.Command:=DMFrm.SaveDialog1.FileName;
          DMFrm.LMDStarter1.Execute;
        end;
  		Except
    	  ShowMessage('Ekspor Data Gagal !');
  		end;
    end;          }
 
end;

procedure THasilPengeringFrm.BtnOkClick(Sender: TObject);
var
  vkg, vpcs : real;
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
ShowMessage('Waktunya input data !!! Silahkan Browse lagi Setelah Jam 12');
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

{      if trunc(vTglAwal.date) >= StrToDate('01/01/2017') then
        begin
          QBrowse.Close;
          QBrowse.SQL.Text:='select * from ipisma_db3.vhasilcelup2017 where tgl>=:pawal and tgl<=:pakhir and kd_transaksi=:kd_transaksi :porder';
      end
      else
        begin   }
          QBrowse.Close;
          QBrowse.SQL.Text:='select * from '+cUserTabel+'v'+Name+
          ' where tgl>=:pawal and tgl<=:pakhir and kd_transaksi=:kd_transaksi :porder';
  //    end;

  		QBrowse.SetVariable('pawal',Trunc(vTglAwal.Date));
  		QBrowse.SetVariable('pakhir',Trunc(vTglAkhir.Date)+1-1/86400);
			QBrowse.SetVariable('kd_transaksi',vkode);
  		QBrowse.SetVariable('porder',vorder);
      //ShowMessage(QBrowse.SQL.Text);
      QBrowse.Open;
      vkg:=0;
      vpcs:=0;
      while not QBrowse.Eof do
      begin
        vkg:=vkg+QBrowseQTY1.AsFloat;
        vpcs:=vpcs+QBrowseQTY2.AsFloat;
        QBrowse.Next;
      end;
      QBrowse.First;
      QBrowse.EnableControls;
      LabelBanner.Caption:='Data : '+FormatFloat('#,#',QBrowse.RecordCount)+' Records';
      wwDBGrid2.ColumnByName('QTY1').FooterValue:=FormatFloat('#,0.00;-#,0.00;-',vkg);
      wwDBGrid2.ColumnByName('QTY2').FooterValue:=FormatFloat('#,0;-#,0;-',vpcs);
    end;
end;
end;

procedure THasilPengeringFrm.wwDBGrid2TitleButtonClick(Sender: TObject;
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

procedure THasilPengeringFrm.QBrowseAfterScroll(DataSet: TDataSet);
begin
  LabelBanner.Caption:='Record ke '+IntToStr(QBrowse.RecNo)+' dari '+FormatFloat('#,#',QBrowse.RecordCount)+' Records';
end;

procedure THasilPengeringFrm.BtnClose1Click(Sender: TObject);
begin
  Close;
end;

procedure THasilPengeringFrm.BtnClose2Click(Sender: TObject);
begin
  Close;
end;

procedure THasilPengeringFrm.vTglAwalChange(Sender: TObject);
begin
  vTglAkhir.DateTime:=EndOfTheMonth(vTglAwal.Date);
end;

procedure THasilPengeringFrm.wwDBSpinLine2Change(Sender: TObject);
begin
    wwDBGrid2.RowHeightPercent:=Round(wwDBSpinLine2.Value);
end;

procedure THasilPengeringFrm.BtnFindClick(Sender: TObject);
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

procedure THasilPengeringFrm.BtnOk2Click(Sender: TObject);
var
  vkgf, vpcsf : real;
begin
  if QBrowse.QBEMode then
  begin
    QBrowse.ExecuteQBE;
    {azmi}
    wwDBGrid2.Options:=wwDBGrid2.Options+[dgRowSelect,dgAlwaysShowSelection];
    QBrowse.Open;

      vkgf:=0;
      vpcsf:=0;
      while not QBrowse.Eof do
      begin
        vkgf:=vkgf+QBrowseQTY1.AsFloat;
        vpcsf:=vpcsf+QBrowseQTY2.AsFloat;
        QBrowse.Next;
      end;

      QBrowse.EnableControls;
      LabelBanner.Caption:='Data : '+FormatFloat('#,#',QBrowse.RecordCount)+' Records';

      wwDBGrid2.ColumnByName('QTY2').FooterValue:=FormatFloat('#,0;-#,0;-',vpcsf);
      wwDBGrid2.ColumnByName('QTY1').FooterValue:=FormatFloat('#,0.00;-#,0.00;-',vkgf);
   {azmi}
  end;

end;

procedure THasilPengeringFrm.ppHeaderBand1BeforePrint(Sender: TObject);
begin
  ppNo.AsInteger:=0;
end;

procedure THasilPengeringFrm.BtnPrintBrowseClick(Sender: TObject);
begin
  if vTglAwal.Date>vTglAkhir.DateTime then
    ShowMessage('Tgl. Akhir harus lebih besar dari Tgl. Awal !')
    else
    begin
      ppReportBrowse.Print;
    end;
end;

procedure THasilPengeringFrm.Button1Click(Sender: TObject);
begin
  ppDesigner1.ShowModal;
end;

procedure THasilPengeringFrm.BtnDesign2Click(Sender: TObject);
begin
  ppDesigner1.ShowModal;
end;

procedure THasilPengeringFrm.ppTitleBand1BeforePrint(Sender: TObject);
begin
  ppNo.AsInteger:=0;
  ppNamaLaporan.Caption:=Caption;
  ppNo2.AsInteger:=0;
  ppPeriode.Caption:=vTglAwal.Text+' s/d '+vTglAkhir.Text;
  DMFrm.QTime.Close;
  DMFrm.QTime.Open;
  ppUserCetak.Caption:=DMFrm.QTimeVUSER_CETAK.AsString;
end;

procedure THasilPengeringFrm.wwDBSpinLine1Change(Sender: TObject);
begin
    wwDBGrid1.RowHeightPercent:=Round(wwDBSpinLine1.Value);
end;

procedure THasilPengeringFrm.EditCariKeyDown(Sender: TObject; var Key: Word;
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

procedure THasilPengeringFrm.TabSheet1Show(Sender: TObject);
begin
  QMaster.Close;
  QMaster.SetVariable('myparam1',QBrowseIBUKTI.AsInteger);
  QMaster.SetVariable('myparam2',QBrowseNO_NOTA.AsString);
  QMaster.Open;
  QDetail.Close;
  QDetail.SetVariable('IBUKTI',QBrowseIBUKTI.AsInteger);
  QDetail.Open;
  //ShowMessage(QDetail.SQL.Text);
  wwDBGrid1UpdateFooter(nil);
  EditCari.Text:=QBrowseIBUKTI.AsString;
  if (QBrowseNO_NOTA.AsString<>'') then EditCari.Text:=QBrowseNO_NOTA.AsString;
end;

procedure THasilPengeringFrm.TabSheet1Exit(Sender: TObject);
begin
  EditCari.Text:='';
end;

procedure THasilPengeringFrm.ppDetailBand2BeforePrint(Sender: TObject);
begin
  ppNo2.AsInteger:=ppNo2.AsInteger+1;
end;

procedure THasilPengeringFrm.ppFooterBand2BeforePrint(Sender: TObject);
begin
//  ppHalInput.Visible:=ppReportInput.PageNo>1;
  DMFrm.QTime.Close;
  DMFrm.QTime.Open;
  ppUserCetak2.Caption:=DMFrm.QTimeVUSER_CETAK.AsString;
end;

procedure THasilPengeringFrm.BtnPrintInputClick(Sender: TObject);
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

procedure THasilPengeringFrm.QMasterBeforePost(DataSet: TDataSet);
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

procedure THasilPengeringFrm.wwDBGrid1Enter(Sender: TObject);
begin
  if QMaster.State<>dsBrowse then
  try
    QMaster.Post;
  except
    ShowMessage('Maaf, ada masalah di pengisian MASTER !');
  end;
end;

procedure THasilPengeringFrm.wwDBGrid2DblClick(Sender: TObject);
begin
  TabSheet1.Show;
end;

procedure THasilPengeringFrm.Label5Click(Sender: TObject);
begin
  if DMFrm.FontDialog1.Execute then
  begin
    wwDBGrid2.Font.Name:=DMFrm.FontDialog1.Font.Name;
    wwDBGrid2.Font.Size:=DMFrm.FontDialog1.Font.Size;
    wwDBGrid2.Font.Color:=DMFrm.FontDialog1.Font.Color;
    wwDBGrid2.Font.Style:=DMFrm.FontDialog1.Font.Style;
  end;
end;

procedure THasilPengeringFrm.LookItemEnter(Sender: TObject);
begin
  (sender as TwwDBLookupComboDlg).LookupTable.Open;
end;

procedure THasilPengeringFrm.QMasterBeforeDelete(DataSet: TDataSet);
begin
  if QMasterISPOST.AsString='1' then
  begin
     ShowMessage('Maaf, sudah di-POST !, tidak bisa diubah...');
     Abort;
  end;
end;

procedure THasilPengeringFrm.QMasterNewRecord(DataSet: TDataSet);
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
  lookjns.Enabled:=True;

  {  if QMasterKD_TRANSAKSI.AsString='792' then
    begin
      QMasterKD_DIV.AsString:='312';
    end
    else
    if QMasterKD_TRANSAKSI.AsString='793' then
    begin      }
      QMasterKD_DIV.AsString:='313';
  //  end;

  QMasterJENIS.AsString:='-';
  QMasterSTATUS.AsString:='IN';
  wwDBEdit1.SetFocus;
end;

procedure THasilPengeringFrm.QTransaksiBeforeOpen(DataSet: TDataSet);
begin
  QTransaksi.DeclareVariable('kd_transaksi', otString);
  QTransaksi.SQL.Text:='select a.* from '+cUserTabel+'vtransaksi a where a.kd_transaksi=:kd_transaksi';
  QTransaksi.SetVariable('kd_transaksi',vkode);
end;

procedure THasilPengeringFrm.Label14Click(Sender: TObject);
begin
  if DMFrm.FontDialog1.Execute then
  begin
    wwDBGrid1.Font.Name:=DMFrm.FontDialog1.Font.Name;
    wwDBGrid1.Font.Size:=DMFrm.FontDialog1.Font.Size;
    wwDBGrid1.Font.Color:=DMFrm.FontDialog1.Font.Color;
    wwDBGrid1.Font.Style:=DMFrm.FontDialog1.Font.Style;
  end;

end;

procedure THasilPengeringFrm.FormCloseQuery(Sender: TObject;
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

procedure THasilPengeringFrm.QMasterAfterPost(DataSet: TDataSet);
begin
  PageControl1.Pages[1].TabVisible:=QMaster.IsEmpty or (QMasterISPOST.AsString='1');
  PageControl1.Pages[2].TabVisible:=QMaster.IsEmpty or (QMasterISPOST.AsString='1');

  if QMasterISPOST.AsString='1' then
  begin
      QProc_Update_PO.Close;
      QProc_Update_PO.Execute;
  end;
end;

procedure THasilPengeringFrm.QMasterBeforeInsert(DataSet: TDataSet);
begin
  if DataSet['ISPOST']='0' then
  begin
    if MessageDlg('Data belum di-POSTING, batalkan ?', mtWarning, [mbYes, mbNo],0)=mrYes then
      DataSet.Delete
      else
        Abort;
  end;

end;

procedure THasilPengeringFrm.ppGroupHeaderBand1BeforePrint(Sender: TObject);
begin
  ppNo.AsInteger:=ppNo.AsInteger+1;
end;

procedure THasilPengeringFrm.QProc_Update_POBeforeQuery(Sender: TOracleQuery);
begin
  QProc_Update_PO.SetVariable('NO_PO',QMasterNO_BUKTI.AsString);
end;

procedure THasilPengeringFrm.LookLokasiEnter(Sender: TObject);
begin
  QLokasi.Close;
  QLokasi.SetVariable('pkd_lokasi',vjns_lokasi);
  QLokasi.SetVariable('pjns_lokasi','LOKASI');
  QLokasi.Open;
end;

procedure THasilPengeringFrm.QItemBeforeQuery(Sender: TOracleDataSet);
begin
{    QItem.SetVariable('vjns_brg',vjns_brg);
    QItem.SetVariable('vjns_item',vjns_item); //MAA 19-12-2019
    QItem.SetVariable('vkd_benang',vkd_benang);

    QItem.SetVariable('psysdate',QMasterTGL.AsDateTime); //MAA 20-12-2019 TGL NOTA
    QItem.SetVariable('ibukti',QMasterIBUKTI.AsInteger); //MAA 20-12-2019
    }

//showmessage(vjns_brg+' '+vjns_item+' '+vkd_benang);
  if vjns_brg<>'' then
  begin
    QItem.SetVariable('vjns_brg',vjns_brg);
//    QItem.SetVariable('vjns_item',vjns_item); //MAA 19-12-2019
    QItem.SetVariable('vkd_benang',vkd_benang);
  end;
end;

procedure THasilPengeringFrm.LookItemCloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin
  if modified then
  begin
    QDetailKETERANGAN.AsString:=QItemNAMA_ITEM.AsString;
    QDetailKD_SATUAN.AsString:=QItemKD_SATUAN.AsString;
    QDetailRASIO.AsFloat:=QItemRASIO.AsFloat;

    QDetailQTY8.AsFloat:=0;
    QDetailQTY7.AsFloat:=0;
    QDetailQTY2.AsFloat:=0;
    QDetailQTY1.AsFloat:=0;
    QDetailKD_WARNA.AsString:='';
    QDetailWARNA.AsString:='';
    QDetailNO_BATCH.AsString:='';

    QLookItem.Close;

///////INFO STOK LAMA
 {   QKg.Close;
    if copy(QItemKD_ITEM.AsString,4,5) = '01076' then
    begin
      QKg.SetVariable('TGL','01/01/2014');
    end
    else
    begin
      QKg.SetVariable('TGL',QMasterTGL.AsDateTime);
    end;

    if QMasterKD_TRANSAKSI.AsString='792' then
    begin
      QKg.SetVariable('KD_ITEM','10.'+copy(QItemKD_ITEM.AsString,4,10));
      QKg.SetVariable('KD_LOKASI','21-10000');
    end
    else
      if QMasterKD_TRANSAKSI.AsString='793' then
      begin
        QKg.SetVariable('KD_ITEM','21.'+copy(QItemKD_ITEM.AsString,4,10));
        QKg.SetVariable('KD_LOKASI','22-10000');
      end;
      QKg.Open;

      if QKgPCS.AsFloat>0 then
//       QDetailRASIO.AsFloat:=QKgKG.AsFloat/QKgPCS.AsFloat
       QDetailRASIO.AsFloat:=QItemRASIO.AsFloat
       // MAA -- semua transaksi dengan rasio master 16/10/19 (berdasarkan Meeting Prod)
      else
      begin
         ShowMessage('Stok PCS kosong !');   // semua stok melalui rasio master 2/01/18
         QDetailRASIO.AsFloat:=QItemRASIO.AsFloat;
      end;
      }
///////INFO STOK LAMA


      
  end;
end;

procedure THasilPengeringFrm.QDetailNewRecord(DataSet: TDataSet);
begin
  QDetailQTY1.AsFloat:=0;
  QDetailQTY2.AsFloat:=0;
  QDetailQTY3.AsFloat:=0;
  QDetailQTY4.AsFloat:=0;
  QDetailIBUKTI.AsInteger:=QMasterIBUKTI.AsInteger;
  QDetailKD_SUB_LOKASI.AsString:=vjns_lokasi+'-00000';

  wwDBDateTimePicker1.Enabled:=False;
  lookjns.Enabled:=False;

//  QDetailNO_BATCH.AsString:=FormatDateTime('dd/mm/yy/',QMasterTGL.AsDateTime)+QMasterSHIFT.AsString;
{AZMI
if copy(panelheader.Caption,1,3)='793' then
 // QDetailNO_BATCH.AsString:=FormatDateTime('dd/mm/yy',QMasterTGL.AsDateTime)
else
  QDetailNO_BATCH.AsString:=FormatDateTime('dd/mm/yy',QMasterTGL.AsDateTime);  //+QMasterGRUP.AsString;
AZMI}

  end;

procedure THasilPengeringFrm.QDetailBeforePost(DataSet: TDataSet);
begin
////KONSEP LOCK PCS
if QDetailQTY8.AsFloat<0 then   //MAA 23-12-2019
begin
   showmessage('QTY STOK MINUS, ANDA TIDAK BISA ENTRY !!!');
   QDetailQTY2.AsFloat:=0;
   QDetailQTY1.AsFloat:=0;
   Abort;
end
else
begin
  if QDetailQTY2.AsFloat>QDetailQTY8.AsFloat then
  begin
   showmessage('QTY HASIL MELEBIHI QTY STOK, SILAHKAN DI ENTRY ULANG !!!');
   QDetailQTY2.AsFloat:=0;
   QDetailQTY1.AsFloat:=0;
  end;
end;
////KONSEP LOCK PCS

 if QDetailQTY2.AsFloat=0 then
    begin
    QDetailQTY1.AsFloat:=0;
    end
 else
 begin
    QDetailQTY1.AsFloat:=QDetailRASIO.AsFloat*QDetailQTY2.AsFloat;
 end;



/////////////////////////////////////////////////////////////////////

  if QDetailKD_ITEM.AsString='' then
     begin
        ShowMessage('BARANG harus diisi !');
        Abort;
     end
     else
  if QDetailQTY1.Asfloat=0 then
     begin
        ShowMessage('QTY harus diisi !');
        Abort;
     end
     else
  if QDetailKD_WARNA.AsString='' then
     begin
        ShowMessage('WARNA harus diisi !');
        Abort;
     end
     else
  if QDetailNO_BATCH.AsString='' then
     begin
        ShowMessage('NO BATCH harus diisi !');
        Abort;
     end
     else
  if QDetailKD_SUB_LOKASI.AsString='' then
     begin
        ShowMessage('LOKASI harus diisi !');
        Abort;
     end;
//////////////////////////////////////////////////////////////////

end;

procedure THasilPengeringFrm.FormShow(Sender: TObject);
begin
//  PanelHeader.Caption:=QTransaksiKD_TRANSAKSI.AsString+'. '+UpperCase(Caption);
end;

procedure THasilPengeringFrm.QDetailQTY6Change(Sender: TField);
begin
  {if QDetailRASIO.AsFloat>0 then
    QDetailQTY1.AsFloat:=QDetailQTY2.AsFloat*QDetailRASIO.AsFloat
    else
    begin
        ShowMessage('Maaf, RASIO di Master Barang belum ada !');
        Abort;
    end;  }
end;

procedure THasilPengeringFrm.LookMesinEnter(Sender: TObject);
begin
  QLokasi.Close;
  QLokasi.SetVariable('pkd_lokasi',vjns_lokasi);
  QLokasi.SetVariable('pjns_lokasi','MESIN');
  QLokasi.Open;
end;

procedure THasilPengeringFrm.LookMesinCloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin
  if modified then
  begin
     QDetailQTY3.AsFloat:=QLokasiJML.AsFloat;
     QDetailQTY4.AsFloat:=QLokasiKPS.AsFloat;
     vkd_benang:=QLokasiKD_BENANG.AsString;

     QDetailKD_ITEM.AsString:='';
     QDetailKETERANGAN.AsString:='';
     QDetailKD_SATUAN.AsString:='';
     QDetailRASIO.AsFloat:=0;

     QDetailQTY8.AsFloat:=0;
     QDetailQTY7.AsFloat:=0;
     QDetailQTY2.AsFloat:=0;
     QDetailQTY1.AsFloat:=0;
     QDetailKD_WARNA.AsString:='';
     QDetailWARNA.AsString:='';
     QDetailNO_BATCH.AsString:='';

     QItem.Close;
  end;
end;

procedure THasilPengeringFrm.LookWarnaEnter(Sender: TObject);
begin
//  (sender as TwwDBLookupComboDlg).LookupTable.Close;
    QLookItemBaru.Close;
    QLookItemBaru.Open;

{if wwDBDateTimePicker1.Date >= StrToDate('01/01/2017') then
  begin
   DMFrm.QWarna.Close;
   DMFrm.QWarna.SetVariable('myparam','ipisma_db3.warna_baru a order by a.jns_warna, a.warna');
   //ShowMessage('Tabel baru');
   DMFrm.QWarna.Open;
  end
else
  begin
   DMFrm.QWarna.Close;
   DMFrm.QWarna.SetVariable('myparam','ipisma_db3.warna a order by a.warna');
   //ShowMessage(DMFrm.QWarna.SQL.Text+' <= tabel lama');
   DMFrm.QWarna.Open;
  end;       
  DMFrm.QWarna.Close;
  DMFrm.QWarna.SetVariable('myparam','ipisma_db3.warna_baru a order by a.warna');
  DMFrm.QWarna.Open;  }
end;

procedure THasilPengeringFrm.QDetailCalcFields(DataSet: TDataSet);
begin
  if (QDetailQTY4.AsFloat>0) then
    QDetailEFF.AsFloat:=100*QDetailQTY1.AsFloat/(QDetailQTY4.AsFloat);
end;

procedure THasilPengeringFrm.BitBtn1Click(Sender: TObject);
begin
  if QBrowse.Active then
  begin
     DMFrm.SaveDialog1.DefaultExt:='XLK';
     DMFrm.SaveDialog1.Filter:='Excel files (*.XLK)|*.XLK';
     DMFrm.SaveDialog1.FileName:=PanelHeader.Caption+' '+ vTglAwal.Text+' sd '+vTglAkhir.Text+'.xlK';
   //DMFrm.SaveDialog1.FileName:='HASIL MESIN SOFTCONES';
     wwDBGrid2.ExportOptions.TitleName:='HASIL PENGERINGAN';
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

procedure THasilPengeringFrm.ppDetailBand1BeforePrint(Sender: TObject);
begin
   ppNo.AsInteger:=ppNo.AsInteger+1;
end;

procedure THasilPengeringFrm.wwDBGrid1UpdateFooter(Sender: TObject);
begin
  QTotal.Close;
  QTotal.SetVariable('ibukti',QMasterIBUKTI.AsInteger);
  QTotal.Open;
  wwDBGrid1.ColumnByName('QTY2').FooterValue:=FormatFloat('#,0;-#,0;-',QTotalPCS.AsFloat);
  wwDBGrid1.ColumnByName('QTY1').FooterValue:=FormatFloat('#,0.00;-#,0.00;-',QTotalKG.AsFloat);

end;

procedure THasilPengeringFrm.wwDBGrid1CalcCellColors(Sender: TObject;
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

procedure THasilPengeringFrm.QMasterAfterDelete(DataSet: TDataSet);
begin
  wwDBDateTimePicker1.Enabled:=False;
  lookjns.Enabled:=False;

end;

procedure THasilPengeringFrm.LookWarnaUserButton1Click(Sender: TObject;
  LookupTable: TDataSet);
begin
//  if InputQuery('Pencarian Data','Masukkan Data Stok WIP yang dicari : ',vfilter) then
  if InputQuery('Filter','Filter : ',vfilter2) then
  begin
    QLookItem.Close;
    QLookItem.SetVariable('vnama_item',QDetailKETERANGAN.AsString);

    QLookItem.SetVariable('vjns_brg',vjns_brg);
    QLookItem.SetVariable('vjns_item',vjns_item); //MAA 19-12-2019
    QLookItem.SetVariable('vkd_benang',vkd_benang);

    QLookItem.SetVariable('psysdate',QMasterTGL.AsDateTime); //MAA 20-12-2019 TGL NOTA
    QLookItem.SetVariable('ibukti',QMasterIBUKTI.AsInteger); //MAA 20-12-2019

    QLookItem.SetVariable('pfilter',vfilter2);
    QLookItem.Open;
  end;
end;

procedure THasilPengeringFrm.QLookItemBeforeQuery(Sender: TOracleDataSet);
begin
    QLookItem.SetVariable('vnama_item',QDetailKETERANGAN.AsString);

    QLookItem.SetVariable('vjns_brg',vjns_brg);
    QLookItem.SetVariable('vjns_item',vjns_item); //MAA 19-12-2019
    QLookItem.SetVariable('vkd_benang',vkd_benang);

    QLookItem.SetVariable('psysdate',QMasterTGL.AsDateTime); //MAA 20-12-2019 TGL NOTA
    QLookItem.SetVariable('ibukti',QMasterIBUKTI.AsInteger); //MAA 20-12-2019
end;

procedure THasilPengeringFrm.LookWarnaCloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin
////MAA 08-01-2020
    QDetailQTY8.AsFloat:=QLookItemBaruQTY2.AsFloat;
    QDetailQTY7.AsFloat:=QLookItemBaruQTY.AsFloat;
    QDetailWARNA.AsString:=QLookItemBaruWARNA.AsString;
    QDetailNO_BATCH.AsString:=QLookItemBaruNO_BATCH.AsString;
end;

procedure THasilPengeringFrm.LookItemUserButton1Click(Sender: TObject;
  LookupTable: TDataSet);
begin
  if InputQuery('Filter','Filter : ',vfilter) then
  begin
    QItem.Close;
    QItem.SetVariable('vjns_brg',vjns_brg);
    QItem.SetVariable('vkd_benang',vkd_benang);
    QItem.SetVariable('pfilter',vfilter);
    QItem.Open;
  end;
end;

procedure THasilPengeringFrm.QLookItemBaruBeforeQuery(
  Sender: TOracleDataSet);
begin
  QLookItemBaru.SetVariable('vkd_benang', QDetailKD_ITEM.AsString);  
end;

end.
