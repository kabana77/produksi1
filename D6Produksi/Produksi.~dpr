program Produksi;

uses
  Forms,
  Pembelian in 'Pembelian.pas' {PembelianFrm},
  DM in 'DM.pas' {DMFrm: TDataModule},
  OrganisasiItem in 'OrganisasiItem.pas' {OrganisasiItemFrm},
  TipeMenu in 'TipeMenu.pas' {TipeMenuFrm},
  HakMenu in 'HakMenu.pas' {HakMenuFrm},
  OrganisasiLokasi in 'OrganisasiLokasi.pas' {OrganisasiLokasiFrm},
  Rekanan in 'Rekanan.pas' {RekananFrm},
  JenisTransaksi in 'JenisTransaksi.pas' {JenisTransaksiFrm},
  Organisasi in 'Organisasi.pas' {OrganisasiFrm},
  Kriteria_Tanggal1 in 'Kriteria_Tanggal1.pas' {Kriteria_Tanggal1_FRM: Unit1},
  Splash in 'Splash.pas' {SplashForm},
  JenisBarang in 'JenisBarang.pas' {JnsBarangFrm},
  HasilSoftCones in 'HasilSoftCones.pas' {HasilSoftConesFrm},
  HasilCelup in 'HasilCelup.pas' {HasilCelupFrm},
  PindahLokasi in 'PindahLokasi.pas' {PindahLokasiFrm},
  InfoRealisasiPO in 'InfoRealisasiPO.pas' {InfoRealisasiPOFrm},
  PindahLokasi2 in 'PindahLokasi2.pas' {PindahLokasi2Frm},
  InfoWIPCelup in 'InfoWIPCelup.pas' {InfoWIPCelupFrm},
  InfoWIPPengeringan in 'InfoWIPPengeringan.pas' {InfoWIPPengeringanFrm},
  PermintaanKoreksi in 'PermintaanKoreksi.pas' {PermintaanKoreksiFrm},
  PermintaanKoreksiCelup in 'PermintaanKoreksiCelup.pas' {PermintaanKoreksiCelupFrm},
  ValidasiKeluarBB in 'ValidasiKeluarBB.pas' {ValidasiKeluarBBFrm},
  ValidasiPenyerahanBB in 'ValidasiPenyerahanBB.pas' {ValidasiPenyerahanBBFrm},
  InfoMutasiGW in 'InfoMutasiGW.pas' {InfoMutasiGWFrm},
  KartuStokBB in 'KartuStokBB.pas' {KartuStokBBFrm},
  InfoMutasiGW2 in 'InfoMutasiGW2.pas' {InfoMutasiGW2Frm},
  InfoSemuaItem in 'InfoSemuaItem.pas' {InfoSemuaItemFrm},
  ValidasiPenyerahanBB2 in 'ValidasiPenyerahanBB2.pas' {ValidasiPenyerahanBB2Frm},
  OrderCelup in 'OrderCelup.pas' {OrderCelupFrm},
  LapProduksi in 'LapProduksi.pas' {LapProduksiFrm},
  ValidasiKeluarKeMitra in 'ValidasiKeluarKeMitra.pas' {ValidasiKeluarKeMitraFrm},
  OrderJetDyeing in 'OrderJetDyeing.pas' {OrderJetDyeingFrm},
  HasilJetDyeing in 'HasilJetDyeing.pas' {HasilJetDyeingFrm},
  KeluarJetDyeing in 'KeluarJetDyeing.pas' {KeluarJetDyeingFrm},
  KoreksiMasukJD in 'KoreksiMasukJD.pas' {KoreksiMasukJDFrm},
  KoreksiKeluarJD in 'KoreksiKeluarJD.pas' {KoreksiKeluarJDFrm},
  WIP_JETDYEING in 'WIP_JETDYEING.pas' {WIP_JETDYEINGFRM},
  LapKeluarGW in 'LapKeluarGW.pas' {LapKeluarGWFrm},
  LapMutStokDyeing in 'LapMutStokDyeing.pas' {LapMutStokDyeingFrm},
  LapMutStokGW in 'LapMutStokGW.pas' {LapMutStokGWFrm},
  HasilPengeringan in 'HasilPengeringan.pas' {HasilPengeringFrm},
  MyColor in 'MyColor.pas' {MyColorFrm},
  PenerimaanHasilCelup in 'PenerimaanHasilCelup.pas' {PenerimaanHasilCelupFrm},
  PenerimaanKG in 'PenerimaanKG.pas' {PenerimaanKGFrm},
  PengeluaranKG in 'PengeluaranKG.pas' {PengeluaranKGFrm},
  Penerimaan_JasaKelos in 'Penerimaan_JasaKelos.pas' {Penerimaan_JasaKelosFrm},
  KartuStokBBWarna in 'KartuStokBBWarna.pas' {KartuStokBBWarnaFrm},
  PengeluaranPCS in 'PengeluaranPCS.pas' {PengeluaranPCSFrm},
  SJMaklon in 'SJMaklon.pas' {SJMaklonFrm},
  DaftarUnpost in 'DaftarUnpost.pas' {DaftarUnpostFrm},
  PermintaanUnpost in 'PermintaanUnpost.pas' {PermintaanUnpostFrm},
  Unpost in 'Unpost.pas' {UnpostFrm},
  DaftarWarna in 'DaftarWarna.pas' {DaftarWarnaFrm},
  ProsesAwalTahun in 'ProsesAwalTahun.pas' {ProsesAwalTahunFrm};

{$R *.res}

begin
  Application.Initialize;
  SplashForm := TSplashForm.Create(Application);
  SplashForm.Show; // Display The Splash Screen
  SplashForm.Update; // Update The Splah Screen
  While SplashForm.Timer1.Enabled do Application.ProcessMessages; // Makes Splash Screen Longer
  Application.CreateForm(TDMFrm, DMFrm);
  Application.CreateForm(TPembelianFrm, PembelianFrm);
  Application.CreateForm(TKriteria_Tanggal1_FRM, Kriteria_Tanggal1_FRM);
  Application.CreateForm(TKriteria_Tanggal1_FRM, Kriteria_Tanggal1_FRM);
  SplashForm.Hide; // Hide Splash Screen
  SplashForm.Free; // Free Splah Screen
  Application.Run;
end.
