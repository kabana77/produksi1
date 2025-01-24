unit InfoMutasiGW;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  DateUtils, Mask, wwdbedit, Wwdbspin, DB, Wwdatsrc, OracleData, Dialogs,
  Oracle, Buttons, wwSpeedButton, wwDBNavigator, wwclearpanel, Grids,
  Wwdbigrd, Wwdbgrid, StdCtrls, wwdbdatetimepicker, ComCtrls, ExtCtrls,
  ppViewr, ppDB, ppDBPipe, ppComm, ppRelatv, ppProd, ppClass, ppReport,
  ppVar, ppCtrls, ppBands, ppPrnabl, ppCache, ppEndUsr, ppModule,
  daDataModule, DBCtrls, wwdblook, Wwdbdlg, Wwdotdot, Wwdbcomb, ppBarCod,
  wwcheckbox, ppStrtch, ppMemo, raCodMod, wwriched, wwDialog, wwfltdlg,
  ppParameter;

type
  TInfoMutasiGWFrm = class(TForm)
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
    QBrowseKD_SUB_KEL: TStringField;
    QBrowseAWAL1: TFloatField;
    QBrowseAWAL2: TFloatField;
    QBrowseMASUK1: TFloatField;
    QBrowseMASUK2: TFloatField;
    QBrowseMASUK3: TFloatField;
    QBrowseMASUK4: TFloatField;
    QBrowseKELUAR1: TFloatField;
    QBrowseKELUAR2: TFloatField;
    QBrowseKELUAR3: TFloatField;
    QBrowseKELUAR4: TFloatField;
    QBrowseKELUAR5: TFloatField;
    QBrowseKELUAR6: TFloatField;
    QBrowseAKHIR: TFloatField;
    QBrowseWARNA: TStringField;
    ComboBox1: TComboBox;
    QBrowseNO_BATCH: TStringField;
    QDump2: TOracleQuery;
    QDump3: TOracleQuery;
    BitBtn1: TBitBtn;
    wwFilterDialog1: TwwFilterDialog;
    CheckBox1: TCheckBox;
    Edit1: TEdit;
    Label2: TLabel;
    Bevel1: TBevel;
    QBrowseMASUK5: TFloatField;
    QBrowseKELUAR7: TFloatField;
    QBrowseSISADOUBLING: TFloatField;
    QBrowseFISIK: TFloatField;
    QBrowseKELUAR8: TFloatField;
    QProc_konstruksi: TOracleQuery;
    QTransaksiDOC_ISO: TStringField;
    QBrowseMASUK6: TFloatField;
    QBrowseKELUAR9: TFloatField;
    QBrowseMASUK7: TFloatField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    LabelBanner2: TLabel;
    Panel1: TPanel;
    Bevel2: TBevel;
    Label7: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Label8: TLabel;
    Label9: TLabel;
    BitBtn2: TBitBtn;
    wwDBSpinEdit1: TwwDBSpinEdit;
    vTglAwal2: TwwDBDateTimePicker;
    vTglAkhir2: TwwDBDateTimePicker;
    CheckBox2: TCheckBox;
    Panel2: TPanel;
    wwDBGrid1: TwwDBGrid;
    dsQBrowse2: TwwDataSource;
    PanelRiwayat: TPanel;
    PanelTop: TPanel;
    QBrowse2: TOracleDataSet;
    QBrowse2CQTY_AKHIR: TFloatField;
    QBrowse2KD_ITEM: TStringField;
    QBrowse2NO_BENANG: TStringField;
    QBrowse2WARNA: TStringField;
    QBrowse2AWAL: TFloatField;
    QBrowse2QTY_IN: TFloatField;
    QBrowse2QTY_OUT: TFloatField;
    QBrowse2KD_WARNA: TStringField;
    QDump4: TOracleQuery;
    QBrowseDetail: TOracleDataSet;
    QBrowseDetailKD_ITEM: TStringField;
    QBrowseDetailKD_WARNA: TStringField;
    QBrowseDetailNO_BENANG: TStringField;
    QBrowseDetailWARNA: TStringField;
    QBrowseDetailAWAL_THN: TFloatField;
    QBrowseDetailAWAL_TGL: TFloatField;
    QBrowseDetailQTY_IN: TFloatField;
    QBrowseDetailQTY_IN2: TFloatField;
    QBrowseDetailQTY_OUT: TFloatField;
    QBrowseDetailQTY_OUT2: TFloatField;
    QBrowseDetailTGL: TDateTimeField;
    QBrowseDetailNO_NOTA: TStringField;
    dsQBrowseDetail: TwwDataSource;
    wwDBGrid3: TwwDBGrid;
    CheckBox3: TCheckBox;
    QBrowseDetailKETERANGAN: TStringField;
    dsQBrowseNew: TwwDataSource;
    QBrowseNew: TOracleDataSet;
    wwDBGridNew: TwwDBGrid;
    QBrowseNewKD_ITEM: TStringField;
    QBrowseNewJNS_BENANG: TStringField;
    QBrowseNewDISKRIPSI: TStringField;
    QBrowseNewQTY01: TFloatField;
    QBrowseNewQTY02: TFloatField;
    QBrowseNewQTY03: TFloatField;
    QBrowseNewQTY04: TFloatField;
    QBrowseNewQTY05: TFloatField;
    QBrowseNewQTY06: TFloatField;
    QBrowseNewQTY07: TFloatField;
    QBrowseNewQTY08: TFloatField;
    QBrowseNewQTY09: TFloatField;
    QBrowseNewQTY10: TFloatField;
    QBrowseNewQTY11: TFloatField;
    QBrowseNewQTY12: TFloatField;
    QBrowseNewQTY13: TFloatField;
    QBrowseNewQTY14: TFloatField;
    QBrowseNewQTY15: TFloatField;
    QBrowseNewQTY16: TFloatField;
    QBrowseNewQTY17: TFloatField;
    QBrowseNewQTY18: TFloatField;
    QBrowseNewQTY19: TFloatField;
    QBrowseNewAKHIR: TFloatField;
    QBrowseNewQTY20: TFloatField;
    QBrowseNewAWAL: TFloatField;
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
    procedure CheckBox1Click(Sender: TObject);
    procedure QBrowseFilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure vTglAkhirChange(Sender: TObject);
    procedure vTglAwal2Change(Sender: TObject);
    procedure vTglAkhir2Change(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure TabSheet2Show(Sender: TObject);
    procedure QBrowse2CalcFields(DataSet: TDataSet);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure wwDBGrid1TitleButtonClick(Sender: TObject;
      AFieldName: String);
    procedure Label7Click(Sender: TObject);
    procedure wwDBSpinEdit1Change(Sender: TObject);
    procedure wwDBGrid1RowChanged(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure QBrowse2FilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure CheckBox3Click(Sender: TObject);
    procedure QBrowse2AfterScroll(DataSet: TDataSet);
    procedure QBrowseNewAfterScroll(DataSet: TDataSet);
    procedure wwDBGridNewTitleButtonClick(Sender: TObject;
      AFieldName: String);
    procedure QBrowseNewCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
    vorder, SelectedFont, vkode, vitem : String;
  public
    { Public declarations }

  end;

var
  InfoMutasiGWFrm: TInfoMutasiGWFrm;

Procedure ShowForm(pNamaMenu:String; pkode : String; pjudul : string; pbrg : string);

implementation

uses DM, Pembelian, Kriteria_Tanggal1, KartuStokBB, KartuStokBBWarna;

{$R *.dfm}

procedure ShowForm(pNamaMenu:String; pkode : String; pjudul : string; pbrg : String);
var
  mychar : string[125];
Begin
// Hak Menu
  DMFrm.cHakInput:=DMFrm.QMenuUser.Lookup('NAMA_COMPONENT',pNamaMenu,'HAK_INPUT')='1';
  DMFrm.cBtnDesign:=DMFrm.QMenuUser.Lookup('NAMA_COMPONENT',pNamaMenu,'HAK_DESIGN')='1';
  DMFrm.cBtnExport:=DMFrm.QMenuUser.Lookup('NAMA_COMPONENT',pNamaMenu,'HAK_EXPORT')='1';

//  if InfoMutasiGWFrm=Nil then
  begin
    InfoMutasiGWFrm:=TInfoMutasiGWFrm.Create(Application);
    mychar:=pjudul;
    Delete(mychar,Pos('&',mychar),1);
    pjudul:=mychar;
    InfoMutasiGWFrm.vkode:=pbrg;
    InfoMutasiGWFrm.QTransaksi.Open;


    InfoMutasiGWFrm.PanelHeader.Caption:=pjudul;
    InfoMutasiGWFrm.Caption:=UpperCase(InfoMutasiGWFrm.PanelHeader.Caption);
    InfoMutasiGWFrm.wwDBGrid2.IniAttributes.FileName:=DMFrm.sAppPath+Application.Title+'2.ini';
    InfoMutasiGWFrm.wwDBGrid2.IniAttributes.SectionName:=InfoMutasiGWFrm.Caption+'2';
    InfoMutasiGWFrm.wwDBGrid2.IniAttributes.Enabled:=True;
    InfoMutasiGWFrm.wwDBGrid2.LoadFromIniFile;
    DMFrm.ProcReadIni(Application.Title,InfoMutasiGWFrm.Caption+'2',InfoMutasiGWFrm.wwDBGrid2);
    InfoMutasiGWFrm.wwDBSpinLine2.Value:=InfoMutasiGWFrm.wwDBGrid2.RowHeightPercent;

  end;

  InfoMutasiGWFrm.Show;
end;

procedure TInfoMutasiGWFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   DMFrm.ProcWtiteIni(Application.Title,Caption+'2',wwDBGrid2);
   Action:=caFree;
   InfoMutasiGWFrm:=Nil;
end;

procedure TInfoMutasiGWFrm.FormCreate(Sender: TObject);
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
  BtnExport.Glyph.LoadFromFile(DMFrm.sAppPath+'Images\EXPORT.Bmp');
//Otoritas Button
  BtnExport.Visible:=DMFrm.cBtnExport;
  BtnDesign2.Visible:=DMFrm.cBtnDesign;
end;

procedure TInfoMutasiGWFrm.BtnExportClick(Sender: TObject);
begin
  if PageControl1.TabIndex=0 then
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
  end
  else
  begin
    DMFrm.SaveDialog1.FileName:=PanelHeader.Caption+' '+
      vTglAwal2.Text+' sd '+vTglAkhir2.Text+'.html';
    if DMFrm.SaveDialog1.Execute then
    begin
      try
        wwDBGrid1.ExportOptions.FileName:=DMFrm.SaveDialog1.FileName;
        wwDBGrid1.ExportOptions.TitleName:='<font size=4>'+PanelHeader.Caption+'</font><br><font size=1>'+vTglAwal.Text+' sd '+vTglAkhir.Text+'</font>';
        wwDBGrid1.ExportOptions.Save;
        if MessageDlg('Ekspor Data Sukses, Lihat Hasil ?',mtWarning,[mbYes, mbNo],0)=mrYes then
        begin
          DMFrm.LMDStarter1.Command:=DMFrm.SaveDialog1.FileName;
          DMFrm.LMDStarter1.Execute;
        end;
  		Except
    	  ShowMessage('Ekspor Data Gagal !');
  		end;
    end;
  end;
end;

procedure TInfoMutasiGWFrm.BtnOkClick(Sender: TObject);
var
  vrasio : real;
  vt0, vt1, vt2, vt3, vt4, vt5, vt6, vt7,
  vt8, vt9, vt10, vt11, vt12, vt13, vt14,
  vt15, vt16, vt17, vt18, vt19, vt20, vt21 : real;

begin
  vorder:=' order by '+Edit1.Text;
  if vTglAwal.Date>vTglAkhir.DateTime then
    ShowMessage('Tgl. Akhir harus lebih besar dari Tgl. Awal !')
    else 
    begin
      case ComboBox1.ItemIndex of
      0 : begin
             QProc_konstruksi.Close;
             QProc_konstruksi.SetVariable('vrasio',1);
             QProc_konstruksi.SetVariable('vsysdate',vTglAwal.Date);
             QProc_konstruksi.SetVariable('vsysdate2',vTglAkhir.Date);


             QProc_konstruksi.SetVariable('vkd_jns_item',vkode);

             QProc_konstruksi.Execute;
             //konstruksi
          end;
      end;

      
      if QBrowse.QBEMode then QBrowse.QBEMode:=False;
      QBrowse.DisableControls;
      QBrowse.Close;
      QBrowse.SetVariable('vorder',vorder);
      QBrowse.Open;
      vt1:=0; vt2:=0; vt3:=0; vt4:=0; vt5:=0; vt6:=0; vt7:=0;
      vt8:=0; vt9:=0; vt10:=0; vt11:=0; vt12:=0; vt13:=0; vt14:=0;
      vt15:=0; vt16:=0; vt17:=0; vt18:=0; vt19:=0; vt20:=0;
      while not QBrowse.Eof do
      begin
        vt1:=vt1+QBrowseAWAL1.AsFloat;
        vt2:=vt2+QBrowseMASUK1.AsFloat;
        vt3:=vt3+QBrowseMASUK2.AsFloat;
        vt4:=vt4+QBrowseMASUK3.AsFloat;
        vt5:=vt5+QBrowseMASUK4.AsFloat;
        vt6:=vt6+QBrowseKELUAR1.AsFloat;
        vt7:=vt7+QBrowseKELUAR2.AsFloat;
        vt8:=vt8+QBrowseKELUAR3.AsFloat;
        vt9:=vt9+QBrowseKELUAR4.AsFloat;
        vt10:=vt10+QBrowseKELUAR5.AsFloat;
        vt11:=vt11+QBrowseKELUAR6.AsFloat;
        vt12:=vt12+QBrowseAKHIR.AsFloat;
        vt13:=vt13+QBrowseKELUAR7.AsFloat;
        vt17:=vt17+QBrowseKELUAR8.AsFloat;
        vt14:=vt14+QBrowseMASUK5.AsFloat;
        vt15:=vt15+QBrowseSISADOUBLING.AsFloat;
        vt16:=vt16+QBrowseFISIK.AsFloat;
        vt18:=vt18+QBrowseMASUK6.AsFloat;
        vt19:=vt19+QBrowseKELUAR9.AsFloat;
        vt20:=vt20+QBrowseMASUK7.AsFloat;
        QBrowse.Next;
      end;
          QBrowse.EnableControls;
      wwDBGrid2.ColumnByName('AWAL1').FooterValue:=FormatFloat('#,##0.##;(#,##0.##);-',vt1);
      wwDBGrid2.ColumnByName('MASUK1').FooterValue:=FormatFloat('#,##0.##;(#,##0.##);-',vt2);
      wwDBGrid2.ColumnByName('MASUK2').FooterValue:=FormatFloat('#,##0.##;(#,##0.##);-',vt3);
      wwDBGrid2.ColumnByName('MASUK3').FooterValue:=FormatFloat('#,##0.##;(#,##0.##);-',vt4);
      wwDBGrid2.ColumnByName('MASUK4').FooterValue:=FormatFloat('#,##0.##;(#,##0.##);-',vt5);
      wwDBGrid2.ColumnByName('MASUK6').FooterValue:=FormatFloat('#,##0.##;(#,##0.##);-',vt18);
      wwDBGrid2.ColumnByName('MASUK7').FooterValue:=FormatFloat('#,##0.##;(#,##0.##);-',vt20);
      wwDBGrid2.ColumnByName('KELUAR1').FooterValue:=FormatFloat('#,##0.##;(#,##0.##);-',vt6);
      wwDBGrid2.ColumnByName('KELUAR2').FooterValue:=FormatFloat('#,##0.##;(#,##0.##);-',vt7);
      wwDBGrid2.ColumnByName('KELUAR3').FooterValue:=FormatFloat('#,##0.##;(#,##0.##);-',vt8);
      wwDBGrid2.ColumnByName('KELUAR4').FooterValue:=FormatFloat('#,##0.##;(#,##0.##);-',vt9);
      wwDBGrid2.ColumnByName('KELUAR5').FooterValue:=FormatFloat('#,##0.##;(#,##0.##);-',vt10);
      wwDBGrid2.ColumnByName('KELUAR6').FooterValue:=FormatFloat('#,##0.##;(#,##0.##);-',vt11);
      wwDBGrid2.ColumnByName('KELUAR8').FooterValue:=FormatFloat('#,##0.##;(#,##0.##);-',vt17);
      wwDBGrid2.ColumnByName('KELUAR9').FooterValue:=FormatFloat('#,##0.##;(#,##0.##);-',vt19);
      wwDBGrid2.ColumnByName('AKHIR').FooterValue:=FormatFloat('#,##0.##;(#,##0.##);-',vt12);
      wwDBGrid2.ColumnByName('KELUAR7').FooterValue:=FormatFloat('#,##0.##;(#,##0.##);-',vt13);
      wwDBGrid2.ColumnByName('MASUK5').FooterValue:=FormatFloat('#,##0.##;(#,##0.##);-',vt14);
      wwDBGrid2.ColumnByName('SISADOUBLING').FooterValue:=FormatFloat('#,##0.##;(#,##0.##);-',vt15);
      wwDBGrid2.ColumnByName('FISIK').FooterValue:=FormatFloat('#,##0.##;(#,##0.##);-',vt16);

      {if QBrowseNew.QBEMode then QBrowseNew.QBEMode:=False;
      QBrowseNew.DisableControls;
      QBrowseNew.Close;
      QBrowseNew.SetVariable('vorder',vorder);
      QBrowseNew.Open;
      vt0:=0; vt1:=0; vt2:=0; vt3:=0; vt4:=0; vt5:=0; vt6:=0; vt7:=0;
      vt8:=0; vt9:=0; vt10:=0; vt11:=0; vt12:=0; vt13:=0; vt14:=0;
      vt15:=0; vt16:=0; vt17:=0; vt18:=0; vt19:=0; vt20:=0;  vt21:=0;

      while not QBrowseNew.Eof do
      begin
        vt0:=vt0+QBrowseNewAWAL.AsFloat;
        vt1:=vt1+QBrowseNewQTY01.AsFloat;
        vt2:=vt2+QBrowseNewQTY02.AsFloat;
        vt3:=vt3+QBrowseNewQTY03.AsFloat;
        vt4:=vt4+QBrowseNewQTY04.AsFloat;
        vt5:=vt5+QBrowseNewQTY05.AsFloat;
        vt6:=vt6+QBrowseNewQTY06.AsFloat;
        vt10:=vt10+QBrowseNewQTY10.AsFloat;
        vt11:=vt11+QBrowseNewQTY11.AsFloat;
        vt12:=vt12+QBrowseNewQTY12.AsFloat;
        vt13:=vt13+QBrowseNewQTY13.AsFloat;
        vt14:=vt14+QBrowseNewQTY14.AsFloat;
        vt15:=vt15+QBrowseNewQTY15.AsFloat;
        vt16:=vt16+QBrowseNewQTY16.AsFloat;
        vt17:=vt17+QBrowseNewQTY17.AsFloat;
        vt18:=vt18+QBrowseNewQTY18.AsFloat;
        vt19:=vt19+QBrowseNewQTY19.AsFloat;
        vt20:=vt20+QBrowseNewAKHIR.AsFloat;
        QBrowseNew.Next;
      end;
      QBrowseNew.EnableControls;

      wwDBGridNew.ColumnByName('AWAL').FooterValue:=FormatFloat('#,##0.##;(#,##0.##);-',vt0);
      wwDBGridNew.ColumnByName('QTY01').FooterValue:=FormatFloat('#,##0.##;(#,##0.##);-',vt1);
      wwDBGridNew.ColumnByName('QTY02').FooterValue:=FormatFloat('#,##0.##;(#,##0.##);-',vt2);
      wwDBGridNew.ColumnByName('QTY03').FooterValue:=FormatFloat('#,##0.##;(#,##0.##);-',vt3);
      wwDBGridNew.ColumnByName('QTY04').FooterValue:=FormatFloat('#,##0.##;(#,##0.##);-',vt4);
      wwDBGridNew.ColumnByName('QTY05').FooterValue:=FormatFloat('#,##0.##;(#,##0.##);-',vt5);
      wwDBGridNew.ColumnByName('QTY06').FooterValue:=FormatFloat('#,##0.##;(#,##0.##);-',vt6);
      wwDBGridNew.ColumnByName('QTY11').FooterValue:=FormatFloat('#,##0.##;(#,##0.##);-',vt11);
      wwDBGridNew.ColumnByName('QTY12').FooterValue:=FormatFloat('#,##0.##;(#,##0.##);-',vt12);
      wwDBGridNew.ColumnByName('QTY13').FooterValue:=FormatFloat('#,##0.##;(#,##0.##);-',vt13);
      wwDBGridNew.ColumnByName('QTY14').FooterValue:=FormatFloat('#,##0.##;(#,##0.##);-',vt14);
      wwDBGridNew.ColumnByName('QTY15').FooterValue:=FormatFloat('#,##0.##;(#,##0.##);-',vt15);
      wwDBGridNew.ColumnByName('QTY16').FooterValue:=FormatFloat('#,##0.##;(#,##0.##);-',vt16);
      wwDBGridNew.ColumnByName('QTY17').FooterValue:=FormatFloat('#,##0.##;(#,##0.##);-',vt17);
      wwDBGridNew.ColumnByName('QTY18').FooterValue:=FormatFloat('#,##0.##;(#,##0.##);-',vt18);
      wwDBGridNew.ColumnByName('QTY19').FooterValue:=FormatFloat('#,##0.##;(#,##0.##);-',vt19);
      wwDBGridNew.ColumnByName('AKHIR').FooterValue:=FormatFloat('#,##0.##;(#,##0.##);-',vt20);}
    end;
end;

procedure TInfoMutasiGWFrm.wwDBGrid2TitleButtonClick(Sender: TObject;
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

procedure TInfoMutasiGWFrm.BtnClose1Click(Sender: TObject);
begin
  Close;
end;

procedure TInfoMutasiGWFrm.wwDBSpinLine2Change(Sender: TObject);
begin
    wwDBGrid2.RowHeightPercent:=Round(wwDBSpinLine2.Value);
end;

procedure TInfoMutasiGWFrm.BtnFindClick(Sender: TObject);
begin
	wwDBGridNew.ColumnByName('NILAI').FooterValue:='';;
  if not QBrowseNew.QBEMode then
  begin
    wwDBGridNew.Options:=wwDBGridNew.Options-[dgRowSelect,dgAlwaysShowSelection];
    QBrowseNew.QBEMode:=TRUE;
  end
  else
    QBrowseNew.ClearQBE;
end;

procedure TInfoMutasiGWFrm.BtnOk2Click(Sender: TObject);
var
  vrasio : real;
  vt0, vt1, vt2, vt3, vt4, vt5, vt6, vt7,
  vt8, vt9, vt10, vt11, vt12, vt13, vt14,
  vt15, vt16, vt17, vt18, vt19, vt20, vt21 : real;

begin
  if QBrowseNew.QBEMode then
  begin
    QBrowseNew.ExecuteQBE;
    wwDBGridNew.Options:=wwDBGridNew.Options+[dgRowSelect,dgAlwaysShowSelection];

      vt0:=0; vt1:=0; vt2:=0; vt3:=0; vt4:=0; vt5:=0; vt6:=0; vt7:=0;
      vt8:=0; vt9:=0; vt10:=0; vt11:=0; vt12:=0; vt13:=0; vt14:=0;
      vt15:=0; vt16:=0; vt17:=0; vt18:=0; vt19:=0; vt20:=0; vt21:=0;
      while not QBrowseNew.Eof do
      begin
        vt0:=vt0+QBrowseNewAWAL.AsFloat;
        vt1:=vt1+QBrowseNewQTY01.AsFloat;
        vt2:=vt2+QBrowseNewQTY02.AsFloat;
        vt3:=vt3+QBrowseNewQTY03.AsFloat;
        vt4:=vt4+QBrowseNewQTY04.AsFloat;
        vt5:=vt5+QBrowseNewQTY05.AsFloat;
        vt6:=vt6+QBrowseNewQTY06.AsFloat;
        vt10:=vt10+QBrowseNewQTY10.AsFloat;
        vt11:=vt11+QBrowseNewQTY11.AsFloat;
        vt12:=vt12+QBrowseNewQTY12.AsFloat;
        vt13:=vt13+QBrowseNewQTY13.AsFloat;
        vt14:=vt14+QBrowseNewQTY14.AsFloat;
        vt15:=vt15+QBrowseNewQTY15.AsFloat;
        vt16:=vt16+QBrowseNewQTY16.AsFloat;
        vt17:=vt17+QBrowseNewQTY17.AsFloat;
        vt18:=vt18+QBrowseNewQTY18.AsFloat;
        vt19:=vt19+QBrowseNewQTY19.AsFloat;
        vt20:=vt20+QBrowseNewAKHIR.AsFloat;
        QBrowseNew.Next;
      end;
      QBrowseNew.EnableControls;
      wwDBGridNew.ColumnByName('AWAL').FooterValue:=FormatFloat('#,##0.##;(#,##0.##);-',vt0);
      wwDBGridNew.ColumnByName('QTY01').FooterValue:=FormatFloat('#,##0.##;(#,##0.##);-',vt1);
      wwDBGridNew.ColumnByName('QTY02').FooterValue:=FormatFloat('#,##0.##;(#,##0.##);-',vt2);
      wwDBGridNew.ColumnByName('QTY03').FooterValue:=FormatFloat('#,##0.##;(#,##0.##);-',vt3);
      wwDBGridNew.ColumnByName('QTY04').FooterValue:=FormatFloat('#,##0.##;(#,##0.##);-',vt4);
      wwDBGridNew.ColumnByName('QTY05').FooterValue:=FormatFloat('#,##0.##;(#,##0.##);-',vt5);
      wwDBGridNew.ColumnByName('QTY06').FooterValue:=FormatFloat('#,##0.##;(#,##0.##);-',vt6);
      wwDBGridNew.ColumnByName('QTY11').FooterValue:=FormatFloat('#,##0.##;(#,##0.##);-',vt11);
      wwDBGridNew.ColumnByName('QTY12').FooterValue:=FormatFloat('#,##0.##;(#,##0.##);-',vt12);
      wwDBGridNew.ColumnByName('QTY13').FooterValue:=FormatFloat('#,##0.##;(#,##0.##);-',vt13);
      wwDBGridNew.ColumnByName('QTY14').FooterValue:=FormatFloat('#,##0.##;(#,##0.##);-',vt14);
      wwDBGridNew.ColumnByName('QTY15').FooterValue:=FormatFloat('#,##0.##;(#,##0.##);-',vt15);
      wwDBGridNew.ColumnByName('QTY16').FooterValue:=FormatFloat('#,##0.##;(#,##0.##);-',vt16);
      wwDBGridNew.ColumnByName('QTY17').FooterValue:=FormatFloat('#,##0.##;(#,##0.##);-',vt17);
      wwDBGridNew.ColumnByName('QTY18').FooterValue:=FormatFloat('#,##0.##;(#,##0.##);-',vt18);
      wwDBGridNew.ColumnByName('QTY19').FooterValue:=FormatFloat('#,##0.##;(#,##0.##);-',vt19);
      wwDBGridNew.ColumnByName('AKHIR').FooterValue:=FormatFloat('#,##0.##;(#,##0.##);-',vt20);

  end;

end;

procedure TInfoMutasiGWFrm.BtnPrintBrowseClick(Sender: TObject);
begin
  if QBrowse.IsEmpty then
    ShowMessage('Tidak ada data!')
    else
      ppReportBrowse.Print;
end;

procedure TInfoMutasiGWFrm.Button1Click(Sender: TObject);
begin
  ppDesigner1.ShowModal;
end;

procedure TInfoMutasiGWFrm.BtnDesign2Click(Sender: TObject);
begin
  ppDesigner1.ShowModal;
end;

procedure TInfoMutasiGWFrm.ppTitleBand1BeforePrint(Sender: TObject);
begin
  ppNamaLaporan.Caption:='MUTASI STOK '+DMFrm.QJnsItem.FieldByName('JNS_BRG').AsString;
  ppPeriode.Caption:=vTglAwal.Text+' SD '+vTglAkhir.Text;
  DMFrm.QTime.Close;
  DMFrm.QTime.Open;
  ppUserCetak.Caption:=DMFrm.QTimeVUSER_CETAK.AsString;
end;

procedure TInfoMutasiGWFrm.Label5Click(Sender: TObject);
begin
  if DMFrm.FontDialog1.Execute then
  begin
    wwDBGrid2.Font.Name:=DMFrm.FontDialog1.Font.Name;
    wwDBGrid2.Font.Size:=DMFrm.FontDialog1.Font.Size;
    wwDBGrid2.Font.Color:=DMFrm.FontDialog1.Font.Color;
    wwDBGrid2.Font.Style:=DMFrm.FontDialog1.Font.Style;
  end;
end;

procedure TInfoMutasiGWFrm.LookItemEnter(Sender: TObject);
begin
  (sender as TwwDBLookupComboDlg).LookupTable.Open;
end;

procedure TInfoMutasiGWFrm.ppDetailBand1BeforePrint(Sender: TObject);
begin
 ppLblNomer.Caption:=IntToStr(ppDBQBrowseDetail.RecordNo+1)
end;

procedure TInfoMutasiGWFrm.QTransaksiBeforeOpen(DataSet: TDataSet);
begin
  QTransaksi.DeclareVariable('kd_transaksi', otString);
  QTransaksi.SQL.Text:='select a.* from '+cUserTabel+'vtransaksi a where a.kd_transaksi=:kd_transaksi';
  QTransaksi.SetVariable('kd_transaksi',vkode);
end;

procedure TInfoMutasiGWFrm.vTglAwalChange(Sender: TObject);
begin
  vTglAkhir.DateTime:=EndOfTheMonth(vTglAwal.Date);
end;

procedure TInfoMutasiGWFrm.FormShow(Sender: TObject);
begin
    vTglAwal.Date:=Trunc(DMFrm.QTimeJAM.AsDateTime);
    vTglAkhir.Date:=Trunc(DMFrm.QTimeJAM.AsDateTime);
    vTglAwal2.Date:=Trunc(DMFrm.QTimeJAM.AsDateTime);
    vTglAkhir2.Date:=Trunc(DMFrm.QTimeJAM.AsDateTime);
end;

procedure TInfoMutasiGWFrm.QBrowseAfterScroll(DataSet: TDataSet);
begin
    LabelBanner.Caption:='Record ke '+IntToStr(QBrowse.RecNo)+' dari '+FormatFloat('#,#',QBrowse.RecordCount)+' Records';
end;

procedure TInfoMutasiGWFrm.QBrowseCalcFields(DataSet: TDataSet);
begin
  QBrowseAKHIR.AsFloat:=QBrowseAWAL1.AsFloat+
    QBrowseMASUK1.AsFloat+
    QBrowseMASUK2.AsFloat+
    QBrowseMASUK3.AsFloat+
    QBrowseMASUK4.AsFloat+
    QBrowseMASUK6.AsFloat+
    QBrowseMASUK7.AsFloat //MAA 16-04-2020
    -
    QBrowseKELUAR1.AsFloat-
    QBrowseKELUAR2.AsFloat-
    QBrowseKELUAR3.AsFloat-
    QBrowseKELUAR4.AsFloat-
    QBrowseKELUAR5.AsFloat-
    QBrowseKELUAR6.AsFloat-
    QBrowseKELUAR8.AsFloat-
    QBrowseKELUAR9.AsFloat
    ;

  QBrowseSISADOUBLING.AsFloat:=QBrowseKELUAR7.AsFloat-
    QBrowseMASUK5.AsFloat;
  QBrowseFISIK.AsFloat:=QBrowseAKHIR.AsFloat-QBrowseSISADOUBLING.AsFloat;

{  QBrowseAKHIR.AsFloat:=QBrowseAWAL1.AsFloat+
    QBrowseMASUK1.AsFloat+
    QBrowseMASUK2.AsFloat+
    QBrowseMASUK3.AsFloat+
    QBrowseMASUK4.AsFloat-
    QBrowseKELUAR1.AsFloat-
    QBrowseKELUAR2.AsFloat-
    QBrowseKELUAR3.AsFloat-
    QBrowseKELUAR4.AsFloat-
    QBrowseKELUAR5.AsFloat-
    QBrowseKELUAR6.AsFloat-
    QBrowseKELUAR8.AsFloat;
  QBrowseSISADOUBLING.AsFloat:=QBrowseKELUAR7.AsFloat-
    QBrowseMASUK5.AsFloat;
  QBrowseFISIK.AsFloat:=QBrowseAKHIR.AsFloat-QBrowseSISADOUBLING.AsFloat;
}
end;

procedure TInfoMutasiGWFrm.wwDBGrid2DblClick(Sender: TObject);
begin
 case ComboBox1.ItemIndex of
      0 : begin
             KartuStokBB.ShowForm(PanelHeader.Caption,QBrowseKD_ITEM.AsString, vkode,vTglAwal.Date, vTglAkhir.Date, QBrowseAWAL1.AsFloat, QBrowseAWAL2.AsFloat );
          end;
      1 : begin
             KartuStokBBWarna.ShowForm(PanelHeader.Caption,QBrowseKD_ITEM.AsString, vkode, vTglAwal.Date, vTglAkhir.Date, QBrowseAWAL1.AsFloat, QBrowseAWAL2.AsFloat, QBrowseWARNA.AsString);
          end;
 end;
end;

procedure TInfoMutasiGWFrm.BitBtn1Click(Sender: TObject);
begin
  wwDBGrid2DblClick(nil);

end;

procedure TInfoMutasiGWFrm.CheckBox1Click(Sender: TObject);
begin
  if CheckBox1.Checked then QBrowse.Filtered:=True else QBrowse.Filtered:=False; 
end;

procedure TInfoMutasiGWFrm.QBrowseFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
{  Accept:=(QBrowseAWAL1.AsFloat+
    QBrowseMASUK1.AsFloat+
    QBrowseMASUK2.AsFloat+
    QBrowseMASUK3.AsFloat+
    QBrowseMASUK4.AsFloat-
    QBrowseKELUAR1.AsFloat-
    QBrowseKELUAR2.AsFloat-
    QBrowseKELUAR3.AsFloat-
    QBrowseKELUAR4.AsFloat-
    QBrowseKELUAR5.AsFloat-
    QBrowseKELUAR6.AsFloat-
    QBrowseKELUAR8.AsFloat>0.0);}

    Accept:=(QBrowseAWAL1.AsFloat<>0) or
    (QBrowseMASUK1.AsFloat<>0) or
    (QBrowseMASUK2.AsFloat<>0) or
    (QBrowseMASUK3.AsFloat<>0) or
    (QBrowseMASUK4.AsFloat<>0) or
    (QBrowseMASUK5.AsFloat<>0) or
    (QBrowseMASUK6.AsFloat<>0) or
    (QBrowseMASUK7.AsFloat<>0) or
    (QBrowseKELUAR1.AsFloat<>0) or
    (QBrowseKELUAR2.AsFloat<>0) or
    (QBrowseKELUAR3.AsFloat<>0) or
    (QBrowseKELUAR4.AsFloat<>0) or
    (QBrowseKELUAR5.AsFloat<>0) or
    (QBrowseKELUAR6.AsFloat<>0) or
    (QBrowseKELUAR7.AsFloat<>0) or
    (QBrowseAKHIR.AsFloat<>0) or
    (QBrowseSISADOUBLING.AsFloat<>0) or
    (QBrowseFISIK.AsFloat<>0) or
    (QBrowseKELUAR8.AsFloat<>0) or
    (QBrowseKELUAR9.AsFloat<>0);


end;

procedure TInfoMutasiGWFrm.vTglAkhirChange(Sender: TObject);
begin
  if VTglAwal.Date>vTglAkhir.Date then
  begin
      ShowMessage('Tanggal Akhir harus LEBIH BESAR dari Tanggal Awal !');
      vTglAkhir.Date:=VTglAwal.Date;
  end;
end;

procedure TInfoMutasiGWFrm.vTglAwal2Change(Sender: TObject);
begin
  vTglAkhir2.DateTime:=EndOfTheMonth(vTglAwal2.Date);
end;

procedure TInfoMutasiGWFrm.vTglAkhir2Change(Sender: TObject);
begin
  if VTglAwal2.Date>vTglAkhir2.Date then
  begin
      ShowMessage('Tanggal Akhir harus LEBIH BESAR dari Tanggal Awal !');
      vTglAkhir2.Date:=VTglAwal2.Date;
  end;
end;

procedure TInfoMutasiGWFrm.BitBtn2Click(Sender: TObject);
var
  vtw1, vtw2, vtw3, vtw4 : real;
begin
  vorder:=' order by no_benang';
  if vTglAwal2.Date>vTglAkhir2.DateTime then
    ShowMessage('Tgl. Akhir harus lebih besar dari Tgl. Awal !')
  else
  begin
      QDump4.Close;
      QDump4.SetVariable('vsysdate',vTglAwal2.Date);
      QDump4.SetVariable('vsysdate2',vTglAkhir2.Date);
      QDump4.Execute;
      //warna format baru

      if QBrowse2.QBEMode then QBrowse2.QBEMode:=False;

      QBrowse2.DisableControls;
      QBrowse2.Close;
      QBrowse2.Open;

      vtw1:=0; vtw2:=0; vtw3:=0; vtw4:=0;
      while not QBrowse2.Eof do
      begin
        vtw1:=vtw1+QBrowse2AWAL.AsFloat;
        vtw2:=vtw2+QBrowse2QTY_IN.AsFloat;
        vtw3:=vtw3+QBrowse2QTY_OUT.AsFloat;
        vtw4:=vtw4+QBrowse2CQTY_AKHIR.AsFloat;
        QBrowse2.Next;
      end;

      QBrowse2.EnableControls;
      wwDBGrid1.ColumnByName('AWAL').FooterValue:=FormatFloat('#,##0.##;(#,##0.##);-',vtw1);
      wwDBGrid1.ColumnByName('QTY_IN').FooterValue:=FormatFloat('#,##0.##;(#,##0.##);-',vtw2);
      wwDBGrid1.ColumnByName('QTY_OUT').FooterValue:=FormatFloat('#,##0.##;(#,##0.##);-',vtw3);
      wwDBGrid1.ColumnByName('CQTY_AKHIR').FooterValue:=FormatFloat('#,##0.##;(#,##0.##);-',vtw4);
  end;
end;

procedure TInfoMutasiGWFrm.TabSheet2Show(Sender: TObject);
begin
  vTglAwal2.DateTime:=StartOfTheMonth(vTglAwal.DateTime);
end;

procedure TInfoMutasiGWFrm.QBrowse2CalcFields(DataSet: TDataSet);
begin
  QBrowse2CQTY_AKHIR.AsFloat:=(QBrowse2AWAL.AsFloat+QBrowse2QTY_IN.AsFloat)-QBrowse2QTY_OUT.AsFloat;
end;

procedure TInfoMutasiGWFrm.SpeedButton1Click(Sender: TObject);
begin
  if not QBrowse2.QBEMode then
  begin
    wwDBGrid1.Options:=wwDBGrid1.Options-[dgRowSelect,dgAlwaysShowSelection];
    QBrowse2.QBEMode:=TRUE;
  end
  else
    QBrowse2.ClearQBE;
end;

procedure TInfoMutasiGWFrm.SpeedButton2Click(Sender: TObject);
var
  vt1, vt2, vt3, vt4: real;

begin
  if QBrowse2.QBEMode then
  begin
    QBrowse2.ExecuteQBE;
    wwDBGrid1.Options:=wwDBGrid1.Options+[dgRowSelect,dgAlwaysShowSelection];

      vt1:=0; vt2:=0; vt3:=0; vt4:=0;
      while not QBrowse2.Eof do
      begin
        vt1:=vt1+QBrowse2AWAL.AsFloat;
        vt2:=vt2+QBrowse2QTY_IN.AsFloat;
        vt3:=vt3+QBrowse2QTY_OUT.AsFloat;
        vt4:=vt4+QBrowse2CQTY_AKHIR.AsFloat;
        QBrowse2.Next;
      end;
      QBrowse.EnableControls;
      wwDBGrid1.ColumnByName('AWAL').FooterValue:=FormatFloat('#,##0.##;(#,##0.##);-',vt1);
      wwDBGrid1.ColumnByName('QTY_IN').FooterValue:=FormatFloat('#,##0.##;(#,##0.##);-',vt2);
      wwDBGrid1.ColumnByName('QTY_OUT').FooterValue:=FormatFloat('#,##0.##;(#,##0.##);-',vt3);
      wwDBGrid1.ColumnByName('CQTY_AKHIR').FooterValue:=FormatFloat('#,##0.##;(#,##0.##);-',vt4);
  end;

end;

procedure TInfoMutasiGWFrm.wwDBGrid1TitleButtonClick(Sender: TObject;
  AFieldName: String);
begin
  if QBrowse2.FieldByName(AFieldName).FieldKind=fkData then
  begin
    vorder:='order by '+AFieldName;
    BitBtn2Click(Nil);
  end
  else
    ShowMessage('Maaf, tidak bisa Urut menurut kolom '+AFieldName+' !');
end;

procedure TInfoMutasiGWFrm.Label7Click(Sender: TObject);
begin
  if DMFrm.FontDialog1.Execute then
  begin
    wwDBGrid1.Font.Name:=DMFrm.FontDialog1.Font.Name;
    wwDBGrid1.Font.Size:=DMFrm.FontDialog1.Font.Size;
    wwDBGrid1.Font.Color:=DMFrm.FontDialog1.Font.Color;
    wwDBGrid1.Font.Style:=DMFrm.FontDialog1.Font.Style;
  end;
end;

procedure TInfoMutasiGWFrm.wwDBSpinEdit1Change(Sender: TObject);
begin
    wwDBGrid1.RowHeightPercent:=Round(wwDBSpinEdit1.Value);
end;

procedure TInfoMutasiGWFrm.wwDBGrid1RowChanged(Sender: TObject);
var vt1, vt2: real;
begin
  if CheckBox2.Checked then
  begin
    QBrowseDetail.DisableControls;
    QBrowseDetail.Close;
    QBrowseDetail.SetVariable('pkd_item', QBrowse2KD_ITEM.AsString);
    QBrowseDetail.SetVariable('pkd_warna', QBrowse2KD_WARNA.AsString);
    QBrowseDetail.Open;

    QBrowseDetailQTY_IN.AsFloat;

    vt1:=0; vt2:=0;
    while not QBrowseDetail.Eof do
    begin
       vt1:=vt1+QBrowseDetailQTY_IN.AsFloat;
       vt2:=vt2+QBrowseDetailQTY_OUT.Asfloat;
       QBrowseDetail.Next;
    end;

    QBrowseDetail.EnableControls;
    wwDBGrid3.ColumnByName('QTY_IN').FooterValue:=FormatFloat('#,##0.##;(#,##0.##);-',vt1);
    wwDBGrid3.ColumnByName('QTY_OUT').FooterValue:=FormatFloat('#,##0.##;(#,##0.##);-',vt2);

    PanelTop.Caption:=QBrowse2NO_BENANG.AsString+' - '+QBrowse2WARNA.AsString;
    wwDBGrid3.GetInterfaceTable;
  end;
end;

procedure TInfoMutasiGWFrm.CheckBox2Click(Sender: TObject);
begin
  if PanelRiwayat.Visible=false then PanelRiwayat.Visible:=true else PanelRiwayat.Visible:=false;
end;

procedure TInfoMutasiGWFrm.QBrowse2FilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
  Accept:=(QBrowse2AWAL.AsFloat<>0) or
    (QBrowse2QTY_IN.AsFloat<>0) or
    (QBrowse2QTY_OUT.AsFloat<>0) or
    (QBrowse2CQTY_AKHIR.AsFloat<>0);
end;

procedure TInfoMutasiGWFrm.CheckBox3Click(Sender: TObject);
begin
  if CheckBox3.Checked then QBrowse2.Filtered:=True else QBrowse2.Filtered:=False;
end;

procedure TInfoMutasiGWFrm.QBrowse2AfterScroll(DataSet: TDataSet);
begin
  LabelBanner2.Caption:='Record ke '+IntToStr(QBrowse2.RecNo)+' dari '+FormatFloat('#,#',QBrowse2.RecordCount)+' Records';
end;

procedure TInfoMutasiGWFrm.QBrowseNewAfterScroll(DataSet: TDataSet);
begin
    LabelBanner.Caption:='Record ke '+IntToStr(QBrowseNew.RecNo)+' dari '+FormatFloat('#,#',QBrowseNew.RecordCount)+' Records';
end;

procedure TInfoMutasiGWFrm.wwDBGridNewTitleButtonClick(Sender: TObject;
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

procedure TInfoMutasiGWFrm.QBrowseNewCalcFields(DataSet: TDataSet);
begin
  QBrowseNewAKHIR.AsFloat:=
  (QBrowseNewAWAL.AsFloat+
  QBrowseNewQTY01.AsFloat+
  QBrowseNewQTY02.AsFloat+
  QBrowseNewQTY03.AsFloat+
  QBrowseNewQTY04.AsFloat+
  QBrowseNewQTY05.AsFloat+
  QBrowseNewQTY06.AsFloat+
  QBrowseNewQTY07.AsFloat+
  QBrowseNewQTY08.AsFloat+
  QBrowseNewQTY09.AsFloat+
  QBrowseNewQTY10.AsFloat)-
  (QBrowseNewQTY11.AsFloat+
  QBrowseNewQTY12.AsFloat+
  QBrowseNewQTY13.AsFloat+
  QBrowseNewQTY14.AsFloat+
  QBrowseNewQTY15.AsFloat+
  QBrowseNewQTY16.AsFloat+
  QBrowseNewQTY17.AsFloat+
  QBrowseNewQTY18.AsFloat+
  QBrowseNewQTY19.AsFloat+
  QBrowseNewQTY20.AsFloat);
end;

end.
