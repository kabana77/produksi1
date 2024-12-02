'0.0,0;(0.0,0);-',QTotalKG.AsFloat); }
  QTotal2.Close;
  QTotal2.SetVariable('ibukti',QMaster2IBUKTI.AsInteger);
  QTotal2.Open;
  wwDBGrid1.ColumnByName('QTY3').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QTotal2GULUNG_IN.AsFloat);
  wwDBGrid1.ColumnByName('QTY4').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QTotal2MTR_IN.AsFloat);
end;

procedure TKoreksiKeluarJDFrm.QMaster2AfterPost(DataSet: TDataSet);
begin
  PageControl1.Pages[1].TabVisible:=QMaster2.IsEmpty or (QMaster2ISPOST.AsString='1');
  PageControl1.Pages[2].TabVisible:=QMaster2.IsEmpty or (QMaster2ISPOST.AsString='1');
end;

procedure TKoreksiKeluarJDFrm.QMaster2BeforeDelete(DataSet: TDataSet);
begin
  if QMaster2ISPOST.AsString='1' then
  begin
     ShowMessage('Maaf, sudah di-POST !, tidak bisa diubah...');
     Abort;
  end;
end;

procedure TKoreksiKeluarJDFrm.QMaster2BeforeEdit(DataSet: TDataSet);
begin
  if QMaster2ISPOST.AsString='1' then
  begin
     ShowMessage('Maaf, sudah di-POST !, tidak bisa diubah...');
     Abort;
  end;
end;

procedure TKoreksiKeluarJDFrm.QMaster2BeforeInsert(DataSet: TDataSet);
begin
  if DataSet['ISPOST']='0' then
  begin
    if MessageDlg('Data belum di-POSTING, batalkan ?', mtWarning, [mbYes, mbNo],0)=mrYes then
      DataSet.Delete
      else
        Abort;
  end;

end;

procedure TKoreksiKeluarJDFrm.QMaster2BeforePost(DataSet: TDataSet);
begin
  vshift:=QMaster2SHIFT.AsString;
  vgrup:=QMaster2GRUP.AsString;
  if QMaster2TGL.AsString='' then
     begin
        ShowMessage('TANGGAL harus diisi !');
        Abort;
     end
     else
  if QMaster2KD_DIV.AsString='' then
     begin
        ShowMessage('DIVISI harus diisi !');
        Abort;
     end
     else
  if QMaster2SHIFT.AsString='' then
     begin
        ShowMessage('SHIFT harus diisi !');
        Abort;
     end
     else
  if QMaster2GRUP.AsString='' then
     begin
        ShowMessage('GRUP harus diisi !');
        Abort;
     end
     else
  if QMaster2STATUS.AsString='' then
     begin
        ShowMessage('Jenis Koreksi harus diisi !');
        Abort;
     end;

   if (Dataset.State=dsEdit) and (QMaster2NO_NOTA.AsString='') and (QMaster2ISPOST.AsString='1') then
   begin
     DMFrm.FNoUrut2.Close;
     DMFrm.FNoUrut2.SetVariable(0,vkode);
     DMFrm.FNoUrut2.SetVariable(1,'-');
     DMFrm.FNoUrut2.SetVariable(2,Trunc(QMaster2TGL.AsDateTime));
     DMFrm.FNoUrut2.Open;
     QMaster2NO_NOTA.AsString:=DMFrm.FNoUrut2FNO_URUT2.AsString;
   end;

end;

procedure TKoreksiKeluarJDFrm.QMaster2NewRecord(DataSet: TDataSet);
begin
  if vshift<>'' then QMaster2SHIFT.AsString:=vshift;
  if vgrup<>'' then QMaster2GRUP.AsString:=vgrup;
  QMaster2KD_TRANSAKSI.AsString:=vkode;
  QMaster2TGL.AsDateTime:=DMFrm.QTimeJAM.AsDateTime;
  QMaster2ISPOST.AsString:='0';
  QMaster2TTD1.AsString:=QTransaksiTTD1.AsString;
  QMaster2TTD2.AsString:=QTransaksiTTD2.AsString;
  QMaster2TTD3.AsString:=QTransaksiTTD3.AsString;
  QMaster2TTD4.AsString:=QTransaksiTTD4.AsString;
//  QMaster2STATUS.AsString:='OUT';
//  QMaster2NO_RESEP.AsString:='KOREKSI1';
  QKonstruksi.Close;
//  QItem.Close;
//  QMaster2QTY_RESEP.AsFloat:=0;
  wwDBEdit1.SetFocus;
end;

procedure TKoreksiKeluarJDFrm.QDetail2BeforeDelete(DataSet: TDataSet);
begin
  if QMaster2ISPOST.AsString='1' then
  begin
     ShowMessage('Maaf, sudah di-POST !, tidak bisa diubah...');
     Abort;
  end;
end;

procedure TKoreksiKeluarJDFrm.QDetail2BeforeEdit(DataSet: TDataSet);
begin
  if QMaster2ISPOST.AsString='1' then
  begin
     ShowMessage('Maaf, sudah di-POST !, tidak bisa diubah...');
     Abort;
  end;
end;

//end;

procedure TKoreksiKeluarJDFrm.QDetail2BeforeInsert(DataSet: TDataSet);
begin
  if QMaster2ISPOST.AsString='1' then
  begin
     ShowMessage('Maaf, sudah di-POST !, tidak bisa diubah...');
     Abort;
  end;
end;

//end;

procedure TKoreksiKeluarJDFrm.QDetail2BeforePost(DataSet: TDataSet);
begin
  if QDetail2KD_KONSTRUKSI.AsString='' then
     begin
        ShowMessage('KONSTRUKSI harus diisi !');
        Abort;
     end
     else
  if QDetail2SATUAN.AsString='' then
     begin
        ShowMessage('SATUAN harus diisi !');
        Abort;
     end
end;

procedure TKoreksiKeluarJDFrm.QDetail2CalcFields(DataSet: TDataSet);
begin
{  QDetail2SELISIH.AsFloat:=QDetail2QTY1.AsFloat-
    QDetail2QTY2.AsFloat; }
end;

procedure TKoreksiKeluarJDFrm.QDetail2NewRecord(DataSet: TDataSet);
begin
  QDetail2QTY9.AsFloat:=0;
  QDetail2QTY10.AsFloat:=0;
  QDetail2IBUKTI.AsInteger:=QMaster2IBUKTI.AsInteger;
end;

procedure TKoreksiKeluarJDFrm.QBrowse2AfterScroll(DataSet: TDataSet);
begin
  LabelBanner.Caption:='Record ke '+IntToStr(QBrowse2.RecNo)+' dari '+FormatFloat('#,#',QBrowse2.RecordCount)+' Records';
end;

procedure TKoreksiKeluarJDFrm.LookWrnaCloseUp(Sender: TObject;
  LookupTable, FillTable: TDataSet; modified: Boolean);
begin
  if modified then
  begin
    QDetail2NAMA_KONSTRUKSI.AsString:=QKonstruksiNAMA_KONSTRUKSI.AsString;
  end;
end;

procedure TKoreksiKeluarJDFrm.wwDBGrid2UpdateFooter(Sender: TObject);
begin
{
  QTotal.Close;
  QTotal.S