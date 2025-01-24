unit HasilSoftCones;

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
  THasilSoftConesFrm = class(TForm)
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
    QItemSATUAN: TStringField;
    LookItem: TwwDBLookupComboDlg;
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
    ppDetailBand1: TppDetailBand;
    ppDBText8: TppDBText;
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
    QItemRASIO: TFloatField;
    QDetailRASIO: TFloatField;
    QDetailKD_SATUAN: TStringField;
    QItemKD_SATUAN: TStringField;
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
    QBrowseJAM2: TDateTimeField;
    QBrowseSHIFTGRUP: TStringField;
    QBrowseGRUP: TStringField;
    RadioGroup1: TRadioGroup;
    CBPreview: TCheckBox;
    ppLabel12: TppLabel;
    ppDBText5: TppDBText;
    ppLabel18: TppLabel;
    ppLabel30: TppLabel;
    ppDBText9: TppDBText;
    QLokasiKD_BENANG: TStringField;
    QDetailMESIN: TStringField;
    QLokasiKPS: TFloatField;
    QDetailEFF: TFloatField;
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
    ppLabel13: TppLabel;
    ppLabel21: TppLabel;
    ppLabel23: TppLabel;
    ppLabel28: TppLabel;
    ppLabel1: TppLabel;
    ppLabel19: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppDBText22: TppDBText;
    ppDBText30: TppDBText;
    ppDBMemo1: TppDBMemo;
    ppDBText11: TppDBText;
    ppDBText18: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppFooterBand2: TppFooterBand;
    ppUserCetak2: TppLabel;
    ppDBText41: TppDBText;
    ppSummaryBand2: TppSummaryBand;
    ppLabel29: TppLabel;
    ppDBMemo2: TppDBMemo;
    ppPageStyle1: TppPageStyle;
    raCodeModule1: TraCodeModule;
    QBrowseEFF_MESIN: TFloatField;
    QDetailQTY5: TFloatField;
    QDetailQTY6: TFloatField;
    QDetailOPR_INSERT: TStringField;
    QMasterQTY_RESEP: TFloatField;
    wwDBEdit2: TwwDBEdit;
    Label12: TLabel;
    Label13: TLabel;
    QDetailJAM1: TDateTimeField;
    QItemRASIO2: TFloatField;
    QDetailRASIO2: TFloatField;
    QDetailQTY_STANDAR: TFloatField;
    QDetailSTD_PSN: TFloatField;
    ppDBText29: TppDBText;
    ppLabel31: TppLabel;
    QBrowseQTY_STD: TFloatField;
    QBrowseSTD_PSN: TFloatField;
    ppDBText31: TppDBText;
    ppLabel34: TppLabel;
    QBrowseIBUKTI: TFloatField;
    ppDBText38: TppDBText;
    ppDBText34: TppDBText;
    ppDBText35: TppDBText;
    ppDBText36: TppDBText;
    ppDBText37: TppDBText;
    ppDBText32: TppDBText;
    ppDBText40: TppDBText;
    ppDBText33: TppDBText;
    ppDBText39: TppDBText;
    ppLine2: TppLine;
    ppLine1: TppLine;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppVariable1: TppVariable;
    ppLabel36: TppLabel;
    QTotal: TOracleDataSet;
    QTotalKG: TFloatField;
    QMasterTGL_INSERT: TDateTimeField;
    QMasterOPR_INSERT: TStringField;
    Label16: TLabel;
    DBText4: TDBText;
    DBText2: TDBText;
    Label17: TLabel;
    QDetailKD_ITEM2: TStringField;
    QBrowseNO_LOT: TStringField;
    QBrowseOPR_INSERT: TStringField;
    QTotalKRAT: TFloatField;
    QTotalPCS: TFloatField;
    QBrowseSPEED_PER_MNT: TFloatField;
    QBrowseeffisiensi: TFloatField;
    QBrowseSPEED_PER_MNT2: TFloatField;
    QTransaksiDOC_ISO: TStringField;
    ppDBQTransaksippField19: TppField;
    ppLabel37: TppLabel;
    ppDBText51: TppDBText;
    Label18: TLabel;
    QDetailQTY7: TFloatField;
    QDetailQTY8: TFloatField;
    QBrowseRASIO: TFloatField;
    QBrowseRASIO2: TFloatField;
    QDetailRASIO3: TFloatField;
    QBrowseRASIO3: TFloatField;
    QItemQTY: TFloatField;
    QItemQTY2: TFloatField;
    QBrowseRPM: TStringField;
    QItemNew: TOracleDataSet;
    QProc_getStok: TOracleQuery;
    QItemNewNAMA_ITEM: TStringField;
    QItemNewKD_ITEM: TStringField;
    QItemNewSATUAN: TStringField;
    QItemNewRASIO: TFloatField;
    QItemNewRASIO2: TFloatField;
    QItemNewKD_SUB_KEL: TStringField;
    OracleDataSet1: TOracleDataSet;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    FloatField3: TFloatField;
    FloatField4: TFloatField;
    StringField4: TStringField;
    QItemNewQTY: TFloatField;
    QItemNewQTY2: TFloatField;
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
//    procedure ppPageStyle1BeforePrint(Sender: TObject);
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
    procedure QDetailCalcFields(DataSet: TDataSet);
    procedure ppDetailBand1BeforePrint(Sender: TObject);
    procedure wwDBGrid1UpdateFooter(Sender: TObject);
    procedure LookItemUserButton1Click(Sender: TObject;
      LookupTable: TDataSet);
    procedure QBrowseCalcFields(DataSet: TDataSet);
    procedure wwDBGrid2UpdateFooter(Sender: TObject);
    procedure wwDBGrid1CalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure QMasterAfterDelete(DataSet: TDataSet);
    procedure wwDBDateTimePicker1Change(Sender: TObject);
    procedure QMasterTGLChange(Sender: TField);
    procedure QItemNewBeforeQuery(Sender: TOracleDataSet);
  //  procedure ppNo2Print(Sender: TObject);
  private
    { Private declarations }
    vshift, vgrup, vorder, vfilter, SelectedFont, vopr, vkode, vjns_brg, vjns_lokasi, vkd_benang : String;
  public
    { Public declarations }

  end;

