unit DaftarWarna;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Grids, Wwdbigrd, Wwdbgrid,
  wwdblook, Wwdbdlg, DB, DBTables, Wwtable, ComCtrls, Mask, wwdbedit,
  Wwdbspin, Wwdotdot, Wwdbcomb, wwdbdatetimepicker, Wwdatsrc, OracleData,
  DateUtils;

type
  TDaftarWarnaFrm = class(TForm)
    PanelHeader: TPanel;
    Qmaster: TOracleDataSet;
    DSQMaster: TwwDataSource;
    PageControl1: TPageControl;
    TabSheet3: TTabSheet;
    wwDBGrid3: TwwDBGrid;
    Panel4: TPanel;
    BtnBrowse: TSpeedButton;
    BtnEditing: TSpeedButton;
    Label2: TLabel;
    ECari2: TEdit;
    cbOtomatis2: TCheckBox;
    Btnfilter: TBitBtn;
    Panel6: TPanel;
    LRecords: TLabel;
    BtnClose: TBitBtn;
    BtnSimpan: TBitBtn;
    BitBtn6: TBitBtn;
    QmasterWARNA: TStringField;
    QmasterKD_WARNA: TStringField;
    QmasterJNS_WARNA: TStringField;
    QmasterCW: TStringField;
    QmasterISFIXED: TStringField;
    QmasterTGL_INSERT: TDateTimeField;
    QmasterOPR_INSERT: TStringField;
    procedure LookLokasiProses2Enter(Sender: TObject);




    procedure BtnEditingClick(Sender: TObject);
    procedure TabSheet3Show(Sender: TObject);
    procedure BtnBrowseClick(Sender: TObject);
    procedure cbOtomatis2Click(Sender: TObject);
    procedure BtnSimpanClick(Sender: TObject);
    procedure QmasterAfterPost(DataSet: TDataSet);
    procedure QmasterAfterDelete(DataSet: TDataSet);
    procedure QmasterAfterEdit(DataSet: TDataSet);
    procedure wwDBGrid3TitleButtonClick(Sender: TObject;
      AFieldName: String);
    procedure ECari2Change(Sender: TObject);
    procedure BtnfilterClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn6Click(Sender: TObject);
  private
    { Private declarations }
        vfilter, vorder, vfilter2 : String;
  public
    { Public declarations }
  end;

var
  DaftarWarnaFrm: TDaftarWarnaFrm;

implementation

uses DM;

{$R *.dfm}

procedure TDaftarWarnaFrm.LookLokasiProses2Enter(Sender: TObject);
begin
  DMFrm.QLookLokasiProses.Close;
  DMFrm.QLookLokasiProses.Open;
end;

procedure TDaftarWarnaFrm.BtnEditingClick(Sender: TObject);
begin
  wwDBGrid3.Options:=wwDBGrid3.Options-[dgRowSelect];
  wwDBGrid3.ReadOnly:=False;
  wwDBGrid3.SetFocus;
  //TabSheet1.TabVisible:=False;
  //TabSheet2.TabVisible:=False;
end;

procedure TDaftarWarnaFrm.TabSheet3Show(Sender: TObject);
begin
  QMaster.Open;
end;

procedure TDaftarWarnaFrm.BtnBrowseClick(Sender: TObject);
begin
  if BtnSimpan.Enabled then
    ShowMessage('Simpan/ Posting Data Dulu !')
    else
    begin
      wwDBGrid3.Options:=wwDBGrid3.Options+[dgRowSelect];
      wwDBGrid3.ReadOnly:=True;
      wwDBGrid3.SetFocus;
      //TabSheet1.TabVisible:=True;
      //TabSheet2.TabVisible:=True;
    end;
end;

