with Ada.Text_IO, Ada.Integer_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO;

procedure progresio_geometrikoa_da is
   Oinarria, Arrazoia, Zenb, Lag: Integer := 0;
begin
   Put("Sartu progresio geometrikoa: ");
   Get(Oinarria);
   Get(Zenb);
   
   Arrazoia := Zenb / Oinarria;
   
   Oinarria := Zenb;
   while (Zenb /= 0) loop
      Get(Zenb);
      Oinarria := Oinarria * Arrazoia;
      if (Zenb = 0) then
         null;
      else      
         if (Zenb /= Oinarria) then
            Put("Ez da progresio geometrikoa");
            Zenb := 0;
            Oinarria := 0;
         end if;
      end if;
   end loop;
   
   if (Oinarria = 0) then
      null;
   else
      Put_Line("Progresio geometrikoa da. Arrazoia: " & Integer'Image(Arrazoia));
   end if;
end progresio_geometrikoa_da;
