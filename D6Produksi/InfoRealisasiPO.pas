unit InfoRealisasiPO;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  DateUtils, Mask, wwdbedit, Wwdbspin, DB, Wwdatsrc, OracleData, Dialogs,
  Oracle, Buttons, wwSpeedButton, wwDBNavigator, wwclearpanel, Grids,
  Wwdbigrd, Wwdbgrid, StdCtrls, wwdbdatetimepicker, ComCtrls, ExtCtrls,
  ppViewr, ppDB, ppDBPipe, ppComm, ppRelatv, ppProd, ppClass, ppReport,
  ppVar, ppCtrls, ppBands, ppPrnabl, ppCache, ppEndUsr, ppModule,
  daDataModule, DBCtrls, wwdblook, Wwdbdlg, Wwdotdot, Wwdbcomb, ppBarCod,
  wwcheckbox, ppStrtch, ppMemo, raCodMod, wwriched, QuickRpt, QRCtrls, jpeg,
  OleCtrls, SHDocVw;

type
  TInfoRealisasiPOFrm = class(TForm)
    PanelMain: TPanel;
    PanelHeader: TPanel;
    PanelFilter: TPanel;
    LabelBanner: TLabel;
    PanelBrowse: TPanel;
    PanelFooter2: TPanel;
    BtnOk: TBitBtn;
    wwDBGrid2: TwwDBGrid;
    wwDBNavigator1: TwwDBNavigator;
    wwDBNavigator1PriorPage: TwwNavButton;
    wwDBNavigator1NextPage: TwwNavButton;
    wwDBNavigator1SaveBookmark: TwwNavButton;
    wwDBNavigator1RestoreBookmark: TwwNavButton;
    QBrowse: TOracleDataSet;
    dsQBrowse: TwwDataSource;
    Label5: TLabel;
    wwDBSpinLine2: TwwDBSpinEdit;
    BtnExport: TBitBtn;
    BtnPrintBrowse: TBitBtn;
    BtnPrintBrowse1: TBitBtn;
    Label1: TLabel;
    BtnFind: TSpeedButton;
    BtnOk2: TSpeedButton;
    DBText3: TDBText;
    QTransaksi: TOracleDataSet;
    QTransaksiNAMA_TRANSAKSI: TStringField;
    QTransaksiKD_TRANSAKSI: TStringField;
    QTransaksiPREFIX: TStringField;
    QTransaksiPLINE: TStringField;
    QTransaksiPHEADER: TStringField;
    QTransaksiDISTRIBUSI: TStringField;
    QTransaksiTTD1: TStringField;
    QTransaksiTTD2: TStringField;
    QTransaksiTTD3: TStringField;
    QTransaksiTTD4: TStringField;
    QTransaksiDIV1: TStringField;
    QTransaksiDIV2: TStringField;
    QTransaksiDIV3: TStringField;
    QTransaksiDIV4: TStringField;
    QTransaksiJAB1: TStringField;
    QTransaksiJAB2: TStringField;
    QTransaksiJAB3: TStringField;
    QTransaksiJAB4: TStringField;
    dsQTransaksi: TwwDataSource;
    QSOP: TOracleDataSet;
    dsQSOP: TwwDataSource;
    BtnClose1: TBitBtn;
    vTglAwal: TwwDBDateTimePicker;
    Label3: TLabel;
    QDump: TOracleQuery;
    vTglAkhir: TwwDBDateTimePicker;
    Label4: TLabel;
    RadioGroup1: TRadioGroup;
    BitBtn1: TBitBtn;
    cbAdaTransaksi: TCheckBox;
    QDump2: TOracleQuery;
    wwDBGrid1: TwwDBGrid;
    QuickRep2: TQuickRep;
    QRBand1: TQRBand;
    QRDBText12: TQRDBText;
    QRBand2: TQRBand;
    QRLabel26: TQRLabel;
    QRBand3: TQRBand;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel42: TQRLabel;
    QRLabel43: TQRLabel;
    QRBand4: TQRBand;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRDBText21: TQRDBText;
    QRDBText22: TQRDBText;
    QRSysData2: TQRSysData;
    QRShape10: TQRShape;
    QRBand5: TQRBand;
    QRLabel45: TQRLabel;
    QRExpr9: TQRExpr;
    QRExpr10: TQRExpr;
    QRExpr11: TQRExpr;
    QRExpr12: TQRExpr;
    QRExpr13: TQRExpr;
    QRExpr14: TQRExpr;
    QRExpr15: TQRExpr;
    QRExpr16: TQRExpr;
    QRLabel46: TQRLabel;
    QRLabel47: TQRLabel;
    QRLabel48: TQRLabel;
    QRLabel50: TQRLabel;
    QRLabel51: TQRLabel;
    QRBand6: TQRBand;
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    QRDBText11: TQRDBText;
    TitleBand1: TQRBand;
    QRLPeriode: TQRLabel;
    QRLabel1: TQRLabel;
    ColumnHeaderBand1: TQRBand;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel25: TQRLabel;
    DetailBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRSysData1: TQRSysData;
    SummaryBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    QRExpr4: TQRExpr;
    QRExpr5: TQRExpr;
    QRExpr6: TQRExpr;
    QRExpr7: TQRExpr;
    QRExpr8: TQRExpr;
    PageFooterBand1: TQRBand;
    QRLabel24: TQRLabel;
    QRLabel52: TQRLabel;
    QRLabel53: TQRLabel;
    QRDBText25: TQRDBText;
    QRDBText26: TQRDBText;
    QRDBText27: TQRDBText;
    QRDBText28: TQRDBText;
    QRExpr17: TQRExpr;
    QRExpr18: TQRExpr;
    QRExpr19: TQRExpr;
    QRExpr20: TQRExpr;
    QRLabel56: TQRLabel;
    QRLabel57: TQRLabel;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRShape18: TQRShape;
    QRShape19: TQRShape;
    QRShape20: TQRShape;
    QRShape21: TQRShape;
    QRShape22: TQRShape;
    QRShape23: TQRShape;
    QRShape24: TQRShape;
    QRShape25: TQRShape;
    QRShape26: TQRShape;
    QRShape27: TQRShape;
    QRShape28: TQRShape;
    QRShape29: TQRShape;
    QRShape30: TQRShape;
    QRShape31: TQRShape;
    QRShape32: TQRShape;
    QRShape33: TQRShape;
    QRShape34: TQRShape;
    QRShape35: TQRShape;
    QRShape36: TQRShape;
    QRShape37: TQRShape;
    QRShape38: TQRShape;
    QRShape39: TQRShape;
    QRShape40: TQRShape;
    QRShape41: TQRShape;
    QRShape42: TQRShape;
    QRShape43: TQRShape;
    QRShape44: TQRShape;
    QRShape45: TQRShape;
    QRShape46: TQRShape;
    QRShape47: TQRShape;
    QRShape48: TQRShape;
    QRShape49: TQRShape;
    QRShape50: TQRShape;
    QRLabel54: TQRLabel;
    QRLabel55: TQRLabel;
    QRDBText24: TQRDBText;
    QRDBText29: TQRDBText;
    QRLabel20: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel58: TQRLabel;
    QRLabel59: TQRLabel;
    QRLabel60: TQRLabel;
    QRShape1: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRShape52: TQRShape;
    QRShape53: TQRShape;
    QRShape54: TQRShape;
    QRShape55: TQRShape;
    QRShape56: TQRShape;
    QRShape58: TQRShape;
    QRShape59: TQRShape;
    QRShape60: TQRShape;
    QRShape61: TQRShape;
    QRShape62: TQRShape;
    QRShape63: TQRShape;
    QRShape64: TQRShape;
    QRShape65: TQRShape;
    QRShape66: TQRShape;
    QRShape67: TQRShape;
    QRShape68: TQRShape;
    QRShape71: TQRShape;
    QRShape72: TQRShape;
    QRShape73: TQRShape;
    QRShape74: TQRShape;
    QRShape75: TQRShape;
    QRShape76: TQRShape;
    QRShape77: TQRShape;
    QRShape78: TQRShape;
    QRShape79: TQRShape;
    QRShape80: TQRShape;
    QRShape81: TQRShape;
    QRShape84: TQRShape;
    QRShape85: TQRShape;
    QRShape86: TQRShape;
    QRLabel61: TQRLabel;
    QRDBText23: TQRDBText;
    QRDBText30: TQRDBText;
    QRLabel49: TQRLabel;
    QuickRep3: TQuickRep;
    QRBand7: TQRBand;
    QRDBText31: TQRDBText;
    QRBand8: TQRBand;
    QRLabel62: TQRLabel;
    QRLabel63: TQRLabel;
    QRBand9: TQRBand;
    QRLabel64: TQRLabel;
    QRLabel65: TQRLabel;
    QRLabel66: TQRLabel;
    QRLabel67: TQRLabel;
    QRLabel68: TQRLabel;
    QRLabel69: TQRLabel;
    QRLabel70: TQRLabel;
    QRLabel71: TQRLabel;
    QRLabel72: TQRLabel;
    QRLabel73: TQRLabel;
    QRLabel74: TQRLabel;
    QRLabel75: TQRLabel;
    QRLabel76: TQRLabel;
    QRShape87: TQRShape;
    QRLabel77: TQRLabel;
    QRBand10: TQRBand;
    QRDBText32: TQRDBText;
    QRDBText33: TQRDBText;
    QRDBText34: TQRDBText;
    QRDBText35: TQRDBText;
    QRDBText36: TQRDBText;
    QRDBText37: TQRDBText;
    QRDBText38: TQRDBText;
    QRDBText39: TQRDBText;
    QRSysData3: TQRSysData;
    QRExpr21: TQRExpr;
    QRBand11: TQRBand;
    QRLabel78: TQRLabel;
    QRExpr22: TQRExpr;
    QRExpr23: TQRExpr;
    QRExpr24: TQRExpr;
    QRExpr25: TQRExpr;
    QRExpr26: TQRExpr;
    QRExpr27: TQRExpr;
    QRExpr28: TQRExpr;
    QRExpr29: TQRExpr;
    QRShape88: TQRShape;
    QRShape89: TQRShape;
    QRBand12: TQRBand;
    QRDBText40: TQRDBText;
    QRDBText41: TQRDBText;
    QRExpr30: TQRExpr;
    QRExpr31: TQRExpr;
    QRLabel85: TQRLabel;
    QRLabel87: TQRLabel;
    QRShape90: TQRShape;
    QRShape91: TQRShape;
    QRShape92: TQRShape;
    QRSysData4: TQRSysData;
    QRImage1: TQRImage;
    QRLabel27: TQRLabel;
    QRImage2: TQRImage;
    QRSysData5: TQRSysData;
    QRShape93: TQRShape;
    QRShape94: TQRShape;
    QRShape95: TQRShape;
    QRShape96: TQRShape;
    QRLabel88: TQRLabel;
    QRLabel89: TQRLabel;
    QRLabel90: TQRLabel;
    QRShape97: TQRShape;
    QRShape51: TQRShape;
    QRShape57: TQRShape;
    QRExpr32: TQRExpr;
    QRExpr33: TQRExpr;
    QRDBText42: TQRDBText;
    QRDBText43: TQRDBText;
    QRShape69: TQRShape;
    QRShape70: TQRShape;
    QRLabel38: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel44: TQRLabel;
    QRShape82: TQRShape;
    QRShape83: TQRShape;
    QRShape98: TQRShape;
    QRShape99: TQRShape;
    QRDBText44: TQRDBText;
    QRDBText45: TQRDBText;
    QRExpr34: TQRExpr;
    QRExpr35: TQRExpr;
    QRDBText46: TQRDBText;
    QTransaksiDOC_ISO: TStringField;
    QRLabel86: TQRLabel;
    QRLabel91: TQRLabel;
    QRLabel92: TQRLabel;
    QRDBText47: TQRDBText;
    QRDBText48: TQRDBText;
    QRDBText49: TQRDBText;
    QRDBText50: TQRDBText;
    QRDBText51: TQRDBText;
    QRDBText52: TQRDBText;
    QRDBText53: TQRDBText;
    QRDBText54: TQRDBText;
    QRDBText55: TQRDBText;
    QRDBText56: TQRDBText;
    QRDBText57: TQRDBText;
    QRDBText58: TQRDBText;
    QRDBText59: TQRDBText;
    QuickRep4: TQuickRep;
    TitleBand2: TQRBand;
    DetailBand2: TQRBand;
    SummaryBand2: TQRBand;
    QRLabel17: TQRLabel;
    QRLPeriod: TQRLabel;
    ColumnHeaderBand2: TQRBand;
    QRLabel19: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel79: TQRLabel;
    QRLabel80: TQRLabel;
    QRLabel81: TQRLabel;
    QRLabel82: TQRLabel;
    QRLabel83: TQRLabel;
    QRLabel84: TQRLabel;
    QRLabel93: TQRLabel;
    QRLabel94: TQRLabel;
    QRLabel96: TQRLabel;
    QRLabel97: TQRLabel;
    QRLabel98: TQRLabel;
    QRLabel99: TQRLabel;
    QRLabel100: TQRLabel;
    QRLabel101: TQRLabel;
    QRLabel120: TQRLabel;
    QRLabel121: TQRLabel;
    QRLabel122: TQRLabel;
    QRLabel123: TQRLabel;
    QRLabel124: TQRLabel;
    QRLabel125: TQRLabel;
    QRLabel126: TQRLabel;
    QRLabel127: TQRLabel;
    QRShape100: TQRShape;
    QRShape101: TQRShape;
    QRShape102: TQRShape;
    QRShape103: TQRShape;
    QRShape104: TQRShape;
    QRShape105: TQRShape;
    QRShape106: TQRShape;
    QRShape107: TQRShape;
    QRShape108: TQRShape;
    QRShape109: TQRShape;
    QRShape110: TQRShape;
    QRShape111: TQRShape;
    QRShape112: TQRShape;
    QRShape113: TQRShape;
    QRShape114: TQRShape;
    QRShape115: TQRShape;
    QRShape116: TQRShape;
    QRDBText60: TQRDBText;
    QRDBText61: TQRDBText;
    QRShape117: TQRShape;
    QRShape118: TQRShape;
    QRShape119: TQRShape;
    QRShape120: TQRShape;
    QRShape121: TQRShape;
    QRShape122: TQRShape;
    QRShape123: TQRShape;
    QRShape124: TQRShape;
    QRShape125: TQRShape;
    QRShape126: TQRShape;
    QRShape127: TQRShape;
    QRShape128: TQRShape;
    QRShape129: TQRShape;
    QRShape130: TQRShape;
    QRShape131: TQRShape;
    QRDBText62: TQRDBText;
    QRDBText63: TQRDBText;
    QRDBText64: TQRDBText;
    QRDBText65: TQRDBText;
    QRDBText66: TQRDBText;
    QRDBText67: TQRDBText;
    QRDBText68: TQRDBText;
    QRDBText69: TQRDBText;
    QRDBText70: TQRDBText;
    QRDBText71: TQRDBText;
    QRDBText72: TQRDBText;
    QRDBText73: TQRDBText;
    QRDBText74: TQRDBText;
    QRDBText75: TQRDBText;
    QRExpr36: TQRExpr;
    QRExpr37: TQRExpr;
    QRShape132: TQRShape;
    QRShape133: TQRShape;
    QRShape135: TQRShape;
    QRShape136: TQRShape;
    QRShape137: TQRShape;
    QRShape138: TQRShape;
    QRShape139: TQRShape;
    QRShape140: TQRShape;
    QRShape141: TQRShape;
    QRShape142: TQRShape;
    QRShape143: TQRShape;
    QRShape144: TQRShape;
    QRShape145: TQRShape;
    QRShape146: TQRShape;
    QRShape147: TQRShape;
    QRShape148: TQRShape;
    QRExpr38: TQRExpr;
    QRExpr39: TQRExpr;
    QRExpr40: TQRExpr;
    QRExpr41: TQRExpr;
    QRExpr42: TQRExpr;
    QRExpr43: TQRExpr;
    QRExpr44: TQRExpr;
    QRExpr45: TQRExpr;
    QRExpr46: TQRExpr;
    QRExpr47: TQRExpr;
    QRExpr48: TQRExpr;
    QRImage3: TQRImage;
    QRExpr49: TQRExpr;
    QRShape149: TQRShape;
    QRLabel22: TQRLabel;
    QRLabel95: TQRLabel;
    QRLTanggal: TQRLabel;
    QRLabel103: TQRLabel;
    QRLabel104: TQRLabel;
    QRLabel105: TQRLabel;
    QRLabel106: TQRLabel;
    QRLabel107: TQRLabel;
    QRLUser: TQRLabel;
    QuickRep5: TQuickRep;
    QRBand13: TQRBand;
    QRLabel102: TQRLabel;
    QRLPeriod2: TQRLabel;
    QRImage4: TQRImage;
    QRBand14: TQRBand;
    QRDBText76: TQRDBText;
    QRDBText77: TQRDBText;
    QRShape134: TQRShape;
    QRShape150: TQRShape;
    QRShape151: TQRShape;
    QRShape152: TQRShape;
    QRShape153: TQRShape;
    QRShape154: TQRShape;
    QRShape155: TQRShape;
    QRShape156: TQRShape;
    QRShape157: TQRShape;
    QRShape158: TQRShape;
    QRShape159: TQRShape;
    QRShape160: TQRShape;
    QRShape161: TQRShape;
    QRShape162: TQRShape;
    QRShape163: TQRShape;
    QRDBText78: TQRDBText;
    QRDBText79: TQRDBText;
    QRDBText80: TQRDBText;
    QRDBText81: TQRDBText;
    QRDBText82: TQRDBText;
    QRDBText83: TQRDBText;
    QRDBText84: TQRDBText;
    QRDBText85: TQRDBText;
    QRDBText86: TQRDBText;
    QRDBText87: TQRDBText;
    QRDBText88: TQRDBText;
    QRDBText89: TQRDBText;
    QRDBText90: TQRDBText;
    QRDBText91: TQRDBText;
    QRBand15: TQRBand;
    QRExpr50: TQRExpr;
    QRExpr51: TQRExpr;
    QRShape164: TQRShape;
    QRShape165: TQRShape;
    QRShape166: TQRShape;
    QRShape167: TQRShape;
    QRShape168: TQRShape;
    QRShape169: TQRShape;
    QRShape170: TQRShape;
    QRShape171: TQRShape;
    QRShape172: TQRShape;
    QRShape173: TQRShape;
    QRShape174: TQRShape;
    QRShape175: TQRShape;
    QRShape176: TQRShape;
    QRShape177: TQRShape;
    QRShape178: TQRShape;
    QRShape179: TQRShape;
    QRExpr52: TQRExpr;
    QRExpr53: TQRExpr;
    QRExpr54: TQRExpr;
    QRExpr55: TQRExpr;
    QRExpr56: TQRExpr;
    QRExpr57: TQRExpr;
    QRExpr58: TQRExpr;
    QRExpr59: TQRExpr;
    QRExpr60: TQRExpr;
    QRExpr61: TQRExpr;
    QRExpr62: TQRExpr;
    QRExpr63: TQRExpr;
    QRShape180: TQRShape;
    QRLabel109: TQRLabel;
    QRLabel110: TQRLabel;
    QRLTgl1: TQRLabel;
    QRLabel112: TQRLabel;
    QRLabel113: TQRLabel;
    QRLabel114: TQRLabel;
    QRLabel115: TQRLabel;
    QRLabel116: TQRLabel;
    QRLUser1: TQRLabel;
    QRBand17: TQRBand;
    QRLabel118: TQRLabel;
    QRLabel119: TQRLabel;
    QRLabel128: TQRLabel;
    QRLabel129: TQRLabel;
    QRLabel130: TQRLabel;
    QRLabel131: TQRLabel;
    QRLabel132: TQRLabel;
    QRLabel133: TQRLabel;
    QRLabel134: TQRLabel;
    QRLabel135: TQRLabel;
    QRLabel136: TQRLabel;
    QRLabel137: TQRLabel;
    QRLabel138: TQRLabel;
    QRLabel139: TQRLabel;
    QRLabel140: TQRLabel;
    QRLabel141: TQRLabel;
    QRLabel142: TQRLabel;
    QRLabel143: TQRLabel;
    QRLabel144: TQRLabel;
    QRLabel145: TQRLabel;
    QRLabel146: TQRLabel;
    QRLabel147: TQRLabel;
    QRLabel148: TQRLabel;
    QRLabel149: TQRLabel;
    QRLabel150: TQRLabel;
    QRShape181: TQRShape;
    QRShape182: TQRShape;
    QRShape183: TQRShape;
    QRShape184: TQRShape;
    QRShape185: TQRShape;
    QRShape186: TQRShape;
    QRShape187: TQRShape;
    QRShape188: TQRShape;
    QRShape189: TQRShape;
    QRShape190: TQRShape;
    QRShape191: TQRShape;
    QRShape192: TQRShape;
    QRShape193: TQRShape;
    QRShape194: TQRShape;
    QRShape195: TQRShape;
    QRShape196: TQRShape;
    QRShape197: TQRShape;
    QRShape198: TQRShape;
    QRShape199: TQRShape;
    QRLabel151: TQRLabel;
    QRShape200: TQRShape;
    QRLabel152: TQRLabel;
    QRLabel153: TQRLabel;
    QRShape201: TQRShape;
    QRShape202: TQRShape;
    QRShape203: TQRShape;
    QRLabel154: TQRLabel;
    QRShape204: TQRShape;
    QRLabel155: TQRLabel;
    QRLabel156: TQRLabel;
    QRShape205: TQRShape;
    QRShape206: TQRShape;
    QRShape207: TQRShape;
    QRDBText92: TQRDBText;
    QRDBText93: TQRDBText;
    QRExpr64: TQRExpr;
    QRExpr65: TQRExpr;
    QRDBText94: TQRDBText;
    QRDBText95: TQRDBText;
    QRShape208: TQRShape;
    QRExpr66: TQRExpr;
    QRExpr67: TQRExpr;
    QRShape209: TQRShape;
    QBrowse2: TOracleDataSet;
    QBrowseKD_ITEM: TStringField;
    QBrowseNAMA_ITEM: TStringField;
    QBrowseAWAL: TFloatField;
    QBrowseAWAL2: TFloatField;
    QBrowseIN_BON_KG: TFloatField;
    QBrowseIN_BON_BALL: TFloatField;
    QBrowseIN_RETUR_KG: TFloatField;
    QBrowseIN_RETUR_BALL: TFloatField;
    QBrowseIN_KOREKSI_KG: TFloatField;
    QBrowseIN_KOREKSI_BALL: TFloatField;
    QBrowseOUT_HASIL_KG: TFloatField;
    QBrowseOUT_HASIL_BALL: TFloatField;
    QBrowseOUT_RETUR_KG: TFloatField;
    QBrowseOUT_RETUR_BALL: TFloatField;
    QBrowseOUT_KOREKSI_KG: TFloatField;
    QBrowseOUT_KOREKSI_BALL: TFloatField;
    QBrowseAKHIR: TFloatField;
    QBrowseAKHIR2: TFloatField;
    dsQBrowse2: TwwDataSource;
    QBrowse2KD_ITEM: TStringField;
    QBrowse2NAMA_ITEM: TStringField;
    QBrowse2AWAL: TFloatField;
    QBrowse2AWAL2: TFloatField;
    QBrowse2IN_HASIL_KG: TFloatField;
    QBrowse2IN_HASIL_PCS: TFloatField;
    QBrowse2IN_RETUR_KG: TFloatField;
    QBrowse2IN_RETUR_PCS: TFloatField;
    QBrowse2IN_REPRO_KG: TFloatField;
    QBrowse2IN_REPRO_PCS: TFloatField;
    QBrowse2IN_KOREKSI_KG: TFloatField;
    QBrowse2IN_KOREKSI_PCS: TFloatField;
    QBrowse2OUT_ST_KG: TFloatField;
    QBrowse2OUT_ST_PCS: TFloatField;
    QBrowse2OUT_PROSES_KG: TFloatField;
    QBrowse2OUT_PROSES_PCS: TFloatField;
    QBrowse2OUT_KOREKSI_KG: TFloatField;
    QBrowse2OUT_KOREKSI_PCS: TFloatField;
    QBrowse2AKHIR: TFloatField;
    QBrowse2AKHIR2: TFloatField;
    PanelRiwayat: TPanel;
    wwDBGridSoft0: TwwDBGrid;
    PanelTop: TPanel;
    QBrowseDetail0: TOracleDataSet;
    dsQBrowseDetail0: TwwDataSource;
    QBrowseDetail0TGL: TDateTimeField;
    QBrowseDetail0NO_NOTA: TStringField;
    QBrowseDetail0QTY_IN: TFloatField;
    QBrowseDetail0QTY_IN2: TFloatField;
    QBrowseDetail0QTY_OUT: TFloatField;
    QBrowseDetail0QTY_OUT2: TFloatField;
    QBrowseDetail0KETERANGAN: TStringField;
    cbRiwayat: TCheckBox;
    QBrowseDetail1: TOracleDataSet;
    dsQBrowseDetail1: TwwDataSource;
    wwDBGridSoft1: TwwDBGrid;
    QBrowseDetail1TGL: TDateTimeField;
    QBrowseDetail1NO_NOTA: TStringField;
    QBrowseDetail1QTY_IN: TFloatField;
    QBrowseDetail1QTY_IN2: TFloatField;
    QBrowseDetail1QTY_OUT: TFloatField;
    QBrowseDetail1QTY_OUT2: TFloatField;
    QBrowseDetail1KETERANGAN: TStringField;
    WebBrowser1: TWebBrowser;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure BtnExportClick(Sender: TObject);
    procedure BtnOkClick(Sender: TObject);
    procedure wwDBGrid2TitleButtonClick(Sender: TObject;
      AFieldName: String);
    procedure BtnClose1Click(Sender: TObject);
    procedure wwDBSpinLine2Change(Sender: TObject);
    procedure BtnFindClick(Sender: TObject);
    procedure Label5Click(Sender: TObject);
    procedure LookItemEnter(Sender: TObject);
    procedure QTransaksiBeforeOpen(DataSet: TDataSet);
    procedure vTglAwalChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure QBrowseAfterScroll(DataSet: TDataSet);
    procedure wwDBGrid2DblClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure cbAdaTransaksiClick(Sender: TObject);
    procedure QBrowseFilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure TitleBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure BtnPrintBrowseClick(Sender: TObject);
    procedure SummaryBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand6BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand5BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure BtnPrintBrowse1Click(Sender: TObject);
    procedure QRBand8BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure RadioGroup1Click(Sender: TObject);
    procedure TitleBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure SummaryBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand13BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand15BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QBrowseCalcFields(DataSet: TDataSet);
    procedure wwDBGrid1TitleButtonClick(Sender: TObject;
      AFieldName: String);
    procedure QBrowse2FilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure QBrowse2AfterScroll(DataSet: TDataSet);
    procedure QBrowse2CalcFields(DataSet: TDataSet);
    procedure wwDBGrid1RowChanged(Sender: TObject);
    procedure cbRiwayatClick(Sender: TObject);
    procedure wwDBGrid2RowChanged(Sender: TObject);
    procedure WebBrowser1DocumentComplete(Sender: TObject;
      const pDisp: IDispatch; var URL: OleVariant);
  private
    { Private declarations }
    vorder, SelectedFont, vkode, vitem : String;
      t1, t2, t3, t4, t5, t6 : real;
      t7, t8, t9, t10, t11, t12, t13, t14, t15, t16, t17, t18 : real;
  public
    { Public declarations }

  end;

