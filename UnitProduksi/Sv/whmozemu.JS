FF7F37F00000788888800037F3337777777337F000000000000
              00037F3FFFFFFFFFFF7F00000000000000037F77777777777F7F000FFFFFFFFF
              00037F7F333333337F7F000FFFFFFFFF00037F7F333333337F7F000FFFFFFFFF
              00037F7F333333337F7F000FFFFFFFFF00037F7F333333337F7F000FFFFFFFFF
              00037F7F333333337F7F000FFFFFFFFF07037F7F33333333777F000FFFFFFFFF
              0003737FFFFFFFFF7F7330099999999900333777777777777733}
            NumGlyphs = 2
          end
        end
      end
      object wwDBGrid1xxxxx: TwwDBGrid
        Left = 0
        Top = 52
        Width = 816
        Height = 460
        Selected.Strings = (
          'NO_NOTA'#9'13'#9'NO_NOTA'
          'TGL'#9'12'#9'TGL'
          'GRUP'#9'5'#9'GRUP'
          'SHIFT'#9'5'#9'SHIFT'
          'KONSTRUKSI'#9'25'#9'KONSTRUKSI'
          'CORAK'#9'6'#9'CORAK'
          'MUTU'#9'5'#9'MUTU'
          'QTY'#9'5'#9'QTY'
          'KODI'#9'4'#9'KODI'
          'PCS'#9'4'#9'PCS'
          'SATUAN'#9'7'#9'SATUAN'
          'JENIS'#9'8'#9'JENIS'
          'TGL_INSERT'#9'18'#9'TGL_INSERT'
          'OPR_INSERT'#9'9'#9'OPR_INSERT')
        IniAttributes.Delimiter = ';;'
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        Align = alClient
        DataSource = dsQBrowse
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgDblClickColSizing]
        TabOrder = 1
        TitleAlignment = taLeftJustify
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        TitleLines = 3
        TitleButtons = False
        GroupFieldName = 'NO_NOTA'
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Rekap Per Konstruksi'
      ImageIndex = 2
      object Panel5: TPanel
        Left = 0
        Top = 0
  