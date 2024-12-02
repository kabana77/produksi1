wDBSpinEdit5.Value);
end;

procedure THakMenuFrm.TabSheet1Show(Sender: TObject);
begin
  QTipeMenu.DisableControls;
  QTipeMenu.Close;
  QTipeMenu.SQL.Text:='select a.tipe, a.keterangan from '+cUserTabel+'menu_tipe a';
  QTipeMenu.Open;
  QTipeMenu.EnableControls;

  QMaster.Close;
  QMaster.DeclareVariable('vuser',otString);
  QMaster.SQL.Text:='select a.*, a.rowid from '+cUserTabel+'vuser a'+
    ' where a.vuser=:vuser';
  if QBrowse.Active then QMaster.SetVariable('vuser',QBrowse.FieldByName('VUSER').AsString);
  QMaster.Open;
  QMenu.DisableControls;
  QMenu.Close;
  QMenu.DeclareVariable('tipe',otString);
  QMenu.SQL.Text:='select a.* from '+cUserTabel+'menu_tipe_detail a'+
    ' where a.tipe=:tipe';
  QMenu.SetVariable('tipe',QMasterTIPE.AsString);
  QMenu.Open;
  QMenu.EnableControls;
  QDetail.Close;
  QDetail.Master:=QMaster;
  QDetail.DeclareVariable('vuser',otString);
  QDetail.SequenceField.Sequence:=cUserTabel+'no_register';
  QDetail.SequenceField.Field:='IVUSER_MENU';
  QDetail.MasterFields:='VUSER';
  QDetail.SQL.Text:='select a.*, a.rowid from '+cUserTabel+'vuser_menu a'+
    ' where a.vuser=:vuser order by a.imenu';
  QDetail.Open;
end;

procedure THakMenuFrm.QDetailNewRecord(DataSet: TDataSet);
begin
  QDetailVUSER.AsString:=QMasterVUSER.AsString;
end;

procedure THakMenuFrm.BtnAmbilDataClick(Sender: TObject);
begin
  if QMaster.State<>dsBrowse then
  try
    QMaster.Post;
  except
    ShowMessage('Maaf, ada m