var
  InfoRealisasiPOFrm: TInfoRealisasiPOFrm;

Procedure ShowForm(pNamaMenu:String; pkode : String; pjudul : string; pbrg : string);

implementation

uses DM, Pembelian, Kriteria_Tanggal1, KartuStokBB;

{$R *.dfm}

procedure ShowForm(pNamaMenu:String; pkode : String; pjudul : string; pbrg : String);
var
  mychar : string[125];
Begin
// Hak Menu
  DMFrm.cHakInput:=DMFrm.QMenuUser.Lookup('NAMA_COMPONENT',pNamaMenu,'HAK_INPUT')='1';
  DMFrm.cBtnDesign:=DMFrm.QMenuUser.Lookup('NAMA_COMPONENT',pNamaMenu,'HAK_DESIGN')='1';
  DMFrm.cBtnExport:=DMFrm.QMenuUser.Lookup('NAMA_COMPONENT',pNamaMenu,'HAK_EXPORT')='1';

//  if InfoRealisasiPOFrm=Nil then
  begin
    InfoRealisasiPOFrm:=TInfoRealisasiPOFrm.Create(Application);
    mychar:=pjudul;
    Delete(mychar,Pos('&',mychar),1);
    pjudul:=mychar;
    InfoRealisasiPOFrm.vkode:=pbrg;
    InfoRealisasiPOFrm.QTransaksi.Open;


    InfoRealisasiPOFrm.PanelHeader.Caption:=pjudul+' - '+'LAPORAN PRODUKSI SOFTCONE';
    InfoRealisasiPOFrm.Caption:=UpperCase(InfoRealisasiPOFrm.PanelHeader.Caption);
    InfoRealisasiPOFrm.wwDBGrid2.IniAttributes.FileName:=DMFrm.sAppPath+Application.Title+'2.ini';
    InfoRealisasiPOFrm.wwDBGrid2.IniAttributes.SectionName:=InfoRealisasiPOFrm.Caption+'2';
    InfoRealisasiPOFrm.wwDBGrid2.IniAttributes.Enabled:=True;
    InfoRealisasiPOFrm.wwDBGrid2.LoadFromIniFile;
    DMFrm.ProcReadIni(Application.Title,InfoRealisasiPOFrm.Caption+'2',InfoRealisasiPOFrm.wwDBGrid2);
    InfoRealisasiPOFrm.wwDBSpinLine2.Value:=InfoRealisasiPOFrm.wwDBGrid2.RowHeightPercent;

  end;

  InfoRealisasiPOFrm.Show;
