unit JenisBarang;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, StdCtrls, wwdbdatetimepicker, Buttons, ExtCtrls, DB,
  Wwdatsrc, Grids, Wwdbigrd, Wwdbgrid, OracleData, ComCtrls, wwriched,
  wwdblook, Wwdbdlg, LMDControl, LMDBaseControl, LMDBaseGraphicControl,
  LMDGraphicControl, LMDScrollText, Oracle;

type
  TJnsBarangFrm = class(TForm)
    PanelFilter: TPanel;
    DBText3: TDBText;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    wwDBGrid2: TwwDBGrid;
    QBrowse: TOracleDataSet;
    dsQBrowse: TwwDataSource;
    QBrowseJNS_BRG: TStringField;
    QBrowseKD_JNS_ITEM: TStringField;
    QBrowseREK1: TStringField;
    QBrowseREK2: TStringField;
    QBrowseREK3: TStringField;
    QBrowseREK4: TStringField;
    LookRekening1: TwwDBLookupComboDlg;
    LookRekening2: TwwDBLookupComboDlg;
    LookRekening3: TwwDBLookupComboDlg;
    LookRekening4: TwwDBLookupComboDlg;
    procedure LookRekening1Enter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure QBrowseBeforeDelete(DataSet: TDataSet);
  private
    { Private declarations }
//    vorder : string;
  public
    { Public declarations }
    vClose : Boolean;
  end;

var
  JnsBarangFrm: TJnsBarangFrm;

implementation

uses DM;

{$R *.dfm}

procedure TJnsBarangFrm.LookRekening1Enter(Sender: TObject);
begin
  DmFRM.RekGL.Open;
end;

procedure TJnsBarangFrm.FormShow(Sender: TObject);
begin
  DmFRM.RekGL.Close;
  QBrowse.Open;
end;

procedure TJnsBarangFrm.QBrowseBeforeDelete(DataSet: TDataSet);
begin
  ShowMessage('Maaf, tidak diperkenankan menghapus data !');
  Abort;
end;

end.
