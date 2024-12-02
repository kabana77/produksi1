kode : String; pjudul : string; pbrg : String);
var
  mychar : string[125];
Begin
// Hak Menu
  DMFrm.cHakInput:=DMFrm.QMenuUser.Lookup('NAMA_COMPONENT',pNamaMenu,'HAK_INPUT')='1';
  DMFrm.cBtnDesign:=DMFrm.QMenuUser.Lookup('NAMA_COMPONENT',pNamaMenu,'HAK_DESIGN')='1';
  DMFrm.cBtnExport:=DMFrm.QMenuUser.Lookup('NAMA_COMPONENT',pNamaMenu,'HAK_EXPORT')='1';

//  if InfoWIPPengeringanFrm=Nil then
  begin
    WIP_JETDYEINGFrm:=TWIP_JETDYEINGFrm.Create(Application);
    mychar:=pjudul;
    Delete(mychar,Pos('&',mychar),1);
    pjudul:=mychar;
    WIP_JETDYEINGFrm.vkode:=pbrg;
    WIP_JETDYEINGFrm.QTransaksi.Open;


    WIP_JETDYEINGFrm.PanelHeader.Caption:=pjudul;
    WIP_JETDYEINGFrm.Caption:=UpperCase(WIP_JETDYEINGFrm.PanelHeader.Caption);
    {WIP_JETDYEINGFrm.wwDBGrid2.IniAttributes.FileName:=DMFrm.sAppPath+Application.Title+'2.ini';
    WIP_JETDYEINGFrm.wwDBGrid2.IniAttributes.SectionName:=WIP_JETDYEINGFrm.Caption+'2';
    WIP_JETDYEINGFrm.wwDBGrid2.IniAttributes.Enabled:=True;
    WIP_JETDYEINGFrm.wwDBGrid2.LoadFromIniFile;
    DMFrm.ProcReadIni(Application.Title,WIP_JETDYEINGFrm.Caption+'2',WIP_JETDYEINGFrm.wwDBGrid2);
    WIP_JETDYEINGFrm.wwDBSpinLine2.Value:=WIP_JETDYEINGFrm.wwDBGrid2.RowHeightPercent;}

  end;

  WIP_JETDYEINGFrm.Show;
end;

procedure TWIP_JETDYEINGFRM.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   DMFrm.ProcWtiteIni(Application.Title,Caption+'2',wwDBGrid1);
   Action:=caFree;
   WIP_JETDYEINGFrm:=Nil;
   QuickRep1:=Nil;
end;

procedure TWIP_JETDYEINGFRM.FormCreate(Sender: TObject);
begin
//barcode
     DMFrm.FontToUse := TFont.Create;
     DMFrm.selected := 'UCC 128';
     SelectedFont := 'CIA Code 128 Medium';
     StrPCopy(DMFrm.TempSelected, DMFrm.Selected);
     DMFrm.BType := 'C128';
     DMFrm.FontToUse.Size := 12;
     DMFrm.FontToUse.Name := SelectedFont;
//     LBarcode.Font := DMFrm.FontToUse;
//     QRBarcode11.Font := LoginFrm.FontToUse;
     DMFrm.BType := DMFrm.BType + '-';
     DMFrm.BType := DMFrm.BType + DMFrm.Format;
     DMFrm.BType := DMFrm.BType + '.BH';
// end barcode

  PanelMain.Color:=cWarnaPanelUtama;
  BtnClose1.Glyph.LoadFromFile(DMFrm.sAppPath+'Images\CLOSE.Bmp');
  BtnOk.Glyph.LoadFromFile(DMFrm.sAppPath+'Images\CHECK.Bmp');
//  BtnOk2.Glyph.LoadFromFile(DMFrm.sAppPath+'Images\CHECK.Bmp');
//  BtnFind.Glyph.LoadFromFile(DMFrm.sAppPath+'Images\FIND.Bmp');
  BtnDesign2.Glyph.LoadFromFile(DMFrm.sAppPath+'Images\DESIGN.Bmp');
  BtnPrintBrowse.Glyph.LoadFromFile(DMFrm.sAppPath+'Images\PRINT.Bmp');
//  BtnPrintBrowse1.Glyph.LoadFromFile(DMFrm.sAppPath+'Images\PRINT.Bmp');
  BtnExport.Glyph.LoadFromFile(DMFrm.sAppPath+'Images\EXPORT.Bmp');
//Otoritas Button
//  BtnExport.Visible:=DMFrm.cBtnExport;
  BtnDesign2.Visible:=DMFrm.cBtnDesign;
end;

procedure TWIP_JETDYEINGFRM.BtnExportClick(Sender: TObject);
begin
  if QBrowse.Active then
  begin
     DMFrm.SaveDialog1.DefaultExt:='XLK';
     DMFrm.SaveDialog1.Filter:='Excel files (*.XLK)|*.XLK';
     DMFrm.SaveDialog1.FileName:=PanelHeader.Caption+' '+ vTglAwal.Text+' sd '+vTglAkhir.Text+'.xlK';
     wwDBGrid1.ExportOptions.TitleName:='WIP JET DYEING';
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

