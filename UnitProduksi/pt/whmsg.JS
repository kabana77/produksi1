lete, dgCancelOnExit, dgPerfectRowFit, dgShowFooter, dgTrailingEllipsis, dgDblClickColSizing]
        ParentFont = False
        ReadOnly = True
        RowHeightPercent = 125
        TabOrder = 1
        TitleAlignment = taLeftJustify
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Lucida Sans'
        TitleFont.Style = [fsBold]
        TitleLines = 3
        TitleButtons = True
        UseTFields = False
        PaintOptions.AlternatingRowColor = clMoneyGreen
        PaintOptions.ActiveRecordColor = clGreen
        GroupFieldName = 'KONSTRUKSI'
      end
    end
  end
  object QMaster: TOracleDataSet
    SQL.Strings = (
      'select a.*, a.rowid from ipisma_db4.bukti2 a'
      'where kd_transaksi=:kd_transaksi and no_nota like :no_nota'
      'order by a.no_nota desc')
    Variables.Data = {
      0300000002000000080000003A4E4F5F4E4F5441050000000200000025000000
      00000D0000003A4B445F5452414E53414B5349050000000000000000000000}
    SequenceField.Field = 'NO_REG'
    SequenceField.Sequence = 'ipisma_db4.no_reg_kontrak'
    SequenceField.ApplyMoment = amOnNewRecord
    QBEDefinition.QBEFieldDefs = {
      0400000016000000060000004E4F5F5245470100000000000300000054474C01
      00000000000A0000004E4F5F4B4F4E5452414B0100000000000A0000004B4554
      4552414E47414E0100000000000A0000004B445F52454B414E414E0100000000
      00060000005354415455530100000000000A00000054474C5F494E5345525401
      00000000000A0000004F50525F494E534552540100000000000C0000004B445F
      5452414E53414B53490100000000000400000054544431010000000000040000
      005454443201000000000004000000545444330100000000000700000052454B
      414E414E01000000000006000000495