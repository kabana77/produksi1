t
    BeforePost = QMasterBeforePost
    BeforeDelete = QDetailBeforeEdit
    OnNewRecord = QMasterNewRecord
    Left = 10
    Top = 129
    object QMasterNO_NOTA: TStringField
      DisplayLabel = 'NO NOTA'
      DisplayWidth = 16
      FieldName = 'NO_NOTA'
    end
    object QMasterTGL: TDateTimeField
      DisplayWidth = 12
      FieldName = 'TGL'
      Required = True
      DisplayFormat = 'dd mmm yyyy'
    end
    object QMasterSTATUS: TStringField
      DisplayWidth = 10
      FieldName = 'STATUS'
      Size = 10
    end
    object QMasterISPOST: TStringField
      DisplayLabel = 'POST'
      DisplayWidth = 1
      FieldName = 'ISPOST'
      Size = 1
    end
    object QMasterGRUP: TStringField
      DisplayWidth = 3
      FieldName = 'GRUP'
      Required = True
      Size = 3
    end
    object QMasterSHIFT: TStringField
      DisplayWidth = 3
      FieldName = 'SHIFT'
      Required = True
      Size = 3
    end
    object QMasterREKANAN: TStringField
      DisplayWidth = 30
      FieldName = 'REKANAN'
      Visible = False
      Size = 80
    end
    object QMasterNO_KONTRAK: TStringField
      DisplayLabel = 'NO KONTRAK'
      DisplayWidth = 20
      FieldName = 'NO_KONTRAK'
      Visible = False
    end
    object QMasterNO_REG: TFloatField
      DisplayWidth = 10
      FieldName = 'NO_REG'
      Required = True
      Visible = False
    end
    object QMasterKETERANGAN: TStringField
      DisplayWidth = 255
      FieldName = 'KETERANGAN'
      Visible = False
      Size = 255
    end
    object QMasterKD_REKANAN: TFloatField
      DisplayWidth = 10
      FieldName = 'KD_REKANAN'
      Visible = False
    end
    object QMasterKD_TRANSAKSI: TStringField
      DisplayWidt