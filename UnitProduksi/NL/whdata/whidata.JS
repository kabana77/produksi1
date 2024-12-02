essage('Maaf, Anda tidak berhak merubah data !');
      Abort;
  end;
end;

procedure TBonPemakaianBengkeldanAlatFrm.QTransaksiAfterDelete(DataSet: TDataSet);
begin
  if QTransaksi.IsEmpty then
    TabSheet1.TabVisible:=True;
end;

procedure TBonPemakaianBengkeldanAlatFrm.DetailBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inc(vrecord_ke);
//  DetailBand2.ForceNewPage:=(vrecord_ke>Round(vRecord.Value)-1);
  QRLSubBagian.Caption:=DMFrm.QLookSubBagian.Lookup('KODE',QDetailID_BAG.AsString+QDetailID_SUB_BAG.AsString,'SUB_BAGIAN');
end;

procedure TBonPemakaianBengkeldanAlatFrm.VTglAwalChange(Sender: TObject);
begin
  vTglAkhir.Date:=Trunc(EndOfTheMonth(VTglAwal.Date));
end;

procedure TBonPemakaianBengkeldanAlatFrm.vTglAkhirChange(Sender: TObject);
begin
  if VTglAwal.Date>vTglAkhir.Date then
  begin
      ShowMessage('Tanggal Akhir harus LEBIH BESAR dari Tanggal Awal !');
      vTglAkhir.Date:=VTglAwal.Date;
  end;
end;

procedure TBonPemakaianBengkeldanAlatFrm.RadioGroup1Click(Sender: TObject);
begin
  case RadioGroup1.ItemIndex of
  0 : vRecord.Value:=40;
  1 : vRecord.Value:=20;
  end;
end;

procedure TBonPemakaianBengkeldanAlatFrm.ColumnHeaderBand2BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  vrecord_ke:=0;
end;

procedure TBonPemakaianBengkeldanAlatFrm.wwDBGrid2DblClick(Sender: TObject);
var
  vnama_barang_org : String;
  vketerangan_org : String;
  vpos : Integer;
begin
  if QDetailKETERANGAN.AsString<>'' then
  begin
    vpos:=Pos('**',QDetailKETERANGAN.AsString);
    if vpos>0 then
    begin
       vnama_barang_org:=copy(QDetailKETERANGAN.AsString,1,vpos-1);
       vketerangan_org:=copy(QDetailKETERANGAN.A