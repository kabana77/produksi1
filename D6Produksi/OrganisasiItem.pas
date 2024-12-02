unit OrganisasiItem;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  DateUtils, Mask, wwdbedit, Wwdbspin, DB, Wwdatsrc, OracleData, Dialogs,
  Oracle, Buttons, wwSpeedButton, wwDBNavigator, wwclearpanel, Grids,
  Wwdbigrd, Wwdbgrid, StdCtrls, wwdbdatetimepicker, ComCtrls, ExtCtrls,
  ppViewr, ppDB, ppDBPipe, ppComm, ppRelatv, ppProd, ppClass, ppReport,
  ppVar, ppCtrls, ppBands, ppPrnabl, ppCache, ppEndUsr, ppModule,
  daDataModule, DBCtrls, wwdblook, Wwdbdlg, Wwdotdot, Wwdbcomb, ppBarCod,
  wwcheckbox, ppStrtch, ppMemo, IniFiles, wwDialog, wwrcdvw, ppParameter;

type
  TOrganisasiItemFrm = class(TForm)
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
    DBMemo1: TDBMemo;
    Label6: TLabel;
    wwDBEdit1: TwwDBEdit;
    DBText3: TDBText;
    wwDBGrid1: TwwDBGrid;
    QDetail: TOracleDataSet;
    dsQDetail: TwwDataSource;
    Label14: TLabel;
    wwDBSpinLine1: TwwDBSpinEdit;
    wwDBNavigatorInput: TwwDBNavigator;
    wwDBNavigatorInputNext: TwwNavButton;
    wwDBNavigatorInputCancel: TwwNavButton;
    wwDBNavigatorInputButton: TwwNavButton;
    LBarcode: TDBText;
    EditCari: TEdit;
    Label15: TLabel;
    ppDBQMaster: TppDBPipeline;
    ppDBQDetail: TppDBPipeline;
    QMasterKD_JNS_ITEM: TStringField;
    QMasterKD_ITEM: TStringField;
    QMasterKD_SUB_KEL: TStringField;
    QMasterKD_WARNA: TStringField;
    QMasterKD_SATUAN: TStringField;
    QMasterKD_PARENT: TStringField;
    QMasterNAMA_ITEM: TStringField;
    QMasterDISKRIPSI: TStringField;
    QMasterISFIXED: TStringField;
    QMasterLEAD_TIME: TFloatField;
    QMasterMIN_STOK: TFloatField;
    QMasterKD_KEMASAN: TStringField;
    QMasterKD_IK: TStringField;
    QMasterKD_MERK: TStringField;
    QBrowseKD_ITEM: TStringField;
    QBrowseNAMA_ITEM: TStringField;
    QBrowseLEAD_TIME: TFloatField;
    QBrowseMIN_STOK: TFloatField;
    QBrowseSATUAN: TStringField;
    QDetailKD_ITEM: TStringField;
    QDetailQTY: TFloatField;
    QKelompok: TOracleDataSet;
    QKelompokNAMA_KELOMPOK: TStringField;
    QKelompokKD_KEL: TStringField;
    QKelompokKD_JNS_ITEM: TStringField;
    QSubKelompok: TOracleDataSet;
    QSatuan: TOracleDataSet;
    QSatuanSATUAN: TStringField;
    QSatuanKD_SATUAN: TStringField;
    QWarna: TOracleDataSet;
    QMerk: TOracleDataSet;
    QMerkKD_MERK: TStringField;
    QMerkNAMA_MERK: TStringField;
    QMerkKD_JNS_ITEM: TStringField;
    Label9: TLabel;
    wwDBLookupComboDlg4: TwwDBLookupComboDlg;
    Label10: TLabel;
    wwDBSpinEdit3: TwwDBSpinEdit;
    Label11: TLabel;
    GroupBox1: TGroupBox;
    Label7: TLabel;
    Label8: TLabel;
    wwDBLookupComboDlg1: TwwDBLookupComboDlg;
    wwDBLookupComboDlg2: TwwDBLookupComboDlg;
    Label16: TLabel;
    wwDBLookupComboDlg3: TwwDBLookupComboDlg;
    cbResep: TwwCheckBox;
    wwDBEdit2: TwwDBEdit;
    Label13: TLabel;
    QMasterKD_KEL: TStringField;
    QMasterISRESEP: TStringField;
    LKelompok: TLabel;
    LSubKelompok: TLabel;
    LMerk: TLabel;
    LSatuan: TLabel;
    QSubKelompokNAMA_SUB_KELOMPOK: TStringField;
    QSubKelompokKD_KEL: TStringField;
    QSubKelompokKD_SUB_KEL: TStringField;
    QWarnaWARNA: TStringField;
    QWarnaKD_WARNA: TStringField;
    wwDBNavigatorInputButton1: TwwNavButton;
    wwDBNavigatorInputButton2: TwwNavButton;
    QBrowseNAMA_KELOMPOK: TStringField;
    QBrowseNAMA_SUB_KELOMPOK: TStringField;
    QBrowseNAMA_MERK: TStringField;
    ppReportInput: TppReport;
    ppReportBrowse: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppDBBarCode1: TppDBBarCode;
    PanelFilter: TPanel;
    Label5: TLabel;
    BtnFind: TSpeedButton;
    BtnOk2: TSpeedButton;
    BtnOk: TBitBtn;
    wwDBSpinLine2: TwwDBSpinEdit;
    BtnDesign1: TBitBtn;
    QMaxKode: TOracleDataSet;
    wwDBNavigatorInputButton3: TwwNavButton;
    CheckBox1: TCheckBox;
    ppTitleBand1: TppTitleBand;
    ppNamaLaporan: TppLabel;
    ppUserCetak: TppLabel;
    ppHeaderBand2: TppHeaderBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel6: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppNomer: TppLabel;
    ppDBText3: TppDBText;
    ppDBText5: TppDBText;
    ppFooterBand2: TppFooterBand;
    ppSystemVariable1: TppSystemVariable;
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
    QMasterRASIO: TFloatField;
    QDetailNAMA_BARANG: TStringField;
    QDetailKD_ITEM2: TStringField;
    QDetailSATUAN: TStringField;
    QItem: TOracleDataSet;
    QItemNAMA_ITEM: TStringField;
    QItemKD_ITEM: TStringField;
    QItemSATUAN: TStringField;
    QItemLEAD_TIME: TFloatField;
    QItemMIN_STOK: TFloatField;
    LookItem: TwwDBLookupComboDlg;
    QMasterKD_LAMA: TStringField;
    QMasterNO_PART: TStringField;
    cbFixed: TwwCheckBox;
    wwRecordViewDialog1: TwwRecordViewDialog;
    dsQKelompok: TwwDataSource;
    wwRecordViewDialog2: TwwRecordViewDialog;
    wwRecordViewDialog3: TwwRecordViewDialog;
    dsQSubKelompok: TwwDataSource;
    dsQMerk: TwwDataSource;
    QBrowseNO_PART: TStringField;
    QMasterISJASA: TStringField;
    QMasterRASIO2: TFloatField;
    QMasterRASIO3: TFloatField;
    wwDBRasio: TwwDBSpinEdit;
    LRasio: TLabel;
    lblSpring: TLabel;
    Label4: TLabel;
    wwDBSpinEdit1: TwwDBSpinEdit;
    Label12: TLabel;
    Label17: TLabel;
    wwDBSpinEdit4: TwwDBSpinEdit;
    Label18: TLabel;
    Label19: TLabel;
    wwDBSpinEdit5: TwwDBSpinEdit;
    Label20: TLabel;
    QMasterRASIO_CONES: TFloatField;
    QMasterRASIO_PALLET: TFloatField;
    QMasterHELAI: TFloatField;
    lblSat: TLabel;
    wwDBSpin: TwwDBSpinEdit;
    lblSpringISI: TLabel;
    Label22: TLabel;
    wwDBSpinEdit6: TwwDBSpinEdit;
    QMasterNO_BENANG: TFloatField;
    QBrowseRASIO: TFloatField;
    GroupBox2: TGroupBox;
    QBrowseRASIO2: TFloatField;
    wwCheckBox1: TwwCheckBox;
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
    procedure QMasterNewRecord(DataSet: TDataSet);
    procedure wwDBLookupComboDlg1Enter(Sender: TObject);
    procedure wwDBLookupComboDlg1CloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure wwDBLookupComboDlg3CloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure wwDBLookupComboDlg2CloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure wwDBLookupComboDlg4CloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure Label8Click(Sender: TObject);
    procedure Label7Click(Sender: TObject);
    procedure Label16Click(Sender: TObject);
    procedure Label10Click(Sender: TObject);
    procedure QSubKelompokNewRecord(DataSet: TDataSet);
    procedure QKelompokBeforeQuery(Sender: TOracleDataSet);
    procedure QKelompokNewRecord(DataSet: TDataSet);
    procedure QSubKelompokBeforeQuery(Sender: TOracleDataSet);
    procedure QSatuanBeforeQuery(Sender: TOracleDataSet);
    procedure QWarnaBeforeQuery(Sender: TOracleDataSet);
    procedure QMerkBeforeQuery(Sender: TOracleDataSet);
    procedure QMerkNewRecord(DataSet: TDataSet);
    procedure wwDBNavigatorInputButton2Click(Sender: TObject);
    procedure QDetailNewRecord(DataSet: TDataSet);
    procedure QMasterISRESEPChange(Sender: TField);
    procedure FormShow(Sender: TObject);
    procedure BtnDesign1Click(Sender: TObject);
    procedure QMaxKodeBeforeQuery(Sender: TOracleDataSet);
    procedure QMasterNAMA_ITEMChange(Sender: TField);
    procedure QMasterBeforePost(DataSet: TDataSet);
    procedure QMasterAfterDelete(DataSet: TDataSet);
    procedure ppDetailBand2BeforePrint(Sender: TObject);
    procedure wwDBGrid2DblClick(Sender: TObject);
    procedure Label5Click(Sender: TObject);
    procedure Label14Click(Sender: TObject);
    procedure QItemBeforeQuery(Sender: TOracleDataSet);
    procedure LookItemEnter(Sender: TObject);
    procedure wwDBLookupComboDlg3Enter(Sender: TObject);
    procedure wwDBLookupComboDlg2Enter(Sender: TObject);
    procedure wwDBLookupComboDlg4Enter(Sender: TObject);
    procedure QMasterRASIOChange(Sender: TField);
    procedure TabSheet2Show(Sender: TObject);
  private
    { Private declarations }
    vorder, SelectedFont, vjns, vbrg : String;
    vnomer : integer;
  public
    { Public declarations }
  end;

