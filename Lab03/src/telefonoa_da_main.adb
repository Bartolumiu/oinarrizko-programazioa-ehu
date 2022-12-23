with Ada.Text_IO, Ada.Integer_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO;

with telefonoa_da; -- Azpiprograma kargatzeko

procedure telefonoa_da_main is
   Zenb: Natural;
begin
   Put("Sartu telefonoa edo 0 programa bukatzeko: ");
   Get(Zenb);

   while (Zenb /= 0) loop
      if telefonoa_da(Zenb) then
         Put("Telefono zenbakia da. Beste bat sartu edo 0 amaitzeko: ");
      else
         Put("Ez da telefono zenbakia. Beste bat sartu edo 0 amaitzeko: ");
      end if;
      Get(Zenb);
   end loop;
end telefonoa_da_main;
