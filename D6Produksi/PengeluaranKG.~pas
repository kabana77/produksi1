unit PengeluaranKG;

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
  TPengeluaranKGFrm = class(TForm)
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
    wwDBNavigatorInputButton: TwwNavButton;
    wwDBNavigatorInputNext: TwwNavButton;
    wwDBNavigatorInputCancel: TwwNavButton;
    wwDBNavigatorInputButton1: TwwNavButton;
    wwDBNavigatorInputButton2: TwwNavButton;
    wwDBEdit1: TwwDBEdit;
    QDetailKD_SUB_LOKASI: TStringField;
    QProc_Update_PO: TOracleQuery;
    QLokasi: TOracleDataSet;
    QLokasiKD_SUB_LOKASI: TStringField;
    QLokasiJNS_LOKASI: TStringField;
    LookLokasi: TwwDBLookupComboDlg;
    Label8: TLabel;
    QMasterSHIFT: TStringField;
    QMasterGRUP: TStringField;
    wwDBComboBox1: TwwDBComboBox;
    wwDBComboBox2: TwwDBComboBox;
    Label10: TLabel;
    QItem: TOracleDataSet;
    QItemNAMA_ITEM: TStringField;
    QItemKD_ITEM: TStringField;
    LookItem: TwwDBLookupComboDlg;
    QBrowseSHIFT: TStringField;
    QBrowseGRUP: TStringField;
    QBrowseKD_DIV: TStringField;
    QBrowseNAMA_DIVISI: TStringField;
    QBrowseKODE_BRG: TStringField;
    QBrowseNAMA_BRG: TStringField;
    QBrowseSATUAN: TStringField;
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
    QDetailQTY3: TFloatField;
    QItemKD_SUB_LOKASI: TStringField;
    QItemQTY: TFloatField;
    QMasterSTATUS: TStringField;
    QDetailQTY6: TFloatField;
    QDetailQTY8: TFloatField;
    QDetailRASIO: TFloatField;
    QBrowseRASIO: TFloatField;
    RadioGroup1: TRadioGroup;
    QItemRASIO: TFloatField;
    QBrowseQTY3: TFloatField;
    QBrowseQTY8: TFloatField;
    CBPreview: TCheckBox;
    QDetailKD_WARNA: TStringField;
    QDetailNO_BATCH: TStringField;
    QDetailWARNA: TStringField;
    QItemKD_WARNA: TStringField;
    QItemWARNA: TStringField;
    QDetailKD_SUB_LOKASI2: TStringField;
    QItemQTY2: TFloatField;
    QDetailNO_BUKTI: TStringField;
    QDetailSTATUS: TStringField;
    LookResep: TwwDBLookupComboDlg;
    LookArah: TwwDBComboBox;
    QBrowseQTY1: TFloatField;
    QBrowseQTY2: TFloatField;
    QBrowseQTY6: TFloatField;
    QBrowseQTY7: TFloatField;
    LTotal: TLabel;
    QBrowseNO_BUKTI: TStringField;
    OD_Detail: TOracleDataSet;
    FloatField1: TFloatField;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    FloatField2: TFloatField;
    FloatField3: TFloatField;
    StringField4: TStringField;
    StringField5: TStringField;
    FloatField4: TFloatField;
    FloatField5: TFloatField;
    FloatField6: TFloatField;
    FloatField7: TFloatField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    StringField9: TStringField;
    StringField10: TStringField;
    StringField11: TStringField;
    Ds_OdDetail: TwwDataSource;
    ppParameterList1: TppParameterList;
    CheckBox1: TCheckBox;
    QBrowseIBUKTI: TFloatField;
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
    ppLabel22: TppLabel;
    ppLabel24: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLabel1: TppLabel;
    ppLabel13: TppLabel;
    ppLabel19: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppDBText22: TppDBText;
    ppDBText30: TppDBText;
    ppNomer: TppLabel;
    ppDBText11: TppDBText;
    ppDBText18: TppDBText;
    ppDBText17: TppDBText;
    ppFooterBand2: TppFooterBand;
    ppUserCetak2: TppLabel;
    ppDBText41: TppDBText;
    ppSystemVariable2: TppSystemVariable;
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
    ppLine1: TppLine;
    ppDBCalc2: TppDBCalc;
    ppLine2: TppLine;
    ppPageStyle1: TppPageStyle;
    raCodeModule1: TraCodeModule;
    ppDBText20: TppDBText;
    ppLabel21: TppLabel;
    DBText2: TDBText;
    Label12: TLabel;
    QMasterTGL_INSERT: TDateTimeField;
    QMasterOPR_INSERT: TStringField;
    Label16: TLabel;
    DBText4: TDBText;
    DBText5: TDBText;
    Label17: TLabel;
    ppDBText16: TppDBText;
    ppDBText21: TppDBText;
    LTransaksi: TLabel;
    cbTransaksi: TwwDBComboBox;
    QMasterNO_RESEP: TStringField;
    QBrowseJNS_LAINNYA: TStringField;
    QBrowseWARNA: TStringField;
    QBrowseNO_BATCH: TStringField;
    QTotal: TOracleDataSet;
    QTotalPCS: TFloatField;
    QTotalKG: TFloatField;
    QTotalPCS2: TFloatField;
    QTotalKG2: TFloatField;
    QBrowseISPOST: TStringField;
    LTResep: TLabel;
    QQty_resep: TOracleDataSet;
    QQty_resepJML_RESEP: TFloatField;
    ppDBQTransaksippField19: TppField;
    ppLabel23: TppLabel;
    QTransaksiDOC_ISO: TStringField;
    ppDBText29: TppDBText;
    Label18: TLabel;
    QItemRASIO2: TFloatField;
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
    procedure ppPageStyle1BeforePrint(Sender: TObject);
    procedure Label14Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure QMasterAfterPost(DataSet: TDataSet);
    procedure QMasterBeforeInsert(DataSet: TDataSet);
    procedure ppGroupHeaderBand1BeforePrint(Sender: TObject);
    procedure QProc_Update_POBeforeQuery(Sender: TOracleQuery);
    procedure QLokasiBeforeOpen(DataSet: TDataSet);
    procedure LookLokasiEnter(Sender: TObject);
    procedure QItemBeforeQuery(Sender: TOracleDataSet);
    procedure LookItemCloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure QDetailNewRecord(DataSet: TDataSet);
    procedure QDetailBeforePost(DataSet: TDataSet);
    procedure LookResepEnter(Sender: TObject);
    procedure LookResepUserButton1Click(Sender: TObject;
      LookupTable: TDataSet);
    procedure QDetailBeforeOpen(DataSet: TDataSet);
    procedure QDetailBeforeEdit(DataSet: TDataSet);
    procedure CheckBox1Click(Sender: TObject);
    procedure LookItemUserButton1Click(Sender: TObject;
      LookupTable: TDataSet);
    procedure LookItemUserButton2Click(Sender: TObject;
      LookupTable: TDataSet);
    procedure wwDBGrid1UpdateFooter(Sender: TObject);
    procedure LookResepUserButton2Click(Sender: TObject;
      LookupTable: TDataSet);
    procedure vTglAkhirChange(Sender: TObject);
    procedure wwDBGrid1CalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure QItemCalcFields(DataSet: TDataSet);
    procedure cbTransaksiCloseUp(Sender: TwwDBComboBox; Select: Boolean);
    procedure QMasterAfterDelete(DataSet: TDataSet);
    procedure QDetailQTY8Change(Sender: TField);
  private
    { Private declarations }
    vshift, vgrup, vdiv, vorder, SelectedFont, vkode, vjns_brg, vjns_lokasi, vfilter_item,
    vfilter_warna : String;
    vresep, varah : String;
  public
    { Public declarations }

  end;

