with datu_motak; use datu_motak;

procedure ehunekoa_kalkulatu (MatrKopBek, AztKopBek: in Irakasgaia_Bektore; EhunekoBek: out Ehuneko_Bektore) is
begin
   for I in MatrKopBek'Range loop
      EhunekoBek(i) := Float(MatrKopBek(I)) / Float(AztKopBek(I)) * 100.0;
   end loop;
end ehunekoa_kalkulatu;
