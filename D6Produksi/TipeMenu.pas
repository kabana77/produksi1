unit TipeMenu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  DateUtils, Mask, wwdbedit, Wwdbspin, DB, Wwdatsrc, OracleData, Dialogs,
  Oracle, Menus, wwSpeedButton, wwDBNavigator, wwclearpanel, StdCtrls,
  Buttons, Grids, Wwdbigrd, Wwdbgrid, DBCtrls, ComCtrls, ExtCtrls, ppVar,
  ppBands, ppStrtch, ppMemo, ppCtrls, ppPrnabl, ppClass, ppCache, ppDB,
  ppProd, ppReport, ppComm, ppRelatv, ppDBPipe;

type
  TTipeMenuFrm = class(TForm)
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
    PanelFilter: TPanel;
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
    Label5: TLabel;
    wwDBSpinEdit1: TwwDBSpinEdit;
    BtnClose2: TBitBtn;
    BtnClose1: TBitBtn;
    Label1: TLabel;
    wwDBSpinEdit2: TwwDBSpinEdit;
    QMaster: TOracleDataSet;
    dsQMaster: TwwDataSource;
    DBMemo1: TDBMemo;
    Label6: TLabel;
    Label8: TLabel;
    DBText3: TDBText;
    wwDBGrid1: TwwDBGrid;
    QDetail: TOracleDataSet;
    dsQDetail: TwwDataSource;
    Label14: TLabel;
    wwDBSpinEdit4: TwwDBSpinEdit;
    wwDBSpinEdit5: TwwDBSpinEdit;
    wwDBNavigatorInput: TwwDBNavigator;
    wwDBNavigatorInputNext: TwwNavButton;
    wwDBNavigatorInputCancel: TwwNavButton;
    wwDBNavigatorInputButton: TwwNavButton;
    LBarcode: TDBText;
    wwDBNavigatorInputButton1: TwwNavButton;
    wwDBNavigatorInputButton2: TwwNavButton;
    wwDBEdit1: TwwDBEdit;
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
    BtnAmbilData: TBitBtn;
    QMasterKETERANGAN: TStringField;
    QMasterTIPE: TStringField;
    BtnOk: TBitBtn;
    wwDBNavigatorInputButton3: TwwNavButton;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    ppTitleBand1: TppTitleBand;
    ppNamaLaporan: TppLabel;
    ppLabel9: TppLabel;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppUserCetak: TppLabel;
    ppHeaderBand1: TppHeaderBand;
    ppLabel2: TppLabel;
    ppLabel6: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBMemo3: TppDBMemo;
    ppNo: TppVariable;
    ppFooterBand1: TppFooterBand;
    ppSystemVariable1: TppSystemVariable;
    BtnPrintBrowse: TBitBtn;
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
    procedure BtnPrintBrowseClick(Sender: TObject);
  private
    { Private declarations }
    vorder, SelectedFont : String;
  public
    { Public declarations }
  end;

var
  TipeMenuFrm: TTipeMenuFrm;

procedure ShowForm(pNamaMenu:String);

implementation

uses DM, Pembelian;

{$R *.dfm}

Procedure ShowForm(pNamaMenu:String);
Begin
// Hak Menu
  DMFrm.cHakInput:=DMFrm.QMenuUser.Lookup('NAMA_COMPONENT',pNamaMenu,'HAK_INPUT')='1';
  DMFrm.cBtnDesign:=DMFrm.QMenuUser.Lookup('NAMA_COMPONENT',pNamaMenu,'HAK_DESIGN')='1';
  DMFrm.cBtnExport:=DMFrm.QMenuUser.Lookup('NAMA_COMPONENT',pNamaMenu,'HAK_EXPORT')='1';

  if TipeMenuFrm=Nil then
  begin
    TipeMenuFrm:=TTipeMenuFrm.Create(Nil);
  end;
  TipeMenuFrm.Show;

end;

Procedure TTipeMenuFrm.BuatMenu;
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

procedure TTipeMenuFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Action:=caFree;
   TipeMenuFrm:=Nil;
end;

procedure TTipeMenuFrm.FormCreate(Sender: TObject);
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
  BtnAmbilData.Glyph.LoadFromFile('Images\COPY.Bmp');
  BtnClose1.Glyph.LoadFromFile('Images\CLOSE.Bmp');
  BtnClose2.Glyph.LoadFromFile('Images\CLOSE.Bmp');
  wwDBGrid2.IniAttributes.SectionName:=Name;
  wwDBSpinEdit5.Value:=DMFrm.vGridFont;
  wwDBSpinEdit4.Value:=DMFrm.vGridSpacing;
  wwDBSpinEdit2.Value:=DMFrm.vGridFont;
  wwDBSpinEdit1.Value:=DMFrm.vGridSpacing;
