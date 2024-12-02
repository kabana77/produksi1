unit DM;

interface

uses
  Windows, SysUtils, Classes, Graphics, LMDCustomComponent, LMDStarter, DateUtils,
  Oracle, Dialogs, StdCtrls, DB, OracleData, Wwdatsrc, Forms, IniFiles, Wwdbgrid,
  MyKonversi, wwDialog, wwrcdvw, wwidlg, Wwintl, ExtDlgs;

type
  TDMFrm = class(TDataModule)
    SaveDialog1: TSaveDialog;
    LMDStarter1: TLMDStarter;
    OS: TOracleSession;
    OL: TOracleLogon;
    QTime: TOracleDataSet;
    QTimeVUSER: TStringField;
    QTimeJAM: TDateTimeField;
    QTimeVUSER_CETAK: TStringField;
    Perusahaan: TOracleDataSet;
    PerusahaanPERUSAHAAN: TStringField;
    PerusahaanALAMAT1: TStringField;
    PerusahaanALAMAT2: TStringField;
    PerusahaanALAMAT3: TStringField;
    PerusahaanTELEPON1: TStringField;
    PerusahaanTELEPON2: TStringField;
    PerusahaanTELEPON3: TStringField;
    PerusahaanWEBSITE: TStringField;
    PerusahaanEMAIL: TStringField;
    PerusahaanNPWP: TStringField;
    dsPerusahaan: TwwDataSource;
    QSuplier: TOracleDataSet;
    QSuplierNAMA_REKANAN: TStringField;
    QSuplierALAMAT: TStringField;
    QSuplierKOTA: TStringField;
    QSuplierKD_REKANAN: TFloatField;
    QMenuUser: TOracleDataSet;
    FontDialog1: TFontDialog;
    QDivisi: TOracleDataSet;
    QDivisiKD_DIV: TStringField;
    QDivisiLNAMA_DIVISI: TStringField;
    QDivisiLVL: TFloatField;
    QDivisiNAMA_DIVISI: TStringField;
    QSuplierTELEPON: TStringField;
    QSuplierBATAS_KREDIT: TFloatField;
    FNoUrut: TOracleDataSet;
    FNoUrutFNO_URUT: TStringField;
    QTimeKD_DIV: TStringField;
    QMU: TOracleDataSet;
    QMUKURS: TFloatField;
    QMUMU: TStringField;
    QItemAll: TOracleDataSet;
    QItemAllNAMA_ITEM: TStringField;
    QItemAllKD_ITEM: TStringField;
    QItemAllSATUAN: TStringField;
    QItemAllMIN_STOK: TFloatField;
    QSatuan: TOracleDataSet;
    QSatuanKD_SATUAN: TStringField;
    QSatuanSATUAN: TStringField;
    QItemAllKD_SATUAN: TStringField;
    QItemAllRASIO: TFloatField;
    MyKonversi1: TMyKonversi;
    QUser: TOracleDataSet;
    QUserTIPE: TStringField;
    QUserVUSER: TStringField;
    QUserKD_DIV: TStringField;
    QMyInfo: TOracleDataSet;
    dsQMyInfo: TwwDataSource;
    MyKonversi2: TMyKonversi;
    QUnPost: TOracleQuery;
    QJnsItem: TOracleDataSet;
    dsQJnsItem: TwwDataSource;
    RekGL: TOracleDataSet;
    RekGLKD_REK_GL: TStringField;
    RekGLNAMA_REKENING: TStringField;
    RekGLLVL: TFloatField;
    RekGLISDETAIL: TStringField;
    RekGLLNAMA_REKENING: TStringField;
    QUserNAMA_DIVISI: TStringField;
    dsQUser: TwwDataSource;
    QStatistikTransaksi: TOracleDataSet;
    QStatistikTransaksiNAMA_TRANSAKSI: TStringField;
    QStatistikTransaksiKD_TRANSAKSI: TStringField;
    QStatistikTransaksiAWAL_BULAN: TFloatField;
    QStatistikTransaksiSD_KEMARIN: TFloatField;
    QStatistikTransaksiHARI_INI: TFloatField;
    QStatistikTransaksiTOTAL: TIntegerField;
    DSQStatistikTransaksi: TwwDataSource;
    QTutupBuku: TOracleDataSet;
    QTutupBukuTRANSAKSI: TDateTimeField;
    QTutupBukuBUKU: TDateTimeField;
    QTutupBukuOPR_UPDATE: TStringField;
    QTutupBukuTGL_UPDATE: TDateTimeField;
    dsQTutupBuku: TwwDataSource;
    QJnsItemJNS_BRG: TStringField;
    QJnsItemKD_JNS_ITEM: TStringField;
    QJnsItemREK1: TStringField;
    QJnsItemREK2: TStringField;
    QJnsItemREK3: TStringField;
    QJnsItemREK4: TStringField;
    QBenang: TOracleDataSet;
    QBenangNAMA_SUB_KELOMPOK: TStringField;
    QBenangKD_KEL: TStringField;
    QBenangKD_SUB_KEL: TStringField;
    QWarna: TOracleDataSet;
    QWarnaWARNA: TStringField;
    QWarnaKD_WARNA: TStringField;
    dsQWarna: TwwDataSource;
    QMesin: TOracleDataSet;
    QMesinKD_LOKASI: TStringField;
    QMesinKD_SUB_LOKASI: TStringField;
    QMesinJNS_LOKASI: TStringField;
    QMesinSPESIFIKASI: TStringField;
    QMesinEFF: TFloatField;
    QMesinKPS: TFloatField;
    QMesinSATUAN: TStringField;
    QMesinJML: TFloatField;
    QMesinKD_BENANG: TStringField;
    QItemAllRASIO2: TFloatField;
    QT: TOracleDataSet;
    QLookRAB: TOracleDataSet;
    QLookRABID_RAB: TFloatField;
    QLookRABID_PROYEK: TStringField;
    QLookRABNAMA_RAB: TStringField;
    QLookRABVERSI: TStringField;
    QLookRABTGL_INSERT: TDateTimeField;
    QLookRABOPR_INSERT: TStringField;
    QLookRABTOTAL: TFloatField;
    QLookRABISPOST: TStringField;
    QLookRABTGL: TDateTimeField;
    QLookRABTGL_UPDATE: TDateTimeField;
    QLookRABQTY: TFloatField;
    QKonstruksi: TOracleDataSet;
    QKonstruksiKD_KONSTRUKSI: TStringField;
    QKonstruksiNAMA_KONSTRUKSI: TStringField;
    QCorak: TOracleDataSet;
    QCorakKD_CORAK: TStringField;
    QCorakNAMA_CORAK: TStringField;
    QLookRABKONSTRUKSI: TStringField;
    QLookRABCORAK: TStringField;
    QTNAMA_KONSTRUKSI: TStringField;
    QTNAMA_CORAK: TStringField;
    QTNAMA_KEMASAN: TStringField;
    QTSATUAN: TStringField;
    QTKD_ITEM: TStringField;
    QLookRABP: TFloatField;
    QLookRABL: TFloatField;
    QLookRABNLUSI: TFloatField;
    QLookRABNPAKAN: TFloatField;
    QLokasiProses: TOracleDataSet;
    QLokasiProsesPROSES: TStringField;
    QLokasiProsesLOKASI: TStringField;
    QLookLokasiProses: TOracleDataSet;
    QLookLokasiProsesLOKASI: TStringField;
    RVLokasiProses: TwwRecordViewDialog;
    dsQLokasiProses: TwwDataSource;
    QLookLokasiProsesMYLOKASI: TStringField;
    QLookLokasiProsesPROSES: TStringField;
    QLokasiProsesKD_LOKASI: TStringField;
    QLookLokasiProsesKD_LOKASI: TStringField;
    MKaryawanAktif: TOracleDataSet;
    MKaryawanAktifNAMA_KARYAWAN: TStringField;
    MKaryawanAktifNIK: TStringField;
    MKaryawanAktifBAGIAN: TStringField;
    MKaryawanAktifSUB_BAGIAN: TStringField;
    MKaryawanAktifJABATAN: TStringField;
    MKaryawanAktifJNS_KEL: TStringField;
    MKaryawanAktifSTS_KAWIN: TStringField;
    MKaryawanAktifN_ANAK: TFloatField;
    MKaryawanAktifTGL_MASUK_KONTRAK: TDateTimeField;
    MKaryawanAktifAGAMA: TStringField;
    QMutu: TOracleDataSet;
    QMutuMUTU: TStringField;
    QMutuKETERANGAN: TStringField;
    QMutuSCORE: TFloatField;
    MKaryawanAktifNIK_LAMA: TStringField;
    QResep: TOracleDataSet;
    QResepNO_RESEP: TStringField;
    QResepVERSI: TStringField;
    QResepKP: TStringField;
    QResepTGL: TDateTimeField;
    QResepKONSTRUKSI: TStringField;
    QResepCORAK: TStringField;
    wwIntl1: TwwIntl;
    QResepNO_DESAIN: TFloatField;
    QDateTime: TOracleDataSet;
    QDateTimeVNOW: TDateTimeField;
    QDateTimeVUSER_CETAK: TStringField;
    QDateTimeTGL: TStringField;
    QDateTimeUSER: TStringField;
    QMitra_Kerja: TOracleDataSet;
    QMitra_KerjaKD_MITRA: TStringField;
    QMitra_KerjaNAMA_MITRA: TStringField;
    QMitra_KerjaALAMAT: TStringField;
    QMitra_KerjaINISIAL: TStringField;
    FNoUrut2: TOracleDataSet;
    FNoUrut2FNO_URUT2: TStringField;
    QUserTime: TOracleDataSet;
    QUserTimeVUSER: TStringField;
    QUserTimeVTGL: TStringField;
    QUserTimeVJAM: TStringField;
    QHak_jam: TOracleDataSet;
    QHak_jamJAM1: TStringField;
    QHak_jamJAM2: TStringField;
    QHak_jamTGL_APLIKASI: TDateTimeField;
    SavePictureDialog1: TSavePictureDialog;
    QLogIpAddr: TOracleQuery;
    QMyInfoMYINFO: TStringField;
    QMyInfoTGL_INSERT: TDateTimeField;
    QMyInfoOPR_INSERT: TStringField;
    QMyInfoTGL_APLIKASI: TDateTimeField;
    QMyInfoTGL_BANNER: TDateTimeField;
    QMyInfoTGL_FINISH: TDateTimeField;
    QUserISAKTIF: TStringField;
    QUserIUPDATE: TStringField;
    function Barcode(MyFld: PAnsiChar; BType: PAnsiChar; useMsgBox: Integer): PAnsiChar;
    procedure OSAfterLogOn(Sender: TOracleSession);
    procedure ProcReadIni(pFileIni: String; pSection : String; var pGrid : TwwDBGrid);
    procedure ProcWtiteIni(pFileIni: String; pSection : String; pGrid : TwwDBGrid);
    procedure ProcReadIni2(pFileIni: String; pSection : String; var pString : String);
    procedure ProcWtiteIni2(pFileIni: String; pSection : String; pStrings : TStrings);
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
    procedure QTimeBeforeOpen(DataSet: TDataSet);
    procedure QSuplierBeforeOpen(DataSet: TDataSet);
    procedure QMUBeforeOpen(DataSet: TDataSet);
    procedure QDivisiBeforeOpen(DataSet: TDataSet);
    procedure QItemAllBeforeOpen(DataSet: TDataSet);
    procedure QSatuanBeforeOpen(DataSet: TDataSet);
    procedure QMyInfoBeforePost(DataSet: TDataSet);
    procedure QStatistikTransaksiCalcFields(DataSet: TDataSet);
    procedure QTutupBukuBeforePost(DataSet: TDataSet);
    procedure QLokasiProsesNewRecord(DataSet: TDataSet);
    procedure QLokasiProsesBeforeQuery(Sender: TOracleDataSet);
    procedure QWarnaBeforeQuery(Sender: TOracleDataSet);
  private
    { Private declarations }
