me = 'BUDGET_PSN'
      DisplayFormat = '(#.#,#);#.#,#;-'
    end
    object QBrowseBUDGET_MUTASI: TFloatField
      FieldName = 'BUDGET_MUTASI'
      DisplayFormat = '(#.#,#);#.#,#;-'
    end
    object QBrowseVAR_NILAI: TFloatField
      FieldName = 'VAR_NILAI'
      DisplayFormat = '(#.#,#);#.#,#;-'
    end
    object QBrowseVAR_PSN: TFloatField
      FieldName = 'VAR_PSN'
      DisplayFormat = '(#.#,#);#.#,#;-'
    end
    object QBrowseAKTUAL_PSN2: TFloatField
      FieldName = 'AKTUAL_PSN2'
      DisplayFormat = '(#.#,#);#.#,#;-'
    end
    object QBrowseAKTUAL_MUTASI2: TFloatField
      FieldName = 'AKTUAL_MUTASI2'
      DisplayFormat = '(#.#,#);#.#,#;-'
    end
    object QBrowseBUDGET_PSN2: TFloatField
      FieldName = 'BUDGET_PSN2'
      DisplayFormat = '(#.#,#);#.#,#;-'
    end
    object QBrowseBUDGET_MUTASI2: TFloatField
      FieldName = 'BUDGET_MUTASI2'
      DisplayFormat = '(#.#,#);#.#,#;-'
    end
    object QBrowseVAR_NILAI2: TFloatField
      FieldName = 'VAR_NILAI2'
      DisplayFormat = '(#.#,#);#.#,#;-'
    end
    object QBrowseVAR_PSN2: TFloatField
      FieldName = 'VAR_PSN2'
      DisplayFormat = '(#.#,#);#.#,#;-'
    end
    object QBrowseAKTUAL_PSN3: TFloatField
      FieldName = 'AKTUAL_PSN3'
      DisplayFormat = '(#.#,#);#.#,#;-'
    end
    object QBrowseAKTUAL_MUTASI3: TFloatField
      FieldName = 'AKTUAL_MUTASI3'
      DisplayFormat = '(#.#,#);#.#,#;-'
    end
    object QBrowseBUDGET_PSN3: TFloatField
      FieldName = 'BUDGET_PSN3'
      DisplayFormat = '(#.#,#);#.#,#;-'
    end
    object QBrowseBUDGET_MUTASI3: TFloatField
      FieldName = 'BUDGET_MUTASI3'
      DisplayFormat = '(#.#,#);#.#,#;-'
    end
    object QBrowseVAR_NILAI3: TFloatField
      FieldName = 'VAR_NILAI3'
      DisplayFormat = '(#.#,#);#.#,#;-'
    end
    object QBrowseVAR_PSN3: TFloatField
      FieldName = 'VAR_PSN3'
      DisplayFormat = '(#.#,#);#.#,#;-'
    end
    object QBrowseAKTUAL_PSN4: TFloatField
      FieldName = 'AKTUAL_PSN4'
      DisplayFormat = '(#.#,#);#.#,#;-'
    end
    object QBrowseAKTUAL_MUTASI4: TFloatField
      FieldName = 'AKTUAL_MUTASI4'
      DisplayFormat = '(#.#,#);#.#,#;-'
    end
    object QBrowseBUDGET_PSN4: TFloatField
      FieldName = 'BUDGET_PSN4'
      DisplayFormat = '(#.#,#);#.#,#;-'
    end
    object QBrowseBUDGET_MUTASI4: TFloatField
      FieldName = 'BUDGET_MUTASI4'
      DisplayFormat = '(#.#,#);#.#,#;-'
    end
    object QBrowseVAR_NILAI4: TFloatField
      FieldName = 'VAR_NILAI4'
      DisplayFormat = '(#.#,#);#.#,#;-'
    end
    object QBrowseVAR_PSN4: TFloatField
      FieldName = 'VAR_PSN4'
      DisplayFormat = '(#.#,#);#.#,#;-'
    end
    object QBrowseCPROGRES_BLN_PSN: TFloatField
      FieldKind = fkCalculated
      FieldName = 'CPROGRES_BLN_PSN'
      DisplayFormat = '(#.#,#);#.#,#;-'
      Calculated = True
    end
    object QBrowseCPROGRES_THN_PSN: TFloatField
      FieldKind = fkCalculated
      FieldName = 'CPROGRES_THN_PSN'
      DisplayFormat = '(#.#,#);#.#,#;-'
      Calculated = True
    end
    object QBrowseCPROGRES_THN_NILAI: TFloatField
      FieldKind = fkCalculated
      FieldName = 'CPROGRES_THN_NILAI'
      DisplayFormat = '(#.#,#);#.#,#;-'
      Calculated = True
    end
    object QBrowseCPROGRES_BLN_NILAI: TFloatField
      FieldKind = fkCalculated
      FieldName = 'CPROGRES_BLN_NILAI'
      DisplayFormat = '(#.#,#);#.#,#;-'
      Calculated = True
    end
    object QBrowseKD_PERK: TStringField
      FieldKind = fkLookup
      FieldName = 'KD_PERK'
      LookupDataSet = DMFrm.QRab
      LookupKeyFields = 'KD_RAB'
      LookupResultField = 'KD_PERK'
      KeyFields = 'KD_RAB'
      Lookup = True
    end
    object QBrowseVQUERY: TStringField
      FieldName = 'VQUERY'
      Size = 255
    end
  end
  object QProc_Neraca: TOracleQuery
    SQL.Strings = (
      'begin'
      '  commit;'
      '  proc_rab(:ptahun,:pbulan, :plevel);'
      '  proc_hpp;'
      'end;')
    Session = DMFrm.OS
    Variables.Data = {
      0300000003000000070000003A50544148554E0300000004000000D907000000
      000000070000003A5042554C414E050000000300000030370000000000070000
      003A504C4556454C03000000040000000300000000000000}
    Left = 508
    Top = 225
  end
