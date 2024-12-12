object DMFrm: TDMFrm
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Left = 270
  Top = 192
  Height = 574
  Width = 777
  object SaveDialog1: TSaveDialog
    DefaultExt = 'Html'
    Filter = 'HTML File|*.HTML|Excel File|*.XLS'
    Left = 648
    Top = 56
  end
  object LMDStarter1: TLMDStarter
    Left = 648
    Top = 8
  end
  object OS: TOracleSession
    AfterLogOn = OSAfterLogOn
    LogonUsername = 'IPISMA_DB3'
    LogonPassword = 'IPISMA_DB3'
    LogonDatabase = 'PFPROD'
    Left = 24
    Top = 8
  end
  object OL: TOracleLogon
    Session = OS
    Options = []
    Caption = 'Server PRIMA'
    Picture.Data = {
      0A544A504547496D6167657E090000FFD8FFE000104A46494600010102007600
      760000FFDB004300030202020202030202020303030304060404040404080606
      050609080A0A090809090A0C0F0C0A0B0E0B09090D110D0E0F101011100A0C12
      131210130F101010FFDB00430103030304030408040408100B090B1010101010
      1010101010101010101010101010101010101010101010101010101010101010
      10101010101010101010101010FFC00011080025004103011100021101031101
      FFC4001D000002010501010000000000000000000007080601020304050900FF
      C400341000020104010303020305090000000000010203040506110700122108
      133114223241511516526171232433568195A1D1D3FFC4001A01000203010100
      0000000000000000000002050004060301FFC400311100010303020406000407
      0000000000000100021103042131410512516113142271819106A1B1D1232432
      92C1E1F0FFDA000C03010002110311003F00F41390F3FA892E6309C46A2296E9
      24CB4EF2C75007D24E406512828C3443278241FBBE3C83D26E217CE1505A503E
      B3BCC7293A6C41938556B5624F874CE7F4E9B29C5BAE3FB36C7452E4B594D493
      18D23769A7550CFAFE227C93ADFCF4D69179637C410E8CEF9DD596C9039B55B3
      477CB2DC666A7B7DE28AAA551B68E1A847603F98077D745EAA5564161A199E9A
      B6F7414F2C60178E5A94465046C6C13B1D451594B92E395EFED50E416DA87D13
      DB155C6E7406C9D03F9004FF00A751458C65B8A92CA326B5129F887D6C7E3FAF
      9EA28B3D35EADB748267B1DCA8ABE48D7604150B20DFE5BED3E37AEA288698CE
      7D72C6723971ACF2AA289A7955D2AE4A91ED8F758086250135DFF7203B6D927E
      4EC748AD6FEAD1AFE5AEE24E666609C86E1BA01B954D959D4DDC957F5EBB688B
      5D3D57127F8EFA70C3AF7EA3EF1963E5D9BB5149794CA6A6C33C5ECD1495ECC5
      97DD70C1D911954AAB4606804D91F2AA85C52B9B9735AD7022664469F9C1D463
      2B3F4F86D37DEBAA87BA279A0E93FB7C2347AAFA3A4ACF4D9C942AE9619C438C
      DC268FDD8C37648B031571BF8604020FC83D343A2D13750BCF2B263F499A7A3F
      E33B1712E1B72B972E53E47553C370B1DAE54AAA3A615353B69AB5115553CC3A
      EE93C681F010E8765D74719D114FD7BDB6A6DB967A6E7CD61A4ACBCFBBED5FAA
      22A5127D5CA8F4025DAAA9322963269747F110079D751DB2166851FF0016C4F8
      479F725BFDCF0DC268F1D9B06AFA8B24775A6B2FECEACA8FABB6490D4A3C6E88
      FD816AFEDEF5FC49B034764B050190803EBF38CF01E3DB9F0363F8762168B5D1
      ADD6A29245A7A38D1AA2357A203DD6037213B2496D925893E49E85C8D84994EE
      631C4382E179B5D339C46C34566AABD5041435D4F414D1C10CFECBBB472B2A00
      3DC024652DF980A0FC0E8A173924425E7D4BFA69C3F2FE48A4C92B331CCECF49
      92D5D28BBDB6D2825A5AB96050639877B8F6E5D468368AE46BBB5B3E565FD7A7
      6AE6BEA35C67A09FF727B2CFF12E1B4EB56150BDC012243778FF00BA14C87EFB
      47FE5FBEFF00B7D4FF00E7D5CF32CE8EFED77EC9D730EFF452859CE69CC56CF5
      D98E623253CF436282E62BA3AD7D470575A1A957DC0EC4056F698CE00F9EEEDF
      9601BA5EEB7A742F0DD5476BA731D3A80760718EBEEB39735EEC7146D3688682
      0CEDCB19CE9D63BF74D17A84B0E439970A661876216592EB74C8ACF536CA58D2
      78624569A3650EEF23280A37B3AD9FD074DCE8B52D3065443D17F1EE73C49C11
      67E35E41C79ED975B34F56CCC2AA09E19926A9925528D1BB11A0FA2180F3F1BE
      A0C05EBC826421D7ACEE13E5BE60E48E2FBEF1F616D5F4383D7C95B5D34B71A5
      A713069699C2441E40C48103024803647CF5E112BD6100194D2DA2D16EA7ACAD
      C820B5BD1575E442F5AB215EF668D3B13BBB495D85D0D827C01E7C744812BBEB
      7785796B99F2AE37A9E3AC2CDC2970EAF9EBAB679AE34B4EB2F7B5332A461E40
      C4EA17D9200DEB5BE848946C204CA6C692792A69A39E6A49A95DD76D0CA50BA1
      FD094665DFF4247448123BCDD9C73041EB5EC38E61704B73B6DDE96DD4940B01
      12C3471AD47F7BAA6D0211D07BE096FCBB360800749EEADE9DE5C35EC77A9A75
      69C8EA3B675EDEEB2D775EEDBC4C31825A79408DB39D343AEBB2783E8A2FE37F
      F8FF00AE9CCAD4A8B7246114F98DB2369EA27536FEFA98638A30E5E60BA42410
      4903CED4793BF0474BB88590BC682E27D3260684C6019D571AD485519DBF34B9
      1F5A159807375AF8DB3D86D95D63BE2474E6AEDB346F35A2BCCA6331CA8AE408
      FF00C3055FB6453DE4EF413AE763735DD4C79A10E3DA2274189D34399DD227F1
      BF2D76CB7AB043B18225A6632274EBB8D7D9A8A8CB718A3A69EB2BB20B7D2414
      D30A7965A8A94891252010A59881B2186BF5DF57D95A9BE795C0C1839DFA7BAD
      01AAC682E24405D28E78665478664759143A15604329F823F51FCFAE92263746
      32255E5943052C016F81BF27A92018517263CBB169A2A99E9B22B6D4251CAB05
      4182A524F6A56202A3F693DAC491E0FEBD054AD4E934BEA3800359DA70B9F8B4
      C82438404B372AFACC16EE73A3E11C245BE8E1A16637EBEDCAA22862471177A4
      10191D537DC630CCC7E3BC00080C6ADDD7A8D616D1FEADB7CFCE2123B8E34D6D
      F792610235248E93033F67E07546FE33C41E89E6CCEB1E586E37B52F5B07B412
      3EFEFDA94F1DC14027E49DEF6340EBAAFC36D5CDFE6EA4B5EF1EA6E2019D606F
      F2537A14C8FE21C13A8441E9B2B2BEEA2883F947A48F4F398E70BC8D7DE35B7C
      B7D130A89258E49628A7941D879614611C877E49653DC7E77D01A6D26484BAA7
      09B3AB5BC7730736BF3EDA21CFA86E1DB55838A6EB8F639550D3415F1482786A
      29DA6A5FB9D111921122846446ED53DDA1A0483E76947086D2A8C21E71CC4F72
      743F00C771AAAD7F66D6DB1630F5D44EBBC6345B9E9B78B2BF8638E709A74CEA
      E97C9EF129476A91DB0D3C5237B8B14519662A8155948EE3B66EFF00B48D7547
      8AB5D697D6B5E93A0BCF867DA79B3D70088EF2208CB5FC3F6C2DF873A8B8F308
      E6F6DB036DBEB4CA9AF306095BCB54D95611FBE174B018AD2E692B281B4D0B4B
      180010082C9F6BF72F702E1F5B503C9343EEF8EBD951D8A4D968DBD623EC41CE
      FCD180336AFA88ADC35D49A639E4123B7F8D31DBBA0AFA49E19A68F8FEA709BC
      DE56A68A39A70A6929DE94CD2828C92CFF00DABFBACACC75F035A077E777AAF0
      B6DC562E738C39A411DC1107E2498889598E13641B40D371C7611DC7D231AFA3
      4F4E126574D9BD7718DB2A6EF4CB1F96697E95DD0001DA9BBCC44E80DED4EFF3
      D9E9AD3A0D6343758007BC2BE783D93AA0AAE602E11ED8EA3446B555550AAA00
      034001E00EBB266ABD4517FFD9}
    Left = 16
    Top = 56
  end
  object QTime: TOracleDataSet
    SQL.Strings = (
      '')
    QBEDefinition.QBEFieldDefs = {
      0400000004000000050000005655534552010000000000030000004A414D0100
      000000000B00000056555345525F434554414B010000000000060000004B445F
      444956010000000000}
    Cursor = crSQLWait
    Session = OS
    BeforeOpen = QTimeBeforeOpen
    Left = 144
    Top = 216
    object QTimeVUSER: TStringField
      FieldName = 'VUSER'
      Size = 30
    end
    object QTimeJAM: TDateTimeField
      FieldName = 'JAM'
    end
    object QTimeVUSER_CETAK: TStringField
      FieldName = 'VUSER_CETAK'
      Size = 49
    end
    object QTimeKD_DIV: TStringField
      FieldName = 'KD_DIV'
      Size = 5
    end
  end
  object Perusahaan: TOracleDataSet
    SQL.Strings = (
      'select'
      #39'PT. GAJAH DUDUK'#39' as perusahaan,'
      #39'Jl. Sapugarut BUARAN-PEKALONGAN'#39' as alamat1,'
      #39#39' as alamat2,'
      #39#39' as alamat3,'
      #39'Telp. +62285-421145, Fax. -'#39' as telepon1,'
      #39#39' as telepon2,'
      #39#39' as telepon3,'
      #39'http://www.gajahduduk.com'#39' as website,'
      #39#39' as email,'
      #39'66.645.690.0-607.000'#39' as npwp'
      'from dual')
    QBEDefinition.QBEFieldDefs = {
      040000000A0000000A0000005045525553414841414E01000000000007000000
      414C414D41543101000000000007000000414C414D4154320100000000000700
      0000414C414D4154330100000000000800000054454C45504F4E310100000000
      000800000054454C45504F4E320100000000000800000054454C45504F4E3301
      0000000000070000005745425349544501000000000005000000454D41494C01
      0000000000040000004E505750010000000000}
    Cursor = crSQLWait
    Session = OS
    Left = 72
    Top = 16
    object PerusahaanPERUSAHAAN: TStringField
      FieldName = 'PERUSAHAAN'
      Size = 29
    end
    object PerusahaanALAMAT1: TStringField
      FieldName = 'ALAMAT1'
      Size = 36
    end
    object PerusahaanALAMAT2: TStringField
      FieldName = 'ALAMAT2'
      Size = 29
    end
    object PerusahaanALAMAT3: TStringField
      FieldName = 'ALAMAT3'
      Size = 32
    end
    object PerusahaanTELEPON1: TStringField
      FieldName = 'TELEPON1'
      Size = 47
    end
    object PerusahaanTELEPON2: TStringField
      FieldName = 'TELEPON2'
      Size = 47
    end
    object PerusahaanTELEPON3: TStringField
      FieldName = 'TELEPON3'
      Size = 47
    end
    object PerusahaanWEBSITE: TStringField
      FieldName = 'WEBSITE'
      Size = 23
    end
    object PerusahaanEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 22
    end
    object PerusahaanNPWP: TStringField
      FieldName = 'NPWP'
      Size = 16
    end
  end
  object dsPerusahaan: TwwDataSource
    DataSet = Perusahaan
    Left = 136
    Top = 456
  end
  object QSuplier: TOracleDataSet
    SQL.Strings = (
      'select * from ipisma_db3.vsuplier')
    QBEDefinition.QBEFieldDefs = {
      040000000A0000000A0000004B445F52454B414E414E0100000000000C000000
      4E414D415F52454B414E414E01000000000006000000414C414D415401000000
      0000040000004B4F54410100000000000700000054454C45504F4E0100000000
      00060000004E4547415241010000000000040000004E5057500100000000000C
      00000042415441535F4B524544495401000000000007000000414C414D415432
      0100000000000A00000054474C5F494E53455254010000000000}
    Cursor = crSQLWait
    Session = OS
    BeforeOpen = QSuplierBeforeOpen
    Left = 216
    Top = 80
    object QSuplierKD_REKANAN: TFloatField
      DisplayLabel = 'KODE'
      DisplayWidth = 6
      FieldName = 'KD_REKANAN'
      Required = True
    end
    object QSuplierNAMA_REKANAN: TStringField
      DisplayLabel = 'NAMA REKANAN'
      DisplayWidth = 35
      FieldName = 'NAMA_REKANAN'
      Size = 50
    end
    object QSuplierALAMAT: TStringField
      DisplayWidth = 25
      FieldName = 'ALAMAT'
      Size = 255
    end
    object QSuplierKOTA: TStringField
      DisplayWidth = 25
      FieldName = 'KOTA'
      Size = 50
    end
    object QSuplierTELEPON: TStringField
      DisplayWidth = 20
      FieldName = 'TELEPON'
      Visible = False
      Size = 50
    end
    object QSuplierBATAS_KREDIT: TFloatField
      FieldName = 'BATAS_KREDIT'
      Visible = False
    end
  end
  object QMenuUser: TOracleDataSet
    Cursor = crSQLWait
    Session = OS
    Left = 144
    Top = 16
  end
  object FontDialog1: TFontDialog
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Left = 648
    Top = 112
  end
  object QDivisi: TOracleDataSet
    SQL.Strings = (
      'select * from ipisma_db3.vdivisi')
    QBEDefinition.QBEFieldDefs = {
      0400000005000000060000004B445F444956010000000000030000004C564C01
      00000000000C0000004C4E414D415F4449564953490100000000000B0000004E
      414D415F444956495349010000000000090000004B445F504152454E54010000
      000000}
    Cursor = crSQLWait
    ReadOnly = True
    QueryAllRecords = False
    Session = OS
    BeforeOpen = QDivisiBeforeOpen
    Left = 72
    Top = 136
    object QDivisiKD_DIV: TStringField
      DisplayLabel = 'KODE'
      DisplayWidth = 5
      FieldName = 'KD_DIV'
      Required = True
      Size = 5
    end
    object QDivisiLNAMA_DIVISI: TStringField
      DisplayLabel = 'DIVISI'
      DisplayWidth = 40
      FieldName = 'LNAMA_DIVISI'
      Size = 80
    end
    object QDivisiNAMA_DIVISI: TStringField
      DisplayLabel = 'NAMA DIVISI'
      DisplayWidth = 30
      FieldName = 'NAMA_DIVISI'
      Visible = False
      Size = 50
    end
    object QDivisiLVL: TFloatField
      FieldName = 'LVL'
      Visible = False
    end
  end
  object FNoUrut: TOracleDataSet
    SQL.Strings = (
      'select ipisma_db3.Fno_urut(:0,:1,:2) as fno_urut from dual')
    Variables.Data = {
      0300000003000000020000003A300500000003000000504F0000000000020000
      003A3105000000080000004B445F544950450000000000020000003A320C0000
      00070000007868010101010100000000}
    QBEDefinition.QBEFieldDefs = {040000000100000008000000464E4F5F55525554010000000000}
    Cursor = crSQLWait
    Session = OS
    Left = 16
    Top = 104
    object FNoUrutFNO_URUT: TStringField
      FieldName = 'FNO_URUT'
      Size = 4000
    end
  end
  object QMU: TOracleDataSet
    SQL.Strings = (
      'select * from ipisma_db3.mu')
    QBEDefinition.QBEFieldDefs = {
      0400000002000000040000004B555253010000000000020000004D5501000000
      0000}
    Cursor = crSQLWait
    Session = OS
    BeforeOpen = QMUBeforeOpen
    Left = 72
    Top = 80
    object QMUMU: TStringField
      DisplayWidth = 3
      FieldName = 'MU'
      Required = True
      Size = 3
    end
    object QMUKURS: TFloatField
      DisplayWidth = 10
      FieldName = 'KURS'
      DisplayFormat = '#,##0.00;(#,##0.00)'
    end
  end
  object QItemAll: TOracleDataSet
    SQL.Strings = (
      'select * from ipisma_db3.vitemall')
    QBEDefinition.QBEFieldDefs = {
      040000000C000000070000004B445F4954454D010000000000090000004E414D
      415F4954454D0100000000000600000053415455414E01000000000008000000
      4D494E5F53544F4B010000000000090000004B445F53415455414E0100000000
      000B0000004B445F4A4E535F4954454D010000000000090000004C4541445F54
      494D450100000000000700000049534649584544010000000000050000005241
      53494F010000000000070000004E4F5F504152540100000000000A0000004B44
      5F5355425F4B454C01000000000006000000524153494F32010000000000}
    Cursor = crSQLWait
    ReadOnly = True
    Session = OS
    BeforeOpen = QItemAllBeforeOpen
    Left = 352
    Top = 80
    object QItemAllNAMA_ITEM: TStringField
      DisplayLabel = 'NAMA ITEM'
      DisplayWidth = 35
      FieldName = 'NAMA_ITEM'
      Required = True
      Size = 50
    end
    object QItemAllKD_ITEM: TStringField
      DisplayLabel = 'KODE'
      DisplayWidth = 10
      FieldName = 'KD_ITEM'
      Required = True
      Size = 50
    end
    object QItemAllSATUAN: TStringField
      DisplayWidth = 12
      FieldName = 'SATUAN'
      Size = 12
    end
    object QItemAllMIN_STOK: TFloatField
      FieldName = 'MIN_STOK'
      Required = True
    end
    object QItemAllKD_SATUAN: TStringField
      FieldName = 'KD_SATUAN'
      Required = True
      Visible = False
      Size = 2
    end
    object QItemAllRASIO: TFloatField
      FieldName = 'RASIO'
      Visible = False
    end
    object QItemAllRASIO2: TFloatField
      FieldName = 'RASIO2'
    end
  end
  object QSatuan: TOracleDataSet
    SQL.Strings = (
      'select a.*, a.rowid from ipisma_db3.satuan a order by satuan')
    QBEDefinition.QBEFieldDefs = {
      04000000020000000600000053415455414E010000000000090000004B445F53
      415455414E010000000000}
    Cursor = crSQLWait
    Session = OS
    BeforeOpen = QSatuanBeforeOpen
    Left = 288
    Top = 120
    object QSatuanSATUAN: TStringField
      DisplayWidth = 12
      FieldName = 'SATUAN'
      Size = 12
    end
    object QSatuanKD_SATUAN: TStringField
      DisplayLabel = 'KODE'
      DisplayWidth = 4
      FieldName = 'KD_SATUAN'
      Required = True
      Size = 2
    end
  end
  object MyKonversi1: TMyKonversi
    HasilKonversi = 'Nol Rupiah'
    Bahasa = Indonesia
    Satuan = 'Rupiah'
    Left = 24
    Top = 208
  end
  object QUser: TOracleDataSet
    SQL.Strings = (
      
        'select a.*, b.nama_divisi from ipisma_db3.vuser a, ipisma_db3.di' +
        'visi b'
      'where a.kd_div=b.kd_div and a.vuser=:vuser')
    Variables.Data = {0300000001000000060000003A5655534552050000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      0400000006000000040000005449504501000000000005000000565553455201
      0000000000060000004B445F4449560100000000000B0000004E414D415F4449
      56495349010000000000070000004953414B5449460100000000000700000049
      555044415445010000000000}
    Cursor = crSQLWait
    Session = OS
    Left = 144
    Top = 112
    object QUserTIPE: TStringField
      FieldName = 'TIPE'
      Size = 16
    end
    object QUserVUSER: TStringField
      FieldName = 'VUSER'
      Required = True
      Size = 30
    end
    object QUserKD_DIV: TStringField
      FieldName = 'KD_DIV'
      Size = 5
    end
    object QUserNAMA_DIVISI: TStringField
      FieldName = 'NAMA_DIVISI'
      Size = 50
    end
    object QUserISAKTIF: TStringField
      FieldName = 'ISAKTIF'
      Size = 1
    end
    object QUserIUPDATE: TStringField
      FieldName = 'IUPDATE'
      Required = True
      Size = 1
    end
  end
  object QMyInfo: TOracleDataSet
    SQL.Strings = (
      'select a.*, a.rowid from ipisma_db3.myinfo a')
    QBEDefinition.QBEFieldDefs = {
      0400000006000000060000004D59494E464F0100000000000A00000054474C5F
      494E534552540100000000000A0000004F50525F494E53455254010000000000
      0C00000054474C5F41504C494B4153490100000000000A00000054474C5F4241
      4E4E45520100000000000A00000054474C5F46494E495348010000000000}
    Cursor = crSQLWait
    Session = OS
    BeforePost = QMyInfoBeforePost
    Left = 144
    Top = 264
    object QMyInfoMYINFO: TStringField
      FieldName = 'MYINFO'
      Size = 255
    end
    object QMyInfoTGL_INSERT: TDateTimeField
      FieldName = 'TGL_INSERT'
    end
    object QMyInfoOPR_INSERT: TStringField
      FieldName = 'OPR_INSERT'
      Size = 30
    end
    object QMyInfoTGL_APLIKASI: TDateTimeField
      FieldName = 'TGL_APLIKASI'
    end
    object QMyInfoTGL_BANNER: TDateTimeField
      FieldName = 'TGL_BANNER'
    end
    object QMyInfoTGL_FINISH: TDateTimeField
      FieldName = 'TGL_FINISH'
    end
  end
  object dsQMyInfo: TwwDataSource
    DataSet = QMyInfo
    Left = 216
    Top = 336
  end
  object MyKonversi2: TMyKonversi
    HasilKonversi = 'Null Dollar'
    Bahasa = Inggris
    Satuan = 'Dollar'
    Left = 24
    Top = 256
  end
  object QUnPost: TOracleQuery
    SQL.Strings = (
      'begin'
      '  ipisma_db3.unpost(:no_nota);'
      'end;')
    Session = OS
    Variables.Data = {
      0300000001000000080000003A4E4F5F4E4F5441050000000000000000000000}
    Left = 80
    Top = 192
  end
  object QJnsItem: TOracleDataSet
    SQL.Strings = (
      'select * from ipisma_db3.jns_item'
      'order by kd_jns_item')
    QBEDefinition.QBEFieldDefs = {
      0400000006000000070000004A4E535F4252470100000000000B0000004B445F
      4A4E535F4954454D0100000000000400000052454B3101000000000004000000
      52454B320100000000000400000052454B330100000000000400000052454B34
      010000000000}
    Cursor = crSQLWait
    Session = OS
    Left = 352
    Top = 24
    object QJnsItemJNS_BRG: TStringField
      FieldName = 'JNS_BRG'
      Size = 50
    end
    object QJnsItemKD_JNS_ITEM: TStringField
      FieldName = 'KD_JNS_ITEM'
      Required = True
      Size = 6
    end
    object QJnsItemREK1: TStringField
      FieldName = 'REK1'
      Size = 22
    end
    object QJnsItemREK2: TStringField
      FieldName = 'REK2'
      Size = 22
    end
    object QJnsItemREK3: TStringField
      FieldName = 'REK3'
      Size = 22
    end
    object QJnsItemREK4: TStringField
      FieldName = 'REK4'
      Size = 22
    end
  end
  object dsQJnsItem: TwwDataSource
    DataSet = QJnsItem
    Left = 128
    Top = 408
  end
  object RekGL: TOracleDataSet
    SQL.Strings = (
      
        'select a.kd_rek_gl, lpad('#39' '#39',2*(lvl-1))||nama_rekening as nama_r' +
        'ekening, lvl, isdetail, a.nama_rekening as lnama_rekening from i' +
        'penta.Rek_gl a'
      'order by kd_rek_gl')
    QBEDefinition.QBEFieldDefs = {
      0400000005000000090000004B445F52454B5F474C0100000000000D0000004E
      414D415F52454B454E494E47010000000000030000004C564C01000000000008
      000000495344455441494C0100000000000E0000004C4E414D415F52454B454E
      494E47010000000000}
    Cursor = crSQLWait
    Session = OS
    Left = 24
    Top = 312
    object RekGLKD_REK_GL: TStringField
      FieldName = 'KD_REK_GL'
      Required = True
      Size = 15
    end
    object RekGLNAMA_REKENING: TStringField
      FieldName = 'NAMA_REKENING'
      Size = 4000
    end
    object RekGLLVL: TFloatField
      FieldName = 'LVL'
    end
    object RekGLISDETAIL: TStringField
      FieldName = 'ISDETAIL'
      Size = 1
    end
    object RekGLLNAMA_REKENING: TStringField
      FieldName = 'LNAMA_REKENING'
      Visible = False
      Size = 50
    end
  end
  object dsQUser: TwwDataSource
    DataSet = QUser
    Left = 224
    Top = 448
  end
  object QStatistikTransaksi: TOracleDataSet
    SQL.Strings = (
      
        'select * from ipisma_db3.vstatistik_transaksi order by kd_transa' +
        'ksi')
    QBEDefinition.QBEFieldDefs = {
      04000000050000000E0000004E414D415F5452414E53414B5349010000000000
      0C0000004B445F5452414E53414B53490100000000000A0000004157414C5F42
      554C414E0100000000000A00000053445F4B454D4152494E0100000000000800
      0000484152495F494E49010000000000}
    Cursor = crSQLWait
    Session = OS
    OnCalcFields = QStatistikTransaksiCalcFields
    Left = 24
    Top = 408
    object QStatistikTransaksiNAMA_TRANSAKSI: TStringField
      DisplayWidth = 50
      FieldName = 'NAMA_TRANSAKSI'
      Size = 50
    end
    object QStatistikTransaksiKD_TRANSAKSI: TStringField
      DisplayWidth = 3
      FieldName = 'KD_TRANSAKSI'
      Required = True
      Size = 3
    end
    object QStatistikTransaksiAWAL_BULAN: TFloatField
      DisplayWidth = 10
      FieldName = 'AWAL_BULAN'
      DisplayFormat = '#,#'
    end
    object QStatistikTransaksiSD_KEMARIN: TFloatField
      DisplayWidth = 10
      FieldName = 'SD_KEMARIN'
      DisplayFormat = '#,#'
    end
    object QStatistikTransaksiHARI_INI: TFloatField
      DisplayWidth = 10
      FieldName = 'HARI_INI'
      DisplayFormat = '#,#'
    end
    object QStatistikTransaksiTOTAL: TIntegerField
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'TOTAL'
      DisplayFormat = '#,#'
      Calculated = True
    end
  end
  object DSQStatistikTransaksi: TwwDataSource
    DataSet = QStatistikTransaksi
    Left = 32
    Top = 464
  end
  object QTutupBuku: TOracleDataSet
    SQL.Strings = (
      'select a.*, a.rowid from ipisma_db3.tutup_buku a')
    QBEDefinition.QBEFieldDefs = {
      0400000004000000090000005452414E53414B53490100000000000400000042
      554B550100000000000A0000004F50525F5550444154450100000000000A0000
      0054474C5F555044415445010000000000}
    Cursor = crSQLWait
    RefreshOptions = [roAfterUpdate]
    Session = OS
    BeforePost = QTutupBukuBeforePost
    Left = 24
    Top = 360
    object QTutupBukuTRANSAKSI: TDateTimeField
      FieldName = 'TRANSAKSI'
      DisplayFormat = 'dd mmm yyyy hh:mm'
    end
    object QTutupBukuBUKU: TDateTimeField
      FieldName = 'BUKU'
      DisplayFormat = 'dd mmm yyyy hh:mm'
    end
    object QTutupBukuOPR_UPDATE: TStringField
      FieldName = 'OPR_UPDATE'
      Size = 30
    end
    object QTutupBukuTGL_UPDATE: TDateTimeField
      FieldName = 'TGL_UPDATE'
      DisplayFormat = 'dd mmm yyyy hh:mm'
    end
  end
  object dsQTutupBuku: TwwDataSource
    DataSet = QTutupBuku
    Left = 96
    Top = 344
  end
  object QBenang: TOracleDataSet
    SQL.Strings = (
      'select * from ipisma_db3.sub_kelompok'
      'where kd_kel='#39'10'#39)
    QBEDefinition.QBEFieldDefs = {
      0400000003000000110000004E414D415F5355425F4B454C4F4D504F4B010000
      000000060000004B445F4B454C0100000000000A0000004B445F5355425F4B45
      4C010000000000}
    Cursor = crSQLWait
    Session = OS
    Left = 288
    Top = 176
    object QBenangKD_SUB_KEL: TStringField
      DisplayLabel = 'KODE'
      DisplayWidth = 6
      FieldName = 'KD_SUB_KEL'
      Required = True
      Size = 12
    end
    object QBenangNAMA_SUB_KELOMPOK: TStringField
      DisplayLabel = 'BENANG'
      DisplayWidth = 30
      FieldName = 'NAMA_SUB_KELOMPOK'
      Required = True
      Size = 50
    end
    object QBenangKD_KEL: TStringField
      DisplayWidth = 6
      FieldName = 'KD_KEL'
      Required = True
      Visible = False
      Size = 6
    end
  end
  object QWarna: TOracleDataSet
    SQL.Strings = (
      'select a.*, a.rowid from :myparam'
      'where a.isfixed = '#39'1'#39
      'order by warna')
    Variables.Data = {
      0300000001000000080000003A4D59504152414D010000001800000069706973
      6D615F6462332E7761726E615F4241525520610000000000}
    QBEDefinition.QBEFieldDefs = {
      0400000003000000050000005741524E41010000000000080000004B445F5741
      524E41010000000000090000004A4E535F5741524E41010000000000}
    Cursor = crSQLWait
    Session = OS
    Left = 352
    Top = 184
    object QWarnaWARNA: TStringField
      DisplayWidth = 30
      FieldName = 'WARNA'
      Size = 50
    end
    object QWarnaKD_WARNA: TStringField
      DisplayLabel = 'KODE'
      DisplayWidth = 6
      FieldName = 'KD_WARNA'
      Required = True
      Size = 6
    end
  end
  object dsQWarna: TwwDataSource
    DataSet = QWarna
    Left = 200
    Top = 400
  end
  object QMesin: TOracleDataSet
    SQL.Strings = (
      'select * from ipisma_db3.sub_lokasi'
      'where jns_lokasi='#39'MESIN'#39)
    QBEDefinition.QBEFieldDefs = {
      0400000009000000090000004B445F4C4F4B4153490100000000000D0000004B
      445F5355425F4C4F4B4153490100000000000A0000004A4E535F4C4F4B415349
      0100000000000B000000535045534946494B4153490100000000000300000045
      4646010000000000030000004B50530100000000000600000053415455414E01
      0000000000030000004A4D4C010000000000090000004B445F42454E414E4701
      0000000000}
    Cursor = crSQLWait
    Session = OS
    Left = 352
    Top = 136
    object QMesinKD_LOKASI: TStringField
      FieldName = 'KD_LOKASI'
      Size = 6
    end
    object QMesinKD_SUB_LOKASI: TStringField
      FieldName = 'KD_SUB_LOKASI'
      Required = True
      Size = 12
    end
    object QMesinJNS_LOKASI: TStringField
      FieldName = 'JNS_LOKASI'
      Required = True
      Size = 10
    end
    object QMesinSPESIFIKASI: TStringField
      FieldName = 'SPESIFIKASI'
      Size = 50
    end
    object QMesinEFF: TFloatField
      FieldName = 'EFF'
    end
    object QMesinKPS: TFloatField
      FieldName = 'KPS'
    end
    object QMesinSATUAN: TStringField
      FieldName = 'SATUAN'
      Size = 30
    end
    object QMesinJML: TFloatField
      FieldName = 'JML'
    end
    object QMesinKD_BENANG: TStringField
      FieldName = 'KD_BENANG'
      Size = 12
    end
  end
  object QT: TOracleDataSet
    SQL.Strings = (
      'select * from ipisma_db2.vitem')
    QBEDefinition.QBEFieldDefs = {
      040000000E000000070000004B445F4954454D010000000000090000004E414D
      415F4954454D0100000000000A0000004E414D415F4954454D32010000000000
      0F0000004E414D415F4B4F4E535452554B53490100000000000A0000004E414D
      415F434F52414B0100000000000C0000004E414D415F4B454D4153414E010000
      0000000600000053415455414E01000000000005000000524153494F01000000
      00000A00000054474C5F494E534552540100000000000A0000004B445F4B454D
      4153414E010000000000090000004B445F53415455414E010000000000090000
      004852475F504F4B4F4B010000000000080000004852475F4A55414C01000000
      00000700000049534649584544010000000000}
    Cursor = crSQLWait
    Session = OS
    Left = 472
    Top = 24
    object QTNAMA_KONSTRUKSI: TStringField
      DisplayLabel = 'KONSTRUKSI'
      DisplayWidth = 20
      FieldName = 'NAMA_KONSTRUKSI'
      Required = True
      Size = 50
    end
    object QTNAMA_CORAK: TStringField
      DisplayLabel = 'CORAK'
      DisplayWidth = 20
      FieldName = 'NAMA_CORAK'
      Required = True
      Size = 50
    end
    object QTNAMA_KEMASAN: TStringField
      DisplayLabel = 'KEMASAN'
      DisplayWidth = 20
      FieldName = 'NAMA_KEMASAN'
      Required = True
      Size = 50
    end
    object QTSATUAN: TStringField
      DisplayWidth = 10
      FieldName = 'SATUAN'
      Size = 12
    end
    object QTKD_ITEM: TStringField
      FieldName = 'KD_ITEM'
      Required = True
      Size = 50
    end
  end
  object QLookRAB: TOracleDataSet
    SQL.Strings = (
      'select a.* from ipisma_db3.rab a')
    QBEDefinition.QBEFieldDefs = {
      04000000110000000600000049445F5241420100000000000900000049445F50
      524F59454B010000000000080000004E414D415F524142010000000000050000
      0056455253490100000000000A00000054474C5F494E53455254010000000000
      0A0000004F50525F494E5345525401000000000005000000544F54414C010000
      000000060000004953504F53540100000000000300000054474C010000000000
      0A00000054474C5F555044415445010000000000030000005154590100000000
      000A0000004B4F4E535452554B534901000000000005000000434F52414B0100
      000000000100000050010000000000010000004C010000000000050000004E4C
      555349010000000000060000004E50414B414E010000000000}
    Cursor = crSQLWait
    QueryAllRecords = False
    Session = OS
    Left = 416
    Top = 72
    object QLookRABID_RAB: TFloatField
      DisplayLabel = 'ID RAB'
      DisplayWidth = 10
      FieldName = 'ID_RAB'
      Required = True
    end
    object QLookRABNAMA_RAB: TStringField
      DisplayLabel = 'NAMA RAB'
      DisplayWidth = 40
      FieldName = 'NAMA_RAB'
      Required = True
      Size = 255
    end
    object QLookRABQTY: TFloatField
      DisplayLabel = 'KODI'
      DisplayWidth = 5
      FieldName = 'QTY'
    end
    object QLookRABVERSI: TStringField
      DisplayWidth = 6
      FieldName = 'VERSI'
      Required = True
      Size = 10
    end
    object QLookRABTGL: TDateTimeField
      DisplayWidth = 12
      FieldName = 'TGL'
      Required = True
    end
    object QLookRABTGL_UPDATE: TDateTimeField
      DisplayLabel = 'UPDATE'
      DisplayWidth = 12
      FieldName = 'TGL_UPDATE'
      Visible = False
    end
    object QLookRABID_PROYEK: TStringField
      DisplayWidth = 50
      FieldName = 'ID_PROYEK'
      Required = True
      Visible = False
      Size = 50
    end
    object QLookRABTGL_INSERT: TDateTimeField
      DisplayWidth = 18
      FieldName = 'TGL_INSERT'
      Required = True
      Visible = False
    end
    object QLookRABOPR_INSERT: TStringField
      DisplayWidth = 30
      FieldName = 'OPR_INSERT'
      Required = True
      Visible = False
      Size = 30
    end
    object QLookRABTOTAL: TFloatField
      DisplayWidth = 10
      FieldName = 'TOTAL'
      Required = True
      Visible = False
    end
    object QLookRABISPOST: TStringField
      DisplayWidth = 1
      FieldName = 'ISPOST'
      Required = True
      Visible = False
      Size = 1
    end
    object QLookRABKONSTRUKSI: TStringField
      FieldName = 'KONSTRUKSI'
      Visible = False
      Size = 30
    end
    object QLookRABCORAK: TStringField
      FieldName = 'CORAK'
      Visible = False
      Size = 30
    end
    object QLookRABP: TFloatField
      FieldName = 'P'
    end
    object QLookRABL: TFloatField
      FieldName = 'L'
    end
    object QLookRABNLUSI: TFloatField
      FieldName = 'NLUSI'
    end
    object QLookRABNPAKAN: TFloatField
      FieldName = 'NPAKAN'
    end
  end
  object QKonstruksi: TOracleDataSet
    SQL.Strings = (
      'select * from ipisma_db2.konstruksi'
      'order by nama_konstruksi')
    QBEDefinition.QBEFieldDefs = {
      04000000020000000D0000004B445F4B4F4E535452554B53490100000000000F
      0000004E414D415F4B4F4E535452554B5349010000000000}
    Cursor = crSQLWait
    Session = OS
    Left = 288
    Top = 16
    object QKonstruksiNAMA_KONSTRUKSI: TStringField
      DisplayLabel = 'NAMA KONSTRUKSI'
      DisplayWidth = 30
      FieldName = 'NAMA_KONSTRUKSI'
      Required = True
      Size = 50
    end
    object QKonstruksiKD_KONSTRUKSI: TStringField
      DisplayLabel = 'KODE'
      DisplayWidth = 6
      FieldName = 'KD_KONSTRUKSI'
      Required = True
      Size = 6
    end
  end
  object QCorak: TOracleDataSet
    SQL.Strings = (
      'select * from ipisma_db2.corak'
      'order by nama_corak')
    QBEDefinition.QBEFieldDefs = {
      0400000002000000080000004B445F434F52414B0100000000000A0000004E41
      4D415F434F52414B010000000000}
    Cursor = crSQLWait
    Session = OS
    Left = 288
    Top = 64
    object QCorakNAMA_CORAK: TStringField
      DisplayLabel = 'NAMA CORAK'
      DisplayWidth = 30
      FieldName = 'NAMA_CORAK'
      Required = True
      Size = 50
    end
    object QCorakKD_CORAK: TStringField
      DisplayLabel = 'KODE'
      DisplayWidth = 6
      FieldName = 'KD_CORAK'
      Required = True
      Size = 6
    end
  end
  object QLokasiProses: TOracleDataSet
    SQL.Strings = (
      'select a.*, a.rowid from ipisma_db3.lokasi_proses a'
      'where kd_lokasi=:kd_lokasi'
      'order by a.lokasi, a.proses')
    Variables.Data = {
      03000000010000000A0000003A4B445F4C4F4B41534905000000000000000000
      0000}
    QBEDefinition.QBEFieldDefs = {
      04000000030000000600000050524F534553010000000000060000004C4F4B41
      5349010000000000090000004B445F4C4F4B415349010000000000}
    Cursor = crSQLWait
    BeforeQuery = QLokasiProsesBeforeQuery
    Session = OS
    OnNewRecord = QLokasiProsesNewRecord
    Left = 480
    Top = 136
    object QLokasiProsesPROSES: TStringField
      DisplayWidth = 30
      FieldName = 'PROSES'
      Required = True
      Size = 30
    end
    object QLokasiProsesLOKASI: TStringField
      DisplayWidth = 30
      FieldName = 'LOKASI'
      Required = True
      Size = 30
    end
    object QLokasiProsesKD_LOKASI: TStringField
      FieldName = 'KD_LOKASI'
      Size = 6
    end
  end
  object QLookLokasiProses: TOracleDataSet
    SQL.Strings = (
      
        'select a.lokasi||'#39' '#39'||a.proses as mylokasi, a.lokasi, a.proses, ' +
        'a.kd_lokasi from ipisma_db3.lokasi_proses a'
      'order by a.lokasi, a.proses')
    QBEDefinition.QBEFieldDefs = {
      0400000004000000060000004C4F4B415349010000000000080000004D594C4F
      4B4153490100000000000600000050524F534553010000000000090000004B44
      5F4C4F4B415349010000000000}
    Cursor = crSQLWait
    Session = OS
    Left = 480
    Top = 88
    object QLookLokasiProsesMYLOKASI: TStringField
      DisplayLabel = 'LOKASI'
      DisplayWidth = 40
      FieldName = 'MYLOKASI'
      Size = 61
    end
    object QLookLokasiProsesLOKASI: TStringField
      FieldName = 'LOKASI'
      Visible = False
      Size = 61
    end
    object QLookLokasiProsesPROSES: TStringField
      FieldName = 'PROSES'
      Required = True
      Visible = False
      Size = 30
    end
    object QLookLokasiProsesKD_LOKASI: TStringField
      FieldName = 'KD_LOKASI'
      Size = 6
    end
  end
  object RVLokasiProses: TwwRecordViewDialog
    DataSource = dsQLokasiProses
    BorderStyle = bsDialog
    FormPosition.Left = 0
    FormPosition.Top = 0
    FormPosition.Width = 0
    FormPosition.Height = 0
    NavigatorButtons = [nbsPrior, nbsNext, nbsInsert, nbsDelete, nbsEdit, nbsPost, nbsCancel, nbsSearchDialog]
    ControlOptions = []
    LabelFont.Charset = DEFAULT_CHARSET
    LabelFont.Color = clWindowText
    LabelFont.Height = -11
    LabelFont.Name = 'MS Sans Serif'
    LabelFont.Style = []
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Caption = 'Record View'
    Selected.Strings = (
      'LOKASI'#9'30'#9'LOKASI'#9'F'
      'PROSES'#9'30'#9'PROSES'#9'F')
    NavigatorFlat = True
    Left = 544
    Top = 32
  end
  object dsQLokasiProses: TwwDataSource
    DataSet = QLokasiProses
    Left = 296
    Top = 456
  end
  object MKaryawanAktif: TOracleDataSet
    SQL.Strings = (
      'select a.nik_lama, a.nik, a.nama_karyawan, a.jns_kel,'
      'a.sts_kawin, a.n_anak, a.tgl_masuk_kontrak,'
      'a.agama,b.bagian, c.sub_bagian, d.jabatan'
      
        'from IHRD.Karyawan a, IHRD.Bagian b, IHRD.Sub_bagian c, IHRD.Jab' +
        'atan d'
      'where b.kd_bag=a.kd_bag and'
      'c.kd_bag=a.kd_bag and'
      'c.kd_sub_bag=a.kd_sub_bag and'
      'd.kd_bag=a.kd_bag and'
      'd.kd_jab=a.kd_jab and'
      'a.sts_aktif='#39'1'#39
      'order by a.nama_karyawan, b.bagian, c.sub_bagian')
    QBEDefinition.QBEFieldDefs = {
      040000000B000000030000004E494B0100000000000D0000004E414D415F4B41
      52594157414E010000000000070000004A4E535F4B454C010000000000090000
      005354535F4B4157494E010000000000060000004E5F414E414B010000000000
      1100000054474C5F4D4153554B5F4B4F4E5452414B0100000000000500000041
      47414D410100000000000600000042414749414E0100000000000A0000005355
      425F42414749414E010000000000070000004A41424154414E01000000000008
      0000004E494B5F4C414D41010000000000}
    Cursor = crSQLWait
    Session = OS
    Left = 216
    Top = 128
    object MKaryawanAktifNAMA_KARYAWAN: TStringField
      DisplayLabel = 'NAMA KARYAWAN'
      DisplayWidth = 19
      FieldName = 'NAMA_KARYAWAN'
      Size = 45
    end
    object MKaryawanAktifNIK: TStringField
      DisplayWidth = 5
      FieldName = 'NIK'
      Required = True
      Size = 5
    end
    object MKaryawanAktifNIK_LAMA: TStringField
      DisplayLabel = 'NIK LAMA'
      DisplayWidth = 10
      FieldName = 'NIK_LAMA'
      Size = 10
    end
    object MKaryawanAktifBAGIAN: TStringField
      DisplayWidth = 13
      FieldName = 'BAGIAN'
      Size = 45
    end
    object MKaryawanAktifSUB_BAGIAN: TStringField
      DisplayLabel = 'SUB BAGIAN'
      DisplayWidth = 12
      FieldName = 'SUB_BAGIAN'
      Size = 45
    end
    object MKaryawanAktifJABATAN: TStringField
      DisplayWidth = 12
      FieldName = 'JABATAN'
      Size = 45
    end
    object MKaryawanAktifJNS_KEL: TStringField
      FieldName = 'JNS_KEL'
      Visible = False
      Size = 1
    end
    object MKaryawanAktifSTS_KAWIN: TStringField
      FieldName = 'STS_KAWIN'
      Visible = False
      Size = 1
    end
    object MKaryawanAktifN_ANAK: TFloatField
      FieldName = 'N_ANAK'
      Visible = False
    end
    object MKaryawanAktifTGL_MASUK_KONTRAK: TDateTimeField
      FieldName = 'TGL_MASUK_KONTRAK'
      Visible = False
    end
    object MKaryawanAktifAGAMA: TStringField
      FieldName = 'AGAMA'
      Visible = False
      Size = 15
    end
  end
  object QMutu: TOracleDataSet
    SQL.Strings = (
      'select * from ipisma_db3.mutu'
      'order by mutu')
    QBEDefinition.QBEFieldDefs = {
      0400000003000000040000004D5554550100000000000A0000004B4554455241
      4E47414E0100000000000500000053434F5245010000000000}
    Cursor = crSQLWait
    Session = OS
    Left = 288
    Top = 232
    object QMutuMUTU: TStringField
      DisplayWidth = 12
      FieldName = 'MUTU'
      Size = 30
    end
    object QMutuKETERANGAN: TStringField
      DisplayWidth = 45
      FieldName = 'KETERANGAN'
      Size = 255
    end
    object QMutuSCORE: TFloatField
      DisplayWidth = 6
      FieldName = 'SCORE'
    end
  end
  object QResep: TOracleDataSet
    SQL.Strings = (
      'select * from ipisma_db3.vresep WHERE :MYPARAM')
    Variables.Data = {
      0300000001000000080000003A4D59504152414D01000000110000004E4F5F52
      45534550204C494B452027270000000000}
    QBEDefinition.QBEFieldDefs = {
      0400000007000000080000004E4F5F5245534550010000000000050000005645
      525349010000000000020000004B500100000000000300000054474C01000000
      00000A0000004B4F4E535452554B534901000000000005000000434F52414B01
      0000000000090000004E4F5F44455341494E010000000000}
    Cursor = crSQLWait
    Session = OS
    Left = 416
    Top = 24
    object QResepNO_RESEP: TStringField
      DisplayWidth = 16
      FieldName = 'NO_RESEP'
    end
    object QResepVERSI: TStringField
      DisplayLabel = 'NO.Reg'
      DisplayWidth = 16
      FieldName = 'VERSI'
      Size = 18
    end
    object QResepKP: TStringField
      DisplayWidth = 8
      FieldName = 'KP'
    end
    object QResepTGL: TDateTimeField
      DisplayLabel = 'TANGGAL'
      DisplayWidth = 12
      FieldName = 'TGL'
      DisplayFormat = 'dd mmm yyyy'
    end
    object QResepKONSTRUKSI: TStringField
      DisplayWidth = 20
      FieldName = 'KONSTRUKSI'
      Size = 50
    end
    object QResepCORAK: TStringField
      DisplayWidth = 20
      FieldName = 'CORAK'
      Size = 50
    end
    object QResepNO_DESAIN: TFloatField
      DisplayLabel = 'NO REG.'
      DisplayWidth = 10
      FieldName = 'NO_DESAIN'
      Required = True
    end
  end
  object wwIntl1: TwwIntl
    Navigator.ConfirmDeleteMessage = 'Delete record?'
    Navigator.Hints.FirstHint = 'Move to first record'
    Navigator.Hints.PriorHint = 'Move to prior record'
    Navigator.Hints.NextHint = 'Move to next record'
    Navigator.Hints.LastHint = 'Move to last record'
    Navigator.Hints.InsertHint = 'Insert new record'
    Navigator.Hints.DeleteHint = 'Delete current record'
    Navigator.Hints.EditHint = 'Edit current record'
    Navigator.Hints.PostHint = 'Post changes of current record'
    Navigator.Hints.CancelHint = 'Cancel changes made to current record'
    Navigator.Hints.RefreshHint = 'Refresh the contents of the dataset'
    Navigator.Hints.PriorPageHint = 'Move backward %d records'
    Navigator.Hints.NextPageHint = 'Move forward %d records'
    Navigator.Hints.SaveBookmarkHint = 'Bookmark current record'
    Navigator.Hints.RestoreBookmarkHint = 'Go back to saved bookmark'
    Navigator.Hints.RecordViewDialogHint = 'View current record'
    Navigator.Hints.LocateDialogHint = 'Locate a specific record'
    Navigator.Hints.FilterDialogHint = 'Filter the dataset'
    Navigator.Hints.SearchDialogHint = 'Search the dataset'
    SearchDialog.SearchCharLabel = '&Search Characters'
    SearchDialog.SearchCharShortLabel = '&Search Char'
    SearchDialog.SearchByLabel = 'Search &By'
    SearchDialog.StatusRecLabel = 'Rec #'
    SearchDialog.StatusOfLabel = 'of'
    SearchDialog.SearchCharHint = 'Enter characters for incremental search'
    SearchDialog.SearchByHint = 'Incremental searching and sorting order'
    LocateDialog.FieldValueLabel = 'Field &Value'
    LocateDialog.SearchTypeLabel = '&Search Type'
    LocateDialog.CaseSensitiveLabel = '&Case-sensitive'
    LocateDialog.MatchExactLabel = '&Exact Match'
    LocateDialog.MatchStartLabel = '&Partial Match at Beginning'
    LocateDialog.MatchAnyLabel = 'Partial Match &Anywhere'
    LocateDialog.FieldsLabel = '&Fields'
    LocateDialog.BtnFirst = 'Fi&rst'
    LocateDialog.BtnNext = '&Next'
    LocateDialog.BtnCancel = 'Cancel'
    LocateDialog.BtnClose = 'Close'
    LocateDialog.FieldValueHint = 'Enter field'#39's search value'
    LocateDialog.CaseSensitiveHint = 'Searching is case-sensitive'
    LocateDialog.MatchExactHint = 'Match occurs only if there is an exact match'
    LocateDialog.MatchStartHint = 'Match occurs if the start of the field'#39's value matches'
    LocateDialog.MatchAnyHint = 'Match occurs if any part of the field matches'
    LocateDialog.BtnFirstHint = 'Find first match'
    LocateDialog.BtnNextHint = 'Find next match from current record'
    LocateDialog.FieldNameHint = 'Select the field to search on'
    MonthCalendar.PopupYearLabel = 'Edit Year'
    MonthCalendar.EnterYearPrompt = 'Enter Valid Year'
    FilterDialog.BtnViewSummary = 'View Su&mmary'
    FilterDialog.BtnViewSummaryHint = 'View summary of current search criteria'
    FilterDialog.BtnNewSearch = '&New Search'
    FilterDialog.BtnNewSearchHint = 'Start a new search'
    FilterDialog.FieldOrderLabel = 'Field Order'
    FilterDialog.FieldOrderHint = 'Sort field list alphabetically or in their natural logical order'
    FilterDialog.AlphabeticLabel = 'Alpha&betic'
    FilterDialog.LogicalLabel = '&Logical'
    FilterDialog.AllFieldsLabel = '&All'
    FilterDialog.SearchedFieldsLabel = '&Searched'
    FilterDialog.StartingRangeLabel = '&Starting Range'
    FilterDialog.EndingRangeLabel = 'En&ding Range'
    FilterDialog.StartingRangeHint = 'Enter starting range for field'
    FilterDialog.EndingRangeHint = 'Enter ending range for field'
    FilterDialog.BtnClearMin = '&Clear'
    FilterDialog.BtnClearMax = 'Cl&ear'
    FilterDialog.BtnClearFilterValue = '&Clear'
    FilterDialog.BtnClearMinHint = 'Clear starting range for field'
    FilterDialog.BtnClearMaxHint = 'Clear ending range for field'
    FilterDialog.BtnClearFilterValueHint = 'Clear the current field'#39's search value'
    FilterDialog.ByValueLabel = 'By &Value'
    FilterDialog.ByRangeLabel = 'By &Range'
    FilterDialog.FieldValueLabel = 'Field &Value'
    FilterDialog.FieldValueHint = 'Enter field'#39's search value'
    FilterDialog.SearchTypeLabel = 'Search Type'
    FilterDialog.SearchTypeHint = 'Specify how the Field Value should be compared'
    FilterDialog.MatchExactLabel = '&Exact Match'
    FilterDialog.MatchStartLabel = '&Partial Match at Beginning'
    FilterDialog.MatchAnyLabel = 'Partial Match Any&where'
    FilterDialog.CaseSensitiveLabel = 'Case Sensi&tive'
    FilterDialog.CaseSensitiveHint = 'Searching is case-sensitive'
    FilterDialog.NonMatchingLabel = 'N&on-matching records'
    FilterDialog.NonMatchingHint = 'Show records that do not match the field value criteria'
    FilterDialog.SummaryFieldLabel = 'Field'
    FilterDialog.SummarySearchLabel = 'Search Type'
    FilterDialog.SummaryValueLabel = 'Value'
    FilterDialog.FieldsLabel = '&Fields'
    FilterDialog.ValueRangeTabHint = 'Search fields by value or by range'
    FilterDialog.AllSearchedTabHint = 'Show all fields or only currently searched fields'
    FilterDialog.ViewSummaryNotText = 'NOT'
    RichEdit.FontNameComboHint = 'Font | Changes the font of the selection'
    RichEdit.FontSizeComboHint = 'Font Size | Changes the font size of the selection'
    RichEdit.NewButtonHint = 'New | Creates a new document'
    RichEdit.LoadButtonHint = 'Load | Load from file'
    RichEdit.SaveAsButtonHint = 'Save As | Save to file'
    RichEdit.PrintButtonHint = 'Print | Prints the active document'
    RichEdit.FindButtonHint = 'Find | Finds the specified text'
    RichEdit.CutButtonHint = 'Cut | Cuts the selection and puts it on the Clipboard'
    RichEdit.CopyButtonHint = 'Copy | Copies the selection and puts it on the Clipboard'
    RichEdit.UndoButtonHint = 'Undo | Reverses the last action'
    RichEdit.RedoButtonHint = 'Redo | Reverses the last undo action'
    RichEdit.PasteButtonHint = 'Paste | Inserts Clipboard contents'
    RichEdit.BoldButtonHint = 'Bold | Makes the selection bold (toggle)'
    RichEdit.ColorButtonHint = 'Color | Formats the selection with a color'
    RichEdit.UnderlineButtonHint = 
      'Underline | Formats the selection with a continuous underline (t' +
      'oggle)'
    RichEdit.ItalicButtonHint = 'Italic | Makes the selection italic (toggle)'
    RichEdit.LeftButtonHint = 'Align Left | Left-justifies paragraph (toggle)'
    RichEdit.CenterButtonHint = 'Center | Center-justifies paragraph (toggle)'
    RichEdit.RightButtonHint = 'Align Right | Right-justifies paragraph (toggle)'
    RichEdit.JustifyButtonHint = 'Justify | Full Justification for paragraph (toggle)'
    RichEdit.BulletButtonHint = 'Bullets | Inserts a bullet on this line (toggle)'
    RichEdit.HighlightButtonHint = 'Highlight Text | Makes the selection highlighted'
    RichEdit.SaveExitHint = 'Save And Exit | Saves changes and exits editor'
    RichEdit.PageSetupHint = 'Page Setup | Changes page layout settings'
    RichEdit.ExitHint = 'Exit'
    RichEdit.ClearHint = 'Erases the Selection'
    RichEdit.SelectAllHint = 'Selects all of the text'
    RichEdit.FindNextHint = 'Repeats the last find'
    RichEdit.ReplaceHint = 'Replaces specific text with different text'
    RichEdit.InsertObjectHint = 'Inserts new embedded object'
    RichEdit.SpellCheckHint = 'Check spelling'
    RichEdit.ToolbarHint = 'Shows or hides the toolbar'
    RichEdit.FormatBarHint = 'Shows or hides the format bar'
    RichEdit.ViewStatusBarHint = 'Shows or hides the status bar'
    RichEdit.OptionsHint = 'Sets options'
    RichEdit.FontHint = 'Selects font for current selection'
    RichEdit.ParagraphHint = 'Formats current or selected paragraph(s)'
    RichEdit.TabsHint = 'Sets tabs'
    RichEdit.CAPLockCaption = 'CAP'
    RichEdit.NUMLockCaption = 'NUM'
    RichEdit.MenuLabels.FileCaption = '&File'
    RichEdit.MenuLabels.LoadCaption = '&Load'
    RichEdit.MenuLabels.SaveAsCaption = 'Save &As'
    RichEdit.MenuLabels.SaveExitCaption = '&Save and Exit'
    RichEdit.MenuLabels.PrintCaption = '&Print'
    RichEdit.MenuLabels.PageSetupCaption = 'Page Set&up'
    RichEdit.MenuLabels.ExitCaption = 'E&xit'
    RichEdit.MenuLabels.EditCaption = '&Edit'
    RichEdit.MenuLabels.UndoCaption = '&Undo'
    RichEdit.MenuLabels.CutCaption = 'Cu&t'
    RichEdit.MenuLabels.CopyCaption = '&Copy'
    RichEdit.MenuLabels.PasteCaption = '&Paste'
    RichEdit.MenuLabels.ClearCaption = 'Cle&ar'
    RichEdit.MenuLabels.SelectallCaption = 'Select A&ll'
    RichEdit.MenuLabels.FindCaption = '&Find'
    RichEdit.MenuLabels.FindNextCaption = 'Find &Next'
    RichEdit.MenuLabels.ReplaceCaption = 'R&eplace'
    RichEdit.MenuLabels.InsertObjectCaption = '&Object...'
    RichEdit.MenuLabels.ToolCaption = '&Tools'
    RichEdit.MenuLabels.SpellCheckCaption = 'Check &Spelling'
    RichEdit.MenuLabels.InsertCaption = '&Insert'
    RichEdit.MenuLabels.RulerCaption = '&Ruler'
    RichEdit.MenuLabels.ViewCaption = '&View'
    RichEdit.MenuLabels.ToolbarCaption = '&Toolbar'
    RichEdit.MenuLabels.FormatBarCaption = '&Format Bar'
    RichEdit.MenuLabels.ViewStatusBarCaption = '&Status Bar'
    RichEdit.MenuLabels.OptionsCaption = '&Options'
    RichEdit.MenuLabels.FormatCaption = 'F&ormat'
    RichEdit.MenuLabels.FontCaption = '&Font'
    RichEdit.MenuLabels.BulletStyleCaption = '&Bullet Style'
    RichEdit.MenuLabels.ParagraphCaption = '&Paragraph'
    RichEdit.MenuLabels.TabsCaption = '&Tabs'
    RichEdit.MenuLabels.HelpCaption = 'Help'
    RichEdit.PopupMenuLabels.EditCaption = '&Edit'
    RichEdit.PopupMenuLabels.ViewCaption = '&View'
    RichEdit.PopupMenuLabels.CutCaption = 'Cu&t'
    RichEdit.PopupMenuLabels.CopyCaption = '&Copy'
    RichEdit.PopupMenuLabels.PasteCaption = '&Paste'
    RichEdit.PopupMenuLabels.FontCaption = '&Font'
    RichEdit.PopupMenuLabels.BulletStyleCaption = '&Bullet Style'
    RichEdit.PopupMenuLabels.BoldCaption = 'B&old'
    RichEdit.PopupMenuLabels.ItalicCaption = '&Italic'
    RichEdit.PopupMenuLabels.UnderlineCaption = '&Underline'
    RichEdit.PopupMenuLabels.ParagraphCaption = 'P&aragraph'
    RichEdit.PopupMenuLabels.TabsCaption = '&Tabs'
    RichEdit.PopupMenuLabels.FindCaption = 'Fin&d'
    RichEdit.PopupMenuLabels.ReplaceCaption = '&Replace'
    RichEdit.PopupMenuLabels.InsertObjectCaption = 'Insert &Object...'
    RichEdit.PopupMenuLabels.ObjectPropertiesCaption = 'Object P&roperties'
    RichEdit.PopupMenuLabels.SpellCheckCaption = 'Check &Spelling'
    RichEdit.ParagraphDialog.ParagraphDlgCaption = 'Paragraph'
    RichEdit.ParagraphDialog.IndentationGroupBoxCaption = 'Indentation'
    RichEdit.ParagraphDialog.LeftEditHint = 'Left Indentation'
    RichEdit.ParagraphDialog.RightEditHint = 'Right Indentation'
    RichEdit.ParagraphDialog.FirstLineEditHint = 'First Line of Paragraph Indentation'
    RichEdit.ParagraphDialog.AlignmentHint = 'Changes Alignment of Paragraph'
    RichEdit.ParagraphDialog.LeftEditCaption = 'Left:'
    RichEdit.ParagraphDialog.RightEditCaption = 'Right:'
    RichEdit.ParagraphDialog.FirstLineEditCaption = 'First line:'
    RichEdit.ParagraphDialog.SpacingGroupCaption = 'Spacing'
    RichEdit.ParagraphDialog.BeforeParagraphCaption = '&Before'
    RichEdit.ParagraphDialog.AfterParagraphCaption = 'Aft&er'
    RichEdit.ParagraphDialog.WithinParagraphCaption = 'Li&ne Spacing'
    RichEdit.ParagraphDialog.WithinParagraphAtCaption = '&At'
    RichEdit.ParagraphDialog.AlignmentCaption = 'Alignment'
    RichEdit.ParagraphDialog.AlignLeft = 'Left'
    RichEdit.ParagraphDialog.AlignRight = 'Right'
    RichEdit.ParagraphDialog.AlignCenter = 'Center'
    RichEdit.ParagraphDialog.AlignJustify = 'Justify'
    RichEdit.TabDialog.TabDlgCaption = 'Tab'
    RichEdit.TabDialog.TabGroupBoxCaption = '&Tab Stop Position'
    RichEdit.TabDialog.SetTabButtonCaption = 'Set'
    RichEdit.TabDialog.ClearTabButtonCaption = 'Clear'
    RichEdit.TabDialog.ClearAllButtonCaption = 'Clear All'
    RichEdit.TabDialog.TabPositionEditHint = 'Tab Position Edit Box'
    RichEdit.TabDialog.ListBoxHint = 'List of tabs and their positions'
    RichEdit.TabDialog.SetButtonHint = 'Set a new tab position'
    RichEdit.TabDialog.ClearButtonHint = 'Clear the selected tab position'
    RichEdit.TabDialog.ClearAllButtonHint = 'Clear all the tabs'
    UserMessages.wwDBGridDiscardChanges = 'Discard changes to this record?'
    UserMessages.PictureValidateError = 'Invalid characters. Field : '
    UserMessages.LocateNoMatches = 'No matches found'
    UserMessages.LocateNoMoreMatches = 'No more matches found'
    UserMessages.MemoChangesWarning = 'Changes have been made!  Are you sure you wish to cancel?'
    UserMessages.RichEditExitWarning = 'Changes have been made!  Do you wish to save your changes?'
    UserMessages.RichEditClearWarning = 'Clear entire text?'
    UserMessages.RichEditSpellCheckComplete = 'The spell check is complete.'
    UserMessages.RichEditMSWordNotFound = 'Unable to start Microsoft Word'#39's Spell Checker.'
    UserMessages.FilterDlgNoCriteria = 'You have not selected any search criteria'
    UserMessages.RecordViewExitWarning = 'Changes have been made!  Do you wish to save your changes?'
    OKCancelBitmapped = True
    BtnOKCaption = '&OK'
    BtnCancelCaption = 'Cancel'
    CheckBoxInGridStyle = cbStyleAuto
    VersionInfoPower = '4000.0.4'
    FilterMemoSize = 65536
    DialogFontStyle = []
    Connected = False
    Left = 568
    Top = 88
  end
  object QDateTime: TOracleDataSet
    SQL.Strings = (
      
        'select sysdate as vnow, user||'#39', '#39'||to_char(sysdate,'#39'dd/mm/yyyy ' +
        'hh24:mi'#39') as vuser_cetak, to_char(sysdate,'#39'dd-mm-yyyy'#39') as tgl, ' +
        'user  from dual')
    QBEDefinition.QBEFieldDefs = {
      040000000400000004000000564E4F570100000000000B00000056555345525F
      434554414B0100000000000300000054474C0100000000000400000055534552
      010000000000}
    Cursor = crSQLWait
    Session = OS
    Filtered = True
    Left = 144
    Top = 168
    object QDateTimeVNOW: TDateTimeField
      FieldName = 'VNOW'
    end
    object QDateTimeVUSER_CETAK: TStringField
      FieldName = 'VUSER_CETAK'
      Size = 48
    end
    object QDateTimeTGL: TStringField
      FieldName = 'TGL'
      Size = 10
    end
    object QDateTimeUSER: TStringField
      FieldName = 'USER'
      Size = 30
    end
  end
  object QMitra_Kerja: TOracleDataSet
    SQL.Strings = (
      'select * from ipisma_db3.pabrik_mitra')
    QBEDefinition.QBEFieldDefs = {
      0400000004000000080000004B445F4D495452410100000000000A0000004E41
      4D415F4D4954524101000000000006000000414C414D41540100000000000700
      0000494E495349414C010000000000}
    Cursor = crSQLWait
    ReadOnly = True
    QueryAllRecords = False
    Session = OS
    BeforeOpen = QDivisiBeforeOpen
    Left = 216
    Top = 24
    object QMitra_KerjaNAMA_MITRA: TStringField
      DisplayWidth = 50
      FieldName = 'NAMA_MITRA'
      Size = 50
    end
    object QMitra_KerjaKD_MITRA: TStringField
      DisplayWidth = 10
      FieldName = 'KD_MITRA'
      Required = True
      Size = 10
    end
    object QMitra_KerjaALAMAT: TStringField
      FieldName = 'ALAMAT'
      Visible = False
      Size = 50
    end
    object QMitra_KerjaINISIAL: TStringField
      FieldName = 'INISIAL'
      Visible = False
      Size = 4
    end
  end
  object FNoUrut2: TOracleDataSet
    SQL.Strings = (
      'select ipisma_db3.Fno_urut2(:0,:1,:2) as fno_urut2 from dual')
    Variables.Data = {
      0300000003000000020000003A300500000003000000504F0000000000020000
      003A3105000000080000004B445F544950450000000000020000003A320C0000
      00070000007868010101010100000000}
    QBEDefinition.QBEFieldDefs = {040000000100000009000000464E4F5F5552555432010000000000}
    Cursor = crSQLWait
    Session = OS
    Left = 16
    Top = 152
    object FNoUrut2FNO_URUT2: TStringField
      FieldName = 'FNO_URUT2'
      Size = 4000
    end
  end
  object QUserTime: TOracleDataSet
    SQL.Strings = (
      
        'select user||'#39', '#39'||to_char(sysdate,'#39'dd Mon yyyy hh24:mi'#39') as vus' +
        'er,'
      
        'to_char(sysdate,'#39'dd Mon yyyy hh:mm'#39') as vtgl, to_char(sysdate,'#39'h' +
        'h24mi'#39') as vjam'
      'from dual'
      ''
      '')
    QBEDefinition.QBEFieldDefs = {
      0400000003000000050000005655534552010000000000040000005654474C01
      000000000004000000564A414D010000000000}
    Session = OS
    Left = 144
    Top = 64
    object QUserTimeVUSER: TStringField
      FieldName = 'VUSER'
      Size = 49
    end
    object QUserTimeVTGL: TStringField
      FieldName = 'VTGL'
      Size = 11
    end
    object QUserTimeVJAM: TStringField
      FieldName = 'VJAM'
      Size = 4
    end
  end
  object QHak_jam: TOracleDataSet
    SQL.Strings = (
      'select jam1, jam2, tgl_aplikasi from ipisma_db1.hak_jam')
    QBEDefinition.QBEFieldDefs = {
      0400000003000000040000004A414D31010000000000040000004A414D320100
      000000000C00000054474C5F41504C494B415349010000000000}
    Session = OS
    Left = 144
    Top = 312
    object QHak_jamJAM1: TStringField
      FieldName = 'JAM1'
      Size = 4
    end
    object QHak_jamJAM2: TStringField
      FieldName = 'JAM2'
      Size = 4
    end
    object QHak_jamTGL_APLIKASI: TDateTimeField
      FieldName = 'TGL_APLIKASI'
    end
  end
  object SavePictureDialog1: TSavePictureDialog
    DefaultExt = 'BMP'
    Left = 296
    Top = 408
  end
  object QLogIpAddr: TOracleQuery
    SQL.Strings = (
      'begin'
      '  insert into ipisma_db1.log_ip_addr'
      '   (ip_addr, login_windows, id_user)'
      '  values'
      '   (:ip_addr, :login_windows, :id_user);'
      '  commit;'
      'end;')
    Session = OS
    Variables.Data = {
      0300000003000000080000003A49505F41444452050000000000000000000000
      0E0000003A4C4F47494E5F57494E444F57530500000000000000000000000800
      00003A49445F55534552050000000000000000000000}
    Left = 80
    Top = 248
  end
end
