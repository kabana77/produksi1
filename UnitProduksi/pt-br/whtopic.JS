         Alignment = taLeftJustify
            AlignToBand = True
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = DMFrm.QDateTime
            DataField = 'VUSER_CETAK'
            Transparent = False
            WordWrap = True
            FontSize = 8
          end
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 815
        Height = 52
        Align = alTop
        BevelInner = bvLowered
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 0
        object Panel3: TPanel
          Left = 2
          Top = 2
          Width = 568
          Height = 48
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 0
          object vOperand: TLabel
            Left = 150
            Top = 20
            Width = 44
            Height = 24
            Cursor = crHandPoint
            Alignment = taCenter
            AutoSize = False
            Caption = 'LIKE'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -19
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            OnClick = vOperandClick
          end
          object BitBtn1: TBitBtn
            Left = 328
            Top = 20
            Width = 75
            Height = 25
            Caption = 'Filte&r'
            Default = True
            ModalResult = 1
            TabOrder = 2
            OnClick = BitBtn1Click
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000120B0000120B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
              555555555555555555555555555555555555555555FF55555555555559055555
              55555555577FF5555555555599905555555555557777F5555555555599905555
              555555557777FF5555555559999905555555555777777F555555559999990555
              5555557777777FF5555557990599905555555777757777F55555790555599055
              55557775555777FF5555555555599905555555555557777F5555555555559905
              555555555555777FF5555555555559905555555555555777FF55555555555579
              05555555555555777FF5555555555557905555555555555777FF555555555555
              5990555555555555577755555555555555555555555555555555}
            NumGlyphs = 2
          end
          object ECari: TEdit
            Left = 200
            Top = 23
            Width = 121
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 1
            OnChange = ECariChange
          end
          object cbOtomatis: TCheckBox
            Left = 7
            Top = 5
            Width = 98
            Height = 17
            Caption = 'Cari &Otomatis'
            TabOrder = 0
            OnClick = cbOtomatisClick
          end
          object dbcField: TwwDBComboBox
            Left = 8
            Top = 23
            Width = 137
            Height = 19
            ShowButton = True
            Style = csDropDown
            MapList = False
            AllowClearKey = False
            Color = clYellow
            DropDownCount = 8
            ItemHeight = 0
            Items.Strings = (
              'SEMUA KOLOM')
            ItemIndex = 0
            Sorted = False
            TabOrder = 3
            UnboundDataType = wwDefault
            OnEnter = dbcFieldEnter
          end
          object cbModeEdit: TCheckBox
            Left = 408
            Top = 24
            Width = 81
            Height = 17
            Caption = 'Mode Edit'
            TabOrder = 4
            Visible = False
            OnClick = cbModeEditClick
          end
        end
      end
      object wwDBGrid1: TwwDBGrid
        Left = 0
        Top = 52
        Width = 815
        Height = 524
        DittoAttributes.ShortCutDittoRecord = 16429
        ControlType.Strings = (
          'ISPOST;CheckBox;1;0'
          'ISTOKO;CheckBox;1;0'
          'ISAGEN;CheckBox;1;0'
          'ISGROSIR;CheckBox;1;0'
          'ISDISTR;CheckBox;1;0'
          'ISMM;CheckBox;1;0'
          'ISPABRIK;CheckBox;1;0'
          'ISGT;CheckBox;1;0'
          'ISMT;CheckBox;1;0'
          'ISDETAIL;CheckBox;1;0'
          'ISTOTAL;CheckBox;1;0'
          'ISAKTIF;CheckBox;1;0'
          'KD_DIV;CustomEdit;LookDivisi;F')
        Selected.Strings = (
          'KD_PERK'#9'8'#9'KODE'#9'F'
          'LVL'#9'3'#9'LVL'#9#9
          'ISDETAIL'#9'6'#9'DETAIL'#9'F'
          'ISTOTAL'#9'6'#9'TOTAL'#9'F'
          'NAMA_PERKIRAAN'#9'67'#9'NAMA_PERKIRAAN'#9#9
          'ISAKTIF'#9'6'#9'ISAKTIF'#9'F'
          'KD_PERK_PUSAT'#9'6'#9'KODE~PUSAT'#9'F'
          'KD_DIV'#9'6'#9'KD_DIV'#9'F')
        IniAttributes.Enabled = True
        IniAttributes.SaveToRegistry = True
        IniAttributes.FileName = 'Panahmas'
        IniAttributes.Delimiter = ';;'
        IniAttributes.CheckNewFields = True
        ExportOptions.ExportType = wwgetSYLK
        ExportOptions.Options = [esoShowHeader, esoShowFooter, esoShowTitle, esoDblQuoteFields, esoBestColFit, esoShowRecordNo, esoShowAlternating]
        TitleColor = clSkyBlue
        FixedCols = 0
        ShowHorzScrollBar = True
        Align = alClient
        DataSource = dsQBrowse
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        KeyOptions = [dgEnterToTab, dgAllowDelete, dgAllowInsert]
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgPerfectRowFit, dgShowFooter, dgTrailingEllipsis, dgDblClickColSizing]
        ParentFont = False
        RowHeightPercent = 125
        TabOrder = 2
        TitleAlignment = taCenter
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Lucida Sans'
        TitleFont.Style = [fsBold]
        TitleLines = 4
        TitleButtons = True
        UseTFields = False
        OnTitleButtonClick = wwDBGrid1TitleButtonClick
        PaintOptions.AlternatingRowColor = clMoneyGreen
        PaintOptions.ActiveRecordColor = clGreen
        GroupFieldName = 'NO_NOTA'
      end
      object LookDivisi: TwwDBLookupCombo
        Left = 432
        Top = 256
        Width = 121
        Height = 21
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'KD_DIV'#9'6'#9'KODE'#9'F'#9
          'NAMA_DIVISI'#9'35'#9'NAMA_DIVISI'#9'F'#9)
        DataField = 'KD_DIV'
        DataSource = dsQBrowse
        LookupTable = DMFrm.QDivisi
        LookupField = 'KD_DIV'
        Options = [loColLines, loRowLines, loTitles]
        TabOrder = 3
        AutoDropDown = True
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
        OnEnter = LookDivisiEnter
      end
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 0
    Width = 823
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    Color = 206
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
  end
  object QBrowse: TOracleDataSet
    SQL.Strings = (
      'select a.*, a.rowid from perkiraan a'
      ':myparam')
    Variables.Data = {
      0300000001000000080000003A4D59504152414D01000000130000006F726465
      7220627920612E6B645F7065726B0000000000}
    QBEDefinition.QBEFieldDefs = {
      0400000008000000070000004B445F5045524B0100000000000E0000004E414D
      415F5045524B495241414E010000000000030000004C564C0100000000000800
      0000495344455441494C010000000000070000004953544F54414C0100000000
      00070000004953414B5449460100000000000D0000004B445F5045524B5F5055
      534154010000000000060000004B445F444956010000000000}
    QueryAllRecords = False
    Session = DMFrm.OS
    OnNewRecord = QBrowseNewRecord
    Left = 388
    Top = 145
    object QBrowseKD_PERK: TStringField
      FieldName = 'KD_PERK'
      Required = True
    end
    object QBrowseNAMA_PERKIRAAN: TStringField
      FieldName = 'NAMA_PERKIRAAN'
      Size = 100
    end
    object QBrowseLVL: TIntegerField
      FieldName = 'LVL'
    end
    object QBrowseISDETAIL: TStringField
      FieldName = 'ISDETAIL'
      Size = 1
    end
    object QBrowseISTOTAL: TStringField
      FieldName = 'ISTOTAL'
      Size = 1
    end
    object QBrowseISAKTIF: TStringField
      FieldName = 'ISAKTIF'
      Size = 1
    end
    object QBrowseKD_PERK_PUSAT: TStringField
      FieldName = 'KD_PERK_PUSAT'
      Required = True
    end
    object QBrowseKD_DIV: TStringField
      FieldName = 'KD_DIV'
      Size = 6
    end
  end
  object dsQBrowse: TwwDataSource
    DataSet = QBrowse
    Left = 428
    Top = 145
  end
