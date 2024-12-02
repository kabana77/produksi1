object HasilJahitFrm: THasilJahitFrm
  Left = 107
  Top = 123
  Width = 848
  Height = 591
  Caption = 'Hasil Jahit'
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
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 13
  object PanelLeft: TPanel
    Left = 0
    Top = 0
    Width = 113
    Height = 540
    Align = alLeft
    BevelOuter = bvNone
    Color = 4605440
    TabOrder = 0
  end
  object PanelRight: TPanel
    Left = 921
    Top = 0
    Width = 0
    Height = 540
    Align = alClient
    BevelOuter = bvNone
    Color = 4605440
    TabOrder = 1
  end
  object PageControl1: TPageControl
    Left = 113
    Top = 0
    Width = 808
    Height = 540
    ActivePage = TabSheet1
    Align = alLeft
    TabOrder = 2
    object TabSheet1: TTabSheet
      Caption = 'Input'
      OnShow = TabSheet1Show
      object PanelCenter: TPanel
        Left = 0
        Top = 0
        Width = 703
        Height = 512
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 0
        object QuickRep1: TQuickRep
          Left = -48
          Top = 80
          Width = 794
          Height = 529
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          DataSet = QDetail
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
          Page.PaperSize = Custom
          Page.Values = (
            127.000000000000000000
            1399.540000000000000000
            127.000000000000000000
            2100.580000000000000000
            200.660000000000000000
            127.000000000000000000
            0.000000000000000000)
          PrinterSettings.Copies = 1
          PrinterSettings.Duplex = False
          PrinterSettings.FirstPage = 0
          PrinterSettings.LastPage = 0
          PrinterSettings.OutputBin = Auto
          PrintIfEmpty = True
          SnapToGrid = True
          Units = Inches
          Zoom = 100
          object PageHeaderBand1: TQRBand
            Left = 76
            Top = 48
            Width = 670
            Height = 57
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
              150.812500000000000000
              1772.708333333334000000)
            BandType = rbPageHeader
            object QRDBText2: TQRDBText
              Left = 536
              Top = 32
              Width = 77
              Height = 24
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                63.500000000000000000
                1418.166666666667000000
                84.666666666666680000
                203.729166666666700000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Color = clWhite
              DataSet = QMaster
              DataField = 'NO_NOTA'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -19
              Font.Name = 'Arial Narrow'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = False
              WordWrap = True
              FontSize = 14
            end
            object QRLabel2: TQRLabel
              Left = 536
              Top = 16
              Width = 52
              Height = 17
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                1418.166666666667000000
                42.333333333333340000
                137.583333333333300000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'No. Nota'
      