var
  OrganisasiItemFrm: TOrganisasiItemFrm;

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

//  if OrganisasiItemFrm=Nil then
  begin
    OrganisasiItemFrm:=TOrganisasiItemFrm.Create(Application);
    if not DMFrm.cHakInput then
    begin
       OrganisasiItemFrm.QMaster.ReadOnly:=True;
       OrganisasiItemFrm.QDetail.ReadOnly:=True;
       OrganisasiItemFrm.PageControl1.ActivePageIndex:=1;
    end;
    mychar:=pbrg;
    Delete(mychar,Pos('&',mychar),1);
    pBrg:=mychar;
    OrganisasiItemFrm.vjns:=copy(pbrg,1,2);
    if OrganisasiItemFrm.vjns='60' then
       OrganisasiItemFrm.cbResep.Caption:='Kendaraan/ Alat'
       else
       OrganisasiItemFrm.cbResep.Caption:='Punya Resep';
    OrganisasiItemFrm.vbrg:=UpperCase(pbrg);
    OrganisasiItemFrm.Caption:='Master '+pbrg;
    OrganisasiItemFrm.PanelHeader.Caption:=UpperCase(pbrg);
    OrganisasiItemFrm.wwDBGrid1.IniAttributes.FileName:=DMFrm.sAppPath+Application.Title+'2.ini';
    OrganisasiItemFrm.wwDBGrid1.IniAttributes.SectionName:=OrganisasiItemFrm.Caption+'1';
    OrganisasiItemFrm.wwDBGrid1.IniAttributes.Enabled:=True;
    OrganisasiItemFrm.wwDBGrid1.LoadFromIniFile;
    OrganisasiItemFrm.wwDBGrid2.IniAttributes.FileName:=DMFrm.sAppPath+Application.Title+'2.ini';
    OrganisasiItemFrm.wwDBGrid2.IniAttributes.SectionName:=OrganisasiItemFrm.Caption+'2';
    OrganisasiItemFrm.wwDBGrid2.IniAttributes.Enabled:=True;
    OrganisasiItemFrm.wwDBGrid2.LoadFromIniFile;
    DMFrm.ProcReadIni(Application.Title,OrganisasiItemFrm.Caption+'1',OrganisasiItemFrm.wwDBGrid1);
    DMFrm.ProcReadIni(Application.Title,OrganisasiItemFrm.Caption+'2',OrganisasiItemFrm.wwDBGrid2);
    OrganisasiItemFrm.wwDBSpinLine1.Value:=OrganisasiItemFrm.wwDBGrid1.RowHeightPercent;
    OrganisasiItemFrm.wwDBSpinLine2.Value:=OrganisasiItemFrm.wwDBGrid2.RowHeightPercent;
  end;
  OrganisasiItemFrm.Show;
