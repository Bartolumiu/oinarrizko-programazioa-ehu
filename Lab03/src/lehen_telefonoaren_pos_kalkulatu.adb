with Ada.Text_IO, Ada.Integer_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO;

with telefonoa_da; -- 1. ariketaren azpiprograma erabili daiteke.

procedure lehen_telefonoaren_pos_kalkulatu is
   Zenb, Posizioa: Natural := 0;
   Aurkitua: Boolean := False;
begin
   Put("Sartu zenbakien sekuentzia: ");
   Get(Zenb);
   
   while (Zenb /= 0 and then not Aurkitua) loop
      if telefonoa_da(Zenb) then
         Aurkitua := True;
      end if;
      Posizioa := Posizioa + 1;
      Get(Zenb);
   end loop;
   
   if not Aurkitua then -- Ez bada telefonoa aurkitu, posizioa 0
      Posizioa := 0;
   end if;
   
   Put_Line("Posizioa: " & Integer'Image(Posizioa));
end lehen_telefonoaren_pos_kalkulatu;
