unit SaldoBulananBBBenang;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Wwdatsrc, OracleData, Grids, Wwdbigrd, Wwdbgrid, Wwdotdot,
  Wwdbcomb, StdCtrls, QRCtrls, QuickRpt, ComCtrls, Mask, wwdbedit,
  Wwdbspin, Buttons, ExtCtrls, wwDBNavigator, wwrcdvw;

type
  TSaldoBulananBBBenangFrm = class(TForm)
    Panel1: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel2: TPanel;
    Panel4: TPanel;
    BtnClose: TBitBtn;
    BitBtn5: TBitBtn;
    LRecords: TLabel;
    Panel3: TPanel;
    BitBtn1: TBitBtn;
    ECari: TEdit;
    cbOtomatis: TCheckBox;
    QBrowse: TOracleDataSet;
    dsQBrowse: TwwDataSource;
    wwDBGrid1: TwwDBGrid;
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    TitleBand1: TQRBand;
    ColumnHeaderBand1: TQRBand;
    DetailBand1: TQRBand;
    SummaryBand1: TQRBand;
    PageFooterBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRSysData1: TQRSysData;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRSysData2: TQRSysData;
    QRDBText22: TQRDBText;
    QRDBText2: TQRDBText;
    QRLTitle: TQRLabel;
    Label15: TLabel;
    vHeight: TwwDBSpinEdit;
    Label16: TLabel;
    BtnExport: TBitBtn;
    dbcField: TwwDBComboBox;
    vOperand: TLabel;
    LTitle: TLabel;
    QBrowseKD_ITEM: TStringField;
    QBrowseTAHUN: TIntegerField;
    QBrowseB00: TFloatField;
    QBrowseB01: TFloatField;
    QBrowseB02: TFloatField;
    QBrowseB03: TFloatField;
    QBrowseB04: TFloatField;
    QBrowseB05: TFloatField;
    QBrowseB06: TFloatField;
    QBrowseB07: TFloatField;
    QBrowseB08: TFloatField;
    QBrowseB09: TFloatField;
    QBrowseB10: TFloatField;
    QBrowseB11: TFloatField;
    QBrowseB12: TFloatField;
    QBrowseNAMA_ITEM: TStringField;
    QBrowseSAT1: TStringField;
    spTahun: TwwDBSpinEdit;
    Label1: TLabel;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRDBText21: TQRDBText;
    QRDBText23: TQRDBText;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QBrowseAKHIR: TFloatField;
    QBrowseB002: TFloatField;
    QBrowseAKHIR2: TFloatField;
    QBrowseB012: TFloatField;
    QBrowseB022: TFloatField;
    QBrowseB032: TFloatField;
    QBrowseB042: TFloatField;
    QBrowseB052: TFloatField;
    QBrowseB062: TFloatField;
    QBrowseB072: TFloatField;
    QBrowseB082: TFloatField;
    QBrowseB092: TFloatField;
    QBrowseB102: TFloatField;
    QBrowseB112: TFloatField;
    QBrowseB122: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure wwDBGrid1TitleButtonClick(Sender: TObject;
      AFieldName: String);
    procedure wwDBGrid2TitleButtonClick(Sender: TObject;
      AFieldName: String);
    procedure LookKonstruksiEnter(Sender: TObject);
    procedure wwDBGrid1DblClick(Sender: TObject);
    procedure ECariChange(Sender: TObject);
    procedure cbOtomatisClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure TabSheet1Show(Sender: TObject);
    procedure QBrowseAfterScroll(DataSet: TDataSet);
    procedure vHeightAfterUpClick(Sender: TObject);
    procedure BtnExportClick(Sender: TObject);
    procedure DBText5Click(Sender: TObject);
    procedure vOperandClick(Sender: TObject);
    procedure dbcFieldEnter(Sender: TObject);
    procedure QBrowseBeforeOpen(DataSet: TDataSet);
    procedure QBrowseBeforeEdit(DataSet: TDataSet);
    procedure TitleBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QBrowseCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
    vfilter, vorder, vfilter2 : String;
  public
    { Public declarations }
    vkd_jns_item, vkd_bag : String;
    vhak_input : Boolean;
    vrecord_ke : Integer;
  end;

var
  SaldoBulananBBBenangFrm: TSaldoBulananBBBenangFrm;

implementation

uses DM, MainBrowse, Main, Menus, XPROCS, DateUtils, Keterangan, Sisdur;

