=' order by '+wwDBGrid1.Columns[0].FieldName
      else
        vorder:=' order by no_nota';

  end;
  QBrowse.DisableControls;
  QBrowse.Close;
  QBrowse.SetVariable('myparam',vfilter+vorder);
  QBrowse.Open;
  QBrowse.EnableControls;

end;

procedure TPerkiraanFrm.BitBtn5Click(Sender: TObject);
begin
  DMFrm.QDateTime.Close;
  DMFrm.QDateTime.Open;
  case PageControl1.ActivePageIndex of
  0 : begin
        QBrowse.DisableControls;
        QuickRep1.Preview;
        QBrowse.EnableControls;
      end;
  end;
end;

procedure TPerkiraanFrm.TabSheet1Show(Sender: TObject);
begin
  wwDBGrid1.RowHeightPercent:=Round(vHeight.Value);
  BtnExport.Enabled:=True;
  QBrowse.Open;
end;

procedure TPerkiraanFrm.vHeightAfterUpClick(Sender: TObject);
begin
  case PageControl1.ActivePageIndex of
  0 : wwDBGrid1.RowHeightPercent:=Round(vHeight.Value);
  end;

end;

procedure TPerkiraanFrm.BtnExportClick(Sender: TObject);
begin
  if QBrowse.Active then
  begin
     DMFrm.SaveDialog1.DefaultExt:='XLK';
     DMFrm.SaveDialog1.Filter:='Excel files (*.XLK)|*.XLK';
     DMFrm.SaveDialog1.FileName:=Caption;
     wwDBGrid1.ExportOptions.TitleName:=Caption;
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

procedure TPerkiraanFrm.DBText5Click(Sender: TObject);
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
  DMFrm.SavePictureDialog1.FileName:=Caption;
  if DMFrm.SavePictureDialog1.Execute then
     ABitmap.SaveToFile(DMFrm.SavePictureDialog1.FileName);
  ABitmap.Free;
end;

procedure TPerkiraanFrm.vOperandClick(Sender: TObject);
begin
  if vOperand.Caption='LIKE' then
    vOperand.Caption:='='
    else
      vOperand.Caption:='LIKE';
end;

procedure TPerkiraanFrm.dbcFieldEnter(Sender: TObject);
var
  i : Word;
begin
  if (QBrowse.Active) and (dbcField.Items.Count=1) then
  for i:=0 to wwDBGrid1.FieldCount-1 do
    if UpperCase(wwDBGrid1.Columns[i].FieldName)<>'TANGGAL' then
      dbcField.Items.Add(wwDBGrid1.Columns[i].FieldName);
end;

procedure TPerkiraanFrm.QDetailAfterScroll(DataSet: TDataSet);
begin
//  LRecords.Caption:='Data ke '+IntToStr(DataSet.RecNo)+' dari '+IntToStr(DataSet.RecordCount)+' data';
end;

procedure TPerkiraanFrm.cbModeEditClick(Sender: TObject);
begin
  if cbModeEdit.Checked then
    wwDBGrid1.Options:=wwDBGrid1.Options-[dgRowSelect]
    else
      wwDBGrid1.Options:=wwDBGrid1.Options+[dgRowSelect];
end;

procedure TPerkiraanFrm.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if QBrowseISDETAIL.AsString='0' then
    DetailBand1.Font.Style:=DetailBand1.Font.Style+[fsBold]
    else
      DetailBand1.Font.Style:=DetailBand1.Font.Style-[fsBold];
  if QBrowseISTOTAL.AsString='1' then
  begin
    DetailBand1.Font.Style:=DetailBand1.Font.Style+[fsItalic];
    DetailBand1.Height:=32;
  end
    else
    begin
      DetailBand1.Font.Style:=DetailBand1.Font.Style-[fsItalic];
      DetailBand1.Height:=16;
    end;
end;

procedure TPerkiraanFrm.QBrowseNewRecord(DataSet: TDataSet);
begin
  QBrowseISDETAIL.AsString:='0';
  QBrowseLVL.AsString:='0';
  QBrowseISTOTAL.AsString:='0';
  QBrowseISAKTIF.AsString:='0';
