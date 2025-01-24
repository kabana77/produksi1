unit Pembelian;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Menus, StdCtrls, StdActns, ActnList, Dialogs, wwDialog, wwrcdvw,
  ExtCtrls, ComCtrls, wwdblook, Wwdbdlg, wwidlg, DB, DBTables, Wwtable,
  Grids, Wwdbigrd, Wwdbgrid, LMDCustomComponent, LMDContainerComponent,
  LMDBaseDialog, LMDAboutDlg, jpeg, ImgList, LMDControl, LMDBaseControl,
  LMDBaseGraphicControl, LMDGraphicControl, LMDScrollText, Buttons;

type
  TPembelianFrm = class(TForm)
    MainMenu1: TMainMenu;
    File1: TMenuItem;
    ipeMenu1: TMenuItem;
    OtoritasUser1: TMenuItem;
    Backup1: TMenuItem;
    N1: TMenuItem;
    Keluar1: TMenuItem;
    Master1: TMenuItem;
    BengkeldanPeralatan1: TMenuItem;
    Window1: TMenuItem;
    About1: TMenuItem;
    N3: TMenuItem;
    Cascade1: TMenuItem;
    ile1: TMenuItem;
    ActionList1: TActionList;
    WindowClose1: TWindowClose;
    WindowCascade1: TWindowCascade;
    WindowTileHorizontal1: TWindowTileHorizontal;
    WindowTileVertical1: TWindowTileVertical;
    Close1: TMenuItem;
    ileHorizontally1: TMenuItem;
    N2: TMenuItem;
    LokasiBarang1: TMenuItem;
    LokasiBahan1: TMenuItem;
    N4: TMenuItem;
    Divisi1: TMenuItem;
    Login1: TMenuItem;
    LokasiBahanBakuKimia1: TMenuItem;
    JenisjenisTransaksiBukti1: TMenuItem;
    BahanBakuBenang2: TMenuItem;
    wwRecordViewDialog1: TwwRecordViewDialog;
    GantiPassword1: TMenuItem;
    InfoGlobal1: TMenuItem;
    UnpostNota1: TMenuItem;
    StatusBar1: TStatusBar;
    Panel1: TPanel;
    N39: TMenuItem;
    JenisBarang1: TMenuItem;
    wwRecordViewDialog2: TwwRecordViewDialog;
    ransaksi1: TMenuItem;
    SoftCone1: TMenuItem;
    Pencelupan1: TMenuItem;
    GudangWarna1: TMenuItem;
    HasilMesin1: TMenuItem;
    HasilPencelupan1: TMenuItem;
    HasilPengeringan1: TMenuItem;
    Penerimaan1: TMenuItem;
    Pengeluaran1: TMenuItem;
    PindahLokasi32: TMenuItem;
    //PindahLokasi3: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    InfoWIP2: TMenuItem;
    N7: TMenuItem;
    InfoMutasiHasilProduksi1: TMenuItem;
    InfoMutasiHasilProduksi2: TMenuItem;
    N22WIPPengeringan1: TMenuItem;
    N22LokasiProsesMesinPengeringan1: TMenuItem;
    SerahTerimaHasilCelup1: TMenuItem;
    InfoMutasiStok1: TMenuItem;
    wwRecordViewDialog3: TwwRecordViewDialog;
    N8: TMenuItem;
    Warna1: TMenuItem;
    Koreksi1: TMenuItem;
    Koreksi2: TMenuItem;
    N9: TMenuItem;
    Koreksi3: TMenuItem;
    HasilProduksiCelup1: TMenuItem;
    ReturDariProduksi1: TMenuItem;
    Lainnya1: TMenuItem;
    HasilKelos1: TMenuItem;
    KePersiapan1: TMenuItem;
    KeTenun1: TMenuItem;
    KeFinishing1: TMenuItem;
    UntukDiKelos1: TMenuItem;
    PenggantiReturProduksi1: TMenuItem;
    Lainnya2: TMenuItem;
    InfoMutasiStok21: TMenuItem;
    N00KonstruksiSarung1: TMenuItem;
    N16: TMenuItem;
    InfoSemuaItem1: TMenuItem;
    SuratJalanDoubling1: TMenuItem;
    erimaHasilDoubling1: TMenuItem;
    OrderCelup1: TMenuItem;
    MyAbout: TLMDAboutDlg;
    LaporanProduksi1: TMenuItem;
    N688KeMitra1: TMenuItem;
    JetDyeing1: TMenuItem;
    HasilJetDyeing1: TMenuItem;
    erimaKain1: TMenuItem;
    Pengeluaran2: TMenuItem;
    KoreksiMasuk1: TMenuItem;
    KoreksiKeluar1: TMenuItem;
    N10: TMenuItem;
    N11: TMenuItem;
    WIPJetDyeing1: TMenuItem;
    N687JasaKelos1: TMenuItem;
    LapKeluarGWFrm: TMenuItem;
    PenerimaanJasaKelos: TMenuItem;
    LaporanMutasiStokDeptDyeing1: TMenuItem;
    N13: TMenuItem;
    LaporanMutasiStokGudangWarna1: TMenuItem;
    Laporan1: TMenuItem;
    Image1: TImage;
    N14: TMenuItem;
    N15: TMenuItem;
    KoreksiHSC: TMenuItem;
    N17: TMenuItem;
    LMDScrollText1: TLMDScrollText;
    Panel2: TPanel;
    N18: TMenuItem;
    N19: TMenuItem;
    SpeedButton2: TSpeedButton;
    Panel3: TPanel;
    BtnLogin: TSpeedButton;
    ReturDariMitra1: TMenuItem;
    N797SJMaklon1: TMenuItem;
    N798TerimaHasilMaklon1: TMenuItem;
    PermintaanUnpost1: TMenuItem;
    EksekusiUnpost1: TMenuItem;
    SparepartdanPelumas1: TMenuItem;
    ProsesAwalTahun1: TMenuItem;
    N20: TMenuItem;
    InactivityTimer: TTimer;
    procedure FormCreate(Sender: TObject);
    procedure Keluar1Click(Sender: TObject);
    procedure ipeMenu1Click(Sender: TObject);
    procedure OtoritasUser1Click(Sender: TObject);
    procedure LokasiBarang1Click(Sender: TObject);
    procedure Suplier1Click(Sender: TObject);
    procedure Login1Click(Sender: TObject);
    procedure JenisjenisTransaksiBukti1Click(Sender: TObject);
    procedure Divisi1Click(Sender: TObject);
    procedure BahanBakuBenang2Click(Sender: TObject);
    procedure InfoGlobal1Click(Sender: TObject);
    procedure GantiPassword1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure UnpostNota1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure JenisBarang1Click(Sender: TObject);
    procedure utupTransaksi1Click(Sender: TObject);
    procedure utupBuku1Click(Sender: TObject);
    procedure SparepartdanPelumas1Click(Sender: TObject);
    procedure HasilMesin1Click(Sender: TObject);
    procedure HasilPencelupan1Click(Sender: TObject);
    procedure HasilPengeringan1Click(Sender: TObject);
    procedure PindahLokasi32Click(Sender: TObject);
    procedure PindahLokasi3Click(Sender: TObject);
    procedure SerahTerimaHasilCelup1Click(Sender: TObject);
    procedure InfoMutasiHasilProduksi1Click(Sender: TObject);
    procedure InfoWIPPengeringan1Click(Sender: TObject);
    procedure N22LokasiProsesMesinPengeringan1Click(Sender: TObject);
    procedure Warna1Click(Sender: TObject);
    procedure InfoMutasiHasilProduksi2Click(Sender: TObject);
    procedure InfoWIP2Click(Sender: TObject);
    procedure N22WIPPengeringan1Click(Sender: TObject);
    procedure BengkeldanPeralatan1Click(Sender: TObject);
    procedure Koreksi1Click(Sender: TObject);
    procedure Koreksi2Click(Sender: TObject);
    procedure Koreksi3Click(Sender: TObject);
    procedure HasilProduksiCelup1Click(Sender: TObject);
    procedure ReturDariProduksi1Click(Sender: TObject);
    procedure Lainnya1Click(Sender: TObject);
    procedure HasilKelos1Click(Sender: TObject);
    procedure KePersiapan1Click(Sender: TObject);
    procedure KeTenun1Click(Sender: TObject);
    procedure KeFinishing1Click(Sender: TObject);
    procedure UntukDiKelos1Click(Sender: TObject);
    procedure PenggantiReturProduksi1Click(Sender: TObject);
    procedure Lainnya2Click(Sender: TObject);
    procedure InfoMutasiStok1Click(Sender: TObject);
    procedure InfoMutasiStok21Click(Sender: TObject);
    procedure N00KonstruksiSarung1Click(Sender: TObject);
    procedure InfoSemuaItem1Click(Sender: TObject);
    procedure LokasiBenangWarna1Click(Sender: TObject);
    procedure LokasiBeam1Click(Sender: TObject);
    procedure PenerimaanBenang1Click(Sender: TObject);
    procedure PenerimaanBenang2Click(Sender: TObject);
    procedure PemakaianBenang1Click(Sender: TObject);
    procedure PemakaianBenang2Click(Sender: TObject);
    procedure KembalikanKeGW1Click(Sender: TObject);
    procedure KembalikanKeGW2Click(Sender: TObject);
    procedure PenerimaanBenang3Click(Sender: TObject);
    procedure KembalikanKeGW3Click(Sender: TObject);
    procedure Masuk1Click(Sender: TObject);
    procedure Keluar2Click(Sender: TObject);
    procedure Koreksi4Click(Sender: TObject);
    procedure SuratJalanDoubling1Click(Sender: TObject);
    procedure erimaHasilDoubling1Click(Sender: TObject);
    procedure OrderCelup1Click(Sender: TObject);
    procedure About1Click(Sender: TObject);
    procedure LaporanProduksi1Click(Sender: TObject);
    procedure N688KeMitra1Click(Sender: TObject);
    procedure erimaKain1Click(Sender: TObject);
    procedure HasilJetDyeing1Click(Sender: TObject);
    procedure Pengeluaran2Click(Sender: TObject);
    procedure KoreksiMasuk1Click(Sender: TObject);
    procedure KoreksiKeluar1Click(Sender: TObject);
    procedure WIPJetDyeing1Click(Sender: TObject);
    procedure N687JasaKelos1Click(Sender: TObject);
    procedure LapKeluarGWFrmClick(Sender: TObject);
    procedure PenerimaanJasaKelosClick(Sender: TObject);
    procedure LaporanMutasiStokDeptDyeing1Click(Sender: TObject);
    procedure LaporanMutasiStokGudangWarna1Click(Sender: TObject);
    procedure KoreksiHSCClick(Sender: TObject);
    procedure BtnLoginClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure ReturDariMitra1Click(Sender: TObject);
    procedure N797SJMaklon1Click(Sender: TObject);
    procedure N798TerimaHasilMaklon1Click(Sender: TObject);
    procedure PermintaanUnpost1Click(Sender: TObject);
    procedure EksekusiUnpost1Click(Sender: TObject);
    procedure ProsesAwalTahun1Click(Sender: TObject);

    procedure AppMessage(var Msg: TMsg; var Handled: Boolean);
    procedure LogoutUser(Sender: TObject);
    

  private
    { Private declarations }
    mychar : String;
  public
    { Public declarations }
     vInit : TListBox;
  end;

var
  PembelianFrm: TPembelianFrm;

implementation

uses DM, TipeMenu, HakMenu, OrganisasiItem, OrganisasiLokasi,
  Rekanan, JenisTransaksi, Organisasi,
  Kriteria_Tanggal1, JenisBarang, Info, HasilSoftCones, HasilCelup,
  PindahLokasi, PindahLokasi2, InfoWIPCelup,
  InfoWIPPengeringan, PermintaanKoreksi, PermintaanKoreksiCelup,
  ValidasiPenyerahanBB, ValidasiKeluarBB, LapProduksi, InfoMutasiGW, InfoMutasiGW2,
  InfoSemuaItem, InfoRealisasiPO, ValidasiPenyerahanBB2, OrderCelup,
  ValidasiKeluarKeMitra, OrderJetDyeing, HasilJetDyeing, KeluarJetDyeing, KoreksiMasukJD,
  KoreksiKeluarJD,LapKeluarGW, WIP_JETDYEING, LapMutStokDyeing,
  LapMutStokGW, HasilPengeringan, MyColor, PenerimaanKG,
  PenerimaanHasilCelup, Penerimaan_JasaKelos, PengeluaranPCS, SJMaklon, TerimaMaklon,
  DaftarUnpost, PermintaanUnpost, Unpost, DaftarWarna, ProsesAwalTahun, PindahLokasi3;