end
                                                                                                                                                                                                                                                                 begin
      RootKey:=aKey;
      regParsePath(Path, aPath, aValue);
      if OpenKey(aPath,True) then
        case Typ of
          dtInteger:  WriteInteger(aValue, Value);
          dtBoolean:  WriteBool(aValue, Value);
          dtString:   WriteString(aValue, Value);
          dtDate:     WriteDate(aValue, Value);
          dtFloat:    WriteFloat(aValue, Value);
          dtCurrency: WriteCurrency(aValue, Value);
          dtTime:     WriteTime(aValue, Value);
        end
      else
        Result := False;
    end;
  finally
    aRegistry.Free;
  end;
end;

{$ENDIF}

{ HTML functions }

function htmlTagReadString(const aPara,aText,aDefault:String):String;
var i,j : Integer;
begin
 i := pos(strUpper(aPara),strUpper(aText));
 if i > 0 then
  begin
   While not (aText[i] in ['=']) do inc(i);
   inc(i); { Skip '=' }
   While (aText[i] in [' ']) do inc(i);
   if aText[i] = '"' then
    begin
     inc(i); j:=i;
     While not (aText[i] in ['"']) do inc(i)
    end
   else
    begin
     j := i;
     While not (aText[i] in ['<','>',' ']) do inc(i);
    end;
    Result := copy(aText,j,i-j);
  end else
    Result:=aDefault;
end;

function htmlTagReadInteger(const aPara,aText: String; aDefault: Integer): Integer;
begin
  Result:=StrToInt(htmlTagReadString(aPara,aText,IntToStr(aDefault)));
end;

function  htmlStrToColor(S: String): TColor;
const
  Digits: String = '0123456789ABCDEF';
  Order: array[1..6]of integer = (5,6,3,4,1,2);
var
  i : integer;