//    vFontStyle :TFontStyles;
    iniFile: TIniFile;
  public
    { Public declarations }
    sAppPath: String;
    cBtnDesign : Boolean;
    cBtnExport : Boolean;
    cHakInput : Boolean;
    vGridFontBold : Boolean;
    vkd_lokasi, vrab : String;
     vGridFont, vGridFontColor, vGridSpacing : Integer;
    vGridFontType : String;

    vclGridRead, vclGridEdit, vclGridReadFont, vclGridEditFont : TColor;

// barcode
        OldTempBType: array[0..255] of Char;
        BType: String;
        TempBType: array[0..255] of Char;
        Format: String;
        TempFormat: array[0..255] of Char;
        TempFontSetName: array[0..255] of Char;
        FontToUse: TFont;
        Selected: String;
        TempSelected: array[0..255] of Char;
//barcode
  end;

Const
//  cWarnaPanel = $006B6B6B;
  cUserTabel = 'ipisma_db3.';
  cUserTabel1 = 'ipisma_db1.';
  cWarnaPanel = clAppWorkSpace;
  cWarnaPanelUtama = clBtnFace;
var
  DMFrm: TDMFrm;

implementation

{$R *.dfm}
//barcode
function CIA_CALC(Msg: PAnsiChar; RMsg: PAnsiChar; RText: PAnsiChar;
BType: PAnsiChar; var RMsgLen: Integer; var RTextLen: Integer): Integer;
stdcall; external 'CIABAR32.DLL' name 'CIA_CALC'

function CIA_ERR(errCode: Integer; BType: PAnsiChar; errMsg: PAnsiChar;
reqLen: Integer): Integer;
stdcall; external 'CIABAR32.DLL' name 'CIA_ERR'

function TDMFrm.Barcode(MyFld: PAnsiChar; BType: PAnsiChar; useMsgBox: Integer): PAnsiChar;
var
RMsg: PAnsiChar; RText: PAnsiChar; RMsgLen: Integer; RTextLen: Integer; errCode: Integer;
RMsgTmp: string; RTextTmp: string; errMsgTmp: string; InRet: Integer;
errMsg: PAnsiChar;

begin

RMsgTmp := StringOfChar(Chr(0), 256); // Set to all NULL
RTextTmp := StringOfChar(Chr(0), 256); // Set to all NULL
RMsg := PAnsiChar(RMsgTmp);
RText := PAnsiChar(RTextTmp);

Barcode := '';

errCode := CIA_CALC(MyFld, RMsg, RText, BType, RMsgLen, RTextLen);

if errCode <> 0 then // If any error
begin
		errMsgTmp := StringOfChar(Chr(0), 128);
     errMsg := PAnsiChar(errMsgTmp);
     CIA_ERR(errCode, BType, errMsg, 128);
     if useMsgBox > 0 then begin
     	Application.MessageBox(errMsg, 'Bar Code Error', mb_OK);
     end;
     Exit
end;

InRet := Pos('.', BType);
If InRet > 0 then begin
	InRet := Pos('B', Copy(BType, InRet, Length(BType) - InRet));
	If InRet > 0 then begin
  	Barcode := RText;
  end
  else begin
  	Barcode := RMsg;
  end
end
else begin
	Barcode := RText;
end;

end;
//end barcode

procedure TDMFrm.OSAfterLogOn(Sender: TOracleSession);
begin
  if Sender.Connected then
  begin
      Perusahaan.Open;
      QTime.Close;
      QTime.Open;
      QMyInfo.Open;
      QMU.Close;
      QMU.Open;
      QSatuan.Open;
      QJnsItem.Open;
      QUser.Close;
      QUser.SetVariable('VUSER',QTimeVUSER.AsString);
      QUser.Open;
      QMenuUser.DisableControls;
      QMenuUser.Close;
      QMenuUser.DeclareVariable('vuser',otString);
      QMenuUser.SQL.Text:='select a.nama_component, b.hak_browse, b.hak_input, b. hak_export, b.hak_design from '+cUserTabel+'menu_tipe_detail a, '+
        cUserTabel+'vuser_menu b'+
        ' where a.imenu=b.imenu and b.vuser=:vuser';
      QMenuUser.SetVariable('vuser',QTimeVUSER.AsString);
      QMenuUser.Open;
      QMenuUser.EnableControls;
  end;
end;

procedure TDMFrm.ProcReadIni(pFileIni: String; pSection : String; var pGrid : TwwDBGrid);
var
//  iniFile: TIniFile;
  vBold, vItalic, vStrikeOut, vUnderLine : Boolean;
//  vint : integer;
begin
//  iniFile := TIniFile.Create(sAppPath+pFileIni+'.ini');
  try
    pGrid.Font.Size:=iniFile.ReadInteger(pSection, 'FontSize', 8);
    pGrid.Font.Name:=iniFile.ReadString(pSection, 'FontName','Arial');
    pGrid.Font.Color:=iniFile.ReadInteger(pSection, 'FontColor',0);
    pGrid.RowHeightPercent:=iniFile.ReadInteger(pSection, 'GridLine', 100);
    vBold:=iniFile.ReadBool(pSection, 'FontBold',False);
    vItalic:=iniFile.ReadBool(pSection, 'FontItalic',False);
    vStrikeOut:=iniFile.ReadBool(pSection, 'FontStrikeOut',False);
    vUnderLine:=iniFile.ReadBool(pSection, 'FontUnderLine',False);
    pGrid.Font.Style:=[];
    if vBold then
       pGrid.Font.Style:=pGrid.Font.Style+[fsBold];
    if vItalic then
       pGrid.Font.Style:=pGrid.Font.Style+[fsItalic];
    if vStrikeOut then
       pGrid.Font.Style:=pGrid.Font.Style+[fsStrikeOut];
    if vUnderLine then
       pGrid.Font.Style:=pGrid.Font.Style+[fsUnderLine];
  finally
//    iniFile.Free;
  end;

end;

procedure TDMFrm.ProcReadIni2(pFileIni: String; pSection : String; var pString : String);
begin
  try
    pString:=iniFile.ReadString(pSection, 'LOOKUP','');
  finally
  end;

end;

procedure TDMFrm.ProcWtiteIni(pFileIni: String; pSection : String; pGrid : TwwDBGrid);
var
//  iniFile: TIniFile;
  vBold, vItalic, vStrikeOut, vUnderLine : Boolean;
begin
//  iniFile := TIniFile.Create(sAppPath+pFileIni+'.ini');
  try
    vBold:=(fsBold in pGrid.Font.Style);
    vItalic:=(fsItalic in pGrid.Font.Style);
    vStrikeOut:=(fsStrikeOut in pGrid.Font.Style);
    vUnderLine:=(fsUnderLine in pGrid.Font.Style);
    iniFile.WriteInteger(pSection, 'FontSize', pGrid.Font.Size);
    iniFile.WriteInteger(pSection, 'FontColor', pGrid.Font.Color);
    iniFile.WriteString(pSection, 'FontName',pGrid.Font.Name);
    iniFile.WriteBool(pSection, 'FontBold',vBold);
    iniFile.WriteBool(pSection, 'FontItalic',vItalic);
    iniFile.WriteBool(pSection, 'FontStrikeOut',vStrikeOut);
    iniFile.WriteBool(pSection, 'FontUnderLine',vUnderLine);
    iniFile.WriteInteger(pSection, 'GridLine', pGrid.RowHeightPercent);
  finally
//    iniFile.Free;
  end;
end;

procedure TDMFrm.ProcWtiteIni2(pFileIni: String; pSection : String; pStrings : TStrings);
var
  vstring : String;
  i : integer;
begin
  vstring:=pStrings.Strings[0];
  for i:=1 to pStrings.Count-1 do
    vstring:=vstring+#13+pStrings.Strings[i];
  try
    iniFile.WriteString(pSection, 'LOOKUP',vstring);
  finally
  end;
end;

procedure TDMFrm.DataModuleCreate(Sender: TObject);
Const
  SECTION = 'Grid Default';

begin
  sAppPath := ExtractFileDir(Application.ExeName)+'\';
  iniFile := TIniFile.Create(sAppPath+Application.Title+'.ini');

//
//  iniFile := TRegIniFile.Create('Pismatex Registry');
  vclGridEdit := iniFile.ReadInteger(SECTION, 'vclGridEdit', clYellow);
  vclGridEditFont := iniFile.ReadInteger(SECTION, 'vclGridEditFont', clBlack);
  vclGridRead := iniFile.ReadInteger(SECTION, 'vclGridRead', clSkyBlue);
  vclGridReadFont := iniFile.ReadInteger(SECTION, 'vclGridReadFont', clMaroon);
 // iniFile.Free;
//

  OS.LogonUsername:='';
  OS.LogonPassword:='';
  OS.LogonDatabase:='GDPROD';
end;

procedure TDMFrm.DataModuleDestroy(Sender: TObject);
begin
   iniFile.Free;
end;

procedure TDMFrm.QTimeBeforeOpen(DataSet: TDataSet);
begin
  QTime.SQL.Text:='select user as vuser, sysdate as jam,'+
    ' user||'', ''||to_char(sysdate,''dd Mon yyyy hh24:mi'') as vuser_cetak,'+
    ' b.kd_div from dual a, '+cUserTabel+'vuser b'+
    ' where user=b.vuser';
end;

procedure TDMFrm.QSuplierBeforeOpen(DataSet: TDataSet);
begin
  QSuplier.SQL.Text:='select a.* from '+cUserTabel+'vsuplier a';
end;

procedure TDMFrm.QMUBeforeOpen(DataSet: TDataSet);
begin
  QMU.SQL.Text:='select a.* from '+cUserTabel+'mu a';
end;

procedure TDMFrm.QDivisiBeforeOpen(DataSet: TDataSet);
begin
  QDivisi.SQL.Text:='select a.* from '+cUserTabel+'vdivisi a';
end;

procedure TDMFrm.QItemAllBeforeOpen(DataSet: TDataSet);
begin
  QItemAll.SQL.Text:='select a.* from '+cUserTabel+'vitemall a';
end;

procedure TDMFrm.QSatuanBeforeOpen(DataSet: TDataSet);
begin
  QSatuan.SQL.Text:='select a.*, a.rowid from '+cUserTabel+'satuan a order by a.satuan';
end;

procedure TDMFrm.QMyInfoBeforePost(DataSet: TDataSet);
begin
  QTime.Close;
  QTime.Open;
  QMyInfo.FieldByName('OPR_INSERT').AsString:=QTimeVUSER.AsString;
  QMyInfo.FieldByName('TGL_INSERT').AsDateTime:=QTimeJAM.AsDateTime;
end;

procedure TDMFrm.QStatistikTransaksiCalcFields(DataSet: TDataSet);
begin
  QStatistikTransaksiTOTAL.AsInteger:=QStatistikTransaksiSD_KEMARIN.AsInteger+
    QStatistikTransaksiHARI_INI.AsInteger;
end;

procedure TDMFrm.QTutupBukuBeforePost(DataSet: TDataSet);
begin
  QTutupBukuTRANSAKSI.AsDateTime:=trunc(QTutupBukuTRANSAKSI.AsDateTime)+1-1/86400;
  QTutupBukuBUKU.AsDateTime:=trunc(QTutupBukuBUKU.AsDateTime)+1-1/86400;
end;

procedure TDMFrm.QLokasiProsesNewRecord(DataSet: TDataSet);
begin
  QLokasiProsesKD_LOKASI.AsString:=vkd_lokasi;
end;

procedure TDMFrm.QLokasiProsesBeforeQuery(Sender: TOracleDataSet);
begin
  QLokasiProses.SetVariable('kd_lokasi',vkd_lokasi);
end;

procedure TDMFrm.QWarnaBeforeQuery(Sender: TOracleDataSet);
begin
  QWarna.SetVariable('myparam','ipisma_db3.warna');
end;

end.
