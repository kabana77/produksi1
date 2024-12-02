
  case PageControl1.ActivePageIndex of
  0 : wwDBGrid1.RowHeightPercent:=Round(vHeight.Value);
  1 : wwDBGrid2.RowHeightPercent:=Round(vHeight.Value);
  end;

end;

procedure TNilaiKartuStokNBBFrm.BtnExportClick(Sender: TObject);
begin
  if QBrowse.Active then
  begin
     DMFrm.SaveDialog1.DefaultExt:='XLK';
     DMFrm.SaveDialog1.Filter:='Excel files (*.XLK)|*.XLK';
     DMFrm.SaveDialog1.FileName:=LTitle.Caption;
     wwDBGrid1.ExportOptions.TitleName:=LTitle.Caption;
       if DMFrm.SaveDialog1.Execute then
       begin
         try
         wwDBGrid1.ExportOptions.FileName:=DMFrm.SaveDialog1.FileName;
         wwDBGrid1.ExportOptions.Save;
         ShowMessage('Simpan Sukses !');
         except
         ShowMessage('Simpan Gagal !');
         end;
       end;
  end
  else
    ShowMessage('Tabel belum di-OPEN !');
end;

procedure TNilaiKartuStokNBBFrm.DBText5Click(Sender: TObject);
var
  DC : HDC;
  ABitmap:TBitmap;
begin
  DC := GetDC (GetTopParentHandle);
  ABitmap:=TBitmap.Create;
  try
    ABitmap.Width  := Width-9; //GetDeviceCaps (DC, HORZRES);
    ABitmap.Height := Height-30; //GetDeviceCaps (DC, VERTRES);
    BitBlt(ABitmap.Canvas.Handle, 0, 0, ABitmap.Width,
           ABitmap.Height,DC, 0, 0, SRCCOPY);
  finally
    ReleaseDC (GetTopParentHandle, DC);
  end;
  DMFrm.SavePictureDialog1.FileName:=LTitle.Caption;
  if DMFrm.SavePictureDialog1.Execute then
     ABitmap.SaveToFile(DMFrm.SavePictureDialog1.FileName);
  ABitmap.Free;
end;

procedure TNilaiKartuStokNBBFrm.vOperandClick(Sender: TObject);
begin
  if vOperand.Caption='LIKE' then
    vOperand.Caption:='='
    else
      vOperand.Caption:='LIKE';
end;

procedure TNilaiKartuStokNBBFrm.dbcFieldEnter(Sender: TObject);
var
  i : Word;
begin
  if (QBrowse.Active) and (dbcField.Items.Count=1) then
  for i:=0 to wwDBGrid1.FieldCount-1 do
    if UpperCase(wwDBGrid1.Columns[i].FieldName)<>'TANGGAL' then
      dbcField.Items.Add(wwDBGrid1.Columns[i].FieldName);
end;

procedure TNilaiKartuStokNBBFrm.BitBtn2Click(Sender: TObject);
var
  vmybulan : string;
  i : Integer;
