 Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBText2: TDBText
          Left = 88
          Top = 32
          Width = 80
          Height = 22
          Cursor = crHandPoint
          AutoSize = True
          DataField = 'KD_ITEM'
          DataSource = dsQBrowse
          Font.Charset = ANSI_CHARSET
          Font.Color = clYellow
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label1: TLabel
          Left = 8
          Top = 37
          Width = 25
          Height = 13
          Caption = 'Kode'
        end
        object DBText3: TDBText
          Left = 88
          Top = 56
          Width = 80
          Height = 22
          Cursor = crHandPoint
          AutoSize = True
          DataField = 'SATUAN'
          DataSource = dsQBrowse
          Font.Charset = ANSI_CHARSET
          Font.Color = clYellow
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label3: TLabel
          Left = 8
          Top = 61
          Width = 34
          Height = 13
          Caption = 'Satuan'
        end
        object DBText4: TDBText
          Left = 256
          Top = 56
          Width = 80
          Height = 22
          Cursor = crHandPoint
          AutoSize = True
          DataField = 'NO_PART'
          DataSource = dsQBrowse
          Font.Charset = ANSI_CHARSET
          Font.Color = clYellow
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont 