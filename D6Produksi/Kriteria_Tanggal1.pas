unit Kriteria_Tanggal1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, wwdbdatetimepicker, 
  LMDCustomControl, LMDCustomPanel, LMDCustomBevelPanel, LMDSimplePanel;

type
  TKriteria_Tanggal1_FRM = class(TForm)
    LMDSimplePanel1: TLMDSimplePanel;
    wwDBDateTimePicker1: TwwDBDateTimePicker;
    wwDBDateTimePicker2: TwwDBDateTimePicker;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure wwDBDateTimePicker1CloseUp(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Kriteria_Tanggal1_FRM: TKriteria_Tanggal1_FRM;

implementation

uses DM;

{$R *.DFM}

procedure TKriteria_Tanggal1_FRM.wwDBDateTimePicker1CloseUp(
  Sender: TObject);
begin
        wwDBDateTimePicker2.Date:=
          IncMonth(StrToDate(FormatDateTime('1/MM/yyyy',wwDBDateTimePicker1.Date)),1)-1;
end;

procedure TKriteria_Tanggal1_FRM.FormCreate(Sender: TObject);
begin
   Kriteria_Tanggal1_FRM.wwDBDateTimePicker1.Date:=Trunc(DMFrm.QTimeJAM.AsDateTime);
   Kriteria_Tanggal1_FRM.wwDBDateTimePicker2.Date:=Trunc(DMFrm.QTimeJAM.AsDateTime);

{     if wwDBDateTimePicker1.Text='' then
        wwDBDateTimePicker1.Date:=date;
     if wwDBDateTimePicker2.Text='' then
        wwDBDateTimePicker2.Date:=date;        }
end;

end.
