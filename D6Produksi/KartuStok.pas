unit KartuStok;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  DateUtils, Mask, wwdbedit, Wwdbspin, DB, Wwdatsrc, OracleData, Dialogs,
  Oracle, Buttons, wwSpeedButton, wwDBNavigator, wwclearpanel, Grids,
  Wwdbigrd, Wwdbgrid, StdCtrls, wwdbdatetimepicker, ComCtrls, ExtCtrls,
  ppViewr, ppDB, ppDBPipe, ppComm, ppRelatv, ppProd, ppClass, ppReport,
  ppVar, ppCtrls, ppBands, ppPrnabl, ppCache, ppEndUsr, ppModule,
  daDataModule, DBCtrls, wwdblook, Wwdbdlg, Wwdotdot, Wwdbcomb, ppBarCod,
  wwcheckbox, ppStrtch, ppMemo, IniFiles;

type
  TKartuStokFrm = class(TForm)
    PanelLeft: TPanel;
    PanelRight: TPanel;
    PanelMain: TPanel;
    PanelHeader: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    PanelMaster: TPanel;
    PanelDetail: TPanel;
    PanelFooter1: TPanel;
    TabSheet2: TTabSheet;
    LabelBanner: TLabel;
    PanelBrowse: TPanel;
    PanelFooter2: TPanel;
    PanelBand: TPanel;
    wwDBGrid2: TwwDBGrid;
    wwDBNavigator1: TwwDBNavigator;
    wwDBNavigator1PriorPage: TwwNavButton;
    wwDBNavigator1NextPage: TwwNavButton;
    wwDBNavigator1SaveBookmark: TwwNavButton;
    wwDBNavigator1RestoreBookmark: TwwNavButton;
    QBrowse: TOracleDataSet;
    dsQBrowse: TwwDataSource;
    BtnClose2: TBitBtn;
    BtnExport: TBitBtn;
    BtnPrintBrowse: TBitBtn;
    BtnPrintInput: TBitBtn;
    BtnClose1: TBitBtn;
    Label1: TLabel;
    TabSheet3: TTabSheet;
    ppDBQBrowseDetail: TppDBPipeline;
    ppDesigner1: TppDesigner;
    BtnDesign2: TBitBtn;
    QMaster: TOracleDataSet;
    dsQMaster: TwwDataSource;
    DBText3: TDBText;
    wwDBGrid1: TwwDBGrid;
    QDetail: TOracleDataSet;
    dsQDetail: TwwDataSource;
    Label14: TLabel;
    wwDBSpinLine1: TwwDBSpinEdit;
    LBarcode: TDBText;
    EditCari: TEdit;
    Label15: TLabel;
    ppDBQMaster: TppDBPipeline;
    ppDBQDetail: TppDBPipeline;
    QBrowseKD_ITEM: TStringField;
    QBrowseNAMA_ITEM: TStringField;
    QBrowseSATUAN: TStringField;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    cbFixed: TwwCheckBox;
    LSatuan: TLabel;
    ppReportInput: TppReport;
    ppReportBrowse: TppReport;
    PanelFilter: TPanel;
    Label5: TLabel;
    BtnFind: TSpeedButton;
    BtnOk2: TSpeedButton;
    BtnOk: TBitBtn;
    wwDBSpinLine2: TwwDBSpinEdit;
    BtnDesign1: TBitBtn;
    CheckBox1: TCheckBox;
    ppTitleBand1: TppTitleBand;
    ppNamaLaporan: TppLabel;
    ppUserCetak: TppLabel;
    ppHeaderBand2: TppHeaderBand;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel6: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppNomer: TppLabel;
    ppDBText5: TppDBText;
    ppReportBrowse2: TppReport;
    ppTitleBand2: TppTitleBand;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppHeaderBand3: TppHeaderBand;
    ppDetailBand3: TppDetailBand;
    ppDBBarCode3: TppDBBarCode;
    ppLabel11: TppLabel;
    ppDBText6: TppDBText;
    ppFooterBand3: TppFooterBand;
    ppSystemVariable2: TppSystemVariable;
    ppColumnHeaderBand1: TppColumnHeaderBand;
    ppColumnFooterBand1: TppColumnFooterBand;
    ppDBText1: TppDBText;
    ppDBMemo1: TppDBMemo;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppDBText2: TppDBText;
    ppDBText4: TppDBText;
    BtnAmbilData: TBitBtn;
    DBText1: TDBText;
    DBText4: TDBText;
    DBText5: TDBText;
    DBText6: TDBText;
    QMasterKD_ITEM: TStringField;
    QMasterKD_JNS_ITEM: TStringField;
    QMasterNAMA_ITEM: TStringField;
    QMasterKD_SATUAN: TStringField;
    QMasterSATUAN: TStringField;
    QMasterMIN_STOK: TFloatField;
    QMasterLEAD_TIME: TFloatField;
    QMasterISFIXED: TStringField;
    QDetailKD_ITEM: TStringField;
    QDetailNO_NOTA: TStringField;
    QDetailTGL: TDateTimeField;
    QDetailNAMA_TRANSAKSI: TStringField;
    QDetailDISKRIPSI: TStringField;
    QDetailQTY_IN: TFloatField;
    QDetailQTY_OUT: TFloatField;
    QDetailDEBET: TFloatField;
    QDetailKREDIT: TFloatField;
    QDetailKD_SUB_LOKASI: TStringField;
    QDetailKD_LOKASI: TStringField;
    QDetailJNS_LOKASI: TStringField;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    LookJnsLokasi: TwwDBComboBox;
    Label6: TLabel;
    QAwal: TOracleDataSet;
    LAwal: TLabel;
    LMutasi: TLabel;
    LAkhir: TLabel;
    ppTitleBand3: TppTitleBand;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppLabel12: TppLabel;
    ppHeaderBand1: TppHeaderBand;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppNomer2: TppLabel;
    ppDBText7: TppDBText;
    ppDBMemo2: TppDBMemo;
    ppFooterBand1: TppFooterBand;
    ppSystemVariable3: TppSystemVariable;
    ppDBText8: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppSaldo: TppVariable;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppDBText15: TppDBText;
    ppLabel22: TppLabel;
    ppDBText16: TppDBText;
    ppLabel23: TppLabel;
    ppPeriode: TppLabel;
    ppLabel24: TppLabel;
    ppLAwal: TppLabel;
    QBrowseAWAL: TFloatField;
    QBrowseMASUK: TFloatField;
    QBrowseKELUAR: TFloatField;
    QBrowseAKHIR: TFloatField;
    ppLabel26: TppLabel;
    ppDBText18: TppDBText;
    ppLabel27: TppLabel;
    ppDBText19: TppDBText;
    ppPeriode2: TppLabel;
    Label7: TLabel;
    vTglAwal: TwwDBDateTimePicker;
    Label8: TLabel;
    vTglAkhir: TwwDBDateTimePicker;
    Label13: TLabel;
    LookJnsLokasi2: TwwDBComboBox;
    Label16: TLabel;
    QDetailKD_SUB_LOKASI2: TStringField;
    ppDBPerusahaan: TppDBPipeline;
    ppMasterFieldLink1: TppMasterFieldLink;
    ppFooterBand2: TppFooterBand;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppSummaryBand1: TppSummaryBand;
    ppLine1: TppLine;
    ppSystemVariable1: TppSystemVariable;
    ppLabel1: TppLabel;
    CheckBox2: TCheckBox;
    QBrowseNO_PART: TStringField;
    QBrowseNAMA_KELOMPOK: TStringField;
    ppDBText3: TppDBText;
    ppLabel18: TppLabel;
    ppSummaryBand2: TppSummaryBand;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppLabel28: TppLabel;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppDBCalc7: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    ppVariable1: TppVariable;
    ppLabel19: TppLabel;
    ppLabel25: TppLabel;
    ppLabel29: TppLabel;
    ppVariable2: TppVariable;
    ppLabel30: TppLabel;
    ppVariable3: TppVariable;
    ppLabel31: TppLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure BtnExportClick(Sender: TObject);
    procedure BtnOkClick(Sender: TObject);
    procedure wwDBGrid2TitleButtonClick(Sender: TObject;
      AFieldName: String);
    procedure QBrowseAfterScroll(DataSet: TDataSet);
    procedure BtnClose1Click(Sender: TObject);
    procedure BtnClose2Click(Sender: TObject);
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
    procedure BtnPrintInputClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtnDesign1Click(Sender: TObject);
    procedure ppDetailBand2BeforePrint(Sender: TObject);
    procedure wwDBGrid2DblClick(Sender: TObject);
    procedure Label5Click(Sender: TObject);
    procedure Label14Click(Sender: TObject);
    procedure BtnAmbilDataClick(Sender: TObject);
    procedure QBrowseCalcFields(DataSet: TDataSet);
    procedure TabSheet2Show(Sender: TObject);
    procedure vTglAwalChange(Sender: TObject);
    procedure ppTitleBand3BeforePrint(Sender: TObject);
    procedure QBrowseFilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure ppSummaryBand2BeforePrint(Sender: TObject);
  private
    { Private declarations }
    vorder, SelectedFont, vitem, vjns, vbrg : String;
    vnomer : integer;
    vawal, vin, vout, saldo : real;
  public
    { Public declarations }
  end;