end;

procedure TInfoRealisasiPOFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   DMFrm.ProcWtiteIni(Application.Title,Caption+'2',wwDBGrid2);
   Action:=caFree;
   InfoRealisasiPOFrm:=Nil;
   QuickRep1:=Nil;
   QuickRep2:=Nil;
   QuickRep3:=Nil;
end;

procedure TInfoRealisasiPOFrm.FormCreate(Sender: TObject);
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

  BtnClose1.Glyph.LoadFromFile(DMFrm.sAppPath+'Images\CLOSE.Bmp');
  BtnOk.Glyph.LoadFromFile(DMFrm.sAppPath+'Images\CHECK.Bmp');
  BtnOk2.Glyph.LoadFromFile(DMFrm.sAppPath+'Images\CHECK.Bmp');
  BtnFind.Glyph.LoadFromFile(DMFrm.sAppPath+'Images\FIND.Bmp');
  BtnPrintBrowse.Glyph.LoadFromFile(DMFrm.sAppPath+'Images\PRINT.Bmp');
  BtnPrintBrowse1.Glyph.LoadFromFile(DMFrm.sAppPath+'Images\PRINT.Bmp');  
  BtnExport.Glyph.LoadFromFile(DMFrm.sAppPath+'Images\EXPORT.Bmp');
