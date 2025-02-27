unit MyColor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, Registry, MyRegister, ComCtrls,
  Oracle;

type
  TMyColorFrm = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    GroupBox1: TGroupBox;
    ColorDialog1: TColorDialog;
    Button1: TButton;
    FontDialog1: TFontDialog;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Label1: TLabel;
    Label2: TLabel;
    Bevel3: TBevel;
    Bevel4: TBevel;
    Bevel5: TBevel;
    Label3: TLabel;
    Bevel6: TBevel;
    Edit1: TEdit;
    Edit2: TEdit;
    BitBtn2: TBitBtn;
    MyRegister1: TMyRegister;
    Button7: TButton;
    CheckBox2: TCheckBox;
    RadioGroup1: TRadioGroup;
    BitBtn3: TBitBtn;
    Animate1: TAnimate;
    GRItem: TOracleQuery;
    OracleSession1: TOracleSession;
    OracleLogon1: TOracleLogon;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
    procedure Read_Registry;
    procedure Write_Registry;
  public
    { Public declarations }
      FIniFile: TRegIniFile;
    sAppPath: String;
  end;

var
  MyColorFrm: TMyColorFrm;

implementation

uses DM, Pembelian;

{$R *.dfm}

const
  SECTION = 'Grid Default';
  
procedure TMyColorFrm.Button1Click(Sender: TObject);
begin
  if ColorDialog1.Execute then
     Edit1.Color:=ColorDialog1.Color;
end;

procedure TMyColorFrm.Button2Click(Sender: TObject);
begin
  if ColorDialog1.Execute then
     Edit1.Font.Color:=ColorDialog1.Color;
end;

procedure TMyColorFrm.Button3Click(Sender: TObject);
begin
  if ColorDialog1.Execute then
     Edit2.Color:=ColorDialog1.Color;
end;

procedure TMyColorFrm.Button4Click(Sender: TObject);
begin
  if ColorDialog1.Execute then
     Edit2.Font.Color:=ColorDialog1.Color;
end;

procedure TMyColorFrm.BitBtn2Click(Sender: TObject);
var
  Cleanup: TRegistry;
  key,key2: string;
begin
  key := FIniFile.FileName;
 // key2 := FIniFile.FileName;
  FIniFile.Free;
  // make sure we don't leave junk in the registry behind.
  Cleanup := TRegistry.Create;
  try
    Cleanup.DeleteKey(key);
  finally
    Cleanup.Free;
  //  ShowMessage('Reset Warna Sukses !');
  end;
  FormCreate(nil);
  key := 'produksi';
  Cleanup := TRegistry.Create;
//  key2 := 'InfoGW';
 // Cleanup := TRegistry.Create;
  try
    Cleanup.DeleteKey(key);
 //   Cleanup.DeleteKey(key2);
  finally
    Cleanup.Free;
  //  ShowMessage('Reset Grid Sukses !');
  end;

  DMFrm.vclGridRead:=Edit2.Color;
  DMFrm.vclGridEdit:=Edit1.Color;
  DMFrm.vclGridReadFont:=Edit2.Font.Color;
  DMFrm.vclGridEditFont:=Edit1.Font.Color;
  Write_Registry;
  Close;
  ShowMessage('Reset Selesai, Silahkan Login Ulang Aplikasi Produksi1 - PT. Gajah Duduk');

  PembelianFrm.Login1Click(nil);

end;

procedure TMyColorFrm.FormCreate(Sender: TObject);
begin
  FIniFile := TRegIniFile.Create('produksi');
  Read_Registry;
 // CheckBox2.Checked:=DMFrm.vremote;
end;

procedure TMyColorFrm.Write_Registry;
Const
  SECTION = 'Grid Default';
begin
  sAppPath := ExtractFileDir(Application.ExeName)+'\';
  deletefile(sAppPath+Application.Title+'.ini');
  FIniFile := TRegIniFile.Create(sAppPath+Application.Title+'.ini');

//  FIniFile.WriteBool(SECTION, 'BooleanTest', CheckBox_Write.Checked);
  FIniFile.WriteInteger(SECTION, 'vclGridEdit', Edit1.Color);
  FIniFile.WriteInteger(SECTION, 'vclGridEditFont', Edit1.Font.Color);
  FIniFile.WriteInteger(SECTION, 'vclGridRead', Edit2.Color);
  FIniFile.WriteInteger(SECTION, 'vclGridReadFont', Edit2.Font.Color);
//  FIniFile.WriteString(SECTION, 'StringTest', Edit_Write.Text);

//  if not Button_Read.Enabled then Button_Read.Enabled := True;

  deletefile(sAppPath+Application.Title+'2.ini');
  FIniFile := TRegIniFile.Create(sAppPath+Application.Title+'2.ini');

//  FIniFile.WriteBool(SECTION, 'BooleanTest', CheckBox_Write.Checked);
  FIniFile.WriteInteger(SECTION, 'vclGridEdit', Edit1.Color);
  FIniFile.WriteInteger(SECTION, 'vclGridEditFont', Edit1.Font.Color);
  FIniFile.WriteInteger(SECTION, 'vclGridRead', Edit2.Color);
  FIniFile.WriteInteger(SECTION, 'vclGridReadFont', Edit2.Font.Color);

end;

procedure TMyColorFrm.Read_Registry;
begin
//  CheckBox_Read.Checked := FIniFile.ReadBool(SECTION, 'BooleanTest', False);
  Edit1.Color := FIniFile.ReadInteger(SECTION, 'vclGridEdit', clYellow);
  Edit1.Font.Color := FIniFile.ReadInteger(SECTION, 'vclGridEditFont', clBlack);
  Edit2.Color := FIniFile.ReadInteger(SECTION, 'vclGridRead', clSkyBlue);
  Edit2.Font.Color := FIniFile.ReadInteger(SECTION, 'vclGridReadFont', clMaroon);

//  Edit_Read.Text := FIniFile.ReadString(SECTION, 'StringTest', '');

//  Memo_Read.Lines.Clear;
//  FIniFile.ReadSectionValues(SECTION, Memo_Read.Lines);

//  Button_Read.Enabled := False;
end;

procedure TMyColorFrm.FormDestroy(Sender: TObject);
begin
  FIniFile.Free;
end;

procedure TMyColorFrm.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

procedure TMyColorFrm.BitBtn3Click(Sender: TObject);
begin
  IF OracleLogon1.Execute THEN
  begin
    if OracleSession1.Connected then
    begin
        try
          Animate1.Visible:=True;
          Animate1.Active:=True;
          GRItem.Close;
          GRItem.Execute;
          ShowMessage('Sukses !');
          Animate1.Active:=False;
          Animate1.Visible:=False;
        except
          ShowMessage('Gagal !, tolong cek jaringan !');
          Animate1.Active:=False;
          Animate1.Visible:=False;
        end;
    end;
  end;
end;

end.