var
  KartuStokFrm: TKartuStokFrm;

procedure ShowForm(pNamaMenu:String; pjns : String; pbrg : string);

implementation

uses DM, Pembelian, Kriteria_Tanggal1;

{$R *.dfm}

Procedure ShowForm(pNamaMenu:String; pjns : String;pbrg : string);
var
  mychar : string[125];
Begin
// Hak Menu
  DMFrm.cHakInput:=DMFrm.QMenuUser.Lookup('NAMA_COMPONENT',pNamaMenu,'HAK_INPUT')='1';
  DMFrm.cBtnDesign:=DMFrm.QMenuUser.Lookup('NAMA_COMPONENT',pNamaMenu,'HAK_DESIGN')='1';
  DMFrm.cBtnExport:=DMFrm.QMenuUser.Lookup('NAMA_COMPONENT',pNamaMenu,'HAK_EXPORT')='1';

//  if KartuStokFrm=Nil then
  begin
    KartuStokFrm:=TKartuStokFrm.Create(Application);
    mychar:=pjns;
    Delete(mychar,Pos('&',mychar),1);
    pjns:=mychar;
    KartuStokFrm.Caption:='Barang '+pjns;
    KartuStokFrm.vbrg:=UpperCase(pjns);
    KartuStokFrm.vitem:=copy(pJns,1,2);
    KartuStokFrm.vjns:=copy(pJns,1,2);
    KartuStokFrm.PanelHeader.Caption:=UpperCase(copy(pjns,5,50));
    KartuStokFrm.wwDBGrid1.IniAttributes.FileName:=DMFrm.sAppPath+Application.Title+'2.ini';
    KartuStokFrm.wwDBGrid1.IniAttributes.SectionName:=KartuStokFrm.Caption+'1';
    KartuStokFrm.wwDBGrid1.IniAttributes.Enabled:=True;
    KartuStokFrm.wwDBGrid1.LoadFromIniFile;
    KartuStokFrm.wwDBGrid2.IniAttributes.FileName:=DMFrm.sAppPath+Application.Title+'2.ini';
    KartuStokFrm.wwDBGrid2.IniAttributes.SectionName:=KartuStokFrm.Caption+'2';
    KartuStokFrm.wwDBGrid2.IniAttributes.Enabled:=True;
    KartuStokFrm.wwDBGrid2.LoadFromIniFile;
    DMFrm.ProcReadIni(Application.Title,KartuStokFrm.Caption+'1',KartuStokFrm.wwDBGrid1);
    DMFrm.ProcReadIni(Application.Title,KartuStokFrm.Caption+'2',KartuStokFrm.wwDBGrid2);
    KartuStokFrm.wwDBSpinLine1.Value:=KartuStokFrm.wwDBGrid1.RowHeightPercent;
    KartuStokFrm.wwDBSpinLine2.Value:=KartuStokFrm.wwDBGrid2.RowHeightPercent;
  end;
  KartuStokFrm.Show;