//Otoritas Button
  BtnExport.Visible:=DMFrm.cBtnExport;
end;

procedure TInfoRealisasiPOFrm.BtnExportClick(Sender: TObject);
begin
QBrowse.Active ;
 // if QBrowse.Active then
 // begin
  if radiogroup1.ItemIndex=0 then
  begin
     DMFrm.SaveDialog1.DefaultExt:='XLK';
     DMFrm.SaveDialog1.Filter:='Excel files (*.XLK)|*.XLK';
     DMFrm.SaveDialog1.FileName:=PanelHeader.Caption+' '+ vTglAwal.Text+' sd '+vTglAkhir.Text+'.xlK';
     wwDBGrid1.ExportOptions.TitleName:='DALAM PRODUKSI SOFTCONES';
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
 { end
  else
    ShowMessage('Tabel belum di-OPEN !');   }
    end
   else
    begin
     DMFrm.SaveDialog1.DefaultExt:='XLK';
     DMFrm.SaveDialog1.Filter:='Excel files (*.XLK)|*.XLK';
     DMFrm.SaveDialog1.FileName:=PanelHeader.Caption+' '+ vTglAwal.Text+' sd '+vTglAkhir.Text+'.xlK';
     wwDBGrid2.ExportOptions.TitleName:='HASIL PRODUKSI SOFTCONES';
       if DMFrm.SaveDialog1.Execute then
       begin
         try
         wwDBGrid2.ExportOptions.FileName:=DMFrm.SaveDialog1.FileName;
         wwDBGrid2.ExportOptions.Save;
         ShowMessage('Simpan Sukses !');
         except
         ShowMessage('Simpan Gagal !');
         end;
       end;

    end;
end;

