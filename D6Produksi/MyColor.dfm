object MyColorFrm: TMyColorFrm
  Left = 592
  Top = 204
  BorderStyle = bsDialog
  Caption = 'Reset Grid'
  ClientHeight = 38
  ClientWidth = 342
  Color = clSilver
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 8
    Top = 16
    Width = 321
    Height = 129
    Caption = 'Tabel'
    TabOrder = 1
    object Bevel1: TBevel
      Left = 16
      Top = 24
      Width = 97
      Height = 32
    end
    object Bevel2: TBevel
      Left = 16
      Top = 56
      Width = 97
      Height = 65
    end
    object Label1: TLabel
      Left = 19
      Top = 30
      Width = 93
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = 'Warna Dasar'
    end
    object Bevel3: TBevel
      Left = 112
      Top = 56
      Width = 97
      Height = 65
    end
    object Bevel4: TBevel
      Left = 112
      Top = 24
      Width = 97
      Height = 32
    end
    object Label2: TLabel
      Left = 115
      Top = 30
      Width = 93
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = 'Warna Huruf'
    end
    object Bevel5: TBevel
      Left = 208
      Top = 24
      Width = 97
      Height = 32
    end
    object Label3: TLabel
      Left = 210
      Top = 30
      Width = 93
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = 'View'
    end
    object Bevel6: TBevel
      Left = 208
      Top = 56
      Width = 97
      Height = 65
    end
    object Button1: TButton
      Left = 32
      Top = 64
      Width = 65
      Height = 25
      Caption = 'Edited'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 128
      Top = 64
      Width = 65
      Height = 25
      Caption = 'Edited'
      TabOrder = 1
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 32
      Top = 90
      Width = 65
      Height = 25
      Caption = 'Read Only'
      TabOrder = 2
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 128
      Top = 90
      Width = 65
      Height = 25
      Caption = 'Read Only'
      TabOrder = 3
      OnClick = Button4Click
    end
    object Edit1: TEdit
      Left = 216
      Top = 67
      Width = 81
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 4
      Text = 'Tes Hasil'
    end
    object Edit2: TEdit
      Left = 216
      Top = 94
      Width = 81
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 5
      Text = 'Tes Hasil'
    end
  end
  object CheckBox2: TCheckBox
    Left = 17
    Top = 150
    Width = 288
    Height = 31
    Caption = 'Anda adalah User Remote'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    Visible = False
  end
  object RadioGroup1: TRadioGroup
    Left = 16
    Top = 184
    Width = 305
    Height = 137
    Caption = 'Download Master'
    TabOrder = 3
    Visible = False
  end
  object BitBtn3: TBitBtn
    Left = 32
    Top = 200
    Width = 273
    Height = 41
    Caption = 'DownLoad ITEM'#13#10'BLIGO --> KLEGO'
    TabOrder = 4
    Visible = False
    OnClick = BitBtn3Click
  end
  object Animate1: TAnimate
    Left = 32
    Top = 248
    Width = 272
    Height = 60
    CommonAVI = aviCopyFiles
    StopFrame = 31
    Visible = False
  end
  object Panel1: TPanel
    Left = 0
    Top = -3
    Width = 342
    Height = 41
    Align = alBottom
    Color = clGray
    TabOrder = 0
    object BitBtn1: TBitBtn
      Left = 104
      Top = 8
      Width = 75
      Height = 25
      TabOrder = 0
      Visible = False
      OnClick = BitBtn1Click
      Kind = bkCancel
    end
    object Button7: TButton
      Left = 8
      Top = 8
      Width = 89
      Height = 25
      Caption = 'Reset'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      Visible = False
    end
    object BitBtn2: TBitBtn
      Left = 24
      Top = 8
      Width = 297
      Height = 29
      Caption = '&Reset Grid'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = BitBtn2Click
      Kind = bkOK
    end
  end
  object ColorDialog1: TColorDialog
    Left = 232
    Top = 32
  end
  object FontDialog1: TFontDialog
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Left = 264
    Top = 32
  end
  object MyRegister1: TMyRegister
    Key = 'produksi'
    Limit = 1
    Left = 160
    Top = 32
  end
  object GRItem: TOracleQuery
    SQL.Strings = (
      'begin'
      '  commit;'
      '  dbms_refresh.refresh('#39'SYSTEM.GRPURCH'#39');'
      '  commit;'
      'end;')
    Session = OracleSession1
    Left = 200
    Top = 248
  end
  object OracleSession1: TOracleSession
    Left = 128
    Top = 264
  end
  object OracleLogon1: TOracleLogon
    Session = OracleSession1
    Options = [ldDatabase, ldDatabaseList, ldLogonHistory]
    Caption = 'Login ke Server LOKAL'
    Left = 264
    Top = 264
  end
end