procedure TWIP_JETDYEINGFRM.BtnOkClick(Sender: TObject);
var
  vrasio, vpcs, vkg : real;
begin
  QDump.Close;
  QDump.SetVariable('vsysdate',vTglAwal.Date);
  QDump.SetVariable('vsysdate2',vTglAkhir.Date);
  QDump.Execute;
  QBrowse.DisableControls;
  QBrowse.Close;
  QBrowse.Open;
  QBrowse.EnableControls;
  QTotal.Close;
  QTotal.Open;
  wwDBGrid1.ColumnByName('QTY_AWL').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QTotalQTY_AWL.AsFloat);
  wwDBGrid1.ColumnByName('QTY_AWL2').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QTotalQTY_AWL2.AsFloat);
  wwDBGrid1.ColumnByName('QTY1').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QTotalQTY1.AsFloat);
  wwDBGrid1.ColumnByName('QTY2').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QTotalQTY2.AsFloat);
  wwDBGrid1.ColumnByName('QTY5').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QTotalQTY5.AsFloat);
  wwDBGrid1.ColumnByName('QTY6').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QTotalQTY6.AsFloat);
  wwDBGrid1.ColumnByName('QTY3').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QTotalQTY3.AsFloat);
  wwDBGrid1.ColumnByName('QTY4').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QTotalQTY4.AsFloat);
  wwDBGrid1.ColumnByName('QTY7').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QTotalQTY7.AsFloat);
  wwDBGrid1.ColumnByName('QTY8').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QTotalQTY8.AsFloat);
  wwDBGrid1.ColumnByName('QTY9').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QTotalQTY9.AsFloat);
  wwDBGrid1.ColumnByName('QTY10').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QTotalQTY10.AsFloat);
  wwDBGrid1.ColumnByName('QTY_AKHIR').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QTotalQTY_AKHIR.AsFloat);
  wwDBGrid1.ColumnByName('QTY_AKHIR2').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QTotalQTY_AKHIR2.AsFloat);  
end;

procedure TWIP_JETDYEINGFRM.wwDBGrid2TitleButtonClick(Sender: TObject;
  AFieldName: String);
begin
  if QBrowse.FieldByName(AFieldName).FieldKind=fkData then
  begin
    vorder:='order by '+AFieldName;
    BtnOkClick(Nil);
  end
  else
    ShowMessage('Maaf, tidak bisa Urut menurut kolom '+AFieldName+' !');
end;

procedure TWIP_JETDYEINGFRM.BtnClose1Click(Sender: TObject);
begin
  Close;
end;

procedure TWIP_JETDYEINGFRM.wwDBSpinLine2Change(Sender: TObject);
begin
//    wwDBGrid2.RowHeightPercent:=Round(wwDBSpinLine2.Value);
end;

procedure TWIP_JETDYEINGFRM.BtnFindClick(Sender: TObject);
begin
{	wwDBGrid2.ColumnByName('NILAI').FooterValue:='';;
  if not QBrowse.QBEMode then
  begin
    wwDBGrid2.Options:=wwDBGrid2.Options-[dgRowSelect,dgAlwaysShowSelection];
    QBrowse.QBEMode:=TRUE;
  end
  else
    QBrowse.ClearQBE;}
end;

procedure TWIP_JETDYEINGFRM.BtnOk2Click(Sender: TObject);
begin
  {if QBrowse.QBEMode then
  begin
    QBrowse.ExecuteQBE;
    wwDBGrid2.Options:=wwDBGrid2.Options+[dgRowSelect,dgAlwaysShowSelection];
      t1:=0;
      t2:=0;
      t3:=0;
      t4:=0;
      t5:=0;
      t6:=0;
      t7:=0;
      t8:=0;
      t9:=0;
      t10:=0;
      t11:=0;
      t12:=0;
      while not QBrowse.Eof do
      begin

      end;
      QBrowse.EnableControls;
   end;}
end;

procedure TWIP_JETDYEINGFRM.BtnPrintBrowseClick(Sender: TObject);
begin
  QuickRep1.Preview;
end;

procedure TWIP_JETDYEINGFRM.BtnPrintBrowse1Click(Sender: TObject);
var checbox : byte;
begin

end;

procedure TWIP_JETDYEINGFRM.Button1Click(Sender: TObject);
begin
  ppDesigner1.ShowModal;
end;

procedure TWIP_JETDYEINGFRM.BtnDesign2Click(Sender: TObject);
begin
  ppDesigner1.ShowModal;
end;

procedure TWIP_JETDYEINGFRM.ppTitleBand1BeforePrint(Sender: TObject);
begin
  ppNamaLaporan.Caption:='MUTASI STOK '+DMFrm.QJnsItem.FieldByName('JNS_BRG').AsString;
  ppPeriode.Caption:=vTglAwal.Text+' SD '+vTglAkhir.Text;
  DMFrm.QTime.Close;
  DMFrm.QTime.Open;
  ppUserCetak.Caption:=DMFrm.QTimeVUSER_CETAK.AsString;