procedure TInfoRealisasiPOFrm.BtnOkClick(Sender: TObject);
begin
  PanelRiwayat.Visible:=cbRiwayat.Checked;
  //cbRiwayat.Checked:=false;

  t1:=0; t2:=0; t3:=0; t4:=0; t5:=0; t6:=0;
  t7:=0; t8:=0; t9:=0; t10:=0; t11:=0; t12:=0;
  t13:=0; t14:=0; t15:=0; t16:=0; t17:=0; t18:=0;
  if RadioGroup1.ItemIndex=0 then
  begin
    QDump.Close;
    QDump.SetVariable('vsysdate',vTglAwal.Date);
    QDump.SetVariable('vsysdate2',vTglAkhir.Date);
    QDump.Execute;
    wwDBGrid1.BringToFront;

    if QBrowse.QBEMode then QBrowse.QBEMode:=False;
    QBrowse.DisableControls;
    QBrowse.Close;
    QBrowse.SetVariable('vorder', vorder);
    QBrowse.Open;

    while not QBrowse.Eof do
    begin
      t1:=t1+QBrowseAWAL.AsFloat;
      t2:=t2+QBrowseAWAL2.AsFloat;
      t3:=t3+QBrowseIN_BON_KG.AsFloat;
      t4:=t4+QBrowseIN_RETUR_KG.AsFloat;
      t5:=t5+QBrowseIN_KOREKSI_KG.AsFloat;
      t6:=t6+QBrowseIN_BON_BALL.AsFloat;
      t7:=t7+QBrowseIN_RETUR_BALL.AsFloat;
      t8:=t8+QBrowseIN_KOREKSI_BALL.AsFloat;
      t9:=t9+QBrowseOUT_HASIL_KG.AsFloat;
      t10:=t10+QBrowseOUT_RETUR_KG.AsFloat;
      t11:=t11+QBrowseOUT_KOREKSI_KG.AsFloat;
      t12:=t12+QBrowseOUT_HASIL_BALL.AsFloat;
      t13:=t13+QBrowseOUT_RETUR_BALL.AsFloat;
      t14:=t14+QBrowseOUT_KOREKSI_BALL.AsFloat;
      t15:=t15+QBrowseAKHIR.AsFloat;
      t16:=t16+QBrowseAKHIR2.AsFloat;
      QBrowse.Next;
    end;
    QBrowse.EnableControls;

    wwDBGrid1.ColumnByName('AWAL').FooterValue:=FormatFloat('#,0.00;-#,0.00;-',t1);
    wwDBGrid1.ColumnByName('AWAL2').FooterValue:=FormatFloat('#,0.0000;-#,0.0000;-',t2);
    wwDBGrid1.ColumnByName('IN_BON_KG').FooterValue:=FormatFloat('#,0.00;-#,0.00;-',t3);
    wwDBGrid1.ColumnByName('IN_RETUR_KG').FooterValue:=FormatFloat('#,0.00;-#,0.00;-',t4);
    wwDBGrid1.ColumnByName('IN_KOREKSI_KG').FooterValue:=FormatFloat('#,0.00;-#,0.00;-',t5);
    wwDBGrid1.ColumnByName('IN_BON_BALL').FooterValue:=FormatFloat('#,0.0000;-#,0.0000;-',t6);
    wwDBGrid1.ColumnByName('IN_RETUR_BALL').FooterValue:=FormatFloat('#,0.0000;-#,0.0000;-',t7);
    wwDBGrid1.ColumnByName('IN_KOREKSI_BALL').FooterValue:=FormatFloat('#,0.0000;-#,0.0000;-',t8);
    wwDBGrid1.ColumnByName('OUT_HASIL_KG').FooterValue:=FormatFloat('#,0.00;-#,0.00;-',t9);
    wwDBGrid1.ColumnByName('OUT_RETUR_KG').FooterValue:=FormatFloat('#,0.00;-#,0.00;-',t10);
    wwDBGrid1.ColumnByName('OUT_KOREKSI_KG').FooterValue:=FormatFloat('#,0.00;-#,0.00;-',t11);
    wwDBGrid1.ColumnByName('OUT_HASIL_BALL').FooterValue:=FormatFloat('#,0.0000;-#,0.0000;-',t12);
    wwDBGrid1.ColumnByName('OUT_RETUR_BALL').FooterValue:=FormatFloat('#,0.0000;-#,0.0000;-',t13);
    wwDBGrid1.ColumnByName('OUT_KOREKSI_BALL').FooterValue:=FormatFloat('#,0.0000;-#,0.0000;-',t14);
    wwDBGrid1.ColumnByName('AKHIR').FooterValue:=FormatFloat('#,0.00;-#,0.00;-',t15);
    wwDBGrid1.ColumnByName('AKHIR2').FooterValue:=FormatFloat('#,0.0000;-#,0.0000;-',t16);
  end
  else
  begin

    QDump2.Close;
    QDump2.SetVariable('vsysdate',vTglAwal.Date);
    QDump2.SetVariable('vsysdate2',vTglAkhir.Date);
    QDump2.Execute;
    wwDBGrid2.BringToFront;

    if QBrowse2.QBEMode then QBrowse2.QBEMode:=False;
    QBrowse2.DisableControls;
    QBrowse2.Close;
    QBrowse2.SetVariable('vorder', vorder);
    QBrowse2.Open;

    while not QBrowse2.Eof do
    begin
      t1:=t1+QBrowse2AWAL.AsFloat;
      t2:=t2+QBrowse2AWAL2.AsFloat;
      t3:=t3+QBrowse2IN_HASIL_KG.AsFloat;
      t4:=t4+QBrowse2IN_HASIL_PCS.AsFloat;
      t5:=t5+QBrowse2IN_RETUR_KG.AsFloat;
      t6:=t6+QBrowse2IN_RETUR_PCS.AsFloat;
      t7:=t7+QBrowse2IN_REPRO_KG.AsFloat;
      t8:=t8+QBrowse2IN_REPRO_PCS.AsFloat;
      t9:=t9+QBrowse2IN_KOREKSI_KG.AsFloat;
      t10:=t10+QBrowse2IN_KOREKSI_PCS.AsFloat;
      t11:=t11+QBrowse2OUT_ST_KG.AsFloat;
      t12:=t12+QBrowse2OUT_ST_PCS.AsFloat;
      t13:=t13+QBrowse2OUT_PROSES_KG.AsFloat;
      t14:=t14+QBrowse2OUT_PROSES_PCS.AsFloat;
      t15:=t15+QBrowse2OUT_KOREKSI_KG.AsFloat;
      t16:=t16+QBrowse2OUT_KOREKSI_PCS.AsFloat;
      t17:=t17+QBrowse2Akhir.Asfloat;
      t18:=t18+QBrowse2Akhir2.Asfloat;

      QBrowse2.Next;
    end;
    QBrowse2.EnableControls;

    wwDBGrid2.ColumnByName('AWAL').FooterValue:=FormatFloat('#,0.0000;-#,0.0000;-',t1);
    wwDBGrid2.ColumnByName('AWAL2').FooterValue:=FormatFloat('#,0;-#,0;-',t2);
    wwDBGrid2.ColumnByName('IN_HASIL_KG').FooterValue:=FormatFloat('#,0.0000;-#,0.0000;-',t3);
    wwDBGrid2.ColumnByName('IN_HASIL_PCS').FooterValue:=FormatFloat('#,0;-#,0;-',t4);
    wwDBGrid2.ColumnByName('IN_RETUR_KG').FooterValue:=FormatFloat('#,0.0000;-#,0.0000;-',t5);
    wwDBGrid2.ColumnByName('IN_RETUR_PCS').FooterValue:=FormatFloat('#,0;-#,0;-',t6);
    wwDBGrid2.ColumnByName('IN_REPRO_KG').FooterValue:=FormatFloat('#,0.0000;-#,0.0000;-',t7);
    wwDBGrid2.ColumnByName('IN_REPRO_PCS').FooterValue:=FormatFloat('#,0;-#,0;-',t8);
    wwDBGrid2.ColumnByName('IN_KOREKSI_KG').FooterValue:=FormatFloat('#,0.0000;-#,0.0000;-',t9);
    wwDBGrid2.ColumnByName('IN_KOREKSI_PCS').FooterValue:=FormatFloat('#,0;-#,0;-',t10);
    wwDBGrid2.ColumnByName('OUT_ST_KG').FooterValue:=FormatFloat('#,0.0000;-#,0.0000;-',t11);
    wwDBGrid2.ColumnByName('OUT_ST_PCS').FooterValue:=FormatFloat('#,0;-#,0;-',t12);
    wwDBGrid2.ColumnByName('OUT_PROSES_KG').FooterValue:=FormatFloat('#,0.0000;-#,0.0000;-',t13);
    wwDBGrid2.ColumnByName('OUT_PROSES_PCS').FooterValue:=FormatFloat('#,0;-#,0;-',t14);
    wwDBGrid2.ColumnByName('OUT_KOREKSI_KG').FooterValue:=FormatFloat('#,0.0000;-#,0.0000;-',t15);
    wwDBGrid2.ColumnByName('OUT_KOREKSI_PCS').FooterValue:=FormatFloat('#,0;-#,0;-',t16);
    wwDBGrid2.ColumnByName('AKHIR').FooterValue:=FormatFloat('#,0.0000;-#,0.0000;-',t17);
    wwDBGrid2.ColumnByName('AKHIR2').FooterValue:=FormatFloat('#,0;-#,0;-',t18);

  end;
end;

procedure TInfoRealisasiPOFrm.wwDBGrid2TitleButtonClick(Sender: TObject;
  AFieldName: String);
begin
  if QBrowse2.FieldByName(AFieldName).FieldKind=fkData then
  begin
    vorder:='order by '+AFieldName;
    BtnOkClick(Nil);
  end
  else
    ShowMessage('Maaf, tidak bisa Urut menurut kolom '+AFieldName+' !');
end;

procedure TInfoRealisasiPOFrm.BtnClose1Click(Sender: TObject);
begin
  Close;
end;

procedure TInfoRealisasiPOFrm.wwDBSpinLine2Change(Sender: TObject);
begin
    wwDBGrid2.RowHeightPercent:=Round(wwDBSpinLine2.Value);
end;

procedure TInfoRealisasiPOFrm.BtnFindClick(Sender: TObject);
begin
	wwDBGrid2.ColumnByName('NILAI').FooterValue:='';;
  if not QBrowse.QBEMode then
  begin
    wwDBGrid2.Options:=wwDBGrid2.Options-[dgRowSelect,dgAlwaysShowSelection];
    QBrowse.QBEMode:=TRUE;
  end
  else
    QBrowse.ClearQBE;

  PanelRiwayat.Visible:=False;
  cbRiwayat.Checked:=false;
end;

procedure TInfoRealisasiPOFrm.Label5Click(Sender: TObject);
begin
  if DMFrm.FontDialog1.Execute then
  begin
    wwDBGrid2.Font.Name:=DMFrm.FontDialog1.Font.Name;
    wwDBGrid2.Font.Size:=DMFrm.FontDialog1.Font.Size;
    wwDBGrid2.Font.Color:=DMFrm.FontDialog1.Font.Color;
    wwDBGrid2.Font.Style:=DMFrm.FontDialog1.Font.Style;
  end;
end;

procedure TInfoRealisasiPOFrm.LookItemEnter(Sender: TObject);
begin
  (sender as TwwDBLookupComboDlg).LookupTable.Open;
end;

procedure TInfoRealisasiPOFrm.QTransaksiBeforeOpen(DataSet: TDataSet);
begin
  QTransaksi.DeclareVariable('kd_transaksi', otString);
  QTransaksi.SQL.Text:='select a.* from '+cUserTabel+'vtransaksi a where a.kd_transaksi=:kd_transaksi';
  QTransaksi.SetVariable('kd_transaksi','L01');
end;

procedure TInfoRealisasiPOFrm.vTglAwalChange(Sender: TObject);
begin
  vTglAkhir.DateTime:=EndOfTheMonth(vTglAwal.Date);
end;

procedure TInfoRealisasiPOFrm.FormShow(Sender: TObject);
begin
    vTglAwal.Date:=Trunc(DMFrm.QTimeJAM.AsDateTime);
    vTglAkhir.Date:=Trunc(DMFrm.QTimeJAM.AsDateTime);
    QTransaksi.Open;
end;

procedure TInfoRealisasiPOFrm.QBrowseAfterScroll(DataSet: TDataSet);
begin
  LabelBanner.Caption:='Record ke '+IntToStr(QBrowse.RecNo)+' dari '+FormatFloat('#,#',QBrowse.RecordCount)+' Records';
end;