var
  PengeluaranKGFrm: TPengeluaranKGFrm;

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
    PengeluaranKGFrm:=TPengeluaranKGFrm.Create(Application);
    PengeluaranKGFrm.PageControl1.ActivePageIndex:=1;
    if not DMFrm.cHakInput then
    begin
       PengeluaranKGFrm.QMaster.ReadOnly:=True;
       PengeluaranKGFrm.QDetail.ReadOnly:=True;
    end;
    mychar:=pjudul;
    Delete(mychar,Pos('&',mychar),1);
    pjudul:=mychar;
    PengeluaranKGFrm.Caption:=UpperCase(pkode+pjudul);
    PengeluaranKGFrm.vkode:=pkode;
    PengeluaranKGFrm.vjns_lokasi:=pjns_lokasi;
    PengeluaranKGFrm.vjns_brg:=pjns_brg;
    PengeluaranKGFrm.QTransaksi.Open;


    PengeluaranKGFrm.PanelHeader.Caption:=PengeluaranKGFrm.QTransaksiKD_TRANSAKSI.AsString+'. '+PengeluaranKGFrm.QTransaksiNAMA_TRANSAKSI.AsString;
    PengeluaranKGFrm.wwDBGrid1.IniAttributes.FileName:=DMFrm.sAppPath+Application.Title+'2.ini';
    PengeluaranKGFrm.wwDBGrid1.IniAttributes.SectionName:=PengeluaranKGFrm.Caption+'1';
    PengeluaranKGFrm.wwDBGrid1.IniAttributes.Enabled:=True;
    PengeluaranKGFrm.wwDBGrid1.LoadFromIniFile;
    PengeluaranKGFrm.wwDBGrid2.IniAttributes.FileName:=DMFrm.sAppPath+Application.Title+'2.ini';
    PengeluaranKGFrm.wwDBGrid2.IniAttributes.SectionName:=PengeluaranKGFrm.Caption+'2';
    PengeluaranKGFrm.wwDBGrid2.IniAttributes.Enabled:=True;
    PengeluaranKGFrm.wwDBGrid2.LoadFromIniFile;
    DMFrm.ProcReadIni(Application.Title,PengeluaranKGFrm.Caption+'1',PengeluaranKGFrm.wwDBGrid1);
    DMFrm.ProcReadIni(Application.Title,PengeluaranKGFrm.Caption+'2',PengeluaranKGFrm.wwDBGrid2);
    PengeluaranKGFrm.wwDBSpinLine1.Value:=PengeluaranKGFrm.wwDBGrid1.RowHeightPercent;
    PengeluaranKGFrm.wwDBSpinLine2.Value:=PengeluaranKGFrm.wwDBGrid2.RowHeightPercent;

  end;

  PengeluaranKGFrm.Show;
end;

procedure TPengeluaranKGFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   DMFrm.ProcWtiteIni(Application.Title,Caption+'1',wwDBGrid1);
   DMFrm.ProcWtiteIni(Application.Title,Caption+'2',wwDBGrid2);
   Action:=caFree;
   PengeluaranKGFrm:=Nil;
end;

procedure TPengeluaranKGFrm.FormCreate(Sender: TObject);
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

procedure TPengeluaranKGFrm.BtnExportClick(Sender: TObject);
begin
  if QBrowse.Active then
  begin
     DMFrm.SaveDialog1.DefaultExt:='XLK';
     DMFrm.SaveDialog1.Filter:='Excel files (*.XLK)|*.XLK';
     DMFrm.SaveDialog1.FileName:=PanelHeader.Caption+' '+ vTglAwal.Text+' sd '+vTglAkhir.Text+'.xlK';
     wwDBGrid2.ExportOptions.TitleName:='TRANSAKSI KELUAR LAINNYA GW';
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

procedure TPengeluaranKGFrm.BtnOkClick(Sender: TObject);
var
  t1, t2, t3, t4, t5, t6 : real;
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
//      QBrowse.SQL.Text:='select * from '+cUserTabel+'v'+Name+'_2017'+
      QBrowse.SQL.Text:='select * from '+cUserTabel+'v'+Name+'4'+
        ' where tanggal>=:pawal and tanggal<=:pakhir and kd_transaksi=:kd_transaksi :porder';
  		QBrowse.SetVariable('pawal',Trunc(vTglAwal.Date));
  		QBrowse.SetVariable('pakhir',Trunc(vTglAkhir.Date)+1-1/86400);
			QBrowse.SetVariable('kd_transaksi',vkode);
  		QBrowse.SetVariable('porder',vorder);
