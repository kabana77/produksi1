unit JenisTransaksi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  DateUtils, Mask, wwdbedit, Wwdbspin, DB, Wwdatsrc, OracleData, Dialogs,
  Oracle, Buttons, wwSpeedButton, wwDBNavigator, wwclearpanel, Grids,
  Wwdbigrd, Wwdbgrid, StdCtrls, wwdbdatetimepicker, ComCtrls, ExtCtrls,
  ppViewr, ppDB, ppDBPipe, ppComm, ppRelatv, ppProd, ppClass, ppReport,
  ppVar, ppCtrls, ppBands, ppPrnabl, ppCache, ppEndUsr, ppModule,
  daDataModule, DBCtrls, wwdblook, Wwdbdlg, Wwdotdot, Wwdbcomb, ppBarCod,
  wwcheckbox, Menus, wwriched, ppStrtch, ppMemo;

type
  TJenisTransaksiFrm = class(TForm)
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
    wwDBSpinEdit1: TwwDBSpinEdit;
    wwDBSpinEdit2: TwwDBSpinEdit;
    wwDBNavigatorInputButton3: TwwNavButton;
    ppNomer: TppLabel;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
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
    Label4: TLabel;
    wwDBEdit4: TwwDBEdit;
    Label6: TLabel;
    wwDBEdit5: TwwDBEdit;
    Label7: TLabel;
    wwDBEdit6: TwwDBEdit;
    wwCheckBox1: TwwCheckBox;
    wwCheckBox2: TwwCheckBox;
    wwDBEdit7: TwwDBEdit;
    Label9: TLabel;
    wwDBEdit8: TwwDBEdit;
    Label10: TLabel;
    wwDBEdit9: TwwDBEdit;
    Label11: TLabel;
    Label12: TLabel;
    wwDBEdit10: TwwDBEdit;
    Label13: TLabel;
    wwDBEdit11: TwwDBEdit;
    Label16: TLabel;
    wwDBEdit12: TwwDBEdit;
    Label20: TLabel;
    wwDBEdit13: TwwDBEdit;
    Label21: TLabel;
    wwDBEdit14: TwwDBEdit;
    Label22: TLabel;
    wwDBEdit15: TwwDBEdit;
    Label23: TLabel;
    wwDBEdit16: TwwDBEdit;
    Label24: TLabel;
    wwDBEdit17: TwwDBEdit;
    wwDBRichEdit1: TwwDBRichEdit;
    ppDBPerusahaan: TppDBPipeline;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppLabel9: TppLabel;
    ppDBText1: TppDBText;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppDBMemo1: TppDBMemo;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure BtnExportClick(Sender: TObject);
    procedure BtnOkClick(Sender: TObject);
    procedure wwDBGrid2TitleButtonClick(Sender: TObject;
      AFieldName: String);
    procedure QBrowseAfterScroll(DataSet: TDataSet);
    procedure BtnClose1Click(Sender: TObject);
    procedure BtnClose2Click(Sender: TObject);
    procedure wwDBSpinEdit1Change(Sender: TObject);
    procedure wwDBSpinEdit2Change(Sender: TObject);
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
    procedure FormShow(Sender: TObject);
    procedure ppDetailBand2BeforePrint(Sender: TObject);
    procedure BtnPrintBrowseClick(Sender: TObject);
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
  JenisTransaksiFrm: TJenisTransaksiFrm;

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

//  if JenisTransaksiFrm=Nil then
  begin
    JenisTransaksiFrm:=TJenisTransaksiFrm.Create(Application);
    if not DMFrm.cHakInput then
    begin
       JenisTransaksiFrm.QMaster.ReadOnly:=True;
       JenisTransaksiFrm.PageControl1.ActivePageIndex:=1;
    end;
    JenisTransaksiFrm.vjns:=pJns;
    mychar:=pbrg;
    Delete(mychar,Pos('&',mychar),1);
    pBrg:=mychar;
    JenisTransaksiFrm.vbrg:=UpperCase(pbrg);
    JenisTransaksiFrm.Caption:=pbrg;
    JenisTransaksiFrm.PanelHeader.Caption:=UpperCase(pbrg);
      JenisTransaksiFrm.vitem:='vtransaksi';
  end;
  JenisTransaksiFrm.Show;