end;

procedure TPerkiraanFrm.TitleBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLTitle.Caption:=Caption;
end;

procedure TPerkiraanFrm.LookDivisiEnter(Sender: TObject);
begin
DMFrm.QDivisi.Open;
end;

end.
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          4D3E000000000000003E0000002800000040000000500000000100010000000000800200000000000000000000000000000000000000000000FFFFFF000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000FFFFFFFFFFFF0000FFFFFFFFFFFF0000FFFFFFFF8FFF0000C007C0078C030000FFFFFFFF8FFF0000F83FF807FFFF0000FFFFFFFFFFFF0000C007C0078FFF0000FFFFFFFF8C030000F01FF8078FFF0000FFFFFFFFFFFF0000C007C007FFFF0000FFFFFFFF8FFF0000F83FF8078C030000FFFFFFFF8FFF0000FFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE00FFFFFFFFFFFFFFFFFC007F00F81FFF83FFFFFF8C7E3FFF39FC03FF8C7F1FFF39FFFFFF8C7F8FFF39FC007F80FFC7FF39FFFFFF8C7FE3FF39FC03FF8C7FF1FF39FFFFFF8C7FF8FF39FC007F00FFF03E10FFFFFFFFFFFFFFFFFC03FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FFFFFFFC00FFFFF6CFFE008000FFFFF6B7FE000000FFFFF6B7FE000000FFF7F8B780000000C1F7FE8F80000001C3FBFE3F80000003C7FBFF7F80000003CBFBFE3F80010003DCF7FEBF80030003FF0FFC9F80070FC3FFFFFDDF807F0003FFFFFDDF80FF8007FFFFFDDF81FFF87FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC001C007C007001F8031BFEBC007000F80310005C007000780317E31C007000380017E35C007000180010006C007000080017FEAC007001F8FF18014C007001F8FF1C00AC007001F8FF1E001C0078FF18FF1E007C00FFFF98FF1F007C01FFF758FF5F003C03FFF8F8001F803FFFFFFFFFFFFFFFF00000000000000000000000000000000000000000000Status:0Curr:494C01010F001400040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D36000000000000003600000028000000400000005000000001001000000000000028000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000object PerkiraanFrm: TPerkiraanFrm
  Left = 99
  Top = 31
  Width = 831
  Height = 734
  Caption = 'DAFTAR PERKIRAAN'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Scaled = False
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 645
    Width = 823
    Height = 55
    Align = alBottom
    TabOrder = 0
    object Label15: TLabel
      Left = 8
      Top = 4
      Width = 62
      Height = 13
      Caption = 'Spasi Tabel :'
    end
    object Label16: TLabel
      Left = 120
      Top = 4
      Width = 8
      Height = 13
      Caption = '%'
    end
    object BtnClose: TBitBtn
      Left = 191
      Top = 24
      Width = 75
      Height = 25
      TabOrder = 0
      Kind = bkClose
    end
    object BitBtn5: TBitBtn
      Left = 9
      Top = 24
      Width = 75
      Height = 25
      Caption = '&Print'
      TabOrder = 1
      OnClick = BitBtn5Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
        8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
        8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
        8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
        03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
        03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
        33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
        33333337FFFF7733333333300000033333333337777773333333}
      NumGlyphs = 2
    end
    object vHeight: TwwDBSpinEdit
      Left = 80
      Top = 0
      Width = 41
      Height = 21
      TabStop = False
      Increment = 25.000000000000000000
      MaxValue = 900.000000000000000000
      MinValue = 125.000000000000000000
      Value = 125.000000000000000000
      TabOrder = 2
      UnboundDataType = wwDefault
      AfterUpClick = vHeightAfterUpClick
      AfterDownClick = vHeightAfterUpClick
    end
    object BtnExport: TBitBtn
      Left = 88
      Top = 24
      Width = 97
      Height = 25
      Caption = '&Export2Excel'
      TabOrder = 3
      OnClick = BtnExportClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333FFFFFFFFFFFFF33000077777770033377777777777773F000007888888
        00037F3337F3FF37F37F00000780088800037F3337F77F37F37F000007800888
        00037F3337F77FF7F37F00000788888800037F3337777777337F000000000000
        00037F3FFFFFFFFFFF7F00000000000000037F77777777777F7F000FFFFFFFFF
        00037F7F333333337F7F000FFFFFFFFF00037F7F333333337F7F000FFFFFFFFF
        00037F7F333333337F7F000FFFFFFFFF00037F7F333333337F7F000FFFFFFFFF
        00037F7F333333337F7F000FFFFFFFFF07037F7F33333333777F000FFFFFFFFF
        0003737FFFFFFFFF7F7330099999999900333777777777777733}
      NumGlyphs = 2
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 41
    Width = 823
    Height = 604
    ActivePage = TabSheet1
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = 'Browse'
      OnShow = TabSheet1Show
      object QuickRep1: TQuickRep
        Left = 56
        Top = 88
        Width = 794
        Height = 1123
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        DataSet = QBrowse
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Functions.Strings = (
          'PAGENUMBER'
          'COLUMNNUMBER'
          'REPORTTITLE')
        Functions.DATA = (
          '0'
          '0'
          #39#39)
        Options = [LastPageFooter]
        Page.Columns = 1
        Page.Orientation = poPortrait
        Page.PaperSize = A4
        Page.Values = (
          100.000000000000000000
          2970.000000000000000000
          100.000000000000000000
          2100.000000000000000000
          100.000000000000000000
          100.000000000000000000
          0.000000000000000000)
        PrinterSettings.Copies = 1
        PrinterSettings.Duplex = False
        PrinterSettings.FirstPage = 0
        PrinterSettings.LastPage = 0
        PrinterSettings.OutputBin = Auto
        PrintIfEmpty = True
        SnapToGrid = True
        Units = MM
        Zoom = 100
        object PageHeaderBand1: TQRBand
          Left = 38
          Top = 38
          Width = 718
          Height = 30
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          AlignToBottom = False
          Color = clWhite
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            79.375000000000000000
            1899.708333333333000000)
          BandType = rbPageHeader
          object QRDBText1: TQRDBText
            Left = 0
            Top = 2
            Width = 158
            Height = 24
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              63.500000000000000000
              0.000000000000000000
              5.291666666666667000
              418.041666666666700000)
            Alignment = taLeftJustify
            AlignToBand = True
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = DMFrm.QPerusahaan
            DataField = 'NAMA_PERUSAHAAN'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Arial Narrow'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 14
          end
        end
        object TitleBand1: TQRBand
          Left = 38
          Top = 68
          Width = 718
          Height = 37
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          AlignToBottom = False
          BeforePrint = TitleBand1BeforePrint
          Color = clWhite
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            97.895833333333340000
            1899.708333333333000000)
          BandType = rbTitle
          object QRLTitle: TQRLabel
            Left = 334
            Top = 8
            Width = 50
            Height = 21
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              55.562500000000000000
              883.708333333333400000
              21.166666666666670000
              132.291666666666700000)
            Alignment = taCenter
            AlignToBand = True
            AutoSize = True
            AutoStretch = False
            Caption = 'TITLE'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
        end
        object ColumnHeaderBand1: TQRBand
          Left = 38
          Top = 105
          Width = 718
          Height = 32
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          AlignToBottom = False
          Color = clWhite
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            84.666666666666680000
            1899.708333333333000000)
          BandType = rbColumnHeader
          object QRLabel1: TQRLabel
            Left = 8
            Top = 16
            Width = 17
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              21.166666666666670000
              42.333333333333340000
              44.979166666666670000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'NO'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsUnderline]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 8
          end
          object QRLabel2: TQRLabel
            Left = 35
            Top = 16
            Width = 31
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              92.604166666666680000
              42.333333333333340000
              82.020833333333340000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'KODE'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsUnderline]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 8
          end
          object QRLabel4: TQRLabel
            Left = 592
            Top = 16
            Width = 34
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              1566.333333333333000000
              42.333333333333340000
              89.958333333333340000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'LEVEL'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsUnderline]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 8
          end
          object QRLabel5: TQRLabel
            Left = 636
            Top = 16
            Width = 39
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              1682.750000000000000000
              42.333333333333340000
              103.187500000000000000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'DETAIL'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsUnderline]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 8
          end
          object QRLabel6: TQRLabel
            Left = 136
            Top = 16
            Width = 97
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              359.833333333333400000
              42.333333333333340000
              256.645833333333400000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'NAMA PERKIRAAN'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsUnderline]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 8
          end
          object QRLabel3: TQRLabel
            Left = 680
            Top = 16
            Width = 36
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              1799.166666666667000000
              42.333333333333340000
              95.250000000000000000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'TOTAL'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsUnderline]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 8
          end
        end
        object DetailBand1: TQRBand
          Left = 38
          Top = 137
          Width = 718
          Height = 16
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          AlignToBottom = False
          BeforePrint = DetailBand1BeforePrint
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ForceNewColumn = False
          ForceNewPage = False
          ParentFont = False
          Size.Values = (
            42.333333333333340000
            1899.708333333333000000)
          BandType = rbDetail
          object QRDBText3: TQRDBText
            Left = 35
            Top = 0
            Width = 97
            Height = 15
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              39.687500000000000000
              92.604166666666680000
              0.000000000000000000
              256.645833333333400000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = QBrowse
            DataField = 'KD_PERK'
            Transparent = False
            WordWrap = True
            FontSize = 8
          end
          object QRSysData1: TQRSysData
            Left = 0
            Top = 0
            Width = 33
            Height = 15
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              39.687500000000000000
              0.000000000000000000
              0.000000000000000000
              87.312500000000000000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            Color = clWhite
            Data = qrsDetailNo
            Transparent = False
            FontSize = 8
          end
          object QRDBText6: TQRDBText
            Left = 592
            Top = 0
            Width = 33
            Height = 15
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              39.687500000000000000
              1566.333333333333000000
              0.000000000000000000
              87.312500000000000000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = QBrowse
            DataField = 'LVL'
            Transparent = False
            WordWrap = True
            FontSize = 8
          end
          object QRExpr1: TQRExpr
            Left = 136
            Top = 0
            Width = 449
            Height = 15
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              39.687500000000000000
              359.833333333333400000
              0.000000000000000000
              1187.979166666667000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = True
            Color = clWhite
            Master = QuickRep1
            ResetAfterPrint = False
            Transparent = False
            WordWrap = True
            Expression = 
              'COPY('#39'                                                          ' +
              '                                              '#39',1,3*(QBrowse.LVL' +
              '-1))+QBrowse.NAMA_PERKIRAAN'
            FontSize = 8
          end
          object QRExpr2: TQRExpr
            Left = 638
            Top = 0
            Width = 36
            Height = 15
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              39.687500000000000000
              1688.041666666667000000
              0.000000000000000000
              95.250000000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            Master = QuickRep1
            ResetAfterPrint = False
            Transparent = False
            WordWrap = True
            Expression = 'IF(QBrowse.ISDETAIL='#39'1'#39','#39'Yes'#39','#39#39')'
            FontSize = 8
          end
          object QRExpr3: TQRExpr
            Left = 678
            Top = -2
            Width = 36
            Height = 15
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              39.687500000000000000
              1793.875000000000000000
              -5.291666666666667000
              95.250000000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            Master = QuickRep1
            ResetAfterPrint = False
            Transparent = False
            WordWrap = True
            Expression = 'IF(QBrowse.ISTOTAL='#39'1'#39','#39'Yes'#39','#39#39')'
            FontSize = 8
          end
        end
        object SummaryBand1: TQRBand
          Left = 38
          Top = 153
          Width = 718
          Height = 32
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          AlignToBottom = False
          Color = clWhite
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            84.666666666666680000
            1899.708333333333000000)
          BandType = rbSummary
          object QRLabel9: TQRLabel
            Left = 326
            Top = 8
            Width = 66
            Height = 15
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              39.687500000000000000
              862.541666666666900000
       