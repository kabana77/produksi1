Float;
            QBrowseCQTY_BELI.AsFloat:=181.44*QBrowsePEMBELIAN.AsFloat;
            QBrowseCQTY_KOREKSI1.AsFloat:=181.44*QBrowseKOREKSI_IN.AsFloat;
            QBrowseCQTY_PAKAI.AsFloat:=181.44*QBrowsePEMAKAIAN.AsFloat;
            QBrowseCQTY_KOREKSI2.AsFloat:=181.44*QBrowseKOREKSI_OUT.AsFloat;
            QBrowseC_AKHIR.AsFloat:=181.44*QBrowseAKHIR.AsFloat;
           end
        else
        begin
          QBrowseCQTY_AWAL.AsFloat:=QBrowseAWAL.AsFloat;
            QBrowseCQTY_BELI.AsFloat:=QBrowsePEMBELIAN.AsFloat;
            QBrowseCQTY_KOREKSI1.AsFloat:=QBrowseKOREKSI_IN.AsFloat;
            QBrowseCQTY_PAKAI.AsFloat:=QBrowsePEMAKAIAN.AsFloat;
            QBrowseCQTY_KOREKSI2.AsFloat:=QBrowseKOREKSI_OUT.AsFloat;
            QBrowseC_AKHIR.AsFloat:=QBrowseAKHIR.AsFloat;
        end;
      end;
  3 : begin
        if QBrowseSATUAN.AsString='GRAM' then
        begin
            QBrowseCQTY_AWAL.AsFloat:=QBrowseAWAL.AsFloat/1000000;
            QBrowseCQTY_BELI.AsFloat:=QBrowsePEMBELIAN.AsFloat/1000000;
            QBrowseCQTY_KOREKSI1.AsFloat:=QBrowseKOREKSI_IN.AsFloat/1000000;
            QBrowseCQTY_PAKAI.AsFloat:=QBrowsePEMAKAIAN.AsFloat/1000000;
            QBrowseCQTY_KOREKSI2.AsFloat:=QBrowseKOREKSI_OUT.AsFloat/1000000;
            QBrowseC_AK