//  KartuStokFrm.Free;
end;

procedure TKartuStokFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   DMFrm.ProcWtiteIni(Application.Title,Caption+'1',wwDBGrid1);
   DMFrm.ProcWtiteIni(Application.Title,Caption+'2',wwDBGrid2);
   Action:=caFree;
   KartuStokFrm:=Nil;
end;

procedure TKartuStokFrm.FormCreate(Sender: TObject);
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
  PanelLeft.Color:=cWarnaPanel;
  PanelRight.Color:=cWarnaPanel;
  PanelMain.Color:=cWarnaPanelUtama;
  PanelLeft.Width:=Round((Width-PanelMain.Width)/2);
  BtnPrintInput.Glyph.LoadFromFile(DMFrm.sAppPath+'Images\PRINT.Bmp');
  BtnClose1.Glyph.LoadFromFile(DMFrm.sAppPath+'Images\CLOSE.Bmp');
  BtnOk.Glyph.LoadFromFile(DMFrm.sAppPath+'Images\CHECK.Bmp');
  BtnOk2.Glyph.LoadFromFile(DMFrm.sAppPath+'Images\CHECK.Bmp');
  BtnFind.Glyph.LoadFromFile(DMFrm.sAppPath+'Images\FIND.Bmp');
  BtnDesign2.Glyph.LoadFromFile(DMFrm.sAppPath+'Images\DESIGN.Bmp');
  BtnPrintBrowse.Glyph.LoadFromFile(DMFrm.sAppPath+'Images\PRINT.Bmp');
  BtnExport.Glyph.LoadFromFile(DMFrm.sAppPath+'Images\EXPORT.Bmp');
  BtnClose2.Glyph.LoadFromFile(DMFrm.sAppPath+'Images\CLOSE.Bmp');