begin
  QBrowse.DisableControls;
  QBrowse.Close;
  vmybulan:='p.n'+FormatDateTime('mm',VTglAwal.Date)+' as nilai_beli, q.n'+FormatDateTime('mm',VTglAwal.Date)+' as nilai_koreksi';
  QNilaiMasuk.Close;
  QNilaiMasuk.SetVariable('mybulan',vmybulan);
  QNilaiMasuk.SetVariable('ptahun',StrToInt(FormatDateTime('yyyy',VTglAwal.Date)));
  QNilaiMasuk.Open;
  vmybulan:='p.n'+FormatFloat('00',MonthOf(VTglAwal.Date)-1)+' as nilai_awal';
  QNilaiAwal.Close;
  QNilaiAwal.SetVariable('mybulan',vmybulan);
  QNilaiAwal.SetVariable('ptahun',StrToInt(FormatDateTime('yyyy',VTglAwal.Date)));
  QNilaiAwal.Open;
  DMFrm.OS.Commit;
  if (xawal<>VTglAwal.Date) or (xakhir<>vTglAkhir.Date) then
  begin
  xawal:=VTglAwal.Date;
  xakhir:=vTglAkhir.Date;
  QProses.Close;
  QProses.SetVariable('kd_jns_item',vkd_jns_item);
  QProses.SetVariable('pawal',VTglAwal.Date);
  QProses.SetVariable('pakhir',vTglAkhir.Date);
  QProses.Execute;
  end;
  t1:=0;
  t2:=0;
  t3:=0;
  t4:=0;
  t5:=0;
  t6:=0;
  QBrowse.Open;
  i:=0;
  LMDProgress1.Max:=QBrowse.RecordCount;
  LMDProgress1.Position:=i;
  while not QBrowse.Eof do
  begin
    inc(i);
    LMDProgress1.Position:=i;
      t1:=t1+QBrowseNILAI_AWAL.AsFloat;
      if QBrowseCQty_Beli.AsFloat<>0 then
        t2:=t2+QBrowseNILAI_BELI.AsFloat;
      if QBrowseCQty_Koreksi1.AsFloat<>0 then
        t3:=t3+QBrowseNILAI_KOREKSI.AsFloat;
      t4:=t4+QBrowseMASUK_NILAI.AsFloat;
      t5:=t5+QBrowseKELUAR_NILAI.AsFloat;
      t6:=t6+QBrowseNILAI_AKHIR.AsFloat;
      QBrowse.Next;
  end;
  QBrowse.First;
  QBrowse.EnableControls;
  wwDBGrid1.ColumnByName('NILAI_AWAL').FooterValue:=FormatFloat('0.0,0;(0.0,0)',t1);
  wwDBGrid1.ColumnByName('NILAI_BELI').FooterValue:=FormatFloat('0.0,0;(0.0,0)',t2);
  wwDBGrid1.ColumnByName('NILAI_KOREKSI').FooterValue:=FormatFloat('0.0,0;(0.0,0)',t3);
  wwDBGrid1.ColumnByName('MASUK_NILAI').FooterValue:=FormatFloat('0.0,0;(0.0,0)',t4);
  wwDBGrid1.ColumnByName('KELUAR_NILAI').FooterValue:=FormatFloat('0.0,0;(0.0,0)',t5);
  wwDBGrid1.ColumnByName('NILAI_AKHIR').FooterValue:=FormatFloat('0.0,0;(0.0,0)',t6);
  QTutupTransaksi.Open
end;

procedure TNilaiKartuStokNBBFrm.TitleBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLTitle.Caption:=LTitle.Caption;
  QRLPeriode.Caption:=VTglAwal.Text+' s/d '+vTglAkhir.Text;
end;

procedure TNilaiKartuStokNBBFrm.TitleBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLTitle2.Caption:='RIWAYAT TRANSAKSI';
  vberjalan:=QBrowseAWAL.AsFloat;
end;

procedure TNilaiKartuStokNBBFrm.QBrowseCalcFields(DataSet: TDataSet);
var
  v1, v2 : real;
