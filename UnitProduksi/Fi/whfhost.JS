ItemIndex of
  0 : vRecord.Value:=40;
  1 : vRecord.Value:=20;
  end;      }
end;

procedure TKebutuhanBBBenangFrm.ColumnHeaderBand2BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  vrecord_ke:=0;
end;

procedure TKebutuhanBBBenangFrm.wwDBGrid2DblClick(Sender: TObject);
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
       vketerangan_org:=copy(QDetailKETERANGAN.AsString,vpos+3,255);
    end
       else
       begin
         vnama_barang_org:=QDetailKETERANGAN.AsString;
         vketerangan_org:='';
       end;

      KeteranganFrm.Memo1.Text:=vketerangan_org;
      KeteranganFrm.ShowModal;
      if KeteranganFrm.ModalResult=mrOk then
      begin
          if QDetail.State<>dsBrowse then
            QDetailKETERANGAN.AsString:=vnama_barang_org+'** '+KeteranganFrm.Memo1.Text
            else
            begin
                QDetail.Edit;
                QDetailKETERANGAN.AsString:=vnama_barang_org+'** '+KeteranganFrm.Memo1.Text
            end;
      end;
  end
  else
    ShowMessage('Anda bisa menambahkan Keterangan/ Spesifikasi'+#13+'jika sudah memilih barang/ item !');
end;

procedure TKebutuhanBBBenangFrm.Button1Click(Sender: TObject);
begin
  wwDBGrid2DblClick(Nil);
end;

procedure TKebutuhanBBBenangFrm.vHeightAfterUpClick(Sender: TObject);
begin
  case PageControl1.ActivePageIndex of
  0 : wwDBGrid1.RowHeightPercent:=Round(vHeight.Value);
  1 : wwDBGrid2.RowHeightPercent:=Round(vHeight.Value);
  end;
end;

procedure TKebutuhanBBBenangFrm.BtnExportClick(Sender: TObject);
begin
    case PageControl1.TabIndex of
    0: begin
          if QBrowse.Active then
          begin
             DMFrm.SaveDialog1.DefaultExt:='XLK';
             DMFrm.SaveDialog1.Filter:='Excel files (*.XLK)|*.XLK';
             DMFrm.SaveDialog1.FileName:=QJnsTransaksiNAMA_TRANSAKSI.AsString;
             wwDBGrid1.ExportOptions.TitleName:=QJnsTransaksiNAMA_TRANSAKSI.AsString;
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
    2: begin
          if QBrowse20.Active then
          begin
             DMFrm.SaveDialog1.DefaultExt:='XLK';
             DMFrm.SaveDialog1.Filter:='Excel files (*.XLK)|*.XLK';
             DMFrm.SaveDialog1.FileName:='LEAD TIME '+QJnsTransaksiNAMA_TRANSAKSI.AsString;
             wwDBGrid20.ExportOptions.TitleName:='LEAD TIME '+QJnsTransaksiNAMA_TRANSAKSI.AsString;
               if DMFrm.SaveDialog1.Execute then
               begin
                 try
                 wwDBGrid20.ExportOptions.FileName:=DMFrm.SaveDialog1.FileName;
                 wwDBGrid20.ExportOptions.Save;
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

procedure TKebutuhanBBBenangFrm.DBText5Click(Sender: TObject);
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
  DMFrm.SavePictureDialog1.FileName:=QJnsTransaksiNAMA_TRANSAKSI.AsString;
  if DMFrm.SavePictureDialog1.Execute then
     ABitmap.SaveToFile(DMFrm.SavePictureDialog1.FileName);
  ABitmap.Free;
end;

procedure TKebutuhanBBBenangFrm.dbcFieldEnter(Sender: TObject);
var
  i : Word;
begin
  if (QBrowse.Active) and (dbcField.Items.Count=1) then
  for i:=0 to wwDBGrid1.FieldCount-1 do
    if UpperCase(wwDBGrid1.Columns[i].FieldName)<>'TANGGAL' then
      dbcField.Items.Add(wwDBGrid1.Columns[i].FieldName);
end;

procedure TKebutuhanBBBenangFrm.vOperandClick(Sender: TObject);
begin
  if vOperand.Caption='LIKE' then
    vOperand.Caption:='='
    else
      vOperand.Caption:='LIKE';

end;

procedure TKebutuhanBBBenangFrm.Label3Click(Sender: TObject);
begin
  DMFrm.QSisdur.Close;
  DMFrm.QSisdur.SetVariable('kd_transaksi',QJnsTransaksiKD_TRANSAKSI.AsString);
  DMFrm.QSisdur.Open;
  SisdurFrm:=TSisdurFrm.Create(Self);
  SisdurFrm.vread_only:=True;
  SisdurFrm.ShowModal;
  SisdurFrm.Free;
end;

procedure TKebutuhanBBBenangFrm.QBrowseCalcFields(DataSet: TDataSet);
begin
  QBrowseQTY_PO2.AsFloat:=QBrowseQTY_PO.AsFloat/cball2kg;
  QBrowseQTY_LPB2.AsFloat:=QBrowseqty_lpb.AsFloat*cball2kg;
end;

procedure TKebutuhanBBBenangFrm.BitBtn3Click(Sender: TObject);
var
  i : word;
  vpertama : boolean;  
begin
  vpertama:=True;
  if cbTanggal20.Checked then
    vfilter20:=' where (tanggal>=to_date('''+FormatDateTime('dd/mm/yyyy',VTglAwal20.Date)+''',''dd/mm/yyyy'') and tanggal<=(to_date('''+FormatDateTime('dd/mm/yyyy',VTglAkhir20.Date)+''',''dd/mm/yyyy'')+1-1/86400)) and ('
  else
    vfilter20:=' where (';
  if (QBrowse20.FieldCount>=1) then
  begin
    if dbcField20.ItemIndex=0 then
    begin
      for i:=0 to wwDBGrid20.Selected.Count-1 do
  //    for i:=0 to QBrowse.FieldCount-1 do
      begin
        if (QBrowse20.FieldByName(wwDBGrid20.Columns[i].FieldName).FieldKind=fkData) and (UpperCase(wwDBGrid20.Columns[i].FieldName)<>'TANGGAL') then
        begin
          if vpertama then
            begin
              if vOperand20.Caption='LIKE' then
                vfilter20:=vfilter20+wwDBGrid20.Columns[i].FieldName+' like ''%'+ECari20.Text+'%'''
                else
                   vfilter20:=vfilter20+wwDBGrid20.Columns[i].FieldName+' = '''+ECari20.Text+'''';
              vpertama:=False;
            end
            else
              if vOperand20.Caption='LIKE' then
                vfilter20:=vfilter20+' or '+wwDBGrid20.Columns[i].FieldName+' like ''%'+ECari20.Text+'%'''
                else
                  vfilter20:=vfilter20+' or '+wwDBGrid20.Columns[i].FieldName+' = '''+ECari20.Text+''''
        end;
      end;
    end
    else
      if vOperand20.Caption='LIKE' then
         vfilter20:=vfilter20+dbcField20.Text+' like ''%'+ECari20.Text+'%'''
         else
           vfilter20:=vfilter20+dbcField20.Text+' = '''+ECari20.Text+'''';
    vfilter20:=vfilter20+')';
//    vorder:=' order by '+wwDBGrid1.Columns[0].FieldName;
    if QBrowse20.Active then
      vorder20:=' order by '+wwDBGrid20.Columns[0].FieldName
      else
        vorder20:=' order by no_nota';

  end;
  QBrowse20.DisableControls;
  QBrowse20.Close;
  QBrowse20.SetVariable('myparam',vfilter20+vorder20);
  QBrowse20.Open;
  QBrowse20.EnableControls;



end;


procedure TKebutuhanBBBenangFrm.dbcField20Enter(Sender: TObject);
var
  i : Word;
begin
  if (QBrowse20.Active) and (dbcField20.Items.Count=1) then
  for i:=0 to wwDBGrid20.FieldCount-1 do
    if UpperCase(wwDBGrid20.Columns[i].FieldName)<>'TANGGAL' then
      dbcField20.Items.Add(wwDBGrid20.Columns[i].FieldName);

end;

procedure TKebutuhanBBBenangFrm.vOperand20Click(Sender: TObject);
begin
  if vOperand20.Caption='LIKE' then
    vOperand20.Caption:='='
    else
      vOperand20.Caption:='LIKE';

end;

procedure TKebutuhanBBBenangFrm.ECari20Change(Sender: TObject);
begin
  if cbOtomatis20.Checked then
  begin
      QBrowse20.SearchRecord(wwDBGrid20.Columns[0].FieldName,ECari.Text,[srFromBeginning, srPartialMatch, srIgnoreCase]);
  end;

end;

procedure TKebutuhanBBBenangFrm.cbOtomatis20Click(Sender: TObject);
begin
  if cbOtomatis20.Checked then
  begin
    ShowMessage('Mencari data pada kolom paling kiri.'+#13+'Urutkan data terlebih dahulu supaya mudah mencari !');
    wwDBGrid20.Options:=wwDBGrid20.Options+[dgAlwaysShowSelection];
  end
    else
    wwDBGrid20.Options:=wwDBGrid20.Options-[dgAlwaysShowSelection];
  ECari20.SetFocus;

end;

procedure TKebutuhanBBBenangFrm.vTglAwal20Change(Sender: TObject);
begin
vTglAkhir20.Date:=Trunc(EndOfTheMonth(VTglAwal20.Date));
end;

procedure TKebutuhanBBBenangFrm.vTglAkhir20Change(Sender: TObject);
begin
  if VTglAwal20.Date>vTglAkhir20.Date then
  begin
      ShowMessage('Tanggal Akhir harus LEBIH BESAR dari Tanggal Awal !');
      vTglAkhir20.Date:=VTglAwal20.Date;
  end;

end;

procedure TKebutuhanBBBenangFrm.cbTanggal20Click(Sender: TObject);
begin
if cbTanggal20.Checked then
  begin
    VTglAwal20.Enabled:=cbTanggal20.Checked;
    vTglAkhir20.Enabled:=cbTanggal20.Checked;
    VTglAwal20.SetFocus;
  end
  else
    ECari20.SetFocus;
end;


procedure TKebutuhanBBBenangFrm.TabSheet3Show(Sender: TObject);
begin
 wwDBGrid20.RowHeightPercent:=Round(vHeight.Value);
  BtnExport.Enabled:=True;
  vfilter20:=' where (tanggal>=to_date('''+FormatDateTime('dd/mm/yyyy',VTglAwal20.Date)+''',''dd/mm/yyyy'') and tanggal<=(to_date('''+FormatDateTime('dd/mm/yyyy',VTglAkhir20.Date)+''',''dd/mm/yyyy'')+1-1/86400))';
  QBrowse20.Open;

end;

procedure TKebutuhanBBBenangFrm.QBrowse200BeforeOpen(DataSet: TDataSet);
begin
   QBrowse200.SetVariable('kd_transaksi','101');
end;

procedure TKebutuhanBBBenangFrm.TabSheet4Show(Sender: TObject);
begin
  wwDBGrid200.RowHeightPercent:=Round(vHeight.Value);
  BtnExport.Enabled:=True;
  vfilter200:=' where (tanggal>=to_date('''+FormatDateTime('dd/mm/yyyy',VTglAwal200.Date)+''',''dd/mm/yyyy'') and tanggal<=(to_date('''+FormatDateTime('dd/mm/yyyy',VTglAkhir200.Date)+''',''dd/mm/yyyy'')+1-1/86400))';
  QBrowse200.Open;
end;

procedure TKebutuhanBBBenangFrm.vTglAwal200Change(Sender: TObject);
begin
  vTglAkhir200.Date:=Trunc(EndOfTheMonth(VTglAwal200.Date));

end;

procedure TKebutuhanBBBenangFrm.vTglAkhir200Change(Sender: TObject);
begin
  if VTglAwal200.Date>vTglAkhir200.Date then
  begin
      ShowMessage('Tanggal Akhir harus LEBIH BESAR dari Tanggal Awal !');
      vTglAkhir200.Date:=VTglAwal200.Date;
  end;

end;

procedure TKebutuhanBBBenangFrm.cbOtomatis200Click(Sender: TObject);
begin
  if cbOtomatis200.Checked then
  begin
    ShowMessage('Mencari data pada kolom paling kiri.'+#13+'Urutkan data terlebih dahulu supaya mudah mencari !');
    wwDBGrid200.Options:=wwDBGrid200.Options+[dgAlwaysShowSelection];
  end
    else
    wwDBGrid200.Options:=wwDBGrid200.Options-[dgAlwaysShowSelection];
  ECari200.SetFocus;

end;

procedure TKebutuhanBBBenangFrm.dbcField200Enter(Sender: TObject);
var
  i : Word;
begin
  if (QBrowse200.Active) and (dbcField200.Items.Count=1) then
  for i:=0 to wwDBGrid200.FieldCount-1 do
    if UpperCase(wwDBGrid200.Columns[i].FieldName)<>'TANGGAL' then
      dbcField200.Items.Add(wwDBGrid200.Columns[i].FieldName);
end;

procedure TKebutuhanBBBenangFrm.vOperand200Click(Sender: TObject);
begin
  if vOperand200.Caption='LIKE' then
    vOperand200.Caption:='='
    else
      vOperand200.Caption:='LIKE';

end;

procedure TKebutuhanBBBenangFrm.cbTanggal200Click(Sender: TObject);
begin
  if cbTanggal200.Checked then
  begin
    VTglAwal200.Enabled:=cbTanggal200.Checked;
    vTglAkhir200.Enabled:=cbTanggal200.Checked;
    VTglAwal200.SetFocus;
  end
  else
    ECari200.SetFocus;

end;

procedure TKebutuhanBBBenangFrm.ECari200Change(Sender: TObject);
begin
  if cbOtomatis200.Checked then
  begin
      QBrowse200.SearchRecord(wwDBGrid200.Columns[0].FieldName,ECari200.Text,[srFromBeginning, srPartialMatch, srIgnoreCase]);
  end;

end;

procedure TKebutuhanBBBenangFrm.BitBtn4Click(Sender: TObject);
var
  i : word;
  vpertama : boolean;
begin
  vpertama:=True;
  if cbTanggal200.Checked then
    vfilter200:=' where (tanggal>=to_date('''+FormatDateTime('dd/mm/yyyy',VTglAwal200.Date)+''',''dd/mm/yyyy'') and tanggal<=(to_date('''+FormatDateTime('dd/mm/yyyy',VTglAkhir200.Date)+''',''dd/mm/yyyy'')+1-1/86400)) and ('
  else
    vfilter200:=' where (';
  if (QBrowse200.FieldCount>=1) then
  begin
    if dbcField200.ItemIndex=0 then
    begin
      for i:=0 to wwDBGrid200.Selected.Count-1 do
  //    for i:=0 to QBrowse.FieldCount-1 do
      begin
        if (QBrowse200.FieldByName(wwDBGrid200.Columns[i].FieldName).FieldKind=fkData) and (UpperCase(wwDBGrid200.Columns[i].FieldName)<>'TANGGAL') then
        begin
          if vpertama then
            begin
              if vOperand200.Caption='LIKE' then
                vfilter200:=vfilter200+wwDBGrid200.Columns[i].FieldName+' like ''%'+ECari200.Text+'%'''
                else
                   vfilter200:=vfilter200+wwDBGrid200.Columns[i].FieldName+' = '''+ECari200.Text+'''';
              vpertama:=False;
            end
            else
              if vOperand200.Caption='LIKE' then
                vfilter200:=vfilter200+' or '+wwDBGrid200.Columns[i].FieldName+' like ''%'+ECari200.Text+'%'''
                else
                  vfilter200:=vfilter20+' or '+wwDBGrid200.Columns[i].FieldName+' = '''+ECari200.Text+''''
        end;
      end;
    end
    else
      if vOperand200.Caption='LIKE' then
         vfilter200:=vfilter200+dbcField200.Text+' like ''%'+ECari200.Text+'%'''
         else
           vfilter200:=vfilter200+dbcField200.Text+' = '''+ECari200.Text+'''';
    vfilter200:=vfilter200+')';
//    vorder:=' order by '+wwDBGrid1.Columns[0].FieldName;
    if QBrowse200.Active then
      vorder200:=' order by '+wwDBGrid200.Columns[0].FieldName
      else
        vorder200:=' order by no_nota';

  end;
  QBrowse200.DisableControls;
  QBrowse200.Close;
  QBrowse200.SetVariable('myparam',vfilter200+vorder200);
  QBrowse200.Open;
  QBrowse200.EnableControls;
end;

procedure TKebutuhanBBBenangFrm.wwDBGrid200TitleButtonClick(Sender: TObject;
  AFieldName: String);
begin
  if ((Sender as TwwDBGrid).ColumnByName(AFieldName).FieldName<>'') then
  begin
     if (Sender as TwwDBGrid).DataSource.DataSet.FieldByName(AFieldName).FieldKind=fkData then
        begin
          if vorder=' ASC' then
              vorder:=' DESC'
          else
              vorder:=' ASC';
          (Sender as TwwDBGrid).DataSource.DataSet.DisableControls;
          (Sender as TwwDBGrid).DataSource.DataSet.Close;
          ((Sender as TwwDBGrid).DataSource.DataSet as TOracleDataSet).SetVariable('myparam',vfilter200+' order by '+(Sender as TwwDBGrid).ColumnByName(AFieldName).FieldName+vorder200);
          (Sender as TwwDBGrid).DataSource.DataSet.Open;
          (Sender as TwwDBGrid).DataSource.DataSet.EnableControls;
        end
        else
          ShowMessage('Maaf, tidak bisa diurutkan menurut '+AFieldName+' !');
  end
  else
  ShowMessage('Maaf, tidak bisa diurutkan menurut '+AFieldName+' !');

end;



end.
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        e1ü   Button1    Timer1      Button1Click     Timer1Timer     
FormCreate	TAboutFrm                	TAboutFrmL       ^ About  è    Ãÿ€  ƒ¸  ~è    Ã3Ò‰  ÃU‹ì3ÀUh%   dÿ0d‰ ÿ    3ÀZYYd‰h,   Ãé    ëø]Ãƒ-    ÃmÈ æ æ èæææ ¬RTÀXÂÄPn*®68>ž¨Fª<Lrpt~2‚’”4–˜šœB@ H¢ˆŠŒŽb"v$&(xz,|€:„†ZdfJ.0DNV\^`æ`î&ô$ú6è èæîh
ô j
úunit ReSkedulHutangDlg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, wwdblook, Wwdbdlg, wwmonthcalendar, Buttons, ExtCtrls,
  Mask, wwdbedit, Wwdbspin;

type
  TReSkedulDlgFrm = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    wwDBMonthCalendar1: TwwDBMonthCalendar;
    Label1: TLabel;
    Label2: TLabel;
    LookPerkiraanKasBank: TwwDBLookupCombo;
    wwDBSpinEdit1: TwwDBSpinEdit;
    procedure LookPerkiraanKasBankEnter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ReSkedulDlgFrm: TReSkedulDlgFrm;

implementation

uses DM;

{$R *.dfm}

procedure TReSkedulDlgFrm.LookPerkiraanKasBankEnter(Sender: TObject);
begin
  DMFrm.QPerkiraanKasBank.Open;
end;

end.
                                                                                                                                                             )
		sStyle+="body {border-top:"+gsBgColor+" 1px solid;}\n";
	else
		sStyle+="body {border-top:black 1px solid;}\n";
	sStyle+="P {"+getFontStyle(goErrFont)+"margin-left:"+gsIndent+";margin-top:"+gsMargin+";}\n";
	sStyle+="dl {"+getFontStyle(goFont)+"margin-left:"+gsIndent+";margin-top:"+gsMargin+";}\n";
	sStyle+="A:link {"+getFontStyle(goFont)+"}\n";
	sStyle+="A:visited {"+getFontStyle(goFont)+"}\n";
	sStyle+="A:active {background-color:"+gsABgColor+";}\n";
	sStyle+="A:hover {"+getFontStyle(goHoverFont)+"}\n";
	sStyle+="</STYLE>";
	document.write(sStyle);
}

function window_Unload()
{
	UnRegisterListener2(this,WH_MSG_PROJECTREADY);
	UnRegisterListener2(this, WH_MSG_SEARCHFTSKEY);
}


function onSendMessage(oMsg)
{
	var nMsgId=oMsg.nMessageId;
	if(nMsgId==WH_MSG_SEARCHFTSKEY)
	{
		if(oMsg.oParam)
		{
			if(gsSK==null||gsSK=="")
			{
				gsSK=oMsg.oParam.toLowerCase();
				findFTSKey();
			}
			else
				gsSK2=oMsg.oParam.toLowerCase();
		}
	}
	else if(nMsgId==WH_MSG_PROJECTREADY)
	{
		loadFts();
	}
	return true;
}

if (window.gbWhUtil&&window.gbWhLang&&window.gbWhProxy&&window.gbWhVer&&window.gbWhMsg)
{
	goFont=new whFont("Verdana","8pt","#000000","normal","normal","none");
	goErrFont=new whFont("Verdana","8pt","#000000","normal","bold","none");
	goHoverFont=new whFont("Verdana","8pt","#007f00","normal","normal","underline");
	window.onload=window_OnLoad;
	window.onbeforeunload=window_BUnload;
	window.onunload=window_Unload;
	RegisterListener2(this,WH_MSG_PROJECTREADY);
	gbWhFHost=true;
}
else
	document.location.reload();