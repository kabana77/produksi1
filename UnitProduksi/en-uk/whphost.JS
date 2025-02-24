 'WARNA'
      DisplayWidth = 6
      FieldName = 'KD_WARNA'
      Size = 6
    end
    object QItemNO_BATCH: TStringField
      DisplayLabel = 'NO BATCH'
      DisplayWidth = 8
      FieldName = 'NO_BATCH'
      Size = 50
    end
    object QItemQTY: TFloatField
      DisplayLabel = 'KG'
      DisplayWidth = 10
      FieldName = 'QTY'
      DisplayFormat = '#,##0.######;(#,##0.######); '
    end
    object QItemQTY2: TFloatField
      DisplayLabel = 'PCS'
      DisplayWidth = 10
      FieldName = 'QTY2'
      DisplayFormat = '#,##0.######;(#,##0.######); '
    end
    object QItemWARNA: TStringField
      DisplayWidth = 20
      FieldName = 'WARNA'
      Size = 50
    end
    object QItemSATUAN: TStringField
      DisplayWidth = 12
      FieldName = 'SATUAN'
      Visible = False
      Size = 12
    end
    object QItemKD_SUB_LOKASI: TStringField
      DisplayLabel = 'LOKASI'
      DisplayWidth = 10
      FieldName = 'KD_SUB_LOKASI'
      Required = True
      Visible = False
      Size = 12
    end
    object QItemRASIO: TFloatField
      FieldName = 'RASIO'
      Visible = False
    end
  end
  object QTotal: TOracleDataSet
    SQL.Strings = (
      
        'select sum(qty5) as pcs, sum(qty4) as kg from ipisma_db3.bukti_d' +
        'etail a'
      'where ibukti = :ibukti')
    Variables.Data = {0300000001000000070000003A4942554B5449030000000000000000000000}
    QBEDefinition.QBEFieldDefs = {
      040000000200000003000000504353010000000000020000004B470100000000
      00}
    Cursor = crSQLWait
    QueryAllRecords = False
    Session = DMFrm.OS
    Left = 245
    Top = 401
    object QTotalPCS: TFloatField
      FieldName = 'PCS'
    end
    object QTotalKG: TFloatField
      FieldName = 'KG'
    end
  end