begin
//arif
  case rgKonversi.ItemIndex of
  0 : begin
            QBrowseCQTY_AWAL.AsFloat:=QBrowseAWAL.AsFloat;
            QBrowseCQTY_BELI.AsFloat:=QBrowsePEMBELIAN.AsFloat;
            QBrowseCQTY_KOREKSI1.AsFloat:=QBrowseKOREKSI_IN.AsFloat;
            QBrowseCQTY_PAKAI.AsFloat:=QBrowsePEMAKAIAN.AsFloat;
            QBrowseCQTY_KOREKSI2.AsFloat:=QBrowseKOREKSI_OUT.AsFloat;
            QBrowseCQty_AKHIR.AsFloat:=QBrowseAKHIR.AsFloat;

      end;
  1 : begin
        if QBrowseSATUAN.AsString='GRAM' then
        begin
          //  QBrowseSAT.AsFloat:=QBrowseSATUAN.AsFloat;
             QBrowseCQTY_AWAL.AsFloat:=QBrowseAWAL.AsFloat;
            QBrowseCQTY_BELI.AsFloat:=QBrowsePEMBELIAN.AsFloat;
            QBrowseCQTY_KOREKSI1.AsFloat:=QBrowseKOREKSI_IN.AsFloat;
            QBrowseCQTY_PAKAI.AsFloat:=QBrowsePEMAKAIAN.AsFloat;
            QBrowseCQTY_KOREKSI2.AsFloat:=QBrowseKOREKSI_OUT.AsFloat;
            QBrowseCQty_AKHIR.AsFloat:=QBrowseAKHIR.AsFloat;
         end
        else
        if QBrowseSATUAN.AsString='KG' then
        begin

             QBrowseCQTY_AWAL.AsFloat:=1000*QBrowseAWAL.AsFloat;
            QBrowseCQTY_BELI.AsFloat:=1000*QBrowsePEMBELIAN.AsFloat;
            QBrowseCQTY_KOREKSI1.AsFloat:=1000*QBrowseKOREKSI_IN.AsFloat;
            QBrowseCQTY_PAKAI.AsFloat:=1000*QBrowsePEMAKAIAN.AsFloat;
            QBrowseCQTY_KOREKSI2.AsFloat:=1000*QBrowseKOREKSI_OUT.AsFloat;
            QBrowseCQty_AKHIR.AsFloat:=1000*QBrowseAKHIR.AsFloat;

        end
        else
        begin
             QBrowseCQTY_AWAL.AsFloat:=QBrowseAWAL.AsFloat;
            QBrowseCQTY_BELI.AsFloat:=QBrowsePEMBELIAN.AsFloat;
            QBrowseCQTY_KOREKSI1.AsFloat:=QBrowseKOREKSI_IN.AsFloat;
            QBrowseCQTY_PAKAI.AsFloat:=QBrowsePEMAKAIAN.AsFloat;
            QBrowseCQTY_KOREKSI2.AsFloat:=QBrowseKOREKSI_OUT.AsFloat;
            QBrowseCQty_AKHIR.AsFloat:=QBrowseAKHIR.AsFloat;

        end;
      end;
  2 : begin
        if QBrowseSATUAN.AsString='GRAM' then
        begin
        QBrowseCQTY_AWAL.AsFloat:=QBrowseAWAL.AsFloat/1000;
            QBrowseCQTY_BELI.AsFloat:=QBrowsePEMBELIAN.AsFloat/1000;
            QBrowseCQTY_KOREKSI1.AsFloat:=QBrowseKOREKSI_IN.AsFloat/1000;
            QBrowseCQTY_PAKAI.AsFloat:=QBrowsePEMAKAIAN.AsFloat/1000;
            QBrowseCQTY_KOREKSI2.AsFloat:=QBrowseKOREKSI_OUT.AsFloat/1000;
            QBrowseCQty_AKHIR.AsFloat:=QBrowseAKHIR.AsFloat/1000;


        end
        else
        if QBrowseSATUAN.AsString='KG' then
        begin
             QBrowseCQTY_AWAL.AsFloat:=QBrowseAWAL.AsFloat;
            QBrowseCQTY_BELI.AsFloat:=QBrowsePEMBELIAN.AsFloat;
            QBrowseCQTY_KOREKSI1.AsFloat:=QBrowseKOREKSI_IN.AsFloat;
            QBrowseCQTY_PAKAI.AsFloat:=QBrowsePEMAKAIAN.AsFloat;
            QBrowseCQTY_KOREKSI2.AsFloat:=QBrowseKOREKSI_OUT.AsFloat;
            QBrowseCQty_AKHIR.AsFloat:=QBrowseAKHIR.AsFloat;
        end
        else
        begin
          QBrowseCQTY_AWAL.AsFloat:=QBrowseAWAL.AsFloat;
            QBrowseCQTY_BELI.AsFloat:=QBrowsePEMBELIAN.AsFloat;
            QBrowseCQTY_KOREKSI1.AsFloat:=QBrowseKOREKSI_IN.AsFloat;
            QBrowseCQTY_PAKAI.AsFloat:=QBrowsePEMAKAIAN.AsFloat;
            QBrowseCQTY_KOREKSI2.AsFloat:=QBrowseKOREKSI_OUT.AsFloat;
            QBrowseCQty_AKHIR.AsFloat:=QBrowseAKHIR.AsFloat;
        end;
      end;
  3 : begin
        if QBrowseSATUAN.AsString='GRAM' then
        begin
            QBrowseCQTY_AWAL.AsFloat:=QBrowseAWAL.AsFloat/1000000;
            QBrowseCQTY_BELI.AsFloat:=QBrowsePEMBELIAN.AsFloat/1000000;
            QBrowseCQTY_KOREKSI1.AsFloat:=QBrowseKOREKSI_IN.AsFloat/1000000;
            QBrowseCQTY_PAKAI.AsFloat:=QBrowsePEMAKAIAN.AsFloat/1000000;
            QBrowseCQTY_KOREKSI2.AsFloat:=QBrowseKOREKSI_OUT.AsFloat/1000000;
            QBrowseCQty_AKHIR.AsFloat:=QBrowseAKHIR.AsFloat/1000000;
        end
        else
        if QBrowseSATUAN.AsString='KG' then
        begin
        QBrowseCQTY_AWAL.AsFloat:=QBrowseAWAL.AsFloat/1000;
            QBrowseCQTY_BELI.AsFloat:=QBrowsePEMBELIAN.AsFloat/1000;
            QBrowseCQTY_KOREKSI1.AsFloat:=QBrowseKOREKSI_IN.AsFloat/1000;
            QBrowseCQTY_PAKAI.AsFloat:=QBrowsePEMAKAIAN.AsFloat/1000;
            QBrowseCQTY_KOREKSI2.AsFloat:=QBrowseKOREKSI_OUT.AsFloat/1000;
            QBrowseCQty_AKHIR.AsFloat:=QBrowseAKHIR.AsFloat/1000;
        end
        else
        begin
          QBrowseCQTY_AWAL.AsFloat:=QBrowseAWAL.AsFloat;
            QBrowseCQTY_BELI.AsFloat:=QBrowsePEMBELIAN.AsFloat;
            QBrowseCQTY_KOREKSI1.AsFloat:=QBrowseKOREKSI_IN.AsFloat;
            QBrowseCQTY_PAKAI.AsFloat:=QBrowsePEMAKAIAN.AsFloat;
            QBrowseCQTY_KOREKSI2.AsFloat:=QBrowseKOREKSI_OUT.AsFloat;
            QBrowseCQty_AKHIR.AsFloat:=QBrowseAKHIR.AsFloat;
        end;
      end;
    //BALE
       4 : begin
        if QBrowseSATUAN.AsString='GRAM' then
        begin
            QBrowseCQTY_AWAL.AsFloat:=QBrowseAWAL.AsFloat/181440;
            QBrowseCQTY_BELI.AsFloat:=QBrowsePEMBELIAN.AsFloat/181440;
            QBrowseCQTY_KOREKSI1.AsFloat:=QBrowseKOREKSI_IN.AsFloat/181440;
            QBrowseCQTY_PAKAI.AsFloat:=QBrowsePEMAKAIAN.AsFloat/181440;
            QBrowseCQTY_KOREKSI2.AsFloat:=QBrowseKOREKSI_OUT.AsFloat/181440;
            QBrowseCQty_AKHIR.AsFloat:=QBrowseAKHIR.AsFloat/181440;
        end
        else
        if QBrowseSATUAN.AsString='KG' then
        begin
         QBrowseCQTY_AWAL.AsFloat:=QBrowseAWAL.AsFloat/181.44;
            QBrowseCQTY_BELI.AsFloat:=QBrowsePEMBELIAN.AsFloat/181.44;
            QBrowseCQTY_KOREKSI1.AsFloat:=QBrowseKOREKSI_IN.AsFloat/181.44;
            QBrowseCQTY_PAKAI.AsFloat:=QBrowsePEMAKAIAN.AsFloat/0181.44;
            QBrowseCQTY_KOREKSI2.AsFloat:=QBrowseKOREKSI_OUT.AsFloat/0181.44;
            QBrowseCQty_AKHIR.AsFloat:=QBrowseAKHIR.AsFloat/181.44;
        end
        else
         if QBrowseSATUAN.AsString='TON' then
        begin
          QBrowseCQTY_AWAL.AsFloat:=QBrowseAWAL.AsFloat/0.181440;
            QBrowseCQTY_BELI.AsFloat:=QBrowsePEMBELIAN.AsFloat/0.181440;
            QBrowseCQTY_KOREKSI1.AsFloat:=QBrowseKOREKSI_IN.AsFloat/0.181440;
            QBrowseCQTY_PAKAI.AsFloat:=QBrowsePEMAKAIAN.AsFloat/0.181440;
            QBrowseCQTY_KOREKSI2.AsFloat:=QBrowseKOREKSI_OUT.AsFloat/0.181440;
            QBrowseCQty_AKHIR.AsFloat:=QBrowseAKHIR.AsFloat/0.181440;
             end
        else
                begin
          QBrowseCQTY_AWAL.AsFloat:=QBrowseAWAL.AsFloat;
            QBrowseCQTY_BELI.AsFloat:=QBrowsePEMBELIAN.AsFloat;
            QBrowseCQTY_KOREKSI1.AsFloat:=QBrowseKOREKSI_IN.AsFloat;
            QBrowseCQTY_PAKAI.AsFloat:=QBrowsePEMAKAIAN.AsFloat;
            QBrowseCQTY_KOREKSI2.AsFloat:=QBrowseKOREKSI_OUT.AsFloat;
            QBrowseCQty_AKHIR.AsFloat:=QBrowseAKHIR.AsFloat;
        end;
      end;
     //BALE
  end;

  v1:=0; v2:=0;
  if QBrowseAWAL.AsFloat>0 then
    QBrowseAWAL_AVG.AsFloat:=QBrowseNILAI_AWAL.AsFloat/QBrowseAWAL.AsFloat;
  if QBrowseCQty_Beli.AsFloat<>0 then
    v1:=QBrowseNILAI_BELI.AsFloat;
  if QBrowseCQty_Koreksi1.AsFloat<>0 then
    v2:=QBrowseNILAI_KOREKSI.AsFloat;
  QBrowseMASUK_NILAI.AsFloat:=v1+v2;
  if (QBrowsePEMBELIAN.AsFloat+QBrowseKOREKSI_IN.AsFloat)>0 then
    QBrowseMASUK_AVG.AsFloat:=(QBrowseNILAI_BELI.AsFloat+QBrowseNILAI_KOREKSI.AsFloat)/(QBrowsePEMBELIAN.AsFloat+QBrowseKOREKSI_IN.AsFloat);
  IF (QBrowseAWAL.AsFloat+QBrowsePEMBELIAN.AsFloat+QBrowseKOREKSI_IN.AsFloat)>0 THEN
    QBrowseHRG_AVG.AsFloat:=(QBrowseMASUK_NILAI.AsFloat+QBrowseNILAI_AWAL.AsFloat)/
      (QBrowseAWAL.AsFloat+QBrowsePEMBELIAN.AsFloat+QBrowseKOREKSI_IN.AsFloat);
  QBrowseKELUAR_NILAI.AsFloat:=QBrowseHRG_AVG.AsFloat*(QBrowsePEMAKAIAN.AsFloat+QBrowseKOREKSI_OUT.AsFloat);
  QBrowseNILAI_AKHIR.AsFloat:=QBrowseNILAI_AWAL.AsFloat+QBrowseMASUK_NILAI.AsFloat-
    QBrowseKELUAR_NILAI.AsFloat;