begin
  Result:=0;
  S:=strUpper(S);
  for i := 1 to Length(S) do
    Result := Result shl 4 + Pos(S[Order[i]],Digits)-1;
end;


{ other stuff }

function MsgBox(const aTitle,aMsg: String; aFlag: Integer): Integer;
var
  ActiveWindow : hWnd;
  WindowList   : Pointer;
  TmpA         : array[0..200] of char;
  TmpB         : array[0..100] of char;
begin
  ActiveWindow:=GetActiveWindow;
  WindowList:= DisableTaskWindows(0);
  try
    StrPCopy(TmpB,aTitle);
    StrPCopy(TmpA,aMsg);
   {$IFDEF Win32}
    Result:=Windows.MessageBox(Application.Handle, TmpA, TmpB, aFlag);
   {$ELSE}
    Result:=WinProcs.MessageBox(Application.Handle, TmpA, TmpB, aFlag);
   {$ENDIF}
  finally
    EnableTaskWindows(WindowList);
    SetActiveWindow(ActiveWindow);
  end;
end;



{ TPersistentRect }

constructor TPersistentRect.Create;
begin
  FRect:=rectSet(10,10,100,20);
end;

procedure TPersistentRect.Assign(Source: TPersistent);
var
 Value: TPersistentRect;
begin
  if Value is TPersistentRect then
  begin
    Value:=Source as TPersistentRect;
    FRect:=rectBounds(Value.Left,Value.Top,Value.Width,Value.Height);
    exit;
  end;
  inherited Assign(Source);
end;

procedure TPersistentRect.SetLeft(Value: Integer);
begin
  if Value<>Left then
  begin
    if Assigned(FOnConvert) then
       Value:=FOnConvert(Self,Value,False);
    FRect:=rectBounds(Value,Top,Width,Height);
  end;
end;

procedure TPersistentRect.SetTop(Value: Integer);
begin
  if Value<>Top then
  begin
    if Assigned(FOnConvert) then
       Value:=FOnConvert(Self,Value,False);
    FRect:=rectBounds(Left,Value,Width,Height);
  end;
end;

procedure TPersistentRect.SetHeight(Value: Integer);
begin
  if Value<>Height then
  begin
    if Assigned(FOnConvert) then
       Value:=FOnConvert(Self,Value,False);
    FRect:=rectBounds(Left,Top,Width,Value);
  end;
end;

