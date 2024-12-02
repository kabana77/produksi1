unit InfoMutasiGW2;

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
  TInfoMutasiGW2Frm = class(TForm)
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
    QBrowseKELUAR1: TFloatField;
    QBrowseKELUAR2: TFloatField;
    QBrowseAKHIR: TFloatField;
    QBrowseWARNA: TStringField;
    ComboBox1: TComboBox;
    QBrowseNO_BATCH: TStringField;
    QDump2: TOracleQuery;
    QDump3: TOracleQuery;
    BitBtn1: TBitBtn;
    QBrowseAKHIR2: TFloatField;
    Edit1: TEdit;
    Label2: TLabel;
    Bevel1: TBevel;
    CheckBox1: TCheckBox;
    wwFilterDialog1: TwwFilterDialog;
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
  private
    { Private declarations }
    vorder, SelectedFont, vkode, vitem : String;
  public
    { Public declarations }

  end;

var
  InfoMutasiGW2Frm: TInfoMutasiGW2Frm;

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
    InfoMutasiGW2Frm:=TInfoMutasiGW2Frm.Create(Application);
    mychar:=pjudul;
    Delete(mychar,Pos('&',mychar),1);
    pjudul:=mychar;
    InfoMutasiGW2Frm.vkode:=pbrg;
    InfoMutasiGW2Frm.QTransaksi.Open;


    InfoMutasiGW2Frm.PanelHeader.Caption:=pjudul;
    InfoMutasiGW2Frm.Caption:=UpperCase(InfoMutasiGW2Frm.PanelHeader.Caption);
    InfoMutasiGW2Frm.wwDBGrid2.IniAttributes.FileName:=DMFrm.sAppPath+Application.Title+'2.ini';
    InfoMutasiGW2Frm.wwDBGrid2.IniAttributes.SectionName:=InfoMutasiGW2Frm.Caption+'2';
    InfoMutasiGW2Frm.wwDBGrid2.IniAttributes.Enabled:=True;
    InfoMutasiGW2Frm.wwDBGrid2.LoadFromIniFile;
    DMFrm.ProcReadIni(Application.Title,InfoMutasiGW2Frm.Caption+'2',InfoMutasiGW2Frm.wwDBGrid2);
    InfoMutasiGW2Frm.wwDBSpinLine2.Value:=InfoMutasiGW2Frm.wwDBGrid2.RowHeightPercent;

  end;

  InfoMutasiGW2Frm.Show;
end;

procedure TInfoMutasiGW2Frm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   DMFrm.ProcWtiteIni(Application.Title,Caption+'2',wwDBGrid2);
   Action:=caFree;
   InfoMutasiGW2Frm:=Nil;
end;

procedure TInfoMutasiGW2Frm.FormCreate(Sender: TObject);
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

procedure TInfoMutasiGW2Frm.BtnExportClick(Sender: TObject);
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
end;

procedure TInfoMutasiGW2Frm.BtnOkClick(Sender: TObject);
var
  vrasio : real;
  vt1, vt2, vt3, vt4, vt5, vt6, vt7,
  vt8, vt9, vt10, vt11, vt12, vt13, vt14,
  vt15, vt16 : real;
