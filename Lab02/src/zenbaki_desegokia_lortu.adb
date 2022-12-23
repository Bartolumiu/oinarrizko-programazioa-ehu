with Ada.Text_IO, Ada.Integer_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO;

procedure zenbaki_desegokia_lortu is
   -- Araua: Zenbakia ezin da Baturaren erdia baino handiagoa izan.

   Sekuentzia, Batura: Integer := 0;
   Haustuta: Boolean := False;
begin
   Put("Sartu zenbaki sekuentzia: ");
   Get(Sekuentzia);
   while (Sekuentzia /= 0 and then not Haustuta) loop
      Batura := Batura + Sekuentzia;
      Get(Sekuentzia);
      if (Sekuentzia > Batura/2) then
         Put_Line("Araua hausten duen zenbakia: " & Integer'Image(Sekuentzia));
         Haustuta := True;
      end if;
   end loop;
   if not Haustuta then
      Put_Line("Araua hausten duen zenbakirik ez dago.");
   end if;
end zenbaki_desegokia_lortu;
