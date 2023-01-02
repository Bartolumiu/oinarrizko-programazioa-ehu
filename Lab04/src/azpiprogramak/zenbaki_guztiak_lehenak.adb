with datu_motak; use datu_motak;

with lehena_da;

function zenbaki_guztiak_lehenak (Zenb_Bek: in Oso_Bektore) return Boolean is
   LehenaDa: Boolean := True;
   Lag : Integer := 1;
   LehenAldiak : Integer := 0;
begin
   while Lag <= Zenb_Bek'Last and then LehenaDa loop
      LehenaDa := lehena_da(Zenb_Bek(Lag));
      Lag := Lag + 1;
   end loop;
   return LehenaDa;
end zenbaki_guztiak_lehenak;