var
  HasilSoftConesFrm: THasilSoftConesFrm;

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
    HasilSoftConesFrm:=THasilSoftConesFrm.Create(Application);
    HasilSoftConesFrm.PageControl1.ActivePageIndex:=1;
    if not DMFrm.cHakInput then
    begin
       HasilSoftConesFrm.QMaster.ReadOnly:=True;
       HasilSoftConesFrm.QDetail.ReadOnly:=True;
    end;
    mychar:=pjudul;
    Delete(mychar,Pos('&',mychar),1);
    pjudul:=mychar;
    HasilSoftConesFrm.Caption:=UpperCase(pjudul);
    HasilSoftConesFrm.vkode:=pkode;
    HasilSoftConesFrm.vjns_lokasi:=pjns_lokasi;
    HasilSoftConesFrm.vjns_brg:=pjns_brg;
    HasilSoftConesFrm.QTransaksi.Open;

    HasilSoftConesFrm.PanelHeader.Caption:=HasilSoftConesFrm.QTransaksiKD_TRANSAKSI.AsString+'. '+HasilSoftConesFrm.QTransaksiNAMA_TRANSAKSI.AsString;
    HasilSoftConesFrm.wwDBGrid1.IniAttributes.FileName:=DMFrm.sAppPath+Application.Title+'2.ini';
    HasilSoftConesFrm.wwDBGrid1.IniAttributes.SectionName:=HasilSoftConesFrm.Caption+'1';
    HasilSoftConesFrm.wwDBGrid1.IniAttributes.Enabled:=True;
    HasilSoftConesFrm.wwDBGrid1.LoadFromIniFile;
    HasilSoftConesFrm.wwDBGrid2.IniAttributes.FileName:=DMFrm.sAppPath+Application.Title+'2.ini';
    HasilSoftConesFrm.wwDBGrid2.IniAttributes.SectionName:=HasilSoftConesFrm.Caption+'2';
    HasilSoftConesFrm.wwDBGrid2.IniAttributes.Enabled:=True;
    HasilSoftConesFrm.wwDBGrid2.LoadFromIniFile;
    DMFrm.ProcReadIni(Application.Title,HasilSoftConesFrm.Caption+'1',HasilSoftConesFrm.wwDBGrid1);
    DMFrm.ProcReadIni(Application.Title,HasilSoftConesFrm.Caption+'2',HasilSoftConesFrm.wwDBGrid2);
    HasilSoftConesFrm.wwDBSpinLine1.Value:=HasilSoftConesFrm.wwDBGrid1.RowHeightPercent;
    HasilSoftConesFrm.wwDBSpinLine2.Value:=HasilSoftConesFrm.wwDBGrid2.RowHeightPercent;

  end;

  HasilSoftConesFrm.Show;