end
                                                                                                                                                                                                                                                                                                                                                                                                              0000000000000000000000000000000000000000000000000004200420000000000000000000000000000000000420042000000000000000000000000000000000000000000000000000000000000000000000000000000000000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F00000000000000000000E07FFF7FE07FFF7FE07FFF7FE07FFF7FE07F00000000000000000000000000000000004200000000000000000000000000000000000000000042000000000000000000000000000000000000000000000000000000000000000000000000000000000000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F00000000000000000000FF7FE07FFF7FE07FFF7FE07FFF7FE07FFF7F0000000000000000000000000000000000420000000000000000000000000000000000000000004200000000000000000000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F00000000000000000000000000000000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F00000000000000000000E07FFF7FE07F00000000000000000000000000000000000000000000000000000000004200000000000000000000000000000000000000000042000000000000000000000000FF7F00000000000000000000FF7F00000000000000000000000000000000FF7FFF7FFF7FFF7FFF7FFF7F0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004200000000000000000000000000000000000000000042000000000000000000000000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F0000000000000000000000000000FF7FFF7FFF7FFF7FFF7FFF7F0000FF7F000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000042000000000000000000000000000000000000000000000000000000000000000000000000FF7F00000000000000000000FF7F0000000000000000000000000000FF7FFF7FFF7FFF7FFF7FFF7F00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000042000000000000000000000000000000000000000000000000000000000000000000000000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000424D3E020000000000003E0000002800000040000000400000000100010000000000000200000000000000000000020000000200000000000000FFFFFF00FFFFFFFFFFFF0000FFFFFFFFFFFF0000FFFFFFFF8FFF0000C007C0078C030000FFFFFFFF8FFF0000F83FF807FFFF0000FFFFFFFFFFFF0000C007C0078FFF0000FFFFFFFF8C030000F01FF8078FFF0000FFFFFFFFFFFF0000C007C007FFFF0000FFFFFFFF8FFF0000F83FF8078C0unit Perkiraan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, QRCtrls, Wwdatsrc, OracleData, Grids, Wwdbigrd, Wwdbgrid,
  Wwdotdot, Wwdbcomb, StdCtrls, QuickRpt, ComCtrls, Mask, wwdbedit,
  Wwdbspin, Buttons, ExtCtrls, wwdblook;

