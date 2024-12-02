unit Organisasi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  DateUtils, Mask, wwdbedit, Wwdbspin, DB, Wwdatsrc, OracleData, Dialogs,
  Oracle, Buttons, wwSpeedButton, wwDBNavigator, wwclearpanel, Grids,
  Wwdbigrd, Wwdbgrid, StdCtrls, wwdbdatetimepicker, ComCtrls, ExtCtrls,
  ppViewr, ppDB, ppDBPipe, ppComm, ppRelatv, ppProd, ppClass, ppReport,
  ppVar, ppCtrls, ppBands, ppPrnabl, ppCache, ppEndUsr, ppModule,
  daDataModule, DBCtrls, wwdblook, Wwdbdlg, Wwdotdot, Wwdbcomb, ppBarCod,
  wwcheckbox;

type
  TOrganisasiFrm = class(TForm)
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
    wwDBGrid1: TwwDBGrid;
    Label14: TLabel;
    wwDBSpinLine1: TwwDBSpinEdit;
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
    ppDBText4: TppDBText;
    ppTitleBand1: TppTitleBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel6: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    BtnPrintBrowse: TBitBtn;
    QMasterKD_PARENT: TStringField;
    QMasterKD_DIV: TStringField;
    QMasterNAMA_DIVISI: TStringField;
    QMasterLVL: TFloatField;
    QBrowseKD_DIV: TStringField;
    QBrowseLVL: TFloatField;
    QBrowseLNAMA_DIVISI: TStringField;
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
    procedure wwDBSpinLine1Change(Sender: TObject);
    procedure EditCariKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TabSheet1Show(Sender: TObject);
    procedure TabSheet1Exit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ppDetailBand2BeforePrint(Sender: TObject);
    procedure BtnPrintBrowseClick(Sender: TObject);
    procedure wwDBGrid2DblClick(Sender: TObject);
    procedure Label5Click(Sender: TObject);
    procedure Label14Click(Sender: TObject);
  private
    { Private declarations }
    vorder, SelectedFont, vitem, vjns, vbrg : String;
    vnomer : integer;
  public
    { Public declarations }
  end;

var
  OrganisasiFrm: TOrganisasiFrm;

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

//  if OrganisasiFrm=Nil then
  begin
    OrganisasiFrm:=TOrganisasiFrm.Create(Application);
    if not DMFrm.cHakInput then
    begin
       OrganisasiFrm.QMaster.ReadOnly:=True;
       OrganisasiFrm.PageControl1.ActivePageIndex:=1;
    end;
    OrganisasiFrm.vjns:=pJns;
    mychar:=pbrg;
    Delete(mychar,Pos('&',mychar),1);
    pBrg:=mychar;
    OrganisasiFrm.vbrg:=UpperCase(pbrg);
    OrganisasiFrm.vitem:='vdivisi';
    OrganisasiFrm.Caption:='Master '+pbrg;
    OrganisasiFrm.PanelHeader.Caption:=UpperCase(pbrg);
    OrganisasiFrm.wwDBGrid1.IniAttributes.FileName:=DMFrm.sAppPath+Application.Title+'2.ini';
    OrganisasiFrm.wwDBGrid1.IniAttributes.SectionName:=OrganisasiFrm.Caption+'1';
    OrganisasiFrm.wwDBGrid1.IniAttributes.Enabled:=True;
    OrganisasiFrm.wwDBGrid1.LoadFromIniFile;
    OrganisasiFrm.wwDBGrid2.IniAttributes.FileName:=DMFrm.sAppPath+Application.Title+'2.ini';
    OrganisasiFrm.wwDBGrid2.IniAttributes.SectionName:=OrganisasiFrm.Caption+'2';
    OrganisasiFrm.wwDBGrid2.IniAttributes.Enabled:=True;
    OrganisasiFrm.wwDBGrid2.LoadFromIniFile;
    DMFrm.ProcReadIni(Application.Title,OrganisasiFrm.Caption+'1',OrganisasiFrm.wwDBGrid1);
    DMFrm.ProcReadIni(Application.Title,OrganisasiFrm.Caption+'2',OrganisasiFrm.wwDBGrid2);
    OrganisasiFrm.wwDBSpinLine1.Value:=OrganisasiFrm.wwDBGrid1.RowHeightPercent;
    OrganisasiFrm.wwDBSpinLine2.Value:=OrganisasiFrm.wwDBGrid2.RowHeightPercent;

  end;
  OrganisasiFrm.Show;
//  OrganisasiFrm.Free;
end;

procedure TOrganisasiFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   DMFrm.ProcWtiteIni(Application.Title,Caption+'1',wwDBGrid1);
   DMFrm.ProcWtiteIni(Application.Title,Caption+'2',wwDBGrid2);
   Action:=caFree;
   OrganisasiFrm:=Nil;
end;

procedure TOrganisasiFrm.FormCreate(Sender: TObject);
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

procedure TOrganisasiFrm.BtnExportClick(Sender: TObject);
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

