unit DaftarUnpost;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Grids, Wwdbigrd, Wwdbgrid,
  wwdblook, Wwdbdlg, DB, DBTables, Wwtable, ComCtrls, Mask, wwdbedit,
  Wwdbspin, Wwdotdot, Wwdbcomb, wwdbdatetimepicker, Wwdatsrc, OracleData,
  DateUtils, wwDialog, wwrcdvw, DBCtrls;

type
  TDaftarUnpostFrm = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    PanelHeader: TPanel;
    Panel2: TPanel;
    vOperand: TLabel;
    GroupBox1: TGroupBox;
    Label34: TLabel;
    VTglAwal: TwwDBDateTimePicker;
    vTglAkhir: TwwDBDateTimePicker;
    cbOtomatis: TCheckBox;
    dbcField: TwwDBComboBox;
    ECari: TEdit;
    cbTanggal: TCheckBox;
    BitBtn1: TBitBtn;
    Panel5: TPanel;
    BitBtn2: TBitBtn;
    QBrowse: TOracleDataSet;
    QBrowseNO_TIKET: TIntegerField;
    QBrowseNO_NOTA: TStringField;
    QBrowseKD_TRANSAKSI: TStringField;
    QBrowseALASAN: TStringField;
    QBrowseTGL_INSERT: TDateTimeField;
    QBrowseOPR_INSERT: TStringField;
    QBrowseSTATUS: TStringField;
    QBrowseTGL_UPDATE: TDateTimeField;
    QBrowseOPR_UPDATE: TStringField;
    QBrowsePESAN_ADMIN: TStringField;
    dsQBrowse: TwwDataSource;
    rvdQBrowse: TwwRecordViewDialog;
    Panel1: TPanel;
    GroupBox2: TGroupBox;
    BitBtn3: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    wwDBGrid1: TwwDBGrid;
    BitBtn4: TBitBtn;
    wwDBE_No: TEdit;
    wwDBE_Als: TEdit;
    procedure VTglAwalChange(Sender: TObject);
    procedure vTglAkhirChange(Sender: TObject);
    procedure cbOtomatisClick(Sender: TObject);
    procedure dbcFieldEnter(Sender: TObject);
    procedure vOperandClick(Sender: TObject);
    procedure cbTanggalClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure TabSheet1Show(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
  private
    { Private declarations }
        vfilter, vorder, vfilter2 : String;
  public
    { Public declarations }
  end;

var
  DaftarUnpostFrm: TDaftarUnpostFrm;

implementation

uses DM;

{$R *.dfm}

procedure TDaftarUnpostFrm.VTglAwalChange(Sender: TObject);
begin
//  vTglAkhir.Date:=Trunc(EndOfTheMonth(VTglAwal.Date));
  vTglAkhir.Date:=Trunc(VTglAwal.Date);
end;

procedure TDaftarUnpostFrm.vTglAkhirChange(Sender: TObject);
begin
  if VTglAwal.Date>vTglAkhir.Date then
  begin
      ShowMessage('Tanggal Akhir harus LEBIH BESAR dari Tanggal Awal !');
      vTglAkhir.Date:=VTglAwal.Date;
  end;
end;

procedure TDaftarUnpostFrm.cbOtomatisClick(Sender: TObject);
begin
  if cbOtomatis.Checked then
  begin
    ShowMessage('Mencari data pada kolom paling kiri.'+#13+'Urutkan data terlebih dahulu supaya mudah mencari !');
    wwDBGrid1.Options:=wwDBGrid1.Options+[dgAlwaysShowSelection];
  end
    else
    wwDBGrid1.Options:=wwDBGrid1.Options-[dgAlwaysShowSelection];
  ECari.SetFocus;

end;

procedure TDaftarUnpostFrm.dbcFieldEnter(Sender: TObject);
var
  i : Word;
begin
  if (QBrowse.Active) and (dbcField.Items.Count=1) then
  for i:=0 to wwDBGrid1.FieldCount-1 do
    if UpperCase(wwDBGrid1.Columns[i].FieldName)<>'TGL_EDIT' then
      dbcField.Items.Add(wwDBGrid1.Columns[i].FieldName);

end;

procedure TDaftarUnpostFrm.vOperandClick(Sender: TObject);
begin
  if vOperand.Caption='LIKE' then
    vOperand.Caption:='='
    else
      vOperand.Caption:='LIKE';
end;

procedure TDaftarUnpostFrm.cbTanggalClick(Sender: TObject);
begin
  if cbTanggal.Checked then
  begin
    VTglAwal.Enabled:=cbTanggal.Checked;
    vTglAkhir.Enabled:=cbTanggal.Checked;
    VTglAwal.SetFocus;
  end
  else
    ECari.SetFocus;
end;

procedure TDaftarUnpostFrm.BitBtn1Click(Sender: TObject);
var
  a : word;
  vpertama : boolean;
begin
  vpertama:=True;
  if cbTanggal.Checked then
    vfilter:=' where (trunc(tgl_edit)>=to_date('''+FormatDateTime('dd/mm/yyyy',VTglAwal.Date)+''',''dd/mm/yyyy'') and trunc(tgl_edit)<=(to_date('''+FormatDateTime('dd/mm/yyyy',VTglAkhir.Date)+''',''dd/mm/yyyy'')+1-1/86400)) and ('
  else
    vfilter:=' where (';
  if (QBrowse.FieldCount>=1) then
  begin
    if dbcField.ItemIndex=0 then
    begin
      for a:=0 to wwDBGrid1.Selected.Count-1 do
  //    for a:=0 to QBrowse.FieldCount-1 do
      begin
        if (QBrowse.FieldByName(wwDBGrid1.Columns[a].FieldName).FieldKind=fkData) and (UpperCase(wwDBGrid1.Columns[a].FieldName)<>'tgl_edit') then
        begin
          if vpertama then
            begin
              if vOperand.Caption='LIKE' then
                vfilter:=vfilter+wwDBGrid1.Columns[a].FieldName+' like ''%'+ECari.Text+'%'''
                else
                   vfilter:=vfilter+wwDBGrid1.Columns[a].FieldName+' = '''+ECari.Text+'''';
              vpertama:=False;
            end
            else
              if vOperand.Caption='LIKE' then
                vfilter:=vfilter+' or '+wwDBGrid1.Columns[a].FieldName+' like ''%'+ECari.Text+'%'''
                else
                  vfilter:=vfilter+' or '+wwDBGrid1.Columns[a].FieldName+' = '''+ECari.Text+''''
        end;
      end;
    end
    else
      if vOperand.Caption='LIKE' then
         vfilter:=vfilter+dbcField.Text+' like ''%'+ECari.Text+'%'''
         else
           vfilter:=vfilter+dbcField.Text+' = '''+ECari.Text+'''';
    vfilter:=vfilter+')';
//    vorder:=' order by '+wwDBGrid1.Columns[0].FieldName;
    if QBrowse.Active then
      vorder:=' order by '+wwDBGrid1.Columns[0].FieldName
      else
        vorder:=' order by tgl_edit';

  end;
  QBrowse.DisableControls;
  QBrowse.Close;
  QBrowse.SetVariable('myparam',vfilter+vorder);
  QBrowse.Open;
  QBrowse.EnableControls;

end;

procedure TDaftarUnpostFrm.TabSheet1Show(Sender: TObject);
begin
//  vfilter:=' where (tgl_edit>=to_date('''+FormatDateTime('dd/mm/yyyy',Date)+''',''dd/mm/yyyy'') and tgl_edit<=(to_date('''+FormatDateTime('dd/mm/yyyy',Date)+''',''dd/mm/yyyy'')+1-1/86400))';
end;

procedure TDaftarUnpostFrm.FormShow(Sender: TObject);
begin
{azmi}
  vTglAwal.CalendarAttributes.PopupYearOptions.NumberColumns:=1;
  vTglAwal.CalendarAttributes.PopupYearOptions.StartYear:=YearOf(Date())-2;
  vTglAwal.Date:=date();

  vTglAkhir.CalendarAttributes.PopupYearOptions.NumberColumns:=1;
  vTglAkhir.CalendarAttributes.PopupYearOptions.StartYear:=YearOf(Date())-2;
  vTglAkhir.Date:=date();
  wwDBE_No.Enabled:=False;
  wwDBE_Als.Enabled:=False;
  BitBtn3.Enabled:=False;
  QBrowse.Open;
  BitBtn4.Click;
{azmi}
end;

procedure TDaftarUnpostFrm.BitBtn3Click(Sender: TObject);
var
  vnota : String;
begin
if (wwDBE_No.Text='') then
begin
   messagedlg('Silahkan Masukkan No.Nota Unpostnya...',mtinformation,[mbok],0);
   wwDBE_No.SetFocus;
end
else
begin
  if QBrowse.Active then
  begin
    QBrowse.First;
    QBrowse.Insert;
  QBrowseNO_NOTA.AsString := TRIM(wwDBE_No.Text);
  QBrowseKD_TRANSAKSI.AsString := copy(wwDBE_No.Text,1,2);
  QBrowseALASAN.AsString  := '-';//UPPERCAse(wwDBE_Als.Text);
  QBrowseOPR_INSERT.AsString:=UPPERCAse(DMFrm.OS.LogonUsername);
  DMFrm.QTime.Close;
  DMFrm.QTime.Open;
  QBrowseTGL_INSERT.AsDateTime:=DMFrm.QTimeJAM.AsDateTime;
  QBrowseSTATUS.AsString  := 'SUKSES';
  QBrowse.Post;
//  vNota := QBrowseNO_NOTA.AsString;
  vnota := TRIM(wwDBE_No.Text);

  //Prosedure UnPost
     DMFrm.QUnPost.Close;
     DMFrm.QUnPost.SetVariable('no_nota',vnota);
     DMFrm.QUnPost.Execute;

     ShowMessage('UnPost NO.NOTA : '+vNota+' SUKSES...');

  wwDBE_No.Enabled:=False;
  wwDBE_Als.Enabled:=False;
  BitBtn3.Enabled:=False;
  BitBtn4.Enabled:=True;
    end
  else
    ShowMessage('Tabel belum Aktif !');
end;
end;

procedure TDaftarUnpostFrm.BitBtn4Click(Sender: TObject);
begin

    wwDBE_No.Enabled:=True;
    wwDBE_Als.Enabled:=True;
    BitBtn3.Enabled:=True;
    BitBtn4.Enabled:=False;
    wwDBE_No.Text:='';
    wwDBE_No.SetFocus;

end;

end.