end;

procedure TNilaiKartuStokNBBFrm.BitBtn3Click(Sender: TObject);
var
  i : integer;
begin
  i:=0;
  LMDProgress1.Max:=QBrowse.RecordCount;
  BitBtn3.Caption:=IntToStr(QBrowse.RecordCount)+' Records';
  LMDProgress1.Position:=i;
  QBrowse.DisableControls;
  QBrowse.First;
  while not QBrowse.Eof do
  begin
    inc(i);
    LMDProgress1.Position:=i;
    QUpdate.Close;
    QUpdate.SetVariable('myparam','n'+FormatDateTime('mm',VTglAwal.Date));
    QUpdate.SetVariable('myparam2','b'+FormatDateTime('mm',VTglAwal.Date));
    QUpdate.SetVariable('myparam3','M'+FormatDateTime('mm',VTglAwal.Date));
    QUpdate.SetVariable('myparam4','A'+FormatDateTime('mm',VTglAwal.Date));
    QUpdate.SetVariable('pkd_item',QBrowseKD_ITEM.AsString);
    QUpdate.SetVariable('pnilai',QBrowseNILAI_AKHIR.AsFloat);
    QUpdate.SetVariable('pqty',QBrowseAKHIR.AsFloat);
    QUpdate.SetVariable('pnilai2',QBrowseKELUAR_NILAI.AsFloat);
    QUpdate.SetVariable('pqty2',QBrowsePEMAKAIAN.AsFloat+QBrowseKOREKSI_OUT.AsFloat);
    QUpdate.SetVariable('ptahun',StrToInt(FormatDateTime('yyyy',VTglAwal.Date)));
    QUpdate.Execute;
    QBrowse.Next;
  end;
  QBrowse.First;
  QTutupTahun.Close;
  QTutupTahun.SetVariable('ptgl',vTglAkhir.Date);
  QTutupTahun.Execute;
  QBrowse.EnableControls;
  BitBtn3.Caption:='Tutup Stok';
