object LapKeluarGWFrm: TLapKeluarGWFrm
  Left = 203
  Top = 130
  Width = 1108
  Height = 608
  Caption = 'Laporan Pengeluaran Gudang warna'
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
    Width = 1092
    Height = 569
    Align = alClient
    BevelOuter = bvNone
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 0
    object Label1: TLabel
      Left = 0
      Top = 556
      Width = 1092
      Height = 13
      Align = alBottom
      Color = clSkyBlue
      ParentColor = False
    end
    object DBText3: TDBText
      Left = 0
      Top = 49
      Width = 1092
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
      Width = 1092
      Height = 13
      Align = alTop
      Color = clSkyBlue
      ParentColor = False
    end
    object PanelHeader: TPanel
      Left = 0
      Top = 0
      Width = 1092
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
      Width = 1092
      Height = 57
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 1
      object Label5: TLabel
        Left = 343
        Top = 16
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
        Left = 345
        Top = 32
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
    end
    object PanelBrowse: TPanel
      Left = 0
      Top = 146
      Width = 1092
      Height = 369
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 2
      object QuickRep2: TQuickRep
        Left = 112
        Top = -18
        Width = 1123
        Height = 794
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
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
        Page.PaperSize = A4
        Page.Values = (
          119.400000000000000000
          2100.000000000000000000
          61.000000000000000000
          2970.000000000000000000
          78.700000000000000000
          78.700000000000000000
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
        object QRBand1: TQRBand
          Left = 30
          Top = 23
          Width = 1064
          Height = 33
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = True
          Frame.DrawLeft = False
          Frame.DrawRight = False
          AlignToBottom = False
          Color = clWhite
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            87.312500000000000000
            2815.166666666667000000)
          BandType = rbPageHeader
          object QRDBText2: TQRDBText
            Left = 8
            Top = 5
            Width = 105
            Height = 24
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              63.500000000000000000
              21.166666666666670000
              13.229166666666670000
              277.812500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = DMFrm.Perusahaan
            DataField = 'PERUSAHAAN'
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
        object QRBand2: TQRBand
          Left = 30
          Top = 56
          Width = 1064
          Height = 89
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = True
          Frame.DrawLeft = False
          Frame.DrawRight = False
          AlignToBottom = False
          BeforePrint = QRBand2BeforePrint
          Color = clWhite
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            235.479166666666700000
            2815.166666666667000000)
          BandType = rbTitle
          object QRLabel21: TQRLabel
            Left = 357
            Top = 18
            Width = 349
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666670000
              944.562500000000000000
              47.625000000000000000
              923.395833333333300000)
            Alignment = taCenter
            AlignToBand = True
            AutoSize = True
            AutoStretch = False
            Caption = 'LAPORAN PENGELUARAN GUDANG WARNA'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 12
          end
          object QRLabel50: TQRLabel
            Left = 499
            Top = 38
            Width = 58
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1320.270833333333000000
              100.541666666666700000
              153.458333333333300000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'QRLabel50'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial Narrow'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel51: TQRLabel
            Left = 499
            Top = 62
            Width = 58
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1320.270833333333000000
              164.041666666666700000
              153.458333333333300000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'QRLabel51'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial Narrow'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
        end
        object QRBand3: TQRBand
          Left = 30
          Top = 145
          Width = 1064
          Height = 60
          Frame.Color = clBlack
          Frame.DrawTop = True
          Frame.DrawBottom = True
          Frame.DrawLeft = False
          Frame.DrawRight = False
          AlignToBottom = False
          Color = clWhite
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            158.750000000000000000
            2815.166666666667000000)
          BandType = rbColumnHeader
          object QRLabel30: TQRLabel
            Left = 260
            Top = 40
            Width = 16
            Height = 16
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              42.333333333333330000
              687.916666666666700000
              105.833333333333300000
              42.333333333333330000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Kg'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 9
          end
          object QRLabel31: TQRLabel
            Left = 355
            Top = 40
            Width = 23
            Height = 16
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              42.333333333333330000
              939.270833333333300000
              105.833333333333300000
              60.854166666666670000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Pcs'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 9
          end
          object QRShape3: TQRShape
            Left = 32
            Top = 0
            Width = 1
            Height = 59
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              156.104166666666700000
              84.666666666666680000
              0.000000000000000000
              2.645833333333333000)
            Shape = qrsVertLine
          end
          object QRLabel38: TQRLabel
            Left = 6
            Top = 20
            Width = 18
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              15.875000000000000000
              52.916666666666670000
              47.625000000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'NO'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 9
          end
          object QRShape7: TQRShape
            Left = 218
            Top = 0
            Width = 1
            Height = 59
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              156.104166666666700000
              576.791666666666800000
              0.000000000000000000
              2.645833333333333000)
            Shape = qrsVertLine
          end
          object QRLabel49: TQRLabel
            Left = 89
            Top = 20
            Width = 65
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              235.479166666666700000
              52.916666666666670000
              171.979166666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'NAMA ITEM'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 9
          end
          object QRShape6: TQRShape
            Left = 612
            Top = 0
            Width = 1
            Height = 58
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              153.458333333333300000
              1619.250000000000000000
              0.000000000000000000
              2.645833333333333000)
            Shape = qrsVertLine
          end
          object QRLabel27: TQRLabel
            Left = 557
            Top = 39
            Width = 23
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1473.729166666667000000
              103.187500000000000000
              60.854166666666670000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Pcs'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 9
          end
          object QRLabel28: TQRLabel
            Left = 459
            Top = 39
            Width = 16
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1214.437500000000000000
              103.187500000000000000
              42.333333333333330000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Kg'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 9
          end
          object QRLabel29: TQRLabel
            Left = 488
            Top = 11
            Width = 57
            Height = 16
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              42.333333333333330000
              1291.166666666667000000
              29.104166666666670000
              150.812500000000000000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'KE TENUN'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 9
          end
          object QRLabel32: TQRLabel
            Left = 273
            Top = 11
            Width = 85
            Height = 16
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              42.333333333333330000
              722.312500000000000000
              29.104166666666670000
              224.895833333333300000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'KE PERSIAPAN'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 9
          end
          object QRLabel22: TQRLabel
            Left = 878
            Top = 10
            Width = 116
            Height = 16
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              42.333333333333330000
              2323.041666666667000000
              26.458333333333330000
              306.916666666666700000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'KE JAHIT / FINISHING'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 9
          end
          object QRLabel23: TQRLabel
            Left = 693
            Top = 11
            Width = 55
            Height = 16
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              42.333333333333330000
              1833.562500000000000000
              29.104166666666670000
              145.520833333333300000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'KE MITRA'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 9
          end
          object QRShape5: TQRShape
            Left = 218
            Top = 34
            Width = 844
            Height = 1
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              2.645833333333333000
              576.791666666666800000
              89.958333333333340000
              2233.083333333333000000)
            Shape = qrsRectangle
          end
          object QRLabel25: TQRLabel
            Left = 652
            Top = 40
            Width = 16
            Height = 16
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              42.333333333333330000
              1725.083333333333000000
              105.833333333333300000
              42.333333333333330000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Kg'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 9
          end
          object QRLabel26: TQRLabel
            Left = 757
            Top = 40
            Width = 23
            Height = 16
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              42.333333333333330000
              2002.895833333333000000
              105.833333333333300000
              60.854166666666670000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Pcs'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 9
          end
          object QRLabel33: TQRLabel
            Left = 991
            Top = 39
            Width = 23
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              2622.020833333333000000
              103.187500000000000000
              60.854166666666660000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Pcs'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 9
          end
          object QRLabel34: TQRLabel
            Left = 872
            Top = 39
            Width = 16
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              2307.166666666667000000
              103.187500000000000000
              42.333333333333330000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Kg'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 9
          end
          object QRShape8: TQRShape
            Left = 417
            Top = -1
            Width = 1
            Height = 58
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              153.458333333333300000
              1103.312500000000000000
              -2.645833333333333000
              2.645833333333333000)
            Shape = qrsVertLine
          end
          object QRShape10: TQRShape
            Left = 819
            Top = 0
            Width = 1
            Height = 58
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              153.458333333333300000
              2166.937500000000000000
              0.000000000000000000
              2.645833333333333000)
            Shape = qrsVertLine
          end
          object QRShape11: TQRShape
            Left = 316
            Top = 35
            Width = 1
            Height = 23
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              60.854166666666680000
              836.083333333333400000
              92.604166666666680000
              2.645833333333333000)
            Shape = qrsVertLine
          end
          object QRShape12: TQRShape
            Left = 941
            Top = 35
            Width = 1
            Height = 24
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              63.500000000000000000
              2489.729166666667000000
              92.604166666666680000
              2.645833333333333000)
            Shape = qrsVertLine
          end
          object QRShape24: TQRShape
            Left = 522
            Top = 35
            Width = 1
            Height = 23
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              60.854166666666680000
              1381.125000000000000000
              92.604166666666680000
              2.645833333333333000)
            Shape = qrsVertLine
          end
          object QRShape25: TQRShape
            Left = 711
            Top = 35
            Width = 1
            Height = 23
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              60.854166666666680000
              1881.187500000000000000
              92.604166666666680000
              2.645833333333333000)
            Shape = qrsVertLine
          end
        end
        object QRBand4: TQRBand
          Left = 30
          Top = 205
          Width = 1064
          Height = 17
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
            44.979166666666670000
            2815.166666666667000000)
          BandType = rbDetail
          object QRSysData2: TQRSysData
            Left = 4
            Top = 0
            Width = 29
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = True
            Size.Values = (
              44.979166666666670000
              10.583333333333330000
              0.000000000000000000
              76.729166666666680000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            Color = clWhite
            Data = qrsDetailNo
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial Narrow'
            Font.Style = []
            ParentFont = False
            Transparent = False
            FontSize = 9
          end
          object QRShape9: TQRShape
            Left = 217
            Top = -2
            Width = 3
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              574.145833333333400000
              -5.291666666666667000
              7.937500000000000000)
            Shape = qrsVertLine
          end
          object QRDBText8: TQRDBText
            Left = 37
            Top = 0
            Width = 60
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              97.895833333333330000
              0.000000000000000000
              158.750000000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = QBrowse
            DataField = 'NAMA_ITEM'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 8
          end
          object QRDBText13: TQRDBText
            Left = 482
            Top = 0
            Width = 29
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1275.291666666667000000
              0.000000000000000000
              76.729166666666670000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            BiDiMode = bdLeftToRight
            ParentBiDiMode = False
            Color = clWhite
            DataSet = QBrowse
            DataField = 'QTY3'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Mask = '0.0,0;(0.0,0);-'
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 8
          end
          object QRDBText14: TQRDBText
            Left = 573
            Top = 0
            Width = 29
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1516.062500000000000000
              0.000000000000000000
              76.729166666666670000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            BiDiMode = bdLeftToRight
            ParentBiDiMode = False
            Color = clWhite
            DataSet = QBrowse
            DataField = 'QTY4'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Mask = '#,#;(#,#);-'
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 8
          end
          object QRDBText15: TQRDBText
            Left = 671
            Top = 0
            Width = 29
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1775.354166666667000000
              0.000000000000000000
              76.729166666666670000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            BiDiMode = bdLeftToRight
            ParentBiDiMode = False
            Color = clWhite
            DataSet = QBrowse
            DataField = 'QTY5'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Mask = '0.0,0;(0.0,0);-'
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 8
          end
          object QRDBText16: TQRDBText
            Left = 781
            Top = 0
            Width = 29
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              2066.395833333333000000
              0.000000000000000000
              76.729166666666670000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            BiDiMode = bdLeftToRight
            ParentBiDiMode = False
            Color = clWhite
            DataSet = QBrowse
            DataField = 'QTY6'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Mask = '#,#;(#,#);-'
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 8
          end
          object QRDBText9: TQRDBText
            Left = 277
            Top = 0
            Width = 29
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              732.895833333333300000
              0.000000000000000000
              76.729166666666670000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            BiDiMode = bdLeftToRight
            ParentBiDiMode = False
            Color = clWhite
            DataSet = QBrowse
            DataField = 'QTY1'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Mask = '0.0,0;(0.0,0);-'
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 8
          end
          object QRDBText10: TQRDBText
            Left = 377
            Top = 0
            Width = 29
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              997.479166666666700000
              0.000000000000000000
              76.729166666666670000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            BiDiMode = bdLeftToRight
            ParentBiDiMode = False
            Color = clWhite
            DataSet = QBrowse
            DataField = 'QTY2'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Mask = '#,#;(#,#);-'
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 8
          end
          object QRDBText11: TQRDBText
            Left = 1023
            Top = 0
            Width = 29
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              2706.687500000000000000
              0.000000000000000000
              76.729166666666680000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            BiDiMode = bdLeftToRight
            ParentBiDiMode = False
            Color = clWhite
            DataSet = QBrowse
            DataField = 'QTY8'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Mask = '#,#;(#,#);-'
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 8
          end
          object QRDBText12: TQRDBText
            Left = 902
            Top = 0
            Width = 29
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              2386.541666666667000000
              0.000000000000000000
              76.729166666666670000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            BiDiMode = bdLeftToRight
            ParentBiDiMode = False
            Color = clWhite
            DataSet = QBrowse
            DataField = 'QTY7'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Mask = '0.0,0;(0.0,0);-'
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 8
          end
          object QRShape13: TQRShape
            Left = 315
            Top = -2
            Width = 3
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              833.437500000000000000
              -5.291666666666667000
              7.937500000000000000)
            Shape = qrsVertLine
          end
          object QRShape16: TQRShape
            Left = 416
            Top = -2
            Width = 3
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              1100.666666666667000000
              -5.291666666666667000
              7.937500000000000000)
            Shape = qrsVertLine
          end
          object QRShape17: TQRShape
            Left = 521
            Top = -2
            Width = 3
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              1378.479166666667000000
              -5.291666666666667000
              7.937500000000000000)
            Shape = qrsVertLine
          end
          object QRShape26: TQRShape
            Left = 611
            Top = -2
            Width = 3
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              1616.604166666667000000
              -5.291666666666667000
              7.937500000000000000)
            Shape = qrsVertLine
          end
          object QRShape40: TQRShape
            Left = 710
            Top = -2
            Width = 3
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              1878.541666666667000000
              -5.291666666666667000
              7.937500000000000000)
            Shape = qrsVertLine
          end
          object QRShape41: TQRShape
            Left = 818
            Top = -2
            Width = 3
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              2164.291666666667000000
              -5.291666666666667000
              7.937500000000000000)
            Shape = qrsVertLine
          end
          object QRShape42: TQRShape
            Left = 940
            Top = -2
            Width = 3
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              2487.083333333333000000
              -5.291666666666667000
              7.937500000000000000)
            Shape = qrsVertLine
          end
        end
        object QRBand5: TQRBand
          Left = 30
          Top = 222
          Width = 1064
          Height = 149
          Frame.Color = clBlack
          Frame.DrawTop = True
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          AlignToBottom = False
          Color = clWhite
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            394.229166666666700000
            2815.166666666667000000)
          BandType = rbSummary
          object QRLabel39: TQRLabel
            Left = 148
            Top = 4
            Width = 38
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              391.583333333333300000
              10.583333333333330000
              100.541666666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'TOTAL'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 8
          end
          object QRLabel40: TQRLabel
            Left = 294
            Top = 111
            Width = 137
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              777.875000000000000000
              293.687500000000000000
              362.479166666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'Sub Dept Head Dyeing'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsItalic]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel41: TQRLabel
            Left = 673
            Top = 111
            Width = 78
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1780.645833333333000000
              293.687500000000000000
              206.375000000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'Adm Dyeing'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsItalic]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel42: TQRLabel
            Left = 294
            Top = 95
            Width = 137
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              777.875000000000000000
              251.354166666666700000
              362.479166666666700000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'GURITNO'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel44: TQRLabel
            Left = 329
            Top = 31
            Width = 76
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              870.479166666666800000
              82.020833333333340000
              201.083333333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'Mengetahui,'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel45: TQRLabel
            Left = 673
            Top = 31
            Width = 77
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1780.645833333333000000
              82.020833333333340000
              203.729166666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'Dibuat Oleh,'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRShape18: TQRShape
            Left = 143
            Top = 20
            Width = 922
            Height = 3
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              7.937500000000000000
              378.354166666666700000
              52.916666666666660000
              2439.458333333333000000)
            Shape = qrsHorLine
          end
          object QRShape19: TQRShape
            Left = 316
            Top = 0
            Width = 1
            Height = 22
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              58.208333333333340000
              836.083333333333400000
              0.000000000000000000
              2.645833333333333000)
            Shape = qrsVertLine
          end
          object QRShape20: TQRShape
            Left = 142
            Top = 0
            Width = 3
            Height = 22
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              58.208333333333340000
              375.708333333333400000
              0.000000000000000000
              7.937500000000000000)
            Shape = qrsVertLine
          end
          object QRShape21: TQRShape
            Left = 218
            Top = 0
            Width = 1
            Height = 22
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              58.208333333333340000
              576.791666666666800000
              0.000000000000000000
              2.645833333333333000)
            Shape = qrsVertLine
          end
          object QRShape22: TQRShape
            Left = 417
            Top = 0
            Width = 1
            Height = 22
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              58.208333333333340000
              1103.312500000000000000
              0.000000000000000000
              2.645833333333333000)
            Shape = qrsVertLine
          end
          object QRShape23: TQRShape
            Left = 522
            Top = 0
            Width = 1
            Height = 22
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              58.208333333333340000
              1381.125000000000000000
              0.000000000000000000
              2.645833333333333000)
            Shape = qrsVertLine
          end
          object QRExpr6: TQRExpr
            Left = 229
            Top = 3
            Width = 77
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              605.895833333333400000
              7.937500000000000000
              203.729166666666700000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            BiDiMode = bdLeftToRight
            ParentBiDiMode = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Color = clWhite
            ParentFont = False
            ResetAfterPrint = False
            Transparent = False
            WordWrap = True
            Expression = 'SUM(QBrowse.QTY1)'
            Mask = '0.0,0;(0.0,0);-'
            FontSize = 8
          end
          object QRExpr7: TQRExpr
            Left = 321
            Top = 2
            Width = 85
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              849.312499999999900000
              5.291666666666667000
              224.895833333333300000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            BiDiMode = bdLeftToRight
            ParentBiDiMode = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Color = clWhite
            ParentFont = False
            ResetAfterPrint = False
            Transparent = False
            WordWrap = True
            Expression = 'SUM(QBrowse.QTY2)'
            Mask = '#,#;(#,#);-'
            FontSize = 8
          end
          object QRExpr8: TQRExpr
            Left = 431
            Top = 2
            Width = 79
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1140.354166666667000000
              5.291666666666667000
              209.020833333333300000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            BiDiMode = bdLeftToRight
            ParentBiDiMode = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Color = clWhite
            ParentFont = False
            ResetAfterPrint = False
            Transparent = False
            WordWrap = True
            Expression = 'SUM(QBrowse.QTY3)'
            Mask = '0.0,0;(0.0,0);-'
            FontSize = 8
          end
          object QRExpr10: TQRExpr
            Left = 526
            Top = 2
            Width = 77
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1391.708333333333000000
              5.291666666666667000
              203.729166666666700000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            BiDiMode = bdLeftToRight
            ParentBiDiMode = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Color = clWhite
            ParentFont = False
            ResetAfterPrint = False
            Transparent = False
            WordWrap = True
            Expression = 'SUM(QBrowse.QTY4)'
            Mask = '#,#;(#,#);-'
            FontSize = 8
          end
          object QRDBText17: TQRDBText
            Left = 690
            Top = 93
            Width = 36
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1825.625000000000000000
              246.062500000000000000
              95.250000000000000000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = DMFrm.QDateTime
            DataField = 'USER'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRShape15: TQRShape
            Left = 711
            Top = 0
            Width = 1
            Height = 22
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              58.208333333333340000
              1881.187500000000000000
              0.000000000000000000
              2.645833333333333000)
            Shape = qrsVertLine
          end
          object QRShape30: TQRShape
            Left = 612
            Top = 0
            Width = 1
            Height = 22
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              58.208333333333340000
              1619.250000000000000000
              0.000000000000000000
              2.645833333333333000)
            Shape = qrsVertLine
          end
          object QRShape31: TQRShape
            Left = 819
            Top = 0
            Width = 1
            Height = 22
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              58.208333333333340000
              2166.937500000000000000
              0.000000000000000000
              2.645833333333333000)
            Shape = qrsVertLine
          end
          object QRShape32: TQRShape
            Left = 941
            Top = 0
            Width = 1
            Height = 22
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              58.208333333333340000
              2489.729166666667000000
              0.000000000000000000
              2.645833333333333000)
            Shape = qrsVertLine
          end
          object QRExpr11: TQRExpr
            Left = 616
            Top = 3
            Width = 84
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1629.833333333333000000
              7.937500000000000000
              222.250000000000000000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            BiDiMode = bdLeftToRight
            ParentBiDiMode = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Color = clWhite
            ParentFont = False
            ResetAfterPrint = False
            Transparent = False
            WordWrap = True
            Expression = 'SUM(QBrowse.QTY5)'
            Mask = '0.0,0;(0.0,0);-'
            FontSize = 8
          end
          object QRExpr12: TQRExpr
            Left = 720
            Top = 2
            Width = 90
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1905.000000000000000000
              5.291666666666667000
              238.125000000000000000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            BiDiMode = bdLeftToRight
            ParentBiDiMode = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Color = clWhite
            ParentFont = False
            ResetAfterPrint = False
            Transparent = False
            WordWrap = True
            Expression = 'SUM(QBrowse.QTY6)'
            Mask = '#,#;(#,#);-'
            FontSize = 8
          end
          object QRExpr13: TQRExpr
            Left = 834
            Top = 2
            Width = 99
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              2206.625000000000000000
              5.291666666666667000
              261.937500000000000000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            BiDiMode = bdLeftToRight
            ParentBiDiMode = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Color = clWhite
            ParentFont = False
            ResetAfterPrint = False
            Transparent = False
            WordWrap = True
            Expression = 'SUM(QBrowse.QTY7)'
            Mask = '0.0,0;(0.0,0);-'
            FontSize = 8
          end
          object QRExpr14: TQRExpr
            Left = 952
            Top = 2
            Width = 102
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              2518.833333333333000000
              5.291666666666667000
              269.875000000000000000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            BiDiMode = bdLeftToRight
            ParentBiDiMode = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Color = clWhite
            ParentFont = False
            ResetAfterPrint = False
            Transparent = False
            WordWrap = True
            Expression = 'SUM(QBrowse.QTY8)'
            Mask = '#,#;(#,#);-'
            FontSize = 8
          end
        end
        object QRBand6: TQRBand
          Left = 30
          Top = 371
          Width = 1064
          Height = 20
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          AlignToBottom = True
          Color = clWhite
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            52.916666666666670000
            2815.166666666667000000)
          BandType = rbPageFooter
          object QRDBText18: TQRDBText
            Left = 14
            Top = 3
            Width = 76
            Height = 16
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              42.333333333333330000
              37.041666666666670000
              7.937500000000000000
              201.083333333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = DMFrm.QDateTime
            DataField = 'VUSER_CETAK'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 8
          end
        end
        object QRBand7: TQRBand
          Left = 30
          Top = 391
          Width = 1064
          Height = 149
          Frame.Color = clBlack
          Frame.DrawTop = True
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          AlignToBottom = False
          Color = clWhite
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            394.229166666666700000
            2815.166666666667000000)
          BandType = rbSummary
          object QRLabel35: TQRLabel
            Left = 148
            Top = 4
            Width = 38
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              391.583333333333300000
              10.583333333333330000
              100.541666666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'TOTAL'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 8
          end
          object QRLabel36: TQRLabel
            Left = 300
            Top = 111
            Width = 137
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              793.750000000000000000
              293.687500000000000000
              362.479166666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'Sub Dept Head Dyeing'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsItalic]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel37: TQRLabel
            Left = 679
            Top = 111
            Width = 78
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1796.520833333334000000
              293.687500000000000000
              206.375000000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'Adm Dyeing'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsItalic]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel43: TQRLabel
            Left = 300
            Top = 95
            Width = 137
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              793.750000000000000000
              251.354166666666700000
              362.479166666666700000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'GURITNO'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel46: TQRLabel
            Left = 335
            Top = 31
            Width = 76
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              886.354166666666900000
              82.020833333333340000
              201.083333333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'Mengetahui,'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel47: TQRLabel
            Left = 679
            Top = 31
            Width = 77
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1796.520833333334000000
              82.020833333333340000
              203.729166666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'Dibuat Oleh,'
            Color = clWhite
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRShape27: TQRShape
            Left = 143
            Top = 20
            Width = 922
            Height = 3
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              7.937500000000000000
              378.354166666666700000
              52.916666666666660000
              2439.458333333333000000)
            Shape = qrsHorLine
          end
          object QRShape28: TQRShape
            Left = 316
            Top = 0
            Width = 1
            Height = 22
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              58.208333333333340000
              836.083333333333400000
              0.000000000000000000
              2.645833333333333000)
            Shape = qrsVertLine
          end
          object QRShape29: TQRShape
            Left = 142
            Top = 0
            Width = 3
            Height = 22
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              58.208333333333340000
              375.708333333333400000
              0.000000000000000000
              7.937500000000000000)
            Shape = qrsVertLine
          end
          object QRShape33: TQRShape
            Left = 218
            Top = 0
            Width = 1
            Height = 22
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              58.208333333333340000
              576.791666666666800000
              0.000000000000000000
              2.645833333333333000)
            Shape = qrsVertLine
          end
          object QRShape34: TQRShape
            Left = 417
            Top = 0
            Width = 1
            Height = 22
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              58.208333333333340000
              1103.312500000000000000
              0.000000000000000000
              2.645833333333333000)
            Shape = qrsVertLine
          end
          object QRShape35: TQRShape
            Left = 522
            Top = 0
            Width = 1
            Height = 22
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              58.208333333333340000
              1381.125000000000000000
              0.000000000000000000
              2.645833333333333000)
            Shape = qrsVertLine
          end
          object QRExpr15: TQRExpr
            Left = 229
            Top = 3
            Width = 77
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              605.895833333333400000
              7.937500000000000000
              203.729166666666700000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            BiDiMode = bdLeftToRight
            ParentBiDiMode = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Color = clWhite
            ParentFont = False
            ResetAfterPrint = False
            Transparent = False
            WordWrap = True
            Expression = 'SUM(QBrowse.QTY1)'
            Mask = '0.0,0;(0.0,0);-'
            FontSize = 8
          end
          object QRExpr16: TQRExpr
            Left = 321
            Top = 2
            Width = 85
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              849.312499999999900000
              5.291666666666667000
              224.895833333333300000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            BiDiMode = bdLeftToRight
            ParentBiDiMode = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Color = clWhite
            ParentFont = False
            ResetAfterPrint = False
            Transparent = False
            WordWrap = True
            Expression = 'SUM(QBrowse.QTY2)'
            Mask = '#,#;(#,#);-'
            FontSize = 8
          end
          object QRExpr17: TQRExpr
            Left = 431
            Top = 2
            Width = 79
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1140.354166666667000000
              5.291666666666667000
              209.020833333333300000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            BiDiMode = bdLeftToRight
            ParentBiDiMode = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Color = clWhite
            ParentFont = False
            ResetAfterPrint = False
            Transparent = False
            WordWrap = True
            Expression = 'SUM(QBrowse.QTY3)'
            Mask = '0.0,0;(0.0,0);-'
            FontSize = 8
          end
          object QRExpr18: TQRExpr
            Left = 526
            Top = 2
            Width = 77
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1391.708333333333000000
              5.291666666666667000
              203.729166666666700000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            BiDiMode = bdLeftToRight
            ParentBiDiMode = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Color = clWhite
            ParentFont = False
            ResetAfterPrint = False
            Transparent = False
            WordWrap = True
            Expression = 'SUM(QBrowse.QTY4)'
            Mask = '#,#;(#,#);-'
            FontSize = 8
          end
          object QRDBText19: TQRDBText
            Left = 696
            Top = 93
            Width = 36
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1841.500000000000000000
              246.062500000000000000
              95.250000000000000000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataSet = DMFrm.QDateTime
            DataField = 'USER'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRShape36: TQRShape
            Left = 711
            Top = 0
            Width = 1
            Height = 22
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              58.208333333333340000
              1881.187500000000000000
              0.000000000000000000
              2.645833333333333000)
            Shape = qrsVertLine
          end
          object QRShape37: TQRShape
            Left = 612
            Top = 0
            Width = 1
            Height = 22
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              58.208333333333340000
              1619.250000000000000000
              0.000000000000000000
              2.645833333333333000)
            Shape = qrsVertLine
          end
          object QRShape38: TQRShape
            Left = 819
            Top = 0
            Width = 1
            Height = 22
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              58.208333333333340000
              2166.937500000000000000
              0.000000000000000000
              2.645833333333333000)
            Shape = qrsVertLine
          end
          object QRShape39: TQRShape
            Left = 941
            Top = 0
            Width = 1
            Height = 22
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              58.208333333333340000
              2489.729166666667000000
              0.000000000000000000
              2.645833333333333000)
            Shape = qrsVertLine
          end
          object QRExpr19: TQRExpr
            Left = 616
            Top = 3
            Width = 84
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1629.833333333333000000
              7.937500000000000000
              222.250000000000000000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            BiDiMode = bdLeftToRight
            ParentBiDiMode = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Color = clWhite
            ParentFont = False
            ResetAfterPrint = False
            Transparent = False
            WordWrap = True
            Expression = 'SUM(QBrowse.QTY5)'
            Mask = '0.0,0;(0.0,0);-'
            FontSize = 8
          end
          object QRExpr20: TQRExpr
            Left = 720
            Top = 2
            Width = 90
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1905.000000000000000000
              5.291666666666667000
              238.125000000000000000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            BiDiMode = bdLeftToRight
            ParentBiDiMode = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Color = clWhite
            ParentFont = False
            ResetAfterPrint = False
            Transparent = False
            WordWrap = True
            Expression = 'SUM(QBrowse.QTY6)'
            Mask = '#,#;(#,#);-'
            FontSize = 8
          end
          object QRExpr21: TQRExpr
            Left = 834
            Top = 2
            Width = 99
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              2206.625000000000000000
              5.291666666666667000
              261.937500000000000000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            BiDiMode = bdLeftToRight
            ParentBiDiMode = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Color = clWhite
            ParentFont = False
            ResetAfterPrint = False
            Transparent = False
            WordWrap = True
            Expression = 'SUM(QBrowse.QTY7)'
            Mask = '0.0,0;(0.0,0);-'
            FontSize = 8
          end
          object QRExpr22: TQRExpr
            Left = 952
            Top = 2
            Width = 102
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              2518.833333333333000000
              5.291666666666667000
              269.875000000000000000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            BiDiMode = bdLeftToRight
            ParentBiDiMode = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Color = clWhite
            ParentFont = False
            ResetAfterPrint = False
            Transparent = False
            WordWrap = True
            Expression = 'SUM(QBrowse.QTY8)'
            Mask = '#,#;(#,#);-'
            FontSize = 8
          end
        end
      end
      object QuickRep1: TQuickRep
        Left = 78
        Top = 78
        Width = 794
        Height = 1123
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
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
        Page.PaperSize = A4
        Page.Values = (
          127.000000000000000000
          2970.000000000000000000
          80.000000000000000000
          2100.000000000000000000
          100.000000000000000000
          80.000000000000000000
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
          Left = 38
          Top = 169
          Width = 726
          Height = 20
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
            52.916666666666670000
            1920.875000000000000000)
          BandType = rbDetail
          object QRDBText3: TQRDBText
            Left = 139
            Top = 1
            Width = 58
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              367.770833333333400000
              2.645833333333333000
              153.458333333333300000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = QBrowse
            DataField = 'QTY2'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Times New Roman'
            Font.Style = []
            Mask = '#,#;(#,#);-'
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRExpr9: TQRExpr
            Left = 19
            Top = 1
            Width = 113
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              50.270833333333330000
              2.645833333333333000
              298.979166666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Times New Roman'
            Font.Style = []
            Color = clWhite
            Master = QuickRep1
            ParentFont = False
            ResetAfterPrint = False
            Transparent = False
            WordWrap = True
            Expression = 'QBrowse.NAMA_ITEM'
            FontSize = 10
          end
          object QRDBText4: TQRDBText
            Left = 240
            Top = 1
            Width = 66
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              635.000000000000000000
              2.645833333333333000
              174.625000000000000000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = QBrowse
            DataField = 'QTY1'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Times New Roman'
            Font.Style = []
            Mask = '0.0,0;(0.0,0);-'
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRExpr3: TQRExpr
            Left = 395
            Top = 1
            Width = 122
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1045.104166666667000000
              2.645833333333333000
              322.791666666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Times New Roman'
            Font.Style = []
            Color = clWhite
            Master = QuickRep1
            ParentFont = False
            ResetAfterPrint = False
            Transparent = False
            WordWrap = True
            Expression = 'QBrowse.NAMA_ITEM'
            FontSize = 10
          end
          object QRDBText5: TQRDBText
            Left = 629
            Top = 1
            Width = 60
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1664.229166666667000000
              2.645833333333333000
              158.750000000000000000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = QBrowse
            DataField = 'QTY7'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Times New Roman'
            Font.Style = []
            Mask = '0.0,0;(0.0,0);-'
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel10: TQRLabel
            Left = 203
            Top = 1
            Width = 20
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              537.104166666666700000
              2.645833333333333000
              52.916666666666670000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Pcs'
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
          object QRLabel11: TQRLabel
            Left = 318
            Top = 1
            Width = 17
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              841.375000000000000000
              2.645833333333333000
              44.979166666666670000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Kg'
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
          object QRLabel12: TQRLabel
            Left = 698
            Top = 1
            Width = 17
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1846.791666666667000000
              2.645833333333333000
              44.979166666666670000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Kg'
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
          object QRLabel15: TQRLabel
            Left = 592
            Top = 1
            Width = 20
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1566.333333333333000000
              2.645833333333333000
              52.916666666666670000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Pcs'
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
          object QRDBText7: TQRDBText
            Left = 523
            Top = 1
            Width = 60
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1383.770833333333000000
              2.645833333333333000
              158.750000000000000000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = QBrowse
            DataField = 'QTY8'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Times New Roman'
            Font.Style = []
            Mask = '#,#;(#,#);-'
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
        end
        object SummaryBand1: TQRBand
          Left = 38
          Top = 189
          Width = 726
          Height = 228
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
            603.250000000000000000
            1920.875000000000000000)
          BandType = rbSummary
          object QRLabel2: TQRLabel
            Left = 20
            Top = 9
            Width = 42
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              52.916666666666670000
              23.812500000000000000
              111.125000000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Jumlah'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRExpr1: TQRExpr
            Left = 141
            Top = 9
            Width = 57
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              373.062500000000000000
              23.812500000000000000
              150.812500000000000000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold, fsItalic]
            Color = clWhite
            Master = QuickRep1
            ParentFont = False
            ResetAfterPrint = False
            Transparent = False
            WordWrap = True
            Expression = 'SUM(QBrowse.QTY2)'
            Mask = '#,#;(#,#);-'
            FontSize = 10
          end
          object QRExpr2: TQRExpr
            Left = 242
            Top = 9
            Width = 64
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              640.291666666666800000
              23.812500000000000000
              169.333333333333300000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold, fsItalic]
            Color = clWhite
            Master = QuickRep1
            ParentFont = False
            ResetAfterPrint = False
            Transparent = False
            WordWrap = True
            Expression = 'SUM(QBrowse.QTY1)'
            Mask = '0.0,0;(0.0,0);-'
            FontSize = 10
          end
          object QRShape1: TQRShape
            Left = 141
            Top = 6
            Width = 82
            Height = 1
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              2.645833333333333000
              373.062500000000000000
              15.875000000000000000
              216.958333333333400000)
            Shape = qrsRectangle
          end
          object QRShape2: TQRShape
            Left = 240
            Top = 6
            Width = 98
            Height = 1
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              2.645833333333333000
              635.000000000000000000
              15.875000000000000000
              259.291666666666700000)
            Shape = qrsRectangle
          end
          object QRLabel1: TQRLabel
            Left = 396
            Top = 9
            Width = 42
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1047.750000000000000000
              23.812500000000000000
              111.125000000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Jumlah'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRExpr4: TQRExpr
            Left = 623
            Top = 9
            Width = 67
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1648.354166666667000000
              23.812500000000000000
              177.270833333333300000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold, fsItalic]
            Color = clWhite
            Master = QuickRep1
            ParentFont = False
            ResetAfterPrint = False
            Transparent = False
            WordWrap = True
            Expression = 'SUM(QBrowse.QTY7)'
            Mask = '0.0,0;(0.0,0);-'
            FontSize = 10
          end
          object QRShape4: TQRShape
            Left = 623
            Top = 6
            Width = 94
            Height = 1
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              2.645833333333333000
              1648.354166666667000000
              15.875000000000000000
              248.708333333333300000)
            Shape = qrsRectangle
          end
          object QRLabel3: TQRLabel
            Left = 204
            Top = 9
            Width = 20
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              539.750000000000000000
              23.812500000000000000
              52.916666666666670000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Pcs'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel5: TQRLabel
            Left = 320
            Top = 9
            Width = 17
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              846.666666666666700000
              23.812500000000000000
              44.979166666666670000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Kg'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel6: TQRLabel
            Left = 701
            Top = 9
            Width = 17
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1854.729166666667000000
              23.812500000000000000
              44.979166666666670000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Kg'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel16: TQRLabel
            Left = 593
            Top = 9
            Width = 20
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1568.979166666667000000
              23.812500000000000000
              52.916666666666670000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Pcs'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRExpr5: TQRExpr
            Left = 518
            Top = 9
            Width = 67
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1370.541666666667000000
              23.812500000000000000
              177.270833333333300000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold, fsItalic]
            Color = clWhite
            Master = QuickRep1
            ParentFont = False
            ResetAfterPrint = False
            Transparent = False
            WordWrap = True
            Expression = 'SUM(QBrowse.QTY8)'
            Mask = '#,#;(#,#);-'
            FontSize = 10
          end
          object QRShape14: TQRShape
            Left = 518
            Top = 6
            Width = 94
            Height = 1
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              2.645833333333333000
              1370.541666666667000000
              15.875000000000000000
              248.708333333333300000)
            Shape = qrsRectangle
          end
          object QRDBText1: TQRDBText
            Left = 464
            Top = 168
            Width = 33
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1227.666666666667000000
              444.500000000000000000
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
            Left = 444
            Top = 97
            Width = 69
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1174.750000000000000000
              256.645833333333300000
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
            Left = 185
            Top = 97
            Width = 66
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              489.479166666666700000
              256.645833333333300000
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
            Left = 189
            Top = 172
            Width = 58
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              500.062500000000100000
              455.083333333333300000
              153.458333333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'GURITNO'
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
            Left = 154
            Top = 188
            Width = 124
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              407.458333333333400000
              497.416666666666700000
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
            Left = 447
            Top = 188
            Width = 69
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1182.687500000000000000
              497.416666666666700000
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
        end
        object TitleBand1: TQRBand
          Left = 38
          Top = 30
          Width = 726
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
            367.770833333333300000
            1920.875000000000000000)
          BandType = rbTitle
          object QRLabel7: TQRLabel
            Left = 256
            Top = 8
            Width = 268
            Height = 23
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              60.854166666666670000
              677.333333333333300000
              21.166666666666670000
              709.083333333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'L A P O R A N  P R O D U K S I'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 14
          end
          object QRLabel8: TQRLabel
            Left = 11
            Top = 117
            Width = 81
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              29.104166666666670000
              309.562500000000000000
              214.312500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'I. SOFTCONE'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel9: TQRLabel
            Left = 374
            Top = 117
            Width = 60
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              989.541666666666700000
              309.562500000000000000
              158.750000000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'II. CELUP'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel13: TQRLabel
            Left = 363
            Top = 45
            Width = 58
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              960.437500000000000000
              119.062500000000000000
              153.458333333333300000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'QRLabel13'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial Narrow'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
          object QRLabel14: TQRLabel
            Left = 363
            Top = 66
            Width = 58
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              960.437500000000000000
              174.625000000000000000
              153.458333333333300000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'QRLabel14'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial Narrow'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            FontSize = 10
          end
        end
        object PageFooterBand1: TQRBand
          Left = 38
          Top = 417
          Width = 726
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
            1920.875000000000000000)
          BandType = rbPageFooter
          object QRDBText6: TQRDBText
            Left = 8
            Top = 3
            Width = 75
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              21.166666666666670000
              7.937500000000000000
              198.437500000000000000)
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
            Font.Name = 'Times New Roman'
            Font.Style = [fsItalic]
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
        Width = 1092
        Height = 369
        ActivePage = TabSheet1
        Align = alClient
        TabOrder = 1
        object TabSheet1: TTabSheet
          Caption = 'Laporan Pengeluaran'
          object wwDBGrid1: TwwDBGrid
            Left = 0
            Top = 0
            Width = 1084
            Height = 341
            ControlType.Strings = (
              'ISFIXED;CheckBox;1;0')
            Selected.Strings = (
              'NAMA_ITEM'#9'25'#9'NAMA ITEM'#9'F'
              'QTY1'#9'15'#9'Kg'#9'F'#9'KE PERSIAPAN'
              'QTY2'#9'10'#9'Pcs'#9'F'#9'KE PERSIAPAN'
              'QTY3'#9'15'#9'Kg'#9'F'#9'KE TENUN'
              'QTY4'#9'10'#9'Pcs'#9'F'#9'KE TENUN'
              'QTY5'#9'15'#9'Kg'#9'F'#9'KE MITRA'
              'QTY6'#9'10'#9'Pcs'#9'F'#9'KE MITRA'
              'QTY7'#9'15'#9'Kg'#9'F'#9'KE JAHIT / FINISHING'
              'QTY8'#9'10'#9'Pcs'#9'F'#9'KE JAHIT / FINISHING'
              'tot_kg'#9'10'#9'KG'#9'F'#9'TOTAL'
              'tot_pcs'#9'10'#9'PCS'#9'F'#9'TOTAL')
            IniAttributes.Enabled = True
            IniAttributes.Delimiter = ';;'
            IniAttributes.CheckNewFields = True
            ExportOptions.ExportType = wwgetHTML
            ExportOptions.Options = [esoShowHeader, esoShowFooter, esoShowTitle, esoDblQuoteFields, esoBestColFit, esoShowRecordNo, esoShowAlternating]
            TitleColor = clBackground
            FixedCols = 0
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
      Top = 515
      Width = 1092
      Height = 41
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 3
      object wwDBNavigator1: TwwDBNavigator
        Left = 0
        Top = 0
        Width = 145
        Height = 41
        AutosizeStyle = asSizeNavButtons
        DataSource = dsQBrowse
        RepeatInterval.InitialDelay = 500
        RepeatInterval.Interval = 100
        Align = alLeft
        object wwDBNavigator1PriorPage: TwwNavButton
          Left = 0
          Top = 0
          Width = 37
          Height = 41
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
          Height = 41
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
          Height = 41
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
          Height = 41
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
        Top = 9
        Width = 75
        Height = 25
        Caption = '&Export'
        TabOrder = 1
        OnClick = BtnExportClick
        NumGlyphs = 2
      end
      object BtnPrintBrowse: TBitBtn
        Left = 543
        Top = 9
        Width = 77
        Height = 25
        Caption = '&Print'
        TabOrder = 2
        Visible = False
        OnClick = BtnPrintBrowseClick
        NumGlyphs = 2
      end
      object BtnDesign2: TBitBtn
        Left = 230
        Top = 10
        Width = 75
        Height = 25
        Caption = 'Design'
        TabOrder = 3
        OnClick = BtnDesign2Click
        NumGlyphs = 2
      end
      object BtnClose1: TBitBtn
        Left = 466
        Top = 9
        Width = 75
        Height = 25
        Caption = '&Close'
        TabOrder = 4
        OnClick = BtnClose1Click
        NumGlyphs = 2
      end
      object BitBtnPrint2: TBitBtn
        Left = 385
        Top = 9
        Width = 77
        Height = 25
        Caption = '&Print'
        TabOrder = 5
        OnClick = BitBtnPrint2Click
        NumGlyphs = 2
      end
    end
  end
  object QBrowse: TOracleDataSet
    SQL.Strings = (
      'select * from ipisma_db3.lap_keluargw '
      
        'where qty1 <> 0 or qty2 <> 0 or qty3 <> 0 or qty4 <> 0 or qty5 <' +
        '> 0 or qty6 <> 0 or qty7 <> 0 or qty8 <> 0'
      'ORDER BY NAMA_ITEM')
    QBEDefinition.QBEFieldDefs = {
      040000000A000000090000004E414D415F4954454D0100000000000400000051
      5459310100000000000400000051545932010000000000040000005154593301
      0000000000040000005154593401000000000004000000515459350100000000
      0004000000515459360100000000000400000051545937010000000000040000
      0051545938010000000000090000004E4F5F42454E414E47010000000000}
    Cursor = crSQLWait
    ReadOnly = True
    QueryAllRecords = False
    Session = DMFrm.OS
    AfterScroll = QBrowseAfterScroll
    OnCalcFields = QBrowseCalcFields
    Left = 924
    Top = 176
    object QBrowseNAMA_ITEM: TStringField
      FieldName = 'NAMA_ITEM'
      Size = 50
    end
    object QBrowseQTY1: TFloatField
      FieldName = 'QTY1'
      DisplayFormat = '#,0.0000;(#,0.0000);-'
    end
    object QBrowseQTY2: TFloatField
      FieldName = 'QTY2'
      DisplayFormat = '#,0;(#,0);-'
    end
    object QBrowseQTY3: TFloatField
      FieldName = 'QTY3'
      DisplayFormat = '#,0.0000;(#,0.0000);-'
    end
    object QBrowseQTY4: TFloatField
      FieldName = 'QTY4'
      DisplayFormat = '#,0;(#,0);-'
    end
    object QBrowseQTY5: TFloatField
      FieldName = 'QTY5'
      DisplayFormat = '#,0.0000;(#,0.0000);-'
    end
    object QBrowseQTY6: TFloatField
      FieldName = 'QTY6'
      DisplayFormat = '#,0;(#,0);-'
    end
    object QBrowseQTY7: TFloatField
      FieldName = 'QTY7'
      DisplayFormat = '#,0.0000;(#,0.0000);-'
    end
    object QBrowseQTY8: TFloatField
      FieldName = 'QTY8'
      DisplayFormat = '#,0;(#,0);-'
    end
    object QBrowsesc_bale: TFloatField
      FieldKind = fkCalculated
      FieldName = 'sc_bale'
      DisplayFormat = '#,0.0000;(#,0.0000);-'
      Calculated = True
    end
    object QBrowsesc_bale_mtr: TFloatField
      FieldKind = fkCalculated
      FieldName = 'sc_bale_mtr'
      DisplayFormat = '#,0.00;(#,0.00);-'
      Calculated = True
    end
    object QBrowseNO_BENANG: TFloatField
      FieldName = 'NO_BENANG'
    end
    object QBrowsesc_prod_bale_mtr: TFloatField
      FieldKind = fkCalculated
      FieldName = 'sc_prod_bale_mtr'
      DisplayFormat = '#,0.000;(#,0.000);-'
      Calculated = True
    end
    object QBrowsesc_prosen: TFloatField
      FieldKind = fkCalculated
      FieldName = 'sc_prosen'
      Calculated = True
    end
    object QBrowsetot_kg: TFloatField
      FieldKind = fkCalculated
      FieldName = 'tot_kg'
      DisplayFormat = '#,0.0000;(#,0.0000);-'
      Calculated = True
    end
    object QBrowsetot_pcs: TFloatField
      FieldKind = fkCalculated
      FieldName = 'tot_pcs'
      DisplayFormat = '#,0;(#,0);-'
      Calculated = True
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
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Fax'
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
    Version = '10.07'
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
    object ppParameterList1: TppParameterList
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
    Left = 304
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
    Left = 344
    Top = 16
  end
  object dsQTransaksi: TwwDataSource
    DataSet = QTransaksi
    Left = 384
    Top = 8
  end
  object QSOP: TOracleDataSet
    SQL.Strings = (
      'select sinopsis from vsop'
      'where kd_transaksi='#39'108'#39)
    QBEDefinition.QBEFieldDefs = {04000000010000000800000053494E4F50534953010000000000}
    Cursor = crSQLWait
    Session = DMFrm.OS
    Left = 248
    Top = 16
  end
  object dsQSOP: TwwDataSource
    DataSet = QSOP
    Left = 436
    Top = 16
  end
  object QDump: TOracleQuery
    SQL.Strings = (
      'begin'
      '  ipisma_db3.proc_lap_keluargw(:vsysdate, :vsysdate2);'
      'end;'
      '')
    Session = DMFrm.OS
    Variables.Data = {
      0300000002000000090000003A56535953444154450C00000007000000787106
      01010101000000000A0000003A5653595344415445320C000000070000007871
      061E01010100000000}
    Left = 504
    Top = 16
  end
  object QTotal: TOracleDataSet
    SQL.Strings = (
      'select'
      'sum(qty1) as qty1,'
      'sum(qty2) as qty2,'
      'sum(qty3) as qty3,'
      'sum(qty4) as qty4,'
      'sum(qty5) as qty5,'
      'sum(qty6) as qty6,'
      'sum(qty7) as qty7,'
      'sum(qty8) as qty8'
      'from ipisma_db3.lap_keluargw ')
    QBEDefinition.QBEFieldDefs = {
      0400000008000000040000005154593101000000000004000000515459320100
      0000000004000000515459330100000000000400000051545934010000000000
      0400000051545935010000000000040000005154593601000000000004000000
      515459370100000000000400000051545938010000000000}
    Cursor = crSQLWait
    Session = DMFrm.OS
    Left = 877
    Top = 153
    object QTotalQTY1: TFloatField
      FieldName = 'QTY1'
    end
    object QTotalQTY2: TFloatField
      FieldName = 'QTY2'
    end
    object QTotalQTY3: TFloatField
      FieldName = 'QTY3'
    end
    object QTotalQTY4: TFloatField
      FieldName = 'QTY4'
    end
    object QTotalQTY5: TFloatField
      FieldName = 'QTY5'
    end
    object QTotalQTY6: TFloatField
      FieldName = 'QTY6'
    end
    object QTotalQTY7: TFloatField
      FieldName = 'QTY7'
    end
    object QTotalQTY8: TFloatField
      FieldName = 'QTY8'
    end
    object QTotaltot_kg: TFloatField
      FieldKind = fkCalculated
      FieldName = 'tot_kg'
      Calculated = True
    end
    object QTotaltot_pcs: TFloatField
      FieldKind = fkCalculated
      FieldName = 'tot_pcs'
      Calculated = True
    end
  end
end
