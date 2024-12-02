unit Info;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, StdCtrls, wwdbdatetimepicker, Buttons, ExtCtrls, DB,
  Wwdatsrc, Grids, Wwdbigrd, Wwdbgrid, OracleData, ComCtrls, wwriched,
  wwdblook, Wwdbdlg, LMDControl, LMDBaseControl, LMDBaseGraphicControl,
  LMDGraphicControl, LMDScrollText, Oracle;

type
  TInfoFrm = class(TForm)
    PanelFilter: TPanel;
    Label7: TLabel;
    Label8: TLabel;
    Label13: TLabel;
    BtnOk: TBitBtn;
    vTglAwal: TwwDBDateTimePicker;
    vTglAkhir: TwwDBDateTimePicker;
    DBText3: TDBText;
    QLogInfo: TOracleDataSet;
    dsQLogInfo: TwwDataSource;
    LookDivisi: TwwDBLookupComboDlg;
    QLogInfoNO_URUT: TFloatField;
    QLogInfoKD_DIV1: TStringField;
    QLogInfoKD_DIV2: TStringField;
    QLogInfoCC: TStringField;
    QLogInfoDISKRIPSI: TStringField;
    QLogInfoTGL_REMAINDER: TDateTimeField;
    QLogInfoTGL_INSERT: TDateTimeField;
    QLogInfoOPR_INSERT: TStringField;
    QLogInfoLDARI: TStringField;
    QLogInfoLUNTUK: TStringField;
    LMDScrollText1: TLMDScrollText;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    wwDBGrid2: TwwDBGrid;
    TabSheet2: TTabSheet;
    wwDBGrid1: TwwDBGrid;
    Panel1: TPanel;
    LRefresh: TLabel;
    TabSheet3: TTabSheet;
    Label1: TLabel;
    TCari: TEdit;
    BtnGo: TBitBtn;
    Label2: TLabel;
    wwDBGrid3: TwwDBGrid;
    QBrowse: TOracleDataSet;
    QBrowseKD_ITEM: TStringField;
    QBrowseNO_PART: TStringField;
    QBrowseNAMA_ITEM: TStringField;
    QBrowseSATUAN: TStringField;
    dsQBrowse: TwwDataSource;
    QBrowseLOKASI: TStringField;
    QBrowseQTY: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure QLogInfoNewRecord(DataSet: TDataSet);
    procedure QLogInfoBeforeQuery(Sender: TOracleDataSet);
    procedure BtnOkClick(Sender: TObject);
    procedure QLogInfoBeforePost(DataSet: TDataSet);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormShow(Sender: TObject);
    procedure LRefreshClick(Sender: TObject);
    procedure TabSheet2Show(Sender: TObject);
    procedure wwDBGrid3TitleButtonClick(Sender: TObject;
      AFieldName: String);
    procedure BtnGoClick(Sender: TObject);
    procedure TCariKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    vorder : string;
  public
    { Public declarations }
    vClose : Boolean;
  end;

var
  InfoFrm: TInfoFrm;

implementation

uses DM;

{$R *.dfm}

procedure TInfoFrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
  InfoFrm:=Nil;
end;

procedure TInfoFrm.FormCreate(Sender: TObject);
begin
  DMFrm.QDivisi.Open;
  LMDScrollText1.Scroll:=FALSE;
  LMDScrollText1.Lines.Text:=DMFrm.QMyInfo.FieldByName('MYINFO').AsString+', '+
    DMFrm.QMyInfo.FieldByName('OPR_INSERT').AsString+', '+
    DMFrm.QMyInfo.FieldByName('TGL_INSERT').AsString;
  LMDScrollText1.Scroll:=TRUE;
  DMFrm.QStatistikTransaksi.DisableControls;
  DMFrm.QStatistikTransaksi.Close;
  DMFrm.QStatistikTransaksi.Open;
  DMFrm.QStatistikTransaksi.EnableControls;
  Caption:=DMFrm.QTimeVUSER_CETAK.AsString+'@'+DMFrm.OS.LogonDatabase;