begin
vorder:=' order by '+Edit1.Text;
  if vTglAwal.Date>vTglAkhir.DateTime then
    ShowMessage('Tgl. Akhir harus lebih besar dari Tgl. Awal !')
    else
    begin
      case ComboBox1.ItemIndex of
      0 : begin
             QDump.Close;
             QDump.SetVariable('vrasio',1);
             QDump.SetVariable('vsysdate',vTglAwal.Date);
             QDump.SetVariable('vsysdate2',vTglAkhir.Date);
             QDump.SetVariable('kd_jns_item',vkode);
             QDump.Execute;
          end;
      1 : begin
             QDump2.Close;
             QDump2.SetVariable('vrasio',1);
             QDump2.SetVariable('vsysdate',vTglAwal.Date);
             QDump2.SetVariable('vsysdate2',vTglAkhir.Date);
             QDump2.SetVariable('kd_jns_item',vkode);
             QDump2.Execute;
          end;
      2 : begin
             QDump3.Close;
             QDump3.SetVariable('vrasio',1);
             QDump3.SetVariable('vsysdate',vTglAwal.Date);
             QDump3.SetVariable('vsysdate2',vTglAkhir.Date);
             QDump3.SetVariable('kd_jns_item',vkode);
             QDump3.Execute;
          end;
      end;
          if QBrowse.QBEMode then
            QBrowse.QBEMode:=False;
          QBrowse.DisableControls;
          QBrowse.Close;
          QBrowse.SetVariable('vorder',vorder);
          QBrowse.Open;
      vt1:=0; vt2:=0; vt3:=0; vt4:=0; vt5:=0; vt6:=0; vt7:=0;
      vt8:=0; vt9:=0; vt10:=0; vt11:=0; vt12:=0; vt13:=0; vt14:=0;
      vt15:=0; vt16:=0;
      while not QBrowse.Eof do
      begin
        vt1:=vt1+QBrowseAWAL1.AsFloat;
        vt2:=vt2+QBrowseAWAL2.AsFloat;
        vt3:=vt3+QBrowseMASUK1.AsFloat;
        vt4:=vt4+QBrowseMASUK2.AsFloat;
        vt5:=vt5+QBrowseKELUAR1.AsFloat;
        vt6:=vt6+QBrowseKELUAR2.AsFloat;
        vt7:=vt7+QBrowseAKHIR.AsFloat;
        vt8:=vt8+QBrowseAKHIR2.AsFloat;
        QBrowse.Next;
      end;
          QBrowse.EnableControls;
      wwDBGrid2.ColumnByName('AWAL1').FooterValue:=FormatFloat('#,##0.##;(#,##0.##);-',vt1);
      wwDBGrid2.ColumnByName('AWAL2').FooterValue:=FormatFloat('#,##0.##;(#,##0.##);-',vt2);
      wwDBGrid2.ColumnByName('MASUK1').FooterValue:=FormatFloat('#,##0.##;(#,##0.##);-',vt3);
      wwDBGrid2.ColumnByName('MASUK2').FooterValue:=FormatFloat('#,##0.##;(#,##0.##);-',vt4);
      wwDBGrid2.ColumnByName('KELUAR1').FooterValue:=FormatFloat('#,##0.##;(#,##0.##);-',vt5);
      wwDBGrid2.ColumnByName('KELUAR2').FooterValue:=FormatFloat('#,##0.##;(#,##0.##);-',vt6);
      wwDBGrid2.ColumnByName('AKHIR').FooterValue:=FormatFloat('#,##0.##;(#,##0.##);-',vt7);
      wwDBGrid2.ColumnByName('AKHIR2').FooterValue:=FormatFloat('#,##0.##;(#,##0.##);-',vt8);
    end;
end;

procedure TInfoMutasiGW2Frm.wwDBGrid2TitleButtonClick(Sender: TObject;
  AFieldName: String);
begin
  if QBrowse.FieldByName(AFieldName).FieldKind=fkData then
  begin
    QBrowse.DisableControls;
    QBrowse.Close;
    vorder:=' order by '+AFieldName;
    QBrowse.SetVariable('vorder',vorder);
    QBrowse.Open;
    QBrowse.EnableControls;
  end
  else
    ShowMessage('Maaf, tidak bisa Urut menurut kolom '+AFieldName+' !');
end;

procedure TInfoMutasiGW2Frm.BtnClose1Click(Sender: TObject);
begin
  Close;
end;

procedure TInfoMutasiGW2Frm.wwDBSpinLine2Change(Sender: TObject);
begin
    wwDBGrid2.RowHeightPercent:=Round(wwDBSpinLine2.Value);
end;

procedure TInfoMutasiGW2Frm.BtnFindClick(Sender: TObject);
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

procedure TInfoMutasiGW2Frm.BtnOk2Click(Sender: TObject);
var
  vrasio : real;
  vt1, vt2, vt3, vt4, vt5, vt6, vt7,
  vt8, vt9, vt10, vt11, vt12, vt13, vt14,
  vt15, vt16 : real;