procedure TInfoRealisasiPOFrm.wwDBGrid2DblClick(Sender: TObject);
begin
//   KartuStokBB.ShowForm(PanelHeader.Caption,QBrowseKD_ITEM.AsString, vkode,vTglAwal.Date, vTglAkhir.Date, QBrowseAWAL1.AsFloat, QBrowseAWAL2.AsFloat );
end;

procedure TInfoRealisasiPOFrm.BitBtn1Click(Sender: TObject);
begin
  wwDBGrid2DblClick(nil);
end;

procedure TInfoRealisasiPOFrm.cbAdaTransaksiClick(Sender: TObject);
begin
  if RadioGroup1.ItemIndex=0 then
    QBrowse.Filtered:=cbAdaTransaksi.Checked
  else
    QBrowse2.Filtered:=cbAdaTransaksi.Checked;
end;

procedure TInfoRealisasiPOFrm.QBrowseFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
    Accept:=
    ((QBrowseAWAL.AsFloat)<>0) or
    ((QBrowseAWAL2.AsFloat)<>0) or
    ((QBrowseIN_BON_KG.AsFloat)<>0) or
    ((QBrowseIN_BON_BALL.AsFloat)<>0) or
    ((QBrowseIN_RETUR_KG.AsFloat)<>0) or
    ((QBrowseIN_RETUR_BALL.AsFloat)<>0) or
    ((QBrowseIN_KOREKSI_KG.AsFloat)<>0) or
    ((QBrowseIN_KOREKSI_BALL.AsFloat)<>0) or
    ((QBrowseOUT_HASIL_KG.AsFloat)<>0) or
    ((QBrowseOUT_HASIL_BALL.AsFloat)<>0) or
    ((QBrowseOUT_RETUR_KG.AsFloat)<>0) or
    ((QBrowseOUT_RETUR_BALL.AsFloat)<>0) or
    ((QBrowseOUT_KOREKSI_KG.AsFloat)<>0) or
    ((QBrowseOUT_KOREKSI_BALL.AsFloat)<>0) or
    ((QBrowseAKHIR.AsFloat)<>0) or
    ((QBrowseAKHIR2.AsFloat)<>0);


end;

procedure TInfoRealisasiPOFrm.TitleBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLPeriode.Caption:=vTglAwal.Text+' s/d '+vTglAkhir.Text;
end;

procedure TInfoRealisasiPOFrm.BtnPrintBrowseClick(Sender: TObject);
var radio : Integer;

  HTMLContent: TStringList;
  i: Integer;
  FieldName: String;
  FileName: string;
  t1, t2, t3, t4, t5, t6, t7, t8, t9, t10, t11, t12, t13, t14, t15, t16 : Real;
  vAdm: String;
