with datu_motak; use datu_motak;

procedure igarrenean_txertatu_desplazatuz (Zenb_Bek: in out Oso_Bektore; Posizioa: in Positive; Balioa: in Integer) is
   I : Integer := Zenb_Bek'Last;
begin
   while I > Posizioa loop
      Zenb_Bek(I) := Zenb_Bek((I-1));
      I := I - 1;
   end loop;
   Zenb_Bek(I) := Balioa;
end igarrenean_txertatu_desplazatuz;