//Otoritas Button
  BtnExport.Visible:=DMFrm.cBtnExport;
  BtnDesign1.Visible:=DMFrm.cBtnDesign;
  BtnDesign2.Visible:=DMFrm.cBtnDesign;
end;

procedure TKartuStokFrm.BtnExportClick(Sender: TObject);
begin
    DMFrm.SaveDialog1.FileName:=PanelHeader.Caption+' '+
      '.html';
    if DMFrm.SaveDialog1.Execute then
    begin
      try
        wwDBGrid2.ExportOptions.FileName:=DMFrm.SaveDialog1.FileName;
        wwDBGrid2.ExportOptions.TitleName:='<font size=4>'+PanelHeader.Caption+'</font><br><font size=1>'+'</font>';
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

procedure TKartuStokFrm.BtnOkClick(Sender: TObject);
begin
  if vTglAwal.Date>vTglAkhir.DateTime then
    ShowMessage('Tgl. Akhir harus lebih besar dari Tgl. Awal !')
    else
    begin
      if QBrowse.QBEMode then
        QBrowse.QBEMode:=False;
      if vorder='' then vorder:=' order by m.kd_kel, a.nama_item';
      QBrowse.DisableControls;
      QBrowse.Close;
      QBrowse.Filtered:=CheckBox2.Checked;
  		QBrowse.SetVariable('pawal',Trunc(vTglAwal.Date));
  		QBrowse.SetVariable('pakhir',Trunc(vTglAkhir.Date)+1-1/86400);
      QBrowse.SetVariable('kd_jns_item',vjns);
      QBrowse.SetVariable('jns_lokasi',LookJnsLokasi2.Text);
  		QBrowse.SetVariable('porder',vorder);
//      ShowMessage(QBrowse.SQL.Text);
      QBrowse.Open;
      QBrowse.EnableControls;
      LabelBanner.Caption:='Data : '+FormatFloat('#,#',QBrowse.RecordCount)+' Records';
    end;
end;