//  OrganisasiItemFrm.Free;
end;

procedure TOrganisasiItemFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   DMFrm.ProcWtiteIni(Application.Title,Caption+'1',wwDBGrid1);
   DMFrm.ProcWtiteIni(Application.Title,Caption+'2',wwDBGrid2);
   DMFrm.QItemAll.Close;
   Action:=caFree;
   OrganisasiItemFrm:=Nil;
end;

procedure TOrganisasiItemFrm.FormCreate(Sender: TObject);
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

procedure TOrganisasiItemFrm.BtnExportClick(Sender: TObject);
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

procedure TOrganisasiItemFrm.BtnOkClick(Sender: TObject);
begin
      if QBrowse.QBEMode then
        QBrowse.QBEMode:=False;
      QBrowse.DisableControls;
      QBrowse.Close;
      QBrowse.DeclareVariable('kd_jns_item',otString);
      QBrowse.DeclareVariable('porder',otSubst);
      QBrowse.SQL.Text:='select * from '+cUserTabel+'vitemall2 where kd_jns_item=:kd_jns_item '+' :porder';
      QBrowse.SetVariable('kd_jns_item',vjns);
      QBrowse.SetVariable('porder',vorder);
      QBrowse.Open;
      QBrowse.EnableControls;
      LabelBanner.Caption:='Data : '+FormatFloat('#,#',QBrowse.RecordCount)+' Records';

  //MAA 29-08-2019