//  JenisTransaksiFrm.Free;
end;

procedure TJenisTransaksiFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Action:=caFree;
   JenisTransaksiFrm:=Nil;
end;

procedure TJenisTransaksiFrm.FormCreate(Sender: TObject);
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
  BtnPrintBrowse.Glyph.LoadFromFile(DMFrm.sAppPath+'Images\PRINT.Bmp');
  BtnClose1.Glyph.LoadFromFile(DMFrm.sAppPath+'Images\CLOSE.Bmp');
  BtnOk.Glyph.LoadFromFile(DMFrm.sAppPath+'Images\CHECK.Bmp');
  BtnOk2.Glyph.LoadFromFile(DMFrm.sAppPath+'Images\CHECK.Bmp');
  BtnFind.Glyph.LoadFromFile(DMFrm.sAppPath+'Images\FIND.Bmp');
  BtnDesign2.Glyph.LoadFromFile(DMFrm.sAppPath+'Images\DESIGN.Bmp');
  BtnExport.Glyph.LoadFromFile(DMFrm.sAppPath+'Images\EXPORT.Bmp');
  BtnClose2.Glyph.LoadFromFile(DMFrm.sAppPath+'Images\CLOSE.Bmp');
  wwDBGrid2.IniAttributes.SectionName:=Name;
  wwDBSpinEdit2.Value:=DMFrm.vGridFont;
  wwDBSpinEdit1.Value:=DMFrm.vGridSpacing;
  wwDBGrid2.Font.Name:=DMFrm.vGridFontType;
  wwDBGrid2.Font.Color:=DMFrm.vGridFontColor;
//Otoritas Button
  BtnExport.Visible:=DMFrm.cBtnExport;
  BtnDesign2.Visible:=DMFrm.cBtnDesign;
end;

procedure TJenisTransaksiFrm.BtnExportClick(Sender: TObject);
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

procedure TJenisTransaksiFrm.BtnOkClick(Sender: TObject);
begin
      if QBrowse.QBEMode then
        QBrowse.QBEMode:=False;
      QBrowse.DisableControls;
      QBrowse.Close;
      QBrowse.DeclareVariable('porder',otSubst);
      QBrowse.SQL.Text:='select * from '+cUserTabel+vitem+' :porder';
      QBrowse.SetVariable('porder',vorder);
      QBrowse.Open;
      QBrowse.EnableControls;
      LabelBanner.Caption:='Data : '+FormatFloat('#,#',QBrowse.RecordCount)+' Records';
end;