//      ShowMessage(QBrowse.SQL.Text);

      // JUMLAH RESEP
      {QQTY_resep.Close;
      QQTY_resep.SetVariable('pawal',Trunc(vTglAwal.Date));
  		QQTY_resep.SetVariable('pakhir',Trunc(vTglAkhir.Date)+1-1/86400);
	  	QQTY_resep.SetVariable('kd_transaksi',vkode);
      QQTY_resep.Open;}
      //ShowMessage(QQTY_resep.SQL.Text);
      //ShowMessage(QQTY_resepjml_resep.asstring);
      // END JUMLAH RESEP

      QBrowse.Open;

      t1:=0;
      t2:=0;
      t3:=0;
      t4:=0;
      t5:=0;
      t6:=0;

      while not QBrowse.Eof do
      begin
        t1:=t1+QBrowseQTY1.AsFloat;
        t2:=t2+QBrowseQTY2.AsFloat;
        t3:=t3+QBrowseQTY6.AsFloat;
        t4:=t4+QBrowseQTY7.AsFloat;
        t5:=t5+QBrowseQTY3.AsFloat;
        t6:=t6+QBrowseQTY8.AsFloat;
        QBrowse.Next;
      end;
      QBrowse.EnableControls;
      wwDBGrid2.ColumnByName('QTY1').FooterValue:=FormatFloat('#,0.00;-#,0.00;-',t1);
      wwDBGrid2.ColumnByName('QTY2').FooterValue:=FormatFloat('#,0;-#,0;-',t2);
      wwDBGrid2.ColumnByName('QTY6').FooterValue:=FormatFloat('#,0.00;-#,0.00;-',t3);
      wwDBGrid2.ColumnByName('QTY7').FooterValue:=FormatFloat('#,0;-#,0;-',t4);
      wwDBGrid2.ColumnByName('QTY3').FooterValue:=FormatFloat('#,0.00;-#,0.00;-',t5);
      wwDBGrid2.ColumnByName('QTY8').FooterValue:=FormatFloat('#,0;-#,0;-',t6);
      LTotal.Caption:='Total : '+FormatFloat('#,0.00;-#,0.00;-',t1+t3+t5)+' Kg,   '+
        FormatFloat('#,0;-#,0;-',t2+t4+t6)+' Pcs';
      LTResep.Caption:=QQTY_resepjml_resep.AsString+'  Resep';
      LabelBanner.Caption:='Data : '+FormatFloat('#,#',QBrowse.RecordCount)+' Records';
    end;
    QBrowse.First;
end;

