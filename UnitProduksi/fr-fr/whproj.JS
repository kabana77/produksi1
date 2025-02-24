program JahitKemas;

uses
  Forms,
  Main in 'Main.pas' {MainFrm},
  DM in 'DM.pas' {DMFrm: TDataModule},
  KontrakJasa in 'KontrakJasa.pas' {KontrakJasaFrm},
  TerimaDariFinishing in 'TerimaDariFinishing.pas' {TerimaDariFinishingFrm},
  HasilJahit in 'HasilJahit.pas' {HasilJahitFrm},
  HasilKemas in 'HasilKemas.pas' {HasilKemasFrm},
  HasilLipat in 'HasilLipat.pas' {HasilLipatFrm},
  OrderJobOut in 'OrderJobOut.pas' {OrderJobOutFrm},
  JobOut in 'JobOut.pas' {JobOutFrm},
  HasilJahitSuplier in 'HasilJahitSuplier.pas' {HasilJahitSuplierFrm},
  HasilLipatSuplier in 'HasilLipatSuplier.pas' {HasilLipatSuplierFrm},
  HasilKemasSuplier in 'HasilKemasSuplier.pas' {HasilKemasSuplierFrm},
  SerahTerimaKeGDJadi in 'SerahTerimaKeGDJadi.pas' {SerahTerimaKeGDJadiFrm},
  PermintaanJualBarang in 'PermintaanJualBarang.pas' {PermintaanJualBarangFrm},
  OrderJual in 'OrderJual.pas' {OrderJualFrm},
  SJJual in 'SJJual.pas' {SJJualFrm},
  LapJahit in 'LapJahit.pas' {LapJahitFrm},
  MutasiLipat in 'MutasiLipat.pas' {MutasiLipatFrm},
  MutasiKemas in 'MutasiKemas.pas' {MutasiKemasFrm},
  HasilJahitLabel in 'HasilJahitLabel.pas' {HasilJahitLabelFrm},
  KoreksiMasuk in 'KoreksiMasuk.pas' {KoreksiMasukFrm},
  KoreksiKeluar in 'KoreksiKeluar.pas' {KoreksiKeluarFrm},
  HasilPotong in 'HasilPotong.pas' {HasilPotongFrm},
  HasilSortir in 'HasilSortir.pas' {HasilSortirFrm},
  HasilPress in 'HasilPress.pas' {HasilPressFrm},
  HasilEtiket in 'HasilEtiket.pas' {HasilEti