ck(Sender: TObject;
      LookupTable: TDataSet);
    procedure LookKoreksiEnter(Sender: TObject);
    procedure QDetailBeforePost(DataSet: TDataSet);
    procedure vTglAWAL2Change(Sender: TObject);
    procedure vTglAkhir2Change(Sender: TObject);
    procedure vOperand2Click(Sender: TObject);
    procedure cbTanggal2Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
  private
    { Private declarations }
    vfilter, vorder, vfilter2 : String;
  public
    { Public declarations }
    vkd_jns_item, vkd_bag : String;
    vhak_input : Boolean;
    vrecord_ke : Integer;
  end;

var
  BonPemakaianSparepartFrm: TBonPemakaianSparepartFrm;

implementation

uses DM, MainBrowse, Main, Menus, XPROCS, DateUtils, Keterangan, Sisdur;

{$R *.dfm}

procedure TBonPemakaianSparepartFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
  BonPemakaianSparepartFrm:=Nil;
end;

procedure TBonPemakaianSparepartFrm.FormCreate(Sender: TObject);
begin
  DMFrm.QLookSubBagian.Close;
  QLookItem.Close;
end;

procedure TBonPemakaianSparepartFrm.wwDBGrid1TitleButtonClick(Sender: TObject;
  AFieldName: String);
begin
  if ((Sender as TwwDBGrid).ColumnByName(AFieldName).FieldName<>'') then
  begin
     if (Sender as TwwDBGr