end;

procedure TWIP_JETDYEINGFRM.Label5Click(Sender: TObject);
begin
  if DMFrm.FontDialog1.Execute then
  begin
    wwDBGrid1.Font.Name:=DMFrm.FontDialog1.Font.Name;
    wwDBGrid1.Font.Size:=DMFrm.FontDialog1.Font.Size;
    wwDBGrid1.Font.Color:=DMFrm.FontDialog1.Font.Color;
    wwDBGrid1.Font.Style:=DMFrm.FontDialog1.Font.Style;
  end;
end;

procedure TWIP_JETDYEINGFRM.LookItemEnter(Sender: TObject);
begin
  (sender as TwwDBLookupComboDlg).LookupTable.Open;
end;

procedure TWIP_JETDYEINGFRM.ppDetailBand1BeforePrint(Sender: TObject);
begin
 ppLblNomer.Caption:=IntToStr(ppDBQBrowseDetail.RecordNo+1)
end;

procedure TWIP_JETDYEINGFRM.QTransaksiBeforeOpen(DataSet: TDataSet);
begin
  QTransaksi.DeclareVariable('kd_transaksi', otString);
  QTransaksi.SQL.Text:='select a.* from '+cUserTabel+'vtransaksi a where a.kd_transaksi=:kd_transaksi';
  QTransaksi.SetVariable('kd_transaksi',vkode);
end;

procedure TWIP_JETDYEINGFRM.vTglAwalChange(Sender: TObject);
begin
  vTglAkhir.DateTime:=EndOfTheMonth(vTglAwal.Date);
end;

procedure TWIP_JETDYEINGFRM.FormShow(Sender: TObject);
begin
    vTglAwal.Date:=Trunc(DMFrm.QTimeJAM.AsDateTime);
    vTglAkhir.Date:=Trunc(DMFrm.QTimeJAM.AsDateTime);
    WIP_JETDYEINGFrm:=Nil;
end;

procedure TWIP_JETDYEINGFRM.QBrowseAfterScroll(DataSet: TDataSet);
begin
    LabelBanner.Caption:='Record ke '+IntToStr(QBrowse.RecNo)+' dari '+FormatFloat('#,#',QBrowse.RecordCount)+' Records';
end;

procedure TWIP_JETDYEINGFRM.BitBtn1Click(Sender: TObject);
begin
//  wwDBGrid2DblClick(nil);
end;

procedure TWIP_JETDYEINGFRM.cbAdaTransaksiClick(Sender: TObject);
begin
//  QBrowse.Filtered:=cbAdaTransaksi.Checked;
end;

procedure TWIP_JETDYEINGFRM.TitleBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  QRLabel13.Caption:='Periode :  '+vTglAwal.Text+' s/d '+vTglAkhir.Text;
  {QRLabel14.Caption:='(Per : '+vTglAwal.Text+' s/d '+vTglAkhir.Text+')';
  QRLabel13.Caption:='Bulan  '+FormatDateTime('MMMM YYYY',VTglAkhir.Date);
  QRLabel14.Caption:='(Per : '+vTglAwal.Text+' s/d '+vTglAkhir.Text+')';}
end;

procedure TWIP_JETDYEINGFRM.QRBand5BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  DMFrm.QDateTime.Open;
//  QRLabel84.Caption:=FormatDateTime('dd mmmm yyyy',vTglAkhir.Date);
end;

procedure TWIP_JETDYEINGFRM.QRBand6BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  DMFrm.QDateTime.Open;
end;

procedure TWIP_JETDYEINGFRM.QRBand8BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
//  QRLabel55.Caption:=vTglAwal.Text+' s/d '+vTglAkhir.Text;
end;

procedure TWIP_JETDYEINGFRM.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
//  QRLabel24.Caption:=vTglAwal.Text+' s/d '+vTglAkhir.Text;
end;

procedure TWIP_JETDYEINGFRM.PageFooterBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  DMFrm.QDateTime.Open;
end;

procedure TWIP_JETDYEINGFRM.QuickRep1AfterPreview(Sender: TObject);
begin
  WIP_JETDYEINGFrm :=Nil;
end;

procedure TWIP_JETDYEINGFRM.QuickRep1AfterPrint(Sender: TObject);
begin
  WIP_JETDYEINGFrm :=Nil;
end;

procedure TWIP_JETDYEINGFRM.wwDBGrid1UpdateFooter(Sender: TObject);
begin
{  QTotal.Close;
  QTotal.SetVariable('item',QBrowseNAMA_ITEM.AsString);
}
  QTotal.Close;
  QTotal.Open;
  wwDBGrid1.ColumnByName('QTY_AWL').FooterValue:=FormatFloat('0.0,0;(0.0,0);-',QTotalQTY_AWL.AsFl