procedure TPersistentRect.SetWidth(Value: Integer);
begin
  if Value<>Width then
  begin
    if Assigned(FOnConvert) then
       Value:=FINDX( 	 (�WN           (   @   �      L   �                                     d���Q4� ���q9�����Q4�d���Q4� P      J              S a l d o P e r k i r a a n _ o r g . p a s                                0P@�������Q4�7���Q4� �      @}              S A L D O P ~ 1 . ~ P A                                   x Z    "A     7���Q4� 0P@�������Q4�7���Q4� �      @}              S A L D O P ~ 1 . ~ P A                                   7���Q4� �      @}              S A  D O P ~ 1 . ~ P A                                   "A     7���Q4� 0P@�������Q4�7���Q4� �      @}              S A L D O P ~ 1 . ~ P A                                    0P@�������Q4�7���Q4� �      @}              S A L D O P ~ 1 . ~ P A                                   7���Q4� 0P@�������Q4�7���Q4� �      @}              S A L D O P ~ 1 . ~ P A                                   "A     7���Q4� 0P@�������Q4�7���Q4� �      @}              S A L D O P ~ 1 . ~ P A                                   0P@�������Q4�7���Q4� �      @}              S A L D O P ~ 1 . ~ P A                                   7���Q4� 0P@�������Q4�7���Q4� �      @}              S A L D O P ~ 1 . ~ P A                                   7���Q4� 0P@�������Q4�7���Q4� �      @}              S A L D O P ~ 1 . ~ P A                                   7���Q4� 0P@�������Q4�7���Q4� �      @}              S A L D O P ~ 1 . ~ P A                                   7���Q4  0P@�������Q4�7���Q4� �      @}              S A L D O P ~ 1 . ~ P A                                   7���Q4� 0P@�������Q4�7���Q4� �      @}              S A L D O P ~ 1 . ~ P A                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      INDX( 	 ��WN           (   8   �       r m        r                       "A     ��w�Q4� ��`K���Ex�Q4���w�Q4�        (              J u r n a l P e n j u a l a n . d f m               "A     ��w�Q4� ��`K���Ex�Q4���w�Q4�        (              J u r n a l P e n j u a l a n . d f m               "A     ��w�Q4� ��`K���Ex�Q4���w�Q4�        (              J u r n a l P e n j u a l a n . d f m               "A     ��w�Q4� ��`K���Ex�Q4���w�Q4�        (              J u  n a l P e n j u a l a n . d f m               "A     ��w�Q4� ��`K���Ex�Q4���w�Q4�        (              J u r n a l P e n j u a l a n . d f m               "A     ��w�Q4� ��`K���Ex�Q4���w�Q4�        (              J u r n a l P e n j u a l a n . d f m               "A     ��w�Q4� ��`K���Ex�Q4���w�Q4�        (              J u r n a l P e n j u a l a n . d f m               "A     ��w�Q4� ��`K���Ex�Q4���w�Q4�        (              J u r n a l P e n j u a l a n . d f                ��w�Q4� ��`K���Ex�Q4���w�Q4�        (              J u r n a l P e n j u a l a n . d f m               ��w�Q4� ��`K���Ex�Q4���w�Q4�        (              J u r n a l P e n j u a l a n . d f m               ��w�Q4� ��`K���Ex�Q4���w�Q4�        (              J u r n a l P e n j u a l a n . d f m               ��w�Q4� ��`K���Ex�Q4���w�Q4�        (              J u r n a l P e n j u a l a n . d f m               "A     �z�Q4� �~K��4,{�Q4��z�Q4�      "              J u r n a l P e n j u a l a n . p a s               �z�Q4� �~K��4,{�Q4��z�Q4�       "              J u r n a l P e n j u a l a n . p a s               "A     7+�Q4� (��)��b�-�Q4�7+�Q4� �     ��             J U R N A L ~ 1 . D F M                     "A     7+�Q4� (��)��b�-�Q4�7+�Q4� �     ��             J U R N A L ~ 1 . D F M                     "A     7+�Q4� (��)��b�-�Q4�7+�Q4� �     ��             J U R N A L ~ 1 . D F M                    "A     7+�Q4� (��)��b�-�Q4�7+�Q4� �     ��             J U R N A L ~ 1 . D F M                     "A     Mg9�Q4� ��"W��9�Q4�Mg9�Q4�8       3               J U R N A L ~ 1 . ~ D D       rA     p Z     "A     ��A�Q4� SLW��D�Q4���A�Q4� �     $�             J U R N A L ~ 1 . ~ D F       sA     p Z     "A     l0J�Q4� 4BW��K�Q4�l0J�Q4� �      �              J U R N A L ~ 1 . ~ P A       tA     p Z     "A     ًM�Q4� ��V�(N�Q4�ًM�Q4�8       3              J U R N A L ~ 2 . D D P       uA     p Z     "A     @�W�Q4� ��OV�j�Z�Q4�@�W�Q4� �     T�             J U R N A L ~ 2 . D F M       vA     p Z     "A     �^�Q4� L"}V�:�^�Q4��^�Q4� �      ��              J U R N A L ~ 2 . P A S       wA     p Z     "A     "a�Q4� �-XV�T�a�Q4�"a�Q4�8       3               J U R N A L ~ 2 . ~ D D       xA     p Z     "A     N�h�Q4� ��OV�xMk�Q4�N�h�Q4� �     T�             J U R N A L ~ 2 . ~ D F       yA     p Z     "A     0�q�Q4� ��OV���r�Q4�0�q�Q4� �      ��              J U R N A L ~ 2 . ~ P A       zA     p Z     "A     k�t�Q4� �~K���u�Q4�k�t�Q4�8       3               J U R N A L ~ 3 . D D P       {A     p Z     "A     ��w�Q4� ��`K���Ex�Q4���w�Q4�        (              J U R N A L ~ 3 . D F M       |A     p Z     "A     �z�Q4� �~K��4,{�Q4��z�Q4�       "              J U R N A L ~ 3 . P A S       }A     p Z     "A     O}�Q4� �O[��M�}�Q4�O}�Q4�8       3               K a  y a w a n . d d p       ~A     p Z     "A     O��Q4� mo�Z��Է��Q4�O��Q4� �      N�              K a r y a w a n . d f m       A     p Z     "A     ���Q4� :J8�1�Q:��Q4����Q4� @      �2              K a r y a w a n . p a s       �A     p \     "A     9]��Q4� ���C�{���Q4�9]��Q4�8       3               K e n d a r a a n . d d p     �A     p Z     "A     9]��Q4� ���C�{���Q4�9]��Q4�8       3               K E N D A R ~ 1 . D D P                                            INDX( 	 �bN            (   8   �           �                              P:     }邰J�� 0bI�����[���}邰J�� �      �             L A P   O K T O B E R   2 0 1 2 . x l s Z                   P:     }邰J�� 0bI�����[���}邰J�� �      �             L A P O K T ~ 1 . X L S                     [:     p Z     P:     }邰J�� 0bI�����[���}邰J�� �      �             L A P O K T ~ 1 . X L S                     P:     }邰J�� 0bI�����[���}邰J�� �      �            L A P O K T ~ 1 . X L S                     p Z     P:     }邰J�� 0bI�����[���}邰J�� �      �             L A P O K T ~ 1 . X L S                     P:     }邰J�� 0bI�����[���}邰J�� �      �             L A P O K T ~ 1 . X L S                     p Z     P:     }邰J�� 0bI�����[���}邰J�� �      �             L A P O K T ~ 1 . X L S                     P:     }邰J�� 0bI�����[���}邰J�� �      �             L A P O K T ~ 1 . X L S                    p Z     P:     }邰J�� 0bI�����[���}邰J�� �      �             L A P O K T ~ 1 . X L S                     P:     }邰J�� 0bI�����[���}邰J�� �      �             L A P O K T ~ 1 . X L S                     p Z     P:     }邰J�� 0bI�����[���}邰J�� �      �             L A P O K T ~ 1 . X L S                     P:     }邰J�� 0bI�����[���}邰J�� �      �             L A P O K T ~ 1 . X L S                     [:     p Z     P:     }邰J�� 0bI�����[�� }邰J�� �      �             L A P O K T ~ 1 . X L S                     P:     }邰J�� 0bI�����[���}邰J�� �      �             L A P O K T ~ 1 . X L S                     [:     p Z     P:     }邰J�� 0bI�����[���}邰J�� �      �             L A P O K T ~ 1 . X L S                     P:     }邰J�� 0bI�����[���}邰J�� �      �             L A P O K T ~ 1 . X L S                     [:     p Z     P:     }邰J�� 0bI�����[���}邰J�� �      �            L A P O K T ~ 1 . X L S                     P:     }邰J�� 0bI�����[���}邰J�� �      �             L A P O K T ~ 1 . X L S                     p Z     P:     }邰J�� 0bI�����[���}邰J�� �      �             L A P O K T ~ 1 . X L S                     P:     }邰J�� 0bI�����[���}邰J�� �      �             L A P O K T ~ 1 . X L S                     p Z     P:     }邰J�� 0bI�����[���}邰J�� �      �             L A P O K T ~ 1 . X L S                    P:     }邰J�� 0bI�����[���}邰J�� �      �             L A P O K T ~ 1 . X L S              