begin
  { print pakai quikrep
  radio := RadioGroup1.ItemIndex;
  if radio=1 then
    QuickRep5.Preview // HP SOFTCONE
  else
    QuickRep4.Preview; // BDP SOFTCONE
  }

  if DMFrm.QDateTimeUSER.AsString='OBETH' then vAdm:= 'Ubaidillah'
  else if DMFrm.QDateTimeUSER.AsString='BURHANUDIN' then vAdm:= 'Burhanudin'
  else if DMFrm.QDateTimeUSER.AsString='AMRI_KH' then vAdm:= 'M. Khoirul Amri'
  else vAdm:= DMFrm.QDateTimeUSER.AsString;


  WebBrowser1.BringToFront;
  HTMLContent := TStringList.Create;
  try
    HTMLContent.Add('<html><head><style>');
    HTMLContent.Add('@page {size: A4;}');
    HTMLContent.Add('body {font-family: sans-serif, Arial; margin: 5px; padding: 5; display: flex; flex-direction: column; min-height: 100vh;}');
    HTMLContent.Add('div.content {flex: 1; text-align: center;}');
    HTMLContent.Add('.table {width: 100%; border-collapse: collapse; font-size: 10px;}');
    HTMLContent.Add('td, th {border: 1px solid black; padding: 4px;} th {background-color: #f2f2f2; text-align: center;}');
    HTMLContent.Add('.footer {text-align: center;}');
    HTMLContent.Add('.tfoot {border: 0px; text-align: center}');
    HTMLContent.Add('</style></head><body>');
    HTMLContent.Add('<div class="content">');
    HTMLContent.Add('<h2><u>Laporan Produksi Softcone</u></h2>');
    HTMLContent.Add('<p align="center">Periode: ' + FormatDateTime('dd/mm/yyyy', VTglAwal.Date) + ' s/d ' + FormatDateTime('dd/mm/yyyy', VTglAkhir.Date) + '</p>');
    HTMLContent.Add('<table class="table">');
    HTMLContent.Add('<tr>');
    HTMLContent.Add('<th rowspan="3">KODE</th>');
    HTMLContent.Add('<th rowspan="3">NAMA ITEM</th>');
    HTMLContent.Add('<th rowspan="2" colspan="2">AWAL</th>');
    HTMLContent.Add('<th colspan="6">PEMASUKAN</th>');
    HTMLContent.Add('<th colspan="6">PENGELUARAN</th>');
    HTMLContent.Add('<th rowspan="2" colspan="2">AKHIR</th>');
    HTMLContent.Add('</tr>');
    HTMLContent.Add('<tr>');;
    HTMLContent.Add('<th colspan="2">BON GREY</th>');
    HTMLContent.Add('<th colspan="2">RETUR GD. WARNA</th>');
    HTMLContent.Add('<th colspan="2">KOREKSI</th>');
    HTMLContent.Add('<th colspan="2">HASIL PRODUKSI</th>');
    HTMLContent.Add('<th colspan="2">DIAMBIL GD. WARNA</th>');
    HTMLContent.Add('<th colspan="2">KOREKSI</th>');
    HTMLContent.Add('</tr>');
    HTMLContent.Add('<tr>');
    HTMLContent.Add('<th>Kg</th>');
    HTMLContent.Add('<th>Ball</th>');
    HTMLContent.Add('<th>Kg</th>');
    HTMLContent.Add('<th>Ball</th>');
    HTMLContent.Add('<th>Kg</th>');
    HTMLContent.Add('<th>Ball</th>');
    HTMLContent.Add('<th>Kg</th>');
    HTMLContent.Add('<th>Ball</th>');
    HTMLContent.Add('<th>Kg</th>');
    HTMLContent.Add('<th>Ball</th>');
    HTMLContent.Add('<th>Kg</th>');
    HTMLContent.Add('<th>Ball</th>');
    HTMLContent.Add('<th>Kg</th>');
    HTMLContent.Add('<th>Ball</th>');
    HTMLContent.Add('<th>Kg</th>');
    HTMLContent.Add('<th>Ball</th>');
    HTMLContent.Add('</tr>');
    wwDBGrid1.DataSource.DataSet.First;
    while not wwDBGrid1.DataSource.DataSet.Eof do
    begin
      HTMLContent.Add('<tr>');
      for i := 0 to wwDBGrid1.Selected.Count - 1 do
      begin
        FieldName := wwDBGrid1.Columns[i].FieldName;
        if (FieldName = 'KD_ITEM') or (FieldName = 'NAMA_ITEM') then
          HTMLContent.Add('<td>' + wwDBGrid1.DataSource.DataSet.FieldByName(FieldName).AsString + '</td>')
        else if (FieldName = 'AWAL') or
                (FieldName = 'IN_BON_KG') or
                (FieldName = 'IN_RETUR_KG') or
                (FieldName = 'IN_KOREKSI_KG') or
                (FieldName = 'OUT_HASIL_KG') or
                (FieldName = 'OUT_RETUR_KG') or
                (FieldName = 'OUT_KOREKSI_KG') or
                (FieldName = 'AKHIR')
        then
          HTMLContent.Add('<td align="right";>' + FormatFloat('#,0.00;-#,0.00;-',StrToFloat(wwDBGrid1.DataSource.DataSet.FieldByName(FieldName).AsString)) + '</td>')
        else
          HTMLContent.Add('<td align="right";>' + FormatFloat('#,0.000;-#,0.000;-',StrToFloat(wwDBGrid1.DataSource.DataSet.FieldByName(FieldName).AsString)) + '</td>');

        if FieldName = 'AWAL' then t1 := t1 + wwDBGrid1.DataSource.DataSet.FieldByName(FieldName).AsFloat
        else if FieldName = 'IN_BON_KG' then t2 := t2 + wwDBGrid1.DataSource.DataSet.FieldByName(FieldName).AsFloat
        else if FieldName = 'IN_RETUR_KG' then t3 := t3 + wwDBGrid1.DataSource.DataSet.FieldByName(FieldName).AsFloat
        else if FieldName = 'IN_KOREKSI_KG' then t4 := t4 + wwDBGrid1.DataSource.DataSet.FieldByName(FieldName).AsFloat
        else if FieldName = 'OUT_HASIL_KG' then t5 := t5 + wwDBGrid1.DataSource.DataSet.FieldByName(FieldName).AsFloat
        else if FieldName = 'OUT_RETUR_KG' then t6 := t6 + wwDBGrid1.DataSource.DataSet.FieldByName(FieldName).AsFloat
        else if FieldName = 'OUT_KOREKSI_KG' then t7 := t7 + wwDBGrid1.DataSource.DataSet.FieldByName(FieldName).AsFloat
        else if FieldName = 'AKHIR' then t8 := t8 + wwDBGrid1.DataSource.DataSet.FieldByName(FieldName).AsFloat

        else if FieldName = 'AWAL2' then t9 := t9 + wwDBGrid1.DataSource.DataSet.FieldByName(FieldName).AsFloat
        else if FieldName = 'IN_BON_BALL' then t10 := t10 + wwDBGrid1.DataSource.DataSet.FieldByName(FieldName).AsFloat
        else if FieldName = 'IN_RETUR_BALL' then t11 := t11 + wwDBGrid1.DataSource.DataSet.FieldByName(FieldName).AsFloat
        else if FieldName = 'IN_KOREKSI_BALL' then t12 := t12 + wwDBGrid1.DataSource.DataSet.FieldByName(FieldName).AsFloat
        else if FieldName = 'OUT_HASIL_BALL' then t13 := t13 + wwDBGrid1.DataSource.DataSet.FieldByName(FieldName).AsFloat
        else if FieldName = 'OUT_RETUR_BALL' then t14 := t15 + wwDBGrid1.DataSource.DataSet.FieldByName(FieldName).AsFloat
        else if FieldName = 'OUT_KOREKSI_BALL' then t15 := t15 + wwDBGrid1.DataSource.DataSet.FieldByName(FieldName).AsFloat
        else if FieldName = 'AKHIR2' then t16 := t16 + wwDBGrid1.DataSource.DataSet.FieldByName(FieldName).AsFloat;
      end;
      HTMLContent.Add('</tr>');
      wwDBGrid1.DataSource.DataSet.Next;
    end;

    // Menambahkan baris total di bawah tabel
    HTMLContent.Add('<tr>');
    HTMLContent.Add('<td colspan="2" align="center"><b>TOTAL</b></td>');
    for i := 0 to wwDBGrid1.Selected.Count - 1 do
    begin
      FieldName := wwDBGrid1.Columns[i].FieldName;
      if FieldName = 'AWAL' then HTMLContent.Add('<td align="right";><b>' + FormatFloat('#,0.00;-#,0.00;-', t1) + '</b></td>')
      else if FieldName = 'IN_BON_KG' then HTMLContent.Add('<td align="right";><b>' + FormatFloat('#,0.00;-#,0.00;-', t2) + '</b></td>')
      else if FieldName = 'IN_RETUR_KG' then HTMLContent.Add('<td align="right";><b>' + FormatFloat('#,0.00;-#,0.00;-', t3) + '</b></td>')
      else if FieldName = 'IN_KOREKSI_KG' then HTMLContent.Add('<td align="right";><b>' + FormatFloat('#,0.00;-#,0.00;-', t4) + '</b></td>')
      else if FieldName = 'OUT_HASIL_KG' then HTMLContent.Add('<td align="right";><b>' + FormatFloat('#,0.00;-#,0.00;-', t5) + '</b></td>')
      else if FieldName = 'OUT_RETUR_KG' then HTMLContent.Add('<td align="right";><b>' + FormatFloat('#,0.00;-#,0.00;-', t6) + '</b></td>')
      else if FieldName = 'OUT_KOREKSI_KG' then HTMLContent.Add('<td align="right";><b>' + FormatFloat('#,0.00;-#,0.00;-', t7) + '</b></td>')
      else if FieldName = 'AKHIR' then HTMLContent.Add('<td align="right";><b>' + FormatFloat('#,0.00;-#,0.00;-', t8) + '</b></td>')
      else if FieldName = 'AWAL2' then HTMLContent.Add('<td align="right";><b>' + FormatFloat('#,0.000;-#,0.000;-', t9) + '</b></td>')
      else if FieldName = 'IN_BON_BALL' then HTMLContent.Add('<td align="right";><b>' + FormatFloat('#,0.000;-#,0.000;-', t10) + '</b></td>')
      else if FieldName = 'IN_RETUR_BALL' then HTMLContent.Add('<td align="right";><b>' + FormatFloat('#,0.000;-#,0.000;-', t11) + '</b></td>')
      else if FieldName = 'IN_KOREKSI_BALL' then HTMLContent.Add('<td align="right";><b>' + FormatFloat('#,0.000;-#,0.000;-', t12) + '</b></td>')
      else if FieldName = 'OUT_HASIL_BALL' then HTMLContent.Add('<td align="right";><b>' + FormatFloat('#,0.000;-#,0.000;-', t13) + '</b></td>')
      else if FieldName = 'OUT_RETUR_BALL' then HTMLContent.Add('<td align="right";><b>' + FormatFloat('#,0.000;-#,0.000;-', t14) + '</b></td>')
      else if FieldName = 'OUT_KOREKSI_BALL' then HTMLContent.Add('<td align="right";><b>' + FormatFloat('#,0.000;-#,0.000;-', t15) + '</b></td>')
      else if FieldName = 'AKHIR2' then HTMLContent.Add('<td align="right";><b>' + FormatFloat('#,0.000;-#,0.000;-', t16) + '</b></td>');
    end;
    HTMLContent.Add('</tr>');
    wwDBGrid1.DataSource.DataSet.Next;
    HTMLContent.Add('</table>');

    // Menambahkan kolom tanda tangan di bagian bawah halaman
    HTMLContent.Add('<div class="footer">');
    HTMLContent.Add('<table style="width: 100%; border:none;">');
    HTMLContent.Add('<tr>');
    HTMLContent.Add('<td class="tfoot"></td>');
    HTMLContent.Add('<td class="tfoot"><p>Pekalongan, '+FormatDateTime('dd mmmm yyyy', VTglAkhir.Date)+'</p></td>');
    HTMLContent.Add('</tr>');
    HTMLContent.Add('<tr>');
    HTMLContent.Add('<td class="tfoot"><p>Mengetahui</p><br><p><u><b>Oloan Sili SH</b></u><br>Manajer Produksi</p></td>');
    HTMLContent.Add('<td class="tfoot"><p>Dibuat Oleh</p><br><p><u><b>'+vAdm+'</b></u><br>Admin MIS Dyeing</p></td>');
    HTMLContent.Add('</tr>');
    HTMLContent.Add('</table>');
    HTMLContent.Add('</div>'); // Tutup footer

    HTMLContent.Add('</div>'); //tutup content

    HTMLContent.Add('</body>');
    HTMLContent.Add('</html>');

    // Simpan HTML ke file sementara
    FileName := ExtractFilePath(Application.ExeName) + 'LaporanProduksiSoftcone.html';
    HTMLContent.SaveToFile(FileName);

    // Load file HTML ke TWebBrowser
    WebBrowser1.Navigate('file://' + FileName);

  finally
    HTMLContent.Free;
  end;
end;

procedure TInfoRealisasiPOFrm.SummaryBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
    DMFrm.QDateTime.Open;
    QRLabel55.Caption:=FormatDateTime('dd mmmm yyyy',VTglAkhir.Date);
end;

procedure TInfoRealisasiPOFrm.QRBand6BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  DMFrm.QDateTime.Open;
end;

procedure TInfoRealisasiPOFrm.QRBand5BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel49.Caption:=FormatDateTime('dd mmmm yyyy',VTglAkhir.Date);
end;

procedure TInfoRealisasiPOFrm.BtnPrintBrowse1Click(Sender: TObject);
begin
  quickRep3.preview;
end;

procedure TInfoRealisasiPOFrm.QRBand8BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel63.Caption:=FormatDateTime('dd mmmm yyyy',VTglAkhir.Date);
end;

procedure TInfoRealisasiPOFrm.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel26.Caption:=vTglAwal.Text+' s/d '+vTglAkhir.Text;
end;

procedure TInfoRealisasiPOFrm.RadioGroup1Click(Sender: TObject);
begin
if RadioGroup1.ItemIndex=0 then
    InfoRealisasiPOFrm.PanelHeader.Caption:='Info WIP Softcones'+' - '+'LAPORAN PRODUKSI SOFTCONE'
else
    InfoRealisasiPOFrm.PanelHeader.Caption:='Info WIP Softcones'+' - '+'LAPORAN STOCK SOFTCONE';
end;

procedure TInfoRealisasiPOFrm.TitleBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLPeriod.Caption:=vTglAwal.Text+' s/d '+vTglAkhir.Text;
end;

procedure TInfoRealisasiPOFrm.SummaryBand2BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  QRLTanggal.Caption:=FormatDateTime('dd mmmm yyyy',VTglAkhir.Date);

  if DMFrm.QDateTimeUSER.AsString='OBETH' then
  begin
    QRLUser.Caption:= 'Ubaidillah';
  end
  else if DMFrm.QDateTimeUSER.AsString='BURHANUDIN' then
  begin
    QRLUser.Caption:= 'Burhanudin';
  end
  else if DMFrm.QDateTimeUSER.AsString='AMRI_KH' then
  begin
    QRLUser.Caption:= 'M. Khoirul Amri';
  end
  else
    QRLUser.Caption:= DMFrm.QDateTimeUSER.AsString;
end;

procedure TInfoRealisasiPOFrm.QRBand13BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
 QRLPeriod2.Caption:=vTglAwal.Text+' s/d '+vTglAkhir.Text;
end;

