with Ada.Text_IO, Ada.Integer_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO;

procedure digituaren_posizioa_lortu is
   Zenbakia, Digitua, Posizioa: Integer := 1;
begin
   Put("Sartu zenbakia: ");
   Get(Zenbakia);
   Put("Sartu bilatu beharreko digitua: ");
   Get(Digitua);

   while (Zenbakia rem 10 /= Digitua and then Zenbakia /= 0) loop
      Zenbakia := Zenbakia / 10;
      Posizioa := Posizioa + 1;
   end loop;

   if (Zenbakia = 0) then
      Posizioa := 0;
   end if;

   Put_Line("Digituaren posizioa: " & Integer'Image(Posizioa));
end digituaren_posizioa_lortu;
