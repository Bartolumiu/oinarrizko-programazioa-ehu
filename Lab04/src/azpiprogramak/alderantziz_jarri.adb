with datu_motak; use datu_motak;

procedure alderantziz_jarri (Zenb_Bek: in out Oso_Bektore) is
   BekLag : Oso_Bektore(Zenb_Bek'Range);
   Lag: Integer := BekLag'First;
begin
   for I in Zenb_Bek'Range loop
      BekLag(Lag) := Zenb_Bek(I);
      Lag := Lag + 1;
   end loop;
end alderantziz_jarri;
