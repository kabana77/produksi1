 for i:=0 to wwDBGrid1.FieldCount-1 do
    if UpperCase(wwDBGrid1.Columns[i].FieldName)<>'TANGGAL' then
      dbcField.Items.Add(wwDBGrid1.Columns[i].FieldName);
end;

procedure TNotaLainFrm.Label3Click(Sender: TObject);
begin
  DMFrm.QSisdur.Close;
  DMFrm.QSisdur.SetVariable('kd_transaksi',QJnsTransaksiKD_TRANSAKSI.AsString);
  DMFrm.QSisdur.Open;
  SisdurFrm:=TSisdurFrm.Create(Self);
  SisdurFrm.vread_only:=True;
  SisdurFrm.ShowModal;
  SisdurFrm.Free;
end;

procedure TNotaLainFrm.LookSuplierCloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
var
  vkota : string;
begin
  if modified then
  begin
    DBMemo2.Lines.Clear;
    if (DMFrm.QSuplierKOTA.AsString<>'') and (UpperCase(DMFrm.QSuplierALAMAT.AsString)<>UpperCase(DMFrm.QSuplierKOTA.AsString)) then
    vkota:=UpperCase(DMFrm.QSuplierKOTA.AsString);
    DBMemo2.Lines.Insert(0,vkota);
    if (DMFrm.QSuplierALAMAT.AsString<>'') then
       DBMemo2.Lines.Insert(0,DMFrm.QSuplierALAMAT.AsString);
    DBMemo2.Lines.Insert(0,DMFrm.QSuplierNAMA_REKANAN.AsString);
    QTransaksiREKANAN.AsString:=DBMemo2.Text;
  end;

end;

procedure TNotaLainFrm.LookSuplierEnter(Sender: TObject);
begin
  DMFrm.QSuplier.Open;
end;

procedure TNotaLainFrm.LookSuplierUserButton1Click(Sender: TObject;
  LookupTable: TDataSet);
begin
  DMFrm.QSuplier.Close;
  DMFrm.QSuplier.Open
end;

procedure TNotaLainFrm.LookMUCloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin
  if modified then
    if QTransaksiMU.AsString<>'IDR' then
      begin
        DMFrm.FKursBerjalan.Close;
        DMFrm.FKursBerjalan.SetVariable('mu',QTransaksiMU.AsString);
        DMFrm.FKursBerjalan.SetVariable('tanggal',QTransaksiTANGGAL.AsDateTime);
        DMFrm.FKursBerjalan.Open;
        QTransaksiKURS.AsFloat:=DMFrm.FKursBerjalanKURS.AsFloat;
      end;

end;

procedure TNotaLainFrm.LookMUEnter(Sender: TObject);
begin
  DMFrm.QMU.Open;
end;

procedure TNotaLainFrm.QDetailBeforePost(DataSet: TDataSet);
begin
  QDetailNO_NOTA.AsString:=QTransaksiKD_TRANSAKSI.AsString+'-'+FormatDateTime('yymm',QTransaksiTANGGAL.AsDateTime)+'-'+FormatFloat('000000',QDetailNO_REG_HUTANG.AsFloat);
  QDetailTANGGAL.AsDateTime:=QDetailTGL_JTH_TEMPO.AsDateTime;
  QDetailTGL_JADWAL_BAYAR.AsDateTime:=QDetailTGL_JTH_TEMPO.AsDateTime;
  QDetailISPOST.AsString:='1';
end;

procedure TNotaLainFrm.LookPerkiraanHPEnter(Sender: TObject);
begin
  (Sender as TwwDBLookupCombo).LookupTable.Open;
end;

procedure TNotaLainFrm.LookPerkiraanEnter(Sender: TObject);
begin
    DMFrm.QPerkiraan.Open;
end;

procedure TNotaLainFrm.wwDBGrid2UpdateFooter(Sender: TObject);
begin
  QTotal.Close;
  QTotal.SetVariable('no_reg_ht',QTransaksiNO_REG_HT.AsInteger);
  QTotal.Open;
  wwDBGrid2.ColumnByName('NILAI').FooterValue:=FormatFloat('#,##0.##;(#,##0.##)',QTotalTOTAL.AsFloat);
end;

procedure TNotaLainFrm.QBrowseCalcFields(DataSet: TDataSet);
begin
  QBrowseSISA.AsFloat:=QBrowseNILAI.AsFloat-
    QBrowseDIBAYAR.AsFloat;
end;

end.
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               PN.Enabled:=True;
     QRLTOTAL.Enabled:=True;
     QRLDPP2.Enabled:=True;
     QRLPPN2.Enabled:=True;
     QRLTOTAL2.Enabled:=True;
     QRShape3.Enabled:=True;
     QRShape4.Enabled:=True;
     QRShape5.Enabled:=True;
     QRBand1.Height:=104;
     QRLDPP.Caption:=FormatFloat('#,##0.##;(#,##0.##)',vdpp);
     QRLPPN.Caption:=FormatFloat('#,##0.##;(#,##0.##)',vppn);
  //   QRLTOTAL.Caption:=FormatFloat('#,##0.##;(#,##0.##)',vtotal);
      QRlain.Caption:=FormatFloat('#,##0.##;(#,##0.##)',vlain)INDX( 	 \5[N            (   8   �       p     �B  �                      �E     �52�Q4� ��>��14�Q4��52�Q4� �     ��             C l p T e r i m a H P L n . ~ d f m                �E     �52�Q4� ��>��14�Q4��52�Q4� �     ��             C l p T e r i m a H P L n . ~ d f m                �E     �52�Q4� ��>��14�Q4��52�Q4� �     ��             C l p T e r i m a H P L n . ~ d f m                �E     ?�7�Q4� �'�>���8�Q4�?�7�Q4� �      �              C l  T e r i m a H P L n . ~ p a s                �E     ?�7�Q4� �'�>���8�Q4�?�7�Q4� �      �              C l p T e r i m a H P L n . ~ p a s                �E     ��#�Q4� ��>���%�Q4���#�Q4� �     ��             C L P T E R ~ 1 . D F M                     p Z     �E     ��#�Q4� ��>���%�Q4���#�Q4� �     ��             C L P T E R ~ 1 . D F M                     �E     ��#�Q4� ��>���%�Q4���#�Q4� �     ��             C L P T E R ~ 1 . D F M                    �E     ��#�Q4� ��>���%�Q4���#�Q4� �     ��             C L P T E R ~ 