end;

procedure TInfoFrm.QLogInfoNewRecord(DataSet: TDataSet);
begin
  QLogInfo.FieldByName('KD_DIV1').AsString:=DMFrm.QUserKD_DIV.AsString;
  QLogInfo.FieldByName('KD_DIV2').AsString:=DMFrm.QUserKD_DIV.AsString;
  QLogInfo.FieldByName('CC').AsString:='Semua...';
  QLogInfo.FieldByName('TGL_REMAINDER').AsDateTime:=Trunc(DMFrm.QTimeJAM.AsDateTime);
end;

procedure TInfoFrm.QLogInfoBeforeQuery(Sender: TOracleDataSet);
begin
  QLogInfo.SetVariable('KD_DIV',DMFrm.QUserKD_DIV.AsString);
  QLogInfo.SetVariable('AWAL',Trunc(vTglAwal.Date));
  QLogInfo.SetVariable('AKHIR',Trunc(vTglAkhir.Date)+1-1/86400);
end;

procedure TInfoFrm.BtnOkClick(Sender: TObject);
begin
  QLogInfo.Close;
  QLogInfo.Open;
  LMDScrollText1.Scroll:=FALSE;
  LMDScrollText1.Lines.Text:=DMFrm.QMyInfo.FieldByName('MYINFO').AsString+', '+
    DMFrm.QMyInfo.FieldByName('OPR_INSERT').AsString+', '+
    DMFrm.QMyInfo.FieldByName('TGL_INSERT').AsString;
  LMDScrollText1.Scroll:=TRUE;
  
end;

procedure TInfoFrm.QLogInfoBeforePost(DataSet: TDataSet);
begin
  if QLogInfoDISKRIPSI.AsString='' then
  begin
      ShowMessage('DISKRIPSI harus diisi !');
      Abort;
  end;
end;

procedure TInfoFrm.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
//  CanClose:=vClose;
end;

procedure TInfoFrm.FormShow(Sender: TObject);
begin
  vTglAwal.Date:=Trunc(DMFrm.QTimeJAM.AsDateTime)-1;
  vTglAkhir.Date:=Trunc(DMFrm.QTimeJAM.AsDateTime)+1;
end;

procedure TInfoFrm.LRefreshClick(Sender: TObject);
begin
  DMFrm.QStatistikTransaksi.DisableControls;
  DMFrm.QStatistikTransaksi.Close;
  DMFrm.QStatistikTransaksi.Open;
  DMFrm.QStatistikTransaksi.EnableControls;
  DMFrm.QTime.Close;
  DMFrm.QTime.Open;
  Caption:=DMFrm.QTimeVUSER_CETAK.AsString+'@'+DMFrm.OS.LogonDatabase;
end;

procedure TInfoFrm.TabSheet2Show(Sender: TObject);
begin
  LRefreshClick(nil);
end;

procedure TInfoFrm.wwDBGrid3TitleButtonClick(Sender: TObject;
  AFieldName: String);
begin
  if QBrowse.FieldByName(AFieldName).FieldKind=fkData then
  begin
    vorder:='order by '+AFieldName;
    BtnGOClick(Nil);
  end
  else
    ShowMessage('Maaf, tidak bisa Urut menurut kolom '+AFieldName+' !');

end;

procedure TInfoFrm.BtnGoClick(Sender: TObject);
begin
          QBrowse.DisableControls;
          QBrowse.Close;
          QBrowse.SetVariable('vfilter',' where kd_item like ''%'+TCari.Text+
            '%'' or nama_item like ''%'+TCari.Text+'%'' or no_part like ''%'+TCari.Text+
            '%'' or lokasi like ''%'+TCari.Text+'%''');
          QBrowse.SetVariable('vorder',vorder);
          QBrowse.Open;
          QBrowse.EnableControls;
          PageControl1.ActivePageIndex:=2;
end;

procedure TInfoFrm.TCariKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  IF KEY=13 THEN BtnGoClick(nil);
end;

end.
