object WIP_JETDYEINGFRM: TWIP_JETDYEINGFRM
  Left = 202
  Top = 124
  Width = 1148
  Height = 616
  Caption = 'WIP Jet Dyeing'
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
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PanelMain: TPanel
    Left = 0
    Top = 0
    Width = 1132
    Height = 578
    Align = alClient
    BevelOuter = bvNone
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 0
    object Label1: TLabel
      Left = 0
      Top = 565
      Width = 1132
      Height = 13
      Align = alBottom
      Color = clSkyBlue
      ParentColor = False
    end
    object DBText3: TDBText
      Left = 0
      Top = 49
      Width = 1132
      Height = 27
      Align = alTop
      Alignment = taRightJustify
      Color = clSkyBlue
      DataField = 'JNS_BRG'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -19
      Font.Name = 'Arial Black'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object LabelBanner: TLabel
      Left = 0
      Top = 133
      Width = 1132
      Height = 13
      Align = alTop
      Color = clSkyBlue
      ParentColor = False
    end
    object PanelHeader: TPanel
      Left = 0
      Top = 0
      Width = 1132
      Height = 49
      Align = alTop
      BevelOuter = bvNone
      Caption = 'NAMA TRANSAKSI'
      Color = clBackground
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Arial Black'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object PanelFilter: TPanel
      Left = 0
      Top = 76
      Width = 1132
      Height = 57
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 1
      object Label5: TLabel
        Left = 539
        Top = 21
        Width = 43
        Height = 13
        Cursor = crHandPoint
        Caption = 'Spasi (%)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsUnderline]
        ParentFont = False
        OnClick = Label5Click
      end
      object Label3: TLabel
        Left = 8
        Top = 12
        Width = 44
        Height = 13
        Caption = 'Tgl. Awal'
      end
      object Label4: TLabel
        Left = 136
        Top = 12
        Width = 45
        Height = 13
        Caption = 'Tgl. Akhir'
      end
      object BtnOk: TBitBtn
        Left = 264
        Top = 24
        Width = 65
        Height = 25
        Caption = 'OK'
        TabOrder = 0
        OnClick = BtnOkClick
        NumGlyphs = 2
      end
      object wwDBSpinLine2: TwwDBSpinEdit
        Left = 541
        Top = 37
        Width = 41
        Height = 19
        Increment = 100.000000000000000000
        MaxValue = 400.000000000000000000
        MinValue = 100.000000000000000000
        Value = 100.000000000000000000
        TabOrder = 1
        UnboundDataType = wwDefault
        OnChange = wwDBSpinLine2Change
      end
      object vTglAwal: TwwDBDateTimePicker
        Left = 8
        Top = 27
        Width = 113
        Height = 22
        BorderStyle = bsNone
        CalendarAttributes.Font.Charset = DEFAULT_CHARSET
        CalendarAttributes.Font.Color = clWindowText
        CalendarAttributes.Font.Height = -11
        CalendarAttributes.Font.Name = 'MS Sans Serif'
        CalendarAttributes.Font.Style = []
        Epoch = 1950
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ShowButton = True
        TabOrder = 2
        DisplayFormat = 'dd mmm yyyy'
        OnChange = vTglAwalChange
      end
      object vTglAkhir: TwwDBDateTimePicker
        Left = 136
        Top = 27
        Width = 113
        Height = 22
        BorderStyle = bsNone
        CalendarAttributes.Font.Charset = DEFAULT_CHARSET
        CalendarAttributes.Font.Color = clWindowText
        CalendarAttributes.Font.Height = -11
        CalendarAttributes.Font.Name = 'MS Sans Serif'
        CalendarAttributes.Font.Style = []
        Epoch = 1950
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ShowButton = True
        TabOrder = 3
        DisplayFormat = 'dd mmm yyyy'
      end
      object cbAdaTransaksi: TCheckBox
        Left = 353
        Top = 28
        Width = 161
        Height = 17
        Caption = 'Yang ada transaksinya saja'
        TabOrder = 4
        OnClick = cbAdaTransaksiClick
      end
    end
    object PanelBrowse: TPanel
      Left = 0
      Top = 146
      Width = 1132
      Height = 363
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 2
      object QuickRep1: TQuickRep
        Left = 78
        Top = 70
        Width = 1248
        Height = 816
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        AfterPrint = QuickRep1AfterPrint
        AfterPreview = QuickRep1AfterPreview
        BeforePrint = QuickRep1BeforePrint
        DataSet = QBrowse
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
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
        Options = [FirstPageHeader, LastPageFooter]
        Page.Columns = 1
        Page.Orientation = poLandscape
        Page.PaperSize = Folio
        Page.Values = (
          127.000000000000000000
          2159.000000000000000000
          80.000000000000000000
          3302.000000000000000000
          80.000000000000000000
          75.000000000000000000
          0.000000000000000000)
        PrinterSettings.Copies = 1
        PrinterSettings.Duplex = False
        PrinterSettings.FirstPage = 0
        PrinterSettings.LastPage = 0
        PrinterSettings.OutputBin = Auto
        PrintIfEmpty = True
        SnapToGrid = True
        Units = Native
        Zoom = 100
        object DetailBand1: TQRBand
          Left = 30
          Top = 169
          Width = 1189
          Height = 20
          Frame.Color = clBlack
          Frame.DrawTop = True
          Frame.DrawBottom = False
          Frame.DrawLeft = True
          Frame.DrawRight = True
          AlignToBottom = False
          Color = clWhite
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            52.916666666666660000
            3145.895833333334000000)
          BandType = rbDetail
          object QRDBText3: TQRDBText
            Left = 45
            Top = 5
            Width = 94
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              119.062500000000000000
              13.229166666666670000
              248.708333333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = QBrowse
            DataField = 'NAMA_KONSTRUKSI'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Times New Roman'
            Font.Style = []
            Mask = '#,#;(#,#);-'
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 7
          end
          object QRDBText4: TQRDBText
            Left = 422
            Top = 5
            Width = 49
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1116.541666666667000000
              13.229166666666670000
              129.645833333333300000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = QBrowse
            DataField = 'QTY1'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Times New Roman'
            Font.Style = []
            Mask = '0.0,0;(0.0,0);-'
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 7
          end
          object QRDBText2: TQRDBText
            Left = 4
            Top = 5
            Width = 31
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              10.583333333333330000
              13.229166666666670000
              82.020833333333340000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = QBrowse
            DataField = 'KD_KONSTRUKSI'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Times New Roman'
            Font.Style = []
            Mask = '0.0,0;(0.0,0);-'
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 7
          end
          object QRDBText8: TQRDBText
            Left = 481
            Top = 5
            Width = 50
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1272.645833333333000000
              13.229166666666670000
              132.291666666666700000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = QBrowse
            DataField = 'QTY2'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Times New Roman'
            Font.Style = []
            Mask = '0.0,0;(0.0,0);-'
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 7
          end
          object QRDBText5: TQRDBText
            Left = 542
            Top = 5
            Width = 46
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1434.041666666667000000
              13.229166666666670000
              121.708333333333300000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = QBrowse
            DataField = 'QTY3'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Times New Roman'
            Font.Style = []
            Mask = '0.0,0;(0.0,0);-'
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 7
          end
          object QRDBText7: TQRDBText
            Left = 599
            Top = 5
            Width = 51
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1584.854166666667000000
              13.229166666666670000
              134.937500000000000000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = QBrowse
            DataField = 'QTY4'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Times New Roman'
            Font.Style = []
            Mask = '0.0,0;(0.0,0);-'
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 7
          end
          object QRDBText9: TQRDBText
            Left = 660
            Top = 5
            Width = 50
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1746.250000000000000000
              13.229166666666670000
              132.291666666666700000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = QBrowse
            DataField = 'QTY5'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Times New Roman'
            Font.Style = []
            Mask = '0.0,0;(0.0,0);-'
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 7
          end
          object QRDBText10: TQRDBText
            Left = 721
            Top = 5
            Width = 54
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1907.645833333333000000
              13.229166666666670000
              142.875000000000000000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = QBrowse
            DataField = 'QTY6'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Times New Roman'
            Font.Style = []
            Mask = '0.0,0;(0.0,0);-'
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 7
          end
          object QRDBText11: TQRDBText
            Left = 786
            Top = 5
            Width = 48
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              2079.625000000000000000
              13.229166666666670000
              127.000000000000000000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = QBrowse
            DataField = 'QTY7'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Times New Roman'
            Font.Style = []
            Mask = '0.0,0;(0.0,0);-'
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 7
          end
          object QRDBText12: TQRDBText
            Left = 843
            Top = 5
            Width = 56
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              2230.437500000000000000
              13.229166666666670000
              148.166666666666700000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = QBrowse
            DataField = 'QTY8'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Times New Roman'
            Font.Style = []
            Mask = '0.0,0;(0.0,0);-'
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 7
          end
          object QRDBText13: TQRDBText
            Left = 909
            Top = 5
            Width = 50
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              2405.062500000000000000
              13.229166666666670000
              132.291666666666700000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = QBrowse
            DataField = 'QTY9'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Times New Roman'
            Font.Style = []
            Mask = '0.0,0;(0.0,0);-'
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 7
          end
          object QRDBText14: TQRDBText
            Left = 971
            Top = 5
            Width = 50
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              2569.104166666667000000
              13.229166666666670000
              132.291666666666700000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = QBrowse
            DataField = 'QTY10'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Times New Roman'
            Font.Style = []
            Mask = '0.0,0;(0.0,0);-'
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 7
          end
          object QRShape12: TQRShape
            Left = 40
            Top = 0
            Width = 1
            Height = 21
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              55.562500000000000000
              105.833333333333300000
              0.000000000000000000
              2.645833333333333000)
            Shape = qrsRectangle
          end
          object QRShape13: TQRShape
            Left = 415
            Top = 1
            Width = 1
            Height = 21
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              55.562500000000000000
              1098.020833333333000000
              2.645833333333333000
              2.645833333333333000)
            Shape = qrsRectangle
          end
          object QRShape14: TQRShape
            Left = 475
            Top = 1
            Width = 1
            Height = 21
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              55.562500000000000000
              1256.770833333333000000
              2.645833333333333000
              2.645833333333333000)
            Shape = qrsRectangle
          end
          object QRShape15: TQRShape
            Left = 535
            Top = 1
            Width = 1
            Height = 21
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              55.562500000000000000
              1415.520833333333000000
              2.645833333333333000
              2.645833333333333000)
            Shape = qrsRectangle
          end
          object QRShape16: TQRShape
            Left = 593
            Top = 1
            Width = 1
            Height = 21
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              55.562500000000000000
              1568.979166666667000000
              2.645833333333333000
              2.645833333333333000)
            Shape = qrsRectangle
          end
          object QRShape18: TQRShape
            Left = 655
            Top = 1
            Width = 1
            Height = 21
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              55.562500000000000000
              1733.020833333333000000
              2.645833333333333000
              2.645833333333333000)
            Shape = qrsRectangle
          end
          object QRShape20: TQRShape
            Left = 780
            Top = 1
            Width = 1
            Height = 21
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              55.562500000000000000
              2063.750000000000000000
              2.645833333333333000
              2.645833333333333000)
            Shape = qrsRectangle
          end
          object QRShape21: TQRShape
            Left = 838
            Top = 1
            Width = 1
            Height = 21
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              55.562500000000000000
              2217.208333333333000000
              2.645833333333333000
              2.645833333333333000)
            Shape = qrsRectangle
          end
          object QRShape22: TQRShape
            Left = 903
            Top = 1
            Width = 1
            Height = 21
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              55.562500000000000000
              2389.187500000000000000
              2.645833333333333000
              2.645833333333333000)
            Shape = qrsRectangle
          end
          object QRShape41: TQRShape
            Left = 964
            Top = 1
            Width = 1
            Height = 21
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              55.562500000000000000
              2550.583333333333000000
              2.645833333333333000
              2.645833333333333000)
            Shape = qrsRectangle
          end
          object QRDBText15: TQRDBText
            Left = 1117
            Top = 5
            Width = 64
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              2955.395833333334000000
              13.229166666666670000
              169.333333333333300000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = QBrowse
            DataField = 'QTY_AKHIR2'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Times New Roman'
            Font.Style = []
            Mask = '0.0,0;(0.0,0);-'
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 7
          end
          object QRDBText16: TQRDBText
            Left = 1035
            Top = 5
            Width = 70
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              2738.437500000000000000
              13.229166666666670000
              185.208333333333300000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = QBrowse
            DataField = 'QTY_AKHIR'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Times New Roman'
            Font.Style = []
            Mask = '0.0,0;(0.0,0);-'
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 7
          end
          object QRDBText17: TQRDBText
            Left = 282
            Top = 5
            Width = 62
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              746.125000000000000000
              13.229166666666670000
              164.041666666666700000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = QBrowse
            DataField = 'QTY_AWL'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Times New Roman'
            Font.Style = []
            Mask = '0.0,0;(0.0,0);-'
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 7
          end
          object QRDBText18: TQRDBText
            Left = 355
            Top = 5
            Width = 55
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              939.270833333333400000
              13.229166666666670000
              145.520833333333300000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = QBrowse
            DataField = 'QTY_AWL2'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Times New Roman'
            Font.Style = []
            Mask = '0.0,0;(0.0,0);-'
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 7
          end
          object QRShape43: TQRShape
            Left = 348
            Top = 1
            Width = 1
            Height = 21
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              55.562500000000000000
              920.750000000000000000
              2.645833333333333000
              2.645833333333333000)
            Shape = qrsRectangle
          end
          object QRShape48: TQRShape
            Left = 276
            Top = 1
            Width = 1
            Height = 21
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              55.562500000000000000
              730.250000000000000000
              2.645833333333333000
              2.645833333333333000)
            Shape = qrsRectangle
          end
          object QRShape62: TQRShape
            Left = 715
            Top = 1
            Width = 1
            Height = 21
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              55.562500000000000000
              1891.770833333333000000
              2.645833333333333000
              2.645833333333333000)
            Shape = qrsRectangle
          end
          object QRShape64: TQRShape
            Left = 1028
            Top = 1
            Width = 1
            Height = 21
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              55.562500000000000000
              2719.916666666667000000
              2.645833333333333000
              2.645833333333333000)
            Shape = qrsRectangle
          end
          object QRShape17: TQRShape
            Left = 1110
            Top = 1
            Width = 1
            Height = 21
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              55.562500000000000000
              2936.875000000000000000
              2.645833333333333000
              2.645833333333333000)
            Shape = qrsRectangle
          end
        end
        object SummaryBand1: TQRBand
          Left = 30
          Top = 189
          Width = 1189
          Height = 188
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          AlignToBottom = False
          BeforePrint = SummaryBand1BeforePrint
          Color = clWhite
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            497.416666666666700000
            3145.895833333334000000)
          BandType = rbSummary
          object QRLabel2: TQRLabel
            Left = 149
            Top = 7
            Width = 33
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              394.229166666666700000
              18.520833333333330000
              87.312500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'TOTAL'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 7
          end
          object QRDBText1: TQRDBText
            Left = 934
            Top = 137
            Width = 33
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              2471.208333333333000000
              362.479166666666700000
              87.312500000000000000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = DMFrm.QDateTime
            DataField = 'USER'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel4: TQRLabel
            Left = 914
            Top = 66
            Width = 69
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              2418.291666666667000000
              174.625000000000000000
              182.562500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Administrasi'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel17: TQRLabel
            Left = 263
            Top = 66
            Width = 66
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              695.854166666666600000
              174.625000000000000000
              174.625000000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Mengetahui'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel18: TQRLabel
            Left = 249
            Top = 141
            Width = 92
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              658.812500000000000000
              373.062500000000000000
              243.416666666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'NUR IHWANTO'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel19: TQRLabel
            Left = 232
            Top = 157
            Width = 124
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              613.833333333333400000
              415.395833333333400000
              328.083333333333400000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Sub Dept Head Dyeing'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel20: TQRLabel
            Left = 917
            Top = 157
            Width = 69
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              2426.229166666667000000
              415.395833333333400000
              182.562500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Adm Dyeing'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRExpr9: TQRExpr
            Left = 1034
            Top = 6
            Width = 72
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              2735.791666666667000000
              15.875000000000000000
              190.500000000000000000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            Color = clWhite
            Master = QuickRep1
            ParentFont = False
            ResetAfterPrint = False
            Transparent = False
            WordWrap = True
            Expression = 'SUM(QBrowse.QTY_AKHIR)'
            Mask = '0.0,0;(0.0,0);-'
            FontSize = 7
          end
          object QRExpr10: TQRExpr
            Left = 1116
            Top = 6
            Width = 67
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              2952.750000000000000000
              15.875000000000000000
              177.270833333333300000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            Color = clWhite
            Master = QuickRep1
            ParentFont = False
            ResetAfterPrint = False
            Transparent = False
            WordWrap = True
            Expression = 'SUM(QBrowse.QTY_AKHIR2)'
            Mask = '0.0,0;(0.0,0);-'
            FontSize = 7
          end
          object QRShape1: TQRShape
            Left = 1
            Top = 0
            Width = 1187
            Height = 1
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              2.645833333333333000
              2.645833333333333000
              0.000000000000000000
              3140.604166666667000000)
            Shape = qrsRectangle
          end
          object QRShape28: TQRShape
            Left = 0
            Top = 25
            Width = 1188
            Height = 1
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              2.645833333333333000
              0.000000000000000000
              66.145833333333340000
              3143.250000000000000000)
            Shape = qrsRectangle
          end
          object QRShape29: TQRShape
            Left = 0
            Top = 1
            Width = 1
            Height = 25
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              66.145833333333340000
              0.000000000000000000
              2.645833333333333000
              2.645833333333333000)
            Shape = qrsRectangle
          end
          object QRShape30: TQRShape
            Left = 276
            Top = 1
            Width = 1
            Height = 25
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              66.145833333333340000
              730.250000000000000000
              2.645833333333333000
              2.645833333333333000)
            Shape = qrsRectangle
          end
          object QRShape33: TQRShape
            Left = 655
            Top = 1
            Width = 1
            Height = 25
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              66.145833333333340000
              1733.020833333333000000
              2.645833333333333000
              2.645833333333333000)
            Shape = qrsRectangle
          end
          object QRShape35: TQRShape
            Left = 838
            Top = 1
            Width = 1
            Height = 25
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              66.145833333333340000
              2217.208333333333000000
              2.645833333333333000
              2.645833333333333000)
            Shape = qrsRectangle
          end
          object QRShape38: TQRShape
            Left = 964
            Top = 1
            Width = 1
            Height = 25
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              66.145833333333340000
              2550.583333333333000000
              2.645833333333333000
              2.645833333333333000)
            Shape = qrsRectangle
          end
          object QRShape40: TQRShape
            Left = 1188
            Top = 1
            Width = 1
            Height = 25
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              66.145833333333340000
              3143.250000000000000000
              2.645833333333333000
              2.645833333333333000)
            Shape = qrsRectangle
          end
          object QRShape49: TQRShape
            Left = 415
            Top = 1
            Width = 1
            Height = 25
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              66.145833333333340000
              1098.020833333333000000
              2.645833333333333000
              2.645833333333333000)
            Shape = qrsRectangle
          end
          object QRShape50: TQRShape
            Left = 475
            Top = 1
            Width = 1
            Height = 25
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              66.145833333333340000
              1256.770833333333000000
              2.645833333333333000
              2.645833333333333000)
            Shape = qrsRectangle
          end
          object QRShape51: TQRShape
            Left = 593
            Top = 1
            Width = 1
            Height = 25
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              66.145833333333340000
              1568.979166666667000000
              2.645833333333333000
              2.645833333333333000)
            Shape = qrsRectangle
          end
          object QRShape52: TQRShape
            Left = 348
            Top = 1
            Width = 1
            Height = 25
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              66.145833333333340000
              920.750000000000000000
              2.645833333333333000
              2.645833333333333000)
            Shape = qrsRectangle
          end
          object QRExpr11: TQRExpr
            Left = 281
            Top = 6
            Width = 63
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              743.479166666666800000
              15.875000000000000000
              166.687500000000000000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            Color = clWhite
            Master = QuickRep1
            ParentFont = False
            ResetAfterPrint = False
            Transparent = False
            WordWrap = True
            Expression = 'SUM(QBrowse.QTY_AWL)'
            Mask = '0.0,0;(0.0,0);-'
            FontSize = 7
          end
          object QRLabel35: TQRLabel
            Left = 922
            Top = 31
            Width = 59
            Height = 18
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              47.625000000000000000
              2439.458333333333000000
              82.020833333333340000
              156.104166666666700000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'QRLabel35'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRShape68: TQRShape
            Left = 535
            Top = 1
            Width = 1
            Height = 25
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              66.145833333333340000
              1415.520833333333000000
              2.645833333333333000
              2.645833333333333000)
            Shape = qrsRectangle
          end
          object QRShape69: TQRShape
            Left = 1028
            Top = 1
            Width = 1
            Height = 25
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              66.145833333333340000
              2719.916666666667000000
              2.645833333333333000
              2.645833333333333000)
            Shape = qrsRectangle
          end
          object QRShape70: TQRShape
            Left = 1110
            Top = 1
            Width = 1
            Height = 25
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              66.145833333333340000
              2936.875000000000000000
              2.645833333333333000
              2.645833333333333000)
            Shape = qrsRectangle
          end
          object QRShape71: TQRShape
            Left = 715
            Top = 1
            Width = 1
            Height = 25
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              66.145833333333340000
              1891.770833333333000000
              2.645833333333333000
              2.645833333333333000)
            Shape = qrsRectangle
          end
          object QRShape72: TQRShape
            Left = 780
            Top = 1
            Width = 1
            Height = 25
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              66.145833333333340000
              2063.750000000000000000
              2.645833333333333000
              2.645833333333333000)
            Shape = qrsRectangle
          end
          object QRShape73: TQRShape
            Left = 903
            Top = 1
            Width = 1
            Height = 25
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              66.145833333333340000
              2389.187500000000000000
              2.645833333333333000
              2.645833333333333000)
            Shape = qrsRectangle
          end
          object QRExpr1: TQRExpr
            Left = 352
            Top = 6
            Width = 59
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              931.333333333333500000
              15.875000000000000000
              156.104166666666700000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            Color = clWhite
            Master = QuickRep1
            ParentFont = False
            ResetAfterPrint = False
            Transparent = False
            WordWrap = True
            Expression = 'SUM(QBrowse.QTY_AWL2)'
            Mask = '0.0,0;(0.0,0);-'
            FontSize = 7
          end
          object QRExpr2: TQRExpr
            Left = 420
            Top = 6
            Width = 51
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1111.250000000000000000
              15.875000000000000000
              134.937500000000000000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            Color = clWhite
            Master = QuickRep1
            ParentFont = False
            ResetAfterPrint = False
            Transparent = False
            WordWrap = True
            Expression = 'SUM(QBrowse.QTY1)'
            Mask = '0.0,0;(0.0,0);-'
            FontSize = 7
          end
          object QRExpr3: TQRExpr
            Left = 480
            Top = 6
            Width = 51
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1270.000000000000000000
              15.875000000000000000
              134.937500000000000000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            Color = clWhite
            Master = QuickRep1
            ParentFont = False
            ResetAfterPrint = False
            Transparent = False
            WordWrap = True
            Expression = 'SUM(QBrowse.QTY2)'
            Mask = '0.0,0;(0.0,0);-'
            FontSize = 7
          end
          object QRExpr4: TQRExpr
            Left = 540
            Top = 6
            Width = 49
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1428.750000000000000000
              15.875000000000000000
              129.645833333333300000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            Color = clWhite
            Master = QuickRep1
            ParentFont = False
            ResetAfterPrint = False
            Transparent = False
            WordWrap = True
            Expression = 'SUM(QBrowse.QTY3)'
            Mask = '0.0,0;(0.0,0);-'
            FontSize = 7
          end
          object QRExpr5: TQRExpr
            Left = 598
            Top = 6
            Width = 53
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1582.208333333333000000
              15.875000000000000000
              140.229166666666700000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            Color = clWhite
            Master = QuickRep1
            ParentFont = False
            ResetAfterPrint = False
            Transparent = False
            WordWrap = True
            Expression = 'SUM(QBrowse.QTY4)'
            Mask = '0.0,0;(0.0,0);-'
            FontSize = 7
          end
          object QRExpr6: TQRExpr
            Left = 659
            Top = 6
            Width = 53
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1743.604166666667000000
              15.875000000000000000
              140.229166666666700000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            Color = clWhite
            Master = QuickRep1
            ParentFont = False
            ResetAfterPrint = False
            Transparent = False
            WordWrap = True
            Expression = 'SUM(QBrowse.QTY5)'
            Mask = '0.0,0;(0.0,0);-'
            FontSize = 7
          end
          object QRExpr7: TQRExpr
            Left = 720
            Top = 6
            Width = 56
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1905.000000000000000000
              15.875000000000000000
              148.166666666666700000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            Color = clWhite
            Master = QuickRep1
            ParentFont = False
            ResetAfterPrint = False
            Transparent = False
            WordWrap = True
            Expression = 'SUM(QBrowse.QTY6)'
            Mask = '0.0,0;(0.0,0);-'
            FontSize = 7
          end
          object QRExpr8: TQRExpr
            Left = 785
            Top = 6
            Width = 49
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              2076.979166666667000000
              15.875000000000000000
              129.645833333333300000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            Color = clWhite
            Master = QuickRep1
            ParentFont = False
            ResetAfterPrint = False
            Transparent = False
            WordWrap = True
            Expression = 'SUM(QBrowse.QTY7)'
            Mask = '0.0,0;(0.0,0);-'
            FontSize = 7
          end
          object QRExpr12: TQRExpr
            Left = 843
            Top = 6
            Width = 56
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              2230.437500000000000000
              15.875000000000000000
              148.166666666666700000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            Color = clWhite
            Master = QuickRep1
            ParentFont = False
            ResetAfterPrint = False
            Transparent = False
            WordWrap = True
            Expression = 'SUM(QBrowse.QTY8)'
            Mask = '0.0,0;(0.0,0);-'
            FontSize = 7
          end
          object QRExpr13: TQRExpr
            Left = 908
            Top = 6
            Width = 52
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              2402.416666666667000000
              15.875000000000000000
              137.583333333333300000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            Color = clWhite
            Master = QuickRep1
            ParentFont = False
            ResetAfterPrint = False
            Transparent = False
            WordWrap = True
            Expression = 'SUM(QBrowse.QTY9)'
            Mask = '0.0,0;(0.0,0);-'
            FontSize = 7
          end
          object QRExpr14: TQRExpr
            Left = 969
            Top = 6
            Width = 55
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              2563.812500000000000000
              15.875000000000000000
              145.520833333333300000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            Color = clWhite
            Master = QuickRep1
            ParentFont = False
            ResetAfterPrint = False
            Transparent = False
            WordWrap = True
            Expression = 'SUM(QBrowse.QTY10)'
            Mask = '0.0,0;(0.0,0);-'
            FontSize = 7
          end
        end
        object TitleBand1: TQRBand
          Left = 30
          Top = 30
          Width = 1189
          Height = 139
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          AlignToBottom = False
          BeforePrint = TitleBand1BeforePrint
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsItalic]
          ForceNewColumn = False
          ForceNewPage = False
          ParentFont = False
          Size.Values = (
            367.770833333333400000
            3145.895833333334000000)
          BandType = rbTitle
          object QRLabel7: TQRLabel
            Left = 446
            Top = 8
            Width = 259
            Height = 25
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              66.145833333333340000
              1180.041666666667000000
              21.166666666666670000
              685.270833333333400000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'LAPORAN WIP JET DYEING'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 14
          end
          object QRLabel13: TQRLabel
            Left = 547
            Top = 34
            Width = 63
            Height = 25
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              66.145833333333340000
              1447.270833333333000000
              89.958333333333340000
              166.687500000000000000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'QRLabel13'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Times New Roman'
            Font.Style = [fsItalic]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRImage1: TQRImage
            Left = 7
            Top = 1
            Width = 80
            Height = 48
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              127.000000000000000000
              18.520833333333330000
              2.645833333333333000
              211.666666666666700000)
            Picture.Data = {
              07544269746D617022210000424D222100000000000036000000280000004100
              00002B0000000100180000000000EC200000120B0000120B0000000000000000
              0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFDFDFDE4E4E4F5F5F5FEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFF9F8F8B7B3B0A09893BFA9AAF8F5F5F9FEFEF8FEFE
              FEFEFFFFFDFFFFFFFFFFFFFFFFFFFCFEFFFEFEFFFFFDFFFFFFFFFFFFFFFFFFFF
              FFFAFCFFF9FEFFF8FDFFF7FEFFF7FEFCF8FFFEF8FFFEFAFFFCFCFFFEFDFFFEFD
              FFFFFEFFFFFFFFFFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFDF7F3F1C2B5ABB59684B4998CE1CE
              D1FBFAFBFFFEFFFEFFFFF8FFFDF7FDFEF6FCFEF5FBFEEBEFFBC5D4E4A9BBCAB3
              C0D2B2BED4A0B3CE8CA2C58E99C9929DCA9AA4CEA4AED4ACB6D3B1B6D4C5CCE3
              EBF0FAF4FAFFF8FEFFFBFFFEFCFFFCFDFFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFEFEFEFCFAD7CEBFB8
              937DC0886FC89D90BEACB0F0EDF3F3F3FCB7C1D78395B17785AB5E648C536387
              697BA08392B0A1AFCFACBDDDAEC4DFAAC2DDADC5E1B0C2DF99A6C98895B9737B
              AF535B95606999838BB08E98B4BFC7DEEFF4FFF3FAFFF8FCFFFDFFFFFEFFFEFF
              FFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FEFDFDD3C1BDC09E8EC0917EB7837CB78084A16E817459779895B7C5CDE3D9E0
              EFC6CBDEC3C7E5BCC2E6999FCB9098C68390C07D95C28093C58395C2909CCAB3
              BFE9B5CBE7B4CDE0CADFF3B8C7E48695BE717CAD676DA08188B0C5CFE0E5EDF4
              F7FEFEFBFDFEFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFCFFFFF5FCFEE0E5F48C83AC866886B6837ACB8968D08C6BB77E6AB98D8CB1
              8FA67A5C89574D864A4B8F4A51A6424CAC4253AF3947A44448A84A4BAC4142A3
              4443A94848AF4551A544579D4F63A07489B694A7C2BCD3E5C7DCED9BADC67887
              AB6F76A69DA2CFDFE2F7F7FBFFF9FDFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFF7FEFFA9B7D4656F957F87ADCAC4DFC0AFCD937186B87F77C28067
              CE8364C57A6BAC686E95647E76517F644A8E59499D554DA44D439C443999463E
              A13A369A37389F353AA24146B1353BA5383FA237409C444AA0444C9C606EAD84
              91C2C1D2F0BECCE87685AD616E9895A5C2E5F4F9F7FEFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFDFF
              FEFFFEF9FEFED3DCE5767DA87487A8C4D5E9B4C1E25F67A7424AA04F4AA66A4F
              97946B91B77B7DCA8164D8855CD88362D3816DC37976A46A7796617D8F5D8486
              579472498765468B50429A3A3EA53F44AC393A9E403FA44846AF4541B6413FB5
              4244AA4C54B54C58AB6375B2ADC2E3C6DEEC8393B27378AEC0C7E0F3FBFEFBFE
              FFFFFFFBFFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFE
              FFFCFDFEF6FCFCADB8CD69739EA7B5D5C1D2EF6C79B241479E363CA32F39A436
              3DA74442AA493D926B518994677DB57978C77C6ECA7C68CC8268D38469D08167
              CD7D6BC47C6FC27A73B26D74955F7E6C467F6346896649896F4E8F6B498B6948
              915A40905447965349A74743AA454AAE3D4CA3707BC0ADB8DBA9B8D8626F9D9D
              A2C4E9F0F8FDFDFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFCFEFEF3F7FC9FA3C27177ABC2CCEB9CAFCF5359AA3C3DA33938A93B3DB2
              3B41B22D37A63339AB383DAB4442A44F4295564288745081986B88AE767DCA84
              71D78663D8875BD38B59DC8A5CDD875ED57E63CE7B6FBE7877BC7679BC7272C2
              7574BF7478B7737DAC738E946695714F985B4AA7454AAE3D3FAA474CA2899EC5
              BED6E57B88A67D7EA8EAE9F7FCFEFFFEFFFFFFFFFEFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFAFDFED8DFEB8488AFACB4D4A7B4D76570AF4247A74747B73F44B53A3E
              B0363BAA353EA5373EA63A3CAA393FB2353CB13537AD4040B33D3AA145419B51
              4A926A5B91735B8676587F815674976A78AC7978B57F6FBE866DC7866ECD846A
              D58766D3835ED88864D58763DB8B68D08471B77980956A908166A34743994048
              AD4049AA5665AF94A1CCB4BBDA696C9AB9C0D2F4F8FEFDFFFFFEFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFEFFFFFFFF
              FFFFFFFEFCFCFEE6EDF87279A2AFB8D7AEBFDB4F59A73F42B33E45B93D44B336
              3CAC373FAC3F44B22E34A43B3EAD3939A82F33A6373EB73035AD3739AC353BAF
              3D45B63B43AB414AAC494FB24449AC4A43A14944965851985B52895E517F6F57
              7C805F7E9871879C71819D737E9F747FA87B7DAB7D82A27480916E8F79649A59
              50AC4046AB404AAE3D44B84652B18499C3BCCCE36A7598BFC6D8F6FCFFFEFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFF9FAFF9298B994A8BEBECEE64B4FA54647B64146B93740B4
              333AAF3942B3353EB04144BA3437B23839B2383FB12F39B2353EB53038AB363C
              A9363CAE3D43AE4A50B74545AB4745A94948AB3F44A53B43A74247AB3D3FA444
              44AF4645AF4746A5534CA350459359539A4D4791504C9A554C985A4D91574A96
              4C48A14949AA4748B33F44B43747AC3548A84050AC8D9FC7B5C4DD6C739AD1D0
              E7FCFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
              FFFFFFFFFFFEFEFFFFFCFFFFC3C7DD7679A5C9DDEC5566A53D46A63C40B3373D
              B4323BAF3E40B2404BAB404DA53E49AA4347AE3B3F9B3B3EA32B37AF2F35B035
              36A5363BAD2E36A93742AB3A44AD484DB9454BAE454EA1474CA54F53AF484DA2
              454C9F3739A83A3EB6484DA34E4AA14C4DAD46509F45439C4944A13F3EB6464C
              AA504CAA4643A3464DA24A4BA5423F9D3137A43541B03E47AC424EA1A4B6DBA8
              B2D77C7AABEEF2F6FEFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFEEF1F87F82AAC1CDE57F8BBB3F4B9E4148AB39
              3FAF4248B93A43AE5556AA7883B57A85AA818AB5858DB67C84AF565DAA404BB9
              383FB63B3BAA3039A82E35A93641AB404DAF474EAC6B6FB48991B89097BC9397
              BC9097B88791BA4B52A34F54B08188B59491B68E94BE8F9EB89395BC767CB54D
              55AF6472AD9799C39C9DC89AA4C79B9EC49597C84C54A93645AA3642A035409F
              4450A0B9CCE4818BB4AFB2D5F8FCFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FF00FFFFFFFFFFFFFFFFFFFFFFFFFEFFFEC7CBE38A8EB9B9CAE04D51A2434BAC
              4044AF3A42AF3842AE3F4DAE6F75AFECF4FEF8FFFFFCFEFFFCFEFFF6FCFF818C
              BA3643A13239A93637A43139A8353CB0323EA73B49A94D51A4B9BBD9FCFDFFFE
              FEFFFFFFFFFBFEFFEAF1F9525B9C565CA3E5E9F5FEFDFFFDFEFFFAFFFCFDFEFF
              B1BEDB525AADA4B1D7FBFCFFFDFDFFFBFEFFFDFEFFECEAF9585EAA3340A5353E
              A73D48B53D4CA2687BB3B8CBE66F76AFE8EFF8FDFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFF8FAFB8A8BABB0B8D97184AD4042
              A53C40A94246B24048B33C45AF3846A97176B0F4F8FEFFFFFFFFFFFFFFFFFFFB
              FDFF8691B63E4AA33E40B14141AE333CA93640AE3643AA3F4EAF545CAABCC0D7
              FFFFFDFFFFFFFFFFFFFFFFFFF1F2F9535B9E5A5FA9EAEDF5FFFFFFFFFFFFFFFF
              FAFEFFFFB3BFDB565AB5ACB3DDFEFFFFFFFFFFFFFFFFFFFFFFECE9F8575BA73E
              48B34146BB3941B64254A85057B5A5B9D77382ADA9B2D2F7FBFFFEFEFFFFFFFF
              FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFEF2EFF89294B4D5E1F85D
              66B04045AA3F45B0474CB74049B33B47B13D49B26C78B2F1F9FDFEFFFDFFFFFF
              FFFFFFFDFEFF8E91B9454EA93A3EB13D3FAB353EA7353DA43543A7394BB24E5B
              B2BABDD9FFFFFDFDFFFFFFFFFFFFFFFFF0F2F9555FA05863ADE4ECF5FFFFFFFE
              FFFFFFFFFDFEFFFFB5C0D95654B8B3BAE6FDFFFFFFFFFFFEFFFFFFFFFFECEAF8
              565FA5414AB14047B03D49AE3E46B2494DB37D8CC5B2C7E18896BAF0F8FDFBFE
              FDFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFEFEFDD0CDE57B85A3
              AAB8D74349AC3943A3383DAA4045B1333BA7333CA9353FAB6474ABEFFBFDFEFF
              FCFFFFFFFFFFFFFDFEFF868BB64048A73A3EAC3A39A4313EA23641A3414DB034
              44AB4653AFB2BAD8FDFFFFFAFFFFFFFFFFFFFFFFF1F5F9545E9C5664AAE3ECF5
              FFFFFFFEFFFFFDFFFDFFFFFFB6BFD55454AFB4BCE4FDFFFFFFFFFFFCFFFEFDFF
              FFEAEEF85562A0414FAC4A4FAC4851AB3F3BBD3F45A74952A2B4C6DF677798D6
              DEEDFDFEFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFDFFFEA0A7
              CD8091AF97A1CA474BB13B46AF444CB7383EAE3E43B54148B63C43AC6A77B7F6
              FBFDFFFFFDFFFFFFFFFFFFFEFFFF8C94C34C54BC4149A63E3EA73C45AD3A4BAF
              3D47AB484FB3535DB1B3BAD7FEFFFFFFFFFFFFFFFFFFFFFFF4F7F95962A15865
              B1E5EBF5FFFFFEFFFFFFFFFFFFFFFFFFB5BDD65257A6B9C2E0FDFFFFFFFFFFFE
              FFFFFFFFFFECF1F85662A7404AB34544AD4245AC3F46AF3D4AB34951ADC1CBE9
              7888A6C6D0E4FFFFFEFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFD
              FFFF969AC5A7B7D19299C63E3FA93C45B1393FAA3A3EAF363BAD3941B03F47AF
              6E79BBF4FAFDFFFFFEFFFFFFFFFFFFFDFEFF8893BA4650AD43489F4F49AF4242
              AE3B45A74349AA494BB05059B0B6BDD8FFFFFFFFFFFEFFFFFFFFFFFFF4F6F954
              5C9B515CA9E4ECF4FFFFFEFFFFFFFFFFFEFEFFFFB6BFD85158A5B9C5E0FDFFFF
              FFFFFFFDFFFFFFFFFFEAEFF8515DA13E48B04242AB3D3FA83E45AD3C48B24147
              A596A0C89BAAC6C2CCE3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
              FFFFFFFCFEFE9194C1A4AECD979DC9403FAA3842AD3D44AE3D43B03C42B13B40
              AF3F48AE7683C3F5FBFDFFFFFDFFFFFFFFFFFFFDFFFF929BC1505AAA7581B07D
              7CB27C81B86B71AE5353A54D4DB0535EB5B6BFDAFFFFFCFFFFFFFFFFFFFFFFFF
              F6F6F95A62A1525BAAE5EDF5FFFFFEFFFFFFFFFFFEFFFFFFBAC2D9565EAAB6C5
              DFFDFFFFFFFFFFFEFFFFFFFFFFECF2F95A67AC424BB54344B04344AC4149B03D
              46B0444CA79099C4A5B5CC97A1C0FEFEFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFF
              FFFFFFFFFFFFFFFEFFFF9FA2CB9BA5C69EA2CE4C49B13E47AE3A43AA3F46B33C
              43AF4048B2414BAE7280BEF4FBFDFFFFFDFFFFFFFFFFFFFDFEFF8D93C04C589F
              DBE9F5FBFEFFF9FEFEE9F0FA9898C6585CAE5563B7BAC5DFFFFFFDFFFFFEFFFF
              FFFFFFFFF5F7F95C65A65561AEE2EBF5FFFFFCFFFFFFFFFFFFFEFFFFBAC1D955
              59A6BBC8DEFDFFFFFFFFFFFDFFFFFFFFFFECF0F85662A63B45AD3F41AB4346AC
              4047AF3641AC4149A68A92C2A7B7CEA1AAC7FFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FF00FFFFFFFFFFFFFFFFFFFEFFFEC6CAE47E89A5A7ADD24845AA3943A83D45AC
              3940AB343BA7383FA84049AB707ABBF4FBFDFFFFFDFFFFFFFFFFFFFDFEFF8C93
              C44A549AE1EBF4FFFFFFFFFFFDFAFEFAE9ECF6777CBC4E5DAEB7C1DCFFFFFEFF
              FFFEFFFFFFFFFFFFF3F5F95E66A75461AEE5EBF5FFFFFDFFFFFFFFFFFEFEFFFF
              B9C0DA545AA8B9C5DEFDFFFFFFFFFFFDFFFFFFFFFFECF1F85563A8424CB54445
              AC3A3AA44047B13B46B04149A4959DC7A0B1C9BBC8DFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFF00FFFFFFFFFFFFFFFFFFFEFEFCE0E5F58694AED4DEF45857A84042
              AC343BA34147B03F44B04047B04148AA727DB9F1FAFDFFFFFEFFFFFFFFFFFFFC
              FEFF959BCA595EA9E1ECF6FEFFFFFFFFFFFFFFFBFAFDFE919CC74F5AA7B8BEDB
              FFFFFEFFFFFFFFFFFFFFFFFDF4F6F85E66A4535DA7E4ECF5FFFFFBFFFFFFFFFF
              FFFFFFFFBCC2DE5E61AEBDC6E4FDFFFFFFFFFFFEFFFFFFFFFFE8ECF75058A042
              49B44146AC3E42AD4249B0363FA44349A0B6BFE37D8BA8C7CFE0FDFFFFFFFFFF
              FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFEFFF3F6FB757CA4B9C8DE69
              70A44943AF363DA73739A6393EAA343BA4444AAC6977B0F1F9FDFEFFFDFFFFFF
              FFFFFFFAFEFF8890BD4C51A5DAE7F5FEFFFFFFFFFFFFFFFFF9FFFFACBADA555A
              A6BABADEFCFFFDFEFFFFFFFFFFFFFFFDF5F9FB6C6FB35760A5E0EEF5FFFFFDFF
              FEFFFFFFFFFBFFFDB2BED6525AA4B8C1DFFEFFFCFFFFFDFFFFFFFEFFFEE6F1F8
              595FAB4244B33B44A53D47B23C43AF4146A5454A8FB8BFDA687091D9DEEAFBFF
              FFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFDFFFBFEFFA9AFCD
              979FC4B5BDD94E57A03440A53841AD3C44B03B46B04753B5727CB2F2F7FDFFFF
              FEFFFFFFFFFFFFFAFDFF8991C049509EDFE5F5FFFFFFFFFFFFFEFFFDF9FEFE89
              94C14D53A9A9B3D9F5FFFDFFFFFEFFFFFFFEFFFFEEF4FA575AA84E57ADD9E8F7
              FBFFFEFFFFFFFFFFFFFEFFFFB2C1D74E5C9DB2BDDFFDFEFFFFFFFFFFFFFFFFFF
              FDE8F0F85C63AC484AB73F4AAD3D4AAE4347BC4046A77C8ABBB9C5E39298BAF4
              FAFDFBFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FEE2E3EF6F70A2CBD6E66577A33847A2404AB1353DAB3743AF3647A76D76AAF1
              F8FDFDFFFDFFFFFEFFFFFFF8FEFF8390BB4C5999DFECF4FEFFFFFFFFFFFCFFFC
              DCE5F36C76BC4D56B36E7DB5E7F7FAFEFFFEFDFFFFF9FFFFDAE8F5434E9B4854
              AEA7BBDFF1FEFCFCFFFBFEFFFFFBFDFF7E89BD44529F7B85B8F3F8FCFCFEFDFD
              FEFEFDFFFFC9D0E74D52A34245B13C44AB3948A74044B94650A9A8BBD5818EAE
              B2B7D1FEFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFBFEFEA3A5C48B95B6B8C9E1465597424BA74047B3343CAD3D4AB1
              6571AFE2F3FDEEFEFFEDFCFFF0FCFFEAF9FF7281BA32488BD2E7F4F4F9FFF5FC
              FFD6E9F57280B13D47A4434DB24D5EA79DB1D4EFFBFFF0FCFFE0F0FB7081B039
              469831419B5165A0D4E8F5EEFEFFEEFAFFB7BEE25256B53947AD4857A4AEB6D3
              ECF9FBF2FBFEE0E9FD7C86BF444CA83A42AC3F47AF3A44A44046A26F7AB2B1BE
              D3707A96EEF3F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
              FFFFFFFFFFFCFFFDFFFDFFF8EFF4F7747BA8AFBDDA99A7CC424B964749B03F44
              B43D43B4404CAB5B6DB25F77B16676BC6C7BC16B78BF444CAF344BAA6D86C17D
              87CD6777B64D64A53B4BA63D49B5404AB1474FAD4B54A86472B16D81BB5063AA
              3944A43038A2333CA93A45AA4F5CAB6678B2586AA542509D3C40A72E3EAB394A
              AE4A52A65C6AAA6379AC4C5CA04652B33F4DB54049AE4348B04745AF556296CB
              D6E98283AFC1C3D4FDFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFF
              FFFFFFFFFFFFFFFFFFFDFFFDFFFFFFFAFBFFFAD1D2EA73789BD2DEEC8994BF4A
              4CA63D3BAE383AAC363FB03947AD3649AA3741B0383EB23C42B2373BB23241B3
              2F43A53039A326369C3648AB303CAA2832A13843AC3940A63B3EAA3841AA3644
              A63340AB3037AC2E33A92D35A7353BAF393FAF3540A23542A03340A2353CA130
              3FAA3843B53F42B04049AE414FAD2E3D9E3B46AF3443A33A45A43E45A8494D9C
              B5C0D99EA3C6918CB5F4F4FAFCFEFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDD4D6E07D81A8
              ADB5D8AAB4D7565EA14847AD393EB0353CAF3A40B52730A32F38A9333EAC3742
              AF2F3BAA2E37A72F39A92934A2333AA83F45B23A40AC4249B43A42A8373EA930
              3AA8252F9F3039A8303BAB2631A22C31A2383DAD383FAB393EAA3139A1363EA6
              323CA6323BA73236A7373DA93E42AA3A44A83B45AD3E43AE3C43A53E49975C67
              A6B4BFDB99A0BF9395B6E5E6F1FFFFFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFF
              FED9DCEA7571A8979CC3CED9EC6C74A83E459C3E42AC353AB23942BA2D3FA92F
              41A8353BAE2A32A53138AA2B32A32F38A63238A7383DAC2F34A1353CA63840A7
              3740A8323AA82F37A42D36A527309E222A9B333AA9353AAB3D42B03A42AB2A32
              9B363EA52E3EA22E3EA8313AAB3B40B0343BA83F4CAE3440A4373AA94546A96F
              75AFCBD6EC868BAE8C92ADEFF4F8FCFEFEFDFEFEFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFEFFFCFDFFFAE8E7F3918EBF8A88BCD3DDEE8A99BD4B569A444CAB3C42B3
              3643B23D48B9393FB13A3DB13338AA3238AA373BAD3A41B03F47B33D41AF474F
              B84149B13F48B2363EAA3C44AF2C33A1363BAB2B329F3C42AF3B3FB03A40AD34
              3BA43B44AA3B46AD3343A63843AD3B44AF3E45B34045AF4449B2464FAF515CA6
              8B93C0CCD3E68C91AE9291B4EEF2F7FBFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFEFEFDFEFFF1F2F5F89E9CBF7776A4B2C0D5B6C5E26F7C
              AF4951A0494BAF4748B53C3EAD3A3FAA3536A43C40AD4144B0383EAC2C31A137
              3BA94048B13841A93B42AB4144B0363CA73A41AC3D41AC3135A14247B43D44B1
              3A42AE3840AA434CB33C44AC3940A73A41A93D43A84B4EB0464DA54E51A76E74
              B8AAB4D9BBC9D56E788F9EA4BDF5F5FBFDFEFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFEFFFEFFFFFCFFFCFFFCFCFFFDDADCEA757CA88A
              95B5D0DDECB9C1D87273AE4E4EA34248AB3B40A44046AB3A3DA63C40A74146B2
              3D42B03940AB3F47B0373FA93E46AD474CB64247B33B3FAA4144AF383CA73B41
              AC333BA7393EAA4149B2353DA63D43AC3C3FA54243A94649A74D51A6686CB3B1
              B9D9D1DAEC8B91B6767AA2CDD5E1F2FCFEFDFFFBFEFFFEFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              EFF4F7A8ABC070739E888AB8C7D1E9C3D1EC7D89BC5C64A44950A04749A84444
              AB474CB3454CB03D42A8494FB7464BB2464CB43E49AE3F4DB1424FB23E4BAE3B
              46AB4049AD424AAD4248AC4B50B25055B55055B15B59AA6D71B68189BFB9C7E4
              C5D9EC8B9BBB6F779CA1A8BEF1F4F9FDFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFCFDFCFCFDFEE6E6F5A2A6C3656F8E848DABABB7D1D2DDF2B6C5E18E
              9DC47081B05A60A44B4E9B4C519D5356A75355A75051A8494BA64D4EA94A4BA6
              5155AD4345A04541A74F4CB05250A755599B6F75A7919CBFA4B5CECFDDF1B3C0
              D78891B66E73A29C9FC3E1E6F3F6FCFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFDFDFEFEFFFDFBFCFFEAEDF4C6C7DA8786B46C6F9E
              8C93B59DA7C5C2D1E8D9E8F6C0CEDEBBCBDDB8C5DBA0ADC7939FBE959DC38A94
              B9878FB88C94BB9AA3CCAFBCD6B8C8DBC3D0E0DAE7F3CDD9EA96A0B9838FB16A
              7695848DA6C2CCD6E7ECF4FEFCFEFCFCFEFDFEFEFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFEFFFFFFFFFFFFF9FB
              FEF0F2F9C2C3DB8C8FAF8085A8747EAD616F9F7783B598A4CEACB6E1BBC7EBC5
              D8ECC4D7EAC2D6E8BBCDE1A2B4CB97A8C67E8DB8646F9D6B74A57B82B18288B4
              B7C0D7EDF3FAF8FCFDFEFFFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFCFFFFF6FEFFFBFEFFFDFEFFFFFBFDFEE8F1F8CAD3E5ADB8CDABB6CCABB4CB
              AAB3CBABB2D0A5ACCAA4ACCBA2A9CAA2ABC7A8AECCAEB3CEC5CCE1E8EDF5F4FD
              FCF8FEFAFEFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFEFFFDFCFFFEFEFEFEFEFEFFFFFFFFFFFFFFFFFEFFFFFEFEFEFFFD
              FFFFFFFFFEFFFFFEFFFFFDFFFFFDFFFFFEFFFEFBFFFFFEFFFCFDFDFDFEFEFDFF
              FFFEFFFDFEFDFCFCFFFEFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFDFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFF00}
            Stretch = True
          end
          object QRLabel14: TQRLabel
            Left = 8
            Top = 49
            Width = 87
            Height = 16
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              42.333333333333340000
              21.166666666666670000
              129.645833333333300000
              230.187500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'PT. PISMATEX'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel21: TQRLabel
            Left = 8
            Top = 65
            Width = 86
            Height = 16
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              42.333333333333340000
              21.166666666666670000
              171.979166666666700000
              227.541666666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Textile Industry'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel8: TQRLabel
            Left = 4
            Top = 112
            Width = 33
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              10.583333333333330000
              296.333333333333300000
              87.312500000000000000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'KODE'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 8
          end
          object QRLabel9: TQRLabel
            Left = 140
            Top = 112
            Width = 75
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              370.416666666666700000
              296.333333333333300000
              198.437500000000000000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'KONSTRUKSI'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 8
          end
          object QRLabel22: TQRLabel
            Left = 303
            Top = 119
            Width = 14
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              801.687500000000000000
              314.854166666666700000
              37.041666666666670000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Ptg'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 7
          end
          object QRLabel23: TQRLabel
            Left = 452
            Top = 100
            Width = 35
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1195.916666666667000000
              264.583333333333300000
              92.604166666666660000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'MASUK'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 7
          end
          object QRLabel25: TQRLabel
            Left = 375
            Top = 119
            Width = 16
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              992.187500000000000000
              314.854166666666700000
              42.333333333333340000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Mtr'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 7
          end
          object QRLabel28: TQRLabel
            Left = 703
            Top = 100
            Width = 41
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1860.020833333333000000
              264.583333333333300000
              108.479166666666700000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'KELUAR'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 7
          end
          object QRLabel31: TQRLabel
            Left = 811
            Top = 100
            Width = 63
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              2145.770833333333000000
              264.583333333333300000
              166.687500000000000000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'KOREKSI (IN)'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 7
          end
          object QRLabel34: TQRLabel
            Left = 928
            Top = 100
            Width = 72
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              2455.333333333333000000
              264.583333333333300000
              190.500000000000000000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'KOREKSI (OUT)'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 7
          end
          object QRShape2: TQRShape
            Left = 0
            Top = 98
            Width = 1188
            Height = 1
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              2.645833333333333000
              0.000000000000000000
              259.291666666666700000
              3143.250000000000000000)
            Shape = qrsRectangle
          end
          object QRShape4: TQRShape
            Left = 40
            Top = 99
            Width = 1
            Height = 40
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              105.833333333333300000
              105.833333333333300000
              261.937500000000000000
              2.645833333333333000)
            Shape = qrsRectangle
          end
          object QRShape5: TQRShape
            Left = 276
            Top = 99
            Width = 1
            Height = 40
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              105.833333333333300000
              730.250000000000000000
              261.937500000000000000
              2.645833333333333000)
            Shape = qrsRectangle
          end
          object QRShape6: TQRShape
            Left = 415
            Top = 99
            Width = 1
            Height = 40
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              105.833333333333300000
              1098.020833333333000000
              261.937500000000000000
              2.645833333333333000)
            Shape = qrsRectangle
          end
          object QRShape7: TQRShape
            Left = 535
            Top = 99
            Width = 1
            Height = 40
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              105.833333333333300000
              1415.520833333333000000
              261.937500000000000000
              2.645833333333333000)
            Shape = qrsRectangle
          end
          object QRShape8: TQRShape
            Left = 655
            Top = 99
            Width = 1
            Height = 40
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              105.833333333333300000
              1733.020833333333000000
              261.937500000000000000
              2.645833333333333000)
            Shape = qrsRectangle
          end
          object QRShape9: TQRShape
            Left = 780
            Top = 99
            Width = 1
            Height = 40
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              105.833333333333300000
              2063.750000000000000000
              261.937500000000000000
              2.645833333333333000)
            Shape = qrsRectangle
          end
          object QRShape10: TQRShape
            Left = 1188
            Top = 99
            Width = 1
            Height = 41
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              108.479166666666700000
              3143.250000000000000000
              261.937500000000000000
              2.645833333333333000)
            Shape = qrsRectangle
          end
          object QRShape3: TQRShape
            Left = 0
            Top = 99
            Width = 1
            Height = 40
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              105.833333333333300000
              0.000000000000000000
              261.937500000000000000
              2.645833333333333000)
            Shape = qrsRectangle
          end
          object QRShape11: TQRShape
            Left = 276
            Top = 117
            Width = 913
            Height = 1
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              2.645833333333333000
              730.250000000000000000
              309.562500000000000000
              2415.645833333333000000)
            Shape = qrsRectangle
          end
          object QRShape23: TQRShape
            Left = 348
            Top = 117
            Width = 1
            Height = 23
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              60.854166666666680000
              920.750000000000000000
              309.562500000000000000
              2.645833333333333000)
            Shape = qrsRectangle
          end
          object QRShape24: TQRShape
            Left = 475
            Top = 117
            Width = 1
            Height = 23
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              60.854166666666680000
              1256.770833333333000000
              309.562500000000000000
              2.645833333333333000)
            Shape = qrsRectangle
          end
          object QRShape25: TQRShape
            Left = 593
            Top = 117
            Width = 1
            Height = 23
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              60.854166666666680000
              1568.979166666667000000
              309.562500000000000000
              2.645833333333333000)
            Shape = qrsRectangle
          end
          object QRShape26: TQRShape
            Left = 715
            Top = 117
            Width = 1
            Height = 23
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              60.854166666666680000
              1891.770833333333000000
              309.562500000000000000
              2.645833333333333000)
            Shape = qrsRectangle
          end
          object QRShape27: TQRShape
            Left = 838
            Top = 117
            Width = 1
            Height = 23
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              60.854166666666680000
              2217.208333333333000000
              309.562500000000000000
              2.645833333333333000)
            Shape = qrsRectangle
          end
          object QRLabel1: TQRLabel
            Left = 322
            Top = 100
            Width = 57
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              851.958333333333400000
              264.583333333333300000
              150.812500000000000000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'STOK AWAL'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 7
          end
          object QRLabel3: TQRLabel
            Left = 436
            Top = 119
            Width = 14
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1153.583333333333000000
              314.854166666666700000
              37.041666666666670000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Ptg'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 7
          end
          object QRLabel5: TQRLabel
            Left = 500
            Top = 119
            Width = 16
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1322.916666666667000000
              314.854166666666700000
              42.333333333333340000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Mtr'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 7
          end
          object QRShape44: TQRShape
            Left = 903
            Top = 99
            Width = 1
            Height = 40
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              105.833333333333300000
              2389.187500000000000000
              261.937500000000000000
              2.645833333333333000)
            Shape = qrsRectangle
          end
          object QRShape45: TQRShape
            Left = 1028
            Top = 99
            Width = 1
            Height = 40
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              105.833333333333300000
              2719.916666666667000000
              261.937500000000000000
              2.645833333333333000)
            Shape = qrsRectangle
          end
          object QRShape46: TQRShape
            Left = 964
            Top = 117
            Width = 1
            Height = 23
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              60.854166666666680000
              2550.583333333333000000
              309.562500000000000000
              2.645833333333333000)
            Shape = qrsRectangle
          end
          object QRShape47: TQRShape
            Left = 1110
            Top = 117
            Width = 1
            Height = 23
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              60.854166666666680000
              2936.875000000000000000
              309.562500000000000000
              2.645833333333333000)
            Shape = qrsRectangle
          end
          object QRLabel6: TQRLabel
            Left = 558
            Top = 119
            Width = 14
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1476.375000000000000000
              314.854166666666700000
              37.041666666666670000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Ptg'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 7
          end
          object QRLabel10: TQRLabel
            Left = 680
            Top = 119
            Width = 14
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1799.166666666667000000
              314.854166666666700000
              37.041666666666670000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Ptg'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 7
          end
          object QRLabel11: TQRLabel
            Left = 803
            Top = 119
            Width = 14
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              2124.604166666667000000
              314.854166666666700000
              37.041666666666670000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Ptg'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 7
          end
          object QRLabel12: TQRLabel
            Left = 927
            Top = 119
            Width = 14
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              2452.687500000000000000
              314.854166666666700000
              37.041666666666670000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Ptg'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 7
          end
          object QRLabel15: TQRLabel
            Left = 1062
            Top = 119
            Width = 14
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              2809.875000000000000000
              314.854166666666700000
              37.041666666666670000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Ptg'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 7
          end
          object QRLabel16: TQRLabel
            Left = 615
            Top = 119
            Width = 16
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1627.187500000000000000
              314.854166666666700000
              42.333333333333340000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Mtr'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 7
          end
          object QRLabel26: TQRLabel
            Left = 740
            Top = 119
            Width = 16
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1957.916666666667000000
              314.854166666666700000
              42.333333333333340000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Mtr'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 7
          end
          object QRLabel27: TQRLabel
            Left = 863
            Top = 119
            Width = 16
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              2283.354166666667000000
              314.854166666666700000
              42.333333333333340000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Mtr'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 7
          end
          object QRLabel29: TQRLabel
            Left = 987
            Top = 119
            Width = 16
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              2611.437500000000000000
              314.854166666666700000
              42.333333333333340000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Mtr'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 7
          end
          object QRLabel30: TQRLabel
            Left = 1138
            Top = 119
            Width = 16
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              3010.958333333334000000
              314.854166666666700000
              42.333333333333340000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Mtr'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 7
          end
          object QRLabel32: TQRLabel
            Left = 1080
            Top = 100
            Width = 60
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              2857.500000000000000000
              264.583333333333400000
              158.750000000000000000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'STOK AKHIR'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 7
          end
          object QRLabel24: TQRLabel
            Left = 569
            Top = 100
            Width = 51
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1505.479166666667000000
              264.583333333333300000
              134.937500000000000000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'RE PROSES'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 7
          end
        end
        object PageFooterBand1: TQRBand
          Left = 30
          Top = 377
          Width = 1189
          Height = 21
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          AlignToBottom = True
          BeforePrint = PageFooterBand1BeforePrint
          Color = clWhite
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            55.562500000000000000
            3145.895833333334000000)
          BandType = rbPageFooter
          object QRDBText19: TQRDBText
            Left = 3
            Top = 2
            Width = 69
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              7.937500000000000000
              5.291666666666667000
              182.562500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = DMFrm.QDateTime
            DataField = 'VUSER_CETAK'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Trebuchet MS'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 8
          end
        end
      end
      object PageControl1: TPageControl
        Left = 0
        Top = 0
        Width = 1132
        Height = 363
        ActivePage = TabSheet1
        Align = alClient
        TabOrder = 1
        object TabSheet1: TTabSheet
          Caption = 'WIP Jet Dyeing'
          object QuickRep4: TQuickRep
            Left = 92
            Top = 34
            Width = 816
            Height = 1248
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            AfterPrint = QuickRep1AfterPrint
            AfterPreview = QuickRep1AfterPreview
            BeforePrint = QuickRep1BeforePrint
            DataSet = QBrowse
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
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
            Options = [FirstPageHeader, LastPageFooter]
            Page.Columns = 1
            Page.Orientation = poPortrait
            Page.PaperSize = Folio
            Page.Values = (
              127.000000000000000000
              3302.000000000000000000
              80.000000000000000000
              2159.000000000000000000
              80.000000000000000000
              100.000000000000000000
              0.000000000000000000)
            PrinterSettings.Copies = 1
            PrinterSettings.Duplex = False
            PrinterSettings.FirstPage = 0
            PrinterSettings.LastPage = 0
            PrinterSettings.OutputBin = Auto
            PrintIfEmpty = True
            SnapToGrid = True
            Units = Native
            Zoom = 100
            object QRBand9: TQRBand
              Left = 30
              Top = 169
              Width = 748
              Height = 20
              Frame.Color = clBlack
              Frame.DrawTop = True
              Frame.DrawBottom = False
              Frame.DrawLeft = True
              Frame.DrawRight = True
              AlignToBottom = False
              Color = clWhite
              ForceNewColumn = False
              ForceNewPage = False
              Size.Values = (
                52.916666666666660000
                1979.083333333333000000)
              BandType = rbDetail
              object QRDBText46: TQRDBText
                Left = 45
                Top = 5
                Width = 94
                Height = 17
                Frame.Color = clBlack
                Frame.DrawTop = False
                Frame.DrawBottom = False
                Frame.DrawLeft = False
                Frame.DrawRight = False
                Size.Values = (
                  44.979166666666670000
                  119.062500000000000000
                  13.229166666666670000
                  248.708333333333300000)
                Alignment = taLeftJustify
                AlignToBand = False
                AutoSize = True
                AutoStretch = False
                Color = clWhite
                DataSet = QBrowse
                DataField = 'NAMA_KONSTRUKSI'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -9
                Font.Name = 'Times New Roman'
                Font.Style = []
                Mask = '#,#;(#,#);-'
                ParentFont = False
                Transparent = False
                WordWrap = True
                FontSize = 7
              end
              object QRDBText47: TQRDBText
                Left = 4
                Top = 5
                Width = 31
                Height = 17
                Frame.Color = clBlack
                Frame.DrawTop = False
                Frame.DrawBottom = False
                Frame.DrawLeft = False
                Frame.DrawRight = False
                Size.Values = (
                  44.979166666666670000
                  10.583333333333330000
                  13.229166666666670000
                  82.020833333333340000)
                Alignment = taLeftJustify
                AlignToBand = False
                AutoSize = False
                AutoStretch = False
                Color = clWhite
                DataSet = QBrowse
                DataField = 'KD_KONSTRUKSI'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -9
                Font.Name = 'Times New Roman'
                Font.Style = []
                Mask = '0.0,0;(0.0,0);-'
                ParentFont = False
                Transparent = False
                WordWrap = True
                FontSize = 7
              end
              object QRDBText48: TQRDBText
                Left = 360
                Top = 5
                Width = 51
                Height = 17
                Frame.Color = clBlack
                Frame.DrawTop = False
                Frame.DrawBottom = False
                Frame.DrawLeft = False
                Frame.DrawRight = False
                Size.Values = (
                  44.979166666666670000
                  952.500000000000000000
                  13.229166666666670000
                  134.937500000000000000)
                Alignment = taRightJustify
                AlignToBand = False
                AutoSize = False
                AutoStretch = False
                Color = clWhite
                DataSet = QBrowse
                DataField = 'kg1'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -9
                Font.Name = 'Times New Roman'
                Font.Style = []
                Mask = '0.0,0;(0.0,0);-'
                ParentFont = False
                Transparent = False
                WordWrap = True
                FontSize = 7
              end
              object QRDBText51: TQRDBText
                Left = 424
                Top = 5
                Width = 56
                Height = 17
                Frame.Color = clBlack
                Frame.DrawTop = False
                Frame.DrawBottom = False
                Frame.DrawLeft = False
                Frame.DrawRight = False
                Size.Values = (
                  44.979166666666670000
                  1121.833333333333000000
                  13.229166666666670000
                  148.166666666666700000)
                Alignment = taRightJustify
                AlignToBand = False
                AutoSize = False
                AutoStretch = False
                Color = clWhite
                DataSet = QBrowse
                DataField = 'kg2'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -9
                Font.Name = 'Times New Roman'
                Font.Style = []
                Mask = '0.0,0;(0.0,0);-'
                ParentFont = False
                Transparent = False
                WordWrap = True
                FontSize = 7
              end
              object QRDBText52: TQRDBText
                Left = 490
                Top = 5
                Width = 47
                Height = 17
                Frame.Color = clBlack
                Frame.DrawTop = False
                Frame.DrawBottom = False
                Frame.DrawLeft = False
                Frame.DrawRight = False
                Size.Values = (
                  44.979166666666670000
                  1296.458333333333000000
                  13.229166666666670000
                  124.354166666666700000)
                Alignment = taRightJustify
                AlignToBand = False
                AutoSize = False
                AutoStretch = False
                Color = clWhite
                DataSet = QBrowse
                DataField = 'kg3'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -9
                Font.Name = 'Times New Roman'
                Font.Style = []
                Mask = '0.0,0;(0.0,0);-'
                ParentFont = False
                Transparent = False
                WordWrap = True
                FontSize = 7
              end
              object QRDBText53: TQRDBText
                Left = 548
                Top = 5
                Width = 53
                Height = 17
                Frame.Color = clBlack
                Frame.DrawTop = False
                Frame.DrawBottom = False
                Frame.DrawLeft = False
                Frame.DrawRight = False
                Size.Values = (
                  44.979166666666670000
                  1449.916666666667000000
                  13.229166666666670000
                  140.229166666666700000)
                Alignment = taRightJustify
                AlignToBand = False
                AutoSize = False
                AutoStretch = False
                Color = clWhite
                DataSet = QBrowse
                DataField = 'kg4'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -9
                Font.Name = 'Times New Roman'
                Font.Style = []
                Mask = '0.0,0;(0.0,0);-'
                ParentFont = False
                Transparent = False
                WordWrap = True
                FontSize = 7
              end
              object QRDBText54: TQRDBText
                Left = 611
                Top = 5
                Width = 46
                Height = 17
                Frame.Color = clBlack
                Frame.DrawTop = False
                Frame.DrawBottom = False
                Frame.DrawLeft = False
                Frame.DrawRight = False
                Size.Values = (
                  44.979166666666670000
                  1616.604166666667000000
                  13.229166666666670000
                  121.708333333333300000)
                Alignment = taRightJustify
                AlignToBand = False
                AutoSize = False
                AutoStretch = False
                Color = clWhite
                DataSet = QBrowse
                DataField = 'kg5'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -9
                Font.Name = 'Times New Roman'
                Font.Style = []
                Mask = '0.0,0;(0.0,0);-'
                ParentFont = False
                Transparent = False
                WordWrap = True
                FontSize = 7
              end
              object QRShape134: TQRShape
                Left = 40
                Top = 0
                Width = 1
                Height = 21
                Frame.Color = clBlack
                Frame.DrawTop = False
                Frame.DrawBottom = False
                Frame.DrawLeft = False
                Frame.DrawRight = False
                Size.Values = (
                  55.562500000000000000
                  105.833333333333300000
                  0.000000000000000000
                  2.645833333333333000)
                Shape = qrsRectangle
              end
              object QRShape135: TQRShape
                Left = 353
                Top = 1
                Width = 1
                Height = 21
                Frame.Color = clBlack
                Frame.DrawTop = False
                Frame.DrawBottom = False
                Frame.DrawLeft = False
                Frame.DrawRight = False
                Size.Values = (
                  55.562500000000000000
                  933.979166666666600000
                  2.645833333333333000
                  2.645833333333333000)
                Shape = qrsRectangle
              end
              object QRShape138: TQRShape
                Left = 416
                Top = 1
                Width = 1
                Height = 21
                Frame.Color = clBlack
                Frame.DrawTop = False
                Frame.DrawBottom = False
                Frame.DrawLeft = False
                Frame.DrawRight = False
                Size.Values = (
                  55.562500000000000000
                  1100.666666666667000000
                  2.645833333333333000
                  2.645833333333333000)
                Shape = qrsRectangle
              end
              object QRShape139: TQRShape
                Left = 484
                Top = 1
                Width = 1
                Height = 21
                Frame.Color = clBlack
                Frame.DrawTop = False
                Frame.DrawBottom = False
                Frame.DrawLeft = False
                Frame.DrawRight = False
                Size.Values = (
                  55.562500000000000000
                  1280.583333333333000000
                  2.645833333333333000
                  2.645833333333333000)
                Shape = qrsRectangle
              end
              object QRShape140: TQRShape
                Left = 542
                Top = 1
                Width = 1
                Height = 21
                Frame.Color = clBlack
                Frame.DrawTop = False
                Frame.DrawBottom = False
                Frame.DrawLeft = False
                Frame.DrawRight = False
                Size.Values = (
                  55.562500000000000000
                  1434.041666666667000000
                  2.645833333333333000
                  2.645833333333333000)
                Shape = qrsRectangle
              end
              object QRShape141: TQRShape
                Left = 605
                Top = 1
                Width = 1
                Height = 21
                Frame.Color = clBlack
                Frame.DrawTop = False
                Frame.DrawBottom = False
                Frame.DrawLeft = False
                Frame.DrawRight = False
                Size.Values = (
                  55.562500000000000000
                  1600.729166666667000000
                  2.645833333333333000
                  2.645833333333333000)
                Shape = qrsRectangle
              end
              object QRShape142: TQRShape
                Left = 662
                Top = 1
                Width = 1
                Height = 21
                Frame.Color = clBlack
                Frame.DrawTop = False
                Frame.DrawBottom = False
                Frame.DrawLeft = False
                Frame.DrawRight = False
                Size.Values = (
                  55.562500000000000000
                  1751.541666666667000000
                  2.645833333333333000
                  2.645833333333333000)
                Shape = qrsRectangle
              end
              object QRDBText55: TQRDBText
                Left = 668
                Top = 5
                Width = 73
                Height = 17
                Frame.Color = clBlack
                Frame.DrawTop = False
                Frame.DrawBottom = False
                Frame.DrawLeft = False
                Frame.DrawRight = False
                Size.Values = (
                  44.979166666666670000
                  1767.416666666667000000
                  13.229166666666670000
                  193.145833333333300000)
                Alignment = taRightJustify
                AlignToBand = False
                AutoSize = False
                AutoStretch = False
                Color = clWhite
                DataSet = QBrowse
                DataField = 'kg_akhir'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -9
                Font.Name = 'Times New Roman'
                Font.Style = []
                Mask = '0.0,0;(0.0,0);-'
                ParentFont = False
                Transparent = False
                WordWrap = True
                FontSize = 7
              end
              object QRDBText56: TQRDBText
                Left = 280
                Top = 5
                Width = 67
                Height = 17
                Frame.Color = clBlack
                Frame.DrawTop = False
                Frame.DrawBottom = False
                Frame.DrawLeft = False
                Frame.DrawRight = False
                Size.Values = (
                  44.979166666666670000
                  740.833333333333400000
                  13.229166666666670000
                  177.270833333333300000)
                Alignment = taRightJustify
                AlignToBand = False
                AutoSize = False
                AutoStretch = False
                Color = clWhite
                DataSet = QBrowse
                DataField = 'kg_awl'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -9
                Font.Name = 'Times New Roman'
                Font.Style = []
                Mask = '0.0,0;(0.0,0);-'
                ParentFont = False
                Transparent = False
                WordWrap = True
                FontSize = 7
              end
              object QRShape143: TQRShape
                Left = 276
                Top = 1
                Width = 1
                Height = 21
                Frame.Color = clBlack
                Frame.DrawTop = False
                Frame.DrawBottom = False
                Frame.DrawLeft = False
                Frame.DrawRight = False
                Size.Values = (
                  55.562500000000000000
                  730.250000000000000000
                  2.645833333333333000
                  2.645833333333333000)
                Shape = qrsRectangle
              end
            end
            object QRBand10: TQRBand
              Left = 30
              Top = 189
              Width = 748
              Height = 188
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              AlignToBottom = False
              BeforePrint = QRBand10BeforePrint
              Color = clWhite
              ForceNewColumn = False
              ForceNewPage = False
              Size.Values = (
                497.416666666666700000
                1979.083333333333000000)
              BandType = rbSummary
              object QRLabel84: TQRLabel
                Left = 135
                Top = 7
                Width = 33
                Height = 17
                Frame.Color = clBlack
                Frame.DrawTop = False
                Frame.DrawBottom = False
                Frame.DrawLeft = False
                Frame.DrawRight = False
                Size.Values = (
                  44.979166666666670000
                  357.187500000000000000
                  18.520833333333330000
                  87.312500000000000000)
                Alignment = taLeftJustify
                AlignToBand = False
                AutoSize = True
                AutoStretch = False
                Caption = 'TOTAL'
                Color = clWhite
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -9
                Font.Name = 'Times New Roman'
                Font.Style = [fsBold]
                ParentFont = False
                Transparent = False
                WordWrap = True
                FontSize = 7
              end
              object QRExpr36: TQRExpr
                Left = 357
                Top = 6
                Width = 56
                Height = 17
                Frame.Color = clBlack
                Frame.DrawTop = False
                Frame.DrawBottom = False
                Frame.DrawLeft = False
                Frame.DrawRight = False
                Size.Values = (
                  44.979166666666670000
                  944.562500000000000000
                  15.875000000000000000
                  148.166666666666700000)
                Alignment = taRightJustify
                AlignToBand = False
                AutoSize = False
                AutoStretch = False
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -9
                Font.Name = 'Times New Roman'
                Font.Style = [fsBold]
                Color = clWhite
                Master = QuickRep4
                ParentFont = False
                ResetAfterPrint = False
                Transparent = False
                WordWrap = True
                Expression = 'SUM(QBrowse.KG1)'
                Mask = '0.0,0;(0.0,0);-'
                FontSize = 7
              end
              object QRDBText57: TQRDBText
                Left = 590
                Top = 137
                Width = 33
                Height = 17
                Frame.Color = clBlack
                Frame.DrawTop = False
                Frame.DrawBottom = False
                Frame.DrawLeft = False
                Frame.DrawRight = False
                Size.Values = (
                  44.979166666666670000
                  1561.041666666667000000
                  362.479166666666700000
                  87.312500000000000000)
                Alignment = taCenter
                AlignToBand = False
                AutoSize = True
                AutoStretch = False
                Color = clWhite
                DataSet = DMFrm.QDateTime
                DataField = 'USER'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Times New Roman'
                Font.Style = [fsBold, fsUnderline]
                ParentFont = False
                Transparent = False
                WordWrap = True
                FontSize = 10
              end
              object QRLabel85: TQRLabel
                Left = 570
                Top = 66
                Width = 69
                Height = 17
                Frame.Color = clBlack
                Frame.DrawTop = False
                Frame.DrawBottom = False
                Frame.DrawLeft = False
                Frame.DrawRight = False
                Size.Values = (
                  44.979166666666670000
                  1508.125000000000000000
                  174.625000000000000000
                  182.562500000000000000)
                Alignment = taLeftJustify
                AlignToBand = False
                AutoSize = True
                AutoStretch = False
                Caption = 'Administrasi'
                Color = clWhite
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Times New Roman'
                Font.Style = []
                ParentFont = False
                Transparent = False
                WordWrap = True
                FontSize = 10
              end
              object QRLabel86: TQRLabel
                Left = 175
                Top = 66
                Width = 66
                Height = 17
                Frame.Color = clBlack
                Frame.DrawTop = False
                Frame.DrawBottom = False
                Frame.DrawLeft = False
                Frame.DrawRight = False
                Size.Values = (
                  44.979166666666670000
                  463.020833333333300000
                  174.625000000000000000
                  174.625000000000000000)
                Alignment = taLeftJustify
                AlignToBand = False
                AutoSize = True
                AutoStretch = False
                Caption = 'Mengetahui'
                Color = clWhite
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Times New Roman'
                Font.Style = []
                ParentFont = False
                Transparent = False
                WordWrap = True
                FontSize = 10
              end
              object QRLabel87: TQRLabel
                Left = 161
                Top = 141
                Width = 92
                Height = 17
                Frame.Color = clBlack
                Frame.DrawTop = False
                Frame.DrawBottom = False
                Frame.DrawLeft = False
                Frame.DrawRight = False
                Size.Values = (
                  44.979166666666670000
                  425.979166666666700000
                  373.062500000000000000
                  243.416666666666700000)
                Alignment = taLeftJustify
                AlignToBand = False
                AutoSize = True
                AutoStretch = False
                Caption = 'NUR IHWANTO'
                Color = clWhite
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Times New Roman'
                Font.Style = [fsBold, fsUnderline]
                ParentFont = False
                Transparent = False
                WordWrap = True
                FontSize = 10
              end
              object QRLabel88: TQRLabel
                Left = 144
                Top = 157
                Width = 124
                Height = 17
                Frame.Color = clBlack
                Frame.DrawTop = False
                Frame.DrawBottom = False
                Frame.DrawLeft = False
                Frame.DrawRight = False
                Size.Values = (
                  44.979166666666670000
                  381.000000000000000000
                  415.395833333333400000
                  328.083333333333400000)
                Alignment = taLeftJustify
                AlignToBand = False
                AutoSize = True
                AutoStretch = False
                Caption = 'Sub Dept Head Dyeing'
                Color = clWhite
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Times New Roman'
                Font.Style = []
                ParentFont = False
                Transparent = False
                WordWrap = True
                FontSize = 10
              end
              object QRLabel89: TQRLabel
                Left = 573
                Top = 157
                Width = 69
                Height = 17
                Frame.Color = clBlack
                Frame.DrawTop = False
                Frame.DrawBottom = False
                Frame.DrawLeft = False
                Frame.DrawRight = False
                Size.Values = (
                  44.979166666666670000
                  1516.062500000000000000
                  415.395833333333400000
                  182.562500000000000000)
                Alignment = taLeftJustify
                AlignToBand = False
                AutoSize = True
                AutoStretch = False
                Caption = 'Adm Dyeing'
                Color = clWhite
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Times New Roman'
                Font.Style = []
                ParentFont = False
                Transparent = False
                WordWrap = True
                FontSize = 10
              end
              object QRExpr37: TQRExpr
                Left = 488
                Top = 6
                Width = 51
                Height = 17
                Frame.Color = clBlack
                Frame.DrawTop = False
                Frame.DrawBottom = False
                Frame.DrawLeft = False
                Frame.DrawRight = False
                Size.Values = (
                  44.979166666666670000
                  1291.166666666667000000
                  15.875000000000000000
                  134.937500000000000000)
                Alignment = taRightJustify
                AlignToBand = False
                AutoSize = False
                AutoStretch = False
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -9
                Font.Name = 'Times New Roman'
                Font.Style = [fsBold]
                Color = clWhite
                Master = QuickRep4
                ParentFont = False
                ResetAfterPrint = False
                Transparent = False
                WordWrap = True
                Expression = 'SUM(QBrowse.KG3)'
                Mask = '0.0,0;(0.0,0);-'
                FontSize = 7
              end
              object QRExpr38: TQRExpr
                Left = 546
                Top = 7
                Width = 56
                Height = 17
                Frame.Color = clBlack
                Frame.DrawTop = False
                Frame.DrawBottom = False
                Frame.DrawLeft = False
                Frame.DrawRight = False
                Size.Values = (
                  44.979166666666670000
                  1444.625000000000000000
                  18.520833333333330000
                  148.166666666666700000)
                Alignment = taRightJustify
                AlignToBand = False
                AutoSize = False
                AutoStretch = False
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -9
                Font.Name = 'Times New Roman'
                Font.Style = [fsBold]
                Color = clWhite
                Master = QuickRep4
                ParentFont = False
                ResetAfterPrint = False
                Transparent = False
                WordWrap = True
                Expression = 'SUM(QBrowse.KG4)'
                Mask = '0.0,0;(0.0,0);-'
                FontSize = 7
              end
              object QRExpr39: TQRExpr
                Left = 609
                Top = 6
                Width = 50
                Height = 17
                Frame.Color = clBlack
                Frame.DrawTop = False
                Frame.DrawBottom = False
                Frame.DrawLeft = False
                Frame.DrawRight = False
                Size.Values = (
                  44.979166666666670000
                  1611.312500000000000000
                  15.875000000000000000
                  132.291666666666700000)
                Alignment = taRightJustify
                AlignToBand = False
                AutoSize = False
                AutoStretch = False
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -9
                Font.Name = 'Times New Roman'
                Font.Style = [fsBold]
                Color = clWhite
                Master = QuickRep4
                ParentFont = False
                ResetAfterPrint = False
                Transparent = False
                WordWrap = True
                Expression = 'SUM(QBrowse.KG5)'
                Mask = '0.0,0;(0.0,0);-'
                FontSize = 7
              end
              object QRExpr40: TQRExpr
                Left = 667
                Top = 6
                Width = 76
                Height = 17
                Frame.Color = clBlack
                Frame.DrawTop = False
                Frame.DrawBottom = False
                Frame.DrawLeft = False
                Frame.DrawRight = False
                Size.Values = (
                  44.979166666666670000
                  1764.770833333333000000
                  15.875000000000000000
                  201.083333333333300000)
                Alignment = taRightJustify
                AlignToBand = False
                AutoSize = False
                AutoStretch = False
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -9
                Font.Name = 'Times New Roman'
                Font.Style = [fsBold]
                Color = clWhite
                Master = QuickRep4
                ParentFont = False
                ResetAfterPrint = False
                Transparent = False
                WordWrap = True
                Expression = 'SUM(QBrowse.KG_akhir)'
                Mask = '0.0,0;(0.0,0);-'
                FontSize = 7
              end
              object QRShape144: TQRShape
                Left = 1
                Top = 0
                Width = 746
                Height = 1
                Frame.Color = clBlack
                Frame.DrawTop = False
                Frame.DrawBottom = False
                Frame.DrawLeft = False
                Frame.DrawRight = False
                Size.Values = (
                  2.645833333333333000
                  2.645833333333333000
                  0.000000000000000000
                  1973.791666666667000000)
                Shape = qrsRectangle
              end
              object QRShape145: TQRShape
                Left = 0
                Top = 25
                Width = 748
                Height = 1
                Frame.Color = clBlack
                Frame.DrawTop = False
                Frame.DrawBottom = False
                Frame.DrawLeft = False
                Frame.DrawRight = False
                Size.Values = (
                  2.645833333333333000
                  0.000000000000000000
                  66.145833333333340000
                  1979.083333333333000000)
                Shape = qrsRectangle
              end
              object QRShape146: TQRShape
                Left = 0
                Top = 1
                Width = 1
                Height = 25
                Frame.Color = clBlack
                Frame.DrawTop = False
                Frame.DrawBottom = False
                Frame.DrawLeft = False
                Frame.DrawRight = False
                Size.Values = (
                  66.145833333333340000
                  0.000000000000000000
                  2.645833333333333000
                  2.645833333333333000)
                Shape = qrsRectangle
              end
              object QRShape147: TQRShape
                Left = 276
                Top = 1
                Width = 1
                Height = 25
                Frame.Color = clBlack
                Frame.DrawTop = False
                Frame.DrawBottom = False
                Frame.DrawLeft = False
                Frame.DrawRight = False
                Size.Values = (
                  66.145833333333340000
                  730.250000000000000000
                  2.645833333333333000
                  2.645833333333333000)
                Shape = qrsRectangle
              end
              object QRShape148: TQRShape
                Left = 605
                Top = 1
                Width = 1
                Height = 25
                Frame.Color = clBlack
                Frame.DrawTop = False
                Frame.DrawBottom = False
                Frame.DrawLeft = False
                Frame.DrawRight = False
                Size.Values = (
                  66.145833333333340000
                  1600.729166666667000000
                  2.645833333333333000
                  2.645833333333333000)
                Shape = qrsRectangle
              end
              object QRShape149: TQRShape
                Left = 416
                Top = 1
                Width = 1
                Height = 25
                Frame.Color = clBlack
                Frame.DrawTop = False
                Frame.DrawBottom = False
                Frame.DrawLeft = False
                Frame.DrawRight = False
                Size.Values = (
                  66.145833333333340000
                  1100.666666666667000000
                  2.645833333333333000
                  2.645833333333333000)
                Shape = qrsRectangle
              end
              object QRShape150: TQRShape
                Left = 353
                Top = 1
                Width = 1
                Height = 25
                Frame.Color = clBlack
                Frame.DrawTop = False
                Frame.DrawBottom = False
                Frame.DrawLeft = False
                Frame.DrawRight = False
                Size.Values = (
                  66.145833333333340000
                  933.979166666666600000
                  2.645833333333333000
                  2.645833333333333000)
                Shape = qrsRectangle
              end
              object QRExpr41: TQRExpr
                Left = 280
                Top = 6
                Width = 70
                Height = 17
                Frame.Color = clBlack
                Frame.DrawTop = False
                Frame.DrawBottom = False
                Frame.DrawLeft = False
                Frame.DrawRight = False
                Size.Values = (
                  44.979166666666670000
                  740.833333333333400000
                  15.875000000000000000
                  185.208333333333300000)
                Alignment = taRightJustify
                AlignToBand = False
                AutoSize = False
                AutoStretch = False
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -9
                Font.Name = 'Times New Roman'
                Font.Style = [fsBold]
                Color = clWhite
                Master = QuickRep4
                ParentFont = False
                ResetAfterPrint = False
                Transparent = False
                WordWrap = True
                Expression = 'SUM(QBrowse.KG_AWL)'
                Mask = '0.0,0;(0.0,0);-'
                FontSize = 7
              end
              object QRExpr42: TQRExpr
                Left = 420
                Top = 6
                Width = 61
                Height = 17
                Frame.Color = clBlack
                Frame.DrawTop = False
                Frame.DrawBottom = False
                Frame.DrawLeft = False
                Frame.DrawRight = False
                Size.Values = (
                  44.979166666666670000
                  1111.250000000000000000
                  15.875000000000000000
                  161.395833333333300000)
                Alignment = taRightJustify
                AlignToBand = False
                AutoSize = False
                AutoStretch = False
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -9
                Font.Name = 'Times New Roman'
                Font.Style = [fsBold]
                Color = clWhite
                Master = QuickRep4
                ParentFont = False
                ResetAfterPrint = False
                Transparent = False
                WordWrap = True
                Expression = 'SUM(QBrowse.KG2)'
                Mask = '0.0,0;(0.0,0);-'
                FontSize = 7
              end
              object QRLabel90: TQRLabel
                Left = 578
                Top = 31
                Width = 59
                Height = 18
                Frame.Color = clBlack
                Frame.DrawTop = False
                Frame.DrawBottom = False
                Frame.DrawLeft = False
                Frame.DrawRight = False
                Size.Values = (
                  47.625000000000000000
                  1529.291666666667000000
                  82.020833333333340000
                  156.104166666666700000)
                Alignment = taCenter
                AlignToBand = False
                AutoSize = True
                AutoStretch = False
                Caption = 'QRLabel90'
                Color = clWhite
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Times New Roman'
                Font.Style = []
                ParentFont = False
                Transparent = False
                WordWrap = True
                FontSize = 10
              end
              object QRShape151: TQRShape
                Left = 484
                Top = 1
                Width = 1
                Height = 25
                Frame.Color = clBlack
                Frame.DrawTop = False
                Frame.DrawBottom = False
                Frame.DrawLeft = False
                Frame.DrawRight = False
                Size.Values = (
                  66.145833333333340000
                  1280.583333333333000000
                  2.645833333333333000
                  2.645833333333333000)
                Shape = qrsRectangle
              end
              object QRShape152: TQRShape
                Left = 542
                Top = 1
                Width = 1
                Height = 25
                Frame.Color = clBlack
                Frame.DrawTop = False
                Frame.DrawBottom = False
                Frame.DrawLeft = False
                Frame.DrawRight = False
                Size.Values = (
                  66.145833333333340000
                  1434.041666666667000000
                  2.645833333333333000
                  2.645833333333333000)
                Shape = qrsRectangle
              end
              object QRShape153: TQRShape
                Left = 662
                Top = 1
                Width = 1
                Height = 25
                Frame.Color = clBlack
                Frame.DrawTop = False
                Frame.DrawBottom = False
                Frame.DrawLeft = False
                Frame.DrawRight = False
                Size.Values = (
                  66.145833333333340000
                  1751.541666666667000000
                  2.645833333333333000
                  2.645833333333333000)
                Shape = qrsRectangle
              end
              object QRShape154: TQRShape
                Left = 747
                Top = 1
                Width = 1
                Height = 25
                Frame.Color = clBlack
                Frame.DrawTop = False
                Frame.DrawBottom = False
                Frame.DrawLeft = False
                Frame.DrawRight = False
                Size.Values = (
                  66.145833333333340000
                  1976.437500000000000000
                  2.645833333333333000
                  2.645833333333333000)
                Shape = qrsRectangle
              end
            end
            object QRBand11: TQRBand
              Left = 30
              Top = 377
              Width = 748
              Height = 21
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              AlignToBottom = True
              BeforePrint = PageFooterBand1BeforePrint
              Color = clWhite
              ForceNewColumn = False
              ForceNewPage = False
              Size.Values = (
                55.562500000000000000
                1979.083333333333000000)
              BandType = rbPageFooter
              object QRDBText58: TQRDBText
                Left = 3
                Top = 2
                Width = 69
                Height = 17
                Frame.Color = clBlack
                Frame.DrawTop = False
                Frame.DrawBottom = False
                Frame.DrawLeft = False
                Frame.DrawRight = False
                Size.Values = (
                  44.979166666666670000
                  7.937500000000000000
                  5.291666666666667000
                  182.562500000000000000)
                Alignment = taLeftJustify
                AlignToBand = False
                AutoSize = True
                AutoStretch = False
                Color = clWhite
                DataSet = DMFrm.QDateTime
                DataField = 'VUSER_CETAK'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Trebuchet MS'
                Font.Style = []
                ParentFont = False
                Transparent = False
                WordWrap = True
                FontSize = 8
              end
            end
            object QRBand12: TQRBand
              Left = 30
              Top = 30
              Width = 748
              Height = 139
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              AlignToBottom = False
              BeforePrint = QRBand12BeforePrint
              Color = clWhite
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Times New Roman'
              Font.Style = [fsItalic]
              ForceNewColumn = False
              ForceNewPage = False
              ParentFont = False
              Size.Values = (
                367.770833333333400000
                1979.083333333333000000)
              BandType = rbTitle
              object QRLabel91: TQRLabel
                Left = 238
                Top = 8
                Width = 344
                Height = 25
                Frame.Color = clBlack
                Frame.DrawTop = False
                Frame.DrawBottom = False
                Frame.DrawLeft = False
                Frame.DrawRight = False
                Size.Values = (
                  66.145833333333340000
                  629.708333333333400000
                  21.166666666666670000
                  910.166666666666600000)
                Alignment = taLeftJustify
                AlignToBand = False
                AutoSize = True
                AutoStretch = False
                Caption = 'LAPORAN WIP JET DYEING PER KILO GRAM'
                Color = clWhite
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -16
                Font.Name = 'Times New Roman'
                Font.Style = [fsBold, fsUnderline]
                ParentFont = False
                Transparent = False
                WordWrap = True
                FontSize = 12
              end
              object QRLabel92: TQRLabel
                Left = 375
                Top = 35
                Width = 63
                Height = 25
                Frame.Color = clBlack
                Frame.DrawTop = False
                Frame.DrawBottom = False
                Frame.DrawLeft = False
                Frame.DrawRight = False
                Size.Values = (
                  66.145833333333340000
                  992.187500000000000000
                  92.604166666666660000
                  166.687500000000000000)
                Alignment = taCenter
                AlignToBand = False
                AutoSize = True
                AutoStretch = False
                Caption = 'QRLabel92'
                Color = clWhite
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Times New Roman'
                Font.Style = [fsItalic]
                ParentFont = False
                Transparent = False
                WordWrap = True
                FontSize = 10
              end
              object QRImage4: TQRImage
                Left = 7
                Top = 1
                Width = 80
                Height = 48
                Frame.Color = clBlack
                Frame.DrawTop = False
                Frame.DrawBottom = False
                Frame.DrawLeft = False
                Frame.DrawRight = False
                Size.Values = (
                  127.000000000000000000
                  18.520833333333330000
                  2.645833333333333000
                  211.666666666666700000)
                Picture.Data = {
                  07544269746D617022210000424D222100000000000036000000280000004100
                  00002B0000000100180000000000EC200000120B0000120B0000000000000000
                  0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFDFDFDE4E4E4F5F5F5FEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFF9F8F8B7B3B0A09893BFA9AAF8F5F5F9FEFEF8FEFE
                  FEFEFFFFFDFFFFFFFFFFFFFFFFFFFCFEFFFEFEFFFFFDFFFFFFFFFFFFFFFFFFFF
                  FFFAFCFFF9FEFFF8FDFFF7FEFFF7FEFCF8FFFEF8FFFEFAFFFCFCFFFEFDFFFEFD
                  FFFFFEFFFFFFFFFFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFDF7F3F1C2B5ABB59684B4998CE1CE
                  D1FBFAFBFFFEFFFEFFFFF8FFFDF7FDFEF6FCFEF5FBFEEBEFFBC5D4E4A9BBCAB3
                  C0D2B2BED4A0B3CE8CA2C58E99C9929DCA9AA4CEA4AED4ACB6D3B1B6D4C5CCE3
                  EBF0FAF4FAFFF8FEFFFBFFFEFCFFFCFDFFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFEFEFEFCFAD7CEBFB8
                  937DC0886FC89D90BEACB0F0EDF3F3F3FCB7C1D78395B17785AB5E648C536387
                  697BA08392B0A1AFCFACBDDDAEC4DFAAC2DDADC5E1B0C2DF99A6C98895B9737B
                  AF535B95606999838BB08E98B4BFC7DEEFF4FFF3FAFFF8FCFFFDFFFFFEFFFEFF
                  FFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FEFDFDD3C1BDC09E8EC0917EB7837CB78084A16E817459779895B7C5CDE3D9E0
                  EFC6CBDEC3C7E5BCC2E6999FCB9098C68390C07D95C28093C58395C2909CCAB3
                  BFE9B5CBE7B4CDE0CADFF3B8C7E48695BE717CAD676DA08188B0C5CFE0E5EDF4
                  F7FEFEFBFDFEFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFCFFFFF5FCFEE0E5F48C83AC866886B6837ACB8968D08C6BB77E6AB98D8CB1
                  8FA67A5C89574D864A4B8F4A51A6424CAC4253AF3947A44448A84A4BAC4142A3
                  4443A94848AF4551A544579D4F63A07489B694A7C2BCD3E5C7DCED9BADC67887
                  AB6F76A69DA2CFDFE2F7F7FBFFF9FDFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFF7FEFFA9B7D4656F957F87ADCAC4DFC0AFCD937186B87F77C28067
                  CE8364C57A6BAC686E95647E76517F644A8E59499D554DA44D439C443999463E
                  A13A369A37389F353AA24146B1353BA5383FA237409C444AA0444C9C606EAD84
                  91C2C1D2F0BECCE87685AD616E9895A5C2E5F4F9F7FEFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFDFF
                  FEFFFEF9FEFED3DCE5767DA87487A8C4D5E9B4C1E25F67A7424AA04F4AA66A4F
                  97946B91B77B7DCA8164D8855CD88362D3816DC37976A46A7796617D8F5D8486
                  579472498765468B50429A3A3EA53F44AC393A9E403FA44846AF4541B6413FB5
                  4244AA4C54B54C58AB6375B2ADC2E3C6DEEC8393B27378AEC0C7E0F3FBFEFBFE
                  FFFFFFFBFFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFE
                  FFFCFDFEF6FCFCADB8CD69739EA7B5D5C1D2EF6C79B241479E363CA32F39A436
                  3DA74442AA493D926B518994677DB57978C77C6ECA7C68CC8268D38469D08167
                  CD7D6BC47C6FC27A73B26D74955F7E6C467F6346896649896F4E8F6B498B6948
                  915A40905447965349A74743AA454AAE3D4CA3707BC0ADB8DBA9B8D8626F9D9D
                  A2C4E9F0F8FDFDFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFCFEFEF3F7FC9FA3C27177ABC2CCEB9CAFCF5359AA3C3DA33938A93B3DB2
                  3B41B22D37A63339AB383DAB4442A44F4295564288745081986B88AE767DCA84
                  71D78663D8875BD38B59DC8A5CDD875ED57E63CE7B6FBE7877BC7679BC7272C2
                  7574BF7478B7737DAC738E946695714F985B4AA7454AAE3D3FAA474CA2899EC5
                  BED6E57B88A67D7EA8EAE9F7FCFEFFFEFFFFFFFFFEFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFAFDFED8DFEB8488AFACB4D4A7B4D76570AF4247A74747B73F44B53A3E
                  B0363BAA353EA5373EA63A3CAA393FB2353CB13537AD4040B33D3AA145419B51
                  4A926A5B91735B8676587F815674976A78AC7978B57F6FBE866DC7866ECD846A
                  D58766D3835ED88864D58763DB8B68D08471B77980956A908166A34743994048
                  AD4049AA5665AF94A1CCB4BBDA696C9AB9C0D2F4F8FEFDFFFFFEFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFEFFFFFFFF
                  FFFFFFFEFCFCFEE6EDF87279A2AFB8D7AEBFDB4F59A73F42B33E45B93D44B336
                  3CAC373FAC3F44B22E34A43B3EAD3939A82F33A6373EB73035AD3739AC353BAF
                  3D45B63B43AB414AAC494FB24449AC4A43A14944965851985B52895E517F6F57
                  7C805F7E9871879C71819D737E9F747FA87B7DAB7D82A27480916E8F79649A59
                  50AC4046AB404AAE3D44B84652B18499C3BCCCE36A7598BFC6D8F6FCFFFEFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFF9FAFF9298B994A8BEBECEE64B4FA54647B64146B93740B4
                  333AAF3942B3353EB04144BA3437B23839B2383FB12F39B2353EB53038AB363C
                  A9363CAE3D43AE4A50B74545AB4745A94948AB3F44A53B43A74247AB3D3FA444
                  44AF4645AF4746A5534CA350459359539A4D4791504C9A554C985A4D91574A96
                  4C48A14949AA4748B33F44B43747AC3548A84050AC8D9FC7B5C4DD6C739AD1D0
                  E7FCFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
                  FFFFFFFFFFFEFEFFFFFCFFFFC3C7DD7679A5C9DDEC5566A53D46A63C40B3373D
                  B4323BAF3E40B2404BAB404DA53E49AA4347AE3B3F9B3B3EA32B37AF2F35B035
                  36A5363BAD2E36A93742AB3A44AD484DB9454BAE454EA1474CA54F53AF484DA2
                  454C9F3739A83A3EB6484DA34E4AA14C4DAD46509F45439C4944A13F3EB6464C
                  AA504CAA4643A3464DA24A4BA5423F9D3137A43541B03E47AC424EA1A4B6DBA8
                  B2D77C7AABEEF2F6FEFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFEEF1F87F82AAC1CDE57F8BBB3F4B9E4148AB39
                  3FAF4248B93A43AE5556AA7883B57A85AA818AB5858DB67C84AF565DAA404BB9
                  383FB63B3BAA3039A82E35A93641AB404DAF474EAC6B6FB48991B89097BC9397
                  BC9097B88791BA4B52A34F54B08188B59491B68E94BE8F9EB89395BC767CB54D
                  55AF6472AD9799C39C9DC89AA4C79B9EC49597C84C54A93645AA3642A035409F
                  4450A0B9CCE4818BB4AFB2D5F8FCFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FF00FFFFFFFFFFFFFFFFFFFFFFFFFEFFFEC7CBE38A8EB9B9CAE04D51A2434BAC
                  4044AF3A42AF3842AE3F4DAE6F75AFECF4FEF8FFFFFCFEFFFCFEFFF6FCFF818C
                  BA3643A13239A93637A43139A8353CB0323EA73B49A94D51A4B9BBD9FCFDFFFE
                  FEFFFFFFFFFBFEFFEAF1F9525B9C565CA3E5E9F5FEFDFFFDFEFFFAFFFCFDFEFF
                  B1BEDB525AADA4B1D7FBFCFFFDFDFFFBFEFFFDFEFFECEAF9585EAA3340A5353E
                  A73D48B53D4CA2687BB3B8CBE66F76AFE8EFF8FDFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFF8FAFB8A8BABB0B8D97184AD4042
                  A53C40A94246B24048B33C45AF3846A97176B0F4F8FEFFFFFFFFFFFFFFFFFFFB
                  FDFF8691B63E4AA33E40B14141AE333CA93640AE3643AA3F4EAF545CAABCC0D7
                  FFFFFDFFFFFFFFFFFFFFFFFFF1F2F9535B9E5A5FA9EAEDF5FFFFFFFFFFFFFFFF
                  FAFEFFFFB3BFDB565AB5ACB3DDFEFFFFFFFFFFFFFFFFFFFFFFECE9F8575BA73E
                  48B34146BB3941B64254A85057B5A5B9D77382ADA9B2D2F7FBFFFEFEFFFFFFFF
                  FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFEF2EFF89294B4D5E1F85D
                  66B04045AA3F45B0474CB74049B33B47B13D49B26C78B2F1F9FDFEFFFDFFFFFF
                  FFFFFFFDFEFF8E91B9454EA93A3EB13D3FAB353EA7353DA43543A7394BB24E5B
                  B2BABDD9FFFFFDFDFFFFFFFFFFFFFFFFF0F2F9555FA05863ADE4ECF5FFFFFFFE
                  FFFFFFFFFDFEFFFFB5C0D95654B8B3BAE6FDFFFFFFFFFFFEFFFFFFFFFFECEAF8
                  565FA5414AB14047B03D49AE3E46B2494DB37D8CC5B2C7E18896BAF0F8FDFBFE
                  FDFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFEFEFDD0CDE57B85A3
                  AAB8D74349AC3943A3383DAA4045B1333BA7333CA9353FAB6474ABEFFBFDFEFF
                  FCFFFFFFFFFFFFFDFEFF868BB64048A73A3EAC3A39A4313EA23641A3414DB034
                  44AB4653AFB2BAD8FDFFFFFAFFFFFFFFFFFFFFFFF1F5F9545E9C5664AAE3ECF5
                  FFFFFFFEFFFFFDFFFDFFFFFFB6BFD55454AFB4BCE4FDFFFFFFFFFFFCFFFEFDFF
                  FFEAEEF85562A0414FAC4A4FAC4851AB3F3BBD3F45A74952A2B4C6DF677798D6
                  DEEDFDFEFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFDFFFEA0A7
                  CD8091AF97A1CA474BB13B46AF444CB7383EAE3E43B54148B63C43AC6A77B7F6
                  FBFDFFFFFDFFFFFFFFFFFFFEFFFF8C94C34C54BC4149A63E3EA73C45AD3A4BAF
                  3D47AB484FB3535DB1B3BAD7FEFFFFFFFFFFFFFFFFFFFFFFF4F7F95962A15865
                  B1E5EBF5FFFFFEFFFFFFFFFFFFFFFFFFB5BDD65257A6B9C2E0FDFFFFFFFFFFFE
                  FFFFFFFFFFECF1F85662A7404AB34544AD4245AC3F46AF3D4AB34951ADC1CBE9
                  7888A6C6D0E4FFFFFEFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFD
                  FFFF969AC5A7B7D19299C63E3FA93C45B1393FAA3A3EAF363BAD3941B03F47AF
                  6E79BBF4FAFDFFFFFEFFFFFFFFFFFFFDFEFF8893BA4650AD43489F4F49AF4242
                  AE3B45A74349AA494BB05059B0B6BDD8FFFFFFFFFFFEFFFFFFFFFFFFF4F6F954
                  5C9B515CA9E4ECF4FFFFFEFFFFFFFFFFFEFEFFFFB6BFD85158A5B9C5E0FDFFFF
                  FFFFFFFDFFFFFFFFFFEAEFF8515DA13E48B04242AB3D3FA83E45AD3C48B24147
                  A596A0C89BAAC6C2CCE3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
                  FFFFFFFCFEFE9194C1A4AECD979DC9403FAA3842AD3D44AE3D43B03C42B13B40
                  AF3F48AE7683C3F5FBFDFFFFFDFFFFFFFFFFFFFDFFFF929BC1505AAA7581B07D
                  7CB27C81B86B71AE5353A54D4DB0535EB5B6BFDAFFFFFCFFFFFFFFFFFFFFFFFF
                  F6F6F95A62A1525BAAE5EDF5FFFFFEFFFFFFFFFFFEFFFFFFBAC2D9565EAAB6C5
                  DFFDFFFFFFFFFFFEFFFFFFFFFFECF2F95A67AC424BB54344B04344AC4149B03D
                  46B0444CA79099C4A5B5CC97A1C0FEFEFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFF
                  FFFFFFFFFFFFFFFEFFFF9FA2CB9BA5C69EA2CE4C49B13E47AE3A43AA3F46B33C
                  43AF4048B2414BAE7280BEF4FBFDFFFFFDFFFFFFFFFFFFFDFEFF8D93C04C589F
                  DBE9F5FBFEFFF9FEFEE9F0FA9898C6585CAE5563B7BAC5DFFFFFFDFFFFFEFFFF
                  FFFFFFFFF5F7F95C65A65561AEE2EBF5FFFFFCFFFFFFFFFFFFFEFFFFBAC1D955
                  59A6BBC8DEFDFFFFFFFFFFFDFFFFFFFFFFECF0F85662A63B45AD3F41AB4346AC
                  4047AF3641AC4149A68A92C2A7B7CEA1AAC7FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FF00FFFFFFFFFFFFFFFFFFFEFFFEC6CAE47E89A5A7ADD24845AA3943A83D45AC
                  3940AB343BA7383FA84049AB707ABBF4FBFDFFFFFDFFFFFFFFFFFFFDFEFF8C93
                  C44A549AE1EBF4FFFFFFFFFFFDFAFEFAE9ECF6777CBC4E5DAEB7C1DCFFFFFEFF
                  FFFEFFFFFFFFFFFFF3F5F95E66A75461AEE5EBF5FFFFFDFFFFFFFFFFFEFEFFFF
                  B9C0DA545AA8B9C5DEFDFFFFFFFFFFFDFFFFFFFFFFECF1F85563A8424CB54445
                  AC3A3AA44047B13B46B04149A4959DC7A0B1C9BBC8DFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFF00FFFFFFFFFFFFFFFFFFFEFEFCE0E5F58694AED4DEF45857A84042
                  AC343BA34147B03F44B04047B04148AA727DB9F1FAFDFFFFFEFFFFFFFFFFFFFC
                  FEFF959BCA595EA9E1ECF6FEFFFFFFFFFFFFFFFBFAFDFE919CC74F5AA7B8BEDB
                  FFFFFEFFFFFFFFFFFFFFFFFDF4F6F85E66A4535DA7E4ECF5FFFFFBFFFFFFFFFF
                  FFFFFFFFBCC2DE5E61AEBDC6E4FDFFFFFFFFFFFEFFFFFFFFFFE8ECF75058A042
                  49B44146AC3E42AD4249B0363FA44349A0B6BFE37D8BA8C7CFE0FDFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFEFFF3F6FB757CA4B9C8DE69
                  70A44943AF363DA73739A6393EAA343BA4444AAC6977B0F1F9FDFEFFFDFFFFFF
                  FFFFFFFAFEFF8890BD4C51A5DAE7F5FEFFFFFFFFFFFFFFFFF9FFFFACBADA555A
                  A6BABADEFCFFFDFEFFFFFFFFFFFFFFFDF5F9FB6C6FB35760A5E0EEF5FFFFFDFF
                  FEFFFFFFFFFBFFFDB2BED6525AA4B8C1DFFEFFFCFFFFFDFFFFFFFEFFFEE6F1F8
                  595FAB4244B33B44A53D47B23C43AF4146A5454A8FB8BFDA687091D9DEEAFBFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFDFFFBFEFFA9AFCD
                  979FC4B5BDD94E57A03440A53841AD3C44B03B46B04753B5727CB2F2F7FDFFFF
                  FEFFFFFFFFFFFFFAFDFF8991C049509EDFE5F5FFFFFFFFFFFFFEFFFDF9FEFE89
                  94C14D53A9A9B3D9F5FFFDFFFFFEFFFFFFFEFFFFEEF4FA575AA84E57ADD9E8F7
                  FBFFFEFFFFFFFFFFFFFEFFFFB2C1D74E5C9DB2BDDFFDFEFFFFFFFFFFFFFFFFFF
                  FDE8F0F85C63AC484AB73F4AAD3D4AAE4347BC4046A77C8ABBB9C5E39298BAF4
                  FAFDFBFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FEE2E3EF6F70A2CBD6E66577A33847A2404AB1353DAB3743AF3647A76D76AAF1
                  F8FDFDFFFDFFFFFEFFFFFFF8FEFF8390BB4C5999DFECF4FEFFFFFFFFFFFCFFFC
                  DCE5F36C76BC4D56B36E7DB5E7F7FAFEFFFEFDFFFFF9FFFFDAE8F5434E9B4854
                  AEA7BBDFF1FEFCFCFFFBFEFFFFFBFDFF7E89BD44529F7B85B8F3F8FCFCFEFDFD
                  FEFEFDFFFFC9D0E74D52A34245B13C44AB3948A74044B94650A9A8BBD5818EAE
                  B2B7D1FEFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFBFEFEA3A5C48B95B6B8C9E1465597424BA74047B3343CAD3D4AB1
                  6571AFE2F3FDEEFEFFEDFCFFF0FCFFEAF9FF7281BA32488BD2E7F4F4F9FFF5FC
                  FFD6E9F57280B13D47A4434DB24D5EA79DB1D4EFFBFFF0FCFFE0F0FB7081B039
                  469831419B5165A0D4E8F5EEFEFFEEFAFFB7BEE25256B53947AD4857A4AEB6D3
                  ECF9FBF2FBFEE0E9FD7C86BF444CA83A42AC3F47AF3A44A44046A26F7AB2B1BE
                  D3707A96EEF3F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
                  FFFFFFFFFFFCFFFDFFFDFFF8EFF4F7747BA8AFBDDA99A7CC424B964749B03F44
                  B43D43B4404CAB5B6DB25F77B16676BC6C7BC16B78BF444CAF344BAA6D86C17D
                  87CD6777B64D64A53B4BA63D49B5404AB1474FAD4B54A86472B16D81BB5063AA
                  3944A43038A2333CA93A45AA4F5CAB6678B2586AA542509D3C40A72E3EAB394A
                  AE4A52A65C6AAA6379AC4C5CA04652B33F4DB54049AE4348B04745AF556296CB
                  D6E98283AFC1C3D4FDFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFF
                  FFFFFFFFFFFFFFFFFFFDFFFDFFFFFFFAFBFFFAD1D2EA73789BD2DEEC8994BF4A
                  4CA63D3BAE383AAC363FB03947AD3649AA3741B0383EB23C42B2373BB23241B3
                  2F43A53039A326369C3648AB303CAA2832A13843AC3940A63B3EAA3841AA3644
                  A63340AB3037AC2E33A92D35A7353BAF393FAF3540A23542A03340A2353CA130
                  3FAA3843B53F42B04049AE414FAD2E3D9E3B46AF3443A33A45A43E45A8494D9C
                  B5C0D99EA3C6918CB5F4F4FAFCFEFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDD4D6E07D81A8
                  ADB5D8AAB4D7565EA14847AD393EB0353CAF3A40B52730A32F38A9333EAC3742
                  AF2F3BAA2E37A72F39A92934A2333AA83F45B23A40AC4249B43A42A8373EA930
                  3AA8252F9F3039A8303BAB2631A22C31A2383DAD383FAB393EAA3139A1363EA6
                  323CA6323BA73236A7373DA93E42AA3A44A83B45AD3E43AE3C43A53E49975C67
                  A6B4BFDB99A0BF9395B6E5E6F1FFFFFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFF
                  FED9DCEA7571A8979CC3CED9EC6C74A83E459C3E42AC353AB23942BA2D3FA92F
                  41A8353BAE2A32A53138AA2B32A32F38A63238A7383DAC2F34A1353CA63840A7
                  3740A8323AA82F37A42D36A527309E222A9B333AA9353AAB3D42B03A42AB2A32
                  9B363EA52E3EA22E3EA8313AAB3B40B0343BA83F4CAE3440A4373AA94546A96F
                  75AFCBD6EC868BAE8C92ADEFF4F8FCFEFEFDFEFEFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFEFFFCFDFFFAE8E7F3918EBF8A88BCD3DDEE8A99BD4B569A444CAB3C42B3
                  3643B23D48B9393FB13A3DB13338AA3238AA373BAD3A41B03F47B33D41AF474F
                  B84149B13F48B2363EAA3C44AF2C33A1363BAB2B329F3C42AF3B3FB03A40AD34
                  3BA43B44AA3B46AD3343A63843AD3B44AF3E45B34045AF4449B2464FAF515CA6
                  8B93C0CCD3E68C91AE9291B4EEF2F7FBFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFEFEFDFEFFF1F2F5F89E9CBF7776A4B2C0D5B6C5E26F7C
                  AF4951A0494BAF4748B53C3EAD3A3FAA3536A43C40AD4144B0383EAC2C31A137
                  3BA94048B13841A93B42AB4144B0363CA73A41AC3D41AC3135A14247B43D44B1
                  3A42AE3840AA434CB33C44AC3940A73A41A93D43A84B4EB0464DA54E51A76E74
                  B8AAB4D9BBC9D56E788F9EA4BDF5F5FBFDFEFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFEFFFEFFFFFCFFFCFFFCFCFFFDDADCEA757CA88A
                  95B5D0DDECB9C1D87273AE4E4EA34248AB3B40A44046AB3A3DA63C40A74146B2
                  3D42B03940AB3F47B0373FA93E46AD474CB64247B33B3FAA4144AF383CA73B41
                  AC333BA7393EAA4149B2353DA63D43AC3C3FA54243A94649A74D51A6686CB3B1
                  B9D9D1DAEC8B91B6767AA2CDD5E1F2FCFEFDFFFBFEFFFEFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  EFF4F7A8ABC070739E888AB8C7D1E9C3D1EC7D89BC5C64A44950A04749A84444
                  AB474CB3454CB03D42A8494FB7464BB2464CB43E49AE3F4DB1424FB23E4BAE3B
                  46AB4049AD424AAD4248AC4B50B25055B55055B15B59AA6D71B68189BFB9C7E4
                  C5D9EC8B9BBB6F779CA1A8BEF1F4F9FDFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFCFDFCFCFDFEE6E6F5A2A6C3656F8E848DABABB7D1D2DDF2B6C5E18E
                  9DC47081B05A60A44B4E9B4C519D5356A75355A75051A8494BA64D4EA94A4BA6
                  5155AD4345A04541A74F4CB05250A755599B6F75A7919CBFA4B5CECFDDF1B3C0
                  D78891B66E73A29C9FC3E1E6F3F6FCFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFDFDFEFEFFFDFBFCFFEAEDF4C6C7DA8786B46C6F9E
                  8C93B59DA7C5C2D1E8D9E8F6C0CEDEBBCBDDB8C5DBA0ADC7939FBE959DC38A94
                  B9878FB88C94BB9AA3CCAFBCD6B8C8DBC3D0E0DAE7F3CDD9EA96A0B9838FB16A
                  7695848DA6C2CCD6E7ECF4FEFCFEFCFCFEFDFEFEFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFEFFFFFFFFFFFFF9FB
                  FEF0F2F9C2C3DB8C8FAF8085A8747EAD616F9F7783B598A4CEACB6E1BBC7EBC5
                  D8ECC4D7EAC2D6E8BBCDE1A2B4CB97A8C67E8DB8646F9D6B74A57B82B18288B4
                  B7C0D7EDF3FAF8FCFDFEFFFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFCFFFFF6FEFFFBFEFFFDFEFFFFFBFDFEE8F1F8CAD3E5ADB8CDABB6CCABB4CB
                  AAB3CBABB2D0A5ACCAA4ACCBA2A9CAA2ABC7A8AECCAEB3CEC5CCE1E8EDF5F4FD
                  FCF8FEFAFEFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFEFFFDFCFFFEFEFEFEFEFEFFFFFFFFFFFFFFFFFEFFFFFEFEFEFFFD
                  FFFFFFFFFEFFFFFEFFFFFDFFFFFDFFFFFEFFFEFBFFFFFEFFFCFDFDFDFEFEFDFF
                  FFFEFFFDFEFDFCFCFFFEFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFDFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFF00}
                Stretch = True
              end
              object QRLabel93: TQRLabel
                Left = 8
                Top = 49
                Width = 87
                Height = 16
                Frame.Color = clBlack
                Frame.DrawTop = False
                Frame.DrawBottom = False
                Frame.DrawLeft = False
                Frame.DrawRight = False
                Size.Values = (
                  42.333333333333340000
                  21.166666666666670000
                  129.645833333333300000
                  230.187500000000000000)
                Alignment = taLeftJustify
                AlignToBand = False
                AutoSize = True
                AutoStretch = False
                Caption = 'PT. PISMATEX'
                Color = clWhite
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Times New Roman'
                Font.Style = [fsBold]
                ParentFont = False
                Transparent = False
                WordWrap = True
                FontSize = 10
              end
              object QRLabel94: TQRLabel
                Left = 8
                Top = 65
                Width = 86
                Height = 16
                Frame.Color = clBlack
                Frame.DrawTop = False
                Frame.DrawBottom = False
                Frame.DrawLeft = False
                Frame.DrawRight = False
                Size.Values = (
                  42.333333333333340000
                  21.166666666666670000
                  171.979166666666700000
                  227.541666666666700000)
                Alignment = taLeftJustify
                AlignToBand = False
                AutoSize = True
                AutoStretch = False
                Caption = 'Textile Industry'
                Color = clWhite
                Transparent = False
                WordWrap = True
                FontSize = 10
              end
              object QRLabel95: TQRLabel
                Left = 4
                Top = 112
                Width = 33
                Height = 17
                Frame.Color = clBlack
                Frame.DrawTop = False
                Frame.DrawBottom = False
                Frame.DrawLeft = False
                Frame.DrawRight = False
                Size.Values = (
                  44.979166666666670000
                  10.583333333333330000
                  296.333333333333300000
                  87.312500000000000000)
                Alignment = taCenter
                AlignToBand = False
                AutoSize = True
                AutoStretch = False
                Caption = 'KODE'
                Color = clWhite
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Times New Roman'
                Font.Style = [fsBold]
                ParentFont = False
                Transparent = False
                WordWrap = True
                FontSize = 8
              end
              object QRLabel96: TQRLabel
                Left = 118
                Top = 112
                Width = 75
                Height = 17
                Frame.Color = clBlack
                Frame.DrawTop = False
                Frame.DrawBottom = False
                Frame.DrawLeft = False
                Frame.DrawRight = False
                Size.Values = (
                  44.979166666666670000
                  312.208333333333300000
                  296.333333333333300000
                  198.437500000000000000)
                Alignment = taCenter
                AlignToBand = False
                AutoSize = True
                AutoStretch = False
                Caption = 'KONSTRUKSI'
                Color = clWhite
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Times New Roman'
                Font.Style = [fsBold]
                ParentFont = False
                Transparent = False
                WordWrap = True
                FontSize = 8
              end
              object QRLabel97: TQRLabel
                Left = 366
                Top = 113
                Width = 35
                Height = 17
                Frame.Color = clBlack
                Frame.DrawTop = False
                Frame.DrawBottom = False
                Frame.DrawLeft = False
                Frame.DrawRight = False
                Size.Values = (
                  44.979166666666670000
                  968.375000000000000000
                  298.979166666666700000
                  92.604166666666660000)
                Alignment = taCenter
                AlignToBand = False
                AutoSize = True
                AutoStretch = False
                Caption = 'MASUK'
                Color = clWhite
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -9
                Font.Name = 'Times New Roman'
                Font.Style = [fsBold]
                ParentFont = False
                Transparent = False
                WordWrap = True
                FontSize = 7
              end
              object QRLabel98: TQRLabel
                Left = 492
                Top = 113
                Width = 41
                Height = 17
                Frame.Color = clBlack
                Frame.DrawTop = False
                Frame.DrawBottom = False
                Frame.DrawLeft = False
                Frame.DrawRight = False
                Size.Values = (
                  44.979166666666670000
                  1301.750000000000000000
                  298.979166666666700000
                  108.479166666666700000)
                Alignment = taCenter
                AlignToBand = False
                AutoSize = True
                AutoStretch = False
                Caption = 'KELUAR'
                Color = clWhite
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -9
                Font.Name = 'Times New Roman'
                Font.Style = [fsBold]
                ParentFont = False
                Transparent = False
                WordWrap = True
                FontSize = 7
              end
              object QRLabel99: TQRLabel
                Left = 587
                Top = 102
                Width = 44
                Height = 17
                Frame.Color = clBlack
                Frame.DrawTop = False
                Frame.DrawBottom = False
                Frame.DrawLeft = False
                Frame.DrawRight = False
                Size.Values = (
                  44.979166666666670000
                  1553.104166666667000000
                  269.875000000000000000
                  116.416666666666700000)
                Alignment = taCenter
                AlignToBand = False
                AutoSize = True
                AutoStretch = False
                Caption = 'KOREKSI'
                Color = clWhite
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -9
                Font.Name = 'Times New Roman'
                Font.Style = [fsBold]
                ParentFont = False
                Transparent = False
                WordWrap = True
                FontSize = 7
              end
              object QRShape155: TQRShape
                Left = 0
                Top = 98
                Width = 748
                Height = 1
                Frame.Color = clBlack
                Frame.DrawTop = False
                Frame.DrawBottom = False
                Frame.DrawLeft = False
                Frame.DrawRight = False
                Size.Values = (
                  2.645833333333333000
                  0.000000000000000000
                  259.291666666666700000
                  1979.083333333333000000)
                Shape = qrsRectangle
              end
              object QRShape156: TQRShape
                Left = 40
                Top = 99
                Width = 1
                Height = 40
                Frame.Color = clBlack
                Frame.DrawTop = False
                Frame.DrawBottom = False
                Frame.DrawLeft = False
                Frame.DrawRight = False
                Size.Values = (
                  105.833333333333300000
                  105.833333333333300000
                  261.937500000000000000
                  2.645833333333333000)
                Shape = qrsRectangle
              end
              object QRShape157: TQRShape
                Left = 276
                Top = 99
                Width = 1
                Height = 40
                Frame.Color = clBlack
                Frame.DrawTop = False
                Frame.DrawBottom = False
                Frame.DrawLeft = False
                Frame.DrawRight = False
                Size.Values = (
                  105.833333333333300000
                  730.250000000000000000
                  261.937500000000000000
                  2.645833333333333000)
                Shape = qrsRectangle
              end
              object QRShape158: TQRShape
                Left = 353
                Top = 99
                Width = 1
                Height = 40
                Frame.Color = clBlack
                Frame.DrawTop = False
                Frame.DrawBottom = False
                Frame.DrawLeft = False
                Frame.DrawRight = False
                Size.Values = (
                  105.833333333333300000
                  933.979166666666600000
                  261.937500000000000000
                  2.645833333333333000)
                Shape = qrsRectangle
              end
              object QRShape159: TQRShape
                Left = 416
                Top = 99
                Width = 1
                Height = 40
                Frame.Color = clBlack
                Frame.DrawTop = False
                Frame.DrawBottom = False
                Frame.DrawLeft = False
                Frame.DrawRight = False
                Size.Values = (
                  105.833333333333300000
                  1100.666666666667000000
                  261.937500000000000000
                  2.645833333333333000)
                Shape = qrsRectangle
              end
              object QRShape160: TQRShape
                Left = 484
                Top = 99
                Width = 1
                Height = 40
                Frame.Color = clBlack
                Frame.DrawTop = False
                Frame.DrawBottom = False
                Frame.DrawLeft = False
                Frame.DrawRight = False
                Size.Values = (
                  105.833333333333300000
                  1280.583333333333000000
                  261.937500000000000000
                  2.645833333333333000)
                Shape = qrsRectangle
              end
              object QRShape161: TQRShape
                Left = 542
                Top = 99
                Width = 1
                Height = 40
                Frame.Color = clBlack
                Frame.DrawTop = False
                Frame.DrawBottom = False
                Frame.DrawLeft = False
                Frame.DrawRight = False
                Size.Values = (
                  105.833333333333300000
                  1434.041666666667000000
                  261.937500000000000000
                  2.645833333333333000)
                Shape = qrsRectangle
              end
              object QRShape162: TQRShape
                Left = 747
                Top = 99
                Width = 1
                Height = 41
                Frame.Color = clBlack
                Frame.DrawTop = False
                Frame.DrawBottom = False
                Frame.DrawLeft = False
                Frame.DrawRight = False
                Size.Values = (
                  108.479166666666700000
                  1976.437500000000000000
                  261.937500000000000000
                  2.645833333333333000)
                Shape = qrsRectangle
              end
              object QRShape163: TQRShape
                Left = 0
                Top = 99
                Width = 1
                Height = 40
                Frame.Color = clBlack
                Frame.DrawTop = False
                Frame.DrawBottom = False
                Frame.DrawLeft = False
                Frame.DrawRight = False
                Size.Values = (
                  105.833333333333300000
                  0.000000000000000000
                  261.937500000000000000
                  2.645833333333333000)
                Shape = qrsRectangle
              end
              object QRLabel100: TQRLabel
                Left = 284
                Top = 113
                Width = 57
                Height = 17
                Frame.Color = clBlack
                Frame.DrawTop = False
                Frame.DrawBottom = False
                Frame.DrawLeft = False
                Frame.DrawRight = False
                Size.Values = (
                  44.979166666666670000
                  751.416666666666600000
                  298.979166666666700000
                  150.812500000000000000)
                Alignment = taCenter
                AlignToBand = False
                AutoSize = True
                AutoStretch = False
                Caption = 'STOK AWAL'
                Color = clWhite
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -9
                Font.Name = 'Times New Roman'
                Font.Style = [fsBold]
                ParentFont = False
                Transparent = False
                WordWrap = True
                FontSize = 7
              end
              object QRShape164: TQRShape
                Left = 605
                Top = 120
                Width = 1
                Height = 20
                Frame.Color = clBlack
                Frame.DrawTop = False
                Frame.DrawBottom = False
                Frame.DrawLeft = False
                Frame.DrawRight = False
                Size.Values = (
                  52.916666666666660000
                  1600.729166666667000000
                  317.500000000000000000
                  2.645833333333333000)
                Shape = qrsRectangle
              end
              object QRShape165: TQRShape
                Left = 662
                Top = 99
                Width = 1
                Height = 40
                Frame.Color = clBlack
                Frame.DrawTop = False
                Frame.DrawBottom = False
                Frame.DrawLeft = False
                Frame.DrawRight = False
                Size.Values = (
                  105.833333333333300000
                  1751.541666666667000000
                  261.937500000000000000
                  2.645833333333333000)
                Shape = qrsRectangle
              end
              object QRLabel101: TQRLabel
                Left = 680
                Top = 114
                Width = 60
                Height = 17
                Frame.Color = clBlack
                Frame.DrawTop = False
                Frame.DrawBottom = False
                Frame.DrawLeft = False
                Frame.DrawRight = False
                Size.Values = (
                  44.979166666666670000
                  1799.166666666667000000
                  301.625000000000000000
                  158.750000000000000000)
                Alignment = taCenter
                AlignToBand = False
                AutoSize = True
                AutoStretch = False
                Caption = 'STOK AKHIR'
                Color = clWhite
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -9
                Font.Name = 'Times New Roman'
                Font.Style = [fsBold]
                ParentFont = False
                Transparent = False
                WordWrap = True
                FontSize = 7
              end
              object QRLabel102: TQRLabel
                Left = 425
                Top = 113
                Width = 51
                Height = 17
                Frame.Color = clBlack
                Frame.DrawTop = False
                Frame.DrawBottom = False
                Frame.DrawLeft = False
                Frame.DrawRight = False
                Size.Values = (
                  44.979166666666670000
                  1124.479166666667000000
                  298.979166666666700000
                  134.937500000000000000)
                Alignment = taCenter
                AlignToBand = False
                AutoSize = True
                AutoStretch = False
                Caption = 'RE PROSES'
                Color = clWhite
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -9
                Font.Name = 'Times New Roman'
                Font.Style = [fsBold]
                ParentFont = False
                Transparent = False
                WordWrap = True
                FontSize = 7
              end
              object QRShape166: TQRShape
                Left = 542
                Top = 119
                Width = 121
                Height = 1
                Frame.Color = clBlack
                Frame.DrawTop = False
                Frame.DrawBottom = False
                Frame.DrawLeft = False
                Frame.DrawRight = False
                Size.Values = (
                  2.645833333333333000
                  1434.041666666667000000
                  314.854166666666700000
                  320.145833333333400000)
                Shape = qrsRectangle
              end
              object QRLabel103: TQRLabel
                Left = 562
                Top = 124
                Width = 28
                Height = 17
                Frame.Color = clBlack
                Frame.DrawTop = False
                Frame.DrawBottom = False
                Frame.DrawLeft = False
                Frame.DrawRight = False
                Size.Values = (
                  44.979166666666670000
                  1486.958333333333000000
                  328.083333333333300000
                  74.083333333333340000)
                Alignment = taCenter
                AlignToBand = False
                AutoSize = True
                AutoStretch = False
                Caption = 'Masuk'
                Color = clWhite
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -9
                Font.Name = 'Times New Roman'
                Font.Style = [fsBold]
                ParentFont = False
                Transparent = False
                WordWrap = True
                FontSize = 7
              end
              object QRLabel104: TQRLabel
                Left = 618
                Top = 124
                Width = 29
                Height = 17
                Frame.Color = clBlack
                Frame.DrawTop = False
                Frame.DrawBottom = False
                Frame.DrawLeft = False
                Frame.DrawRight = False
                Size.Values = (
                  44.979166666666670000
                  1635.125000000000000000
                  328.083333333333300000
                  76.729166666666660000)
                Alignment = taCenter
                AlignToBand = False
                AutoSize = True
                AutoStretch = False
                Caption = 'Keluar'
                Color = clWhite
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -9
                Font.Name = 'Times New Roman'
                Font.Style = [fsBold]
                ParentFont = False
                Transparent = False
                WordWrap = True
                FontSize = 7
              end
            end
          end
          object wwDBGrid1: TwwDBGrid
            Left = 0
            Top = 0
            Width = 1124
            Height = 335
            ControlType.Strings = (
              'ISFIXED;CheckBox;1;0')
            Selected.Strings = (
              'KD_KONSTRUKSI'#9'10'#9'KODE'#9'F'
              'NAMA_KONSTRUKSI'#9'45'#9'KONSTRUKSI'#9'F'
              'QTY_AWL'#9'10'#9'Ptg'#9'F'#9'STOK AWAL'
              'QTY_AWL2'#9'10'#9'Mtr'#9'F'#9'STOK AWAL'
              'kg_awl'#9'10'#9'Kg'#9'F'#9'STOK AWAL'
              'QTY1'#9'10'#9'Ptg'#9'F'#9'PEMASUKAN'
              'QTY2'#9'10'#9'Mtr'#9'F'#9'PEMASUKAN'
              'kg1'#9'10'#9'Kg'#9'F'#9'PEMASUKAN'
              'QTY3'#9'10'#9'Ptg'#9'F'#9'RE PROSES'
              'QTY4'#9'10'#9'Mtr'#9'F'#9'RE PROSES'
              'kg2'#9'10'#9'Kg'#9'F'#9'RE PROSES'
              'QTY5'#9'10'#9'Ptg'#9'F'#9'PENGELUARAN'
              'QTY6'#9'10'#9'Mtr'#9'F'#9'PENGELUARAN'
              'kg3'#9'10'#9'Kg'#9'F'#9'PENGELUARAN'
              'QTY7'#9'10'#9'Ptg'#9'F'#9'KOREKSI MASUK'
              'QTY8'#9'10'#9'Mtr'#9'F'#9'KOREKSI MASUK'
              'kg4'#9'10'#9'Kg'#9'F'#9'KOREKSI MASUK'
              'QTY9'#9'10'#9'Ptg'#9'F'#9'KOREKSI KELUAR'
              'QTY10'#9'10'#9'Mtr'#9'F'#9'KOREKSI KELUAR'
              'kg5'#9'10'#9'Kg'#9'F'#9'KOREKSI KELUAR'
              'QTY_AKHIR'#9'10'#9'Ptg'#9'F'#9'STOK AKHIR'
              'QTY_AKHIR2'#9'10'#9'Mtr'#9'F'#9'STOK AKHIR'
              'kg_akhir'#9'10'#9'Kg'#9'F'#9'STOK AKHIR')
            IniAttributes.Enabled = True
            IniAttributes.Delimiter = ';;'
            IniAttributes.CheckNewFields = True
            ExportOptions.ExportType = wwgetHTML
            ExportOptions.Options = [esoShowHeader, esoShowFooter, esoShowTitle, esoDblQuoteFields, esoBestColFit, esoShowRecordNo, esoShowAlternating]
            TitleColor = clBackground
            FixedCols = 1
            ShowHorzScrollBar = True
            EditControlOptions = [ecoSearchOwnerForm, ecoDisableDateTimePicker]
            Align = alClient
            BorderStyle = bsNone
            Ctl3D = False
            DataSource = dsQBrowse
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            KeyOptions = []
            Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgPerfectRowFit, dgShowFooter, dgNoLimitColSize, dgTrailingEllipsis, dgRowResize, dgFixedProportionalResize]
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 0
            TitleAlignment = taCenter
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clWhite
            TitleFont.Height = -11
            TitleFont.Name = 'Arial'
            TitleFont.Style = []
            TitleLines = 4
            TitleButtons = True
            UseTFields = False
            OnTitleButtonClick = wwDBGrid2TitleButtonClick
            OnUpdateFooter = wwDBGrid1UpdateFooter
          end
        end
      end
    end
    object PanelFooter2: TPanel
      Left = 0
      Top = 509
      Width = 1132
      Height = 56
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 3
      DesignSize = (
        1132
        56)
      object wwDBNavigator1: TwwDBNavigator
        Left = 0
        Top = 0
        Width = 145
        Height = 56
        AutosizeStyle = asSizeNavButtons
        DataSource = dsQBrowse
        RepeatInterval.InitialDelay = 500
        RepeatInterval.Interval = 100
        Align = alLeft
        object wwDBNavigator1PriorPage: TwwNavButton
          Left = 0
          Top = 0
          Width = 37
          Height = 56
          Hint = 'Move backward 10 records'
          ImageIndex = -1
          NumGlyphs = 2
          Spacing = 4
          Transparent = False
          Caption = 'wwDBNavigator1PriorPage'
          Enabled = False
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          Index = 0
          Style = nbsPriorPage
        end
        object wwDBNavigator1NextPage: TwwNavButton
          Left = 37
          Top = 0
          Width = 36
          Height = 56
          Hint = 'Move forward 10 records'
          ImageIndex = -1
          NumGlyphs = 2
          Spacing = 4
          Transparent = False
          Caption = 'wwDBNavigator1NextPage'
          Enabled = False
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          Index = 1
          Style = nbsNextPage
        end
        object wwDBNavigator1SaveBookmark: TwwNavButton
          Left = 73
          Top = 0
          Width = 36
          Height = 56
          Hint = 'Bookmark current record'
          ImageIndex = -1
          NumGlyphs = 2
          Spacing = 4
          Transparent = False
          Caption = 'wwDBNavigator1SaveBookmark'
          Enabled = False
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          Index = 2
          Style = nbsSaveBookmark
        end
        object wwDBNavigator1RestoreBookmark: TwwNavButton
          Left = 109
          Top = 0
          Width = 36
          Height = 56
          Hint = 'Go back to saved bookmark'
          ImageIndex = -1
          NumGlyphs = 2
          Spacing = 4
          Transparent = False
          Caption = 'wwDBNavigator1RestoreBookmark'
          Enabled = False
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          Index = 3
          Style = nbsRestoreBookmark
        end
      end
      object BtnExport: TBitBtn
        Left = 308
        Top = 10
        Width = 75
        Height = 25
        Caption = '&Export'
        TabOrder = 1
        OnClick = BtnExportClick
        NumGlyphs = 2
      end
      object BtnDesign2: TBitBtn
        Left = 230
        Top = 10
        Width = 75
        Height = 25
        Caption = 'Design'
        TabOrder = 2
        OnClick = BtnDesign2Click
        NumGlyphs = 2
      end
      object BtnClose1: TBitBtn
        Left = 389
        Top = 10
        Width = 75
        Height = 25
        Caption = '&Close'
        TabOrder = 3
        OnClick = BtnClose1Click
        NumGlyphs = 2
      end
      object RadioGroup1: TRadioGroup
        Left = 495
        Top = 6
        Width = 230
        Height = 44
        Anchors = [akLeft]
        Caption = 'Format Laporan'
        ItemIndex = 0
        Items.Strings = (
          'Per Potong + Meter'
          'Per KG')
        TabOrder = 4
      end
      object BitBPrintBrowse2: TBitBtn
        Left = 629
        Top = 18
        Width = 77
        Height = 25
        Caption = '&Print'
        TabOrder = 5
        OnClick = BitBPrintBrowse2Click
        NumGlyphs = 2
      end
    end
  end
  object QBrowse: TOracleDataSet
    SQL.Strings = (
      'select kd_konstruksi, nama_konstruksi,'
      'qty_awl,'
      'qty_awl2,'
      'sum(qty1) as qty1,'
      'sum(qty2) as qty2,'
      'qty3,'
      'qty4,'
      'qty5,'
      'qty6,'
      'qty7,'
      'qty8,'
      'qty9,'
      'qty10,'
      'qty11,'
      'qty12,'
      'qty13,'
      'qty14,'
      'qty15,'
      'qty_awl+((qty1+qty7)-(qty5+qty9)) AS qty_akhir,'
      'qty_awl2+((qty2+qty8)-(qty6+qty10)) AS qty_akhir2,'
      'rasio2,'
      'satuan'
      'from ipisma_db3.wip_jetdyeing'
      
        'group by kd_konstruksi, nama_konstruksi, (qty_awl,qty_awl2,qty1,' +
        ' qty2, qty3, qty4, qty5, qty6, qty7, qty8, qty9, qty10, qty11, q' +
        'ty12, qty13, qty14, qty15,'
      'qty_awl, qty_awl2, qty_akhir, qty_akhir2, rasio2, satuan)'
      'ORDER BY NAMA_konstruksi')
    QBEDefinition.QBEFieldDefs = {
      0400000017000000040000005154593101000000000004000000515459320100
      0000000004000000515459350100000000000400000051545936010000000000
      040000005154593701000000000004000000515459380100000000000D000000
      4B445F4B4F4E535452554B53490100000000000F0000004E414D415F4B4F4E53
      5452554B53490100000000000400000051545939010000000000050000005154
      5931300100000000000500000051545931310100000000000500000051545931
      3201000000000005000000515459313301000000000005000000515459313401
      0000000000050000005154593135010000000000070000005154595F41574C01
      0000000000090000005154595F414B484952010000000000080000005154595F
      41574C320100000000000A0000005154595F414B484952320100000000000600
      0000524153494F32010000000000040000005154593301000000000004000000
      515459340100000000000600000053415455414E010000000000}
    Cursor = crSQLWait
    ReadOnly = True
    QueryAllRecords = False
    Session = DMFrm.OS
    AfterScroll = QBrowseAfterScroll
    OnCalcFields = QBrowseCalcFields
    OnFilterRecord = QBrowseFilterRecord
    Left = 644
    Top = 88
    object QBrowseKD_KONSTRUKSI: TStringField
      FieldName = 'KD_KONSTRUKSI'
      Size = 10
    end
    object QBrowseNAMA_KONSTRUKSI: TStringField
      FieldName = 'NAMA_KONSTRUKSI'
      Size = 100
    end
    object QBrowseQTY1: TFloatField
      FieldName = 'QTY1'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QBrowseQTY2: TFloatField
      FieldName = 'QTY2'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QBrowseQTY3: TFloatField
      FieldName = 'QTY3'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QBrowseQTY4: TFloatField
      FieldName = 'QTY4'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QBrowseQTY5: TFloatField
      FieldName = 'QTY5'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QBrowseQTY6: TFloatField
      FieldName = 'QTY6'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QBrowseQTY7: TFloatField
      FieldName = 'QTY7'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QBrowseQTY8: TFloatField
      FieldName = 'QTY8'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QBrowseQTY9: TFloatField
      FieldName = 'QTY9'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QBrowseQTY10: TFloatField
      FieldName = 'QTY10'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QBrowseQTY11: TFloatField
      FieldName = 'QTY11'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QBrowseQTY12: TFloatField
      FieldName = 'QTY12'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QBrowseQTY13: TFloatField
      FieldName = 'QTY13'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QBrowseQTY14: TFloatField
      FieldName = 'QTY14'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QBrowseQTY15: TFloatField
      FieldName = 'QTY15'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QBrowseQTY_AWL: TFloatField
      FieldName = 'QTY_AWL'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QBrowseQTY_AKHIR: TFloatField
      FieldName = 'QTY_AKHIR'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QBrowseQTY_AWL2: TFloatField
      FieldName = 'QTY_AWL2'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QBrowseQTY_AKHIR2: TFloatField
      FieldName = 'QTY_AKHIR2'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QBrowseRASIO2: TFloatField
      FieldName = 'RASIO2'
    end
    object QBrowsekg_awl: TFloatField
      FieldKind = fkCalculated
      FieldName = 'kg_awl'
      DisplayFormat = '0.0,0;(0.0,0);-'
      Calculated = True
    end
    object QBrowsekg1: TFloatField
      FieldKind = fkCalculated
      FieldName = 'kg1'
      DisplayFormat = '0.0,0;(0.0,0);-'
      Calculated = True
    end
    object QBrowsekg2: TFloatField
      FieldKind = fkCalculated
      FieldName = 'kg2'
      DisplayFormat = '0.0,0;(0.0,0);-'
      Calculated = True
    end
    object QBrowsekg3: TFloatField
      FieldKind = fkCalculated
      FieldName = 'kg3'
      DisplayFormat = '0.0,0;(0.0,0);-'
      Calculated = True
    end
    object QBrowsekg4: TFloatField
      FieldKind = fkCalculated
      FieldName = 'kg4'
      DisplayFormat = '0.0,0;(0.0,0);-'
      Calculated = True
    end
    object QBrowsekg5: TFloatField
      FieldKind = fkCalculated
      FieldName = 'kg5'
      DisplayFormat = '0.0,0;(0.0,0);-'
      Calculated = True
    end
    object QBrowsekg6: TFloatField
      FieldKind = fkCalculated
      FieldName = 'kg6'
      Calculated = True
    end
    object QBrowsekg_akhir: TFloatField
      FieldKind = fkCalculated
      FieldName = 'kg_akhir'
      DisplayFormat = '0.0,0;(0.0,0);-'
      Calculated = True
    end
    object QBrowseSATUAN: TStringField
      FieldName = 'SATUAN'
      Size = 15
    end
  end
  object dsQBrowse: TwwDataSource
    DataSet = QBrowse
    Left = 888
    Top = 8
  end
  object ppReportBrowse: TppReport
    AutoStop = False
    DataPipeline = ppDBQBrowseDetail
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'A4 210 x 297 mm'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 209974
    PrinterSetup.mmPaperWidth = 297039
    PrinterSetup.PaperSize = 9
    Template.FileName = 'D:\_Proyek\iPismaTex\Aplikasi\Report\TransaksiOrg.rtm'
    Units = utPrinterPixels
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 952
    Top = 10
    Version = '10.06'
    mmColumnWidth = 197300
    DataPipelineName = 'ppDBQBrowseDetail'
    object ppTitleBand1: TppTitleBand
      BeforePrint = ppTitleBand1BeforePrint
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 32015
      mmPrintPosition = 0
      object ppNamaLaporan: TppLabel
        UserName = 'NamaLaporan'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Transaksi Org'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5821
        mmLeft = 126471
        mmTop = 16933
        mmWidth = 31485
        BandType = 1
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '====================================='
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 6615
        mmTop = 15081
        mmWidth = 75671
        BandType = 1
      end
      object ppPeriode: TppLabel
        UserName = 'Periode'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = '01 Nop 2006 s/d 30 Nop 2006'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 124884
        mmTop = 23283
        mmWidth = 34660
        BandType = 1
      end
      object ppDBText12: TppDBText
        UserName = 'DBText11'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'PERUSAHAAN'
        DataPipeline = ppDBPerusahaan
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPerusahaan'
        mmHeight = 4246
        mmLeft = 6615
        mmTop = 1058
        mmWidth = 24208
        BandType = 1
      end
      object ppDBText13: TppDBText
        UserName = 'DBText12'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'ALAMAT1'
        DataPipeline = ppDBPerusahaan
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPerusahaan'
        mmHeight = 4097
        mmLeft = 6615
        mmTop = 6085
        mmWidth = 15791
        BandType = 1
      end
      object ppDBText14: TppDBText
        UserName = 'DBText13'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'TELEPON1'
        DataPipeline = ppDBPerusahaan
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPerusahaan'
        mmHeight = 4097
        mmLeft = 6615
        mmTop = 10583
        mmWidth = 18175
        BandType = 1
      end
      object ppUserCetak: TppLabel
        UserName = 'UserCetak'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'SYSTEM, 17 Jan 2007 16:35'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 252942
        mmTop = 28046
        mmWidth = 28840
        BandType = 1
      end
    end
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 9260
      mmPrintPosition = 0
      object ppShape12: TppShape
        UserName = 'Shape12'
        ParentHeight = True
        mmHeight = 9260
        mmLeft = 256646
        mmTop = 0
        mmWidth = 27517
        BandType = 0
      end
      object ppShape7: TppShape
        UserName = 'Shape7'
        ParentHeight = True
        mmHeight = 9260
        mmLeft = 239713
        mmTop = 0
        mmWidth = 17198
        BandType = 0
      end
      object ppShape6: TppShape
        UserName = 'Shape6'
        ParentHeight = True
        mmHeight = 9260
        mmLeft = 223838
        mmTop = 0
        mmWidth = 16140
        BandType = 0
      end
      object ppShape8: TppShape
        UserName = 'Shape8'
        ParentHeight = True
        mmHeight = 9260
        mmLeft = 102659
        mmTop = 0
        mmWidth = 31221
        BandType = 0
      end
      object ppShape11: TppShape
        UserName = 'Shape101'
        ParentHeight = True
        mmHeight = 9260
        mmLeft = 182298
        mmTop = 0
        mmWidth = 41804
        BandType = 0
      end
      object ppShape10: TppShape
        UserName = 'Shape10'
        ParentHeight = True
        mmHeight = 9260
        mmLeft = 149225
        mmTop = 0
        mmWidth = 33338
        BandType = 0
      end
      object ppShape9: TppShape
        UserName = 'Shape9'
        ParentHeight = True
        mmHeight = 9260
        mmLeft = 133350
        mmTop = 0
        mmWidth = 16404
        BandType = 0
      end
      object ppShape5: TppShape
        UserName = 'Shape5'
        ParentHeight = True
        mmHeight = 9260
        mmLeft = 88900
        mmTop = 0
        mmWidth = 14023
        BandType = 0
      end
      object ppShape4: TppShape
        UserName = 'Shape4'
        ParentHeight = True
        mmHeight = 9260
        mmLeft = 79375
        mmTop = 0
        mmWidth = 9790
        BandType = 0
      end
      object ppShape3: TppShape
        UserName = 'Shape3'
        ParentHeight = True
        mmHeight = 9260
        mmLeft = 23019
        mmTop = 0
        mmWidth = 56621
        BandType = 0
      end
      object ppShape2: TppShape
        UserName = 'Shape2'
        ParentHeight = True
        mmHeight = 9260
        mmLeft = 9525
        mmTop = 0
        mmWidth = 13758
        BandType = 0
      end
      object ppShape1: TppShape
        UserName = 'Shape1'
        ParentHeight = True
        mmHeight = 9260
        mmLeft = 0
        mmTop = 0
        mmWidth = 10319
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'NO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3440
        mmLeft = 3175
        mmTop = 2381
        mmWidth = 5027
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'AWAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 137584
        mmTop = 2381
        mmWidth = 8467
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'KODE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 12435
        mmTop = 2910
        mmWidth = 8202
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'NAMA BARANG'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 24606
        mmTop = 2910
        mmWidth = 24606
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label103'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Retur'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3440
        mmLeft = 201613
        mmTop = 5292
        mmWidth = 7408
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'PP'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3426
        mmLeft = 108206
        mmTop = 5292
        mmWidth = 3724
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'PO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3426
        mmLeft = 123629
        mmTop = 5292
        mmWidth = 4097
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        Anchors = [atLeft, atBottom]
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Pakai'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3440
        mmLeft = 186267
        mmTop = 5292
        mmWidth = 7408
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Rusak'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3440
        mmLeft = 213255
        mmTop = 5292
        mmWidth = 8467
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'READY'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 243153
        mmTop = 2381
        mmWidth = 9790
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'SATUAN'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3175
        mmLeft = 89959
        mmTop = 2381
        mmWidth = 11906
        BandType = 0
      end
      object ppLabel23: TppLabel
        UserName = 'Label23'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'KOREKSI'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 225425
        mmTop = 2381
        mmWidth = 12700
        BandType = 0
      end
      object ppLabel28: TppLabel
        UserName = 'Label28'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Suplier'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3440
        mmLeft = 258234
        mmTop = 5556
        mmWidth = 9525
        BandType = 0
      end
      object ppLabel30: TppLabel
        UserName = 'Label30'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Smtr'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3440
        mmLeft = 273315
        mmTop = 5292
        mmWidth = 6615
        BandType = 0
      end
      object ppLabel31: TppLabel
        UserName = 'Label31'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Beli'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3440
        mmLeft = 155575
        mmTop = 5292
        mmWidth = 5292
        BandType = 0
      end
      object ppLabel32: TppLabel
        UserName = 'Label32'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Lainnya'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3440
        mmLeft = 168540
        mmTop = 5292
        mmWidth = 10583
        BandType = 0
      end
      object ppLabel33: TppLabel
        UserName = 'Label33'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'PART'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 80698
        mmTop = 2381
        mmWidth = 7673
        BandType = 0
      end
      object ppLabel34: TppLabel
        UserName = 'Label34'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'STATUS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3426
        mmLeft = 112687
        mmTop = 794
        mmWidth = 11173
        BandType = 0
      end
      object ppLabel35: TppLabel
        UserName = 'Label35'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'M A S U K'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3440
        mmLeft = 160338
        mmTop = 794
        mmWidth = 13758
        BandType = 0
      end
      object ppLine19: TppLine
        UserName = 'Line19'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 149490
        mmTop = 4763
        mmWidth = 74348
        BandType = 0
      end
      object ppLine20: TppLine
        UserName = 'Line20'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4233
        mmLeft = 165894
        mmTop = 5027
        mmWidth = 1323
        BandType = 0
      end
      object ppLine21: TppLine
        UserName = 'Line201'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4233
        mmLeft = 198438
        mmTop = 5027
        mmWidth = 1323
        BandType = 0
      end
      object ppLine22: TppLine
        UserName = 'Line202'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4233
        mmLeft = 211138
        mmTop = 5027
        mmWidth = 1323
        BandType = 0
      end
      object ppLine23: TppLine
        UserName = 'Line23'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 102659
        mmTop = 4763
        mmWidth = 30956
        BandType = 0
      end
      object ppLine24: TppLine
        UserName = 'Line203'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4233
        mmLeft = 117740
        mmTop = 5027
        mmWidth = 1323
        BandType = 0
      end
      object ppLabel36: TppLabel
        UserName = 'Label36'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'K E L U A R'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3440
        mmLeft = 196850
        mmTop = 794
        mmWidth = 15610
        BandType = 0
      end
      object ppLine25: TppLine
        UserName = 'Line25'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 256646
        mmTop = 4763
        mmWidth = 27252
        BandType = 0
      end
      object ppLine26: TppLine
        UserName = 'Line26'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4233
        mmLeft = 269611
        mmTop = 4991
        mmWidth = 1323
        BandType = 0
      end
      object ppLabel37: TppLabel
        UserName = 'Label37'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'TITIPAN'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3440
        mmLeft = 264319
        mmTop = 794
        mmWidth = 10848
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      BeforePrint = ppDetailBand1BeforePrint
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 4233
      mmPrintPosition = 0
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'KD_ITEM'
        DataPipeline = ppDBQBrowseDetail
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBQBrowseDetail'
        mmHeight = 3175
        mmLeft = 12171
        mmTop = 265
        mmWidth = 9260
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'AWAL'
        DataPipeline = ppDBQBrowseDetail
        DisplayFormat = '#,###.##;(#,###.##)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBQBrowseDetail'
        mmHeight = 3277
        mmLeft = 140313
        mmTop = 265
        mmWidth = 8119
        BandType = 4
      end
      object ppDBMemo1: TppDBMemo
        UserName = 'DBMemo1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        CharWrap = False
        DataField = 'NAMA_ITEM'
        DataPipeline = ppDBQBrowseDetail
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Stretch = True
        Transparent = True
        DataPipelineName = 'ppDBQBrowseDetail'
        mmHeight = 3175
        mmLeft = 24606
        mmTop = 265
        mmWidth = 53975
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'RETUR'
        DataPipeline = ppDBQBrowseDetail
        DisplayFormat = '#,###.##;(#,###.##)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBQBrowseDetail'
        mmHeight = 3277
        mmLeft = 199941
        mmTop = 265
        mmWidth = 9609
        BandType = 4
      end
      object ppLblNomer: TppLabel
        UserName = 'LblNomer'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'No'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 2910
        mmTop = 265
        mmWidth = 3704
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'KEBUTUHAN'
        DataPipeline = ppDBQBrowseDetail
        DisplayFormat = '#,###.##;(#,###.##)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBQBrowseDetail'
        mmHeight = 3277
        mmLeft = 99211
        mmTop = 265
        mmWidth = 17206
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'ON_ORDER'
        DataPipeline = ppDBQBrowseDetail
        DisplayFormat = '#,###.##;(#,###.##)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBQBrowseDetail'
        mmHeight = 3277
        mmLeft = 115823
        mmTop = 265
        mmWidth = 15940
        BandType = 4
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'PEMAKAIAN'
        DataPipeline = ppDBQBrowseDetail
        DisplayFormat = '#,###.##;(#,###.##)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBQBrowseDetail'
        mmHeight = 3277
        mmLeft = 181067
        mmTop = 265
        mmWidth = 16313
        BandType = 4
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'RUSAK'
        DataPipeline = ppDBQBrowseDetail
        DisplayFormat = '#,###.##;(#,###.##)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBQBrowseDetail'
        mmHeight = 3277
        mmLeft = 212641
        mmTop = 265
        mmWidth = 9609
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'READY'
        DataPipeline = ppDBQBrowseDetail
        DisplayFormat = '#,###.##;(#,###.##)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBQBrowseDetail'
        mmHeight = 3277
        mmLeft = 245714
        mmTop = 265
        mmWidth = 9609
        BandType = 4
      end
      object ppDBMemo2: TppDBMemo
        UserName = 'DBMemo2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        CharWrap = False
        DataField = 'MYSATUAN'
        DataPipeline = ppDBQBrowseDetail
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Stretch = True
        Transparent = True
        DataPipelineName = 'ppDBQBrowseDetail'
        mmHeight = 3175
        mmLeft = 89694
        mmTop = 265
        mmWidth = 12435
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'KOREKSI'
        DataPipeline = ppDBQBrowseDetail
        DisplayFormat = '#,###.##;(#,###.##)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBQBrowseDetail'
        mmHeight = 3277
        mmLeft = 225347
        mmTop = 265
        mmWidth = 12514
        BandType = 4
      end
      object ppDBText11: TppDBText
        UserName = 'DBText9'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'REKANAN'
        DataPipeline = ppDBQBrowseDetail
        DisplayFormat = '#,###.##;(#,###.##)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBQBrowseDetail'
        mmHeight = 3277
        mmLeft = 255600
        mmTop = 265
        mmWidth = 13482
        BandType = 4
      end
      object ppDBText27: TppDBText
        UserName = 'DBText27'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'SEMENTARA'
        DataPipeline = ppDBQBrowseDetail
        DisplayFormat = '#,###.##;(#,###.##)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBQBrowseDetail'
        mmHeight = 3277
        mmLeft = 265220
        mmTop = 265
        mmWidth = 17355
        BandType = 4
      end
      object ppDBText28: TppDBText
        UserName = 'DBText28'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'NO_PART'
        DataPipeline = ppDBQBrowseDetail
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBQBrowseDetail'
        mmHeight = 3277
        mmLeft = 80698
        mmTop = 265
        mmWidth = 13259
        BandType = 4
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        ParentHeight = True
        Position = lpLeft
        ReprintOnOverFlow = True
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 4233
        mmLeft = 23019
        mmTop = 0
        mmWidth = 3704
        BandType = 4
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        ParentHeight = True
        Position = lpLeft
        ReprintOnOverFlow = True
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 4233
        mmLeft = 0
        mmTop = 0
        mmWidth = 3704
        BandType = 4
      end
      object ppLine3: TppLine
        UserName = 'Line3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        ParentHeight = True
        Position = lpLeft
        ReprintOnOverFlow = True
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 4233
        mmLeft = 10054
        mmTop = 0
        mmWidth = 3704
        BandType = 4
      end
      object ppLine4: TppLine
        UserName = 'Line4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        ParentHeight = True
        Position = lpLeft
        ReprintOnOverFlow = True
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 4233
        mmLeft = 269876
        mmTop = 0
        mmWidth = 3704
        BandType = 4
      end
      object ppLine5: TppLine
        UserName = 'Line5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        ParentHeight = True
        Position = lpRight
        ReprintOnOverFlow = True
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 4233
        mmLeft = 280459
        mmTop = 0
        mmWidth = 3704
        BandType = 4
      end
      object ppLine6: TppLine
        UserName = 'Line6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        ParentHeight = True
        Position = lpLeft
        ReprintOnOverFlow = True
        StretchWithParent = True
        Style = lsDouble
        Weight = 0.750000000000000000
        mmHeight = 4233
        mmLeft = 256382
        mmTop = 0
        mmWidth = 3704
        BandType = 4
      end
      object ppLine7: TppLine
        UserName = 'Line7'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        ParentHeight = True
        Position = lpLeft
        ReprintOnOverFlow = True
        StretchWithParent = True
        Style = lsDouble
        Weight = 0.750000000000000000
        mmHeight = 4233
        mmLeft = 239448
        mmTop = 0
        mmWidth = 3704
        BandType = 4
      end
      object ppLine8: TppLine
        UserName = 'Line8'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        ParentHeight = True
        Position = lpLeft
        ReprintOnOverFlow = True
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 4233
        mmLeft = 223838
        mmTop = 0
        mmWidth = 3704
        BandType = 4
      end
      object ppLine9: TppLine
        UserName = 'Line9'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        ParentHeight = True
        Position = lpLeft
        ReprintOnOverFlow = True
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 4233
        mmLeft = 211138
        mmTop = 0
        mmWidth = 3704
        BandType = 4
      end
      object ppLine10: TppLine
        UserName = 'Line10'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        ParentHeight = True
        Position = lpLeft
        ReprintOnOverFlow = True
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 4233
        mmLeft = 198438
        mmTop = 0
        mmWidth = 3704
        BandType = 4
      end
      object ppLine11: TppLine
        UserName = 'Line11'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        ParentHeight = True
        Position = lpLeft
        ReprintOnOverFlow = True
        StretchWithParent = True
        Style = lsDouble
        Weight = 0.750000000000000000
        mmHeight = 4233
        mmLeft = 182034
        mmTop = 0
        mmWidth = 3704
        BandType = 4
      end
      object ppLine12: TppLine
        UserName = 'Line12'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        ParentHeight = True
        Position = lpLeft
        ReprintOnOverFlow = True
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 4233
        mmLeft = 165894
        mmTop = 0
        mmWidth = 3704
        BandType = 4
      end
      object ppDBText50: TppDBText
        UserName = 'DBText50'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'MASUK_LAIN'
        DataPipeline = ppDBQBrowseDetail
        DisplayFormat = '#,###.##;(#,###.##)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBQBrowseDetail'
        mmHeight = 3277
        mmLeft = 163247
        mmTop = 265
        mmWidth = 17728
        BandType = 4
      end
      object ppDBText51: TppDBText
        UserName = 'DBText51'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'PEMBELIAN'
        DataPipeline = ppDBQBrowseDetail
        DisplayFormat = '#,###.##;(#,###.##)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBQBrowseDetail'
        mmHeight = 3277
        mmLeft = 147762
        mmTop = 265
        mmWidth = 16015
        BandType = 4
      end
      object ppLine13: TppLine
        UserName = 'Line13'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        ParentHeight = True
        Position = lpLeft
        ReprintOnOverFlow = True
        StretchWithParent = True
        Style = lsDouble
        Weight = 0.750000000000000000
        mmHeight = 4233
        mmLeft = 149225
        mmTop = 0
        mmWidth = 3704
        BandType = 4
      end
      object ppLine14: TppLine
        UserName = 'Line14'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        ParentHeight = True
        Position = lpLeft
        ReprintOnOverFlow = True
        StretchWithParent = True
        Style = lsDouble
        Weight = 0.750000000000000000
        mmHeight = 4233
        mmLeft = 133350
        mmTop = 0
        mmWidth = 3704
        BandType = 4
      end
      object ppLine15: TppLine
        UserName = 'Line15'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        ParentHeight = True
        Position = lpLeft
        ReprintOnOverFlow = True
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 4233
        mmLeft = 117740
        mmTop = 0
        mmWidth = 3704
        BandType = 4
      end
      object ppLine16: TppLine
        UserName = 'Line16'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        ParentHeight = True
        Position = lpLeft
        ReprintOnOverFlow = True
        StretchWithParent = True
        Style = lsDouble
        Weight = 0.750000000000000000
        mmHeight = 4233
        mmLeft = 102394
        mmTop = 0
        mmWidth = 3704
        BandType = 4
      end
      object ppLine17: TppLine
        UserName = 'Line17'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        ParentHeight = True
        Position = lpLeft
        ReprintOnOverFlow = True
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 4233
        mmLeft = 88900
        mmTop = 0
        mmWidth = 3704
        BandType = 4
      end
      object ppLine18: TppLine
        UserName = 'Line18'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        ParentHeight = True
        Position = lpLeft
        ReprintOnOverFlow = True
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 4233
        mmLeft = 79375
        mmTop = 0
        mmWidth = 3704
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 4498
      mmPrintPosition = 0
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        VarType = vtPageNo
        DisplayFormat = 'Hal : #'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 274109
        mmTop = 1323
        mmWidth = 7938
        BandType = 8
      end
    end
    object ppSummaryBand1: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 32808
      mmPrintPosition = 0
      object ppDBText19: TppDBText
        UserName = 'DBText19'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'TTD1'
        DataPipeline = ppDBQTransaksi
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold, fsUnderline]
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBQTransaksi'
        mmHeight = 4233
        mmLeft = 241300
        mmTop = 21167
        mmWidth = 33602
        BandType = 7
      end
      object ppDBText42: TppDBText
        UserName = 'DBText42'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'TTD2'
        DataPipeline = ppDBQTransaksi
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold, fsUnderline]
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBQTransaksi'
        mmHeight = 4233
        mmLeft = 202142
        mmTop = 21431
        mmWidth = 33602
        BandType = 7
      end
      object ppDBText43: TppDBText
        UserName = 'DBText43'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'TTD3'
        DataPipeline = ppDBQTransaksi
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold, fsUnderline]
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBQTransaksi'
        mmHeight = 4233
        mmLeft = 164042
        mmTop = 21167
        mmWidth = 33602
        BandType = 7
      end
      object ppDBText44: TppDBText
        UserName = 'DBText44'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'DIV3'
        DataPipeline = ppDBQTransaksi
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBQTransaksi'
        mmHeight = 4233
        mmLeft = 164042
        mmTop = 8467
        mmWidth = 33602
        BandType = 7
      end
      object ppDBText45: TppDBText
        UserName = 'DBText45'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'DIV2'
        DataPipeline = ppDBQTransaksi
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBQTransaksi'
        mmHeight = 4233
        mmLeft = 202142
        mmTop = 8467
        mmWidth = 33602
        BandType = 7
      end
      object ppDBText46: TppDBText
        UserName = 'DBText46'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'DIV1'
        DataPipeline = ppDBQTransaksi
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBQTransaksi'
        mmHeight = 4233
        mmLeft = 241300
        mmTop = 8467
        mmWidth = 33602
        BandType = 7
      end
      object ppDBText47: TppDBText
        UserName = 'DBText47'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'JAB3'
        DataPipeline = ppDBQTransaksi
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsItalic]
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBQTransaksi'
        mmHeight = 4233
        mmLeft = 164042
        mmTop = 25400
        mmWidth = 33602
        BandType = 7
      end
      object ppDBText48: TppDBText
        UserName = 'DBText48'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'JAB2'
        DataPipeline = ppDBQTransaksi
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsItalic]
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBQTransaksi'
        mmHeight = 3969
        mmLeft = 202142
        mmTop = 25665
        mmWidth = 33602
        BandType = 7
      end
      object ppDBText49: TppDBText
        UserName = 'DBText401'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'JAB1'
        DataPipeline = ppDBQTransaksi
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsItalic]
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppDBQTransaksi'
        mmHeight = 3969
        mmLeft = 241300
        mmTop = 25400
        mmWidth = 33602
        BandType = 7
      end
      object ppLine27: TppLine
        UserName = 'Line21'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        ParentHeight = True
        Weight = 0.750000000000000000
        mmHeight = 32808
        mmLeft = 0
        mmTop = 0
        mmWidth = 284163
        BandType = 7
      end
    end
  end
  object ppDBQBrowseDetail: TppDBPipeline
    DataSource = dsQBrowse
    OpenDataSource = False
    UserName = 'DBQBrowseDetail'
    Left = 920
    Top = 8
    object ppDBQBrowseDetailppField1: TppField
      FieldAlias = 'NAMA_ITEM'
      FieldName = 'NAMA_ITEM'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppDBQBrowseDetailppField2: TppField
      FieldAlias = 'QTY1'
      FieldName = 'QTY1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppDBQBrowseDetailppField3: TppField
      FieldAlias = 'QTY2'
      FieldName = 'QTY2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppDBQBrowseDetailppField4: TppField
      FieldAlias = 'QTY3'
      FieldName = 'QTY3'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppDBQBrowseDetailppField5: TppField
      FieldAlias = 'QTY4'
      FieldName = 'QTY4'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppDBQBrowseDetailppField6: TppField
      FieldAlias = 'QTY5'
      FieldName = 'QTY5'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppDBQBrowseDetailppField7: TppField
      FieldAlias = 'QTY6'
      FieldName = 'QTY6'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
  end
  object ppDesigner1: TppDesigner
    AllowDataSettingsChange = True
    Caption = 'ReportBuilder'
    DataSettings.SessionType = 'BDESession'
    DataSettings.AllowEditSQL = False
    DataSettings.DatabaseType = dtParadox
    DataSettings.GuidCollationType = gcString
    DataSettings.IsCaseSensitive = True
    DataSettings.SQLType = sqBDELocal
    Position = poScreenCenter
    Report = ppReportBrowse
    IniStorageType = 'IniFile'
    IniStorageName = '($WINSYS)\RBuilder.ini'
    WindowHeight = 400
    WindowLeft = 100
    WindowTop = 50
    WindowWidth = 600
    Left = 952
    Top = 72
  end
  object ppDBPerusahaan: TppDBPipeline
    DataSource = DMFrm.dsPerusahaan
    OpenDataSource = False
    UserName = 'DBPerusahaan'
    Left = 920
    Top = 72
  end
  object QTransaksi: TOracleDataSet
    SQL.Strings = (
      'select * from vtransaksi')
    QBEDefinition.QBEFieldDefs = {
      04000000120000000E0000004E414D415F5452414E53414B5349010000000000
      0C0000004B445F5452414E53414B534901000000000006000000505245464958
      01000000000005000000504C494E450100000000000700000050484541444552
      0100000000000A00000044495354524942555349010000000000040000005454
      4431010000000000040000005454443201000000000004000000545444330100
      0000000004000000545444340100000000000400000044495631010000000000
      0400000044495632010000000000040000004449563301000000000004000000
      44495634010000000000040000004A414231010000000000040000004A414232
      010000000000040000004A414233010000000000040000004A41423401000000
      0000}
    Cursor = crSQLWait
    Session = DMFrm.OS
    BeforeOpen = QTransaksiBeforeOpen
    Left = 136
    Top = 8
    object QTransaksiNAMA_TRANSAKSI: TStringField
      FieldName = 'NAMA_TRANSAKSI'
      Size = 50
    end
    object QTransaksiKD_TRANSAKSI: TStringField
      DisplayWidth = 3
      FieldName = 'KD_TRANSAKSI'
      Required = True
      Size = 3
    end
    object QTransaksiPREFIX: TStringField
      FieldName = 'PREFIX'
      Size = 5
    end
    object QTransaksiPLINE: TStringField
      FieldName = 'PLINE'
      Size = 1
    end
    object QTransaksiPHEADER: TStringField
      FieldName = 'PHEADER'
      Size = 1
    end
    object QTransaksiDISTRIBUSI: TStringField
      FieldName = 'DISTRIBUSI'
      Size = 80
    end
    object QTransaksiTTD1: TStringField
      FieldName = 'TTD1'
      Size = 30
    end
    object QTransaksiTTD2: TStringField
      FieldName = 'TTD2'
      Size = 30
    end
    object QTransaksiTTD3: TStringField
      FieldName = 'TTD3'
      Size = 30
    end
    object QTransaksiTTD4: TStringField
      FieldName = 'TTD4'
      Size = 30
    end
    object QTransaksiDIV1: TStringField
      FieldName = 'DIV1'
      Size = 30
    end
    object QTransaksiDIV2: TStringField
      FieldName = 'DIV2'
      Size = 30
    end
    object QTransaksiDIV3: TStringField
      FieldName = 'DIV3'
      Size = 30
    end
    object QTransaksiDIV4: TStringField
      FieldName = 'DIV4'
      Size = 30
    end
    object QTransaksiJAB1: TStringField
      FieldName = 'JAB1'
      Size = 30
    end
    object QTransaksiJAB2: TStringField
      FieldName = 'JAB2'
      Size = 30
    end
    object QTransaksiJAB3: TStringField
      FieldName = 'JAB3'
      Size = 30
    end
    object QTransaksiJAB4: TStringField
      FieldName = 'JAB4'
      Size = 30
    end
  end
  object ppDBQTransaksi: TppDBPipeline
    DataSource = dsQTransaksi
    UserName = 'DBQTransaksi'
    Left = 256
    Top = 16
  end
  object dsQTransaksi: TwwDataSource
    DataSet = QTransaksi
    Left = 344
    Top = 8
  end
  object QSOP: TOracleDataSet
    SQL.Strings = (
      'select sinopsis from vsop'
      'where kd_transaksi='#39'108'#39)
    QBEDefinition.QBEFieldDefs = {04000000010000000800000053494E4F50534953010000000000}
    Cursor = crSQLWait
    Session = DMFrm.OS
    Left = 80
    Top = 8
  end
  object dsQSOP: TwwDataSource
    DataSet = QSOP
    Left = 396
    Top = 8
  end
  object QDump: TOracleQuery
    SQL.Strings = (
      'begin'
      '  ipisma_db3.proc_wip_jetdyeing(:vsysdate, :vsysdate2);'
      'end;'
      '')
    Session = DMFrm.OS
    Variables.Data = {
      0300000002000000090000003A56535953444154450C00000007000000787106
      01010101000000000A0000003A5653595344415445320C000000070000007871
      061E01010100000000}
    Left = 480
    Top = 24
  end
  object QTotal: TOracleDataSet
    SQL.Strings = (
      'select'
      'sum(a.qty_awl) as qty_awl,'
      'sum(a.qty_awl2) as qty_awl2,'
      'sum(a.qty1) as qty1,'
      'sum(a.qty2) as qty2,'
      'sum(a.qty3) as qty3,'
      'sum(a.qty4) as qty4,'
      'sum(a.qty5) as qty5,'
      'sum(a.qty6) as qty6,'
      'sum(a.qty7) as qty7,'
      'sum(a.qty8) as qty8,'
      'sum(a.qty9) as qty9,'
      'sum(a.qty10) as qty10,'
      'sum(qty_awl+((qty1+qty7)-(qty5+qty9))) AS qty_akhir,'
      'sum(qty_awl2+((qty2+qty8)-(qty6+qty10))) AS qty_akhir2'
      'from ipisma_db3.wip_jetdyeing a'
      '')
    QBEDefinition.QBEFieldDefs = {
      040000000E000000040000005154593101000000000004000000515459320100
      0000000004000000515459330100000000000400000051545934010000000000
      0400000051545935010000000000040000005154593601000000000004000000
      5154593701000000000004000000515459390100000000000500000051545931
      300100000000000400000051545938010000000000070000005154595F41574C
      010000000000080000005154595F41574C32010000000000090000005154595F
      414B4849520100000000000A0000005154595F414B48495232010000000000}
    Cursor = crSQLWait
    Session = DMFrm.OS
    Left = 589
    Top = 89
    object QTotalQTY1: TFloatField
      FieldName = 'QTY1'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QTotalQTY2: TFloatField
      FieldName = 'QTY2'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QTotalQTY3: TFloatField
      FieldName = 'QTY3'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QTotalQTY4: TFloatField
      FieldName = 'QTY4'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QTotalQTY5: TFloatField
      FieldName = 'QTY5'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QTotalQTY6: TFloatField
      FieldName = 'QTY6'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QTotalQTY7: TFloatField
      FieldName = 'QTY7'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QTotalQTY8: TFloatField
      FieldName = 'QTY8'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QTotalQTY9: TFloatField
      FieldName = 'QTY9'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QTotalQTY10: TFloatField
      FieldName = 'QTY10'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QTotalQTY_AWL: TFloatField
      FieldName = 'QTY_AWL'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QTotalQTY_AWL2: TFloatField
      FieldName = 'QTY_AWL2'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QTotalQTY_AKHIR: TFloatField
      FieldName = 'QTY_AKHIR'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QTotalQTY_AKHIR2: TFloatField
      FieldName = 'QTY_AKHIR2'
      DisplayFormat = '0.0,0;(0.0,0);-'
    end
    object QTotalkg_awl: TFloatField
      FieldKind = fkCalculated
      FieldName = 'kg_awl'
      Calculated = True
    end
    object QTotalkg1: TFloatField
      FieldKind = fkCalculated
      FieldName = 'kg1'
      Calculated = True
    end
    object QTotalkg2: TFloatField
      FieldKind = fkCalculated
      FieldName = 'kg2'
      Calculated = True
    end
    object QTotalkg3: TFloatField
      FieldKind = fkCalculated
      FieldName = 'kg3'
      Calculated = True
    end
    object QTotalkg4: TFloatField
      FieldKind = fkCalculated
      FieldName = 'kg4'
      Calculated = True
    end
    object QTotalkg5: TFloatField
      FieldKind = fkCalculated
      FieldName = 'kg5'
      Calculated = True
    end
    object QTotalkg_akhir: TFloatField
      FieldKind = fkCalculated
      FieldName = 'kg_akhir'
      Calculated = True
    end
  end
end