procedure TDaftarWarnaFrm.cbOtomatis2Click(Sender: TObject);
begin
  if cbOtomatis2.Checked then
  begin
    ShowMessage('Mencari data pada kolom paling kiri.'+#13+'Urutkan data terlebih dahulu supaya mudah mencari !');
    wwDBGrid3.Options:=wwDBGrid3.Options+[dgAlwaysShowSelection];
  end
    else
    wwDBGrid3.Options:=wwDBGrid3.Options-[dgAlwaysShowSelection];
  ECari2.SetFocus;
end;

procedure TDaftarWarnaFrm.BtnSimpanClick(Sender: TObject);
begin
        try
          DMFrm.QTime.Open;
          QmasterTGL_INSERT.AsDateTime:=DMFrm.QTimeJAM.AsDateTime;
          QmasterOPR_INSERT.AsString:=DMFrm.QTimeVUSER.AsString;

          DMFrm.OS.CommitUpdates([QMaster]);
          BtnSimpan.Enabled:=False;
          BtnBrowse.Down:=True;
          BtnBrowseClick(Nil);
        except
            on E : Exception do
            begin
              ShowMessage(E.Message);
              BtnSimpan.Enabled:=True;
            end;
        end;
end;

procedure TDaftarWarnaFrm.QmasterAfterPost(DataSet: TDataSet);
begin
  BtnSimpan.Enabled:=True;
end;

procedure TDaftarWarnaFrm.QmasterAfterDelete(DataSet: TDataSet);
begin
  BtnSimpan.Enabled:=True;
end;

procedure TDaftarWarnaFrm.QmasterAfterEdit(DataSet: TDataSet);
begin
  BtnSimpan.Enabled:=True;
end;

procedure TDaftarWarnaFrm.wwDBGrid3TitleButtonClick(Sender: TObject;
  AFieldName: String);
begin
  if ((Sender as TwwDBGrid).ColumnByName(AFieldName).FieldName<>'') then
  begin
     if (Sender as TwwDBGrid).DataSource.DataSet.FieldByName(AFieldName).FieldKind=fkData then
        begin
          if vorder=' ASC' then
              vorder:=' DESC'
          else
              vorder:=' ASC';
          (Sender as TwwDBGrid).DataSource.DataSet.DisableControls;
          (Sender as TwwDBGrid).DataSource.DataSet.Close;
          ((Sender as TwwDBGrid).DataSource.DataSet as TOracleDataSet).SetVariable('myparam',vfilter+' order by '+(Sender as TwwDBGrid).ColumnByName(AFieldName).FieldName+vorder);
          (Sender as TwwDBGrid).DataSource.DataSet.Open;
          (Sender as TwwDBGrid).DataSource.DataSet.EnableControls;
        end
        else
          ShowMessage('Maaf, tidak bisa diurutkan menurut '+AFieldName+' !');
  end
  else
  ShowMessage('Maaf, tidak bisa diurutkan menurut '+AFieldName+' !');

end;

procedure TDaftarWarnaFrm.ECari2Change(Sender: TObject);
begin
  if cbOtomatis2.Checked then
  begin
      QMaster.SearchRecord(wwDBGrid3.Columns[0].FieldName,ECari2.Text,[srFromBeginning, srPartialMatch, srIgnoreCase]);
  end;
end;

procedure TDaftarWarnaFrm.BtnfilterClick(Sender: TObject);
var
  i : word;
  vpertama : boolean;
begin
  vpertama:=True;
  if BtnSimpan.Enabled then
    ShowMessage('Mode CARI berfungsi jika perubahan data sudah di-POSTING/ SIMPAN !')
    else
    begin
        vfilter:=' where isfixed=''1'' and ';
        if (QMaster.FieldCount>=1) then
        begin
          for i:=0 to QMaster.FieldCount-1 do
          begin
            if QMaster.Fields[i].FieldKind=fkData then
            begin
              if vpertama then
                begin
                  vfilter:=vfilter+QMaster.Fields[i].FieldName+' like ''%'+ECari2.Text+'%''';
                  vpertama:=False;
                end
                else
                  vfilter:=vfilter+' or '+QMaster.Fields[i].FieldName+' like ''%'+ECari2.Text+'%''';
            end;
          end;
          vorder:=' order by '+wwDBGrid3.Columns[0].FieldName;
        end;
        QMaster.SetVariable('myparam',vfilter+vorder);
        QMaster.DisableControls;
        QMaster.Close;
        QMaster.Open;
        QMaster.EnableControls;
    end;
end;

procedure TDaftarWarnaFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
  DaftarWarnaFrm:=Nil;
end;

procedure TDaftarWarnaFrm.BitBtn6Click(Sender: TObject);
begin
  if QMaster.Active then
  begin
     DMFrm.SaveDialog1.DefaultExt:='XLK';
     DMFrm.SaveDialog1.Filter:='Excel files (*.XLK)|*.XLK';
   //DMFrm.SaveDialog1.FileName:='HASIL MESIN SOFTCONES';
     wwDBGrid3.ExportOptions.TitleName:='DAFTAR WARNA';
       if DMFrm.SaveDialog1.Execute then
       begin
         try
         wwDBGrid3.ExportOptions.FileName:=DMFrm.SaveDialog1.FileName;
         wwDBGrid3.ExportOptions.Save;
         ShowMessage('Simpan Sukses !');
         except
         ShowMessage('Simpan Gagal !');
         end;
       end;
  end
  else
    ShowMessage('Tabel belum di-OPEN !');
end;

end.