end;

procedure TNilaiKartuStokNBBFrm.BitBtn4Click(Sender: TObject);
begin
  try
  QUpdateMutasi.Close;
  QUpdateMutasi.SetVariable('pbulan',VTglAkhir.Date);
  QUpdateMutasi.SetVariable('pjns_item',vkd_jns_item);
  QUpdateMutasi.Execute;
  ShowMessage('Sukses !');
  Except
    ShowMessage('Gagal !');
  end;
end;

procedure TNilaiKartuStokNBBFrm.BitBtn6Click(Sender: TObject);
begin
  QTutupTransaksi.SetVariable('pjns_item',vkd_jns_item);
  QTutupTransaksi.Open;
  if QTutupTransaksi.State<>dsBrowse then
  begin
    QTutupTransaksi.Post;
  end;

end;

procedure TNilaiKartuStokNBBFrm.Label7Click(Sender: TObject);
begin
  QTutupTransaksi.Close;
  QTutupTransaksi.SetVariable('pjns_item',vkd_jns_item);
  QTutupTransaksi.Open;
end;

procedure TNilaiKartuStokNBBFrm.QNilaiAwalBeforeOpen(DataSet: TDataSet);
begin
  QNilaiAwal.SetVariable('pkd_jns_item',vkd_jns_item);