procedure TPengeluaranKGFrm.wwDBGrid2TitleButtonClick(Sender: TObject;
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

procedure TPengeluaranKGFrm.QBrowseAfterScroll(DataSet: TDataSet);
begin
  LabelBanner.Caption:='Record ke '+IntToStr(QBrowse.RecNo)+' dari '+FormatFloat('#,#',QBrowse.RecordCount)+' Records';
end;

procedure TPengeluaranKGFrm.BtnClose1Click(Sender: TObject);
begin
  Close;
end;

procedure TPengeluaranKGFrm.BtnClose2Click(Sender: TObject);
begin
  Close;
end;

procedure TPengeluaranKGFrm.vTglAwalChange(Sender: TObject);
begin
//  vTglAkhir.DateTime:=EndOfTheMonth(vTglAwal.Date);
  vTglAkhir.Date:=(VTglAwal.Date); 
end;

procedure TPengeluaranKGFrm.wwDBSpinLine2Change(Sender: TObject);
begin
    wwDBGrid2.RowHeightPercent:=Round(wwDBSpinLine2.Value);
end;

procedure TPengeluaranKGFrm.BtnFindClick(Sender: TObject);
var
  t1, t2, t3, t4, t5, t6 : real;
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

procedure TPengeluaranKGFrm.BtnOk2Click(Sender: TObject);
var
  t1, t2, t3, t4, t5, t6 : real;
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

      while not QBrowse.Eof do
      begin
        t1:=t1+QBrowseQTY1.AsFloat;
        t2:=t2+QBrowseQTY2.AsFloat;
        t3:=t3+QBrowseQTY6.AsFloat;
        t4:=t4+QBrowseQTY7.AsFloat;
        t5:=t5+QBrowseQTY3.AsFloat;
        t6:=t6+QBrowseQTY8.AsFloat;
        QBrowse.Next;
      end;
      wwDBGrid2.ColumnByName('QTY1').FooterValue:=FormatFloat('#,0.00;-#,0.00;-',t1);
      wwDBGrid2.ColumnByName('QTY2').FooterValue:=FormatFloat('#,0;-#,0;-',t2);
      wwDBGrid2.ColumnByName('QTY6').FooterValue:=FormatFloat('#,0.00;-#,0.00;-',t3);
      wwDBGrid2.ColumnByName('QTY7').FooterValue:=FormatFloat('#,0;-#,0;-',t4);
      wwDBGrid2.ColumnByName('QTY3').FooterValue:=FormatFloat('#,0.00;-#,0.00;-',t5);
      wwDBGrid2.ColumnByName('QTY8').FooterValue:=FormatFloat('#,0;-#,0;-',t6);
      LTotal.Caption:='Total : '+FormatFloat('#,0.00;-#,0.00;-',t1+t3+t5)+' Kg,   '+
        FormatFloat('#,0;-#,0;-',t2+t4+t6)+' Pcs';
      LabelBanner.Caption:='Data : '+FormatFloat('#,#',QBrowse.RecordCount)+' Records';
  end;

end;

procedure TPengeluaranKGFrm.ppHeaderBand1BeforePrint(Sender: TObject);
begin
  ppNo.AsInteger:=0;
end;

procedure TPengeluaranKGFrm.BtnPrintBrowseClick(Sender: TObject);
begin
  if vTglAwal.Date>vTglAkhir.DateTime then
    ShowMessage('Tgl. Akhir harus lebih besar dari Tgl. Awal !')
    else
    begin
      ppReportBrowse.Print;
    end;
end;

procedure TPengeluaranKGFrm.BtnDesign2Click(Sender: TObject);
begin
  ppDesigner1.ShowModal;
end;

procedure TPengeluaranKGFrm.ppTitleBand1BeforePrint(Sender: TObject);
begin
  ppNamaLaporan.Caption:=Caption;
 // ppNo2.AsInteger:=0;
  ppPeriode.Caption:=vTglAwal.Text+' s/d '+vTglAkhir.Text;
  DMFrm.QTime.Close;
  DMFrm.QTime.Open;
  ppUserCetak.Caption:=DMFrm.QTimeVUSER_CETAK.AsString;
end;

procedure TPengeluaranKGFrm.wwDBSpinLine1Change(Sender: TObject);
begin
    wwDBGrid1.RowHeightPercent:=Round(wwDBSpinLine1.Value);
end;

procedure TPengeluaranKGFrm.EditCariKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
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

procedure TPengeluaranKGFrm.TabSheet1Show(Sender: TObject);
begin
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
  cbTransaksi.Visible:=QTransaksiKD_TRANSAKSI.AsString='686';
  LTransaksi.Visible:=QTransaksiKD_TRANSAKSI.AsString='686';

if QTransaksiKD_TRANSAKSI.AsString='686' then
begin
    cbTransaksi.ItemIndex:=2;
    {cbtransaksi.Items.Clear;
    cbtransaksi.Items.Add('DARI PERSIAPAN');
    cbtransaksi.Items.Add('DARI TENUN');}
end;

end;

procedure TPengeluaranKGFrm.TabSheet1Exit(Sender: TObject);
begin
  EditCari.Text:='';
end;

procedure TPengeluaranKGFrm.ppDetailBand2BeforePrint(Sender: TObject);
begin
//  ppNo2.AsInteger:=ppNo2.AsInteger+1;
  ppNomer.Caption:=IntToStr(ppDBQDetail.RecordNo+1);
end;

procedure TPengeluaranKGFrm.ppFooterBand2BeforePrint(Sender: TObject);
begin
//  ppHalInput.Visible:=ppReportInput.PageNo>1;
  DMFrm.QTime.Close;
  DMFrm.QTime.Open;
  ppUserCetak2.Caption:=DMFrm.QTimeVUSER_CETAK.AsString;
end;

procedure TPengeluaranKGFrm.BtnPrintInputClick(Sender: TObject);
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

procedure TPengeluaranKGFrm.QMasterBeforePost(DataSet: TDataSet);
begin
  vshift:=QMasterSHIFT.AsString;
  vgrup:=QMasterGRUP.AsString;
  vdiv:=QMasterKD_DIV.AsString;
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

procedure TPengeluaranKGFrm.wwDBGrid1Enter(Sender: TObject);
begin
{  if QMaster.State<>dsBrowse then
  try
    QMaster.Post;
  except
    ShowMessage('Maaf, ada masalah di pengisian MASTER !');
  end; }
 if QMaster.State<>dsBrowse then
        try
          QMaster.Post;
        except
            on E : Exception do
            begin
              ShowMessage(E.Message);
            end;
        end;
  {if QDETAIL.State<>ds_OdDetail then
  try
    QMaster.Post;
  except
    ShowMessage('Maaf, ada item lebih dari satu !');
  end;  }

end;

procedure TPengeluaranKGFrm.wwDBGrid2DblClick(Sender: TObject);
begin
  TabSheet1.Show;
end;

procedure TPengeluaranKGFrm.Label5Click(Sender: TObject);
begin
  if DMFrm.FontDialog1.Execute then
  begin
    wwDBGrid2.Font.Name:=DMFrm.FontDialog1.Font.Name;
    wwDBGrid2.Font.Size:=DMFrm.FontDialog1.Font.Size;
    wwDBGrid2.Font.Color:=DMFrm.FontDialog1.Font.Color;
    wwDBGrid2.Font.Style:=DMFrm.FontDialog1.Font.Style;
  end;
end;

procedure TPengeluaranKGFrm.LookItemEnter(Sender: TObject);
begin
  (sender as TwwDBLookupComboDlg).LookupTable.Open;
end;

procedure TPengeluaranKGFrm.QMasterBeforeDelete(DataSet: TDataSet);
begin
  if QMasterISPOST.AsString='1' then
  begin
     ShowMessage('Maaf, sudah di-POST !, tidak bisa diubah...');
     Abort;
  end;
end;

procedure TPengeluaranKGFrm.QMasterNewRecord(DataSet: TDataSet);
begin
  if vshift<>'' then QMasterSHIFT.AsString:=vshift else QMasterSHIFT.AsString := '0';
  if vgrup<>'' then QMasterGRUP.AsString:=vgrup else QMasterGRUP.AsString := 'E';
  if vdiv<>'' then QMasterKD_DIV.AsString:=vshift else QMasterKD_DIV.AsString := '220';
  QMasterKD_TRANSAKSI.AsString:=vkode;
  QMasterTGL.AsDateTime:=DMFrm.QTimeJAM.AsDateTime;
  QMasterISPOST.AsString:='0';
  QMasterTTD1.AsString:=QTransaksiTTD1.AsString;
  QMasterTTD2.AsString:=QTransaksiTTD2.AsString;
  QMasterTTD3.AsString:=QTransaksiTTD3.AsString;
  QMasterTTD4.AsString:=QTransaksiTTD4.AsString;

  wwDBDateTimePicker1.Enabled:=True;
  cbTransaksi.Enabled:=True;

  QMasterSTATUS.AsString:='OUT';
  QMasterSHIFT.AsString:='0';
  QMasterGRUP.AsString:='E';
  QMasterKD_DIV.AsString:='220';
  wwDBEdit1.SetFocus;
  QItem.Close;

  cbTransaksi.Visible:=QTransaksiKD_TRANSAKSI.AsString='686';
  LTransaksi.Visible:=QTransaksiKD_TRANSAKSI.AsString='686';

if QTransaksiKD_TRANSAKSI.AsString='686' then
begin
    cbTransaksi.ItemIndex:=2;
    QMasterNO_RESEP.AsString:='KELUAR PROSES';
end;

////MAA 11-01-2020 {TRANSAKSI KOREKSI BISA ENTRY QTY PCS & KG
if (QTransaksiKD_TRANSAKSI.AsString='686') and (cbtransaksi.Text='KOREKSI') then
   wwDBGrid1.ColumnByName('QTY3').ReadOnly:=False
else
   wwDBGrid1.ColumnByName('QTY3').ReadOnly:=False;
//   wwDBGrid1.ColumnByName('QTY3').ReadOnly:=True;

wwDBGrid1.Refresh;
wwDBGrid1.RefreshDisplay;

end;

procedure TPengeluaranKGFrm.QTransaksiBeforeOpen(DataSet: TDataSet);
begin
  QTransaksi.DeclareVariable('kd_transaksi', otString);
  QTransaksi.SQL.Text:='select a.* from '+cUserTabel+'vtransaksi a where a.kd_transaksi=:kd_transaksi';
  QTransaksi.SetVariable('kd_transaksi',vkode);
end;

procedure TPengeluaranKGFrm.ppPageStyle1BeforePrint(Sender: TObject);
begin
 // ppNo2.AsInteger:=0;
end;

procedure TPengeluaranKGFrm.Label14Click(Sender: TObject);
begin
  if DMFrm.FontDialog1.Execute then
  begin
    wwDBGrid1.Font.Name:=DMFrm.FontDialog1.Font.Name;
    wwDBGrid1.Font.Size:=DMFrm.FontDialog1.Font.Size;
    wwDBGrid1.Font.Color:=DMFrm.FontDialog1.Font.Color;
    wwDBGrid1.Font.Style:=DMFrm.FontDialog1.Font.Style;
  end;

end;

procedure TPengeluaranKGFrm.FormCloseQuery(Sender: TObject;
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

procedure TPengeluaranKGFrm.QMasterAfterPost(DataSet: TDataSet);
begin
  PageControl1.Pages[1].TabVisible:=QMaster.IsEmpty or (QMasterISPOST.AsString='1');
  PageControl1.Pages[2].TabVisible:=QMaster.IsEmpty or (QMasterISPOST.AsString='1');
  if QMasterISPOST.AsString='1' then
  begin
      QProc_Update_PO.Close;
      QProc_Update_PO.Execute;
  end;
end;

procedure TPengeluaranKGFrm.QMasterBeforeInsert(DataSet: TDataSet);
begin
  if DataSet['ISPOST']='0' then
  begin
    if MessageDlg('Data belum di-POSTING, batalkan ?', mtWarning, [mbYes, mbNo],0)=mrYes then
      else
        Abort;
  end;
end;

procedure TPengeluaranKGFrm.ppGroupHeaderBand1BeforePrint(Sender: TObject);
begin
  ppNo.AsInteger:=ppNo.AsInteger+1;
end;

procedure TPengeluaranKGFrm.QProc_Update_POBeforeQuery(Sender: TOracleQuery);
begin
  QProc_Update_PO.SetVariable('NO_PO',QMasterNO_BUKTI.AsString);
end;

procedure TPengeluaranKGFrm.QLokasiBeforeOpen(DataSet: TDataSet);
begin
  QLokasi.DeclareVariable('vjns_lokasi',otString);
  QLokasi.SQL.Text:='select * from '+cUserTabel+'sub_lokasi where kd_lokasi=:vjns_lokasi';
  QLokasi.SetVariable('vjns_lokasi',vjns_lokasi);
end;

procedure TPengeluaranKGFrm.LookLokasiEnter(Sender: TObject);
begin
  QLokasi.Open;
end;

procedure TPengeluaranKGFrm.QItemBeforeQuery(Sender: TOracleDataSet);
begin
  if vjns_brg<>'' then
  begin
    QItem.DeclareVariable('vjns_brg',otString);
    QItem.DeclareVariable('TGL',otDate);
    if (vjns_lokasi='41') then
  	QItem.SQL.Text:='select a.kd_item, a.nama_item, d.warna, b.kd_warna, b.no_batch, a.kd_satuan, b.kd_sub_lokasi, a.rasio,'+
      ' sum(b.qty_in-b.qty_out) as qty, sum(b.qty_in2-b.qty_out2) as qty2'+
      ' from '+cUserTabel+'item a, '+cUserTabel+'gd_stok2 b, '+cUserTabel+'sub_lokasi c, '+cUserTabel+'warna d'+
      ' where a.kd_item=b.kd_item and b.kd_warna=d.kd_warna and b.kd_sub_lokasi=c.kd_sub_lokasi and c.kd_lokasi=''41'' and c.jns_lokasi=''LOKASI'' and '+
      ' a.kd_jns_item =:vjns_brg and b.tgl<=:tgl'+
      ' group by a.kd_item, a.nama_item, d.warna, b.kd_warna, b.no_batch, a.kd_satuan, b.kd_sub_lokasi, a.rasio'+
      ' having sum(b.qty_in2-b.qty_out2)>0 order by a.nama_item, d.warna, b.no_batch :myparam'
//{azmi}      ' having sum(b.qty_in-b.qty_out)>0 order by a.nama_item, d.warna, b.no_batch :myparam'
      else
    if (vjns_lokasi='42') then
  	QItem.SQL.Text:='select a.kd_item, a.nama_item, d.warna, b.kd_warna, b.no_batch, a.kd_satuan, b.kd_sub_lokasi, a.rasio,'+
      ' sum(b.qty_in-b.qty_out) as qty, sum(b.qty_in2-b.qty_out2) as qty2'+
      ' from '+cUserTabel+'item a, '+cUserTabel+'gd_stok2 b, '+cUserTabel+'sub_lokasi c, '+cUserTabel+'warna d'+
      ' where a.kd_item=b.kd_item and b.kd_warna=d.kd_warna and b.kd_sub_lokasi=c.kd_sub_lokasi and  c.kd_lokasi=''42''and c.jns_lokasi=''LOKASI'' and '+
      ' a.kd_jns_item =:vjns_brg and b.tgl<=:tgl'+
      ' group by a.kd_item, a.nama_item, d.warna, b.kd_warna, b.no_batch, a.kd_satuan, b.kd_sub_lokasi, a.rasio'+
      ' having sum(b.qty_in2-b.qty_out2)>0 order by a.nama_item, d.warna, b.no_batch :myparam'
//{azmi}      ' having sum(b.qty_in-b.qty_out)>0 order by a.nama_item, d.warna, b.no_batch :myparam'
      else
         //QItem.SQL.Text:='Select  a.kd_item, a.nama_item, a.warna, a.kd_warna, a.no_batch, a.kd_satuan, a.kd_sub_lokasi, a.rasio, a.qty, a.qty2 from ipisma_db3.vitemkeluar_gwfrm a where a.kd_jns_item =:vjns_brg and a.tgl<=:tgl';
         //ShowMessage(QItem.SQL.Text);
        QItem.SetVariable('vjns_brg',vjns_brg);
        QItem.SetVariable('tgl',Trunc(QMasterTGL.AsDateTime)+1-1/86400);

//=============================================================================================================================================        

      //MAA 10-01-2020
    	QItem.SQL.Text:='select * from (select a.kd_sub_kel, a.kd_item, a.nama_item, d.warna, b.kd_warna, a.kd_satuan, b.kd_sub_lokasi, a.rasio,'+
                      ' sum(b.qty_in-b.qty_out) as qty, sum(b.qty_in2-b.qty_out2) as qty2'+
                      ' from '+cUserTabel+'item a, '+cUserTabel+'gd_stok4 b, '+cUserTabel+'sub_lokasi c, '+cUserTabel+'vi_warna_baru_2017 d'+
                      ' where a.kd_item=b.kd_item and b.kd_warna=d.kd_warna and b.kd_sub_lokasi=c.kd_sub_lokasi and c.jns_lokasi=''LOKASI'' and '+
                      ' a.kd_jns_item =:vjns_brg and trunc(b.tgl)<=:tgl'+
                      ' group by a.kd_sub_kel, a.kd_item, a.nama_item, d.warna, b.kd_warna, a.kd_satuan, b.kd_sub_lokasi, a.rasio'+
                      ' having round(sum(b.qty_in-b.qty_out),2)<>0 OR round(sum(b.qty_in2-b.qty_out2),2)<>0'+
//                      ' having (sum(b.qty_in-b.qty_out) + sum(b.qty_in2-b.qty_out2)) <>0'+
//                      ' having sum(b.qty_in-b.qty_out)>0 and sum(b.qty_in2-b.qty_out2)>0'+
//                      ' order by a.kd_sub_kel, a.nama_item, d.warna
                      ' ) :myparam';
      //MAA 10-01-2020

     //MAA 10-01-2020
   { 	QItem.SQL.Text:='select * from (select a.kd_sub_kel, a.kd_item, a.nama_item, d.warna, b.kd_warna, a.kd_satuan, b.kd_sub_lokasi, a.rasio,'+
//                      ' round(sum(b.qty_in-b.qty_out),2) as qty, round(sum(b.qty_in2-b.qty_out2),2) as qty2'+
                      ' round(sum(nvl(b.qty_in,0)-nvl(b.qty_out,0)),2) as qty, round(sum(nvl(b.qty_in2,0)-nvl(b.qty_out2,0)),2) as qty2'+
                      ' from '+cUserTabel+'item a, '+cUserTabel+'gd_stok4 b, '+cUserTabel+'sub_lokasi c, '+cUserTabel+'vi_warna_baru_2017 d'+
                      ' where a.kd_item=b.kd_item and b.kd_warna=d.kd_warna and b.kd_sub_lokasi=c.kd_sub_lokasi and c.jns_lokasi=''LOKASI'' and '+
                      ' a.kd_jns_item =:vjns_brg and trunc(b.tgl)<=:tgl'+
                      ' group by a.kd_sub_kel, a.kd_item, a.nama_item, d.warna, b.kd_warna, a.kd_satuan, b.kd_sub_lokasi, a.rasio'+
//                      ' having (sum(b.qty_in-b.qty_out) + sum(b.qty_in2-b.qty_out2)) >0'+
                      ' having round(sum(nvl(b.qty_in,0)-nvl(b.qty_out,0)),2)>0 OR round(sum(nvl(b.qty_in2,0)-nvl(b.qty_out2,0)),2)>0'+
                      ' order by a.kd_sub_kel, a.nama_item, d.warna) :myparam';     }
      //MAA 10-01-2020

      //MAA 21-01-2019
{    	QItem.SQL.Text:='select * from (select a.kd_item, a.nama_item, d.warna, b.kd_warna, b.no_batch, a.kd_satuan, b.kd_sub_lokasi, a.rasio,'+
                      ' round(sum(b.qty_in-b.qty_out),2) as qty, round(sum(b.qty_in2-b.qty_out2),2) as qty2'+
                      ' from '+cUserTabel+'item a, '+cUserTabel+'gd_stok4 b, '+cUserTabel+'sub_lokasi c, '+cUserTabel+'vi_warna_baru_2017 d'+
                      ' where a.kd_item=b.kd_item and b.kd_warna=d.kd_warna and b.kd_sub_lokasi=c.kd_sub_lokasi and c.jns_lokasi=''LOKASI'' and '+
                      ' a.kd_jns_item =:vjns_brg and trunc(b.tgl)<=:tgl'+
                      ' group by a.kd_item, a.nama_item, d.warna, b.kd_warna, b.no_batch, a.kd_satuan, b.kd_sub_lokasi, a.rasio'+
                      ' having sum(b.qty_in-b.qty_out)>0 and sum(b.qty_in2-b.qty_out2)>0'+
                      ' order by a.nama_item, d.warna, b.no_batch) :myparam'; }
      //MAA 21-01-2019

//=============================================================================================================================================
        ///OLD
 {   	QItem.SQL.Text:='select * from (select a.kd_item, a.nama_item, d.warna, b.kd_warna, b.no_batch, a.kd_satuan, b.kd_sub_lokasi, a.rasio,'+
      ' sum(b.qty_in-b.qty_out) as qty, sum(b.qty_in2-b.qty_out2) as qty2'+
      ' from '+cUserTabel+'item a, '+cUserTabel+'gd_stok4 b, '+cUserTabel+'sub_lokasi c, '+cUserTabel+'vi_warna_baru_2017 d'+
      ' where a.kd_item=b.kd_item and b.kd_warna=d.kd_warna and b.kd_sub_lokasi=c.kd_sub_lokasi and c.jns_lokasi=''LOKASI'' and '+
          //  ' a.kd_jns_item =:vjns_brg and substr(trunc(b.tgl),7,4)>=substr(trunc(:tgl),7,4) and b.tgl<=:tgl'+
       'a.kd_jns_item =:vjns_brg and ((trunc(b.tgl))'+'>=(to_date('+'''01/01/2017'''+','+'''dd/mm/yyyy'''+'))) and b.tgl<=:tgl'+

      ' group by a.kd_item, a.nama_item, d.warna, b.kd_warna, b.no_batch, a.kd_satuan, b.kd_sub_lokasi, a.rasio'+
      ' having sum(b.qty_in2-b.qty_out2)>0 order by a.nama_item, d.warna, b.no_batch) :myparam';
  }
       // showmessage (qitem.SQL.Text);
      //{azmi}      ' having sum(b.qty_in-b.qty_out)>0 order by a.nama_item, d.warna, b.no_batch) :myparam';
     end;
end;

procedure TPengeluaranKGFrm.LookItemCloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin
  if modified then
  BEGIN
    QDetailQTY8.AsFloat:=0;
    QDetailQTY3.AsFloat:=0;
    QDetailKETERANGAN.AsString:=QItemNAMA_ITEM.AsString;
    QDetailRASIO.AsFloat:=QItemRASIO.AsFloat;
    QDetailQTY1.AsFloat:=QItemQTY.AsFloat;
    QDetailQTY6.AsFloat:=QItemQTY2.AsFloat;
    QDetailKD_WARNA.AsString:=QItemKD_WARNA.AsString;
    QDetailKD_SUB_LOKASI2.AsString:=QItemKD_SUB_LOKASI.AsString;
    QDetailNO_BATCH.AsString:='-';//QItemNO_BATCH.AsString; MAA 10-01-2020 {HSL MEETING '-'}
  END;
end;

procedure TPengeluaranKGFrm.QDetailNewRecord(DataSet: TDataSet);
begin
  QDetailNO_BUKTI.AsString:=vresep;
  QDetailSTATUS.AsString:=varah;

  QDetailQTY8.AsFloat:=0;
  QDetailQTY3.AsFloat:=0;
  wwDBDateTimePicker1.Enabled:=False;
  cbTransaksi.Enabled:=False;

  QDetailIBUKTI.AsInteger:=QMasterIBUKTI.AsInteger;
  QDetailKD_SUB_LOKASI.AsString:=vjns_lokasi+'-10000';
 //arif
 // if Dmfrm.QResep.Active then
 // begin
  //  QDetailNO_BUKTI.AsString:=Dmfrm.Qresepno_resep.AsString;
   // QDetailSTATUS.AsString:=QLookSubBagianID_SUB_BAG.AsString;
 // end;

//  QDetailNO_BUKTI.AsString:=QMasterNO_BUKTI.AsString;
//  QDetailSTATUS.AsString:='LUSI';
end;

procedure TPengeluaranKGFrm.QDetailBeforePost(DataSet: TDataSet);
begin
  varah:=QDetailSTATUS.AsString;
  vresep:=QDetailNO_BUKTI.AsString;

//////MAA 13-01-2020
if (QTransaksiKD_TRANSAKSI.AsString='686') and (cbtransaksi.Text='KOREKSI') then /////////////
BEGIN
  if QDetailKD_ITEM.AsString='' then
     begin
        ShowMessage('BARANG harus diisi !');
        Abort;
     end
     else
  if QDetailSTATUS.AsString='' then
     begin
        ShowMessage('ARAH harus diisi !');
        Abort;
     end
     else
{azmi}
  if QDetailKD_SUB_LOKASI.AsString='' then
     begin
        ShowMessage('LOKASI harus diisi !');
        Abort;
     end;
  if QDetailQTY8.AsFloat>QDetailQTY6.AsFloat then
  begin
        ShowMessage('Tidak boleh lebih dari Stok Gudang !');
        Abort;
  end;
END
ELSE
BEGIN
/////////////

  if (QDetailQTY3.AsFloat=0) and(QDetailQTY8.AsFloat<>0) and (QDetailQTY6.AsFloat>0) then
  begin
//    QDetailQTY3.AsFloat:=(QDetailQTY1.AsFloat/QDetailQTY6.AsFloat)*QDetailQTY8.AsFloat;

//    QDetailQTY3.AsFloat:=QDetailRASIO.AsFloat*QDetailQTY8.AsFloat; permintaan PPC

//    QDetailRASIO.AsFloat:=(QDetailQTY1.AsFloat/QDetailQTY6.AsFloat);
  end
    else
  if (QDetailQTY3.AsFloat<>0) and (QDetailQTY1.AsFloat>0) And (QDetailQTY6.AsFloat=0) then
  begin
    QDetailQTY8.AsFloat:=(QDetailQTY6.AsFloat);
  //  QDetailRASIO.AsFloat:=(QDetailQTY1.AsFloat/QDetailQTY6.AsFloat);
  end
  else
  if (QDetailQTY3.AsFloat<>0) and(QDetailQTY8.AsFloat=0) and (QDetailQTY1.AsFloat>0) and (QDetailQTY6.AsFloat<>0) then
  begin
//    QDetailQTY8.AsFloat:=(QDetailQTY3.AsFloat*QDetailQTY6.AsFloat)/QDetailQTY1.AsFloat;

//    QDetailQTY8.AsFloat:=QDetailRASIO.AsFloat/QDetailQTY1.AsFloat;      permintaan PPC

//    QDetailRASIO.AsFloat:=(QDetailQTY1.AsFloat/QDetailQTY6.AsFloat);
  end
  else
  if (QDetailQTY6.AsFloat>0) then
  begin
//    QDetailQTY3.AsFloat:=(QDetailQTY1.AsFloat/QDetailQTY6.AsFloat)*QDetailQTY8.AsFloat;

//    QDetailQTY3.AsFloat:=QDetailRASIO.AsFloat*QDetailQTY8.AsFloat; permintaan PPC

//    QDetailRASIO.AsFloat:=(QDetailQTY1.AsFloat/QDetailQTY6.AsFloat);
  end
  else
  begin
//    QDetailQTY3.AsFloat:=QDetailRASIO.AsFloat*QDetailQTY8.AsFloat  permnitaan PPC
  end;


  
  if QDetailKD_ITEM.AsString='' then
     begin
        ShowMessage('BARANG harus diisi !');
        Abort;
     end
     else
  if QDetailQTY3.Asfloat=0 then
     begin
        ShowMessage('QTY harus diisi !');
        Abort;
     end
     else
{azmi}
  if QDetailSTATUS.AsString='' then
     begin
        ShowMessage('ARAH harus diisi !');
        Abort;
     end
     else
{azmi}
  if QDetailKD_SUB_LOKASI.AsString='' then
     begin
        ShowMessage('LOKASI harus diisi !');
        Abort;
     end;
  if QDetailQTY8.AsFloat>QDetailQTY6.AsFloat then
  begin
        ShowMessage('Tidak boleh lebih dari Stok Gudang !');
        Abort;
  end;

//////
END;
/////

end;

procedure TPengeluaranKGFrm.LookResepEnter(Sender: TObject);
begin
  DMFrm.QResep.Open;
end;

procedure TPengeluaranKGFrm.LookResepUserButton1Click(Sender: TObject;
  LookupTable: TDataSet);
begin
  DMFrm.QResep.Close;
  DMFrm.QResep.Open;
end;

procedure TPengeluaranKGFrm.QDetailBeforeOpen(DataSet: TDataSet);
begin

//arif
//  Qdetail.SetVariable('no_bukti',vresep);
end;

procedure TPengeluaranKGFrm.QDetailBeforeEdit(DataSet: TDataSet);
begin
  if QMasterISPOST.AsString='1' then
  begin
     ShowMessage('Maaf, sudah di-POST !, tidak bisa diubah...');
     Abort;
  end;
end;

procedure TPengeluaranKGFrm.CheckBox1Click(Sender: TObject);
begin
  if CheckBox1.Checked then
  begin
      QDetail.Close;
      QDetail.SetVariable('myparam',' order by a.no_bukti');
      QDetail.Open;
  end
  else
  begin
      QDetail.Close;
      QDetail.SetVariable('myparam',' order by a.ibukti_detail');
      QDetail.Open;
  end;
end;

procedure TPengeluaranKGFrm.LookItemUserButton1Click(Sender: TObject;
  LookupTable: TDataSet);
begin
  if InputQuery('Filter Item','Item : ',vfilter_item) then
  begin
    QItem.Close;
    QItem.DeclareVariable('myparam',otSubst);
//    QItem.SetVariable('myparam',' where (kd_item like ''%'+vfilter_item+'%'') and (warna like ''%'+vfilter_warna+'%'')');
    QItem.SetVariable('myparam',' where ((kd_sub_kel like ''%'+vfilter_item+'%'') or (nama_item like ''%'+vfilter_item+'%'')) and (warna like ''%'+vfilter_warna+'%'')');
    QItem.Open;
  end;
end;

procedure TPengeluaranKGFrm.LookItemUserButton2Click(Sender: TObject;
  LookupTable: TDataSet);
begin
  if InputQuery('Filter Warna','Warna : ',vfilter_warna) then
  begin
    QItem.Close;
    QItem.DeclareVariable('myparam',otSubst);
//    QItem.SetVariable('myparam',' where (kd_item like ''%'+vfilter_item+'%'') and (warna like ''%'+vfilter_warna+'%'')');
//    QItem.SetVariable('myparam',' where (nama_item like ''%'+vfilter_item+'%'') and (warna like ''%'+vfilter_warna+'%'')');
    QItem.SetVariable('myparam',' where ((kd_sub_kel like ''%'+vfilter_item+'%'') or (nama_item like ''%'+vfilter_item+'%'')) and (warna like ''%'+vfilter_warna+'%'')');
    QItem.Open;
  end;
end;

procedure TPengeluaranKGFrm.wwDBGrid1UpdateFooter(Sender: TObject);
begin
  QTotal.Close;
  QTotal.SetVariable('ibukti',QMasterIBUKTI.AsInteger);
  QTotal.Open;
  wwDBGrid1.ColumnByName('QTY6').FooterValue:=FormatFloat('0,0;(0,0);-',QTotalPCS.AsFloat);
  wwDBGrid1.ColumnByName('QTY1').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QTotalKG.AsFloat);
  wwDBGrid1.ColumnByName('QTY8').FooterValue:=FormatFloat('0,0;(0,0);-',QTotalPCS2.AsFloat);
  wwDBGrid1.ColumnByName('QTY3').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QTotalKG2.AsFloat);