{$R *.dfm}

procedure TSaldoBulananBBBenangFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
  SaldoBulananBBBenangFrm:=Nil;
end;

procedure TSaldoBulananBBBenangFrm.wwDBGrid1TitleButtonClick(Sender: TObject;
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
          ((Sender as TwwDBGrid).DataSource.DataSet as TOracleDataSet).SetVariable('myparam',vfilter+' order by '+(Sender as TwwDBGrid).ColumnByName(AFieldName).FieldName+vorder);
          (Sender as TwwDBGrid).DataSource.DataSet.Open;
          (Sender as TwwDBGrid).DataSource.DataSet.EnableControls;
        end
        else
          ShowMessage('Maaf, tidak bisa diurutkan menurut '+AFieldName+' !');
  end
  else
  ShowMessage('Maaf, tidak bisa diurutkan menurut '+AFieldName+' !');

end;

procedure TSaldoBulananBBBenangFrm.wwDBGrid2TitleButtonClick(Sender: TObject;
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
          ((Sender as TwwDBGrid).DataSource.DataSet as TOracleDataSet).SetVariable('myparam',vfilter2+' order by '+(Sender as TwwDBGrid).ColumnByName(AFieldName).FieldName+vorder);
          (Sender as TwwDBGrid).DataSource.DataSet.Open;
          (Sender as TwwDBGrid).DataSource.DataSet.EnableControls;
        end
        else
          ShowMessage('Maaf, tidak bisa diurutkan menurut '+AFieldName+' !');
  end
  else
  ShowMessage('Maaf, tidak bisa diurutkan menurut '+AFieldName+' !');

end;

procedure TSaldoBulananBBBenangFrm.LookKonstruksiEnter(Sender: TObject);
begin
  DMFrm.QKonstruksi.Open;
end;

procedure TSaldoBulananBBBenangFrm.wwDBGrid1DblClick(Sender: TObject);
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

procedure TSaldoBulananBBBenangFrm.ECariChange(Sender: TObject);
begin
  if cbOtomatis.Checked then
  begin
      QBrowse.SearchRecord(wwDBGrid1.Columns[0].FieldName,ECari.Text,[srFromBeginning, srPartialMatch, srIgnoreCase]);
  end;
end;

procedure TSaldoBulananBBBenangFrm.cbOtomatisClick(Sender: TObject);
begin
  if cbOtomatis.Checked then
  begin
    ShowMessage('Mencari data pada kolom paling kiri.'+#13+'Urutkan data terlebih dahulu supaya mudah mencari !');
    wwDBGrid1.Options:=wwDBGrid1.Options+[dgAlwaysShowSelection];
  end
    else
    wwDBGrid1.Options:=wwDBGrid1.Options-[dgAlwaysShowSelection];
  ECari.SetFocus;
end;

procedure TSaldoBulananBBBenangFrm.BitBtn1Click(Sender: TObject);
var
  i : word;
  vpertama : boolean;
begin
  vpertama:=True;
  vfilter:=' where (';
  if (QBrowse.FieldCount>=1) then
  begin
    if dbcField.ItemIndex=0 then
    begin
      for i:=0 to wwDBGrid1.Selected.Count-1 do
  //    for i:=0 to QBrowse.FieldCount-1 do
      begin
        if (QBrowse.FieldByName(wwDBGrid1.Columns[i].FieldName).FieldKind=fkData) and (UpperCase(wwDBGrid1.Columns[i].FieldName)<>'TANGGAL') then
        begin
          if vpertama then
            begin
              if vOperand.Caption='LIKE' then
                vfilter:=vfilter+wwDBGrid1.Columns[i].FieldName+' like ''%'+ECari.Text+'%'''
                else
                   vfilter:=vfilter+wwDBGrid1.Columns[i].FieldName+' = '''+ECari.Text+'''';
              vpertama:=False;
            end
            else
              if vOperand.Caption='LIKE' then
                vfilter:=vfilter+' or '+wwDBGrid1.Columns[i].FieldName+' like ''%'+ECari.Text+'%'''
                else
                  vfilter:=vfilter+' or '+wwDBGrid1.Columns[i].FieldName+' = '''+ECari.Text+''''
        end;
      end;
    end
    else
      if vOperand.Caption='LIKE' then
         vfilter:=vfilter+dbcField.Text+' like ''%'+ECari.Text+'%'''
         else
           vfilter:=vfilter+dbcField.Text+' = '''+ECari.Text+'''';
    vfilter:=vfilter+')';
//    vorder:=' order by '+wwDBGrid1.Columns[0].FieldName;
    if QBrowse.Active then
      vorder:=' order by '+wwDBGrid1.Columns[0].FieldName
      else
        vorder:=' order by no_nota';

  end;
  QBrowse.DisableControls;
  QBrowse.Close;
  QBrowse.SetVariable('myparam',vfilter+vorder);
  QBrowse.Open;
  QBrowse.EnableControls;

end;

procedure TSaldoBulananBBBenangFrm.BitBtn5Click(Sender: TObject);
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

procedure TSaldoBulananBBBenangFrm.TabSheet1Show(Sender: TObject);
begin
  wwDBGrid1.RowHeightPercent:=Round(vHeight.Value);
  BtnExport.Enabled:=True;
  QBrowse.Open;
end;

procedure TSaldoBulananBBBenangFrm.QBrowseAfterScroll(DataSet: TDataSet);
begin
  LRecords.Caption:='Data ke '+IntToStr(DataSet.RecNo)+' dari '+IntToStr(DataSet.RecordCount)+' data';
end;

procedure TSaldoBulananBBBenangFrm.vHeightAfterUpClick(Sender: TObject);
begin
  case PageControl1.ActivePageIndex of
  0 : wwDBGrid1.RowHeightPercent:=Round(vHeight.Value);
  end;

end;

procedure TSaldoBulananBBBenangFrm.BtnExportClick(Sender: TObject);
begin
  if QBrowse.Active then
  begin
//     DMFrm.SaveDialog1.DefaultExt:='HTML';
     DMFrm.SaveDialog1.DefaultExt:='XLK';
//     DMFrm.SaveDialog1.Filter:='HTML files (*.HTML)|*.HTML';
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

procedure TSaldoBulananBBBenangFrm.DBText5Click(Sender: TObject);
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

procedure TSaldoBulananBBBenangFrm.vOperandClick(Sender: TObject);
begin
  if vOperand.Caption='LIKE' then
    vOperand.Caption:='='
    else
      vOperand.Caption:='LIKE';
end;

procedure TSaldoBulananBBBenangFrm.dbcFieldEnter(Sender: TObject);
var
  i : Word;
begin
  if (QBrowse.Active) and (dbcField.Items.Count=1) then
  for i:=0 to wwDBGrid1.FieldCount-1 do
    if UpperCase(wwDBGrid1.Columns[i].FieldName)<>'TAHUN' then
      dbcField.Items.Add(wwDBGrid1.Columns[i].FieldName);
end;

procedure TSaldoBulananBBBenangFrm.QBrowseBeforeOpen(DataSet: TDataSet);
begin
  QBrowse.SetVariable('kd_jns_item',vkd_jns_item);
  QBrowse.SetVariable('tahun', Round(spTahun.Value));
end;

procedure TSaldoBulananBBBenangFrm.QBrowseBeforeEdit(DataSet: TDataSet);
begin
  if not vhak_input then
  begin
      ShowMessage('Maaf, Anda tidak berhak merubah data !');
      Abort;
  end;
end;

procedure TSaldoBulananBBBenangFrm.TitleBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLTitle.Caption:=LTitle.Caption;
end;

procedure TSaldoBulananBBBenangFrm.QBrowseCalcFields(DataSet: TDataSet);
begin
  QBrowseB002.AsFloat:=QBrowseB00.AsFloat/cball2kg;
  QBrowseAKHIR.AsFloat:=QBrowseB00.AsFloat+
    QBrowseB01.AsFloat+
    QBrowseB02.AsFloat+
    QBrowseB03.AsFloat+
    QBrowseB04.AsFloat+
    QBrowseB05.AsFloat+
    QBrowseB06.AsFloat+
    QBrowseB07.AsFloat+
    QBrowseB08.AsFloat+
    QBrowseB09.AsFloat+
    QBrowseB10.AsFloat+
    QBrowseB11.AsFloat+
    QBrowseB12.AsFloat;
  QBrowseAKHIR2.AsFloat:=QBrowseAKHIR.AsFloat/cball2kg;
end;

end.
                                                                             =� 1� =59=� 5	 A=�=� =	 IA�=� A)	 MI�=� I5	 QM�=� MA	 UQ=� QM	 ]U)=� U]	 e]M=� ]m	 iea=� ey	 qiy= i�	 uq�= q�	 yu�=	 u�	 }y= y�	 �}= }�	 ��5= ��	 ��Y= ��	 ��m= ��	 ���=! �
 ���=% �
 ���=) �!
 ���=- �1
 ��=1 �=
 ��5=5 �I
 ��a=9 �U
 ��u== �a
 ���=A �u
 ���=E ��
 ���=I ��
 ���=M ��
 ���=Q ��
 ��=U ��
 ��I=Y ��
 ��i=] ��
 ���=a ��
 ���=e �=i �=m �=q �=u �=y �=} �=� �=� =� =� =� =� =� =� =� =� =� A  )q   u  My  Q�   �  i�  m�  ���  ��  ��  1�  1�  �8�  E�  �  u�  �  ��  ��  �  ��   �  	�   �  m	�   �  �	  #�	  �	  v  
  �!  !
%  )
-  �%1  m
9  c�=  �
E  �rI  �
M  �
Q  �
U  �
Y  �
]  �
e  �i  �
m  �
u  �y  �  ���  =�   �  m�  u�  y�  ��  M�  c`�  e�  ��  y�  }�  ���  ��  Ü�  %�  �  E�  #y�  Y�  ]�    }  �    �     �%  �%)  -  5  9  =A  �4E  QM  <Q  uY  ��]  �a  �i  m  �q  �u  �y  ��  �T�  E�   �  Y�   �  }�  ���  ��  ��  ��  r�  ��  c��  �  !�  �  A�  y�  ��   �  	�   �  5�  5	  9	  9		  A	  �	  �	  !	  �%	  �-	  �R1	  �9	  =	  �E	  ��I	  Q	  U	  %Y	  )a	   e	  Ii	  Mq	  C1u	  a}	  ��	  u�	  y�	  c�	  ��	   �	  ��	   �	  �	  #��	  �	   �	  1�	  1�	  5�	  5�	  [�	  Y�	   �	  m�	  �*�	  ��	  ��	  ��	  �
  �.	
  �
  �
  
  �
  �%
  �)
  �-
  �5object MDIChild: TMDIChild
  Left = 197
  Top = 117
  BorderStyle = bsDialog
  Caption = 'MDI Child'
  ClientHeight = 559
  ClientWidth = 587
  Color = clBtnFace
  ParentFont = True
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Memo1: TMemo
    Left = 0
    Top = 0
    Width = 587
    Height = 559
    Align = alClient
    Color = 8704
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Courier New'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
  end
end
                                                                                                                                                                                                                                                                                                                                                                      		2�)	     5	@    9	  9	&�A	     M	@    Q	  Q	b�]	@    a	  a	�m	     y	@ }	,}	���	@� �	@�	���	@8   �	�	��	@ �	,�	���	@   �	�	2��	@�	0�	���	@( �	6�	���	     �	@�	,�	��
@ 
0
��
@   

&�!
@   %
%
��1
@   5
5
��=
@H 0A
PA
��I
@    M
  M
�U
@ Y
0Y
I�a
`� pe
Dm
�m
�
�e
��u
@  y
y
|��
@  �
�
���
` p�
0�
��
���
���
@( �
6�
I��
@   �
�
���
@ �
,�
���
@  0 �
�
���
`  p �

�
*�
5��
Q��
`@ p2�
f�
f
�
}��
e��
         a                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        �||�ka�\�%��@J8#�b����'FU`���T���0H"[ jB��r��T=$=���Љ�AΨI2�W��	�:����m�D*��Ofh���먫��Ih�>��w�����,���HHO�%��D�tn��[顷�v��Q��.ΤRqL7��ýY5RM����w���DWvkMO�?-m`��Ӆd�惾�����a�����lh�o��b`VB�����Sn�:E�[�X�&0�Q��0n�R�Њy�NtX*G�Cמ�h����т����Q|OD�y�%X��V]�|���y��h�������c��X�!���^�+)'����L��������y�å��_Gd���[Q?H��5@��d����L��^s]��5�-N��P��j]_Ә��)�-x��9���c�z3�\�tS���g¸��:G��Z�UmN,�̸�n���q�� N/q�NK��=����zBcn��I���%h\�$vn��ĩ���43���-kY�i���١�5���:�
;d-���0��/o�MjXԶпx?�ٯzΣn/��:�5��F�a����� YĲG