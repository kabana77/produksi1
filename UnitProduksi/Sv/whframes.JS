lcFields(DataSet: TDataSet);
begin
{  QBrowsesc_bale.AsFloat := QBrowseQTY1.AsFloat / 181.44;
  QBrowsesc_bale_mtr.AsFloat := (181.44*QBrowseNO_BENANG.AsFloat*768)/453.6;
  QBrowsesc_prod_bale_mtr.AsFloat := QBrowsesc_bale.AsFloat*QBrowsesc_bale_mtr.AsFloat;}
//  QBrowsesc_prosen.AsFloat := QBrowsesc_prod_bale_mtr.AsFloat / Sum(QBrowsesc_prod_bale_mtr.AsFloat);
end;

procedure TWIP_JETDYEINGFRM.wwDBGrid2UpdateFooter(Sender: TObject);
var  vrasio, vpcs, vkg : real;
begin
  vpcs:=0;
  vkg:=0;
  while not QBrowse.Eof do
  begin
  {  vpcs:=vpcs+QBrowsesc_bale.AsFloat;
    vkg:=vkg+QBrowsesc_prod_bale_mtr.AsFloat;
    QBrowse.Next; }
  end;
  QTotal.Close;
  QTotal.Open;
  QBrowse.EnableControls;
 { wwDBGrid2.ColumnByName('QTY1').FooterValue:=FormatFloat('#,0.0000;(#,0.0000);-',QTotalQTY1.AsFloat);
  wwDBGrid2.ColumnByName('SC_BALE').FooterValue:=FormatFloat('#,0.0000;(#,0.0000);-',vpcs);
  wwDBGrid2.ColumnByName('SC_PROD_BALE_MTR').FooterValue:=FormatFloat('#,0.0000;(#,0.0000);-',vkg);}
end;

procedure TWIP_JETDYEINGFRM.SummaryBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  DMFrm.QDateTime.Open;
  QRLabel35.Caption:='Pekalongan, '+FormatDateTime('dd mmmm yyyy',VTglAkhir.Date);
end;

procedure TWIP_JETDYEINGFRM.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  WIP_JETDYEINGFrm :=Nil;
end;

procedure TWIP_JETDYEINGFRM.QBrowseFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
    Accept:=
    (Trunc(QBrowseQTY1.AsFloat)<>0) or
    (Trunc(QBrowseQTY2.AsFloat)<>0) or
    (Trunc(QBrowseQTY3.AsFloat)<>0) or
    (Trunc(QBrowseQTY4.AsFloat)<>0) or
    (Trunc(QBrowseQTY5.AsFloat)<>0) or
    (Trunc(QBrowseQTY6.AsFloat)<>0) or
    (Trunc(QBrowseQTY7.AsFloat)<>0) or
    (Trunc(QBrowseQTY8.AsFloat)<>0) or
    (Trunc(QBrowseQTY9.AsFloat)<>0) or
    (Trunc(QBrowseQTY10.AsFloat)<>0) or
    (Trunc(QBrowseQTY11.AsFloat)<>0) or
    (Trunc(QBrowseQTY12.AsFloat)<>0) or
    (Trunc(QBrowseQTY