{$R *.dfm}

procedure TPembelianFrm.FormCreate(Sender: TObject);
var
  vtgl_aplikasi, vtgl_aplikasi_baru : String;
  //vipaddr,
  vlogin_windows : String;
  OldFile,NewFile, OldFile2,NewFile2,NewFile21,NewFile22:string;
begin
   DMFrm.OS.LogonPassword:='';
   if DMFrm.OL.Execute then
   begin
      if not DMFrm.OS.Connected then Application.Terminate
      else
      begin
        DMFrm.QHak_jam.Close;
        DMFrm.QHak_jam.Open;
        DMFrm.QUserTime.Close;
        DMFrm.QUserTime.Open;
        DMFrm.QUser.Close;
        DMFrm.QUser.Open;
        DMFrm.QDateTime.Close;
        DMFrm.QDateTime.Open;

        vtgl_aplikasi:=FormatDateTime('dd mmmm yyyy HH:MM',FileDateToDateTime(FileAge(Application.ExeName)));
        Panel1.Caption:='Aplikasi Tanggal : '+vtgl_aplikasi;
        vtgl_aplikasi_baru:=FormatDateTime('dd mmmm yyyy HH:MM',DMFrm.QMyInfo.FieldByName('TGL_APLIKASI').AsDateTime);
        StatusBar1.Panels[0].Text:=vlogin_windows+'/'+UpperCase(DMFrm.OS.LogonUsername)+'@'+UpperCase(DMFrm.OS.LogonDatabase);
        StatusBar1.Panels[1].Text:='';
        StatusBar1.Panels[2].Text:='Aplikasi Tanggal : '+vtgl_aplikasi;

        StatusBar1.Panels[3].Text:='Login : '+
        FormatDateTime('dd mmm yyyy hh:mm', DMFrm.QDateTimeVNOW.AsDateTime);

        LMDScrollText1.Lines.Text:=DMFrm.QMyInfo.FieldByName('MYINFO').AsString;
        LMDScrollText1.Scroll:=((DMFrm.QMyInfo.FieldByName('MYINFO').AsString<>'') and
                                (Trunc(DMFrm.QMyInfo.FieldByName('TGL_BANNER').AsDateTime)>=trunc(DMFrm.QDateTime.FieldByName('VNOW').AsDateTime)));

        if DMFrm.QUserIUPDATE.AsString='1' then
        {MAA}
        begin
          if FileDateToDateTime(FileAge(Application.ExeName))<DMFrm.QMyInfo.FieldByName('TGL_APLIKASI').AsDateTime then
          begin
            ShowMessage('Aplikasi anda tgl :'+vtgl_aplikasi+#13+'Ada Aplikasi Baru tgl : '+vtgl_aplikasi_baru+#13+'Silahkan UPDATE Aplikasi !');
            Application.Terminate;

            if CopyFile(PChar(OldFile),PChar(NewFile),True) then
            begin
              CopyFile(PChar(OldFile2),PChar(NewFile2),True);
              CopyFile(PChar(OldFile2),PChar(NewFile21),True);
              CopyFile(PChar(OldFile2),PChar(NewFile22),True);
            end
            else
            begin
              CopyFile(PChar(OldFile),PChar(NewFile),False);
              CopyFile(PChar(OldFile2),PChar(NewFile2),False);
              CopyFile(PChar(OldFile2),PChar(NewFile21),False);
              CopyFile(PChar(OldFile2),PChar(NewFile22),False);
            end
          end;
        end;

        { auto kill after 1 min idle  }
        InactivityTimer := TTimer.Create(Self);
        InactivityTimer.Interval := 3600000; // 3600000ms =60 menit
        InactivityTimer.OnTimer := LogoutUser;
        InactivityTimer.Enabled := True;
        Application.OnMessage := AppMessage;
        { end auto kill after 1 min idle }

      end
   end;
end;

procedure TPembelianFrm.AppMessage(var Msg: TMsg; var Handled: Boolean);
begin
  if (Msg.message = WM_MOUSEMOVE) or (Msg.message = WM_KEYDOWN) then
  begin
    InactivityTimer.Enabled := False;
    InactivityTimer.Enabled := True;
  end;
end;

procedure TPembelianFrm.LogoutUser(Sender: TObject);
begin
  DMFrm.OS.Connected:=False;
  ShowMessage('Aplikasi PRODUKSI SATU telah ditinggalkan selama 60 menit, sistem otomatis logout.');
  Application.Terminate;
end;

procedure TPembelianFrm.Keluar1Click(Sender: TObject);
begin
  Close;
end;

procedure TPembelianFrm.ipeMenu1Click(Sender: TObject);
begin
  TipeMenu.ShowForm((Sender as TMenuItem).Name);
end;

procedure TPembelianFrm.OtoritasUser1Click(Sender: TObject);
begin
  HakMenu.ShowForm((Sender as TMenuItem).Name);
end;

procedure TPembelianFrm.LokasiBarang1Click(Sender: TObject);
begin
  OrganisasiLokasi.ShowForm((Sender as TMenuItem).Name,(Sender as TMenuItem).Caption,(Sender as TMenuItem).Caption);
end;

procedure TPembelianFrm.Suplier1Click(Sender: TObject);
begin
  Rekanan.ShowForm((Sender as TMenuItem).Name,'SUPLIER',(Sender as TMenuItem).Caption);
end;

procedure TPembelianFrm.Login1Click(Sender: TObject);
begin
  if MDIChildCount>0 then
    ShowMessage('Tutup dulu semua Form !')
    else
     FormCreate(nil);
end;

procedure TPembelianFrm.JenisjenisTransaksiBukti1Click(Sender: TObject);
begin
  JenisTransaksi.ShowForm((Sender as TMenuItem).Name,'',(Sender as TMenuItem).Caption);
end;

procedure TPembelianFrm.Divisi1Click(Sender: TObject);
begin
  Organisasi.ShowForm((Sender as TMenuItem).Name,'',(Sender as TMenuItem).Caption);
end;

procedure TPembelianFrm.BahanBakuBenang2Click(Sender: TObject);
begin
  OrganisasiItem.ShowForm((Sender as TMenuItem).Name,copy((Sender as TMenuItem).Caption,2,2),(Sender as TMenuItem).Caption);
end;

procedure TPembelianFrm.InfoGlobal1Click(Sender: TObject);
begin
  wwRecordViewDialog1.Execute;
end;

procedure TPembelianFrm.GantiPassword1Click(Sender: TObject);
begin
  DMFrm.OL.SetPassword;
end;

procedure TPembelianFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
//  InfoFrm.vClose:=TRUE;
//  InfoFrm.Close;
end;

procedure TPembelianFrm.UnpostNota1Click(Sender: TObject);
//var
  //vnota : String;
{begin
  if InputQuery('UNPOST Nota','No. Nota : ',vnota) then
  begin
     DMFrm.QUnPost.Close;
     DMFrm.QUnPost.SetVariable('no_nota',vnota);
     DMFrm.QUnPost.Execute;
     ShowMessage('OK');
  end; }
begin
  DaftarUnpostFrm:=TDaftarUnpostFrm.Create(Self);
  DaftarUnpostFrm.ShowModal;
end;

procedure TPembelianFrm.FormShow(Sender: TObject);
//var
  //  vtgl_aplikasi, vtgl_aplikasi_baru : String;
begin
{  vtgl_aplikasi:=FormatDateTime('dd mmmm yyyy HH:MM',FileDateToDateTime(FileAge(Application.ExeName)));
  Panel1.Caption:='Aplikasi Tanggal : '+vtgl_aplikasi;
  vtgl_aplikasi_baru:=FormatDateTime('dd mmmm yyyy HH:MM',DMFrm.QMyInfo.FieldByName('TGL_APLIKASI').AsDateTime);
  if FileDateToDateTime(FileAge(Application.ExeName))<DMFrm.QMyInfo.FieldByName('TGL_APLIKASI').AsDateTime then
  begin
      ShowMessage('Aplikasi anda tgl :'+vtgl_aplikasi+#13+'Ada Aplikasi Baru tgl : '+vtgl_aplikasi_baru+
        #13+'MOHON AMBIL di SERVER !');
      Application.Terminate;     
  end;        }
end;

procedure TPembelianFrm.JenisBarang1Click(Sender: TObject);
begin
   JnsBarangFrm:=TJnsBarangFrm.Create(Self);
   JnsBarangFrm.ShowModal;
   JnsBarangFrm.Free;
end;

procedure TPembelianFrm.utupTransaksi1Click(Sender: TObject);
begin
  DMFrm.QTutupBuku.Open;
  DMFrm.QTutupBukuTRANSAKSI.ReadOnly:=FALSE;
  DMFrm.QTutupBukuBUKU.ReadOnly:=True;
  wwRecordViewDialog2.Execute;
end;

procedure TPembelianFrm.utupBuku1Click(Sender: TObject);
begin
  DMFrm.QTutupBuku.Open;
  DMFrm.QTutupBukuTRANSAKSI.ReadOnly:=TRUE;
  DMFrm.QTutupBukuBUKU.ReadOnly:=FALSE;
  wwRecordViewDialog2.Execute;
end;

procedure TPembelianFrm.SparepartdanPelumas1Click(Sender: TObject);
begin
  OrganisasiItem.ShowForm((Sender as TMenuItem).Name,copy((Sender as TMenuItem).Caption,2,2),(Sender as TMenuItem).Caption);
end;

procedure TPembelianFrm.HasilMesin1Click(Sender: TObject);
begin
  HasilSoftCones.ShowForm((Sender as TMenuItem).Name,'791',(Sender as TMenuItem).Caption,'10','10');
end;

procedure TPembelianFrm.HasilPencelupan1Click(Sender: TObject);
begin
  HasilCelup.ShowForm((Sender as TMenuItem).Name,'792',(Sender as TMenuItem).Caption,'21','21','21');
end;

procedure TPembelianFrm.HasilPengeringan1Click(Sender: TObject);
begin
  HasilPengeringan.ShowForm((Sender as TMenuItem).Name,'793',(Sender as TMenuItem).Caption,'22','22','21');
end;

procedure TPembelianFrm.PindahLokasi32Click(Sender: TObject);
begin
  PindahLokasi.ShowForm((Sender as TMenuItem).Name,'794',(Sender as TMenuItem).Caption,'10','10');
end;

procedure TPembelianFrm.PindahLokasi3Click(Sender: TObject);
begin
  PindahLokasi3.ShowForm((Sender as TMenuItem).Name,'796',(Sender as TMenuItem).Caption,'22','22');
end;

procedure TPembelianFrm.SerahTerimaHasilCelup1Click(Sender: TObject);
begin
  PindahLokasi2.ShowForm((Sender as TMenuItem).Name,'795',(Sender as TMenuItem).Caption,'21','21');
end;

procedure TPembelianFrm.InfoMutasiHasilProduksi1Click(Sender: TObject);
begin
   InfoRealisasiPO.ShowForm((Sender as TMenuItem).Name,(Sender as TMenuItem).Caption,(Sender as TMenuItem).Caption, '10');
end;

procedure TPembelianFrm.InfoWIPPengeringan1Click(Sender: TObject);
begin
   InfoRealisasiPO.ShowForm((Sender as TMenuItem).Name,(Sender as TMenuItem).Caption,(Sender as TMenuItem).Caption, '22');
end;

procedure TPembelianFrm.N22LokasiProsesMesinPengeringan1Click(
  Sender: TObject);
begin
  OrganisasiLokasi.ShowForm((Sender as TMenuItem).Name,(Sender as TMenuItem).Caption,(Sender as TMenuItem).Caption);
end;

procedure TPembelianFrm.Warna1Click(Sender: TObject);
begin
  //DMFrm.QWarna.Open;
  //wwRecordViewDialog3.Execute;
  DaftarWarnaFrm:=TDaftarWarnaFrm.Create(Self);
  DaftarWarnaFrm.Show;
end;

procedure TPembelianFrm.InfoMutasiHasilProduksi2Click(Sender: TObject);
begin
   InfoWIPPengeringan.ShowForm((Sender as TMenuItem).Name,(Sender as TMenuItem).Caption,(Sender as TMenuItem).Caption, '22');
end;

procedure TPembelianFrm.InfoWIP2Click(Sender: TObject);
begin
   InfoWIPCelup.ShowForm((Sender as TMenuItem).Name,(Sender as TMenuItem).Caption,(Sender as TMenuItem).Caption, '21');
end;

procedure TPembelianFrm.N22WIPPengeringan1Click(Sender: TObject);
begin
  OrganisasiItem.ShowForm((Sender as TMenuItem).Name,copy((Sender as TMenuItem).Caption,2,2),(Sender as TMenuItem).Caption);
end;

procedure TPembelianFrm.BengkeldanPeralatan1Click(Sender: TObject);
begin
  OrganisasiItem.ShowForm((Sender as TMenuItem).Name,copy((Sender as TMenuItem).Caption,2,2),(Sender as TMenuItem).Caption);

end;

procedure TPembelianFrm.Koreksi1Click(Sender: TObject);
begin
  if PermintaanKoreksiFrm=nil then
  PermintaanKoreksi.ShowForm((Sender as TMenuItem).Name,'799',(Sender as TMenuItem).Caption,'10','10','DALAM_PROSES');
end;

procedure TPembelianFrm.Koreksi2Click(Sender: TObject);
begin
  PermintaanKoreksiCelup.ShowForm((Sender as TMenuItem).Name,'804',(Sender as TMenuItem).Caption,'21','21');
end;

procedure TPembelianFrm.Koreksi3Click(Sender: TObject);
begin
  PermintaanKoreksiCelup.ShowForm((Sender as TMenuItem).Name,'807',(Sender as TMenuItem).Caption,'22','22');
end;

procedure TPembelianFrm.HasilProduksiCelup1Click(Sender: TObject);
begin               
  PenerimaanHasilCelup.ShowForm((Sender as TMenuItem).Name,'881',(Sender as TMenuItem).Caption,'30','30');
//  ValidasiPenyerahanBB.ShowForm((Sender as TMenuItem).Name,'881',(Sender as TMenuItem).Caption,'30','30');
end;

procedure TPembelianFrm.ReturDariProduksi1Click(Sender: TObject);
begin
//  ValidasiPenyerahanBB.ShowForm((Sender as TMenuItem).Name,'883',(Sender as TMenuItem).Caption,'30','30');
  PenerimaanKG.ShowForm((Sender as TMenuItem).Name,'883',(Sender as TMenuItem).Caption,'30','30');
end;

procedure TPembelianFrm.Lainnya1Click(Sender: TObject);
begin
  ValidasiPenyerahanBB.ShowForm((Sender as TMenuItem).Name,'884',(Sender as TMenuItem).Caption,'30','30');
end;

procedure TPembelianFrm.HasilKelos1Click(Sender: TObject);
begin
//  ValidasiPenyerahanBB.ShowForm((Sender as TMenuItem).Name,'882',(Sender as TMenuItem).Caption,'30','30');
  PenerimaanKG.ShowForm((Sender as TMenuItem).Name,'882',(Sender as TMenuItem).Caption,'30','30');
end;

procedure TPembelianFrm.KePersiapan1Click(Sender: TObject);
begin
  PengeluaranPCS.ShowForm((Sender as TMenuItem).Name,'681',(Sender as TMenuItem).Caption,'30','30');

  //  ValidasiKeluarBB.ShowForm((Sender as TMenuItem).Name,'681',(Sender as TMenuItem).Caption,'30','30');
end;

procedure TPembelianFrm.KeTenun1Click(Sender: TObject);
begin
  ValidasiKeluarBB.ShowForm((Sender as TMenuItem).Name,'682',(Sender as TMenuItem).Caption,'30','30');
end;

procedure TPembelianFrm.KeFinishing1Click(Sender: TObject);
begin
  ValidasiKeluarBB.ShowForm((Sender as TMenuItem).Name,'683',(Sender as TMenuItem).Caption,'30','30');
end;

procedure TPembelianFrm.UntukDiKelos1Click(Sender: TObject);
begin
  ValidasiKeluarBB.ShowForm((Sender as TMenuItem).Name,'684',(Sender as TMenuItem).Caption,'30','30');
end;

procedure TPembelianFrm.PenggantiReturProduksi1Click(Sender: TObject);
begin
  ValidasiKeluarBB.ShowForm((Sender as TMenuItem).Name,'685',(Sender as TMenuItem).Caption,'30','30');
end;

procedure TPembelianFrm.Lainnya2Click(Sender: TObject);
begin
  ValidasiKeluarBB.ShowForm((Sender as TMenuItem).Name,'686',(Sender as TMenuItem).Caption,'30','30');
end;

procedure TPembelianFrm.InfoMutasiStok1Click(Sender: TObject);
begin
   InfoMutasiGW.ShowForm((Sender as TMenuItem).Name,(Sender as TMenuItem).Caption,(Sender as TMenuItem).Caption, '30');
end;

procedure TPembelianFrm.InfoMutasiStok21Click(Sender: TObject);
begin
   InfoMutasiGW2.ShowForm((Sender as TMenuItem).Name,(Sender as TMenuItem).Caption,(Sender as TMenuItem).Caption, '30');
end;

procedure TPembelianFrm.N00KonstruksiSarung1Click(Sender: TObject);
begin
  OrganisasiItem.ShowForm((Sender as TMenuItem).Name,copy((Sender as TMenuItem).Caption,2,2),(Sender as TMenuItem).Caption);
end;

procedure TPembelianFrm.InfoSemuaItem1Click(Sender: TObject);
begin
  if InfoSemuaItemFrm=nil then InfoSemuaItemFrm:=TInfoSemuaItemFrm.Create(Self)
  else InfoSemuaItemFrm.show;
end;

procedure TPembelianFrm.LokasiBenangWarna1Click(Sender: TObject);
begin
  mychar:=(Sender as TMenuItem).Caption;
  Delete(mychar,Pos('&',mychar),1);
  DMFrm.vkd_lokasi:=copy(mychar,1,2);
  DMFrm.QLokasiProses.Close;
  DMFrm.QLokasiProses.Open;
  DMFrm.RVLokasiProses.Execute;
end;

procedure TPembelianFrm.LokasiBeam1Click(Sender: TObject);
begin
  mychar:=(Sender as TMenuItem).Caption;
  Delete(mychar,Pos('&',mychar),1);
  DMFrm.vkd_lokasi:=copy(mychar,1,2);
  DMFrm.QLokasiProses.Close;
  DMFrm.QLokasiProses.Open;
  DMFrm.RVLokasiProses.Execute;

end;

procedure TPembelianFrm.PenerimaanBenang1Click(Sender: TObject);
begin
  ValidasiPenyerahanBB.ShowForm((Sender as TMenuItem).Name,'872',(Sender as TMenuItem).Caption,'30','41');
end;

procedure TPembelianFrm.PenerimaanBenang2Click(Sender: TObject);
begin
  ValidasiPenyerahanBB.ShowForm((Sender as TMenuItem).Name,'873',(Sender as TMenuItem).Caption,'30','42');
end;

procedure TPembelianFrm.PemakaianBenang1Click(Sender: TObject);
begin
  ValidasiKeluarBB.ShowForm((Sender as TMenuItem).Name,'672',(Sender as TMenuItem).Caption,'30','41');
end;

procedure TPembelianFrm.PemakaianBenang2Click(Sender: TObject);
begin
  ValidasiKeluarBB.ShowForm((Sender as TMenuItem).Name,'674',(Sender as TMenuItem).Caption,'30','42');
end;

procedure TPembelianFrm.KembalikanKeGW1Click(Sender: TObject);
begin
  ValidasiKeluarBB.ShowForm((Sender as TMenuItem).Name,'673',(Sender as TMenuItem).Caption,'30','41');
end;

procedure TPembelianFrm.KembalikanKeGW2Click(Sender: TObject);
begin
  ValidasiKeluarBB.ShowForm((Sender as TMenuItem).Name,'675',(Sender as TMenuItem).Caption,'30','42');
end;

procedure TPembelianFrm.PenerimaanBenang3Click(Sender: TObject);
begin
  ValidasiPenyerahanBB.ShowForm((Sender as TMenuItem).Name,'876',(Sender as TMenuItem).Caption,'30','50');
end;

procedure TPembelianFrm.KembalikanKeGW3Click(Sender: TObject);
begin
  ValidasiKeluarBB.ShowForm((Sender as TMenuItem).Name,'680',(Sender as TMenuItem).Caption,'30','50');
end;

procedure TPembelianFrm.Masuk1Click(Sender: TObject);
begin
  ValidasiPenyerahanBB2.ShowForm((Sender as TMenuItem).Name,'331',(Sender as TMenuItem).Caption,'30','30');
end;

procedure TPembelianFrm.Keluar2Click(Sender: TObject);
begin
  ValidasiPenyerahanBB2.ShowForm((Sender as TMenuItem).Name,'332',(Sender as TMenuItem).Caption,'30','30');
end;

procedure TPembelianFrm.Koreksi4Click(Sender: TObject);
begin
  ValidasiPenyerahanBB2.ShowForm((Sender as TMenuItem).Name,'333',(Sender as TMenuItem).Caption,'30','30');
end;

procedure TPembelianFrm.SuratJalanDoubling1Click(Sender: TObject);
begin
  ValidasiKeluarBB.ShowForm((Sender as TMenuItem).Name,'689',(Sender as TMenuItem).Caption,'30','30');
end;

procedure TPembelianFrm.erimaHasilDoubling1Click(Sender: TObject);
begin
  ValidasiPenyerahanBB.ShowForm((Sender as TMenuItem).Name,'885',(Sender as TMenuItem).Caption,'30','30');

end;

procedure TPembelianFrm.OrderCelup1Click(Sender: TObject);
begin
  OrderCelup.ShowForm((Sender as TMenuItem).Name,'687',(Sender as TMenuItem).Caption,'30','30');
end;

procedure TPembelianFrm.About1Click(Sender: TObject);
begin
 MyAbout.Execute;
end;

procedure TPembelianFrm.LaporanProduksi1Click(Sender: TObject);
begin
 LapProduksi.ShowForm((Sender as TMenuItem).Name,(Sender as TMenuItem).Caption,(Sender as TMenuItem).Caption, '22');
end;

procedure TPembelianFrm.N688KeMitra1Click(Sender: TObject);
begin
  ValidasiKeluarKeMitra.ShowForm((Sender as TMenuItem).Name,'688',(Sender as TMenuItem).Caption,'30','30');
end;

procedure TPembelianFrm.erimaKain1Click(Sender: TObject);
begin
  OrderJetDyeing.ShowForm((Sender as TMenuItem).Name,'810',(Sender as TMenuItem).Caption,(Sender as TMenuItem).Caption, '22');
end;

procedure TPembelianFrm.HasilJetDyeing1Click(Sender: TObject);
begin
  HasilJetDyeing.ShowForm((Sender as TMenuItem).Name,'811',(Sender as TMenuItem).Caption,(Sender as TMenuItem).Caption, '22');
end;

procedure TPembelianFrm.Pengeluaran2Click(Sender: TObject);
begin
  KeluarJetDyeing.ShowForm((Sender as TMenuItem).Name,'812',(Sender as TMenuItem).Caption,(Sender as TMenuItem).Caption, '22');
end;

procedure TPembelianFrm.KoreksiMasuk1Click(Sender: TObject);
begin
  KoreksiMasukJD.ShowForm((Sender as TMenuItem).Name,'813',(Sender as TMenuItem).Caption,(Sender as TMenuItem).Caption, '22');
end;

procedure TPembelianFrm.KoreksiKeluar1Click(Sender: TObject);
begin
  KoreksiKeluarJD.ShowForm((Sender as TMenuItem).Name,'814',(Sender as TMenuItem).Caption,(Sender as TMenuItem).Caption, '22');
end;

procedure TPembelianFrm.WIPJetDyeing1Click(Sender: TObject);
begin
  WIP_JETDYEING.ShowForm((Sender as TMenuItem).Name,(Sender as TMenuItem).Caption,(Sender as TMenuItem).Caption, '22');
end;

procedure TPembelianFrm.N687JasaKelos1Click(Sender: TObject);
begin
  ValidasiKeluarBB.ShowForm((Sender as TMenuItem).Name,'687',(Sender as TMenuItem).Caption,'30','30');
end;

procedure TPembelianFrm.LapKeluarGWFrmClick(Sender: TObject);
begin
LapKeluarGW.ShowForm((Sender as TMenuItem).Name,(Sender as TMenuItem).Caption,(Sender as TMenuItem).Caption, '22');
end;

procedure TPembelianFrm.PenerimaanJasaKelosClick(Sender: TObject);
begin
  Penerimaan_JasaKelos.ShowForm((Sender as TMenuItem).Name,'886',(Sender as TMenuItem).Caption,'30','30');
//  ValidasiPenyerahanBB.ShowForm((Sender as TMenuItem).Name,'886',(Sender as TMenuItem).Caption,'30','30');
end;

procedure TPembelianFrm.LaporanMutasiStokDeptDyeing1Click(Sender: TObject);
begin
 LapMutStokDyeing.ShowForm((Sender as TMenuItem).Name,(Sender as TMenuItem).Caption,(Sender as TMenuItem).Caption, '22');

end;

procedure TPembelianFrm.LaporanMutasiStokGudangWarna1Click(
  Sender: TObject);
begin
 LapMutStokGW.ShowForm((Sender as TMenuItem).Name,(Sender as TMenuItem).Caption,(Sender as TMenuItem).Caption, '30');


end;

procedure TPembelianFrm.KoreksiHSCClick(Sender: TObject);
begin
  if PermintaanKoreksiFrm=nil then
  PermintaanKoreksi.ShowForm((Sender as TMenuItem).Name,'799',(Sender as TMenuItem).Caption,'10','10','HASIL_PROSES');

end;

procedure TPembelianFrm.BtnLoginClick(Sender: TObject);
begin
 Login1Click(nil);
end;

procedure TPembelianFrm.SpeedButton2Click(Sender: TObject);
begin
   MyColorFrm:=TMyColorFrm.Create(Self);
   MyColorFrm.ShowModal;
   MyColorFrm.Free;
end;

procedure TPembelianFrm.ReturDariMitra1Click(Sender: TObject);
begin
  PenerimaanKG.ShowForm((Sender as TMenuItem).Name,'884',(Sender as TMenuItem).Caption,'30','30');
end;

procedure TPembelianFrm.N797SJMaklon1Click(Sender: TObject);
begin
  SJMaklon.ShowForm((Sender as TMenuItem).Name,'797',(Sender as TMenuItem).Caption,'21','21');
end;

procedure TPembelianFrm.N798TerimaHasilMaklon1Click(Sender: TObject);
begin
  TerimaMaklon.ShowForm((Sender as TMenuItem).Name,'798',(Sender as TMenuItem).Caption,'40','40');
end;



procedure TPembelianFrm.PermintaanUnpost1Click(Sender: TObject);
begin
  PermintaanUnpostFrm:=TPermintaanUnpostFrm.Create(Application);
  PermintaanUnpostFrm.Caption:='Permintaan Unpost Bukti';
  PermintaanUnpostFrm.Show;
end;

procedure TPembelianFrm.EksekusiUnpost1Click(Sender: TObject);
begin
  UnpostFrm:=TUnpostFrm.Create(Application);
  UnpostFrm.Caption:='Eksekusi Unpost Bukti';
  UnpostFrm.Show;
end;


procedure TPembelianFrm.ProsesAwalTahun1Click(Sender: TObject);
begin
  ProsesAwalTahun.ShowForm((Sender as TMenuItem).Name);
end;

end.