procedure TJenisTransaksiFrm.wwDBGrid2TitleButtonClick(Sender: TObject;
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

procedure TJenisTransaksiFrm.QBrowseAfterScroll(DataSet: TDataSet);
begin
  LabelBanner.Caption:='Record ke '+IntToStr(QBrowse.RecNo)+' dari '+FormatFloat('#,#',QBrowse.RecordCount)+' Records';
end;

procedure TJenisTransaksiFrm.BtnClose1Click(Sender: TObject);
begin
  Close;
end;

procedure TJenisTransaksiFrm.BtnClose2Click(Sender: TObject);
begin
  DMFrm.vGridSpacing:=Round(wwDBSpinEdit1.Value);
  DMFrm.vGridFont:=Round(wwDBSpinEdit2.Value);
  Close;
end;

procedure TJenisTransaksiFrm.wwDBSpinEdit1Change(Sender: TObject);
begin
    wwDBGrid2.RowHeightPercent:=Round(wwDBSpinEdit1.Value);
end;

procedure TJenisTransaksiFrm.wwDBSpinEdit2Change(Sender: TObject);
begin
    wwDBGrid2.Font.Size:=Round(wwDBSpinEdit2.Value);
end;

procedure TJenisTransaksiFrm.BtnFindClick(Sender: TObject);
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

procedure TJenisTransaksiFrm.BtnOk2Click(Sender: TObject);
begin
  if QBrowse.QBEMode then
  begin
    QBrowse.ExecuteQBE;
    wwDBGrid2.Options:=wwDBGrid2.Options+[dgRowSelect,dgAlwaysShowSelection];
  end;

end;

procedure TJenisTransaksiFrm.ppHeaderBand1BeforePrint(Sender: TObject);
begin
//  ppNo.AsInteger:=0;
end;

procedure TJenisTransaksiFrm.Button1Click(Sender: TObject);
begin
  ppDesigner1.ShowModal;
end;

procedure TJenisTransaksiFrm.BtnDesign2Click(Sender: TObject);
begin
  ppDesigner1.Report:=ppReportBrowse;
  ppDesigner1.ShowModal;
end;

procedure TJenisTransaksiFrm.ppTitleBand1BeforePrint(Sender: TObject);
begin
  ppNamaLaporan.Caption:=UpperCase(Caption);
//  ppPeriode.Caption:=vTglAwal.Text+' s/d '+vTglAkhir.Text;
  DMFrm.QTime.Close;
  DMFrm.QTime.Open;
  ppUserCetak.Caption:=DMFrm.QTimeVUSER_CETAK.AsString;
  vnomer:=0;
end;

procedure TJenisTransaksiFrm.EditCariKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=13 then
  begin
    wwDBEdit1.SetFocus;
    TabSheet1Show(Nil);
    EditCari.SetFocus;
  end;
end;

procedure TJenisTransaksiFrm.TabSheet1Show(Sender: TObject);
begin

  if (EditCari.Text='') and (QBrowse.FieldByName('KD_TRANSAKSI').AsString<>'') then
  begin
      EditCari.Text:=QBrowse.FieldByName('KD_TRANSAKSI').AsString;
  end;
  QMaster.Close;
  QMaster.DeclareVariable('KD_TRANSAKSI',otString);
  QMaster.SQL.Text:='select a.*, a.rowid from '+cUserTabel+'transaksi a'+
    ' where a.kd_transaksi=:kd_transaksi';
  QMaster.SetVariable('kd_transaksi',EditCari.Text);
  QMaster.Open;
end;

procedure TJenisTransaksiFrm.TabSheet1Exit(Sender: TObject);
begin
  EditCari.Text:='';
end;

procedure TJenisTransaksiFrm.FormShow(Sender: TObject);
begin
  PanelHeader.Caption:='MASTER '+vbrg;
end;

procedure TJenisTransaksiFrm.ppDetailBand2BeforePrint(Sender: TObject);
begin
  vnomer:=vnomer+1;
  ppNomer.Caption:=IntToStr(vnomer);
end;

procedure TJenisTransaksiFrm.BtnPrintBrowseClick(Sender: TObject);
begin
      ppReportBrowse.Print;
end;

procedure TJenisTransaksiFrm.wwDBGrid2DblClick(Sender: TObject);
begin
  TabSheet1.Show;
end;

procedure TJenisTransaksiFrm.Label5Click(Sender: TObject);
begin
  if DMFrm.FontDialog1.Execute then
  begin
    DMFrm.vGridFontType:=DMFrm.FontDialog1.Font.Name;
    DMFrm.vGridFont:=DMFrm.FontDialog1.Font.Size;
    DMFrm.vGridFontColor:=DMFrm.FontDialog1.Font.Color;
    wwDBGrid2.Font.Name:=DMFrm.vGridFontType;
    wwDBGrid2.Font.Size:=DMFrm.vGridFont;
    wwDBGrid2.Font.Color:=DMFrm.vGridFontColor;
    wwDBGrid2.Font.Style:=DMFrm.FontDialog1.Font.Style;
  end;
end;

end.