procedure TOrganisasiFrm.BtnOkClick(Sender: TObject);
begin
      if QBrowse.QBEMode then
        QBrowse.QBEMode:=False;
      QBrowse.DisableControls;
      QBrowse.Close;
      QBrowse.SQL.Text:='select * from '+cUserTabel+vitem;
      QBrowse.Open;
      QBrowse.EnableControls;
      LabelBanner.Caption:='Data : '+FormatFloat('#,#',QBrowse.RecordCount)+' Records';
end;

procedure TOrganisasiFrm.wwDBGrid2TitleButtonClick(Sender: TObject;
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

procedure TOrganisasiFrm.QBrowseAfterScroll(DataSet: TDataSet);
begin
  LabelBanner.Caption:='Record ke '+IntToStr(QBrowse.RecNo)+' dari '+FormatFloat('#,#',QBrowse.RecordCount)+' Records';
end;

procedure TOrganisasiFrm.BtnClose1Click(Sender: TObject);
begin
  Close;
end;

procedure TOrganisasiFrm.BtnClose2Click(Sender: TObject);
begin
  Close;
end;

procedure TOrganisasiFrm.wwDBSpinLine2Change(Sender: TObject);
begin
    wwDBGrid2.RowHeightPercent:=Round(wwDBSpinLine2.Value);
end;

procedure TOrganisasiFrm.BtnFindClick(Sender: TObject);
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

procedure TOrganisasiFrm.BtnOk2Click(Sender: TObject);
begin
  if QBrowse.QBEMode then
  begin
    QBrowse.ExecuteQBE;
    wwDBGrid2.Options:=wwDBGrid2.Options+[dgRowSelect,dgAlwaysShowSelection];
  end;

end;

procedure TOrganisasiFrm.ppHeaderBand1BeforePrint(Sender: TObject);
begin
//  ppNo.AsInteger:=0;
end;

procedure TOrganisasiFrm.Button1Click(Sender: TObject);
begin
  ppDesigner1.ShowModal;
end;

procedure TOrganisasiFrm.BtnDesign2Click(Sender: TObject);
begin
  ppDesigner1.Report:=ppReportBrowse;
  ppDesigner1.ShowModal;
end;

procedure TOrganisasiFrm.ppTitleBand1BeforePrint(Sender: TObject);
begin
  ppNamaLaporan.Caption:='MASTER '+vbrg;
//  ppPeriode.Caption:=vTglAwal.Text+' s/d '+vTglAkhir.Text;
  DMFrm.QTime.Close;
  DMFrm.QTime.Open;
  ppUserCetak.Caption:=DMFrm.QTimeVUSER_CETAK.AsString;
  vnomer:=0;
end;

procedure TOrganisasiFrm.wwDBSpinLine1Change(Sender: TObject);
begin
    wwDBGrid1.RowHeightPercent:=Round(wwDBSpinLine1.Value);
end;

procedure TOrganisasiFrm.EditCariKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=13 then
  begin
    wwDBSpinLine1.SetFocus;
    TabSheet1Show(Nil);
    EditCari.SetFocus;
  end;
end;

procedure TOrganisasiFrm.TabSheet1Show(Sender: TObject);
begin

  if (EditCari.Text='') and (QBrowsekd_div.AsString<>'') then
  begin
      EditCari.Text:=QBrowsekd_div.AsString;
  end;
  QMaster.Close;
  QMaster.SQL.Text:='select a.*, a.rowid from '+cUserTabel+'divisi a'+
    ' order by a.kd_div';
  QMaster.Open;
end;

procedure TOrganisasiFrm.TabSheet1Exit(Sender: TObject);
begin
  EditCari.Text:='';
end;

procedure TOrganisasiFrm.FormShow(Sender: TObject);
begin
  PanelHeader.Caption:='MASTER '+vbrg;
end;

procedure TOrganisasiFrm.ppDetailBand2BeforePrint(Sender: TObject);
begin
  vnomer:=vnomer+1;
  ppNomer.Caption:=IntToStr(vnomer);
end;

procedure TOrganisasiFrm.BtnPrintBrowseClick(Sender: TObject);
begin
  ppReportBrowse.Print;
end;

procedure TOrganisasiFrm.wwDBGrid2DblClick(Sender: TObject);
begin
  TabSheet1.Show;
end;

procedure TOrganisasiFrm.Label5Click(Sender: TObject);
begin
  if DMFrm.FontDialog1.Execute then
  begin
    wwDBGrid2.Font.Name:=DMFrm.FontDialog1.Font.Name;
    wwDBGrid2.Font.Size:=DMFrm.FontDialog1.Font.Size;
    wwDBGrid2.Font.Color:=DMFrm.FontDialog1.Font.Color;
    wwDBGrid2.Font.Style:=DMFrm.FontDialog1.Font.Style;
  end;
end;

procedure TOrganisasiFrm.Label14Click(Sender: TObject);
begin
  if DMFrm.FontDialog1.Execute then
  begin
    wwDBGrid1.Font.Name:=DMFrm.FontDialog1.Font.Name;
    wwDBGrid1.Font.Size:=DMFrm.FontDialog1.Font.Size;
    wwDBGrid1.Font.Color:=DMFrm.FontDialog1.Font.Color;
    wwDBGrid1.Font.Style:=DMFrm.FontDialog1.Font.Style;
  end;

end;

end.
