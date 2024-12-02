unit Rekanan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  DateUtils, Mask, wwdbedit, Wwdbspin, DB, Wwdatsrc, OracleData, Dialogs,
  Oracle, Buttons, wwSpeedButton, wwDBNavigator, wwclearpanel, Grids,
  Wwdbigrd, Wwdbgrid, StdCtrls, wwdbdatetimepicker, ComCtrls, ExtCtrls,
  ppViewr, ppDB, ppDBPipe, ppComm, ppRelatv, ppProd, ppClass, ppReport,
  ppVar, ppCtrls, ppBands, ppPrnabl, ppCache, ppEndUsr, ppModule,
  daDataModule, DBCtrls, wwdblook, Wwdbdlg, Wwdotdot, Wwdbcomb, ppBarCod,
  wwcheckbox, ppStrtch, ppMemo;

type
  TRekananFrm = class(TForm)
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
    BtnClose1: TBitBtn;
    Label1: TLabel;
    TabSheet3: TTabSheet;
    ppDBQBrowseDetail: TppDBPipeline;
    ppDesigner1: TppDesigner;
    BtnDesign2: TBitBtn;
    QMaster: TOracleDataSet;
    dsQMaster: TwwDataSource;
    DBText3: TDBText;
    wwDBNavigatorInput: TwwDBNavigator;
    wwDBNavigatorInputNext: TwwNavButton;
    wwDBNavigatorInputCancel: TwwNavButton;
    wwDBNavigatorInputButton: TwwNavButton;
    LBarcode: TDBText;
    EditCari: TEdit;
    Label15: TLabel;
    wwDBNavigatorInputButton1: TwwNavButton;
    wwDBNavigatorInputButton2: TwwNavButton;
    ppReportBrowse: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppDetailBand2: TppDetailBand;
    ppFooterBand2: TppFooterBand;
    ppNamaLaporan: TppLabel;
    ppUserCetak: TppLabel;
    PanelFilter: TPanel;
    Label5: TLabel;
    BtnFind: TSpeedButton;
    BtnOk2: TSpeedButton;
    BtnOk: TBitBtn;
    wwDBSpinLine2: TwwDBSpinEdit;
    wwDBNavigatorInputButton3: TwwNavButton;
    ppNomer: TppLabel;
    ppDBText3: TppDBText;
    ppTitleBand1: TppTitleBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel6: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    BtnPrintBrowse: TBitBtn;
    Label8: TLabel;
    wwDBEdit1: TwwDBEdit;
    wwDBEdit2: TwwDBEdit;
    Label2: TLabel;
    wwDBEdit3: TwwDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    wwDBEdit4: TwwDBEdit;
    Label6: TLabel;
    wwDBEdit5: TwwDBEdit;
    Label7: TLabel;
    wwDBEdit6: TwwDBEdit;
    Label9: TLabel;
    wwDBEdit7: TwwDBEdit;
    Label10: TLabel;
    wwDBSpinEdit3: TwwDBSpinEdit;
    Label11: TLabel;
    wwDBEdit8: TwwDBEdit;
    DBMemo1: TDBMemo;
    Label12: TLabel;
    wwDBEdit9: TwwDBEdit;
    Label13: TLabel;
    wwDBEdit10: TwwDBEdit;
    Label16: TLabel;
    QBrowseKD_REKANAN: TFloatField;
    QBrowseNAMA_REKANAN: TStringField;
    QBrowseALAMAT: TStringField;
    QBrowseKOTA: TStringField;
    QBrowseTELEPON: TStringField;
    QBrowseNEGARA: TStringField;
    QBrowseNPWP: TStringField;
    QBrowseBATAS_KREDIT: TFloatField;
    QBrowseALAMAT2: TStringField;
    QBrowseTGL_INSERT: TDateTimeField;
    Label17: TLabel;
    vTglAwal: TwwDBDateTimePicker;
    Label18: TLabel;
    Label19: TLabel;
    vTglAkhir: TwwDBDateTimePicker;
    QMasterKD_REKANAN: TFloatField;
    QMasterJENIS: TStringField;
    QMasterNAMA_REKANAN: TStringField;
    QMasterALAMAT: TStringField;
    QMasterKOTA: TStringField;
    QMasterTELEPON: TStringField;
    QMasterFAX: TStringField;
    QMasterKABUPATEN: TStringField;
    QMasterPROPINSI: TStringField;
    QMasterNEGARA: TStringField;
    QMasterKODEPOS: TStringField;
    QMasterNPWP: TStringField;
    QMasterBATAS_KREDIT: TFloatField;
    QMasterCP: TStringField;
    QMasterHP: TStringField;
    QMasterALAMAT2: TStringField;
    QMasterBANK_ACC: TStringField;
    wwDBEdit11: TwwDBEdit;
    Label20: TLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppDBMemo1: TppDBMemo;
    ppDBMemo2: TppDBMemo;
    ppLabel5: TppLabel;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppLabel9: TppLabel;
    ppDBPerusahaan: TppDBPipeline;
    ppDBMemo3: TppDBMemo;
    ppDBMemo4: TppDBMemo;
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
    procedure Button1Click(Sender: TObject);
    procedure BtnDesign2Click(Sender: TObject);
    procedure ppTitleBand1BeforePrint(Sender: TObject);
    procedure EditCariKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TabSheet1Show(Sender: TObject);
    procedure TabSheet1Exit(Sender: TObject);
    procedure QMasterNewRecord(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure ppDetailBand2BeforePrint(Sender: TObject);
    procedure BtnPrintBrowseClick(Sender: TObject);
    procedure vTglAwalChange(Sender: TObject);
    procedure wwDBGrid2DblClick(Sender: TObject);
    procedure Label5Click(Sender: TObject);
  private
    { Private declarations }
    vorder, SelectedFont, vitem, vjns, vbrg : String;
    vnomer : integer;
  public
    { Public declarations }
  end;

var
  RekananFrm: TRekananFrm;

procedure ShowForm(pNamaMenu:String; pjns : String; pbrg : string);

implementation

uses DM, Pembelian;

{$R *.dfm}

Procedure ShowForm(pNamaMenu:String; pjns : String;pbrg : string);
var
  mychar : string[125];
Begin
// Hak Menu
  DMFrm.cHakInput:=DMFrm.QMenuUser.Lookup('NAMA_COMPONENT',pNamaMenu,'HAK_INPUT')='1';
  DMFrm.cBtnDesign:=DMFrm.QMenuUser.Lookup('NAMA_COMPONENT',pNamaMenu,'HAK_DESIGN')='1';
  DMFrm.cBtnExport:=DMFrm.QMenuUser.Lookup('NAMA_COMPONENT',pNamaMenu,'HAK_EXPORT')='1';

//  if RekananFrm=Nil then
  begin
    RekananFrm:=TRekananFrm.Create(Application);
    if not DMFrm.cHakInput then
    begin
       RekananFrm.QMaster.ReadOnly:=True;
       RekananFrm.PageControl1.ActivePageIndex:=1;
    end;
    RekananFrm.vjns:=pJns;
    mychar:=pbrg;
    Delete(mychar,Pos('&',mychar),1);
    pBrg:=mychar;
    RekananFrm.vbrg:=UpperCase(pbrg);
    RekananFrm.Caption:='Master '+pbrg;
    RekananFrm.PanelHeader.Caption:=UpperCase(pbrg);
    RekananFrm.wwDBGrid2.IniAttributes.FileName:=DMFrm.sAppPath+Application.Title+'2.ini';
    RekananFrm.wwDBGrid2.IniAttributes.SectionName:=RekananFrm.Caption+'2';
    RekananFrm.wwDBGrid2.IniAttributes.Enabled:=True;
    RekananFrm.wwDBGrid2.LoadFromIniFile;
    DMFrm.ProcReadIni(Application.Title,RekananFrm.Caption+'2',RekananFrm.wwDBGrid2);
    RekananFrm.wwDBSpinLine2.Value:=RekananFrm.wwDBGrid2.RowHeightPercent;

    if pJns='SUPLIER' then
    begin
      RekananFrm.vitem:='vsuplier';
      RekananFrm.DBMemo1.Visible:=False;
      RekananFrm.Label12.Visible:=False;
    end
    else
      begin
        RekananFrm.vitem:='vcustomer';
        RekananFrm.DBMemo1.Visible:=False;
        RekananFrm.Label12.Visible:=False;
      end;
  end;
  RekananFrm.Show;
//  RekananFrm.Free;
end;

procedure TRekananFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   DMFrm.ProcWtiteIni(Application.Title,Caption+'2',wwDBGrid2);
   Action:=caFree;
   RekananFrm:=Nil;
end;

procedure TRekananFrm.FormCreate(Sender: TObject);
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
  BtnPrintBrowse.Glyph.LoadFromFile('Images\PRINT.Bmp');
  BtnClose1.Glyph.LoadFromFile('Images\CLOSE.Bmp');
  BtnOk.Glyph.LoadFromFile('Images\CHECK.Bmp');
  BtnOk2.Glyph.LoadFromFile('Images\CHECK.Bmp');
  BtnFind.Glyph.LoadFromFile('Images\FIND.Bmp');
  BtnDesign2.Glyph.LoadFromFile('Images\DESIGN.Bmp');
  BtnExport.Glyph.LoadFromFile('Images\EXPORT.Bmp');
  BtnClose2.Glyph.LoadFromFile('Images\CLOSE.Bmp');
//Otoritas Button
  BtnExport.Visible:=DMFrm.cBtnExport;
  BtnDesign2.Visible:=DMFrm.cBtnDesign;
end;

procedure TRekananFrm.BtnExportClick(Sender: TObject);
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

procedure TRekananFrm.BtnOkClick(Sender: TObject);
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
      QBrowse.DeclareVariable('porder',otSubst);
      QBrowse.SQL.Text:='select * from '+cUserTabel+vitem+
        ' where tgl_insert>=:pawal and tgl_insert<=:pakhir :porder';
  		QBrowse.SetVariable('pawal',Trunc(vTglAwal.Date));
  		QBrowse.SetVariable('pakhir',Trunc(vTglAkhir.Date)+1-1/86400);
      QBrowse.SetVariable('porder',vorder);
      QBrowse.Open;
      QBrowse.EnableControls;
      LabelBanner.Caption:='Data : '+FormatFloat('#,#',QBrowse.RecordCount)+' Records';
    end;
end;

procedure TRekananFrm.wwDBGrid2TitleButtonClick(Sender: TObject;
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

procedure TRekananFrm.QBrowseAfterScroll(DataSet: TDataSet);
begin
  LabelBanner.Caption:='Record ke '+IntToStr(QBrowse.RecNo)+' dari '+FormatFloat('#,#',QBrowse.RecordCount)+' Records';
end;

procedure TRekananFrm.BtnClose1Click(Sender: TObject);
begin
  Close;
end;

procedure TRekananFrm.BtnClose2Click(Sender: TObject);
begin
  Close;
end;

procedure TRekananFrm.wwDBSpinLine2Change(Sender: TObject);
begin
    wwDBGrid2.RowHeightPercent:=Round(wwDBSpinLine2.Value);
end;

procedure TRekananFrm.BtnFindClick(Sender: TObject);
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

procedure TRekananFrm.BtnOk2Click(Sender: TObject);
begin
  if QBrowse.QBEMode then
  begin
    QBrowse.ExecuteQBE;
    wwDBGrid2.Options:=wwDBGrid2.Options+[dgRowSelect,dgAlwaysShowSelection];
  end;

end;

procedure TRekananFrm.ppHeaderBand1BeforePrint(Sender: TObject);
begin
//  ppNo.AsInteger:=0;
end;

procedure TRekananFrm.Button1Click(Sender: TObject);
begin
  ppDesigner1.ShowModal;
end;

procedure TRekananFrm.BtnDesign2Click(Sender: TObject);
begin
  ppDesigner1.Report:=ppReportBrowse;
  ppDesigner1.ShowModal;
end;

procedure TRekananFrm.ppTitleBand1BeforePrint(Sender: TObject);
begin
  ppNamaLaporan.Caption:=UpperCase(Caption);
//  ppPeriode.Caption:=vTglAwal.Text+' s/d '+vTglAkhir.Text;
  DMFrm.QTime.Close;
  DMFrm.QTime.Open;
  ppUserCetak.Caption:=DMFrm.QTimeVUSER_CETAK.AsString;
  vnomer:=0;
end;

procedure TRekananFrm.EditCariKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=13 then
  begin
    TabSheet1Show(Nil);
    EditCari.SetFocus;
  end;
end;

procedure TRekananFrm.TabSheet1Show(Sender: TObject);
begin

  if (EditCari.Text='') and (QBrowse.FieldByName('KD_REKANAN').AsString<>'') then
  begin
      EditCari.Text:=QBrowse.FieldByName('KD_REKANAN').AsString;
  end;
  QMaster.Close;
  QMaster.SequenceField.Field:='KD_REKANAN';
  QMaster.SequenceField.Sequence:=cUserTabel+'KD_REKANAN';
  QMaster.DeclareVariable('kd_rekanan',otInteger);
  QMaster.SQL.Text:='select a.*, a.rowid from '+cUserTabel+'rekanan a'+
    ' where a.kd_rekanan=:kd_rekanan';
  QMaster.SetVariable('kd_rekanan',StrToInt(EditCari.Text));
  QMaster.Open;
end;

procedure TRekananFrm.TabSheet1Exit(Sender: TObject);
begin
  EditCari.Text:='';
end;

procedure TRekananFrm.QMasterNewRecord(DataSet: TDataSet);
begin
  QMaster.FieldByName('JENIS').AsString:=vjns;
  QMaster.FieldByName('PROPINSI').AsString:='JAWA TENGAH';
  QMaster.FieldByName('NEGARA').AsString:='INDONESIA';
  QMaster.FieldByName('BATAS_KREDIT').AsFloat:=200000000;
end;

procedure TRekananFrm.FormShow(Sender: TObject);
begin
  PanelHeader.Caption:='MASTER '+vbrg;
end;

procedure TRekananFrm.ppDetailBand2BeforePrint(Sender: TObject);
begin
  vnomer:=vnomer+1;
  ppNomer.Caption:=IntToStr(vnomer);
end;

procedure TRekananFrm.BtnPrintBrowseClick(Sender: TObject);
begin
  if vTglAwal.Date>vTglAkhir.DateTime then
    ShowMessage('Tgl. Akhir harus lebih besar dari Tgl. Awal !')
    else
      ppReportBrowse.Print;
end;

procedure TRekananFrm.vTglAwalChange(Sender: TObject);
begin
  vTglAkhir.DateTime:=EndOfTheMonth(vTglAwal.Date);
end;

procedure TRekananFrm.wwDBGrid2DblClick(Sender: TObject);
begin
  TabSheet1.Show;
end;

procedure TRekananFrm.Label5Click(Sender: TObject);
begin
  if DMFrm.FontDialog1.Execute then
  begin
    wwDBGrid2.Font.Name:=DMFrm.FontDialog1.Font.Name;
    wwDBGrid2.Font.Size:=DMFrm.FontDialog1.Font.Size;
    wwDBGrid2.Font.Color:=DMFrm.FontDialog1.Font.Color;
    wwDBGrid2.Font.Style:=DMFrm.FontDialog1.Font.Style;
  end;
end;

end.