procedure TKartuStokFrm.wwDBGrid2TitleButtonClick(Sender: TObject;
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

procedure TKartuStokFrm.QBrowseAfterScroll(DataSet: TDataSet);
begin
  LabelBanner.Caption:='Record ke '+IntToStr(QBrowse.RecNo)+' dari '+FormatFloat('#,#',QBrowse.RecordCount)+' Records';
end;

procedure TKartuStokFrm.BtnClose1Click(Sender: TObject);
begin
  Close;
end;

procedure TKartuStokFrm.BtnClose2Click(Sender: TObject);
begin
  Close;
end;

procedure TKartuStokFrm.wwDBSpinLine2Change(Sender: TObject);
begin
    wwDBGrid2.RowHeightPercent:=Round(wwDBSpinLine2.Value);
end;

procedure TKartuStokFrm.BtnFindClick(Sender: TObject);
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

procedure TKartuStokFrm.BtnOk2Click(Sender: TObject);
begin
  if QBrowse.QBEMode then
  begin
    QBrowse.ExecuteQBE;
    wwDBGrid2.Options:=wwDBGrid2.Options+[dgRowSelect,dgAlwaysShowSelection];
  end;

end;

procedure TKartuStokFrm.ppHeaderBand1BeforePrint(Sender: TObject);
begin
//  ppNo.AsInteger:=0;
end;

procedure TKartuStokFrm.BtnPrintBrowseClick(Sender: TObject);
begin
  if CheckBox1.Checked then
  begin
     ppReportBrowse2.Print;  end
  else
    begin
    ppReportBrowse.Print;
    end;

end;

procedure TKartuStokFrm.Button1Click(Sender: TObject);
begin
  ppDesigner1.ShowModal;
end;

procedure TKartuStokFrm.BtnDesign2Click(Sender: TObject);
begin
  ppDesigner1.Report:=ppReportBrowse;
  ppDesigner1.ShowModal;
end;

procedure TKartuStokFrm.ppTitleBand1BeforePrint(Sender: TObject);
begin
  ppNamaLaporan.Caption:='KARTU '+LookJnsLokasi2.Text+' '+
    UpperCase(PanelHeader.Caption);
  ppPeriode2.Caption:=vTglAwal.Text+' s/d '+vTglAkhir.Text;
  DMFrm.QTime.Close;
  DMFrm.QTime.Open;
  ppUserCetak.Caption:=DMFrm.QTimeVUSER_CETAK.AsString;
  DMFrm.QTimeVUSER_CETAK.AsString;
  vnomer:=0;
  ppLAwal.Caption:=LAwal.Caption;
  ppSaldo.AsFloat:=0;
end;

procedure TKartuStokFrm.wwDBSpinLine1Change(Sender: TObject);
begin
    wwDBGrid1.RowHeightPercent:=Round(wwDBSpinLine1.Value);
end;

procedure TKartuStokFrm.EditCariKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=13 then
  begin
    wwDBSpinLine1.SetFocus;
    TabSheet1Show(Nil);
    EditCari.SetFocus;
  end;
end;

procedure TKartuStokFrm.TabSheet1Show(Sender: TObject);
begin

  if (EditCari.Text='') and (QBrowseKD_ITEM.AsString<>'') then
  begin
      EditCari.Text:=QBrowseKD_ITEM.AsString;
  end;
  QMaster.Close;
  QMaster.DeclareVariable('kd_item',otString);
  QMaster.SQL.Text:='select * from '+cUserTabel+'vitemall'+
    ' where kd_item=:kd_item';
  QMaster.SetVariable('kd_item',EditCari.Text);
  QMaster.Open;
  QDetail.Close;
end;

procedure TKartuStokFrm.TabSheet1Exit(Sender: TObject);
begin
  EditCari.Text:='';
end;

procedure TKartuStokFrm.BtnPrintInputClick(Sender: TObject);
begin
  ppReportInput.Print;
end;

procedure TKartuStokFrm.FormShow(Sender: TObject);
begin
  PanelHeader.Caption:=UpperCase(Caption)+' '+vbrg;
end;

procedure TKartuStokFrm.BtnDesign1Click(Sender: TObject);
begin
  ppDesigner1.Report:=ppReportInput;
  ppDesigner1.ShowModal;
end;

procedure TKartuStokFrm.ppDetailBand2BeforePrint(Sender: TObject);
begin
  vnomer:=vnomer+1;
  ppNomer2.Caption:=IntToStr(vnomer);
  ppSaldo.AsFloat:=ppSaldo.AsFloat+QDetailQTY_IN.AsFloat-QDetailQTY_OUT.AsFloat;
  ppNomer.Caption:=IntToStr(vnomer);
end;

procedure TKartuStokFrm.wwDBGrid2DblClick(Sender: TObject);
begin
  TabSheet1.Show;
end;

procedure TKartuStokFrm.Label5Click(Sender: TObject);
begin
  if DMFrm.FontDialog1.Execute then
  begin
    wwDBGrid2.Font.Name:=DMFrm.FontDialog1.Font.Name;
    wwDBGrid2.Font.Size:=DMFrm.FontDialog1.Font.Size;
    wwDBGrid2.Font.Color:=DMFrm.FontDialog1.Font.Color;
    wwDBGrid2.Font.Style:=DMFrm.FontDialog1.Font.Style;
  end;
end;

procedure TKartuStokFrm.Label14Click(Sender: TObject);
begin
  if DMFrm.FontDialog1.Execute then
  begin
    wwDBGrid1.Font.Name:=DMFrm.FontDialog1.Font.Name;
    wwDBGrid1.Font.Size:=DMFrm.FontDialog1.Font.Size;
    wwDBGrid1.Font.Color:=DMFrm.FontDialog1.Font.Color;
    wwDBGrid1.Font.Style:=DMFrm.FontDialog1.Font.Style;
  end;

end;

procedure TKartuStokFrm.BtnAmbilDataClick(Sender: TObject);
begin
  Kriteria_Tanggal1_FRM.ShowModal;
  if Kriteria_Tanggal1_FRM.ModalResult=mrOK then
      if Kriteria_Tanggal1_FRM.wwDBDateTimePicker1.Date>Kriteria_Tanggal1_FRM.wwDBDateTimePicker2.Date then
        ShowMessage('Tgl. Akhir harus lebih besar dari Tgl. Awal !')
        else
        begin
          QDetail.DisableControls;
          QDetail.Close;
          QDetail.DeclareVariable('pawal',otDate);
          QDetail.DeclareVariable('pakhir',otDate);
          QDetail.DeclareVariable('kd_item',otString);
          QDetail.DeclareVariable('jns_lokasi',otString);
          QDetail.SQL.Text:='select * from '+cUserTabel+'vkartu_stok'+
            ' where kd_item=:kd_item and jns_lokasi=:jns_lokasi and tgl>=:pawal and tgl<=:pakhir';
          QDetail.SetVariable('pawal',Trunc(Kriteria_Tanggal1_FRM.wwDBDateTimePicker1.Date));
          QDetail.SetVariable('pakhir',Trunc(Kriteria_Tanggal1_FRM.wwDBDateTimePicker2.Date)+1-1/86400);
          QDetail.SetVariable('kd_item',QMasterKD_ITEM.AsString);
          QDetail.SetVariable('jns_lokasi',LookJnsLokasi.Text);
          QDetail.Open;
          QDetail.EnableControls;

          QAwal.DisableControls;
          QAwal.Close;
          QAwal.DeleteVariables;
          QAwal.DeclareVariable('pawal',otDate);
          QAwal.DeclareVariable('kd_item',otString);
          QAwal.DeclareVariable('jns_lokasi',otString);
          QAwal.SQL.Text:='select sum(qty_in-qty_out) as awal from '+cUserTabel+'vkartu_stok'+
            ' where kd_item=:kd_item and jns_lokasi=:jns_lokasi and tgl<:pawal';
          QAwal.SetVariable('pawal',Trunc(Kriteria_Tanggal1_FRM.wwDBDateTimePicker1.Date));
          QAwal.SetVariable('kd_item',QMasterKD_ITEM.AsString);
          QAwal.SetVariable('jns_lokasi',LookJnsLokasi.Text);
          QAwal.Open;
          vawal:=QAwal.FieldByName('AWAL').AsFloat;
          LAwal.Caption:=FormatFloat('0.0,0;(0.0,0)',vawal);

          QAwal.Close;
          QAwal.DeleteVariables;
          QAwal.DeclareVariable('pawal',otDate);
          QAwal.DeclareVariable('pakhir',otDate);
          QAwal.DeclareVariable('kd_item',otString);
          QAwal.DeclareVariable('jns_lokasi',otString);
          QAwal.SQL.Text:='select sum(qty_in) as qty_in, sum(qty_out) as qty_out from '+cUserTabel+'vkartu_stok'+
            ' where kd_item=:kd_item and jns_lokasi=:jns_lokasi and tgl>=:pawal and tgl<=:pakhir';
          QAwal.SetVariable('pawal',Trunc(Kriteria_Tanggal1_FRM.wwDBDateTimePicker1.Date));
          QAwal.SetVariable('pakhir',Trunc(Kriteria_Tanggal1_FRM.wwDBDateTimePicker2.Date)+1-1/86400);
          QAwal.SetVariable('kd_item',QMasterKD_ITEM.AsString);
          QAwal.SetVariable('jns_lokasi',LookJnsLokasi.Text);
          QAwal.Open;
          vin:=QAwal.FieldByName('QTY_IN').AsFloat;
          vout:=QAwal.FieldByName('QTY_OUT').AsFloat;

          wwDBGrid1.ColumnByName('QTY_IN').FooterValue:=FormatFloat('#,#;(#,#)',vin);
          wwDBGrid1.ColumnByName('QTY_OUT').FooterValue:=FormatFloat('#,#;(#,#)',vout);
          LMutasi.Caption:=FormatFloat('0.0,0;(0.0,0)',vin-vout);
          LAkhir.Caption:=FormatFloat('0.0,0;(0.0,0)',vawal+vin-vout);
          BtnPrintInput.Enabled:=True;
        end;

end;

procedure TKartuStokFrm.QBrowseCalcFields(DataSet: TDataSet);
begin
  QBrowseAKHIR.AsFloat:=
  QBrowseAWAL.AsFloat+
    QBrowseMASUK.AsFloat-QBrowseKELUAR.AsFloat;
end;

procedure TKartuStokFrm.TabSheet2Show(Sender: TObject);
begin
  vTglAwal.Date:=Kriteria_Tanggal1_FRM.wwDBDateTimePicker1.Date;
  vTglAkhir.Date:=Kriteria_Tanggal1_FRM.wwDBDateTimePicker2.Date;
end;

procedure TKartuStokFrm.vTglAwalChange(Sender: TObject);
begin
  vTglAkhir.DateTime:=EndOfTheMonth(vTglAwal.Date);
end;

procedure TKartuStokFrm.ppTitleBand3BeforePrint(Sender: TObject);
begin
  ppLabel9.Caption:='KARTU STOK '+UpperCase(Caption);
  DMFrm.QTime.Close;
  DMFrm.QTime.Open;
  ppLabel10.Caption:=DMFrm.QTimeVUSER_CETAK.AsString;
  DMFrm.QTimeVUSER_CETAK.AsString;
  vnomer:=0;
  ppLAwal.Caption:=LAwal.Caption;
  ppSaldo.AsFloat:=vawal;
  ppPeriode.Caption:=Kriteria_Tanggal1_FRM.wwDBDateTimePicker1.Text+
    ' s/d '+Kriteria_Tanggal1_FRM.wwDBDateTimePicker2.Text;
end;

procedure TKartuStokFrm.QBrowseFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
  Accept:=(Dataset['MASUK']>0) or (Dataset['KELUAR']>0);
end;

procedure TKartuStokFrm.ppSummaryBand2BeforePrint(Sender: TObject);
begin
  ppVariable1.AsFloat:=vawal;
  ppVariable2.AsFloat:=ppSaldo.AsFloat;
  ppVariable3.AsFloat:=vin-vout;
end;

end.