end;

procedure THasilSoftConesFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   DMFrm.ProcWtiteIni(Application.Title,Caption+'1',wwDBGrid1);
   DMFrm.ProcWtiteIni(Application.Title,Caption+'2',wwDBGrid2);
   Action:=caFree;
   HasilSoftConesFrm:=Nil;
end;

procedure THasilSoftConesFrm.FormCreate(Sender: TObject);
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

procedure THasilSoftConesFrm.BtnExportClick(Sender: TObject);
begin
{DMFrm.SaveDialog1.FileName:=PanelHeader.Caption+' '+
      vTglAwal.Text+' sd '+vTglAkhir.Text+'.xls';
    if DMFrm.SaveDialog1.Execute then
    begin
      try
        wwDBGrid2.ExportOptions.FileName:=DMFrm.SaveDialog1.FileName;
        wwDBGrid2.ExportOptions.TitleName:='Hasil SoftCones';
        wwDBGrid2.ExportOptions.Save;
        if MessageDlg('Ekspor Data Sukses, Lihat Hasil ?',mtWarning,[mbYes, mbNo],0)=mrYes then
        begin
          DMFrm.LMDStarter1.Command:=DMFrm.SaveDialog1.FileName;
          DMFrm.LMDStarter1.Execute;
        end;
  		Except
    	  ShowMessage('Ekspor Data Gagal !');
  		end;
    end;    }
     if QBrowse.Active then
  begin
     DMFrm.SaveDialog1.DefaultExt:='XLK';
     DMFrm.SaveDialog1.Filter:='Excel files (*.XLK)|*.XLK';
     DMFrm.SaveDialog1.FileName:=PanelHeader.Caption+' '+ vTglAwal.Text+' sd '+vTglAkhir.Text+'.xlK';
   //DMFrm.SaveDialog1.FileName:='HASIL MESIN SOFTCONES';
     wwDBGrid2.ExportOptions.TitleName:='HASIL MESIN SOFTCONES';
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

procedure THasilSoftConesFrm.BtnOkClick(Sender: TObject);
var
  vpcs, vkg : real;
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
      QBrowse.SQL.Text:='select * from '+cUserTabel+'v'+Name+
        ' where tgl>=:pawal and tgl<=:pakhir and kd_transaksi=:kd_transaksi :porder';
  		QBrowse.SetVariable('pawal',Trunc(vTglAwal.Date));
  		QBrowse.SetVariable('pakhir',Trunc(vTglAkhir.Date)+1-1/86400);
			QBrowse.SetVariable('kd_transaksi',vkode);
  		QBrowse.SetVariable('porder',vorder);
//      ShowMessage(QBrowse.SQL.Text);
      QBrowse.Open;
      vpcs:=0;
      vkg:=0;
      while not QBrowse.Eof do
      begin
        vpcs:=vpcs+QBrowseQTY2.AsFloat;
        vkg:=vkg+QBrowseQTY1.AsFloat;
        QBrowse.Next;
      end;
      QBrowse.EnableControls;
      wwDBGrid2.ColumnByName('QTY2').FooterValue:=FormatFloat('#,0;-#,0;-',vpcs);
      wwDBGrid2.ColumnByName('QTY1').FooterValue:=FormatFloat('#,0.0000;-#,0.0000;-',vkg);
      LabelBanner.Caption:='Data : '+FormatFloat('#,#',QBrowse.RecordCount)+' Records';
    end;
end;
end;

