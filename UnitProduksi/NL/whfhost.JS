vDataSize', vDataSize);
  FIniFile.WriteString(Name, 'vTitleFont', vTitleFont);
  FIniFile.WriteString(Name, 'vTitleStyle', vTitleStyle);
  FIniFile.WriteInteger(Name, 'vTitleSize', vTitleSize);
  FIniFile.Free;
  Action:=caFree;
  DaftarOperatorFrm:=Nil;
end;

procedure TDaftarOperatorFrm.FormCreate(Sender: TObject);
var
  i : Integer;
begin
  Panel1.Font:=DMFrm.vFormFont;
  Panel1.Color:=DMFrm.vFormColor;
  FIniFile := TRegIniFile.Create(DMFrm.vAppGridColor);
  if not DMFrm.MyRegister1.FindKey(DMFrm.vAppGridColor+'\'+Name) then
      begin
        FIniFile.WriteInteger(Name, 'cClData', DMFrm.cClData);
        FIniFile.WriteInteger(Name, 'cClDataBG', DMFrm.cClDataBG);
        FIniFile.WriteInteger(Name, 'cClDataRO', DMFrm.cClDataRO);
        FIniFile.WriteInteger(Name, 'cClDataROBG', DMFrm.cClDataROBG);
        FIniFile.WriteInteger(Name, 'cClTitle', DMFrm.cClTitle);
        FIniFile.WriteInteger(Name, 'cClTitleBG', DMFrm.cClTitleBG);
        FIniFile.WriteString(Name, 'vDataFont', DMFrm.vDataFont);
        FIniFile.WriteString(Name, 'vDataStyle', DMFrm.vDataStyle);
        FIniFile.WriteInteger(Name, 'vDataSize', DMFrm.vDataSize);
        FIniFile.WriteString(Name, 'vTitleFont', DMFrm.vTitleFont);
        FIniFile.WriteString(Name, 'vTitleStyle', DMFrm.vTitleStyle);
        FIniFile.WriteInteger(Name, 'vTitleSize', DMFrm.vTitleSize);
      end;
  cClData:=FIniFile.ReadInteger(Name, 'cClData', DMFrm.cClData);
  cClDataBG:=FIniFile.ReadInteger(Name, 'cClDataBG', DMFrm.cClDataBG);
  cClDataRO:=FIniFile.ReadInteger(Name, 'cClDataRO', DMFrm.cClDataRO);
  cClDataROBG:=FIniFile.ReadInteger(Name, 'cClDataROBG', DMFrm.cClDataROBG);
  cClTitle:=FIniFile.ReadInteger(Name, 'cClTitle', DMFrm.cClTitle);
  cClTitleBG:=FIniFile.ReadInteger(Name, 'cClTitleBG', DMFrm.cClTitleBG);
  vDataFont:=FIniFile.ReadString(Name, 'vDataFont', DMFrm.vDataFont);
  vDataStyle:=FIniFile.ReadString(Name, 'vDataStyle', DMFrm.vDataStyle);
  vDataSize:=FIniFile.ReadInteger(Name, 'vDataSize', DMFrm.vDataSize);
  vTitleFont:=FIniFile.ReadString(Name, 'vTitleFont', DMFrm.vTitleFont);
  vTitleStyle:=FIniFile.ReadString(Name, 'vTitleStyle', DMFrm.vTitleStyle);
  vTitleSize:=FIniFile.ReadInteger(Name, 'vTitleSize', DMFrm.vTitleSize);
  for i:=0 to ComponentCount-1 do
  begin
    if (Components[i] is TwwDBGrid) then
    begin
      (Components[i] as TwwDBGrid).IniAttributes.Enabled:=False;
      (Components[i] as TwwDBGrid).IniAttributes.FileName:=DMFrm.vAppGrid;
      (Components[i] as TwwDBGrid).TitleColor:=cClTitleBG;
      (Components[i] as TwwDBGrid).TitleFont.Color:=cClTitle;
      (Components[i] as TwwDBGrid).TitleFont.Size:=vTitleSize;
      (Components[i] as TwwDBGrid).TitleFont.Name:=vTitleFont;
      (Components[i] as TwwDBGrid).Font.Size:=vDataSize;
      (Components[i] as TwwDBGrid).Font.Name:=vDataFont;
      (Components[i] as TwwDBGrid).IniAttributes.Enabled:=True;
      if vTitleStyle='fsBold' then (Components[i] as TwwDBGrid).TitleFont.Style:=[fsBold]
      else
      if vTitleStyle='fsItalic' then (Components[i] as TwwDBGrid).TitleFont.Style:=[fsItalic]
      else
      if vTitleStyle='fsUnderline' then (Components[i] as TwwDBGrid).TitleFont.Style:=[fsUnderline]
      else
      if vTitleStyle='fsStrikeOut' then (Components[i] as TwwDBGrid).TitleFont.Style:=[fsStrikeOut]
      else
      if vTitleStyle='fsBold+fsItalic' then (Components[i] as TwwDBGrid).TitleFont.Style:=[fsBold,fsItalic]
      else
      if vTitleStyle='fsBold+fsUnderline' then (Components[i] as TwwDBGrid).TitleFont.Style:=[fsBold,fsUnderline]
      else
      if vTitleStyle='fsBold+fsStrikeOut' then (Components[i] as TwwDBGrid).TitleFont.Style:=[fsBold,fsStrikeOut]
      else
        (Components[i] as TwwDBGrid).TitleFont.Style:=[];

      if vDataStyle='fsBold' then (Components[i] as TwwDBGrid).Font.Style:=[fsBold]
      else
      if vDataStyle='fsItalic' then (Components[i] as TwwDBGrid).Font.Style:=[fsItalic]
      else
      if vDataStyle='fsUnderline' then (Components[i] as TwwDBGrid).Font.Style:=[fsUnderline]
      else
      if vDataStyle='fsStrikeOut' then (Components[i] as TwwDBGrid).Font.Style:=[fsStrikeOut]
      else
      if vDataStyle='fsBold+fsItalic' then (Components[i] as TwwDBGrid).Font.Style:=[fsBold,fsItalic]
      else
      if vDataStyle='fsBold+fsUnderline' then (Components[i] as TwwDBGrid).Font.Style:=[fsBold,fsUnderline]
      else
      if vDataStyle='fsBold+fsStrikeOut' then (Components[i] as TwwDBGrid).Font.Style:=[fsBold,fsStrikeOut]
      else
        (Components[i] as TwwDBGrid).Font.Style:=[];

    end;
  end;
end;

procedure TDaftarOperatorFrm.wwDBGrid1IButtonClick(Sender: TObject);
var
  i : Integer;
begin
  if MessageDlg('Reset Registry ? ',mtWarning,[mbOK, mbCancel],0)=mrOK then
  begin
    if DMFrm.MyRegister1.Reg.DeleteKey(DMFrm.vAppGrid+'\'+Name+((Sender as TwwIButton).Parent as TwwDBGrid).Name) then
    begin
        FIniFile.WriteInteger(Name, 'cClData', DMFrm.cClData);
        FIniFile.WriteInteger(Name, 'cClDataBG', DMFrm.cClDataBG);
        FIniFile.WriteInteger(Name, 'cClDataRO', DMFrm.cClDataRO);
        FIniFile.WriteInteger(Name, 'cClDataROBG', DMFrm.cClDataROBG);
        FIniFile.WriteInteger(Name, 'cClTitle', DMFrm.cClTitle);
        FIniFile.WriteInteger(Name, 'cClTitleBG', DMFrm.cClTitleBG);
        FIniFile.WriteString(Name, 'vDataFont', DMFrm.vDataFont);
        FIniFile.WriteString(Name, 'vDataStyle', DMFrm.vDataStyle);
        FIniFile.WriteInteger(Name, 'vDataSize', DMFrm.vDataSize);
        FIniFile.WriteString(Name, 'vTitleFont', DMFrm.vTitleFont);
        FIniFile.WriteString(Name, 'vTitleStyle', DMFrm.vTitleStyle);
        FIniFile.WriteInteger(Name, 'vTitleSize', DMFrm.vTitleSize);
        cClData:=FIniFile.ReadInteger(Name, 'cClData', DMFrm.cClData);
        cClDataBG:=FIniFile.ReadInteger(Name, 'cClDataBG', DMFrm.cClDataBG);
        cClDataRO:=FIniFile.ReadInteger(Name, 'cClDataRO', DMFrm.cClDataRO);
        cClDataROBG:=FIniFile.ReadInteger(Name, 'cClDataROBG', DMFrm.cClDataROBG);
        cClTitle:=FIniFile.ReadInteger(Name, 'cClTitle', DMFrm.cClTitle);
        cClTitleBG:=FIniFile.ReadInteger(Name, 'cClTitleBG', DMFrm.cClTitleBG);
        vDataFont:=FIniFile.ReadString(Name, 'vDataFont', DMFrm.vDataFont);
        vDataStyle:=FIniFile.ReadString(Name, 'vDataStyle', DMFrm.vDataStyle);
        vDataSize:=FIniFile.ReadInteger(Name, 'vDataSize', DMFrm.vDataSize);
        vTitleFont:=FIniFile.ReadString(Name, 'vTitleFont', DMFrm.vTitleFont);
        vTitleStyle:=FIniFile.ReadString(Name, 'vTitleStyle', DMFrm.vTitleStyle);
        vTitleSize:=FIniFile.ReadInteger(Name, 'vTitleSize', DMFrm.vTitleSize);
      ShowMessage('Reset Registry SUKSES !'+#13+'Form akan ditutup, silahkan dibuka lagi !');
      ((Sender as TwwIButton).Parent as TwwDBGrid).IniAttributes.Enabled:=False;
      Close;
    end;
  end
  else
  begin
    InitGridDlgFrm.Edit1.Color := cClDataBG;
    InitGridDlgFrm.Edit1.Font.Color := cClData;
    InitGridDlgFrm.Edit1.Font.Name:=vDataFont;
    InitGridDlgFrm.Edit1.Font.Size:=vDataSize;
    InitGridDlgFrm.Edit2.Color := cClDataROBG;
    InitGridDlgFrm.Edit2.Font.Color := cClDataRO;
    InitGridDlgFrm.Edit2.Font.Name:=vDataFont;
    InitGridDlgFrm.Edit2.Font.Size:=vDataSize;
    InitGridDlgFrm.Edit3.Color := cClTitleBG;
    InitGridDlgFrm.Edit3.Font.Color := cClTitle;
    InitGridDlgFrm.Edit3.Font.Name:=vTitleFont;
    InitGridDlgFrm.Edit3.Font.Size:=vTitleSize;

      if vTitleStyle='fsBold' then InitGridDlgFrm.Edit3.Font.Style:=[fsBold]
      else
      if vTitleStyle='fsItalic' then InitGridDlgFrm.Edit3.Font.Style:=[fsItalic]
      else
      if vTitleStyle='fsUnderline' then InitGridDlgFrm.Edit3.Font.Style:=[fsUnderline]
      else
      if vTitleStyle='fsStrikeOut' then InitGridDlgFrm.Edit3.Font.Style:=[fsStrikeOut]
      else
      if vTitleStyle='fsBold+fsItalic' then InitGridDlgFrm.Edit3.Font.Style:=[fsBold,fsItalic]
      else
      if vTitleStyle='fsBold+fsUnderline' then InitGridDlgFrm.Edit3.Font.Style:=[fsBold,fsUnderline]
      else
      if vTitleStyle='fsBold+fsStrikeOut' then InitGridDlgFrm.Edit3.Font.Style:=[fsBold,fsStrikeOut]
      else
        InitGridDlgFrm.Edit3.Font.Style:=[];

      if vDataStyle='fsBold' then InitGridDlgFrm.Edit1.Font.Style:=[fsBold]
      else
      if vDataStyle='fsItalic' then InitGridDlgFrm.Edit1.Font.Style:=[fsItalic]
      else
      if vDataStyle='fsUnderline' then InitGridDlgFrm.Edit1.Font.Style:=[fsUnderline]
      else
      if vDataStyle='fsStrikeOut' then InitGridDlgFrm.Edit1.Font.Style:=[fsStrikeOut]
      else
      if vDataStyle='fsBold+fsItalic' then InitGridDlgFrm.Edit1.Font.Style:=[fsBold,fsItalic]
      else
      if vDataStyle='fsBold+fsUnderline' then InitGridDlgFrm.Edit1.Font.Style:=[fsBold,fsUnderline]
      else
      if vDataStyle='fsBold+fsStrikeOut' then InitGridDlgFrm.Edit1.Font.Style:=[fsBold,fsStrikeOut]
      else
        InitGridDlgFrm.Edit1.Font.Style:=[];
    InitGridDlgFrm.Edit2.Font.Style:=InitGridDlgFrm.Edit1.Font.Style;
    InitGridDlgFrm.CheckListBox1.Clear;
    InitGridDlgFrm.CheckListBox2.Items:=((Sender as TwwIButton).Parent as TwwDBGrid).Selected;
    for i:=0 to ((Sender as TwwIButton).Parent as TwwDBGrid).GetColCount-2 do
    begin
      InitGridDlgFrm.CheckListBox1.Items.Add(((Sender as TwwIButton).Parent as TwwDBGrid).Columns[i].DisplayLabel);
      InitGridDlgFrm.CheckListBox1.Checked[i]:=True;
    end;
    InitGridDlgFrm.ShowModal;
    if InitGridDlgFrm.ModalResult=mrOK then
    begin
      cClDataBG:=InitGridDlgFrm.Edit1.Color;
      cClData:=InitGridDlgFrm.Edit1.Font.Color;
      cClDataROBG:=InitGridDlgFrm.Edit2.Color;
      cClDataRO:=InitGridDlgFrm.Edit2.Font.Color;
      cClTitleBG:=InitGridDlgFrm.Edit3.Color;
      cClTitle:=InitGridDlgFrm.Edit3.Font.Color;
        vDataFont:=InitGridDlgFrm.Edit1.Font.Name;
//        vDataStyle:=FIniFile.ReadString(Name, 'vDataStyle', DMFrm.vDataStyle);
        vDataSize:=InitGridDlgFrm.Edit1.Font.Size;
        vTitleFont:=InitGridDlgFrm.Edit3.Font.Name;
//        vTitleStyle:=FIniFile.ReadString(Name, 'vTitleStyle', DMFrm.vTitleStyle);
        vTitleSize:=InitGridDlgFrm.Edit3.Font.Size;

      if InitGridDlgFrm.Edit1.Font.Style=[fsBold] then vDataStyle:='fsBold'
      else
      if InitGridDlgFrm.Edit1.Font.Style=[fsItalic] then vDataStyle:='fsItalic'
      else
      if InitGridDlgFrm.Edit1.Font.Style=[fsUnderline] then vDataStyle:='fsUnderline'
      else
      if InitGridDlgFrm.Edit1.Font.Style=[fsStrikeOut] then vDataStyle:='fsStrikeOut'
      else
      if InitGridDlgFrm.Edit1.Font.Style=[fsBold,fsItalic] then vDataStyle:='fsBold+fsItalic'
      else
      if InitGridDlgFrm.Edit1.Font.Style=[fsBold,fsUnderline] then vDataStyle:='fsBold+fsUnderline'
      else
      if
        InitGridDlgFrm.Edit1.Font.Style=[fsBold,fsStrikeOut] then vDataStyle:='fsBold+fsStrikeOut'
      else
        vDataStyle:='fsReguler';

      if InitGridDlgFrm.Edit3.Font.Style=[fsBold] then vTitleStyle:='fsBold'
      else
      if InitGridDlgFrm.Edit3.Font.Style=[fsItalic] then vTitleStyle:='fsItalic'
      else
      if InitGridDlgFrm.Edit3.Font.Style=[fsUnderline] then vTitleStyle:='fsUnderline'
      else
      if InitGridDlgFrm.Edit3.Font.Style=[fsStrikeOut] then vTitleStyle:='fsStrikeOut'
      else
      if InitGridDlgFrm.Edit3.Font.Style=[fsBold,fsItalic] then vTitleStyle:='fsBold+fsItalic'
      else
      if InitGridDlgFrm.Edit3.Font.Style=[fsBold,fsUnderline] then vTitleStyle:='fsBold+fsUnderline'
      else
      if
        InitGridDlgFrm.Edit3.Font.Style=[fsBold,fsStrikeOut] then vTitleStyle:='fsBold+fsStrikeOut'
      else
        vTitleStyle:='fsRegular';

      ((Sender as TwwIButton).Parent as TwwDBGrid).TitleColor:=cClTitleBG;
      ((Sender as TwwIButton).Parent as TwwDBGrid).TitleFont.Color:=cClTitle;
      ((Sender as TwwIButton).Parent as TwwDBGrid).TitleFont.Name:=vTitleFont;
      ((Sender as TwwIButton).Parent as TwwDBGrid).TitleFont.Size:=vTitleSize;
      ((Sender as TwwIButton).Parent as TwwDBGrid).TitleFont.Style:=InitGridDlgFrm.Edit3.Font.Style;
      ((Sender as TwwIButton).Parent as TwwDBGrid).Font.Name:=vDataFont;
      ((Sender as TwwIButton).Parent as TwwDBGrid).Font.Size:=vDataSize;
      ((Sender as TwwIButton).Parent as TwwDBGrid).Font.Style:=InitGridDlgFrm.Edit1.Font.Style;
      for i:=InitGridDlgFrm.CheckListBox1.Items.Count-1 downto 0 do
        if not InitGridDlgFrm.CheckListBox1.Checked[i] then
          InitGridDlgFrm.CheckListBox2.Items.Delete(i);
      ((Sender as TwwIButton).Parent as TwwDBGrid).DataSource.DataSet.Close;
      ((Sender as TwwIButton).Parent as TwwDBGrid).Selected:=InitGridDlgFrm.CheckListBox2.Items;
      ((Sender as TwwIButton).Parent as TwwDBGrid).DataSource.DataSet.Open;

    end;
  end;
end;

procedure TDaftarOperatorFrm.wwDBGrid1CalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
  if not Highlight then
    if (Sender as TwwDBGrid).ColumnByName(Field.FieldName).ReadOnly then
    begin
      ABrush.Color:=cClDataROBG;
      AFont.Color:=cClDataRO;
    end
    else
    begin
      ABrush.Color:=cClDataBG;
      AFont.Color:=cClData;
    end;
end;

procedure TDaftarOperatorFrm.BitBtn5Click(Sender: TObject);
var
  i : Integer;
begin
  for i:=0 to ComponentCount-1 do
  begin
    if (Components[i] is TwwDBGrid) then
      if (Components[i] as TwwDBGrid).Parent=(((Sender as TBitBtn).Parent as TPanel).Parent as TPanel).Parent then
      begin
        DMFrm.wwLookupDialog1.LookupTable:=(Components[i] as TwwDBGrid).DataSource.DataSet;
        DMFrm.wwLookupDialog1.Selected:=(Components[i] as TwwDBGrid).Selected;
        DMFrm.wwLookupDialog1.MaxWidth:=600;
        if DMFrm.wwLookupDialog1.Execute then
          (Components[i] as TwwDBGrid).SetFocus;
      end;
  end;
end;

procedure TDaftarOperatorFrm.CheckBox1Click(Sender: TObject);
var
  i : Integer;
begin
  for i:=0 to ComponentCount-1 do
  begin
    if (Components[i] is TwwDBGrid) then
      if (Components[i] as TwwDBGrid).Parent=(((Sender as TCheckBox).Parent as TPanel).Parent as TPanel).Parent then
      begin
        if (Sender as TCheckBox).Checked then
        begin
          (Components[i] as TwwDBGrid).Options:=(Components[i] as TwwDBGrid).Options-[dgRowSelect];
          (Components[i] as TwwDBGrid).KeyOptions:=(Components[i] as TwwDBGrid).KeyOptions+[dgAllowDelete,dgAllowInsert];
        end
          else
          begin
            (Components[i] as TwwDBGrid).Options:=(Components[i] as TwwDBGrid).Options+[dgRowSelect];
            (Components[i] as TwwDBGrid).KeyOptions:=(Components[i] as TwwDBGrid).KeyOptions-[dgAllowDelete,dgAllowInsert];
          end;
      end;
  end;
end;


procedure TDaftarOperatorFrm.BitBtn2Click(Sender: TObject);
var
  i : Integer;
  vCaption : String;
begin
  vCaption:='DAFTAR '+UpperCase(strReplace(PageControl1.ActivePage.Caption,'&',''));
  for i:=0 to ComponentCount-1 do
  begin
    if (Components[i] is TwwDBGrid) then
      if (Components[i] as TwwDBGrid).Parent=((Sender as TBitBtn).Parent as TPanel).Parent then
      begin
      vCaption:=UpperCase(strReplace((((Sender as TBitBtn).Parent as TPanel).Parent as TTabsheet).Caption,'&',''));
       if (Components[i] as TwwDBGrid).DataSource.DataSet.Active then
            begin
               DMFrm.SaveDialog1.DefaultExt:='XLK';
               DMFrm.SaveDialog1.Filter:='Excel files (*.XLK)|*.XLK';
               DMFrm.SaveDialog1.FileName:=vCaption+' '+FormatDateTime('yymmdd',Date);
               (Components[i] as TwwDBGrid).ExportOptions.TitleName:=Caption;
                 if DMFrm.SaveDialog1.Execute then
                 begin
                   try
                   (Components[i] as TwwDBGrid).DataSource.DataSet.Last;
                   (Components[i] as TwwDBGrid).ExportOptions.FileName:=DMFrm.SaveDialog1.FileName;
                   (Components[i] as TwwDBGrid).ExportOptions.Save;
                   ShowMessage('Simpan Sukses !');
                   except
                   ShowMessage('Simpan Gagal !');
                   end;
                 end;
            end
            else
              ShowMessage('Tabel belum di-OPEN !');
      end;
  end;
end;

procedure TDaftarOperatorFrm.wwDBGrid1TitleButtonClick(Sender: TObject;
  AFieldName: String);
begin
  if ((Sender as TwwDBGrid).ColumnByName(AFieldName).FieldName<>'') then
  begin
     if (Sender as TwwDBGrid).DataSource.DataSet.FieldByName(AFieldName).FieldKind=fkData then
        begin
          if (Sender as TwwDBGrid).HelpKeyword=' ASC' then
              (Sender as TwwDBGrid).HelpKeyword:=' DESC'
          else
              (Sender as TwwDBGrid).HelpKeyword:=' ASC';
          (Sender as TwwDBGrid).DataSource.DataSet.DisableControls;
          (Sender as TwwDBGrid).DataSource.DataSet.Close;
          (Sender as TwwDBGrid).GroupFieldName:=AFieldName;
          ((Sender as TwwDBGrid).DataSource.DataSet as TOracleDataSet).SetVariable('pparam',(Sender as TwwDBGrid).Hint+' order by '+(Sender as TwwDBGrid).ColumnByName(AFieldName).FieldName+(Sender as TwwDBGrid).HelpKeyword);
          (Sender as TwwDBGrid).DataSource.DataSet.Open;
          (Sender as TwwDBGrid).DataSource.DataSet.EnableControls;
        end
        else
          ShowMessage('Maaf, tidak bisa diurutkan menurut '+AFieldName+' !');
  end
  else
  ShowMessage('Maaf, tidak bisa diurutkan menurut '+AFieldName+' !');
end;

procedure TDaftarOperatorFrm.TabSheet1Show(Sender: TObject);
var
  i : Integer;
begin
  for i:=0 to ComponentCount-1 do
  begin
    if (Components[i] is TwwDBGrid) then
      if (Components[i] as TwwDBGrid).Parent=Sender then
      begin
        (Components[i] as TwwDBGrid).DataSource.DataSet.Open;
        (Components[i] as TwwDBGrid).GroupFieldName:=(Components[i] as TwwDBGrid).Columns[0].FieldName;
      end;
  end;
  Q1Total.Open;
end;

procedure TDaftarOperatorFrm.ftrFieldEnter(Sender: TObject);
var
  i, j : Integer;
begin
  for i:=0 to ComponentCount-1 do
  begin
    if (Components[i] is TwwDBGrid) then
      if (Components[i] as TwwDBGrid).Parent=((((Sender as TwwDBComboBox).Parent as TPanel).Parent as TPanel).Parent as TPanel).Parent then
      begin
        if (Sender as TwwDBComboBox).Items.Count=1 then
          for j:=0 to (Components[i] as TwwDBGrid).FieldCount-1 do
            if copy(UpperCase((Components[i] as TwwDBGrid).Columns[j].FieldName),1,3)<>'TGL' then
              (Sender as TwwDBComboBox).Items.Add((Components[i] as TwwDBGrid).Columns[j].FieldName);
      end;
  end;
end;

procedure TDaftarOperatorFrm.wwDBGrid1DblClick(Sender: TObject);
var
  myrvdDialog : TwwRecordViewDialog;
begin
  myrvdDialog:=TwwRecor