end;

procedure TPengeluaranKGFrm.LookResepUserButton2Click(Sender: TObject;
  LookupTable: TDataSet);
Var
  vfilter : String;
begin
DMFrm.QResep.Open;
  if InputQuery('Filter','Filter : ',vfilter)then
  begin
    DMFrm.QResep.Close;
    DMFrm.QResep.SetVariable('myparam',' (no_resep like ''%'+vfilter+'%'')');
    DMFrm.QResep.Open;
  end;
end;

procedure TPengeluaranKGFrm.vTglAkhirChange(Sender: TObject);
begin
  if VTglAwal.Date>vTglAkhir.Date then
  begin
      ShowMessage('Tanggal Akhir harus Lebih Besar atau Sama Dengan Tanggal Awal !');
      vTglAkhir.Date:=VTglAwal.Date;
  end;
end;

procedure TPengeluaranKGFrm.wwDBGrid1CalcCellColors(Sender: TObject;
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

procedure TPengeluaranKGFrm.QItemCalcFields(DataSet: TDataSet);
begin
//QItemRASIO2.AsFloat:=QItemQTY.AsFloat/QItemQTY2.AsFloat;
end;

procedure TPengeluaranKGFrm.cbTransaksiCloseUp(Sender: TwwDBComboBox;
  Select: Boolean);
begin
////MAA 11-01-2020 {TRANSAKSI KOREKSI BISA ENTRY QTY PCS & KG
{if (QTransaksiKD_TRANSAKSI.AsString='686') and (cbtransaksi.Text='KOREKSI') then
   wwDBGrid1.ColumnByName('QTY3').ReadOnly:=False
else
   wwDBGrid1.ColumnByName('QTY3').ReadOnly:=True;

wwDBGrid1.Refresh;
wwDBGrid1.RefreshDisplay;   }

end;

procedure TPengeluaranKGFrm.QMasterAfterDelete(DataSet: TDataSet);
begin

  wwDBDateTimePicker1.Enabled:=False;
  cbTransaksi.Enabled:=False;

end;

procedure TPengeluaranKGFrm.QDetailQTY8Change(Sender: TField);
begin
//MAA 13-01-2020
 //   QDetailQTY3.AsFloat:=QDetailRASIO.AsFloat*QDetailQTY8.AsFloat;

end;

end.
