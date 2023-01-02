with datu_motak; use datu_motak;
with lehena_da;

procedure lehen_zenbaki_lehenaren_pos_eta_balioa_lortu (Zenb_Bek: in Oso_Bektore; Posizioa: out Natural; Balioa: out Integer) is
begin
   Posizioa := 1;
   while not lehena_da(Zenb_Bek(Posizioa)) and then Posizioa < Zenb_Bek'Last loop
      Posizioa := Posizioa + 1;
   end loop;
   if lehena_da(Zenb_Bek(Posizioa)) then
      Balioa := Zenb_Bek(Posizioa);
   else -- Ez da aurkitu zenbaki lehenik
      Posizioa := 0;
      Balioa := 0;
   end if;
end lehen_zenbaki_lehenaren_pos_eta_balioa_lortu;