procedure TInfoRealisasiPOFrm.QRBand15BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLTgl1.Caption:=FormatDateTime('dd mmmm yyyy',VTglAkhir.Date);

  if DMFrm.QDateTimeUSER.AsString='OBETH' then
  begin
    QRLUser1.Caption:= 'Ubaidillah';
  end
  else if DMFrm.QDateTimeUSER.AsString='BURHANUDIN' then
  begin
    QRLUser1.Caption:= 'Burhanudin';
  end
  else if DMFrm.QDateTimeUSER.AsString='AMRI_KH' then
  begin
    QRLUser1.Caption:= 'M. Khoirul Amri';
  end
  else
    QRLUser1.Caption:= DMFrm.QDateTimeUSER.AsString;
end;

procedure TInfoRealisasiPOFrm.QBrowseCalcFields(DataSet: TDataSet);
begin
 QBrowseAKHIR.AsFloat:=(QBrowseAWAL.AsFloat+QBrowseIN_BON_KG.AsFloat+QBrowseIN_RETUR_KG.AsFloat+QBrowseIN_KOREKSI_KG.AsFloat)-(QBrowseOUT_HASIL_KG.AsFloat+QBrowseOUT_RETUR_KG.AsFloat+QBrowseOUT_KOREKSI_KG.AsFloat);
 QBrowseAKHIR2.AsFloat:=(QBrowseAWAL2.AsFloat+QBrowseIN_BON_BALL.AsFloat+QBrowseIN_RETUR_BALL.AsFloat+QBrowseIN_KOREKSI_BALL.AsFloat)-(QBrowseOUT_HASIL_BALL.AsFloat+QBrowseOUT_RETUR_BALL.AsFloat+QBrowseOUT_KOREKSI_BALL.AsFloat);
end;

procedure TInfoRealisasiPOFrm.wwDBGrid1TitleButtonClick(Sender: TObject;
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

procedure TInfoRealisasiPOFrm.QBrowse2FilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
    Accept:=
    ((QBrowse2AWAL.AsFloat)<>0) or
    ((QBrowse2AWAL2.AsFloat)<>0) or
    ((QBrowse2IN_HASIL_KG.AsFloat)<>0) or
    ((QBrowse2IN_HASIL_PCS.AsFloat)<>0) or
    ((QBrowse2IN_RETUR_KG.AsFloat)<>0) or
    ((QBrowse2IN_RETUR_PCS.AsFloat)<>0) or
    ((QBrowse2IN_REPRO_KG.AsFloat)<>0) or
    ((QBrowse2IN_REPRO_PCS.AsFloat)<>0) or
    ((QBrowse2IN_KOREKSI_KG.AsFloat)<>0) or
    ((QBrowse2IN_KOREKSI_PCS.AsFloat)<>0) or
    ((QBrowse2OUT_ST_KG.AsFloat)<>0) or
    ((QBrowse2OUT_ST_PCS.AsFloat)<>0) or
    ((QBrowse2OUT_PROSES_KG.AsFloat)<>0) or
    ((QBrowse2OUT_PROSES_PCS.AsFloat)<>0) or
    ((QBrowse2OUT_KOREKSI_KG.AsFloat)<>0) or
    ((QBrowse2OUT_KOREKSI_PCS.AsFloat)<>0) or
    ((QBrowse2AKHIR.AsFloat)<>0) or
    ((QBrowse2AKHIR2.AsFloat)<>0);

end;

procedure TInfoRealisasiPOFrm.QBrowse2AfterScroll(DataSet: TDataSet);
begin
    LabelBanner.Caption:='Record ke '+IntToStr(QBrowse2.RecNo)+' dari '+FormatFloat('#,#',QBrowse2.RecordCount)+' Records';
end;

procedure TInfoRealisasiPOFrm.QBrowse2CalcFields(DataSet: TDataSet);
begin
  QBrowse2AKHIR.AsFloat:=
  (
   QBrowse2AWAL.AsFloat+QBrowse2IN_HASIL_KG.AsFloat+QBrowse2IN_RETUR_KG.AsFloat+
   QBrowse2IN_REPRO_KG.AsFloat+QBrowse2IN_KOREKSI_KG.AsFloat
  )
  - (QBrowse2OUT_ST_KG.AsFloat+QBrowse2OUT_PROSES_KG.AsFloat+QBrowse2OUT_KOREKSI_KG.AsFloat);

  QBrowse2AKHIR2.AsFloat:=
  (
   QBrowse2AWAL2.AsFloat+QBrowse2IN_HASIL_PCS.AsFloat+QBrowse2IN_RETUR_PCS.AsFloat+
   QBrowse2IN_REPRO_PCS.AsFloat+QBrowse2IN_KOREKSI_PCS.AsFloat
  )
  - (QBrowse2OUT_ST_PCS.AsFloat+QBrowse2OUT_PROSES_PCS.AsFloat+QBrowse2OUT_KOREKSI_PCS.AsFloat);

end;

procedure TInfoRealisasiPOFrm.wwDBGrid1RowChanged(Sender: TObject);
var
vt1, vt2, vt3, vt4 : real;
begin
  if PanelRiwayat.Visible=True then
  begin
    QBrowseDetail0.DisableControls;
    QBrowseDetail0.Close;
    QBrowseDetail0.SetVariable('pawal', vTglAwal.DateTime);
    QBrowseDetail0.SetVariable('pkd_item', QBrowseKD_ITEM.AsString);
    QBrowseDetail0.Open;

    vt1:=0; vt2:=0; vt3:=0; vt4:=0;
    while not QBrowseDetail0.Eof do
    begin
       vt1:=vt1+QBrowseDetail0QTY_IN.AsFloat;
       vt2:=vt2+QBrowseDetail0QTY_IN2.AsFloat;
       vt3:=vt3+QBrowseDetail0QTY_OUT.Asfloat;
       vt4:=vt4+QBrowseDetail0QTY_OUT2.Asfloat;
       QBrowseDetail0.Next;
    end;
    QBrowseDetail0.EnableControls;

    wwDBGridSoft0.ColumnByName('QTY_IN').FooterValue:=FormatFloat('#,0.00;-#,0.00;-',vt1);
    wwDBGridSoft0.ColumnByName('QTY_IN2').FooterValue:=FormatFloat('#,0.0000;-#,0.0000;-',vt2);
    wwDBGridSoft0.ColumnByName('QTY_OUT').FooterValue:=FormatFloat('#,0.00;-#,0.00;-',vt3);
    wwDBGridSoft0.ColumnByName('QTY_OUT2').FooterValue:=FormatFloat('#,0.0000;-#,0.0000;-',vt4);
    wwDBGridSoft0.BringToFront;
    PanelTop.Caption:='Dalam Proses : '+QBrowseNAMA_ITEM.AsString;
  end;
end;

procedure TInfoRealisasiPOFrm.cbRiwayatClick(Sender: TObject);
begin
  if PanelRiwayat.Visible=false then
    PanelRiwayat.Visible:=true
  else
    PanelRiwayat.Visible:=false;
end;

procedure TInfoRealisasiPOFrm.wwDBGrid2RowChanged(Sender: TObject);
var
vt1, vt2, vt3, vt4 : real;
begin
  if PanelRiwayat.Visible=True then
  begin
    QBrowseDetail1.DisableControls;
    QBrowseDetail1.Close;
    QBrowseDetail1.SetVariable('pawal', vTglAwal.DateTime);
    QBrowseDetail1.SetVariable('pkd_item', QBrowse2KD_ITEM.AsString);
    QBrowseDetail1.Open;

    vt1:=0; vt2:=0; vt3:=0; vt4:=0;
    while not QBrowseDetail1.Eof do
    begin
       vt1:=vt1+QBrowseDetail1QTY_IN.AsFloat;
       vt2:=vt2+QBrowseDetail1QTY_IN2.AsFloat;
       vt3:=vt3+QBrowseDetail1QTY_OUT.Asfloat;
       vt4:=vt4+QBrowseDetail1QTY_OUT2.Asfloat;
       QBrowseDetail1.Next;
    end;
    QBrowseDetail1.EnableControls;

    wwDBGridSoft1.ColumnByName('QTY_IN').FooterValue:=FormatFloat('#,0.0000;-#,0.0000;-',vt1);
    wwDBGridSoft1.ColumnByName('QTY_IN2').FooterValue:=FormatFloat('#,0.00;-#,0.00;-',vt2);
    wwDBGridSoft1.ColumnByName('QTY_OUT').FooterValue:=FormatFloat('#,0.0000;-#,0.0000;-',vt3);
    wwDBGridSoft1.ColumnByName('QTY_OUT2').FooterValue:=FormatFloat('#,0.00;-#,0.00;-',vt4);
    wwDBGridSoft1.BringToFront;
    PanelTop.Caption:='Hasil Proses : '+QBrowse2NAMA_ITEM.AsString;
  end;
end;

procedure TInfoRealisasiPOFrm.WebBrowser1DocumentComplete(Sender: TObject;
  const pDisp: IDispatch; var URL: OleVariant);
begin
    // Memanggil print setelah dokumen selesai dimuat
    WebBrowser1.OleObject.ExecWB(OLECMDID_PRINT, OLECMDEXECOPT_PROMPTUSER, Unassigned, Unassigned);
end;

end.