procedure THasilSoftConesFrm.wwDBGrid2TitleButtonClick(Sender: TObject;
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

procedure THasilSoftConesFrm.QBrowseAfterScroll(DataSet: TDataSet);
begin
  LabelBanner.Caption:='Record ke '+IntToStr(QBrowse.RecNo)+' dari '+FormatFloat('#,#',QBrowse.RecordCount)+' Records';
end;

procedure THasilSoftConesFrm.BtnClose1Click(Sender: TObject);
begin
  Close;
end;

procedure THasilSoftConesFrm.BtnClose2Click(Sender: TObject);
begin
  Close;
end;

procedure THasilSoftConesFrm.vTglAwalChange(Sender: TObject);
begin
  vTglAkhir.DateTime:=EndOfTheMonth(vTglAwal.Date);
end;

procedure THasilSoftConesFrm.wwDBSpinLine2Change(Sender: TObject);
begin
    wwDBGrid2.RowHeightPercent:=Round(wwDBSpinLine2.Value);
end;

procedure THasilSoftConesFrm.BtnFindClick(Sender: TObject);
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

procedure THasilSoftConesFrm.BtnOk2Click(Sender: TObject);
{azmi}
var
  vpcsf, vkgf : real;
{azmi}
begin
  if QBrowse.QBEMode then
  begin
    QBrowse.ExecuteQBE;
    wwDBGrid2.Options:=wwDBGrid2.Options+[dgRowSelect,dgAlwaysShowSelection];
      {azmi}
      QBrowse.Open;
      vpcsf:=0;
      vkgf:=0;
      while not QBrowse.Eof do
      begin
        vpcsf:=vpcsf+QBrowseQTY2.AsFloat;
        vkgf:=vkgf+QBrowseQTY1.AsFloat;
        QBrowse.Next;
      end;
      QBrowse.EnableControls;
      wwDBGrid2.ColumnByName('QTY2').FooterValue:=FormatFloat('#,0;-#,0;-',vpcsf);
      wwDBGrid2.ColumnByName('QTY1').FooterValue:=FormatFloat('#,0.0000;-#,0.0000;-',vkgf);
      LabelBanner.Caption:='Data : '+FormatFloat('#,#',QBrowse.RecordCount)+' Records';
    {azmi}
  end;

end;

procedure THasilSoftConesFrm.ppHeaderBand1BeforePrint(Sender: TObject);
begin
 ppNo.AsInteger:=0;

  end;

procedure THasilSoftConesFrm.BtnPrintBrowseClick(Sender: TObject);
begin
  if vTglAwal.Date>vTglAkhir.DateTime then
    ShowMessage('Tgl. Akhir harus lebih besar dari Tgl. Awal !')
    else
    begin
      ppReportBrowse.Print;
    end;
end;

procedure THasilSoftConesFrm.Button1Click(Sender: TObject);
begin
  ppDesigner1.ShowModal;
end;

procedure THasilSoftConesFrm.BtnDesign2Click(Sender: TObject);
begin
  ppDesigner1.ShowModal;
end;

procedure THasilSoftConesFrm.ppTitleBand1BeforePrint(Sender: TObject);
begin
//ppNo2.AsInteger:=0;
  ppNo.AsInteger:=0;
  ppNamaLaporan.Caption:=Caption;
  ppPeriode.Caption:=vTglAwal.Text+' s/d '+vTglAkhir.Text;
  DMFrm.QTime.Close;
  DMFrm.QTime.Open;
  ppUserCetak.Caption:=DMFrm.QTimeVUSER_CETAK.AsString;
end;

procedure THasilSoftConesFrm.wwDBSpinLine1Change(Sender: TObject);
begin
    wwDBGrid1.RowHeightPercent:=Round(wwDBSpinLine1.Value);
end;

procedure THasilSoftConesFrm.EditCariKeyDown(Sender: TObject; var Key: Word;
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

procedure THasilSoftConesFrm.TabSheet1Show(Sender: TObject);
begin
  QMaster.Close;
  QMaster.SetVariable('myparam1',QBrowseIBUKTI.AsInteger);
  QMaster.SetVariable('myparam2',QBrowseNO_NOTA.AsString);
  QMaster.Open;
  QDetail.Close;
  QDetail.Open;
  EditCari.Text:=QBrowseIBUKTI.AsString;
  if (QBrowseNO_NOTA.AsString<>'') then EditCari.Text:=QBrowseNO_NOTA.AsString;
  wwDBGrid1UpdateFooter(nil);
end;

procedure THasilSoftConesFrm.TabSheet1Exit(Sender: TObject);
begin
  EditCari.Text:='';
end;

procedure THasilSoftConesFrm.ppFooterBand2BeforePrint(Sender: TObject);
begin
//  ppHalInput.Visible:=ppReportInput.PageNo>1;
  DMFrm.QTime.Close;
  DMFrm.QTime.Open;
  ppUserCetak2.Caption:=DMFrm.QTimeVUSER_CETAK.AsString;
end;

procedure THasilSoftConesFrm.BtnPrintInputClick(Sender: TObject);
begin
//  ppNo2.AsInteger:=0;
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

procedure THasilSoftConesFrm.QMasterBeforePost(DataSet: TDataSet);
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

procedure THasilSoftConesFrm.wwDBGrid1Enter(Sender: TObject);
begin
  if QMaster.State<>dsBrowse then
  try
    QMaster.Post;
  except
    ShowMessage('Maaf, ada masalah di pengisian MASTER !');
  end;
end;

procedure THasilSoftConesFrm.wwDBGrid2DblClick(Sender: TObject);
begin
  TabSheet1.Show;
end;

procedure THasilSoftConesFrm.Label5Click(Sender: TObject);
begin
  if DMFrm.FontDialog1.Execute then
  begin
    wwDBGrid2.Font.Name:=DMFrm.FontDialog1.Font.Name;
    wwDBGrid2.Font.Size:=DMFrm.FontDialog1.Font.Size;
    wwDBGrid2.Font.Color:=DMFrm.FontDialog1.Font.Color;
    wwDBGrid2.Font.Style:=DMFrm.FontDialog1.Font.Style;
  end;
end;

procedure THasilSoftConesFrm.LookItemEnter(Sender: TObject);
begin
  (sender as TwwDBLookupComboDlg).LookupTable.Close;
  (sender as TwwDBLookupComboDlg).LookupTable.Open;

end;

procedure THasilSoftConesFrm.QMasterBeforeDelete(DataSet: TDataSet);
begin
  if QMasterISPOST.AsString='1' then
  begin
     ShowMessage('Maaf, sudah di-POST !, tidak bisa diubah...');
     Abort;
  end;
end;

procedure THasilSoftConesFrm.QMasterNewRecord(DataSet: TDataSet);
begin
  QMasterKD_TRANSAKSI.AsString:=vkode;
  QMasterTGL.AsDateTime:=DMFrm.QTimeJAM.AsDateTime;
  QMasterISPOST.AsString:='0';
  QMasterTTD1.AsString:=QTransaksiTTD1.AsString;
  QMasterTTD2.AsString:=QTransaksiTTD2.AsString;
  QMasterTTD3.AsString:=QTransaksiTTD3.AsString;
  QMasterTTD4.AsString:=QTransaksiTTD4.AsString;
  QMasterSTATUS.AsString:='IN';
  wwDBEdit1.SetFocus;
  QMasterQTY_RESEP.AsFloat:=1.8;
  QMasterKD_DIV.AsString:='311';

  wwDBDateTimePicker1.Enabled:=True;

  if vshift<>'' then QMasterSHIFT.AsString:=vshift;
  if vgrup<>'' then QMasterGRUP.AsString:=vgrup;
end;

procedure THasilSoftConesFrm.QTransaksiBeforeOpen(DataSet: TDataSet);
begin
  QTransaksi.DeclareVariable('kd_transaksi', otString);
  QTransaksi.SQL.Text:='select a.* from '+cUserTabel+'vtransaksi a where a.kd_transaksi=:kd_transaksi';
  QTransaksi.SetVariable('kd_transaksi',vkode);
end;

{procedure THasilSoftConesFrm.ppPageStyle1BeforePrint(Sender: TObject);
begin
  ppNo2.AsInteger:=0;
end;   }

procedure THasilSoftConesFrm.Label14Click(Sender: TObject);
begin
  if DMFrm.FontDialog1.Execute then
  begin
    wwDBGrid1.Font.Name:=DMFrm.FontDialog1.Font.Name;
    wwDBGrid1.Font.Size:=DMFrm.FontDialog1.Font.Size;
    wwDBGrid1.Font.Color:=DMFrm.FontDialog1.Font.Color;
    wwDBGrid1.Font.Style:=DMFrm.FontDialog1.Font.Style;
  end;

end;

procedure THasilSoftConesFrm.FormCloseQuery(Sender: TObject;
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

procedure THasilSoftConesFrm.QMasterAfterPost(DataSet: TDataSet);
begin
  PageControl1.Pages[1].TabVisible:=QMaster.IsEmpty or (QMasterISPOST.AsString='1');
  PageControl1.Pages[2].TabVisible:=QMaster.IsEmpty or (QMasterISPOST.AsString='1');
  if QMasterISPOST.AsString='1' then
  begin
      QProc_Update_PO.Close;
      QProc_Update_PO.Execute;
  end;
end;

procedure THasilSoftConesFrm.QMasterBeforeInsert(DataSet: TDataSet);
begin
  if DataSet['ISPOST']='0' then
  begin
    if MessageDlg('Data belum di-POSTING, batalkan ?', mtWarning, [mbYes, mbNo],0)=mrYes then
      DataSet.Delete
      else
        Abort;
  end;

end;

procedure THasilSoftConesFrm.ppGroupHeaderBand1BeforePrint(Sender: TObject);
begin
  //PPno.AsInteger:=ppNo.AsInteger+1;
  PPno.Caption:=IntToStr(ppDBQDetail.RecordNo+1);
end;

procedure THasilSoftConesFrm.QProc_Update_POBeforeQuery(Sender: TOracleQuery);
begin
  QProc_Update_PO.SetVariable('NO_PO',QMasterNO_BUKTI.AsString);
end;

procedure THasilSoftConesFrm.LookLokasiEnter(Sender: TObject);
begin
  QLokasi.Close;
  QLokasi.SetVariable('pkd_lokasi',vjns_lokasi);
  QLokasi.SetVariable('pjns_lokasi','LOKASI');
  QLokasi.Open;
end;

procedure THasilSoftConesFrm.QItemBeforeQuery(Sender: TOracleDataSet);
begin
  if vjns_brg<>'' then
  begin
    QItem.SetVariable('vjns_brg',vjns_brg);
    QItem.SetVariable('vkd_benang',vkd_benang);

  QItem.SetVariable('psysdate',QMasterTGL.AsDateTime);

//  QItem.SetVariable('pkd_lokasi','10');
  QItem.SetVariable('ibukti',QMasterIBUKTI.AsInteger);

  end;
end;

procedure THasilSoftConesFrm.LookItemCloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin
  if modified then
  begin
    QDetailKETERANGAN.AsString:=QItemNewNAMA_ITEM.AsString;
    QDetailRASIO.AsFloat:=QItemNewRASIO.AsFloat; //RASIO MASTER
    //QDetailKD_SATUAN.AsString:=QItemNewKD_SATUAN.AsString;
    QDetailKD_SATUAN.AsString:='04';

    //MAA 06-09-2019
    QDetailQTY7.AsFloat:=QItemNewQTY.AsFloat;
    QDetailQTY8.AsFloat:=QItemNewQTY2.AsFloat;
  end;
  
end;

procedure THasilSoftConesFrm.QDetailNewRecord(DataSet: TDataSet);
begin
  QDetailQTY1.AsFloat:=0;
  QDetailQTY2.AsFloat:=0;
  QDetailQTY3.AsFloat:=0;
  QDetailQTY4.AsFloat:=0;
  QDetailQTY5.AsFloat:=0;
  QDetailQTY6.AsFloat:=0;

  wwDBDateTimePicker1.Enabled:=False;

  QDetailIBUKTI.AsInteger:=QMasterIBUKTI.AsInteger;
  QDetailKD_SUB_LOKASI.AsString:=vjns_lokasi+'-00000';
  if vopr<>'' then
    QDetailOPR_INSERT.AsString:=vopr
    else
      QDetailOPR_INSERT.AsString:=DMFrm.QTimeVUSER.AsString;
end;

procedure THasilSoftConesFrm.QDetailBeforePost(DataSet: TDataSet);
begin

////KONSEP LOCK PCS
if QDetailQTY8.AsFloat<0 then   //MAA 11-9-2019
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

////KONSEP LOCK KG
{
if QDetailQTY7.AsFloat<0 then   //MAA 11-9-2019
begin
   showmessage('QTY STOK MINUS, ANDA TIDAK BISA ENTRY !!!');
   QDetailQTY2.AsFloat:=0;
   QDetailQTY1.AsFloat:=0;
   Abort;
end
else
begin
  if QDetailQTY1.AsFloat>QDetailQTY7.AsFloat then
  begin
   showmessage('QTY HASIL MELEBIHI QTY STOK, SILAHKAN DI ENTRY ULANG !!!');
   QDetailQTY2.AsFloat:=0;
   QDetailQTY1.AsFloat:=0;
  end;
end;
}
////KONSEP LOCK KG

 if QDetailQTY2.AsFloat=0 then //MAA 9-9-2019
    begin
//    showmessage('Silahkan masukkan QTY PCS Hasil Softcone');
    QDetailQTY1.AsFloat:=0;
    end
 else
 begin
  QDetailQTY1.AsFloat:=
    (QDetailQTY6.AsFloat-(QDetailQTY5.AsFloat*QMasterQTY_RESEP.AsFloat))
    -
    (QDetailRASIO.AsFloat*QDetailQTY2.AsFloat); //RASIO MASTER
 end;

  vopr:=QDetailOPR_INSERT.AsString;
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
  if QDetailKD_SUB_LOKASI.AsString='' then
     begin
        ShowMessage('LOKASI harus diisi !');
        Abort;
     end;
end;

procedure THasilSoftConesFrm.FormShow(Sender: TObject);
begin
//  PanelHeader.Caption:=QTransaksiKD_TRANSAKSI.AsString+'. '+UpperCase(Caption);
end;

procedure THasilSoftConesFrm.QDetailQTY6Change(Sender: TField);
begin
  if QDetailRASIO.AsFloat>0 then
    QDetailQTY1.AsFloat:=QDetailQTY2.AsFloat*QDetailRASIO.AsFloat
    else
    begin
        ShowMessage('Maaf, RASIO di Master Barang belum ada !');
        Abort;
    end;
end;

procedure THasilSoftConesFrm.LookMesinEnter(Sender: TObject);
begin
  QLokasi.Close;
  QLokasi.SetVariable('pkd_lokasi',vjns_lokasi);
  QLokasi.SetVariable('pjns_lokasi','MESIN');
  QLokasi.Open;
end;

procedure THasilSoftConesFrm.LookMesinCloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin
  if modified then
  begin
     QDetailMESIN.AsString := QLokasiSPESIFIKASI.AsString;
     QDetailQTY3.AsFloat:=QLokasiJML.AsFloat;
     QDetailQTY4.AsFloat:=QLokasiKPS.AsFloat;
     vkd_benang:=QLokasiKD_BENANG.AsString;
  end;
end;

procedure THasilSoftConesFrm.QDetailCalcFields(DataSet: TDataSet);
begin
  if QDetailQTY1.AsFloat>0 then
     QDetailRASIO3.AsFloat:=QDetailQTY1.AsFloat/QDetailQTY2.AsFloat;

  if (QDetailQTY3.AsFloat>0) and (QDetailQTY4.AsFloat>0) then
    QDetailEFF.AsFloat := 100*QDetailQTY1.AsFloat/(QDetailQTY3.AsFloat*QDetailQTY4.AsFloat);
    QDetailQTY_STANDAR.AsFloat := QDetailQTY2.AsFloat*QDetailRASIO2.AsFloat;

  if QDetailQTY_STANDAR.AsFloat>0 then
    QDetailSTD_PSN.AsFloat := (QDetailQTY1.AsFloat-QDetailQTY_STANDAR.AsFloat)*100/QDetailQTY_STANDAR.AsFloat;

end;

procedure THasilSoftConesFrm.ppDetailBand2BeforePrint(Sender: TObject);
begin
 // ppNo2.AsInteger:=ppNo2.AsInteger+1;
end;

procedure THasilSoftConesFrm.ppDetailBand1BeforePrint(Sender: TObject);
begin
  ppNo.AsInteger:=ppNo.AsInteger+1;
end;

procedure THasilSoftConesFrm.wwDBGrid1UpdateFooter(Sender: TObject);
begin
  QTotal.Close;
  QTotal.SetVariable('ibukti',QMasterIBUKTI.AsInteger);
  QTotal.Open;
  wwDBGrid1.ColumnByName('QTY5').FooterValue:=FormatFloat('#,0;-#,0;-',QTotalKRAT.AsFloat);
  wwDBGrid1.ColumnByName('QTY6').FooterValue:=FormatFloat('#,0.0000;-#,0.0000;-',QTotalKG.AsFloat);
  wwDBGrid1.ColumnByName('QTY2').FooterValue:=FormatFloat('#,0;-#,0;-',QTotalPCS.AsFloat);
end;

procedure THasilSoftConesFrm.LookItemUserButton1Click(Sender: TObject;
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

procedure THasilSoftConesFrm.QBrowseCalcFields(DataSet: TDataSet);
begin
  {if copy(QBrowseKETERANGAN.AsString,1,4) = '30/2' then
    begin
      QBrowseeffisiensi.AsFloat := (QBrowseQTY2.AsFloat/QBrowseSPEED_PER_MNT2.AsFloat)/425*100;
    end
  else
    begin
      QBrowseeffisiensi.AsFloat := (QBrowseQTY2.AsFloat/QBrowseSPEED_PER_MNT.AsFloat)/425*100;
    end;

     QBrowseRASIO3.AsFloat:=QBrowseQTY1.AsFloat/QBrowseQTY2.AsFloat; }

end;

procedure THasilSoftConesFrm.wwDBGrid2UpdateFooter(Sender: TObject);
var
  vpcs, vkg : real;
begin
      QBrowse.Open;
      vpcs:=0;
      vkg:=0;
      while not QBrowse.Eof do
      begin
        vpcs:=vpcs+QBrowseQTY2.AsFloat;
        vkg:=vkg+QBrowseQTY1.AsFloat;
        QBrowse.Next;
      end;
      QBrowse.EnableControls;
      wwDBGrid2.ColumnByName('QTY2').FooterValue:=FormatFloat('#,0;-#,0;-',vpcs);
      wwDBGrid2.ColumnByName('QTY1').FooterValue:=FormatFloat('#,0.0000;-#,0.0000;-',vkg);

end;


procedure THasilSoftConesFrm.wwDBGrid1CalcCellColors(Sender: TObject;
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

procedure THasilSoftConesFrm.QMasterAfterDelete(DataSet: TDataSet);
begin
  wwDBDateTimePicker1.Enabled:=False;
end;

procedure THasilSoftConesFrm.wwDBDateTimePicker1Change(Sender: TObject);
begin
  QProc_getStok.Close;
  QProc_getStok.SetVariable('ptgl', QMasterTGL.AsDateTime);
  QProc_getStok.SetVariable('ptgl2', QMasterTGL.AsDateTime);
  QProc_getStok.Execute;
end;

procedure THasilSoftConesFrm.QMasterTGLChange(Sender: TField);
begin
  QProc_getStok.Close;
  QProc_getStok.SetVariable('ptgl', QMasterTGL.AsDateTime);
  QProc_getStok.SetVariable('ptgl2', QMasterTGL.AsDateTime);
  QProc_getStok.Execute;
  //ShowMessage(QProc_getStok.SQL.Text);
end;

procedure THasilSoftConesFrm.QItemNewBeforeQuery(Sender: TOracleDataSet);
begin
  QItemNew.SetVariable('pkd_benang', QLokasiKD_BENANG.AsString);
  QItemNew.SetVariable('pibukti', QMasterIBUKTI.AsInteger);
end;

end.