begin
  if QBrowse.QBEMode then
  begin
    QBrowse.ExecuteQBE;
    wwDBGrid2.Options:=wwDBGrid2.Options+[dgRowSelect,dgAlwaysShowSelection];

      vt1:=0; vt2:=0; vt3:=0; vt4:=0; vt5:=0; vt6:=0; vt7:=0;
      vt8:=0; vt9:=0; vt10:=0; vt11:=0; vt12:=0; vt13:=0; vt14:=0;
      vt15:=0; vt16:=0;
      while not QBrowse.Eof do
      begin
        vt1:=vt1+QBrowseAWAL1.AsFloat;
        vt2:=vt2+QBrowseAWAL2.AsFloat;
        vt3:=vt3+QBrowseMASUK1.AsFloat;
        vt4:=vt4+QBrowseMASUK2.AsFloat;
        vt5:=vt5+QBrowseKELUAR1.AsFloat;
        vt6:=vt6+QBrowseKELUAR2.AsFloat;
        vt7:=vt7+QBrowseAKHIR.AsFloat;
        vt8:=vt8+QBrowseAKHIR2.AsFloat;
        QBrowse.Next;
      end;
          QBrowse.EnableControls;
      wwDBGrid2.ColumnByName('AWAL1').FooterValue:=FormatFloat('#,##0.##;(#,##0.##);-',vt1);
      wwDBGrid2.ColumnByName('AWAL2').FooterValue:=FormatFloat('#,##0.##;(#,##0.##);-',vt2);
      wwDBGrid2.ColumnByName('MASUK1').FooterValue:=FormatFloat('#,##0.##;(#,##0.##);-',vt3);
      wwDBGrid2.ColumnByName('MASUK2').FooterValue:=FormatFloat('#,##0.##;(#,##0.##);-',vt4);
      wwDBGrid2.ColumnByName('KELUAR1').FooterValue:=FormatFloat('#,##0.##;(#,##0.##);-',vt5);
      wwDBGrid2.ColumnByName('KELUAR2').FooterValue:=FormatFloat('#,##0.##;(#,##0.##);-',vt6);
      wwDBGrid2.ColumnByName('AKHIR').FooterValue:=FormatFloat('#,##0.##;(#,##0.##);-',vt7);
      wwDBGrid2.ColumnByName('AKHIR2').FooterValue:=FormatFloat('#,##0.##;(#,##0.##);-',vt8);    
  end;

end;

procedure TInfoMutasiGW2Frm.BtnPrintBrowseClick(Sender: TObject);
begin
  if QBrowse.IsEmpty then
    ShowMessage('Tidak ada data!')
    else
      ppReportBrowse.Print;
end;

procedure TInfoMutasiGW2Frm.Button1Click(Sender: TObject);
begin
  ppDesigner1.ShowModal;
end;

procedure TInfoMutasiGW2Frm.BtnDesign2Click(Sender: TObject);
begin
  ppDesigner1.ShowModal;
end;

procedure TInfoMutasiGW2Frm.ppTitleBand1BeforePrint(Sender: TObject);
begin
  ppNamaLaporan.Caption:='MUTASI STOK '+DMFrm.QJnsItem.FieldByName('JNS_BRG').AsString;
  ppPeriode.Caption:=vTglAwal.Text+' SD '+vTglAkhir.Text;
  DMFrm.QTime.Close;
  DMFrm.QTime.Open;
  ppUserCetak.Caption:=DMFrm.QTimeVUSER_CETAK.AsString;
end;

procedure TInfoMutasiGW2Frm.Label5Click(Sender: TObject);
begin
  if DMFrm.FontDialog1.Execute then
  begin
    wwDBGrid2.Font.Name:=DMFrm.FontDialog1.Font.Name;
    wwDBGrid2.Font.Size:=DMFrm.FontDialog1.Font.Size;
    wwDBGrid2.Font.Color:=DMFrm.FontDialog1.Font.Color;
    wwDBGrid2.Font.Style:=DMFrm.FontDialog1.Font.Style;
  end;
end;

procedure TInfoMutasiGW2Frm.LookItemEnter(Sender: TObject);
begin
  (sender as TwwDBLookupComboDlg).LookupTable.Open;