end
                                                                                                                                                                                                                                               DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppDBQMasterppField3: TppField
      FieldAlias = 'KD_TRANSAKSI'
      FieldName = 'KD_TRANSAKSI'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppDBQMasterppField4: TppField
      FieldAlias = 'TGL'
      FieldName = 'TGL'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppDBQMasterppField5: TppField
      FieldAlias = 'KETERANGAN'
      FieldName = 'KETERANGAN'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppDBQMasterppField6: TppField
      FieldAlias = 'ISPOST'
      FieldName = 'ISPOST'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppDBQMasterppField7: TppField
      FieldAlias = 'NO_BUKTI'
      FieldName = 'NO_BUKTI'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppDBQMasterppField8: TppField
      FieldAlias = 'TTD1'
      FieldName = 'TTD1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppDBQMasterppField9: TppField
      FieldAlias = 'TTD2'
      FieldName = 'TTD2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppDBQMasterppField10: TppField
      FieldAlias = 'TTD3'
      FieldName = 'TTD3'
      FieldLength = 0
      DataINDX( 	 ��UN           (   8   �      	 ���k   k                        �>     ��S�Q4� ��\����`V�Q4���S�Q4� 0     '             P e r m i n t a a n K o r e k s i C e l u p . ~ d f m               �>     ��S�Q4� ��\����`V�Q4���S�Q4� 0     '             P e r m i n t a a n K o r e k s i C e l u p . ~ d f m               �>     ��S�Q4� ��\����`V�Q4���S�Q4� 0     '             P e r m i n t a a n K o r e k s i C e l u p . ~ d f m               �>     ��S�Q4� ��\��	 �`V�Q4���S�Q4� 0     '             P e r m i n t a a n K o r e k s i C e l u p . ~ d f m               �>     ��S�Q4� ��\����`V�Q4���S�Q4� 0     '             P e r m i n t a a n K o r e k s i C e l u p . ~ d f m               ��S�Q4� ��\����`V�Q4���S�Q4� 0     '             P e r m i n t a a n K o r e k s i C e l u p . ~ d f m               ��S�Q4� ��\����`V�Q4���S�Q4� 0     '             P e r m i n t a a n K o r e k s i C e l u p . ~ d f m               ��S�Q4	  ��\����`V�Q4���S�Q4� 0     '             P e r m i n t a a n K o r e k s i C e l u p . ~ d f m               ��S�Q4� ��\����`V�Q4���S�Q4� 0     '             P e r m i n t a a n K o r e k s i C e l u p . ~ d f m               ��S�Q4� ��\����`V�Q4���S�Q4� 0     '             P e r m i n t a a n K o r e k s i C e l u p . ~ d f m               ��S�Q4� ��\����`V�Q4���S�Q4� 0     '             P e r m i n t a a n K o r e k s i C e l u p . ~ d f m               �`V�Q4	 ��S�Q4� 0     '             P e r m i n t a a n K o r e k s i C e l u p . ~ d f m               �`V�Q4���S�Q4� 0     '             P e r m i n t a a n K o r e k s i C e l u p . ~ d f m               �`V�Q4���S�Q4� 0     '             P e r m i n t a a n K o r e k s i C e l u p . ~ d f m               �`V�Q4���S�Q4� 0     '             P e r m i n t a a n K o r e k s i C e l u p . ~ d f m               �`V�Q4���S�Q4� 0     '             P e r m i n t a a n K o r e 	 s i C e l u p . ~ d f m               �`V�Q4���S�Q4� 0     '             P e r m i n t a a n K o r e k s i C e l u p . ~ d f m               �`V�Q4���S�Q4� 0     '             P e r m i n t a a n K o r e k s i C e l u p . ~ d f m               �`V�Q4���S�Q4� 0     '             P e r m i n t a a n K o r e k s i C e l u p . ~ d f m               �`V�Q4���S�Q4� 0     '             P e r m i n t a a n K o r e k s i C e l u p . ~ d f m               �`V�Q4���S�Q4� 0   	 '             P e r m i n t a a n K o r e k s i C e l u p . ~ d f m               �`V�Q4���S�Q4� 0     '             P e r m i n t a a n K o r e k s i C e l u p . ~ d f m               �`V�Q4���S�Q4� 0     '             P e r m i n t a a n K o r e k s i C e l u p . ~ d f m               ��S�Q4� ��\����`V�Q4���S�Q4� 0     '             P e r m i n t a a n K o r e k s i C e l u p . ~ d f m               �`V�Q4���S�Q4� 0     '             P e r m i n t a a n K o r e 	 s i C e l u p . ~ d f m               p Z     �>     S�[�Q4� `����\�Q4�S�[�Q4� �      z              P E R M I N ~ 2 . ~ P A       X?     x b     �>     ��^�Q4� Wڕ'��:_�Q4���^�Q4�8       3               P i n d a h L o k a s i . d d p       Y?     x b     �>     �6a�Q4� �ߨ�n2c�Q4��6a�Q4�       &�             P i n d a h L o k a s i . d f m       Z?     x b     �>     ��l�Q4� �&�'�n�Q4���l�Q4� �      N|              P i n d a h L o k a s i . p a s      [?    	 x d     �>     ��o�Q4���o�Q4���o�Q4���o�Q4�                        P i n d a h L o k a s i . ~ d d p    X?     p Z     �>     ��^�Q4� Wڕ'��:_�Q4���^�Q4�8       3               P I N D A H ~ 1 . D D P       Y?     p Z     �>     �6a�Q4� �ߨ�n2c�Q4��6a�Q4�       &�             P I N D A H ~ 1 . D F M       Z?     p Z     �>     ��l�Q4� �&�'�n�Q4���l�Q4� �      N|              P I N D A H ~ 1 . P A S                                                                   	 INDX( 	 �UN           (   8   �       n �L ��                          �>     �w�Q4� �ߨ��(��x:��6a�Q4�       &�             P i n d a h L o k a s i . ~ d f m                  �>     �w�Q4� �ߨ��(��x:��6a�Q4�       &�             P i n d a h L o k a s i . ~ d f m                  �>     �w�Q4� �ߨ��(��x:��6a�Q4�       &�             P i n d a h L o k a s i . ~ d f m                  �>     �w�Q4� �ߨ��(��x:��6a�Q4�       &�             P i  d a h L o k a s i . ~ d f m                  �>     �w�Q4� �ߨ��(��x:��6a�Q4�       &�             P i n d a h L o k a s i . ~ d f m                  Y?     x d     �>     �w�Q4� �ߨ��(��x:��6a�Q4�       &�             P i n d a h L o k a s i . ~ d f m                  �w�Q4� �ߨ��(��x:��6a�Q4�       &�             P i n d a h L o k a s i . ~ d f m                  �6a�Q4�       &�             P i n d a h L o k a s i . ~ d f m                  �w�Q4  �ߨ��(��x:��6a�Q4�       &�             P i n d a h L o k a s i . ~ d f m                  �w�Q4� �ߨ��(��x:��6a�Q4�       &�             P i n d a h L o k a s i . ~ d f m                  �w�Q4� �ߨ��(��x:��6a�Q4�       &�             P i n d a h L o k a s i . ~ d f m                  �w�Q4� �ߨ��(��x:��6a�Q4�       &�             P i n d a h L o k a s i . ~ d f m                  �w�Q4� �ߨ��(��x:��6a�Q4�       &�             P i n d a h  o k a s i . ~ d f m                  �w�Q4� �ߨ��(��x:��6a�Q4�       &�             P i n d a h L o k a s i . ~ d f m                  �w�Q4� �ߨ��(��x:��6a�Q4�       &�             P i n d a h L o k a s i . ~ d f m                  �w�Q4� �ߨ��(��x:��6a�Q4�       &�             P i n d a h L o k a s i . ~ d f m                  �w�Q4� �ߨ��(��x:��6a�Q4�       &�             P i n d a h L o k a s i . ~ d f m                  �>     qށ�Q4� �&�' /X��x:���l�Q4� �      N|              P i n d a h L o k a s i . ~ p a s                  �>     QSN�x:� W�x:�e�W�x:�e�W�x:�8       3               P i n d a h L o k a s i 2 . $ $ $                  �>     ���Q4� *�ؕ'�����Q4����Q4�8       3               P i n d a h L o k a s i 2 . d d p                  b?     x f     �>     !���Q4� �	s�}1��Q4�!���Q4�       �             P i n d a h L o k a s i 2 . ~ d f m  c?     x f     �>     %��Q4� ĕ�J�����Q4�%��Q4  �      ��              P i n d a h L o k a s i 2 . ~ p a s  X?     p Z     �>     ��^�Q4� Wڕ'��:_�Q4���^�Q4�8       3               P I N D A H ~ 1 . D D P       Y?     p Z     �>     �6a�Q4� �ߨ�n2c�Q4��6a�Q4�       &�             P I N D A H ~ 1 . D F M       Z?     p Z     �>     ��l�Q4� �&�'�n�Q4���l�Q4� �      N|              P I N D A H ~ 1 . P A S       [?     p Z     �>     ��o�Q4� σ����Qp�Q4���o�Q4�8       3               P I N D A H ~ 1 . ~ D D      \?     p Z     �>     �w�Q4� �ߨ��y�Q4��w�Q4�       &�             P I N D A H ~ 1 . ~ D F       ]?     p Z     �>     qށ�Q4� ��������Q4�qށ�Q4� �      Y|              P I N D A H ~ 1 . ~ P A       ^?     p Z     �>     ���Q4� *�ؕ'�����Q4����Q4�8       3               P I N D A H ~ 2 . D D P       _?     p Z     �>     փ��Q4� �	s�2���Q4�փ��Q4�       �             P I N D A H ~ 2 . D F M       `?     p Z     �>     �f��Q4� ���'���Q4��f��Q4� �     ��              P I N D A H ~ 2 . P A S       a?     p Z     �>     ���Q4� ��s����Q4����Q4�8       3               P I N D A H ~ 2 . ~ D D       b?     p Z     �>     !���Q4� �	s�}1��Q4�!���Q4�       �             P I N D A H ~ 2 . ~ D F       c?     p Z     �>     %��Q4� ĕ�J�����Q4�%��Q4� �      ��              P I N D A H ~ 2 . ~ P A       d?     p Z     �>     �s��Q4�Ã3�8��Q4��s��Q4��      �              P r o d u k s i . c f g                    INDX( 	 $�UN           (   8   �       n     �    �                      �>     !���Q4� �	s�D�W�x:�փ��Q4�       �             P i n d a h L o k a s i 2 . ~ d f m                �>     !���Q4� �	s�D�W�x:�փ��Q4�       �             P i n d a h L o k a s i 2 . ~ d f m                �>     !���Q4� 