if vjns='10' then
  begin

   wwDBGrid2.ColumnByName('RASIO').DisplayLabel:='Spring';
   wwDBGrid2.ColumnByName('RASIO2').DisplayLabel:='isi/Spring';
   wwDBGrid2.ColumnByName('RASIO2').DisplayWidth:=10;

  end
else
  begin

   wwDBGrid2.ColumnByName('RASIO').DisplayLabel:='isi/Spring';
   wwDBGrid2.ColumnByName('RASIO2').DisplayLabel:='';//isi/Spring';
   wwDBGrid2.ColumnByName('RASIO2').DisplayWidth:=0;

  end;

end;

procedure TOrganisasiItemFrm.wwDBGrid2TitleButtonClick(Sender: TObject;
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

procedure TOrganisasiItemFrm.QBrowseAfterScroll(DataSet: TDataSet);
begin
  LabelBanner.Caption:='Record ke '+IntToStr(QBrowse.RecNo)+' dari '+FormatFloat('#,#',QBrowse.RecordCount)+' Records';
end;

procedure TOrganisasiItemFrm.BtnClose1Click(Sender: TObject);
begin
  Close;
end;

procedure TOrganisasiItemFrm.BtnClose2Click(Sender: TObject);
begin
  Close;
end;

procedure TOrganisasiItemFrm.wwDBSpinLine2Change(Sender: TObject);
begin
    wwDBGrid2.RowHeightPercent:=Round(wwDBSpinLine2.Value);
end;

procedure TOrganisasiItemFrm.BtnFindClick(Sender: TObject);
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

procedure TOrganisasiItemFrm.BtnOk2Click(Sender: TObject);
begin
  if QBrowse.QBEMode then
  begin
    QBrowse.ExecuteQBE;
    wwDBGrid2.Options:=wwDBGrid2.Options+[dgRowSelect,dgAlwaysShowSelection];
  end;

end;

procedure TOrganisasiItemFrm.ppHeaderBand1BeforePrint(Sender: TObject);
begin
//  ppNo.AsInteger:=0;
end;

procedure TOrganisasiItemFrm.BtnPrintBrowseClick(Sender: TObject);
begin
  if CheckBox1.Checked then
  begin
     ppReportBrowse2.Print;  end
  else
    begin
			ppReportBrowse.Print;
    end;

end;

procedure TOrganisasiItemFrm.Button1Click(Sender: TObject);
begin
  ppDesigner1.ShowModal;
end;

procedure TOrganisasiItemFrm.BtnDesign2Click(Sender: TObject);
begin
  ppDesigner1.Report:=ppReportBrowse;
  ppDesigner1.ShowModal;
end;

procedure TOrganisasiItemFrm.ppTitleBand1BeforePrint(Sender: TObject);
begin
  ppNamaLaporan.Caption:=UpperCase(Caption);
//  ppPeriode.Caption:=vTglAwal.Text+' s/d '+vTglAkhir.Text;
  DMFrm.QTime.Close;
  DMFrm.QTime.Open;
  ppUserCetak.Caption:=DMFrm.QTimeVUSER_CETAK.AsString;
  vnomer:=0;
end;

procedure TOrganisasiItemFrm.wwDBSpinLine1Change(Sender: TObject);
begin
    wwDBGrid1.RowHeightPercent:=Round(wwDBSpinLine1.Value);
end;

procedure TOrganisasiItemFrm.EditCariKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=13 then
  begin
    wwDBSpinLine1.SetFocus;
    TabSheet1Show(Nil);
    EditCari.SetFocus;
  end;
end;

procedure TOrganisasiItemFrm.TabSheet1Show(Sender: TObject);
begin

  if (EditCari.Text='') and (QBrowseKD_ITEM.AsString<>'') then
  begin
      EditCari.Text:=QBrowseKD_ITEM.AsString;
      LKelompok.Caption:=QBrowseNAMA_KELOMPOK.AsString+' ';
      LSubKelompok.Caption:=QBrowseNAMA_SUB_KELOMPOK.AsString+' ';
      LMerk.Caption:=QBrowseNAMA_MERK.AsString+' ';
      LSatuan.Caption:=QBrowseSATUAN.AsString+' ';
  end;
  QKelompok.Open;
  QMaster.Close;
  QMaster.DeclareVariable('kd_item',otString);
  QMaster.SQL.Text:='select a.*, a.rowid from '+cUserTabel+'item a'+
    ' where a.kd_item=:kd_item';
  QMaster.SetVariable('kd_item',EditCari.Text);
  QMaster.Open;
  wwDBLookupComboDlg3.Text:=QMasterKD_SUB_KEL.AsString;
  QDetail.Close;
  QDetail.DeclareVariable('kd_item',otString);
  QDetail.SQL.Text:='select a.*, a.rowid from '+cUserTabel+'item_detail a'+
    ' where a.kd_item=:kd_item';
  QDetail.SetVariable('kd_item',QMasterKD_ITEM.AsString);
  QDetail.Open;
  wwDBGrid1.Enabled:=QMasterISRESEP.AsString='1';
end;

procedure TOrganisasiItemFrm.TabSheet1Exit(Sender: TObject);
begin
  EditCari.Text:='';
end;

procedure TOrganisasiItemFrm.BtnPrintInputClick(Sender: TObject);
begin
  ppReportInput.Print;
end;

procedure TOrganisasiItemFrm.QMasterNewRecord(DataSet: TDataSet);
begin
  QItem.Close;
  QMasterKD_JNS_ITEM.AsString:=vjns;
  QMasterLEAD_TIME.AsInteger:=1;
  QMasterMIN_STOK.AsInteger:=0;
  QMasterISFIXED.AsString:='0';
  QMasterISRESEP.AsString:='0';
  QMasterRASIO.AsFloat:=0;
  QMasterRASIO2.AsFloat:=0;
  QMasterRASIO3.AsFloat:=0;
  QMasterRASIO_CONES.AsFloat:=0;
  QMasterRASIO_PALLET.AsFloat:=0;  
  LKelompok.Caption:='';
  LSubKelompok.Caption:='';
  LMerk.Caption:='';
  LSatuan.Caption:='';
  wwDBLookupComboDlg3.Text:='';

end;

procedure TOrganisasiItemFrm.wwDBLookupComboDlg1Enter(Sender: TObject);
begin
 QKelompok.Close;
 QKelompok.Open;

{  (sender as TwwDBLookupComboDlg).GridOptions:=(sender as TwwDBLookupComboDlg).GridOptions-
    [dgEditing]-
    [dgAlwaysShowEditor]+
    [dgRowSelect]+
    [dgAlwaysShowSelection];
  if not ((sender as TwwDBLookupComboDlg).LookupTable.Active) then
    (sender as TwwDBLookupComboDlg).LookupTable.Open;
    }
end;


procedure TOrganisasiItemFrm.wwDBLookupComboDlg1CloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
  if modified then
  begin
      LKelompok.Caption:=QKelompokNAMA_KELOMPOK.AsString+' ';
      QMasterKD_SUB_KEL.AsString:='';
      LSubKelompok.Caption:='';
      QMasterDISKRIPSI.AsString:=LKelompok.Caption+
        LSubKelompok.Caption+
        LMerk.Caption+
        QMasterNAMA_ITEM.AsString+' '+
        LSatuan.Caption;
  end;
end;

procedure TOrganisasiItemFrm.wwDBLookupComboDlg3CloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
  if modified then
  begin
      LSubKelompok.Caption:=QSubKelompokNAMA_SUB_KELOMPOK.AsString+' ';
      wwDBLookupComboDlg3.Text:=QSubKelompokKD_SUB_KEL.AsString;
      QMasterDISKRIPSI.AsString:=LKelompok.Caption+
        LSubKelompok.Caption+
        LMerk.Caption+
        QMasterNAMA_ITEM.AsString+' '+
        LSatuan.Caption;
  end;

end;

procedure TOrganisasiItemFrm.wwDBLookupComboDlg2CloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
  if modified then
  begin
      LMerk.Caption:=QMerkNAMA_MERK.AsString+' ';
      QMasterDISKRIPSI.AsString:=LKelompok.Caption+
        LSubKelompok.Caption+
        LMerk.Caption+
        QMasterNAMA_ITEM.AsString+' '+
        LSatuan.Caption;
  end;

end;

procedure TOrganisasiItemFrm.wwDBLookupComboDlg4CloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
  if modified then
  begin
      LSatuan.Caption:=QSatuanSATUAN.AsString;
      QMasterDISKRIPSI.AsString:=LKelompok.Caption+
        LSubKelompok.Caption+
        LMerk.Caption+
        QMasterNAMA_ITEM.AsString+' '+
        LSatuan.Caption;
  end;
end;

procedure TOrganisasiItemFrm.Label8Click(Sender: TObject);
begin
 QKelompok.Close;
 QKelompok.Open;
 wwRecordViewDialog1.Execute;
{  wwDBLookupComboDlg1.GridOptions:=wwDBLookupComboDlg1.GridOptions+
    [dgEditing]+
    [dgAlwaysShowEditor]-
    [dgRowSelect]-
    [dgAlwaysShowSelection];
  wwDBLookupComboDlg1.DropDown;
}
end;

procedure TOrganisasiItemFrm.Label7Click(Sender: TObject);
begin
 QSubKelompok.Close;
 QSubKelompok.Open;
 wwRecordViewDialog2.Execute;

{  wwDBLookupComboDlg3.GridOptions:=wwDBLookupComboDlg3.GridOptions+
    [dgEditing]+
    [dgAlwaysShowEditor]-
    [dgRowSelect]-
    [dgAlwaysShowSelection];
  wwDBLookupComboDlg3.DropDown;
 }
end;

procedure TOrganisasiItemFrm.Label16Click(Sender: TObject);
begin
 QMerk.Close;
 QMerk.Open;
 wwRecordViewDialog3.Execute;

{  wwDBLookupComboDlg2.GridOptions:=wwDBLookupComboDlg2.GridOptions+
    [dgEditing]+
    [dgAlwaysShowEditor]-
    [dgRowSelect]-
    [dgAlwaysShowSelection];
  wwDBLookupComboDlg2.DropDown;
 }
end;

procedure TOrganisasiItemFrm.Label10Click(Sender: TObject);
begin
  wwDBLookupComboDlg4.GridOptions:=wwDBLookupComboDlg4.GridOptions+
    [dgEditing]+
    [dgAlwaysShowEditor]-
    [dgRowSelect]-
    [dgAlwaysShowSelection];
  wwDBLookupComboDlg4.DropDown;
end;

procedure TOrganisasiItemFrm.QSubKelompokNewRecord(DataSet: TDataSet);
begin
  QSubKelompokKD_KEL.AsString:=QKelompokKD_KEL.AsString;
end;

procedure TOrganisasiItemFrm.QKelompokBeforeQuery(Sender: TOracleDataSet);
begin
      QKelompok.DeclareVariable('kd_jns_item', otString);
      QKelompok.SQL.Text:='select a.*, a.rowid from '+cUserTabel+'kelompok a'+
        ' where a.kd_jns_item=:kd_jns_item order by a.nama_kelompok';
      QKelompok.SetVariable('kd_jns_item',vjns);

  //MAA 29-08-2019
if vjns='10' then
  begin
   lblSpring.Caption:='Spring';
   lblSpringISI.Caption:='isi/Spring';
   wwDBSpin.ReadOnly:=False;
   lblSpringISI.Visible:=True;
   wwDBSpin.Visible:=True;
   lblSat.Visible:=True;
   wwDBGrid2.ColumnByName('RASIO2').DisplayLabel:='isi/Spring';
   wwDBGrid2.ColumnByName('RASIO2').DisplayWidth:=10;

  end
else
  begin
   lblSpring.Caption:='isi Spring';
   lblSpringISI.Caption:='isi/Spring';
   wwDBSpin.ReadOnly:=True;
   lblSpringISI.Visible:=False;
   wwDBSpin.Visible:=False;
   lblSat.Visible:=False;
   wwDBGrid2.ColumnByName('RASIO2').DisplayLabel:='';
   wwDBGrid2.ColumnByName('RASIO2').DisplayWidth:=0;
   
  end;

end;

procedure TOrganisasiItemFrm.QKelompokNewRecord(DataSet: TDataSet);
begin
  QKelompokKD_JNS_ITEM.AsString:=vjns;
end;

procedure TOrganisasiItemFrm.QSubKelompokBeforeQuery(
  Sender: TOracleDataSet);
begin
      QSubKelompok.DeclareVariable('kd_kel', otString);
      QSubKelompok.SQL.Text:='select a.*, a.rowid from '+cUserTabel+'sub_kelompok a'+
        ' where a.kd_kel=:kd_kel order by a.nama_sub_kelompok';
      QSubKelompok.SetVariable('kd_kel',QKelompokKD_KEL.AsString);
end;

procedure TOrganisasiItemFrm.QSatuanBeforeQuery(Sender: TOracleDataSet);
begin
      QSatuan.SQL.Text:='select a.*, a.rowid from '+cUserTabel+'satuan a'+
        ' order by a.satuan';
end;

procedure TOrganisasiItemFrm.QWarnaBeforeQuery(Sender: TOracleDataSet);
begin
      QWarna.SQL.Text:='select a.*, a.rowid from '+cUserTabel+'warna a'+
        ' order by a.warna';
end;

procedure TOrganisasiItemFrm.QMerkBeforeQuery(Sender: TOracleDataSet);
begin
      QMerk.SQL.Text:='select a.*, a.rowid from '+cUserTabel+'merk a'+
        ' order by a.nama_merk';
end;

procedure TOrganisasiItemFrm.QMerkNewRecord(DataSet: TDataSet);
begin
  QMerkKD_JNS_ITEM.AsString:=vjns;
end;

procedure TOrganisasiItemFrm.wwDBNavigatorInputButton2Click(
  Sender: TObject);
var
  vkode : string;
  vnomer : integer;
begin
  if QMaster.State=dsInsert then
  begin
    QMaxKode.Close;
    QMaxKode.Open;
    if QMaxKode.FieldByName('KODE').AsString<>'' then
    begin
      vkode:=copy(QMaxKode.FieldByName('KODE').AsString,4,5);
      vnomer:=StrToInt(vkode)+1;
      vkode:=vjns+'.'+FormatFloat('00000',vnomer);
    end
    else
      vkode:=vjns+'.'+'00001';
    if InputQuery('Kode','Kode : ',vkode) then
       QMasterKD_ITEM.AsString:=vkode
       else
    Abort;
  end;
end;

procedure TOrganisasiItemFrm.QDetailNewRecord(DataSet: TDataSet);
begin
  QDetailKD_ITEM.AsString:=QMasterKD_ITEM.AsString;
end;

procedure TOrganisasiItemFrm.QMasterISRESEPChange(Sender: TField);
begin
  wwDBGrid1.Enabled:=QMasterISRESEP.AsString='1';
end;

procedure TOrganisasiItemFrm.FormShow(Sender: TObject);
begin
  PanelHeader.Caption:=UpperCase(Caption)+' '+vbrg;
end;

procedure TOrganisasiItemFrm.BtnDesign1Click(Sender: TObject);
begin
  ppDesigner1.Report:=ppReportInput;
  ppDesigner1.ShowModal;
end;

procedure TOrganisasiItemFrm.QMaxKodeBeforeQuery(Sender: TOracleDataSet);
begin
  QMaxKode.SetVariable('KD_JNS_ITEM',vjns);
end;

procedure TOrganisasiItemFrm.QMasterNAMA_ITEMChange(Sender: TField);
begin
  QMasterDISKRIPSI.AsString:=LKelompok.Caption+
        LSubKelompok.Caption+
        LMerk.Caption+
        QMasterNAMA_ITEM.AsString+' '+
        LSatuan.Caption;
end;

procedure TOrganisasiItemFrm.QMasterBeforePost(DataSet: TDataSet);
begin
  QMasterKD_SUB_KEL.AsString:=wwDBLookupComboDlg3.Text;
 // QMasterRASIO2.AsFloat:=QMasterRASIO.AsFloat;
end;

procedure TOrganisasiItemFrm.QMasterAfterDelete(DataSet: TDataSet);
begin
  wwDBLookupComboDlg3.Text:='';
end;

procedure TOrganisasiItemFrm.ppDetailBand2BeforePrint(Sender: TObject);
begin
  vnomer:=vnomer+1;
  ppNomer.Caption:=IntToStr(vnomer);
end;

procedure TOrganisasiItemFrm.wwDBGrid2DblClick(Sender: TObject);
begin
  TabSheet1.Show;
end;

procedure TOrganisasiItemFrm.Label5Click(Sender: TObject);
begin
  if DMFrm.FontDialog1.Execute then
  begin
    wwDBGrid2.Font.Name:=DMFrm.FontDialog1.Font.Name;
    wwDBGrid2.Font.Size:=DMFrm.FontDialog1.Font.Size;
    wwDBGrid2.Font.Color:=DMFrm.FontDialog1.Font.Color;
    wwDBGrid2.Font.Style:=DMFrm.FontDialog1.Font.Style;
  end;
end;

procedure TOrganisasiItemFrm.Label14Click(Sender: TObject);
begin
  if DMFrm.FontDialog1.Execute then
  begin
    wwDBGrid1.Font.Name:=DMFrm.FontDialog1.Font.Name;
    wwDBGrid1.Font.Size:=DMFrm.FontDialog1.Font.Size;
    wwDBGrid1.Font.Color:=DMFrm.FontDialog1.Font.Color;
    wwDBGrid1.Font.Style:=DMFrm.FontDialog1.Font.Style;
  end;

end;

procedure TOrganisasiItemFrm.QItemBeforeQuery(Sender: TOracleDataSet);
begin
  if vjns<>'' then
  begin
    QItem.DeclareVariable('kd_jns_item',otString);
  	QItem.SQL.Text:='select a.* from '+cUserTabel+'vitemall a where a.kd_jns_item=:kd_jns_item';
    QItem.SetVariable('kd_jns_item',vjns);

  end;
end;

procedure TOrganisasiItemFrm.LookItemEnter(Sender: TObject);
begin
  QItem.Close;
  QItem.Open;
end;

procedure TOrganisasiItemFrm.wwDBLookupComboDlg3Enter(Sender: TObject);
begin
  QSubKelompok.Close;
  QSubKelompok.Open;
end;

procedure TOrganisasiItemFrm.wwDBLookupComboDlg2Enter(Sender: TObject);
begin
  QMerk.Close;
  QMerk.Open;
end;

procedure TOrganisasiItemFrm.wwDBLookupComboDlg4Enter(Sender: TObject);
begin
 (sender as TwwDBLookupComboDlg).GridOptions:=(sender as TwwDBLookupComboDlg).GridOptions-
    [dgEditing]-
    [dgAlwaysShowEditor]+
    [dgRowSelect]+
    [dgAlwaysShowSelection];
  if not ((sender as TwwDBLookupComboDlg).LookupTable.Active) then
    (sender as TwwDBLookupComboDlg).LookupTable.Open;
end;

procedure TOrganisasiItemFrm.QMasterRASIOChange(Sender: TField);
begin
//MAA 29-08-2019
if QMasterKD_KEL.AsString='10' then
  begin
   QMasterRASIO2.AsFloat:=0;
  end
else
  begin
   QMasterRASIO2.AsFloat:=QMasterRASIO.AsFloat;
  end;
end;

procedure TOrganisasiItemFrm.TabSheet2Show(Sender: TObject);
begin
  //MAA 29-08-2019
if vjns='10' then
  begin

   wwDBGrid2.ColumnByName('RASIO').DisplayLabel:='Spring';
   wwDBGrid2.ColumnByName('RASIO2').DisplayLabel:='isi/Spring';
   wwDBGrid2.ColumnByName('RASIO2').DisplayWidth:=10;

  end
else
  begin

   wwDBGrid2.ColumnByName('RASIO').DisplayLabel:='isi/Spring';
   wwDBGrid2.ColumnByName('RASIO2').DisplayLabel:='';//'isi/Spring';
   wwDBGrid2.ColumnByName('RASIO2').DisplayWidth:=0;

   
  end;
end;

end.
