unit InfoSemuaItem;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Wwdatsrc, OracleData, Grids, Wwdbigrd, Wwdbgrid, ExtCtrls,
  StdCtrls, Buttons, ComCtrls, DBCtrls, wwSpeedButton, wwDBNavigator,
  wwclearpanel, wwdblook, Wwdbdlg;

type
  TInfoSemuaItemFrm = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    wwDBGrid1: TwwDBGrid;
    QItemAll: TOracleDataSet;
    QItemAllKODE_10: TStringField;
    QItemAllNAMA_ITEM_10: TStringField;
    QItemAllKODE_21: TStringField;
    QItemAllNAMA_ITEM_21: TStringField;
    QItemAllKODE_22: TStringField;
    QItemAllNAMA_ITEM_22: TStringField;
    QItemAllKODE_30: TStringField;
    QItemAllNAMA_ITEM_30: TStringField;
    dsQItemAll: TwwDataSource;
    BitBtn1: TBitBtn;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    wwDBGrid2: TwwDBGrid;
    TabSheet2: TTabSheet;
    wwDBGrid3: TwwDBGrid;
    QItemKonversiAll: TOracleDataSet;
    dsQItemKonversiAll: TwwDataSource;
    QItemKonversiAllKD_ITEM1: TStringField;
    QItemKonversiAllKD_SUB_KEL: TStringField;
    QItemKonversiAllNAMA_ITEM1: TStringField;
    QItemKonversiAllKD_ITEM2: TStringField;
    QItemKonversiAllBENANG2: TStringField;
    QItemKonversiAllNAMA_ITEM2: TStringField;
    QItemKonversiAllKD_ITEM3: TStringField;
    QItemKonversiAllBENANG3: TStringField;
    QItemKonversiAllNAMA_ITEM3: TStringField;
    QItemKonversiAllKD_ITEM4: TStringField;
    QItemKonversiAllBENANG4: TStringField;
    QItemKonversiAllNAMA_ITEM4: TStringField;
    QItemAllKD_SUB_KEL_10: TStringField;
    QItemAllKD_SUB_KEL_21: TStringField;
    QItemAllKD_SUB_KEL_22: TStringField;
    QItemAllKD_SUB_KEL_30: TStringField;
    TabSheet3: TTabSheet;
    QItemKelBenang: TOracleDataSet;
    dsQItemKelBenang: TwwDataSource;
    QItemKelBenangKD_ITEM: TStringField;
    QItemKelBenangKD_ITEM30: TStringField;
    QItemKelBenangKD_SUB_KEL30: TStringField;
    QItemKelBenangNAMA_ITEM30: TStringField;
    QItemKelBenangRASIO30: TFloatField;
    QItemKelBenangKD_ITEM_BENANG: TStringField;
    QItemKelBenangKD_SUB_KEL: TStringField;
    QItemKelBenangNAMA_ITEM: TStringField;
    QItemKelBenangRASIO: TFloatField;
    TabSheet4: TTabSheet;
    wwDBGrid5: TwwDBGrid;
    QRekapKelBenang: TOracleDataSet;
    dsQRekapKelBenang: TwwDataSource;
    QRekapKelBenangKD_ITEM_BENANG: TStringField;
    QRekapKelBenangKD_SUB_KEL: TStringField;
    QRekapKelBenangNAMA_ITEM: TStringField;
    QRekapKelBenangRASIO: TFloatField;
    wwDBGrid6: TwwDBGrid;
    wwDBGrid4: TwwDBGrid;
    Qkonversi_kel_benang: TOracleDataSet;
    Qkonversi_kel_benangKD_ITEM30: TStringField;
    Qkonversi_kel_benangKD_ITEM_BENANG: TStringField;
    Qkonversi_kel_benangNM_ITEM30: TStringField;
    Qkonversi_kel_benangNM_ITEM_BENANG: TStringField;
    Panel3: TPanel;
    dsQkonversi_kel_benang: TwwDataSource;
    wwDBNavigatorInput: TwwDBNavigator;
    wwDBNavigatorInputButton: TwwNavButton;
    wwDBNavigatorInputNext: TwwNavButton;
    wwDBNavigatorInputCancel: TwwNavButton;
    wwDBNavigatorInputButton1: TwwNavButton;
    wwDBNavigatorInputButton2: TwwNavButton;
    wwDBNavigatorInputButton3: TwwNavButton;
    QItem1: TOracleDataSet;
    QItem1NAMA_ITEM: TStringField;
    QItem1KD_ITEM: TStringField;
    LookItem1: TwwDBLookupComboDlg;
    QItem2: TOracleDataSet;
    LookItem2: TwwDBLookupComboDlg;
    QItem2KD_ITEM: TStringField;
    QItem2NAMA_ITEM: TStringField;
    QItem2KD_SUB_KEL: TStringField;
    QItem2RASIO: TFloatField;
    QItem1KD_SUB_KEL: TStringField;
    QItem1RASIO: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure wwDBGrid2TitleButtonClick(Sender: TObject;
      AFieldName: String);
    procedure TabSheet3Show(Sender: TObject);
    procedure TabSheet4Show(Sender: TObject);
    procedure LookItem1Enter(Sender: TObject);
    procedure LookItem2Enter(Sender: TObject);
    procedure Qkonversi_kel_benangAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  InfoSemuaItemFrm: TInfoSemuaItemFrm;

implementation

uses DM;

{$R *.dfm}

procedure TInfoSemuaItemFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
  InfoSemuaItemFrm:=Nil;
end;

procedure TInfoSemuaItemFrm.FormShow(Sender: TObject);
begin
  QItemAll.Open;
  QItemKonversiAll.Open;
end;

procedure TInfoSemuaItemFrm.wwDBGrid2TitleButtonClick(Sender: TObject;
  AFieldName: String);
begin
  QItemAll.DisableControls;
  QItemAll.Close;
  QItemAll.SetVariable('vorder',AFieldName);
  QItemAll.Open;
  QItemAll.EnableControls;
end;

procedure TInfoSemuaItemFrm.TabSheet3Show(Sender: TObject);
begin
Qkonversi_kel_benang.Close;
Qkonversi_kel_benang.Open;

QItemKelBenang.Close;
QItemKelBenang.Open;
end;

procedure TInfoSemuaItemFrm.TabSheet4Show(Sender: TObject);
begin
QRekapKelBenang.Close;
QRekapKelBenang.Open;
end;

procedure TInfoSemuaItemFrm.LookItem1Enter(Sender: TObject);
begin
QItem1.Close;
QItem1.Open;


end;

procedure TInfoSemuaItemFrm.LookItem2Enter(Sender: TObject);
begin
QItem2.Close;
QItem2.Open;
end;

procedure TInfoSemuaItemFrm.Qkonversi_kel_benangAfterPost(
  DataSet: TDataSet);
begin
QItemKelBenang.Close;
QItemKelBenang.Open;
end;

end.