end;

procedure TNilaiKartuStokNBBFrm.QNilaiMasukBeforeOpen(DataSet: TDataSet);
begin
  QNilaiMasuk.SetVariable('pkd_jns_item',vkd_jns_item);
end;

procedure TNilaiKartuStokNBBFrm.wwDBGrid2DblClick(Sender: TObject);
var
  myrvdDialog : TwwRecordViewDialog;
begin
  myrvdDialog:=TwwRecordViewDialog.Create(Nil);
  myrvdDialog.NavigatorButtons:=[nbsPrior, nbsNext];
  myrvdDialog.EditFrame.Enabled:=True;
  myrvdDialog.EditFrame.NonFocusColor:=clYellow;
  myrvdDialog.Style:=rvsHorizontal;
  myrvdDialog.BorderStyle:=bsDialog;
  myrvdDialog.OKCancelOptions:=[rvokAutoCancelRec];
  myrvdDialog.Options:=[rvoUseCustomControls,rvoShortenEditBox,rvoModalForm,rvoCloseIsCancel,rvoMaximizeMemoWidth,rvoUseDateTimePicker];
  myrvdDialog.DataSource:=(Sender as TwwDBGrid).DataSource;
  myrvdDialog.Selected:=(Sender as TwwDBGrid).Selected;
  myrvdDialog.Execute;


end;