end;

procedure TInfoMutasiGW2Frm.ppDetailBand1BeforePrint(Sender: TObject);
begin
 ppLblNomer.Caption:=IntToStr(ppDBQBrowseDetail.RecordNo+1)
end;

procedure TInfoMutasiGW2Frm.QTransaksiBeforeOpen(DataSet: TDataSet);
begin
  QTransaksi.DeclareVariable('kd_transaksi', otString);
  QTransaksi.SQL.Text:='select a.* from '+cUserTabel+'vtransaksi a where a.kd_transaksi=:kd_transaksi';
  QTransaksi.SetVariable('kd_transaksi',vkode);
end;

procedure TInfoMutasiGW2Frm.vTglAwalChange(Sender: TObject);
begin
  vTglAkhir.DateTime:=EndOfTheMonth(vTglAwal.Date);
end;

procedure TInfoMutasiGW2Frm.FormShow(Sender: TObject);
begin
    vTglAwal.Date:=Trunc(DMFrm.QTimeJAM.AsDateTime);
    vTglAkhir.Date:=Trunc(DMFrm.QTimeJAM.AsDateTime);
end;

procedure TInfoMutasiGW2Frm.QBrowseAfterScroll(DataSet: TDataSet);
begin
    LabelBanner.Caption:='Record ke '+IntToStr(QBrowse.RecNo)+' dari '+FormatFloat('#,#',QBrowse.RecordCount)+' Records';
end;

procedure TInfoMutasiGW2Frm.QBrowseCalcFields(DataSet: TDataSet);
begin
  QBrowseAKHIR.AsFloat:=QBrowseAWAL1.AsFloat+
    QBrowseMASUK1.AsFloat-
    QBrowseKELUAR1.AsFloat;
  QBrowseAKHIR2.AsFloat:=QBrowseAWAL2.AsFloat+
    QBrowseMASUK2.AsFloat-
    QBrowseKELUAR2.AsFloat;
end;

procedure TInfoMutasiGW2Frm.wwDBGrid2DblClick(Sender: TObject);
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

procedure TInfoMutasiGW2Frm.BitBtn1Click(Sender: TObject);
begin
  wwDBGrid2DblClick(nil);

end;

procedure TInfoMutasiGW2Frm.CheckBox1Click(Sender: TObject);
begin
QBrowse.Filtered:=CheckBox1.Checked;
end;

procedure TInfoMutasiGW2Frm.QBrowseFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
{ Accept:=(QBrowseAWAL1.AsFloat+
   // QBrowseAWAL1.AsFloat+
    QBrowseAWAL2.AsFloat+
    QBrowseMASUK1.AsFloat+
    QBrowseMASUK2.AsFloat-
    QBrowseKELUAR1.AsFloat-
    QBrowseKELUAR2.AsFloat>0.7);
 // QBrowseaKHIR.AsFloat-
 //   QBrowseKELUAR4.AsFloat-
//    QBrowseKELUAR5.AsFloat-
 //   QBrowseKELUAR6.AsFloat>0.7);
 }

    Accept:=
    (QBrowseAWAL1.AsFloat<>0) or
    (QBrowseAWAL2.AsFloat<>0) or
    (QBrowseMASUK1.AsFloat<>0) or
    (QBrowseMASUK2.AsFloat<>0) or
    (QBrowseKELUAR1.AsFloat<>0) or
    (QBrowseKELUAR2.AsFloat<>0) or
    (QBrowseAKHIR.AsFloat<>0) or
    (QBrowseAKHIR2.AsFloat<>0);

{    Accept:=
    (QBrowseAWAL1.AsFloat<>0) or
    (QBrowseAWAL2.AsFloat<>0) or
    (QBrowseMASUK1.AsFloat<>0) or
    (QBrowseMASUK2.AsFloat<>0) or
    (QBrowseKELUAR1.AsFloat<>0) or
    (QBrowseKELUAR2.AsFloat<>0) or
    (QBrowseAKHIR.AsFloat<>0) or
    (QBrowseAKHIR2.AsFloat<>0);}
end;

end.