type
  TPerkiraanFrm = class(TForm)
    Panel1: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel2: TPanel;
    Panel4: TPanel;
    BtnClose: TBitBtn;
    BitBtn5: TBitBtn;
    Panel3: TPanel;
    BitBtn1: TBitBtn;
    ECari: TEdit;
    cbOtomatis: TCheckBox;
    QBrowse: TOracleDataSet;
    dsQBrowse: TwwDataSource;
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    TitleBand1: TQRBand;
    ColumnHeaderBand1: TQRBand;
    DetailBand1: TQRBand;
    SummaryBand1: TQRBand;
    PageFooterBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText3: TQRDBText;
    QRSysData1: TQRSysData;
    QRDBText6: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel9: TQRLabel;
    QRSysData2: TQRSysData;
    QRDBText22: TQRDBText;
    QRLTitle: TQRLabel;
    Label15: TLabel;
    vHeight: TwwDBSpinEdit;
    Label16: TLabel;
    BtnExport: TBitBtn;
    dbcField: TwwDBComboBox;
    vOperand: TLabel;
    wwDBGrid1: TwwDBGrid;
    QBrowseKD_PERK: TStringField;
    QBrowseNAMA_PERKIRAAN: TStringField;
    QBrowseLVL: TIntegerField;
    QBrowseISDETAIL: TStringField;
    QBrowseISTOTAL: TStringField;
    QRLabel3: TQRLabel;
    QRExpr1: TQRExpr;
    cbModeEdit: TCheckBox;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    QBrowseISAKTIF: TStringField;
    QBrowseKD_PERK_PUSAT: TStringField;
    QBrowseKD_DIV: TStringField;
    LookDivisi: TwwDBLookupCombo;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure wwDBGrid1TitleButtonClick(Sender: TObject;
      AFieldName: String);
    procedure wwDBGrid2TitleButtonClick(Sender: TObject;
      AFieldName: String);
    procedure wwDBGrid2CalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure ECariChange(Sender: TObject);
    procedure cbOtomatisClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure TabSheet1Show(Sender: TObject);
    procedure vHeightAfterUpClick(Sender: TObject);
    procedure BtnExportClick(Sender: TObject);
    procedure DBText5Click(Sender: TObject);
    procedure vOperandClick(Sender: TObject);
    procedure dbcFieldEnter(Sender: TObject);
    procedure QDetailAfterScroll(DataSet: TDataSet);
    procedure cbModeEditClick(Sender: TObject);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QBrowseNewRecord(DataSet: TDataSet);
    procedure TitleBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure LookDivisiEnter(Sender: TObject);
  private
    { Private declarations }
    vfilter, vfilter2, vorder : String;
  public
    { Public declarations }
  end;

var
  PerkiraanFrm: TPerkiraanFrm;

implementation

uses DM, Main, XPROCS, DateUtils