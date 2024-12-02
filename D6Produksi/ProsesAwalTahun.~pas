unit ProsesAwalTahun;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  DateUtils, Mask, wwdbedit, Wwdbspin, DB, Wwdatsrc, OracleData, Dialogs,
  Oracle, Menus, wwSpeedButton, wwDBNavigator, wwclearpanel, StdCtrls,
  Buttons, Grids, Wwdbigrd, Wwdbgrid, DBCtrls, ComCtrls, ExtCtrls, ppVar,
  ppBands, ppStrtch, ppMemo, ppCtrls, ppPrnabl, ppClass, ppCache, ppDB,
  ppProd, ppReport, ppComm, ppRelatv, ppDBPipe, ppParameter, Wwdotdot,
  Wwdbcomb, wwcheckbox, DBGrids;

type
  TProsesAwalTahunFrm = class(TForm)
    PanelLeft: TPanel;
    PanelRight: TPanel;
    PanelMain: TPanel;
    PanelHeader: TPanel;
    QBrowse: TOracleDataSet;
    dsQBrowse: TwwDataSource;
    Label1: TLabel;
    QMaster: TOracleDataSet;
    dsQMaster: TwwDataSource;
    DBText3: TDBText;
    QDetail: TOracleDataSet;
    dsQDetail: TwwDataSource;
    QDetailHAK_BROWSE: TStringField;
    QDetailIMENU: TFloatField;
    QDetailHAK_INPUT: TStringField;
    QDetailHAK_EXPORT: TStringField;
    QDetailHAK_DESIGN: TStringField;
    QDetailNAMA_COMPONENT: TStringField;
    QDetailNAMA_MENU: TStringField;
    QDetailLVL: TFloatField;
    QDetailTIPE: TStringField;
    QDetailCNAMA_MENU: TStringField;
    QMasterTAHUN: TFloatField;
    QMasterSOFTCONE0: TStringField;
    QMasterSOFTCONE1: TStringField;
    QMasterCELUP0: TStringField;
    QMasterCELUP1: TStringField;
    QMasterPENGERING0: TStringField;
    QMasterPENGERING1: TStringField;
    QMasterGW0: TStringField;
    QMasterUSER_PROSES: TStringField;
    QMasterTGL_PROSES: TDateTimeField;
    QMasterNO_REG: TFloatField;
    QBrowseTAHUN: TFloatField;
    QBrowseSOFTCONE0: TStringField;
    QBrowseSOFTCONE1: TStringField;
    QBrowseCELUP0: TStringField;
    QBrowseCELUP1: TStringField;
    QBrowsePENGERING0: TStringField;
    QBrowsePENGERING1: TStringField;
    QBrowseGW0: TStringField;
    QBrowseUSER_PROSES: TStringField;
    QBrowseTGL_PROSES: TDateTimeField;
    QBrowseNO_REG: TFloatField;
    QMasterSTATUS: TStringField;
    QBrowseSTATUS: TStringField;
    QPengering0: TOracleQuery;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    PanelMaster: TPanel;
    LBarcode: TDBText;
    Label2: TLabel;
    BitBtn1: TBitBtn;
    PanelFooter1: TPanel;
    BtnClose1: TBitBtn;
    wwDBNavigatorInput: TwwDBNavigator;
    wwDBNavigatorInputButton: TwwNavButton;
    wwDBNavigatorInputNext: TwwNavButton;
    wwDBNavigatorInputCancel: TwwNavButton;
    wwDBNavigatorInputButton1: TwwNavButton;
    wwDBNavigatorInputButton2: TwwNavButton;
    wwDBNavigatorInputButton3: TwwNavButton;
    BtnPrintBrowse: TBitBtn;
    TabSheet2: TTabSheet;
    PanelFooter2: TPanel;
    wwDBNavigator1: TwwDBNavigator;
    wwDBNavigator1PriorPage: TwwNavButton;
    wwDBNavigator1NextPage: TwwNavButton;
    wwDBNavigator1SaveBookmark: TwwNavButton;
    wwDBNavigator1RestoreBookmark: TwwNavButton;
    BtnClose2: TBitBtn;
    ComboBox1: TComboBox;
    QInsertPengering0: TOracleQuery;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    CheckBox6: TCheckBox;
    CheckBox7: TCheckBox;
    Label4: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    QPengering1: TOracleQuery;
    QInsertPengering1: TOracleQuery;
    QGWarna: TOracleQuery;
    QGWarna2: TOracleQuery;
    QInsertSoft1: TOracleQuery;
    QSoft1: TOracleQuery;
    QSoft0: TOracleQuery;
    QInsertSoft0: TOracleQuery;
    QLog: TOracleQuery;
    Panel1: TPanel;
    wwDBGrid1: TwwDBGrid;
    QKunci: TOracleDataSet;
    dsQKunci: TwwDataSource;
    QKunciTRANSAKSI: TDateTimeField;
    QKunciBUKU: TDateTimeField;
    QKunciOPR_UPDATE: TStringField;
    QKunciTGL_UPDATE: TDateTimeField;
    Panel6: TPanel;
    BtnBrowse4: TSpeedButton;
    BtnEditing4: TSpeedButton;
    Label5: TLabel;
    ECari4: TEdit;
    BitBtn4: TBitBtn;
    BtnSimpan: TBitBtn;
    wwDBGrid2: TwwDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure wwDBGrid2TitleButtonClick(Sender: TObject;
      AFieldName: String);
    procedure QBrowseAfterScroll(DataSet: TDataSet);
    procedure BtnClose1Click(Sender: TObject);
    procedure BtnClose2Click(Sender: TObject);
    procedure wwDBSpinEdit1Change(Sender: TObject);
    procedure wwDBSpinEdit2Change(Sender: TObject);
    procedure wwDBSpinEdit4Change(Sender: TObject);
    procedure wwDBSpinEdit5Change(Sender: TObject);
    procedure TabSheet1Show(Sender: TObject);
    procedure QDetailNewRecord(DataSet: TDataSet);
    procedure BtnAmbilDataClick(Sender: TObject);
    procedure wwDBGrid1Enter(Sender: TObject);
    procedure QDetailCalcFields(DataSet: TDataSet);
    Procedure BuatMenu;
    procedure BtnOkClick(Sender: TObject);
    procedure wwDBGrid1CalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure BitBtn1Click(Sender: TObject);
    procedure QInsertPengering0AfterQuery(Sender: TOracleQuery);
    procedure QInsertPengering1AfterQuery(Sender: TOracleQuery);
    procedure QGWarna2AfterQuery(Sender: TOracleQuery);
    procedure QInsertSoft1AfterQuery(Sender: TOracleQuery);
    procedure QInsertSoft0AfterQuery(Sender: TOracleQuery);
    procedure TabSheet2Show(Sender: TObject);
    procedure BtnEditingClick(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BtnSimpanClick(Sender: TObject);
    procedure BtnEditing4Click(Sender: TObject);
    procedure BtnBrowse4Click(Sender: TObject);
  private
    { Private declarations }
    vorder, SelectedFont : String;
  public
    { Public declarations }
  end;

var
  ProsesAwalTahunFrm: TProsesAwalTahunFrm;

procedure ShowForm(pNamaMenu:String);

implementation

uses DM, Pembelian, TipeMenu;

{$R *.dfm}

Procedure ShowForm(pNamaMenu:String);
Begin
// Hak Menu
  DMFrm.cHakInput:=DMFrm.QMenuUser.Lookup('NAMA_COMPONENT',pNamaMenu,'HAK_INPUT')='1';
  DMFrm.cBtnDesign:=DMFrm.QMenuUser.Lookup('NAMA_COMPONENT',pNamaMenu,'HAK_DESIGN')='1';
  DMFrm.cBtnExport:=DMFrm.QMenuUser.Lookup('NAMA_COMPONENT',pNamaMenu,'HAK_EXPORT')='1';

  if ProsesAwalTahunFrm=Nil then
  begin
    ProsesAwalTahunFrm:=TProsesAwalTahunFrm.Create(Nil);
  end;
  ProsesAwalTahunFrm.Show;

end;

Procedure TProsesAwalTahunFrm.BuatMenu;
var
   j : integer;
   mychar : string[125];
begin
   QDetail.DisableControls;
   with PembelianFrm do
       for j:=0 to ComponentCount-1 do
            if Components[j] is TMenuItem then
            begin
              QDetail.Insert;
              QDetailNAMA_COMPONENT.AsString:=(Components[j] as TMenuItem).Name;
              QDetailLVL.AsInteger:=(Components[j] as TMenuItem).GroupIndex;
              QDetailHAK_BROWSE.AsString:='1';
              QDetailHAK_INPUT.AsString:='1';
              QDetailHAK_EXPORT.AsString:='1';
              QDetailHAK_DESIGN.AsString:='1';
              mychar:=(Components[j] as TMenuItem).Caption;
              Delete(mychar,Pos('&',mychar),1);
              QDetailNAMA_MENU.AsString:=mychar;
              QDetail.Post;
            end;
   QDetail.Close;
   QDetail.Open;
   QDetail.EnableControls;
end;

procedure TProsesAwalTahunFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Action:=caFree;
   ProsesAwalTahunFrm:=Nil;
end;

procedure TProsesAwalTahunFrm.FormCreate(Sender: TObject);
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
  PanelHeader.Caption:=UpperCase(Caption);
  PanelLeft.Color:=cWarnaPanel;
  PanelRight.Color:=cWarnaPanel;
  PanelMain.Color:=cWarnaPanelUtama;
  PanelLeft.Width:=Round((Monitor.Width-PanelMain.Width)/2);
  //BtnAmbilData.Glyph.LoadFromFile('Images\COPY.Bmp');
  BtnClose1.Glyph.LoadFromFile('Images\CLOSE.Bmp');
  BtnClose2.Glyph.LoadFromFile('Images\CLOSE.Bmp');
  //wwDBGrid2.IniAttributes.SectionName:=Name;
  //wwDBSpinEdit5.Value:=DMFrm.vGridFont;
  //wwDBSpinEdit4.Value:=DMFrm.vGridSpacing;
  //wwDBSpinEdit2.Value:=DMFrm.vGridFont;
  //wwDBSpinEdit1.Value:=DMFrm.vGridSpacing;
//Otoritas Button

end;

procedure TProsesAwalTahunFrm.wwDBGrid2TitleButtonClick(Sender: TObject;
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

procedure TProsesAwalTahunFrm.QBrowseAfterScroll(DataSet: TDataSet);
begin
  //LabelBanner.Caption:='Record ke '+IntToStr(QBrowse.RecNo)+' dari '+FormatFloat('#,#',QBrowse.RecordCount)+' Records';
end;

procedure TProsesAwalTahunFrm.BtnClose1Click(Sender: TObject);
begin
  //DMFrm.vGridSpacing:=Round(wwDBSpinEdit4.Value);
  //DMFrm.vGridFont:=Round(wwDBSpinEdit5.Value);
  Close;
end;

procedure TProsesAwalTahunFrm.BtnClose2Click(Sender: TObject);
begin
//  DMFrm.vGridSpacing:=Round(wwDBSpinEdit1.Value);
  //DMFrm.vGridFont:=Round(wwDBSpinEdit2.Value);
  Close;
end;

procedure TProsesAwalTahunFrm.wwDBSpinEdit1Change(Sender: TObject);
begin
//    wwDBGrid2.RowHeightPercent:=Round(wwDBSpinEdit1.Value);
end;

procedure TProsesAwalTahunFrm.wwDBSpinEdit2Change(Sender: TObject);
begin
//    wwDBGrid2.Font.Size:=Round(wwDBSpinEdit2.Value);
end;

procedure TProsesAwalTahunFrm.wwDBSpinEdit4Change(Sender: TObject);
begin
    //wwDBGrid1.RowHeightPercent:=Round(wwDBSpinEdit4.Value);
end;

procedure TProsesAwalTahunFrm.wwDBSpinEdit5Change(Sender: TObject);
begin
    //wwDBGrid1.Font.Size:=Round(wwDBSpinEdit5.Value);
end;

procedure TProsesAwalTahunFrm.TabSheet1Show(Sender: TObject);
begin

  {QMaster.Close;
  QMaster.DeclareVariable('no_reg',otString);
  QMaster.SQL.Text:='select a.*, a.rowid from '+cUserTabel+'proses_awal_tahun a'+
    ' where a.no_reg=:no_reg';
  if QBrowse.Active then QMaster.SetVariable('no_reg',QBrowse.FieldByName('NO_REG').AsString);
  QMaster.Open;}

  QBrowse.Close;
  QBrowse.Open;
end;

procedure TProsesAwalTahunFrm.QDetailNewRecord(DataSet: TDataSet);
begin
  //QDetailTIPE.AsString:=QMasterTIPE.AsString;
end;

procedure TProsesAwalTahunFrm.BtnAmbilDataClick(Sender: TObject);
begin
  if QMaster.State<>dsBrowse then
  try
    QMaster.Post;
  except
    ShowMessage('Maaf, ada masalah di pengisian MASTER !');
  end;

    if QDetail.RecordCount=0 then
    begin
       BuatMenu;
    end
    else
      begin
          if MessageDlg('Detail sudah ada, hapus dan buat lagi ?',mtWarning,[mbYes,mbNo],0)=mrYes then
          begin
             QDetail.First;
             while not QDetail.Eof do
               QDetail.Delete;
             BuatMenu;
          end;
      end;
end;

procedure TProsesAwalTahunFrm.wwDBGrid1Enter(Sender: TObject);
begin
  if QMaster.State<>dsBrowse then
  try
    QMaster.Post;
  except
    ShowMessage('Maaf, ada masalah di pengisian MASTER !');
  end;
end;

procedure TProsesAwalTahunFrm.QDetailCalcFields(DataSet: TDataSet);
var
     ctab : string[20];
     i:integer;
begin
     ctab:='';
     if QDetailLVL.AsInteger>0 then
        for i:=1 to QDetailLVL.AsInteger do
            ctab:=ctab+'   ';
     QDetailCNAMA_MENU.AsString:=ctab+QDetailNAMA_MENU.AsString;
end;

procedure TProsesAwalTahunFrm.BtnOkClick(Sender: TObject);
begin
  {
      QBrowse.DisableControls;
      QBrowse.Close;
      //QBrowse.SQL.Text:='select * from '+cUserTabel+'menu_tipe order by tipe';
      QBrowse.Open;
      QBrowse.EnableControls;
      LabelBanner.Caption:='Data : '+FormatFloat('#,#',QBrowse.RecordCount)+' Records';
  }

end;

procedure TProsesAwalTahunFrm.wwDBGrid1CalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
  if not Highlight then
  begin
      if (QDetailHAK_BROWSE.AsString='0') then
      begin
        if ((Field.FieldName='HAK_BROWSE') or
          (Field.FieldName='HAK_INPUT') or
          (Field.FieldName='HAK_EXPORT') or
          (Field.FieldName='HAK_DESIGN')) then
            ABrush.Color:=clRed
        else
            ABrush.Color:=cl3DDkShadow;
      end
  end;
end;

procedure TProsesAwalTahunFrm.BitBtn1Click(Sender: TObject);
var
 kataKunci, vawal, vakhir, vsoft0, vsoft1, vkering0, vkering1, vgw, vtgl, vuser : string;
 vtahun: integer;
begin

  Label4.Visible:=false;
  Label7.Visible:=false;
  Label9.Visible:=false;
  Label10.Visible:=false;
  Label11.Visible:=false;
  Label12.Visible:=false;
  Label13.Visible:=false;

  vsoft0:='0';
  vsoft1:='0';
  vkering0:='0';
  vkering1:='0';
  vgw:='0';

  if (ComboBox1.Text='') then
  begin
    ShowMessage('Tahun harus diisi!');
    Abort;
  end;

  kataKunci := InputBox('Input Required', 'Masukan kata kunci:', '');
  if (kataKunci='ppcoke') then
  begin
    vtahun:=StrToInt(ComboBox1.Text)-1;
    vawal := '01/01/'+IntToStr(vtahun);
    vakhir:= '31/12/'+IntToStr(vtahun);

    if (CheckBox1.Checked) then
    begin
      try
        QSoft0.Close;
        QSoft0.SetVariable('vsysdate', StrToDate(vawal));
        QSoft0.SetVariable('vsysdate2', StrToDate(vakhir));
        QSoft0.Execute;

        // Eksekusi QInsertSoft0
        QInsertSoft0.Close;
        QInsertSoft0.SetVariable('ptahun', ComboBox1.Text);
        QInsertSoft0.Execute;

        // Jika eksekusi berhasil
        vsoft0:='1';
        Label4.Caption:='Sukses';
        Label4.Visible:=True;
      except
        on E: Exception do
        begin
          // Jika terjadi error
          Label4.Caption:='Gagal';
          Label4.Visible:=True;
        end;
      end;
    end;

    if (CheckBox2.Checked) then
    begin
      try
        QSoft1.Close;
        QSoft1.SetVariable('vsysdate',StrToDate(vawal));
        QSoft1.SetVariable('vsysdate2',StrToDate(vakhir));
        QSoft1.Execute;

        QInsertSoft1.Close;
        QInsertSoft1.setVariable('ptahun',ComboBox1.Text);
        QInsertSoft1.Execute;

        vsoft1:='1';
        Label7.Caption:='Sukses';
        Label7.Visible:=True;
      except
        on E: Exception do
        begin
          Label7.Caption:='Gagal';
          Label7.Visible:=True;
        end;
      end;
    end;

    if (CheckBox3.Checked) then
    begin
      ShowMessage('Checkbox 3 clicked');
    end;

    if (CheckBox4.Checked) then
    begin
      ShowMessage('Checkbox 4 clicked');
    end;

    if (CheckBox5.Checked) then
    begin
      try
        QPengering0.Close;
        QPengering0.SetVariable('vsysdate',StrToDate(vawal));
        QPengering0.SetVariable('vsysdate2',StrToDate(vakhir));
        QPengering0.Execute;

        QInsertPengering0.Close;
        QInsertPengering0.setVariable('ptahun',ComboBox1.Text);
        QInsertPengering0.Execute;
        vkering0:='1';
        Label11.Caption:='Sukses';
        Label11.Visible:=True;
      except
        on E: Exception do
        begin
          Label11.Caption:='Gagal';
          Label11.Visible:=True;
        end;
      end;
    end;

    if (CheckBox6.Checked) then
    begin
      try
        QPengering1.Close;
        QPengering1.SetVariable('vsysdate',StrToDate(vawal));
        QPengering1.SetVariable('vsysdate2',StrToDate(vakhir));
        QPengering1.Execute;

        QInsertPengering1.Close;
        QInsertPengering1.setVariable('ptahun',ComboBox1.Text);
        QInsertPengering1.Execute;

        vkering1:='1';
        Label12.Caption:='Sukses';
        Label12.Visible:=True;
      except
        on E: Exception do
        begin
          Label12.Caption:='Gagal';
          Label12.Visible:=True;
        end;
      end;
    end;

    if (CheckBox7.Checked) then
    begin
      try
        QGWarna.Close;
        QGWarna.SetVariable('vsysdate',StrToDate(vawal));
        QGWarna.SetVariable('vsysdate2',StrToDate(vakhir));
        QGWarna.Execute;

        QGWarna2.Close;
        QGWarna2.setVariable('ptahun',ComboBox1.Text);
        QGWarna2.Execute;

        vgw:='1';
        Label13.Caption:='Sukses';
        Label13.Visible:=True;
      except
        on E: Exception do
        begin
          Label13.Caption:='Gagal';
          Label13.Visible:=True;
        end;
      end;
    end;

    // log awal tahun
    QLog.Close;
    QLog.SetVariable('psoft0', vsoft0);
    QLog.SetVariable('psoft1', vsoft1);
    QLog.SetVariable('pkering0', vkering0);
    QLog.SetVariable('pkering1', vkering1);
    QLog.SetVariable('pgw', vgw);
    QLog.SetVariable('puser', DMFrm.QDateTimeUSER.AsString);
    QLog.SetVariable('ptgl', DMFrm.QDateTimeVNOW.AsDateTime);
    QLog.SetVariable('ptahun', vtahun+1);
    QLog.Execute;

    QBrowse.Close;
    QBrowse.Open;
    wwDBGrid1.Refresh;

  end
  else
  begin
    ShowMessage('Kata kunci salah!!');
  end;
end;

procedure TProsesAwalTahunFrm.QInsertPengering0AfterQuery(
  Sender: TOracleQuery);
begin
  Label11.Visible:=True;
end;

procedure TProsesAwalTahunFrm.QInsertPengering1AfterQuery(
  Sender: TOracleQuery);
begin
  Label12.Visible:=True;
end;

procedure TProsesAwalTahunFrm.QGWarna2AfterQuery(Sender: TOracleQuery);
begin
  Label13.Visible:=True;
end;

procedure TProsesAwalTahunFrm.QInsertSoft1AfterQuery(Sender: TOracleQuery);
begin
  Label7.Visible:=True;
end;

procedure TProsesAwalTahunFrm.QInsertSoft0AfterQuery(Sender: TOracleQuery);
begin
  Label4.Visible:=True;
end;

procedure TProsesAwalTahunFrm.TabSheet2Show(Sender: TObject);
begin
  QKunci.Close;
  QKunci.Open;
  QKunci.EnableControls;
end;

procedure TProsesAwalTahunFrm.BtnEditingClick(Sender: TObject);
begin
  {wwDBGrid2.ReadOnly:=False;
  if BtnEditing.Caption='&Editing' then
  begin
    BtnEditing.Caption:='&Simpan';
  end
  else
  begin
    BtnEditing.Caption:='&Editing';
  end;}
end;

procedure TProsesAwalTahunFrm.BitBtn4Click(Sender: TObject);
begin
  QKunci.Close;
  QKunci.Open;
  QKunci.EnableControls;
end;

procedure TProsesAwalTahunFrm.BtnSimpanClick(Sender: TObject);
var kataKunci : String;
begin
  kataKunci := InputBox('Input Required', 'Masukan kata kunci:', '');
  if (kataKunci='ppcoke') then
  begin
    try
     DMFrm.OS.ApplyUpdates([QKunci],True);
     BtnSimpan.Enabled:=False;
     wwDBGrid2.ReadOnly:=True;
    except
      on E : Exception do
      begin
       ShowMessage(E.Message);
       BtnSimpan.Enabled:=True;
      end;
    end;
  end
  else
  begin
    ShowMessage('Kata kunci salah!!');
    Abort;
  end;
end;

procedure TProsesAwalTahunFrm.BtnEditing4Click(Sender: TObject);
begin
  wwDBGrid2.ReadOnly:=False;
  QKunci.First;
  QKunci.Edit;
  BtnSimpan.Enabled:=True;
end;

procedure TProsesAwalTahunFrm.BtnBrowse4Click(Sender: TObject);
begin
  if wwDBGrid2.ReadOnly=False then wwDBGrid2.ReadOnly:=True;
  if BtnSimpan.Enabled=True then BtnSimpan.Enabled:=False;
  QBrowse.Open;
  QBrowse.Refresh;
  wwDBGrid2.Refresh; 
end;

end.