//Otoritas Button
end;

procedure TTipeMenuFrm.wwDBGrid2TitleButtonClick(Sender: TObject;
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

procedure TTipeMenuFrm.QBrowseAfterScroll(DataSet: TDataSet);
begin
  LabelBanner.Caption:='Record ke '+IntToStr(QBrowse.RecNo)+' dari '+FormatFloat('#,#',QBrowse.RecordCount)+' Records';
end;

procedure TTipeMenuFrm.BtnClose1Click(Sender: TObject);
begin
  DMFrm.vGridSpacing:=Round(wwDBSpinEdit4.Value);
  DMFrm.vGridFont:=Round(wwDBSpinEdit5.Value);
  Close;
end;

procedure TTipeMenuFrm.BtnClose2Click(Sender: TObject);
begin
  DMFrm.vGridSpacing:=Round(wwDBSpinEdit1.Value);
  DMFrm.vGridFont:=Round(wwDBSpinEdit2.Value);
  Close;
end;

procedure TTipeMenuFrm.wwDBSpinEdit1Change(Sender: TObject);
begin
    wwDBGrid2.RowHeightPercent:=Round(wwDBSpinEdit1.Value);
end;

procedure TTipeMenuFrm.wwDBSpinEdit2Change(Sender: TObject);
begin
    wwDBGrid2.Font.Size:=Round(wwDBSpinEdit2.Value);
end;

procedure TTipeMenuFrm.wwDBSpinEdit4Change(Sender: TObject);
begin
    wwDBGrid1.RowHeightPercent:=Round(wwDBSpinEdit4.Value);
end;

procedure TTipeMenuFrm.wwDBSpinEdit5Change(Sender: TObject);
begin
    wwDBGrid1.Font.Size:=Round(wwDBSpinEdit5.Value);
end;

procedure TTipeMenuFrm.TabSheet1Show(Sender: TObject);
begin

  QMaster.Close;
  QMaster.DeclareVariable('tipe',otString);
  QMaster.SQL.Text:='select a.*, a.rowid from '+cUserTabel+'menu_tipe a'+
    ' where a.tipe=:tipe';
  if QBrowse.Active then QMaster.SetVariable('tipe',QBrowse.FieldByName('TIPE').AsString);
  QMaster.Open;
  QDetail.Close;
  QDetail.Master:=QMaster;
  QDetail.DeclareVariable('tipe',otString);
  QDetail.SequenceField.Sequence:=cUserTabel+'no_register';
  QDetail.SequenceField.Field:='IMENU';
  QDetail.MasterFields:='TIPE';
  QDetail.SQL.Text:='select a.*, a.rowid from '+cUserTabel+'menu_tipe_detail a'+
    ' where a.tipe=:tipe order by a.imenu';
  QDetail.Open;
end;

procedure TTipeMenuFrm.QDetailNewRecord(DataSet: TDataSet);
begin
  QDetailTIPE.AsString:=QMasterTIPE.AsString;
end;

procedure TTipeMenuFrm.BtnAmbilDataClick(Sender: TObject);
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

procedure TTipeMenuFrm.wwDBGrid1Enter(Sender: TObject);
begin
  if QMaster.State<>dsBrowse then
  try
    QMaster.Post;
  except
    ShowMessage('Maaf, ada masalah di pengisian MASTER !');
  end;
end;

procedure TTipeMenuFrm.QDetailCalcFields(DataSet: TDataSet);
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

procedure TTipeMenuFrm.BtnOkClick(Sender: TObject);
begin
      QBrowse.DisableControls;
      QBrowse.Close;
      QBrowse.SQL.Text:='select * from '+cUserTabel+'menu_tipe order by tipe';
      QBrowse.Open;
      QBrowse.EnableControls;
      LabelBanner.Caption:='Data : '+FormatFloat('#,#',QBrowse.RecordCount)+' Records';
end;

procedure TTipeMenuFrm.wwDBGrid1CalcCellColors(Sender: TObject;
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

procedure TTipeMenuFrm.BtnPrintBrowseClick(Sender: TObject);
begin
  if QDetail.IsEmpty then
    ShowMessage('Tidak ada data!')
    else
      ppReport1.Print;
end;

end.