procedure TNilaiKartuStokNBBFrm.wwDBGrid2UpdateFooter(Sender: TObject);
begin
  QTotal.Close;
  QTotal.SetVariable('kd_item',Qriwayattransaksikd_item.AsString);
 // QTotal.SetVariable('no_reg_stok_gd',Qbrowsekd.AsInteger);
  QTotal.Open;
  wwDBGrid2.ColumnByName('HARGA').FooterValue:=FormatFloat('#,##0.##;(#,##0.##)',QTotalHARGA_PO.AsFloat);
 wwDBGrid2.ColumnByName('HARGA2').FooterValue:=FormatFloat('#,##0.##;(#,##0.##)',QTotalHARGA_NOTA.AsFloat);
 Qtotal.Refresh;
end;

procedure TNilaiKartuStokNBBFrm.QRiwayatTransaksiCalcFields(
  DataSet: TDataSet);
begin
  QRiwayatTransaksiHARGA_AVG.AsFloat:=QBrowseHRG_AVG.AsFloat;
end;

procedure TNilaiKartuStokNBBFrm.QTutupTransaksiBeforeOpen(
  DataSet: TDataSet);
begin
  QTutupTransaksi.SetVariable('pjns_item',vkd_jns_item);
end;

end.
                                                                                                                                                  &8d.Lr"4L<àÌ@8***dZÑBUEN(&àÆ4Aî

:.6 
4
2
"4LFj

<dL22**jäï<:::>e,|(,x8vR,4RJBÑ*∏ ë› íd  "’ì9  ›   › "› $› &› (›
 *› ,› .› 0› 2› 4› 6› 8› :› <› >›  @›" B›$ D›& F›( H›* J›, L›. N›0 P›2 R›4 T›6 V›8 X›: Z›< \›> ^›@ `›B b›D d›F f›H h›J j›L l›N n›P p›R r›T t›V v›X x›Z z›\ |›^ ~›` Ä›b Ç›d Ñ›f Ü›h à›j ä›l å›n é›p ê›r í›t î›v ñ›x ò›z ö›| ú›~ û›Ä †›Ç ¢›Ñ §›Ü ¶›à ®›ä ™›å ¨›é Æ›ê ∞›í ≤›î ¥›ñ ∂›ò ∏›ö ∫›ú º›û æ›† ¿›¢ ¬›§ ƒ›¶ ∆›® »›™  ›¨ Ã›Æ Œ›∞ –›≤ “›¥ ‘›∂ ÷›∏ ÿ›∫ ⁄›º ‹›æ ﬁ›¿ ‡›¬ ‚›ƒ ‰›∆ Ê›» Ë›  Í›Ã Ï›Œ Ó›– ›“ Ú›‘ Ù›÷ ˆ›ÿ ¯›⁄ ˙›‹ ¸›ﬁ ˛›‡ ›‚ ›‰ 	›Ê ›Ë ›Í ›Ï ›Ó › !›Ú %›Ù )›ˆ -›¯ 1›˙ 5›¸ 9›˛ =› A› E›	 I› M› Q› U› Y› ]›! a›% e›) i›- m›1 q›5 u›9 y›= }›A Å›E Ö›I â›M ç ïë·›Q ë ôï˝›U ï! ùôÅ›Y ô- °ù’›] ù9 ©°9›a °I ≠©e›e ©U ±≠y›i ≠a µ±ç›m ±m πµ°›q µy Ωπµ›u πÖ ¡ΩÂ›y Ωë ≈¡›} ¡ù …≈!›Å ≈© Õ…5›Ö …µ —ÕM›â Õ¡ Ÿ—y›ç —’ ›Ÿù›ë Ÿ· ·›·›ï ›Ì Â·ı›ô ·˘ ÈÂ›ù Â ÌÈ1›° È ÒÌI›• Ì ıÒi›© Ò) ˘ı}›≠ ı5 ˝˘ë›± ˘A ˝Ω›µ ˝›π 	›Ω 	›¡ 	›≈ 	›… 	›Õ ·  %Ò -Mı  M˘  M˝  M  U	  ¢  ›  ·  ÉÉ  ˝%  )  Å1   5  ’=  °A  5E  9M  ·˛Q  eY  #+]  ye  —i  çq  u  °}  Å  µâ  É∫ç  Âï   ô  °  d•  !≠  Ò±  5π  ÉcΩ  M≈  C+…  uÕ  u—  yŸ  #/›  ùÂ  —vÈ  ·Ò  9 ı  ı˝  +õ  	  ãj  1